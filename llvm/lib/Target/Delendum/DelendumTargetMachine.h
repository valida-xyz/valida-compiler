//===-- DelendumTargetMachine.h - Define TargetMachine for Delendum -----*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file declares the Delendum specific subclass of TargetMachine.
//
//===----------------------------------------------------------------------===//

#ifndef DELENDUMTARGETMACHINE_H
#define DELENDUMTARGETMACHINE_H

#include "DelendumSubtarget.h"
#include "MCTargetDesc/DelendumMCTargetDesc.h"

#include "llvm/IR/DataLayout.h"
#include "llvm/Target/TargetMachine.h"

namespace llvm {
class formatted_raw_ostream;

class DelendumTargetMachine : public LLVMTargetMachine {
  std::unique_ptr<TargetLoweringObjectFile> TLOF;

public:
  DelendumTargetMachine(const Target &T, const Triple &TT, StringRef CPU,
                        StringRef FS, const TargetOptions &Options,
                        std::optional<Reloc::Model> RM,
                        std::optional<CodeModel::Model> CM, CodeGenOpt::Level OL,
                        bool JIT);

  // Pass Pipeline Configuration
  TargetPassConfig *createPassConfig(PassManagerBase &PM) override;

  TargetLoweringObjectFile *getObjFileLowering() const override {
    return TLOF.get();
  }
};
} // End llvm namespace

#endif
