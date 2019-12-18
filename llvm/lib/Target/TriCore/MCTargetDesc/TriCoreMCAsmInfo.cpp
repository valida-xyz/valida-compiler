//===-- TriCoreMCAsmInfo.cpp - TriCore Asm properties ---------------------===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file contains the declarations of the TriCoreMCAsmInfo properties.
//
//===----------------------------------------------------------------------===//

#include "TriCoreMCAsmInfo.h"
#include "llvm/ADT/Triple.h"

using namespace llvm;

void TriCoreMCAsmInfo::anchor() {}

TriCoreMCAsmInfo::TriCoreMCAsmInfo(const Triple &TT) {
  AscizDirective = "\t.string ";
  AlignmentIsInBytes = false;
  Data16bitsDirective = "\t.hword\t";
  Data32bitsDirective = "\t.word\t";
  Data64bitsDirective = nullptr;
  ExceptionsType = ExceptionHandling::DwarfCFI;
  MinInstAlignment = 2;
  PrivateGlobalPrefix = ".L";
  PrivateLabelPrefix = ".L";
  SupportsDebugInformation = true;
  UsesELFSectionDirectiveForBSS = true;
  UseIntegratedAssembler = true;
  ZeroDirective = "\t.zero\t";
}