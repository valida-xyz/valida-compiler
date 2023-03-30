//===-- DelendumRegisterInfo.h - Delendum Register Information Impl -----*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
///
/// \file
/// This file contains the Delendum implementation of the TargetRegisterInfo
/// class.
///
//===----------------------------------------------------------------------===//

#include "Delendum.h"
#include "DelendumRegisterInfo.h"
#include "DelendumSubtarget.h"
#include "MCTargetDesc/DelendumMCTargetDesc.h"

#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/RegisterScavenging.h"
#include "llvm/CodeGen/TargetFrameLowering.h"
#include "llvm/CodeGen/TargetInstrInfo.h"
#include "llvm/IR/DebugInfoMetadata.h"
#include "llvm/Support/ErrorHandling.h"

#define GET_REGINFO_TARGET_DESC
#include "DelendumGenRegisterInfo.inc"

#define DEBUG_TYPE "delendum-reg-info"

using namespace llvm;

// Pin the vtable to this file.
void DelendumRegisterInfo::anchor() {}

DelendumRegisterInfo::DelendumRegisterInfo(const DelendumSubtarget &ST)
    : DelendumGenRegisterInfo(0, 0, 0, 0, 0), Subtarget(ST) {
}

const MCPhysReg*
DelendumRegisterInfo::getCalleeSavedRegs(const MachineFunction *MF) const {
  // TODO
}

const uint32_t*
DelendumRegisterInfo::getCallPreservedMask(const MachineFunction &MF,
                                                           CallingConv::ID) const {
  // TODO
}

BitVector
DelendumRegisterInfo::getReservedRegs(const MachineFunction &MF) const {
  // TODO
};

bool
DelendumRegisterInfo::requiresRegisterScavenging(const MachineFunction &MF) const {
  return false;
};

bool
DelendumRegisterInfo::trackLivenessAfterRegAlloc(const MachineFunction &MF) const {
  // TODO
};

/// FrameIndex represent objects inside a abstract stack. We must replace
/// FrameIndex with an stack/frame pointer direct reference.
bool
DelendumRegisterInfo::eliminateFrameIndex(MachineBasicBlock::iterator II,
                                          int SPAdj, unsigned FIOperandNum,
                                          RegScavenger *RS) const {
  // TODO
};

/// True if the stack can be realigned for the target.
bool
DelendumRegisterInfo::canRealignStack(const MachineFunction &MF) const {
  // TODO
};

Register DelendumRegisterInfo::getFrameRegister(const MachineFunction &MF) const {
  // TODO
};
