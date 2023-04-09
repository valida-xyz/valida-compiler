//===-- DelendumAsmPrinter.h - Delendum LLVM Assembly Printer -----------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
///
/// \file
/// This file contains Delendum assembler printer declarations.
///
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_DELENDUM_DELENDUMASMPRINTER_H
#define LLVM_LIB_TARGET_DELENDUM_DELENDUMASMPRINTER_H

#include "DelendumMCInstLower.h"
#include "DelendumTargetMachine.h"

#include "llvm/CodeGen/AsmPrinter.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/Support/Compiler.h"
#include "llvm/Target/TargetMachine.h"
#include <memory>
#include <utility>

namespace llvm {
class MCStreamer;
class MachineInstr;
class MachineBasicBlock;
class Module;
class raw_ostream;

class DelendumSubtarget;
class DelendumMachineFunctionInfo;

class LLVM_LIBRARY_VISIBILITY DelendumAsmPrinter : public AsmPrinter {

  //void EmitInstrWithMacroNoAT(const MachineInstr *MI);

  void printOperand(const MachineInstr *MI, int OpNum, raw_ostream &OS);

public:
  const DelendumSubtarget *Subtarget;
  const DelendumMachineFunctionInfo *MMFI;
  std::unique_ptr<DelendumMCInstLower> MCInstLowering;

  explicit DelendumAsmPrinter(TargetMachine &TM,
                              std::unique_ptr<MCStreamer> Streamer)
      : AsmPrinter(TM, std::move(Streamer)) {
    Subtarget = static_cast<DelendumTargetMachine &>(TM).getSubtargetImpl();
  }

  StringRef getPassName() const override { return "Delendum Assembly Printer"; }

  virtual bool runOnMachineFunction(MachineFunction &MF) override;

  bool PrintAsmOperand(const MachineInstr *MI, unsigned OpNo,
                       const char *ExtraCode, raw_ostream &OS) override;

  void emitInstruction(const MachineInstr *MI) override;
  //void emitFunctionBodyStart() override;
  //void emitFunctionBodyEnd() override;
  //void emitStartOfAsmFile(Module &M) override;
  //void emitEndOfAsmFile(Module &M) override;
};
} // namespace llvm

#endif // LLVM_LIB_TARGET_DELENDUM_DELENDUMASMPRINTER_H
