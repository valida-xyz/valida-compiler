//=- TriCoreCombine.td - Define TriCore Combine Rules --------*- tablegen -*-=//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

include "llvm/Target/GlobalISel/Combine.td"

def TriCorePreLegalizerCombinerHelper: GICombinerHelper<
  "TriCoreGenPreLegalizerCombinerHelper", [all_combines,
                                           elide_br_by_inverting_cond]> {
  let DisableRuleOption = "tricoreprelegalizercombiner-disable-rule";
}

// We need to disable extending load combines as the combiner cannot yet
// interact with the legalizer to check if a combine is legal.
// FIXME: Enable extending loads once the combiner can interact with the
//  legalizer
def empty_group : GICombineGroup<[]>;

// All combiner rules except extending loads
// FIXME: This is just horrible. Use the disable_rule syntax once upstreamed
def postlegalizer_combines : GICombineGroup<
  !listconcat([],
              !foreach(rule, all_combines.Rules,
                       !if(!ne(!cast<string>(rule),
                               !cast<string>(combines_for_extload)),
                           rule,
                           empty_group)))>;

def TriCorePostLegalizerCombinerHelper: GICombinerHelper<
  "TriCoreGenPostLegalizerCombinerHelper", [postlegalizer_combines]> {
  let DisableRuleOption = "tricorepostlegalizercombiner-disable-rule";
}
