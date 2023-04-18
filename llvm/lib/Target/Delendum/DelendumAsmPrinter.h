//===-- DelendumAsmPrinter.h - Delendum LLVM Assembly Printer ---*- C++ -*-===//
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
class DelendumMachineFunctionInfo;

class LLVM_LIBRARY_VISIBILITY DelendumAsmPrinter : public AsmPrinter {

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

  void emitInstruction(const MachineInstr *MI) override;
};
} // namespace llvm

#endif // LLVM_LIB_TARGET_DELENDUM_DELENDUMASMPRINTER_H
