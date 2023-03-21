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
#include "DelendumAsmPrinter.h"
#include "TargetInfo/DelendumTargetInfo.h"

#include "llvm/MC/TargetRegistry.h"

using namespace llvm;

#define DEBUG_TYPE "delendum-asm-printer"

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeDelendumAsmPrinter() {
  RegisterAsmPrinter<DelendumAsmPrinter> X(getTheDelendumTarget());
}
