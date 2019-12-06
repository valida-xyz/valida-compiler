//===-- TriCoreMCTargetDesc.h - TriCore Target Descriptions -----*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file provides TriCore specific target descriptions.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_TRICORE_MCTARGETDESC_TRICOREMCTARGETDESC_H
#define LLVM_LIB_TARGET_TRICORE_MCTARGETDESC_TRICOREMCTARGETDESC_H

#include "llvm/Config/config.h"
#include "llvm/MC/MCTargetOptions.h"
#include "llvm/Support/DataTypes.h"
#include <memory>

namespace llvm {
class MCAsmBackend;
class MCCodeEmitter;
class MCContext;
class MCInstrInfo;
class MCObjectTargetWriter;
class MCRegisterInfo;
class MCStreamer;
class MCSubtargetInfo;
class MCTargetStreamer;
class StringRef;
class Target;
class Triple;
class raw_ostream;
class raw_pwrite_stream;

MCCodeEmitter *createTriCoreMCCodeEmitter(const MCInstrInfo &MCII,
                                          const MCRegisterInfo &MRI,
                                          MCContext &Ctx);

MCAsmBackend *createTriCoreAsmBackend(const Target &T,
                                      const MCSubtargetInfo &STI,
                                      const MCRegisterInfo &MRI,
                                      const MCTargetOptions &Options);

std::unique_ptr<MCObjectTargetWriter>
createTriCoreELFObjectWriter(uint8_t OSABI);

MCTargetStreamer *createTriCoreObjectTargetStreamer(MCStreamer &S,
                                                    const MCSubtargetInfo &STI);

} // namespace llvm

// Defines symbolic names for TriCore registers.
#define GET_REGINFO_ENUM
#include "TriCoreGenRegisterInfo.inc"

// Defines symbolic names for TriCore instructions.
#define GET_INSTRINFO_ENUM
#include "TriCoreGenInstrInfo.inc"

// Defines the subtargets for TriCore
#define GET_SUBTARGETINFO_ENUM
#include "TriCoreGenSubtargetInfo.inc"

#endif
