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
                       AssemblerPredicate<(all_of HasTC161Ops), "tc161">;

def HasTC162         : Predicate<"Subtarget->hasTC162Ops()">,
                       AssemblerPredicate<(all_of HasTC162Ops), "tc162">;

def HasTC18          : Predicate<"Subtarget->hasTC18Ops()">,
                       AssemblerPredicate<(all_of HasTC18Ops), "tc18">;

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

// Jump to branch table
// This instruction is emitted during instruction selection to jump to the jump
// table. This pseudo instruction is needed for the jump table placement pass
// and is later lowered to ADDSCA_aadc + JI.
let isCodeGenOnly = 1, isBranch = 1, isTerminator = 1, isBarrier = 1,
    isIndirectBranch = 1 in {

let Size = 16 in
def JIJumpTable
    : PseudoInst<(outs AddrRegs:$dst),
                 (ins DataRegs:$idx, i32imm:$hi, i32imm:$lo)>;

let Size = 44 in
def JIJumpTableTC16XPIC
    : PseudoInst<(outs AddrRegs:$dst, AddrRegs:$scratch),
                 (ins DataRegs:$idx, i32imm:$hi, i32imm:$lo)>;
}

// Jump table placement marker
// This instruction is emitted during the jump table placement pass to mark
// where the jump table referenced by this instruction should be inserted. The
// second operand gives the size of the jump table in bytes and also gives the
// size of this pseudo instruction.
let isCodeGenOnly = 1 in
def JUMPTABLE_INSTS : PseudoInst<(outs), (ins i32imm:$jti, i32imm:$size)>;

// Immediate materialization
// Similar to ARM/AArch64, these are pseudo instructions, the benefit is that
// they can be remat'd as a single unit instead of having to handle reg inputs.
// There is a long standing FIXME to teach remat to handle multiple instructions.
// Since thats still not supported, we follow the other backends here.
let isReMaterializable = 1, isCodeGenOnly = 1, isMoveImm = 1 ,
    isAsCheapAsAMove = 1 in {
    def MOVImmDataReg : PseudoInst<(outs DataRegs:$dst), (ins i32imm:$src)>;
    def MOVImmExtDataReg : PseudoInst<(outs ExtDataRegs:$dst), (ins i64imm:$src)>;
    def MOVImmAddrReg : PseudoInst<(outs AddrRegs:$dst), (ins i32imm:$src)>;
} // isReMaterializable = 1, isCodeGenOnly = 1, isMoveImm = 1,
  // isAsCheapAsAMove = 1

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
