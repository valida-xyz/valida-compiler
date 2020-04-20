//===-- TriCoreSubtarget.cpp - TriCore Subtarget Information --------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements the TriCore specific subclass of TargetSubtargetInfo.
//
//===----------------------------------------------------------------------===//

#include "TriCoreSubtarget.h"
#include "TriCore.h"
#include "TriCoreCallLowering.h"
#include "TriCoreLegalizerInfo.h"
#include "TriCoreRegisterBankInfo.h"
#include "TriCoreTargetMachine.h"
#include "llvm/Support/TargetRegistry.h"

using namespace llvm;

#define DEBUG_TYPE "tricore-subtarget"

#define GET_SUBTARGETINFO_TARGET_DESC
#define GET_SUBTARGETINFO_CTOR
#include "TriCoreGenSubtargetInfo.inc"

void TriCoreSubtarget::anchor() {}

TriCoreSubtarget &
TriCoreSubtarget::initializeSubtargetDependencies(StringRef CPU, StringRef FS) {
  // Determine default and user-specified characteristics
  std::string CPUName = std::string(CPU);
  if (CPUName.empty())
    CPUName = "tc4xx";
  ParseSubtargetFeatures(CPUName, FS);
  return *this;
}

TriCoreSubtarget::TriCoreSubtarget(const Triple &TT, const std::string &CPU,
                                   const std::string &FS,
                                   const TargetMachine &TM)
    : TriCoreGenSubtargetInfo(TT, CPU, FS),
      FrameLowering(initializeSubtargetDependencies(CPU, FS)), InstrInfo(*this),
      RegInfo(), TLInfo(TM, *this) {
  CallLoweringInfo.reset(new TriCoreCallLowering(*getTargetLowering()));
  Legalizer.reset(new TriCoreLegalizerInfo(*this));

  auto *RBI = new TriCoreRegisterBankInfo(*getRegisterInfo());
  RegBankInfo.reset(RBI);
  InstSelector.reset(createTriCoreInstructionSelector(
      *static_cast<const TriCoreTargetMachine *>(&TM), *this, *RBI));
}

const CallLowering *TriCoreSubtarget::getCallLowering() const {
  return CallLoweringInfo.get();
}

InstructionSelector *TriCoreSubtarget::getInstructionSelector() const {
  return InstSelector.get();
}

const LegalizerInfo *TriCoreSubtarget::getLegalizerInfo() const {
  return Legalizer.get();
}

const RegisterBankInfo *TriCoreSubtarget::getRegBankInfo() const {
  return RegBankInfo.get();
}
