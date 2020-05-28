//==-- TriCoreCompressPatterns.td -----------------------------*- tablegen -*-//
//
// Part of the LLVM Project, under the Apache License v2.0 with LLVM Exceptions.
// See https://llvm.org/LICENSE.txt for license information.
// SPDX-License-Identifier: Apache-2.0 WITH LLVM-exception
//
//===----------------------------------------------------------------------===//
//
// This file describes the TriCore instruction compression patterns.
//
//===----------------------------------------------------------------------===//

include "TriCore.td"

class CompressPat<dag input, dag output> {
  dag Input = input;
  dag Output = output;
  list<Predicate> Predicates = [Is16BitAllowed];
}


def : CompressPat<(ADD_ddd DataRegs:$d1, DataRegs:$d1, DataRegs:$d2),
                  (ADD_16_dd DataRegs:$d1, DataRegs:$d2)>;

// for commutability
def : CompressPat<(ADD_ddd DataRegs:$d1, DataRegs:$d2, DataRegs:$d1),
                  (ADD_16_dd DataRegs:$d1, DataRegs:$d2)>;

def : CompressPat<(ADD_ddc DataRegs:$d1, DataRegs:$d1, simm4:$c),
                  (ADD_16_dc DataRegs:$d1, simm4:$c)>;

def : CompressPat<(ADDA_aaa AddrRegs:$a1, AddrRegs:$a1, AddrRegs:$a2),
                  (ADDA_16_aa AddrRegs:$a1, AddrRegs:$a2)>;

// for commutability
def : CompressPat<(ADDA_aaa AddrRegs:$a1, AddrRegs:$a2, AddrRegs:$a1),
                  (ADDA_16_aa AddrRegs:$a1, AddrRegs:$a2)>;

def : CompressPat<(ADDS_ddd DataRegs:$d1, DataRegs:$d1, DataRegs:$d2),
                  (ADDS_16_dd DataRegs:$d1, DataRegs:$d2)>;

// for commutability
def : CompressPat<(ADDS_ddd DataRegs:$d1, DataRegs:$d2, DataRegs:$d1),
                  (ADDS_16_dd DataRegs:$d1, DataRegs:$d2)>;

def : CompressPat<(ADDSCA_aadc AddrRegs:$a1, AddrRegs:$a2,
                   ImplDataReg:$d15, uimm2:$c),
                  (ADDSCA_16_aad15c AddrRegs:$a1, AddrRegs:$a2,
                   ImplDataReg:$d15, uimm2:$c)>;

def : CompressPat<(AND_ddd DataRegs:$d1, DataRegs:$d1, DataRegs:$d2),
                  (AND_16_dd DataRegs:$d1, DataRegs:$d2)>;

// for commutability
def : CompressPat<(AND_ddd DataRegs:$d1, DataRegs:$d2, DataRegs:$d1),
                  (AND_16_dd DataRegs:$d1, DataRegs:$d2)>;

def : CompressPat<(AND_ddc ImplDataReg:$d15, ImplDataReg:$d15, uimm8:$c),
                  (AND_16_d15c ImplDataReg:$d15, uimm8:$c)>;

def : CompressPat<(CADD_dddc DataRegs:$d, ImplDataReg:$d15, DataRegs:$d,
                   simm4:$c),
                  (CADD_16_dd15c DataRegs:$d, ImplDataReg:$d15, simm4:$c)>;

def : CompressPat<(CADDN_dddc DataRegs:$d, ImplDataReg:$d15, DataRegs:$d,
                   simm4:$c),
                  (CADDN_16_dd15c DataRegs:$d, ImplDataReg:$d15, simm4:$c)>;

def : CompressPat<(JEQ_dcc ImplDataReg:$d15, 0, simm8_lsb0:$c),
                  (JZ_16_d15c ImplDataReg:$d15, simm8_lsb0:$c)>;

def : CompressPat<(JEQ_dcc DataRegs:$d, 0, uimm4_lsb0:$c),
                  (JZ_16_dc DataRegs:$d, uimm4_lsb0:$c)>;

def : CompressPat<(JGE_dcc DataRegs:$d, 1, uimm4_lsb0:$c),
                  (JGTZ_16_dc DataRegs:$d, uimm4_lsb0:$c)>;

def : CompressPat<(JGE_dcc DataRegs:$d, 0, uimm4_lsb0:$c),
                  (JGEZ_16_dc DataRegs:$d, uimm4_lsb0:$c)>;

def : CompressPat<(JLT_dcc DataRegs:$d, 1, uimm4_lsb0:$c),
                  (JLEZ_16_dc DataRegs:$d, uimm4_lsb0:$c)>;

def : CompressPat<(JLT_dcc DataRegs:$d, 0, uimm4_lsb0:$c),
                  (JLTZ_16_dc DataRegs:$d, uimm4_lsb0:$c)>;

def : CompressPat<(JNE_dcc ImplDataReg:$d15, 0, simm8_lsb0:$c),
                  (JNZ_16_d15c ImplDataReg:$d15, simm8_lsb0:$c)>;

def : CompressPat<(JNE_dcc DataRegs:$d, 0, uimm4_lsb0:$c),
                  (JNZ_16_dc DataRegs:$d, uimm4_lsb0:$c)>;

def : CompressPat<(LDA_aalc AddrRegs:$a1, AddrRegs:$a2, 0),
                  (LDA_16_aa AddrRegs:$a1, AddrRegs:$a2)>;

def : CompressPat<(LDBU_dalc DataRegs:$d, AddrRegs:$a, 0),
                  (LDBU_16_da DataRegs:$d, AddrRegs:$a)>;

def : CompressPat<(LDH_dalc DataRegs:$d, AddrRegs:$a, 0),
                  (LDH_16_da DataRegs:$d, AddrRegs:$a)>;

def : CompressPat<(LDW_dalc DataRegs:$d, AddrRegs:$a, 0),
                  (LDW_16_da DataRegs:$d, AddrRegs:$a)>;

def : CompressPat<(LEA_ac AddrRegs:$a, uimm4:$c),
                  (MOVA_16_ac AddrRegs:$a, uimm4:$c)>;

def : CompressPat<(LEA_aac AddrRegs:$a, AddrRegs:$a, simm4:$c),
                  (ADDA_16_ac AddrRegs:$a, simm4:$c)>;

def : CompressPat<(MUL_ddd DataRegs:$d1, DataRegs:$d1, DataRegs:$d2),
                  (MUL_16_dd DataRegs:$d1, DataRegs:$d2)>;

// for commutability
def : CompressPat<(MUL_ddd DataRegs:$d1, DataRegs:$d2, DataRegs:$d1),
                  (MUL_16_dd DataRegs:$d1, DataRegs:$d2)>;

def : CompressPat<(NOR_ddc DataRegs:$d, DataRegs:$d, 0),
                  (NOT_16_d DataRegs:$d)>;

def : CompressPat<(OR_ddd DataRegs:$d1, DataRegs:$d1, DataRegs:$d2),
                  (OR_16_dd DataRegs:$d1, DataRegs:$d2)>;

// for commutability
def : CompressPat<(OR_ddd DataRegs:$d1, DataRegs:$d2, DataRegs:$d1),
                  (OR_16_dd DataRegs:$d1, DataRegs:$d2)>;

def : CompressPat<(OR_ddc ImplDataReg:$d15, ImplDataReg:$d15, uimm8:$c),
                  (OR_16_d15c ImplDataReg:$d15, uimm8:$c)>;

def : CompressPat<(RSUB_ddc DataRegs:$d, DataRegs:$d, 0),
                  (RSUB_16_d DataRegs:$d)>;

def : CompressPat<(SATB_dd DataRegs:$d, DataRegs:$d),
                  (SATB_16_d DataRegs:$d)>;

def : CompressPat<(SATH_dd DataRegs:$d, DataRegs:$d),
                  (SATH_16_d DataRegs:$d)>;

def : CompressPat<(SATBU_dd DataRegs:$d, DataRegs:$d),
                  (SATBU_16_d DataRegs:$d)>;

def : CompressPat<(SATHU_dd DataRegs:$d, DataRegs:$d),
                  (SATHU_16_d DataRegs:$d)>;

def : CompressPat<(SEL_dddc DataRegs:$d, ImplDataReg:$d15, DataRegs:$d,
                   simm4:$c),
                  (CMOVN_16_dd15c DataRegs:$d, ImplDataReg:$d15, simm4:$c)>;

def : CompressPat<(SELN_dddc DataRegs:$d, ImplDataReg:$d15, DataRegs:$d,
                   simm4:$c),
                  (CMOV_16_dd15c DataRegs:$d, ImplDataReg:$d15, simm4:$c)>;

def : CompressPat<(SH_ddc DataRegs:$d, DataRegs:$d, simm4:$c),
                  (SH_16_dc DataRegs:$d, simm4:$c)>;

def : CompressPat<(SHA_ddc DataRegs:$d, DataRegs:$d, simm4:$c),
                  (SHA_16_dc DataRegs:$d, simm4:$c)>;

def : CompressPat<(STA_alca AddrRegs:$a1, 0, AddrRegs:$a2),
                  (STA_16_aa AddrRegs:$a1, AddrRegs:$a2)>;

def : CompressPat<(STB_alcd AddrRegs:$a, 0, DataRegs:$d),
                  (STB_16_ad AddrRegs:$a, DataRegs:$d)>;

def : CompressPat<(STH_alcd AddrRegs:$a, 0, DataRegs:$d),
                  (STH_16_ad AddrRegs:$a, DataRegs:$d)>;

def : CompressPat<(STW_alcd AddrRegs:$a, 0, DataRegs:$d),
                  (STW_16_ad AddrRegs:$a, DataRegs:$d)>;

def : CompressPat<(SUB_ddd DataRegs:$d1, DataRegs:$d1, DataRegs:$d2),
                  (SUB_16_dd DataRegs:$d1, DataRegs:$d2)>;

def : CompressPat<(SUBS_ddd DataRegs:$d1, DataRegs:$d1, DataRegs:$d2),
                  (SUBS_16_dd DataRegs:$d1, DataRegs:$d2)>;

def : CompressPat<(XOR_ddd DataRegs:$d1, DataRegs:$d1, DataRegs:$d2),
                  (XOR_16_dd DataRegs:$d1, DataRegs:$d2)>;

// for commutability
def : CompressPat<(XOR_ddd DataRegs:$d1, DataRegs:$d2, DataRegs:$d1),
                  (XOR_16_dd DataRegs:$d1, DataRegs:$d2)>;

// Trivial patterns

def : CompressPat<(ADD_ddc ImplDataReg:$d15, DataRegs:$d, simm4:$c),
                  (ADD_16_d15dc ImplDataReg:$d15, DataRegs:$d, simm4:$c)>;

def : CompressPat<(ADD_ddd ImplDataReg:$d15, DataRegs:$d1, DataRegs:$d2),
                  (ADD_16_d15dd ImplDataReg:$d15, DataRegs:$d1, DataRegs:$d2)>;

def : CompressPat<(ADD_ddc DataRegs:$d, ImplDataReg:$d15, simm4:$c),
                  (ADD_16_dd15c DataRegs:$d, ImplDataReg:$d15, simm4:$c)>;

def : CompressPat<(ADD_ddd DataRegs:$d1, ImplDataReg:$d15, DataRegs:$d2),
                  (ADD_16_dd15d DataRegs:$d1, ImplDataReg:$d15, DataRegs:$d2)>;

def : CompressPat<(BISR_c uimm8:$c), (BISR_16_c uimm8:$c)>;

def : CompressPat<(CALL simm8_lsb0:$c), (CALL_16 simm8_lsb0:$c)>;

def : CompressPat<(CALLI AddrRegs:$a), (CALLI_16_a AddrRegs:$a)>;

def : CompressPat<(DEBUG), (DEBUG_16)>;

def : CompressPat<(FRET), (FRET_16)>;

def : CompressPat<(EQ_ddc ImplDataReg:$d15, DataRegs:$d, simm4:$c),
                  (EQ_16_d15dc ImplDataReg:$d15, DataRegs:$d, simm4:$c)>;

def : CompressPat<(EQ_ddd ImplDataReg:$d15, DataRegs:$d1, DataRegs:$d2),
                  (EQ_16_d15dd ImplDataReg:$d15, DataRegs:$d1, DataRegs:$d2)>;

def : CompressPat<(J simm8_lsb0:$c), (J_16 simm8_lsb0:$c)>;

def : CompressPat<(JI AddrRegs:$a), (JI_16 AddrRegs:$a)>;

def : CompressPat<(JEQ_dcc ImplDataReg:$d15, simm4:$c1, uimm4_lsb0:$c2),
                  (JEQ_16_d15cc ImplDataReg:$d15, simm4:$c1, uimm4_lsb0:$c2)>;

def : CompressPat<(JEQ_dcc ImplDataReg:$d15, simm4:$c1, disp4_16:$c2),
                  (JEQ_16_d15clc ImplDataReg:$d15, simm4:$c1, disp4_16:$c2)>;

def : CompressPat<(JEQ_ddc ImplDataReg:$d15, DataRegs:$d, uimm4_lsb0:$c),
                  (JEQ_16_d15dc ImplDataReg:$d15, DataRegs:$d, uimm4_lsb0:$c)>;

def : CompressPat<(JEQ_ddc ImplDataReg:$d15, DataRegs:$d, disp4_16:$c),
                  (JEQ_16_d15dlc ImplDataReg:$d15, DataRegs:$d, disp4_16:$c)>;

def : CompressPat<(JNE_dcc ImplDataReg:$d15, simm4:$c1, uimm4_lsb0:$c2),
                  (JNE_16_d15cc ImplDataReg:$d15, simm4:$c1, uimm4_lsb0:$c2)>;

def : CompressPat<(JNE_dcc ImplDataReg:$d15, simm4:$c1, disp4_16:$c2),
                  (JNE_16_d15clc ImplDataReg:$d15, simm4:$c1, disp4_16:$c2)>;

def : CompressPat<(JNE_ddc ImplDataReg:$d15, DataRegs:$d, uimm4_lsb0:$c),
                  (JNE_16_d15dc ImplDataReg:$d15, DataRegs:$d, uimm4_lsb0:$c)>;

def : CompressPat<(JNE_ddc ImplDataReg:$d15, DataRegs:$d, disp4_16:$c),
                  (JNE_16_d15dlc ImplDataReg:$d15, DataRegs:$d, disp4_16:$c)>;

def : CompressPat<(JNZA_ac AddrRegs:$a, uimm4_lsb0:$c),
                  (JNZA_16_ac AddrRegs:$a, uimm4_lsb0:$c)>;

def : CompressPat<(JNZT_dcc ImplDataReg:$d15, uimm4:$c1, uimm4_lsb0:$c2),
                  (JNZT_16_d15cc ImplDataReg:$d15, uimm4:$c1, uimm4_lsb0:$c2)>;

def : CompressPat<(JZA_ac AddrRegs:$a, uimm4_lsb0:$c),
                  (JZA_16_ac AddrRegs:$a, uimm4_lsb0:$c)>;

def : CompressPat<(JZT_dcc ImplDataReg:$d15, uimm4:$c1, uimm4_lsb0:$c2),
                  (JZT_16_d15cc ImplDataReg:$d15, uimm4:$c1, uimm4_lsb0:$c2)>;

def : CompressPat<(LDA_aalc ImplAddrReg:$a15, ImplStackPtrReg:$a10,
                   uimm8_lsb00:$c),
                  (LDA_16_a15a10c ImplAddrReg:$a15, ImplStackPtrReg:$a10,
                   uimm8_lsb00:$c)>;

def : CompressPat<(LDA_aalc ImplAddrReg:$a15, AddrRegs:$a, uimm4_lsb00:$c),
                  (LDA_16_a15ac ImplAddrReg:$a15, AddrRegs:$a, uimm4_lsb00:$c)>;

def : CompressPat<(LDA_aalc AddrRegs:$a, ImplAddrReg:$a15, uimm4_lsb00:$c),
                  (LDA_16_aa15c AddrRegs:$a, ImplAddrReg:$a15, uimm4_lsb00:$c)>;

def : CompressPat<(LDBU_dalc ImplDataReg:$d15, AddrRegs:$a, uimm4_sym:$c),
                  (LDBU_16_d15ac ImplDataReg:$d15, AddrRegs:$a, uimm4_sym:$c)>;

def : CompressPat<(LDBU_dalc DataRegs:$d, ImplAddrReg:$a15, uimm4_sym:$c),
                  (LDBU_16_da15c DataRegs:$d, ImplAddrReg:$a15, uimm4_sym:$c)>;

def : CompressPat<(LDH_dalc ImplDataReg:$d15, AddrRegs:$a, uimm4_lsb0:$c),
                  (LDH_16_d15ac ImplDataReg:$d15, AddrRegs:$a, uimm4_lsb0:$c)>;

def : CompressPat<(LDH_dalc DataRegs:$d, ImplAddrReg:$a15, uimm4_lsb0:$c),
                  (LDH_16_da15c DataRegs:$d, ImplAddrReg:$a15, uimm4_lsb0:$c)>;

def : CompressPat<(LDW_dalc ImplDataReg:$d15, ImplStackPtrReg:$a10,
                   uimm8_lsb00:$c),
                  (LDW_16_d15a10c ImplDataReg:$d15, ImplStackPtrReg:$a10,
                   uimm8_lsb00:$c)>;

def : CompressPat<(LDW_dalc ImplDataReg:$d15, AddrRegs:$a, uimm4_lsb00:$c),
                  (LDW_16_d15ac ImplDataReg:$d15, AddrRegs:$a, uimm4_lsb00:$c)>;

def : CompressPat<(LDW_dalc DataRegs:$d, ImplAddrReg:$a15, uimm4_lsb00:$c),
                  (LDW_16_da15c DataRegs:$d, ImplAddrReg:$a15, uimm4_lsb00:$c)>;

def : CompressPat<(LT_ddc ImplDataReg:$d15, DataRegs:$d, simm4:$c),
                  (LT_16_d15dc ImplDataReg:$d15, DataRegs:$d, simm4:$c)>;

def : CompressPat<(LT_ddd ImplDataReg:$d15, DataRegs:$d1, DataRegs:$d2),
                  (LT_16_d15dd ImplDataReg:$d15, DataRegs:$d1, DataRegs:$d2)>;

def : CompressPat<(MOVAA_aa AddrRegs:$a1, AddrRegs:$a2),
                  (MOVAA_16_aa AddrRegs:$a1, AddrRegs:$a2)>;

def : CompressPat<(MOVA_ad AddrRegs:$a, DataRegs:$d),
                  (MOVA_16_ad AddrRegs:$a, DataRegs:$d)>;

def : CompressPat<(MOVD_da DataRegs:$d, AddrRegs:$a),
                  (MOVD_16_da DataRegs:$d, AddrRegs:$a)>;

def : CompressPat<(MOV_dc ImplDataReg:$d15, uimm8:$c),
                  (MOV_16_d15c ImplDataReg:$d15, uimm8:$c)>;

def : CompressPat<(MOV_dc DataRegs:$d, simm4:$c),
                  (MOV_16_dc DataRegs:$d, simm4:$c)>;

def : CompressPat<(MOV_dd DataRegs:$d1, DataRegs:$d2),
                  (MOV_16_dd DataRegs:$d1, DataRegs:$d2)>;

def : CompressPat<(MOV_ec ExtDataRegs:$d, simm4:$c),
                  (MOV_16_ec ExtDataRegs:$d, simm4:$c)>;

def : CompressPat<(NOP), (NOP_16)>;

def : CompressPat<(RFE), (RFE_16)>;

def : CompressPat<(RET), (RET_16)>;

def : CompressPat<(STA_alca ImplStackPtrReg:$a10,
                   uimm8_lsb00:$c, ImplAddrReg:$a15),
                  (STA_16_a10ca15 ImplStackPtrReg:$a10,
                   uimm8_lsb00:$c, ImplAddrReg:$a15)>;

def : CompressPat<(STA_alca ImplAddrReg:$a15, uimm4_lsb00:$c, AddrRegs:$a),
                  (STA_16_a15ca ImplAddrReg:$a15, uimm4_lsb00:$c, AddrRegs:$a)>;

def : CompressPat<(STA_alca AddrRegs:$a, uimm4_lsb00:$c, ImplAddrReg:$a15),
                  (STA_16_aca15 AddrRegs:$a, uimm4_lsb00:$c, ImplAddrReg:$a15)>;

def : CompressPat<(STB_alcd ImplAddrReg:$a15, uimm4_sym:$c, DataRegs:$d),
                  (STB_16_a15cd ImplAddrReg:$a15, uimm4_sym:$c, DataRegs:$d)>;

def : CompressPat<(STB_alcd AddrRegs:$a, uimm4_sym:$c, ImplDataReg:$d15),
                  (STB_16_acd15 AddrRegs:$a, uimm4_sym:$c, ImplDataReg:$d15)>;

def : CompressPat<(STH_alcd ImplAddrReg:$a15, uimm4_lsb0:$c, DataRegs:$d),
                  (STH_16_a15cd ImplAddrReg:$a15, uimm4_lsb0:$c, DataRegs:$d)>;

def : CompressPat<(STH_alcd AddrRegs:$a, uimm4_lsb0:$c, ImplDataReg:$d15),
                  (STH_16_acd15 AddrRegs:$a, uimm4_lsb0:$c, ImplDataReg:$d15)>;

def : CompressPat<(STW_alcd ImplStackPtrReg:$a10,
                   uimm8_lsb00:$c, ImplDataReg:$d15),
                  (STW_16_a10cd15 ImplStackPtrReg:$a10,
                   uimm8_lsb00:$c, ImplDataReg:$d15)>;

def : CompressPat<(STW_alcd ImplAddrReg:$a15, uimm4_lsb00:$c, DataRegs:$d),
                  (STW_16_a15cd ImplAddrReg:$a15, uimm4_lsb00:$c, DataRegs:$d)>;

def : CompressPat<(STW_alcd AddrRegs:$a, uimm4_lsb00:$c, ImplDataReg:$d15),
                  (STW_16_acd15 AddrRegs:$a, uimm4_lsb00:$c, ImplDataReg:$d15)>;

def : CompressPat<(SUB_ddd ImplDataReg:$d15, DataRegs:$d1, DataRegs:$d2),
                  (SUB_16_d15dd ImplDataReg:$d15, DataRegs:$d1, DataRegs:$d2)>;

def : CompressPat<(SUB_ddd DataRegs:$d1, ImplDataReg:$d15, DataRegs:$d2),
                  (SUB_16_dd15d DataRegs:$d1, ImplDataReg:$d15, DataRegs:$d2)>;
