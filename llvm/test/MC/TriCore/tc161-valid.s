# RUN: llvm-mc %s -triple=tricore -mcpu=tc2xx -mattr=tc161 -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc %s -triple=tricore -mcpu=tc3xx -mattr=tc162 -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc %s -triple=tricore -mcpu=tc4xx -mattr=tc18 -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s

# CHECK-INST: abs.b %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0x05]
.code32
abs.b %d0, %d0

# CHECK-INST: absdif.b %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0x04]
.code32
absdif.b %d0, %d0, %d0

# CHECK-INST: absdif.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0x06]
.code32
absdif.h %d0, %d0, %d0

# CHECK-INST: absdifs.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x06]
.code32
absdifs.h %d0, %d0, %d0

# CHECK-INST: absdifs %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xe0,0x01]
absdifs %d0, %d0, 0

# CHECK-INST: absdifs %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x00]
absdifs %d0, %d0, %d0

# CHECK-INST: absdif %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xc0,0x01]
absdif %d0, %d0, 0

# CHECK-INST: absdif %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0x00]
absdif %d0, %d0, %d0

# CHECK-INST: abs.h %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0x07]
.code32
abs.h %d0, %d0

# CHECK-INST: abss.h %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xd0,0x07]
.code32
abss.h %d0, %d0

# CHECK-INST: abss %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xd0,0x01]
abss %d0, %d0

# CHECK-INST: abs %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0x01]
abs %d0, %d0

# CHECK-INST: add.a %a0, %a0
# CHECK: encoding: [0x30,0x00]
.code16
add.a %a0, %a0

# CHECK-INST: add.a %a0, 0
# CHECK: encoding: [0xb0,0x00]
.code16
add.a %a0, 0

# CHECK-INST: add.a %a0, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x10,0x00]
.code32
add.a %a0, %a0, %a0 

# CHECK-INST: add.b %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x04]
.code32
add.b %d0, %d0, %d0

# CHECK-INST: addc %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xa0,0x00]
.code32
addc %d0, %d0, 0

# CHECK-INST: addc %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x50,0x00]
.code32
addc %d0, %d0, %d0

# CHECK-INST: add.f %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x21,0x00]
add.f %d0, %d0, %d0

# CHECK-INST: add.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x06]
.code32
add.h %d0, %d0, %d0

# CHECK-INST: addih.a %a0, %a0, 0
# CHECK: encoding: [0x11,0x00,0x00,0x00]
.code32
addih.a %a0, %a0, 0

# CHECK-INST: addih %d0, %d0, 0
# CHECK: encoding: [0x9b,0x00,0x00,0x00]
.code32
addih %d0, %d0, 0

# CHECK-INST: addi %d0, %d0, -32768
# CHECK: encoding: [0x1b,0x00,0x00,0x08]
.code32
addi %d0, %d0, -32768

# CHECK-INST: addsc.at %a0, %a0, %d0
# CHECK: encoding: [0x01,0x00,0x20,0x06]
.code32
addsc.at %a0, %a0, %d0

# CHECK-INST: addsc.a %a0, %a0, %d15, 0
# CHECK: encoding: [0x10,0x00]
.code16
addsc.a %a0, %a0, %d15, 0

# CHECK-INST: addsc.a %a0, %a0, %d0, 0
# CHECK: encoding: [0x01,0x00,0x00,0x06]
.code32
addsc.a %a0, %a0, %d0, 0

# CHECK-INST: adds.hu %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x06]
.code32
adds.hu %d0, %d0, %d0

# CHECK-INST: adds.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x06]
.code32
adds.h %d0, %d0, %d0

# CHECK-INST: adds.u %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0x00]
.code32
adds.u %d0, %d0, 0

# CHECK-INST: adds.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x00]
.code32
adds.u %d0, %d0, %d0

# CHECK-INST: adds %d0, %d0
# CHECK: encoding: [0x22,0x00]
.code16
adds %d0, %d0

# CHECK-INST: adds %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0x00]
.code32
adds %d0, %d0, 1

# CHECK-INST: adds %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x00]
.code32
adds %d0, %d0, %d0

# CHECK-INST: addx %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x80,0x00]
.code32
addx %d0, %d0, 0 

# CHECK-INST: addx %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x40,0x00]
.code32
addx %d0, %d0, %d0

# CHECK-INST: add %d15, %d0, 0
# CHECK: encoding: [0x9a,0x00]
.code16
add %d15, %d0, 0

# CHECK-INST: add %d15, %d0, %d0
# CHECK: encoding: [0x1a,0x00]
.code16
add %d15, %d0, %d0

# CHECK-INST: add %d0, 0
# CHECK: encoding: [0xc2,0x00]
.code16
add %d0, 0

# CHECK-INST: add %d0, %d0
# CHECK: encoding: [0x42,0x00]
.code16
add %d0, %d0

# CHECK-INST: add %d0, %d15, 0
# CHECK: encoding: [0x92,0x00]
.code16
add %d0, %d15, 0

# CHECK-INST: add %d0, %d15, %d0
# CHECK: encoding: [0x12,0x00]
.code16
add %d0, %d15, %d0

# CHECK-INST: add %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0x00]
.code32
add %d0, %d0, 0 

# CHECK-INST: add %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x00]
.code32
add %d0, %d0, %d0

# CHECK-INST: and.andn.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x47,0x00,0x60,0x00]
and.andn.t %d0, %d0, 0, %d0, 0

# CHECK-INST: and.and.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x47,0x00,0x00,0x00]
and.and.t %d0, %d0, 0, %d0, 0

# CHECK-INST: and.eq %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0xe4]
and.eq %d14, %d0, 0

# CHECK-INST: and.eq %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x02]
and.eq %d0, %d0, %d0

# CHECK-INST: and.ge.u %d0, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0xbf,0x04]
and.ge.u %d0, %d0, 511

# CHECK-INST: and.ge.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x50,0x02]
and.ge.u %d0, %d0, %d0

# CHECK-INST: and.lt.u %d0, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x7f,0x04]
and.lt.u %d0, %d0, 511 

# CHECK-INST: and.lt.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x02]
and.lt.u %d0, %d0, %d0

# CHECK-INST: and.ne %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0x04]
and.ne %d0, %d0, 0

# CHECK-INST: and.ne %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x10,0x02]
and.ne %d0, %d0, %d0

# CHECK-INST: and.nor.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x47,0x00,0x40,0x00]
and.nor.t %d0, %d0, 0, %d0, 0

# CHECK-INST: andn %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xe0,0x00]
.code32
andn %d0, %d0, %d0

# CHECK-INST: andn %d0, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xd0,0x01]
.code32
andn %d0, %d0, 271

# CHECK-INST: andn.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x60,0x00]
andn.t %d0, %d0, 0, %d0, 0

# CHECK-INST: and.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x00,0x00]
and.t %d0, %d0, 0, %d0, 0

# CHECK-INST: and %d0, %d0
# CHECK: encoding: [0x26,0x00]
.code16
and %d0, %d0

# CHECK-INST: and %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x80,0x00]
.code32
and %d0, %d0, %d0

# CHECK-INST: and %d0, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x10,0x01]
.code32
and %d0, %d0, 271

# CHECK-INST: and %d15, 0
# CHECK: encoding: [0x16,0x00]
.code16
and %d15, 0

# CHECK-INST: bisr 0
# CHECK: encoding: [0xe0,0x00]
.code16
bisr 0

# CHECK-INST: bisr 0
# CHECK: encoding: [0xe0,0x00]
bisr 0

# CHECK-INST: bmerge %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x10,0x00]
bmerge %d0, %d0, %d0

# CHECK-INST: bsplit %e0, %d0
# CHECK: encoding: [0x4b,0x00,0x90,0x00]
bsplit %e0, %d0 

# CHECK-INST: cachea.i %a0, -512
# CHECK: encoding: [0x89,0x00,0x80,0x8b]
.code32
cachea.i %a0, -512

# CHECK-INST: cachea.i [%p0 + r]
# CHECK: encoding: [0xa9,0x00,0x80,0x03]
.code32
cachea.i [%p0 + r] 

# CHECK-INST: cachea.i [%p0 + c], -512
# CHECK: encoding: [0xa9,0x00,0x80,0x87]
.code32
cachea.i [%p0 + c], -512 

# CHECK-INST: cachea.i [%a0+], -512
# CHECK: encoding: [0x89,0x00,0x80,0x83]
.code32
cachea.i [%a0+], -512

# CHECK-INST: cachea.i [+%a0], 0
# CHECK: encoding: [0x89,0x00,0x80,0x07]
.code32
cachea.i [+%a0], 0

# CHECK-INST: cachea.wi %a0, -512
# CHECK: encoding: [0x89,0x00,0x40,0x8b]
.code32
cachea.wi %a0, -512

# CHECK-INST: cachea.wi [%a0+], -512
# CHECK: encoding: [0x89,0x00,0x40,0x83]
.code32
cachea.wi [%a0+], -512

# CHECK-INST: cachea.wi [%p0 + c], -512
# CHECK: encoding: [0xa9,0x00,0x40,0x87]
.code32
cachea.wi [%p0 + c], -512

# CHECK-INST: cachea.wi [%p0 + r]
# CHECK: encoding: [0xa9,0x00,0x40,0x03]
.code32
cachea.wi [%p0 + r]

# CHECK-INST: cachea.wi [+%a0], -512
# CHECK: encoding: [0x89,0x00,0x40,0x87]
.code32
cachea.wi [+%a0], -512

# CHECK-INST: cachea.w %a0, -512
# CHECK: encoding: [0x89,0x00,0x00,0x8b]
.code32
cachea.w %a0, -512

# CHECK-INST: cachea.w [%a0+], -512
# CHECK: encoding: [0x89,0x00,0x00,0x83]
.code32
cachea.w [%a0+], -512

# CHECK-INST: cachea.w [%p0 + c], -512
# CHECK: encoding: [0xa9,0x00,0x00,0x87]
.code32
cachea.w [%p0 + c], -512

# CHECK-INST: cachea.w [%p0 + r]
# CHECK: encoding: [0xa9,0x00,0x00,0x03]
.code32
cachea.w [%p0 + r]

# CHECK-INST: cachea.w [+%a0], -512
# CHECK: encoding: [0x89,0x00,0x00,0x87]
.code32
cachea.w [+%a0], -512 

# CHECK-INST: cachei.i %a0, -512
# CHECK: encoding: [0x89,0x00,0x80,0x8a]
.code32
cachei.i %a0, -512

# CHECK-INST: cachei.i [%a0+], -512
# CHECK: encoding: [0x89,0x00,0x80,0x82]
.code32
cachei.i [%a0+], -512

# CHECK-INST: cachei.i [+%a0], -512
# CHECK: encoding: [0x89,0x00,0x80,0x86]
.code32
cachei.i [+%a0], -512

# CHECK-INST: cachei.wi %a0, -512
# CHECK: encoding: [0x89,0x00,0xc0,0x8b]
.code32
cachei.wi %a0, -512

# CHECK-INST: cachei.wi [%a0+], -512
# CHECK: encoding: [0x89,0x00,0xc0,0x83]
.code32
cachei.wi [%a0+], -512

# CHECK-INST: cachei.wi [+%a0], -512
# CHECK: encoding: [0x89,0x00,0xc0,0x87]
.code32
cachei.wi [+%a0], -512 

# CHECK-INST: cachei.w %a0, -512
# CHECK: encoding: [0x89,0x00,0xc0,0x8a]
.code32
cachei.w %a0, -512

# CHECK-INST: cachei.w [%a0+], -512
# CHECK: encoding: [0x89,0x00,0xc0,0x82]
.code32
cachei.w [%a0+], -512

# CHECK-INST: cachei.w [+%a0], -512
# CHECK: encoding: [0x89,0x00,0xc0,0x86]
.code32
cachei.w [+%a0], -512

# CHECK-INST: caddn %d0, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0x00]
caddn %d0, %d0, %d0, %d0

# CHECK-INST: caddn %d0, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0x00]
caddn %d0, %d0, %d0, -256

# CHECK-INST: caddn %d0, %d15, -8
# CHECK: encoding: [0xca,0x80]
caddn %d0, %d15, -8 

# CHECK-INST: cadd %d0, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0x00]
cadd %d0, %d0, %d0, %d0

# CHECK-INST: cadd %d0, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0x00]
cadd %d0, %d0, %d0, -256

# CHECK-INST: cadd %d0, %d15, -8
# CHECK: encoding: [0x8a,0x80]
cadd %d0, %d15, -8 

# CHECK-INST: call -16777216
# CHECK: encoding: [0x6d,0x80,0x00,0x00]
.code32
call -16777216      # -0x1000000

# CHECK-INST: calla 0
# CHECK: encoding: [0xed,0x00,0x00,0x00]
.code32
calla 0

# CHECK-INST: calli %a0
# CHECK: encoding: [0x2d,0x00,0x00,0x00]
.code32
calli %a0

# CHECK-INST: call -256
# CHECK: encoding: [0x5c,0x80]
.code16
call -256 

# CHECK-INST: clo.h %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xd0,0x07]
.code32
clo.h %d0, %d0 

# CHECK-INST: clo %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xc0,0x01]
clo %d0, %d0

# CHECK-INST: cls.h %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xe0,0x07]
.code32
cls.h %d0, %d0

# CHECK-INST: cls %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xd0,0x01]
cls %d0, %d0

# CHECK-INST: clz.h %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xc0,0x07]
.code32
clz.h %d0, %d0 

# CHECK-INST: clz %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xb0,0x01]
clz %d0, %d0

# CHECK-INST: cmovn %d0, %d15, %d0
# CHECK: encoding: [0x6a,0x00]
cmovn %d0, %d15, %d0

# CHECK-INST: cmovn %d0, %d15, -8
# CHECK: encoding: [0xea,0x80]
cmovn %d0, %d15, -8

# CHECK-INST: cmov %d0, %d15, %d0
# CHECK: encoding: [0x2a,0x00]
cmov %d0, %d15, %d0

# CHECK-INST: cmov %d0, %d15, -8
# CHECK: encoding: [0xaa,0x80]
cmov %d0, %d15, -8

# CHECK-INST: cmp.f %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x01,0x00]
cmp.f %d0, %d0, %d0

# CHECK-INST: cmpswap.w [%a0+], -512, %e0
# CHECK: encoding: [0x49,0x00,0xc0,0x80]
.code32
cmpswap.w [%a0+], -512, %e0

# CHECK-INST: cmpswap.w [%a0], -512, %e0
# CHECK: encoding: [0x49,0x00,0xc0,0x88]
.code32
cmpswap.w [%a0], -512, %e0

# CHECK-INST: cmpswap.w [%p0 + c], -512, %e0
# CHECK: encoding: [0x69,0x00,0xc0,0x84]
.code32
cmpswap.w [%p0 + c], -512, %e0

# CHECK-INST: cmpswap.w [%p0 + r], %e0
# CHECK: encoding: [0x69,0x00,0xc0,0x00]
.code32
cmpswap.w [%p0 + r], %e0

# CHECK-INST: cmpswap.w [+%a0], -512, %e0
# CHECK: encoding: [0x49,0x00,0xc0,0x84]
.code32
cmpswap.w [+%a0], -512, %e0 

# CHECK-INST: csubn %d0, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0x00]
csubn %d0, %d0, %d0, %d0

# CHECK-INST: csub %d0, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0x00]
csub %d0, %d0, %d0, %d0

# CHECK-INST: debug
# CHECK: encoding: [0x0d,0x00,0x00,0x01]
.code32
debug

# CHECK-INST: debug
# CHECK: encoding: [0x00,0xa0]
.code16
debug

# CHECK-INST: dextr %d0, %d0, %d0, 0
# CHECK: encoding: [0x77,0x00,0x00,0x00]
dextr %d0, %d0, %d0, 0 

# CHECK-INST: dextr %d0, %d0, %d0, %d0
# CHECK: encoding: [0x17,0x00,0x80,0x00]
dextr %d0, %d0, %d0, %d0

# CHECK-INST: disable
# CHECK: encoding: [0x0d,0x00,0x40,0x03]
.code32
disable

# CHECK-INST: disable %d0
# CHECK: encoding: [0x0d,0x00,0xc0,0x03]
.code32
disable %d0

# CHECK-INST: div.f %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x51,0x00]
div.f %d0, %d0, %d0  

# CHECK-INST: div.u %e0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x11,0x02]
div.u %e0, %d0, %d0 

# CHECK-INST: div %e0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x01,0x02]
div %e0, %d0, %d0 

# CHECK-INST: dsync
# CHECK: encoding: [0x0d,0x00,0x80,0x04]
.code32
dsync 

# CHECK-INST: dvadj %e0, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xd0,0x00]
dvadj %e0, %e0, %d0

# CHECK-INST: dvinit.bu %e0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0x04]
dvinit.bu %e0, %d0, %d0

# CHECK-INST: dvinit.b %e0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0x05]
dvinit.b %e0, %d0, %d0

# CHECK-INST: dvinit.hu %e0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0x02]
dvinit.hu %e0, %d0, %d0

# CHECK-INST: dvinit.h %e0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0x03]
dvinit.h %e0, %d0, %d0

# CHECK-INST: dvinit.u %e0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0x00]
dvinit.u %e0, %d0, %d0 

# CHECK-INST: dvinit %e0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0xa0,0x01]
dvinit %e0, %d0, %d0 

# CHECK-INST: dvstep.u %e0, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xe0,0x00]
dvstep.u %e0, %e0, %d0

# CHECK-INST: dvstep %e0, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xf0,0x00]
dvstep %e0, %e0, %d0

# CHECK-INST: enable
# CHECK: encoding: [0x0d,0x00,0x00,0x03]
.code32
enable

# CHECK-INST: eqany.b %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x60,0x05]
.code32
eqany.b %d0, %d0, %d0

# CHECK-INST: eqany.b %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xd0,0x0a]
.code32
eqany.b %d0, %d0, -256

# CHECK-INST: eqany.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x60,0x07]
.code32
eqany.h %d0, %d0, %d0

# CHECK-INST: eqany.h %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xd0,0x0e]
.code32
eqany.h %d0, %d0, -256

# CHECK-INST: eq.a %d0, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x00,0x04]
eq.a %d0, %a0, %a0

# CHECK-INST: eq.b %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x05]
eq.b %d0, %d0, %d0

# CHECK-INST: eq.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x07]
eq.h %d0, %d0, %d0

# CHECK-INST: eq.w %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x09]
eq.w %d0, %d0, %d0 

# CHECK-INST: eq.b %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x05]
eq.b %d0, %d0, %d0

# CHECK-INST: eqz.a %d0, %a0
# CHECK: encoding: [0x01,0x00,0x80,0x04]
eqz.a %d0, %a0 

# CHECK-INST: eq %d15, %d0, %d0
# CHECK: encoding: [0x3a,0x00]
.code16
eq %d15, %d0, %d0

# CHECK-INST: eq %d15, %d0, -8
# CHECK: encoding: [0xba,0x80]
.code16
eq %d15, %d0, -8 

# CHECK-INST: eq %d15, %d0, 0
# CHECK: encoding: [0xba,0x00]
.code16
eq %d15, %d0, 0

# CHECK-INST: eq %d15, %d0, %d0
# CHECK: encoding: [0x3a,0x00]
.code16
eq %d15, %d0, %d0 

# CHECK-INST: extr.u %d0, %d0, 0, 0
# CHECK: encoding: [0x37,0x00,0x60,0x00]
extr.u %d0, %d0, 0, 0 

# CHECK: encoding: [0x57,0x00,0x60,0x00]
extr.u %d0, %d0, %d0, 0

# CHECK-INST: extr.u %d0, %d0, %e0
# CHECK: encoding: [0x17,0x00,0x60,0x00]
extr.u %d0, %d0, %e0

# CHECK-INST: extr %d0, %d0, %d0, 0
# CHECK: encoding: [0x57,0x00,0x40,0x00]
extr %d0, %d0, %d0, 0

# CHECK-INST: extr %d0, %d0, %e0
# CHECK: encoding: [0x17,0x00,0x40,0x00]
extr %d0, %d0, %e0

# CHECK-INST: extr %d0, %d0, 0, 0
# CHECK: encoding: [0x37,0x00,0x40,0x00]
extr %d0, %d0, 0, 0

# CHECK-INST: fcalla 2
# CHECK: encoding: [0xe1,0x00,0x01,0x00]
.code32
fcalla 2

# CHECK-INST: fcalli %a0
# CHECK: encoding: [0x2d,0x00,0x10,0x00]
fcalli %a0

# CHECK-INST: fcall -16777216
# CHECK: encoding: [0x61,0x80,0x00,0x00]
.code32
fcall -16777216

# CHECK-INST: fret
# CHECK: encoding: [0x00,0x70]
.code16
fret 

# CHECK-INST: fret
# CHECK: encoding: [0x0d,0x00,0xc0,0x00]
.code32
fret

# CHECK-INST: ftoiz %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x31,0x01]
ftoiz %d0, %d0

# CHECK-INST: ftoi %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x01,0x01]
ftoi %d0, %d0

# CHECK-INST: ftoq31z %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x81,0x01]
ftoq31z %d0, %d0, %d0

# CHECK-INST: ftoq31 %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x11,0x01]
ftoq31 %d0, %d0, %d0

# CHECK-INST: ftouz %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x71,0x01]
ftouz %d0, %d0 

# CHECK-INST: ftou %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x21,0x01]
ftou %d0, %d0

# CHECK-INST: ge.a %d0, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x30,0x04]
ge.a %d0, %a0, %a0

# CHECK-INST: ge.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x50,0x01]
.code32
ge.u %d0, %d0, %d0

# CHECK-INST: ge.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0xb0,0x02]
.code32
ge.u %d0, %d0, 271 

# CHECK-INST: ge %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x40,0x01]
.code32
ge %d0, %d0, %d0

# CHECK-INST: ge %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x90,0x02]
.code32
ge %d0, %d0, -256

# CHECK-INST: imask %e0, %d0, %d0, 0
# CHECK: encoding: [0x57,0x00,0x20,0x00]
imask %e0, %d0, %d0, 0

# CHECK-INST: imask %e0, 0, %d0, 0
# CHECK: encoding: [0xd7,0x00,0x20,0x00]
imask %e0, 0, %d0, 0

# CHECK-INST: imask %e0, 0, 0, 0
# CHECK: encoding: [0xb7,0x00,0x20,0x00]
imask %e0, 0, 0, 0

# CHECK-INST: imask %e0, %d0, 0, 0
# CHECK: encoding: [0x37,0x00,0x20,0x00]
imask %e0, %d0, 0, 0

# CHECK-INST: insert %d0, %d0, 0, 0, 0
# CHECK: encoding: [0xb7,0x00,0x00,0x00]
insert %d0, %d0, 0, 0, 0

# CHECK-INST: insert %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0xd7,0x00,0x00,0x00]
insert %d0, %d0, 0, %d0, 0

# CHECK-INST: insert %d0, %d0, 0, %e0
# CHECK: encoding: [0x97,0x00,0x00,0x00]
insert %d0, %d0, 0, %e0

# CHECK-INST: insert %d0, %d0, %d0, 0, 0
# CHECK: encoding: [0x37,0x00,0x00,0x00]
insert %d0, %d0, %d0, 0, 0

# CHECK-INST: insert %d0, %d0, %d0, %d0, 0
# CHECK: encoding: [0x57,0x00,0x00,0x00]
insert %d0, %d0, %d0, %d0, 0

# CHECK-INST: insert %d0, %d0, %d0, %e0
# CHECK: encoding: [0x17,0x00,0x00,0x00]
insert %d0, %d0, %d0, %e0

# CHECK-INST: insn.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x67,0x00,0x20,0x00]
insn.t %d0, %d0, 0, %d0, 0

# CHECK-INST: ins.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x67,0x00,0x00,0x00]
ins.t %d0, %d0, 0, %d0, 0

# CHECK-INST: isync
# CHECK: encoding: [0x0d,0x00,0xc0,0x04]
.code32
isync

# CHECK-INST: itof %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x41,0x01]
itof %d0, %d0

# CHECK-INST: ixmax.u %e0, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xb0,0x00]
ixmax.u %e0, %e0, %d0 

# CHECK-INST: ixmax %e0, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0xa0,0x00]
ixmax %e0, %e0, %d0

# CHECK-INST: ixmin.u %e0, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0x90,0x00]
ixmin.u %e0, %e0, %d0

# CHECK-INST: ixmin %e0, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0x80,0x00]
ixmin %e0, %e0, %d0

# CHECK-INST: j -16777216
# CHECK: encoding: [0x1d,0x80,0x00,0x00]
.code32
j -16777216     # -0x1000000

# CHECK-INST: ja 0
# CHECK: encoding: [0x9d,0x00,0x00,0x00]
.code32
ja 0

# CHECK-INST: jeq.a %a0, %a0, 256
# CHECK: encoding: [0x7d,0x00,0x80,0x00]
.code32
jeq.a %a0, %a0, 256

# CHECK-INST: jeq %d15, -8, 0
# CHECK: encoding: [0x1e,0x80]
.code16
jeq %d15, -8, 0

# CHECK-INST: jeq %d15, -8, 32
# CHECK: encoding: [0x9e,0x80]
.code16
jeq %d15, -8, 32

# CHECK-INST: jeq %d0, %d0, 256
# CHECK: encoding: [0x5f,0x00,0x80,0x00]
.code32
jeq %d0, %d0, 256

# CHECK-INST: jeq %d15, %d0, 32
# CHECK: encoding: [0xbe,0x00]
.code16
jeq %d15, %d0, 32 

# CHECK-INST: jeq %d0, %d0, 256
# CHECK: encoding: [0x5f,0x00,0x80,0x00]
.code32
jeq %d0, %d0, 256 

# CHECK-INST: jeq %d0, 0, 256
# CHECK: encoding: [0xdf,0x00,0x80,0x00]
.code32
jeq %d0, 0, 256

# CHECK-INST: jge.u %d0, %d0, 256
# CHECK: encoding: [0x7f,0x00,0x80,0x80]
.code32
jge.u %d0, %d0, 256

# CHECK-INST: jge.u %d0, 0, 256
# CHECK: encoding: [0xff,0x00,0x80,0x80]
.code32
jge.u %d0, 0, 256

# CHECK-INST: jgez %d0, 0
# CHECK: encoding: [0xce,0x00]
.code16
jgez %d0, 0

# CHECK-INST: jge %d0, %d0, 256
# CHECK: encoding: [0x7f,0x00,0x80,0x00]
.code32
jge %d0, %d0, 256

# CHECK-INST: jge %d0, -8, 256
# CHECK: encoding: [0xff,0x80,0x80,0x00]
.code32
jge %d0, -8, 256

# CHECK-INST: jgtz %d0, 0
# CHECK: encoding: [0x4e,0x00]
.code16
jgtz %d0, 0

# CHECK-INST: ji %a0
# CHECK: encoding: [0x2d,0x00,0x30,0x00]
.code32
ji %a0

# CHECK-INST: ji %a4
# CHECK: encoding: [0xdc,0x04]
.code16
ji %a4

# CHECK-INST: jl -16777216
# CHECK: encoding: [0x5d,0x80,0x00,0x00]
.code32
jl -16777216    # -0x1000000

# CHECK-INST: jla 0
# CHECK: encoding: [0xdd,0x00,0x00,0x00]
.code32
jla 0

# CHECK-INST: jlez %d0, 0
# CHECK: encoding: [0x8e,0x00]
.code16
jlez %d0, 0

# CHECK-INST: jli %a0
# CHECK: encoding: [0x2d,0x00,0x20,0x00]
.code32
jli %a0

# CHECK-INST: jlt.u %d0, %d0, 256
# CHECK: encoding: [0x3f,0x00,0x80,0x80]
.code32
jlt.u %d0, %d0, 256

# CHECK-INST: jlt.u %d0, 0, 256
# CHECK: encoding: [0xbf,0x00,0x80,0x80]
.code32
jlt.u %d0, 0, 256

# CHECK-INST: jltz %d0, 0
# CHECK: encoding: [0x0e,0x00]
.code16
jltz %d0, 0

# CHECK-INST: jlt %d0, %d0, 256
# CHECK: encoding: [0x3f,0x00,0x80,0x00]
.code32
jlt %d0, %d0, 256

# CHECK-INST: jlt %d0, -8, 256
# CHECK: encoding: [0xbf,0x80,0x80,0x00]
.code32
jlt %d0, -8, 256

# CHECK-INST: jne.a %a0, %a0, 256
# CHECK: encoding: [0x7d,0x00,0x80,0x80]
.code32
jne.a %a0, %a0, 256 

# CHECK-INST: jned %d0, %d0, -32768
# CHECK: encoding: [0x1f,0x00,0x00,0xc0]
.code32
jned %d0, %d0, -32768

# CHECK-INST: jned %d0, -8, -32768
# CHECK: encoding: [0x9f,0x80,0x00,0xc0]
.code32
jned %d0, -8, -32768

# CHECK-INST: jnei %d0, %d0, -32768
# CHECK: encoding: [0x1f,0x00,0x00,0x40]
.code32
jnei %d0, %d0, -32768

# CHECK-INST: jnei %d0, -8, -32768
# CHECK: encoding: [0x9f,0x80,0x00,0x40]
.code32
jnei %d0, -8, -32768

# CHECK-INST: jne %d15, -1, 0
# CHECK: encoding: [0x5e,0xf0]
.code16
jne %d15, -1, 0

# CHECK-INST: jne %d15, -8, 32
# CHECK: encoding: [0xde,0x80]
.code16
jne %d15, -8, 32

# CHECK-INST: jlt %d15, %d0, 256
# CHECK: encoding: [0x3f,0x0f,0x80,0x00]
.code32
jlt %d15, %d0, 256

# CHECK-INST: jne %d15, %d0, 0
# CHECK: encoding: [0x7e,0x00]
.code16
jne %d15, %d0, 0 

# CHECK-INST: jne %d0, %d0, 256
# CHECK: encoding: [0x5f,0x00,0x80,0x80]
.code32
jne %d0, %d0, 256

# CHECK-INST: jnz.a %a0, 0
# CHECK: encoding: [0x7c,0x00]
jnz.a %a0, 0 

# CHECK-INST: jnz.a %a0, 256
# CHECK: encoding: [0xbd,0x00,0x80,0x80]
.code32
jnz.a %a0, 256

# CHECK-INST: jnz.t %d0, 0, 256
# CHECK: encoding: [0x6f,0x00,0x80,0x80]
.code32
jnz.t %d0, 0, 256

# CHECK-INST: jnz.t %d15, 0, 0
# CHECK: encoding: [0xae,0x00]
.code16
jnz.t %d15, 0, 0

# CHECK-INST: jnz %d15, 0
# CHECK: encoding: [0xee,0x00]
.code16
jnz %d15, 0

# CHECK-INST: jnz %d0, 2
# CHECK: encoding: [0xf6,0x01]
.code16
jnz %d0, 2

# CHECK-INST: jz.a %a0, 0
# CHECK: encoding: [0xbc,0x00]
.code16
jz.a %a0, 0

# CHECK-INST: jz.a %a0, 256
# CHECK: encoding: [0xbd,0x00,0x80,0x00]
.code32
jz.a %a0, 256

# CHECK-INST: jz.t %d0, 0, 256
# CHECK: encoding: [0x6f,0x00,0x80,0x00]
.code32
jz.t %d0, 0, 256

# CHECK-INST: jz.t %d15, 0, 0
# CHECK: encoding: [0x2e,0x00]
.code16
jz.t %d15, 0, 0

# CHECK-INST: jz %d15, 0
# CHECK: encoding: [0x6e,0x00]
jz %d15, 0

# CHECK-INST: jz %d0, 0
# CHECK: encoding: [0x76,0x00]
jz %d0, 0

# CHECK-INST: ld.a %a15, [%a10], 0
# CHECK: encoding: [0xd8,0x00]
.code16
ld.a %a15, [%a10], 0 

# CHECK-INST: ld.a %a0, [%a0]
# CHECK: encoding: [0xd4,0x00]
.code16
ld.a %a0, [%a0]

# CHECK-INST: ld.a %a0, [%a0+]
# CHECK: encoding: [0xc4,0x00]
.code16
ld.a %a0, [%a0+]








# CHECK-INST: ld.a %a0, 1
# CHECK: encoding: [0x85,0x00,0x01,0x08]
.code32
ld.a %a0, 1

# CHECK-INST: ld.a %a0, [%a0+], -512
# CHECK: encoding: [0x09,0x00,0x80,0x81]
.code32
ld.a %a0, [%a0+], -512

# CHECK-INST: ld.a %a0, [%a0], -32768
# CHECK: encoding: [0x99,0x00,0x00,0x08]
.code32
ld.a %a0, [%a0], -32768

# CHECK-INST: ld.a %a0, [%p0 + c], -512
# CHECK: encoding: [0x29,0x00,0x80,0x85]
.code32
ld.a %a0, [%p0 + c], -512

# CHECK-INST: ld.a %a0, [%p0 + r]
# CHECK: encoding: [0x29,0x00,0x80,0x01]
.code32
ld.a %a0, [%p0 + r]

# CHECK-INST: ld.a %a0, [+%a0], -512
# CHECK: encoding: [0x09,0x00,0x80,0x85]
.code32
ld.a %a0, [+%a0], -512




# CHECK-INST: ld.bu %d0, [%a15], 0
# CHECK: encoding: [0x08,0x00]
.code16
ld.bu %d0, [%a15], 0

# CHECK-INST: ld.bu %d0, [%a0]
# CHECK: encoding: [0x14,0x00]
.code16
ld.bu %d0, [%a0]

# CHECK-INST: ld.bu %d0, [%a15]
# CHECK: encoding: [0x14,0xf0]
.code16
ld.bu %d0, [%a15]

# CHECK-INST: ld.bu %d0, [%a0+]
# CHECK: encoding: [0x04,0x00]
.code16
ld.bu %d0, [%a0+]


# CHECK-INST: ld.a %a0, [%a0+], -512
# CHECK: encoding: [0x09,0x00,0x80,0x81]
.code32
ld.a %a0, [%a0+], -512

# CHECK-INST: ld.bu %d0, [%a0+], -512
# CHECK: encoding: [0x09,0x00,0x40,0x80]
.code32
ld.bu %d0, [%a0+], -512

# CHECK-INST: ld.bu %d0, [+%a0], -512
# CHECK: encoding: [0x09,0x00,0x40,0x84]
.code32
ld.bu %d0, [+%a0], -512 

# CHECK-INST: ld.bu %d0, [%a0], -32768
# CHECK: encoding: [0x39,0x00,0x00,0x08]
.code32
ld.bu %d0, [%a0], -32768

# CHECK-INST: ld.bu %d0, 1
# CHECK: encoding: [0x05,0x00,0x01,0x04]
.code32
ld.bu %d0, 1

# CHECK-INST: ld.bu %d0, [%p0 + c], -512
# CHECK: encoding: [0x29,0x00,0x40,0x84]
.code32
ld.bu %d0, [%p0 + c], -512

# CHECK-INST: ld.bu %d0, [%p0 + r]
# CHECK: encoding: [0x29,0x00,0x40,0x00]
.code32
ld.bu %d0, [%p0 + r]

# CHECK-INST: ld.d %e0, 1
# CHECK: encoding: [0x85,0x00,0x01,0x04]
.code32
ld.d %e0, 1

# CHECK-INST: ld.d %e0, [%a0+], -512
# CHECK: encoding: [0x09,0x00,0x40,0x81]
.code32
ld.d %e0, [%a0+], -512

# CHECK-INST: ld.d %e0, [%a0], -512
# CHECK: encoding: [0x09,0x00,0x40,0x89]
.code32
ld.d %e0, [%a0], -512

# CHECK-INST: ld.d %e0, [%p0 + c], -512
# CHECK: encoding: [0x29,0x00,0x40,0x85]
.code32
ld.d %e0, [%p0 + c], -512

# CHECK-INST: ld.d %e0, [%p0 + r]
# CHECK: encoding: [0x29,0x00,0x40,0x01]
.code32
ld.d %e0, [%p0 + r]

# CHECK-INST: ld.d %e0, [+%a0], -512
# CHECK: encoding: [0x09,0x00,0x40,0x85]
.code32
ld.d %e0, [+%a0], -512 

# CHECK-INST: ld.b %d0, [%a0], -32768
# CHECK: encoding: [0x79,0x00,0x00,0x08]
.code32
ld.b %d0, [%a0], -32768

# CHECK-INST: ld.da %p0, 1
# CHECK: encoding: [0x85,0x00,0x01,0x0c]
.code32
ld.da %p0, 1

# CHECK-INST: ld.da %p0, [%a0+], -512
# CHECK: encoding: [0x09,0x00,0xc0,0x81]
.code32
ld.da %p0, [%a0+], -512

# CHECK-INST: ld.da %p0, [%a0], -512
# CHECK: encoding: [0x09,0x00,0xc0,0x89]
.code32
ld.da %p0, [%a0], -512

# CHECK-INST: ld.da %p0, [%p0 + c], -512
# CHECK: encoding: [0x29,0x00,0xc0,0x85]
.code32
ld.da %p0, [%p0 + c], -512

# CHECK-INST: ld.da %p0, [%p0 + r]
# CHECK: encoding: [0x29,0x00,0xc0,0x01]
.code32
ld.da %p0, [%p0 + r]

# CHECK-INST: ld.da %p0, [+%a0], -512
# CHECK: encoding: [0x09,0x00,0xc0,0x85]
.code32
ld.da %p0, [+%a0], -512 

# CHECK-INST: ld.d %e0, 1
# CHECK: encoding: [0x85,0x00,0x01,0x04]
.code32
ld.d %e0, 1

# CHECK-INST: ld.d %e0, [%a0+], -512
# CHECK: encoding: [0x09,0x00,0x40,0x81]
.code32
ld.d %e0, [%a0+], -512

# CHECK-INST: ld.d %e0, [%a0], -512
# CHECK: encoding: [0x09,0x00,0x40,0x89]
.code32
ld.d %e0, [%a0], -512

# CHECK-INST: ld.d %e0, [%p0 + c], -512
# CHECK: encoding: [0x29,0x00,0x40,0x85]
.code32
ld.d %e0, [%p0 + c], -512

# CHECK-INST: ld.d %e0, [%p0 + r]
# CHECK: encoding: [0x29,0x00,0x40,0x01]
.code32
ld.d %e0, [%p0 + r]

# CHECK-INST: ld.d %e0, [+%a0], -512
# CHECK: encoding: [0x09,0x00,0x40,0x85]
.code32
ld.d %e0, [+%a0], -512 

# CHECK-INST: ld.hu %d0, 1
# CHECK: encoding: [0x05,0x00,0x01,0x0c]
.code32
ld.hu %d0, 1

# CHECK-INST: ld.hu %d0, [%a0+], -512
# CHECK: encoding: [0x09,0x00,0xc0,0x80]
.code32
ld.hu %d0, [%a0+], -512

# CHECK-INST: ld.hu %d0, [%a0], -32768
# CHECK: encoding: [0xb9,0x00,0x00,0x08]
.code32
ld.hu %d0, [%a0], -32768

# CHECK-INST: ld.hu %d0, [%p0 + c], -512
# CHECK: encoding: [0x29,0x00,0xc0,0x84]
.code32
ld.hu %d0, [%p0 + c], -512

# CHECK-INST: ld.hu %d0, [%p0 + r]
# CHECK: encoding: [0x29,0x00,0xc0,0x00]
.code32
ld.hu %d0, [%p0 + r]

# CHECK-INST: ld.hu %d0, [+%a0], -512
# CHECK: encoding: [0x09,0x00,0xc0,0x84]
.code32
ld.hu %d0, [+%a0], -512 

# CHECK-INST: ld.hu %d0, [%a0], -32768
# CHECK: encoding: [0xb9,0x00,0x00,0x08]
.code32
ld.hu %d0, [%a0], -32768

# CHECK-INST: ld.h %d0, [%a0+]
# CHECK: encoding: [0x84,0x00]
.code16
ld.h %d0, [%a0+]

# CHECK-INST: ld.h %d0, [%a0]
# CHECK: encoding: [0x94,0x00]
.code16
ld.h %d0, [%a0]

# CHECK-INST: ld.h %d0, [%a15], 0
# CHECK: encoding: [0x88,0x00]
.code16
ld.h %d0, [%a15], 0

# CHECK-INST: ld.h %d15, [%a0], 0
# CHECK: encoding: [0x8c,0x00]
.code16
ld.h %d15, [%a0], 0

# CHECK-INST: ld.h %d0, [+%a0], -512
# CHECK: encoding: [0x09,0x00,0x80,0x84]
.code32
ld.h %d0, [+%a0], -512 

# CHECK-INST: ld.h %d0, [%a0+], -512
# CHECK: encoding: [0x09,0x00,0x80,0x80]
.code32
ld.h %d0, [%a0+], -512

# CHECK-INST: ld.h %d0, [%a0], -32768
# CHECK: encoding: [0xc9,0x00,0x00,0x08]
.code32
ld.h %d0, [%a0], -32768

# CHECK-INST: ld.h %d0, 1
# CHECK: encoding: [0x05,0x00,0x01,0x08]
.code32
ld.h %d0, 1

# CHECK-INST: ld.h %d0, [%p0 + r]
# CHECK: encoding: [0x29,0x00,0x80,0x00]
.code32
ld.h %d0, [%p0 + r]

# CHECK-INST: ld.h %d0, [%p0 + c], -512
# CHECK: encoding: [0x29,0x00,0x80,0x84]
.code32
ld.h %d0, [%p0 + c], -512

# CHECK-INST: ldlcx 1
# CHECK: encoding: [0x15,0x00,0x01,0x08]
.code32
ldlcx 1

# CHECK-INST: ldlcx [%a0], -512
# CHECK: encoding: [0x49,0x00,0x00,0x89]
.code32
ldlcx [%a0], -512

# CHECK-INST: ldmst 1, %e0
# CHECK: encoding: [0xe5,0x00,0x01,0x04]
.code32
ldmst 1, %e0

# CHECK-INST: ldmst [%a0+], -512, %e0
# CHECK: encoding: [0x49,0x00,0x40,0x80]
.code32
ldmst [%a0+], -512, %e0

# CHECK-INST: ldmst [%a0], -512, %e0
# CHECK: encoding: [0x49,0x00,0x40,0x88]
.code32
ldmst [%a0], -512, %e0

# CHECK-INST: ldmst [%p0 + c], -512, %e0
# CHECK: encoding: [0x69,0x00,0x40,0x84]
.code32
ldmst [%p0 + c], -512, %e0

# CHECK-INST: ldmst [%p0 + r], %e0
# CHECK: encoding: [0x69,0x00,0x40,0x00]
.code32
ldmst [%p0 + r], %e0

# CHECK-INST: ldmst [+%a0], -512, %e0
# CHECK: encoding: [0x49,0x00,0x40,0x84]
.code32
ldmst [+%a0], -512, %e0 

# CHECK-INST: ld.q %d0, 1
# CHECK: encoding: [0x45,0x00,0x01,0x00]
.code32
ld.q %d0, 1

# CHECK-INST: ld.q %d0, [%a0+], -512
# CHECK: encoding: [0x09,0x00,0x00,0x82]
.code32
ld.q %d0, [%a0+], -512

# CHECK-INST: ld.q %d0, [%a0], -512
# CHECK: encoding: [0x09,0x00,0x00,0x8a]
.code32
ld.q %d0, [%a0], -512

# CHECK-INST: ld.q %d0, [%p0 + c], -512
# CHECK: encoding: [0x29,0x00,0x00,0x86]
.code32
ld.q %d0, [%p0 + c], -512

# CHECK-INST: ld.q %d0, [%p0 + r]
# CHECK: encoding: [0x29,0x00,0x00,0x02]
.code32
ld.q %d0, [%p0 + r]

# CHECK-INST: ld.q %d0, [+%a0], -512
# CHECK: encoding: [0x09,0x00,0x00,0x86]
.code32
ld.q %d0, [+%a0], -512 

# CHECK-INST: lducx 1
# CHECK: encoding: [0x15,0x00,0x01,0x0c]
.code32
lducx 1

# CHECK-INST: lducx [%a0], -512
# CHECK: encoding: [0x49,0x00,0x40,0x89]
.code32
lducx [%a0], -512 

# CHECK-INST: ld.w %d15, [%a10], 0
# CHECK: encoding: [0x58,0x00]
.code16
ld.w %d15, [%a10], 0

# CHECK-INST: ld.w %d15, [%a0], 0
# CHECK: encoding: [0x4c,0x00]
.code16
ld.w %d15, [%a0], 0 

# CHECK-INST: ld.w %d0, [%a0]
# CHECK: encoding: [0x54,0x00]
.code16
ld.w %d0, [%a0]

# CHECK-INST: ld.w %d0, [%a15], 0
# CHECK: encoding: [0x48,0x00]
.code16
ld.w %d0, [%a15], 0

# CHECK-INST: ld.w %d0, [%a0+]
# CHECK: encoding: [0x44,0x00]
.code16
ld.w %d0, [%a0+]

# CHECK-INST: ld.w %d0, [%a0], -32768
# CHECK: encoding: [0x19,0x00,0x00,0x08]
.code32
ld.w %d0, [%a0], -32768 

# CHECK-INST: ld.w %d0, 1
# CHECK: encoding: [0x85,0x00,0x01,0x00]
.code32
ld.w %d0, 1

# CHECK-INST: ld.w %d0, [%a0+], -512
# CHECK: encoding: [0x09,0x00,0x00,0x81]
.code32
ld.w %d0, [%a0+], -512

# CHECK-INST: ld.w %d0, [%a0], -32768
# CHECK: encoding: [0x19,0x00,0x00,0x08]
.code32
ld.w %d0, [%a0], -32768

# CHECK-INST: ld.w %d0, [%p0 + c], -512
# CHECK: encoding: [0x29,0x00,0x00,0x85]
.code32
ld.w %d0, [%p0 + c], -512

# CHECK-INST: ld.w %d0, [%p0 + r]
# CHECK: encoding: [0x29,0x00,0x00,0x01]
.code32
ld.w %d0, [%p0 + r]

# CHECK-INST: ld.w %d0, [+%a0], -512
# CHECK: encoding: [0x09,0x00,0x00,0x85]
.code32
ld.w %d0, [+%a0], -512

# CHECK-INST: lea %a0, 0
# CHECK: encoding: [0xc5,0x00,0x00,0x00]
.code32
lea %a0, 0 

# CHECK-INST: lea %a0, [%a0], 64
# CHECK: encoding: [0xd9,0x00,0x00,0x10]
.code32
lea %a0, [%a0], 64 

# CHECK-INST: loopu -32768
# CHECK: encoding: [0xfd,0x00,0x00,0xc0]
.code32
loopu -32768

# CHECK-INST: loop %a0, -32
# CHECK: encoding: [0xfc,0x00]
.code16
loop %a0, -32

# CHECK-INST: loop %a0, -32768
# CHECK: encoding: [0xfd,0x00,0x00,0x40]
.code32
loop %a0, -32768

# CHECK-INST: lt.a %d0, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x20,0x04]
lt.a %d0, %a0, %a0 

# CHECK-INST: lt.bu %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x05]
lt.bu %d0, %d0, %d0

# CHECK-INST: lt.b %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x05]
lt.b %d0, %d0, %d0 

# CHECK-INST: lt.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x07]
lt.h %d0, %d0, %d0

# CHECK-INST: lt.hu %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x07]
lt.hu %d0, %d0, %d0

# CHECK-INST: lt.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x01]
.code32
lt.u %d0, %d0, %d0

# CHECK-INST: lt.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x70,0x02]
.code32
lt.u %d0, %d0, 271

# CHECK-INST: lt.wu %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x09]
lt.wu %d0, %d0, %d0

# CHECK-INST: lt.w %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x09]
lt.w %d0, %d0, %d0 

# CHECK-INST: lt %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x01]
.code32
lt %d0, %d0, %d0

# CHECK-INST: lt %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0x02]
.code32
lt %d0, %d0, -256

# CHECK-INST: lt %d15, %d0, %d0
# CHECK: encoding: [0x7a,0x00]
.code16
lt %d15, %d0, %d0

# CHECK-INST: lt %d15, %d0, -8
# CHECK: encoding: [0xfa,0x80]
.code16
lt %d15, %d0, -8 

# CHECK-INST: madd.f %d0, %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x61,0x00]
madd.f %d0, %d0, %d0, %d0 

# CHECK-INST: madd.h %e0, %e0, %d0, %d0ll, 0
# CHECK: encoding: [0x83,0x00,0x68,0x00]
madd.h %e0, %e0, %d0, %d0ll, 0

# CHECK-INST: madd.h %e0, %e0, %d0, %d0lu, 0
# CHECK: encoding: [0x83,0x00,0x64,0x00]
madd.h %e0, %e0, %d0, %d0lu, 0

# CHECK-INST: madd.h %e0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0x83,0x00,0x60,0x00]
madd.h %e0, %e0, %d0, %d0ul, 0

# CHECK-INST: madd.h %e0, %e0, %d0, %d0uu, 0
# CHECK: encoding: [0x83,0x00,0x6c,0x00]
madd.h %e0, %e0, %d0, %d0uu, 0 

# CHECK-INST: maddm.h %e0, %e0, %d0, %d0ll, 0
# CHECK: encoding: [0x83,0x00,0x78,0x00]
maddm.h %e0, %e0, %d0, %d0ll, 0

# CHECK-INST: maddm.h %e0, %e0, %d0, %d0lu, 0
# CHECK: encoding: [0x83,0x00,0x74,0x00]
maddm.h %e0, %e0, %d0, %d0lu, 0

# CHECK-INST: maddm.h %e0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0x83,0x00,0x70,0x00]
maddm.h %e0, %e0, %d0, %d0ul, 0

# CHECK-INST: maddm.h %e0, %e0, %d0, %d0uu, 0
# CHECK: encoding: [0x83,0x00,0x7c,0x00]
maddm.h %e0, %e0, %d0, %d0uu, 0

# CHECK-INST: maddms.h %e0, %e0, %d0, %d0ll, 0
# CHECK: encoding: [0x83,0x00,0xf8,0x00]
maddms.h %e0, %e0, %d0, %d0ll, 0

# CHECK-INST: maddms.h %e0, %e0, %d0, %d0lu, 0
# CHECK: encoding: [0x83,0x00,0xf4,0x00]
maddms.h %e0, %e0, %d0, %d0lu, 0

# CHECK-INST: maddms.h %e0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0x83,0x00,0xf0,0x00]
maddms.h %e0, %e0, %d0, %d0ul, 0

# CHECK-INST: maddms.h %e0, %e0, %d0, %d0uu, 0
# CHECK: encoding: [0x83,0x00,0xfc,0x00]
maddms.h %e0, %e0, %d0, %d0uu, 0 

# CHECK-INST: maddr.h %d0, %d0, %d0, %d0ll, 0
# CHECK: encoding: [0x83,0x00,0x38,0x00]
maddr.h %d0, %d0, %d0, %d0ll, 0

# CHECK-INST: maddr.h %d0, %d0, %d0, %d0lu, 0
# CHECK: encoding: [0x83,0x00,0x34,0x00]
maddr.h %d0, %d0, %d0, %d0lu, 0

# CHECK-INST: maddr.h %d0, %d0, %d0, %d0ul, 0
# CHECK: encoding: [0x83,0x00,0x30,0x00]
maddr.h %d0, %d0, %d0, %d0ul, 0

# CHECK-INST: maddr.h %d0, %d0, %d0, %d0uu, 0
# CHECK: encoding: [0x83,0x00,0x3c,0x00]
maddr.h %d0, %d0, %d0, %d0uu, 0 

# CHECK-INST: maddr.h %d0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0x43,0x00,0x78,0x00]
maddr.h %d0, %e0, %d0, %d0ul, 0

# CHECK-INST: madds.h %e0, %e0, %d0, %d0ll, 0
# CHECK: encoding: [0x83,0x00,0xe8,0x00]
madds.h %e0, %e0, %d0, %d0ll, 0

# CHECK-INST: madds.h %e0, %e0, %d0, %d0lu, 0
# CHECK: encoding: [0x83,0x00,0xe4,0x00]
madds.h %e0, %e0, %d0, %d0lu, 0

# CHECK-INST: madds.h %e0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0x83,0x00,0xe0,0x00]
madds.h %e0, %e0, %d0, %d0ul, 0

# CHECK-INST: madds.h %e0, %e0, %d0, %d0uu, 0
# CHECK: encoding: [0x83,0x00,0xec,0x00]
madds.h %e0, %e0, %d0, %d0uu, 0 

# CHECK-INST: maddsu.h %e0, %e0, %d0, %d0ll, 0
# CHECK: encoding: [0xc3,0x00,0x68,0x00]
maddsu.h %e0, %e0, %d0, %d0ll, 0

# CHECK-INST: maddsu.h %e0, %e0, %d0, %d0lu, 0
# CHECK: encoding: [0xc3,0x00,0x64,0x00]
maddsu.h %e0, %e0, %d0, %d0lu, 0

# CHECK-INST: maddsu.h %e0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0xc3,0x00,0x60,0x00]
maddsu.h %e0, %e0, %d0, %d0ul, 0

# CHECK-INST: maddsu.h %e0, %e0, %d0, %d0uu, 0
# CHECK: encoding: [0xc3,0x00,0x6c,0x00]
maddsu.h %e0, %e0, %d0, %d0uu, 0

# CHECK-INST: maddsum.h %e0, %e0, %d0, %d0ll, 0
# CHECK: encoding: [0xc3,0x00,0x78,0x00]
maddsum.h %e0, %e0, %d0, %d0ll, 0

# CHECK-INST: maddsum.h %e0, %e0, %d0, %d0lu, 0
# CHECK: encoding: [0xc3,0x00,0x74,0x00]
maddsum.h %e0, %e0, %d0, %d0lu, 0

# CHECK-INST: maddsum.h %e0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0xc3,0x00,0x70,0x00]
maddsum.h %e0, %e0, %d0, %d0ul, 0

# CHECK-INST: maddsum.h %e0, %e0, %d0, %d0uu, 0
# CHECK: encoding: [0xc3,0x00,0x7c,0x00]
maddsum.h %e0, %e0, %d0, %d0uu, 0 

# CHECK-INST: maddsum.h %e0, %e0, %d0, %d0ll, 0
# CHECK: encoding: [0xc3,0x00,0x78,0x00]
maddsum.h %e0, %e0, %d0, %d0ll, 0

# CHECK-INST: maddsum.h %e0, %e0, %d0, %d0lu, 0
# CHECK: encoding: [0xc3,0x00,0x74,0x00]
maddsum.h %e0, %e0, %d0, %d0lu, 0

# CHECK-INST: maddsum.h %e0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0xc3,0x00,0x70,0x00]
maddsum.h %e0, %e0, %d0, %d0ul, 0

# CHECK-INST: maddsum.h %e0, %e0, %d0, %d0uu, 0
# CHECK: encoding: [0xc3,0x00,0x7c,0x00]
maddsum.h %e0, %e0, %d0, %d0uu, 0

# CHECK-INST: maddsums.h %e0, %e0, %d0, %d0ll, 0
# CHECK: encoding: [0xc3,0x00,0xf8,0x00]
maddsums.h %e0, %e0, %d0, %d0ll, 0

# CHECK-INST: maddsums.h %e0, %e0, %d0, %d0lu, 0
# CHECK: encoding: [0xc3,0x00,0xf4,0x00]
maddsums.h %e0, %e0, %d0, %d0lu, 0

# CHECK-INST: maddsums.h %e0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0xc3,0x00,0xf0,0x00]
maddsums.h %e0, %e0, %d0, %d0ul, 0

# CHECK-INST: maddsums.h %e0, %e0, %d0, %d0uu, 0
# CHECK: encoding: [0xc3,0x00,0xfc,0x00]
maddsums.h %e0, %e0, %d0, %d0uu, 0

# CHECK-INST: maddsur.h %d0, %d0, %d0, %d0ll, 0
# CHECK: encoding: [0xc3,0x00,0x38,0x00]
maddsur.h %d0, %d0, %d0, %d0ll, 0

# CHECK-INST: maddsur.h %d0, %d0, %d0, %d0lu, 0
# CHECK: encoding: [0xc3,0x00,0x34,0x00]
maddsur.h %d0, %d0, %d0, %d0lu, 0

# CHECK-INST: maddsur.h %d0, %d0, %d0, %d0ul, 0
# CHECK: encoding: [0xc3,0x00,0x30,0x00]
maddsur.h %d0, %d0, %d0, %d0ul, 0

# CHECK-INST: maddsur.h %d0, %d0, %d0, %d0uu, 0
# CHECK: encoding: [0xc3,0x00,0x3c,0x00]
maddsur.h %d0, %d0, %d0, %d0uu, 0

# CHECK-INST: maddsurs.h %d0, %d0, %d0, %d0ll, 0
# CHECK: encoding: [0xc3,0x00,0xb8,0x00]
maddsurs.h %d0, %d0, %d0, %d0ll, 0

# CHECK-INST: maddsurs.h %d0, %d0, %d0, %d0lu, 0
# CHECK: encoding: [0xc3,0x00,0xb4,0x00]
maddsurs.h %d0, %d0, %d0, %d0lu, 0

# CHECK-INST: maddsurs.h %d0, %d0, %d0, %d0ul, 0
# CHECK: encoding: [0xc3,0x00,0xb0,0x00]
maddsurs.h %d0, %d0, %d0, %d0ul, 0

# CHECK-INST: maddsurs.h %d0, %d0, %d0, %d0uu, 0
# CHECK: encoding: [0xc3,0x00,0xbc,0x00]
maddsurs.h %d0, %d0, %d0, %d0uu, 0 

# CHECK-INST: maddsus.h %e0, %e0, %d0, %d0ll, 0
# CHECK: encoding: [0xc3,0x00,0xe8,0x00]
maddsus.h %e0, %e0, %d0, %d0ll, 0

# CHECK-INST: maddsus.h %e0, %e0, %d0, %d0lu, 0
# CHECK: encoding: [0xc3,0x00,0xe4,0x00]
maddsus.h %e0, %e0, %d0, %d0lu, 0

# CHECK-INST: maddsus.h %e0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0xc3,0x00,0xe0,0x00]
maddsus.h %e0, %e0, %d0, %d0ul, 0

# CHECK-INST: maddsus.h %e0, %e0, %d0, %d0uu, 0
# CHECK: encoding: [0xc3,0x00,0xec,0x00]
maddsus.h %e0, %e0, %d0, %d0uu, 0 

# CHECK-INST: madds.u %d0, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0x00]
madds.u %d0, %d0, %d0, %d0

# CHECK-INST: madds.u %d0, %d0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0x00]
madds.u %d0, %d0, %d0, 271

# CHECK-INST: madds.u %e0, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xe8,0x00]
madds.u %e0, %e0, %d0, %d0

# CHECK-INST: madds.u %e0, %e0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0xd0,0x00]
madds.u %e0, %e0, %d0, 271

# CHECK-INST: madds %d0, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0x00]
madds %d0, %d0, %d0, %d0

# CHECK-INST: madds %d0, %d0, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0x00]
madds %d0, %d0, %d0, -256 

# CHECK-INST: madds %e0, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xea,0x00]
madds %e0, %e0, %d0, %d0

# CHECK-INST: madds %e0, %e0, %d0, 0
# CHECK: encoding: [0x13,0x00,0xe0,0x00]
madds %e0, %e0, %d0, 0 

# CHECK-INST: madd.u %e0, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x68,0x00]
madd.u %e0, %e0, %d0, %d0

# CHECK-INST: madd.u %e0, %e0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x50,0x00]
madd.u %e0, %e0, %d0, 271

# CHECK-INST: madd %d0, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0x00]
madd %d0, %d0, %d0, %d0

# CHECK-INST: madd %d0, %d0, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0x00]
madd %d0, %d0, %d0, 0 

# CHECK-INST: madd %e0, %e0, %d0, 0
# CHECK: encoding: [0x13,0x00,0x60,0x00]
madd %e0, %e0, %d0, 0

# CHECK-INST: madd %e0, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x6a,0x00]
madd %e0, %e0, %d0, %d0

# CHECK-INST: max.bu %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0x05]
.code32
max.bu %d0, %d0, %d0

# CHECK-INST: max.b %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x05]
.code32
max.b %d0, %d0, %d0

# CHECK-INST: max.hu %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0x07]
.code32
max.hu %d0, %d0, %d0

# CHECK-INST: max.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x07]
.code32
max.h %d0, %d0, %d0

# CHECK-INST: max.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0x01]
max.u %d0, %d0, %d0

# CHECK-INST: max.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x70,0x03]
max.u %d0, %d0, 271 

# CHECK-INST: max %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x01]
max %d0, %d0, %d0

# CHECK-INST: max %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0x03]
max %d0, %d0, -256

# CHECK-INST: mfcr %d0, 0
# CHECK: encoding: [0x4d,0x00,0x00,0x00]
.code32
mfcr %d0, 0

# CHECK-INST: min.bu %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0x05]
.code32
min.bu %d0, %d0, %d0

# CHECK-INST: min.b %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x05]
.code32
min.b %d0, %d0, %d0

# CHECK-INST: min.hu %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0x07]
.code32
min.hu %d0, %d0, %d0

# CHECK-INST: min.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x07]
.code32
min.h %d0, %d0, %d0

# CHECK-INST: min.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0x01]
min.u %d0, %d0, %d0

# CHECK-INST: min.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x30,0x03]
min.u %d0, %d0, 271

# CHECK-INST: min %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x01]
min %d0, %d0, %d0

# CHECK-INST: min %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x03]
min %d0, %d0, -256

# CHECK-INST: mov.aa %a0, %a0
# CHECK: encoding: [0x40,0x00]
.code16
mov.aa %a0, %a0

# CHECK-INST: mov.aa %a0, %a0
# CHECK: encoding: [0x01,0x00,0x00,0x00]
.code32
mov.aa %a0, %a0

# CHECK-INST: mov.a %a0, %d0
# CHECK: encoding: [0x60,0x00]
.code16
mov.a %a0, %d0

# CHECK-INST: mov.a %a0, %d0
# CHECK: encoding: [0x01,0x00,0x30,0x06]
.code32
mov.a %a0, %d0

# CHECK-INST: mov.a %a0, 0
# CHECK: encoding: [0xa0,0x00]
.code16
mov.a %a0, 0 

# CHECK-INST: mov.d %d0, %a0
# CHECK: encoding: [0x80,0x00]
.code16
mov.d %d0, %a0

# CHECK-INST: mov.d %d0, %a0
# CHECK: encoding: [0x01,0x00,0xc0,0x04]
.code32
mov.d %d0, %a0

# CHECK-INST: movh.a %a0, 0
# CHECK: encoding: [0x91,0x00,0x00,0x00]
.code32
movh.a %a0, 0

# CHECK-INST: movh %d0, 512
# CHECK: encoding: [0x7b,0x00,0x20,0x00]
.code32
movh %d0, 512

# CHECK-INST: mov.u %d0, 512
# CHECK: encoding: [0xbb,0x00,0x20,0x00]
.code32
mov.u %d0, 512

# CHECK-INST: mov %d15, 16
# CHECK: encoding: [0xda,0x10]
.code16
mov %d15, 16 

# CHECK-INST: mov %d0, 0
# CHECK: encoding: [0x82,0x00]
.code16
mov %d0, 0


# CHECK-INST: mov %d0, %d0
# CHECK: encoding: [0x02,0x00]
.code16
mov %d0, %d0

# CHECK-INST: mov %e0, -8
# CHECK: encoding: [0xd2,0x80]
.code16
mov %e0, -8 

# CHECK-INST: mov %d0, -32768
# CHECK: encoding: [0x3b,0x00,0x00,0x08]
.code32
mov %d0, -32768

# CHECK-INST: mov %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x01]
.code32
mov %d0, %d0

# CHECK-INST: mov %e0, -32768
# CHECK: encoding: [0xfb,0x00,0x00,0x08]
.code32
mov %e0, -32768

# CHECK-INST: mov %e0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x08]
.code32
mov %e0, %d0

# CHECK-INST: mov %e0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x10,0x08]
.code32
mov %e0, %d0, %d0


# CHECK-INST: msubad.h %e0, %e0, %d0, %d0ll, 0
# CHECK: encoding: [0xe3,0x00,0x68,0x00]
msubad.h %e0, %e0, %d0, %d0ll, 0

# CHECK-INST: msubad.h %e0, %e0, %d0, %d0lu, 0
# CHECK: encoding: [0xe3,0x00,0x64,0x00]
msubad.h %e0, %e0, %d0, %d0lu, 0

# CHECK-INST: msubad.h %e0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0xe3,0x00,0x60,0x00]
msubad.h %e0, %e0, %d0, %d0ul, 0

# CHECK-INST: msubad.h %e0, %e0, %d0, %d0uu, 0
# CHECK: encoding: [0xe3,0x00,0x6c,0x00]
msubad.h %e0, %e0, %d0, %d0uu, 0 

# CHECK-INST: msubadm.h %e0, %e0, %d0, %d0ll, 0
# CHECK: encoding: [0xe3,0x00,0x78,0x00]
msubadm.h %e0, %e0, %d0, %d0ll, 0

# CHECK-INST: msubadm.h %e0, %e0, %d0, %d0lu, 0
# CHECK: encoding: [0xe3,0x00,0x74,0x00]
msubadm.h %e0, %e0, %d0, %d0lu, 0

# CHECK-INST: msubadm.h %e0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0xe3,0x00,0x70,0x00]
msubadm.h %e0, %e0, %d0, %d0ul, 0

# CHECK-INST: msubadm.h %e0, %e0, %d0, %d0uu, 0
# CHECK: encoding: [0xe3,0x00,0x7c,0x00]
msubadm.h %e0, %e0, %d0, %d0uu, 0 

# CHECK-INST: msubadms.h %e0, %e0, %d0, %d0ll, 0
# CHECK: encoding: [0xe3,0x00,0xf8,0x00]
msubadms.h %e0, %e0, %d0, %d0ll, 0

# CHECK-INST: msubadms.h %e0, %e0, %d0, %d0lu, 0
# CHECK: encoding: [0xe3,0x00,0xf4,0x00]
msubadms.h %e0, %e0, %d0, %d0lu, 0

# CHECK-INST: msubadms.h %e0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0xe3,0x00,0xf0,0x00]
msubadms.h %e0, %e0, %d0, %d0ul, 0

# CHECK-INST: msubadms.h %e0, %e0, %d0, %d0uu, 0
# CHECK: encoding: [0xe3,0x00,0xfc,0x00]
msubadms.h %e0, %e0, %d0, %d0uu, 0 

# CHECK-INST: msubadr.h %d0, %d0, %d0, %d0ll, 0
# CHECK: encoding: [0xe3,0x00,0x38,0x00]
msubadr.h %d0, %d0, %d0, %d0ll, 0

# CHECK-INST: msubadr.h %d0, %d0, %d0, %d0lu, 0
# CHECK: encoding: [0xe3,0x00,0x34,0x00]
msubadr.h %d0, %d0, %d0, %d0lu, 0

# CHECK-INST: msubadr.h %d0, %d0, %d0, %d0ul, 0
# CHECK: encoding: [0xe3,0x00,0x30,0x00]
msubadr.h %d0, %d0, %d0, %d0ul, 0

# CHECK-INST: msubadr.h %d0, %d0, %d0, %d0uu, 0
# CHECK: encoding: [0xe3,0x00,0x3c,0x00]
msubadr.h %d0, %d0, %d0, %d0uu, 0 

# CHECK-INST: msubadrs.h %d0, %d0, %d0, %d0ll, 0
# CHECK: encoding: [0xe3,0x00,0xb8,0x00]
msubadrs.h %d0, %d0, %d0, %d0ll, 0

# CHECK-INST: msubadrs.h %d0, %d0, %d0, %d0lu, 0
# CHECK: encoding: [0xe3,0x00,0xb4,0x00]
msubadrs.h %d0, %d0, %d0, %d0lu, 0

# CHECK-INST: msubadrs.h %d0, %d0, %d0, %d0ul, 0
# CHECK: encoding: [0xe3,0x00,0xb0,0x00]
msubadrs.h %d0, %d0, %d0, %d0ul, 0

# CHECK-INST: msubadrs.h %d0, %d0, %d0, %d0uu, 0
# CHECK: encoding: [0xe3,0x00,0xbc,0x00]
msubadrs.h %d0, %d0, %d0, %d0uu, 0 

# CHECK-INST: msubads.h %e0, %e0, %d0, %d0ll, 0
# CHECK: encoding: [0xe3,0x00,0xe8,0x00]
msubads.h %e0, %e0, %d0, %d0ll, 0

# CHECK-INST: msubads.h %e0, %e0, %d0, %d0lu, 0
# CHECK: encoding: [0xe3,0x00,0xe4,0x00]
msubads.h %e0, %e0, %d0, %d0lu, 0

# CHECK-INST: msubads.h %e0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0xe3,0x00,0xe0,0x00]
msubads.h %e0, %e0, %d0, %d0ul, 0

# CHECK-INST: msubads.h %e0, %e0, %d0, %d0uu, 0
# CHECK: encoding: [0xe3,0x00,0xec,0x00]
msubads.h %e0, %e0, %d0, %d0uu, 0 

# CHECK-INST: msub.f %d0, %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x71,0x00]
msub.f %d0, %d0, %d0, %d0 

# CHECK-INST: msub.h %e0, %e0, %d0, %d0ll, 0
# CHECK: encoding: [0xa3,0x00,0x68,0x00]
msub.h %e0, %e0, %d0, %d0ll, 0

# CHECK-INST: msub.h %e0, %e0, %d0, %d0lu, 0
# CHECK: encoding: [0xa3,0x00,0x64,0x00]
msub.h %e0, %e0, %d0, %d0lu, 0

# CHECK-INST: msub.h %e0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0xa3,0x00,0x60,0x00]
msub.h %e0, %e0, %d0, %d0ul, 0

# CHECK-INST: msub.h %e0, %e0, %d0, %d0uu, 0
# CHECK: encoding: [0xa3,0x00,0x6c,0x00]
msub.h %e0, %e0, %d0, %d0uu, 0 

# CHECK-INST: msubm.h %e0, %e0, %d0, %d0ll, 0
# CHECK: encoding: [0xa3,0x00,0x78,0x00]
msubm.h %e0, %e0, %d0, %d0ll, 0

# CHECK-INST: msubm.h %e0, %e0, %d0, %d0lu, 0
# CHECK: encoding: [0xa3,0x00,0x74,0x00]
msubm.h %e0, %e0, %d0, %d0lu, 0

# CHECK-INST: msubm.h %e0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0xa3,0x00,0x70,0x00]
msubm.h %e0, %e0, %d0, %d0ul, 0

# CHECK-INST: msubm.h %e0, %e0, %d0, %d0uu, 0
# CHECK: encoding: [0xa3,0x00,0x7c,0x00]
msubm.h %e0, %e0, %d0, %d0uu, 0
 
# CHECK-INST: msubms.h %e0, %e0, %d0, %d0ll, 0
# CHECK: encoding: [0xa3,0x00,0xf8,0x00]
msubms.h %e0, %e0, %d0, %d0ll, 0

# CHECK-INST: msubms.h %e0, %e0, %d0, %d0lu, 0
# CHECK: encoding: [0xa3,0x00,0xf4,0x00]
msubms.h %e0, %e0, %d0, %d0lu, 0

# CHECK-INST: msubms.h %e0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0xa3,0x00,0xf0,0x00]
msubms.h %e0, %e0, %d0, %d0ul, 0

# CHECK-INST: msubms.h %e0, %e0, %d0, %d0uu, 0
# CHECK: encoding: [0xa3,0x00,0xfc,0x00]
msubms.h %e0, %e0, %d0, %d0uu, 0 

# CHECK-INST: msubr.h %d0, %d0, %d0, %d0ll, 0
# CHECK: encoding: [0xa3,0x00,0x38,0x00]
msubr.h %d0, %d0, %d0, %d0ll, 0

# CHECK-INST: msubr.h %d0, %d0, %d0, %d0lu, 0
# CHECK: encoding: [0xa3,0x00,0x34,0x00]
msubr.h %d0, %d0, %d0, %d0lu, 0

# CHECK-INST: msubr.h %d0, %d0, %d0, %d0ul, 0
# CHECK: encoding: [0xa3,0x00,0x30,0x00]
msubr.h %d0, %d0, %d0, %d0ul, 0

# CHECK-INST: msubr.h %d0, %d0, %d0, %d0uu, 0
# CHECK: encoding: [0xa3,0x00,0x3c,0x00]
msubr.h %d0, %d0, %d0, %d0uu, 0

# CHECK-INST: msubr.h %d0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0x63,0x00,0x78,0x00]
msubr.h %d0, %e0, %d0, %d0ul, 0 

# CHECK-INST: msubrs.h %d0, %d0, %d0, %d0ll, 0
# CHECK: encoding: [0xa3,0x00,0xb8,0x00]
msubrs.h %d0, %d0, %d0, %d0ll, 0

# CHECK-INST: msubrs.h %d0, %d0, %d0, %d0lu, 0
# CHECK: encoding: [0xa3,0x00,0xb4,0x00]
msubrs.h %d0, %d0, %d0, %d0lu, 0

# CHECK-INST: msubrs.h %d0, %d0, %d0, %d0ul, 0
# CHECK: encoding: [0xa3,0x00,0xb0,0x00]
msubrs.h %d0, %d0, %d0, %d0ul, 0

# CHECK-INST: msubrs.h %d0, %d0, %d0, %d0uu, 0
# CHECK: encoding: [0xa3,0x00,0xbc,0x00]
msubrs.h %d0, %d0, %d0, %d0uu, 0

# CHECK-INST: msubrs.h %d0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0x63,0x00,0xf8,0x00]
msubrs.h %d0, %e0, %d0, %d0ul, 0 

# CHECK-INST: msubs.h %e0, %e0, %d0, %d0ll, 0
# CHECK: encoding: [0xa3,0x00,0xe8,0x00]
msubs.h %e0, %e0, %d0, %d0ll, 0

# CHECK-INST: msubs.h %e0, %e0, %d0, %d0lu, 0
# CHECK: encoding: [0xa3,0x00,0xe4,0x00]
msubs.h %e0, %e0, %d0, %d0lu, 0

# CHECK-INST: msubs.h %e0, %e0, %d0, %d0ul, 0
# CHECK: encoding: [0xa3,0x00,0xe0,0x00]
msubs.h %e0, %e0, %d0, %d0ul, 0

# CHECK-INST: msubs.h %e0, %e0, %d0, %d0uu, 0
# CHECK: encoding: [0xa3,0x00,0xec,0x00]
msubs.h %e0, %e0, %d0, %d0uu, 0 

# CHECK-INST: msubs.u %d0, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0x00]
msubs.u %d0, %d0, %d0, %d0

# CHECK-INST: msubs.u %d0, %d0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0x00]
msubs.u %d0, %d0, %d0, 271

# CHECK-INST: msubs.u %e0, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xe8,0x00]
msubs.u %e0, %e0, %d0, %d0

# CHECK-INST: msubs.u %e0, %e0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0xd0,0x00]
msubs.u %e0, %e0, %d0, 271 

# CHECK-INST: msubs %d0, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0x00]
msubs %d0, %d0, %d0, %d0

# CHECK-INST: msubs %d0, %d0, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0x00]
msubs %d0, %d0, %d0, -256

# CHECK-INST: msubs %e0, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xea,0x00]
msubs %e0, %e0, %d0, %d0

# CHECK-INST: msubs %e0, %e0, %d0, -256
# CHECK: encoding: [0x33,0x00,0xf0,0x00]
msubs %e0, %e0, %d0, -256 

# CHECK-INST: msub.u %e0, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x68,0x00]
msub.u %e0, %e0, %d0, %d0

# CHECK-INST: msub.u %e0, %e0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x50,0x00]
msub.u %e0, %e0, %d0, 271
 
# CHECK-INST: msub %d0, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0x00]
msub %d0, %d0, %d0, %d0

# CHECK-INST: msub %d0, %d0, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0x00]
msub %d0, %d0, %d0, -256

# CHECK-INST: msub %e0, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x6a,0x00]
msub %e0, %e0, %d0, %d0

# CHECK-INST: msub %e0, %e0, %d0, -256
# CHECK: encoding: [0x33,0x00,0x70,0x00]
msub %e0, %e0, %d0, -256 

# CHECK-INST: mtcr 0, %d0
# CHECK: encoding: [0xcd,0x00,0x00,0x00]
.code32
mtcr 0, %d0 

# CHECK-INST: mul.f %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x41,0x00]
mul.f %d0, %d0, %d0

# CHECK-INST: mul.h %e0, %d0, %d0ll, 0
# CHECK: encoding: [0xb3,0x00,0x68,0x00]
mul.h %e0, %d0, %d0ll, 0

# CHECK-INST: mul.h %e0, %d0, %d0lu, 0
# CHECK: encoding: [0xb3,0x00,0x64,0x00]
mul.h %e0, %d0, %d0lu, 0

# CHECK-INST: mul.h %e0, %d0, %d0ul, 0
# CHECK: encoding: [0xb3,0x00,0x60,0x00]
mul.h %e0, %d0, %d0ul, 0

# CHECK-INST: mul.h %e0, %d0, %d0uu, 0
# CHECK: encoding: [0xb3,0x00,0x6c,0x00]
mul.h %e0, %d0, %d0uu, 0 

# CHECK-INST: mulm.h %e0, %d0, %d0ll, 0
# CHECK: encoding: [0xb3,0x00,0x78,0x00]
mulm.h %e0, %d0, %d0ll, 0

# CHECK-INST: mulm.h %e0, %d0, %d0lu, 0
# CHECK: encoding: [0xb3,0x00,0x74,0x00]
mulm.h %e0, %d0, %d0lu, 0

# CHECK-INST: mulm.h %e0, %d0, %d0ul, 0
# CHECK: encoding: [0xb3,0x00,0x70,0x00]
mulm.h %e0, %d0, %d0ul, 0

# CHECK-INST: mulm.h %e0, %d0, %d0uu, 0
# CHECK: encoding: [0xb3,0x00,0x7c,0x00]
mulm.h %e0, %d0, %d0uu, 0 

# CHECK-INST: mulr.h %d0, %d0, %d0ll, 0
# CHECK: encoding: [0xb3,0x00,0x38,0x00]
mulr.h %d0, %d0, %d0ll, 0

# CHECK-INST: mulr.h %d0, %d0, %d0lu, 0
# CHECK: encoding: [0xb3,0x00,0x34,0x00]
mulr.h %d0, %d0, %d0lu, 0

# CHECK-INST: mulr.h %d0, %d0, %d0ul, 0
# CHECK: encoding: [0xb3,0x00,0x30,0x00]
mulr.h %d0, %d0, %d0ul, 0

# CHECK-INST: mulr.h %d0, %d0, %d0uu, 0
# CHECK: encoding: [0xb3,0x00,0x3c,0x00]
mulr.h %d0, %d0, %d0uu, 0 

# CHECK-INST: muls.u %d0, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x88,0x00]
muls.u %d0, %d0, %d0

# CHECK-INST: muls.u %d0, %d0, 271
# CHECK: encoding: [0x53,0xf0,0x90,0x00]
muls.u %d0, %d0, 271 

# CHECK-INST: muls %d0, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x8a,0x00]
muls %d0, %d0, %d0

# CHECK-INST: muls %d0, %d0, -256
# CHECK: encoding: [0x53,0x00,0xb0,0x00]
muls %d0, %d0, -256

# CHECK-INST: mul.u %e0, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x68,0x00]
mul.u %e0, %d0, %d0

# CHECK-INST: mul.u %e0, %d0, 271
# CHECK: encoding: [0x53,0xf0,0x50,0x00]
mul.u %e0, %d0, 271

# CHECK-INST: mul %d0, %d0
# CHECK: encoding: [0xe2,0x00]
mul %d0, %d0

# CHECK-INST: mul %d0, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x0a,0x00]
mul %d0, %d0, %d0

# CHECK-INST: mul %d0, %d0, -256
# CHECK: encoding: [0x53,0x00,0x30,0x00]
mul %d0, %d0, -256

# CHECK-INST: mul %e0, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x6a,0x00]
mul %e0, %d0, %d0

# CHECK-INST: mul %e0, %d0, -256
# CHECK: encoding: [0x53,0x00,0x70,0x00]
mul %e0, %d0, -256 

# CHECK-INST: nand.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x00,0x00]
nand.t %d0, %d0, 0, %d0, 0

# CHECK-INST: nand %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x90,0x00]
.code32
nand %d0, %d0, %d0

# CHECK-INST: nand %d0, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x30,0x01]
.code32
nand %d0, %d0, 271 

# CHECK-INST: ne.a %d0, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x10,0x04]
ne.a %d0, %a0, %a0

# CHECK-INST: nez.a %d0, %a0
# CHECK: encoding: [0x01,0x00,0x90,0x04]
nez.a %d0, %a0

# CHECK-INST: ne %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x10,0x01]
.code32
ne %d0, %d0, %d0

# CHECK-INST: ne %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0x02]
.code32
ne %d0, %d0, -256

# CHECK-INST: nop
# CHECK: encoding: [0x00,0x00]
.code16
nop

# CHECK-INST: nop
# CHECK: encoding: [0x0d,0x00,0x00,0x00]
.code32
nop 

# CHECK-INST: nor.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x40,0x00]
nor.t %d0, %d0, 0, %d0, 0 

# CHECK-INST: nor %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xb0,0x00]
.code32
nor %d0, %d0, %d0

# CHECK-INST: nor %d0, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x70,0x01]
.code32
nor %d0, %d0, 271 

# CHECK-INST: not %d0
# CHECK: encoding: [0x46,0x00]
.code16
not %d0 

# CHECK-INST: or.and.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x00,0x00]
or.and.t %d0, %d0, 0, %d0, 0

# CHECK-INST: or.andn.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x60,0x00]
or.andn.t %d0, %d0, 0, %d0, 0 

# CHECK-INST: or.eq %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x70,0x02]
or.eq %d0, %d0, %d0

# CHECK-INST: or.eq %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xf0,0x04]
or.eq %d0, %d0, -256 

# CHECK-INST: or.ge.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0x02]
or.ge.u %d0, %d0, %d0

# CHECK-INST: or.ge.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x90,0x05]
or.ge.u %d0, %d0, 271

# CHECK-INST: or.ge %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0x02]
or.ge %d0, %d0, %d0

# CHECK-INST: or.ge %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0x05]
or.ge %d0, %d0, -256 

# CHECK-INST: or.lt.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x02]
or.lt.u %d0, %d0, %d0

# CHECK-INST: or.lt.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x50,0x05]
or.lt.u %d0, %d0, 271

# CHECK-INST: or.lt %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0x02]
or.lt %d0, %d0, %d0

# CHECK-INST: or.lt %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0x05]
or.lt %d0, %d0, -256

# CHECK-INST: or.ne %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x02]
or.ne %d0, %d0, %d0

# CHECK-INST: or.ne %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x05]
or.ne %d0, %d0, -256

# CHECK-INST: or.nor.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x40,0x00]
or.nor.t %d0, %d0, 0, %d0, 0 

# CHECK-INST: orn.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x20,0x00]
orn.t %d0, %d0, 0, %d0, 0

# CHECK-INST: orn %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xf0,0x00]
.code32
orn %d0, %d0, %d0

# CHECK-INST: orn %d0, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xf0,0x01]
.code32
orn %d0, %d0, 271 

# CHECK-INST: or.or.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x20,0x00]
or.or.t %d0, %d0, 0, %d0, 0

# CHECK-INST: or.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x20,0x00]
or.t %d0, %d0, 0, %d0, 0

# CHECK-INST: or %d0, %d0
# CHECK: encoding: [0xa6,0x00]
.code16
or %d0, %d0

# CHECK-INST: or %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xa0,0x00]
.code32
or %d0, %d0, %d0

# CHECK-INST: or %d0, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x50,0x01]
.code32
or %d0, %d0, 271

# CHECK-INST: or %d15, 0
# CHECK: encoding: [0x96,0x00]
.code16
or %d15, 0

# CHECK-INST: pack %d0, %e0, %d0
# CHECK: encoding: [0x6b,0x00,0x00,0x00]
pack %d0, %e0, %d0

# CHECK-INST: parity %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x20,0x00]
parity %d0, %d0

# CHECK-INST: q31tof %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x51,0x01]
q31tof %d0, %d0, %d0

# CHECK-INST: qseed.f %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x91,0x01]
qseed.f %d0, %d0

# CHECK-INST: restore %d0
# CHECK: encoding: [0x0d,0x00,0x80,0x03]
.code32
restore %d0 

# CHECK-INST: ret
# CHECK: encoding: [0x0d,0x00,0x80,0x01]
.code32
ret

# CHECK-INST: ret
# CHECK: encoding: [0x00,0x90]
.code16
ret

# CHECK-INST: rfe
# CHECK: encoding: [0x0d,0x00,0xc0,0x01]
.code32
rfe

# CHECK-INST: rfm
# CHECK: encoding: [0x0d,0x00,0x40,0x01]
.code32
rfm 

# CHECK-INST: rslcx
# CHECK: encoding: [0x0d,0x00,0x40,0x02]
.code32
rslcx 

# CHECK-INST: rstv
# CHECK: encoding: [0x2f,0x00,0x00,0x00]
.code32
rstv

# CHECK-INST: rsubs %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0x01]
.code32
rsubs %d0, %d0, -256

# CHECK-INST: rsubs.u %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0x01]
.code32
rsubs.u %d0, %d0, -256

# CHECK-INST: rsub %d0
# CHECK: encoding: [0x32,0x50]
.code16
rsub %d0

 # CHECK-INST: rsub %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x01]
.code32
rsub %d0, %d0, -256  

# CHECK-INST: sat.bu %d0
# CHECK: encoding: [0x32,0x10]
sat.bu %d0

# CHECK-INST: sat.bu %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x05]
sat.bu %d0, %d0

# CHECK-INST: sat.b %d0
# CHECK: encoding: [0x32,0x00]
sat.b %d0

# CHECK-INST: sat.b %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0x05]
sat.b %d0, %d0 

# CHECK-INST: sat.hu %d0
# CHECK: encoding: [0x32,0x30]
sat.hu %d0

# CHECK-INST: sat.hu %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x07]
sat.hu %d0, %d0

# CHECK-INST: sat.h %d0
# CHECK: encoding: [0x32,0x20]
sat.h %d0

# CHECK-INST: sat.h %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0x07]
sat.h %d0, %d0

# CHECK-INST: seln %d0, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0x00]
seln %d0, %d0, %d0, %d0

# CHECK-INST: seln %d0, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0x00]
seln %d0, %d0, %d0, -256

# CHECK-INST: sel %d0, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0x00]
sel %d0, %d0, %d0, %d0

# CHECK-INST: sel %d0, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0x00]
sel %d0, %d0, %d0, -256

# CHECK-INST: sha.h %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x10,0x04]
sha.h %d0, %d0, %d0 

# CHECK-INST: sha.h %d0, %d0, -16
# CHECK: encoding: [0x8f,0x00,0x3f,0x08]
.code32
sha.h %d0, %d0, -16

# CHECK-INST: sh.andn.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x60,0x00]
sh.andn.t %d0, %d0, 0, %d0, 0

# CHECK-INST: sh.and.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x00,0x00]
sh.and.t %d0, %d0, 0, %d0, 0

# CHECK-INST: shas %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x20,0x00]
.code32
shas %d0, %d0, %d0

# CHECK-INST: shas %d0, %d0, -32
# CHECK: encoding: [0x8f,0x00,0x5e,0x00]
.code32
shas %d0, %d0, -32

# CHECK-INST: sha %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x10,0x00]
.code32
sha %d0, %d0, %d0

# CHECK-INST: sha %d0, %d0, -32
# CHECK: encoding: [0x8f,0x00,0x3e,0x00]
.code32
sha %d0, %d0, -32

# CHECK-INST: sha %d0, -8
# CHECK: encoding: [0x86,0x80]
.code16
sha %d0, -8 

# CHECK-INST: sh.eq %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x70,0x03]
sh.eq %d0, %d0, %d0

# CHECK-INST: sh.eq %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xf0,0x06]
sh.eq %d0, %d0, -256

# CHECK-INST: sh.ge.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0x03]
sh.ge.u %d0, %d0, %d0

# CHECK-INST: sh.ge.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x90,0x07]
sh.ge.u %d0, %d0, 271

# CHECK-INST: sh.ge %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0x03]
sh.ge %d0, %d0, %d0

# CHECK-INST: sh.ge %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0x07]
sh.ge %d0, %d0, -256 

# CHECK-INST: sh.h %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x00,0x04]
sh.h %d0, %d0, %d0

# CHECK-INST: sh.h %d0, %d0, -16
# CHECK: encoding: [0x8f,0x00,0x1f,0x08]
.code32
sh.h %d0, %d0, -16

# CHECK-INST: sh.lt.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x03]
sh.lt.u %d0, %d0, %d0

# CHECK-INST: sh.lt.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x50,0x07]
sh.lt.u %d0, %d0, 271

# CHECK-INST: sh.lt %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0x03]
sh.lt %d0, %d0, %d0

# CHECK-INST: sh.lt %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0x07]
sh.lt %d0, %d0, -256

# CHECK-INST: sh.nand.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x00,0x00]
sh.nand.t %d0, %d0, 0, %d0, 0

# CHECK-INST: sh.ne %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x03]
sh.ne %d0, %d0, %d0

# CHECK-INST: sh.ne %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x07]
sh.ne %d0, %d0, -256 

# CHECK-INST: sh.nor.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x40,0x00]
sh.nor.t %d0, %d0, 0, %d0, 0

# CHECK-INST: sh.or.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x20,0x00]
sh.or.t %d0, %d0, 0, %d0, 0

# CHECK-INST: sh.orn.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x20,0x00]
sh.orn.t %d0, %d0, 0, %d0, 0

# CHECK-INST: sh.xnor.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x40,0x00]
sh.xnor.t %d0, %d0, 0, %d0, 0

# CHECK-INST: sh.xor.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x60,0x00]
sh.xor.t %d0, %d0, 0, %d0, 0

# CHECK-INST: sh %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0x00,0x00]
.code32
sh %d0, %d0, %d0

# CHECK-INST: sh %d0, %d0, -32
# CHECK: encoding: [0x8f,0x00,0x1e,0x00]
.code32
sh %d0, %d0, -32

# CHECK-INST: sh %d0, -8
# CHECK: encoding: [0x06,0x80]
.code16
sh %d0, -8

# CHECK-INST: st.a [%a10], 0, %a15
# CHECK: encoding: [0xf8,0x00]
.code16
st.a [%a10], 0, %a15

# CHECK-INST: st.a [%a15], 0, %a0
# CHECK: encoding: [0xe8,0x00]
.code16
st.a [%a15], 0, %a0

# CHECK-INST: st.a [%a0], %a0
# CHECK: encoding: [0xf4,0x00]
.code16
st.a [%a0], %a0

# CHECK-INST: st.a [%a0+], %a0
# CHECK: encoding: [0xe4,0x00]
.code16
st.a [%a0+], %a0

# CHECK-INST: st.a [%a0], 0, %a15
# CHECK: encoding: [0xec,0x00]
.code16
st.a [%a0], 0, %a15

# CHECK-INST: st.a [%a0], -32768, %a0
# CHECK: encoding: [0xb5,0x00,0x00,0x08]
.code32
st.a [%a0], -32768, %a0


# CHECK-INST: st.a [%a0+], -512, %a0
# CHECK: encoding: [0x89,0x00,0x80,0x81]
.code32
st.a [%a0+], -512, %a0

# CHECK-INST: st.a [+%a0], -512, %a0
# CHECK: encoding: [0x89,0x00,0x80,0x85]
.code32
st.a [+%a0], -512, %a0 

# CHECK-INST: st.a 1, %a0
# CHECK: encoding: [0xa5,0x00,0x01,0x08]
.code32
st.a 1, %a0


# CHECK-INST: st.a [%p0 + c], -512, %a0
# CHECK: encoding: [0xa9,0x00,0x80,0x85]
.code32
st.a [%p0 + c], -512, %a0

# CHECK-INST: st.a [%p0 + r], %a0
# CHECK: encoding: [0xa9,0x00,0x80,0x01]
.code32
st.a [%p0 + r], %a0

# CHECK-INST: st.b [%a15], 0, %d0
# CHECK: encoding: [0x28,0x00]
.code16
st.b [%a15], 0, %d0

# CHECK-INST: st.b [%a0], 0, %d15
# CHECK: encoding: [0x2c,0x00]
.code16
st.b [%a0], 0, %d15

# CHECK-INST: st.b [%a0], %d0
# CHECK: encoding: [0x34,0x00]
.code16
st.b [%a0], %d0

# CHECK-INST: st.b [%a0+], %d0
# CHECK: encoding: [0x24,0x00]
.code16
st.b [%a0+], %d0

# CHECK-INST: st.b [%a0], -32768, %d0
# CHECK: encoding: [0xe9,0x00,0x00,0x08]
.code32
st.b [%a0], -32768, %d0

# CHECK-INST: st.b [%a0+], -512, %d0
# CHECK: encoding: [0x89,0x00,0x00,0x80]
.code32
st.b [%a0+], -512, %d0

# CHECK-INST: st.b [+%a0], -512, %d0
# CHECK: encoding: [0x89,0x00,0x00,0x84]
.code32
st.b [+%a0], -512, %d0 

# CHECK-INST: st.b [%a0], -32768, %d0
# CHECK: encoding: [0xe9,0x00,0x00,0x08]
.code32
st.b [%a0], -32768, %d0

# CHECK-INST: st.b 1, %d0
# CHECK: encoding: [0x25,0x00,0x01,0x00]
.code32
st.b 1, %d0

# CHECK-INST: st.b [%p0 + c], -512, %d0
# CHECK: encoding: [0xa9,0x00,0x00,0x84]
.code32
st.b [%p0 + c], -512, %d0

# CHECK-INST: st.b [%p0 + r], %d0
# CHECK: encoding: [0xa9,0x00,0x00,0x00]
.code32
st.b [%p0 + r], %d0

# CHECK-INST: st.da 1, %p0
# CHECK: encoding: [0xa5,0x00,0x01,0x0c]
.code32
st.da 1, %p0

# CHECK-INST: st.da [%a0+], -512, %p0
# CHECK: encoding: [0x89,0x00,0xc0,0x81]
.code32
st.da [%a0+], -512, %p0

# CHECK-INST: st.da [+%a0], -512, %p0
# CHECK: encoding: [0x89,0x00,0xc0,0x85]
.code32
st.da [+%a0], -512, %p0

# CHECK-INST: st.da [%p0 + c], -512, %p0
# CHECK: encoding: [0xa9,0x00,0xc0,0x85]
.code32
st.da [%p0 + c], -512, %p0

# CHECK-INST: st.da [%p0 + r], %p0
# CHECK: encoding: [0xa9,0x00,0xc0,0x01]
.code32
st.da [%p0 + r], %p0

# CHECK-INST: st.d 1, %e0
# CHECK: encoding: [0xa5,0x00,0x01,0x04]
.code32
st.d 1, %e0

# CHECK-INST: st.d [%a0+], -512, %e0
# CHECK: encoding: [0x89,0x00,0x40,0x81]
.code32
st.d [%a0+], -512, %e0

# CHECK-INST: st.d [%p0 + c], -512, %e0
# CHECK: encoding: [0xa9,0x00,0x40,0x85]
.code32
st.d [%p0 + c], -512, %e0

# CHECK-INST: st.d [%p0 + r], %e0
# CHECK: encoding: [0xa9,0x00,0x40,0x01]
.code32
st.d [%p0 + r], %e0

# CHECK-INST: st.d [+%a0], -512, %e0
# CHECK: encoding: [0x89,0x00,0x40,0x85]
.code32
st.d [+%a0], -512, %e0

# CHECK-INST: st.h [%a15], 0, %d0
# CHECK: encoding: [0xa8,0x00]
.code16
st.h [%a15], 0, %d0

# CHECK-INST: st.h [%a0], 0, %d15
# CHECK: encoding: [0xac,0x00]
.code16
st.h [%a0], 0, %d15

# CHECK-INST: st.h [%a0], %d0
# CHECK: encoding: [0xb4,0x00]
.code16
st.h [%a0], %d0

# CHECK-INST: st.h [%a0+], %d0
# CHECK: encoding: [0xa4,0x00]
.code16
st.h [%a0+], %d0

# CHECK-INST: st.h [%a0], -32768, %d0
# CHECK: encoding: [0xf9,0x00,0x00,0x08]
.code32
st.h [%a0], -32768, %d0

# CHECK-INST: st.h [%a0+], -512, %d0
# CHECK: encoding: [0x89,0x00,0x80,0x80]
.code32
st.h [%a0+], -512, %d0

# CHECK-INST: st.h [+%a0], -512, %d0
# CHECK: encoding: [0x89,0x00,0x80,0x84]
.code32
st.h [+%a0], -512, %d0 

# CHECK-INST: st.h 1, %d0
# CHECK: encoding: [0x25,0x00,0x01,0x08]
.code32
st.h 1, %d0

# CHECK-INST: st.h [%a0], -32768, %d0
# CHECK: encoding: [0xf9,0x00,0x00,0x08]
.code32
st.h [%a0], -32768, %d0

# CHECK-INST: st.h [%p0 + c], -512, %d0
# CHECK: encoding: [0xa9,0x00,0x80,0x84]
.code32
st.h [%p0 + c], -512, %d0

# CHECK-INST: st.h [%p0 + r], %d0
# CHECK: encoding: [0xa9,0x00,0x80,0x00]
.code32
st.h [%p0 + r], %d0

# CHECK-INST: stlcx 1
# CHECK: encoding: [0x15,0x00,0x01,0x00]
.code32
stlcx 1

# CHECK-INST: stlcx [%a0], -512
# CHECK: encoding: [0x49,0x00,0x80,0x89]
.code32
stlcx [%a0], -512

# CHECK-INST: st.q [%a0+], -512, %d0
# CHECK: encoding: [0x89,0x00,0x00,0x82]
.code32
st.q [%a0+], -512, %d0

# CHECK-INST: st.q [+%a0], -512, %d0
# CHECK: encoding: [0x89,0x00,0x00,0x86]
.code32
st.q [+%a0], -512, %d0 

# CHECK-INST: st.q 1, %d0
# CHECK: encoding: [0x65,0x00,0x01,0x00]
.code32
st.q 1, %d0

# CHECK-INST: st.q [%p0 + c], -512, %d0
# CHECK: encoding: [0xa9,0x00,0x00,0x86]
.code32
st.q [%p0 + c], -512, %d0

# CHECK-INST: st.q [%p0 + r], %d0
# CHECK: encoding: [0xa9,0x00,0x00,0x02]
.code32
st.q [%p0 + r], %d0

# CHECK-INST: st.t 1, 0, 0
# CHECK: encoding: [0xd5,0x00,0x01,0x00]
.code32
st.t 1, 0, 0

# CHECK-INST: stucx 1
# CHECK: encoding: [0x15,0x00,0x01,0x04]
.code32
stucx 1

# CHECK-INST: stucx [%a0], -512
# CHECK: encoding: [0x49,0x00,0xc0,0x89]
.code32
stucx [%a0], -512 

# CHECK-INST: st.w [%a10], 0, %d15
# CHECK: encoding: [0x78,0x00]
.code16
st.w [%a10], 0, %d15 

# CHECK-INST: st.w [%a15], 60, %d0
# CHECK: encoding: [0x68,0xf0]
.code16
st.w [%a15], 60, %d0 

# CHECK-INST: st.w [%a0+], %d0
# CHECK: encoding: [0x64,0x00]
.code16
st.w [%a0+], %d0

# CHECK-INST: st.w [%a0], %d0
# CHECK: encoding: [0x74,0x00]
.code16
st.w [%a0], %d0

# CHECK-INST: st.w [%a10], 0, %d15
# CHECK: encoding: [0x78,0x00]
.code16
st.w [%a10], 0, %d15

# CHECK-INST: st.w [%a0+], -512, %d0
# CHECK: encoding: [0x89,0x00,0x00,0x81]
.code32
st.w [%a0+], -512, %d0

# CHECK-INST: st.w [+%a0], -512, %d0
# CHECK: encoding: [0x89,0x00,0x00,0x85]
.code32
st.w [+%a0], -512, %d0 

# CHECK-INST: st.w [%a0], -32768, %d0
# CHECK: encoding: [0x59,0x00,0x00,0x08]
.code32
st.w [%a0], -32768, %d0

# CHECK-INST: st.w 1, %d0
# CHECK: encoding: [0xa5,0x00,0x01,0x00]
.code32
st.w 1, %d0

# CHECK-INST: st.w [%p0 + c], -512, %d0
# CHECK: encoding: [0xa9,0x00,0x00,0x85]
.code32
st.w [%p0 + c], -512, %d0

# CHECK-INST: st.w [%p0 + r], %d0
# CHECK: encoding: [0xa9,0x00,0x00,0x01]
.code32
st.w [%p0 + r], %d0

# CHECK-INST: st.w [%a15], 60, %d0
# CHECK: encoding: [0x68,0xf0]
.code16
st.w [%a15], 60, %d0 

# CHECK-INST: sub.a %a0, %a0, %a0
# CHECK: encoding: [0x01,0x00,0x20,0x00]
.code32
sub.a %a0, %a0, %a0

# CHECK-INST: sub.a %a10, 0
# CHECK: encoding: [0x20,0x00]
.code16
sub.a %a10, 0 

# CHECK-INST: sub.b %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x04]
.code32
sub.b %d0, %d0, %d0

# CHECK-INST: subc %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xd0,0x00]
.code32
subc %d0, %d0, %d0

# CHECK-INST: sub.f %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x31,0x00]
sub.f %d0, %d0, %d0  

# CHECK-INST: sub.h %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x06]
.code32
sub.h %d0, %d0, %d0 

# CHECK-INST: subs.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0x00]
.code32
subs.u %d0, %d0, %d0 

# CHECK-INST: subs %d0, %d0
# CHECK: encoding: [0x62,0x00]
.code16
subs %d0, %d0 

# CHECK-INST: subx %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0x00]
.code32
subx %d0, %d0, %d0 

# CHECK-INST: sub %d0, %d15, %d0
# CHECK: encoding: [0x52,0x00]
.code16
sub %d0, %d15, %d0

# CHECK-INST: sub %d15, %d0, %d0
# CHECK: encoding: [0x5a,0x00]
.code16
sub %d15, %d0, %d0

# CHECK-INST: sub %d0, %d0
# CHECK: encoding: [0xa2,0x00]
.code16
sub %d0, %d0

# CHECK-INST: sub %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x00]
.code32
sub %d0, %d0, %d0

# CHECK-INST: svlcx
# CHECK: encoding: [0x0d,0x00,0x00,0x02]
.code32
svlcx

# CHECK-INST: swapmsk.w [%a0+], -512, %e0
# CHECK: encoding: [0x49,0x00,0x80,0x80]
.code32
swapmsk.w [%a0+], -512, %e0

# CHECK-INST: swapmsk.w [%a0], -512, %e0
# CHECK: encoding: [0x49,0x00,0x80,0x88]
.code32
swapmsk.w [%a0], -512, %e0

# CHECK-INST: swapmsk.w [%p0 + c], -512, %e0
# CHECK: encoding: [0x69,0x00,0x80,0x84]
.code32
swapmsk.w [%p0 + c], -512, %e0

# CHECK-INST: swapmsk.w [%p0 + r], %e0
# CHECK: encoding: [0x69,0x00,0x80,0x00]
.code32
swapmsk.w [%p0 + r], %e0

# CHECK-INST: swapmsk.w [+%a0], -512, %e0
# CHECK: encoding: [0x49,0x00,0x80,0x84]
.code32
swapmsk.w [+%a0], -512, %e0 

# CHECK-INST: swap.w 1, %d0
# CHECK: encoding: [0xe5,0x00,0x01,0x00]
.code32
swap.w 1, %d0

# CHECK-INST: swap.w [%a0+], -512, %d0
# CHECK: encoding: [0x49,0x00,0x00,0x80]
.code32
swap.w [%a0+], -512, %d0

# CHECK-INST: swap.w [%a0], -512, %d0
# CHECK: encoding: [0x49,0x00,0x00,0x88]
.code32
swap.w [%a0], -512, %d0

# CHECK-INST: swap.w [%p0 + c], -512, %d0
# CHECK: encoding: [0x69,0x00,0x00,0x84]
.code32
swap.w [%p0 + c], -512, %d0

# CHECK-INST: swap.w [%p0 + r], %d0
# CHECK: encoding: [0x69,0x00,0x00,0x00]
.code32
swap.w [%p0 + r], %d0

# CHECK-INST: swap.w [+%a0], -512, %d0
# CHECK: encoding: [0x49,0x00,0x00,0x84]
.code32
swap.w [+%a0], -512, %d0 

# CHECK-INST: syscall 0
# CHECK: encoding: [0xad,0x00,0x80,0x00]
.code32
syscall 0

# CHECK-INST: trapsv
# CHECK: encoding: [0x0d,0x00,0x40,0x05]
.code32
trapsv

# CHECK-INST: trapv
# CHECK: encoding: [0x0d,0x00,0x00,0x05]
.code32
trapv 

# CHECK-INST: unpack %e0, %d0
# CHECK: encoding: [0x4b,0x00,0x80,0x00]
unpack %e0, %d0

# CHECK-INST: updfl %d0
# CHECK: encoding: [0x4b,0x00,0xc1,0x00]
.code32
updfl %d0

# CHECK-INST: utof %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x61,0x01]
utof %d0, %d0

# CHECK-INST: wait
# CHECK: encoding: [0x0d,0x00,0x80,0x05]
.code32
wait 

# CHECK-INST: xnor.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x40,0x00]
xnor.t %d0, %d0, 0, %d0, 0

# CHECK-INST: xnor %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xd0,0x00]
.code32
xnor %d0, %d0, %d0

# CHECK-INST: xnor %d0, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0xb0,0x01]
.code32
xnor %d0, %d0, 271

# CHECK-INST: xor.eq %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x02]
xor.eq %d0, %d0, %d0

# CHECK-INST: xor.eq %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xf0,0x05]
xor.eq %d0, %d0, -256

# CHECK-INST: xor.ge %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x03]
xor.ge %d0, %d0, %d0

# CHECK-INST: xor.ge %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0x06]
xor.ge %d0, %d0, -256

# CHECK-INST: xor.lt.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x03]
xor.lt.u %d0, %d0, %d0

# CHECK-INST: xor.lt.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x50,0x06]
xor.lt.u %d0, %d0, 271

# CHECK-INST: xor.lt %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x10,0x03]
xor.lt %d0, %d0, %d0

# CHECK-INST: xor.lt %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0x06]
xor.lt %d0, %d0, -256 

# CHECK-INST: xor.ne %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x03]
xor.ne %d0, %d0, %d0

# CHECK-INST: xor.ne %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x06]
xor.ne %d0, %d0, -256

# CHECK-INST: xor.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x60,0x00]
xor.t %d0, %d0, 0, %d0, 0

# CHECK-INST: xor %d0, %d0
# CHECK: encoding: [0xc6,0x00]
.code16
xor %d0, %d0

# CHECK-INST: xor %d0, %d0, %d0
# CHECK: encoding: [0x0f,0x00,0xc0,0x00]
.code32
xor %d0, %d0, %d0

# CHECK-INST: xor %d0, %d0, 271
# CHECK: encoding: [0x8f,0xf0,0x90,0x01]
.code32
xor %d0, %d0, 271
