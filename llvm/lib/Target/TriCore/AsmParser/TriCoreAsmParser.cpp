//==- TriCoreAsmParser.cpp - Parse TriCore assembly to MCInst instructions -==//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "InstPrinter/TriCoreInstPrinter.h"
#include "MCTargetDesc/TriCoreMCTargetDesc.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/ADT/StringSwitch.h"
#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCExpr.h"
#include "llvm/MC/MCInst.h"
#include "llvm/MC/MCParser/MCAsmLexer.h"
#include "llvm/MC/MCParser/MCParsedAsmOperand.h"
#include "llvm/MC/MCParser/MCTargetAsmParser.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/Support/Casting.h"
#include "llvm/Support/TargetRegistry.h"

using namespace llvm;

namespace {
struct TriCoreOperand;

class TriCoreAsmParser : public MCTargetAsmParser {
  SMLoc getLoc() const { return getParser().getTok().getLoc(); }

  bool generateImmOutOfRangeError(OperandVector &Operands, uint64_t ErrorInfo,
                                  int64_t Lower, int64_t Upper, Twine Msg);

  bool MatchAndEmitInstruction(SMLoc IDLoc, unsigned &Opcode,
                               OperandVector &Operands, MCStreamer &Out,
                               uint64_t &ErrorInfo,
                               bool MatchingInlineAsm) override;

  bool ParseRegister(unsigned &RegNo, SMLoc &StartLoc, SMLoc &EndLoc) override;

  bool ParseInstruction(ParseInstructionInfo &Info, StringRef Name,
                        SMLoc NameLoc, OperandVector &Operands) override;

  bool ParseDirective(AsmToken DirectiveID) override;

// Auto-generated instruction matching functions
#define GET_ASSEMBLER_HEADER
#include "TriCoreGenAsmMatcher.inc"

  OperandMatchResultTy parseImmediate(OperandVector &Operands);
  OperandMatchResultTy parseRegister(OperandVector &Operands);

  bool parseOperand(OperandVector &Operands);

  void setFeatureBits(uint64_t Feature, StringRef FeatureString) {
    if (!(getSTI().getFeatureBits()[Feature])) {
      MCSubtargetInfo &STI = copySTI();
      setAvailableFeatures(
          ComputeAvailableFeatures(STI.ToggleFeature(FeatureString)));
    }
  }

  void clearFeatureBits(uint64_t Feature, StringRef FeatureString) {
    if (getSTI().getFeatureBits()[Feature]) {
      MCSubtargetInfo &STI = copySTI();
      setAvailableFeatures(
          ComputeAvailableFeatures(STI.ToggleFeature(FeatureString)));
    }
  }

public:
  enum TriCoreMatchResultTy {
    Match_Dummy = FIRST_TARGET_MATCH_RESULT_TY,
#define GET_OPERAND_DIAGNOSTIC_TYPES
#include "TriCoreGenAsmMatcher.inc"
#undef GET_OPERAND_DIAGNOSTIC_TYPES
  };

  TriCoreAsmParser(const MCSubtargetInfo &STI, MCAsmParser &Parser,
                   const MCInstrInfo &MII, const MCTargetOptions &Options)
      : MCTargetAsmParser(Options, STI, MII) {
    setAvailableFeatures(ComputeAvailableFeatures(STI.getFeatureBits()));
  }
};

/// TriCoreOperand - Instances of this class represent a parsed machine
/// instruction
struct TriCoreOperand : public MCParsedAsmOperand {

  enum KindTy {
    Token,
    Register,
    Immediate,
  } Kind;

  struct RegOp {
    unsigned RegNum;
  };

  struct ImmOp {
    const MCExpr *Val;
  };

  SMLoc StartLoc, EndLoc;
  union {
    StringRef Tok;
    RegOp Reg;
    ImmOp Imm;
  };

  TriCoreOperand(KindTy K) : MCParsedAsmOperand(), Kind(K) {}

public:
  TriCoreOperand(const TriCoreOperand &o) : MCParsedAsmOperand() {
    Kind = o.Kind;
    StartLoc = o.StartLoc;
    EndLoc = o.EndLoc;
    switch (Kind) {
    case Register:
      Reg = o.Reg;
      break;
    case Immediate:
      Imm = o.Imm;
      break;
    case Token:
      Tok = o.Tok;
      break;
    }
  }

  bool isToken() const override { return Kind == Token; }
  bool isReg() const override { return Kind == Register; }
  bool isImm() const override { return Kind == Immediate; }
  bool isMem() const override { return false; }

  bool isConstantImm() const {
    return isImm() && dyn_cast<MCConstantExpr>(getImm());
  }

  int64_t getConstantImm() const {
    const MCExpr *Val = getImm();
    return static_cast<const MCConstantExpr *>(Val)->getValue();
  }

  template <int N> bool isSImmN() const {
    return (isConstantImm() && isInt<N>(getConstantImm()));
  }

  template <int N> bool isUImmN() const {
    return (isConstantImm() && isUInt<N>(getConstantImm()));
  }

  template <int WIDTH, int SHIFT> bool isScaledSImm() const {
    return (isConstantImm() && isShiftedInt<WIDTH, SHIFT>(getConstantImm()));
  }

  // checking against {disp24[23:20], 7'b0, disp24[19:0], 1'b0} form
  bool isDisp24Abs() const {
    if (!isConstantImm())
      return false;

    return (getConstantImm() & ~0xf01ffffe) == 0;
  }

  /// getStartLoc - Gets location of the first token of this operand
  SMLoc getStartLoc() const override { return StartLoc; }
  /// getEndLoc - Gets location of the last token of this operand
  SMLoc getEndLoc() const override { return EndLoc; }

  unsigned getReg() const override {
    assert(Kind == Register && "Invalid type access!");
    return Reg.RegNum;
  }

  const MCExpr *getImm() const {
    assert(Kind == Immediate && "Invalid type access!");
    return Imm.Val;
  }

  StringRef getToken() const {
    assert(Kind == Token && "Invalid type access!");
    return Tok;
  }

  void print(raw_ostream &OS) const override {
    switch (Kind) {
    case Immediate:
      OS << *getImm();
      break;
    case Register:
      OS << "<register " << llvm::TriCoreInstPrinter::getRegisterName(getReg())
         << ">";
      break;
    case Token:
      OS << "'" << getToken() << "'";
      break;
    }
  }

  static std::unique_ptr<TriCoreOperand> createToken(StringRef Str, SMLoc S) {
    auto Op = std::make_unique<TriCoreOperand>(Token);
    Op->Tok = Str;
    Op->StartLoc = S;
    Op->EndLoc = S;
    return Op;
  }

  static std::unique_ptr<TriCoreOperand> createReg(unsigned RegNo, SMLoc S,
                                                   SMLoc E) {
    auto Op = std::make_unique<TriCoreOperand>(Register);
    Op->Reg.RegNum = RegNo;
    Op->StartLoc = S;
    Op->EndLoc = E;
    return Op;
  }

  static std::unique_ptr<TriCoreOperand> createImm(const MCExpr *Val, SMLoc S,
                                                   SMLoc E) {
    auto Op = std::make_unique<TriCoreOperand>(Immediate);
    Op->Imm.Val = Val;
    Op->StartLoc = S;
    Op->EndLoc = E;
    return Op;
  }

  void addExpr(MCInst &Inst, const MCExpr *Expr) const {
    assert(Expr && "Expr shouldn't be null!");
    if (auto *CE = dyn_cast<MCConstantExpr>(Expr))
      Inst.addOperand(MCOperand::createImm(CE->getValue()));
    else
      Inst.addOperand(MCOperand::createExpr(Expr));
  }

  // Used by the TableGen Code
  void addRegOperands(MCInst &Inst, unsigned N) const {
    assert(N == 1 && "Invalid number of operands!");
    Inst.addOperand(MCOperand::createReg(getReg()));
  }

  void addImmOperands(MCInst &Inst, unsigned N) const {
    assert(N == 1 && "Invalid number of operands!");
    addExpr(Inst, getImm());
  }
};
} // end anonymous namespace.

#define GET_REGISTER_MATCHER
#define GET_MATCHER_IMPLEMENTATION
#include "TriCoreGenAsmMatcher.inc"

bool TriCoreAsmParser::generateImmOutOfRangeError(
    OperandVector &Operands, uint64_t ErrorInfo, int64_t Lower, int64_t Upper,
    Twine Msg = "immediate must be an integer in the range") {
  SMLoc ErrorLoc = ((TriCoreOperand &)*Operands[ErrorInfo]).getStartLoc();
  return Error(ErrorLoc, Msg + " [" + Twine(Lower) + ", " + Twine(Upper) + "]");
}

bool TriCoreAsmParser::MatchAndEmitInstruction(SMLoc IDLoc, unsigned &Opcode,
                                               OperandVector &Operands,
                                               MCStreamer &Out,
                                               uint64_t &ErrorInfo,
                                               bool MatchingInlineAsm) {
  MCInst Inst;
  SMLoc ErrorLoc;

  switch (MatchInstructionImpl(Operands, Inst, ErrorInfo, MatchingInlineAsm)) {
  default:
    break;
  case Match_Success:
    Inst.setLoc(IDLoc);
    Out.EmitInstruction(Inst, getSTI());
    if (!(getSTI().getFeatureBits()[TriCore::Only32BitInstructions])) {
      setFeatureBits(TriCore::Allow16BitInstructions, "allow-16bit");
      setFeatureBits(TriCore::Allow32BitInstructions, "allow-32bit");
    }
    return false;
  case Match_MissingFeature:
    return Error(IDLoc, "instruction use requires an option to be enabled");
  case Match_MnemonicFail:
    return Error(IDLoc, "unrecognized instruction mnemonic");
  case Match_InvalidOperand:
    ErrorLoc = IDLoc;
    if (ErrorInfo != ~0U) {
      if (ErrorInfo >= Operands.size())
        return Error(ErrorLoc, "too few operands for instruction");

      ErrorLoc = ((TriCoreOperand &)*Operands[ErrorInfo]).getStartLoc();
      if (ErrorLoc == SMLoc())
        ErrorLoc = IDLoc;
    }
    return Error(ErrorLoc, "invalid operand for instruction");
  case Match_InvalidSImm4:
    return generateImmOutOfRangeError(Operands, ErrorInfo, -(1 << 3),
                                      (1 << 3) - 1);
  case Match_InvalidUImm8:
    return generateImmOutOfRangeError(Operands, ErrorInfo, 0, (1 << 8) - 1);
  case Match_InvalidSImm16:
    return generateImmOutOfRangeError(Operands, ErrorInfo, -(1 << 15),
                                      (1 << 15) - 1);
  case Match_InvalidUImm16:
    return generateImmOutOfRangeError(Operands, ErrorInfo, 0, (1 << 16) - 1);
  case Match_InvalidSImm8_Lsb1:
    return generateImmOutOfRangeError(Operands, ErrorInfo, -(1 << 8),
                                      (1 << 8) - 2),
           "value must be even integer and in the range";
  case Match_InvalidSImm24_Lsb1:
    return generateImmOutOfRangeError(Operands, ErrorInfo, -(1 << 24),
                                      (1 << 24) - 2),
           "value must be even integer and in the range";
  case Match_InvalidDisp24Abs:
    ErrorLoc = ((TriCoreOperand &)*Operands[ErrorInfo]).getStartLoc();
    return Error(ErrorLoc,
                 "value must be a 32 bit address & bit 27-21, 0 must be 0");
  }

  llvm_unreachable("Unknown match type detected!");
}

bool TriCoreAsmParser::ParseRegister(unsigned &RegNo, SMLoc &StartLoc,
                                     SMLoc &EndLoc) {
  const AsmToken &Tok = getParser().getTok();
  StartLoc = Tok.getLoc();
  EndLoc = Tok.getEndLoc();
  RegNo = 0;
  StringRef Name = getLexer().getTok().getIdentifier();

  RegNo = MatchRegisterName(Name);
  if (RegNo == 0)
    RegNo = MatchRegisterAltName(Name);
  if (RegNo == 0)
    return Error(StartLoc, "invalid register name");

  getParser().Lex(); // Eat identifier token.
  return false;
}

OperandMatchResultTy TriCoreAsmParser::parseRegister(OperandVector &Operands) {
  SMLoc S = getLoc();
  SMLoc E = SMLoc::getFromPointer(S.getPointer() - 1);

  switch (getLexer().getKind()) {
  default:
    return MatchOperand_NoMatch;
  case AsmToken::Percent:
  case AsmToken::Identifier:
    if (getLexer().is(AsmToken::Percent))
      getLexer().Lex();
    else
      return MatchOperand_NoMatch;

    StringRef Name = getLexer().getTok().getIdentifier();
    unsigned RegNo = MatchRegisterName(Name);
    if (RegNo == 0) {
      RegNo = MatchRegisterAltName(Name);
      if (RegNo == 0)
        return MatchOperand_NoMatch;
    }
    getLexer().Lex();
    Operands.push_back(TriCoreOperand::createReg(RegNo, S, E));
  }
  return MatchOperand_Success;
}

OperandMatchResultTy TriCoreAsmParser::parseImmediate(OperandVector &Operands) {
  switch (getLexer().getKind()) {
  default:
    return MatchOperand_NoMatch;
  case AsmToken::LParen:
  case AsmToken::Minus:
  case AsmToken::Plus:
  case AsmToken::Integer:
  case AsmToken::String:
    break;
  }

  const MCExpr *IdVal;
  SMLoc S = getLoc();
  if (getParser().parseExpression(IdVal))
    return MatchOperand_ParseFail;

  SMLoc E = SMLoc::getFromPointer(S.getPointer() - 1);
  Operands.push_back(TriCoreOperand::createImm(IdVal, S, E));
  return MatchOperand_Success;
}

/// Looks at a token type and creates the relevant operand
/// from this information, adding to Operands.
/// If operand was parsed, returns false, else true.
bool TriCoreAsmParser::parseOperand(OperandVector &Operands) {
  // Attempt to parse token as register
  if (parseRegister(Operands) == MatchOperand_Success)
    return false;

  // Attempt to parse token as an immediate
  if (parseImmediate(Operands) == MatchOperand_Success)
    return false;

  // Finally we have exhausted all options and must declare defeat.
  Error(getLoc(), "unknown operand");
  return true;
}

bool TriCoreAsmParser::ParseInstruction(ParseInstructionInfo &Info,
                                        StringRef Name, SMLoc NameLoc,
                                        OperandVector &Operands) {
  // First operand is token for instruction
  Operands.push_back(TriCoreOperand::createToken(Name, NameLoc));

  // If there are no more operands, then finish
  if (getLexer().is(AsmToken::EndOfStatement))
    return false;

  // Parse first operand
  if (parseOperand(Operands))
    return true;

  // Parse until end of statement, consuming commas between operands
  while (getLexer().is(AsmToken::Comma)) {
    // Consume comma token
    getLexer().Lex();

    // Parse next operand
    if (parseOperand(Operands))
      return true;
  }

  if (getLexer().isNot(AsmToken::EndOfStatement)) {
    SMLoc Loc = getLexer().getLoc();
    getParser().eatToEndOfStatement();
    return Error(Loc, "unexpected token");
  }

  getParser().Lex(); // Consume the EndOfStatement.
  return false;
}

// Returns false on succes
bool TriCoreAsmParser::ParseDirective(AsmToken DirectiveID) {
  StringRef IDVal = DirectiveID.getIdentifier();
  if (IDVal == ".code16") {
    if (!(getSTI().getFeatureBits()[TriCore::Only32BitInstructions]))
      clearFeatureBits(TriCore::Allow32BitInstructions, "allow-32bit");
    getParser().getStreamer().EmitAssemblerFlag(MCAF_Code16);
    return false;
  }
  if (IDVal == ".code32") {
    clearFeatureBits(TriCore::Allow16BitInstructions, "allow-16bit");
    getParser().getStreamer().EmitAssemblerFlag(MCAF_Code32);
    return false;
  }
  return true;
}

extern "C" void LLVMInitializeTriCoreAsmParser() {
  RegisterMCAsmParser<TriCoreAsmParser> X(getTheTriCoreTarget());
}