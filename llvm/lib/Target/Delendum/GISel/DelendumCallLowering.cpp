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

#include "DelendumGenCallingConv.inc"

DelendumCallLowering::DelendumCallLowering(const DelendumTargetLowering &TLI)
    : CallLowering(&TLI) {}

struct DelendumOutgoingValueHandler : public CallLowering::OutgoingValueHandler {
  DelendumOutgoingValueHandler(MachineIRBuilder &MIRBuilder, MachineRegisterInfo &MRI,
                         MachineInstrBuilder MIB)
      : OutgoingValueHandler(MIRBuilder, MRI), MIB(MIB),
        DL(MIRBuilder.getMF().getDataLayout()),
        STI(MIRBuilder.getMF().getSubtarget<DelendumSubtarget>()) {}

  uint64_t StackUsed;

  void assignValueToReg(Register ValVReg, Register PhysReg,
                        CCValAssign VA) override {
    // NO-OP: all values are in the stack
  }

  void assignValueToAddress(Register ValVReg, Register Addr, LLT MemTy,
                            MachinePointerInfo &MPO, CCValAssign &VA) override {
    MachineFunction &MF = MIRBuilder.getMF();
    auto *MMO = MF.getMachineMemOperand(MPO, MachineMemOperand::MOStore, MemTy,
                                        inferAlignFromPtrInfo(MF, MPO));
    MIRBuilder.buildStore(ValVReg, Addr, *MMO);
  }

  Register getStackAddress(uint64_t Size, int64_t Offset,
                           MachinePointerInfo &MPO,
                           ISD::ArgFlagsTy Flags) override {
    auto &MFI = MIRBuilder.getMF().getFrameInfo();
    const bool IsImmutable = !Flags.isByVal();
    int FI = MFI.CreateFixedObject(Size, Offset, IsImmutable);
    MPO = MachinePointerInfo::getFixedStack(MIRBuilder.getMF(), FI);

    // Build Frame Index
    llvm::LLT FramePtr = LLT::pointer(
        0, MIRBuilder.getMF().getDataLayout().getPointerSizeInBits());
    MachineInstrBuilder AddrReg = MIRBuilder.buildFrameIndex(FramePtr, FI);
    StackUsed = std::max(StackUsed, Size + Offset);
    return AddrReg.getReg(0);
    }

    MachineInstrBuilder MIB;
    const DataLayout &DL;
    const DelendumSubtarget &STI;
};
bool DelendumCallLowering::lowerReturn(MachineIRBuilder &MIRBuilder,
                                       const Value *Val, ArrayRef<Register> VRegs,
                                       FunctionLoweringInfo &FLI) const {
  bool Success = true;
  if (!VRegs.empty()) {
    auto MIB = MIRBuilder.buildInstrNoInsert(DL::RET); 
    MachineFunction &MF = MIRBuilder.getMF();
    const Function &F = MF.getFunction();
    MachineRegisterInfo &MRI = MF.getRegInfo();
    auto &DL = F.getParent()->getDataLayout();

    SmallVector<ArgInfo, 8> SplitArgs;
    ArgInfo OrigArg{VRegs, Val->getType(), 0};
    setArgFlags(OrigArg, AttributeList::ReturnIndex, DL, F);
    splitToValueTypes(OrigArg, SplitArgs, DL, F.getCallingConv());

    CCAssignFn *AssignFn = Delendum_CRetConv;
    OutgoingValueAssigner Assigner(AssignFn);
    DelendumOutgoingValueHandler Handler(MIRBuilder, MRI, MIB);

    Success = determineAndHandleAssignments(Handler, Assigner, SplitArgs,
                                            MIRBuilder, F.getCallingConv(),
                                            F.isVarArg());
  }
  return Success;
}

bool DelendumCallLowering::lowerFormalArguments(MachineIRBuilder &MIRBuilder,
                                            const Function &F,
                                            ArrayRef<ArrayRef<Register>> VRegs,
                                            FunctionLoweringInfo &FLI) const {
  MachineFunction &MF = MIRBuilder.getMF();
  MachineRegisterInfo &MRI = MF.getRegInfo();
  const auto &DL = F.getParent()->getDataLayout();
  auto &TLI = *getTLI<DelendumTargetLowering>();

  if (!VRegs.empty()) {
    SmallVector<ArgInfo, 8> InArgs;
    unsigned I = 0;
    for (auto &Arg : F.args()) {
      ArgInfo OrigArg{VRegs[I], Arg.getType(), 0};
      setArgFlags(OrigArg, I + AttributeList::FirstArgIndex, DL, F);
      InArgs.push_back(OrigArg);
      ++I;
    }

    FormalArgHandler Handler(MIRBuilder, MRI);

    CCAssignFn *AssignFn = Delendum_CCallingConv;
    OutgoingValueAssigner Assigner(AssignFn);

    determineAndHandleAssignments(Handler, Assigner, InArgs, MIRBuilder, 
                                  F.getCallingConv(), F.isVarArg());
  }

  return true;
}

void DelendumIncomingValueHandler::assignValueToReg(Register ValVReg,
                                                    Register PhysReg,
                                                    CCValAssign VA) {
  // NO-OP: all values are in the stack
}

void DelendumIncomingValueHandler::assignValueToAddress(Register ValVReg,
                                                        Register Addr,
                                                        LLT MemTy,
                                                        MachinePointerInfo &MPO,
                                                        CCValAssign &VA) {
  MachineFunction &MF = MIRBuilder.getMF();
  Register ExtReg = extendRegister(ValVReg, VA);

  auto *MMO = MF.getMachineMemOperand(MPO, MachineMemOperand::MOStore, MemTy,
                                      inferAlignFromPtrInfo(MF, MPO));
  MIRBuilder.buildStore(ExtReg, Addr, *MMO);
}

Register DelendumIncomingValueHandler::getStackAddress(uint64_t Size,
                                                       int64_t Offset,
                                                       MachinePointerInfo &MPO,
                                                       ISD::ArgFlagsTy Flags) {
  auto &MFI = MIRBuilder.getMF().getFrameInfo();
  const bool IsImmutable = !Flags.isByVal();
  int FI = MFI.CreateFixedObject(Size, Offset, IsImmutable);
  MPO = MachinePointerInfo::getFixedStack(MIRBuilder.getMF(), FI);

  // Build Frame Index
  llvm::LLT FramePtr = LLT::pointer(
      0, MIRBuilder.getMF().getDataLayout().getPointerSizeInBits());
  MachineInstrBuilder AddrReg = MIRBuilder.buildFrameIndex(FramePtr, FI);
  StackUsed = std::max(StackUsed, Size + Offset);
  return AddrReg.getReg(0);
}

bool DelendumCallLowering::lowerCall(MachineIRBuilder &MIRBuilder,
                                 CallLoweringInfo &Info) const {
}

bool DelendumCallLowering::enableBigEndian() const { return true; }
