//===-- DelendumISelLowering.cpp - Delendum DAG Lowering Implementation ---------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements the interfaces that Delendum uses to lower LLVM code into a
// selection DAG.
//
//===----------------------------------------------------------------------===//

#include "DelendumCallingConv.h"
#include "DelendumISelLowering.h"
#include "DelendumRegisterInfo.h"
#include "DelendumTargetMachine.h"
#include "DelendumTargetObjectFile.h"
#include "llvm/ADT/StringExtras.h"
#include "llvm/ADT/StringSwitch.h"
#include "llvm/CodeGen/CallingConvLower.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/SelectionDAG.h"
#include "llvm/CodeGen/SelectionDAGNodes.h"
#include "llvm/CodeGen/TargetLoweringObjectFileImpl.h"
#include "llvm/IR/DerivedTypes.h"
#include "llvm/IR/Function.h"
#include "llvm/IR/Module.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Support/KnownBits.h"
using namespace llvm;

#include "DelendumGenCallingConv.inc"

DelendumTargetLowering::DelendumTargetLowering(const TargetMachine &TM,
                                               const DelendumSubtarget &STI)
    : TargetLowering(TM), Subtarget(&STI) { }


SDValue DelendumTargetLowering::LowerOperation(SDValue Op,
                                               SelectionDAG &DAG) const {
}

bool DelendumTargetLowering::useSoftFloat() const {
}

/// computeKnownBitsForTargetNode - Determine which of the bits specified
/// in Mask are known to be either zero or one and return them in the
/// KnownZero/KnownOne bitsets.
void DelendumTargetLowering::computeKnownBitsForTargetNode(const SDValue Op,
                                                           KnownBits &Known,
                                                           const APInt &DemandedElts,
                                                           const SelectionDAG &DAG,
                                                           unsigned Depth) const {
}

MachineBasicBlock *
DelendumTargetLowering::EmitInstrWithCustomInserter(MachineInstr &MI,
                                                    MachineBasicBlock *MBB) const {
}

const char *DelendumTargetLowering::getTargetNodeName(unsigned Opcode) const {}

DelendumTargetLowering::ConstraintType
DelendumTargetLowering::getConstraintType(StringRef Constraint) const {}

DelendumTargetLowering::ConstraintWeight
DelendumTargetLowering::getSingleConstraintMatchWeight(AsmOperandInfo &info,
                               const char *constraint) const {}
void DelendumTargetLowering::LowerAsmOperandForConstraint(SDValue Op,
                                  std::string &Constraint,
                                  std::vector<SDValue> &Ops,
                                  SelectionDAG &DAG) const {}

std::pair<unsigned, const TargetRegisterClass *>
DelendumTargetLowering::getRegForInlineAsmConstraint(const TargetRegisterInfo *TRI,
                                                     StringRef Constraint, MVT VT) const {
};

bool DelendumTargetLowering::isOffsetFoldingLegal(const GlobalAddressSDNode *GA) const {
};

Register
DelendumTargetLowering::getRegisterByName(const char* RegName, LLT VT,
                                         const MachineFunction &MF) const {};

unsigned DelendumTargetLowering::getNumRegistersForCallingConv(
    LLVMContext &Context, CallingConv::ID CC, EVT VT) const {
  return 1;
  // FIXME: Why is getNumRegisters not returning the correct number of virtual regs?
  //return getNumRegisters(Context, VT);
}

MVT DelendumTargetLowering::getRegisterTypeForCallingConv(LLVMContext &Context,
                                                          CallingConv::ID CC,
                                                          EVT VT) const {
  return MVT::i32;
  // FIXME: Why is getRegisterType not returning the correct type?
  //return getRegisterType(Context, VT);
}

/// Override to support customized stack guard loading.
bool DelendumTargetLowering::useLoadStackGuardNode() const {};
void DelendumTargetLowering::insertSSPDeclarations(Module &M) const {};

/// getSetCCResultType - Return the ISD::SETCC ValueType
EVT 
DelendumTargetLowering::getSetCCResultType(const DataLayout &DL,
                                           LLVMContext &Context,
                                           EVT VT) const {};

SDValue
DelendumTargetLowering::LowerFormalArguments(SDValue Chain,
                                             CallingConv::ID CallConv,
                                             bool isVarArg,
                                             const SmallVectorImpl<ISD::InputArg> &Ins,
                                             const SDLoc &dl, SelectionDAG &DAG,
                                             SmallVectorImpl<SDValue> &InVals) const {
  // Assign locations to all of the incoming arguments.
  SmallVector<CCValAssign, 16> ArgLocs;
  CCState CCInfo(CallConv, isVarArg, DAG.getMachineFunction(), ArgLocs,
                 *DAG.getContext());
  CCInfo.AnalyzeFormalArguments(Ins, Delendum_CCallingConv);

  SDValue ArgValue;
  for (unsigned i = 0, e = ArgLocs.size(); i != e; ++i) {
    InVals.push_back(ArgValue);
  }

  return Chain;
};

SDValue
DelendumTargetLowering::LowerCall(TargetLowering::CallLoweringInfo &CLI,
                                  SmallVectorImpl<SDValue> &InVals) const {};

bool DelendumTargetLowering::CanLowerReturn(CallingConv::ID CallConv,
                                            MachineFunction &MF,
                                            bool isVarArg,
                                            const SmallVectorImpl<ISD::OutputArg> &Outs,
                                            LLVMContext &Context) const {
  SmallVector<CCValAssign, 16> RVLocs;
  CCState CCInfo(CallConv, isVarArg, MF, RVLocs, Context);
  return CCInfo.CheckReturn(Outs, Delendum_CRetConv);
};

SDValue
DelendumTargetLowering::LowerReturn(SDValue Chain, 
                                    CallingConv::ID CallConv, bool isVarArg,
                                    const SmallVectorImpl<ISD::OutputArg> &Outs,
                                    const SmallVectorImpl<SDValue> &OutVals,
                                    const SDLoc &dl, SelectionDAG &DAG) const {
  return Chain;
};

SDValue
DelendumTargetLowering::PerformDAGCombine(SDNode *N,
                                          DAGCombinerInfo &DCI) const {
};

DelendumTargetLowering::AtomicExpansionKind
DelendumTargetLowering::shouldExpandAtomicRMWInIR(AtomicRMWInst *AI) const {};

void DelendumTargetLowering::ReplaceNodeResults(SDNode *N,
                                                SmallVectorImpl<SDValue>& Results,
                                                SelectionDAG &DAG) const {};

