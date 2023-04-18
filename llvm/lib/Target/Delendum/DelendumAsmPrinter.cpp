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
  MCInstLowering = std::make_unique<DelendumMCInstLower>(MF, *this);
  AsmPrinter::runOnMachineFunction(MF);
  return true;
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
