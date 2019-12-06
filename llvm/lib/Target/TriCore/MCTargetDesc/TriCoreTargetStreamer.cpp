//===- TriCoreTargetStreamer.cpp - TriCoreTargetStreamer class ------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements the TriCoreTargetStreamer class.
//
//===----------------------------------------------------------------------===//

#include "TriCoreTargetStreamer.h"
#include "TriCoreELFStreamer.h"
#include "llvm/MC/ConstantPools.h"
#include "llvm/MC/MCSection.h"
#include "llvm/MC/MCSubtargetInfo.h"

using namespace llvm;

TriCoreTargetStreamer::TriCoreTargetStreamer(MCStreamer &S)
    : MCTargetStreamer(S) {}

namespace llvm {

MCTargetStreamer *
createTriCoreObjectTargetStreamer(MCStreamer &S, const MCSubtargetInfo &STI) {
  const Triple &TT = STI.getTargetTriple();
  if (TT.isOSBinFormatELF())
    return new TriCoreTargetELFStreamer(S, STI);
  return nullptr;
}

} // end namespace llvm
