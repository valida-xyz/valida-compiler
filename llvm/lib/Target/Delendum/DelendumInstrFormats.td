class DInst<bits<32> op, dag outs, dag ins, string asmstr, list<dag> pattern>
    : Instruction {
  bits<32> Opcode = op;

  let Namespace = "DL";
  let DecoderNamespace = "Delendum";

  // First word contains the opcode
  dag Inst = (ascend);

  dag OutOperandList = outs;
  dag InOperandList = ins;

  //let AsmString = asmstr;
  let AsmString = asmstr;
  let Pattern = pattern;

  // field bits<32> SoftFail = 0;
}

class DPseudoInst<bits<32> op, dag outs, dag ins, string asmstr, list<dag> pattern>
    : DInst<op, outs, ins, asmstr, pattern> {
  let isPseudo = 1;
}

