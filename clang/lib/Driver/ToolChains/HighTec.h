//===--- HighTec.h - HighTec ToolChain Implementation --------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_CLANG_LIB_DRIVER_TOOLCHAINS_HIGHTEC_H_
#define LLVM_CLANG_LIB_DRIVER_TOOLCHAINS_HIGHTEC_H_

#include "clang/Driver/Tool.h"
#include "clang/Driver/ToolChain.h"

#include "CommonArgs.h"
#include "InputInfo.h"

#include <string>

namespace clang {
namespace driver {

namespace toolchains {

class LLVM_LIBRARY_VISIBILITY HighTec : public ToolChain {
public:
  HighTec(const Driver &D, const llvm::Triple &Triple,
          const llvm::opt::ArgList &Args);
  ~HighTec() override;

  static bool handlesTarget(const llvm::Triple &Triple);
protected:
  Tool *buildLinker() const override;

public:
  bool isCrossCompiling() const override { return true; }
  bool HasNativeLLVMSupport() const override { return true; }
  bool IsIntegratedAssemblerDefault() const override { return true; }
  bool IsMathErrnoDefault() const override { return false; }

  const char *getDefaultLinker() const override {
    return "ld.lld";
  }

  RuntimeLibType GetDefaultRuntimeLibType() const override {
    return ToolChain::RLT_CompilerRT;
  }
  CXXStdlibType GetDefaultCXXStdlibType() const override {
    return ToolChain::CST_Libcxx;
  }

  std::string getCompilerRT(const llvm::opt::ArgList &Args,
                                    StringRef Component,
                                    bool Shared = false) const override;

  bool isPICDefault() const override { return false; }
  bool isPIEDefault() const override { return false; }
  bool isPICDefaultForced() const override { return false; }
  bool SupportsProfiling() const override { return false; }

  unsigned GetDefaultDwarfVersion() const override { return 2; };

  void AddClangSystemIncludeArgs(const llvm::opt::ArgList &DriverArgs,
                                 llvm::opt::ArgStringList &CC1Args) const override;
  void addClangTargetOptions(const llvm::opt::ArgList &DriverArgs,
                             llvm::opt::ArgStringList &CC1Args,
                             Action::OffloadKind DeviceOffloadKind) const override;
  std::string findLibCxxIncludePath(ToolChain::CXXStdlibType LibType) const;
  void AddClangCXXStdlibIncludeArgs(
      const llvm::opt::ArgList &DriverArgs,
      llvm::opt::ArgStringList &CC1Args) const override;
  void AddCXXStdlibLibArgs(const llvm::opt::ArgList &Args,
                           llvm::opt::ArgStringList &CmdArgs) const override;
};

} // namespace toolchains

namespace tools {
namespace hightec {

class LLVM_LIBRARY_VISIBILITY Linker : public Tool {
public:
  Linker(const ToolChain &TC) : Tool("hightec::Linker", "ld", TC) {}
  bool isLinkJob() const override { return true; }
  bool hasIntegratedCPP() const override { return false; }
  void ConstructJob(Compilation &C, const JobAction &JA,
                    const InputInfo &Output, const InputInfoList &Inputs,
                    const llvm::opt::ArgList &TCArgs,
                    const char *LinkingOutput) const override;
};

} // namespace hightec
} // namespace tools

} // namespace driver
} // namespace clang

#endif /* LLVM_CLANG_LIB_DRIVER_TOOLCHAINS_HIGHTEC_H_ */
