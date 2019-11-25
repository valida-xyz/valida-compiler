//===- TriCoreMCExpr.h - TriCore specific MC expression classes --*- C++-*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file describes TriCore-specific MCExprs.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_TRICORE_MCTARGETDESC_TRICOREMCEXPR_H
#define LLVM_LIB_TARGET_TRICORE_MCTARGETDESC_TRICOREMCEXPR_H

#include "llvm/MC/MCExpr.h"

namespace llvm {

class StringRef;
class TriCoreMCExpr : public MCTargetExpr {
public:
  // Representing the possible expression modifiers of TriCore.
  // E.g.: lo (extract lower half world), hi (extract upper half world),
  // sm (put in small data section).
  enum VariantKind {
    VK_TRICORE_None,
    VK_TRICORE_HI,
    VK_TRICORE_LO,
    VK_TRICORE_SM,
    VK_TRICORE_Invalid
  };

private:
  const MCExpr *Expr;
  const VariantKind Kind;

  int64_t evaluateAsInt64(int64_t Value) const;

  explicit TriCoreMCExpr(const MCExpr *Expr, VariantKind Kind)
      : Expr(Expr), Kind(Kind) {}

public:
  static const TriCoreMCExpr *create(const MCExpr *Expr, VariantKind Kind,
                                     MCContext &Ctx);

  VariantKind getKind() const { return Kind; }

  const MCExpr *getSubExpr() const { return Expr; }

  void printImpl(raw_ostream &OS, const MCAsmInfo *MAI) const override;
  bool evaluateAsRelocatableImpl(MCValue &Res, const MCAsmLayout *Layout,
                                 const MCFixup *Fixup) const override;
  void visitUsedExpr(MCStreamer &Streamer) const override;
  MCFragment *findAssociatedFragment() const override {
    return getSubExpr()->findAssociatedFragment();
  }

  void fixELFSymbolsInTLSFixups(MCAssembler &Asm) const override {}

  bool evaluateAsConstant(int64_t &Res) const;

  static bool classof(const MCExpr *E) {
    return E->getKind() == MCExpr::Target;
  }

  static bool classof(const TriCoreMCExpr *) { return true; }

  static VariantKind getVariantKindForName(StringRef name);
  static StringRef getVariantKindName(VariantKind Kind);
};

} // end namespace llvm.

#endif
