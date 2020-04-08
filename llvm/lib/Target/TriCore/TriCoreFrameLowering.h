//===-- TriCoreFrameLowering.h - Frame lowering for TriCore ----*- C++ -*--===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This class implements TriCore-specific bits of TargetFrameLowering class.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_TRICORE_TRICOREFRAMELOWERING_H
#define LLVM_LIB_TARGET_TRICORE_TRICOREFRAMELOWERING_H

#include "llvm/CodeGen/TargetFrameLowering.h"

namespace llvm {
class TriCoreSubtarget;

class TriCoreFrameLowering : public TargetFrameLowering {
public:
  explicit TriCoreFrameLowering(const TriCoreSubtarget &STI)
      : TargetFrameLowering(StackGrowsDown,
                            /*StackAlignment=*/Align(8),
                            /*LocalAreaOffset=*/0) {}

  void emitPrologue(MachineFunction &MF, MachineBasicBlock &MBB) const override;
  void emitEpilogue(MachineFunction &MF, MachineBasicBlock &MBB) const override;

  void processFunctionBeforeFrameFinalized(MachineFunction &MF,
                                           RegScavenger *RS) const override;

  bool hasFP(const MachineFunction &MF) const override;
  bool hasReservedCallFrame(const MachineFunction &MF) const override;

  int getFrameIndexReference(const MachineFunction &MF, int FI,
                             Register &FrameReg) const override;

  void determineFrameLayout(MachineFunction &MF) const;
  static void adjustStackPointer(MachineBasicBlock &MBB,
                                 MachineBasicBlock::iterator MBBI,
                                 const DebugLoc &DL, Register SPReg,
                                 int64_t Val, MachineInstr::MIFlag Flag);

  MachineBasicBlock::iterator
  eliminateCallFramePseudoInstr(MachineFunction &MF, MachineBasicBlock &MBB,
                                MachineBasicBlock::iterator MI) const override;

protected:
  /// Estimate the size of the stack, including the incoming arguments. We need
  /// to account for register spills, local objects, reserved call frame and
  /// incoming arguments. This is required to determine the largest possible
  /// positive offset so that it can be determined if an emergency spill slot
  /// for stack addresses is required.
  uint64_t estimateStackSize(const MachineFunction &MF) const;
};
} // namespace llvm
#endif
