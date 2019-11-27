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
