//===-- Scalar.cpp --------------------------------------------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements common infrastructure for libLLVMScalarOpts.a, which
// implements several scalar transformations over the LLVM intermediate
// representation, including the C bindings for that library.
//
//===----------------------------------------------------------------------===//

#include "llvm/Transforms/Scalar.h"
#include "llvm-c/Initialization.h"
#include "llvm/Analysis/BasicAliasAnalysis.h"
#include "llvm/Analysis/ScopedNoAliasAA.h"
#include "llvm/Analysis/TypeBasedAliasAnalysis.h"
#include "llvm/IR/LegacyPassManager.h"
#include "llvm/IR/Verifier.h"
#include "llvm/InitializePasses.h"
#include "llvm/Transforms/Scalar/GVN.h"
#include "llvm/Transforms/Scalar/Scalarizer.h"
#include "llvm/Transforms/Utils/UnifyFunctionExitNodes.h"

using namespace llvm;

/// initializeScalarOptsPasses - Initialize all passes linked into the
/// ScalarOpts library.
void llvm::initializeScalarOpts(PassRegistry &Registry) {
  initializeADCELegacyPassPass(Registry);
  initializeBDCELegacyPassPass(Registry);
  initializeAlignmentFromAssumptionsPass(Registry);
  initializeCallSiteSplittingLegacyPassPass(Registry);
  initializeConstantHoistingLegacyPassPass(Registry);
  initializeCorrelatedValuePropagationPass(Registry);
  initializeDCELegacyPassPass(Registry);
  initializeScalarizerLegacyPassPass(Registry);
  initializeDSELegacyPassPass(Registry);
  initializeGuardWideningLegacyPassPass(Registry);
  initializeLoopGuardWideningLegacyPassPass(Registry);
  initializeGVNLegacyPassPass(Registry);
  initializeNewGVNLegacyPassPass(Registry);
  initializeEarlyCSELegacyPassPass(Registry);
  initializeEarlyCSEMemSSALegacyPassPass(Registry);
  initializeMakeGuardsExplicitLegacyPassPass(Registry);
  initializeGVNHoistLegacyPassPass(Registry);
  initializeGVNSinkLegacyPassPass(Registry);
  initializeFlattenCFGLegacyPassPass(Registry);
  initializeIRCELegacyPassPass(Registry);
  initializeIndVarSimplifyLegacyPassPass(Registry);
  initializeInferAddressSpacesPass(Registry);
  initializeInstSimplifyLegacyPassPass(Registry);
  initializeJumpThreadingPass(Registry);
  initializeDFAJumpThreadingLegacyPassPass(Registry);
  initializeLegacyLICMPassPass(Registry);
  initializeLegacyLoopSinkPassPass(Registry);
  initializeLoopDataPrefetchLegacyPassPass(Registry);
  initializeLoopAccessLegacyAnalysisPass(Registry);
  initializeLoopInstSimplifyLegacyPassPass(Registry);
  initializeLoopPredicationLegacyPassPass(Registry);
  initializeLoopRotateLegacyPassPass(Registry);
  initializeLoopStrengthReducePass(Registry);
  initializeLoopUnrollPass(Registry);
  initializeLowerAtomicLegacyPassPass(Registry);
  initializeLowerConstantIntrinsicsPass(Registry);
  initializeLowerExpectIntrinsicPass(Registry);
  initializeLowerGuardIntrinsicLegacyPassPass(Registry);
  initializeLowerMatrixIntrinsicsLegacyPassPass(Registry);
  initializeLowerMatrixIntrinsicsMinimalLegacyPassPass(Registry);
  initializeLowerWidenableConditionLegacyPassPass(Registry);
  initializeMemCpyOptLegacyPassPass(Registry);
  initializeMergeICmpsLegacyPassPass(Registry);
  initializeMergedLoadStoreMotionLegacyPassPass(Registry);
  initializeNaryReassociateLegacyPassPass(Registry);
  initializePartiallyInlineLibCallsLegacyPassPass(Registry);
  initializeReassociateLegacyPassPass(Registry);
  initializeRedundantDbgInstEliminationPass(Registry);
  initializeRegToMemLegacyPass(Registry);
  initializeRewriteStatepointsForGCLegacyPassPass(Registry);
  initializeScalarizeMaskedMemIntrinLegacyPassPass(Registry);
  initializeSROALegacyPassPass(Registry);
  initializeCFGSimplifyPassPass(Registry);
  initializeStructurizeCFGLegacyPassPass(Registry);
  initializeSimpleLoopUnswitchLegacyPassPass(Registry);
  initializeSinkingLegacyPassPass(Registry);
  initializeTailCallElimPass(Registry);
  initializeTLSVariableHoistLegacyPassPass(Registry);
  initializeSeparateConstOffsetFromGEPLegacyPassPass(Registry);
  initializeSpeculativeExecutionLegacyPassPass(Registry);
  initializeStraightLineStrengthReduceLegacyPassPass(Registry);
  initializePlaceBackedgeSafepointsLegacyPassPass(Registry);
  initializePlaceSafepointsLegacyPassPass(Registry);
  initializeFloat2IntLegacyPassPass(Registry);
  initializeLoopSimplifyCFGLegacyPassPass(Registry);
}

void LLVMInitializeScalarOpts(LLVMPassRegistryRef R) {
  initializeScalarOpts(*unwrap(R));
}
