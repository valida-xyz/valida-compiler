//===-- DelendumELFTargetObjectFile.h - Delendum Object Info ----*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
///
/// \file
/// This file contains declarations for Delendum ELF object file lowering.
///
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_DELENDUM_DELENDUMTARGETOBJECTFILE_H
#define LLVM_LIB_TARGET_DELENDUM_DELENDUMTARGETOBJECTFILE_H

#include "llvm/CodeGen/TargetLoweringObjectFileImpl.h"

namespace llvm {
class DelendumTargetMachine;
class DelendumELFTargetObjectFile : public TargetLoweringObjectFileELF {
  const DelendumTargetMachine *TM;
  MCSection *SmallDataSection;
  MCSection *SmallBSSSection;

public:
  void Initialize(MCContext &Ctx, const TargetMachine &TM) override;
};
} // end namespace llvm

#endif // LLVM_LIB_TARGET_DELENDUM_DELENDUMTARGETOBJECTFILE_H
