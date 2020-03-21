//===-- TriCoreTargetMachine.cpp - Define TargetMachine for TriCore -------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// Implements the info about TriCore target spec.
//
//===----------------------------------------------------------------------===//

#include "TriCoreTargetMachine.h"
#include "TargetInfo/TriCoreTargetInfo.h"
#include "llvm/ADT/STLExtras.h"
#include "llvm/CodeGen/Passes.h"
#include "llvm/CodeGen/TargetLoweringObjectFileImpl.h"
#include "llvm/CodeGen/TargetPassConfig.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/InitializePasses.h"
#include "llvm/Support/FormattedStream.h"
#include "llvm/Support/TargetRegistry.h"
#include "llvm/Target/TargetOptions.h"

using namespace llvm;

extern "C" void LLVMInitializeTriCoreTarget() {
  RegisterTargetMachine<TriCoreTargetMachine> X(getTheTriCoreTarget());
  auto PR = PassRegistry::getPassRegistry();
  initializeGlobalISel(*PR);
  initializeTriCoreExpandPseudoPass(*PR);
  initializeTriCoreJumpTablesPass(*PR);
  initializeTriCorePreLegalizerCombinerPass(*PR);
}

static std::string computeDataLayout(const Triple &TT) {
  return "e-m:e-i64:32-p:32:32-f64:32-n32-a:0:32-S64";
}

static Reloc::Model getEffectiveRelocModel(Optional<Reloc::Model> RM) {
  if (!RM.hasValue())
    return Reloc::Static;
  return *RM;
}

TriCoreTargetMachine::TriCoreTargetMachine(const Target &T, const Triple &TT,
                                           StringRef CPU, StringRef FS,
                                           const TargetOptions &Options,
                                           Optional<Reloc::Model> RM,
                                           Optional<CodeModel::Model> CM,
                                           CodeGenOpt::Level OL, bool JIT)
    : LLVMTargetMachine(T, computeDataLayout(TT), TT, CPU, FS, Options,
                        getEffectiveRelocModel(RM),
                        getEffectiveCodeModel(CM, CodeModel::Small), OL),
      TLOF(std::make_unique<TargetLoweringObjectFileELF>()) {
  initAsmInfo();

  // Enable GlobalISel unconditionally. We do no support any other instruction
  // selector
  setGlobalISel(true);
  setGlobalISelAbort(GlobalISelAbortMode::Enable);
}

const TriCoreSubtarget *
TriCoreTargetMachine::getSubtargetImpl(const Function &F) const {
  Attribute CPUAttr = F.getFnAttribute("target-cpu");
  Attribute FSAttr = F.getFnAttribute("target-features");

  std::string CPU = !CPUAttr.hasAttribute(Attribute::None)
                        ? CPUAttr.getValueAsString().str()
                        : TargetCPU;
  std::string FS = !FSAttr.hasAttribute(Attribute::None)
                       ? FSAttr.getValueAsString().str()
                       : TargetFS;

  auto &I = SubtargetMap[CPU + FS];
  if (!I) {
    // This needs to be done before we create a new subtarget since any
    // creation will depend on the TM and the code generation flags on the
    // function that reside in TargetOptions.
    resetTargetOptions(F);
    I = std::make_unique<TriCoreSubtarget>(TargetTriple, CPU, FS, *this);
  }
  return I.get();
}

namespace {

/// TriCore Code Generator Pass Configuration Options.
class TriCorePassConfig : public TargetPassConfig {
public:
  TriCorePassConfig(TriCoreTargetMachine &TM, PassManagerBase &PM)
      : TargetPassConfig(TM, PM) {}

  bool addIRTranslator() override;
  void addPreLegalizeMachineIR() override;
  bool addLegalizeMachineIR() override;
  bool addRegBankSelect() override;
  bool addGlobalInstructionSelect() override;

  void addPreEmitPass() override;
  void addPreSched2() override;
};

} // end anonymous namespace

TargetPassConfig *TriCoreTargetMachine::createPassConfig(PassManagerBase &PM) {
  return new TriCorePassConfig(*this, PM);
}

bool TriCorePassConfig::addIRTranslator() {
  addPass(new IRTranslator());
  return false;
}

void TriCorePassConfig::addPreLegalizeMachineIR() {
  bool IsOptNone = getOptLevel() == CodeGenOpt::None;
  addPass(createTriCorePreLegalizeCombiner(IsOptNone));
}

bool TriCorePassConfig::addLegalizeMachineIR() {
  addPass(new Legalizer());
  return false;
}

bool TriCorePassConfig::addRegBankSelect() {
  addPass(new RegBankSelect());
  return false;
}

bool TriCorePassConfig::addGlobalInstructionSelect() {
  addPass(new InstructionSelect());
  return false;
}

void TriCorePassConfig::addPreEmitPass() {
  addPass(createTriCoreJumpTablePass());
}

void TriCorePassConfig::addPreSched2() {
  addPass(createTriCoreExpandPseudoPass());
}