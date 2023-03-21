//===-- DelendumTargetInfo.cpp - Delendum Target Implementation ---------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
///
/// \file
/// This file contains Delendum target initializer.
///
//===----------------------------------------------------------------------===//
#include "llvm/MC/TargetRegistry.h"

using namespace llvm;

namespace llvm {
Target &getTheDelendumTarget() {
  static Target TheDelendumTarget;
  return TheDelendumTarget;
}
} // namespace llvm

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeDelendumTargetInfo() {
  RegisterTarget<Triple::delendum, /*HasJIT=*/false>
    X(getTheDelendumTarget(), "delendum", "Delendum", "Delendum");
}
