//==-- TriCoreInstrInfoTC18.td                              ---*- tablegen -*-//
// Target Description for TriCore TC1.8
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file describes the TriCore TC1.8 instructions.
//
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
// Instruction Class Templates
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
//  Cache Instructions.
//

let s1_d = 0, hasSideEffects = 1 in {
  class CACHE_BO<bits<8> opc1, bits<6> opc2, string mnemonic>
                  : BO<opc1, opc2, (outs),
                  (ins AddrRegs:$s2, simm10:$off10),
                  mnemonic, "\t[${s2}], $off10">;

  let Constraints = "$s2 = $dest" in {
    class CACHE_BO_PRI<bits<8> opc1, bits<6> opc2, string mnemonic>
                  : BO<opc1, opc2, (outs AddrRegs:$dest),
                  (ins AddrRegs:$s2, simm10:$off10),
                  mnemonic, "\t[+${s2}], $off10">;

    class CACHE_BO_POI<bits<8> opc1, bits<6> opc2, string mnemonic>
                  : BO<opc1, opc2, (outs AddrRegs:$dest),
                  (ins AddrRegs:$s2, simm10:$off10),
                  mnemonic, "\t[${s2}+], $off10">;
  } // Constraints = "$s2 = $dest"
} // s1_d = 0, hasSideEffects = 1

//===----------------------------------------------------------------------===//
// Instruction Definitions
//===----------------------------------------------------------------------===//

//===----------------------------------------------------------------------===//
//  Cache Instructions.
//

// CACHEA.I.VM

def CACHEAIVM_ac        :  CACHE_BO<0x49, 0x2E, "cachea.i.vm">;
def CACHEAIVM_ac_poi    :  CACHE_BO_POI<0x49, 0x0E, "cachea.i.vm">;
def CACHEAIVM_ac_pri    :  CACHE_BO_PRI<0x49, 0x1E, "cachea.i.vm">;

// CACHEA.W.VM

def CACHEAWVM_ac        :  CACHE_BO<0x49, 0x2C, "cachea.w.vm">;
def CACHEAWVM_ac_poi    :  CACHE_BO_POI<0x49, 0x0C, "cachea.w.vm">;
def CACHEAWVM_ac_pri    :  CACHE_BO_PRI<0x49, 0x1C, "cachea.w.vm">;

// CACHEA.WI.VM

def CACHEAWIV_ac       :  CACHE_BO<0x49, 0x2D, "cachea.wi.vm">;
def CACHEAWIV_ac_poi   :  CACHE_BO_POI<0x49, 0x0D, "cachea.wi.vm">;
def CACHEAWIV_ac_pri   :  CACHE_BO_PRI<0x49, 0x1D, "cachea.wi.vm">;

// CACHEI.I.VM

def CACHEIIVM_ac       :  CACHE_BO<0x49, 0x2A, "cachei.i.vm">;
def CACHEIIVM_ac_poi   :  CACHE_BO_POI<0x49, 0x0A, "cachei.i.vm">;
def CACHEIIVM_ac_pri   :  CACHE_BO_PRI<0x49, 0x1A, "cachei.i.vm">;

// CACHEI.W.VM

def CACHEIWVM_ac       :  CACHE_BO<0x49, 0x2B, "cachei.w.vm">;
def CACHEIWVM_ac_poi   :  CACHE_BO_POI<0x49, 0x0B, "cachei.w.vm">;
def CACHEIWVM_ac_pri   :  CACHE_BO_PRI<0x49, 0x1B, "cachei.w.vm">;

// CACHEI.WI.VM

def CACHEIWIV_ac      :  CACHE_BO<0x49, 0x2F, "cachei.wi.vm">;
def CACHEIWIV_ac_poi  :  CACHE_BO_POI<0x49, 0x0F, "cachei.wi.vm">;
def CACHEIWIV_ac_pri  :  CACHE_BO_PRI<0x49, 0x1F, "cachei.wi.vm">;
