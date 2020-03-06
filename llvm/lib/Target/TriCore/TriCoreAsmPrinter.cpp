//===-- TriCoreAsmPrinter.cpp - TriCore LLVM assembly writer --------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains a printer that converts from our internal representation
// of machine-dependent LLVM code to the TriCore assembly language.
//
//===----------------------------------------------------------------------===//

#include "InstPrinter/TriCoreInstPrinter.h"
#include "MCTargetDesc/TriCoreMCExpr.h"
#include "TargetInfo/TriCoreTargetInfo.h"
#include "TriCoreMCInstLower.h"
#include "TriCoreTargetMachine.h"
#include "llvm/CodeGen/AsmPrinter.h"
#include "llvm/CodeGen/MachineConstantPool.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/MachineJumpTableInfo.h"
#include "llvm/CodeGen/MachineModuleInfo.h"
#include "llvm/MC/MCAsmInfo.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCInstBuilder.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/Support/TargetRegistry.h"

using namespace llvm;

#define DEBUG_TYPE "asm-printer"

namespace {
class TriCoreAsmPrinter : public AsmPrinter {
  TriCoreMCInstLower MCInstLowering;

public:
  explicit TriCoreAsmPrinter(TargetMachine &TM,
                             std::unique_ptr<MCStreamer> Streamer)
      : AsmPrinter(TM, std::move(Streamer)), MCInstLowering(OutContext, *this) {
  }

  StringRef getPassName() const override { return "TriCore Assembly Printer"; }

  void emitInstruction(const MachineInstr *MI) override;

private:
  void EmitJumpTableAddr(const MachineInstr *MI, MCSymbol *PICOffSymbol);
  void EmitJumpTableAddrTC16XPIC(const MachineInstr *MI);
  void EmitJumpTableInsts(const MachineInstr *MI);

  void LowerJIJumpTable(const MachineInstr *MI);
  void LowerJIJumpTableTC16XPIC(const MachineInstr *MI);
};
} // namespace

void TriCoreAsmPrinter::EmitJumpTableAddr(const MachineInstr *MI,
                                          MCSymbol *PICOffSymbol) {
  // Lower to MOVHA_ac + LEA_aac
  const MachineOperand DstOp = MI->getOperand(0);
  const MachineOperand JTIOpHi = MI->getOperand(2);
  const MachineOperand JTIOpLo = MI->getOperand(3);

  MCOperand DstMCOp, JTIHiMCOp, JTILoMCOp;
  MCInstLowering.LowerOperand(DstOp, DstMCOp);

  // Use a symbol difference if we have a PICOffSymbol
  if (PICOffSymbol) {
    const unsigned JTI = JTIOpHi.getIndex();
    const unsigned TargetFlagsHi = JTIOpHi.getTargetFlags();
    const unsigned TargetFlagsLo = JTIOpLo.getTargetFlags();

    // Create symbol difference expression
    const MCSymbolRefExpr *PICOffSymRef =
        MCSymbolRefExpr::create(PICOffSymbol, OutContext);
    const MCSymbolRefExpr *JTISymRef =
        MCSymbolRefExpr::create(GetJTISymbol(JTI), OutContext);

    const MCExpr *Diff =
        MCBinaryExpr::createSub(JTISymRef, PICOffSymRef, OutContext);

    // Lower target flags and create expressions
    const unsigned RefFlagsHi = MCInstLowering.LowerTargetFlags(TargetFlagsHi);
    const unsigned RefFlagsLo = MCInstLowering.LowerTargetFlags(TargetFlagsLo);

    assert(RefFlagsHi != TriCoreMCExpr::VK_TRICORE_None &&
           "Expected valid target flags for JTI high operand");
    assert(RefFlagsLo != TriCoreMCExpr::VK_TRICORE_None &&
           "Expected valid target flags for JTI low operand");

    auto RefKindHi = static_cast<TriCoreMCExpr::VariantKind>(RefFlagsHi);
    auto RefKindLo = static_cast<TriCoreMCExpr::VariantKind>(RefFlagsLo);

    const MCExpr *DiffHi = TriCoreMCExpr::create(Diff, RefKindHi, OutContext);
    const MCExpr *DiffLo = TriCoreMCExpr::create(Diff, RefKindLo, OutContext);

    // Finally, set the MCOperands
    JTIHiMCOp = MCOperand::createExpr(DiffHi);
    JTILoMCOp = MCOperand::createExpr(DiffLo);

  } else {
    MCInstLowering.LowerOperand(JTIOpHi, JTIHiMCOp);
    MCInstLowering.LowerOperand(JTIOpLo, JTILoMCOp);
  }

  EmitToStreamer(*OutStreamer, MCInstBuilder(TriCore::MOVHA_ac)
                                   .addOperand(DstMCOp)
                                   .addOperand(JTIHiMCOp));

  EmitToStreamer(*OutStreamer, MCInstBuilder(TriCore::LEA_aac)
                                   .addOperand(DstMCOp)
                                   .addOperand(DstMCOp)
                                   .addOperand(JTILoMCOp));
}

void TriCoreAsmPrinter::EmitJumpTableAddrTC16XPIC(const MachineInstr *MI) {
  // Before TC18 there is no indirect jump relative to PC. Therefore we need to
  // read the current PC and calculate the effective address using that plus the
  // jump table offset and index
  const MachineOperand DstOp = MI->getOperand(0);
  const MachineOperand RetSpillOp = MI->getOperand(1);
  const MachineOperand JTIOpHi = MI->getOperand(3);
  const MachineOperand JTIOpLo = MI->getOperand(4);

  // Lower all MachineOperands to MCOperands
  MCOperand DstMCOp, RetSpillMCOp, JTIHiMCOp, JTILoMCOp;
  MCInstLowering.LowerOperand(DstOp, DstMCOp);
  MCInstLowering.LowerOperand(RetSpillOp, RetSpillMCOp);
  MCInstLowering.LowerOperand(JTIOpHi, JTIHiMCOp);
  MCInstLowering.LowerOperand(JTIOpLo, JTILoMCOp);

  assert(MI->getMF()->getRegInfo().isReserved(TriCore::A11) &&
         "Expected $a11 to be reserved!");

  // First, save the current return address ($a11)
  EmitToStreamer(*OutStreamer, MCInstBuilder(TriCore::MOVAA_aa)
                                   .addOperand(RetSpillMCOp)
                                   .addReg(TriCore::A11));

  // Now create a new symbol and jump to it using JL. This saves PC+4 in $a11
  // and is the only way for us to access PC. The symbol simply points to the
  // next instruction
  MCSymbol *PICOffSymbol = OutContext.createTempSymbol("PICOFF", false);
  const MCSymbolRefExpr *SymRefExpr =
      MCSymbolRefExpr::create(PICOffSymbol, OutContext);

  EmitToStreamer(*OutStreamer, MCInstBuilder(TriCore::JL).addExpr(SymRefExpr));
  OutStreamer->emitLabel(PICOffSymbol);

  // Now materialize the offset of the PICOffSymbol and subtract it from $a11
  // (holding PC+4)
  const TriCoreMCExpr *PICOffHiExpr = TriCoreMCExpr::create(
      SymRefExpr, TriCoreMCExpr::VK_TRICORE_HI, OutContext);

  const TriCoreMCExpr *PICOffLoExpr = TriCoreMCExpr::create(
      SymRefExpr, TriCoreMCExpr::VK_TRICORE_LO, OutContext);

  EmitToStreamer(*OutStreamer, MCInstBuilder(TriCore::MOVHA_ac)
                                   .addOperand(DstMCOp)
                                   .addExpr(PICOffHiExpr));

  EmitToStreamer(*OutStreamer, MCInstBuilder(TriCore::LEA_aac)
                                   .addOperand(DstMCOp)
                                   .addOperand(DstMCOp)
                                   .addExpr(PICOffLoExpr));

  EmitToStreamer(*OutStreamer, MCInstBuilder(TriCore::SUBA_aaa)
                                   .addReg(TriCore::A11)
                                   .addReg(TriCore::A11)
                                   .addOperand(DstMCOp));

  // Now materialize the offset of the jump table and add the PC ($a11) to it.
  // This finally gives us the base address of the jump table
  EmitToStreamer(*OutStreamer, MCInstBuilder(TriCore::MOVHA_ac)
                                   .addOperand(DstMCOp)
                                   .addOperand(JTIHiMCOp));

  EmitToStreamer(*OutStreamer, MCInstBuilder(TriCore::LEA_aac)
                                   .addOperand(DstMCOp)
                                   .addOperand(DstMCOp)
                                   .addOperand(JTILoMCOp));

  EmitToStreamer(*OutStreamer, MCInstBuilder(TriCore::ADDA_aaa)
                                   .addOperand(DstMCOp)
                                   .addOperand(DstMCOp)
                                   .addReg(TriCore::A11));

  // Finally, restore $a11
  EmitToStreamer(*OutStreamer, MCInstBuilder(TriCore::MOVAA_aa)
                                   .addReg(TriCore::A11)
                                   .addOperand(RetSpillMCOp));
}

void TriCoreAsmPrinter::EmitJumpTableInsts(const MachineInstr *MI) {
  // The purpose of this pseudo instruction to mark where the trampoline for the
  // jump table should be emitted. Before this instruction is lowered the code
  // looks something like this:
  //
  // %bb.0:
  //   ...
  //   $a15 = JIJumpTable $d15, hi:%jump-table.0, lo:%jump-table.0
  // %bb.1:
  //   JUMPTABLE_INSTS %jump-table.0, 5
  //
  // After lowering, it will look like this (MIR and assembly mixed:
  //
  // %bb.0:
  //   ...
  //   $a15 = JIJumpTable $d15, hi:%jump-table.0, lo:%jump-table.0
  //
  // .p2align 2  # Align to 4 byte as otherwise the address calculation is wrong
  // .JUMPTABLE0:
  //   .code32   # Force 4-byte jumps as otherwise the calculated addr is wrong
  //   j .FOO
  //   .code32
  //   j .BAR
  //   .code32
  //   j .FOOBAR
  // ...

  assert(MI->getOpcode() == TriCore::JUMPTABLE_INSTS);

  const MachineOperand JTIOp = MI->getOperand(0);
  const unsigned JTI = JTIOp.getIndex();

  // Make sure the jump table is 4-byte aligned
  emitAlignment(Align(4));

  // Emit a label for the jump table
  MCSymbol *JTISymbol = GetJTISymbol(JTI);
  OutStreamer->emitLabel(JTISymbol);

  // Emit each entry of the table
  const MachineJumpTableInfo *MJTI = MF->getJumpTableInfo();
  const std::vector<MachineJumpTableEntry> &JT = MJTI->getJumpTables();
  const std::vector<MachineBasicBlock *> &JTBBs = JT[JTI].MBBs;

  for (MachineBasicBlock *MBB : JTBBs) {
    const MCExpr *MBBSymbolExpr =
        MCSymbolRefExpr::create(MBB->getSymbol(), OutContext);

    // Make sure that we use the 4-byte J instruction, as otherwise our address
    // calculation is broken
    OutStreamer->emitAssemblerFlag(MCAssemblerFlag::MCAF_Code32);

    // Emit jump
    EmitToStreamer(*OutStreamer,
                   MCInstBuilder(TriCore::J).addExpr(MBBSymbolExpr));
  }
}

void TriCoreAsmPrinter::LowerJIJumpTable(const MachineInstr *MI) {
  // The lowering of JIJumpTable calculates the address (or PC relative offset
  // in case of PIC) of the given jump table and jumps to it. Before lowering
  // the code looks similar to this:
  //
  // %bb.0:
  //   ...
  //   $a15 = JIJumpTable $d15, hi:%jump-table.0, lo:%jump-table.0
  //
  // Depending on the addressing mode this is lowered differently. First of all,
  // this pseudo instruction can only be used with PIC if the JRI instruction is
  // available.
  //
  // For the static addressing mode, this pseudo lowers into the following code:
  //
  // %bb.0:
  //   ...
  //   # Materialize the address of .JUMPTABLE0 in $a15
  //   movh.a  $a15, hi:.JUMPTABLE0
  //   lea     $a15, [$a15], lo:.JUMPTABLE0
  //   # Add the scaled index to the calculated address. Scaling is necessary as
  //   # we need to jump over 4-byte instructions
  //   addsc.a $a15, $a15, $d15, 2
  //   # Jump to the calculated address
  //   ji      $a15
  //
  //
  // For PIC addressing mode the lowering is similar, but instead of calculating
  // an absolute address to jump to, a PC relative offset is calculated instead.
  // The lowering looks like this:
  //
  // %bb.0:
  //   ...
  //   # Materialize the PC relative offset to the jump table in $a15
  //   movh.a  $a15, hi:.JUMPTABLE0-.PICOFF
  //   lea     $a15, [$a15], lo:.JUMPTABLE0-.PICOFF
  //   # Add the scaled index to the offset
  //   addsc.a $a15, $a15, $d15, 2
  //   # Symbol needed to calculate a PC relative offset
  // .PICOFF:
  //   # Jump to the PC relative offset
  //   jri     $a15

  assert(MI->getOpcode() == TriCore::JIJumpTable);

  const MachineBasicBlock &MBB = *MI->getParent();
  const MachineFunction &MF = *MBB.getParent();

  const bool IsPIC = MF.getTarget().isPositionIndependent();

  assert((!IsPIC || MF.getSubtarget<TriCoreSubtarget>().hasTC18Ops()) &&
         "Expected to have JRI available if JIJumpTable is used in PIC mode");

  // Symbol is required to calculate PC relative offset in PIC mode
  MCSymbol *PICOffSymbol = nullptr;
  if (IsPIC)
    PICOffSymbol = OutContext.createTempSymbol("PICOFF", false);

  // Emit address calculation first
  EmitJumpTableAddr(MI, PICOffSymbol);

  // Lower to ADDSCA_aadc + JI
  const MachineOperand DstOp = MI->getOperand(0);
  const MachineOperand IdxOp = MI->getOperand(1);

  MCOperand DstMCOp, IdxMCOp;
  MCInstLowering.LowerOperand(DstOp, DstMCOp);
  MCInstLowering.LowerOperand(IdxOp, IdxMCOp);

  EmitToStreamer(*OutStreamer, MCInstBuilder(TriCore::ADDSCA_aadc)
                                   .addOperand(DstMCOp)
                                   .addOperand(DstMCOp)
                                   .addOperand(IdxMCOp)
                                   .addImm(2));

  // If we are in PIC mode, then we need to emit a label here
  if (IsPIC)
    OutStreamer->emitLabel(PICOffSymbol);

  const unsigned Opcode = IsPIC ? TriCore::JRI : TriCore::JI;
  EmitToStreamer(*OutStreamer, MCInstBuilder(Opcode).addOperand(DstMCOp));
}

void TriCoreAsmPrinter::LowerJIJumpTableTC16XPIC(const MachineInstr *MI) {
  // This pseudo instruction is required for targets where PIC is used but no
  // JRI instruction is available. Since this means that there is no way to jump
  // indirectly relative to the PC, we need to access the PC to calculate an
  // absolute address instead.
  // Before lowering the code looks similar to this:
  //
  // %bb.0:
  //   ...
  //   $a15, $a2 = JIJumpTableTC16XPIC $d15, hi:%jump-table.0, lo:%jump-table.0
  //
  // After lowering the code looks like this:
  //
  // %bb.0:
  //   ...
  //   # Save current return address ($a11)
  //   mov.aa  $a2, $a11
  //   # Jump-and-link to .PICOFF label, as this will save PC+4 in $a11.
  //   # .PICOFF just points to the next instruction
  //   jl      .PICOFF
  // .PICOFF:
  //   # Materialize the offset of .PICOFF in $a15
  //   movh.a  $a15, hi:.PICOFF
  //   lea     $a15, [$a15], lo:.PICOFF
  //   # Subtract .PICOFF from $a11. This gives us the original PC
  //   sub.a   $a11, $a11, $a15
  //   # Materialize the offset of the .JUMPTABLE0 label in $a15
  //   movh.a  $a15, hi:.JUMPTABLE0
  //   lea     $a15, [$a15], lo:.JUMPTABLE0
  //   # Add the PC from earlier to the offset of .JUMPTABLE0. This gives
  //   # us the absolute address of the jump table
  //   add.a   $a15, $a15, $a11
  //   # Restore the saved return address
  //   mov.aa  $a11, $a2
  //   # Add the scaled index to the calculated address. Scaling is necessary as
  //   # we need to jump over 4-byte instructions
  //   addsc.a $a15, $a15, $d15, 2
  //   # Jump to the calculated address
  //   ji      $a15

  assert(MI->getOpcode() == TriCore::JIJumpTableTC16XPIC);

  const MachineBasicBlock &MBB = *MI->getParent();
  const MachineFunction &MF = *MBB.getParent();

  assert(MF.getTarget().isPositionIndependent() &&
         !MF.getSubtarget<TriCoreSubtarget>().hasTC18Ops() &&
         "Expected PIC mode on target without JRI");

  // Emit address calculation first
  EmitJumpTableAddrTC16XPIC(MI);

  // Lower to ADDSCA_aadc + JI
  const MachineOperand DstOp = MI->getOperand(0);
  const MachineOperand IdxOp = MI->getOperand(2);

  MCOperand DstMCOp, IdxMCOp;
  MCInstLowering.LowerOperand(DstOp, DstMCOp);
  MCInstLowering.LowerOperand(IdxOp, IdxMCOp);

  EmitToStreamer(*OutStreamer, MCInstBuilder(TriCore::ADDSCA_aadc)
                                   .addOperand(DstMCOp)
                                   .addOperand(DstMCOp)
                                   .addOperand(IdxMCOp)
                                   .addImm(2));

  EmitToStreamer(*OutStreamer, MCInstBuilder(TriCore::JI).addOperand(DstMCOp));
}

void TriCoreAsmPrinter::emitInstruction(const MachineInstr *MI) {
  // Lower pseudo instruction
  const unsigned Opcode = MI->getOpcode();
  switch (Opcode) {
  default:
    break;
  case TriCore::JIJumpTable:
    LowerJIJumpTable(MI);
    return;
  case TriCore::JIJumpTableTC16XPIC:
    LowerJIJumpTableTC16XPIC(MI);
    return;
  case TriCore::JUMPTABLE_INSTS:
    EmitJumpTableInsts(MI);
    return;
  }

  if (MI->isPseudo()) {
    llvm_unreachable("All pseudo instructions should have been eliminated!");
  }

  MCInst TmpInst;
  MCInstLowering.Lower(MI, TmpInst);
  EmitToStreamer(*OutStreamer, TmpInst);
}

// Force static initialization.
extern "C" void LLVMInitializeTriCoreAsmPrinter() {
  RegisterAsmPrinter<TriCoreAsmPrinter> X(getTheTriCoreTarget());
}
