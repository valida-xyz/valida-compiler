//==-- TriCoreMCInstLower.cpp - Convert TriCore MachineInstr to an MCInst --==//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains code to lower TriCore MachineInstrs to their corresponding
// MCInst records.
//
//===----------------------------------------------------------------------===//

#include "TriCoreMCInstLower.h"
#include "MCTargetDesc/TriCoreBaseInfo.h"
#include "MCTargetDesc/TriCoreMCExpr.h"
#include "llvm/CodeGen/AsmPrinter.h"
#include "llvm/CodeGen/MachineBasicBlock.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/MC/MCAsmInfo.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCInst.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Target/TargetMachine.h"

using namespace llvm;

TriCoreMCInstLower::TriCoreMCInstLower(MCContext &Ctx, AsmPrinter &Printer)
    : Ctx(Ctx), Printer(Printer) {}

MCSymbol *
TriCoreMCInstLower::GetGlobalAddressSymbol(const MachineOperand &MO) const {
  const GlobalValue *GV = MO.getGlobal();
  return Printer.getSymbol(GV);
}

MCOperand TriCoreMCInstLower::LowerSymbolOperand(const MachineOperand &MO,
                                                 MCSymbol *Sym) const {
  assert(Printer.TM.getTargetTriple().isOSBinFormatELF() &&
         "Invalid target for TriCore");

  uint32_t RefFlags = 0;
  const unsigned TargetFlags = MO.getTargetFlags();

  if (TargetFlags == TriCoreII::MO_NO_FLAG)
    RefFlags = TriCoreMCExpr::VK_TRICORE_None;
  else if ((TargetFlags & TriCoreII::MO_FRAGMENT) == TriCoreII::MO_HI)
    RefFlags |= TriCoreMCExpr::VK_TRICORE_HI;
  else if ((TargetFlags & TriCoreII::MO_FRAGMENT) == TriCoreII::MO_LO)
    RefFlags |= TriCoreMCExpr::VK_TRICORE_LO;

  const MCExpr *Expr =
      MCSymbolRefExpr::create(Sym, MCSymbolRefExpr::VK_None, Ctx);

  if (!MO.isJTI() && MO.getOffset())
    Expr = MCBinaryExpr::createAdd(
        Expr, MCConstantExpr::create(MO.getOffset(), Ctx), Ctx);

  if (RefFlags != TriCoreMCExpr::VK_TRICORE_None) {
    auto RefKind = static_cast<TriCoreMCExpr::VariantKind>(RefFlags);
    Expr = TriCoreMCExpr::create(Expr, RefKind, Ctx);
  }

  return MCOperand::createExpr(Expr);
}

void TriCoreMCInstLower::Lower(const MachineInstr *MI, MCInst &OutMI) const {
  OutMI.setOpcode(MI->getOpcode());

  for (const MachineOperand &MO : MI->operands()) {
    MCOperand MCOp;
    switch (MO.getType()) {
    default:
      report_fatal_error(
          "LowerTriCoreMachineInstrToMCInst: unknown operand type");
    case MachineOperand::MO_Register:
      // Ignore all implicit register operands.
      if (MO.isImplicit())
        continue;
      MCOp = MCOperand::createReg(MO.getReg());
      break;
    case MachineOperand::MO_RegisterMask:
      // Regmasks are like implicit defs.
      continue;
    case MachineOperand::MO_Immediate:
      MCOp = MCOperand::createImm(MO.getImm());
      break;
    case MachineOperand::MO_GlobalAddress:
      MCOp = LowerSymbolOperand(MO, GetGlobalAddressSymbol(MO));
      break;
    case MachineOperand::MO_MachineBasicBlock:
      MCOp = MCOperand::createExpr(
          MCSymbolRefExpr::create(MO.getMBB()->getSymbol(), Ctx));
      break;
    }

    OutMI.addOperand(MCOp);
  }
}
