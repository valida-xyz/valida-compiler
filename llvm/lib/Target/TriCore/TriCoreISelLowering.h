//===-- TriCoreISelLowering.h - TriCore DAG Lowering Interface --*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file defines the interfaces that TriCore uses to lower LLVM code into a
// selection DAG.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_TRICORE_TRICOREISELLOWERING_H
#define LLVM_LIB_TARGET_TRICORE_TRICOREISELLOWERING_H

#include "TriCore.h"
#include "llvm/CodeGen/SelectionDAG.h"
#include "llvm/CodeGen/TargetLowering.h"

namespace llvm {

class TriCoreTargetLowering : public TargetLowering {

public:
  explicit TriCoreTargetLowering(const TargetMachine &TM,
                                 const TriCoreSubtarget &STI);

  bool functionArgumentNeedsConsecutiveRegisters(Type *Ty,
                                                 CallingConv::ID CallConv,
                                                 bool isVarArg) const override;
  unsigned int getJumpTableEncoding() const override;
};
} // namespace llvm

#endif
