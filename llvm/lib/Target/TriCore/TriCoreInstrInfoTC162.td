//==-- TriCoreInstrInfoTC162.td                              ---*- tablegen -*-//
// Target Description for TriCore TC1.62
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file describes the TriCore TC1.62 instructions.
//
//===----------------------------------------------------------------------===//

let ISAPredicates = [HasTC162] in {

//===----------------------------------------------------------------------===//
//  Check Instructions.
//

let n = 0, isReMaterializable = 1 in {
  let s2 = 0 in {
    // POPCNTW
    def POPCNTW_dd    :  RR<0x4B, 0x22, (outs DataRegs:$d),
                            (ins DataRegs:$s1),
                            "popcnt.w", "\t$d, $s1">;
  } // s2 = 0

  // CRC32B
  def CRC32B_ddd      :  RR<0x4B, 0x06,(outs DataRegs:$d),
                            (ins DataRegs:$s2, DataRegs:$s1),
                            "crc32.b", "\t$d, $s2, $s1">;

  // CRC32BW
  def CRC32BW_ddd     :  RR<0x4B, 0x03,(outs DataRegs:$d),
                            (ins DataRegs:$s2, DataRegs:$s1),
                            "crc32b.w", "\t$d, $s2, $s1">;

  // CRC32LW
  def CRC32LW_ddd     :  RR<0x4B, 0x07,(outs DataRegs:$d),
                            (ins DataRegs:$s2, DataRegs:$s1),
                            "crc32l.w", "\t$d, $s2, $s1">;

  // CRCN
  def CRCN_dddd       : RRR<0x6B, 0x01, (outs DataRegs:$d),
                        (ins DataRegs:$s3, DataRegs:$s1, DataRegs:$s2),
                        "crcn", "\t$d, $s3, $s1, $s2">;
} // n = 0, isReMaterializable = 1

//===----------------------------------------------------------------------===//
// Floating Point Conversion Instructions.
//
let Defs = [PSW], n = 1 in {
  // HPTOF
  def HPTOF_dd        :  FPC_RR<0x4B, 0x24, "hptof">;

  let Uses = [PSW] in
  // FTOHP
  def FTOHP_dd        :  FPC_RR<0x4B, 0x25, "ftohp">;
} // Defs = [PSW], n = 1


//===----------------------------------------------------------------------===//
//  2.6.4 Miscellaneous Bit Operations.
//
let isReMaterializable = 1 in {
  // SHUFFLE
  def SHUFFLE_ddc     :  RC<0x8F, 0x07, (outs DataRegs:$d),
                           (ins DataRegs:$s1, uimm9:$const9),
                           "shuffle", "\t$d, $s1, $const9">;
} // isRematerializable = 1


//===----------------------------------------------------------------------===//
//  2.7 Address Arithmetic.
//
let isReMaterializable = 1 in
// LHA
def LHA_ac             : ABS<0xC5, 0x01, (outs AddrRegs:$s1_d),
                             (ins off18_abs_v2:$off18),
                             "lha", "\t$s1_d, $off18">;

} // ISAPredicates = [HasTC162]
