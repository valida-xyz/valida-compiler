# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s \
# RUN:     | llvm-objdump -d - | FileCheck -check-prefix=CHECK-INST %s


# CHECK-INST: eq %d15, %d0, %d0
# CHECK: encoding: [0x3a,0x00]
.code16
eq %d15, %d0, %d0

# CHECK-INST: eq %d15, %d0, %d1
# CHECK: encoding: [0x3a,0x10]
.code16
eq %d15, %d0, %d1

# CHECK-INST: eq %d15, %d0, %d14
# CHECK: encoding: [0x3a,0xe0]
.code16
eq %d15, %d0, %d14

# CHECK-INST: eq %d15, %d0, %d15
# CHECK: encoding: [0x3a,0xf0]
.code16
eq %d15, %d0, %d15

# CHECK-INST: eq %d15, %d1, %d0
# CHECK: encoding: [0x3a,0x01]
.code16
eq %d15, %d1, %d0

# CHECK-INST: eq %d15, %d1, %d1
# CHECK: encoding: [0x3a,0x11]
.code16
eq %d15, %d1, %d1

# CHECK-INST: eq %d15, %d1, %d14
# CHECK: encoding: [0x3a,0xe1]
.code16
eq %d15, %d1, %d14

# CHECK-INST: eq %d15, %d1, %d15
# CHECK: encoding: [0x3a,0xf1]
.code16
eq %d15, %d1, %d15

# CHECK-INST: eq %d15, %d14, %d0
# CHECK: encoding: [0x3a,0x0e]
.code16
eq %d15, %d14, %d0

# CHECK-INST: eq %d15, %d14, %d1
# CHECK: encoding: [0x3a,0x1e]
.code16
eq %d15, %d14, %d1

# CHECK-INST: eq %d15, %d14, %d14
# CHECK: encoding: [0x3a,0xee]
.code16
eq %d15, %d14, %d14

# CHECK-INST: eq %d15, %d14, %d15
# CHECK: encoding: [0x3a,0xfe]
.code16
eq %d15, %d14, %d15

# CHECK-INST: eq %d15, %d15, %d0
# CHECK: encoding: [0x3a,0x0f]
.code16
eq %d15, %d15, %d0

# CHECK-INST: eq %d15, %d15, %d1
# CHECK: encoding: [0x3a,0x1f]
.code16
eq %d15, %d15, %d1

# CHECK-INST: eq %d15, %d15, %d14
# CHECK: encoding: [0x3a,0xef]
.code16
eq %d15, %d15, %d14

# CHECK-INST: eq %d15, %d15, %d15
# CHECK: encoding: [0x3a,0xff]
.code16
eq %d15, %d15, %d15

# CHECK-INST: eq %d15, %d0, -8
# CHECK: encoding: [0xba,0x80]
.code16
eq %d15, %d0, -8

# CHECK-INST: eq %d15, %d0, -1
# CHECK: encoding: [0xba,0xf0]
.code16
eq %d15, %d0, -1

# CHECK-INST: eq %d15, %d0, 0
# CHECK: encoding: [0xba,0x00]
.code16
eq %d15, %d0, 0

# CHECK-INST: eq %d15, %d0, 1
# CHECK: encoding: [0xba,0x10]
.code16
eq %d15, %d0, 1

# CHECK-INST: eq %d15, %d0, 7
# CHECK: encoding: [0xba,0x70]
.code16
eq %d15, %d0, 7

# CHECK-INST: eq %d15, %d1, -8
# CHECK: encoding: [0xba,0x81]
.code16
eq %d15, %d1, -8

# CHECK-INST: eq %d15, %d1, -1
# CHECK: encoding: [0xba,0xf1]
.code16
eq %d15, %d1, -1

# CHECK-INST: eq %d15, %d1, 0
# CHECK: encoding: [0xba,0x01]
.code16
eq %d15, %d1, 0

# CHECK-INST: eq %d15, %d1, 1
# CHECK: encoding: [0xba,0x11]
.code16
eq %d15, %d1, 1

# CHECK-INST: eq %d15, %d1, 7
# CHECK: encoding: [0xba,0x71]
.code16
eq %d15, %d1, 7

# CHECK-INST: eq %d15, %d14, -8
# CHECK: encoding: [0xba,0x8e]
.code16
eq %d15, %d14, -8

# CHECK-INST: eq %d15, %d14, -1
# CHECK: encoding: [0xba,0xfe]
.code16
eq %d15, %d14, -1

# CHECK-INST: eq %d15, %d14, 0
# CHECK: encoding: [0xba,0x0e]
.code16
eq %d15, %d14, 0

# CHECK-INST: eq %d15, %d14, 1
# CHECK: encoding: [0xba,0x1e]
.code16
eq %d15, %d14, 1

# CHECK-INST: eq %d15, %d14, 7
# CHECK: encoding: [0xba,0x7e]
.code16
eq %d15, %d14, 7

# CHECK-INST: eq %d15, %d15, -8
# CHECK: encoding: [0xba,0x8f]
.code16
eq %d15, %d15, -8

# CHECK-INST: eq %d15, %d15, -1
# CHECK: encoding: [0xba,0xff]
.code16
eq %d15, %d15, -1

# CHECK-INST: eq %d15, %d15, 0
# CHECK: encoding: [0xba,0x0f]
.code16
eq %d15, %d15, 0

# CHECK-INST: eq %d15, %d15, 1
# CHECK: encoding: [0xba,0x1f]
.code16
eq %d15, %d15, 1

# CHECK-INST: eq %d15, %d15, 7
# CHECK: encoding: [0xba,0x7f]
.code16
eq %d15, %d15, 7

# CHECK-INST: eq %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x01]
.code32
eq %d0, %d0, %d0

# CHECK-INST: eq %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x01]
.code32
eq %d0, %d0, %d1

# CHECK-INST: eq %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x01]
.code32
eq %d0, %d0, %d14

# CHECK-INST: eq %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x01]
.code32
eq %d0, %d0, %d15

# CHECK-INST: eq %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0x01]
.code32
eq %d0, %d1, %d0

# CHECK-INST: eq %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0x01]
.code32
eq %d0, %d1, %d1

# CHECK-INST: eq %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0x01]
.code32
eq %d0, %d1, %d14

# CHECK-INST: eq %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0x01]
.code32
eq %d0, %d1, %d15

# CHECK-INST: eq %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0x01]
.code32
eq %d0, %d14, %d0

# CHECK-INST: eq %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0x01]
.code32
eq %d0, %d14, %d1

# CHECK-INST: eq %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0x01]
.code32
eq %d0, %d14, %d14

# CHECK-INST: eq %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0x01]
.code32
eq %d0, %d14, %d15

# CHECK-INST: eq %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0x01]
.code32
eq %d0, %d15, %d0

# CHECK-INST: eq %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0x01]
.code32
eq %d0, %d15, %d1

# CHECK-INST: eq %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0x01]
.code32
eq %d0, %d15, %d14

# CHECK-INST: eq %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0x01]
.code32
eq %d0, %d15, %d15

# CHECK-INST: eq %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0x11]
.code32
eq %d1, %d0, %d0

# CHECK-INST: eq %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0x11]
.code32
eq %d1, %d0, %d1

# CHECK-INST: eq %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0x11]
.code32
eq %d1, %d0, %d14

# CHECK-INST: eq %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0x11]
.code32
eq %d1, %d0, %d15

# CHECK-INST: eq %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0x11]
.code32
eq %d1, %d1, %d0

# CHECK-INST: eq %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0x11]
.code32
eq %d1, %d1, %d1

# CHECK-INST: eq %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0x11]
.code32
eq %d1, %d1, %d14

# CHECK-INST: eq %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0x11]
.code32
eq %d1, %d1, %d15

# CHECK-INST: eq %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0x11]
.code32
eq %d1, %d14, %d0

# CHECK-INST: eq %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0x11]
.code32
eq %d1, %d14, %d1

# CHECK-INST: eq %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0x11]
.code32
eq %d1, %d14, %d14

# CHECK-INST: eq %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0x11]
.code32
eq %d1, %d14, %d15

# CHECK-INST: eq %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0x11]
.code32
eq %d1, %d15, %d0

# CHECK-INST: eq %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0x11]
.code32
eq %d1, %d15, %d1

# CHECK-INST: eq %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0x11]
.code32
eq %d1, %d15, %d14

# CHECK-INST: eq %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0x11]
.code32
eq %d1, %d15, %d15

# CHECK-INST: eq %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0xe1]
.code32
eq %d14, %d0, %d0

# CHECK-INST: eq %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0xe1]
.code32
eq %d14, %d0, %d1

# CHECK-INST: eq %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0xe1]
.code32
eq %d14, %d0, %d14

# CHECK-INST: eq %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0xe1]
.code32
eq %d14, %d0, %d15

# CHECK-INST: eq %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0xe1]
.code32
eq %d14, %d1, %d0

# CHECK-INST: eq %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0xe1]
.code32
eq %d14, %d1, %d1

# CHECK-INST: eq %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0xe1]
.code32
eq %d14, %d1, %d14

# CHECK-INST: eq %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0xe1]
.code32
eq %d14, %d1, %d15

# CHECK-INST: eq %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0xe1]
.code32
eq %d14, %d14, %d0

# CHECK-INST: eq %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0xe1]
.code32
eq %d14, %d14, %d1

# CHECK-INST: eq %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0xe1]
.code32
eq %d14, %d14, %d14

# CHECK-INST: eq %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0xe1]
.code32
eq %d14, %d14, %d15

# CHECK-INST: eq %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0xe1]
.code32
eq %d14, %d15, %d0

# CHECK-INST: eq %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0xe1]
.code32
eq %d14, %d15, %d1

# CHECK-INST: eq %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0xe1]
.code32
eq %d14, %d15, %d14

# CHECK-INST: eq %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0xe1]
.code32
eq %d14, %d15, %d15

# CHECK-INST: eq %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x00,0xf1]
.code32
eq %d15, %d0, %d0

# CHECK-INST: eq %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x00,0xf1]
.code32
eq %d15, %d0, %d1

# CHECK-INST: eq %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x00,0xf1]
.code32
eq %d15, %d0, %d14

# CHECK-INST: eq %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x00,0xf1]
.code32
eq %d15, %d0, %d15

# CHECK-INST: eq %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x00,0xf1]
.code32
eq %d15, %d1, %d0

# CHECK-INST: eq %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x00,0xf1]
.code32
eq %d15, %d1, %d1

# CHECK-INST: eq %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x00,0xf1]
.code32
eq %d15, %d1, %d14

# CHECK-INST: eq %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x00,0xf1]
.code32
eq %d15, %d1, %d15

# CHECK-INST: eq %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x00,0xf1]
.code32
eq %d15, %d14, %d0

# CHECK-INST: eq %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x00,0xf1]
.code32
eq %d15, %d14, %d1

# CHECK-INST: eq %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x00,0xf1]
.code32
eq %d15, %d14, %d14

# CHECK-INST: eq %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x00,0xf1]
.code32
eq %d15, %d14, %d15

# CHECK-INST: eq %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x00,0xf1]
.code32
eq %d15, %d15, %d0

# CHECK-INST: eq %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x00,0xf1]
.code32
eq %d15, %d15, %d1

# CHECK-INST: eq %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x00,0xf1]
.code32
eq %d15, %d15, %d14

# CHECK-INST: eq %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x00,0xf1]
.code32
eq %d15, %d15, %d15

# CHECK-INST: eq %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x02]
.code32
eq %d0, %d0, -256

# CHECK-INST: eq %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0x02]
.code32
eq %d0, %d0, -129

# CHECK-INST: eq %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0x02]
.code32
eq %d0, %d0, -1

# CHECK-INST: eq %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0x02]
.code32
eq %d0, %d0, 0

# CHECK-INST: eq %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0x02]
.code32
eq %d0, %d0, 1

# CHECK-INST: eq %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0x02]
.code32
eq %d0, %d0, 128

# CHECK-INST: eq %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0x02]
.code32
eq %d0, %d0, 255

# CHECK-INST: eq %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0x02]
.code32
eq %d0, %d1, -256

# CHECK-INST: eq %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0x02]
.code32
eq %d0, %d1, -129

# CHECK-INST: eq %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0x02]
.code32
eq %d0, %d1, -1

# CHECK-INST: eq %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0x02]
.code32
eq %d0, %d1, 0

# CHECK-INST: eq %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0x02]
.code32
eq %d0, %d1, 1

# CHECK-INST: eq %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0x02]
.code32
eq %d0, %d1, 128

# CHECK-INST: eq %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0x02]
.code32
eq %d0, %d1, 255

# CHECK-INST: eq %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0x02]
.code32
eq %d0, %d14, -256

# CHECK-INST: eq %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0x02]
.code32
eq %d0, %d14, -129

# CHECK-INST: eq %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0x02]
.code32
eq %d0, %d14, -1

# CHECK-INST: eq %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0x02]
.code32
eq %d0, %d14, 0

# CHECK-INST: eq %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0x02]
.code32
eq %d0, %d14, 1

# CHECK-INST: eq %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0x02]
.code32
eq %d0, %d14, 128

# CHECK-INST: eq %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0x02]
.code32
eq %d0, %d14, 255

# CHECK-INST: eq %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0x02]
.code32
eq %d0, %d15, -256

# CHECK-INST: eq %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0x02]
.code32
eq %d0, %d15, -129

# CHECK-INST: eq %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0x02]
.code32
eq %d0, %d15, -1

# CHECK-INST: eq %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0x02]
.code32
eq %d0, %d15, 0

# CHECK-INST: eq %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0x02]
.code32
eq %d0, %d15, 1

# CHECK-INST: eq %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0x02]
.code32
eq %d0, %d15, 128

# CHECK-INST: eq %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0x02]
.code32
eq %d0, %d15, 255

# CHECK-INST: eq %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x12]
.code32
eq %d1, %d0, -256

# CHECK-INST: eq %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0x12]
.code32
eq %d1, %d0, -129

# CHECK-INST: eq %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0x12]
.code32
eq %d1, %d0, -1

# CHECK-INST: eq %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0x12]
.code32
eq %d1, %d0, 0

# CHECK-INST: eq %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0x12]
.code32
eq %d1, %d0, 1

# CHECK-INST: eq %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0x12]
.code32
eq %d1, %d0, 128

# CHECK-INST: eq %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0x12]
.code32
eq %d1, %d0, 255

# CHECK-INST: eq %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0x12]
.code32
eq %d1, %d1, -256

# CHECK-INST: eq %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0x12]
.code32
eq %d1, %d1, -129

# CHECK-INST: eq %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0x12]
.code32
eq %d1, %d1, -1

# CHECK-INST: eq %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0x12]
.code32
eq %d1, %d1, 0

# CHECK-INST: eq %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0x12]
.code32
eq %d1, %d1, 1

# CHECK-INST: eq %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0x12]
.code32
eq %d1, %d1, 128

# CHECK-INST: eq %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0x12]
.code32
eq %d1, %d1, 255

# CHECK-INST: eq %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0x12]
.code32
eq %d1, %d14, -256

# CHECK-INST: eq %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0x12]
.code32
eq %d1, %d14, -129

# CHECK-INST: eq %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0x12]
.code32
eq %d1, %d14, -1

# CHECK-INST: eq %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0x12]
.code32
eq %d1, %d14, 0

# CHECK-INST: eq %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0x12]
.code32
eq %d1, %d14, 1

# CHECK-INST: eq %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0x12]
.code32
eq %d1, %d14, 128

# CHECK-INST: eq %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0x12]
.code32
eq %d1, %d14, 255

# CHECK-INST: eq %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0x12]
.code32
eq %d1, %d15, -256

# CHECK-INST: eq %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0x12]
.code32
eq %d1, %d15, -129

# CHECK-INST: eq %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0x12]
.code32
eq %d1, %d15, -1

# CHECK-INST: eq %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0x12]
.code32
eq %d1, %d15, 0

# CHECK-INST: eq %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0x12]
.code32
eq %d1, %d15, 1

# CHECK-INST: eq %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0x12]
.code32
eq %d1, %d15, 128

# CHECK-INST: eq %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0x12]
.code32
eq %d1, %d15, 255

# CHECK-INST: eq %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0xe2]
.code32
eq %d14, %d0, -256

# CHECK-INST: eq %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0xe2]
.code32
eq %d14, %d0, -129

# CHECK-INST: eq %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0xe2]
.code32
eq %d14, %d0, -1

# CHECK-INST: eq %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0xe2]
.code32
eq %d14, %d0, 0

# CHECK-INST: eq %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0xe2]
.code32
eq %d14, %d0, 1

# CHECK-INST: eq %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0xe2]
.code32
eq %d14, %d0, 128

# CHECK-INST: eq %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0xe2]
.code32
eq %d14, %d0, 255

# CHECK-INST: eq %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0xe2]
.code32
eq %d14, %d1, -256

# CHECK-INST: eq %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0xe2]
.code32
eq %d14, %d1, -129

# CHECK-INST: eq %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0xe2]
.code32
eq %d14, %d1, -1

# CHECK-INST: eq %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0xe2]
.code32
eq %d14, %d1, 0

# CHECK-INST: eq %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0xe2]
.code32
eq %d14, %d1, 1

# CHECK-INST: eq %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0xe2]
.code32
eq %d14, %d1, 128

# CHECK-INST: eq %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0xe2]
.code32
eq %d14, %d1, 255

# CHECK-INST: eq %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0xe2]
.code32
eq %d14, %d14, -256

# CHECK-INST: eq %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0xe2]
.code32
eq %d14, %d14, -129

# CHECK-INST: eq %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0xe2]
.code32
eq %d14, %d14, -1

# CHECK-INST: eq %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0xe2]
.code32
eq %d14, %d14, 0

# CHECK-INST: eq %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0xe2]
.code32
eq %d14, %d14, 1

# CHECK-INST: eq %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0xe2]
.code32
eq %d14, %d14, 128

# CHECK-INST: eq %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0xe2]
.code32
eq %d14, %d14, 255

# CHECK-INST: eq %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0xe2]
.code32
eq %d14, %d15, -256

# CHECK-INST: eq %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0xe2]
.code32
eq %d14, %d15, -129

# CHECK-INST: eq %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0xe2]
.code32
eq %d14, %d15, -1

# CHECK-INST: eq %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0xe2]
.code32
eq %d14, %d15, 0

# CHECK-INST: eq %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0xe2]
.code32
eq %d14, %d15, 1

# CHECK-INST: eq %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0xe2]
.code32
eq %d14, %d15, 128

# CHECK-INST: eq %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0xe2]
.code32
eq %d14, %d15, 255

# CHECK-INST: eq %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0xf2]
.code32
eq %d15, %d0, -256

# CHECK-INST: eq %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0xf2]
.code32
eq %d15, %d0, -129

# CHECK-INST: eq %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0xf2]
.code32
eq %d15, %d0, -1

# CHECK-INST: eq %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0xf2]
.code32
eq %d15, %d0, 0

# CHECK-INST: eq %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0xf2]
.code32
eq %d15, %d0, 1

# CHECK-INST: eq %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0xf2]
.code32
eq %d15, %d0, 128

# CHECK-INST: eq %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0xf2]
.code32
eq %d15, %d0, 255

# CHECK-INST: eq %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0xf2]
.code32
eq %d15, %d1, -256

# CHECK-INST: eq %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0xf2]
.code32
eq %d15, %d1, -129

# CHECK-INST: eq %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0xf2]
.code32
eq %d15, %d1, -1

# CHECK-INST: eq %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0xf2]
.code32
eq %d15, %d1, 0

# CHECK-INST: eq %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0xf2]
.code32
eq %d15, %d1, 1

# CHECK-INST: eq %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0xf2]
.code32
eq %d15, %d1, 128

# CHECK-INST: eq %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0xf2]
.code32
eq %d15, %d1, 255

# CHECK-INST: eq %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0xf2]
.code32
eq %d15, %d14, -256

# CHECK-INST: eq %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0xf2]
.code32
eq %d15, %d14, -129

# CHECK-INST: eq %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0xf2]
.code32
eq %d15, %d14, -1

# CHECK-INST: eq %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0xf2]
.code32
eq %d15, %d14, 0

# CHECK-INST: eq %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0xf2]
.code32
eq %d15, %d14, 1

# CHECK-INST: eq %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0xf2]
.code32
eq %d15, %d14, 128

# CHECK-INST: eq %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0xf2]
.code32
eq %d15, %d14, 255

# CHECK-INST: eq %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0xf2]
.code32
eq %d15, %d15, -256

# CHECK-INST: eq %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0xf2]
.code32
eq %d15, %d15, -129

# CHECK-INST: eq %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0xf2]
.code32
eq %d15, %d15, -1

# CHECK-INST: eq %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0xf2]
.code32
eq %d15, %d15, 0

# CHECK-INST: eq %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0xf2]
.code32
eq %d15, %d15, 1

# CHECK-INST: eq %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0xf2]
.code32
eq %d15, %d15, 128

# CHECK-INST: eq %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0xf2]
.code32
eq %d15, %d15, 255

# CHECK-INST: ge %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x40,0x01]
.code32
ge %d0, %d0, %d0

# CHECK-INST: ge %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x40,0x01]
.code32
ge %d0, %d0, %d1

# CHECK-INST: ge %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x40,0x01]
.code32
ge %d0, %d0, %d14

# CHECK-INST: ge %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x40,0x01]
.code32
ge %d0, %d0, %d15

# CHECK-INST: ge %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x40,0x01]
.code32
ge %d0, %d1, %d0

# CHECK-INST: ge %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x40,0x01]
.code32
ge %d0, %d1, %d1

# CHECK-INST: ge %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x40,0x01]
.code32
ge %d0, %d1, %d14

# CHECK-INST: ge %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x40,0x01]
.code32
ge %d0, %d1, %d15

# CHECK-INST: ge %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x40,0x01]
.code32
ge %d0, %d14, %d0

# CHECK-INST: ge %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x40,0x01]
.code32
ge %d0, %d14, %d1

# CHECK-INST: ge %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x40,0x01]
.code32
ge %d0, %d14, %d14

# CHECK-INST: ge %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x40,0x01]
.code32
ge %d0, %d14, %d15

# CHECK-INST: ge %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x40,0x01]
.code32
ge %d0, %d15, %d0

# CHECK-INST: ge %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x40,0x01]
.code32
ge %d0, %d15, %d1

# CHECK-INST: ge %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x40,0x01]
.code32
ge %d0, %d15, %d14

# CHECK-INST: ge %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x40,0x01]
.code32
ge %d0, %d15, %d15

# CHECK-INST: ge %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x40,0x11]
.code32
ge %d1, %d0, %d0

# CHECK-INST: ge %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x40,0x11]
.code32
ge %d1, %d0, %d1

# CHECK-INST: ge %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x40,0x11]
.code32
ge %d1, %d0, %d14

# CHECK-INST: ge %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x40,0x11]
.code32
ge %d1, %d0, %d15

# CHECK-INST: ge %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x40,0x11]
.code32
ge %d1, %d1, %d0

# CHECK-INST: ge %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x40,0x11]
.code32
ge %d1, %d1, %d1

# CHECK-INST: ge %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x40,0x11]
.code32
ge %d1, %d1, %d14

# CHECK-INST: ge %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x40,0x11]
.code32
ge %d1, %d1, %d15

# CHECK-INST: ge %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x40,0x11]
.code32
ge %d1, %d14, %d0

# CHECK-INST: ge %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x40,0x11]
.code32
ge %d1, %d14, %d1

# CHECK-INST: ge %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x40,0x11]
.code32
ge %d1, %d14, %d14

# CHECK-INST: ge %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x40,0x11]
.code32
ge %d1, %d14, %d15

# CHECK-INST: ge %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x40,0x11]
.code32
ge %d1, %d15, %d0

# CHECK-INST: ge %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x40,0x11]
.code32
ge %d1, %d15, %d1

# CHECK-INST: ge %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x40,0x11]
.code32
ge %d1, %d15, %d14

# CHECK-INST: ge %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x40,0x11]
.code32
ge %d1, %d15, %d15

# CHECK-INST: ge %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x40,0xe1]
.code32
ge %d14, %d0, %d0

# CHECK-INST: ge %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x40,0xe1]
.code32
ge %d14, %d0, %d1

# CHECK-INST: ge %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x40,0xe1]
.code32
ge %d14, %d0, %d14

# CHECK-INST: ge %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x40,0xe1]
.code32
ge %d14, %d0, %d15

# CHECK-INST: ge %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x40,0xe1]
.code32
ge %d14, %d1, %d0

# CHECK-INST: ge %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x40,0xe1]
.code32
ge %d14, %d1, %d1

# CHECK-INST: ge %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x40,0xe1]
.code32
ge %d14, %d1, %d14

# CHECK-INST: ge %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x40,0xe1]
.code32
ge %d14, %d1, %d15

# CHECK-INST: ge %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x40,0xe1]
.code32
ge %d14, %d14, %d0

# CHECK-INST: ge %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x40,0xe1]
.code32
ge %d14, %d14, %d1

# CHECK-INST: ge %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x40,0xe1]
.code32
ge %d14, %d14, %d14

# CHECK-INST: ge %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x40,0xe1]
.code32
ge %d14, %d14, %d15

# CHECK-INST: ge %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x40,0xe1]
.code32
ge %d14, %d15, %d0

# CHECK-INST: ge %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x40,0xe1]
.code32
ge %d14, %d15, %d1

# CHECK-INST: ge %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x40,0xe1]
.code32
ge %d14, %d15, %d14

# CHECK-INST: ge %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x40,0xe1]
.code32
ge %d14, %d15, %d15

# CHECK-INST: ge %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x40,0xf1]
.code32
ge %d15, %d0, %d0

# CHECK-INST: ge %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x40,0xf1]
.code32
ge %d15, %d0, %d1

# CHECK-INST: ge %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x40,0xf1]
.code32
ge %d15, %d0, %d14

# CHECK-INST: ge %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x40,0xf1]
.code32
ge %d15, %d0, %d15

# CHECK-INST: ge %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x40,0xf1]
.code32
ge %d15, %d1, %d0

# CHECK-INST: ge %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x40,0xf1]
.code32
ge %d15, %d1, %d1

# CHECK-INST: ge %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x40,0xf1]
.code32
ge %d15, %d1, %d14

# CHECK-INST: ge %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x40,0xf1]
.code32
ge %d15, %d1, %d15

# CHECK-INST: ge %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x40,0xf1]
.code32
ge %d15, %d14, %d0

# CHECK-INST: ge %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x40,0xf1]
.code32
ge %d15, %d14, %d1

# CHECK-INST: ge %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x40,0xf1]
.code32
ge %d15, %d14, %d14

# CHECK-INST: ge %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x40,0xf1]
.code32
ge %d15, %d14, %d15

# CHECK-INST: ge %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x40,0xf1]
.code32
ge %d15, %d15, %d0

# CHECK-INST: ge %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x40,0xf1]
.code32
ge %d15, %d15, %d1

# CHECK-INST: ge %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x40,0xf1]
.code32
ge %d15, %d15, %d14

# CHECK-INST: ge %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x40,0xf1]
.code32
ge %d15, %d15, %d15

# CHECK-INST: ge %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x90,0x02]
.code32
ge %d0, %d0, -256

# CHECK-INST: ge %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x97,0x02]
.code32
ge %d0, %d0, -129

# CHECK-INST: ge %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x9f,0x02]
.code32
ge %d0, %d0, -1

# CHECK-INST: ge %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x80,0x02]
.code32
ge %d0, %d0, 0

# CHECK-INST: ge %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x80,0x02]
.code32
ge %d0, %d0, 1

# CHECK-INST: ge %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x88,0x02]
.code32
ge %d0, %d0, 128

# CHECK-INST: ge %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x8f,0x02]
.code32
ge %d0, %d0, 255

# CHECK-INST: ge %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x90,0x02]
.code32
ge %d0, %d1, -256

# CHECK-INST: ge %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x97,0x02]
.code32
ge %d0, %d1, -129

# CHECK-INST: ge %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x9f,0x02]
.code32
ge %d0, %d1, -1

# CHECK-INST: ge %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x80,0x02]
.code32
ge %d0, %d1, 0

# CHECK-INST: ge %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x80,0x02]
.code32
ge %d0, %d1, 1

# CHECK-INST: ge %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x88,0x02]
.code32
ge %d0, %d1, 128

# CHECK-INST: ge %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x8f,0x02]
.code32
ge %d0, %d1, 255

# CHECK-INST: ge %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x90,0x02]
.code32
ge %d0, %d14, -256

# CHECK-INST: ge %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x97,0x02]
.code32
ge %d0, %d14, -129

# CHECK-INST: ge %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x9f,0x02]
.code32
ge %d0, %d14, -1

# CHECK-INST: ge %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x80,0x02]
.code32
ge %d0, %d14, 0

# CHECK-INST: ge %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x80,0x02]
.code32
ge %d0, %d14, 1

# CHECK-INST: ge %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x88,0x02]
.code32
ge %d0, %d14, 128

# CHECK-INST: ge %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x8f,0x02]
.code32
ge %d0, %d14, 255

# CHECK-INST: ge %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x90,0x02]
.code32
ge %d0, %d15, -256

# CHECK-INST: ge %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x97,0x02]
.code32
ge %d0, %d15, -129

# CHECK-INST: ge %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x9f,0x02]
.code32
ge %d0, %d15, -1

# CHECK-INST: ge %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x80,0x02]
.code32
ge %d0, %d15, 0

# CHECK-INST: ge %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x80,0x02]
.code32
ge %d0, %d15, 1

# CHECK-INST: ge %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x88,0x02]
.code32
ge %d0, %d15, 128

# CHECK-INST: ge %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x8f,0x02]
.code32
ge %d0, %d15, 255

# CHECK-INST: ge %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x90,0x12]
.code32
ge %d1, %d0, -256

# CHECK-INST: ge %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x97,0x12]
.code32
ge %d1, %d0, -129

# CHECK-INST: ge %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x9f,0x12]
.code32
ge %d1, %d0, -1

# CHECK-INST: ge %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x80,0x12]
.code32
ge %d1, %d0, 0

# CHECK-INST: ge %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x80,0x12]
.code32
ge %d1, %d0, 1

# CHECK-INST: ge %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x88,0x12]
.code32
ge %d1, %d0, 128

# CHECK-INST: ge %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x8f,0x12]
.code32
ge %d1, %d0, 255

# CHECK-INST: ge %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x90,0x12]
.code32
ge %d1, %d1, -256

# CHECK-INST: ge %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x97,0x12]
.code32
ge %d1, %d1, -129

# CHECK-INST: ge %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x9f,0x12]
.code32
ge %d1, %d1, -1

# CHECK-INST: ge %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x80,0x12]
.code32
ge %d1, %d1, 0

# CHECK-INST: ge %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x80,0x12]
.code32
ge %d1, %d1, 1

# CHECK-INST: ge %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x88,0x12]
.code32
ge %d1, %d1, 128

# CHECK-INST: ge %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x8f,0x12]
.code32
ge %d1, %d1, 255

# CHECK-INST: ge %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x90,0x12]
.code32
ge %d1, %d14, -256

# CHECK-INST: ge %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x97,0x12]
.code32
ge %d1, %d14, -129

# CHECK-INST: ge %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x9f,0x12]
.code32
ge %d1, %d14, -1

# CHECK-INST: ge %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x80,0x12]
.code32
ge %d1, %d14, 0

# CHECK-INST: ge %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x80,0x12]
.code32
ge %d1, %d14, 1

# CHECK-INST: ge %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x88,0x12]
.code32
ge %d1, %d14, 128

# CHECK-INST: ge %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x8f,0x12]
.code32
ge %d1, %d14, 255

# CHECK-INST: ge %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x90,0x12]
.code32
ge %d1, %d15, -256

# CHECK-INST: ge %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x97,0x12]
.code32
ge %d1, %d15, -129

# CHECK-INST: ge %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x9f,0x12]
.code32
ge %d1, %d15, -1

# CHECK-INST: ge %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x80,0x12]
.code32
ge %d1, %d15, 0

# CHECK-INST: ge %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x80,0x12]
.code32
ge %d1, %d15, 1

# CHECK-INST: ge %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x88,0x12]
.code32
ge %d1, %d15, 128

# CHECK-INST: ge %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x8f,0x12]
.code32
ge %d1, %d15, 255

# CHECK-INST: ge %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x90,0xe2]
.code32
ge %d14, %d0, -256

# CHECK-INST: ge %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x97,0xe2]
.code32
ge %d14, %d0, -129

# CHECK-INST: ge %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x9f,0xe2]
.code32
ge %d14, %d0, -1

# CHECK-INST: ge %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x80,0xe2]
.code32
ge %d14, %d0, 0

# CHECK-INST: ge %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x80,0xe2]
.code32
ge %d14, %d0, 1

# CHECK-INST: ge %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x88,0xe2]
.code32
ge %d14, %d0, 128

# CHECK-INST: ge %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x8f,0xe2]
.code32
ge %d14, %d0, 255

# CHECK-INST: ge %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x90,0xe2]
.code32
ge %d14, %d1, -256

# CHECK-INST: ge %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x97,0xe2]
.code32
ge %d14, %d1, -129

# CHECK-INST: ge %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x9f,0xe2]
.code32
ge %d14, %d1, -1

# CHECK-INST: ge %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x80,0xe2]
.code32
ge %d14, %d1, 0

# CHECK-INST: ge %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x80,0xe2]
.code32
ge %d14, %d1, 1

# CHECK-INST: ge %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x88,0xe2]
.code32
ge %d14, %d1, 128

# CHECK-INST: ge %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x8f,0xe2]
.code32
ge %d14, %d1, 255

# CHECK-INST: ge %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x90,0xe2]
.code32
ge %d14, %d14, -256

# CHECK-INST: ge %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x97,0xe2]
.code32
ge %d14, %d14, -129

# CHECK-INST: ge %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x9f,0xe2]
.code32
ge %d14, %d14, -1

# CHECK-INST: ge %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x80,0xe2]
.code32
ge %d14, %d14, 0

# CHECK-INST: ge %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x80,0xe2]
.code32
ge %d14, %d14, 1

# CHECK-INST: ge %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x88,0xe2]
.code32
ge %d14, %d14, 128

# CHECK-INST: ge %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x8f,0xe2]
.code32
ge %d14, %d14, 255

# CHECK-INST: ge %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x90,0xe2]
.code32
ge %d14, %d15, -256

# CHECK-INST: ge %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x97,0xe2]
.code32
ge %d14, %d15, -129

# CHECK-INST: ge %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x9f,0xe2]
.code32
ge %d14, %d15, -1

# CHECK-INST: ge %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x80,0xe2]
.code32
ge %d14, %d15, 0

# CHECK-INST: ge %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x80,0xe2]
.code32
ge %d14, %d15, 1

# CHECK-INST: ge %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x88,0xe2]
.code32
ge %d14, %d15, 128

# CHECK-INST: ge %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x8f,0xe2]
.code32
ge %d14, %d15, 255

# CHECK-INST: ge %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x90,0xf2]
.code32
ge %d15, %d0, -256

# CHECK-INST: ge %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x97,0xf2]
.code32
ge %d15, %d0, -129

# CHECK-INST: ge %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x9f,0xf2]
.code32
ge %d15, %d0, -1

# CHECK-INST: ge %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x80,0xf2]
.code32
ge %d15, %d0, 0

# CHECK-INST: ge %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x80,0xf2]
.code32
ge %d15, %d0, 1

# CHECK-INST: ge %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x88,0xf2]
.code32
ge %d15, %d0, 128

# CHECK-INST: ge %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x8f,0xf2]
.code32
ge %d15, %d0, 255

# CHECK-INST: ge %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x90,0xf2]
.code32
ge %d15, %d1, -256

# CHECK-INST: ge %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x97,0xf2]
.code32
ge %d15, %d1, -129

# CHECK-INST: ge %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x9f,0xf2]
.code32
ge %d15, %d1, -1

# CHECK-INST: ge %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x80,0xf2]
.code32
ge %d15, %d1, 0

# CHECK-INST: ge %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x80,0xf2]
.code32
ge %d15, %d1, 1

# CHECK-INST: ge %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x88,0xf2]
.code32
ge %d15, %d1, 128

# CHECK-INST: ge %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x8f,0xf2]
.code32
ge %d15, %d1, 255

# CHECK-INST: ge %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x90,0xf2]
.code32
ge %d15, %d14, -256

# CHECK-INST: ge %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x97,0xf2]
.code32
ge %d15, %d14, -129

# CHECK-INST: ge %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x9f,0xf2]
.code32
ge %d15, %d14, -1

# CHECK-INST: ge %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x80,0xf2]
.code32
ge %d15, %d14, 0

# CHECK-INST: ge %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x80,0xf2]
.code32
ge %d15, %d14, 1

# CHECK-INST: ge %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x88,0xf2]
.code32
ge %d15, %d14, 128

# CHECK-INST: ge %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x8f,0xf2]
.code32
ge %d15, %d14, 255

# CHECK-INST: ge %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x90,0xf2]
.code32
ge %d15, %d15, -256

# CHECK-INST: ge %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x97,0xf2]
.code32
ge %d15, %d15, -129

# CHECK-INST: ge %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x9f,0xf2]
.code32
ge %d15, %d15, -1

# CHECK-INST: ge %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x80,0xf2]
.code32
ge %d15, %d15, 0

# CHECK-INST: ge %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x80,0xf2]
.code32
ge %d15, %d15, 1

# CHECK-INST: ge %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x88,0xf2]
.code32
ge %d15, %d15, 128

# CHECK-INST: ge %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x8f,0xf2]
.code32
ge %d15, %d15, 255

# CHECK-INST: ge.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0xb0,0x02]
.code32
ge.u %d0, %d0, 271

# CHECK-INST: ge.u %d0, %d0, 496
# CHECK: encoding: [0x8b,0x00,0xbf,0x02]
.code32
ge.u %d0, %d0, 496

# CHECK-INST: ge.u %d0, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0xbf,0x02]
.code32
ge.u %d0, %d0, 511

# CHECK-INST: ge.u %d0, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0xb0,0x02]
.code32
ge.u %d0, %d1, 271

# CHECK-INST: ge.u %d0, %d1, 496
# CHECK: encoding: [0x8b,0x01,0xbf,0x02]
.code32
ge.u %d0, %d1, 496

# CHECK-INST: ge.u %d0, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0xbf,0x02]
.code32
ge.u %d0, %d1, 511

# CHECK-INST: ge.u %d0, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0xb0,0x02]
.code32
ge.u %d0, %d14, 271

# CHECK-INST: ge.u %d0, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0xbf,0x02]
.code32
ge.u %d0, %d14, 496

# CHECK-INST: ge.u %d0, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0xbf,0x02]
.code32
ge.u %d0, %d14, 511

# CHECK-INST: ge.u %d0, %d15, 271
# CHECK: encoding: [0x8b,0xff,0xb0,0x02]
.code32
ge.u %d0, %d15, 271

# CHECK-INST: ge.u %d0, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0xbf,0x02]
.code32
ge.u %d0, %d15, 496

# CHECK-INST: ge.u %d0, %d15, 511
# CHECK: encoding: [0x8b,0xff,0xbf,0x02]
.code32
ge.u %d0, %d15, 511

# CHECK-INST: ge.u %d1, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0xb0,0x12]
.code32
ge.u %d1, %d0, 271

# CHECK-INST: ge.u %d1, %d0, 496
# CHECK: encoding: [0x8b,0x00,0xbf,0x12]
.code32
ge.u %d1, %d0, 496

# CHECK-INST: ge.u %d1, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0xbf,0x12]
.code32
ge.u %d1, %d0, 511

# CHECK-INST: ge.u %d1, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0xb0,0x12]
.code32
ge.u %d1, %d1, 271

# CHECK-INST: ge.u %d1, %d1, 496
# CHECK: encoding: [0x8b,0x01,0xbf,0x12]
.code32
ge.u %d1, %d1, 496

# CHECK-INST: ge.u %d1, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0xbf,0x12]
.code32
ge.u %d1, %d1, 511

# CHECK-INST: ge.u %d1, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0xb0,0x12]
.code32
ge.u %d1, %d14, 271

# CHECK-INST: ge.u %d1, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0xbf,0x12]
.code32
ge.u %d1, %d14, 496

# CHECK-INST: ge.u %d1, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0xbf,0x12]
.code32
ge.u %d1, %d14, 511

# CHECK-INST: ge.u %d1, %d15, 271
# CHECK: encoding: [0x8b,0xff,0xb0,0x12]
.code32
ge.u %d1, %d15, 271

# CHECK-INST: ge.u %d1, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0xbf,0x12]
.code32
ge.u %d1, %d15, 496

# CHECK-INST: ge.u %d1, %d15, 511
# CHECK: encoding: [0x8b,0xff,0xbf,0x12]
.code32
ge.u %d1, %d15, 511

# CHECK-INST: ge.u %d14, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0xb0,0xe2]
.code32
ge.u %d14, %d0, 271

# CHECK-INST: ge.u %d14, %d0, 496
# CHECK: encoding: [0x8b,0x00,0xbf,0xe2]
.code32
ge.u %d14, %d0, 496

# CHECK-INST: ge.u %d14, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0xbf,0xe2]
.code32
ge.u %d14, %d0, 511

# CHECK-INST: ge.u %d14, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0xb0,0xe2]
.code32
ge.u %d14, %d1, 271

# CHECK-INST: ge.u %d14, %d1, 496
# CHECK: encoding: [0x8b,0x01,0xbf,0xe2]
.code32
ge.u %d14, %d1, 496

# CHECK-INST: ge.u %d14, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0xbf,0xe2]
.code32
ge.u %d14, %d1, 511

# CHECK-INST: ge.u %d14, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0xb0,0xe2]
.code32
ge.u %d14, %d14, 271

# CHECK-INST: ge.u %d14, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0xbf,0xe2]
.code32
ge.u %d14, %d14, 496

# CHECK-INST: ge.u %d14, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0xbf,0xe2]
.code32
ge.u %d14, %d14, 511

# CHECK-INST: ge.u %d14, %d15, 271
# CHECK: encoding: [0x8b,0xff,0xb0,0xe2]
.code32
ge.u %d14, %d15, 271

# CHECK-INST: ge.u %d14, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0xbf,0xe2]
.code32
ge.u %d14, %d15, 496

# CHECK-INST: ge.u %d14, %d15, 511
# CHECK: encoding: [0x8b,0xff,0xbf,0xe2]
.code32
ge.u %d14, %d15, 511

# CHECK-INST: ge.u %d15, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0xb0,0xf2]
.code32
ge.u %d15, %d0, 271

# CHECK-INST: ge.u %d15, %d0, 496
# CHECK: encoding: [0x8b,0x00,0xbf,0xf2]
.code32
ge.u %d15, %d0, 496

# CHECK-INST: ge.u %d15, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0xbf,0xf2]
.code32
ge.u %d15, %d0, 511

# CHECK-INST: ge.u %d15, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0xb0,0xf2]
.code32
ge.u %d15, %d1, 271

# CHECK-INST: ge.u %d15, %d1, 496
# CHECK: encoding: [0x8b,0x01,0xbf,0xf2]
.code32
ge.u %d15, %d1, 496

# CHECK-INST: ge.u %d15, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0xbf,0xf2]
.code32
ge.u %d15, %d1, 511

# CHECK-INST: ge.u %d15, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0xb0,0xf2]
.code32
ge.u %d15, %d14, 271

# CHECK-INST: ge.u %d15, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0xbf,0xf2]
.code32
ge.u %d15, %d14, 496

# CHECK-INST: ge.u %d15, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0xbf,0xf2]
.code32
ge.u %d15, %d14, 511

# CHECK-INST: ge.u %d15, %d15, 271
# CHECK: encoding: [0x8b,0xff,0xb0,0xf2]
.code32
ge.u %d15, %d15, 271

# CHECK-INST: ge.u %d15, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0xbf,0xf2]
.code32
ge.u %d15, %d15, 496

# CHECK-INST: ge.u %d15, %d15, 511
# CHECK: encoding: [0x8b,0xff,0xbf,0xf2]
.code32
ge.u %d15, %d15, 511

# CHECK-INST: ge.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x50,0x01]
.code32
ge.u %d0, %d0, %d0

# CHECK-INST: ge.u %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x50,0x01]
.code32
ge.u %d0, %d0, %d1

# CHECK-INST: ge.u %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x50,0x01]
.code32
ge.u %d0, %d0, %d14

# CHECK-INST: ge.u %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x50,0x01]
.code32
ge.u %d0, %d0, %d15

# CHECK-INST: ge.u %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x50,0x01]
.code32
ge.u %d0, %d1, %d0

# CHECK-INST: ge.u %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x50,0x01]
.code32
ge.u %d0, %d1, %d1

# CHECK-INST: ge.u %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x50,0x01]
.code32
ge.u %d0, %d1, %d14

# CHECK-INST: ge.u %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x50,0x01]
.code32
ge.u %d0, %d1, %d15

# CHECK-INST: ge.u %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x50,0x01]
.code32
ge.u %d0, %d14, %d0

# CHECK-INST: ge.u %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x50,0x01]
.code32
ge.u %d0, %d14, %d1

# CHECK-INST: ge.u %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x50,0x01]
.code32
ge.u %d0, %d14, %d14

# CHECK-INST: ge.u %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x50,0x01]
.code32
ge.u %d0, %d14, %d15

# CHECK-INST: ge.u %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x50,0x01]
.code32
ge.u %d0, %d15, %d0

# CHECK-INST: ge.u %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x50,0x01]
.code32
ge.u %d0, %d15, %d1

# CHECK-INST: ge.u %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x50,0x01]
.code32
ge.u %d0, %d15, %d14

# CHECK-INST: ge.u %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x50,0x01]
.code32
ge.u %d0, %d15, %d15

# CHECK-INST: ge.u %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x50,0x11]
.code32
ge.u %d1, %d0, %d0

# CHECK-INST: ge.u %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x50,0x11]
.code32
ge.u %d1, %d0, %d1

# CHECK-INST: ge.u %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x50,0x11]
.code32
ge.u %d1, %d0, %d14

# CHECK-INST: ge.u %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x50,0x11]
.code32
ge.u %d1, %d0, %d15

# CHECK-INST: ge.u %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x50,0x11]
.code32
ge.u %d1, %d1, %d0

# CHECK-INST: ge.u %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x50,0x11]
.code32
ge.u %d1, %d1, %d1

# CHECK-INST: ge.u %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x50,0x11]
.code32
ge.u %d1, %d1, %d14

# CHECK-INST: ge.u %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x50,0x11]
.code32
ge.u %d1, %d1, %d15

# CHECK-INST: ge.u %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x50,0x11]
.code32
ge.u %d1, %d14, %d0

# CHECK-INST: ge.u %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x50,0x11]
.code32
ge.u %d1, %d14, %d1

# CHECK-INST: ge.u %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x50,0x11]
.code32
ge.u %d1, %d14, %d14

# CHECK-INST: ge.u %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x50,0x11]
.code32
ge.u %d1, %d14, %d15

# CHECK-INST: ge.u %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x50,0x11]
.code32
ge.u %d1, %d15, %d0

# CHECK-INST: ge.u %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x50,0x11]
.code32
ge.u %d1, %d15, %d1

# CHECK-INST: ge.u %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x50,0x11]
.code32
ge.u %d1, %d15, %d14

# CHECK-INST: ge.u %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x50,0x11]
.code32
ge.u %d1, %d15, %d15

# CHECK-INST: ge.u %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x50,0xe1]
.code32
ge.u %d14, %d0, %d0

# CHECK-INST: ge.u %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x50,0xe1]
.code32
ge.u %d14, %d0, %d1

# CHECK-INST: ge.u %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x50,0xe1]
.code32
ge.u %d14, %d0, %d14

# CHECK-INST: ge.u %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x50,0xe1]
.code32
ge.u %d14, %d0, %d15

# CHECK-INST: ge.u %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x50,0xe1]
.code32
ge.u %d14, %d1, %d0

# CHECK-INST: ge.u %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x50,0xe1]
.code32
ge.u %d14, %d1, %d1

# CHECK-INST: ge.u %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x50,0xe1]
.code32
ge.u %d14, %d1, %d14

# CHECK-INST: ge.u %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x50,0xe1]
.code32
ge.u %d14, %d1, %d15

# CHECK-INST: ge.u %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x50,0xe1]
.code32
ge.u %d14, %d14, %d0

# CHECK-INST: ge.u %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x50,0xe1]
.code32
ge.u %d14, %d14, %d1

# CHECK-INST: ge.u %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x50,0xe1]
.code32
ge.u %d14, %d14, %d14

# CHECK-INST: ge.u %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x50,0xe1]
.code32
ge.u %d14, %d14, %d15

# CHECK-INST: ge.u %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x50,0xe1]
.code32
ge.u %d14, %d15, %d0

# CHECK-INST: ge.u %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x50,0xe1]
.code32
ge.u %d14, %d15, %d1

# CHECK-INST: ge.u %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x50,0xe1]
.code32
ge.u %d14, %d15, %d14

# CHECK-INST: ge.u %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x50,0xe1]
.code32
ge.u %d14, %d15, %d15

# CHECK-INST: ge.u %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x50,0xf1]
.code32
ge.u %d15, %d0, %d0

# CHECK-INST: ge.u %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x50,0xf1]
.code32
ge.u %d15, %d0, %d1

# CHECK-INST: ge.u %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x50,0xf1]
.code32
ge.u %d15, %d0, %d14

# CHECK-INST: ge.u %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x50,0xf1]
.code32
ge.u %d15, %d0, %d15

# CHECK-INST: ge.u %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x50,0xf1]
.code32
ge.u %d15, %d1, %d0

# CHECK-INST: ge.u %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x50,0xf1]
.code32
ge.u %d15, %d1, %d1

# CHECK-INST: ge.u %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x50,0xf1]
.code32
ge.u %d15, %d1, %d14

# CHECK-INST: ge.u %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x50,0xf1]
.code32
ge.u %d15, %d1, %d15

# CHECK-INST: ge.u %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x50,0xf1]
.code32
ge.u %d15, %d14, %d0

# CHECK-INST: ge.u %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x50,0xf1]
.code32
ge.u %d15, %d14, %d1

# CHECK-INST: ge.u %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x50,0xf1]
.code32
ge.u %d15, %d14, %d14

# CHECK-INST: ge.u %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x50,0xf1]
.code32
ge.u %d15, %d14, %d15

# CHECK-INST: ge.u %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x50,0xf1]
.code32
ge.u %d15, %d15, %d0

# CHECK-INST: ge.u %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x50,0xf1]
.code32
ge.u %d15, %d15, %d1

# CHECK-INST: ge.u %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x50,0xf1]
.code32
ge.u %d15, %d15, %d14

# CHECK-INST: ge.u %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x50,0xf1]
.code32
ge.u %d15, %d15, %d15

# CHECK-INST: lt %d15, %d0, %d0
# CHECK: encoding: [0x7a,0x00]
.code16
lt %d15, %d0, %d0

# CHECK-INST: lt %d15, %d0, %d1
# CHECK: encoding: [0x7a,0x10]
.code16
lt %d15, %d0, %d1

# CHECK-INST: lt %d15, %d0, %d14
# CHECK: encoding: [0x7a,0xe0]
.code16
lt %d15, %d0, %d14

# CHECK-INST: lt %d15, %d0, %d15
# CHECK: encoding: [0x7a,0xf0]
.code16
lt %d15, %d0, %d15

# CHECK-INST: lt %d15, %d1, %d0
# CHECK: encoding: [0x7a,0x01]
.code16
lt %d15, %d1, %d0

# CHECK-INST: lt %d15, %d1, %d1
# CHECK: encoding: [0x7a,0x11]
.code16
lt %d15, %d1, %d1

# CHECK-INST: lt %d15, %d1, %d14
# CHECK: encoding: [0x7a,0xe1]
.code16
lt %d15, %d1, %d14

# CHECK-INST: lt %d15, %d1, %d15
# CHECK: encoding: [0x7a,0xf1]
.code16
lt %d15, %d1, %d15

# CHECK-INST: lt %d15, %d14, %d0
# CHECK: encoding: [0x7a,0x0e]
.code16
lt %d15, %d14, %d0

# CHECK-INST: lt %d15, %d14, %d1
# CHECK: encoding: [0x7a,0x1e]
.code16
lt %d15, %d14, %d1

# CHECK-INST: lt %d15, %d14, %d14
# CHECK: encoding: [0x7a,0xee]
.code16
lt %d15, %d14, %d14

# CHECK-INST: lt %d15, %d14, %d15
# CHECK: encoding: [0x7a,0xfe]
.code16
lt %d15, %d14, %d15

# CHECK-INST: lt %d15, %d15, %d0
# CHECK: encoding: [0x7a,0x0f]
.code16
lt %d15, %d15, %d0

# CHECK-INST: lt %d15, %d15, %d1
# CHECK: encoding: [0x7a,0x1f]
.code16
lt %d15, %d15, %d1

# CHECK-INST: lt %d15, %d15, %d14
# CHECK: encoding: [0x7a,0xef]
.code16
lt %d15, %d15, %d14

# CHECK-INST: lt %d15, %d15, %d15
# CHECK: encoding: [0x7a,0xff]
.code16
lt %d15, %d15, %d15

# CHECK-INST: lt %d15, %d0, -8
# CHECK: encoding: [0xfa,0x80]
.code16
lt %d15, %d0, -8

# CHECK-INST: lt %d15, %d0, -1
# CHECK: encoding: [0xfa,0xf0]
.code16
lt %d15, %d0, -1

# CHECK-INST: lt %d15, %d0, 0
# CHECK: encoding: [0xfa,0x00]
.code16
lt %d15, %d0, 0

# CHECK-INST: lt %d15, %d0, 1
# CHECK: encoding: [0xfa,0x10]
.code16
lt %d15, %d0, 1

# CHECK-INST: lt %d15, %d0, 7
# CHECK: encoding: [0xfa,0x70]
.code16
lt %d15, %d0, 7

# CHECK-INST: lt %d15, %d1, -8
# CHECK: encoding: [0xfa,0x81]
.code16
lt %d15, %d1, -8

# CHECK-INST: lt %d15, %d1, -1
# CHECK: encoding: [0xfa,0xf1]
.code16
lt %d15, %d1, -1

# CHECK-INST: lt %d15, %d1, 0
# CHECK: encoding: [0xfa,0x01]
.code16
lt %d15, %d1, 0

# CHECK-INST: lt %d15, %d1, 1
# CHECK: encoding: [0xfa,0x11]
.code16
lt %d15, %d1, 1

# CHECK-INST: lt %d15, %d1, 7
# CHECK: encoding: [0xfa,0x71]
.code16
lt %d15, %d1, 7

# CHECK-INST: lt %d15, %d14, -8
# CHECK: encoding: [0xfa,0x8e]
.code16
lt %d15, %d14, -8

# CHECK-INST: lt %d15, %d14, -1
# CHECK: encoding: [0xfa,0xfe]
.code16
lt %d15, %d14, -1

# CHECK-INST: lt %d15, %d14, 0
# CHECK: encoding: [0xfa,0x0e]
.code16
lt %d15, %d14, 0

# CHECK-INST: lt %d15, %d14, 1
# CHECK: encoding: [0xfa,0x1e]
.code16
lt %d15, %d14, 1

# CHECK-INST: lt %d15, %d14, 7
# CHECK: encoding: [0xfa,0x7e]
.code16
lt %d15, %d14, 7

# CHECK-INST: lt %d15, %d15, -8
# CHECK: encoding: [0xfa,0x8f]
.code16
lt %d15, %d15, -8

# CHECK-INST: lt %d15, %d15, -1
# CHECK: encoding: [0xfa,0xff]
.code16
lt %d15, %d15, -1

# CHECK-INST: lt %d15, %d15, 0
# CHECK: encoding: [0xfa,0x0f]
.code16
lt %d15, %d15, 0

# CHECK-INST: lt %d15, %d15, 1
# CHECK: encoding: [0xfa,0x1f]
.code16
lt %d15, %d15, 1

# CHECK-INST: lt %d15, %d15, 7
# CHECK: encoding: [0xfa,0x7f]
.code16
lt %d15, %d15, 7

# CHECK-INST: lt %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x01]
.code32
lt %d0, %d0, %d0

# CHECK-INST: lt %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0x01]
.code32
lt %d0, %d0, %d1

# CHECK-INST: lt %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0x01]
.code32
lt %d0, %d0, %d14

# CHECK-INST: lt %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0x01]
.code32
lt %d0, %d0, %d15

# CHECK-INST: lt %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0x01]
.code32
lt %d0, %d1, %d0

# CHECK-INST: lt %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0x01]
.code32
lt %d0, %d1, %d1

# CHECK-INST: lt %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0x01]
.code32
lt %d0, %d1, %d14

# CHECK-INST: lt %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0x01]
.code32
lt %d0, %d1, %d15

# CHECK-INST: lt %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0x01]
.code32
lt %d0, %d14, %d0

# CHECK-INST: lt %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0x01]
.code32
lt %d0, %d14, %d1

# CHECK-INST: lt %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0x01]
.code32
lt %d0, %d14, %d14

# CHECK-INST: lt %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0x01]
.code32
lt %d0, %d14, %d15

# CHECK-INST: lt %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0x01]
.code32
lt %d0, %d15, %d0

# CHECK-INST: lt %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0x01]
.code32
lt %d0, %d15, %d1

# CHECK-INST: lt %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0x01]
.code32
lt %d0, %d15, %d14

# CHECK-INST: lt %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0x01]
.code32
lt %d0, %d15, %d15

# CHECK-INST: lt %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0x11]
.code32
lt %d1, %d0, %d0

# CHECK-INST: lt %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0x11]
.code32
lt %d1, %d0, %d1

# CHECK-INST: lt %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0x11]
.code32
lt %d1, %d0, %d14

# CHECK-INST: lt %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0x11]
.code32
lt %d1, %d0, %d15

# CHECK-INST: lt %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0x11]
.code32
lt %d1, %d1, %d0

# CHECK-INST: lt %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0x11]
.code32
lt %d1, %d1, %d1

# CHECK-INST: lt %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0x11]
.code32
lt %d1, %d1, %d14

# CHECK-INST: lt %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0x11]
.code32
lt %d1, %d1, %d15

# CHECK-INST: lt %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0x11]
.code32
lt %d1, %d14, %d0

# CHECK-INST: lt %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0x11]
.code32
lt %d1, %d14, %d1

# CHECK-INST: lt %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0x11]
.code32
lt %d1, %d14, %d14

# CHECK-INST: lt %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0x11]
.code32
lt %d1, %d14, %d15

# CHECK-INST: lt %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0x11]
.code32
lt %d1, %d15, %d0

# CHECK-INST: lt %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0x11]
.code32
lt %d1, %d15, %d1

# CHECK-INST: lt %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0x11]
.code32
lt %d1, %d15, %d14

# CHECK-INST: lt %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0x11]
.code32
lt %d1, %d15, %d15

# CHECK-INST: lt %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0xe1]
.code32
lt %d14, %d0, %d0

# CHECK-INST: lt %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0xe1]
.code32
lt %d14, %d0, %d1

# CHECK-INST: lt %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0xe1]
.code32
lt %d14, %d0, %d14

# CHECK-INST: lt %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0xe1]
.code32
lt %d14, %d0, %d15

# CHECK-INST: lt %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0xe1]
.code32
lt %d14, %d1, %d0

# CHECK-INST: lt %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0xe1]
.code32
lt %d14, %d1, %d1

# CHECK-INST: lt %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0xe1]
.code32
lt %d14, %d1, %d14

# CHECK-INST: lt %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0xe1]
.code32
lt %d14, %d1, %d15

# CHECK-INST: lt %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0xe1]
.code32
lt %d14, %d14, %d0

# CHECK-INST: lt %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0xe1]
.code32
lt %d14, %d14, %d1

# CHECK-INST: lt %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0xe1]
.code32
lt %d14, %d14, %d14

# CHECK-INST: lt %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0xe1]
.code32
lt %d14, %d14, %d15

# CHECK-INST: lt %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0xe1]
.code32
lt %d14, %d15, %d0

# CHECK-INST: lt %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0xe1]
.code32
lt %d14, %d15, %d1

# CHECK-INST: lt %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0xe1]
.code32
lt %d14, %d15, %d14

# CHECK-INST: lt %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0xe1]
.code32
lt %d14, %d15, %d15

# CHECK-INST: lt %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x20,0xf1]
.code32
lt %d15, %d0, %d0

# CHECK-INST: lt %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x20,0xf1]
.code32
lt %d15, %d0, %d1

# CHECK-INST: lt %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x20,0xf1]
.code32
lt %d15, %d0, %d14

# CHECK-INST: lt %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x20,0xf1]
.code32
lt %d15, %d0, %d15

# CHECK-INST: lt %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x20,0xf1]
.code32
lt %d15, %d1, %d0

# CHECK-INST: lt %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x20,0xf1]
.code32
lt %d15, %d1, %d1

# CHECK-INST: lt %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x20,0xf1]
.code32
lt %d15, %d1, %d14

# CHECK-INST: lt %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x20,0xf1]
.code32
lt %d15, %d1, %d15

# CHECK-INST: lt %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x20,0xf1]
.code32
lt %d15, %d14, %d0

# CHECK-INST: lt %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x20,0xf1]
.code32
lt %d15, %d14, %d1

# CHECK-INST: lt %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x20,0xf1]
.code32
lt %d15, %d14, %d14

# CHECK-INST: lt %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x20,0xf1]
.code32
lt %d15, %d14, %d15

# CHECK-INST: lt %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x20,0xf1]
.code32
lt %d15, %d15, %d0

# CHECK-INST: lt %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x20,0xf1]
.code32
lt %d15, %d15, %d1

# CHECK-INST: lt %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x20,0xf1]
.code32
lt %d15, %d15, %d14

# CHECK-INST: lt %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x20,0xf1]
.code32
lt %d15, %d15, %d15

# CHECK-INST: lt %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0x02]
.code32
lt %d0, %d0, -256

# CHECK-INST: lt %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0x02]
.code32
lt %d0, %d0, -129

# CHECK-INST: lt %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0x02]
.code32
lt %d0, %d0, -1

# CHECK-INST: lt %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0x02]
.code32
lt %d0, %d0, 0

# CHECK-INST: lt %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0x02]
.code32
lt %d0, %d0, 1

# CHECK-INST: lt %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0x02]
.code32
lt %d0, %d0, 128

# CHECK-INST: lt %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0x02]
.code32
lt %d0, %d0, 255

# CHECK-INST: lt %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0x02]
.code32
lt %d0, %d1, -256

# CHECK-INST: lt %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0x02]
.code32
lt %d0, %d1, -129

# CHECK-INST: lt %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0x02]
.code32
lt %d0, %d1, -1

# CHECK-INST: lt %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0x02]
.code32
lt %d0, %d1, 0

# CHECK-INST: lt %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0x02]
.code32
lt %d0, %d1, 1

# CHECK-INST: lt %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0x02]
.code32
lt %d0, %d1, 128

# CHECK-INST: lt %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0x02]
.code32
lt %d0, %d1, 255

# CHECK-INST: lt %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0x02]
.code32
lt %d0, %d14, -256

# CHECK-INST: lt %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0x02]
.code32
lt %d0, %d14, -129

# CHECK-INST: lt %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0x02]
.code32
lt %d0, %d14, -1

# CHECK-INST: lt %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0x02]
.code32
lt %d0, %d14, 0

# CHECK-INST: lt %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0x02]
.code32
lt %d0, %d14, 1

# CHECK-INST: lt %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0x02]
.code32
lt %d0, %d14, 128

# CHECK-INST: lt %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0x02]
.code32
lt %d0, %d14, 255

# CHECK-INST: lt %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0x02]
.code32
lt %d0, %d15, -256

# CHECK-INST: lt %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0x02]
.code32
lt %d0, %d15, -129

# CHECK-INST: lt %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0x02]
.code32
lt %d0, %d15, -1

# CHECK-INST: lt %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0x02]
.code32
lt %d0, %d15, 0

# CHECK-INST: lt %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0x02]
.code32
lt %d0, %d15, 1

# CHECK-INST: lt %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0x02]
.code32
lt %d0, %d15, 128

# CHECK-INST: lt %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0x02]
.code32
lt %d0, %d15, 255

# CHECK-INST: lt %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0x12]
.code32
lt %d1, %d0, -256

# CHECK-INST: lt %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0x12]
.code32
lt %d1, %d0, -129

# CHECK-INST: lt %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0x12]
.code32
lt %d1, %d0, -1

# CHECK-INST: lt %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0x12]
.code32
lt %d1, %d0, 0

# CHECK-INST: lt %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0x12]
.code32
lt %d1, %d0, 1

# CHECK-INST: lt %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0x12]
.code32
lt %d1, %d0, 128

# CHECK-INST: lt %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0x12]
.code32
lt %d1, %d0, 255

# CHECK-INST: lt %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0x12]
.code32
lt %d1, %d1, -256

# CHECK-INST: lt %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0x12]
.code32
lt %d1, %d1, -129

# CHECK-INST: lt %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0x12]
.code32
lt %d1, %d1, -1

# CHECK-INST: lt %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0x12]
.code32
lt %d1, %d1, 0

# CHECK-INST: lt %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0x12]
.code32
lt %d1, %d1, 1

# CHECK-INST: lt %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0x12]
.code32
lt %d1, %d1, 128

# CHECK-INST: lt %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0x12]
.code32
lt %d1, %d1, 255

# CHECK-INST: lt %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0x12]
.code32
lt %d1, %d14, -256

# CHECK-INST: lt %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0x12]
.code32
lt %d1, %d14, -129

# CHECK-INST: lt %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0x12]
.code32
lt %d1, %d14, -1

# CHECK-INST: lt %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0x12]
.code32
lt %d1, %d14, 0

# CHECK-INST: lt %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0x12]
.code32
lt %d1, %d14, 1

# CHECK-INST: lt %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0x12]
.code32
lt %d1, %d14, 128

# CHECK-INST: lt %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0x12]
.code32
lt %d1, %d14, 255

# CHECK-INST: lt %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0x12]
.code32
lt %d1, %d15, -256

# CHECK-INST: lt %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0x12]
.code32
lt %d1, %d15, -129

# CHECK-INST: lt %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0x12]
.code32
lt %d1, %d15, -1

# CHECK-INST: lt %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0x12]
.code32
lt %d1, %d15, 0

# CHECK-INST: lt %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0x12]
.code32
lt %d1, %d15, 1

# CHECK-INST: lt %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0x12]
.code32
lt %d1, %d15, 128

# CHECK-INST: lt %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0x12]
.code32
lt %d1, %d15, 255

# CHECK-INST: lt %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0xe2]
.code32
lt %d14, %d0, -256

# CHECK-INST: lt %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0xe2]
.code32
lt %d14, %d0, -129

# CHECK-INST: lt %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0xe2]
.code32
lt %d14, %d0, -1

# CHECK-INST: lt %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0xe2]
.code32
lt %d14, %d0, 0

# CHECK-INST: lt %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0xe2]
.code32
lt %d14, %d0, 1

# CHECK-INST: lt %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0xe2]
.code32
lt %d14, %d0, 128

# CHECK-INST: lt %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0xe2]
.code32
lt %d14, %d0, 255

# CHECK-INST: lt %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0xe2]
.code32
lt %d14, %d1, -256

# CHECK-INST: lt %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0xe2]
.code32
lt %d14, %d1, -129

# CHECK-INST: lt %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0xe2]
.code32
lt %d14, %d1, -1

# CHECK-INST: lt %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0xe2]
.code32
lt %d14, %d1, 0

# CHECK-INST: lt %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0xe2]
.code32
lt %d14, %d1, 1

# CHECK-INST: lt %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0xe2]
.code32
lt %d14, %d1, 128

# CHECK-INST: lt %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0xe2]
.code32
lt %d14, %d1, 255

# CHECK-INST: lt %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0xe2]
.code32
lt %d14, %d14, -256

# CHECK-INST: lt %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0xe2]
.code32
lt %d14, %d14, -129

# CHECK-INST: lt %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0xe2]
.code32
lt %d14, %d14, -1

# CHECK-INST: lt %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0xe2]
.code32
lt %d14, %d14, 0

# CHECK-INST: lt %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0xe2]
.code32
lt %d14, %d14, 1

# CHECK-INST: lt %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0xe2]
.code32
lt %d14, %d14, 128

# CHECK-INST: lt %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0xe2]
.code32
lt %d14, %d14, 255

# CHECK-INST: lt %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0xe2]
.code32
lt %d14, %d15, -256

# CHECK-INST: lt %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0xe2]
.code32
lt %d14, %d15, -129

# CHECK-INST: lt %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0xe2]
.code32
lt %d14, %d15, -1

# CHECK-INST: lt %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0xe2]
.code32
lt %d14, %d15, 0

# CHECK-INST: lt %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0xe2]
.code32
lt %d14, %d15, 1

# CHECK-INST: lt %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0xe2]
.code32
lt %d14, %d15, 128

# CHECK-INST: lt %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0xe2]
.code32
lt %d14, %d15, 255

# CHECK-INST: lt %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0xf2]
.code32
lt %d15, %d0, -256

# CHECK-INST: lt %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0xf2]
.code32
lt %d15, %d0, -129

# CHECK-INST: lt %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0xf2]
.code32
lt %d15, %d0, -1

# CHECK-INST: lt %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0xf2]
.code32
lt %d15, %d0, 0

# CHECK-INST: lt %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0xf2]
.code32
lt %d15, %d0, 1

# CHECK-INST: lt %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0xf2]
.code32
lt %d15, %d0, 128

# CHECK-INST: lt %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0xf2]
.code32
lt %d15, %d0, 255

# CHECK-INST: lt %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0xf2]
.code32
lt %d15, %d1, -256

# CHECK-INST: lt %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0xf2]
.code32
lt %d15, %d1, -129

# CHECK-INST: lt %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0xf2]
.code32
lt %d15, %d1, -1

# CHECK-INST: lt %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0xf2]
.code32
lt %d15, %d1, 0

# CHECK-INST: lt %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0xf2]
.code32
lt %d15, %d1, 1

# CHECK-INST: lt %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0xf2]
.code32
lt %d15, %d1, 128

# CHECK-INST: lt %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0xf2]
.code32
lt %d15, %d1, 255

# CHECK-INST: lt %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0xf2]
.code32
lt %d15, %d14, -256

# CHECK-INST: lt %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0xf2]
.code32
lt %d15, %d14, -129

# CHECK-INST: lt %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0xf2]
.code32
lt %d15, %d14, -1

# CHECK-INST: lt %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0xf2]
.code32
lt %d15, %d14, 0

# CHECK-INST: lt %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0xf2]
.code32
lt %d15, %d14, 1

# CHECK-INST: lt %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0xf2]
.code32
lt %d15, %d14, 128

# CHECK-INST: lt %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0xf2]
.code32
lt %d15, %d14, 255

# CHECK-INST: lt %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0xf2]
.code32
lt %d15, %d15, -256

# CHECK-INST: lt %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0xf2]
.code32
lt %d15, %d15, -129

# CHECK-INST: lt %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0xf2]
.code32
lt %d15, %d15, -1

# CHECK-INST: lt %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0xf2]
.code32
lt %d15, %d15, 0

# CHECK-INST: lt %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0xf2]
.code32
lt %d15, %d15, 1

# CHECK-INST: lt %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0xf2]
.code32
lt %d15, %d15, 128

# CHECK-INST: lt %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0xf2]
.code32
lt %d15, %d15, 255

# CHECK-INST: lt.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x70,0x02]
.code32
lt.u %d0, %d0, 271

# CHECK-INST: lt.u %d0, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x7f,0x02]
.code32
lt.u %d0, %d0, 496

# CHECK-INST: lt.u %d0, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x7f,0x02]
.code32
lt.u %d0, %d0, 511

# CHECK-INST: lt.u %d0, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x70,0x02]
.code32
lt.u %d0, %d1, 271

# CHECK-INST: lt.u %d0, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x7f,0x02]
.code32
lt.u %d0, %d1, 496

# CHECK-INST: lt.u %d0, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x7f,0x02]
.code32
lt.u %d0, %d1, 511

# CHECK-INST: lt.u %d0, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x70,0x02]
.code32
lt.u %d0, %d14, 271

# CHECK-INST: lt.u %d0, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x7f,0x02]
.code32
lt.u %d0, %d14, 496

# CHECK-INST: lt.u %d0, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x7f,0x02]
.code32
lt.u %d0, %d14, 511

# CHECK-INST: lt.u %d0, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x70,0x02]
.code32
lt.u %d0, %d15, 271

# CHECK-INST: lt.u %d0, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x7f,0x02]
.code32
lt.u %d0, %d15, 496

# CHECK-INST: lt.u %d0, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x7f,0x02]
.code32
lt.u %d0, %d15, 511

# CHECK-INST: lt.u %d1, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x70,0x12]
.code32
lt.u %d1, %d0, 271

# CHECK-INST: lt.u %d1, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x7f,0x12]
.code32
lt.u %d1, %d0, 496

# CHECK-INST: lt.u %d1, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x7f,0x12]
.code32
lt.u %d1, %d0, 511

# CHECK-INST: lt.u %d1, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x70,0x12]
.code32
lt.u %d1, %d1, 271

# CHECK-INST: lt.u %d1, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x7f,0x12]
.code32
lt.u %d1, %d1, 496

# CHECK-INST: lt.u %d1, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x7f,0x12]
.code32
lt.u %d1, %d1, 511

# CHECK-INST: lt.u %d1, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x70,0x12]
.code32
lt.u %d1, %d14, 271

# CHECK-INST: lt.u %d1, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x7f,0x12]
.code32
lt.u %d1, %d14, 496

# CHECK-INST: lt.u %d1, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x7f,0x12]
.code32
lt.u %d1, %d14, 511

# CHECK-INST: lt.u %d1, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x70,0x12]
.code32
lt.u %d1, %d15, 271

# CHECK-INST: lt.u %d1, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x7f,0x12]
.code32
lt.u %d1, %d15, 496

# CHECK-INST: lt.u %d1, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x7f,0x12]
.code32
lt.u %d1, %d15, 511

# CHECK-INST: lt.u %d14, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x70,0xe2]
.code32
lt.u %d14, %d0, 271

# CHECK-INST: lt.u %d14, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x7f,0xe2]
.code32
lt.u %d14, %d0, 496

# CHECK-INST: lt.u %d14, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x7f,0xe2]
.code32
lt.u %d14, %d0, 511

# CHECK-INST: lt.u %d14, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x70,0xe2]
.code32
lt.u %d14, %d1, 271

# CHECK-INST: lt.u %d14, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x7f,0xe2]
.code32
lt.u %d14, %d1, 496

# CHECK-INST: lt.u %d14, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x7f,0xe2]
.code32
lt.u %d14, %d1, 511

# CHECK-INST: lt.u %d14, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x70,0xe2]
.code32
lt.u %d14, %d14, 271

# CHECK-INST: lt.u %d14, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x7f,0xe2]
.code32
lt.u %d14, %d14, 496

# CHECK-INST: lt.u %d14, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x7f,0xe2]
.code32
lt.u %d14, %d14, 511

# CHECK-INST: lt.u %d14, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x70,0xe2]
.code32
lt.u %d14, %d15, 271

# CHECK-INST: lt.u %d14, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x7f,0xe2]
.code32
lt.u %d14, %d15, 496

# CHECK-INST: lt.u %d14, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x7f,0xe2]
.code32
lt.u %d14, %d15, 511

# CHECK-INST: lt.u %d15, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x70,0xf2]
.code32
lt.u %d15, %d0, 271

# CHECK-INST: lt.u %d15, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x7f,0xf2]
.code32
lt.u %d15, %d0, 496

# CHECK-INST: lt.u %d15, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x7f,0xf2]
.code32
lt.u %d15, %d0, 511

# CHECK-INST: lt.u %d15, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x70,0xf2]
.code32
lt.u %d15, %d1, 271

# CHECK-INST: lt.u %d15, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x7f,0xf2]
.code32
lt.u %d15, %d1, 496

# CHECK-INST: lt.u %d15, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x7f,0xf2]
.code32
lt.u %d15, %d1, 511

# CHECK-INST: lt.u %d15, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x70,0xf2]
.code32
lt.u %d15, %d14, 271

# CHECK-INST: lt.u %d15, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x7f,0xf2]
.code32
lt.u %d15, %d14, 496

# CHECK-INST: lt.u %d15, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x7f,0xf2]
.code32
lt.u %d15, %d14, 511

# CHECK-INST: lt.u %d15, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x70,0xf2]
.code32
lt.u %d15, %d15, 271

# CHECK-INST: lt.u %d15, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x7f,0xf2]
.code32
lt.u %d15, %d15, 496

# CHECK-INST: lt.u %d15, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x7f,0xf2]
.code32
lt.u %d15, %d15, 511

# CHECK-INST: lt.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x01]
.code32
lt.u %d0, %d0, %d0

# CHECK-INST: lt.u %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0x01]
.code32
lt.u %d0, %d0, %d1

# CHECK-INST: lt.u %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0x01]
.code32
lt.u %d0, %d0, %d14

# CHECK-INST: lt.u %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0x01]
.code32
lt.u %d0, %d0, %d15

# CHECK-INST: lt.u %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0x01]
.code32
lt.u %d0, %d1, %d0

# CHECK-INST: lt.u %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0x01]
.code32
lt.u %d0, %d1, %d1

# CHECK-INST: lt.u %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0x01]
.code32
lt.u %d0, %d1, %d14

# CHECK-INST: lt.u %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0x01]
.code32
lt.u %d0, %d1, %d15

# CHECK-INST: lt.u %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0x01]
.code32
lt.u %d0, %d14, %d0

# CHECK-INST: lt.u %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0x01]
.code32
lt.u %d0, %d14, %d1

# CHECK-INST: lt.u %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0x01]
.code32
lt.u %d0, %d14, %d14

# CHECK-INST: lt.u %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0x01]
.code32
lt.u %d0, %d14, %d15

# CHECK-INST: lt.u %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0x01]
.code32
lt.u %d0, %d15, %d0

# CHECK-INST: lt.u %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0x01]
.code32
lt.u %d0, %d15, %d1

# CHECK-INST: lt.u %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0x01]
.code32
lt.u %d0, %d15, %d14

# CHECK-INST: lt.u %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0x01]
.code32
lt.u %d0, %d15, %d15

# CHECK-INST: lt.u %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0x11]
.code32
lt.u %d1, %d0, %d0

# CHECK-INST: lt.u %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0x11]
.code32
lt.u %d1, %d0, %d1

# CHECK-INST: lt.u %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0x11]
.code32
lt.u %d1, %d0, %d14

# CHECK-INST: lt.u %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0x11]
.code32
lt.u %d1, %d0, %d15

# CHECK-INST: lt.u %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0x11]
.code32
lt.u %d1, %d1, %d0

# CHECK-INST: lt.u %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0x11]
.code32
lt.u %d1, %d1, %d1

# CHECK-INST: lt.u %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0x11]
.code32
lt.u %d1, %d1, %d14

# CHECK-INST: lt.u %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0x11]
.code32
lt.u %d1, %d1, %d15

# CHECK-INST: lt.u %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0x11]
.code32
lt.u %d1, %d14, %d0

# CHECK-INST: lt.u %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0x11]
.code32
lt.u %d1, %d14, %d1

# CHECK-INST: lt.u %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0x11]
.code32
lt.u %d1, %d14, %d14

# CHECK-INST: lt.u %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0x11]
.code32
lt.u %d1, %d14, %d15

# CHECK-INST: lt.u %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0x11]
.code32
lt.u %d1, %d15, %d0

# CHECK-INST: lt.u %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0x11]
.code32
lt.u %d1, %d15, %d1

# CHECK-INST: lt.u %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0x11]
.code32
lt.u %d1, %d15, %d14

# CHECK-INST: lt.u %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0x11]
.code32
lt.u %d1, %d15, %d15

# CHECK-INST: lt.u %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0xe1]
.code32
lt.u %d14, %d0, %d0

# CHECK-INST: lt.u %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0xe1]
.code32
lt.u %d14, %d0, %d1

# CHECK-INST: lt.u %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0xe1]
.code32
lt.u %d14, %d0, %d14

# CHECK-INST: lt.u %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0xe1]
.code32
lt.u %d14, %d0, %d15

# CHECK-INST: lt.u %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0xe1]
.code32
lt.u %d14, %d1, %d0

# CHECK-INST: lt.u %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0xe1]
.code32
lt.u %d14, %d1, %d1

# CHECK-INST: lt.u %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0xe1]
.code32
lt.u %d14, %d1, %d14

# CHECK-INST: lt.u %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0xe1]
.code32
lt.u %d14, %d1, %d15

# CHECK-INST: lt.u %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0xe1]
.code32
lt.u %d14, %d14, %d0

# CHECK-INST: lt.u %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0xe1]
.code32
lt.u %d14, %d14, %d1

# CHECK-INST: lt.u %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0xe1]
.code32
lt.u %d14, %d14, %d14

# CHECK-INST: lt.u %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0xe1]
.code32
lt.u %d14, %d14, %d15

# CHECK-INST: lt.u %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0xe1]
.code32
lt.u %d14, %d15, %d0

# CHECK-INST: lt.u %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0xe1]
.code32
lt.u %d14, %d15, %d1

# CHECK-INST: lt.u %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0xe1]
.code32
lt.u %d14, %d15, %d14

# CHECK-INST: lt.u %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0xe1]
.code32
lt.u %d14, %d15, %d15

# CHECK-INST: lt.u %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x30,0xf1]
.code32
lt.u %d15, %d0, %d0

# CHECK-INST: lt.u %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x30,0xf1]
.code32
lt.u %d15, %d0, %d1

# CHECK-INST: lt.u %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x30,0xf1]
.code32
lt.u %d15, %d0, %d14

# CHECK-INST: lt.u %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x30,0xf1]
.code32
lt.u %d15, %d0, %d15

# CHECK-INST: lt.u %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x30,0xf1]
.code32
lt.u %d15, %d1, %d0

# CHECK-INST: lt.u %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x30,0xf1]
.code32
lt.u %d15, %d1, %d1

# CHECK-INST: lt.u %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x30,0xf1]
.code32
lt.u %d15, %d1, %d14

# CHECK-INST: lt.u %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x30,0xf1]
.code32
lt.u %d15, %d1, %d15

# CHECK-INST: lt.u %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x30,0xf1]
.code32
lt.u %d15, %d14, %d0

# CHECK-INST: lt.u %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x30,0xf1]
.code32
lt.u %d15, %d14, %d1

# CHECK-INST: lt.u %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x30,0xf1]
.code32
lt.u %d15, %d14, %d14

# CHECK-INST: lt.u %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x30,0xf1]
.code32
lt.u %d15, %d14, %d15

# CHECK-INST: lt.u %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x30,0xf1]
.code32
lt.u %d15, %d15, %d0

# CHECK-INST: lt.u %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x30,0xf1]
.code32
lt.u %d15, %d15, %d1

# CHECK-INST: lt.u %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x30,0xf1]
.code32
lt.u %d15, %d15, %d14

# CHECK-INST: lt.u %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x30,0xf1]
.code32
lt.u %d15, %d15, %d15

# CHECK-INST: ne %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x10,0x01]
.code32
ne %d0, %d0, %d0

# CHECK-INST: ne %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x10,0x01]
.code32
ne %d0, %d0, %d1

# CHECK-INST: ne %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x10,0x01]
.code32
ne %d0, %d0, %d14

# CHECK-INST: ne %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x10,0x01]
.code32
ne %d0, %d0, %d15

# CHECK-INST: ne %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x10,0x01]
.code32
ne %d0, %d1, %d0

# CHECK-INST: ne %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x10,0x01]
.code32
ne %d0, %d1, %d1

# CHECK-INST: ne %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x10,0x01]
.code32
ne %d0, %d1, %d14

# CHECK-INST: ne %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x10,0x01]
.code32
ne %d0, %d1, %d15

# CHECK-INST: ne %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x10,0x01]
.code32
ne %d0, %d14, %d0

# CHECK-INST: ne %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x10,0x01]
.code32
ne %d0, %d14, %d1

# CHECK-INST: ne %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x10,0x01]
.code32
ne %d0, %d14, %d14

# CHECK-INST: ne %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x10,0x01]
.code32
ne %d0, %d14, %d15

# CHECK-INST: ne %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x10,0x01]
.code32
ne %d0, %d15, %d0

# CHECK-INST: ne %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x10,0x01]
.code32
ne %d0, %d15, %d1

# CHECK-INST: ne %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x10,0x01]
.code32
ne %d0, %d15, %d14

# CHECK-INST: ne %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x10,0x01]
.code32
ne %d0, %d15, %d15

# CHECK-INST: ne %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x10,0x11]
.code32
ne %d1, %d0, %d0

# CHECK-INST: ne %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x10,0x11]
.code32
ne %d1, %d0, %d1

# CHECK-INST: ne %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x10,0x11]
.code32
ne %d1, %d0, %d14

# CHECK-INST: ne %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x10,0x11]
.code32
ne %d1, %d0, %d15

# CHECK-INST: ne %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x10,0x11]
.code32
ne %d1, %d1, %d0

# CHECK-INST: ne %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x10,0x11]
.code32
ne %d1, %d1, %d1

# CHECK-INST: ne %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x10,0x11]
.code32
ne %d1, %d1, %d14

# CHECK-INST: ne %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x10,0x11]
.code32
ne %d1, %d1, %d15

# CHECK-INST: ne %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x10,0x11]
.code32
ne %d1, %d14, %d0

# CHECK-INST: ne %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x10,0x11]
.code32
ne %d1, %d14, %d1

# CHECK-INST: ne %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x10,0x11]
.code32
ne %d1, %d14, %d14

# CHECK-INST: ne %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x10,0x11]
.code32
ne %d1, %d14, %d15

# CHECK-INST: ne %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x10,0x11]
.code32
ne %d1, %d15, %d0

# CHECK-INST: ne %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x10,0x11]
.code32
ne %d1, %d15, %d1

# CHECK-INST: ne %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x10,0x11]
.code32
ne %d1, %d15, %d14

# CHECK-INST: ne %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x10,0x11]
.code32
ne %d1, %d15, %d15

# CHECK-INST: ne %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x10,0xe1]
.code32
ne %d14, %d0, %d0

# CHECK-INST: ne %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x10,0xe1]
.code32
ne %d14, %d0, %d1

# CHECK-INST: ne %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x10,0xe1]
.code32
ne %d14, %d0, %d14

# CHECK-INST: ne %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x10,0xe1]
.code32
ne %d14, %d0, %d15

# CHECK-INST: ne %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x10,0xe1]
.code32
ne %d14, %d1, %d0

# CHECK-INST: ne %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x10,0xe1]
.code32
ne %d14, %d1, %d1

# CHECK-INST: ne %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x10,0xe1]
.code32
ne %d14, %d1, %d14

# CHECK-INST: ne %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x10,0xe1]
.code32
ne %d14, %d1, %d15

# CHECK-INST: ne %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x10,0xe1]
.code32
ne %d14, %d14, %d0

# CHECK-INST: ne %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x10,0xe1]
.code32
ne %d14, %d14, %d1

# CHECK-INST: ne %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x10,0xe1]
.code32
ne %d14, %d14, %d14

# CHECK-INST: ne %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x10,0xe1]
.code32
ne %d14, %d14, %d15

# CHECK-INST: ne %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x10,0xe1]
.code32
ne %d14, %d15, %d0

# CHECK-INST: ne %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x10,0xe1]
.code32
ne %d14, %d15, %d1

# CHECK-INST: ne %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x10,0xe1]
.code32
ne %d14, %d15, %d14

# CHECK-INST: ne %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x10,0xe1]
.code32
ne %d14, %d15, %d15

# CHECK-INST: ne %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x10,0xf1]
.code32
ne %d15, %d0, %d0

# CHECK-INST: ne %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x10,0xf1]
.code32
ne %d15, %d0, %d1

# CHECK-INST: ne %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x10,0xf1]
.code32
ne %d15, %d0, %d14

# CHECK-INST: ne %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x10,0xf1]
.code32
ne %d15, %d0, %d15

# CHECK-INST: ne %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x10,0xf1]
.code32
ne %d15, %d1, %d0

# CHECK-INST: ne %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x10,0xf1]
.code32
ne %d15, %d1, %d1

# CHECK-INST: ne %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x10,0xf1]
.code32
ne %d15, %d1, %d14

# CHECK-INST: ne %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x10,0xf1]
.code32
ne %d15, %d1, %d15

# CHECK-INST: ne %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x10,0xf1]
.code32
ne %d15, %d14, %d0

# CHECK-INST: ne %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x10,0xf1]
.code32
ne %d15, %d14, %d1

# CHECK-INST: ne %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x10,0xf1]
.code32
ne %d15, %d14, %d14

# CHECK-INST: ne %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x10,0xf1]
.code32
ne %d15, %d14, %d15

# CHECK-INST: ne %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x10,0xf1]
.code32
ne %d15, %d15, %d0

# CHECK-INST: ne %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x10,0xf1]
.code32
ne %d15, %d15, %d1

# CHECK-INST: ne %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x10,0xf1]
.code32
ne %d15, %d15, %d14

# CHECK-INST: ne %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x10,0xf1]
.code32
ne %d15, %d15, %d15

# CHECK-INST: ne %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0x02]
.code32
ne %d0, %d0, -256

# CHECK-INST: ne %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0x02]
.code32
ne %d0, %d0, -129

# CHECK-INST: ne %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0x02]
.code32
ne %d0, %d0, -1

# CHECK-INST: ne %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0x02]
.code32
ne %d0, %d0, 0

# CHECK-INST: ne %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0x02]
.code32
ne %d0, %d0, 1

# CHECK-INST: ne %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0x02]
.code32
ne %d0, %d0, 128

# CHECK-INST: ne %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0x02]
.code32
ne %d0, %d0, 255

# CHECK-INST: ne %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0x02]
.code32
ne %d0, %d1, -256

# CHECK-INST: ne %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0x02]
.code32
ne %d0, %d1, -129

# CHECK-INST: ne %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0x02]
.code32
ne %d0, %d1, -1

# CHECK-INST: ne %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0x02]
.code32
ne %d0, %d1, 0

# CHECK-INST: ne %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0x02]
.code32
ne %d0, %d1, 1

# CHECK-INST: ne %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0x02]
.code32
ne %d0, %d1, 128

# CHECK-INST: ne %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0x02]
.code32
ne %d0, %d1, 255

# CHECK-INST: ne %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0x02]
.code32
ne %d0, %d14, -256

# CHECK-INST: ne %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0x02]
.code32
ne %d0, %d14, -129

# CHECK-INST: ne %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0x02]
.code32
ne %d0, %d14, -1

# CHECK-INST: ne %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0x02]
.code32
ne %d0, %d14, 0

# CHECK-INST: ne %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0x02]
.code32
ne %d0, %d14, 1

# CHECK-INST: ne %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0x02]
.code32
ne %d0, %d14, 128

# CHECK-INST: ne %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0x02]
.code32
ne %d0, %d14, 255

# CHECK-INST: ne %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0x02]
.code32
ne %d0, %d15, -256

# CHECK-INST: ne %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0x02]
.code32
ne %d0, %d15, -129

# CHECK-INST: ne %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0x02]
.code32
ne %d0, %d15, -1

# CHECK-INST: ne %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0x02]
.code32
ne %d0, %d15, 0

# CHECK-INST: ne %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0x02]
.code32
ne %d0, %d15, 1

# CHECK-INST: ne %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0x02]
.code32
ne %d0, %d15, 128

# CHECK-INST: ne %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0x02]
.code32
ne %d0, %d15, 255

# CHECK-INST: ne %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0x12]
.code32
ne %d1, %d0, -256

# CHECK-INST: ne %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0x12]
.code32
ne %d1, %d0, -129

# CHECK-INST: ne %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0x12]
.code32
ne %d1, %d0, -1

# CHECK-INST: ne %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0x12]
.code32
ne %d1, %d0, 0

# CHECK-INST: ne %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0x12]
.code32
ne %d1, %d0, 1

# CHECK-INST: ne %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0x12]
.code32
ne %d1, %d0, 128

# CHECK-INST: ne %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0x12]
.code32
ne %d1, %d0, 255

# CHECK-INST: ne %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0x12]
.code32
ne %d1, %d1, -256

# CHECK-INST: ne %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0x12]
.code32
ne %d1, %d1, -129

# CHECK-INST: ne %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0x12]
.code32
ne %d1, %d1, -1

# CHECK-INST: ne %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0x12]
.code32
ne %d1, %d1, 0

# CHECK-INST: ne %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0x12]
.code32
ne %d1, %d1, 1

# CHECK-INST: ne %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0x12]
.code32
ne %d1, %d1, 128

# CHECK-INST: ne %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0x12]
.code32
ne %d1, %d1, 255

# CHECK-INST: ne %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0x12]
.code32
ne %d1, %d14, -256

# CHECK-INST: ne %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0x12]
.code32
ne %d1, %d14, -129

# CHECK-INST: ne %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0x12]
.code32
ne %d1, %d14, -1

# CHECK-INST: ne %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0x12]
.code32
ne %d1, %d14, 0

# CHECK-INST: ne %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0x12]
.code32
ne %d1, %d14, 1

# CHECK-INST: ne %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0x12]
.code32
ne %d1, %d14, 128

# CHECK-INST: ne %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0x12]
.code32
ne %d1, %d14, 255

# CHECK-INST: ne %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0x12]
.code32
ne %d1, %d15, -256

# CHECK-INST: ne %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0x12]
.code32
ne %d1, %d15, -129

# CHECK-INST: ne %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0x12]
.code32
ne %d1, %d15, -1

# CHECK-INST: ne %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0x12]
.code32
ne %d1, %d15, 0

# CHECK-INST: ne %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0x12]
.code32
ne %d1, %d15, 1

# CHECK-INST: ne %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0x12]
.code32
ne %d1, %d15, 128

# CHECK-INST: ne %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0x12]
.code32
ne %d1, %d15, 255

# CHECK-INST: ne %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0xe2]
.code32
ne %d14, %d0, -256

# CHECK-INST: ne %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0xe2]
.code32
ne %d14, %d0, -129

# CHECK-INST: ne %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0xe2]
.code32
ne %d14, %d0, -1

# CHECK-INST: ne %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0xe2]
.code32
ne %d14, %d0, 0

# CHECK-INST: ne %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0xe2]
.code32
ne %d14, %d0, 1

# CHECK-INST: ne %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0xe2]
.code32
ne %d14, %d0, 128

# CHECK-INST: ne %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0xe2]
.code32
ne %d14, %d0, 255

# CHECK-INST: ne %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0xe2]
.code32
ne %d14, %d1, -256

# CHECK-INST: ne %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0xe2]
.code32
ne %d14, %d1, -129

# CHECK-INST: ne %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0xe2]
.code32
ne %d14, %d1, -1

# CHECK-INST: ne %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0xe2]
.code32
ne %d14, %d1, 0

# CHECK-INST: ne %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0xe2]
.code32
ne %d14, %d1, 1

# CHECK-INST: ne %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0xe2]
.code32
ne %d14, %d1, 128

# CHECK-INST: ne %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0xe2]
.code32
ne %d14, %d1, 255

# CHECK-INST: ne %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0xe2]
.code32
ne %d14, %d14, -256

# CHECK-INST: ne %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0xe2]
.code32
ne %d14, %d14, -129

# CHECK-INST: ne %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0xe2]
.code32
ne %d14, %d14, -1

# CHECK-INST: ne %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0xe2]
.code32
ne %d14, %d14, 0

# CHECK-INST: ne %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0xe2]
.code32
ne %d14, %d14, 1

# CHECK-INST: ne %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0xe2]
.code32
ne %d14, %d14, 128

# CHECK-INST: ne %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0xe2]
.code32
ne %d14, %d14, 255

# CHECK-INST: ne %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0xe2]
.code32
ne %d14, %d15, -256

# CHECK-INST: ne %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0xe2]
.code32
ne %d14, %d15, -129

# CHECK-INST: ne %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0xe2]
.code32
ne %d14, %d15, -1

# CHECK-INST: ne %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0xe2]
.code32
ne %d14, %d15, 0

# CHECK-INST: ne %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0xe2]
.code32
ne %d14, %d15, 1

# CHECK-INST: ne %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0xe2]
.code32
ne %d14, %d15, 128

# CHECK-INST: ne %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0xe2]
.code32
ne %d14, %d15, 255

# CHECK-INST: ne %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0xf2]
.code32
ne %d15, %d0, -256

# CHECK-INST: ne %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0xf2]
.code32
ne %d15, %d0, -129

# CHECK-INST: ne %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0xf2]
.code32
ne %d15, %d0, -1

# CHECK-INST: ne %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0xf2]
.code32
ne %d15, %d0, 0

# CHECK-INST: ne %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0xf2]
.code32
ne %d15, %d0, 1

# CHECK-INST: ne %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0xf2]
.code32
ne %d15, %d0, 128

# CHECK-INST: ne %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0xf2]
.code32
ne %d15, %d0, 255

# CHECK-INST: ne %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0xf2]
.code32
ne %d15, %d1, -256

# CHECK-INST: ne %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0xf2]
.code32
ne %d15, %d1, -129

# CHECK-INST: ne %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0xf2]
.code32
ne %d15, %d1, -1

# CHECK-INST: ne %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0xf2]
.code32
ne %d15, %d1, 0

# CHECK-INST: ne %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0xf2]
.code32
ne %d15, %d1, 1

# CHECK-INST: ne %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0xf2]
.code32
ne %d15, %d1, 128

# CHECK-INST: ne %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0xf2]
.code32
ne %d15, %d1, 255

# CHECK-INST: ne %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0xf2]
.code32
ne %d15, %d14, -256

# CHECK-INST: ne %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0xf2]
.code32
ne %d15, %d14, -129

# CHECK-INST: ne %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0xf2]
.code32
ne %d15, %d14, -1

# CHECK-INST: ne %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0xf2]
.code32
ne %d15, %d14, 0

# CHECK-INST: ne %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0xf2]
.code32
ne %d15, %d14, 1

# CHECK-INST: ne %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0xf2]
.code32
ne %d15, %d14, 128

# CHECK-INST: ne %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0xf2]
.code32
ne %d15, %d14, 255

# CHECK-INST: ne %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0xf2]
.code32
ne %d15, %d15, -256

# CHECK-INST: ne %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0xf2]
.code32
ne %d15, %d15, -129

# CHECK-INST: ne %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0xf2]
.code32
ne %d15, %d15, -1

# CHECK-INST: ne %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0xf2]
.code32
ne %d15, %d15, 0

# CHECK-INST: ne %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0xf2]
.code32
ne %d15, %d15, 1

# CHECK-INST: ne %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0xf2]
.code32
ne %d15, %d15, 128

# CHECK-INST: ne %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0xf2]
.code32
ne %d15, %d15, 255


### Test if 16 bit instructions are generated by default

# CHECK-INST: eq %d15, %d0, %d0
# CHECK: encoding: [0x3a,0x00]
eq %d15, %d0, %d0

# CHECK-INST: eq %d15, %d0, 0
# CHECK: encoding: [0xba,0x00]
eq %d15, %d0, 0

# CHECK-INST: lt %d15, %d0, %d0
# CHECK: encoding: [0x7a,0x00]
lt %d15, %d0, %d0

# CHECK-INST: lt %d15, %d0, 0
# CHECK: encoding: [0xfa,0x00]
lt %d15, %d0, 0
