//===- TriCoreJumpTablePass.cpp - Determine jump table placement ----------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains a pass which decides on the placement of all jump tables
// for this function. This pass should be run right before machine code is
// emitted.
//
//===----------------------------------------------------------------------===//

#include "TriCore.h"
#include "TriCoreInstrInfo.h"
#include "TriCoreSubtarget.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/CodeGen/MachineBasicBlock.h"
#include "llvm/CodeGen/MachineConstantPool.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/MachineJumpTableInfo.h"
#include "llvm/IR/DebugLoc.h"
#include "llvm/Pass.h"
#include "llvm/Support/Compiler.h"
#include "llvm/Support/Debug.h"
#include <vector>

using namespace llvm;

#define DEBUG_TYPE "tricore-jump-tables"

#define TRICORE_JUMP_TABLES_OPT_NAME "TriCore jump table placement pass"

STATISTIC(NumJTInserted, "Number of jump tables placed");
STATISTIC(NumJTUsers, "Number of branch-to-jump-table instructions seen");

namespace {

/// TriCoreJumpTables - Instead of using LLVM's default approach of using
/// constant pools for jump tables, for TriCore it is better to use inline jump
/// tables with trampolines. This is due to a significant performance penalty
/// that comes with accessing data in code sections, which is required for PIC.
class TriCoreJumpTables : public MachineFunctionPass {

  const TriCoreInstrInfo *TII{};

public:
  static char ID;

  TriCoreJumpTables() : MachineFunctionPass(ID) {}

  bool runOnMachineFunction(MachineFunction &MF) override;
};
} // namespace

char TriCoreJumpTables::ID = 0;

INITIALIZE_PASS(TriCoreJumpTables, DEBUG_TYPE, TRICORE_JUMP_TABLES_OPT_NAME,
                false, false)

bool TriCoreJumpTables::runOnMachineFunction(MachineFunction &MF) {
  // TODO: At the moment we always place the jump table below the last basic
  //  block that uses this jump table. We should try to optimize this placement
  TII = static_cast<const TriCoreInstrInfo *>(MF.getSubtarget().getInstrInfo());

  bool Modified = false;
  const auto *MJTI = MF.getJumpTableInfo();

  if (MJTI) {
    LLVM_DEBUG(dbgs() << "********** PLACING JUMP TABLES: " << MF.getName()
                      << " **********\n");

    const std::vector<MachineJumpTableEntry> &JT = MJTI->getJumpTables();
    llvm::SmallBitVector SeenJTIs(JT.size());

    // We have at least one jump table in this function. Iterate over the basic
    // blocks in reverse order and find the first user of a jump table. This
    // will become the insertion point for this jump table
    for (auto RMBBI = MF.rbegin(), RE = MF.rend(); RMBBI != RE; ++RMBBI) {
      MachineBasicBlock &MBB = *RMBBI;
      const auto &MI = MBB.getLastNonDebugInstr();

      // Continue with next block if there is no terminating instruction or if
      // the terminating instruction is not our branch to jump table pseudo.
      // JIJumpTable[TC16XPIC] is a barrier, therefore if it is present, it must
      // be the last instruction.
      if (MI == MBB.end() || (MI->getOpcode() != TriCore::JIJumpTable &&
                              MI->getOpcode() != TriCore::JIJumpTableTC16XPIC))
        continue;

      ++NumJTUsers;

      // Both instructions always have the JTI as the last two operands
      const unsigned NumOperands = MI->getNumOperands();
      const unsigned JTI = MI->getOperand(NumOperands - 1).getIndex();

      // Check if we have seen this jump table before
      if (SeenJTIs.test(JTI))
        continue;
      else
        SeenJTIs.set(JTI);

      LLVM_DEBUG(dbgs() << "Found user of jump table. JTI: " << JTI
                        << ", User: " << *MI);

      // Get the size of the jump table. Each jump table entry requires a single
      // 4-byte jump instruction
      const unsigned SizeInBytes = JT[JTI].MBBs.size() * 4;

      // Create the start block for the jump table and insert it after the
      // current basic block
      MachineBasicBlock *JumpTableBB = MF.CreateMachineBasicBlock();
      MF.insert(std::next(MachineFunction::iterator(MBB)), JumpTableBB);

      // Emit jump table placement marker
      BuildMI(*JumpTableBB, JumpTableBB->begin(), DebugLoc(),
              TII->get(TriCore::JUMPTABLE_INSTS))
          .addJumpTableIndex(JTI)
          .addImm(SizeInBytes);

      LLVM_DEBUG(dbgs() << "Emitting jump table placement marker after MBB '"
                        << MBB.getName() << "'\n");

      Modified = true;
      ++NumJTInserted;
    }

    LLVM_DEBUG(dbgs() << "Jump tables inserted: " << NumJTInserted
                      << "\nJump table users seen: " << NumJTUsers
                      << "Finished placing jump tables in " << MF.getName()
                      << '\n');
  }

  return Modified;
}

/// Returns an instance of the jump table placement pass.
FunctionPass *llvm::createTriCoreJumpTablePass() {
  return new TriCoreJumpTables();
}
