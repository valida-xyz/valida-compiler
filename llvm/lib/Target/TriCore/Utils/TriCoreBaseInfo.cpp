//===-- TriCoreBaseInfo.cpp - TriCore Target Implementation ---------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "TriCoreBaseInfo.h"
#include "llvm/ADT/ArrayRef.h"

namespace llvm {
namespace TriCoreSysReg {
#define GET_SYSREG_IMPL
#include "TriCoreGenSystemOperands.inc"
} // namespace TriCoreSysReg
} // namespace llvm
