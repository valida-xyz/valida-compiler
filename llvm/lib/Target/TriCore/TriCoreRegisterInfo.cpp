//===-- TriCoreRegisterInfo.cpp - TriCore Register Information ---*- C++-*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains the TriCore implementation of the TargetRegisterInfo
// class.
//
//===----------------------------------------------------------------------===//

#include "TriCoreRegisterInfo.h"
#include "TriCore.h"
#include "TriCoreSubtarget.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/RegisterScavenging.h"
#include "llvm/CodeGen/TargetFrameLowering.h"
#include "llvm/CodeGen/TargetInstrInfo.h"
#include "llvm/Support/ErrorHandling.h"

#define GET_REGINFO_TARGET_DESC
#include "TriCoreGenRegisterInfo.inc"

using namespace llvm;

TriCoreRegisterInfo::TriCoreRegisterInfo()
    : TriCoreGenRegisterInfo(TriCore::A11, /*DwarfFlavour*/ 0, /*EHFlavor*/ 0,
                             TriCore::PC) {}

const MCPhysReg *
TriCoreRegisterInfo::getCalleeSavedRegs(const MachineFunction *MF) const {
  return CSR_NoRegs_SaveList;
}

const uint32_t *
TriCoreRegisterInfo::getCallPreservedMask(const MachineFunction &MF,
                                          CallingConv::ID) const {
  return CSR_TriCore_UpperContext_RegMask;
}

BitVector
TriCoreRegisterInfo::getReservedRegs(const MachineFunction &MF) const {
  BitVector Reserved(getNumRegs());

  // Use markSuperRegs to ensure any register aliases are also reserved
  markSuperRegs(Reserved, TriCore::A0);  // system global address register
  markSuperRegs(Reserved, TriCore::A1);  // system global address register
  markSuperRegs(Reserved, TriCore::A8);  // system global address register
  markSuperRegs(Reserved, TriCore::A9);  // system global address register
  markSuperRegs(Reserved, TriCore::A10); // stack pointer
  markSuperRegs(Reserved, TriCore::A11); // return address
  markSuperRegs(Reserved, TriCore::PC);  // program counter
  markSuperRegs(Reserved, TriCore::PSW); // program status word register
  assert(checkAllSuperRegsMarked(Reserved));
  return Reserved;
}

void TriCoreRegisterInfo::eliminateFrameIndex(MachineBasicBlock::iterator II,
                                              int SPAdj, unsigned FIOperandNum,
                                              RegScavenger *RS) const {
  report_fatal_error("Subroutines not supported yet");
}

Register
TriCoreRegisterInfo::getFrameRegister(const MachineFunction &MF) const {
  return TriCore::A14;
}
