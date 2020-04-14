//==-- TriCoreInstrFormats.td - TriCore Instruction Formats -*- tablegen -*-==//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
//  Describe TriCore instructions format
//
//  CPU INSTRUCTION FORMATS
//
//  opc1     - primary operation code.
//  opc2     - secondary operation code,
//  s1       - source register 1
//  s2       - source register 2
//  d        - destination register
//  s1_d     - source or destination register
//  const<n> - <n> bits immediate value
//  disp<n>  - <n> bits displacment value
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// Instruction Format Predicates
//===----------------------------------------------------------------------===//

def Is16BitAllowed : Predicate<"Subtarget->isAllow16BitInst()">,
                     AssemblerPredicate<(all_of Allow16BitInstructions),
                     "16-bit instruction generation">;

def Is32BitAllowed : Predicate<"Subtarget->isAllow32BitInst()">,
                     AssemblerPredicate<(all_of Allow32BitInstructions), 
                     "32-bit instruction generation">;

//===----------------------------------------------------------------------===//
// Describe TriCore instructions formats
//===----------------------------------------------------------------------===//

// Format specifies the encoding format used by the instruction. These
// definitions must be kept in-sync with TriCoreBaseInfo.h.
class Format<bits<6> val> {
  bits<6> Value = val;
}

def Pseudo         : Format<0>;

// 16 bit formats
def SBFrm          : Format<1>;
def SBCFrm         : Format<2>;
def SBRFrm         : Format<3>;
def SBRNFrm        : Format<4>;
def SCFrm          : Format<5>;
def SLRFrm         : Format<6>;
def SLROFrm        : Format<7>;
def SRFrm          : Format<8>;
def SRCFrm         : Format<9>;
def SROFrm         : Format<10>;
def SRRFrm         : Format<11>;
def SRRSFrm        : Format<12>;
def SSRFrm         : Format<13>;
def SSROFrm        : Format<14>;

// 32 bit formats
def ABSFrm         : Format<15>;
def ABSBFrm        : Format<16>;
def BFrm           : Format<17>;
def BITFrm         : Format<18>;
def BOFrm          : Format<19>;
def BOLFrm         : Format<20>;
def BRCFrm         : Format<21>;
def BRNFrm         : Format<22>;
def BRRFrm         : Format<23>;
def RCFrm          : Format<24>;
def RCPWFrm        : Format<25>;
def RCRFrm         : Format<26>;
def RCRRFrm        : Format<27>;
def RCRWFrm        : Format<28>;
def RLCFrm         : Format<29>;
def RRFrm          : Format<30>;
def RR1Frm         : Format<31>;
def RR2Frm         : Format<32>;
def RRPWFrm        : Format<33>;
def RRRFrm         : Format<34>;
def RRR1Frm        : Format<35>;
def RRR2Frm        : Format<36>;
def RRRRFrm        : Format<37>;
def RRRWFrm        : Format<38>;
def SYSFrm         : Format<39>;

//===----------------------------------------------------------------------===//
// Generic Instruction Formats
//===----------------------------------------------------------------------===//
class InstTriCore<Format fmt, dag outs, dag ins, string mnemonic,
                  string operands, list<dag> pattern>
    : Instruction, PredicateControl
{
    let Namespace = "TriCore";
    let OutOperandList = outs;
    let InOperandList  = ins;
    let AsmString = mnemonic # operands;
    let Pattern   = pattern;
    field bits<32> SoftFail = 0;

    // The layout of TSFlags should be kept in sync with TriCoreBaseInfo.h.
    // Used to determine the instruction format.
    let TSFlags{5-0} = fmt.Value;
}

class PseudoInst<dag outs, dag ins, list<dag> pattern = []>
    : InstTriCore<Pseudo, outs, ins, "", "", pattern > {
    let isPseudo = 1;
}

//===----------------------------------------------------------------------===//
// Generic 16-bit Instruction Format
//===----------------------------------------------------------------------===//
class T16<Format fmt, dag outs, dag ins, string mnemonic, string operands,
          list<dag> pattern>
    : InstTriCore<fmt, outs, ins, mnemonic, operands, pattern>
{
    field bits<16> Inst;
    let Size = 2;
    list<Predicate> FormatPredicates = [Is16BitAllowed];
}


//===----------------------------------------------------------------------===//
// Generic 32-bit Instruction Format
//===----------------------------------------------------------------------===//
class T32<Format fmt, dag outs, dag ins, string mnemonic, string operands,
          list<dag> pattern>
    : InstTriCore<fmt, outs, ins, mnemonic, operands, pattern>
{
    field bits<32> Inst;
    let Size = 4;
    list<Predicate> FormatPredicates = [Is32BitAllowed];
}


//===----------------------------------------------------------------------===//
// 16-bit SB Instruction Format: <disp8|opc1>
//===----------------------------------------------------------------------===//
class SB<bits<8> opc1, dag outs, dag ins, string mnemonic, string operands,
          list<dag> pattern = []>
    : T16<SBFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<8> disp8;

    let Inst{7-0}  = opc1;
    let Inst{15-8} = disp8;
}


//===----------------------------------------------------------------------===//
// 16-bit SBC Instruction Format: <const4|disp4|opc1>
//===----------------------------------------------------------------------===//
class SBC<bits<8> opc1, dag outs, dag ins, string mnemonic, string operands,
          list<dag> pattern = []>
    : T16<SBCFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> disp4;
    bits<4> const4;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = disp4;
    let Inst{15-12} = const4;
}


//===----------------------------------------------------------------------===//
// 16-bit SBR Instruction Format: <s2|disp4|opc1>
//===----------------------------------------------------------------------===//
class SBR<bits<8> opc1, dag outs, dag ins, string mnemonic, string operands,
          list<dag> pattern = []>
    : T16<SBRFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> disp4;
    bits<4> s2;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = disp4;
    let Inst{15-12} = s2;
}


//===----------------------------------------------------------------------===//
// 16-bit SBRN Instruction Format: <s2|disp4|opc1>
//===----------------------------------------------------------------------===//
class SBRN<bits<8> opc1, dag outs, dag ins, string mnemonic, string operands,
          list<dag> pattern = []>
    : T16<SBRNFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> disp4;
    bits<4> n;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = disp4;
    let Inst{15-12} = n;
}


//===----------------------------------------------------------------------===//
// 16-bit SC Instruction Format: <const8|opc1>
//===----------------------------------------------------------------------===//
class SC<bits<8> opc1, dag outs, dag ins, string mnemonic, string operands,
          list<dag> pattern = []>
    : T16<SCFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<8> const8;

    let Inst{7-0}  = opc1;
    let Inst{15-8} = const8;
}


//===----------------------------------------------------------------------===//
// 16-bit SLR Instruction Format: <s2|d|opc1>
//===----------------------------------------------------------------------===//
class SLR<bits<8> opc1, dag outs, dag ins, string mnemonic, string operands,
          list<dag> pattern = []>
    : T16<SLRFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> d;
    bits<4> s2;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = d;
    let Inst{15-12} = s2;
}


//===----------------------------------------------------------------------===//
// 16-bit SLRO Instruction Format: <off4|d|opc1>
//===----------------------------------------------------------------------===//
class SLRO<bits<8> opc1, dag outs, dag ins, string mnemonic, string operands,
          list<dag> pattern = []>
    : T16<SLROFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> d;
    bits<4> off4;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = d;
    let Inst{15-12} = off4;
}


//===----------------------------------------------------------------------===//
// 16-bit SR Instruction Format: <opc2|s1_d|opc1>
//===----------------------------------------------------------------------===//
class SR<bits<8> opc1, bits<4> opc2, dag outs, dag ins, string mnemonic,
         string operands,list<dag> pattern = []>
    : T16<SRFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1_d;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1_d;
    let Inst{15-12} = opc2;
}


//===----------------------------------------------------------------------===//
// 16-bit SRC Instruction Format: <const4|s1_d|opc1>
//===----------------------------------------------------------------------===//
class SRC<bits<8> opc1, dag outs, dag ins, string mnemonic, string operands,
          list<dag> pattern = []>
    : T16<SRCFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1_d;
    bits<4> const4;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1_d;
    let Inst{15-12} = const4;
}


//===----------------------------------------------------------------------===//
// 16-bit SRO Instruction Format: <s2|off4|opc1>
//===----------------------------------------------------------------------===//
class SRO<bits<8> opc1, dag outs, dag ins, string mnemonic, string operands,
          list<dag> pattern = []>
    : T16<SROFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> off4;
    bits<4> s2;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = off4;
    let Inst{15-12} = s2;
}


//===----------------------------------------------------------------------===//
// 16-bit SRR Instruction Format: <s2|s1_d|opc1>
//===----------------------------------------------------------------------===//
class SRR<bits<8> opc1, dag outs, dag ins, string mnemonic, string operands,
          list<dag> pattern = []>
    : T16<SRRFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1_d;
    bits<4> s2;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1_d;
    let Inst{15-12} = s2;
}


//===----------------------------------------------------------------------===//
// 16-bit SRRS Instruction Format: <s2|s1_d|n|opc1>
//===----------------------------------------------------------------------===//
class SRRS<bits<8> opc1, dag outs, dag ins, string mnemonic, string operands,
          list<dag> pattern = []>
    : T16<SRRSFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<2> n;
    bits<4> s1_d;
    bits<4> s2;

    let Inst{5-0}   = opc1{5-0};
    let Inst{7-6}   = n;
    let Inst{11-8}  = s1_d;
    let Inst{15-12} = s2;
}


//===----------------------------------------------------------------------===//
// 16-bit SSR Instruction Format: <s2|s1|opc1>
//===----------------------------------------------------------------------===//
class SSR<bits<8> opc1, dag outs, dag ins, string mnemonic, string operands,
          list<dag> pattern = []>
    : T16<SSRFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1;
    bits<4> s2;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1;
    let Inst{15-12} = s2;
}


//===----------------------------------------------------------------------===//
// 16-bit SSRO Instruction Format: <off4|s1|opc1>
//===----------------------------------------------------------------------===//
class SSRO<bits<8> opc1, dag outs, dag ins, string mnemonic, string operands,
          list<dag> pattern = []>
    : T16<SSROFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1;
    bits<4> off4;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1;
    let Inst{15-12} = off4;
}


//===----------------------------------------------------------------------===//
// 32-bit ABS Instruction Format:
// <off18[9:6]|opc2|off18[13:10]|off18[5:0]|off18[17:14]|s1_d|opc1>
//===----------------------------------------------------------------------===//
class ABS<bits<8> opc1, bits<2> opc2, dag outs, dag ins, string mnemonic,
         string operands, list<dag> pattern = []>
    : T32<ABSFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4>  s1_d;
    bits<18> off18;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1_d;
    let Inst{15-12} = off18{17-14};
    let Inst{21-16} = off18{5-0};
    let Inst{25-22} = off18{13-10};
    let Inst{27-26} = opc2;
    let Inst{31-28} = off18{9-6};
}


//===----------------------------------------------------------------------===//
// 32-bit ABSB Instruction Format:
// <off18[9:6]|opc2|off18[13:10]|off18[5:0]|off18[17:14]|b|bpos3|opc1>
//===----------------------------------------------------------------------===//
class ABSB<bits<8> opc1, bits<2> opc2, dag outs, dag ins, string mnemonic,
          string operands, list<dag> pattern = []>
    : T32<ABSBFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<3>  bpos3;
    bit      b;
    bits<18> off18;

    let Inst{7-0}   = opc1;
    let Inst{10-8}  = bpos3;
    let Inst{11}    = b;
    let Inst{15-12} = off18{17-14};
    let Inst{21-16} = off18{5-0};
    let Inst{25-22} = off18{13-10};
    let Inst{27-26} = opc2;
    let Inst{31-28} = off18{9-6};
}


//===----------------------------------------------------------------------===//
// 32-bit B Instruction Format: <disp24[15:0]|disp24[23:16]|opc1>
//===----------------------------------------------------------------------===//
class B<bits<8> opc1, dag outs, dag ins, string mnemonic, string operands,
          list<dag> pattern = []>
    : T32<BFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<24> disp24;

    let Inst{7-0}   = opc1;
    let Inst{15-8}  = disp24{23-16};
    let Inst{31-16} = disp24{15-0};
}


//===----------------------------------------------------------------------===//
// 32-bit BIT Instruction Format: <d|pos2|opc2|pos1|s2|s1|opc1>
//===----------------------------------------------------------------------===//
class BIT<bits<8> opc1, bits<2> opc2, dag outs, dag ins, string mnemonic,
         string operands, list<dag> pattern = []>
    : T32<BITFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1;
    bits<4> s2;
    bits<5> pos1;
    bits<5> pos2;
    bits<4> d;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1;
    let Inst{15-12} = s2;
    let Inst{20-16} = pos1;
    let Inst{22-21} = opc2;
    let Inst{27-23} = pos2;
    let Inst{31-28} = d;
}


//===----------------------------------------------------------------------===//
// 32-bit BO Instruction Format: <off10[9:6]|opc2|off10[5:0]|s1_d|s1|opc1>
//===----------------------------------------------------------------------===//
class BO<bits<8> opc1, bits<6> opc2, dag outs, dag ins, string mnemonic,
        string operands, list<dag> pattern = []>
    : T32<BOFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4>  s1_d;
    bits<4>  s2;
    bits<10> off10;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1_d;
    let Inst{15-12} = s2;
    let Inst{21-16} = off10{5-0};
    let Inst{27-22} = opc2;
    let Inst{31-28} = off10{9-6};
}


//===----------------------------------------------------------------------===//
// 32-bit BOL Instruction Format:
// <off16[9:6]|off16[15:10]|off16[5:0]|s2|s1_d|opc1>
//===----------------------------------------------------------------------===//
class BOL<bits<8> opc1, dag outs, dag ins, string mnemonic, string operands,
          list<dag> pattern = []>
    : T32<BOLFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4>  s1_d;
    bits<4>  s2;
    bits<16> off16;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1_d;
    let Inst{15-12} = s2;
    let Inst{21-16} = off16{5-0};
    let Inst{27-22} = off16{15-10};
    let Inst{31-28} = off16{9-6};
}


//===----------------------------------------------------------------------===//
// 32-bit BRC Instruction Format: <opc2|disp15|const4|s1|opc1>
//===----------------------------------------------------------------------===//
class BRC<bits<8> opc1, bit opc2, dag outs, dag ins, string mnemonic,
        string operands, list<dag> pattern = []>
    : T32<BRCFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4>  s1;
    bits<4>  const4;
    bits<15> disp15;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1;
    let Inst{15-12} = const4;
    let Inst{30-16} = disp15;
    let Inst{31}    = opc2;
}


//===----------------------------------------------------------------------===//
// 32-bit BRN Instruction Format: <opc2|disp15|n[3:0]|s1|n[4]|opc1>
//===----------------------------------------------------------------------===//
class BRN<bits<7> opc1, bit opc2, dag outs, dag ins, string mnemonic,
         string operands, list<dag> pattern = []>
    : T32<BRNFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<5>  n;
    bits<4>  s1;
    bits<15> disp15;

    let Inst{6-0}   = opc1;
    let Inst{7}     = n{4};
    let Inst{11-8}  = s1;
    let Inst{15-12} = n{3-0};
    let Inst{30-16} = disp15;
    let Inst{31}    = opc2;
}


//===----------------------------------------------------------------------===//
// 32-bit BRR Instruction Format: <opc2|disp15|s2|s1|opc1>
//===----------------------------------------------------------------------===//
class BRR<bits<8> opc1, bit opc2, dag outs, dag ins, string mnemonic,
         string operands, list<dag> pattern = []>
    : T32<BRRFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4>  s1;
    bits<4>  s2;
    bits<15> disp15;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1;
    let Inst{15-12} = s2;
    let Inst{30-16} = disp15;
    let Inst{31}    = opc2;
}


//===----------------------------------------------------------------------===//
// 32-bit RC Instruction Format: <d|opc2|const9|s1|opc1>
//===----------------------------------------------------------------------===//
class RC<bits<8> opc1, bits<7> opc2, dag outs, dag ins, string mnemonic,
        string operands, list<dag> pattern = []>
    : T32<RCFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1;
    bits<9> const9;
    bits<4> d;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1;
    let Inst{20-12} = const9;
    let Inst{27-21} = opc2;
    let Inst{31-28} = d;
}


//===----------------------------------------------------------------------===//
// 32-bit RCPW Instruction Format: <opc1|s1|const4|width|opc2|pos|d>
//===----------------------------------------------------------------------===//
class RCPW<bits<8> opc1, bits<2> opc2, dag outs, dag ins, string mnemonic,
          string operands, list<dag> pattern = []>
    : T32<RCPWFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1;
	bits<4> const4;
	bits<4> d;
	bits<5> width;
	bits<5> pos;
	
	let Inst{7-0}   = opc1;
	let Inst{11-8}  = s1;
	let Inst{15-12} = const4;
	let Inst{20-16} = width;
	let Inst{22-21} = opc2;
	let Inst{27-23} = pos;
	let Inst{31-28} = d;
}


//===----------------------------------------------------------------------===//
// 32-bit RCR Instruction Format: <d|s3|opc2|const9|s1|opc1>
//===----------------------------------------------------------------------===//
class RCR<bits<8> opc1, bits<3> opc2, dag outs, dag ins, string mnemonic,
         string operands, list<dag> pattern = []>
    : T32<RCRFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1;
    bits<9> const9;
    bits<4> s3;
    bits<4> d;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1;
    let Inst{20-12} = const9;
    let Inst{23-21} = opc2;
    let Inst{27-24} = s3;
    let Inst{31-28} = d;
}


//===----------------------------------------------------------------------===//
// 32-bit RCRR Instruction Format: <d|s3|opc2|-|const4|s1|opc1>
//===----------------------------------------------------------------------===//
class RCRR<bits<8> opc1, bits<3> opc2, dag outs, dag ins, string mnemonic,
          string operands, list<dag> pattern = []>
    : T32<RCRRFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1;
    bits<4> const4;
    bits<4> s3;
    bits<4> d;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1;
    let Inst{15-12} = const4;
    let Inst{20-16} = 0;
    let Inst{23-21} = opc2;
    let Inst{27-24} = s3;
    let Inst{31-28} = d;
}


//===----------------------------------------------------------------------===//
// 32-bit RCRW Instruction Format: <d|s3|opc2|width|const4|s1|opc1>
//===----------------------------------------------------------------------===//
class RCRW<bits<8> opc1, bits<3> opc2, dag outs, dag ins, string mnemonic,
          string operands, list<dag> pattern = []>
    : T32<RCRWFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1;
    bits<4> const4;
    bits<5> width;
    bits<4> s3;
    bits<4> d;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1;
    let Inst{15-12} = const4;
    let Inst{20-16} = width;
    let Inst{23-21} = opc2;
    let Inst{27-24} = s3;
    let Inst{31-28} = d;
}


//===----------------------------------------------------------------------===//
// 32-bit RLC Instruction Format: <d|const16|s1|opc1>
//===----------------------------------------------------------------------===//
class RLC<bits<8> opc1, dag outs, dag ins, string mnemonic, string operands,
          list<dag> pattern = []>
    : T32<RLCFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4>  s1;
    bits<16> const16;
    bits<4>  d;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1;
    let Inst{27-12} = const16;
    let Inst{31-28} = d;
}


//===----------------------------------------------------------------------===//
// 32-bit RR Instruction Format: <d|opc2|-|n|s2|s1|opc1>
//===----------------------------------------------------------------------===//
class RR<bits<8> opc1, bits<8> opc2, dag outs, dag ins, string mnemonic,
        string operands, list<dag> pattern = []>
    : T32<RRFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1;
    bits<4> s2;
    bits<2> n;
    bits<4> d;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1;
    let Inst{15-12} = s2;
    let Inst{17-16} = n;
    let Inst{19-18} = 0;
    let Inst{27-20} = opc2;
    let Inst{31-28} = d;
}


//===----------------------------------------------------------------------===//
// 32-bit RR1 Instruction Format: <d|opc2|n|s2|s1|opc1>
//===----------------------------------------------------------------------===//
class RR1<bits<8> opc1, bits<10> opc2, dag outs, dag ins, string mnemonic,
         string operands, list<dag> pattern = []>
    : T32<RR1Frm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1;
    bits<4> s2;
    bits<2> n;
    bits<4> d;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1;
    let Inst{15-12} = s2;
    let Inst{17-16} = n;
    let Inst{27-18} = opc2;
    let Inst{31-28} = d;
}


//===----------------------------------------------------------------------===//
// 32-bit RR2 Instruction Format: <d|opc2|s2|s1|opc1>
//===----------------------------------------------------------------------===//
class RR2<bits<8> opc1, bits<12> opc2, dag outs, dag ins, string mnemonic,
         string operands, list<dag> pattern = []>
    : T32<RR2Frm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1;
    bits<4> s2;
    bits<4> d;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1;
    let Inst{15-12} = s2;
    let Inst{27-16} = opc2;
    let Inst{31-28} = d;
}


//===----------------------------------------------------------------------===//
// 32-bit RRPW Instruction Format: <d|pos|opc2|width|s2|s1|opc1>
//===----------------------------------------------------------------------===//
class RRPW<bits<8> opc1, bits<2> opc2, dag outs, dag ins, string mnemonic,
          string operands, list<dag> pattern = []>
    : T32<RRPWFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1;
	bits<4> s2;
	bits<5> width;
	bits<5> pos;
	bits<4> d;
	
	let Inst{7-0}   = opc1;
	let Inst{11-8}  = s1;
	let Inst{15-12} = s2;
	let Inst{20-16} = width;
	let Inst{22-21} = opc2;
	let Inst{27-23} = pos;
	let Inst{31-28} = d;
}


//===----------------------------------------------------------------------===//
// 32-bit RRR Instruction Format: <d|s3|opc2|-|n|s2|s1|opc1>
//===----------------------------------------------------------------------===//
class RRR<bits<8> opc1, bits<4> opc2, dag outs, dag ins, string mnemonic,
         string operands, list<dag> pattern = []>
    : T32<RRRFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1;
    bits<4> s2;
    bits<2> n;
    bits<4> s3;
    bits<4> d;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1;
    let Inst{15-12} = s2;
    let Inst{17-16} = n;
    let Inst{19-18} = 0;
    let Inst{23-20} = opc2;
    let Inst{27-24} = s3;
    let Inst{31-28} = d;
}


//===----------------------------------------------------------------------===//
// 32-bit RRR1 Instruction Format: <d|s3|opc2|n|s2|s1|opc1>
//===----------------------------------------------------------------------===//
class RRR1<bits<8> opc1, bits<6> opc2, dag outs, dag ins, string mnemonic,
          string operands, list<dag> pattern = []>
    : T32<RRR1Frm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1;
    bits<4> s2;
    bits<2> n;
    bits<4> s3;
    bits<4> d;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1;
    let Inst{15-12} = s2;
    let Inst{17-16} = n;
    let Inst{23-18} = opc2;
    let Inst{27-24} = s3;
    let Inst{31-28} = d;
}


//===----------------------------------------------------------------------===//
// 32-bit RRR2 Instruction Format: <d|s3|opc2|s2|s1|opc1>
//===----------------------------------------------------------------------===//
class RRR2<bits<8> opc1, bits<8> opc2, dag outs, dag ins, string mnemonic,
          string operands, list<dag> pattern = []>
    : T32<RRR2Frm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1;
    bits<4> s2;
    bits<4> s3;
    bits<4> d;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1;
    let Inst{15-12} = s2;
    let Inst{23-16} = opc2;
    let Inst{27-24} = s3;
    let Inst{31-28} = d;
}


//===----------------------------------------------------------------------===//
// 32-bit RRRR Instruction Format: <d|s3|opc2|-|s2|s1|opc1>
//===----------------------------------------------------------------------===//
class RRRR<bits<8> opc1, bits<3> opc2, dag outs, dag ins, string mnemonic,
          string operands, list<dag> pattern = []>
    : T32<RRRRFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1;
    bits<4> s2;
    bits<4> s3;
    bits<4> d;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1;
    let Inst{15-12} = s2;
    let Inst{20-16} = 0;
    let Inst{23-21} = opc2;
    let Inst{27-24} = s3;
    let Inst{31-28} = d;
}


//===----------------------------------------------------------------------===//
// 32-bit RRRW Instruction Format: <d|s3|opc2|width|s2|s1|opc1>
//===----------------------------------------------------------------------===//
class RRRW<bits<8> opc1, bits<3> opc2, dag outs, dag ins, string mnemonic,
          string operands, list<dag> pattern = []>
    : T32<RRRWFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1;
    bits<4> s2;
    bits<5> width;
    bits<4> s3;
    bits<4> d;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1;
    let Inst{15-12} = s2;
    let Inst{20-16} = width;
    let Inst{23-21} = opc2;
    let Inst{27-24} = s3;
    let Inst{31-28} = d;
}


//===----------------------------------------------------------------------===//
// 32-bit SYS Instruction Format: <-|opc2|-|s1_d|opc1>
//===----------------------------------------------------------------------===//
class SYS<bits<8> opc1, bits<6> opc2, dag outs, dag ins, string mnemonic,
         string operands, list<dag> pattern = []>
    : T32<SYSFrm, outs, ins, mnemonic, operands, pattern>
{
    bits<4> s1_d;

    let Inst{7-0}   = opc1;
    let Inst{11-8}  = s1_d;
    let Inst{21-12} = 0;
    let Inst{27-22} = opc2;
    let Inst{31-28} = 0;
}
