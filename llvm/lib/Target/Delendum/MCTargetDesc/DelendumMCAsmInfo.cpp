//===-- DelendumMCAsmInfo.cpp - Delendum Asm Properties ---------------------------===//
//
//                     The LLVM Compiler Infrastructure
//
// This file is distributed under the University of Illinois Open Source
// License. See LICENSE.TXT for details.
//
//===----------------------------------------------------------------------===//
//
// This file contains the declarations of the DelendumMCAsmInfo properties.
//
//===----------------------------------------------------------------------===//

#include "DelendumMCAsmInfo.h"
#include "llvm/TargetParser/Triple.h"

using namespace llvm;

void DelendumMCAsmInfo::anchor() { }

DelendumMCAsmInfo::DelendumMCAsmInfo(const Target &T, StringRef TT) {
  Triple TheTriple(TT);
  if ((TheTriple.getArch() == Triple::delendum))
    IsLittleEndian = false;
  // TODO
}
