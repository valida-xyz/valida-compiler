//===-- TriCoreCallingConv.td - Calling Conventions TriCore *- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This describes the calling conventions for the TriCore architecture.
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// TriCore Calling Convention (Register model)
//===----------------------------------------------------------------------===//

let Entry = 1 in
def CC_TriCore : CallingConv<[
  // If an argument requires consecutive register pairs, handle it with custom
  // code in TriCoreCallingConvention.cpp
  CCIfConsecutiveRegs<CCCustom<"CC_TriCore_Custom_Block">>,

  // Integer types smaller than 32-bits are promoted
  CCIfType<[i1, i8, i16], CCPromoteToType<i32>>,

  // Try to find a free scalar argument register
  CCIfType<[i32, f32], CCAssignToReg<[D4, D5, D6, D7]>>,
  CCIfType<[i64, f64], CCAssignToReg<[E4, E6]>>,

  // Pointers are handed over as iPtr's. Later code in GlobalISel can only
  // handle integer types, so we convert here
  CCIfPtr<CCBitConvertToType<i32>>,
  // Pointers are still passed in address argument registers
  CCIfPtr<CCAssignToReg<[A4, A5, A6, A7]>>,

  // All registers are exhausted, pass the rest on the stack
  CCIfType<[i32, f32], CCAssignToStack<4, 4>>,
  CCIfType<[i64, f64], CCAssignToStack<8, 4>>,
 ]>;

let Entry = 1 in
def CC_TriCore_VarArg : CallingConv<[

  // Everything is on the stack.
  CCIfPtr<CCBitConvertToType<i32>>,
  CCIfType<[i1, i8, i16], CCPromoteToType<i32>>,
  CCIfType<[i32, f32], CCAssignToStack<4, 4>>,
  CCIfType<[i64, f64], CCAssignToStack<8, 4>>,
]>;

 let Entry = 1 in
 def RetCC_TriCore : CallingConv<[

  // Integer types smaller than 32-bits are promoted
  CCIfType<[i1, i8, i16], CCPromoteToType<i32>>,

  // Try to find a free scalar return register
  CCIfType<[i32, f32], CCAssignToReg<[D2, D3]>>,
  CCIfType<[i64, f64], CCAssignToReg<[E2]>>,

  // Pointers are handed over as iPtr's. Later code in GlobalISel can only
  // handle integer types, so we convert here
  CCIfPtr<CCBitConvertToType<i32>>,
  // Pointers are still returned in address return registers
  CCIfPtr<CCAssignToReg<[A2]>>
 ]>;

//===----------------------------------------------------------------------===//
// Callee-saved register lists.
//===----------------------------------------------------------------------===//

// Upper context registers are preserved across calls
def CSR_TriCore_UpperContext
    : CalleeSavedRegs<(add (sequence "D%u", 8, 15),
                          (sequence "A%u", 10, 15),
                          PSW, PCXI)>;

// Needed for implementation of TriCoreRegisterInfo::getNoPreservedMask()
def CSR_NoRegs : CalleeSavedRegs<(add)>;
