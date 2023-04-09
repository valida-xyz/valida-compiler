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
  let DecoderMethod = "DecodeImmOp32";
}

// Node immediate fits as 32-bit sign extended on target immediate.
def ImmSExt32  : ImmLeaf<i32, [{ return isInt<32>(Imm); }]>;

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

//===----------------------------------------------------------------------===//
// Instruction Class Templates
//===----------------------------------------------------------------------===//

class ALU_rr<bits<32> op, string opcodestr>
  : DInst<op, (outs), (ins ImmOp32:$c, ImmOp32:$a, ImmOp32:$b),
         opcodestr#"\t$c, $a, $b"> {
  let Inst = (ascend op,
    (operand "$c", 32),
    (operand "$a", 32),
    (operand "$b", 32));
}

class ALU_ri<bits<32> op, string opcodestr>
  : DInst<op, (outs), (ins ImmOp32:$c, ImmOp32:$a, ImmOp32:$b),
         opcodestr#"\t$c, $a, $b"> {
  let Inst = (ascend op,
    (operand "$c", 32),
    (operand "$a", 32),
    (operand "$b", 32),
    0b0,
    0b1);
}

class LOAD<bits<32> op, string opcodestr>
  : DInst<op, (outs), (ins ImmOp32:$c, ImmOp32:$a),
         opcodestr#"\t$c, $a"> {
  let Inst = (ascend op,
    (operand "$c", 32),
    (operand "$a", 32));
}

class STORE<bits<32> op, string opcodestr>
  : DInst<op, (outs), (ins ImmOp32:$a, ImmOp32:$b),
         opcodestr#"\t$a, $b"> {
  let Inst = (ascend op,
    (operand "$a", 32),
    (operand "$b", 32));
}

class WRITE_IMM<bits<32> op, string opcodestr>
  : DInst<op, (outs), (ins ImmOp32:$c, ImmOp32:$a, 
                           ImmOp32:$b, ImmOp32:$d,
                           ImmOp32:$e),
         opcodestr#"\t$c, $a, $b, $d, $e"> {
  let Inst = (ascend op,
    (operand "$c", 32),
    (operand "$a", 32),
    (operand "$b", 32),
    (operand "$d", 32),
    (operand "$e", 32));
}

class JUMP<bits<32> op, string opcodestr>
  : DInst<op, (outs), (ins ImmOp32:$c, ImmOp32:$a, ImmOp32:$b),
         opcodestr#"\t$c, $a, $b"> {
  let Inst = (ascend op,
    (operand "$c", 32),
    (operand "$a", 32),
    (operand "$b", 32));
  let isCall = 1;
}

//===----------------------------------------------------------------------===//
// Instructions
//===----------------------------------------------------------------------===//

// Load and store instructions
def LOAD32 : LOAD<1, "lw">;
def STORE32 : STORE<2, "sw">;

// Immediate value writes
def SET32 : WRITE_IMM<3, "set32">;

// Control flow
def JAL  : JUMP<4, "jal">;
def JALV : JUMP<5, "jalv">;
def BEQ  : JUMP<6, "beq">;

// Arithmetic (32-bit)
def ADD : ALU_rr<7, "add">;
def SUB : ALU_rr<8, "sub">;
def MUL : ALU_rr<9, "mul">;

// Arithmetic (32-bit) immediate
def ADDi : ALU_ri<10, "addi">;
def SUBi : ALU_ri<11, "subi">;
def MULi : ALU_ri<12, "muli">;

def RET : DInst<10, (outs), (ins), "ret">;

//===----------------------------------------------------------------------===//
// Pseudo Instructions
//===----------------------------------------------------------------------===//

def CALL : DPseudoInst<0, (outs), (ins ImmOp32:$a), "call", []>;

def ADJCALLSTACKDOWN : DPseudoInst<1, (outs), (ins ImmOp32:$amt1, ImmOp32:$amt2),
                                   "# ADJCALLSTACKDOWN $amt1",
                                   [(callseq_start timm:$amt1, timm:$amt2)]>;
def ADJCALLSTACKUP   : DPseudoInst<2, (outs), (ins ImmOp32:$amt1, ImmOp32:$amt2),
                                   "# ADJCALLSTACKUP $amt1",
                                   [(callseq_end timm:$amt1, timm:$amt2)]>;
