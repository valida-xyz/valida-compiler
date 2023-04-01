//===-- DelendumInstPrinter.cpp - Convert MCInst to assembly syntax --------==//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This class prints an Delendum MCInst to a .s file.
//
//===----------------------------------------------------------------------===//

#include "DelendumInstPrinter.h"
#include "Delendum.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/MC/MCSymbol.h"
#include "llvm/Support/raw_ostream.h"
using namespace llvm;

#define DEBUG_TYPE "asm-printer"

// The generated AsmMatcher DelendumGenAsmWriter uses "Delendum" as the target
// namespace. But DELENDUM backend uses "DL" as its namespace.
//namespace llvm {
//namespace Delendum {
//  using namespace DL;
//}
//}

#define GET_INSTRUCTION_NAME
#define PRINT_ALIAS_INSTR
#include "DelendumGenAsmWriter.inc"

void DelendumInstPrinter::printRegName(raw_ostream &OS, MCRegister Reg) const {
  OS << '%' << StringRef(getRegisterName(Reg)).lower();
}

void DelendumInstPrinter::printInst(const MCInst *MI, uint64_t Address,
                                    StringRef Annot, 
                                    const MCSubtargetInfo &STI,
                                    raw_ostream &O) {
  if (!printAliasInstr(MI, Address, O) &&
      !printDelendumAliasInstr(MI, O))
    printInstruction(MI, Address, O);
  printAnnotation(O, Annot);
}

bool DelendumInstPrinter::printDelendumAliasInstr(const MCInst *MI,
                                                  raw_ostream &O) {
  return false;
}

void DelendumInstPrinter::printOperand(const MCInst *MI, int opNum,
                                       raw_ostream &O) {
  MCOperand Op = MI->getOperand(opNum);
  if (Op.isReg())
    O << "%" << getRegisterName(Op.getReg());
  else if (Op.isImm())
    O << "#" << Op.getImm();
}

void DelendumInstPrinter::printMemOperand(const MCInst *MI, int opNum,
                                          raw_ostream &O,
                                          const char *Modifier) {
  O << "(";
  printOperand(MI, opNum, O);
  O << ", ";
  printOperand(MI, opNum + 1, O);
  O << ")";
}

void DelendumInstPrinter::printCCOperand(const MCInst *MI, int opNum,
                                         raw_ostream &O) {
  llvm_unreachable("unimplemented");
}

bool DelendumInstPrinter::printGetPCX(const MCInst *MI, unsigned opNum,
                                      raw_ostream &O) {
  llvm_unreachable("FIXME: Implement DelendumInstPrinter::printGetPCX.");
  return true;
}

void DelendumInstPrinter::printMembarTag(const MCInst *MI, int opNum,
                                         raw_ostream &O) {
  // TODO
}
