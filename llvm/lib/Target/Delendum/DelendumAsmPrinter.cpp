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
#include "DelendumAsmPrinter.h"
#include "DelendumMachineFunction.h"
#include "TargetInfo/DelendumTargetInfo.h"
#include "DelendumTargetMachine.h"
#include "MCTargetDesc/DelendumInstPrinter.h"
#include "DelendumMCInstLower.h"

#include "llvm/MC/TargetRegistry.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/Support/Compiler.h"
#include "llvm/CodeGen/AsmPrinter.h"
#include "llvm/Target/TargetMachine.h"

using namespace llvm;

#define DEBUG_TYPE "asm-printer"

bool DelendumAsmPrinter::runOnMachineFunction(MachineFunction &MF) {
  //MMFI = MF.getInfo<DelendumMachineFunctionInfo>();
  MCInstLowering = std::make_unique<DelendumMCInstLower>(MF, *this);
  AsmPrinter::runOnMachineFunction(MF);
  return true;
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
  MCInstLowering->Lower(MI, OutMI);
  OutStreamer->emitInstruction(OutMI, getSubtargetInfo());

}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeDelendumAsmPrinter() {
  RegisterAsmPrinter<DelendumAsmPrinter> X(getTheDelendumTarget());
}
