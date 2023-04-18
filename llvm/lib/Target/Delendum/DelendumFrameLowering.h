//===-- DelendumFrameLowering.h - Define frame lowering for Delendum ----*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_DELENDUM_DELENDUMFRAMELOWERING_H
#define LLVM_LIB_TARGET_DELENDUM_DELENDUMFRAMELOWERING_H

#include "Delendum.h"
#include "llvm/CodeGen/TargetFrameLowering.h"

namespace llvm {

class DelendumSubtarget;
class DelendumFrameLowering : public TargetFrameLowering {

public:
  explicit DelendumFrameLowering(const DelendumSubtarget &ST);

  /// Insert prolog code into the function.
  void emitPrologue(MachineFunction &MF, MachineBasicBlock &MBB) const override;

  /// Insert epilog code into the function.
  void emitEpilogue(MachineFunction &MF, MachineBasicBlock &MBB) const override;

  // Return true if the specified function should have a dedicated frame
  // pointer register
  bool hasFP(const MachineFunction &MF) const override {
    return true;
  }
};

} // End llvm namespace

#endif
