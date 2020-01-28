# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s \
# RUN:     | llvm-objdump -d - | FileCheck -check-prefix=CHECK-INST %s


# CHECK-INST: mov.a %a0, %d0
# CHECK: encoding: [0x60,0x00]
.code16
mov.a %a0, %d0

# CHECK-INST: mov.a %a0, %d1
# CHECK: encoding: [0x60,0x10]
.code16
mov.a %a0, %d1

# CHECK-INST: mov.a %a0, %d14
# CHECK: encoding: [0x60,0xe0]
.code16
mov.a %a0, %d14

# CHECK-INST: mov.a %a0, %d15
# CHECK: encoding: [0x60,0xf0]
.code16
mov.a %a0, %d15

# CHECK-INST: mov.a %a1, %d0
# CHECK: encoding: [0x60,0x01]
.code16
mov.a %a1, %d0

# CHECK-INST: mov.a %a1, %d1
# CHECK: encoding: [0x60,0x11]
.code16
mov.a %a1, %d1

# CHECK-INST: mov.a %a1, %d14
# CHECK: encoding: [0x60,0xe1]
.code16
mov.a %a1, %d14

# CHECK-INST: mov.a %a1, %d15
# CHECK: encoding: [0x60,0xf1]
.code16
mov.a %a1, %d15

# CHECK-INST: mov.a %a14, %d0
# CHECK: encoding: [0x60,0x0e]
.code16
mov.a %a14, %d0

# CHECK-INST: mov.a %a14, %d1
# CHECK: encoding: [0x60,0x1e]
.code16
mov.a %a14, %d1

# CHECK-INST: mov.a %a14, %d14
# CHECK: encoding: [0x60,0xee]
.code16
mov.a %a14, %d14

# CHECK-INST: mov.a %a14, %d15
# CHECK: encoding: [0x60,0xfe]
.code16
mov.a %a14, %d15

# CHECK-INST: mov.a %a15, %d0
# CHECK: encoding: [0x60,0x0f]
.code16
mov.a %a15, %d0

# CHECK-INST: mov.a %a15, %d1
# CHECK: encoding: [0x60,0x1f]
.code16
mov.a %a15, %d1

# CHECK-INST: mov.a %a15, %d14
# CHECK: encoding: [0x60,0xef]
.code16
mov.a %a15, %d14

# CHECK-INST: mov.a %a15, %d15
# CHECK: encoding: [0x60,0xff]
.code16
mov.a %a15, %d15

# CHECK-INST: mov.a %a0, 0
# CHECK: encoding: [0xa0,0x00]
.code16
mov.a %a0, 0

# CHECK-INST: mov.a %a0, 1
# CHECK: encoding: [0xa0,0x10]
.code16
mov.a %a0, 1

# CHECK-INST: mov.a %a0, 14
# CHECK: encoding: [0xa0,0xe0]
.code16
mov.a %a0, 14

# CHECK-INST: mov.a %a0, 15
# CHECK: encoding: [0xa0,0xf0]
.code16
mov.a %a0, 15

# CHECK-INST: mov.a %a1, 0
# CHECK: encoding: [0xa0,0x01]
.code16
mov.a %a1, 0

# CHECK-INST: mov.a %a1, 1
# CHECK: encoding: [0xa0,0x11]
.code16
mov.a %a1, 1

# CHECK-INST: mov.a %a1, 14
# CHECK: encoding: [0xa0,0xe1]
.code16
mov.a %a1, 14

# CHECK-INST: mov.a %a1, 15
# CHECK: encoding: [0xa0,0xf1]
.code16
mov.a %a1, 15

# CHECK-INST: mov.a %a14, 0
# CHECK: encoding: [0xa0,0x0e]
.code16
mov.a %a14, 0

# CHECK-INST: mov.a %a14, 1
# CHECK: encoding: [0xa0,0x1e]
.code16
mov.a %a14, 1

# CHECK-INST: mov.a %a14, 14
# CHECK: encoding: [0xa0,0xee]
.code16
mov.a %a14, 14

# CHECK-INST: mov.a %a14, 15
# CHECK: encoding: [0xa0,0xfe]
.code16
mov.a %a14, 15

# CHECK-INST: mov.a %a15, 0
# CHECK: encoding: [0xa0,0x0f]
.code16
mov.a %a15, 0

# CHECK-INST: mov.a %a15, 1
# CHECK: encoding: [0xa0,0x1f]
.code16
mov.a %a15, 1

# CHECK-INST: mov.a %a15, 14
# CHECK: encoding: [0xa0,0xef]
.code16
mov.a %a15, 14

# CHECK-INST: mov.a %a15, 15
# CHECK: encoding: [0xa0,0xff]
.code16
mov.a %a15, 15
 
# CHECK-INST: mov.a %a0, %d0
# CHECK: encoding: [0x01,0x00,0x30,0x06]
.code32
mov.a %a0, %d0

# CHECK-INST: mov.a %a0, %d1
# CHECK: encoding: [0x01,0x10,0x30,0x06]
.code32
mov.a %a0, %d1

# CHECK-INST: mov.a %a0, %d14
# CHECK: encoding: [0x01,0xe0,0x30,0x06]
.code32
mov.a %a0, %d14

# CHECK-INST: mov.a %a0, %d15
# CHECK: encoding: [0x01,0xf0,0x30,0x06]
.code32
mov.a %a0, %d15

# CHECK-INST: mov.a %a1, %d0
# CHECK: encoding: [0x01,0x00,0x30,0x16]
.code32
mov.a %a1, %d0

# CHECK-INST: mov.a %a1, %d1
# CHECK: encoding: [0x01,0x10,0x30,0x16]
.code32
mov.a %a1, %d1

# CHECK-INST: mov.a %a1, %d14
# CHECK: encoding: [0x01,0xe0,0x30,0x16]
.code32
mov.a %a1, %d14

# CHECK-INST: mov.a %a1, %d15
# CHECK: encoding: [0x01,0xf0,0x30,0x16]
.code32
mov.a %a1, %d15

# CHECK-INST: mov.a %a14, %d0
# CHECK: encoding: [0x01,0x00,0x30,0xe6]
.code32
mov.a %a14, %d0

# CHECK-INST: mov.a %a14, %d1
# CHECK: encoding: [0x01,0x10,0x30,0xe6]
.code32
mov.a %a14, %d1

# CHECK-INST: mov.a %a14, %d14
# CHECK: encoding: [0x01,0xe0,0x30,0xe6]
.code32
mov.a %a14, %d14

# CHECK-INST: mov.a %a14, %d15
# CHECK: encoding: [0x01,0xf0,0x30,0xe6]
.code32
mov.a %a14, %d15

# CHECK-INST: mov.a %a15, %d0
# CHECK: encoding: [0x01,0x00,0x30,0xf6]
.code32
mov.a %a15, %d0

# CHECK-INST: mov.a %a15, %d1
# CHECK: encoding: [0x01,0x10,0x30,0xf6]
.code32
mov.a %a15, %d1

# CHECK-INST: mov.a %a15, %d14
# CHECK: encoding: [0x01,0xe0,0x30,0xf6]
.code32
mov.a %a15, %d14

# CHECK-INST: mov.a %a15, %d15
# CHECK: encoding: [0x01,0xf0,0x30,0xf6]
.code32
mov.a %a15, %d15


# CHECK-INST: mov.aa %a0, %a0
# CHECK: encoding: [0x40,0x00]
.code16
mov.aa %a0, %a0

# CHECK-INST: mov.aa %a0, %a1
# CHECK: encoding: [0x40,0x10]
.code16
mov.aa %a0, %a1

# CHECK-INST: mov.aa %a0, %a14
# CHECK: encoding: [0x40,0xe0]
.code16
mov.aa %a0, %a14

# CHECK-INST: mov.aa %a0, %a15
# CHECK: encoding: [0x40,0xf0]
.code16
mov.aa %a0, %a15

# CHECK-INST: mov.aa %a1, %a0
# CHECK: encoding: [0x40,0x01]
.code16
mov.aa %a1, %a0

# CHECK-INST: mov.aa %a1, %a1
# CHECK: encoding: [0x40,0x11]
.code16
mov.aa %a1, %a1

# CHECK-INST: mov.aa %a1, %a14
# CHECK: encoding: [0x40,0xe1]
.code16
mov.aa %a1, %a14

# CHECK-INST: mov.aa %a1, %a15
# CHECK: encoding: [0x40,0xf1]
.code16
mov.aa %a1, %a15

# CHECK-INST: mov.aa %a14, %a0
# CHECK: encoding: [0x40,0x0e]
.code16
mov.aa %a14, %a0

# CHECK-INST: mov.aa %a14, %a1
# CHECK: encoding: [0x40,0x1e]
.code16
mov.aa %a14, %a1

# CHECK-INST: mov.aa %a14, %a14
# CHECK: encoding: [0x40,0xee]
.code16
mov.aa %a14, %a14

# CHECK-INST: mov.aa %a14, %a15
# CHECK: encoding: [0x40,0xfe]
.code16
mov.aa %a14, %a15

# CHECK-INST: mov.aa %a15, %a0
# CHECK: encoding: [0x40,0x0f]
.code16
mov.aa %a15, %a0

# CHECK-INST: mov.aa %a15, %a1
# CHECK: encoding: [0x40,0x1f]
.code16
mov.aa %a15, %a1

# CHECK-INST: mov.aa %a15, %a14
# CHECK: encoding: [0x40,0xef]
.code16
mov.aa %a15, %a14

# CHECK-INST: mov.aa %a15, %a15
# CHECK: encoding: [0x40,0xff]
.code16
mov.aa %a15, %a15
 
# CHECK-INST: mov.aa %a0, %a0
# CHECK: encoding: [0x01,0x00,0x00,0x00]
.code32
mov.aa %a0, %a0

# CHECK-INST: mov.aa %a0, %a1
# CHECK: encoding: [0x01,0x10,0x00,0x00]
.code32
mov.aa %a0, %a1

# CHECK-INST: mov.aa %a0, %a14
# CHECK: encoding: [0x01,0xe0,0x00,0x00]
.code32
mov.aa %a0, %a14

# CHECK-INST: mov.aa %a0, %a15
# CHECK: encoding: [0x01,0xf0,0x00,0x00]
.code32
mov.aa %a0, %a15

# CHECK-INST: mov.aa %a1, %a0
# CHECK: encoding: [0x01,0x00,0x00,0x10]
.code32
mov.aa %a1, %a0

# CHECK-INST: mov.aa %a1, %a1
# CHECK: encoding: [0x01,0x10,0x00,0x10]
.code32
mov.aa %a1, %a1

# CHECK-INST: mov.aa %a1, %a14
# CHECK: encoding: [0x01,0xe0,0x00,0x10]
.code32
mov.aa %a1, %a14

# CHECK-INST: mov.aa %a1, %a15
# CHECK: encoding: [0x01,0xf0,0x00,0x10]
.code32
mov.aa %a1, %a15

# CHECK-INST: mov.aa %a14, %a0
# CHECK: encoding: [0x01,0x00,0x00,0xe0]
.code32
mov.aa %a14, %a0

# CHECK-INST: mov.aa %a14, %a1
# CHECK: encoding: [0x01,0x10,0x00,0xe0]
.code32
mov.aa %a14, %a1

# CHECK-INST: mov.aa %a14, %a14
# CHECK: encoding: [0x01,0xe0,0x00,0xe0]
.code32
mov.aa %a14, %a14

# CHECK-INST: mov.aa %a14, %a15
# CHECK: encoding: [0x01,0xf0,0x00,0xe0]
.code32
mov.aa %a14, %a15

# CHECK-INST: mov.aa %a15, %a0
# CHECK: encoding: [0x01,0x00,0x00,0xf0]
.code32
mov.aa %a15, %a0

# CHECK-INST: mov.aa %a15, %a1
# CHECK: encoding: [0x01,0x10,0x00,0xf0]
.code32
mov.aa %a15, %a1

# CHECK-INST: mov.aa %a15, %a14
# CHECK: encoding: [0x01,0xe0,0x00,0xf0]
.code32
mov.aa %a15, %a14

# CHECK-INST: mov.aa %a15, %a15
# CHECK: encoding: [0x01,0xf0,0x00,0xf0]
.code32
mov.aa %a15, %a15
 
# CHECK-INST: mov.d %d0, %a0
# CHECK: encoding: [0x80,0x00]
.code16
mov.d %d0, %a0

# CHECK-INST: mov.d %d0, %a1
# CHECK: encoding: [0x80,0x10]
.code16
mov.d %d0, %a1

# CHECK-INST: mov.d %d0, %a14
# CHECK: encoding: [0x80,0xe0]
.code16
mov.d %d0, %a14

# CHECK-INST: mov.d %d0, %a15
# CHECK: encoding: [0x80,0xf0]
.code16
mov.d %d0, %a15

# CHECK-INST: mov.d %d1, %a0
# CHECK: encoding: [0x80,0x01]
.code16
mov.d %d1, %a0

# CHECK-INST: mov.d %d1, %a1
# CHECK: encoding: [0x80,0x11]
.code16
mov.d %d1, %a1

# CHECK-INST: mov.d %d1, %a14
# CHECK: encoding: [0x80,0xe1]
.code16
mov.d %d1, %a14

# CHECK-INST: mov.d %d1, %a15
# CHECK: encoding: [0x80,0xf1]
.code16
mov.d %d1, %a15

# CHECK-INST: mov.d %d14, %a0
# CHECK: encoding: [0x80,0x0e]
.code16
mov.d %d14, %a0

# CHECK-INST: mov.d %d14, %a1
# CHECK: encoding: [0x80,0x1e]
.code16
mov.d %d14, %a1

# CHECK-INST: mov.d %d14, %a14
# CHECK: encoding: [0x80,0xee]
.code16
mov.d %d14, %a14

# CHECK-INST: mov.d %d14, %a15
# CHECK: encoding: [0x80,0xfe]
.code16
mov.d %d14, %a15

# CHECK-INST: mov.d %d15, %a0
# CHECK: encoding: [0x80,0x0f]
.code16
mov.d %d15, %a0

# CHECK-INST: mov.d %d15, %a1
# CHECK: encoding: [0x80,0x1f]
.code16
mov.d %d15, %a1

# CHECK-INST: mov.d %d15, %a14
# CHECK: encoding: [0x80,0xef]
.code16
mov.d %d15, %a14

# CHECK-INST: mov.d %d15, %a15
# CHECK: encoding: [0x80,0xff]
.code16
mov.d %d15, %a15

# CHECK-INST: mov.d %d0, %a0
# CHECK: encoding: [0x01,0x00,0xc0,0x04]
.code32
mov.d %d0, %a0

# CHECK-INST: mov.d %d0, %a1
# CHECK: encoding: [0x01,0x10,0xc0,0x04]
.code32
mov.d %d0, %a1

# CHECK-INST: mov.d %d0, %a14
# CHECK: encoding: [0x01,0xe0,0xc0,0x04]
.code32
mov.d %d0, %a14

# CHECK-INST: mov.d %d0, %a15
# CHECK: encoding: [0x01,0xf0,0xc0,0x04]
.code32
mov.d %d0, %a15

# CHECK-INST: mov.d %d1, %a0
# CHECK: encoding: [0x01,0x00,0xc0,0x14]
.code32
mov.d %d1, %a0

# CHECK-INST: mov.d %d1, %a1
# CHECK: encoding: [0x01,0x10,0xc0,0x14]
.code32
mov.d %d1, %a1

# CHECK-INST: mov.d %d1, %a14
# CHECK: encoding: [0x01,0xe0,0xc0,0x14]
.code32
mov.d %d1, %a14

# CHECK-INST: mov.d %d1, %a15
# CHECK: encoding: [0x01,0xf0,0xc0,0x14]
.code32
mov.d %d1, %a15

# CHECK-INST: mov.d %d14, %a0
# CHECK: encoding: [0x01,0x00,0xc0,0xe4]
.code32
mov.d %d14, %a0

# CHECK-INST: mov.d %d14, %a1
# CHECK: encoding: [0x01,0x10,0xc0,0xe4]
.code32
mov.d %d14, %a1

# CHECK-INST: mov.d %d14, %a14
# CHECK: encoding: [0x01,0xe0,0xc0,0xe4]
.code32
mov.d %d14, %a14

# CHECK-INST: mov.d %d14, %a15
# CHECK: encoding: [0x01,0xf0,0xc0,0xe4]
.code32
mov.d %d14, %a15

# CHECK-INST: mov.d %d15, %a0
# CHECK: encoding: [0x01,0x00,0xc0,0xf4]
.code32
mov.d %d15, %a0

# CHECK-INST: mov.d %d15, %a1
# CHECK: encoding: [0x01,0x10,0xc0,0xf4]
.code32
mov.d %d15, %a1

# CHECK-INST: mov.d %d15, %a14
# CHECK: encoding: [0x01,0xe0,0xc0,0xf4]
.code32
mov.d %d15, %a14

# CHECK-INST: mov.d %d15, %a15
# CHECK: encoding: [0x01,0xf0,0xc0,0xf4]
.code32
mov.d %d15, %a15
 
# CHECK-INST: movh.a %a0, 0
# CHECK: encoding: [0x91,0x00,0x00,0x00]
.code32
movh.a %a0, 0

# CHECK-INST: movh.a %a0, 1
# CHECK: encoding: [0x91,0x10,0x00,0x00]
.code32
movh.a %a0, 1

# CHECK-INST: movh.a %a0, 32767
# CHECK: encoding: [0x91,0xf0,0xff,0x07]
.code32
movh.a %a0, 32767

# CHECK-INST: movh.a %a0, 32768
# CHECK: encoding: [0x91,0x00,0x00,0x08]
.code32
movh.a %a0, 32768

# CHECK-INST: movh.a %a0, 65534
# CHECK: encoding: [0x91,0xe0,0xff,0x0f]
.code32
movh.a %a0, 65534

# CHECK-INST: movh.a %a0, 65535
# CHECK: encoding: [0x91,0xf0,0xff,0x0f]
.code32
movh.a %a0, 65535

# CHECK-INST: movh.a %a1, 0
# CHECK: encoding: [0x91,0x00,0x00,0x10]
.code32
movh.a %a1, 0

# CHECK-INST: movh.a %a1, 1
# CHECK: encoding: [0x91,0x10,0x00,0x10]
.code32
movh.a %a1, 1

# CHECK-INST: movh.a %a1, 32767
# CHECK: encoding: [0x91,0xf0,0xff,0x17]
.code32
movh.a %a1, 32767

# CHECK-INST: movh.a %a1, 32768
# CHECK: encoding: [0x91,0x00,0x00,0x18]
.code32
movh.a %a1, 32768

# CHECK-INST: movh.a %a1, 65534
# CHECK: encoding: [0x91,0xe0,0xff,0x1f]
.code32
movh.a %a1, 65534

# CHECK-INST: movh.a %a1, 65535
# CHECK: encoding: [0x91,0xf0,0xff,0x1f]
.code32
movh.a %a1, 65535

# CHECK-INST: movh.a %a14, 0
# CHECK: encoding: [0x91,0x00,0x00,0xe0]
.code32
movh.a %a14, 0

# CHECK-INST: movh.a %a14, 1
# CHECK: encoding: [0x91,0x10,0x00,0xe0]
.code32
movh.a %a14, 1

# CHECK-INST: movh.a %a14, 32767
# CHECK: encoding: [0x91,0xf0,0xff,0xe7]
.code32
movh.a %a14, 32767

# CHECK-INST: movh.a %a14, 32768
# CHECK: encoding: [0x91,0x00,0x00,0xe8]
.code32
movh.a %a14, 32768

# CHECK-INST: movh.a %a14, 65534
# CHECK: encoding: [0x91,0xe0,0xff,0xef]
.code32
movh.a %a14, 65534

# CHECK-INST: movh.a %a14, 65535
# CHECK: encoding: [0x91,0xf0,0xff,0xef]
.code32
movh.a %a14, 65535

# CHECK-INST: movh.a %a15, 0
# CHECK: encoding: [0x91,0x00,0x00,0xf0]
.code32
movh.a %a15, 0

# CHECK-INST: movh.a %a15, 1
# CHECK: encoding: [0x91,0x10,0x00,0xf0]
.code32
movh.a %a15, 1

# CHECK-INST: movh.a %a15, 32767
# CHECK: encoding: [0x91,0xf0,0xff,0xf7]
.code32
movh.a %a15, 32767

# CHECK-INST: movh.a %a15, 32768
# CHECK: encoding: [0x91,0x00,0x00,0xf8]
.code32
movh.a %a15, 32768

# CHECK-INST: movh.a %a15, 65534
# CHECK: encoding: [0x91,0xe0,0xff,0xff]
.code32
movh.a %a15, 65534

# CHECK-INST: movh.a %a15, 65535
# CHECK: encoding: [0x91,0xf0,0xff,0xff]
.code32
movh.a %a15, 65535

# CHECK-INST: movh.a %a15, 65028
# CHECK: encoding: [0x91,0x40,0xe0,0xff]
.code32
movh.a %a15, $psw

### Test if 16 bit instructions are generated by default

# CHECK-INST: mov.a %a0, %d0
# CHECK: encoding: [0x60,0x00]
mov.a %a0, %d0

# CHECK-INST: mov.a %a0, 0
# CHECK: encoding: [0xa0,0x00]
mov.a %a0, 0

# CHECK-INST: mov.aa %a0, %a0
# CHECK: encoding: [0x40,0x00]
mov.aa %a0, %a0

# CHECK-INST: mov.d %d0, %a0
# CHECK: encoding: [0x80,0x00]
mov.d %d0, %a0
