//===-- DelendumMCTargetDesc.h - Delendum Target Descriptions -----------*- C++ -*-===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file provides Delendum specific target descriptions.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_DELENDUM_MCTARGETDESC_DELENDUMMCTARGETDESC_H
#define LLVM_LIB_TARGET_DELENDUM_MCTARGETDESC_DELENDUMMCTARGETDESC_H

#include "llvm/MC/MCInstrDesc.h"
#include "llvm/MC/MCObjectWriter.h"
#include "llvm/Support/DataTypes.h"

namespace llvm {
class MCAsmBackend;
class MCCodeEmitter;
class MCContext;
class MCInstrInfo;
class MCObjectWriter;
class MCRegisterInfo;
class MCSubtargetInfo;
class MCTargetOptions;
class StringRef;
class Target;
class raw_ostream;

MCAsmBackend *createDelendumAsmBackend(const Target &T, const MCSubtargetInfo &STI,
                                       const MCRegisterInfo &MRI,
                                       const MCTargetOptions &Options);

MCCodeEmitter *createDelendumMCCodeEmitter(const MCInstrInfo &MCII,
                                           MCContext &Ctx);

MCObjectWriter *createDelendumELFObjectWriter(raw_ostream &OS,
                                              uint8_t OSABI,
                                              bool IsLittleEndian);
} // End llvm namespace

// Defines symbolic names for Delendum registers.  This defines a mapping from
// register name to register number.
#define GET_REGINFO_ENUM
#include "DelendumGenRegisterInfo.inc"

// Defines symbolic names for the Delendum instructions.
#define GET_INSTRINFO_ENUM
#define GET_INSTRINFO_MC_HELPER_DECLS
#include "DelendumGenInstrInfo.inc"

#define GET_SUBTARGETINFO_ENUM
#include "DelendumGenSubtargetInfo.inc"

#endif // LLVM_LIB_TARGET_DELENDUM_MCTARGETDESC_DELENDUMMCTARGETDESC_H
