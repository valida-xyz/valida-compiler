//==-- TriCoreMCInstLower.h - Convert TriCore MachineInstr to an MCInst ----==//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains code to lower TriCore MachineInstrs to their corresponding
// MCInst records.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LLVM_LIB_TARGET_TRICORE_TRICOREMCINSTLOWER_H
#define LLVM_LLVM_LIB_TARGET_TRICORE_TRICOREMCINSTLOWER_H

#include "llvm/Support/Compiler.h"

namespace llvm {
class AsmPrinter;
class MachineInstr;
class MachineOperand;
class MCContext;
class MCInst;
class MCOperand;
class MCSymbol;

/// TriCoreMCInstLower - This class is used to lower an MachineInstr into an
/// MCInst.
class LLVM_LIBRARY_VISIBILITY TriCoreMCInstLower {
  MCContext &Ctx;
  AsmPrinter &Printer;

public:
  TriCoreMCInstLower(MCContext &Ctx, AsmPrinter &Printer);

  void Lower(const MachineInstr *MI, MCInst &OutMI) const;

  MCOperand LowerSymbolOperand(const MachineOperand &MO, MCSymbol *Sym) const;

  MCSymbol *GetGlobalAddressSymbol(const MachineOperand &MO) const;
  MCSymbol *GetExternalSymbolSymbol(const MachineOperand &MO) const;
};
} // namespace llvm

#endif // LLVM_LLVM_LIB_TARGET_TRICORE_TRICOREMCINSTLOWER_H
