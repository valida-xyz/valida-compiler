//===-- DelendumAsmParser.cpp - Parse assembly to MCInst instructions -----===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "DelendumInstrInfo.h"
#include "MCTargetDesc/DelendumMCTargetDesc.h"
#include "TargetInfo/DelendumTargetInfo.h"

#include "llvm/MC/MCContext.h"
#include "llvm/MC/MCParser/MCAsmLexer.h"
#include "llvm/MC/MCParser/MCParsedAsmOperand.h"
#include "llvm/MC/MCParser/MCTargetAsmParser.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/TargetRegistry.h"

#include <sstream>

#define DEBUG_TYPE "delendum-asm-parser"

using namespace llvm;

namespace {

class DelendumAsmParser : public MCTargetAsmParser {

#define GET_ASSEMBLER_HEADER
#include "DelendumGenAsmMatcher.inc"

public:
  DelendumAsmParser(const MCSubtargetInfo &STI, MCAsmParser &Parser,
                    const MCInstrInfo &MII, const MCTargetOptions &Options)
      : MCTargetAsmParser(Options, STI, MII) {
    // TODO
  }

  unsigned validateTargetOperandClass(MCParsedAsmOperand &Op,
                                      unsigned Kind) override;
  bool parseRegister(MCRegister &RegNo, SMLoc &StartLoc,
                     SMLoc &EndLoc) override;
  OperandMatchResultTy tryParseRegister(MCRegister &RegNo, SMLoc &StartLoc,
                                        SMLoc &EndLoc) override;
  bool ParseInstruction(ParseInstructionInfo &Info, StringRef Name,
                        SMLoc NameLoc, OperandVector &Operands) override;
  bool ParseDirective(AsmToken DirectiveID) override;
  bool MatchAndEmitInstruction(SMLoc IDLoc, unsigned &Opcode,
                               OperandVector &Operands, MCStreamer &Out,
                               uint64_t &ErrorInfo,
                               bool MatchingInlineAsm) override;
};

unsigned DelendumAsmParser::validateTargetOperandClass(MCParsedAsmOperand &Op,
                                                       unsigned Kind) {
  // TODO
}

bool DelendumAsmParser::parseRegister(MCRegister &RegNo, SMLoc &StartLoc,
                                      SMLoc &EndLoc) {
  // TODO
}

OperandMatchResultTy DelendumAsmParser::tryParseRegister(MCRegister &RegNo, 
                                                         SMLoc &StartLoc,
                                                         SMLoc &EndLoc) {
  // TODO
}

bool DelendumAsmParser::ParseInstruction(ParseInstructionInfo &Info, StringRef Name,
                      SMLoc NameLoc, OperandVector &Operands) {
  // TODO
}

bool DelendumAsmParser::ParseDirective(AsmToken DirectiveID) {
  // TODO
}

bool DelendumAsmParser::MatchAndEmitInstruction(SMLoc IDLoc, unsigned &Opcode,
                             OperandVector &Operands, MCStreamer &Out,
                             uint64_t &ErrorInfo,
                             bool MatchingInlineAsm) {
  // TODO
}

class DelendumOperand : public MCParsedAsmOperand {
  StringRef Token;
public:
  void addRegOperands(MCInst &Inst, unsigned N) const;
  void addImmOperands(MCInst &Inst, unsigned N) const;

  StringRef getToken() const;
};

} // end anonymous namespace.

void DelendumOperand::addRegOperands(MCInst &Inst, unsigned N) const {
  // TODO
}

void DelendumOperand::addImmOperands(MCInst &Inst, unsigned N) const {
  // TODO
}

StringRef DelendumOperand::getToken() const {
  assert(isToken());
  return Token;
}

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeDelendumAsmParser() {
  RegisterMCAsmParser<DelendumAsmParser> X(getTheDelendumTarget());
}

#define GET_MATCHER_IMPLEMENTATION
#include "DelendumGenAsmMatcher.inc"
