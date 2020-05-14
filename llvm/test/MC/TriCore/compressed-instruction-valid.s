# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s


### tests for ADD_ddd

# CHECK-INST: add %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x00]
.code32
add %d0, %d0, %d1

# CHECK-INST: add %d0, %d1
# CHECK: encoding: [0x42,0x10]
add %d0, %d0, %d1

# CHECK-INST: add %d0, %d1
# CHECK: encoding: [0x42,0x10]
add %d0, %d1, %d0

# CHECK-INST: add %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0x00]
add %d0, %d1, %d1


### tests for ADD_ddc

# CHECK-INST: add %d0, %d0, -9
# CHECK: encoding: [0x8b,0x70,0x1f,0x00]
add %d0, %d0, -9

# CHECK-INST: add %d0, %d0, -8
# CHECK: encoding: [0x8b,0x80,0x1f,0x00]
.code32
add %d0, %d0, -8

# CHECK-INST: add %d0, -8
# CHECK: encoding: [0xc2,0x80]
add %d0, %d0, -8

# CHECK-INST: add %d0, 7
# CHECK: encoding: [0xc2,0x70]
add %d0, %d0, 7

# CHECK-INST: add %d0, %d0, 8
# CHECK: encoding: [0x8b,0x80,0x00,0x00]
add %d0, %d0, 8


### tests for ADDA_aaa

# CHECK-INST: add.a %a0, %a0, %a1
# CHECK: encoding: [0x01,0x10,0x10,0x00]
.code32
add.a %a0, %a0, %a1

# CHECK-INST: add.a %a0, %a1
# CHECK: encoding: [0x30,0x10]
add.a %a0, %a0, %a1

# CHECK-INST: add.a %a0, %a1
# CHECK: encoding: [0x30,0x10]
add.a %a0, %a1, %a0

# CHECK-INST: add.a %a0, %a1, %a1
# CHECK: encoding: [0x01,0x11,0x10,0x00]
add.a %a0, %a1, %a1


### tests for ADDS_ddd

# CHECK-INST: adds %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0x00]
.code32
adds %d0, %d0, %d1

# CHECK-INST: adds %d0, %d1
# CHECK: encoding: [0x22,0x10]
adds %d0, %d0, %d1

# CHECK-INST: adds %d0, %d1
# CHECK: encoding: [0x22,0x10]
adds %d0, %d1, %d0

# CHECK-INST: adds %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0x00]
adds %d0, %d1, %d1


### tests for ADDSCA_aadc

# CHECK-INST: addsc.a %a0, %a0, %d15, 0
# CHECK: encoding: [0x01,0x0f,0x00,0x06]
.code32
addsc.a %a0, %a0, %d15, 0

# CHECK-INST: addsc.a %a0, %a0, %d15, 0
# CHECK: encoding: [0x10,0x00]
addsc.a %a0, %a0, %d15, 0

# CHECK-INST: addsc.a %a0, %a0, %d14, 0
# CHECK: encoding: [0x01,0x0e,0x00,0x06]
addsc.a %a0, %a0, %d14, 0


### tests for AND_ddd

# CHECK-INST: and %d0, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0x80,0x00]
.code32
and %d0, %d0, %d1

# CHECK-INST: and %d0, %d1
# CHECK: encoding: [0x26,0x10]
and %d0, %d0, %d1

# CHECK-INST: and %d0, %d1
# CHECK: encoding: [0x26,0x10]
and %d0, %d1, %d0

# CHECK-INST: and %d0, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0x80,0x00]
and %d0, %d1, %d1


### tests for AND_ddc

# CHECK-INST: and %d14, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x00,0xe1]
and %d14, %d15, 0

# CHECK-INST: and %d15, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x00,0xf1]
.code32
and %d15, %d15, 0

# CHECK-INST: and %d15, 0
# CHECK: encoding: [0x16,0x00]
and %d15, %d15, 0

# CHECK-INST: and %d15, 255
# CHECK: encoding: [0x16,0xff]
and %d15, %d15, 255

# CHECK-INST: and %d15, %d15, 256
# CHECK: encoding: [0x8f,0x0f,0x10,0xf1]
and %d15, %d15, 256


### tests for CADD_dddc

# CHECK-INST: cadd %d0, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0x0e]
cadd %d0, %d14, %d0, 0

# CHECK-INST: cadd %d0, %d15, %d0, -9
# CHECK: encoding: [0xab,0x70,0x1f,0x0f]
cadd %d0, %d15, %d0, -9

# CHECK-INST: cadd %d0, %d15, %d0, -8
# CHECK: encoding: [0xab,0x80,0x1f,0x0f]
.code32
cadd %d0, %d15, %d0, -8

# CHECK-INST: cadd %d0, %d15, -8
# CHECK: encoding: [0x8a,0x80]
cadd %d0, %d15, %d0, -8

# CHECK-INST: cadd %d0, %d15, 7
# CHECK: encoding: [0x8a,0x70]
cadd %d0, %d15, %d0, 7

# CHECK-INST: cadd %d0, %d15, %d0, 8
# CHECK: encoding: [0xab,0x80,0x00,0x0f]
cadd %d0, %d15, %d0, 8


### tests for CADDN_dddc

# CHECK-INST: caddn %d0, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0x0e]
caddn %d0, %d14, %d0, 0

# CHECK-INST: caddn %d0, %d15, %d0, -9
# CHECK: encoding: [0xab,0x70,0x3f,0x0f]
caddn %d0, %d15, %d0, -9

# CHECK-INST: caddn %d0, %d15, %d0, -8
# CHECK: encoding: [0xab,0x80,0x3f,0x0f]
.code32
caddn %d0, %d15, %d0, -8

# CHECK-INST: caddn %d0, %d15, -8
# CHECK: encoding: [0xca,0x80]
caddn %d0, %d15, %d0, -8

# CHECK-INST: caddn %d0, %d15, 7
# CHECK: encoding: [0xca,0x70]
caddn %d0, %d15, %d0, 7

# CHECK-INST: caddn %d0, %d15, %d0, 8
# CHECK: encoding: [0xab,0x80,0x20,0x0f]
caddn %d0, %d15, %d0, 8


### tests for JEQ_dcc with JZ_16_d15c

# CHECK-INST: jeq %d15, 0, -258
# CHECK: encoding: [0xdf,0x0f,0x7f,0x7f]
jeq %d15, 0, -258

# CHECK-INST: jeq %d15, 0, -256
# CHECK: encoding: [0xdf,0x0f,0x80,0x7f]
.code32
jeq %d15, 0, -256

# CHECK-INST: jz %d15, -256
# CHECK: encoding: [0x6e,0x80]
jeq %d15, 0, -256

# CHECK-INST: jz %d15, 254
# CHECK: encoding: [0x6e,0x7f]
jeq %d15, 0, 254

# CHECK-INST: jeq %d15, 0, 256
# CHECK: encoding: [0xdf,0x0f,0x80,0x00]
jeq %d15, 0, 256


### tests for JEQ_dcc with JZ_16_dc

# CHECK-INST: jeq %d0, 0, -2
# CHECK: encoding: [0xdf,0x00,0xff,0x7f]
jeq %d0, 0, -2

# CHECK-INST: jeq %d0, 0, 0
# CHECK: encoding: [0xdf,0x00,0x00,0x00]
.code32
jeq %d0, 0, 0

# CHECK-INST: jz %d0, 0
# CHECK: encoding: [0x76,0x00]
jeq %d0, 0, 0

# CHECK-INST: jz %d0, 30
# CHECK: encoding: [0x76,0x0f]
jeq %d0, 0, 30

# CHECK-INST: jeq %d0, 0, 32
# CHECK: encoding: [0xdf,0x00,0x10,0x00]
jeq %d0, 0, 32


### tests for JGE_dcc with JGTZ_16_dc

# CHECK-INST: jge %d0, 1, -2
# CHECK: encoding: [0xff,0x10,0xff,0x7f]
jge %d0, 1, -2

# CHECK-INST: jge %d0, 1, 0
# CHECK: encoding: [0xff,0x10,0x00,0x00]
.code32
jge %d0, 1, 0

# CHECK-INST: jgtz %d0, 0
# CHECK: encoding: [0x4e,0x00]
jge %d0, 1, 0

# CHECK-INST: jgtz %d0, 30
# CHECK: encoding: [0x4e,0x0f]
jge %d0, 1, 30

# CHECK-INST: jge %d0, 1, 32
# CHECK: encoding: [0xff,0x10,0x10,0x00]
jge %d0, 1, 32


### tests for JGE_dcc with JGEZ_16_dc

# CHECK-INST: jge %d0, 0, -2
# CHECK: encoding: [0xff,0x00,0xff,0x7f]
jge %d0, 0, -2

# CHECK-INST: jge %d0, 0, 0
# CHECK: encoding: [0xff,0x00,0x00,0x00]
.code32
jge %d0, 0, 0

# CHECK-INST: jgez %d0, 0
# CHECK: encoding: [0xce,0x00]
jge %d0, 0, 0

# CHECK-INST: jgez %d0, 30
# CHECK: encoding: [0xce,0x0f]
jge %d0, 0, 30

# CHECK-INST: jge %d0, 0, 32
# CHECK: encoding: [0xff,0x00,0x10,0x00]
jge %d0, 0, 32


### tests for JLT_dcc with JLEZ_16_dc

# CHECK-INST: jlt %d0, 1, -2
# CHECK: encoding: [0xbf,0x10,0xff,0x7f]
jlt %d0, 1, -2

# CHECK-INST: jlt %d0, 1, 0
# CHECK: encoding: [0xbf,0x10,0x00,0x00]
.code32
jlt %d0, 1, 0

# CHECK-INST: jlez %d0, 0
# CHECK: encoding: [0x8e,0x00]
jlt %d0, 1, 0

# CHECK-INST: jlez %d0, 30
# CHECK: encoding: [0x8e,0x0f]
jlt %d0, 1, 30

# CHECK-INST: jlt %d0, 1, 32
# CHECK: encoding: [0xbf,0x10,0x10,0x00]
jlt %d0, 1, 32


### tests for JLT_dcc with JLTZ_16_dc

# CHECK-INST: jlt %d0, 0, -2
# CHECK: encoding: [0xbf,0x00,0xff,0x7f]
jlt %d0, 0, -2

# CHECK-INST: jlt %d0, 0, 0
# CHECK: encoding: [0xbf,0x00,0x00,0x00]
.code32
jlt %d0, 0, 0

# CHECK-INST: jltz %d0, 0
# CHECK: encoding: [0x0e,0x00]
jlt %d0, 0, 0

# CHECK-INST: jltz %d0, 30
# CHECK: encoding: [0x0e,0x0f]
jlt %d0, 0, 30

# CHECK-INST: jlt %d0, 0, 32
# CHECK: encoding: [0xbf,0x00,0x10,0x00]
jlt %d0, 0, 32


### tests for JNE_dcc with JNZ_16_d15c

# CHECK-INST: jne %d15, 0, -258
# CHECK: encoding: [0xdf,0x0f,0x7f,0xff]
jne %d15, 0, -258

# CHECK-INST: jne %d15, 0, -256
# CHECK: encoding: [0xdf,0x0f,0x80,0xff]
.code32
jne %d15, 0, -256

# CHECK-INST: jnz %d15, -256
# CHECK: encoding: [0xee,0x80]
jne %d15, 0, -256

# CHECK-INST: jnz %d15, 254
# CHECK: encoding: [0xee,0x7f]
jne %d15, 0, 254

# CHECK-INST: jne %d15, 0, 256
# CHECK: encoding: [0xdf,0x0f,0x80,0x80]
jne %d15, 0, 256


### tests for JNE_dcc with JNZ_16_dc

# CHECK-INST: jne %d0, 0, -2
# CHECK: encoding: [0xdf,0x00,0xff,0xff]
jne %d0, 0, -2

# CHECK-INST: jne %d0, 0, 0
# CHECK: encoding: [0xdf,0x00,0x00,0x80]
.code32
jne %d0, 0, 0

# CHECK-INST: jnz %d0, 0
# CHECK: encoding: [0xf6,0x00]
jne %d0, 0, 0

# CHECK-INST: jnz %d0, 30
# CHECK: encoding: [0xf6,0x0f]
jne %d0, 0, 30

# CHECK-INST: jne %d0, 0, 32
# CHECK: encoding: [0xdf,0x00,0x10,0x80]
jne %d0, 0, 32


### tests for LDA_aac_poi

# CHECK-INST: ld.a %a0, [%a1+], 1
# CHECK: encoding: [0x09,0x10,0x81,0x01]
ld.a %a0, [%a1+], 1

# CHECK-INST: ld.a %a0, [%a1+], 4
# CHECK: encoding: [0x09,0x10,0x84,0x01]
.code32
ld.a %a0, [%a1+], 4

# CHECK-INST: ld.a %a0, [%a1+]
# CHECK: encoding: [0xc4,0x10]
ld.a %a0, [%a1+], 4


### tests for LDA_aalc

# CHECK-INST: ld.a %a0, [%a1], 1
# CHECK: encoding: [0x99,0x10,0x01,0x00]
ld.a %a0, [%a1], 1

# CHECK-INST: ld.a %a0, [%a1], 0
# CHECK: encoding: [0x99,0x10,0x00,0x00]
.code32
ld.a %a0, [%a1], 0

# CHECK-INST: ld.a %a0, [%a1]
# CHECK: encoding: [0xd4,0x10]
ld.a %a0, [%a1], 0


### tests for LDBU_dac_poi

# CHECK-INST: ld.bu %d0, [%a1+], 2
# CHECK: encoding: [0x09,0x10,0x42,0x00]
ld.bu %d0, [%a1+], 2

# CHECK-INST: ld.bu %d0, [%a1+], 1
# CHECK: encoding: [0x09,0x10,0x41,0x00]
.code32
ld.bu %d0, [%a1+], 1

# CHECK-INST: ld.bu %d0, [%a1+]
# CHECK: encoding: [0x04,0x10]
ld.bu %d0, [%a1+], 1


### tests for LDBU_dalc

# CHECK-INST: ld.bu %d0, [%a1], 1
# CHECK: encoding: [0x39,0x10,0x01,0x00]
ld.bu %d0, [%a1], 1

# CHECK-INST: ld.bu %d0, [%a1], 0
# CHECK: encoding: [0x39,0x10,0x00,0x00]
.code32
ld.bu %d0, [%a1], 0

# CHECK-INST: ld.bu %d0, [%a1]
# CHECK: encoding: [0x14,0x10]
ld.bu %d0, [%a1], 0


### tests for LDH_dac_poi

# CHECK-INST: ld.h %d0, [%a1+], 1
# CHECK: encoding: [0x09,0x10,0x81,0x00]
ld.h %d0, [%a1+], 1

# CHECK-INST: ld.h %d0, [%a1+], 2
# CHECK: encoding: [0x09,0x10,0x82,0x00]
.code32
ld.h %d0, [%a1+], 2

# CHECK-INST: ld.h %d0, [%a1+]
# CHECK: encoding: [0x84,0x10]
ld.h %d0, [%a1+], 2


### tests for LDH_dalc

# CHECK-INST: ld.h %d0, [%a1], 1
# CHECK: encoding: [0xc9,0x10,0x01,0x00]
ld.h %d0, [%a1], 1

# CHECK-INST: ld.h %d0, [%a1], 0
# CHECK: encoding: [0xc9,0x10,0x00,0x00]
.code32
ld.h %d0, [%a1], 0

# CHECK-INST: ld.h %d0, [%a1]
# CHECK: encoding: [0x94,0x10]
ld.h %d0, [%a1], 0


### tests for LDW_dac_poi

# CHECK-INST: ld.w %d0, [%a1+], 1
# CHECK: encoding: [0x09,0x10,0x01,0x01]
ld.w %d0, [%a1+], 1

# CHECK-INST: ld.w %d0, [%a1+], 4
# CHECK: encoding: [0x09,0x10,0x04,0x01]
.code32
ld.w %d0, [%a1+], 4

# CHECK-INST: ld.w %d0, [%a1+]
# CHECK: encoding: [0x44,0x10]
ld.w %d0, [%a1+], 4


### tests for LDW_dalc

# CHECK-INST: ld.w %d0, [%a1], 1
# CHECK: encoding: [0x19,0x10,0x01,0x00]
ld.w %d0, [%a1], 1

# CHECK-INST: ld.w %d0, [%a1], 0
# CHECK: encoding: [0x19,0x10,0x00,0x00]
.code32
ld.w %d0, [%a1], 0

# CHECK-INST: ld.w %d0, [%a1]
# CHECK: encoding: [0x54,0x10]
ld.w %d0, [%a1], 0


### tests for LEA_ac

# CHECK-INST: lea %a0, 0
# CHECK: encoding: [0xc5,0x00,0x00,0x00]
.code32
lea %a0, 0

# CHECK-INST: mov.a %a0, 0
# CHECK: encoding: [0xa0,0x00]
lea %a0, 0

# CHECK-INST: mov.a %a0, 15
# CHECK: encoding: [0xa0,0xf0]
lea %a0, 15

# CHECK-INST: lea %a0, 16
# CHECK: encoding: [0xc5,0x00,0x10,0x00]
lea %a0, 16


### tests for LEA_aac

# CHECK-INST: lea %a0, [%a0], -9
# CHECK: encoding: [0xd9,0x00,0xf7,0xff]
lea %a0, [%a0], -9

# CHECK-INST: lea %a0, [%a0], -8
# CHECK: encoding: [0xd9,0x00,0xf8,0xff]
.code32
lea %a0, [%a0], -8

# CHECK-INST: add.a %a0, -8
# CHECK: encoding: [0xb0,0x80]
lea %a0, [%a0], -8

# CHECK-INST: add.a %a0, 7
# CHECK: encoding: [0xb0,0x70]
lea %a0, [%a0], 7

# CHECK-INST: lea %a0, [%a0], 8
# CHECK: encoding: [0xd9,0x00,0x08,0x00]
lea %a0, [%a0], 8

# with SUBA

# CHECK-INST: lea %a10, [%a10], -9
# CHECK: encoding: [0xd9,0xaa,0xf7,0xff]
.code32
lea %a10, [%a10], -9

# CHECK-INST: sub.a %a10, 9
# CHECK: encoding: [0x20,0x09]
lea %a10, [%a10], -9

# CHECK-INST: sub.a %a10, 255
# CHECK: encoding: [0x20,0xff]
lea %a10, [%a10], -255

# CHECK-INST: lea %a10, [%a10], -256
# CHECK: encoding: [0xd9,0xaa,0xc0,0xcf]
lea %a10, [%a10], -256


### tests for MUL_ddd

# CHECK-INST: mul %d0, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x0a,0x00]
.code32
mul %d0, %d0, %d1

# CHECK-INST: mul %d0, %d1
# CHECK: encoding: [0xe2,0x10]
mul %d0, %d0, %d1

# CHECK-INST: mul %d0, %d1
# CHECK: encoding: [0xe2,0x10]
mul %d0, %d1, %d0

# CHECK-INST: mul %d0, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x0a,0x00]
mul %d0, %d1, %d1


### tests for NOR_ddc

# CHECK-INST: nor %d0, %d0, 0
# CHECK: encoding: [0x8f,0x00,0x60,0x01]
.code32
nor %d0, %d0, 0

# CHECK-INST: not %d0
# CHECK: encoding: [0x46,0x00]
nor %d0, %d0, 0

# CHECK-INST: nor %d0, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x60,0x01]
nor %d0, %d1, 0


### tests for OR_ddd

# CHECK-INST: or %d0, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xa0,0x00]
.code32
or %d0, %d0, %d1

# CHECK-INST: or %d0, %d1
# CHECK: encoding: [0xa6,0x10]
or %d0, %d0, %d1

# CHECK-INST: or %d0, %d1
# CHECK: encoding: [0xa6,0x10]
or %d0, %d1, %d0

# CHECK-INST: or %d0, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xa0,0x00]
or %d0, %d1, %d1


### tests for OR_ddc

# CHECK-INST: or %d14, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x40,0xe1]
or %d14, %d15, 0

# CHECK-INST: or %d15, %d15, 0
# CHECK: encoding: [0x8f,0x0f,0x40,0xf1]
.code32
or %d15, %d15, 0

# CHECK-INST: or %d15, 0
# CHECK: encoding: [0x96,0x00]
or %d15, %d15, 0

# CHECK-INST: or %d15, 255
# CHECK: encoding: [0x96,0xff]
or %d15, %d15, 255

# CHECK-INST: or %d15, %d15, 256
# CHECK: encoding: [0x8f,0x0f,0x50,0xf1]
or %d15, %d15, 256


### tests for RSUB_ddc

# CHECK-INST: rsub %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0x01]
.code32
rsub %d0, %d0, 0

# CHECK-INST: rsub %d0
# CHECK: encoding: [0x32,0x50]
rsub %d0, %d0, 0

# CHECK-INST: rsub %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0x01]
rsub %d0, %d1, 0


### tests for SATB_dd

# CHECK-INST: sat.b %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0x05]
.code32
sat.b %d0, %d0

# CHECK-INST: sat.b %d0
# CHECK: encoding: [0x32,0x00]
sat.b %d0, %d0

# CHECK-INST: sat.b %d0, %d1
# CHECK: encoding: [0x0b,0x01,0xe0,0x05]
sat.b %d0, %d1


### tests for SATH_dd

# CHECK-INST: sat.h %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0x07]
.code32
sat.h %d0, %d0

# CHECK-INST: sat.h %d0
# CHECK: encoding: [0x32,0x20]
sat.h %d0, %d0

# CHECK-INST: sat.h %d0, %d1
# CHECK: encoding: [0x0b,0x01,0xe0,0x07]
sat.h %d0, %d1


### tests for SATBU_dd

# CHECK-INST: sat.bu %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x05]
.code32
sat.bu %d0, %d0

# CHECK-INST: sat.bu %d0
# CHECK: encoding: [0x32,0x10]
sat.bu %d0, %d0

# CHECK-INST: sat.bu %d0, %d1
# CHECK: encoding: [0x0b,0x01,0xf0,0x05]
sat.bu %d0, %d1


### tests for SATHU_dd

# CHECK-INST: sat.hu %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x07]
.code32
sat.hu %d0, %d0

# CHECK-INST: sat.hu %d0
# CHECK: encoding: [0x32,0x30]
sat.hu %d0, %d0

# CHECK-INST: sat.hu %d0, %d1
# CHECK: encoding: [0x0b,0x01,0xf0,0x07]
sat.hu %d0, %d1


### tests for SEL_dddd

# CHECK-INST: sel %d0, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0x0f]
.code32
sel %d0, %d15, %d1, %d0

# CHECK-INST: cmov %d0, %d15, %d1
# CHECK: encoding: [0x2a,0x10]
sel %d0, %d15, %d1, %d0

# CHECK-INST: sel %d0, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0x0f]
sel %d0, %d15, %d0, %d1

# CHECK-INST: sel %d0, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0x0e]
sel %d0, %d14, %d1, %d0


### tests for SEL_dddc

# CHECK-INST: sel %d0, %d15, %d0, -9
# CHECK: encoding: [0xab,0x70,0x9f,0x0f]
sel %d0, %d15, %d0, -9

# CHECK-INST: sel %d0, %d15, %d0, -8
# CHECK: encoding: [0xab,0x80,0x9f,0x0f]
.code32
sel %d0, %d15, %d0, -8

# CHECK-INST: cmovn %d0, %d15, -8
# CHECK: encoding: [0xea,0x80]
sel %d0, %d15, %d0, -8

# CHECK-INST: cmovn %d0, %d15, 7
# CHECK: encoding: [0xea,0x70]
sel %d0, %d15, %d0, 7

# CHECK-INST: sel %d0, %d15, %d0, 8
# CHECK: encoding: [0xab,0x80,0x80,0x0f]
sel %d0, %d15, %d0, 8

# CHECK-INST: sel %d0, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0x0e]
sel %d0, %d14, %d0, 0


### tests for SELN_dddd

# CHECK-INST: seln %d0, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0x0f]
.code32
seln %d0, %d15, %d1, %d0

# CHECK-INST: cmovn %d0, %d15, %d1
# CHECK: encoding: [0x6a,0x10]
seln %d0, %d15, %d1, %d0

# CHECK-INST: seln %d0, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0x0f]
seln %d0, %d15, %d0, %d1

# CHECK-INST: seln %d0, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0x0e]
seln %d0, %d14, %d1, %d0


### tests for SELN_dddc

# CHECK-INST: seln %d0, %d15, %d0, -9
# CHECK: encoding: [0xab,0x70,0xbf,0x0f]
seln %d0, %d15, %d0, -9

# CHECK-INST: seln %d0, %d15, %d0, -8
# CHECK: encoding: [0xab,0x80,0xbf,0x0f]
.code32
seln %d0, %d15, %d0, -8

# CHECK-INST: cmov %d0, %d15, -8
# CHECK: encoding: [0xaa,0x80]
seln %d0, %d15, %d0, -8

# CHECK-INST: cmov %d0, %d15, 7
# CHECK: encoding: [0xaa,0x70]
seln %d0, %d15, %d0, 7

# CHECK-INST: seln %d0, %d15, %d0, 8
# CHECK: encoding: [0xab,0x80,0xa0,0x0f]
seln %d0, %d15, %d0, 8

# CHECK-INST: seln %d0, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0x0e]
seln %d0, %d14, %d0, 0


### tests for SH_ddc

# CHECK-INST: sh %d0, %d0, -9
# CHECK: encoding: [0x8f,0x70,0x1f,0x00]
sh %d0, %d0, -9

# CHECK-INST: sh %d0, %d0, -8
# CHECK: encoding: [0x8f,0x80,0x1f,0x00]
.code32
sh %d0, %d0, -8

# CHECK-INST: sh %d0, -8
# CHECK: encoding: [0x06,0x80]
sh %d0, %d0, -8

# CHECK-INST: sh %d0, 7
# CHECK: encoding: [0x06,0x70]
sh %d0, %d0, 7

# CHECK-INST: sh %d0, %d0, 8
# CHECK: encoding: [0x8f,0x80,0x00,0x00]
sh %d0, %d0, 8

# CHECK-INST: sh %d0, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x00,0x00]
sh %d0, %d1, 0


### tests for SHA_ddc

# CHECK-INST: sha %d0, %d0, -9
# CHECK: encoding: [0x8f,0x70,0x3f,0x00]
sha %d0, %d0, -9

# CHECK-INST: sha %d0, %d0, -8
# CHECK: encoding: [0x8f,0x80,0x3f,0x00]
.code32
sha %d0, %d0, -8

# CHECK-INST: sha %d0, -8
# CHECK: encoding: [0x86,0x80]
sha %d0, %d0, -8

# CHECK-INST: sha %d0, 7
# CHECK: encoding: [0x86,0x70]
sha %d0, %d0, 7

# CHECK-INST: sha %d0, %d0, 8
# CHECK: encoding: [0x8f,0x80,0x20,0x00]
sha %d0, %d0, 8

# CHECK-INST: sha %d0, %d1, 0
# CHECK: encoding: [0x8f,0x01,0x20,0x00]
sha %d0, %d1, 0


### tests for STA_aca_poi

# CHECK-INST: st.a [%a1+], 2, %a0
# CHECK: encoding: [0x89,0x10,0x82,0x01]
st.a [%a1+], 2, %a0

# CHECK-INST: st.a [%a1+], 4, %a0
# CHECK: encoding: [0x89,0x10,0x84,0x01]
.code32
st.a [%a1+], 4, %a0

# CHECK-INST: st.a [%a1+], %a0
# CHECK: encoding: [0xe4,0x10]
st.a [%a1+], 4, %a0


### tests for STA_alca

# CHECK-INST: st.a [%a1], 1, %a0
# CHECK: encoding: [0xb5,0x10,0x01,0x00]
st.a [%a1], 1, %a0

# CHECK-INST: st.a [%a1], 0, %a0
# CHECK: encoding: [0xb5,0x10,0x00,0x00]
.code32
st.a [%a1], 0, %a0

# CHECK-INST: st.a [%a1], %a0
# CHECK: encoding: [0xf4,0x10]
st.a [%a1], 0, %a0


### tests for STB_acd_poi

# CHECK-INST: st.b [%a1+], 2, %d0
# CHECK: encoding: [0x89,0x10,0x02,0x00]
st.b [%a1+], 2, %d0

# CHECK-INST: st.b [%a1+], 1, %d0
# CHECK: encoding: [0x89,0x10,0x01,0x00]
.code32
st.b [%a1+], 1, %d0

# CHECK-INST: st.b [%a1+], %d0
# CHECK: encoding: [0x24,0x10]
st.b [%a1+], 1, %d0


### tests for STB_alcd

# CHECK-INST: st.b [%a1], 1, %d0
# CHECK: encoding: [0xe9,0x10,0x01,0x00]
st.b [%a1], 1, %d0

# CHECK-INST: st.b [%a1], 0, %d0
# CHECK: encoding: [0xe9,0x10,0x00,0x00]
.code32
st.b [%a1], 0, %d0

# CHECK-INST: st.b [%a1], %d0
# CHECK: encoding: [0x34,0x10]
st.b [%a1], 0, %d0


### tests for STH_acd_poi

# CHECK-INST: st.h [%a1+], 1, %d0
# CHECK: encoding: [0x89,0x10,0x81,0x00]
st.h [%a1+], 1, %d0

# CHECK-INST: st.h [%a1+], 2, %d0
# CHECK: encoding: [0x89,0x10,0x82,0x00]
.code32
st.h [%a1+], 2, %d0

# CHECK-INST: st.h [%a1+], %d0
# CHECK: encoding: [0xa4,0x10]
st.h [%a1+], 2, %d0


### tests for STH_alcd

# CHECK-INST: st.h [%a1], 1, %d0
# CHECK: encoding: [0xf9,0x10,0x01,0x00]
st.h [%a1], 1, %d0

# CHECK-INST: st.h [%a1], 0, %d0
# CHECK: encoding: [0xf9,0x10,0x00,0x00]
.code32
st.h [%a1], 0, %d0

# CHECK-INST: st.h [%a1], %d0
# CHECK: encoding: [0xb4,0x10]
st.h [%a1], 0, %d0


### tests for STW_acd_poi

# CHECK-INST: st.w [%a1+], 1, %d0
# CHECK: encoding: [0x89,0x10,0x01,0x01]
st.w [%a1+], 1, %d0

# CHECK-INST: st.w [%a1+], 4, %d0
# CHECK: encoding: [0x89,0x10,0x04,0x01]
.code32
st.w [%a1+], 4, %d0

# CHECK-INST: st.w [%a1+], %d0
# CHECK: encoding: [0x64,0x10]
st.w [%a1+], 4, %d0


### tests for STW_alcd

# CHECK-INST: st.w [%a1], 1, %d0
# CHECK: encoding: [0x59,0x10,0x01,0x00]
st.w [%a1], 1, %d0

# CHECK-INST: st.w [%a1], 0, %d0
# CHECK: encoding: [0x59,0x10,0x00,0x00]
.code32
st.w [%a1], 0, %d0

# CHECK-INST: st.w [%a1], %d0
# CHECK: encoding: [0x74,0x10]
st.w [%a1], 0, %d0


### tests for SUB_ddd

# CHECK-INST: sub %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0x00]
.code32
sub %d0, %d0, %d1

# CHECK-INST: sub %d0, %d1
# CHECK: encoding: [0xa2,0x10]
sub %d0, %d0, %d1

# CHECK-INST: sub %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0x00]
sub %d0, %d1, %d1


### tests for SUBS_ddd

# CHECK-INST: subs %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0x00]
.code32
subs %d0, %d0, %d1

# CHECK-INST: subs %d0, %d1
# CHECK: encoding: [0x62,0x10]
subs %d0, %d0, %d1

# CHECK-INST: subs %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0x00]
subs %d0, %d1, %d1


### tests for XOR_ddd

# CHECK-INST: xor %d0, %d0, %d1
# CHECK: encoding: [0x0f,0x10,0xc0,0x00]
.code32
xor %d0, %d0, %d1

# CHECK-INST: xor %d0, %d1
# CHECK: encoding: [0xc6,0x10]
xor %d0, %d0, %d1

# CHECK-INST: xor %d0, %d1
# CHECK: encoding: [0xc6,0x10]
xor %d0, %d1, %d0

# CHECK-INST: xor %d0, %d1, %d1
# CHECK: encoding: [0x0f,0x11,0xc0,0x00]
xor %d0, %d1, %d1
