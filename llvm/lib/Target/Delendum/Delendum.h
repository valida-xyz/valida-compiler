//===-- Delendum.h - Top-level interface for Delendum representation ----*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
///
/// \file
/// This file contains the entry points for global functions defined in the
/// Delendum target library, as used by the LLVM JIT.
///
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_DELENDUM_DELENDUM_H
#define LLVM_LIB_TARGET_DELENDUM_DELENDUM_H

namespace llvm {

class FunctionPass;
class InstructionSelector;
class DelendumRegisterBankInfo;
class DelendumSubtarget;
class DelendumTargetMachine;
class PassRegistry;

/// This pass converts a legalized DAG into a Delendum-specific DAG, ready for
/// instruction scheduling.
FunctionPass *createDelendumISelDag(DelendumTargetMachine &TM);

/// Return a Machine IR pass that expands Delendum-specific pseudo
/// instructions into a sequence of actual instructions. This pass
/// must run after prologue/epilogue insertion and before lowering
/// the MachineInstr to MC.
FunctionPass *createDelendumExpandPseudoPass();

InstructionSelector *
createDelendumInstructionSelector(const DelendumTargetMachine &, const DelendumSubtarget &,
                                  const DelendumRegisterBankInfo &);

void initializeDelendumDAGToDAGISelPass(PassRegistry &);

} // namespace llvm

#endif // LLVM_LIB_TARGET_DELENDUM_DELENDUM_H
