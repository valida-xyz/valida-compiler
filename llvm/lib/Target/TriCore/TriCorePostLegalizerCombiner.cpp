//=== lib/CodeGen/GlobalISel/TriCorePostLegalizerCombiner.cpp -------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This pass does combining of machine instructions at the generic MI level,
// after the legalizer.
//
//===----------------------------------------------------------------------===//

#include "TriCoreLegalizerInfo.h"
#include "TriCoreTargetMachine.h"
#include "llvm/CodeGen/GlobalISel/Combiner.h"
#include "llvm/CodeGen/GlobalISel/CombinerHelper.h"
#include "llvm/CodeGen/GlobalISel/CombinerInfo.h"
#include "llvm/CodeGen/GlobalISel/GISelKnownBits.h"
#include "llvm/CodeGen/GlobalISel/MIPatternMatch.h"
#include "llvm/CodeGen/MachineDominators.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/TargetPassConfig.h"

#define DEBUG_TYPE "tricore-postlegalizer-combiner"
#define TRICOREPOSTLEGALIZERCOMBINER_NAME                                      \
  "Combine TriCore machine instrs after legalization"

using namespace llvm;
using namespace MIPatternMatch;

#define TRICOREPOSTLEGALIZERCOMBINERHELPER_GENCOMBINERHELPER_DEPS
#include "TriCoreGenPostLegalizerGICombiner.inc"
#undef TRICOREPOSTLEGALIZERCOMBINERHELPER_GENCOMBINERHELPER_DEPS

namespace {
#define TRICOREPOSTLEGALIZERCOMBINERHELPER_GENCOMBINERHELPER_H
#include "TriCoreGenPostLegalizerGICombiner.inc"
#undef TRICOREPOSTLEGALIZERCOMBINERHELPER_GENCOMBINERHELPER_H

class TriCorePostLegalizerCombinerInfo : public CombinerInfo {
  GISelKnownBits *KB;
  MachineDominatorTree *MDT;

public:
  TriCoreGenPostLegalizerCombinerHelper Generated;

  TriCorePostLegalizerCombinerInfo(bool EnableOpt, bool OptSize, bool MinSize,
                                   const TriCoreLegalizerInfo *LI,
                                   GISelKnownBits *KB,
                                   MachineDominatorTree *MDT)
      : CombinerInfo(/*AllowIllegalOps*/ false, /*ShouldLegalizeIllegal*/ true,
                     /*LegalizerInfo*/ LI, EnableOpt, OptSize, MinSize),
        KB(KB), MDT(MDT) {
    if (!Generated.parseCommandLineOption())
      report_fatal_error("Invalid rule identifier");
  }

  bool combine(GISelChangeObserver &Observer, MachineInstr &MI,
               MachineIRBuilder &B) const override;
};

bool TriCorePostLegalizerCombinerInfo::combine(GISelChangeObserver &Observer,
                                               MachineInstr &MI,
                                               MachineIRBuilder &B) const {
  CombinerHelper Helper(Observer, B, KB, MDT);

  if (Generated.tryCombineAll(Observer, MI, B, Helper))
    return true;

  return false;
}

#define TRICOREPOSTLEGALIZERCOMBINERHELPER_GENCOMBINERHELPER_CPP
#include "TriCoreGenPostLegalizerGICombiner.inc"
#undef TRICOREPOSTLEGALIZERCOMBINERHELPER_GENCOMBINERHELPER_CPP

// Pass boilerplate
// ================

class TriCorePostLegalizerCombiner : public MachineFunctionPass {
public:
  static char ID;

  explicit TriCorePostLegalizerCombiner(bool IsOptNone = false);

  StringRef getPassName() const override {
    return "TriCorePostLegalizerCombiner";
  }

  void getAnalysisUsage(AnalysisUsage &AU) const override;

  bool runOnMachineFunction(MachineFunction &MF) override;

private:
  bool IsOptNone;
};
} // namespace

TriCorePostLegalizerCombiner::TriCorePostLegalizerCombiner(bool IsOptNone)
    : MachineFunctionPass(ID), IsOptNone(IsOptNone) {
  initializeTriCorePostLegalizerCombinerPass(*PassRegistry::getPassRegistry());
}

void TriCorePostLegalizerCombiner::getAnalysisUsage(AnalysisUsage &AU) const {
  AU.addRequired<TargetPassConfig>();
  AU.setPreservesCFG();
  AU.addRequired<GISelKnownBitsAnalysis>();
  AU.addPreserved<GISelKnownBitsAnalysis>();
  if (!IsOptNone) {
    AU.addRequired<MachineDominatorTree>();
    AU.addPreserved<MachineDominatorTree>();
  }
  MachineFunctionPass::getAnalysisUsage(AU);
}

bool TriCorePostLegalizerCombiner::runOnMachineFunction(MachineFunction &MF) {
  if (MF.getProperties().hasProperty(
          MachineFunctionProperties::Property::FailedISel))
    return false;

  auto *TPC = &getAnalysis<TargetPassConfig>();
  const Function &F = MF.getFunction();
  bool EnableOpt =
      MF.getTarget().getOptLevel() != CodeGenOpt::None && !skipFunction(F);

  const auto &ST = MF.getSubtarget<TriCoreSubtarget>();
  const auto *LI =
      static_cast<const TriCoreLegalizerInfo *>(ST.getLegalizerInfo());

  GISelKnownBits *KB = &getAnalysis<GISelKnownBitsAnalysis>().get(MF);
  MachineDominatorTree *MDT =
      IsOptNone ? nullptr : &getAnalysis<MachineDominatorTree>();

  TriCorePostLegalizerCombinerInfo PCInfo(EnableOpt, F.hasOptSize(),
                                          F.hasMinSize(), LI, KB, MDT);

  Combiner C(PCInfo, TPC);
  return C.combineMachineInstrs(MF, /*CSEInfo*/ nullptr);
}

char TriCorePostLegalizerCombiner::ID = 0;
INITIALIZE_PASS_BEGIN(TriCorePostLegalizerCombiner, DEBUG_TYPE,
                      TRICOREPOSTLEGALIZERCOMBINER_NAME, false, false)
INITIALIZE_PASS_DEPENDENCY(TargetPassConfig)
INITIALIZE_PASS_DEPENDENCY(GISelKnownBitsAnalysis)
INITIALIZE_PASS_END(TriCorePostLegalizerCombiner, DEBUG_TYPE,
                    TRICOREPOSTLEGALIZERCOMBINER_NAME, false, false)

namespace llvm {
FunctionPass *createTriCorePostLegalizerCombiner(bool IsOptNone) {
  return new TriCorePostLegalizerCombiner(IsOptNone);
}
} // namespace llvm
