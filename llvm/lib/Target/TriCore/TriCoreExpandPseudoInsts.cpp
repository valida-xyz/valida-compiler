//===- TriCoreExpandPseudoInsts.cpp - Expand pseudo instructions ----------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains a pass that expands pseudo instructions into target
// instructions to allow proper scheduling and other late optimizations.  This
// pass should be run after register allocation but before the post-regalloc
// scheduling pass.
//
//===----------------------------------------------------------------------===//

#include "TriCore.h"
#include "TriCoreInstrInfo.h"
#include "llvm/ADT/DenseMap.h"
#include "llvm/ADT/Triple.h"
#include "llvm/CodeGen/LivePhysRegs.h"
#include "llvm/CodeGen/MachineBasicBlock.h"
#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineOperand.h"
#include "llvm/CodeGen/TargetSubtargetInfo.h"
#include "llvm/IR/DebugLoc.h"
#include "llvm/MC/MCInstrDesc.h"
#include "llvm/Pass.h"
#include "llvm/Support/CodeGen.h"
#include "llvm/Support/MathExtras.h"
#include "llvm/Target/TargetMachine.h"
#include <cassert>
#include <cstdint>
#include <iterator>
#include <limits>
#include <utility>

using namespace llvm;

#define TRICORE_EXPAND_PSEUDO_NAME "TriCore pseudo instruction expansion pass"

#define DEBUG_TYPE "tricore-expand-pseudo"

namespace {

class TriCoreExpandPseudo : public MachineFunctionPass {
public:
  const TriCoreInstrInfo *TII;

  static char ID;

  TriCoreExpandPseudo() : MachineFunctionPass(ID) {
    initializeTriCoreExpandPseudoPass(*PassRegistry::getPassRegistry());
  }

  bool runOnMachineFunction(MachineFunction &Fn) override;

  StringRef getPassName() const override { return TRICORE_EXPAND_PSEUDO_NAME; }

private:
  bool expandMBB(MachineBasicBlock &MBB);
  bool expandMI(MachineBasicBlock &MBB, MachineBasicBlock::iterator MBBI,
                MachineBasicBlock::iterator &NextMBBI);
  bool expandMOVImmDataReg(MachineBasicBlock &MBB,
                           MachineBasicBlock::iterator MBBI);
  bool expandMOVImmExtDataReg(MachineBasicBlock &MBB,
                              MachineBasicBlock::iterator MBBI);
  bool expandMOVImmAddrReg(MachineBasicBlock &MBB,
                           MachineBasicBlock::iterator MBBI);
  void expandImmDataReg(MachineBasicBlock &MBB,
                        MachineBasicBlock::iterator MBBI, int32_t Imm,
                        Register DstReg);
  void expandImmAddrReg(MachineBasicBlock &MBB,
                        MachineBasicBlock::iterator MBBI);
};

} // end anonymous namespace

char TriCoreExpandPseudo::ID = 0;

INITIALIZE_PASS(TriCoreExpandPseudo, DEBUG_TYPE, TRICORE_EXPAND_PSEUDO_NAME,
                false, false)

// Helper function to materialize a 32-bit constant into a data register
void TriCoreExpandPseudo::expandImmDataReg(MachineBasicBlock &MBB,
                                           MachineBasicBlock::iterator MBBI,
                                           int32_t Imm, Register DstReg) {
  MachineInstr &MI = *MBBI;
  bool DstIsDead = MI.getOperand(0).isDead();

  if (isInt<16>(Imm)) {
    // Can use single mov
    LLVM_DEBUG(
        dbgs() << Imm
               << ": fits into immediate operand of MOV_dc, select it\n");
    BuildMI(MBB, MBBI, MI.getDebugLoc(), TII->get(TriCore::MOV_dc))
        .addDef(DstReg, getDeadRegState(DstIsDead))
        .addImm(Imm);
    return;
  }

  if (isUInt<16>(Imm)) {
    // Can use single mov.u
    LLVM_DEBUG(
        dbgs() << Imm
               << ": fits into immediate operand of MOVU_dc, select it\n");
    BuildMI(MBB, MBBI, MI.getDebugLoc(), TII->get(TriCore::MOVU_dc))
        .addDef(DstReg, getDeadRegState(DstIsDead))
        .addImm(Imm);
    return;
  }

  const uint16_t Lower16 = Imm & 0xffff;
  const uint16_t Upper16 = (Imm >> 16) & 0xffff;

  if (!Lower16) {
    LLVM_DEBUG(dbgs() << Imm << ": lower bits are all 0's, select MOVH_dc\n");
    BuildMI(MBB, MBBI, MI.getDebugLoc(), TII->get(TriCore::MOVH_dc))
        .addDef(DstReg, getDeadRegState(DstIsDead))
        .addImm(Upper16);
    return;
  }

  uint32_t UImm = (uint32_t)Imm;
  uint32_t TrailingZeros = countTrailingZeros(UImm);
  uint32_t LeadingZeros = countLeadingZeros(UImm);

  LLVM_DEBUG(llvm::dbgs() << "Immediate: " << Imm << " (0x" << utohexstr(UImm)
                          << ") Trailing Zeros: " << TrailingZeros
                          << " Leading Zeros: " << LeadingZeros << "\n");

  // Check if we have enough space to shift the constant into
  if (LeadingZeros + TrailingZeros >= 16) {

    assert(LeadingZeros < 16 && "The leading 16 bits are all zero, this should "
                                "be handled somewhere else!");
    assert(TrailingZeros < 16 && "The lower 16 bits are all zero, this should "
                                 "be handled somewhere else!");

    if (LeadingZeros <= TrailingZeros) {

      // We prefer to right-shift. We can use the 16-bit instruction
      // for up to 8 bit right shifts but only for up  to 7 bit left shifts

      // Also, we pre-shift the immediate left only by the minumum number of
      // bits required (16 - TrailingZeros) to enable the compression of the
      // shift instruction
      uint16_t HighBits = ((UImm << (16 - TrailingZeros)) >> 16) & 0xffff;
      BuildMI(MBB, MBBI, MI.getDebugLoc(), TII->get(TriCore::MOVH_dc))
          .addDef(DstReg)
          .addImm(HighBits);

      int32_t ShiftAmount = -(16 - TrailingZeros);
      BuildMI(MBB, MBBI, MI.getDebugLoc(), TII->get(TriCore::SH_ddc))
          .addDef(DstReg, getDeadRegState(DstIsDead))
          .addReg(DstReg)
          .addImm(ShiftAmount);

      LLVM_DEBUG(dbgs() << Imm << ": can use shift optimization: Use MOVH_dc "
                        << utohexstr(HighBits) << ", shift right by "
                        << ShiftAmount << "\n");
      return;

    } else {

      // We have more leading zeros than trailing zeros, thus we want to left
      // shift to enable the compression of the shift instruction.

      // Again, pre-shift right by the minimum number of bits required
      uint16_t LowBits = (UImm >> (16 - LeadingZeros)) & 0xffff;
      BuildMI(MBB, MBBI, MI.getDebugLoc(), TII->get(TriCore::MOVU_dc))
          .addDef(DstReg)
          .addImm(LowBits);

      int32_t ShiftAmount = (16 - LeadingZeros);
      BuildMI(MBB, MBBI, MI.getDebugLoc(), TII->get(TriCore::SH_ddc))
          .addDef(DstReg, getDeadRegState(DstIsDead))
          .addReg(DstReg)
          .addImm(ShiftAmount);

      LLVM_DEBUG(dbgs() << Imm << ": can use shift optimization: Use MOVU_dc "
                        << utohexstr(LowBits) << ", shift left by "
                        << ShiftAmount << "\n");
      return;
    }
  }

  // Check if we have an immediate with all 1's and zeros in the MSBs
  // If so, the logical right-shift will get rid of the unneeded 1's in the
  // upper bits we have from moving -1
  if (LeadingZeros && !TrailingZeros) {
    uint32_t PopCnt = countPopulation<uint32_t>(UImm);
    if (32 - PopCnt == LeadingZeros) {

      BuildMI(MBB, MBBI, MI.getDebugLoc(), TII->get(TriCore::MOV_dc))
          .addDef(DstReg)
          .addImm(-1);

      int32_t ShiftAmount = -(LeadingZeros);
      BuildMI(MBB, MBBI, MI.getDebugLoc(), TII->get(TriCore::SH_ddc))
          .addDef(DstReg, getDeadRegState(DstIsDead))
          .addReg(DstReg)
          .addImm(ShiftAmount);

      LLVM_DEBUG(dbgs() << Imm
                        << ": can use shift optimization: upper bits are 0, "
                           "all others are 1. Use MOV_dc -1 and right shift\n");
      return;
    }
  }

  // As a last resort, use 2 32-bit instructions
  LLVM_DEBUG(
      dbgs() << "MOVImmDataReg " << Imm
             << " could not be optimized, fall back to default handling\n");
  BuildMI(MBB, MBBI, MI.getDebugLoc(), TII->get(TriCore::MOVU_dc))
      .addDef(DstReg)
      .addImm(Lower16);

  BuildMI(MBB, MBBI, MI.getDebugLoc(), TII->get(TriCore::ADDIH_ddc))
      .addDef(DstReg, getDeadRegState(DstIsDead))
      .addReg(DstReg)
      .addImm(Upper16);
}

/// Expand a MOVImmDataReg pseudo instruction to one or more real TriCore
/// instructions to materialize the 32-bit immediate into a data register.
bool TriCoreExpandPseudo::expandMOVImmDataReg(
    MachineBasicBlock &MBB, MachineBasicBlock::iterator MBBI) {
  MachineInstr &MI = *MBBI;
  Register DstReg = MI.getOperand(0).getReg();
  int32_t Imm = MI.getOperand(1).getImm();

  LLVM_DEBUG(dbgs() << "Expanding MOVImmDataReg " << Imm << "(0x"
                    << utohexstr(Imm) << ")\n");

  expandImmDataReg(MBB, MBBI, Imm, DstReg);

  MI.eraseFromParent();
  return true;
}

/// Expand a MOVImmExtDataReg pseudo instruction to one or more real TriCore
/// instructions to materialize the 64-bit immediate into an extended data
/// register.
bool TriCoreExpandPseudo::expandMOVImmExtDataReg(
    MachineBasicBlock &MBB, MachineBasicBlock::iterator MBBI) {
  MachineInstr &MI = *MBBI;
  bool DstIsDead = MI.getOperand(0).isDead();
  Register DstReg = MI.getOperand(0).getReg();
  int64_t Imm = MI.getOperand(1).getImm();

  LLVM_DEBUG(dbgs() << "Expanding MOVImmExtDataReg " << Imm << "(0x"
                    << utohexstr(Imm) << ")\n");

  if (isInt<16>(Imm)) {
    // Can use single mov
    LLVM_DEBUG(dbgs() << "MOVImmExtDataReg " << Imm
                      << " fits into immediate operand of MOV_ec, select it\n");
    BuildMI(MBB, MBBI, MI.getDebugLoc(), TII->get(TriCore::MOV_ec))
        .addDef(DstReg, getDeadRegState(DstIsDead))
        .addImm(Imm);
  } else {

    LLVM_DEBUG(dbgs() << "MOVImmExtDataReg " << Imm
                      << " needs to be split into two 32-bit loads\n");
    auto TRI = MBB.getParent()->getSubtarget().getRegisterInfo();
    Register LowerReg = TRI->getSubReg(DstReg, TriCore::dsub0);
    int32_t LowerBits = Imm & 0xffffffff;
    Register UpperReg = TRI->getSubReg(DstReg, TriCore::dsub1);
    int32_t UpperBits = (Imm >> 32) & 0xffffffff;

    LLVM_DEBUG(dbgs() << "MOVImmDataReg " << utohexstr(LowerBits)
                      << ": materialize lower bits\n");
    expandImmDataReg(MBB, MBBI, LowerBits, LowerReg);
    LLVM_DEBUG(dbgs() << "MOVImmDataReg " << utohexstr(UpperBits)
                      << ": materialize upper bits\n");
    expandImmDataReg(MBB, MBBI, UpperBits, UpperReg);
  }

  MI.eraseFromParent();
  return true;
}

// Helper function to materialize a 32-bit constant into an address register
void TriCoreExpandPseudo::expandImmAddrReg(MachineBasicBlock &MBB,
                                           MachineBasicBlock::iterator MBBI) {

  MachineInstr &MI = *MBBI;
  bool DstIsDead = MI.getOperand(0).isDead();
  const Register DstReg = MI.getOperand(0).getReg();
  const int32_t Imm = MI.getOperand(1).getImm();

  LLVM_DEBUG(dbgs() << "Expanding MOVImmAddrReg " << Imm << "(0x"
                    << utohexstr(Imm) << ")\n");

  // Calculation taken from chapter 2.7 Address Arithmetic
  const int16_t Lower16 = Imm & 0xFFFFu;
  const uint16_t Upper16 = ((Imm + 0x8000u) >> 16u) & 0xFFFFu;

  auto fitsInABSLea = [](uint32_t Val) { return (Val & 0xf0003fff) == Val; };

  if (fitsInABSLea(Imm)) {

    LLVM_DEBUG(dbgs() << "MOVImmAddrReg " << Imm
                      << " fits into immediate operand of LEA_ac, select it\n");

    BuildMI(MBB, MBBI, MI.getDebugLoc(), TII->get(TriCore::LEA_ac))
        .addDef(DstReg, getDeadRegState(DstIsDead))
        .addImm(Imm);

    return;
  }

  LLVM_DEBUG(
      dbgs() << "MOVImmAddrReg " << Imm
             << " could not be optimized, fall back to default handling\n");
  // As a last resort, use 2 32-bit instructions
  BuildMI(MBB, MBBI, MI.getDebugLoc(), TII->get(TriCore::MOVHA_ac))
      .addDef(DstReg)
      .addImm(Upper16);

  BuildMI(MBB, MBBI, MI.getDebugLoc(), TII->get(TriCore::LEA_aac))
      .addDef(DstReg, getDeadRegState(DstIsDead))
      .addReg(DstReg)
      .addImm(Lower16);
}

/// Expand a MOVImmAddrReg pseudo instruction to one or more real TriCore
/// instructions to materialize the 32-bit immediate into an address register.
bool TriCoreExpandPseudo::expandMOVImmAddrReg(
    MachineBasicBlock &MBB, MachineBasicBlock::iterator MBBI) {

  MachineInstr &MI = *MBBI;

  expandImmAddrReg(MBB, MBBI);

  MI.eraseFromParent();
  return true;
}

/// If MBBI references a pseudo instruction that should be expanded here,
/// do the expansion and return true.  Otherwise return false.
bool TriCoreExpandPseudo::expandMI(MachineBasicBlock &MBB,
                                   MachineBasicBlock::iterator MBBI,
                                   MachineBasicBlock::iterator &NextMBBI) {
  MachineInstr &MI = *MBBI;
  unsigned Opcode = MI.getOpcode();

  switch (Opcode) {
  default:
    break;
  case TriCore::MOVImmDataReg:
    return expandMOVImmDataReg(MBB, MBBI);
  case TriCore::MOVImmExtDataReg:
    return expandMOVImmExtDataReg(MBB, MBBI);
  case TriCore::MOVImmAddrReg:
    return expandMOVImmAddrReg(MBB, MBBI);
  }
  return false;
}

/// Iterate over the instructions in basic block MBB and expand any
/// pseudo instructions.  Return true if anything was modified.
bool TriCoreExpandPseudo::expandMBB(MachineBasicBlock &MBB) {
  bool Modified = false;

  MachineBasicBlock::iterator MBBI = MBB.begin(), E = MBB.end();
  while (MBBI != E) {
    MachineBasicBlock::iterator NMBBI = std::next(MBBI);
    Modified |= expandMI(MBB, MBBI, NMBBI);
    MBBI = NMBBI;
  }

  return Modified;
}

bool TriCoreExpandPseudo::runOnMachineFunction(MachineFunction &MF) {
  TII = static_cast<const TriCoreInstrInfo *>(MF.getSubtarget().getInstrInfo());

  LLVM_DEBUG(dbgs() << "Machine Function\n"
                    << "********** EXPANDING TRICORE PSEUDO INSTRS **********\n"
                    << "********** Function: " << MF.getName() << '\n');

  bool Modified = false;
  for (auto &MBB : MF)
    Modified |= expandMBB(MBB);
  return Modified;
}

/// Returns an instance of the pseudo instruction expansion pass.
FunctionPass *llvm::createTriCoreExpandPseudoPass() {
  return new TriCoreExpandPseudo();
}
