//=== TriCoreCallingConvention.cpp - TriCore CC impl ------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains the table-generated and custom routines for the TriCore
// Calling Convention.
//
//===----------------------------------------------------------------------===//

#include "TriCoreCallingConvention.h"
#include "TriCore.h"
#include "TriCoreInstrInfo.h"
#include "TriCoreSubtarget.h"
#include "llvm/CodeGen/CallingConvLower.h"
#include "llvm/CodeGen/TargetInstrInfo.h"
#include "llvm/IR/CallingConv.h"
using namespace llvm;

static const MCPhysReg Ext4_6[] = {TriCore::D4, TriCore::D5, TriCore::D6,
                                   TriCore::D7};

static const MCPhysReg Ext6[] = {TriCore::D6, TriCore::D7};

static bool finishStackBlock(SmallVectorImpl<CCValAssign> &PendingMembers,
                             MVT LocVT, ISD::ArgFlagsTy &ArgFlags,
                             CCState &State, unsigned SlotAlign) {
  unsigned Size = LocVT.getSizeInBits() / 8;
  const Align StackAlign =
      State.getMachineFunction().getDataLayout().getStackAlignment();
  const Align OrigAlign(ArgFlags.getOrigAlign());
  const Align Align = std::min(OrigAlign, StackAlign);

  for (auto &It : PendingMembers) {
    It.convertToMem(State.AllocateStack(
        Size, std::max((unsigned)Align.value(), SlotAlign)));
    State.addLoc(It);
    SlotAlign = 1;
  }

  // All pending members have now been allocated
  PendingMembers.clear();
  return true;
}

/// Given an [N x Ty] block, it should be passed in a consecutive sequence of
/// registers. If no such sequence is available, place the argument on the
/// stack.
static bool CC_TriCore_Custom_Block(unsigned &ValNo, MVT &ValVT, MVT &LocVT,
                                    CCValAssign::LocInfo &LocInfo,
                                    ISD::ArgFlagsTy &ArgFlags, CCState &State) {
  // Try to allocate a contiguous block of registers, each of the correct
  // size to hold one member.
  ArrayRef<MCPhysReg> RegList;
  if (LocVT.SimpleTy != MVT::i32)
    // Not an array we want to split up after all.
    return false;

  // If this is the first scalar argument, we can use E4 and E6, else only E6 is
  // available
  if (!State.isAllocated(TriCore::D4))
    RegList = Ext4_6;
  else
    RegList = Ext6;

  SmallVectorImpl<CCValAssign> &PendingMembers = State.getPendingLocs();

  // Add the argument to the list to be allocated once we know the size of the
  // block.
  PendingMembers.push_back(
      CCValAssign::getPending(ValNo, ValVT, LocVT, LocInfo));

  if (!ArgFlags.isInConsecutiveRegsLast())
    return true;

  unsigned RegResult = State.AllocateRegBlock(RegList, PendingMembers.size());
  if (RegResult) {
    for (auto &It : PendingMembers) {
      It.convertToReg(RegResult);
      State.addLoc(It);
      ++RegResult;
    }
    PendingMembers.clear();
    return true;
  }

  return finishStackBlock(PendingMembers, LocVT, ArgFlags, State,
                          /*SlotAlign*/ 4);
}

#include "TriCoreGenCallingConv.inc"
