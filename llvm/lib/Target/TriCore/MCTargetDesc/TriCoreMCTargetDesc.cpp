//===-- TriCoreMCTargetDesc.cpp - TriCore Target Descriptions -------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
///
/// This file provides TriCore-specific target descriptions.
///
//===----------------------------------------------------------------------===//

#include "TriCoreMCTargetDesc.h"
#include "TriCoreMCAsmInfo.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/MC/MCAsmInfo.h"
#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/Support/ErrorHandling.h"
#include "llvm/Support/TargetRegistry.h"

#define GET_INSTRINFO_MC_DESC
#include "TriCoreGenInstrInfo.inc"

#define GET_REGINFO_MC_DESC
#include "TriCoreGenRegisterInfo.inc"

using namespace llvm;

static MCInstrInfo *createTriCoreMCInstrInfo() {
  MCInstrInfo *X = new MCInstrInfo();
  InitTriCoreMCInstrInfo(X);
  return X;
}

static MCRegisterInfo *createTriCoreMCRegisterInfo(const Triple &TT) {
  MCRegisterInfo *X = new MCRegisterInfo();
  // FIXME: this is A11 on Kumail's code, change to that when
  // that register is added.
  InitTriCoreMCRegisterInfo(X, TriCore::D0);
  return X;
}

static MCAsmInfo *createTriCoreMCAsmInfo(const MCRegisterInfo &MRI,
                                         const Triple &TT) {
  return new TriCoreMCAsmInfo(TT);
}

extern "C" void LLVMInitializeTriCoreTargetMC() {
  Target *T = &getTheTriCoreTarget();
  TargetRegistry::RegisterMCAsmInfo(*T, createTriCoreMCAsmInfo);
  TargetRegistry::RegisterMCInstrInfo(*T, createTriCoreMCInstrInfo);
  TargetRegistry::RegisterMCRegInfo(*T, createTriCoreMCRegisterInfo);
  TargetRegistry::RegisterMCAsmBackend(*T, createTriCoreAsmBackend);
  TargetRegistry::RegisterMCCodeEmitter(*T, createTriCoreMCCodeEmitter);
}
