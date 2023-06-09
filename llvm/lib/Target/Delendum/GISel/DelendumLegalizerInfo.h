//===-- DelendumLegalizerInfo ---------------------------------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
/// \file
/// This file declares the targeting of the MachineLegalizer class for
/// Delendum.
/// \todo This should be generated by TableGen.
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_DELENDUM_GLSEL_DELENDUMLEGALIZERINFO_H
#define LLVM_LIB_TARGET_DELENDUM_GLSEL_DELENDUMLEGALIZERINFO_H

#include "llvm/CodeGen/GlobalISel/LegalizerInfo.h"

namespace llvm {

class DelendumSubtarget;

/// This struct provides the information for the target register banks.
struct DelendumLegalizerInfo : public LegalizerInfo {
public:
  DelendumLegalizerInfo(const DelendumSubtarget &ST);

  bool legalizeCustom(LegalizerHelper &Helper, MachineInstr &MI) const override;
};
} // end namespace llvm
#endif // LLVM_LIB_TARGET_DELENDUM_GLSEL_DELENDUMLEGALIZERINFO_H
