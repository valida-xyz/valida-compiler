//===--- TriCore.h - Declare TriCore target feature support -----*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file declares TriCore TargetInfo objects.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_CLANG_LIB_BASIC_TARGETS_TRICORE_H
#define LLVM_CLANG_LIB_BASIC_TARGETS_TRICORE_H

#include "clang/Basic/TargetInfo.h"
#include "clang/Basic/TargetOptions.h"
#include "llvm/ADT/Triple.h"
#include "llvm/Support/Compiler.h"

namespace clang {
namespace targets {

class TriCoreTargetInfo : public TargetInfo {

  enum DerivativeKind {
    DK_Invalid,
    DK_TC21XX,
    DK_TC22XX,
    DK_TC23XX,
    DK_TC26XX,
    DK_TC27XX,
    DK_TC29XX,
    DK_TC2D5D,
    DK_TC35XX,
    DK_TC37XX,
    DK_TC38XX,
    DK_TC39XX,
    DK_TC4XX,
  } Derivative = DK_Invalid;

  bool parseAndSetDerivative(const std::string &Feature);

public:
  TriCoreTargetInfo(const llvm::Triple &Triple, const TargetOptions &)
      : TargetInfo(Triple) {

    // Set alignment according to TriCore EABI
    LongLongAlign = DoubleAlign = LongDoubleAlign = 32;
    SuitableAlign = 32;

    WIntType = UnsignedInt;

    resetDataLayout("e-m:e-i64:32-p:32:32-f64:32-n32-a:0:32-S64");

    TLSSupported = false;
  }

  bool isValidCPUName(StringRef Name) const override;
  void fillValidCPUList(SmallVectorImpl<StringRef> &Values) const override;
  bool setCPU(const std::string &Name) override;

  void getTargetDefinesTC161(const LangOptions &Opts,
                             MacroBuilder &Builder) const;
  void getTargetDefinesTC162(const LangOptions &Opts,
                             MacroBuilder &Builder) const;
  void getTargetDefinesTC18(const LangOptions &Opts,
                            MacroBuilder &Builder) const;
  void getTargetDefines(const LangOptions &Opts,
                        MacroBuilder &Builder) const override;

  bool handleTargetFeatures(std::vector<std::string> &Features,
                            DiagnosticsEngine &Diags) override;

  ArrayRef<Builtin::Info> getTargetBuiltins() const override { return None; }

  BuiltinVaListKind getBuiltinVaListKind() const override {
    return TargetInfo::VoidPtrBuiltinVaList;
  }

  const char *getClobbers() const override { return ""; }

  ArrayRef<const char *> getGCCRegNames() const override { return None; }

  ArrayRef<TargetInfo::GCCRegAlias> getGCCRegAliases() const override {
    return None;
  }

  bool validateAsmConstraint(const char *&Name,
                             TargetInfo::ConstraintInfo &Info) const override {
    return true;
  }

  bool allowsLargerPreferedTypeAlignment() const override { return false; }
};
} // namespace targets
} // namespace clang

#endif // LLVM_CLANG_LIB_BASIC_TARGETS_TRICORE_H
