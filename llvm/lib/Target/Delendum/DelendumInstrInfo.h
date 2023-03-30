//===-- DelendumInstrInfo.h - Delendum Instruction Information ----------*- C++ -*-===//
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

#ifndef LLVM_LIB_TARGET_DELENDUM_DELENDUMINSTRINFO_H
#define LLVM_LIB_TARGET_DELENDUM_DELENDUMINSTRINFO_H

#include "Delendum.h"
#include "DelendumRegisterInfo.h"
#include "llvm/CodeGen/TargetInstrInfo.h"
#include "llvm/Support/ErrorHandling.h"

#define GET_INSTRINFO_HEADER
#include "DelendumGenInstrInfo.inc"

namespace llvm {

class DelendumInstrInfo : public DelendumGenInstrInfo {
  const DelendumRegisterInfo RI;
  const DelendumSubtarget& Subtarget;
  virtual void anchor();

public:
  explicit DelendumInstrInfo(DelendumSubtarget &ST);

  /// getRegisterInfo - TargetInstrInfo is a superset of MRegister info.  As
  /// such, whenever a client has an instance of instruction info, it should
  /// always be able to get register info as well (through this method).
  const DelendumRegisterInfo &getRegisterInfo() const { return RI; }
  
  /// isLoadFromStackSlot - If the specified machine instruction is a direct
  /// load from a stack slot, return the virtual or physical register number of
  /// the destination along with the FrameIndex of the loaded stack slot.  If
  /// not, return 0.  This predicate must return 0 if the instruction has
  /// any side effects other than loading from the stack slot.
  unsigned isLoadFromStackSlot(const MachineInstr &MI,
                               int &FrameIndex) const override;

  /// isStoreToStackSlot - If the specified machine instruction is a direct
  /// store to a stack slot, return the virtual or physical register number of
  /// the source reg along with the FrameIndex of the loaded stack slot.  If
  /// not, return 0.  This predicate must return 0 if the instruction has
  /// any side effects other than storing to the stack slot.
  unsigned isStoreToStackSlot(const MachineInstr &MI,
                              int &FrameIndex) const override;

  virtual MachineInstr* emitFrameIndexDebugValue(MachineFunction &MF,
                                                 int FrameIx, uint64_t Offset,
                                                 const MDNode *MDPtr,
                                                 DebugLoc DL) const;
  
  /// Expand Pseudo instructions into real backend instructions
  virtual bool expandPostRAPseudo(MachineBasicBlock::iterator MI) const;

private:
  void ExpandRetLR(MachineBasicBlock &MBB, MachineBasicBlock::iterator I,
                   unsigned Opc) const;
};
}

#endif
