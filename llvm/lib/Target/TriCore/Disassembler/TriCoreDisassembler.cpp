//===-- TriCoreDisassembler.cpp - Disassembler for TriCore ----------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements the TriCoreDisassembler class.
//
//===----------------------------------------------------------------------===//

#include "MCTargetDesc/TriCoreMCTargetDesc.h"
#include "TargetInfo/TriCoreTargetInfo.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCDisassembler/MCDisassembler.h"
#include "llvm/MC/MCFixedLenDisassembler.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/Support/Endian.h"
#include "llvm/Support/TargetRegistry.h"

using namespace llvm;

#define DEBUG_TYPE "tricore-disassembler"

typedef MCDisassembler::DecodeStatus DecodeStatus;

namespace {
class TriCoreDisassembler : public MCDisassembler {

public:
  TriCoreDisassembler(const MCSubtargetInfo &STI, MCContext &Ctx)
      : MCDisassembler(STI, Ctx) {}

  DecodeStatus getInstruction(MCInst &Instr, uint64_t &Size,
                              ArrayRef<uint8_t> Bytes, uint64_t Address,
                              raw_ostream &VStream,
                              raw_ostream &CStream) const override;
};
} // end anonymous namespace

static MCDisassembler *createTriCoreDisassembler(const Target &T,
                                                 const MCSubtargetInfo &STI,
                                                 MCContext &Ctx) {
  return new TriCoreDisassembler(STI, Ctx);
}

extern "C" void LLVMInitializeTriCoreDisassembler() {
  TargetRegistry::RegisterMCDisassembler(getTheTriCoreTarget(),
                                         createTriCoreDisassembler);
}

template <unsigned N>
static DecodeStatus decodeSignedImmediate(MCInst &Inst, uint64_t Imm,
                                          int64_t Address, const void *Decoder);

template <unsigned N>
static DecodeStatus decodeUnsignedImmediate(MCInst &Inst, uint64_t Imm,
                                            int64_t Address,
                                            const void *Decoder);

template <unsigned N, unsigned SHIFT>
static DecodeStatus decodeSImmLsbNIsZero(MCInst &Inst, uint64_t Imm,
                                         int64_t Address, const void *Decoder);

static DecodeStatus decodeSImm4_1(MCInst &Inst, uint64_t Imm, int64_t Address,
                                   const void *Decoder);

template <unsigned N, unsigned SHIFT>
static DecodeStatus decodeUImmLsbNIsZero(MCInst &Inst, uint64_t Imm,
                                         int64_t Address, const void *Decoder);

static DecodeStatus decodeUImm2_l(MCInst &Inst, uint64_t Imm,
                                     int64_t Address, const void *Decoder);

static DecodeStatus decodeSImm9Shift(MCInst &Inst, uint64_t Imm,
                                     int64_t Address, const void *Decoder);

static DecodeStatus decodeSImm9Shift5(MCInst &Inst, uint64_t Imm,
                                     int64_t Address, const void *Decoder);

static DecodeStatus decodeUImm16Shift3(MCInst &Inst, uint64_t Imm,
                                     int64_t Address, const void *Decoder);

static DecodeStatus decodeOff18Abs(MCInst &Inst, uint64_t Imm, int64_t Address,
                                   const void *Decoder);

static DecodeStatus decodeOff18AbsV2(MCInst &Inst, uint64_t Imm,
                                     int64_t Address, const void *Decoder);

static DecodeStatus decodeDisp24Abs(MCInst &Inst, uint64_t Imm, int64_t Address,
                                    const void *Decoder);

static DecodeStatus decode_16_d15dd(MCInst &MI, unsigned insn, uint64_t Address,
                                    const void *Decoder);

static DecodeStatus decode_16_dd15d(MCInst &MI, unsigned insn, uint64_t Address,
                                    const void *Decoder);

static DecodeStatus decode_16_d15cc_uimm4_lsb0(MCInst &MI, unsigned insn,
                                               uint64_t Address,
                                               const void *Decoder);

static DecodeStatus decode_16_d15cc_disp4_16(MCInst &MI, unsigned insn,
                                             uint64_t Address,
                                             const void *Decoder);

static DecodeStatus decode_16_d15cc_SBRN(MCInst &MI, unsigned insn,
                                         uint64_t Address, const void *Decoder);

static DecodeStatus decode_16_d15dc(MCInst &MI, unsigned insn, uint64_t Address,
                                    const void *Decoder);

static DecodeStatus decode_16_d15d_uimm4_lsb0(MCInst &MI, unsigned insn,
                                              uint64_t Address,
                                              const void *Decoder);

static DecodeStatus decode_16_d15d_disp4_16(MCInst &MI, unsigned insn,
                                            uint64_t Address,
                                            const void *Decoder);

static DecodeStatus decode_16_dd15c(MCInst &MI, unsigned insn, uint64_t Address,
                                    const void *Decoder);

template <bool Signed, unsigned shift>
static DecodeStatus decode_16_d15c(MCInst &MI, unsigned insn, uint64_t Address,
                                   const void *Decoder);

static DecodeStatus decode_16_d15d15c(MCInst &MI, unsigned insn,
                                      uint64_t Address, const void *Decoder);

static DecodeStatus decode_16_aad15c(MCInst &MI, unsigned insn,
                                     uint64_t Address, const void *Decoder);

static DecodeStatus decode_16_a10a10c(MCInst &MI, unsigned insn,
                                      uint64_t Address, const void *Decoder);

template <bool isD15>
static DecodeStatus decode_16_x15a10c(MCInst &MI, unsigned insn,
                                      uint64_t Address, const void *Decoder);

template <bool isD15>
static DecodeStatus decode_16_a10cx15(MCInst &MI, unsigned insn,
                                      uint64_t Address, const void *Decoder);

static DecodeStatus decode_16_aa15c(MCInst &MI, unsigned insn, uint64_t Address,
                                    const void *Decoder);

template <unsigned shift>
static DecodeStatus decode_16_da15c(MCInst &MI, unsigned insn, uint64_t Address,
                                    const void *Decoder);

template <unsigned shift, bool isD15>
static DecodeStatus decode_16_acx15(MCInst &MI, unsigned insn, uint64_t Address,
                                    const void *Decoder);

template <unsigned shift, bool isDReg>
static DecodeStatus decode_16_a15cx(MCInst &MI, unsigned insn, uint64_t Address,
                                    const void *Decoder);

template <unsigned shift, bool isD15>
static DecodeStatus decode_16_x15ac(MCInst &MI, unsigned insn, uint64_t Address,
                                    const void *Decoder);

static const unsigned DataRegsDecoderTable[] = {
    TriCore::D0,  TriCore::D1,  TriCore::D2,  TriCore::D3,
    TriCore::D4,  TriCore::D5,  TriCore::D6,  TriCore::D7,
    TriCore::D8,  TriCore::D9,  TriCore::D10, TriCore::D11,
    TriCore::D12, TriCore::D13, TriCore::D14, TriCore::D15};

static const unsigned ExtDataRegsDecoderTable[] = {
    TriCore::E0, TriCore::E2,  TriCore::E4,  TriCore::E6,
    TriCore::E8, TriCore::E10, TriCore::E12, TriCore::E14};

static const unsigned AddrRegsDecoderTable[] = {
    TriCore::A0,  TriCore::A1,  TriCore::A2,  TriCore::A3,
    TriCore::A4,  TriCore::A5,  TriCore::A6,  TriCore::A7,
    TriCore::A8,  TriCore::A9,  TriCore::A10, TriCore::A11,
    TriCore::A12, TriCore::A13, TriCore::A14, TriCore::A15};

static const unsigned ExtAddrRegsDecoderTable[] = {
    TriCore::P0, TriCore::P2,  TriCore::P4,  TriCore::P6,
    TriCore::P8, TriCore::P10, TriCore::P12, TriCore::P14};

static DecodeStatus DecodeDataRegsRegisterClass(MCInst &Inst, uint64_t RegNo,
                                                uint64_t Address,
                                                const void *Decoder) {
  if (RegNo > sizeof(DataRegsDecoderTable)) {
    return MCDisassembler::Fail;
  }

  unsigned Reg = DataRegsDecoderTable[RegNo];
  Inst.addOperand(MCOperand::createReg(Reg));
  return MCDisassembler::Success;
}

static DecodeStatus DecodeAddrRegsRegisterClass(MCInst &Inst, uint64_t RegNo,
                                                uint64_t Address,
                                                const void *Decoder) {
  if (RegNo > sizeof(AddrRegsDecoderTable)) {
    return MCDisassembler::Fail;
  }

  unsigned Reg = AddrRegsDecoderTable[RegNo];
  Inst.addOperand(MCOperand::createReg(Reg));
  return MCDisassembler::Success;
}

static DecodeStatus DecodeExtAddrRegsRegisterClass(MCInst &Inst, uint64_t RegNo,
                                                   uint64_t Address,
                                                   const void *Decoder) {
  if ((RegNo / 2) > sizeof(ExtAddrRegsDecoderTable) || (RegNo % 2 != 0)) {
    return MCDisassembler::Fail;
  }

  unsigned Reg = ExtAddrRegsDecoderTable[RegNo / 2];
  Inst.addOperand(MCOperand::createReg(Reg));
  return MCDisassembler::Success;
}

static DecodeStatus DecodeExtDataRegsRegisterClass(MCInst &Inst, uint64_t RegNo,
                                                   uint64_t Address,
                                                   const void *Decoder) {
  if ((RegNo / 2) > sizeof(ExtDataRegsDecoderTable) || (RegNo % 2 != 0)) {
    return MCDisassembler::Fail;
  }

  unsigned Reg = ExtDataRegsDecoderTable[RegNo / 2];
  Inst.addOperand(MCOperand::createReg(Reg));
  return MCDisassembler::Success;
}

#include "TriCoreGenDisassemblerTables.inc"

template <unsigned N>
static DecodeStatus decodeSignedImmediate(MCInst &Inst, uint64_t Imm,
                                          int64_t Address,
                                          const void *Decoder) {
  assert(isUInt<N>(Imm) && "Invalid immediate");
  Inst.addOperand(MCOperand::createImm(SignExtend64<N>(Imm)));
  return MCDisassembler::Success;
}

template <unsigned N>
static DecodeStatus decodeUnsignedImmediate(MCInst &Inst, uint64_t Imm,
                                            int64_t Address,
                                            const void *Decoder) {
  assert(isUInt<N>(Imm) && "Invalid immediate");
  Inst.addOperand(MCOperand::createImm(Imm));
  return MCDisassembler::Success;
}

template <unsigned N, unsigned SHIFT>
static DecodeStatus decodeSImmLsbNIsZero(MCInst &Inst, uint64_t Imm,
                                         int64_t Address, const void *Decoder) {
  assert(isUInt<N>(Imm) && "Invalid immediate");
  Inst.addOperand(MCOperand::createImm(SignExtend64<N + SHIFT>(Imm << SHIFT)));
  return MCDisassembler::Success;
}

static DecodeStatus decodeSImm4_1(MCInst &Inst, uint64_t Imm,
                                     int64_t Address, const void *Decoder) {
  assert(isUInt<4>(Imm) && "Invalid immediate");
  Inst.addOperand(MCOperand::createImm((Imm << 1) - 32));
  return MCDisassembler::Success;
}

template <unsigned N, unsigned SHIFT>
static DecodeStatus decodeUImmLsbNIsZero(MCInst &Inst, uint64_t Imm,
                                         int64_t Address, const void *Decoder) {
  assert(isUInt<N>(Imm) && "Invalid immediate");
  Inst.addOperand(MCOperand::createImm(Imm << SHIFT));
  return MCDisassembler::Success;
}

static DecodeStatus decodeUImm2_l(MCInst &Inst, uint64_t Imm,
                                     int64_t Address, const void *Decoder) {
  assert(isUInt<1>(Imm) && "Invalid unsigned 1 bit value");
  Inst.addOperand(MCOperand::createImm(Imm));
  return MCDisassembler::Success;
}

static DecodeStatus decodeSImm9Shift(MCInst &Inst, uint64_t Imm,
                                     int64_t Address, const void *Decoder) {
  assert(isUInt<9>(Imm) && "Invalid signed 6 bit shift value");
  Inst.addOperand(MCOperand::createImm(SignExtend64<6>(Imm & 0x3f)));
  return MCDisassembler::Success;
}

static DecodeStatus decodeSImm9Shift5(MCInst &Inst, uint64_t Imm,
                                     int64_t Address, const void *Decoder) {
  assert(isUInt<9>(Imm) && "Invalid signed 5 bit shift value");
  Inst.addOperand(MCOperand::createImm(SignExtend64<5>(Imm & 0x1f)));
  return MCDisassembler::Success;
}

static DecodeStatus decodeUImm16Shift3(MCInst &Inst, uint64_t Imm,
                                     int64_t Address, const void *Decoder) {
  assert(isUInt<16>(Imm) && "Invalid unsigned 16 bit shift value");
  Inst.addOperand(MCOperand::createImm(Imm));
  return MCDisassembler::Success;
}

static DecodeStatus decodeOff18Abs(MCInst &Inst, uint64_t Imm, int64_t Address,
                                   const void *Decoder) {
  assert(isUInt<18>(Imm) && "Invalid absolute address for 18 bit offset");
  Inst.addOperand(
      MCOperand::createImm(((Imm & 0x3c000) << 14) | (Imm & 0x3fff)));
  return MCDisassembler::Success;
}

static DecodeStatus decodeOff18AbsV2(MCInst &Inst, uint64_t Imm,
                                     int64_t Address, const void *Decoder) {
  assert(isUInt<18>(Imm) && "Invalid absolute address for 18 bit offset");
  Inst.addOperand(MCOperand::createImm(Imm << 14));
  return MCDisassembler::Success;
}

static DecodeStatus decodeDisp24Abs(MCInst &Inst, uint64_t Imm, int64_t Address,
                                    const void *Decoder) {
  assert(isUInt<24>(Imm) && "Invalid absolute address for 24 bit displacement");
  Inst.addOperand(
      MCOperand::createImm(((Imm & 0xf00000) << 8) | ((Imm & 0xfffff) << 1)));
  return MCDisassembler::Success;
}

static DecodeStatus decode_16_d15dd(MCInst &MI, unsigned insn, uint64_t Address,
                                    const void *Decoder) {
  unsigned Da = fieldFromInstruction(insn, 8, 4);
  unsigned Db = fieldFromInstruction(insn, 12, 4);

  MI.addOperand(MCOperand::createReg(TriCore::D15));
  MI.addOperand(MCOperand::createReg(DataRegsDecoderTable[Da]));
  MI.addOperand(MCOperand::createReg(DataRegsDecoderTable[Db]));

  return MCDisassembler::Success;
}

static DecodeStatus decode_16_dd15d(MCInst &MI, unsigned insn, uint64_t Address,
                                    const void *Decoder) {
  unsigned Da = fieldFromInstruction(insn, 8, 4);
  unsigned Db = fieldFromInstruction(insn, 12, 4);

  MI.addOperand(MCOperand::createReg(DataRegsDecoderTable[Da]));
  MI.addOperand(MCOperand::createReg(TriCore::D15));
  MI.addOperand(MCOperand::createReg(DataRegsDecoderTable[Db]));

  return MCDisassembler::Success;
}

static DecodeStatus decode_16_dd15c(MCInst &MI, unsigned insn, uint64_t Address,
                                    const void *Decoder) {
  unsigned Da = fieldFromInstruction(insn, 8, 4);
  unsigned Imm = fieldFromInstruction(insn, 12, 4);

  MI.addOperand(MCOperand::createReg(DataRegsDecoderTable[Da]));
  MI.addOperand(MCOperand::createReg(TriCore::D15));
  MI.addOperand(MCOperand::createImm(SignExtend64<4>(Imm)));

  return MCDisassembler::Success;
}

static DecodeStatus decode_16_d15dc(MCInst &MI, unsigned insn, uint64_t Address,
                                    const void *Decoder) {
  unsigned Da = fieldFromInstruction(insn, 8, 4);
  unsigned Imm = fieldFromInstruction(insn, 12, 4);

  MI.addOperand(MCOperand::createReg(TriCore::D15));
  MI.addOperand(MCOperand::createReg(DataRegsDecoderTable[Da]));
  MI.addOperand(MCOperand::createImm(SignExtend64<4>(Imm)));

  return MCDisassembler::Success;
}

static DecodeStatus decode_16_d15d_uimm4_lsb0(MCInst &MI, unsigned insn,
                                              uint64_t Address,
                                              const void *Decoder) {
  unsigned Da = fieldFromInstruction(insn, 12, 4);
  unsigned Imm = fieldFromInstruction(insn, 8, 4);

  MI.addOperand(MCOperand::createReg(TriCore::D15));
  MI.addOperand(MCOperand::createReg(DataRegsDecoderTable[Da]));
  MI.addOperand(MCOperand::createImm(Imm << 1));

  return MCDisassembler::Success;
}

static DecodeStatus decode_16_d15d_disp4_16(MCInst &MI, unsigned insn,
                                            uint64_t Address,
                                            const void *Decoder) {
  unsigned Da = fieldFromInstruction(insn, 12, 4);
  unsigned Imm = fieldFromInstruction(insn, 8, 4);

  MI.addOperand(MCOperand::createReg(TriCore::D15));
  MI.addOperand(MCOperand::createReg(DataRegsDecoderTable[Da]));
  MI.addOperand(MCOperand::createImm((Imm + 16) << 1));

  return MCDisassembler::Success;
}

static DecodeStatus decode_16_d15cc_uimm4_lsb0(MCInst &MI, unsigned insn,
                                               uint64_t Address,
                                               const void *Decoder) {
  unsigned Imm1 = fieldFromInstruction(insn, 12, 4);
  unsigned Imm2 = fieldFromInstruction(insn, 8, 4);

  MI.addOperand(MCOperand::createReg(TriCore::D15));
  MI.addOperand(MCOperand::createImm(SignExtend64<4>(Imm1)));
  MI.addOperand(MCOperand::createImm(Imm2 << 1));

  return MCDisassembler::Success;
}

static DecodeStatus decode_16_d15cc_disp4_16(MCInst &MI, unsigned insn,
                                             uint64_t Address,
                                             const void *Decoder) {
  unsigned Imm1 = fieldFromInstruction(insn, 12, 4);
  unsigned Imm2 = fieldFromInstruction(insn, 8, 4);

  MI.addOperand(MCOperand::createReg(TriCore::D15));
  MI.addOperand(MCOperand::createImm(SignExtend64<4>(Imm1)));
  MI.addOperand(MCOperand::createImm((Imm2 + 16) << 1));

  return MCDisassembler::Success;
}

static DecodeStatus decode_16_d15cc_SBRN(MCInst &MI, unsigned insn,
                                         uint64_t Address,
                                         const void *Decoder) {
  unsigned Imm1 = fieldFromInstruction(insn, 12, 4);
  unsigned Imm2 = fieldFromInstruction(insn, 8, 4);

  MI.addOperand(MCOperand::createReg(TriCore::D15));
  MI.addOperand(MCOperand::createImm(Imm1));
  MI.addOperand(MCOperand::createImm(Imm2 << 1));

  return MCDisassembler::Success;
}

template <bool Signed, unsigned shift>
static DecodeStatus decode_16_d15c(MCInst &MI, unsigned insn, uint64_t Address,
                                   const void *Decoder) {
  unsigned Imm = fieldFromInstruction(insn, 8, 8);

  MI.addOperand(MCOperand::createReg(TriCore::D15));
  if (Signed)
    MI.addOperand(MCOperand::createImm(SignExtend64<8 + shift>(Imm << shift)));
  else
    MI.addOperand(MCOperand::createImm(Imm << shift));

  return MCDisassembler::Success;
}

static DecodeStatus decode_16_d15d15c(MCInst &MI, unsigned insn,
                                      uint64_t Address, const void *Decoder) {
  unsigned Imm = fieldFromInstruction(insn, 8, 8);

  MI.addOperand(MCOperand::createReg(TriCore::D15));
  MI.addOperand(MCOperand::createReg(TriCore::D15));
  MI.addOperand(MCOperand::createImm(Imm));

  return MCDisassembler::Success;
}

static DecodeStatus decode_16_aad15c(MCInst &MI, unsigned insn,
                                     uint64_t Address, const void *Decoder) {
  unsigned Aa = fieldFromInstruction(insn, 8, 4);
  unsigned Ab = fieldFromInstruction(insn, 12, 4);
  unsigned n = fieldFromInstruction(insn, 6, 2);

  MI.addOperand(MCOperand::createReg(AddrRegsDecoderTable[Aa]));
  MI.addOperand(MCOperand::createReg(AddrRegsDecoderTable[Ab]));
  MI.addOperand(MCOperand::createReg(TriCore::D15));
  MI.addOperand(MCOperand::createImm(n));

  return MCDisassembler::Success;
}

static DecodeStatus decode_16_a10a10c(MCInst &MI, unsigned insn,
                                      uint64_t Address, const void *Decoder) {
  unsigned Imm = fieldFromInstruction(insn, 8, 8);

  MI.addOperand(MCOperand::createReg(TriCore::A10));
  MI.addOperand(MCOperand::createReg(TriCore::A10));
  MI.addOperand(MCOperand::createImm(Imm));

  return MCDisassembler::Success;
}

template <bool isD15>
static DecodeStatus decode_16_x15a10c(MCInst &MI, unsigned insn,
                                      uint64_t Address, const void *Decoder) {
  unsigned Imm = fieldFromInstruction(insn, 8, 8);

  if (isD15)
    MI.addOperand(MCOperand::createReg(TriCore::D15));
  else
    MI.addOperand(MCOperand::createReg(TriCore::A15));

  MI.addOperand(MCOperand::createReg(TriCore::A10));
  MI.addOperand(MCOperand::createImm(Imm << 2));

  return MCDisassembler::Success;
}

template <bool isD15>
static DecodeStatus decode_16_a10cx15(MCInst &MI, unsigned insn,
                                      uint64_t Address, const void *Decoder) {
  unsigned Imm = fieldFromInstruction(insn, 8, 8);

  MI.addOperand(MCOperand::createReg(TriCore::A10));
  MI.addOperand(MCOperand::createImm(Imm << 2));
  if (isD15)
    MI.addOperand(MCOperand::createReg(TriCore::D15));
  else
    MI.addOperand(MCOperand::createReg(TriCore::A15));

  return MCDisassembler::Success;
}

static DecodeStatus decode_16_aa15c(MCInst &MI, unsigned insn, uint64_t Address,
                                    const void *Decoder) {
  unsigned Imm = fieldFromInstruction(insn, 12, 4);
  unsigned Reg = fieldFromInstruction(insn, 8, 4);

  MI.addOperand(MCOperand::createReg(AddrRegsDecoderTable[Reg]));
  MI.addOperand(MCOperand::createReg(TriCore::A15));
  MI.addOperand(MCOperand::createImm(Imm << 2));

  return MCDisassembler::Success;
}

template <unsigned shift>
static DecodeStatus decode_16_da15c(MCInst &MI, unsigned insn, uint64_t Address,
                                    const void *Decoder) {
  unsigned Imm = fieldFromInstruction(insn, 12, 4);
  unsigned Reg = fieldFromInstruction(insn, 8, 4);

  MI.addOperand(MCOperand::createReg(DataRegsDecoderTable[Reg]));
  MI.addOperand(MCOperand::createReg(TriCore::A15));
  MI.addOperand(MCOperand::createImm(Imm << shift));

  return MCDisassembler::Success;
}

template <unsigned shift, bool isD15>
static DecodeStatus decode_16_acx15(MCInst &MI, unsigned insn, uint64_t Address,
                                    const void *Decoder) {
  unsigned Imm = fieldFromInstruction(insn, 8, 4);
  unsigned Reg = fieldFromInstruction(insn, 12, 4);

  MI.addOperand(MCOperand::createReg(AddrRegsDecoderTable[Reg]));
  MI.addOperand(MCOperand::createImm(Imm << shift));
  if (isD15)
    MI.addOperand(MCOperand::createReg(TriCore::D15));
  else
    MI.addOperand(MCOperand::createReg(TriCore::A15));

  return MCDisassembler::Success;
}

template <unsigned shift, bool isDReg>
static DecodeStatus decode_16_a15cx(MCInst &MI, unsigned insn, uint64_t Address,
                                    const void *Decoder) {
  unsigned Imm = fieldFromInstruction(insn, 12, 4);
  unsigned Reg = fieldFromInstruction(insn, 8, 4);

  MI.addOperand(MCOperand::createReg(TriCore::A15));
  MI.addOperand(MCOperand::createImm(Imm << shift));
  if (isDReg)
    MI.addOperand(MCOperand::createReg(DataRegsDecoderTable[Reg]));
  else
    MI.addOperand(MCOperand::createReg(AddrRegsDecoderTable[Reg]));

  return MCDisassembler::Success;
}

template <unsigned shift, bool isD15>
static DecodeStatus decode_16_x15ac(MCInst &MI, unsigned insn, uint64_t Address,
                                    const void *Decoder) {
  unsigned Imm = fieldFromInstruction(insn, 8, 4);
  unsigned Reg = fieldFromInstruction(insn, 12, 4);

  if (isD15)
    MI.addOperand(MCOperand::createReg(TriCore::D15));
  else
    MI.addOperand(MCOperand::createReg(TriCore::A15));
  MI.addOperand(MCOperand::createReg(AddrRegsDecoderTable[Reg]));
  MI.addOperand(MCOperand::createImm(Imm << shift));

  return MCDisassembler::Success;
}

DecodeStatus TriCoreDisassembler::getInstruction(MCInst &MI, uint64_t &Size,
                                                 ArrayRef<uint8_t> Bytes,
                                                 uint64_t Address,
                                                 raw_ostream &OS,
                                                 raw_ostream &CS) const {
  uint32_t Insn;
  DecodeStatus Result;

  // It's a 32 bit instruction if bit 0 is 1.
  if ((Bytes[0] & 0x1) == 0x1) {
    if (Bytes.size() < 4) {
      Size = 0;
      return MCDisassembler::Fail;
    }
    Insn = support::endian::read32le(Bytes.data());

    // Calling the auto-generated decoder function.
    Result = decodeInstruction(DecoderTable32, MI, Insn, Address, this, STI);
    Size = 4;
  } else { // It is a 16 bit instruction
    if (Bytes.size() < 2) {
      Size = 0;
      return MCDisassembler::Fail;
    }
    Insn = support::endian::read16le(Bytes.data());

    // Calling the auto-generated decoder function.
    Result = decodeInstruction(DecoderTable16, MI, Insn, Address, this, STI);
    Size = 2;
  }

  return Result;
}