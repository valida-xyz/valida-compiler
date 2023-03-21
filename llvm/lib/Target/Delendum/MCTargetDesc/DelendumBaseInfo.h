//===-- DelendumBaseInfo.h - Top level definitions for DELENDUM MC ------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file contains small standalone helper functions and enum definitions for
// the Delendum target useful for the compiler back-end and the MC libraries.
//
//===----------------------------------------------------------------------===//
#ifndef DELENDUMBASEINFO_H
#define DELENDUMBASEINFO_H

#include "DelendumMCTargetDesc.h"

#include "llvm/MC/MCExpr.h"
#include "llvm/Support/DataTypes.h"
#include "llvm/Support/ErrorHandling.h"

#define GET_INSTRINFO_MI_OPS_INFO
#define GET_INSTRINFO_OPERAND_TYPES_ENUM
#define GET_INSTRINFO_LOGICAL_OPERAND_SIZE_MAP
#include "DelendumGenInstrInfo.inc"

namespace llvm {

/// DelendumII - This namespace holds all of the target specific flags that
/// instruction info tracks.
namespace DelendumII {
  // TODO
}

}

#endif
