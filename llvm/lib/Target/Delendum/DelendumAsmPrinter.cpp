//===-- DelendumAsmPrinter.cpp - Assembly Printer ---------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
///
/// \file
/// This file contains a printer that converts from our internal representation
/// of machine-dependent LLVM code to GAS-format Delendum assembly language.
///
//===----------------------------------------------------------------------===//

#include "Delendum.h"
#include "DelendumMachineFunction.h"
#include "TargetInfo/DelendumTargetInfo.h"
#include "DelendumTargetMachine.h"
#include "MCTargetDesc/DelendumInstPrinter.h"

#include "llvm/MC/TargetRegistry.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/Support/Compiler.h"
#include "llvm/CodeGen/AsmPrinter.h"
#include "llvm/Target/TargetMachine.h"

using namespace llvm;

#define DEBUG_TYPE "asm-printer"

namespace {
class DelendumAsmPrinter : public AsmPrinter {
public:

  explicit DelendumAsmPrinter(TargetMachine &TM,
                              std::unique_ptr<MCStreamer> Streamer)
      : AsmPrinter(TM, std::move(Streamer)) {
  }

  bool PrintAsmOperand(const MachineInstr *MI, unsigned OpNo,
                       const char *ExtraCode, raw_ostream &OS) override;

  void printOperand(const MachineInstr *MI, int OpNum, raw_ostream &OS);

  void emitInstruction(const MachineInstr *MI) override;
};
}

// FIXME: This is not currently used when emitting instructions
void DelendumAsmPrinter::printOperand(const MachineInstr *MI, int OpNum,
                                      raw_ostream &OS) {
  const MachineOperand &MO = MI->getOperand(OpNum);
  switch (MO.getType()) {
  case MachineOperand::MO_Register:
    OS << "%" << DelendumInstPrinter::getRegisterName(MO.getReg());
    break;
  case MachineOperand::MO_Immediate:
    OS << MO.getImm();
    break;
  case MachineOperand::MO_MachineBasicBlock:
    MO.getMBB()->getSymbol()->print(OS, MAI);
    break;
  default:
    llvm_unreachable("not implemented");
  }
}

bool DelendumAsmPrinter::PrintAsmOperand(const MachineInstr *MI, unsigned OpNo,
                                         const char *ExtraCode,
                                         raw_ostream &OS) {
  // Print the operand if there is no operand modifier.
  if (!ExtraCode || !ExtraCode[0]) {
    printOperand(MI, OpNo, OS);
    return false;
  }

  // Fallback to the default implementation.
  return AsmPrinter::PrintAsmOperand(MI, OpNo, ExtraCode, OS);
}

void DelendumAsmPrinter::emitInstruction(const MachineInstr *MI) {
  Delendum_MC::verifyInstructionPredicates(MI->getOpcode(),
                                           getSubtargetInfo().getFeatureBits());
  MCInst OutMI;

  // Lower opcode
  unsigned Opcode = MI->getOpcode();
  OutMI.setOpcode(Opcode);

  // Lower operands
  for (unsigned i = 0, e = MI->getNumOperands(); i != e; ++i) {
    const MachineOperand &MO = MI->getOperand(i);
    std::optional<MCOperand> MCOp = MCOperand::createImm(MO.getImm());
    if (MCOp.has_value() && MCOp.value().isValid())
      OutMI.addOperand(MCOp.value());
  }

  OutStreamer->emitInstruction(OutMI, getSubtargetInfo());

}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeDelendumAsmPrinter() {
  RegisterAsmPrinter<DelendumAsmPrinter> X(getTheDelendumTarget());
}
