//===-- DelendumInstrInfo.h - Delendum Instruction Information --*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file contains the Delendum implementation of the TargetInstrInfo class.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_DELENDUM_DELENDUMINSTRINFO_H
#define LLVM_LIB_TARGET_DELENDUM_DELENDUMINSTRINFO_H

#include "Delendum.h"
#include "DelendumRegisterInfo.h"
#include "llvm/CodeGen/TargetInstrInfo.h"
#include "llvm/Support/ErrorHandling.h"

#define GET_INSTRINFO_HEADER
#include "DelendumGenInstrInfo.inc"

namespace llvm {

class DelendumInstrInfo : public DelendumGenInstrInfo {
  const DelendumRegisterInfo RI;
  const DelendumSubtarget& Subtarget;
  virtual void anchor();

public:
  explicit DelendumInstrInfo(DelendumSubtarget &ST);

  /// getRegisterInfo - TargetInstrInfo is a superset of MRegister info.  As
  /// such, whenever a client has an instance of instruction info, it should
  /// always be able to get register info as well (through this method).
  const DelendumRegisterInfo &getRegisterInfo() const { return RI; }
};
}

#endif
