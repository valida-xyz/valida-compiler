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

#include "MCTargetDesc/TriCoreMCTargetDesc.h"
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

  // Right shift the value by N
  template <int N>
  unsigned getScaledSImmOpValue(const MCInst &MI, unsigned OpNo,
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

template <int N>
unsigned
TriCoreMCCodeEmitter::getScaledSImmOpValue(const MCInst &MI, unsigned OpNo,
                                           SmallVectorImpl<MCFixup> &Fixups,
                                           const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpNo);
  assert(MO.isImm() && "Operand must be an immediate.");
  if (MO.isImm()) {
    unsigned Value = MO.getImm();
    return (Value >> N);
  }
  return 0; // to silence warnigns, later relocation will be generated here
}

unsigned TriCoreMCCodeEmitter::getDisp24Abs(const MCInst &MI, unsigned OpNo,
                                            SmallVectorImpl<MCFixup> &Fixups,
                                            const MCSubtargetInfo &STI) const {
  const MCOperand &MO = MI.getOperand(OpNo);
  assert(MO.isImm() && "Operand must be an immediate.");
  if (MO.isImm()) {
    unsigned Value = MO.getImm();
    return ((Value & 0xf0000000) >> 8) | ((Value & 0x1fffff) >> 1);
  }
  return 0; // to silence warnigns, later relocation will be generated here
}

#include "TriCoreGenMCCodeEmitter.inc"