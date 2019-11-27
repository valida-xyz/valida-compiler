# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s \
# RUN:     | llvm-objdump -d - | FileCheck -check-prefix=CHECK-INST %s

# CHECK-INST: loop %a0, -32
# CHECK: encoding: [0xfc,0x00]
.code16
loop %a0, -32

# CHECK-INST: loop %a0, -30
# CHECK: encoding: [0xfc,0x01]
.code16
loop %a0, -30

# CHECK-INST: loop %a0, -4
# CHECK: encoding: [0xfc,0x0e]
.code16
loop %a0, -4

# CHECK-INST: loop %a0, -2
# CHECK: encoding: [0xfc,0x0f]
.code16
loop %a0, -2

# CHECK-INST: loop %a1, -32
# CHECK: encoding: [0xfc,0x10]
.code16
loop %a1, -32

# CHECK-INST: loop %a1, -30
# CHECK: encoding: [0xfc,0x11]
.code16
loop %a1, -30

# CHECK-INST: loop %a1, -4
# CHECK: encoding: [0xfc,0x1e]
.code16
loop %a1, -4

# CHECK-INST: loop %a1, -2
# CHECK: encoding: [0xfc,0x1f]
.code16
loop %a1, -2

# CHECK-INST: loop %a14, -32
# CHECK: encoding: [0xfc,0xe0]
.code16
loop %a14, -32

# CHECK-INST: loop %a14, -30
# CHECK: encoding: [0xfc,0xe1]
.code16
loop %a14, -30

# CHECK-INST: loop %a14, -4
# CHECK: encoding: [0xfc,0xee]
.code16
loop %a14, -4

# CHECK-INST: loop %a14, -2
# CHECK: encoding: [0xfc,0xef]
.code16
loop %a14, -2

# CHECK-INST: loop %a15, -32
# CHECK: encoding: [0xfc,0xf0]
.code16
loop %a15, -32

# CHECK-INST: loop %a15, -30
# CHECK: encoding: [0xfc,0xf1]
.code16
loop %a15, -30

# CHECK-INST: loop %a15, -4
# CHECK: encoding: [0xfc,0xfe]
.code16
loop %a15, -4

# CHECK-INST: loop %a15, -2
# CHECK: encoding: [0xfc,0xff]
.code16
loop %a15, -2

# CHECK-INST: loop %a0, -32768
# CHECK: encoding: [0xfd,0x00,0x00,0x40]
.code32
loop %a0, -32768

# CHECK-INST: loop %a0, -32766
# CHECK: encoding: [0xfd,0x00,0x01,0x40]
.code32
loop %a0, -32766

# CHECK-INST: loop %a0, -4
# CHECK: encoding: [0xfd,0x00,0xfe,0x7f]
.code32
loop %a0, -4

# CHECK-INST: loop %a0, -2
# CHECK: encoding: [0xfd,0x00,0xff,0x7f]
.code32
loop %a0, -2

# CHECK-INST: loop %a0, 0
# CHECK: encoding: [0xfd,0x00,0x00,0x00]
.code32
loop %a0, 0

# CHECK-INST: loop %a0, 2
# CHECK: encoding: [0xfd,0x00,0x01,0x00]
.code32
loop %a0, 2

# CHECK-INST: loop %a0, 32764
# CHECK: encoding: [0xfd,0x00,0xfe,0x3f]
.code32
loop %a0, 32764

# CHECK-INST: loop %a0, 32766
# CHECK: encoding: [0xfd,0x00,0xff,0x3f]
.code32
loop %a0, 32766

# CHECK-INST: loop %a1, -32768
# CHECK: encoding: [0xfd,0x10,0x00,0x40]
.code32
loop %a1, -32768

# CHECK-INST: loop %a1, -32766
# CHECK: encoding: [0xfd,0x10,0x01,0x40]
.code32
loop %a1, -32766

# CHECK-INST: loop %a1, -4
# CHECK: encoding: [0xfd,0x10,0xfe,0x7f]
.code32
loop %a1, -4

# CHECK-INST: loop %a1, -2
# CHECK: encoding: [0xfd,0x10,0xff,0x7f]
.code32
loop %a1, -2

# CHECK-INST: loop %a1, 0
# CHECK: encoding: [0xfd,0x10,0x00,0x00]
.code32
loop %a1, 0

# CHECK-INST: loop %a1, 2
# CHECK: encoding: [0xfd,0x10,0x01,0x00]
.code32
loop %a1, 2

# CHECK-INST: loop %a1, 32764
# CHECK: encoding: [0xfd,0x10,0xfe,0x3f]
.code32
loop %a1, 32764

# CHECK-INST: loop %a1, 32766
# CHECK: encoding: [0xfd,0x10,0xff,0x3f]
.code32
loop %a1, 32766

# CHECK-INST: loop %a14, -32768
# CHECK: encoding: [0xfd,0xe0,0x00,0x40]
.code32
loop %a14, -32768

# CHECK-INST: loop %a14, -32766
# CHECK: encoding: [0xfd,0xe0,0x01,0x40]
.code32
loop %a14, -32766

# CHECK-INST: loop %a14, -4
# CHECK: encoding: [0xfd,0xe0,0xfe,0x7f]
.code32
loop %a14, -4

# CHECK-INST: loop %a14, -2
# CHECK: encoding: [0xfd,0xe0,0xff,0x7f]
.code32
loop %a14, -2

# CHECK-INST: loop %a14, 0
# CHECK: encoding: [0xfd,0xe0,0x00,0x00]
.code32
loop %a14, 0

# CHECK-INST: loop %a14, 2
# CHECK: encoding: [0xfd,0xe0,0x01,0x00]
.code32
loop %a14, 2

# CHECK-INST: loop %a14, 32764
# CHECK: encoding: [0xfd,0xe0,0xfe,0x3f]
.code32
loop %a14, 32764

# CHECK-INST: loop %a14, 32766
# CHECK: encoding: [0xfd,0xe0,0xff,0x3f]
.code32
loop %a14, 32766

# CHECK-INST: loop %a15, -32768
# CHECK: encoding: [0xfd,0xf0,0x00,0x40]
.code32
loop %a15, -32768

# CHECK-INST: loop %a15, -32766
# CHECK: encoding: [0xfd,0xf0,0x01,0x40]
.code32
loop %a15, -32766

# CHECK-INST: loop %a15, -4
# CHECK: encoding: [0xfd,0xf0,0xfe,0x7f]
.code32
loop %a15, -4

# CHECK-INST: loop %a15, -2
# CHECK: encoding: [0xfd,0xf0,0xff,0x7f]
.code32
loop %a15, -2

# CHECK-INST: loop %a15, 0
# CHECK: encoding: [0xfd,0xf0,0x00,0x00]
.code32
loop %a15, 0

# CHECK-INST: loop %a15, 2
# CHECK: encoding: [0xfd,0xf0,0x01,0x00]
.code32
loop %a15, 2

# CHECK-INST: loop %a15, 32764
# CHECK: encoding: [0xfd,0xf0,0xfe,0x3f]
.code32
loop %a15, 32764

# CHECK-INST: loop %a15, 32766
# CHECK: encoding: [0xfd,0xf0,0xff,0x3f]
.code32
loop %a15, 32766

# CHECK-INST: loopu -32768
# CHECK: encoding: [0xfd,0x00,0x00,0xc0]
.code32
loopu -32768

# CHECK-INST: loopu -32766
# CHECK: encoding: [0xfd,0x00,0x01,0xc0]
.code32
loopu -32766

# CHECK-INST: loopu -4
# CHECK: encoding: [0xfd,0x00,0xfe,0xff]
.code32
loopu -4

# CHECK-INST: loopu -2
# CHECK: encoding: [0xfd,0x00,0xff,0xff]
.code32
loopu -2

# CHECK-INST: loopu 0
# CHECK: encoding: [0xfd,0x00,0x00,0x80]
.code32
loopu 0

# CHECK-INST: loopu 2
# CHECK: encoding: [0xfd,0x00,0x01,0x80]
.code32
loopu 2

# CHECK-INST: loopu 32764
# CHECK: encoding: [0xfd,0x00,0xfe,0xbf]
.code32
loopu 32764

# CHECK-INST: loopu 32766
# CHECK: encoding: [0xfd,0x00,0xff,0xbf]
.code32
loopu 32766

# CHECK-INST: jned %d0, -8, -32768
# CHECK: encoding: [0x9f,0x80,0x00,0xc0]
.code32
jned %d0, -8, -32768

# CHECK-INST: jned %d0, -8, -32766
# CHECK: encoding: [0x9f,0x80,0x01,0xc0]
.code32
jned %d0, -8, -32766

# CHECK-INST: jned %d0, -8, -4
# CHECK: encoding: [0x9f,0x80,0xfe,0xff]
.code32
jned %d0, -8, -4

# CHECK-INST: jned %d0, -8, -2
# CHECK: encoding: [0x9f,0x80,0xff,0xff]
.code32
jned %d0, -8, -2

# CHECK-INST: jned %d0, -8, 0
# CHECK: encoding: [0x9f,0x80,0x00,0x80]
.code32
jned %d0, -8, 0

# CHECK-INST: jned %d0, -8, 2
# CHECK: encoding: [0x9f,0x80,0x01,0x80]
.code32
jned %d0, -8, 2

# CHECK-INST: jned %d0, -8, 32764
# CHECK: encoding: [0x9f,0x80,0xfe,0xbf]
.code32
jned %d0, -8, 32764

# CHECK-INST: jned %d0, -8, 32766
# CHECK: encoding: [0x9f,0x80,0xff,0xbf]
.code32
jned %d0, -8, 32766

# CHECK-INST: jned %d0, -7, -32768
# CHECK: encoding: [0x9f,0x90,0x00,0xc0]
.code32
jned %d0, -7, -32768

# CHECK-INST: jned %d0, -7, -32766
# CHECK: encoding: [0x9f,0x90,0x01,0xc0]
.code32
jned %d0, -7, -32766

# CHECK-INST: jned %d0, -7, -4
# CHECK: encoding: [0x9f,0x90,0xfe,0xff]
.code32
jned %d0, -7, -4

# CHECK-INST: jned %d0, -7, -2
# CHECK: encoding: [0x9f,0x90,0xff,0xff]
.code32
jned %d0, -7, -2

# CHECK-INST: jned %d0, -7, 0
# CHECK: encoding: [0x9f,0x90,0x00,0x80]
.code32
jned %d0, -7, 0

# CHECK-INST: jned %d0, -7, 2
# CHECK: encoding: [0x9f,0x90,0x01,0x80]
.code32
jned %d0, -7, 2

# CHECK-INST: jned %d0, -7, 32764
# CHECK: encoding: [0x9f,0x90,0xfe,0xbf]
.code32
jned %d0, -7, 32764

# CHECK-INST: jned %d0, -7, 32766
# CHECK: encoding: [0x9f,0x90,0xff,0xbf]
.code32
jned %d0, -7, 32766

# CHECK-INST: jned %d0, -2, -32768
# CHECK: encoding: [0x9f,0xe0,0x00,0xc0]
.code32
jned %d0, -2, -32768

# CHECK-INST: jned %d0, -2, -32766
# CHECK: encoding: [0x9f,0xe0,0x01,0xc0]
.code32
jned %d0, -2, -32766

# CHECK-INST: jned %d0, -2, -4
# CHECK: encoding: [0x9f,0xe0,0xfe,0xff]
.code32
jned %d0, -2, -4

# CHECK-INST: jned %d0, -2, -2
# CHECK: encoding: [0x9f,0xe0,0xff,0xff]
.code32
jned %d0, -2, -2

# CHECK-INST: jned %d0, -2, 0
# CHECK: encoding: [0x9f,0xe0,0x00,0x80]
.code32
jned %d0, -2, 0

# CHECK-INST: jned %d0, -2, 2
# CHECK: encoding: [0x9f,0xe0,0x01,0x80]
.code32
jned %d0, -2, 2

# CHECK-INST: jned %d0, -2, 32764
# CHECK: encoding: [0x9f,0xe0,0xfe,0xbf]
.code32
jned %d0, -2, 32764

# CHECK-INST: jned %d0, -2, 32766
# CHECK: encoding: [0x9f,0xe0,0xff,0xbf]
.code32
jned %d0, -2, 32766

# CHECK-INST: jned %d0, -1, -32768
# CHECK: encoding: [0x9f,0xf0,0x00,0xc0]
.code32
jned %d0, -1, -32768

# CHECK-INST: jned %d0, -1, -32766
# CHECK: encoding: [0x9f,0xf0,0x01,0xc0]
.code32
jned %d0, -1, -32766

# CHECK-INST: jned %d0, -1, -4
# CHECK: encoding: [0x9f,0xf0,0xfe,0xff]
.code32
jned %d0, -1, -4

# CHECK-INST: jned %d0, -1, -2
# CHECK: encoding: [0x9f,0xf0,0xff,0xff]
.code32
jned %d0, -1, -2

# CHECK-INST: jned %d0, -1, 0
# CHECK: encoding: [0x9f,0xf0,0x00,0x80]
.code32
jned %d0, -1, 0

# CHECK-INST: jned %d0, -1, 2
# CHECK: encoding: [0x9f,0xf0,0x01,0x80]
.code32
jned %d0, -1, 2

# CHECK-INST: jned %d0, -1, 32764
# CHECK: encoding: [0x9f,0xf0,0xfe,0xbf]
.code32
jned %d0, -1, 32764

# CHECK-INST: jned %d0, -1, 32766
# CHECK: encoding: [0x9f,0xf0,0xff,0xbf]
.code32
jned %d0, -1, 32766

# CHECK-INST: jned %d0, 0, -32768
# CHECK: encoding: [0x9f,0x00,0x00,0xc0]
.code32
jned %d0, 0, -32768

# CHECK-INST: jned %d0, 0, -32766
# CHECK: encoding: [0x9f,0x00,0x01,0xc0]
.code32
jned %d0, 0, -32766

# CHECK-INST: jned %d0, 0, -4
# CHECK: encoding: [0x9f,0x00,0xfe,0xff]
.code32
jned %d0, 0, -4

# CHECK-INST: jned %d0, 0, -2
# CHECK: encoding: [0x9f,0x00,0xff,0xff]
.code32
jned %d0, 0, -2

# CHECK-INST: jned %d0, 0, 0
# CHECK: encoding: [0x9f,0x00,0x00,0x80]
.code32
jned %d0, 0, 0

# CHECK-INST: jned %d0, 0, 2
# CHECK: encoding: [0x9f,0x00,0x01,0x80]
.code32
jned %d0, 0, 2

# CHECK-INST: jned %d0, 0, 32764
# CHECK: encoding: [0x9f,0x00,0xfe,0xbf]
.code32
jned %d0, 0, 32764

# CHECK-INST: jned %d0, 0, 32766
# CHECK: encoding: [0x9f,0x00,0xff,0xbf]
.code32
jned %d0, 0, 32766

# CHECK-INST: jned %d0, 1, -32768
# CHECK: encoding: [0x9f,0x10,0x00,0xc0]
.code32
jned %d0, 1, -32768

# CHECK-INST: jned %d0, 1, -32766
# CHECK: encoding: [0x9f,0x10,0x01,0xc0]
.code32
jned %d0, 1, -32766

# CHECK-INST: jned %d0, 1, -4
# CHECK: encoding: [0x9f,0x10,0xfe,0xff]
.code32
jned %d0, 1, -4

# CHECK-INST: jned %d0, 1, -2
# CHECK: encoding: [0x9f,0x10,0xff,0xff]
.code32
jned %d0, 1, -2

# CHECK-INST: jned %d0, 1, 0
# CHECK: encoding: [0x9f,0x10,0x00,0x80]
.code32
jned %d0, 1, 0

# CHECK-INST: jned %d0, 1, 2
# CHECK: encoding: [0x9f,0x10,0x01,0x80]
.code32
jned %d0, 1, 2

# CHECK-INST: jned %d0, 1, 32764
# CHECK: encoding: [0x9f,0x10,0xfe,0xbf]
.code32
jned %d0, 1, 32764

# CHECK-INST: jned %d0, 1, 32766
# CHECK: encoding: [0x9f,0x10,0xff,0xbf]
.code32
jned %d0, 1, 32766

# CHECK-INST: jned %d0, 6, -32768
# CHECK: encoding: [0x9f,0x60,0x00,0xc0]
.code32
jned %d0, 6, -32768

# CHECK-INST: jned %d0, 6, -32766
# CHECK: encoding: [0x9f,0x60,0x01,0xc0]
.code32
jned %d0, 6, -32766

# CHECK-INST: jned %d0, 6, -4
# CHECK: encoding: [0x9f,0x60,0xfe,0xff]
.code32
jned %d0, 6, -4

# CHECK-INST: jned %d0, 6, -2
# CHECK: encoding: [0x9f,0x60,0xff,0xff]
.code32
jned %d0, 6, -2

# CHECK-INST: jned %d0, 6, 0
# CHECK: encoding: [0x9f,0x60,0x00,0x80]
.code32
jned %d0, 6, 0

# CHECK-INST: jned %d0, 6, 2
# CHECK: encoding: [0x9f,0x60,0x01,0x80]
.code32
jned %d0, 6, 2

# CHECK-INST: jned %d0, 6, 32764
# CHECK: encoding: [0x9f,0x60,0xfe,0xbf]
.code32
jned %d0, 6, 32764

# CHECK-INST: jned %d0, 6, 32766
# CHECK: encoding: [0x9f,0x60,0xff,0xbf]
.code32
jned %d0, 6, 32766

# CHECK-INST: jned %d0, 7, -32768
# CHECK: encoding: [0x9f,0x70,0x00,0xc0]
.code32
jned %d0, 7, -32768

# CHECK-INST: jned %d0, 7, -32766
# CHECK: encoding: [0x9f,0x70,0x01,0xc0]
.code32
jned %d0, 7, -32766

# CHECK-INST: jned %d0, 7, -4
# CHECK: encoding: [0x9f,0x70,0xfe,0xff]
.code32
jned %d0, 7, -4

# CHECK-INST: jned %d0, 7, -2
# CHECK: encoding: [0x9f,0x70,0xff,0xff]
.code32
jned %d0, 7, -2

# CHECK-INST: jned %d0, 7, 0
# CHECK: encoding: [0x9f,0x70,0x00,0x80]
.code32
jned %d0, 7, 0

# CHECK-INST: jned %d0, 7, 2
# CHECK: encoding: [0x9f,0x70,0x01,0x80]
.code32
jned %d0, 7, 2

# CHECK-INST: jned %d0, 7, 32764
# CHECK: encoding: [0x9f,0x70,0xfe,0xbf]
.code32
jned %d0, 7, 32764

# CHECK-INST: jned %d0, 7, 32766
# CHECK: encoding: [0x9f,0x70,0xff,0xbf]
.code32
jned %d0, 7, 32766

# CHECK-INST: jned %d1, -8, -32768
# CHECK: encoding: [0x9f,0x81,0x00,0xc0]
.code32
jned %d1, -8, -32768

# CHECK-INST: jned %d1, -8, -32766
# CHECK: encoding: [0x9f,0x81,0x01,0xc0]
.code32
jned %d1, -8, -32766

# CHECK-INST: jned %d1, -8, -4
# CHECK: encoding: [0x9f,0x81,0xfe,0xff]
.code32
jned %d1, -8, -4

# CHECK-INST: jned %d1, -8, -2
# CHECK: encoding: [0x9f,0x81,0xff,0xff]
.code32
jned %d1, -8, -2

# CHECK-INST: jned %d1, -8, 0
# CHECK: encoding: [0x9f,0x81,0x00,0x80]
.code32
jned %d1, -8, 0

# CHECK-INST: jned %d1, -8, 2
# CHECK: encoding: [0x9f,0x81,0x01,0x80]
.code32
jned %d1, -8, 2

# CHECK-INST: jned %d1, -8, 32764
# CHECK: encoding: [0x9f,0x81,0xfe,0xbf]
.code32
jned %d1, -8, 32764

# CHECK-INST: jned %d1, -8, 32766
# CHECK: encoding: [0x9f,0x81,0xff,0xbf]
.code32
jned %d1, -8, 32766

# CHECK-INST: jned %d1, -7, -32768
# CHECK: encoding: [0x9f,0x91,0x00,0xc0]
.code32
jned %d1, -7, -32768

# CHECK-INST: jned %d1, -7, -32766
# CHECK: encoding: [0x9f,0x91,0x01,0xc0]
.code32
jned %d1, -7, -32766

# CHECK-INST: jned %d1, -7, -4
# CHECK: encoding: [0x9f,0x91,0xfe,0xff]
.code32
jned %d1, -7, -4

# CHECK-INST: jned %d1, -7, -2
# CHECK: encoding: [0x9f,0x91,0xff,0xff]
.code32
jned %d1, -7, -2

# CHECK-INST: jned %d1, -7, 0
# CHECK: encoding: [0x9f,0x91,0x00,0x80]
.code32
jned %d1, -7, 0

# CHECK-INST: jned %d1, -7, 2
# CHECK: encoding: [0x9f,0x91,0x01,0x80]
.code32
jned %d1, -7, 2

# CHECK-INST: jned %d1, -7, 32764
# CHECK: encoding: [0x9f,0x91,0xfe,0xbf]
.code32
jned %d1, -7, 32764

# CHECK-INST: jned %d1, -7, 32766
# CHECK: encoding: [0x9f,0x91,0xff,0xbf]
.code32
jned %d1, -7, 32766

# CHECK-INST: jned %d1, -2, -32768
# CHECK: encoding: [0x9f,0xe1,0x00,0xc0]
.code32
jned %d1, -2, -32768

# CHECK-INST: jned %d1, -2, -32766
# CHECK: encoding: [0x9f,0xe1,0x01,0xc0]
.code32
jned %d1, -2, -32766

# CHECK-INST: jned %d1, -2, -4
# CHECK: encoding: [0x9f,0xe1,0xfe,0xff]
.code32
jned %d1, -2, -4

# CHECK-INST: jned %d1, -2, -2
# CHECK: encoding: [0x9f,0xe1,0xff,0xff]
.code32
jned %d1, -2, -2

# CHECK-INST: jned %d1, -2, 0
# CHECK: encoding: [0x9f,0xe1,0x00,0x80]
.code32
jned %d1, -2, 0

# CHECK-INST: jned %d1, -2, 2
# CHECK: encoding: [0x9f,0xe1,0x01,0x80]
.code32
jned %d1, -2, 2

# CHECK-INST: jned %d1, -2, 32764
# CHECK: encoding: [0x9f,0xe1,0xfe,0xbf]
.code32
jned %d1, -2, 32764

# CHECK-INST: jned %d1, -2, 32766
# CHECK: encoding: [0x9f,0xe1,0xff,0xbf]
.code32
jned %d1, -2, 32766

# CHECK-INST: jned %d1, -1, -32768
# CHECK: encoding: [0x9f,0xf1,0x00,0xc0]
.code32
jned %d1, -1, -32768

# CHECK-INST: jned %d1, -1, -32766
# CHECK: encoding: [0x9f,0xf1,0x01,0xc0]
.code32
jned %d1, -1, -32766

# CHECK-INST: jned %d1, -1, -4
# CHECK: encoding: [0x9f,0xf1,0xfe,0xff]
.code32
jned %d1, -1, -4

# CHECK-INST: jned %d1, -1, -2
# CHECK: encoding: [0x9f,0xf1,0xff,0xff]
.code32
jned %d1, -1, -2

# CHECK-INST: jned %d1, -1, 0
# CHECK: encoding: [0x9f,0xf1,0x00,0x80]
.code32
jned %d1, -1, 0

# CHECK-INST: jned %d1, -1, 2
# CHECK: encoding: [0x9f,0xf1,0x01,0x80]
.code32
jned %d1, -1, 2

# CHECK-INST: jned %d1, -1, 32764
# CHECK: encoding: [0x9f,0xf1,0xfe,0xbf]
.code32
jned %d1, -1, 32764

# CHECK-INST: jned %d1, -1, 32766
# CHECK: encoding: [0x9f,0xf1,0xff,0xbf]
.code32
jned %d1, -1, 32766

# CHECK-INST: jned %d1, 0, -32768
# CHECK: encoding: [0x9f,0x01,0x00,0xc0]
.code32
jned %d1, 0, -32768

# CHECK-INST: jned %d1, 0, -32766
# CHECK: encoding: [0x9f,0x01,0x01,0xc0]
.code32
jned %d1, 0, -32766

# CHECK-INST: jned %d1, 0, -4
# CHECK: encoding: [0x9f,0x01,0xfe,0xff]
.code32
jned %d1, 0, -4

# CHECK-INST: jned %d1, 0, -2
# CHECK: encoding: [0x9f,0x01,0xff,0xff]
.code32
jned %d1, 0, -2

# CHECK-INST: jned %d1, 0, 0
# CHECK: encoding: [0x9f,0x01,0x00,0x80]
.code32
jned %d1, 0, 0

# CHECK-INST: jned %d1, 0, 2
# CHECK: encoding: [0x9f,0x01,0x01,0x80]
.code32
jned %d1, 0, 2

# CHECK-INST: jned %d1, 0, 32764
# CHECK: encoding: [0x9f,0x01,0xfe,0xbf]
.code32
jned %d1, 0, 32764

# CHECK-INST: jned %d1, 0, 32766
# CHECK: encoding: [0x9f,0x01,0xff,0xbf]
.code32
jned %d1, 0, 32766

# CHECK-INST: jned %d1, 1, -32768
# CHECK: encoding: [0x9f,0x11,0x00,0xc0]
.code32
jned %d1, 1, -32768

# CHECK-INST: jned %d1, 1, -32766
# CHECK: encoding: [0x9f,0x11,0x01,0xc0]
.code32
jned %d1, 1, -32766

# CHECK-INST: jned %d1, 1, -4
# CHECK: encoding: [0x9f,0x11,0xfe,0xff]
.code32
jned %d1, 1, -4

# CHECK-INST: jned %d1, 1, -2
# CHECK: encoding: [0x9f,0x11,0xff,0xff]
.code32
jned %d1, 1, -2

# CHECK-INST: jned %d1, 1, 0
# CHECK: encoding: [0x9f,0x11,0x00,0x80]
.code32
jned %d1, 1, 0

# CHECK-INST: jned %d1, 1, 2
# CHECK: encoding: [0x9f,0x11,0x01,0x80]
.code32
jned %d1, 1, 2

# CHECK-INST: jned %d1, 1, 32764
# CHECK: encoding: [0x9f,0x11,0xfe,0xbf]
.code32
jned %d1, 1, 32764

# CHECK-INST: jned %d1, 1, 32766
# CHECK: encoding: [0x9f,0x11,0xff,0xbf]
.code32
jned %d1, 1, 32766

# CHECK-INST: jned %d1, 6, -32768
# CHECK: encoding: [0x9f,0x61,0x00,0xc0]
.code32
jned %d1, 6, -32768

# CHECK-INST: jned %d1, 6, -32766
# CHECK: encoding: [0x9f,0x61,0x01,0xc0]
.code32
jned %d1, 6, -32766

# CHECK-INST: jned %d1, 6, -4
# CHECK: encoding: [0x9f,0x61,0xfe,0xff]
.code32
jned %d1, 6, -4

# CHECK-INST: jned %d1, 6, -2
# CHECK: encoding: [0x9f,0x61,0xff,0xff]
.code32
jned %d1, 6, -2

# CHECK-INST: jned %d1, 6, 0
# CHECK: encoding: [0x9f,0x61,0x00,0x80]
.code32
jned %d1, 6, 0

# CHECK-INST: jned %d1, 6, 2
# CHECK: encoding: [0x9f,0x61,0x01,0x80]
.code32
jned %d1, 6, 2

# CHECK-INST: jned %d1, 6, 32764
# CHECK: encoding: [0x9f,0x61,0xfe,0xbf]
.code32
jned %d1, 6, 32764

# CHECK-INST: jned %d1, 6, 32766
# CHECK: encoding: [0x9f,0x61,0xff,0xbf]
.code32
jned %d1, 6, 32766

# CHECK-INST: jned %d1, 7, -32768
# CHECK: encoding: [0x9f,0x71,0x00,0xc0]
.code32
jned %d1, 7, -32768

# CHECK-INST: jned %d1, 7, -32766
# CHECK: encoding: [0x9f,0x71,0x01,0xc0]
.code32
jned %d1, 7, -32766

# CHECK-INST: jned %d1, 7, -4
# CHECK: encoding: [0x9f,0x71,0xfe,0xff]
.code32
jned %d1, 7, -4

# CHECK-INST: jned %d1, 7, -2
# CHECK: encoding: [0x9f,0x71,0xff,0xff]
.code32
jned %d1, 7, -2

# CHECK-INST: jned %d1, 7, 0
# CHECK: encoding: [0x9f,0x71,0x00,0x80]
.code32
jned %d1, 7, 0

# CHECK-INST: jned %d1, 7, 2
# CHECK: encoding: [0x9f,0x71,0x01,0x80]
.code32
jned %d1, 7, 2

# CHECK-INST: jned %d1, 7, 32764
# CHECK: encoding: [0x9f,0x71,0xfe,0xbf]
.code32
jned %d1, 7, 32764

# CHECK-INST: jned %d1, 7, 32766
# CHECK: encoding: [0x9f,0x71,0xff,0xbf]
.code32
jned %d1, 7, 32766

# CHECK-INST: jned %d14, -8, -32768
# CHECK: encoding: [0x9f,0x8e,0x00,0xc0]
.code32
jned %d14, -8, -32768

# CHECK-INST: jned %d14, -8, -32766
# CHECK: encoding: [0x9f,0x8e,0x01,0xc0]
.code32
jned %d14, -8, -32766

# CHECK-INST: jned %d14, -8, -4
# CHECK: encoding: [0x9f,0x8e,0xfe,0xff]
.code32
jned %d14, -8, -4

# CHECK-INST: jned %d14, -8, -2
# CHECK: encoding: [0x9f,0x8e,0xff,0xff]
.code32
jned %d14, -8, -2

# CHECK-INST: jned %d14, -8, 0
# CHECK: encoding: [0x9f,0x8e,0x00,0x80]
.code32
jned %d14, -8, 0

# CHECK-INST: jned %d14, -8, 2
# CHECK: encoding: [0x9f,0x8e,0x01,0x80]
.code32
jned %d14, -8, 2

# CHECK-INST: jned %d14, -8, 32764
# CHECK: encoding: [0x9f,0x8e,0xfe,0xbf]
.code32
jned %d14, -8, 32764

# CHECK-INST: jned %d14, -8, 32766
# CHECK: encoding: [0x9f,0x8e,0xff,0xbf]
.code32
jned %d14, -8, 32766

# CHECK-INST: jned %d14, -7, -32768
# CHECK: encoding: [0x9f,0x9e,0x00,0xc0]
.code32
jned %d14, -7, -32768

# CHECK-INST: jned %d14, -7, -32766
# CHECK: encoding: [0x9f,0x9e,0x01,0xc0]
.code32
jned %d14, -7, -32766

# CHECK-INST: jned %d14, -7, -4
# CHECK: encoding: [0x9f,0x9e,0xfe,0xff]
.code32
jned %d14, -7, -4

# CHECK-INST: jned %d14, -7, -2
# CHECK: encoding: [0x9f,0x9e,0xff,0xff]
.code32
jned %d14, -7, -2

# CHECK-INST: jned %d14, -7, 0
# CHECK: encoding: [0x9f,0x9e,0x00,0x80]
.code32
jned %d14, -7, 0

# CHECK-INST: jned %d14, -7, 2
# CHECK: encoding: [0x9f,0x9e,0x01,0x80]
.code32
jned %d14, -7, 2

# CHECK-INST: jned %d14, -7, 32764
# CHECK: encoding: [0x9f,0x9e,0xfe,0xbf]
.code32
jned %d14, -7, 32764

# CHECK-INST: jned %d14, -7, 32766
# CHECK: encoding: [0x9f,0x9e,0xff,0xbf]
.code32
jned %d14, -7, 32766

# CHECK-INST: jned %d14, -2, -32768
# CHECK: encoding: [0x9f,0xee,0x00,0xc0]
.code32
jned %d14, -2, -32768

# CHECK-INST: jned %d14, -2, -32766
# CHECK: encoding: [0x9f,0xee,0x01,0xc0]
.code32
jned %d14, -2, -32766

# CHECK-INST: jned %d14, -2, -4
# CHECK: encoding: [0x9f,0xee,0xfe,0xff]
.code32
jned %d14, -2, -4

# CHECK-INST: jned %d14, -2, -2
# CHECK: encoding: [0x9f,0xee,0xff,0xff]
.code32
jned %d14, -2, -2

# CHECK-INST: jned %d14, -2, 0
# CHECK: encoding: [0x9f,0xee,0x00,0x80]
.code32
jned %d14, -2, 0

# CHECK-INST: jned %d14, -2, 2
# CHECK: encoding: [0x9f,0xee,0x01,0x80]
.code32
jned %d14, -2, 2

# CHECK-INST: jned %d14, -2, 32764
# CHECK: encoding: [0x9f,0xee,0xfe,0xbf]
.code32
jned %d14, -2, 32764

# CHECK-INST: jned %d14, -2, 32766
# CHECK: encoding: [0x9f,0xee,0xff,0xbf]
.code32
jned %d14, -2, 32766

# CHECK-INST: jned %d14, -1, -32768
# CHECK: encoding: [0x9f,0xfe,0x00,0xc0]
.code32
jned %d14, -1, -32768

# CHECK-INST: jned %d14, -1, -32766
# CHECK: encoding: [0x9f,0xfe,0x01,0xc0]
.code32
jned %d14, -1, -32766

# CHECK-INST: jned %d14, -1, -4
# CHECK: encoding: [0x9f,0xfe,0xfe,0xff]
.code32
jned %d14, -1, -4

# CHECK-INST: jned %d14, -1, -2
# CHECK: encoding: [0x9f,0xfe,0xff,0xff]
.code32
jned %d14, -1, -2

# CHECK-INST: jned %d14, -1, 0
# CHECK: encoding: [0x9f,0xfe,0x00,0x80]
.code32
jned %d14, -1, 0

# CHECK-INST: jned %d14, -1, 2
# CHECK: encoding: [0x9f,0xfe,0x01,0x80]
.code32
jned %d14, -1, 2

# CHECK-INST: jned %d14, -1, 32764
# CHECK: encoding: [0x9f,0xfe,0xfe,0xbf]
.code32
jned %d14, -1, 32764

# CHECK-INST: jned %d14, -1, 32766
# CHECK: encoding: [0x9f,0xfe,0xff,0xbf]
.code32
jned %d14, -1, 32766

# CHECK-INST: jned %d14, 0, -32768
# CHECK: encoding: [0x9f,0x0e,0x00,0xc0]
.code32
jned %d14, 0, -32768

# CHECK-INST: jned %d14, 0, -32766
# CHECK: encoding: [0x9f,0x0e,0x01,0xc0]
.code32
jned %d14, 0, -32766

# CHECK-INST: jned %d14, 0, -4
# CHECK: encoding: [0x9f,0x0e,0xfe,0xff]
.code32
jned %d14, 0, -4

# CHECK-INST: jned %d14, 0, -2
# CHECK: encoding: [0x9f,0x0e,0xff,0xff]
.code32
jned %d14, 0, -2

# CHECK-INST: jned %d14, 0, 0
# CHECK: encoding: [0x9f,0x0e,0x00,0x80]
.code32
jned %d14, 0, 0

# CHECK-INST: jned %d14, 0, 2
# CHECK: encoding: [0x9f,0x0e,0x01,0x80]
.code32
jned %d14, 0, 2

# CHECK-INST: jned %d14, 0, 32764
# CHECK: encoding: [0x9f,0x0e,0xfe,0xbf]
.code32
jned %d14, 0, 32764

# CHECK-INST: jned %d14, 0, 32766
# CHECK: encoding: [0x9f,0x0e,0xff,0xbf]
.code32
jned %d14, 0, 32766

# CHECK-INST: jned %d14, 1, -32768
# CHECK: encoding: [0x9f,0x1e,0x00,0xc0]
.code32
jned %d14, 1, -32768

# CHECK-INST: jned %d14, 1, -32766
# CHECK: encoding: [0x9f,0x1e,0x01,0xc0]
.code32
jned %d14, 1, -32766

# CHECK-INST: jned %d14, 1, -4
# CHECK: encoding: [0x9f,0x1e,0xfe,0xff]
.code32
jned %d14, 1, -4

# CHECK-INST: jned %d14, 1, -2
# CHECK: encoding: [0x9f,0x1e,0xff,0xff]
.code32
jned %d14, 1, -2

# CHECK-INST: jned %d14, 1, 0
# CHECK: encoding: [0x9f,0x1e,0x00,0x80]
.code32
jned %d14, 1, 0

# CHECK-INST: jned %d14, 1, 2
# CHECK: encoding: [0x9f,0x1e,0x01,0x80]
.code32
jned %d14, 1, 2

# CHECK-INST: jned %d14, 1, 32764
# CHECK: encoding: [0x9f,0x1e,0xfe,0xbf]
.code32
jned %d14, 1, 32764

# CHECK-INST: jned %d14, 1, 32766
# CHECK: encoding: [0x9f,0x1e,0xff,0xbf]
.code32
jned %d14, 1, 32766

# CHECK-INST: jned %d14, 6, -32768
# CHECK: encoding: [0x9f,0x6e,0x00,0xc0]
.code32
jned %d14, 6, -32768

# CHECK-INST: jned %d14, 6, -32766
# CHECK: encoding: [0x9f,0x6e,0x01,0xc0]
.code32
jned %d14, 6, -32766

# CHECK-INST: jned %d14, 6, -4
# CHECK: encoding: [0x9f,0x6e,0xfe,0xff]
.code32
jned %d14, 6, -4

# CHECK-INST: jned %d14, 6, -2
# CHECK: encoding: [0x9f,0x6e,0xff,0xff]
.code32
jned %d14, 6, -2

# CHECK-INST: jned %d14, 6, 0
# CHECK: encoding: [0x9f,0x6e,0x00,0x80]
.code32
jned %d14, 6, 0

# CHECK-INST: jned %d14, 6, 2
# CHECK: encoding: [0x9f,0x6e,0x01,0x80]
.code32
jned %d14, 6, 2

# CHECK-INST: jned %d14, 6, 32764
# CHECK: encoding: [0x9f,0x6e,0xfe,0xbf]
.code32
jned %d14, 6, 32764

# CHECK-INST: jned %d14, 6, 32766
# CHECK: encoding: [0x9f,0x6e,0xff,0xbf]
.code32
jned %d14, 6, 32766

# CHECK-INST: jned %d14, 7, -32768
# CHECK: encoding: [0x9f,0x7e,0x00,0xc0]
.code32
jned %d14, 7, -32768

# CHECK-INST: jned %d14, 7, -32766
# CHECK: encoding: [0x9f,0x7e,0x01,0xc0]
.code32
jned %d14, 7, -32766

# CHECK-INST: jned %d14, 7, -4
# CHECK: encoding: [0x9f,0x7e,0xfe,0xff]
.code32
jned %d14, 7, -4

# CHECK-INST: jned %d14, 7, -2
# CHECK: encoding: [0x9f,0x7e,0xff,0xff]
.code32
jned %d14, 7, -2

# CHECK-INST: jned %d14, 7, 0
# CHECK: encoding: [0x9f,0x7e,0x00,0x80]
.code32
jned %d14, 7, 0

# CHECK-INST: jned %d14, 7, 2
# CHECK: encoding: [0x9f,0x7e,0x01,0x80]
.code32
jned %d14, 7, 2

# CHECK-INST: jned %d14, 7, 32764
# CHECK: encoding: [0x9f,0x7e,0xfe,0xbf]
.code32
jned %d14, 7, 32764

# CHECK-INST: jned %d14, 7, 32766
# CHECK: encoding: [0x9f,0x7e,0xff,0xbf]
.code32
jned %d14, 7, 32766

# CHECK-INST: jned %d15, -8, -32768
# CHECK: encoding: [0x9f,0x8f,0x00,0xc0]
.code32
jned %d15, -8, -32768

# CHECK-INST: jned %d15, -8, -32766
# CHECK: encoding: [0x9f,0x8f,0x01,0xc0]
.code32
jned %d15, -8, -32766

# CHECK-INST: jned %d15, -8, -4
# CHECK: encoding: [0x9f,0x8f,0xfe,0xff]
.code32
jned %d15, -8, -4

# CHECK-INST: jned %d15, -8, -2
# CHECK: encoding: [0x9f,0x8f,0xff,0xff]
.code32
jned %d15, -8, -2

# CHECK-INST: jned %d15, -8, 0
# CHECK: encoding: [0x9f,0x8f,0x00,0x80]
.code32
jned %d15, -8, 0

# CHECK-INST: jned %d15, -8, 2
# CHECK: encoding: [0x9f,0x8f,0x01,0x80]
.code32
jned %d15, -8, 2

# CHECK-INST: jned %d15, -8, 32764
# CHECK: encoding: [0x9f,0x8f,0xfe,0xbf]
.code32
jned %d15, -8, 32764

# CHECK-INST: jned %d15, -8, 32766
# CHECK: encoding: [0x9f,0x8f,0xff,0xbf]
.code32
jned %d15, -8, 32766

# CHECK-INST: jned %d15, -7, -32768
# CHECK: encoding: [0x9f,0x9f,0x00,0xc0]
.code32
jned %d15, -7, -32768

# CHECK-INST: jned %d15, -7, -32766
# CHECK: encoding: [0x9f,0x9f,0x01,0xc0]
.code32
jned %d15, -7, -32766

# CHECK-INST: jned %d15, -7, -4
# CHECK: encoding: [0x9f,0x9f,0xfe,0xff]
.code32
jned %d15, -7, -4

# CHECK-INST: jned %d15, -7, -2
# CHECK: encoding: [0x9f,0x9f,0xff,0xff]
.code32
jned %d15, -7, -2

# CHECK-INST: jned %d15, -7, 0
# CHECK: encoding: [0x9f,0x9f,0x00,0x80]
.code32
jned %d15, -7, 0

# CHECK-INST: jned %d15, -7, 2
# CHECK: encoding: [0x9f,0x9f,0x01,0x80]
.code32
jned %d15, -7, 2

# CHECK-INST: jned %d15, -7, 32764
# CHECK: encoding: [0x9f,0x9f,0xfe,0xbf]
.code32
jned %d15, -7, 32764

# CHECK-INST: jned %d15, -7, 32766
# CHECK: encoding: [0x9f,0x9f,0xff,0xbf]
.code32
jned %d15, -7, 32766

# CHECK-INST: jned %d15, -2, -32768
# CHECK: encoding: [0x9f,0xef,0x00,0xc0]
.code32
jned %d15, -2, -32768

# CHECK-INST: jned %d15, -2, -32766
# CHECK: encoding: [0x9f,0xef,0x01,0xc0]
.code32
jned %d15, -2, -32766

# CHECK-INST: jned %d15, -2, -4
# CHECK: encoding: [0x9f,0xef,0xfe,0xff]
.code32
jned %d15, -2, -4

# CHECK-INST: jned %d15, -2, -2
# CHECK: encoding: [0x9f,0xef,0xff,0xff]
.code32
jned %d15, -2, -2

# CHECK-INST: jned %d15, -2, 0
# CHECK: encoding: [0x9f,0xef,0x00,0x80]
.code32
jned %d15, -2, 0

# CHECK-INST: jned %d15, -2, 2
# CHECK: encoding: [0x9f,0xef,0x01,0x80]
.code32
jned %d15, -2, 2

# CHECK-INST: jned %d15, -2, 32764
# CHECK: encoding: [0x9f,0xef,0xfe,0xbf]
.code32
jned %d15, -2, 32764

# CHECK-INST: jned %d15, -2, 32766
# CHECK: encoding: [0x9f,0xef,0xff,0xbf]
.code32
jned %d15, -2, 32766

# CHECK-INST: jned %d15, -1, -32768
# CHECK: encoding: [0x9f,0xff,0x00,0xc0]
.code32
jned %d15, -1, -32768

# CHECK-INST: jned %d15, -1, -32766
# CHECK: encoding: [0x9f,0xff,0x01,0xc0]
.code32
jned %d15, -1, -32766

# CHECK-INST: jned %d15, -1, -4
# CHECK: encoding: [0x9f,0xff,0xfe,0xff]
.code32
jned %d15, -1, -4

# CHECK-INST: jned %d15, -1, -2
# CHECK: encoding: [0x9f,0xff,0xff,0xff]
.code32
jned %d15, -1, -2

# CHECK-INST: jned %d15, -1, 0
# CHECK: encoding: [0x9f,0xff,0x00,0x80]
.code32
jned %d15, -1, 0

# CHECK-INST: jned %d15, -1, 2
# CHECK: encoding: [0x9f,0xff,0x01,0x80]
.code32
jned %d15, -1, 2

# CHECK-INST: jned %d15, -1, 32764
# CHECK: encoding: [0x9f,0xff,0xfe,0xbf]
.code32
jned %d15, -1, 32764

# CHECK-INST: jned %d15, -1, 32766
# CHECK: encoding: [0x9f,0xff,0xff,0xbf]
.code32
jned %d15, -1, 32766

# CHECK-INST: jned %d15, 0, -32768
# CHECK: encoding: [0x9f,0x0f,0x00,0xc0]
.code32
jned %d15, 0, -32768

# CHECK-INST: jned %d15, 0, -32766
# CHECK: encoding: [0x9f,0x0f,0x01,0xc0]
.code32
jned %d15, 0, -32766

# CHECK-INST: jned %d15, 0, -4
# CHECK: encoding: [0x9f,0x0f,0xfe,0xff]
.code32
jned %d15, 0, -4

# CHECK-INST: jned %d15, 0, -2
# CHECK: encoding: [0x9f,0x0f,0xff,0xff]
.code32
jned %d15, 0, -2

# CHECK-INST: jned %d15, 0, 0
# CHECK: encoding: [0x9f,0x0f,0x00,0x80]
.code32
jned %d15, 0, 0

# CHECK-INST: jned %d15, 0, 2
# CHECK: encoding: [0x9f,0x0f,0x01,0x80]
.code32
jned %d15, 0, 2

# CHECK-INST: jned %d15, 0, 32764
# CHECK: encoding: [0x9f,0x0f,0xfe,0xbf]
.code32
jned %d15, 0, 32764

# CHECK-INST: jned %d15, 0, 32766
# CHECK: encoding: [0x9f,0x0f,0xff,0xbf]
.code32
jned %d15, 0, 32766

# CHECK-INST: jned %d15, 1, -32768
# CHECK: encoding: [0x9f,0x1f,0x00,0xc0]
.code32
jned %d15, 1, -32768

# CHECK-INST: jned %d15, 1, -32766
# CHECK: encoding: [0x9f,0x1f,0x01,0xc0]
.code32
jned %d15, 1, -32766

# CHECK-INST: jned %d15, 1, -4
# CHECK: encoding: [0x9f,0x1f,0xfe,0xff]
.code32
jned %d15, 1, -4

# CHECK-INST: jned %d15, 1, -2
# CHECK: encoding: [0x9f,0x1f,0xff,0xff]
.code32
jned %d15, 1, -2

# CHECK-INST: jned %d15, 1, 0
# CHECK: encoding: [0x9f,0x1f,0x00,0x80]
.code32
jned %d15, 1, 0

# CHECK-INST: jned %d15, 1, 2
# CHECK: encoding: [0x9f,0x1f,0x01,0x80]
.code32
jned %d15, 1, 2

# CHECK-INST: jned %d15, 1, 32764
# CHECK: encoding: [0x9f,0x1f,0xfe,0xbf]
.code32
jned %d15, 1, 32764

# CHECK-INST: jned %d15, 1, 32766
# CHECK: encoding: [0x9f,0x1f,0xff,0xbf]
.code32
jned %d15, 1, 32766

# CHECK-INST: jned %d15, 6, -32768
# CHECK: encoding: [0x9f,0x6f,0x00,0xc0]
.code32
jned %d15, 6, -32768

# CHECK-INST: jned %d15, 6, -32766
# CHECK: encoding: [0x9f,0x6f,0x01,0xc0]
.code32
jned %d15, 6, -32766

# CHECK-INST: jned %d15, 6, -4
# CHECK: encoding: [0x9f,0x6f,0xfe,0xff]
.code32
jned %d15, 6, -4

# CHECK-INST: jned %d15, 6, -2
# CHECK: encoding: [0x9f,0x6f,0xff,0xff]
.code32
jned %d15, 6, -2

# CHECK-INST: jned %d15, 6, 0
# CHECK: encoding: [0x9f,0x6f,0x00,0x80]
.code32
jned %d15, 6, 0

# CHECK-INST: jned %d15, 6, 2
# CHECK: encoding: [0x9f,0x6f,0x01,0x80]
.code32
jned %d15, 6, 2

# CHECK-INST: jned %d15, 6, 32764
# CHECK: encoding: [0x9f,0x6f,0xfe,0xbf]
.code32
jned %d15, 6, 32764

# CHECK-INST: jned %d15, 6, 32766
# CHECK: encoding: [0x9f,0x6f,0xff,0xbf]
.code32
jned %d15, 6, 32766

# CHECK-INST: jned %d15, 7, -32768
# CHECK: encoding: [0x9f,0x7f,0x00,0xc0]
.code32
jned %d15, 7, -32768

# CHECK-INST: jned %d15, 7, -32766
# CHECK: encoding: [0x9f,0x7f,0x01,0xc0]
.code32
jned %d15, 7, -32766

# CHECK-INST: jned %d15, 7, -4
# CHECK: encoding: [0x9f,0x7f,0xfe,0xff]
.code32
jned %d15, 7, -4

# CHECK-INST: jned %d15, 7, -2
# CHECK: encoding: [0x9f,0x7f,0xff,0xff]
.code32
jned %d15, 7, -2

# CHECK-INST: jned %d15, 7, 0
# CHECK: encoding: [0x9f,0x7f,0x00,0x80]
.code32
jned %d15, 7, 0

# CHECK-INST: jned %d15, 7, 2
# CHECK: encoding: [0x9f,0x7f,0x01,0x80]
.code32
jned %d15, 7, 2

# CHECK-INST: jned %d15, 7, 32764
# CHECK: encoding: [0x9f,0x7f,0xfe,0xbf]
.code32
jned %d15, 7, 32764

# CHECK-INST: jned %d15, 7, 32766
# CHECK: encoding: [0x9f,0x7f,0xff,0xbf]
.code32
jned %d15, 7, 32766

# CHECK-INST: jned %d0, %d0, -32768
# CHECK: encoding: [0x1f,0x00,0x00,0xc0]
.code32
jned %d0, %d0, -32768

# CHECK-INST: jned %d0, %d0, -32766
# CHECK: encoding: [0x1f,0x00,0x01,0xc0]
.code32
jned %d0, %d0, -32766

# CHECK-INST: jned %d0, %d0, -4
# CHECK: encoding: [0x1f,0x00,0xfe,0xff]
.code32
jned %d0, %d0, -4

# CHECK-INST: jned %d0, %d0, -2
# CHECK: encoding: [0x1f,0x00,0xff,0xff]
.code32
jned %d0, %d0, -2

# CHECK-INST: jned %d0, %d0, 0
# CHECK: encoding: [0x1f,0x00,0x00,0x80]
.code32
jned %d0, %d0, 0

# CHECK-INST: jned %d0, %d0, 2
# CHECK: encoding: [0x1f,0x00,0x01,0x80]
.code32
jned %d0, %d0, 2

# CHECK-INST: jned %d0, %d0, 32764
# CHECK: encoding: [0x1f,0x00,0xfe,0xbf]
.code32
jned %d0, %d0, 32764

# CHECK-INST: jned %d0, %d0, 32766
# CHECK: encoding: [0x1f,0x00,0xff,0xbf]
.code32
jned %d0, %d0, 32766

# CHECK-INST: jned %d0, %d1, -32768
# CHECK: encoding: [0x1f,0x10,0x00,0xc0]
.code32
jned %d0, %d1, -32768

# CHECK-INST: jned %d0, %d1, -32766
# CHECK: encoding: [0x1f,0x10,0x01,0xc0]
.code32
jned %d0, %d1, -32766

# CHECK-INST: jned %d0, %d1, -4
# CHECK: encoding: [0x1f,0x10,0xfe,0xff]
.code32
jned %d0, %d1, -4

# CHECK-INST: jned %d0, %d1, -2
# CHECK: encoding: [0x1f,0x10,0xff,0xff]
.code32
jned %d0, %d1, -2

# CHECK-INST: jned %d0, %d1, 0
# CHECK: encoding: [0x1f,0x10,0x00,0x80]
.code32
jned %d0, %d1, 0

# CHECK-INST: jned %d0, %d1, 2
# CHECK: encoding: [0x1f,0x10,0x01,0x80]
.code32
jned %d0, %d1, 2

# CHECK-INST: jned %d0, %d1, 32764
# CHECK: encoding: [0x1f,0x10,0xfe,0xbf]
.code32
jned %d0, %d1, 32764

# CHECK-INST: jned %d0, %d1, 32766
# CHECK: encoding: [0x1f,0x10,0xff,0xbf]
.code32
jned %d0, %d1, 32766

# CHECK-INST: jned %d0, %d14, -32768
# CHECK: encoding: [0x1f,0xe0,0x00,0xc0]
.code32
jned %d0, %d14, -32768

# CHECK-INST: jned %d0, %d14, -32766
# CHECK: encoding: [0x1f,0xe0,0x01,0xc0]
.code32
jned %d0, %d14, -32766

# CHECK-INST: jned %d0, %d14, -4
# CHECK: encoding: [0x1f,0xe0,0xfe,0xff]
.code32
jned %d0, %d14, -4

# CHECK-INST: jned %d0, %d14, -2
# CHECK: encoding: [0x1f,0xe0,0xff,0xff]
.code32
jned %d0, %d14, -2

# CHECK-INST: jned %d0, %d14, 0
# CHECK: encoding: [0x1f,0xe0,0x00,0x80]
.code32
jned %d0, %d14, 0

# CHECK-INST: jned %d0, %d14, 2
# CHECK: encoding: [0x1f,0xe0,0x01,0x80]
.code32
jned %d0, %d14, 2

# CHECK-INST: jned %d0, %d14, 32764
# CHECK: encoding: [0x1f,0xe0,0xfe,0xbf]
.code32
jned %d0, %d14, 32764

# CHECK-INST: jned %d0, %d14, 32766
# CHECK: encoding: [0x1f,0xe0,0xff,0xbf]
.code32
jned %d0, %d14, 32766

# CHECK-INST: jned %d0, %d15, -32768
# CHECK: encoding: [0x1f,0xf0,0x00,0xc0]
.code32
jned %d0, %d15, -32768

# CHECK-INST: jned %d0, %d15, -32766
# CHECK: encoding: [0x1f,0xf0,0x01,0xc0]
.code32
jned %d0, %d15, -32766

# CHECK-INST: jned %d0, %d15, -4
# CHECK: encoding: [0x1f,0xf0,0xfe,0xff]
.code32
jned %d0, %d15, -4

# CHECK-INST: jned %d0, %d15, -2
# CHECK: encoding: [0x1f,0xf0,0xff,0xff]
.code32
jned %d0, %d15, -2

# CHECK-INST: jned %d0, %d15, 0
# CHECK: encoding: [0x1f,0xf0,0x00,0x80]
.code32
jned %d0, %d15, 0

# CHECK-INST: jned %d0, %d15, 2
# CHECK: encoding: [0x1f,0xf0,0x01,0x80]
.code32
jned %d0, %d15, 2

# CHECK-INST: jned %d0, %d15, 32764
# CHECK: encoding: [0x1f,0xf0,0xfe,0xbf]
.code32
jned %d0, %d15, 32764

# CHECK-INST: jned %d0, %d15, 32766
# CHECK: encoding: [0x1f,0xf0,0xff,0xbf]
.code32
jned %d0, %d15, 32766

# CHECK-INST: jned %d1, %d0, -32768
# CHECK: encoding: [0x1f,0x01,0x00,0xc0]
.code32
jned %d1, %d0, -32768

# CHECK-INST: jned %d1, %d0, -32766
# CHECK: encoding: [0x1f,0x01,0x01,0xc0]
.code32
jned %d1, %d0, -32766

# CHECK-INST: jned %d1, %d0, -4
# CHECK: encoding: [0x1f,0x01,0xfe,0xff]
.code32
jned %d1, %d0, -4

# CHECK-INST: jned %d1, %d0, -2
# CHECK: encoding: [0x1f,0x01,0xff,0xff]
.code32
jned %d1, %d0, -2

# CHECK-INST: jned %d1, %d0, 0
# CHECK: encoding: [0x1f,0x01,0x00,0x80]
.code32
jned %d1, %d0, 0

# CHECK-INST: jned %d1, %d0, 2
# CHECK: encoding: [0x1f,0x01,0x01,0x80]
.code32
jned %d1, %d0, 2

# CHECK-INST: jned %d1, %d0, 32764
# CHECK: encoding: [0x1f,0x01,0xfe,0xbf]
.code32
jned %d1, %d0, 32764

# CHECK-INST: jned %d1, %d0, 32766
# CHECK: encoding: [0x1f,0x01,0xff,0xbf]
.code32
jned %d1, %d0, 32766

# CHECK-INST: jned %d1, %d1, -32768
# CHECK: encoding: [0x1f,0x11,0x00,0xc0]
.code32
jned %d1, %d1, -32768

# CHECK-INST: jned %d1, %d1, -32766
# CHECK: encoding: [0x1f,0x11,0x01,0xc0]
.code32
jned %d1, %d1, -32766

# CHECK-INST: jned %d1, %d1, -4
# CHECK: encoding: [0x1f,0x11,0xfe,0xff]
.code32
jned %d1, %d1, -4

# CHECK-INST: jned %d1, %d1, -2
# CHECK: encoding: [0x1f,0x11,0xff,0xff]
.code32
jned %d1, %d1, -2

# CHECK-INST: jned %d1, %d1, 0
# CHECK: encoding: [0x1f,0x11,0x00,0x80]
.code32
jned %d1, %d1, 0

# CHECK-INST: jned %d1, %d1, 2
# CHECK: encoding: [0x1f,0x11,0x01,0x80]
.code32
jned %d1, %d1, 2

# CHECK-INST: jned %d1, %d1, 32764
# CHECK: encoding: [0x1f,0x11,0xfe,0xbf]
.code32
jned %d1, %d1, 32764

# CHECK-INST: jned %d1, %d1, 32766
# CHECK: encoding: [0x1f,0x11,0xff,0xbf]
.code32
jned %d1, %d1, 32766

# CHECK-INST: jned %d1, %d14, -32768
# CHECK: encoding: [0x1f,0xe1,0x00,0xc0]
.code32
jned %d1, %d14, -32768

# CHECK-INST: jned %d1, %d14, -32766
# CHECK: encoding: [0x1f,0xe1,0x01,0xc0]
.code32
jned %d1, %d14, -32766

# CHECK-INST: jned %d1, %d14, -4
# CHECK: encoding: [0x1f,0xe1,0xfe,0xff]
.code32
jned %d1, %d14, -4

# CHECK-INST: jned %d1, %d14, -2
# CHECK: encoding: [0x1f,0xe1,0xff,0xff]
.code32
jned %d1, %d14, -2

# CHECK-INST: jned %d1, %d14, 0
# CHECK: encoding: [0x1f,0xe1,0x00,0x80]
.code32
jned %d1, %d14, 0

# CHECK-INST: jned %d1, %d14, 2
# CHECK: encoding: [0x1f,0xe1,0x01,0x80]
.code32
jned %d1, %d14, 2

# CHECK-INST: jned %d1, %d14, 32764
# CHECK: encoding: [0x1f,0xe1,0xfe,0xbf]
.code32
jned %d1, %d14, 32764

# CHECK-INST: jned %d1, %d14, 32766
# CHECK: encoding: [0x1f,0xe1,0xff,0xbf]
.code32
jned %d1, %d14, 32766

# CHECK-INST: jned %d1, %d15, -32768
# CHECK: encoding: [0x1f,0xf1,0x00,0xc0]
.code32
jned %d1, %d15, -32768

# CHECK-INST: jned %d1, %d15, -32766
# CHECK: encoding: [0x1f,0xf1,0x01,0xc0]
.code32
jned %d1, %d15, -32766

# CHECK-INST: jned %d1, %d15, -4
# CHECK: encoding: [0x1f,0xf1,0xfe,0xff]
.code32
jned %d1, %d15, -4

# CHECK-INST: jned %d1, %d15, -2
# CHECK: encoding: [0x1f,0xf1,0xff,0xff]
.code32
jned %d1, %d15, -2

# CHECK-INST: jned %d1, %d15, 0
# CHECK: encoding: [0x1f,0xf1,0x00,0x80]
.code32
jned %d1, %d15, 0

# CHECK-INST: jned %d1, %d15, 2
# CHECK: encoding: [0x1f,0xf1,0x01,0x80]
.code32
jned %d1, %d15, 2

# CHECK-INST: jned %d1, %d15, 32764
# CHECK: encoding: [0x1f,0xf1,0xfe,0xbf]
.code32
jned %d1, %d15, 32764

# CHECK-INST: jned %d1, %d15, 32766
# CHECK: encoding: [0x1f,0xf1,0xff,0xbf]
.code32
jned %d1, %d15, 32766

# CHECK-INST: jned %d14, %d0, -32768
# CHECK: encoding: [0x1f,0x0e,0x00,0xc0]
.code32
jned %d14, %d0, -32768

# CHECK-INST: jned %d14, %d0, -32766
# CHECK: encoding: [0x1f,0x0e,0x01,0xc0]
.code32
jned %d14, %d0, -32766

# CHECK-INST: jned %d14, %d0, -4
# CHECK: encoding: [0x1f,0x0e,0xfe,0xff]
.code32
jned %d14, %d0, -4

# CHECK-INST: jned %d14, %d0, -2
# CHECK: encoding: [0x1f,0x0e,0xff,0xff]
.code32
jned %d14, %d0, -2

# CHECK-INST: jned %d14, %d0, 0
# CHECK: encoding: [0x1f,0x0e,0x00,0x80]
.code32
jned %d14, %d0, 0

# CHECK-INST: jned %d14, %d0, 2
# CHECK: encoding: [0x1f,0x0e,0x01,0x80]
.code32
jned %d14, %d0, 2

# CHECK-INST: jned %d14, %d0, 32764
# CHECK: encoding: [0x1f,0x0e,0xfe,0xbf]
.code32
jned %d14, %d0, 32764

# CHECK-INST: jned %d14, %d0, 32766
# CHECK: encoding: [0x1f,0x0e,0xff,0xbf]
.code32
jned %d14, %d0, 32766

# CHECK-INST: jned %d14, %d1, -32768
# CHECK: encoding: [0x1f,0x1e,0x00,0xc0]
.code32
jned %d14, %d1, -32768

# CHECK-INST: jned %d14, %d1, -32766
# CHECK: encoding: [0x1f,0x1e,0x01,0xc0]
.code32
jned %d14, %d1, -32766

# CHECK-INST: jned %d14, %d1, -4
# CHECK: encoding: [0x1f,0x1e,0xfe,0xff]
.code32
jned %d14, %d1, -4

# CHECK-INST: jned %d14, %d1, -2
# CHECK: encoding: [0x1f,0x1e,0xff,0xff]
.code32
jned %d14, %d1, -2

# CHECK-INST: jned %d14, %d1, 0
# CHECK: encoding: [0x1f,0x1e,0x00,0x80]
.code32
jned %d14, %d1, 0

# CHECK-INST: jned %d14, %d1, 2
# CHECK: encoding: [0x1f,0x1e,0x01,0x80]
.code32
jned %d14, %d1, 2

# CHECK-INST: jned %d14, %d1, 32764
# CHECK: encoding: [0x1f,0x1e,0xfe,0xbf]
.code32
jned %d14, %d1, 32764

# CHECK-INST: jned %d14, %d1, 32766
# CHECK: encoding: [0x1f,0x1e,0xff,0xbf]
.code32
jned %d14, %d1, 32766

# CHECK-INST: jned %d14, %d14, -32768
# CHECK: encoding: [0x1f,0xee,0x00,0xc0]
.code32
jned %d14, %d14, -32768

# CHECK-INST: jned %d14, %d14, -32766
# CHECK: encoding: [0x1f,0xee,0x01,0xc0]
.code32
jned %d14, %d14, -32766

# CHECK-INST: jned %d14, %d14, -4
# CHECK: encoding: [0x1f,0xee,0xfe,0xff]
.code32
jned %d14, %d14, -4

# CHECK-INST: jned %d14, %d14, -2
# CHECK: encoding: [0x1f,0xee,0xff,0xff]
.code32
jned %d14, %d14, -2

# CHECK-INST: jned %d14, %d14, 0
# CHECK: encoding: [0x1f,0xee,0x00,0x80]
.code32
jned %d14, %d14, 0

# CHECK-INST: jned %d14, %d14, 2
# CHECK: encoding: [0x1f,0xee,0x01,0x80]
.code32
jned %d14, %d14, 2

# CHECK-INST: jned %d14, %d14, 32764
# CHECK: encoding: [0x1f,0xee,0xfe,0xbf]
.code32
jned %d14, %d14, 32764

# CHECK-INST: jned %d14, %d14, 32766
# CHECK: encoding: [0x1f,0xee,0xff,0xbf]
.code32
jned %d14, %d14, 32766

# CHECK-INST: jned %d14, %d15, -32768
# CHECK: encoding: [0x1f,0xfe,0x00,0xc0]
.code32
jned %d14, %d15, -32768

# CHECK-INST: jned %d14, %d15, -32766
# CHECK: encoding: [0x1f,0xfe,0x01,0xc0]
.code32
jned %d14, %d15, -32766

# CHECK-INST: jned %d14, %d15, -4
# CHECK: encoding: [0x1f,0xfe,0xfe,0xff]
.code32
jned %d14, %d15, -4

# CHECK-INST: jned %d14, %d15, -2
# CHECK: encoding: [0x1f,0xfe,0xff,0xff]
.code32
jned %d14, %d15, -2

# CHECK-INST: jned %d14, %d15, 0
# CHECK: encoding: [0x1f,0xfe,0x00,0x80]
.code32
jned %d14, %d15, 0

# CHECK-INST: jned %d14, %d15, 2
# CHECK: encoding: [0x1f,0xfe,0x01,0x80]
.code32
jned %d14, %d15, 2

# CHECK-INST: jned %d14, %d15, 32764
# CHECK: encoding: [0x1f,0xfe,0xfe,0xbf]
.code32
jned %d14, %d15, 32764

# CHECK-INST: jned %d14, %d15, 32766
# CHECK: encoding: [0x1f,0xfe,0xff,0xbf]
.code32
jned %d14, %d15, 32766

# CHECK-INST: jned %d15, %d0, -32768
# CHECK: encoding: [0x1f,0x0f,0x00,0xc0]
.code32
jned %d15, %d0, -32768

# CHECK-INST: jned %d15, %d0, -32766
# CHECK: encoding: [0x1f,0x0f,0x01,0xc0]
.code32
jned %d15, %d0, -32766

# CHECK-INST: jned %d15, %d0, -4
# CHECK: encoding: [0x1f,0x0f,0xfe,0xff]
.code32
jned %d15, %d0, -4

# CHECK-INST: jned %d15, %d0, -2
# CHECK: encoding: [0x1f,0x0f,0xff,0xff]
.code32
jned %d15, %d0, -2

# CHECK-INST: jned %d15, %d0, 0
# CHECK: encoding: [0x1f,0x0f,0x00,0x80]
.code32
jned %d15, %d0, 0

# CHECK-INST: jned %d15, %d0, 2
# CHECK: encoding: [0x1f,0x0f,0x01,0x80]
.code32
jned %d15, %d0, 2

# CHECK-INST: jned %d15, %d0, 32764
# CHECK: encoding: [0x1f,0x0f,0xfe,0xbf]
.code32
jned %d15, %d0, 32764

# CHECK-INST: jned %d15, %d0, 32766
# CHECK: encoding: [0x1f,0x0f,0xff,0xbf]
.code32
jned %d15, %d0, 32766

# CHECK-INST: jned %d15, %d1, -32768
# CHECK: encoding: [0x1f,0x1f,0x00,0xc0]
.code32
jned %d15, %d1, -32768

# CHECK-INST: jned %d15, %d1, -32766
# CHECK: encoding: [0x1f,0x1f,0x01,0xc0]
.code32
jned %d15, %d1, -32766

# CHECK-INST: jned %d15, %d1, -4
# CHECK: encoding: [0x1f,0x1f,0xfe,0xff]
.code32
jned %d15, %d1, -4

# CHECK-INST: jned %d15, %d1, -2
# CHECK: encoding: [0x1f,0x1f,0xff,0xff]
.code32
jned %d15, %d1, -2

# CHECK-INST: jned %d15, %d1, 0
# CHECK: encoding: [0x1f,0x1f,0x00,0x80]
.code32
jned %d15, %d1, 0

# CHECK-INST: jned %d15, %d1, 2
# CHECK: encoding: [0x1f,0x1f,0x01,0x80]
.code32
jned %d15, %d1, 2

# CHECK-INST: jned %d15, %d1, 32764
# CHECK: encoding: [0x1f,0x1f,0xfe,0xbf]
.code32
jned %d15, %d1, 32764

# CHECK-INST: jned %d15, %d1, 32766
# CHECK: encoding: [0x1f,0x1f,0xff,0xbf]
.code32
jned %d15, %d1, 32766

# CHECK-INST: jned %d15, %d14, -32768
# CHECK: encoding: [0x1f,0xef,0x00,0xc0]
.code32
jned %d15, %d14, -32768

# CHECK-INST: jned %d15, %d14, -32766
# CHECK: encoding: [0x1f,0xef,0x01,0xc0]
.code32
jned %d15, %d14, -32766

# CHECK-INST: jned %d15, %d14, -4
# CHECK: encoding: [0x1f,0xef,0xfe,0xff]
.code32
jned %d15, %d14, -4

# CHECK-INST: jned %d15, %d14, -2
# CHECK: encoding: [0x1f,0xef,0xff,0xff]
.code32
jned %d15, %d14, -2

# CHECK-INST: jned %d15, %d14, 0
# CHECK: encoding: [0x1f,0xef,0x00,0x80]
.code32
jned %d15, %d14, 0

# CHECK-INST: jned %d15, %d14, 2
# CHECK: encoding: [0x1f,0xef,0x01,0x80]
.code32
jned %d15, %d14, 2

# CHECK-INST: jned %d15, %d14, 32764
# CHECK: encoding: [0x1f,0xef,0xfe,0xbf]
.code32
jned %d15, %d14, 32764

# CHECK-INST: jned %d15, %d14, 32766
# CHECK: encoding: [0x1f,0xef,0xff,0xbf]
.code32
jned %d15, %d14, 32766

# CHECK-INST: jned %d15, %d15, -32768
# CHECK: encoding: [0x1f,0xff,0x00,0xc0]
.code32
jned %d15, %d15, -32768

# CHECK-INST: jned %d15, %d15, -32766
# CHECK: encoding: [0x1f,0xff,0x01,0xc0]
.code32
jned %d15, %d15, -32766

# CHECK-INST: jned %d15, %d15, -4
# CHECK: encoding: [0x1f,0xff,0xfe,0xff]
.code32
jned %d15, %d15, -4

# CHECK-INST: jned %d15, %d15, -2
# CHECK: encoding: [0x1f,0xff,0xff,0xff]
.code32
jned %d15, %d15, -2

# CHECK-INST: jned %d15, %d15, 0
# CHECK: encoding: [0x1f,0xff,0x00,0x80]
.code32
jned %d15, %d15, 0

# CHECK-INST: jned %d15, %d15, 2
# CHECK: encoding: [0x1f,0xff,0x01,0x80]
.code32
jned %d15, %d15, 2

# CHECK-INST: jned %d15, %d15, 32764
# CHECK: encoding: [0x1f,0xff,0xfe,0xbf]
.code32
jned %d15, %d15, 32764

# CHECK-INST: jned %d15, %d15, 32766
# CHECK: encoding: [0x1f,0xff,0xff,0xbf]
.code32
jned %d15, %d15, 32766

# CHECK-INST: jnei %d0, -8, -32768
# CHECK: encoding: [0x9f,0x80,0x00,0x40]
.code32
jnei %d0, -8, -32768

# CHECK-INST: jnei %d0, -8, -32766
# CHECK: encoding: [0x9f,0x80,0x01,0x40]
.code32
jnei %d0, -8, -32766

# CHECK-INST: jnei %d0, -8, -4
# CHECK: encoding: [0x9f,0x80,0xfe,0x7f]
.code32
jnei %d0, -8, -4

# CHECK-INST: jnei %d0, -8, -2
# CHECK: encoding: [0x9f,0x80,0xff,0x7f]
.code32
jnei %d0, -8, -2

# CHECK-INST: jnei %d0, -8, 0
# CHECK: encoding: [0x9f,0x80,0x00,0x00]
.code32
jnei %d0, -8, 0

# CHECK-INST: jnei %d0, -8, 2
# CHECK: encoding: [0x9f,0x80,0x01,0x00]
.code32
jnei %d0, -8, 2

# CHECK-INST: jnei %d0, -8, 32764
# CHECK: encoding: [0x9f,0x80,0xfe,0x3f]
.code32
jnei %d0, -8, 32764

# CHECK-INST: jnei %d0, -8, 32766
# CHECK: encoding: [0x9f,0x80,0xff,0x3f]
.code32
jnei %d0, -8, 32766

# CHECK-INST: jnei %d0, -7, -32768
# CHECK: encoding: [0x9f,0x90,0x00,0x40]
.code32
jnei %d0, -7, -32768

# CHECK-INST: jnei %d0, -7, -32766
# CHECK: encoding: [0x9f,0x90,0x01,0x40]
.code32
jnei %d0, -7, -32766

# CHECK-INST: jnei %d0, -7, -4
# CHECK: encoding: [0x9f,0x90,0xfe,0x7f]
.code32
jnei %d0, -7, -4

# CHECK-INST: jnei %d0, -7, -2
# CHECK: encoding: [0x9f,0x90,0xff,0x7f]
.code32
jnei %d0, -7, -2

# CHECK-INST: jnei %d0, -7, 0
# CHECK: encoding: [0x9f,0x90,0x00,0x00]
.code32
jnei %d0, -7, 0

# CHECK-INST: jnei %d0, -7, 2
# CHECK: encoding: [0x9f,0x90,0x01,0x00]
.code32
jnei %d0, -7, 2

# CHECK-INST: jnei %d0, -7, 32764
# CHECK: encoding: [0x9f,0x90,0xfe,0x3f]
.code32
jnei %d0, -7, 32764

# CHECK-INST: jnei %d0, -7, 32766
# CHECK: encoding: [0x9f,0x90,0xff,0x3f]
.code32
jnei %d0, -7, 32766

# CHECK-INST: jnei %d0, -2, -32768
# CHECK: encoding: [0x9f,0xe0,0x00,0x40]
.code32
jnei %d0, -2, -32768

# CHECK-INST: jnei %d0, -2, -32766
# CHECK: encoding: [0x9f,0xe0,0x01,0x40]
.code32
jnei %d0, -2, -32766

# CHECK-INST: jnei %d0, -2, -4
# CHECK: encoding: [0x9f,0xe0,0xfe,0x7f]
.code32
jnei %d0, -2, -4

# CHECK-INST: jnei %d0, -2, -2
# CHECK: encoding: [0x9f,0xe0,0xff,0x7f]
.code32
jnei %d0, -2, -2

# CHECK-INST: jnei %d0, -2, 0
# CHECK: encoding: [0x9f,0xe0,0x00,0x00]
.code32
jnei %d0, -2, 0

# CHECK-INST: jnei %d0, -2, 2
# CHECK: encoding: [0x9f,0xe0,0x01,0x00]
.code32
jnei %d0, -2, 2

# CHECK-INST: jnei %d0, -2, 32764
# CHECK: encoding: [0x9f,0xe0,0xfe,0x3f]
.code32
jnei %d0, -2, 32764

# CHECK-INST: jnei %d0, -2, 32766
# CHECK: encoding: [0x9f,0xe0,0xff,0x3f]
.code32
jnei %d0, -2, 32766

# CHECK-INST: jnei %d0, -1, -32768
# CHECK: encoding: [0x9f,0xf0,0x00,0x40]
.code32
jnei %d0, -1, -32768

# CHECK-INST: jnei %d0, -1, -32766
# CHECK: encoding: [0x9f,0xf0,0x01,0x40]
.code32
jnei %d0, -1, -32766

# CHECK-INST: jnei %d0, -1, -4
# CHECK: encoding: [0x9f,0xf0,0xfe,0x7f]
.code32
jnei %d0, -1, -4

# CHECK-INST: jnei %d0, -1, -2
# CHECK: encoding: [0x9f,0xf0,0xff,0x7f]
.code32
jnei %d0, -1, -2

# CHECK-INST: jnei %d0, -1, 0
# CHECK: encoding: [0x9f,0xf0,0x00,0x00]
.code32
jnei %d0, -1, 0

# CHECK-INST: jnei %d0, -1, 2
# CHECK: encoding: [0x9f,0xf0,0x01,0x00]
.code32
jnei %d0, -1, 2

# CHECK-INST: jnei %d0, -1, 32764
# CHECK: encoding: [0x9f,0xf0,0xfe,0x3f]
.code32
jnei %d0, -1, 32764

# CHECK-INST: jnei %d0, -1, 32766
# CHECK: encoding: [0x9f,0xf0,0xff,0x3f]
.code32
jnei %d0, -1, 32766

# CHECK-INST: jnei %d0, 0, -32768
# CHECK: encoding: [0x9f,0x00,0x00,0x40]
.code32
jnei %d0, 0, -32768

# CHECK-INST: jnei %d0, 0, -32766
# CHECK: encoding: [0x9f,0x00,0x01,0x40]
.code32
jnei %d0, 0, -32766

# CHECK-INST: jnei %d0, 0, -4
# CHECK: encoding: [0x9f,0x00,0xfe,0x7f]
.code32
jnei %d0, 0, -4

# CHECK-INST: jnei %d0, 0, -2
# CHECK: encoding: [0x9f,0x00,0xff,0x7f]
.code32
jnei %d0, 0, -2

# CHECK-INST: jnei %d0, 0, 0
# CHECK: encoding: [0x9f,0x00,0x00,0x00]
.code32
jnei %d0, 0, 0

# CHECK-INST: jnei %d0, 0, 2
# CHECK: encoding: [0x9f,0x00,0x01,0x00]
.code32
jnei %d0, 0, 2

# CHECK-INST: jnei %d0, 0, 32764
# CHECK: encoding: [0x9f,0x00,0xfe,0x3f]
.code32
jnei %d0, 0, 32764

# CHECK-INST: jnei %d0, 0, 32766
# CHECK: encoding: [0x9f,0x00,0xff,0x3f]
.code32
jnei %d0, 0, 32766

# CHECK-INST: jnei %d0, 1, -32768
# CHECK: encoding: [0x9f,0x10,0x00,0x40]
.code32
jnei %d0, 1, -32768

# CHECK-INST: jnei %d0, 1, -32766
# CHECK: encoding: [0x9f,0x10,0x01,0x40]
.code32
jnei %d0, 1, -32766

# CHECK-INST: jnei %d0, 1, -4
# CHECK: encoding: [0x9f,0x10,0xfe,0x7f]
.code32
jnei %d0, 1, -4

# CHECK-INST: jnei %d0, 1, -2
# CHECK: encoding: [0x9f,0x10,0xff,0x7f]
.code32
jnei %d0, 1, -2

# CHECK-INST: jnei %d0, 1, 0
# CHECK: encoding: [0x9f,0x10,0x00,0x00]
.code32
jnei %d0, 1, 0

# CHECK-INST: jnei %d0, 1, 2
# CHECK: encoding: [0x9f,0x10,0x01,0x00]
.code32
jnei %d0, 1, 2

# CHECK-INST: jnei %d0, 1, 32764
# CHECK: encoding: [0x9f,0x10,0xfe,0x3f]
.code32
jnei %d0, 1, 32764

# CHECK-INST: jnei %d0, 1, 32766
# CHECK: encoding: [0x9f,0x10,0xff,0x3f]
.code32
jnei %d0, 1, 32766

# CHECK-INST: jnei %d0, 6, -32768
# CHECK: encoding: [0x9f,0x60,0x00,0x40]
.code32
jnei %d0, 6, -32768

# CHECK-INST: jnei %d0, 6, -32766
# CHECK: encoding: [0x9f,0x60,0x01,0x40]
.code32
jnei %d0, 6, -32766

# CHECK-INST: jnei %d0, 6, -4
# CHECK: encoding: [0x9f,0x60,0xfe,0x7f]
.code32
jnei %d0, 6, -4

# CHECK-INST: jnei %d0, 6, -2
# CHECK: encoding: [0x9f,0x60,0xff,0x7f]
.code32
jnei %d0, 6, -2

# CHECK-INST: jnei %d0, 6, 0
# CHECK: encoding: [0x9f,0x60,0x00,0x00]
.code32
jnei %d0, 6, 0

# CHECK-INST: jnei %d0, 6, 2
# CHECK: encoding: [0x9f,0x60,0x01,0x00]
.code32
jnei %d0, 6, 2

# CHECK-INST: jnei %d0, 6, 32764
# CHECK: encoding: [0x9f,0x60,0xfe,0x3f]
.code32
jnei %d0, 6, 32764

# CHECK-INST: jnei %d0, 6, 32766
# CHECK: encoding: [0x9f,0x60,0xff,0x3f]
.code32
jnei %d0, 6, 32766

# CHECK-INST: jnei %d0, 7, -32768
# CHECK: encoding: [0x9f,0x70,0x00,0x40]
.code32
jnei %d0, 7, -32768

# CHECK-INST: jnei %d0, 7, -32766
# CHECK: encoding: [0x9f,0x70,0x01,0x40]
.code32
jnei %d0, 7, -32766

# CHECK-INST: jnei %d0, 7, -4
# CHECK: encoding: [0x9f,0x70,0xfe,0x7f]
.code32
jnei %d0, 7, -4

# CHECK-INST: jnei %d0, 7, -2
# CHECK: encoding: [0x9f,0x70,0xff,0x7f]
.code32
jnei %d0, 7, -2

# CHECK-INST: jnei %d0, 7, 0
# CHECK: encoding: [0x9f,0x70,0x00,0x00]
.code32
jnei %d0, 7, 0

# CHECK-INST: jnei %d0, 7, 2
# CHECK: encoding: [0x9f,0x70,0x01,0x00]
.code32
jnei %d0, 7, 2

# CHECK-INST: jnei %d0, 7, 32764
# CHECK: encoding: [0x9f,0x70,0xfe,0x3f]
.code32
jnei %d0, 7, 32764

# CHECK-INST: jnei %d0, 7, 32766
# CHECK: encoding: [0x9f,0x70,0xff,0x3f]
.code32
jnei %d0, 7, 32766

# CHECK-INST: jnei %d1, -8, -32768
# CHECK: encoding: [0x9f,0x81,0x00,0x40]
.code32
jnei %d1, -8, -32768

# CHECK-INST: jnei %d1, -8, -32766
# CHECK: encoding: [0x9f,0x81,0x01,0x40]
.code32
jnei %d1, -8, -32766

# CHECK-INST: jnei %d1, -8, -4
# CHECK: encoding: [0x9f,0x81,0xfe,0x7f]
.code32
jnei %d1, -8, -4

# CHECK-INST: jnei %d1, -8, -2
# CHECK: encoding: [0x9f,0x81,0xff,0x7f]
.code32
jnei %d1, -8, -2

# CHECK-INST: jnei %d1, -8, 0
# CHECK: encoding: [0x9f,0x81,0x00,0x00]
.code32
jnei %d1, -8, 0

# CHECK-INST: jnei %d1, -8, 2
# CHECK: encoding: [0x9f,0x81,0x01,0x00]
.code32
jnei %d1, -8, 2

# CHECK-INST: jnei %d1, -8, 32764
# CHECK: encoding: [0x9f,0x81,0xfe,0x3f]
.code32
jnei %d1, -8, 32764

# CHECK-INST: jnei %d1, -8, 32766
# CHECK: encoding: [0x9f,0x81,0xff,0x3f]
.code32
jnei %d1, -8, 32766

# CHECK-INST: jnei %d1, -7, -32768
# CHECK: encoding: [0x9f,0x91,0x00,0x40]
.code32
jnei %d1, -7, -32768

# CHECK-INST: jnei %d1, -7, -32766
# CHECK: encoding: [0x9f,0x91,0x01,0x40]
.code32
jnei %d1, -7, -32766

# CHECK-INST: jnei %d1, -7, -4
# CHECK: encoding: [0x9f,0x91,0xfe,0x7f]
.code32
jnei %d1, -7, -4

# CHECK-INST: jnei %d1, -7, -2
# CHECK: encoding: [0x9f,0x91,0xff,0x7f]
.code32
jnei %d1, -7, -2

# CHECK-INST: jnei %d1, -7, 0
# CHECK: encoding: [0x9f,0x91,0x00,0x00]
.code32
jnei %d1, -7, 0

# CHECK-INST: jnei %d1, -7, 2
# CHECK: encoding: [0x9f,0x91,0x01,0x00]
.code32
jnei %d1, -7, 2

# CHECK-INST: jnei %d1, -7, 32764
# CHECK: encoding: [0x9f,0x91,0xfe,0x3f]
.code32
jnei %d1, -7, 32764

# CHECK-INST: jnei %d1, -7, 32766
# CHECK: encoding: [0x9f,0x91,0xff,0x3f]
.code32
jnei %d1, -7, 32766

# CHECK-INST: jnei %d1, -2, -32768
# CHECK: encoding: [0x9f,0xe1,0x00,0x40]
.code32
jnei %d1, -2, -32768

# CHECK-INST: jnei %d1, -2, -32766
# CHECK: encoding: [0x9f,0xe1,0x01,0x40]
.code32
jnei %d1, -2, -32766

# CHECK-INST: jnei %d1, -2, -4
# CHECK: encoding: [0x9f,0xe1,0xfe,0x7f]
.code32
jnei %d1, -2, -4

# CHECK-INST: jnei %d1, -2, -2
# CHECK: encoding: [0x9f,0xe1,0xff,0x7f]
.code32
jnei %d1, -2, -2

# CHECK-INST: jnei %d1, -2, 0
# CHECK: encoding: [0x9f,0xe1,0x00,0x00]
.code32
jnei %d1, -2, 0

# CHECK-INST: jnei %d1, -2, 2
# CHECK: encoding: [0x9f,0xe1,0x01,0x00]
.code32
jnei %d1, -2, 2

# CHECK-INST: jnei %d1, -2, 32764
# CHECK: encoding: [0x9f,0xe1,0xfe,0x3f]
.code32
jnei %d1, -2, 32764

# CHECK-INST: jnei %d1, -2, 32766
# CHECK: encoding: [0x9f,0xe1,0xff,0x3f]
.code32
jnei %d1, -2, 32766

# CHECK-INST: jnei %d1, -1, -32768
# CHECK: encoding: [0x9f,0xf1,0x00,0x40]
.code32
jnei %d1, -1, -32768

# CHECK-INST: jnei %d1, -1, -32766
# CHECK: encoding: [0x9f,0xf1,0x01,0x40]
.code32
jnei %d1, -1, -32766

# CHECK-INST: jnei %d1, -1, -4
# CHECK: encoding: [0x9f,0xf1,0xfe,0x7f]
.code32
jnei %d1, -1, -4

# CHECK-INST: jnei %d1, -1, -2
# CHECK: encoding: [0x9f,0xf1,0xff,0x7f]
.code32
jnei %d1, -1, -2

# CHECK-INST: jnei %d1, -1, 0
# CHECK: encoding: [0x9f,0xf1,0x00,0x00]
.code32
jnei %d1, -1, 0

# CHECK-INST: jnei %d1, -1, 2
# CHECK: encoding: [0x9f,0xf1,0x01,0x00]
.code32
jnei %d1, -1, 2

# CHECK-INST: jnei %d1, -1, 32764
# CHECK: encoding: [0x9f,0xf1,0xfe,0x3f]
.code32
jnei %d1, -1, 32764

# CHECK-INST: jnei %d1, -1, 32766
# CHECK: encoding: [0x9f,0xf1,0xff,0x3f]
.code32
jnei %d1, -1, 32766

# CHECK-INST: jnei %d1, 0, -32768
# CHECK: encoding: [0x9f,0x01,0x00,0x40]
.code32
jnei %d1, 0, -32768

# CHECK-INST: jnei %d1, 0, -32766
# CHECK: encoding: [0x9f,0x01,0x01,0x40]
.code32
jnei %d1, 0, -32766

# CHECK-INST: jnei %d1, 0, -4
# CHECK: encoding: [0x9f,0x01,0xfe,0x7f]
.code32
jnei %d1, 0, -4

# CHECK-INST: jnei %d1, 0, -2
# CHECK: encoding: [0x9f,0x01,0xff,0x7f]
.code32
jnei %d1, 0, -2

# CHECK-INST: jnei %d1, 0, 0
# CHECK: encoding: [0x9f,0x01,0x00,0x00]
.code32
jnei %d1, 0, 0

# CHECK-INST: jnei %d1, 0, 2
# CHECK: encoding: [0x9f,0x01,0x01,0x00]
.code32
jnei %d1, 0, 2

# CHECK-INST: jnei %d1, 0, 32764
# CHECK: encoding: [0x9f,0x01,0xfe,0x3f]
.code32
jnei %d1, 0, 32764

# CHECK-INST: jnei %d1, 0, 32766
# CHECK: encoding: [0x9f,0x01,0xff,0x3f]
.code32
jnei %d1, 0, 32766

# CHECK-INST: jnei %d1, 1, -32768
# CHECK: encoding: [0x9f,0x11,0x00,0x40]
.code32
jnei %d1, 1, -32768

# CHECK-INST: jnei %d1, 1, -32766
# CHECK: encoding: [0x9f,0x11,0x01,0x40]
.code32
jnei %d1, 1, -32766

# CHECK-INST: jnei %d1, 1, -4
# CHECK: encoding: [0x9f,0x11,0xfe,0x7f]
.code32
jnei %d1, 1, -4

# CHECK-INST: jnei %d1, 1, -2
# CHECK: encoding: [0x9f,0x11,0xff,0x7f]
.code32
jnei %d1, 1, -2

# CHECK-INST: jnei %d1, 1, 0
# CHECK: encoding: [0x9f,0x11,0x00,0x00]
.code32
jnei %d1, 1, 0

# CHECK-INST: jnei %d1, 1, 2
# CHECK: encoding: [0x9f,0x11,0x01,0x00]
.code32
jnei %d1, 1, 2

# CHECK-INST: jnei %d1, 1, 32764
# CHECK: encoding: [0x9f,0x11,0xfe,0x3f]
.code32
jnei %d1, 1, 32764

# CHECK-INST: jnei %d1, 1, 32766
# CHECK: encoding: [0x9f,0x11,0xff,0x3f]
.code32
jnei %d1, 1, 32766

# CHECK-INST: jnei %d1, 6, -32768
# CHECK: encoding: [0x9f,0x61,0x00,0x40]
.code32
jnei %d1, 6, -32768

# CHECK-INST: jnei %d1, 6, -32766
# CHECK: encoding: [0x9f,0x61,0x01,0x40]
.code32
jnei %d1, 6, -32766

# CHECK-INST: jnei %d1, 6, -4
# CHECK: encoding: [0x9f,0x61,0xfe,0x7f]
.code32
jnei %d1, 6, -4

# CHECK-INST: jnei %d1, 6, -2
# CHECK: encoding: [0x9f,0x61,0xff,0x7f]
.code32
jnei %d1, 6, -2

# CHECK-INST: jnei %d1, 6, 0
# CHECK: encoding: [0x9f,0x61,0x00,0x00]
.code32
jnei %d1, 6, 0

# CHECK-INST: jnei %d1, 6, 2
# CHECK: encoding: [0x9f,0x61,0x01,0x00]
.code32
jnei %d1, 6, 2

# CHECK-INST: jnei %d1, 6, 32764
# CHECK: encoding: [0x9f,0x61,0xfe,0x3f]
.code32
jnei %d1, 6, 32764

# CHECK-INST: jnei %d1, 6, 32766
# CHECK: encoding: [0x9f,0x61,0xff,0x3f]
.code32
jnei %d1, 6, 32766

# CHECK-INST: jnei %d1, 7, -32768
# CHECK: encoding: [0x9f,0x71,0x00,0x40]
.code32
jnei %d1, 7, -32768

# CHECK-INST: jnei %d1, 7, -32766
# CHECK: encoding: [0x9f,0x71,0x01,0x40]
.code32
jnei %d1, 7, -32766

# CHECK-INST: jnei %d1, 7, -4
# CHECK: encoding: [0x9f,0x71,0xfe,0x7f]
.code32
jnei %d1, 7, -4

# CHECK-INST: jnei %d1, 7, -2
# CHECK: encoding: [0x9f,0x71,0xff,0x7f]
.code32
jnei %d1, 7, -2

# CHECK-INST: jnei %d1, 7, 0
# CHECK: encoding: [0x9f,0x71,0x00,0x00]
.code32
jnei %d1, 7, 0

# CHECK-INST: jnei %d1, 7, 2
# CHECK: encoding: [0x9f,0x71,0x01,0x00]
.code32
jnei %d1, 7, 2

# CHECK-INST: jnei %d1, 7, 32764
# CHECK: encoding: [0x9f,0x71,0xfe,0x3f]
.code32
jnei %d1, 7, 32764

# CHECK-INST: jnei %d1, 7, 32766
# CHECK: encoding: [0x9f,0x71,0xff,0x3f]
.code32
jnei %d1, 7, 32766

# CHECK-INST: jnei %d14, -8, -32768
# CHECK: encoding: [0x9f,0x8e,0x00,0x40]
.code32
jnei %d14, -8, -32768

# CHECK-INST: jnei %d14, -8, -32766
# CHECK: encoding: [0x9f,0x8e,0x01,0x40]
.code32
jnei %d14, -8, -32766

# CHECK-INST: jnei %d14, -8, -4
# CHECK: encoding: [0x9f,0x8e,0xfe,0x7f]
.code32
jnei %d14, -8, -4

# CHECK-INST: jnei %d14, -8, -2
# CHECK: encoding: [0x9f,0x8e,0xff,0x7f]
.code32
jnei %d14, -8, -2

# CHECK-INST: jnei %d14, -8, 0
# CHECK: encoding: [0x9f,0x8e,0x00,0x00]
.code32
jnei %d14, -8, 0

# CHECK-INST: jnei %d14, -8, 2
# CHECK: encoding: [0x9f,0x8e,0x01,0x00]
.code32
jnei %d14, -8, 2

# CHECK-INST: jnei %d14, -8, 32764
# CHECK: encoding: [0x9f,0x8e,0xfe,0x3f]
.code32
jnei %d14, -8, 32764

# CHECK-INST: jnei %d14, -8, 32766
# CHECK: encoding: [0x9f,0x8e,0xff,0x3f]
.code32
jnei %d14, -8, 32766

# CHECK-INST: jnei %d14, -7, -32768
# CHECK: encoding: [0x9f,0x9e,0x00,0x40]
.code32
jnei %d14, -7, -32768

# CHECK-INST: jnei %d14, -7, -32766
# CHECK: encoding: [0x9f,0x9e,0x01,0x40]
.code32
jnei %d14, -7, -32766

# CHECK-INST: jnei %d14, -7, -4
# CHECK: encoding: [0x9f,0x9e,0xfe,0x7f]
.code32
jnei %d14, -7, -4

# CHECK-INST: jnei %d14, -7, -2
# CHECK: encoding: [0x9f,0x9e,0xff,0x7f]
.code32
jnei %d14, -7, -2

# CHECK-INST: jnei %d14, -7, 0
# CHECK: encoding: [0x9f,0x9e,0x00,0x00]
.code32
jnei %d14, -7, 0

# CHECK-INST: jnei %d14, -7, 2
# CHECK: encoding: [0x9f,0x9e,0x01,0x00]
.code32
jnei %d14, -7, 2

# CHECK-INST: jnei %d14, -7, 32764
# CHECK: encoding: [0x9f,0x9e,0xfe,0x3f]
.code32
jnei %d14, -7, 32764

# CHECK-INST: jnei %d14, -7, 32766
# CHECK: encoding: [0x9f,0x9e,0xff,0x3f]
.code32
jnei %d14, -7, 32766

# CHECK-INST: jnei %d14, -2, -32768
# CHECK: encoding: [0x9f,0xee,0x00,0x40]
.code32
jnei %d14, -2, -32768

# CHECK-INST: jnei %d14, -2, -32766
# CHECK: encoding: [0x9f,0xee,0x01,0x40]
.code32
jnei %d14, -2, -32766

# CHECK-INST: jnei %d14, -2, -4
# CHECK: encoding: [0x9f,0xee,0xfe,0x7f]
.code32
jnei %d14, -2, -4

# CHECK-INST: jnei %d14, -2, -2
# CHECK: encoding: [0x9f,0xee,0xff,0x7f]
.code32
jnei %d14, -2, -2

# CHECK-INST: jnei %d14, -2, 0
# CHECK: encoding: [0x9f,0xee,0x00,0x00]
.code32
jnei %d14, -2, 0

# CHECK-INST: jnei %d14, -2, 2
# CHECK: encoding: [0x9f,0xee,0x01,0x00]
.code32
jnei %d14, -2, 2

# CHECK-INST: jnei %d14, -2, 32764
# CHECK: encoding: [0x9f,0xee,0xfe,0x3f]
.code32
jnei %d14, -2, 32764

# CHECK-INST: jnei %d14, -2, 32766
# CHECK: encoding: [0x9f,0xee,0xff,0x3f]
.code32
jnei %d14, -2, 32766

# CHECK-INST: jnei %d14, -1, -32768
# CHECK: encoding: [0x9f,0xfe,0x00,0x40]
.code32
jnei %d14, -1, -32768

# CHECK-INST: jnei %d14, -1, -32766
# CHECK: encoding: [0x9f,0xfe,0x01,0x40]
.code32
jnei %d14, -1, -32766

# CHECK-INST: jnei %d14, -1, -4
# CHECK: encoding: [0x9f,0xfe,0xfe,0x7f]
.code32
jnei %d14, -1, -4

# CHECK-INST: jnei %d14, -1, -2
# CHECK: encoding: [0x9f,0xfe,0xff,0x7f]
.code32
jnei %d14, -1, -2

# CHECK-INST: jnei %d14, -1, 0
# CHECK: encoding: [0x9f,0xfe,0x00,0x00]
.code32
jnei %d14, -1, 0

# CHECK-INST: jnei %d14, -1, 2
# CHECK: encoding: [0x9f,0xfe,0x01,0x00]
.code32
jnei %d14, -1, 2

# CHECK-INST: jnei %d14, -1, 32764
# CHECK: encoding: [0x9f,0xfe,0xfe,0x3f]
.code32
jnei %d14, -1, 32764

# CHECK-INST: jnei %d14, -1, 32766
# CHECK: encoding: [0x9f,0xfe,0xff,0x3f]
.code32
jnei %d14, -1, 32766

# CHECK-INST: jnei %d14, 0, -32768
# CHECK: encoding: [0x9f,0x0e,0x00,0x40]
.code32
jnei %d14, 0, -32768

# CHECK-INST: jnei %d14, 0, -32766
# CHECK: encoding: [0x9f,0x0e,0x01,0x40]
.code32
jnei %d14, 0, -32766

# CHECK-INST: jnei %d14, 0, -4
# CHECK: encoding: [0x9f,0x0e,0xfe,0x7f]
.code32
jnei %d14, 0, -4

# CHECK-INST: jnei %d14, 0, -2
# CHECK: encoding: [0x9f,0x0e,0xff,0x7f]
.code32
jnei %d14, 0, -2

# CHECK-INST: jnei %d14, 0, 0
# CHECK: encoding: [0x9f,0x0e,0x00,0x00]
.code32
jnei %d14, 0, 0

# CHECK-INST: jnei %d14, 0, 2
# CHECK: encoding: [0x9f,0x0e,0x01,0x00]
.code32
jnei %d14, 0, 2

# CHECK-INST: jnei %d14, 0, 32764
# CHECK: encoding: [0x9f,0x0e,0xfe,0x3f]
.code32
jnei %d14, 0, 32764

# CHECK-INST: jnei %d14, 0, 32766
# CHECK: encoding: [0x9f,0x0e,0xff,0x3f]
.code32
jnei %d14, 0, 32766

# CHECK-INST: jnei %d14, 1, -32768
# CHECK: encoding: [0x9f,0x1e,0x00,0x40]
.code32
jnei %d14, 1, -32768

# CHECK-INST: jnei %d14, 1, -32766
# CHECK: encoding: [0x9f,0x1e,0x01,0x40]
.code32
jnei %d14, 1, -32766

# CHECK-INST: jnei %d14, 1, -4
# CHECK: encoding: [0x9f,0x1e,0xfe,0x7f]
.code32
jnei %d14, 1, -4

# CHECK-INST: jnei %d14, 1, -2
# CHECK: encoding: [0x9f,0x1e,0xff,0x7f]
.code32
jnei %d14, 1, -2

# CHECK-INST: jnei %d14, 1, 0
# CHECK: encoding: [0x9f,0x1e,0x00,0x00]
.code32
jnei %d14, 1, 0

# CHECK-INST: jnei %d14, 1, 2
# CHECK: encoding: [0x9f,0x1e,0x01,0x00]
.code32
jnei %d14, 1, 2

# CHECK-INST: jnei %d14, 1, 32764
# CHECK: encoding: [0x9f,0x1e,0xfe,0x3f]
.code32
jnei %d14, 1, 32764

# CHECK-INST: jnei %d14, 1, 32766
# CHECK: encoding: [0x9f,0x1e,0xff,0x3f]
.code32
jnei %d14, 1, 32766

# CHECK-INST: jnei %d14, 6, -32768
# CHECK: encoding: [0x9f,0x6e,0x00,0x40]
.code32
jnei %d14, 6, -32768

# CHECK-INST: jnei %d14, 6, -32766
# CHECK: encoding: [0x9f,0x6e,0x01,0x40]
.code32
jnei %d14, 6, -32766

# CHECK-INST: jnei %d14, 6, -4
# CHECK: encoding: [0x9f,0x6e,0xfe,0x7f]
.code32
jnei %d14, 6, -4

# CHECK-INST: jnei %d14, 6, -2
# CHECK: encoding: [0x9f,0x6e,0xff,0x7f]
.code32
jnei %d14, 6, -2

# CHECK-INST: jnei %d14, 6, 0
# CHECK: encoding: [0x9f,0x6e,0x00,0x00]
.code32
jnei %d14, 6, 0

# CHECK-INST: jnei %d14, 6, 2
# CHECK: encoding: [0x9f,0x6e,0x01,0x00]
.code32
jnei %d14, 6, 2

# CHECK-INST: jnei %d14, 6, 32764
# CHECK: encoding: [0x9f,0x6e,0xfe,0x3f]
.code32
jnei %d14, 6, 32764

# CHECK-INST: jnei %d14, 6, 32766
# CHECK: encoding: [0x9f,0x6e,0xff,0x3f]
.code32
jnei %d14, 6, 32766

# CHECK-INST: jnei %d14, 7, -32768
# CHECK: encoding: [0x9f,0x7e,0x00,0x40]
.code32
jnei %d14, 7, -32768

# CHECK-INST: jnei %d14, 7, -32766
# CHECK: encoding: [0x9f,0x7e,0x01,0x40]
.code32
jnei %d14, 7, -32766

# CHECK-INST: jnei %d14, 7, -4
# CHECK: encoding: [0x9f,0x7e,0xfe,0x7f]
.code32
jnei %d14, 7, -4

# CHECK-INST: jnei %d14, 7, -2
# CHECK: encoding: [0x9f,0x7e,0xff,0x7f]
.code32
jnei %d14, 7, -2

# CHECK-INST: jnei %d14, 7, 0
# CHECK: encoding: [0x9f,0x7e,0x00,0x00]
.code32
jnei %d14, 7, 0

# CHECK-INST: jnei %d14, 7, 2
# CHECK: encoding: [0x9f,0x7e,0x01,0x00]
.code32
jnei %d14, 7, 2

# CHECK-INST: jnei %d14, 7, 32764
# CHECK: encoding: [0x9f,0x7e,0xfe,0x3f]
.code32
jnei %d14, 7, 32764

# CHECK-INST: jnei %d14, 7, 32766
# CHECK: encoding: [0x9f,0x7e,0xff,0x3f]
.code32
jnei %d14, 7, 32766

# CHECK-INST: jnei %d15, -8, -32768
# CHECK: encoding: [0x9f,0x8f,0x00,0x40]
.code32
jnei %d15, -8, -32768

# CHECK-INST: jnei %d15, -8, -32766
# CHECK: encoding: [0x9f,0x8f,0x01,0x40]
.code32
jnei %d15, -8, -32766

# CHECK-INST: jnei %d15, -8, -4
# CHECK: encoding: [0x9f,0x8f,0xfe,0x7f]
.code32
jnei %d15, -8, -4

# CHECK-INST: jnei %d15, -8, -2
# CHECK: encoding: [0x9f,0x8f,0xff,0x7f]
.code32
jnei %d15, -8, -2

# CHECK-INST: jnei %d15, -8, 0
# CHECK: encoding: [0x9f,0x8f,0x00,0x00]
.code32
jnei %d15, -8, 0

# CHECK-INST: jnei %d15, -8, 2
# CHECK: encoding: [0x9f,0x8f,0x01,0x00]
.code32
jnei %d15, -8, 2

# CHECK-INST: jnei %d15, -8, 32764
# CHECK: encoding: [0x9f,0x8f,0xfe,0x3f]
.code32
jnei %d15, -8, 32764

# CHECK-INST: jnei %d15, -8, 32766
# CHECK: encoding: [0x9f,0x8f,0xff,0x3f]
.code32
jnei %d15, -8, 32766

# CHECK-INST: jnei %d15, -7, -32768
# CHECK: encoding: [0x9f,0x9f,0x00,0x40]
.code32
jnei %d15, -7, -32768

# CHECK-INST: jnei %d15, -7, -32766
# CHECK: encoding: [0x9f,0x9f,0x01,0x40]
.code32
jnei %d15, -7, -32766

# CHECK-INST: jnei %d15, -7, -4
# CHECK: encoding: [0x9f,0x9f,0xfe,0x7f]
.code32
jnei %d15, -7, -4

# CHECK-INST: jnei %d15, -7, -2
# CHECK: encoding: [0x9f,0x9f,0xff,0x7f]
.code32
jnei %d15, -7, -2

# CHECK-INST: jnei %d15, -7, 0
# CHECK: encoding: [0x9f,0x9f,0x00,0x00]
.code32
jnei %d15, -7, 0

# CHECK-INST: jnei %d15, -7, 2
# CHECK: encoding: [0x9f,0x9f,0x01,0x00]
.code32
jnei %d15, -7, 2

# CHECK-INST: jnei %d15, -7, 32764
# CHECK: encoding: [0x9f,0x9f,0xfe,0x3f]
.code32
jnei %d15, -7, 32764

# CHECK-INST: jnei %d15, -7, 32766
# CHECK: encoding: [0x9f,0x9f,0xff,0x3f]
.code32
jnei %d15, -7, 32766

# CHECK-INST: jnei %d15, -2, -32768
# CHECK: encoding: [0x9f,0xef,0x00,0x40]
.code32
jnei %d15, -2, -32768

# CHECK-INST: jnei %d15, -2, -32766
# CHECK: encoding: [0x9f,0xef,0x01,0x40]
.code32
jnei %d15, -2, -32766

# CHECK-INST: jnei %d15, -2, -4
# CHECK: encoding: [0x9f,0xef,0xfe,0x7f]
.code32
jnei %d15, -2, -4

# CHECK-INST: jnei %d15, -2, -2
# CHECK: encoding: [0x9f,0xef,0xff,0x7f]
.code32
jnei %d15, -2, -2

# CHECK-INST: jnei %d15, -2, 0
# CHECK: encoding: [0x9f,0xef,0x00,0x00]
.code32
jnei %d15, -2, 0

# CHECK-INST: jnei %d15, -2, 2
# CHECK: encoding: [0x9f,0xef,0x01,0x00]
.code32
jnei %d15, -2, 2

# CHECK-INST: jnei %d15, -2, 32764
# CHECK: encoding: [0x9f,0xef,0xfe,0x3f]
.code32
jnei %d15, -2, 32764

# CHECK-INST: jnei %d15, -2, 32766
# CHECK: encoding: [0x9f,0xef,0xff,0x3f]
.code32
jnei %d15, -2, 32766

# CHECK-INST: jnei %d15, -1, -32768
# CHECK: encoding: [0x9f,0xff,0x00,0x40]
.code32
jnei %d15, -1, -32768

# CHECK-INST: jnei %d15, -1, -32766
# CHECK: encoding: [0x9f,0xff,0x01,0x40]
.code32
jnei %d15, -1, -32766

# CHECK-INST: jnei %d15, -1, -4
# CHECK: encoding: [0x9f,0xff,0xfe,0x7f]
.code32
jnei %d15, -1, -4

# CHECK-INST: jnei %d15, -1, -2
# CHECK: encoding: [0x9f,0xff,0xff,0x7f]
.code32
jnei %d15, -1, -2

# CHECK-INST: jnei %d15, -1, 0
# CHECK: encoding: [0x9f,0xff,0x00,0x00]
.code32
jnei %d15, -1, 0

# CHECK-INST: jnei %d15, -1, 2
# CHECK: encoding: [0x9f,0xff,0x01,0x00]
.code32
jnei %d15, -1, 2

# CHECK-INST: jnei %d15, -1, 32764
# CHECK: encoding: [0x9f,0xff,0xfe,0x3f]
.code32
jnei %d15, -1, 32764

# CHECK-INST: jnei %d15, -1, 32766
# CHECK: encoding: [0x9f,0xff,0xff,0x3f]
.code32
jnei %d15, -1, 32766

# CHECK-INST: jnei %d15, 0, -32768
# CHECK: encoding: [0x9f,0x0f,0x00,0x40]
.code32
jnei %d15, 0, -32768

# CHECK-INST: jnei %d15, 0, -32766
# CHECK: encoding: [0x9f,0x0f,0x01,0x40]
.code32
jnei %d15, 0, -32766

# CHECK-INST: jnei %d15, 0, -4
# CHECK: encoding: [0x9f,0x0f,0xfe,0x7f]
.code32
jnei %d15, 0, -4

# CHECK-INST: jnei %d15, 0, -2
# CHECK: encoding: [0x9f,0x0f,0xff,0x7f]
.code32
jnei %d15, 0, -2

# CHECK-INST: jnei %d15, 0, 0
# CHECK: encoding: [0x9f,0x0f,0x00,0x00]
.code32
jnei %d15, 0, 0

# CHECK-INST: jnei %d15, 0, 2
# CHECK: encoding: [0x9f,0x0f,0x01,0x00]
.code32
jnei %d15, 0, 2

# CHECK-INST: jnei %d15, 0, 32764
# CHECK: encoding: [0x9f,0x0f,0xfe,0x3f]
.code32
jnei %d15, 0, 32764

# CHECK-INST: jnei %d15, 0, 32766
# CHECK: encoding: [0x9f,0x0f,0xff,0x3f]
.code32
jnei %d15, 0, 32766

# CHECK-INST: jnei %d15, 1, -32768
# CHECK: encoding: [0x9f,0x1f,0x00,0x40]
.code32
jnei %d15, 1, -32768

# CHECK-INST: jnei %d15, 1, -32766
# CHECK: encoding: [0x9f,0x1f,0x01,0x40]
.code32
jnei %d15, 1, -32766

# CHECK-INST: jnei %d15, 1, -4
# CHECK: encoding: [0x9f,0x1f,0xfe,0x7f]
.code32
jnei %d15, 1, -4

# CHECK-INST: jnei %d15, 1, -2
# CHECK: encoding: [0x9f,0x1f,0xff,0x7f]
.code32
jnei %d15, 1, -2

# CHECK-INST: jnei %d15, 1, 0
# CHECK: encoding: [0x9f,0x1f,0x00,0x00]
.code32
jnei %d15, 1, 0

# CHECK-INST: jnei %d15, 1, 2
# CHECK: encoding: [0x9f,0x1f,0x01,0x00]
.code32
jnei %d15, 1, 2

# CHECK-INST: jnei %d15, 1, 32764
# CHECK: encoding: [0x9f,0x1f,0xfe,0x3f]
.code32
jnei %d15, 1, 32764

# CHECK-INST: jnei %d15, 1, 32766
# CHECK: encoding: [0x9f,0x1f,0xff,0x3f]
.code32
jnei %d15, 1, 32766

# CHECK-INST: jnei %d15, 6, -32768
# CHECK: encoding: [0x9f,0x6f,0x00,0x40]
.code32
jnei %d15, 6, -32768

# CHECK-INST: jnei %d15, 6, -32766
# CHECK: encoding: [0x9f,0x6f,0x01,0x40]
.code32
jnei %d15, 6, -32766

# CHECK-INST: jnei %d15, 6, -4
# CHECK: encoding: [0x9f,0x6f,0xfe,0x7f]
.code32
jnei %d15, 6, -4

# CHECK-INST: jnei %d15, 6, -2
# CHECK: encoding: [0x9f,0x6f,0xff,0x7f]
.code32
jnei %d15, 6, -2

# CHECK-INST: jnei %d15, 6, 0
# CHECK: encoding: [0x9f,0x6f,0x00,0x00]
.code32
jnei %d15, 6, 0

# CHECK-INST: jnei %d15, 6, 2
# CHECK: encoding: [0x9f,0x6f,0x01,0x00]
.code32
jnei %d15, 6, 2

# CHECK-INST: jnei %d15, 6, 32764
# CHECK: encoding: [0x9f,0x6f,0xfe,0x3f]
.code32
jnei %d15, 6, 32764

# CHECK-INST: jnei %d15, 6, 32766
# CHECK: encoding: [0x9f,0x6f,0xff,0x3f]
.code32
jnei %d15, 6, 32766

# CHECK-INST: jnei %d15, 7, -32768
# CHECK: encoding: [0x9f,0x7f,0x00,0x40]
.code32
jnei %d15, 7, -32768

# CHECK-INST: jnei %d15, 7, -32766
# CHECK: encoding: [0x9f,0x7f,0x01,0x40]
.code32
jnei %d15, 7, -32766

# CHECK-INST: jnei %d15, 7, -4
# CHECK: encoding: [0x9f,0x7f,0xfe,0x7f]
.code32
jnei %d15, 7, -4

# CHECK-INST: jnei %d15, 7, -2
# CHECK: encoding: [0x9f,0x7f,0xff,0x7f]
.code32
jnei %d15, 7, -2

# CHECK-INST: jnei %d15, 7, 0
# CHECK: encoding: [0x9f,0x7f,0x00,0x00]
.code32
jnei %d15, 7, 0

# CHECK-INST: jnei %d15, 7, 2
# CHECK: encoding: [0x9f,0x7f,0x01,0x00]
.code32
jnei %d15, 7, 2

# CHECK-INST: jnei %d15, 7, 32764
# CHECK: encoding: [0x9f,0x7f,0xfe,0x3f]
.code32
jnei %d15, 7, 32764

# CHECK-INST: jnei %d15, 7, 32766
# CHECK: encoding: [0x9f,0x7f,0xff,0x3f]
.code32
jnei %d15, 7, 32766

# CHECK-INST: jnei %d0, %d0, -32768
# CHECK: encoding: [0x1f,0x00,0x00,0x40]
.code32
jnei %d0, %d0, -32768

# CHECK-INST: jnei %d0, %d0, -32766
# CHECK: encoding: [0x1f,0x00,0x01,0x40]
.code32
jnei %d0, %d0, -32766

# CHECK-INST: jnei %d0, %d0, -4
# CHECK: encoding: [0x1f,0x00,0xfe,0x7f]
.code32
jnei %d0, %d0, -4

# CHECK-INST: jnei %d0, %d0, -2
# CHECK: encoding: [0x1f,0x00,0xff,0x7f]
.code32
jnei %d0, %d0, -2

# CHECK-INST: jnei %d0, %d0, 0
# CHECK: encoding: [0x1f,0x00,0x00,0x00]
.code32
jnei %d0, %d0, 0

# CHECK-INST: jnei %d0, %d0, 2
# CHECK: encoding: [0x1f,0x00,0x01,0x00]
.code32
jnei %d0, %d0, 2

# CHECK-INST: jnei %d0, %d0, 32764
# CHECK: encoding: [0x1f,0x00,0xfe,0x3f]
.code32
jnei %d0, %d0, 32764

# CHECK-INST: jnei %d0, %d0, 32766
# CHECK: encoding: [0x1f,0x00,0xff,0x3f]
.code32
jnei %d0, %d0, 32766

# CHECK-INST: jnei %d0, %d1, -32768
# CHECK: encoding: [0x1f,0x10,0x00,0x40]
.code32
jnei %d0, %d1, -32768

# CHECK-INST: jnei %d0, %d1, -32766
# CHECK: encoding: [0x1f,0x10,0x01,0x40]
.code32
jnei %d0, %d1, -32766

# CHECK-INST: jnei %d0, %d1, -4
# CHECK: encoding: [0x1f,0x10,0xfe,0x7f]
.code32
jnei %d0, %d1, -4

# CHECK-INST: jnei %d0, %d1, -2
# CHECK: encoding: [0x1f,0x10,0xff,0x7f]
.code32
jnei %d0, %d1, -2

# CHECK-INST: jnei %d0, %d1, 0
# CHECK: encoding: [0x1f,0x10,0x00,0x00]
.code32
jnei %d0, %d1, 0

# CHECK-INST: jnei %d0, %d1, 2
# CHECK: encoding: [0x1f,0x10,0x01,0x00]
.code32
jnei %d0, %d1, 2

# CHECK-INST: jnei %d0, %d1, 32764
# CHECK: encoding: [0x1f,0x10,0xfe,0x3f]
.code32
jnei %d0, %d1, 32764

# CHECK-INST: jnei %d0, %d1, 32766
# CHECK: encoding: [0x1f,0x10,0xff,0x3f]
.code32
jnei %d0, %d1, 32766

# CHECK-INST: jnei %d0, %d14, -32768
# CHECK: encoding: [0x1f,0xe0,0x00,0x40]
.code32
jnei %d0, %d14, -32768

# CHECK-INST: jnei %d0, %d14, -32766
# CHECK: encoding: [0x1f,0xe0,0x01,0x40]
.code32
jnei %d0, %d14, -32766

# CHECK-INST: jnei %d0, %d14, -4
# CHECK: encoding: [0x1f,0xe0,0xfe,0x7f]
.code32
jnei %d0, %d14, -4

# CHECK-INST: jnei %d0, %d14, -2
# CHECK: encoding: [0x1f,0xe0,0xff,0x7f]
.code32
jnei %d0, %d14, -2

# CHECK-INST: jnei %d0, %d14, 0
# CHECK: encoding: [0x1f,0xe0,0x00,0x00]
.code32
jnei %d0, %d14, 0

# CHECK-INST: jnei %d0, %d14, 2
# CHECK: encoding: [0x1f,0xe0,0x01,0x00]
.code32
jnei %d0, %d14, 2

# CHECK-INST: jnei %d0, %d14, 32764
# CHECK: encoding: [0x1f,0xe0,0xfe,0x3f]
.code32
jnei %d0, %d14, 32764

# CHECK-INST: jnei %d0, %d14, 32766
# CHECK: encoding: [0x1f,0xe0,0xff,0x3f]
.code32
jnei %d0, %d14, 32766

# CHECK-INST: jnei %d0, %d15, -32768
# CHECK: encoding: [0x1f,0xf0,0x00,0x40]
.code32
jnei %d0, %d15, -32768

# CHECK-INST: jnei %d0, %d15, -32766
# CHECK: encoding: [0x1f,0xf0,0x01,0x40]
.code32
jnei %d0, %d15, -32766

# CHECK-INST: jnei %d0, %d15, -4
# CHECK: encoding: [0x1f,0xf0,0xfe,0x7f]
.code32
jnei %d0, %d15, -4

# CHECK-INST: jnei %d0, %d15, -2
# CHECK: encoding: [0x1f,0xf0,0xff,0x7f]
.code32
jnei %d0, %d15, -2

# CHECK-INST: jnei %d0, %d15, 0
# CHECK: encoding: [0x1f,0xf0,0x00,0x00]
.code32
jnei %d0, %d15, 0

# CHECK-INST: jnei %d0, %d15, 2
# CHECK: encoding: [0x1f,0xf0,0x01,0x00]
.code32
jnei %d0, %d15, 2

# CHECK-INST: jnei %d0, %d15, 32764
# CHECK: encoding: [0x1f,0xf0,0xfe,0x3f]
.code32
jnei %d0, %d15, 32764

# CHECK-INST: jnei %d0, %d15, 32766
# CHECK: encoding: [0x1f,0xf0,0xff,0x3f]
.code32
jnei %d0, %d15, 32766

# CHECK-INST: jnei %d1, %d0, -32768
# CHECK: encoding: [0x1f,0x01,0x00,0x40]
.code32
jnei %d1, %d0, -32768

# CHECK-INST: jnei %d1, %d0, -32766
# CHECK: encoding: [0x1f,0x01,0x01,0x40]
.code32
jnei %d1, %d0, -32766

# CHECK-INST: jnei %d1, %d0, -4
# CHECK: encoding: [0x1f,0x01,0xfe,0x7f]
.code32
jnei %d1, %d0, -4

# CHECK-INST: jnei %d1, %d0, -2
# CHECK: encoding: [0x1f,0x01,0xff,0x7f]
.code32
jnei %d1, %d0, -2

# CHECK-INST: jnei %d1, %d0, 0
# CHECK: encoding: [0x1f,0x01,0x00,0x00]
.code32
jnei %d1, %d0, 0

# CHECK-INST: jnei %d1, %d0, 2
# CHECK: encoding: [0x1f,0x01,0x01,0x00]
.code32
jnei %d1, %d0, 2

# CHECK-INST: jnei %d1, %d0, 32764
# CHECK: encoding: [0x1f,0x01,0xfe,0x3f]
.code32
jnei %d1, %d0, 32764

# CHECK-INST: jnei %d1, %d0, 32766
# CHECK: encoding: [0x1f,0x01,0xff,0x3f]
.code32
jnei %d1, %d0, 32766

# CHECK-INST: jnei %d1, %d1, -32768
# CHECK: encoding: [0x1f,0x11,0x00,0x40]
.code32
jnei %d1, %d1, -32768

# CHECK-INST: jnei %d1, %d1, -32766
# CHECK: encoding: [0x1f,0x11,0x01,0x40]
.code32
jnei %d1, %d1, -32766

# CHECK-INST: jnei %d1, %d1, -4
# CHECK: encoding: [0x1f,0x11,0xfe,0x7f]
.code32
jnei %d1, %d1, -4

# CHECK-INST: jnei %d1, %d1, -2
# CHECK: encoding: [0x1f,0x11,0xff,0x7f]
.code32
jnei %d1, %d1, -2

# CHECK-INST: jnei %d1, %d1, 0
# CHECK: encoding: [0x1f,0x11,0x00,0x00]
.code32
jnei %d1, %d1, 0

# CHECK-INST: jnei %d1, %d1, 2
# CHECK: encoding: [0x1f,0x11,0x01,0x00]
.code32
jnei %d1, %d1, 2

# CHECK-INST: jnei %d1, %d1, 32764
# CHECK: encoding: [0x1f,0x11,0xfe,0x3f]
.code32
jnei %d1, %d1, 32764

# CHECK-INST: jnei %d1, %d1, 32766
# CHECK: encoding: [0x1f,0x11,0xff,0x3f]
.code32
jnei %d1, %d1, 32766

# CHECK-INST: jnei %d1, %d14, -32768
# CHECK: encoding: [0x1f,0xe1,0x00,0x40]
.code32
jnei %d1, %d14, -32768

# CHECK-INST: jnei %d1, %d14, -32766
# CHECK: encoding: [0x1f,0xe1,0x01,0x40]
.code32
jnei %d1, %d14, -32766

# CHECK-INST: jnei %d1, %d14, -4
# CHECK: encoding: [0x1f,0xe1,0xfe,0x7f]
.code32
jnei %d1, %d14, -4

# CHECK-INST: jnei %d1, %d14, -2
# CHECK: encoding: [0x1f,0xe1,0xff,0x7f]
.code32
jnei %d1, %d14, -2

# CHECK-INST: jnei %d1, %d14, 0
# CHECK: encoding: [0x1f,0xe1,0x00,0x00]
.code32
jnei %d1, %d14, 0

# CHECK-INST: jnei %d1, %d14, 2
# CHECK: encoding: [0x1f,0xe1,0x01,0x00]
.code32
jnei %d1, %d14, 2

# CHECK-INST: jnei %d1, %d14, 32764
# CHECK: encoding: [0x1f,0xe1,0xfe,0x3f]
.code32
jnei %d1, %d14, 32764

# CHECK-INST: jnei %d1, %d14, 32766
# CHECK: encoding: [0x1f,0xe1,0xff,0x3f]
.code32
jnei %d1, %d14, 32766

# CHECK-INST: jnei %d1, %d15, -32768
# CHECK: encoding: [0x1f,0xf1,0x00,0x40]
.code32
jnei %d1, %d15, -32768

# CHECK-INST: jnei %d1, %d15, -32766
# CHECK: encoding: [0x1f,0xf1,0x01,0x40]
.code32
jnei %d1, %d15, -32766

# CHECK-INST: jnei %d1, %d15, -4
# CHECK: encoding: [0x1f,0xf1,0xfe,0x7f]
.code32
jnei %d1, %d15, -4

# CHECK-INST: jnei %d1, %d15, -2
# CHECK: encoding: [0x1f,0xf1,0xff,0x7f]
.code32
jnei %d1, %d15, -2

# CHECK-INST: jnei %d1, %d15, 0
# CHECK: encoding: [0x1f,0xf1,0x00,0x00]
.code32
jnei %d1, %d15, 0

# CHECK-INST: jnei %d1, %d15, 2
# CHECK: encoding: [0x1f,0xf1,0x01,0x00]
.code32
jnei %d1, %d15, 2

# CHECK-INST: jnei %d1, %d15, 32764
# CHECK: encoding: [0x1f,0xf1,0xfe,0x3f]
.code32
jnei %d1, %d15, 32764

# CHECK-INST: jnei %d1, %d15, 32766
# CHECK: encoding: [0x1f,0xf1,0xff,0x3f]
.code32
jnei %d1, %d15, 32766

# CHECK-INST: jnei %d14, %d0, -32768
# CHECK: encoding: [0x1f,0x0e,0x00,0x40]
.code32
jnei %d14, %d0, -32768

# CHECK-INST: jnei %d14, %d0, -32766
# CHECK: encoding: [0x1f,0x0e,0x01,0x40]
.code32
jnei %d14, %d0, -32766

# CHECK-INST: jnei %d14, %d0, -4
# CHECK: encoding: [0x1f,0x0e,0xfe,0x7f]
.code32
jnei %d14, %d0, -4

# CHECK-INST: jnei %d14, %d0, -2
# CHECK: encoding: [0x1f,0x0e,0xff,0x7f]
.code32
jnei %d14, %d0, -2

# CHECK-INST: jnei %d14, %d0, 0
# CHECK: encoding: [0x1f,0x0e,0x00,0x00]
.code32
jnei %d14, %d0, 0

# CHECK-INST: jnei %d14, %d0, 2
# CHECK: encoding: [0x1f,0x0e,0x01,0x00]
.code32
jnei %d14, %d0, 2

# CHECK-INST: jnei %d14, %d0, 32764
# CHECK: encoding: [0x1f,0x0e,0xfe,0x3f]
.code32
jnei %d14, %d0, 32764

# CHECK-INST: jnei %d14, %d0, 32766
# CHECK: encoding: [0x1f,0x0e,0xff,0x3f]
.code32
jnei %d14, %d0, 32766

# CHECK-INST: jnei %d14, %d1, -32768
# CHECK: encoding: [0x1f,0x1e,0x00,0x40]
.code32
jnei %d14, %d1, -32768

# CHECK-INST: jnei %d14, %d1, -32766
# CHECK: encoding: [0x1f,0x1e,0x01,0x40]
.code32
jnei %d14, %d1, -32766

# CHECK-INST: jnei %d14, %d1, -4
# CHECK: encoding: [0x1f,0x1e,0xfe,0x7f]
.code32
jnei %d14, %d1, -4

# CHECK-INST: jnei %d14, %d1, -2
# CHECK: encoding: [0x1f,0x1e,0xff,0x7f]
.code32
jnei %d14, %d1, -2

# CHECK-INST: jnei %d14, %d1, 0
# CHECK: encoding: [0x1f,0x1e,0x00,0x00]
.code32
jnei %d14, %d1, 0

# CHECK-INST: jnei %d14, %d1, 2
# CHECK: encoding: [0x1f,0x1e,0x01,0x00]
.code32
jnei %d14, %d1, 2

# CHECK-INST: jnei %d14, %d1, 32764
# CHECK: encoding: [0x1f,0x1e,0xfe,0x3f]
.code32
jnei %d14, %d1, 32764

# CHECK-INST: jnei %d14, %d1, 32766
# CHECK: encoding: [0x1f,0x1e,0xff,0x3f]
.code32
jnei %d14, %d1, 32766

# CHECK-INST: jnei %d14, %d14, -32768
# CHECK: encoding: [0x1f,0xee,0x00,0x40]
.code32
jnei %d14, %d14, -32768

# CHECK-INST: jnei %d14, %d14, -32766
# CHECK: encoding: [0x1f,0xee,0x01,0x40]
.code32
jnei %d14, %d14, -32766

# CHECK-INST: jnei %d14, %d14, -4
# CHECK: encoding: [0x1f,0xee,0xfe,0x7f]
.code32
jnei %d14, %d14, -4

# CHECK-INST: jnei %d14, %d14, -2
# CHECK: encoding: [0x1f,0xee,0xff,0x7f]
.code32
jnei %d14, %d14, -2

# CHECK-INST: jnei %d14, %d14, 0
# CHECK: encoding: [0x1f,0xee,0x00,0x00]
.code32
jnei %d14, %d14, 0

# CHECK-INST: jnei %d14, %d14, 2
# CHECK: encoding: [0x1f,0xee,0x01,0x00]
.code32
jnei %d14, %d14, 2

# CHECK-INST: jnei %d14, %d14, 32764
# CHECK: encoding: [0x1f,0xee,0xfe,0x3f]
.code32
jnei %d14, %d14, 32764

# CHECK-INST: jnei %d14, %d14, 32766
# CHECK: encoding: [0x1f,0xee,0xff,0x3f]
.code32
jnei %d14, %d14, 32766

# CHECK-INST: jnei %d14, %d15, -32768
# CHECK: encoding: [0x1f,0xfe,0x00,0x40]
.code32
jnei %d14, %d15, -32768

# CHECK-INST: jnei %d14, %d15, -32766
# CHECK: encoding: [0x1f,0xfe,0x01,0x40]
.code32
jnei %d14, %d15, -32766

# CHECK-INST: jnei %d14, %d15, -4
# CHECK: encoding: [0x1f,0xfe,0xfe,0x7f]
.code32
jnei %d14, %d15, -4

# CHECK-INST: jnei %d14, %d15, -2
# CHECK: encoding: [0x1f,0xfe,0xff,0x7f]
.code32
jnei %d14, %d15, -2

# CHECK-INST: jnei %d14, %d15, 0
# CHECK: encoding: [0x1f,0xfe,0x00,0x00]
.code32
jnei %d14, %d15, 0

# CHECK-INST: jnei %d14, %d15, 2
# CHECK: encoding: [0x1f,0xfe,0x01,0x00]
.code32
jnei %d14, %d15, 2

# CHECK-INST: jnei %d14, %d15, 32764
# CHECK: encoding: [0x1f,0xfe,0xfe,0x3f]
.code32
jnei %d14, %d15, 32764

# CHECK-INST: jnei %d14, %d15, 32766
# CHECK: encoding: [0x1f,0xfe,0xff,0x3f]
.code32
jnei %d14, %d15, 32766

# CHECK-INST: jnei %d15, %d0, -32768
# CHECK: encoding: [0x1f,0x0f,0x00,0x40]
.code32
jnei %d15, %d0, -32768

# CHECK-INST: jnei %d15, %d0, -32766
# CHECK: encoding: [0x1f,0x0f,0x01,0x40]
.code32
jnei %d15, %d0, -32766

# CHECK-INST: jnei %d15, %d0, -4
# CHECK: encoding: [0x1f,0x0f,0xfe,0x7f]
.code32
jnei %d15, %d0, -4

# CHECK-INST: jnei %d15, %d0, -2
# CHECK: encoding: [0x1f,0x0f,0xff,0x7f]
.code32
jnei %d15, %d0, -2

# CHECK-INST: jnei %d15, %d0, 0
# CHECK: encoding: [0x1f,0x0f,0x00,0x00]
.code32
jnei %d15, %d0, 0

# CHECK-INST: jnei %d15, %d0, 2
# CHECK: encoding: [0x1f,0x0f,0x01,0x00]
.code32
jnei %d15, %d0, 2

# CHECK-INST: jnei %d15, %d0, 32764
# CHECK: encoding: [0x1f,0x0f,0xfe,0x3f]
.code32
jnei %d15, %d0, 32764

# CHECK-INST: jnei %d15, %d0, 32766
# CHECK: encoding: [0x1f,0x0f,0xff,0x3f]
.code32
jnei %d15, %d0, 32766

# CHECK-INST: jnei %d15, %d1, -32768
# CHECK: encoding: [0x1f,0x1f,0x00,0x40]
.code32
jnei %d15, %d1, -32768

# CHECK-INST: jnei %d15, %d1, -32766
# CHECK: encoding: [0x1f,0x1f,0x01,0x40]
.code32
jnei %d15, %d1, -32766

# CHECK-INST: jnei %d15, %d1, -4
# CHECK: encoding: [0x1f,0x1f,0xfe,0x7f]
.code32
jnei %d15, %d1, -4

# CHECK-INST: jnei %d15, %d1, -2
# CHECK: encoding: [0x1f,0x1f,0xff,0x7f]
.code32
jnei %d15, %d1, -2

# CHECK-INST: jnei %d15, %d1, 0
# CHECK: encoding: [0x1f,0x1f,0x00,0x00]
.code32
jnei %d15, %d1, 0

# CHECK-INST: jnei %d15, %d1, 2
# CHECK: encoding: [0x1f,0x1f,0x01,0x00]
.code32
jnei %d15, %d1, 2

# CHECK-INST: jnei %d15, %d1, 32764
# CHECK: encoding: [0x1f,0x1f,0xfe,0x3f]
.code32
jnei %d15, %d1, 32764

# CHECK-INST: jnei %d15, %d1, 32766
# CHECK: encoding: [0x1f,0x1f,0xff,0x3f]
.code32
jnei %d15, %d1, 32766

# CHECK-INST: jnei %d15, %d14, -32768
# CHECK: encoding: [0x1f,0xef,0x00,0x40]
.code32
jnei %d15, %d14, -32768

# CHECK-INST: jnei %d15, %d14, -32766
# CHECK: encoding: [0x1f,0xef,0x01,0x40]
.code32
jnei %d15, %d14, -32766

# CHECK-INST: jnei %d15, %d14, -4
# CHECK: encoding: [0x1f,0xef,0xfe,0x7f]
.code32
jnei %d15, %d14, -4

# CHECK-INST: jnei %d15, %d14, -2
# CHECK: encoding: [0x1f,0xef,0xff,0x7f]
.code32
jnei %d15, %d14, -2

# CHECK-INST: jnei %d15, %d14, 0
# CHECK: encoding: [0x1f,0xef,0x00,0x00]
.code32
jnei %d15, %d14, 0

# CHECK-INST: jnei %d15, %d14, 2
# CHECK: encoding: [0x1f,0xef,0x01,0x00]
.code32
jnei %d15, %d14, 2

# CHECK-INST: jnei %d15, %d14, 32764
# CHECK: encoding: [0x1f,0xef,0xfe,0x3f]
.code32
jnei %d15, %d14, 32764

# CHECK-INST: jnei %d15, %d14, 32766
# CHECK: encoding: [0x1f,0xef,0xff,0x3f]
.code32
jnei %d15, %d14, 32766

# CHECK-INST: jnei %d15, %d15, -32768
# CHECK: encoding: [0x1f,0xff,0x00,0x40]
.code32
jnei %d15, %d15, -32768

# CHECK-INST: jnei %d15, %d15, -32766
# CHECK: encoding: [0x1f,0xff,0x01,0x40]
.code32
jnei %d15, %d15, -32766

# CHECK-INST: jnei %d15, %d15, -4
# CHECK: encoding: [0x1f,0xff,0xfe,0x7f]
.code32
jnei %d15, %d15, -4

# CHECK-INST: jnei %d15, %d15, -2
# CHECK: encoding: [0x1f,0xff,0xff,0x7f]
.code32
jnei %d15, %d15, -2

# CHECK-INST: jnei %d15, %d15, 0
# CHECK: encoding: [0x1f,0xff,0x00,0x00]
.code32
jnei %d15, %d15, 0

# CHECK-INST: jnei %d15, %d15, 2
# CHECK: encoding: [0x1f,0xff,0x01,0x00]
.code32
jnei %d15, %d15, 2

# CHECK-INST: jnei %d15, %d15, 32764
# CHECK: encoding: [0x1f,0xff,0xfe,0x3f]
.code32
jnei %d15, %d15, 32764

# CHECK-INST: jnei %d15, %d15, 32766
# CHECK: encoding: [0x1f,0xff,0xff,0x3f]
.code32
jnei %d15, %d15, 32766


### Test if 16 bit instructions are generated by default

# CHECK-INST: loop %a0, -32
# CHECK: encoding: [0xfc,0x00]
loop %a0, -32 