//===-- DelendumCallLowering.cpp - Call lowering --------------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
/// \file
/// This file implements the lowering of LLVM calls to machine code calls for
/// GlobalISel.
//
//===----------------------------------------------------------------------===//

#include "DelendumCallLowering.h"
#include "DelendumISelLowering.h"
#include "DelendumInstrInfo.h"
#include "DelendumSubtarget.h"
#include "DelendumTargetMachine.h"
#include "llvm/CodeGen/CallingConvLower.h"
#include "llvm/CodeGen/GlobalISel/CallLowering.h"
#include "llvm/CodeGen/GlobalISel/MachineIRBuilder.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/TargetCallingConv.h"

using namespace llvm;

DelendumCallLowering::DelendumCallLowering(const DelendumTargetLowering &TLI)
    : CallLowering(&TLI) {}

struct DelendumOutgoingArgHandler : public CallLowering::OutgoingValueHandler {
  DelendumOutgoingArgHandler(MachineIRBuilder &MIRBuilder, MachineRegisterInfo &MRI,
                         MachineInstrBuilder MIB)
      : OutgoingValueHandler(MIRBuilder, MRI), MIB(MIB),
        DL(MIRBuilder.getMF().getDataLayout()),
        STI(MIRBuilder.getMF().getSubtarget<DelendumSubtarget>()) {}

  void assignValueToReg(Register ValVReg, Register PhysReg,
                        CCValAssign VA) override {
  }

  void assignValueToAddress(Register ValVReg, Register Addr, LLT MemTy,
                            MachinePointerInfo &MPO, CCValAssign &VA) override {
  }

  Register getStackAddress(uint64_t Size, int64_t Offset,
                           MachinePointerInfo &MPO,
                           ISD::ArgFlagsTy Flags) override {
  }
  MachineInstrBuilder MIB;
  const DataLayout &DL;
  const DelendumSubtarget &STI;
};
bool DelendumCallLowering::lowerReturn(MachineIRBuilder &MIRBuilder,
                                   const Value *Val, ArrayRef<Register> VRegs,
                                   FunctionLoweringInfo &FLI) const {
  if (!VRegs.empty())
    return false;
  MIRBuilder.buildInstr(DL::RET); 
  return true;
}

bool DelendumCallLowering::lowerFormalArguments(MachineIRBuilder &MIRBuilder,
                                            const Function &F,
                                            ArrayRef<ArrayRef<Register>> VRegs,
                                            FunctionLoweringInfo &FLI) const {
  if (F.arg_empty())
    return true;

  return false;
}

void DelendumIncomingValueHandler::assignValueToReg(Register ValVReg,
                                                Register PhysReg,
                                                CCValAssign VA) {
}

void DelendumIncomingValueHandler::assignValueToAddress(Register ValVReg,
                                                    Register Addr,
                                                    LLT MemTy,
                                                    MachinePointerInfo &MPO,
                                                    CCValAssign &VA) {
}

Register DelendumIncomingValueHandler::getStackAddress(uint64_t Size,
                                                   int64_t Offset,
                                                   MachinePointerInfo &MPO,
                                                   ISD::ArgFlagsTy Flags) {
}

void CallReturnHandler::assignValueToReg(Register ValVReg, Register PhysReg,
                                         CCValAssign VA) {
}

bool DelendumCallLowering::lowerCall(MachineIRBuilder &MIRBuilder,
                                 CallLoweringInfo &Info) const {
}

bool DelendumCallLowering::enableBigEndian() const { return true; }
