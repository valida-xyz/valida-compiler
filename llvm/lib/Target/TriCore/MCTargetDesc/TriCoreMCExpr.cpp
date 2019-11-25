//===-- TriCoreMCExpr.cpp - TriCore specific MC expression classes --------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains the implementation of the assembly expression modifiers
// accepted by the TriCore architecture (e.g.: "lo:", "hi:", "sm:", ... ).
//
//===----------------------------------------------------------------------===//

#include "TriCoreMCExpr.h"
#include "llvm/MC/MCAssembler.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/MCSymbolELF.h"
#include "llvm/MC/MCValue.h"
#include "llvm/Object/ELF.h"
#include "llvm/Support/ErrorHandling.h"

using namespace llvm;

#define DEBUG_TYPE "tricoremcexpr"

const TriCoreMCExpr *TriCoreMCExpr::create(const MCExpr *Expr, VariantKind Kind,
                                           MCContext &Ctx) {
  return new (Ctx) TriCoreMCExpr(Expr, Kind);
}

void TriCoreMCExpr::printImpl(raw_ostream &OS, const MCAsmInfo *MAI) const {
  VariantKind VK = getKind();
  if (VK != VK_TRICORE_None)
    OS << getVariantKindName(VK) << ':';
  Expr->print(OS, MAI);
}

bool TriCoreMCExpr::evaluateAsRelocatableImpl(MCValue &Res,
                                              const MCAsmLayout *Layout,
                                              const MCFixup *Fixup) const {
  return getSubExpr()->evaluateAsRelocatable(Res, Layout, Fixup);
}

void TriCoreMCExpr::visitUsedExpr(MCStreamer &Streamer) const {
  Streamer.visitUsedExpr(*getSubExpr());
}

TriCoreMCExpr::VariantKind
TriCoreMCExpr::getVariantKindForName(StringRef name) {
  return StringSwitch<TriCoreMCExpr::VariantKind>(name.lower())
      .Case("hi", VK_TRICORE_HI)
      .Case("lo", VK_TRICORE_LO)
      .Case("sm", VK_TRICORE_SM)
      .Default(VK_TRICORE_Invalid);
}

StringRef TriCoreMCExpr::getVariantKindName(VariantKind Kind) {
  switch (Kind) {
  default:
    llvm_unreachable("Invalid ELF symbol kind");
  case VK_TRICORE_HI:
    return "hi";
  case VK_TRICORE_LO:
    return "lo";
  case VK_TRICORE_SM:
    return "sm";
  }
}

// check if the current TriCoreMCExpr is a constant, if it is returning true
// and saving the constants value in @Res
bool TriCoreMCExpr::evaluateAsConstant(int64_t &Res) const {
  MCValue Value;

  // SM operand modifier cannot be used with constant expressions
  if (getKind() == TriCoreMCExpr::VK_TRICORE_SM)
    return false;

  // evaluating the expression as : a + b + constant, if cant then this is not a
  // constant value
  if (!getSubExpr()->evaluateAsRelocatable(Value, nullptr, nullptr))
    return false;

  // if the returned Value is not a relocatable with only the constant part (a
  // and b is not null) then its not a constant
  if (!Value.isAbsolute())
    return false;

  // if the above two early exit passed, then this is a constant. Evaluate it,
  // store its value in @Res inout parameter and return true.
  Res = evaluateAsInt64(Value.getConstant());
  return true;
}

// This function is used to evaulate constants with modifiers. E.g.: lo:0x123456
// will be 0x3456 (the least significant 16 bit of the constant)
int64_t TriCoreMCExpr::evaluateAsInt64(int64_t Value) const {
  switch (Kind) {
  default:
    llvm_unreachable("Invalid kind");
  case VK_TRICORE_HI:
    // adding 0x8000 to compensate if the lower half word is negative
    return ((Value + 0x8000) >> 16) & 0xffff;
  case VK_TRICORE_LO:
    return Value & 0xffff;
  }
}
