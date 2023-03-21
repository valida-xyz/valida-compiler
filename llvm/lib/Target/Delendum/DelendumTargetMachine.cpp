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
#include "DelendumSubtarget.h"
#include "TargetInfo/DelendumTargetInfo.h"

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
  //auto *PR = PassRegistry::getPassRegistry();
  //initializeDelendumDAGToDAGISelPass(*PR);
}

namespace {
std::string computeDataLayout(const Triple &TT, StringRef CPU,
                              const TargetOptions &Options) {
  // TODO
  std::string Ret = "";
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

DelendumTargetMachine::DelendumTargetMachine(const Target &T, const Triple &TT,
                                             StringRef CPU, StringRef FS,
                                             const TargetOptions &Options,
                                             std::optional<Reloc::Model> RM,
                                             std::optional<CodeModel::Model> CM,
                                             CodeGenOpt::Level OL, bool JIT)
    : LLVMTargetMachine(T, computeDataLayout(TT, CPU, Options), TT, CPU, FS,
                        Options, getEffectiveRelocModel(TT, RM),
                        ::getEffectiveCodeModel(CM, JIT), OL) {
    // TODO
}
