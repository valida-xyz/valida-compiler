//===- TriCoreSystemOperands.td ----------------------------*- tablegen -*-===//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file defines the symbolic operands permitted for various kinds of
// TriCore system instruction.
//
//===----------------------------------------------------------------------===//

include "llvm/TableGen/SearchableTable.td"

//===----------------------------------------------------------------------===//
// MFCR/MFDCR/MTCR/MTDCR (system register read/write) instruction options.
//===----------------------------------------------------------------------===//

class SysReg<string name, bits<16> encoding> : SearchableTable {
    let SearchableFields = ["Name", "Encoding"];
    let EnumValueField = "Encoding";

    string Name = name;
    bits<16> Encoding = encoding;
    bit Readable = ?;
    bit Writeable = ?;
    code Requires = [{ {} }];
}

class RWSysReg<string name, bits<16> encoding> : SysReg<name, encoding> {
    let Readable = 1;
    let Writeable = 1;
}

class ROSysReg<string name, bits<16> encoding> : SysReg<name, encoding> {
    let Readable = 1;
    let Writeable = 0;
}

class WOSysReg<string name, bits<16> encoding> : SysReg<name, encoding> {
    let Readable = 0;
    let Writeable = 1;
}

//===----------------------
// Read-only regs
//===----------------------

def : ROSysReg<"cpu_id",        0xFE18>;
def : ROSysReg<"cus_id",        0xFE50>;
def : ROSysReg<"dcon2",         0x9000>;
def : ROSysReg<"deadd",         0x901C>;
def : ROSysReg<"diear",         0x9020>;
def : ROSysReg<"fpu_trap_opc",  0xA008>;
def : ROSysReg<"fpu_trap_pc",   0xA004>;
def : ROSysReg<"fpu_trap_src1", 0xA010>;
def : ROSysReg<"fpu_trap_src2", 0xA014>;
def : ROSysReg<"fpu_trap_src3", 0xA018>;
def : ROSysReg<"pc",            0xFE08>;
def : ROSysReg<"pcon2",         0x9208>;
def : ROSysReg<"piear",         0x9210>;
def : ROSysReg<"pma2",          0x8108>;
def : ROSysReg<"tps_con",       0xE400>;
def : ROSysReg<"trig_acc",      0xFD30>;

//===----------------------
// Read-write regs
//===----------------------

def : RWSysReg<"biv",           0xFE20>;
def : RWSysReg<"btv",           0xFE24>;
def : RWSysReg<"ccnt",          0xFC04>;
def : RWSysReg<"cctrl",         0xFC00>;
def : RWSysReg<"compat",        0x9400>;
def : RWSysReg<"core_id",       0xFE1C>;
def : RWSysReg<"cpr0_l",        0xD000>;
def : RWSysReg<"cpr0_u",        0xD004>;
def : RWSysReg<"cpr1_l",        0xD008>;
def : RWSysReg<"cpr1_u",        0xD00C>;
def : RWSysReg<"cpr2_l",        0xD010>;
def : RWSysReg<"cpr2_u",        0xD014>;
def : RWSysReg<"cpr3_l",        0xD018>;
def : RWSysReg<"cpr3_u",        0xD01C>;
def : RWSysReg<"cpr4_l",        0xD020>;
def : RWSysReg<"cpr4_u",        0xD024>;
def : RWSysReg<"cpr5_l",        0xD028>;
def : RWSysReg<"cpr5_u",        0xD02C>;
def : RWSysReg<"cpr6_l",        0xD030>;
def : RWSysReg<"cpr6_u",        0xD034>;
def : RWSysReg<"cpr7_l",        0xD038>;
def : RWSysReg<"cpr7_u",        0xD03C>;
def : RWSysReg<"cpxe0",         0xE000>;
def : RWSysReg<"cpxe1",         0xE004>;
def : RWSysReg<"cpxe2",         0xE008>;
def : RWSysReg<"cpxe3",         0xE00C>;
def : RWSysReg<"cpxe_0",        0xE000>;
def : RWSysReg<"cpxe_1",        0xE004>;
def : RWSysReg<"cpxe_2",        0xE008>;
def : RWSysReg<"cpxe_3",        0xE00C>;
def : RWSysReg<"crevt",         0xFD0C>;
def : RWSysReg<"datr",          0x9018>;
def : RWSysReg<"dbgsr",         0xFD00>;
def : RWSysReg<"dbgtcr",        0xFD48>;
def : RWSysReg<"dcon0",         0x9040>;
def : RWSysReg<"dcx",           0xFD44>;
def : RWSysReg<"dietr",         0x9024>;
def : RWSysReg<"dms",           0xFD40>;
def : RWSysReg<"dpr0_l",        0xC000>;
def : RWSysReg<"dpr0_u",        0xC004>;
def : RWSysReg<"dpr10_l",       0xC050>;
def : RWSysReg<"dpr10_u",       0xC054>;
def : RWSysReg<"dpr11_l",       0xC058>;
def : RWSysReg<"dpr11_u",       0xC05C>;
def : RWSysReg<"dpr12_l",       0xC060>;
def : RWSysReg<"dpr12_u",       0xC064>;
def : RWSysReg<"dpr13_l",       0xC068>;
def : RWSysReg<"dpr13_u",       0xC06C>;
def : RWSysReg<"dpr14_l",       0xC070>;
def : RWSysReg<"dpr14_u",       0xC074>;
def : RWSysReg<"dpr15_l",       0xC078>;
def : RWSysReg<"dpr15_u",       0xC07C>;
def : RWSysReg<"dpr1_l",        0xC008>;
def : RWSysReg<"dpr1_u",        0xC00C>;
def : RWSysReg<"dpr2_l",        0xC010>;
def : RWSysReg<"dpr2_u",        0xC014>;
def : RWSysReg<"dpr3_l",        0xC018>;
def : RWSysReg<"dpr3_u",        0xC01C>;
def : RWSysReg<"dpr4_l",        0xC020>;
def : RWSysReg<"dpr4_u",        0xC024>;
def : RWSysReg<"dpr5_l",        0xC028>;
def : RWSysReg<"dpr5_u",        0xC02C>;
def : RWSysReg<"dpr6_l",        0xC030>;
def : RWSysReg<"dpr6_u",        0xC034>;
def : RWSysReg<"dpr7_l",        0xC038>;
def : RWSysReg<"dpr7_u",        0xC03C>;
def : RWSysReg<"dpr8_l",        0xC040>;
def : RWSysReg<"dpr8_u",        0xC044>;
def : RWSysReg<"dpr9_l",        0xC048>;
def : RWSysReg<"dpr9_u",        0xC04C>;
def : RWSysReg<"dpre0",         0xE010>;
def : RWSysReg<"dpre1",         0xE014>;
def : RWSysReg<"dpre2",         0xE018>;
def : RWSysReg<"dpre3",         0xE01C>;
def : RWSysReg<"dpre_0",        0xE010>;
def : RWSysReg<"dpre_1",        0xE014>;
def : RWSysReg<"dpre_2",        0xE018>;
def : RWSysReg<"dpre_3",        0xE01C>;
def : RWSysReg<"dpwe0",         0xE020>;
def : RWSysReg<"dpwe1",         0xE024>;
def : RWSysReg<"dpwe2",         0xE028>;
def : RWSysReg<"dpwe3",         0xE02C>;
def : RWSysReg<"dpwe_0",        0xE020>;
def : RWSysReg<"dpwe_1",        0xE024>;
def : RWSysReg<"dpwe_2",        0xE028>;
def : RWSysReg<"dpwe_3",        0xE02C>;
def : RWSysReg<"dstr",          0x9010>;
def : RWSysReg<"exevt",         0xFD08>;
def : RWSysReg<"fcx",           0xFE38>;
def : RWSysReg<"fpu_trap_con",  0xA000>;
def : RWSysReg<"icnt",          0xFC08>;
def : RWSysReg<"icr",           0xFE2C>;
def : RWSysReg<"isp",           0xFE28>;
def : RWSysReg<"lcx",           0xFE3C>;
def : RWSysReg<"m1cnt",         0xFC0C>;
def : RWSysReg<"m2cnt",         0xFC10>;
def : RWSysReg<"m3cnt",         0xFC14>;
def : RWSysReg<"pcon0",         0x920C>;
def : RWSysReg<"pcon1",         0x9204>;
def : RWSysReg<"pcxi",          0xFE00>;
def : RWSysReg<"pietr",         0x9214>;
def : RWSysReg<"pma0",          0x8100>;
def : RWSysReg<"pma1",          0x8104>;
def : RWSysReg<"pstr",          0x9200>;
def : RWSysReg<"psw",           0xFE04>;
def : RWSysReg<"segen",         0x1030>;
def : RWSysReg<"smacon",        0x900C>;
def : RWSysReg<"swevt",         0xFD10>;
def : RWSysReg<"syscon",        0xFE14>;
def : RWSysReg<"task_asi",      0x8004>;
def : RWSysReg<"tps_timer0",    0xE404>;
def : RWSysReg<"tps_timer1",    0xE408>;
def : RWSysReg<"tps_timer2",    0xE40C>;
def : RWSysReg<"tr0adr",        0xF004>;
def : RWSysReg<"tr0evt",        0xF000>;
def : RWSysReg<"tr0_adr",       0xF004>;
def : RWSysReg<"tr0_evt",       0xF000>;
def : RWSysReg<"tr1adr",        0xF00C>;
def : RWSysReg<"tr1evt",        0xF008>;
def : RWSysReg<"tr1_adr",       0xF00C>;
def : RWSysReg<"tr1_evt",       0xF008>;
def : RWSysReg<"tr2adr",        0xF014>;
def : RWSysReg<"tr2evt",        0xF010>;
def : RWSysReg<"tr2_adr",       0xF014>;
def : RWSysReg<"tr2_evt",       0xF010>;
def : RWSysReg<"tr3adr",        0xF01C>;
def : RWSysReg<"tr3evt",        0xF018>;
def : RWSysReg<"tr3_adr",       0xF01C>;
def : RWSysReg<"tr3_evt",       0xF018>;
def : RWSysReg<"tr4adr",        0xF024>;
def : RWSysReg<"tr4evt",        0xF020>;
def : RWSysReg<"tr4_adr",       0xF024>;
def : RWSysReg<"tr4_evt",       0xF020>;
def : RWSysReg<"tr5adr",        0xF02C>;
def : RWSysReg<"tr5evt",        0xF028>;
def : RWSysReg<"tr5_adr",       0xF02C>;
def : RWSysReg<"tr5_evt",       0xF028>;
def : RWSysReg<"tr6adr",        0xF034>;
def : RWSysReg<"tr6evt",        0xF030>;
def : RWSysReg<"tr6_adr",       0xF034>;
def : RWSysReg<"tr6_evt",       0xF030>;
def : RWSysReg<"tr7adr",        0xF03C>;
def : RWSysReg<"tr7evt",        0xF038>;
def : RWSysReg<"tr7_adr",       0xF03C>;
def : RWSysReg<"tr7_evt",       0xF038>;
