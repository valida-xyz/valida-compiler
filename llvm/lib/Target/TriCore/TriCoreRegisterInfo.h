//===-- TriCoreRegisterInfo.h - TriCore Register Information Imp.*- C++ -*-===//
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

#ifndef LLVM_LIB_TARGET_TRICORE_TRICOREREGISTERINFO_H
#define LLVM_LIB_TARGET_TRICORE_TRICOREREGISTERINFO_H

#include "llvm/CodeGen/TargetRegisterInfo.h"

#define GET_REGINFO_HEADER
#include "TriCoreGenRegisterInfo.inc"

namespace llvm {

struct TriCoreRegisterInfo : public TriCoreGenRegisterInfo {

  TriCoreRegisterInfo();

  const MCPhysReg *getCalleeSavedRegs(const MachineFunction *MF) const override;

  const uint32_t *getCallPreservedMask(const MachineFunction &MF,
                                       CallingConv::ID) const override;

  BitVector getReservedRegs(const MachineFunction &MF) const override;

  bool requiresFrameIndexScavenging(const MachineFunction &MF) const override;
  bool requiresRegisterScavenging(const MachineFunction &MF) const override;

  void eliminateFrameIndex(MachineBasicBlock::iterator MI, int SPAdj,
                           unsigned FIOperandNum,
                           RegScavenger *RS = nullptr) const override;

  bool canRealignStack(const MachineFunction &MF) const override;

  Register getFrameRegister(const MachineFunction &MF) const override;
  Register getStackRegister() const;
};
} // namespace llvm

#endif // LLVM_LIB_TARGET_TRICORE_TRICOREREGISTERINFO_H
