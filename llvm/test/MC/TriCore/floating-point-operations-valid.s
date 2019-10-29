# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s

# CHECK-INST: add.f %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x21,0x00]
add.f %d0, %d0, %d0

# CHECK-INST: add.f %d0, %d0, %d1
# CHECK: encoding: [0x6b,0x01,0x21,0x00]
add.f %d0, %d0, %d1

# CHECK-INST: add.f %d0, %d0, %d14
# CHECK: encoding: [0x6b,0x0e,0x21,0x00]
add.f %d0, %d0, %d14

# CHECK-INST: add.f %d0, %d0, %d15
# CHECK: encoding: [0x6b,0x0f,0x21,0x00]
add.f %d0, %d0, %d15

# CHECK-INST: add.f %d0, %d1, %d0
# CHECK: encoding: [0x6b,0x00,0x21,0x01]
add.f %d0, %d1, %d0

# CHECK-INST: add.f %d0, %d1, %d1
# CHECK: encoding: [0x6b,0x01,0x21,0x01]
add.f %d0, %d1, %d1

# CHECK-INST: add.f %d0, %d1, %d14
# CHECK: encoding: [0x6b,0x0e,0x21,0x01]
add.f %d0, %d1, %d14

# CHECK-INST: add.f %d0, %d1, %d15
# CHECK: encoding: [0x6b,0x0f,0x21,0x01]
add.f %d0, %d1, %d15

# CHECK-INST: add.f %d0, %d14, %d0
# CHECK: encoding: [0x6b,0x00,0x21,0x0e]
add.f %d0, %d14, %d0

# CHECK-INST: add.f %d0, %d14, %d1
# CHECK: encoding: [0x6b,0x01,0x21,0x0e]
add.f %d0, %d14, %d1

# CHECK-INST: add.f %d0, %d14, %d14
# CHECK: encoding: [0x6b,0x0e,0x21,0x0e]
add.f %d0, %d14, %d14

# CHECK-INST: add.f %d0, %d14, %d15
# CHECK: encoding: [0x6b,0x0f,0x21,0x0e]
add.f %d0, %d14, %d15

# CHECK-INST: add.f %d0, %d15, %d0
# CHECK: encoding: [0x6b,0x00,0x21,0x0f]
add.f %d0, %d15, %d0

# CHECK-INST: add.f %d0, %d15, %d1
# CHECK: encoding: [0x6b,0x01,0x21,0x0f]
add.f %d0, %d15, %d1

# CHECK-INST: add.f %d0, %d15, %d14
# CHECK: encoding: [0x6b,0x0e,0x21,0x0f]
add.f %d0, %d15, %d14

# CHECK-INST: add.f %d0, %d15, %d15
# CHECK: encoding: [0x6b,0x0f,0x21,0x0f]
add.f %d0, %d15, %d15

# CHECK-INST: add.f %d1, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x21,0x10]
add.f %d1, %d0, %d0

# CHECK-INST: add.f %d1, %d0, %d1
# CHECK: encoding: [0x6b,0x01,0x21,0x10]
add.f %d1, %d0, %d1

# CHECK-INST: add.f %d1, %d0, %d14
# CHECK: encoding: [0x6b,0x0e,0x21,0x10]
add.f %d1, %d0, %d14

# CHECK-INST: add.f %d1, %d0, %d15
# CHECK: encoding: [0x6b,0x0f,0x21,0x10]
add.f %d1, %d0, %d15

# CHECK-INST: add.f %d1, %d1, %d0
# CHECK: encoding: [0x6b,0x00,0x21,0x11]
add.f %d1, %d1, %d0

# CHECK-INST: add.f %d1, %d1, %d1
# CHECK: encoding: [0x6b,0x01,0x21,0x11]
add.f %d1, %d1, %d1

# CHECK-INST: add.f %d1, %d1, %d14
# CHECK: encoding: [0x6b,0x0e,0x21,0x11]
add.f %d1, %d1, %d14

# CHECK-INST: add.f %d1, %d1, %d15
# CHECK: encoding: [0x6b,0x0f,0x21,0x11]
add.f %d1, %d1, %d15

# CHECK-INST: add.f %d1, %d14, %d0
# CHECK: encoding: [0x6b,0x00,0x21,0x1e]
add.f %d1, %d14, %d0

# CHECK-INST: add.f %d1, %d14, %d1
# CHECK: encoding: [0x6b,0x01,0x21,0x1e]
add.f %d1, %d14, %d1

# CHECK-INST: add.f %d1, %d14, %d14
# CHECK: encoding: [0x6b,0x0e,0x21,0x1e]
add.f %d1, %d14, %d14

# CHECK-INST: add.f %d1, %d14, %d15
# CHECK: encoding: [0x6b,0x0f,0x21,0x1e]
add.f %d1, %d14, %d15

# CHECK-INST: add.f %d1, %d15, %d0
# CHECK: encoding: [0x6b,0x00,0x21,0x1f]
add.f %d1, %d15, %d0

# CHECK-INST: add.f %d1, %d15, %d1
# CHECK: encoding: [0x6b,0x01,0x21,0x1f]
add.f %d1, %d15, %d1

# CHECK-INST: add.f %d1, %d15, %d14
# CHECK: encoding: [0x6b,0x0e,0x21,0x1f]
add.f %d1, %d15, %d14

# CHECK-INST: add.f %d1, %d15, %d15
# CHECK: encoding: [0x6b,0x0f,0x21,0x1f]
add.f %d1, %d15, %d15

# CHECK-INST: add.f %d14, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x21,0xe0]
add.f %d14, %d0, %d0

# CHECK-INST: add.f %d14, %d0, %d1
# CHECK: encoding: [0x6b,0x01,0x21,0xe0]
add.f %d14, %d0, %d1

# CHECK-INST: add.f %d14, %d0, %d14
# CHECK: encoding: [0x6b,0x0e,0x21,0xe0]
add.f %d14, %d0, %d14

# CHECK-INST: add.f %d14, %d0, %d15
# CHECK: encoding: [0x6b,0x0f,0x21,0xe0]
add.f %d14, %d0, %d15

# CHECK-INST: add.f %d14, %d1, %d0
# CHECK: encoding: [0x6b,0x00,0x21,0xe1]
add.f %d14, %d1, %d0

# CHECK-INST: add.f %d14, %d1, %d1
# CHECK: encoding: [0x6b,0x01,0x21,0xe1]
add.f %d14, %d1, %d1

# CHECK-INST: add.f %d14, %d1, %d14
# CHECK: encoding: [0x6b,0x0e,0x21,0xe1]
add.f %d14, %d1, %d14

# CHECK-INST: add.f %d14, %d1, %d15
# CHECK: encoding: [0x6b,0x0f,0x21,0xe1]
add.f %d14, %d1, %d15

# CHECK-INST: add.f %d14, %d14, %d0
# CHECK: encoding: [0x6b,0x00,0x21,0xee]
add.f %d14, %d14, %d0

# CHECK-INST: add.f %d14, %d14, %d1
# CHECK: encoding: [0x6b,0x01,0x21,0xee]
add.f %d14, %d14, %d1

# CHECK-INST: add.f %d14, %d14, %d14
# CHECK: encoding: [0x6b,0x0e,0x21,0xee]
add.f %d14, %d14, %d14

# CHECK-INST: add.f %d14, %d14, %d15
# CHECK: encoding: [0x6b,0x0f,0x21,0xee]
add.f %d14, %d14, %d15

# CHECK-INST: add.f %d14, %d15, %d0
# CHECK: encoding: [0x6b,0x00,0x21,0xef]
add.f %d14, %d15, %d0

# CHECK-INST: add.f %d14, %d15, %d1
# CHECK: encoding: [0x6b,0x01,0x21,0xef]
add.f %d14, %d15, %d1

# CHECK-INST: add.f %d14, %d15, %d14
# CHECK: encoding: [0x6b,0x0e,0x21,0xef]
add.f %d14, %d15, %d14

# CHECK-INST: add.f %d14, %d15, %d15
# CHECK: encoding: [0x6b,0x0f,0x21,0xef]
add.f %d14, %d15, %d15

# CHECK-INST: add.f %d15, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x21,0xf0]
add.f %d15, %d0, %d0

# CHECK-INST: add.f %d15, %d0, %d1
# CHECK: encoding: [0x6b,0x01,0x21,0xf0]
add.f %d15, %d0, %d1

# CHECK-INST: add.f %d15, %d0, %d14
# CHECK: encoding: [0x6b,0x0e,0x21,0xf0]
add.f %d15, %d0, %d14

# CHECK-INST: add.f %d15, %d0, %d15
# CHECK: encoding: [0x6b,0x0f,0x21,0xf0]
add.f %d15, %d0, %d15

# CHECK-INST: add.f %d15, %d1, %d0
# CHECK: encoding: [0x6b,0x00,0x21,0xf1]
add.f %d15, %d1, %d0

# CHECK-INST: add.f %d15, %d1, %d1
# CHECK: encoding: [0x6b,0x01,0x21,0xf1]
add.f %d15, %d1, %d1

# CHECK-INST: add.f %d15, %d1, %d14
# CHECK: encoding: [0x6b,0x0e,0x21,0xf1]
add.f %d15, %d1, %d14

# CHECK-INST: add.f %d15, %d1, %d15
# CHECK: encoding: [0x6b,0x0f,0x21,0xf1]
add.f %d15, %d1, %d15

# CHECK-INST: add.f %d15, %d14, %d0
# CHECK: encoding: [0x6b,0x00,0x21,0xfe]
add.f %d15, %d14, %d0

# CHECK-INST: add.f %d15, %d14, %d1
# CHECK: encoding: [0x6b,0x01,0x21,0xfe]
add.f %d15, %d14, %d1

# CHECK-INST: add.f %d15, %d14, %d14
# CHECK: encoding: [0x6b,0x0e,0x21,0xfe]
add.f %d15, %d14, %d14

# CHECK-INST: add.f %d15, %d14, %d15
# CHECK: encoding: [0x6b,0x0f,0x21,0xfe]
add.f %d15, %d14, %d15

# CHECK-INST: add.f %d15, %d15, %d0
# CHECK: encoding: [0x6b,0x00,0x21,0xff]
add.f %d15, %d15, %d0

# CHECK-INST: add.f %d15, %d15, %d1
# CHECK: encoding: [0x6b,0x01,0x21,0xff]
add.f %d15, %d15, %d1

# CHECK-INST: add.f %d15, %d15, %d14
# CHECK: encoding: [0x6b,0x0e,0x21,0xff]
add.f %d15, %d15, %d14

# CHECK-INST: add.f %d15, %d15, %d15
# CHECK: encoding: [0x6b,0x0f,0x21,0xff]
add.f %d15, %d15, %d15

# CHECK-INST: cmp.f %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x01,0x00]
cmp.f %d0, %d0, %d0

# CHECK-INST: cmp.f %d0, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x01,0x00]
cmp.f %d0, %d0, %d1

# CHECK-INST: cmp.f %d0, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x01,0x00]
cmp.f %d0, %d0, %d14

# CHECK-INST: cmp.f %d0, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x01,0x00]
cmp.f %d0, %d0, %d15

# CHECK-INST: cmp.f %d0, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x01,0x00]
cmp.f %d0, %d1, %d0

# CHECK-INST: cmp.f %d0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x01,0x00]
cmp.f %d0, %d1, %d1

# CHECK-INST: cmp.f %d0, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x01,0x00]
cmp.f %d0, %d1, %d14

# CHECK-INST: cmp.f %d0, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x01,0x00]
cmp.f %d0, %d1, %d15

# CHECK-INST: cmp.f %d0, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x01,0x00]
cmp.f %d0, %d14, %d0

# CHECK-INST: cmp.f %d0, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x01,0x00]
cmp.f %d0, %d14, %d1

# CHECK-INST: cmp.f %d0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x01,0x00]
cmp.f %d0, %d14, %d14

# CHECK-INST: cmp.f %d0, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x01,0x00]
cmp.f %d0, %d14, %d15

# CHECK-INST: cmp.f %d0, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x01,0x00]
cmp.f %d0, %d15, %d0

# CHECK-INST: cmp.f %d0, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x01,0x00]
cmp.f %d0, %d15, %d1

# CHECK-INST: cmp.f %d0, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x01,0x00]
cmp.f %d0, %d15, %d14

# CHECK-INST: cmp.f %d0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x01,0x00]
cmp.f %d0, %d15, %d15

# CHECK-INST: cmp.f %d1, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x01,0x10]
cmp.f %d1, %d0, %d0

# CHECK-INST: cmp.f %d1, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x01,0x10]
cmp.f %d1, %d0, %d1

# CHECK-INST: cmp.f %d1, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x01,0x10]
cmp.f %d1, %d0, %d14

# CHECK-INST: cmp.f %d1, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x01,0x10]
cmp.f %d1, %d0, %d15

# CHECK-INST: cmp.f %d1, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x01,0x10]
cmp.f %d1, %d1, %d0

# CHECK-INST: cmp.f %d1, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x01,0x10]
cmp.f %d1, %d1, %d1

# CHECK-INST: cmp.f %d1, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x01,0x10]
cmp.f %d1, %d1, %d14

# CHECK-INST: cmp.f %d1, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x01,0x10]
cmp.f %d1, %d1, %d15

# CHECK-INST: cmp.f %d1, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x01,0x10]
cmp.f %d1, %d14, %d0

# CHECK-INST: cmp.f %d1, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x01,0x10]
cmp.f %d1, %d14, %d1

# CHECK-INST: cmp.f %d1, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x01,0x10]
cmp.f %d1, %d14, %d14

# CHECK-INST: cmp.f %d1, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x01,0x10]
cmp.f %d1, %d14, %d15

# CHECK-INST: cmp.f %d1, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x01,0x10]
cmp.f %d1, %d15, %d0

# CHECK-INST: cmp.f %d1, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x01,0x10]
cmp.f %d1, %d15, %d1

# CHECK-INST: cmp.f %d1, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x01,0x10]
cmp.f %d1, %d15, %d14

# CHECK-INST: cmp.f %d1, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x01,0x10]
cmp.f %d1, %d15, %d15

# CHECK-INST: cmp.f %d14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x01,0xe0]
cmp.f %d14, %d0, %d0

# CHECK-INST: cmp.f %d14, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x01,0xe0]
cmp.f %d14, %d0, %d1

# CHECK-INST: cmp.f %d14, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x01,0xe0]
cmp.f %d14, %d0, %d14

# CHECK-INST: cmp.f %d14, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x01,0xe0]
cmp.f %d14, %d0, %d15

# CHECK-INST: cmp.f %d14, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x01,0xe0]
cmp.f %d14, %d1, %d0

# CHECK-INST: cmp.f %d14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x01,0xe0]
cmp.f %d14, %d1, %d1

# CHECK-INST: cmp.f %d14, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x01,0xe0]
cmp.f %d14, %d1, %d14

# CHECK-INST: cmp.f %d14, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x01,0xe0]
cmp.f %d14, %d1, %d15

# CHECK-INST: cmp.f %d14, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x01,0xe0]
cmp.f %d14, %d14, %d0

# CHECK-INST: cmp.f %d14, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x01,0xe0]
cmp.f %d14, %d14, %d1

# CHECK-INST: cmp.f %d14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x01,0xe0]
cmp.f %d14, %d14, %d14

# CHECK-INST: cmp.f %d14, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x01,0xe0]
cmp.f %d14, %d14, %d15

# CHECK-INST: cmp.f %d14, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x01,0xe0]
cmp.f %d14, %d15, %d0

# CHECK-INST: cmp.f %d14, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x01,0xe0]
cmp.f %d14, %d15, %d1

# CHECK-INST: cmp.f %d14, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x01,0xe0]
cmp.f %d14, %d15, %d14

# CHECK-INST: cmp.f %d14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x01,0xe0]
cmp.f %d14, %d15, %d15

# CHECK-INST: cmp.f %d15, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x01,0xf0]
cmp.f %d15, %d0, %d0

# CHECK-INST: cmp.f %d15, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x01,0xf0]
cmp.f %d15, %d0, %d1

# CHECK-INST: cmp.f %d15, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x01,0xf0]
cmp.f %d15, %d0, %d14

# CHECK-INST: cmp.f %d15, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x01,0xf0]
cmp.f %d15, %d0, %d15

# CHECK-INST: cmp.f %d15, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x01,0xf0]
cmp.f %d15, %d1, %d0

# CHECK-INST: cmp.f %d15, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x01,0xf0]
cmp.f %d15, %d1, %d1

# CHECK-INST: cmp.f %d15, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x01,0xf0]
cmp.f %d15, %d1, %d14

# CHECK-INST: cmp.f %d15, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x01,0xf0]
cmp.f %d15, %d1, %d15

# CHECK-INST: cmp.f %d15, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x01,0xf0]
cmp.f %d15, %d14, %d0

# CHECK-INST: cmp.f %d15, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x01,0xf0]
cmp.f %d15, %d14, %d1

# CHECK-INST: cmp.f %d15, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x01,0xf0]
cmp.f %d15, %d14, %d14

# CHECK-INST: cmp.f %d15, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x01,0xf0]
cmp.f %d15, %d14, %d15

# CHECK-INST: cmp.f %d15, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x01,0xf0]
cmp.f %d15, %d15, %d0

# CHECK-INST: cmp.f %d15, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x01,0xf0]
cmp.f %d15, %d15, %d1

# CHECK-INST: cmp.f %d15, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x01,0xf0]
cmp.f %d15, %d15, %d14

# CHECK-INST: cmp.f %d15, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x01,0xf0]
cmp.f %d15, %d15, %d15

# CHECK-INST: div.f %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x51,0x00]
div.f %d0, %d0, %d0

# CHECK-INST: div.f %d0, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x51,0x00]
div.f %d0, %d0, %d1

# CHECK-INST: div.f %d0, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x51,0x00]
div.f %d0, %d0, %d14

# CHECK-INST: div.f %d0, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x51,0x00]
div.f %d0, %d0, %d15

# CHECK-INST: div.f %d0, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x51,0x00]
div.f %d0, %d1, %d0

# CHECK-INST: div.f %d0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x51,0x00]
div.f %d0, %d1, %d1

# CHECK-INST: div.f %d0, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x51,0x00]
div.f %d0, %d1, %d14

# CHECK-INST: div.f %d0, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x51,0x00]
div.f %d0, %d1, %d15

# CHECK-INST: div.f %d0, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x51,0x00]
div.f %d0, %d14, %d0

# CHECK-INST: div.f %d0, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x51,0x00]
div.f %d0, %d14, %d1

# CHECK-INST: div.f %d0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x51,0x00]
div.f %d0, %d14, %d14

# CHECK-INST: div.f %d0, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x51,0x00]
div.f %d0, %d14, %d15

# CHECK-INST: div.f %d0, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x51,0x00]
div.f %d0, %d15, %d0

# CHECK-INST: div.f %d0, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x51,0x00]
div.f %d0, %d15, %d1

# CHECK-INST: div.f %d0, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x51,0x00]
div.f %d0, %d15, %d14

# CHECK-INST: div.f %d0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x51,0x00]
div.f %d0, %d15, %d15

# CHECK-INST: div.f %d1, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x51,0x10]
div.f %d1, %d0, %d0

# CHECK-INST: div.f %d1, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x51,0x10]
div.f %d1, %d0, %d1

# CHECK-INST: div.f %d1, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x51,0x10]
div.f %d1, %d0, %d14

# CHECK-INST: div.f %d1, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x51,0x10]
div.f %d1, %d0, %d15

# CHECK-INST: div.f %d1, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x51,0x10]
div.f %d1, %d1, %d0

# CHECK-INST: div.f %d1, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x51,0x10]
div.f %d1, %d1, %d1

# CHECK-INST: div.f %d1, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x51,0x10]
div.f %d1, %d1, %d14

# CHECK-INST: div.f %d1, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x51,0x10]
div.f %d1, %d1, %d15

# CHECK-INST: div.f %d1, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x51,0x10]
div.f %d1, %d14, %d0

# CHECK-INST: div.f %d1, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x51,0x10]
div.f %d1, %d14, %d1

# CHECK-INST: div.f %d1, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x51,0x10]
div.f %d1, %d14, %d14

# CHECK-INST: div.f %d1, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x51,0x10]
div.f %d1, %d14, %d15

# CHECK-INST: div.f %d1, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x51,0x10]
div.f %d1, %d15, %d0

# CHECK-INST: div.f %d1, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x51,0x10]
div.f %d1, %d15, %d1

# CHECK-INST: div.f %d1, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x51,0x10]
div.f %d1, %d15, %d14

# CHECK-INST: div.f %d1, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x51,0x10]
div.f %d1, %d15, %d15

# CHECK-INST: div.f %d14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x51,0xe0]
div.f %d14, %d0, %d0

# CHECK-INST: div.f %d14, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x51,0xe0]
div.f %d14, %d0, %d1

# CHECK-INST: div.f %d14, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x51,0xe0]
div.f %d14, %d0, %d14

# CHECK-INST: div.f %d14, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x51,0xe0]
div.f %d14, %d0, %d15

# CHECK-INST: div.f %d14, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x51,0xe0]
div.f %d14, %d1, %d0

# CHECK-INST: div.f %d14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x51,0xe0]
div.f %d14, %d1, %d1

# CHECK-INST: div.f %d14, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x51,0xe0]
div.f %d14, %d1, %d14

# CHECK-INST: div.f %d14, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x51,0xe0]
div.f %d14, %d1, %d15

# CHECK-INST: div.f %d14, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x51,0xe0]
div.f %d14, %d14, %d0

# CHECK-INST: div.f %d14, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x51,0xe0]
div.f %d14, %d14, %d1

# CHECK-INST: div.f %d14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x51,0xe0]
div.f %d14, %d14, %d14

# CHECK-INST: div.f %d14, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x51,0xe0]
div.f %d14, %d14, %d15

# CHECK-INST: div.f %d14, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x51,0xe0]
div.f %d14, %d15, %d0

# CHECK-INST: div.f %d14, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x51,0xe0]
div.f %d14, %d15, %d1

# CHECK-INST: div.f %d14, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x51,0xe0]
div.f %d14, %d15, %d14

# CHECK-INST: div.f %d14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x51,0xe0]
div.f %d14, %d15, %d15

# CHECK-INST: div.f %d15, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x51,0xf0]
div.f %d15, %d0, %d0

# CHECK-INST: div.f %d15, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x51,0xf0]
div.f %d15, %d0, %d1

# CHECK-INST: div.f %d15, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x51,0xf0]
div.f %d15, %d0, %d14

# CHECK-INST: div.f %d15, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x51,0xf0]
div.f %d15, %d0, %d15

# CHECK-INST: div.f %d15, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x51,0xf0]
div.f %d15, %d1, %d0

# CHECK-INST: div.f %d15, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x51,0xf0]
div.f %d15, %d1, %d1

# CHECK-INST: div.f %d15, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x51,0xf0]
div.f %d15, %d1, %d14

# CHECK-INST: div.f %d15, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x51,0xf0]
div.f %d15, %d1, %d15

# CHECK-INST: div.f %d15, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x51,0xf0]
div.f %d15, %d14, %d0

# CHECK-INST: div.f %d15, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x51,0xf0]
div.f %d15, %d14, %d1

# CHECK-INST: div.f %d15, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x51,0xf0]
div.f %d15, %d14, %d14

# CHECK-INST: div.f %d15, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x51,0xf0]
div.f %d15, %d14, %d15

# CHECK-INST: div.f %d15, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x51,0xf0]
div.f %d15, %d15, %d0

# CHECK-INST: div.f %d15, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x51,0xf0]
div.f %d15, %d15, %d1

# CHECK-INST: div.f %d15, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x51,0xf0]
div.f %d15, %d15, %d14

# CHECK-INST: div.f %d15, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x51,0xf0]
div.f %d15, %d15, %d15

# CHECK-INST: madd.f %d0, %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x61,0x00]
madd.f %d0, %d0, %d0, %d0

# CHECK-INST: madd.f %d0, %d0, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x61,0x00]
madd.f %d0, %d0, %d0, %d1

# CHECK-INST: madd.f %d0, %d0, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x61,0x00]
madd.f %d0, %d0, %d0, %d14

# CHECK-INST: madd.f %d0, %d0, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x61,0x00]
madd.f %d0, %d0, %d0, %d15

# CHECK-INST: madd.f %d0, %d0, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x61,0x00]
madd.f %d0, %d0, %d1, %d0

# CHECK-INST: madd.f %d0, %d0, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x61,0x00]
madd.f %d0, %d0, %d1, %d1

# CHECK-INST: madd.f %d0, %d0, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x61,0x00]
madd.f %d0, %d0, %d1, %d14

# CHECK-INST: madd.f %d0, %d0, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x61,0x00]
madd.f %d0, %d0, %d1, %d15

# CHECK-INST: madd.f %d0, %d0, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x61,0x00]
madd.f %d0, %d0, %d14, %d0

# CHECK-INST: madd.f %d0, %d0, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x61,0x00]
madd.f %d0, %d0, %d14, %d1

# CHECK-INST: madd.f %d0, %d0, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x61,0x00]
madd.f %d0, %d0, %d14, %d14

# CHECK-INST: madd.f %d0, %d0, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x61,0x00]
madd.f %d0, %d0, %d14, %d15

# CHECK-INST: madd.f %d0, %d0, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x61,0x00]
madd.f %d0, %d0, %d15, %d0

# CHECK-INST: madd.f %d0, %d0, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x61,0x00]
madd.f %d0, %d0, %d15, %d1

# CHECK-INST: madd.f %d0, %d0, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x61,0x00]
madd.f %d0, %d0, %d15, %d14

# CHECK-INST: madd.f %d0, %d0, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x61,0x00]
madd.f %d0, %d0, %d15, %d15

# CHECK-INST: madd.f %d0, %d1, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x61,0x01]
madd.f %d0, %d1, %d0, %d0

# CHECK-INST: madd.f %d0, %d1, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x61,0x01]
madd.f %d0, %d1, %d0, %d1

# CHECK-INST: madd.f %d0, %d1, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x61,0x01]
madd.f %d0, %d1, %d0, %d14

# CHECK-INST: madd.f %d0, %d1, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x61,0x01]
madd.f %d0, %d1, %d0, %d15

# CHECK-INST: madd.f %d0, %d1, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x61,0x01]
madd.f %d0, %d1, %d1, %d0

# CHECK-INST: madd.f %d0, %d1, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x61,0x01]
madd.f %d0, %d1, %d1, %d1

# CHECK-INST: madd.f %d0, %d1, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x61,0x01]
madd.f %d0, %d1, %d1, %d14

# CHECK-INST: madd.f %d0, %d1, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x61,0x01]
madd.f %d0, %d1, %d1, %d15

# CHECK-INST: madd.f %d0, %d1, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x61,0x01]
madd.f %d0, %d1, %d14, %d0

# CHECK-INST: madd.f %d0, %d1, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x61,0x01]
madd.f %d0, %d1, %d14, %d1

# CHECK-INST: madd.f %d0, %d1, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x61,0x01]
madd.f %d0, %d1, %d14, %d14

# CHECK-INST: madd.f %d0, %d1, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x61,0x01]
madd.f %d0, %d1, %d14, %d15

# CHECK-INST: madd.f %d0, %d1, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x61,0x01]
madd.f %d0, %d1, %d15, %d0

# CHECK-INST: madd.f %d0, %d1, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x61,0x01]
madd.f %d0, %d1, %d15, %d1

# CHECK-INST: madd.f %d0, %d1, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x61,0x01]
madd.f %d0, %d1, %d15, %d14

# CHECK-INST: madd.f %d0, %d1, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x61,0x01]
madd.f %d0, %d1, %d15, %d15

# CHECK-INST: madd.f %d0, %d14, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x61,0x0e]
madd.f %d0, %d14, %d0, %d0

# CHECK-INST: madd.f %d0, %d14, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x61,0x0e]
madd.f %d0, %d14, %d0, %d1

# CHECK-INST: madd.f %d0, %d14, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x61,0x0e]
madd.f %d0, %d14, %d0, %d14

# CHECK-INST: madd.f %d0, %d14, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x61,0x0e]
madd.f %d0, %d14, %d0, %d15

# CHECK-INST: madd.f %d0, %d14, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x61,0x0e]
madd.f %d0, %d14, %d1, %d0

# CHECK-INST: madd.f %d0, %d14, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x61,0x0e]
madd.f %d0, %d14, %d1, %d1

# CHECK-INST: madd.f %d0, %d14, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x61,0x0e]
madd.f %d0, %d14, %d1, %d14

# CHECK-INST: madd.f %d0, %d14, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x61,0x0e]
madd.f %d0, %d14, %d1, %d15

# CHECK-INST: madd.f %d0, %d14, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x61,0x0e]
madd.f %d0, %d14, %d14, %d0

# CHECK-INST: madd.f %d0, %d14, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x61,0x0e]
madd.f %d0, %d14, %d14, %d1

# CHECK-INST: madd.f %d0, %d14, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x61,0x0e]
madd.f %d0, %d14, %d14, %d14

# CHECK-INST: madd.f %d0, %d14, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x61,0x0e]
madd.f %d0, %d14, %d14, %d15

# CHECK-INST: madd.f %d0, %d14, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x61,0x0e]
madd.f %d0, %d14, %d15, %d0

# CHECK-INST: madd.f %d0, %d14, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x61,0x0e]
madd.f %d0, %d14, %d15, %d1

# CHECK-INST: madd.f %d0, %d14, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x61,0x0e]
madd.f %d0, %d14, %d15, %d14

# CHECK-INST: madd.f %d0, %d14, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x61,0x0e]
madd.f %d0, %d14, %d15, %d15

# CHECK-INST: madd.f %d0, %d15, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x61,0x0f]
madd.f %d0, %d15, %d0, %d0

# CHECK-INST: madd.f %d0, %d15, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x61,0x0f]
madd.f %d0, %d15, %d0, %d1

# CHECK-INST: madd.f %d0, %d15, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x61,0x0f]
madd.f %d0, %d15, %d0, %d14

# CHECK-INST: madd.f %d0, %d15, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x61,0x0f]
madd.f %d0, %d15, %d0, %d15

# CHECK-INST: madd.f %d0, %d15, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x61,0x0f]
madd.f %d0, %d15, %d1, %d0

# CHECK-INST: madd.f %d0, %d15, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x61,0x0f]
madd.f %d0, %d15, %d1, %d1

# CHECK-INST: madd.f %d0, %d15, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x61,0x0f]
madd.f %d0, %d15, %d1, %d14

# CHECK-INST: madd.f %d0, %d15, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x61,0x0f]
madd.f %d0, %d15, %d1, %d15

# CHECK-INST: madd.f %d0, %d15, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x61,0x0f]
madd.f %d0, %d15, %d14, %d0

# CHECK-INST: madd.f %d0, %d15, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x61,0x0f]
madd.f %d0, %d15, %d14, %d1

# CHECK-INST: madd.f %d0, %d15, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x61,0x0f]
madd.f %d0, %d15, %d14, %d14

# CHECK-INST: madd.f %d0, %d15, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x61,0x0f]
madd.f %d0, %d15, %d14, %d15

# CHECK-INST: madd.f %d0, %d15, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x61,0x0f]
madd.f %d0, %d15, %d15, %d0

# CHECK-INST: madd.f %d0, %d15, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x61,0x0f]
madd.f %d0, %d15, %d15, %d1

# CHECK-INST: madd.f %d0, %d15, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x61,0x0f]
madd.f %d0, %d15, %d15, %d14

# CHECK-INST: madd.f %d0, %d15, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x61,0x0f]
madd.f %d0, %d15, %d15, %d15

# CHECK-INST: madd.f %d1, %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x61,0x10]
madd.f %d1, %d0, %d0, %d0

# CHECK-INST: madd.f %d1, %d0, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x61,0x10]
madd.f %d1, %d0, %d0, %d1

# CHECK-INST: madd.f %d1, %d0, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x61,0x10]
madd.f %d1, %d0, %d0, %d14

# CHECK-INST: madd.f %d1, %d0, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x61,0x10]
madd.f %d1, %d0, %d0, %d15

# CHECK-INST: madd.f %d1, %d0, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x61,0x10]
madd.f %d1, %d0, %d1, %d0

# CHECK-INST: madd.f %d1, %d0, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x61,0x10]
madd.f %d1, %d0, %d1, %d1

# CHECK-INST: madd.f %d1, %d0, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x61,0x10]
madd.f %d1, %d0, %d1, %d14

# CHECK-INST: madd.f %d1, %d0, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x61,0x10]
madd.f %d1, %d0, %d1, %d15

# CHECK-INST: madd.f %d1, %d0, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x61,0x10]
madd.f %d1, %d0, %d14, %d0

# CHECK-INST: madd.f %d1, %d0, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x61,0x10]
madd.f %d1, %d0, %d14, %d1

# CHECK-INST: madd.f %d1, %d0, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x61,0x10]
madd.f %d1, %d0, %d14, %d14

# CHECK-INST: madd.f %d1, %d0, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x61,0x10]
madd.f %d1, %d0, %d14, %d15

# CHECK-INST: madd.f %d1, %d0, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x61,0x10]
madd.f %d1, %d0, %d15, %d0

# CHECK-INST: madd.f %d1, %d0, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x61,0x10]
madd.f %d1, %d0, %d15, %d1

# CHECK-INST: madd.f %d1, %d0, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x61,0x10]
madd.f %d1, %d0, %d15, %d14

# CHECK-INST: madd.f %d1, %d0, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x61,0x10]
madd.f %d1, %d0, %d15, %d15

# CHECK-INST: madd.f %d1, %d1, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x61,0x11]
madd.f %d1, %d1, %d0, %d0

# CHECK-INST: madd.f %d1, %d1, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x61,0x11]
madd.f %d1, %d1, %d0, %d1

# CHECK-INST: madd.f %d1, %d1, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x61,0x11]
madd.f %d1, %d1, %d0, %d14

# CHECK-INST: madd.f %d1, %d1, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x61,0x11]
madd.f %d1, %d1, %d0, %d15

# CHECK-INST: madd.f %d1, %d1, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x61,0x11]
madd.f %d1, %d1, %d1, %d0

# CHECK-INST: madd.f %d1, %d1, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x61,0x11]
madd.f %d1, %d1, %d1, %d1

# CHECK-INST: madd.f %d1, %d1, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x61,0x11]
madd.f %d1, %d1, %d1, %d14

# CHECK-INST: madd.f %d1, %d1, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x61,0x11]
madd.f %d1, %d1, %d1, %d15

# CHECK-INST: madd.f %d1, %d1, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x61,0x11]
madd.f %d1, %d1, %d14, %d0

# CHECK-INST: madd.f %d1, %d1, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x61,0x11]
madd.f %d1, %d1, %d14, %d1

# CHECK-INST: madd.f %d1, %d1, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x61,0x11]
madd.f %d1, %d1, %d14, %d14

# CHECK-INST: madd.f %d1, %d1, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x61,0x11]
madd.f %d1, %d1, %d14, %d15

# CHECK-INST: madd.f %d1, %d1, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x61,0x11]
madd.f %d1, %d1, %d15, %d0

# CHECK-INST: madd.f %d1, %d1, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x61,0x11]
madd.f %d1, %d1, %d15, %d1

# CHECK-INST: madd.f %d1, %d1, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x61,0x11]
madd.f %d1, %d1, %d15, %d14

# CHECK-INST: madd.f %d1, %d1, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x61,0x11]
madd.f %d1, %d1, %d15, %d15

# CHECK-INST: madd.f %d1, %d14, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x61,0x1e]
madd.f %d1, %d14, %d0, %d0

# CHECK-INST: madd.f %d1, %d14, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x61,0x1e]
madd.f %d1, %d14, %d0, %d1

# CHECK-INST: madd.f %d1, %d14, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x61,0x1e]
madd.f %d1, %d14, %d0, %d14

# CHECK-INST: madd.f %d1, %d14, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x61,0x1e]
madd.f %d1, %d14, %d0, %d15

# CHECK-INST: madd.f %d1, %d14, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x61,0x1e]
madd.f %d1, %d14, %d1, %d0

# CHECK-INST: madd.f %d1, %d14, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x61,0x1e]
madd.f %d1, %d14, %d1, %d1

# CHECK-INST: madd.f %d1, %d14, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x61,0x1e]
madd.f %d1, %d14, %d1, %d14

# CHECK-INST: madd.f %d1, %d14, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x61,0x1e]
madd.f %d1, %d14, %d1, %d15

# CHECK-INST: madd.f %d1, %d14, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x61,0x1e]
madd.f %d1, %d14, %d14, %d0

# CHECK-INST: madd.f %d1, %d14, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x61,0x1e]
madd.f %d1, %d14, %d14, %d1

# CHECK-INST: madd.f %d1, %d14, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x61,0x1e]
madd.f %d1, %d14, %d14, %d14

# CHECK-INST: madd.f %d1, %d14, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x61,0x1e]
madd.f %d1, %d14, %d14, %d15

# CHECK-INST: madd.f %d1, %d14, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x61,0x1e]
madd.f %d1, %d14, %d15, %d0

# CHECK-INST: madd.f %d1, %d14, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x61,0x1e]
madd.f %d1, %d14, %d15, %d1

# CHECK-INST: madd.f %d1, %d14, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x61,0x1e]
madd.f %d1, %d14, %d15, %d14

# CHECK-INST: madd.f %d1, %d14, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x61,0x1e]
madd.f %d1, %d14, %d15, %d15

# CHECK-INST: madd.f %d1, %d15, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x61,0x1f]
madd.f %d1, %d15, %d0, %d0

# CHECK-INST: madd.f %d1, %d15, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x61,0x1f]
madd.f %d1, %d15, %d0, %d1

# CHECK-INST: madd.f %d1, %d15, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x61,0x1f]
madd.f %d1, %d15, %d0, %d14

# CHECK-INST: madd.f %d1, %d15, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x61,0x1f]
madd.f %d1, %d15, %d0, %d15

# CHECK-INST: madd.f %d1, %d15, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x61,0x1f]
madd.f %d1, %d15, %d1, %d0

# CHECK-INST: madd.f %d1, %d15, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x61,0x1f]
madd.f %d1, %d15, %d1, %d1

# CHECK-INST: madd.f %d1, %d15, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x61,0x1f]
madd.f %d1, %d15, %d1, %d14

# CHECK-INST: madd.f %d1, %d15, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x61,0x1f]
madd.f %d1, %d15, %d1, %d15

# CHECK-INST: madd.f %d1, %d15, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x61,0x1f]
madd.f %d1, %d15, %d14, %d0

# CHECK-INST: madd.f %d1, %d15, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x61,0x1f]
madd.f %d1, %d15, %d14, %d1

# CHECK-INST: madd.f %d1, %d15, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x61,0x1f]
madd.f %d1, %d15, %d14, %d14

# CHECK-INST: madd.f %d1, %d15, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x61,0x1f]
madd.f %d1, %d15, %d14, %d15

# CHECK-INST: madd.f %d1, %d15, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x61,0x1f]
madd.f %d1, %d15, %d15, %d0

# CHECK-INST: madd.f %d1, %d15, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x61,0x1f]
madd.f %d1, %d15, %d15, %d1

# CHECK-INST: madd.f %d1, %d15, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x61,0x1f]
madd.f %d1, %d15, %d15, %d14

# CHECK-INST: madd.f %d1, %d15, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x61,0x1f]
madd.f %d1, %d15, %d15, %d15

# CHECK-INST: madd.f %d14, %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x61,0xe0]
madd.f %d14, %d0, %d0, %d0

# CHECK-INST: madd.f %d14, %d0, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x61,0xe0]
madd.f %d14, %d0, %d0, %d1

# CHECK-INST: madd.f %d14, %d0, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x61,0xe0]
madd.f %d14, %d0, %d0, %d14

# CHECK-INST: madd.f %d14, %d0, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x61,0xe0]
madd.f %d14, %d0, %d0, %d15

# CHECK-INST: madd.f %d14, %d0, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x61,0xe0]
madd.f %d14, %d0, %d1, %d0

# CHECK-INST: madd.f %d14, %d0, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x61,0xe0]
madd.f %d14, %d0, %d1, %d1

# CHECK-INST: madd.f %d14, %d0, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x61,0xe0]
madd.f %d14, %d0, %d1, %d14

# CHECK-INST: madd.f %d14, %d0, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x61,0xe0]
madd.f %d14, %d0, %d1, %d15

# CHECK-INST: madd.f %d14, %d0, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x61,0xe0]
madd.f %d14, %d0, %d14, %d0

# CHECK-INST: madd.f %d14, %d0, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x61,0xe0]
madd.f %d14, %d0, %d14, %d1

# CHECK-INST: madd.f %d14, %d0, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x61,0xe0]
madd.f %d14, %d0, %d14, %d14

# CHECK-INST: madd.f %d14, %d0, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x61,0xe0]
madd.f %d14, %d0, %d14, %d15

# CHECK-INST: madd.f %d14, %d0, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x61,0xe0]
madd.f %d14, %d0, %d15, %d0

# CHECK-INST: madd.f %d14, %d0, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x61,0xe0]
madd.f %d14, %d0, %d15, %d1

# CHECK-INST: madd.f %d14, %d0, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x61,0xe0]
madd.f %d14, %d0, %d15, %d14

# CHECK-INST: madd.f %d14, %d0, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x61,0xe0]
madd.f %d14, %d0, %d15, %d15

# CHECK-INST: madd.f %d14, %d1, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x61,0xe1]
madd.f %d14, %d1, %d0, %d0

# CHECK-INST: madd.f %d14, %d1, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x61,0xe1]
madd.f %d14, %d1, %d0, %d1

# CHECK-INST: madd.f %d14, %d1, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x61,0xe1]
madd.f %d14, %d1, %d0, %d14

# CHECK-INST: madd.f %d14, %d1, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x61,0xe1]
madd.f %d14, %d1, %d0, %d15

# CHECK-INST: madd.f %d14, %d1, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x61,0xe1]
madd.f %d14, %d1, %d1, %d0

# CHECK-INST: madd.f %d14, %d1, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x61,0xe1]
madd.f %d14, %d1, %d1, %d1

# CHECK-INST: madd.f %d14, %d1, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x61,0xe1]
madd.f %d14, %d1, %d1, %d14

# CHECK-INST: madd.f %d14, %d1, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x61,0xe1]
madd.f %d14, %d1, %d1, %d15

# CHECK-INST: madd.f %d14, %d1, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x61,0xe1]
madd.f %d14, %d1, %d14, %d0

# CHECK-INST: madd.f %d14, %d1, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x61,0xe1]
madd.f %d14, %d1, %d14, %d1

# CHECK-INST: madd.f %d14, %d1, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x61,0xe1]
madd.f %d14, %d1, %d14, %d14

# CHECK-INST: madd.f %d14, %d1, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x61,0xe1]
madd.f %d14, %d1, %d14, %d15

# CHECK-INST: madd.f %d14, %d1, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x61,0xe1]
madd.f %d14, %d1, %d15, %d0

# CHECK-INST: madd.f %d14, %d1, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x61,0xe1]
madd.f %d14, %d1, %d15, %d1

# CHECK-INST: madd.f %d14, %d1, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x61,0xe1]
madd.f %d14, %d1, %d15, %d14

# CHECK-INST: madd.f %d14, %d1, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x61,0xe1]
madd.f %d14, %d1, %d15, %d15

# CHECK-INST: madd.f %d14, %d14, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x61,0xee]
madd.f %d14, %d14, %d0, %d0

# CHECK-INST: madd.f %d14, %d14, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x61,0xee]
madd.f %d14, %d14, %d0, %d1

# CHECK-INST: madd.f %d14, %d14, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x61,0xee]
madd.f %d14, %d14, %d0, %d14

# CHECK-INST: madd.f %d14, %d14, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x61,0xee]
madd.f %d14, %d14, %d0, %d15

# CHECK-INST: madd.f %d14, %d14, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x61,0xee]
madd.f %d14, %d14, %d1, %d0

# CHECK-INST: madd.f %d14, %d14, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x61,0xee]
madd.f %d14, %d14, %d1, %d1

# CHECK-INST: madd.f %d14, %d14, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x61,0xee]
madd.f %d14, %d14, %d1, %d14

# CHECK-INST: madd.f %d14, %d14, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x61,0xee]
madd.f %d14, %d14, %d1, %d15

# CHECK-INST: madd.f %d14, %d14, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x61,0xee]
madd.f %d14, %d14, %d14, %d0

# CHECK-INST: madd.f %d14, %d14, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x61,0xee]
madd.f %d14, %d14, %d14, %d1

# CHECK-INST: madd.f %d14, %d14, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x61,0xee]
madd.f %d14, %d14, %d14, %d14

# CHECK-INST: madd.f %d14, %d14, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x61,0xee]
madd.f %d14, %d14, %d14, %d15

# CHECK-INST: madd.f %d14, %d14, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x61,0xee]
madd.f %d14, %d14, %d15, %d0

# CHECK-INST: madd.f %d14, %d14, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x61,0xee]
madd.f %d14, %d14, %d15, %d1

# CHECK-INST: madd.f %d14, %d14, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x61,0xee]
madd.f %d14, %d14, %d15, %d14

# CHECK-INST: madd.f %d14, %d14, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x61,0xee]
madd.f %d14, %d14, %d15, %d15

# CHECK-INST: madd.f %d14, %d15, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x61,0xef]
madd.f %d14, %d15, %d0, %d0

# CHECK-INST: madd.f %d14, %d15, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x61,0xef]
madd.f %d14, %d15, %d0, %d1

# CHECK-INST: madd.f %d14, %d15, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x61,0xef]
madd.f %d14, %d15, %d0, %d14

# CHECK-INST: madd.f %d14, %d15, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x61,0xef]
madd.f %d14, %d15, %d0, %d15

# CHECK-INST: madd.f %d14, %d15, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x61,0xef]
madd.f %d14, %d15, %d1, %d0

# CHECK-INST: madd.f %d14, %d15, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x61,0xef]
madd.f %d14, %d15, %d1, %d1

# CHECK-INST: madd.f %d14, %d15, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x61,0xef]
madd.f %d14, %d15, %d1, %d14

# CHECK-INST: madd.f %d14, %d15, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x61,0xef]
madd.f %d14, %d15, %d1, %d15

# CHECK-INST: madd.f %d14, %d15, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x61,0xef]
madd.f %d14, %d15, %d14, %d0

# CHECK-INST: madd.f %d14, %d15, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x61,0xef]
madd.f %d14, %d15, %d14, %d1

# CHECK-INST: madd.f %d14, %d15, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x61,0xef]
madd.f %d14, %d15, %d14, %d14

# CHECK-INST: madd.f %d14, %d15, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x61,0xef]
madd.f %d14, %d15, %d14, %d15

# CHECK-INST: madd.f %d14, %d15, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x61,0xef]
madd.f %d14, %d15, %d15, %d0

# CHECK-INST: madd.f %d14, %d15, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x61,0xef]
madd.f %d14, %d15, %d15, %d1

# CHECK-INST: madd.f %d14, %d15, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x61,0xef]
madd.f %d14, %d15, %d15, %d14

# CHECK-INST: madd.f %d14, %d15, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x61,0xef]
madd.f %d14, %d15, %d15, %d15

# CHECK-INST: madd.f %d15, %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x61,0xf0]
madd.f %d15, %d0, %d0, %d0

# CHECK-INST: madd.f %d15, %d0, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x61,0xf0]
madd.f %d15, %d0, %d0, %d1

# CHECK-INST: madd.f %d15, %d0, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x61,0xf0]
madd.f %d15, %d0, %d0, %d14

# CHECK-INST: madd.f %d15, %d0, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x61,0xf0]
madd.f %d15, %d0, %d0, %d15

# CHECK-INST: madd.f %d15, %d0, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x61,0xf0]
madd.f %d15, %d0, %d1, %d0

# CHECK-INST: madd.f %d15, %d0, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x61,0xf0]
madd.f %d15, %d0, %d1, %d1

# CHECK-INST: madd.f %d15, %d0, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x61,0xf0]
madd.f %d15, %d0, %d1, %d14

# CHECK-INST: madd.f %d15, %d0, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x61,0xf0]
madd.f %d15, %d0, %d1, %d15

# CHECK-INST: madd.f %d15, %d0, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x61,0xf0]
madd.f %d15, %d0, %d14, %d0

# CHECK-INST: madd.f %d15, %d0, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x61,0xf0]
madd.f %d15, %d0, %d14, %d1

# CHECK-INST: madd.f %d15, %d0, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x61,0xf0]
madd.f %d15, %d0, %d14, %d14

# CHECK-INST: madd.f %d15, %d0, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x61,0xf0]
madd.f %d15, %d0, %d14, %d15

# CHECK-INST: madd.f %d15, %d0, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x61,0xf0]
madd.f %d15, %d0, %d15, %d0

# CHECK-INST: madd.f %d15, %d0, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x61,0xf0]
madd.f %d15, %d0, %d15, %d1

# CHECK-INST: madd.f %d15, %d0, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x61,0xf0]
madd.f %d15, %d0, %d15, %d14

# CHECK-INST: madd.f %d15, %d0, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x61,0xf0]
madd.f %d15, %d0, %d15, %d15

# CHECK-INST: madd.f %d15, %d1, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x61,0xf1]
madd.f %d15, %d1, %d0, %d0

# CHECK-INST: madd.f %d15, %d1, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x61,0xf1]
madd.f %d15, %d1, %d0, %d1

# CHECK-INST: madd.f %d15, %d1, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x61,0xf1]
madd.f %d15, %d1, %d0, %d14

# CHECK-INST: madd.f %d15, %d1, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x61,0xf1]
madd.f %d15, %d1, %d0, %d15

# CHECK-INST: madd.f %d15, %d1, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x61,0xf1]
madd.f %d15, %d1, %d1, %d0

# CHECK-INST: madd.f %d15, %d1, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x61,0xf1]
madd.f %d15, %d1, %d1, %d1

# CHECK-INST: madd.f %d15, %d1, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x61,0xf1]
madd.f %d15, %d1, %d1, %d14

# CHECK-INST: madd.f %d15, %d1, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x61,0xf1]
madd.f %d15, %d1, %d1, %d15

# CHECK-INST: madd.f %d15, %d1, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x61,0xf1]
madd.f %d15, %d1, %d14, %d0

# CHECK-INST: madd.f %d15, %d1, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x61,0xf1]
madd.f %d15, %d1, %d14, %d1

# CHECK-INST: madd.f %d15, %d1, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x61,0xf1]
madd.f %d15, %d1, %d14, %d14

# CHECK-INST: madd.f %d15, %d1, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x61,0xf1]
madd.f %d15, %d1, %d14, %d15

# CHECK-INST: madd.f %d15, %d1, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x61,0xf1]
madd.f %d15, %d1, %d15, %d0

# CHECK-INST: madd.f %d15, %d1, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x61,0xf1]
madd.f %d15, %d1, %d15, %d1

# CHECK-INST: madd.f %d15, %d1, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x61,0xf1]
madd.f %d15, %d1, %d15, %d14

# CHECK-INST: madd.f %d15, %d1, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x61,0xf1]
madd.f %d15, %d1, %d15, %d15

# CHECK-INST: madd.f %d15, %d14, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x61,0xfe]
madd.f %d15, %d14, %d0, %d0

# CHECK-INST: madd.f %d15, %d14, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x61,0xfe]
madd.f %d15, %d14, %d0, %d1

# CHECK-INST: madd.f %d15, %d14, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x61,0xfe]
madd.f %d15, %d14, %d0, %d14

# CHECK-INST: madd.f %d15, %d14, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x61,0xfe]
madd.f %d15, %d14, %d0, %d15

# CHECK-INST: madd.f %d15, %d14, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x61,0xfe]
madd.f %d15, %d14, %d1, %d0

# CHECK-INST: madd.f %d15, %d14, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x61,0xfe]
madd.f %d15, %d14, %d1, %d1

# CHECK-INST: madd.f %d15, %d14, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x61,0xfe]
madd.f %d15, %d14, %d1, %d14

# CHECK-INST: madd.f %d15, %d14, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x61,0xfe]
madd.f %d15, %d14, %d1, %d15

# CHECK-INST: madd.f %d15, %d14, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x61,0xfe]
madd.f %d15, %d14, %d14, %d0

# CHECK-INST: madd.f %d15, %d14, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x61,0xfe]
madd.f %d15, %d14, %d14, %d1

# CHECK-INST: madd.f %d15, %d14, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x61,0xfe]
madd.f %d15, %d14, %d14, %d14

# CHECK-INST: madd.f %d15, %d14, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x61,0xfe]
madd.f %d15, %d14, %d14, %d15

# CHECK-INST: madd.f %d15, %d14, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x61,0xfe]
madd.f %d15, %d14, %d15, %d0

# CHECK-INST: madd.f %d15, %d14, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x61,0xfe]
madd.f %d15, %d14, %d15, %d1

# CHECK-INST: madd.f %d15, %d14, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x61,0xfe]
madd.f %d15, %d14, %d15, %d14

# CHECK-INST: madd.f %d15, %d14, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x61,0xfe]
madd.f %d15, %d14, %d15, %d15

# CHECK-INST: madd.f %d15, %d15, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x61,0xff]
madd.f %d15, %d15, %d0, %d0

# CHECK-INST: madd.f %d15, %d15, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x61,0xff]
madd.f %d15, %d15, %d0, %d1

# CHECK-INST: madd.f %d15, %d15, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x61,0xff]
madd.f %d15, %d15, %d0, %d14

# CHECK-INST: madd.f %d15, %d15, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x61,0xff]
madd.f %d15, %d15, %d0, %d15

# CHECK-INST: madd.f %d15, %d15, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x61,0xff]
madd.f %d15, %d15, %d1, %d0

# CHECK-INST: madd.f %d15, %d15, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x61,0xff]
madd.f %d15, %d15, %d1, %d1

# CHECK-INST: madd.f %d15, %d15, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x61,0xff]
madd.f %d15, %d15, %d1, %d14

# CHECK-INST: madd.f %d15, %d15, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x61,0xff]
madd.f %d15, %d15, %d1, %d15

# CHECK-INST: madd.f %d15, %d15, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x61,0xff]
madd.f %d15, %d15, %d14, %d0

# CHECK-INST: madd.f %d15, %d15, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x61,0xff]
madd.f %d15, %d15, %d14, %d1

# CHECK-INST: madd.f %d15, %d15, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x61,0xff]
madd.f %d15, %d15, %d14, %d14

# CHECK-INST: madd.f %d15, %d15, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x61,0xff]
madd.f %d15, %d15, %d14, %d15

# CHECK-INST: madd.f %d15, %d15, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x61,0xff]
madd.f %d15, %d15, %d15, %d0

# CHECK-INST: madd.f %d15, %d15, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x61,0xff]
madd.f %d15, %d15, %d15, %d1

# CHECK-INST: madd.f %d15, %d15, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x61,0xff]
madd.f %d15, %d15, %d15, %d14

# CHECK-INST: madd.f %d15, %d15, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x61,0xff]
madd.f %d15, %d15, %d15, %d15

# CHECK-INST: msub.f %d0, %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x71,0x00]
msub.f %d0, %d0, %d0, %d0

# CHECK-INST: msub.f %d0, %d0, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x71,0x00]
msub.f %d0, %d0, %d0, %d1

# CHECK-INST: msub.f %d0, %d0, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x71,0x00]
msub.f %d0, %d0, %d0, %d14

# CHECK-INST: msub.f %d0, %d0, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x71,0x00]
msub.f %d0, %d0, %d0, %d15

# CHECK-INST: msub.f %d0, %d0, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x71,0x00]
msub.f %d0, %d0, %d1, %d0

# CHECK-INST: msub.f %d0, %d0, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x71,0x00]
msub.f %d0, %d0, %d1, %d1

# CHECK-INST: msub.f %d0, %d0, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x71,0x00]
msub.f %d0, %d0, %d1, %d14

# CHECK-INST: msub.f %d0, %d0, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x71,0x00]
msub.f %d0, %d0, %d1, %d15

# CHECK-INST: msub.f %d0, %d0, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x71,0x00]
msub.f %d0, %d0, %d14, %d0

# CHECK-INST: msub.f %d0, %d0, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x71,0x00]
msub.f %d0, %d0, %d14, %d1

# CHECK-INST: msub.f %d0, %d0, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x71,0x00]
msub.f %d0, %d0, %d14, %d14

# CHECK-INST: msub.f %d0, %d0, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x71,0x00]
msub.f %d0, %d0, %d14, %d15

# CHECK-INST: msub.f %d0, %d0, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x71,0x00]
msub.f %d0, %d0, %d15, %d0

# CHECK-INST: msub.f %d0, %d0, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x71,0x00]
msub.f %d0, %d0, %d15, %d1

# CHECK-INST: msub.f %d0, %d0, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x71,0x00]
msub.f %d0, %d0, %d15, %d14

# CHECK-INST: msub.f %d0, %d0, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x71,0x00]
msub.f %d0, %d0, %d15, %d15

# CHECK-INST: msub.f %d0, %d1, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x71,0x01]
msub.f %d0, %d1, %d0, %d0

# CHECK-INST: msub.f %d0, %d1, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x71,0x01]
msub.f %d0, %d1, %d0, %d1

# CHECK-INST: msub.f %d0, %d1, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x71,0x01]
msub.f %d0, %d1, %d0, %d14

# CHECK-INST: msub.f %d0, %d1, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x71,0x01]
msub.f %d0, %d1, %d0, %d15

# CHECK-INST: msub.f %d0, %d1, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x71,0x01]
msub.f %d0, %d1, %d1, %d0

# CHECK-INST: msub.f %d0, %d1, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x71,0x01]
msub.f %d0, %d1, %d1, %d1

# CHECK-INST: msub.f %d0, %d1, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x71,0x01]
msub.f %d0, %d1, %d1, %d14

# CHECK-INST: msub.f %d0, %d1, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x71,0x01]
msub.f %d0, %d1, %d1, %d15

# CHECK-INST: msub.f %d0, %d1, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x71,0x01]
msub.f %d0, %d1, %d14, %d0

# CHECK-INST: msub.f %d0, %d1, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x71,0x01]
msub.f %d0, %d1, %d14, %d1

# CHECK-INST: msub.f %d0, %d1, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x71,0x01]
msub.f %d0, %d1, %d14, %d14

# CHECK-INST: msub.f %d0, %d1, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x71,0x01]
msub.f %d0, %d1, %d14, %d15

# CHECK-INST: msub.f %d0, %d1, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x71,0x01]
msub.f %d0, %d1, %d15, %d0

# CHECK-INST: msub.f %d0, %d1, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x71,0x01]
msub.f %d0, %d1, %d15, %d1

# CHECK-INST: msub.f %d0, %d1, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x71,0x01]
msub.f %d0, %d1, %d15, %d14

# CHECK-INST: msub.f %d0, %d1, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x71,0x01]
msub.f %d0, %d1, %d15, %d15

# CHECK-INST: msub.f %d0, %d14, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x71,0x0e]
msub.f %d0, %d14, %d0, %d0

# CHECK-INST: msub.f %d0, %d14, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x71,0x0e]
msub.f %d0, %d14, %d0, %d1

# CHECK-INST: msub.f %d0, %d14, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x71,0x0e]
msub.f %d0, %d14, %d0, %d14

# CHECK-INST: msub.f %d0, %d14, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x71,0x0e]
msub.f %d0, %d14, %d0, %d15

# CHECK-INST: msub.f %d0, %d14, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x71,0x0e]
msub.f %d0, %d14, %d1, %d0

# CHECK-INST: msub.f %d0, %d14, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x71,0x0e]
msub.f %d0, %d14, %d1, %d1

# CHECK-INST: msub.f %d0, %d14, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x71,0x0e]
msub.f %d0, %d14, %d1, %d14

# CHECK-INST: msub.f %d0, %d14, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x71,0x0e]
msub.f %d0, %d14, %d1, %d15

# CHECK-INST: msub.f %d0, %d14, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x71,0x0e]
msub.f %d0, %d14, %d14, %d0

# CHECK-INST: msub.f %d0, %d14, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x71,0x0e]
msub.f %d0, %d14, %d14, %d1

# CHECK-INST: msub.f %d0, %d14, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x71,0x0e]
msub.f %d0, %d14, %d14, %d14

# CHECK-INST: msub.f %d0, %d14, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x71,0x0e]
msub.f %d0, %d14, %d14, %d15

# CHECK-INST: msub.f %d0, %d14, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x71,0x0e]
msub.f %d0, %d14, %d15, %d0

# CHECK-INST: msub.f %d0, %d14, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x71,0x0e]
msub.f %d0, %d14, %d15, %d1

# CHECK-INST: msub.f %d0, %d14, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x71,0x0e]
msub.f %d0, %d14, %d15, %d14

# CHECK-INST: msub.f %d0, %d14, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x71,0x0e]
msub.f %d0, %d14, %d15, %d15

# CHECK-INST: msub.f %d0, %d15, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x71,0x0f]
msub.f %d0, %d15, %d0, %d0

# CHECK-INST: msub.f %d0, %d15, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x71,0x0f]
msub.f %d0, %d15, %d0, %d1

# CHECK-INST: msub.f %d0, %d15, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x71,0x0f]
msub.f %d0, %d15, %d0, %d14

# CHECK-INST: msub.f %d0, %d15, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x71,0x0f]
msub.f %d0, %d15, %d0, %d15

# CHECK-INST: msub.f %d0, %d15, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x71,0x0f]
msub.f %d0, %d15, %d1, %d0

# CHECK-INST: msub.f %d0, %d15, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x71,0x0f]
msub.f %d0, %d15, %d1, %d1

# CHECK-INST: msub.f %d0, %d15, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x71,0x0f]
msub.f %d0, %d15, %d1, %d14

# CHECK-INST: msub.f %d0, %d15, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x71,0x0f]
msub.f %d0, %d15, %d1, %d15

# CHECK-INST: msub.f %d0, %d15, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x71,0x0f]
msub.f %d0, %d15, %d14, %d0

# CHECK-INST: msub.f %d0, %d15, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x71,0x0f]
msub.f %d0, %d15, %d14, %d1

# CHECK-INST: msub.f %d0, %d15, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x71,0x0f]
msub.f %d0, %d15, %d14, %d14

# CHECK-INST: msub.f %d0, %d15, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x71,0x0f]
msub.f %d0, %d15, %d14, %d15

# CHECK-INST: msub.f %d0, %d15, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x71,0x0f]
msub.f %d0, %d15, %d15, %d0

# CHECK-INST: msub.f %d0, %d15, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x71,0x0f]
msub.f %d0, %d15, %d15, %d1

# CHECK-INST: msub.f %d0, %d15, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x71,0x0f]
msub.f %d0, %d15, %d15, %d14

# CHECK-INST: msub.f %d0, %d15, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x71,0x0f]
msub.f %d0, %d15, %d15, %d15

# CHECK-INST: msub.f %d1, %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x71,0x10]
msub.f %d1, %d0, %d0, %d0

# CHECK-INST: msub.f %d1, %d0, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x71,0x10]
msub.f %d1, %d0, %d0, %d1

# CHECK-INST: msub.f %d1, %d0, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x71,0x10]
msub.f %d1, %d0, %d0, %d14

# CHECK-INST: msub.f %d1, %d0, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x71,0x10]
msub.f %d1, %d0, %d0, %d15

# CHECK-INST: msub.f %d1, %d0, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x71,0x10]
msub.f %d1, %d0, %d1, %d0

# CHECK-INST: msub.f %d1, %d0, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x71,0x10]
msub.f %d1, %d0, %d1, %d1

# CHECK-INST: msub.f %d1, %d0, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x71,0x10]
msub.f %d1, %d0, %d1, %d14

# CHECK-INST: msub.f %d1, %d0, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x71,0x10]
msub.f %d1, %d0, %d1, %d15

# CHECK-INST: msub.f %d1, %d0, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x71,0x10]
msub.f %d1, %d0, %d14, %d0

# CHECK-INST: msub.f %d1, %d0, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x71,0x10]
msub.f %d1, %d0, %d14, %d1

# CHECK-INST: msub.f %d1, %d0, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x71,0x10]
msub.f %d1, %d0, %d14, %d14

# CHECK-INST: msub.f %d1, %d0, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x71,0x10]
msub.f %d1, %d0, %d14, %d15

# CHECK-INST: msub.f %d1, %d0, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x71,0x10]
msub.f %d1, %d0, %d15, %d0

# CHECK-INST: msub.f %d1, %d0, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x71,0x10]
msub.f %d1, %d0, %d15, %d1

# CHECK-INST: msub.f %d1, %d0, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x71,0x10]
msub.f %d1, %d0, %d15, %d14

# CHECK-INST: msub.f %d1, %d0, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x71,0x10]
msub.f %d1, %d0, %d15, %d15

# CHECK-INST: msub.f %d1, %d1, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x71,0x11]
msub.f %d1, %d1, %d0, %d0

# CHECK-INST: msub.f %d1, %d1, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x71,0x11]
msub.f %d1, %d1, %d0, %d1

# CHECK-INST: msub.f %d1, %d1, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x71,0x11]
msub.f %d1, %d1, %d0, %d14

# CHECK-INST: msub.f %d1, %d1, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x71,0x11]
msub.f %d1, %d1, %d0, %d15

# CHECK-INST: msub.f %d1, %d1, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x71,0x11]
msub.f %d1, %d1, %d1, %d0

# CHECK-INST: msub.f %d1, %d1, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x71,0x11]
msub.f %d1, %d1, %d1, %d1

# CHECK-INST: msub.f %d1, %d1, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x71,0x11]
msub.f %d1, %d1, %d1, %d14

# CHECK-INST: msub.f %d1, %d1, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x71,0x11]
msub.f %d1, %d1, %d1, %d15

# CHECK-INST: msub.f %d1, %d1, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x71,0x11]
msub.f %d1, %d1, %d14, %d0

# CHECK-INST: msub.f %d1, %d1, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x71,0x11]
msub.f %d1, %d1, %d14, %d1

# CHECK-INST: msub.f %d1, %d1, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x71,0x11]
msub.f %d1, %d1, %d14, %d14

# CHECK-INST: msub.f %d1, %d1, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x71,0x11]
msub.f %d1, %d1, %d14, %d15

# CHECK-INST: msub.f %d1, %d1, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x71,0x11]
msub.f %d1, %d1, %d15, %d0

# CHECK-INST: msub.f %d1, %d1, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x71,0x11]
msub.f %d1, %d1, %d15, %d1

# CHECK-INST: msub.f %d1, %d1, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x71,0x11]
msub.f %d1, %d1, %d15, %d14

# CHECK-INST: msub.f %d1, %d1, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x71,0x11]
msub.f %d1, %d1, %d15, %d15

# CHECK-INST: msub.f %d1, %d14, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x71,0x1e]
msub.f %d1, %d14, %d0, %d0

# CHECK-INST: msub.f %d1, %d14, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x71,0x1e]
msub.f %d1, %d14, %d0, %d1

# CHECK-INST: msub.f %d1, %d14, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x71,0x1e]
msub.f %d1, %d14, %d0, %d14

# CHECK-INST: msub.f %d1, %d14, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x71,0x1e]
msub.f %d1, %d14, %d0, %d15

# CHECK-INST: msub.f %d1, %d14, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x71,0x1e]
msub.f %d1, %d14, %d1, %d0

# CHECK-INST: msub.f %d1, %d14, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x71,0x1e]
msub.f %d1, %d14, %d1, %d1

# CHECK-INST: msub.f %d1, %d14, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x71,0x1e]
msub.f %d1, %d14, %d1, %d14

# CHECK-INST: msub.f %d1, %d14, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x71,0x1e]
msub.f %d1, %d14, %d1, %d15

# CHECK-INST: msub.f %d1, %d14, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x71,0x1e]
msub.f %d1, %d14, %d14, %d0

# CHECK-INST: msub.f %d1, %d14, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x71,0x1e]
msub.f %d1, %d14, %d14, %d1

# CHECK-INST: msub.f %d1, %d14, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x71,0x1e]
msub.f %d1, %d14, %d14, %d14

# CHECK-INST: msub.f %d1, %d14, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x71,0x1e]
msub.f %d1, %d14, %d14, %d15

# CHECK-INST: msub.f %d1, %d14, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x71,0x1e]
msub.f %d1, %d14, %d15, %d0

# CHECK-INST: msub.f %d1, %d14, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x71,0x1e]
msub.f %d1, %d14, %d15, %d1

# CHECK-INST: msub.f %d1, %d14, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x71,0x1e]
msub.f %d1, %d14, %d15, %d14

# CHECK-INST: msub.f %d1, %d14, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x71,0x1e]
msub.f %d1, %d14, %d15, %d15

# CHECK-INST: msub.f %d1, %d15, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x71,0x1f]
msub.f %d1, %d15, %d0, %d0

# CHECK-INST: msub.f %d1, %d15, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x71,0x1f]
msub.f %d1, %d15, %d0, %d1

# CHECK-INST: msub.f %d1, %d15, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x71,0x1f]
msub.f %d1, %d15, %d0, %d14

# CHECK-INST: msub.f %d1, %d15, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x71,0x1f]
msub.f %d1, %d15, %d0, %d15

# CHECK-INST: msub.f %d1, %d15, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x71,0x1f]
msub.f %d1, %d15, %d1, %d0

# CHECK-INST: msub.f %d1, %d15, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x71,0x1f]
msub.f %d1, %d15, %d1, %d1

# CHECK-INST: msub.f %d1, %d15, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x71,0x1f]
msub.f %d1, %d15, %d1, %d14

# CHECK-INST: msub.f %d1, %d15, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x71,0x1f]
msub.f %d1, %d15, %d1, %d15

# CHECK-INST: msub.f %d1, %d15, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x71,0x1f]
msub.f %d1, %d15, %d14, %d0

# CHECK-INST: msub.f %d1, %d15, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x71,0x1f]
msub.f %d1, %d15, %d14, %d1

# CHECK-INST: msub.f %d1, %d15, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x71,0x1f]
msub.f %d1, %d15, %d14, %d14

# CHECK-INST: msub.f %d1, %d15, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x71,0x1f]
msub.f %d1, %d15, %d14, %d15

# CHECK-INST: msub.f %d1, %d15, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x71,0x1f]
msub.f %d1, %d15, %d15, %d0

# CHECK-INST: msub.f %d1, %d15, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x71,0x1f]
msub.f %d1, %d15, %d15, %d1

# CHECK-INST: msub.f %d1, %d15, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x71,0x1f]
msub.f %d1, %d15, %d15, %d14

# CHECK-INST: msub.f %d1, %d15, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x71,0x1f]
msub.f %d1, %d15, %d15, %d15

# CHECK-INST: msub.f %d14, %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x71,0xe0]
msub.f %d14, %d0, %d0, %d0

# CHECK-INST: msub.f %d14, %d0, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x71,0xe0]
msub.f %d14, %d0, %d0, %d1

# CHECK-INST: msub.f %d14, %d0, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x71,0xe0]
msub.f %d14, %d0, %d0, %d14

# CHECK-INST: msub.f %d14, %d0, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x71,0xe0]
msub.f %d14, %d0, %d0, %d15

# CHECK-INST: msub.f %d14, %d0, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x71,0xe0]
msub.f %d14, %d0, %d1, %d0

# CHECK-INST: msub.f %d14, %d0, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x71,0xe0]
msub.f %d14, %d0, %d1, %d1

# CHECK-INST: msub.f %d14, %d0, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x71,0xe0]
msub.f %d14, %d0, %d1, %d14

# CHECK-INST: msub.f %d14, %d0, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x71,0xe0]
msub.f %d14, %d0, %d1, %d15

# CHECK-INST: msub.f %d14, %d0, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x71,0xe0]
msub.f %d14, %d0, %d14, %d0

# CHECK-INST: msub.f %d14, %d0, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x71,0xe0]
msub.f %d14, %d0, %d14, %d1

# CHECK-INST: msub.f %d14, %d0, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x71,0xe0]
msub.f %d14, %d0, %d14, %d14

# CHECK-INST: msub.f %d14, %d0, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x71,0xe0]
msub.f %d14, %d0, %d14, %d15

# CHECK-INST: msub.f %d14, %d0, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x71,0xe0]
msub.f %d14, %d0, %d15, %d0

# CHECK-INST: msub.f %d14, %d0, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x71,0xe0]
msub.f %d14, %d0, %d15, %d1

# CHECK-INST: msub.f %d14, %d0, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x71,0xe0]
msub.f %d14, %d0, %d15, %d14

# CHECK-INST: msub.f %d14, %d0, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x71,0xe0]
msub.f %d14, %d0, %d15, %d15

# CHECK-INST: msub.f %d14, %d1, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x71,0xe1]
msub.f %d14, %d1, %d0, %d0

# CHECK-INST: msub.f %d14, %d1, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x71,0xe1]
msub.f %d14, %d1, %d0, %d1

# CHECK-INST: msub.f %d14, %d1, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x71,0xe1]
msub.f %d14, %d1, %d0, %d14

# CHECK-INST: msub.f %d14, %d1, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x71,0xe1]
msub.f %d14, %d1, %d0, %d15

# CHECK-INST: msub.f %d14, %d1, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x71,0xe1]
msub.f %d14, %d1, %d1, %d0

# CHECK-INST: msub.f %d14, %d1, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x71,0xe1]
msub.f %d14, %d1, %d1, %d1

# CHECK-INST: msub.f %d14, %d1, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x71,0xe1]
msub.f %d14, %d1, %d1, %d14

# CHECK-INST: msub.f %d14, %d1, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x71,0xe1]
msub.f %d14, %d1, %d1, %d15

# CHECK-INST: msub.f %d14, %d1, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x71,0xe1]
msub.f %d14, %d1, %d14, %d0

# CHECK-INST: msub.f %d14, %d1, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x71,0xe1]
msub.f %d14, %d1, %d14, %d1

# CHECK-INST: msub.f %d14, %d1, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x71,0xe1]
msub.f %d14, %d1, %d14, %d14

# CHECK-INST: msub.f %d14, %d1, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x71,0xe1]
msub.f %d14, %d1, %d14, %d15

# CHECK-INST: msub.f %d14, %d1, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x71,0xe1]
msub.f %d14, %d1, %d15, %d0

# CHECK-INST: msub.f %d14, %d1, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x71,0xe1]
msub.f %d14, %d1, %d15, %d1

# CHECK-INST: msub.f %d14, %d1, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x71,0xe1]
msub.f %d14, %d1, %d15, %d14

# CHECK-INST: msub.f %d14, %d1, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x71,0xe1]
msub.f %d14, %d1, %d15, %d15

# CHECK-INST: msub.f %d14, %d14, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x71,0xee]
msub.f %d14, %d14, %d0, %d0

# CHECK-INST: msub.f %d14, %d14, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x71,0xee]
msub.f %d14, %d14, %d0, %d1

# CHECK-INST: msub.f %d14, %d14, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x71,0xee]
msub.f %d14, %d14, %d0, %d14

# CHECK-INST: msub.f %d14, %d14, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x71,0xee]
msub.f %d14, %d14, %d0, %d15

# CHECK-INST: msub.f %d14, %d14, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x71,0xee]
msub.f %d14, %d14, %d1, %d0

# CHECK-INST: msub.f %d14, %d14, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x71,0xee]
msub.f %d14, %d14, %d1, %d1

# CHECK-INST: msub.f %d14, %d14, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x71,0xee]
msub.f %d14, %d14, %d1, %d14

# CHECK-INST: msub.f %d14, %d14, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x71,0xee]
msub.f %d14, %d14, %d1, %d15

# CHECK-INST: msub.f %d14, %d14, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x71,0xee]
msub.f %d14, %d14, %d14, %d0

# CHECK-INST: msub.f %d14, %d14, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x71,0xee]
msub.f %d14, %d14, %d14, %d1

# CHECK-INST: msub.f %d14, %d14, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x71,0xee]
msub.f %d14, %d14, %d14, %d14

# CHECK-INST: msub.f %d14, %d14, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x71,0xee]
msub.f %d14, %d14, %d14, %d15

# CHECK-INST: msub.f %d14, %d14, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x71,0xee]
msub.f %d14, %d14, %d15, %d0

# CHECK-INST: msub.f %d14, %d14, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x71,0xee]
msub.f %d14, %d14, %d15, %d1

# CHECK-INST: msub.f %d14, %d14, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x71,0xee]
msub.f %d14, %d14, %d15, %d14

# CHECK-INST: msub.f %d14, %d14, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x71,0xee]
msub.f %d14, %d14, %d15, %d15

# CHECK-INST: msub.f %d14, %d15, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x71,0xef]
msub.f %d14, %d15, %d0, %d0

# CHECK-INST: msub.f %d14, %d15, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x71,0xef]
msub.f %d14, %d15, %d0, %d1

# CHECK-INST: msub.f %d14, %d15, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x71,0xef]
msub.f %d14, %d15, %d0, %d14

# CHECK-INST: msub.f %d14, %d15, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x71,0xef]
msub.f %d14, %d15, %d0, %d15

# CHECK-INST: msub.f %d14, %d15, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x71,0xef]
msub.f %d14, %d15, %d1, %d0

# CHECK-INST: msub.f %d14, %d15, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x71,0xef]
msub.f %d14, %d15, %d1, %d1

# CHECK-INST: msub.f %d14, %d15, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x71,0xef]
msub.f %d14, %d15, %d1, %d14

# CHECK-INST: msub.f %d14, %d15, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x71,0xef]
msub.f %d14, %d15, %d1, %d15

# CHECK-INST: msub.f %d14, %d15, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x71,0xef]
msub.f %d14, %d15, %d14, %d0

# CHECK-INST: msub.f %d14, %d15, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x71,0xef]
msub.f %d14, %d15, %d14, %d1

# CHECK-INST: msub.f %d14, %d15, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x71,0xef]
msub.f %d14, %d15, %d14, %d14

# CHECK-INST: msub.f %d14, %d15, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x71,0xef]
msub.f %d14, %d15, %d14, %d15

# CHECK-INST: msub.f %d14, %d15, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x71,0xef]
msub.f %d14, %d15, %d15, %d0

# CHECK-INST: msub.f %d14, %d15, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x71,0xef]
msub.f %d14, %d15, %d15, %d1

# CHECK-INST: msub.f %d14, %d15, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x71,0xef]
msub.f %d14, %d15, %d15, %d14

# CHECK-INST: msub.f %d14, %d15, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x71,0xef]
msub.f %d14, %d15, %d15, %d15

# CHECK-INST: msub.f %d15, %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x71,0xf0]
msub.f %d15, %d0, %d0, %d0

# CHECK-INST: msub.f %d15, %d0, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x71,0xf0]
msub.f %d15, %d0, %d0, %d1

# CHECK-INST: msub.f %d15, %d0, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x71,0xf0]
msub.f %d15, %d0, %d0, %d14

# CHECK-INST: msub.f %d15, %d0, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x71,0xf0]
msub.f %d15, %d0, %d0, %d15

# CHECK-INST: msub.f %d15, %d0, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x71,0xf0]
msub.f %d15, %d0, %d1, %d0

# CHECK-INST: msub.f %d15, %d0, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x71,0xf0]
msub.f %d15, %d0, %d1, %d1

# CHECK-INST: msub.f %d15, %d0, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x71,0xf0]
msub.f %d15, %d0, %d1, %d14

# CHECK-INST: msub.f %d15, %d0, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x71,0xf0]
msub.f %d15, %d0, %d1, %d15

# CHECK-INST: msub.f %d15, %d0, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x71,0xf0]
msub.f %d15, %d0, %d14, %d0

# CHECK-INST: msub.f %d15, %d0, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x71,0xf0]
msub.f %d15, %d0, %d14, %d1

# CHECK-INST: msub.f %d15, %d0, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x71,0xf0]
msub.f %d15, %d0, %d14, %d14

# CHECK-INST: msub.f %d15, %d0, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x71,0xf0]
msub.f %d15, %d0, %d14, %d15

# CHECK-INST: msub.f %d15, %d0, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x71,0xf0]
msub.f %d15, %d0, %d15, %d0

# CHECK-INST: msub.f %d15, %d0, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x71,0xf0]
msub.f %d15, %d0, %d15, %d1

# CHECK-INST: msub.f %d15, %d0, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x71,0xf0]
msub.f %d15, %d0, %d15, %d14

# CHECK-INST: msub.f %d15, %d0, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x71,0xf0]
msub.f %d15, %d0, %d15, %d15

# CHECK-INST: msub.f %d15, %d1, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x71,0xf1]
msub.f %d15, %d1, %d0, %d0

# CHECK-INST: msub.f %d15, %d1, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x71,0xf1]
msub.f %d15, %d1, %d0, %d1

# CHECK-INST: msub.f %d15, %d1, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x71,0xf1]
msub.f %d15, %d1, %d0, %d14

# CHECK-INST: msub.f %d15, %d1, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x71,0xf1]
msub.f %d15, %d1, %d0, %d15

# CHECK-INST: msub.f %d15, %d1, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x71,0xf1]
msub.f %d15, %d1, %d1, %d0

# CHECK-INST: msub.f %d15, %d1, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x71,0xf1]
msub.f %d15, %d1, %d1, %d1

# CHECK-INST: msub.f %d15, %d1, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x71,0xf1]
msub.f %d15, %d1, %d1, %d14

# CHECK-INST: msub.f %d15, %d1, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x71,0xf1]
msub.f %d15, %d1, %d1, %d15

# CHECK-INST: msub.f %d15, %d1, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x71,0xf1]
msub.f %d15, %d1, %d14, %d0

# CHECK-INST: msub.f %d15, %d1, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x71,0xf1]
msub.f %d15, %d1, %d14, %d1

# CHECK-INST: msub.f %d15, %d1, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x71,0xf1]
msub.f %d15, %d1, %d14, %d14

# CHECK-INST: msub.f %d15, %d1, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x71,0xf1]
msub.f %d15, %d1, %d14, %d15

# CHECK-INST: msub.f %d15, %d1, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x71,0xf1]
msub.f %d15, %d1, %d15, %d0

# CHECK-INST: msub.f %d15, %d1, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x71,0xf1]
msub.f %d15, %d1, %d15, %d1

# CHECK-INST: msub.f %d15, %d1, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x71,0xf1]
msub.f %d15, %d1, %d15, %d14

# CHECK-INST: msub.f %d15, %d1, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x71,0xf1]
msub.f %d15, %d1, %d15, %d15

# CHECK-INST: msub.f %d15, %d14, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x71,0xfe]
msub.f %d15, %d14, %d0, %d0

# CHECK-INST: msub.f %d15, %d14, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x71,0xfe]
msub.f %d15, %d14, %d0, %d1

# CHECK-INST: msub.f %d15, %d14, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x71,0xfe]
msub.f %d15, %d14, %d0, %d14

# CHECK-INST: msub.f %d15, %d14, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x71,0xfe]
msub.f %d15, %d14, %d0, %d15

# CHECK-INST: msub.f %d15, %d14, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x71,0xfe]
msub.f %d15, %d14, %d1, %d0

# CHECK-INST: msub.f %d15, %d14, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x71,0xfe]
msub.f %d15, %d14, %d1, %d1

# CHECK-INST: msub.f %d15, %d14, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x71,0xfe]
msub.f %d15, %d14, %d1, %d14

# CHECK-INST: msub.f %d15, %d14, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x71,0xfe]
msub.f %d15, %d14, %d1, %d15

# CHECK-INST: msub.f %d15, %d14, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x71,0xfe]
msub.f %d15, %d14, %d14, %d0

# CHECK-INST: msub.f %d15, %d14, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x71,0xfe]
msub.f %d15, %d14, %d14, %d1

# CHECK-INST: msub.f %d15, %d14, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x71,0xfe]
msub.f %d15, %d14, %d14, %d14

# CHECK-INST: msub.f %d15, %d14, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x71,0xfe]
msub.f %d15, %d14, %d14, %d15

# CHECK-INST: msub.f %d15, %d14, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x71,0xfe]
msub.f %d15, %d14, %d15, %d0

# CHECK-INST: msub.f %d15, %d14, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x71,0xfe]
msub.f %d15, %d14, %d15, %d1

# CHECK-INST: msub.f %d15, %d14, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x71,0xfe]
msub.f %d15, %d14, %d15, %d14

# CHECK-INST: msub.f %d15, %d14, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x71,0xfe]
msub.f %d15, %d14, %d15, %d15

# CHECK-INST: msub.f %d15, %d15, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x71,0xff]
msub.f %d15, %d15, %d0, %d0

# CHECK-INST: msub.f %d15, %d15, %d0, %d1
# CHECK: encoding: [0x6b,0x10,0x71,0xff]
msub.f %d15, %d15, %d0, %d1

# CHECK-INST: msub.f %d15, %d15, %d0, %d14
# CHECK: encoding: [0x6b,0xe0,0x71,0xff]
msub.f %d15, %d15, %d0, %d14

# CHECK-INST: msub.f %d15, %d15, %d0, %d15
# CHECK: encoding: [0x6b,0xf0,0x71,0xff]
msub.f %d15, %d15, %d0, %d15

# CHECK-INST: msub.f %d15, %d15, %d1, %d0
# CHECK: encoding: [0x6b,0x01,0x71,0xff]
msub.f %d15, %d15, %d1, %d0

# CHECK-INST: msub.f %d15, %d15, %d1, %d1
# CHECK: encoding: [0x6b,0x11,0x71,0xff]
msub.f %d15, %d15, %d1, %d1

# CHECK-INST: msub.f %d15, %d15, %d1, %d14
# CHECK: encoding: [0x6b,0xe1,0x71,0xff]
msub.f %d15, %d15, %d1, %d14

# CHECK-INST: msub.f %d15, %d15, %d1, %d15
# CHECK: encoding: [0x6b,0xf1,0x71,0xff]
msub.f %d15, %d15, %d1, %d15

# CHECK-INST: msub.f %d15, %d15, %d14, %d0
# CHECK: encoding: [0x6b,0x0e,0x71,0xff]
msub.f %d15, %d15, %d14, %d0

# CHECK-INST: msub.f %d15, %d15, %d14, %d1
# CHECK: encoding: [0x6b,0x1e,0x71,0xff]
msub.f %d15, %d15, %d14, %d1

# CHECK-INST: msub.f %d15, %d15, %d14, %d14
# CHECK: encoding: [0x6b,0xee,0x71,0xff]
msub.f %d15, %d15, %d14, %d14

# CHECK-INST: msub.f %d15, %d15, %d14, %d15
# CHECK: encoding: [0x6b,0xfe,0x71,0xff]
msub.f %d15, %d15, %d14, %d15

# CHECK-INST: msub.f %d15, %d15, %d15, %d0
# CHECK: encoding: [0x6b,0x0f,0x71,0xff]
msub.f %d15, %d15, %d15, %d0

# CHECK-INST: msub.f %d15, %d15, %d15, %d1
# CHECK: encoding: [0x6b,0x1f,0x71,0xff]
msub.f %d15, %d15, %d15, %d1

# CHECK-INST: msub.f %d15, %d15, %d15, %d14
# CHECK: encoding: [0x6b,0xef,0x71,0xff]
msub.f %d15, %d15, %d15, %d14

# CHECK-INST: msub.f %d15, %d15, %d15, %d15
# CHECK: encoding: [0x6b,0xff,0x71,0xff]
msub.f %d15, %d15, %d15, %d15

# CHECK-INST: mul.f %d0, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x41,0x00]
mul.f %d0, %d0, %d0

# CHECK-INST: mul.f %d0, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x41,0x00]
mul.f %d0, %d0, %d1

# CHECK-INST: mul.f %d0, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x41,0x00]
mul.f %d0, %d0, %d14

# CHECK-INST: mul.f %d0, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x41,0x00]
mul.f %d0, %d0, %d15

# CHECK-INST: mul.f %d0, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x41,0x00]
mul.f %d0, %d1, %d0

# CHECK-INST: mul.f %d0, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x41,0x00]
mul.f %d0, %d1, %d1

# CHECK-INST: mul.f %d0, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x41,0x00]
mul.f %d0, %d1, %d14

# CHECK-INST: mul.f %d0, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x41,0x00]
mul.f %d0, %d1, %d15

# CHECK-INST: mul.f %d0, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x41,0x00]
mul.f %d0, %d14, %d0

# CHECK-INST: mul.f %d0, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x41,0x00]
mul.f %d0, %d14, %d1

# CHECK-INST: mul.f %d0, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x41,0x00]
mul.f %d0, %d14, %d14

# CHECK-INST: mul.f %d0, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x41,0x00]
mul.f %d0, %d14, %d15

# CHECK-INST: mul.f %d0, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x41,0x00]
mul.f %d0, %d15, %d0

# CHECK-INST: mul.f %d0, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x41,0x00]
mul.f %d0, %d15, %d1

# CHECK-INST: mul.f %d0, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x41,0x00]
mul.f %d0, %d15, %d14

# CHECK-INST: mul.f %d0, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x41,0x00]
mul.f %d0, %d15, %d15

# CHECK-INST: mul.f %d1, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x41,0x10]
mul.f %d1, %d0, %d0

# CHECK-INST: mul.f %d1, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x41,0x10]
mul.f %d1, %d0, %d1

# CHECK-INST: mul.f %d1, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x41,0x10]
mul.f %d1, %d0, %d14

# CHECK-INST: mul.f %d1, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x41,0x10]
mul.f %d1, %d0, %d15

# CHECK-INST: mul.f %d1, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x41,0x10]
mul.f %d1, %d1, %d0

# CHECK-INST: mul.f %d1, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x41,0x10]
mul.f %d1, %d1, %d1

# CHECK-INST: mul.f %d1, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x41,0x10]
mul.f %d1, %d1, %d14

# CHECK-INST: mul.f %d1, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x41,0x10]
mul.f %d1, %d1, %d15

# CHECK-INST: mul.f %d1, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x41,0x10]
mul.f %d1, %d14, %d0

# CHECK-INST: mul.f %d1, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x41,0x10]
mul.f %d1, %d14, %d1

# CHECK-INST: mul.f %d1, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x41,0x10]
mul.f %d1, %d14, %d14

# CHECK-INST: mul.f %d1, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x41,0x10]
mul.f %d1, %d14, %d15

# CHECK-INST: mul.f %d1, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x41,0x10]
mul.f %d1, %d15, %d0

# CHECK-INST: mul.f %d1, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x41,0x10]
mul.f %d1, %d15, %d1

# CHECK-INST: mul.f %d1, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x41,0x10]
mul.f %d1, %d15, %d14

# CHECK-INST: mul.f %d1, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x41,0x10]
mul.f %d1, %d15, %d15

# CHECK-INST: mul.f %d14, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x41,0xe0]
mul.f %d14, %d0, %d0

# CHECK-INST: mul.f %d14, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x41,0xe0]
mul.f %d14, %d0, %d1

# CHECK-INST: mul.f %d14, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x41,0xe0]
mul.f %d14, %d0, %d14

# CHECK-INST: mul.f %d14, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x41,0xe0]
mul.f %d14, %d0, %d15

# CHECK-INST: mul.f %d14, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x41,0xe0]
mul.f %d14, %d1, %d0

# CHECK-INST: mul.f %d14, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x41,0xe0]
mul.f %d14, %d1, %d1

# CHECK-INST: mul.f %d14, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x41,0xe0]
mul.f %d14, %d1, %d14

# CHECK-INST: mul.f %d14, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x41,0xe0]
mul.f %d14, %d1, %d15

# CHECK-INST: mul.f %d14, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x41,0xe0]
mul.f %d14, %d14, %d0

# CHECK-INST: mul.f %d14, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x41,0xe0]
mul.f %d14, %d14, %d1

# CHECK-INST: mul.f %d14, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x41,0xe0]
mul.f %d14, %d14, %d14

# CHECK-INST: mul.f %d14, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x41,0xe0]
mul.f %d14, %d14, %d15

# CHECK-INST: mul.f %d14, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x41,0xe0]
mul.f %d14, %d15, %d0

# CHECK-INST: mul.f %d14, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x41,0xe0]
mul.f %d14, %d15, %d1

# CHECK-INST: mul.f %d14, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x41,0xe0]
mul.f %d14, %d15, %d14

# CHECK-INST: mul.f %d14, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x41,0xe0]
mul.f %d14, %d15, %d15

# CHECK-INST: mul.f %d15, %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x41,0xf0]
mul.f %d15, %d0, %d0

# CHECK-INST: mul.f %d15, %d0, %d1
# CHECK: encoding: [0x4b,0x10,0x41,0xf0]
mul.f %d15, %d0, %d1

# CHECK-INST: mul.f %d15, %d0, %d14
# CHECK: encoding: [0x4b,0xe0,0x41,0xf0]
mul.f %d15, %d0, %d14

# CHECK-INST: mul.f %d15, %d0, %d15
# CHECK: encoding: [0x4b,0xf0,0x41,0xf0]
mul.f %d15, %d0, %d15

# CHECK-INST: mul.f %d15, %d1, %d0
# CHECK: encoding: [0x4b,0x01,0x41,0xf0]
mul.f %d15, %d1, %d0

# CHECK-INST: mul.f %d15, %d1, %d1
# CHECK: encoding: [0x4b,0x11,0x41,0xf0]
mul.f %d15, %d1, %d1

# CHECK-INST: mul.f %d15, %d1, %d14
# CHECK: encoding: [0x4b,0xe1,0x41,0xf0]
mul.f %d15, %d1, %d14

# CHECK-INST: mul.f %d15, %d1, %d15
# CHECK: encoding: [0x4b,0xf1,0x41,0xf0]
mul.f %d15, %d1, %d15

# CHECK-INST: mul.f %d15, %d14, %d0
# CHECK: encoding: [0x4b,0x0e,0x41,0xf0]
mul.f %d15, %d14, %d0

# CHECK-INST: mul.f %d15, %d14, %d1
# CHECK: encoding: [0x4b,0x1e,0x41,0xf0]
mul.f %d15, %d14, %d1

# CHECK-INST: mul.f %d15, %d14, %d14
# CHECK: encoding: [0x4b,0xee,0x41,0xf0]
mul.f %d15, %d14, %d14

# CHECK-INST: mul.f %d15, %d14, %d15
# CHECK: encoding: [0x4b,0xfe,0x41,0xf0]
mul.f %d15, %d14, %d15

# CHECK-INST: mul.f %d15, %d15, %d0
# CHECK: encoding: [0x4b,0x0f,0x41,0xf0]
mul.f %d15, %d15, %d0

# CHECK-INST: mul.f %d15, %d15, %d1
# CHECK: encoding: [0x4b,0x1f,0x41,0xf0]
mul.f %d15, %d15, %d1

# CHECK-INST: mul.f %d15, %d15, %d14
# CHECK: encoding: [0x4b,0xef,0x41,0xf0]
mul.f %d15, %d15, %d14

# CHECK-INST: mul.f %d15, %d15, %d15
# CHECK: encoding: [0x4b,0xff,0x41,0xf0]
mul.f %d15, %d15, %d15

# CHECK-INST: qseed.f %d0, %d0
# CHECK: encoding: [0x4b,0x00,0x91,0x01]
qseed.f %d0, %d0

# CHECK-INST: qseed.f %d0, %d1
# CHECK: encoding: [0x4b,0x01,0x91,0x01]
qseed.f %d0, %d1

# CHECK-INST: qseed.f %d0, %d14
# CHECK: encoding: [0x4b,0x0e,0x91,0x01]
qseed.f %d0, %d14

# CHECK-INST: qseed.f %d0, %d15
# CHECK: encoding: [0x4b,0x0f,0x91,0x01]
qseed.f %d0, %d15

# CHECK-INST: qseed.f %d1, %d0
# CHECK: encoding: [0x4b,0x00,0x91,0x11]
qseed.f %d1, %d0

# CHECK-INST: qseed.f %d1, %d1
# CHECK: encoding: [0x4b,0x01,0x91,0x11]
qseed.f %d1, %d1

# CHECK-INST: qseed.f %d1, %d14
# CHECK: encoding: [0x4b,0x0e,0x91,0x11]
qseed.f %d1, %d14

# CHECK-INST: qseed.f %d1, %d15
# CHECK: encoding: [0x4b,0x0f,0x91,0x11]
qseed.f %d1, %d15

# CHECK-INST: qseed.f %d14, %d0
# CHECK: encoding: [0x4b,0x00,0x91,0xe1]
qseed.f %d14, %d0

# CHECK-INST: qseed.f %d14, %d1
# CHECK: encoding: [0x4b,0x01,0x91,0xe1]
qseed.f %d14, %d1

# CHECK-INST: qseed.f %d14, %d14
# CHECK: encoding: [0x4b,0x0e,0x91,0xe1]
qseed.f %d14, %d14

# CHECK-INST: qseed.f %d14, %d15
# CHECK: encoding: [0x4b,0x0f,0x91,0xe1]
qseed.f %d14, %d15

# CHECK-INST: qseed.f %d15, %d0
# CHECK: encoding: [0x4b,0x00,0x91,0xf1]
qseed.f %d15, %d0

# CHECK-INST: qseed.f %d15, %d1
# CHECK: encoding: [0x4b,0x01,0x91,0xf1]
qseed.f %d15, %d1

# CHECK-INST: qseed.f %d15, %d14
# CHECK: encoding: [0x4b,0x0e,0x91,0xf1]
qseed.f %d15, %d14

# CHECK-INST: qseed.f %d15, %d15
# CHECK: encoding: [0x4b,0x0f,0x91,0xf1]
qseed.f %d15, %d15

# CHECK-INST: sub.f %d0, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x31,0x00]
sub.f %d0, %d0, %d0

# CHECK-INST: sub.f %d0, %d0, %d1
# CHECK: encoding: [0x6b,0x01,0x31,0x00]
sub.f %d0, %d0, %d1

# CHECK-INST: sub.f %d0, %d0, %d14
# CHECK: encoding: [0x6b,0x0e,0x31,0x00]
sub.f %d0, %d0, %d14

# CHECK-INST: sub.f %d0, %d0, %d15
# CHECK: encoding: [0x6b,0x0f,0x31,0x00]
sub.f %d0, %d0, %d15

# CHECK-INST: sub.f %d0, %d1, %d0
# CHECK: encoding: [0x6b,0x00,0x31,0x01]
sub.f %d0, %d1, %d0

# CHECK-INST: sub.f %d0, %d1, %d1
# CHECK: encoding: [0x6b,0x01,0x31,0x01]
sub.f %d0, %d1, %d1

# CHECK-INST: sub.f %d0, %d1, %d14
# CHECK: encoding: [0x6b,0x0e,0x31,0x01]
sub.f %d0, %d1, %d14

# CHECK-INST: sub.f %d0, %d1, %d15
# CHECK: encoding: [0x6b,0x0f,0x31,0x01]
sub.f %d0, %d1, %d15

# CHECK-INST: sub.f %d0, %d14, %d0
# CHECK: encoding: [0x6b,0x00,0x31,0x0e]
sub.f %d0, %d14, %d0

# CHECK-INST: sub.f %d0, %d14, %d1
# CHECK: encoding: [0x6b,0x01,0x31,0x0e]
sub.f %d0, %d14, %d1

# CHECK-INST: sub.f %d0, %d14, %d14
# CHECK: encoding: [0x6b,0x0e,0x31,0x0e]
sub.f %d0, %d14, %d14

# CHECK-INST: sub.f %d0, %d14, %d15
# CHECK: encoding: [0x6b,0x0f,0x31,0x0e]
sub.f %d0, %d14, %d15

# CHECK-INST: sub.f %d0, %d15, %d0
# CHECK: encoding: [0x6b,0x00,0x31,0x0f]
sub.f %d0, %d15, %d0

# CHECK-INST: sub.f %d0, %d15, %d1
# CHECK: encoding: [0x6b,0x01,0x31,0x0f]
sub.f %d0, %d15, %d1

# CHECK-INST: sub.f %d0, %d15, %d14
# CHECK: encoding: [0x6b,0x0e,0x31,0x0f]
sub.f %d0, %d15, %d14

# CHECK-INST: sub.f %d0, %d15, %d15
# CHECK: encoding: [0x6b,0x0f,0x31,0x0f]
sub.f %d0, %d15, %d15

# CHECK-INST: sub.f %d1, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x31,0x10]
sub.f %d1, %d0, %d0

# CHECK-INST: sub.f %d1, %d0, %d1
# CHECK: encoding: [0x6b,0x01,0x31,0x10]
sub.f %d1, %d0, %d1

# CHECK-INST: sub.f %d1, %d0, %d14
# CHECK: encoding: [0x6b,0x0e,0x31,0x10]
sub.f %d1, %d0, %d14

# CHECK-INST: sub.f %d1, %d0, %d15
# CHECK: encoding: [0x6b,0x0f,0x31,0x10]
sub.f %d1, %d0, %d15

# CHECK-INST: sub.f %d1, %d1, %d0
# CHECK: encoding: [0x6b,0x00,0x31,0x11]
sub.f %d1, %d1, %d0

# CHECK-INST: sub.f %d1, %d1, %d1
# CHECK: encoding: [0x6b,0x01,0x31,0x11]
sub.f %d1, %d1, %d1

# CHECK-INST: sub.f %d1, %d1, %d14
# CHECK: encoding: [0x6b,0x0e,0x31,0x11]
sub.f %d1, %d1, %d14

# CHECK-INST: sub.f %d1, %d1, %d15
# CHECK: encoding: [0x6b,0x0f,0x31,0x11]
sub.f %d1, %d1, %d15

# CHECK-INST: sub.f %d1, %d14, %d0
# CHECK: encoding: [0x6b,0x00,0x31,0x1e]
sub.f %d1, %d14, %d0

# CHECK-INST: sub.f %d1, %d14, %d1
# CHECK: encoding: [0x6b,0x01,0x31,0x1e]
sub.f %d1, %d14, %d1

# CHECK-INST: sub.f %d1, %d14, %d14
# CHECK: encoding: [0x6b,0x0e,0x31,0x1e]
sub.f %d1, %d14, %d14

# CHECK-INST: sub.f %d1, %d14, %d15
# CHECK: encoding: [0x6b,0x0f,0x31,0x1e]
sub.f %d1, %d14, %d15

# CHECK-INST: sub.f %d1, %d15, %d0
# CHECK: encoding: [0x6b,0x00,0x31,0x1f]
sub.f %d1, %d15, %d0

# CHECK-INST: sub.f %d1, %d15, %d1
# CHECK: encoding: [0x6b,0x01,0x31,0x1f]
sub.f %d1, %d15, %d1

# CHECK-INST: sub.f %d1, %d15, %d14
# CHECK: encoding: [0x6b,0x0e,0x31,0x1f]
sub.f %d1, %d15, %d14

# CHECK-INST: sub.f %d1, %d15, %d15
# CHECK: encoding: [0x6b,0x0f,0x31,0x1f]
sub.f %d1, %d15, %d15

# CHECK-INST: sub.f %d14, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x31,0xe0]
sub.f %d14, %d0, %d0

# CHECK-INST: sub.f %d14, %d0, %d1
# CHECK: encoding: [0x6b,0x01,0x31,0xe0]
sub.f %d14, %d0, %d1

# CHECK-INST: sub.f %d14, %d0, %d14
# CHECK: encoding: [0x6b,0x0e,0x31,0xe0]
sub.f %d14, %d0, %d14

# CHECK-INST: sub.f %d14, %d0, %d15
# CHECK: encoding: [0x6b,0x0f,0x31,0xe0]
sub.f %d14, %d0, %d15

# CHECK-INST: sub.f %d14, %d1, %d0
# CHECK: encoding: [0x6b,0x00,0x31,0xe1]
sub.f %d14, %d1, %d0

# CHECK-INST: sub.f %d14, %d1, %d1
# CHECK: encoding: [0x6b,0x01,0x31,0xe1]
sub.f %d14, %d1, %d1

# CHECK-INST: sub.f %d14, %d1, %d14
# CHECK: encoding: [0x6b,0x0e,0x31,0xe1]
sub.f %d14, %d1, %d14

# CHECK-INST: sub.f %d14, %d1, %d15
# CHECK: encoding: [0x6b,0x0f,0x31,0xe1]
sub.f %d14, %d1, %d15

# CHECK-INST: sub.f %d14, %d14, %d0
# CHECK: encoding: [0x6b,0x00,0x31,0xee]
sub.f %d14, %d14, %d0

# CHECK-INST: sub.f %d14, %d14, %d1
# CHECK: encoding: [0x6b,0x01,0x31,0xee]
sub.f %d14, %d14, %d1

# CHECK-INST: sub.f %d14, %d14, %d14
# CHECK: encoding: [0x6b,0x0e,0x31,0xee]
sub.f %d14, %d14, %d14

# CHECK-INST: sub.f %d14, %d14, %d15
# CHECK: encoding: [0x6b,0x0f,0x31,0xee]
sub.f %d14, %d14, %d15

# CHECK-INST: sub.f %d14, %d15, %d0
# CHECK: encoding: [0x6b,0x00,0x31,0xef]
sub.f %d14, %d15, %d0

# CHECK-INST: sub.f %d14, %d15, %d1
# CHECK: encoding: [0x6b,0x01,0x31,0xef]
sub.f %d14, %d15, %d1

# CHECK-INST: sub.f %d14, %d15, %d14
# CHECK: encoding: [0x6b,0x0e,0x31,0xef]
sub.f %d14, %d15, %d14

# CHECK-INST: sub.f %d14, %d15, %d15
# CHECK: encoding: [0x6b,0x0f,0x31,0xef]
sub.f %d14, %d15, %d15

# CHECK-INST: sub.f %d15, %d0, %d0
# CHECK: encoding: [0x6b,0x00,0x31,0xf0]
sub.f %d15, %d0, %d0

# CHECK-INST: sub.f %d15, %d0, %d1
# CHECK: encoding: [0x6b,0x01,0x31,0xf0]
sub.f %d15, %d0, %d1

# CHECK-INST: sub.f %d15, %d0, %d14
# CHECK: encoding: [0x6b,0x0e,0x31,0xf0]
sub.f %d15, %d0, %d14

# CHECK-INST: sub.f %d15, %d0, %d15
# CHECK: encoding: [0x6b,0x0f,0x31,0xf0]
sub.f %d15, %d0, %d15

# CHECK-INST: sub.f %d15, %d1, %d0
# CHECK: encoding: [0x6b,0x00,0x31,0xf1]
sub.f %d15, %d1, %d0

# CHECK-INST: sub.f %d15, %d1, %d1
# CHECK: encoding: [0x6b,0x01,0x31,0xf1]
sub.f %d15, %d1, %d1

# CHECK-INST: sub.f %d15, %d1, %d14
# CHECK: encoding: [0x6b,0x0e,0x31,0xf1]
sub.f %d15, %d1, %d14

# CHECK-INST: sub.f %d15, %d1, %d15
# CHECK: encoding: [0x6b,0x0f,0x31,0xf1]
sub.f %d15, %d1, %d15

# CHECK-INST: sub.f %d15, %d14, %d0
# CHECK: encoding: [0x6b,0x00,0x31,0xfe]
sub.f %d15, %d14, %d0

# CHECK-INST: sub.f %d15, %d14, %d1
# CHECK: encoding: [0x6b,0x01,0x31,0xfe]
sub.f %d15, %d14, %d1

# CHECK-INST: sub.f %d15, %d14, %d14
# CHECK: encoding: [0x6b,0x0e,0x31,0xfe]
sub.f %d15, %d14, %d14

# CHECK-INST: sub.f %d15, %d14, %d15
# CHECK: encoding: [0x6b,0x0f,0x31,0xfe]
sub.f %d15, %d14, %d15

# CHECK-INST: sub.f %d15, %d15, %d0
# CHECK: encoding: [0x6b,0x00,0x31,0xff]
sub.f %d15, %d15, %d0

# CHECK-INST: sub.f %d15, %d15, %d1
# CHECK: encoding: [0x6b,0x01,0x31,0xff]
sub.f %d15, %d15, %d1

# CHECK-INST: sub.f %d15, %d15, %d14
# CHECK: encoding: [0x6b,0x0e,0x31,0xff]
sub.f %d15, %d15, %d14

# CHECK-INST: sub.f %d15, %d15, %d15
# CHECK: encoding: [0x6b,0x0f,0x31,0xff]
sub.f %d15, %d15, %d15

