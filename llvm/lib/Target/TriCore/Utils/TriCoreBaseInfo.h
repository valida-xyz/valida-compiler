//===- TriCoreBaseInfo.h - Top level definitions for TriCore MC -*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains small standalone enum definitions for the TriCore target
// useful for the compiler back-end and the MC libraries.
//
//===----------------------------------------------------------------------===//
#ifndef LLVM_LIB_TARGET_TRICORE_MCTARGETDESC_TRICOREBASEINFO_H
#define LLVM_LIB_TARGET_TRICORE_MCTARGETDESC_TRICOREBASEINFO_H

#include "llvm/MC/MCInstrDesc.h"
#include "llvm/MC/SubtargetFeature.h"

namespace llvm {

// TriCoreII - This namespace holds all of the target specific flags that
// instruction info tracks. All definitions must match TriCoreInstrFormats.td.
namespace TriCoreII {
enum {
  Pseudo = 0,
  SBFrm = 1,
  SBCFrm = 2,
  SBRFrm = 3,
  SBRNFrm = 4,
  SCFrm = 5,
  SLRFrm = 6,
  SLROFrm = 7,
  SRFrm = 8,
  SRCFrm = 9,
  SROFrm = 10,
  SRRFrm = 11,
  SRRSFrm = 12,
  SSRFrm = 13,
  SSROFrm = 14,
  ABSFrm = 15,
  ABSBFrm = 16,
  BFrm = 17,
  BITFrm = 18,
  BOFrm = 19,
  BOLFrm = 20,
  BRCFrm = 21,
  BRNFrm = 22,
  BRRFrm = 23,
  RCFrm = 24,
  RCPWFrm = 25,
  RCRFrm = 26,
  RCRRFrm = 27,
  RCRWFrm = 28,
  RLCFrm = 29,
  RRFrm = 30,
  RR1Frm = 31,
  RR2Frm = 32,
  RRPWFrm = 33,
  RRRFrm = 34,
  RRR1Frm = 35,
  RRR2Frm = 36,
  RRRRFrm = 37,
  RRRWFrm = 38,
  SYSFrm = 39,

  // the mask to apply to TSFlags
  InstrFormatMask = 0x3f
};

/// Target Operand Flag enum
enum TOF {
  //===------------------------------------------------------------------===//
  // TriCore Specific MachineOperand flags.
  MO_NO_FLAG,

  // Flags fragment that holds MO_HI to MO_LO (2-bits)
  MO_FRAGMENT = 0x3,

  /// MO_HI - A symbol operand with this flag represents the high 16-bits of a
  /// 32-bit address, used in a MOVH.A instruction
  MO_HI = 1,

  /// MO_LO - A symbol operand with this flag represents the low 16-bits of a
  /// 32-bit address, used in a LEA instruction
  MO_LO = 2,
};
} // namespace TriCoreII

namespace TriCoreSysReg {
struct SysReg {
  const char *Name;
  unsigned Encoding;
  bool Readable;
  bool Writeable;
  FeatureBitset FeaturesRequired;

  bool haveFeatures(FeatureBitset ActiveFeatures) const {
    return (FeaturesRequired & ActiveFeatures) == FeaturesRequired;
  }
};

#define GET_SYSREG_DECL
#include "TriCoreGenSystemOperands.inc"
} // namespace TriCoreSysReg

namespace TriCoreOp {
enum OperandType {
  OPERAND_FIRST_TRICORE_IMM = MCOI::OPERAND_FIRST_TARGET,
  OPERAND_UIMM1 = OPERAND_FIRST_TRICORE_IMM,
  OPERAND_UIMM2,
  OPERAND_UIMM2_L,
  OPERAND_UIMM3,
  OPERAND_SIMM4,
  OPERAND_SIMM4_1,
  OPERAND_UIMM4,
  OPERAND_UIMM4_LSB0,
  OPERAND_UIMM4_LSB00,
  OPERAND_UIMM5,
  OPERAND_SIMM8_LSB0,
  OPERAND_UIMM8,
  OPERAND_UIMM8_LSB00,
  OPERAND_SIMM9,
  OPERAND_SIMM9_SHIFT,
  OPERAND_SIMM9_SHIFT5,
  OPERAND_UIMM9,
  OPERAND_SIMM10,
  OPERAND_SIMM15_LSB0,
  OPERAND_SIMM16_BOL,
  OPERAND_SIMM16_RLC,
  OPERAND_UIMM16_RLC,
  OPERAND_SIMM24_LSB0,
  OPERAND_OFF18_ABS,
  OPERAND_OFF18_ABS_V2,
  OPERAND_DISP4_16,
  OPERAND_DISP24_ABS,
  OPERAND_SYSREG,
  OPERAND_DOUBLE_SYSREG,
  OPERAND_LAST_TRICORE_IMM = OPERAND_DOUBLE_SYSREG,
};
} // namespace TriCoreOp

} // namespace llvm
#endif
