//===-- TriCoreAsmBackend.cpp - TriCore Assembler Backend -----------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "MCTargetDesc/TriCoreFixupKinds.h"
#include "MCTargetDesc/TriCoreMCTargetDesc.h"
#include "llvm/ADT/APInt.h"
#include "llvm/MC/MCAsmBackend.h"
#include "llvm/MC/MCAssembler.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCDirectives.h"
#include "llvm/MC/MCELFObjectWriter.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/MC/MCFixupKindInfo.h"
#include "llvm/MC/MCObjectWriter.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/MC/MCSymbol.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Support/raw_ostream.h"

using namespace llvm;

namespace {
class TriCoreAsmBackend : public MCAsmBackend {
  uint8_t OSABI;

public:
  TriCoreAsmBackend(uint8_t OSABI)
      : MCAsmBackend(support::little), OSABI(OSABI) {}
  ~TriCoreAsmBackend() override {}

  void applyFixup(const MCAssembler &Asm, const MCFixup &Fixup,
                  const MCValue &Target, MutableArrayRef<char> Data,
                  uint64_t Value, bool IsResolved,
                  const MCSubtargetInfo *STI) const override;

  std::unique_ptr<MCObjectTargetWriter>
  createObjectTargetWriter() const override;

  unsigned getNumFixupKinds() const override {
    return TriCore::NumTargetFixupKinds;
  }

  const MCFixupKindInfo &getFixupKindInfo(MCFixupKind Kind) const override {
    const static MCFixupKindInfo Infos[TriCore::NumTargetFixupKinds] = {
        // This table must be in the same order as the enum in
        // TriCoreFixupKinds.h.
        {"fixup_none", 0, 0, 0},
        {"fixup_24rel", 8, 24, MCFixupKindInfo::FKF_IsPCRel},
        {"fixup_24abs", 8, 24, 0},
        {"fixup_16sm", 16, 16, 0},
        {"fixup_hi", 12, 16, 0},
        {"fixup_lo", 12, 16, 0},
        {"fixup_lo2", 16, 16, 0},
        {"fixup_18abs", 12, 20, 0},
        {"fixup_15rel", 16, 15, MCFixupKindInfo::FKF_IsPCRel},
        {"fixup_4rel", 8, 4,
         MCFixupKindInfo::FKF_IsPCRel | MCFixupKindInfo::FKF_Constant},
        {"fixup_4rel2", 8, 4,
         MCFixupKindInfo::FKF_IsPCRel | MCFixupKindInfo::FKF_Constant},
    };

    static_assert((array_lengthof(Infos)) == TriCore::NumTargetFixupKinds,
                  "Not all fixup kinds added to Infos array");

    if (Kind < FirstTargetFixupKind)
      return MCAsmBackend::getFixupKindInfo(Kind);

    return Infos[Kind - FirstTargetFixupKind];
  }

  bool mayNeedRelaxation(const MCInst &Inst,
                         const MCSubtargetInfo &STI) const override;
  unsigned getRelaxedOpcode(unsigned Op, const MCSubtargetInfo &STI) const;
  void relaxInstruction(const MCInst &Inst, const MCSubtargetInfo &STI,
                        MCInst &Res) const override;
  bool fixupNeedsRelaxation(const MCFixup &Fixup, uint64_t Value,
                            const MCRelaxableFragment *DF,
                            const MCAsmLayout &Layout) const override;
  bool writeNopData(raw_ostream &OS, uint64_t Count) const override;
};

unsigned TriCoreAsmBackend::getRelaxedOpcode(unsigned Op,
                                             const MCSubtargetInfo &STI) const {
  bool Is32BitAllowed = STI.getFeatureBits()[TriCore::Allow32BitInstructions];

  switch (Op) {
  default:
    return Op;
  case TriCore::JEQ_16_d15dc:
    return TriCore::JEQ_16_d15dlc;
  case TriCore::JNE_16_d15dc:
    return TriCore::JNE_16_d15dlc;
  case TriCore::JEQ_16_d15dlc:
    return Is32BitAllowed ? TriCore::JEQ_ddc : Op;
  case TriCore::JNE_16_d15dlc:
    return Is32BitAllowed ? TriCore::JNE_ddc : Op;
  }
}

bool TriCoreAsmBackend::mayNeedRelaxation(const MCInst &Inst,
                                          const MCSubtargetInfo &STI) const {
  if (getRelaxedOpcode(Inst.getOpcode(), STI) != Inst.getOpcode())
    return true;

  return false;
}

bool TriCoreAsmBackend::fixupNeedsRelaxation(const MCFixup &Fixup,
                                             uint64_t Value,
                                             const MCRelaxableFragment *DF,
                                             const MCAsmLayout &Layout) const {

  int64_t Offset = int64_t(Value);

  switch (Fixup.getTargetKind()) {
  default:
    return false;
  case TriCore::fixup_4rel:
    // Relax if the value is out of the range of uimm4_lsb0's [0,30]
    return Offset > 30 || Offset < 0;
  case TriCore::fixup_4rel2:
    // Relax if the value is out of the range of disp4_16's [32,62]
    return Offset > 62 || Offset < 32;
  }
}

void TriCoreAsmBackend::relaxInstruction(const MCInst &Inst,
                                         const MCSubtargetInfo &STI,
                                         MCInst &Res) const {
  unsigned RelaxedOp = getRelaxedOpcode(Inst.getOpcode(), STI);

  // We don't need to change the operands only we just need to update
  // to the proper opcode.
  Res = Inst;
  Res.setOpcode(RelaxedOp);
}

bool TriCoreAsmBackend::writeNopData(raw_ostream &OS, uint64_t Count) const {
  if ((Count % 2) != 0)
    return false;

  for (uint64_t i = 0; i < (Count / 4); i++)
    OS.write("\x0d\0\0\0", 4);

  if ((Count % 4) != 0)
    OS.write("\x00\0", 2);

  return true;
}

static uint64_t adjustFixupValue(const MCFixup &Fixup, uint64_t Value,
                                 MCContext &Ctx) {
  unsigned Kind = Fixup.getTargetKind();
  switch (Kind) {
  default:
    llvm_unreachable("Unknown fixup kind!");
  case FK_Data_1:
  case FK_Data_2:
  case FK_Data_4:
  case FK_Data_8:
    return Value;
  case TriCore::fixup_hi:
    return ((Value + 0x8000u) >> 16u) & 0xffffu;
  case TriCore::fixup_lo:
  case TriCore::fixup_lo2:
    return Value & 0xffffu;
  case TriCore::fixup_24rel:
    if (!isInt<25>(Value))
      Ctx.reportError(Fixup.getLoc(), "fixup value out of range");
    if (Value & 1)
      Ctx.reportError(Fixup.getLoc(), "fixup must be 2-byte aligned");
    Value = (Value >> 1) & 0xffffff;
    return ((Value & 0xff0000) >> 16) | ((Value & 0xffff) << 8);
  case TriCore::fixup_15rel:
    if (!isInt<16>(Value))
      Ctx.reportError(Fixup.getLoc(), "fixup value out of range");
    if (Value & 1)
      Ctx.reportError(Fixup.getLoc(), "fixup must be 2-byte aligned");
    return (Value >> 1) & 0x7fff;
  case TriCore::fixup_4rel:
    if (!isUInt<5>(Value))
      Ctx.reportError(Fixup.getLoc(), "fixup value out of range");
    if (Value & 1)
      Ctx.reportError(Fixup.getLoc(), "fixup must be 2-byte aligned");
    return (Value >> 1) & 0x1f;
  case TriCore::fixup_4rel2:
    if (Value > 62 || Value < 32)
      Ctx.reportError(Fixup.getLoc(), "fixup value out of range");
    if (Value & 1)
      Ctx.reportError(Fixup.getLoc(), "fixup must be 2-byte aligned");
    return (Value >> 1) - 16;
  }
}

void TriCoreAsmBackend::applyFixup(const MCAssembler &Asm, const MCFixup &Fixup,
                                   const MCValue &Target,
                                   MutableArrayRef<char> Data, uint64_t Value,
                                   bool IsResolved,
                                   const MCSubtargetInfo *STI) const {
  MCContext &Ctx = Asm.getContext();
  MCFixupKindInfo Info = getFixupKindInfo(Fixup.getKind());

  // Nothing to do if Value is 0, since the encoding bits already zeroed out
  if (!Value)
    return;

  // Apply any target-specific value adjustments.
  Value = adjustFixupValue(Fixup, Value, Ctx);

  // Shift the value into position.
  Value <<= Info.TargetOffset;

  unsigned Offset = Fixup.getOffset();
  unsigned NumBytes = alignTo(Info.TargetSize + Info.TargetOffset, 8) / 8;

  assert(Offset + NumBytes <= Data.size() && "Invalid fixup offset!");

  // For each byte of the fragment that the fixup touches, mask in the
  // bits from the fixup value.
  for (unsigned i = 0; i != NumBytes; ++i) {
    Data[Offset + i] |= uint8_t((Value >> (i * 8)) & 0xff);
  }
}

std::unique_ptr<MCObjectTargetWriter>
TriCoreAsmBackend::createObjectTargetWriter() const {
  return createTriCoreELFObjectWriter(OSABI);
}

} // end anonymous namespace

MCAsmBackend *llvm::createTriCoreAsmBackend(const Target &T,
                                            const MCSubtargetInfo &STI,
                                            const MCRegisterInfo &MRI,
                                            const MCTargetOptions &Options) {
  const Triple &TT = STI.getTargetTriple();
  uint8_t OSABI = MCELFObjectTargetWriter::getOSABI(TT.getOS());
  return new TriCoreAsmBackend(OSABI);
}