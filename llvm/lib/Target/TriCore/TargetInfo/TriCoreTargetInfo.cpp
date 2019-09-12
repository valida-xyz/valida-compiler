//===-- TriCoreTargetInfo.cpp - TriCore Target Implementation -------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#include "llvm/Support/TargetRegistry.h"

using namespace llvm;

namespace llvm {
Target &getTheTriCoreTarget() {
  static Target TheTriCoreTarget;
  return TheTriCoreTarget;
}
} // namespace llvm

extern "C" void LLVMInitializeTriCoreTargetInfo() {
  RegisterTarget<Triple::tricore> X(getTheTriCoreTarget(), "tricore",
                                    "Infineon TriCore", "TriCore");
}
