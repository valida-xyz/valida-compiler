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

class ImmAsmOperand<string prefix, int width> : AsmOperandClass {
  let Name = prefix # "Imm" # width;
  let RenderMethod = "addImmOperands";
  let PredicateMethod = "is" # prefix # "ImmN<" # width # ">";
  let DiagnosticType = !strconcat("Invalid", Name);
}

class SImmAsmOperand<int width> : ImmAsmOperand<"S", width>;

// A 16-bit signed immediate.
def simm16 : Operand<OtherVT> {
  let ParserMatchClass = SImmAsmOperand<16>;
  // FIXME: Add when it becames relevant (ex.: relocations)
  /// let EncoderMethod = "getImmOpValue";
}

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
