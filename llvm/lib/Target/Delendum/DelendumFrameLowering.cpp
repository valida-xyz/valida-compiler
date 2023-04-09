//===-- DelendumFrameLowering.cpp - Delendum Frame Information --------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file contains the Delendum implementation of TargetFrameLowering class.
//
//===----------------------------------------------------------------------===//

#include "DelendumFrameLowering.h"
#include "DelendumInstrInfo.h"
#include "DelendumSubtarget.h"
#include "llvm/IR/Function.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineModuleInfo.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/IR/DataLayout.h"
#include "llvm/Target/TargetOptions.h"
#include "llvm/Support/CommandLine.h"

using namespace llvm;

DelendumFrameLowering::DelendumFrameLowering(const DelendumSubtarget &ST)
    : TargetFrameLowering(TargetFrameLowering::StackGrowsDown,
                          Align(4), 0,
                          Align(4)) {}

void DelendumFrameLowering::emitPrologue(MachineFunction &MF,
                                         MachineBasicBlock &MBB) const {}

void DelendumFrameLowering::emitEpilogue(MachineFunction &MF,
                                         MachineBasicBlock &MBB) const {}

bool DelendumFrameLowering::
spillCalleeSavedRegisters(MachineBasicBlock &MBB,
                          MachineBasicBlock::iterator MI,
                          const std::vector<CalleeSavedInfo> &CSI,
                          const TargetRegisterInfo *TRI) const {}

MachineBasicBlock::iterator
DelendumFrameLowering::eliminateCallFramePseudoInstr(MachineFunction &MF,
                                                     MachineBasicBlock &MBB,
                                                     MachineBasicBlock::iterator MI) const {}

void DelendumFrameLowering::
DelendumFrameLowering::processFunctionBeforeCalleeSavedScan(MachineFunction &MF,
                                                            RegScavenger *RS) const {}

