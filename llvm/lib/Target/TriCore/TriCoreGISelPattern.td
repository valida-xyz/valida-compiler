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
// Truncations & Extensions
//===----------------------------------------------------------------------===//

// Truncations
def : Pat<(i32 (trunc ExtDataRegs:$src)),
          (i32 (EXTRACT_SUBREG ExtDataRegs:$src, dsub0))>;
def : Pat<(i32 (trunc ExtAddrRegs:$src)),
          (i32 (EXTRACT_SUBREG ExtAddrRegs:$src, asub0))>;

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
