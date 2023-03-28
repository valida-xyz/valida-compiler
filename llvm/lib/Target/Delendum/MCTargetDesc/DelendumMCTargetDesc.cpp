//===-- DelendumMCTargetDesc.cpp - Delendum Target Descriptions -------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file provides Delendum specific target descriptions.
//
//===----------------------------------------------------------------------===//

#include "DelendumMCTargetDesc.h"
#include "DelendumInstPrinter.h"
#include "DelendumMCAsmInfo.h"
#include "TargetInfo/DelendumTargetInfo.h"

#include "llvm/MC/MCInstrInfo.h"
#include "llvm/MC/MCRegisterInfo.h"
#include "llvm/MC/MCStreamer.h"
#include "llvm/MC/MCSubtargetInfo.h"
#include "llvm/MC/MachineLocation.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/Support/ErrorHandling.h"

using namespace llvm;

#define GET_INSTRINFO_MC_DESC
#define ENABLE_INSTR_PREDICATE_VERIFIER
#include "DelendumGenInstrInfo.inc"

#define GET_SUBTARGETINFO_MC_DESC
#include "DelendumGenSubtargetInfo.inc"

#define GET_REGINFO_MC_DESC
#include "DelendumGenRegisterInfo.inc"

static MCAsmInfo *createDelendumMCAsmInfo(const MCRegisterInfo &MRI,
                                       const Triple &TT,
                                       const MCTargetOptions &Options) {
  // TODO
  MCAsmInfo *MAI = new DelendumELFMCAsmInfo(TT);
  return MAI;
}

static MCRegisterInfo *createDelendumMCRegisterInfo(const Triple &TT) {
  MCRegisterInfo *X = new MCRegisterInfo();
  InitDelendumMCRegisterInfo(X, 0, 0, 0, 0);
  return X;
}

static MCSubtargetInfo *
createDelendumMCSubtargetInfo(const Triple &TT, StringRef CPU, StringRef FS) {
  if (CPU.empty())
    CPU = "";
  return createDelendumMCSubtargetInfoImpl(TT, CPU, /*TuneCPU*/ CPU, FS);
}

static MCInstrInfo *createDelendumMCInstrInfo() {
  MCInstrInfo *X = new MCInstrInfo();
  InitDelendumMCInstrInfo(X); // defined in DelendumGenInstrInfo.inc
  return X;
}

static MCInstPrinter *createDelendumMCInstPrinter(const Triple &T,
                                                  unsigned SyntaxVariant,
                                                  const MCAsmInfo &MAI,
                                                  const MCInstrInfo &MII,
                                                  const MCRegisterInfo &MRI) {
  return new DelendumInstPrinter(MAI, MII, MRI);
}

extern "C" void LLVMInitializeDelendumTargetMC() {
  Target &T = getTheDelendumTarget();

  RegisterMCAsmInfoFn X(T, createDelendumMCAsmInfo);

  // Register the MC instruction info.
  TargetRegistry::RegisterMCInstrInfo(T, createDelendumMCInstrInfo);

  // Register the MC register info.
  TargetRegistry::RegisterMCRegInfo(T, createDelendumMCRegisterInfo);

  // Register the MC subtarget info.
  TargetRegistry::RegisterMCSubtargetInfo(T, createDelendumMCSubtargetInfo);

  // Register the MCInstPrinter.
  TargetRegistry::RegisterMCInstPrinter(T, createDelendumMCInstPrinter);

  // Register the code emitter.
  TargetRegistry::RegisterMCCodeEmitter(T, createDelendumMCCodeEmitter);
}
