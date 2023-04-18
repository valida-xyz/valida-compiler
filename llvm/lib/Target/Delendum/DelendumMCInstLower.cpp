//===-- DelendumMCInstLower.cpp - Delendum MachineInstr to MCInst -------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
///
/// \file
/// This file contains code to lower Delendum MachineInstrs to their
/// corresponding MCInst records.
///
//===----------------------------------------------------------------------===//

#include "DelendumMCInstLower.h"

#include "DelendumAsmPrinter.h"
#include "DelendumInstrInfo.h"

#include "MCTargetDesc/DelendumBaseInfo.h"

#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/MachineOperand.h"
#include "llvm/IR/Mangler.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/MC/MCInst.h"

using namespace llvm;

#define DEBUG_TYPE "delendum-mc-inst-lower"

DelendumMCInstLower::DelendumMCInstLower(MachineFunction &MF,
                                         DelendumAsmPrinter &AP)
    : Ctx(MF.getContext()), MF(MF), TM(MF.getTarget()),
      MAI(*TM.getMCAsmInfo()), AsmPrinter(AP) {}

MCOperand
DelendumMCInstLower::LowerSymbolOperand(const MachineOperand &MO) const {
  const MCSymbol *Sym;
  const MCExpr *Expr = nullptr;

  SmallString<128> Name;
  switch (MO.getType()) {
  case MachineOperand::MO_MachineBasicBlock:
    Sym = MO.getMBB()->getSymbol();
    break;
  case MachineOperand::MO_GlobalAddress:
    Sym = AsmPrinter.getSymbol(MO.getGlobal());
    break;
  default:
    break;
  }

  if (!Sym)
    Sym = Ctx.getOrCreateSymbol(Name);

  MCSymbolRefExpr::VariantKind RefKind = MCSymbolRefExpr::VK_None;
  Expr = MCSymbolRefExpr::create(Sym, RefKind, Ctx);

  return MCOperand::createExpr(Expr);
}

std::optional<MCOperand>
DelendumMCInstLower::LowerOperand(const MachineInstr *MI,
                                  const MachineOperand &MO) const {
  switch (MO.getType()) {
  case MachineOperand::MO_Immediate:
    return MCOperand::createImm(MO.getImm());
  case MachineOperand::MO_MachineBasicBlock:
  case MachineOperand::MO_GlobalAddress:
    return LowerSymbolOperand(MO);
  default:
    llvm_unreachable("unknown operand type");
  }
}

void DelendumMCInstLower::Lower(const MachineInstr *MI, MCInst &OutMI) const {
  unsigned Opcode = MI->getOpcode();
  OutMI.setOpcode(Opcode);

  for (unsigned i = 0, e = MI->getNumOperands(); i != e; ++i) {
    const MachineOperand &MO = MI->getOperand(i);
    std::optional<MCOperand> MCOp = LowerOperand(MI, MO);

    if (MCOp.has_value() && MCOp.value().isValid())
      OutMI.addOperand(MCOp.value());
  }
}

