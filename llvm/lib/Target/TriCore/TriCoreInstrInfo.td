//==-- TriCoreInstrInfo.td - Target Description for TriCore ---*- tablegen -*-//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file describes the TriCore instructions.
//
//===----------------------------------------------------------------------===//

include "TriCoreInstrFormats.td"

//===----------------------------------------------------------------------===//
// TriCore special operands.
//
// NOTE: Immediate operands should be defined in ascending bit width. This
//       ensures that the shorter encodings will be preferred by TableGen

class GenericImmOperand<string name> : AsmOperandClass {
  let Name = name;
  let RenderMethod = "addImmOperands";
  let DiagnosticType = !strconcat("Invalid", Name);
}

class ImmAsmOperand<string prefix, int width> 
  : GenericImmOperand<prefix # "Imm" # width> {
  let PredicateMethod = "is" # prefix # "ImmN<" # width # ">";
}

class SImmAsmOperand<int width> : ImmAsmOperand<"S", width>;

class UImmAsmOperand<int width> : ImmAsmOperand<"U", width>;

// for M + N bit long operands having their least significant N bits 0
class SImmLsbNIsZero<int M, int N> : AsmOperandClass {
  let Name = "SImm" # M # "_Lsb" # N;
  let RenderMethod = "addImmOperands";
  let PredicateMethod = "isScaledSImm<" # M # ", " # N # ">";
  let DiagnosticType = !strconcat("Invalid", Name);
}

//// Operand Classes
class GenericSignedImmediate<int width> : Operand<OtherVT> {
  let ParserMatchClass = SImmAsmOperand<width>;
  // FIXME: Add when it becames relevant (ex.: relocations)
  /// let EncoderMethod = "getImmOpValue";
}

class GenericUnsignedImmediate<int width> : Operand<OtherVT> {
  let ParserMatchClass = UImmAsmOperand<width>;
}

class GenericSImmLsbNIsZero<int width, int shift> : Operand<OtherVT> {
  let ParserMatchClass = SImmLsbNIsZero<width, shift>;
  let EncoderMethod = "getScaledSImmOpValue<" # shift # ">";
}

//// Operand Definitions

// A 4-bit signed immediate.
def simm4 : GenericSignedImmediate<4>;

// A 8-bit unsigned immediate.
def uimm8 : GenericUnsignedImmediate<8>;

// A 8-bit signed immediate, shifted left by 1
def simm8_lsb0 : GenericSImmLsbNIsZero<8, 1>;

// A 6 bit signed immediate encoded in 9 bit
def simm9_shift : Operand<OtherVT> {
  let ParserMatchClass = GenericImmOperand<"SImm9Shift">;
}

// A 9-bit signed immediate.
def simm9 : GenericSignedImmediate<9>;

// A 9-bit unsigned immediate.
def uimm9 : GenericUnsignedImmediate<9>;

// A 16-bit signed immediate.
def simm16 : GenericSignedImmediate<16>;

// A 16-bit unsigned immediate.
def uimm16 : GenericUnsignedImmediate<16>;

// A 24-bit signed immediate, shifted left by 1
def simm24_lsb0 : GenericSImmLsbNIsZero<24, 1>;

// A 24-bit signed immediate as 32 bit absolute address
def disp24_abs : Operand<OtherVT> {
  let ParserMatchClass = GenericImmOperand<"Disp24Abs">;
  let EncoderMethod = "getDisp24Abs";
}

//===----------------------------------------------------------------------===//
// Instruction Class Templates
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
//  2.1 Integer Arithmetic.
//

// 2.1.1 Move.

let s1 = 0 in
class MOVE_RLC<bits<8> opc1, string mnemonic, Operand op_type = uimm16,
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

//===----------------------------------------------------------------------===//
// Instruction Definitions
//===----------------------------------------------------------------------===//

// Naming convention for the instruction definition:

// d - data register operand
// a - address register operand
// c - constant operand
// sc - small constant operand
// lc - long constant operand
// d15 - d15 register operand
// a15 - a15 register operand
// a10 - a10 register operand
// e - extended data register operand
// p - extended address register operand
// _16 - 16 bit instruction (always append it first)
// _poi - post increment

// Ex.: MOV_16_d15c is a 16 bit length MOV instruction with d15 and a 
// constant operands in this order.
// Use sc or lc when there would be two instruction with the same name.
// Ex.: MOV D[a], const16, MOV D[a], const4
// Both would have the name MOV_dc so in this case if the first one is
// already implemented then name the second one MOV_dsc (small constant)
// If the second one implemented first (const4 one), then name the const16
// one to MOV_dlc (long constant).

//===----------------------------------------------------------------------===//
//  2.1 Integer Arithmetic.
//

// 2.1.1 Move.

// MOV
let isMoveImm = 1 in {
  def MOV_dc      : MOVE_RLC<0x3B, "mov", simm16>;
  def MOV_ec      : MOVE_RLC<0xFB, "mov", simm16, ExtDataRegs>;
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

    def ADD_16_dd15c   : SRC<0x92, (outs DataRegs:$s1_d),
                            (ins ImplDataReg:$d15, simm4:$const4),
                            "add", "\t$s1_d, $d15, $const4">;

    def ADD_16_d15dc   : SRC<0x9A, (outs ImplDataReg:$d15),
                            (ins DataRegs:$s1_d, simm4:$const4),
                            "add", "\t$d15, $s1_d, $const4">;

    def ADD_16_dd      :  ADDSUB_SRR<0x42, "add">;

    def ADD_16_dd15d   : SRR<0x12, (outs DataRegs:$s1_d),
                            (ins ImplDataReg:$d15, DataRegs:$s2),
                            "add", "\t$s1_d, $d15, $s2">;

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
                            (ins DataRegs:$s1, simm16:$const16),
                            "addi", "\t$d, $s1, $const16">;

    // ADDIH
    def ADDIH_ddc      : RLC<0x9B, (outs DataRegs:$d),
                            (ins DataRegs:$s1, uimm16:$const16),
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

  def SUB_16_dd15d     : SRR<0x52, (outs DataRegs:$s1_d),
                            (ins ImplDataReg:$d15, DataRegs:$s2),
                            "sub", "\t$s1_d, $d15, $s2">;

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


// 2.1.8 Logical.

// AND
def AND_ddc          :  LOGIC_RC<0x8F, 0x08, "and">;
def AND_ddd          :  LOGIC_RR<0x0F, 0x08, "and">;

let Constraints = "$d15 = $src" in
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

let Constraints = "$d15 = $src" in
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

//===----------------------------------------------------------------------===//
//  2.9 Branch Instructions.
//

// 2.9.1 Unconditional Branch Instructions.

let isBranch = 1 in {
  def J       : UBI_B<0x1D,  "j", simm24_lsb0>;
  def J_16    : UBI_SB<0x3C, "j">;

  def JA      : UBI_B<0x9D,  "ja", disp24_abs>;

  def JI      : UBI_RR<0x03, "ji">;
  def JI_16   : SR<0xDC, 0x00, (outs), (ins AddrRegs:$s1_d),
                   "ji", "\t$s1_d">;

  let Defs = [A11] in { // Return Address register
    def JL    : UBI_B<0x5D,  "jl", simm24_lsb0>;
    def JLA   : UBI_B<0xDD,  "jla", disp24_abs>;
    def JLI   : UBI_RR<0x02, "jli">;
  } // Defs = [A11]
} // isBranch = 1

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