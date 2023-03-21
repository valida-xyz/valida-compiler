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
public:
  explicit DelendumAsmPrinter(TargetMachine &TM,
                          std::unique_ptr<MCStreamer> Streamer)
      : AsmPrinter(TM, std::move(Streamer)) {
  }
};
} // namespace llvm

#endif // LLVM_LIB_TARGET_DELENDUM_DELENDUMASMPRINTER_H
