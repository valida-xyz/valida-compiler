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

#ifndef DELENDUMTARGETASMINFO_H
#define DELENDUMTARGETASMINFO_H

#include "llvm/MC/MCAsmInfo.h"

namespace llvm {
  class StringRef;
  class Target;

  class DelendumMCAsmInfo : public MCAsmInfo {
    virtual void anchor();
  public:
    explicit DelendumMCAsmInfo(const Target &T, StringRef TT);
  };

} // namespace llvm

#endif
