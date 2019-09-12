//==-- TriCoreInstrInfo.td - Target Description for TriCore ---*- tablegen -*-//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file describes the TriCore instructions.
//
//===----------------------------------------------------------------------===//

include "TriCoreInstrFormats.td"

let Defs = [PSW] in {
    def ADDrr  : RR<0x0B, 0x00,
                (outs DataRegs:$d),
                (ins DataRegs:$s1, DataRegs:$s2),
                "add", "\t$d, $s1, $s2",
                []>;
} // Defs = [PSW]