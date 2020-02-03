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

//===----------------------------------------------------------------------===//
// Helper
//===----------------------------------------------------------------------===//

// Simple binary op pattern
class SimpleBinOpPat<SDPatternOperator op, Instruction INSTR,
                     RegisterClass RC = DataRegs>
    : Pat<(op RC:$s1, RC:$s2), (INSTR RC:$s1, RC:$s2)>;

// Get 32-bit subregister
class subreg_32b<ValueType ty>
    : OutPatFrag<(ops node:$R, node:$SubIdx),
                 (ty (EXTRACT_SUBREG $R, $SubIdx))>;

// Truncate to 32-bit
def trunc_i32_data : OutPatFrag<(ops node:$R), (subreg_32b<i32> $R, dsub0)>;
def trunc_i32_addr : OutPatFrag<(ops node:$R), (subreg_32b<i32> $R, asub0)>;

// Common load patterns: load any, load 32 bit
class LoadPat<ValueType ty, SDPatternOperator loadOp, Instruction INSTR,
                ValueType immTy = i32>
    : Pat<(ty (loadOp AddrRegs:$addr)), (ty (INSTR AddrRegs:$addr, (immTy 0)))>;

class Load32Pat<SDPatternOperator loadOp, Instruction INSTR>
    : LoadPat<i32, loadOp, INSTR, i16>;

// Common store patterns
// Emit common store fragment
class emit_store<Instruction INSTR, ValueType immTy = i16>
    : OutPatFrag<(ops node:$addr, node:$val), (INSTR $addr, (immTy 0), $val)>;

// Match truncating store fragment
class match_truncstore<ValueType ty, DAGOperand ValClass>
    : PatFrag<(ops), (store (ty (trunc ValClass:$val)), AddrRegs:$addr)>;

// Pattern to select store of any type
class StorePat<ValueType Ty, Instruction INSTR, ValueType immTy = i16>
    : Pat<(store Ty:$val, AddrRegs:$addr),
          (emit_store<INSTR, immTy> AddrRegs:$addr, Ty:$val)>;

class StorePatAddr<DAGOperand ValClass, Instruction INSTR, ValueType immTy = i16>
    : Pat<(store ValClass:$val, AddrRegs:$addr),
          (emit_store<INSTR, immTy> AddrRegs:$addr, ValClass:$val)>;

// Pattern to select truncating store from 32-bit
class TruncStorePat<ValueType ty, Instruction INSTR>
    : Pat<(match_truncstore<ty, DataRegs>),
          (emit_store<INSTR> AddrRegs:$addr, DataRegs:$val)>;

// Pattern to select truncating store from 64-bit
class Trunc64StorePat<ValueType ty, Instruction INSTR>
    : Pat<(match_truncstore<ty, ExtDataRegs>),
        (emit_store<INSTR> AddrRegs:$addr, (trunc_i32_data ExtDataRegs:$val))>;

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
def : SimpleBinOpPat<sub, SUB_ddd>;

// 2.1.3 Multiply and Multiply-Add

def : SimpleBinOpPat<mul, MUL_ddd>;

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
def : SimpleBinOpPat<or,  OR_ddd>;
def : SimpleBinOpPat<xor, XOR_ddd>;

// 2.1.10 Shift.

def : SimpleBinOpPat<shl, SH_ddd>;
def : Pat<(srl DataRegs:$src, DataRegs:$amt), (SH_ddd DataRegs:$src, 
    (RSUB_ddc DataRegs:$amt, (i32 0)))>;
def : Pat<(sra DataRegs:$src, DataRegs:$amt), (SHAS_ddd DataRegs:$src, 
    (RSUB_ddc DataRegs:$amt, (i32 0)))>;

//===----------------------------------------------------------------------===//
// 2.9 Branch Instructions
//===----------------------------------------------------------------------===//

// 2.9.1 Unconditional Branch

def : Pat<(br bb:$disp24), (J bb:$disp24)>;

//===----------------------------------------------------------------------===//
// 2.10 Load and Store Instructions
//===----------------------------------------------------------------------===//

// 2.10.1 Load/Store Basic Data Types

// 32 and 64-bit loads
def : Load32Pat<    load,   LDW_dalc>;
def : LoadPat<i64,  load,   LDD_eac>;

// Any-extending loads
def : Load32Pat<extloadi8,  LDB_dalc>;
def : Load32Pat<extloadi16, LDH_dalc>;

// Sign-extending loads
def : Load32Pat<sextloadi8,     LDB_dalc>;
def : Load32Pat<sextloadi16,    LDH_dalc>;

// Zero-extending loads
def : Load32Pat<zextloadi8,     LDBU_dalc>;
def : Load32Pat<zextloadi16,    LDHU_dalc>;

// 32 and 64-bit stores
def : StorePat<i32, STW_alcd>;
def : StorePat<i64, STD_ace,    i32>;
def : StorePatAddr<AddrRegs,    STA_alca>;
def : StorePatAddr<ExtAddrRegs, STDA_acp,   i32>;

// Byte and half-word stores with trunc
// 32-bit
def : TruncStorePat<i8,     STB_alcd>;
def : TruncStorePat<i16,    STH_alcd>;

// 64-bit
def : Trunc64StorePat<i8,   STB_alcd>;
def : Trunc64StorePat<i16,  STH_alcd>;

//===----------------------------------------------------------------------===//
// Others
//===----------------------------------------------------------------------===//
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

//===----------------------------------------------------------------------===//
// Floating Point Arithmetic
//===----------------------------------------------------------------------===//

def : SimpleBinOpPat<fadd, ADDF_ddd>;
def : SimpleBinOpPat<fadd, ADDDF_eee, ExtDataRegs>;
