//=== lib/CodeGen/GlobalISel/DelendumDeadStackSlotEliminator.cpp ----------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "DelendumTargetMachine.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineFrameInfo.h"
#include "llvm/CodeGen/Passes.h"

#define DEBUG_TYPE "delendum-dead-stack-slot-eliminator"

using namespace llvm;

namespace {

class DelendumDeadStackSlotEliminator : public MachineFunctionPass {
public:
  static char ID;

  DelendumDeadStackSlotEliminator() : MachineFunctionPass(ID) {
    initializeDelendumDeadStackSlotEliminatorPass(*PassRegistry::getPassRegistry());
  }

  bool runOnMachineFunction(MachineFunction &MF) override;
};

} // end anonymous namespace

char DelendumDeadStackSlotEliminator::ID = 0;

bool DelendumDeadStackSlotEliminator::runOnMachineFunction(MachineFunction &MF) {
  // Record all live stack slots.
  std::map<int, int> Indices;
  for (const auto &MBB : MF) {
    for (const auto &MI : MBB) {
      for (const auto &MO : MI.operands()) {
        if (MO.isFI()) {
          int Idx = MO.getIndex();
          if (Idx >= 0) {
            Indices[Idx] = Idx;
          }
        }
      }
    }
  }

  // Mark all dead stack slots.
  MachineFrameInfo &MFI = MF.getFrameInfo();
  int NumLocalObjects = MFI.getNumObjects() - MFI.getNumFixedObjects();
  for (int I = 0; I < NumLocalObjects; ++I) {
    if (Indices.find(I) == Indices.end()) {
      MFI.RemoveStackObject(I);
    }
  }

  // Adjust the stack offsets of the other stack slots.
  // TODO: This should go into the prolog/epilog insertion pass.
  int Offset = -4;
  for (int I = 0; I < NumLocalObjects; ++I) {
    if (!MFI.isDeadObjectIndex(I)) {
      MFI.setObjectOffset(I, Offset);
      Offset -= MFI.getObjectSize(I);
    }
  }
  
    

  return false;
}

INITIALIZE_PASS(DelendumDeadStackSlotEliminator,
                "delendum-dead-stack-slot-eliminator",
                "Dead Stack Slot Eliminator", false, false)

FunctionPass *llvm::createDelendumDeadStackSlotEliminator() {
  return new DelendumDeadStackSlotEliminator();
}

