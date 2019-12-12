//===-- TriCoreCallLowering.cpp - Call lowering -----------------*- C++ -*-===//
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

#include "TriCoreCallLowering.h"
#include "TriCoreCallingConvention.h"
#include "TriCoreISelLowering.h"
#include "TriCoreSubtarget.h"
#include "llvm/CodeGen/Analysis.h"
#include "llvm/CodeGen/GlobalISel/MachineIRBuilder.h"

#define DEBUG_TYPE "tricore-call-lowering"

using namespace llvm;

namespace {
/// IncomingArgHandler - An IncomingArgHandler is needed in two situations:
/// * Arguments getting into a function (from the callee's perspective)
/// * Values coming out of a call (from the caller's perspective)
/// First, the handler needs to figure out which physical register or stack
/// slot contains the actual value of the argument. Then, the value needs to
/// be copied into a virtual register.
struct IncomingArgHandler : public CallLowering::ValueHandler {
  IncomingArgHandler(MachineIRBuilder &MIRBuilder, MachineRegisterInfo &MRI,
                     CCAssignFn *AssignFn)
      : ValueHandler(MIRBuilder, MRI, AssignFn), StackUsed(0) {}

  Register getStackAddress(uint64_t Size, int64_t Offset,
                           MachinePointerInfo &MPO) override {
    auto &MFI = MIRBuilder.getMF().getFrameInfo();
    int FI = MFI.CreateFixedObject(Size, Offset, true);
    MPO = MachinePointerInfo::getFixedStack(MIRBuilder.getMF(), FI);
    Register AddrReg = MRI.createGenericVirtualRegister(LLT::pointer(0, 32));
    MIRBuilder.buildFrameIndex(AddrReg, FI);
    StackUsed = std::max(StackUsed, Size + Offset);
    return AddrReg;
  }

  void assignValueToReg(Register ValVReg, Register PhysReg,
                        CCValAssign &VA) override {
    markPhysRegUsed(PhysReg);
    switch (VA.getLocInfo()) {
    default:
      MIRBuilder.buildCopy(ValVReg, PhysReg);
      break;
    case CCValAssign::LocInfo::SExt:
    case CCValAssign::LocInfo::ZExt:
    case CCValAssign::LocInfo::AExt: {
      auto Copy = MIRBuilder.buildCopy(LLT{VA.getLocVT()}, PhysReg);
      MIRBuilder.buildTrunc(ValVReg, Copy);
      break;
    }
    }
  }

  void assignValueToAddress(Register ValVReg, Register Addr, uint64_t Size,
                            MachinePointerInfo &MPO, CCValAssign &VA) override {
    // FIXME: Get alignment
    auto MMO = MIRBuilder.getMF().getMachineMemOperand(
        MPO, MachineMemOperand::MOLoad | MachineMemOperand::MOInvariant, Size,
        1);
    MIRBuilder.buildLoad(ValVReg, Addr, *MMO);
  }

  /// How the physical register gets marked varies between formal
  /// parameters (it's a basic-block live-in), and a call instruction
  /// (it's an implicit-def of the CALL).
  virtual void markPhysRegUsed(unsigned PhysReg) = 0;

  bool isIncomingArgumentHandler() const override { return true; }

  uint64_t StackUsed;
};

/// FormalArgHandler - Handles the situation where arguments are getting
/// into a function (from the callee's perspective).
struct FormalArgHandler : public IncomingArgHandler {
  FormalArgHandler(MachineIRBuilder &MIRBuilder, MachineRegisterInfo &MRI,
                   CCAssignFn *AssignFn)
      : IncomingArgHandler(MIRBuilder, MRI, AssignFn) {}

  void markPhysRegUsed(unsigned PhysReg) override {
    MIRBuilder.getMRI()->addLiveIn(PhysReg);
    MIRBuilder.getMBB().addLiveIn(PhysReg);
  }
};

/// CallReturnHandler - Handles the case where a return value is coming out of
/// a call (from the caller's perspective).
struct CallReturnHandler : public IncomingArgHandler {
  CallReturnHandler(MachineIRBuilder &MIRBuilder, MachineRegisterInfo &MRI,
                    MachineInstrBuilder MIB, CCAssignFn *AssignFn)
      : IncomingArgHandler(MIRBuilder, MRI, AssignFn), MIB(MIB) {}

  void markPhysRegUsed(unsigned PhysReg) override {
    MIB.addDef(PhysReg, RegState::Implicit);
  }

  MachineInstrBuilder MIB;
};

/// OutgoingValueHandler - An OutgoingValueHandler is needed in two situations:
/// * Arguments to a call instruction (from the caller's perspective)
/// * Values beeing returned (from the callee's perspective)
/// The handler needs to figure out which physical register or stack slot shall
/// contain the value. Then, the value is copied from the virtual register into
/// the respective physical register or stack slot.
struct OutgoingValueHandler : public CallLowering::ValueHandler {
  OutgoingValueHandler(MachineIRBuilder &B, MachineRegisterInfo &MRI,
                       MachineInstrBuilder MIB, CCAssignFn *AssignFn,
                       CCAssignFn *AssignFnVarArg)
      : ValueHandler(B, MRI, AssignFn), MIB(MIB),
        AssignFnVarArg(AssignFnVarArg), StackSize(0) {}

  MachineInstrBuilder MIB;
  CCAssignFn *AssignFnVarArg;
  uint64_t StackSize;

  Register getStackAddress(uint64_t Size, int64_t Offset,
                           MachinePointerInfo &MPO) override {
    LLT p0 = LLT::pointer(0, 32);
    LLT s32 = LLT::scalar(32);
    Register SPReg = MRI.createGenericVirtualRegister(p0);
    MIRBuilder.buildCopy(SPReg, Register(TriCore::A10));

    Register OffsetReg = MRI.createGenericVirtualRegister(s32);
    MIRBuilder.buildConstant(OffsetReg, Offset);

    Register AddrReg = MRI.createGenericVirtualRegister(p0);
    MIRBuilder.buildPtrAdd(AddrReg, SPReg, OffsetReg);

    MPO = MachinePointerInfo::getStack(MIRBuilder.getMF(), Offset);
    return AddrReg;
  }

  void assignValueToAddress(Register ValVReg, Register Addr, uint64_t Size,
                            MachinePointerInfo &MPO, CCValAssign &VA) override {
    auto MMO = MIRBuilder.getMF().getMachineMemOperand(
        MPO, MachineMemOperand::MOStore, Size, 1);
    MIRBuilder.buildStore(ValVReg, Addr, *MMO);
  }

  void assignValueToReg(Register ValVReg, Register PhysReg,
                        CCValAssign &VA) override {
    MIB.addUse(PhysReg, RegState::Implicit);
    Register ExtReg = extendRegister(ValVReg, VA);
    MIRBuilder.buildCopy(PhysReg, ExtReg);
  }

  bool assignArg(unsigned ValNo, MVT ValVT, MVT LocVT,
                 CCValAssign::LocInfo LocInfo,
                 const CallLowering::ArgInfo &Info, ISD::ArgFlagsTy Flags,
                 CCState &State) override {
    bool Res;
    if (Info.IsFixed)
      Res = AssignFn(ValNo, ValVT, LocVT, LocInfo, Flags, State);
    else
      Res = AssignFnVarArg(ValNo, ValVT, LocVT, LocInfo, Flags, State);

    StackSize = State.getNextStackOffset();

    return Res;
  }

  bool isIncomingArgumentHandler() const override { return false; }
};
} // namespace

TriCoreCallLowering::TriCoreCallLowering(const TriCoreTargetLowering &TLI)
    : CallLowering(&TLI) {}

/// Given an argument, check whether this argument needs to be broken down into
/// multiple values. If so, create an ArgInfo object for each value and return
/// them in SplitArgs container
void TriCoreCallLowering::splitToValueTypes(const ArgInfo &OrigArg,
                                            SmallVectorImpl<ArgInfo> &SplitArgs,
                                            const DataLayout &DL,
                                            MachineRegisterInfo &MRI,
                                            CallingConv::ID CallConv) const {
  const TriCoreTargetLowering &TLI = *getTLI<TriCoreTargetLowering>();

  if (OrigArg.Ty->isVoidTy())
    return;

  SmallVector<Type *, 4> SplitTypes;
  SmallVector<uint64_t, 4> Offsets;

  // Collect all the underlying types
  TraverseIRType(DL, OrigArg.Ty, &Offsets, 0,
                 [&](Type *Ty) { SplitTypes.push_back(Ty); });

  if (SplitTypes.size() == 1) {
    // No splitting to do, but we want to replace the original type (e.g. [1 x
    // i32] -> i32).
    SplitArgs.emplace_back(OrigArg.Regs[0], SplitTypes[0], OrigArg.Flags[0],
                           OrigArg.IsFixed);
    return;
  }

  // Create one ArgInfo for each virtual register in the original ArgInfo.
  assert(OrigArg.Regs.size() == SplitTypes.size() && "Regs / types mismatch");

  bool NeedsRegBlock = TLI.functionArgumentNeedsConsecutiveRegisters(
      OrigArg.Ty, CallConv, false);
  for (unsigned i = 0, e = SplitTypes.size(); i < e; ++i) {
    SplitArgs.emplace_back(OrigArg.Regs[i], SplitTypes[i], OrigArg.Flags[0],
                           OrigArg.IsFixed);
    if (NeedsRegBlock)
      SplitArgs.back().Flags[0].setInConsecutiveRegs();
  }

  SplitArgs.back().Flags[0].setInConsecutiveRegsLast();
}

bool TriCoreCallLowering::lowerReturn(MachineIRBuilder &MIRBuilder,
                                      const Value *Val,
                                      ArrayRef<Register> VRegs) const {

  MachineInstrBuilder Ret = MIRBuilder.buildInstrNoInsert(TriCore::RET);
  assert(((Val && !VRegs.empty()) || (!Val && VRegs.empty())) &&
         "Return value without a vreg");

  bool Success = true;
  if (!VRegs.empty()) {

    assert(!Val->getType()->isVectorTy() &&
           "Cannot handle returning vector types.");

    MachineFunction &MF = MIRBuilder.getMF();
    const Function &F = MF.getFunction();

    MachineRegisterInfo &MRI = MF.getRegInfo();
    const TriCoreTargetLowering &TLI = *getTLI<TriCoreTargetLowering>();
    CCAssignFn *AssignFn = RetCC_TriCore;
    auto &DL = F.getParent()->getDataLayout();
    LLVMContext &Ctx = Val->getType()->getContext();

    // Callect all the underlying, non-aggregate types
    SmallVector<Type *, 8> SplitTypes;
    TraverseIRType(DL, Val->getType(), nullptr, 0,
                   [&](Type *Ty) { SplitTypes.push_back(Ty); });

    SmallVector<ArgInfo, 8> SplitArgs;
    CallingConv::ID CC = F.getCallingConv();

    bool NeedsRegBlock = TLI.functionArgumentNeedsConsecutiveRegisters(
        Val->getType(), CC, /*IsVarArg*/ false);

    unsigned NumValues = SplitTypes.size();
    for (unsigned i = 0; i < NumValues; ++i) {

      EVT ExtType = TLI.getValueType(DL, SplitTypes[i]);
      if (TLI.getNumRegistersForCallingConv(Ctx, CC, ExtType) > 1) {
        LLVM_DEBUG(
            dbgs() << "Can't handle extended arg types which need split");
        return false;
      }

      Register CurVReg = VRegs[i];
      ArgInfo CurArgInfo = ArgInfo{CurVReg, SplitTypes[i]};
      setArgFlags(CurArgInfo, AttributeList::ReturnIndex, DL, F);

      // If this is a pointer to be returned, we set the isPointer flag such
      // that our calling convention in TriCoreCallingConv.td will handle it
      if (Val->getType()->isPointerTy()) {
        CurArgInfo.Flags[0].setPointer();
        CurArgInfo.Flags[0].setPointerAddrSpace(
            cast<PointerType>(Val->getType())->getAddressSpace());
      }

      if (NeedsRegBlock) {
        CurArgInfo.Flags[0].setInConsecutiveRegs();
        if (i == NumValues - 1)
          CurArgInfo.Flags[0].setInConsecutiveRegsLast();
      }

      SplitArgs.push_back(CurArgInfo);
    }

    // Return values are always fixed, hence we do not pass the vararg assign
    // function
    OutgoingValueHandler Handler(MIRBuilder, MRI, Ret, AssignFn, AssignFn);
    Success = handleAssignments(MIRBuilder, SplitArgs, Handler);
  }

  MIRBuilder.insertInstr(Ret);
  return Success;
}

bool TriCoreCallLowering::lowerFormalArguments(
    MachineIRBuilder &MIRBuilder, const Function &F,
    ArrayRef<ArrayRef<Register>> VRegs) const {

  MachineFunction &MF = MIRBuilder.getMF();
  MachineBasicBlock &MBB = MIRBuilder.getMBB();
  MachineRegisterInfo &MRI = MF.getRegInfo();
  auto &DL = F.getParent()->getDataLayout();

  SmallVector<ArgInfo, 8> SplitArgs;
  unsigned i = 0;
  for (auto &Arg : F.args()) {
    if (DL.getTypeStoreSize(Arg.getType()) == 0)
      continue;

    ArgInfo OrigArg{VRegs[i], Arg.getType()};
    setArgFlags(OrigArg, i + AttributeList::FirstArgIndex, DL, F);

    if (Arg.getType()->isPointerTy()) {
      OrigArg.Flags[0].setPointer();
      OrigArg.Flags[0].setPointerAddrSpace(
          cast<PointerType>(Arg.getType())->getAddressSpace());
    }

    splitToValueTypes(OrigArg, SplitArgs, DL, MRI, F.getCallingConv());
    ++i;
  }

  if (!MBB.empty())
    MIRBuilder.setInstr(*MBB.begin());

  CCAssignFn *AssignFn = CC_TriCore;

  FormalArgHandler Handler(MIRBuilder, MRI, AssignFn);
  if (!handleAssignments(MIRBuilder, SplitArgs, Handler))
    return false;

  // Move back to the end of the basic block.
  MIRBuilder.setMBB(MBB);

  return true;
}

bool TriCoreCallLowering::lowerCall(MachineIRBuilder &MIRBuilder,
                                    CallLoweringInfo &Info) const {
  MachineFunction &MF = MIRBuilder.getMF();
  const Function &F = MF.getFunction();
  MachineRegisterInfo &MRI = MF.getRegInfo();
  auto &DL = F.getParent()->getDataLayout();

  if (Info.IsMustTailCall) {
    LLVM_DEBUG(dbgs() << "Cannot lower musttail calls yet.\n");
    return false;
  }

  SmallVector<ArgInfo, 8> SplitArgs;
  for (auto &OrigArg : Info.OrigArgs) {

    if (OrigArg.Ty->isPointerTy()) {
      OrigArg.Flags[0].setPointer();
      OrigArg.Flags[0].setPointerAddrSpace(
          cast<PointerType>(OrigArg.Ty)->getAddressSpace());
    }
    splitToValueTypes(OrigArg, SplitArgs, DL, MRI, Info.CallConv);
  }

  CCAssignFn *AssignFnFixed = CC_TriCore;
  CCAssignFn *AssignFnVarArg = CC_TriCore_VarArg;

  // Create the ADJCALLSTACKDOWN before the actual CALL* instruction. We will
  // add the required stack size to it after we have processed the arguments.
  MachineInstrBuilder CallSeqStart;
  CallSeqStart = MIRBuilder.buildInstr(TriCore::ADJCALLSTACKDOWN);

  // Create a temporarily-floating call instruction so we can add the implicit
  // uses of arg registers.
  auto MIB = MIRBuilder.buildInstrNoInsert(Info.Callee.isReg() ? TriCore::CALLI
                                                               : TriCore::CALL);
  MIB.add(Info.Callee);

  // Tell the call which registers are clobbered.
  auto TRI = MF.getSubtarget<TriCoreSubtarget>().getRegisterInfo();
  const uint32_t *Mask = TRI->getCallPreservedMask(MF, F.getCallingConv());
  MIB.addRegMask(Mask);

  // Do the actual argument marshalling.
  SmallVector<unsigned, 8> PhysRegs;
  OutgoingValueHandler Handler(MIRBuilder, MRI, MIB, AssignFnFixed,
                               AssignFnVarArg);
  if (!handleAssignments(MIRBuilder, SplitArgs, Handler))
    return false;

  // Now we can add the actual call instruction to the correct basic block.
  MIRBuilder.insertInstr(MIB);

  // If Callee is a reg, since it is used by a target specific
  // instruction, it must have a register class matching the
  // constraint of that instruction.
  if (Info.Callee.isReg())
    MIB->getOperand(0).setReg(constrainOperandRegClass(
        MF, *TRI, MRI, *MF.getSubtarget().getInstrInfo(),
        *MF.getSubtarget().getRegBankInfo(), *MIB, MIB->getDesc(), Info.Callee,
        0));

  // Finally we can copy the returned value back into its virtual-register. In
  // symmetry with the arguments, the physical register must be an
  // implicit-define of the call instruction.
  CCAssignFn *RetAssignFn = RetCC_TriCore;
  if (!Info.OrigRet.Ty->isVoidTy()) {
    SplitArgs.clear();

    if (Info.OrigRet.Ty->isPointerTy()) {
      Info.OrigRet.Flags[0].setPointer();
      Info.OrigRet.Flags[0].setPointerAddrSpace(
          cast<PointerType>(Info.OrigRet.Ty)->getAddressSpace());
    }

    splitToValueTypes(Info.OrigRet, SplitArgs, DL, MRI, F.getCallingConv());

    CallReturnHandler Handler(MIRBuilder, MRI, MIB, RetAssignFn);
    if (!handleAssignments(MIRBuilder, SplitArgs, Handler))
      return false;
  }

  // Now that we figured out the required stack size, add it as the first
  // operand to the ADJCALLSTACKDOWN. The second operand is only needed for tail
  // calls.
  CallSeqStart.addImm(Handler.StackSize).addImm(0);

  // Adjust the stack back up by the same amount we decreased it previously.
  MIRBuilder.buildInstr(TriCore::ADJCALLSTACKUP)
      .addImm(Handler.StackSize)
      .addImm(0);

  return true;
}
