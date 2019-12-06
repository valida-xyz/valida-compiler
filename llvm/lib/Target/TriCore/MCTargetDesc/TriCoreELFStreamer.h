//===-- TriCoreELFStreamer.h - ELF Streamer for TriCore ---------*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file implements ELF streamer information for the TriCore backend.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_TRICORE_MCTARGETDESC_TRICOREELFSTREAMER_H
#define LLVM_LIB_TARGET_TRICORE_MCTARGETDESC_TRICOREELFSTREAMER_H

#include "TriCoreTargetStreamer.h"
#include "llvm/MC/MCELFStreamer.h"

namespace llvm {

class TriCoreTargetELFStreamer : public TriCoreTargetStreamer {
public:
  MCELFStreamer &getStreamer();
  TriCoreTargetELFStreamer(MCStreamer &S, const MCSubtargetInfo &STI);
};
} // namespace llvm

#endif
