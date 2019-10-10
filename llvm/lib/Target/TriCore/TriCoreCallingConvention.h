//=== TriCoreCallingConvention.h - TriCore CC entry points ------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file declares the entry points for TriCore calling convention analysis.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_TRICORE_TRICORECALLINGCONVENTION_H
#define LLVM_LIB_TARGET_TRICORE_TRICORECALLINGCONVENTION_H

#include "llvm/CodeGen/CallingConvLower.h"

namespace llvm {
bool CC_TriCore(unsigned ValNo, MVT ValVT, MVT LocVT,
                CCValAssign::LocInfo LocInfo, ISD::ArgFlagsTy ArgFlags,
                CCState &State);

bool CC_TriCore_VarArg(unsigned ValNo, MVT ValVT, MVT LocVT,
                       CCValAssign::LocInfo LocInfo, ISD::ArgFlagsTy ArgFlags,
                       CCState &State);

bool RetCC_TriCore(unsigned ValNo, MVT ValVT, MVT LocVT,
                   CCValAssign::LocInfo LocInfo, ISD::ArgFlagsTy ArgFlags,
                   CCState &State);
} // namespace llvm

#endif
