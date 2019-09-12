//===-- TriCoreELFObjectWriter.cpp - TriCore ELF Writer -------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "MCTargetDesc/TriCoreMCTargetDesc.h"
#include "llvm/MC/MCELFObjectWriter.h"
#include "llvm/MC/MCFixup.h"
#include "llvm/MC/MCObjectWriter.h"
#include "llvm/Support/ErrorHandling.h"

using namespace llvm;

namespace {
class TriCoreELFObjectWriter : public MCELFObjectTargetWriter {
public:
  TriCoreELFObjectWriter(uint8_t OSABI);

  ~TriCoreELFObjectWriter() override;

protected:
  unsigned getRelocType(MCContext &Ctx, const MCValue &Target,
                        const MCFixup &Fixup, bool IsPCRel) const override;
};
} // namespace

TriCoreELFObjectWriter::TriCoreELFObjectWriter(uint8_t OSABI)
    : MCELFObjectTargetWriter(/* Is64Bit */ false, OSABI, ELF::EM_TRICORE,
                              /*HasRelocationAddend*/ true) {}

TriCoreELFObjectWriter::~TriCoreELFObjectWriter() {}

unsigned TriCoreELFObjectWriter::getRelocType(MCContext &Ctx,
                                              const MCValue &Target,
                                              const MCFixup &Fixup,
                                              bool IsPCRel) const {
  report_fatal_error("invalid fixup kind!");
}

std::unique_ptr<MCObjectTargetWriter>
llvm::createTriCoreELFObjectWriter(uint8_t OSABI) {
  return std::make_unique<TriCoreELFObjectWriter>(OSABI);
}