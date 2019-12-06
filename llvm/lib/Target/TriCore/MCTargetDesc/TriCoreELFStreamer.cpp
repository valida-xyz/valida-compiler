//===- lib/MC/TriCoreELFStreamer.cpp - ELF Object Output for TriCore ------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file assembles .s files and emits TriCore ELF .o object files. Different
// from generic ELF streamer in setting the ELF e_flags according the EABI
//
//===----------------------------------------------------------------------===//

#include "TriCoreELFStreamer.h"
#include "llvm/BinaryFormat/ELF.h"
#include "llvm/MC/MCSubtargetInfo.h"

using namespace llvm;

TriCoreTargetELFStreamer::TriCoreTargetELFStreamer(MCStreamer &S,
                                                   const MCSubtargetInfo &STI)
    : TriCoreTargetStreamer(S) {

  MCAssembler &MCA = getStreamer().getAssembler();

  unsigned EFlags = MCA.getELFHeaderEFlags();
  assert((EFlags == 0) && "expected e_flags to be 0");

  // FIXME: Once we support different architectures via subtarget-features,
  //        we need to check the selected architecture here and emit the
  //        correct e_flag

  EFlags |= ELF::EF_TRICORE_V1_6_1;

  MCA.setELFHeaderEFlags(EFlags);
}

MCELFStreamer &TriCoreTargetELFStreamer::getStreamer() {
  return static_cast<MCELFStreamer &>(Streamer);
}
