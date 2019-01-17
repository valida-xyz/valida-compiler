//===--- HighTec.cpp - HighTec ToolChain Implementation --------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#include "HighTec.h"
#include "Arch/ARM.h"
#include "clang/Basic/Version.h"
#include "clang/Basic/VirtualFileSystem.h"
#include "clang/Driver/Compilation.h"
#include "clang/Driver/Driver.h"
#include "clang/Driver/DriverDiagnostic.h"
#include "clang/Driver/Options.h"
#include "llvm/Option/ArgList.h"
#include "llvm/Support/Path.h"
#include "llvm/Support/TargetParser.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm::opt;
using namespace clang;
using namespace clang::driver;
using namespace clang::driver::tools;
using namespace clang::driver::toolchains;

static std::string getArchitecture(llvm::Triple Triple) {

  llvm::StringRef Arch = llvm::Triple::getArchTypePrefix(Triple.getArch());
  if (Arch != "")
    return Arch;

  llvm_unreachable("Unknown architecture specified.");
}

static std::string getArchVersionString(StringRef Arch) {

  switch (llvm::ARM::parseArch(llvm::ARM::getCanonicalArchName(Arch))) {
    default:
      // For now, only support v7 & v8
      return "";
    case llvm::ARM::ArchKind::ARMV8A:
      return "v8-a";
    case llvm::ARM::ArchKind::ARMV8_1A:
      return "v8.1-a";
    case llvm::ARM::ArchKind::ARMV8_2A:
      return "v8-2-a";
    case llvm::ARM::ArchKind::ARMV8_3A:
      return "v8-3-a";
    case llvm::ARM::ArchKind::ARMV8R:
      return "v8-r";
    case llvm::ARM::ArchKind::ARMV8MBaseline:
      return "v8-m.base";
    case llvm::ARM::ArchKind::ARMV8MMainline:
      return "v8-m.main";
    case llvm::ARM::ArchKind::ARMV7A:
      return "v7-a";
    case llvm::ARM::ArchKind::ARMV7R:
      return "v7-r";
    case llvm::ARM::ArchKind::ARMV7EM:
      return "v7e-m";
    case llvm::ARM::ArchKind::ARMV7M:
      return "v7-m";
    case llvm::ARM::ArchKind::ARMV7S:
      return "v7-s";
    case llvm::ARM::ArchKind::ARMV7K:
      return "v7-k";
    case llvm::ARM::ArchKind::ARMV7VE:
      return "v7ve";
    case llvm::ARM::ArchKind::ARMV6M:
      return "v6-m";
  }
}

static std::string getArchVersion(llvm::Triple Triple, const llvm::opt::ArgList &Args) {


  if (const Arg *A = Args.getLastArg(options::OPT_march_EQ)) {
      return getArchVersionString(A->getValue());
  } else {

      // The architecture might be part of the target option, parse it
      if (const Arg *A = Args.getLastArg(options::OPT_target)) {
          StringRef TargetString = A->getValue();
          SmallVector<StringRef, 4> Components;
          TargetString.split(Components, '-');
          if (Components.size() > 0)
              return getArchVersionString(Components[0]);
          else
            // This should not occur
            return "";
      } else {
          // This should not occur
          return "";
      }
  }
}

static std::string getFloatABI(const Driver &D, llvm::Triple Triple, const llvm::opt::ArgList &Args) {

  // For AArch64, we currently do not support different float abi's
  if (Triple.getArch() == llvm::Triple::aarch64 || Triple.getArch() == llvm::Triple::aarch64_be)
    return "";

  if (Arg *A =
      Args.getLastArg(options::OPT_msoft_float, options::OPT_mhard_float,
                      options::OPT_mfloat_abi_EQ)) {
      if (A->getOption().matches(options::OPT_msoft_float)) {
          return "soft";
      } else if (A->getOption().matches(options::OPT_mhard_float)) {
          return "hard";
      } else {
          std::string ABI =  llvm::StringSwitch<std::string>(A->getValue())
                                               .Case("soft", "soft")
                                               .Case("softfp", "softfp")
                                               .Case("hard", "hard")
                                               .Default("");

          if (ABI == "" && !StringRef(A->getValue()).empty()) {
              D.Diag(diag::err_drv_invalid_mfloat_abi) << A->getAsString(Args);
          } else {
              return ABI;
          }
      }
  }


  if (Triple.getEnvironment() == llvm::Triple::EABI) {
      return "softfp";
  } else {
      return "hard";
  }
}

static std::string getISA(llvm::Triple Triple, const llvm::opt::ArgList &Args) {

  llvm::StringRef Arch = Args.getLastArgValue(options::OPT_march_EQ);
  bool IsArmArch = Triple.getArch() == llvm::Triple::arm;
  bool IsThumbArch = Triple.getArch() == llvm::Triple::thumb;
  bool IsThumbMode = IsThumbArch ||
      Args.hasFlag(options::OPT_mthumb, options::OPT_mno_thumb, false) ||
      (IsArmArch && llvm::ARM::parseArchISA(Arch) == llvm::ARM::ISAKind::THUMB);

  return IsThumbMode ? "thumb" : (IsArmArch ? "arm" : "");
}

static std::string getTargetDir(const Driver &D,
                                llvm::Triple Triple) {
  SmallString<128> P(llvm::sys::path::parent_path(D.Dir));
  llvm::sys::path::append(P, getArchitecture(Triple));
  return P.str();
}

static std::string getTargetLibDir(const Driver &D, llvm::Triple Triple, const llvm::opt::ArgList &Args) {
  std::string archVersion = getArchVersion(Triple, Args);
  std::string ISA = getISA(Triple, Args);
  std::string floatABI = getFloatABI(D, Triple, Args);

  SmallString<128> P(getTargetDir(D, Triple));

  llvm::sys::path::append(P, "lib");
  llvm::sys::path::append(P, archVersion, ISA, floatABI);
  return P.str();
}

std::string HighTec::getCompilerRT(const llvm::opt::ArgList &Args,
                                   StringRef Component,
                                   bool Shared) const {

  SmallString<128> P(getTargetLibDir(getDriver(), getTriple(), Args));
  llvm::sys::path::append(P, Twine("libclang_rt.") + Component + ".a" );
  return P.str();
}

HighTec::HighTec(const Driver &D, const llvm::Triple &Triple,
                 const ArgList &Args)
: ToolChain(D, Triple, Args) {
  getProgramPaths().push_back(getDriver().getInstalledDir());
  if (getDriver().getInstalledDir() != D.Dir)
    getProgramPaths().push_back(D.Dir);

  SmallString<128> P(getTargetLibDir(D, Triple, Args));
  getFilePaths().push_back(P.str());

  if (!D.SysRoot.empty()) {
      SmallString<128> P(D.SysRoot);
      llvm::sys::path::append(P, "lib");
      getFilePaths().push_back(P.str());
  }
}

HighTec::~HighTec() {}

static bool isSupportedTarget(const llvm::Triple &Triple) {
  if (Triple.getArch() != llvm::Triple::aarch64 &&
      Triple.getArch() != llvm::Triple::arm &&
      Triple.getArch() != llvm::Triple::thumb)
    return false;

  if (Triple.getVendor() != llvm::Triple::UnknownVendor)
    return false;

  if (Triple.getOS() != llvm::Triple::UnknownOS)
    return false;

  if (Triple.getEnvironment() != llvm::Triple::EABI &&
      Triple.getEnvironment() != llvm::Triple::EABIHF)
    return false;

  return true;
}

bool HighTec::handlesTarget(const llvm::Triple &Triple) {
  return isSupportedTarget(Triple);
}

Tool *HighTec::buildLinker() const {
  return new tools::hightec::Linker(*this);
}

void HighTec::AddClangSystemIncludeArgs(const ArgList &DriverArgs,
                                        ArgStringList &CC1Args) const {
  const Driver &D = getDriver();

  if (DriverArgs.hasArg(options::OPT_nostdinc))
    return;

  if (DriverArgs.hasArg(options::OPT_nostdlibinc))
    return;

  // Add Dinkum library include path
  SmallString<128> P(getTargetDir(D, getTriple()));
  llvm::sys::path::append(P, "include");
  addSystemInclude(DriverArgs, CC1Args, P);

  if (!D.SysRoot.empty()) {
      SmallString<128> P(D.SysRoot);
      llvm::sys::path::append(P, "include");
      addExternCSystemInclude(DriverArgs, CC1Args, P.str());
  }
}

void HighTec::addClangTargetOptions(const ArgList &DriverArgs,
                                    ArgStringList &CC1Args,
                                    Action::OffloadKind) const {}

void HighTec::AddClangCXXStdlibIncludeArgs(
    const ArgList &DriverArgs, ArgStringList &CC1Args) const {
  if (DriverArgs.hasArg(options::OPT_nostdlibinc) ||
      DriverArgs.hasArg(options::OPT_nostdincxx))
    return;

  SmallString<128> P(getTargetDir(getDriver(), getTriple()));
  llvm::sys::path::append(P, "include", "c++", "v1");
  addSystemInclude(DriverArgs, CC1Args, P.str());
}

void HighTec::AddCXXStdlibLibArgs(const ArgList &Args,
                                  ArgStringList &CmdArgs) const {
  switch (GetCXXStdlibType(Args)) {
    case ToolChain::CST_Libcxx:
      CmdArgs.push_back("-lc++");
      CmdArgs.push_back("-lc++abi");
      CmdArgs.push_back("-lunwind");
      break;

    case ToolChain::CST_Libstdcxx:
      llvm_unreachable("invalid stdlib name");
  }
}

void hightec::Linker::ConstructJob(Compilation &C, const JobAction &JA,
                                   const InputInfo &Output,
                                   const InputInfoList &Inputs,
                                   const ArgList &Args,
                                   const char *LinkingOutput) const {
  ArgStringList CmdArgs;

  auto &TC = static_cast<const toolchains::HighTec&>(getToolChain());
  const Driver &D = TC.getDriver();

  if (!D.SysRoot.empty())
    CmdArgs.push_back(Args.MakeArgString("--sysroot=" + D.SysRoot));

  if (Args.hasArg(options::OPT_static))
    CmdArgs.push_back("-Bstatic");

  CmdArgs.push_back("-o");
  CmdArgs.push_back(Output.getFilename());

  if (!Args.hasArg(options::OPT_nostdlib, options::OPT_nostartfiles)) {

      // TODO: Add startup code here
  }

  TC.AddFilePathLibArgs(Args, CmdArgs);

  AddLinkerInputs(TC, Inputs, Args, CmdArgs, JA);

  if (!Args.hasArg(options::OPT_nostdlib, options::OPT_nodefaultlibs)) {
      AddRunTimeLibs(TC, D, CmdArgs, Args);

      CmdArgs.push_back("-ldnk");
  }

  C.addCommand(llvm::make_unique<Command>(JA, *this,
                                          Args.MakeArgString(TC.GetLinkerPath()),
                                          CmdArgs, Inputs));
}
