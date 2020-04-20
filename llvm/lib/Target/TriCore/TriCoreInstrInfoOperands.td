//==-- TriCoreInstrInfoOperands.td                          ---*- tablegen -*-//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file describes the TriCore special operands.
//
//===----------------------------------------------------------------------===//

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
class ImmLsbNIsZero<int M, int N, string prefix> : AsmOperandClass {
  let Name = prefix # "Imm" # M # "_Lsb" # N;
  let RenderMethod = "addImmOperands";
  let DiagnosticType = !strconcat("Invalid", Name);
}

class SImmLsbNIsZero<int M, int N> : ImmLsbNIsZero<M, N, "S"> {
  let PredicateMethod = "isScaledImm<" # M # ", " # N # ", true>";
}

class UImmLsbNIsZero<int M, int N> : ImmLsbNIsZero<M, N, "U"> {
  let PredicateMethod = "isScaledImm<" # M # ", " # N # ", false>";
}

//// Operand Classes
class GenericSignedImmediate<int width, ValueType Ty = OtherVT> : Operand<Ty> {
  let ParserMatchClass = SImmAsmOperand<width>;
  let DecoderMethod = "decodeSignedImmediate<" # width # ">";
  let EncoderMethod = "getImmOpValue";
}

class GenericUnsignedImmediate<int width, ValueType Ty = OtherVT> : Operand<Ty> {
  let ParserMatchClass = UImmAsmOperand<width>;
  let DecoderMethod = "decodeUnsignedImmediate<" # width # ">";
  let EncoderMethod = "getImmOpValue";
}

class GenericSImmLsbNIsZero<int width, int shift> : Operand<OtherVT> {
  let ParserMatchClass = SImmLsbNIsZero<width, shift>;
  let EncoderMethod = "getScaledSImmOpValue<" # shift # ">";
  let DecoderMethod = "decodeSImmLsbNIsZero<" # width # ", " # shift # ">";
}

class GenericUImmLsbNIsZero<int width, int shift> : Operand<OtherVT> {
  let ParserMatchClass = UImmLsbNIsZero<width, shift>;
  let EncoderMethod = "getScaledSImmOpValue<" # shift # ">";
  let DecoderMethod = "decodeUImmLsbNIsZero<" # width # ", " # shift # ">";
}

//// Operand Definitions

let OperandNamespace = "TriCoreOp" in {
// A 1-bit unsigned immediate.
def uimm1 : GenericUnsignedImmediate<1> {
  let OperandType = "OPERAND_UIMM1";
}

// A 2-bit unsigned immediate.
def uimm2 : GenericUnsignedImmediate<2, i32> {
  let OperandType = "OPERAND_UIMM2";
}

// A 2 bit unsigned immediate encoded in 1 bit
def uimm2_l : Operand<OtherVT> {
  let ParserMatchClass = GenericImmOperand<"UImm2_l">;
  let DecoderMethod = "decodeUImm2_l";
  let OperandType = "OPERAND_UIMM2_L";
}

// A 3-bit unsigned immediate.
def uimm3 : GenericUnsignedImmediate<3> {
  let OperandType = "OPERAND_UIMM3";
}

// A 16 bit unsigned immediate with 2 LSB set to 0
def sysreg : Operand<OtherVT> {
  let ParserMatchClass = GenericImmOperand<"SysReg">;
  let DecoderMethod = "decodeSysReg";
  let PrintMethod = "printSystemRegister";
  let OperandType = "OPERAND_SYSREG";
}

// A 16 bit unsigned immediate with 3 LSB set to 0
def double_sysreg : Operand<OtherVT> {
  let ParserMatchClass = GenericImmOperand<"DoubleSysReg">;
  let DecoderMethod = "decodeSysReg";
  let PrintMethod = "printSystemRegister";
  let OperandType = "OPERAND_DOUBLE_SYSREG";
}

// A 4-bit signed immediate.
def simm4 : GenericSignedImmediate<4, i32> {
  let OperandType = "OPERAND_SIMM4";
}

// A 4 bit value which comply: {27b’111111111111111111111111111, disp4, 0}.
def simm4_1 : Operand<OtherVT> {
  let ParserMatchClass = GenericImmOperand<"SImm4_1">;
  let EncoderMethod = "getSImm4_1";
  let DecoderMethod = "decodeSImm4_1";
  let OperandType = "OPERAND_SIMM4_1";
}

// A 4-bit unsigned immediate.
def uimm4 : GenericUnsignedImmediate<4, i32> {
  let OperandType = "OPERAND_UIMM4";
}

// A 4-bit unsigned immediate, shifted left by 1
def uimm4_lsb0 : GenericUImmLsbNIsZero<4, 1> {
  let OperandType = "OPERAND_UIMM4_LSB0";
}

// A 4-bit unsigned immediate, shifted left by 2
def uimm4_lsb00 : GenericUImmLsbNIsZero<4, 2> {
  let OperandType = "OPERAND_UIMM4_LSB00";
}

// A 5-bit unsigned immediate.
def uimm5 : GenericUnsignedImmediate<5, i32> {
  let OperandType = "OPERAND_UIMM5";
}

// A 8-bit unsigned immediate.
def uimm8 : GenericUnsignedImmediate<8, i8> {
  let OperandType = "OPERAND_UIMM8";
}

// A 8-bit signed immediate, shifted left by 1
def simm8_lsb0 : GenericSImmLsbNIsZero<8, 1> {
  let OperandType = "OPERAND_SIMM8_LSB0";
}

// A 8-bit unsigned immediate, shifted left by 2
def uimm8_lsb00 : GenericUImmLsbNIsZero<8, 2> {
  let OperandType = "OPERAND_UIMM8_LSB00";
}

// A 6 bit signed immediate encoded in 9 bit
def simm9_shift : Operand<i32>,
                  ImmLeaf<i32, [{ return Imm >= -32 && Imm < 32; }]>{
  let ParserMatchClass = GenericImmOperand<"SImm9Shift">;
  let DecoderMethod = "decodeSImm9Shift";
  let OperandType = "OPERAND_SIMM9_SHIFT";
}

// A 5 bit signed immediate encoded in 9 bit
def simm9_shift5 : Operand<OtherVT> {
  let ParserMatchClass = GenericImmOperand<"SImm9Shift5">;
  let DecoderMethod = "decodeSImm9Shift5";
  let OperandType = "OPERAND_SIMM9_SHIFT5";
}

// A 9-bit signed immediate.
def simm9 : GenericSignedImmediate<9, i32>,
            ImmLeaf<i32, [{ return Imm >= -256 && Imm < 256; }]> {
  let OperandType = "OPERAND_SIMM9";
}

// A 9-bit unsigned immediate.
def uimm9 : GenericUnsignedImmediate<9, i32>,
            ImmLeaf<i32, [{ return Imm >= 0 && Imm < 512; }]> {
  let OperandType = "OPERAND_UIMM9";
}

// For instuctions with signed 10 bit variants which also has superior BOL 
// versions, therefore they should never be generated, but should be able
// to disassemble them
def simm10_disas : Operand<i32> {
  let ParserMatchClass = GenericImmOperand<"SImm10_disas">;
  let DecoderMethod = "decodeSignedImmediate<10>";
  let OperandType = "OPERAND_SIMM10";
}

// A 16-bit signed immediate of BOL format
// It is defined earlier than simm10 to enforce generating BOL versions
// of an instruction rather then BO
def simm16_BOL : Operand<i16> {
  let ParserMatchClass = GenericImmOperand<"SImm16_BOL">;
  let DecoderMethod = "decodeSignedImmediate<16>";
  let EncoderMethod = "getImmOpValue";
  let OperandType = "OPERAND_SIMM16_BOL";
}

// A 10-bit signed immediate.
def simm10 : GenericSignedImmediate<10, i32> {
  let OperandType = "OPERAND_SIMM10";
}

// A 16-bit signed immediate of RLC format
def simm16_RLC : Operand<i32>,
                 ImmLeaf<i32, [{ return Imm >= -32768 && Imm < 32768; }]> {
  let ParserMatchClass = GenericImmOperand<"SImm16_RLC">;
  let DecoderMethod = "decodeSignedImmediate<16>";
  let EncoderMethod = "getImmOpValue";
  let OperandType = "OPERAND_SIMM16_RLC";
}

// A 16-bit unsigned immediate of RLC format
def uimm16_RLC : Operand<i16> {
  let ParserMatchClass = GenericImmOperand<"UImm16_RLC">;
  let DecoderMethod = "decodeUnsignedImmediate<16>";
  let EncoderMethod = "getImmOpValue";
  let OperandType = "OPERAND_UIMM16_RLC";
}

// A an unsigned 4 bit N value which comply: (N + 16) * 2
def disp4_16 : Operand<OtherVT> {
  let ParserMatchClass = GenericImmOperand<"Disp4_16">;
  let EncoderMethod = "getDisp4_16";
  let OperandType = "OPERAND_DISP4_16";
}

// A 15-bit signed immediate, shifted left by 1
def simm15_lsb0 : GenericSImmLsbNIsZero<15, 1> {
  let OperandType = "OPERAND_SIMM15_LSB0";
}

// A 24-bit signed immediate, shifted left by 1
def simm24_lsb0 : GenericSImmLsbNIsZero<24, 1> {
  let OperandType = "OPERAND_SIMM24_LSB0";
}

// A 18-bit immediate as 32 bit absolute address
def off18_abs : Operand<OtherVT> {
  let ParserMatchClass = GenericImmOperand<"Off18Abs">;
  let EncoderMethod = "getOff18Abs";
  let DecoderMethod = "decodeOff18Abs";
  let OperandType = "OPERAND_OFF18_ABS";
}

// A 18-bit immediate as 32 bit absolute address
def off18_abs_v2 : Operand<OtherVT> {
  let ParserMatchClass = GenericImmOperand<"Off18AbsV2">;
  let EncoderMethod = "getScaledSImmOpValue<14>";
  let DecoderMethod = "decodeOff18AbsV2";
  let OperandType = "OPERAND_OFF18_ABS_V2";
}

// A 24-bit signed immediate as 32 bit absolute address
def disp24_abs : Operand<OtherVT> {
  let ParserMatchClass = GenericImmOperand<"Disp24Abs">;
  let EncoderMethod = "getDisp24Abs";
  let DecoderMethod = "decodeDisp24Abs";
  let OperandType = "OPERAND_DISP24_ABS";
}
} // OperandNamespace = "TriCoreOp"
