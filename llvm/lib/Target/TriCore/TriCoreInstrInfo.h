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

class TriCoreInstrInfo : public TriCoreGenInstrInfo {
  const TriCoreRegisterInfo TRI;

public:
  TriCoreInstrInfo();

  std::pair<unsigned int, unsigned int>
  decomposeMachineOperandsTargetFlags(unsigned int TF) const override;

  ArrayRef<std::pair<unsigned int, const char *>>
  getSerializableDirectMachineOperandTargetFlags() const override;

  void copyPhysReg(MachineBasicBlock &MBB, MachineBasicBlock::iterator MI,
                   const DebugLoc &DL, unsigned DestReg, unsigned SrcReg,
                   bool KillSrc) const override;

  void storeRegToStackSlot(MachineBasicBlock &MBB,
                           MachineBasicBlock::iterator MI, unsigned SrcReg,
                           bool isKill, int FrameIndex,
                           const TargetRegisterClass *RC,
                           const TargetRegisterInfo *TRI) const override;

  void loadRegFromStackSlot(MachineBasicBlock &MBB,
                            MachineBasicBlock::iterator MI, unsigned DestReg,
                            int FrameIndex, const TargetRegisterClass *RC,
                            const TargetRegisterInfo *TRI) const override;

  void emitFrameOffset(MachineBasicBlock &MBB, MachineBasicBlock::iterator MBBI,
                       const DebugLoc &DL, Register DstReg, Register SrcReg,
                       uint64_t Val,
                       MachineInstr::MIFlag Flag = MachineInstr::NoFlags) const;
};
} // namespace llvm
#endif // LLVM_LIB_TARGET_TRICORE_TRICOREINSTRINFO_H
