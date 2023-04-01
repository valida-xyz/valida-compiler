//===-- DelendumSubtarget.cpp - Delendum Subtarget Information ----------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
///
/// \file
/// This file implements the Delendum specific subclass of TargetSubtargetInfo.
///
//===----------------------------------------------------------------------===//

#include "DelendumSubtarget.h"

#include "Delendum.h"
#include "DelendumMachineFunction.h"
#include "DelendumRegisterInfo.h"
#include "DelendumTargetMachine.h"
#include "GISel/DelendumCallLowering.h"

#include "llvm/CodeGen/MachineJumpTableInfo.h"
#include "llvm/IR/Attributes.h"
#include "llvm/IR/Function.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/Support/CommandLine.h"
#include "llvm/Support/ErrorHandling.h"

using namespace llvm;

#define DEBUG_TYPE "delendum-subtarget"

#define GET_SUBTARGETINFO_TARGET_DESC
#define GET_SUBTARGETINFO_CTOR
#include "DelendumGenSubtargetInfo.inc"

/// Select the Delendum CPU for the given triple and cpu name.
static StringRef selectDelendumCPU(Triple TT, StringRef CPU) {
  if (CPU.empty() || CPU == "generic") {
    CPU = "Delendum";
  }
  return CPU;
}

void DelendumSubtarget::anchor() {}

DelendumSubtarget &DelendumSubtarget::initializeSubtargetDependencies(StringRef CPU,
                                                                      StringRef FS) {
  // Determine default and user specified characteristics
  std::string CPUName = std::string(CPU);
  CPUName = "";

  // Parse features string.
  ParseSubtargetFeatures(CPUName, /*TuneCPU*/ CPUName, FS);

  return *this;
}

DelendumSubtarget::DelendumSubtarget(const Triple &TT, StringRef CPU, StringRef FS,
                                     const DelendumTargetMachine &TM)
    : DelendumGenSubtargetInfo(TT, CPU, /*TuneCPU*/ CPU, FS), TM(TM),
      InstrInfo(initializeSubtargetDependencies(CPU, FS)),
      TLInfo(TM, *this), FrameLowering(*this) {
  CallLoweringInfo.reset(new DelendumCallLowering(*getTargetLowering()));
}

const CallLowering *DelendumSubtarget::getCallLowering() const {
  return CallLoweringInfo.get();
}
