//==-- TriCoreInstrInfoTemplates.td                          ---*- tablegen -*-//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file describes the Instruction Class Templates.
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// Instruction Class Templates
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
//  2.1 Integer Arithmetic.
//

// 2.1.1 Move.

let s1 = 0 in
class MOVE_RLC<bits<8> opc1, string mnemonic, Operand op_type = uimm16_RLC,
               RegisterClass RC = DataRegs>
              :  RLC<opc1, (outs RC:$d), (ins op_type:$const16),
                     mnemonic, "\t$d, $const16">;

// 2.1.2 Addition and Subtraction.

class ADDSUB_RC<bits<8> opc1, bits<7> opc2, string mnemonic>
              :  RC<opc1, opc2, (outs DataRegs:$d),
                  (ins DataRegs:$s1, simm9:$const9),
                  mnemonic, "\t$d, $s1, $const9">;

let n = 0 in
class ADDSUB_RR<bits<8> opc1, bits<8> opc2, string mnemonic>
              :  RR<opc1, opc2, (outs DataRegs:$d),
                  (ins DataRegs:$s1, DataRegs:$s2),
                  mnemonic, "\t$d, $s1, $s2">;

let Constraints = "$s1_d = $src" in
class ADDSUB_SRR<bits<8> opc1, string mnemonic>
              :  SRR<opc1, (outs DataRegs:$s1_d),
                  (ins DataRegs:$src, DataRegs:$s2),
                  mnemonic, "\t$s1_d, $s2">;

// 2.1.3 Multiply and multiply-add.

class MULTIPLY_RC<bits<8> opc1, bits<7> opc2, string mnemonic,
                  Operand op_type = simm9,
                  RegisterClass RC = DataRegs>
               :  RC<opc1, opc2, (outs RC:$d),
                     (ins DataRegs:$s1, op_type:$const9),
                     mnemonic, "\t$d, $s1, $const9">;

class MULTIPLY_RCR<bits<8> opc1, bits<3> opc2, string mnemonic,
                   Operand op_type = simm9>
                :  RCR<opc1, opc2, (outs DataRegs:$d),
                       (ins DataRegs:$s3, DataRegs:$s1, op_type:$const9),
                       mnemonic, "\t$d, $s3, $s1, $const9">;

class MULTIPLY_RCR_E<bits<8> opc1, bits<3> opc2, string mnemonic,
                     Operand op_type = simm9>
                  :  RCR<opc1, opc2, (outs ExtDataRegs:$d),
                         (ins ExtDataRegs:$s3, DataRegs:$s1, op_type:$const9),
                         mnemonic, "\t$d, $s3, $s1, $const9">;

let isCommutable = 1 in {
  class MULTIPLY_RR2<bits<8> opc1, bits<12> opc2, string mnemonic,
                     RegisterClass RC = DataRegs>
                  :  RR2<opc1, opc2, (outs RC:$d),
                         (ins DataRegs:$s1, DataRegs:$s2),
                         mnemonic, "\t$d, $s1, $s2">;
} // isCommutable = 1

class MULTIPLY_RRR2<bits<8> opc1, bits<8> opc2, string mnemonic,
                    RegisterClass RC = DataRegs>
                 :  RRR2<opc1, opc2, (outs RC:$d),
                         (ins RC:$s3, DataRegs:$s1, DataRegs:$s2),
                         mnemonic, "\t$d, $s3, $s1, $s2">;

// 2.1.4 Division.

let Defs = [PSW] in {
  class DIV_RR<bits<8> opc1, bits<8> opc2, string mnemonic>
                :  RR<opc1, opc2, (outs ExtDataRegs:$d),
                    (ins DataRegs:$s1, DataRegs:$s2),
                    mnemonic, "\t$d, $s1, $s2">;
} // Defs = [PSW]

// 2.1.6 Min, Max, Saturate

let isReMaterializable = 1 in {
  class MMS_RC<bits<8> opc1, bits<7> opc2, string mnemonic,
               Operand op_type = simm9>
            :  RC<opc1, opc2, (outs DataRegs:$d),
                  (ins DataRegs:$s1, op_type:$const9),
                  mnemonic, "\t$d, $s1, $const9">;

  let n = 0 in {
    let isCommutable = 1 in
    class MMS_RR<bits<8> opc1, bits<8> opc2, string mnemonic>
              :  RR<opc1, opc2, (outs DataRegs:$d),
                    (ins DataRegs:$s1, DataRegs:$s2),
                    mnemonic, "\t$d, $s1, $s2">;

    let s2 = 0 in 
    class MMS_RR_NOS2<bits<8> opc1, bits<8> opc2, string mnemonic>
                   :  RR<opc1, opc2, (outs DataRegs:$d),
                         (ins DataRegs:$s1),
                         mnemonic, "\t$d, $s1">;
  } // n = 0

  let Constraints = "$s1_d = $src" in
  class MMS_SR<bits<8> opc1, bits<4> opc2, string mnemonic>
            :  SR<opc1, opc2, (outs DataRegs:$s1_d),
                  (ins DataRegs:$src),
                  mnemonic, "\t$s1_d">;
} // isReMaterializable = 1

// 2.1.7 Conditional Arithmetic Instructions.

class CARI_RCR<bits<8> opc1, bits<3> opc2, string mnemonic>
            :  RCR<opc1, opc2, (outs DataRegs:$d),
                  (ins DataRegs:$s3, DataRegs:$s1, simm9:$const9),
                  mnemonic, "\t$d, $s3, $s1, $const9">;

let n = 0 in
class CARI_RRR<bits<8> opc1, bits<4> opc2, string mnemonic>
            :  RRR<opc1, opc2, (outs DataRegs:$d),
                  (ins DataRegs:$s3, DataRegs:$s1, DataRegs:$s2),
                  mnemonic, "\t$d, $s3, $s1, $s2">;

class CARI_SRC<bits<8> opc1, string mnemonic>
            :  SRC<opc1, (outs DataRegs:$s1_d),
                  (ins ImplDataReg:$d15, simm4:$const4),
                  mnemonic, "\t$s1_d, $d15, $const4">;

// 2.1.8 Logical.

let isReMaterializable = 1 in {
  class LOGIC_RC<bits<8> opc1, bits<7> opc2, string mnemonic>
                :  RC<opc1, opc2, (outs DataRegs:$d),
                      (ins DataRegs:$s1, uimm9:$const9),
                      mnemonic, "\t$d, $s1, $const9">;

  let n = 0, isCommutable = 1 in
  class LOGIC_RR<bits<8> opc1, bits<8> opc2, string mnemonic>
                :  RR<opc1, opc2, (outs DataRegs:$d),
                      (ins DataRegs:$s1, DataRegs:$s2),
                      mnemonic, "\t$d, $s1, $s2">;

  let Constraints = "$s1_d = $src" in
  class LOGIC_SRR<bits<8> opc1, string mnemonic>
                :  SRR<opc1, (outs DataRegs:$s1_d),
                      (ins DataRegs:$src, DataRegs:$s2),
                      mnemonic, "\t$s1_d, $s2">;
}  // isReMaterializable = 1

// 2.1.10 Shift.

class SHIFT_RC<bits<8> opc1, bits<7> opc2, string mnemonic>
            :  RC<opc1, opc2, (outs DataRegs:$d),
                  (ins DataRegs:$s1, simm9_shift:$const9),
                  mnemonic, "\t$d, $s1, $const9">;

let n = 0 in
class SHIFT_RR<bits<8> opc1, bits<8> opc2, string mnemonic>
            :  RR<opc1, opc2, (outs DataRegs:$d),
                  (ins DataRegs:$s1, DataRegs:$s2),
                  mnemonic, "\t$d, $s1, $s2">;

//===----------------------------------------------------------------------===//
// 2.2 Packed Arithmetic
//

let n = 0 in
class PARITH_RR<bits<8> opc1, bits<8> opc2, string mnemonic>
            :  RR<opc1, opc2, (outs DataRegs:$d),
                  (ins DataRegs:$s1, DataRegs:$s2),
                  mnemonic, "\t$d, $s1, $s2">;

class PARITH_RC<bits<8> opc1, bits<7> opc2, string mnemonic>
            :  RC<opc1, opc2, (outs DataRegs:$d),
                  (ins DataRegs:$s1, simm9:$const9),
                  mnemonic, "\t$d, $s1, $const9">;

// 2.4.8 Add support for Packed Multiply and MAC Q-Format

let Defs = [PSW] in {
  class PMMQ_RRR1_DD<bits<8> opc1, bits<6> opc2, string mnemonic, string pos="">
                   : RRR1<opc1, opc2, (outs DataRegs:$d),
                          (ins DataRegs:$s3, DataRegs:$s1, DataRegs:$s2,
                               uimm2_l:$n),
                          mnemonic , "\t$d, $s3, $s1, ${s2}" # pos # ", $n">;

  class PMMQ_RRR1_DE<bits<8> opc1, bits<6> opc2, string mnemonic, string pos>
                   : RRR1<opc1, opc2, (outs DataRegs:$d),
                          (ins ExtDataRegs:$s3, DataRegs:$s1, DataRegs:$s2,
                               uimm2_l:$n),
                          mnemonic , "\t$d, $s3, $s1, ${s2}" # pos # ", $n">;

  class PMMQ_RRR1_ED<bits<8> opc1, bits<6> opc2, string mnemonic, string pos="">
                   : RRR1<opc1, opc2, (outs ExtDataRegs:$d),
                          (ins ExtDataRegs:$s3, DataRegs:$s1, DataRegs:$s2,
                               uimm2_l:$n),
                          mnemonic , "\t$d, $s3, $s1, ${s2}" # pos # ", $n">;

  class PMMQ_RR1<bits<8> opc1, bits<10> opc2, string mnemonic,
                 string pos, RegisterClass RC = ExtDataRegs>
               : RR1<opc1, opc2, (outs RC:$d),
                     (ins DataRegs:$s1, DataRegs:$s2, uimm2_l:$n),
                     mnemonic , "\t$d, $s1, ${s2}" # pos # ", $n">;
} // Defs = [PSW]

// 2.4.x Add support for Q-Format Multiply-Add-Subtract

let Defs = [PSW] in {
  class QFMAS_RRR1_DD<bits<8> opc1, bits<6> opc2, string mnemonic,
                      string pos1="", string pos2="">
                    : RRR1<opc1, opc2, (outs DataRegs:$d),
                           (ins DataRegs:$s3, DataRegs:$s1, DataRegs:$s2,
                                uimm2_l:$n),
                           mnemonic , "\t$d, $s3, ${s1}" # pos1 # ", ${s2}"
                                      # pos2 # ", $n">;

  class QFMAS_RRR1_ED<bits<8> opc1, bits<6> opc2, string mnemonic,
                      string pos1="", string pos2="">
                    : RRR1<opc1, opc2, (outs ExtDataRegs:$d),
                           (ins ExtDataRegs:$s3, DataRegs:$s1, DataRegs:$s2,
                                uimm2_l:$n),
                           mnemonic , "\t$d, $s3, ${s1}" # pos1 # ", ${s2}"
                                      # pos2 # ", $n">;

  class QFMAS_RR1_DD<bits<8> opc1, bits<10> opc2, string mnemonic,
                     string pos1="", string pos2="">
                   : RR1<opc1, opc2, (outs DataRegs:$d),
                         (ins DataRegs:$s1, DataRegs:$s2, uimm2_l:$n),
                         mnemonic , "\t$d, ${s1}" # pos1 # ", ${s2}"
                                    # pos2 # ", $n">;

  class QFMAS_RR1_ED<bits<8> opc1, bits<10> opc2, string mnemonic,
                     string pos1="", string pos2="">
                   : RR1<opc1, opc2, (outs ExtDataRegs:$d),
                         (ins DataRegs:$s1, DataRegs:$s2, uimm2_l:$n),
                         mnemonic , "\t$d, ${s1}" # pos1 # ", ${s2}"
                                    # pos2 # ", $n">;
} // Defs = [PSW]

//===----------------------------------------------------------------------===//
//  2.5 Compare Instructions.
//

// 2.5.1 Simple Compare.

let isCompare = 1, isReMaterializable = 1 in {
  class CMP_RC<bits<8> opc1, bits<7> opc2, string mnemonic,
                Operand op_type = simm9>
              :  RC<opc1, opc2, (outs DataRegs:$d),
                    (ins DataRegs:$s1, op_type:$const9),
                    mnemonic, "\t$d, $s1, $const9">;

  let n = 0 in
  class CMP_RR<bits<8> opc1, bits<8> opc2, string mnemonic>
              :  RR<opc1, opc2, (outs DataRegs:$d),
                    (ins DataRegs:$s1, DataRegs:$s2),
                    mnemonic, "\t$d, $s1, $s2">;
} // isCompare = 1, isReMaterializable = 1

// 2.5.2 Accumulating Compare

let isReMaterializable = 1 in {
  class AC_RC<bits<8> opc1, bits<7> opc2, string mnemonic,
              Operand op_type = simm9>
           :  RC<opc1, opc2, (outs DataRegs:$d),
                 (ins DataRegs:$s1, op_type:$const9),
                 mnemonic, "\t$d, $s1, $const9">;

  let n = 0  in
  class AC_RR<bits<8> opc1, bits<8> opc2, string mnemonic>
           :  RR<opc1, opc2, (outs DataRegs:$d),
                 (ins DataRegs:$s1, DataRegs:$s2),
                 mnemonic, "\t$d, $s1, $s2">;
} // isReMaterializable = 1 

// 2.5.3 Compare with Shift

let isReMaterializable = 1 in {
  class CWH_RC<bits<8> opc1, bits<7> opc2, string mnemonic,
               Operand op_type = simm9>
            :  RC<opc1, opc2, (outs DataRegs:$d),
                  (ins DataRegs:$s1, op_type:$const9),
                  mnemonic, "\t$d, $s1, $const9">;

  let n = 0 in
  class CWH_RR<bits<8> opc1, bits<8> opc2, string mnemonic>
            :  RR<opc1, opc2, (outs DataRegs:$d),
                  (ins DataRegs:$s1, DataRegs:$s2),
                  mnemonic, "\t$d, $s1, $s2">;
} // isReMaterializable = 1

// 2.5.4 Packed Compare

let n = 0, isReMaterializable = 1, isCompare = 1 in
class PCMP_RR<bits<8> opc1, bits<8> opc2, string mnemonic>
             : RR<opc1, opc2, (outs DataRegs:$d),
                  (ins DataRegs:$s1, DataRegs:$s2),
                  mnemonic, "\t$d, $s1, $s2">;

// 2.6.1 Simple Bit Operations

let isReMaterializable = 1 in
class SBO_BIT<bits<8> opc1, bits<2> opc2, string mnemonic>
            : BIT<opc1, opc2, (outs DataRegs:$d),
                  (ins DataRegs:$s1, uimm5:$pos1, DataRegs:$s2, uimm5:$pos2),
                  mnemonic, "\t$d, $s1, $pos1, $s2, $pos2">;

// 2.6.2 Accumulating Bit Operations

let isReMaterializable = 1 in
class ABO_BIT<bits<8> opc1, bits<2> opc2, string mnemonic>
            : BIT<opc1, opc2, (outs DataRegs:$d),
                  (ins DataRegs:$s1, uimm5:$pos1, DataRegs:$s2, uimm5:$pos2),
                  mnemonic, "\t$d, $s1, $pos1, $s2, $pos2">;

// 2.6.3 Shifting Bit Operations

let isReMaterializable = 1 in
class SHBO_BIT<bits<8> opc1, bits<2> opc2, string mnemonic>
             : BIT<opc1, opc2, (outs DataRegs:$d), 
                   (ins DataRegs:$s1, uimm5:$pos1, DataRegs:$s2, uimm5:$pos2),
                   mnemonic, "\t$d, $s1, $pos1, $s2, $pos2">;
                   
// 2.8 Address Comparison

let n = 0, isReMaterializable = 1 in
class ADDRESSC_RR<bits<8> op1, bits<8> op2, string mnemonic>
                : RR<op1, op2, (outs DataRegs:$d), 
                     (ins AddrRegs:$s1, AddrRegs:$s2),
                     mnemonic , "\t$d, $s1, $s2">;

//===----------------------------------------------------------------------===//
//  2.9 Branch Instructions.
//

// 2.9.1 Unconditional Branch Instructions.

class UBI_B<bits<8> opc1, string mnemonic, Operand op_type>
                :   B<opc1, (outs), (ins op_type:$disp24),
                      mnemonic, "\t$disp24">;

class UBI_SB<bits<8> opc1, string mnemonic>
                :  SB<opc1, (outs), (ins simm8_lsb0:$disp8),
                      mnemonic, "\t$disp8">;

let s2 = 0, d = 0, n = 0 in
class UBI_RR<bits<8> opc2, string mnemonic>
                :  RR<0x2D, opc2, (outs), (ins AddrRegs:$s1),
                      mnemonic, "\t$s1">;

// 2.9.2 Conditional Branch Instructions.

let isBranch = 1, isTerminator = 1 in {
  class CB_BRC<bits<8> opc1, bit opc2, string mnemonic, Operand op_type = simm4>
                : BRC<opc1, opc2, (outs),
                      (ins DataRegs:$s1, op_type:$const4, simm15_lsb0:$disp15),
                      mnemonic, "\t$s1, $const4, $disp15">;

  class CB_BRR<bits<8> opc1, bit opc2, string mnemonic,
                RegisterClass RC = DataRegs>
                : BRR<opc1, opc2, (outs),
                      (ins RC:$s1, RC:$s2, simm15_lsb0:$disp15),
                      mnemonic, "\t$s1, $s2, $disp15">;

  class CB_SBC<bits<8> opc1, string mnemonic, 
                Operand disp4_type = uimm4_lsb0>
                : SBC<opc1, (outs),
                      (ins ImplDataReg:$d15, simm4:$const4, disp4_type:$disp4),
                      mnemonic, "\t$d15, $const4, $disp4">;

  class CB_D15_SBR<bits<8> opc1, string mnemonic, 
                Operand disp4_type = uimm4_lsb0>
                : SBR<opc1, (outs),
                      (ins ImplDataReg:$d15, DataRegs:$s2, disp4_type:$disp4),
                      mnemonic, "\t$d15, $s2, $disp4">;

  class CB_SBR<bits<8> opc1, string mnemonic, RegisterClass RC = DataRegs>
                : SBR<opc1, (outs),
                      (ins RC:$s2, uimm4_lsb0:$disp4),
                      mnemonic, "\t$s2, $disp4">;
} // isBranch = 1, isTerminator = 1

//===----------------------------------------------------------------------===//
//  2.10 Load and Store Instructions.
//

// 2.10.1. Load/Store Basic Data Types

// LOADS
let mayLoad = 1, mayStore = 0 in {
  class LOAD_ABS<bits<8> opc1, bits<2> opc2, string mnemonic,
                RegisterClass RC = DataRegs>
                  : ABS<opc1, opc2, (outs RC:$s1_d),
                        (ins off18_abs:$off18),
                        mnemonic, "\t$s1_d, $off18">;

  class LOAD_BO_BASE<bits<8> opc1, bits<6> opc2, string mnemonic, 
                    RegisterClass RC, string post,
                    RegisterClass RC2 = AddrRegs, Operand imm = simm10>
                  :  BO<opc1, opc2, (outs RC:$s1_d),
                        (ins RC2:$s2, imm:$off10),
                        mnemonic, "\t$s1_d, [${s2}" #post# "], $off10">;

  class LOAD_BO<bits<8> opc1, bits<6> opc2, string mnemonic, 
                RegisterClass RC = DataRegs>
                  :  LOAD_BO_BASE<opc1, opc2, mnemonic, RC, "">;

  class LOAD_BO_DEPR<bits<8> opc1, bits<6> opc2, string mnemonic, 
                     RegisterClass RC = DataRegs>
                  :  LOAD_BO_BASE<opc1, opc2, mnemonic, RC, "", AddrRegs, 
                                  simm10_disas>;

  let off10 = 0 in
  class LOAD_BO_BR<bits<8> opc1, bits<6> opc2, string mnemonic,
                  RegisterClass RC = DataRegs>
                  :  BO<opc1, opc2, (outs RC:$s1_d), (ins ExtAddrRegs:$s2),
                        mnemonic, "\t$s1_d, [${s2} + r]">;

  class LOAD_BO_CR<bits<8> opc1, bits<6> opc2, string mnemonic, 
                RegisterClass RC = DataRegs>
                  : LOAD_BO_BASE<opc1, opc2, mnemonic, RC, " + c", ExtAddrRegs>;

  // These also define the index register since they increment it
  let Constraints = "$s2 = $dest" in 
  class LOAD_BO_INC_BASE<bits<8> opc1, bits<6> opc2, string mnemonic,
                    RegisterClass RC = DataRegs, string pre, string post>
                  :  BO<opc1, opc2, (outs RC:$s1_d, AddrRegs:$dest),
                        (ins AddrRegs:$s2, simm10:$off10), mnemonic,
                        "\t$s1_d, [" #pre# "${s2}" #post# "], $off10">;

  class LOAD_BO_PRE<bits<8> opc1, bits<6> opc2, string mnemonic,
                    RegisterClass RC = DataRegs>
                  :  LOAD_BO_INC_BASE<opc1, opc2, mnemonic, RC, "+", "">; 

  class LOAD_BO_POST<bits<8> opc1, bits<6> opc2, string mnemonic,
                    RegisterClass RC = DataRegs>
                  :  LOAD_BO_INC_BASE<opc1, opc2, mnemonic, RC, "", "+">; 

  class LOAD_BOL<bits<8> opc1, string mnemonic, RegisterClass RC = DataRegs>
                  :  BOL<opc1, (outs RC:$s1_d),
                        (ins AddrRegs:$s2, simm16_BOL:$off16),
                        mnemonic, "\t$s1_d, [$s2], $off16">;

  class LOAD_SLR<bits<8> opc1, string mnemonic, RegisterClass RC = DataRegs>
                  : SLR<opc1, (outs RC:$d), (ins AddrRegs:$s2),
                        mnemonic, "\t$d, [$s2]">;

  // These also define the index register since they increment it
  let Constraints = "$s2 = $dest" in 
  class LOAD_SLR_POST<bits<8> opc1, string mnemonic, 
                      RegisterClass RC = DataRegs>
                  : SLR<opc1, (outs RC:$d, AddrRegs:$dest), (ins AddrRegs:$s2),
                        mnemonic, "\t$d, [${s2}+]">;

  class LOAD_SLRO<bits<8> opc1, string mnemonic, 
                      RegisterClass RC, Operand op_type>
                  : SLRO<opc1, (outs RC:$d),
                        (ins ImplAddrReg:$a15, op_type:$off4),
                        mnemonic, "\t$d, [$a15], $off4">;

  class LOAD_SRO<bits<8> opc1, string mnemonic, RegisterClass RC,
                      Operand op_type>
                  : SRO<opc1, (outs RC:$x15),
                        (ins AddrRegs:$s2, op_type:$off4),
                        mnemonic, "\t$x15, [$s2], $off4">;
} // mayLoad = 1, mayStore = 0

// STORES
let mayLoad = 0, mayStore = 1 in {
  class STORE_ABS<bits<8> opc1, bits<2> opc2, string mnemonic,
                RegisterClass RC = DataRegs>
                  : ABS<opc1, opc2, (outs),
                        (ins off18_abs:$off18, RC:$s1_d),
                        mnemonic, "\t$off18, $s1_d">;

  class STORE_BO_BASE<bits<8> opc1, bits<6> opc2, string mnemonic, 
                      RegisterClass RC, string post, 
                      RegisterClass RC2 = AddrRegs, Operand imm = simm10>
                  :  BO<opc1, opc2, (outs),
                        (ins RC2:$s2, imm:$off10, RC:$s1_d),
                        mnemonic, "\t[${s2}" #post# "], $off10, $s1_d">;

  class STORE_BO<bits<8> opc1, bits<6> opc2, string mnemonic, 
                RegisterClass RC = DataRegs>
                  : STORE_BO_BASE<opc1, opc2, mnemonic, RC, "">;

  class STORE_BO_DEPR<bits<8> opc1, bits<6> opc2, string mnemonic, 
                      RegisterClass RC = DataRegs>
                  : STORE_BO_BASE<opc1, opc2, mnemonic, RC, "", AddrRegs,
                                  simm10_disas>;

  let off10 = 0 in
  class STORE_BO_BR<bits<8> opc1, bits<6> opc2, string mnemonic,
                  RegisterClass RC = DataRegs>
                  :  BO<opc1, opc2, (outs), (ins ExtAddrRegs:$s2, RC:$s1_d),
                        mnemonic, "\t[$s2 + r], $s1_d">;

  class STORE_BO_CR<bits<8> opc1, bits<6> opc2, string mnemonic, 
                RegisterClass RC = DataRegs>
                : STORE_BO_BASE<opc1, opc2, mnemonic, RC, " + c", ExtAddrRegs>;


  // These also define the index register since they increment it
  let Constraints = "$s2 = $dest" in 
  class STORE_BO_INC_BASE<bits<8> opc1, bits<6> opc2, string mnemonic,
                    RegisterClass RC, string pre, string post>
                :  BO<opc1, opc2, (outs AddrRegs:$dest),
                      (ins AddrRegs:$s2, simm10:$off10, RC:$s1_d),
                      mnemonic, "\t[" #pre# "${s2}" #post# "], $off10, $s1_d">;

  class STORE_BO_PRE<bits<8> opc1, bits<6> opc2, string mnemonic,
                    RegisterClass RC = DataRegs>
                  :  STORE_BO_INC_BASE<opc1, opc2, mnemonic, RC, "+", "">;

  class STORE_BO_POST<bits<8> opc1, bits<6> opc2, string mnemonic,
                    RegisterClass RC = DataRegs>
                  :  STORE_BO_INC_BASE<opc1, opc2, mnemonic, RC, "", "+">;

  class STORE_BOL<bits<8> opc1, string mnemonic, RegisterClass RC = DataRegs>
                  :  BOL<opc1, (outs),
                        (ins AddrRegs:$s2, simm16_BOL:$off16, RC:$s1_d),
                        mnemonic, "\t[$s2], $off16, $s1_d">;

  class STORE_SSR<bits<8> opc1, string mnemonic, RegisterClass RC = DataRegs>
                  : SSR<opc1, (outs), (ins AddrRegs:$s2, RC:$s1),
                        mnemonic, "\t[$s2], $s1">;

  // These also define the index register since they increment it
  let Constraints = "$s2 = $dest" in 
  class STORE_SSR_POST<bits<8> opc1, string mnemonic, 
                      RegisterClass RC = DataRegs>
                  : SSR<opc1, (outs AddrRegs:$dest),
                        (ins AddrRegs:$s2,  RC:$s1),
                        mnemonic, "\t[${s2}+], $s1">;

  class STORE_SSRO<bits<8> opc1, string mnemonic, RegisterClass RC,
                        Operand op_type>
                  : SSRO<opc1, (outs),
                         (ins ImplAddrReg:$a15, op_type:$off4, RC:$s1),
                         mnemonic, "\t[$a15], $off4, $s1">;

  class STORE_SRO<bits<8> opc1, string mnemonic, RegisterClass RC,
                      Operand op_type>
                  : SRO<opc1, (outs),
                        (ins AddrRegs:$s2, op_type:$off4, RC:$x15),
                        mnemonic, "\t[$s2], $off4, $x15">;
} // mayLoad = 0, mayStore = 1

// 2.10.4 Move to Address

let isMoveReg = 1, isReMaterializable = 1 in {
  let s1 = 0, n = 0 in
  class M2ADDR_RR<bits<8> opc1, bits<8> opc2, string mnemonic,
                  RegisterClass DEST = AddrRegs, RegisterClass SRC = DEST> 
                  :  RR<opc1, opc2, (outs DEST:$d), (ins SRC:$s2),
                        mnemonic, "\t$d, $s2">;

  class M2ADDR_SRR<bits<8> opc1, string mnemonic,
                  RegisterClass DEST = AddrRegs, RegisterClass SRC = DEST> 
                  : SRR<opc1, (outs DEST:$s1_d), (ins SRC:$s2),
                        mnemonic, "\t$s1_d, $s2">;
} // isMoveReg = 1, isReMaterializable = 1

// 2.11.2 Context Loading and Storing

let s1_d = 0 in {
  class CLS_ABS<bits<8> opc1, bits<2> opc2, string mnemonic>
              : ABS<opc1, opc2, (outs),
                    (ins off18_abs:$off18),
                    mnemonic , "\t$off18">;

  class CLS_BO<bits<8> opc1, bits<6> opc2, string mnemonic>
             : BO<opc1, opc2, (outs), 
                  (ins AddrRegs:$s2, simm10:$off10),
                  mnemonic , "\t[${s2}], $off10">;
} // s1_d = 0

//===----------------------------------------------------------------------===//
//  Check Instructions.
//

let s1 = 0 in
class CHECK_RRR<bits<8> opc1, bits<4> opc2, string mnemonic>
                  :  RRR<opc1, opc2, (outs ExtDataRegs:$d),
                        (ins ExtDataRegs:$s3, DataRegs:$s2),
                        mnemonic, "\t$d, $s3, $s2">;
// Floating Point Operations

class FPO_RR<bits<8> opc1, bits<8> opc2, string mnemonic>
           : RR<opc1, opc2, (outs DataRegs:$d),
                (ins DataRegs:$s1, DataRegs:$s2),
                mnemonic, "\t$d, $s1, $s2">;

//===----------------------------------------------------------------------===//
// Floating Point Conversion Instructions.
//

let s2 = 0 in
class FPC_RR <bits<8> opc1, bits<8> opc2, string mnemonic>
                : RR<opc1, opc2, (outs DataRegs:$d),
                (ins DataRegs:$s1),
                mnemonic, "\t$d, $s1">;

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