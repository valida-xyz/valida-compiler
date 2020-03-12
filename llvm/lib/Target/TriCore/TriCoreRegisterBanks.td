//=-- TriCoreRegisterBank.td - Describe the TriCore Banks ----*- tablegen -*-=//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
//
//===----------------------------------------------------------------------===//

/// Data registers: D.
def DataRegBank : RegisterBank<"DataRegBank", [ExtDataRegs]>;

/// Address registers: A
def AddrRegBank : RegisterBank<"AddrRegBank", [ExtAddrRegs]>;

/// Carry bit register: PSW.C
def StatusRegBank : RegisterBank<"StatusRegBank", [CarryReg]>;
