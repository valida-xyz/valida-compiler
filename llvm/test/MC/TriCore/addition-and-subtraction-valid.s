# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s \
# RUN:     | llvm-objdump -d - | FileCheck -check-prefix=CHECK-INST %s


# CHECK-INST: add %d15, %d0, %d0
# CHECK: encoding: [0x1a,0x00]
.code16
add %d15, %d0, %d0

# CHECK-INST: add %d15, %d0, %d1
# CHECK: encoding: [0x1a,0x10]
.code16
add %d15, %d0, %d1

# CHECK-INST: add %d15, %d0, %d14
# CHECK: encoding: [0x1a,0xe0]
.code16
add %d15, %d0, %d14

# CHECK-INST: add %d15, %d0, %d15
# CHECK: encoding: [0x1a,0xf0]
.code16
add %d15, %d0, %d15

# CHECK-INST: add %d15, %d1, %d0
# CHECK: encoding: [0x1a,0x01]
.code16
add %d15, %d1, %d0

# CHECK-INST: add %d15, %d1, %d1
# CHECK: encoding: [0x1a,0x11]
.code16
add %d15, %d1, %d1

# CHECK-INST: add %d15, %d1, %d14
# CHECK: encoding: [0x1a,0xe1]
.code16
add %d15, %d1, %d14

# CHECK-INST: add %d15, %d1, %d15
# CHECK: encoding: [0x1a,0xf1]
.code16
add %d15, %d1, %d15

# CHECK-INST: add %d15, %d14, %d0
# CHECK: encoding: [0x1a,0x0e]
.code16
add %d15, %d14, %d0

# CHECK-INST: add %d15, %d14, %d1
# CHECK: encoding: [0x1a,0x1e]
.code16
add %d15, %d14, %d1

# CHECK-INST: add %d15, %d14, %d14
# CHECK: encoding: [0x1a,0xee]
.code16
add %d15, %d14, %d14

# CHECK-INST: add %d15, %d14, %d15
# CHECK: encoding: [0x1a,0xfe]
.code16
add %d15, %d14, %d15

# CHECK-INST: add %d15, %d15, %d0
# CHECK: encoding: [0x1a,0x0f]
.code16
add %d15, %d15, %d0

# CHECK-INST: add %d15, %d15, %d1
# CHECK: encoding: [0x1a,0x1f]
.code16
add %d15, %d15, %d1

# CHECK-INST: add %d15, %d15, %d14
# CHECK: encoding: [0x1a,0xef]
.code16
add %d15, %d15, %d14

# CHECK-INST: add %d15, %d15, %d15
# CHECK: encoding: [0x1a,0xff]
.code16
add %d15, %d15, %d15

# CHECK-INST: add %d15, %d0, -8
# CHECK: encoding: [0x9a,0x80]
.code16
add %d15, %d0, -8

# CHECK-INST: add %d15, %d0, -1
# CHECK: encoding: [0x9a,0xf0]
.code16
add %d15, %d0, -1

# CHECK-INST: add %d15, %d0, 0
# CHECK: encoding: [0x9a,0x00]
.code16
add %d15, %d0, 0

# CHECK-INST: add %d15, %d0, 1
# CHECK: encoding: [0x9a,0x10]
.code16
add %d15, %d0, 1

# CHECK-INST: add %d15, %d0, 7
# CHECK: encoding: [0x9a,0x70]
.code16
add %d15, %d0, 7

# CHECK-INST: add %d15, %d1, -8
# CHECK: encoding: [0x9a,0x81]
.code16
add %d15, %d1, -8

# CHECK-INST: add %d15, %d1, -1
# CHECK: encoding: [0x9a,0xf1]
.code16
add %d15, %d1, -1

# CHECK-INST: add %d15, %d1, 0
# CHECK: encoding: [0x9a,0x01]
.code16
add %d15, %d1, 0

# CHECK-INST: add %d15, %d1, 1
# CHECK: encoding: [0x9a,0x11]
.code16
add %d15, %d1, 1

# CHECK-INST: add %d15, %d1, 7
# CHECK: encoding: [0x9a,0x71]
.code16
add %d15, %d1, 7

# CHECK-INST: add %d15, %d14, -8
# CHECK: encoding: [0x9a,0x8e]
.code16
add %d15, %d14, -8

# CHECK-INST: add %d15, %d14, -1
# CHECK: encoding: [0x9a,0xfe]
.code16
add %d15, %d14, -1

# CHECK-INST: add %d15, %d14, 0
# CHECK: encoding: [0x9a,0x0e]
.code16
add %d15, %d14, 0

# CHECK-INST: add %d15, %d14, 1
# CHECK: encoding: [0x9a,0x1e]
.code16
add %d15, %d14, 1

# CHECK-INST: add %d15, %d14, 7
# CHECK: encoding: [0x9a,0x7e]
.code16
add %d15, %d14, 7

# CHECK-INST: add %d15, %d15, -8
# CHECK: encoding: [0x9a,0x8f]
.code16
add %d15, %d15, -8

# CHECK-INST: add %d15, %d15, -1
# CHECK: encoding: [0x9a,0xff]
.code16
add %d15, %d15, -1

# CHECK-INST: add %d15, %d15, 0
# CHECK: encoding: [0x9a,0x0f]
.code16
add %d15, %d15, 0

# CHECK-INST: add %d15, %d15, 1
# CHECK: encoding: [0x9a,0x1f]
.code16
add %d15, %d15, 1

# CHECK-INST: add %d15, %d15, 7
# CHECK: encoding: [0x9a,0x7f]
.code16
add %d15, %d15, 7

# CHECK-INST: add %d0, %d15, %d0
# CHECK: encoding: [0x12,0x00]
.code16
add %d0, %d15, %d0

# CHECK-INST: add %d0, %d15, %d1
# CHECK: encoding: [0x12,0x10]
.code16
add %d0, %d15, %d1

# CHECK-INST: add %d0, %d15, %d14
# CHECK: encoding: [0x12,0xe0]
.code16
add %d0, %d15, %d14

# CHECK-INST: add %d0, %d15, %d15
# CHECK: encoding: [0x12,0xf0]
.code16
add %d0, %d15, %d15

# CHECK-INST: add %d1, %d15, %d0
# CHECK: encoding: [0x12,0x01]
.code16
add %d1, %d15, %d0

# CHECK-INST: add %d1, %d15, %d1
# CHECK: encoding: [0x12,0x11]
.code16
add %d1, %d15, %d1

# CHECK-INST: add %d1, %d15, %d14
# CHECK: encoding: [0x12,0xe1]
.code16
add %d1, %d15, %d14

# CHECK-INST: add %d1, %d15, %d15
# CHECK: encoding: [0x12,0xf1]
.code16
add %d1, %d15, %d15

# CHECK-INST: add %d14, %d15, %d0
# CHECK: encoding: [0x12,0x0e]
.code16
add %d14, %d15, %d0

# CHECK-INST: add %d14, %d15, %d1
# CHECK: encoding: [0x12,0x1e]
.code16
add %d14, %d15, %d1

# CHECK-INST: add %d14, %d15, %d14
# CHECK: encoding: [0x12,0xee]
.code16
add %d14, %d15, %d14

# CHECK-INST: add %d14, %d15, %d15
# CHECK: encoding: [0x12,0xfe]
.code16
add %d14, %d15, %d15

# CHECK-INST: add %d0, %d15, -8
# CHECK: encoding: [0x92,0x80]
.code16
add %d0, %d15, -8

# CHECK-INST: add %d0, %d15, -1
# CHECK: encoding: [0x92,0xf0]
.code16
add %d0, %d15, -1

# CHECK-INST: add %d0, %d15, 0
# CHECK: encoding: [0x92,0x00]
.code16
add %d0, %d15, 0

# CHECK-INST: add %d0, %d15, 1
# CHECK: encoding: [0x92,0x10]
.code16
add %d0, %d15, 1

# CHECK-INST: add %d0, %d15, 7
# CHECK: encoding: [0x92,0x70]
.code16
add %d0, %d15, 7

# CHECK-INST: add %d1, %d15, -8
# CHECK: encoding: [0x92,0x81]
.code16
add %d1, %d15, -8

# CHECK-INST: add %d1, %d15, -1
# CHECK: encoding: [0x92,0xf1]
.code16
add %d1, %d15, -1

# CHECK-INST: add %d1, %d15, 0
# CHECK: encoding: [0x92,0x01]
.code16
add %d1, %d15, 0

# CHECK-INST: add %d1, %d15, 1
# CHECK: encoding: [0x92,0x11]
.code16
add %d1, %d15, 1

# CHECK-INST: add %d1, %d15, 7
# CHECK: encoding: [0x92,0x71]
.code16
add %d1, %d15, 7

# CHECK-INST: add %d14, %d15, -8
# CHECK: encoding: [0x92,0x8e]
.code16
add %d14, %d15, -8

# CHECK-INST: add %d14, %d15, -1
# CHECK: encoding: [0x92,0xfe]
.code16
add %d14, %d15, -1

# CHECK-INST: add %d14, %d15, 0
# CHECK: encoding: [0x92,0x0e]
.code16
add %d14, %d15, 0

# CHECK-INST: add %d14, %d15, 1
# CHECK: encoding: [0x92,0x1e]
.code16
add %d14, %d15, 1

# CHECK-INST: add %d14, %d15, 7
# CHECK: encoding: [0x92,0x7e]
.code16
add %d14, %d15, 7

# CHECK-INST: add %d0, %d0
# CHECK: encoding: [0x42,0x00]
.code16
add %d0, %d0

# CHECK-INST: add %d0, %d1
# CHECK: encoding: [0x42,0x10]
.code16
add %d0, %d1

# CHECK-INST: add %d0, %d14
# CHECK: encoding: [0x42,0xe0]
.code16
add %d0, %d14

# CHECK-INST: add %d0, %d15
# CHECK: encoding: [0x42,0xf0]
.code16
add %d0, %d15

# CHECK-INST: add %d1, %d0
# CHECK: encoding: [0x42,0x01]
.code16
add %d1, %d0

# CHECK-INST: add %d1, %d1
# CHECK: encoding: [0x42,0x11]
.code16
add %d1, %d1

# CHECK-INST: add %d1, %d14
# CHECK: encoding: [0x42,0xe1]
.code16
add %d1, %d14

# CHECK-INST: add %d1, %d15
# CHECK: encoding: [0x42,0xf1]
.code16
add %d1, %d15

# CHECK-INST: add %d14, %d0
# CHECK: encoding: [0x42,0x0e]
.code16
add %d14, %d0

# CHECK-INST: add %d14, %d1
# CHECK: encoding: [0x42,0x1e]
.code16
add %d14, %d1

# CHECK-INST: add %d14, %d14
# CHECK: encoding: [0x42,0xee]
.code16
add %d14, %d14

# CHECK-INST: add %d14, %d15
# CHECK: encoding: [0x42,0xfe]
.code16
add %d14, %d15

# CHECK-INST: add %d15, %d0
# CHECK: encoding: [0x42,0x0f]
.code16
add %d15, %d0

# CHECK-INST: add %d15, %d1
# CHECK: encoding: [0x42,0x1f]
.code16
add %d15, %d1

# CHECK-INST: add %d15, %d14
# CHECK: encoding: [0x42,0xef]
.code16
add %d15, %d14

# CHECK-INST: add %d15, %d15
# CHECK: encoding: [0x42,0xff]
.code16
add %d15, %d15

# CHECK-INST: add %d0, -8
# CHECK: encoding: [0xc2,0x80]
.code16
add %d0, -8

# CHECK-INST: add %d0, -1
# CHECK: encoding: [0xc2,0xf0]
.code16
add %d0, -1

# CHECK-INST: add %d0, 0
# CHECK: encoding: [0xc2,0x00]
.code16
add %d0, 0

# CHECK-INST: add %d0, 1
# CHECK: encoding: [0xc2,0x10]
.code16
add %d0, 1

# CHECK-INST: add %d0, 7
# CHECK: encoding: [0xc2,0x70]
.code16
add %d0, 7

# CHECK-INST: add %d1, -8
# CHECK: encoding: [0xc2,0x81]
.code16
add %d1, -8

# CHECK-INST: add %d1, -1
# CHECK: encoding: [0xc2,0xf1]
.code16
add %d1, -1

# CHECK-INST: add %d1, 0
# CHECK: encoding: [0xc2,0x01]
.code16
add %d1, 0

# CHECK-INST: add %d1, 1
# CHECK: encoding: [0xc2,0x11]
.code16
add %d1, 1

# CHECK-INST: add %d1, 7
# CHECK: encoding: [0xc2,0x71]
.code16
add %d1, 7

# CHECK-INST: add %d14, -8
# CHECK: encoding: [0xc2,0x8e]
.code16
add %d14, -8

# CHECK-INST: add %d14, -1
# CHECK: encoding: [0xc2,0xfe]
.code16
add %d14, -1

# CHECK-INST: add %d14, 0
# CHECK: encoding: [0xc2,0x0e]
.code16
add %d14, 0

# CHECK-INST: add %d14, 1
# CHECK: encoding: [0xc2,0x1e]
.code16
add %d14, 1

# CHECK-INST: add %d14, 7
# CHECK: encoding: [0xc2,0x7e]
.code16
add %d14, 7

# CHECK-INST: add %d15, -8
# CHECK: encoding: [0xc2,0x8f]
.code16
add %d15, -8

# CHECK-INST: add %d15, -1
# CHECK: encoding: [0xc2,0xff]
.code16
add %d15, -1

# CHECK-INST: add %d15, 0
# CHECK: encoding: [0xc2,0x0f]
.code16
add %d15, 0

# CHECK-INST: add %d15, 1
# CHECK: encoding: [0xc2,0x1f]
.code16
add %d15, 1

# CHECK-INST: add %d15, 7
# CHECK: encoding: [0xc2,0x7f]
.code16
add %d15, 7

# CHECK-INST: add %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x00]
.code32
add %d0, %d0, %d0

# CHECK-INST: add %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x00]
.code32
add %d0, %d0, %d1

# CHECK-INST: add %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x00]
.code32
add %d0, %d0, %d14

# CHECK-INST: add %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x00]
.code32
add %d0, %d0, %d15

# CHECK-INST: add %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0x00]
.code32
add %d0, %d1, %d0

# CHECK-INST: add %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0x00]
.code32
add %d0, %d1, %d1

# CHECK-INST: add %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0x00]
.code32
add %d0, %d1, %d14

# CHECK-INST: add %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0x00]
.code32
add %d0, %d1, %d15

# CHECK-INST: add %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0x00]
.code32
add %d0, %d14, %d0

# CHECK-INST: add %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0x00]
.code32
add %d0, %d14, %d1

# CHECK-INST: add %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0x00]
.code32
add %d0, %d14, %d14

# CHECK-INST: add %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0x00]
.code32
add %d0, %d14, %d15

# CHECK-INST: add %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x10]
.code32
add %d1, %d0, %d0

# CHECK-INST: add %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x10]
.code32
add %d1, %d0, %d1

# CHECK-INST: add %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x10]
.code32
add %d1, %d0, %d14

# CHECK-INST: add %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x10]
.code32
add %d1, %d0, %d15

# CHECK-INST: add %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0x10]
.code32
add %d1, %d1, %d0

# CHECK-INST: add %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0x10]
.code32
add %d1, %d1, %d1

# CHECK-INST: add %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0x10]
.code32
add %d1, %d1, %d14

# CHECK-INST: add %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0x10]
.code32
add %d1, %d1, %d15

# CHECK-INST: add %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0x10]
.code32
add %d1, %d14, %d0

# CHECK-INST: add %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0x10]
.code32
add %d1, %d14, %d1

# CHECK-INST: add %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0x10]
.code32
add %d1, %d14, %d14

# CHECK-INST: add %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0x10]
.code32
add %d1, %d14, %d15

# CHECK-INST: add %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0xe0]
.code32
add %d14, %d0, %d0

# CHECK-INST: add %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0xe0]
.code32
add %d14, %d0, %d1

# CHECK-INST: add %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0xe0]
.code32
add %d14, %d0, %d14

# CHECK-INST: add %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0xe0]
.code32
add %d14, %d0, %d15

# CHECK-INST: add %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0xe0]
.code32
add %d14, %d1, %d0

# CHECK-INST: add %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0xe0]
.code32
add %d14, %d1, %d1

# CHECK-INST: add %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0xe0]
.code32
add %d14, %d1, %d14

# CHECK-INST: add %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0xe0]
.code32
add %d14, %d1, %d15

# CHECK-INST: add %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0xe0]
.code32
add %d14, %d14, %d0

# CHECK-INST: add %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0xe0]
.code32
add %d14, %d14, %d1

# CHECK-INST: add %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0xe0]
.code32
add %d14, %d14, %d14

# CHECK-INST: add %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x00]
.code32
add %d0, %d0, -256

# CHECK-INST: add %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0x00]
.code32
add %d0, %d0, -129

# CHECK-INST: add %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0x00]
.code32
add %d0, %d0, -1

# CHECK-INST: add %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0x00]
.code32
add %d0, %d0, 0

# CHECK-INST: add %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0x00]
.code32
add %d0, %d0, 1

# CHECK-INST: add %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0x00]
.code32
add %d0, %d0, 128

# CHECK-INST: add %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0x00]
.code32
add %d0, %d0, 255

# CHECK-INST: add %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0x00]
.code32
add %d0, %d1, -256

# CHECK-INST: add %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0x00]
.code32
add %d0, %d1, -129

# CHECK-INST: add %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0x00]
.code32
add %d0, %d1, -1

# CHECK-INST: add %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0x00]
.code32
add %d0, %d1, 0

# CHECK-INST: add %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0x00]
.code32
add %d0, %d1, 1

# CHECK-INST: add %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0x00]
.code32
add %d0, %d1, 128

# CHECK-INST: add %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0x00]
.code32
add %d0, %d1, 255

# CHECK-INST: add %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0x00]
.code32
add %d0, %d14, -256

# CHECK-INST: add %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0x00]
.code32
add %d0, %d14, -129

# CHECK-INST: add %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0x00]
.code32
add %d0, %d14, -1

# CHECK-INST: add %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0x00]
.code32
add %d0, %d14, 0

# CHECK-INST: add %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0x00]
.code32
add %d0, %d14, 1

# CHECK-INST: add %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0x00]
.code32
add %d0, %d14, 128

# CHECK-INST: add %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0x00]
.code32
add %d0, %d14, 255

# CHECK-INST: add %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x10]
.code32
add %d1, %d0, -256

# CHECK-INST: add %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0x10]
.code32
add %d1, %d0, -129

# CHECK-INST: add %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0x10]
.code32
add %d1, %d0, -1

# CHECK-INST: add %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0x10]
.code32
add %d1, %d0, 0

# CHECK-INST: add %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0x10]
.code32
add %d1, %d0, 1

# CHECK-INST: add %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0x10]
.code32
add %d1, %d0, 128

# CHECK-INST: add %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0x10]
.code32
add %d1, %d0, 255

# CHECK-INST: add %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0x10]
.code32
add %d1, %d1, -256

# CHECK-INST: add %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0x10]
.code32
add %d1, %d1, -129

# CHECK-INST: add %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0x10]
.code32
add %d1, %d1, -1

# CHECK-INST: add %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0x10]
.code32
add %d1, %d1, 0

# CHECK-INST: add %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0x10]
.code32
add %d1, %d1, 1

# CHECK-INST: add %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0x10]
.code32
add %d1, %d1, 128

# CHECK-INST: add %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0x10]
.code32
add %d1, %d1, 255

# CHECK-INST: add %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0x10]
.code32
add %d1, %d14, -256

# CHECK-INST: add %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0x10]
.code32
add %d1, %d14, -129

# CHECK-INST: add %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0x10]
.code32
add %d1, %d14, -1

# CHECK-INST: add %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0x10]
.code32
add %d1, %d14, 0

# CHECK-INST: add %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0x10]
.code32
add %d1, %d14, 1

# CHECK-INST: add %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0x10]
.code32
add %d1, %d14, 128

# CHECK-INST: add %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0x10]
.code32
add %d1, %d14, 255

# CHECK-INST: add %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0xe0]
.code32
add %d14, %d0, -256

# CHECK-INST: add %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0xe0]
.code32
add %d14, %d0, -129

# CHECK-INST: add %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0xe0]
.code32
add %d14, %d0, -1

# CHECK-INST: add %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0xe0]
.code32
add %d14, %d0, 0

# CHECK-INST: add %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0xe0]
.code32
add %d14, %d0, 1

# CHECK-INST: add %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0xe0]
.code32
add %d14, %d0, 128

# CHECK-INST: add %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0xe0]
.code32
add %d14, %d0, 255

# CHECK-INST: add %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0xe0]
.code32
add %d14, %d1, -256

# CHECK-INST: add %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0xe0]
.code32
add %d14, %d1, -129

# CHECK-INST: add %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0xe0]
.code32
add %d14, %d1, -1

# CHECK-INST: add %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0xe0]
.code32
add %d14, %d1, 0

# CHECK-INST: add %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0xe0]
.code32
add %d14, %d1, 1

# CHECK-INST: add %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0xe0]
.code32
add %d14, %d1, 128

# CHECK-INST: add %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0xe0]
.code32
add %d14, %d1, 255

# CHECK-INST: add %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0xe0]
.code32
add %d14, %d14, -256

# CHECK-INST: add %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0xe0]
.code32
add %d14, %d14, -129

# CHECK-INST: add %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0xe0]
.code32
add %d14, %d14, -1

# CHECK-INST: add %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0xe0]
.code32
add %d14, %d14, 0

# CHECK-INST: add %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0xe0]
.code32
add %d14, %d14, 1

# CHECK-INST: add %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0xe0]
.code32
add %d14, %d14, 128

# CHECK-INST: add %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0xe0]
.code32
add %d14, %d14, 255

# CHECK-INST: addc %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x50,0x00]
.code32
addc %d0, %d0, %d0

# CHECK-INST: addc %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x50,0x00]
.code32
addc %d0, %d0, %d1

# CHECK-INST: addc %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x50,0x00]
.code32
addc %d0, %d0, %d14

# CHECK-INST: addc %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x50,0x00]
.code32
addc %d0, %d0, %d15

# CHECK-INST: addc %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x50,0x00]
.code32
addc %d0, %d1, %d0

# CHECK-INST: addc %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x50,0x00]
.code32
addc %d0, %d1, %d1

# CHECK-INST: addc %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x50,0x00]
.code32
addc %d0, %d1, %d14

# CHECK-INST: addc %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x50,0x00]
.code32
addc %d0, %d1, %d15

# CHECK-INST: addc %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x50,0x00]
.code32
addc %d0, %d14, %d0

# CHECK-INST: addc %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x50,0x00]
.code32
addc %d0, %d14, %d1

# CHECK-INST: addc %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x50,0x00]
.code32
addc %d0, %d14, %d14

# CHECK-INST: addc %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x50,0x00]
.code32
addc %d0, %d14, %d15

# CHECK-INST: addc %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x50,0x00]
.code32
addc %d0, %d15, %d0

# CHECK-INST: addc %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x50,0x00]
.code32
addc %d0, %d15, %d1

# CHECK-INST: addc %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x50,0x00]
.code32
addc %d0, %d15, %d14

# CHECK-INST: addc %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x50,0x00]
.code32
addc %d0, %d15, %d15

# CHECK-INST: addc %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x50,0x10]
.code32
addc %d1, %d0, %d0

# CHECK-INST: addc %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x50,0x10]
.code32
addc %d1, %d0, %d1

# CHECK-INST: addc %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x50,0x10]
.code32
addc %d1, %d0, %d14

# CHECK-INST: addc %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x50,0x10]
.code32
addc %d1, %d0, %d15

# CHECK-INST: addc %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x50,0x10]
.code32
addc %d1, %d1, %d0

# CHECK-INST: addc %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x50,0x10]
.code32
addc %d1, %d1, %d1

# CHECK-INST: addc %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x50,0x10]
.code32
addc %d1, %d1, %d14

# CHECK-INST: addc %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x50,0x10]
.code32
addc %d1, %d1, %d15

# CHECK-INST: addc %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x50,0x10]
.code32
addc %d1, %d14, %d0

# CHECK-INST: addc %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x50,0x10]
.code32
addc %d1, %d14, %d1

# CHECK-INST: addc %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x50,0x10]
.code32
addc %d1, %d14, %d14

# CHECK-INST: addc %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x50,0x10]
.code32
addc %d1, %d14, %d15

# CHECK-INST: addc %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x50,0x10]
.code32
addc %d1, %d15, %d0

# CHECK-INST: addc %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x50,0x10]
.code32
addc %d1, %d15, %d1

# CHECK-INST: addc %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x50,0x10]
.code32
addc %d1, %d15, %d14

# CHECK-INST: addc %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x50,0x10]
.code32
addc %d1, %d15, %d15

# CHECK-INST: addc %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x50,0xe0]
.code32
addc %d14, %d0, %d0

# CHECK-INST: addc %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x50,0xe0]
.code32
addc %d14, %d0, %d1

# CHECK-INST: addc %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x50,0xe0]
.code32
addc %d14, %d0, %d14

# CHECK-INST: addc %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x50,0xe0]
.code32
addc %d14, %d0, %d15

# CHECK-INST: addc %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x50,0xe0]
.code32
addc %d14, %d1, %d0

# CHECK-INST: addc %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x50,0xe0]
.code32
addc %d14, %d1, %d1

# CHECK-INST: addc %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x50,0xe0]
.code32
addc %d14, %d1, %d14

# CHECK-INST: addc %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x50,0xe0]
.code32
addc %d14, %d1, %d15

# CHECK-INST: addc %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x50,0xe0]
.code32
addc %d14, %d14, %d0

# CHECK-INST: addc %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x50,0xe0]
.code32
addc %d14, %d14, %d1

# CHECK-INST: addc %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x50,0xe0]
.code32
addc %d14, %d14, %d14

# CHECK-INST: addc %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x50,0xe0]
.code32
addc %d14, %d14, %d15

# CHECK-INST: addc %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x50,0xe0]
.code32
addc %d14, %d15, %d0

# CHECK-INST: addc %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x50,0xe0]
.code32
addc %d14, %d15, %d1

# CHECK-INST: addc %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x50,0xe0]
.code32
addc %d14, %d15, %d14

# CHECK-INST: addc %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x50,0xe0]
.code32
addc %d14, %d15, %d15

# CHECK-INST: addc %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x50,0xf0]
.code32
addc %d15, %d0, %d0

# CHECK-INST: addc %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x50,0xf0]
.code32
addc %d15, %d0, %d1

# CHECK-INST: addc %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x50,0xf0]
.code32
addc %d15, %d0, %d14

# CHECK-INST: addc %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x50,0xf0]
.code32
addc %d15, %d0, %d15

# CHECK-INST: addc %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x50,0xf0]
.code32
addc %d15, %d1, %d0

# CHECK-INST: addc %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x50,0xf0]
.code32
addc %d15, %d1, %d1

# CHECK-INST: addc %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x50,0xf0]
.code32
addc %d15, %d1, %d14

# CHECK-INST: addc %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x50,0xf0]
.code32
addc %d15, %d1, %d15

# CHECK-INST: addc %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x50,0xf0]
.code32
addc %d15, %d14, %d0

# CHECK-INST: addc %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x50,0xf0]
.code32
addc %d15, %d14, %d1

# CHECK-INST: addc %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x50,0xf0]
.code32
addc %d15, %d14, %d14

# CHECK-INST: addc %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x50,0xf0]
.code32
addc %d15, %d14, %d15

# CHECK-INST: addc %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x50,0xf0]
.code32
addc %d15, %d15, %d0

# CHECK-INST: addc %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x50,0xf0]
.code32
addc %d15, %d15, %d1

# CHECK-INST: addc %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x50,0xf0]
.code32
addc %d15, %d15, %d14

# CHECK-INST: addc %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x50,0xf0]
.code32
addc %d15, %d15, %d15
 
# CHECK-INST: addc %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xb0,0x00]
.code32
addc %d0, %d0, -256

# CHECK-INST: addc %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xb7,0x00]
.code32
addc %d0, %d0, -129

# CHECK-INST: addc %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xbf,0x00]
.code32
addc %d0, %d0, -1

# CHECK-INST: addc %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xa0,0x00]
.code32
addc %d0, %d0, 0

# CHECK-INST: addc %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xa0,0x00]
.code32
addc %d0, %d0, 1

# CHECK-INST: addc %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xa8,0x00]
.code32
addc %d0, %d0, 128

# CHECK-INST: addc %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xaf,0x00]
.code32
addc %d0, %d0, 255

# CHECK-INST: addc %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xb0,0x00]
.code32
addc %d0, %d1, -256

# CHECK-INST: addc %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xb7,0x00]
.code32
addc %d0, %d1, -129

# CHECK-INST: addc %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xbf,0x00]
.code32
addc %d0, %d1, -1

# CHECK-INST: addc %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xa0,0x00]
.code32
addc %d0, %d1, 0

# CHECK-INST: addc %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xa0,0x00]
.code32
addc %d0, %d1, 1

# CHECK-INST: addc %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xa8,0x00]
.code32
addc %d0, %d1, 128

# CHECK-INST: addc %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xaf,0x00]
.code32
addc %d0, %d1, 255

# CHECK-INST: addc %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xb0,0x00]
.code32
addc %d0, %d14, -256

# CHECK-INST: addc %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xb7,0x00]
.code32
addc %d0, %d14, -129

# CHECK-INST: addc %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xbf,0x00]
.code32
addc %d0, %d14, -1

# CHECK-INST: addc %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xa0,0x00]
.code32
addc %d0, %d14, 0

# CHECK-INST: addc %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xa0,0x00]
.code32
addc %d0, %d14, 1

# CHECK-INST: addc %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xa8,0x00]
.code32
addc %d0, %d14, 128

# CHECK-INST: addc %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xaf,0x00]
.code32
addc %d0, %d14, 255

# CHECK-INST: addc %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xb0,0x00]
.code32
addc %d0, %d15, -256

# CHECK-INST: addc %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xb7,0x00]
.code32
addc %d0, %d15, -129

# CHECK-INST: addc %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xbf,0x00]
.code32
addc %d0, %d15, -1

# CHECK-INST: addc %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xa0,0x00]
.code32
addc %d0, %d15, 0

# CHECK-INST: addc %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xa0,0x00]
.code32
addc %d0, %d15, 1

# CHECK-INST: addc %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xa8,0x00]
.code32
addc %d0, %d15, 128

# CHECK-INST: addc %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xaf,0x00]
.code32
addc %d0, %d15, 255

# CHECK-INST: addc %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xb0,0x10]
.code32
addc %d1, %d0, -256

# CHECK-INST: addc %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xb7,0x10]
.code32
addc %d1, %d0, -129

# CHECK-INST: addc %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xbf,0x10]
.code32
addc %d1, %d0, -1

# CHECK-INST: addc %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xa0,0x10]
.code32
addc %d1, %d0, 0

# CHECK-INST: addc %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xa0,0x10]
.code32
addc %d1, %d0, 1

# CHECK-INST: addc %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xa8,0x10]
.code32
addc %d1, %d0, 128

# CHECK-INST: addc %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xaf,0x10]
.code32
addc %d1, %d0, 255

# CHECK-INST: addc %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xb0,0x10]
.code32
addc %d1, %d1, -256

# CHECK-INST: addc %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xb7,0x10]
.code32
addc %d1, %d1, -129

# CHECK-INST: addc %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xbf,0x10]
.code32
addc %d1, %d1, -1

# CHECK-INST: addc %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xa0,0x10]
.code32
addc %d1, %d1, 0

# CHECK-INST: addc %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xa0,0x10]
.code32
addc %d1, %d1, 1

# CHECK-INST: addc %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xa8,0x10]
.code32
addc %d1, %d1, 128

# CHECK-INST: addc %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xaf,0x10]
.code32
addc %d1, %d1, 255

# CHECK-INST: addc %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xb0,0x10]
.code32
addc %d1, %d14, -256

# CHECK-INST: addc %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xb7,0x10]
.code32
addc %d1, %d14, -129

# CHECK-INST: addc %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xbf,0x10]
.code32
addc %d1, %d14, -1

# CHECK-INST: addc %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xa0,0x10]
.code32
addc %d1, %d14, 0

# CHECK-INST: addc %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xa0,0x10]
.code32
addc %d1, %d14, 1

# CHECK-INST: addc %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xa8,0x10]
.code32
addc %d1, %d14, 128

# CHECK-INST: addc %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xaf,0x10]
.code32
addc %d1, %d14, 255

# CHECK-INST: addc %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xb0,0x10]
.code32
addc %d1, %d15, -256

# CHECK-INST: addc %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xb7,0x10]
.code32
addc %d1, %d15, -129

# CHECK-INST: addc %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xbf,0x10]
.code32
addc %d1, %d15, -1

# CHECK-INST: addc %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xa0,0x10]
.code32
addc %d1, %d15, 0

# CHECK-INST: addc %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xa0,0x10]
.code32
addc %d1, %d15, 1

# CHECK-INST: addc %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xa8,0x10]
.code32
addc %d1, %d15, 128

# CHECK-INST: addc %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xaf,0x10]
.code32
addc %d1, %d15, 255

# CHECK-INST: addc %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xb0,0xe0]
.code32
addc %d14, %d0, -256

# CHECK-INST: addc %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xb7,0xe0]
.code32
addc %d14, %d0, -129

# CHECK-INST: addc %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xbf,0xe0]
.code32
addc %d14, %d0, -1

# CHECK-INST: addc %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xa0,0xe0]
.code32
addc %d14, %d0, 0

# CHECK-INST: addc %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xa0,0xe0]
.code32
addc %d14, %d0, 1

# CHECK-INST: addc %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xa8,0xe0]
.code32
addc %d14, %d0, 128

# CHECK-INST: addc %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xaf,0xe0]
.code32
addc %d14, %d0, 255

# CHECK-INST: addc %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xb0,0xe0]
.code32
addc %d14, %d1, -256

# CHECK-INST: addc %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xb7,0xe0]
.code32
addc %d14, %d1, -129

# CHECK-INST: addc %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xbf,0xe0]
.code32
addc %d14, %d1, -1

# CHECK-INST: addc %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xa0,0xe0]
.code32
addc %d14, %d1, 0

# CHECK-INST: addc %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xa0,0xe0]
.code32
addc %d14, %d1, 1

# CHECK-INST: addc %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xa8,0xe0]
.code32
addc %d14, %d1, 128

# CHECK-INST: addc %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xaf,0xe0]
.code32
addc %d14, %d1, 255

# CHECK-INST: addc %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xb0,0xe0]
.code32
addc %d14, %d14, -256

# CHECK-INST: addc %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xb7,0xe0]
.code32
addc %d14, %d14, -129

# CHECK-INST: addc %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xbf,0xe0]
.code32
addc %d14, %d14, -1

# CHECK-INST: addc %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xa0,0xe0]
.code32
addc %d14, %d14, 0

# CHECK-INST: addc %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xa0,0xe0]
.code32
addc %d14, %d14, 1

# CHECK-INST: addc %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xa8,0xe0]
.code32
addc %d14, %d14, 128

# CHECK-INST: addc %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xaf,0xe0]
.code32
addc %d14, %d14, 255

# CHECK-INST: addc %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xb0,0xe0]
.code32
addc %d14, %d15, -256

# CHECK-INST: addc %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xb7,0xe0]
.code32
addc %d14, %d15, -129

# CHECK-INST: addc %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xbf,0xe0]
.code32
addc %d14, %d15, -1

# CHECK-INST: addc %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xa0,0xe0]
.code32
addc %d14, %d15, 0

# CHECK-INST: addc %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xa0,0xe0]
.code32
addc %d14, %d15, 1

# CHECK-INST: addc %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xa8,0xe0]
.code32
addc %d14, %d15, 128

# CHECK-INST: addc %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xaf,0xe0]
.code32
addc %d14, %d15, 255

# CHECK-INST: addc %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xb0,0xf0]
.code32
addc %d15, %d0, -256

# CHECK-INST: addc %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xb7,0xf0]
.code32
addc %d15, %d0, -129

# CHECK-INST: addc %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xbf,0xf0]
.code32
addc %d15, %d0, -1

# CHECK-INST: addc %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xa0,0xf0]
.code32
addc %d15, %d0, 0

# CHECK-INST: addc %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xa0,0xf0]
.code32
addc %d15, %d0, 1

# CHECK-INST: addc %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xa8,0xf0]
.code32
addc %d15, %d0, 128

# CHECK-INST: addc %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xaf,0xf0]
.code32
addc %d15, %d0, 255

# CHECK-INST: addc %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xb0,0xf0]
.code32
addc %d15, %d1, -256

# CHECK-INST: addc %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xb7,0xf0]
.code32
addc %d15, %d1, -129

# CHECK-INST: addc %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xbf,0xf0]
.code32
addc %d15, %d1, -1

# CHECK-INST: addc %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xa0,0xf0]
.code32
addc %d15, %d1, 0

# CHECK-INST: addc %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xa0,0xf0]
.code32
addc %d15, %d1, 1

# CHECK-INST: addc %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xa8,0xf0]
.code32
addc %d15, %d1, 128

# CHECK-INST: addc %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xaf,0xf0]
.code32
addc %d15, %d1, 255

# CHECK-INST: addc %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xb0,0xf0]
.code32
addc %d15, %d14, -256

# CHECK-INST: addc %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xb7,0xf0]
.code32
addc %d15, %d14, -129

# CHECK-INST: addc %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xbf,0xf0]
.code32
addc %d15, %d14, -1

# CHECK-INST: addc %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xa0,0xf0]
.code32
addc %d15, %d14, 0

# CHECK-INST: addc %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xa0,0xf0]
.code32
addc %d15, %d14, 1

# CHECK-INST: addc %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xa8,0xf0]
.code32
addc %d15, %d14, 128

# CHECK-INST: addc %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xaf,0xf0]
.code32
addc %d15, %d14, 255

# CHECK-INST: addc %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xb0,0xf0]
.code32
addc %d15, %d15, -256

# CHECK-INST: addc %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xb7,0xf0]
.code32
addc %d15, %d15, -129

# CHECK-INST: addc %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xbf,0xf0]
.code32
addc %d15, %d15, -1

# CHECK-INST: addc %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xa0,0xf0]
.code32
addc %d15, %d15, 0

# CHECK-INST: addc %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xa0,0xf0]
.code32
addc %d15, %d15, 1

# CHECK-INST: addc %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xa8,0xf0]
.code32
addc %d15, %d15, 128

# CHECK-INST: addc %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xaf,0xf0]
.code32
addc %d15, %d15, 255
 
 
# CHECK-INST: addi %d0, %d0, -32768
# CHECK: encoding: [0x1b,0x00,0x00,0x08]
.code32
addi %d0, %d0, -32768

# CHECK-INST: addi %d0, %d0, -1
# CHECK: encoding: [0x1b,0xf0,0xff,0x0f]
.code32
addi %d0, %d0, -1

# CHECK-INST: addi %d0, %d0, 0
# CHECK: encoding: [0x1b,0x00,0x00,0x00]
.code32
addi %d0, %d0, 0

# CHECK-INST: addi %d0, %d0, 1
# CHECK: encoding: [0x1b,0x10,0x00,0x00]
.code32
addi %d0, %d0, 1

# CHECK-INST: addi %d0, %d0, 32767
# CHECK: encoding: [0x1b,0xf0,0xff,0x07]
.code32
addi %d0, %d0, 32767

# CHECK-INST: addi %d0, %d1, -32768
# CHECK: encoding: [0x1b,0x01,0x00,0x08]
.code32
addi %d0, %d1, -32768

# CHECK-INST: addi %d0, %d1, -1
# CHECK: encoding: [0x1b,0xf1,0xff,0x0f]
.code32
addi %d0, %d1, -1

# CHECK-INST: addi %d0, %d1, 0
# CHECK: encoding: [0x1b,0x01,0x00,0x00]
.code32
addi %d0, %d1, 0

# CHECK-INST: addi %d0, %d1, 1
# CHECK: encoding: [0x1b,0x11,0x00,0x00]
.code32
addi %d0, %d1, 1

# CHECK-INST: addi %d0, %d1, 32767
# CHECK: encoding: [0x1b,0xf1,0xff,0x07]
.code32
addi %d0, %d1, 32767

# CHECK-INST: addi %d0, %d14, -32768
# CHECK: encoding: [0x1b,0x0e,0x00,0x08]
.code32
addi %d0, %d14, -32768

# CHECK-INST: addi %d0, %d14, -1
# CHECK: encoding: [0x1b,0xfe,0xff,0x0f]
.code32
addi %d0, %d14, -1

# CHECK-INST: addi %d0, %d14, 0
# CHECK: encoding: [0x1b,0x0e,0x00,0x00]
.code32
addi %d0, %d14, 0

# CHECK-INST: addi %d0, %d14, 1
# CHECK: encoding: [0x1b,0x1e,0x00,0x00]
.code32
addi %d0, %d14, 1

# CHECK-INST: addi %d0, %d14, 32767
# CHECK: encoding: [0x1b,0xfe,0xff,0x07]
.code32
addi %d0, %d14, 32767

# CHECK-INST: addi %d0, %d15, -32768
# CHECK: encoding: [0x1b,0x0f,0x00,0x08]
.code32
addi %d0, %d15, -32768

# CHECK-INST: addi %d0, %d15, -1
# CHECK: encoding: [0x1b,0xff,0xff,0x0f]
.code32
addi %d0, %d15, -1

# CHECK-INST: addi %d0, %d15, 0
# CHECK: encoding: [0x1b,0x0f,0x00,0x00]
.code32
addi %d0, %d15, 0

# CHECK-INST: addi %d0, %d15, 1
# CHECK: encoding: [0x1b,0x1f,0x00,0x00]
.code32
addi %d0, %d15, 1

# CHECK-INST: addi %d0, %d15, 32767
# CHECK: encoding: [0x1b,0xff,0xff,0x07]
.code32
addi %d0, %d15, 32767

# CHECK-INST: addi %d1, %d0, -32768
# CHECK: encoding: [0x1b,0x00,0x00,0x18]
.code32
addi %d1, %d0, -32768

# CHECK-INST: addi %d1, %d0, -1
# CHECK: encoding: [0x1b,0xf0,0xff,0x1f]
.code32
addi %d1, %d0, -1

# CHECK-INST: addi %d1, %d0, 0
# CHECK: encoding: [0x1b,0x00,0x00,0x10]
.code32
addi %d1, %d0, 0

# CHECK-INST: addi %d1, %d0, 1
# CHECK: encoding: [0x1b,0x10,0x00,0x10]
.code32
addi %d1, %d0, 1

# CHECK-INST: addi %d1, %d0, 32767
# CHECK: encoding: [0x1b,0xf0,0xff,0x17]
.code32
addi %d1, %d0, 32767

# CHECK-INST: addi %d1, %d1, -32768
# CHECK: encoding: [0x1b,0x01,0x00,0x18]
.code32
addi %d1, %d1, -32768

# CHECK-INST: addi %d1, %d1, -1
# CHECK: encoding: [0x1b,0xf1,0xff,0x1f]
.code32
addi %d1, %d1, -1

# CHECK-INST: addi %d1, %d1, 0
# CHECK: encoding: [0x1b,0x01,0x00,0x10]
.code32
addi %d1, %d1, 0

# CHECK-INST: addi %d1, %d1, 1
# CHECK: encoding: [0x1b,0x11,0x00,0x10]
.code32
addi %d1, %d1, 1

# CHECK-INST: addi %d1, %d1, 32767
# CHECK: encoding: [0x1b,0xf1,0xff,0x17]
.code32
addi %d1, %d1, 32767

# CHECK-INST: addi %d1, %d14, -32768
# CHECK: encoding: [0x1b,0x0e,0x00,0x18]
.code32
addi %d1, %d14, -32768

# CHECK-INST: addi %d1, %d14, -1
# CHECK: encoding: [0x1b,0xfe,0xff,0x1f]
.code32
addi %d1, %d14, -1

# CHECK-INST: addi %d1, %d14, 0
# CHECK: encoding: [0x1b,0x0e,0x00,0x10]
.code32
addi %d1, %d14, 0

# CHECK-INST: addi %d1, %d14, 1
# CHECK: encoding: [0x1b,0x1e,0x00,0x10]
.code32
addi %d1, %d14, 1

# CHECK-INST: addi %d1, %d14, 32767
# CHECK: encoding: [0x1b,0xfe,0xff,0x17]
.code32
addi %d1, %d14, 32767

# CHECK-INST: addi %d1, %d15, -32768
# CHECK: encoding: [0x1b,0x0f,0x00,0x18]
.code32
addi %d1, %d15, -32768

# CHECK-INST: addi %d1, %d15, -1
# CHECK: encoding: [0x1b,0xff,0xff,0x1f]
.code32
addi %d1, %d15, -1

# CHECK-INST: addi %d1, %d15, 0
# CHECK: encoding: [0x1b,0x0f,0x00,0x10]
.code32
addi %d1, %d15, 0

# CHECK-INST: addi %d1, %d15, 1
# CHECK: encoding: [0x1b,0x1f,0x00,0x10]
.code32
addi %d1, %d15, 1

# CHECK-INST: addi %d1, %d15, 32767
# CHECK: encoding: [0x1b,0xff,0xff,0x17]
.code32
addi %d1, %d15, 32767

# CHECK-INST: addi %d14, %d0, -32768
# CHECK: encoding: [0x1b,0x00,0x00,0xe8]
.code32
addi %d14, %d0, -32768

# CHECK-INST: addi %d14, %d0, -1
# CHECK: encoding: [0x1b,0xf0,0xff,0xef]
.code32
addi %d14, %d0, -1

# CHECK-INST: addi %d14, %d0, 0
# CHECK: encoding: [0x1b,0x00,0x00,0xe0]
.code32
addi %d14, %d0, 0

# CHECK-INST: addi %d14, %d0, 1
# CHECK: encoding: [0x1b,0x10,0x00,0xe0]
.code32
addi %d14, %d0, 1

# CHECK-INST: addi %d14, %d0, 32767
# CHECK: encoding: [0x1b,0xf0,0xff,0xe7]
.code32
addi %d14, %d0, 32767

# CHECK-INST: addi %d14, %d1, -32768
# CHECK: encoding: [0x1b,0x01,0x00,0xe8]
.code32
addi %d14, %d1, -32768

# CHECK-INST: addi %d14, %d1, -1
# CHECK: encoding: [0x1b,0xf1,0xff,0xef]
.code32
addi %d14, %d1, -1

# CHECK-INST: addi %d14, %d1, 0
# CHECK: encoding: [0x1b,0x01,0x00,0xe0]
.code32
addi %d14, %d1, 0

# CHECK-INST: addi %d14, %d1, 1
# CHECK: encoding: [0x1b,0x11,0x00,0xe0]
.code32
addi %d14, %d1, 1

# CHECK-INST: addi %d14, %d1, 32767
# CHECK: encoding: [0x1b,0xf1,0xff,0xe7]
.code32
addi %d14, %d1, 32767

# CHECK-INST: addi %d14, %d14, -32768
# CHECK: encoding: [0x1b,0x0e,0x00,0xe8]
.code32
addi %d14, %d14, -32768

# CHECK-INST: addi %d14, %d14, -1
# CHECK: encoding: [0x1b,0xfe,0xff,0xef]
.code32
addi %d14, %d14, -1

# CHECK-INST: addi %d14, %d14, 0
# CHECK: encoding: [0x1b,0x0e,0x00,0xe0]
.code32
addi %d14, %d14, 0

# CHECK-INST: addi %d14, %d14, 1
# CHECK: encoding: [0x1b,0x1e,0x00,0xe0]
.code32
addi %d14, %d14, 1

# CHECK-INST: addi %d14, %d14, 32767
# CHECK: encoding: [0x1b,0xfe,0xff,0xe7]
.code32
addi %d14, %d14, 32767

# CHECK-INST: addi %d14, %d15, -32768
# CHECK: encoding: [0x1b,0x0f,0x00,0xe8]
.code32
addi %d14, %d15, -32768

# CHECK-INST: addi %d14, %d15, -1
# CHECK: encoding: [0x1b,0xff,0xff,0xef]
.code32
addi %d14, %d15, -1

# CHECK-INST: addi %d14, %d15, 0
# CHECK: encoding: [0x1b,0x0f,0x00,0xe0]
.code32
addi %d14, %d15, 0

# CHECK-INST: addi %d14, %d15, 1
# CHECK: encoding: [0x1b,0x1f,0x00,0xe0]
.code32
addi %d14, %d15, 1

# CHECK-INST: addi %d14, %d15, 32767
# CHECK: encoding: [0x1b,0xff,0xff,0xe7]
.code32
addi %d14, %d15, 32767

# CHECK-INST: addi %d15, %d0, -32768
# CHECK: encoding: [0x1b,0x00,0x00,0xf8]
.code32
addi %d15, %d0, -32768

# CHECK-INST: addi %d15, %d0, -1
# CHECK: encoding: [0x1b,0xf0,0xff,0xff]
.code32
addi %d15, %d0, -1

# CHECK-INST: addi %d15, %d0, 0
# CHECK: encoding: [0x1b,0x00,0x00,0xf0]
.code32
addi %d15, %d0, 0

# CHECK-INST: addi %d15, %d0, 1
# CHECK: encoding: [0x1b,0x10,0x00,0xf0]
.code32
addi %d15, %d0, 1

# CHECK-INST: addi %d15, %d0, 32767
# CHECK: encoding: [0x1b,0xf0,0xff,0xf7]
.code32
addi %d15, %d0, 32767

# CHECK-INST: addi %d15, %d1, -32768
# CHECK: encoding: [0x1b,0x01,0x00,0xf8]
.code32
addi %d15, %d1, -32768

# CHECK-INST: addi %d15, %d1, -1
# CHECK: encoding: [0x1b,0xf1,0xff,0xff]
.code32
addi %d15, %d1, -1

# CHECK-INST: addi %d15, %d1, 0
# CHECK: encoding: [0x1b,0x01,0x00,0xf0]
.code32
addi %d15, %d1, 0

# CHECK-INST: addi %d15, %d1, 1
# CHECK: encoding: [0x1b,0x11,0x00,0xf0]
.code32
addi %d15, %d1, 1

# CHECK-INST: addi %d15, %d1, 32767
# CHECK: encoding: [0x1b,0xf1,0xff,0xf7]
.code32
addi %d15, %d1, 32767

# CHECK-INST: addi %d15, %d14, -32768
# CHECK: encoding: [0x1b,0x0e,0x00,0xf8]
.code32
addi %d15, %d14, -32768

# CHECK-INST: addi %d15, %d14, -1
# CHECK: encoding: [0x1b,0xfe,0xff,0xff]
.code32
addi %d15, %d14, -1

# CHECK-INST: addi %d15, %d14, 0
# CHECK: encoding: [0x1b,0x0e,0x00,0xf0]
.code32
addi %d15, %d14, 0

# CHECK-INST: addi %d15, %d14, 1
# CHECK: encoding: [0x1b,0x1e,0x00,0xf0]
.code32
addi %d15, %d14, 1

# CHECK-INST: addi %d15, %d14, 32767
# CHECK: encoding: [0x1b,0xfe,0xff,0xf7]
.code32
addi %d15, %d14, 32767

# CHECK-INST: addi %d15, %d15, -32768
# CHECK: encoding: [0x1b,0x0f,0x00,0xf8]
.code32
addi %d15, %d15, -32768

# CHECK-INST: addi %d15, %d15, -1
# CHECK: encoding: [0x1b,0xff,0xff,0xff]
.code32
addi %d15, %d15, -1

# CHECK-INST: addi %d15, %d15, 0
# CHECK: encoding: [0x1b,0x0f,0x00,0xf0]
.code32
addi %d15, %d15, 0

# CHECK-INST: addi %d15, %d15, 1
# CHECK: encoding: [0x1b,0x1f,0x00,0xf0]
.code32
addi %d15, %d15, 1

# CHECK-INST: addi %d15, %d15, 32767
# CHECK: encoding: [0x1b,0xff,0xff,0xf7]
.code32
addi %d15, %d15, 32767

# CHECK-INST: addih %d0, %d0, 0
# CHECK: encoding: [0x9b,0x00,0x00,0x00]
.code32
addih %d0, %d0, 0

# CHECK-INST: addih %d0, %d0, 1
# CHECK: encoding: [0x9b,0x10,0x00,0x00]
.code32
addih %d0, %d0, 1

# CHECK-INST: addih %d0, %d0, 32767
# CHECK: encoding: [0x9b,0xf0,0xff,0x07]
.code32
addih %d0, %d0, 32767

# CHECK-INST: addih %d0, %d0, 32768
# CHECK: encoding: [0x9b,0x00,0x00,0x08]
.code32
addih %d0, %d0, 32768

# CHECK-INST: addih %d0, %d0, 65534
# CHECK: encoding: [0x9b,0xe0,0xff,0x0f]
.code32
addih %d0, %d0, 65534

# CHECK-INST: addih %d0, %d0, 65535
# CHECK: encoding: [0x9b,0xf0,0xff,0x0f]
.code32
addih %d0, %d0, 65535

# CHECK-INST: addih %d0, %d1, 0
# CHECK: encoding: [0x9b,0x01,0x00,0x00]
.code32
addih %d0, %d1, 0

# CHECK-INST: addih %d0, %d1, 1
# CHECK: encoding: [0x9b,0x11,0x00,0x00]
.code32
addih %d0, %d1, 1

# CHECK-INST: addih %d0, %d1, 32767
# CHECK: encoding: [0x9b,0xf1,0xff,0x07]
.code32
addih %d0, %d1, 32767

# CHECK-INST: addih %d0, %d1, 32768
# CHECK: encoding: [0x9b,0x01,0x00,0x08]
.code32
addih %d0, %d1, 32768

# CHECK-INST: addih %d0, %d1, 65534
# CHECK: encoding: [0x9b,0xe1,0xff,0x0f]
.code32
addih %d0, %d1, 65534

# CHECK-INST: addih %d0, %d1, 65535
# CHECK: encoding: [0x9b,0xf1,0xff,0x0f]
.code32
addih %d0, %d1, 65535

# CHECK-INST: addih %d0, %d14, 0
# CHECK: encoding: [0x9b,0x0e,0x00,0x00]
.code32
addih %d0, %d14, 0

# CHECK-INST: addih %d0, %d14, 1
# CHECK: encoding: [0x9b,0x1e,0x00,0x00]
.code32
addih %d0, %d14, 1

# CHECK-INST: addih %d0, %d14, 32767
# CHECK: encoding: [0x9b,0xfe,0xff,0x07]
.code32
addih %d0, %d14, 32767

# CHECK-INST: addih %d0, %d14, 32768
# CHECK: encoding: [0x9b,0x0e,0x00,0x08]
.code32
addih %d0, %d14, 32768

# CHECK-INST: addih %d0, %d14, 65534
# CHECK: encoding: [0x9b,0xee,0xff,0x0f]
.code32
addih %d0, %d14, 65534

# CHECK-INST: addih %d0, %d14, 65535
# CHECK: encoding: [0x9b,0xfe,0xff,0x0f]
.code32
addih %d0, %d14, 65535

# CHECK-INST: addih %d0, %d15, 0
# CHECK: encoding: [0x9b,0x0f,0x00,0x00]
.code32
addih %d0, %d15, 0

# CHECK-INST: addih %d0, %d15, 1
# CHECK: encoding: [0x9b,0x1f,0x00,0x00]
.code32
addih %d0, %d15, 1

# CHECK-INST: addih %d0, %d15, 32767
# CHECK: encoding: [0x9b,0xff,0xff,0x07]
.code32
addih %d0, %d15, 32767

# CHECK-INST: addih %d0, %d15, 32768
# CHECK: encoding: [0x9b,0x0f,0x00,0x08]
.code32
addih %d0, %d15, 32768

# CHECK-INST: addih %d0, %d15, 65534
# CHECK: encoding: [0x9b,0xef,0xff,0x0f]
.code32
addih %d0, %d15, 65534

# CHECK-INST: addih %d0, %d15, 65535
# CHECK: encoding: [0x9b,0xff,0xff,0x0f]
.code32
addih %d0, %d15, 65535

# CHECK-INST: addih %d1, %d0, 0
# CHECK: encoding: [0x9b,0x00,0x00,0x10]
.code32
addih %d1, %d0, 0

# CHECK-INST: addih %d1, %d0, 1
# CHECK: encoding: [0x9b,0x10,0x00,0x10]
.code32
addih %d1, %d0, 1

# CHECK-INST: addih %d1, %d0, 32767
# CHECK: encoding: [0x9b,0xf0,0xff,0x17]
.code32
addih %d1, %d0, 32767

# CHECK-INST: addih %d1, %d0, 32768
# CHECK: encoding: [0x9b,0x00,0x00,0x18]
.code32
addih %d1, %d0, 32768

# CHECK-INST: addih %d1, %d0, 65534
# CHECK: encoding: [0x9b,0xe0,0xff,0x1f]
.code32
addih %d1, %d0, 65534

# CHECK-INST: addih %d1, %d0, 65535
# CHECK: encoding: [0x9b,0xf0,0xff,0x1f]
.code32
addih %d1, %d0, 65535

# CHECK-INST: addih %d1, %d1, 0
# CHECK: encoding: [0x9b,0x01,0x00,0x10]
.code32
addih %d1, %d1, 0

# CHECK-INST: addih %d1, %d1, 1
# CHECK: encoding: [0x9b,0x11,0x00,0x10]
.code32
addih %d1, %d1, 1

# CHECK-INST: addih %d1, %d1, 32767
# CHECK: encoding: [0x9b,0xf1,0xff,0x17]
.code32
addih %d1, %d1, 32767

# CHECK-INST: addih %d1, %d1, 32768
# CHECK: encoding: [0x9b,0x01,0x00,0x18]
.code32
addih %d1, %d1, 32768

# CHECK-INST: addih %d1, %d1, 65534
# CHECK: encoding: [0x9b,0xe1,0xff,0x1f]
.code32
addih %d1, %d1, 65534

# CHECK-INST: addih %d1, %d1, 65535
# CHECK: encoding: [0x9b,0xf1,0xff,0x1f]
.code32
addih %d1, %d1, 65535

# CHECK-INST: addih %d1, %d14, 0
# CHECK: encoding: [0x9b,0x0e,0x00,0x10]
.code32
addih %d1, %d14, 0

# CHECK-INST: addih %d1, %d14, 1
# CHECK: encoding: [0x9b,0x1e,0x00,0x10]
.code32
addih %d1, %d14, 1

# CHECK-INST: addih %d1, %d14, 32767
# CHECK: encoding: [0x9b,0xfe,0xff,0x17]
.code32
addih %d1, %d14, 32767

# CHECK-INST: addih %d1, %d14, 32768
# CHECK: encoding: [0x9b,0x0e,0x00,0x18]
.code32
addih %d1, %d14, 32768

# CHECK-INST: addih %d1, %d14, 65534
# CHECK: encoding: [0x9b,0xee,0xff,0x1f]
.code32
addih %d1, %d14, 65534

# CHECK-INST: addih %d1, %d14, 65535
# CHECK: encoding: [0x9b,0xfe,0xff,0x1f]
.code32
addih %d1, %d14, 65535

# CHECK-INST: addih %d1, %d15, 0
# CHECK: encoding: [0x9b,0x0f,0x00,0x10]
.code32
addih %d1, %d15, 0

# CHECK-INST: addih %d1, %d15, 1
# CHECK: encoding: [0x9b,0x1f,0x00,0x10]
.code32
addih %d1, %d15, 1

# CHECK-INST: addih %d1, %d15, 32767
# CHECK: encoding: [0x9b,0xff,0xff,0x17]
.code32
addih %d1, %d15, 32767

# CHECK-INST: addih %d1, %d15, 32768
# CHECK: encoding: [0x9b,0x0f,0x00,0x18]
.code32
addih %d1, %d15, 32768

# CHECK-INST: addih %d1, %d15, 65534
# CHECK: encoding: [0x9b,0xef,0xff,0x1f]
.code32
addih %d1, %d15, 65534

# CHECK-INST: addih %d1, %d15, 65535
# CHECK: encoding: [0x9b,0xff,0xff,0x1f]
.code32
addih %d1, %d15, 65535

# CHECK-INST: addih %d14, %d0, 0
# CHECK: encoding: [0x9b,0x00,0x00,0xe0]
.code32
addih %d14, %d0, 0

# CHECK-INST: addih %d14, %d0, 1
# CHECK: encoding: [0x9b,0x10,0x00,0xe0]
.code32
addih %d14, %d0, 1

# CHECK-INST: addih %d14, %d0, 32767
# CHECK: encoding: [0x9b,0xf0,0xff,0xe7]
.code32
addih %d14, %d0, 32767

# CHECK-INST: addih %d14, %d0, 32768
# CHECK: encoding: [0x9b,0x00,0x00,0xe8]
.code32
addih %d14, %d0, 32768

# CHECK-INST: addih %d14, %d0, 65534
# CHECK: encoding: [0x9b,0xe0,0xff,0xef]
.code32
addih %d14, %d0, 65534

# CHECK-INST: addih %d14, %d0, 65535
# CHECK: encoding: [0x9b,0xf0,0xff,0xef]
.code32
addih %d14, %d0, 65535

# CHECK-INST: addih %d14, %d1, 0
# CHECK: encoding: [0x9b,0x01,0x00,0xe0]
.code32
addih %d14, %d1, 0

# CHECK-INST: addih %d14, %d1, 1
# CHECK: encoding: [0x9b,0x11,0x00,0xe0]
.code32
addih %d14, %d1, 1

# CHECK-INST: addih %d14, %d1, 32767
# CHECK: encoding: [0x9b,0xf1,0xff,0xe7]
.code32
addih %d14, %d1, 32767

# CHECK-INST: addih %d14, %d1, 32768
# CHECK: encoding: [0x9b,0x01,0x00,0xe8]
.code32
addih %d14, %d1, 32768

# CHECK-INST: addih %d14, %d1, 65534
# CHECK: encoding: [0x9b,0xe1,0xff,0xef]
.code32
addih %d14, %d1, 65534

# CHECK-INST: addih %d14, %d1, 65535
# CHECK: encoding: [0x9b,0xf1,0xff,0xef]
.code32
addih %d14, %d1, 65535

# CHECK-INST: addih %d14, %d14, 0
# CHECK: encoding: [0x9b,0x0e,0x00,0xe0]
.code32
addih %d14, %d14, 0

# CHECK-INST: addih %d14, %d14, 1
# CHECK: encoding: [0x9b,0x1e,0x00,0xe0]
.code32
addih %d14, %d14, 1

# CHECK-INST: addih %d14, %d14, 32767
# CHECK: encoding: [0x9b,0xfe,0xff,0xe7]
.code32
addih %d14, %d14, 32767

# CHECK-INST: addih %d14, %d14, 32768
# CHECK: encoding: [0x9b,0x0e,0x00,0xe8]
.code32
addih %d14, %d14, 32768

# CHECK-INST: addih %d14, %d14, 65534
# CHECK: encoding: [0x9b,0xee,0xff,0xef]
.code32
addih %d14, %d14, 65534

# CHECK-INST: addih %d14, %d14, 65535
# CHECK: encoding: [0x9b,0xfe,0xff,0xef]
.code32
addih %d14, %d14, 65535

# CHECK-INST: addih %d14, %d15, 0
# CHECK: encoding: [0x9b,0x0f,0x00,0xe0]
.code32
addih %d14, %d15, 0

# CHECK-INST: addih %d14, %d15, 1
# CHECK: encoding: [0x9b,0x1f,0x00,0xe0]
.code32
addih %d14, %d15, 1

# CHECK-INST: addih %d14, %d15, 32767
# CHECK: encoding: [0x9b,0xff,0xff,0xe7]
.code32
addih %d14, %d15, 32767

# CHECK-INST: addih %d14, %d15, 32768
# CHECK: encoding: [0x9b,0x0f,0x00,0xe8]
.code32
addih %d14, %d15, 32768

# CHECK-INST: addih %d14, %d15, 65534
# CHECK: encoding: [0x9b,0xef,0xff,0xef]
.code32
addih %d14, %d15, 65534

# CHECK-INST: addih %d14, %d15, 65535
# CHECK: encoding: [0x9b,0xff,0xff,0xef]
.code32
addih %d14, %d15, 65535

# CHECK-INST: addih %d15, %d0, 0
# CHECK: encoding: [0x9b,0x00,0x00,0xf0]
.code32
addih %d15, %d0, 0

# CHECK-INST: addih %d15, %d0, 1
# CHECK: encoding: [0x9b,0x10,0x00,0xf0]
.code32
addih %d15, %d0, 1

# CHECK-INST: addih %d15, %d0, 32767
# CHECK: encoding: [0x9b,0xf0,0xff,0xf7]
.code32
addih %d15, %d0, 32767

# CHECK-INST: addih %d15, %d0, 32768
# CHECK: encoding: [0x9b,0x00,0x00,0xf8]
.code32
addih %d15, %d0, 32768

# CHECK-INST: addih %d15, %d0, 65534
# CHECK: encoding: [0x9b,0xe0,0xff,0xff]
.code32
addih %d15, %d0, 65534

# CHECK-INST: addih %d15, %d0, 65535
# CHECK: encoding: [0x9b,0xf0,0xff,0xff]
.code32
addih %d15, %d0, 65535

# CHECK-INST: addih %d15, %d1, 0
# CHECK: encoding: [0x9b,0x01,0x00,0xf0]
.code32
addih %d15, %d1, 0

# CHECK-INST: addih %d15, %d1, 1
# CHECK: encoding: [0x9b,0x11,0x00,0xf0]
.code32
addih %d15, %d1, 1

# CHECK-INST: addih %d15, %d1, 32767
# CHECK: encoding: [0x9b,0xf1,0xff,0xf7]
.code32
addih %d15, %d1, 32767

# CHECK-INST: addih %d15, %d1, 32768
# CHECK: encoding: [0x9b,0x01,0x00,0xf8]
.code32
addih %d15, %d1, 32768

# CHECK-INST: addih %d15, %d1, 65534
# CHECK: encoding: [0x9b,0xe1,0xff,0xff]
.code32
addih %d15, %d1, 65534

# CHECK-INST: addih %d15, %d1, 65535
# CHECK: encoding: [0x9b,0xf1,0xff,0xff]
.code32
addih %d15, %d1, 65535

# CHECK-INST: addih %d15, %d14, 0
# CHECK: encoding: [0x9b,0x0e,0x00,0xf0]
.code32
addih %d15, %d14, 0

# CHECK-INST: addih %d15, %d14, 1
# CHECK: encoding: [0x9b,0x1e,0x00,0xf0]
.code32
addih %d15, %d14, 1

# CHECK-INST: addih %d15, %d14, 32767
# CHECK: encoding: [0x9b,0xfe,0xff,0xf7]
.code32
addih %d15, %d14, 32767

# CHECK-INST: addih %d15, %d14, 32768
# CHECK: encoding: [0x9b,0x0e,0x00,0xf8]
.code32
addih %d15, %d14, 32768

# CHECK-INST: addih %d15, %d14, 65534
# CHECK: encoding: [0x9b,0xee,0xff,0xff]
.code32
addih %d15, %d14, 65534

# CHECK-INST: addih %d15, %d14, 65535
# CHECK: encoding: [0x9b,0xfe,0xff,0xff]
.code32
addih %d15, %d14, 65535

# CHECK-INST: addih %d15, %d15, 0
# CHECK: encoding: [0x9b,0x0f,0x00,0xf0]
.code32
addih %d15, %d15, 0

# CHECK-INST: addih %d15, %d15, 1
# CHECK: encoding: [0x9b,0x1f,0x00,0xf0]
.code32
addih %d15, %d15, 1

# CHECK-INST: addih %d15, %d15, 32767
# CHECK: encoding: [0x9b,0xff,0xff,0xf7]
.code32
addih %d15, %d15, 32767

# CHECK-INST: addih %d15, %d15, 32768
# CHECK: encoding: [0x9b,0x0f,0x00,0xf8]
.code32
addih %d15, %d15, 32768

# CHECK-INST: addih %d15, %d15, 65534
# CHECK: encoding: [0x9b,0xef,0xff,0xff]
.code32
addih %d15, %d15, 65534

# CHECK-INST: addih %d15, %d15, 65535
# CHECK: encoding: [0x9b,0xff,0xff,0xff]
.code32
addih %d15, %d15, 65535

# CHECK-INST: addih %d15, %d15, 65028
# CHECK: encoding: [0x9b,0x4f,0xe0,0xff]
.code32
addih %d15, %d15, $psw
 
# CHECK-INST: adds %d0, %d0
# CHECK: encoding: [0x22,0x00]
.code16
adds %d0, %d0

# CHECK-INST: adds %d0, %d1
# CHECK: encoding: [0x22,0x10]
.code16
adds %d0, %d1

# CHECK-INST: adds %d0, %d14
# CHECK: encoding: [0x22,0xe0]
.code16
adds %d0, %d14

# CHECK-INST: adds %d0, %d15
# CHECK: encoding: [0x22,0xf0]
.code16
adds %d0, %d15

# CHECK-INST: adds %d1, %d0
# CHECK: encoding: [0x22,0x01]
.code16
adds %d1, %d0

# CHECK-INST: adds %d1, %d1
# CHECK: encoding: [0x22,0x11]
.code16
adds %d1, %d1

# CHECK-INST: adds %d1, %d14
# CHECK: encoding: [0x22,0xe1]
.code16
adds %d1, %d14

# CHECK-INST: adds %d1, %d15
# CHECK: encoding: [0x22,0xf1]
.code16
adds %d1, %d15

# CHECK-INST: adds %d14, %d0
# CHECK: encoding: [0x22,0x0e]
.code16
adds %d14, %d0

# CHECK-INST: adds %d14, %d1
# CHECK: encoding: [0x22,0x1e]
.code16
adds %d14, %d1

# CHECK-INST: adds %d14, %d14
# CHECK: encoding: [0x22,0xee]
.code16
adds %d14, %d14

# CHECK-INST: adds %d14, %d15
# CHECK: encoding: [0x22,0xfe]
.code16
adds %d14, %d15

# CHECK-INST: adds %d15, %d0
# CHECK: encoding: [0x22,0x0f]
.code16
adds %d15, %d0

# CHECK-INST: adds %d15, %d1
# CHECK: encoding: [0x22,0x1f]
.code16
adds %d15, %d1

# CHECK-INST: adds %d15, %d14
# CHECK: encoding: [0x22,0xef]
.code16
adds %d15, %d14

# CHECK-INST: adds %d15, %d15
# CHECK: encoding: [0x22,0xff]
.code16
adds %d15, %d15
 
# CHECK-INST: adds %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x00]
.code32
adds %d0, %d0, %d0

# CHECK-INST: adds %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0x00]
.code32
adds %d0, %d0, %d1

# CHECK-INST: adds %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0x00]
.code32
adds %d0, %d0, %d14

# CHECK-INST: adds %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0x00]
.code32
adds %d0, %d0, %d15

# CHECK-INST: adds %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0x00]
.code32
adds %d0, %d1, %d0

# CHECK-INST: adds %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0x00]
.code32
adds %d0, %d1, %d1

# CHECK-INST: adds %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0x00]
.code32
adds %d0, %d1, %d14

# CHECK-INST: adds %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0x00]
.code32
adds %d0, %d1, %d15

# CHECK-INST: adds %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0x00]
.code32
adds %d0, %d14, %d0

# CHECK-INST: adds %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0x00]
.code32
adds %d0, %d14, %d1

# CHECK-INST: adds %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0x00]
.code32
adds %d0, %d14, %d14

# CHECK-INST: adds %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0x00]
.code32
adds %d0, %d14, %d15

# CHECK-INST: adds %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0x00]
.code32
adds %d0, %d15, %d0

# CHECK-INST: adds %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0x00]
.code32
adds %d0, %d15, %d1

# CHECK-INST: adds %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0x00]
.code32
adds %d0, %d15, %d14

# CHECK-INST: adds %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0x00]
.code32
adds %d0, %d15, %d15

# CHECK-INST: adds %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x10]
.code32
adds %d1, %d0, %d0

# CHECK-INST: adds %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0x10]
.code32
adds %d1, %d0, %d1

# CHECK-INST: adds %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0x10]
.code32
adds %d1, %d0, %d14

# CHECK-INST: adds %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0x10]
.code32
adds %d1, %d0, %d15

# CHECK-INST: adds %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0x10]
.code32
adds %d1, %d1, %d0

# CHECK-INST: adds %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0x10]
.code32
adds %d1, %d1, %d1

# CHECK-INST: adds %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0x10]
.code32
adds %d1, %d1, %d14

# CHECK-INST: adds %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0x10]
.code32
adds %d1, %d1, %d15

# CHECK-INST: adds %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0x10]
.code32
adds %d1, %d14, %d0

# CHECK-INST: adds %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0x10]
.code32
adds %d1, %d14, %d1

# CHECK-INST: adds %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0x10]
.code32
adds %d1, %d14, %d14

# CHECK-INST: adds %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0x10]
.code32
adds %d1, %d14, %d15

# CHECK-INST: adds %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0x10]
.code32
adds %d1, %d15, %d0

# CHECK-INST: adds %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0x10]
.code32
adds %d1, %d15, %d1

# CHECK-INST: adds %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0x10]
.code32
adds %d1, %d15, %d14

# CHECK-INST: adds %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0x10]
.code32
adds %d1, %d15, %d15

# CHECK-INST: adds %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0xe0]
.code32
adds %d14, %d0, %d0

# CHECK-INST: adds %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0xe0]
.code32
adds %d14, %d0, %d1

# CHECK-INST: adds %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0xe0]
.code32
adds %d14, %d0, %d14

# CHECK-INST: adds %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0xe0]
.code32
adds %d14, %d0, %d15

# CHECK-INST: adds %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0xe0]
.code32
adds %d14, %d1, %d0

# CHECK-INST: adds %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0xe0]
.code32
adds %d14, %d1, %d1

# CHECK-INST: adds %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0xe0]
.code32
adds %d14, %d1, %d14

# CHECK-INST: adds %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0xe0]
.code32
adds %d14, %d1, %d15

# CHECK-INST: adds %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0xe0]
.code32
adds %d14, %d14, %d0

# CHECK-INST: adds %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0xe0]
.code32
adds %d14, %d14, %d1

# CHECK-INST: adds %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0xe0]
.code32
adds %d14, %d14, %d14

# CHECK-INST: adds %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0xe0]
.code32
adds %d14, %d14, %d15

# CHECK-INST: adds %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0xe0]
.code32
adds %d14, %d15, %d0

# CHECK-INST: adds %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0xe0]
.code32
adds %d14, %d15, %d1

# CHECK-INST: adds %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0xe0]
.code32
adds %d14, %d15, %d14

# CHECK-INST: adds %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0xe0]
.code32
adds %d14, %d15, %d15

# CHECK-INST: adds %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0xf0]
.code32
adds %d15, %d0, %d0

# CHECK-INST: adds %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0xf0]
.code32
adds %d15, %d0, %d1

# CHECK-INST: adds %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0xf0]
.code32
adds %d15, %d0, %d14

# CHECK-INST: adds %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0xf0]
.code32
adds %d15, %d0, %d15

# CHECK-INST: adds %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0xf0]
.code32
adds %d15, %d1, %d0

# CHECK-INST: adds %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0xf0]
.code32
adds %d15, %d1, %d1

# CHECK-INST: adds %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0xf0]
.code32
adds %d15, %d1, %d14

# CHECK-INST: adds %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0xf0]
.code32
adds %d15, %d1, %d15

# CHECK-INST: adds %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0xf0]
.code32
adds %d15, %d14, %d0

# CHECK-INST: adds %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0xf0]
.code32
adds %d15, %d14, %d1

# CHECK-INST: adds %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0xf0]
.code32
adds %d15, %d14, %d14

# CHECK-INST: adds %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0xf0]
.code32
adds %d15, %d14, %d15

# CHECK-INST: adds %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0xf0]
.code32
adds %d15, %d15, %d0

# CHECK-INST: adds %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0xf0]
.code32
adds %d15, %d15, %d1

# CHECK-INST: adds %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0xf0]
.code32
adds %d15, %d15, %d14

# CHECK-INST: adds %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0xf0]
.code32
adds %d15, %d15, %d15
 
# CHECK-INST: adds %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0x00]
.code32
adds %d0, %d0, -256

# CHECK-INST: adds %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0x00]
.code32
adds %d0, %d0, -129

# CHECK-INST: adds %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0x00]
.code32
adds %d0, %d0, -1

# CHECK-INST: adds %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0x00]
.code32
adds %d0, %d0, 0

# CHECK-INST: adds %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0x00]
.code32
adds %d0, %d0, 1

# CHECK-INST: adds %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0x00]
.code32
adds %d0, %d0, 128

# CHECK-INST: adds %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0x00]
.code32
adds %d0, %d0, 255

# CHECK-INST: adds %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0x00]
.code32
adds %d0, %d1, -256

# CHECK-INST: adds %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0x00]
.code32
adds %d0, %d1, -129

# CHECK-INST: adds %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0x00]
.code32
adds %d0, %d1, -1

# CHECK-INST: adds %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0x00]
.code32
adds %d0, %d1, 0

# CHECK-INST: adds %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0x00]
.code32
adds %d0, %d1, 1

# CHECK-INST: adds %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0x00]
.code32
adds %d0, %d1, 128

# CHECK-INST: adds %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0x00]
.code32
adds %d0, %d1, 255

# CHECK-INST: adds %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0x00]
.code32
adds %d0, %d14, -256

# CHECK-INST: adds %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0x00]
.code32
adds %d0, %d14, -129

# CHECK-INST: adds %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0x00]
.code32
adds %d0, %d14, -1

# CHECK-INST: adds %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0x00]
.code32
adds %d0, %d14, 0

# CHECK-INST: adds %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0x00]
.code32
adds %d0, %d14, 1

# CHECK-INST: adds %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0x00]
.code32
adds %d0, %d14, 128

# CHECK-INST: adds %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0x00]
.code32
adds %d0, %d14, 255

# CHECK-INST: adds %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0x00]
.code32
adds %d0, %d15, -256

# CHECK-INST: adds %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0x00]
.code32
adds %d0, %d15, -129

# CHECK-INST: adds %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0x00]
.code32
adds %d0, %d15, -1

# CHECK-INST: adds %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0x00]
.code32
adds %d0, %d15, 0

# CHECK-INST: adds %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0x00]
.code32
adds %d0, %d15, 1

# CHECK-INST: adds %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0x00]
.code32
adds %d0, %d15, 128

# CHECK-INST: adds %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0x00]
.code32
adds %d0, %d15, 255

# CHECK-INST: adds %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0x10]
.code32
adds %d1, %d0, -256

# CHECK-INST: adds %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0x10]
.code32
adds %d1, %d0, -129

# CHECK-INST: adds %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0x10]
.code32
adds %d1, %d0, -1

# CHECK-INST: adds %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0x10]
.code32
adds %d1, %d0, 0

# CHECK-INST: adds %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0x10]
.code32
adds %d1, %d0, 1

# CHECK-INST: adds %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0x10]
.code32
adds %d1, %d0, 128

# CHECK-INST: adds %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0x10]
.code32
adds %d1, %d0, 255

# CHECK-INST: adds %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0x10]
.code32
adds %d1, %d1, -256

# CHECK-INST: adds %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0x10]
.code32
adds %d1, %d1, -129

# CHECK-INST: adds %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0x10]
.code32
adds %d1, %d1, -1

# CHECK-INST: adds %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0x10]
.code32
adds %d1, %d1, 0

# CHECK-INST: adds %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0x10]
.code32
adds %d1, %d1, 1

# CHECK-INST: adds %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0x10]
.code32
adds %d1, %d1, 128

# CHECK-INST: adds %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0x10]
.code32
adds %d1, %d1, 255

# CHECK-INST: adds %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0x10]
.code32
adds %d1, %d14, -256

# CHECK-INST: adds %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0x10]
.code32
adds %d1, %d14, -129

# CHECK-INST: adds %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0x10]
.code32
adds %d1, %d14, -1

# CHECK-INST: adds %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0x10]
.code32
adds %d1, %d14, 0

# CHECK-INST: adds %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0x10]
.code32
adds %d1, %d14, 1

# CHECK-INST: adds %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0x10]
.code32
adds %d1, %d14, 128

# CHECK-INST: adds %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0x10]
.code32
adds %d1, %d14, 255

# CHECK-INST: adds %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0x10]
.code32
adds %d1, %d15, -256

# CHECK-INST: adds %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0x10]
.code32
adds %d1, %d15, -129

# CHECK-INST: adds %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0x10]
.code32
adds %d1, %d15, -1

# CHECK-INST: adds %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0x10]
.code32
adds %d1, %d15, 0

# CHECK-INST: adds %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0x10]
.code32
adds %d1, %d15, 1

# CHECK-INST: adds %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0x10]
.code32
adds %d1, %d15, 128

# CHECK-INST: adds %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0x10]
.code32
adds %d1, %d15, 255

# CHECK-INST: adds %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0xe0]
.code32
adds %d14, %d0, -256

# CHECK-INST: adds %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0xe0]
.code32
adds %d14, %d0, -129

# CHECK-INST: adds %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0xe0]
.code32
adds %d14, %d0, -1

# CHECK-INST: adds %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0xe0]
.code32
adds %d14, %d0, 0

# CHECK-INST: adds %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0xe0]
.code32
adds %d14, %d0, 1

# CHECK-INST: adds %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0xe0]
.code32
adds %d14, %d0, 128

# CHECK-INST: adds %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0xe0]
.code32
adds %d14, %d0, 255

# CHECK-INST: adds %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0xe0]
.code32
adds %d14, %d1, -256

# CHECK-INST: adds %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0xe0]
.code32
adds %d14, %d1, -129

# CHECK-INST: adds %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0xe0]
.code32
adds %d14, %d1, -1

# CHECK-INST: adds %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0xe0]
.code32
adds %d14, %d1, 0

# CHECK-INST: adds %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0xe0]
.code32
adds %d14, %d1, 1

# CHECK-INST: adds %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0xe0]
.code32
adds %d14, %d1, 128

# CHECK-INST: adds %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0xe0]
.code32
adds %d14, %d1, 255

# CHECK-INST: adds %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0xe0]
.code32
adds %d14, %d14, -256

# CHECK-INST: adds %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0xe0]
.code32
adds %d14, %d14, -129

# CHECK-INST: adds %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0xe0]
.code32
adds %d14, %d14, -1

# CHECK-INST: adds %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0xe0]
.code32
adds %d14, %d14, 0

# CHECK-INST: adds %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0xe0]
.code32
adds %d14, %d14, 1

# CHECK-INST: adds %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0xe0]
.code32
adds %d14, %d14, 128

# CHECK-INST: adds %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0xe0]
.code32
adds %d14, %d14, 255

# CHECK-INST: adds %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0xe0]
.code32
adds %d14, %d15, -256

# CHECK-INST: adds %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0xe0]
.code32
adds %d14, %d15, -129

# CHECK-INST: adds %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0xe0]
.code32
adds %d14, %d15, -1

# CHECK-INST: adds %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0xe0]
.code32
adds %d14, %d15, 0

# CHECK-INST: adds %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0xe0]
.code32
adds %d14, %d15, 1

# CHECK-INST: adds %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0xe0]
.code32
adds %d14, %d15, 128

# CHECK-INST: adds %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0xe0]
.code32
adds %d14, %d15, 255

# CHECK-INST: adds %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0xf0]
.code32
adds %d15, %d0, -256

# CHECK-INST: adds %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0xf0]
.code32
adds %d15, %d0, -129

# CHECK-INST: adds %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0xf0]
.code32
adds %d15, %d0, -1

# CHECK-INST: adds %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0xf0]
.code32
adds %d15, %d0, 0

# CHECK-INST: adds %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0xf0]
.code32
adds %d15, %d0, 1

# CHECK-INST: adds %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0xf0]
.code32
adds %d15, %d0, 128

# CHECK-INST: adds %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0xf0]
.code32
adds %d15, %d0, 255

# CHECK-INST: adds %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0xf0]
.code32
adds %d15, %d1, -256

# CHECK-INST: adds %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0xf0]
.code32
adds %d15, %d1, -129

# CHECK-INST: adds %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0xf0]
.code32
adds %d15, %d1, -1

# CHECK-INST: adds %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0xf0]
.code32
adds %d15, %d1, 0

# CHECK-INST: adds %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0xf0]
.code32
adds %d15, %d1, 1

# CHECK-INST: adds %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0xf0]
.code32
adds %d15, %d1, 128

# CHECK-INST: adds %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0xf0]
.code32
adds %d15, %d1, 255

# CHECK-INST: adds %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0xf0]
.code32
adds %d15, %d14, -256

# CHECK-INST: adds %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0xf0]
.code32
adds %d15, %d14, -129

# CHECK-INST: adds %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0xf0]
.code32
adds %d15, %d14, -1

# CHECK-INST: adds %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0xf0]
.code32
adds %d15, %d14, 0

# CHECK-INST: adds %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0xf0]
.code32
adds %d15, %d14, 1

# CHECK-INST: adds %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0xf0]
.code32
adds %d15, %d14, 128

# CHECK-INST: adds %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0xf0]
.code32
adds %d15, %d14, 255

# CHECK-INST: adds %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0xf0]
.code32
adds %d15, %d15, -256

# CHECK-INST: adds %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0xf0]
.code32
adds %d15, %d15, -129

# CHECK-INST: adds %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0xf0]
.code32
adds %d15, %d15, -1

# CHECK-INST: adds %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0xf0]
.code32
adds %d15, %d15, 0

# CHECK-INST: adds %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0xf0]
.code32
adds %d15, %d15, 1

# CHECK-INST: adds %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0xf0]
.code32
adds %d15, %d15, 128

# CHECK-INST: adds %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0xf0]
.code32
adds %d15, %d15, 255
 # CHECK-INST: adds.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x00]
.code32
adds.u %d0, %d0, %d0

# CHECK-INST: adds.u %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0x00]
.code32
adds.u %d0, %d0, %d1

# CHECK-INST: adds.u %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0x00]
.code32
adds.u %d0, %d0, %d14

# CHECK-INST: adds.u %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0x00]
.code32
adds.u %d0, %d0, %d15

# CHECK-INST: adds.u %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0x00]
.code32
adds.u %d0, %d1, %d0

# CHECK-INST: adds.u %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0x00]
.code32
adds.u %d0, %d1, %d1

# CHECK-INST: adds.u %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0x00]
.code32
adds.u %d0, %d1, %d14

# CHECK-INST: adds.u %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0x00]
.code32
adds.u %d0, %d1, %d15

# CHECK-INST: adds.u %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0x00]
.code32
adds.u %d0, %d14, %d0

# CHECK-INST: adds.u %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0x00]
.code32
adds.u %d0, %d14, %d1

# CHECK-INST: adds.u %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0x00]
.code32
adds.u %d0, %d14, %d14

# CHECK-INST: adds.u %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0x00]
.code32
adds.u %d0, %d14, %d15

# CHECK-INST: adds.u %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0x00]
.code32
adds.u %d0, %d15, %d0

# CHECK-INST: adds.u %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0x00]
.code32
adds.u %d0, %d15, %d1

# CHECK-INST: adds.u %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0x00]
.code32
adds.u %d0, %d15, %d14

# CHECK-INST: adds.u %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0x00]
.code32
adds.u %d0, %d15, %d15

# CHECK-INST: adds.u %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x10]
.code32
adds.u %d1, %d0, %d0

# CHECK-INST: adds.u %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0x10]
.code32
adds.u %d1, %d0, %d1

# CHECK-INST: adds.u %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0x10]
.code32
adds.u %d1, %d0, %d14

# CHECK-INST: adds.u %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0x10]
.code32
adds.u %d1, %d0, %d15

# CHECK-INST: adds.u %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0x10]
.code32
adds.u %d1, %d1, %d0

# CHECK-INST: adds.u %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0x10]
.code32
adds.u %d1, %d1, %d1

# CHECK-INST: adds.u %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0x10]
.code32
adds.u %d1, %d1, %d14

# CHECK-INST: adds.u %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0x10]
.code32
adds.u %d1, %d1, %d15

# CHECK-INST: adds.u %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0x10]
.code32
adds.u %d1, %d14, %d0

# CHECK-INST: adds.u %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0x10]
.code32
adds.u %d1, %d14, %d1

# CHECK-INST: adds.u %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0x10]
.code32
adds.u %d1, %d14, %d14

# CHECK-INST: adds.u %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0x10]
.code32
adds.u %d1, %d14, %d15

# CHECK-INST: adds.u %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0x10]
.code32
adds.u %d1, %d15, %d0

# CHECK-INST: adds.u %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0x10]
.code32
adds.u %d1, %d15, %d1

# CHECK-INST: adds.u %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0x10]
.code32
adds.u %d1, %d15, %d14

# CHECK-INST: adds.u %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0x10]
.code32
adds.u %d1, %d15, %d15

# CHECK-INST: adds.u %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0xe0]
.code32
adds.u %d14, %d0, %d0

# CHECK-INST: adds.u %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0xe0]
.code32
adds.u %d14, %d0, %d1

# CHECK-INST: adds.u %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0xe0]
.code32
adds.u %d14, %d0, %d14

# CHECK-INST: adds.u %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0xe0]
.code32
adds.u %d14, %d0, %d15

# CHECK-INST: adds.u %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0xe0]
.code32
adds.u %d14, %d1, %d0

# CHECK-INST: adds.u %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0xe0]
.code32
adds.u %d14, %d1, %d1

# CHECK-INST: adds.u %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0xe0]
.code32
adds.u %d14, %d1, %d14

# CHECK-INST: adds.u %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0xe0]
.code32
adds.u %d14, %d1, %d15

# CHECK-INST: adds.u %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0xe0]
.code32
adds.u %d14, %d14, %d0

# CHECK-INST: adds.u %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0xe0]
.code32
adds.u %d14, %d14, %d1

# CHECK-INST: adds.u %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0xe0]
.code32
adds.u %d14, %d14, %d14

# CHECK-INST: adds.u %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0xe0]
.code32
adds.u %d14, %d14, %d15

# CHECK-INST: adds.u %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0xe0]
.code32
adds.u %d14, %d15, %d0

# CHECK-INST: adds.u %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0xe0]
.code32
adds.u %d14, %d15, %d1

# CHECK-INST: adds.u %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0xe0]
.code32
adds.u %d14, %d15, %d14

# CHECK-INST: adds.u %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0xe0]
.code32
adds.u %d14, %d15, %d15

# CHECK-INST: adds.u %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0xf0]
.code32
adds.u %d15, %d0, %d0

# CHECK-INST: adds.u %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0xf0]
.code32
adds.u %d15, %d0, %d1

# CHECK-INST: adds.u %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0xf0]
.code32
adds.u %d15, %d0, %d14

# CHECK-INST: adds.u %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0xf0]
.code32
adds.u %d15, %d0, %d15

# CHECK-INST: adds.u %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0xf0]
.code32
adds.u %d15, %d1, %d0

# CHECK-INST: adds.u %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0xf0]
.code32
adds.u %d15, %d1, %d1

# CHECK-INST: adds.u %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0xf0]
.code32
adds.u %d15, %d1, %d14

# CHECK-INST: adds.u %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0xf0]
.code32
adds.u %d15, %d1, %d15

# CHECK-INST: adds.u %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0xf0]
.code32
adds.u %d15, %d14, %d0

# CHECK-INST: adds.u %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0xf0]
.code32
adds.u %d15, %d14, %d1

# CHECK-INST: adds.u %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0xf0]
.code32
adds.u %d15, %d14, %d14

# CHECK-INST: adds.u %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0xf0]
.code32
adds.u %d15, %d14, %d15

# CHECK-INST: adds.u %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0xf0]
.code32
adds.u %d15, %d15, %d0

# CHECK-INST: adds.u %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0xf0]
.code32
adds.u %d15, %d15, %d1

# CHECK-INST: adds.u %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0xf0]
.code32
adds.u %d15, %d15, %d14

# CHECK-INST: adds.u %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0xf0]
.code32
adds.u %d15, %d15, %d15

# CHECK-INST: adds.u %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0x00]
.code32
adds.u %d0, %d0, -256

# CHECK-INST: adds.u %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0x00]
.code32
adds.u %d0, %d0, -129

# CHECK-INST: adds.u %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0x00]
.code32
adds.u %d0, %d0, -1

# CHECK-INST: adds.u %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0x00]
.code32
adds.u %d0, %d0, 0

# CHECK-INST: adds.u %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0x00]
.code32
adds.u %d0, %d0, 1

# CHECK-INST: adds.u %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0x00]
.code32
adds.u %d0, %d0, 128

# CHECK-INST: adds.u %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0x00]
.code32
adds.u %d0, %d0, 255

# CHECK-INST: adds.u %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0x00]
.code32
adds.u %d0, %d1, -256

# CHECK-INST: adds.u %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0x00]
.code32
adds.u %d0, %d1, -129

# CHECK-INST: adds.u %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0x00]
.code32
adds.u %d0, %d1, -1

# CHECK-INST: adds.u %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0x00]
.code32
adds.u %d0, %d1, 0

# CHECK-INST: adds.u %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0x00]
.code32
adds.u %d0, %d1, 1

# CHECK-INST: adds.u %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0x00]
.code32
adds.u %d0, %d1, 128

# CHECK-INST: adds.u %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0x00]
.code32
adds.u %d0, %d1, 255

# CHECK-INST: adds.u %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0x00]
.code32
adds.u %d0, %d14, -256

# CHECK-INST: adds.u %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0x00]
.code32
adds.u %d0, %d14, -129

# CHECK-INST: adds.u %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0x00]
.code32
adds.u %d0, %d14, -1

# CHECK-INST: adds.u %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0x00]
.code32
adds.u %d0, %d14, 0

# CHECK-INST: adds.u %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0x00]
.code32
adds.u %d0, %d14, 1

# CHECK-INST: adds.u %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0x00]
.code32
adds.u %d0, %d14, 128

# CHECK-INST: adds.u %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0x00]
.code32
adds.u %d0, %d14, 255

# CHECK-INST: adds.u %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0x00]
.code32
adds.u %d0, %d15, -256

# CHECK-INST: adds.u %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0x00]
.code32
adds.u %d0, %d15, -129

# CHECK-INST: adds.u %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0x00]
.code32
adds.u %d0, %d15, -1

# CHECK-INST: adds.u %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0x00]
.code32
adds.u %d0, %d15, 0

# CHECK-INST: adds.u %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0x00]
.code32
adds.u %d0, %d15, 1

# CHECK-INST: adds.u %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0x00]
.code32
adds.u %d0, %d15, 128

# CHECK-INST: adds.u %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0x00]
.code32
adds.u %d0, %d15, 255

# CHECK-INST: adds.u %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0x10]
.code32
adds.u %d1, %d0, -256

# CHECK-INST: adds.u %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0x10]
.code32
adds.u %d1, %d0, -129

# CHECK-INST: adds.u %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0x10]
.code32
adds.u %d1, %d0, -1

# CHECK-INST: adds.u %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0x10]
.code32
adds.u %d1, %d0, 0

# CHECK-INST: adds.u %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0x10]
.code32
adds.u %d1, %d0, 1

# CHECK-INST: adds.u %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0x10]
.code32
adds.u %d1, %d0, 128

# CHECK-INST: adds.u %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0x10]
.code32
adds.u %d1, %d0, 255

# CHECK-INST: adds.u %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0x10]
.code32
adds.u %d1, %d1, -256

# CHECK-INST: adds.u %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0x10]
.code32
adds.u %d1, %d1, -129

# CHECK-INST: adds.u %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0x10]
.code32
adds.u %d1, %d1, -1

# CHECK-INST: adds.u %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0x10]
.code32
adds.u %d1, %d1, 0

# CHECK-INST: adds.u %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0x10]
.code32
adds.u %d1, %d1, 1

# CHECK-INST: adds.u %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0x10]
.code32
adds.u %d1, %d1, 128

# CHECK-INST: adds.u %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0x10]
.code32
adds.u %d1, %d1, 255

# CHECK-INST: adds.u %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0x10]
.code32
adds.u %d1, %d14, -256

# CHECK-INST: adds.u %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0x10]
.code32
adds.u %d1, %d14, -129

# CHECK-INST: adds.u %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0x10]
.code32
adds.u %d1, %d14, -1

# CHECK-INST: adds.u %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0x10]
.code32
adds.u %d1, %d14, 0

# CHECK-INST: adds.u %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0x10]
.code32
adds.u %d1, %d14, 1

# CHECK-INST: adds.u %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0x10]
.code32
adds.u %d1, %d14, 128

# CHECK-INST: adds.u %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0x10]
.code32
adds.u %d1, %d14, 255

# CHECK-INST: adds.u %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0x10]
.code32
adds.u %d1, %d15, -256

# CHECK-INST: adds.u %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0x10]
.code32
adds.u %d1, %d15, -129

# CHECK-INST: adds.u %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0x10]
.code32
adds.u %d1, %d15, -1

# CHECK-INST: adds.u %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0x10]
.code32
adds.u %d1, %d15, 0

# CHECK-INST: adds.u %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0x10]
.code32
adds.u %d1, %d15, 1

# CHECK-INST: adds.u %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0x10]
.code32
adds.u %d1, %d15, 128

# CHECK-INST: adds.u %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0x10]
.code32
adds.u %d1, %d15, 255

# CHECK-INST: adds.u %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0xe0]
.code32
adds.u %d14, %d0, -256

# CHECK-INST: adds.u %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0xe0]
.code32
adds.u %d14, %d0, -129

# CHECK-INST: adds.u %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0xe0]
.code32
adds.u %d14, %d0, -1

# CHECK-INST: adds.u %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0xe0]
.code32
adds.u %d14, %d0, 0

# CHECK-INST: adds.u %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0xe0]
.code32
adds.u %d14, %d0, 1

# CHECK-INST: adds.u %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0xe0]
.code32
adds.u %d14, %d0, 128

# CHECK-INST: adds.u %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0xe0]
.code32
adds.u %d14, %d0, 255

# CHECK-INST: adds.u %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0xe0]
.code32
adds.u %d14, %d1, -256

# CHECK-INST: adds.u %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0xe0]
.code32
adds.u %d14, %d1, -129

# CHECK-INST: adds.u %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0xe0]
.code32
adds.u %d14, %d1, -1

# CHECK-INST: adds.u %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0xe0]
.code32
adds.u %d14, %d1, 0

# CHECK-INST: adds.u %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0xe0]
.code32
adds.u %d14, %d1, 1

# CHECK-INST: adds.u %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0xe0]
.code32
adds.u %d14, %d1, 128

# CHECK-INST: adds.u %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0xe0]
.code32
adds.u %d14, %d1, 255

# CHECK-INST: adds.u %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0xe0]
.code32
adds.u %d14, %d14, -256

# CHECK-INST: adds.u %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0xe0]
.code32
adds.u %d14, %d14, -129

# CHECK-INST: adds.u %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0xe0]
.code32
adds.u %d14, %d14, -1

# CHECK-INST: adds.u %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0xe0]
.code32
adds.u %d14, %d14, 0

# CHECK-INST: adds.u %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0xe0]
.code32
adds.u %d14, %d14, 1

# CHECK-INST: adds.u %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0xe0]
.code32
adds.u %d14, %d14, 128

# CHECK-INST: adds.u %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0xe0]
.code32
adds.u %d14, %d14, 255

# CHECK-INST: adds.u %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0xe0]
.code32
adds.u %d14, %d15, -256

# CHECK-INST: adds.u %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0xe0]
.code32
adds.u %d14, %d15, -129

# CHECK-INST: adds.u %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0xe0]
.code32
adds.u %d14, %d15, -1

# CHECK-INST: adds.u %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0xe0]
.code32
adds.u %d14, %d15, 0

# CHECK-INST: adds.u %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0xe0]
.code32
adds.u %d14, %d15, 1

# CHECK-INST: adds.u %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0xe0]
.code32
adds.u %d14, %d15, 128

# CHECK-INST: adds.u %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0xe0]
.code32
adds.u %d14, %d15, 255

# CHECK-INST: adds.u %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0xf0]
.code32
adds.u %d15, %d0, -256

# CHECK-INST: adds.u %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0xf0]
.code32
adds.u %d15, %d0, -129

# CHECK-INST: adds.u %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0xf0]
.code32
adds.u %d15, %d0, -1

# CHECK-INST: adds.u %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0xf0]
.code32
adds.u %d15, %d0, 0

# CHECK-INST: adds.u %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0xf0]
.code32
adds.u %d15, %d0, 1

# CHECK-INST: adds.u %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0xf0]
.code32
adds.u %d15, %d0, 128

# CHECK-INST: adds.u %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0xf0]
.code32
adds.u %d15, %d0, 255

# CHECK-INST: adds.u %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0xf0]
.code32
adds.u %d15, %d1, -256

# CHECK-INST: adds.u %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0xf0]
.code32
adds.u %d15, %d1, -129

# CHECK-INST: adds.u %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0xf0]
.code32
adds.u %d15, %d1, -1

# CHECK-INST: adds.u %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0xf0]
.code32
adds.u %d15, %d1, 0

# CHECK-INST: adds.u %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0xf0]
.code32
adds.u %d15, %d1, 1

# CHECK-INST: adds.u %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0xf0]
.code32
adds.u %d15, %d1, 128

# CHECK-INST: adds.u %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0xf0]
.code32
adds.u %d15, %d1, 255

# CHECK-INST: adds.u %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0xf0]
.code32
adds.u %d15, %d14, -256

# CHECK-INST: adds.u %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0xf0]
.code32
adds.u %d15, %d14, -129

# CHECK-INST: adds.u %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0xf0]
.code32
adds.u %d15, %d14, -1

# CHECK-INST: adds.u %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0xf0]
.code32
adds.u %d15, %d14, 0

# CHECK-INST: adds.u %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0xf0]
.code32
adds.u %d15, %d14, 1

# CHECK-INST: adds.u %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0xf0]
.code32
adds.u %d15, %d14, 128

# CHECK-INST: adds.u %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0xf0]
.code32
adds.u %d15, %d14, 255

# CHECK-INST: adds.u %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0xf0]
.code32
adds.u %d15, %d15, -256

# CHECK-INST: adds.u %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0xf0]
.code32
adds.u %d15, %d15, -129

# CHECK-INST: adds.u %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0xf0]
.code32
adds.u %d15, %d15, -1

# CHECK-INST: adds.u %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0xf0]
.code32
adds.u %d15, %d15, 0

# CHECK-INST: adds.u %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0xf0]
.code32
adds.u %d15, %d15, 1

# CHECK-INST: adds.u %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0xf0]
.code32
adds.u %d15, %d15, 128

# CHECK-INST: adds.u %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0xf0]
.code32
adds.u %d15, %d15, 255
 
# CHECK-INST: addx %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x40,0x00]
.code32
addx %d0, %d0, %d0

# CHECK-INST: addx %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x40,0x00]
.code32
addx %d0, %d0, %d1

# CHECK-INST: addx %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x40,0x00]
.code32
addx %d0, %d0, %d14

# CHECK-INST: addx %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x40,0x00]
.code32
addx %d0, %d0, %d15

# CHECK-INST: addx %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x40,0x00]
.code32
addx %d0, %d1, %d0

# CHECK-INST: addx %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x40,0x00]
.code32
addx %d0, %d1, %d1

# CHECK-INST: addx %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x40,0x00]
.code32
addx %d0, %d1, %d14

# CHECK-INST: addx %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x40,0x00]
.code32
addx %d0, %d1, %d15

# CHECK-INST: addx %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x40,0x00]
.code32
addx %d0, %d14, %d0

# CHECK-INST: addx %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x40,0x00]
.code32
addx %d0, %d14, %d1

# CHECK-INST: addx %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x40,0x00]
.code32
addx %d0, %d14, %d14

# CHECK-INST: addx %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x40,0x00]
.code32
addx %d0, %d14, %d15

# CHECK-INST: addx %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x40,0x00]
.code32
addx %d0, %d15, %d0

# CHECK-INST: addx %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x40,0x00]
.code32
addx %d0, %d15, %d1

# CHECK-INST: addx %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x40,0x00]
.code32
addx %d0, %d15, %d14

# CHECK-INST: addx %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x40,0x00]
.code32
addx %d0, %d15, %d15

# CHECK-INST: addx %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x40,0x10]
.code32
addx %d1, %d0, %d0

# CHECK-INST: addx %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x40,0x10]
.code32
addx %d1, %d0, %d1

# CHECK-INST: addx %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x40,0x10]
.code32
addx %d1, %d0, %d14

# CHECK-INST: addx %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x40,0x10]
.code32
addx %d1, %d0, %d15

# CHECK-INST: addx %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x40,0x10]
.code32
addx %d1, %d1, %d0

# CHECK-INST: addx %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x40,0x10]
.code32
addx %d1, %d1, %d1

# CHECK-INST: addx %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x40,0x10]
.code32
addx %d1, %d1, %d14

# CHECK-INST: addx %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x40,0x10]
.code32
addx %d1, %d1, %d15

# CHECK-INST: addx %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x40,0x10]
.code32
addx %d1, %d14, %d0

# CHECK-INST: addx %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x40,0x10]
.code32
addx %d1, %d14, %d1

# CHECK-INST: addx %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x40,0x10]
.code32
addx %d1, %d14, %d14

# CHECK-INST: addx %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x40,0x10]
.code32
addx %d1, %d14, %d15

# CHECK-INST: addx %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x40,0x10]
.code32
addx %d1, %d15, %d0

# CHECK-INST: addx %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x40,0x10]
.code32
addx %d1, %d15, %d1

# CHECK-INST: addx %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x40,0x10]
.code32
addx %d1, %d15, %d14

# CHECK-INST: addx %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x40,0x10]
.code32
addx %d1, %d15, %d15

# CHECK-INST: addx %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x40,0xe0]
.code32
addx %d14, %d0, %d0

# CHECK-INST: addx %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x40,0xe0]
.code32
addx %d14, %d0, %d1

# CHECK-INST: addx %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x40,0xe0]
.code32
addx %d14, %d0, %d14

# CHECK-INST: addx %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x40,0xe0]
.code32
addx %d14, %d0, %d15

# CHECK-INST: addx %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x40,0xe0]
.code32
addx %d14, %d1, %d0

# CHECK-INST: addx %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x40,0xe0]
.code32
addx %d14, %d1, %d1

# CHECK-INST: addx %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x40,0xe0]
.code32
addx %d14, %d1, %d14

# CHECK-INST: addx %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x40,0xe0]
.code32
addx %d14, %d1, %d15

# CHECK-INST: addx %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x40,0xe0]
.code32
addx %d14, %d14, %d0

# CHECK-INST: addx %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x40,0xe0]
.code32
addx %d14, %d14, %d1

# CHECK-INST: addx %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x40,0xe0]
.code32
addx %d14, %d14, %d14

# CHECK-INST: addx %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x40,0xe0]
.code32
addx %d14, %d14, %d15

# CHECK-INST: addx %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x40,0xe0]
.code32
addx %d14, %d15, %d0

# CHECK-INST: addx %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x40,0xe0]
.code32
addx %d14, %d15, %d1

# CHECK-INST: addx %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x40,0xe0]
.code32
addx %d14, %d15, %d14

# CHECK-INST: addx %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x40,0xe0]
.code32
addx %d14, %d15, %d15

# CHECK-INST: addx %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x40,0xf0]
.code32
addx %d15, %d0, %d0

# CHECK-INST: addx %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x40,0xf0]
.code32
addx %d15, %d0, %d1

# CHECK-INST: addx %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x40,0xf0]
.code32
addx %d15, %d0, %d14

# CHECK-INST: addx %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x40,0xf0]
.code32
addx %d15, %d0, %d15

# CHECK-INST: addx %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x40,0xf0]
.code32
addx %d15, %d1, %d0

# CHECK-INST: addx %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x40,0xf0]
.code32
addx %d15, %d1, %d1

# CHECK-INST: addx %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x40,0xf0]
.code32
addx %d15, %d1, %d14

# CHECK-INST: addx %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x40,0xf0]
.code32
addx %d15, %d1, %d15

# CHECK-INST: addx %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x40,0xf0]
.code32
addx %d15, %d14, %d0

# CHECK-INST: addx %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x40,0xf0]
.code32
addx %d15, %d14, %d1

# CHECK-INST: addx %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x40,0xf0]
.code32
addx %d15, %d14, %d14

# CHECK-INST: addx %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x40,0xf0]
.code32
addx %d15, %d14, %d15

# CHECK-INST: addx %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x40,0xf0]
.code32
addx %d15, %d15, %d0

# CHECK-INST: addx %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x40,0xf0]
.code32
addx %d15, %d15, %d1

# CHECK-INST: addx %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x40,0xf0]
.code32
addx %d15, %d15, %d14

# CHECK-INST: addx %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x40,0xf0]
.code32
addx %d15, %d15, %d15
 
# CHECK-INST: addx %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x90,0x00]
.code32
addx %d0, %d0, -256

# CHECK-INST: addx %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x97,0x00]
.code32
addx %d0, %d0, -129

# CHECK-INST: addx %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x9f,0x00]
.code32
addx %d0, %d0, -1

# CHECK-INST: addx %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x80,0x00]
.code32
addx %d0, %d0, 0

# CHECK-INST: addx %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x80,0x00]
.code32
addx %d0, %d0, 1

# CHECK-INST: addx %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x88,0x00]
.code32
addx %d0, %d0, 128

# CHECK-INST: addx %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x8f,0x00]
.code32
addx %d0, %d0, 255

# CHECK-INST: addx %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x90,0x00]
.code32
addx %d0, %d1, -256

# CHECK-INST: addx %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x97,0x00]
.code32
addx %d0, %d1, -129

# CHECK-INST: addx %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x9f,0x00]
.code32
addx %d0, %d1, -1

# CHECK-INST: addx %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x80,0x00]
.code32
addx %d0, %d1, 0

# CHECK-INST: addx %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x80,0x00]
.code32
addx %d0, %d1, 1

# CHECK-INST: addx %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x88,0x00]
.code32
addx %d0, %d1, 128

# CHECK-INST: addx %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x8f,0x00]
.code32
addx %d0, %d1, 255

# CHECK-INST: addx %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x90,0x00]
.code32
addx %d0, %d14, -256

# CHECK-INST: addx %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x97,0x00]
.code32
addx %d0, %d14, -129

# CHECK-INST: addx %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x9f,0x00]
.code32
addx %d0, %d14, -1

# CHECK-INST: addx %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x80,0x00]
.code32
addx %d0, %d14, 0

# CHECK-INST: addx %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x80,0x00]
.code32
addx %d0, %d14, 1

# CHECK-INST: addx %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x88,0x00]
.code32
addx %d0, %d14, 128

# CHECK-INST: addx %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x8f,0x00]
.code32
addx %d0, %d14, 255

# CHECK-INST: addx %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x90,0x00]
.code32
addx %d0, %d15, -256

# CHECK-INST: addx %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x97,0x00]
.code32
addx %d0, %d15, -129

# CHECK-INST: addx %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x9f,0x00]
.code32
addx %d0, %d15, -1

# CHECK-INST: addx %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x80,0x00]
.code32
addx %d0, %d15, 0

# CHECK-INST: addx %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x80,0x00]
.code32
addx %d0, %d15, 1

# CHECK-INST: addx %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x88,0x00]
.code32
addx %d0, %d15, 128

# CHECK-INST: addx %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x8f,0x00]
.code32
addx %d0, %d15, 255

# CHECK-INST: addx %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x90,0x10]
.code32
addx %d1, %d0, -256

# CHECK-INST: addx %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x97,0x10]
.code32
addx %d1, %d0, -129

# CHECK-INST: addx %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x9f,0x10]
.code32
addx %d1, %d0, -1

# CHECK-INST: addx %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x80,0x10]
.code32
addx %d1, %d0, 0

# CHECK-INST: addx %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x80,0x10]
.code32
addx %d1, %d0, 1

# CHECK-INST: addx %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x88,0x10]
.code32
addx %d1, %d0, 128

# CHECK-INST: addx %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x8f,0x10]
.code32
addx %d1, %d0, 255

# CHECK-INST: addx %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x90,0x10]
.code32
addx %d1, %d1, -256

# CHECK-INST: addx %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x97,0x10]
.code32
addx %d1, %d1, -129

# CHECK-INST: addx %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x9f,0x10]
.code32
addx %d1, %d1, -1

# CHECK-INST: addx %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x80,0x10]
.code32
addx %d1, %d1, 0

# CHECK-INST: addx %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x80,0x10]
.code32
addx %d1, %d1, 1

# CHECK-INST: addx %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x88,0x10]
.code32
addx %d1, %d1, 128

# CHECK-INST: addx %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x8f,0x10]
.code32
addx %d1, %d1, 255

# CHECK-INST: addx %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x90,0x10]
.code32
addx %d1, %d14, -256

# CHECK-INST: addx %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x97,0x10]
.code32
addx %d1, %d14, -129

# CHECK-INST: addx %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x9f,0x10]
.code32
addx %d1, %d14, -1

# CHECK-INST: addx %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x80,0x10]
.code32
addx %d1, %d14, 0

# CHECK-INST: addx %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x80,0x10]
.code32
addx %d1, %d14, 1

# CHECK-INST: addx %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x88,0x10]
.code32
addx %d1, %d14, 128

# CHECK-INST: addx %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x8f,0x10]
.code32
addx %d1, %d14, 255

# CHECK-INST: addx %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x90,0x10]
.code32
addx %d1, %d15, -256

# CHECK-INST: addx %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x97,0x10]
.code32
addx %d1, %d15, -129

# CHECK-INST: addx %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x9f,0x10]
.code32
addx %d1, %d15, -1

# CHECK-INST: addx %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x80,0x10]
.code32
addx %d1, %d15, 0

# CHECK-INST: addx %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x80,0x10]
.code32
addx %d1, %d15, 1

# CHECK-INST: addx %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x88,0x10]
.code32
addx %d1, %d15, 128

# CHECK-INST: addx %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x8f,0x10]
.code32
addx %d1, %d15, 255

# CHECK-INST: addx %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x90,0xe0]
.code32
addx %d14, %d0, -256

# CHECK-INST: addx %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x97,0xe0]
.code32
addx %d14, %d0, -129

# CHECK-INST: addx %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x9f,0xe0]
.code32
addx %d14, %d0, -1

# CHECK-INST: addx %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x80,0xe0]
.code32
addx %d14, %d0, 0

# CHECK-INST: addx %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x80,0xe0]
.code32
addx %d14, %d0, 1

# CHECK-INST: addx %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x88,0xe0]
.code32
addx %d14, %d0, 128

# CHECK-INST: addx %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x8f,0xe0]
.code32
addx %d14, %d0, 255

# CHECK-INST: addx %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x90,0xe0]
.code32
addx %d14, %d1, -256

# CHECK-INST: addx %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x97,0xe0]
.code32
addx %d14, %d1, -129

# CHECK-INST: addx %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x9f,0xe0]
.code32
addx %d14, %d1, -1

# CHECK-INST: addx %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x80,0xe0]
.code32
addx %d14, %d1, 0

# CHECK-INST: addx %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x80,0xe0]
.code32
addx %d14, %d1, 1

# CHECK-INST: addx %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x88,0xe0]
.code32
addx %d14, %d1, 128

# CHECK-INST: addx %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x8f,0xe0]
.code32
addx %d14, %d1, 255

# CHECK-INST: addx %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x90,0xe0]
.code32
addx %d14, %d14, -256

# CHECK-INST: addx %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x97,0xe0]
.code32
addx %d14, %d14, -129

# CHECK-INST: addx %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x9f,0xe0]
.code32
addx %d14, %d14, -1

# CHECK-INST: addx %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x80,0xe0]
.code32
addx %d14, %d14, 0

# CHECK-INST: addx %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x80,0xe0]
.code32
addx %d14, %d14, 1

# CHECK-INST: addx %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x88,0xe0]
.code32
addx %d14, %d14, 128

# CHECK-INST: addx %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x8f,0xe0]
.code32
addx %d14, %d14, 255

# CHECK-INST: addx %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x90,0xe0]
.code32
addx %d14, %d15, -256

# CHECK-INST: addx %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x97,0xe0]
.code32
addx %d14, %d15, -129

# CHECK-INST: addx %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x9f,0xe0]
.code32
addx %d14, %d15, -1

# CHECK-INST: addx %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x80,0xe0]
.code32
addx %d14, %d15, 0

# CHECK-INST: addx %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x80,0xe0]
.code32
addx %d14, %d15, 1

# CHECK-INST: addx %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x88,0xe0]
.code32
addx %d14, %d15, 128

# CHECK-INST: addx %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x8f,0xe0]
.code32
addx %d14, %d15, 255

# CHECK-INST: addx %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x90,0xf0]
.code32
addx %d15, %d0, -256

# CHECK-INST: addx %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x97,0xf0]
.code32
addx %d15, %d0, -129

# CHECK-INST: addx %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x9f,0xf0]
.code32
addx %d15, %d0, -1

# CHECK-INST: addx %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x80,0xf0]
.code32
addx %d15, %d0, 0

# CHECK-INST: addx %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x80,0xf0]
.code32
addx %d15, %d0, 1

# CHECK-INST: addx %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x88,0xf0]
.code32
addx %d15, %d0, 128

# CHECK-INST: addx %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x8f,0xf0]
.code32
addx %d15, %d0, 255

# CHECK-INST: addx %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x90,0xf0]
.code32
addx %d15, %d1, -256

# CHECK-INST: addx %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x97,0xf0]
.code32
addx %d15, %d1, -129

# CHECK-INST: addx %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x9f,0xf0]
.code32
addx %d15, %d1, -1

# CHECK-INST: addx %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x80,0xf0]
.code32
addx %d15, %d1, 0

# CHECK-INST: addx %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x80,0xf0]
.code32
addx %d15, %d1, 1

# CHECK-INST: addx %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x88,0xf0]
.code32
addx %d15, %d1, 128

# CHECK-INST: addx %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x8f,0xf0]
.code32
addx %d15, %d1, 255

# CHECK-INST: addx %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x90,0xf0]
.code32
addx %d15, %d14, -256

# CHECK-INST: addx %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x97,0xf0]
.code32
addx %d15, %d14, -129

# CHECK-INST: addx %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x9f,0xf0]
.code32
addx %d15, %d14, -1

# CHECK-INST: addx %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x80,0xf0]
.code32
addx %d15, %d14, 0

# CHECK-INST: addx %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x80,0xf0]
.code32
addx %d15, %d14, 1

# CHECK-INST: addx %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x88,0xf0]
.code32
addx %d15, %d14, 128

# CHECK-INST: addx %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x8f,0xf0]
.code32
addx %d15, %d14, 255

# CHECK-INST: addx %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x90,0xf0]
.code32
addx %d15, %d15, -256

# CHECK-INST: addx %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x97,0xf0]
.code32
addx %d15, %d15, -129

# CHECK-INST: addx %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x9f,0xf0]
.code32
addx %d15, %d15, -1

# CHECK-INST: addx %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x80,0xf0]
.code32
addx %d15, %d15, 0

# CHECK-INST: addx %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x80,0xf0]
.code32
addx %d15, %d15, 1

# CHECK-INST: addx %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x88,0xf0]
.code32
addx %d15, %d15, 128

# CHECK-INST: addx %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x8f,0xf0]
.code32
addx %d15, %d15, 255
 
# CHECK-INST: rsub %d0
# CHECK: encoding: [0x32,0x50]
.code16
rsub %d0

# CHECK-INST: rsub %d1
# CHECK: encoding: [0x32,0x51]
.code16
rsub %d1

# CHECK-INST: rsub %d14
# CHECK: encoding: [0x32,0x5e]
.code16
rsub %d14

# CHECK-INST: rsub %d15
# CHECK: encoding: [0x32,0x5f]
.code16
rsub %d15
 
 # CHECK-INST: rsub %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x01]
.code32
rsub %d0, %d0, -256

# CHECK-INST: rsub %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0x01]
.code32
rsub %d0, %d0, -129

# CHECK-INST: rsub %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0x01]
.code32
rsub %d0, %d0, -1

# CHECK-INST: rsub %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0x01]
.code32
rsub %d0, %d0, 0

# CHECK-INST: rsub %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0x01]
.code32
rsub %d0, %d0, 1

# CHECK-INST: rsub %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0x01]
.code32
rsub %d0, %d0, 128

# CHECK-INST: rsub %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0x01]
.code32
rsub %d0, %d0, 255

# CHECK-INST: rsub %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0x01]
.code32
rsub %d0, %d1, -256

# CHECK-INST: rsub %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0x01]
.code32
rsub %d0, %d1, -129

# CHECK-INST: rsub %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0x01]
.code32
rsub %d0, %d1, -1

# CHECK-INST: rsub %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0x01]
.code32
rsub %d0, %d1, 0

# CHECK-INST: rsub %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0x01]
.code32
rsub %d0, %d1, 1

# CHECK-INST: rsub %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0x01]
.code32
rsub %d0, %d1, 128

# CHECK-INST: rsub %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0x01]
.code32
rsub %d0, %d1, 255

# CHECK-INST: rsub %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0x01]
.code32
rsub %d0, %d14, -256

# CHECK-INST: rsub %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0x01]
.code32
rsub %d0, %d14, -129

# CHECK-INST: rsub %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0x01]
.code32
rsub %d0, %d14, -1

# CHECK-INST: rsub %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0x01]
.code32
rsub %d0, %d14, 0

# CHECK-INST: rsub %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0x01]
.code32
rsub %d0, %d14, 1

# CHECK-INST: rsub %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0x01]
.code32
rsub %d0, %d14, 128

# CHECK-INST: rsub %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0x01]
.code32
rsub %d0, %d14, 255

# CHECK-INST: rsub %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0x01]
.code32
rsub %d0, %d15, -256

# CHECK-INST: rsub %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0x01]
.code32
rsub %d0, %d15, -129

# CHECK-INST: rsub %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0x01]
.code32
rsub %d0, %d15, -1

# CHECK-INST: rsub %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0x01]
.code32
rsub %d0, %d15, 0

# CHECK-INST: rsub %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0x01]
.code32
rsub %d0, %d15, 1

# CHECK-INST: rsub %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0x01]
.code32
rsub %d0, %d15, 128

# CHECK-INST: rsub %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0x01]
.code32
rsub %d0, %d15, 255

# CHECK-INST: rsub %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x11]
.code32
rsub %d1, %d0, -256

# CHECK-INST: rsub %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0x11]
.code32
rsub %d1, %d0, -129

# CHECK-INST: rsub %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0x11]
.code32
rsub %d1, %d0, -1

# CHECK-INST: rsub %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0x11]
.code32
rsub %d1, %d0, 0

# CHECK-INST: rsub %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0x11]
.code32
rsub %d1, %d0, 1

# CHECK-INST: rsub %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0x11]
.code32
rsub %d1, %d0, 128

# CHECK-INST: rsub %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0x11]
.code32
rsub %d1, %d0, 255

# CHECK-INST: rsub %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0x11]
.code32
rsub %d1, %d1, -256

# CHECK-INST: rsub %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0x11]
.code32
rsub %d1, %d1, -129

# CHECK-INST: rsub %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0x11]
.code32
rsub %d1, %d1, -1

# CHECK-INST: rsub %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0x11]
.code32
rsub %d1, %d1, 0

# CHECK-INST: rsub %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0x11]
.code32
rsub %d1, %d1, 1

# CHECK-INST: rsub %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0x11]
.code32
rsub %d1, %d1, 128

# CHECK-INST: rsub %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0x11]
.code32
rsub %d1, %d1, 255

# CHECK-INST: rsub %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0x11]
.code32
rsub %d1, %d14, -256

# CHECK-INST: rsub %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0x11]
.code32
rsub %d1, %d14, -129

# CHECK-INST: rsub %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0x11]
.code32
rsub %d1, %d14, -1

# CHECK-INST: rsub %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0x11]
.code32
rsub %d1, %d14, 0

# CHECK-INST: rsub %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0x11]
.code32
rsub %d1, %d14, 1

# CHECK-INST: rsub %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0x11]
.code32
rsub %d1, %d14, 128

# CHECK-INST: rsub %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0x11]
.code32
rsub %d1, %d14, 255

# CHECK-INST: rsub %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0x11]
.code32
rsub %d1, %d15, -256

# CHECK-INST: rsub %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0x11]
.code32
rsub %d1, %d15, -129

# CHECK-INST: rsub %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0x11]
.code32
rsub %d1, %d15, -1

# CHECK-INST: rsub %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0x11]
.code32
rsub %d1, %d15, 0

# CHECK-INST: rsub %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0x11]
.code32
rsub %d1, %d15, 1

# CHECK-INST: rsub %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0x11]
.code32
rsub %d1, %d15, 128

# CHECK-INST: rsub %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0x11]
.code32
rsub %d1, %d15, 255

# CHECK-INST: rsub %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0xe1]
.code32
rsub %d14, %d0, -256

# CHECK-INST: rsub %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0xe1]
.code32
rsub %d14, %d0, -129

# CHECK-INST: rsub %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0xe1]
.code32
rsub %d14, %d0, -1

# CHECK-INST: rsub %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0xe1]
.code32
rsub %d14, %d0, 0

# CHECK-INST: rsub %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0xe1]
.code32
rsub %d14, %d0, 1

# CHECK-INST: rsub %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0xe1]
.code32
rsub %d14, %d0, 128

# CHECK-INST: rsub %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0xe1]
.code32
rsub %d14, %d0, 255

# CHECK-INST: rsub %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0xe1]
.code32
rsub %d14, %d1, -256

# CHECK-INST: rsub %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0xe1]
.code32
rsub %d14, %d1, -129

# CHECK-INST: rsub %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0xe1]
.code32
rsub %d14, %d1, -1

# CHECK-INST: rsub %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0xe1]
.code32
rsub %d14, %d1, 0

# CHECK-INST: rsub %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0xe1]
.code32
rsub %d14, %d1, 1

# CHECK-INST: rsub %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0xe1]
.code32
rsub %d14, %d1, 128

# CHECK-INST: rsub %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0xe1]
.code32
rsub %d14, %d1, 255

# CHECK-INST: rsub %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0xe1]
.code32
rsub %d14, %d14, -256

# CHECK-INST: rsub %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0xe1]
.code32
rsub %d14, %d14, -129

# CHECK-INST: rsub %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0xe1]
.code32
rsub %d14, %d14, -1

# CHECK-INST: rsub %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0xe1]
.code32
rsub %d14, %d14, 0

# CHECK-INST: rsub %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0xe1]
.code32
rsub %d14, %d14, 1

# CHECK-INST: rsub %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0xe1]
.code32
rsub %d14, %d14, 128

# CHECK-INST: rsub %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0xe1]
.code32
rsub %d14, %d14, 255

# CHECK-INST: rsub %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0xe1]
.code32
rsub %d14, %d15, -256

# CHECK-INST: rsub %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0xe1]
.code32
rsub %d14, %d15, -129

# CHECK-INST: rsub %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0xe1]
.code32
rsub %d14, %d15, -1

# CHECK-INST: rsub %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0xe1]
.code32
rsub %d14, %d15, 0

# CHECK-INST: rsub %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0xe1]
.code32
rsub %d14, %d15, 1

# CHECK-INST: rsub %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0xe1]
.code32
rsub %d14, %d15, 128

# CHECK-INST: rsub %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0xe1]
.code32
rsub %d14, %d15, 255

# CHECK-INST: rsub %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0xf1]
.code32
rsub %d15, %d0, -256

# CHECK-INST: rsub %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0xf1]
.code32
rsub %d15, %d0, -129

# CHECK-INST: rsub %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0xf1]
.code32
rsub %d15, %d0, -1

# CHECK-INST: rsub %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0xf1]
.code32
rsub %d15, %d0, 0

# CHECK-INST: rsub %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0xf1]
.code32
rsub %d15, %d0, 1

# CHECK-INST: rsub %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0xf1]
.code32
rsub %d15, %d0, 128

# CHECK-INST: rsub %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0xf1]
.code32
rsub %d15, %d0, 255

# CHECK-INST: rsub %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0xf1]
.code32
rsub %d15, %d1, -256

# CHECK-INST: rsub %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0xf1]
.code32
rsub %d15, %d1, -129

# CHECK-INST: rsub %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0xf1]
.code32
rsub %d15, %d1, -1

# CHECK-INST: rsub %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0xf1]
.code32
rsub %d15, %d1, 0

# CHECK-INST: rsub %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0xf1]
.code32
rsub %d15, %d1, 1

# CHECK-INST: rsub %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0xf1]
.code32
rsub %d15, %d1, 128

# CHECK-INST: rsub %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0xf1]
.code32
rsub %d15, %d1, 255

# CHECK-INST: rsub %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0xf1]
.code32
rsub %d15, %d14, -256

# CHECK-INST: rsub %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0xf1]
.code32
rsub %d15, %d14, -129

# CHECK-INST: rsub %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0xf1]
.code32
rsub %d15, %d14, -1

# CHECK-INST: rsub %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0xf1]
.code32
rsub %d15, %d14, 0

# CHECK-INST: rsub %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0xf1]
.code32
rsub %d15, %d14, 1

# CHECK-INST: rsub %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0xf1]
.code32
rsub %d15, %d14, 128

# CHECK-INST: rsub %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0xf1]
.code32
rsub %d15, %d14, 255

# CHECK-INST: rsub %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0xf1]
.code32
rsub %d15, %d15, -256

# CHECK-INST: rsub %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0xf1]
.code32
rsub %d15, %d15, -129

# CHECK-INST: rsub %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0xf1]
.code32
rsub %d15, %d15, -1

# CHECK-INST: rsub %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0xf1]
.code32
rsub %d15, %d15, 0

# CHECK-INST: rsub %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0xf1]
.code32
rsub %d15, %d15, 1

# CHECK-INST: rsub %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0xf1]
.code32
rsub %d15, %d15, 128

# CHECK-INST: rsub %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0xf1]
.code32
rsub %d15, %d15, 255

# CHECK-INST: rsubs %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0x01]
.code32
rsubs %d0, %d0, -256

# CHECK-INST: rsubs %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0x01]
.code32
rsubs %d0, %d0, -129

# CHECK-INST: rsubs %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0x01]
.code32
rsubs %d0, %d0, -1

# CHECK-INST: rsubs %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0x01]
.code32
rsubs %d0, %d0, 0

# CHECK-INST: rsubs %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0x01]
.code32
rsubs %d0, %d0, 1

# CHECK-INST: rsubs %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0x01]
.code32
rsubs %d0, %d0, 128

# CHECK-INST: rsubs %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0x01]
.code32
rsubs %d0, %d0, 255

# CHECK-INST: rsubs %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0x01]
.code32
rsubs %d0, %d1, -256

# CHECK-INST: rsubs %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0x01]
.code32
rsubs %d0, %d1, -129

# CHECK-INST: rsubs %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0x01]
.code32
rsubs %d0, %d1, -1

# CHECK-INST: rsubs %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0x01]
.code32
rsubs %d0, %d1, 0

# CHECK-INST: rsubs %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0x01]
.code32
rsubs %d0, %d1, 1

# CHECK-INST: rsubs %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0x01]
.code32
rsubs %d0, %d1, 128

# CHECK-INST: rsubs %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0x01]
.code32
rsubs %d0, %d1, 255

# CHECK-INST: rsubs %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0x01]
.code32
rsubs %d0, %d14, -256

# CHECK-INST: rsubs %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0x01]
.code32
rsubs %d0, %d14, -129

# CHECK-INST: rsubs %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0x01]
.code32
rsubs %d0, %d14, -1

# CHECK-INST: rsubs %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0x01]
.code32
rsubs %d0, %d14, 0

# CHECK-INST: rsubs %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0x01]
.code32
rsubs %d0, %d14, 1

# CHECK-INST: rsubs %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0x01]
.code32
rsubs %d0, %d14, 128

# CHECK-INST: rsubs %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0x01]
.code32
rsubs %d0, %d14, 255

# CHECK-INST: rsubs %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0x01]
.code32
rsubs %d0, %d15, -256

# CHECK-INST: rsubs %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0x01]
.code32
rsubs %d0, %d15, -129

# CHECK-INST: rsubs %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0x01]
.code32
rsubs %d0, %d15, -1

# CHECK-INST: rsubs %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0x01]
.code32
rsubs %d0, %d15, 0

# CHECK-INST: rsubs %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0x01]
.code32
rsubs %d0, %d15, 1

# CHECK-INST: rsubs %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0x01]
.code32
rsubs %d0, %d15, 128

# CHECK-INST: rsubs %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0x01]
.code32
rsubs %d0, %d15, 255

# CHECK-INST: rsubs %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0x11]
.code32
rsubs %d1, %d0, -256

# CHECK-INST: rsubs %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0x11]
.code32
rsubs %d1, %d0, -129

# CHECK-INST: rsubs %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0x11]
.code32
rsubs %d1, %d0, -1

# CHECK-INST: rsubs %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0x11]
.code32
rsubs %d1, %d0, 0

# CHECK-INST: rsubs %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0x11]
.code32
rsubs %d1, %d0, 1

# CHECK-INST: rsubs %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0x11]
.code32
rsubs %d1, %d0, 128

# CHECK-INST: rsubs %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0x11]
.code32
rsubs %d1, %d0, 255

# CHECK-INST: rsubs %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0x11]
.code32
rsubs %d1, %d1, -256

# CHECK-INST: rsubs %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0x11]
.code32
rsubs %d1, %d1, -129

# CHECK-INST: rsubs %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0x11]
.code32
rsubs %d1, %d1, -1

# CHECK-INST: rsubs %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0x11]
.code32
rsubs %d1, %d1, 0

# CHECK-INST: rsubs %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0x11]
.code32
rsubs %d1, %d1, 1

# CHECK-INST: rsubs %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0x11]
.code32
rsubs %d1, %d1, 128

# CHECK-INST: rsubs %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0x11]
.code32
rsubs %d1, %d1, 255

# CHECK-INST: rsubs %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0x11]
.code32
rsubs %d1, %d14, -256

# CHECK-INST: rsubs %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0x11]
.code32
rsubs %d1, %d14, -129

# CHECK-INST: rsubs %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0x11]
.code32
rsubs %d1, %d14, -1

# CHECK-INST: rsubs %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0x11]
.code32
rsubs %d1, %d14, 0

# CHECK-INST: rsubs %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0x11]
.code32
rsubs %d1, %d14, 1

# CHECK-INST: rsubs %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0x11]
.code32
rsubs %d1, %d14, 128

# CHECK-INST: rsubs %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0x11]
.code32
rsubs %d1, %d14, 255

# CHECK-INST: rsubs %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0x11]
.code32
rsubs %d1, %d15, -256

# CHECK-INST: rsubs %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0x11]
.code32
rsubs %d1, %d15, -129

# CHECK-INST: rsubs %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0x11]
.code32
rsubs %d1, %d15, -1

# CHECK-INST: rsubs %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0x11]
.code32
rsubs %d1, %d15, 0

# CHECK-INST: rsubs %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0x11]
.code32
rsubs %d1, %d15, 1

# CHECK-INST: rsubs %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0x11]
.code32
rsubs %d1, %d15, 128

# CHECK-INST: rsubs %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0x11]
.code32
rsubs %d1, %d15, 255

# CHECK-INST: rsubs %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0xe1]
.code32
rsubs %d14, %d0, -256

# CHECK-INST: rsubs %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0xe1]
.code32
rsubs %d14, %d0, -129

# CHECK-INST: rsubs %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0xe1]
.code32
rsubs %d14, %d0, -1

# CHECK-INST: rsubs %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0xe1]
.code32
rsubs %d14, %d0, 0

# CHECK-INST: rsubs %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0xe1]
.code32
rsubs %d14, %d0, 1

# CHECK-INST: rsubs %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0xe1]
.code32
rsubs %d14, %d0, 128

# CHECK-INST: rsubs %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0xe1]
.code32
rsubs %d14, %d0, 255

# CHECK-INST: rsubs %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0xe1]
.code32
rsubs %d14, %d1, -256

# CHECK-INST: rsubs %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0xe1]
.code32
rsubs %d14, %d1, -129

# CHECK-INST: rsubs %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0xe1]
.code32
rsubs %d14, %d1, -1

# CHECK-INST: rsubs %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0xe1]
.code32
rsubs %d14, %d1, 0

# CHECK-INST: rsubs %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0xe1]
.code32
rsubs %d14, %d1, 1

# CHECK-INST: rsubs %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0xe1]
.code32
rsubs %d14, %d1, 128

# CHECK-INST: rsubs %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0xe1]
.code32
rsubs %d14, %d1, 255

# CHECK-INST: rsubs %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0xe1]
.code32
rsubs %d14, %d14, -256

# CHECK-INST: rsubs %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0xe1]
.code32
rsubs %d14, %d14, -129

# CHECK-INST: rsubs %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0xe1]
.code32
rsubs %d14, %d14, -1

# CHECK-INST: rsubs %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0xe1]
.code32
rsubs %d14, %d14, 0

# CHECK-INST: rsubs %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0xe1]
.code32
rsubs %d14, %d14, 1

# CHECK-INST: rsubs %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0xe1]
.code32
rsubs %d14, %d14, 128

# CHECK-INST: rsubs %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0xe1]
.code32
rsubs %d14, %d14, 255

# CHECK-INST: rsubs %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0xe1]
.code32
rsubs %d14, %d15, -256

# CHECK-INST: rsubs %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0xe1]
.code32
rsubs %d14, %d15, -129

# CHECK-INST: rsubs %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0xe1]
.code32
rsubs %d14, %d15, -1

# CHECK-INST: rsubs %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0xe1]
.code32
rsubs %d14, %d15, 0

# CHECK-INST: rsubs %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0xe1]
.code32
rsubs %d14, %d15, 1

# CHECK-INST: rsubs %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0xe1]
.code32
rsubs %d14, %d15, 128

# CHECK-INST: rsubs %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0xe1]
.code32
rsubs %d14, %d15, 255

# CHECK-INST: rsubs %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0xf1]
.code32
rsubs %d15, %d0, -256

# CHECK-INST: rsubs %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0xf1]
.code32
rsubs %d15, %d0, -129

# CHECK-INST: rsubs %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0xf1]
.code32
rsubs %d15, %d0, -1

# CHECK-INST: rsubs %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0xf1]
.code32
rsubs %d15, %d0, 0

# CHECK-INST: rsubs %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0xf1]
.code32
rsubs %d15, %d0, 1

# CHECK-INST: rsubs %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0xf1]
.code32
rsubs %d15, %d0, 128

# CHECK-INST: rsubs %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0xf1]
.code32
rsubs %d15, %d0, 255

# CHECK-INST: rsubs %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0xf1]
.code32
rsubs %d15, %d1, -256

# CHECK-INST: rsubs %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0xf1]
.code32
rsubs %d15, %d1, -129

# CHECK-INST: rsubs %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0xf1]
.code32
rsubs %d15, %d1, -1

# CHECK-INST: rsubs %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0xf1]
.code32
rsubs %d15, %d1, 0

# CHECK-INST: rsubs %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0xf1]
.code32
rsubs %d15, %d1, 1

# CHECK-INST: rsubs %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0xf1]
.code32
rsubs %d15, %d1, 128

# CHECK-INST: rsubs %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0xf1]
.code32
rsubs %d15, %d1, 255

# CHECK-INST: rsubs %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0xf1]
.code32
rsubs %d15, %d14, -256

# CHECK-INST: rsubs %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0xf1]
.code32
rsubs %d15, %d14, -129

# CHECK-INST: rsubs %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0xf1]
.code32
rsubs %d15, %d14, -1

# CHECK-INST: rsubs %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0xf1]
.code32
rsubs %d15, %d14, 0

# CHECK-INST: rsubs %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0xf1]
.code32
rsubs %d15, %d14, 1

# CHECK-INST: rsubs %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0xf1]
.code32
rsubs %d15, %d14, 128

# CHECK-INST: rsubs %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0xf1]
.code32
rsubs %d15, %d14, 255

# CHECK-INST: rsubs %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0xf1]
.code32
rsubs %d15, %d15, -256

# CHECK-INST: rsubs %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0xf1]
.code32
rsubs %d15, %d15, -129

# CHECK-INST: rsubs %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0xf1]
.code32
rsubs %d15, %d15, -1

# CHECK-INST: rsubs %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0xf1]
.code32
rsubs %d15, %d15, 0

# CHECK-INST: rsubs %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0xf1]
.code32
rsubs %d15, %d15, 1

# CHECK-INST: rsubs %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0xf1]
.code32
rsubs %d15, %d15, 128

# CHECK-INST: rsubs %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0xf1]
.code32
rsubs %d15, %d15, 255
 
# CHECK-INST: rsubs.u %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0x01]
.code32
rsubs.u %d0, %d0, -256

# CHECK-INST: rsubs.u %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0x01]
.code32
rsubs.u %d0, %d0, -129

# CHECK-INST: rsubs.u %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0x01]
.code32
rsubs.u %d0, %d0, -1

# CHECK-INST: rsubs.u %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0x01]
.code32
rsubs.u %d0, %d0, 0

# CHECK-INST: rsubs.u %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0x01]
.code32
rsubs.u %d0, %d0, 1

# CHECK-INST: rsubs.u %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0x01]
.code32
rsubs.u %d0, %d0, 128

# CHECK-INST: rsubs.u %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0x01]
.code32
rsubs.u %d0, %d0, 255

# CHECK-INST: rsubs.u %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0x01]
.code32
rsubs.u %d0, %d1, -256

# CHECK-INST: rsubs.u %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0x01]
.code32
rsubs.u %d0, %d1, -129

# CHECK-INST: rsubs.u %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0x01]
.code32
rsubs.u %d0, %d1, -1

# CHECK-INST: rsubs.u %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0x01]
.code32
rsubs.u %d0, %d1, 0

# CHECK-INST: rsubs.u %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0x01]
.code32
rsubs.u %d0, %d1, 1

# CHECK-INST: rsubs.u %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0x01]
.code32
rsubs.u %d0, %d1, 128

# CHECK-INST: rsubs.u %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0x01]
.code32
rsubs.u %d0, %d1, 255

# CHECK-INST: rsubs.u %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0x01]
.code32
rsubs.u %d0, %d14, -256

# CHECK-INST: rsubs.u %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0x01]
.code32
rsubs.u %d0, %d14, -129

# CHECK-INST: rsubs.u %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0x01]
.code32
rsubs.u %d0, %d14, -1

# CHECK-INST: rsubs.u %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0x01]
.code32
rsubs.u %d0, %d14, 0

# CHECK-INST: rsubs.u %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0x01]
.code32
rsubs.u %d0, %d14, 1

# CHECK-INST: rsubs.u %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0x01]
.code32
rsubs.u %d0, %d14, 128

# CHECK-INST: rsubs.u %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0x01]
.code32
rsubs.u %d0, %d14, 255

# CHECK-INST: rsubs.u %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0x01]
.code32
rsubs.u %d0, %d15, -256

# CHECK-INST: rsubs.u %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0x01]
.code32
rsubs.u %d0, %d15, -129

# CHECK-INST: rsubs.u %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0x01]
.code32
rsubs.u %d0, %d15, -1

# CHECK-INST: rsubs.u %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0x01]
.code32
rsubs.u %d0, %d15, 0

# CHECK-INST: rsubs.u %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0x01]
.code32
rsubs.u %d0, %d15, 1

# CHECK-INST: rsubs.u %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0x01]
.code32
rsubs.u %d0, %d15, 128

# CHECK-INST: rsubs.u %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0x01]
.code32
rsubs.u %d0, %d15, 255

# CHECK-INST: rsubs.u %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0x11]
.code32
rsubs.u %d1, %d0, -256

# CHECK-INST: rsubs.u %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0x11]
.code32
rsubs.u %d1, %d0, -129

# CHECK-INST: rsubs.u %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0x11]
.code32
rsubs.u %d1, %d0, -1

# CHECK-INST: rsubs.u %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0x11]
.code32
rsubs.u %d1, %d0, 0

# CHECK-INST: rsubs.u %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0x11]
.code32
rsubs.u %d1, %d0, 1

# CHECK-INST: rsubs.u %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0x11]
.code32
rsubs.u %d1, %d0, 128

# CHECK-INST: rsubs.u %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0x11]
.code32
rsubs.u %d1, %d0, 255

# CHECK-INST: rsubs.u %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0x11]
.code32
rsubs.u %d1, %d1, -256

# CHECK-INST: rsubs.u %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0x11]
.code32
rsubs.u %d1, %d1, -129

# CHECK-INST: rsubs.u %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0x11]
.code32
rsubs.u %d1, %d1, -1

# CHECK-INST: rsubs.u %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0x11]
.code32
rsubs.u %d1, %d1, 0

# CHECK-INST: rsubs.u %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0x11]
.code32
rsubs.u %d1, %d1, 1

# CHECK-INST: rsubs.u %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0x11]
.code32
rsubs.u %d1, %d1, 128

# CHECK-INST: rsubs.u %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0x11]
.code32
rsubs.u %d1, %d1, 255

# CHECK-INST: rsubs.u %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0x11]
.code32
rsubs.u %d1, %d14, -256

# CHECK-INST: rsubs.u %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0x11]
.code32
rsubs.u %d1, %d14, -129

# CHECK-INST: rsubs.u %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0x11]
.code32
rsubs.u %d1, %d14, -1

# CHECK-INST: rsubs.u %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0x11]
.code32
rsubs.u %d1, %d14, 0

# CHECK-INST: rsubs.u %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0x11]
.code32
rsubs.u %d1, %d14, 1

# CHECK-INST: rsubs.u %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0x11]
.code32
rsubs.u %d1, %d14, 128

# CHECK-INST: rsubs.u %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0x11]
.code32
rsubs.u %d1, %d14, 255

# CHECK-INST: rsubs.u %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0x11]
.code32
rsubs.u %d1, %d15, -256

# CHECK-INST: rsubs.u %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0x11]
.code32
rsubs.u %d1, %d15, -129

# CHECK-INST: rsubs.u %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0x11]
.code32
rsubs.u %d1, %d15, -1

# CHECK-INST: rsubs.u %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0x11]
.code32
rsubs.u %d1, %d15, 0

# CHECK-INST: rsubs.u %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0x11]
.code32
rsubs.u %d1, %d15, 1

# CHECK-INST: rsubs.u %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0x11]
.code32
rsubs.u %d1, %d15, 128

# CHECK-INST: rsubs.u %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0x11]
.code32
rsubs.u %d1, %d15, 255

# CHECK-INST: rsubs.u %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0xe1]
.code32
rsubs.u %d14, %d0, -256

# CHECK-INST: rsubs.u %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0xe1]
.code32
rsubs.u %d14, %d0, -129

# CHECK-INST: rsubs.u %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0xe1]
.code32
rsubs.u %d14, %d0, -1

# CHECK-INST: rsubs.u %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0xe1]
.code32
rsubs.u %d14, %d0, 0

# CHECK-INST: rsubs.u %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0xe1]
.code32
rsubs.u %d14, %d0, 1

# CHECK-INST: rsubs.u %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0xe1]
.code32
rsubs.u %d14, %d0, 128

# CHECK-INST: rsubs.u %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0xe1]
.code32
rsubs.u %d14, %d0, 255

# CHECK-INST: rsubs.u %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0xe1]
.code32
rsubs.u %d14, %d1, -256

# CHECK-INST: rsubs.u %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0xe1]
.code32
rsubs.u %d14, %d1, -129

# CHECK-INST: rsubs.u %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0xe1]
.code32
rsubs.u %d14, %d1, -1

# CHECK-INST: rsubs.u %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0xe1]
.code32
rsubs.u %d14, %d1, 0

# CHECK-INST: rsubs.u %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0xe1]
.code32
rsubs.u %d14, %d1, 1

# CHECK-INST: rsubs.u %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0xe1]
.code32
rsubs.u %d14, %d1, 128

# CHECK-INST: rsubs.u %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0xe1]
.code32
rsubs.u %d14, %d1, 255

# CHECK-INST: rsubs.u %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0xe1]
.code32
rsubs.u %d14, %d14, -256

# CHECK-INST: rsubs.u %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0xe1]
.code32
rsubs.u %d14, %d14, -129

# CHECK-INST: rsubs.u %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0xe1]
.code32
rsubs.u %d14, %d14, -1

# CHECK-INST: rsubs.u %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0xe1]
.code32
rsubs.u %d14, %d14, 0

# CHECK-INST: rsubs.u %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0xe1]
.code32
rsubs.u %d14, %d14, 1

# CHECK-INST: rsubs.u %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0xe1]
.code32
rsubs.u %d14, %d14, 128

# CHECK-INST: rsubs.u %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0xe1]
.code32
rsubs.u %d14, %d14, 255

# CHECK-INST: rsubs.u %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0xe1]
.code32
rsubs.u %d14, %d15, -256

# CHECK-INST: rsubs.u %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0xe1]
.code32
rsubs.u %d14, %d15, -129

# CHECK-INST: rsubs.u %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0xe1]
.code32
rsubs.u %d14, %d15, -1

# CHECK-INST: rsubs.u %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0xe1]
.code32
rsubs.u %d14, %d15, 0

# CHECK-INST: rsubs.u %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0xe1]
.code32
rsubs.u %d14, %d15, 1

# CHECK-INST: rsubs.u %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0xe1]
.code32
rsubs.u %d14, %d15, 128

# CHECK-INST: rsubs.u %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0xe1]
.code32
rsubs.u %d14, %d15, 255

# CHECK-INST: rsubs.u %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0xf1]
.code32
rsubs.u %d15, %d0, -256

# CHECK-INST: rsubs.u %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0xf1]
.code32
rsubs.u %d15, %d0, -129

# CHECK-INST: rsubs.u %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0xf1]
.code32
rsubs.u %d15, %d0, -1

# CHECK-INST: rsubs.u %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0xf1]
.code32
rsubs.u %d15, %d0, 0

# CHECK-INST: rsubs.u %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0xf1]
.code32
rsubs.u %d15, %d0, 1

# CHECK-INST: rsubs.u %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0xf1]
.code32
rsubs.u %d15, %d0, 128

# CHECK-INST: rsubs.u %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0xf1]
.code32
rsubs.u %d15, %d0, 255

# CHECK-INST: rsubs.u %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0xf1]
.code32
rsubs.u %d15, %d1, -256

# CHECK-INST: rsubs.u %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0xf1]
.code32
rsubs.u %d15, %d1, -129

# CHECK-INST: rsubs.u %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0xf1]
.code32
rsubs.u %d15, %d1, -1

# CHECK-INST: rsubs.u %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0xf1]
.code32
rsubs.u %d15, %d1, 0

# CHECK-INST: rsubs.u %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0xf1]
.code32
rsubs.u %d15, %d1, 1

# CHECK-INST: rsubs.u %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0xf1]
.code32
rsubs.u %d15, %d1, 128

# CHECK-INST: rsubs.u %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0xf1]
.code32
rsubs.u %d15, %d1, 255

# CHECK-INST: rsubs.u %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0xf1]
.code32
rsubs.u %d15, %d14, -256

# CHECK-INST: rsubs.u %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0xf1]
.code32
rsubs.u %d15, %d14, -129

# CHECK-INST: rsubs.u %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0xf1]
.code32
rsubs.u %d15, %d14, -1

# CHECK-INST: rsubs.u %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0xf1]
.code32
rsubs.u %d15, %d14, 0

# CHECK-INST: rsubs.u %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0xf1]
.code32
rsubs.u %d15, %d14, 1

# CHECK-INST: rsubs.u %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0xf1]
.code32
rsubs.u %d15, %d14, 128

# CHECK-INST: rsubs.u %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0xf1]
.code32
rsubs.u %d15, %d14, 255

# CHECK-INST: rsubs.u %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0xf1]
.code32
rsubs.u %d15, %d15, -256

# CHECK-INST: rsubs.u %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0xf1]
.code32
rsubs.u %d15, %d15, -129

# CHECK-INST: rsubs.u %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0xf1]
.code32
rsubs.u %d15, %d15, -1

# CHECK-INST: rsubs.u %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0xf1]
.code32
rsubs.u %d15, %d15, 0

# CHECK-INST: rsubs.u %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0xf1]
.code32
rsubs.u %d15, %d15, 1

# CHECK-INST: rsubs.u %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0xf1]
.code32
rsubs.u %d15, %d15, 128

# CHECK-INST: rsubs.u %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0xf1]
.code32
rsubs.u %d15, %d15, 255
 
# CHECK-INST: sub %d15, %d0, %d0
# CHECK: encoding: [0x5a,0x00]
.code16
sub %d15, %d0, %d0

# CHECK-INST: sub %d15, %d0, %d1
# CHECK: encoding: [0x5a,0x10]
.code16
sub %d15, %d0, %d1

# CHECK-INST: sub %d15, %d0, %d14
# CHECK: encoding: [0x5a,0xe0]
.code16
sub %d15, %d0, %d14

# CHECK-INST: sub %d15, %d0, %d15
# CHECK: encoding: [0x5a,0xf0]
.code16
sub %d15, %d0, %d15

# CHECK-INST: sub %d15, %d1, %d0
# CHECK: encoding: [0x5a,0x01]
.code16
sub %d15, %d1, %d0

# CHECK-INST: sub %d15, %d1, %d1
# CHECK: encoding: [0x5a,0x11]
.code16
sub %d15, %d1, %d1

# CHECK-INST: sub %d15, %d1, %d14
# CHECK: encoding: [0x5a,0xe1]
.code16
sub %d15, %d1, %d14

# CHECK-INST: sub %d15, %d1, %d15
# CHECK: encoding: [0x5a,0xf1]
.code16
sub %d15, %d1, %d15

# CHECK-INST: sub %d15, %d14, %d0
# CHECK: encoding: [0x5a,0x0e]
.code16
sub %d15, %d14, %d0

# CHECK-INST: sub %d15, %d14, %d1
# CHECK: encoding: [0x5a,0x1e]
.code16
sub %d15, %d14, %d1

# CHECK-INST: sub %d15, %d14, %d14
# CHECK: encoding: [0x5a,0xee]
.code16
sub %d15, %d14, %d14

# CHECK-INST: sub %d15, %d14, %d15
# CHECK: encoding: [0x5a,0xfe]
.code16
sub %d15, %d14, %d15

# CHECK-INST: sub %d15, %d15, %d0
# CHECK: encoding: [0x5a,0x0f]
.code16
sub %d15, %d15, %d0

# CHECK-INST: sub %d15, %d15, %d1
# CHECK: encoding: [0x5a,0x1f]
.code16
sub %d15, %d15, %d1

# CHECK-INST: sub %d15, %d15, %d14
# CHECK: encoding: [0x5a,0xef]
.code16
sub %d15, %d15, %d14

# CHECK-INST: sub %d15, %d15, %d15
# CHECK: encoding: [0x5a,0xff]
.code16
sub %d15, %d15, %d15
 
# CHECK-INST: sub %d0, %d15, %d0
# CHECK: encoding: [0x52,0x00]
.code16
sub %d0, %d15, %d0

# CHECK-INST: sub %d0, %d15, %d1
# CHECK: encoding: [0x52,0x10]
.code16
sub %d0, %d15, %d1

# CHECK-INST: sub %d0, %d15, %d14
# CHECK: encoding: [0x52,0xe0]
.code16
sub %d0, %d15, %d14

# CHECK-INST: sub %d0, %d15, %d15
# CHECK: encoding: [0x52,0xf0]
.code16
sub %d0, %d15, %d15

# CHECK-INST: sub %d1, %d15, %d0
# CHECK: encoding: [0x52,0x01]
.code16
sub %d1, %d15, %d0

# CHECK-INST: sub %d1, %d15, %d1
# CHECK: encoding: [0x52,0x11]
.code16
sub %d1, %d15, %d1

# CHECK-INST: sub %d1, %d15, %d14
# CHECK: encoding: [0x52,0xe1]
.code16
sub %d1, %d15, %d14

# CHECK-INST: sub %d1, %d15, %d15
# CHECK: encoding: [0x52,0xf1]
.code16
sub %d1, %d15, %d15

# CHECK-INST: sub %d14, %d15, %d0
# CHECK: encoding: [0x52,0x0e]
.code16
sub %d14, %d15, %d0

# CHECK-INST: sub %d14, %d15, %d1
# CHECK: encoding: [0x52,0x1e]
.code16
sub %d14, %d15, %d1

# CHECK-INST: sub %d14, %d15, %d14
# CHECK: encoding: [0x52,0xee]
.code16
sub %d14, %d15, %d14

# CHECK-INST: sub %d14, %d15, %d15
# CHECK: encoding: [0x52,0xfe]
.code16
sub %d14, %d15, %d15

# CHECK-INST: sub %d0, %d0
# CHECK: encoding: [0xa2,0x00]
.code16
sub %d0, %d0

# CHECK-INST: sub %d0, %d1
# CHECK: encoding: [0xa2,0x10]
.code16
sub %d0, %d1

# CHECK-INST: sub %d0, %d14
# CHECK: encoding: [0xa2,0xe0]
.code16
sub %d0, %d14

# CHECK-INST: sub %d0, %d15
# CHECK: encoding: [0xa2,0xf0]
.code16
sub %d0, %d15

# CHECK-INST: sub %d1, %d0
# CHECK: encoding: [0xa2,0x01]
.code16
sub %d1, %d0

# CHECK-INST: sub %d1, %d1
# CHECK: encoding: [0xa2,0x11]
.code16
sub %d1, %d1

# CHECK-INST: sub %d1, %d14
# CHECK: encoding: [0xa2,0xe1]
.code16
sub %d1, %d14

# CHECK-INST: sub %d1, %d15
# CHECK: encoding: [0xa2,0xf1]
.code16
sub %d1, %d15

# CHECK-INST: sub %d14, %d0
# CHECK: encoding: [0xa2,0x0e]
.code16
sub %d14, %d0

# CHECK-INST: sub %d14, %d1
# CHECK: encoding: [0xa2,0x1e]
.code16
sub %d14, %d1

# CHECK-INST: sub %d14, %d14
# CHECK: encoding: [0xa2,0xee]
.code16
sub %d14, %d14

# CHECK-INST: sub %d14, %d15
# CHECK: encoding: [0xa2,0xfe]
.code16
sub %d14, %d15

# CHECK-INST: sub %d15, %d0
# CHECK: encoding: [0xa2,0x0f]
.code16
sub %d15, %d0

# CHECK-INST: sub %d15, %d1
# CHECK: encoding: [0xa2,0x1f]
.code16
sub %d15, %d1

# CHECK-INST: sub %d15, %d14
# CHECK: encoding: [0xa2,0xef]
.code16
sub %d15, %d14

# CHECK-INST: sub %d15, %d15
# CHECK: encoding: [0xa2,0xff]
.code16
sub %d15, %d15
 
# CHECK-INST: sub %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x00]
.code32
sub %d0, %d0, %d0

# CHECK-INST: sub %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0x00]
.code32
sub %d0, %d0, %d1

# CHECK-INST: sub %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0x00]
.code32
sub %d0, %d0, %d14

# CHECK-INST: sub %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0x00]
.code32
sub %d0, %d0, %d15

# CHECK-INST: sub %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0x00]
.code32
sub %d0, %d1, %d0

# CHECK-INST: sub %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0x00]
.code32
sub %d0, %d1, %d1

# CHECK-INST: sub %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0x00]
.code32
sub %d0, %d1, %d14

# CHECK-INST: sub %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0x00]
.code32
sub %d0, %d1, %d15

# CHECK-INST: sub %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0x00]
.code32
sub %d0, %d14, %d0

# CHECK-INST: sub %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0x00]
.code32
sub %d0, %d14, %d1

# CHECK-INST: sub %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0x00]
.code32
sub %d0, %d14, %d14

# CHECK-INST: sub %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0x00]
.code32
sub %d0, %d14, %d15

# CHECK-INST: sub %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x10]
.code32
sub %d1, %d0, %d0

# CHECK-INST: sub %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0x10]
.code32
sub %d1, %d0, %d1

# CHECK-INST: sub %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0x10]
.code32
sub %d1, %d0, %d14

# CHECK-INST: sub %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0x10]
.code32
sub %d1, %d0, %d15

# CHECK-INST: sub %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0x10]
.code32
sub %d1, %d1, %d0

# CHECK-INST: sub %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0x10]
.code32
sub %d1, %d1, %d1

# CHECK-INST: sub %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0x10]
.code32
sub %d1, %d1, %d14

# CHECK-INST: sub %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0x10]
.code32
sub %d1, %d1, %d15

# CHECK-INST: sub %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0x10]
.code32
sub %d1, %d14, %d0

# CHECK-INST: sub %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0x10]
.code32
sub %d1, %d14, %d1

# CHECK-INST: sub %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0x10]
.code32
sub %d1, %d14, %d14

# CHECK-INST: sub %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0x10]
.code32
sub %d1, %d14, %d15

# CHECK-INST: sub %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0xe0]
.code32
sub %d14, %d0, %d0

# CHECK-INST: sub %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0xe0]
.code32
sub %d14, %d0, %d1

# CHECK-INST: sub %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0xe0]
.code32
sub %d14, %d0, %d14

# CHECK-INST: sub %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0xe0]
.code32
sub %d14, %d0, %d15

# CHECK-INST: sub %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0xe0]
.code32
sub %d14, %d1, %d0

# CHECK-INST: sub %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0xe0]
.code32
sub %d14, %d1, %d1

# CHECK-INST: sub %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0xe0]
.code32
sub %d14, %d1, %d14

# CHECK-INST: sub %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0xe0]
.code32
sub %d14, %d1, %d15

# CHECK-INST: sub %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0xe0]
.code32
sub %d14, %d14, %d0

# CHECK-INST: sub %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0xe0]
.code32
sub %d14, %d14, %d1

# CHECK-INST: sub %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0xe0]
.code32
sub %d14, %d14, %d14

# CHECK-INST: sub %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0xe0]
.code32
sub %d14, %d14, %d15

# CHECK-INST: subc %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xd0,0x00]
.code32
subc %d0, %d0, %d0

# CHECK-INST: subc %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xd0,0x00]
.code32
subc %d0, %d0, %d1

# CHECK-INST: subc %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xd0,0x00]
.code32
subc %d0, %d0, %d14

# CHECK-INST: subc %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xd0,0x00]
.code32
subc %d0, %d0, %d15

# CHECK-INST: subc %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xd0,0x00]
.code32
subc %d0, %d1, %d0

# CHECK-INST: subc %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xd0,0x00]
.code32
subc %d0, %d1, %d1

# CHECK-INST: subc %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xd0,0x00]
.code32
subc %d0, %d1, %d14

# CHECK-INST: subc %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xd0,0x00]
.code32
subc %d0, %d1, %d15

# CHECK-INST: subc %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xd0,0x00]
.code32
subc %d0, %d14, %d0

# CHECK-INST: subc %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xd0,0x00]
.code32
subc %d0, %d14, %d1

# CHECK-INST: subc %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xd0,0x00]
.code32
subc %d0, %d14, %d14

# CHECK-INST: subc %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xd0,0x00]
.code32
subc %d0, %d14, %d15

# CHECK-INST: subc %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xd0,0x00]
.code32
subc %d0, %d15, %d0

# CHECK-INST: subc %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xd0,0x00]
.code32
subc %d0, %d15, %d1

# CHECK-INST: subc %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xd0,0x00]
.code32
subc %d0, %d15, %d14

# CHECK-INST: subc %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xd0,0x00]
.code32
subc %d0, %d15, %d15

# CHECK-INST: subc %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xd0,0x10]
.code32
subc %d1, %d0, %d0

# CHECK-INST: subc %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xd0,0x10]
.code32
subc %d1, %d0, %d1

# CHECK-INST: subc %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xd0,0x10]
.code32
subc %d1, %d0, %d14

# CHECK-INST: subc %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xd0,0x10]
.code32
subc %d1, %d0, %d15

# CHECK-INST: subc %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xd0,0x10]
.code32
subc %d1, %d1, %d0

# CHECK-INST: subc %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xd0,0x10]
.code32
subc %d1, %d1, %d1

# CHECK-INST: subc %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xd0,0x10]
.code32
subc %d1, %d1, %d14

# CHECK-INST: subc %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xd0,0x10]
.code32
subc %d1, %d1, %d15

# CHECK-INST: subc %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xd0,0x10]
.code32
subc %d1, %d14, %d0

# CHECK-INST: subc %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xd0,0x10]
.code32
subc %d1, %d14, %d1

# CHECK-INST: subc %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xd0,0x10]
.code32
subc %d1, %d14, %d14

# CHECK-INST: subc %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xd0,0x10]
.code32
subc %d1, %d14, %d15

# CHECK-INST: subc %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xd0,0x10]
.code32
subc %d1, %d15, %d0

# CHECK-INST: subc %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xd0,0x10]
.code32
subc %d1, %d15, %d1

# CHECK-INST: subc %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xd0,0x10]
.code32
subc %d1, %d15, %d14

# CHECK-INST: subc %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xd0,0x10]
.code32
subc %d1, %d15, %d15

# CHECK-INST: subc %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xd0,0xe0]
.code32
subc %d14, %d0, %d0

# CHECK-INST: subc %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xd0,0xe0]
.code32
subc %d14, %d0, %d1

# CHECK-INST: subc %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xd0,0xe0]
.code32
subc %d14, %d0, %d14

# CHECK-INST: subc %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xd0,0xe0]
.code32
subc %d14, %d0, %d15

# CHECK-INST: subc %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xd0,0xe0]
.code32
subc %d14, %d1, %d0

# CHECK-INST: subc %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xd0,0xe0]
.code32
subc %d14, %d1, %d1

# CHECK-INST: subc %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xd0,0xe0]
.code32
subc %d14, %d1, %d14

# CHECK-INST: subc %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xd0,0xe0]
.code32
subc %d14, %d1, %d15

# CHECK-INST: subc %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xd0,0xe0]
.code32
subc %d14, %d14, %d0

# CHECK-INST: subc %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xd0,0xe0]
.code32
subc %d14, %d14, %d1

# CHECK-INST: subc %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xd0,0xe0]
.code32
subc %d14, %d14, %d14

# CHECK-INST: subc %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xd0,0xe0]
.code32
subc %d14, %d14, %d15

# CHECK-INST: subc %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xd0,0xe0]
.code32
subc %d14, %d15, %d0

# CHECK-INST: subc %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xd0,0xe0]
.code32
subc %d14, %d15, %d1

# CHECK-INST: subc %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xd0,0xe0]
.code32
subc %d14, %d15, %d14

# CHECK-INST: subc %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xd0,0xe0]
.code32
subc %d14, %d15, %d15

# CHECK-INST: subc %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xd0,0xf0]
.code32
subc %d15, %d0, %d0

# CHECK-INST: subc %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xd0,0xf0]
.code32
subc %d15, %d0, %d1

# CHECK-INST: subc %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xd0,0xf0]
.code32
subc %d15, %d0, %d14

# CHECK-INST: subc %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xd0,0xf0]
.code32
subc %d15, %d0, %d15

# CHECK-INST: subc %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xd0,0xf0]
.code32
subc %d15, %d1, %d0

# CHECK-INST: subc %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xd0,0xf0]
.code32
subc %d15, %d1, %d1

# CHECK-INST: subc %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xd0,0xf0]
.code32
subc %d15, %d1, %d14

# CHECK-INST: subc %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xd0,0xf0]
.code32
subc %d15, %d1, %d15

# CHECK-INST: subc %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xd0,0xf0]
.code32
subc %d15, %d14, %d0

# CHECK-INST: subc %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xd0,0xf0]
.code32
subc %d15, %d14, %d1

# CHECK-INST: subc %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xd0,0xf0]
.code32
subc %d15, %d14, %d14

# CHECK-INST: subc %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xd0,0xf0]
.code32
subc %d15, %d14, %d15

# CHECK-INST: subc %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xd0,0xf0]
.code32
subc %d15, %d15, %d0

# CHECK-INST: subc %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xd0,0xf0]
.code32
subc %d15, %d15, %d1

# CHECK-INST: subc %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xd0,0xf0]
.code32
subc %d15, %d15, %d14

# CHECK-INST: subc %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xd0,0xf0]
.code32
subc %d15, %d15, %d15
 
# CHECK-INST: subs %d0, %d0
# CHECK: encoding: [0x62,0x00]
.code16
subs %d0, %d0

# CHECK-INST: subs %d0, %d1
# CHECK: encoding: [0x62,0x10]
.code16
subs %d0, %d1

# CHECK-INST: subs %d0, %d14
# CHECK: encoding: [0x62,0xe0]
.code16
subs %d0, %d14

# CHECK-INST: subs %d0, %d15
# CHECK: encoding: [0x62,0xf0]
.code16
subs %d0, %d15

# CHECK-INST: subs %d1, %d0
# CHECK: encoding: [0x62,0x01]
.code16
subs %d1, %d0

# CHECK-INST: subs %d1, %d1
# CHECK: encoding: [0x62,0x11]
.code16
subs %d1, %d1

# CHECK-INST: subs %d1, %d14
# CHECK: encoding: [0x62,0xe1]
.code16
subs %d1, %d14

# CHECK-INST: subs %d1, %d15
# CHECK: encoding: [0x62,0xf1]
.code16
subs %d1, %d15

# CHECK-INST: subs %d14, %d0
# CHECK: encoding: [0x62,0x0e]
.code16
subs %d14, %d0

# CHECK-INST: subs %d14, %d1
# CHECK: encoding: [0x62,0x1e]
.code16
subs %d14, %d1

# CHECK-INST: subs %d14, %d14
# CHECK: encoding: [0x62,0xee]
.code16
subs %d14, %d14

# CHECK-INST: subs %d14, %d15
# CHECK: encoding: [0x62,0xfe]
.code16
subs %d14, %d15

# CHECK-INST: subs %d15, %d0
# CHECK: encoding: [0x62,0x0f]
.code16
subs %d15, %d0

# CHECK-INST: subs %d15, %d1
# CHECK: encoding: [0x62,0x1f]
.code16
subs %d15, %d1

# CHECK-INST: subs %d15, %d14
# CHECK: encoding: [0x62,0xef]
.code16
subs %d15, %d14

# CHECK-INST: subs %d15, %d15
# CHECK: encoding: [0x62,0xff]
.code16
subs %d15, %d15
 
# CHECK-INST: subs %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x00]
.code32
subs %d0, %d0, %d0

# CHECK-INST: subs %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0x00]
.code32
subs %d0, %d0, %d1

# CHECK-INST: subs %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0x00]
.code32
subs %d0, %d0, %d14

# CHECK-INST: subs %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0x00]
.code32
subs %d0, %d0, %d15

# CHECK-INST: subs %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0x00]
.code32
subs %d0, %d1, %d0

# CHECK-INST: subs %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0x00]
.code32
subs %d0, %d1, %d1

# CHECK-INST: subs %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0x00]
.code32
subs %d0, %d1, %d14

# CHECK-INST: subs %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0x00]
.code32
subs %d0, %d1, %d15

# CHECK-INST: subs %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0x00]
.code32
subs %d0, %d14, %d0

# CHECK-INST: subs %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0x00]
.code32
subs %d0, %d14, %d1

# CHECK-INST: subs %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0x00]
.code32
subs %d0, %d14, %d14

# CHECK-INST: subs %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0x00]
.code32
subs %d0, %d14, %d15

# CHECK-INST: subs %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0x00]
.code32
subs %d0, %d15, %d0

# CHECK-INST: subs %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0x00]
.code32
subs %d0, %d15, %d1

# CHECK-INST: subs %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0x00]
.code32
subs %d0, %d15, %d14

# CHECK-INST: subs %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0x00]
.code32
subs %d0, %d15, %d15

# CHECK-INST: subs %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x10]
.code32
subs %d1, %d0, %d0

# CHECK-INST: subs %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0x10]
.code32
subs %d1, %d0, %d1

# CHECK-INST: subs %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0x10]
.code32
subs %d1, %d0, %d14

# CHECK-INST: subs %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0x10]
.code32
subs %d1, %d0, %d15

# CHECK-INST: subs %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0x10]
.code32
subs %d1, %d1, %d0

# CHECK-INST: subs %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0x10]
.code32
subs %d1, %d1, %d1

# CHECK-INST: subs %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0x10]
.code32
subs %d1, %d1, %d14

# CHECK-INST: subs %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0x10]
.code32
subs %d1, %d1, %d15

# CHECK-INST: subs %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0x10]
.code32
subs %d1, %d14, %d0

# CHECK-INST: subs %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0x10]
.code32
subs %d1, %d14, %d1

# CHECK-INST: subs %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0x10]
.code32
subs %d1, %d14, %d14

# CHECK-INST: subs %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0x10]
.code32
subs %d1, %d14, %d15

# CHECK-INST: subs %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0x10]
.code32
subs %d1, %d15, %d0

# CHECK-INST: subs %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0x10]
.code32
subs %d1, %d15, %d1

# CHECK-INST: subs %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0x10]
.code32
subs %d1, %d15, %d14

# CHECK-INST: subs %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0x10]
.code32
subs %d1, %d15, %d15

# CHECK-INST: subs %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0xe0]
.code32
subs %d14, %d0, %d0

# CHECK-INST: subs %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0xe0]
.code32
subs %d14, %d0, %d1

# CHECK-INST: subs %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0xe0]
.code32
subs %d14, %d0, %d14

# CHECK-INST: subs %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0xe0]
.code32
subs %d14, %d0, %d15

# CHECK-INST: subs %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0xe0]
.code32
subs %d14, %d1, %d0

# CHECK-INST: subs %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0xe0]
.code32
subs %d14, %d1, %d1

# CHECK-INST: subs %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0xe0]
.code32
subs %d14, %d1, %d14

# CHECK-INST: subs %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0xe0]
.code32
subs %d14, %d1, %d15

# CHECK-INST: subs %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0xe0]
.code32
subs %d14, %d14, %d0

# CHECK-INST: subs %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0xe0]
.code32
subs %d14, %d14, %d1

# CHECK-INST: subs %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0xe0]
.code32
subs %d14, %d14, %d14

# CHECK-INST: subs %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0xe0]
.code32
subs %d14, %d14, %d15

# CHECK-INST: subs %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0xe0]
.code32
subs %d14, %d15, %d0

# CHECK-INST: subs %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0xe0]
.code32
subs %d14, %d15, %d1

# CHECK-INST: subs %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0xe0]
.code32
subs %d14, %d15, %d14

# CHECK-INST: subs %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0xe0]
.code32
subs %d14, %d15, %d15

# CHECK-INST: subs %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0xf0]
.code32
subs %d15, %d0, %d0

# CHECK-INST: subs %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0xf0]
.code32
subs %d15, %d0, %d1

# CHECK-INST: subs %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0xf0]
.code32
subs %d15, %d0, %d14

# CHECK-INST: subs %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0xf0]
.code32
subs %d15, %d0, %d15

# CHECK-INST: subs %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0xf0]
.code32
subs %d15, %d1, %d0

# CHECK-INST: subs %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0xf0]
.code32
subs %d15, %d1, %d1

# CHECK-INST: subs %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0xf0]
.code32
subs %d15, %d1, %d14

# CHECK-INST: subs %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0xf0]
.code32
subs %d15, %d1, %d15

# CHECK-INST: subs %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0xf0]
.code32
subs %d15, %d14, %d0

# CHECK-INST: subs %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0xf0]
.code32
subs %d15, %d14, %d1

# CHECK-INST: subs %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0xf0]
.code32
subs %d15, %d14, %d14

# CHECK-INST: subs %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0xf0]
.code32
subs %d15, %d14, %d15

# CHECK-INST: subs %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0xf0]
.code32
subs %d15, %d15, %d0

# CHECK-INST: subs %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0xf0]
.code32
subs %d15, %d15, %d1

# CHECK-INST: subs %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0xf0]
.code32
subs %d15, %d15, %d14

# CHECK-INST: subs %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0xf0]
.code32
subs %d15, %d15, %d15
 
# CHECK-INST: subs.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0x00]
.code32
subs.u %d0, %d0, %d0

# CHECK-INST: subs.u %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0x00]
.code32
subs.u %d0, %d0, %d1

# CHECK-INST: subs.u %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0x00]
.code32
subs.u %d0, %d0, %d14

# CHECK-INST: subs.u %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0x00]
.code32
subs.u %d0, %d0, %d15

# CHECK-INST: subs.u %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0x00]
.code32
subs.u %d0, %d1, %d0

# CHECK-INST: subs.u %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0x00]
.code32
subs.u %d0, %d1, %d1

# CHECK-INST: subs.u %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0x00]
.code32
subs.u %d0, %d1, %d14

# CHECK-INST: subs.u %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0x00]
.code32
subs.u %d0, %d1, %d15

# CHECK-INST: subs.u %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0x00]
.code32
subs.u %d0, %d14, %d0

# CHECK-INST: subs.u %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0x00]
.code32
subs.u %d0, %d14, %d1

# CHECK-INST: subs.u %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0x00]
.code32
subs.u %d0, %d14, %d14

# CHECK-INST: subs.u %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0x00]
.code32
subs.u %d0, %d14, %d15

# CHECK-INST: subs.u %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0x00]
.code32
subs.u %d0, %d15, %d0

# CHECK-INST: subs.u %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0x00]
.code32
subs.u %d0, %d15, %d1

# CHECK-INST: subs.u %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0x00]
.code32
subs.u %d0, %d15, %d14

# CHECK-INST: subs.u %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0x00]
.code32
subs.u %d0, %d15, %d15

# CHECK-INST: subs.u %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0x10]
.code32
subs.u %d1, %d0, %d0

# CHECK-INST: subs.u %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0x10]
.code32
subs.u %d1, %d0, %d1

# CHECK-INST: subs.u %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0x10]
.code32
subs.u %d1, %d0, %d14

# CHECK-INST: subs.u %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0x10]
.code32
subs.u %d1, %d0, %d15

# CHECK-INST: subs.u %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0x10]
.code32
subs.u %d1, %d1, %d0

# CHECK-INST: subs.u %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0x10]
.code32
subs.u %d1, %d1, %d1

# CHECK-INST: subs.u %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0x10]
.code32
subs.u %d1, %d1, %d14

# CHECK-INST: subs.u %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0x10]
.code32
subs.u %d1, %d1, %d15

# CHECK-INST: subs.u %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0x10]
.code32
subs.u %d1, %d14, %d0

# CHECK-INST: subs.u %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0x10]
.code32
subs.u %d1, %d14, %d1

# CHECK-INST: subs.u %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0x10]
.code32
subs.u %d1, %d14, %d14

# CHECK-INST: subs.u %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0x10]
.code32
subs.u %d1, %d14, %d15

# CHECK-INST: subs.u %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0x10]
.code32
subs.u %d1, %d15, %d0

# CHECK-INST: subs.u %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0x10]
.code32
subs.u %d1, %d15, %d1

# CHECK-INST: subs.u %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0x10]
.code32
subs.u %d1, %d15, %d14

# CHECK-INST: subs.u %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0x10]
.code32
subs.u %d1, %d15, %d15

# CHECK-INST: subs.u %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0xe0]
.code32
subs.u %d14, %d0, %d0

# CHECK-INST: subs.u %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0xe0]
.code32
subs.u %d14, %d0, %d1

# CHECK-INST: subs.u %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0xe0]
.code32
subs.u %d14, %d0, %d14

# CHECK-INST: subs.u %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0xe0]
.code32
subs.u %d14, %d0, %d15

# CHECK-INST: subs.u %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0xe0]
.code32
subs.u %d14, %d1, %d0

# CHECK-INST: subs.u %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0xe0]
.code32
subs.u %d14, %d1, %d1

# CHECK-INST: subs.u %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0xe0]
.code32
subs.u %d14, %d1, %d14

# CHECK-INST: subs.u %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0xe0]
.code32
subs.u %d14, %d1, %d15

# CHECK-INST: subs.u %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0xe0]
.code32
subs.u %d14, %d14, %d0

# CHECK-INST: subs.u %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0xe0]
.code32
subs.u %d14, %d14, %d1

# CHECK-INST: subs.u %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0xe0]
.code32
subs.u %d14, %d14, %d14

# CHECK-INST: subs.u %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0xe0]
.code32
subs.u %d14, %d14, %d15

# CHECK-INST: subs.u %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0xe0]
.code32
subs.u %d14, %d15, %d0

# CHECK-INST: subs.u %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0xe0]
.code32
subs.u %d14, %d15, %d1

# CHECK-INST: subs.u %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0xe0]
.code32
subs.u %d14, %d15, %d14

# CHECK-INST: subs.u %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0xe0]
.code32
subs.u %d14, %d15, %d15

# CHECK-INST: subs.u %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0xf0]
.code32
subs.u %d15, %d0, %d0

# CHECK-INST: subs.u %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0xf0]
.code32
subs.u %d15, %d0, %d1

# CHECK-INST: subs.u %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0xf0]
.code32
subs.u %d15, %d0, %d14

# CHECK-INST: subs.u %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0xf0]
.code32
subs.u %d15, %d0, %d15

# CHECK-INST: subs.u %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0xf0]
.code32
subs.u %d15, %d1, %d0

# CHECK-INST: subs.u %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0xf0]
.code32
subs.u %d15, %d1, %d1

# CHECK-INST: subs.u %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0xf0]
.code32
subs.u %d15, %d1, %d14

# CHECK-INST: subs.u %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0xf0]
.code32
subs.u %d15, %d1, %d15

# CHECK-INST: subs.u %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0xf0]
.code32
subs.u %d15, %d14, %d0

# CHECK-INST: subs.u %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0xf0]
.code32
subs.u %d15, %d14, %d1

# CHECK-INST: subs.u %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0xf0]
.code32
subs.u %d15, %d14, %d14

# CHECK-INST: subs.u %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0xf0]
.code32
subs.u %d15, %d14, %d15

# CHECK-INST: subs.u %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0xf0]
.code32
subs.u %d15, %d15, %d0

# CHECK-INST: subs.u %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0xf0]
.code32
subs.u %d15, %d15, %d1

# CHECK-INST: subs.u %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0xf0]
.code32
subs.u %d15, %d15, %d14

# CHECK-INST: subs.u %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0xf0]
.code32
subs.u %d15, %d15, %d15
 
# CHECK-INST: subx %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0x00]
.code32
subx %d0, %d0, %d0

# CHECK-INST: subx %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0x00]
.code32
subx %d0, %d0, %d1

# CHECK-INST: subx %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0x00]
.code32
subx %d0, %d0, %d14

# CHECK-INST: subx %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0x00]
.code32
subx %d0, %d0, %d15

# CHECK-INST: subx %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xc0,0x00]
.code32
subx %d0, %d1, %d0

# CHECK-INST: subx %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xc0,0x00]
.code32
subx %d0, %d1, %d1

# CHECK-INST: subx %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xc0,0x00]
.code32
subx %d0, %d1, %d14

# CHECK-INST: subx %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xc0,0x00]
.code32
subx %d0, %d1, %d15

# CHECK-INST: subx %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xc0,0x00]
.code32
subx %d0, %d14, %d0

# CHECK-INST: subx %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xc0,0x00]
.code32
subx %d0, %d14, %d1

# CHECK-INST: subx %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xc0,0x00]
.code32
subx %d0, %d14, %d14

# CHECK-INST: subx %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xc0,0x00]
.code32
subx %d0, %d14, %d15

# CHECK-INST: subx %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xc0,0x00]
.code32
subx %d0, %d15, %d0

# CHECK-INST: subx %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xc0,0x00]
.code32
subx %d0, %d15, %d1

# CHECK-INST: subx %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xc0,0x00]
.code32
subx %d0, %d15, %d14

# CHECK-INST: subx %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xc0,0x00]
.code32
subx %d0, %d15, %d15

# CHECK-INST: subx %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0x10]
.code32
subx %d1, %d0, %d0

# CHECK-INST: subx %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0x10]
.code32
subx %d1, %d0, %d1

# CHECK-INST: subx %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0x10]
.code32
subx %d1, %d0, %d14

# CHECK-INST: subx %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0x10]
.code32
subx %d1, %d0, %d15

# CHECK-INST: subx %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xc0,0x10]
.code32
subx %d1, %d1, %d0

# CHECK-INST: subx %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xc0,0x10]
.code32
subx %d1, %d1, %d1

# CHECK-INST: subx %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xc0,0x10]
.code32
subx %d1, %d1, %d14

# CHECK-INST: subx %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xc0,0x10]
.code32
subx %d1, %d1, %d15

# CHECK-INST: subx %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xc0,0x10]
.code32
subx %d1, %d14, %d0

# CHECK-INST: subx %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xc0,0x10]
.code32
subx %d1, %d14, %d1

# CHECK-INST: subx %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xc0,0x10]
.code32
subx %d1, %d14, %d14

# CHECK-INST: subx %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xc0,0x10]
.code32
subx %d1, %d14, %d15

# CHECK-INST: subx %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xc0,0x10]
.code32
subx %d1, %d15, %d0

# CHECK-INST: subx %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xc0,0x10]
.code32
subx %d1, %d15, %d1

# CHECK-INST: subx %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xc0,0x10]
.code32
subx %d1, %d15, %d14

# CHECK-INST: subx %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xc0,0x10]
.code32
subx %d1, %d15, %d15

# CHECK-INST: subx %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0xe0]
.code32
subx %d14, %d0, %d0

# CHECK-INST: subx %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0xe0]
.code32
subx %d14, %d0, %d1

# CHECK-INST: subx %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0xe0]
.code32
subx %d14, %d0, %d14

# CHECK-INST: subx %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0xe0]
.code32
subx %d14, %d0, %d15

# CHECK-INST: subx %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xc0,0xe0]
.code32
subx %d14, %d1, %d0

# CHECK-INST: subx %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xc0,0xe0]
.code32
subx %d14, %d1, %d1

# CHECK-INST: subx %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xc0,0xe0]
.code32
subx %d14, %d1, %d14

# CHECK-INST: subx %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xc0,0xe0]
.code32
subx %d14, %d1, %d15

# CHECK-INST: subx %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xc0,0xe0]
.code32
subx %d14, %d14, %d0

# CHECK-INST: subx %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xc0,0xe0]
.code32
subx %d14, %d14, %d1

# CHECK-INST: subx %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xc0,0xe0]
.code32
subx %d14, %d14, %d14

# CHECK-INST: subx %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xc0,0xe0]
.code32
subx %d14, %d14, %d15

# CHECK-INST: subx %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xc0,0xe0]
.code32
subx %d14, %d15, %d0

# CHECK-INST: subx %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xc0,0xe0]
.code32
subx %d14, %d15, %d1

# CHECK-INST: subx %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xc0,0xe0]
.code32
subx %d14, %d15, %d14

# CHECK-INST: subx %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xc0,0xe0]
.code32
subx %d14, %d15, %d15

# CHECK-INST: subx %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0xf0]
.code32
subx %d15, %d0, %d0

# CHECK-INST: subx %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0xf0]
.code32
subx %d15, %d0, %d1

# CHECK-INST: subx %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0xf0]
.code32
subx %d15, %d0, %d14

# CHECK-INST: subx %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0xf0]
.code32
subx %d15, %d0, %d15

# CHECK-INST: subx %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xc0,0xf0]
.code32
subx %d15, %d1, %d0

# CHECK-INST: subx %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xc0,0xf0]
.code32
subx %d15, %d1, %d1

# CHECK-INST: subx %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xc0,0xf0]
.code32
subx %d15, %d1, %d14

# CHECK-INST: subx %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xc0,0xf0]
.code32
subx %d15, %d1, %d15

# CHECK-INST: subx %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xc0,0xf0]
.code32
subx %d15, %d14, %d0

# CHECK-INST: subx %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xc0,0xf0]
.code32
subx %d15, %d14, %d1

# CHECK-INST: subx %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xc0,0xf0]
.code32
subx %d15, %d14, %d14

# CHECK-INST: subx %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xc0,0xf0]
.code32
subx %d15, %d14, %d15

# CHECK-INST: subx %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xc0,0xf0]
.code32
subx %d15, %d15, %d0

# CHECK-INST: subx %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xc0,0xf0]
.code32
subx %d15, %d15, %d1

# CHECK-INST: subx %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xc0,0xf0]
.code32
subx %d15, %d15, %d14

# CHECK-INST: subx %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xc0,0xf0]
.code32
subx %d15, %d15, %d15


### Test if 16 bit instructions are generated by default

# CHECK-INST: add %d15, %d0, %d0
# CHECK: encoding: [0x1a,0x00]
add %d15, %d0, %d0

# CHECK-INST: add %d15, %d0, 0
# CHECK: encoding: [0x9a,0x00]
add %d15, %d0, 0

# CHECK-INST: add %d0, %d15, %d15
# CHECK: encoding: [0x12,0xf0]
add %d0, %d15, %d15

# CHECK-INST: add %d0, %d15, 0
# CHECK: encoding: [0x92,0x00]
add %d0, %d15, 0

# CHECK-INST: sub %d15, %d0, %d0
# CHECK: encoding: [0x5a,0x00]
sub %d15, %d0, %d0

# CHECK-INST: sub %d0, %d15, %d0
# CHECK: encoding: [0x52,0x00]
sub %d0, %d15, %d0
