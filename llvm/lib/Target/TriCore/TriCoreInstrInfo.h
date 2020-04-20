//===-- TriCoreInstrInfo.h - TriCore Instruction Information ----*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains the TriCore implementation of the TargetInstrInfo class.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_TRICORE_TRICOREINSTRINFO_H
#define LLVM_LIB_TARGET_TRICORE_TRICOREINSTRINFO_H

#include "TriCoreRegisterInfo.h"
#include "llvm/CodeGen/TargetInstrInfo.h"

#define GET_INSTRINFO_HEADER
#include "TriCoreGenInstrInfo.inc"

namespace llvm {

class TriCoreSubtarget;

class TriCoreInstrInfo : public TriCoreGenInstrInfo {
  const TriCoreRegisterInfo TRI;
  const TriCoreSubtarget &STI;

public:
  explicit TriCoreInstrInfo(TriCoreSubtarget &STI);

  std::pair<unsigned int, unsigned int>
  decomposeMachineOperandsTargetFlags(unsigned int TF) const override;

  unsigned int getInstSizeInBytes(const MachineInstr &MI) const override;

  ArrayRef<std::pair<unsigned int, const char *>>
  getSerializableDirectMachineOperandTargetFlags() const override;

  void copyPhysReg(MachineBasicBlock &MBB, MachineBasicBlock::iterator MI,
                   const DebugLoc &DL, MCRegister DestReg, MCRegister SrcReg,
                   bool KillSrc) const override;

  void storeRegToStackSlot(MachineBasicBlock &MBB,
                           MachineBasicBlock::iterator MI, Register SrcReg,
                           bool isKill, int FrameIndex,
                           const TargetRegisterClass *RC,
                           const TargetRegisterInfo *TRI) const override;

  void loadRegFromStackSlot(MachineBasicBlock &MBB,
                            MachineBasicBlock::iterator MI, Register DestReg,
                            int FrameIndex, const TargetRegisterClass *RC,
                            const TargetRegisterInfo *TRI) const override;

  void emitFrameOffset(MachineBasicBlock &MBB, MachineBasicBlock::iterator MBBI,
                       const DebugLoc &DL, Register DstReg, Register SrcReg,
                       uint64_t Val,
                       MachineInstr::MIFlag Flag = MachineInstr::NoFlags) const;

  unsigned getOffsetBits(unsigned Opcode) const;

  bool doesOffsetFitInOffsetOperand(unsigned Opcode, int64_t Offset) const;

  bool verifyInstruction(const MachineInstr &MI,
                         StringRef &ErrInfo) const override;
};
} // namespace llvm
#endif // LLVM_LIB_TARGET_TRICORE_TRICOREINSTRINFO_H
