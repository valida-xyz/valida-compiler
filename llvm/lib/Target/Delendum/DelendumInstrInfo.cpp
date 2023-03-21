//===-- DelendumInstrInfo.cpp - Delendum Instruction Information ------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file contains the Delendum implementation of the TargetInstrInfo class.
//
//===----------------------------------------------------------------------===//

//#include "Delendum.h"
#include "DelendumInstrInfo.h"
#include "DelendumTargetMachine.h"
#include "MCTargetDesc/DelendumMCCodeEmitter.h"

#include "llvm/ADT/STLExtras.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineMemOperand.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/Support/ErrorHandling.h"

using namespace llvm;

namespace llvm {
namespace Delendum {
} // end namespace Delendum
} // end namespace llvm

#define DEBUG_TYPE "delendum-instr-info"

#define GET_INSTRINFO_CTOR_DTOR
#include "DelendumGenInstrInfo.inc"

DelendumInstrInfo::DelendumInstrInfo(DelendumTargetMachine &tm)
  : DelendumGenInstrInfo(DL::ADJCALLSTACKDOWN, DL::ADJCALLSTACKUP),
    TM(tm) {}

static MachineMemOperand* GetMemOperand(MachineBasicBlock &MBB, int FI,
                                        unsigned Flag) {
  // TODO
}

/// isLoadFromStackSlot - If the specified machine instruction is a direct
/// load from a stack slot, return the virtual or physical register number of
/// the destination along with the FrameIndex of the loaded stack slot.  If
/// not, return 0.  This predicate must return 0 if the instruction has
/// any side effects other than loading from the stack slot.
unsigned DelendumInstrInfo::isLoadFromStackSlot(const MachineInstr &MI,
                                                int &FrameIndex) const {
  // TODO
  if (MI.getOpcode() == DL::ADD || MI.getOpcode() == DL::SUB ||
      MI.getOpcode() == DL::MUL) {
    FrameIndex = MI.getOperand(1).getIndex();
    return MI.getOperand(0).getReg();
  }
  return 0;
}

/// isStoreToStackSlot - If the specified machine instruction is a direct
/// store to a stack slot, return the virtual or physical register number of
/// the source reg along with the FrameIndex of the loaded stack slot.  If
/// not, return 0.  This predicate must return 0 if the instruction has
/// any side effects other than storing to the stack slot.
unsigned DelendumInstrInfo::isStoreToStackSlot(const MachineInstr &MI,
                                               int &FrameIndex) const {
  // TODO
  if (MI.getOpcode() == DL::ADD || MI.getOpcode() == DL::SUB ||
      MI.getOpcode() == DL::MUL) {
    FrameIndex = MI.getOperand(0).getIndex();
    return MI.getOperand(2).getReg();
  }
  return 0;
}

MachineInstr*
DelendumInstrInfo::emitFrameIndexDebugValue(MachineFunction &MF, int FrameIx,
                                            uint64_t Offset, const MDNode *MDPtr,
                                            DebugLoc DL) const {
  // TODO
}

// DelendumInstrInfo::expandPostRAPseudo
/// Expand Pseudo instructions into real backend instructions
bool DelendumInstrInfo::expandPostRAPseudo(MachineBasicBlock::iterator MI) const {
  // TODO
}

void DelendumInstrInfo::ExpandRetLR(MachineBasicBlock &MBB,
                                    MachineBasicBlock::iterator I,
                                    unsigned Opc) const {
  // TODO
}


