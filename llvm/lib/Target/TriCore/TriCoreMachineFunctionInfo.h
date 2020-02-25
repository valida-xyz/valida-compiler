//=- TriCoreMachineFunctionInfo.h - TriCore machine function info -*- C++ -*-=//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file declares TriCore-specific per-machine-function information.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_TRICORE_TRICOREMACHINEFUNCTIONINFO_H
#define LLVM_LIB_TARGET_TRICORE_TRICOREMACHINEFUNCTIONINFO_H

#include "llvm/CodeGen/MachineFunction.h"
#include "llvm/CodeGen/MachineMemOperand.h"

namespace llvm {

/// TriCoreFunctionInfo - This class is derived from MachineFunctionInfo and
/// contains private TriCore-specific information for each MachineFunction.
class TriCoreFunctionInfo final: public MachineFunctionInfo {
public:
  TriCoreFunctionInfo() = default;

  explicit TriCoreFunctionInfo(MachineFunction &MF) {}

  int getVarArgsFrameIndex() const { return VarArgsFrameIndex; }
  void setVarArgsFrameIndex(int Index) { VarArgsFrameIndex = Index; }

private:
  /// Byte offset of the first vararg from the frame pointer
  int VarArgsFrameIndex = 0;
};

} // end namespace llvm

#endif // LLVM_LIB_TARGET_TRICORE_TRICOREMACHINEFUNCTIONINFO_H
