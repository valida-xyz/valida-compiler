//===-- Delendum.td - Describe the Delendum Target Machine -*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

include "llvm/Target/Target.td"

//===----------------------------------------------------------------------===//
// Calling Conv, Instruction Descriptions, Register information, etc
//===----------------------------------------------------------------------===//

include "DelendumRegisterInfo.td"
include "GISel/DelendumRegisterBanks.td"
include "DelendumSchedule.td"
include "DelendumCallingConv.td"
include "DelendumInstrInfo.td"

def DelendumInstrInfo : InstrInfo;

//===----------------------------------------------------------------------===//
// Delendum processors supported
//===----------------------------------------------------------------------===//

def : ProcessorModel<"generic",  NoSchedModel, []>;

//===----------------------------------------------------------------------===//
// Delendum Target declaration
//===----------------------------------------------------------------------===//

def Delendum : Target {
  let InstructionSet = DelendumInstrInfo;
}
