//==-- TriCoreInstrInfoTC161.td                              ---*- tablegen -*-//
// Target Description for TriCore TC1.61
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file describes the TriCore TC1.61 instructions.
//
//===----------------------------------------------------------------------===//

let ISAPredicates = [HasTC161] in {

//===----------------------------------------------------------------------===//
//  2.1 Integer Arithmetic.
//

// 2.1.1 Move.

// MOV
let isMoveImm = 1 in {
  def MOV_dc      : MOVE_RLC<0x3B, "mov", simm16_RLC>;
  def MOV_ec      : MOVE_RLC<0xFB, "mov", simm16_RLC, ExtDataRegs>;
} // isMoveImm = 1

let isMoveReg = 1 in {
  let n = 0, s1 = 0 in {
    def MOV_dd    :  RR<0x0B, 0x1F, (outs DataRegs:$d), (ins DataRegs:$s2),
                        "mov", "\t$d, $s2">;

    def MOV_ed    :  RR<0x0B, 0x80, (outs ExtDataRegs:$d), (ins DataRegs:$s2),
                        "mov", "\t$d, $s2">;
  } // n = 0, s1 = 0

  let n = 0 in
  def MOV_edd     :  RR<0x0B, 0x81, (outs ExtDataRegs:$d),
                        (ins DataRegs:$s1, DataRegs:$s2),
                        "mov", "\t$d, $s1, $s2">;
} // isMoveReg = 1

let isMoveImm = 1 in {
  let DecoderMethod = "decode_16_d15c</*Signed*/ false, /*shift*/ 0>" in
  def MOV_16_d15c :  SC<0xDA, (outs ImplDataReg:$d15), (ins uimm8:$const8),
                        "mov", "\t$d15, $const8">;

  def MOV_16_dc   : SRC<0x82, (outs DataRegs:$s1_d), (ins simm4:$const4),
                        "mov", "\t$s1_d, $const4">;

  def MOV_16_ec   : SRC<0xD2, (outs ExtDataRegs:$s1_d), (ins simm4:$const4),
                        "mov", "\t$s1_d, $const4">;
} // isMoveImm = 1

let isMoveReg = 1 in
def MOV_16_dd     : SRR<0x02, (outs DataRegs:$s1_d), (ins DataRegs:$s2),
                        "mov", "\t$s1_d, $s2">;

let isMoveImm = 1 in {
  // MOV.U
  def MOVU_dc     : MOVE_RLC<0xBB, "mov.u">;

  // MOVH
  def MOVH_dc     : MOVE_RLC<0x7B, "movh">;
} // isMoveImm = 1

// 2.1.2 Addition and Subtraction.

let Defs = [PSW] in {
  let isAdd = 1 in {
    // ADD
    def ADD_ddc        :  ADDSUB_RC<0x8B, 0x00, "add">;

    let isCommutable = 1 in
    def ADD_ddd        :  ADDSUB_RR<0x0B, 0x00, "add">;

    let Constraints = "$s1_d = $src" in
    def ADD_16_dc      : SRC<0xC2, (outs DataRegs:$s1_d),
                            (ins DataRegs:$src, simm4:$const4),
                            "add", "\t$s1_d, $const4">;

    let DecoderMethod = "decode_16_dd15c" in
    def ADD_16_dd15c   : SRC<0x92, (outs DataRegs:$s1_d),
                            (ins ImplDataReg:$d15, simm4:$const4),
                            "add", "\t$s1_d, $d15, $const4">;

    let DecoderMethod = "decode_16_d15dc" in
    def ADD_16_d15dc   : SRC<0x9A, (outs ImplDataReg:$d15),
                            (ins DataRegs:$s1_d, simm4:$const4),
                            "add", "\t$d15, $s1_d, $const4">;

    def ADD_16_dd      :  ADDSUB_SRR<0x42, "add">;

    let DecoderMethod = "decode_16_dd15d" in
    def ADD_16_dd15d   : SRR<0x12, (outs DataRegs:$s1_d),
                            (ins ImplDataReg:$d15, DataRegs:$s2),
                            "add", "\t$s1_d, $d15, $s2">;

    let DecoderMethod = "decode_16_d15dd" in
    def ADD_16_d15dd   : SRR<0x1A, (outs ImplDataReg:$d15),
                            (ins DataRegs:$s1_d, DataRegs:$s2),
                            "add", "\t$d15, $s1_d, $s2">;

    // ADDC
    let Uses = [PSW] in {
      def ADDC_ddc     :  ADDSUB_RC<0x8B, 0x05, "addc">;

      let isCommutable = 1 in
      def ADDC_ddd     :  ADDSUB_RR<0x0B, 0x05, "addc">;
    } // Uses = [PSW]

    // ADDI
    def ADDI_ddc       : RLC<0x1B, (outs DataRegs:$d),
                            (ins DataRegs:$s1, simm16_RLC:$const16),
                            "addi", "\t$d, $s1, $const16">;

    // ADDIH
    def ADDIH_ddc      : RLC<0x9B, (outs DataRegs:$d),
                            (ins DataRegs:$s1, uimm16_RLC:$const16),
                            "addih", "\t$d, $s1, $const16">;

    // ADDS
    def ADDS_ddc       :  ADDSUB_RC<0x8B, 0x02, "adds">;

    let isCommutable = 1 in
    def ADDS_ddd       :  ADDSUB_RR<0x0B, 0x02, "adds">;

    def ADDS_16_dd     :  ADDSUB_SRR<0x22, "adds">;

    // ADDS.U
    def ADDSU_ddc      :  ADDSUB_RC<0x8B, 0x03, "adds.u">;

    let isCommutable = 1 in
    def ADDSU_ddd      :  ADDSUB_RR<0x0B, 0x03, "adds.u">;

    // ADDX
    def ADDX_ddc       :  ADDSUB_RC<0x8B, 0x04, "addx">;

    let isCommutable = 1 in
    def ADDX_ddd       :  ADDSUB_RR<0x0B, 0x04, "addx">;
  } // isAdd = 1

  // SUB
  def SUB_ddd          :  ADDSUB_RR<0x0B, 0x08, "sub">;
  def SUB_16_dd        :  ADDSUB_SRR<0xA2, "sub">;

  let DecoderMethod = "decode_16_dd15d" in
  def SUB_16_dd15d     : SRR<0x52, (outs DataRegs:$s1_d),
                            (ins ImplDataReg:$d15, DataRegs:$s2),
                            "sub", "\t$s1_d, $d15, $s2">;

  let DecoderMethod = "decode_16_d15dd" in
  def SUB_16_d15dd     : SRR<0x5A, (outs ImplDataReg:$d15),
                              (ins DataRegs:$s1_d, DataRegs:$s2),
                              "sub", "\t$d15, $s1_d, $s2">;

  // SUBC
  let Uses = [PSW] in
  def SUBC_ddd         :  ADDSUB_RR<0x0B, 0x0D, "subc">;

  // SUBS
  def SUBS_ddd         :  ADDSUB_RR<0x0B, 0x0A, "subs">;
  def SUBS_16_dd       :  ADDSUB_SRR<0x62, "subs">;

  // SUBS.U
  def SUBSU_ddd        :  ADDSUB_RR<0x0B, 0x0B, "subs.u">;

  // SUBX
  def SUBX_ddd         :  ADDSUB_RR<0x0B, 0x0C, "subx">;

  // RSUB
  def RSUB_ddc         :  ADDSUB_RC<0x8B, 0x08, "rsub">;

  let Constraints = "$s1_d = $src" in
  def RSUB_16_d        :  SR<0x32, 0x05, (outs DataRegs:$s1_d),
                            (ins DataRegs:$src), "rsub", "\t$s1_d">;

  // RSUBS
  def RSUBS_ddc        :  ADDSUB_RC<0x8B, 0x0A, "rsubs">;

  // RSUBS.U
  def RSUBSU_ddc       :  ADDSUB_RC<0x8B, 0x0B, "rsubs.u">;
} // Defs = [PSW]

// 2.1.3 Multiply and multiply-add.
let Defs = [PSW] in {
  // MUL
  def MUL_ddc        :  MULTIPLY_RC<0x53,    0x01, "mul"    >;
  def MUL_edc        :  MULTIPLY_RC<0x53,    0x03, "mul",  simm9, ExtDataRegs >;
  def MUL_ddd        :  MULTIPLY_RR2<0x73,   0x0A, "mul"    >;
  def MUL_edd        :  MULTIPLY_RR2<0x73,   0x6A, "mul",         ExtDataRegs >;

  let Constraints = "$s1_d = $src" in
  def MUL_16_dd      :  SRR<0xE2, (outs DataRegs:$s1_d),
                              (ins DataRegs:$src, DataRegs:$s2),
                              "mul", "\t$s1_d, $s2">;

  // MULS
  def MULS_ddc       :  MULTIPLY_RC<0x53,    0x05, "muls"   >;
  def MULS_ddd       :  MULTIPLY_RR2<0x73,   0x8A, "muls"   >;

  // MUL.U
  def MULU_edc       :  MULTIPLY_RC<0x53,    0x02, "mul.u", uimm9, ExtDataRegs>;
  def MULU_edd       :  MULTIPLY_RR2<0x73,   0x68, "mul.u", ExtDataRegs       >;

  // MULS.U
  def MULSU_ddc      :  MULTIPLY_RC<0x53 ,   0x04, "muls.u", uimm9>;
  def MULSU_ddd      :  MULTIPLY_RR2<0x73,   0x88, "muls.u"       >;

  // MADD
  def MADD_dddc      :  MULTIPLY_RCR<0x13,   0x01, "madd"   >;
  def MADD_eedc      :  MULTIPLY_RCR_E<0x13, 0x03, "madd"   >;
  def MADD_dddd      :  MULTIPLY_RRR2<0x03,  0x0A, "madd"                >;
  def MADD_eedd      :  MULTIPLY_RRR2<0x03,  0x6A, "madd", ExtDataRegs   >;

  // MADDS
  def MADDS_dddc     :  MULTIPLY_RCR<0x13,   0x05, "madds"               >;
  def MADDS_eedc     :  MULTIPLY_RCR_E<0x13, 0x07, "madds"  >;
  def MADDS_dddd     :  MULTIPLY_RRR2<0x03,  0x8A, "madds"  >;
  def MADDS_eedd     :  MULTIPLY_RRR2<0x03,  0xEA, "madds", ExtDataRegs  >;

  // MADD.U
  def MADDU_eedc     :  MULTIPLY_RCR_E<0x13, 0x02, "madd.u", uimm9       >;
  def MADDU_eedd     :  MULTIPLY_RRR2<0x03,  0x68, "madd.u", ExtDataRegs >;

  // MADDS.U
  def MADDSU_dddc    :  MULTIPLY_RCR<0x13,   0x04, "madds.u", uimm9      >;
  def MADDSU_eedc    :  MULTIPLY_RCR_E<0x13, 0x06, "madds.u", uimm9      >;
  def MADDSU_dddd    :  MULTIPLY_RRR2<0x03,  0x88, "madds.u">;
  def MADDSU_eedd    :  MULTIPLY_RRR2<0x03,  0xE8, "madds.u", ExtDataRegs>;

  // MSUB
  def MSUB_dddc      :  MULTIPLY_RCR<0x33,   0x01, "msub"   >;
  def MSUB_eedc      :  MULTIPLY_RCR_E<0x33, 0x03, "msub"   >;
  def MSUB_dddd      :  MULTIPLY_RRR2<0x23,  0x0A, "msub"   >;
  def MSUB_eedd      :  MULTIPLY_RRR2<0x23,  0x6A, "msub",    ExtDataRegs>;

  // MSUBS
  def MSUBS_dddc     :  MULTIPLY_RCR<0x33,   0x05, "msubs"  >;
  def MSUBS_eedc     :  MULTIPLY_RCR_E<0x33, 0x07, "msubs"  >;
  def MSUBS_dddd     :  MULTIPLY_RRR2<0x23,  0x8A, "msubs"               >;
  def MSUBS_eedd     :  MULTIPLY_RRR2<0x23,  0xEA, "msubs", ExtDataRegs  >;

  // MSUB.U
  def MSUBU_eedc     :  MULTIPLY_RCR_E<0x33, 0x02, "msub.u", uimm9       >;
  def MSUBU_eedd     :  MULTIPLY_RRR2<0x23,  0x68, "msub.u", ExtDataRegs >;

  // MSUBS.U
  def MSUBSU_dddc    :  MULTIPLY_RCR<0x33,   0x04, "msubs.u", uimm9      >;
  def MSUBSU_eedc    :  MULTIPLY_RCR_E<0x33, 0x06, "msubs.u", uimm9      >;
  def MSUBSU_dddd    :  MULTIPLY_RRR2<0x23,  0x88, "msubs.u"             >;
  def MSUBSU_eedd    :  MULTIPLY_RRR2<0x23,  0xE8, "msubs.u", ExtDataRegs>;
} // Defs = [PSW]

// 2.1.4 Division.

let n = 0, s1 = 0 in {
  // DVADJ
  def DVADJ_eed          :  RRR<0x6B, 0x0D, (outs ExtDataRegs:$d),
                                      (ins ExtDataRegs:$s3, DataRegs:$s2),
                                      "dvadj", "\t$d, $s3, $s2">;
} // n = 0, s1 = 0

let n = 1 in {
  // DIV
  def DIV_edd              :  DIV_RR<0x4B, 0x20, "div">;

  // DIV.U
  def DIVU_edd             :  DIV_RR<0x4B, 0x21, "div.u">;
} // n = 1

let n = 0 in {
  // DVINIT
  def DVINIT_edd           :  DIV_RR<0x4B, 0x1A, "dvinit">;

  // DVINIT.U
  def DVINITU_edd          :  DIV_RR<0x4B, 0x0A, "dvinit.u">;

  // DVINIT.B
  def DVINITB_edd          :  DIV_RR<0x4B, 0x5A, "dvinit.b">;

  // DVINIT.BU
  def DVINITBU_edd         :  DIV_RR<0x4B, 0x4A, "dvinit.bu">;

  // DVINIT.H
  def DVINITH_edd          :  DIV_RR<0x4B, 0x3A, "dvinit.h">;

  // DVINIT.HU
  def DVINITHU_edd         :  DIV_RR<0x4B, 0x2A, "dvinit.hu">;

  let s1 = 0 in {
    // DVSTEP
    def DVSTEP_eed         :  RRR<0x6B, 0x0F, (outs ExtDataRegs:$d),
                                        (ins ExtDataRegs:$s3, DataRegs:$s2),
                                        "dvstep", "\t$d, $s3, $s2">;

    // DVSTEP.U
    def DVSTEPU_eed        :  RRR<0x6B, 0x0E, (outs ExtDataRegs:$d),
                                        (ins ExtDataRegs:$s3, DataRegs:$s2),
                                        "dvstep.u", "\t$d, $s3, $s2">;
  } // s1 = 0
} // n = 0

// 2.1.5 Absolute Value, Absolute Difference

let Defs = [PSW] in {
  let s1 = 0, n = 0 in{
    // ABS
    def ABS_dd       :  RR<0x0B, 0x1C, (outs DataRegs:$d),
                           (ins DataRegs:$s2),
                           "abs", "\t$d, $s2">;

    // ABSS
    def ABSS_dd      :  RR<0x0B, 0x1D, (outs DataRegs:$d),
                           (ins DataRegs:$s2),
                           "abss", "\t$d, $s2">;
  } // s1 = 0, n = 0

  // ABSDIF
  def ABSDIF_ddc     :  RC<0x8B, 0x0E,  (outs DataRegs:$d),
                           (ins DataRegs:$s1, simm9:$const9),
                           "absdif", "\t$d, $s1, $const9">;
  let n = 0, isCommutable = 1 in
  def ABSDIF_ddd     :  RR<0x0B, 0x0E, (outs DataRegs:$d),
                           (ins DataRegs:$s1, DataRegs:$s2),
                           "absdif", "\t$d, $s1, $s2">;

  // ABSDIFS
  def ABSDIFS_ddc    :  RC<0x8B, 0x0F, (outs DataRegs:$d),
                           (ins DataRegs:$s1, simm9:$const9),
                           "absdifs", "\t$d, $s1, $const9">;
  let n = 0, isCommutable = 1 in
  def ABSDIFS_ddd    :  RR<0x0B, 0x0F, (outs DataRegs:$d),
                           (ins DataRegs:$s1, DataRegs:$s2),
                           "absdifs", "\t$d, $s1, $s2">;
} // Defs = [PSW]

// 2.1.6 Min, Max, Saturate

// MAX
def MAX_ddc          :   MMS_RC<0x8B, 0x1A, "max"         >;
def MAX_ddd          :   MMS_RR<0x0B, 0x1A, "max"         >;

// MAX.U
def MAXU_ddc         :   MMS_RC<0x8B, 0x1B, "max.u", uimm9>;
def MAXU_ddd         :   MMS_RR<0x0B, 0x1B, "max.u"       >;

// MIN
def MIN_ddc          :   MMS_RC<0x8B, 0x18, "min"         >;
def MIN_ddd          :   MMS_RR<0x0B, 0x18, "min"         >;

// MIN.U
def MINU_ddc         :   MMS_RC<0x8B, 0x19, "min.u", uimm9>;
def MINU_ddd         :   MMS_RR<0x0B, 0x19, "min.u"       >;

// SAT.B
def SATB_dd          :   MMS_RR_NOS2<0x0B, 0x5E, "sat.b"  >;
def SATB_16_d        :   MMS_SR<0x32,      0x00, "sat.b"  >;

// SAT.BU
def SATBU_dd         :   MMS_RR_NOS2<0x0B, 0x5F, "sat.bu" >;
def SATBU_16_d       :   MMS_SR<0x32,      0x01, "sat.bu" >;

// SAT.H
def SATH_dd          :   MMS_RR_NOS2<0x0B, 0x7E, "sat.h"  >;
def SATH_16_d        :   MMS_SR<0x32,      0x02, "sat.h"  >;

// SAT.HU
def SATHU_dd         :   MMS_RR_NOS2<0x0B, 0x7F, "sat.hu" >;
def SATHU_16_d       :   MMS_SR<0x32,      0x03, "sat.hu" >;

// 2.1.7. Conditional Arithmetic Instructions.

let Defs = [PSW] in {
  // CADD
  def CADD_dddc        :  CARI_RCR<0xAB, 0x00, "cadd">;
  def CADD_dddd        :  CARI_RRR<0x2B, 0x00, "cadd">;
  def CADD_16_dd15c    :  CARI_SRC<0x8A, "cadd">;

  // CADDN
  def CADDN_dddc       :  CARI_RCR<0xAB, 0x01, "caddn">;
  def CADDN_dddd       :  CARI_RRR<0x2B, 0x01, "caddn">;
  def CADDN_16_dd15c   :  CARI_SRC<0xCA, "caddn">;

  // CSUB
  def CSUB_dddd        :  CARI_RRR<0x2B, 0x02, "csub">;

  // CSUBN
  def CSUBN_dddd       :  CARI_RRR<0x2B, 0x03, "csubn">;
} // Defs = [PSW]

let isReMaterializable = 1 in {
  let isSelect = 1 in {
    // SEL
    def SEL_dddc       :  CARI_RCR<0xAB, 0x04, "sel">;
    def SEL_dddd       :  CARI_RRR<0x2B, 0x04, "sel">;

    // SELN
    def SELN_dddc      :  CARI_RCR<0xAB, 0x05, "seln">;
    def SELN_dddd      :  CARI_RRR<0x2B, 0x05, "seln">;

    // CMOV
    def CMOV_16_dd15c  :  CARI_SRC<0xAA, "cmov">;

    def CMOV_16_dd15d  :  SRR<0x2A, (outs DataRegs:$s1_d),
                            (ins ImplDataReg:$d15, DataRegs:$s2),
                            "cmov", "\t$s1_d, $d15, $s2">;
  } // isSelect = 1

  // CMOVN
  def CMOVN_16_dd15c   :  CARI_SRC<0xEA, "cmovn">;

  def CMOVN_16_dd15d   :  SRR<0x6A, (outs DataRegs:$s1_d),
                          (ins ImplDataReg:$d15, DataRegs:$s2),
                          "cmovn", "\t$s1_d, $d15, $s2">;
} // isReMaterializable = 1

// 2.1.8 Logical.

// AND
def AND_ddc          :  LOGIC_RC<0x8F, 0x08, "and">;
def AND_ddd          :  LOGIC_RR<0x0F, 0x08, "and">;

let Constraints = "$d15 = $src", DecoderMethod = "decode_16_d15d15c" in
def AND_16_d15c      :  SC<0x16, (outs ImplDataReg:$d15),
                           (ins ImplDataReg:$src, uimm8:$const8),
                           "and", "\t$d15, $const8">;

def AND_16_dd        :  LOGIC_SRR<0x26,      "and">;

let isCommutable = 0 in {
  // ANDN
  def ANDN_ddc       :  LOGIC_RC<0x8F, 0x0E, "andn">;
  def ANDN_ddd       :  LOGIC_RR<0x0F, 0x0E, "andn">;
} // isCommutable = 0

// NAND
def NAND_ddc         :  LOGIC_RC<0x8F, 0x09, "nand">;
def NAND_ddd         :  LOGIC_RR<0x0F, 0x09, "nand">;

// NOR
def NOR_ddc          :  LOGIC_RC<0x8F, 0x0B, "nor">;
def NOR_ddd          :  LOGIC_RR<0x0F, 0x0B, "nor">;

// NOT
let Constraints = "$s1_d = $src" in
def NOT_16_d         :  SR<0x46, 0x00, (outs DataRegs:$s1_d),
                           (ins DataRegs:$src),
                           "not", "\t$s1_d">;

// OR
def OR_ddc           :  LOGIC_RC<0x8F, 0x0A, "or">;
def OR_ddd           :  LOGIC_RR<0x0F, 0x0A, "or">;

let Constraints = "$d15 = $src", DecoderMethod = "decode_16_d15d15c" in
def OR_16_d15c       :  SC<0x96, (outs ImplDataReg:$d15),
                           (ins ImplDataReg:$src, uimm8:$const8),
                           "or", "\t$d15, $const8">;

def OR_16_dd         :  LOGIC_SRR<0xA6,      "or">;

let isCommutable = 0 in {
  // ORN
  def ORN_ddc        :  LOGIC_RC<0x8F, 0x0F, "orn">;
  def ORN_ddd        :  LOGIC_RR<0x0F, 0x0F, "orn">;
} // isCommutable = 0

// XNOR
def XNOR_ddc         :  LOGIC_RC<0x8F, 0x0D, "xnor">;
def XNOR_ddd         :  LOGIC_RR<0x0F, 0x0D, "xnor">;

// XOR
def XOR_ddc          :  LOGIC_RC<0x8F, 0x0C, "xor">;
def XOR_ddd          :  LOGIC_RR<0x0F, 0x0C, "xor">;
def XOR_16_dd        :  LOGIC_SRR<0xC6,      "xor">;

// 2.1.9 Count Leading Zeros, Ones and Signs

let n = 0, s2 = 0, isReMaterializable = 1 in {
  // CLZ
  def CLZ_dd         :  RR<0x0F, 0x1B, (outs DataRegs:$d),
                            (ins DataRegs:$s1),
                            "clz", "\t$d, $s1">;

  // CLO
  def CLO_dd         :  RR<0x0F, 0x1C, (outs DataRegs:$d),
                            (ins DataRegs:$s1),
                            "clo", "\t$d, $s1">;

  // CLS
  def CLS_dd         :  RR<0x0F, 0x1D, (outs DataRegs:$d),
                            (ins DataRegs:$s1),
                            "cls", "\t$d, $s1">;
} // n = 0, s2 = 0, isReMaterializable = 1

// 2.1.10 Shift.

// SH
def SH_ddc           :  SHIFT_RC<0x8F, 0x00,  "sh">;
def SH_ddd           :  SHIFT_RR<0x0F, 0x00,  "sh">;

let Constraints = "$s1_d = $src" in
def SH_16_dc         :  SRC<0x06, (outs DataRegs:$s1_d),
                            (ins DataRegs:$src, simm4:$const4),
                            "sh", "\t$s1_d, $const4">;

let Defs = [PSW] in {
  // SHA
  def SHA_ddc        :  SHIFT_RC<0x8F, 0x01,  "sha">;
  def SHA_ddd        :  SHIFT_RR<0x0F, 0x01,  "sha">;

  let Constraints = "$s1_d = $src" in
  def SHA_16_dc      :  SRC<0x86, (outs DataRegs:$s1_d),
                            (ins DataRegs:$src, simm4:$const4),
                            "sha", "\t$s1_d, $const4">;

  // SHAS
  def SHAS_ddc       :  SHIFT_RC<0x8F, 0x02,  "shas">;
  def SHAS_ddd       :  SHIFT_RR<0x0F, 0x02,  "shas">;
} // Defs = [PSW]

// 2.1.11 Bit-Field Extract and Insert

let isReMaterializable = 1 in {
  let s2 = 0 in {
    // EXTR
    def EXTR_ddcc    :  RRPW<0x37, 0x02, (outs DataRegs:$d),
                            (ins DataRegs:$s1, uimm5:$pos, uimm5:$width),
                            "extr", "\t$d, $s1, $pos, $width">;

    def EXTR_dde     :  RRRR<0x17, 0x02, (outs DataRegs:$d),
                            (ins DataRegs:$s1, ExtDataRegs:$s3),
                            "extr", "\t$d, $s1, $s3">;

    def EXTR_dddc    :  RRRW<0x57, 0x02, (outs DataRegs:$d),
                            (ins DataRegs:$s1, DataRegs:$s3, uimm5:$width),
                            "extr", "\t$d, $s1, $s3, $width">;

    // EXTR.U
    def EXTRU_ddcc   :  RRPW<0x37, 0x03, (outs DataRegs:$d),
                            (ins DataRegs:$s1, uimm5:$pos, uimm5:$width),
                            "extr.u", "\t$d, $s1, $pos, $width">;

    def EXTRU_dde    :  RRRR<0x17, 0x03, (outs DataRegs:$d),
                            (ins DataRegs:$s1, ExtDataRegs:$s3),
                            "extr.u", "\t$d, $s1, $s3">;

    def EXTRU_dddc   :  RRRW<0x57, 0x03, (outs DataRegs:$d),
                            (ins DataRegs:$s1, DataRegs:$s3, uimm5:$width),
                            "extr.u", "\t$d, $s1, $s3, $width">;
  } // s2 = 0

  // DEXTR
  let width = 0 in
    def DEXTR_dddc   :  RRPW<0x77, 0x00, (outs DataRegs:$d),
                          (ins DataRegs:$s1, DataRegs:$s2, uimm5:$pos),
                          "dextr", "\t$d, $s1, $s2, $pos">;

  def DEXTR_dddd     :  RRRR<0x17, 0x04, (outs DataRegs:$d),
                          (ins DataRegs:$s1, DataRegs:$s2, DataRegs:$s3),
                          "dextr", "\t$d, $s1, $s2, $s3">;

  // INSERT
  def INSERT_ddccc   :  RCPW<0xB7, 0x00, (outs DataRegs:$d),
                          (ins DataRegs:$s1, uimm4:$const4,
                          uimm5:$pos, uimm5:$width),
                          "insert", "\t$d, $s1, $const4, $pos, $width">;

  def INSERT_ddce    :  RCRR<0x97, 0x00, (outs DataRegs:$d),
                          (ins DataRegs:$s1, uimm4:$const4, ExtDataRegs:$s3),
                          "insert", "\t$d, $s1, $const4, $s3">;

  def INSERT_ddcdc   :  RCRW<0xD7, 0x00, (outs DataRegs:$d),
                          (ins DataRegs:$s1, uimm4:$const4,
                          DataRegs:$s3, uimm5:$width),
                          "insert", "\t$d, $s1, $const4, $s3, $width">;

  def INSERT_dddcc   :  RRPW<0x37, 0x00, (outs DataRegs:$d),
                          (ins DataRegs:$s1, DataRegs:$s2,
                          uimm5:$pos, uimm5:$width),
                          "insert", "\t$d, $s1, $s2, $pos, $width">;

  def INSERT_ddde    :  RRRR<0x17, 0x00, (outs DataRegs:$d),
                          (ins DataRegs:$s1, DataRegs:$s2, ExtDataRegs:$s3),
                          "insert", "\t$d, $s1, $s2, $s3">;

  def INSERT_ddddc   :  RRRW<0x57, 0x00, (outs DataRegs:$d),
                          (ins DataRegs:$s1, DataRegs:$s2,
                          DataRegs:$s3, uimm5:$width),
                          "insert", "\t$d, $s1, $s2, $s3, $width">;

  // INS.T
  def INST_ddcdc     : BIT<0x67, 0x00, (outs DataRegs:$d),
                          (ins DataRegs:$s1, uimm5:$pos1,
                          DataRegs:$s2, uimm5:$pos2),
                          "ins.t", "\t$d, $s1, $pos1, $s2, $pos2">;

  // INSN.T
  def INSNT_ddcdc    : BIT<0x67, 0x01, (outs DataRegs:$d),
                          (ins DataRegs:$s1, uimm5:$pos1,
                          DataRegs:$s2, uimm5:$pos2),
                          "insn.t", "\t$d, $s1, $pos1, $s2, $pos2">;

  let s1 = 0 in {
    // IMASK
    def IMASK_eccc   :  RCPW<0xB7, 0x01, (outs ExtDataRegs:$d),
                          (ins uimm4:$const4, uimm5:$pos, uimm5:$width),
                          "imask", "\t$d, $const4, $pos, $width">; 

    def IMASK_ecdc   :  RCRW<0xD7, 0x01, (outs ExtDataRegs:$d),
                          (ins uimm4:$const4, DataRegs:$s3, uimm5:$width),
                          "imask", "\t$d, $const4, $s3, $width">;

    def IMASK_edcc   :  RRPW<0x37, 0x01, (outs ExtDataRegs:$d),
                          (ins DataRegs:$s2, uimm5:$pos, uimm5:$width),
                          "imask", "\t$d, $s2, $pos, $width">;

    def IMASK_eddc   :  RRRW<0x57, 0x01, (outs ExtDataRegs:$d),
                          (ins DataRegs:$s2, DataRegs:$s3, uimm5:$width),
                          "imask", "\t$d, $s2, $s3, $width">;
  } // s1 = 0
} // isReMaterializable = 1

// 2.4.8 Add support for Packed Multiply and MAC Q-Format

// MADD.H
def MADDH_eeddc_ll    : PMMQ_RRR1_ED<0x83, 0x1A, "madd.h",     "ll">;
def MADDH_eeddc_lu    : PMMQ_RRR1_ED<0x83, 0x19, "madd.h",     "lu">;
def MADDH_eeddc_ul    : PMMQ_RRR1_ED<0x83, 0x18, "madd.h",     "ul">;
def MADDH_eeddc_uu    : PMMQ_RRR1_ED<0x83, 0x1B, "madd.h",     "uu">;

// MADDS.H
def MADDSH_eeddc_ll   : PMMQ_RRR1_ED<0x83, 0x3A, "madds.h",    "ll">;
def MADDSH_eeddc_lu   : PMMQ_RRR1_ED<0x83, 0x39, "madds.h",    "lu">;
def MADDSH_eeddc_ul   : PMMQ_RRR1_ED<0x83, 0x38, "madds.h",    "ul">;
def MADDSH_eeddc_uu   : PMMQ_RRR1_ED<0x83, 0x3B, "madds.h",    "uu">;

// MADDM.H
def MADDMH_eeddc_ll   : PMMQ_RRR1_ED<0x83, 0x1E, "maddm.h",    "ll">;
def MADDMH_eeddc_lu   : PMMQ_RRR1_ED<0x83, 0x1D, "maddm.h",    "lu">;
def MADDMH_eeddc_ul   : PMMQ_RRR1_ED<0x83, 0x1C, "maddm.h",    "ul">;
def MADDMH_eeddc_uu   : PMMQ_RRR1_ED<0x83, 0x1F, "maddm.h",    "uu">;

// MADDMS.H
def MADDMSH_eeddc_ll  : PMMQ_RRR1_ED<0x83, 0x3E, "maddms.h",   "ll">;
def MADDMSH_eeddc_lu  : PMMQ_RRR1_ED<0x83, 0x3D, "maddms.h",   "lu">;
def MADDMSH_eeddc_ul  : PMMQ_RRR1_ED<0x83, 0x3C, "maddms.h",   "ul">;
def MADDMSH_eeddc_uu  : PMMQ_RRR1_ED<0x83, 0x3F, "maddms.h",   "uu">;

// MADDR.H
def MADDRH_ddddc_ll   : PMMQ_RRR1_DD<0x83, 0x0E, "maddr.h",    "ll">;
def MADDRH_ddddc_lu   : PMMQ_RRR1_DD<0x83, 0x0D, "maddr.h",    "lu">;
def MADDRH_ddddc_ul   : PMMQ_RRR1_DD<0x83, 0x0C, "maddr.h",    "ul">;
def MADDRH_deddc_ul   : PMMQ_RRR1_DE<0x43, 0x1E, "maddr.h",    "ul">;
def MADDRH_ddddc_uu   : PMMQ_RRR1_DD<0x83, 0x0F, "maddr.h",    "uu">;

// MADDRS.H
def MADDRSH_ddddc_ll  : PMMQ_RRR1_DD<0x83, 0x2E, "maddrs.h",   "ll">;
def MADDRSH_ddddc_lu  : PMMQ_RRR1_DD<0x83, 0x2D, "maddrs.h",   "lu">;
def MADDRSH_ddddc_ul  : PMMQ_RRR1_DD<0x83, 0x2C, "maddrs.h",   "ul">;
def MADDRSH_deddc_ul  : PMMQ_RRR1_DE<0x43, 0x3E, "maddrs.h",   "ul">;
def MADDRSH_ddddc_uu  : PMMQ_RRR1_DD<0x83, 0x2F, "maddrs.h",   "uu">;

// MADDSU.H
def MADDSUH_eeddc_ll  : PMMQ_RRR1_ED<0xC3, 0x1A, "maddsu.h",   "ll">;
def MADDSUH_eeddc_lu  : PMMQ_RRR1_ED<0xC3, 0x19, "maddsu.h",   "lu">;
def MADDSUH_eeddc_ul  : PMMQ_RRR1_ED<0xC3, 0x18, "maddsu.h",   "ul">;
def MADDSUH_eeddc_uu  : PMMQ_RRR1_ED<0xC3, 0x1B, "maddsu.h",   "uu">;

// MADDSUS.H
def MADDSUSH_eeddc_ll : PMMQ_RRR1_ED<0xC3, 0x3A, "maddsus.h",  "ll">;
def MADDSUSH_eeddc_lu : PMMQ_RRR1_ED<0xC3, 0x39, "maddsus.h",  "lu">;
def MADDSUSH_eeddc_ul : PMMQ_RRR1_ED<0xC3, 0x38, "maddsus.h",  "ul">;
def MADDSUSH_eeddc_uu : PMMQ_RRR1_ED<0xC3, 0x3B, "maddsus.h",  "uu">;

// MADDSUM.H
def MADDSUMH_eeddc_ll : PMMQ_RRR1_ED<0xC3, 0x1E, "maddsum.h",  "ll">;
def MADDSUMH_eeddc_lu : PMMQ_RRR1_ED<0xC3, 0x1D, "maddsum.h",  "lu">;
def MADDSUMH_eeddc_ul : PMMQ_RRR1_ED<0xC3, 0x1C, "maddsum.h",  "ul">;
def MADDSUMH_eeddc_uu : PMMQ_RRR1_ED<0xC3, 0x1F, "maddsum.h",  "uu">;

// MADDSUMS.H
def MADDSUMSH_eeddc_ll: PMMQ_RRR1_ED<0xC3, 0x3E, "maddsums.h", "ll">;
def MADDSUMSH_eeddc_lu: PMMQ_RRR1_ED<0xC3, 0x3D, "maddsums.h", "lu">;
def MADDSUMSH_eeddc_ul: PMMQ_RRR1_ED<0xC3, 0x3C, "maddsums.h", "ul">;
def MADDSUMSH_eeddc_uu: PMMQ_RRR1_ED<0xC3, 0x3F, "maddsums.h", "uu">;

// MADDSUR.H
def MADDSURH_ddddc_ll : PMMQ_RRR1_DD<0xC3, 0x0E, "maddsur.h",  "ll">;
def MADDSURH_ddddc_lu : PMMQ_RRR1_DD<0xC3, 0x0D, "maddsur.h",  "lu">;
def MADDSURH_ddddc_ul : PMMQ_RRR1_DD<0xC3, 0x0C, "maddsur.h",  "ul">;
def MADDSURH_ddddc_uu : PMMQ_RRR1_DD<0xC3, 0x0F, "maddsur.h",  "uu">;

// MADDSURS.H
def MADDSURSH_ddddc_ll: PMMQ_RRR1_DD<0xC3, 0x2E, "maddsurs.h", "ll">;
def MADDSURSH_ddddc_lu: PMMQ_RRR1_DD<0xC3, 0x2D, "maddsurs.h", "lu">;
def MADDSURSH_ddddc_ul: PMMQ_RRR1_DD<0xC3, 0x2C, "maddsurs.h", "ul">;
def MADDSURSH_ddddc_uu: PMMQ_RRR1_DD<0xC3, 0x2F, "maddsurs.h", "uu">;

// MSUB.H
def MSUBH_eeddc_ll    : PMMQ_RRR1_ED<0xA3, 0x1A, "msub.h",     "ll">;
def MSUBH_eeddc_lu    : PMMQ_RRR1_ED<0xA3, 0x19, "msub.h",     "lu">;
def MSUBH_eeddc_ul    : PMMQ_RRR1_ED<0xA3, 0x18, "msub.h",     "ul">;
def MSUBH_eeddc_uu    : PMMQ_RRR1_ED<0xA3, 0x1B, "msub.h",     "uu">;

// MSUBS.H
def MSUBSH_eeddc_ll   : PMMQ_RRR1_ED<0xA3, 0x3A, "msubs.h",    "ll">;
def MSUBSH_eeddc_lu   : PMMQ_RRR1_ED<0xA3, 0x39, "msubs.h",    "lu">;
def MSUBSH_eeddc_ul   : PMMQ_RRR1_ED<0xA3, 0x38, "msubs.h",    "ul">;
def MSUBSH_eeddc_uu   : PMMQ_RRR1_ED<0xA3, 0x3B, "msubs.h",    "uu">;

// MSUBAD.H
def MSUBADH_eeddc_ll  : PMMQ_RRR1_ED<0xE3, 0x1A, "msubad.h",   "ll">;
def MSUBADH_eeddc_lu  : PMMQ_RRR1_ED<0xE3, 0x19, "msubad.h",   "lu">;
def MSUBADH_eeddc_ul  : PMMQ_RRR1_ED<0xE3, 0x18, "msubad.h",   "ul">;
def MSUBADH_eeddc_uu  : PMMQ_RRR1_ED<0xE3, 0x1B, "msubad.h",   "uu">;

// MSUBADS.H
def MSUBADSH_eeddc_ll : PMMQ_RRR1_ED<0xE3, 0x3A, "msubads.h",  "ll">;
def MSUBADSH_eeddc_lu : PMMQ_RRR1_ED<0xE3, 0x39, "msubads.h",  "lu">;
def MSUBADSH_eeddc_ul : PMMQ_RRR1_ED<0xE3, 0x38, "msubads.h",  "ul">;
def MSUBADSH_eeddc_uu : PMMQ_RRR1_ED<0xE3, 0x3B, "msubads.h",  "uu">;

// MSUBADM.H
def MSUBADMH_eeddc_ll : PMMQ_RRR1_ED<0xE3, 0x1E, "msubadm.h",  "ll">;
def MSUBADMH_eeddc_lu : PMMQ_RRR1_ED<0xE3, 0x1D, "msubadm.h",  "lu">;
def MSUBADMH_eeddc_ul : PMMQ_RRR1_ED<0xE3, 0x1C, "msubadm.h",  "ul">;
def MSUBADMH_eeddc_uu : PMMQ_RRR1_ED<0xE3, 0x1F, "msubadm.h",  "uu">;

// MSUBADMS.H
def MSUBADMSH_eeddc_ll: PMMQ_RRR1_ED<0xE3, 0x3E, "msubadms.h", "ll">;
def MSUBADMSH_eeddc_lu: PMMQ_RRR1_ED<0xE3, 0x3D, "msubadms.h", "lu">;
def MSUBADMSH_eeddc_ul: PMMQ_RRR1_ED<0xE3, 0x3C, "msubadms.h", "ul">;
def MSUBADMSH_eeddc_uu: PMMQ_RRR1_ED<0xE3, 0x3F, "msubadms.h", "uu">;

// MSUBADR.H
def MSUBADRH_ddddc_ll : PMMQ_RRR1_DD<0xE3, 0x0E, "msubadr.h",  "ll">;
def MSUBADRH_ddddc_lu : PMMQ_RRR1_DD<0xE3, 0x0D, "msubadr.h",  "lu">;
def MSUBADRH_ddddc_ul : PMMQ_RRR1_DD<0xE3, 0x0C, "msubadr.h",  "ul">;
def MSUBADRH_ddddc_uu : PMMQ_RRR1_DD<0xE3, 0x0F, "msubadr.h",  "uu">;

// MSUBADRS.H
def MSUBADRSH_ddddc_ll: PMMQ_RRR1_DD<0xE3, 0x2E, "msubadrs.h", "ll">;
def MSUBADRSH_ddddc_lu: PMMQ_RRR1_DD<0xE3, 0x2D, "msubadrs.h", "lu">;
def MSUBADRSH_ddddc_ul: PMMQ_RRR1_DD<0xE3, 0x2C, "msubadrs.h", "ul">;
def MSUBADRSH_ddddc_uu: PMMQ_RRR1_DD<0xE3, 0x2F, "msubadrs.h", "uu">;

// MSUBM.H
def MSUBMH_eeddc_ll   : PMMQ_RRR1_ED<0xA3, 0x1E, "msubm.h",    "ll">;
def MSUBMH_eeddc_lu   : PMMQ_RRR1_ED<0xA3, 0x1D, "msubm.h",    "lu">;
def MSUBMH_eeddc_ul   : PMMQ_RRR1_ED<0xA3, 0x1C, "msubm.h",    "ul">;
def MSUBMH_eeddc_uu   : PMMQ_RRR1_ED<0xA3, 0x1F, "msubm.h",    "uu">;

// MSUBMS.H
def MSUBMSH_eeddc_ll  : PMMQ_RRR1_ED<0xA3, 0x3E, "msubms.h",   "ll">;
def MSUBMSH_eeddc_lu  : PMMQ_RRR1_ED<0xA3, 0x3D, "msubms.h",   "lu">;
def MSUBMSH_eeddc_ul  : PMMQ_RRR1_ED<0xA3, 0x3C, "msubms.h",   "ul">;
def MSUBMSH_eeddc_uu  : PMMQ_RRR1_ED<0xA3, 0x3F, "msubms.h",   "uu">;

// MSUBR.H
def MSUBRH_ddddc_ll   : PMMQ_RRR1_DD<0xA3, 0x0E, "msubr.h",    "ll">;
def MSUBRH_ddddc_lu   : PMMQ_RRR1_DD<0xA3, 0x0D, "msubr.h",    "lu">;
def MSUBRH_ddddc_ul   : PMMQ_RRR1_DD<0xA3, 0x0C, "msubr.h",    "ul">;
def MSUBRH_deddc_ul   : PMMQ_RRR1_DE<0x63, 0x1E, "msubr.h",    "ul">;
def MSUBRH_ddddc_uu   : PMMQ_RRR1_DD<0xA3, 0x0F, "msubr.h",    "uu">;

// MSUBRS.H
def MSUBRSH_ddddc_ll  : PMMQ_RRR1_DD<0xA3, 0x2E, "msubrs.h",   "ll">;
def MSUBRSH_ddddc_lu  : PMMQ_RRR1_DD<0xA3, 0x2D, "msubrs.h",   "lu">;
def MSUBRSH_ddddc_ul  : PMMQ_RRR1_DD<0xA3, 0x2C, "msubrs.h",   "ul">;
def MSUBRSH_deddc_ul  : PMMQ_RRR1_DE<0x63, 0x3E, "msubrs.h",   "ul">;
def MSUBRSH_ddddc_uu  : PMMQ_RRR1_DD<0xA3, 0x2F, "msubrs.h",   "uu">;

// MUL.H
def MULH_eddc_ll      : PMMQ_RR1<0xB3,  0x1A, "mul.h",         "ll">;
def MULH_eddc_lu      : PMMQ_RR1<0xB3,  0x19, "mul.h",         "lu">;
def MULH_eddc_ul      : PMMQ_RR1<0xB3,  0x18, "mul.h",         "ul">;
def MULH_eddc_uu      : PMMQ_RR1<0xB3,  0x1B, "mul.h",         "uu">;

// MULM.H
def MULMH_eddc_ll     : PMMQ_RR1<0xB3, 0x1E, "mulm.h",         "ll">;
def MULMH_eddc_lu     : PMMQ_RR1<0xB3, 0x1D, "mulm.h",         "lu">;
def MULMH_eddc_ul     : PMMQ_RR1<0xB3, 0x1C, "mulm.h",         "ul">;
def MULMH_eddc_uu     : PMMQ_RR1<0xB3, 0x1F, "mulm.h",         "uu">;

// MULR.H
def MULRH_dddc_ll     : PMMQ_RR1<0xB3, 0x0E, "mulr.h",         "ll", DataRegs>;
def MULRH_dddc_lu     : PMMQ_RR1<0xB3, 0x0D, "mulr.h",         "lu", DataRegs>;
def MULRH_dddc_ul     : PMMQ_RR1<0xB3, 0x0C, "mulr.h",         "ul", DataRegs>;
def MULRH_dddc_uu     : PMMQ_RR1<0xB3, 0x0F, "mulr.h",         "uu", DataRegs>;

//===----------------------------------------------------------------------===//
// 2.2 Packed Arithmetic
//

let s1 = 0, n = 0, Defs = [PSW] in {
  // ABS.B
  def ABSB_dd          :  RR<0x0B, 0x5C, (outs DataRegs:$d),
                              (ins DataRegs:$s2),
                              "abs.b", "\t$d, $s2">;

  // ABS.H
  def ABSH_dd          :  RR<0x0B, 0x7C, (outs DataRegs:$d),
                              (ins DataRegs:$s2),
                              "abs.h", "\t$d, $s2">;
} // s1 = 0, n = 0, Defs = [PSW]

let Defs = [PSW] in {
  // ABSDIF.B
  def ABSDIFB_ddd      : PARITH_RR<0x0B, 0x4E, "absdif.b">;

  // ABSDIF.H
  def ABSDIFH_ddd      : PARITH_RR<0x0B, 0x6E, "absdif.h">;

  // ABSDIFS.H
  def ABSDIFSH_ddd     : PARITH_RR<0x0B, 0x6F, "absdifs.h">;

  // ABSS.H
  let s1 = 0, n = 0 in
  def ABSSH_dd         :  RR<0x0B, 0x7D, (outs DataRegs:$d),
                                (ins DataRegs:$s2),
                                "abss.h", "\t$d, $s2">;

  // ADD.B
  def ADDB_ddd         :  PARITH_RR<0x0B, 0x40, "add.b">;

  // ADD.H
  def ADDH_ddd         :  PARITH_RR<0x0B, 0x60, "add.h">;

  // ADDS.H
  def ADDSH_ddd        :  PARITH_RR<0x0B, 0x62, "adds.h">;

  // ADDS.HU
  def ADDSHU_ddd       :  PARITH_RR<0x0B, 0x63, "adds.hu">;
} // Defs = [PSW]

let  isReMaterializable = 1 in {
  let s2 = 0, n = 0 in {
    // CLO.H
    def CLOH_dd        :  RR<0x0F, 0x7D, (outs DataRegs:$d),
                                  (ins DataRegs:$s1),
                                  "clo.h", "\t$d, $s1">;

    // CLS.H
    def CLSH_dd        :  RR<0x0F, 0x7E, (outs DataRegs:$d),
                                  (ins DataRegs:$s1),
                                  "cls.h", "\t$d, $s1">;

    // CLZ.H
    def CLZH_dd        :  RR<0x0F, 0x7C, (outs DataRegs:$d),
                                  (ins DataRegs:$s1),
                                  "clz.h", "\t$d, $s1">;
  } // s2 = 0, n = 0

  // EQANY.B
  def EQANYB_ddc       :  PARITH_RC<0x8B, 0x56, "eqany.b">;
  let isCommutable = 1 in
  def EQANYB_ddd       :  PARITH_RR<0x0B, 0x56, "eqany.b">;

  // EQANY.H
  def EQANYH_ddc       :  PARITH_RC<0x8B, 0x76, "eqany.h">;
  let isCommutable = 1 in
  def EQANYH_ddd       :  PARITH_RR<0x0B, 0x76, "eqany.h">;

  let isCommutable = 1 in {
    // MAX.B
    def MAXB_ddd       :  PARITH_RR<0x0B, 0x5A, "max.b">;

    // MAX.BU
    def MAXBU_ddd      :  PARITH_RR<0x0B, 0x5B, "max.bu">;

    // MAX.H
    def MAXH_ddd       :  PARITH_RR<0x0B, 0x7A, "max.h">;

    // MAX.HU
    def MAXHU_ddd      :  PARITH_RR<0x0B, 0x7B, "max.hu">;

    // MIN.B
    def MINB_ddd       :  PARITH_RR<0x0B, 0x58, "min.b">;

    // MIN.BU
    def MINBU_ddd      :  PARITH_RR<0x0B, 0x59, "min.bu">;

    // MIN.H
    def MINH_ddd       :  PARITH_RR<0x0B, 0x78, "min.h">;

    // MIN.HU
    def MINHU_ddd      :  PARITH_RR<0x0B, 0x79, "min.hu">;
  } // isCommutable = 1

  // SH.H
  def SHH_ddc          :  RC<0x8F, 0x40, (outs DataRegs:$d),
                            (ins DataRegs:$s1, simm9_shift5:$const9),
                            "sh.h", "\t$d, $s1, $const9">;

  def SHH_ddd          :  PARITH_RR<0x0F, 0x40, "sh.h">;

  // SHA.H
  def SHAH_ddc          :  RC<0x8F, 0x41, (outs DataRegs:$d),
                            (ins DataRegs:$s1, simm9_shift5:$const9),
                            "sha.h", "\t$d, $s1, $const9">;

  def SHAH_ddd         :  PARITH_RR<0x0F, 0x41, "sha.h">;
} // isReMaterializable = 1

let Defs = [PSW] in {
  // SUB.B
  def SUBB_ddd           :  PARITH_RR<0x0B, 0x48, "sub.b">;

  // SUB.H
  def SUBH_ddd           :  PARITH_RR<0x0B, 0x68, "sub.h">;

  // SUBS.H
  def SUBSH_ddd          :  PARITH_RR<0x0B, 0x6A, "subs.h">;

  // SUBS.HU
  def SUBSHU_ddd         :  PARITH_RR<0x0B, 0x6B, "subs.hu">;
} // Defs = [PSW]

// 2.4.x Add support for Q-Format Multiply-Add-Subtract

// MADD.Q
def MADDQ_ddddc       : QFMAS_RRR1_DD<0x43, 0x02, "madd.q",   "",  "" >;
def MADDQ_eeddc       : QFMAS_RRR1_ED<0x43, 0x1B, "madd.q",   "",  "" >;
def MADDQ_ddddc_l     : QFMAS_RRR1_DD<0x43, 0x01, "madd.q",   "",  "l">;
def MADDQ_eeddc_l     : QFMAS_RRR1_ED<0x43, 0x19, "madd.q",   "",  "l">;
def MADDQ_ddddc_u     : QFMAS_RRR1_DD<0x43, 0x00, "madd.q",   "",  "u">;
def MADDQ_eeddc_u     : QFMAS_RRR1_ED<0x43, 0x18, "madd.q",   "",  "u">;
def MADDQ_ddddc_ll    : QFMAS_RRR1_DD<0x43, 0x05, "madd.q",   "l", "l">;
def MADDQ_eeddc_ll    : QFMAS_RRR1_ED<0x43, 0x1D, "madd.q",   "l", "l">;
def MADDQ_ddddc_uu    : QFMAS_RRR1_DD<0x43, 0x04, "madd.q",   "u", "u">;
def MADDQ_eeddc_uu    : QFMAS_RRR1_ED<0x43, 0x1C, "madd.q",   "u", "u">;

// MADDS.Q
def MADDSQ_ddddc      : QFMAS_RRR1_DD<0x43, 0x22, "madds.q",  "",  "" >;
def MADDSQ_eeddc      : QFMAS_RRR1_ED<0x43, 0x3B, "madds.q",  "",  "" >;
def MADDSQ_ddddc_l    : QFMAS_RRR1_DD<0x43, 0x21, "madds.q",  "",  "l">;
def MADDSQ_eeddc_l    : QFMAS_RRR1_ED<0x43, 0x39, "madds.q",  "",  "l">;
def MADDSQ_ddddc_u    : QFMAS_RRR1_DD<0x43, 0x20, "madds.q",  "",  "u">;
def MADDSQ_eeddc_u    : QFMAS_RRR1_ED<0x43, 0x38, "madds.q",  "",  "u">;
def MADDSQ_ddddc_ll   : QFMAS_RRR1_DD<0x43, 0x25, "madds.q",  "l", "l">;
def MADDSQ_eeddc_ll   : QFMAS_RRR1_ED<0x43, 0x3D, "madds.q",  "l", "l">;
def MADDSQ_ddddc_uu   : QFMAS_RRR1_DD<0x43, 0x24, "madds.q",  "u", "u">;
def MADDSQ_eeddc_uu   : QFMAS_RRR1_ED<0x43, 0x3C, "madds.q",  "u", "u">;

// MADDR.Q
def MADDRQ_ddddc_ll   : QFMAS_RRR1_DD<0x43, 0x07, "maddr.q",  "l", "l">;
def MADDRQ_ddddc_uu   : QFMAS_RRR1_DD<0x43, 0x06, "maddr.q",  "u", "u">;

// MADDRS.Q
def MADDRSQ_ddddc_ll  : QFMAS_RRR1_DD<0x43, 0x27, "maddrs.q", "l", "l">;
def MADDRSQ_ddddc_uu  : QFMAS_RRR1_DD<0x43, 0x26, "maddrs.q", "u", "u">;

// MSUB.Q
def MSUBQ_ddddc       : QFMAS_RRR1_DD<0x63, 0x02, "msub.q",   "",  "" >;
def MSUBQ_eeddc       : QFMAS_RRR1_ED<0x63, 0x1B, "msub.q",   "",  "" >;
def MSUBQ_ddddc_l     : QFMAS_RRR1_DD<0x63, 0x01, "msub.q",   "",  "l">;
def MSUBQ_eeddc_l     : QFMAS_RRR1_ED<0x63, 0x19, "msub.q",   "",  "l">;
def MSUBQ_ddddc_u     : QFMAS_RRR1_DD<0x63, 0x00, "msub.q",   "",  "u">;
def MSUBQ_eeddc_u     : QFMAS_RRR1_ED<0x63, 0x18, "msub.q",   "",  "u">;
def MSUBQ_ddddc_ll    : QFMAS_RRR1_DD<0x63, 0x05, "msub.q",   "l", "l">;
def MSUBQ_eeddc_ll    : QFMAS_RRR1_ED<0x63, 0x1D, "msub.q",   "l", "l">;
def MSUBQ_ddddc_uu    : QFMAS_RRR1_DD<0x63, 0x04, "msub.q",   "u", "u">;
def MSUBQ_eeddc_uu    : QFMAS_RRR1_ED<0x63, 0x1C, "msub.q",   "u", "u">;

// MSUBS.Q
def MSUBSQ_ddddc      : QFMAS_RRR1_DD<0x63, 0x22, "msubs.q",  "",  "" >;
def MSUBSQ_eeddc      : QFMAS_RRR1_ED<0x63, 0x3B, "msubs.q",  "",  "" >;
def MSUBSQ_ddddc_l    : QFMAS_RRR1_DD<0x63, 0x21, "msubs.q",  "",  "l">;
def MSUBSQ_eeddc_l    : QFMAS_RRR1_ED<0x63, 0x39, "msubs.q",  "",  "l">;
def MSUBSQ_ddddc_u    : QFMAS_RRR1_DD<0x63, 0x20, "msubs.q",  "",  "u">;
def MSUBSQ_eeddc_u    : QFMAS_RRR1_ED<0x63, 0x38, "msubs.q",  "",  "u">;
def MSUBSQ_ddddc_ll   : QFMAS_RRR1_DD<0x63, 0x25, "msubs.q",  "l", "l">;
def MSUBSQ_eeddc_ll   : QFMAS_RRR1_ED<0x63, 0x3D, "msubs.q",  "l", "l">;
def MSUBSQ_ddddc_uu   : QFMAS_RRR1_DD<0x63, 0x24, "msubs.q",  "u", "u">;
def MSUBSQ_eeddc_uu   : QFMAS_RRR1_ED<0x63, 0x3C, "msubs.q",  "u", "u">;

// MSUBR.Q
def MSUBRQ_ddddc_ll   : QFMAS_RRR1_DD<0x63, 0x07, "msubr.q",  "l", "l">;
def MSUBRQ_ddddc_uu   : QFMAS_RRR1_DD<0x63, 0x06, "msubr.q",  "u", "u">;

// MSUBRS.Q
def MSUBRSQ_ddddc_ll  : QFMAS_RRR1_DD<0x63, 0x27, "msubrs.q", "l", "l">;
def MSUBRSQ_ddddc_uu  : QFMAS_RRR1_DD<0x63, 0x26, "msubrs.q", "u", "u">;

// MUL.Q
let isCommutable = 1 in {
  def MULQ_dddc       : QFMAS_RR1_DD<0x93,  0x02, "mul.q",    "",  "" >;
  def MULQ_eddc       : QFMAS_RR1_ED<0x93,  0x1B, "mul.q",    "",  "" >;
} // let isCommutable = 1

def MULQ_dddc_l       : QFMAS_RR1_DD<0x93,  0x01, "mul.q",    "",  "l">;
def MULQ_eddc_l       : QFMAS_RR1_ED<0x93,  0x19, "mul.q",    "",  "l">;
def MULQ_dddc_u       : QFMAS_RR1_DD<0x93,  0x00, "mul.q",    "",  "u">;
def MULQ_eddc_u       : QFMAS_RR1_ED<0x93,  0x18, "mul.q",    "",  "u">;

let isCommutable = 1 in {
  def MULQ_dddc_ll    : QFMAS_RR1_DD<0x93,  0x05, "mul.q",    "l", "l">;
  def MULQ_dddc_uu    : QFMAS_RR1_DD<0x93,  0x04, "mul.q",    "u", "u">;

  // MULR.Q
  def MULRQ_dddc_ll   : QFMAS_RR1_DD<0x93,  0x07, "mulr.q",   "l", "l">;
  def MULRQ_dddc_uu   : QFMAS_RR1_DD<0x93,  0x06, "mulr.q",   "u", "u">;
} // let isCommutable = 1

//===----------------------------------------------------------------------===//
//  2.5 Compare Instructions.
//

// 2.5.1 Simple Compare.

// EQ
def EQ_ddc           :  CMP_RC<0x8B, 0x10, "eq">;

let isCommutable = 1 in
def EQ_ddd           :  CMP_RR<0x0B, 0x10, "eq">;

let isCompare = 1, isReMaterializable = 1 in {
  let DecoderMethod = "decode_16_d15dc" in
  def EQ_16_d15dc    : SRC<0xBA, (outs ImplDataReg:$d15),
                           (ins DataRegs:$s1_d, simm4:$const4),
                           "eq", "\t$d15, $s1_d, $const4">;

  let DecoderMethod = "decode_16_d15dd" in
  def EQ_16_d15dd    : SRR<0x3A, (outs ImplDataReg:$d15),
                           (ins DataRegs:$s1_d, DataRegs:$s2),
                           "eq", "\t$d15, $s1_d, $s2">;
} // isCompare = 1, isReMaterializable = 1

// NE
def NE_ddc           :  CMP_RC<0x8B, 0x11, "ne">;

let isCommutable = 1 in
def NE_ddd           :  CMP_RR<0x0B, 0x11, "ne">;

// LT
def LT_ddc           :  CMP_RC<0x8B, 0x12, "lt">;
def LT_ddd           :  CMP_RR<0x0B, 0x12, "lt">;

let isCompare = 1, isReMaterializable = 1 in {
  let DecoderMethod = "decode_16_d15dc" in
  def LT_16_d15dc    : SRC<0xFA, (outs ImplDataReg:$d15),
                           (ins DataRegs:$s1_d, simm4:$const4),
                           "lt", "\t$d15, $s1_d, $const4">;

  let DecoderMethod = "decode_16_d15dd" in
  def LT_16_d15dd    : SRR<0x7A, (outs ImplDataReg:$d15),
                           (ins DataRegs:$s1_d, DataRegs:$s2),
                           "lt", "\t$d15, $s1_d, $s2">;
} // isCompare = 1, isReMaterializable = 1

// LT.U
def LTU_ddc          :  CMP_RC<0x8B, 0x13, "lt.u", uimm9>;
def LTU_ddd          :  CMP_RR<0x0B, 0x13, "lt.u">;

// GE
def GE_ddc           :  CMP_RC<0x8B, 0x14, "ge">;
def GE_ddd           :  CMP_RR<0x0B, 0x14, "ge">;

// GE.U
def GEU_ddc          :  CMP_RC<0x8B, 0x15, "ge.u", uimm9>;
def GEU_ddd          :  CMP_RR<0x0B, 0x15, "ge.u">;


// 2.5.2 Accumulating Compare

// AND.EQ
def ANDEQ_ddc        : AC_RC<0x8B, 0x20, "and.eq"  >;
let isCommutable = 1 in
def ANDEQ_ddd        : AC_RR<0x0B, 0x20, "and.eq"  >;

// AND.GE
def ANDGE_ddc        : AC_RC<0x8B, 0x24, "and.ge"  >;
def ANDGE_ddd        : AC_RR<0x0B, 0x24, "and.ge"  >;

// AND.GE.U
def ANDGEU_ddc       : AC_RC<0x8B, 0x25, "and.ge.u", uimm9>;
def ANDGEU_ddd       : AC_RR<0x0B, 0x25, "and.ge.u">;

// AND.LT
def ANDLT_ddc        : AC_RC<0x8B, 0x22, "and.lt"  >;
def ANDLT_ddd        : AC_RR<0x0B, 0x22, "and.lt"  >;

// AND.LT.U
def ANDLTU_ddc       : AC_RC<0x8B, 0x23, "and.lt.u", uimm9>;
def ANDLTU_ddd       : AC_RR<0x0B, 0x23, "and.lt.u">;

// AND.NE
def ANDNE_ddc        : AC_RC<0x8B, 0x21, "and.ne"  >;
let isCommutable = 1 in
def ANDNE_ddd        : AC_RR<0x0B, 0x21, "and.ne"  >;

// OR.EQ
def OREQ_ddc         : AC_RC<0x8B, 0x27, "or.eq"   >;
let isCommutable = 1 in
def OREQ_ddd         : AC_RR<0x0B, 0x27, "or.eq"   >;

// OR.GE
def ORGE_ddc         : AC_RC<0x8B, 0x2B, "or.ge"   >;
def ORGE_ddd         : AC_RR<0x0B, 0x2B, "or.ge"   >;

// OR.GE.U
def ORGEU_ddc        : AC_RC<0x8B, 0x2C, "or.ge.u",  uimm9>;
def ORGEU_ddd        : AC_RR<0x0B, 0x2C, "or.ge.u" >;

// OR.LT
def ORLT_ddc         : AC_RC<0x8B, 0x29, "or.lt"   >;
def ORLT_ddd         : AC_RR<0x0B, 0x29, "or.lt"   >;

// OR.LT.U
def ORLTU_ddc        : AC_RC<0x8B, 0x2A, "or.lt.u",  uimm9>;
def ORLTU_ddd        : AC_RR<0x0B, 0x2A, "or.lt.u" >;


// OR.NE
def ORNE_ddc         : AC_RC<0x8B, 0x28, "or.ne"   >;
let isCommutable = 1 in
def ORNE_ddd         : AC_RR<0x0B, 0x28, "or.ne"   >;

// XOR.EQ
def XOREQ_ddc        : AC_RC<0x8B, 0x2F, "xor.eq"  >;
let isCommutable = 1 in
def XOREQ_ddd        : AC_RR<0x0B, 0x2F, "xor.eq"  >;

// XOR.GE
def XORGE_ddc        : AC_RC<0x8B, 0x33, "xor.ge"  >;
def XORGE_ddd        : AC_RR<0x0B, 0x33, "xor.ge"  >;

// XOR.GE.U
def XORGEU_ddc       : AC_RC<0x8B, 0x34, "xor.ge.u", uimm9>;
def XORGEU_ddd       : AC_RR<0x0B, 0x34, "xor.ge.u">;

// XOR.LT
def XORLT_ddc        : AC_RC<0x8B, 0x31, "xor.lt"  >;
def XORLT_ddd        : AC_RR<0x0B, 0x31, "xor.lt"  >;

// XOR.LT.U
def XORLTU_ddc       : AC_RC<0x8B, 0x32, "xor.lt.u", uimm9>;
def XORLTU_ddd       : AC_RR<0x0B, 0x32, "xor.lt.u">;

// XOR.NE
def XORNE_ddc        : AC_RC<0x8B, 0x30, "xor.ne"  >;
let isCommutable = 1 in
def XORNE_ddd        : AC_RR<0x0B, 0x30, "xor.ne"  >;


// 2.5.3 Compare with Shift

// SH.EQ
def SHEQ_ddc         : CWH_RC<0x8B, 0x37, "sh.eq"  >;
let isCommutable = 1 in
def SHEQ_ddd         : CWH_RR<0x0B, 0x37, "sh.eq"  >;

// SH.GE
def SHGE_ddc         : CWH_RC<0x8B, 0x3B, "sh.ge"  >;
def SHGE_ddd         : CWH_RR<0x0B, 0x3B, "sh.ge"  >;

// SH.GE.U
def SHGEU_ddc        : CWH_RC<0x8B, 0x3C, "sh.ge.u", uimm9>;
def SHGEU_ddd        : CWH_RR<0x0B, 0x3C, "sh.ge.u">;

// SH.LT
def SHLT_ddc         : CWH_RC<0x8B, 0x39, "sh.lt"  >;
def SHLT_ddd         : CWH_RR<0x0B, 0x39, "sh.lt"  >;

// SH.LT.U
def SHLTU_ddc        : CWH_RC<0x8B, 0x3A, "sh.lt.u", uimm9>;
def SHLTU_ddd        : CWH_RR<0x0B, 0x3A, "sh.lt.u">;

// SH.NE
def SHNE_ddc         : CWH_RC<0x8B, 0x38, "sh.ne"  >;
let isCommutable = 1 in
def SHNE_ddd         : CWH_RR<0x0B, 0x38, "sh.ne"  >;

// 2.5.4 Packed Compare

let isCommutable = 1 in {
  // EQ.B
  def EQB_ddd      :  PCMP_RR<0x0B, 0x50, "eq.b">;

  // EQ.H
  def EQH_ddd      :  PCMP_RR<0x0B, 0x70, "eq.h">;

  // EQ.W
  def EQW_ddd      :  PCMP_RR<0x0B, 0x90, "eq.w">;
} // isCommutable = 1

// LT.B
def LTB_ddd        :  PCMP_RR<0x0B, 0x52, "lt.b">;

// LT.BU
def LTBU_ddd       :  PCMP_RR<0x0B, 0x53, "lt.bu">;

// LT.H
def LTH_ddd        :  PCMP_RR<0x0B, 0x72, "lt.h">;

// LT.HU
def LTHU_ddd       :  PCMP_RR<0x0B, 0x73, "lt.hu">;

// LT.W
def LTW_ddd        :  PCMP_RR<0x0B, 0x92, "lt.w">;

// LT.WU
def LTWU_ddd       :  PCMP_RR<0x0B, 0x93, "lt.wu">;

// 2.6.1 Simple Bit Operations

// AND.T
def ANDT_ddcdc       : SBO_BIT<0x87, 0x00, "and.t" >;

// ANDN.T
def ANDN_ddcdc       : SBO_BIT<0x87, 0x03, "andn.t">;

// NAND.T
def NANDT_ddcdc      : SBO_BIT<0x07, 0x00, "nand.t">;

// NOR.T
def NORT_ddcdc       : SBO_BIT<0x87, 0x02, "nor.t" >;

// OR.T
def ORT_ddcdc        : SBO_BIT<0x87, 0x01, "or.t"  >;

// ORN.T
def ORNT_ddcdc       : SBO_BIT<0x07, 0x01, "orn.t" >;

// XOR.T
def XORT_ddcdc       : SBO_BIT<0x07, 0x03, "xor.t" >;

// XNOR.T
def XNORT_ddcdc      : SBO_BIT<0x07, 0x02, "xnor.t">;

// 2.6.2 Accumulating Bit Operations

// AND.AND.T
def ANDANDT_ddcdc    : ABO_BIT<0x47, 0x00, "and.and.t" >;

// AND.ANDN.T
def ANDANDNT_ddcdc   : ABO_BIT<0x47, 0x03, "and.andn.t">;

// AND.NOR.T
def ANDNORT_ddcdc    : ABO_BIT<0x47, 0x02, "and.nor.t" >;

// AND.OR.T
def ANDORT_ddcdc     : ABO_BIT<0x47, 0x01, "and.or.t"  >;

// OR.AND.T
def ORANDT_ddcdc     : ABO_BIT<0xC7, 0x00, "or.and.t"  >;

// OR.ANDN.T
def ORANDNT_ddcdc    : ABO_BIT<0xC7, 0x03, "or.andn.t" >;

// OR.NOR.T
def ORNORT_ddcdc     : ABO_BIT<0xC7, 0x02, "or.nor.t"  >;

// OR.OR.T
def ORORT_ddcdc      : ABO_BIT<0xC7, 0x01, "or.or.t"   >;

// 2.6.3 Shifting Bit Operations

// SH.AND.T
def SHANDT_ddcdc     : SHBO_BIT<0x27, 0x00, "sh.and.t" >;

// SH.ANDN.T
def SHANDNT_ddcdc    : SHBO_BIT<0x27, 0x03, "sh.andn.t">;

// SH.NAND.T
def SHNANDT_ddcdc    : SHBO_BIT<0xA7, 0x00, "sh.nand.t">;

// SH.NOR.T
def SHNORT_ddcdc     : SHBO_BIT<0x27, 0x02, "sh.nor.t" >;

// SH.OR.T
def SHORT_ddcdc      : SHBO_BIT<0x27, 0x01, "sh.or.t"  >;

// SH.ORN.T
def SHORNT_ddcdc     : SHBO_BIT<0xA7, 0x01, "sh.orn.t" >;

// SH.XNOR.T
def SHXNORT_ddcdc    : SHBO_BIT<0xA7, 0x02, "sh.xnor.t">;

// SH.XOR.T
def SHXORT_ddcdc     : SHBO_BIT<0xA7, 0x03, "sh.xor.t" >;



//===----------------------------------------------------------------------===//
//  2.6.4 Miscellaneous Bit Operations.
//
let isReMaterializable = 1, n = 0 in {
    // BMERGE
    def BMERGE_ddd     :  RR<0x4B, 0x01, (outs DataRegs:$d),
                            (ins DataRegs:$s1, DataRegs:$s2),
                            "bmerge", "\t$d, $s1, $s2">;

    // BSPLIT
    let s2 = 0 in
    def BSPLIT_ed      :  RR<0x4B, 0x09, (outs ExtDataRegs:$d),
                            (ins DataRegs:$s1),
                            "bsplit", "\t$d, $s1">;
} // isReMaterializable = 1, n = 0

//===----------------------------------------------------------------------===//
//  2.7 Address Arithmetic.
//
let isReMaterializable = 1 in {
  let isAdd = 1 in {
    // ADD.A
    let n = 0, isCommutable = 1 in
    def ADDA_aaa        :  RR<0x01, 0x01, (outs AddrRegs:$d),
                              (ins AddrRegs:$s1, AddrRegs:$s2),
                              "add.a", "\t$d, $s1, $s2">;

    let Constraints = "$s1_d = $src" in {
      def ADDA_16_ac    :  SRC<0xB0, (outs AddrRegs:$s1_d),
                              (ins AddrRegs:$src, simm4:$const4),
                              "add.a", "\t$s1_d, $const4">;

      def ADDA_16_aa    :  SRR<0x30, (outs AddrRegs:$s1_d),
                              (ins AddrRegs:$src, AddrRegs:$s2),
                              "add.a", "\t$s1_d, $s2">;
    } // Constraints = "$s1_d = $src"

    // ADDIH.A
    def ADDIHA_aac      :  RLC<0x11, (outs AddrRegs:$d),
                              (ins AddrRegs:$s1, uimm16_RLC:$const16),
                              "addih.a", "\t$d, $s1, $const16">;

    // ADDSC.A
    def ADDSCA_aadc      :  RR<0x01, 0x60, (outs AddrRegs:$d),
                              (ins AddrRegs:$s2, DataRegs:$s1, uimm2:$n),
                              "addsc.a", "\t$d, $s2, $s1, $n">;

    let DecoderMethod = "decode_16_aad15c" in
    def ADDSCA_16_aad15c : SRRS<0x10, (outs AddrRegs:$s1_d),
                                (ins AddrRegs:$s2, ImplDataReg:$d15, uimm2:$n),
                                "addsc.a", "\t$s1_d, $s2, $d15, $n">;

    // ADDSC.AT
    let n = 0 in
    def ADDSCAT_aad      :  RR<0x01, 0x62, (outs AddrRegs:$d),
                              (ins AddrRegs:$s2, DataRegs:$s1),
                              "addsc.at", "\t$d, $s2, $s1">;
  } // isAdd = 1

  // SUB.A
  let n = 0 in
  def SUBA_aaa           :  RR<0x01, 0x02, (outs AddrRegs:$d),
                              (ins AddrRegs:$s1, AddrRegs:$s2),
                              "sub.a", "\t$d, $s1, $s2">;

  let Constraints = "$a10 = $src", DecoderMethod = "decode_16_a10a10c" in
  def SUBA_16_a10c       :  SC<0x20, (outs ImplStackPtrReg:$a10),
                              (ins ImplStackPtrReg:$src, uimm8:$const8),
                              "sub.a", "\t$a10, $const8">;
  // LEA
  def LEA_ac             : ABS<0xC5, 0x00, (outs AddrRegs:$s1_d),
                              (ins off18_abs:$off18),
                              "lea", "\t$s1_d, $off18">;

  def LEA_aasc           :  BO<0x49, 0x28, (outs AddrRegs:$s1_d),
                              (ins AddrRegs:$s2, simm10_disas:$off10),
                              "lea", "\t$s1_d, [$s2], $off10">;

  def LEA_aac            : BOL<0xD9, (outs AddrRegs:$s1_d),
                              (ins AddrRegs:$s2, simm16_BOL:$off16),
                              "lea", "\t$s1_d, [$s2], $off16">;
} // isReMaterializable = 1

// 2.8 Address Comparison

let isCommutable = 1 in {
  // EQ.A  
  def EQA_daa        : ADDRESSC_RR<0x01, 0x40, "eq.a">;

  // NE.A
  def NEA_daa        : ADDRESSC_RR<0x01, 0x41, "ne.a">;
} // isCommutable = 1

// LT.A
def LTA_daa          : ADDRESSC_RR<0x01, 0x42, "lt.a">;

// GE.A
def GEA_daa          : ADDRESSC_RR<0x01, 0x43, "ge.a">;

let n = 0, s2 = 0, isReMaterializable = 1 in {
  // EQZ.A
  def EQZA_da        : RR<0x01, 0x48, (outs DataRegs:$d),
                          (ins AddrRegs:$s1),
                          "eqz.a" , "\t$d, $s1">;
  // NEZ.A
  def NEZA_da        : RR<0x01, 0x49, (outs DataRegs:$d),
                          (ins AddrRegs:$s1),
                          "nez.a" , "\t$d, $s1">;
} // n = 0, s2 = 0, isReMaterializable = 1

//===----------------------------------------------------------------------===//
//  2.9 Branch Instructions.
//

// 2.9.1 Unconditional Branch Instructions.

let isBranch = 1, isTerminator = 1, isBarrier = 1 in {
  def J       : UBI_B<0x1D,  "j", simm24_lsb0>;
  def J_16    : UBI_SB<0x3C, "j">;

  def JA      : UBI_B<0x9D,  "ja", disp24_abs>;

  let isIndirectBranch = 1 in {
    def JI      : UBI_RR<0x03, "ji">;
    def JI_16   : SR<0xDC, 0x00, (outs), (ins AddrRegs:$s1_d),
                    "ji", "\t$s1_d">;
  } // isIndirectBranch = 1

  let Defs = [A11] in { // Return Address register
    def JL    : UBI_B<0x5D,  "jl", simm24_lsb0>;
    def JLA   : UBI_B<0xDD,  "jla", disp24_abs>;
    def JLI   : UBI_RR<0x02, "jli">;
  } // Defs = [A11]
} // isBranch = 1, isTerminator = 1, isBarrier = 1

let Defs = [A11], Uses = [PSW], isCall = 1 in {
  def CALL    : UBI_B<0x6D,  "call", simm24_lsb0>;
  def CALL_16 : UBI_SB<0x5C, "call">;

  def CALLA   : UBI_B<0xED,  "calla", disp24_abs>;

  def CALLI   : UBI_RR<0x00, "calli">;
} // Defs = [A11], Uses = [PSW], isCall = 1

let Uses = [A11], isReturn = 1, isTerminator = 1, isBarrier = 1, s1_d = 0 in {
  def RET    : SYS<0x0D, 0x06, (outs), (ins), "ret", "">;
  def RET_16 :  SR<0x00, 0x09, (outs), (ins), "ret", "">;

  def RFE    : SYS<0x0D, 0x07, (outs), (ins), "rfe", "">;
  def RFE_16 :  SR<0x00, 0x08, (outs), (ins), "rfe", "">;
} // Uses = [A11], isReturn = 1, isTerminator = 1, isBarrier = 1, s1_d = 0 


// 2.9.2 Conditional Branch Instructions.

// JEQ
def JEQ_dcc        : CB_BRC<0xDF, 0x00, "jeq">;
def JEQ_ddc        : CB_BRR<0x5F, 0x00, "jeq">;

let DecoderMethod = "decode_16_d15cc_uimm4_lsb0" in
def JEQ_16_d15cc   : CB_SBC<0x1E,       "jeq">;

let DecoderMethod = "decode_16_d15cc_disp4_16" in
def JEQ_16_d15clc  : CB_SBC<0x9E,       "jeq", disp4_16>;

let DecoderMethod = "decode_16_d15d_uimm4_lsb0" in
def JEQ_16_d15dc   : CB_D15_SBR<0x3E,   "jeq">;

let DecoderMethod = "decode_16_d15d_disp4_16" in
def JEQ_16_d15dlc  : CB_D15_SBR<0xBE,   "jeq", disp4_16>;

// JEQ.A
def JEQA_aac       : CB_BRR<0x7D, 0x00, "jeq.a", AddrRegs>;

// JGE
def JGE_dcc        : CB_BRC<0xFF, 0x00, "jge">;
def JGE_ddc        : CB_BRR<0x7F, 0x00, "jge">;

// JGE.U
def JGEU_dcc       : CB_BRC<0xFF, 0x01, "jge.u", uimm4>;
def JGEU_ddc       : CB_BRR<0x7F, 0x01, "jge.u">;

// JGEZ
def JGEZ_16_dc     : CB_SBR<0xCE,       "jgez">;

// JGTZ
def JGTZ_16_dc     : CB_SBR<0x4E,       "jgtz">;

// JLEZ
def JLEZ_16_dc     : CB_SBR<0x8E,       "jlez">;

// JLT
def JLT_dcc        : CB_BRC<0xBF, 0x00, "jlt">;
def JLT_ddc        : CB_BRR<0x3F, 0x00, "jlt">;

// JLT.U
def JLTU_dcc       : CB_BRC<0xBF, 0x01, "jlt.u", uimm4>;
def JLTU_ddc       : CB_BRR<0x3F, 0x01, "jlt.u">;

// JLTZ
def JLTZ_16_dc     : CB_SBR<0x0E,       "jltz">;

// JNE
def JNE_dcc        : CB_BRC<0xDF, 0x01, "jne">;
def JNE_ddc        : CB_BRR<0x5F, 0x01, "jne">;

let DecoderMethod = "decode_16_d15cc_uimm4_lsb0" in
def JNE_16_d15cc   : CB_SBC<0x5E,       "jne">;

let DecoderMethod = "decode_16_d15cc_disp4_16" in
def JNE_16_d15clc  : CB_SBC<0xDE,       "jne", disp4_16>;

let DecoderMethod = "decode_16_d15d_uimm4_lsb0" in
def JNE_16_d15dc   : CB_D15_SBR<0x7E,   "jne">;

let DecoderMethod = "decode_16_d15d_disp4_16" in
def JNE_16_d15dlc  : CB_D15_SBR<0xFE,   "jne", disp4_16>;

// JNE.A
def JNEA_aac       : CB_BRR<0x7D, 0x01, "jne.a", AddrRegs>;

// JNZ
let isBranch = 1, isTerminator = 1,
    DecoderMethod = "decode_16_d15c</*Signed*/ true, /*shift*/ 1>" in
def JNZ_16_d15c    : SB<0xEE, (outs),
                        (ins ImplDataReg:$d15, simm8_lsb0:$disp8),
                        "jnz", "\t$d15, $disp8">;

def JNZ_16_dc      : CB_SBR<0xF6,       "jnz">;

// JNZ.A
let s2 = 0, isBranch = 1, isTerminator = 1 in
def JNZA_ac        : BRR<0xBD, 0x01, (outs),
                         (ins AddrRegs:$s1, simm15_lsb0:$disp15),
                         "jnz.a", "\t$s1, $disp15">;

def JNZA_16_ac     : CB_SBR<0x7C,            "jnz.a", AddrRegs>;

// JNZ.T
let isBranch = 1, isTerminator = 1 in {
  def JNZT_dcc     : BRN<0x6F, 0x01, (outs),
                         (ins DataRegs:$s1, uimm5:$n, simm15_lsb0:$disp15),
                         "jnz.t", "\t$s1, $n, $disp15">;

  let DecoderMethod = "decode_16_d15cc_SBRN" in
  def JNZT_16_d15cc : SBRN<0xAE, (outs),
                          (ins ImplDataReg:$d15, uimm4:$n, uimm4_lsb0:$disp4),
                          "jnz.t", "\t$d15, $n, $disp4">;
} // isBranch = 1, isTerminator = 1

// JZ
let isBranch = 1, isTerminator = 1,
    DecoderMethod = "decode_16_d15c</*Signed*/ true, /*shift*/ 1>" in
def JZ_16_d15c     : SB<0x6E, (outs),
                        (ins ImplDataReg:$d15, simm8_lsb0:$disp8),
                        "jz", "\t$d15, $disp8">;

def JZ_16_dc       : CB_SBR<0x76,       "jz">;

// JZ.A
let s2 = 0, isBranch = 1, isTerminator = 1 in
def JZA_ac         : BRR<0xBD, 0x00, (outs),
                         (ins AddrRegs:$s1, simm15_lsb0:$disp15),
                         "jz.a", "\t$s1, $disp15">;

def JZA_16_ac      : CB_SBR<0xBC,            "jz.a", AddrRegs>;

// JZ.T
let isBranch = 1, isTerminator = 1 in {
  def JZT_dcc      : BRN<0x6F, 0x00, (outs),
                         (ins DataRegs:$s1, uimm5:$n, simm15_lsb0:$disp15),
                         "jz.t", "\t$s1, $n, $disp15">;

  let DecoderMethod = "decode_16_d15cc_SBRN" in
  def JZT_16_d15cc : SBRN<0x2E, (outs),
                          (ins ImplDataReg:$d15, uimm4:$n, uimm4_lsb0:$disp4),
                          "jz.t", "\t$d15, $n, $disp4">;
} // isBranch = 1, isTerminator = 1

// 2.9.3 Loop Instructions

let isBranch = 1, isTerminator = 1 in {
  let Constraints = "$s2 = $src" in {
    // LOOP
    let s1 = 0 in
    def LOOP_ac      : BRR<0xFD, 0x00, (outs AddrRegs:$s2),
                           (ins AddrRegs:$src, simm15_lsb0:$disp15),
                           "loop" , "\t$s2, $disp15">;

    def LOOP_16_ac  : SBR<0xFC, (outs AddrRegs:$s2),
                          (ins AddrRegs:$src, simm4_1:$disp4),
                          "loop" , "\t$s2, $disp4">;
  } // Constraints = "$s2 = $src"

  // LOOPU
  let s1 = 0, s2 = 0 in
  def LOOPU_c      : BRR<0xFD, 0x01, (outs),
                         (ins simm15_lsb0:$disp15),
                         "loopu" , "\t$disp15">;

  let Constraints = "$s1 = $src" in {
    // JNED
    def JNED_dcc     : BRC<0x9F, 0x01, (outs DataRegs:$s1),
                           (ins DataRegs:$src, simm4:$const4,
                                simm15_lsb0:$disp15),
                           "jned" , "\t$s1, $const4, $disp15">;

    def JNED_ddc     : BRR<0x1F, 0x01, (outs DataRegs:$s1),
                           (ins DataRegs:$src, DataRegs:$s2,
                                simm15_lsb0:$disp15),
                           "jned" , "\t$s1, $s2, $disp15">;

    // JNEI
    def JNEI_dcc     : BRC<0x9F, 0x00, (outs DataRegs:$s1),
                           (ins DataRegs:$src, simm4:$const4,
                                simm15_lsb0:$disp15),
                           "jnei" , "\t$s1, $const4, $disp15">;

    def JNEI_ddc     : BRR<0x1F, 0x00, (outs DataRegs:$s1),
                           (ins DataRegs:$src, DataRegs:$s2,
                                simm15_lsb0:$disp15),
                           "jnei" , "\t$s1, $s2, $disp15">;
  } // Constraints = "$s1 = $src"
} // isBranch = 1, isTerminator = 1

//===----------------------------------------------------------------------===//
//  2.10 Load and Store Instructions.
//

// 2.10.1. Load/Store Basic Data Types

// LD.A
def LDA_ac          : LOAD_ABS<     0x85, 0x02, "ld.a", AddrRegs>;
def LDA_aac         : LOAD_BO_DEPR< 0x09, 0x26, "ld.a", AddrRegs>;
def LDA_ap          : LOAD_BO_BR<   0x29, 0x06, "ld.a", AddrRegs>;
def LDA_apc         : LOAD_BO_CR<   0x29, 0x16, "ld.a", AddrRegs>;

let Constraints = "$s2 = $dest,@earlyclobber $dest" in {
  def LDA_aac_poi   : LOAD_BO_POST< 0x09, 0x06, "ld.a", AddrRegs>;
  def LDA_aac_pri   : LOAD_BO_PRE<  0x09, 0x16, "ld.a", AddrRegs>;
} // Constraints = "$s2 = $dest,@earlyclobber $dest"

def LDA_aalc        : LOAD_BOL<           0x99, "ld.a", AddrRegs>;

let mayLoad = 1, mayStore = 0, 
    DecoderMethod = "decode_16_x15a10c</*isD15*/ false>" in
def LDA_16_a15a10c  : SC<0xD8, (outs ImplAddrReg:$a15),
                        (ins ImplStackPtrReg:$a10, uimm8_lsb00:$const8),
                        "ld.a", "\t$a15, [$a10], $const8">;

def LDA_16_aa       : LOAD_SLR<           0xD4, "ld.a", AddrRegs>;

let Constraints = "$s2 = $dest,@earlyclobber $dest" in
def LDA_16_aa_poi   : LOAD_SLR_POST<      0xC4, "ld.a", AddrRegs>;

let DecoderMethod = "decode_16_aa15c" in
def LDA_16_aa15c    : LOAD_SLRO<0xC8, "ld.a", AddrRegs,    uimm4_lsb00>;

let DecoderMethod = "decode_16_x15ac</*shift*/ 2,/*isD15*/ false>" in
def LDA_16_a15ac    : LOAD_SRO<0xCC,  "ld.a", ImplAddrReg, uimm4_lsb00>;

// LD.B
def LDB_dc          : LOAD_ABS<     0x05, 0x00, "ld.b">;
def LDB_dac         : LOAD_BO_DEPR< 0x09, 0x20, "ld.b">;
def LDB_dp          : LOAD_BO_BR<   0x29, 0x00, "ld.b">;
def LDB_dpc         : LOAD_BO_CR<   0x29, 0x10, "ld.b">;
def LDB_dac_poi     : LOAD_BO_POST< 0x09, 0x00, "ld.b">;
def LDB_dac_pri     : LOAD_BO_PRE<  0x09, 0x10, "ld.b">;
def LDB_dalc        : LOAD_BOL<           0x79, "ld.b">;

// LD.BU
def LDBU_dc         : LOAD_ABS<     0x05, 0x01, "ld.bu">;
def LDBU_dac        : LOAD_BO_DEPR< 0x09, 0x21, "ld.bu">;
def LDBU_dp         : LOAD_BO_BR<   0x29, 0x01, "ld.bu">;
def LDBU_dpc        : LOAD_BO_CR<   0x29, 0x11, "ld.bu">;
def LDBU_dac_poi    : LOAD_BO_POST< 0x09, 0x01, "ld.bu">;
def LDBU_dac_pri    : LOAD_BO_PRE<  0x09, 0x11, "ld.bu">;
def LDBU_dalc       : LOAD_BOL<           0x39, "ld.bu">;
def LDBU_16_da      : LOAD_SLR<           0x14, "ld.bu">;
def LDBU_16_da_poi  : LOAD_SLR_POST<      0x04, "ld.bu">;

let DecoderMethod = "decode_16_da15c</*shift*/ 0>" in
def LDBU_16_da15c   : LOAD_SLRO<0x08,           "ld.bu", DataRegs,    uimm4>;

let DecoderMethod = "decode_16_x15ac</*shift*/ 0, /*isD15*/ true>" in
def LDBU_16_d15ac   : LOAD_SRO<0x0C,            "ld.bu", ImplDataReg, uimm4>;

// LD.D
def LDD_ec          : LOAD_ABS<     0x85, 0x01, "ld.d", ExtDataRegs>;
def LDD_eac         : LOAD_BO<      0x09, 0x25, "ld.d", ExtDataRegs>;
def LDD_ep          : LOAD_BO_BR<   0x29, 0x05, "ld.d", ExtDataRegs>;
def LDD_epc         : LOAD_BO_CR<   0x29, 0x15, "ld.d", ExtDataRegs>;
def LDD_eac_poi     : LOAD_BO_POST< 0x09, 0x05, "ld.d", ExtDataRegs>;
def LDD_eac_pri     : LOAD_BO_PRE<  0x09, 0x15, "ld.d", ExtDataRegs>;

// LD.DA
def LDDA_pc         : LOAD_ABS<     0x85, 0x03, "ld.da", ExtAddrRegs>;
def LDDA_pac        : LOAD_BO<      0x09, 0x27, "ld.da", ExtAddrRegs>;
def LDDA_pp         : LOAD_BO_BR<   0x29, 0x07, "ld.da", ExtAddrRegs>;
def LDDA_ppc        : LOAD_BO_CR<   0x29, 0x17, "ld.da", ExtAddrRegs>;
def LDDA_pac_poi    : LOAD_BO_POST< 0x09, 0x07, "ld.da", ExtAddrRegs>;
def LDDA_pac_pri    : LOAD_BO_PRE<  0x09, 0x17, "ld.da", ExtAddrRegs>;

// LD.H
def LDH_dc          : LOAD_ABS<     0x05, 0x02, "ld.h">;
def LDH_dac         : LOAD_BO_DEPR< 0x09, 0x22, "ld.h">;
def LDH_dp          : LOAD_BO_BR<   0x29, 0x02, "ld.h">;
def LDH_dpc         : LOAD_BO_CR<   0x29, 0x12, "ld.h">;
def LDH_dac_poi     : LOAD_BO_POST< 0x09, 0x02, "ld.h">;
def LDH_dac_pri     : LOAD_BO_PRE<  0x09, 0x12, "ld.h">;
def LDH_dalc        : LOAD_BOL<           0xC9, "ld.h">;
def LDH_16_da       : LOAD_SLR<           0x94, "ld.h">;
def LDH_16_da_poi   : LOAD_SLR_POST<      0x84, "ld.h">;

let DecoderMethod = "decode_16_da15c</*shift*/ 1>" in
def LDH_16_da15c    : LOAD_SLRO<0x88, "ld.h", DataRegs,    uimm4_lsb0>;

let DecoderMethod = "decode_16_x15ac</*shift*/ 1, /*isD15*/ true>" in
def LDH_16_d15ac    : LOAD_SRO<0x8C,  "ld.h", ImplDataReg, uimm4_lsb0>;

// LD.HU
def LDHU_dc         : LOAD_ABS<     0x05, 0x03, "ld.hu">;
def LDHU_dac        : LOAD_BO_DEPR< 0x09, 0x23, "ld.hu">;
def LDHU_dp         : LOAD_BO_BR<   0x29, 0x03, "ld.hu">;
def LDHU_dpc        : LOAD_BO_CR<   0x29, 0x13, "ld.hu">;
def LDHU_dac_poi    : LOAD_BO_POST< 0x09, 0x03, "ld.hu">;
def LDHU_dac_pri    : LOAD_BO_PRE<  0x09, 0x13, "ld.hu">;
def LDHU_dalc       : LOAD_BOL<           0xB9, "ld.hu">;

// LD.Q
def LDQ_dc          : LOAD_ABS<     0x45, 0x00, "ld.q">;
def LDQ_dac         : LOAD_BO<      0x09, 0x28, "ld.q">;
def LDQ_dp          : LOAD_BO_BR<   0x29, 0x08, "ld.q">;
def LDQ_dpc         : LOAD_BO_CR<   0x29, 0x18, "ld.q">;
def LDQ_dac_poi     : LOAD_BO_POST< 0x09, 0x08, "ld.q">;
def LDQ_dac_pri     : LOAD_BO_PRE<  0x09, 0x18, "ld.q">;

// LD.W
def LDW_dc         : LOAD_ABS<      0x85, 0x00, "ld.w">;
def LDW_dac        : LOAD_BO_DEPR<  0x09, 0x24, "ld.w">;
def LDW_dp         : LOAD_BO_BR<    0x29, 0x04, "ld.w">;
def LDW_dpc        : LOAD_BO_CR<    0x29, 0x14, "ld.w">;
def LDW_dac_poi    : LOAD_BO_POST<  0x09, 0x04, "ld.w">;
def LDW_dac_pri    : LOAD_BO_PRE<   0x09, 0x14, "ld.w">;
def LDW_dalc       : LOAD_BOL<            0x19, "ld.w">;

let mayLoad = 1, mayStore = 0,
    DecoderMethod = "decode_16_x15a10c</*isD15*/ true>" in
def LDW_16_d15a10c : SC<0x58, (outs ImplDataReg:$d15),
                        (ins ImplStackPtrReg:$a10, uimm8_lsb00:$const8),
                        "ld.w", "\t$d15, [$a10], $const8">;

def LDW_16_da      : LOAD_SLR<            0x54, "ld.w">;
def LDW_16_da_poi  : LOAD_SLR_POST<       0x44, "ld.w">;

let DecoderMethod = "decode_16_da15c</*shift*/ 2>" in
def LDW_16_da15c   : LOAD_SLRO<0x48, "ld.w", DataRegs,    uimm4_lsb00>;

let DecoderMethod = "decode_16_x15ac</*shift*/ 2, /*isD15*/ true>" in
def LDW_16_d15ac   : LOAD_SRO<0x4C,  "ld.w", ImplDataReg, uimm4_lsb00>;

// ST.A
def STA_ca          : STORE_ABS<    0xA5, 0x02, "st.a", AddrRegs>;
def STA_aca         : STORE_BO_DEPR<0x89, 0x26, "st.a", AddrRegs>;
def STA_pa          : STORE_BO_BR<  0xA9, 0x06, "st.a", AddrRegs>;
def STA_pca         : STORE_BO_CR<  0xA9, 0x16, "st.a", AddrRegs>;

let Constraints = "$s2 = $dest,@earlyclobber $dest" in {
  def STA_aca_poi   : STORE_BO_POST<0x89, 0x06, "st.a", AddrRegs>;
  def STA_aca_pri   : STORE_BO_PRE< 0x89, 0x16, "st.a", AddrRegs>;
} // Constraints = "$s2 = $dest,@earlyclobber $dest"

def STA_alca        : STORE_BOL<          0xB5, "st.a", AddrRegs>;

let mayStore = 1, mayLoad = 0,
    DecoderMethod = "decode_16_a10cx15</*isD15*/ false>" in
def STA_16_a10ca15  : SC<0xF8, (outs), (ins ImplStackPtrReg:$a10,
                         uimm8_lsb00:$const8, ImplAddrReg:$a15),
                         "st.a", "\t[$a10], $const8, $a15">;

let DecoderMethod = "decode_16_acx15</*shift*/ 2, /*isD15*/ false>" in
def STA_16_aca15    : STORE_SRO<0xEC,  "st.a", ImplAddrReg, uimm4_lsb00>;

def STA_16_aa       : STORE_SSR<          0xF4, "st.a", AddrRegs>;

let Constraints = "$s2 = $dest,@earlyclobber $dest" in
def STA_16_aa_poi   : STORE_SSR_POST<     0xE4, "st.a", AddrRegs>;

let DecoderMethod = "decode_16_a15cx</*shift*/ 2, /*isDReg*/ false>" in
def STA_16_a15ca    : STORE_SSRO<0xE8, "st.a", AddrRegs,    uimm4_lsb00>;

// ST.B
def STB_cd          : STORE_ABS<    0x25, 0x00, "st.b">;
def STB_acd         : STORE_BO_DEPR<0x89, 0x20, "st.b">;
def STB_pd          : STORE_BO_BR<  0xA9, 0x00, "st.b">;
def STB_pcd         : STORE_BO_CR<  0xA9, 0x10, "st.b">;
def STB_acd_poi     : STORE_BO_POST<0x89, 0x00, "st.b">;
def STB_acd_pri     : STORE_BO_PRE< 0x89, 0x10, "st.b">;
def STB_alcd        : STORE_BOL<          0xE9, "st.b">;

let DecoderMethod = "decode_16_acx15</*shift*/ 0, /*isD15*/ true>" in
def STB_16_acd15    : STORE_SRO<0x2C,  "st.b", ImplDataReg, uimm4>;

def STB_16_ad       : STORE_SSR<          0x34, "st.b">;
def STB_16_ad_poi   : STORE_SSR_POST<     0x24, "st.b">;

let DecoderMethod = "decode_16_a15cx</*shift*/ 0, /*isDreg*/ true>" in
def STB_16_a15cd    : STORE_SSRO<0x28, "st.b", DataRegs,    uimm4>;

// ST.D
def STD_ce          : STORE_ABS<    0xA5, 0x01, "st.d", ExtDataRegs>;
def STD_ace         : STORE_BO<     0x89, 0x25, "st.d", ExtDataRegs>;
def STD_pe          : STORE_BO_BR<  0xA9, 0x05, "st.d", ExtDataRegs>;
def STD_pce         : STORE_BO_CR<  0xA9, 0x15, "st.d", ExtDataRegs>;
def STD_ace_poi     : STORE_BO_POST<0x89, 0x05, "st.d", ExtDataRegs>;
def STD_ace_pri     : STORE_BO_PRE< 0x89, 0x15, "st.d", ExtDataRegs>;

// ST.DA
def STDA_cp         : STORE_ABS<    0xA5, 0x03, "st.da", ExtAddrRegs>;
def STDA_acp        : STORE_BO<     0x89, 0x27, "st.da", ExtAddrRegs>;
def STDA_pp         : STORE_BO_BR<  0xA9, 0x07, "st.da", ExtAddrRegs>;
def STDA_pcp        : STORE_BO_CR<  0xA9, 0x17, "st.da", ExtAddrRegs>;
def STDA_acp_poi    : STORE_BO_POST<0x89, 0x07, "st.da", ExtAddrRegs>;
def STDA_acp_pri    : STORE_BO_PRE< 0x89, 0x17, "st.da", ExtAddrRegs>;

// ST.H
def STH_cd          : STORE_ABS<    0x25, 0x02, "st.h">;
def STH_acd         : STORE_BO_DEPR<0x89, 0x22, "st.h">;
def STH_pd          : STORE_BO_BR<  0xA9, 0x02, "st.h">;
def STH_pcd         : STORE_BO_CR<  0xA9, 0x12, "st.h">;
def STH_acd_poi     : STORE_BO_POST<0x89, 0x02, "st.h">;
def STH_acd_pri     : STORE_BO_PRE< 0x89, 0x12, "st.h">;
def STH_alcd        : STORE_BOL<          0xF9, "st.h">;

let DecoderMethod = "decode_16_acx15</*shift*/ 1, /*isD15*/ true>" in
def STH_16_acd15    : STORE_SRO<0xAC,  "st.h", ImplDataReg, uimm4_lsb0>;

def STH_16_ad       : STORE_SSR<          0xB4, "st.h">;
def STH_16_ad_poi   : STORE_SSR_POST<     0xA4, "st.h">;

let DecoderMethod = "decode_16_a15cx</*shift*/ 1, /*isDReg*/ true>" in
def STH_16_a15cd    : STORE_SSRO<0xA8, "st.h", DataRegs,    uimm4_lsb0>;

// ST.Q
def STQ_cd          : STORE_ABS<    0x65, 0x00, "st.q">;
def STQ_acd         : STORE_BO<     0x89, 0x28, "st.q">;
def STQ_pd          : STORE_BO_BR<  0xA9, 0x08, "st.q">;
def STQ_pcd         : STORE_BO_CR<  0xA9, 0x18, "st.q">;
def STQ_acd_poi     : STORE_BO_POST<0x89, 0x08, "st.q">;
def STQ_acd_pri     : STORE_BO_PRE< 0x89, 0x18, "st.q">;

// ST.W
def STW_cd          : STORE_ABS<    0xA5, 0x00, "st.w">;
def STW_acd         : STORE_BO_DEPR<0x89, 0x24, "st.w">;
def STW_pd          : STORE_BO_BR<  0xA9, 0x04, "st.w">;
def STW_pcd         : STORE_BO_CR<  0xA9, 0x14, "st.w">;
def STW_acd_poi     : STORE_BO_POST<0x89, 0x04, "st.w">;
def STW_acd_pri     : STORE_BO_PRE< 0x89, 0x14, "st.w">;
def STW_alcd        : STORE_BOL<          0x59, "st.w">;

let mayStore = 1, mayLoad = 0,
    DecoderMethod = "decode_16_a10cx15</*isD15*/ true>" in
def STW_16_a10cd15  : SC<0x78, (outs), (ins ImplStackPtrReg:$a10,
                         uimm8_lsb00:$const8, ImplDataReg:$d15),
                         "st.w", "\t[$a10], $const8, $d15">;

let DecoderMethod = "decode_16_acx15</*shift*/ 2, /*isD15*/ true>" in
def STW_16_acd15    : STORE_SRO<0x6C,  "st.w", ImplDataReg, uimm4_lsb00>;

def STW_16_ad       : STORE_SSR<          0x74, "st.w">;
def STW_16_ad_poi   : STORE_SSR_POST<     0x64, "st.w">;

let DecoderMethod = "decode_16_a15cx</*shift*/ 2, /*isDReg*/ true>" in
def STW_16_a15cd    : STORE_SSRO<0x68, "st.w", DataRegs,    uimm4_lsb00>;

// 2.10.3 Store Bit and Bit Field.

// ST.T
let mayStore = 1 in
def STT_ccc : ABSB<0xD5, 0x00, (outs),
                   (ins off18_abs:$off18, uimm3:$bpos3, uimm1:$b),
                   "st.t", "\t$off18, $bpos3, $b">;

// LDMST
let mayLoad = 1, mayStore = 1 in {
  def LDMST_ce : ABS<0xE5, 0x01, (outs),
                     (ins off18_abs:$off18, ExtDataRegs:$s1_d),
                     "ldmst", "\t$off18, $s1_d">;

  def LDMST_ace : BO<0x49, 0x21, (outs),
                     (ins AddrRegs:$s2, simm10:$off10, ExtDataRegs:$s1_d),
                     "ldmst", "\t[$s2], $off10, $s1_d">;

  let Constraints = "$s2 = $dst" in {
    let off10 = 0 in
    def LDMST_pe : BO<0x69, 0x01, (outs ExtAddrRegs:$dst),
                      (ins ExtAddrRegs:$s2, ExtDataRegs:$s1_d),
                      "ldmst", "\t[${s2} + r], $s1_d">;

    def LDMST_pce : BO<0x69, 0x11, (outs ExtAddrRegs:$dst),
                       (ins ExtAddrRegs:$s2, simm10:$off10, ExtDataRegs:$s1_d),
                       "ldmst", "\t[${s2} + c], $off10, $s1_d">;

    def LDMST_ace_poi : BO<0x49, 0x01, (outs AddrRegs:$dst),
                           (ins AddrRegs:$s2, simm10:$off10, ExtDataRegs:$s1_d),
                           "ldmst", "\t[${s2}+], $off10, $s1_d">;

    def LDMST_ace_pri : BO<0x49, 0x11, (outs AddrRegs:$dst),
                           (ins AddrRegs:$s2, simm10:$off10, ExtDataRegs:$s1_d),
                           "ldmst", "\t[+${s2}], $off10, $s1_d">;
  } // Constraints = "$s2 = $dst"
} // mayLoad = 1, mayStore = 1

// SWAPMSK.W
let Constraints = "$s1_d = $dst1", mayLoad = 1, mayStore = 1 in {
  def SWAPMSKW_ace : BO<0x49, 0x22, (outs ExtDataRegs:$dst1),
                        (ins AddrRegs:$s2, simm10:$off10, ExtDataRegs:$s1_d),
                        "swapmsk.w", "\t[$s2], $off10, $s1_d">;

  let Constraints = "$s1_d = $dst1, $s2 = $dst2" in {
    let off10 = 0 in
    def SWAPMSKW_pe : BO<0x69, 0x02,
                         (outs ExtAddrRegs:$dst2, ExtDataRegs:$dst1),
                         (ins ExtAddrRegs:$s2, ExtDataRegs:$s1_d),
                         "swapmsk.w", "\t[${s2} + r], $s1_d">;

    def SWAPMSKW_pce : BO<0x69, 0x12,
                        (outs ExtAddrRegs:$dst2, ExtDataRegs:$dst1),
                        (ins ExtAddrRegs:$s2, simm10:$off10, ExtDataRegs:$s1_d),
                        "swapmsk.w", "\t[${s2} + c], $off10, $s1_d">;

    def SWAPMSKW_ace_poi : BO<0x49, 0x02,
                          (outs AddrRegs:$dst2, ExtDataRegs:$dst1),
                          (ins AddrRegs:$s2, simm10:$off10, ExtDataRegs:$s1_d),
                          "swapmsk.w", "\t[${s2}+], $off10, $s1_d">;

    def SWAPMSKW_ace_pri : BO<0x49, 0x12,
                           (outs AddrRegs:$dst2, ExtDataRegs:$dst1),
                           (ins AddrRegs:$s2, simm10:$off10, ExtDataRegs:$s1_d),
                           "swapmsk.w", "\t[+${s2}], $off10, $s1_d">;
  } // Constraints = "$s1_d = $dst1, $s2 = $dst2"
} // Constraints = "$s1_d = $dst1", mayLoad = 1, mayStore = 1

// SWAP.W
let mayLoad = 1, mayStore = 1 in {
  let Constraints = "$s1_d = $dst" in
    def SWAPW_cd : ABS<0xE5, 0x00, (outs DataRegs:$dst),
                       (ins off18_abs:$off18, DataRegs:$s1_d),
                       "swap.w", "\t$off18, $s1_d">;

  let Constraints = "$s1_d = $dst1" in
  def SWAPW_acd : BO<0x49, 0x20, (outs DataRegs:$dst1),
                     (ins AddrRegs:$s2, simm10:$off10, DataRegs:$s1_d),
                     "swap.w", "\t[$s2], $off10, $s1_d">;

  let Constraints = "$s1_d = $dst1, $s2 = $dst2" in {
    let off10 = 0 in
    def SWAPW_pd : BO<0x69, 0x00, (outs ExtAddrRegs:$dst2, DataRegs:$dst1),
                      (ins ExtAddrRegs:$s2, DataRegs:$s1_d),
                      "swap.w", "\t[${s2} + r], $s1_d">;

    def SWAPW_pcd : BO<0x69, 0x10, (outs ExtAddrRegs:$dst2, DataRegs:$dst1),
                       (ins ExtAddrRegs:$s2, simm10:$off10, DataRegs:$s1_d),
                       "swap.w", "\t[${s2} + c], $off10, $s1_d">;

    def SWAPW_acd_poi : BO<0x49, 0x00, (outs AddrRegs:$dst2, DataRegs:$dst1),
                           (ins AddrRegs:$s2, simm10:$off10, DataRegs:$s1_d),
                           "swap.w", "\t[${s2}+], $off10, $s1_d">;

    def SWAPW_acd_pri : BO<0x49, 0x10, (outs AddrRegs:$dst2, DataRegs:$dst1),
                           (ins AddrRegs:$s2, simm10:$off10, DataRegs:$s1_d),
                           "swap.w", "\t[+${s2}], $off10, $s1_d">;
  } // Constraints = "$s1_d = $dst1, $s2 = $dst2"
} // mayLoad = 1, mayStore = 1

// CMPSWAP.W
let Constraints = "$s1_d = $dst1", mayLoad = 1, mayStore = 1 in {
  def CMPSWAPW_ace : BO<0x49, 0x23, (outs DataRegs:$dst1),
                        (ins AddrRegs:$s2, simm10:$off10, ExtDataRegs:$s1_d),
                        "cmpswap.w", "\t[$s2], $off10, $s1_d">;

  let Constraints = "$s1_d = $dst1, $s2 = $dst2" in {
    let off10 = 0 in
    def CMPSWAPW_pe : BO<0x69, 0x03, (outs ExtAddrRegs:$dst2, ExtDataRegs:$dst1),
                         (ins ExtAddrRegs:$s2, ExtDataRegs:$s1_d),
                         "cmpswap.w", "\t[${s2} + r], $s1_d">;

    def CMPSWAPW_pce : BO<0x69, 0x13,
                       (outs ExtAddrRegs:$dst2, ExtDataRegs:$dst1),
                       (ins  ExtAddrRegs:$s2, simm10:$off10, ExtDataRegs:$s1_d),
                       "cmpswap.w", "\t[${s2} + c], $off10, $s1_d">;

    def CMPSWAPW_ace_poi : BO<0x49, 0x03, (outs AddrRegs:$dst2, DataRegs:$dst1),
                           (ins AddrRegs:$s2, simm10:$off10, ExtDataRegs:$s1_d),
                           "cmpswap.w", "\t[${s2}+], $off10, $s1_d">;

    def CMPSWAPW_ace_pri : BO<0x49, 0x13, (outs AddrRegs:$dst2, DataRegs:$dst1),
                           (ins AddrRegs:$s2, simm10:$off10, ExtDataRegs:$s1_d),
                           "cmpswap.w", "\t[+${s2}], $off10, $s1_d">;
  } // Constraints = "$s1_d = $dst1, $s2 = $dst2"
} // Constraints = "$s1_d = $dst1, mayLoad = 1, mayStore = 1"

// 2.10.4 Move to Address

// MOV.A
def MOVA_ad         : M2ADDR_RR<0x01, 0x63, "mov.a", AddrRegs, DataRegs>;

let isMoveImm = 1 in
def MOVA_16_ac      : SRC<0xA0, (outs AddrRegs:$s1_d), (ins uimm4:$const4),
                                            "mov.a", "\t$s1_d, $const4">;

def MOVA_16_da      : M2ADDR_SRR<0x60,      "mov.a", AddrRegs, DataRegs>;

// MOV.AA
def MOVAA_aa        : M2ADDR_RR<0x01, 0x00, "mov.aa">;
def MOVAA_16_da     : M2ADDR_SRR<0x40,      "mov.aa">;

// MOV.D
def MOVD_da         : M2ADDR_RR<0x01, 0x4C, "mov.d", DataRegs, AddrRegs>;
def MOVD_16_da      : M2ADDR_SRR<0x80,      "mov.d", DataRegs ,AddrRegs>;

// MOVH.A
let s1 = 0, isMoveImm = 1 in
def MOVHA_ac        : RLC<0x91, (outs AddrRegs:$d), 
                          (ins uimm16_RLC:$const16),
                          "movh.a", "\t$d, $const16">;
//===----------------------------------------------------------------------===//
//  Check Instructions.
//

let n = 0, isReMaterializable = 1 in {
  let s2 = 0 in {
    // PARITY
    def PARITY_dd     :  RR<0x4B, 0x02, (outs DataRegs:$d),
                          (ins DataRegs:$s1),
                          "parity", "\t$d, $s1">;
  } // s2 = 0

  // IXMAX
  def IXMAX_eed       : CHECK_RRR<0x6B, 0x0A, "ixmax">;

  // IXMAXU
  def IXMAXU_eed      : CHECK_RRR<0x6B, 0x0B, "ixmax.u">;

  // IXMIN
  def IXMIN_eed       : CHECK_RRR<0x6B, 0x08, "ixmin">;

  // IXMINU
  def IXMINU_eed      : CHECK_RRR<0x6B, 0x09, "ixmin.u">;
} // n = 0, isReMaterializable = 1

// 2.11.1 Lower Context Saving and Restoring

let s1_d = 0 in {
  // SVLCX
  let Defs = [FCX, PCXI], Uses = [A2, A3, A4, A5, A6, A7, A11, D0, D1, D2, D3,
              D4, D5, D6, D7, FCX, ICR, LCX, PCXI], mayStore = 1 in
  def SVLCX         : SYS<0x0D, 0x08, (outs), (ins), "svlcx" , "">;

  // RSLCX
  let Defs = [A2, A3, A4, A5, A6, A7, A11, D0, D1, D2, D3, D4, D5, D6, D7,
              PCXI], Uses = [FCX, PCXI], mayLoad = 1 in
  def RSLCX         : SYS<0x0D, 0x09, (outs), (ins), "rslcx" , "">;

} // s1_d = 0

// BISR
let Defs = [FCX, ICR, PCXI], Uses = [A2, A3, A4, A5, A6, A7, A11, D0, D1, D2,
            D3, D4, D5, D6, D7, FCX, ICR, LCX, PCXI], mayStore = 1 in {
  let d = 0, s1 = 0 in
  def BISR_c         : RC<0xAD, 0x00, (outs), (ins uimm9:$const9),
                          "bisr" , "\t$const9">;

  def BISR_16_c      : SC<0xE0, (outs), (ins uimm8:$const8),
                          "bisr" , "\t$const8">;
} // Defs = [FCX, ICR, PCXI], Uses = [A2, A3, A4, A5, A6, A7, A11, D0, D1, D2,
  // D3, D4, D5, D6, D7, FCX, ICR, LCX, PCXI], mayStore = 1

// 2.11.2 Context Loading and Storing

let mayLoad = 1, mayStore = 0 in {
  let Defs = [A10,A11,A12,A13,A14,A15,D8,D9,D10,D11,D12,D13,D14,D15] in {
    // LDUCX
    def LDUCX_c       : CLS_ABS<0x15, 0x03, "lducx" >;
    def LDUCX_ac      : CLS_BO<0x49,  0x25, "lducx" >;
  } // Defs = [A10,A11,A12,A13,A14,A15,D8,D9,D10,D11,D12,D13,D14,D15]

  let Defs = [A2,A3,A4,A5,A6,A7,D0,D1,D2,D3,D4,D5,D6,D7] in {
    // LDLCX
    def LDLCX_c       : CLS_ABS<0x15, 0x02, "ldlcx" >;
    def LDLCX_ac      : CLS_BO<0x49,  0x24, "ldlcx" >;
  } // Defs = [A2,A3,A4,A5,A6,A7,D0,D1,D2,D3,D4,D5,D6,D7]
} // mayLoad = 1, mayStore = 0

let mayLoad = 0, mayStore = 1 in {
  let Uses = [A10,A11,A12,A13,A14,A15,D8,D9,D10,D11,D12,D13,D14,
              D15,PCXI,PSW] in {
    // STUCX
    def STUCX_c         : CLS_ABS<0x15, 0x01, "stucx" >;
    def STUCX_ac        : CLS_BO<0x49,  0x27, "stucx" >;
  } // Uses = [A10,A11,A12,A13,A14,A15,D8,D9,D10,D11,D12,D13,D14,D15,PCXI,PSW]

  let Uses = [A2,A3,A4,A5,A6,A7,A11,D0,D1,D2,D3,D4,D5,D6,D7,PCXI] in {
    // STLCX
    def STLCX_c         : CLS_ABS<0x15, 0x00, "stlcx" >;
    def STLCX_ac        : CLS_BO<0x49,  0x26, "stlcx" >;
  } // Uses = [A2,A3,A4,A5,A6,A7,A11,D0,D1,D2,D3,D4,D5,D6,D7,PCXI]
} // mayLoad = 0, mayStore = 1

// Floating Point Operations

let n = 1, Defs = [PSW] in {
  // ADD.F
  let Uses = [PSW], s2 = 0 in
  def ADDF_ddd      : RRR<0x6B, 0x02, (outs DataRegs:$d),
                          (ins DataRegs:$s3, DataRegs:$s1),
                          "add.f", "\t$d, $s3, $s1">;

  // CMP.F
  def CMPF_ddd      : FPO_RR<0x4B,  0x00, "cmp.f">;

 let Uses = [PSW] in {
    // DIV.F
    def DIVF_ddd    : FPO_RR<0x4B,  0x05, "div.f">;

    // MADD.F
    def MADDF_dddd  : RRR<0x6B, 0x06, (outs DataRegs:$d),
                          (ins DataRegs:$s3, DataRegs:$s1, DataRegs:$s2),
                          "madd.f", "\t$d, $s3, $s1, $s2">;

    // MSUB.F
    def MSUBF_dddd  : RRR<0x6B, 0x07, (outs DataRegs:$d),
                          (ins DataRegs:$s3, DataRegs:$s1, DataRegs:$s2),
                          "msub.f", "\t$d, $s3, $s1, $s2">;

    // MUL.F
    let isCommutable = 1 in
    def MULF_ddd    : FPO_RR<0x4B,  0x04, "mul.f">;

    // SUB.F
    let s2 = 0 in
    def SUBF_ddd    : RRR<0x6B, 0x03, (outs DataRegs:$d),
                          (ins DataRegs:$s3, DataRegs:$s1),
                          "sub.f", "\t$d, $s3, $s1">;
  } // Uses = [PSW]

  // QSEED.F
  let s2 = 0 in
  def QSEEDF_dd     : RR<0x4B, 0x19, (outs DataRegs:$d),
                         (ins DataRegs:$s1),
                         "qseed.f" , "\t$d, $s1">;
} // n = 1, Defs = [PSW]

//===----------------------------------------------------------------------===//
//  2.12 System Instructions.
//

let hasSideEffects = 1 in {
  // SYSCALL
  let s1 = 0, d = 0, Uses = [PSW], isCall = 1, isTrap = 1, isTerminator = 1 in
  def SYSCALL_c : RC<0xAD, 0x04, (outs), (ins uimm9:$const9),
                     "syscall", "\t$const9">;

  let s1_d = 0 in {
    // DSYNC
    def DSYNC : SYS<0x0D, 0x12, (outs), (ins), "dsync", "">;

    // ISYNC
    def ISYNC : SYS<0x0D, 0x13, (outs), (ins), "isync", "">;

    // DISABLE
    let Defs = [ICR] in
    def DISABLE : SYS<0x0D, 0x0D, (outs), (ins), "disable", "">;
  } // s1_d = 0

  let Defs = [ICR], Uses = [ICR] in
  def DISABLE_d : SYS<0x0D, 0x0F, (outs DataRegs:$s1_d), (ins),
                      "disable", "\t$s1_d">;

  let s1_d = 0 in {
    // ENABLE
    let Defs = [ICR] in
    def ENABLE : SYS<0x0D, 0x0C, (outs), (ins), "enable", "">;

    let isTrap = 1, Uses = [PSW] in {
      // TRAPSV
      def TRAPSV : SYS<0x0D, 0x15, (outs), (ins), "trapsv", "">;

      // TRAPV
      def TRAPV : SYS<0x0D, 0x14, (outs), (ins), "trapv", "">;
    } // isTrap = 1, Uses = [PSW]

    // NOP
    def NOP_16 : SR<0x00, 0x00, (outs), (ins), "nop", "">;

    def NOP : SYS<0x0D, 0x00, (outs), (ins), "nop", "">;
  } // s1_d = 0

  // RESTORE
  let Defs = [ICR] in
  def RESTORE_d : SYS<0x0D, 0x0E, (outs), (ins DataRegs:$s1_d),
                      "restore", "\t$s1_d">;

  let s1_d = 0 in {
    // WAIT
    def WAIT : SYS<0x0D, 0x16, (outs), (ins), "wait", "">;

    // DEBUG
    def DEBUG_16 : SR<0x00, 0x0A, (outs), (ins), "debug", "">;

    def DEBUG : SYS<0x0D, 0x04, (outs), (ins), "debug", "">;

    // RFM
    let isReturn = 1, Defs = [A10, A11, PSW, PCXI, ICR],
                      Uses = [A11, PSW, PCXI] in
    def RFM : SYS<0x0D, 0x05, (outs), (ins), "rfm", "">;

    // RSTV
    let Defs = [PSW] in
    def RSTV : SYS<0x2F, 0x00, (outs), (ins), "rstv", "">;
  } // s1_d = 0

  // UPDFL
  let n = 1, d = 0, s2 = 0, Defs = [PSW] in
  def UPDFL_d : RR<0x4B, 0x0C, (outs), (ins DataRegs:$s1),
                   "updfl", "\t$s1">;

  // MFCR
  let s1 = 0 in
  def MFCR_dc : RLC<0x4D, (outs DataRegs:$d), (ins sysreg:$const16),
                    "mfcr", "\t$d, $const16">;

  // MTCR
  let d = 0 in
  def MTCR_dc : RLC<0xCD, (outs), (ins sysreg:$const16, DataRegs:$s1),
                    "mtcr", "\t$const16, $s1">;
} // hasSideEffects = 1

//===----------------------------------------------------------------------===//
// Floating Point Conversion Instructions.
//

let Defs = [PSW], n = 1 in {
  let Uses = [PSW] in {
    // FTOQ31
    def FTOQ31_ddd   :  RR<0x4B, 0x11, (outs DataRegs:$d),
                              (ins DataRegs:$s1, DataRegs:$s2),
                              "ftoq31", "\t$d, $s1, $s2">;
  } // Uses = [PSW]

  // FTOQ31Z
  def FTOQ31Z_ddd    :  RR<0x4B, 0x18, (outs DataRegs:$d),
                              (ins DataRegs:$s1, DataRegs:$s2),
                              "ftoq31z", "\t$d, $s1, $s2">;

  // FTOI
  let Uses = [PSW] in
  def FTOI_dd        :  FPC_RR<0x4B, 0x10, "ftoi">;

  // FTOIZ
  def FTOIZ_dd       :  FPC_RR<0x4B, 0x13, "ftoiz">;

  // FTOU
  let Uses = [PSW] in
  def FTOU_dd        :  FPC_RR<0x4B, 0x12, "ftou">;

  // FTOUZ
  def FTOUZ_dd       :  FPC_RR<0x4B, 0x17, "ftouz">;

  let Uses = [PSW] in {
    // ITOF
    def ITOF_dd        :  FPC_RR<0x4B, 0x14, "itof">;

    // UTOF
    def UTOF_dd        :  FPC_RR<0x4B, 0x16, "utof">;
  } // Uses = [PSW]
} // Defs = [PSW], n = 1

let s2 = 0, n = 0 in {
  // PACK
  let Uses = [PSW] in
  def PACK_ded         :  RRR<0x6B, 0x00, (outs DataRegs:$d),
                                (ins ExtDataRegs:$s3, DataRegs:$s1),
                                "pack", "\t$d, $s3, $s1">; 

  // UNPACK
  def UNPACK_ded       :  RR<0x4B, 0x08, (outs ExtDataRegs:$d),
                                (ins DataRegs:$s1),
                                "unpack", "\t$d, $s1">;
} // s2 = 0, n = 0

// Q31TOF
let Defs = [PSW], Uses = [PSW], n = 1 in
def Q31TOF_ddd         :  RR<0x4B, 0x15, (outs DataRegs:$d),
                                (ins DataRegs:$s1, DataRegs:$s2),
                                "q31tof", "\t$d, $s1, $s2">;

// Fast Call Instructions

let Defs = [A10, A11], Uses = [A10, A11] in {
  // FCALL
  let isCall = 1 in {
    def FCALL_c         : B<0x61, (outs), (ins simm24_lsb0:$disp24),
                            "fcall", "\t$disp24">;

    // FCALLA
    def FCALLA_c        : B<0xE1, (outs), (ins disp24_abs:$disp24),
                            "fcalla", "\t$disp24">;

    // FCALLI
    let d = 0, n = 0, s2 = 0 in
    def FCALLI_a        : RR<0x2D, 0x01, (outs), (ins AddrRegs:$s1),
                             "fcalli", "\t$s1">;
  } // isCall = 1

  // FRET
  let s1_d = 0,  isReturn = 1, isTerminator = 1, isBarrier = 1 in {
    def FRET_16       : SR<0x00,  0x07, (outs), (ins), "fret", "">;
    def FRET          : SYS<0x0D, 0x03, (outs), (ins), "fret", "">;
  } // s1_d = 0,  isReturn = 1, isTerminator = 1, isBarrier = 1
} // Defs = [A10, A11], Uses = [A10, A11]


//===----------------------------------------------------------------------===//
//  Cache Instructions.
//

let s1_d = 0, hasSideEffects = 1 in {
  // CACHEA.I
  def CACHEAI_ac : BO<0x89, 0x2E, (outs), (ins AddrRegs:$s2, simm10:$off10),
                      "cachea.i", "\t$s2, $off10">;

  let Constraints = "$s2 = $dst", off10 = 0 in
    def CACHEAI_p : BO<0xA9, 0x0E, (outs ExtAddrRegs:$dst),
                       (ins ExtAddrRegs:$s2),
                       "cachea.i", "\t[${s2} + r]">;

  let Constraints = "$s2 = $dst" in
    def CACHEAI_pc : BO<0xA9, 0x1E, (outs ExtAddrRegs:$dst),
                        (ins ExtAddrRegs:$s2, simm10:$off10),
                        "cachea.i", "\t[${s2} + c], $off10">;

  let Constraints = "$s2 = $src" in {
    def CACHEAI_ac_poi : BO<0x89, 0x0E, (outs AddrRegs:$s2),
                            (ins AddrRegs:$src, simm10:$off10),
                            "cachea.i", "\t[${s2}+], $off10">;

    def CACHEAI_ac_pri : BO<0x89, 0x1E, (outs AddrRegs:$s2),
                            (ins AddrRegs:$src, simm10:$off10),
                            "cachea.i", "\t[+${s2}], $off10">;
  } // "$s2 = $src"

  // CACHEA.W
  def CACHEAW_ac : BO<0x89, 0x2C, (outs), (ins AddrRegs:$s2, simm10:$off10),
                      "cachea.w", "\t$s2, $off10">;

  let Constraints = "$s2 = $dst", off10 = 0 in
    def CACHEAW_p : BO<0xA9, 0x0C, (outs ExtAddrRegs:$dst),
                       (ins ExtAddrRegs:$s2),
                       "cachea.w", "\t[${s2} + r]">;

  let Constraints = "$s2 = $dst" in
    def CACHEAW_pc : BO<0xA9, 0x1C, (outs ExtAddrRegs:$dst),
                        (ins ExtAddrRegs:$s2, simm10:$off10),
                        "cachea.w", "\t[${s2} + c], $off10">;

  let Constraints = "$s2 = $src" in {
    def CACHEAW_ac_poi : BO<0x89, 0x0C, (outs AddrRegs:$s2),
                            (ins AddrRegs:$src, simm10:$off10),
                            "cachea.w", "\t[${s2}+], $off10">;

    def CACHEAW_ac_pri : BO<0x89, 0x1C, (outs AddrRegs:$s2),
                            (ins AddrRegs:$src, simm10:$off10),
                            "cachea.w", "\t[+${s2}], $off10">;
  } // "$s2 = $src"

  // CACHEA.WI
  def CACHEAWI_ac : BO<0x89, 0x2D, (outs), (ins AddrRegs:$s2, simm10:$off10),
                       "cachea.wi", "\t$s2, $off10">;

  let Constraints = "$s2 = $dst", off10 = 0 in
    def CACHEAWI_p : BO<0xA9, 0x0D, (outs ExtAddrRegs:$dst),
                        (ins ExtAddrRegs:$s2),
                        "cachea.wi", "\t[${s2} + r]">;

  let Constraints = "$s2 = $dst" in
    def CACHEAWI_pc : BO<0xA9, 0x1D, (outs ExtAddrRegs:$dst),
                         (ins ExtAddrRegs:$s2, simm10:$off10),
                         "cachea.wi", "\t[${s2} + c], $off10">;

  let Constraints = "$s2 = $src" in {
    def CACHEAWI_ac_poi : BO<0x89, 0x0D, (outs AddrRegs:$s2),
                             (ins AddrRegs:$src, simm10:$off10),
                             "cachea.wi", "\t[${s2}+], $off10">;

    def CACHEAWI_ac_pri : BO<0x89, 0x1D, (outs AddrRegs:$s2),
                             (ins AddrRegs:$src, simm10:$off10),
                             "cachea.wi", "\t[+${s2}], $off10">;
  } // "$s2 = $src"

  // CACHEI.I
  def CACHEII_ac : BO<0x89, 0x2A, (outs), (ins AddrRegs:$s2, simm10:$off10),
                      "cachei.i", "\t$s2, $off10">;

  let Constraints = "$s2 = $src" in {
    def CACHEII_ac_poi : BO<0x89, 0x0A, (outs AddrRegs:$s2),
                            (ins AddrRegs:$src, simm10:$off10),
                            "cachei.i", "\t[${s2}+], $off10">;

    def CACHEII_ac_pri : BO<0x89, 0x1A, (outs AddrRegs:$s2),
                            (ins AddrRegs:$src, simm10:$off10),
                            "cachei.i", "\t[+${s2}], $off10">;
  } // "$s2 = $src"

  // CACHEI.W
  def CACHEIW_ac : BO<0x89, 0x2B, (outs), (ins AddrRegs:$s2, simm10:$off10),
                      "cachei.w", "\t$s2, $off10">;

  let Constraints = "$s2 = $src" in {
    def CACHEIW_ac_poi : BO<0x89, 0x0B, (outs AddrRegs:$s2),
                            (ins AddrRegs:$src, simm10:$off10),
                            "cachei.w", "\t[${s2}+], $off10">;

    def CACHEIW_ac_pri : BO<0x89, 0x1B, (outs AddrRegs:$s2),
                            (ins AddrRegs:$src, simm10:$off10),
                            "cachei.w", "\t[+${s2}], $off10">;
  } // "$s2 = $src"

  // CACHEI.WI
  def CACHEIWI_ac : BO<0x89, 0x2F, (outs), (ins AddrRegs:$s2, simm10:$off10),
                       "cachei.wi", "\t$s2, $off10">;

  let Constraints = "$s2 = $src" in {
    def CACHEIWI_ac_poi : BO<0x89, 0x0F, (outs AddrRegs:$s2),
                             (ins AddrRegs:$src, simm10:$off10),
                             "cachei.wi", "\t[${s2}+], $off10">;

    def CACHEIWI_ac_pri : BO<0x89, 0x1F, (outs AddrRegs:$s2),
                             (ins AddrRegs:$src, simm10:$off10),
                             "cachei.wi", "\t[+${s2}], $off10">;
  } // "$s2 = $src"
} // s1_d = 0, hasSideEffects = 1
} // ISAPredicates = [HasTC161]
