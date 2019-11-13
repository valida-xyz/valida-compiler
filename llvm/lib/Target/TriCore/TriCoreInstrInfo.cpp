//===-- TriCoreInstrInfo.cpp - TriCore Instruction Information --*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains the TriCore implementation of the TargetInstrInfo class.
//
//===----------------------------------------------------------------------===//

#include "TriCoreInstrInfo.h"
#include "MCTargetDesc/TriCoreBaseInfo.h"
#include "TriCore.h"
#include "TriCoreSubtarget.h"
#include "TriCoreTargetMachine.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/ADT/SmallVector.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/MachineInstrBuilder.h"
#include "llvm/CodeGen/MachineRegisterInfo.h"
#include "llvm/CodeGen/RegisterScavenging.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Support/TargetRegistry.h"

#define GET_INSTRINFO_CTOR_DTOR
#include "TriCoreGenInstrInfo.inc"

using namespace llvm;

TriCoreInstrInfo::TriCoreInstrInfo() : TriCoreGenInstrInfo() {}

std::pair<unsigned int, unsigned int>
TriCoreInstrInfo::decomposeMachineOperandsTargetFlags(unsigned int TF) const {
  const unsigned Mask = TriCoreII::MO_FRAGMENT;
  return std::make_pair(TF & Mask, TF & ~Mask);
}

ArrayRef<std::pair<unsigned int, const char *>>
TriCoreInstrInfo::getSerializableDirectMachineOperandTargetFlags() const {
  using namespace TriCoreII;

  static const std::pair<unsigned, const char *> TargetFlags[] = {
      {MO_HI, "tricore-hi"},
      {MO_LO, "tricore-lo"},
  };

  return makeArrayRef(TargetFlags);
}
