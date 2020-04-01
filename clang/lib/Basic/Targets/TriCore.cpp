//===--- TriCore.cpp - Implement TriCore target feature support -----------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements TriCore TargetInfo objects.
//
//===----------------------------------------------------------------------===//

#include "TriCore.h"
#include "clang/Basic/Diagnostic.h"
#include "clang/Basic/MacroBuilder.h"
#include "llvm/ADT/StringRef.h"

using namespace clang;
using namespace clang::targets;

// List of valid CPU names that are accepted by CC1's -target-cpu flag
static constexpr llvm::StringLiteral ValidTargetCPUNames[] = {
    "tc2xx",
    "tc3xx",
    "tc4xx",
};

void TriCoreTargetInfo::getTargetDefinesTC161(const LangOptions &Opts,
                                              MacroBuilder &Builder) const {
  // TC161 specific feature defines
  Builder.defineMacro("__TRICORE_HAVE_DIV__");
  Builder.defineMacro("__TRICORE_HAVE_FLOAT16__");
  Builder.defineMacro("__TRICORE_HAVE_FTOIZ__");
  Builder.defineMacro("__TRICORE_HAVE_MOV64__");

  // TC161 specific builtins defines
  // TODO: add builtin defines once we support them
  //  Builder.defineMacro("__BUILTIN_TRICORE_CMPSWAPW");
  //  Builder.defineMacro("__BUILTIN_TRICORE_IMASK");
  //  Builder.defineMacro("__BUILTIN_TRICORE_INSERT");
  //  Builder.defineMacro("__BUILTIN_TRICORE_LDMST");
  //  Builder.defineMacro("__BUILTIN_TRICORE_LROTATE");
  //  Builder.defineMacro("__BUILTIN_TRICORE_NOP");
  //  Builder.defineMacro("__BUILTIN_TRICORE_RROTATE");
  //  Builder.defineMacro("__BUILTIN_TRICORE_SATB");
  //  Builder.defineMacro("__BUILTIN_TRICORE_SATBU");
  //  Builder.defineMacro("__BUILTIN_TRICORE_SATH");
  //  Builder.defineMacro("__BUILTIN_TRICORE_SATHU");
  //  Builder.defineMacro("__BUILTIN_TRICORE_SWAPMSKW");
  //  Builder.defineMacro("__BUILTIN_TRICORE_SWAPW");
}

void TriCoreTargetInfo::getTargetDefinesTC162(
    const clang::LangOptions &Opts, clang::MacroBuilder &Builder) const {
  // TC162 specific feature defines
  Builder.defineMacro("__TRICORE_HAVE_CRCN__");
  Builder.defineMacro("__TRICORE_HAVE_FTOHP__");
  Builder.defineMacro("__TRICORE_HAVE_HPTOF__");
  Builder.defineMacro("__TRICORE_HAVE_LHA__");
  Builder.defineMacro("__TRICORE_HAVE_POPCNT__");
  Builder.defineMacro("__TRICORE_HAVE_SHUFFLE__");

  // Also add the TC161 defines
  getTargetDefinesTC161(Opts, Builder);
}

void TriCoreTargetInfo::getTargetDefinesTC18(const LangOptions &Opts,
                                             MacroBuilder &Builder) const {
  // TODO: Add TC18 specific defines here

  // Also add the TC162 defines
  getTargetDefinesTC162(Opts, Builder);
}

void TriCoreTargetInfo::getTargetDefines(const LangOptions &Opts,
                                         MacroBuilder &Builder) const {
  // Target identifications
  Builder.defineMacro("__tricore");
  Builder.defineMacro("__tricore__");
  Builder.defineMacro("__TRICORE__");

  // Binary format specifier
  Builder.defineMacro("__ELF__");

  // Architecture specifier
  StringRef TriCoreCore;
  switch (Derivative) {
  case DK_TC21XX:
  case DK_TC22XX:
  case DK_TC23XX:
  case DK_TC26XX:
  case DK_TC27XX:
  case DK_TC29XX:
  case DK_TC2D5D:
    TriCoreCore = "0x161";
    getTargetDefinesTC161(Opts, Builder);
    break;
  case DK_TC35XX:
  case DK_TC37XX:
  case DK_TC38XX:
  case DK_TC39XX:
    TriCoreCore = "0x162";
    getTargetDefinesTC162(Opts, Builder);
    break;
  case DK_TC4XX:
    TriCoreCore = "0x18";
    getTargetDefinesTC18(Opts, Builder);
    break;
  default:
    llvm_unreachable("Unknown target CPU");
  }
  Builder.defineMacro("__TRICORE_CORE__", TriCoreCore);

  StringRef TriCoreName = "";
  switch (Derivative) {
  case DK_TC21XX:
    TriCoreName = "0x2100";
    break;
  case DK_TC22XX:
    TriCoreName = "0x2200";
    break;
  case DK_TC23XX:
    TriCoreName = "0x2300";
    break;
  case DK_TC26XX:
    TriCoreName = "0x2600";
    break;
  case DK_TC27XX:
    TriCoreName = "0x2700";
    break;
  case DK_TC29XX:
    TriCoreName = "0x2900";
    break;
  case DK_TC2D5D:
    TriCoreName = "0x2d5d";
    break;
  case DK_TC35XX:
    TriCoreName = "0x3500";
    break;
  case DK_TC37XX:
    TriCoreName = "0x3700";
    break;
  case DK_TC38XX:
    TriCoreName = "0x3800";
    break;
  case DK_TC39XX:
    TriCoreName = "0x3900";
    break;
  case DK_TC4XX:
    TriCoreName = "0x4000";
    break;
  default:
    break;
  }
  Builder.defineMacro("__TRICORE_NAME__", TriCoreName);
}

bool TriCoreTargetInfo::isValidCPUName(StringRef Name) const {
  return llvm::find(ValidTargetCPUNames, Name) != std::end(ValidTargetCPUNames);
}

void TriCoreTargetInfo::fillValidCPUList(
    SmallVectorImpl<StringRef> &Values) const {
  Values.append(std::begin(ValidTargetCPUNames), std::end(ValidTargetCPUNames));
}

bool TriCoreTargetInfo::setCPU(const std::string &Name) {
  return isValidCPUName(Name);
}

bool TriCoreTargetInfo::handleTargetFeatures(std::vector<std::string> &Features,
                                             DiagnosticsEngine &Diags) {
  auto It = Features.begin();
  while (It != Features.end()) {
    const std::string Feature = *It;

    // Check if the current feature is a derivative. In that case we don't want
    // to pass it to the backend, so delete it here
    if (parseAndSetDerivative(Feature))
      It = Features.erase(It);
    else
      ++It;
  }

  // If Derivative is still set to DK_Invalid, then we are missing a required
  // subtarget feature
  if (Derivative == DK_Invalid) {
    Diags.Report(diag::err_target_tricore_derivative_missing);
    return false;
  }

  return true;
}

bool TriCoreTargetInfo::parseAndSetDerivative(const std::string &Feature) {
  DerivativeKind D = DK_Invalid;

  // Check if the given feature matches a derivative and get the corresponding
  // CPU kind
  if (Feature == "+tc21xx")
    D = DK_TC21XX;
  else if (Feature == "+tc22xx")
    D = DK_TC22XX;
  else if (Feature == "+tc23xx")
    D = DK_TC23XX;
  else if (Feature == "+tc26xx")
    D = DK_TC26XX;
  else if (Feature == "+tc27xx")
    D = DK_TC27XX;
  else if (Feature == "+tc29xx")
    D = DK_TC29XX;
  else if (Feature == "+tc2d5d")
    D = DK_TC2D5D;
  else if (Feature == "+tc35xx")
    D = DK_TC35XX;
  else if (Feature == "+tc37xx")
    D = DK_TC37XX;
  else if (Feature == "+tc38xx")
    D = DK_TC38XX;
  else if (Feature == "+tc39xx")
    D = DK_TC39XX;
  else if (Feature == "+tc4xx")
    D = DK_TC4XX;

  // Set the CPU kind and return true if we have parsed one
  if (D != DK_Invalid) {
    Derivative = D;
    return true;
  }

  // Otherwise return false
  return false;
}
