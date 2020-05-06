//===-- TriCoreMCCodeEmitter.cpp - Convert TriCore code to machine code ---===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements the TriCoreMCCodeEmitter class.
//
//===----------------------------------------------------------------------===//

#include "MCTargetDesc/TriCoreFixupKinds.h"
#include "MCTargetDesc/TriCoreMCExpr.h"
#include "MCTargetDesc/TriCoreMCTargetDesc.h"
#include "Utils/TriCoreBaseInfo.h"
#include "llvm/ADT/Statistic.h"
#include "llvm/MC/MCAsmInfo.h"
#include "llvm/MC/MCCodeEmitter.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCSymbol.h"
#include "llvm/Support/EndianStream.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

#define DEBUG_TYPE "mccodeemitter"

STATISTIC(MCNumEmitted, "Number of MC instructions emitted");
STATISTIC(MCNumFixups, "Number of MC fixups created");

namespace {
class TriCoreMCCodeEmitter : public MCCodeEmitter {
  TriCoreMCCodeEmitter(const TriCoreMCCodeEmitter &) = delete;
  void operator=(const TriCoreMCCodeEmitter &) = delete;
  MCContext &Ctx;
  MCInstrInfo const &MCII;

public:
  TriCoreMCCodeEmitter(MCContext &ctx, const MCInstrInfo &MCII)
      : Ctx(ctx), MCII(MCII) {}

  ~TriCoreMCCodeEmitter() override {}

  void encodeInstruction(const MCInst &MI, raw_ostream &OS,
                         SmallVectorImpl<MCFixup> &Fixups,
                         const MCSubtargetInfo &STI) const override;

  /// TableGen'erated function for getting the binary encoding for an
  /// instruction.
  uint64_t getBinaryCodeForInstr(const MCInst &MI,
                                 SmallVectorImpl<MCFixup> &Fixups,
                                 const MCSubtargetInfo &STI) const;

  /// Return binary encoding of operand. If the machine operand requires
  /// relocation, record the relocation and return zero.
  unsigned getMachineOpValue(const MCInst &MI, const MCOperand &MO,
                             SmallVectorImpl<MCFixup> &Fixups,
                             const MCSubtargetInfo &STI) const;

  void createFixups(const MCInst &MI, unsigned OpNo,
                    SmallVectorImpl<MCFixup> &Fixups,
                    const MCSubtargetInfo &STI) const;

  unsigned getImmOpValue(const MCInst &MI, unsigned OpNo,
                         SmallVectorImpl<MCFixup> &Fixups,
                         const MCSubtargetInfo &STI) const;

  // Right shift the value by N
  template <int N>
  unsigned getScaledSImmOpValue(const MCInst &MI, unsigned OpNo,
                                SmallVectorImpl<MCFixup> &Fixups,
                                const MCSubtargetInfo &STI) const;

  unsigned getSImm4_1(const MCInst &MI, unsigned OpNo,
                      SmallVectorImpl<MCFixup> &Fixups,
                      const MCSubtargetInfo &STI) const;

  unsigned getOff18Abs(const MCInst &MI, unsigned OpNo,
                       SmallVectorImpl<MCFixup> &Fixups,
                       const MCSubtargetInfo &STI) const;

  unsigned getDisp4_16(const MCInst &MI, unsigned OpNo,
                       SmallVectorImpl<MCFixup> &Fixups,
                       const MCSubtargetInfo &STI) const;

  unsigned getDisp24Abs(const MCInst &MI, unsigned OpNo,
                        SmallVectorImpl<MCFixup> &Fixups,
                        const MCSubtargetInfo &STI) const;
};
} // end anonymous namespace

MCCodeEmitter *llvm::createTriCoreMCCodeEmitter(const MCInstrInfo &MCII,
                                                const MCRegisterInfo &MRI,
                                                MCContext &Ctx) {
  return new TriCoreMCCodeEmitter(Ctx, MCII);
}

void TriCoreMCCodeEmitter::encodeInstruction(const MCInst &MI, raw_ostream &OS,
                                             SmallVectorImpl<MCFixup> &Fixups,
                                             const MCSubtargetInfo &STI) const {
  const MCInstrDesc &Desc = MCII.get(MI.getOpcode());
  // Get byte count of instruction.
  unsigned Size = Desc.getSize();

  switch (Size) {
  default:
    llvm_unreachable("Unhandled encodeInstruction length!");
  case 2: {
    uint16_t Bits = getBinaryCodeForInstr(MI, Fixups, STI);
    support::endian::write<uint16_t>(OS, Bits, support::little);
    break;
  }
  case 4: {
    uint32_t Bits = getBinaryCodeForInstr(MI, Fixups, STI);
    support::endian::write<uint32_t>(OS, Bits, support::little);
    break;
  }
  }
  ++MCNumEmitted; // Keep track of the # of mi's emitted.
}

unsigned
TriCoreMCCodeEmitter::getMachineOpValue(const MCInst &MI, const MCOperand &MO,
                                        SmallVectorImpl<MCFixup> &Fixups,
                                        const MCSubtargetInfo &STI) const {

  if (MO.isReg())
    return Ctx.getRegisterInfo()->getEncodingValue(MO.getReg());

  if (MO.isImm())
    return static_cast<unsigned>(MO.getImm());

  llvm_unreachable("Unhandled expression!");
  return 0;
}

// determine which kind of fixup should be generated for a given operand
void TriCoreMCCodeEmitter::createFixups(const MCInst &MI, unsigned OpNo,
                                        SmallVectorImpl<MCFixup> &Fixups,
                                        const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpNo);

  MCInstrDesc const &Desc = MCII.get(MI.getOpcode());
  unsigned MIFrm = Desc.TSFlags & TriCoreII::InstrFormatMask;
  unsigned OpCode = Desc.getOpcode();

  const MCExpr *Expr = MO.getExpr();
  MCExpr::ExprKind Kind = Expr->getKind();
  TriCore::Fixups FixupKind = TriCore::fixup_invalid;

  // if it is a target specific type like VK_TRICORE_* ones specified in
  // TriCoreMCExpr.h. e.g.: sm:foo -> Kind == MCExpr::Target
  if (Kind == MCExpr::Target) {
    const TriCoreMCExpr *TCExpr = cast<TriCoreMCExpr>(Expr);

    // depending on the VK_TRICORE_* type, generate the right fixup
    switch (TCExpr->getKind()) {
    case TriCoreMCExpr::VK_TRICORE_None:
    case TriCoreMCExpr::VK_TRICORE_Invalid:
      llvm_unreachable("Unhandled fixup kind!");

    case TriCoreMCExpr::VK_TRICORE_HI:
      if (MIFrm == TriCoreII::RLCFrm)
        FixupKind = TriCore::fixup_hi;
      break;

    case TriCoreMCExpr::VK_TRICORE_LO:
      // generating different fixup depending on the instruction format
      switch (MIFrm) {
      default:
        llvm_unreachable("Unhandled format for VK_TRICORE_LO type");

      case TriCoreII::BOLFrm:
        FixupKind = TriCore::fixup_lo2;
        break;

      case TriCoreII::RLCFrm:
        FixupKind = TriCore::fixup_lo;
        break;
      }
      break;

    case TriCoreMCExpr::VK_TRICORE_SM:
      if (MIFrm == TriCoreII::BOLFrm)
        FixupKind = TriCore::fixup_16sm;
      break;
    }
  }
  // If it is a plain symbolref like "foo" OR  if its a binary expression
  // with LHS is a symbol AND RHS is constant AND the binary op is '+' OR '-'
  else if ((Kind == MCExpr::SymbolRef &&
            cast<MCSymbolRefExpr>(Expr)->getKind() ==
                MCSymbolRefExpr::VK_None) ||

           (Kind == MCExpr::Binary &&

            (cast<MCSymbolRefExpr>(cast<MCBinaryExpr>(Expr)->getLHS())
                 ->getKind() == MCSymbolRefExpr::VK_None) &&

            (cast<MCConstantExpr>(cast<MCBinaryExpr>(Expr)->getRHS())) &&

            (cast<MCBinaryExpr>(Expr)->getOpcode() == MCBinaryExpr::Add ||
             cast<MCBinaryExpr>(Expr)->getOpcode() == MCBinaryExpr::Sub))) {
    // Based on the instruction format the fixup will be set
    switch (MIFrm) {
    default:
      llvm_unreachable("Unhandled format case");
      break;

    case TriCoreII::ABSFrm:
      switch (OpCode) {
      default:
        FixupKind = TriCore::fixup_18abs;
        break;
      case TriCore::LHA_ac:
        break;
      }
      break;

    case TriCoreII::ABSBFrm:
      if (OpNo == 0)
        FixupKind = TriCore::fixup_18abs;
      break;

    case TriCoreII::BFrm:
      switch (OpCode) {
      default:
        FixupKind = TriCore::fixup_24rel;
        break;
      case TriCore::CALLA:
      case TriCore::JA:
      case TriCore::JLA:
        FixupKind = TriCore::fixup_24abs;
        break;
      }
      break;

    case TriCoreII::BRCFrm:
    case TriCoreII::BRNFrm:
    case TriCoreII::BRRFrm:
      FixupKind = TriCore::fixup_15rel;
      break;
    }
  }
  assert(FixupKind != TriCore::fixup_invalid && "Unhandled expression!");

  Fixups.push_back(
      MCFixup::create(0, Expr, MCFixupKind(FixupKind), MI.getLoc()));
  ++MCNumFixups;
}

unsigned TriCoreMCCodeEmitter::getImmOpValue(const MCInst &MI, unsigned OpNo,
                                             SmallVectorImpl<MCFixup> &Fixups,
                                             const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpNo);
  if (MO.isImm()) {
    unsigned Value = MO.getImm();
    return Value;
  }
  assert(MO.isExpr() && "Operand must be an expression.");

  createFixups(MI, OpNo, Fixups, STI);

  return 0;
}

template <int N>
unsigned
TriCoreMCCodeEmitter::getScaledSImmOpValue(const MCInst &MI, unsigned OpNo,
                                           SmallVectorImpl<MCFixup> &Fixups,
                                           const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpNo);
  if (MO.isImm()) {
    unsigned Value = MO.getImm();
    return (Value >> N);
  }
  assert(MO.isExpr() && "Operand must be an expression.");

  createFixups(MI, OpNo, Fixups, STI);

  return 0;
}

unsigned TriCoreMCCodeEmitter::getSImm4_1(const MCInst &MI, unsigned OpNo,
                                          SmallVectorImpl<MCFixup> &Fixups,
                                          const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpNo);
  if (MO.isImm()) {
    unsigned Value = MO.getImm();
    return (Value >> 1) & 0xf;
  }
  assert(MO.isExpr() && "Operand must be an expression.");

  createFixups(MI, OpNo, Fixups, STI);

  return 0;
}

unsigned TriCoreMCCodeEmitter::getOff18Abs(const MCInst &MI, unsigned OpNo,
                                           SmallVectorImpl<MCFixup> &Fixups,
                                           const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpNo);
  if (MO.isImm()) {
    unsigned Value = MO.getImm();
    return ((Value & 0xf0000000) >> 14) | ((Value & 0x3fff));
  }
  assert(MO.isExpr() && "Operand must be an expression.");

  createFixups(MI, OpNo, Fixups, STI);

  return 0;
}

unsigned TriCoreMCCodeEmitter::getDisp4_16(const MCInst &MI, unsigned OpNo,
                                           SmallVectorImpl<MCFixup> &Fixups,
                                           const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpNo);
  if (MO.isImm()) {
    unsigned Value = MO.getImm();

    return (Value / 2) - 16;
  }
  assert(MO.isExpr() && "Operand must be an expression.");

  createFixups(MI, OpNo, Fixups, STI);

  return 0;
}

unsigned TriCoreMCCodeEmitter::getDisp24Abs(const MCInst &MI, unsigned OpNo,
                                            SmallVectorImpl<MCFixup> &Fixups,
                                            const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpNo);
  if (MO.isImm()) {
    unsigned Value = MO.getImm();
    return ((Value & 0xf0000000) >> 8) | ((Value & 0x1fffff) >> 1);
  }
  assert(MO.isExpr() && "Operand must be an expression.");

  createFixups(MI, OpNo, Fixups, STI);

  return 0;
}

#include "TriCoreGenMCCodeEmitter.inc"