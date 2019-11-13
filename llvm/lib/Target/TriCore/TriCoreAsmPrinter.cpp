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
#include "TargetInfo/TriCoreTargetInfo.h"
#include "TriCoreMCInstLower.h"
#include "TriCoreTargetMachine.h"
#include "llvm/CodeGen/AsmPrinter.h"
#include "llvm/CodeGen/MachineConstantPool.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineInstr.h"
#include "llvm/CodeGen/MachineModuleInfo.h"
#include "llvm/MC/MCAsmInfo.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/Support/TargetRegistry.h"
#include "llvm/Support/raw_ostream.h"
using namespace llvm;

#define DEBUG_TYPE "asm-printer"

namespace {
class TriCoreAsmPrinter : public AsmPrinter {
  TriCoreMCInstLower MCInstLowering;

public:
  explicit TriCoreAsmPrinter(TargetMachine &TM,
                             std::unique_ptr<MCStreamer> Streamer)
      : AsmPrinter(TM, std::move(Streamer)) {}

  StringRef getPassName() const override { return "TriCore Assembly Printer"; }

  void EmitInstruction(const MachineInstr *MI) override;
};
} // namespace

void TriCoreAsmPrinter::EmitInstruction(const MachineInstr *MI) {

  if (MI->isPseudo()) {
    llvm_unreachable("Pseudo opcode found in EmitInstruction!");
  }

  MCInst TmpInst;
  MCInstLowering.Lower(MI, TmpInst);
  EmitToStreamer(*OutStreamer, TmpInst);
}

// Force static initialization.
extern "C" void LLVMInitializeTriCoreAsmPrinter() {
  RegisterAsmPrinter<TriCoreAsmPrinter> X(getTheTriCoreTarget());
}
