include "DelendumInstrFormats.td"

//===----------------------------------------------------------------------===//
// Nodes
//===----------------------------------------------------------------------===//

def SDT_DCallSeqStart : SDCallSeqStart<[ SDTCisVT<0, i32> ]>;

def SDT_DCallSeqEnd : SDCallSeqEnd<[
  SDTCisVT<0, i32>, SDTCisVT<1, i32>
]>;

def callseq_start : SDNode<"ISD::CALLSEQ_START", SDT_DCallSeqStart,
                           [SDNPHasChain, SDNPOutGlue]>;
def callseq_end   : SDNode<"ISD::CALLSEQ_END",   SDT_DCallSeqEnd,
                           [SDNPHasChain, SDNPOptInGlue, SDNPOutGlue]>;

//===----------------------------------------------------------------------===//
// Operand Types
//===----------------------------------------------------------------------===//

// TODO: We cannot represent all 32-bit operands in our field. We need to add
// multiple operand types here, and check whether a given operand needs to be
// split into smaller ones.
def ImmOp32 : Operand<i32> {
  let DecoderMethod = "DecodeImm32";
}

def MemOp : Operand<iPTR> {
  let PrintMethod = "printMemOperand";
  let MIOperandInfo = (ops GPR, ImmOp32);
}

// Node immediate fits as 32-bit sign extended on target immediate.
def ImmSExt32  : PatLeaf<(imm), [{ return isInt<32>(N->getSExtValue()); }]>;

//===----------------------------------------------------------------------===//
// Patterns
//===----------------------------------------------------------------------===//

class AlignedLoad<PatFrag Node> :
  PatFrag<(ops node:$ptr), (Node node:$ptr), [{
  LoadSDNode *LD = cast<LoadSDNode>(N);
  return LD->getMemoryVT().getSizeInBits()/8 <= 4;
}]>;

class AlignedStore<PatFrag Node> :
  PatFrag<(ops node:$val, node:$ptr), (Node node:$val, node:$ptr), [{
  StoreSDNode *SD = cast<StoreSDNode>(N);
  return SD->getMemoryVT().getSizeInBits()/8 <= 4;
}]>;

def addr : ComplexPattern<iPTR, 2, "SelectAddr", [frameindex], [SDNPWantParent]>;

//===----------------------------------------------------------------------===//
// Instruction Class Templates
//===----------------------------------------------------------------------===//

class ALU_rr<bits<32> op, string opcodestr, SDNode OpNode>
  : DInst<op, (outs GPR:$rd), (ins MemOp:$rs1, MemOp:$rs2),
         !strconcat(opcodestr, "$rd, $rs1, $rs2"),
         [(set GPR:$rd, (OpNode addr:$rs1, addr:$rs2))]> {
  // TODO: How can we prepend 'op' using a DAG operator?
  let Inst = (ascend
    (operand "$rd", 32),
    (operand "$rs1", 32),
    (operand "$rs2", 32));
}

class ALU_ri<bits<32> op, string opcodestr, SDNode OpNode,
             Operand Od, PatLeaf imm_type>
  : DInst<op, (outs GPR:$rd), (ins MemOp:$rs1, Od:$imm32),
         !strconcat(opcodestr, "$rd, $rs1, $imm32"),
         [(set GPR:$rd, (OpNode addr:$rs1, imm_type:$imm32))]> {
  let Inst = (ascend
    (operand "$rd", 32),
    (operand "$rs1", 32),
    (operand "$imm32", 32));
}

class LOAD<bits<32> op, string instr_asm, PatFrag OpNode>
  : DInst<op, (outs GPR:$ra), (ins MemOp:$addr),
         !strconcat(instr_asm, "\t$ra, $addr"),
         [(set GPR:$ra, (OpNode addr:$addr))]> {
  let Inst = (ascend
    (operand "$ra", 32),
    (operand "$addr", 32));
}

class STORE<bits<32> op, string instr_asm, PatFrag OpNode>
  : DInst<op, (outs), (ins MemOp:$ra, MemOp:$addr),
         !strconcat(instr_asm, "\t$ra, $addr"),
         [(OpNode addr:$ra, addr:$addr)]> {
  let Inst = (ascend
    (operand "$ra", 32),
    (operand "$addr", 32));
}

//===----------------------------------------------------------------------===//
// Instructions
//===----------------------------------------------------------------------===//

// Load and store instructions
def LD : LOAD<1, "ld", AlignedLoad<load>>;
def ST : STORE<2, "st", AlignedStore<store>>;

// Arithmetic (32-bit)
def ADD : ALU_rr<3, "add", add>;
def SUB : ALU_rr<4, "sub", sub>;
def MUL : ALU_rr<5, "mul", mul>;

// Arithmetic (32-bit) immediate
def ADDi : ALU_ri<6, "addi", add, ImmOp32, ImmSExt32>;
def SUBi : ALU_ri<7, "sub",  sub, ImmOp32, ImmSExt32>;
def MULi : ALU_ri<8, "muli", mul, ImmOp32, ImmSExt32>;

//===----------------------------------------------------------------------===//
// Pseudo Instructions
//===----------------------------------------------------------------------===//

def ADJCALLSTACKDOWN : DPseudoInst<7, (outs), (ins ImmOp32:$amt1, ImmOp32:$amt2),
                                   "# ADJCALLSTACKDOWN $amt1",
                                   [(callseq_start timm:$amt1, timm:$amt2)]>;
def ADJCALLSTACKUP   : DPseudoInst<8, (outs), (ins ImmOp32:$amt1, ImmOp32:$amt2),
                                   "# ADJCALLSTACKUP $amt1",
                                   [(callseq_end timm:$amt1, timm:$amt2)]>;

