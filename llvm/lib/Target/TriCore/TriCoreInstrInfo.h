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

#include "TriCore.h"
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

  bool analyzeBranch(MachineBasicBlock &MBB, MachineBasicBlock *&TBB,
                     MachineBasicBlock *&FBB,
                     SmallVectorImpl<MachineOperand> &Cond,
                     bool AllowModify) const override;

  unsigned int insertBranch(MachineBasicBlock &MBB, MachineBasicBlock *TBB,
                            MachineBasicBlock *FBB,
                            ArrayRef<MachineOperand> Cond, const DebugLoc &DL,
                            int *BytesAdded) const override;

  unsigned int removeBranch(MachineBasicBlock &MBB,
                            int *BytesRemoved) const override;

  bool
  reverseBranchCondition(SmallVectorImpl<MachineOperand> &Cond) const override;

private:
  static inline unsigned getOppositeBranchOpcode(unsigned Opc) {
    // Return the opposite opcode to a branch instruction, e.g. JEQ -> JNE.
    // Return 0 if this opcode cannot be flipped
    switch (Opc) {
    default:
      return 0;
    case TriCore::JEQA_aac:
      return TriCore::JNEA_aac;
    case TriCore::JEQ_dcc:
      return TriCore::JNE_dcc;
    case TriCore::JEQ_ddc:
      return TriCore::JNE_ddc;
    case TriCore::JGE_dcc:
      return TriCore::JLT_dcc;
    case TriCore::JGE_ddc:
      return TriCore::JLT_ddc;
    case TriCore::JGEU_dcc:
      return TriCore::JLTU_dcc;
    case TriCore::JGEU_ddc:
      return TriCore::JLTU_ddc;
    case TriCore::JLT_dcc:
      return TriCore::JGE_dcc;
    case TriCore::JLT_ddc:
      return TriCore::JGE_ddc;
    case TriCore::JLTU_dcc:
      return TriCore::JGEU_dcc;
    case TriCore::JLTU_ddc:
      return TriCore::JGEU_ddc;
    case TriCore::JNEA_aac:
      return TriCore::JEQA_aac;
    case TriCore::JNE_dcc:
      return TriCore::JEQ_dcc;
    case TriCore::JNE_ddc:
      return TriCore::JEQ_ddc;
    case TriCore::JNZA_ac:
      return TriCore::JZA_ac;
    case TriCore::JNZT_dcc:
      return TriCore::JZT_dcc;
    case TriCore::JZA_ac:
      return TriCore::JNZA_ac;
    case TriCore::JZT_dcc:
      return TriCore::JNZT_dcc;
    }
  }
};
} // namespace llvm
#endif // LLVM_LIB_TARGET_TRICORE_TRICOREINSTRINFO_H
