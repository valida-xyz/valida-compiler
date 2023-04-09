//===-- DelendumCallingConv.h - Delendum Custom CC Routines -------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
///
/// \file
/// This file contains the custom routines for the Delendum Calling Convention
/// that aren't done by tablegen.
///
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_DELENDUM_DELENDUMCALLINGCONV_H
#define LLVM_LIB_TARGET_DELENDUM_DELENDUMCALLINGCONV_H

#include "MCTargetDesc/DelendumMCTargetDesc.h"

#include "llvm/CodeGen/CallingConvLower.h"
#include "llvm/IR/CallingConv.h"
#include "llvm/IR/Function.h"

namespace llvm {

struct DelendumCCState : public CCState {
  ArrayRef<Type *> ArgTypeList;

  DelendumCCState(ArrayRef<Type *> ArgTypes, CallingConv::ID CC, bool IsVarArg,
              MachineFunction &MF, SmallVectorImpl<CCValAssign> &Locs,
              LLVMContext &C)
      : CCState(CC, IsVarArg, MF, Locs, C), ArgTypeList(ArgTypes) {}
};

inline bool CC_Delendum_AssignToStack(unsigned &ValNo, MVT &ValVT, MVT &LocVT,
                                      CCValAssign::LocInfo &LocInfo,
                                      ISD::ArgFlagsTy &ArgFlags, CCState &State) {
  if (LocVT == MVT::i32) {
    unsigned Offset1 = State.AllocateStack(4, Align(4));
    State.addLoc(CCValAssign::getMem(ValNo, ValVT, Offset1, LocVT, LocInfo));
    return true;
  }

  return false; // CC didn't match.
}

} // namespace llvm

#endif // LLVM_LIB_TARGET_DELENDUM_DELENDUMCALLINGCONV_H
