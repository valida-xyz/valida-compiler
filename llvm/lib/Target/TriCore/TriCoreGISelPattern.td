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

// Get 32-bit subregister
def subreg_i32 : OutPatFrag<(ops node:$R, node:$SubIdx),
                            (i32 (EXTRACT_SUBREG $R, $SubIdx))>;

// Truncate to 32-bit
def trunc_i32_data : OutPatFrag<(ops node:$R), (subreg_i32 $R, dsub0)>;
def trunc_i32_addr : OutPatFrag<(ops node:$R), (subreg_i32 $R, asub0)>;

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

def : Pat<(add DataRegs:$s1, DataRegs:$s2),
          (ADD_ddd DataRegs:$s1, DataRegs:$s2)>;
def : Pat<(sub DataRegs:$s1, DataRegs:$s2),
          (SUB_ddd DataRegs:$s1, DataRegs:$s2)>;

// 2.1.8 Logical

def : Pat<(and DataRegs:$s1, DataRegs:$s2),
          (AND_ddd DataRegs:$s1, DataRegs:$s2)>;
def : Pat<(or DataRegs:$s1, DataRegs:$s2), (OR_ddd DataRegs:$s1, DataRegs:$s2)>;
def : Pat<(xor DataRegs:$s1, DataRegs:$s2),
          (XOR_ddd DataRegs:$s1, DataRegs:$s2)>;

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
def : Pat<(i32 (load AddrRegs:$addr)), (i32 (LDW_dalc AddrRegs:$addr, (i16 0)))>;
def : Pat<(i64 (load AddrRegs:$addr)), (i64 (LDD_eac AddrRegs:$addr, (i32 0)))>;

// Any-extending loads
def : Pat<(i32 (extloadi8 AddrRegs:$addr)),
          (i32 (LDB_dalc AddrRegs:$addr, (i16 0)))>;
def : Pat<(i32 (extloadi16 AddrRegs:$addr)),
          (i32 (LDH_dalc AddrRegs:$addr, (i16 0)))>;

// Sign-extending loads
def : Pat<(i32 (sextloadi8 AddrRegs:$addr)),
          (i32 (LDB_dalc AddrRegs:$addr, (i16 0)))>;
def : Pat<(i32 (sextloadi16 AddrRegs:$addr)),
          (i32 (LDH_dalc AddrRegs:$addr, (i16 0)))>;

// Zero-extending loads
def : Pat<(i32 (zextloadi8 AddrRegs:$addr)),
          (i32 (LDBU_dalc AddrRegs:$addr, (i16 0)))>;
def : Pat<(i32 (zextloadi16 AddrRegs:$addr)),
          (i32 (LDHU_dalc AddrRegs:$addr, (i16 0)))>;

// 32 and 64-bit stores
def : Pat<(store DataRegs:$val, AddrRegs:$addr),
          (STW_alcd AddrRegs:$addr, (i16 0), DataRegs:$val)>;
def : Pat<(store ExtDataRegs:$val, AddrRegs:$addr),
          (STD_ace AddrRegs:$addr, (i32 0), ExtDataRegs:$val)>;
def : Pat<(store AddrRegs:$val, AddrRegs:$addr),
          (STA_alca AddrRegs:$addr, (i16 0), AddrRegs:$val)>;
def : Pat<(store ExtAddrRegs:$val, AddrRegs:$addr),
          (STDA_acp AddrRegs:$addr, (i32 0), ExtAddrRegs:$val)>;

// Byte and half-word stores with trunc
// 32-bit
def : Pat<(store (i8 (trunc DataRegs:$val)), AddrRegs:$addr),
          (STB_alcd AddrRegs:$addr, (i16 0), DataRegs:$val)>;
def : Pat<(store (i16 (trunc DataRegs:$val)), AddrRegs:$addr),
          (STH_alcd AddrRegs:$addr, (i16 0), DataRegs:$val)>;

// 64-bit
def : Pat<(store (i8 (trunc ExtDataRegs:$val)), AddrRegs:$addr),
          (STB_alcd AddrRegs:$addr, (i16 0), (trunc_i32_data ExtDataRegs:$val))>;
def : Pat<(store (i16 (trunc ExtDataRegs:$val)), AddrRegs:$addr),
          (STH_alcd AddrRegs:$addr, (i16 0), (trunc_i32_data ExtDataRegs:$val))>;
