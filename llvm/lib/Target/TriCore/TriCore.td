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
include "TriCoreRegisterBanks.td"
include "TriCoreCallingConv.td"

//===----------------------------------------------------------------------===//
// Instruction Descriptions.
//===----------------------------------------------------------------------===//

include "TriCoreInstrInfo.td"
include "TriCoreGISelPattern.td"

def TriCoreInstrInfo : InstrInfo;

//===----------------------------------------------------------------------===//
// Assembly parser.
//===----------------------------------------------------------------------===//

def TriCoreAsmParser : AsmParser {
  let ShouldEmitMatchRegisterAltName = 1;
}

//===----------------------------------------------------------------------===//
// Target features.
//===----------------------------------------------------------------------===//

def Allow16BitInstructions : SubtargetFeature<"allow-16bit", "allow16BitInst",
                            "true", "Allow usage of 16 bit instructions">;

def Allow32BitInstructions : SubtargetFeature<"allow-32bit", "allow32BitInst",
                            "true", "Allow usage of 32 bit instructions">;

def Only32BitInstructions : SubtargetFeature<"insn32-only", "allow16BitInst",
                            "false", "Force usage of 32 bit instructions">;

def HasTC161Ops           : SubtargetFeature<"tc161", "HasTC161Ops",
                            "true", "Support TC161 instructions">;

def HasTC162Ops           : SubtargetFeature<"tc162", "HasTC162Ops",
                            "true", "Support TC162 instructions", [HasTC161Ops]>;

def HasTC18Ops            : SubtargetFeature<"tc18", "HasTC18Ops",
                            "true", "Support TC18 instructions", [HasTC162Ops]>;

//===----------------------------------------------------------------------===//
// Target processors
//===----------------------------------------------------------------------===//

def : Processor<"tc2xx", NoItineraries,
                [Allow16BitInstructions, Allow32BitInstructions, HasTC161Ops]>;
                
def : Processor<"tc3xx", NoItineraries,
                [Allow16BitInstructions, Allow32BitInstructions, HasTC162Ops]>;
                
def : Processor<"tc4xx", NoItineraries,
                [Allow16BitInstructions, Allow32BitInstructions, HasTC18Ops]>;

//===----------------------------------------------------------------------===//
// Target Declaration
//===----------------------------------------------------------------------===//

def TriCore : Target {
  let InstructionSet = TriCoreInstrInfo;
  let AssemblyParsers = [TriCoreAsmParser];
}
