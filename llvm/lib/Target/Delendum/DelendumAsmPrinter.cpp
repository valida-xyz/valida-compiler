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
};
}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeDelendumAsmPrinter() {
  RegisterAsmPrinter<DelendumAsmPrinter> X(getTheDelendumTarget());
}
