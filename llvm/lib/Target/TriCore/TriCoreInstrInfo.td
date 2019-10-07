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

let Defs = [PSW] in {
    def ADDrr  : RR<0x0B, 0x00,
                (outs DataRegs:$d),
                (ins DataRegs:$s1, DataRegs:$s2),
                "add", "\t$d, $s1, $s2",
                []>;

    def ADDrc  : RLC<0x1B,
                 (outs DataRegs:$d),
                 (ins DataRegs:$s1, simm16:$const16),
                 "addi", "\t$d, $s1, $const16",
                 []>;
} // Defs = [PSW]

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