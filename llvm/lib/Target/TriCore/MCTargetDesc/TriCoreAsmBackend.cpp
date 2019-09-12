//===-- TriCoreAsmBackend.cpp - TriCore Assembler Backend -----------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "MCTargetDesc/TriCoreMCTargetDesc.h"
#include "llvm/MC/MCAsmBackend.h"
#include "llvm/MC/MCAssembler.h"
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

  bool fixupNeedsRelaxation(const MCFixup &Fixup, uint64_t Value,
                            const MCRelaxableFragment *DF,
                            const MCAsmLayout &Layout) const override {
    return false;
  }

  unsigned getNumFixupKinds() const override { return 1; }

  bool mayNeedRelaxation(const MCInst &Inst,
                         const MCSubtargetInfo &STI) const override {
    return false;
  }

  void relaxInstruction(const MCInst &Inst, const MCSubtargetInfo &STI,
                        MCInst &Res) const override {

    report_fatal_error("TriCoreAsmBackend::relaxInstruction() unimplemented");
  }

  bool writeNopData(raw_ostream &OS, uint64_t Count) const override;
};

bool TriCoreAsmBackend::writeNopData(raw_ostream &OS, uint64_t Count) const {
  if ((Count % 2) != 0)
    return false;

  for (uint64_t i = 0; i < (Count / 4); i++)
    OS.write("\x0d\0\0\0", 4);

  if ((Count % 4) != 0)
    OS.write("\x00\0", 2);

  return true;
}

void TriCoreAsmBackend::applyFixup(const MCAssembler &Asm, const MCFixup &Fixup,
                                   const MCValue &Target,
                                   MutableArrayRef<char> Data, uint64_t Value,
                                   bool IsResolved,
                                   const MCSubtargetInfo *STI) const {
  return;
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