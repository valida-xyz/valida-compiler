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

FunctionPass *createDelendumISelDag(DelendumTargetMachine &TM);
FunctionPass *createDelendumPreLegalizeCombiner();

InstructionSelector *
createDelendumInstructionSelector(const DelendumTargetMachine &, const DelendumSubtarget &,
                                  const DelendumRegisterBankInfo &);

void initializeDelendumDAGToDAGISelPass(PassRegistry &);
void initializeDelendumPreLegalizerCombinerPass(PassRegistry &);

} // namespace llvm

#endif // LLVM_LIB_TARGET_DELENDUM_DELENDUM_H
