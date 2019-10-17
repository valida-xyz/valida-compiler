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

// Arithmetic Instructions
def : Pat<(add DataRegs:$s1, DataRegs:$s2), (ADD_ddd DataRegs:$s1, DataRegs:$s2)>;
def : Pat<(sub DataRegs:$s1, DataRegs:$s2), (SUB_ddd DataRegs:$s1, DataRegs:$s2)>;
