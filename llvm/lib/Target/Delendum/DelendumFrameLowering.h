//===-- DelendumFrameLowering.h - Define frame lowering for Delendum ----*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
//
//
//===----------------------------------------------------------------------===//
#ifndef DELENDUM_FRAMEINFO_H
#define DELENDUM_FRAMEINFO_H

#include "Delendum.h"
#include "DelendumSubtarget.h"
#include "llvm/CodeGen/TargetFrameLowering.h"

namespace llvm {
  class DelendumSubtarget;

class DelendumFrameLowering : public TargetFrameLowering {
protected:
  const DelendumSubtarget &STI;

public:
  explicit DelendumFrameLowering(const DelendumSubtarget &sti);

  /// Insert prolog code into the function.
  void emitPrologue(MachineFunction &MF) const;

  /// Insert epilog code into the function.
  void emitEpilogue(MachineFunction &MF, MachineBasicBlock &MBB) const;

  /// Return true if the specified function should have a dedicated frame
  /// pointer register
  bool hasFP(const MachineFunction &MF) const;

  MachineBasicBlock::iterator
  eliminateCallFramePseudoInstr(MachineFunction &MF, MachineBasicBlock &MBB,
                                MachineBasicBlock::iterator MI) const override;

  bool spillCalleeSavedRegisters(MachineBasicBlock &MBB,
                                 MachineBasicBlock::iterator MI,
                                 const std::vector<CalleeSavedInfo> &CSI,
                                 const TargetRegisterInfo *TRI) const;

  void processFunctionBeforeCalleeSavedScan(MachineFunction &MF,
                                            RegScavenger *RS) const;
};

} // End llvm namespace

#endif

