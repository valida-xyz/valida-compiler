//===-- TriCoreISelLowering.cpp - TriCore DAG Lowering Implementation -----===//
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

#include "TriCoreISelLowering.h"
#include "TriCore.h"
#include "TriCoreRegisterInfo.h"
#include "TriCoreSubtarget.h"
#include "TriCoreTargetMachine.h"
#include "llvm/CodeGen/MachineJumpTableInfo.h"
#include "llvm/CodeGen/SelectionDAGISel.h"
#include "llvm/CodeGen/TargetLoweringObjectFileImpl.h"
#include "llvm/CodeGen/ValueTypes.h"
#include "llvm/IR/DiagnosticInfo.h"
#include "llvm/IR/DiagnosticPrinter.h"

using namespace llvm;

#define DEBUG_TYPE "TriCore-lower"

TriCoreTargetLowering::TriCoreTargetLowering(const TargetMachine &TM,
                                             const TriCoreSubtarget &STI)
    : TargetLowering(TM) {

  // Set up the register classes.
  addRegisterClass(MVT::i32, &TriCore::DataRegsRegClass);
  addRegisterClass(MVT::i64, &TriCore::ExtDataRegsRegClass);

  // Set up the stack pointer register
  setStackPointerRegisterToSaveRestore(
      STI.getRegisterInfo()->getStackRegister());

  // Compute derived properties from the register classes
  computeRegisterProperties(STI.getRegisterInfo());
}

bool TriCoreTargetLowering::functionArgumentNeedsConsecutiveRegisters(
    Type *Ty, CallingConv::ID CallConv, bool isVarArg) const {
  return Ty->isArrayTy();
}

unsigned int TriCoreTargetLowering::getJumpTableEncoding() const {
  return MachineJumpTableInfo::EK_Inline;
}
