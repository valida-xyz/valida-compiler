//===-- DelendumDisassembler.cpp - Disassembler for Delendum ------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file is part of the Delendum Disassembler.
//
//===----------------------------------------------------------------------===//

#include "Delendum.h"
#include "DelendumRegisterInfo.h"
#include "DelendumSubtarget.h"
#include "MCTargetDesc/DelendumMCCodeEmitter.h"
#include "MCTargetDesc/DelendumMCTargetDesc.h"
#include "TargetInfo/DelendumTargetInfo.h"

#include "llvm/MC/MCAsmInfo.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCDisassembler/MCDisassembler.h"
#include "llvm/MC/MCDecoderOps.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/Support/Endian.h"
#include "llvm/Support/ErrorHandling.h"

using namespace llvm;

#define DEBUG_TYPE "delendum-disassembler"

typedef MCDisassembler::DecodeStatus DecodeStatus;

static DecodeStatus DecodeImm32(MCInst &Inst, uint64_t Imm, uint64_t Address,
                                const void *Decoder) {
  // TODO
}

#include "DelendumGenDisassemblerTable.inc"

/// A disassembler class for Delendum.
struct DelendumDisassembler : public MCDisassembler {
  DelendumDisassembler(const MCSubtargetInfo &STI, MCContext &Ctx)
      : MCDisassembler(STI, Ctx) {}
  virtual ~DelendumDisassembler() {}

  DecodeStatus getInstruction(MCInst &Instr, uint64_t &Size,
                              ArrayRef<uint8_t> Bytes, uint64_t Address,
                              raw_ostream &CStream) const override;
};

DecodeStatus DelendumDisassembler::getInstruction(MCInst &Instr, uint64_t &Size,
                                                  ArrayRef<uint8_t> Bytes,
                                                  uint64_t Address,
                                                  raw_ostream &CStream) const {
  DecodeStatus Result;
  // TODO
  return Result;
}

static MCDisassembler *createDelendumDisassembler(const Target &T,
                                                  const MCSubtargetInfo &STI,
                                                  MCContext &Ctx) {
  return new DelendumDisassembler(STI, Ctx);
}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeDelendumDisassembler() {
  // Register the disassembler.
  TargetRegistry::RegisterMCDisassembler(getTheDelendumTarget(),
                                         createDelendumDisassembler);
}
