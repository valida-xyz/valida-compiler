//===-- DelendumTargetMachine.cpp - Delendum Target Machine -------------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
///
/// \file
/// This file contains implementation for Delendum target machine.
///
//===----------------------------------------------------------------------===//

#include "DelendumTargetMachine.h"
#include "Delendum.h"
#include "DelendumMachineFunction.h"
#include "DelendumTargetObjectFile.h"
#include "DelendumSubtarget.h"
#include "TargetInfo/DelendumTargetInfo.h"

#include "llvm/CodeGen/GlobalISel/IRTranslator.h"
#include "llvm/CodeGen/GlobalISel/InstructionSelect.h"
#include "llvm/CodeGen/GlobalISel/Legalizer.h"
#include "llvm/CodeGen/GlobalISel/RegBankSelect.h"
#include "llvm/CodeGen/Passes.h"
#include "llvm/CodeGen/TargetPassConfig.h"
#include "llvm/InitializePasses.h"
#include "llvm/MC/TargetRegistry.h"
#include "llvm/PassRegistry.h"
#include <memory>
#include <optional>

using namespace llvm;

#define DEBUG_TYPE "delendum"

extern "C" LLVM_EXTERNAL_VISIBILITY void LLVMInitializeDelendumTarget() {
  RegisterTargetMachine<DelendumTargetMachine> X(getTheDelendumTarget());
  auto *PR = PassRegistry::getPassRegistry();
  initializeDelendumDAGToDAGISelPass(*PR);
  initializeDelendumPreLegalizerCombinerPass(*PR);
  //initializeStackFrameLayoutAnalysisPassPass(*PR);
}

namespace {
std::string computeDataLayout(const Triple &TT, StringRef CPU,
                              const TargetOptions &Options) {
  std::string Ret = "";
  // Big Endian
  Ret += "E";

  // FIXME how to wire it with the used object format?
  Ret += "-m:e";

  // Pointers are always 32 bit wide even for 16-bit CPUs.
  // The ABI only specifies 16-bit alignment.
  // On at least the 68020+ with a 32-bit bus, there is a performance benefit
  // to having 32-bit alignment.
  Ret += "-p:32:16:32";

  // Bytes do not require special alignment, words are word aligned and
  // long words are word aligned at minimum.
  Ret += "-i8:8:8-i16:16:16-i32:16:32";

  // The registers can hold 8, 16, 32 bits
  Ret += "-n8:16:32";

  Ret += "-a:0:16-S16";
  return Ret;
}
}

Reloc::Model getEffectiveRelocModel(const Triple &TT,
                                    std::optional<Reloc::Model> RM) {
  // If not defined we default to static
  if (!RM.has_value())
    return Reloc::Static;

  return *RM;
}

CodeModel::Model getEffectiveCodeModel(std::optional<CodeModel::Model> CM,
                                       bool JIT) {
  if (!CM) {
    return CodeModel::Small;
  } else if (CM == CodeModel::Large) {
    llvm_unreachable("Large code model is not supported");
  } else if (CM == CodeModel::Kernel) {
    llvm_unreachable("Kernel code model is not implemented yet");
  }
  return CM.value();
}

const DelendumSubtarget *
DelendumTargetMachine::getSubtargetImpl(const Function &F) const {
  Attribute CPUAttr = F.getFnAttribute("target-cpu");
  Attribute FSAttr = F.getFnAttribute("target-features");

  auto CPU = CPUAttr.isValid() ? CPUAttr.getValueAsString().str() : TargetCPU;
  auto FS = FSAttr.isValid() ? FSAttr.getValueAsString().str() : TargetFS;

  auto &I = SubtargetMap[CPU + FS];
  if (!I) {
    // This needs to be done before we create a new subtarget since any
    // creation will depend on the TM and the code generation flags on the
    // function that reside in TargetOptions.
    resetTargetOptions(F);
    I = std::make_unique<DelendumSubtarget>(TargetTriple, CPU, FS, *this);
  }
  return I.get();
}

DelendumTargetMachine::DelendumTargetMachine(const Target &T, const Triple &TT,
                                             StringRef CPU, StringRef FS,
                                             const TargetOptions &Options,
                                             std::optional<Reloc::Model> RM,
                                             std::optional<CodeModel::Model> CM,
                                             CodeGenOpt::Level OL, bool JIT)
    : LLVMTargetMachine(T, computeDataLayout(TT, CPU, Options), TT, CPU, FS,
                        Options, getEffectiveRelocModel(TT, RM),
                        ::getEffectiveCodeModel(CM, JIT), OL),
      TLOF(std::make_unique<DelendumELFTargetObjectFile>()),
      Subtarget(TT, CPU, FS, *this) {
  initAsmInfo();
}

//===----------------------------------------------------------------------===//
// Pass Pipeline Configuration
//===----------------------------------------------------------------------===//

namespace {
class DelendumPassConfig : public TargetPassConfig {
public:
  DelendumPassConfig(DelendumTargetMachine &TM, PassManagerBase &PM)
      : TargetPassConfig(TM, PM) { }

  DelendumTargetMachine &getDelendumTargetMachine() const {
    return getTM<DelendumTargetMachine>();
  }
  
  void addIRPasses() override;
  bool addIRTranslator() override;
  bool addLegalizeMachineIR() override;
  void addPreLegalizeMachineIR() override;
  bool addRegBankSelect() override;
  bool addGlobalInstructionSelect() override;
};
} // namespace

TargetPassConfig *DelendumTargetMachine::createPassConfig(PassManagerBase &PM) {
  return new DelendumPassConfig(*this, PM);
}

void DelendumPassConfig::addIRPasses() {
  TargetPassConfig::addIRPasses();
}

bool DelendumPassConfig::addIRTranslator() {
  addPass(new IRTranslator());
  return false;
}

void DelendumPassConfig::addPreLegalizeMachineIR() {
  addPass(createDelendumPreLegalizeCombiner());
}

bool DelendumPassConfig::addLegalizeMachineIR() {
  addPass(new Legalizer());
  return false;
}

bool DelendumPassConfig::addRegBankSelect() {
  addPass(new RegBankSelect());
  return false;
}

bool DelendumPassConfig::addGlobalInstructionSelect() {
  addPass(createDelendumDeadStackSlotEliminator());
  addPass(new InstructionSelect());
  return false;
}
