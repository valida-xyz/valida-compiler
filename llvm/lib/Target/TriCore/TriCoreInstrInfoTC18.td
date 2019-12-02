//==-- TriCoreInstrInfoTC18.td                              ---*- tablegen -*-//
// Target Description for TriCore TC1.8
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file describes the TriCore TC1.8 instructions.
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// TriCore special operands.
//
// NOTE: Immediate operands should be defined in ascending bit width. This
//       ensures that the shorter encodings will be preferred by TableGen

// A 16 bit unsigned immediate left-shifted by 3
def uimm16_shift3 : Operand<OtherVT> {
  let ParserMatchClass = GenericImmOperand<"UImm16Shift3">;
  let DecoderMethod = "decodeUImm16Shift3";
}

//===----------------------------------------------------------------------===//
// Instruction Class Templates
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
//  Cache Instructions.
//

let s1_d = 0, hasSideEffects = 1 in {
  class CACHE_BO<bits<8> opc1, bits<6> opc2, string mnemonic>
                  : BO<opc1, opc2, (outs),
                  (ins AddrRegs:$s2, simm10:$off10),
                  mnemonic, "\t[${s2}], $off10">;

  let Constraints = "$s2 = $dest" in {
    class CACHE_BO_PRI<bits<8> opc1, bits<6> opc2, string mnemonic>
                  : BO<opc1, opc2, (outs AddrRegs:$dest),
                  (ins AddrRegs:$s2, simm10:$off10),
                  mnemonic, "\t[+${s2}], $off10">;

    class CACHE_BO_POI<bits<8> opc1, bits<6> opc2, string mnemonic>
                  : BO<opc1, opc2, (outs AddrRegs:$dest),
                  (ins AddrRegs:$s2, simm10:$off10),
                  mnemonic, "\t[${s2}+], $off10">;
  } // Constraints = "$s2 = $dest"
} // s1_d = 0, hasSideEffects = 1

//===----------------------------------------------------------------------===//
//  FPU Arithmetic Instructions.
//

class FPU_ARITH_RR1<bits<8> opc1, bits<8> opc2, string mnemonic,
                    RegisterClass RC1, RegisterClass RC2>
                : RR<opc1, opc2, (outs RC1:$d),
                (ins RC2:$s1, RC2:$s2),
                mnemonic, "\t$d, $s1, $s2">;

let s2 = 0 in
class FPU_ARITH_RR2<bits<8> opc1, bits<8> opc2, string mnemonic,
                    RegisterClass RC>
                : RR<opc1, opc2, (outs RC:$d),
                (ins RC:$s1),
                mnemonic, "\t$d, $s1">;
                
//===----------------------------------------------------------------------===//
//  FPU-conversion Instructions.
//

let s2 = 0, n = 2, Defs = [PSW] in
class FPU_CONVERSION_RR<bits<8> opc2, string mnemonic,
                        RegisterClass RC1, RegisterClass RC2>
          : RR<0x4B, opc2, (outs RC1:$d), (ins RC2:$s1), mnemonic, "\t$d, $s1">;


//===----------------------------------------------------------------------===//
// Instruction Definitions
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
//  Cache Instructions.
//

// CACHEA.I.VM

def CACHEAIVM_ac        :  CACHE_BO<0x49, 0x2E, "cachea.i.vm">;
def CACHEAIVM_ac_poi    :  CACHE_BO_POI<0x49, 0x0E, "cachea.i.vm">;
def CACHEAIVM_ac_pri    :  CACHE_BO_PRI<0x49, 0x1E, "cachea.i.vm">;

// CACHEA.W.VM

def CACHEAWVM_ac        :  CACHE_BO<0x49, 0x2C, "cachea.w.vm">;
def CACHEAWVM_ac_poi    :  CACHE_BO_POI<0x49, 0x0C, "cachea.w.vm">;
def CACHEAWVM_ac_pri    :  CACHE_BO_PRI<0x49, 0x1C, "cachea.w.vm">;

// CACHEA.WI.VM

def CACHEAWIV_ac       :  CACHE_BO<0x49, 0x2D, "cachea.wi.vm">;
def CACHEAWIV_ac_poi   :  CACHE_BO_POI<0x49, 0x0D, "cachea.wi.vm">;
def CACHEAWIV_ac_pri   :  CACHE_BO_PRI<0x49, 0x1D, "cachea.wi.vm">;

// CACHEI.I.VM

def CACHEIIVM_ac       :  CACHE_BO<0x49, 0x2A, "cachei.i.vm">;
def CACHEIIVM_ac_poi   :  CACHE_BO_POI<0x49, 0x0A, "cachei.i.vm">;
def CACHEIIVM_ac_pri   :  CACHE_BO_PRI<0x49, 0x1A, "cachei.i.vm">;

// CACHEI.W.VM

def CACHEIWVM_ac       :  CACHE_BO<0x49, 0x2B, "cachei.w.vm">;
def CACHEIWVM_ac_poi   :  CACHE_BO_POI<0x49, 0x0B, "cachei.w.vm">;
def CACHEIWVM_ac_pri   :  CACHE_BO_PRI<0x49, 0x1B, "cachei.w.vm">;

// CACHEI.WI.VM

def CACHEIWIV_ac      :  CACHE_BO<0x49, 0x2F, "cachei.wi.vm">;
def CACHEIWIV_ac_poi  :  CACHE_BO_POI<0x49, 0x0F, "cachei.wi.vm">;
def CACHEIWIV_ac_pri  :  CACHE_BO_PRI<0x49, 0x1F, "cachei.wi.vm">;

//===----------------------------------------------------------------------===//
//  FPU Arithmetic Instructions.
//

let n = 2, Defs = [PSW], Uses = [PSW] in {
  let s2 = 0 in {
    // ADD.DF
    let isCommutable = 1, isAdd = 1 in
    def ADDDF_eee   :  RRR<0x6B, 0x02, (outs ExtDataRegs:$d),
                        (ins ExtDataRegs:$s3, ExtDataRegs:$s1),
                        "add.df", "\t$d, $s3, $s1">;

    // SUB.DF
    def SUBDF_eee   :  RRR<0x6B, 0x03, (outs ExtDataRegs:$d),
                        (ins ExtDataRegs:$s3, ExtDataRegs:$s1),
                        "sub.df", "\t$d, $s3, $s1">;
  } // s2 = 0

  // MUL.DF
  let isCommutable = 1 in
  def MULDF_eee     :  FPU_ARITH_RR1<0x4B, 0x04, "mul.df",
                          ExtDataRegs, ExtDataRegs>;

  // DIV.DF
  def DIVDF_eee     :  FPU_ARITH_RR1<0x4B, 0x05, "div.df",
                          ExtDataRegs, ExtDataRegs>;
} // n = 2, Defs = [PSW], Uses = [PSW]

let isReMaterializable = 1 in {
  // ABS.F
  let n = 1 in
  def ABSF_dd       :  FPU_ARITH_RR2<0x4B, 0x30, "abs.f",
                          DataRegs>;

  // ABS.DF
  let n = 2 in
  def ABSDF_ee      :  FPU_ARITH_RR2<0x4B, 0x30, "abs.df",
                          ExtDataRegs>;
} // isReMaterializable = 1

let Defs = [PSW], isCommutable = 1 in {
  // MIN.F
  let n = 1 in
  def MINF_ddd      :  FPU_ARITH_RR1<0x4B, 0x33, "min.f",
                          DataRegs, DataRegs>;

  // MIN.DF
  let n = 2 in
  def MINDF_eee     :  FPU_ARITH_RR1<0x4B, 0x33, "min.df",
                          ExtDataRegs, ExtDataRegs>;

  // MAX.F
  let n = 1 in
  def MAXF_ddd      :  FPU_ARITH_RR1<0x4B, 0x32, "max.f",
                        DataRegs, DataRegs>;

  // MAX.DF
  let n = 2 in
  def MAXDF_eee     :  FPU_ARITH_RR1<0x4B, 0x32, "max.df",
                        ExtDataRegs, ExtDataRegs>;
} // Defs = [PSW], isCommutable = 1

let isReMaterializable = 1 in {
  // NEG.F
  let n = 1 in
  def NEGF_dd       :  FPU_ARITH_RR2<0x4B, 0x31, "neg.f",
                        DataRegs>;

  // NEG.DF
  let n = 2 in
  def NEGDF_ee      :  FPU_ARITH_RR2<0x4B, 0x31, "neg.df",
                        ExtDataRegs>;
} // isReMaterializable = 1

let Defs = [PSW], n = 2 in {
  // CMP.DF
  def CMPDF_dee     :  FPU_ARITH_RR1<0x4B, 0x00, "cmp.df",
                        DataRegs, ExtDataRegs>;

  // QSEED.DF
  def QSEEDDF_ee    :  FPU_ARITH_RR2<0x4B, 0x19, "qseed.df",
                        ExtDataRegs>;

  // MADD.DF
    let Uses = [PSW] in {
    def MADDDF_eeee :  RRR<0x6B, 0x06, (outs ExtDataRegs:$d),
                        (ins ExtDataRegs:$s3, ExtDataRegs:$s1, ExtDataRegs:$s2),
                        "madd.df", "\t$d, $s3, $s1, $s2">;

    // MSUB.DF
    def MSUBDF_eeee :  RRR<0x6B, 0x07, (outs ExtDataRegs:$d),
                        (ins ExtDataRegs:$s3, ExtDataRegs:$s1, ExtDataRegs:$s2),
                        "msub.df", "\t$d, $s3, $s1, $s2">;
  } // Uses = [PSW]
} // Defs = [PSW], n = 2

//===----------------------------------------------------------------------===//
//  FPU-conversion Instructions.
//

let Uses = [PSW] in {
  // DFTOI
  def DFTOI_de : FPU_CONVERSION_RR<0x10, "dftoi", DataRegs, ExtDataRegs>;

  // DFTOU
  def DFTOU_de : FPU_CONVERSION_RR<0x12, "dftou", DataRegs, ExtDataRegs>;
} // let Uses = [PSW]

// DFTOIZ
def DFTOIZ_de : FPU_CONVERSION_RR<0x13, "dftoiz", DataRegs, ExtDataRegs>;

let Uses = [PSW] in {
  // ITODF
  def ITODF_ed : FPU_CONVERSION_RR<0x14, "itodf", ExtDataRegs, DataRegs>;

  // UTODF
  def UTODF_ed : FPU_CONVERSION_RR<0x16, "utodf", ExtDataRegs, DataRegs>;
} // let Uses = [PSW]

// DFTOUZ
def DFTOUZ_de : FPU_CONVERSION_RR<0x17, "dftouz", DataRegs, ExtDataRegs>;

// DFTOL
let Uses = [PSW] in
def DFTOL_ee : FPU_CONVERSION_RR<0x1A, "dftol", ExtDataRegs, ExtDataRegs>;

// DFTOLZ
def DFTOLZ_ee : FPU_CONVERSION_RR<0x1B, "dftolz", ExtDataRegs, ExtDataRegs>;

// DFTOUL
let Uses = [PSW] in
def DFTOUL_ee : FPU_CONVERSION_RR<0x1E, "dftoul", ExtDataRegs, ExtDataRegs>;

// DFTOULZ
def DFTOULZ_ee : FPU_CONVERSION_RR<0x1F, "dftoulz", ExtDataRegs, ExtDataRegs>;

let Uses = [PSW] in {
  // LTODF
  def LTODF_ee : FPU_CONVERSION_RR<0x26, "ltodf", ExtDataRegs, ExtDataRegs>;

  // ULTODF
  def ULTODF_ee : FPU_CONVERSION_RR<0x27, "ultodf", ExtDataRegs, ExtDataRegs>;

  // DFTOF
  def DFTOF_de : FPU_CONVERSION_RR<0x28, "dftof", DataRegs, ExtDataRegs>;
} // let Uses = [PSW]

// FTODF
def FTODF_ed : FPU_CONVERSION_RR<0x29, "ftodf", ExtDataRegs, DataRegs>;

// FTOIN
let s2 = 0, n = 1, Defs = [PSW] in
def FTOIN_dd : RR<0x4B, 0x37, (outs DataRegs:$d), (ins DataRegs:$s1),
                  "ftoin", "\t$d, $s1">;

// DFTOIN
def DFTOIN_de : FPU_CONVERSION_RR<0x37, "dftoin", DataRegs, ExtDataRegs>;
//  Other Instructions.
//

// CALLI
let Defs = [A11], Uses = [PSW], isCall = 1 in
def CALLI_16_a      :  SR<0xDC, 0x01, (outs),
                          (ins AddrRegs:$s1_d),
                          "calli", "\t$s1_d">;

// HVCALL
let s1 = 0, d = 0, Uses = [PSW], hasSideEffects = 1 in
def HVCALL_c        :  RC<0xAD, 0x02, (outs),
                          (ins uimm9:$const9),
                          "hvcall", "\t$const9">;

// RFH
let s1_d = 0, isReturn = 1, Defs = [PSW, PCXI], Uses = [PSW, PCXI] in
def RFH             :  SYS<0x0D, 0x17, (outs), (ins),
                          "rfh", "">;

// MFDCR
let isMoveReg = 1, s1 = 0, Uses = [PSW] in
def MFDCR_ec        :  RLC<0x4F, (outs ExtDataRegs:$d),
                          (ins uimm16_shift3:$const16),
                          "mfdcr", "\t$d, $const16">;

// MTDCR
let isMoveReg = 1, d = 0, Defs = [PSW] in
def MTDCR_ce        :  RLC<0xCF, (outs),
                          (ins uimm16_shift3:$const16, ExtDataRegs:$s1),
                          "mtdcr", "\t$const16, $s1">;

// MULP.B
let Defs = [PSW], isCommutable = 1, n = 0 in
def MULPB_edd       :  RR<0x4B, 0x2B, (outs ExtDataRegs:$d),
                          (ins DataRegs:$s1, DataRegs:$s2), 
                          "mulp.b", "\t$d, $s1, $s2">;
