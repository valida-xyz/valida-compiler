//===-- DelendumMCAsmInfo.h - Delendum Asm Info ------------------------*- C++ -*--===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file contains the declaration of the DelendumMCAsmInfo class.
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_DELENDUM_MCTARGETDESC_DELENDUMMCASMINFO_H
#define LLVM_LIB_TARGET_DELENDUM_MCTARGETDESC_DELENDUMMCASMINFO_H

#include "llvm/MC/MCAsmInfoELF.h"
#include "llvm/TargetParser/Triple.h"

namespace llvm {
  class StringRef;
  class Target;

  class DelendumELFMCAsmInfo : public MCAsmInfoELF {
    virtual void anchor();
  public:
    explicit DelendumELFMCAsmInfo(const Triple &T);
  };

} // namespace llvm

#endif
