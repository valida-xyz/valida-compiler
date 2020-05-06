//===--- TriCore.cpp - TriCore Helpers for Tools ----------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "TriCore.h"
#include "clang/Driver/Driver.h"
#include "clang/Driver/DriverDiagnostic.h"
#include "clang/Driver/Options.h"
#include "llvm/ADT/StringExtras.h"
#include "llvm/ADT/StringSwitch.h"
#include "llvm/Option/ArgList.h"

using namespace clang::driver;
using namespace clang::driver::tools;
using namespace clang;
using namespace llvm::opt;

// List of valid CPU names that the user can pass to the -mcpu flag
static constexpr llvm::StringLiteral ValidCPUNames[] = {
    "tc21xx", "tc22xx", "tc23xx", "tc26xx", "tc27xx", "tc29xx",
    "tc2d5d", "tc35xx", "tc37xx", "tc38xx", "tc39xx", "tc4xx",
};

static std::string getArgValueLowerCase(const Arg *A) {
  const StringRef ArgValue = A->getValue();
  return ArgValue.split("+").first.lower();
}

static void getValidCPUForArch(const StringRef MArch,
                               SmallVectorImpl<StringRef> &ValidList) {
  const auto &ValidArchCPUs =
      llvm::StringSwitch<ArrayRef<StringRef>>(MArch)
          .Case("tc161", {"tc21xx", "tc22xx", "tc23xx", "tc26xx", "tc27xx",
                          "tc29xx", "tc2d5d"})
          .Case("tc162", {"tc35xx", "tc37xx", "tc38xx", "tc39xx"})
          .Case("tc18", {"tc4xx"})
          .Default({});

  ValidList.append(ValidArchCPUs.begin(), ValidArchCPUs.end());
}

static void getTriCoreArchFeaturesTC161(std::vector<StringRef> &Features) {
  // Architecture identifier
  Features.emplace_back("+tc161");
}

static void getTriCoreArchFeaturesTC162(std::vector<StringRef> &Features) {
  // Architecture identifier
  Features.emplace_back("+tc162");
}

static void getTriCoreArchFeaturesTC18(std::vector<StringRef> &Features) {
  // Architecture identifier
  Features.emplace_back("+tc18");
}

static tricore::ArchKind
getTriCoreArchFeaturesFromMCpu(const Driver &D, const Arg *MCpu,
                               const llvm::opt::ArgList &Args,
                               std::vector<StringRef> &Features) {
  using ArchCPUTuple = std::pair<tricore::ArchKind, StringRef>;

  // Determine architecture and subtarget feature fitting the -mcpu flag
  const std::string CPU = getArgValueLowerCase(MCpu);
  const auto ArchCPUFeature = llvm::StringSwitch<ArchCPUTuple>(CPU)
                                  .Case("tc21xx", {tricore::TC161, "+tc21xx"})
                                  .Case("tc22xx", {tricore::TC161, "+tc22xx"})
                                  .Case("tc23xx", {tricore::TC161, "+tc23xx"})
                                  .Case("tc26xx", {tricore::TC161, "+tc26xx"})
                                  .Case("tc27xx", {tricore::TC161, "+tc27xx"})
                                  .Case("tc29xx", {tricore::TC161, "+tc29xx"})
                                  .Case("tc2d5d", {tricore::TC161, "+tc2d5d"})
                                  .Case("tc35xx", {tricore::TC162, "+tc35xx"})
                                  .Case("tc37xx", {tricore::TC162, "+tc37xx"})
                                  .Case("tc38xx", {tricore::TC162, "+tc38xx"})
                                  .Case("tc39xx", {tricore::TC162, "+tc39xx"})
                                  .Case("tc4xx", {tricore::TC18, "+tc4xx"})
                                  .Default({tricore::INVALID, ""});

  const tricore::ArchKind CPUArch = ArchCPUFeature.first;

  // Add architecture specific features
  switch (CPUArch) {
  case tricore::TC161:
    getTriCoreArchFeaturesTC161(Features);
    Features.emplace_back(ArchCPUFeature.second);
    break;
  case tricore::TC162:
    getTriCoreArchFeaturesTC162(Features);
    Features.emplace_back(ArchCPUFeature.second);
    break;
  case tricore::TC18:
    getTriCoreArchFeaturesTC18(Features);
    Features.emplace_back(ArchCPUFeature.second);
    break;
  default:
    // The user passed an unknown CPU. Report error
    D.Diag(diag::err_target_unknown_cpu) << CPU;
    D.Diag(diag::note_valid_options)
        << llvm::join(std::begin(ValidCPUNames), std::end(ValidCPUNames), ", ");
    break;
  }

  return CPUArch;
}

static tricore::ArchKind
getTriCoreArchFeaturesFromMArch(const Driver &D, const Arg *MArch,
                                const Arg *MCpu, const llvm::opt::ArgList &Args,
                                std::vector<StringRef> &Features,
                                tricore::ArchKind CPUArch) {
  // Try to parse a valid -march option
  const std::string &ArchStr = getArgValueLowerCase(MArch);
  const auto Arch = llvm::StringSwitch<tricore::ArchKind>(ArchStr)
                        .Case("tc161", tricore::TC161)
                        .Case("tc162", tricore::TC162)
                        .Case("tc18", tricore::TC18)
                        .Default(tricore::INVALID);

  // Check that we have a valid -march option
  if (Arch == tricore::INVALID) {
    D.Diag(diag::err_drv_invalid_arch_name) << MArch->getAsString(Args);
    return Arch;
  }

  // Check if -march and -mcpu are compatible
  if (CPUArch != tricore::INVALID && CPUArch != Arch) {
    assert(MCpu && "CPUArch is set but MCpu is nullptr");
    SmallVector<StringRef, 7> ValidList;
    getValidCPUForArch(getArgValueLowerCase(MArch), ValidList);
    D.Diag(diag::err_drv_cannot_mix_options)
        << MCpu->getAsString(Args) << MArch->getAsString(Args);
    D.Diag(diag::note_valid_options) << llvm::join(ValidList, ", ");
    return tricore::INVALID;
  }

  // Add architecture specific features plus the arch identifying feature
  StringRef DefaultDerivativeFeature;
  switch (Arch) {
  case tricore::TC161:
    getTriCoreArchFeaturesTC161(Features);
    DefaultDerivativeFeature = "+tc27xx";
    break;
  case tricore::TC162:
    getTriCoreArchFeaturesTC162(Features);
    DefaultDerivativeFeature = "+tc39xx";
    break;
  case tricore::TC18:
    getTriCoreArchFeaturesTC18(Features);
    DefaultDerivativeFeature = "+tc4xx";
    break;
  default:
    // tricore::INVALID already handled above
    llvm_unreachable("Unhandled Arch in switch");
  }

  // If -mcpu was not set we need to add a default derivative as subtarget
  // feature
  if (CPUArch == tricore::INVALID) {
    assert(!DefaultDerivativeFeature.empty() &&
           "Expected DefaultDerivativeFeature to be set");
    Features.emplace_back(DefaultDerivativeFeature);
  }

  return Arch;
}

void tricore::getTriCoreTargetFeatures(const Driver &D,
                                       const llvm::opt::ArgList &Args,
                                       std::vector<llvm::StringRef> &Features) {
  Arg *MArch, *MCpu;
  tricore::ArchKind Arch = tricore::INVALID;

  // Get features from mcpu argument
  if ((MCpu = Args.getLastArg(options::OPT_mcpu_EQ)))
    Arch = getTriCoreArchFeaturesFromMCpu(D, MCpu, Args, Features);

  // Get features from march argument
  if ((MArch = Args.getLastArg(options::OPT_march_EQ)))
    getTriCoreArchFeaturesFromMArch(D, MArch, MCpu, Args, Features, Arch);
}

std::string tricore::getTriCoreTargetCPU(const ArgList &Args, Arg *&A) {
  // If we have -mcpu, use that
  if ((A = Args.getLastArg(options::OPT_mcpu_EQ))) {
    const std::string &MCpu = getArgValueLowerCase(A);
    return llvm::StringSwitch<std::string>(MCpu)
        .Cases("tc21xx", "tc22xx", "tc23xx", "tc26xx", "tc27xx", "tc29xx",
               "tc2d5d", "tc2xx")
        .Cases("tc35xx", "tc37xx", "tc38xx", "tc39xx", "tc3xx")
        .Case("tc4xx", "tc4xx")
        .Default(MCpu);
  }

  // No -mcpu option given. Select a CPU fitting our -march option
  if ((A = Args.getLastArg(options::OPT_march_EQ))) {
    const std::string MArch = getArgValueLowerCase(A);
    return llvm::StringSwitch<std::string>(MArch)
        .Case("tc161", "tc2xx")
        .Case("tc162", "tc3xx")
        .Case("tc18", "tc4xx")
        .Default("generic");
  }

  // No -mcpu and -march given
  return "generic";
}
