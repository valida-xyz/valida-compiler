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
#include "InstPrinter/TriCoreInstPrinter.h"
#include "TargetInfo/TriCoreTargetInfo.h"
#include "TriCoreMCAsmInfo.h"
#include "llvm/MC/MCAsmInfo.h"
#include "llvm/MC/MCDwarf.h"
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

#define GET_SUBTARGETINFO_MC_DESC
#include "TriCoreGenSubtargetInfo.inc"

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
                                         const Triple &TT,
                                         const MCTargetOptions &Options) {
  MCAsmInfo *MAI = new TriCoreMCAsmInfo(TT);

  // Set CFA default to SP for DWARF CFI
  const unsigned SP = MRI.getDwarfRegNum(TriCore::A10, true);
  const MCCFIInstruction CFI = MCCFIInstruction::createDefCfa(nullptr, SP, 0);
  MAI->addInitialFrameState(CFI);

  return MAI;
}

static MCInstPrinter *createTriCoreMCInstPrinter(const Triple &T,
                                                 unsigned SyntaxVariant,
                                                 const MCAsmInfo &MAI,
                                                 const MCInstrInfo &MII,
                                                 const MCRegisterInfo &MRI) {
  return new TriCoreInstPrinter(MAI, MII, MRI);
}

static MCSubtargetInfo *createTriCoreMCSubtargetInfo(const Triple &TT,
                                                   StringRef CPU, StringRef FS) {
  std::string CPUName = CPU;
  if (CPUName.empty())
    CPUName = "tc162";
  return createTriCoreMCSubtargetInfoImpl(TT, CPUName, FS);
}

extern "C" void LLVMInitializeTriCoreTargetMC() {
  Target *T = &getTheTriCoreTarget();
  TargetRegistry::RegisterMCAsmInfo(*T, createTriCoreMCAsmInfo);
  TargetRegistry::RegisterMCInstrInfo(*T, createTriCoreMCInstrInfo);
  TargetRegistry::RegisterMCRegInfo(*T, createTriCoreMCRegisterInfo);
  TargetRegistry::RegisterMCAsmBackend(*T, createTriCoreAsmBackend);
  TargetRegistry::RegisterMCCodeEmitter(*T, createTriCoreMCCodeEmitter);
  TargetRegistry::RegisterMCInstPrinter(*T, createTriCoreMCInstPrinter);
  TargetRegistry::RegisterMCSubtargetInfo(*T, createTriCoreMCSubtargetInfo);

  // Register the obj target streamer.
  TargetRegistry::RegisterObjectTargetStreamer(
      *T, createTriCoreObjectTargetStreamer);
}
