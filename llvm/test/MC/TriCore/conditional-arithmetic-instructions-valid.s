# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s | llvm-objdump -d - \
# RUN:     | FileCheck -check-prefixes=CHECK-INST %s


# CHECK-INST: cadd %d0, %d15, -8
# CHECK: encoding: [0x8a,0x80]
.code16
cadd %d0, %d15, -8

# CHECK-INST: cadd %d0, %d15, -1
# CHECK: encoding: [0x8a,0xf0]
.code16
cadd %d0, %d15, -1

# CHECK-INST: cadd %d0, %d15, 0
# CHECK: encoding: [0x8a,0x00]
.code16
cadd %d0, %d15, 0

# CHECK-INST: cadd %d0, %d15, 1
# CHECK: encoding: [0x8a,0x10]
.code16
cadd %d0, %d15, 1

# CHECK-INST: cadd %d0, %d15, 7
# CHECK: encoding: [0x8a,0x70]
.code16
cadd %d0, %d15, 7

# CHECK-INST: cadd %d1, %d15, -8
# CHECK: encoding: [0x8a,0x81]
.code16
cadd %d1, %d15, -8

# CHECK-INST: cadd %d1, %d15, -1
# CHECK: encoding: [0x8a,0xf1]
.code16
cadd %d1, %d15, -1

# CHECK-INST: cadd %d1, %d15, 0
# CHECK: encoding: [0x8a,0x01]
.code16
cadd %d1, %d15, 0

# CHECK-INST: cadd %d1, %d15, 1
# CHECK: encoding: [0x8a,0x11]
.code16
cadd %d1, %d15, 1

# CHECK-INST: cadd %d1, %d15, 7
# CHECK: encoding: [0x8a,0x71]
.code16
cadd %d1, %d15, 7

# CHECK-INST: cadd %d14, %d15, -8
# CHECK: encoding: [0x8a,0x8e]
.code16
cadd %d14, %d15, -8

# CHECK-INST: cadd %d14, %d15, -1
# CHECK: encoding: [0x8a,0xfe]
.code16
cadd %d14, %d15, -1

# CHECK-INST: cadd %d14, %d15, 0
# CHECK: encoding: [0x8a,0x0e]
.code16
cadd %d14, %d15, 0

# CHECK-INST: cadd %d14, %d15, 1
# CHECK: encoding: [0x8a,0x1e]
.code16
cadd %d14, %d15, 1

# CHECK-INST: cadd %d14, %d15, 7
# CHECK: encoding: [0x8a,0x7e]
.code16
cadd %d14, %d15, 7

# CHECK-INST: cadd %d15, %d15, -8
# CHECK: encoding: [0x8a,0x8f]
.code16
cadd %d15, %d15, -8

# CHECK-INST: cadd %d15, %d15, -1
# CHECK: encoding: [0x8a,0xff]
.code16
cadd %d15, %d15, -1

# CHECK-INST: cadd %d15, %d15, 0
# CHECK: encoding: [0x8a,0x0f]
.code16
cadd %d15, %d15, 0

# CHECK-INST: cadd %d15, %d15, 1
# CHECK: encoding: [0x8a,0x1f]
.code16
cadd %d15, %d15, 1

# CHECK-INST: cadd %d15, %d15, 7
# CHECK: encoding: [0x8a,0x7f]
.code16
cadd %d15, %d15, 7

# CHECK-INST: cadd %d0, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0x00]
.code32
cadd %d0, %d0, %d0, %d0

# CHECK-INST: cadd %d0, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0x00]
.code32
cadd %d0, %d0, %d0, %d1

# CHECK-INST: cadd %d0, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0x00]
.code32
cadd %d0, %d0, %d0, %d14

# CHECK-INST: cadd %d0, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0x00]
.code32
cadd %d0, %d0, %d0, %d15

# CHECK-INST: cadd %d0, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0x00]
.code32
cadd %d0, %d0, %d1, %d0

# CHECK-INST: cadd %d0, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0x00]
.code32
cadd %d0, %d0, %d1, %d1

# CHECK-INST: cadd %d0, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0x00]
.code32
cadd %d0, %d0, %d1, %d14

# CHECK-INST: cadd %d0, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0x00]
.code32
cadd %d0, %d0, %d1, %d15

# CHECK-INST: cadd %d0, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0x00]
.code32
cadd %d0, %d0, %d14, %d0

# CHECK-INST: cadd %d0, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0x00]
.code32
cadd %d0, %d0, %d14, %d1

# CHECK-INST: cadd %d0, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0x00]
.code32
cadd %d0, %d0, %d14, %d14

# CHECK-INST: cadd %d0, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0x00]
.code32
cadd %d0, %d0, %d14, %d15

# CHECK-INST: cadd %d0, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0x00]
.code32
cadd %d0, %d0, %d15, %d0

# CHECK-INST: cadd %d0, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0x00]
.code32
cadd %d0, %d0, %d15, %d1

# CHECK-INST: cadd %d0, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0x00]
.code32
cadd %d0, %d0, %d15, %d14

# CHECK-INST: cadd %d0, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0x00]
.code32
cadd %d0, %d0, %d15, %d15

# CHECK-INST: cadd %d0, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0x01]
.code32
cadd %d0, %d1, %d0, %d0

# CHECK-INST: cadd %d0, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0x01]
.code32
cadd %d0, %d1, %d0, %d1

# CHECK-INST: cadd %d0, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0x01]
.code32
cadd %d0, %d1, %d0, %d14

# CHECK-INST: cadd %d0, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0x01]
.code32
cadd %d0, %d1, %d0, %d15

# CHECK-INST: cadd %d0, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0x01]
.code32
cadd %d0, %d1, %d1, %d0

# CHECK-INST: cadd %d0, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0x01]
.code32
cadd %d0, %d1, %d1, %d1

# CHECK-INST: cadd %d0, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0x01]
.code32
cadd %d0, %d1, %d1, %d14

# CHECK-INST: cadd %d0, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0x01]
.code32
cadd %d0, %d1, %d1, %d15

# CHECK-INST: cadd %d0, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0x01]
.code32
cadd %d0, %d1, %d14, %d0

# CHECK-INST: cadd %d0, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0x01]
.code32
cadd %d0, %d1, %d14, %d1

# CHECK-INST: cadd %d0, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0x01]
.code32
cadd %d0, %d1, %d14, %d14

# CHECK-INST: cadd %d0, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0x01]
.code32
cadd %d0, %d1, %d14, %d15

# CHECK-INST: cadd %d0, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0x01]
.code32
cadd %d0, %d1, %d15, %d0

# CHECK-INST: cadd %d0, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0x01]
.code32
cadd %d0, %d1, %d15, %d1

# CHECK-INST: cadd %d0, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0x01]
.code32
cadd %d0, %d1, %d15, %d14

# CHECK-INST: cadd %d0, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0x01]
.code32
cadd %d0, %d1, %d15, %d15

# CHECK-INST: cadd %d0, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0x0e]
.code32
cadd %d0, %d14, %d0, %d0

# CHECK-INST: cadd %d0, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0x0e]
.code32
cadd %d0, %d14, %d0, %d1

# CHECK-INST: cadd %d0, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0x0e]
.code32
cadd %d0, %d14, %d0, %d14

# CHECK-INST: cadd %d0, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0x0e]
.code32
cadd %d0, %d14, %d0, %d15

# CHECK-INST: cadd %d0, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0x0e]
.code32
cadd %d0, %d14, %d1, %d0

# CHECK-INST: cadd %d0, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0x0e]
.code32
cadd %d0, %d14, %d1, %d1

# CHECK-INST: cadd %d0, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0x0e]
.code32
cadd %d0, %d14, %d1, %d14

# CHECK-INST: cadd %d0, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0x0e]
.code32
cadd %d0, %d14, %d1, %d15

# CHECK-INST: cadd %d0, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0x0e]
.code32
cadd %d0, %d14, %d14, %d0

# CHECK-INST: cadd %d0, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0x0e]
.code32
cadd %d0, %d14, %d14, %d1

# CHECK-INST: cadd %d0, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0x0e]
.code32
cadd %d0, %d14, %d14, %d14

# CHECK-INST: cadd %d0, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0x0e]
.code32
cadd %d0, %d14, %d14, %d15

# CHECK-INST: cadd %d0, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0x0e]
.code32
cadd %d0, %d14, %d15, %d0

# CHECK-INST: cadd %d0, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0x0e]
.code32
cadd %d0, %d14, %d15, %d1

# CHECK-INST: cadd %d0, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0x0e]
.code32
cadd %d0, %d14, %d15, %d14

# CHECK-INST: cadd %d0, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0x0e]
.code32
cadd %d0, %d14, %d15, %d15

# CHECK-INST: cadd %d0, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0x0f]
.code32
cadd %d0, %d15, %d0, %d0

# CHECK-INST: cadd %d0, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0x0f]
.code32
cadd %d0, %d15, %d0, %d1

# CHECK-INST: cadd %d0, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0x0f]
.code32
cadd %d0, %d15, %d0, %d14

# CHECK-INST: cadd %d0, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0x0f]
.code32
cadd %d0, %d15, %d0, %d15

# CHECK-INST: cadd %d0, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0x0f]
.code32
cadd %d0, %d15, %d1, %d0

# CHECK-INST: cadd %d0, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0x0f]
.code32
cadd %d0, %d15, %d1, %d1

# CHECK-INST: cadd %d0, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0x0f]
.code32
cadd %d0, %d15, %d1, %d14

# CHECK-INST: cadd %d0, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0x0f]
.code32
cadd %d0, %d15, %d1, %d15

# CHECK-INST: cadd %d0, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0x0f]
.code32
cadd %d0, %d15, %d14, %d0

# CHECK-INST: cadd %d0, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0x0f]
.code32
cadd %d0, %d15, %d14, %d1

# CHECK-INST: cadd %d0, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0x0f]
.code32
cadd %d0, %d15, %d14, %d14

# CHECK-INST: cadd %d0, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0x0f]
.code32
cadd %d0, %d15, %d14, %d15

# CHECK-INST: cadd %d0, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0x0f]
.code32
cadd %d0, %d15, %d15, %d0

# CHECK-INST: cadd %d0, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0x0f]
.code32
cadd %d0, %d15, %d15, %d1

# CHECK-INST: cadd %d0, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0x0f]
.code32
cadd %d0, %d15, %d15, %d14

# CHECK-INST: cadd %d0, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0x0f]
.code32
cadd %d0, %d15, %d15, %d15

# CHECK-INST: cadd %d1, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0x10]
.code32
cadd %d1, %d0, %d0, %d0

# CHECK-INST: cadd %d1, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0x10]
.code32
cadd %d1, %d0, %d0, %d1

# CHECK-INST: cadd %d1, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0x10]
.code32
cadd %d1, %d0, %d0, %d14

# CHECK-INST: cadd %d1, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0x10]
.code32
cadd %d1, %d0, %d0, %d15

# CHECK-INST: cadd %d1, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0x10]
.code32
cadd %d1, %d0, %d1, %d0

# CHECK-INST: cadd %d1, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0x10]
.code32
cadd %d1, %d0, %d1, %d1

# CHECK-INST: cadd %d1, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0x10]
.code32
cadd %d1, %d0, %d1, %d14

# CHECK-INST: cadd %d1, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0x10]
.code32
cadd %d1, %d0, %d1, %d15

# CHECK-INST: cadd %d1, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0x10]
.code32
cadd %d1, %d0, %d14, %d0

# CHECK-INST: cadd %d1, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0x10]
.code32
cadd %d1, %d0, %d14, %d1

# CHECK-INST: cadd %d1, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0x10]
.code32
cadd %d1, %d0, %d14, %d14

# CHECK-INST: cadd %d1, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0x10]
.code32
cadd %d1, %d0, %d14, %d15

# CHECK-INST: cadd %d1, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0x10]
.code32
cadd %d1, %d0, %d15, %d0

# CHECK-INST: cadd %d1, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0x10]
.code32
cadd %d1, %d0, %d15, %d1

# CHECK-INST: cadd %d1, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0x10]
.code32
cadd %d1, %d0, %d15, %d14

# CHECK-INST: cadd %d1, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0x10]
.code32
cadd %d1, %d0, %d15, %d15

# CHECK-INST: cadd %d1, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0x11]
.code32
cadd %d1, %d1, %d0, %d0

# CHECK-INST: cadd %d1, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0x11]
.code32
cadd %d1, %d1, %d0, %d1

# CHECK-INST: cadd %d1, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0x11]
.code32
cadd %d1, %d1, %d0, %d14

# CHECK-INST: cadd %d1, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0x11]
.code32
cadd %d1, %d1, %d0, %d15

# CHECK-INST: cadd %d1, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0x11]
.code32
cadd %d1, %d1, %d1, %d0

# CHECK-INST: cadd %d1, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0x11]
.code32
cadd %d1, %d1, %d1, %d1

# CHECK-INST: cadd %d1, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0x11]
.code32
cadd %d1, %d1, %d1, %d14

# CHECK-INST: cadd %d1, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0x11]
.code32
cadd %d1, %d1, %d1, %d15

# CHECK-INST: cadd %d1, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0x11]
.code32
cadd %d1, %d1, %d14, %d0

# CHECK-INST: cadd %d1, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0x11]
.code32
cadd %d1, %d1, %d14, %d1

# CHECK-INST: cadd %d1, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0x11]
.code32
cadd %d1, %d1, %d14, %d14

# CHECK-INST: cadd %d1, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0x11]
.code32
cadd %d1, %d1, %d14, %d15

# CHECK-INST: cadd %d1, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0x11]
.code32
cadd %d1, %d1, %d15, %d0

# CHECK-INST: cadd %d1, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0x11]
.code32
cadd %d1, %d1, %d15, %d1

# CHECK-INST: cadd %d1, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0x11]
.code32
cadd %d1, %d1, %d15, %d14

# CHECK-INST: cadd %d1, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0x11]
.code32
cadd %d1, %d1, %d15, %d15

# CHECK-INST: cadd %d1, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0x1e]
.code32
cadd %d1, %d14, %d0, %d0

# CHECK-INST: cadd %d1, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0x1e]
.code32
cadd %d1, %d14, %d0, %d1

# CHECK-INST: cadd %d1, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0x1e]
.code32
cadd %d1, %d14, %d0, %d14

# CHECK-INST: cadd %d1, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0x1e]
.code32
cadd %d1, %d14, %d0, %d15

# CHECK-INST: cadd %d1, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0x1e]
.code32
cadd %d1, %d14, %d1, %d0

# CHECK-INST: cadd %d1, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0x1e]
.code32
cadd %d1, %d14, %d1, %d1

# CHECK-INST: cadd %d1, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0x1e]
.code32
cadd %d1, %d14, %d1, %d14

# CHECK-INST: cadd %d1, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0x1e]
.code32
cadd %d1, %d14, %d1, %d15

# CHECK-INST: cadd %d1, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0x1e]
.code32
cadd %d1, %d14, %d14, %d0

# CHECK-INST: cadd %d1, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0x1e]
.code32
cadd %d1, %d14, %d14, %d1

# CHECK-INST: cadd %d1, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0x1e]
.code32
cadd %d1, %d14, %d14, %d14

# CHECK-INST: cadd %d1, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0x1e]
.code32
cadd %d1, %d14, %d14, %d15

# CHECK-INST: cadd %d1, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0x1e]
.code32
cadd %d1, %d14, %d15, %d0

# CHECK-INST: cadd %d1, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0x1e]
.code32
cadd %d1, %d14, %d15, %d1

# CHECK-INST: cadd %d1, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0x1e]
.code32
cadd %d1, %d14, %d15, %d14

# CHECK-INST: cadd %d1, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0x1e]
.code32
cadd %d1, %d14, %d15, %d15

# CHECK-INST: cadd %d1, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0x1f]
.code32
cadd %d1, %d15, %d0, %d0

# CHECK-INST: cadd %d1, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0x1f]
.code32
cadd %d1, %d15, %d0, %d1

# CHECK-INST: cadd %d1, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0x1f]
.code32
cadd %d1, %d15, %d0, %d14

# CHECK-INST: cadd %d1, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0x1f]
.code32
cadd %d1, %d15, %d0, %d15

# CHECK-INST: cadd %d1, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0x1f]
.code32
cadd %d1, %d15, %d1, %d0

# CHECK-INST: cadd %d1, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0x1f]
.code32
cadd %d1, %d15, %d1, %d1

# CHECK-INST: cadd %d1, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0x1f]
.code32
cadd %d1, %d15, %d1, %d14

# CHECK-INST: cadd %d1, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0x1f]
.code32
cadd %d1, %d15, %d1, %d15

# CHECK-INST: cadd %d1, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0x1f]
.code32
cadd %d1, %d15, %d14, %d0

# CHECK-INST: cadd %d1, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0x1f]
.code32
cadd %d1, %d15, %d14, %d1

# CHECK-INST: cadd %d1, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0x1f]
.code32
cadd %d1, %d15, %d14, %d14

# CHECK-INST: cadd %d1, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0x1f]
.code32
cadd %d1, %d15, %d14, %d15

# CHECK-INST: cadd %d1, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0x1f]
.code32
cadd %d1, %d15, %d15, %d0

# CHECK-INST: cadd %d1, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0x1f]
.code32
cadd %d1, %d15, %d15, %d1

# CHECK-INST: cadd %d1, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0x1f]
.code32
cadd %d1, %d15, %d15, %d14

# CHECK-INST: cadd %d1, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0x1f]
.code32
cadd %d1, %d15, %d15, %d15

# CHECK-INST: cadd %d14, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0xe0]
.code32
cadd %d14, %d0, %d0, %d0

# CHECK-INST: cadd %d14, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0xe0]
.code32
cadd %d14, %d0, %d0, %d1

# CHECK-INST: cadd %d14, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0xe0]
.code32
cadd %d14, %d0, %d0, %d14

# CHECK-INST: cadd %d14, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0xe0]
.code32
cadd %d14, %d0, %d0, %d15

# CHECK-INST: cadd %d14, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0xe0]
.code32
cadd %d14, %d0, %d1, %d0

# CHECK-INST: cadd %d14, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0xe0]
.code32
cadd %d14, %d0, %d1, %d1

# CHECK-INST: cadd %d14, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0xe0]
.code32
cadd %d14, %d0, %d1, %d14

# CHECK-INST: cadd %d14, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0xe0]
.code32
cadd %d14, %d0, %d1, %d15

# CHECK-INST: cadd %d14, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0xe0]
.code32
cadd %d14, %d0, %d14, %d0

# CHECK-INST: cadd %d14, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0xe0]
.code32
cadd %d14, %d0, %d14, %d1

# CHECK-INST: cadd %d14, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0xe0]
.code32
cadd %d14, %d0, %d14, %d14

# CHECK-INST: cadd %d14, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0xe0]
.code32
cadd %d14, %d0, %d14, %d15

# CHECK-INST: cadd %d14, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0xe0]
.code32
cadd %d14, %d0, %d15, %d0

# CHECK-INST: cadd %d14, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0xe0]
.code32
cadd %d14, %d0, %d15, %d1

# CHECK-INST: cadd %d14, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0xe0]
.code32
cadd %d14, %d0, %d15, %d14

# CHECK-INST: cadd %d14, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0xe0]
.code32
cadd %d14, %d0, %d15, %d15

# CHECK-INST: cadd %d14, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0xe1]
.code32
cadd %d14, %d1, %d0, %d0

# CHECK-INST: cadd %d14, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0xe1]
.code32
cadd %d14, %d1, %d0, %d1

# CHECK-INST: cadd %d14, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0xe1]
.code32
cadd %d14, %d1, %d0, %d14

# CHECK-INST: cadd %d14, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0xe1]
.code32
cadd %d14, %d1, %d0, %d15

# CHECK-INST: cadd %d14, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0xe1]
.code32
cadd %d14, %d1, %d1, %d0

# CHECK-INST: cadd %d14, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0xe1]
.code32
cadd %d14, %d1, %d1, %d1

# CHECK-INST: cadd %d14, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0xe1]
.code32
cadd %d14, %d1, %d1, %d14

# CHECK-INST: cadd %d14, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0xe1]
.code32
cadd %d14, %d1, %d1, %d15

# CHECK-INST: cadd %d14, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0xe1]
.code32
cadd %d14, %d1, %d14, %d0

# CHECK-INST: cadd %d14, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0xe1]
.code32
cadd %d14, %d1, %d14, %d1

# CHECK-INST: cadd %d14, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0xe1]
.code32
cadd %d14, %d1, %d14, %d14

# CHECK-INST: cadd %d14, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0xe1]
.code32
cadd %d14, %d1, %d14, %d15

# CHECK-INST: cadd %d14, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0xe1]
.code32
cadd %d14, %d1, %d15, %d0

# CHECK-INST: cadd %d14, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0xe1]
.code32
cadd %d14, %d1, %d15, %d1

# CHECK-INST: cadd %d14, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0xe1]
.code32
cadd %d14, %d1, %d15, %d14

# CHECK-INST: cadd %d14, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0xe1]
.code32
cadd %d14, %d1, %d15, %d15

# CHECK-INST: cadd %d14, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0xee]
.code32
cadd %d14, %d14, %d0, %d0

# CHECK-INST: cadd %d14, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0xee]
.code32
cadd %d14, %d14, %d0, %d1

# CHECK-INST: cadd %d14, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0xee]
.code32
cadd %d14, %d14, %d0, %d14

# CHECK-INST: cadd %d14, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0xee]
.code32
cadd %d14, %d14, %d0, %d15

# CHECK-INST: cadd %d14, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0xee]
.code32
cadd %d14, %d14, %d1, %d0

# CHECK-INST: cadd %d14, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0xee]
.code32
cadd %d14, %d14, %d1, %d1

# CHECK-INST: cadd %d14, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0xee]
.code32
cadd %d14, %d14, %d1, %d14

# CHECK-INST: cadd %d14, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0xee]
.code32
cadd %d14, %d14, %d1, %d15

# CHECK-INST: cadd %d14, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0xee]
.code32
cadd %d14, %d14, %d14, %d0

# CHECK-INST: cadd %d14, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0xee]
.code32
cadd %d14, %d14, %d14, %d1

# CHECK-INST: cadd %d14, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0xee]
.code32
cadd %d14, %d14, %d14, %d14

# CHECK-INST: cadd %d14, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0xee]
.code32
cadd %d14, %d14, %d14, %d15

# CHECK-INST: cadd %d14, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0xee]
.code32
cadd %d14, %d14, %d15, %d0

# CHECK-INST: cadd %d14, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0xee]
.code32
cadd %d14, %d14, %d15, %d1

# CHECK-INST: cadd %d14, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0xee]
.code32
cadd %d14, %d14, %d15, %d14

# CHECK-INST: cadd %d14, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0xee]
.code32
cadd %d14, %d14, %d15, %d15

# CHECK-INST: cadd %d14, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0xef]
.code32
cadd %d14, %d15, %d0, %d0

# CHECK-INST: cadd %d14, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0xef]
.code32
cadd %d14, %d15, %d0, %d1

# CHECK-INST: cadd %d14, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0xef]
.code32
cadd %d14, %d15, %d0, %d14

# CHECK-INST: cadd %d14, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0xef]
.code32
cadd %d14, %d15, %d0, %d15

# CHECK-INST: cadd %d14, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0xef]
.code32
cadd %d14, %d15, %d1, %d0

# CHECK-INST: cadd %d14, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0xef]
.code32
cadd %d14, %d15, %d1, %d1

# CHECK-INST: cadd %d14, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0xef]
.code32
cadd %d14, %d15, %d1, %d14

# CHECK-INST: cadd %d14, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0xef]
.code32
cadd %d14, %d15, %d1, %d15

# CHECK-INST: cadd %d14, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0xef]
.code32
cadd %d14, %d15, %d14, %d0

# CHECK-INST: cadd %d14, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0xef]
.code32
cadd %d14, %d15, %d14, %d1

# CHECK-INST: cadd %d14, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0xef]
.code32
cadd %d14, %d15, %d14, %d14

# CHECK-INST: cadd %d14, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0xef]
.code32
cadd %d14, %d15, %d14, %d15

# CHECK-INST: cadd %d14, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0xef]
.code32
cadd %d14, %d15, %d15, %d0

# CHECK-INST: cadd %d14, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0xef]
.code32
cadd %d14, %d15, %d15, %d1

# CHECK-INST: cadd %d14, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0xef]
.code32
cadd %d14, %d15, %d15, %d14

# CHECK-INST: cadd %d14, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0xef]
.code32
cadd %d14, %d15, %d15, %d15

# CHECK-INST: cadd %d15, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0xf0]
.code32
cadd %d15, %d0, %d0, %d0

# CHECK-INST: cadd %d15, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0xf0]
.code32
cadd %d15, %d0, %d0, %d1

# CHECK-INST: cadd %d15, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0xf0]
.code32
cadd %d15, %d0, %d0, %d14

# CHECK-INST: cadd %d15, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0xf0]
.code32
cadd %d15, %d0, %d0, %d15

# CHECK-INST: cadd %d15, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0xf0]
.code32
cadd %d15, %d0, %d1, %d0

# CHECK-INST: cadd %d15, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0xf0]
.code32
cadd %d15, %d0, %d1, %d1

# CHECK-INST: cadd %d15, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0xf0]
.code32
cadd %d15, %d0, %d1, %d14

# CHECK-INST: cadd %d15, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0xf0]
.code32
cadd %d15, %d0, %d1, %d15

# CHECK-INST: cadd %d15, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0xf0]
.code32
cadd %d15, %d0, %d14, %d0

# CHECK-INST: cadd %d15, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0xf0]
.code32
cadd %d15, %d0, %d14, %d1

# CHECK-INST: cadd %d15, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0xf0]
.code32
cadd %d15, %d0, %d14, %d14

# CHECK-INST: cadd %d15, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0xf0]
.code32
cadd %d15, %d0, %d14, %d15

# CHECK-INST: cadd %d15, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0xf0]
.code32
cadd %d15, %d0, %d15, %d0

# CHECK-INST: cadd %d15, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0xf0]
.code32
cadd %d15, %d0, %d15, %d1

# CHECK-INST: cadd %d15, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0xf0]
.code32
cadd %d15, %d0, %d15, %d14

# CHECK-INST: cadd %d15, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0xf0]
.code32
cadd %d15, %d0, %d15, %d15

# CHECK-INST: cadd %d15, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0xf1]
.code32
cadd %d15, %d1, %d0, %d0

# CHECK-INST: cadd %d15, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0xf1]
.code32
cadd %d15, %d1, %d0, %d1

# CHECK-INST: cadd %d15, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0xf1]
.code32
cadd %d15, %d1, %d0, %d14

# CHECK-INST: cadd %d15, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0xf1]
.code32
cadd %d15, %d1, %d0, %d15

# CHECK-INST: cadd %d15, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0xf1]
.code32
cadd %d15, %d1, %d1, %d0

# CHECK-INST: cadd %d15, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0xf1]
.code32
cadd %d15, %d1, %d1, %d1

# CHECK-INST: cadd %d15, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0xf1]
.code32
cadd %d15, %d1, %d1, %d14

# CHECK-INST: cadd %d15, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0xf1]
.code32
cadd %d15, %d1, %d1, %d15

# CHECK-INST: cadd %d15, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0xf1]
.code32
cadd %d15, %d1, %d14, %d0

# CHECK-INST: cadd %d15, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0xf1]
.code32
cadd %d15, %d1, %d14, %d1

# CHECK-INST: cadd %d15, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0xf1]
.code32
cadd %d15, %d1, %d14, %d14

# CHECK-INST: cadd %d15, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0xf1]
.code32
cadd %d15, %d1, %d14, %d15

# CHECK-INST: cadd %d15, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0xf1]
.code32
cadd %d15, %d1, %d15, %d0

# CHECK-INST: cadd %d15, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0xf1]
.code32
cadd %d15, %d1, %d15, %d1

# CHECK-INST: cadd %d15, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0xf1]
.code32
cadd %d15, %d1, %d15, %d14

# CHECK-INST: cadd %d15, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0xf1]
.code32
cadd %d15, %d1, %d15, %d15

# CHECK-INST: cadd %d15, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0xfe]
.code32
cadd %d15, %d14, %d0, %d0

# CHECK-INST: cadd %d15, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0xfe]
.code32
cadd %d15, %d14, %d0, %d1

# CHECK-INST: cadd %d15, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0xfe]
.code32
cadd %d15, %d14, %d0, %d14

# CHECK-INST: cadd %d15, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0xfe]
.code32
cadd %d15, %d14, %d0, %d15

# CHECK-INST: cadd %d15, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0xfe]
.code32
cadd %d15, %d14, %d1, %d0

# CHECK-INST: cadd %d15, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0xfe]
.code32
cadd %d15, %d14, %d1, %d1

# CHECK-INST: cadd %d15, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0xfe]
.code32
cadd %d15, %d14, %d1, %d14

# CHECK-INST: cadd %d15, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0xfe]
.code32
cadd %d15, %d14, %d1, %d15

# CHECK-INST: cadd %d15, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0xfe]
.code32
cadd %d15, %d14, %d14, %d0

# CHECK-INST: cadd %d15, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0xfe]
.code32
cadd %d15, %d14, %d14, %d1

# CHECK-INST: cadd %d15, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0xfe]
.code32
cadd %d15, %d14, %d14, %d14

# CHECK-INST: cadd %d15, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0xfe]
.code32
cadd %d15, %d14, %d14, %d15

# CHECK-INST: cadd %d15, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0xfe]
.code32
cadd %d15, %d14, %d15, %d0

# CHECK-INST: cadd %d15, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0xfe]
.code32
cadd %d15, %d14, %d15, %d1

# CHECK-INST: cadd %d15, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0xfe]
.code32
cadd %d15, %d14, %d15, %d14

# CHECK-INST: cadd %d15, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0xfe]
.code32
cadd %d15, %d14, %d15, %d15

# CHECK-INST: cadd %d15, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0xff]
.code32
cadd %d15, %d15, %d0, %d0

# CHECK-INST: cadd %d15, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0xff]
.code32
cadd %d15, %d15, %d0, %d1

# CHECK-INST: cadd %d15, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0xff]
.code32
cadd %d15, %d15, %d0, %d14

# CHECK-INST: cadd %d15, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0xff]
.code32
cadd %d15, %d15, %d0, %d15

# CHECK-INST: cadd %d15, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0xff]
.code32
cadd %d15, %d15, %d1, %d0

# CHECK-INST: cadd %d15, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0xff]
.code32
cadd %d15, %d15, %d1, %d1

# CHECK-INST: cadd %d15, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0xff]
.code32
cadd %d15, %d15, %d1, %d14

# CHECK-INST: cadd %d15, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0xff]
.code32
cadd %d15, %d15, %d1, %d15

# CHECK-INST: cadd %d15, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0xff]
.code32
cadd %d15, %d15, %d14, %d0

# CHECK-INST: cadd %d15, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0xff]
.code32
cadd %d15, %d15, %d14, %d1

# CHECK-INST: cadd %d15, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0xff]
.code32
cadd %d15, %d15, %d14, %d14

# CHECK-INST: cadd %d15, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0xff]
.code32
cadd %d15, %d15, %d14, %d15

# CHECK-INST: cadd %d15, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0xff]
.code32
cadd %d15, %d15, %d15, %d0

# CHECK-INST: cadd %d15, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0xff]
.code32
cadd %d15, %d15, %d15, %d1

# CHECK-INST: cadd %d15, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0xff]
.code32
cadd %d15, %d15, %d15, %d14

# CHECK-INST: cadd %d15, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0xff]
.code32
cadd %d15, %d15, %d15, %d15

# CHECK-INST: cadd %d0, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0x00]
.code32
cadd %d0, %d0, %d0, -256

# CHECK-INST: cadd %d0, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0x00]
.code32
cadd %d0, %d0, %d0, -129

# CHECK-INST: cadd %d0, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0x00]
.code32
cadd %d0, %d0, %d0, -1

# CHECK-INST: cadd %d0, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0x00]
.code32
cadd %d0, %d0, %d0, 0

# CHECK-INST: cadd %d0, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0x00]
.code32
cadd %d0, %d0, %d0, 1

# CHECK-INST: cadd %d0, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0x00]
.code32
cadd %d0, %d0, %d0, 128

# CHECK-INST: cadd %d0, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0x00]
.code32
cadd %d0, %d0, %d0, 255

# CHECK-INST: cadd %d0, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0x00]
.code32
cadd %d0, %d0, %d1, -256

# CHECK-INST: cadd %d0, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0x00]
.code32
cadd %d0, %d0, %d1, -129

# CHECK-INST: cadd %d0, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0x00]
.code32
cadd %d0, %d0, %d1, -1

# CHECK-INST: cadd %d0, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0x00]
.code32
cadd %d0, %d0, %d1, 0

# CHECK-INST: cadd %d0, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0x00]
.code32
cadd %d0, %d0, %d1, 1

# CHECK-INST: cadd %d0, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0x00]
.code32
cadd %d0, %d0, %d1, 128

# CHECK-INST: cadd %d0, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0x00]
.code32
cadd %d0, %d0, %d1, 255

# CHECK-INST: cadd %d0, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0x00]
.code32
cadd %d0, %d0, %d14, -256

# CHECK-INST: cadd %d0, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0x00]
.code32
cadd %d0, %d0, %d14, -129

# CHECK-INST: cadd %d0, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0x00]
.code32
cadd %d0, %d0, %d14, -1

# CHECK-INST: cadd %d0, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0x00]
.code32
cadd %d0, %d0, %d14, 0

# CHECK-INST: cadd %d0, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0x00]
.code32
cadd %d0, %d0, %d14, 1

# CHECK-INST: cadd %d0, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0x00]
.code32
cadd %d0, %d0, %d14, 128

# CHECK-INST: cadd %d0, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0x00]
.code32
cadd %d0, %d0, %d14, 255

# CHECK-INST: cadd %d0, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0x00]
.code32
cadd %d0, %d0, %d15, -256

# CHECK-INST: cadd %d0, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0x00]
.code32
cadd %d0, %d0, %d15, -129

# CHECK-INST: cadd %d0, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0x00]
.code32
cadd %d0, %d0, %d15, -1

# CHECK-INST: cadd %d0, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0x00]
.code32
cadd %d0, %d0, %d15, 0

# CHECK-INST: cadd %d0, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0x00]
.code32
cadd %d0, %d0, %d15, 1

# CHECK-INST: cadd %d0, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0x00]
.code32
cadd %d0, %d0, %d15, 128

# CHECK-INST: cadd %d0, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0x00]
.code32
cadd %d0, %d0, %d15, 255

# CHECK-INST: cadd %d0, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0x01]
.code32
cadd %d0, %d1, %d0, -256

# CHECK-INST: cadd %d0, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0x01]
.code32
cadd %d0, %d1, %d0, -129

# CHECK-INST: cadd %d0, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0x01]
.code32
cadd %d0, %d1, %d0, -1

# CHECK-INST: cadd %d0, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0x01]
.code32
cadd %d0, %d1, %d0, 0

# CHECK-INST: cadd %d0, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0x01]
.code32
cadd %d0, %d1, %d0, 1

# CHECK-INST: cadd %d0, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0x01]
.code32
cadd %d0, %d1, %d0, 128

# CHECK-INST: cadd %d0, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0x01]
.code32
cadd %d0, %d1, %d0, 255

# CHECK-INST: cadd %d0, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0x01]
.code32
cadd %d0, %d1, %d1, -256

# CHECK-INST: cadd %d0, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0x01]
.code32
cadd %d0, %d1, %d1, -129

# CHECK-INST: cadd %d0, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0x01]
.code32
cadd %d0, %d1, %d1, -1

# CHECK-INST: cadd %d0, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0x01]
.code32
cadd %d0, %d1, %d1, 0

# CHECK-INST: cadd %d0, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0x01]
.code32
cadd %d0, %d1, %d1, 1

# CHECK-INST: cadd %d0, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0x01]
.code32
cadd %d0, %d1, %d1, 128

# CHECK-INST: cadd %d0, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0x01]
.code32
cadd %d0, %d1, %d1, 255

# CHECK-INST: cadd %d0, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0x01]
.code32
cadd %d0, %d1, %d14, -256

# CHECK-INST: cadd %d0, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0x01]
.code32
cadd %d0, %d1, %d14, -129

# CHECK-INST: cadd %d0, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0x01]
.code32
cadd %d0, %d1, %d14, -1

# CHECK-INST: cadd %d0, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0x01]
.code32
cadd %d0, %d1, %d14, 0

# CHECK-INST: cadd %d0, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0x01]
.code32
cadd %d0, %d1, %d14, 1

# CHECK-INST: cadd %d0, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0x01]
.code32
cadd %d0, %d1, %d14, 128

# CHECK-INST: cadd %d0, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0x01]
.code32
cadd %d0, %d1, %d14, 255

# CHECK-INST: cadd %d0, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0x01]
.code32
cadd %d0, %d1, %d15, -256

# CHECK-INST: cadd %d0, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0x01]
.code32
cadd %d0, %d1, %d15, -129

# CHECK-INST: cadd %d0, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0x01]
.code32
cadd %d0, %d1, %d15, -1

# CHECK-INST: cadd %d0, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0x01]
.code32
cadd %d0, %d1, %d15, 0

# CHECK-INST: cadd %d0, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0x01]
.code32
cadd %d0, %d1, %d15, 1

# CHECK-INST: cadd %d0, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0x01]
.code32
cadd %d0, %d1, %d15, 128

# CHECK-INST: cadd %d0, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0x01]
.code32
cadd %d0, %d1, %d15, 255

# CHECK-INST: cadd %d0, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0x0e]
.code32
cadd %d0, %d14, %d0, -256

# CHECK-INST: cadd %d0, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0x0e]
.code32
cadd %d0, %d14, %d0, -129

# CHECK-INST: cadd %d0, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0x0e]
.code32
cadd %d0, %d14, %d0, -1

# CHECK-INST: cadd %d0, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0x0e]
.code32
cadd %d0, %d14, %d0, 0

# CHECK-INST: cadd %d0, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0x0e]
.code32
cadd %d0, %d14, %d0, 1

# CHECK-INST: cadd %d0, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0x0e]
.code32
cadd %d0, %d14, %d0, 128

# CHECK-INST: cadd %d0, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0x0e]
.code32
cadd %d0, %d14, %d0, 255

# CHECK-INST: cadd %d0, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0x0e]
.code32
cadd %d0, %d14, %d1, -256

# CHECK-INST: cadd %d0, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0x0e]
.code32
cadd %d0, %d14, %d1, -129

# CHECK-INST: cadd %d0, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0x0e]
.code32
cadd %d0, %d14, %d1, -1

# CHECK-INST: cadd %d0, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0x0e]
.code32
cadd %d0, %d14, %d1, 0

# CHECK-INST: cadd %d0, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0x0e]
.code32
cadd %d0, %d14, %d1, 1

# CHECK-INST: cadd %d0, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0x0e]
.code32
cadd %d0, %d14, %d1, 128

# CHECK-INST: cadd %d0, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0x0e]
.code32
cadd %d0, %d14, %d1, 255

# CHECK-INST: cadd %d0, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0x0e]
.code32
cadd %d0, %d14, %d14, -256

# CHECK-INST: cadd %d0, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0x0e]
.code32
cadd %d0, %d14, %d14, -129

# CHECK-INST: cadd %d0, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0x0e]
.code32
cadd %d0, %d14, %d14, -1

# CHECK-INST: cadd %d0, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0x0e]
.code32
cadd %d0, %d14, %d14, 0

# CHECK-INST: cadd %d0, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0x0e]
.code32
cadd %d0, %d14, %d14, 1

# CHECK-INST: cadd %d0, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0x0e]
.code32
cadd %d0, %d14, %d14, 128

# CHECK-INST: cadd %d0, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0x0e]
.code32
cadd %d0, %d14, %d14, 255

# CHECK-INST: cadd %d0, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0x0e]
.code32
cadd %d0, %d14, %d15, -256

# CHECK-INST: cadd %d0, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0x0e]
.code32
cadd %d0, %d14, %d15, -129

# CHECK-INST: cadd %d0, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0x0e]
.code32
cadd %d0, %d14, %d15, -1

# CHECK-INST: cadd %d0, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0x0e]
.code32
cadd %d0, %d14, %d15, 0

# CHECK-INST: cadd %d0, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0x0e]
.code32
cadd %d0, %d14, %d15, 1

# CHECK-INST: cadd %d0, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0x0e]
.code32
cadd %d0, %d14, %d15, 128

# CHECK-INST: cadd %d0, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0x0e]
.code32
cadd %d0, %d14, %d15, 255

# CHECK-INST: cadd %d0, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0x0f]
.code32
cadd %d0, %d15, %d0, -256

# CHECK-INST: cadd %d0, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0x0f]
.code32
cadd %d0, %d15, %d0, -129

# CHECK-INST: cadd %d0, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0x0f]
.code32
cadd %d0, %d15, %d0, -1

# CHECK-INST: cadd %d0, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0x0f]
.code32
cadd %d0, %d15, %d0, 0

# CHECK-INST: cadd %d0, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0x0f]
.code32
cadd %d0, %d15, %d0, 1

# CHECK-INST: cadd %d0, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0x0f]
.code32
cadd %d0, %d15, %d0, 128

# CHECK-INST: cadd %d0, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0x0f]
.code32
cadd %d0, %d15, %d0, 255

# CHECK-INST: cadd %d0, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0x0f]
.code32
cadd %d0, %d15, %d1, -256

# CHECK-INST: cadd %d0, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0x0f]
.code32
cadd %d0, %d15, %d1, -129

# CHECK-INST: cadd %d0, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0x0f]
.code32
cadd %d0, %d15, %d1, -1

# CHECK-INST: cadd %d0, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0x0f]
.code32
cadd %d0, %d15, %d1, 0

# CHECK-INST: cadd %d0, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0x0f]
.code32
cadd %d0, %d15, %d1, 1

# CHECK-INST: cadd %d0, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0x0f]
.code32
cadd %d0, %d15, %d1, 128

# CHECK-INST: cadd %d0, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0x0f]
.code32
cadd %d0, %d15, %d1, 255

# CHECK-INST: cadd %d0, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0x0f]
.code32
cadd %d0, %d15, %d14, -256

# CHECK-INST: cadd %d0, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0x0f]
.code32
cadd %d0, %d15, %d14, -129

# CHECK-INST: cadd %d0, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0x0f]
.code32
cadd %d0, %d15, %d14, -1

# CHECK-INST: cadd %d0, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0x0f]
.code32
cadd %d0, %d15, %d14, 0

# CHECK-INST: cadd %d0, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0x0f]
.code32
cadd %d0, %d15, %d14, 1

# CHECK-INST: cadd %d0, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0x0f]
.code32
cadd %d0, %d15, %d14, 128

# CHECK-INST: cadd %d0, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0x0f]
.code32
cadd %d0, %d15, %d14, 255

# CHECK-INST: cadd %d0, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0x0f]
.code32
cadd %d0, %d15, %d15, -256

# CHECK-INST: cadd %d0, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0x0f]
.code32
cadd %d0, %d15, %d15, -129

# CHECK-INST: cadd %d0, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0x0f]
.code32
cadd %d0, %d15, %d15, -1

# CHECK-INST: cadd %d0, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0x0f]
.code32
cadd %d0, %d15, %d15, 0

# CHECK-INST: cadd %d0, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0x0f]
.code32
cadd %d0, %d15, %d15, 1

# CHECK-INST: cadd %d0, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0x0f]
.code32
cadd %d0, %d15, %d15, 128

# CHECK-INST: cadd %d0, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0x0f]
.code32
cadd %d0, %d15, %d15, 255

# CHECK-INST: cadd %d1, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0x10]
.code32
cadd %d1, %d0, %d0, -256

# CHECK-INST: cadd %d1, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0x10]
.code32
cadd %d1, %d0, %d0, -129

# CHECK-INST: cadd %d1, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0x10]
.code32
cadd %d1, %d0, %d0, -1

# CHECK-INST: cadd %d1, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0x10]
.code32
cadd %d1, %d0, %d0, 0

# CHECK-INST: cadd %d1, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0x10]
.code32
cadd %d1, %d0, %d0, 1

# CHECK-INST: cadd %d1, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0x10]
.code32
cadd %d1, %d0, %d0, 128

# CHECK-INST: cadd %d1, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0x10]
.code32
cadd %d1, %d0, %d0, 255

# CHECK-INST: cadd %d1, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0x10]
.code32
cadd %d1, %d0, %d1, -256

# CHECK-INST: cadd %d1, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0x10]
.code32
cadd %d1, %d0, %d1, -129

# CHECK-INST: cadd %d1, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0x10]
.code32
cadd %d1, %d0, %d1, -1

# CHECK-INST: cadd %d1, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0x10]
.code32
cadd %d1, %d0, %d1, 0

# CHECK-INST: cadd %d1, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0x10]
.code32
cadd %d1, %d0, %d1, 1

# CHECK-INST: cadd %d1, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0x10]
.code32
cadd %d1, %d0, %d1, 128

# CHECK-INST: cadd %d1, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0x10]
.code32
cadd %d1, %d0, %d1, 255

# CHECK-INST: cadd %d1, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0x10]
.code32
cadd %d1, %d0, %d14, -256

# CHECK-INST: cadd %d1, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0x10]
.code32
cadd %d1, %d0, %d14, -129

# CHECK-INST: cadd %d1, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0x10]
.code32
cadd %d1, %d0, %d14, -1

# CHECK-INST: cadd %d1, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0x10]
.code32
cadd %d1, %d0, %d14, 0

# CHECK-INST: cadd %d1, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0x10]
.code32
cadd %d1, %d0, %d14, 1

# CHECK-INST: cadd %d1, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0x10]
.code32
cadd %d1, %d0, %d14, 128

# CHECK-INST: cadd %d1, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0x10]
.code32
cadd %d1, %d0, %d14, 255

# CHECK-INST: cadd %d1, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0x10]
.code32
cadd %d1, %d0, %d15, -256

# CHECK-INST: cadd %d1, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0x10]
.code32
cadd %d1, %d0, %d15, -129

# CHECK-INST: cadd %d1, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0x10]
.code32
cadd %d1, %d0, %d15, -1

# CHECK-INST: cadd %d1, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0x10]
.code32
cadd %d1, %d0, %d15, 0

# CHECK-INST: cadd %d1, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0x10]
.code32
cadd %d1, %d0, %d15, 1

# CHECK-INST: cadd %d1, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0x10]
.code32
cadd %d1, %d0, %d15, 128

# CHECK-INST: cadd %d1, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0x10]
.code32
cadd %d1, %d0, %d15, 255

# CHECK-INST: cadd %d1, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0x11]
.code32
cadd %d1, %d1, %d0, -256

# CHECK-INST: cadd %d1, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0x11]
.code32
cadd %d1, %d1, %d0, -129

# CHECK-INST: cadd %d1, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0x11]
.code32
cadd %d1, %d1, %d0, -1

# CHECK-INST: cadd %d1, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0x11]
.code32
cadd %d1, %d1, %d0, 0

# CHECK-INST: cadd %d1, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0x11]
.code32
cadd %d1, %d1, %d0, 1

# CHECK-INST: cadd %d1, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0x11]
.code32
cadd %d1, %d1, %d0, 128

# CHECK-INST: cadd %d1, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0x11]
.code32
cadd %d1, %d1, %d0, 255

# CHECK-INST: cadd %d1, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0x11]
.code32
cadd %d1, %d1, %d1, -256

# CHECK-INST: cadd %d1, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0x11]
.code32
cadd %d1, %d1, %d1, -129

# CHECK-INST: cadd %d1, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0x11]
.code32
cadd %d1, %d1, %d1, -1

# CHECK-INST: cadd %d1, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0x11]
.code32
cadd %d1, %d1, %d1, 0

# CHECK-INST: cadd %d1, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0x11]
.code32
cadd %d1, %d1, %d1, 1

# CHECK-INST: cadd %d1, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0x11]
.code32
cadd %d1, %d1, %d1, 128

# CHECK-INST: cadd %d1, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0x11]
.code32
cadd %d1, %d1, %d1, 255

# CHECK-INST: cadd %d1, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0x11]
.code32
cadd %d1, %d1, %d14, -256

# CHECK-INST: cadd %d1, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0x11]
.code32
cadd %d1, %d1, %d14, -129

# CHECK-INST: cadd %d1, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0x11]
.code32
cadd %d1, %d1, %d14, -1

# CHECK-INST: cadd %d1, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0x11]
.code32
cadd %d1, %d1, %d14, 0

# CHECK-INST: cadd %d1, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0x11]
.code32
cadd %d1, %d1, %d14, 1

# CHECK-INST: cadd %d1, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0x11]
.code32
cadd %d1, %d1, %d14, 128

# CHECK-INST: cadd %d1, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0x11]
.code32
cadd %d1, %d1, %d14, 255

# CHECK-INST: cadd %d1, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0x11]
.code32
cadd %d1, %d1, %d15, -256

# CHECK-INST: cadd %d1, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0x11]
.code32
cadd %d1, %d1, %d15, -129

# CHECK-INST: cadd %d1, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0x11]
.code32
cadd %d1, %d1, %d15, -1

# CHECK-INST: cadd %d1, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0x11]
.code32
cadd %d1, %d1, %d15, 0

# CHECK-INST: cadd %d1, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0x11]
.code32
cadd %d1, %d1, %d15, 1

# CHECK-INST: cadd %d1, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0x11]
.code32
cadd %d1, %d1, %d15, 128

# CHECK-INST: cadd %d1, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0x11]
.code32
cadd %d1, %d1, %d15, 255

# CHECK-INST: cadd %d1, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0x1e]
.code32
cadd %d1, %d14, %d0, -256

# CHECK-INST: cadd %d1, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0x1e]
.code32
cadd %d1, %d14, %d0, -129

# CHECK-INST: cadd %d1, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0x1e]
.code32
cadd %d1, %d14, %d0, -1

# CHECK-INST: cadd %d1, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0x1e]
.code32
cadd %d1, %d14, %d0, 0

# CHECK-INST: cadd %d1, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0x1e]
.code32
cadd %d1, %d14, %d0, 1

# CHECK-INST: cadd %d1, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0x1e]
.code32
cadd %d1, %d14, %d0, 128

# CHECK-INST: cadd %d1, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0x1e]
.code32
cadd %d1, %d14, %d0, 255

# CHECK-INST: cadd %d1, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0x1e]
.code32
cadd %d1, %d14, %d1, -256

# CHECK-INST: cadd %d1, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0x1e]
.code32
cadd %d1, %d14, %d1, -129

# CHECK-INST: cadd %d1, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0x1e]
.code32
cadd %d1, %d14, %d1, -1

# CHECK-INST: cadd %d1, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0x1e]
.code32
cadd %d1, %d14, %d1, 0

# CHECK-INST: cadd %d1, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0x1e]
.code32
cadd %d1, %d14, %d1, 1

# CHECK-INST: cadd %d1, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0x1e]
.code32
cadd %d1, %d14, %d1, 128

# CHECK-INST: cadd %d1, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0x1e]
.code32
cadd %d1, %d14, %d1, 255

# CHECK-INST: cadd %d1, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0x1e]
.code32
cadd %d1, %d14, %d14, -256

# CHECK-INST: cadd %d1, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0x1e]
.code32
cadd %d1, %d14, %d14, -129

# CHECK-INST: cadd %d1, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0x1e]
.code32
cadd %d1, %d14, %d14, -1

# CHECK-INST: cadd %d1, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0x1e]
.code32
cadd %d1, %d14, %d14, 0

# CHECK-INST: cadd %d1, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0x1e]
.code32
cadd %d1, %d14, %d14, 1

# CHECK-INST: cadd %d1, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0x1e]
.code32
cadd %d1, %d14, %d14, 128

# CHECK-INST: cadd %d1, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0x1e]
.code32
cadd %d1, %d14, %d14, 255

# CHECK-INST: cadd %d1, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0x1e]
.code32
cadd %d1, %d14, %d15, -256

# CHECK-INST: cadd %d1, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0x1e]
.code32
cadd %d1, %d14, %d15, -129

# CHECK-INST: cadd %d1, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0x1e]
.code32
cadd %d1, %d14, %d15, -1

# CHECK-INST: cadd %d1, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0x1e]
.code32
cadd %d1, %d14, %d15, 0

# CHECK-INST: cadd %d1, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0x1e]
.code32
cadd %d1, %d14, %d15, 1

# CHECK-INST: cadd %d1, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0x1e]
.code32
cadd %d1, %d14, %d15, 128

# CHECK-INST: cadd %d1, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0x1e]
.code32
cadd %d1, %d14, %d15, 255

# CHECK-INST: cadd %d1, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0x1f]
.code32
cadd %d1, %d15, %d0, -256

# CHECK-INST: cadd %d1, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0x1f]
.code32
cadd %d1, %d15, %d0, -129

# CHECK-INST: cadd %d1, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0x1f]
.code32
cadd %d1, %d15, %d0, -1

# CHECK-INST: cadd %d1, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0x1f]
.code32
cadd %d1, %d15, %d0, 0

# CHECK-INST: cadd %d1, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0x1f]
.code32
cadd %d1, %d15, %d0, 1

# CHECK-INST: cadd %d1, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0x1f]
.code32
cadd %d1, %d15, %d0, 128

# CHECK-INST: cadd %d1, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0x1f]
.code32
cadd %d1, %d15, %d0, 255

# CHECK-INST: cadd %d1, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0x1f]
.code32
cadd %d1, %d15, %d1, -256

# CHECK-INST: cadd %d1, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0x1f]
.code32
cadd %d1, %d15, %d1, -129

# CHECK-INST: cadd %d1, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0x1f]
.code32
cadd %d1, %d15, %d1, -1

# CHECK-INST: cadd %d1, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0x1f]
.code32
cadd %d1, %d15, %d1, 0

# CHECK-INST: cadd %d1, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0x1f]
.code32
cadd %d1, %d15, %d1, 1

# CHECK-INST: cadd %d1, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0x1f]
.code32
cadd %d1, %d15, %d1, 128

# CHECK-INST: cadd %d1, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0x1f]
.code32
cadd %d1, %d15, %d1, 255

# CHECK-INST: cadd %d1, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0x1f]
.code32
cadd %d1, %d15, %d14, -256

# CHECK-INST: cadd %d1, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0x1f]
.code32
cadd %d1, %d15, %d14, -129

# CHECK-INST: cadd %d1, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0x1f]
.code32
cadd %d1, %d15, %d14, -1

# CHECK-INST: cadd %d1, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0x1f]
.code32
cadd %d1, %d15, %d14, 0

# CHECK-INST: cadd %d1, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0x1f]
.code32
cadd %d1, %d15, %d14, 1

# CHECK-INST: cadd %d1, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0x1f]
.code32
cadd %d1, %d15, %d14, 128

# CHECK-INST: cadd %d1, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0x1f]
.code32
cadd %d1, %d15, %d14, 255

# CHECK-INST: cadd %d1, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0x1f]
.code32
cadd %d1, %d15, %d15, -256

# CHECK-INST: cadd %d1, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0x1f]
.code32
cadd %d1, %d15, %d15, -129

# CHECK-INST: cadd %d1, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0x1f]
.code32
cadd %d1, %d15, %d15, -1

# CHECK-INST: cadd %d1, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0x1f]
.code32
cadd %d1, %d15, %d15, 0

# CHECK-INST: cadd %d1, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0x1f]
.code32
cadd %d1, %d15, %d15, 1

# CHECK-INST: cadd %d1, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0x1f]
.code32
cadd %d1, %d15, %d15, 128

# CHECK-INST: cadd %d1, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0x1f]
.code32
cadd %d1, %d15, %d15, 255

# CHECK-INST: cadd %d14, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0xe0]
.code32
cadd %d14, %d0, %d0, -256

# CHECK-INST: cadd %d14, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0xe0]
.code32
cadd %d14, %d0, %d0, -129

# CHECK-INST: cadd %d14, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0xe0]
.code32
cadd %d14, %d0, %d0, -1

# CHECK-INST: cadd %d14, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0xe0]
.code32
cadd %d14, %d0, %d0, 0

# CHECK-INST: cadd %d14, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0xe0]
.code32
cadd %d14, %d0, %d0, 1

# CHECK-INST: cadd %d14, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0xe0]
.code32
cadd %d14, %d0, %d0, 128

# CHECK-INST: cadd %d14, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0xe0]
.code32
cadd %d14, %d0, %d0, 255

# CHECK-INST: cadd %d14, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0xe0]
.code32
cadd %d14, %d0, %d1, -256

# CHECK-INST: cadd %d14, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0xe0]
.code32
cadd %d14, %d0, %d1, -129

# CHECK-INST: cadd %d14, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0xe0]
.code32
cadd %d14, %d0, %d1, -1

# CHECK-INST: cadd %d14, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0xe0]
.code32
cadd %d14, %d0, %d1, 0

# CHECK-INST: cadd %d14, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0xe0]
.code32
cadd %d14, %d0, %d1, 1

# CHECK-INST: cadd %d14, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0xe0]
.code32
cadd %d14, %d0, %d1, 128

# CHECK-INST: cadd %d14, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0xe0]
.code32
cadd %d14, %d0, %d1, 255

# CHECK-INST: cadd %d14, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0xe0]
.code32
cadd %d14, %d0, %d14, -256

# CHECK-INST: cadd %d14, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0xe0]
.code32
cadd %d14, %d0, %d14, -129

# CHECK-INST: cadd %d14, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0xe0]
.code32
cadd %d14, %d0, %d14, -1

# CHECK-INST: cadd %d14, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0xe0]
.code32
cadd %d14, %d0, %d14, 0

# CHECK-INST: cadd %d14, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0xe0]
.code32
cadd %d14, %d0, %d14, 1

# CHECK-INST: cadd %d14, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0xe0]
.code32
cadd %d14, %d0, %d14, 128

# CHECK-INST: cadd %d14, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0xe0]
.code32
cadd %d14, %d0, %d14, 255

# CHECK-INST: cadd %d14, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0xe0]
.code32
cadd %d14, %d0, %d15, -256

# CHECK-INST: cadd %d14, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0xe0]
.code32
cadd %d14, %d0, %d15, -129

# CHECK-INST: cadd %d14, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0xe0]
.code32
cadd %d14, %d0, %d15, -1

# CHECK-INST: cadd %d14, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0xe0]
.code32
cadd %d14, %d0, %d15, 0

# CHECK-INST: cadd %d14, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0xe0]
.code32
cadd %d14, %d0, %d15, 1

# CHECK-INST: cadd %d14, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0xe0]
.code32
cadd %d14, %d0, %d15, 128

# CHECK-INST: cadd %d14, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0xe0]
.code32
cadd %d14, %d0, %d15, 255

# CHECK-INST: cadd %d14, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0xe1]
.code32
cadd %d14, %d1, %d0, -256

# CHECK-INST: cadd %d14, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0xe1]
.code32
cadd %d14, %d1, %d0, -129

# CHECK-INST: cadd %d14, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0xe1]
.code32
cadd %d14, %d1, %d0, -1

# CHECK-INST: cadd %d14, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0xe1]
.code32
cadd %d14, %d1, %d0, 0

# CHECK-INST: cadd %d14, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0xe1]
.code32
cadd %d14, %d1, %d0, 1

# CHECK-INST: cadd %d14, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0xe1]
.code32
cadd %d14, %d1, %d0, 128

# CHECK-INST: cadd %d14, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0xe1]
.code32
cadd %d14, %d1, %d0, 255

# CHECK-INST: cadd %d14, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0xe1]
.code32
cadd %d14, %d1, %d1, -256

# CHECK-INST: cadd %d14, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0xe1]
.code32
cadd %d14, %d1, %d1, -129

# CHECK-INST: cadd %d14, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0xe1]
.code32
cadd %d14, %d1, %d1, -1

# CHECK-INST: cadd %d14, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0xe1]
.code32
cadd %d14, %d1, %d1, 0

# CHECK-INST: cadd %d14, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0xe1]
.code32
cadd %d14, %d1, %d1, 1

# CHECK-INST: cadd %d14, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0xe1]
.code32
cadd %d14, %d1, %d1, 128

# CHECK-INST: cadd %d14, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0xe1]
.code32
cadd %d14, %d1, %d1, 255

# CHECK-INST: cadd %d14, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0xe1]
.code32
cadd %d14, %d1, %d14, -256

# CHECK-INST: cadd %d14, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0xe1]
.code32
cadd %d14, %d1, %d14, -129

# CHECK-INST: cadd %d14, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0xe1]
.code32
cadd %d14, %d1, %d14, -1

# CHECK-INST: cadd %d14, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0xe1]
.code32
cadd %d14, %d1, %d14, 0

# CHECK-INST: cadd %d14, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0xe1]
.code32
cadd %d14, %d1, %d14, 1

# CHECK-INST: cadd %d14, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0xe1]
.code32
cadd %d14, %d1, %d14, 128

# CHECK-INST: cadd %d14, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0xe1]
.code32
cadd %d14, %d1, %d14, 255

# CHECK-INST: cadd %d14, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0xe1]
.code32
cadd %d14, %d1, %d15, -256

# CHECK-INST: cadd %d14, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0xe1]
.code32
cadd %d14, %d1, %d15, -129

# CHECK-INST: cadd %d14, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0xe1]
.code32
cadd %d14, %d1, %d15, -1

# CHECK-INST: cadd %d14, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0xe1]
.code32
cadd %d14, %d1, %d15, 0

# CHECK-INST: cadd %d14, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0xe1]
.code32
cadd %d14, %d1, %d15, 1

# CHECK-INST: cadd %d14, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0xe1]
.code32
cadd %d14, %d1, %d15, 128

# CHECK-INST: cadd %d14, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0xe1]
.code32
cadd %d14, %d1, %d15, 255

# CHECK-INST: cadd %d14, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0xee]
.code32
cadd %d14, %d14, %d0, -256

# CHECK-INST: cadd %d14, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0xee]
.code32
cadd %d14, %d14, %d0, -129

# CHECK-INST: cadd %d14, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0xee]
.code32
cadd %d14, %d14, %d0, -1

# CHECK-INST: cadd %d14, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0xee]
.code32
cadd %d14, %d14, %d0, 0

# CHECK-INST: cadd %d14, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0xee]
.code32
cadd %d14, %d14, %d0, 1

# CHECK-INST: cadd %d14, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0xee]
.code32
cadd %d14, %d14, %d0, 128

# CHECK-INST: cadd %d14, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0xee]
.code32
cadd %d14, %d14, %d0, 255

# CHECK-INST: cadd %d14, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0xee]
.code32
cadd %d14, %d14, %d1, -256

# CHECK-INST: cadd %d14, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0xee]
.code32
cadd %d14, %d14, %d1, -129

# CHECK-INST: cadd %d14, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0xee]
.code32
cadd %d14, %d14, %d1, -1

# CHECK-INST: cadd %d14, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0xee]
.code32
cadd %d14, %d14, %d1, 0

# CHECK-INST: cadd %d14, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0xee]
.code32
cadd %d14, %d14, %d1, 1

# CHECK-INST: cadd %d14, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0xee]
.code32
cadd %d14, %d14, %d1, 128

# CHECK-INST: cadd %d14, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0xee]
.code32
cadd %d14, %d14, %d1, 255

# CHECK-INST: cadd %d14, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0xee]
.code32
cadd %d14, %d14, %d14, -256

# CHECK-INST: cadd %d14, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0xee]
.code32
cadd %d14, %d14, %d14, -129

# CHECK-INST: cadd %d14, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0xee]
.code32
cadd %d14, %d14, %d14, -1

# CHECK-INST: cadd %d14, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0xee]
.code32
cadd %d14, %d14, %d14, 0

# CHECK-INST: cadd %d14, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0xee]
.code32
cadd %d14, %d14, %d14, 1

# CHECK-INST: cadd %d14, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0xee]
.code32
cadd %d14, %d14, %d14, 128

# CHECK-INST: cadd %d14, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0xee]
.code32
cadd %d14, %d14, %d14, 255

# CHECK-INST: cadd %d14, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0xee]
.code32
cadd %d14, %d14, %d15, -256

# CHECK-INST: cadd %d14, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0xee]
.code32
cadd %d14, %d14, %d15, -129

# CHECK-INST: cadd %d14, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0xee]
.code32
cadd %d14, %d14, %d15, -1

# CHECK-INST: cadd %d14, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0xee]
.code32
cadd %d14, %d14, %d15, 0

# CHECK-INST: cadd %d14, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0xee]
.code32
cadd %d14, %d14, %d15, 1

# CHECK-INST: cadd %d14, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0xee]
.code32
cadd %d14, %d14, %d15, 128

# CHECK-INST: cadd %d14, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0xee]
.code32
cadd %d14, %d14, %d15, 255

# CHECK-INST: cadd %d14, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0xef]
.code32
cadd %d14, %d15, %d0, -256

# CHECK-INST: cadd %d14, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0xef]
.code32
cadd %d14, %d15, %d0, -129

# CHECK-INST: cadd %d14, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0xef]
.code32
cadd %d14, %d15, %d0, -1

# CHECK-INST: cadd %d14, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0xef]
.code32
cadd %d14, %d15, %d0, 0

# CHECK-INST: cadd %d14, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0xef]
.code32
cadd %d14, %d15, %d0, 1

# CHECK-INST: cadd %d14, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0xef]
.code32
cadd %d14, %d15, %d0, 128

# CHECK-INST: cadd %d14, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0xef]
.code32
cadd %d14, %d15, %d0, 255

# CHECK-INST: cadd %d14, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0xef]
.code32
cadd %d14, %d15, %d1, -256

# CHECK-INST: cadd %d14, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0xef]
.code32
cadd %d14, %d15, %d1, -129

# CHECK-INST: cadd %d14, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0xef]
.code32
cadd %d14, %d15, %d1, -1

# CHECK-INST: cadd %d14, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0xef]
.code32
cadd %d14, %d15, %d1, 0

# CHECK-INST: cadd %d14, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0xef]
.code32
cadd %d14, %d15, %d1, 1

# CHECK-INST: cadd %d14, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0xef]
.code32
cadd %d14, %d15, %d1, 128

# CHECK-INST: cadd %d14, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0xef]
.code32
cadd %d14, %d15, %d1, 255

# CHECK-INST: cadd %d14, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0xef]
.code32
cadd %d14, %d15, %d14, -256

# CHECK-INST: cadd %d14, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0xef]
.code32
cadd %d14, %d15, %d14, -129

# CHECK-INST: cadd %d14, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0xef]
.code32
cadd %d14, %d15, %d14, -1

# CHECK-INST: cadd %d14, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0xef]
.code32
cadd %d14, %d15, %d14, 0

# CHECK-INST: cadd %d14, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0xef]
.code32
cadd %d14, %d15, %d14, 1

# CHECK-INST: cadd %d14, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0xef]
.code32
cadd %d14, %d15, %d14, 128

# CHECK-INST: cadd %d14, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0xef]
.code32
cadd %d14, %d15, %d14, 255

# CHECK-INST: cadd %d14, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0xef]
.code32
cadd %d14, %d15, %d15, -256

# CHECK-INST: cadd %d14, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0xef]
.code32
cadd %d14, %d15, %d15, -129

# CHECK-INST: cadd %d14, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0xef]
.code32
cadd %d14, %d15, %d15, -1

# CHECK-INST: cadd %d14, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0xef]
.code32
cadd %d14, %d15, %d15, 0

# CHECK-INST: cadd %d14, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0xef]
.code32
cadd %d14, %d15, %d15, 1

# CHECK-INST: cadd %d14, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0xef]
.code32
cadd %d14, %d15, %d15, 128

# CHECK-INST: cadd %d14, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0xef]
.code32
cadd %d14, %d15, %d15, 255

# CHECK-INST: cadd %d15, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0xf0]
.code32
cadd %d15, %d0, %d0, -256

# CHECK-INST: cadd %d15, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0xf0]
.code32
cadd %d15, %d0, %d0, -129

# CHECK-INST: cadd %d15, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0xf0]
.code32
cadd %d15, %d0, %d0, -1

# CHECK-INST: cadd %d15, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0xf0]
.code32
cadd %d15, %d0, %d0, 0

# CHECK-INST: cadd %d15, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0xf0]
.code32
cadd %d15, %d0, %d0, 1

# CHECK-INST: cadd %d15, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0xf0]
.code32
cadd %d15, %d0, %d0, 128

# CHECK-INST: cadd %d15, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0xf0]
.code32
cadd %d15, %d0, %d0, 255

# CHECK-INST: cadd %d15, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0xf0]
.code32
cadd %d15, %d0, %d1, -256

# CHECK-INST: cadd %d15, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0xf0]
.code32
cadd %d15, %d0, %d1, -129

# CHECK-INST: cadd %d15, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0xf0]
.code32
cadd %d15, %d0, %d1, -1

# CHECK-INST: cadd %d15, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0xf0]
.code32
cadd %d15, %d0, %d1, 0

# CHECK-INST: cadd %d15, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0xf0]
.code32
cadd %d15, %d0, %d1, 1

# CHECK-INST: cadd %d15, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0xf0]
.code32
cadd %d15, %d0, %d1, 128

# CHECK-INST: cadd %d15, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0xf0]
.code32
cadd %d15, %d0, %d1, 255

# CHECK-INST: cadd %d15, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0xf0]
.code32
cadd %d15, %d0, %d14, -256

# CHECK-INST: cadd %d15, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0xf0]
.code32
cadd %d15, %d0, %d14, -129

# CHECK-INST: cadd %d15, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0xf0]
.code32
cadd %d15, %d0, %d14, -1

# CHECK-INST: cadd %d15, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0xf0]
.code32
cadd %d15, %d0, %d14, 0

# CHECK-INST: cadd %d15, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0xf0]
.code32
cadd %d15, %d0, %d14, 1

# CHECK-INST: cadd %d15, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0xf0]
.code32
cadd %d15, %d0, %d14, 128

# CHECK-INST: cadd %d15, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0xf0]
.code32
cadd %d15, %d0, %d14, 255

# CHECK-INST: cadd %d15, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0xf0]
.code32
cadd %d15, %d0, %d15, -256

# CHECK-INST: cadd %d15, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0xf0]
.code32
cadd %d15, %d0, %d15, -129

# CHECK-INST: cadd %d15, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0xf0]
.code32
cadd %d15, %d0, %d15, -1

# CHECK-INST: cadd %d15, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0xf0]
.code32
cadd %d15, %d0, %d15, 0

# CHECK-INST: cadd %d15, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0xf0]
.code32
cadd %d15, %d0, %d15, 1

# CHECK-INST: cadd %d15, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0xf0]
.code32
cadd %d15, %d0, %d15, 128

# CHECK-INST: cadd %d15, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0xf0]
.code32
cadd %d15, %d0, %d15, 255

# CHECK-INST: cadd %d15, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0xf1]
.code32
cadd %d15, %d1, %d0, -256

# CHECK-INST: cadd %d15, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0xf1]
.code32
cadd %d15, %d1, %d0, -129

# CHECK-INST: cadd %d15, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0xf1]
.code32
cadd %d15, %d1, %d0, -1

# CHECK-INST: cadd %d15, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0xf1]
.code32
cadd %d15, %d1, %d0, 0

# CHECK-INST: cadd %d15, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0xf1]
.code32
cadd %d15, %d1, %d0, 1

# CHECK-INST: cadd %d15, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0xf1]
.code32
cadd %d15, %d1, %d0, 128

# CHECK-INST: cadd %d15, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0xf1]
.code32
cadd %d15, %d1, %d0, 255

# CHECK-INST: cadd %d15, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0xf1]
.code32
cadd %d15, %d1, %d1, -256

# CHECK-INST: cadd %d15, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0xf1]
.code32
cadd %d15, %d1, %d1, -129

# CHECK-INST: cadd %d15, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0xf1]
.code32
cadd %d15, %d1, %d1, -1

# CHECK-INST: cadd %d15, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0xf1]
.code32
cadd %d15, %d1, %d1, 0

# CHECK-INST: cadd %d15, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0xf1]
.code32
cadd %d15, %d1, %d1, 1

# CHECK-INST: cadd %d15, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0xf1]
.code32
cadd %d15, %d1, %d1, 128

# CHECK-INST: cadd %d15, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0xf1]
.code32
cadd %d15, %d1, %d1, 255

# CHECK-INST: cadd %d15, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0xf1]
.code32
cadd %d15, %d1, %d14, -256

# CHECK-INST: cadd %d15, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0xf1]
.code32
cadd %d15, %d1, %d14, -129

# CHECK-INST: cadd %d15, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0xf1]
.code32
cadd %d15, %d1, %d14, -1

# CHECK-INST: cadd %d15, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0xf1]
.code32
cadd %d15, %d1, %d14, 0

# CHECK-INST: cadd %d15, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0xf1]
.code32
cadd %d15, %d1, %d14, 1

# CHECK-INST: cadd %d15, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0xf1]
.code32
cadd %d15, %d1, %d14, 128

# CHECK-INST: cadd %d15, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0xf1]
.code32
cadd %d15, %d1, %d14, 255

# CHECK-INST: cadd %d15, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0xf1]
.code32
cadd %d15, %d1, %d15, -256

# CHECK-INST: cadd %d15, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0xf1]
.code32
cadd %d15, %d1, %d15, -129

# CHECK-INST: cadd %d15, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0xf1]
.code32
cadd %d15, %d1, %d15, -1

# CHECK-INST: cadd %d15, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0xf1]
.code32
cadd %d15, %d1, %d15, 0

# CHECK-INST: cadd %d15, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0xf1]
.code32
cadd %d15, %d1, %d15, 1

# CHECK-INST: cadd %d15, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0xf1]
.code32
cadd %d15, %d1, %d15, 128

# CHECK-INST: cadd %d15, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0xf1]
.code32
cadd %d15, %d1, %d15, 255

# CHECK-INST: cadd %d15, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0xfe]
.code32
cadd %d15, %d14, %d0, -256

# CHECK-INST: cadd %d15, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0xfe]
.code32
cadd %d15, %d14, %d0, -129

# CHECK-INST: cadd %d15, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0xfe]
.code32
cadd %d15, %d14, %d0, -1

# CHECK-INST: cadd %d15, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0xfe]
.code32
cadd %d15, %d14, %d0, 0

# CHECK-INST: cadd %d15, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0xfe]
.code32
cadd %d15, %d14, %d0, 1

# CHECK-INST: cadd %d15, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0xfe]
.code32
cadd %d15, %d14, %d0, 128

# CHECK-INST: cadd %d15, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0xfe]
.code32
cadd %d15, %d14, %d0, 255

# CHECK-INST: cadd %d15, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0xfe]
.code32
cadd %d15, %d14, %d1, -256

# CHECK-INST: cadd %d15, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0xfe]
.code32
cadd %d15, %d14, %d1, -129

# CHECK-INST: cadd %d15, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0xfe]
.code32
cadd %d15, %d14, %d1, -1

# CHECK-INST: cadd %d15, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0xfe]
.code32
cadd %d15, %d14, %d1, 0

# CHECK-INST: cadd %d15, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0xfe]
.code32
cadd %d15, %d14, %d1, 1

# CHECK-INST: cadd %d15, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0xfe]
.code32
cadd %d15, %d14, %d1, 128

# CHECK-INST: cadd %d15, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0xfe]
.code32
cadd %d15, %d14, %d1, 255

# CHECK-INST: cadd %d15, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0xfe]
.code32
cadd %d15, %d14, %d14, -256

# CHECK-INST: cadd %d15, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0xfe]
.code32
cadd %d15, %d14, %d14, -129

# CHECK-INST: cadd %d15, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0xfe]
.code32
cadd %d15, %d14, %d14, -1

# CHECK-INST: cadd %d15, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0xfe]
.code32
cadd %d15, %d14, %d14, 0

# CHECK-INST: cadd %d15, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0xfe]
.code32
cadd %d15, %d14, %d14, 1

# CHECK-INST: cadd %d15, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0xfe]
.code32
cadd %d15, %d14, %d14, 128

# CHECK-INST: cadd %d15, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0xfe]
.code32
cadd %d15, %d14, %d14, 255

# CHECK-INST: cadd %d15, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0xfe]
.code32
cadd %d15, %d14, %d15, -256

# CHECK-INST: cadd %d15, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0xfe]
.code32
cadd %d15, %d14, %d15, -129

# CHECK-INST: cadd %d15, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0xfe]
.code32
cadd %d15, %d14, %d15, -1

# CHECK-INST: cadd %d15, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0xfe]
.code32
cadd %d15, %d14, %d15, 0

# CHECK-INST: cadd %d15, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0xfe]
.code32
cadd %d15, %d14, %d15, 1

# CHECK-INST: cadd %d15, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0xfe]
.code32
cadd %d15, %d14, %d15, 128

# CHECK-INST: cadd %d15, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0xfe]
.code32
cadd %d15, %d14, %d15, 255

# CHECK-INST: cadd %d15, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0xff]
.code32
cadd %d15, %d15, %d0, -256

# CHECK-INST: cadd %d15, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0xff]
.code32
cadd %d15, %d15, %d0, -129

# CHECK-INST: cadd %d15, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0xff]
.code32
cadd %d15, %d15, %d0, -1

# CHECK-INST: cadd %d15, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0xff]
.code32
cadd %d15, %d15, %d0, 0

# CHECK-INST: cadd %d15, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0xff]
.code32
cadd %d15, %d15, %d0, 1

# CHECK-INST: cadd %d15, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0xff]
.code32
cadd %d15, %d15, %d0, 128

# CHECK-INST: cadd %d15, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0xff]
.code32
cadd %d15, %d15, %d0, 255

# CHECK-INST: cadd %d15, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0xff]
.code32
cadd %d15, %d15, %d1, -256

# CHECK-INST: cadd %d15, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0xff]
.code32
cadd %d15, %d15, %d1, -129

# CHECK-INST: cadd %d15, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0xff]
.code32
cadd %d15, %d15, %d1, -1

# CHECK-INST: cadd %d15, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0xff]
.code32
cadd %d15, %d15, %d1, 0

# CHECK-INST: cadd %d15, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0xff]
.code32
cadd %d15, %d15, %d1, 1

# CHECK-INST: cadd %d15, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0xff]
.code32
cadd %d15, %d15, %d1, 128

# CHECK-INST: cadd %d15, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0xff]
.code32
cadd %d15, %d15, %d1, 255

# CHECK-INST: cadd %d15, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0xff]
.code32
cadd %d15, %d15, %d14, -256

# CHECK-INST: cadd %d15, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0xff]
.code32
cadd %d15, %d15, %d14, -129

# CHECK-INST: cadd %d15, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0xff]
.code32
cadd %d15, %d15, %d14, -1

# CHECK-INST: cadd %d15, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0xff]
.code32
cadd %d15, %d15, %d14, 0

# CHECK-INST: cadd %d15, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0xff]
.code32
cadd %d15, %d15, %d14, 1

# CHECK-INST: cadd %d15, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0xff]
.code32
cadd %d15, %d15, %d14, 128

# CHECK-INST: cadd %d15, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0xff]
.code32
cadd %d15, %d15, %d14, 255

# CHECK-INST: cadd %d15, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0xff]
.code32
cadd %d15, %d15, %d15, -256

# CHECK-INST: cadd %d15, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0xff]
.code32
cadd %d15, %d15, %d15, -129

# CHECK-INST: cadd %d15, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0xff]
.code32
cadd %d15, %d15, %d15, -1

# CHECK-INST: cadd %d15, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0xff]
.code32
cadd %d15, %d15, %d15, 0

# CHECK-INST: cadd %d15, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0xff]
.code32
cadd %d15, %d15, %d15, 1

# CHECK-INST: cadd %d15, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0xff]
.code32
cadd %d15, %d15, %d15, 128

# CHECK-INST: cadd %d15, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0xff]
.code32
cadd %d15, %d15, %d15, 255

# CHECK-INST: caddn %d0, %d15, -8
# CHECK: encoding: [0xca,0x80]
.code16
caddn %d0, %d15, -8

# CHECK-INST: caddn %d0, %d15, -1
# CHECK: encoding: [0xca,0xf0]
.code16
caddn %d0, %d15, -1

# CHECK-INST: caddn %d0, %d15, 0
# CHECK: encoding: [0xca,0x00]
.code16
caddn %d0, %d15, 0

# CHECK-INST: caddn %d0, %d15, 1
# CHECK: encoding: [0xca,0x10]
.code16
caddn %d0, %d15, 1

# CHECK-INST: caddn %d0, %d15, 7
# CHECK: encoding: [0xca,0x70]
.code16
caddn %d0, %d15, 7

# CHECK-INST: caddn %d1, %d15, -8
# CHECK: encoding: [0xca,0x81]
.code16
caddn %d1, %d15, -8

# CHECK-INST: caddn %d1, %d15, -1
# CHECK: encoding: [0xca,0xf1]
.code16
caddn %d1, %d15, -1

# CHECK-INST: caddn %d1, %d15, 0
# CHECK: encoding: [0xca,0x01]
.code16
caddn %d1, %d15, 0

# CHECK-INST: caddn %d1, %d15, 1
# CHECK: encoding: [0xca,0x11]
.code16
caddn %d1, %d15, 1

# CHECK-INST: caddn %d1, %d15, 7
# CHECK: encoding: [0xca,0x71]
.code16
caddn %d1, %d15, 7

# CHECK-INST: caddn %d14, %d15, -8
# CHECK: encoding: [0xca,0x8e]
.code16
caddn %d14, %d15, -8

# CHECK-INST: caddn %d14, %d15, -1
# CHECK: encoding: [0xca,0xfe]
.code16
caddn %d14, %d15, -1

# CHECK-INST: caddn %d14, %d15, 0
# CHECK: encoding: [0xca,0x0e]
.code16
caddn %d14, %d15, 0

# CHECK-INST: caddn %d14, %d15, 1
# CHECK: encoding: [0xca,0x1e]
.code16
caddn %d14, %d15, 1

# CHECK-INST: caddn %d14, %d15, 7
# CHECK: encoding: [0xca,0x7e]
.code16
caddn %d14, %d15, 7

# CHECK-INST: caddn %d15, %d15, -8
# CHECK: encoding: [0xca,0x8f]
.code16
caddn %d15, %d15, -8

# CHECK-INST: caddn %d15, %d15, -1
# CHECK: encoding: [0xca,0xff]
.code16
caddn %d15, %d15, -1

# CHECK-INST: caddn %d15, %d15, 0
# CHECK: encoding: [0xca,0x0f]
.code16
caddn %d15, %d15, 0

# CHECK-INST: caddn %d15, %d15, 1
# CHECK: encoding: [0xca,0x1f]
.code16
caddn %d15, %d15, 1

# CHECK-INST: caddn %d15, %d15, 7
# CHECK: encoding: [0xca,0x7f]
.code16
caddn %d15, %d15, 7

# CHECK-INST: caddn %d0, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0x00]
.code32
caddn %d0, %d0, %d0, %d0

# CHECK-INST: caddn %d0, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0x00]
.code32
caddn %d0, %d0, %d0, %d1

# CHECK-INST: caddn %d0, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0x00]
.code32
caddn %d0, %d0, %d0, %d14

# CHECK-INST: caddn %d0, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0x00]
.code32
caddn %d0, %d0, %d0, %d15

# CHECK-INST: caddn %d0, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0x00]
.code32
caddn %d0, %d0, %d1, %d0

# CHECK-INST: caddn %d0, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0x00]
.code32
caddn %d0, %d0, %d1, %d1

# CHECK-INST: caddn %d0, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0x00]
.code32
caddn %d0, %d0, %d1, %d14

# CHECK-INST: caddn %d0, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0x00]
.code32
caddn %d0, %d0, %d1, %d15

# CHECK-INST: caddn %d0, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0x00]
.code32
caddn %d0, %d0, %d14, %d0

# CHECK-INST: caddn %d0, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0x00]
.code32
caddn %d0, %d0, %d14, %d1

# CHECK-INST: caddn %d0, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0x00]
.code32
caddn %d0, %d0, %d14, %d14

# CHECK-INST: caddn %d0, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0x00]
.code32
caddn %d0, %d0, %d14, %d15

# CHECK-INST: caddn %d0, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0x00]
.code32
caddn %d0, %d0, %d15, %d0

# CHECK-INST: caddn %d0, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0x00]
.code32
caddn %d0, %d0, %d15, %d1

# CHECK-INST: caddn %d0, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0x00]
.code32
caddn %d0, %d0, %d15, %d14

# CHECK-INST: caddn %d0, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0x00]
.code32
caddn %d0, %d0, %d15, %d15

# CHECK-INST: caddn %d0, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0x01]
.code32
caddn %d0, %d1, %d0, %d0

# CHECK-INST: caddn %d0, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0x01]
.code32
caddn %d0, %d1, %d0, %d1

# CHECK-INST: caddn %d0, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0x01]
.code32
caddn %d0, %d1, %d0, %d14

# CHECK-INST: caddn %d0, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0x01]
.code32
caddn %d0, %d1, %d0, %d15

# CHECK-INST: caddn %d0, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0x01]
.code32
caddn %d0, %d1, %d1, %d0

# CHECK-INST: caddn %d0, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0x01]
.code32
caddn %d0, %d1, %d1, %d1

# CHECK-INST: caddn %d0, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0x01]
.code32
caddn %d0, %d1, %d1, %d14

# CHECK-INST: caddn %d0, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0x01]
.code32
caddn %d0, %d1, %d1, %d15

# CHECK-INST: caddn %d0, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0x01]
.code32
caddn %d0, %d1, %d14, %d0

# CHECK-INST: caddn %d0, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0x01]
.code32
caddn %d0, %d1, %d14, %d1

# CHECK-INST: caddn %d0, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0x01]
.code32
caddn %d0, %d1, %d14, %d14

# CHECK-INST: caddn %d0, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0x01]
.code32
caddn %d0, %d1, %d14, %d15

# CHECK-INST: caddn %d0, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0x01]
.code32
caddn %d0, %d1, %d15, %d0

# CHECK-INST: caddn %d0, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0x01]
.code32
caddn %d0, %d1, %d15, %d1

# CHECK-INST: caddn %d0, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0x01]
.code32
caddn %d0, %d1, %d15, %d14

# CHECK-INST: caddn %d0, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0x01]
.code32
caddn %d0, %d1, %d15, %d15

# CHECK-INST: caddn %d0, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0x0e]
.code32
caddn %d0, %d14, %d0, %d0

# CHECK-INST: caddn %d0, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0x0e]
.code32
caddn %d0, %d14, %d0, %d1

# CHECK-INST: caddn %d0, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0x0e]
.code32
caddn %d0, %d14, %d0, %d14

# CHECK-INST: caddn %d0, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0x0e]
.code32
caddn %d0, %d14, %d0, %d15

# CHECK-INST: caddn %d0, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0x0e]
.code32
caddn %d0, %d14, %d1, %d0

# CHECK-INST: caddn %d0, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0x0e]
.code32
caddn %d0, %d14, %d1, %d1

# CHECK-INST: caddn %d0, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0x0e]
.code32
caddn %d0, %d14, %d1, %d14

# CHECK-INST: caddn %d0, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0x0e]
.code32
caddn %d0, %d14, %d1, %d15

# CHECK-INST: caddn %d0, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0x0e]
.code32
caddn %d0, %d14, %d14, %d0

# CHECK-INST: caddn %d0, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0x0e]
.code32
caddn %d0, %d14, %d14, %d1

# CHECK-INST: caddn %d0, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0x0e]
.code32
caddn %d0, %d14, %d14, %d14

# CHECK-INST: caddn %d0, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0x0e]
.code32
caddn %d0, %d14, %d14, %d15

# CHECK-INST: caddn %d0, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0x0e]
.code32
caddn %d0, %d14, %d15, %d0

# CHECK-INST: caddn %d0, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0x0e]
.code32
caddn %d0, %d14, %d15, %d1

# CHECK-INST: caddn %d0, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0x0e]
.code32
caddn %d0, %d14, %d15, %d14

# CHECK-INST: caddn %d0, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0x0e]
.code32
caddn %d0, %d14, %d15, %d15

# CHECK-INST: caddn %d0, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0x0f]
.code32
caddn %d0, %d15, %d0, %d0

# CHECK-INST: caddn %d0, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0x0f]
.code32
caddn %d0, %d15, %d0, %d1

# CHECK-INST: caddn %d0, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0x0f]
.code32
caddn %d0, %d15, %d0, %d14

# CHECK-INST: caddn %d0, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0x0f]
.code32
caddn %d0, %d15, %d0, %d15

# CHECK-INST: caddn %d0, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0x0f]
.code32
caddn %d0, %d15, %d1, %d0

# CHECK-INST: caddn %d0, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0x0f]
.code32
caddn %d0, %d15, %d1, %d1

# CHECK-INST: caddn %d0, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0x0f]
.code32
caddn %d0, %d15, %d1, %d14

# CHECK-INST: caddn %d0, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0x0f]
.code32
caddn %d0, %d15, %d1, %d15

# CHECK-INST: caddn %d0, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0x0f]
.code32
caddn %d0, %d15, %d14, %d0

# CHECK-INST: caddn %d0, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0x0f]
.code32
caddn %d0, %d15, %d14, %d1

# CHECK-INST: caddn %d0, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0x0f]
.code32
caddn %d0, %d15, %d14, %d14

# CHECK-INST: caddn %d0, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0x0f]
.code32
caddn %d0, %d15, %d14, %d15

# CHECK-INST: caddn %d0, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0x0f]
.code32
caddn %d0, %d15, %d15, %d0

# CHECK-INST: caddn %d0, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0x0f]
.code32
caddn %d0, %d15, %d15, %d1

# CHECK-INST: caddn %d0, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0x0f]
.code32
caddn %d0, %d15, %d15, %d14

# CHECK-INST: caddn %d0, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0x0f]
.code32
caddn %d0, %d15, %d15, %d15

# CHECK-INST: caddn %d1, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0x10]
.code32
caddn %d1, %d0, %d0, %d0

# CHECK-INST: caddn %d1, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0x10]
.code32
caddn %d1, %d0, %d0, %d1

# CHECK-INST: caddn %d1, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0x10]
.code32
caddn %d1, %d0, %d0, %d14

# CHECK-INST: caddn %d1, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0x10]
.code32
caddn %d1, %d0, %d0, %d15

# CHECK-INST: caddn %d1, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0x10]
.code32
caddn %d1, %d0, %d1, %d0

# CHECK-INST: caddn %d1, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0x10]
.code32
caddn %d1, %d0, %d1, %d1

# CHECK-INST: caddn %d1, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0x10]
.code32
caddn %d1, %d0, %d1, %d14

# CHECK-INST: caddn %d1, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0x10]
.code32
caddn %d1, %d0, %d1, %d15

# CHECK-INST: caddn %d1, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0x10]
.code32
caddn %d1, %d0, %d14, %d0

# CHECK-INST: caddn %d1, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0x10]
.code32
caddn %d1, %d0, %d14, %d1

# CHECK-INST: caddn %d1, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0x10]
.code32
caddn %d1, %d0, %d14, %d14

# CHECK-INST: caddn %d1, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0x10]
.code32
caddn %d1, %d0, %d14, %d15

# CHECK-INST: caddn %d1, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0x10]
.code32
caddn %d1, %d0, %d15, %d0

# CHECK-INST: caddn %d1, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0x10]
.code32
caddn %d1, %d0, %d15, %d1

# CHECK-INST: caddn %d1, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0x10]
.code32
caddn %d1, %d0, %d15, %d14

# CHECK-INST: caddn %d1, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0x10]
.code32
caddn %d1, %d0, %d15, %d15

# CHECK-INST: caddn %d1, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0x11]
.code32
caddn %d1, %d1, %d0, %d0

# CHECK-INST: caddn %d1, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0x11]
.code32
caddn %d1, %d1, %d0, %d1

# CHECK-INST: caddn %d1, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0x11]
.code32
caddn %d1, %d1, %d0, %d14

# CHECK-INST: caddn %d1, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0x11]
.code32
caddn %d1, %d1, %d0, %d15

# CHECK-INST: caddn %d1, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0x11]
.code32
caddn %d1, %d1, %d1, %d0

# CHECK-INST: caddn %d1, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0x11]
.code32
caddn %d1, %d1, %d1, %d1

# CHECK-INST: caddn %d1, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0x11]
.code32
caddn %d1, %d1, %d1, %d14

# CHECK-INST: caddn %d1, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0x11]
.code32
caddn %d1, %d1, %d1, %d15

# CHECK-INST: caddn %d1, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0x11]
.code32
caddn %d1, %d1, %d14, %d0

# CHECK-INST: caddn %d1, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0x11]
.code32
caddn %d1, %d1, %d14, %d1

# CHECK-INST: caddn %d1, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0x11]
.code32
caddn %d1, %d1, %d14, %d14

# CHECK-INST: caddn %d1, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0x11]
.code32
caddn %d1, %d1, %d14, %d15

# CHECK-INST: caddn %d1, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0x11]
.code32
caddn %d1, %d1, %d15, %d0

# CHECK-INST: caddn %d1, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0x11]
.code32
caddn %d1, %d1, %d15, %d1

# CHECK-INST: caddn %d1, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0x11]
.code32
caddn %d1, %d1, %d15, %d14

# CHECK-INST: caddn %d1, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0x11]
.code32
caddn %d1, %d1, %d15, %d15

# CHECK-INST: caddn %d1, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0x1e]
.code32
caddn %d1, %d14, %d0, %d0

# CHECK-INST: caddn %d1, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0x1e]
.code32
caddn %d1, %d14, %d0, %d1

# CHECK-INST: caddn %d1, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0x1e]
.code32
caddn %d1, %d14, %d0, %d14

# CHECK-INST: caddn %d1, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0x1e]
.code32
caddn %d1, %d14, %d0, %d15

# CHECK-INST: caddn %d1, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0x1e]
.code32
caddn %d1, %d14, %d1, %d0

# CHECK-INST: caddn %d1, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0x1e]
.code32
caddn %d1, %d14, %d1, %d1

# CHECK-INST: caddn %d1, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0x1e]
.code32
caddn %d1, %d14, %d1, %d14

# CHECK-INST: caddn %d1, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0x1e]
.code32
caddn %d1, %d14, %d1, %d15

# CHECK-INST: caddn %d1, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0x1e]
.code32
caddn %d1, %d14, %d14, %d0

# CHECK-INST: caddn %d1, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0x1e]
.code32
caddn %d1, %d14, %d14, %d1

# CHECK-INST: caddn %d1, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0x1e]
.code32
caddn %d1, %d14, %d14, %d14

# CHECK-INST: caddn %d1, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0x1e]
.code32
caddn %d1, %d14, %d14, %d15

# CHECK-INST: caddn %d1, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0x1e]
.code32
caddn %d1, %d14, %d15, %d0

# CHECK-INST: caddn %d1, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0x1e]
.code32
caddn %d1, %d14, %d15, %d1

# CHECK-INST: caddn %d1, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0x1e]
.code32
caddn %d1, %d14, %d15, %d14

# CHECK-INST: caddn %d1, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0x1e]
.code32
caddn %d1, %d14, %d15, %d15

# CHECK-INST: caddn %d1, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0x1f]
.code32
caddn %d1, %d15, %d0, %d0

# CHECK-INST: caddn %d1, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0x1f]
.code32
caddn %d1, %d15, %d0, %d1

# CHECK-INST: caddn %d1, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0x1f]
.code32
caddn %d1, %d15, %d0, %d14

# CHECK-INST: caddn %d1, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0x1f]
.code32
caddn %d1, %d15, %d0, %d15

# CHECK-INST: caddn %d1, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0x1f]
.code32
caddn %d1, %d15, %d1, %d0

# CHECK-INST: caddn %d1, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0x1f]
.code32
caddn %d1, %d15, %d1, %d1

# CHECK-INST: caddn %d1, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0x1f]
.code32
caddn %d1, %d15, %d1, %d14

# CHECK-INST: caddn %d1, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0x1f]
.code32
caddn %d1, %d15, %d1, %d15

# CHECK-INST: caddn %d1, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0x1f]
.code32
caddn %d1, %d15, %d14, %d0

# CHECK-INST: caddn %d1, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0x1f]
.code32
caddn %d1, %d15, %d14, %d1

# CHECK-INST: caddn %d1, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0x1f]
.code32
caddn %d1, %d15, %d14, %d14

# CHECK-INST: caddn %d1, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0x1f]
.code32
caddn %d1, %d15, %d14, %d15

# CHECK-INST: caddn %d1, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0x1f]
.code32
caddn %d1, %d15, %d15, %d0

# CHECK-INST: caddn %d1, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0x1f]
.code32
caddn %d1, %d15, %d15, %d1

# CHECK-INST: caddn %d1, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0x1f]
.code32
caddn %d1, %d15, %d15, %d14

# CHECK-INST: caddn %d1, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0x1f]
.code32
caddn %d1, %d15, %d15, %d15

# CHECK-INST: caddn %d14, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0xe0]
.code32
caddn %d14, %d0, %d0, %d0

# CHECK-INST: caddn %d14, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0xe0]
.code32
caddn %d14, %d0, %d0, %d1

# CHECK-INST: caddn %d14, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0xe0]
.code32
caddn %d14, %d0, %d0, %d14

# CHECK-INST: caddn %d14, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0xe0]
.code32
caddn %d14, %d0, %d0, %d15

# CHECK-INST: caddn %d14, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0xe0]
.code32
caddn %d14, %d0, %d1, %d0

# CHECK-INST: caddn %d14, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0xe0]
.code32
caddn %d14, %d0, %d1, %d1

# CHECK-INST: caddn %d14, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0xe0]
.code32
caddn %d14, %d0, %d1, %d14

# CHECK-INST: caddn %d14, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0xe0]
.code32
caddn %d14, %d0, %d1, %d15

# CHECK-INST: caddn %d14, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0xe0]
.code32
caddn %d14, %d0, %d14, %d0

# CHECK-INST: caddn %d14, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0xe0]
.code32
caddn %d14, %d0, %d14, %d1

# CHECK-INST: caddn %d14, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0xe0]
.code32
caddn %d14, %d0, %d14, %d14

# CHECK-INST: caddn %d14, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0xe0]
.code32
caddn %d14, %d0, %d14, %d15

# CHECK-INST: caddn %d14, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0xe0]
.code32
caddn %d14, %d0, %d15, %d0

# CHECK-INST: caddn %d14, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0xe0]
.code32
caddn %d14, %d0, %d15, %d1

# CHECK-INST: caddn %d14, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0xe0]
.code32
caddn %d14, %d0, %d15, %d14

# CHECK-INST: caddn %d14, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0xe0]
.code32
caddn %d14, %d0, %d15, %d15

# CHECK-INST: caddn %d14, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0xe1]
.code32
caddn %d14, %d1, %d0, %d0

# CHECK-INST: caddn %d14, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0xe1]
.code32
caddn %d14, %d1, %d0, %d1

# CHECK-INST: caddn %d14, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0xe1]
.code32
caddn %d14, %d1, %d0, %d14

# CHECK-INST: caddn %d14, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0xe1]
.code32
caddn %d14, %d1, %d0, %d15

# CHECK-INST: caddn %d14, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0xe1]
.code32
caddn %d14, %d1, %d1, %d0

# CHECK-INST: caddn %d14, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0xe1]
.code32
caddn %d14, %d1, %d1, %d1

# CHECK-INST: caddn %d14, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0xe1]
.code32
caddn %d14, %d1, %d1, %d14

# CHECK-INST: caddn %d14, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0xe1]
.code32
caddn %d14, %d1, %d1, %d15

# CHECK-INST: caddn %d14, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0xe1]
.code32
caddn %d14, %d1, %d14, %d0

# CHECK-INST: caddn %d14, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0xe1]
.code32
caddn %d14, %d1, %d14, %d1

# CHECK-INST: caddn %d14, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0xe1]
.code32
caddn %d14, %d1, %d14, %d14

# CHECK-INST: caddn %d14, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0xe1]
.code32
caddn %d14, %d1, %d14, %d15

# CHECK-INST: caddn %d14, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0xe1]
.code32
caddn %d14, %d1, %d15, %d0

# CHECK-INST: caddn %d14, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0xe1]
.code32
caddn %d14, %d1, %d15, %d1

# CHECK-INST: caddn %d14, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0xe1]
.code32
caddn %d14, %d1, %d15, %d14

# CHECK-INST: caddn %d14, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0xe1]
.code32
caddn %d14, %d1, %d15, %d15

# CHECK-INST: caddn %d14, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0xee]
.code32
caddn %d14, %d14, %d0, %d0

# CHECK-INST: caddn %d14, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0xee]
.code32
caddn %d14, %d14, %d0, %d1

# CHECK-INST: caddn %d14, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0xee]
.code32
caddn %d14, %d14, %d0, %d14

# CHECK-INST: caddn %d14, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0xee]
.code32
caddn %d14, %d14, %d0, %d15

# CHECK-INST: caddn %d14, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0xee]
.code32
caddn %d14, %d14, %d1, %d0

# CHECK-INST: caddn %d14, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0xee]
.code32
caddn %d14, %d14, %d1, %d1

# CHECK-INST: caddn %d14, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0xee]
.code32
caddn %d14, %d14, %d1, %d14

# CHECK-INST: caddn %d14, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0xee]
.code32
caddn %d14, %d14, %d1, %d15

# CHECK-INST: caddn %d14, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0xee]
.code32
caddn %d14, %d14, %d14, %d0

# CHECK-INST: caddn %d14, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0xee]
.code32
caddn %d14, %d14, %d14, %d1

# CHECK-INST: caddn %d14, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0xee]
.code32
caddn %d14, %d14, %d14, %d14

# CHECK-INST: caddn %d14, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0xee]
.code32
caddn %d14, %d14, %d14, %d15

# CHECK-INST: caddn %d14, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0xee]
.code32
caddn %d14, %d14, %d15, %d0

# CHECK-INST: caddn %d14, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0xee]
.code32
caddn %d14, %d14, %d15, %d1

# CHECK-INST: caddn %d14, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0xee]
.code32
caddn %d14, %d14, %d15, %d14

# CHECK-INST: caddn %d14, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0xee]
.code32
caddn %d14, %d14, %d15, %d15

# CHECK-INST: caddn %d14, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0xef]
.code32
caddn %d14, %d15, %d0, %d0

# CHECK-INST: caddn %d14, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0xef]
.code32
caddn %d14, %d15, %d0, %d1

# CHECK-INST: caddn %d14, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0xef]
.code32
caddn %d14, %d15, %d0, %d14

# CHECK-INST: caddn %d14, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0xef]
.code32
caddn %d14, %d15, %d0, %d15

# CHECK-INST: caddn %d14, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0xef]
.code32
caddn %d14, %d15, %d1, %d0

# CHECK-INST: caddn %d14, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0xef]
.code32
caddn %d14, %d15, %d1, %d1

# CHECK-INST: caddn %d14, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0xef]
.code32
caddn %d14, %d15, %d1, %d14

# CHECK-INST: caddn %d14, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0xef]
.code32
caddn %d14, %d15, %d1, %d15

# CHECK-INST: caddn %d14, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0xef]
.code32
caddn %d14, %d15, %d14, %d0

# CHECK-INST: caddn %d14, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0xef]
.code32
caddn %d14, %d15, %d14, %d1

# CHECK-INST: caddn %d14, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0xef]
.code32
caddn %d14, %d15, %d14, %d14

# CHECK-INST: caddn %d14, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0xef]
.code32
caddn %d14, %d15, %d14, %d15

# CHECK-INST: caddn %d14, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0xef]
.code32
caddn %d14, %d15, %d15, %d0

# CHECK-INST: caddn %d14, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0xef]
.code32
caddn %d14, %d15, %d15, %d1

# CHECK-INST: caddn %d14, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0xef]
.code32
caddn %d14, %d15, %d15, %d14

# CHECK-INST: caddn %d14, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0xef]
.code32
caddn %d14, %d15, %d15, %d15

# CHECK-INST: caddn %d15, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0xf0]
.code32
caddn %d15, %d0, %d0, %d0

# CHECK-INST: caddn %d15, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0xf0]
.code32
caddn %d15, %d0, %d0, %d1

# CHECK-INST: caddn %d15, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0xf0]
.code32
caddn %d15, %d0, %d0, %d14

# CHECK-INST: caddn %d15, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0xf0]
.code32
caddn %d15, %d0, %d0, %d15

# CHECK-INST: caddn %d15, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0xf0]
.code32
caddn %d15, %d0, %d1, %d0

# CHECK-INST: caddn %d15, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0xf0]
.code32
caddn %d15, %d0, %d1, %d1

# CHECK-INST: caddn %d15, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0xf0]
.code32
caddn %d15, %d0, %d1, %d14

# CHECK-INST: caddn %d15, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0xf0]
.code32
caddn %d15, %d0, %d1, %d15

# CHECK-INST: caddn %d15, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0xf0]
.code32
caddn %d15, %d0, %d14, %d0

# CHECK-INST: caddn %d15, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0xf0]
.code32
caddn %d15, %d0, %d14, %d1

# CHECK-INST: caddn %d15, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0xf0]
.code32
caddn %d15, %d0, %d14, %d14

# CHECK-INST: caddn %d15, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0xf0]
.code32
caddn %d15, %d0, %d14, %d15

# CHECK-INST: caddn %d15, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0xf0]
.code32
caddn %d15, %d0, %d15, %d0

# CHECK-INST: caddn %d15, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0xf0]
.code32
caddn %d15, %d0, %d15, %d1

# CHECK-INST: caddn %d15, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0xf0]
.code32
caddn %d15, %d0, %d15, %d14

# CHECK-INST: caddn %d15, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0xf0]
.code32
caddn %d15, %d0, %d15, %d15

# CHECK-INST: caddn %d15, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0xf1]
.code32
caddn %d15, %d1, %d0, %d0

# CHECK-INST: caddn %d15, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0xf1]
.code32
caddn %d15, %d1, %d0, %d1

# CHECK-INST: caddn %d15, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0xf1]
.code32
caddn %d15, %d1, %d0, %d14

# CHECK-INST: caddn %d15, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0xf1]
.code32
caddn %d15, %d1, %d0, %d15

# CHECK-INST: caddn %d15, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0xf1]
.code32
caddn %d15, %d1, %d1, %d0

# CHECK-INST: caddn %d15, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0xf1]
.code32
caddn %d15, %d1, %d1, %d1

# CHECK-INST: caddn %d15, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0xf1]
.code32
caddn %d15, %d1, %d1, %d14

# CHECK-INST: caddn %d15, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0xf1]
.code32
caddn %d15, %d1, %d1, %d15

# CHECK-INST: caddn %d15, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0xf1]
.code32
caddn %d15, %d1, %d14, %d0

# CHECK-INST: caddn %d15, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0xf1]
.code32
caddn %d15, %d1, %d14, %d1

# CHECK-INST: caddn %d15, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0xf1]
.code32
caddn %d15, %d1, %d14, %d14

# CHECK-INST: caddn %d15, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0xf1]
.code32
caddn %d15, %d1, %d14, %d15

# CHECK-INST: caddn %d15, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0xf1]
.code32
caddn %d15, %d1, %d15, %d0

# CHECK-INST: caddn %d15, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0xf1]
.code32
caddn %d15, %d1, %d15, %d1

# CHECK-INST: caddn %d15, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0xf1]
.code32
caddn %d15, %d1, %d15, %d14

# CHECK-INST: caddn %d15, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0xf1]
.code32
caddn %d15, %d1, %d15, %d15

# CHECK-INST: caddn %d15, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0xfe]
.code32
caddn %d15, %d14, %d0, %d0

# CHECK-INST: caddn %d15, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0xfe]
.code32
caddn %d15, %d14, %d0, %d1

# CHECK-INST: caddn %d15, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0xfe]
.code32
caddn %d15, %d14, %d0, %d14

# CHECK-INST: caddn %d15, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0xfe]
.code32
caddn %d15, %d14, %d0, %d15

# CHECK-INST: caddn %d15, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0xfe]
.code32
caddn %d15, %d14, %d1, %d0

# CHECK-INST: caddn %d15, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0xfe]
.code32
caddn %d15, %d14, %d1, %d1

# CHECK-INST: caddn %d15, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0xfe]
.code32
caddn %d15, %d14, %d1, %d14

# CHECK-INST: caddn %d15, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0xfe]
.code32
caddn %d15, %d14, %d1, %d15

# CHECK-INST: caddn %d15, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0xfe]
.code32
caddn %d15, %d14, %d14, %d0

# CHECK-INST: caddn %d15, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0xfe]
.code32
caddn %d15, %d14, %d14, %d1

# CHECK-INST: caddn %d15, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0xfe]
.code32
caddn %d15, %d14, %d14, %d14

# CHECK-INST: caddn %d15, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0xfe]
.code32
caddn %d15, %d14, %d14, %d15

# CHECK-INST: caddn %d15, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0xfe]
.code32
caddn %d15, %d14, %d15, %d0

# CHECK-INST: caddn %d15, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0xfe]
.code32
caddn %d15, %d14, %d15, %d1

# CHECK-INST: caddn %d15, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0xfe]
.code32
caddn %d15, %d14, %d15, %d14

# CHECK-INST: caddn %d15, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0xfe]
.code32
caddn %d15, %d14, %d15, %d15

# CHECK-INST: caddn %d15, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0xff]
.code32
caddn %d15, %d15, %d0, %d0

# CHECK-INST: caddn %d15, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0xff]
.code32
caddn %d15, %d15, %d0, %d1

# CHECK-INST: caddn %d15, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0xff]
.code32
caddn %d15, %d15, %d0, %d14

# CHECK-INST: caddn %d15, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0xff]
.code32
caddn %d15, %d15, %d0, %d15

# CHECK-INST: caddn %d15, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0xff]
.code32
caddn %d15, %d15, %d1, %d0

# CHECK-INST: caddn %d15, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0xff]
.code32
caddn %d15, %d15, %d1, %d1

# CHECK-INST: caddn %d15, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0xff]
.code32
caddn %d15, %d15, %d1, %d14

# CHECK-INST: caddn %d15, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0xff]
.code32
caddn %d15, %d15, %d1, %d15

# CHECK-INST: caddn %d15, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0xff]
.code32
caddn %d15, %d15, %d14, %d0

# CHECK-INST: caddn %d15, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0xff]
.code32
caddn %d15, %d15, %d14, %d1

# CHECK-INST: caddn %d15, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0xff]
.code32
caddn %d15, %d15, %d14, %d14

# CHECK-INST: caddn %d15, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0xff]
.code32
caddn %d15, %d15, %d14, %d15

# CHECK-INST: caddn %d15, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0xff]
.code32
caddn %d15, %d15, %d15, %d0

# CHECK-INST: caddn %d15, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0xff]
.code32
caddn %d15, %d15, %d15, %d1

# CHECK-INST: caddn %d15, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0xff]
.code32
caddn %d15, %d15, %d15, %d14

# CHECK-INST: caddn %d15, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0xff]
.code32
caddn %d15, %d15, %d15, %d15

# CHECK-INST: caddn %d0, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0x00]
.code32
caddn %d0, %d0, %d0, -256

# CHECK-INST: caddn %d0, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0x00]
.code32
caddn %d0, %d0, %d0, -129

# CHECK-INST: caddn %d0, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0x00]
.code32
caddn %d0, %d0, %d0, -1

# CHECK-INST: caddn %d0, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0x00]
.code32
caddn %d0, %d0, %d0, 0

# CHECK-INST: caddn %d0, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0x00]
.code32
caddn %d0, %d0, %d0, 1

# CHECK-INST: caddn %d0, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0x00]
.code32
caddn %d0, %d0, %d0, 128

# CHECK-INST: caddn %d0, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0x00]
.code32
caddn %d0, %d0, %d0, 255

# CHECK-INST: caddn %d0, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0x00]
.code32
caddn %d0, %d0, %d1, -256

# CHECK-INST: caddn %d0, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0x00]
.code32
caddn %d0, %d0, %d1, -129

# CHECK-INST: caddn %d0, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0x00]
.code32
caddn %d0, %d0, %d1, -1

# CHECK-INST: caddn %d0, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0x00]
.code32
caddn %d0, %d0, %d1, 0

# CHECK-INST: caddn %d0, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0x00]
.code32
caddn %d0, %d0, %d1, 1

# CHECK-INST: caddn %d0, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0x00]
.code32
caddn %d0, %d0, %d1, 128

# CHECK-INST: caddn %d0, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0x00]
.code32
caddn %d0, %d0, %d1, 255

# CHECK-INST: caddn %d0, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0x00]
.code32
caddn %d0, %d0, %d14, -256

# CHECK-INST: caddn %d0, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0x00]
.code32
caddn %d0, %d0, %d14, -129

# CHECK-INST: caddn %d0, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0x00]
.code32
caddn %d0, %d0, %d14, -1

# CHECK-INST: caddn %d0, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0x00]
.code32
caddn %d0, %d0, %d14, 0

# CHECK-INST: caddn %d0, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0x00]
.code32
caddn %d0, %d0, %d14, 1

# CHECK-INST: caddn %d0, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0x00]
.code32
caddn %d0, %d0, %d14, 128

# CHECK-INST: caddn %d0, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0x00]
.code32
caddn %d0, %d0, %d14, 255

# CHECK-INST: caddn %d0, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0x00]
.code32
caddn %d0, %d0, %d15, -256

# CHECK-INST: caddn %d0, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0x00]
.code32
caddn %d0, %d0, %d15, -129

# CHECK-INST: caddn %d0, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0x00]
.code32
caddn %d0, %d0, %d15, -1

# CHECK-INST: caddn %d0, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0x00]
.code32
caddn %d0, %d0, %d15, 0

# CHECK-INST: caddn %d0, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0x00]
.code32
caddn %d0, %d0, %d15, 1

# CHECK-INST: caddn %d0, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0x00]
.code32
caddn %d0, %d0, %d15, 128

# CHECK-INST: caddn %d0, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0x00]
.code32
caddn %d0, %d0, %d15, 255

# CHECK-INST: caddn %d0, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0x01]
.code32
caddn %d0, %d1, %d0, -256

# CHECK-INST: caddn %d0, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0x01]
.code32
caddn %d0, %d1, %d0, -129

# CHECK-INST: caddn %d0, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0x01]
.code32
caddn %d0, %d1, %d0, -1

# CHECK-INST: caddn %d0, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0x01]
.code32
caddn %d0, %d1, %d0, 0

# CHECK-INST: caddn %d0, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0x01]
.code32
caddn %d0, %d1, %d0, 1

# CHECK-INST: caddn %d0, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0x01]
.code32
caddn %d0, %d1, %d0, 128

# CHECK-INST: caddn %d0, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0x01]
.code32
caddn %d0, %d1, %d0, 255

# CHECK-INST: caddn %d0, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0x01]
.code32
caddn %d0, %d1, %d1, -256

# CHECK-INST: caddn %d0, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0x01]
.code32
caddn %d0, %d1, %d1, -129

# CHECK-INST: caddn %d0, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0x01]
.code32
caddn %d0, %d1, %d1, -1

# CHECK-INST: caddn %d0, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0x01]
.code32
caddn %d0, %d1, %d1, 0

# CHECK-INST: caddn %d0, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0x01]
.code32
caddn %d0, %d1, %d1, 1

# CHECK-INST: caddn %d0, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0x01]
.code32
caddn %d0, %d1, %d1, 128

# CHECK-INST: caddn %d0, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0x01]
.code32
caddn %d0, %d1, %d1, 255

# CHECK-INST: caddn %d0, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0x01]
.code32
caddn %d0, %d1, %d14, -256

# CHECK-INST: caddn %d0, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0x01]
.code32
caddn %d0, %d1, %d14, -129

# CHECK-INST: caddn %d0, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0x01]
.code32
caddn %d0, %d1, %d14, -1

# CHECK-INST: caddn %d0, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0x01]
.code32
caddn %d0, %d1, %d14, 0

# CHECK-INST: caddn %d0, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0x01]
.code32
caddn %d0, %d1, %d14, 1

# CHECK-INST: caddn %d0, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0x01]
.code32
caddn %d0, %d1, %d14, 128

# CHECK-INST: caddn %d0, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0x01]
.code32
caddn %d0, %d1, %d14, 255

# CHECK-INST: caddn %d0, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0x01]
.code32
caddn %d0, %d1, %d15, -256

# CHECK-INST: caddn %d0, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0x01]
.code32
caddn %d0, %d1, %d15, -129

# CHECK-INST: caddn %d0, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0x01]
.code32
caddn %d0, %d1, %d15, -1

# CHECK-INST: caddn %d0, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0x01]
.code32
caddn %d0, %d1, %d15, 0

# CHECK-INST: caddn %d0, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0x01]
.code32
caddn %d0, %d1, %d15, 1

# CHECK-INST: caddn %d0, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0x01]
.code32
caddn %d0, %d1, %d15, 128

# CHECK-INST: caddn %d0, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0x01]
.code32
caddn %d0, %d1, %d15, 255

# CHECK-INST: caddn %d0, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0x0e]
.code32
caddn %d0, %d14, %d0, -256

# CHECK-INST: caddn %d0, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0x0e]
.code32
caddn %d0, %d14, %d0, -129

# CHECK-INST: caddn %d0, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0x0e]
.code32
caddn %d0, %d14, %d0, -1

# CHECK-INST: caddn %d0, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0x0e]
.code32
caddn %d0, %d14, %d0, 0

# CHECK-INST: caddn %d0, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0x0e]
.code32
caddn %d0, %d14, %d0, 1

# CHECK-INST: caddn %d0, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0x0e]
.code32
caddn %d0, %d14, %d0, 128

# CHECK-INST: caddn %d0, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0x0e]
.code32
caddn %d0, %d14, %d0, 255

# CHECK-INST: caddn %d0, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0x0e]
.code32
caddn %d0, %d14, %d1, -256

# CHECK-INST: caddn %d0, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0x0e]
.code32
caddn %d0, %d14, %d1, -129

# CHECK-INST: caddn %d0, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0x0e]
.code32
caddn %d0, %d14, %d1, -1

# CHECK-INST: caddn %d0, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0x0e]
.code32
caddn %d0, %d14, %d1, 0

# CHECK-INST: caddn %d0, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0x0e]
.code32
caddn %d0, %d14, %d1, 1

# CHECK-INST: caddn %d0, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0x0e]
.code32
caddn %d0, %d14, %d1, 128

# CHECK-INST: caddn %d0, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0x0e]
.code32
caddn %d0, %d14, %d1, 255

# CHECK-INST: caddn %d0, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0x0e]
.code32
caddn %d0, %d14, %d14, -256

# CHECK-INST: caddn %d0, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0x0e]
.code32
caddn %d0, %d14, %d14, -129

# CHECK-INST: caddn %d0, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0x0e]
.code32
caddn %d0, %d14, %d14, -1

# CHECK-INST: caddn %d0, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0x0e]
.code32
caddn %d0, %d14, %d14, 0

# CHECK-INST: caddn %d0, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0x0e]
.code32
caddn %d0, %d14, %d14, 1

# CHECK-INST: caddn %d0, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0x0e]
.code32
caddn %d0, %d14, %d14, 128

# CHECK-INST: caddn %d0, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0x0e]
.code32
caddn %d0, %d14, %d14, 255

# CHECK-INST: caddn %d0, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0x0e]
.code32
caddn %d0, %d14, %d15, -256

# CHECK-INST: caddn %d0, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0x0e]
.code32
caddn %d0, %d14, %d15, -129

# CHECK-INST: caddn %d0, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0x0e]
.code32
caddn %d0, %d14, %d15, -1

# CHECK-INST: caddn %d0, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0x0e]
.code32
caddn %d0, %d14, %d15, 0

# CHECK-INST: caddn %d0, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0x0e]
.code32
caddn %d0, %d14, %d15, 1

# CHECK-INST: caddn %d0, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0x0e]
.code32
caddn %d0, %d14, %d15, 128

# CHECK-INST: caddn %d0, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0x0e]
.code32
caddn %d0, %d14, %d15, 255

# CHECK-INST: caddn %d0, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0x0f]
.code32
caddn %d0, %d15, %d0, -256

# CHECK-INST: caddn %d0, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0x0f]
.code32
caddn %d0, %d15, %d0, -129

# CHECK-INST: caddn %d0, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0x0f]
.code32
caddn %d0, %d15, %d0, -1

# CHECK-INST: caddn %d0, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0x0f]
.code32
caddn %d0, %d15, %d0, 0

# CHECK-INST: caddn %d0, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0x0f]
.code32
caddn %d0, %d15, %d0, 1

# CHECK-INST: caddn %d0, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0x0f]
.code32
caddn %d0, %d15, %d0, 128

# CHECK-INST: caddn %d0, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0x0f]
.code32
caddn %d0, %d15, %d0, 255

# CHECK-INST: caddn %d0, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0x0f]
.code32
caddn %d0, %d15, %d1, -256

# CHECK-INST: caddn %d0, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0x0f]
.code32
caddn %d0, %d15, %d1, -129

# CHECK-INST: caddn %d0, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0x0f]
.code32
caddn %d0, %d15, %d1, -1

# CHECK-INST: caddn %d0, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0x0f]
.code32
caddn %d0, %d15, %d1, 0

# CHECK-INST: caddn %d0, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0x0f]
.code32
caddn %d0, %d15, %d1, 1

# CHECK-INST: caddn %d0, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0x0f]
.code32
caddn %d0, %d15, %d1, 128

# CHECK-INST: caddn %d0, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0x0f]
.code32
caddn %d0, %d15, %d1, 255

# CHECK-INST: caddn %d0, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0x0f]
.code32
caddn %d0, %d15, %d14, -256

# CHECK-INST: caddn %d0, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0x0f]
.code32
caddn %d0, %d15, %d14, -129

# CHECK-INST: caddn %d0, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0x0f]
.code32
caddn %d0, %d15, %d14, -1

# CHECK-INST: caddn %d0, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0x0f]
.code32
caddn %d0, %d15, %d14, 0

# CHECK-INST: caddn %d0, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0x0f]
.code32
caddn %d0, %d15, %d14, 1

# CHECK-INST: caddn %d0, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0x0f]
.code32
caddn %d0, %d15, %d14, 128

# CHECK-INST: caddn %d0, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0x0f]
.code32
caddn %d0, %d15, %d14, 255

# CHECK-INST: caddn %d0, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0x0f]
.code32
caddn %d0, %d15, %d15, -256

# CHECK-INST: caddn %d0, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0x0f]
.code32
caddn %d0, %d15, %d15, -129

# CHECK-INST: caddn %d0, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0x0f]
.code32
caddn %d0, %d15, %d15, -1

# CHECK-INST: caddn %d0, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0x0f]
.code32
caddn %d0, %d15, %d15, 0

# CHECK-INST: caddn %d0, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0x0f]
.code32
caddn %d0, %d15, %d15, 1

# CHECK-INST: caddn %d0, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0x0f]
.code32
caddn %d0, %d15, %d15, 128

# CHECK-INST: caddn %d0, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0x0f]
.code32
caddn %d0, %d15, %d15, 255

# CHECK-INST: caddn %d1, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0x10]
.code32
caddn %d1, %d0, %d0, -256

# CHECK-INST: caddn %d1, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0x10]
.code32
caddn %d1, %d0, %d0, -129

# CHECK-INST: caddn %d1, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0x10]
.code32
caddn %d1, %d0, %d0, -1

# CHECK-INST: caddn %d1, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0x10]
.code32
caddn %d1, %d0, %d0, 0

# CHECK-INST: caddn %d1, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0x10]
.code32
caddn %d1, %d0, %d0, 1

# CHECK-INST: caddn %d1, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0x10]
.code32
caddn %d1, %d0, %d0, 128

# CHECK-INST: caddn %d1, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0x10]
.code32
caddn %d1, %d0, %d0, 255

# CHECK-INST: caddn %d1, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0x10]
.code32
caddn %d1, %d0, %d1, -256

# CHECK-INST: caddn %d1, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0x10]
.code32
caddn %d1, %d0, %d1, -129

# CHECK-INST: caddn %d1, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0x10]
.code32
caddn %d1, %d0, %d1, -1

# CHECK-INST: caddn %d1, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0x10]
.code32
caddn %d1, %d0, %d1, 0

# CHECK-INST: caddn %d1, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0x10]
.code32
caddn %d1, %d0, %d1, 1

# CHECK-INST: caddn %d1, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0x10]
.code32
caddn %d1, %d0, %d1, 128

# CHECK-INST: caddn %d1, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0x10]
.code32
caddn %d1, %d0, %d1, 255

# CHECK-INST: caddn %d1, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0x10]
.code32
caddn %d1, %d0, %d14, -256

# CHECK-INST: caddn %d1, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0x10]
.code32
caddn %d1, %d0, %d14, -129

# CHECK-INST: caddn %d1, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0x10]
.code32
caddn %d1, %d0, %d14, -1

# CHECK-INST: caddn %d1, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0x10]
.code32
caddn %d1, %d0, %d14, 0

# CHECK-INST: caddn %d1, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0x10]
.code32
caddn %d1, %d0, %d14, 1

# CHECK-INST: caddn %d1, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0x10]
.code32
caddn %d1, %d0, %d14, 128

# CHECK-INST: caddn %d1, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0x10]
.code32
caddn %d1, %d0, %d14, 255

# CHECK-INST: caddn %d1, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0x10]
.code32
caddn %d1, %d0, %d15, -256

# CHECK-INST: caddn %d1, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0x10]
.code32
caddn %d1, %d0, %d15, -129

# CHECK-INST: caddn %d1, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0x10]
.code32
caddn %d1, %d0, %d15, -1

# CHECK-INST: caddn %d1, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0x10]
.code32
caddn %d1, %d0, %d15, 0

# CHECK-INST: caddn %d1, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0x10]
.code32
caddn %d1, %d0, %d15, 1

# CHECK-INST: caddn %d1, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0x10]
.code32
caddn %d1, %d0, %d15, 128

# CHECK-INST: caddn %d1, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0x10]
.code32
caddn %d1, %d0, %d15, 255

# CHECK-INST: caddn %d1, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0x11]
.code32
caddn %d1, %d1, %d0, -256

# CHECK-INST: caddn %d1, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0x11]
.code32
caddn %d1, %d1, %d0, -129

# CHECK-INST: caddn %d1, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0x11]
.code32
caddn %d1, %d1, %d0, -1

# CHECK-INST: caddn %d1, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0x11]
.code32
caddn %d1, %d1, %d0, 0

# CHECK-INST: caddn %d1, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0x11]
.code32
caddn %d1, %d1, %d0, 1

# CHECK-INST: caddn %d1, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0x11]
.code32
caddn %d1, %d1, %d0, 128

# CHECK-INST: caddn %d1, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0x11]
.code32
caddn %d1, %d1, %d0, 255

# CHECK-INST: caddn %d1, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0x11]
.code32
caddn %d1, %d1, %d1, -256

# CHECK-INST: caddn %d1, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0x11]
.code32
caddn %d1, %d1, %d1, -129

# CHECK-INST: caddn %d1, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0x11]
.code32
caddn %d1, %d1, %d1, -1

# CHECK-INST: caddn %d1, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0x11]
.code32
caddn %d1, %d1, %d1, 0

# CHECK-INST: caddn %d1, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0x11]
.code32
caddn %d1, %d1, %d1, 1

# CHECK-INST: caddn %d1, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0x11]
.code32
caddn %d1, %d1, %d1, 128

# CHECK-INST: caddn %d1, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0x11]
.code32
caddn %d1, %d1, %d1, 255

# CHECK-INST: caddn %d1, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0x11]
.code32
caddn %d1, %d1, %d14, -256

# CHECK-INST: caddn %d1, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0x11]
.code32
caddn %d1, %d1, %d14, -129

# CHECK-INST: caddn %d1, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0x11]
.code32
caddn %d1, %d1, %d14, -1

# CHECK-INST: caddn %d1, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0x11]
.code32
caddn %d1, %d1, %d14, 0

# CHECK-INST: caddn %d1, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0x11]
.code32
caddn %d1, %d1, %d14, 1

# CHECK-INST: caddn %d1, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0x11]
.code32
caddn %d1, %d1, %d14, 128

# CHECK-INST: caddn %d1, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0x11]
.code32
caddn %d1, %d1, %d14, 255

# CHECK-INST: caddn %d1, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0x11]
.code32
caddn %d1, %d1, %d15, -256

# CHECK-INST: caddn %d1, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0x11]
.code32
caddn %d1, %d1, %d15, -129

# CHECK-INST: caddn %d1, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0x11]
.code32
caddn %d1, %d1, %d15, -1

# CHECK-INST: caddn %d1, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0x11]
.code32
caddn %d1, %d1, %d15, 0

# CHECK-INST: caddn %d1, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0x11]
.code32
caddn %d1, %d1, %d15, 1

# CHECK-INST: caddn %d1, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0x11]
.code32
caddn %d1, %d1, %d15, 128

# CHECK-INST: caddn %d1, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0x11]
.code32
caddn %d1, %d1, %d15, 255

# CHECK-INST: caddn %d1, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0x1e]
.code32
caddn %d1, %d14, %d0, -256

# CHECK-INST: caddn %d1, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0x1e]
.code32
caddn %d1, %d14, %d0, -129

# CHECK-INST: caddn %d1, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0x1e]
.code32
caddn %d1, %d14, %d0, -1

# CHECK-INST: caddn %d1, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0x1e]
.code32
caddn %d1, %d14, %d0, 0

# CHECK-INST: caddn %d1, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0x1e]
.code32
caddn %d1, %d14, %d0, 1

# CHECK-INST: caddn %d1, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0x1e]
.code32
caddn %d1, %d14, %d0, 128

# CHECK-INST: caddn %d1, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0x1e]
.code32
caddn %d1, %d14, %d0, 255

# CHECK-INST: caddn %d1, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0x1e]
.code32
caddn %d1, %d14, %d1, -256

# CHECK-INST: caddn %d1, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0x1e]
.code32
caddn %d1, %d14, %d1, -129

# CHECK-INST: caddn %d1, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0x1e]
.code32
caddn %d1, %d14, %d1, -1

# CHECK-INST: caddn %d1, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0x1e]
.code32
caddn %d1, %d14, %d1, 0

# CHECK-INST: caddn %d1, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0x1e]
.code32
caddn %d1, %d14, %d1, 1

# CHECK-INST: caddn %d1, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0x1e]
.code32
caddn %d1, %d14, %d1, 128

# CHECK-INST: caddn %d1, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0x1e]
.code32
caddn %d1, %d14, %d1, 255

# CHECK-INST: caddn %d1, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0x1e]
.code32
caddn %d1, %d14, %d14, -256

# CHECK-INST: caddn %d1, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0x1e]
.code32
caddn %d1, %d14, %d14, -129

# CHECK-INST: caddn %d1, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0x1e]
.code32
caddn %d1, %d14, %d14, -1

# CHECK-INST: caddn %d1, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0x1e]
.code32
caddn %d1, %d14, %d14, 0

# CHECK-INST: caddn %d1, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0x1e]
.code32
caddn %d1, %d14, %d14, 1

# CHECK-INST: caddn %d1, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0x1e]
.code32
caddn %d1, %d14, %d14, 128

# CHECK-INST: caddn %d1, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0x1e]
.code32
caddn %d1, %d14, %d14, 255

# CHECK-INST: caddn %d1, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0x1e]
.code32
caddn %d1, %d14, %d15, -256

# CHECK-INST: caddn %d1, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0x1e]
.code32
caddn %d1, %d14, %d15, -129

# CHECK-INST: caddn %d1, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0x1e]
.code32
caddn %d1, %d14, %d15, -1

# CHECK-INST: caddn %d1, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0x1e]
.code32
caddn %d1, %d14, %d15, 0

# CHECK-INST: caddn %d1, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0x1e]
.code32
caddn %d1, %d14, %d15, 1

# CHECK-INST: caddn %d1, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0x1e]
.code32
caddn %d1, %d14, %d15, 128

# CHECK-INST: caddn %d1, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0x1e]
.code32
caddn %d1, %d14, %d15, 255

# CHECK-INST: caddn %d1, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0x1f]
.code32
caddn %d1, %d15, %d0, -256

# CHECK-INST: caddn %d1, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0x1f]
.code32
caddn %d1, %d15, %d0, -129

# CHECK-INST: caddn %d1, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0x1f]
.code32
caddn %d1, %d15, %d0, -1

# CHECK-INST: caddn %d1, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0x1f]
.code32
caddn %d1, %d15, %d0, 0

# CHECK-INST: caddn %d1, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0x1f]
.code32
caddn %d1, %d15, %d0, 1

# CHECK-INST: caddn %d1, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0x1f]
.code32
caddn %d1, %d15, %d0, 128

# CHECK-INST: caddn %d1, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0x1f]
.code32
caddn %d1, %d15, %d0, 255

# CHECK-INST: caddn %d1, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0x1f]
.code32
caddn %d1, %d15, %d1, -256

# CHECK-INST: caddn %d1, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0x1f]
.code32
caddn %d1, %d15, %d1, -129

# CHECK-INST: caddn %d1, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0x1f]
.code32
caddn %d1, %d15, %d1, -1

# CHECK-INST: caddn %d1, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0x1f]
.code32
caddn %d1, %d15, %d1, 0

# CHECK-INST: caddn %d1, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0x1f]
.code32
caddn %d1, %d15, %d1, 1

# CHECK-INST: caddn %d1, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0x1f]
.code32
caddn %d1, %d15, %d1, 128

# CHECK-INST: caddn %d1, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0x1f]
.code32
caddn %d1, %d15, %d1, 255

# CHECK-INST: caddn %d1, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0x1f]
.code32
caddn %d1, %d15, %d14, -256

# CHECK-INST: caddn %d1, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0x1f]
.code32
caddn %d1, %d15, %d14, -129

# CHECK-INST: caddn %d1, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0x1f]
.code32
caddn %d1, %d15, %d14, -1

# CHECK-INST: caddn %d1, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0x1f]
.code32
caddn %d1, %d15, %d14, 0

# CHECK-INST: caddn %d1, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0x1f]
.code32
caddn %d1, %d15, %d14, 1

# CHECK-INST: caddn %d1, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0x1f]
.code32
caddn %d1, %d15, %d14, 128

# CHECK-INST: caddn %d1, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0x1f]
.code32
caddn %d1, %d15, %d14, 255

# CHECK-INST: caddn %d1, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0x1f]
.code32
caddn %d1, %d15, %d15, -256

# CHECK-INST: caddn %d1, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0x1f]
.code32
caddn %d1, %d15, %d15, -129

# CHECK-INST: caddn %d1, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0x1f]
.code32
caddn %d1, %d15, %d15, -1

# CHECK-INST: caddn %d1, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0x1f]
.code32
caddn %d1, %d15, %d15, 0

# CHECK-INST: caddn %d1, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0x1f]
.code32
caddn %d1, %d15, %d15, 1

# CHECK-INST: caddn %d1, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0x1f]
.code32
caddn %d1, %d15, %d15, 128

# CHECK-INST: caddn %d1, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0x1f]
.code32
caddn %d1, %d15, %d15, 255

# CHECK-INST: caddn %d14, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0xe0]
.code32
caddn %d14, %d0, %d0, -256

# CHECK-INST: caddn %d14, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0xe0]
.code32
caddn %d14, %d0, %d0, -129

# CHECK-INST: caddn %d14, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0xe0]
.code32
caddn %d14, %d0, %d0, -1

# CHECK-INST: caddn %d14, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0xe0]
.code32
caddn %d14, %d0, %d0, 0

# CHECK-INST: caddn %d14, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0xe0]
.code32
caddn %d14, %d0, %d0, 1

# CHECK-INST: caddn %d14, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0xe0]
.code32
caddn %d14, %d0, %d0, 128

# CHECK-INST: caddn %d14, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0xe0]
.code32
caddn %d14, %d0, %d0, 255

# CHECK-INST: caddn %d14, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0xe0]
.code32
caddn %d14, %d0, %d1, -256

# CHECK-INST: caddn %d14, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0xe0]
.code32
caddn %d14, %d0, %d1, -129

# CHECK-INST: caddn %d14, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0xe0]
.code32
caddn %d14, %d0, %d1, -1

# CHECK-INST: caddn %d14, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0xe0]
.code32
caddn %d14, %d0, %d1, 0

# CHECK-INST: caddn %d14, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0xe0]
.code32
caddn %d14, %d0, %d1, 1

# CHECK-INST: caddn %d14, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0xe0]
.code32
caddn %d14, %d0, %d1, 128

# CHECK-INST: caddn %d14, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0xe0]
.code32
caddn %d14, %d0, %d1, 255

# CHECK-INST: caddn %d14, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0xe0]
.code32
caddn %d14, %d0, %d14, -256

# CHECK-INST: caddn %d14, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0xe0]
.code32
caddn %d14, %d0, %d14, -129

# CHECK-INST: caddn %d14, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0xe0]
.code32
caddn %d14, %d0, %d14, -1

# CHECK-INST: caddn %d14, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0xe0]
.code32
caddn %d14, %d0, %d14, 0

# CHECK-INST: caddn %d14, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0xe0]
.code32
caddn %d14, %d0, %d14, 1

# CHECK-INST: caddn %d14, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0xe0]
.code32
caddn %d14, %d0, %d14, 128

# CHECK-INST: caddn %d14, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0xe0]
.code32
caddn %d14, %d0, %d14, 255

# CHECK-INST: caddn %d14, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0xe0]
.code32
caddn %d14, %d0, %d15, -256

# CHECK-INST: caddn %d14, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0xe0]
.code32
caddn %d14, %d0, %d15, -129

# CHECK-INST: caddn %d14, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0xe0]
.code32
caddn %d14, %d0, %d15, -1

# CHECK-INST: caddn %d14, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0xe0]
.code32
caddn %d14, %d0, %d15, 0

# CHECK-INST: caddn %d14, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0xe0]
.code32
caddn %d14, %d0, %d15, 1

# CHECK-INST: caddn %d14, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0xe0]
.code32
caddn %d14, %d0, %d15, 128

# CHECK-INST: caddn %d14, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0xe0]
.code32
caddn %d14, %d0, %d15, 255

# CHECK-INST: caddn %d14, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0xe1]
.code32
caddn %d14, %d1, %d0, -256

# CHECK-INST: caddn %d14, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0xe1]
.code32
caddn %d14, %d1, %d0, -129

# CHECK-INST: caddn %d14, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0xe1]
.code32
caddn %d14, %d1, %d0, -1

# CHECK-INST: caddn %d14, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0xe1]
.code32
caddn %d14, %d1, %d0, 0

# CHECK-INST: caddn %d14, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0xe1]
.code32
caddn %d14, %d1, %d0, 1

# CHECK-INST: caddn %d14, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0xe1]
.code32
caddn %d14, %d1, %d0, 128

# CHECK-INST: caddn %d14, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0xe1]
.code32
caddn %d14, %d1, %d0, 255

# CHECK-INST: caddn %d14, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0xe1]
.code32
caddn %d14, %d1, %d1, -256

# CHECK-INST: caddn %d14, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0xe1]
.code32
caddn %d14, %d1, %d1, -129

# CHECK-INST: caddn %d14, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0xe1]
.code32
caddn %d14, %d1, %d1, -1

# CHECK-INST: caddn %d14, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0xe1]
.code32
caddn %d14, %d1, %d1, 0

# CHECK-INST: caddn %d14, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0xe1]
.code32
caddn %d14, %d1, %d1, 1

# CHECK-INST: caddn %d14, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0xe1]
.code32
caddn %d14, %d1, %d1, 128

# CHECK-INST: caddn %d14, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0xe1]
.code32
caddn %d14, %d1, %d1, 255

# CHECK-INST: caddn %d14, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0xe1]
.code32
caddn %d14, %d1, %d14, -256

# CHECK-INST: caddn %d14, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0xe1]
.code32
caddn %d14, %d1, %d14, -129

# CHECK-INST: caddn %d14, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0xe1]
.code32
caddn %d14, %d1, %d14, -1

# CHECK-INST: caddn %d14, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0xe1]
.code32
caddn %d14, %d1, %d14, 0

# CHECK-INST: caddn %d14, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0xe1]
.code32
caddn %d14, %d1, %d14, 1

# CHECK-INST: caddn %d14, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0xe1]
.code32
caddn %d14, %d1, %d14, 128

# CHECK-INST: caddn %d14, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0xe1]
.code32
caddn %d14, %d1, %d14, 255

# CHECK-INST: caddn %d14, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0xe1]
.code32
caddn %d14, %d1, %d15, -256

# CHECK-INST: caddn %d14, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0xe1]
.code32
caddn %d14, %d1, %d15, -129

# CHECK-INST: caddn %d14, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0xe1]
.code32
caddn %d14, %d1, %d15, -1

# CHECK-INST: caddn %d14, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0xe1]
.code32
caddn %d14, %d1, %d15, 0

# CHECK-INST: caddn %d14, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0xe1]
.code32
caddn %d14, %d1, %d15, 1

# CHECK-INST: caddn %d14, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0xe1]
.code32
caddn %d14, %d1, %d15, 128

# CHECK-INST: caddn %d14, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0xe1]
.code32
caddn %d14, %d1, %d15, 255

# CHECK-INST: caddn %d14, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0xee]
.code32
caddn %d14, %d14, %d0, -256

# CHECK-INST: caddn %d14, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0xee]
.code32
caddn %d14, %d14, %d0, -129

# CHECK-INST: caddn %d14, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0xee]
.code32
caddn %d14, %d14, %d0, -1

# CHECK-INST: caddn %d14, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0xee]
.code32
caddn %d14, %d14, %d0, 0

# CHECK-INST: caddn %d14, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0xee]
.code32
caddn %d14, %d14, %d0, 1

# CHECK-INST: caddn %d14, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0xee]
.code32
caddn %d14, %d14, %d0, 128

# CHECK-INST: caddn %d14, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0xee]
.code32
caddn %d14, %d14, %d0, 255

# CHECK-INST: caddn %d14, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0xee]
.code32
caddn %d14, %d14, %d1, -256

# CHECK-INST: caddn %d14, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0xee]
.code32
caddn %d14, %d14, %d1, -129

# CHECK-INST: caddn %d14, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0xee]
.code32
caddn %d14, %d14, %d1, -1

# CHECK-INST: caddn %d14, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0xee]
.code32
caddn %d14, %d14, %d1, 0

# CHECK-INST: caddn %d14, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0xee]
.code32
caddn %d14, %d14, %d1, 1

# CHECK-INST: caddn %d14, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0xee]
.code32
caddn %d14, %d14, %d1, 128

# CHECK-INST: caddn %d14, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0xee]
.code32
caddn %d14, %d14, %d1, 255

# CHECK-INST: caddn %d14, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0xee]
.code32
caddn %d14, %d14, %d14, -256

# CHECK-INST: caddn %d14, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0xee]
.code32
caddn %d14, %d14, %d14, -129

# CHECK-INST: caddn %d14, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0xee]
.code32
caddn %d14, %d14, %d14, -1

# CHECK-INST: caddn %d14, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0xee]
.code32
caddn %d14, %d14, %d14, 0

# CHECK-INST: caddn %d14, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0xee]
.code32
caddn %d14, %d14, %d14, 1

# CHECK-INST: caddn %d14, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0xee]
.code32
caddn %d14, %d14, %d14, 128

# CHECK-INST: caddn %d14, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0xee]
.code32
caddn %d14, %d14, %d14, 255

# CHECK-INST: caddn %d14, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0xee]
.code32
caddn %d14, %d14, %d15, -256

# CHECK-INST: caddn %d14, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0xee]
.code32
caddn %d14, %d14, %d15, -129

# CHECK-INST: caddn %d14, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0xee]
.code32
caddn %d14, %d14, %d15, -1

# CHECK-INST: caddn %d14, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0xee]
.code32
caddn %d14, %d14, %d15, 0

# CHECK-INST: caddn %d14, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0xee]
.code32
caddn %d14, %d14, %d15, 1

# CHECK-INST: caddn %d14, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0xee]
.code32
caddn %d14, %d14, %d15, 128

# CHECK-INST: caddn %d14, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0xee]
.code32
caddn %d14, %d14, %d15, 255

# CHECK-INST: caddn %d14, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0xef]
.code32
caddn %d14, %d15, %d0, -256

# CHECK-INST: caddn %d14, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0xef]
.code32
caddn %d14, %d15, %d0, -129

# CHECK-INST: caddn %d14, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0xef]
.code32
caddn %d14, %d15, %d0, -1

# CHECK-INST: caddn %d14, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0xef]
.code32
caddn %d14, %d15, %d0, 0

# CHECK-INST: caddn %d14, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0xef]
.code32
caddn %d14, %d15, %d0, 1

# CHECK-INST: caddn %d14, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0xef]
.code32
caddn %d14, %d15, %d0, 128

# CHECK-INST: caddn %d14, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0xef]
.code32
caddn %d14, %d15, %d0, 255

# CHECK-INST: caddn %d14, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0xef]
.code32
caddn %d14, %d15, %d1, -256

# CHECK-INST: caddn %d14, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0xef]
.code32
caddn %d14, %d15, %d1, -129

# CHECK-INST: caddn %d14, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0xef]
.code32
caddn %d14, %d15, %d1, -1

# CHECK-INST: caddn %d14, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0xef]
.code32
caddn %d14, %d15, %d1, 0

# CHECK-INST: caddn %d14, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0xef]
.code32
caddn %d14, %d15, %d1, 1

# CHECK-INST: caddn %d14, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0xef]
.code32
caddn %d14, %d15, %d1, 128

# CHECK-INST: caddn %d14, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0xef]
.code32
caddn %d14, %d15, %d1, 255

# CHECK-INST: caddn %d14, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0xef]
.code32
caddn %d14, %d15, %d14, -256

# CHECK-INST: caddn %d14, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0xef]
.code32
caddn %d14, %d15, %d14, -129

# CHECK-INST: caddn %d14, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0xef]
.code32
caddn %d14, %d15, %d14, -1

# CHECK-INST: caddn %d14, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0xef]
.code32
caddn %d14, %d15, %d14, 0

# CHECK-INST: caddn %d14, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0xef]
.code32
caddn %d14, %d15, %d14, 1

# CHECK-INST: caddn %d14, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0xef]
.code32
caddn %d14, %d15, %d14, 128

# CHECK-INST: caddn %d14, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0xef]
.code32
caddn %d14, %d15, %d14, 255

# CHECK-INST: caddn %d14, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0xef]
.code32
caddn %d14, %d15, %d15, -256

# CHECK-INST: caddn %d14, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0xef]
.code32
caddn %d14, %d15, %d15, -129

# CHECK-INST: caddn %d14, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0xef]
.code32
caddn %d14, %d15, %d15, -1

# CHECK-INST: caddn %d14, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0xef]
.code32
caddn %d14, %d15, %d15, 0

# CHECK-INST: caddn %d14, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0xef]
.code32
caddn %d14, %d15, %d15, 1

# CHECK-INST: caddn %d14, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0xef]
.code32
caddn %d14, %d15, %d15, 128

# CHECK-INST: caddn %d14, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0xef]
.code32
caddn %d14, %d15, %d15, 255

# CHECK-INST: caddn %d15, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0xf0]
.code32
caddn %d15, %d0, %d0, -256

# CHECK-INST: caddn %d15, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0xf0]
.code32
caddn %d15, %d0, %d0, -129

# CHECK-INST: caddn %d15, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0xf0]
.code32
caddn %d15, %d0, %d0, -1

# CHECK-INST: caddn %d15, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0xf0]
.code32
caddn %d15, %d0, %d0, 0

# CHECK-INST: caddn %d15, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0xf0]
.code32
caddn %d15, %d0, %d0, 1

# CHECK-INST: caddn %d15, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0xf0]
.code32
caddn %d15, %d0, %d0, 128

# CHECK-INST: caddn %d15, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0xf0]
.code32
caddn %d15, %d0, %d0, 255

# CHECK-INST: caddn %d15, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0xf0]
.code32
caddn %d15, %d0, %d1, -256

# CHECK-INST: caddn %d15, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0xf0]
.code32
caddn %d15, %d0, %d1, -129

# CHECK-INST: caddn %d15, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0xf0]
.code32
caddn %d15, %d0, %d1, -1

# CHECK-INST: caddn %d15, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0xf0]
.code32
caddn %d15, %d0, %d1, 0

# CHECK-INST: caddn %d15, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0xf0]
.code32
caddn %d15, %d0, %d1, 1

# CHECK-INST: caddn %d15, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0xf0]
.code32
caddn %d15, %d0, %d1, 128

# CHECK-INST: caddn %d15, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0xf0]
.code32
caddn %d15, %d0, %d1, 255

# CHECK-INST: caddn %d15, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0xf0]
.code32
caddn %d15, %d0, %d14, -256

# CHECK-INST: caddn %d15, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0xf0]
.code32
caddn %d15, %d0, %d14, -129

# CHECK-INST: caddn %d15, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0xf0]
.code32
caddn %d15, %d0, %d14, -1

# CHECK-INST: caddn %d15, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0xf0]
.code32
caddn %d15, %d0, %d14, 0

# CHECK-INST: caddn %d15, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0xf0]
.code32
caddn %d15, %d0, %d14, 1

# CHECK-INST: caddn %d15, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0xf0]
.code32
caddn %d15, %d0, %d14, 128

# CHECK-INST: caddn %d15, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0xf0]
.code32
caddn %d15, %d0, %d14, 255

# CHECK-INST: caddn %d15, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0xf0]
.code32
caddn %d15, %d0, %d15, -256

# CHECK-INST: caddn %d15, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0xf0]
.code32
caddn %d15, %d0, %d15, -129

# CHECK-INST: caddn %d15, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0xf0]
.code32
caddn %d15, %d0, %d15, -1

# CHECK-INST: caddn %d15, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0xf0]
.code32
caddn %d15, %d0, %d15, 0

# CHECK-INST: caddn %d15, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0xf0]
.code32
caddn %d15, %d0, %d15, 1

# CHECK-INST: caddn %d15, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0xf0]
.code32
caddn %d15, %d0, %d15, 128

# CHECK-INST: caddn %d15, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0xf0]
.code32
caddn %d15, %d0, %d15, 255

# CHECK-INST: caddn %d15, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0xf1]
.code32
caddn %d15, %d1, %d0, -256

# CHECK-INST: caddn %d15, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0xf1]
.code32
caddn %d15, %d1, %d0, -129

# CHECK-INST: caddn %d15, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0xf1]
.code32
caddn %d15, %d1, %d0, -1

# CHECK-INST: caddn %d15, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0xf1]
.code32
caddn %d15, %d1, %d0, 0

# CHECK-INST: caddn %d15, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0xf1]
.code32
caddn %d15, %d1, %d0, 1

# CHECK-INST: caddn %d15, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0xf1]
.code32
caddn %d15, %d1, %d0, 128

# CHECK-INST: caddn %d15, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0xf1]
.code32
caddn %d15, %d1, %d0, 255

# CHECK-INST: caddn %d15, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0xf1]
.code32
caddn %d15, %d1, %d1, -256

# CHECK-INST: caddn %d15, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0xf1]
.code32
caddn %d15, %d1, %d1, -129

# CHECK-INST: caddn %d15, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0xf1]
.code32
caddn %d15, %d1, %d1, -1

# CHECK-INST: caddn %d15, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0xf1]
.code32
caddn %d15, %d1, %d1, 0

# CHECK-INST: caddn %d15, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0xf1]
.code32
caddn %d15, %d1, %d1, 1

# CHECK-INST: caddn %d15, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0xf1]
.code32
caddn %d15, %d1, %d1, 128

# CHECK-INST: caddn %d15, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0xf1]
.code32
caddn %d15, %d1, %d1, 255

# CHECK-INST: caddn %d15, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0xf1]
.code32
caddn %d15, %d1, %d14, -256

# CHECK-INST: caddn %d15, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0xf1]
.code32
caddn %d15, %d1, %d14, -129

# CHECK-INST: caddn %d15, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0xf1]
.code32
caddn %d15, %d1, %d14, -1

# CHECK-INST: caddn %d15, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0xf1]
.code32
caddn %d15, %d1, %d14, 0

# CHECK-INST: caddn %d15, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0xf1]
.code32
caddn %d15, %d1, %d14, 1

# CHECK-INST: caddn %d15, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0xf1]
.code32
caddn %d15, %d1, %d14, 128

# CHECK-INST: caddn %d15, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0xf1]
.code32
caddn %d15, %d1, %d14, 255

# CHECK-INST: caddn %d15, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0xf1]
.code32
caddn %d15, %d1, %d15, -256

# CHECK-INST: caddn %d15, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0xf1]
.code32
caddn %d15, %d1, %d15, -129

# CHECK-INST: caddn %d15, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0xf1]
.code32
caddn %d15, %d1, %d15, -1

# CHECK-INST: caddn %d15, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0xf1]
.code32
caddn %d15, %d1, %d15, 0

# CHECK-INST: caddn %d15, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0xf1]
.code32
caddn %d15, %d1, %d15, 1

# CHECK-INST: caddn %d15, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0xf1]
.code32
caddn %d15, %d1, %d15, 128

# CHECK-INST: caddn %d15, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0xf1]
.code32
caddn %d15, %d1, %d15, 255

# CHECK-INST: caddn %d15, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0xfe]
.code32
caddn %d15, %d14, %d0, -256

# CHECK-INST: caddn %d15, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0xfe]
.code32
caddn %d15, %d14, %d0, -129

# CHECK-INST: caddn %d15, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0xfe]
.code32
caddn %d15, %d14, %d0, -1

# CHECK-INST: caddn %d15, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0xfe]
.code32
caddn %d15, %d14, %d0, 0

# CHECK-INST: caddn %d15, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0xfe]
.code32
caddn %d15, %d14, %d0, 1

# CHECK-INST: caddn %d15, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0xfe]
.code32
caddn %d15, %d14, %d0, 128

# CHECK-INST: caddn %d15, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0xfe]
.code32
caddn %d15, %d14, %d0, 255

# CHECK-INST: caddn %d15, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0xfe]
.code32
caddn %d15, %d14, %d1, -256

# CHECK-INST: caddn %d15, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0xfe]
.code32
caddn %d15, %d14, %d1, -129

# CHECK-INST: caddn %d15, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0xfe]
.code32
caddn %d15, %d14, %d1, -1

# CHECK-INST: caddn %d15, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0xfe]
.code32
caddn %d15, %d14, %d1, 0

# CHECK-INST: caddn %d15, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0xfe]
.code32
caddn %d15, %d14, %d1, 1

# CHECK-INST: caddn %d15, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0xfe]
.code32
caddn %d15, %d14, %d1, 128

# CHECK-INST: caddn %d15, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0xfe]
.code32
caddn %d15, %d14, %d1, 255

# CHECK-INST: caddn %d15, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0xfe]
.code32
caddn %d15, %d14, %d14, -256

# CHECK-INST: caddn %d15, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0xfe]
.code32
caddn %d15, %d14, %d14, -129

# CHECK-INST: caddn %d15, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0xfe]
.code32
caddn %d15, %d14, %d14, -1

# CHECK-INST: caddn %d15, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0xfe]
.code32
caddn %d15, %d14, %d14, 0

# CHECK-INST: caddn %d15, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0xfe]
.code32
caddn %d15, %d14, %d14, 1

# CHECK-INST: caddn %d15, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0xfe]
.code32
caddn %d15, %d14, %d14, 128

# CHECK-INST: caddn %d15, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0xfe]
.code32
caddn %d15, %d14, %d14, 255

# CHECK-INST: caddn %d15, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0xfe]
.code32
caddn %d15, %d14, %d15, -256

# CHECK-INST: caddn %d15, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0xfe]
.code32
caddn %d15, %d14, %d15, -129

# CHECK-INST: caddn %d15, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0xfe]
.code32
caddn %d15, %d14, %d15, -1

# CHECK-INST: caddn %d15, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0xfe]
.code32
caddn %d15, %d14, %d15, 0

# CHECK-INST: caddn %d15, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0xfe]
.code32
caddn %d15, %d14, %d15, 1

# CHECK-INST: caddn %d15, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0xfe]
.code32
caddn %d15, %d14, %d15, 128

# CHECK-INST: caddn %d15, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0xfe]
.code32
caddn %d15, %d14, %d15, 255

# CHECK-INST: caddn %d15, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0xff]
.code32
caddn %d15, %d15, %d0, -256

# CHECK-INST: caddn %d15, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0xff]
.code32
caddn %d15, %d15, %d0, -129

# CHECK-INST: caddn %d15, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0xff]
.code32
caddn %d15, %d15, %d0, -1

# CHECK-INST: caddn %d15, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0xff]
.code32
caddn %d15, %d15, %d0, 0

# CHECK-INST: caddn %d15, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0xff]
.code32
caddn %d15, %d15, %d0, 1

# CHECK-INST: caddn %d15, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0xff]
.code32
caddn %d15, %d15, %d0, 128

# CHECK-INST: caddn %d15, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0xff]
.code32
caddn %d15, %d15, %d0, 255

# CHECK-INST: caddn %d15, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0xff]
.code32
caddn %d15, %d15, %d1, -256

# CHECK-INST: caddn %d15, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0xff]
.code32
caddn %d15, %d15, %d1, -129

# CHECK-INST: caddn %d15, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0xff]
.code32
caddn %d15, %d15, %d1, -1

# CHECK-INST: caddn %d15, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0xff]
.code32
caddn %d15, %d15, %d1, 0

# CHECK-INST: caddn %d15, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0xff]
.code32
caddn %d15, %d15, %d1, 1

# CHECK-INST: caddn %d15, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0xff]
.code32
caddn %d15, %d15, %d1, 128

# CHECK-INST: caddn %d15, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0xff]
.code32
caddn %d15, %d15, %d1, 255

# CHECK-INST: caddn %d15, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0xff]
.code32
caddn %d15, %d15, %d14, -256

# CHECK-INST: caddn %d15, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0xff]
.code32
caddn %d15, %d15, %d14, -129

# CHECK-INST: caddn %d15, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0xff]
.code32
caddn %d15, %d15, %d14, -1

# CHECK-INST: caddn %d15, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0xff]
.code32
caddn %d15, %d15, %d14, 0

# CHECK-INST: caddn %d15, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0xff]
.code32
caddn %d15, %d15, %d14, 1

# CHECK-INST: caddn %d15, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0xff]
.code32
caddn %d15, %d15, %d14, 128

# CHECK-INST: caddn %d15, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0xff]
.code32
caddn %d15, %d15, %d14, 255

# CHECK-INST: caddn %d15, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0xff]
.code32
caddn %d15, %d15, %d15, -256

# CHECK-INST: caddn %d15, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0xff]
.code32
caddn %d15, %d15, %d15, -129

# CHECK-INST: caddn %d15, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0xff]
.code32
caddn %d15, %d15, %d15, -1

# CHECK-INST: caddn %d15, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0xff]
.code32
caddn %d15, %d15, %d15, 0

# CHECK-INST: caddn %d15, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0xff]
.code32
caddn %d15, %d15, %d15, 1

# CHECK-INST: caddn %d15, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0xff]
.code32
caddn %d15, %d15, %d15, 128

# CHECK-INST: caddn %d15, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0xff]
.code32
caddn %d15, %d15, %d15, 255

# CHECK-INST: csub %d0, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0x00]
.code32
csub %d0, %d0, %d0, %d0

# CHECK-INST: csub %d0, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0x00]
.code32
csub %d0, %d0, %d0, %d1

# CHECK-INST: csub %d0, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0x00]
.code32
csub %d0, %d0, %d0, %d14

# CHECK-INST: csub %d0, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0x00]
.code32
csub %d0, %d0, %d0, %d15

# CHECK-INST: csub %d0, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0x00]
.code32
csub %d0, %d0, %d1, %d0

# CHECK-INST: csub %d0, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0x00]
.code32
csub %d0, %d0, %d1, %d1

# CHECK-INST: csub %d0, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0x00]
.code32
csub %d0, %d0, %d1, %d14

# CHECK-INST: csub %d0, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0x00]
.code32
csub %d0, %d0, %d1, %d15

# CHECK-INST: csub %d0, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0x00]
.code32
csub %d0, %d0, %d14, %d0

# CHECK-INST: csub %d0, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0x00]
.code32
csub %d0, %d0, %d14, %d1

# CHECK-INST: csub %d0, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0x00]
.code32
csub %d0, %d0, %d14, %d14

# CHECK-INST: csub %d0, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0x00]
.code32
csub %d0, %d0, %d14, %d15

# CHECK-INST: csub %d0, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0x00]
.code32
csub %d0, %d0, %d15, %d0

# CHECK-INST: csub %d0, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0x00]
.code32
csub %d0, %d0, %d15, %d1

# CHECK-INST: csub %d0, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0x00]
.code32
csub %d0, %d0, %d15, %d14

# CHECK-INST: csub %d0, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0x00]
.code32
csub %d0, %d0, %d15, %d15

# CHECK-INST: csub %d0, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0x01]
.code32
csub %d0, %d1, %d0, %d0

# CHECK-INST: csub %d0, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0x01]
.code32
csub %d0, %d1, %d0, %d1

# CHECK-INST: csub %d0, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0x01]
.code32
csub %d0, %d1, %d0, %d14

# CHECK-INST: csub %d0, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0x01]
.code32
csub %d0, %d1, %d0, %d15

# CHECK-INST: csub %d0, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0x01]
.code32
csub %d0, %d1, %d1, %d0

# CHECK-INST: csub %d0, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0x01]
.code32
csub %d0, %d1, %d1, %d1

# CHECK-INST: csub %d0, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0x01]
.code32
csub %d0, %d1, %d1, %d14

# CHECK-INST: csub %d0, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0x01]
.code32
csub %d0, %d1, %d1, %d15

# CHECK-INST: csub %d0, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0x01]
.code32
csub %d0, %d1, %d14, %d0

# CHECK-INST: csub %d0, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0x01]
.code32
csub %d0, %d1, %d14, %d1

# CHECK-INST: csub %d0, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0x01]
.code32
csub %d0, %d1, %d14, %d14

# CHECK-INST: csub %d0, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0x01]
.code32
csub %d0, %d1, %d14, %d15

# CHECK-INST: csub %d0, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0x01]
.code32
csub %d0, %d1, %d15, %d0

# CHECK-INST: csub %d0, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0x01]
.code32
csub %d0, %d1, %d15, %d1

# CHECK-INST: csub %d0, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0x01]
.code32
csub %d0, %d1, %d15, %d14

# CHECK-INST: csub %d0, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0x01]
.code32
csub %d0, %d1, %d15, %d15

# CHECK-INST: csub %d0, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0x0e]
.code32
csub %d0, %d14, %d0, %d0

# CHECK-INST: csub %d0, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0x0e]
.code32
csub %d0, %d14, %d0, %d1

# CHECK-INST: csub %d0, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0x0e]
.code32
csub %d0, %d14, %d0, %d14

# CHECK-INST: csub %d0, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0x0e]
.code32
csub %d0, %d14, %d0, %d15

# CHECK-INST: csub %d0, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0x0e]
.code32
csub %d0, %d14, %d1, %d0

# CHECK-INST: csub %d0, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0x0e]
.code32
csub %d0, %d14, %d1, %d1

# CHECK-INST: csub %d0, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0x0e]
.code32
csub %d0, %d14, %d1, %d14

# CHECK-INST: csub %d0, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0x0e]
.code32
csub %d0, %d14, %d1, %d15

# CHECK-INST: csub %d0, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0x0e]
.code32
csub %d0, %d14, %d14, %d0

# CHECK-INST: csub %d0, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0x0e]
.code32
csub %d0, %d14, %d14, %d1

# CHECK-INST: csub %d0, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0x0e]
.code32
csub %d0, %d14, %d14, %d14

# CHECK-INST: csub %d0, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0x0e]
.code32
csub %d0, %d14, %d14, %d15

# CHECK-INST: csub %d0, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0x0e]
.code32
csub %d0, %d14, %d15, %d0

# CHECK-INST: csub %d0, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0x0e]
.code32
csub %d0, %d14, %d15, %d1

# CHECK-INST: csub %d0, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0x0e]
.code32
csub %d0, %d14, %d15, %d14

# CHECK-INST: csub %d0, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0x0e]
.code32
csub %d0, %d14, %d15, %d15

# CHECK-INST: csub %d0, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0x0f]
.code32
csub %d0, %d15, %d0, %d0

# CHECK-INST: csub %d0, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0x0f]
.code32
csub %d0, %d15, %d0, %d1

# CHECK-INST: csub %d0, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0x0f]
.code32
csub %d0, %d15, %d0, %d14

# CHECK-INST: csub %d0, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0x0f]
.code32
csub %d0, %d15, %d0, %d15

# CHECK-INST: csub %d0, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0x0f]
.code32
csub %d0, %d15, %d1, %d0

# CHECK-INST: csub %d0, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0x0f]
.code32
csub %d0, %d15, %d1, %d1

# CHECK-INST: csub %d0, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0x0f]
.code32
csub %d0, %d15, %d1, %d14

# CHECK-INST: csub %d0, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0x0f]
.code32
csub %d0, %d15, %d1, %d15

# CHECK-INST: csub %d0, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0x0f]
.code32
csub %d0, %d15, %d14, %d0

# CHECK-INST: csub %d0, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0x0f]
.code32
csub %d0, %d15, %d14, %d1

# CHECK-INST: csub %d0, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0x0f]
.code32
csub %d0, %d15, %d14, %d14

# CHECK-INST: csub %d0, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0x0f]
.code32
csub %d0, %d15, %d14, %d15

# CHECK-INST: csub %d0, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0x0f]
.code32
csub %d0, %d15, %d15, %d0

# CHECK-INST: csub %d0, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0x0f]
.code32
csub %d0, %d15, %d15, %d1

# CHECK-INST: csub %d0, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0x0f]
.code32
csub %d0, %d15, %d15, %d14

# CHECK-INST: csub %d0, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0x0f]
.code32
csub %d0, %d15, %d15, %d15

# CHECK-INST: csub %d1, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0x10]
.code32
csub %d1, %d0, %d0, %d0

# CHECK-INST: csub %d1, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0x10]
.code32
csub %d1, %d0, %d0, %d1

# CHECK-INST: csub %d1, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0x10]
.code32
csub %d1, %d0, %d0, %d14

# CHECK-INST: csub %d1, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0x10]
.code32
csub %d1, %d0, %d0, %d15

# CHECK-INST: csub %d1, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0x10]
.code32
csub %d1, %d0, %d1, %d0

# CHECK-INST: csub %d1, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0x10]
.code32
csub %d1, %d0, %d1, %d1

# CHECK-INST: csub %d1, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0x10]
.code32
csub %d1, %d0, %d1, %d14

# CHECK-INST: csub %d1, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0x10]
.code32
csub %d1, %d0, %d1, %d15

# CHECK-INST: csub %d1, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0x10]
.code32
csub %d1, %d0, %d14, %d0

# CHECK-INST: csub %d1, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0x10]
.code32
csub %d1, %d0, %d14, %d1

# CHECK-INST: csub %d1, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0x10]
.code32
csub %d1, %d0, %d14, %d14

# CHECK-INST: csub %d1, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0x10]
.code32
csub %d1, %d0, %d14, %d15

# CHECK-INST: csub %d1, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0x10]
.code32
csub %d1, %d0, %d15, %d0

# CHECK-INST: csub %d1, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0x10]
.code32
csub %d1, %d0, %d15, %d1

# CHECK-INST: csub %d1, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0x10]
.code32
csub %d1, %d0, %d15, %d14

# CHECK-INST: csub %d1, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0x10]
.code32
csub %d1, %d0, %d15, %d15

# CHECK-INST: csub %d1, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0x11]
.code32
csub %d1, %d1, %d0, %d0

# CHECK-INST: csub %d1, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0x11]
.code32
csub %d1, %d1, %d0, %d1

# CHECK-INST: csub %d1, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0x11]
.code32
csub %d1, %d1, %d0, %d14

# CHECK-INST: csub %d1, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0x11]
.code32
csub %d1, %d1, %d0, %d15

# CHECK-INST: csub %d1, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0x11]
.code32
csub %d1, %d1, %d1, %d0

# CHECK-INST: csub %d1, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0x11]
.code32
csub %d1, %d1, %d1, %d1

# CHECK-INST: csub %d1, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0x11]
.code32
csub %d1, %d1, %d1, %d14

# CHECK-INST: csub %d1, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0x11]
.code32
csub %d1, %d1, %d1, %d15

# CHECK-INST: csub %d1, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0x11]
.code32
csub %d1, %d1, %d14, %d0

# CHECK-INST: csub %d1, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0x11]
.code32
csub %d1, %d1, %d14, %d1

# CHECK-INST: csub %d1, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0x11]
.code32
csub %d1, %d1, %d14, %d14

# CHECK-INST: csub %d1, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0x11]
.code32
csub %d1, %d1, %d14, %d15

# CHECK-INST: csub %d1, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0x11]
.code32
csub %d1, %d1, %d15, %d0

# CHECK-INST: csub %d1, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0x11]
.code32
csub %d1, %d1, %d15, %d1

# CHECK-INST: csub %d1, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0x11]
.code32
csub %d1, %d1, %d15, %d14

# CHECK-INST: csub %d1, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0x11]
.code32
csub %d1, %d1, %d15, %d15

# CHECK-INST: csub %d1, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0x1e]
.code32
csub %d1, %d14, %d0, %d0

# CHECK-INST: csub %d1, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0x1e]
.code32
csub %d1, %d14, %d0, %d1

# CHECK-INST: csub %d1, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0x1e]
.code32
csub %d1, %d14, %d0, %d14

# CHECK-INST: csub %d1, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0x1e]
.code32
csub %d1, %d14, %d0, %d15

# CHECK-INST: csub %d1, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0x1e]
.code32
csub %d1, %d14, %d1, %d0

# CHECK-INST: csub %d1, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0x1e]
.code32
csub %d1, %d14, %d1, %d1

# CHECK-INST: csub %d1, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0x1e]
.code32
csub %d1, %d14, %d1, %d14

# CHECK-INST: csub %d1, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0x1e]
.code32
csub %d1, %d14, %d1, %d15

# CHECK-INST: csub %d1, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0x1e]
.code32
csub %d1, %d14, %d14, %d0

# CHECK-INST: csub %d1, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0x1e]
.code32
csub %d1, %d14, %d14, %d1

# CHECK-INST: csub %d1, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0x1e]
.code32
csub %d1, %d14, %d14, %d14

# CHECK-INST: csub %d1, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0x1e]
.code32
csub %d1, %d14, %d14, %d15

# CHECK-INST: csub %d1, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0x1e]
.code32
csub %d1, %d14, %d15, %d0

# CHECK-INST: csub %d1, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0x1e]
.code32
csub %d1, %d14, %d15, %d1

# CHECK-INST: csub %d1, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0x1e]
.code32
csub %d1, %d14, %d15, %d14

# CHECK-INST: csub %d1, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0x1e]
.code32
csub %d1, %d14, %d15, %d15

# CHECK-INST: csub %d1, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0x1f]
.code32
csub %d1, %d15, %d0, %d0

# CHECK-INST: csub %d1, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0x1f]
.code32
csub %d1, %d15, %d0, %d1

# CHECK-INST: csub %d1, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0x1f]
.code32
csub %d1, %d15, %d0, %d14

# CHECK-INST: csub %d1, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0x1f]
.code32
csub %d1, %d15, %d0, %d15

# CHECK-INST: csub %d1, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0x1f]
.code32
csub %d1, %d15, %d1, %d0

# CHECK-INST: csub %d1, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0x1f]
.code32
csub %d1, %d15, %d1, %d1

# CHECK-INST: csub %d1, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0x1f]
.code32
csub %d1, %d15, %d1, %d14

# CHECK-INST: csub %d1, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0x1f]
.code32
csub %d1, %d15, %d1, %d15

# CHECK-INST: csub %d1, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0x1f]
.code32
csub %d1, %d15, %d14, %d0

# CHECK-INST: csub %d1, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0x1f]
.code32
csub %d1, %d15, %d14, %d1

# CHECK-INST: csub %d1, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0x1f]
.code32
csub %d1, %d15, %d14, %d14

# CHECK-INST: csub %d1, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0x1f]
.code32
csub %d1, %d15, %d14, %d15

# CHECK-INST: csub %d1, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0x1f]
.code32
csub %d1, %d15, %d15, %d0

# CHECK-INST: csub %d1, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0x1f]
.code32
csub %d1, %d15, %d15, %d1

# CHECK-INST: csub %d1, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0x1f]
.code32
csub %d1, %d15, %d15, %d14

# CHECK-INST: csub %d1, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0x1f]
.code32
csub %d1, %d15, %d15, %d15

# CHECK-INST: csub %d14, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0xe0]
.code32
csub %d14, %d0, %d0, %d0

# CHECK-INST: csub %d14, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0xe0]
.code32
csub %d14, %d0, %d0, %d1

# CHECK-INST: csub %d14, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0xe0]
.code32
csub %d14, %d0, %d0, %d14

# CHECK-INST: csub %d14, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0xe0]
.code32
csub %d14, %d0, %d0, %d15

# CHECK-INST: csub %d14, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0xe0]
.code32
csub %d14, %d0, %d1, %d0

# CHECK-INST: csub %d14, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0xe0]
.code32
csub %d14, %d0, %d1, %d1

# CHECK-INST: csub %d14, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0xe0]
.code32
csub %d14, %d0, %d1, %d14

# CHECK-INST: csub %d14, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0xe0]
.code32
csub %d14, %d0, %d1, %d15

# CHECK-INST: csub %d14, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0xe0]
.code32
csub %d14, %d0, %d14, %d0

# CHECK-INST: csub %d14, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0xe0]
.code32
csub %d14, %d0, %d14, %d1

# CHECK-INST: csub %d14, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0xe0]
.code32
csub %d14, %d0, %d14, %d14

# CHECK-INST: csub %d14, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0xe0]
.code32
csub %d14, %d0, %d14, %d15

# CHECK-INST: csub %d14, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0xe0]
.code32
csub %d14, %d0, %d15, %d0

# CHECK-INST: csub %d14, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0xe0]
.code32
csub %d14, %d0, %d15, %d1

# CHECK-INST: csub %d14, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0xe0]
.code32
csub %d14, %d0, %d15, %d14

# CHECK-INST: csub %d14, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0xe0]
.code32
csub %d14, %d0, %d15, %d15

# CHECK-INST: csub %d14, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0xe1]
.code32
csub %d14, %d1, %d0, %d0

# CHECK-INST: csub %d14, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0xe1]
.code32
csub %d14, %d1, %d0, %d1

# CHECK-INST: csub %d14, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0xe1]
.code32
csub %d14, %d1, %d0, %d14

# CHECK-INST: csub %d14, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0xe1]
.code32
csub %d14, %d1, %d0, %d15

# CHECK-INST: csub %d14, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0xe1]
.code32
csub %d14, %d1, %d1, %d0

# CHECK-INST: csub %d14, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0xe1]
.code32
csub %d14, %d1, %d1, %d1

# CHECK-INST: csub %d14, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0xe1]
.code32
csub %d14, %d1, %d1, %d14

# CHECK-INST: csub %d14, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0xe1]
.code32
csub %d14, %d1, %d1, %d15

# CHECK-INST: csub %d14, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0xe1]
.code32
csub %d14, %d1, %d14, %d0

# CHECK-INST: csub %d14, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0xe1]
.code32
csub %d14, %d1, %d14, %d1

# CHECK-INST: csub %d14, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0xe1]
.code32
csub %d14, %d1, %d14, %d14

# CHECK-INST: csub %d14, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0xe1]
.code32
csub %d14, %d1, %d14, %d15

# CHECK-INST: csub %d14, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0xe1]
.code32
csub %d14, %d1, %d15, %d0

# CHECK-INST: csub %d14, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0xe1]
.code32
csub %d14, %d1, %d15, %d1

# CHECK-INST: csub %d14, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0xe1]
.code32
csub %d14, %d1, %d15, %d14

# CHECK-INST: csub %d14, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0xe1]
.code32
csub %d14, %d1, %d15, %d15

# CHECK-INST: csub %d14, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0xee]
.code32
csub %d14, %d14, %d0, %d0

# CHECK-INST: csub %d14, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0xee]
.code32
csub %d14, %d14, %d0, %d1

# CHECK-INST: csub %d14, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0xee]
.code32
csub %d14, %d14, %d0, %d14

# CHECK-INST: csub %d14, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0xee]
.code32
csub %d14, %d14, %d0, %d15

# CHECK-INST: csub %d14, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0xee]
.code32
csub %d14, %d14, %d1, %d0

# CHECK-INST: csub %d14, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0xee]
.code32
csub %d14, %d14, %d1, %d1

# CHECK-INST: csub %d14, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0xee]
.code32
csub %d14, %d14, %d1, %d14

# CHECK-INST: csub %d14, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0xee]
.code32
csub %d14, %d14, %d1, %d15

# CHECK-INST: csub %d14, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0xee]
.code32
csub %d14, %d14, %d14, %d0

# CHECK-INST: csub %d14, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0xee]
.code32
csub %d14, %d14, %d14, %d1

# CHECK-INST: csub %d14, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0xee]
.code32
csub %d14, %d14, %d14, %d14

# CHECK-INST: csub %d14, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0xee]
.code32
csub %d14, %d14, %d14, %d15

# CHECK-INST: csub %d14, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0xee]
.code32
csub %d14, %d14, %d15, %d0

# CHECK-INST: csub %d14, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0xee]
.code32
csub %d14, %d14, %d15, %d1

# CHECK-INST: csub %d14, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0xee]
.code32
csub %d14, %d14, %d15, %d14

# CHECK-INST: csub %d14, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0xee]
.code32
csub %d14, %d14, %d15, %d15

# CHECK-INST: csub %d14, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0xef]
.code32
csub %d14, %d15, %d0, %d0

# CHECK-INST: csub %d14, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0xef]
.code32
csub %d14, %d15, %d0, %d1

# CHECK-INST: csub %d14, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0xef]
.code32
csub %d14, %d15, %d0, %d14

# CHECK-INST: csub %d14, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0xef]
.code32
csub %d14, %d15, %d0, %d15

# CHECK-INST: csub %d14, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0xef]
.code32
csub %d14, %d15, %d1, %d0

# CHECK-INST: csub %d14, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0xef]
.code32
csub %d14, %d15, %d1, %d1

# CHECK-INST: csub %d14, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0xef]
.code32
csub %d14, %d15, %d1, %d14

# CHECK-INST: csub %d14, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0xef]
.code32
csub %d14, %d15, %d1, %d15

# CHECK-INST: csub %d14, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0xef]
.code32
csub %d14, %d15, %d14, %d0

# CHECK-INST: csub %d14, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0xef]
.code32
csub %d14, %d15, %d14, %d1

# CHECK-INST: csub %d14, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0xef]
.code32
csub %d14, %d15, %d14, %d14

# CHECK-INST: csub %d14, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0xef]
.code32
csub %d14, %d15, %d14, %d15

# CHECK-INST: csub %d14, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0xef]
.code32
csub %d14, %d15, %d15, %d0

# CHECK-INST: csub %d14, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0xef]
.code32
csub %d14, %d15, %d15, %d1

# CHECK-INST: csub %d14, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0xef]
.code32
csub %d14, %d15, %d15, %d14

# CHECK-INST: csub %d14, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0xef]
.code32
csub %d14, %d15, %d15, %d15

# CHECK-INST: csub %d15, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0xf0]
.code32
csub %d15, %d0, %d0, %d0

# CHECK-INST: csub %d15, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0xf0]
.code32
csub %d15, %d0, %d0, %d1

# CHECK-INST: csub %d15, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0xf0]
.code32
csub %d15, %d0, %d0, %d14

# CHECK-INST: csub %d15, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0xf0]
.code32
csub %d15, %d0, %d0, %d15

# CHECK-INST: csub %d15, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0xf0]
.code32
csub %d15, %d0, %d1, %d0

# CHECK-INST: csub %d15, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0xf0]
.code32
csub %d15, %d0, %d1, %d1

# CHECK-INST: csub %d15, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0xf0]
.code32
csub %d15, %d0, %d1, %d14

# CHECK-INST: csub %d15, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0xf0]
.code32
csub %d15, %d0, %d1, %d15

# CHECK-INST: csub %d15, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0xf0]
.code32
csub %d15, %d0, %d14, %d0

# CHECK-INST: csub %d15, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0xf0]
.code32
csub %d15, %d0, %d14, %d1

# CHECK-INST: csub %d15, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0xf0]
.code32
csub %d15, %d0, %d14, %d14

# CHECK-INST: csub %d15, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0xf0]
.code32
csub %d15, %d0, %d14, %d15

# CHECK-INST: csub %d15, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0xf0]
.code32
csub %d15, %d0, %d15, %d0

# CHECK-INST: csub %d15, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0xf0]
.code32
csub %d15, %d0, %d15, %d1

# CHECK-INST: csub %d15, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0xf0]
.code32
csub %d15, %d0, %d15, %d14

# CHECK-INST: csub %d15, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0xf0]
.code32
csub %d15, %d0, %d15, %d15

# CHECK-INST: csub %d15, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0xf1]
.code32
csub %d15, %d1, %d0, %d0

# CHECK-INST: csub %d15, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0xf1]
.code32
csub %d15, %d1, %d0, %d1

# CHECK-INST: csub %d15, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0xf1]
.code32
csub %d15, %d1, %d0, %d14

# CHECK-INST: csub %d15, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0xf1]
.code32
csub %d15, %d1, %d0, %d15

# CHECK-INST: csub %d15, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0xf1]
.code32
csub %d15, %d1, %d1, %d0

# CHECK-INST: csub %d15, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0xf1]
.code32
csub %d15, %d1, %d1, %d1

# CHECK-INST: csub %d15, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0xf1]
.code32
csub %d15, %d1, %d1, %d14

# CHECK-INST: csub %d15, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0xf1]
.code32
csub %d15, %d1, %d1, %d15

# CHECK-INST: csub %d15, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0xf1]
.code32
csub %d15, %d1, %d14, %d0

# CHECK-INST: csub %d15, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0xf1]
.code32
csub %d15, %d1, %d14, %d1

# CHECK-INST: csub %d15, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0xf1]
.code32
csub %d15, %d1, %d14, %d14

# CHECK-INST: csub %d15, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0xf1]
.code32
csub %d15, %d1, %d14, %d15

# CHECK-INST: csub %d15, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0xf1]
.code32
csub %d15, %d1, %d15, %d0

# CHECK-INST: csub %d15, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0xf1]
.code32
csub %d15, %d1, %d15, %d1

# CHECK-INST: csub %d15, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0xf1]
.code32
csub %d15, %d1, %d15, %d14

# CHECK-INST: csub %d15, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0xf1]
.code32
csub %d15, %d1, %d15, %d15

# CHECK-INST: csub %d15, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0xfe]
.code32
csub %d15, %d14, %d0, %d0

# CHECK-INST: csub %d15, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0xfe]
.code32
csub %d15, %d14, %d0, %d1

# CHECK-INST: csub %d15, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0xfe]
.code32
csub %d15, %d14, %d0, %d14

# CHECK-INST: csub %d15, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0xfe]
.code32
csub %d15, %d14, %d0, %d15

# CHECK-INST: csub %d15, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0xfe]
.code32
csub %d15, %d14, %d1, %d0

# CHECK-INST: csub %d15, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0xfe]
.code32
csub %d15, %d14, %d1, %d1

# CHECK-INST: csub %d15, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0xfe]
.code32
csub %d15, %d14, %d1, %d14

# CHECK-INST: csub %d15, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0xfe]
.code32
csub %d15, %d14, %d1, %d15

# CHECK-INST: csub %d15, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0xfe]
.code32
csub %d15, %d14, %d14, %d0

# CHECK-INST: csub %d15, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0xfe]
.code32
csub %d15, %d14, %d14, %d1

# CHECK-INST: csub %d15, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0xfe]
.code32
csub %d15, %d14, %d14, %d14

# CHECK-INST: csub %d15, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0xfe]
.code32
csub %d15, %d14, %d14, %d15

# CHECK-INST: csub %d15, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0xfe]
.code32
csub %d15, %d14, %d15, %d0

# CHECK-INST: csub %d15, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0xfe]
.code32
csub %d15, %d14, %d15, %d1

# CHECK-INST: csub %d15, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0xfe]
.code32
csub %d15, %d14, %d15, %d14

# CHECK-INST: csub %d15, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0xfe]
.code32
csub %d15, %d14, %d15, %d15

# CHECK-INST: csub %d15, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0xff]
.code32
csub %d15, %d15, %d0, %d0

# CHECK-INST: csub %d15, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0xff]
.code32
csub %d15, %d15, %d0, %d1

# CHECK-INST: csub %d15, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0xff]
.code32
csub %d15, %d15, %d0, %d14

# CHECK-INST: csub %d15, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0xff]
.code32
csub %d15, %d15, %d0, %d15

# CHECK-INST: csub %d15, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0xff]
.code32
csub %d15, %d15, %d1, %d0

# CHECK-INST: csub %d15, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0xff]
.code32
csub %d15, %d15, %d1, %d1

# CHECK-INST: csub %d15, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0xff]
.code32
csub %d15, %d15, %d1, %d14

# CHECK-INST: csub %d15, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0xff]
.code32
csub %d15, %d15, %d1, %d15

# CHECK-INST: csub %d15, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0xff]
.code32
csub %d15, %d15, %d14, %d0

# CHECK-INST: csub %d15, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0xff]
.code32
csub %d15, %d15, %d14, %d1

# CHECK-INST: csub %d15, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0xff]
.code32
csub %d15, %d15, %d14, %d14

# CHECK-INST: csub %d15, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0xff]
.code32
csub %d15, %d15, %d14, %d15

# CHECK-INST: csub %d15, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0xff]
.code32
csub %d15, %d15, %d15, %d0

# CHECK-INST: csub %d15, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0xff]
.code32
csub %d15, %d15, %d15, %d1

# CHECK-INST: csub %d15, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0xff]
.code32
csub %d15, %d15, %d15, %d14

# CHECK-INST: csub %d15, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0xff]
.code32
csub %d15, %d15, %d15, %d15

# CHECK-INST: csubn %d0, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0x00]
.code32
csubn %d0, %d0, %d0, %d0

# CHECK-INST: csubn %d0, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0x00]
.code32
csubn %d0, %d0, %d0, %d1

# CHECK-INST: csubn %d0, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0x00]
.code32
csubn %d0, %d0, %d0, %d14

# CHECK-INST: csubn %d0, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0x00]
.code32
csubn %d0, %d0, %d0, %d15

# CHECK-INST: csubn %d0, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0x00]
.code32
csubn %d0, %d0, %d1, %d0

# CHECK-INST: csubn %d0, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0x00]
.code32
csubn %d0, %d0, %d1, %d1

# CHECK-INST: csubn %d0, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0x00]
.code32
csubn %d0, %d0, %d1, %d14

# CHECK-INST: csubn %d0, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0x00]
.code32
csubn %d0, %d0, %d1, %d15

# CHECK-INST: csubn %d0, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0x00]
.code32
csubn %d0, %d0, %d14, %d0

# CHECK-INST: csubn %d0, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0x00]
.code32
csubn %d0, %d0, %d14, %d1

# CHECK-INST: csubn %d0, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0x00]
.code32
csubn %d0, %d0, %d14, %d14

# CHECK-INST: csubn %d0, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0x00]
.code32
csubn %d0, %d0, %d14, %d15

# CHECK-INST: csubn %d0, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0x00]
.code32
csubn %d0, %d0, %d15, %d0

# CHECK-INST: csubn %d0, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0x00]
.code32
csubn %d0, %d0, %d15, %d1

# CHECK-INST: csubn %d0, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0x00]
.code32
csubn %d0, %d0, %d15, %d14

# CHECK-INST: csubn %d0, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0x00]
.code32
csubn %d0, %d0, %d15, %d15

# CHECK-INST: csubn %d0, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0x01]
.code32
csubn %d0, %d1, %d0, %d0

# CHECK-INST: csubn %d0, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0x01]
.code32
csubn %d0, %d1, %d0, %d1

# CHECK-INST: csubn %d0, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0x01]
.code32
csubn %d0, %d1, %d0, %d14

# CHECK-INST: csubn %d0, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0x01]
.code32
csubn %d0, %d1, %d0, %d15

# CHECK-INST: csubn %d0, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0x01]
.code32
csubn %d0, %d1, %d1, %d0

# CHECK-INST: csubn %d0, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0x01]
.code32
csubn %d0, %d1, %d1, %d1

# CHECK-INST: csubn %d0, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0x01]
.code32
csubn %d0, %d1, %d1, %d14

# CHECK-INST: csubn %d0, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0x01]
.code32
csubn %d0, %d1, %d1, %d15

# CHECK-INST: csubn %d0, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0x01]
.code32
csubn %d0, %d1, %d14, %d0

# CHECK-INST: csubn %d0, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0x01]
.code32
csubn %d0, %d1, %d14, %d1

# CHECK-INST: csubn %d0, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0x01]
.code32
csubn %d0, %d1, %d14, %d14

# CHECK-INST: csubn %d0, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0x01]
.code32
csubn %d0, %d1, %d14, %d15

# CHECK-INST: csubn %d0, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0x01]
.code32
csubn %d0, %d1, %d15, %d0

# CHECK-INST: csubn %d0, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0x01]
.code32
csubn %d0, %d1, %d15, %d1

# CHECK-INST: csubn %d0, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0x01]
.code32
csubn %d0, %d1, %d15, %d14

# CHECK-INST: csubn %d0, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0x01]
.code32
csubn %d0, %d1, %d15, %d15

# CHECK-INST: csubn %d0, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0x0e]
.code32
csubn %d0, %d14, %d0, %d0

# CHECK-INST: csubn %d0, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0x0e]
.code32
csubn %d0, %d14, %d0, %d1

# CHECK-INST: csubn %d0, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0x0e]
.code32
csubn %d0, %d14, %d0, %d14

# CHECK-INST: csubn %d0, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0x0e]
.code32
csubn %d0, %d14, %d0, %d15

# CHECK-INST: csubn %d0, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0x0e]
.code32
csubn %d0, %d14, %d1, %d0

# CHECK-INST: csubn %d0, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0x0e]
.code32
csubn %d0, %d14, %d1, %d1

# CHECK-INST: csubn %d0, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0x0e]
.code32
csubn %d0, %d14, %d1, %d14

# CHECK-INST: csubn %d0, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0x0e]
.code32
csubn %d0, %d14, %d1, %d15

# CHECK-INST: csubn %d0, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0x0e]
.code32
csubn %d0, %d14, %d14, %d0

# CHECK-INST: csubn %d0, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0x0e]
.code32
csubn %d0, %d14, %d14, %d1

# CHECK-INST: csubn %d0, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0x0e]
.code32
csubn %d0, %d14, %d14, %d14

# CHECK-INST: csubn %d0, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0x0e]
.code32
csubn %d0, %d14, %d14, %d15

# CHECK-INST: csubn %d0, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0x0e]
.code32
csubn %d0, %d14, %d15, %d0

# CHECK-INST: csubn %d0, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0x0e]
.code32
csubn %d0, %d14, %d15, %d1

# CHECK-INST: csubn %d0, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0x0e]
.code32
csubn %d0, %d14, %d15, %d14

# CHECK-INST: csubn %d0, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0x0e]
.code32
csubn %d0, %d14, %d15, %d15

# CHECK-INST: csubn %d0, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0x0f]
.code32
csubn %d0, %d15, %d0, %d0

# CHECK-INST: csubn %d0, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0x0f]
.code32
csubn %d0, %d15, %d0, %d1

# CHECK-INST: csubn %d0, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0x0f]
.code32
csubn %d0, %d15, %d0, %d14

# CHECK-INST: csubn %d0, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0x0f]
.code32
csubn %d0, %d15, %d0, %d15

# CHECK-INST: csubn %d0, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0x0f]
.code32
csubn %d0, %d15, %d1, %d0

# CHECK-INST: csubn %d0, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0x0f]
.code32
csubn %d0, %d15, %d1, %d1

# CHECK-INST: csubn %d0, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0x0f]
.code32
csubn %d0, %d15, %d1, %d14

# CHECK-INST: csubn %d0, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0x0f]
.code32
csubn %d0, %d15, %d1, %d15

# CHECK-INST: csubn %d0, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0x0f]
.code32
csubn %d0, %d15, %d14, %d0

# CHECK-INST: csubn %d0, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0x0f]
.code32
csubn %d0, %d15, %d14, %d1

# CHECK-INST: csubn %d0, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0x0f]
.code32
csubn %d0, %d15, %d14, %d14

# CHECK-INST: csubn %d0, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0x0f]
.code32
csubn %d0, %d15, %d14, %d15

# CHECK-INST: csubn %d0, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0x0f]
.code32
csubn %d0, %d15, %d15, %d0

# CHECK-INST: csubn %d0, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0x0f]
.code32
csubn %d0, %d15, %d15, %d1

# CHECK-INST: csubn %d0, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0x0f]
.code32
csubn %d0, %d15, %d15, %d14

# CHECK-INST: csubn %d0, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0x0f]
.code32
csubn %d0, %d15, %d15, %d15

# CHECK-INST: csubn %d1, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0x10]
.code32
csubn %d1, %d0, %d0, %d0

# CHECK-INST: csubn %d1, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0x10]
.code32
csubn %d1, %d0, %d0, %d1

# CHECK-INST: csubn %d1, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0x10]
.code32
csubn %d1, %d0, %d0, %d14

# CHECK-INST: csubn %d1, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0x10]
.code32
csubn %d1, %d0, %d0, %d15

# CHECK-INST: csubn %d1, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0x10]
.code32
csubn %d1, %d0, %d1, %d0

# CHECK-INST: csubn %d1, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0x10]
.code32
csubn %d1, %d0, %d1, %d1

# CHECK-INST: csubn %d1, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0x10]
.code32
csubn %d1, %d0, %d1, %d14

# CHECK-INST: csubn %d1, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0x10]
.code32
csubn %d1, %d0, %d1, %d15

# CHECK-INST: csubn %d1, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0x10]
.code32
csubn %d1, %d0, %d14, %d0

# CHECK-INST: csubn %d1, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0x10]
.code32
csubn %d1, %d0, %d14, %d1

# CHECK-INST: csubn %d1, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0x10]
.code32
csubn %d1, %d0, %d14, %d14

# CHECK-INST: csubn %d1, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0x10]
.code32
csubn %d1, %d0, %d14, %d15

# CHECK-INST: csubn %d1, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0x10]
.code32
csubn %d1, %d0, %d15, %d0

# CHECK-INST: csubn %d1, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0x10]
.code32
csubn %d1, %d0, %d15, %d1

# CHECK-INST: csubn %d1, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0x10]
.code32
csubn %d1, %d0, %d15, %d14

# CHECK-INST: csubn %d1, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0x10]
.code32
csubn %d1, %d0, %d15, %d15

# CHECK-INST: csubn %d1, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0x11]
.code32
csubn %d1, %d1, %d0, %d0

# CHECK-INST: csubn %d1, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0x11]
.code32
csubn %d1, %d1, %d0, %d1

# CHECK-INST: csubn %d1, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0x11]
.code32
csubn %d1, %d1, %d0, %d14

# CHECK-INST: csubn %d1, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0x11]
.code32
csubn %d1, %d1, %d0, %d15

# CHECK-INST: csubn %d1, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0x11]
.code32
csubn %d1, %d1, %d1, %d0

# CHECK-INST: csubn %d1, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0x11]
.code32
csubn %d1, %d1, %d1, %d1

# CHECK-INST: csubn %d1, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0x11]
.code32
csubn %d1, %d1, %d1, %d14

# CHECK-INST: csubn %d1, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0x11]
.code32
csubn %d1, %d1, %d1, %d15

# CHECK-INST: csubn %d1, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0x11]
.code32
csubn %d1, %d1, %d14, %d0

# CHECK-INST: csubn %d1, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0x11]
.code32
csubn %d1, %d1, %d14, %d1

# CHECK-INST: csubn %d1, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0x11]
.code32
csubn %d1, %d1, %d14, %d14

# CHECK-INST: csubn %d1, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0x11]
.code32
csubn %d1, %d1, %d14, %d15

# CHECK-INST: csubn %d1, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0x11]
.code32
csubn %d1, %d1, %d15, %d0

# CHECK-INST: csubn %d1, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0x11]
.code32
csubn %d1, %d1, %d15, %d1

# CHECK-INST: csubn %d1, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0x11]
.code32
csubn %d1, %d1, %d15, %d14

# CHECK-INST: csubn %d1, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0x11]
.code32
csubn %d1, %d1, %d15, %d15

# CHECK-INST: csubn %d1, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0x1e]
.code32
csubn %d1, %d14, %d0, %d0

# CHECK-INST: csubn %d1, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0x1e]
.code32
csubn %d1, %d14, %d0, %d1

# CHECK-INST: csubn %d1, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0x1e]
.code32
csubn %d1, %d14, %d0, %d14

# CHECK-INST: csubn %d1, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0x1e]
.code32
csubn %d1, %d14, %d0, %d15

# CHECK-INST: csubn %d1, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0x1e]
.code32
csubn %d1, %d14, %d1, %d0

# CHECK-INST: csubn %d1, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0x1e]
.code32
csubn %d1, %d14, %d1, %d1

# CHECK-INST: csubn %d1, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0x1e]
.code32
csubn %d1, %d14, %d1, %d14

# CHECK-INST: csubn %d1, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0x1e]
.code32
csubn %d1, %d14, %d1, %d15

# CHECK-INST: csubn %d1, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0x1e]
.code32
csubn %d1, %d14, %d14, %d0

# CHECK-INST: csubn %d1, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0x1e]
.code32
csubn %d1, %d14, %d14, %d1

# CHECK-INST: csubn %d1, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0x1e]
.code32
csubn %d1, %d14, %d14, %d14

# CHECK-INST: csubn %d1, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0x1e]
.code32
csubn %d1, %d14, %d14, %d15

# CHECK-INST: csubn %d1, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0x1e]
.code32
csubn %d1, %d14, %d15, %d0

# CHECK-INST: csubn %d1, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0x1e]
.code32
csubn %d1, %d14, %d15, %d1

# CHECK-INST: csubn %d1, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0x1e]
.code32
csubn %d1, %d14, %d15, %d14

# CHECK-INST: csubn %d1, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0x1e]
.code32
csubn %d1, %d14, %d15, %d15

# CHECK-INST: csubn %d1, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0x1f]
.code32
csubn %d1, %d15, %d0, %d0

# CHECK-INST: csubn %d1, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0x1f]
.code32
csubn %d1, %d15, %d0, %d1

# CHECK-INST: csubn %d1, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0x1f]
.code32
csubn %d1, %d15, %d0, %d14

# CHECK-INST: csubn %d1, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0x1f]
.code32
csubn %d1, %d15, %d0, %d15

# CHECK-INST: csubn %d1, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0x1f]
.code32
csubn %d1, %d15, %d1, %d0

# CHECK-INST: csubn %d1, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0x1f]
.code32
csubn %d1, %d15, %d1, %d1

# CHECK-INST: csubn %d1, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0x1f]
.code32
csubn %d1, %d15, %d1, %d14

# CHECK-INST: csubn %d1, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0x1f]
.code32
csubn %d1, %d15, %d1, %d15

# CHECK-INST: csubn %d1, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0x1f]
.code32
csubn %d1, %d15, %d14, %d0

# CHECK-INST: csubn %d1, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0x1f]
.code32
csubn %d1, %d15, %d14, %d1

# CHECK-INST: csubn %d1, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0x1f]
.code32
csubn %d1, %d15, %d14, %d14

# CHECK-INST: csubn %d1, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0x1f]
.code32
csubn %d1, %d15, %d14, %d15

# CHECK-INST: csubn %d1, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0x1f]
.code32
csubn %d1, %d15, %d15, %d0

# CHECK-INST: csubn %d1, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0x1f]
.code32
csubn %d1, %d15, %d15, %d1

# CHECK-INST: csubn %d1, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0x1f]
.code32
csubn %d1, %d15, %d15, %d14

# CHECK-INST: csubn %d1, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0x1f]
.code32
csubn %d1, %d15, %d15, %d15

# CHECK-INST: csubn %d14, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0xe0]
.code32
csubn %d14, %d0, %d0, %d0

# CHECK-INST: csubn %d14, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0xe0]
.code32
csubn %d14, %d0, %d0, %d1

# CHECK-INST: csubn %d14, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0xe0]
.code32
csubn %d14, %d0, %d0, %d14

# CHECK-INST: csubn %d14, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0xe0]
.code32
csubn %d14, %d0, %d0, %d15

# CHECK-INST: csubn %d14, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0xe0]
.code32
csubn %d14, %d0, %d1, %d0

# CHECK-INST: csubn %d14, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0xe0]
.code32
csubn %d14, %d0, %d1, %d1

# CHECK-INST: csubn %d14, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0xe0]
.code32
csubn %d14, %d0, %d1, %d14

# CHECK-INST: csubn %d14, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0xe0]
.code32
csubn %d14, %d0, %d1, %d15

# CHECK-INST: csubn %d14, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0xe0]
.code32
csubn %d14, %d0, %d14, %d0

# CHECK-INST: csubn %d14, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0xe0]
.code32
csubn %d14, %d0, %d14, %d1

# CHECK-INST: csubn %d14, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0xe0]
.code32
csubn %d14, %d0, %d14, %d14

# CHECK-INST: csubn %d14, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0xe0]
.code32
csubn %d14, %d0, %d14, %d15

# CHECK-INST: csubn %d14, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0xe0]
.code32
csubn %d14, %d0, %d15, %d0

# CHECK-INST: csubn %d14, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0xe0]
.code32
csubn %d14, %d0, %d15, %d1

# CHECK-INST: csubn %d14, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0xe0]
.code32
csubn %d14, %d0, %d15, %d14

# CHECK-INST: csubn %d14, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0xe0]
.code32
csubn %d14, %d0, %d15, %d15

# CHECK-INST: csubn %d14, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0xe1]
.code32
csubn %d14, %d1, %d0, %d0

# CHECK-INST: csubn %d14, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0xe1]
.code32
csubn %d14, %d1, %d0, %d1

# CHECK-INST: csubn %d14, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0xe1]
.code32
csubn %d14, %d1, %d0, %d14

# CHECK-INST: csubn %d14, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0xe1]
.code32
csubn %d14, %d1, %d0, %d15

# CHECK-INST: csubn %d14, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0xe1]
.code32
csubn %d14, %d1, %d1, %d0

# CHECK-INST: csubn %d14, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0xe1]
.code32
csubn %d14, %d1, %d1, %d1

# CHECK-INST: csubn %d14, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0xe1]
.code32
csubn %d14, %d1, %d1, %d14

# CHECK-INST: csubn %d14, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0xe1]
.code32
csubn %d14, %d1, %d1, %d15

# CHECK-INST: csubn %d14, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0xe1]
.code32
csubn %d14, %d1, %d14, %d0

# CHECK-INST: csubn %d14, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0xe1]
.code32
csubn %d14, %d1, %d14, %d1

# CHECK-INST: csubn %d14, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0xe1]
.code32
csubn %d14, %d1, %d14, %d14

# CHECK-INST: csubn %d14, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0xe1]
.code32
csubn %d14, %d1, %d14, %d15

# CHECK-INST: csubn %d14, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0xe1]
.code32
csubn %d14, %d1, %d15, %d0

# CHECK-INST: csubn %d14, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0xe1]
.code32
csubn %d14, %d1, %d15, %d1

# CHECK-INST: csubn %d14, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0xe1]
.code32
csubn %d14, %d1, %d15, %d14

# CHECK-INST: csubn %d14, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0xe1]
.code32
csubn %d14, %d1, %d15, %d15

# CHECK-INST: csubn %d14, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0xee]
.code32
csubn %d14, %d14, %d0, %d0

# CHECK-INST: csubn %d14, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0xee]
.code32
csubn %d14, %d14, %d0, %d1

# CHECK-INST: csubn %d14, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0xee]
.code32
csubn %d14, %d14, %d0, %d14

# CHECK-INST: csubn %d14, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0xee]
.code32
csubn %d14, %d14, %d0, %d15

# CHECK-INST: csubn %d14, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0xee]
.code32
csubn %d14, %d14, %d1, %d0

# CHECK-INST: csubn %d14, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0xee]
.code32
csubn %d14, %d14, %d1, %d1

# CHECK-INST: csubn %d14, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0xee]
.code32
csubn %d14, %d14, %d1, %d14

# CHECK-INST: csubn %d14, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0xee]
.code32
csubn %d14, %d14, %d1, %d15

# CHECK-INST: csubn %d14, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0xee]
.code32
csubn %d14, %d14, %d14, %d0

# CHECK-INST: csubn %d14, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0xee]
.code32
csubn %d14, %d14, %d14, %d1

# CHECK-INST: csubn %d14, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0xee]
.code32
csubn %d14, %d14, %d14, %d14

# CHECK-INST: csubn %d14, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0xee]
.code32
csubn %d14, %d14, %d14, %d15

# CHECK-INST: csubn %d14, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0xee]
.code32
csubn %d14, %d14, %d15, %d0

# CHECK-INST: csubn %d14, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0xee]
.code32
csubn %d14, %d14, %d15, %d1

# CHECK-INST: csubn %d14, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0xee]
.code32
csubn %d14, %d14, %d15, %d14

# CHECK-INST: csubn %d14, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0xee]
.code32
csubn %d14, %d14, %d15, %d15

# CHECK-INST: csubn %d14, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0xef]
.code32
csubn %d14, %d15, %d0, %d0

# CHECK-INST: csubn %d14, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0xef]
.code32
csubn %d14, %d15, %d0, %d1

# CHECK-INST: csubn %d14, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0xef]
.code32
csubn %d14, %d15, %d0, %d14

# CHECK-INST: csubn %d14, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0xef]
.code32
csubn %d14, %d15, %d0, %d15

# CHECK-INST: csubn %d14, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0xef]
.code32
csubn %d14, %d15, %d1, %d0

# CHECK-INST: csubn %d14, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0xef]
.code32
csubn %d14, %d15, %d1, %d1

# CHECK-INST: csubn %d14, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0xef]
.code32
csubn %d14, %d15, %d1, %d14

# CHECK-INST: csubn %d14, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0xef]
.code32
csubn %d14, %d15, %d1, %d15

# CHECK-INST: csubn %d14, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0xef]
.code32
csubn %d14, %d15, %d14, %d0

# CHECK-INST: csubn %d14, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0xef]
.code32
csubn %d14, %d15, %d14, %d1

# CHECK-INST: csubn %d14, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0xef]
.code32
csubn %d14, %d15, %d14, %d14

# CHECK-INST: csubn %d14, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0xef]
.code32
csubn %d14, %d15, %d14, %d15

# CHECK-INST: csubn %d14, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0xef]
.code32
csubn %d14, %d15, %d15, %d0

# CHECK-INST: csubn %d14, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0xef]
.code32
csubn %d14, %d15, %d15, %d1

# CHECK-INST: csubn %d14, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0xef]
.code32
csubn %d14, %d15, %d15, %d14

# CHECK-INST: csubn %d14, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0xef]
.code32
csubn %d14, %d15, %d15, %d15

# CHECK-INST: csubn %d15, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0xf0]
.code32
csubn %d15, %d0, %d0, %d0

# CHECK-INST: csubn %d15, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0xf0]
.code32
csubn %d15, %d0, %d0, %d1

# CHECK-INST: csubn %d15, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0xf0]
.code32
csubn %d15, %d0, %d0, %d14

# CHECK-INST: csubn %d15, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0xf0]
.code32
csubn %d15, %d0, %d0, %d15

# CHECK-INST: csubn %d15, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0xf0]
.code32
csubn %d15, %d0, %d1, %d0

# CHECK-INST: csubn %d15, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0xf0]
.code32
csubn %d15, %d0, %d1, %d1

# CHECK-INST: csubn %d15, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0xf0]
.code32
csubn %d15, %d0, %d1, %d14

# CHECK-INST: csubn %d15, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0xf0]
.code32
csubn %d15, %d0, %d1, %d15

# CHECK-INST: csubn %d15, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0xf0]
.code32
csubn %d15, %d0, %d14, %d0

# CHECK-INST: csubn %d15, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0xf0]
.code32
csubn %d15, %d0, %d14, %d1

# CHECK-INST: csubn %d15, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0xf0]
.code32
csubn %d15, %d0, %d14, %d14

# CHECK-INST: csubn %d15, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0xf0]
.code32
csubn %d15, %d0, %d14, %d15

# CHECK-INST: csubn %d15, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0xf0]
.code32
csubn %d15, %d0, %d15, %d0

# CHECK-INST: csubn %d15, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0xf0]
.code32
csubn %d15, %d0, %d15, %d1

# CHECK-INST: csubn %d15, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0xf0]
.code32
csubn %d15, %d0, %d15, %d14

# CHECK-INST: csubn %d15, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0xf0]
.code32
csubn %d15, %d0, %d15, %d15

# CHECK-INST: csubn %d15, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0xf1]
.code32
csubn %d15, %d1, %d0, %d0

# CHECK-INST: csubn %d15, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0xf1]
.code32
csubn %d15, %d1, %d0, %d1

# CHECK-INST: csubn %d15, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0xf1]
.code32
csubn %d15, %d1, %d0, %d14

# CHECK-INST: csubn %d15, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0xf1]
.code32
csubn %d15, %d1, %d0, %d15

# CHECK-INST: csubn %d15, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0xf1]
.code32
csubn %d15, %d1, %d1, %d0

# CHECK-INST: csubn %d15, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0xf1]
.code32
csubn %d15, %d1, %d1, %d1

# CHECK-INST: csubn %d15, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0xf1]
.code32
csubn %d15, %d1, %d1, %d14

# CHECK-INST: csubn %d15, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0xf1]
.code32
csubn %d15, %d1, %d1, %d15

# CHECK-INST: csubn %d15, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0xf1]
.code32
csubn %d15, %d1, %d14, %d0

# CHECK-INST: csubn %d15, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0xf1]
.code32
csubn %d15, %d1, %d14, %d1

# CHECK-INST: csubn %d15, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0xf1]
.code32
csubn %d15, %d1, %d14, %d14

# CHECK-INST: csubn %d15, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0xf1]
.code32
csubn %d15, %d1, %d14, %d15

# CHECK-INST: csubn %d15, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0xf1]
.code32
csubn %d15, %d1, %d15, %d0

# CHECK-INST: csubn %d15, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0xf1]
.code32
csubn %d15, %d1, %d15, %d1

# CHECK-INST: csubn %d15, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0xf1]
.code32
csubn %d15, %d1, %d15, %d14

# CHECK-INST: csubn %d15, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0xf1]
.code32
csubn %d15, %d1, %d15, %d15

# CHECK-INST: csubn %d15, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0xfe]
.code32
csubn %d15, %d14, %d0, %d0

# CHECK-INST: csubn %d15, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0xfe]
.code32
csubn %d15, %d14, %d0, %d1

# CHECK-INST: csubn %d15, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0xfe]
.code32
csubn %d15, %d14, %d0, %d14

# CHECK-INST: csubn %d15, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0xfe]
.code32
csubn %d15, %d14, %d0, %d15

# CHECK-INST: csubn %d15, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0xfe]
.code32
csubn %d15, %d14, %d1, %d0

# CHECK-INST: csubn %d15, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0xfe]
.code32
csubn %d15, %d14, %d1, %d1

# CHECK-INST: csubn %d15, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0xfe]
.code32
csubn %d15, %d14, %d1, %d14

# CHECK-INST: csubn %d15, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0xfe]
.code32
csubn %d15, %d14, %d1, %d15

# CHECK-INST: csubn %d15, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0xfe]
.code32
csubn %d15, %d14, %d14, %d0

# CHECK-INST: csubn %d15, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0xfe]
.code32
csubn %d15, %d14, %d14, %d1

# CHECK-INST: csubn %d15, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0xfe]
.code32
csubn %d15, %d14, %d14, %d14

# CHECK-INST: csubn %d15, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0xfe]
.code32
csubn %d15, %d14, %d14, %d15

# CHECK-INST: csubn %d15, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0xfe]
.code32
csubn %d15, %d14, %d15, %d0

# CHECK-INST: csubn %d15, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0xfe]
.code32
csubn %d15, %d14, %d15, %d1

# CHECK-INST: csubn %d15, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0xfe]
.code32
csubn %d15, %d14, %d15, %d14

# CHECK-INST: csubn %d15, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0xfe]
.code32
csubn %d15, %d14, %d15, %d15

# CHECK-INST: csubn %d15, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0xff]
.code32
csubn %d15, %d15, %d0, %d0

# CHECK-INST: csubn %d15, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0xff]
.code32
csubn %d15, %d15, %d0, %d1

# CHECK-INST: csubn %d15, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0xff]
.code32
csubn %d15, %d15, %d0, %d14

# CHECK-INST: csubn %d15, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0xff]
.code32
csubn %d15, %d15, %d0, %d15

# CHECK-INST: csubn %d15, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0xff]
.code32
csubn %d15, %d15, %d1, %d0

# CHECK-INST: csubn %d15, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0xff]
.code32
csubn %d15, %d15, %d1, %d1

# CHECK-INST: csubn %d15, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0xff]
.code32
csubn %d15, %d15, %d1, %d14

# CHECK-INST: csubn %d15, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0xff]
.code32
csubn %d15, %d15, %d1, %d15

# CHECK-INST: csubn %d15, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0xff]
.code32
csubn %d15, %d15, %d14, %d0

# CHECK-INST: csubn %d15, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0xff]
.code32
csubn %d15, %d15, %d14, %d1

# CHECK-INST: csubn %d15, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0xff]
.code32
csubn %d15, %d15, %d14, %d14

# CHECK-INST: csubn %d15, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0xff]
.code32
csubn %d15, %d15, %d14, %d15

# CHECK-INST: csubn %d15, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0xff]
.code32
csubn %d15, %d15, %d15, %d0

# CHECK-INST: csubn %d15, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0xff]
.code32
csubn %d15, %d15, %d15, %d1

# CHECK-INST: csubn %d15, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0xff]
.code32
csubn %d15, %d15, %d15, %d14

# CHECK-INST: csubn %d15, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0xff]
.code32
csubn %d15, %d15, %d15, %d15

# CHECK-INST: sel %d0, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0x00]
.code32
sel %d0, %d0, %d0, %d0

# CHECK-INST: sel %d0, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0x00]
.code32
sel %d0, %d0, %d0, %d1

# CHECK-INST: sel %d0, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0x00]
.code32
sel %d0, %d0, %d0, %d14

# CHECK-INST: sel %d0, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0x00]
.code32
sel %d0, %d0, %d0, %d15

# CHECK-INST: sel %d0, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0x00]
.code32
sel %d0, %d0, %d1, %d0

# CHECK-INST: sel %d0, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0x00]
.code32
sel %d0, %d0, %d1, %d1

# CHECK-INST: sel %d0, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0x00]
.code32
sel %d0, %d0, %d1, %d14

# CHECK-INST: sel %d0, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0x00]
.code32
sel %d0, %d0, %d1, %d15

# CHECK-INST: sel %d0, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0x00]
.code32
sel %d0, %d0, %d14, %d0

# CHECK-INST: sel %d0, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0x00]
.code32
sel %d0, %d0, %d14, %d1

# CHECK-INST: sel %d0, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0x00]
.code32
sel %d0, %d0, %d14, %d14

# CHECK-INST: sel %d0, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0x00]
.code32
sel %d0, %d0, %d14, %d15

# CHECK-INST: sel %d0, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0x00]
.code32
sel %d0, %d0, %d15, %d0

# CHECK-INST: sel %d0, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0x00]
.code32
sel %d0, %d0, %d15, %d1

# CHECK-INST: sel %d0, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0x00]
.code32
sel %d0, %d0, %d15, %d14

# CHECK-INST: sel %d0, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0x00]
.code32
sel %d0, %d0, %d15, %d15

# CHECK-INST: sel %d0, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0x01]
.code32
sel %d0, %d1, %d0, %d0

# CHECK-INST: sel %d0, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0x01]
.code32
sel %d0, %d1, %d0, %d1

# CHECK-INST: sel %d0, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0x01]
.code32
sel %d0, %d1, %d0, %d14

# CHECK-INST: sel %d0, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0x01]
.code32
sel %d0, %d1, %d0, %d15

# CHECK-INST: sel %d0, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0x01]
.code32
sel %d0, %d1, %d1, %d0

# CHECK-INST: sel %d0, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0x01]
.code32
sel %d0, %d1, %d1, %d1

# CHECK-INST: sel %d0, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0x01]
.code32
sel %d0, %d1, %d1, %d14

# CHECK-INST: sel %d0, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0x01]
.code32
sel %d0, %d1, %d1, %d15

# CHECK-INST: sel %d0, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0x01]
.code32
sel %d0, %d1, %d14, %d0

# CHECK-INST: sel %d0, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0x01]
.code32
sel %d0, %d1, %d14, %d1

# CHECK-INST: sel %d0, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0x01]
.code32
sel %d0, %d1, %d14, %d14

# CHECK-INST: sel %d0, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0x01]
.code32
sel %d0, %d1, %d14, %d15

# CHECK-INST: sel %d0, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0x01]
.code32
sel %d0, %d1, %d15, %d0

# CHECK-INST: sel %d0, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0x01]
.code32
sel %d0, %d1, %d15, %d1

# CHECK-INST: sel %d0, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0x01]
.code32
sel %d0, %d1, %d15, %d14

# CHECK-INST: sel %d0, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0x01]
.code32
sel %d0, %d1, %d15, %d15

# CHECK-INST: sel %d0, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0x0e]
.code32
sel %d0, %d14, %d0, %d0

# CHECK-INST: sel %d0, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0x0e]
.code32
sel %d0, %d14, %d0, %d1

# CHECK-INST: sel %d0, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0x0e]
.code32
sel %d0, %d14, %d0, %d14

# CHECK-INST: sel %d0, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0x0e]
.code32
sel %d0, %d14, %d0, %d15

# CHECK-INST: sel %d0, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0x0e]
.code32
sel %d0, %d14, %d1, %d0

# CHECK-INST: sel %d0, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0x0e]
.code32
sel %d0, %d14, %d1, %d1

# CHECK-INST: sel %d0, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0x0e]
.code32
sel %d0, %d14, %d1, %d14

# CHECK-INST: sel %d0, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0x0e]
.code32
sel %d0, %d14, %d1, %d15

# CHECK-INST: sel %d0, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0x0e]
.code32
sel %d0, %d14, %d14, %d0

# CHECK-INST: sel %d0, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0x0e]
.code32
sel %d0, %d14, %d14, %d1

# CHECK-INST: sel %d0, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0x0e]
.code32
sel %d0, %d14, %d14, %d14

# CHECK-INST: sel %d0, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0x0e]
.code32
sel %d0, %d14, %d14, %d15

# CHECK-INST: sel %d0, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0x0e]
.code32
sel %d0, %d14, %d15, %d0

# CHECK-INST: sel %d0, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0x0e]
.code32
sel %d0, %d14, %d15, %d1

# CHECK-INST: sel %d0, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0x0e]
.code32
sel %d0, %d14, %d15, %d14

# CHECK-INST: sel %d0, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0x0e]
.code32
sel %d0, %d14, %d15, %d15

# CHECK-INST: sel %d0, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0x0f]
.code32
sel %d0, %d15, %d0, %d0

# CHECK-INST: sel %d0, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0x0f]
.code32
sel %d0, %d15, %d0, %d1

# CHECK-INST: sel %d0, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0x0f]
.code32
sel %d0, %d15, %d0, %d14

# CHECK-INST: sel %d0, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0x0f]
.code32
sel %d0, %d15, %d0, %d15

# CHECK-INST: sel %d0, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0x0f]
.code32
sel %d0, %d15, %d1, %d0

# CHECK-INST: sel %d0, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0x0f]
.code32
sel %d0, %d15, %d1, %d1

# CHECK-INST: sel %d0, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0x0f]
.code32
sel %d0, %d15, %d1, %d14

# CHECK-INST: sel %d0, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0x0f]
.code32
sel %d0, %d15, %d1, %d15

# CHECK-INST: sel %d0, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0x0f]
.code32
sel %d0, %d15, %d14, %d0

# CHECK-INST: sel %d0, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0x0f]
.code32
sel %d0, %d15, %d14, %d1

# CHECK-INST: sel %d0, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0x0f]
.code32
sel %d0, %d15, %d14, %d14

# CHECK-INST: sel %d0, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0x0f]
.code32
sel %d0, %d15, %d14, %d15

# CHECK-INST: sel %d0, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0x0f]
.code32
sel %d0, %d15, %d15, %d0

# CHECK-INST: sel %d0, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0x0f]
.code32
sel %d0, %d15, %d15, %d1

# CHECK-INST: sel %d0, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0x0f]
.code32
sel %d0, %d15, %d15, %d14

# CHECK-INST: sel %d0, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0x0f]
.code32
sel %d0, %d15, %d15, %d15

# CHECK-INST: sel %d1, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0x10]
.code32
sel %d1, %d0, %d0, %d0

# CHECK-INST: sel %d1, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0x10]
.code32
sel %d1, %d0, %d0, %d1

# CHECK-INST: sel %d1, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0x10]
.code32
sel %d1, %d0, %d0, %d14

# CHECK-INST: sel %d1, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0x10]
.code32
sel %d1, %d0, %d0, %d15

# CHECK-INST: sel %d1, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0x10]
.code32
sel %d1, %d0, %d1, %d0

# CHECK-INST: sel %d1, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0x10]
.code32
sel %d1, %d0, %d1, %d1

# CHECK-INST: sel %d1, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0x10]
.code32
sel %d1, %d0, %d1, %d14

# CHECK-INST: sel %d1, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0x10]
.code32
sel %d1, %d0, %d1, %d15

# CHECK-INST: sel %d1, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0x10]
.code32
sel %d1, %d0, %d14, %d0

# CHECK-INST: sel %d1, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0x10]
.code32
sel %d1, %d0, %d14, %d1

# CHECK-INST: sel %d1, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0x10]
.code32
sel %d1, %d0, %d14, %d14

# CHECK-INST: sel %d1, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0x10]
.code32
sel %d1, %d0, %d14, %d15

# CHECK-INST: sel %d1, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0x10]
.code32
sel %d1, %d0, %d15, %d0

# CHECK-INST: sel %d1, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0x10]
.code32
sel %d1, %d0, %d15, %d1

# CHECK-INST: sel %d1, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0x10]
.code32
sel %d1, %d0, %d15, %d14

# CHECK-INST: sel %d1, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0x10]
.code32
sel %d1, %d0, %d15, %d15

# CHECK-INST: sel %d1, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0x11]
.code32
sel %d1, %d1, %d0, %d0

# CHECK-INST: sel %d1, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0x11]
.code32
sel %d1, %d1, %d0, %d1

# CHECK-INST: sel %d1, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0x11]
.code32
sel %d1, %d1, %d0, %d14

# CHECK-INST: sel %d1, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0x11]
.code32
sel %d1, %d1, %d0, %d15

# CHECK-INST: sel %d1, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0x11]
.code32
sel %d1, %d1, %d1, %d0

# CHECK-INST: sel %d1, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0x11]
.code32
sel %d1, %d1, %d1, %d1

# CHECK-INST: sel %d1, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0x11]
.code32
sel %d1, %d1, %d1, %d14

# CHECK-INST: sel %d1, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0x11]
.code32
sel %d1, %d1, %d1, %d15

# CHECK-INST: sel %d1, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0x11]
.code32
sel %d1, %d1, %d14, %d0

# CHECK-INST: sel %d1, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0x11]
.code32
sel %d1, %d1, %d14, %d1

# CHECK-INST: sel %d1, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0x11]
.code32
sel %d1, %d1, %d14, %d14

# CHECK-INST: sel %d1, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0x11]
.code32
sel %d1, %d1, %d14, %d15

# CHECK-INST: sel %d1, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0x11]
.code32
sel %d1, %d1, %d15, %d0

# CHECK-INST: sel %d1, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0x11]
.code32
sel %d1, %d1, %d15, %d1

# CHECK-INST: sel %d1, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0x11]
.code32
sel %d1, %d1, %d15, %d14

# CHECK-INST: sel %d1, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0x11]
.code32
sel %d1, %d1, %d15, %d15

# CHECK-INST: sel %d1, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0x1e]
.code32
sel %d1, %d14, %d0, %d0

# CHECK-INST: sel %d1, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0x1e]
.code32
sel %d1, %d14, %d0, %d1

# CHECK-INST: sel %d1, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0x1e]
.code32
sel %d1, %d14, %d0, %d14

# CHECK-INST: sel %d1, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0x1e]
.code32
sel %d1, %d14, %d0, %d15

# CHECK-INST: sel %d1, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0x1e]
.code32
sel %d1, %d14, %d1, %d0

# CHECK-INST: sel %d1, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0x1e]
.code32
sel %d1, %d14, %d1, %d1

# CHECK-INST: sel %d1, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0x1e]
.code32
sel %d1, %d14, %d1, %d14

# CHECK-INST: sel %d1, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0x1e]
.code32
sel %d1, %d14, %d1, %d15

# CHECK-INST: sel %d1, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0x1e]
.code32
sel %d1, %d14, %d14, %d0

# CHECK-INST: sel %d1, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0x1e]
.code32
sel %d1, %d14, %d14, %d1

# CHECK-INST: sel %d1, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0x1e]
.code32
sel %d1, %d14, %d14, %d14

# CHECK-INST: sel %d1, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0x1e]
.code32
sel %d1, %d14, %d14, %d15

# CHECK-INST: sel %d1, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0x1e]
.code32
sel %d1, %d14, %d15, %d0

# CHECK-INST: sel %d1, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0x1e]
.code32
sel %d1, %d14, %d15, %d1

# CHECK-INST: sel %d1, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0x1e]
.code32
sel %d1, %d14, %d15, %d14

# CHECK-INST: sel %d1, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0x1e]
.code32
sel %d1, %d14, %d15, %d15

# CHECK-INST: sel %d1, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0x1f]
.code32
sel %d1, %d15, %d0, %d0

# CHECK-INST: sel %d1, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0x1f]
.code32
sel %d1, %d15, %d0, %d1

# CHECK-INST: sel %d1, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0x1f]
.code32
sel %d1, %d15, %d0, %d14

# CHECK-INST: sel %d1, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0x1f]
.code32
sel %d1, %d15, %d0, %d15

# CHECK-INST: sel %d1, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0x1f]
.code32
sel %d1, %d15, %d1, %d0

# CHECK-INST: sel %d1, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0x1f]
.code32
sel %d1, %d15, %d1, %d1

# CHECK-INST: sel %d1, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0x1f]
.code32
sel %d1, %d15, %d1, %d14

# CHECK-INST: sel %d1, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0x1f]
.code32
sel %d1, %d15, %d1, %d15

# CHECK-INST: sel %d1, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0x1f]
.code32
sel %d1, %d15, %d14, %d0

# CHECK-INST: sel %d1, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0x1f]
.code32
sel %d1, %d15, %d14, %d1

# CHECK-INST: sel %d1, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0x1f]
.code32
sel %d1, %d15, %d14, %d14

# CHECK-INST: sel %d1, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0x1f]
.code32
sel %d1, %d15, %d14, %d15

# CHECK-INST: sel %d1, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0x1f]
.code32
sel %d1, %d15, %d15, %d0

# CHECK-INST: sel %d1, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0x1f]
.code32
sel %d1, %d15, %d15, %d1

# CHECK-INST: sel %d1, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0x1f]
.code32
sel %d1, %d15, %d15, %d14

# CHECK-INST: sel %d1, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0x1f]
.code32
sel %d1, %d15, %d15, %d15

# CHECK-INST: sel %d14, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0xe0]
.code32
sel %d14, %d0, %d0, %d0

# CHECK-INST: sel %d14, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0xe0]
.code32
sel %d14, %d0, %d0, %d1

# CHECK-INST: sel %d14, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0xe0]
.code32
sel %d14, %d0, %d0, %d14

# CHECK-INST: sel %d14, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0xe0]
.code32
sel %d14, %d0, %d0, %d15

# CHECK-INST: sel %d14, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0xe0]
.code32
sel %d14, %d0, %d1, %d0

# CHECK-INST: sel %d14, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0xe0]
.code32
sel %d14, %d0, %d1, %d1

# CHECK-INST: sel %d14, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0xe0]
.code32
sel %d14, %d0, %d1, %d14

# CHECK-INST: sel %d14, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0xe0]
.code32
sel %d14, %d0, %d1, %d15

# CHECK-INST: sel %d14, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0xe0]
.code32
sel %d14, %d0, %d14, %d0

# CHECK-INST: sel %d14, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0xe0]
.code32
sel %d14, %d0, %d14, %d1

# CHECK-INST: sel %d14, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0xe0]
.code32
sel %d14, %d0, %d14, %d14

# CHECK-INST: sel %d14, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0xe0]
.code32
sel %d14, %d0, %d14, %d15

# CHECK-INST: sel %d14, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0xe0]
.code32
sel %d14, %d0, %d15, %d0

# CHECK-INST: sel %d14, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0xe0]
.code32
sel %d14, %d0, %d15, %d1

# CHECK-INST: sel %d14, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0xe0]
.code32
sel %d14, %d0, %d15, %d14

# CHECK-INST: sel %d14, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0xe0]
.code32
sel %d14, %d0, %d15, %d15

# CHECK-INST: sel %d14, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0xe1]
.code32
sel %d14, %d1, %d0, %d0

# CHECK-INST: sel %d14, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0xe1]
.code32
sel %d14, %d1, %d0, %d1

# CHECK-INST: sel %d14, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0xe1]
.code32
sel %d14, %d1, %d0, %d14

# CHECK-INST: sel %d14, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0xe1]
.code32
sel %d14, %d1, %d0, %d15

# CHECK-INST: sel %d14, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0xe1]
.code32
sel %d14, %d1, %d1, %d0

# CHECK-INST: sel %d14, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0xe1]
.code32
sel %d14, %d1, %d1, %d1

# CHECK-INST: sel %d14, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0xe1]
.code32
sel %d14, %d1, %d1, %d14

# CHECK-INST: sel %d14, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0xe1]
.code32
sel %d14, %d1, %d1, %d15

# CHECK-INST: sel %d14, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0xe1]
.code32
sel %d14, %d1, %d14, %d0

# CHECK-INST: sel %d14, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0xe1]
.code32
sel %d14, %d1, %d14, %d1

# CHECK-INST: sel %d14, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0xe1]
.code32
sel %d14, %d1, %d14, %d14

# CHECK-INST: sel %d14, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0xe1]
.code32
sel %d14, %d1, %d14, %d15

# CHECK-INST: sel %d14, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0xe1]
.code32
sel %d14, %d1, %d15, %d0

# CHECK-INST: sel %d14, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0xe1]
.code32
sel %d14, %d1, %d15, %d1

# CHECK-INST: sel %d14, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0xe1]
.code32
sel %d14, %d1, %d15, %d14

# CHECK-INST: sel %d14, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0xe1]
.code32
sel %d14, %d1, %d15, %d15

# CHECK-INST: sel %d14, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0xee]
.code32
sel %d14, %d14, %d0, %d0

# CHECK-INST: sel %d14, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0xee]
.code32
sel %d14, %d14, %d0, %d1

# CHECK-INST: sel %d14, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0xee]
.code32
sel %d14, %d14, %d0, %d14

# CHECK-INST: sel %d14, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0xee]
.code32
sel %d14, %d14, %d0, %d15

# CHECK-INST: sel %d14, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0xee]
.code32
sel %d14, %d14, %d1, %d0

# CHECK-INST: sel %d14, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0xee]
.code32
sel %d14, %d14, %d1, %d1

# CHECK-INST: sel %d14, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0xee]
.code32
sel %d14, %d14, %d1, %d14

# CHECK-INST: sel %d14, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0xee]
.code32
sel %d14, %d14, %d1, %d15

# CHECK-INST: sel %d14, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0xee]
.code32
sel %d14, %d14, %d14, %d0

# CHECK-INST: sel %d14, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0xee]
.code32
sel %d14, %d14, %d14, %d1

# CHECK-INST: sel %d14, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0xee]
.code32
sel %d14, %d14, %d14, %d14

# CHECK-INST: sel %d14, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0xee]
.code32
sel %d14, %d14, %d14, %d15

# CHECK-INST: sel %d14, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0xee]
.code32
sel %d14, %d14, %d15, %d0

# CHECK-INST: sel %d14, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0xee]
.code32
sel %d14, %d14, %d15, %d1

# CHECK-INST: sel %d14, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0xee]
.code32
sel %d14, %d14, %d15, %d14

# CHECK-INST: sel %d14, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0xee]
.code32
sel %d14, %d14, %d15, %d15

# CHECK-INST: sel %d14, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0xef]
.code32
sel %d14, %d15, %d0, %d0

# CHECK-INST: sel %d14, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0xef]
.code32
sel %d14, %d15, %d0, %d1

# CHECK-INST: sel %d14, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0xef]
.code32
sel %d14, %d15, %d0, %d14

# CHECK-INST: sel %d14, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0xef]
.code32
sel %d14, %d15, %d0, %d15

# CHECK-INST: sel %d14, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0xef]
.code32
sel %d14, %d15, %d1, %d0

# CHECK-INST: sel %d14, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0xef]
.code32
sel %d14, %d15, %d1, %d1

# CHECK-INST: sel %d14, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0xef]
.code32
sel %d14, %d15, %d1, %d14

# CHECK-INST: sel %d14, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0xef]
.code32
sel %d14, %d15, %d1, %d15

# CHECK-INST: sel %d14, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0xef]
.code32
sel %d14, %d15, %d14, %d0

# CHECK-INST: sel %d14, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0xef]
.code32
sel %d14, %d15, %d14, %d1

# CHECK-INST: sel %d14, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0xef]
.code32
sel %d14, %d15, %d14, %d14

# CHECK-INST: sel %d14, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0xef]
.code32
sel %d14, %d15, %d14, %d15

# CHECK-INST: sel %d14, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0xef]
.code32
sel %d14, %d15, %d15, %d0

# CHECK-INST: sel %d14, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0xef]
.code32
sel %d14, %d15, %d15, %d1

# CHECK-INST: sel %d14, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0xef]
.code32
sel %d14, %d15, %d15, %d14

# CHECK-INST: sel %d14, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0xef]
.code32
sel %d14, %d15, %d15, %d15

# CHECK-INST: sel %d15, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0xf0]
.code32
sel %d15, %d0, %d0, %d0

# CHECK-INST: sel %d15, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0xf0]
.code32
sel %d15, %d0, %d0, %d1

# CHECK-INST: sel %d15, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0xf0]
.code32
sel %d15, %d0, %d0, %d14

# CHECK-INST: sel %d15, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0xf0]
.code32
sel %d15, %d0, %d0, %d15

# CHECK-INST: sel %d15, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0xf0]
.code32
sel %d15, %d0, %d1, %d0

# CHECK-INST: sel %d15, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0xf0]
.code32
sel %d15, %d0, %d1, %d1

# CHECK-INST: sel %d15, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0xf0]
.code32
sel %d15, %d0, %d1, %d14

# CHECK-INST: sel %d15, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0xf0]
.code32
sel %d15, %d0, %d1, %d15

# CHECK-INST: sel %d15, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0xf0]
.code32
sel %d15, %d0, %d14, %d0

# CHECK-INST: sel %d15, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0xf0]
.code32
sel %d15, %d0, %d14, %d1

# CHECK-INST: sel %d15, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0xf0]
.code32
sel %d15, %d0, %d14, %d14

# CHECK-INST: sel %d15, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0xf0]
.code32
sel %d15, %d0, %d14, %d15

# CHECK-INST: sel %d15, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0xf0]
.code32
sel %d15, %d0, %d15, %d0

# CHECK-INST: sel %d15, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0xf0]
.code32
sel %d15, %d0, %d15, %d1

# CHECK-INST: sel %d15, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0xf0]
.code32
sel %d15, %d0, %d15, %d14

# CHECK-INST: sel %d15, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0xf0]
.code32
sel %d15, %d0, %d15, %d15

# CHECK-INST: sel %d15, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0xf1]
.code32
sel %d15, %d1, %d0, %d0

# CHECK-INST: sel %d15, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0xf1]
.code32
sel %d15, %d1, %d0, %d1

# CHECK-INST: sel %d15, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0xf1]
.code32
sel %d15, %d1, %d0, %d14

# CHECK-INST: sel %d15, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0xf1]
.code32
sel %d15, %d1, %d0, %d15

# CHECK-INST: sel %d15, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0xf1]
.code32
sel %d15, %d1, %d1, %d0

# CHECK-INST: sel %d15, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0xf1]
.code32
sel %d15, %d1, %d1, %d1

# CHECK-INST: sel %d15, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0xf1]
.code32
sel %d15, %d1, %d1, %d14

# CHECK-INST: sel %d15, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0xf1]
.code32
sel %d15, %d1, %d1, %d15

# CHECK-INST: sel %d15, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0xf1]
.code32
sel %d15, %d1, %d14, %d0

# CHECK-INST: sel %d15, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0xf1]
.code32
sel %d15, %d1, %d14, %d1

# CHECK-INST: sel %d15, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0xf1]
.code32
sel %d15, %d1, %d14, %d14

# CHECK-INST: sel %d15, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0xf1]
.code32
sel %d15, %d1, %d14, %d15

# CHECK-INST: sel %d15, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0xf1]
.code32
sel %d15, %d1, %d15, %d0

# CHECK-INST: sel %d15, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0xf1]
.code32
sel %d15, %d1, %d15, %d1

# CHECK-INST: sel %d15, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0xf1]
.code32
sel %d15, %d1, %d15, %d14

# CHECK-INST: sel %d15, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0xf1]
.code32
sel %d15, %d1, %d15, %d15

# CHECK-INST: sel %d15, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0xfe]
.code32
sel %d15, %d14, %d0, %d0

# CHECK-INST: sel %d15, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0xfe]
.code32
sel %d15, %d14, %d0, %d1

# CHECK-INST: sel %d15, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0xfe]
.code32
sel %d15, %d14, %d0, %d14

# CHECK-INST: sel %d15, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0xfe]
.code32
sel %d15, %d14, %d0, %d15

# CHECK-INST: sel %d15, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0xfe]
.code32
sel %d15, %d14, %d1, %d0

# CHECK-INST: sel %d15, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0xfe]
.code32
sel %d15, %d14, %d1, %d1

# CHECK-INST: sel %d15, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0xfe]
.code32
sel %d15, %d14, %d1, %d14

# CHECK-INST: sel %d15, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0xfe]
.code32
sel %d15, %d14, %d1, %d15

# CHECK-INST: sel %d15, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0xfe]
.code32
sel %d15, %d14, %d14, %d0

# CHECK-INST: sel %d15, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0xfe]
.code32
sel %d15, %d14, %d14, %d1

# CHECK-INST: sel %d15, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0xfe]
.code32
sel %d15, %d14, %d14, %d14

# CHECK-INST: sel %d15, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0xfe]
.code32
sel %d15, %d14, %d14, %d15

# CHECK-INST: sel %d15, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0xfe]
.code32
sel %d15, %d14, %d15, %d0

# CHECK-INST: sel %d15, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0xfe]
.code32
sel %d15, %d14, %d15, %d1

# CHECK-INST: sel %d15, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0xfe]
.code32
sel %d15, %d14, %d15, %d14

# CHECK-INST: sel %d15, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0xfe]
.code32
sel %d15, %d14, %d15, %d15

# CHECK-INST: sel %d15, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0xff]
.code32
sel %d15, %d15, %d0, %d0

# CHECK-INST: sel %d15, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0xff]
.code32
sel %d15, %d15, %d0, %d1

# CHECK-INST: sel %d15, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0xff]
.code32
sel %d15, %d15, %d0, %d14

# CHECK-INST: sel %d15, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0xff]
.code32
sel %d15, %d15, %d0, %d15

# CHECK-INST: sel %d15, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0xff]
.code32
sel %d15, %d15, %d1, %d0

# CHECK-INST: sel %d15, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0xff]
.code32
sel %d15, %d15, %d1, %d1

# CHECK-INST: sel %d15, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0xff]
.code32
sel %d15, %d15, %d1, %d14

# CHECK-INST: sel %d15, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0xff]
.code32
sel %d15, %d15, %d1, %d15

# CHECK-INST: sel %d15, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0xff]
.code32
sel %d15, %d15, %d14, %d0

# CHECK-INST: sel %d15, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0xff]
.code32
sel %d15, %d15, %d14, %d1

# CHECK-INST: sel %d15, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0xff]
.code32
sel %d15, %d15, %d14, %d14

# CHECK-INST: sel %d15, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0xff]
.code32
sel %d15, %d15, %d14, %d15

# CHECK-INST: sel %d15, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0xff]
.code32
sel %d15, %d15, %d15, %d0

# CHECK-INST: sel %d15, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0xff]
.code32
sel %d15, %d15, %d15, %d1

# CHECK-INST: sel %d15, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0xff]
.code32
sel %d15, %d15, %d15, %d14

# CHECK-INST: sel %d15, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0xff]
.code32
sel %d15, %d15, %d15, %d15

# CHECK-INST: sel %d0, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0x00]
.code32
sel %d0, %d0, %d0, -256

# CHECK-INST: sel %d0, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0x00]
.code32
sel %d0, %d0, %d0, -129

# CHECK-INST: sel %d0, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0x00]
.code32
sel %d0, %d0, %d0, -1

# CHECK-INST: sel %d0, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0x00]
.code32
sel %d0, %d0, %d0, 0

# CHECK-INST: sel %d0, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0x00]
.code32
sel %d0, %d0, %d0, 1

# CHECK-INST: sel %d0, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0x00]
.code32
sel %d0, %d0, %d0, 128

# CHECK-INST: sel %d0, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0x00]
.code32
sel %d0, %d0, %d0, 255

# CHECK-INST: sel %d0, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0x00]
.code32
sel %d0, %d0, %d1, -256

# CHECK-INST: sel %d0, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0x00]
.code32
sel %d0, %d0, %d1, -129

# CHECK-INST: sel %d0, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0x00]
.code32
sel %d0, %d0, %d1, -1

# CHECK-INST: sel %d0, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0x00]
.code32
sel %d0, %d0, %d1, 0

# CHECK-INST: sel %d0, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0x00]
.code32
sel %d0, %d0, %d1, 1

# CHECK-INST: sel %d0, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0x00]
.code32
sel %d0, %d0, %d1, 128

# CHECK-INST: sel %d0, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0x00]
.code32
sel %d0, %d0, %d1, 255

# CHECK-INST: sel %d0, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0x00]
.code32
sel %d0, %d0, %d14, -256

# CHECK-INST: sel %d0, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0x00]
.code32
sel %d0, %d0, %d14, -129

# CHECK-INST: sel %d0, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0x00]
.code32
sel %d0, %d0, %d14, -1

# CHECK-INST: sel %d0, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0x00]
.code32
sel %d0, %d0, %d14, 0

# CHECK-INST: sel %d0, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0x00]
.code32
sel %d0, %d0, %d14, 1

# CHECK-INST: sel %d0, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0x00]
.code32
sel %d0, %d0, %d14, 128

# CHECK-INST: sel %d0, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0x00]
.code32
sel %d0, %d0, %d14, 255

# CHECK-INST: sel %d0, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0x00]
.code32
sel %d0, %d0, %d15, -256

# CHECK-INST: sel %d0, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0x00]
.code32
sel %d0, %d0, %d15, -129

# CHECK-INST: sel %d0, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0x00]
.code32
sel %d0, %d0, %d15, -1

# CHECK-INST: sel %d0, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0x00]
.code32
sel %d0, %d0, %d15, 0

# CHECK-INST: sel %d0, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0x00]
.code32
sel %d0, %d0, %d15, 1

# CHECK-INST: sel %d0, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0x00]
.code32
sel %d0, %d0, %d15, 128

# CHECK-INST: sel %d0, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0x00]
.code32
sel %d0, %d0, %d15, 255

# CHECK-INST: sel %d0, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0x01]
.code32
sel %d0, %d1, %d0, -256

# CHECK-INST: sel %d0, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0x01]
.code32
sel %d0, %d1, %d0, -129

# CHECK-INST: sel %d0, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0x01]
.code32
sel %d0, %d1, %d0, -1

# CHECK-INST: sel %d0, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0x01]
.code32
sel %d0, %d1, %d0, 0

# CHECK-INST: sel %d0, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0x01]
.code32
sel %d0, %d1, %d0, 1

# CHECK-INST: sel %d0, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0x01]
.code32
sel %d0, %d1, %d0, 128

# CHECK-INST: sel %d0, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0x01]
.code32
sel %d0, %d1, %d0, 255

# CHECK-INST: sel %d0, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0x01]
.code32
sel %d0, %d1, %d1, -256

# CHECK-INST: sel %d0, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0x01]
.code32
sel %d0, %d1, %d1, -129

# CHECK-INST: sel %d0, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0x01]
.code32
sel %d0, %d1, %d1, -1

# CHECK-INST: sel %d0, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0x01]
.code32
sel %d0, %d1, %d1, 0

# CHECK-INST: sel %d0, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0x01]
.code32
sel %d0, %d1, %d1, 1

# CHECK-INST: sel %d0, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0x01]
.code32
sel %d0, %d1, %d1, 128

# CHECK-INST: sel %d0, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0x01]
.code32
sel %d0, %d1, %d1, 255

# CHECK-INST: sel %d0, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0x01]
.code32
sel %d0, %d1, %d14, -256

# CHECK-INST: sel %d0, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0x01]
.code32
sel %d0, %d1, %d14, -129

# CHECK-INST: sel %d0, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0x01]
.code32
sel %d0, %d1, %d14, -1

# CHECK-INST: sel %d0, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0x01]
.code32
sel %d0, %d1, %d14, 0

# CHECK-INST: sel %d0, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0x01]
.code32
sel %d0, %d1, %d14, 1

# CHECK-INST: sel %d0, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0x01]
.code32
sel %d0, %d1, %d14, 128

# CHECK-INST: sel %d0, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0x01]
.code32
sel %d0, %d1, %d14, 255

# CHECK-INST: sel %d0, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0x01]
.code32
sel %d0, %d1, %d15, -256

# CHECK-INST: sel %d0, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0x01]
.code32
sel %d0, %d1, %d15, -129

# CHECK-INST: sel %d0, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0x01]
.code32
sel %d0, %d1, %d15, -1

# CHECK-INST: sel %d0, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0x01]
.code32
sel %d0, %d1, %d15, 0

# CHECK-INST: sel %d0, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0x01]
.code32
sel %d0, %d1, %d15, 1

# CHECK-INST: sel %d0, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0x01]
.code32
sel %d0, %d1, %d15, 128

# CHECK-INST: sel %d0, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0x01]
.code32
sel %d0, %d1, %d15, 255

# CHECK-INST: sel %d0, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0x0e]
.code32
sel %d0, %d14, %d0, -256

# CHECK-INST: sel %d0, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0x0e]
.code32
sel %d0, %d14, %d0, -129

# CHECK-INST: sel %d0, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0x0e]
.code32
sel %d0, %d14, %d0, -1

# CHECK-INST: sel %d0, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0x0e]
.code32
sel %d0, %d14, %d0, 0

# CHECK-INST: sel %d0, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0x0e]
.code32
sel %d0, %d14, %d0, 1

# CHECK-INST: sel %d0, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0x0e]
.code32
sel %d0, %d14, %d0, 128

# CHECK-INST: sel %d0, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0x0e]
.code32
sel %d0, %d14, %d0, 255

# CHECK-INST: sel %d0, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0x0e]
.code32
sel %d0, %d14, %d1, -256

# CHECK-INST: sel %d0, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0x0e]
.code32
sel %d0, %d14, %d1, -129

# CHECK-INST: sel %d0, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0x0e]
.code32
sel %d0, %d14, %d1, -1

# CHECK-INST: sel %d0, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0x0e]
.code32
sel %d0, %d14, %d1, 0

# CHECK-INST: sel %d0, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0x0e]
.code32
sel %d0, %d14, %d1, 1

# CHECK-INST: sel %d0, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0x0e]
.code32
sel %d0, %d14, %d1, 128

# CHECK-INST: sel %d0, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0x0e]
.code32
sel %d0, %d14, %d1, 255

# CHECK-INST: sel %d0, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0x0e]
.code32
sel %d0, %d14, %d14, -256

# CHECK-INST: sel %d0, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0x0e]
.code32
sel %d0, %d14, %d14, -129

# CHECK-INST: sel %d0, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0x0e]
.code32
sel %d0, %d14, %d14, -1

# CHECK-INST: sel %d0, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0x0e]
.code32
sel %d0, %d14, %d14, 0

# CHECK-INST: sel %d0, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0x0e]
.code32
sel %d0, %d14, %d14, 1

# CHECK-INST: sel %d0, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0x0e]
.code32
sel %d0, %d14, %d14, 128

# CHECK-INST: sel %d0, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0x0e]
.code32
sel %d0, %d14, %d14, 255

# CHECK-INST: sel %d0, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0x0e]
.code32
sel %d0, %d14, %d15, -256

# CHECK-INST: sel %d0, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0x0e]
.code32
sel %d0, %d14, %d15, -129

# CHECK-INST: sel %d0, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0x0e]
.code32
sel %d0, %d14, %d15, -1

# CHECK-INST: sel %d0, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0x0e]
.code32
sel %d0, %d14, %d15, 0

# CHECK-INST: sel %d0, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0x0e]
.code32
sel %d0, %d14, %d15, 1

# CHECK-INST: sel %d0, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0x0e]
.code32
sel %d0, %d14, %d15, 128

# CHECK-INST: sel %d0, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0x0e]
.code32
sel %d0, %d14, %d15, 255

# CHECK-INST: sel %d0, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0x0f]
.code32
sel %d0, %d15, %d0, -256

# CHECK-INST: sel %d0, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0x0f]
.code32
sel %d0, %d15, %d0, -129

# CHECK-INST: sel %d0, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0x0f]
.code32
sel %d0, %d15, %d0, -1

# CHECK-INST: sel %d0, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0x0f]
.code32
sel %d0, %d15, %d0, 0

# CHECK-INST: sel %d0, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0x0f]
.code32
sel %d0, %d15, %d0, 1

# CHECK-INST: sel %d0, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0x0f]
.code32
sel %d0, %d15, %d0, 128

# CHECK-INST: sel %d0, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0x0f]
.code32
sel %d0, %d15, %d0, 255

# CHECK-INST: sel %d0, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0x0f]
.code32
sel %d0, %d15, %d1, -256

# CHECK-INST: sel %d0, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0x0f]
.code32
sel %d0, %d15, %d1, -129

# CHECK-INST: sel %d0, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0x0f]
.code32
sel %d0, %d15, %d1, -1

# CHECK-INST: sel %d0, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0x0f]
.code32
sel %d0, %d15, %d1, 0

# CHECK-INST: sel %d0, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0x0f]
.code32
sel %d0, %d15, %d1, 1

# CHECK-INST: sel %d0, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0x0f]
.code32
sel %d0, %d15, %d1, 128

# CHECK-INST: sel %d0, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0x0f]
.code32
sel %d0, %d15, %d1, 255

# CHECK-INST: sel %d0, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0x0f]
.code32
sel %d0, %d15, %d14, -256

# CHECK-INST: sel %d0, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0x0f]
.code32
sel %d0, %d15, %d14, -129

# CHECK-INST: sel %d0, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0x0f]
.code32
sel %d0, %d15, %d14, -1

# CHECK-INST: sel %d0, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0x0f]
.code32
sel %d0, %d15, %d14, 0

# CHECK-INST: sel %d0, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0x0f]
.code32
sel %d0, %d15, %d14, 1

# CHECK-INST: sel %d0, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0x0f]
.code32
sel %d0, %d15, %d14, 128

# CHECK-INST: sel %d0, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0x0f]
.code32
sel %d0, %d15, %d14, 255

# CHECK-INST: sel %d0, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0x0f]
.code32
sel %d0, %d15, %d15, -256

# CHECK-INST: sel %d0, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0x0f]
.code32
sel %d0, %d15, %d15, -129

# CHECK-INST: sel %d0, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0x0f]
.code32
sel %d0, %d15, %d15, -1

# CHECK-INST: sel %d0, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0x0f]
.code32
sel %d0, %d15, %d15, 0

# CHECK-INST: sel %d0, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0x0f]
.code32
sel %d0, %d15, %d15, 1

# CHECK-INST: sel %d0, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0x0f]
.code32
sel %d0, %d15, %d15, 128

# CHECK-INST: sel %d0, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0x0f]
.code32
sel %d0, %d15, %d15, 255

# CHECK-INST: sel %d1, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0x10]
.code32
sel %d1, %d0, %d0, -256

# CHECK-INST: sel %d1, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0x10]
.code32
sel %d1, %d0, %d0, -129

# CHECK-INST: sel %d1, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0x10]
.code32
sel %d1, %d0, %d0, -1

# CHECK-INST: sel %d1, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0x10]
.code32
sel %d1, %d0, %d0, 0

# CHECK-INST: sel %d1, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0x10]
.code32
sel %d1, %d0, %d0, 1

# CHECK-INST: sel %d1, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0x10]
.code32
sel %d1, %d0, %d0, 128

# CHECK-INST: sel %d1, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0x10]
.code32
sel %d1, %d0, %d0, 255

# CHECK-INST: sel %d1, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0x10]
.code32
sel %d1, %d0, %d1, -256

# CHECK-INST: sel %d1, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0x10]
.code32
sel %d1, %d0, %d1, -129

# CHECK-INST: sel %d1, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0x10]
.code32
sel %d1, %d0, %d1, -1

# CHECK-INST: sel %d1, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0x10]
.code32
sel %d1, %d0, %d1, 0

# CHECK-INST: sel %d1, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0x10]
.code32
sel %d1, %d0, %d1, 1

# CHECK-INST: sel %d1, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0x10]
.code32
sel %d1, %d0, %d1, 128

# CHECK-INST: sel %d1, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0x10]
.code32
sel %d1, %d0, %d1, 255

# CHECK-INST: sel %d1, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0x10]
.code32
sel %d1, %d0, %d14, -256

# CHECK-INST: sel %d1, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0x10]
.code32
sel %d1, %d0, %d14, -129

# CHECK-INST: sel %d1, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0x10]
.code32
sel %d1, %d0, %d14, -1

# CHECK-INST: sel %d1, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0x10]
.code32
sel %d1, %d0, %d14, 0

# CHECK-INST: sel %d1, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0x10]
.code32
sel %d1, %d0, %d14, 1

# CHECK-INST: sel %d1, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0x10]
.code32
sel %d1, %d0, %d14, 128

# CHECK-INST: sel %d1, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0x10]
.code32
sel %d1, %d0, %d14, 255

# CHECK-INST: sel %d1, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0x10]
.code32
sel %d1, %d0, %d15, -256

# CHECK-INST: sel %d1, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0x10]
.code32
sel %d1, %d0, %d15, -129

# CHECK-INST: sel %d1, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0x10]
.code32
sel %d1, %d0, %d15, -1

# CHECK-INST: sel %d1, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0x10]
.code32
sel %d1, %d0, %d15, 0

# CHECK-INST: sel %d1, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0x10]
.code32
sel %d1, %d0, %d15, 1

# CHECK-INST: sel %d1, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0x10]
.code32
sel %d1, %d0, %d15, 128

# CHECK-INST: sel %d1, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0x10]
.code32
sel %d1, %d0, %d15, 255

# CHECK-INST: sel %d1, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0x11]
.code32
sel %d1, %d1, %d0, -256

# CHECK-INST: sel %d1, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0x11]
.code32
sel %d1, %d1, %d0, -129

# CHECK-INST: sel %d1, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0x11]
.code32
sel %d1, %d1, %d0, -1

# CHECK-INST: sel %d1, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0x11]
.code32
sel %d1, %d1, %d0, 0

# CHECK-INST: sel %d1, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0x11]
.code32
sel %d1, %d1, %d0, 1

# CHECK-INST: sel %d1, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0x11]
.code32
sel %d1, %d1, %d0, 128

# CHECK-INST: sel %d1, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0x11]
.code32
sel %d1, %d1, %d0, 255

# CHECK-INST: sel %d1, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0x11]
.code32
sel %d1, %d1, %d1, -256

# CHECK-INST: sel %d1, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0x11]
.code32
sel %d1, %d1, %d1, -129

# CHECK-INST: sel %d1, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0x11]
.code32
sel %d1, %d1, %d1, -1

# CHECK-INST: sel %d1, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0x11]
.code32
sel %d1, %d1, %d1, 0

# CHECK-INST: sel %d1, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0x11]
.code32
sel %d1, %d1, %d1, 1

# CHECK-INST: sel %d1, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0x11]
.code32
sel %d1, %d1, %d1, 128

# CHECK-INST: sel %d1, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0x11]
.code32
sel %d1, %d1, %d1, 255

# CHECK-INST: sel %d1, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0x11]
.code32
sel %d1, %d1, %d14, -256

# CHECK-INST: sel %d1, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0x11]
.code32
sel %d1, %d1, %d14, -129

# CHECK-INST: sel %d1, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0x11]
.code32
sel %d1, %d1, %d14, -1

# CHECK-INST: sel %d1, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0x11]
.code32
sel %d1, %d1, %d14, 0

# CHECK-INST: sel %d1, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0x11]
.code32
sel %d1, %d1, %d14, 1

# CHECK-INST: sel %d1, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0x11]
.code32
sel %d1, %d1, %d14, 128

# CHECK-INST: sel %d1, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0x11]
.code32
sel %d1, %d1, %d14, 255

# CHECK-INST: sel %d1, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0x11]
.code32
sel %d1, %d1, %d15, -256

# CHECK-INST: sel %d1, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0x11]
.code32
sel %d1, %d1, %d15, -129

# CHECK-INST: sel %d1, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0x11]
.code32
sel %d1, %d1, %d15, -1

# CHECK-INST: sel %d1, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0x11]
.code32
sel %d1, %d1, %d15, 0

# CHECK-INST: sel %d1, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0x11]
.code32
sel %d1, %d1, %d15, 1

# CHECK-INST: sel %d1, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0x11]
.code32
sel %d1, %d1, %d15, 128

# CHECK-INST: sel %d1, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0x11]
.code32
sel %d1, %d1, %d15, 255

# CHECK-INST: sel %d1, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0x1e]
.code32
sel %d1, %d14, %d0, -256

# CHECK-INST: sel %d1, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0x1e]
.code32
sel %d1, %d14, %d0, -129

# CHECK-INST: sel %d1, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0x1e]
.code32
sel %d1, %d14, %d0, -1

# CHECK-INST: sel %d1, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0x1e]
.code32
sel %d1, %d14, %d0, 0

# CHECK-INST: sel %d1, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0x1e]
.code32
sel %d1, %d14, %d0, 1

# CHECK-INST: sel %d1, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0x1e]
.code32
sel %d1, %d14, %d0, 128

# CHECK-INST: sel %d1, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0x1e]
.code32
sel %d1, %d14, %d0, 255

# CHECK-INST: sel %d1, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0x1e]
.code32
sel %d1, %d14, %d1, -256

# CHECK-INST: sel %d1, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0x1e]
.code32
sel %d1, %d14, %d1, -129

# CHECK-INST: sel %d1, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0x1e]
.code32
sel %d1, %d14, %d1, -1

# CHECK-INST: sel %d1, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0x1e]
.code32
sel %d1, %d14, %d1, 0

# CHECK-INST: sel %d1, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0x1e]
.code32
sel %d1, %d14, %d1, 1

# CHECK-INST: sel %d1, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0x1e]
.code32
sel %d1, %d14, %d1, 128

# CHECK-INST: sel %d1, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0x1e]
.code32
sel %d1, %d14, %d1, 255

# CHECK-INST: sel %d1, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0x1e]
.code32
sel %d1, %d14, %d14, -256

# CHECK-INST: sel %d1, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0x1e]
.code32
sel %d1, %d14, %d14, -129

# CHECK-INST: sel %d1, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0x1e]
.code32
sel %d1, %d14, %d14, -1

# CHECK-INST: sel %d1, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0x1e]
.code32
sel %d1, %d14, %d14, 0

# CHECK-INST: sel %d1, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0x1e]
.code32
sel %d1, %d14, %d14, 1

# CHECK-INST: sel %d1, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0x1e]
.code32
sel %d1, %d14, %d14, 128

# CHECK-INST: sel %d1, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0x1e]
.code32
sel %d1, %d14, %d14, 255

# CHECK-INST: sel %d1, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0x1e]
.code32
sel %d1, %d14, %d15, -256

# CHECK-INST: sel %d1, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0x1e]
.code32
sel %d1, %d14, %d15, -129

# CHECK-INST: sel %d1, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0x1e]
.code32
sel %d1, %d14, %d15, -1

# CHECK-INST: sel %d1, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0x1e]
.code32
sel %d1, %d14, %d15, 0

# CHECK-INST: sel %d1, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0x1e]
.code32
sel %d1, %d14, %d15, 1

# CHECK-INST: sel %d1, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0x1e]
.code32
sel %d1, %d14, %d15, 128

# CHECK-INST: sel %d1, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0x1e]
.code32
sel %d1, %d14, %d15, 255

# CHECK-INST: sel %d1, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0x1f]
.code32
sel %d1, %d15, %d0, -256

# CHECK-INST: sel %d1, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0x1f]
.code32
sel %d1, %d15, %d0, -129

# CHECK-INST: sel %d1, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0x1f]
.code32
sel %d1, %d15, %d0, -1

# CHECK-INST: sel %d1, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0x1f]
.code32
sel %d1, %d15, %d0, 0

# CHECK-INST: sel %d1, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0x1f]
.code32
sel %d1, %d15, %d0, 1

# CHECK-INST: sel %d1, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0x1f]
.code32
sel %d1, %d15, %d0, 128

# CHECK-INST: sel %d1, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0x1f]
.code32
sel %d1, %d15, %d0, 255

# CHECK-INST: sel %d1, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0x1f]
.code32
sel %d1, %d15, %d1, -256

# CHECK-INST: sel %d1, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0x1f]
.code32
sel %d1, %d15, %d1, -129

# CHECK-INST: sel %d1, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0x1f]
.code32
sel %d1, %d15, %d1, -1

# CHECK-INST: sel %d1, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0x1f]
.code32
sel %d1, %d15, %d1, 0

# CHECK-INST: sel %d1, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0x1f]
.code32
sel %d1, %d15, %d1, 1

# CHECK-INST: sel %d1, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0x1f]
.code32
sel %d1, %d15, %d1, 128

# CHECK-INST: sel %d1, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0x1f]
.code32
sel %d1, %d15, %d1, 255

# CHECK-INST: sel %d1, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0x1f]
.code32
sel %d1, %d15, %d14, -256

# CHECK-INST: sel %d1, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0x1f]
.code32
sel %d1, %d15, %d14, -129

# CHECK-INST: sel %d1, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0x1f]
.code32
sel %d1, %d15, %d14, -1

# CHECK-INST: sel %d1, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0x1f]
.code32
sel %d1, %d15, %d14, 0

# CHECK-INST: sel %d1, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0x1f]
.code32
sel %d1, %d15, %d14, 1

# CHECK-INST: sel %d1, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0x1f]
.code32
sel %d1, %d15, %d14, 128

# CHECK-INST: sel %d1, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0x1f]
.code32
sel %d1, %d15, %d14, 255

# CHECK-INST: sel %d1, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0x1f]
.code32
sel %d1, %d15, %d15, -256

# CHECK-INST: sel %d1, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0x1f]
.code32
sel %d1, %d15, %d15, -129

# CHECK-INST: sel %d1, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0x1f]
.code32
sel %d1, %d15, %d15, -1

# CHECK-INST: sel %d1, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0x1f]
.code32
sel %d1, %d15, %d15, 0

# CHECK-INST: sel %d1, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0x1f]
.code32
sel %d1, %d15, %d15, 1

# CHECK-INST: sel %d1, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0x1f]
.code32
sel %d1, %d15, %d15, 128

# CHECK-INST: sel %d1, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0x1f]
.code32
sel %d1, %d15, %d15, 255

# CHECK-INST: sel %d14, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0xe0]
.code32
sel %d14, %d0, %d0, -256

# CHECK-INST: sel %d14, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0xe0]
.code32
sel %d14, %d0, %d0, -129

# CHECK-INST: sel %d14, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0xe0]
.code32
sel %d14, %d0, %d0, -1

# CHECK-INST: sel %d14, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0xe0]
.code32
sel %d14, %d0, %d0, 0

# CHECK-INST: sel %d14, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0xe0]
.code32
sel %d14, %d0, %d0, 1

# CHECK-INST: sel %d14, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0xe0]
.code32
sel %d14, %d0, %d0, 128

# CHECK-INST: sel %d14, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0xe0]
.code32
sel %d14, %d0, %d0, 255

# CHECK-INST: sel %d14, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0xe0]
.code32
sel %d14, %d0, %d1, -256

# CHECK-INST: sel %d14, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0xe0]
.code32
sel %d14, %d0, %d1, -129

# CHECK-INST: sel %d14, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0xe0]
.code32
sel %d14, %d0, %d1, -1

# CHECK-INST: sel %d14, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0xe0]
.code32
sel %d14, %d0, %d1, 0

# CHECK-INST: sel %d14, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0xe0]
.code32
sel %d14, %d0, %d1, 1

# CHECK-INST: sel %d14, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0xe0]
.code32
sel %d14, %d0, %d1, 128

# CHECK-INST: sel %d14, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0xe0]
.code32
sel %d14, %d0, %d1, 255

# CHECK-INST: sel %d14, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0xe0]
.code32
sel %d14, %d0, %d14, -256

# CHECK-INST: sel %d14, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0xe0]
.code32
sel %d14, %d0, %d14, -129

# CHECK-INST: sel %d14, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0xe0]
.code32
sel %d14, %d0, %d14, -1

# CHECK-INST: sel %d14, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0xe0]
.code32
sel %d14, %d0, %d14, 0

# CHECK-INST: sel %d14, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0xe0]
.code32
sel %d14, %d0, %d14, 1

# CHECK-INST: sel %d14, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0xe0]
.code32
sel %d14, %d0, %d14, 128

# CHECK-INST: sel %d14, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0xe0]
.code32
sel %d14, %d0, %d14, 255

# CHECK-INST: sel %d14, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0xe0]
.code32
sel %d14, %d0, %d15, -256

# CHECK-INST: sel %d14, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0xe0]
.code32
sel %d14, %d0, %d15, -129

# CHECK-INST: sel %d14, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0xe0]
.code32
sel %d14, %d0, %d15, -1

# CHECK-INST: sel %d14, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0xe0]
.code32
sel %d14, %d0, %d15, 0

# CHECK-INST: sel %d14, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0xe0]
.code32
sel %d14, %d0, %d15, 1

# CHECK-INST: sel %d14, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0xe0]
.code32
sel %d14, %d0, %d15, 128

# CHECK-INST: sel %d14, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0xe0]
.code32
sel %d14, %d0, %d15, 255

# CHECK-INST: sel %d14, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0xe1]
.code32
sel %d14, %d1, %d0, -256

# CHECK-INST: sel %d14, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0xe1]
.code32
sel %d14, %d1, %d0, -129

# CHECK-INST: sel %d14, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0xe1]
.code32
sel %d14, %d1, %d0, -1

# CHECK-INST: sel %d14, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0xe1]
.code32
sel %d14, %d1, %d0, 0

# CHECK-INST: sel %d14, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0xe1]
.code32
sel %d14, %d1, %d0, 1

# CHECK-INST: sel %d14, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0xe1]
.code32
sel %d14, %d1, %d0, 128

# CHECK-INST: sel %d14, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0xe1]
.code32
sel %d14, %d1, %d0, 255

# CHECK-INST: sel %d14, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0xe1]
.code32
sel %d14, %d1, %d1, -256

# CHECK-INST: sel %d14, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0xe1]
.code32
sel %d14, %d1, %d1, -129

# CHECK-INST: sel %d14, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0xe1]
.code32
sel %d14, %d1, %d1, -1

# CHECK-INST: sel %d14, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0xe1]
.code32
sel %d14, %d1, %d1, 0

# CHECK-INST: sel %d14, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0xe1]
.code32
sel %d14, %d1, %d1, 1

# CHECK-INST: sel %d14, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0xe1]
.code32
sel %d14, %d1, %d1, 128

# CHECK-INST: sel %d14, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0xe1]
.code32
sel %d14, %d1, %d1, 255

# CHECK-INST: sel %d14, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0xe1]
.code32
sel %d14, %d1, %d14, -256

# CHECK-INST: sel %d14, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0xe1]
.code32
sel %d14, %d1, %d14, -129

# CHECK-INST: sel %d14, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0xe1]
.code32
sel %d14, %d1, %d14, -1

# CHECK-INST: sel %d14, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0xe1]
.code32
sel %d14, %d1, %d14, 0

# CHECK-INST: sel %d14, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0xe1]
.code32
sel %d14, %d1, %d14, 1

# CHECK-INST: sel %d14, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0xe1]
.code32
sel %d14, %d1, %d14, 128

# CHECK-INST: sel %d14, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0xe1]
.code32
sel %d14, %d1, %d14, 255

# CHECK-INST: sel %d14, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0xe1]
.code32
sel %d14, %d1, %d15, -256

# CHECK-INST: sel %d14, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0xe1]
.code32
sel %d14, %d1, %d15, -129

# CHECK-INST: sel %d14, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0xe1]
.code32
sel %d14, %d1, %d15, -1

# CHECK-INST: sel %d14, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0xe1]
.code32
sel %d14, %d1, %d15, 0

# CHECK-INST: sel %d14, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0xe1]
.code32
sel %d14, %d1, %d15, 1

# CHECK-INST: sel %d14, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0xe1]
.code32
sel %d14, %d1, %d15, 128

# CHECK-INST: sel %d14, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0xe1]
.code32
sel %d14, %d1, %d15, 255

# CHECK-INST: sel %d14, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0xee]
.code32
sel %d14, %d14, %d0, -256

# CHECK-INST: sel %d14, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0xee]
.code32
sel %d14, %d14, %d0, -129

# CHECK-INST: sel %d14, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0xee]
.code32
sel %d14, %d14, %d0, -1

# CHECK-INST: sel %d14, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0xee]
.code32
sel %d14, %d14, %d0, 0

# CHECK-INST: sel %d14, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0xee]
.code32
sel %d14, %d14, %d0, 1

# CHECK-INST: sel %d14, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0xee]
.code32
sel %d14, %d14, %d0, 128

# CHECK-INST: sel %d14, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0xee]
.code32
sel %d14, %d14, %d0, 255

# CHECK-INST: sel %d14, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0xee]
.code32
sel %d14, %d14, %d1, -256

# CHECK-INST: sel %d14, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0xee]
.code32
sel %d14, %d14, %d1, -129

# CHECK-INST: sel %d14, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0xee]
.code32
sel %d14, %d14, %d1, -1

# CHECK-INST: sel %d14, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0xee]
.code32
sel %d14, %d14, %d1, 0

# CHECK-INST: sel %d14, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0xee]
.code32
sel %d14, %d14, %d1, 1

# CHECK-INST: sel %d14, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0xee]
.code32
sel %d14, %d14, %d1, 128

# CHECK-INST: sel %d14, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0xee]
.code32
sel %d14, %d14, %d1, 255

# CHECK-INST: sel %d14, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0xee]
.code32
sel %d14, %d14, %d14, -256

# CHECK-INST: sel %d14, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0xee]
.code32
sel %d14, %d14, %d14, -129

# CHECK-INST: sel %d14, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0xee]
.code32
sel %d14, %d14, %d14, -1

# CHECK-INST: sel %d14, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0xee]
.code32
sel %d14, %d14, %d14, 0

# CHECK-INST: sel %d14, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0xee]
.code32
sel %d14, %d14, %d14, 1

# CHECK-INST: sel %d14, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0xee]
.code32
sel %d14, %d14, %d14, 128

# CHECK-INST: sel %d14, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0xee]
.code32
sel %d14, %d14, %d14, 255

# CHECK-INST: sel %d14, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0xee]
.code32
sel %d14, %d14, %d15, -256

# CHECK-INST: sel %d14, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0xee]
.code32
sel %d14, %d14, %d15, -129

# CHECK-INST: sel %d14, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0xee]
.code32
sel %d14, %d14, %d15, -1

# CHECK-INST: sel %d14, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0xee]
.code32
sel %d14, %d14, %d15, 0

# CHECK-INST: sel %d14, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0xee]
.code32
sel %d14, %d14, %d15, 1

# CHECK-INST: sel %d14, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0xee]
.code32
sel %d14, %d14, %d15, 128

# CHECK-INST: sel %d14, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0xee]
.code32
sel %d14, %d14, %d15, 255

# CHECK-INST: sel %d14, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0xef]
.code32
sel %d14, %d15, %d0, -256

# CHECK-INST: sel %d14, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0xef]
.code32
sel %d14, %d15, %d0, -129

# CHECK-INST: sel %d14, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0xef]
.code32
sel %d14, %d15, %d0, -1

# CHECK-INST: sel %d14, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0xef]
.code32
sel %d14, %d15, %d0, 0

# CHECK-INST: sel %d14, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0xef]
.code32
sel %d14, %d15, %d0, 1

# CHECK-INST: sel %d14, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0xef]
.code32
sel %d14, %d15, %d0, 128

# CHECK-INST: sel %d14, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0xef]
.code32
sel %d14, %d15, %d0, 255

# CHECK-INST: sel %d14, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0xef]
.code32
sel %d14, %d15, %d1, -256

# CHECK-INST: sel %d14, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0xef]
.code32
sel %d14, %d15, %d1, -129

# CHECK-INST: sel %d14, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0xef]
.code32
sel %d14, %d15, %d1, -1

# CHECK-INST: sel %d14, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0xef]
.code32
sel %d14, %d15, %d1, 0

# CHECK-INST: sel %d14, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0xef]
.code32
sel %d14, %d15, %d1, 1

# CHECK-INST: sel %d14, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0xef]
.code32
sel %d14, %d15, %d1, 128

# CHECK-INST: sel %d14, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0xef]
.code32
sel %d14, %d15, %d1, 255

# CHECK-INST: sel %d14, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0xef]
.code32
sel %d14, %d15, %d14, -256

# CHECK-INST: sel %d14, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0xef]
.code32
sel %d14, %d15, %d14, -129

# CHECK-INST: sel %d14, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0xef]
.code32
sel %d14, %d15, %d14, -1

# CHECK-INST: sel %d14, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0xef]
.code32
sel %d14, %d15, %d14, 0

# CHECK-INST: sel %d14, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0xef]
.code32
sel %d14, %d15, %d14, 1

# CHECK-INST: sel %d14, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0xef]
.code32
sel %d14, %d15, %d14, 128

# CHECK-INST: sel %d14, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0xef]
.code32
sel %d14, %d15, %d14, 255

# CHECK-INST: sel %d14, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0xef]
.code32
sel %d14, %d15, %d15, -256

# CHECK-INST: sel %d14, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0xef]
.code32
sel %d14, %d15, %d15, -129

# CHECK-INST: sel %d14, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0xef]
.code32
sel %d14, %d15, %d15, -1

# CHECK-INST: sel %d14, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0xef]
.code32
sel %d14, %d15, %d15, 0

# CHECK-INST: sel %d14, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0xef]
.code32
sel %d14, %d15, %d15, 1

# CHECK-INST: sel %d14, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0xef]
.code32
sel %d14, %d15, %d15, 128

# CHECK-INST: sel %d14, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0xef]
.code32
sel %d14, %d15, %d15, 255

# CHECK-INST: sel %d15, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0xf0]
.code32
sel %d15, %d0, %d0, -256

# CHECK-INST: sel %d15, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0xf0]
.code32
sel %d15, %d0, %d0, -129

# CHECK-INST: sel %d15, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0xf0]
.code32
sel %d15, %d0, %d0, -1

# CHECK-INST: sel %d15, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0xf0]
.code32
sel %d15, %d0, %d0, 0

# CHECK-INST: sel %d15, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0xf0]
.code32
sel %d15, %d0, %d0, 1

# CHECK-INST: sel %d15, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0xf0]
.code32
sel %d15, %d0, %d0, 128

# CHECK-INST: sel %d15, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0xf0]
.code32
sel %d15, %d0, %d0, 255

# CHECK-INST: sel %d15, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0xf0]
.code32
sel %d15, %d0, %d1, -256

# CHECK-INST: sel %d15, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0xf0]
.code32
sel %d15, %d0, %d1, -129

# CHECK-INST: sel %d15, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0xf0]
.code32
sel %d15, %d0, %d1, -1

# CHECK-INST: sel %d15, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0xf0]
.code32
sel %d15, %d0, %d1, 0

# CHECK-INST: sel %d15, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0xf0]
.code32
sel %d15, %d0, %d1, 1

# CHECK-INST: sel %d15, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0xf0]
.code32
sel %d15, %d0, %d1, 128

# CHECK-INST: sel %d15, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0xf0]
.code32
sel %d15, %d0, %d1, 255

# CHECK-INST: sel %d15, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0xf0]
.code32
sel %d15, %d0, %d14, -256

# CHECK-INST: sel %d15, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0xf0]
.code32
sel %d15, %d0, %d14, -129

# CHECK-INST: sel %d15, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0xf0]
.code32
sel %d15, %d0, %d14, -1

# CHECK-INST: sel %d15, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0xf0]
.code32
sel %d15, %d0, %d14, 0

# CHECK-INST: sel %d15, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0xf0]
.code32
sel %d15, %d0, %d14, 1

# CHECK-INST: sel %d15, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0xf0]
.code32
sel %d15, %d0, %d14, 128

# CHECK-INST: sel %d15, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0xf0]
.code32
sel %d15, %d0, %d14, 255

# CHECK-INST: sel %d15, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0xf0]
.code32
sel %d15, %d0, %d15, -256

# CHECK-INST: sel %d15, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0xf0]
.code32
sel %d15, %d0, %d15, -129

# CHECK-INST: sel %d15, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0xf0]
.code32
sel %d15, %d0, %d15, -1

# CHECK-INST: sel %d15, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0xf0]
.code32
sel %d15, %d0, %d15, 0

# CHECK-INST: sel %d15, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0xf0]
.code32
sel %d15, %d0, %d15, 1

# CHECK-INST: sel %d15, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0xf0]
.code32
sel %d15, %d0, %d15, 128

# CHECK-INST: sel %d15, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0xf0]
.code32
sel %d15, %d0, %d15, 255

# CHECK-INST: sel %d15, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0xf1]
.code32
sel %d15, %d1, %d0, -256

# CHECK-INST: sel %d15, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0xf1]
.code32
sel %d15, %d1, %d0, -129

# CHECK-INST: sel %d15, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0xf1]
.code32
sel %d15, %d1, %d0, -1

# CHECK-INST: sel %d15, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0xf1]
.code32
sel %d15, %d1, %d0, 0

# CHECK-INST: sel %d15, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0xf1]
.code32
sel %d15, %d1, %d0, 1

# CHECK-INST: sel %d15, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0xf1]
.code32
sel %d15, %d1, %d0, 128

# CHECK-INST: sel %d15, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0xf1]
.code32
sel %d15, %d1, %d0, 255

# CHECK-INST: sel %d15, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0xf1]
.code32
sel %d15, %d1, %d1, -256

# CHECK-INST: sel %d15, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0xf1]
.code32
sel %d15, %d1, %d1, -129

# CHECK-INST: sel %d15, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0xf1]
.code32
sel %d15, %d1, %d1, -1

# CHECK-INST: sel %d15, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0xf1]
.code32
sel %d15, %d1, %d1, 0

# CHECK-INST: sel %d15, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0xf1]
.code32
sel %d15, %d1, %d1, 1

# CHECK-INST: sel %d15, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0xf1]
.code32
sel %d15, %d1, %d1, 128

# CHECK-INST: sel %d15, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0xf1]
.code32
sel %d15, %d1, %d1, 255

# CHECK-INST: sel %d15, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0xf1]
.code32
sel %d15, %d1, %d14, -256

# CHECK-INST: sel %d15, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0xf1]
.code32
sel %d15, %d1, %d14, -129

# CHECK-INST: sel %d15, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0xf1]
.code32
sel %d15, %d1, %d14, -1

# CHECK-INST: sel %d15, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0xf1]
.code32
sel %d15, %d1, %d14, 0

# CHECK-INST: sel %d15, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0xf1]
.code32
sel %d15, %d1, %d14, 1

# CHECK-INST: sel %d15, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0xf1]
.code32
sel %d15, %d1, %d14, 128

# CHECK-INST: sel %d15, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0xf1]
.code32
sel %d15, %d1, %d14, 255

# CHECK-INST: sel %d15, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0xf1]
.code32
sel %d15, %d1, %d15, -256

# CHECK-INST: sel %d15, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0xf1]
.code32
sel %d15, %d1, %d15, -129

# CHECK-INST: sel %d15, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0xf1]
.code32
sel %d15, %d1, %d15, -1

# CHECK-INST: sel %d15, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0xf1]
.code32
sel %d15, %d1, %d15, 0

# CHECK-INST: sel %d15, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0xf1]
.code32
sel %d15, %d1, %d15, 1

# CHECK-INST: sel %d15, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0xf1]
.code32
sel %d15, %d1, %d15, 128

# CHECK-INST: sel %d15, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0xf1]
.code32
sel %d15, %d1, %d15, 255

# CHECK-INST: sel %d15, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0xfe]
.code32
sel %d15, %d14, %d0, -256

# CHECK-INST: sel %d15, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0xfe]
.code32
sel %d15, %d14, %d0, -129

# CHECK-INST: sel %d15, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0xfe]
.code32
sel %d15, %d14, %d0, -1

# CHECK-INST: sel %d15, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0xfe]
.code32
sel %d15, %d14, %d0, 0

# CHECK-INST: sel %d15, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0xfe]
.code32
sel %d15, %d14, %d0, 1

# CHECK-INST: sel %d15, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0xfe]
.code32
sel %d15, %d14, %d0, 128

# CHECK-INST: sel %d15, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0xfe]
.code32
sel %d15, %d14, %d0, 255

# CHECK-INST: sel %d15, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0xfe]
.code32
sel %d15, %d14, %d1, -256

# CHECK-INST: sel %d15, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0xfe]
.code32
sel %d15, %d14, %d1, -129

# CHECK-INST: sel %d15, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0xfe]
.code32
sel %d15, %d14, %d1, -1

# CHECK-INST: sel %d15, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0xfe]
.code32
sel %d15, %d14, %d1, 0

# CHECK-INST: sel %d15, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0xfe]
.code32
sel %d15, %d14, %d1, 1

# CHECK-INST: sel %d15, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0xfe]
.code32
sel %d15, %d14, %d1, 128

# CHECK-INST: sel %d15, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0xfe]
.code32
sel %d15, %d14, %d1, 255

# CHECK-INST: sel %d15, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0xfe]
.code32
sel %d15, %d14, %d14, -256

# CHECK-INST: sel %d15, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0xfe]
.code32
sel %d15, %d14, %d14, -129

# CHECK-INST: sel %d15, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0xfe]
.code32
sel %d15, %d14, %d14, -1

# CHECK-INST: sel %d15, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0xfe]
.code32
sel %d15, %d14, %d14, 0

# CHECK-INST: sel %d15, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0xfe]
.code32
sel %d15, %d14, %d14, 1

# CHECK-INST: sel %d15, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0xfe]
.code32
sel %d15, %d14, %d14, 128

# CHECK-INST: sel %d15, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0xfe]
.code32
sel %d15, %d14, %d14, 255

# CHECK-INST: sel %d15, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0xfe]
.code32
sel %d15, %d14, %d15, -256

# CHECK-INST: sel %d15, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0xfe]
.code32
sel %d15, %d14, %d15, -129

# CHECK-INST: sel %d15, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0xfe]
.code32
sel %d15, %d14, %d15, -1

# CHECK-INST: sel %d15, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0xfe]
.code32
sel %d15, %d14, %d15, 0

# CHECK-INST: sel %d15, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0xfe]
.code32
sel %d15, %d14, %d15, 1

# CHECK-INST: sel %d15, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0xfe]
.code32
sel %d15, %d14, %d15, 128

# CHECK-INST: sel %d15, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0xfe]
.code32
sel %d15, %d14, %d15, 255

# CHECK-INST: sel %d15, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0xff]
.code32
sel %d15, %d15, %d0, -256

# CHECK-INST: sel %d15, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0xff]
.code32
sel %d15, %d15, %d0, -129

# CHECK-INST: sel %d15, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0xff]
.code32
sel %d15, %d15, %d0, -1

# CHECK-INST: sel %d15, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0xff]
.code32
sel %d15, %d15, %d0, 0

# CHECK-INST: sel %d15, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0xff]
.code32
sel %d15, %d15, %d0, 1

# CHECK-INST: sel %d15, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0xff]
.code32
sel %d15, %d15, %d0, 128

# CHECK-INST: sel %d15, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0xff]
.code32
sel %d15, %d15, %d0, 255

# CHECK-INST: sel %d15, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0xff]
.code32
sel %d15, %d15, %d1, -256

# CHECK-INST: sel %d15, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0xff]
.code32
sel %d15, %d15, %d1, -129

# CHECK-INST: sel %d15, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0xff]
.code32
sel %d15, %d15, %d1, -1

# CHECK-INST: sel %d15, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0xff]
.code32
sel %d15, %d15, %d1, 0

# CHECK-INST: sel %d15, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0xff]
.code32
sel %d15, %d15, %d1, 1

# CHECK-INST: sel %d15, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0xff]
.code32
sel %d15, %d15, %d1, 128

# CHECK-INST: sel %d15, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0xff]
.code32
sel %d15, %d15, %d1, 255

# CHECK-INST: sel %d15, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0xff]
.code32
sel %d15, %d15, %d14, -256

# CHECK-INST: sel %d15, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0xff]
.code32
sel %d15, %d15, %d14, -129

# CHECK-INST: sel %d15, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0xff]
.code32
sel %d15, %d15, %d14, -1

# CHECK-INST: sel %d15, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0xff]
.code32
sel %d15, %d15, %d14, 0

# CHECK-INST: sel %d15, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0xff]
.code32
sel %d15, %d15, %d14, 1

# CHECK-INST: sel %d15, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0xff]
.code32
sel %d15, %d15, %d14, 128

# CHECK-INST: sel %d15, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0xff]
.code32
sel %d15, %d15, %d14, 255

# CHECK-INST: sel %d15, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0xff]
.code32
sel %d15, %d15, %d15, -256

# CHECK-INST: sel %d15, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0xff]
.code32
sel %d15, %d15, %d15, -129

# CHECK-INST: sel %d15, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0xff]
.code32
sel %d15, %d15, %d15, -1

# CHECK-INST: sel %d15, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0xff]
.code32
sel %d15, %d15, %d15, 0

# CHECK-INST: sel %d15, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0xff]
.code32
sel %d15, %d15, %d15, 1

# CHECK-INST: sel %d15, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0xff]
.code32
sel %d15, %d15, %d15, 128

# CHECK-INST: sel %d15, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0xff]
.code32
sel %d15, %d15, %d15, 255

# CHECK-INST: seln %d0, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0x00]
.code32
seln %d0, %d0, %d0, %d0

# CHECK-INST: seln %d0, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0x00]
.code32
seln %d0, %d0, %d0, %d1

# CHECK-INST: seln %d0, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0x00]
.code32
seln %d0, %d0, %d0, %d14

# CHECK-INST: seln %d0, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0x00]
.code32
seln %d0, %d0, %d0, %d15

# CHECK-INST: seln %d0, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0x00]
.code32
seln %d0, %d0, %d1, %d0

# CHECK-INST: seln %d0, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0x00]
.code32
seln %d0, %d0, %d1, %d1

# CHECK-INST: seln %d0, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0x00]
.code32
seln %d0, %d0, %d1, %d14

# CHECK-INST: seln %d0, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0x00]
.code32
seln %d0, %d0, %d1, %d15

# CHECK-INST: seln %d0, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0x00]
.code32
seln %d0, %d0, %d14, %d0

# CHECK-INST: seln %d0, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0x00]
.code32
seln %d0, %d0, %d14, %d1

# CHECK-INST: seln %d0, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0x00]
.code32
seln %d0, %d0, %d14, %d14

# CHECK-INST: seln %d0, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0x00]
.code32
seln %d0, %d0, %d14, %d15

# CHECK-INST: seln %d0, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0x00]
.code32
seln %d0, %d0, %d15, %d0

# CHECK-INST: seln %d0, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0x00]
.code32
seln %d0, %d0, %d15, %d1

# CHECK-INST: seln %d0, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0x00]
.code32
seln %d0, %d0, %d15, %d14

# CHECK-INST: seln %d0, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0x00]
.code32
seln %d0, %d0, %d15, %d15

# CHECK-INST: seln %d0, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0x01]
.code32
seln %d0, %d1, %d0, %d0

# CHECK-INST: seln %d0, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0x01]
.code32
seln %d0, %d1, %d0, %d1

# CHECK-INST: seln %d0, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0x01]
.code32
seln %d0, %d1, %d0, %d14

# CHECK-INST: seln %d0, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0x01]
.code32
seln %d0, %d1, %d0, %d15

# CHECK-INST: seln %d0, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0x01]
.code32
seln %d0, %d1, %d1, %d0

# CHECK-INST: seln %d0, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0x01]
.code32
seln %d0, %d1, %d1, %d1

# CHECK-INST: seln %d0, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0x01]
.code32
seln %d0, %d1, %d1, %d14

# CHECK-INST: seln %d0, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0x01]
.code32
seln %d0, %d1, %d1, %d15

# CHECK-INST: seln %d0, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0x01]
.code32
seln %d0, %d1, %d14, %d0

# CHECK-INST: seln %d0, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0x01]
.code32
seln %d0, %d1, %d14, %d1

# CHECK-INST: seln %d0, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0x01]
.code32
seln %d0, %d1, %d14, %d14

# CHECK-INST: seln %d0, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0x01]
.code32
seln %d0, %d1, %d14, %d15

# CHECK-INST: seln %d0, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0x01]
.code32
seln %d0, %d1, %d15, %d0

# CHECK-INST: seln %d0, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0x01]
.code32
seln %d0, %d1, %d15, %d1

# CHECK-INST: seln %d0, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0x01]
.code32
seln %d0, %d1, %d15, %d14

# CHECK-INST: seln %d0, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0x01]
.code32
seln %d0, %d1, %d15, %d15

# CHECK-INST: seln %d0, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0x0e]
.code32
seln %d0, %d14, %d0, %d0

# CHECK-INST: seln %d0, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0x0e]
.code32
seln %d0, %d14, %d0, %d1

# CHECK-INST: seln %d0, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0x0e]
.code32
seln %d0, %d14, %d0, %d14

# CHECK-INST: seln %d0, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0x0e]
.code32
seln %d0, %d14, %d0, %d15

# CHECK-INST: seln %d0, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0x0e]
.code32
seln %d0, %d14, %d1, %d0

# CHECK-INST: seln %d0, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0x0e]
.code32
seln %d0, %d14, %d1, %d1

# CHECK-INST: seln %d0, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0x0e]
.code32
seln %d0, %d14, %d1, %d14

# CHECK-INST: seln %d0, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0x0e]
.code32
seln %d0, %d14, %d1, %d15

# CHECK-INST: seln %d0, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0x0e]
.code32
seln %d0, %d14, %d14, %d0

# CHECK-INST: seln %d0, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0x0e]
.code32
seln %d0, %d14, %d14, %d1

# CHECK-INST: seln %d0, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0x0e]
.code32
seln %d0, %d14, %d14, %d14

# CHECK-INST: seln %d0, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0x0e]
.code32
seln %d0, %d14, %d14, %d15

# CHECK-INST: seln %d0, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0x0e]
.code32
seln %d0, %d14, %d15, %d0

# CHECK-INST: seln %d0, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0x0e]
.code32
seln %d0, %d14, %d15, %d1

# CHECK-INST: seln %d0, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0x0e]
.code32
seln %d0, %d14, %d15, %d14

# CHECK-INST: seln %d0, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0x0e]
.code32
seln %d0, %d14, %d15, %d15

# CHECK-INST: seln %d0, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0x0f]
.code32
seln %d0, %d15, %d0, %d0

# CHECK-INST: seln %d0, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0x0f]
.code32
seln %d0, %d15, %d0, %d1

# CHECK-INST: seln %d0, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0x0f]
.code32
seln %d0, %d15, %d0, %d14

# CHECK-INST: seln %d0, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0x0f]
.code32
seln %d0, %d15, %d0, %d15

# CHECK-INST: seln %d0, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0x0f]
.code32
seln %d0, %d15, %d1, %d0

# CHECK-INST: seln %d0, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0x0f]
.code32
seln %d0, %d15, %d1, %d1

# CHECK-INST: seln %d0, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0x0f]
.code32
seln %d0, %d15, %d1, %d14

# CHECK-INST: seln %d0, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0x0f]
.code32
seln %d0, %d15, %d1, %d15

# CHECK-INST: seln %d0, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0x0f]
.code32
seln %d0, %d15, %d14, %d0

# CHECK-INST: seln %d0, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0x0f]
.code32
seln %d0, %d15, %d14, %d1

# CHECK-INST: seln %d0, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0x0f]
.code32
seln %d0, %d15, %d14, %d14

# CHECK-INST: seln %d0, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0x0f]
.code32
seln %d0, %d15, %d14, %d15

# CHECK-INST: seln %d0, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0x0f]
.code32
seln %d0, %d15, %d15, %d0

# CHECK-INST: seln %d0, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0x0f]
.code32
seln %d0, %d15, %d15, %d1

# CHECK-INST: seln %d0, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0x0f]
.code32
seln %d0, %d15, %d15, %d14

# CHECK-INST: seln %d0, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0x0f]
.code32
seln %d0, %d15, %d15, %d15

# CHECK-INST: seln %d1, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0x10]
.code32
seln %d1, %d0, %d0, %d0

# CHECK-INST: seln %d1, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0x10]
.code32
seln %d1, %d0, %d0, %d1

# CHECK-INST: seln %d1, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0x10]
.code32
seln %d1, %d0, %d0, %d14

# CHECK-INST: seln %d1, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0x10]
.code32
seln %d1, %d0, %d0, %d15

# CHECK-INST: seln %d1, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0x10]
.code32
seln %d1, %d0, %d1, %d0

# CHECK-INST: seln %d1, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0x10]
.code32
seln %d1, %d0, %d1, %d1

# CHECK-INST: seln %d1, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0x10]
.code32
seln %d1, %d0, %d1, %d14

# CHECK-INST: seln %d1, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0x10]
.code32
seln %d1, %d0, %d1, %d15

# CHECK-INST: seln %d1, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0x10]
.code32
seln %d1, %d0, %d14, %d0

# CHECK-INST: seln %d1, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0x10]
.code32
seln %d1, %d0, %d14, %d1

# CHECK-INST: seln %d1, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0x10]
.code32
seln %d1, %d0, %d14, %d14

# CHECK-INST: seln %d1, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0x10]
.code32
seln %d1, %d0, %d14, %d15

# CHECK-INST: seln %d1, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0x10]
.code32
seln %d1, %d0, %d15, %d0

# CHECK-INST: seln %d1, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0x10]
.code32
seln %d1, %d0, %d15, %d1

# CHECK-INST: seln %d1, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0x10]
.code32
seln %d1, %d0, %d15, %d14

# CHECK-INST: seln %d1, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0x10]
.code32
seln %d1, %d0, %d15, %d15

# CHECK-INST: seln %d1, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0x11]
.code32
seln %d1, %d1, %d0, %d0

# CHECK-INST: seln %d1, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0x11]
.code32
seln %d1, %d1, %d0, %d1

# CHECK-INST: seln %d1, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0x11]
.code32
seln %d1, %d1, %d0, %d14

# CHECK-INST: seln %d1, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0x11]
.code32
seln %d1, %d1, %d0, %d15

# CHECK-INST: seln %d1, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0x11]
.code32
seln %d1, %d1, %d1, %d0

# CHECK-INST: seln %d1, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0x11]
.code32
seln %d1, %d1, %d1, %d1

# CHECK-INST: seln %d1, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0x11]
.code32
seln %d1, %d1, %d1, %d14

# CHECK-INST: seln %d1, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0x11]
.code32
seln %d1, %d1, %d1, %d15

# CHECK-INST: seln %d1, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0x11]
.code32
seln %d1, %d1, %d14, %d0

# CHECK-INST: seln %d1, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0x11]
.code32
seln %d1, %d1, %d14, %d1

# CHECK-INST: seln %d1, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0x11]
.code32
seln %d1, %d1, %d14, %d14

# CHECK-INST: seln %d1, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0x11]
.code32
seln %d1, %d1, %d14, %d15

# CHECK-INST: seln %d1, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0x11]
.code32
seln %d1, %d1, %d15, %d0

# CHECK-INST: seln %d1, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0x11]
.code32
seln %d1, %d1, %d15, %d1

# CHECK-INST: seln %d1, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0x11]
.code32
seln %d1, %d1, %d15, %d14

# CHECK-INST: seln %d1, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0x11]
.code32
seln %d1, %d1, %d15, %d15

# CHECK-INST: seln %d1, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0x1e]
.code32
seln %d1, %d14, %d0, %d0

# CHECK-INST: seln %d1, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0x1e]
.code32
seln %d1, %d14, %d0, %d1

# CHECK-INST: seln %d1, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0x1e]
.code32
seln %d1, %d14, %d0, %d14

# CHECK-INST: seln %d1, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0x1e]
.code32
seln %d1, %d14, %d0, %d15

# CHECK-INST: seln %d1, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0x1e]
.code32
seln %d1, %d14, %d1, %d0

# CHECK-INST: seln %d1, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0x1e]
.code32
seln %d1, %d14, %d1, %d1

# CHECK-INST: seln %d1, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0x1e]
.code32
seln %d1, %d14, %d1, %d14

# CHECK-INST: seln %d1, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0x1e]
.code32
seln %d1, %d14, %d1, %d15

# CHECK-INST: seln %d1, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0x1e]
.code32
seln %d1, %d14, %d14, %d0

# CHECK-INST: seln %d1, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0x1e]
.code32
seln %d1, %d14, %d14, %d1

# CHECK-INST: seln %d1, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0x1e]
.code32
seln %d1, %d14, %d14, %d14

# CHECK-INST: seln %d1, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0x1e]
.code32
seln %d1, %d14, %d14, %d15

# CHECK-INST: seln %d1, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0x1e]
.code32
seln %d1, %d14, %d15, %d0

# CHECK-INST: seln %d1, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0x1e]
.code32
seln %d1, %d14, %d15, %d1

# CHECK-INST: seln %d1, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0x1e]
.code32
seln %d1, %d14, %d15, %d14

# CHECK-INST: seln %d1, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0x1e]
.code32
seln %d1, %d14, %d15, %d15

# CHECK-INST: seln %d1, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0x1f]
.code32
seln %d1, %d15, %d0, %d0

# CHECK-INST: seln %d1, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0x1f]
.code32
seln %d1, %d15, %d0, %d1

# CHECK-INST: seln %d1, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0x1f]
.code32
seln %d1, %d15, %d0, %d14

# CHECK-INST: seln %d1, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0x1f]
.code32
seln %d1, %d15, %d0, %d15

# CHECK-INST: seln %d1, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0x1f]
.code32
seln %d1, %d15, %d1, %d0

# CHECK-INST: seln %d1, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0x1f]
.code32
seln %d1, %d15, %d1, %d1

# CHECK-INST: seln %d1, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0x1f]
.code32
seln %d1, %d15, %d1, %d14

# CHECK-INST: seln %d1, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0x1f]
.code32
seln %d1, %d15, %d1, %d15

# CHECK-INST: seln %d1, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0x1f]
.code32
seln %d1, %d15, %d14, %d0

# CHECK-INST: seln %d1, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0x1f]
.code32
seln %d1, %d15, %d14, %d1

# CHECK-INST: seln %d1, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0x1f]
.code32
seln %d1, %d15, %d14, %d14

# CHECK-INST: seln %d1, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0x1f]
.code32
seln %d1, %d15, %d14, %d15

# CHECK-INST: seln %d1, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0x1f]
.code32
seln %d1, %d15, %d15, %d0

# CHECK-INST: seln %d1, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0x1f]
.code32
seln %d1, %d15, %d15, %d1

# CHECK-INST: seln %d1, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0x1f]
.code32
seln %d1, %d15, %d15, %d14

# CHECK-INST: seln %d1, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0x1f]
.code32
seln %d1, %d15, %d15, %d15

# CHECK-INST: seln %d14, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0xe0]
.code32
seln %d14, %d0, %d0, %d0

# CHECK-INST: seln %d14, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0xe0]
.code32
seln %d14, %d0, %d0, %d1

# CHECK-INST: seln %d14, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0xe0]
.code32
seln %d14, %d0, %d0, %d14

# CHECK-INST: seln %d14, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0xe0]
.code32
seln %d14, %d0, %d0, %d15

# CHECK-INST: seln %d14, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0xe0]
.code32
seln %d14, %d0, %d1, %d0

# CHECK-INST: seln %d14, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0xe0]
.code32
seln %d14, %d0, %d1, %d1

# CHECK-INST: seln %d14, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0xe0]
.code32
seln %d14, %d0, %d1, %d14

# CHECK-INST: seln %d14, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0xe0]
.code32
seln %d14, %d0, %d1, %d15

# CHECK-INST: seln %d14, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0xe0]
.code32
seln %d14, %d0, %d14, %d0

# CHECK-INST: seln %d14, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0xe0]
.code32
seln %d14, %d0, %d14, %d1

# CHECK-INST: seln %d14, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0xe0]
.code32
seln %d14, %d0, %d14, %d14

# CHECK-INST: seln %d14, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0xe0]
.code32
seln %d14, %d0, %d14, %d15

# CHECK-INST: seln %d14, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0xe0]
.code32
seln %d14, %d0, %d15, %d0

# CHECK-INST: seln %d14, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0xe0]
.code32
seln %d14, %d0, %d15, %d1

# CHECK-INST: seln %d14, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0xe0]
.code32
seln %d14, %d0, %d15, %d14

# CHECK-INST: seln %d14, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0xe0]
.code32
seln %d14, %d0, %d15, %d15

# CHECK-INST: seln %d14, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0xe1]
.code32
seln %d14, %d1, %d0, %d0

# CHECK-INST: seln %d14, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0xe1]
.code32
seln %d14, %d1, %d0, %d1

# CHECK-INST: seln %d14, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0xe1]
.code32
seln %d14, %d1, %d0, %d14

# CHECK-INST: seln %d14, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0xe1]
.code32
seln %d14, %d1, %d0, %d15

# CHECK-INST: seln %d14, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0xe1]
.code32
seln %d14, %d1, %d1, %d0

# CHECK-INST: seln %d14, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0xe1]
.code32
seln %d14, %d1, %d1, %d1

# CHECK-INST: seln %d14, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0xe1]
.code32
seln %d14, %d1, %d1, %d14

# CHECK-INST: seln %d14, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0xe1]
.code32
seln %d14, %d1, %d1, %d15

# CHECK-INST: seln %d14, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0xe1]
.code32
seln %d14, %d1, %d14, %d0

# CHECK-INST: seln %d14, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0xe1]
.code32
seln %d14, %d1, %d14, %d1

# CHECK-INST: seln %d14, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0xe1]
.code32
seln %d14, %d1, %d14, %d14

# CHECK-INST: seln %d14, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0xe1]
.code32
seln %d14, %d1, %d14, %d15

# CHECK-INST: seln %d14, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0xe1]
.code32
seln %d14, %d1, %d15, %d0

# CHECK-INST: seln %d14, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0xe1]
.code32
seln %d14, %d1, %d15, %d1

# CHECK-INST: seln %d14, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0xe1]
.code32
seln %d14, %d1, %d15, %d14

# CHECK-INST: seln %d14, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0xe1]
.code32
seln %d14, %d1, %d15, %d15

# CHECK-INST: seln %d14, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0xee]
.code32
seln %d14, %d14, %d0, %d0

# CHECK-INST: seln %d14, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0xee]
.code32
seln %d14, %d14, %d0, %d1

# CHECK-INST: seln %d14, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0xee]
.code32
seln %d14, %d14, %d0, %d14

# CHECK-INST: seln %d14, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0xee]
.code32
seln %d14, %d14, %d0, %d15

# CHECK-INST: seln %d14, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0xee]
.code32
seln %d14, %d14, %d1, %d0

# CHECK-INST: seln %d14, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0xee]
.code32
seln %d14, %d14, %d1, %d1

# CHECK-INST: seln %d14, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0xee]
.code32
seln %d14, %d14, %d1, %d14

# CHECK-INST: seln %d14, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0xee]
.code32
seln %d14, %d14, %d1, %d15

# CHECK-INST: seln %d14, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0xee]
.code32
seln %d14, %d14, %d14, %d0

# CHECK-INST: seln %d14, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0xee]
.code32
seln %d14, %d14, %d14, %d1

# CHECK-INST: seln %d14, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0xee]
.code32
seln %d14, %d14, %d14, %d14

# CHECK-INST: seln %d14, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0xee]
.code32
seln %d14, %d14, %d14, %d15

# CHECK-INST: seln %d14, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0xee]
.code32
seln %d14, %d14, %d15, %d0

# CHECK-INST: seln %d14, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0xee]
.code32
seln %d14, %d14, %d15, %d1

# CHECK-INST: seln %d14, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0xee]
.code32
seln %d14, %d14, %d15, %d14

# CHECK-INST: seln %d14, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0xee]
.code32
seln %d14, %d14, %d15, %d15

# CHECK-INST: seln %d14, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0xef]
.code32
seln %d14, %d15, %d0, %d0

# CHECK-INST: seln %d14, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0xef]
.code32
seln %d14, %d15, %d0, %d1

# CHECK-INST: seln %d14, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0xef]
.code32
seln %d14, %d15, %d0, %d14

# CHECK-INST: seln %d14, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0xef]
.code32
seln %d14, %d15, %d0, %d15

# CHECK-INST: seln %d14, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0xef]
.code32
seln %d14, %d15, %d1, %d0

# CHECK-INST: seln %d14, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0xef]
.code32
seln %d14, %d15, %d1, %d1

# CHECK-INST: seln %d14, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0xef]
.code32
seln %d14, %d15, %d1, %d14

# CHECK-INST: seln %d14, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0xef]
.code32
seln %d14, %d15, %d1, %d15

# CHECK-INST: seln %d14, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0xef]
.code32
seln %d14, %d15, %d14, %d0

# CHECK-INST: seln %d14, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0xef]
.code32
seln %d14, %d15, %d14, %d1

# CHECK-INST: seln %d14, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0xef]
.code32
seln %d14, %d15, %d14, %d14

# CHECK-INST: seln %d14, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0xef]
.code32
seln %d14, %d15, %d14, %d15

# CHECK-INST: seln %d14, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0xef]
.code32
seln %d14, %d15, %d15, %d0

# CHECK-INST: seln %d14, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0xef]
.code32
seln %d14, %d15, %d15, %d1

# CHECK-INST: seln %d14, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0xef]
.code32
seln %d14, %d15, %d15, %d14

# CHECK-INST: seln %d14, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0xef]
.code32
seln %d14, %d15, %d15, %d15

# CHECK-INST: seln %d15, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0xf0]
.code32
seln %d15, %d0, %d0, %d0

# CHECK-INST: seln %d15, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0xf0]
.code32
seln %d15, %d0, %d0, %d1

# CHECK-INST: seln %d15, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0xf0]
.code32
seln %d15, %d0, %d0, %d14

# CHECK-INST: seln %d15, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0xf0]
.code32
seln %d15, %d0, %d0, %d15

# CHECK-INST: seln %d15, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0xf0]
.code32
seln %d15, %d0, %d1, %d0

# CHECK-INST: seln %d15, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0xf0]
.code32
seln %d15, %d0, %d1, %d1

# CHECK-INST: seln %d15, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0xf0]
.code32
seln %d15, %d0, %d1, %d14

# CHECK-INST: seln %d15, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0xf0]
.code32
seln %d15, %d0, %d1, %d15

# CHECK-INST: seln %d15, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0xf0]
.code32
seln %d15, %d0, %d14, %d0

# CHECK-INST: seln %d15, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0xf0]
.code32
seln %d15, %d0, %d14, %d1

# CHECK-INST: seln %d15, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0xf0]
.code32
seln %d15, %d0, %d14, %d14

# CHECK-INST: seln %d15, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0xf0]
.code32
seln %d15, %d0, %d14, %d15

# CHECK-INST: seln %d15, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0xf0]
.code32
seln %d15, %d0, %d15, %d0

# CHECK-INST: seln %d15, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0xf0]
.code32
seln %d15, %d0, %d15, %d1

# CHECK-INST: seln %d15, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0xf0]
.code32
seln %d15, %d0, %d15, %d14

# CHECK-INST: seln %d15, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0xf0]
.code32
seln %d15, %d0, %d15, %d15

# CHECK-INST: seln %d15, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0xf1]
.code32
seln %d15, %d1, %d0, %d0

# CHECK-INST: seln %d15, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0xf1]
.code32
seln %d15, %d1, %d0, %d1

# CHECK-INST: seln %d15, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0xf1]
.code32
seln %d15, %d1, %d0, %d14

# CHECK-INST: seln %d15, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0xf1]
.code32
seln %d15, %d1, %d0, %d15

# CHECK-INST: seln %d15, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0xf1]
.code32
seln %d15, %d1, %d1, %d0

# CHECK-INST: seln %d15, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0xf1]
.code32
seln %d15, %d1, %d1, %d1

# CHECK-INST: seln %d15, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0xf1]
.code32
seln %d15, %d1, %d1, %d14

# CHECK-INST: seln %d15, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0xf1]
.code32
seln %d15, %d1, %d1, %d15

# CHECK-INST: seln %d15, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0xf1]
.code32
seln %d15, %d1, %d14, %d0

# CHECK-INST: seln %d15, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0xf1]
.code32
seln %d15, %d1, %d14, %d1

# CHECK-INST: seln %d15, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0xf1]
.code32
seln %d15, %d1, %d14, %d14

# CHECK-INST: seln %d15, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0xf1]
.code32
seln %d15, %d1, %d14, %d15

# CHECK-INST: seln %d15, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0xf1]
.code32
seln %d15, %d1, %d15, %d0

# CHECK-INST: seln %d15, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0xf1]
.code32
seln %d15, %d1, %d15, %d1

# CHECK-INST: seln %d15, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0xf1]
.code32
seln %d15, %d1, %d15, %d14

# CHECK-INST: seln %d15, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0xf1]
.code32
seln %d15, %d1, %d15, %d15

# CHECK-INST: seln %d15, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0xfe]
.code32
seln %d15, %d14, %d0, %d0

# CHECK-INST: seln %d15, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0xfe]
.code32
seln %d15, %d14, %d0, %d1

# CHECK-INST: seln %d15, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0xfe]
.code32
seln %d15, %d14, %d0, %d14

# CHECK-INST: seln %d15, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0xfe]
.code32
seln %d15, %d14, %d0, %d15

# CHECK-INST: seln %d15, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0xfe]
.code32
seln %d15, %d14, %d1, %d0

# CHECK-INST: seln %d15, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0xfe]
.code32
seln %d15, %d14, %d1, %d1

# CHECK-INST: seln %d15, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0xfe]
.code32
seln %d15, %d14, %d1, %d14

# CHECK-INST: seln %d15, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0xfe]
.code32
seln %d15, %d14, %d1, %d15

# CHECK-INST: seln %d15, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0xfe]
.code32
seln %d15, %d14, %d14, %d0

# CHECK-INST: seln %d15, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0xfe]
.code32
seln %d15, %d14, %d14, %d1

# CHECK-INST: seln %d15, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0xfe]
.code32
seln %d15, %d14, %d14, %d14

# CHECK-INST: seln %d15, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0xfe]
.code32
seln %d15, %d14, %d14, %d15

# CHECK-INST: seln %d15, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0xfe]
.code32
seln %d15, %d14, %d15, %d0

# CHECK-INST: seln %d15, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0xfe]
.code32
seln %d15, %d14, %d15, %d1

# CHECK-INST: seln %d15, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0xfe]
.code32
seln %d15, %d14, %d15, %d14

# CHECK-INST: seln %d15, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0xfe]
.code32
seln %d15, %d14, %d15, %d15

# CHECK-INST: seln %d15, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0xff]
.code32
seln %d15, %d15, %d0, %d0

# CHECK-INST: seln %d15, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0xff]
.code32
seln %d15, %d15, %d0, %d1

# CHECK-INST: seln %d15, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0xff]
.code32
seln %d15, %d15, %d0, %d14

# CHECK-INST: seln %d15, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0xff]
.code32
seln %d15, %d15, %d0, %d15

# CHECK-INST: seln %d15, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0xff]
.code32
seln %d15, %d15, %d1, %d0

# CHECK-INST: seln %d15, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0xff]
.code32
seln %d15, %d15, %d1, %d1

# CHECK-INST: seln %d15, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0xff]
.code32
seln %d15, %d15, %d1, %d14

# CHECK-INST: seln %d15, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0xff]
.code32
seln %d15, %d15, %d1, %d15

# CHECK-INST: seln %d15, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0xff]
.code32
seln %d15, %d15, %d14, %d0

# CHECK-INST: seln %d15, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0xff]
.code32
seln %d15, %d15, %d14, %d1

# CHECK-INST: seln %d15, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0xff]
.code32
seln %d15, %d15, %d14, %d14

# CHECK-INST: seln %d15, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0xff]
.code32
seln %d15, %d15, %d14, %d15

# CHECK-INST: seln %d15, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0xff]
.code32
seln %d15, %d15, %d15, %d0

# CHECK-INST: seln %d15, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0xff]
.code32
seln %d15, %d15, %d15, %d1

# CHECK-INST: seln %d15, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0xff]
.code32
seln %d15, %d15, %d15, %d14

# CHECK-INST: seln %d15, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0xff]
.code32
seln %d15, %d15, %d15, %d15

# CHECK-INST: seln %d0, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0x00]
.code32
seln %d0, %d0, %d0, -256

# CHECK-INST: seln %d0, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0x00]
.code32
seln %d0, %d0, %d0, -129

# CHECK-INST: seln %d0, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0x00]
.code32
seln %d0, %d0, %d0, -1

# CHECK-INST: seln %d0, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0x00]
.code32
seln %d0, %d0, %d0, 0

# CHECK-INST: seln %d0, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0x00]
.code32
seln %d0, %d0, %d0, 1

# CHECK-INST: seln %d0, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0x00]
.code32
seln %d0, %d0, %d0, 128

# CHECK-INST: seln %d0, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0x00]
.code32
seln %d0, %d0, %d0, 255

# CHECK-INST: seln %d0, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0x00]
.code32
seln %d0, %d0, %d1, -256

# CHECK-INST: seln %d0, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0x00]
.code32
seln %d0, %d0, %d1, -129

# CHECK-INST: seln %d0, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0x00]
.code32
seln %d0, %d0, %d1, -1

# CHECK-INST: seln %d0, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0x00]
.code32
seln %d0, %d0, %d1, 0

# CHECK-INST: seln %d0, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0x00]
.code32
seln %d0, %d0, %d1, 1

# CHECK-INST: seln %d0, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0x00]
.code32
seln %d0, %d0, %d1, 128

# CHECK-INST: seln %d0, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0x00]
.code32
seln %d0, %d0, %d1, 255

# CHECK-INST: seln %d0, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0x00]
.code32
seln %d0, %d0, %d14, -256

# CHECK-INST: seln %d0, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0x00]
.code32
seln %d0, %d0, %d14, -129

# CHECK-INST: seln %d0, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0x00]
.code32
seln %d0, %d0, %d14, -1

# CHECK-INST: seln %d0, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0x00]
.code32
seln %d0, %d0, %d14, 0

# CHECK-INST: seln %d0, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0x00]
.code32
seln %d0, %d0, %d14, 1

# CHECK-INST: seln %d0, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0x00]
.code32
seln %d0, %d0, %d14, 128

# CHECK-INST: seln %d0, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0x00]
.code32
seln %d0, %d0, %d14, 255

# CHECK-INST: seln %d0, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0x00]
.code32
seln %d0, %d0, %d15, -256

# CHECK-INST: seln %d0, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0x00]
.code32
seln %d0, %d0, %d15, -129

# CHECK-INST: seln %d0, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0x00]
.code32
seln %d0, %d0, %d15, -1

# CHECK-INST: seln %d0, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0x00]
.code32
seln %d0, %d0, %d15, 0

# CHECK-INST: seln %d0, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0x00]
.code32
seln %d0, %d0, %d15, 1

# CHECK-INST: seln %d0, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0x00]
.code32
seln %d0, %d0, %d15, 128

# CHECK-INST: seln %d0, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0x00]
.code32
seln %d0, %d0, %d15, 255

# CHECK-INST: seln %d0, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0x01]
.code32
seln %d0, %d1, %d0, -256

# CHECK-INST: seln %d0, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0x01]
.code32
seln %d0, %d1, %d0, -129

# CHECK-INST: seln %d0, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0x01]
.code32
seln %d0, %d1, %d0, -1

# CHECK-INST: seln %d0, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0x01]
.code32
seln %d0, %d1, %d0, 0

# CHECK-INST: seln %d0, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0x01]
.code32
seln %d0, %d1, %d0, 1

# CHECK-INST: seln %d0, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0x01]
.code32
seln %d0, %d1, %d0, 128

# CHECK-INST: seln %d0, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0x01]
.code32
seln %d0, %d1, %d0, 255

# CHECK-INST: seln %d0, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0x01]
.code32
seln %d0, %d1, %d1, -256

# CHECK-INST: seln %d0, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0x01]
.code32
seln %d0, %d1, %d1, -129

# CHECK-INST: seln %d0, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0x01]
.code32
seln %d0, %d1, %d1, -1

# CHECK-INST: seln %d0, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0x01]
.code32
seln %d0, %d1, %d1, 0

# CHECK-INST: seln %d0, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0x01]
.code32
seln %d0, %d1, %d1, 1

# CHECK-INST: seln %d0, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0x01]
.code32
seln %d0, %d1, %d1, 128

# CHECK-INST: seln %d0, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0x01]
.code32
seln %d0, %d1, %d1, 255

# CHECK-INST: seln %d0, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0x01]
.code32
seln %d0, %d1, %d14, -256

# CHECK-INST: seln %d0, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0x01]
.code32
seln %d0, %d1, %d14, -129

# CHECK-INST: seln %d0, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0x01]
.code32
seln %d0, %d1, %d14, -1

# CHECK-INST: seln %d0, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0x01]
.code32
seln %d0, %d1, %d14, 0

# CHECK-INST: seln %d0, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0x01]
.code32
seln %d0, %d1, %d14, 1

# CHECK-INST: seln %d0, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0x01]
.code32
seln %d0, %d1, %d14, 128

# CHECK-INST: seln %d0, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0x01]
.code32
seln %d0, %d1, %d14, 255

# CHECK-INST: seln %d0, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0x01]
.code32
seln %d0, %d1, %d15, -256

# CHECK-INST: seln %d0, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0x01]
.code32
seln %d0, %d1, %d15, -129

# CHECK-INST: seln %d0, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0x01]
.code32
seln %d0, %d1, %d15, -1

# CHECK-INST: seln %d0, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0x01]
.code32
seln %d0, %d1, %d15, 0

# CHECK-INST: seln %d0, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0x01]
.code32
seln %d0, %d1, %d15, 1

# CHECK-INST: seln %d0, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0x01]
.code32
seln %d0, %d1, %d15, 128

# CHECK-INST: seln %d0, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0x01]
.code32
seln %d0, %d1, %d15, 255

# CHECK-INST: seln %d0, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0x0e]
.code32
seln %d0, %d14, %d0, -256

# CHECK-INST: seln %d0, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0x0e]
.code32
seln %d0, %d14, %d0, -129

# CHECK-INST: seln %d0, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0x0e]
.code32
seln %d0, %d14, %d0, -1

# CHECK-INST: seln %d0, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0x0e]
.code32
seln %d0, %d14, %d0, 0

# CHECK-INST: seln %d0, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0x0e]
.code32
seln %d0, %d14, %d0, 1

# CHECK-INST: seln %d0, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0x0e]
.code32
seln %d0, %d14, %d0, 128

# CHECK-INST: seln %d0, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0x0e]
.code32
seln %d0, %d14, %d0, 255

# CHECK-INST: seln %d0, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0x0e]
.code32
seln %d0, %d14, %d1, -256

# CHECK-INST: seln %d0, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0x0e]
.code32
seln %d0, %d14, %d1, -129

# CHECK-INST: seln %d0, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0x0e]
.code32
seln %d0, %d14, %d1, -1

# CHECK-INST: seln %d0, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0x0e]
.code32
seln %d0, %d14, %d1, 0

# CHECK-INST: seln %d0, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0x0e]
.code32
seln %d0, %d14, %d1, 1

# CHECK-INST: seln %d0, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0x0e]
.code32
seln %d0, %d14, %d1, 128

# CHECK-INST: seln %d0, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0x0e]
.code32
seln %d0, %d14, %d1, 255

# CHECK-INST: seln %d0, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0x0e]
.code32
seln %d0, %d14, %d14, -256

# CHECK-INST: seln %d0, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0x0e]
.code32
seln %d0, %d14, %d14, -129

# CHECK-INST: seln %d0, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0x0e]
.code32
seln %d0, %d14, %d14, -1

# CHECK-INST: seln %d0, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0x0e]
.code32
seln %d0, %d14, %d14, 0

# CHECK-INST: seln %d0, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0x0e]
.code32
seln %d0, %d14, %d14, 1

# CHECK-INST: seln %d0, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0x0e]
.code32
seln %d0, %d14, %d14, 128

# CHECK-INST: seln %d0, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0x0e]
.code32
seln %d0, %d14, %d14, 255

# CHECK-INST: seln %d0, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0x0e]
.code32
seln %d0, %d14, %d15, -256

# CHECK-INST: seln %d0, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0x0e]
.code32
seln %d0, %d14, %d15, -129

# CHECK-INST: seln %d0, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0x0e]
.code32
seln %d0, %d14, %d15, -1

# CHECK-INST: seln %d0, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0x0e]
.code32
seln %d0, %d14, %d15, 0

# CHECK-INST: seln %d0, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0x0e]
.code32
seln %d0, %d14, %d15, 1

# CHECK-INST: seln %d0, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0x0e]
.code32
seln %d0, %d14, %d15, 128

# CHECK-INST: seln %d0, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0x0e]
.code32
seln %d0, %d14, %d15, 255

# CHECK-INST: seln %d0, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0x0f]
.code32
seln %d0, %d15, %d0, -256

# CHECK-INST: seln %d0, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0x0f]
.code32
seln %d0, %d15, %d0, -129

# CHECK-INST: seln %d0, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0x0f]
.code32
seln %d0, %d15, %d0, -1

# CHECK-INST: seln %d0, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0x0f]
.code32
seln %d0, %d15, %d0, 0

# CHECK-INST: seln %d0, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0x0f]
.code32
seln %d0, %d15, %d0, 1

# CHECK-INST: seln %d0, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0x0f]
.code32
seln %d0, %d15, %d0, 128

# CHECK-INST: seln %d0, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0x0f]
.code32
seln %d0, %d15, %d0, 255

# CHECK-INST: seln %d0, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0x0f]
.code32
seln %d0, %d15, %d1, -256

# CHECK-INST: seln %d0, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0x0f]
.code32
seln %d0, %d15, %d1, -129

# CHECK-INST: seln %d0, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0x0f]
.code32
seln %d0, %d15, %d1, -1

# CHECK-INST: seln %d0, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0x0f]
.code32
seln %d0, %d15, %d1, 0

# CHECK-INST: seln %d0, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0x0f]
.code32
seln %d0, %d15, %d1, 1

# CHECK-INST: seln %d0, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0x0f]
.code32
seln %d0, %d15, %d1, 128

# CHECK-INST: seln %d0, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0x0f]
.code32
seln %d0, %d15, %d1, 255

# CHECK-INST: seln %d0, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0x0f]
.code32
seln %d0, %d15, %d14, -256

# CHECK-INST: seln %d0, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0x0f]
.code32
seln %d0, %d15, %d14, -129

# CHECK-INST: seln %d0, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0x0f]
.code32
seln %d0, %d15, %d14, -1

# CHECK-INST: seln %d0, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0x0f]
.code32
seln %d0, %d15, %d14, 0

# CHECK-INST: seln %d0, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0x0f]
.code32
seln %d0, %d15, %d14, 1

# CHECK-INST: seln %d0, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0x0f]
.code32
seln %d0, %d15, %d14, 128

# CHECK-INST: seln %d0, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0x0f]
.code32
seln %d0, %d15, %d14, 255

# CHECK-INST: seln %d0, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0x0f]
.code32
seln %d0, %d15, %d15, -256

# CHECK-INST: seln %d0, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0x0f]
.code32
seln %d0, %d15, %d15, -129

# CHECK-INST: seln %d0, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0x0f]
.code32
seln %d0, %d15, %d15, -1

# CHECK-INST: seln %d0, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0x0f]
.code32
seln %d0, %d15, %d15, 0

# CHECK-INST: seln %d0, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0x0f]
.code32
seln %d0, %d15, %d15, 1

# CHECK-INST: seln %d0, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0x0f]
.code32
seln %d0, %d15, %d15, 128

# CHECK-INST: seln %d0, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0x0f]
.code32
seln %d0, %d15, %d15, 255

# CHECK-INST: seln %d1, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0x10]
.code32
seln %d1, %d0, %d0, -256

# CHECK-INST: seln %d1, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0x10]
.code32
seln %d1, %d0, %d0, -129

# CHECK-INST: seln %d1, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0x10]
.code32
seln %d1, %d0, %d0, -1

# CHECK-INST: seln %d1, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0x10]
.code32
seln %d1, %d0, %d0, 0

# CHECK-INST: seln %d1, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0x10]
.code32
seln %d1, %d0, %d0, 1

# CHECK-INST: seln %d1, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0x10]
.code32
seln %d1, %d0, %d0, 128

# CHECK-INST: seln %d1, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0x10]
.code32
seln %d1, %d0, %d0, 255

# CHECK-INST: seln %d1, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0x10]
.code32
seln %d1, %d0, %d1, -256

# CHECK-INST: seln %d1, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0x10]
.code32
seln %d1, %d0, %d1, -129

# CHECK-INST: seln %d1, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0x10]
.code32
seln %d1, %d0, %d1, -1

# CHECK-INST: seln %d1, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0x10]
.code32
seln %d1, %d0, %d1, 0

# CHECK-INST: seln %d1, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0x10]
.code32
seln %d1, %d0, %d1, 1

# CHECK-INST: seln %d1, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0x10]
.code32
seln %d1, %d0, %d1, 128

# CHECK-INST: seln %d1, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0x10]
.code32
seln %d1, %d0, %d1, 255

# CHECK-INST: seln %d1, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0x10]
.code32
seln %d1, %d0, %d14, -256

# CHECK-INST: seln %d1, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0x10]
.code32
seln %d1, %d0, %d14, -129

# CHECK-INST: seln %d1, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0x10]
.code32
seln %d1, %d0, %d14, -1

# CHECK-INST: seln %d1, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0x10]
.code32
seln %d1, %d0, %d14, 0

# CHECK-INST: seln %d1, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0x10]
.code32
seln %d1, %d0, %d14, 1

# CHECK-INST: seln %d1, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0x10]
.code32
seln %d1, %d0, %d14, 128

# CHECK-INST: seln %d1, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0x10]
.code32
seln %d1, %d0, %d14, 255

# CHECK-INST: seln %d1, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0x10]
.code32
seln %d1, %d0, %d15, -256

# CHECK-INST: seln %d1, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0x10]
.code32
seln %d1, %d0, %d15, -129

# CHECK-INST: seln %d1, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0x10]
.code32
seln %d1, %d0, %d15, -1

# CHECK-INST: seln %d1, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0x10]
.code32
seln %d1, %d0, %d15, 0

# CHECK-INST: seln %d1, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0x10]
.code32
seln %d1, %d0, %d15, 1

# CHECK-INST: seln %d1, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0x10]
.code32
seln %d1, %d0, %d15, 128

# CHECK-INST: seln %d1, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0x10]
.code32
seln %d1, %d0, %d15, 255

# CHECK-INST: seln %d1, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0x11]
.code32
seln %d1, %d1, %d0, -256

# CHECK-INST: seln %d1, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0x11]
.code32
seln %d1, %d1, %d0, -129

# CHECK-INST: seln %d1, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0x11]
.code32
seln %d1, %d1, %d0, -1

# CHECK-INST: seln %d1, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0x11]
.code32
seln %d1, %d1, %d0, 0

# CHECK-INST: seln %d1, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0x11]
.code32
seln %d1, %d1, %d0, 1

# CHECK-INST: seln %d1, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0x11]
.code32
seln %d1, %d1, %d0, 128

# CHECK-INST: seln %d1, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0x11]
.code32
seln %d1, %d1, %d0, 255

# CHECK-INST: seln %d1, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0x11]
.code32
seln %d1, %d1, %d1, -256

# CHECK-INST: seln %d1, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0x11]
.code32
seln %d1, %d1, %d1, -129

# CHECK-INST: seln %d1, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0x11]
.code32
seln %d1, %d1, %d1, -1

# CHECK-INST: seln %d1, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0x11]
.code32
seln %d1, %d1, %d1, 0

# CHECK-INST: seln %d1, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0x11]
.code32
seln %d1, %d1, %d1, 1

# CHECK-INST: seln %d1, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0x11]
.code32
seln %d1, %d1, %d1, 128

# CHECK-INST: seln %d1, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0x11]
.code32
seln %d1, %d1, %d1, 255

# CHECK-INST: seln %d1, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0x11]
.code32
seln %d1, %d1, %d14, -256

# CHECK-INST: seln %d1, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0x11]
.code32
seln %d1, %d1, %d14, -129

# CHECK-INST: seln %d1, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0x11]
.code32
seln %d1, %d1, %d14, -1

# CHECK-INST: seln %d1, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0x11]
.code32
seln %d1, %d1, %d14, 0

# CHECK-INST: seln %d1, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0x11]
.code32
seln %d1, %d1, %d14, 1

# CHECK-INST: seln %d1, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0x11]
.code32
seln %d1, %d1, %d14, 128

# CHECK-INST: seln %d1, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0x11]
.code32
seln %d1, %d1, %d14, 255

# CHECK-INST: seln %d1, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0x11]
.code32
seln %d1, %d1, %d15, -256

# CHECK-INST: seln %d1, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0x11]
.code32
seln %d1, %d1, %d15, -129

# CHECK-INST: seln %d1, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0x11]
.code32
seln %d1, %d1, %d15, -1

# CHECK-INST: seln %d1, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0x11]
.code32
seln %d1, %d1, %d15, 0

# CHECK-INST: seln %d1, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0x11]
.code32
seln %d1, %d1, %d15, 1

# CHECK-INST: seln %d1, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0x11]
.code32
seln %d1, %d1, %d15, 128

# CHECK-INST: seln %d1, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0x11]
.code32
seln %d1, %d1, %d15, 255

# CHECK-INST: seln %d1, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0x1e]
.code32
seln %d1, %d14, %d0, -256

# CHECK-INST: seln %d1, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0x1e]
.code32
seln %d1, %d14, %d0, -129

# CHECK-INST: seln %d1, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0x1e]
.code32
seln %d1, %d14, %d0, -1

# CHECK-INST: seln %d1, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0x1e]
.code32
seln %d1, %d14, %d0, 0

# CHECK-INST: seln %d1, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0x1e]
.code32
seln %d1, %d14, %d0, 1

# CHECK-INST: seln %d1, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0x1e]
.code32
seln %d1, %d14, %d0, 128

# CHECK-INST: seln %d1, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0x1e]
.code32
seln %d1, %d14, %d0, 255

# CHECK-INST: seln %d1, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0x1e]
.code32
seln %d1, %d14, %d1, -256

# CHECK-INST: seln %d1, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0x1e]
.code32
seln %d1, %d14, %d1, -129

# CHECK-INST: seln %d1, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0x1e]
.code32
seln %d1, %d14, %d1, -1

# CHECK-INST: seln %d1, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0x1e]
.code32
seln %d1, %d14, %d1, 0

# CHECK-INST: seln %d1, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0x1e]
.code32
seln %d1, %d14, %d1, 1

# CHECK-INST: seln %d1, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0x1e]
.code32
seln %d1, %d14, %d1, 128

# CHECK-INST: seln %d1, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0x1e]
.code32
seln %d1, %d14, %d1, 255

# CHECK-INST: seln %d1, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0x1e]
.code32
seln %d1, %d14, %d14, -256

# CHECK-INST: seln %d1, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0x1e]
.code32
seln %d1, %d14, %d14, -129

# CHECK-INST: seln %d1, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0x1e]
.code32
seln %d1, %d14, %d14, -1

# CHECK-INST: seln %d1, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0x1e]
.code32
seln %d1, %d14, %d14, 0

# CHECK-INST: seln %d1, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0x1e]
.code32
seln %d1, %d14, %d14, 1

# CHECK-INST: seln %d1, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0x1e]
.code32
seln %d1, %d14, %d14, 128

# CHECK-INST: seln %d1, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0x1e]
.code32
seln %d1, %d14, %d14, 255

# CHECK-INST: seln %d1, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0x1e]
.code32
seln %d1, %d14, %d15, -256

# CHECK-INST: seln %d1, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0x1e]
.code32
seln %d1, %d14, %d15, -129

# CHECK-INST: seln %d1, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0x1e]
.code32
seln %d1, %d14, %d15, -1

# CHECK-INST: seln %d1, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0x1e]
.code32
seln %d1, %d14, %d15, 0

# CHECK-INST: seln %d1, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0x1e]
.code32
seln %d1, %d14, %d15, 1

# CHECK-INST: seln %d1, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0x1e]
.code32
seln %d1, %d14, %d15, 128

# CHECK-INST: seln %d1, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0x1e]
.code32
seln %d1, %d14, %d15, 255

# CHECK-INST: seln %d1, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0x1f]
.code32
seln %d1, %d15, %d0, -256

# CHECK-INST: seln %d1, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0x1f]
.code32
seln %d1, %d15, %d0, -129

# CHECK-INST: seln %d1, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0x1f]
.code32
seln %d1, %d15, %d0, -1

# CHECK-INST: seln %d1, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0x1f]
.code32
seln %d1, %d15, %d0, 0

# CHECK-INST: seln %d1, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0x1f]
.code32
seln %d1, %d15, %d0, 1

# CHECK-INST: seln %d1, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0x1f]
.code32
seln %d1, %d15, %d0, 128

# CHECK-INST: seln %d1, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0x1f]
.code32
seln %d1, %d15, %d0, 255

# CHECK-INST: seln %d1, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0x1f]
.code32
seln %d1, %d15, %d1, -256

# CHECK-INST: seln %d1, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0x1f]
.code32
seln %d1, %d15, %d1, -129

# CHECK-INST: seln %d1, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0x1f]
.code32
seln %d1, %d15, %d1, -1

# CHECK-INST: seln %d1, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0x1f]
.code32
seln %d1, %d15, %d1, 0

# CHECK-INST: seln %d1, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0x1f]
.code32
seln %d1, %d15, %d1, 1

# CHECK-INST: seln %d1, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0x1f]
.code32
seln %d1, %d15, %d1, 128

# CHECK-INST: seln %d1, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0x1f]
.code32
seln %d1, %d15, %d1, 255

# CHECK-INST: seln %d1, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0x1f]
.code32
seln %d1, %d15, %d14, -256

# CHECK-INST: seln %d1, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0x1f]
.code32
seln %d1, %d15, %d14, -129

# CHECK-INST: seln %d1, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0x1f]
.code32
seln %d1, %d15, %d14, -1

# CHECK-INST: seln %d1, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0x1f]
.code32
seln %d1, %d15, %d14, 0

# CHECK-INST: seln %d1, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0x1f]
.code32
seln %d1, %d15, %d14, 1

# CHECK-INST: seln %d1, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0x1f]
.code32
seln %d1, %d15, %d14, 128

# CHECK-INST: seln %d1, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0x1f]
.code32
seln %d1, %d15, %d14, 255

# CHECK-INST: seln %d1, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0x1f]
.code32
seln %d1, %d15, %d15, -256

# CHECK-INST: seln %d1, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0x1f]
.code32
seln %d1, %d15, %d15, -129

# CHECK-INST: seln %d1, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0x1f]
.code32
seln %d1, %d15, %d15, -1

# CHECK-INST: seln %d1, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0x1f]
.code32
seln %d1, %d15, %d15, 0

# CHECK-INST: seln %d1, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0x1f]
.code32
seln %d1, %d15, %d15, 1

# CHECK-INST: seln %d1, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0x1f]
.code32
seln %d1, %d15, %d15, 128

# CHECK-INST: seln %d1, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0x1f]
.code32
seln %d1, %d15, %d15, 255

# CHECK-INST: seln %d14, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0xe0]
.code32
seln %d14, %d0, %d0, -256

# CHECK-INST: seln %d14, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0xe0]
.code32
seln %d14, %d0, %d0, -129

# CHECK-INST: seln %d14, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0xe0]
.code32
seln %d14, %d0, %d0, -1

# CHECK-INST: seln %d14, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0xe0]
.code32
seln %d14, %d0, %d0, 0

# CHECK-INST: seln %d14, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0xe0]
.code32
seln %d14, %d0, %d0, 1

# CHECK-INST: seln %d14, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0xe0]
.code32
seln %d14, %d0, %d0, 128

# CHECK-INST: seln %d14, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0xe0]
.code32
seln %d14, %d0, %d0, 255

# CHECK-INST: seln %d14, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0xe0]
.code32
seln %d14, %d0, %d1, -256

# CHECK-INST: seln %d14, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0xe0]
.code32
seln %d14, %d0, %d1, -129

# CHECK-INST: seln %d14, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0xe0]
.code32
seln %d14, %d0, %d1, -1

# CHECK-INST: seln %d14, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0xe0]
.code32
seln %d14, %d0, %d1, 0

# CHECK-INST: seln %d14, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0xe0]
.code32
seln %d14, %d0, %d1, 1

# CHECK-INST: seln %d14, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0xe0]
.code32
seln %d14, %d0, %d1, 128

# CHECK-INST: seln %d14, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0xe0]
.code32
seln %d14, %d0, %d1, 255

# CHECK-INST: seln %d14, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0xe0]
.code32
seln %d14, %d0, %d14, -256

# CHECK-INST: seln %d14, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0xe0]
.code32
seln %d14, %d0, %d14, -129

# CHECK-INST: seln %d14, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0xe0]
.code32
seln %d14, %d0, %d14, -1

# CHECK-INST: seln %d14, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0xe0]
.code32
seln %d14, %d0, %d14, 0

# CHECK-INST: seln %d14, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0xe0]
.code32
seln %d14, %d0, %d14, 1

# CHECK-INST: seln %d14, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0xe0]
.code32
seln %d14, %d0, %d14, 128

# CHECK-INST: seln %d14, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0xe0]
.code32
seln %d14, %d0, %d14, 255

# CHECK-INST: seln %d14, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0xe0]
.code32
seln %d14, %d0, %d15, -256

# CHECK-INST: seln %d14, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0xe0]
.code32
seln %d14, %d0, %d15, -129

# CHECK-INST: seln %d14, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0xe0]
.code32
seln %d14, %d0, %d15, -1

# CHECK-INST: seln %d14, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0xe0]
.code32
seln %d14, %d0, %d15, 0

# CHECK-INST: seln %d14, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0xe0]
.code32
seln %d14, %d0, %d15, 1

# CHECK-INST: seln %d14, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0xe0]
.code32
seln %d14, %d0, %d15, 128

# CHECK-INST: seln %d14, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0xe0]
.code32
seln %d14, %d0, %d15, 255

# CHECK-INST: seln %d14, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0xe1]
.code32
seln %d14, %d1, %d0, -256

# CHECK-INST: seln %d14, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0xe1]
.code32
seln %d14, %d1, %d0, -129

# CHECK-INST: seln %d14, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0xe1]
.code32
seln %d14, %d1, %d0, -1

# CHECK-INST: seln %d14, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0xe1]
.code32
seln %d14, %d1, %d0, 0

# CHECK-INST: seln %d14, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0xe1]
.code32
seln %d14, %d1, %d0, 1

# CHECK-INST: seln %d14, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0xe1]
.code32
seln %d14, %d1, %d0, 128

# CHECK-INST: seln %d14, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0xe1]
.code32
seln %d14, %d1, %d0, 255

# CHECK-INST: seln %d14, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0xe1]
.code32
seln %d14, %d1, %d1, -256

# CHECK-INST: seln %d14, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0xe1]
.code32
seln %d14, %d1, %d1, -129

# CHECK-INST: seln %d14, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0xe1]
.code32
seln %d14, %d1, %d1, -1

# CHECK-INST: seln %d14, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0xe1]
.code32
seln %d14, %d1, %d1, 0

# CHECK-INST: seln %d14, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0xe1]
.code32
seln %d14, %d1, %d1, 1

# CHECK-INST: seln %d14, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0xe1]
.code32
seln %d14, %d1, %d1, 128

# CHECK-INST: seln %d14, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0xe1]
.code32
seln %d14, %d1, %d1, 255

# CHECK-INST: seln %d14, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0xe1]
.code32
seln %d14, %d1, %d14, -256

# CHECK-INST: seln %d14, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0xe1]
.code32
seln %d14, %d1, %d14, -129

# CHECK-INST: seln %d14, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0xe1]
.code32
seln %d14, %d1, %d14, -1

# CHECK-INST: seln %d14, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0xe1]
.code32
seln %d14, %d1, %d14, 0

# CHECK-INST: seln %d14, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0xe1]
.code32
seln %d14, %d1, %d14, 1

# CHECK-INST: seln %d14, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0xe1]
.code32
seln %d14, %d1, %d14, 128

# CHECK-INST: seln %d14, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0xe1]
.code32
seln %d14, %d1, %d14, 255

# CHECK-INST: seln %d14, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0xe1]
.code32
seln %d14, %d1, %d15, -256

# CHECK-INST: seln %d14, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0xe1]
.code32
seln %d14, %d1, %d15, -129

# CHECK-INST: seln %d14, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0xe1]
.code32
seln %d14, %d1, %d15, -1

# CHECK-INST: seln %d14, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0xe1]
.code32
seln %d14, %d1, %d15, 0

# CHECK-INST: seln %d14, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0xe1]
.code32
seln %d14, %d1, %d15, 1

# CHECK-INST: seln %d14, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0xe1]
.code32
seln %d14, %d1, %d15, 128

# CHECK-INST: seln %d14, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0xe1]
.code32
seln %d14, %d1, %d15, 255

# CHECK-INST: seln %d14, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0xee]
.code32
seln %d14, %d14, %d0, -256

# CHECK-INST: seln %d14, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0xee]
.code32
seln %d14, %d14, %d0, -129

# CHECK-INST: seln %d14, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0xee]
.code32
seln %d14, %d14, %d0, -1

# CHECK-INST: seln %d14, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0xee]
.code32
seln %d14, %d14, %d0, 0

# CHECK-INST: seln %d14, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0xee]
.code32
seln %d14, %d14, %d0, 1

# CHECK-INST: seln %d14, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0xee]
.code32
seln %d14, %d14, %d0, 128

# CHECK-INST: seln %d14, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0xee]
.code32
seln %d14, %d14, %d0, 255

# CHECK-INST: seln %d14, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0xee]
.code32
seln %d14, %d14, %d1, -256

# CHECK-INST: seln %d14, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0xee]
.code32
seln %d14, %d14, %d1, -129

# CHECK-INST: seln %d14, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0xee]
.code32
seln %d14, %d14, %d1, -1

# CHECK-INST: seln %d14, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0xee]
.code32
seln %d14, %d14, %d1, 0

# CHECK-INST: seln %d14, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0xee]
.code32
seln %d14, %d14, %d1, 1

# CHECK-INST: seln %d14, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0xee]
.code32
seln %d14, %d14, %d1, 128

# CHECK-INST: seln %d14, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0xee]
.code32
seln %d14, %d14, %d1, 255

# CHECK-INST: seln %d14, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0xee]
.code32
seln %d14, %d14, %d14, -256

# CHECK-INST: seln %d14, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0xee]
.code32
seln %d14, %d14, %d14, -129

# CHECK-INST: seln %d14, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0xee]
.code32
seln %d14, %d14, %d14, -1

# CHECK-INST: seln %d14, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0xee]
.code32
seln %d14, %d14, %d14, 0

# CHECK-INST: seln %d14, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0xee]
.code32
seln %d14, %d14, %d14, 1

# CHECK-INST: seln %d14, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0xee]
.code32
seln %d14, %d14, %d14, 128

# CHECK-INST: seln %d14, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0xee]
.code32
seln %d14, %d14, %d14, 255

# CHECK-INST: seln %d14, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0xee]
.code32
seln %d14, %d14, %d15, -256

# CHECK-INST: seln %d14, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0xee]
.code32
seln %d14, %d14, %d15, -129

# CHECK-INST: seln %d14, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0xee]
.code32
seln %d14, %d14, %d15, -1

# CHECK-INST: seln %d14, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0xee]
.code32
seln %d14, %d14, %d15, 0

# CHECK-INST: seln %d14, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0xee]
.code32
seln %d14, %d14, %d15, 1

# CHECK-INST: seln %d14, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0xee]
.code32
seln %d14, %d14, %d15, 128

# CHECK-INST: seln %d14, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0xee]
.code32
seln %d14, %d14, %d15, 255

# CHECK-INST: seln %d14, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0xef]
.code32
seln %d14, %d15, %d0, -256

# CHECK-INST: seln %d14, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0xef]
.code32
seln %d14, %d15, %d0, -129

# CHECK-INST: seln %d14, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0xef]
.code32
seln %d14, %d15, %d0, -1

# CHECK-INST: seln %d14, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0xef]
.code32
seln %d14, %d15, %d0, 0

# CHECK-INST: seln %d14, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0xef]
.code32
seln %d14, %d15, %d0, 1

# CHECK-INST: seln %d14, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0xef]
.code32
seln %d14, %d15, %d0, 128

# CHECK-INST: seln %d14, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0xef]
.code32
seln %d14, %d15, %d0, 255

# CHECK-INST: seln %d14, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0xef]
.code32
seln %d14, %d15, %d1, -256

# CHECK-INST: seln %d14, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0xef]
.code32
seln %d14, %d15, %d1, -129

# CHECK-INST: seln %d14, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0xef]
.code32
seln %d14, %d15, %d1, -1

# CHECK-INST: seln %d14, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0xef]
.code32
seln %d14, %d15, %d1, 0

# CHECK-INST: seln %d14, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0xef]
.code32
seln %d14, %d15, %d1, 1

# CHECK-INST: seln %d14, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0xef]
.code32
seln %d14, %d15, %d1, 128

# CHECK-INST: seln %d14, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0xef]
.code32
seln %d14, %d15, %d1, 255

# CHECK-INST: seln %d14, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0xef]
.code32
seln %d14, %d15, %d14, -256

# CHECK-INST: seln %d14, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0xef]
.code32
seln %d14, %d15, %d14, -129

# CHECK-INST: seln %d14, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0xef]
.code32
seln %d14, %d15, %d14, -1

# CHECK-INST: seln %d14, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0xef]
.code32
seln %d14, %d15, %d14, 0

# CHECK-INST: seln %d14, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0xef]
.code32
seln %d14, %d15, %d14, 1

# CHECK-INST: seln %d14, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0xef]
.code32
seln %d14, %d15, %d14, 128

# CHECK-INST: seln %d14, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0xef]
.code32
seln %d14, %d15, %d14, 255

# CHECK-INST: seln %d14, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0xef]
.code32
seln %d14, %d15, %d15, -256

# CHECK-INST: seln %d14, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0xef]
.code32
seln %d14, %d15, %d15, -129

# CHECK-INST: seln %d14, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0xef]
.code32
seln %d14, %d15, %d15, -1

# CHECK-INST: seln %d14, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0xef]
.code32
seln %d14, %d15, %d15, 0

# CHECK-INST: seln %d14, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0xef]
.code32
seln %d14, %d15, %d15, 1

# CHECK-INST: seln %d14, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0xef]
.code32
seln %d14, %d15, %d15, 128

# CHECK-INST: seln %d14, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0xef]
.code32
seln %d14, %d15, %d15, 255

# CHECK-INST: seln %d15, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0xf0]
.code32
seln %d15, %d0, %d0, -256

# CHECK-INST: seln %d15, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0xf0]
.code32
seln %d15, %d0, %d0, -129

# CHECK-INST: seln %d15, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0xf0]
.code32
seln %d15, %d0, %d0, -1

# CHECK-INST: seln %d15, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0xf0]
.code32
seln %d15, %d0, %d0, 0

# CHECK-INST: seln %d15, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0xf0]
.code32
seln %d15, %d0, %d0, 1

# CHECK-INST: seln %d15, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0xf0]
.code32
seln %d15, %d0, %d0, 128

# CHECK-INST: seln %d15, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0xf0]
.code32
seln %d15, %d0, %d0, 255

# CHECK-INST: seln %d15, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0xf0]
.code32
seln %d15, %d0, %d1, -256

# CHECK-INST: seln %d15, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0xf0]
.code32
seln %d15, %d0, %d1, -129

# CHECK-INST: seln %d15, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0xf0]
.code32
seln %d15, %d0, %d1, -1

# CHECK-INST: seln %d15, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0xf0]
.code32
seln %d15, %d0, %d1, 0

# CHECK-INST: seln %d15, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0xf0]
.code32
seln %d15, %d0, %d1, 1

# CHECK-INST: seln %d15, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0xf0]
.code32
seln %d15, %d0, %d1, 128

# CHECK-INST: seln %d15, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0xf0]
.code32
seln %d15, %d0, %d1, 255

# CHECK-INST: seln %d15, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0xf0]
.code32
seln %d15, %d0, %d14, -256

# CHECK-INST: seln %d15, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0xf0]
.code32
seln %d15, %d0, %d14, -129

# CHECK-INST: seln %d15, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0xf0]
.code32
seln %d15, %d0, %d14, -1

# CHECK-INST: seln %d15, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0xf0]
.code32
seln %d15, %d0, %d14, 0

# CHECK-INST: seln %d15, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0xf0]
.code32
seln %d15, %d0, %d14, 1

# CHECK-INST: seln %d15, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0xf0]
.code32
seln %d15, %d0, %d14, 128

# CHECK-INST: seln %d15, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0xf0]
.code32
seln %d15, %d0, %d14, 255

# CHECK-INST: seln %d15, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0xf0]
.code32
seln %d15, %d0, %d15, -256

# CHECK-INST: seln %d15, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0xf0]
.code32
seln %d15, %d0, %d15, -129

# CHECK-INST: seln %d15, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0xf0]
.code32
seln %d15, %d0, %d15, -1

# CHECK-INST: seln %d15, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0xf0]
.code32
seln %d15, %d0, %d15, 0

# CHECK-INST: seln %d15, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0xf0]
.code32
seln %d15, %d0, %d15, 1

# CHECK-INST: seln %d15, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0xf0]
.code32
seln %d15, %d0, %d15, 128

# CHECK-INST: seln %d15, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0xf0]
.code32
seln %d15, %d0, %d15, 255

# CHECK-INST: seln %d15, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0xf1]
.code32
seln %d15, %d1, %d0, -256

# CHECK-INST: seln %d15, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0xf1]
.code32
seln %d15, %d1, %d0, -129

# CHECK-INST: seln %d15, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0xf1]
.code32
seln %d15, %d1, %d0, -1

# CHECK-INST: seln %d15, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0xf1]
.code32
seln %d15, %d1, %d0, 0

# CHECK-INST: seln %d15, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0xf1]
.code32
seln %d15, %d1, %d0, 1

# CHECK-INST: seln %d15, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0xf1]
.code32
seln %d15, %d1, %d0, 128

# CHECK-INST: seln %d15, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0xf1]
.code32
seln %d15, %d1, %d0, 255

# CHECK-INST: seln %d15, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0xf1]
.code32
seln %d15, %d1, %d1, -256

# CHECK-INST: seln %d15, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0xf1]
.code32
seln %d15, %d1, %d1, -129

# CHECK-INST: seln %d15, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0xf1]
.code32
seln %d15, %d1, %d1, -1

# CHECK-INST: seln %d15, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0xf1]
.code32
seln %d15, %d1, %d1, 0

# CHECK-INST: seln %d15, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0xf1]
.code32
seln %d15, %d1, %d1, 1

# CHECK-INST: seln %d15, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0xf1]
.code32
seln %d15, %d1, %d1, 128

# CHECK-INST: seln %d15, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0xf1]
.code32
seln %d15, %d1, %d1, 255

# CHECK-INST: seln %d15, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0xf1]
.code32
seln %d15, %d1, %d14, -256

# CHECK-INST: seln %d15, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0xf1]
.code32
seln %d15, %d1, %d14, -129

# CHECK-INST: seln %d15, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0xf1]
.code32
seln %d15, %d1, %d14, -1

# CHECK-INST: seln %d15, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0xf1]
.code32
seln %d15, %d1, %d14, 0

# CHECK-INST: seln %d15, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0xf1]
.code32
seln %d15, %d1, %d14, 1

# CHECK-INST: seln %d15, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0xf1]
.code32
seln %d15, %d1, %d14, 128

# CHECK-INST: seln %d15, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0xf1]
.code32
seln %d15, %d1, %d14, 255

# CHECK-INST: seln %d15, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0xf1]
.code32
seln %d15, %d1, %d15, -256

# CHECK-INST: seln %d15, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0xf1]
.code32
seln %d15, %d1, %d15, -129

# CHECK-INST: seln %d15, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0xf1]
.code32
seln %d15, %d1, %d15, -1

# CHECK-INST: seln %d15, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0xf1]
.code32
seln %d15, %d1, %d15, 0

# CHECK-INST: seln %d15, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0xf1]
.code32
seln %d15, %d1, %d15, 1

# CHECK-INST: seln %d15, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0xf1]
.code32
seln %d15, %d1, %d15, 128

# CHECK-INST: seln %d15, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0xf1]
.code32
seln %d15, %d1, %d15, 255

# CHECK-INST: seln %d15, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0xfe]
.code32
seln %d15, %d14, %d0, -256

# CHECK-INST: seln %d15, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0xfe]
.code32
seln %d15, %d14, %d0, -129

# CHECK-INST: seln %d15, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0xfe]
.code32
seln %d15, %d14, %d0, -1

# CHECK-INST: seln %d15, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0xfe]
.code32
seln %d15, %d14, %d0, 0

# CHECK-INST: seln %d15, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0xfe]
.code32
seln %d15, %d14, %d0, 1

# CHECK-INST: seln %d15, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0xfe]
.code32
seln %d15, %d14, %d0, 128

# CHECK-INST: seln %d15, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0xfe]
.code32
seln %d15, %d14, %d0, 255

# CHECK-INST: seln %d15, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0xfe]
.code32
seln %d15, %d14, %d1, -256

# CHECK-INST: seln %d15, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0xfe]
.code32
seln %d15, %d14, %d1, -129

# CHECK-INST: seln %d15, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0xfe]
.code32
seln %d15, %d14, %d1, -1

# CHECK-INST: seln %d15, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0xfe]
.code32
seln %d15, %d14, %d1, 0

# CHECK-INST: seln %d15, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0xfe]
.code32
seln %d15, %d14, %d1, 1

# CHECK-INST: seln %d15, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0xfe]
.code32
seln %d15, %d14, %d1, 128

# CHECK-INST: seln %d15, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0xfe]
.code32
seln %d15, %d14, %d1, 255

# CHECK-INST: seln %d15, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0xfe]
.code32
seln %d15, %d14, %d14, -256

# CHECK-INST: seln %d15, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0xfe]
.code32
seln %d15, %d14, %d14, -129

# CHECK-INST: seln %d15, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0xfe]
.code32
seln %d15, %d14, %d14, -1

# CHECK-INST: seln %d15, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0xfe]
.code32
seln %d15, %d14, %d14, 0

# CHECK-INST: seln %d15, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0xfe]
.code32
seln %d15, %d14, %d14, 1

# CHECK-INST: seln %d15, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0xfe]
.code32
seln %d15, %d14, %d14, 128

# CHECK-INST: seln %d15, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0xfe]
.code32
seln %d15, %d14, %d14, 255

# CHECK-INST: seln %d15, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0xfe]
.code32
seln %d15, %d14, %d15, -256

# CHECK-INST: seln %d15, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0xfe]
.code32
seln %d15, %d14, %d15, -129

# CHECK-INST: seln %d15, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0xfe]
.code32
seln %d15, %d14, %d15, -1

# CHECK-INST: seln %d15, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0xfe]
.code32
seln %d15, %d14, %d15, 0

# CHECK-INST: seln %d15, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0xfe]
.code32
seln %d15, %d14, %d15, 1

# CHECK-INST: seln %d15, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0xfe]
.code32
seln %d15, %d14, %d15, 128

# CHECK-INST: seln %d15, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0xfe]
.code32
seln %d15, %d14, %d15, 255

# CHECK-INST: seln %d15, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0xff]
.code32
seln %d15, %d15, %d0, -256

# CHECK-INST: seln %d15, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0xff]
.code32
seln %d15, %d15, %d0, -129

# CHECK-INST: seln %d15, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0xff]
.code32
seln %d15, %d15, %d0, -1

# CHECK-INST: seln %d15, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0xff]
.code32
seln %d15, %d15, %d0, 0

# CHECK-INST: seln %d15, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0xff]
.code32
seln %d15, %d15, %d0, 1

# CHECK-INST: seln %d15, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0xff]
.code32
seln %d15, %d15, %d0, 128

# CHECK-INST: seln %d15, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0xff]
.code32
seln %d15, %d15, %d0, 255

# CHECK-INST: seln %d15, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0xff]
.code32
seln %d15, %d15, %d1, -256

# CHECK-INST: seln %d15, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0xff]
.code32
seln %d15, %d15, %d1, -129

# CHECK-INST: seln %d15, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0xff]
.code32
seln %d15, %d15, %d1, -1

# CHECK-INST: seln %d15, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0xff]
.code32
seln %d15, %d15, %d1, 0

# CHECK-INST: seln %d15, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0xff]
.code32
seln %d15, %d15, %d1, 1

# CHECK-INST: seln %d15, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0xff]
.code32
seln %d15, %d15, %d1, 128

# CHECK-INST: seln %d15, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0xff]
.code32
seln %d15, %d15, %d1, 255

# CHECK-INST: seln %d15, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0xff]
.code32
seln %d15, %d15, %d14, -256

# CHECK-INST: seln %d15, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0xff]
.code32
seln %d15, %d15, %d14, -129

# CHECK-INST: seln %d15, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0xff]
.code32
seln %d15, %d15, %d14, -1

# CHECK-INST: seln %d15, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0xff]
.code32
seln %d15, %d15, %d14, 0

# CHECK-INST: seln %d15, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0xff]
.code32
seln %d15, %d15, %d14, 1

# CHECK-INST: seln %d15, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0xff]
.code32
seln %d15, %d15, %d14, 128

# CHECK-INST: seln %d15, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0xff]
.code32
seln %d15, %d15, %d14, 255

# CHECK-INST: seln %d15, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0xff]
.code32
seln %d15, %d15, %d15, -256

# CHECK-INST: seln %d15, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0xff]
.code32
seln %d15, %d15, %d15, -129

# CHECK-INST: seln %d15, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0xff]
.code32
seln %d15, %d15, %d15, -1

# CHECK-INST: seln %d15, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0xff]
.code32
seln %d15, %d15, %d15, 0

# CHECK-INST: seln %d15, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0xff]
.code32
seln %d15, %d15, %d15, 1

# CHECK-INST: seln %d15, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0xff]
.code32
seln %d15, %d15, %d15, 128

# CHECK-INST: seln %d15, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0xff]
.code32
seln %d15, %d15, %d15, 255

# CHECK-INST: cmov %d0, %d15, %d0
# CHECK: encoding: [0x2a,0x00]
.code16
cmov %d0, %d15, %d0

# CHECK-INST: cmov %d0, %d15, %d1
# CHECK: encoding: [0x2a,0x10]
.code16
cmov %d0, %d15, %d1

# CHECK-INST: cmov %d0, %d15, %d14
# CHECK: encoding: [0x2a,0xe0]
.code16
cmov %d0, %d15, %d14

# CHECK-INST: cmov %d0, %d15, %d15
# CHECK: encoding: [0x2a,0xf0]
.code16
cmov %d0, %d15, %d15

# CHECK-INST: cmov %d1, %d15, %d0
# CHECK: encoding: [0x2a,0x01]
.code16
cmov %d1, %d15, %d0

# CHECK-INST: cmov %d1, %d15, %d1
# CHECK: encoding: [0x2a,0x11]
.code16
cmov %d1, %d15, %d1

# CHECK-INST: cmov %d1, %d15, %d14
# CHECK: encoding: [0x2a,0xe1]
.code16
cmov %d1, %d15, %d14

# CHECK-INST: cmov %d1, %d15, %d15
# CHECK: encoding: [0x2a,0xf1]
.code16
cmov %d1, %d15, %d15

# CHECK-INST: cmov %d14, %d15, %d0
# CHECK: encoding: [0x2a,0x0e]
.code16
cmov %d14, %d15, %d0

# CHECK-INST: cmov %d14, %d15, %d1
# CHECK: encoding: [0x2a,0x1e]
.code16
cmov %d14, %d15, %d1

# CHECK-INST: cmov %d14, %d15, %d14
# CHECK: encoding: [0x2a,0xee]
.code16
cmov %d14, %d15, %d14

# CHECK-INST: cmov %d14, %d15, %d15
# CHECK: encoding: [0x2a,0xfe]
.code16
cmov %d14, %d15, %d15

# CHECK-INST: cmov %d15, %d15, %d0
# CHECK: encoding: [0x2a,0x0f]
.code16
cmov %d15, %d15, %d0

# CHECK-INST: cmov %d15, %d15, %d1
# CHECK: encoding: [0x2a,0x1f]
.code16
cmov %d15, %d15, %d1

# CHECK-INST: cmov %d15, %d15, %d14
# CHECK: encoding: [0x2a,0xef]
.code16
cmov %d15, %d15, %d14

# CHECK-INST: cmov %d15, %d15, %d15
# CHECK: encoding: [0x2a,0xff]
.code16
cmov %d15, %d15, %d15

# CHECK-INST: cmov %d0, %d15, -8
# CHECK: encoding: [0xaa,0x80]
.code16
cmov %d0, %d15, -8

# CHECK-INST: cmov %d0, %d15, -1
# CHECK: encoding: [0xaa,0xf0]
.code16
cmov %d0, %d15, -1

# CHECK-INST: cmov %d0, %d15, 0
# CHECK: encoding: [0xaa,0x00]
.code16
cmov %d0, %d15, 0

# CHECK-INST: cmov %d0, %d15, 1
# CHECK: encoding: [0xaa,0x10]
.code16
cmov %d0, %d15, 1

# CHECK-INST: cmov %d0, %d15, 7
# CHECK: encoding: [0xaa,0x70]
.code16
cmov %d0, %d15, 7

# CHECK-INST: cmov %d1, %d15, -8
# CHECK: encoding: [0xaa,0x81]
.code16
cmov %d1, %d15, -8

# CHECK-INST: cmov %d1, %d15, -1
# CHECK: encoding: [0xaa,0xf1]
.code16
cmov %d1, %d15, -1

# CHECK-INST: cmov %d1, %d15, 0
# CHECK: encoding: [0xaa,0x01]
.code16
cmov %d1, %d15, 0

# CHECK-INST: cmov %d1, %d15, 1
# CHECK: encoding: [0xaa,0x11]
.code16
cmov %d1, %d15, 1

# CHECK-INST: cmov %d1, %d15, 7
# CHECK: encoding: [0xaa,0x71]
.code16
cmov %d1, %d15, 7

# CHECK-INST: cmov %d14, %d15, -8
# CHECK: encoding: [0xaa,0x8e]
.code16
cmov %d14, %d15, -8

# CHECK-INST: cmov %d14, %d15, -1
# CHECK: encoding: [0xaa,0xfe]
.code16
cmov %d14, %d15, -1

# CHECK-INST: cmov %d14, %d15, 0
# CHECK: encoding: [0xaa,0x0e]
.code16
cmov %d14, %d15, 0

# CHECK-INST: cmov %d14, %d15, 1
# CHECK: encoding: [0xaa,0x1e]
.code16
cmov %d14, %d15, 1

# CHECK-INST: cmov %d14, %d15, 7
# CHECK: encoding: [0xaa,0x7e]
.code16
cmov %d14, %d15, 7

# CHECK-INST: cmov %d15, %d15, -8
# CHECK: encoding: [0xaa,0x8f]
.code16
cmov %d15, %d15, -8

# CHECK-INST: cmov %d15, %d15, -1
# CHECK: encoding: [0xaa,0xff]
.code16
cmov %d15, %d15, -1

# CHECK-INST: cmov %d15, %d15, 0
# CHECK: encoding: [0xaa,0x0f]
.code16
cmov %d15, %d15, 0

# CHECK-INST: cmov %d15, %d15, 1
# CHECK: encoding: [0xaa,0x1f]
.code16
cmov %d15, %d15, 1

# CHECK-INST: cmov %d15, %d15, 7
# CHECK: encoding: [0xaa,0x7f]
.code16
cmov %d15, %d15, 7

# CHECK-INST: cmovn %d0, %d15, %d0
# CHECK: encoding: [0x6a,0x00]
.code16
cmovn %d0, %d15, %d0

# CHECK-INST: cmovn %d0, %d15, %d1
# CHECK: encoding: [0x6a,0x10]
.code16
cmovn %d0, %d15, %d1

# CHECK-INST: cmovn %d0, %d15, %d14
# CHECK: encoding: [0x6a,0xe0]
.code16
cmovn %d0, %d15, %d14

# CHECK-INST: cmovn %d0, %d15, %d15
# CHECK: encoding: [0x6a,0xf0]
.code16
cmovn %d0, %d15, %d15

# CHECK-INST: cmovn %d1, %d15, %d0
# CHECK: encoding: [0x6a,0x01]
.code16
cmovn %d1, %d15, %d0

# CHECK-INST: cmovn %d1, %d15, %d1
# CHECK: encoding: [0x6a,0x11]
.code16
cmovn %d1, %d15, %d1

# CHECK-INST: cmovn %d1, %d15, %d14
# CHECK: encoding: [0x6a,0xe1]
.code16
cmovn %d1, %d15, %d14

# CHECK-INST: cmovn %d1, %d15, %d15
# CHECK: encoding: [0x6a,0xf1]
.code16
cmovn %d1, %d15, %d15

# CHECK-INST: cmovn %d14, %d15, %d0
# CHECK: encoding: [0x6a,0x0e]
.code16
cmovn %d14, %d15, %d0

# CHECK-INST: cmovn %d14, %d15, %d1
# CHECK: encoding: [0x6a,0x1e]
.code16
cmovn %d14, %d15, %d1

# CHECK-INST: cmovn %d14, %d15, %d14
# CHECK: encoding: [0x6a,0xee]
.code16
cmovn %d14, %d15, %d14

# CHECK-INST: cmovn %d14, %d15, %d15
# CHECK: encoding: [0x6a,0xfe]
.code16
cmovn %d14, %d15, %d15

# CHECK-INST: cmovn %d15, %d15, %d0
# CHECK: encoding: [0x6a,0x0f]
.code16
cmovn %d15, %d15, %d0

# CHECK-INST: cmovn %d15, %d15, %d1
# CHECK: encoding: [0x6a,0x1f]
.code16
cmovn %d15, %d15, %d1

# CHECK-INST: cmovn %d15, %d15, %d14
# CHECK: encoding: [0x6a,0xef]
.code16
cmovn %d15, %d15, %d14

# CHECK-INST: cmovn %d15, %d15, %d15
# CHECK: encoding: [0x6a,0xff]
.code16
cmovn %d15, %d15, %d15

# CHECK-INST: cmovn %d0, %d15, -8
# CHECK: encoding: [0xea,0x80]
.code16
cmovn %d0, %d15, -8

# CHECK-INST: cmovn %d0, %d15, -1
# CHECK: encoding: [0xea,0xf0]
.code16
cmovn %d0, %d15, -1

# CHECK-INST: cmovn %d0, %d15, 0
# CHECK: encoding: [0xea,0x00]
.code16
cmovn %d0, %d15, 0

# CHECK-INST: cmovn %d0, %d15, 1
# CHECK: encoding: [0xea,0x10]
.code16
cmovn %d0, %d15, 1

# CHECK-INST: cmovn %d0, %d15, 7
# CHECK: encoding: [0xea,0x70]
.code16
cmovn %d0, %d15, 7

# CHECK-INST: cmovn %d1, %d15, -8
# CHECK: encoding: [0xea,0x81]
.code16
cmovn %d1, %d15, -8

# CHECK-INST: cmovn %d1, %d15, -1
# CHECK: encoding: [0xea,0xf1]
.code16
cmovn %d1, %d15, -1

# CHECK-INST: cmovn %d1, %d15, 0
# CHECK: encoding: [0xea,0x01]
.code16
cmovn %d1, %d15, 0

# CHECK-INST: cmovn %d1, %d15, 1
# CHECK: encoding: [0xea,0x11]
.code16
cmovn %d1, %d15, 1

# CHECK-INST: cmovn %d1, %d15, 7
# CHECK: encoding: [0xea,0x71]
.code16
cmovn %d1, %d15, 7

# CHECK-INST: cmovn %d14, %d15, -8
# CHECK: encoding: [0xea,0x8e]
.code16
cmovn %d14, %d15, -8

# CHECK-INST: cmovn %d14, %d15, -1
# CHECK: encoding: [0xea,0xfe]
.code16
cmovn %d14, %d15, -1

# CHECK-INST: cmovn %d14, %d15, 0
# CHECK: encoding: [0xea,0x0e]
.code16
cmovn %d14, %d15, 0

# CHECK-INST: cmovn %d14, %d15, 1
# CHECK: encoding: [0xea,0x1e]
.code16
cmovn %d14, %d15, 1

# CHECK-INST: cmovn %d14, %d15, 7
# CHECK: encoding: [0xea,0x7e]
.code16
cmovn %d14, %d15, 7

# CHECK-INST: cmovn %d15, %d15, -8
# CHECK: encoding: [0xea,0x8f]
.code16
cmovn %d15, %d15, -8

# CHECK-INST: cmovn %d15, %d15, -1
# CHECK: encoding: [0xea,0xff]
.code16
cmovn %d15, %d15, -1

# CHECK-INST: cmovn %d15, %d15, 0
# CHECK: encoding: [0xea,0x0f]
.code16
cmovn %d15, %d15, 0

# CHECK-INST: cmovn %d15, %d15, 1
# CHECK: encoding: [0xea,0x1f]
.code16
cmovn %d15, %d15, 1

# CHECK-INST: cmovn %d15, %d15, 7
# CHECK: encoding: [0xea,0x7f]
.code16
cmovn %d15, %d15, 7
