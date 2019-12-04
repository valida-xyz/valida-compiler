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

#define DEBUG_TYPE "tricore-reg-info"

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

bool TriCoreRegisterInfo::requiresRegisterScavenging(
    const MachineFunction &MF) const {
  // We might introduce virtual registers and therefore require scavenging
  return true;
}

bool TriCoreRegisterInfo::requiresFrameIndexScavenging(
    const MachineFunction &MF) const {
  // We might introduce virtual registers and therefore require scavenging
  return true;
}

void TriCoreRegisterInfo::eliminateFrameIndex(MachineBasicBlock::iterator II,
                                              int SPAdj, unsigned FIOperandNum,
                                              RegScavenger *RS) const {
  assert(SPAdj == 0 && "Unexpected SPAdj");

  // Common helpers
  MachineInstr &MI = *II;
  MachineFunction &MF = *MI.getParent()->getParent();
  MachineRegisterInfo &MRI = MF.getRegInfo();
  const TriCoreInstrInfo *TII =
      MF.getSubtarget<TriCoreSubtarget>().getInstrInfo();

  // Calculate the offset of the frame index and the frame register
  const int FrameIndex = MI.getOperand(FIOperandNum).getIndex();
  unsigned FrameReg;

  assert(MI.getOperand(FIOperandNum + 1).getImm() == 0 &&
         "Unexpected offset operand");

  int Offset =
      getFrameLowering(MF)->getFrameIndexReference(MF, FrameIndex, FrameReg);

  // Make sure that the Offset is within supported bounds
  if (!isInt<32>(Offset)) {
    LLVM_DEBUG(dbgs() << "Offset not within 32-bits: " << Offset << '\n');
    report_fatal_error(
        "Frame offsets outside of the signed 32-bit range not supported.");
  }

  MachineBasicBlock &MBB = *MI.getParent();
  bool FrameRegIsKill = false;

  // Check if the offset can fit into an 16-bit immediate
  if (!isInt<16>(Offset)) {
    // Emit a 32-bit frame offset
    const Register ScratchReg =
        MRI.createVirtualRegister(&TriCore::AddrRegsRegClass);

    TII->emitFrameOffset(MBB, II, MI.getDebugLoc(), ScratchReg, FrameReg,
                         Offset);

    // Update FrameReg, Offset and kill status
    FrameReg = ScratchReg;
    Offset = 0;
    FrameRegIsKill = true;
  }

  // We can use the instruction directly
  MI.getOperand(FIOperandNum)
      .ChangeToRegister(FrameReg, false, false, FrameRegIsKill);
  MI.getOperand(FIOperandNum + 1).ChangeToImmediate(Offset);
}

Register
TriCoreRegisterInfo::getFrameRegister(const MachineFunction &MF) const {
  return TriCore::A14;
}

Register TriCoreRegisterInfo::getStackRegister() const { return TriCore::A10; }
