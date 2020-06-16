//===-- HighTec.cpp - HighTec ToolChain Implementations ---------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "HighTec.h"

#include "CommonArgs.h"
#include "InputInfo.h"

#include "clang/Driver/Compilation.h"
#include "clang/Driver/Driver.h"
#include "clang/Driver/DriverDiagnostic.h"
#include "clang/Driver/Options.h"
#include "llvm/Option/ArgList.h"
#include "llvm/Support/Path.h"
#include "llvm/Support/VirtualFileSystem.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm::opt;
using namespace clang;
using namespace clang::driver;
using namespace clang::driver::tools;
using namespace clang::driver::toolchains;

HighTec::HighTec(const Driver &D, const llvm::Triple &Triple,
                 const ArgList &Args)
    : ToolChain(D, Triple, Args) {
  getProgramPaths().push_back(getDriver().getInstalledDir());
  if (getDriver().getInstalledDir() != getDriver().Dir)
    getProgramPaths().push_back(getDriver().Dir);

  if (Triple.getArch() == llvm::Triple::tricore) {
    auto FilePath = [&](const Multilib &M) -> std::vector<std::string> {
      std::vector<std::string> FP;
      SmallString<128> P(llvm::sys::path::parent_path(D.Dir));
      llvm::sys::path::append(P, "tricore", "lib", M.gccSuffix());
      FP.emplace_back(std::string(P.str()));
      return FP;
    };

    Multilibs.push_back(
        Multilib("tc161", "tc161", "tc161", 1).flag("+march=tc161"));
    Multilibs.push_back(
        Multilib("tc162", "tc162", "tc162", 2).flag("+march=tc162"));
    Multilibs.push_back(
        Multilib("tc18", "tc18", "tc18", 3).flag("+march=tc18"));

    Multilibs.FilterOut([&](const Multilib &M) {
      std::vector<std::string> RD = FilePath(M);
      return std::all_of(RD.begin(), RD.end(),
                       [&](std::string P) { return !getVFS().exists(P);
      });
    });

    StringRef MArch = Args.getLastArgValue(options::OPT_march_EQ);
    Multilib::flags_list Flags;
    addMultilibFlag(MArch == "tc161", "march=tc161", Flags);
    addMultilibFlag(MArch == "tc162", "march=tc162", Flags);
    addMultilibFlag(MArch == "tc18", "march=tc18", Flags);
    Multilibs.setFilePathsCallback(FilePath);

    if (Multilibs.select(Flags, SelectedMultilib))
      if (!SelectedMultilib.isDefault())
        if (const auto &PathsCallback = Multilibs.filePathsCallback())
          for (const auto &Path : PathsCallback(SelectedMultilib))
            // Prepend the multilib path to ensure it takes the precedence.
            getFilePaths().insert(getFilePaths().begin(), Path);
  }
}

Tool *HighTec::buildLinker() const { return new tools::hightec::Linker(*this); }

void HighTec::AddClangSystemIncludeArgs(const ArgList &DriverArgs,
                                        ArgStringList &CC1Args) const {
  const Driver &D = getDriver();

  if(DriverArgs.hasArg(options::OPT_nostdinc))
    return;

  if (!DriverArgs.hasArg(options::OPT_nobuiltininc)) {
    SmallString<128> P(D.ResourceDir);
    llvm::sys::path::append(P, "include");
    addSystemInclude(DriverArgs, CC1Args, P);
  }

  if(!DriverArgs.hasArg(options::OPT_nostdlibinc)) {
    SmallString<128> P(llvm::sys::path::parent_path(D.Dir));
    llvm::sys::path::append(P, "tricore", "include");
    addExternCSystemInclude(DriverArgs, CC1Args, P.str());
  }
}

void HighTec::addClangTargetOptions(const ArgList &DriverArgs,
                                    ArgStringList &CC1Args,
                                    Action::OffloadKind) const {}

void HighTec::AddClangCXXStdlibIncludeArgs(const ArgList &DriverArgs,
                                           ArgStringList &CC1Args) const {
  if (DriverArgs.hasArg(options::OPT_nostdlibinc) ||
      DriverArgs.hasArg(options::OPT_nostdincxx))
    return;

  const Driver &D = getDriver();

  switch (GetCXXStdlibType(DriverArgs)) {
  case ToolChain::CST_Libcxx: {
    SmallString<128> P(llvm::sys::path::parent_path(D.Dir));
    llvm::sys::path::append(P, "tricore", "include", "c++", "v1");
    addSystemInclude(DriverArgs, CC1Args, P.str());
    break;
  }

  default:
    llvm_unreachable("invalid stdlib name");
  }
}

void HighTec::AddCXXStdlibLibArgs(const ArgList &Args,
                                  ArgStringList &CmdArgs) const {}

ToolChain::CXXStdlibType
HighTec::GetCXXStdlibType(const llvm::opt::ArgList &Args) const {
  if (Arg *A = Args.getLastArg(options::OPT_stdlib_EQ)) {
    StringRef Value = A->getValue();
    if (Value != "libc++")
      getDriver().Diag(diag::err_drv_invalid_stdlib_name)
          << A->getAsString(Args);
  }

  return ToolChain::CST_Libcxx;
}

void hightec::Linker::ConstructJob(Compilation &C, const JobAction &JA,
                                   const InputInfo &Output,
                                   const InputInfoList &Inputs,
                                   const ArgList &Args,
                                   const char *LinkingOutput) const {
  ArgStringList CmdArgs;

  auto &TC = static_cast<const toolchains::HighTec &>(getToolChain());

  TC.AddFilePathLibArgs(Args, CmdArgs);

  AddLinkerInputs(TC, Inputs, Args, CmdArgs, JA);

  CmdArgs.push_back("-o");
  CmdArgs.push_back(Output.getFilename());

  C.addCommand(std::make_unique<Command>(
      JA, *this, Args.MakeArgString(TC.GetLinkerPath()), CmdArgs, Inputs));
}
