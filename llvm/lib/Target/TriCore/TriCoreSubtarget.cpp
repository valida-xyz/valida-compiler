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
#include "llvm/Support/TargetRegistry.h"

using namespace llvm;

#define DEBUG_TYPE "tricore-subtarget"

#define GET_SUBTARGETINFO_ENUM
#define GET_SUBTARGETINFO_TARGET_DESC
#define GET_SUBTARGETINFO_CTOR
#include "TriCoreGenSubtargetInfo.inc"

void TriCoreSubtarget::anchor() {}

TriCoreSubtarget &
TriCoreSubtarget::initializeSubtargetDependencies(StringRef CPU, StringRef FS) {
  // Determine default and user-specified characteristics
  std::string CPUName = CPU;
  if (CPUName.empty())
    CPUName = "tc162";
  ParseSubtargetFeatures(CPUName, FS);
  return *this;
}

TriCoreSubtarget::TriCoreSubtarget(const Triple &TT, const std::string &CPU,
                                   const std::string &FS,
                                   const TargetMachine &TM)
    : TriCoreGenSubtargetInfo(TT, CPU, FS) {}
