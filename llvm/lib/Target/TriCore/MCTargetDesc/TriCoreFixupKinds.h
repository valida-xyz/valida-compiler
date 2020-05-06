//===-- TriCoreFixupKinds.h - TriCore Specific Fixup Entries ----*- C++ -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

#ifndef LLVM_LIB_TARGET_TRICORE_MCTARGETDESC_TRICOREFIXUPKINDS_H
#define LLVM_LIB_TARGET_TRICORE_MCTARGETDESC_TRICOREFIXUPKINDS_H

#include "llvm/MC/MCFixup.h"

#undef TriCore

namespace llvm {
namespace TriCore {

// This enum list the target specific fixups
enum Fixups {
  fixup_none = FirstTargetFixupKind,

  // 24 bit pc-relative immediate used in B format (internally multiplied by 2)
  fixup_24rel,

  // 24 bit representing a 32 bit absolute address for B format with
  // EA = {disp24[23:20], 7b'0, disp24[19:0], 1b'0}
  fixup_24abs,

  // 16 bit immediate with sm modifier, using BOL format
  fixup_16sm,

  // 16 bit immediate with hi modifier, using RLC format
  fixup_hi,

  // 16 bit immediate with lo modifier, using RLC format
  fixup_lo,

  // 16 bit immediate with lo modifier, using BOL format
  fixup_lo2,

  // 18 bit representing a 32 bit absolute address for ABS format with
  // EA = {off18[17:14], 14b'0, off18[13:0]}
  fixup_18abs,

  // 15 bit pc-relative immediate used in BR format (internally multiplied by 2)
  fixup_15rel,

  fixup_invalid,
  // the number of fixups for this target
  NumTargetFixupKinds = fixup_invalid - FirstTargetFixupKind
};
} // end namespace TriCore
} // end namespace llvm

#endif
