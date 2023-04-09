//===------ DelendumCallingConv.td - Calling Conventions -------*- tablegen -*-//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
// This describes the calling conventions for Delendum architecture.
//===----------------------------------------------------------------------===//

def Delendum_CCallingConv : CallingConv<[
  // Handles byval parameters. Tell LLVM what the size and alignment
  // requirements of each stack slot are
  CCIfByVal<CCPassByVal<4, 4>>,

  // Promote i8/i16 to i32
  CCIfType<[i1, i8, i16], CCPromoteToType<i32>>,

  // Integer values get stored in stack slots that are 4 bytes in size and
  // 4-byte aligned
  //CCIfType<[i32], CCAssignToStack<4, 4>>
  CCIfType<[i32], CCCustom<"CC_Delendum_AssignToStack">>,
]>;

// C Return Convention
def Delendum_CRetConv : CallingConv<[
  CCIfType<[i1, i8, i16], CCPromoteToType<i32>>,

  // Integer values get stored in stack slots that are 4 bytes in size and
  // 4-byte aligned
  CCIfType<[i32], CCAssignToStack<4, 4>>
]>;
