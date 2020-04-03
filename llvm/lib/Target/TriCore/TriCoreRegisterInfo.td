//==-- TriCoreRegisterInfo.td - TriCore Register defs ------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//

class TriCoreReg<bits<4> enc, string n, list<Register> subregs = []>
      : Register<n> {
  let HWEncoding{3-0} = enc;
  let Namespace = "TriCore";
  let SubRegs = subregs;
}

//===----------------------------------------------------------------------===//
// Registers
//===----------------------------------------------------------------------===//

// Data registers
def D0  : TriCoreReg<0,  "d0" >, DwarfRegNum<[0]>;
def D1  : TriCoreReg<1,  "d1" >, DwarfRegNum<[1]>;
def D2  : TriCoreReg<2,  "d2" >, DwarfRegNum<[2]>;
def D3  : TriCoreReg<3,  "d3" >, DwarfRegNum<[3]>;
def D4  : TriCoreReg<4,  "d4" >, DwarfRegNum<[4]>;
def D5  : TriCoreReg<5,  "d5" >, DwarfRegNum<[5]>;
def D6  : TriCoreReg<6,  "d6" >, DwarfRegNum<[6]>;
def D7  : TriCoreReg<7,  "d7" >, DwarfRegNum<[7]>;
def D8  : TriCoreReg<8,  "d8" >, DwarfRegNum<[8]>;
def D9  : TriCoreReg<9,  "d9" >, DwarfRegNum<[9]>;
def D10 : TriCoreReg<10, "d10">, DwarfRegNum<[10]>;
def D11 : TriCoreReg<11, "d11">, DwarfRegNum<[11]>;
def D12 : TriCoreReg<12, "d12">, DwarfRegNum<[12]>;
def D13 : TriCoreReg<13, "d13">, DwarfRegNum<[13]>;
def D14 : TriCoreReg<14, "d14">, DwarfRegNum<[14]>;
def D15 : TriCoreReg<15, "d15">, DwarfRegNum<[15]>;

// Address registers
def A0  : TriCoreReg<0,  "a0">, DwarfRegNum<[16]>;
def A1  : TriCoreReg<1,  "a1">, DwarfRegNum<[17]>;
def A2  : TriCoreReg<2,  "a2">, DwarfRegNum<[18]>;
def A3  : TriCoreReg<3,  "a3">, DwarfRegNum<[19]>;
def A4  : TriCoreReg<4,  "a4">, DwarfRegNum<[20]>;
def A5  : TriCoreReg<5,  "a5">, DwarfRegNum<[21]>;
def A6  : TriCoreReg<6,  "a6">, DwarfRegNum<[22]>;
def A7  : TriCoreReg<7,  "a7">, DwarfRegNum<[23]>;
def A8  : TriCoreReg<8,  "a8">, DwarfRegNum<[24]>;
def A9  : TriCoreReg<9,  "a9">, DwarfRegNum<[25]>;
let AltNames = ["SP", "sp"] in
def A10 : TriCoreReg<10, "a10">, DwarfRegNum<[26]>;
def A11 : TriCoreReg<11, "a11">, DwarfRegNum<[27]>;
def A12 : TriCoreReg<12, "a12">, DwarfRegNum<[28]>;
def A13 : TriCoreReg<13, "a13">, DwarfRegNum<[29]>;
def A14 : TriCoreReg<14, "a14">, DwarfRegNum<[30]>;
def A15 : TriCoreReg<15, "a15">, DwarfRegNum<[31]>;

let Namespace = "TriCore" in {
  def dsub0 : SubRegIndex<32>;
  def dsub1 : SubRegIndex<32, 32>;
  def asub0 : SubRegIndex<32>;
  def asub1 : SubRegIndex<32, 32>;
  def psw_c : SubRegIndex<1, 31>;
}
// Extended data registers
let SubRegIndices = [dsub0, dsub1] in {
    def E0  : TriCoreReg<0,   "e0",  [D0,D1] >, DwarfRegNum<[32]>;
    def E2  : TriCoreReg<2,   "e2",  [D2,D3] >, DwarfRegNum<[33]>;
    def E4  : TriCoreReg<4,   "e4",  [D4,D5] >, DwarfRegNum<[34]>;
    def E6  : TriCoreReg<6,   "e6",  [D6,D7] >, DwarfRegNum<[35]>;
    def E8  : TriCoreReg<8,   "e8",  [D8,D9] >, DwarfRegNum<[36]>;
    def E10 : TriCoreReg<10,  "e10", [D10,D11] >, DwarfRegNum<[37]>;
    def E12 : TriCoreReg<12,  "e12", [D12,D13] >, DwarfRegNum<[38]>;
    def E14 : TriCoreReg<14,  "e14", [D14,D15] >, DwarfRegNum<[39]>;
}

// Extended address registers
let SubRegIndices = [asub0, asub1] in {
    def P0  : TriCoreReg<0,   "p0",  [A0,A1]>;
    def P2  : TriCoreReg<2,   "p2",  [A2,A3]>;
    def P4  : TriCoreReg<4,   "p4",  [A4,A5]>;
    def P6  : TriCoreReg<6,   "p6",  [A6,A7]>;
    def P8  : TriCoreReg<8,   "p8",  [A8,A9]>;
    def P10 : TriCoreReg<10,  "p10", [A10,A11]>;
    def P12 : TriCoreReg<12,  "p12", [A12,A13]>;
    def P14 : TriCoreReg<14,  "p14", [A14,A15]>;
}

// Pseudo carry-bit register used for code-gen only. Should never be emitted.
def PSW_C : TriCoreReg<0, "PSW.C">;

// Control registers
let SubRegIndices = [psw_c] in
def PSW  : TriCoreReg<0,  "PSW", [PSW_C]>, DwarfRegNum<[40]>;
def PCXI : TriCoreReg<0,  "PCXI"        >, DwarfRegNum<[41]>;
def PC   : TriCoreReg<0,  "PC"          >, DwarfRegNum<[42]>;
def FCX  : TriCoreReg<0,  "FCX"         >, DwarfRegNum<[43]>;
def LCX  : TriCoreReg<0,  "LCX"         >, DwarfRegNum<[44]>;
def ISP  : TriCoreReg<0,  "ISP"         >, DwarfRegNum<[45]>;
def ICR  : TriCoreReg<0,  "ICR"         >, DwarfRegNum<[46]>;
def PIPN : TriCoreReg<0,  "PIPN"        >, DwarfRegNum<[47]>;
def BIV  : TriCoreReg<0,  "BIV"         >, DwarfRegNum<[48]>;
def BTV  : TriCoreReg<0,  "BTV"         >, DwarfRegNum<[49]>;

//===----------------------------------------------------------------------===//
// Register classes
//===----------------------------------------------------------------------===//

def DataRegs : RegisterClass<"TriCore", [i32, f32], 32, (add D15,
                                                   (sequence "D%u", 0, 14)
                            )>;

def AddrRegs : RegisterClass<"TriCore", [i32], 32, (add A15,
                                                      (sequence "A%u", 2, 7),
                                                      (sequence "A%u", 12, 14),
                                                      (sequence "A%u", 10, 11),
                                                      (sequence "A%u", 0, 1),
                                                      (sequence "A%u", 8, 9)
                                )>;

def ExtDataRegs : RegisterClass<"TriCore", [i64, f64], 32, (add E0, E2, E4, E6,
                                                            E8, E10, E12, E14)>;

def ExtAddrRegs : RegisterClass<"TriCore", [i64], 32, (add P0, P2, P4, P6, P8,
                                                            P10, P12, P14)>;

def ImplDataReg : RegisterClass<"TriCore", [i32, f32], 32, (add D15)>;

def ImplAddrReg : RegisterClass<"TriCore", [i32], 32, (add A15)>;

def ImplStackPtrReg : RegisterClass<"TriCore", [i32], 32, (add A10)>;

def CarryReg : RegisterClass<"TriCore", [i1], 32, (add PSW_C)> {
  // Don't allow copying of carry bit register
  let CopyCost = -1;

  // This pseudo register is not allocatable
  let isAllocatable = 0;
}
