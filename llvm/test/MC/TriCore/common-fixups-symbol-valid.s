# RUN: llvm-mc -arch=tricore < %s -show-encoding -show-inst\
# RUN:     | FileCheck -check-prefixes=CHECK,FIXUP %s
# RUN: llvm-mc -filetype=obj -arch=tricore < %s \
# RUN:     | llvm-objdump -d - \
# RUN:     | FileCheck -check-prefixes=OBJDUMP,INSTR %s
# RUN: llvm-mc -filetype=obj -arch=tricore < %s \
# RUN:     | llvm-readobj -r | FileCheck -check-prefix=RELOC %s

# Check prefixes:
# RELOC - Check the relocation in the object.
# FIXUP - Check the fixup on the instruction.
# INSTR - Check the instruction is handled properly by the ASMPrinter


##### fixup_lha ################################################################

lha %a0, lha_reloc
# RELOC: 0x0 R_TRICORE_LHA lha_reloc 0x0

lha %a0, lha_valid
# CHECK: encoding: [0xc5,0bAAAA0000,A,0x04'A']
# OBJDUMP: c5 00 01 04
# INSTR: lha %a0, 16384
# FIXUP: fixup A - offset: 0, value: lha_valid, kind: fixup_lha

.set lha_valid, 16384

lha %a0, val_ffffc000
# CHECK: encoding: [0xc5,0bAAAA0000,A,0x04'A']
# OBJDUMP: c5 f0 ff f7
# INSTR: lha %a0, 4294950912
# FIXUP: fixup A - offset: 0, value: val_ffffc000, kind: fixup_lha

.set val_ffffc000, 0xFFFFC000


##### fixup_4rel ###############################################################

### JEQ

## 16_d15dlc

.code32
jeq %d15, %d0, jeq_32_4
# CHECK: encoding: [0x5f,0x0f,A,0b0AAAAAAA]
# OBJDUMP: 5f 0f 02 00
# INSTR: jeq %d15, %d0, 4
# FIXUP: fixup A - offset: 0, value: jeq_32_4, kind: fixup_15rel

jeq_32_4:

jeq %d15, %d0, jeq_2
# CHECK: encoding: [0x3e,0b0000AAAA]
# OBJDUMP: 3e 01
# INSTR: jeq %d15, %d0, 2
# FIXUP: fixup A - offset: 0, value: jeq_2, kind: fixup_4rel

jeq_2:

jeq %d15, %d0, jeq_30
# CHECK: encoding: [0x3e,0b0000AAAA]
# OBJDUMP: 3e 0f
# INSTR: jeq %d15, %d0, 30
# FIXUP: fixup A - offset: 0, value: jeq_30, kind: fixup_4rel

.fill 28
jeq_30:

## 16_d15clc

.code32
jeq %d15, 1, jeq_32_4_v2
# CHECK: encoding: [0xdf,0x1f,A,0b0AAAAAAA]
# OBJDUMP: df 1f 02 00 
# INSTR: jeq %d15, 1, 4
# FIXUP: fixup A - offset: 0, value: jeq_32_4_v2, kind: fixup_15rel

jeq_32_4_v2:

jeq %d15, 1, jeq_2_v2
# CHECK: encoding: [0x1e,0b0001AAAA]
# OBJDUMP: 1e 11
# INSTR: jeq %d15, 1, 2
# FIXUP: fixup A - offset: 0, value: jeq_2_v2, kind: fixup_4rel

jeq_2_v2:

jeq %d15, 1, jeq_30_v2
# CHECK: encoding: [0x1e,0b0001AAAA]
# OBJDUMP: 1e 1f
# INSTR: jeq %d15, 1, 30
# FIXUP: fixup A - offset: 0, value: jeq_30_v2, kind: fixup_4rel

.fill 28
jeq_30_v2:


### JGEZ (16-bit)

jgez_0:

jgez %d0, jgez_0
# CHECK: encoding: [0xce,0b0000AAAA]
# OBJDUMP: ce 00
# INSTR: jgez %d0, 0
# FIXUP: fixup A - offset: 0, value: jgez_0, kind: fixup_4rel

jgez %d0, jgez_30
# CHECK: encoding: [0xce,0b0000AAAA]
# OBJDUMP: ce 0f
# INSTR: jgez %d0, 30
# FIXUP: fixup A - offset: 0, value: jgez_30, kind: fixup_4rel

.fill 28
jgez_30:

## Relaxation

jgez_minus_2:
.fill 2

jgez %d0, jgez_minus_2
# CHECK: encoding: [0xce,0b0000AAAA]
# OBJDUMP: ff 00 ff 7f 
# INSTR: jge %d0, 0, -2
# FIXUP: fixup A - offset: 0, value: jgez_minus_2, kind: fixup_4rel

jgez %d0, jgez_32
# CHECK: encoding: [0xce,0b0000AAAA]
# OBJDUMP: ff 00 11 00
# INSTR: jge %d0, 0, 34
# FIXUP: fixup A - offset: 0, value: jgez_32, kind: fixup_4rel

.fill 30
jgez_32:


### JGTZ (16-bit)

jgtz_0:

jgtz %d0, jgtz_0
# CHECK: encoding: [0x4e,0b0000AAAA]
# OBJDUMP: 4e 00
# INSTR: jgtz %d0, 0
# FIXUP: fixup A - offset: 0, value: jgtz_0, kind: fixup_4rel

jgtz %d0, jgtz_30
# CHECK: encoding: [0x4e,0b0000AAAA]
# OBJDUMP: 4e 0f
# INSTR: jgtz %d0, 30
# FIXUP: fixup A - offset: 0, value: jgtz_30, kind: fixup_4rel

.fill 28
jgtz_30:

## Relaxation

jgtz_minus_2:
.fill 2

jgtz %d0, jgtz_minus_2
# CHECK: encoding: [0x4e,0b0000AAAA]
# OBJDUMP: ff 10 ff 7f 
# INSTR: jge %d0, 1, -2
# FIXUP: fixup A - offset: 0, value: jgtz_minus_2, kind: fixup_4rel

jgtz %d0, jgtz_32
# CHECK: encoding: [0x4e,0b0000AAAA]
# OBJDUMP: ff 10 11 00
# INSTR: jge %d0, 1, 34
# FIXUP: fixup A - offset: 0, value: jgtz_32, kind: fixup_4rel

.fill 30
jgtz_32:


### JLEZ (16-bit)

jlez_0:

jlez %d0, jlez_0
# CHECK: encoding: [0x8e,0b0000AAAA]
# OBJDUMP: 8e 00
# INSTR: jlez %d0, 0
# FIXUP: fixup A - offset: 0, value: jlez_0, kind: fixup_4rel

jlez %d0, jlez_30
# CHECK: encoding: [0x8e,0b0000AAAA]
# OBJDUMP: 8e 0f
# INSTR: jlez %d0, 30
# FIXUP: fixup A - offset: 0, value: jlez_30, kind: fixup_4rel

.fill 28
jlez_30:

## Relaxation

jlez_minus_2:
.fill 2

jlez %d0, jlez_minus_2
# CHECK: encoding: [0x8e,0b0000AAAA]
# OBJDUMP: bf 10 ff 7f 
# INSTR: jlt %d0, 1, -2
# FIXUP: fixup A - offset: 0, value: jlez_minus_2, kind: fixup_4rel

jlez %d0, jlez_32
# CHECK: encoding: [0x8e,0b0000AAAA]
# OBJDUMP: bf 10 11 00
# INSTR: jlt %d0, 1, 34
# FIXUP: fixup A - offset: 0, value: jlez_32, kind: fixup_4rel

.fill 30
jlez_32:


### JLTZ (16-bit)

jltz_0:

jltz %d0, jltz_0
# CHECK: encoding: [0x0e,0b0000AAAA]
# OBJDUMP: 0e 00
# INSTR: jltz %d0, 0
# FIXUP: fixup A - offset: 0, value: jltz_0, kind: fixup_4rel

jltz %d0, jltz_30
# CHECK: encoding: [0x0e,0b0000AAAA]
# OBJDUMP: 0e 0f
# INSTR: jltz %d0, 30
# FIXUP: fixup A - offset: 0, value: jltz_30, kind: fixup_4rel

.fill 28
jltz_30:

## Relaxation

jltz_minus_2:
.fill 2

jltz %d0, jltz_minus_2
# CHECK: encoding: [0x0e,0b0000AAAA]
# OBJDUMP: bf 00 ff 7f 
# INSTR: jlt %d0, 0, -2
# FIXUP: fixup A - offset: 0, value: jltz_minus_2, kind: fixup_4rel

jltz %d0, jltz_32
# CHECK: encoding: [0x0e,0b0000AAAA]
# OBJDUMP: bf 00 11 00
# INSTR: jlt %d0, 0, 34
# FIXUP: fixup A - offset: 0, value: jltz_32, kind: fixup_4rel

.fill 30
jltz_32:


### JNE

## 16_d15dlc

.code32
jne %d15, %d0, jne_32_4
# CHECK: encoding: [0x5f,0x0f,A,0b1AAAAAAA]
# OBJDUMP: 5f 0f 02 80 
# INSTR: jne %d15, %d0, 4
# FIXUP: fixup A - offset: 0, value: jne_32_4, kind: fixup_15rel

jne_32_4:

jne %d15, %d0, jne_2
# CHECK: encoding: [0x7e,0b0000AAAA]
# OBJDUMP: 7e 01
# INSTR: jne %d15, %d0, 2
# FIXUP: fixup A - offset: 0, value: jne_2, kind: fixup_4rel

jne_2:

jne %d15, %d0, jne_30
# CHECK: encoding: [0x7e,0b0000AAAA]
# OBJDUMP: 7e 0f
# INSTR: jne %d15, %d0, 30
# FIXUP: fixup A - offset: 0, value: jne_30, kind: fixup_4rel

.fill 28
jne_30:

## 16_d15clc

jne %d15, 0, jne_2_v2
# CHECK: encoding: [0x5e,0b0000AAAA]
# OBJDUMP: 5e 01
# INSTR: jne %d15, 0, 2
# FIXUP: fixup A - offset: 0, value: jne_2_v2, kind: fixup_4rel

jne_2_v2:

jne %d15, 0, jne_30_v2
# CHECK: encoding: [0x5e,0b0000AAAA]
# OBJDUMP: 5e 0f
# INSTR: jne %d15, 0, 30
# FIXUP: fixup A - offset: 0, value: jne_30_v2, kind: fixup_4rel

.fill 28
jne_30_v2:


### JNZ (16-bit)

jnz_0:

jnz %d0, jnz_0
# CHECK: encoding: [0xf6,0b0000AAAA]
# OBJDUMP: f6 00
# INSTR: jnz %d0, 0
# FIXUP: fixup A - offset: 0, value: jnz_0, kind: fixup_4rel

jnz %d0, jnz_30
# CHECK: encoding: [0xf6,0b0000AAAA]
# OBJDUMP: f6 0f
# INSTR: jnz %d0, 30
# FIXUP: fixup A - offset: 0, value: jnz_30, kind: fixup_4rel

.fill 28
jnz_30:

## Relaxation

jnz_minus_2:
.fill 2

jnz %d0, jnz_minus_2
# CHECK: encoding: [0xf6,0b0000AAAA]
# OBJDUMP: df 00 ff ff 
# INSTR: jne %d0, 0, -2
# FIXUP: fixup A - offset: 0, value: jnz_minus_2, kind: fixup_4rel

jnz %d0, jnz_32
# CHECK: encoding: [0xf6,0b0000AAAA]
# OBJDUMP: df 00 11 80
# INSTR: jne %d0, 0, 34
# FIXUP: fixup A - offset: 0, value: jnz_32, kind: fixup_4rel

.fill 30
jnz_32:


### JNZA

jnza_32_0:

.code32
jnz.a %a0, jnza_32_0
# CHECK: encoding: [0xbd,0x00,A,0b1AAAAAAA]
# OBJDUMP: bd 00 00 80
# INSTR: jnz.a %a0, 0
# FIXUP: fixup A - offset: 0, value: jnza_32_0, kind: fixup_15rel

jnza_0:

jnz.a %a0, jnza_0
# CHECK: encoding: [0x7c,0b0000AAAA]
# OBJDUMP: 7c 00
# INSTR: jnz.a %a0, 0
# FIXUP: fixup A - offset: 0, value: jnza_0, kind: fixup_4rel

jnz.a %a0, jnza_30
# CHECK: encoding: [0x7c,0b0000AAAA]
# OBJDUMP: 7c 0f
# INSTR: jnz.a %a0, 30
# FIXUP: fixup A - offset: 0, value: jnza_30, kind: fixup_4rel

.fill 28
jnza_30:

## Relaxation

jnza_minus_2:
.fill 2

jnz.a %a0, jnza_minus_2
# CHECK: encoding: [0x7c,0b0000AAAA]
# OBJDUMP: bd 00 ff ff 
# INSTR: jnz.a %a0, -2
# FIXUP: fixup A - offset: 0, value: jnza_minus_2, kind: fixup_4rel

jnz.a %a0, jnza_32
# CHECK: encoding: [0x7c,0b0000AAAA]
# OBJDUMP: bd 00 11 80
# INSTR: jnz.a %a0, 34
# FIXUP: fixup A - offset: 0, value: jnza_32, kind: fixup_4rel

.fill 30
jnza_32:


### JNZ.T

jnzt_32_0:

.code32
jnz.t %d15, 0, jnzt_32_0
# CHECK: encoding: [0x6f,0x0f,A,0b1AAAAAAA]
# OBJDUMP:6f 0f 00 80 
# INSTR: jnz.t %d15, 0, 0
# FIXUP: fixup A - offset: 0, value: jnzt_32_0, kind: fixup_15rel

jnzt_0:

jnz.t %d15, 0, jnzt_0
# CHECK: encoding: [0xae,0b0000AAAA]
# OBJDUMP: ae 00
# INSTR: jnz.t %d15, 0, 0
# FIXUP: fixup A - offset: 0, value: jnzt_0, kind: fixup_4rel

jnz.t %d15, 0, jnzt_30
# CHECK: encoding: [0xae,0b0000AAAA]
# OBJDUMP: ae 0f
# INSTR: jnz.t %d15, 0, 30
# FIXUP: fixup A - offset: 0, value: jnzt_30, kind: fixup_4rel

.fill 28
jnzt_30:

## Relaxation

jnzt_minus_2:
.fill 2

jnz.t %d15, 0, jnzt_minus_2
# CHECK: encoding: [0xae,0b0000AAAA]
# OBJDUMP: 6f 0f ff ff 
# INSTR: jnz.t %d15, 0, -2
# FIXUP: fixup A - offset: 0, value: jnzt_minus_2, kind: fixup_4rel

jnz.t %d15, 0, jnzt_32
# CHECK: encoding: [0xae,0b0000AAAA]
# OBJDUMP: 6f 0f 11 80
# INSTR: jnz.t %d15, 0, 34
# FIXUP: fixup A - offset: 0, value: jnzt_32, kind: fixup_4rel

.fill 30
jnzt_32:


### JZ (16-bit)

jz_0:

jz %d0, jz_0
# CHECK: encoding: [0x76,0b0000AAAA]
# OBJDUMP: 76 00
# INSTR: jz %d0, 0
# FIXUP: fixup A - offset: 0, value: jz_0, kind: fixup_4rel

jz %d0, jz_30
# CHECK: encoding: [0x76,0b0000AAAA]
# OBJDUMP: 76 0f
# INSTR: jz %d0, 30
# FIXUP: fixup A - offset: 0, value: jz_30, kind: fixup_4rel

.fill 28
jz_30:

## Relaxation

jz_minus_2:
.fill 2

jz %d0, jz_minus_2
# CHECK: encoding: [0x76,0b0000AAAA]
# OBJDUMP: df 00 ff 7f 
# INSTR: jeq %d0, 0, -2
# FIXUP: fixup A - offset: 0, value: jz_minus_2, kind: fixup_4rel

jz %d0, jz_32
# CHECK: encoding: [0x76,0b0000AAAA]
# OBJDUMP: df 00 11 00
# INSTR: jeq %d0, 0, 34
# FIXUP: fixup A - offset: 0, value: jz_32, kind: fixup_4rel

.fill 30
jz_32:


### JZA

jza_32_0:

.code32
jz.a %a0, jza_32_0
# CHECK: encoding: [0xbd,0x00,A,0b0AAAAAAA]
# OBJDUMP: bd 00 00 00
# INSTR: jz.a %a0, 0
# FIXUP: fixup A - offset: 0, value: jza_32_0, kind: fixup_15rel

jza_0:

jz.a %a0, jza_0
# CHECK: encoding: [0xbc,0b0000AAAA]
# OBJDUMP: bc 00
# INSTR: jz.a %a0, 0
# FIXUP: fixup A - offset: 0, value: jza_0, kind: fixup_4rel

jz.a %a0, jza_30
# CHECK: encoding: [0xbc,0b0000AAAA]
# OBJDUMP: bc 0f
# INSTR: jz.a %a0, 30
# FIXUP: fixup A - offset: 0, value: jza_30, kind: fixup_4rel

.fill 28
jza_30:

## Relaxation

jza_minus_2:
.fill 2

jz.a %a0, jza_minus_2
# CHECK: encoding: [0xbc,0b0000AAAA]
# OBJDUMP: bd 00 ff 7f 
# INSTR: jz.a %a0, -2
# FIXUP: fixup A - offset: 0, value: jza_minus_2, kind: fixup_4rel

jz.a %a0, jza_32
# CHECK: encoding: [0xbc,0b0000AAAA]
# OBJDUMP: bd 00 11 00
# INSTR: jz.a %a0, 34
# FIXUP: fixup A - offset: 0, value: jza_32, kind: fixup_4rel

.fill 30
jza_32:


### JZ.T

jzt_32_0:

.code32
jz.t %d15, 0, jzt_32_0
# CHECK: encoding: [0x6f,0x0f,A,0b0AAAAAAA]
# OBJDUMP: 6f 0f 00 00
# INSTR: jz.t %d15, 0, 0
# FIXUP: fixup A - offset: 0, value: jzt_32_0, kind: fixup_15rel

jzt_0:

jz.t %d15, 0, jzt_0
# CHECK: encoding: [0x2e,0b0000AAAA]
# OBJDUMP: 2e 00
# INSTR: jz.t %d15, 0, 0
# FIXUP: fixup A - offset: 0, value: jzt_0, kind: fixup_4rel

jz.t %d15, 0, jzt_30
# CHECK: encoding: [0x2e,0b0000AAAA]
# OBJDUMP: 2e 0f
# INSTR: jz.t %d15, 0, 30
# FIXUP: fixup A - offset: 0, value: jzt_30, kind: fixup_4rel

.fill 28
jzt_30:

## Relaxation

jzt_minus_2:
.fill 2

jz.t %d15, 0, jzt_minus_2
# CHECK: encoding: [0x2e,0b0000AAAA]
# OBJDUMP: 6f 0f ff 7f 
# INSTR: jz.t %d15, 0, -2
# FIXUP: fixup A - offset: 0, value: jzt_minus_2, kind: fixup_4rel

jz.t %d15, 0, jzt_32
# CHECK: encoding: [0x2e,0b0000AAAA]
# OBJDUMP: 6f 0f 11 00
# INSTR: jz.t %d15, 0, 34
# FIXUP: fixup A - offset: 0, value: jzt_32, kind: fixup_4rel

.fill 30
jzt_32:


##### fixup_4rel2 ##############################################################

### JEQ

## 16_d15dlc

.code32
jeq %d15, %d0, jeq_32_34
# CHECK: encoding: [0x5f,0x0f,A,0b0AAAAAAA]
# OBJDUMP: 5f 0f 11 00
# INSTR: jeq %d15, %d0, 34
# FIXUP: fixup A - offset: 0, value: jeq_32_34, kind: fixup_15rel

.fill 30
jeq_32_34:

jeq %d15, %d0, jeq_32
# CHECK: encoding: [0x3e,0b0000AAAA]
# OBJDUMP: be 00
# INSTR: jeq %d15, %d0, 32
# FIXUP: fixup A - offset: 0, value: jeq_32, kind: fixup_4rel

.fill 30
jeq_32:

jeq %d15, %d0, jeq_62
# CHECK: encoding: [0x3e,0b0000AAAA]
# OBJDUMP: be 0f
# INSTR: jeq %d15, %d0, 62
# FIXUP: fixup A - offset: 0, value: jeq_62, kind: fixup_4rel

.fill 60
jeq_62:

## Relaxation

jeq_minus_2:
.fill 2

jeq %d15, %d0, jeq_minus_2
# CHECK: encoding: [0x3e,0b0000AAAA]
# OBJDUMP: 5f 0f ff 7f
# INSTR: jeq %d15, %d0, -2
# FIXUP: fixup A - offset: 0, value: jeq_minus_2, kind: fixup_4rel

jeq %d15, %d0, jeq_66
# CHECK: encoding: [0x3e,0b0000AAAA]
# OBJDUMP: 5f 0f 21 00
# INSTR: jeq %d15, %d0, 66
# FIXUP: fixup A - offset: 0, value: jeq_66, kind: fixup_4rel

.fill 62
jeq_66:

## 16_d15clc

.code32
jeq %d15, 1, jeq_32_34_v2
# CHECK: encoding: [0xdf,0x1f,A,0b0AAAAAAA]
# OBJDUMP: df 1f 11 00
# INSTR: jeq %d15, 1, 34
# FIXUP: fixup A - offset: 0, value: jeq_32_34_v2, kind: fixup_15rel

.fill 30
jeq_32_34_v2:

jeq %d15, 1, jeq_32_v2
# CHECK: encoding: [0x1e,0b0001AAAA]
# OBJDUMP: 9e 10
# INSTR: jeq %d15, 1, 32
# FIXUP: fixup A - offset: 0, value: jeq_32_v2, kind: fixup_4rel

.fill 30
jeq_32_v2:

jeq %d15, 1, jeq_62_v2
# CHECK: encoding: [0x1e,0b0001AAAA]
# OBJDUMP: 9e 1f
# INSTR: jeq %d15, 1, 62
# FIXUP: fixup A - offset: 0, value: jeq_62_v2, kind: fixup_4rel

.fill 60
jeq_62_v2:

## Relaxation

jeq_minus_2_v2:
.fill 2

jeq %d15, 1, jeq_minus_2_v2
# CHECK: encoding: [0x1e,0b0001AAAA]
# OBJDUMP: df 1f ff 7f
# INSTR: jeq %d15, 1, -2
# FIXUP: fixup A - offset: 0, value: jeq_minus_2_v2, kind: fixup_4rel

jeq %d15, 1, jeq_66_v2
# CHECK: encoding: [0x1e,0b0001AAAA]
# OBJDUMP: df 1f 21 00
# INSTR: jeq %d15, 1, 66
# FIXUP: fixup A - offset: 0, value: jeq_66_v2, kind: fixup_4rel

.fill 62
jeq_66_v2:


### JNE

## 16_d15dlc

.code32
jne %d15, %d0, jne_32_34
# CHECK: encoding: [0x5f,0x0f,A,0b1AAAAAAA]
# OBJDUMP: 5f 0f 11 80
# INSTR: jne %d15, %d0, 34
# FIXUP: fixup A - offset: 0, value: jne_32_34, kind: fixup_15rel

.fill 30
jne_32_34:

.code16
jne %d15, %d0, jne_32
# CHECK: encoding: [0x7e,0b0000AAAA]
# OBJDUMP: fe 00
# INSTR: jne %d15, %d0, 32
# FIXUP: fixup A - offset: 0, value: jne_32, kind: fixup_4rel

.fill 30
jne_32:

.code16
jne %d15, %d0, jne_62
# CHECK: encoding: [0x7e,0b0000AAAA]
# OBJDUMP: fe 0f
# INSTR: jne %d15, %d0, 62
# FIXUP: fixup A - offset: 0, value: jne_62, kind: fixup_4rel

.fill 60
jne_62:

## Relaxation

jne_minus_2:
.fill 2

jne %d15, %d0, jne_minus_2
# CHECK: encoding: [0x7e,0b0000AAAA]
# OBJDUMP: 5f 0f ff ff
# INSTR: jne %d15, %d0, -2
# FIXUP: fixup A - offset: 0, value: jne_minus_2, kind: fixup_4rel

jne %d15, %d0, jne_66
# CHECK: encoding: [0x7e,0b0000AAAA]
# OBJDUMP: 5f 0f 21 80
# INSTR: jne %d15, %d0, 66
# FIXUP: fixup A - offset: 0, value: jne_66, kind: fixup_4rel

.fill 62
jne_66:

## 16_d15clc

.code32
jne %d15, 1, jne_32_34_v2
# CHECK: encoding: [0xdf,0x1f,A,0b1AAAAAAA]
# OBJDUMP: df 1f 11 80
# INSTR: jne %d15, 1, 34
# FIXUP: fixup A - offset: 0, value: jne_32_34_v2, kind: fixup_15rel

.fill 30
jne_32_34_v2:

jne %d15, 1, jne_32_v2
# CHECK: encoding: [0x5e,0b0001AAAA]
# OBJDUMP: de 10
# INSTR: jne %d15, 1, 32
# FIXUP: fixup A - offset: 0, value: jne_32_v2, kind: fixup_4rel

.fill 30
jne_32_v2:

jne %d15, 1, jne_62_v2
# CHECK: encoding: [0x5e,0b0001AAAA]
# OBJDUMP: de 1f
# INSTR: jne %d15, 1, 62
# FIXUP: fixup A - offset: 0, value: jne_62_v2, kind: fixup_4rel

.fill 60
jne_62_v2:

## Relaxation

jne_minus_2_v2:
.fill 2

jne %d15, 1, jne_minus_2_v2
# CHECK: encoding: [0x5e,0b0001AAAA]
# OBJDUMP: df 1f ff ff
# INSTR: jne %d15, 1, -2
# FIXUP: fixup A - offset: 0, value: jne_minus_2_v2, kind: fixup_4rel

jne %d15, 1, jne_66_v2
# CHECK: encoding: [0x5e,0b0001AAAA]
# OBJDUMP: df 1f 21 80
# INSTR: jne %d15, 1, 66
# FIXUP: fixup A - offset: 0, value: jne_66_v2, kind: fixup_4rel

.fill 62
jne_66_v2:


##### fixup_8off ###############################################################

### LD.A

.code32
ld.a %a15, [%a10] constant_0
# CHECK: encoding: [0x99,0xaf,A,A]
# OBJDUMP: 99 af 00 00
# INSTR: ld.a %a15, [%a10], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

ld.a %a15, [%a10] constant_0
# CHECK: encoding: [0xd8,A]
# OBJDUMP: d8 00
# INSTR: ld.a %a15, [%a10], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_8off

ld.a %a15, [%a10] constant_1020
# CHECK: encoding: [0xd8,A]
# OBJDUMP: d8 ff
# INSTR: ld.a %a15, [%a10], 1020
# FIXUP: fixup A - offset: 0, value: constant_1020, kind: fixup_8off

## Relaxation

ld.a %a15, [%a10] constant_minus_4
# CHECK: encoding: [0xd8,A]
# OBJDUMP: 99 af fc ff
# INSTR: ld.a %a15, [%a10], -4
# FIXUP: fixup A - offset: 0, value: constant_minus_4, kind: fixup_8off

ld.a %a15, [%a10] constant_1024
# CHECK: encoding: [0xd8,A]
# OBJDUMP: 99 af 40 00
# INSTR: ld.a %a15, [%a10], 1024
# FIXUP: fixup A - offset: 0, value: constant_1024, kind: fixup_8off


### LD.W

.code32
ld.w %d15, [%a10] constant_0
# CHECK: encoding: [0x19,0xaf,A,A]
# OBJDUMP: 19 af 00 00
# INSTR: ld.w %d15, [%a10], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

ld.w %d15, [%a10] constant_0
# CHECK: encoding: [0x58,A]
# OBJDUMP: 58 00
# INSTR: ld.w %d15, [%a10], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_8off

ld.w %d15, [%a10] constant_1020
# CHECK: encoding: [0x58,A]
# OBJDUMP: 58 ff
# INSTR: ld.w %d15, [%a10], 1020
# FIXUP: fixup A - offset: 0, value: constant_1020, kind: fixup_8off

## Relaxation

ld.w %d15, [%a10] constant_minus_4
# CHECK: encoding: [0x58,A]
# OBJDUMP: 19 af fc ff
# INSTR: ld.w %d15, [%a10], -4
# FIXUP: fixup A - offset: 0, value: constant_minus_4, kind: fixup_8off

ld.w %d15, [%a10] constant_1024
# CHECK: encoding: [0x58,A]
# OBJDUMP: 19 af 40 00
# INSTR: ld.w %d15, [%a10], 1024
# FIXUP: fixup A - offset: 0, value: constant_1024, kind: fixup_8off


### ST.A

.code32
st.a [%a10] constant_0, %a15
# CHECK: encoding: [0xb5,0xaf,A,A]
# OBJDUMP: b5 af 00 00
# INSTR: st.a [%a10], 0, %a15
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

st.a [%a10] constant_0, %a15
# CHECK: encoding: [0xf8,A]
# OBJDUMP: f8 00
# INSTR: st.a [%a10], 0, %a15
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_8off

st.a [%a10] constant_1020, %a15
# CHECK: encoding: [0xf8,A]
# OBJDUMP: f8 ff
# INSTR: st.a [%a10], 1020, %a15
# FIXUP: fixup A - offset: 0, value: constant_1020, kind: fixup_8off

## Relaxation

st.a [%a10] constant_minus_4, %a15
# CHECK: encoding: [0xf8,A]
# OBJDUMP: b5 af fc ff
# INSTR: st.a [%a10], -4, %a15
# FIXUP: fixup A - offset: 0, value: constant_minus_4, kind: fixup_8off

st.a [%a10] constant_1024, %a15
# CHECK: encoding: [0xf8,A]
# OBJDUMP: b5 af 40 00
# INSTR: st.a [%a10], 1024, %a15
# FIXUP: fixup A - offset: 0, value: constant_1024, kind: fixup_8off


### ST.W

.code32
st.w [%a10] constant_0, %d15
# CHECK: encoding: [0x59,0xaf,A,A]
# OBJDUMP: 59 af 00 00
# INSTR: st.w [%a10], 0, %d15
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

st.w [%a10] constant_0, %d15
# CHECK: encoding: [0x78,A]
# OBJDUMP: 78 00
# INSTR: st.w [%a10], 0, %d15
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_8off

st.w [%a10] constant_1020, %d15
# CHECK: encoding: [0x78,A]
# OBJDUMP: 78 ff
# INSTR: st.w [%a10], 1020, %d15
# FIXUP: fixup A - offset: 0, value: constant_1020, kind: fixup_8off

## Relaxation

st.w [%a10] constant_minus_4, %d15
# CHECK: encoding: [0x78,A]
# OBJDUMP: 59 af fc ff
# INSTR: st.w [%a10], -4, %d15
# FIXUP: fixup A - offset: 0, value: constant_minus_4, kind: fixup_8off

st.w [%a10] constant_1024, %d15
# CHECK: encoding: [0x78,A]
# OBJDUMP: 59 af 40 00
# INSTR: st.w [%a10], 1024, %d15
# FIXUP: fixup A - offset: 0, value: constant_1024, kind: fixup_8off


##### fixup_8rel ###############################################################

### CALL

call_32_minus_256:
.fill 256

.code32
call call_32_minus_256
# CHECK: encoding: [0x6d,A,A,A]
# OBJDUMP: 6d ff 80 ff
# INSTR: call -256
# FIXUP: fixup A - offset: 0, value: call_32_minus_256, kind: fixup_24rel

call_minus_256:
.fill 256

call call_minus_256
# CHECK: encoding: [0x5c,A]
# OBJDUMP: 5c 80
# INSTR: call -256
# FIXUP: fixup A - offset: 0, value: call_minus_256, kind: fixup_8rel

call call_254
# CHECK: encoding: [0x5c,A]
# OBJDUMP: 5c 7f
# INSTR: call 254
# FIXUP: fixup A - offset: 0, value: call_254, kind: fixup_8rel

.fill 252
call_254:

## Relaxation

call_minus_258:
.fill 258

call call_minus_258
# CHECK: encoding: [0x5c,A]
# OBJDUMP: 6d ff 7f ff 
# INSTR: call -258
# FIXUP: fixup A - offset: 0, value: call_minus_258, kind: fixup_8rel

call call_256
# CHECK: encoding: [0x5c,A]
# OBJDUMP: 6d 00 81 00 
# INSTR: call 258
# FIXUP: fixup A - offset: 0, value: call_256, kind: fixup_8rel

.fill 254
call_256:


### J

j_32_minus_256:
.fill 256

.code32
j j_32_minus_256
# CHECK: encoding: [0x1d,A,A,A]
# OBJDUMP: 1d ff 80 ff
# INSTR: j -256
# FIXUP: fixup A - offset: 0, value: j_32_minus_256, kind: fixup_24rel

j_minus_256:
.fill 256

j j_minus_256
# CHECK: encoding: [0x3c,A]
# OBJDUMP: 3c 80
# INSTR: j -256
# FIXUP: fixup A - offset: 0, value: j_minus_256, kind: fixup_8rel

j j_254
# CHECK: encoding: [0x3c,A]
# OBJDUMP: 3c 7f
# INSTR: j 254
# FIXUP: fixup A - offset: 0, value: j_254, kind: fixup_8rel

.fill 252
j_254:

## Relaxation

j_minus_258:
.fill 258

j j_minus_258
# CHECK: encoding: [0x3c,A]
# OBJDUMP: 1d ff 7f ff 
# INSTR: j -258
# FIXUP: fixup A - offset: 0, value: j_minus_258, kind: fixup_8rel

j j_256
# CHECK: encoding: [0x3c,A]
# OBJDUMP: 1d 00 81 00 
# INSTR: j 258
# FIXUP: fixup A - offset: 0, value: j_256, kind: fixup_8rel

.fill 254
j_256:


### JNZ (16-bit)

jnz_minus_256:
.fill 256

jnz %d15, jnz_minus_256
# CHECK: encoding: [0xee,A]
# OBJDUMP: ee 80
# INSTR: jnz %d15, -256
# FIXUP: fixup A - offset: 0, value: jnz_minus_256, kind: fixup_8rel

jnz %d15, jnz_254
# CHECK: encoding: [0xee,A]
# OBJDUMP: ee 7f
# INSTR: jnz %d15, 254
# FIXUP: fixup A - offset: 0, value: jnz_254, kind: fixup_8rel

.fill 252
jnz_254:

## Relaxation

jnz_minus_258:
.fill 258

jnz %d15, jnz_minus_258
# CHECK: encoding: [0xee,A]
# OBJDUMP: df 0f 7f ff 
# INSTR: jne %d15, 0, -258
# FIXUP: fixup A - offset: 0, value: jnz_minus_258, kind: fixup_8rel

jnz %d15, jnz_256
# CHECK: encoding: [0xee,A]
# OBJDUMP: df 0f 81 80 
# INSTR: jne %d15, 0, 258
# FIXUP: fixup A - offset: 0, value: jnz_256, kind: fixup_8rel

.fill 254
jnz_256:


### JZ (16-bit)

jz_minus_256:
.fill 256

jz %d15, jz_minus_256
# CHECK: encoding: [0x6e,A]
# OBJDUMP: 6e 80
# INSTR: jz %d15, -256
# FIXUP: fixup A - offset: 0, value: jz_minus_256, kind: fixup_8rel

jz %d15, jz_254
# CHECK: encoding: [0x6e,A]
# OBJDUMP: 6e 7f
# INSTR: jz %d15, 254
# FIXUP: fixup A - offset: 0, value: jz_254, kind: fixup_8rel

.fill 252
jz_254:

## Relaxation

jz_minus_258:
.fill 258

jz %d15, jz_minus_258
# CHECK: encoding: [0x6e,A]
# OBJDUMP: df 0f 7f 7f 
# INSTR: jeq %d15, 0, -258
# FIXUP: fixup A - offset: 0, value: jz_minus_258, kind: fixup_8rel

jz %d15, jz_256
# CHECK: encoding: [0x6e,A]
# OBJDUMP: df 0f 81 00 
# INSTR: jeq %d15, 0, 258
# FIXUP: fixup A - offset: 0, value: jz_256, kind: fixup_8rel

.fill 254
jz_256:


##### fixup_4rel3 ##############################################################

### LOOP

loop_32_minus_32:
.fill 32

.code32
loop %a0, loop_32_minus_32
# CHECK: encoding: [0xfd,0x00,A,0b0AAAAAAA]
# OBJDUMP: fd 00 f0 7f
# INSTR: loop %a0, -32
# FIXUP: fixup A - offset: 0, value: loop_32_minus_32, kind: fixup_15rel

loop_minus_32:
.fill 32

loop %a0, loop_minus_32
# CHECK: encoding: [0xfc,0b0000AAAA]
# OBJDUMP: fc 00
# INSTR: loop %a0, -32
# FIXUP: fixup A - offset: 0, value: loop_minus_32, kind: fixup_4rel3

loop_minus_2:
.fill 2

loop %a0, loop_minus_2
# CHECK: encoding: [0xfc,0b0000AAAA]
# OBJDUMP: fc 0f
# INSTR: loop %a0, -2
# FIXUP: fixup A - offset: 0, value: loop_minus_2, kind: fixup_4rel3

## Relaxation

loop_minus_34:
.fill 34

loop %a0, loop_minus_34
# CHECK: encoding: [0xfc,0b0000AAAA]
# OBJDUMP: fd 00 ef 7f
# INSTR: loop %a0, -34
# FIXUP: fixup A - offset: 0, value: loop_minus_34, kind: fixup_4rel3

loop_0:
loop %a0, loop_0
# CHECK: encoding: [0xfc,0b0000AAAA]
# OBJDUMP: fd 00 00 00
# INSTR: loop %a0, 0
# FIXUP: fixup A - offset: 0, value: loop_0, kind: fixup_4rel3


##### fixup_4off ###############################################################

### LD.BU

.code32
ld.bu %d0, [%a15] constant_0
# CHECK: encoding: [0x39,0xf0,A,A]
# OBJDUMP: 39 f0 00 00
# INSTR: ld.bu %d0, [%a15], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

ld.bu %d0, [%a15] constant_0
# CHECK: encoding: [0x08,0bAAAA0000]
# OBJDUMP: 08 00
# INSTR: ld.bu %d0, [%a15], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_4off

ld.bu %d0, [%a15] constant_15
# CHECK: encoding: [0x08,0bAAAA0000]
# OBJDUMP: 08 f0
# INSTR: ld.bu %d0, [%a15], 15
# FIXUP: fixup A - offset: 0, value: constant_15, kind: fixup_4off

## Relaxation

ld.bu %d0, [%a15] constant_minus_1
# CHECK: encoding: [0x08,0bAAAA0000]
# OBJDUMP: 39 f0 ff ff
# INSTR: ld.bu %d0, [%a15], -1
# FIXUP: fixup A - offset: 0, value: constant_minus_1, kind: fixup_4off

ld.bu %d0, [%a15] constant_16
# CHECK: encoding: [0x08,0bAAAA0000]
# OBJDUMP: 39 f0 10 00
# INSTR: ld.bu %d0, [%a15], 16
# FIXUP: fixup A - offset: 0, value: constant_16, kind: fixup_4off


### ST.B

.code32
st.b [%a15] constant_0, %d0
# CHECK: encoding: [0xe9,0xf0,A,A]
# OBJDUMP: e9 f0 00 00
# INSTR: st.b [%a15], 0, %d0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

st.b [%a15] constant_0, %d0
# CHECK: encoding: [0x28,0bAAAA0000]
# OBJDUMP: 28 00
# INSTR: st.b [%a15], 0, %d0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_4off

st.b [%a15] constant_15, %d0
# CHECK: encoding: [0x28,0bAAAA0000]
# OBJDUMP: 28 f0
# INSTR: st.b [%a15], 15, %d0
# FIXUP: fixup A - offset: 0, value: constant_15, kind: fixup_4off

## Relaxation

st.b [%a15] constant_minus_1, %d0
# CHECK: encoding: [0x28,0bAAAA0000]
# OBJDUMP: e9 f0 ff ff
# INSTR: st.b [%a15], -1, %d0
# FIXUP: fixup A - offset: 0, value: constant_minus_1, kind: fixup_4off

st.b [%a15] constant_16, %d0
# CHECK: encoding: [0x28,0bAAAA0000]
# OBJDUMP: e9 f0 10 00
# INSTR: st.b [%a15], 16, %d0
# FIXUP: fixup A - offset: 0, value: constant_16, kind: fixup_4off


##### fixup_4off2 ##############################################################

### LD.H

.code32
ld.h %d0, [%a15] constant_0
# CHECK: encoding: [0xc9,0xf0,A,A]
# OBJDUMP: c9 f0 00 00
# INSTR: ld.h %d0, [%a15], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

ld.h %d0, [%a15] constant_0
# CHECK: encoding: [0x88,0bAAAA0000]
# OBJDUMP: 88 00
# INSTR: ld.h %d0, [%a15], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_4off2

ld.h %d0, [%a15] constant_30
# CHECK: encoding: [0x88,0bAAAA0000]
# OBJDUMP: 88 f0
# INSTR: ld.h %d0, [%a15], 30
# FIXUP: fixup A - offset: 0, value: constant_30, kind: fixup_4off2

## Relaxation

ld.h %d0, [%a15] constant_minus_2
# CHECK: encoding: [0x88,0bAAAA0000]
# OBJDUMP: c9 f0 fe ff
# INSTR: ld.h %d0, [%a15], -2
# FIXUP: fixup A - offset: 0, value: constant_minus_2, kind: fixup_4off2

ld.h %d0, [%a15] constant_32
# CHECK: encoding: [0x88,0bAAAA0000]
# OBJDUMP: c9 f0 20 00
# INSTR: ld.h %d0, [%a15], 32
# FIXUP: fixup A - offset: 0, value: constant_32, kind: fixup_4off2


### ST.H

.code32
st.h [%a15] constant_0, %d0
# CHECK: encoding: [0xf9,0xf0,A,A]
# OBJDUMP: f9 f0 00 00
# INSTR: st.h [%a15], 0, %d0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

st.h [%a15] constant_0, %d0
# CHECK: encoding: [0xa8,0bAAAA0000]
# OBJDUMP: a8 00
# INSTR: st.h [%a15], 0, %d0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_4off2

st.h [%a15] constant_30, %d0
# CHECK: encoding: [0xa8,0bAAAA0000]
# OBJDUMP: a8 f0
# INSTR: st.h [%a15], 30, %d0
# FIXUP: fixup A - offset: 0, value: constant_30, kind: fixup_4off2

## Relaxation

st.h [%a15] constant_minus_2, %d0
# CHECK: encoding: [0xa8,0bAAAA0000]
# OBJDUMP: f9 f0 fe ff
# INSTR: st.h [%a15], -2, %d0
# FIXUP: fixup A - offset: 0, value: constant_minus_2, kind: fixup_4off2

st.h [%a15] constant_32, %d0
# CHECK: encoding: [0xa8,0bAAAA0000]
# OBJDUMP: f9 f0 20 00
# INSTR: st.h [%a15], 32, %d0
# FIXUP: fixup A - offset: 0, value: constant_32, kind: fixup_4off2


##### fixup_4off4 ##############################################################

### LD.A

.code32
ld.a %a0, [%a15] constant_0
# CHECK: encoding: [0x99,0xf0,A,A]
# OBJDUMP: 99 f0 00 00
# INSTR: ld.a %a0, [%a15], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

ld.a %a0, [%a15] constant_0
# CHECK: encoding: [0xc8,0bAAAA0000]
# OBJDUMP: c8 00
# INSTR: ld.a %a0, [%a15], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_4off4

ld.a %a0, [%a15] constant_60
# CHECK: encoding: [0xc8,0bAAAA0000]
# OBJDUMP: c8 f0
# INSTR: ld.a %a0, [%a15], 60
# FIXUP: fixup A - offset: 0, value: constant_60, kind: fixup_4off4

## Relaxation

ld.a %a0, [%a15] constant_minus_4
# CHECK: encoding: [0xc8,0bAAAA0000]
# OBJDUMP: 99 f0 fc ff
# INSTR: ld.a %a0, [%a15], -4
# FIXUP: fixup A - offset: 0, value: constant_minus_4, kind: fixup_4off4

ld.a %a0, [%a15] constant_64
# CHECK: encoding: [0xc8,0bAAAA0000]
# OBJDUMP: 99 f0 00 10
# INSTR: ld.a %a0, [%a15], 64
# FIXUP: fixup A - offset: 0, value: constant_64, kind: fixup_4off4


### LD.W

.code32
ld.w %d0, [%a15] constant_0
# CHECK: encoding: [0x19,0xf0,A,A]
# OBJDUMP: 19 f0 00 00
# INSTR: ld.w %d0, [%a15], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

ld.w %d0, [%a15] constant_0
# CHECK: encoding: [0x48,0bAAAA0000]
# OBJDUMP: 48 00
# INSTR: ld.w %d0, [%a15], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_4off4

ld.w %d0, [%a15] constant_60
# CHECK: encoding: [0x48,0bAAAA0000]
# OBJDUMP: 48 f0
# INSTR: ld.w %d0, [%a15], 60
# FIXUP: fixup A - offset: 0, value: constant_60, kind: fixup_4off4

## Relaxation

ld.w %d0, [%a15] constant_minus_4
# CHECK: encoding: [0x48,0bAAAA0000]
# OBJDUMP: 19 f0 fc ff
# INSTR: ld.w %d0, [%a15], -4
# FIXUP: fixup A - offset: 0, value: constant_minus_4, kind: fixup_4off4

ld.w %d0, [%a15] constant_64
# CHECK: encoding: [0x48,0bAAAA0000]
# OBJDUMP: 19 f0 00 10
# INSTR: ld.w %d0, [%a15], 64
# FIXUP: fixup A - offset: 0, value: constant_64, kind: fixup_4off4


### ST.A

.code32
st.a [%a15] constant_0, %a0
# CHECK: encoding: [0xb5,0xf0,A,A]
# OBJDUMP: b5 f0 00 00
# INSTR: st.a [%a15], 0, %a0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

st.a [%a15] constant_0, %a0
# CHECK: encoding: [0xe8,0bAAAA0000]
# OBJDUMP: e8 00
# INSTR: st.a [%a15], 0, %a0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_4off4

st.a [%a15] constant_60, %a0
# CHECK: encoding: [0xe8,0bAAAA0000]
# OBJDUMP: e8 f0
# INSTR: st.a [%a15], 60, %a0
# FIXUP: fixup A - offset: 0, value: constant_60, kind: fixup_4off4

## Relaxation

st.a [%a15] constant_minus_4, %a0
# CHECK: encoding: [0xe8,0bAAAA0000]
# OBJDUMP: b5 f0 fc ff
# INSTR: st.a [%a15], -4, %a0
# FIXUP: fixup A - offset: 0, value: constant_minus_4, kind: fixup_4off4

st.a [%a15] constant_64, %a0
# CHECK: encoding: [0xe8,0bAAAA0000]
# OBJDUMP: b5 f0 00 10
# INSTR: st.a [%a15], 64, %a0
# FIXUP: fixup A - offset: 0, value: constant_64, kind: fixup_4off4


### ST.W

.code32
st.w [%a15] constant_0, %d0
# CHECK: encoding: [0x59,0xf0,A,A]
# OBJDUMP: 59 f0 00 00
# INSTR: st.w [%a15], 0, %d0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

st.w [%a15] constant_0, %d0
# CHECK: encoding: [0x68,0bAAAA0000]
# OBJDUMP: 68 00
# INSTR: st.w [%a15], 0, %d0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_4off4

st.w [%a15] constant_60, %d0
# CHECK: encoding: [0x68,0bAAAA0000]
# OBJDUMP: 68 f0
# INSTR: st.w [%a15], 60, %d0
# FIXUP: fixup A - offset: 0, value: constant_60, kind: fixup_4off4

## Relaxation

st.w [%a15] constant_minus_4, %d0
# CHECK: encoding: [0x68,0bAAAA0000]
# OBJDUMP: 59 f0 fc ff
# INSTR: st.w [%a15], -4, %d0
# FIXUP: fixup A - offset: 0, value: constant_minus_4, kind: fixup_4off4

st.w [%a15] constant_64, %d0
# CHECK: encoding: [0x68,0bAAAA0000]
# OBJDUMP: 59 f0 00 10
# INSTR: st.w [%a15], 64, %d0
# FIXUP: fixup A - offset: 0, value: constant_64, kind: fixup_4off4


##### fixup_42off ##############################################################

### LD.BU

.code32
ld.bu %d15, [%a0] constant_0
# CHECK: encoding: [0x39,0x0f,A,A]
# OBJDUMP: 39 0f 00 00
# INSTR: ld.bu %d15, [%a0], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

ld.bu %d15, [%a0] constant_0
# CHECK: encoding: [0x0c,0b0000AAAA]
# OBJDUMP: 0c 00
# INSTR: ld.bu %d15, [%a0], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_42off

ld.bu %d15, [%a0] constant_15
# CHECK: encoding: [0x0c,0b0000AAAA]
# OBJDUMP: 0c 0f
# INSTR: ld.bu %d15, [%a0], 15
# FIXUP: fixup A - offset: 0, value: constant_15, kind: fixup_42off

## Relaxation

ld.bu %d15, [%a0] constant_minus_1
# CHECK: encoding: [0x0c,0b0000AAAA]
# OBJDUMP: 39 0f ff ff
# INSTR: ld.bu %d15, [%a0], -1
# FIXUP: fixup A - offset: 0, value: constant_minus_1, kind: fixup_42off

ld.bu %d15, [%a0] constant_16
# CHECK: encoding: [0x0c,0b0000AAAA]
# OBJDUMP: 39 0f 10 00
# INSTR: ld.bu %d15, [%a0], 16
# FIXUP: fixup A - offset: 0, value: constant_16, kind: fixup_42off


### ST.B

.code32
st.b [%a0] constant_0, %d15
# CHECK: encoding: [0xe9,0x0f,A,A]
# OBJDUMP: e9 0f 00 00
# INSTR: st.b [%a0], 0, %d15
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

st.b [%a0] constant_0, %d15
# CHECK: encoding: [0x2c,0b0000AAAA]
# OBJDUMP: 2c 00
# INSTR: st.b [%a0], 0, %d15
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_42off

st.b [%a0] constant_15, %d15
# CHECK: encoding: [0x2c,0b0000AAAA]
# OBJDUMP: 2c 0f
# INSTR: st.b [%a0], 15, %d15
# FIXUP: fixup A - offset: 0, value: constant_15, kind: fixup_42off

## Relaxation

st.b [%a0] constant_minus_1, %d15
# CHECK: encoding: [0x2c,0b0000AAAA]
# OBJDUMP: e9 0f ff ff
# INSTR: st.b [%a0], -1, %d15
# FIXUP: fixup A - offset: 0, value: constant_minus_1, kind: fixup_42off

st.b [%a0] constant_16, %d15
# CHECK: encoding: [0x2c,0b0000AAAA]
# OBJDUMP: e9 0f 10 00
# INSTR: st.b [%a0], 16, %d15
# FIXUP: fixup A - offset: 0, value: constant_16, kind: fixup_42off


##### fixup_42off2 #############################################################

### LD.H

.code32
ld.h %d15, [%a0] constant_0
# CHECK: encoding: [0xc9,0x0f,A,A]
# OBJDUMP: c9 0f 00 00
# INSTR: ld.h %d15, [%a0], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

ld.h %d15, [%a0] constant_0
# CHECK: encoding: [0x8c,0b0000AAAA]
# OBJDUMP: 8c 00
# INSTR: ld.h %d15, [%a0], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_42off2

ld.h %d15, [%a0] constant_30
# CHECK: encoding: [0x8c,0b0000AAAA]
# OBJDUMP: 8c 0f
# INSTR: ld.h %d15, [%a0], 30
# FIXUP: fixup A - offset: 0, value: constant_30, kind: fixup_42off2

## Relaxation

ld.h %d15, [%a0] constant_minus_2
# CHECK: encoding: [0x8c,0b0000AAAA]
# OBJDUMP: c9 0f fe ff
# INSTR: ld.h %d15, [%a0], -2
# FIXUP: fixup A - offset: 0, value: constant_minus_2, kind: fixup_42off2

ld.h %d15, [%a0] constant_32
# CHECK: encoding: [0x8c,0b0000AAAA]
# OBJDUMP: c9 0f 20 00
# INSTR: ld.h %d15, [%a0], 32
# FIXUP: fixup A - offset: 0, value: constant_32, kind: fixup_42off2


### ST.H

.code32
st.h [%a0] constant_0, %d15
# CHECK: encoding: [0xf9,0x0f,A,A]
# OBJDUMP: f9 0f 00 00
# INSTR: st.h [%a0], 0, %d15
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

st.h [%a0] constant_0, %d15
# CHECK: encoding: [0xac,0b0000AAAA]
# OBJDUMP: ac 00
# INSTR: st.h [%a0], 0, %d15
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_42off2

st.h [%a0] constant_30, %d15
# CHECK: encoding: [0xac,0b0000AAAA]
# OBJDUMP: ac 0f
# INSTR: st.h [%a0], 30, %d15
# FIXUP: fixup A - offset: 0, value: constant_30, kind: fixup_42off2

## Relaxation

st.h [%a0] constant_minus_2, %d15
# CHECK: encoding: [0xac,0b0000AAAA]
# OBJDUMP: f9 0f fe ff
# INSTR: st.h [%a0], -2, %d15
# FIXUP: fixup A - offset: 0, value: constant_minus_2, kind: fixup_42off2

st.h [%a0] constant_32, %d15
# CHECK: encoding: [0xac,0b0000AAAA]
# OBJDUMP: f9 0f 20 00
# INSTR: st.h [%a0], 32, %d15
# FIXUP: fixup A - offset: 0, value: constant_32, kind: fixup_42off2


##### fixup_42off4 #############################################################

### LD.A

.code32
ld.a %a15, [%a0] constant_0
# CHECK: encoding: [0x99,0x0f,A,A]
# OBJDUMP: 99 0f 00 00
# INSTR: ld.a %a15, [%a0], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

ld.a %a15, [%a0] constant_0
# CHECK: encoding: [0xcc,0b0000AAAA]
# OBJDUMP: cc 00
# INSTR: ld.a %a15, [%a0], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_42off4

ld.a %a15, [%a0] constant_60
# CHECK: encoding: [0xcc,0b0000AAAA]
# OBJDUMP: cc 0f
# INSTR: ld.a %a15, [%a0], 60
# FIXUP: fixup A - offset: 0, value: constant_60, kind: fixup_42off4

## Relaxation

ld.a %a15, [%a0] constant_minus_4
# CHECK: encoding: [0xcc,0b0000AAAA]
# OBJDUMP: 99 0f fc ff
# INSTR: ld.a %a15, [%a0], -4
# FIXUP: fixup A - offset: 0, value: constant_minus_4, kind: fixup_42off4

ld.a %a15, [%a0] constant_64
# CHECK: encoding: [0xcc,0b0000AAAA]
# OBJDUMP: 99 0f 00 10
# INSTR: ld.a %a15, [%a0], 64
# FIXUP: fixup A - offset: 0, value: constant_64, kind: fixup_42off4


### LD.W

.code32
ld.w %d15, [%a0] constant_0
# CHECK: encoding: [0x19,0x0f,A,A]
# OBJDUMP: 19 0f 00 00
# INSTR: ld.w %d15, [%a0], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

ld.w %d15, [%a0] constant_0
# CHECK: encoding: [0x4c,0b0000AAAA]
# OBJDUMP: 4c 00
# INSTR: ld.w %d15, [%a0], 0
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_42off4

ld.w %d15, [%a0] constant_60
# CHECK: encoding: [0x4c,0b0000AAAA]
# OBJDUMP: 4c 0f
# INSTR: ld.w %d15, [%a0], 60
# FIXUP: fixup A - offset: 0, value: constant_60, kind: fixup_42off4

## Relaxation

ld.w %d15, [%a0] constant_minus_4
# CHECK: encoding: [0x4c,0b0000AAAA]
# OBJDUMP: 19 0f fc ff
# INSTR: ld.w %d15, [%a0], -4
# FIXUP: fixup A - offset: 0, value: constant_minus_4, kind: fixup_42off4

ld.w %d15, [%a0] constant_64
# CHECK: encoding: [0x4c,0b0000AAAA]
# OBJDUMP: 19 0f 00 10
# INSTR: ld.w %d15, [%a0], 64
# FIXUP: fixup A - offset: 0, value: constant_64, kind: fixup_42off4


### ST.A

.code32
st.a [%a0] constant_0, %a15
# CHECK: encoding: [0xb5,0x0f,A,A]
# OBJDUMP: b5 0f 00 00
# INSTR: st.a [%a0], 0, %a15
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

st.a [%a0] constant_0, %a15
# CHECK: encoding: [0xec,0b0000AAAA]
# OBJDUMP: ec 00
# INSTR: st.a [%a0], 0, %a15
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_42off4

st.a [%a0] constant_60, %a15
# CHECK: encoding: [0xec,0b0000AAAA]
# OBJDUMP: ec 0f
# INSTR: st.a [%a0], 60, %a15
# FIXUP: fixup A - offset: 0, value: constant_60, kind: fixup_42off4

## Relaxation

st.a [%a0] constant_minus_4, %a15
# CHECK: encoding: [0xec,0b0000AAAA]
# OBJDUMP: b5 0f fc ff
# INSTR: st.a [%a0], -4, %a15
# FIXUP: fixup A - offset: 0, value: constant_minus_4, kind: fixup_42off4

st.a [%a0] constant_64, %a15
# CHECK: encoding: [0xec,0b0000AAAA]
# OBJDUMP: b5 0f 00 10
# INSTR: st.a [%a0], 64, %a15
# FIXUP: fixup A - offset: 0, value: constant_64, kind: fixup_42off4


### ST.W

.code32
st.w [%a0] constant_0, %d15
# CHECK: encoding: [0x59,0x0f,A,A]
# OBJDUMP: 59 0f 00 00
# INSTR: st.w [%a0], 0, %d15
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_16off

st.w [%a0] constant_0, %d15
# CHECK: encoding: [0x6c,0b0000AAAA]
# OBJDUMP: 6c 00
# INSTR: st.w [%a0], 0, %d15
# FIXUP: fixup A - offset: 0, value: constant_0, kind: fixup_42off4

st.w [%a0] constant_60, %d15
# CHECK: encoding: [0x6c,0b0000AAAA]
# OBJDUMP: 6c 0f
# INSTR: st.w [%a0], 60, %d15
# FIXUP: fixup A - offset: 0, value: constant_60, kind: fixup_42off4

## Relaxation

st.w [%a0] constant_minus_4, %d15
# CHECK: encoding: [0x6c,0b0000AAAA]
# OBJDUMP: 59 0f fc ff
# INSTR: st.w [%a0], -4, %d15
# FIXUP: fixup A - offset: 0, value: constant_minus_4, kind: fixup_42off4

st.w [%a0] constant_64, %d15
# CHECK: encoding: [0x6c,0b0000AAAA]
# OBJDUMP: 59 0f 00 10
# INSTR: st.w [%a0], 64, %d15
# FIXUP: fixup A - offset: 0, value: constant_64, kind: fixup_42off4


### tests for referencing symbols in a different section 

.section	.text.bar
bar:
call foo
# CHECK: encoding: [0x5c,A]
# OBJDUMP: 6d 00 00 00
# FIXUP: ixup A - offset: 0, value: foo, kind: fixup_8rel
# RELOC: 0x0 R_TRICORE_24REL foo 0x0

jgez %d0, foo
# CHECK: encoding: [0xce,0b0000AAAA]
# OBJDUMP: ff 00 00 00
# FIXUP: ixup A - offset: 0, value: foo, kind: fixup_4rel
# RELOC: 0x4 R_TRICORE_15REL foo 0x0

loop %a0, foo
# CHECK: encoding: [0xfc,0b0000AAAA]
# OBJDUMP: fd 00 00 00
# FIXUP: ixup A - offset: 0, value: foo, kind: fixup_4rel3
# RELOC: 0x8 R_TRICORE_15REL foo 0x0

.section	.text.foo
foo:



.set constant_minus_1, -1
.set constant_minus_2, -2
.set constant_minus_4, -4
.set constant_minus_8, -8
.set constant_minus_9, -9

.set constant_0, 0
.set constant_7, 7
.set constant_8, 8
.set constant_15, 15
.set constant_16, 16
.set constant_30, 30
.set constant_31, 31
.set constant_32, 32
.set constant_60, 60
.set constant_64, 64
.set constant_255, 255
.set constant_256, 256
.set constant_1020, 1020
.set constant_1024, 1024