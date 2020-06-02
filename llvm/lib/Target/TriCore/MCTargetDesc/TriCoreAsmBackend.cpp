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

#define GEN_UNCOMPRESS_INSTR
#include "MCTargetDesc/TriCoreInstrCompression.h"

using namespace llvm;

namespace {
class TriCoreAsmBackend : public MCAsmBackend {
  uint8_t OSABI;
  const MCRegisterInfo &MRI;

public:
  TriCoreAsmBackend(uint8_t OSABI, const MCRegisterInfo &MRI)
      : MCAsmBackend(support::little), OSABI(OSABI), MRI(MRI) {}
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
        {"fixup_lha", 12, 20, 0},
        {"fixup_16li", 16, 16, 0},
        {"fixup_16a8", 16, 16, 0},
        {"fixup_16a9", 16, 16, 0},
        {"fixup_16off", 16, 16, 0},
        {"fixup_4rel", 8, 4, MCFixupKindInfo::FKF_IsPCRel},
        {"fixup_4rel2", 8, 4, MCFixupKindInfo::FKF_IsPCRel},
        {"fixup_4rel3", 8, 4, MCFixupKindInfo::FKF_IsPCRel},
        {"fixup_8rel", 8, 8, MCFixupKindInfo::FKF_IsPCRel},
        {"fixup_8off", 8, 8, 0},
        {"fixup_4off", 12, 4, 0},
        {"fixup_4off2", 12, 4, 0},
        {"fixup_4off4", 12, 4, 0},
        {"fixup_42off", 8, 4, 0},
        {"fixup_42off2", 8, 4, 0},
        {"fixup_42off4", 8, 4, 0},
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
  void relaxInstruction(MCInst &Inst,
                        const MCSubtargetInfo &STI) const override;
  bool fixupNeedsRelaxation(const MCFixup &Fixup, uint64_t Value,
                            const MCRelaxableFragment *DF,
                            const MCAsmLayout &Layout) const override;
  bool writeNopData(raw_ostream &OS, uint64_t Count) const override;
};

unsigned TriCoreAsmBackend::getRelaxedOpcode(unsigned Op,
                                             const MCSubtargetInfo &STI) const {
  bool Is32BitAllowed = STI.getFeatureBits()[TriCore::Allow32BitInstructions];

  // Do 16 bit to 16 bit relaxation, which is a late instruction selection.
  // If 32 bit instructions selection not allowed then return with the original
  // opcode.
  switch (Op) {
  default:
    if (!Is32BitAllowed)
      return Op;
    break;
  case TriCore::JEQ_16_d15dc:
    return TriCore::JEQ_16_d15dlc;
  case TriCore::JEQ_16_d15cc:
    return TriCore::JEQ_16_d15clc;
  case TriCore::JNE_16_d15dc:
    return TriCore::JNE_16_d15dlc;
  case TriCore::JNE_16_d15cc:
    return TriCore::JNE_16_d15clc;
  }

  // If 32 bit instruction emission allowed, then check also if the instruction
  // could be relaxed to a 32 bit variant.
  switch (Op) {
  default:
    return Op;
  // 4rel
  case TriCore::JZ_16_dc:
    return TriCore::JEQ_dcc;
  case TriCore::JGEZ_16_dc:
  case TriCore::JGTZ_16_dc:
    return TriCore::JGE_dcc;
  case TriCore::JLEZ_16_dc:
  case TriCore::JLTZ_16_dc:
    return TriCore::JLT_dcc;
  case TriCore::JNZ_16_dc:
    return TriCore::JNE_dcc;
  case TriCore::JNZA_16_ac:
    return TriCore::JNZA_ac;
  case TriCore::JNZT_16_d15cc:
    return TriCore::JNZT_dcc;
  case TriCore::JZA_16_ac:
    return TriCore::JZA_ac;
  case TriCore::JZT_16_d15cc:
    return TriCore::JZT_dcc;
  // 4rel2
  case TriCore::JEQ_16_d15dlc:
    return TriCore::JEQ_ddc;
  case TriCore::JEQ_16_d15clc:
    return TriCore::JEQ_dcc;
  case TriCore::JNE_16_d15dlc:
    return TriCore::JNE_ddc;
  case TriCore::JNE_16_d15clc:
    return TriCore::JNE_dcc;
  // 4rel3
  case TriCore::LOOP_16_ac:
    return TriCore::LOOP_ac;
  // 8rel
  case TriCore::CALL_16:
    return TriCore::CALL;
  case TriCore::J_16:
    return TriCore::J;
  case TriCore::JNZ_16_d15c:
    return TriCore::JNE_dcc;
  case TriCore::JZ_16_d15c:
    return TriCore::JEQ_dcc;
  // 8off
  case TriCore::LDA_16_a15a10c:
    return TriCore::LDA_aalc;
  case TriCore::LDW_16_d15a10c:
    return TriCore::LDW_dalc;
  case TriCore::STA_16_a10ca15:
    return TriCore::STA_alca;
  case TriCore::STW_16_a10cd15:
    return TriCore::STW_alcd;
  // 4off
  case TriCore::LDBU_16_da15c:
    return TriCore::LDBU_dalc;
  case TriCore::STB_16_a15cd:
    return TriCore::STB_alcd;
  // 4off2
  case TriCore::LDH_16_da15c:
    return TriCore::LDH_dalc;
  case TriCore::STH_16_a15cd:
    return TriCore::STH_alcd;
  // 4off4
  case TriCore::LDA_16_aa15c:
    return TriCore::LDA_aalc;
  case TriCore::LDW_16_da15c:
    return TriCore::LDW_dalc;
  case TriCore::STA_16_a15ca:
    return TriCore::STA_alca;
  case TriCore::STW_16_a15cd:
    return TriCore::STW_alcd;
  // 42off
  case TriCore::LDBU_16_d15ac:
    return TriCore::LDBU_dalc;
  case TriCore::STB_16_acd15:
    return TriCore::STB_alcd;
  // 42off2
  case TriCore::LDH_16_d15ac:
    return TriCore::LDH_dalc;
  case TriCore::STH_16_acd15:
    return TriCore::STH_alcd;
  // 4off4
  case TriCore::LDA_16_a15ac:
    return TriCore::LDA_aalc;
  case TriCore::LDW_16_d15ac:
    return TriCore::LDW_dalc;
  case TriCore::STA_16_aca15:
    return TriCore::STA_alca;
  case TriCore::STW_16_acd15:
    return TriCore::STW_alcd;
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
  case TriCore::fixup_4rel3:
    // Relax if the value is out of the range of simm4_1's [-32,-2]
    return Offset > -2 || Offset < -32;
  case TriCore::fixup_8rel:
    // Relax if the value is out of the range of simm8_lsb0's [-256,254]
    return Offset > 254 || Offset < -256;
  case TriCore::fixup_8off:
    // Relax if the value is out of the range of uimm8_lsb00's [0,1020]
    return Offset > 1020 || Offset < 0;
  case TriCore::fixup_4off:
  case TriCore::fixup_42off:
    // Relax if the value is out of the range of uimm4's [0,15]
    return Offset > 15 || Offset < 0;
  case TriCore::fixup_4off2:
  case TriCore::fixup_42off2:
    // Relax if the value is out of the range of uimm4_lsb0's [0,30]
    return Offset > 30 || Offset < 0;
  case TriCore::fixup_4off4:
  case TriCore::fixup_42off4:
    // Relax if the value is out of the range of uimm4_lsb00's [0,60]
    return Offset > 60 || Offset < 0;
  }
}

void TriCoreAsmBackend::relaxInstruction(MCInst &Inst,
                                         const MCSubtargetInfo &STI) const {
  unsigned RelaxedOp = getRelaxedOpcode(Inst.getOpcode(), STI);
  MCInst Res;

  switch (Inst.getOpcode()) {
  default:
    Inst.setOpcode(RelaxedOp);
    break;
  case TriCore::JGEZ_16_dc:
  case TriCore::JGTZ_16_dc:
  case TriCore::JLEZ_16_dc:
  case TriCore::JLTZ_16_dc:
  case TriCore::JNZ_16_d15c:
  case TriCore::JNZ_16_dc:
  case TriCore::JZ_16_d15c:
  case TriCore::JZ_16_dc:
    if (!uncompressInstruction(Res, Inst, MRI, STI))
      llvm_unreachable("Unknown relaxation");
    Inst = std::move(Res);
    break;
  }
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

  case TriCore::fixup_24abs:
  case TriCore::fixup_18abs:
  case TriCore::fixup_16sm:
  case TriCore::fixup_16li:
  case TriCore::fixup_16a8:
  case TriCore::fixup_16a9:
    assert(Value == 0 && "fixup value must be 0");
    return Value;

  case TriCore::fixup_hi:
    return ((Value + 0x8000u) >> 16u) & 0xffffu;

  case TriCore::fixup_lo:
    return Value & 0xffffu;

  case TriCore::fixup_lo2:
    Value = Value & 0xffffu;
    return ((Value & 0xfc00u) >> 4u) | ((Value & 0x3c0u) << 6u) |
           (Value & 0x3fu);

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

  case TriCore::fixup_lha:
    if (!isUInt<32>(Value))
      Ctx.reportError(Fixup.getLoc(), "fixup value out of range");
    if (Value & 0x3fffu)
      Ctx.reportError(Fixup.getLoc(), "invalid fixup range");
    Value >>= 14u;
    return (((Value & 0x3fu) << 4u) | ((Value & 0x3c0u) << 10u) |
        (Value & 0x3c00u) | ((Value & 0x3c000u) >> 14u));

  case TriCore::fixup_16off:
    if (!isInt<16>(Value))
      Ctx.reportError(Fixup.getLoc(), "fixup value out of range");
    Value =
        ((Value << 6u) & 0xf000u) | ((Value >> 4) & 0xfc0u) | (Value & 0x3fu);
    return Value;

  case TriCore::fixup_4rel:
    if (!isUInt<5>(Value))
      Ctx.reportError(Fixup.getLoc(), "fixup value out of range");
    if (Value & 1u)
      Ctx.reportError(Fixup.getLoc(), "fixup must be 2-byte aligned");
    return Value >> 1u;

  case TriCore::fixup_4rel2:
    if (Value > 62 || Value < 32)
      Ctx.reportError(Fixup.getLoc(), "fixup value out of range");
    if (Value & 1u)
      Ctx.reportError(Fixup.getLoc(), "fixup must be 2-byte aligned");
    return (Value >> 1u) - 16;

  case TriCore::fixup_4rel3:
    if ((int64_t)Value < -32 || (int64_t)Value > -2)
      Ctx.reportError(Fixup.getLoc(), "fixup value out of range");
    if (Value & 1u)
      Ctx.reportError(Fixup.getLoc(), "fixup must be 2-byte aligned");
    return (Value >> 1u) & 0xfu;

  case TriCore::fixup_8rel:
    if (!isInt<9>(Value))
      Ctx.reportError(Fixup.getLoc(), "fixup value out of range");
    if (Value & 1u)
      Ctx.reportError(Fixup.getLoc(), "fixup must be 2-byte aligned");
    return (Value >> 1u) & 0xffu;

  case TriCore::fixup_8off:
    if (!isUInt<10>(Value))
      Ctx.reportError(Fixup.getLoc(), "fixup value out of range");
    if (Value & 0b11u)
      Ctx.reportError(Fixup.getLoc(), "fixup must be 4-byte aligned");
    return Value >> 2u;

  case TriCore::fixup_4off:
  case TriCore::fixup_42off:
    if (!isUInt<4>(Value))
      Ctx.reportError(Fixup.getLoc(), "fixup value out of range");
    return Value;

  case TriCore::fixup_4off2:
  case TriCore::fixup_42off2:
    if (!isUInt<5>(Value))
      Ctx.reportError(Fixup.getLoc(), "fixup value out of range");
    if (Value & 1u)
      Ctx.reportError(Fixup.getLoc(), "fixup must be 2-byte aligned");
    return Value >> 1u;

  case TriCore::fixup_4off4:
  case TriCore::fixup_42off4:
    if (!isUInt<6>(Value))
      Ctx.reportError(Fixup.getLoc(), "fixup value out of range");
    if (Value & 0b11u)
      Ctx.reportError(Fixup.getLoc(), "fixup must be 4-byte aligned");
    return Value >> 2u;
  }
}

void TriCoreAsmBackend::applyFixup(const MCAssembler &Asm, const MCFixup &Fixup,
                                   const MCValue &Target,
                                   MutableArrayRef<char> Data, uint64_t Value,
                                   bool IsResolved,
                                   const MCSubtargetInfo *STI) const {
  MCContext &Ctx = Asm.getContext();
  MCFixupKind FixupKind = Fixup.getKind();
  MCFixupKindInfo Info = getFixupKindInfo(FixupKind);

  // Apply any target-specific value adjustments.
  Value = adjustFixupValue(Fixup, Value, Ctx);

  // Nothing to do if Value is 0, since the encoding bits already zeroed out
  if (!Value)
    return;

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
  return new TriCoreAsmBackend(OSABI, MRI);
}