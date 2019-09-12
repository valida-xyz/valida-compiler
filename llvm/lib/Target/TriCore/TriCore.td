//===-- TriCore.td - Describe the TriCore Target Machine --*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

include "llvm/Target/Target.td"

//===----------------------------------------------------------------------===//
// Register File Descriptions.
//===----------------------------------------------------------------------===//

include "TriCoreRegisterInfo.td"

//===----------------------------------------------------------------------===//
// Instruction Descriptions.
//===----------------------------------------------------------------------===//

include "TriCoreInstrInfo.td"

def TriCoreInstrInfo : InstrInfo;

//===----------------------------------------------------------------------===//
// Target Declaration
//===----------------------------------------------------------------------===//

def TriCore : Target {
  let InstructionSet = TriCoreInstrInfo;
}