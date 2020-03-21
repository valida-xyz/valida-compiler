//===-- TriCore.h - Top-level interface for TriCore -------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains the entry points for global functions defined in the LLVM
// TriCore back-end.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_TRICORE_TRICORE_H
#define LLVM_LIB_TARGET_TRICORE_TRICORE_H

#include "MCTargetDesc/TriCoreMCTargetDesc.h"
#include "llvm/Target/TargetMachine.h"

namespace llvm {
class TriCoreRegisterBankInfo;
class TriCoreSubtarget;
class TriCoreTargetMachine;
class FunctionPass;
class InstructionSelector;

FunctionPass *createTriCoreExpandPseudoPass();
FunctionPass *createTriCoreJumpTablePass();
FunctionPass *createTriCorePreLegalizeCombiner(bool IsOptNone);

void initializeTriCoreExpandPseudoPass(PassRegistry &);
void initializeTriCoreJumpTablesPass(PassRegistry &);
void initializeTriCorePreLegalizerCombinerPass(PassRegistry &);

InstructionSelector *
createTriCoreInstructionSelector(const TriCoreTargetMachine &,
                                 TriCoreSubtarget &, TriCoreRegisterBankInfo &);
} // namespace llvm

#endif // LLVM_LIB_TARGET_TRICORE_TRICORE_H
