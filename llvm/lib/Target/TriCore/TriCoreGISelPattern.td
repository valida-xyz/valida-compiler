//==-- TriCoreGISelPattern.td - Instruction Patterns for TriCore ---*- tablegen -*-//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file describes the TriCore instruction patterns.
//
//===----------------------------------------------------------------------===//

include "TriCore.td"

//===----------------------------------------------------------------------===//
// Helper
//===----------------------------------------------------------------------===//

// Simple binary op pattern
class SimpleBinOpPat<SDPatternOperator op, Instruction INSTR,
                     RegisterClass RC = DataRegs>
    : Pat<(op RC:$s1, RC:$s2), (INSTR RC:$s1, RC:$s2)>;

class SimpleBinOpImmPat<SDPatternOperator op, Instruction INSTR,
                          RegisterClass RC, ImmLeaf immTy>
    : Pat<(op RC:$s1, immTy:$imm), (INSTR RC:$s1, immTy:$imm)>;

// Get 32-bit subregister
class subreg_32b<ValueType ty>
    : OutPatFrag<(ops node:$R, node:$SubIdx),
                 (ty (EXTRACT_SUBREG $R, $SubIdx))>;

// Truncate to 32-bit
def trunc_i32_data : OutPatFrag<(ops node:$R), (subreg_32b<i32> $R, dsub0)>;
def trunc_i32_addr : OutPatFrag<(ops node:$R), (subreg_32b<i32> $R, asub0)>;

//===----------------------------------------------------------------------===//
// Truncations & Extensions
//===----------------------------------------------------------------------===//

// Truncations
def : Pat<(i32 (trunc ExtDataRegs:$src)), (trunc_i32_data ExtDataRegs:$src)>;
def : Pat<(i32 (trunc ExtAddrRegs:$src)), (trunc_i32_addr ExtAddrRegs:$src)>;

//===----------------------------------------------------------------------===//
// 2.1 Integer Arithmetic
//===----------------------------------------------------------------------===//

// 2.1.2 Addition and Subtraction

def : SimpleBinOpPat<add, ADD_ddd>;
def : SimpleBinOpImmPat<add, ADDI_ddc, DataRegs, simm16_RLC>;

def : SimpleBinOpPat<sub, SUB_ddd>;

// Subtracting a number is the same as adding the negated number
// However we have to be careful at the boundaries.
def neg_simm16 : ImmLeaf<i32, [{ return Imm >= -32767 && Imm <= 32768; }]>;
def NEG_IMM : SDNodeXForm<imm, [{}]>;
def gi_NEG_LO16 : GICustomOperandRenderer<"renderNegImm">,
                  GISDNodeXFormEquiv<NEG_IMM>;

def : Pat<(i32 (sub DataRegs:$src, neg_simm16:$imm)),
                (ADDI_ddc DataRegs:$src, (NEG_IMM $imm))>;


// 2.1.3 Multiply and Multiply-Add

def : SimpleBinOpPat<mul, MUL_ddd>;
def : SimpleBinOpImmPat<mul, MUL_ddc, DataRegs, simm9>;
def : Pat<(i32 (mulhu i32:$src1, i32:$src2)),
    (subreg_32b<i32> (MULU_edd DataRegs:$src1, DataRegs:$src2), dsub1)>;
def : Pat<(i32 (mulhs i32:$src1, i32:$src2)),
    (subreg_32b<i32> (MUL_edd DataRegs:$src1, DataRegs:$src2), dsub1)>;

// 2.1.4 Division

class DivRemBase<SDPatternOperator op, Instruction INSTR, SubRegIndex SubIdx>
    : Pat<(op DataRegs:$s1, DataRegs:$s2),
        (subreg_32b<i32> (INSTR DataRegs:$s1, DataRegs:$s2), SubIdx)>;

multiclass DivRem<SDPatternOperator divOp, SDPatternOperator remOp,
        Instruction INSTR> {
    def _Div : DivRemBase<divOp, INSTR, dsub0>;
    def _Rem : DivRemBase<remOp, INSTR, dsub1>;
}

defm : DivRem<sdiv, srem, DIV_edd>;
defm : DivRem<udiv, urem, DIVU_edd>;

// 2.1.7 Conditional Arithmetic

def : Pat<(i32 (select DataRegs:$cond, DataRegs:$src1, DataRegs:$src2)), 
    (SEL_dddd DataRegs:$cond, DataRegs:$src1, DataRegs:$src2)>;

// 2.1.8 Logical

def : SimpleBinOpPat<and, AND_ddd>;
def : SimpleBinOpImmPat<and, AND_ddc, DataRegs, uimm9>;

def : SimpleBinOpPat<or,  OR_ddd>;
def : SimpleBinOpImmPat<or, OR_ddc, DataRegs, uimm9>;

def : SimpleBinOpPat<xor, XOR_ddd>;
def : SimpleBinOpImmPat<xor, XOR_ddc, DataRegs, uimm9>;

// 2.1.9 Count Leading Zeros, Ones and Signs

def : Pat<(i32 (ctlz i32:$src)), (i32 (CLZ_dd DataRegs:$src))>;

let Predicates = [HasTC162] in {
def : Pat<(i32 (ctpop i32:$src)), (i32 (POPCNTW_dd DataRegs:$src))>;
} // Predicates = [HasTC162]

// 2.1.10 Shift.

def : SimpleBinOpPat<shl, SH_ddd>;
def : SimpleBinOpImmPat<shl, SH_ddc, DataRegs, simm9_shift>;

def : Pat<(srl DataRegs:$src, DataRegs:$amt), (SH_ddd DataRegs:$src, 
    (RSUB_ddc DataRegs:$amt, (i32 0)))>;

def neg_simm9 : ImmLeaf<i32, [{ return Imm >= -31 && Imm <= 32; }]>;
def : Pat<(i32 (srl DataRegs:$src, neg_simm9:$amt)),
          (SH_ddc DataRegs:$src, (NEG_IMM $amt))>;

def : Pat<(sra DataRegs:$src, DataRegs:$amt), (SHAS_ddd DataRegs:$src, 
    (RSUB_ddc DataRegs:$amt, (i32 0)))>;
def : Pat<(i32 (sra DataRegs:$src, neg_simm9:$amt)),
          (SHA_ddc DataRegs:$src, (NEG_IMM $amt))>;

//===----------------------------------------------------------------------===//
// 2.9 Branch Instructions
//===----------------------------------------------------------------------===//

// 2.9.1 Unconditional Branch

def : Pat<(br bb:$disp24), (J bb:$disp24)>;

//===----------------------------------------------------------------------===//
// Unary Ops
//===----------------------------------------------------------------------===//

// B_SWAP

let Predicates = [HasTC162] in {
def : Pat<(bswap DataRegs:$src), (SHUFFLE_ddc DataRegs:$src, (i32 0x01B))>;
} // Predicates = [HasTC162]


//===----------------------------------------------------------------------===//
// Floating point instructions
//===----------------------------------------------------------------------===//

// Unfortunately we cannot handle all predicates in TableGen. The other
// predicates need instructions requiring temporaries with multiple uses, which
// is not supported.
def COND_OEQ : PatFrags<(ops), [(OtherVT SETOEQ), (OtherVT SETEQ)]>;
def COND_OGT : PatFrags<(ops), [(OtherVT SETOGT), (OtherVT SETGT)]>;
def COND_OLT : PatFrags<(ops), [(OtherVT SETOLT), (OtherVT SETLT)]>;
def COND_UO  : PatFrags<(ops), [(OtherVT SETUO)]>;

def COND_UNE : PatFrag<(ops), (OtherVT SETUNE)>;
def COND_UGE : PatFrag<(ops), (OtherVT SETUGE)>;
def COND_ULE : PatFrag<(ops), (OtherVT SETULE)>;


class FCmp_Pat_Eq<ValueType ty, PatFrags CondCode, DAGOperand ValClass,
                  Instruction INSTR, int pos>
    : Pat<(i32 (setcc ty:$src1, ty:$src2, CondCode)),
          (EXTRU_ddcc (INSTR ValClass:$src1, ValClass:$src2), pos, 1)>;

class FCmp_Pat_Ne<ValueType ty, PatFrags CondCode, DAGOperand ValClass,
                  Instruction INSTR, int mask>
    : Pat<(i32 (setcc ty:$src1, ty:$src2, CondCode)),
          (NE_ddc (AND_ddc (INSTR ValClass:$src1, ValClass:$src2), mask), 0)>;

def : FCmp_Pat_Eq<f32, COND_OEQ, DataRegs, CMPF_ddd, 1>;
def : FCmp_Pat_Eq<f32, COND_OGT, DataRegs, CMPF_ddd, 2>;
def : FCmp_Pat_Eq<f32, COND_OLT, DataRegs, CMPF_ddd, 0>;
def : FCmp_Pat_Eq<f32, COND_UO,  DataRegs, CMPF_ddd, 3>;

def : FCmp_Pat_Ne<f32, COND_UNE,  DataRegs, CMPF_ddd, 0b1101>;
def : FCmp_Pat_Ne<f32, COND_UGE,  DataRegs, CMPF_ddd, 0b1110>;
def : FCmp_Pat_Ne<f32, COND_ULE,  DataRegs, CMPF_ddd, 0b1011>;

def : FCmp_Pat_Eq<f64, COND_OEQ, ExtDataRegs, CMPDF_dee, 1>;
def : FCmp_Pat_Eq<f64, COND_OGT, ExtDataRegs, CMPDF_dee, 2>;
def : FCmp_Pat_Eq<f64, COND_OLT, ExtDataRegs, CMPDF_dee, 0>;
def : FCmp_Pat_Eq<f64, COND_UO,  ExtDataRegs, CMPDF_dee, 3>;

def : FCmp_Pat_Ne<f64, COND_UNE,  ExtDataRegs, CMPDF_dee, 0b1101>;
def : FCmp_Pat_Ne<f64, COND_UGE,  ExtDataRegs, CMPDF_dee, 0b1110>;
def : FCmp_Pat_Ne<f64, COND_ULE,  ExtDataRegs, CMPDF_dee, 0b1011>;

//===----------------------------------------------------------------------===//
// Floating Point Arithmetic
//===----------------------------------------------------------------------===//

def : SimpleBinOpPat<fadd, ADDF_ddd>;
def : SimpleBinOpPat<fadd, ADDDF_eee, ExtDataRegs>;
def : SimpleBinOpPat<fsub, SUBF_ddd>;
def : SimpleBinOpPat<fsub, SUBDF_eee, ExtDataRegs>;

let Predicates = [HasTC18] in {
def : SimpleBinOpPat<fmaxnum, MAXF_ddd>;
def : SimpleBinOpPat<fmaxnum, MAXDF_eee, ExtDataRegs>;
def : SimpleBinOpPat<fminnum, MINF_ddd>;
def : SimpleBinOpPat<fminnum, MINDF_eee, ExtDataRegs>;
}

def : SimpleBinOpPat<fmul, MULF_ddd>;
def : SimpleBinOpPat<fmul, MULDF_eee, ExtDataRegs>;
def : SimpleBinOpPat<fdiv, DIVF_ddd>;
def : SimpleBinOpPat<fdiv, DIVDF_eee, ExtDataRegs>;

//===----------------------------------------------------------------------===//
// Others
//===----------------------------------------------------------------------===//
def : Pat<(f32 (fcopysign f32:$src1, f32:$src2)), (f32 (INST_ddcdc DataRegs:$src1, (i32 31), DataRegs:$src2, (i32 31)))>;
def : Pat<(f64 (fcopysign f64:$src1, f64:$src2)), (f64 (INSERT_SUBREG ExtDataRegs:$src1, (INST_ddcdc (subreg_32b<f32> ExtDataRegs:$src1, dsub1), (i32 31), (subreg_32b<f32> ExtDataRegs:$src2, dsub1),  (i32 31)), dsub1))>;

def : Pat<(i32 (fp_to_sint f32:$src)), (i32 (FTOIZ_dd DataRegs:$src))>;

let Predicates = [HasTC18] in {
def : Pat<(i32 (fp_to_sint f64:$src)), (i32 (DFTOIZ_de ExtDataRegs:$src))>;
def : Pat<(i64 (fp_to_sint f64:$src)), (i64 (DFTOLZ_ee ExtDataRegs:$src))>;
}

// Signed Int/Long to Float/Double conversions
def : Pat<(f32 (sint_to_fp i32:$src)), (f32 (ITOF_dd DataRegs:$src))>;

let Predicates = [HasTC18] in {
def : Pat<(f64 (sint_to_fp i32:$src)), (f64 (ITODF_ed DataRegs:$src))>;
def : Pat<(f64 (sint_to_fp i64:$src)), (f64 (LTODF_ee ExtDataRegs:$src))>;
} // Predicates = [HasTC18]

// Float/Double to unsigned Int/Long conversion
def : Pat<(i32 (fp_to_uint f32:$src)), (i32 (FTOUZ_dd DataRegs:$src))>;

let Predicates = [HasTC18] in {
def : Pat<(i32 (fp_to_uint f64:$src)), (i32 (DFTOUZ_de ExtDataRegs:$src))>;
def : Pat<(i64 (fp_to_uint f64:$src)), (i64 (DFTOULZ_ee ExtDataRegs:$src))>;
} // Predicates = [HasTC18]

// Unsigned Int/Long to Float/Double conversions
def : Pat<(f32 (uint_to_fp i32:$src)), (f32 (UTOF_dd DataRegs:$src))>;

let Predicates = [HasTC18] in {
def : Pat<(f64 (uint_to_fp i32:$src)), (f64 (UTODF_ed DataRegs:$src))>;
def : Pat<(f64 (uint_to_fp i64:$src)), (f64 (ULTODF_ee ExtDataRegs:$src))>;
} // Predicates = [HasTC18]

// Absolute value for Float/Double
let Predicates = [HasTC18] in {
def : Pat<(f32 (fabs f32:$src)), (f32 (ABSF_dd DataRegs:$src))>;
def : Pat<(f64 (fabs f64:$src)), (f64 (ABSDF_ee ExtDataRegs:$src))>;
} // Predicates = [HasTC18]

// Removing sign bit with INSERT if target do not support tc18 operations
def : Pat<(f32 (fabs f32:$src)), 
          (f32 (INSERT_ddccc DataRegs:$src, (i32 0), (i32 31), (i32 1)))>;

def : Pat<(f64 (fabs f64:$src)), (f64 (INSERT_SUBREG ExtDataRegs:$src, 
                (f32 (INSERT_ddccc (subreg_32b<f32> ExtDataRegs:$src, dsub1),
                                        (i32 0), (i32 31), (i32 1))), dsub1 ))>;

// Floating point extensions and truncations
// Operations involving f16 need to be handled in C++ for now, since none of our
// register classes are capable of holding an f16 type.
let Predicates = [HasTC18] in {
def : Pat<(f64 (fpextend f32:$src)), (f64 (FTODF_ed DataRegs:$src))>;
def : Pat<(f32 (fpround f64:$src)), (f32 (DFTOF_de ExtDataRegs:$src))>;
}
