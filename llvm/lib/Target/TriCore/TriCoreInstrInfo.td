//==-- TriCoreInstrInfo.td - Target Description for TriCore ---*- tablegen -*-//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file describes the TriCore instructions.
//
//===----------------------------------------------------------------------===//

class PredicateControl {
    // Predicates for the instruction format (16/32-bit)
    list<Predicate> FormatPredicates = [];
    // Predicates for the instruction's ISA
    list<Predicate> ISAPredicates = [];
    list<Predicate> Predicates = !listconcat(FormatPredicates,
                                            ISAPredicates);


}

def HasTC161         : Predicate<"Subtarget->hasTC161Ops()">,
                       AssemblerPredicate<"HasTC161Ops", "tc161">;

def HasTC162         : Predicate<"Subtarget->hasTC162Ops()">,
                       AssemblerPredicate<"HasTC162Ops", "tc162">;

def HasTC18          : Predicate<"Subtarget->hasTC18Ops()">,
                       AssemblerPredicate<"HasTC18Ops", "tc18">;

include "TriCoreInstrFormats.td"
include "TriCoreInstrInfoOperands.td"
include "TriCoreInstrInfoTemplates.td"
include "TriCoreInstrInfoTC161.td"
include "TriCoreInstrInfoTC162.td"
include "TriCoreInstrInfoTC18.td"

//===----------------------------------------------------------------------===//
// TriCore Pseudo instructions
//

// Call stack handling
// These instructions are generated during the call lowering in
// TriCoreCallLowering.cpp and communicate the required call frame size of a
// call instruction to the PrologEpilogInserter pass.
let Defs = [A10], Uses = [A10], hasSideEffects = 1, isCodeGenOnly = 1 in {
def ADJCALLSTACKDOWN : PseudoInst<(outs), (ins i32imm:$amt1, i32imm:$amt2)>;
def ADJCALLSTACKUP : PseudoInst<(outs), (ins i32imm:$amt1, i32imm:$amt2)>;
} // Defs = [A10], Uses = [A10], hasSideEffects = 1, isCodeGenOnly = 1

//===----------------------------------------------------------------------===//
// Instruction Definitions
//===----------------------------------------------------------------------===//

// Naming convention for the instruction definition:

// d - data register operand
// a - address register operand
// c - constant operand
// sc - small constant operand
// lc - long constant operand
// d15 - d15 register operand
// a15 - a15 register operand
// a10 - a10 register operand
// e - extended data register operand
// p - extended address register operand
// _16 - 16 bit instruction (always append it first)
// _poi - post increment
// _pri - pre increment

// Ex.: MOV_16_d15c is a 16 bit length MOV instruction with d15 and a 
// constant operands in this order.
// Use sc or lc when there would be two instruction with the same name.
// Ex.: MOV D[a], const16, MOV D[a], const4
// Both would have the name MOV_dc so in this case if the first one is
// already implemented then name the second one MOV_dsc (small constant)
// If the second one implemented first (const4 one), then name the const16
// one to MOV_dlc (long constant).
