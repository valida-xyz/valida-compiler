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

// for M + N bit long operands having their least significant N bits 0
class SImmLsbNIsZero<int M, int N> : AsmOperandClass {
  let Name = "SImm" # M # "_Lsb" # N;
  let RenderMethod = "addImmOperands";
  let PredicateMethod = "isScaledSImm<" # M # ", " # N # ">";
  let DiagnosticType = !strconcat("Invalid", Name);
}

// A 8-bit signed immediate, shifted left by 1
def simm8_lsb0 : Operand<OtherVT> {
  let ParserMatchClass = SImmLsbNIsZero<8, 1>;
  let EncoderMethod = "getScaledSImmOpValue<1>";
}

// A 16-bit signed immediate.
def simm16 : Operand<OtherVT> {
  let ParserMatchClass = SImmAsmOperand<16>;
  // FIXME: Add when it becames relevant (ex.: relocations)
  /// let EncoderMethod = "getImmOpValue";
}

// A 24-bit signed immediate, shifted left by 1
def simm24_lsb0 : Operand<OtherVT> {
  let ParserMatchClass = SImmLsbNIsZero<24, 1>;
  let EncoderMethod = "getScaledSImmOpValue<1>";
}

// A 24-bit signed immediate as 32 bit absolute address
def disp24_abs : Operand<OtherVT> {
  let ParserMatchClass = GenericImmOperand<"Disp24Abs">;
  let EncoderMethod = "getDisp24Abs";
}

//===----------------------------------------------------------------------===//
// Instruction Class Templates
//===----------------------------------------------------------------------===//

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