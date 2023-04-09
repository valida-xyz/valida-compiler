//=== lib/CodeGen/GlobalISel/DelendumPreLegalizerCombiner.cpp --------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This pass does combining of machine instructions at the generic MI level,
// before the legalizer.
//
//===----------------------------------------------------------------------===//

#include "DelendumTargetMachine.h"
#include "llvm/CodeGen/GlobalISel/Combiner.h"
#include "llvm/CodeGen/GlobalISel/CombinerHelper.h"
#include "llvm/CodeGen/GlobalISel/CombinerInfo.h"
#include "llvm/CodeGen/GlobalISel/MIPatternMatch.h"
#include "llvm/CodeGen/MachineFunctionPass.h"
#include "llvm/CodeGen/TargetPassConfig.h"
#include "llvm/InitializePasses.h"

#define DEBUG_TYPE "delendum-prelegalizer-combiner"

using namespace llvm;

namespace {
class DelendumPreLegalizerCombinerInfo : public CombinerInfo {
public:
  DelendumPreLegalizerCombinerInfo()
      : CombinerInfo(/*AllowIllegalOps*/ true, /*ShouldLegalizeIllegal*/ false,
                     /*LegalizerInfo*/ nullptr, /*EnableOpt*/ false,
                     /*EnableOptSize*/ false, /*EnableMinSize*/ false) {}
  bool combine(GISelChangeObserver &Observer, MachineInstr &MI,
               MachineIRBuilder &B) const override;
};

// NOTE: It looks like this code might be replaced with the LoadStoreOpt
// pass in llvm/include/llvm/CodeGen/GlobalISel/LoadStoreOpt.h?
bool DelendumPreLegalizerCombinerInfo::combine(GISelChangeObserver &Observer,
                                               MachineInstr &MI,
                                               MachineIRBuilder &B) const {
  CombinerHelper Helper(Observer, B, /*IsPreLegalize*/ true);

  MachineBasicBlock &MBB = *MI.getParent();
  MachineFunction &MF = *MBB.getParent();
  MachineRegisterInfo &MRI = MF.getRegInfo();

  switch (MI.getOpcode()) {
  case TargetOpcode::G_STORE: {
    MachineInstr *Src0 = MRI.getVRegDef(MI.getOperand(0).getReg());
    MachineInstr *Src1 = MRI.getVRegDef(MI.getOperand(1).getReg());

    // Fold consecutive G_STOREs and G_LOADs
    if (Src0->getOpcode() == TargetOpcode::G_LOAD) {
      // Match the following pattern:
      SmallVector<MachineInstr *, 4> Uses;
      for (auto &UseMI : MRI.use_nodbg_instructions(MI.getOperand(1).getReg())) {
        if (UseMI.getOpcode() == TargetOpcode::G_LOAD) {
            Uses.push_back(&UseMI);
        }
      }
      // Apply the changes.
      bool Success = false;
      for (auto &UseMI : Uses) {
        UseMI->getOperand(1).setReg(Src0->getOperand(1).getReg());
        Success = true;
      }

      // Remove the original G_STORE if the second operand is G_FRAME_INDEX
      if (Src1->getOpcode() == TargetOpcode::G_FRAME_INDEX) {
        Success = true;
      }

      if (Success) {
        MI.eraseFromParent();
      }
      return Success;
    }

    // TODO: We need to adjust the remaining stack locations to account
    // for a removed G_STORE. Right now we are wasting stack space.
  }
  default:
    return false;
  }

  return false;
}

// Pass boilerplate
// ================

class DelendumPreLegalizerCombiner : public MachineFunctionPass {
public:
  static char ID;

  DelendumPreLegalizerCombiner();

  StringRef getPassName() const override { return "DelendumPreLegalizerCombiner"; }

  bool runOnMachineFunction(MachineFunction &MF) override;

  void getAnalysisUsage(AnalysisUsage &AU) const override;
};
} // end anonymous namespace

void DelendumPreLegalizerCombiner::getAnalysisUsage(AnalysisUsage &AU) const {
  AU.addRequired<TargetPassConfig>();
  AU.setPreservesCFG();
  getSelectionDAGFallbackAnalysisUsage(AU);
  MachineFunctionPass::getAnalysisUsage(AU);
}

DelendumPreLegalizerCombiner::DelendumPreLegalizerCombiner() : MachineFunctionPass(ID) {
  initializeDelendumPreLegalizerCombinerPass(*PassRegistry::getPassRegistry());
}

bool DelendumPreLegalizerCombiner::runOnMachineFunction(MachineFunction &MF) {
  if (MF.getProperties().hasProperty(
          MachineFunctionProperties::Property::FailedISel))
    return false;
  auto *TPC = &getAnalysis<TargetPassConfig>();
  DelendumPreLegalizerCombinerInfo PCInfo;
  Combiner C(PCInfo, TPC);
  return C.combineMachineInstrs(MF, nullptr);
}

char DelendumPreLegalizerCombiner::ID = 0;
INITIALIZE_PASS_BEGIN(DelendumPreLegalizerCombiner, DEBUG_TYPE,
                      "Combine Delendum machine instrs before legalization", false,
                      false)
INITIALIZE_PASS_DEPENDENCY(TargetPassConfig)
INITIALIZE_PASS_END(DelendumPreLegalizerCombiner, DEBUG_TYPE,
                    "Combine Delendum machine instrs before legalization", false,
                    false)

namespace llvm {
FunctionPass *createDelendumPreLegalizeCombiner() {
  return new DelendumPreLegalizerCombiner();
}
} // end namespace llvm
