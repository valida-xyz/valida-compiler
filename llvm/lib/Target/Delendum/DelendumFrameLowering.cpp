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
                          Align(8), 0,
                          Align(8)) {}

bool DelendumFrameLowering::hasFP(const MachineFunction &MF) const {
  // TODO
}

// Build an instruction sequence to load an immediate that is too large to fit
// in 16-bit and add the result to Reg.
static void expandLargeImm(unsigned Reg, int64_t Imm, 
                           const DelendumInstrInfo &TII, MachineBasicBlock& MBB,
                           MachineBasicBlock::iterator II, DebugLoc DL) {
  // TODO
}

void DelendumFrameLowering::emitPrologue(MachineFunction &MF,
                                         MachineBasicBlock &MBB) const {
  // TODO
}

void DelendumFrameLowering::emitEpilogue(MachineFunction &MF,
                                         MachineBasicBlock &MBB) const {
  // TODO
}

bool DelendumFrameLowering::
spillCalleeSavedRegisters(MachineBasicBlock &MBB,
                          MachineBasicBlock::iterator MI,
                          const std::vector<CalleeSavedInfo> &CSI,
                          const TargetRegisterInfo *TRI) const {
  // TODO
}

// This function eliminate ADJCALLSTACKDOWN,
// ADJCALLSTACKUP pseudo instructions
MachineBasicBlock::iterator
DelendumFrameLowering::eliminateCallFramePseudoInstr(MachineFunction &MF,
                                                     MachineBasicBlock &MBB,
                                                     MachineBasicBlock::iterator MI) const {
  // TODO
}

// This method is called immediately before PrologEpilogInserter scans the 
//  physical registers used to determine what callee saved registers should be 
//  spilled. This method is optional. 
void DelendumFrameLowering::
DelendumFrameLowering::processFunctionBeforeCalleeSavedScan(MachineFunction &MF,
                                                            RegScavenger *RS) const {
  // TODO
}

