# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s

# CHECK-INST: cadd %d0, %d15, -8
# CHECK: encoding: [0x8a,0x80]
cadd %d0, %d15, -8

# CHECK-INST: cadd %d0, %d15, -1
# CHECK: encoding: [0x8a,0xf0]
cadd %d0, %d15, -1

# CHECK-INST: cadd %d0, %d15, 0
# CHECK: encoding: [0x8a,0x00]
cadd %d0, %d15, 0

# CHECK-INST: cadd %d0, %d15, 1
# CHECK: encoding: [0x8a,0x10]
cadd %d0, %d15, 1

# CHECK-INST: cadd %d0, %d15, 7
# CHECK: encoding: [0x8a,0x70]
cadd %d0, %d15, 7

# CHECK-INST: cadd %d1, %d15, -8
# CHECK: encoding: [0x8a,0x81]
cadd %d1, %d15, -8

# CHECK-INST: cadd %d1, %d15, -1
# CHECK: encoding: [0x8a,0xf1]
cadd %d1, %d15, -1

# CHECK-INST: cadd %d1, %d15, 0
# CHECK: encoding: [0x8a,0x01]
cadd %d1, %d15, 0

# CHECK-INST: cadd %d1, %d15, 1
# CHECK: encoding: [0x8a,0x11]
cadd %d1, %d15, 1

# CHECK-INST: cadd %d1, %d15, 7
# CHECK: encoding: [0x8a,0x71]
cadd %d1, %d15, 7

# CHECK-INST: cadd %d14, %d15, -8
# CHECK: encoding: [0x8a,0x8e]
cadd %d14, %d15, -8

# CHECK-INST: cadd %d14, %d15, -1
# CHECK: encoding: [0x8a,0xfe]
cadd %d14, %d15, -1

# CHECK-INST: cadd %d14, %d15, 0
# CHECK: encoding: [0x8a,0x0e]
cadd %d14, %d15, 0

# CHECK-INST: cadd %d14, %d15, 1
# CHECK: encoding: [0x8a,0x1e]
cadd %d14, %d15, 1

# CHECK-INST: cadd %d14, %d15, 7
# CHECK: encoding: [0x8a,0x7e]
cadd %d14, %d15, 7

# CHECK-INST: cadd %d15, %d15, -8
# CHECK: encoding: [0x8a,0x8f]
cadd %d15, %d15, -8

# CHECK-INST: cadd %d15, %d15, -1
# CHECK: encoding: [0x8a,0xff]
cadd %d15, %d15, -1

# CHECK-INST: cadd %d15, %d15, 0
# CHECK: encoding: [0x8a,0x0f]
cadd %d15, %d15, 0

# CHECK-INST: cadd %d15, %d15, 1
# CHECK: encoding: [0x8a,0x1f]
cadd %d15, %d15, 1

# CHECK-INST: cadd %d15, %d15, 7
# CHECK: encoding: [0x8a,0x7f]
cadd %d15, %d15, 7

# CHECK-INST: cadd %d0, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0x00]
cadd %d0, %d0, %d0, %d0

# CHECK-INST: cadd %d0, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0x00]
cadd %d0, %d0, %d0, %d1

# CHECK-INST: cadd %d0, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0x00]
cadd %d0, %d0, %d0, %d14

# CHECK-INST: cadd %d0, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0x00]
cadd %d0, %d0, %d0, %d15

# CHECK-INST: cadd %d0, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0x00]
cadd %d0, %d0, %d1, %d0

# CHECK-INST: cadd %d0, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0x00]
cadd %d0, %d0, %d1, %d1

# CHECK-INST: cadd %d0, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0x00]
cadd %d0, %d0, %d1, %d14

# CHECK-INST: cadd %d0, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0x00]
cadd %d0, %d0, %d1, %d15

# CHECK-INST: cadd %d0, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0x00]
cadd %d0, %d0, %d14, %d0

# CHECK-INST: cadd %d0, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0x00]
cadd %d0, %d0, %d14, %d1

# CHECK-INST: cadd %d0, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0x00]
cadd %d0, %d0, %d14, %d14

# CHECK-INST: cadd %d0, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0x00]
cadd %d0, %d0, %d14, %d15

# CHECK-INST: cadd %d0, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0x00]
cadd %d0, %d0, %d15, %d0

# CHECK-INST: cadd %d0, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0x00]
cadd %d0, %d0, %d15, %d1

# CHECK-INST: cadd %d0, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0x00]
cadd %d0, %d0, %d15, %d14

# CHECK-INST: cadd %d0, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0x00]
cadd %d0, %d0, %d15, %d15

# CHECK-INST: cadd %d0, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0x01]
cadd %d0, %d1, %d0, %d0

# CHECK-INST: cadd %d0, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0x01]
cadd %d0, %d1, %d0, %d1

# CHECK-INST: cadd %d0, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0x01]
cadd %d0, %d1, %d0, %d14

# CHECK-INST: cadd %d0, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0x01]
cadd %d0, %d1, %d0, %d15

# CHECK-INST: cadd %d0, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0x01]
cadd %d0, %d1, %d1, %d0

# CHECK-INST: cadd %d0, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0x01]
cadd %d0, %d1, %d1, %d1

# CHECK-INST: cadd %d0, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0x01]
cadd %d0, %d1, %d1, %d14

# CHECK-INST: cadd %d0, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0x01]
cadd %d0, %d1, %d1, %d15

# CHECK-INST: cadd %d0, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0x01]
cadd %d0, %d1, %d14, %d0

# CHECK-INST: cadd %d0, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0x01]
cadd %d0, %d1, %d14, %d1

# CHECK-INST: cadd %d0, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0x01]
cadd %d0, %d1, %d14, %d14

# CHECK-INST: cadd %d0, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0x01]
cadd %d0, %d1, %d14, %d15

# CHECK-INST: cadd %d0, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0x01]
cadd %d0, %d1, %d15, %d0

# CHECK-INST: cadd %d0, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0x01]
cadd %d0, %d1, %d15, %d1

# CHECK-INST: cadd %d0, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0x01]
cadd %d0, %d1, %d15, %d14

# CHECK-INST: cadd %d0, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0x01]
cadd %d0, %d1, %d15, %d15

# CHECK-INST: cadd %d0, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0x0e]
cadd %d0, %d14, %d0, %d0

# CHECK-INST: cadd %d0, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0x0e]
cadd %d0, %d14, %d0, %d1

# CHECK-INST: cadd %d0, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0x0e]
cadd %d0, %d14, %d0, %d14

# CHECK-INST: cadd %d0, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0x0e]
cadd %d0, %d14, %d0, %d15

# CHECK-INST: cadd %d0, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0x0e]
cadd %d0, %d14, %d1, %d0

# CHECK-INST: cadd %d0, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0x0e]
cadd %d0, %d14, %d1, %d1

# CHECK-INST: cadd %d0, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0x0e]
cadd %d0, %d14, %d1, %d14

# CHECK-INST: cadd %d0, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0x0e]
cadd %d0, %d14, %d1, %d15

# CHECK-INST: cadd %d0, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0x0e]
cadd %d0, %d14, %d14, %d0

# CHECK-INST: cadd %d0, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0x0e]
cadd %d0, %d14, %d14, %d1

# CHECK-INST: cadd %d0, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0x0e]
cadd %d0, %d14, %d14, %d14

# CHECK-INST: cadd %d0, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0x0e]
cadd %d0, %d14, %d14, %d15

# CHECK-INST: cadd %d0, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0x0e]
cadd %d0, %d14, %d15, %d0

# CHECK-INST: cadd %d0, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0x0e]
cadd %d0, %d14, %d15, %d1

# CHECK-INST: cadd %d0, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0x0e]
cadd %d0, %d14, %d15, %d14

# CHECK-INST: cadd %d0, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0x0e]
cadd %d0, %d14, %d15, %d15

# CHECK-INST: cadd %d0, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0x0f]
cadd %d0, %d15, %d0, %d0

# CHECK-INST: cadd %d0, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0x0f]
cadd %d0, %d15, %d0, %d1

# CHECK-INST: cadd %d0, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0x0f]
cadd %d0, %d15, %d0, %d14

# CHECK-INST: cadd %d0, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0x0f]
cadd %d0, %d15, %d0, %d15

# CHECK-INST: cadd %d0, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0x0f]
cadd %d0, %d15, %d1, %d0

# CHECK-INST: cadd %d0, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0x0f]
cadd %d0, %d15, %d1, %d1

# CHECK-INST: cadd %d0, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0x0f]
cadd %d0, %d15, %d1, %d14

# CHECK-INST: cadd %d0, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0x0f]
cadd %d0, %d15, %d1, %d15

# CHECK-INST: cadd %d0, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0x0f]
cadd %d0, %d15, %d14, %d0

# CHECK-INST: cadd %d0, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0x0f]
cadd %d0, %d15, %d14, %d1

# CHECK-INST: cadd %d0, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0x0f]
cadd %d0, %d15, %d14, %d14

# CHECK-INST: cadd %d0, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0x0f]
cadd %d0, %d15, %d14, %d15

# CHECK-INST: cadd %d0, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0x0f]
cadd %d0, %d15, %d15, %d0

# CHECK-INST: cadd %d0, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0x0f]
cadd %d0, %d15, %d15, %d1

# CHECK-INST: cadd %d0, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0x0f]
cadd %d0, %d15, %d15, %d14

# CHECK-INST: cadd %d0, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0x0f]
cadd %d0, %d15, %d15, %d15

# CHECK-INST: cadd %d1, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0x10]
cadd %d1, %d0, %d0, %d0

# CHECK-INST: cadd %d1, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0x10]
cadd %d1, %d0, %d0, %d1

# CHECK-INST: cadd %d1, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0x10]
cadd %d1, %d0, %d0, %d14

# CHECK-INST: cadd %d1, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0x10]
cadd %d1, %d0, %d0, %d15

# CHECK-INST: cadd %d1, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0x10]
cadd %d1, %d0, %d1, %d0

# CHECK-INST: cadd %d1, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0x10]
cadd %d1, %d0, %d1, %d1

# CHECK-INST: cadd %d1, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0x10]
cadd %d1, %d0, %d1, %d14

# CHECK-INST: cadd %d1, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0x10]
cadd %d1, %d0, %d1, %d15

# CHECK-INST: cadd %d1, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0x10]
cadd %d1, %d0, %d14, %d0

# CHECK-INST: cadd %d1, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0x10]
cadd %d1, %d0, %d14, %d1

# CHECK-INST: cadd %d1, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0x10]
cadd %d1, %d0, %d14, %d14

# CHECK-INST: cadd %d1, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0x10]
cadd %d1, %d0, %d14, %d15

# CHECK-INST: cadd %d1, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0x10]
cadd %d1, %d0, %d15, %d0

# CHECK-INST: cadd %d1, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0x10]
cadd %d1, %d0, %d15, %d1

# CHECK-INST: cadd %d1, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0x10]
cadd %d1, %d0, %d15, %d14

# CHECK-INST: cadd %d1, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0x10]
cadd %d1, %d0, %d15, %d15

# CHECK-INST: cadd %d1, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0x11]
cadd %d1, %d1, %d0, %d0

# CHECK-INST: cadd %d1, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0x11]
cadd %d1, %d1, %d0, %d1

# CHECK-INST: cadd %d1, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0x11]
cadd %d1, %d1, %d0, %d14

# CHECK-INST: cadd %d1, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0x11]
cadd %d1, %d1, %d0, %d15

# CHECK-INST: cadd %d1, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0x11]
cadd %d1, %d1, %d1, %d0

# CHECK-INST: cadd %d1, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0x11]
cadd %d1, %d1, %d1, %d1

# CHECK-INST: cadd %d1, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0x11]
cadd %d1, %d1, %d1, %d14

# CHECK-INST: cadd %d1, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0x11]
cadd %d1, %d1, %d1, %d15

# CHECK-INST: cadd %d1, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0x11]
cadd %d1, %d1, %d14, %d0

# CHECK-INST: cadd %d1, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0x11]
cadd %d1, %d1, %d14, %d1

# CHECK-INST: cadd %d1, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0x11]
cadd %d1, %d1, %d14, %d14

# CHECK-INST: cadd %d1, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0x11]
cadd %d1, %d1, %d14, %d15

# CHECK-INST: cadd %d1, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0x11]
cadd %d1, %d1, %d15, %d0

# CHECK-INST: cadd %d1, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0x11]
cadd %d1, %d1, %d15, %d1

# CHECK-INST: cadd %d1, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0x11]
cadd %d1, %d1, %d15, %d14

# CHECK-INST: cadd %d1, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0x11]
cadd %d1, %d1, %d15, %d15

# CHECK-INST: cadd %d1, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0x1e]
cadd %d1, %d14, %d0, %d0

# CHECK-INST: cadd %d1, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0x1e]
cadd %d1, %d14, %d0, %d1

# CHECK-INST: cadd %d1, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0x1e]
cadd %d1, %d14, %d0, %d14

# CHECK-INST: cadd %d1, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0x1e]
cadd %d1, %d14, %d0, %d15

# CHECK-INST: cadd %d1, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0x1e]
cadd %d1, %d14, %d1, %d0

# CHECK-INST: cadd %d1, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0x1e]
cadd %d1, %d14, %d1, %d1

# CHECK-INST: cadd %d1, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0x1e]
cadd %d1, %d14, %d1, %d14

# CHECK-INST: cadd %d1, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0x1e]
cadd %d1, %d14, %d1, %d15

# CHECK-INST: cadd %d1, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0x1e]
cadd %d1, %d14, %d14, %d0

# CHECK-INST: cadd %d1, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0x1e]
cadd %d1, %d14, %d14, %d1

# CHECK-INST: cadd %d1, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0x1e]
cadd %d1, %d14, %d14, %d14

# CHECK-INST: cadd %d1, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0x1e]
cadd %d1, %d14, %d14, %d15

# CHECK-INST: cadd %d1, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0x1e]
cadd %d1, %d14, %d15, %d0

# CHECK-INST: cadd %d1, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0x1e]
cadd %d1, %d14, %d15, %d1

# CHECK-INST: cadd %d1, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0x1e]
cadd %d1, %d14, %d15, %d14

# CHECK-INST: cadd %d1, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0x1e]
cadd %d1, %d14, %d15, %d15

# CHECK-INST: cadd %d1, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0x1f]
cadd %d1, %d15, %d0, %d0

# CHECK-INST: cadd %d1, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0x1f]
cadd %d1, %d15, %d0, %d1

# CHECK-INST: cadd %d1, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0x1f]
cadd %d1, %d15, %d0, %d14

# CHECK-INST: cadd %d1, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0x1f]
cadd %d1, %d15, %d0, %d15

# CHECK-INST: cadd %d1, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0x1f]
cadd %d1, %d15, %d1, %d0

# CHECK-INST: cadd %d1, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0x1f]
cadd %d1, %d15, %d1, %d1

# CHECK-INST: cadd %d1, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0x1f]
cadd %d1, %d15, %d1, %d14

# CHECK-INST: cadd %d1, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0x1f]
cadd %d1, %d15, %d1, %d15

# CHECK-INST: cadd %d1, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0x1f]
cadd %d1, %d15, %d14, %d0

# CHECK-INST: cadd %d1, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0x1f]
cadd %d1, %d15, %d14, %d1

# CHECK-INST: cadd %d1, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0x1f]
cadd %d1, %d15, %d14, %d14

# CHECK-INST: cadd %d1, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0x1f]
cadd %d1, %d15, %d14, %d15

# CHECK-INST: cadd %d1, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0x1f]
cadd %d1, %d15, %d15, %d0

# CHECK-INST: cadd %d1, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0x1f]
cadd %d1, %d15, %d15, %d1

# CHECK-INST: cadd %d1, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0x1f]
cadd %d1, %d15, %d15, %d14

# CHECK-INST: cadd %d1, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0x1f]
cadd %d1, %d15, %d15, %d15

# CHECK-INST: cadd %d14, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0xe0]
cadd %d14, %d0, %d0, %d0

# CHECK-INST: cadd %d14, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0xe0]
cadd %d14, %d0, %d0, %d1

# CHECK-INST: cadd %d14, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0xe0]
cadd %d14, %d0, %d0, %d14

# CHECK-INST: cadd %d14, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0xe0]
cadd %d14, %d0, %d0, %d15

# CHECK-INST: cadd %d14, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0xe0]
cadd %d14, %d0, %d1, %d0

# CHECK-INST: cadd %d14, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0xe0]
cadd %d14, %d0, %d1, %d1

# CHECK-INST: cadd %d14, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0xe0]
cadd %d14, %d0, %d1, %d14

# CHECK-INST: cadd %d14, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0xe0]
cadd %d14, %d0, %d1, %d15

# CHECK-INST: cadd %d14, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0xe0]
cadd %d14, %d0, %d14, %d0

# CHECK-INST: cadd %d14, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0xe0]
cadd %d14, %d0, %d14, %d1

# CHECK-INST: cadd %d14, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0xe0]
cadd %d14, %d0, %d14, %d14

# CHECK-INST: cadd %d14, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0xe0]
cadd %d14, %d0, %d14, %d15

# CHECK-INST: cadd %d14, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0xe0]
cadd %d14, %d0, %d15, %d0

# CHECK-INST: cadd %d14, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0xe0]
cadd %d14, %d0, %d15, %d1

# CHECK-INST: cadd %d14, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0xe0]
cadd %d14, %d0, %d15, %d14

# CHECK-INST: cadd %d14, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0xe0]
cadd %d14, %d0, %d15, %d15

# CHECK-INST: cadd %d14, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0xe1]
cadd %d14, %d1, %d0, %d0

# CHECK-INST: cadd %d14, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0xe1]
cadd %d14, %d1, %d0, %d1

# CHECK-INST: cadd %d14, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0xe1]
cadd %d14, %d1, %d0, %d14

# CHECK-INST: cadd %d14, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0xe1]
cadd %d14, %d1, %d0, %d15

# CHECK-INST: cadd %d14, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0xe1]
cadd %d14, %d1, %d1, %d0

# CHECK-INST: cadd %d14, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0xe1]
cadd %d14, %d1, %d1, %d1

# CHECK-INST: cadd %d14, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0xe1]
cadd %d14, %d1, %d1, %d14

# CHECK-INST: cadd %d14, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0xe1]
cadd %d14, %d1, %d1, %d15

# CHECK-INST: cadd %d14, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0xe1]
cadd %d14, %d1, %d14, %d0

# CHECK-INST: cadd %d14, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0xe1]
cadd %d14, %d1, %d14, %d1

# CHECK-INST: cadd %d14, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0xe1]
cadd %d14, %d1, %d14, %d14

# CHECK-INST: cadd %d14, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0xe1]
cadd %d14, %d1, %d14, %d15

# CHECK-INST: cadd %d14, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0xe1]
cadd %d14, %d1, %d15, %d0

# CHECK-INST: cadd %d14, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0xe1]
cadd %d14, %d1, %d15, %d1

# CHECK-INST: cadd %d14, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0xe1]
cadd %d14, %d1, %d15, %d14

# CHECK-INST: cadd %d14, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0xe1]
cadd %d14, %d1, %d15, %d15

# CHECK-INST: cadd %d14, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0xee]
cadd %d14, %d14, %d0, %d0

# CHECK-INST: cadd %d14, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0xee]
cadd %d14, %d14, %d0, %d1

# CHECK-INST: cadd %d14, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0xee]
cadd %d14, %d14, %d0, %d14

# CHECK-INST: cadd %d14, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0xee]
cadd %d14, %d14, %d0, %d15

# CHECK-INST: cadd %d14, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0xee]
cadd %d14, %d14, %d1, %d0

# CHECK-INST: cadd %d14, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0xee]
cadd %d14, %d14, %d1, %d1

# CHECK-INST: cadd %d14, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0xee]
cadd %d14, %d14, %d1, %d14

# CHECK-INST: cadd %d14, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0xee]
cadd %d14, %d14, %d1, %d15

# CHECK-INST: cadd %d14, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0xee]
cadd %d14, %d14, %d14, %d0

# CHECK-INST: cadd %d14, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0xee]
cadd %d14, %d14, %d14, %d1

# CHECK-INST: cadd %d14, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0xee]
cadd %d14, %d14, %d14, %d14

# CHECK-INST: cadd %d14, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0xee]
cadd %d14, %d14, %d14, %d15

# CHECK-INST: cadd %d14, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0xee]
cadd %d14, %d14, %d15, %d0

# CHECK-INST: cadd %d14, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0xee]
cadd %d14, %d14, %d15, %d1

# CHECK-INST: cadd %d14, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0xee]
cadd %d14, %d14, %d15, %d14

# CHECK-INST: cadd %d14, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0xee]
cadd %d14, %d14, %d15, %d15

# CHECK-INST: cadd %d14, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0xef]
cadd %d14, %d15, %d0, %d0

# CHECK-INST: cadd %d14, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0xef]
cadd %d14, %d15, %d0, %d1

# CHECK-INST: cadd %d14, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0xef]
cadd %d14, %d15, %d0, %d14

# CHECK-INST: cadd %d14, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0xef]
cadd %d14, %d15, %d0, %d15

# CHECK-INST: cadd %d14, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0xef]
cadd %d14, %d15, %d1, %d0

# CHECK-INST: cadd %d14, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0xef]
cadd %d14, %d15, %d1, %d1

# CHECK-INST: cadd %d14, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0xef]
cadd %d14, %d15, %d1, %d14

# CHECK-INST: cadd %d14, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0xef]
cadd %d14, %d15, %d1, %d15

# CHECK-INST: cadd %d14, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0xef]
cadd %d14, %d15, %d14, %d0

# CHECK-INST: cadd %d14, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0xef]
cadd %d14, %d15, %d14, %d1

# CHECK-INST: cadd %d14, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0xef]
cadd %d14, %d15, %d14, %d14

# CHECK-INST: cadd %d14, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0xef]
cadd %d14, %d15, %d14, %d15

# CHECK-INST: cadd %d14, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0xef]
cadd %d14, %d15, %d15, %d0

# CHECK-INST: cadd %d14, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0xef]
cadd %d14, %d15, %d15, %d1

# CHECK-INST: cadd %d14, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0xef]
cadd %d14, %d15, %d15, %d14

# CHECK-INST: cadd %d14, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0xef]
cadd %d14, %d15, %d15, %d15

# CHECK-INST: cadd %d15, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0xf0]
cadd %d15, %d0, %d0, %d0

# CHECK-INST: cadd %d15, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0xf0]
cadd %d15, %d0, %d0, %d1

# CHECK-INST: cadd %d15, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0xf0]
cadd %d15, %d0, %d0, %d14

# CHECK-INST: cadd %d15, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0xf0]
cadd %d15, %d0, %d0, %d15

# CHECK-INST: cadd %d15, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0xf0]
cadd %d15, %d0, %d1, %d0

# CHECK-INST: cadd %d15, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0xf0]
cadd %d15, %d0, %d1, %d1

# CHECK-INST: cadd %d15, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0xf0]
cadd %d15, %d0, %d1, %d14

# CHECK-INST: cadd %d15, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0xf0]
cadd %d15, %d0, %d1, %d15

# CHECK-INST: cadd %d15, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0xf0]
cadd %d15, %d0, %d14, %d0

# CHECK-INST: cadd %d15, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0xf0]
cadd %d15, %d0, %d14, %d1

# CHECK-INST: cadd %d15, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0xf0]
cadd %d15, %d0, %d14, %d14

# CHECK-INST: cadd %d15, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0xf0]
cadd %d15, %d0, %d14, %d15

# CHECK-INST: cadd %d15, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0xf0]
cadd %d15, %d0, %d15, %d0

# CHECK-INST: cadd %d15, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0xf0]
cadd %d15, %d0, %d15, %d1

# CHECK-INST: cadd %d15, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0xf0]
cadd %d15, %d0, %d15, %d14

# CHECK-INST: cadd %d15, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0xf0]
cadd %d15, %d0, %d15, %d15

# CHECK-INST: cadd %d15, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0xf1]
cadd %d15, %d1, %d0, %d0

# CHECK-INST: cadd %d15, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0xf1]
cadd %d15, %d1, %d0, %d1

# CHECK-INST: cadd %d15, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0xf1]
cadd %d15, %d1, %d0, %d14

# CHECK-INST: cadd %d15, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0xf1]
cadd %d15, %d1, %d0, %d15

# CHECK-INST: cadd %d15, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0xf1]
cadd %d15, %d1, %d1, %d0

# CHECK-INST: cadd %d15, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0xf1]
cadd %d15, %d1, %d1, %d1

# CHECK-INST: cadd %d15, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0xf1]
cadd %d15, %d1, %d1, %d14

# CHECK-INST: cadd %d15, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0xf1]
cadd %d15, %d1, %d1, %d15

# CHECK-INST: cadd %d15, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0xf1]
cadd %d15, %d1, %d14, %d0

# CHECK-INST: cadd %d15, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0xf1]
cadd %d15, %d1, %d14, %d1

# CHECK-INST: cadd %d15, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0xf1]
cadd %d15, %d1, %d14, %d14

# CHECK-INST: cadd %d15, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0xf1]
cadd %d15, %d1, %d14, %d15

# CHECK-INST: cadd %d15, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0xf1]
cadd %d15, %d1, %d15, %d0

# CHECK-INST: cadd %d15, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0xf1]
cadd %d15, %d1, %d15, %d1

# CHECK-INST: cadd %d15, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0xf1]
cadd %d15, %d1, %d15, %d14

# CHECK-INST: cadd %d15, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0xf1]
cadd %d15, %d1, %d15, %d15

# CHECK-INST: cadd %d15, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0xfe]
cadd %d15, %d14, %d0, %d0

# CHECK-INST: cadd %d15, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0xfe]
cadd %d15, %d14, %d0, %d1

# CHECK-INST: cadd %d15, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0xfe]
cadd %d15, %d14, %d0, %d14

# CHECK-INST: cadd %d15, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0xfe]
cadd %d15, %d14, %d0, %d15

# CHECK-INST: cadd %d15, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0xfe]
cadd %d15, %d14, %d1, %d0

# CHECK-INST: cadd %d15, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0xfe]
cadd %d15, %d14, %d1, %d1

# CHECK-INST: cadd %d15, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0xfe]
cadd %d15, %d14, %d1, %d14

# CHECK-INST: cadd %d15, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0xfe]
cadd %d15, %d14, %d1, %d15

# CHECK-INST: cadd %d15, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0xfe]
cadd %d15, %d14, %d14, %d0

# CHECK-INST: cadd %d15, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0xfe]
cadd %d15, %d14, %d14, %d1

# CHECK-INST: cadd %d15, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0xfe]
cadd %d15, %d14, %d14, %d14

# CHECK-INST: cadd %d15, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0xfe]
cadd %d15, %d14, %d14, %d15

# CHECK-INST: cadd %d15, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0xfe]
cadd %d15, %d14, %d15, %d0

# CHECK-INST: cadd %d15, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0xfe]
cadd %d15, %d14, %d15, %d1

# CHECK-INST: cadd %d15, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0xfe]
cadd %d15, %d14, %d15, %d14

# CHECK-INST: cadd %d15, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0xfe]
cadd %d15, %d14, %d15, %d15

# CHECK-INST: cadd %d15, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x00,0xff]
cadd %d15, %d15, %d0, %d0

# CHECK-INST: cadd %d15, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x00,0xff]
cadd %d15, %d15, %d0, %d1

# CHECK-INST: cadd %d15, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x00,0xff]
cadd %d15, %d15, %d0, %d14

# CHECK-INST: cadd %d15, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x00,0xff]
cadd %d15, %d15, %d0, %d15

# CHECK-INST: cadd %d15, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x00,0xff]
cadd %d15, %d15, %d1, %d0

# CHECK-INST: cadd %d15, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x00,0xff]
cadd %d15, %d15, %d1, %d1

# CHECK-INST: cadd %d15, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x00,0xff]
cadd %d15, %d15, %d1, %d14

# CHECK-INST: cadd %d15, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x00,0xff]
cadd %d15, %d15, %d1, %d15

# CHECK-INST: cadd %d15, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x00,0xff]
cadd %d15, %d15, %d14, %d0

# CHECK-INST: cadd %d15, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x00,0xff]
cadd %d15, %d15, %d14, %d1

# CHECK-INST: cadd %d15, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x00,0xff]
cadd %d15, %d15, %d14, %d14

# CHECK-INST: cadd %d15, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x00,0xff]
cadd %d15, %d15, %d14, %d15

# CHECK-INST: cadd %d15, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x00,0xff]
cadd %d15, %d15, %d15, %d0

# CHECK-INST: cadd %d15, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x00,0xff]
cadd %d15, %d15, %d15, %d1

# CHECK-INST: cadd %d15, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x00,0xff]
cadd %d15, %d15, %d15, %d14

# CHECK-INST: cadd %d15, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x00,0xff]
cadd %d15, %d15, %d15, %d15

# CHECK-INST: cadd %d0, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0x00]
cadd %d0, %d0, %d0, -256

# CHECK-INST: cadd %d0, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0x00]
cadd %d0, %d0, %d0, -129

# CHECK-INST: cadd %d0, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0x00]
cadd %d0, %d0, %d0, -1

# CHECK-INST: cadd %d0, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0x00]
cadd %d0, %d0, %d0, 0

# CHECK-INST: cadd %d0, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0x00]
cadd %d0, %d0, %d0, 1

# CHECK-INST: cadd %d0, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0x00]
cadd %d0, %d0, %d0, 128

# CHECK-INST: cadd %d0, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0x00]
cadd %d0, %d0, %d0, 255

# CHECK-INST: cadd %d0, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0x00]
cadd %d0, %d0, %d1, -256

# CHECK-INST: cadd %d0, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0x00]
cadd %d0, %d0, %d1, -129

# CHECK-INST: cadd %d0, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0x00]
cadd %d0, %d0, %d1, -1

# CHECK-INST: cadd %d0, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0x00]
cadd %d0, %d0, %d1, 0

# CHECK-INST: cadd %d0, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0x00]
cadd %d0, %d0, %d1, 1

# CHECK-INST: cadd %d0, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0x00]
cadd %d0, %d0, %d1, 128

# CHECK-INST: cadd %d0, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0x00]
cadd %d0, %d0, %d1, 255

# CHECK-INST: cadd %d0, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0x00]
cadd %d0, %d0, %d14, -256

# CHECK-INST: cadd %d0, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0x00]
cadd %d0, %d0, %d14, -129

# CHECK-INST: cadd %d0, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0x00]
cadd %d0, %d0, %d14, -1

# CHECK-INST: cadd %d0, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0x00]
cadd %d0, %d0, %d14, 0

# CHECK-INST: cadd %d0, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0x00]
cadd %d0, %d0, %d14, 1

# CHECK-INST: cadd %d0, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0x00]
cadd %d0, %d0, %d14, 128

# CHECK-INST: cadd %d0, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0x00]
cadd %d0, %d0, %d14, 255

# CHECK-INST: cadd %d0, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0x00]
cadd %d0, %d0, %d15, -256

# CHECK-INST: cadd %d0, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0x00]
cadd %d0, %d0, %d15, -129

# CHECK-INST: cadd %d0, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0x00]
cadd %d0, %d0, %d15, -1

# CHECK-INST: cadd %d0, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0x00]
cadd %d0, %d0, %d15, 0

# CHECK-INST: cadd %d0, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0x00]
cadd %d0, %d0, %d15, 1

# CHECK-INST: cadd %d0, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0x00]
cadd %d0, %d0, %d15, 128

# CHECK-INST: cadd %d0, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0x00]
cadd %d0, %d0, %d15, 255

# CHECK-INST: cadd %d0, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0x01]
cadd %d0, %d1, %d0, -256

# CHECK-INST: cadd %d0, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0x01]
cadd %d0, %d1, %d0, -129

# CHECK-INST: cadd %d0, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0x01]
cadd %d0, %d1, %d0, -1

# CHECK-INST: cadd %d0, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0x01]
cadd %d0, %d1, %d0, 0

# CHECK-INST: cadd %d0, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0x01]
cadd %d0, %d1, %d0, 1

# CHECK-INST: cadd %d0, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0x01]
cadd %d0, %d1, %d0, 128

# CHECK-INST: cadd %d0, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0x01]
cadd %d0, %d1, %d0, 255

# CHECK-INST: cadd %d0, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0x01]
cadd %d0, %d1, %d1, -256

# CHECK-INST: cadd %d0, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0x01]
cadd %d0, %d1, %d1, -129

# CHECK-INST: cadd %d0, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0x01]
cadd %d0, %d1, %d1, -1

# CHECK-INST: cadd %d0, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0x01]
cadd %d0, %d1, %d1, 0

# CHECK-INST: cadd %d0, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0x01]
cadd %d0, %d1, %d1, 1

# CHECK-INST: cadd %d0, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0x01]
cadd %d0, %d1, %d1, 128

# CHECK-INST: cadd %d0, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0x01]
cadd %d0, %d1, %d1, 255

# CHECK-INST: cadd %d0, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0x01]
cadd %d0, %d1, %d14, -256

# CHECK-INST: cadd %d0, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0x01]
cadd %d0, %d1, %d14, -129

# CHECK-INST: cadd %d0, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0x01]
cadd %d0, %d1, %d14, -1

# CHECK-INST: cadd %d0, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0x01]
cadd %d0, %d1, %d14, 0

# CHECK-INST: cadd %d0, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0x01]
cadd %d0, %d1, %d14, 1

# CHECK-INST: cadd %d0, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0x01]
cadd %d0, %d1, %d14, 128

# CHECK-INST: cadd %d0, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0x01]
cadd %d0, %d1, %d14, 255

# CHECK-INST: cadd %d0, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0x01]
cadd %d0, %d1, %d15, -256

# CHECK-INST: cadd %d0, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0x01]
cadd %d0, %d1, %d15, -129

# CHECK-INST: cadd %d0, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0x01]
cadd %d0, %d1, %d15, -1

# CHECK-INST: cadd %d0, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0x01]
cadd %d0, %d1, %d15, 0

# CHECK-INST: cadd %d0, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0x01]
cadd %d0, %d1, %d15, 1

# CHECK-INST: cadd %d0, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0x01]
cadd %d0, %d1, %d15, 128

# CHECK-INST: cadd %d0, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0x01]
cadd %d0, %d1, %d15, 255

# CHECK-INST: cadd %d0, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0x0e]
cadd %d0, %d14, %d0, -256

# CHECK-INST: cadd %d0, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0x0e]
cadd %d0, %d14, %d0, -129

# CHECK-INST: cadd %d0, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0x0e]
cadd %d0, %d14, %d0, -1

# CHECK-INST: cadd %d0, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0x0e]
cadd %d0, %d14, %d0, 0

# CHECK-INST: cadd %d0, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0x0e]
cadd %d0, %d14, %d0, 1

# CHECK-INST: cadd %d0, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0x0e]
cadd %d0, %d14, %d0, 128

# CHECK-INST: cadd %d0, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0x0e]
cadd %d0, %d14, %d0, 255

# CHECK-INST: cadd %d0, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0x0e]
cadd %d0, %d14, %d1, -256

# CHECK-INST: cadd %d0, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0x0e]
cadd %d0, %d14, %d1, -129

# CHECK-INST: cadd %d0, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0x0e]
cadd %d0, %d14, %d1, -1

# CHECK-INST: cadd %d0, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0x0e]
cadd %d0, %d14, %d1, 0

# CHECK-INST: cadd %d0, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0x0e]
cadd %d0, %d14, %d1, 1

# CHECK-INST: cadd %d0, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0x0e]
cadd %d0, %d14, %d1, 128

# CHECK-INST: cadd %d0, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0x0e]
cadd %d0, %d14, %d1, 255

# CHECK-INST: cadd %d0, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0x0e]
cadd %d0, %d14, %d14, -256

# CHECK-INST: cadd %d0, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0x0e]
cadd %d0, %d14, %d14, -129

# CHECK-INST: cadd %d0, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0x0e]
cadd %d0, %d14, %d14, -1

# CHECK-INST: cadd %d0, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0x0e]
cadd %d0, %d14, %d14, 0

# CHECK-INST: cadd %d0, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0x0e]
cadd %d0, %d14, %d14, 1

# CHECK-INST: cadd %d0, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0x0e]
cadd %d0, %d14, %d14, 128

# CHECK-INST: cadd %d0, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0x0e]
cadd %d0, %d14, %d14, 255

# CHECK-INST: cadd %d0, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0x0e]
cadd %d0, %d14, %d15, -256

# CHECK-INST: cadd %d0, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0x0e]
cadd %d0, %d14, %d15, -129

# CHECK-INST: cadd %d0, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0x0e]
cadd %d0, %d14, %d15, -1

# CHECK-INST: cadd %d0, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0x0e]
cadd %d0, %d14, %d15, 0

# CHECK-INST: cadd %d0, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0x0e]
cadd %d0, %d14, %d15, 1

# CHECK-INST: cadd %d0, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0x0e]
cadd %d0, %d14, %d15, 128

# CHECK-INST: cadd %d0, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0x0e]
cadd %d0, %d14, %d15, 255

# CHECK-INST: cadd %d0, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0x0f]
cadd %d0, %d15, %d0, -256

# CHECK-INST: cadd %d0, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0x0f]
cadd %d0, %d15, %d0, -129

# CHECK-INST: cadd %d0, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0x0f]
cadd %d0, %d15, %d0, -1

# CHECK-INST: cadd %d0, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0x0f]
cadd %d0, %d15, %d0, 0

# CHECK-INST: cadd %d0, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0x0f]
cadd %d0, %d15, %d0, 1

# CHECK-INST: cadd %d0, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0x0f]
cadd %d0, %d15, %d0, 128

# CHECK-INST: cadd %d0, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0x0f]
cadd %d0, %d15, %d0, 255

# CHECK-INST: cadd %d0, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0x0f]
cadd %d0, %d15, %d1, -256

# CHECK-INST: cadd %d0, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0x0f]
cadd %d0, %d15, %d1, -129

# CHECK-INST: cadd %d0, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0x0f]
cadd %d0, %d15, %d1, -1

# CHECK-INST: cadd %d0, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0x0f]
cadd %d0, %d15, %d1, 0

# CHECK-INST: cadd %d0, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0x0f]
cadd %d0, %d15, %d1, 1

# CHECK-INST: cadd %d0, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0x0f]
cadd %d0, %d15, %d1, 128

# CHECK-INST: cadd %d0, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0x0f]
cadd %d0, %d15, %d1, 255

# CHECK-INST: cadd %d0, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0x0f]
cadd %d0, %d15, %d14, -256

# CHECK-INST: cadd %d0, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0x0f]
cadd %d0, %d15, %d14, -129

# CHECK-INST: cadd %d0, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0x0f]
cadd %d0, %d15, %d14, -1

# CHECK-INST: cadd %d0, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0x0f]
cadd %d0, %d15, %d14, 0

# CHECK-INST: cadd %d0, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0x0f]
cadd %d0, %d15, %d14, 1

# CHECK-INST: cadd %d0, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0x0f]
cadd %d0, %d15, %d14, 128

# CHECK-INST: cadd %d0, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0x0f]
cadd %d0, %d15, %d14, 255

# CHECK-INST: cadd %d0, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0x0f]
cadd %d0, %d15, %d15, -256

# CHECK-INST: cadd %d0, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0x0f]
cadd %d0, %d15, %d15, -129

# CHECK-INST: cadd %d0, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0x0f]
cadd %d0, %d15, %d15, -1

# CHECK-INST: cadd %d0, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0x0f]
cadd %d0, %d15, %d15, 0

# CHECK-INST: cadd %d0, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0x0f]
cadd %d0, %d15, %d15, 1

# CHECK-INST: cadd %d0, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0x0f]
cadd %d0, %d15, %d15, 128

# CHECK-INST: cadd %d0, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0x0f]
cadd %d0, %d15, %d15, 255

# CHECK-INST: cadd %d1, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0x10]
cadd %d1, %d0, %d0, -256

# CHECK-INST: cadd %d1, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0x10]
cadd %d1, %d0, %d0, -129

# CHECK-INST: cadd %d1, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0x10]
cadd %d1, %d0, %d0, -1

# CHECK-INST: cadd %d1, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0x10]
cadd %d1, %d0, %d0, 0

# CHECK-INST: cadd %d1, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0x10]
cadd %d1, %d0, %d0, 1

# CHECK-INST: cadd %d1, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0x10]
cadd %d1, %d0, %d0, 128

# CHECK-INST: cadd %d1, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0x10]
cadd %d1, %d0, %d0, 255

# CHECK-INST: cadd %d1, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0x10]
cadd %d1, %d0, %d1, -256

# CHECK-INST: cadd %d1, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0x10]
cadd %d1, %d0, %d1, -129

# CHECK-INST: cadd %d1, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0x10]
cadd %d1, %d0, %d1, -1

# CHECK-INST: cadd %d1, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0x10]
cadd %d1, %d0, %d1, 0

# CHECK-INST: cadd %d1, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0x10]
cadd %d1, %d0, %d1, 1

# CHECK-INST: cadd %d1, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0x10]
cadd %d1, %d0, %d1, 128

# CHECK-INST: cadd %d1, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0x10]
cadd %d1, %d0, %d1, 255

# CHECK-INST: cadd %d1, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0x10]
cadd %d1, %d0, %d14, -256

# CHECK-INST: cadd %d1, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0x10]
cadd %d1, %d0, %d14, -129

# CHECK-INST: cadd %d1, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0x10]
cadd %d1, %d0, %d14, -1

# CHECK-INST: cadd %d1, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0x10]
cadd %d1, %d0, %d14, 0

# CHECK-INST: cadd %d1, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0x10]
cadd %d1, %d0, %d14, 1

# CHECK-INST: cadd %d1, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0x10]
cadd %d1, %d0, %d14, 128

# CHECK-INST: cadd %d1, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0x10]
cadd %d1, %d0, %d14, 255

# CHECK-INST: cadd %d1, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0x10]
cadd %d1, %d0, %d15, -256

# CHECK-INST: cadd %d1, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0x10]
cadd %d1, %d0, %d15, -129

# CHECK-INST: cadd %d1, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0x10]
cadd %d1, %d0, %d15, -1

# CHECK-INST: cadd %d1, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0x10]
cadd %d1, %d0, %d15, 0

# CHECK-INST: cadd %d1, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0x10]
cadd %d1, %d0, %d15, 1

# CHECK-INST: cadd %d1, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0x10]
cadd %d1, %d0, %d15, 128

# CHECK-INST: cadd %d1, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0x10]
cadd %d1, %d0, %d15, 255

# CHECK-INST: cadd %d1, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0x11]
cadd %d1, %d1, %d0, -256

# CHECK-INST: cadd %d1, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0x11]
cadd %d1, %d1, %d0, -129

# CHECK-INST: cadd %d1, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0x11]
cadd %d1, %d1, %d0, -1

# CHECK-INST: cadd %d1, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0x11]
cadd %d1, %d1, %d0, 0

# CHECK-INST: cadd %d1, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0x11]
cadd %d1, %d1, %d0, 1

# CHECK-INST: cadd %d1, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0x11]
cadd %d1, %d1, %d0, 128

# CHECK-INST: cadd %d1, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0x11]
cadd %d1, %d1, %d0, 255

# CHECK-INST: cadd %d1, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0x11]
cadd %d1, %d1, %d1, -256

# CHECK-INST: cadd %d1, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0x11]
cadd %d1, %d1, %d1, -129

# CHECK-INST: cadd %d1, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0x11]
cadd %d1, %d1, %d1, -1

# CHECK-INST: cadd %d1, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0x11]
cadd %d1, %d1, %d1, 0

# CHECK-INST: cadd %d1, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0x11]
cadd %d1, %d1, %d1, 1

# CHECK-INST: cadd %d1, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0x11]
cadd %d1, %d1, %d1, 128

# CHECK-INST: cadd %d1, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0x11]
cadd %d1, %d1, %d1, 255

# CHECK-INST: cadd %d1, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0x11]
cadd %d1, %d1, %d14, -256

# CHECK-INST: cadd %d1, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0x11]
cadd %d1, %d1, %d14, -129

# CHECK-INST: cadd %d1, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0x11]
cadd %d1, %d1, %d14, -1

# CHECK-INST: cadd %d1, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0x11]
cadd %d1, %d1, %d14, 0

# CHECK-INST: cadd %d1, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0x11]
cadd %d1, %d1, %d14, 1

# CHECK-INST: cadd %d1, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0x11]
cadd %d1, %d1, %d14, 128

# CHECK-INST: cadd %d1, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0x11]
cadd %d1, %d1, %d14, 255

# CHECK-INST: cadd %d1, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0x11]
cadd %d1, %d1, %d15, -256

# CHECK-INST: cadd %d1, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0x11]
cadd %d1, %d1, %d15, -129

# CHECK-INST: cadd %d1, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0x11]
cadd %d1, %d1, %d15, -1

# CHECK-INST: cadd %d1, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0x11]
cadd %d1, %d1, %d15, 0

# CHECK-INST: cadd %d1, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0x11]
cadd %d1, %d1, %d15, 1

# CHECK-INST: cadd %d1, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0x11]
cadd %d1, %d1, %d15, 128

# CHECK-INST: cadd %d1, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0x11]
cadd %d1, %d1, %d15, 255

# CHECK-INST: cadd %d1, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0x1e]
cadd %d1, %d14, %d0, -256

# CHECK-INST: cadd %d1, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0x1e]
cadd %d1, %d14, %d0, -129

# CHECK-INST: cadd %d1, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0x1e]
cadd %d1, %d14, %d0, -1

# CHECK-INST: cadd %d1, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0x1e]
cadd %d1, %d14, %d0, 0

# CHECK-INST: cadd %d1, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0x1e]
cadd %d1, %d14, %d0, 1

# CHECK-INST: cadd %d1, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0x1e]
cadd %d1, %d14, %d0, 128

# CHECK-INST: cadd %d1, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0x1e]
cadd %d1, %d14, %d0, 255

# CHECK-INST: cadd %d1, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0x1e]
cadd %d1, %d14, %d1, -256

# CHECK-INST: cadd %d1, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0x1e]
cadd %d1, %d14, %d1, -129

# CHECK-INST: cadd %d1, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0x1e]
cadd %d1, %d14, %d1, -1

# CHECK-INST: cadd %d1, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0x1e]
cadd %d1, %d14, %d1, 0

# CHECK-INST: cadd %d1, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0x1e]
cadd %d1, %d14, %d1, 1

# CHECK-INST: cadd %d1, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0x1e]
cadd %d1, %d14, %d1, 128

# CHECK-INST: cadd %d1, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0x1e]
cadd %d1, %d14, %d1, 255

# CHECK-INST: cadd %d1, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0x1e]
cadd %d1, %d14, %d14, -256

# CHECK-INST: cadd %d1, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0x1e]
cadd %d1, %d14, %d14, -129

# CHECK-INST: cadd %d1, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0x1e]
cadd %d1, %d14, %d14, -1

# CHECK-INST: cadd %d1, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0x1e]
cadd %d1, %d14, %d14, 0

# CHECK-INST: cadd %d1, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0x1e]
cadd %d1, %d14, %d14, 1

# CHECK-INST: cadd %d1, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0x1e]
cadd %d1, %d14, %d14, 128

# CHECK-INST: cadd %d1, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0x1e]
cadd %d1, %d14, %d14, 255

# CHECK-INST: cadd %d1, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0x1e]
cadd %d1, %d14, %d15, -256

# CHECK-INST: cadd %d1, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0x1e]
cadd %d1, %d14, %d15, -129

# CHECK-INST: cadd %d1, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0x1e]
cadd %d1, %d14, %d15, -1

# CHECK-INST: cadd %d1, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0x1e]
cadd %d1, %d14, %d15, 0

# CHECK-INST: cadd %d1, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0x1e]
cadd %d1, %d14, %d15, 1

# CHECK-INST: cadd %d1, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0x1e]
cadd %d1, %d14, %d15, 128

# CHECK-INST: cadd %d1, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0x1e]
cadd %d1, %d14, %d15, 255

# CHECK-INST: cadd %d1, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0x1f]
cadd %d1, %d15, %d0, -256

# CHECK-INST: cadd %d1, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0x1f]
cadd %d1, %d15, %d0, -129

# CHECK-INST: cadd %d1, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0x1f]
cadd %d1, %d15, %d0, -1

# CHECK-INST: cadd %d1, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0x1f]
cadd %d1, %d15, %d0, 0

# CHECK-INST: cadd %d1, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0x1f]
cadd %d1, %d15, %d0, 1

# CHECK-INST: cadd %d1, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0x1f]
cadd %d1, %d15, %d0, 128

# CHECK-INST: cadd %d1, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0x1f]
cadd %d1, %d15, %d0, 255

# CHECK-INST: cadd %d1, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0x1f]
cadd %d1, %d15, %d1, -256

# CHECK-INST: cadd %d1, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0x1f]
cadd %d1, %d15, %d1, -129

# CHECK-INST: cadd %d1, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0x1f]
cadd %d1, %d15, %d1, -1

# CHECK-INST: cadd %d1, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0x1f]
cadd %d1, %d15, %d1, 0

# CHECK-INST: cadd %d1, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0x1f]
cadd %d1, %d15, %d1, 1

# CHECK-INST: cadd %d1, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0x1f]
cadd %d1, %d15, %d1, 128

# CHECK-INST: cadd %d1, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0x1f]
cadd %d1, %d15, %d1, 255

# CHECK-INST: cadd %d1, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0x1f]
cadd %d1, %d15, %d14, -256

# CHECK-INST: cadd %d1, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0x1f]
cadd %d1, %d15, %d14, -129

# CHECK-INST: cadd %d1, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0x1f]
cadd %d1, %d15, %d14, -1

# CHECK-INST: cadd %d1, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0x1f]
cadd %d1, %d15, %d14, 0

# CHECK-INST: cadd %d1, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0x1f]
cadd %d1, %d15, %d14, 1

# CHECK-INST: cadd %d1, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0x1f]
cadd %d1, %d15, %d14, 128

# CHECK-INST: cadd %d1, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0x1f]
cadd %d1, %d15, %d14, 255

# CHECK-INST: cadd %d1, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0x1f]
cadd %d1, %d15, %d15, -256

# CHECK-INST: cadd %d1, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0x1f]
cadd %d1, %d15, %d15, -129

# CHECK-INST: cadd %d1, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0x1f]
cadd %d1, %d15, %d15, -1

# CHECK-INST: cadd %d1, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0x1f]
cadd %d1, %d15, %d15, 0

# CHECK-INST: cadd %d1, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0x1f]
cadd %d1, %d15, %d15, 1

# CHECK-INST: cadd %d1, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0x1f]
cadd %d1, %d15, %d15, 128

# CHECK-INST: cadd %d1, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0x1f]
cadd %d1, %d15, %d15, 255

# CHECK-INST: cadd %d14, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0xe0]
cadd %d14, %d0, %d0, -256

# CHECK-INST: cadd %d14, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0xe0]
cadd %d14, %d0, %d0, -129

# CHECK-INST: cadd %d14, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0xe0]
cadd %d14, %d0, %d0, -1

# CHECK-INST: cadd %d14, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0xe0]
cadd %d14, %d0, %d0, 0

# CHECK-INST: cadd %d14, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0xe0]
cadd %d14, %d0, %d0, 1

# CHECK-INST: cadd %d14, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0xe0]
cadd %d14, %d0, %d0, 128

# CHECK-INST: cadd %d14, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0xe0]
cadd %d14, %d0, %d0, 255

# CHECK-INST: cadd %d14, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0xe0]
cadd %d14, %d0, %d1, -256

# CHECK-INST: cadd %d14, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0xe0]
cadd %d14, %d0, %d1, -129

# CHECK-INST: cadd %d14, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0xe0]
cadd %d14, %d0, %d1, -1

# CHECK-INST: cadd %d14, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0xe0]
cadd %d14, %d0, %d1, 0

# CHECK-INST: cadd %d14, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0xe0]
cadd %d14, %d0, %d1, 1

# CHECK-INST: cadd %d14, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0xe0]
cadd %d14, %d0, %d1, 128

# CHECK-INST: cadd %d14, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0xe0]
cadd %d14, %d0, %d1, 255

# CHECK-INST: cadd %d14, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0xe0]
cadd %d14, %d0, %d14, -256

# CHECK-INST: cadd %d14, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0xe0]
cadd %d14, %d0, %d14, -129

# CHECK-INST: cadd %d14, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0xe0]
cadd %d14, %d0, %d14, -1

# CHECK-INST: cadd %d14, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0xe0]
cadd %d14, %d0, %d14, 0

# CHECK-INST: cadd %d14, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0xe0]
cadd %d14, %d0, %d14, 1

# CHECK-INST: cadd %d14, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0xe0]
cadd %d14, %d0, %d14, 128

# CHECK-INST: cadd %d14, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0xe0]
cadd %d14, %d0, %d14, 255

# CHECK-INST: cadd %d14, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0xe0]
cadd %d14, %d0, %d15, -256

# CHECK-INST: cadd %d14, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0xe0]
cadd %d14, %d0, %d15, -129

# CHECK-INST: cadd %d14, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0xe0]
cadd %d14, %d0, %d15, -1

# CHECK-INST: cadd %d14, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0xe0]
cadd %d14, %d0, %d15, 0

# CHECK-INST: cadd %d14, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0xe0]
cadd %d14, %d0, %d15, 1

# CHECK-INST: cadd %d14, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0xe0]
cadd %d14, %d0, %d15, 128

# CHECK-INST: cadd %d14, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0xe0]
cadd %d14, %d0, %d15, 255

# CHECK-INST: cadd %d14, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0xe1]
cadd %d14, %d1, %d0, -256

# CHECK-INST: cadd %d14, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0xe1]
cadd %d14, %d1, %d0, -129

# CHECK-INST: cadd %d14, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0xe1]
cadd %d14, %d1, %d0, -1

# CHECK-INST: cadd %d14, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0xe1]
cadd %d14, %d1, %d0, 0

# CHECK-INST: cadd %d14, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0xe1]
cadd %d14, %d1, %d0, 1

# CHECK-INST: cadd %d14, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0xe1]
cadd %d14, %d1, %d0, 128

# CHECK-INST: cadd %d14, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0xe1]
cadd %d14, %d1, %d0, 255

# CHECK-INST: cadd %d14, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0xe1]
cadd %d14, %d1, %d1, -256

# CHECK-INST: cadd %d14, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0xe1]
cadd %d14, %d1, %d1, -129

# CHECK-INST: cadd %d14, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0xe1]
cadd %d14, %d1, %d1, -1

# CHECK-INST: cadd %d14, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0xe1]
cadd %d14, %d1, %d1, 0

# CHECK-INST: cadd %d14, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0xe1]
cadd %d14, %d1, %d1, 1

# CHECK-INST: cadd %d14, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0xe1]
cadd %d14, %d1, %d1, 128

# CHECK-INST: cadd %d14, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0xe1]
cadd %d14, %d1, %d1, 255

# CHECK-INST: cadd %d14, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0xe1]
cadd %d14, %d1, %d14, -256

# CHECK-INST: cadd %d14, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0xe1]
cadd %d14, %d1, %d14, -129

# CHECK-INST: cadd %d14, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0xe1]
cadd %d14, %d1, %d14, -1

# CHECK-INST: cadd %d14, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0xe1]
cadd %d14, %d1, %d14, 0

# CHECK-INST: cadd %d14, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0xe1]
cadd %d14, %d1, %d14, 1

# CHECK-INST: cadd %d14, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0xe1]
cadd %d14, %d1, %d14, 128

# CHECK-INST: cadd %d14, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0xe1]
cadd %d14, %d1, %d14, 255

# CHECK-INST: cadd %d14, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0xe1]
cadd %d14, %d1, %d15, -256

# CHECK-INST: cadd %d14, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0xe1]
cadd %d14, %d1, %d15, -129

# CHECK-INST: cadd %d14, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0xe1]
cadd %d14, %d1, %d15, -1

# CHECK-INST: cadd %d14, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0xe1]
cadd %d14, %d1, %d15, 0

# CHECK-INST: cadd %d14, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0xe1]
cadd %d14, %d1, %d15, 1

# CHECK-INST: cadd %d14, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0xe1]
cadd %d14, %d1, %d15, 128

# CHECK-INST: cadd %d14, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0xe1]
cadd %d14, %d1, %d15, 255

# CHECK-INST: cadd %d14, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0xee]
cadd %d14, %d14, %d0, -256

# CHECK-INST: cadd %d14, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0xee]
cadd %d14, %d14, %d0, -129

# CHECK-INST: cadd %d14, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0xee]
cadd %d14, %d14, %d0, -1

# CHECK-INST: cadd %d14, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0xee]
cadd %d14, %d14, %d0, 0

# CHECK-INST: cadd %d14, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0xee]
cadd %d14, %d14, %d0, 1

# CHECK-INST: cadd %d14, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0xee]
cadd %d14, %d14, %d0, 128

# CHECK-INST: cadd %d14, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0xee]
cadd %d14, %d14, %d0, 255

# CHECK-INST: cadd %d14, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0xee]
cadd %d14, %d14, %d1, -256

# CHECK-INST: cadd %d14, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0xee]
cadd %d14, %d14, %d1, -129

# CHECK-INST: cadd %d14, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0xee]
cadd %d14, %d14, %d1, -1

# CHECK-INST: cadd %d14, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0xee]
cadd %d14, %d14, %d1, 0

# CHECK-INST: cadd %d14, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0xee]
cadd %d14, %d14, %d1, 1

# CHECK-INST: cadd %d14, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0xee]
cadd %d14, %d14, %d1, 128

# CHECK-INST: cadd %d14, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0xee]
cadd %d14, %d14, %d1, 255

# CHECK-INST: cadd %d14, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0xee]
cadd %d14, %d14, %d14, -256

# CHECK-INST: cadd %d14, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0xee]
cadd %d14, %d14, %d14, -129

# CHECK-INST: cadd %d14, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0xee]
cadd %d14, %d14, %d14, -1

# CHECK-INST: cadd %d14, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0xee]
cadd %d14, %d14, %d14, 0

# CHECK-INST: cadd %d14, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0xee]
cadd %d14, %d14, %d14, 1

# CHECK-INST: cadd %d14, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0xee]
cadd %d14, %d14, %d14, 128

# CHECK-INST: cadd %d14, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0xee]
cadd %d14, %d14, %d14, 255

# CHECK-INST: cadd %d14, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0xee]
cadd %d14, %d14, %d15, -256

# CHECK-INST: cadd %d14, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0xee]
cadd %d14, %d14, %d15, -129

# CHECK-INST: cadd %d14, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0xee]
cadd %d14, %d14, %d15, -1

# CHECK-INST: cadd %d14, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0xee]
cadd %d14, %d14, %d15, 0

# CHECK-INST: cadd %d14, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0xee]
cadd %d14, %d14, %d15, 1

# CHECK-INST: cadd %d14, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0xee]
cadd %d14, %d14, %d15, 128

# CHECK-INST: cadd %d14, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0xee]
cadd %d14, %d14, %d15, 255

# CHECK-INST: cadd %d14, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0xef]
cadd %d14, %d15, %d0, -256

# CHECK-INST: cadd %d14, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0xef]
cadd %d14, %d15, %d0, -129

# CHECK-INST: cadd %d14, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0xef]
cadd %d14, %d15, %d0, -1

# CHECK-INST: cadd %d14, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0xef]
cadd %d14, %d15, %d0, 0

# CHECK-INST: cadd %d14, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0xef]
cadd %d14, %d15, %d0, 1

# CHECK-INST: cadd %d14, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0xef]
cadd %d14, %d15, %d0, 128

# CHECK-INST: cadd %d14, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0xef]
cadd %d14, %d15, %d0, 255

# CHECK-INST: cadd %d14, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0xef]
cadd %d14, %d15, %d1, -256

# CHECK-INST: cadd %d14, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0xef]
cadd %d14, %d15, %d1, -129

# CHECK-INST: cadd %d14, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0xef]
cadd %d14, %d15, %d1, -1

# CHECK-INST: cadd %d14, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0xef]
cadd %d14, %d15, %d1, 0

# CHECK-INST: cadd %d14, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0xef]
cadd %d14, %d15, %d1, 1

# CHECK-INST: cadd %d14, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0xef]
cadd %d14, %d15, %d1, 128

# CHECK-INST: cadd %d14, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0xef]
cadd %d14, %d15, %d1, 255

# CHECK-INST: cadd %d14, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0xef]
cadd %d14, %d15, %d14, -256

# CHECK-INST: cadd %d14, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0xef]
cadd %d14, %d15, %d14, -129

# CHECK-INST: cadd %d14, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0xef]
cadd %d14, %d15, %d14, -1

# CHECK-INST: cadd %d14, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0xef]
cadd %d14, %d15, %d14, 0

# CHECK-INST: cadd %d14, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0xef]
cadd %d14, %d15, %d14, 1

# CHECK-INST: cadd %d14, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0xef]
cadd %d14, %d15, %d14, 128

# CHECK-INST: cadd %d14, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0xef]
cadd %d14, %d15, %d14, 255

# CHECK-INST: cadd %d14, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0xef]
cadd %d14, %d15, %d15, -256

# CHECK-INST: cadd %d14, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0xef]
cadd %d14, %d15, %d15, -129

# CHECK-INST: cadd %d14, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0xef]
cadd %d14, %d15, %d15, -1

# CHECK-INST: cadd %d14, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0xef]
cadd %d14, %d15, %d15, 0

# CHECK-INST: cadd %d14, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0xef]
cadd %d14, %d15, %d15, 1

# CHECK-INST: cadd %d14, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0xef]
cadd %d14, %d15, %d15, 128

# CHECK-INST: cadd %d14, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0xef]
cadd %d14, %d15, %d15, 255

# CHECK-INST: cadd %d15, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0xf0]
cadd %d15, %d0, %d0, -256

# CHECK-INST: cadd %d15, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0xf0]
cadd %d15, %d0, %d0, -129

# CHECK-INST: cadd %d15, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0xf0]
cadd %d15, %d0, %d0, -1

# CHECK-INST: cadd %d15, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0xf0]
cadd %d15, %d0, %d0, 0

# CHECK-INST: cadd %d15, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0xf0]
cadd %d15, %d0, %d0, 1

# CHECK-INST: cadd %d15, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0xf0]
cadd %d15, %d0, %d0, 128

# CHECK-INST: cadd %d15, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0xf0]
cadd %d15, %d0, %d0, 255

# CHECK-INST: cadd %d15, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0xf0]
cadd %d15, %d0, %d1, -256

# CHECK-INST: cadd %d15, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0xf0]
cadd %d15, %d0, %d1, -129

# CHECK-INST: cadd %d15, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0xf0]
cadd %d15, %d0, %d1, -1

# CHECK-INST: cadd %d15, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0xf0]
cadd %d15, %d0, %d1, 0

# CHECK-INST: cadd %d15, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0xf0]
cadd %d15, %d0, %d1, 1

# CHECK-INST: cadd %d15, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0xf0]
cadd %d15, %d0, %d1, 128

# CHECK-INST: cadd %d15, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0xf0]
cadd %d15, %d0, %d1, 255

# CHECK-INST: cadd %d15, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0xf0]
cadd %d15, %d0, %d14, -256

# CHECK-INST: cadd %d15, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0xf0]
cadd %d15, %d0, %d14, -129

# CHECK-INST: cadd %d15, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0xf0]
cadd %d15, %d0, %d14, -1

# CHECK-INST: cadd %d15, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0xf0]
cadd %d15, %d0, %d14, 0

# CHECK-INST: cadd %d15, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0xf0]
cadd %d15, %d0, %d14, 1

# CHECK-INST: cadd %d15, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0xf0]
cadd %d15, %d0, %d14, 128

# CHECK-INST: cadd %d15, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0xf0]
cadd %d15, %d0, %d14, 255

# CHECK-INST: cadd %d15, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0xf0]
cadd %d15, %d0, %d15, -256

# CHECK-INST: cadd %d15, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0xf0]
cadd %d15, %d0, %d15, -129

# CHECK-INST: cadd %d15, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0xf0]
cadd %d15, %d0, %d15, -1

# CHECK-INST: cadd %d15, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0xf0]
cadd %d15, %d0, %d15, 0

# CHECK-INST: cadd %d15, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0xf0]
cadd %d15, %d0, %d15, 1

# CHECK-INST: cadd %d15, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0xf0]
cadd %d15, %d0, %d15, 128

# CHECK-INST: cadd %d15, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0xf0]
cadd %d15, %d0, %d15, 255

# CHECK-INST: cadd %d15, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0xf1]
cadd %d15, %d1, %d0, -256

# CHECK-INST: cadd %d15, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0xf1]
cadd %d15, %d1, %d0, -129

# CHECK-INST: cadd %d15, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0xf1]
cadd %d15, %d1, %d0, -1

# CHECK-INST: cadd %d15, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0xf1]
cadd %d15, %d1, %d0, 0

# CHECK-INST: cadd %d15, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0xf1]
cadd %d15, %d1, %d0, 1

# CHECK-INST: cadd %d15, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0xf1]
cadd %d15, %d1, %d0, 128

# CHECK-INST: cadd %d15, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0xf1]
cadd %d15, %d1, %d0, 255

# CHECK-INST: cadd %d15, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0xf1]
cadd %d15, %d1, %d1, -256

# CHECK-INST: cadd %d15, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0xf1]
cadd %d15, %d1, %d1, -129

# CHECK-INST: cadd %d15, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0xf1]
cadd %d15, %d1, %d1, -1

# CHECK-INST: cadd %d15, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0xf1]
cadd %d15, %d1, %d1, 0

# CHECK-INST: cadd %d15, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0xf1]
cadd %d15, %d1, %d1, 1

# CHECK-INST: cadd %d15, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0xf1]
cadd %d15, %d1, %d1, 128

# CHECK-INST: cadd %d15, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0xf1]
cadd %d15, %d1, %d1, 255

# CHECK-INST: cadd %d15, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0xf1]
cadd %d15, %d1, %d14, -256

# CHECK-INST: cadd %d15, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0xf1]
cadd %d15, %d1, %d14, -129

# CHECK-INST: cadd %d15, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0xf1]
cadd %d15, %d1, %d14, -1

# CHECK-INST: cadd %d15, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0xf1]
cadd %d15, %d1, %d14, 0

# CHECK-INST: cadd %d15, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0xf1]
cadd %d15, %d1, %d14, 1

# CHECK-INST: cadd %d15, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0xf1]
cadd %d15, %d1, %d14, 128

# CHECK-INST: cadd %d15, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0xf1]
cadd %d15, %d1, %d14, 255

# CHECK-INST: cadd %d15, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0xf1]
cadd %d15, %d1, %d15, -256

# CHECK-INST: cadd %d15, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0xf1]
cadd %d15, %d1, %d15, -129

# CHECK-INST: cadd %d15, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0xf1]
cadd %d15, %d1, %d15, -1

# CHECK-INST: cadd %d15, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0xf1]
cadd %d15, %d1, %d15, 0

# CHECK-INST: cadd %d15, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0xf1]
cadd %d15, %d1, %d15, 1

# CHECK-INST: cadd %d15, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0xf1]
cadd %d15, %d1, %d15, 128

# CHECK-INST: cadd %d15, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0xf1]
cadd %d15, %d1, %d15, 255

# CHECK-INST: cadd %d15, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0xfe]
cadd %d15, %d14, %d0, -256

# CHECK-INST: cadd %d15, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0xfe]
cadd %d15, %d14, %d0, -129

# CHECK-INST: cadd %d15, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0xfe]
cadd %d15, %d14, %d0, -1

# CHECK-INST: cadd %d15, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0xfe]
cadd %d15, %d14, %d0, 0

# CHECK-INST: cadd %d15, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0xfe]
cadd %d15, %d14, %d0, 1

# CHECK-INST: cadd %d15, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0xfe]
cadd %d15, %d14, %d0, 128

# CHECK-INST: cadd %d15, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0xfe]
cadd %d15, %d14, %d0, 255

# CHECK-INST: cadd %d15, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0xfe]
cadd %d15, %d14, %d1, -256

# CHECK-INST: cadd %d15, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0xfe]
cadd %d15, %d14, %d1, -129

# CHECK-INST: cadd %d15, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0xfe]
cadd %d15, %d14, %d1, -1

# CHECK-INST: cadd %d15, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0xfe]
cadd %d15, %d14, %d1, 0

# CHECK-INST: cadd %d15, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0xfe]
cadd %d15, %d14, %d1, 1

# CHECK-INST: cadd %d15, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0xfe]
cadd %d15, %d14, %d1, 128

# CHECK-INST: cadd %d15, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0xfe]
cadd %d15, %d14, %d1, 255

# CHECK-INST: cadd %d15, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0xfe]
cadd %d15, %d14, %d14, -256

# CHECK-INST: cadd %d15, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0xfe]
cadd %d15, %d14, %d14, -129

# CHECK-INST: cadd %d15, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0xfe]
cadd %d15, %d14, %d14, -1

# CHECK-INST: cadd %d15, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0xfe]
cadd %d15, %d14, %d14, 0

# CHECK-INST: cadd %d15, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0xfe]
cadd %d15, %d14, %d14, 1

# CHECK-INST: cadd %d15, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0xfe]
cadd %d15, %d14, %d14, 128

# CHECK-INST: cadd %d15, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0xfe]
cadd %d15, %d14, %d14, 255

# CHECK-INST: cadd %d15, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0xfe]
cadd %d15, %d14, %d15, -256

# CHECK-INST: cadd %d15, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0xfe]
cadd %d15, %d14, %d15, -129

# CHECK-INST: cadd %d15, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0xfe]
cadd %d15, %d14, %d15, -1

# CHECK-INST: cadd %d15, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0xfe]
cadd %d15, %d14, %d15, 0

# CHECK-INST: cadd %d15, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0xfe]
cadd %d15, %d14, %d15, 1

# CHECK-INST: cadd %d15, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0xfe]
cadd %d15, %d14, %d15, 128

# CHECK-INST: cadd %d15, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0xfe]
cadd %d15, %d14, %d15, 255

# CHECK-INST: cadd %d15, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x10,0xff]
cadd %d15, %d15, %d0, -256

# CHECK-INST: cadd %d15, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x17,0xff]
cadd %d15, %d15, %d0, -129

# CHECK-INST: cadd %d15, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x1f,0xff]
cadd %d15, %d15, %d0, -1

# CHECK-INST: cadd %d15, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x00,0xff]
cadd %d15, %d15, %d0, 0

# CHECK-INST: cadd %d15, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x00,0xff]
cadd %d15, %d15, %d0, 1

# CHECK-INST: cadd %d15, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x08,0xff]
cadd %d15, %d15, %d0, 128

# CHECK-INST: cadd %d15, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x0f,0xff]
cadd %d15, %d15, %d0, 255

# CHECK-INST: cadd %d15, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x10,0xff]
cadd %d15, %d15, %d1, -256

# CHECK-INST: cadd %d15, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x17,0xff]
cadd %d15, %d15, %d1, -129

# CHECK-INST: cadd %d15, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x1f,0xff]
cadd %d15, %d15, %d1, -1

# CHECK-INST: cadd %d15, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x00,0xff]
cadd %d15, %d15, %d1, 0

# CHECK-INST: cadd %d15, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x00,0xff]
cadd %d15, %d15, %d1, 1

# CHECK-INST: cadd %d15, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x08,0xff]
cadd %d15, %d15, %d1, 128

# CHECK-INST: cadd %d15, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x0f,0xff]
cadd %d15, %d15, %d1, 255

# CHECK-INST: cadd %d15, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x10,0xff]
cadd %d15, %d15, %d14, -256

# CHECK-INST: cadd %d15, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x17,0xff]
cadd %d15, %d15, %d14, -129

# CHECK-INST: cadd %d15, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x1f,0xff]
cadd %d15, %d15, %d14, -1

# CHECK-INST: cadd %d15, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x00,0xff]
cadd %d15, %d15, %d14, 0

# CHECK-INST: cadd %d15, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x00,0xff]
cadd %d15, %d15, %d14, 1

# CHECK-INST: cadd %d15, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x08,0xff]
cadd %d15, %d15, %d14, 128

# CHECK-INST: cadd %d15, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x0f,0xff]
cadd %d15, %d15, %d14, 255

# CHECK-INST: cadd %d15, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x10,0xff]
cadd %d15, %d15, %d15, -256

# CHECK-INST: cadd %d15, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x17,0xff]
cadd %d15, %d15, %d15, -129

# CHECK-INST: cadd %d15, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x1f,0xff]
cadd %d15, %d15, %d15, -1

# CHECK-INST: cadd %d15, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x00,0xff]
cadd %d15, %d15, %d15, 0

# CHECK-INST: cadd %d15, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x00,0xff]
cadd %d15, %d15, %d15, 1

# CHECK-INST: cadd %d15, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x08,0xff]
cadd %d15, %d15, %d15, 128

# CHECK-INST: cadd %d15, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x0f,0xff]
cadd %d15, %d15, %d15, 255

# CHECK-INST: caddn %d0, %d15, -8
# CHECK: encoding: [0xca,0x80]
caddn %d0, %d15, -8

# CHECK-INST: caddn %d0, %d15, -1
# CHECK: encoding: [0xca,0xf0]
caddn %d0, %d15, -1

# CHECK-INST: caddn %d0, %d15, 0
# CHECK: encoding: [0xca,0x00]
caddn %d0, %d15, 0

# CHECK-INST: caddn %d0, %d15, 1
# CHECK: encoding: [0xca,0x10]
caddn %d0, %d15, 1

# CHECK-INST: caddn %d0, %d15, 7
# CHECK: encoding: [0xca,0x70]
caddn %d0, %d15, 7

# CHECK-INST: caddn %d1, %d15, -8
# CHECK: encoding: [0xca,0x81]
caddn %d1, %d15, -8

# CHECK-INST: caddn %d1, %d15, -1
# CHECK: encoding: [0xca,0xf1]
caddn %d1, %d15, -1

# CHECK-INST: caddn %d1, %d15, 0
# CHECK: encoding: [0xca,0x01]
caddn %d1, %d15, 0

# CHECK-INST: caddn %d1, %d15, 1
# CHECK: encoding: [0xca,0x11]
caddn %d1, %d15, 1

# CHECK-INST: caddn %d1, %d15, 7
# CHECK: encoding: [0xca,0x71]
caddn %d1, %d15, 7

# CHECK-INST: caddn %d14, %d15, -8
# CHECK: encoding: [0xca,0x8e]
caddn %d14, %d15, -8

# CHECK-INST: caddn %d14, %d15, -1
# CHECK: encoding: [0xca,0xfe]
caddn %d14, %d15, -1

# CHECK-INST: caddn %d14, %d15, 0
# CHECK: encoding: [0xca,0x0e]
caddn %d14, %d15, 0

# CHECK-INST: caddn %d14, %d15, 1
# CHECK: encoding: [0xca,0x1e]
caddn %d14, %d15, 1

# CHECK-INST: caddn %d14, %d15, 7
# CHECK: encoding: [0xca,0x7e]
caddn %d14, %d15, 7

# CHECK-INST: caddn %d15, %d15, -8
# CHECK: encoding: [0xca,0x8f]
caddn %d15, %d15, -8

# CHECK-INST: caddn %d15, %d15, -1
# CHECK: encoding: [0xca,0xff]
caddn %d15, %d15, -1

# CHECK-INST: caddn %d15, %d15, 0
# CHECK: encoding: [0xca,0x0f]
caddn %d15, %d15, 0

# CHECK-INST: caddn %d15, %d15, 1
# CHECK: encoding: [0xca,0x1f]
caddn %d15, %d15, 1

# CHECK-INST: caddn %d15, %d15, 7
# CHECK: encoding: [0xca,0x7f]
caddn %d15, %d15, 7

# CHECK-INST: caddn %d0, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0x00]
caddn %d0, %d0, %d0, %d0

# CHECK-INST: caddn %d0, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0x00]
caddn %d0, %d0, %d0, %d1

# CHECK-INST: caddn %d0, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0x00]
caddn %d0, %d0, %d0, %d14

# CHECK-INST: caddn %d0, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0x00]
caddn %d0, %d0, %d0, %d15

# CHECK-INST: caddn %d0, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0x00]
caddn %d0, %d0, %d1, %d0

# CHECK-INST: caddn %d0, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0x00]
caddn %d0, %d0, %d1, %d1

# CHECK-INST: caddn %d0, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0x00]
caddn %d0, %d0, %d1, %d14

# CHECK-INST: caddn %d0, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0x00]
caddn %d0, %d0, %d1, %d15

# CHECK-INST: caddn %d0, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0x00]
caddn %d0, %d0, %d14, %d0

# CHECK-INST: caddn %d0, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0x00]
caddn %d0, %d0, %d14, %d1

# CHECK-INST: caddn %d0, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0x00]
caddn %d0, %d0, %d14, %d14

# CHECK-INST: caddn %d0, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0x00]
caddn %d0, %d0, %d14, %d15

# CHECK-INST: caddn %d0, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0x00]
caddn %d0, %d0, %d15, %d0

# CHECK-INST: caddn %d0, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0x00]
caddn %d0, %d0, %d15, %d1

# CHECK-INST: caddn %d0, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0x00]
caddn %d0, %d0, %d15, %d14

# CHECK-INST: caddn %d0, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0x00]
caddn %d0, %d0, %d15, %d15

# CHECK-INST: caddn %d0, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0x01]
caddn %d0, %d1, %d0, %d0

# CHECK-INST: caddn %d0, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0x01]
caddn %d0, %d1, %d0, %d1

# CHECK-INST: caddn %d0, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0x01]
caddn %d0, %d1, %d0, %d14

# CHECK-INST: caddn %d0, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0x01]
caddn %d0, %d1, %d0, %d15

# CHECK-INST: caddn %d0, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0x01]
caddn %d0, %d1, %d1, %d0

# CHECK-INST: caddn %d0, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0x01]
caddn %d0, %d1, %d1, %d1

# CHECK-INST: caddn %d0, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0x01]
caddn %d0, %d1, %d1, %d14

# CHECK-INST: caddn %d0, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0x01]
caddn %d0, %d1, %d1, %d15

# CHECK-INST: caddn %d0, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0x01]
caddn %d0, %d1, %d14, %d0

# CHECK-INST: caddn %d0, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0x01]
caddn %d0, %d1, %d14, %d1

# CHECK-INST: caddn %d0, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0x01]
caddn %d0, %d1, %d14, %d14

# CHECK-INST: caddn %d0, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0x01]
caddn %d0, %d1, %d14, %d15

# CHECK-INST: caddn %d0, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0x01]
caddn %d0, %d1, %d15, %d0

# CHECK-INST: caddn %d0, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0x01]
caddn %d0, %d1, %d15, %d1

# CHECK-INST: caddn %d0, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0x01]
caddn %d0, %d1, %d15, %d14

# CHECK-INST: caddn %d0, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0x01]
caddn %d0, %d1, %d15, %d15

# CHECK-INST: caddn %d0, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0x0e]
caddn %d0, %d14, %d0, %d0

# CHECK-INST: caddn %d0, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0x0e]
caddn %d0, %d14, %d0, %d1

# CHECK-INST: caddn %d0, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0x0e]
caddn %d0, %d14, %d0, %d14

# CHECK-INST: caddn %d0, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0x0e]
caddn %d0, %d14, %d0, %d15

# CHECK-INST: caddn %d0, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0x0e]
caddn %d0, %d14, %d1, %d0

# CHECK-INST: caddn %d0, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0x0e]
caddn %d0, %d14, %d1, %d1

# CHECK-INST: caddn %d0, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0x0e]
caddn %d0, %d14, %d1, %d14

# CHECK-INST: caddn %d0, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0x0e]
caddn %d0, %d14, %d1, %d15

# CHECK-INST: caddn %d0, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0x0e]
caddn %d0, %d14, %d14, %d0

# CHECK-INST: caddn %d0, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0x0e]
caddn %d0, %d14, %d14, %d1

# CHECK-INST: caddn %d0, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0x0e]
caddn %d0, %d14, %d14, %d14

# CHECK-INST: caddn %d0, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0x0e]
caddn %d0, %d14, %d14, %d15

# CHECK-INST: caddn %d0, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0x0e]
caddn %d0, %d14, %d15, %d0

# CHECK-INST: caddn %d0, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0x0e]
caddn %d0, %d14, %d15, %d1

# CHECK-INST: caddn %d0, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0x0e]
caddn %d0, %d14, %d15, %d14

# CHECK-INST: caddn %d0, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0x0e]
caddn %d0, %d14, %d15, %d15

# CHECK-INST: caddn %d0, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0x0f]
caddn %d0, %d15, %d0, %d0

# CHECK-INST: caddn %d0, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0x0f]
caddn %d0, %d15, %d0, %d1

# CHECK-INST: caddn %d0, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0x0f]
caddn %d0, %d15, %d0, %d14

# CHECK-INST: caddn %d0, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0x0f]
caddn %d0, %d15, %d0, %d15

# CHECK-INST: caddn %d0, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0x0f]
caddn %d0, %d15, %d1, %d0

# CHECK-INST: caddn %d0, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0x0f]
caddn %d0, %d15, %d1, %d1

# CHECK-INST: caddn %d0, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0x0f]
caddn %d0, %d15, %d1, %d14

# CHECK-INST: caddn %d0, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0x0f]
caddn %d0, %d15, %d1, %d15

# CHECK-INST: caddn %d0, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0x0f]
caddn %d0, %d15, %d14, %d0

# CHECK-INST: caddn %d0, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0x0f]
caddn %d0, %d15, %d14, %d1

# CHECK-INST: caddn %d0, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0x0f]
caddn %d0, %d15, %d14, %d14

# CHECK-INST: caddn %d0, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0x0f]
caddn %d0, %d15, %d14, %d15

# CHECK-INST: caddn %d0, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0x0f]
caddn %d0, %d15, %d15, %d0

# CHECK-INST: caddn %d0, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0x0f]
caddn %d0, %d15, %d15, %d1

# CHECK-INST: caddn %d0, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0x0f]
caddn %d0, %d15, %d15, %d14

# CHECK-INST: caddn %d0, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0x0f]
caddn %d0, %d15, %d15, %d15

# CHECK-INST: caddn %d1, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0x10]
caddn %d1, %d0, %d0, %d0

# CHECK-INST: caddn %d1, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0x10]
caddn %d1, %d0, %d0, %d1

# CHECK-INST: caddn %d1, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0x10]
caddn %d1, %d0, %d0, %d14

# CHECK-INST: caddn %d1, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0x10]
caddn %d1, %d0, %d0, %d15

# CHECK-INST: caddn %d1, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0x10]
caddn %d1, %d0, %d1, %d0

# CHECK-INST: caddn %d1, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0x10]
caddn %d1, %d0, %d1, %d1

# CHECK-INST: caddn %d1, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0x10]
caddn %d1, %d0, %d1, %d14

# CHECK-INST: caddn %d1, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0x10]
caddn %d1, %d0, %d1, %d15

# CHECK-INST: caddn %d1, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0x10]
caddn %d1, %d0, %d14, %d0

# CHECK-INST: caddn %d1, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0x10]
caddn %d1, %d0, %d14, %d1

# CHECK-INST: caddn %d1, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0x10]
caddn %d1, %d0, %d14, %d14

# CHECK-INST: caddn %d1, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0x10]
caddn %d1, %d0, %d14, %d15

# CHECK-INST: caddn %d1, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0x10]
caddn %d1, %d0, %d15, %d0

# CHECK-INST: caddn %d1, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0x10]
caddn %d1, %d0, %d15, %d1

# CHECK-INST: caddn %d1, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0x10]
caddn %d1, %d0, %d15, %d14

# CHECK-INST: caddn %d1, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0x10]
caddn %d1, %d0, %d15, %d15

# CHECK-INST: caddn %d1, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0x11]
caddn %d1, %d1, %d0, %d0

# CHECK-INST: caddn %d1, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0x11]
caddn %d1, %d1, %d0, %d1

# CHECK-INST: caddn %d1, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0x11]
caddn %d1, %d1, %d0, %d14

# CHECK-INST: caddn %d1, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0x11]
caddn %d1, %d1, %d0, %d15

# CHECK-INST: caddn %d1, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0x11]
caddn %d1, %d1, %d1, %d0

# CHECK-INST: caddn %d1, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0x11]
caddn %d1, %d1, %d1, %d1

# CHECK-INST: caddn %d1, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0x11]
caddn %d1, %d1, %d1, %d14

# CHECK-INST: caddn %d1, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0x11]
caddn %d1, %d1, %d1, %d15

# CHECK-INST: caddn %d1, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0x11]
caddn %d1, %d1, %d14, %d0

# CHECK-INST: caddn %d1, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0x11]
caddn %d1, %d1, %d14, %d1

# CHECK-INST: caddn %d1, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0x11]
caddn %d1, %d1, %d14, %d14

# CHECK-INST: caddn %d1, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0x11]
caddn %d1, %d1, %d14, %d15

# CHECK-INST: caddn %d1, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0x11]
caddn %d1, %d1, %d15, %d0

# CHECK-INST: caddn %d1, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0x11]
caddn %d1, %d1, %d15, %d1

# CHECK-INST: caddn %d1, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0x11]
caddn %d1, %d1, %d15, %d14

# CHECK-INST: caddn %d1, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0x11]
caddn %d1, %d1, %d15, %d15

# CHECK-INST: caddn %d1, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0x1e]
caddn %d1, %d14, %d0, %d0

# CHECK-INST: caddn %d1, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0x1e]
caddn %d1, %d14, %d0, %d1

# CHECK-INST: caddn %d1, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0x1e]
caddn %d1, %d14, %d0, %d14

# CHECK-INST: caddn %d1, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0x1e]
caddn %d1, %d14, %d0, %d15

# CHECK-INST: caddn %d1, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0x1e]
caddn %d1, %d14, %d1, %d0

# CHECK-INST: caddn %d1, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0x1e]
caddn %d1, %d14, %d1, %d1

# CHECK-INST: caddn %d1, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0x1e]
caddn %d1, %d14, %d1, %d14

# CHECK-INST: caddn %d1, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0x1e]
caddn %d1, %d14, %d1, %d15

# CHECK-INST: caddn %d1, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0x1e]
caddn %d1, %d14, %d14, %d0

# CHECK-INST: caddn %d1, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0x1e]
caddn %d1, %d14, %d14, %d1

# CHECK-INST: caddn %d1, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0x1e]
caddn %d1, %d14, %d14, %d14

# CHECK-INST: caddn %d1, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0x1e]
caddn %d1, %d14, %d14, %d15

# CHECK-INST: caddn %d1, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0x1e]
caddn %d1, %d14, %d15, %d0

# CHECK-INST: caddn %d1, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0x1e]
caddn %d1, %d14, %d15, %d1

# CHECK-INST: caddn %d1, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0x1e]
caddn %d1, %d14, %d15, %d14

# CHECK-INST: caddn %d1, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0x1e]
caddn %d1, %d14, %d15, %d15

# CHECK-INST: caddn %d1, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0x1f]
caddn %d1, %d15, %d0, %d0

# CHECK-INST: caddn %d1, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0x1f]
caddn %d1, %d15, %d0, %d1

# CHECK-INST: caddn %d1, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0x1f]
caddn %d1, %d15, %d0, %d14

# CHECK-INST: caddn %d1, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0x1f]
caddn %d1, %d15, %d0, %d15

# CHECK-INST: caddn %d1, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0x1f]
caddn %d1, %d15, %d1, %d0

# CHECK-INST: caddn %d1, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0x1f]
caddn %d1, %d15, %d1, %d1

# CHECK-INST: caddn %d1, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0x1f]
caddn %d1, %d15, %d1, %d14

# CHECK-INST: caddn %d1, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0x1f]
caddn %d1, %d15, %d1, %d15

# CHECK-INST: caddn %d1, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0x1f]
caddn %d1, %d15, %d14, %d0

# CHECK-INST: caddn %d1, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0x1f]
caddn %d1, %d15, %d14, %d1

# CHECK-INST: caddn %d1, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0x1f]
caddn %d1, %d15, %d14, %d14

# CHECK-INST: caddn %d1, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0x1f]
caddn %d1, %d15, %d14, %d15

# CHECK-INST: caddn %d1, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0x1f]
caddn %d1, %d15, %d15, %d0

# CHECK-INST: caddn %d1, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0x1f]
caddn %d1, %d15, %d15, %d1

# CHECK-INST: caddn %d1, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0x1f]
caddn %d1, %d15, %d15, %d14

# CHECK-INST: caddn %d1, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0x1f]
caddn %d1, %d15, %d15, %d15

# CHECK-INST: caddn %d14, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0xe0]
caddn %d14, %d0, %d0, %d0

# CHECK-INST: caddn %d14, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0xe0]
caddn %d14, %d0, %d0, %d1

# CHECK-INST: caddn %d14, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0xe0]
caddn %d14, %d0, %d0, %d14

# CHECK-INST: caddn %d14, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0xe0]
caddn %d14, %d0, %d0, %d15

# CHECK-INST: caddn %d14, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0xe0]
caddn %d14, %d0, %d1, %d0

# CHECK-INST: caddn %d14, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0xe0]
caddn %d14, %d0, %d1, %d1

# CHECK-INST: caddn %d14, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0xe0]
caddn %d14, %d0, %d1, %d14

# CHECK-INST: caddn %d14, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0xe0]
caddn %d14, %d0, %d1, %d15

# CHECK-INST: caddn %d14, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0xe0]
caddn %d14, %d0, %d14, %d0

# CHECK-INST: caddn %d14, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0xe0]
caddn %d14, %d0, %d14, %d1

# CHECK-INST: caddn %d14, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0xe0]
caddn %d14, %d0, %d14, %d14

# CHECK-INST: caddn %d14, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0xe0]
caddn %d14, %d0, %d14, %d15

# CHECK-INST: caddn %d14, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0xe0]
caddn %d14, %d0, %d15, %d0

# CHECK-INST: caddn %d14, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0xe0]
caddn %d14, %d0, %d15, %d1

# CHECK-INST: caddn %d14, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0xe0]
caddn %d14, %d0, %d15, %d14

# CHECK-INST: caddn %d14, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0xe0]
caddn %d14, %d0, %d15, %d15

# CHECK-INST: caddn %d14, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0xe1]
caddn %d14, %d1, %d0, %d0

# CHECK-INST: caddn %d14, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0xe1]
caddn %d14, %d1, %d0, %d1

# CHECK-INST: caddn %d14, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0xe1]
caddn %d14, %d1, %d0, %d14

# CHECK-INST: caddn %d14, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0xe1]
caddn %d14, %d1, %d0, %d15

# CHECK-INST: caddn %d14, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0xe1]
caddn %d14, %d1, %d1, %d0

# CHECK-INST: caddn %d14, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0xe1]
caddn %d14, %d1, %d1, %d1

# CHECK-INST: caddn %d14, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0xe1]
caddn %d14, %d1, %d1, %d14

# CHECK-INST: caddn %d14, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0xe1]
caddn %d14, %d1, %d1, %d15

# CHECK-INST: caddn %d14, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0xe1]
caddn %d14, %d1, %d14, %d0

# CHECK-INST: caddn %d14, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0xe1]
caddn %d14, %d1, %d14, %d1

# CHECK-INST: caddn %d14, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0xe1]
caddn %d14, %d1, %d14, %d14

# CHECK-INST: caddn %d14, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0xe1]
caddn %d14, %d1, %d14, %d15

# CHECK-INST: caddn %d14, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0xe1]
caddn %d14, %d1, %d15, %d0

# CHECK-INST: caddn %d14, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0xe1]
caddn %d14, %d1, %d15, %d1

# CHECK-INST: caddn %d14, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0xe1]
caddn %d14, %d1, %d15, %d14

# CHECK-INST: caddn %d14, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0xe1]
caddn %d14, %d1, %d15, %d15

# CHECK-INST: caddn %d14, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0xee]
caddn %d14, %d14, %d0, %d0

# CHECK-INST: caddn %d14, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0xee]
caddn %d14, %d14, %d0, %d1

# CHECK-INST: caddn %d14, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0xee]
caddn %d14, %d14, %d0, %d14

# CHECK-INST: caddn %d14, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0xee]
caddn %d14, %d14, %d0, %d15

# CHECK-INST: caddn %d14, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0xee]
caddn %d14, %d14, %d1, %d0

# CHECK-INST: caddn %d14, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0xee]
caddn %d14, %d14, %d1, %d1

# CHECK-INST: caddn %d14, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0xee]
caddn %d14, %d14, %d1, %d14

# CHECK-INST: caddn %d14, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0xee]
caddn %d14, %d14, %d1, %d15

# CHECK-INST: caddn %d14, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0xee]
caddn %d14, %d14, %d14, %d0

# CHECK-INST: caddn %d14, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0xee]
caddn %d14, %d14, %d14, %d1

# CHECK-INST: caddn %d14, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0xee]
caddn %d14, %d14, %d14, %d14

# CHECK-INST: caddn %d14, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0xee]
caddn %d14, %d14, %d14, %d15

# CHECK-INST: caddn %d14, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0xee]
caddn %d14, %d14, %d15, %d0

# CHECK-INST: caddn %d14, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0xee]
caddn %d14, %d14, %d15, %d1

# CHECK-INST: caddn %d14, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0xee]
caddn %d14, %d14, %d15, %d14

# CHECK-INST: caddn %d14, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0xee]
caddn %d14, %d14, %d15, %d15

# CHECK-INST: caddn %d14, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0xef]
caddn %d14, %d15, %d0, %d0

# CHECK-INST: caddn %d14, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0xef]
caddn %d14, %d15, %d0, %d1

# CHECK-INST: caddn %d14, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0xef]
caddn %d14, %d15, %d0, %d14

# CHECK-INST: caddn %d14, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0xef]
caddn %d14, %d15, %d0, %d15

# CHECK-INST: caddn %d14, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0xef]
caddn %d14, %d15, %d1, %d0

# CHECK-INST: caddn %d14, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0xef]
caddn %d14, %d15, %d1, %d1

# CHECK-INST: caddn %d14, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0xef]
caddn %d14, %d15, %d1, %d14

# CHECK-INST: caddn %d14, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0xef]
caddn %d14, %d15, %d1, %d15

# CHECK-INST: caddn %d14, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0xef]
caddn %d14, %d15, %d14, %d0

# CHECK-INST: caddn %d14, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0xef]
caddn %d14, %d15, %d14, %d1

# CHECK-INST: caddn %d14, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0xef]
caddn %d14, %d15, %d14, %d14

# CHECK-INST: caddn %d14, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0xef]
caddn %d14, %d15, %d14, %d15

# CHECK-INST: caddn %d14, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0xef]
caddn %d14, %d15, %d15, %d0

# CHECK-INST: caddn %d14, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0xef]
caddn %d14, %d15, %d15, %d1

# CHECK-INST: caddn %d14, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0xef]
caddn %d14, %d15, %d15, %d14

# CHECK-INST: caddn %d14, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0xef]
caddn %d14, %d15, %d15, %d15

# CHECK-INST: caddn %d15, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0xf0]
caddn %d15, %d0, %d0, %d0

# CHECK-INST: caddn %d15, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0xf0]
caddn %d15, %d0, %d0, %d1

# CHECK-INST: caddn %d15, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0xf0]
caddn %d15, %d0, %d0, %d14

# CHECK-INST: caddn %d15, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0xf0]
caddn %d15, %d0, %d0, %d15

# CHECK-INST: caddn %d15, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0xf0]
caddn %d15, %d0, %d1, %d0

# CHECK-INST: caddn %d15, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0xf0]
caddn %d15, %d0, %d1, %d1

# CHECK-INST: caddn %d15, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0xf0]
caddn %d15, %d0, %d1, %d14

# CHECK-INST: caddn %d15, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0xf0]
caddn %d15, %d0, %d1, %d15

# CHECK-INST: caddn %d15, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0xf0]
caddn %d15, %d0, %d14, %d0

# CHECK-INST: caddn %d15, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0xf0]
caddn %d15, %d0, %d14, %d1

# CHECK-INST: caddn %d15, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0xf0]
caddn %d15, %d0, %d14, %d14

# CHECK-INST: caddn %d15, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0xf0]
caddn %d15, %d0, %d14, %d15

# CHECK-INST: caddn %d15, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0xf0]
caddn %d15, %d0, %d15, %d0

# CHECK-INST: caddn %d15, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0xf0]
caddn %d15, %d0, %d15, %d1

# CHECK-INST: caddn %d15, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0xf0]
caddn %d15, %d0, %d15, %d14

# CHECK-INST: caddn %d15, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0xf0]
caddn %d15, %d0, %d15, %d15

# CHECK-INST: caddn %d15, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0xf1]
caddn %d15, %d1, %d0, %d0

# CHECK-INST: caddn %d15, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0xf1]
caddn %d15, %d1, %d0, %d1

# CHECK-INST: caddn %d15, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0xf1]
caddn %d15, %d1, %d0, %d14

# CHECK-INST: caddn %d15, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0xf1]
caddn %d15, %d1, %d0, %d15

# CHECK-INST: caddn %d15, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0xf1]
caddn %d15, %d1, %d1, %d0

# CHECK-INST: caddn %d15, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0xf1]
caddn %d15, %d1, %d1, %d1

# CHECK-INST: caddn %d15, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0xf1]
caddn %d15, %d1, %d1, %d14

# CHECK-INST: caddn %d15, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0xf1]
caddn %d15, %d1, %d1, %d15

# CHECK-INST: caddn %d15, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0xf1]
caddn %d15, %d1, %d14, %d0

# CHECK-INST: caddn %d15, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0xf1]
caddn %d15, %d1, %d14, %d1

# CHECK-INST: caddn %d15, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0xf1]
caddn %d15, %d1, %d14, %d14

# CHECK-INST: caddn %d15, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0xf1]
caddn %d15, %d1, %d14, %d15

# CHECK-INST: caddn %d15, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0xf1]
caddn %d15, %d1, %d15, %d0

# CHECK-INST: caddn %d15, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0xf1]
caddn %d15, %d1, %d15, %d1

# CHECK-INST: caddn %d15, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0xf1]
caddn %d15, %d1, %d15, %d14

# CHECK-INST: caddn %d15, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0xf1]
caddn %d15, %d1, %d15, %d15

# CHECK-INST: caddn %d15, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0xfe]
caddn %d15, %d14, %d0, %d0

# CHECK-INST: caddn %d15, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0xfe]
caddn %d15, %d14, %d0, %d1

# CHECK-INST: caddn %d15, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0xfe]
caddn %d15, %d14, %d0, %d14

# CHECK-INST: caddn %d15, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0xfe]
caddn %d15, %d14, %d0, %d15

# CHECK-INST: caddn %d15, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0xfe]
caddn %d15, %d14, %d1, %d0

# CHECK-INST: caddn %d15, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0xfe]
caddn %d15, %d14, %d1, %d1

# CHECK-INST: caddn %d15, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0xfe]
caddn %d15, %d14, %d1, %d14

# CHECK-INST: caddn %d15, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0xfe]
caddn %d15, %d14, %d1, %d15

# CHECK-INST: caddn %d15, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0xfe]
caddn %d15, %d14, %d14, %d0

# CHECK-INST: caddn %d15, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0xfe]
caddn %d15, %d14, %d14, %d1

# CHECK-INST: caddn %d15, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0xfe]
caddn %d15, %d14, %d14, %d14

# CHECK-INST: caddn %d15, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0xfe]
caddn %d15, %d14, %d14, %d15

# CHECK-INST: caddn %d15, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0xfe]
caddn %d15, %d14, %d15, %d0

# CHECK-INST: caddn %d15, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0xfe]
caddn %d15, %d14, %d15, %d1

# CHECK-INST: caddn %d15, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0xfe]
caddn %d15, %d14, %d15, %d14

# CHECK-INST: caddn %d15, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0xfe]
caddn %d15, %d14, %d15, %d15

# CHECK-INST: caddn %d15, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x10,0xff]
caddn %d15, %d15, %d0, %d0

# CHECK-INST: caddn %d15, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x10,0xff]
caddn %d15, %d15, %d0, %d1

# CHECK-INST: caddn %d15, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x10,0xff]
caddn %d15, %d15, %d0, %d14

# CHECK-INST: caddn %d15, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x10,0xff]
caddn %d15, %d15, %d0, %d15

# CHECK-INST: caddn %d15, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x10,0xff]
caddn %d15, %d15, %d1, %d0

# CHECK-INST: caddn %d15, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x10,0xff]
caddn %d15, %d15, %d1, %d1

# CHECK-INST: caddn %d15, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x10,0xff]
caddn %d15, %d15, %d1, %d14

# CHECK-INST: caddn %d15, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x10,0xff]
caddn %d15, %d15, %d1, %d15

# CHECK-INST: caddn %d15, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x10,0xff]
caddn %d15, %d15, %d14, %d0

# CHECK-INST: caddn %d15, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x10,0xff]
caddn %d15, %d15, %d14, %d1

# CHECK-INST: caddn %d15, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x10,0xff]
caddn %d15, %d15, %d14, %d14

# CHECK-INST: caddn %d15, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x10,0xff]
caddn %d15, %d15, %d14, %d15

# CHECK-INST: caddn %d15, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x10,0xff]
caddn %d15, %d15, %d15, %d0

# CHECK-INST: caddn %d15, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x10,0xff]
caddn %d15, %d15, %d15, %d1

# CHECK-INST: caddn %d15, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x10,0xff]
caddn %d15, %d15, %d15, %d14

# CHECK-INST: caddn %d15, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x10,0xff]
caddn %d15, %d15, %d15, %d15

# CHECK-INST: caddn %d0, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0x00]
caddn %d0, %d0, %d0, -256

# CHECK-INST: caddn %d0, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0x00]
caddn %d0, %d0, %d0, -129

# CHECK-INST: caddn %d0, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0x00]
caddn %d0, %d0, %d0, -1

# CHECK-INST: caddn %d0, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0x00]
caddn %d0, %d0, %d0, 0

# CHECK-INST: caddn %d0, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0x00]
caddn %d0, %d0, %d0, 1

# CHECK-INST: caddn %d0, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0x00]
caddn %d0, %d0, %d0, 128

# CHECK-INST: caddn %d0, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0x00]
caddn %d0, %d0, %d0, 255

# CHECK-INST: caddn %d0, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0x00]
caddn %d0, %d0, %d1, -256

# CHECK-INST: caddn %d0, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0x00]
caddn %d0, %d0, %d1, -129

# CHECK-INST: caddn %d0, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0x00]
caddn %d0, %d0, %d1, -1

# CHECK-INST: caddn %d0, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0x00]
caddn %d0, %d0, %d1, 0

# CHECK-INST: caddn %d0, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0x00]
caddn %d0, %d0, %d1, 1

# CHECK-INST: caddn %d0, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0x00]
caddn %d0, %d0, %d1, 128

# CHECK-INST: caddn %d0, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0x00]
caddn %d0, %d0, %d1, 255

# CHECK-INST: caddn %d0, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0x00]
caddn %d0, %d0, %d14, -256

# CHECK-INST: caddn %d0, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0x00]
caddn %d0, %d0, %d14, -129

# CHECK-INST: caddn %d0, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0x00]
caddn %d0, %d0, %d14, -1

# CHECK-INST: caddn %d0, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0x00]
caddn %d0, %d0, %d14, 0

# CHECK-INST: caddn %d0, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0x00]
caddn %d0, %d0, %d14, 1

# CHECK-INST: caddn %d0, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0x00]
caddn %d0, %d0, %d14, 128

# CHECK-INST: caddn %d0, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0x00]
caddn %d0, %d0, %d14, 255

# CHECK-INST: caddn %d0, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0x00]
caddn %d0, %d0, %d15, -256

# CHECK-INST: caddn %d0, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0x00]
caddn %d0, %d0, %d15, -129

# CHECK-INST: caddn %d0, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0x00]
caddn %d0, %d0, %d15, -1

# CHECK-INST: caddn %d0, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0x00]
caddn %d0, %d0, %d15, 0

# CHECK-INST: caddn %d0, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0x00]
caddn %d0, %d0, %d15, 1

# CHECK-INST: caddn %d0, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0x00]
caddn %d0, %d0, %d15, 128

# CHECK-INST: caddn %d0, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0x00]
caddn %d0, %d0, %d15, 255

# CHECK-INST: caddn %d0, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0x01]
caddn %d0, %d1, %d0, -256

# CHECK-INST: caddn %d0, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0x01]
caddn %d0, %d1, %d0, -129

# CHECK-INST: caddn %d0, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0x01]
caddn %d0, %d1, %d0, -1

# CHECK-INST: caddn %d0, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0x01]
caddn %d0, %d1, %d0, 0

# CHECK-INST: caddn %d0, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0x01]
caddn %d0, %d1, %d0, 1

# CHECK-INST: caddn %d0, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0x01]
caddn %d0, %d1, %d0, 128

# CHECK-INST: caddn %d0, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0x01]
caddn %d0, %d1, %d0, 255

# CHECK-INST: caddn %d0, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0x01]
caddn %d0, %d1, %d1, -256

# CHECK-INST: caddn %d0, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0x01]
caddn %d0, %d1, %d1, -129

# CHECK-INST: caddn %d0, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0x01]
caddn %d0, %d1, %d1, -1

# CHECK-INST: caddn %d0, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0x01]
caddn %d0, %d1, %d1, 0

# CHECK-INST: caddn %d0, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0x01]
caddn %d0, %d1, %d1, 1

# CHECK-INST: caddn %d0, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0x01]
caddn %d0, %d1, %d1, 128

# CHECK-INST: caddn %d0, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0x01]
caddn %d0, %d1, %d1, 255

# CHECK-INST: caddn %d0, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0x01]
caddn %d0, %d1, %d14, -256

# CHECK-INST: caddn %d0, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0x01]
caddn %d0, %d1, %d14, -129

# CHECK-INST: caddn %d0, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0x01]
caddn %d0, %d1, %d14, -1

# CHECK-INST: caddn %d0, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0x01]
caddn %d0, %d1, %d14, 0

# CHECK-INST: caddn %d0, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0x01]
caddn %d0, %d1, %d14, 1

# CHECK-INST: caddn %d0, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0x01]
caddn %d0, %d1, %d14, 128

# CHECK-INST: caddn %d0, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0x01]
caddn %d0, %d1, %d14, 255

# CHECK-INST: caddn %d0, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0x01]
caddn %d0, %d1, %d15, -256

# CHECK-INST: caddn %d0, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0x01]
caddn %d0, %d1, %d15, -129

# CHECK-INST: caddn %d0, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0x01]
caddn %d0, %d1, %d15, -1

# CHECK-INST: caddn %d0, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0x01]
caddn %d0, %d1, %d15, 0

# CHECK-INST: caddn %d0, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0x01]
caddn %d0, %d1, %d15, 1

# CHECK-INST: caddn %d0, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0x01]
caddn %d0, %d1, %d15, 128

# CHECK-INST: caddn %d0, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0x01]
caddn %d0, %d1, %d15, 255

# CHECK-INST: caddn %d0, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0x0e]
caddn %d0, %d14, %d0, -256

# CHECK-INST: caddn %d0, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0x0e]
caddn %d0, %d14, %d0, -129

# CHECK-INST: caddn %d0, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0x0e]
caddn %d0, %d14, %d0, -1

# CHECK-INST: caddn %d0, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0x0e]
caddn %d0, %d14, %d0, 0

# CHECK-INST: caddn %d0, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0x0e]
caddn %d0, %d14, %d0, 1

# CHECK-INST: caddn %d0, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0x0e]
caddn %d0, %d14, %d0, 128

# CHECK-INST: caddn %d0, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0x0e]
caddn %d0, %d14, %d0, 255

# CHECK-INST: caddn %d0, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0x0e]
caddn %d0, %d14, %d1, -256

# CHECK-INST: caddn %d0, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0x0e]
caddn %d0, %d14, %d1, -129

# CHECK-INST: caddn %d0, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0x0e]
caddn %d0, %d14, %d1, -1

# CHECK-INST: caddn %d0, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0x0e]
caddn %d0, %d14, %d1, 0

# CHECK-INST: caddn %d0, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0x0e]
caddn %d0, %d14, %d1, 1

# CHECK-INST: caddn %d0, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0x0e]
caddn %d0, %d14, %d1, 128

# CHECK-INST: caddn %d0, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0x0e]
caddn %d0, %d14, %d1, 255

# CHECK-INST: caddn %d0, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0x0e]
caddn %d0, %d14, %d14, -256

# CHECK-INST: caddn %d0, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0x0e]
caddn %d0, %d14, %d14, -129

# CHECK-INST: caddn %d0, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0x0e]
caddn %d0, %d14, %d14, -1

# CHECK-INST: caddn %d0, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0x0e]
caddn %d0, %d14, %d14, 0

# CHECK-INST: caddn %d0, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0x0e]
caddn %d0, %d14, %d14, 1

# CHECK-INST: caddn %d0, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0x0e]
caddn %d0, %d14, %d14, 128

# CHECK-INST: caddn %d0, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0x0e]
caddn %d0, %d14, %d14, 255

# CHECK-INST: caddn %d0, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0x0e]
caddn %d0, %d14, %d15, -256

# CHECK-INST: caddn %d0, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0x0e]
caddn %d0, %d14, %d15, -129

# CHECK-INST: caddn %d0, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0x0e]
caddn %d0, %d14, %d15, -1

# CHECK-INST: caddn %d0, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0x0e]
caddn %d0, %d14, %d15, 0

# CHECK-INST: caddn %d0, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0x0e]
caddn %d0, %d14, %d15, 1

# CHECK-INST: caddn %d0, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0x0e]
caddn %d0, %d14, %d15, 128

# CHECK-INST: caddn %d0, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0x0e]
caddn %d0, %d14, %d15, 255

# CHECK-INST: caddn %d0, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0x0f]
caddn %d0, %d15, %d0, -256

# CHECK-INST: caddn %d0, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0x0f]
caddn %d0, %d15, %d0, -129

# CHECK-INST: caddn %d0, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0x0f]
caddn %d0, %d15, %d0, -1

# CHECK-INST: caddn %d0, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0x0f]
caddn %d0, %d15, %d0, 0

# CHECK-INST: caddn %d0, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0x0f]
caddn %d0, %d15, %d0, 1

# CHECK-INST: caddn %d0, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0x0f]
caddn %d0, %d15, %d0, 128

# CHECK-INST: caddn %d0, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0x0f]
caddn %d0, %d15, %d0, 255

# CHECK-INST: caddn %d0, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0x0f]
caddn %d0, %d15, %d1, -256

# CHECK-INST: caddn %d0, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0x0f]
caddn %d0, %d15, %d1, -129

# CHECK-INST: caddn %d0, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0x0f]
caddn %d0, %d15, %d1, -1

# CHECK-INST: caddn %d0, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0x0f]
caddn %d0, %d15, %d1, 0

# CHECK-INST: caddn %d0, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0x0f]
caddn %d0, %d15, %d1, 1

# CHECK-INST: caddn %d0, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0x0f]
caddn %d0, %d15, %d1, 128

# CHECK-INST: caddn %d0, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0x0f]
caddn %d0, %d15, %d1, 255

# CHECK-INST: caddn %d0, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0x0f]
caddn %d0, %d15, %d14, -256

# CHECK-INST: caddn %d0, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0x0f]
caddn %d0, %d15, %d14, -129

# CHECK-INST: caddn %d0, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0x0f]
caddn %d0, %d15, %d14, -1

# CHECK-INST: caddn %d0, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0x0f]
caddn %d0, %d15, %d14, 0

# CHECK-INST: caddn %d0, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0x0f]
caddn %d0, %d15, %d14, 1

# CHECK-INST: caddn %d0, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0x0f]
caddn %d0, %d15, %d14, 128

# CHECK-INST: caddn %d0, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0x0f]
caddn %d0, %d15, %d14, 255

# CHECK-INST: caddn %d0, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0x0f]
caddn %d0, %d15, %d15, -256

# CHECK-INST: caddn %d0, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0x0f]
caddn %d0, %d15, %d15, -129

# CHECK-INST: caddn %d0, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0x0f]
caddn %d0, %d15, %d15, -1

# CHECK-INST: caddn %d0, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0x0f]
caddn %d0, %d15, %d15, 0

# CHECK-INST: caddn %d0, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0x0f]
caddn %d0, %d15, %d15, 1

# CHECK-INST: caddn %d0, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0x0f]
caddn %d0, %d15, %d15, 128

# CHECK-INST: caddn %d0, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0x0f]
caddn %d0, %d15, %d15, 255

# CHECK-INST: caddn %d1, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0x10]
caddn %d1, %d0, %d0, -256

# CHECK-INST: caddn %d1, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0x10]
caddn %d1, %d0, %d0, -129

# CHECK-INST: caddn %d1, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0x10]
caddn %d1, %d0, %d0, -1

# CHECK-INST: caddn %d1, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0x10]
caddn %d1, %d0, %d0, 0

# CHECK-INST: caddn %d1, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0x10]
caddn %d1, %d0, %d0, 1

# CHECK-INST: caddn %d1, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0x10]
caddn %d1, %d0, %d0, 128

# CHECK-INST: caddn %d1, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0x10]
caddn %d1, %d0, %d0, 255

# CHECK-INST: caddn %d1, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0x10]
caddn %d1, %d0, %d1, -256

# CHECK-INST: caddn %d1, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0x10]
caddn %d1, %d0, %d1, -129

# CHECK-INST: caddn %d1, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0x10]
caddn %d1, %d0, %d1, -1

# CHECK-INST: caddn %d1, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0x10]
caddn %d1, %d0, %d1, 0

# CHECK-INST: caddn %d1, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0x10]
caddn %d1, %d0, %d1, 1

# CHECK-INST: caddn %d1, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0x10]
caddn %d1, %d0, %d1, 128

# CHECK-INST: caddn %d1, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0x10]
caddn %d1, %d0, %d1, 255

# CHECK-INST: caddn %d1, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0x10]
caddn %d1, %d0, %d14, -256

# CHECK-INST: caddn %d1, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0x10]
caddn %d1, %d0, %d14, -129

# CHECK-INST: caddn %d1, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0x10]
caddn %d1, %d0, %d14, -1

# CHECK-INST: caddn %d1, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0x10]
caddn %d1, %d0, %d14, 0

# CHECK-INST: caddn %d1, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0x10]
caddn %d1, %d0, %d14, 1

# CHECK-INST: caddn %d1, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0x10]
caddn %d1, %d0, %d14, 128

# CHECK-INST: caddn %d1, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0x10]
caddn %d1, %d0, %d14, 255

# CHECK-INST: caddn %d1, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0x10]
caddn %d1, %d0, %d15, -256

# CHECK-INST: caddn %d1, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0x10]
caddn %d1, %d0, %d15, -129

# CHECK-INST: caddn %d1, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0x10]
caddn %d1, %d0, %d15, -1

# CHECK-INST: caddn %d1, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0x10]
caddn %d1, %d0, %d15, 0

# CHECK-INST: caddn %d1, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0x10]
caddn %d1, %d0, %d15, 1

# CHECK-INST: caddn %d1, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0x10]
caddn %d1, %d0, %d15, 128

# CHECK-INST: caddn %d1, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0x10]
caddn %d1, %d0, %d15, 255

# CHECK-INST: caddn %d1, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0x11]
caddn %d1, %d1, %d0, -256

# CHECK-INST: caddn %d1, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0x11]
caddn %d1, %d1, %d0, -129

# CHECK-INST: caddn %d1, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0x11]
caddn %d1, %d1, %d0, -1

# CHECK-INST: caddn %d1, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0x11]
caddn %d1, %d1, %d0, 0

# CHECK-INST: caddn %d1, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0x11]
caddn %d1, %d1, %d0, 1

# CHECK-INST: caddn %d1, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0x11]
caddn %d1, %d1, %d0, 128

# CHECK-INST: caddn %d1, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0x11]
caddn %d1, %d1, %d0, 255

# CHECK-INST: caddn %d1, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0x11]
caddn %d1, %d1, %d1, -256

# CHECK-INST: caddn %d1, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0x11]
caddn %d1, %d1, %d1, -129

# CHECK-INST: caddn %d1, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0x11]
caddn %d1, %d1, %d1, -1

# CHECK-INST: caddn %d1, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0x11]
caddn %d1, %d1, %d1, 0

# CHECK-INST: caddn %d1, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0x11]
caddn %d1, %d1, %d1, 1

# CHECK-INST: caddn %d1, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0x11]
caddn %d1, %d1, %d1, 128

# CHECK-INST: caddn %d1, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0x11]
caddn %d1, %d1, %d1, 255

# CHECK-INST: caddn %d1, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0x11]
caddn %d1, %d1, %d14, -256

# CHECK-INST: caddn %d1, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0x11]
caddn %d1, %d1, %d14, -129

# CHECK-INST: caddn %d1, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0x11]
caddn %d1, %d1, %d14, -1

# CHECK-INST: caddn %d1, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0x11]
caddn %d1, %d1, %d14, 0

# CHECK-INST: caddn %d1, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0x11]
caddn %d1, %d1, %d14, 1

# CHECK-INST: caddn %d1, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0x11]
caddn %d1, %d1, %d14, 128

# CHECK-INST: caddn %d1, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0x11]
caddn %d1, %d1, %d14, 255

# CHECK-INST: caddn %d1, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0x11]
caddn %d1, %d1, %d15, -256

# CHECK-INST: caddn %d1, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0x11]
caddn %d1, %d1, %d15, -129

# CHECK-INST: caddn %d1, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0x11]
caddn %d1, %d1, %d15, -1

# CHECK-INST: caddn %d1, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0x11]
caddn %d1, %d1, %d15, 0

# CHECK-INST: caddn %d1, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0x11]
caddn %d1, %d1, %d15, 1

# CHECK-INST: caddn %d1, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0x11]
caddn %d1, %d1, %d15, 128

# CHECK-INST: caddn %d1, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0x11]
caddn %d1, %d1, %d15, 255

# CHECK-INST: caddn %d1, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0x1e]
caddn %d1, %d14, %d0, -256

# CHECK-INST: caddn %d1, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0x1e]
caddn %d1, %d14, %d0, -129

# CHECK-INST: caddn %d1, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0x1e]
caddn %d1, %d14, %d0, -1

# CHECK-INST: caddn %d1, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0x1e]
caddn %d1, %d14, %d0, 0

# CHECK-INST: caddn %d1, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0x1e]
caddn %d1, %d14, %d0, 1

# CHECK-INST: caddn %d1, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0x1e]
caddn %d1, %d14, %d0, 128

# CHECK-INST: caddn %d1, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0x1e]
caddn %d1, %d14, %d0, 255

# CHECK-INST: caddn %d1, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0x1e]
caddn %d1, %d14, %d1, -256

# CHECK-INST: caddn %d1, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0x1e]
caddn %d1, %d14, %d1, -129

# CHECK-INST: caddn %d1, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0x1e]
caddn %d1, %d14, %d1, -1

# CHECK-INST: caddn %d1, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0x1e]
caddn %d1, %d14, %d1, 0

# CHECK-INST: caddn %d1, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0x1e]
caddn %d1, %d14, %d1, 1

# CHECK-INST: caddn %d1, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0x1e]
caddn %d1, %d14, %d1, 128

# CHECK-INST: caddn %d1, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0x1e]
caddn %d1, %d14, %d1, 255

# CHECK-INST: caddn %d1, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0x1e]
caddn %d1, %d14, %d14, -256

# CHECK-INST: caddn %d1, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0x1e]
caddn %d1, %d14, %d14, -129

# CHECK-INST: caddn %d1, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0x1e]
caddn %d1, %d14, %d14, -1

# CHECK-INST: caddn %d1, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0x1e]
caddn %d1, %d14, %d14, 0

# CHECK-INST: caddn %d1, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0x1e]
caddn %d1, %d14, %d14, 1

# CHECK-INST: caddn %d1, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0x1e]
caddn %d1, %d14, %d14, 128

# CHECK-INST: caddn %d1, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0x1e]
caddn %d1, %d14, %d14, 255

# CHECK-INST: caddn %d1, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0x1e]
caddn %d1, %d14, %d15, -256

# CHECK-INST: caddn %d1, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0x1e]
caddn %d1, %d14, %d15, -129

# CHECK-INST: caddn %d1, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0x1e]
caddn %d1, %d14, %d15, -1

# CHECK-INST: caddn %d1, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0x1e]
caddn %d1, %d14, %d15, 0

# CHECK-INST: caddn %d1, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0x1e]
caddn %d1, %d14, %d15, 1

# CHECK-INST: caddn %d1, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0x1e]
caddn %d1, %d14, %d15, 128

# CHECK-INST: caddn %d1, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0x1e]
caddn %d1, %d14, %d15, 255

# CHECK-INST: caddn %d1, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0x1f]
caddn %d1, %d15, %d0, -256

# CHECK-INST: caddn %d1, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0x1f]
caddn %d1, %d15, %d0, -129

# CHECK-INST: caddn %d1, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0x1f]
caddn %d1, %d15, %d0, -1

# CHECK-INST: caddn %d1, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0x1f]
caddn %d1, %d15, %d0, 0

# CHECK-INST: caddn %d1, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0x1f]
caddn %d1, %d15, %d0, 1

# CHECK-INST: caddn %d1, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0x1f]
caddn %d1, %d15, %d0, 128

# CHECK-INST: caddn %d1, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0x1f]
caddn %d1, %d15, %d0, 255

# CHECK-INST: caddn %d1, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0x1f]
caddn %d1, %d15, %d1, -256

# CHECK-INST: caddn %d1, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0x1f]
caddn %d1, %d15, %d1, -129

# CHECK-INST: caddn %d1, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0x1f]
caddn %d1, %d15, %d1, -1

# CHECK-INST: caddn %d1, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0x1f]
caddn %d1, %d15, %d1, 0

# CHECK-INST: caddn %d1, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0x1f]
caddn %d1, %d15, %d1, 1

# CHECK-INST: caddn %d1, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0x1f]
caddn %d1, %d15, %d1, 128

# CHECK-INST: caddn %d1, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0x1f]
caddn %d1, %d15, %d1, 255

# CHECK-INST: caddn %d1, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0x1f]
caddn %d1, %d15, %d14, -256

# CHECK-INST: caddn %d1, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0x1f]
caddn %d1, %d15, %d14, -129

# CHECK-INST: caddn %d1, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0x1f]
caddn %d1, %d15, %d14, -1

# CHECK-INST: caddn %d1, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0x1f]
caddn %d1, %d15, %d14, 0

# CHECK-INST: caddn %d1, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0x1f]
caddn %d1, %d15, %d14, 1

# CHECK-INST: caddn %d1, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0x1f]
caddn %d1, %d15, %d14, 128

# CHECK-INST: caddn %d1, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0x1f]
caddn %d1, %d15, %d14, 255

# CHECK-INST: caddn %d1, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0x1f]
caddn %d1, %d15, %d15, -256

# CHECK-INST: caddn %d1, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0x1f]
caddn %d1, %d15, %d15, -129

# CHECK-INST: caddn %d1, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0x1f]
caddn %d1, %d15, %d15, -1

# CHECK-INST: caddn %d1, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0x1f]
caddn %d1, %d15, %d15, 0

# CHECK-INST: caddn %d1, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0x1f]
caddn %d1, %d15, %d15, 1

# CHECK-INST: caddn %d1, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0x1f]
caddn %d1, %d15, %d15, 128

# CHECK-INST: caddn %d1, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0x1f]
caddn %d1, %d15, %d15, 255

# CHECK-INST: caddn %d14, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0xe0]
caddn %d14, %d0, %d0, -256

# CHECK-INST: caddn %d14, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0xe0]
caddn %d14, %d0, %d0, -129

# CHECK-INST: caddn %d14, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0xe0]
caddn %d14, %d0, %d0, -1

# CHECK-INST: caddn %d14, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0xe0]
caddn %d14, %d0, %d0, 0

# CHECK-INST: caddn %d14, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0xe0]
caddn %d14, %d0, %d0, 1

# CHECK-INST: caddn %d14, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0xe0]
caddn %d14, %d0, %d0, 128

# CHECK-INST: caddn %d14, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0xe0]
caddn %d14, %d0, %d0, 255

# CHECK-INST: caddn %d14, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0xe0]
caddn %d14, %d0, %d1, -256

# CHECK-INST: caddn %d14, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0xe0]
caddn %d14, %d0, %d1, -129

# CHECK-INST: caddn %d14, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0xe0]
caddn %d14, %d0, %d1, -1

# CHECK-INST: caddn %d14, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0xe0]
caddn %d14, %d0, %d1, 0

# CHECK-INST: caddn %d14, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0xe0]
caddn %d14, %d0, %d1, 1

# CHECK-INST: caddn %d14, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0xe0]
caddn %d14, %d0, %d1, 128

# CHECK-INST: caddn %d14, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0xe0]
caddn %d14, %d0, %d1, 255

# CHECK-INST: caddn %d14, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0xe0]
caddn %d14, %d0, %d14, -256

# CHECK-INST: caddn %d14, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0xe0]
caddn %d14, %d0, %d14, -129

# CHECK-INST: caddn %d14, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0xe0]
caddn %d14, %d0, %d14, -1

# CHECK-INST: caddn %d14, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0xe0]
caddn %d14, %d0, %d14, 0

# CHECK-INST: caddn %d14, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0xe0]
caddn %d14, %d0, %d14, 1

# CHECK-INST: caddn %d14, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0xe0]
caddn %d14, %d0, %d14, 128

# CHECK-INST: caddn %d14, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0xe0]
caddn %d14, %d0, %d14, 255

# CHECK-INST: caddn %d14, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0xe0]
caddn %d14, %d0, %d15, -256

# CHECK-INST: caddn %d14, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0xe0]
caddn %d14, %d0, %d15, -129

# CHECK-INST: caddn %d14, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0xe0]
caddn %d14, %d0, %d15, -1

# CHECK-INST: caddn %d14, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0xe0]
caddn %d14, %d0, %d15, 0

# CHECK-INST: caddn %d14, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0xe0]
caddn %d14, %d0, %d15, 1

# CHECK-INST: caddn %d14, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0xe0]
caddn %d14, %d0, %d15, 128

# CHECK-INST: caddn %d14, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0xe0]
caddn %d14, %d0, %d15, 255

# CHECK-INST: caddn %d14, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0xe1]
caddn %d14, %d1, %d0, -256

# CHECK-INST: caddn %d14, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0xe1]
caddn %d14, %d1, %d0, -129

# CHECK-INST: caddn %d14, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0xe1]
caddn %d14, %d1, %d0, -1

# CHECK-INST: caddn %d14, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0xe1]
caddn %d14, %d1, %d0, 0

# CHECK-INST: caddn %d14, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0xe1]
caddn %d14, %d1, %d0, 1

# CHECK-INST: caddn %d14, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0xe1]
caddn %d14, %d1, %d0, 128

# CHECK-INST: caddn %d14, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0xe1]
caddn %d14, %d1, %d0, 255

# CHECK-INST: caddn %d14, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0xe1]
caddn %d14, %d1, %d1, -256

# CHECK-INST: caddn %d14, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0xe1]
caddn %d14, %d1, %d1, -129

# CHECK-INST: caddn %d14, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0xe1]
caddn %d14, %d1, %d1, -1

# CHECK-INST: caddn %d14, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0xe1]
caddn %d14, %d1, %d1, 0

# CHECK-INST: caddn %d14, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0xe1]
caddn %d14, %d1, %d1, 1

# CHECK-INST: caddn %d14, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0xe1]
caddn %d14, %d1, %d1, 128

# CHECK-INST: caddn %d14, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0xe1]
caddn %d14, %d1, %d1, 255

# CHECK-INST: caddn %d14, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0xe1]
caddn %d14, %d1, %d14, -256

# CHECK-INST: caddn %d14, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0xe1]
caddn %d14, %d1, %d14, -129

# CHECK-INST: caddn %d14, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0xe1]
caddn %d14, %d1, %d14, -1

# CHECK-INST: caddn %d14, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0xe1]
caddn %d14, %d1, %d14, 0

# CHECK-INST: caddn %d14, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0xe1]
caddn %d14, %d1, %d14, 1

# CHECK-INST: caddn %d14, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0xe1]
caddn %d14, %d1, %d14, 128

# CHECK-INST: caddn %d14, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0xe1]
caddn %d14, %d1, %d14, 255

# CHECK-INST: caddn %d14, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0xe1]
caddn %d14, %d1, %d15, -256

# CHECK-INST: caddn %d14, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0xe1]
caddn %d14, %d1, %d15, -129

# CHECK-INST: caddn %d14, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0xe1]
caddn %d14, %d1, %d15, -1

# CHECK-INST: caddn %d14, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0xe1]
caddn %d14, %d1, %d15, 0

# CHECK-INST: caddn %d14, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0xe1]
caddn %d14, %d1, %d15, 1

# CHECK-INST: caddn %d14, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0xe1]
caddn %d14, %d1, %d15, 128

# CHECK-INST: caddn %d14, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0xe1]
caddn %d14, %d1, %d15, 255

# CHECK-INST: caddn %d14, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0xee]
caddn %d14, %d14, %d0, -256

# CHECK-INST: caddn %d14, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0xee]
caddn %d14, %d14, %d0, -129

# CHECK-INST: caddn %d14, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0xee]
caddn %d14, %d14, %d0, -1

# CHECK-INST: caddn %d14, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0xee]
caddn %d14, %d14, %d0, 0

# CHECK-INST: caddn %d14, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0xee]
caddn %d14, %d14, %d0, 1

# CHECK-INST: caddn %d14, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0xee]
caddn %d14, %d14, %d0, 128

# CHECK-INST: caddn %d14, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0xee]
caddn %d14, %d14, %d0, 255

# CHECK-INST: caddn %d14, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0xee]
caddn %d14, %d14, %d1, -256

# CHECK-INST: caddn %d14, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0xee]
caddn %d14, %d14, %d1, -129

# CHECK-INST: caddn %d14, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0xee]
caddn %d14, %d14, %d1, -1

# CHECK-INST: caddn %d14, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0xee]
caddn %d14, %d14, %d1, 0

# CHECK-INST: caddn %d14, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0xee]
caddn %d14, %d14, %d1, 1

# CHECK-INST: caddn %d14, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0xee]
caddn %d14, %d14, %d1, 128

# CHECK-INST: caddn %d14, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0xee]
caddn %d14, %d14, %d1, 255

# CHECK-INST: caddn %d14, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0xee]
caddn %d14, %d14, %d14, -256

# CHECK-INST: caddn %d14, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0xee]
caddn %d14, %d14, %d14, -129

# CHECK-INST: caddn %d14, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0xee]
caddn %d14, %d14, %d14, -1

# CHECK-INST: caddn %d14, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0xee]
caddn %d14, %d14, %d14, 0

# CHECK-INST: caddn %d14, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0xee]
caddn %d14, %d14, %d14, 1

# CHECK-INST: caddn %d14, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0xee]
caddn %d14, %d14, %d14, 128

# CHECK-INST: caddn %d14, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0xee]
caddn %d14, %d14, %d14, 255

# CHECK-INST: caddn %d14, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0xee]
caddn %d14, %d14, %d15, -256

# CHECK-INST: caddn %d14, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0xee]
caddn %d14, %d14, %d15, -129

# CHECK-INST: caddn %d14, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0xee]
caddn %d14, %d14, %d15, -1

# CHECK-INST: caddn %d14, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0xee]
caddn %d14, %d14, %d15, 0

# CHECK-INST: caddn %d14, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0xee]
caddn %d14, %d14, %d15, 1

# CHECK-INST: caddn %d14, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0xee]
caddn %d14, %d14, %d15, 128

# CHECK-INST: caddn %d14, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0xee]
caddn %d14, %d14, %d15, 255

# CHECK-INST: caddn %d14, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0xef]
caddn %d14, %d15, %d0, -256

# CHECK-INST: caddn %d14, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0xef]
caddn %d14, %d15, %d0, -129

# CHECK-INST: caddn %d14, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0xef]
caddn %d14, %d15, %d0, -1

# CHECK-INST: caddn %d14, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0xef]
caddn %d14, %d15, %d0, 0

# CHECK-INST: caddn %d14, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0xef]
caddn %d14, %d15, %d0, 1

# CHECK-INST: caddn %d14, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0xef]
caddn %d14, %d15, %d0, 128

# CHECK-INST: caddn %d14, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0xef]
caddn %d14, %d15, %d0, 255

# CHECK-INST: caddn %d14, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0xef]
caddn %d14, %d15, %d1, -256

# CHECK-INST: caddn %d14, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0xef]
caddn %d14, %d15, %d1, -129

# CHECK-INST: caddn %d14, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0xef]
caddn %d14, %d15, %d1, -1

# CHECK-INST: caddn %d14, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0xef]
caddn %d14, %d15, %d1, 0

# CHECK-INST: caddn %d14, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0xef]
caddn %d14, %d15, %d1, 1

# CHECK-INST: caddn %d14, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0xef]
caddn %d14, %d15, %d1, 128

# CHECK-INST: caddn %d14, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0xef]
caddn %d14, %d15, %d1, 255

# CHECK-INST: caddn %d14, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0xef]
caddn %d14, %d15, %d14, -256

# CHECK-INST: caddn %d14, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0xef]
caddn %d14, %d15, %d14, -129

# CHECK-INST: caddn %d14, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0xef]
caddn %d14, %d15, %d14, -1

# CHECK-INST: caddn %d14, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0xef]
caddn %d14, %d15, %d14, 0

# CHECK-INST: caddn %d14, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0xef]
caddn %d14, %d15, %d14, 1

# CHECK-INST: caddn %d14, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0xef]
caddn %d14, %d15, %d14, 128

# CHECK-INST: caddn %d14, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0xef]
caddn %d14, %d15, %d14, 255

# CHECK-INST: caddn %d14, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0xef]
caddn %d14, %d15, %d15, -256

# CHECK-INST: caddn %d14, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0xef]
caddn %d14, %d15, %d15, -129

# CHECK-INST: caddn %d14, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0xef]
caddn %d14, %d15, %d15, -1

# CHECK-INST: caddn %d14, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0xef]
caddn %d14, %d15, %d15, 0

# CHECK-INST: caddn %d14, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0xef]
caddn %d14, %d15, %d15, 1

# CHECK-INST: caddn %d14, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0xef]
caddn %d14, %d15, %d15, 128

# CHECK-INST: caddn %d14, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0xef]
caddn %d14, %d15, %d15, 255

# CHECK-INST: caddn %d15, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0xf0]
caddn %d15, %d0, %d0, -256

# CHECK-INST: caddn %d15, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0xf0]
caddn %d15, %d0, %d0, -129

# CHECK-INST: caddn %d15, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0xf0]
caddn %d15, %d0, %d0, -1

# CHECK-INST: caddn %d15, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0xf0]
caddn %d15, %d0, %d0, 0

# CHECK-INST: caddn %d15, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0xf0]
caddn %d15, %d0, %d0, 1

# CHECK-INST: caddn %d15, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0xf0]
caddn %d15, %d0, %d0, 128

# CHECK-INST: caddn %d15, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0xf0]
caddn %d15, %d0, %d0, 255

# CHECK-INST: caddn %d15, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0xf0]
caddn %d15, %d0, %d1, -256

# CHECK-INST: caddn %d15, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0xf0]
caddn %d15, %d0, %d1, -129

# CHECK-INST: caddn %d15, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0xf0]
caddn %d15, %d0, %d1, -1

# CHECK-INST: caddn %d15, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0xf0]
caddn %d15, %d0, %d1, 0

# CHECK-INST: caddn %d15, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0xf0]
caddn %d15, %d0, %d1, 1

# CHECK-INST: caddn %d15, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0xf0]
caddn %d15, %d0, %d1, 128

# CHECK-INST: caddn %d15, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0xf0]
caddn %d15, %d0, %d1, 255

# CHECK-INST: caddn %d15, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0xf0]
caddn %d15, %d0, %d14, -256

# CHECK-INST: caddn %d15, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0xf0]
caddn %d15, %d0, %d14, -129

# CHECK-INST: caddn %d15, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0xf0]
caddn %d15, %d0, %d14, -1

# CHECK-INST: caddn %d15, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0xf0]
caddn %d15, %d0, %d14, 0

# CHECK-INST: caddn %d15, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0xf0]
caddn %d15, %d0, %d14, 1

# CHECK-INST: caddn %d15, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0xf0]
caddn %d15, %d0, %d14, 128

# CHECK-INST: caddn %d15, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0xf0]
caddn %d15, %d0, %d14, 255

# CHECK-INST: caddn %d15, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0xf0]
caddn %d15, %d0, %d15, -256

# CHECK-INST: caddn %d15, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0xf0]
caddn %d15, %d0, %d15, -129

# CHECK-INST: caddn %d15, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0xf0]
caddn %d15, %d0, %d15, -1

# CHECK-INST: caddn %d15, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0xf0]
caddn %d15, %d0, %d15, 0

# CHECK-INST: caddn %d15, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0xf0]
caddn %d15, %d0, %d15, 1

# CHECK-INST: caddn %d15, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0xf0]
caddn %d15, %d0, %d15, 128

# CHECK-INST: caddn %d15, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0xf0]
caddn %d15, %d0, %d15, 255

# CHECK-INST: caddn %d15, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0xf1]
caddn %d15, %d1, %d0, -256

# CHECK-INST: caddn %d15, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0xf1]
caddn %d15, %d1, %d0, -129

# CHECK-INST: caddn %d15, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0xf1]
caddn %d15, %d1, %d0, -1

# CHECK-INST: caddn %d15, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0xf1]
caddn %d15, %d1, %d0, 0

# CHECK-INST: caddn %d15, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0xf1]
caddn %d15, %d1, %d0, 1

# CHECK-INST: caddn %d15, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0xf1]
caddn %d15, %d1, %d0, 128

# CHECK-INST: caddn %d15, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0xf1]
caddn %d15, %d1, %d0, 255

# CHECK-INST: caddn %d15, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0xf1]
caddn %d15, %d1, %d1, -256

# CHECK-INST: caddn %d15, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0xf1]
caddn %d15, %d1, %d1, -129

# CHECK-INST: caddn %d15, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0xf1]
caddn %d15, %d1, %d1, -1

# CHECK-INST: caddn %d15, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0xf1]
caddn %d15, %d1, %d1, 0

# CHECK-INST: caddn %d15, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0xf1]
caddn %d15, %d1, %d1, 1

# CHECK-INST: caddn %d15, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0xf1]
caddn %d15, %d1, %d1, 128

# CHECK-INST: caddn %d15, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0xf1]
caddn %d15, %d1, %d1, 255

# CHECK-INST: caddn %d15, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0xf1]
caddn %d15, %d1, %d14, -256

# CHECK-INST: caddn %d15, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0xf1]
caddn %d15, %d1, %d14, -129

# CHECK-INST: caddn %d15, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0xf1]
caddn %d15, %d1, %d14, -1

# CHECK-INST: caddn %d15, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0xf1]
caddn %d15, %d1, %d14, 0

# CHECK-INST: caddn %d15, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0xf1]
caddn %d15, %d1, %d14, 1

# CHECK-INST: caddn %d15, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0xf1]
caddn %d15, %d1, %d14, 128

# CHECK-INST: caddn %d15, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0xf1]
caddn %d15, %d1, %d14, 255

# CHECK-INST: caddn %d15, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0xf1]
caddn %d15, %d1, %d15, -256

# CHECK-INST: caddn %d15, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0xf1]
caddn %d15, %d1, %d15, -129

# CHECK-INST: caddn %d15, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0xf1]
caddn %d15, %d1, %d15, -1

# CHECK-INST: caddn %d15, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0xf1]
caddn %d15, %d1, %d15, 0

# CHECK-INST: caddn %d15, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0xf1]
caddn %d15, %d1, %d15, 1

# CHECK-INST: caddn %d15, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0xf1]
caddn %d15, %d1, %d15, 128

# CHECK-INST: caddn %d15, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0xf1]
caddn %d15, %d1, %d15, 255

# CHECK-INST: caddn %d15, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0xfe]
caddn %d15, %d14, %d0, -256

# CHECK-INST: caddn %d15, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0xfe]
caddn %d15, %d14, %d0, -129

# CHECK-INST: caddn %d15, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0xfe]
caddn %d15, %d14, %d0, -1

# CHECK-INST: caddn %d15, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0xfe]
caddn %d15, %d14, %d0, 0

# CHECK-INST: caddn %d15, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0xfe]
caddn %d15, %d14, %d0, 1

# CHECK-INST: caddn %d15, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0xfe]
caddn %d15, %d14, %d0, 128

# CHECK-INST: caddn %d15, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0xfe]
caddn %d15, %d14, %d0, 255

# CHECK-INST: caddn %d15, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0xfe]
caddn %d15, %d14, %d1, -256

# CHECK-INST: caddn %d15, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0xfe]
caddn %d15, %d14, %d1, -129

# CHECK-INST: caddn %d15, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0xfe]
caddn %d15, %d14, %d1, -1

# CHECK-INST: caddn %d15, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0xfe]
caddn %d15, %d14, %d1, 0

# CHECK-INST: caddn %d15, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0xfe]
caddn %d15, %d14, %d1, 1

# CHECK-INST: caddn %d15, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0xfe]
caddn %d15, %d14, %d1, 128

# CHECK-INST: caddn %d15, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0xfe]
caddn %d15, %d14, %d1, 255

# CHECK-INST: caddn %d15, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0xfe]
caddn %d15, %d14, %d14, -256

# CHECK-INST: caddn %d15, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0xfe]
caddn %d15, %d14, %d14, -129

# CHECK-INST: caddn %d15, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0xfe]
caddn %d15, %d14, %d14, -1

# CHECK-INST: caddn %d15, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0xfe]
caddn %d15, %d14, %d14, 0

# CHECK-INST: caddn %d15, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0xfe]
caddn %d15, %d14, %d14, 1

# CHECK-INST: caddn %d15, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0xfe]
caddn %d15, %d14, %d14, 128

# CHECK-INST: caddn %d15, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0xfe]
caddn %d15, %d14, %d14, 255

# CHECK-INST: caddn %d15, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0xfe]
caddn %d15, %d14, %d15, -256

# CHECK-INST: caddn %d15, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0xfe]
caddn %d15, %d14, %d15, -129

# CHECK-INST: caddn %d15, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0xfe]
caddn %d15, %d14, %d15, -1

# CHECK-INST: caddn %d15, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0xfe]
caddn %d15, %d14, %d15, 0

# CHECK-INST: caddn %d15, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0xfe]
caddn %d15, %d14, %d15, 1

# CHECK-INST: caddn %d15, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0xfe]
caddn %d15, %d14, %d15, 128

# CHECK-INST: caddn %d15, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0xfe]
caddn %d15, %d14, %d15, 255

# CHECK-INST: caddn %d15, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x30,0xff]
caddn %d15, %d15, %d0, -256

# CHECK-INST: caddn %d15, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x37,0xff]
caddn %d15, %d15, %d0, -129

# CHECK-INST: caddn %d15, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x3f,0xff]
caddn %d15, %d15, %d0, -1

# CHECK-INST: caddn %d15, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x20,0xff]
caddn %d15, %d15, %d0, 0

# CHECK-INST: caddn %d15, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x20,0xff]
caddn %d15, %d15, %d0, 1

# CHECK-INST: caddn %d15, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x28,0xff]
caddn %d15, %d15, %d0, 128

# CHECK-INST: caddn %d15, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x2f,0xff]
caddn %d15, %d15, %d0, 255

# CHECK-INST: caddn %d15, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x30,0xff]
caddn %d15, %d15, %d1, -256

# CHECK-INST: caddn %d15, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x37,0xff]
caddn %d15, %d15, %d1, -129

# CHECK-INST: caddn %d15, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x3f,0xff]
caddn %d15, %d15, %d1, -1

# CHECK-INST: caddn %d15, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x20,0xff]
caddn %d15, %d15, %d1, 0

# CHECK-INST: caddn %d15, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x20,0xff]
caddn %d15, %d15, %d1, 1

# CHECK-INST: caddn %d15, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x28,0xff]
caddn %d15, %d15, %d1, 128

# CHECK-INST: caddn %d15, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x2f,0xff]
caddn %d15, %d15, %d1, 255

# CHECK-INST: caddn %d15, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x30,0xff]
caddn %d15, %d15, %d14, -256

# CHECK-INST: caddn %d15, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x37,0xff]
caddn %d15, %d15, %d14, -129

# CHECK-INST: caddn %d15, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x3f,0xff]
caddn %d15, %d15, %d14, -1

# CHECK-INST: caddn %d15, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x20,0xff]
caddn %d15, %d15, %d14, 0

# CHECK-INST: caddn %d15, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x20,0xff]
caddn %d15, %d15, %d14, 1

# CHECK-INST: caddn %d15, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x28,0xff]
caddn %d15, %d15, %d14, 128

# CHECK-INST: caddn %d15, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x2f,0xff]
caddn %d15, %d15, %d14, 255

# CHECK-INST: caddn %d15, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x30,0xff]
caddn %d15, %d15, %d15, -256

# CHECK-INST: caddn %d15, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x37,0xff]
caddn %d15, %d15, %d15, -129

# CHECK-INST: caddn %d15, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x3f,0xff]
caddn %d15, %d15, %d15, -1

# CHECK-INST: caddn %d15, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x20,0xff]
caddn %d15, %d15, %d15, 0

# CHECK-INST: caddn %d15, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x20,0xff]
caddn %d15, %d15, %d15, 1

# CHECK-INST: caddn %d15, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x28,0xff]
caddn %d15, %d15, %d15, 128

# CHECK-INST: caddn %d15, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x2f,0xff]
caddn %d15, %d15, %d15, 255

# CHECK-INST: csub %d0, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0x00]
csub %d0, %d0, %d0, %d0

# CHECK-INST: csub %d0, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0x00]
csub %d0, %d0, %d0, %d1

# CHECK-INST: csub %d0, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0x00]
csub %d0, %d0, %d0, %d14

# CHECK-INST: csub %d0, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0x00]
csub %d0, %d0, %d0, %d15

# CHECK-INST: csub %d0, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0x00]
csub %d0, %d0, %d1, %d0

# CHECK-INST: csub %d0, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0x00]
csub %d0, %d0, %d1, %d1

# CHECK-INST: csub %d0, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0x00]
csub %d0, %d0, %d1, %d14

# CHECK-INST: csub %d0, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0x00]
csub %d0, %d0, %d1, %d15

# CHECK-INST: csub %d0, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0x00]
csub %d0, %d0, %d14, %d0

# CHECK-INST: csub %d0, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0x00]
csub %d0, %d0, %d14, %d1

# CHECK-INST: csub %d0, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0x00]
csub %d0, %d0, %d14, %d14

# CHECK-INST: csub %d0, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0x00]
csub %d0, %d0, %d14, %d15

# CHECK-INST: csub %d0, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0x00]
csub %d0, %d0, %d15, %d0

# CHECK-INST: csub %d0, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0x00]
csub %d0, %d0, %d15, %d1

# CHECK-INST: csub %d0, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0x00]
csub %d0, %d0, %d15, %d14

# CHECK-INST: csub %d0, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0x00]
csub %d0, %d0, %d15, %d15

# CHECK-INST: csub %d0, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0x01]
csub %d0, %d1, %d0, %d0

# CHECK-INST: csub %d0, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0x01]
csub %d0, %d1, %d0, %d1

# CHECK-INST: csub %d0, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0x01]
csub %d0, %d1, %d0, %d14

# CHECK-INST: csub %d0, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0x01]
csub %d0, %d1, %d0, %d15

# CHECK-INST: csub %d0, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0x01]
csub %d0, %d1, %d1, %d0

# CHECK-INST: csub %d0, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0x01]
csub %d0, %d1, %d1, %d1

# CHECK-INST: csub %d0, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0x01]
csub %d0, %d1, %d1, %d14

# CHECK-INST: csub %d0, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0x01]
csub %d0, %d1, %d1, %d15

# CHECK-INST: csub %d0, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0x01]
csub %d0, %d1, %d14, %d0

# CHECK-INST: csub %d0, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0x01]
csub %d0, %d1, %d14, %d1

# CHECK-INST: csub %d0, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0x01]
csub %d0, %d1, %d14, %d14

# CHECK-INST: csub %d0, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0x01]
csub %d0, %d1, %d14, %d15

# CHECK-INST: csub %d0, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0x01]
csub %d0, %d1, %d15, %d0

# CHECK-INST: csub %d0, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0x01]
csub %d0, %d1, %d15, %d1

# CHECK-INST: csub %d0, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0x01]
csub %d0, %d1, %d15, %d14

# CHECK-INST: csub %d0, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0x01]
csub %d0, %d1, %d15, %d15

# CHECK-INST: csub %d0, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0x0e]
csub %d0, %d14, %d0, %d0

# CHECK-INST: csub %d0, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0x0e]
csub %d0, %d14, %d0, %d1

# CHECK-INST: csub %d0, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0x0e]
csub %d0, %d14, %d0, %d14

# CHECK-INST: csub %d0, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0x0e]
csub %d0, %d14, %d0, %d15

# CHECK-INST: csub %d0, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0x0e]
csub %d0, %d14, %d1, %d0

# CHECK-INST: csub %d0, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0x0e]
csub %d0, %d14, %d1, %d1

# CHECK-INST: csub %d0, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0x0e]
csub %d0, %d14, %d1, %d14

# CHECK-INST: csub %d0, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0x0e]
csub %d0, %d14, %d1, %d15

# CHECK-INST: csub %d0, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0x0e]
csub %d0, %d14, %d14, %d0

# CHECK-INST: csub %d0, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0x0e]
csub %d0, %d14, %d14, %d1

# CHECK-INST: csub %d0, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0x0e]
csub %d0, %d14, %d14, %d14

# CHECK-INST: csub %d0, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0x0e]
csub %d0, %d14, %d14, %d15

# CHECK-INST: csub %d0, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0x0e]
csub %d0, %d14, %d15, %d0

# CHECK-INST: csub %d0, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0x0e]
csub %d0, %d14, %d15, %d1

# CHECK-INST: csub %d0, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0x0e]
csub %d0, %d14, %d15, %d14

# CHECK-INST: csub %d0, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0x0e]
csub %d0, %d14, %d15, %d15

# CHECK-INST: csub %d0, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0x0f]
csub %d0, %d15, %d0, %d0

# CHECK-INST: csub %d0, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0x0f]
csub %d0, %d15, %d0, %d1

# CHECK-INST: csub %d0, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0x0f]
csub %d0, %d15, %d0, %d14

# CHECK-INST: csub %d0, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0x0f]
csub %d0, %d15, %d0, %d15

# CHECK-INST: csub %d0, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0x0f]
csub %d0, %d15, %d1, %d0

# CHECK-INST: csub %d0, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0x0f]
csub %d0, %d15, %d1, %d1

# CHECK-INST: csub %d0, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0x0f]
csub %d0, %d15, %d1, %d14

# CHECK-INST: csub %d0, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0x0f]
csub %d0, %d15, %d1, %d15

# CHECK-INST: csub %d0, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0x0f]
csub %d0, %d15, %d14, %d0

# CHECK-INST: csub %d0, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0x0f]
csub %d0, %d15, %d14, %d1

# CHECK-INST: csub %d0, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0x0f]
csub %d0, %d15, %d14, %d14

# CHECK-INST: csub %d0, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0x0f]
csub %d0, %d15, %d14, %d15

# CHECK-INST: csub %d0, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0x0f]
csub %d0, %d15, %d15, %d0

# CHECK-INST: csub %d0, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0x0f]
csub %d0, %d15, %d15, %d1

# CHECK-INST: csub %d0, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0x0f]
csub %d0, %d15, %d15, %d14

# CHECK-INST: csub %d0, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0x0f]
csub %d0, %d15, %d15, %d15

# CHECK-INST: csub %d1, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0x10]
csub %d1, %d0, %d0, %d0

# CHECK-INST: csub %d1, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0x10]
csub %d1, %d0, %d0, %d1

# CHECK-INST: csub %d1, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0x10]
csub %d1, %d0, %d0, %d14

# CHECK-INST: csub %d1, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0x10]
csub %d1, %d0, %d0, %d15

# CHECK-INST: csub %d1, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0x10]
csub %d1, %d0, %d1, %d0

# CHECK-INST: csub %d1, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0x10]
csub %d1, %d0, %d1, %d1

# CHECK-INST: csub %d1, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0x10]
csub %d1, %d0, %d1, %d14

# CHECK-INST: csub %d1, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0x10]
csub %d1, %d0, %d1, %d15

# CHECK-INST: csub %d1, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0x10]
csub %d1, %d0, %d14, %d0

# CHECK-INST: csub %d1, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0x10]
csub %d1, %d0, %d14, %d1

# CHECK-INST: csub %d1, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0x10]
csub %d1, %d0, %d14, %d14

# CHECK-INST: csub %d1, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0x10]
csub %d1, %d0, %d14, %d15

# CHECK-INST: csub %d1, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0x10]
csub %d1, %d0, %d15, %d0

# CHECK-INST: csub %d1, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0x10]
csub %d1, %d0, %d15, %d1

# CHECK-INST: csub %d1, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0x10]
csub %d1, %d0, %d15, %d14

# CHECK-INST: csub %d1, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0x10]
csub %d1, %d0, %d15, %d15

# CHECK-INST: csub %d1, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0x11]
csub %d1, %d1, %d0, %d0

# CHECK-INST: csub %d1, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0x11]
csub %d1, %d1, %d0, %d1

# CHECK-INST: csub %d1, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0x11]
csub %d1, %d1, %d0, %d14

# CHECK-INST: csub %d1, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0x11]
csub %d1, %d1, %d0, %d15

# CHECK-INST: csub %d1, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0x11]
csub %d1, %d1, %d1, %d0

# CHECK-INST: csub %d1, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0x11]
csub %d1, %d1, %d1, %d1

# CHECK-INST: csub %d1, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0x11]
csub %d1, %d1, %d1, %d14

# CHECK-INST: csub %d1, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0x11]
csub %d1, %d1, %d1, %d15

# CHECK-INST: csub %d1, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0x11]
csub %d1, %d1, %d14, %d0

# CHECK-INST: csub %d1, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0x11]
csub %d1, %d1, %d14, %d1

# CHECK-INST: csub %d1, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0x11]
csub %d1, %d1, %d14, %d14

# CHECK-INST: csub %d1, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0x11]
csub %d1, %d1, %d14, %d15

# CHECK-INST: csub %d1, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0x11]
csub %d1, %d1, %d15, %d0

# CHECK-INST: csub %d1, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0x11]
csub %d1, %d1, %d15, %d1

# CHECK-INST: csub %d1, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0x11]
csub %d1, %d1, %d15, %d14

# CHECK-INST: csub %d1, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0x11]
csub %d1, %d1, %d15, %d15

# CHECK-INST: csub %d1, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0x1e]
csub %d1, %d14, %d0, %d0

# CHECK-INST: csub %d1, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0x1e]
csub %d1, %d14, %d0, %d1

# CHECK-INST: csub %d1, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0x1e]
csub %d1, %d14, %d0, %d14

# CHECK-INST: csub %d1, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0x1e]
csub %d1, %d14, %d0, %d15

# CHECK-INST: csub %d1, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0x1e]
csub %d1, %d14, %d1, %d0

# CHECK-INST: csub %d1, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0x1e]
csub %d1, %d14, %d1, %d1

# CHECK-INST: csub %d1, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0x1e]
csub %d1, %d14, %d1, %d14

# CHECK-INST: csub %d1, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0x1e]
csub %d1, %d14, %d1, %d15

# CHECK-INST: csub %d1, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0x1e]
csub %d1, %d14, %d14, %d0

# CHECK-INST: csub %d1, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0x1e]
csub %d1, %d14, %d14, %d1

# CHECK-INST: csub %d1, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0x1e]
csub %d1, %d14, %d14, %d14

# CHECK-INST: csub %d1, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0x1e]
csub %d1, %d14, %d14, %d15

# CHECK-INST: csub %d1, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0x1e]
csub %d1, %d14, %d15, %d0

# CHECK-INST: csub %d1, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0x1e]
csub %d1, %d14, %d15, %d1

# CHECK-INST: csub %d1, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0x1e]
csub %d1, %d14, %d15, %d14

# CHECK-INST: csub %d1, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0x1e]
csub %d1, %d14, %d15, %d15

# CHECK-INST: csub %d1, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0x1f]
csub %d1, %d15, %d0, %d0

# CHECK-INST: csub %d1, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0x1f]
csub %d1, %d15, %d0, %d1

# CHECK-INST: csub %d1, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0x1f]
csub %d1, %d15, %d0, %d14

# CHECK-INST: csub %d1, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0x1f]
csub %d1, %d15, %d0, %d15

# CHECK-INST: csub %d1, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0x1f]
csub %d1, %d15, %d1, %d0

# CHECK-INST: csub %d1, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0x1f]
csub %d1, %d15, %d1, %d1

# CHECK-INST: csub %d1, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0x1f]
csub %d1, %d15, %d1, %d14

# CHECK-INST: csub %d1, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0x1f]
csub %d1, %d15, %d1, %d15

# CHECK-INST: csub %d1, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0x1f]
csub %d1, %d15, %d14, %d0

# CHECK-INST: csub %d1, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0x1f]
csub %d1, %d15, %d14, %d1

# CHECK-INST: csub %d1, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0x1f]
csub %d1, %d15, %d14, %d14

# CHECK-INST: csub %d1, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0x1f]
csub %d1, %d15, %d14, %d15

# CHECK-INST: csub %d1, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0x1f]
csub %d1, %d15, %d15, %d0

# CHECK-INST: csub %d1, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0x1f]
csub %d1, %d15, %d15, %d1

# CHECK-INST: csub %d1, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0x1f]
csub %d1, %d15, %d15, %d14

# CHECK-INST: csub %d1, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0x1f]
csub %d1, %d15, %d15, %d15

# CHECK-INST: csub %d14, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0xe0]
csub %d14, %d0, %d0, %d0

# CHECK-INST: csub %d14, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0xe0]
csub %d14, %d0, %d0, %d1

# CHECK-INST: csub %d14, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0xe0]
csub %d14, %d0, %d0, %d14

# CHECK-INST: csub %d14, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0xe0]
csub %d14, %d0, %d0, %d15

# CHECK-INST: csub %d14, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0xe0]
csub %d14, %d0, %d1, %d0

# CHECK-INST: csub %d14, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0xe0]
csub %d14, %d0, %d1, %d1

# CHECK-INST: csub %d14, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0xe0]
csub %d14, %d0, %d1, %d14

# CHECK-INST: csub %d14, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0xe0]
csub %d14, %d0, %d1, %d15

# CHECK-INST: csub %d14, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0xe0]
csub %d14, %d0, %d14, %d0

# CHECK-INST: csub %d14, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0xe0]
csub %d14, %d0, %d14, %d1

# CHECK-INST: csub %d14, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0xe0]
csub %d14, %d0, %d14, %d14

# CHECK-INST: csub %d14, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0xe0]
csub %d14, %d0, %d14, %d15

# CHECK-INST: csub %d14, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0xe0]
csub %d14, %d0, %d15, %d0

# CHECK-INST: csub %d14, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0xe0]
csub %d14, %d0, %d15, %d1

# CHECK-INST: csub %d14, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0xe0]
csub %d14, %d0, %d15, %d14

# CHECK-INST: csub %d14, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0xe0]
csub %d14, %d0, %d15, %d15

# CHECK-INST: csub %d14, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0xe1]
csub %d14, %d1, %d0, %d0

# CHECK-INST: csub %d14, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0xe1]
csub %d14, %d1, %d0, %d1

# CHECK-INST: csub %d14, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0xe1]
csub %d14, %d1, %d0, %d14

# CHECK-INST: csub %d14, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0xe1]
csub %d14, %d1, %d0, %d15

# CHECK-INST: csub %d14, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0xe1]
csub %d14, %d1, %d1, %d0

# CHECK-INST: csub %d14, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0xe1]
csub %d14, %d1, %d1, %d1

# CHECK-INST: csub %d14, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0xe1]
csub %d14, %d1, %d1, %d14

# CHECK-INST: csub %d14, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0xe1]
csub %d14, %d1, %d1, %d15

# CHECK-INST: csub %d14, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0xe1]
csub %d14, %d1, %d14, %d0

# CHECK-INST: csub %d14, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0xe1]
csub %d14, %d1, %d14, %d1

# CHECK-INST: csub %d14, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0xe1]
csub %d14, %d1, %d14, %d14

# CHECK-INST: csub %d14, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0xe1]
csub %d14, %d1, %d14, %d15

# CHECK-INST: csub %d14, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0xe1]
csub %d14, %d1, %d15, %d0

# CHECK-INST: csub %d14, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0xe1]
csub %d14, %d1, %d15, %d1

# CHECK-INST: csub %d14, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0xe1]
csub %d14, %d1, %d15, %d14

# CHECK-INST: csub %d14, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0xe1]
csub %d14, %d1, %d15, %d15

# CHECK-INST: csub %d14, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0xee]
csub %d14, %d14, %d0, %d0

# CHECK-INST: csub %d14, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0xee]
csub %d14, %d14, %d0, %d1

# CHECK-INST: csub %d14, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0xee]
csub %d14, %d14, %d0, %d14

# CHECK-INST: csub %d14, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0xee]
csub %d14, %d14, %d0, %d15

# CHECK-INST: csub %d14, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0xee]
csub %d14, %d14, %d1, %d0

# CHECK-INST: csub %d14, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0xee]
csub %d14, %d14, %d1, %d1

# CHECK-INST: csub %d14, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0xee]
csub %d14, %d14, %d1, %d14

# CHECK-INST: csub %d14, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0xee]
csub %d14, %d14, %d1, %d15

# CHECK-INST: csub %d14, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0xee]
csub %d14, %d14, %d14, %d0

# CHECK-INST: csub %d14, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0xee]
csub %d14, %d14, %d14, %d1

# CHECK-INST: csub %d14, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0xee]
csub %d14, %d14, %d14, %d14

# CHECK-INST: csub %d14, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0xee]
csub %d14, %d14, %d14, %d15

# CHECK-INST: csub %d14, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0xee]
csub %d14, %d14, %d15, %d0

# CHECK-INST: csub %d14, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0xee]
csub %d14, %d14, %d15, %d1

# CHECK-INST: csub %d14, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0xee]
csub %d14, %d14, %d15, %d14

# CHECK-INST: csub %d14, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0xee]
csub %d14, %d14, %d15, %d15

# CHECK-INST: csub %d14, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0xef]
csub %d14, %d15, %d0, %d0

# CHECK-INST: csub %d14, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0xef]
csub %d14, %d15, %d0, %d1

# CHECK-INST: csub %d14, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0xef]
csub %d14, %d15, %d0, %d14

# CHECK-INST: csub %d14, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0xef]
csub %d14, %d15, %d0, %d15

# CHECK-INST: csub %d14, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0xef]
csub %d14, %d15, %d1, %d0

# CHECK-INST: csub %d14, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0xef]
csub %d14, %d15, %d1, %d1

# CHECK-INST: csub %d14, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0xef]
csub %d14, %d15, %d1, %d14

# CHECK-INST: csub %d14, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0xef]
csub %d14, %d15, %d1, %d15

# CHECK-INST: csub %d14, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0xef]
csub %d14, %d15, %d14, %d0

# CHECK-INST: csub %d14, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0xef]
csub %d14, %d15, %d14, %d1

# CHECK-INST: csub %d14, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0xef]
csub %d14, %d15, %d14, %d14

# CHECK-INST: csub %d14, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0xef]
csub %d14, %d15, %d14, %d15

# CHECK-INST: csub %d14, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0xef]
csub %d14, %d15, %d15, %d0

# CHECK-INST: csub %d14, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0xef]
csub %d14, %d15, %d15, %d1

# CHECK-INST: csub %d14, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0xef]
csub %d14, %d15, %d15, %d14

# CHECK-INST: csub %d14, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0xef]
csub %d14, %d15, %d15, %d15

# CHECK-INST: csub %d15, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0xf0]
csub %d15, %d0, %d0, %d0

# CHECK-INST: csub %d15, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0xf0]
csub %d15, %d0, %d0, %d1

# CHECK-INST: csub %d15, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0xf0]
csub %d15, %d0, %d0, %d14

# CHECK-INST: csub %d15, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0xf0]
csub %d15, %d0, %d0, %d15

# CHECK-INST: csub %d15, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0xf0]
csub %d15, %d0, %d1, %d0

# CHECK-INST: csub %d15, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0xf0]
csub %d15, %d0, %d1, %d1

# CHECK-INST: csub %d15, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0xf0]
csub %d15, %d0, %d1, %d14

# CHECK-INST: csub %d15, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0xf0]
csub %d15, %d0, %d1, %d15

# CHECK-INST: csub %d15, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0xf0]
csub %d15, %d0, %d14, %d0

# CHECK-INST: csub %d15, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0xf0]
csub %d15, %d0, %d14, %d1

# CHECK-INST: csub %d15, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0xf0]
csub %d15, %d0, %d14, %d14

# CHECK-INST: csub %d15, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0xf0]
csub %d15, %d0, %d14, %d15

# CHECK-INST: csub %d15, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0xf0]
csub %d15, %d0, %d15, %d0

# CHECK-INST: csub %d15, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0xf0]
csub %d15, %d0, %d15, %d1

# CHECK-INST: csub %d15, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0xf0]
csub %d15, %d0, %d15, %d14

# CHECK-INST: csub %d15, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0xf0]
csub %d15, %d0, %d15, %d15

# CHECK-INST: csub %d15, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0xf1]
csub %d15, %d1, %d0, %d0

# CHECK-INST: csub %d15, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0xf1]
csub %d15, %d1, %d0, %d1

# CHECK-INST: csub %d15, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0xf1]
csub %d15, %d1, %d0, %d14

# CHECK-INST: csub %d15, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0xf1]
csub %d15, %d1, %d0, %d15

# CHECK-INST: csub %d15, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0xf1]
csub %d15, %d1, %d1, %d0

# CHECK-INST: csub %d15, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0xf1]
csub %d15, %d1, %d1, %d1

# CHECK-INST: csub %d15, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0xf1]
csub %d15, %d1, %d1, %d14

# CHECK-INST: csub %d15, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0xf1]
csub %d15, %d1, %d1, %d15

# CHECK-INST: csub %d15, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0xf1]
csub %d15, %d1, %d14, %d0

# CHECK-INST: csub %d15, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0xf1]
csub %d15, %d1, %d14, %d1

# CHECK-INST: csub %d15, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0xf1]
csub %d15, %d1, %d14, %d14

# CHECK-INST: csub %d15, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0xf1]
csub %d15, %d1, %d14, %d15

# CHECK-INST: csub %d15, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0xf1]
csub %d15, %d1, %d15, %d0

# CHECK-INST: csub %d15, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0xf1]
csub %d15, %d1, %d15, %d1

# CHECK-INST: csub %d15, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0xf1]
csub %d15, %d1, %d15, %d14

# CHECK-INST: csub %d15, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0xf1]
csub %d15, %d1, %d15, %d15

# CHECK-INST: csub %d15, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0xfe]
csub %d15, %d14, %d0, %d0

# CHECK-INST: csub %d15, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0xfe]
csub %d15, %d14, %d0, %d1

# CHECK-INST: csub %d15, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0xfe]
csub %d15, %d14, %d0, %d14

# CHECK-INST: csub %d15, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0xfe]
csub %d15, %d14, %d0, %d15

# CHECK-INST: csub %d15, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0xfe]
csub %d15, %d14, %d1, %d0

# CHECK-INST: csub %d15, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0xfe]
csub %d15, %d14, %d1, %d1

# CHECK-INST: csub %d15, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0xfe]
csub %d15, %d14, %d1, %d14

# CHECK-INST: csub %d15, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0xfe]
csub %d15, %d14, %d1, %d15

# CHECK-INST: csub %d15, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0xfe]
csub %d15, %d14, %d14, %d0

# CHECK-INST: csub %d15, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0xfe]
csub %d15, %d14, %d14, %d1

# CHECK-INST: csub %d15, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0xfe]
csub %d15, %d14, %d14, %d14

# CHECK-INST: csub %d15, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0xfe]
csub %d15, %d14, %d14, %d15

# CHECK-INST: csub %d15, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0xfe]
csub %d15, %d14, %d15, %d0

# CHECK-INST: csub %d15, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0xfe]
csub %d15, %d14, %d15, %d1

# CHECK-INST: csub %d15, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0xfe]
csub %d15, %d14, %d15, %d14

# CHECK-INST: csub %d15, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0xfe]
csub %d15, %d14, %d15, %d15

# CHECK-INST: csub %d15, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x20,0xff]
csub %d15, %d15, %d0, %d0

# CHECK-INST: csub %d15, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x20,0xff]
csub %d15, %d15, %d0, %d1

# CHECK-INST: csub %d15, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x20,0xff]
csub %d15, %d15, %d0, %d14

# CHECK-INST: csub %d15, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x20,0xff]
csub %d15, %d15, %d0, %d15

# CHECK-INST: csub %d15, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x20,0xff]
csub %d15, %d15, %d1, %d0

# CHECK-INST: csub %d15, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x20,0xff]
csub %d15, %d15, %d1, %d1

# CHECK-INST: csub %d15, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x20,0xff]
csub %d15, %d15, %d1, %d14

# CHECK-INST: csub %d15, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x20,0xff]
csub %d15, %d15, %d1, %d15

# CHECK-INST: csub %d15, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x20,0xff]
csub %d15, %d15, %d14, %d0

# CHECK-INST: csub %d15, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x20,0xff]
csub %d15, %d15, %d14, %d1

# CHECK-INST: csub %d15, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x20,0xff]
csub %d15, %d15, %d14, %d14

# CHECK-INST: csub %d15, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x20,0xff]
csub %d15, %d15, %d14, %d15

# CHECK-INST: csub %d15, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x20,0xff]
csub %d15, %d15, %d15, %d0

# CHECK-INST: csub %d15, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x20,0xff]
csub %d15, %d15, %d15, %d1

# CHECK-INST: csub %d15, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x20,0xff]
csub %d15, %d15, %d15, %d14

# CHECK-INST: csub %d15, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x20,0xff]
csub %d15, %d15, %d15, %d15

# CHECK-INST: csubn %d0, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0x00]
csubn %d0, %d0, %d0, %d0

# CHECK-INST: csubn %d0, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0x00]
csubn %d0, %d0, %d0, %d1

# CHECK-INST: csubn %d0, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0x00]
csubn %d0, %d0, %d0, %d14

# CHECK-INST: csubn %d0, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0x00]
csubn %d0, %d0, %d0, %d15

# CHECK-INST: csubn %d0, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0x00]
csubn %d0, %d0, %d1, %d0

# CHECK-INST: csubn %d0, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0x00]
csubn %d0, %d0, %d1, %d1

# CHECK-INST: csubn %d0, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0x00]
csubn %d0, %d0, %d1, %d14

# CHECK-INST: csubn %d0, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0x00]
csubn %d0, %d0, %d1, %d15

# CHECK-INST: csubn %d0, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0x00]
csubn %d0, %d0, %d14, %d0

# CHECK-INST: csubn %d0, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0x00]
csubn %d0, %d0, %d14, %d1

# CHECK-INST: csubn %d0, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0x00]
csubn %d0, %d0, %d14, %d14

# CHECK-INST: csubn %d0, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0x00]
csubn %d0, %d0, %d14, %d15

# CHECK-INST: csubn %d0, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0x00]
csubn %d0, %d0, %d15, %d0

# CHECK-INST: csubn %d0, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0x00]
csubn %d0, %d0, %d15, %d1

# CHECK-INST: csubn %d0, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0x00]
csubn %d0, %d0, %d15, %d14

# CHECK-INST: csubn %d0, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0x00]
csubn %d0, %d0, %d15, %d15

# CHECK-INST: csubn %d0, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0x01]
csubn %d0, %d1, %d0, %d0

# CHECK-INST: csubn %d0, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0x01]
csubn %d0, %d1, %d0, %d1

# CHECK-INST: csubn %d0, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0x01]
csubn %d0, %d1, %d0, %d14

# CHECK-INST: csubn %d0, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0x01]
csubn %d0, %d1, %d0, %d15

# CHECK-INST: csubn %d0, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0x01]
csubn %d0, %d1, %d1, %d0

# CHECK-INST: csubn %d0, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0x01]
csubn %d0, %d1, %d1, %d1

# CHECK-INST: csubn %d0, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0x01]
csubn %d0, %d1, %d1, %d14

# CHECK-INST: csubn %d0, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0x01]
csubn %d0, %d1, %d1, %d15

# CHECK-INST: csubn %d0, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0x01]
csubn %d0, %d1, %d14, %d0

# CHECK-INST: csubn %d0, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0x01]
csubn %d0, %d1, %d14, %d1

# CHECK-INST: csubn %d0, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0x01]
csubn %d0, %d1, %d14, %d14

# CHECK-INST: csubn %d0, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0x01]
csubn %d0, %d1, %d14, %d15

# CHECK-INST: csubn %d0, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0x01]
csubn %d0, %d1, %d15, %d0

# CHECK-INST: csubn %d0, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0x01]
csubn %d0, %d1, %d15, %d1

# CHECK-INST: csubn %d0, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0x01]
csubn %d0, %d1, %d15, %d14

# CHECK-INST: csubn %d0, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0x01]
csubn %d0, %d1, %d15, %d15

# CHECK-INST: csubn %d0, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0x0e]
csubn %d0, %d14, %d0, %d0

# CHECK-INST: csubn %d0, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0x0e]
csubn %d0, %d14, %d0, %d1

# CHECK-INST: csubn %d0, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0x0e]
csubn %d0, %d14, %d0, %d14

# CHECK-INST: csubn %d0, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0x0e]
csubn %d0, %d14, %d0, %d15

# CHECK-INST: csubn %d0, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0x0e]
csubn %d0, %d14, %d1, %d0

# CHECK-INST: csubn %d0, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0x0e]
csubn %d0, %d14, %d1, %d1

# CHECK-INST: csubn %d0, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0x0e]
csubn %d0, %d14, %d1, %d14

# CHECK-INST: csubn %d0, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0x0e]
csubn %d0, %d14, %d1, %d15

# CHECK-INST: csubn %d0, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0x0e]
csubn %d0, %d14, %d14, %d0

# CHECK-INST: csubn %d0, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0x0e]
csubn %d0, %d14, %d14, %d1

# CHECK-INST: csubn %d0, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0x0e]
csubn %d0, %d14, %d14, %d14

# CHECK-INST: csubn %d0, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0x0e]
csubn %d0, %d14, %d14, %d15

# CHECK-INST: csubn %d0, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0x0e]
csubn %d0, %d14, %d15, %d0

# CHECK-INST: csubn %d0, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0x0e]
csubn %d0, %d14, %d15, %d1

# CHECK-INST: csubn %d0, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0x0e]
csubn %d0, %d14, %d15, %d14

# CHECK-INST: csubn %d0, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0x0e]
csubn %d0, %d14, %d15, %d15

# CHECK-INST: csubn %d0, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0x0f]
csubn %d0, %d15, %d0, %d0

# CHECK-INST: csubn %d0, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0x0f]
csubn %d0, %d15, %d0, %d1

# CHECK-INST: csubn %d0, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0x0f]
csubn %d0, %d15, %d0, %d14

# CHECK-INST: csubn %d0, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0x0f]
csubn %d0, %d15, %d0, %d15

# CHECK-INST: csubn %d0, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0x0f]
csubn %d0, %d15, %d1, %d0

# CHECK-INST: csubn %d0, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0x0f]
csubn %d0, %d15, %d1, %d1

# CHECK-INST: csubn %d0, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0x0f]
csubn %d0, %d15, %d1, %d14

# CHECK-INST: csubn %d0, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0x0f]
csubn %d0, %d15, %d1, %d15

# CHECK-INST: csubn %d0, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0x0f]
csubn %d0, %d15, %d14, %d0

# CHECK-INST: csubn %d0, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0x0f]
csubn %d0, %d15, %d14, %d1

# CHECK-INST: csubn %d0, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0x0f]
csubn %d0, %d15, %d14, %d14

# CHECK-INST: csubn %d0, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0x0f]
csubn %d0, %d15, %d14, %d15

# CHECK-INST: csubn %d0, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0x0f]
csubn %d0, %d15, %d15, %d0

# CHECK-INST: csubn %d0, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0x0f]
csubn %d0, %d15, %d15, %d1

# CHECK-INST: csubn %d0, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0x0f]
csubn %d0, %d15, %d15, %d14

# CHECK-INST: csubn %d0, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0x0f]
csubn %d0, %d15, %d15, %d15

# CHECK-INST: csubn %d1, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0x10]
csubn %d1, %d0, %d0, %d0

# CHECK-INST: csubn %d1, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0x10]
csubn %d1, %d0, %d0, %d1

# CHECK-INST: csubn %d1, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0x10]
csubn %d1, %d0, %d0, %d14

# CHECK-INST: csubn %d1, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0x10]
csubn %d1, %d0, %d0, %d15

# CHECK-INST: csubn %d1, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0x10]
csubn %d1, %d0, %d1, %d0

# CHECK-INST: csubn %d1, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0x10]
csubn %d1, %d0, %d1, %d1

# CHECK-INST: csubn %d1, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0x10]
csubn %d1, %d0, %d1, %d14

# CHECK-INST: csubn %d1, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0x10]
csubn %d1, %d0, %d1, %d15

# CHECK-INST: csubn %d1, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0x10]
csubn %d1, %d0, %d14, %d0

# CHECK-INST: csubn %d1, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0x10]
csubn %d1, %d0, %d14, %d1

# CHECK-INST: csubn %d1, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0x10]
csubn %d1, %d0, %d14, %d14

# CHECK-INST: csubn %d1, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0x10]
csubn %d1, %d0, %d14, %d15

# CHECK-INST: csubn %d1, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0x10]
csubn %d1, %d0, %d15, %d0

# CHECK-INST: csubn %d1, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0x10]
csubn %d1, %d0, %d15, %d1

# CHECK-INST: csubn %d1, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0x10]
csubn %d1, %d0, %d15, %d14

# CHECK-INST: csubn %d1, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0x10]
csubn %d1, %d0, %d15, %d15

# CHECK-INST: csubn %d1, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0x11]
csubn %d1, %d1, %d0, %d0

# CHECK-INST: csubn %d1, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0x11]
csubn %d1, %d1, %d0, %d1

# CHECK-INST: csubn %d1, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0x11]
csubn %d1, %d1, %d0, %d14

# CHECK-INST: csubn %d1, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0x11]
csubn %d1, %d1, %d0, %d15

# CHECK-INST: csubn %d1, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0x11]
csubn %d1, %d1, %d1, %d0

# CHECK-INST: csubn %d1, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0x11]
csubn %d1, %d1, %d1, %d1

# CHECK-INST: csubn %d1, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0x11]
csubn %d1, %d1, %d1, %d14

# CHECK-INST: csubn %d1, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0x11]
csubn %d1, %d1, %d1, %d15

# CHECK-INST: csubn %d1, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0x11]
csubn %d1, %d1, %d14, %d0

# CHECK-INST: csubn %d1, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0x11]
csubn %d1, %d1, %d14, %d1

# CHECK-INST: csubn %d1, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0x11]
csubn %d1, %d1, %d14, %d14

# CHECK-INST: csubn %d1, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0x11]
csubn %d1, %d1, %d14, %d15

# CHECK-INST: csubn %d1, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0x11]
csubn %d1, %d1, %d15, %d0

# CHECK-INST: csubn %d1, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0x11]
csubn %d1, %d1, %d15, %d1

# CHECK-INST: csubn %d1, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0x11]
csubn %d1, %d1, %d15, %d14

# CHECK-INST: csubn %d1, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0x11]
csubn %d1, %d1, %d15, %d15

# CHECK-INST: csubn %d1, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0x1e]
csubn %d1, %d14, %d0, %d0

# CHECK-INST: csubn %d1, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0x1e]
csubn %d1, %d14, %d0, %d1

# CHECK-INST: csubn %d1, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0x1e]
csubn %d1, %d14, %d0, %d14

# CHECK-INST: csubn %d1, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0x1e]
csubn %d1, %d14, %d0, %d15

# CHECK-INST: csubn %d1, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0x1e]
csubn %d1, %d14, %d1, %d0

# CHECK-INST: csubn %d1, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0x1e]
csubn %d1, %d14, %d1, %d1

# CHECK-INST: csubn %d1, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0x1e]
csubn %d1, %d14, %d1, %d14

# CHECK-INST: csubn %d1, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0x1e]
csubn %d1, %d14, %d1, %d15

# CHECK-INST: csubn %d1, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0x1e]
csubn %d1, %d14, %d14, %d0

# CHECK-INST: csubn %d1, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0x1e]
csubn %d1, %d14, %d14, %d1

# CHECK-INST: csubn %d1, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0x1e]
csubn %d1, %d14, %d14, %d14

# CHECK-INST: csubn %d1, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0x1e]
csubn %d1, %d14, %d14, %d15

# CHECK-INST: csubn %d1, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0x1e]
csubn %d1, %d14, %d15, %d0

# CHECK-INST: csubn %d1, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0x1e]
csubn %d1, %d14, %d15, %d1

# CHECK-INST: csubn %d1, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0x1e]
csubn %d1, %d14, %d15, %d14

# CHECK-INST: csubn %d1, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0x1e]
csubn %d1, %d14, %d15, %d15

# CHECK-INST: csubn %d1, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0x1f]
csubn %d1, %d15, %d0, %d0

# CHECK-INST: csubn %d1, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0x1f]
csubn %d1, %d15, %d0, %d1

# CHECK-INST: csubn %d1, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0x1f]
csubn %d1, %d15, %d0, %d14

# CHECK-INST: csubn %d1, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0x1f]
csubn %d1, %d15, %d0, %d15

# CHECK-INST: csubn %d1, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0x1f]
csubn %d1, %d15, %d1, %d0

# CHECK-INST: csubn %d1, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0x1f]
csubn %d1, %d15, %d1, %d1

# CHECK-INST: csubn %d1, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0x1f]
csubn %d1, %d15, %d1, %d14

# CHECK-INST: csubn %d1, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0x1f]
csubn %d1, %d15, %d1, %d15

# CHECK-INST: csubn %d1, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0x1f]
csubn %d1, %d15, %d14, %d0

# CHECK-INST: csubn %d1, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0x1f]
csubn %d1, %d15, %d14, %d1

# CHECK-INST: csubn %d1, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0x1f]
csubn %d1, %d15, %d14, %d14

# CHECK-INST: csubn %d1, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0x1f]
csubn %d1, %d15, %d14, %d15

# CHECK-INST: csubn %d1, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0x1f]
csubn %d1, %d15, %d15, %d0

# CHECK-INST: csubn %d1, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0x1f]
csubn %d1, %d15, %d15, %d1

# CHECK-INST: csubn %d1, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0x1f]
csubn %d1, %d15, %d15, %d14

# CHECK-INST: csubn %d1, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0x1f]
csubn %d1, %d15, %d15, %d15

# CHECK-INST: csubn %d14, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0xe0]
csubn %d14, %d0, %d0, %d0

# CHECK-INST: csubn %d14, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0xe0]
csubn %d14, %d0, %d0, %d1

# CHECK-INST: csubn %d14, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0xe0]
csubn %d14, %d0, %d0, %d14

# CHECK-INST: csubn %d14, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0xe0]
csubn %d14, %d0, %d0, %d15

# CHECK-INST: csubn %d14, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0xe0]
csubn %d14, %d0, %d1, %d0

# CHECK-INST: csubn %d14, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0xe0]
csubn %d14, %d0, %d1, %d1

# CHECK-INST: csubn %d14, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0xe0]
csubn %d14, %d0, %d1, %d14

# CHECK-INST: csubn %d14, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0xe0]
csubn %d14, %d0, %d1, %d15

# CHECK-INST: csubn %d14, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0xe0]
csubn %d14, %d0, %d14, %d0

# CHECK-INST: csubn %d14, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0xe0]
csubn %d14, %d0, %d14, %d1

# CHECK-INST: csubn %d14, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0xe0]
csubn %d14, %d0, %d14, %d14

# CHECK-INST: csubn %d14, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0xe0]
csubn %d14, %d0, %d14, %d15

# CHECK-INST: csubn %d14, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0xe0]
csubn %d14, %d0, %d15, %d0

# CHECK-INST: csubn %d14, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0xe0]
csubn %d14, %d0, %d15, %d1

# CHECK-INST: csubn %d14, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0xe0]
csubn %d14, %d0, %d15, %d14

# CHECK-INST: csubn %d14, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0xe0]
csubn %d14, %d0, %d15, %d15

# CHECK-INST: csubn %d14, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0xe1]
csubn %d14, %d1, %d0, %d0

# CHECK-INST: csubn %d14, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0xe1]
csubn %d14, %d1, %d0, %d1

# CHECK-INST: csubn %d14, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0xe1]
csubn %d14, %d1, %d0, %d14

# CHECK-INST: csubn %d14, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0xe1]
csubn %d14, %d1, %d0, %d15

# CHECK-INST: csubn %d14, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0xe1]
csubn %d14, %d1, %d1, %d0

# CHECK-INST: csubn %d14, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0xe1]
csubn %d14, %d1, %d1, %d1

# CHECK-INST: csubn %d14, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0xe1]
csubn %d14, %d1, %d1, %d14

# CHECK-INST: csubn %d14, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0xe1]
csubn %d14, %d1, %d1, %d15

# CHECK-INST: csubn %d14, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0xe1]
csubn %d14, %d1, %d14, %d0

# CHECK-INST: csubn %d14, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0xe1]
csubn %d14, %d1, %d14, %d1

# CHECK-INST: csubn %d14, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0xe1]
csubn %d14, %d1, %d14, %d14

# CHECK-INST: csubn %d14, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0xe1]
csubn %d14, %d1, %d14, %d15

# CHECK-INST: csubn %d14, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0xe1]
csubn %d14, %d1, %d15, %d0

# CHECK-INST: csubn %d14, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0xe1]
csubn %d14, %d1, %d15, %d1

# CHECK-INST: csubn %d14, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0xe1]
csubn %d14, %d1, %d15, %d14

# CHECK-INST: csubn %d14, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0xe1]
csubn %d14, %d1, %d15, %d15

# CHECK-INST: csubn %d14, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0xee]
csubn %d14, %d14, %d0, %d0

# CHECK-INST: csubn %d14, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0xee]
csubn %d14, %d14, %d0, %d1

# CHECK-INST: csubn %d14, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0xee]
csubn %d14, %d14, %d0, %d14

# CHECK-INST: csubn %d14, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0xee]
csubn %d14, %d14, %d0, %d15

# CHECK-INST: csubn %d14, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0xee]
csubn %d14, %d14, %d1, %d0

# CHECK-INST: csubn %d14, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0xee]
csubn %d14, %d14, %d1, %d1

# CHECK-INST: csubn %d14, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0xee]
csubn %d14, %d14, %d1, %d14

# CHECK-INST: csubn %d14, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0xee]
csubn %d14, %d14, %d1, %d15

# CHECK-INST: csubn %d14, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0xee]
csubn %d14, %d14, %d14, %d0

# CHECK-INST: csubn %d14, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0xee]
csubn %d14, %d14, %d14, %d1

# CHECK-INST: csubn %d14, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0xee]
csubn %d14, %d14, %d14, %d14

# CHECK-INST: csubn %d14, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0xee]
csubn %d14, %d14, %d14, %d15

# CHECK-INST: csubn %d14, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0xee]
csubn %d14, %d14, %d15, %d0

# CHECK-INST: csubn %d14, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0xee]
csubn %d14, %d14, %d15, %d1

# CHECK-INST: csubn %d14, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0xee]
csubn %d14, %d14, %d15, %d14

# CHECK-INST: csubn %d14, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0xee]
csubn %d14, %d14, %d15, %d15

# CHECK-INST: csubn %d14, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0xef]
csubn %d14, %d15, %d0, %d0

# CHECK-INST: csubn %d14, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0xef]
csubn %d14, %d15, %d0, %d1

# CHECK-INST: csubn %d14, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0xef]
csubn %d14, %d15, %d0, %d14

# CHECK-INST: csubn %d14, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0xef]
csubn %d14, %d15, %d0, %d15

# CHECK-INST: csubn %d14, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0xef]
csubn %d14, %d15, %d1, %d0

# CHECK-INST: csubn %d14, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0xef]
csubn %d14, %d15, %d1, %d1

# CHECK-INST: csubn %d14, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0xef]
csubn %d14, %d15, %d1, %d14

# CHECK-INST: csubn %d14, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0xef]
csubn %d14, %d15, %d1, %d15

# CHECK-INST: csubn %d14, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0xef]
csubn %d14, %d15, %d14, %d0

# CHECK-INST: csubn %d14, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0xef]
csubn %d14, %d15, %d14, %d1

# CHECK-INST: csubn %d14, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0xef]
csubn %d14, %d15, %d14, %d14

# CHECK-INST: csubn %d14, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0xef]
csubn %d14, %d15, %d14, %d15

# CHECK-INST: csubn %d14, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0xef]
csubn %d14, %d15, %d15, %d0

# CHECK-INST: csubn %d14, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0xef]
csubn %d14, %d15, %d15, %d1

# CHECK-INST: csubn %d14, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0xef]
csubn %d14, %d15, %d15, %d14

# CHECK-INST: csubn %d14, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0xef]
csubn %d14, %d15, %d15, %d15

# CHECK-INST: csubn %d15, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0xf0]
csubn %d15, %d0, %d0, %d0

# CHECK-INST: csubn %d15, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0xf0]
csubn %d15, %d0, %d0, %d1

# CHECK-INST: csubn %d15, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0xf0]
csubn %d15, %d0, %d0, %d14

# CHECK-INST: csubn %d15, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0xf0]
csubn %d15, %d0, %d0, %d15

# CHECK-INST: csubn %d15, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0xf0]
csubn %d15, %d0, %d1, %d0

# CHECK-INST: csubn %d15, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0xf0]
csubn %d15, %d0, %d1, %d1

# CHECK-INST: csubn %d15, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0xf0]
csubn %d15, %d0, %d1, %d14

# CHECK-INST: csubn %d15, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0xf0]
csubn %d15, %d0, %d1, %d15

# CHECK-INST: csubn %d15, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0xf0]
csubn %d15, %d0, %d14, %d0

# CHECK-INST: csubn %d15, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0xf0]
csubn %d15, %d0, %d14, %d1

# CHECK-INST: csubn %d15, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0xf0]
csubn %d15, %d0, %d14, %d14

# CHECK-INST: csubn %d15, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0xf0]
csubn %d15, %d0, %d14, %d15

# CHECK-INST: csubn %d15, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0xf0]
csubn %d15, %d0, %d15, %d0

# CHECK-INST: csubn %d15, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0xf0]
csubn %d15, %d0, %d15, %d1

# CHECK-INST: csubn %d15, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0xf0]
csubn %d15, %d0, %d15, %d14

# CHECK-INST: csubn %d15, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0xf0]
csubn %d15, %d0, %d15, %d15

# CHECK-INST: csubn %d15, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0xf1]
csubn %d15, %d1, %d0, %d0

# CHECK-INST: csubn %d15, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0xf1]
csubn %d15, %d1, %d0, %d1

# CHECK-INST: csubn %d15, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0xf1]
csubn %d15, %d1, %d0, %d14

# CHECK-INST: csubn %d15, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0xf1]
csubn %d15, %d1, %d0, %d15

# CHECK-INST: csubn %d15, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0xf1]
csubn %d15, %d1, %d1, %d0

# CHECK-INST: csubn %d15, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0xf1]
csubn %d15, %d1, %d1, %d1

# CHECK-INST: csubn %d15, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0xf1]
csubn %d15, %d1, %d1, %d14

# CHECK-INST: csubn %d15, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0xf1]
csubn %d15, %d1, %d1, %d15

# CHECK-INST: csubn %d15, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0xf1]
csubn %d15, %d1, %d14, %d0

# CHECK-INST: csubn %d15, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0xf1]
csubn %d15, %d1, %d14, %d1

# CHECK-INST: csubn %d15, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0xf1]
csubn %d15, %d1, %d14, %d14

# CHECK-INST: csubn %d15, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0xf1]
csubn %d15, %d1, %d14, %d15

# CHECK-INST: csubn %d15, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0xf1]
csubn %d15, %d1, %d15, %d0

# CHECK-INST: csubn %d15, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0xf1]
csubn %d15, %d1, %d15, %d1

# CHECK-INST: csubn %d15, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0xf1]
csubn %d15, %d1, %d15, %d14

# CHECK-INST: csubn %d15, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0xf1]
csubn %d15, %d1, %d15, %d15

# CHECK-INST: csubn %d15, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0xfe]
csubn %d15, %d14, %d0, %d0

# CHECK-INST: csubn %d15, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0xfe]
csubn %d15, %d14, %d0, %d1

# CHECK-INST: csubn %d15, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0xfe]
csubn %d15, %d14, %d0, %d14

# CHECK-INST: csubn %d15, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0xfe]
csubn %d15, %d14, %d0, %d15

# CHECK-INST: csubn %d15, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0xfe]
csubn %d15, %d14, %d1, %d0

# CHECK-INST: csubn %d15, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0xfe]
csubn %d15, %d14, %d1, %d1

# CHECK-INST: csubn %d15, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0xfe]
csubn %d15, %d14, %d1, %d14

# CHECK-INST: csubn %d15, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0xfe]
csubn %d15, %d14, %d1, %d15

# CHECK-INST: csubn %d15, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0xfe]
csubn %d15, %d14, %d14, %d0

# CHECK-INST: csubn %d15, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0xfe]
csubn %d15, %d14, %d14, %d1

# CHECK-INST: csubn %d15, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0xfe]
csubn %d15, %d14, %d14, %d14

# CHECK-INST: csubn %d15, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0xfe]
csubn %d15, %d14, %d14, %d15

# CHECK-INST: csubn %d15, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0xfe]
csubn %d15, %d14, %d15, %d0

# CHECK-INST: csubn %d15, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0xfe]
csubn %d15, %d14, %d15, %d1

# CHECK-INST: csubn %d15, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0xfe]
csubn %d15, %d14, %d15, %d14

# CHECK-INST: csubn %d15, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0xfe]
csubn %d15, %d14, %d15, %d15

# CHECK-INST: csubn %d15, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x30,0xff]
csubn %d15, %d15, %d0, %d0

# CHECK-INST: csubn %d15, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x30,0xff]
csubn %d15, %d15, %d0, %d1

# CHECK-INST: csubn %d15, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x30,0xff]
csubn %d15, %d15, %d0, %d14

# CHECK-INST: csubn %d15, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x30,0xff]
csubn %d15, %d15, %d0, %d15

# CHECK-INST: csubn %d15, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x30,0xff]
csubn %d15, %d15, %d1, %d0

# CHECK-INST: csubn %d15, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x30,0xff]
csubn %d15, %d15, %d1, %d1

# CHECK-INST: csubn %d15, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x30,0xff]
csubn %d15, %d15, %d1, %d14

# CHECK-INST: csubn %d15, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x30,0xff]
csubn %d15, %d15, %d1, %d15

# CHECK-INST: csubn %d15, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x30,0xff]
csubn %d15, %d15, %d14, %d0

# CHECK-INST: csubn %d15, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x30,0xff]
csubn %d15, %d15, %d14, %d1

# CHECK-INST: csubn %d15, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x30,0xff]
csubn %d15, %d15, %d14, %d14

# CHECK-INST: csubn %d15, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x30,0xff]
csubn %d15, %d15, %d14, %d15

# CHECK-INST: csubn %d15, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x30,0xff]
csubn %d15, %d15, %d15, %d0

# CHECK-INST: csubn %d15, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x30,0xff]
csubn %d15, %d15, %d15, %d1

# CHECK-INST: csubn %d15, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x30,0xff]
csubn %d15, %d15, %d15, %d14

# CHECK-INST: csubn %d15, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x30,0xff]
csubn %d15, %d15, %d15, %d15

# CHECK-INST: sel %d0, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0x00]
sel %d0, %d0, %d0, %d0

# CHECK-INST: sel %d0, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0x00]
sel %d0, %d0, %d0, %d1

# CHECK-INST: sel %d0, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0x00]
sel %d0, %d0, %d0, %d14

# CHECK-INST: sel %d0, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0x00]
sel %d0, %d0, %d0, %d15

# CHECK-INST: sel %d0, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0x00]
sel %d0, %d0, %d1, %d0

# CHECK-INST: sel %d0, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0x00]
sel %d0, %d0, %d1, %d1

# CHECK-INST: sel %d0, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0x00]
sel %d0, %d0, %d1, %d14

# CHECK-INST: sel %d0, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0x00]
sel %d0, %d0, %d1, %d15

# CHECK-INST: sel %d0, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0x00]
sel %d0, %d0, %d14, %d0

# CHECK-INST: sel %d0, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0x00]
sel %d0, %d0, %d14, %d1

# CHECK-INST: sel %d0, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0x00]
sel %d0, %d0, %d14, %d14

# CHECK-INST: sel %d0, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0x00]
sel %d0, %d0, %d14, %d15

# CHECK-INST: sel %d0, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0x00]
sel %d0, %d0, %d15, %d0

# CHECK-INST: sel %d0, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0x00]
sel %d0, %d0, %d15, %d1

# CHECK-INST: sel %d0, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0x00]
sel %d0, %d0, %d15, %d14

# CHECK-INST: sel %d0, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0x00]
sel %d0, %d0, %d15, %d15

# CHECK-INST: sel %d0, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0x01]
sel %d0, %d1, %d0, %d0

# CHECK-INST: sel %d0, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0x01]
sel %d0, %d1, %d0, %d1

# CHECK-INST: sel %d0, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0x01]
sel %d0, %d1, %d0, %d14

# CHECK-INST: sel %d0, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0x01]
sel %d0, %d1, %d0, %d15

# CHECK-INST: sel %d0, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0x01]
sel %d0, %d1, %d1, %d0

# CHECK-INST: sel %d0, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0x01]
sel %d0, %d1, %d1, %d1

# CHECK-INST: sel %d0, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0x01]
sel %d0, %d1, %d1, %d14

# CHECK-INST: sel %d0, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0x01]
sel %d0, %d1, %d1, %d15

# CHECK-INST: sel %d0, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0x01]
sel %d0, %d1, %d14, %d0

# CHECK-INST: sel %d0, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0x01]
sel %d0, %d1, %d14, %d1

# CHECK-INST: sel %d0, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0x01]
sel %d0, %d1, %d14, %d14

# CHECK-INST: sel %d0, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0x01]
sel %d0, %d1, %d14, %d15

# CHECK-INST: sel %d0, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0x01]
sel %d0, %d1, %d15, %d0

# CHECK-INST: sel %d0, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0x01]
sel %d0, %d1, %d15, %d1

# CHECK-INST: sel %d0, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0x01]
sel %d0, %d1, %d15, %d14

# CHECK-INST: sel %d0, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0x01]
sel %d0, %d1, %d15, %d15

# CHECK-INST: sel %d0, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0x0e]
sel %d0, %d14, %d0, %d0

# CHECK-INST: sel %d0, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0x0e]
sel %d0, %d14, %d0, %d1

# CHECK-INST: sel %d0, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0x0e]
sel %d0, %d14, %d0, %d14

# CHECK-INST: sel %d0, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0x0e]
sel %d0, %d14, %d0, %d15

# CHECK-INST: sel %d0, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0x0e]
sel %d0, %d14, %d1, %d0

# CHECK-INST: sel %d0, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0x0e]
sel %d0, %d14, %d1, %d1

# CHECK-INST: sel %d0, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0x0e]
sel %d0, %d14, %d1, %d14

# CHECK-INST: sel %d0, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0x0e]
sel %d0, %d14, %d1, %d15

# CHECK-INST: sel %d0, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0x0e]
sel %d0, %d14, %d14, %d0

# CHECK-INST: sel %d0, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0x0e]
sel %d0, %d14, %d14, %d1

# CHECK-INST: sel %d0, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0x0e]
sel %d0, %d14, %d14, %d14

# CHECK-INST: sel %d0, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0x0e]
sel %d0, %d14, %d14, %d15

# CHECK-INST: sel %d0, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0x0e]
sel %d0, %d14, %d15, %d0

# CHECK-INST: sel %d0, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0x0e]
sel %d0, %d14, %d15, %d1

# CHECK-INST: sel %d0, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0x0e]
sel %d0, %d14, %d15, %d14

# CHECK-INST: sel %d0, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0x0e]
sel %d0, %d14, %d15, %d15

# CHECK-INST: sel %d0, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0x0f]
sel %d0, %d15, %d0, %d0

# CHECK-INST: sel %d0, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0x0f]
sel %d0, %d15, %d0, %d1

# CHECK-INST: sel %d0, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0x0f]
sel %d0, %d15, %d0, %d14

# CHECK-INST: sel %d0, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0x0f]
sel %d0, %d15, %d0, %d15

# CHECK-INST: sel %d0, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0x0f]
sel %d0, %d15, %d1, %d0

# CHECK-INST: sel %d0, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0x0f]
sel %d0, %d15, %d1, %d1

# CHECK-INST: sel %d0, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0x0f]
sel %d0, %d15, %d1, %d14

# CHECK-INST: sel %d0, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0x0f]
sel %d0, %d15, %d1, %d15

# CHECK-INST: sel %d0, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0x0f]
sel %d0, %d15, %d14, %d0

# CHECK-INST: sel %d0, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0x0f]
sel %d0, %d15, %d14, %d1

# CHECK-INST: sel %d0, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0x0f]
sel %d0, %d15, %d14, %d14

# CHECK-INST: sel %d0, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0x0f]
sel %d0, %d15, %d14, %d15

# CHECK-INST: sel %d0, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0x0f]
sel %d0, %d15, %d15, %d0

# CHECK-INST: sel %d0, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0x0f]
sel %d0, %d15, %d15, %d1

# CHECK-INST: sel %d0, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0x0f]
sel %d0, %d15, %d15, %d14

# CHECK-INST: sel %d0, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0x0f]
sel %d0, %d15, %d15, %d15

# CHECK-INST: sel %d1, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0x10]
sel %d1, %d0, %d0, %d0

# CHECK-INST: sel %d1, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0x10]
sel %d1, %d0, %d0, %d1

# CHECK-INST: sel %d1, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0x10]
sel %d1, %d0, %d0, %d14

# CHECK-INST: sel %d1, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0x10]
sel %d1, %d0, %d0, %d15

# CHECK-INST: sel %d1, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0x10]
sel %d1, %d0, %d1, %d0

# CHECK-INST: sel %d1, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0x10]
sel %d1, %d0, %d1, %d1

# CHECK-INST: sel %d1, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0x10]
sel %d1, %d0, %d1, %d14

# CHECK-INST: sel %d1, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0x10]
sel %d1, %d0, %d1, %d15

# CHECK-INST: sel %d1, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0x10]
sel %d1, %d0, %d14, %d0

# CHECK-INST: sel %d1, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0x10]
sel %d1, %d0, %d14, %d1

# CHECK-INST: sel %d1, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0x10]
sel %d1, %d0, %d14, %d14

# CHECK-INST: sel %d1, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0x10]
sel %d1, %d0, %d14, %d15

# CHECK-INST: sel %d1, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0x10]
sel %d1, %d0, %d15, %d0

# CHECK-INST: sel %d1, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0x10]
sel %d1, %d0, %d15, %d1

# CHECK-INST: sel %d1, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0x10]
sel %d1, %d0, %d15, %d14

# CHECK-INST: sel %d1, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0x10]
sel %d1, %d0, %d15, %d15

# CHECK-INST: sel %d1, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0x11]
sel %d1, %d1, %d0, %d0

# CHECK-INST: sel %d1, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0x11]
sel %d1, %d1, %d0, %d1

# CHECK-INST: sel %d1, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0x11]
sel %d1, %d1, %d0, %d14

# CHECK-INST: sel %d1, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0x11]
sel %d1, %d1, %d0, %d15

# CHECK-INST: sel %d1, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0x11]
sel %d1, %d1, %d1, %d0

# CHECK-INST: sel %d1, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0x11]
sel %d1, %d1, %d1, %d1

# CHECK-INST: sel %d1, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0x11]
sel %d1, %d1, %d1, %d14

# CHECK-INST: sel %d1, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0x11]
sel %d1, %d1, %d1, %d15

# CHECK-INST: sel %d1, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0x11]
sel %d1, %d1, %d14, %d0

# CHECK-INST: sel %d1, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0x11]
sel %d1, %d1, %d14, %d1

# CHECK-INST: sel %d1, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0x11]
sel %d1, %d1, %d14, %d14

# CHECK-INST: sel %d1, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0x11]
sel %d1, %d1, %d14, %d15

# CHECK-INST: sel %d1, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0x11]
sel %d1, %d1, %d15, %d0

# CHECK-INST: sel %d1, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0x11]
sel %d1, %d1, %d15, %d1

# CHECK-INST: sel %d1, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0x11]
sel %d1, %d1, %d15, %d14

# CHECK-INST: sel %d1, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0x11]
sel %d1, %d1, %d15, %d15

# CHECK-INST: sel %d1, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0x1e]
sel %d1, %d14, %d0, %d0

# CHECK-INST: sel %d1, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0x1e]
sel %d1, %d14, %d0, %d1

# CHECK-INST: sel %d1, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0x1e]
sel %d1, %d14, %d0, %d14

# CHECK-INST: sel %d1, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0x1e]
sel %d1, %d14, %d0, %d15

# CHECK-INST: sel %d1, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0x1e]
sel %d1, %d14, %d1, %d0

# CHECK-INST: sel %d1, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0x1e]
sel %d1, %d14, %d1, %d1

# CHECK-INST: sel %d1, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0x1e]
sel %d1, %d14, %d1, %d14

# CHECK-INST: sel %d1, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0x1e]
sel %d1, %d14, %d1, %d15

# CHECK-INST: sel %d1, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0x1e]
sel %d1, %d14, %d14, %d0

# CHECK-INST: sel %d1, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0x1e]
sel %d1, %d14, %d14, %d1

# CHECK-INST: sel %d1, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0x1e]
sel %d1, %d14, %d14, %d14

# CHECK-INST: sel %d1, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0x1e]
sel %d1, %d14, %d14, %d15

# CHECK-INST: sel %d1, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0x1e]
sel %d1, %d14, %d15, %d0

# CHECK-INST: sel %d1, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0x1e]
sel %d1, %d14, %d15, %d1

# CHECK-INST: sel %d1, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0x1e]
sel %d1, %d14, %d15, %d14

# CHECK-INST: sel %d1, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0x1e]
sel %d1, %d14, %d15, %d15

# CHECK-INST: sel %d1, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0x1f]
sel %d1, %d15, %d0, %d0

# CHECK-INST: sel %d1, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0x1f]
sel %d1, %d15, %d0, %d1

# CHECK-INST: sel %d1, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0x1f]
sel %d1, %d15, %d0, %d14

# CHECK-INST: sel %d1, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0x1f]
sel %d1, %d15, %d0, %d15

# CHECK-INST: sel %d1, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0x1f]
sel %d1, %d15, %d1, %d0

# CHECK-INST: sel %d1, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0x1f]
sel %d1, %d15, %d1, %d1

# CHECK-INST: sel %d1, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0x1f]
sel %d1, %d15, %d1, %d14

# CHECK-INST: sel %d1, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0x1f]
sel %d1, %d15, %d1, %d15

# CHECK-INST: sel %d1, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0x1f]
sel %d1, %d15, %d14, %d0

# CHECK-INST: sel %d1, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0x1f]
sel %d1, %d15, %d14, %d1

# CHECK-INST: sel %d1, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0x1f]
sel %d1, %d15, %d14, %d14

# CHECK-INST: sel %d1, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0x1f]
sel %d1, %d15, %d14, %d15

# CHECK-INST: sel %d1, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0x1f]
sel %d1, %d15, %d15, %d0

# CHECK-INST: sel %d1, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0x1f]
sel %d1, %d15, %d15, %d1

# CHECK-INST: sel %d1, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0x1f]
sel %d1, %d15, %d15, %d14

# CHECK-INST: sel %d1, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0x1f]
sel %d1, %d15, %d15, %d15

# CHECK-INST: sel %d14, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0xe0]
sel %d14, %d0, %d0, %d0

# CHECK-INST: sel %d14, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0xe0]
sel %d14, %d0, %d0, %d1

# CHECK-INST: sel %d14, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0xe0]
sel %d14, %d0, %d0, %d14

# CHECK-INST: sel %d14, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0xe0]
sel %d14, %d0, %d0, %d15

# CHECK-INST: sel %d14, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0xe0]
sel %d14, %d0, %d1, %d0

# CHECK-INST: sel %d14, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0xe0]
sel %d14, %d0, %d1, %d1

# CHECK-INST: sel %d14, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0xe0]
sel %d14, %d0, %d1, %d14

# CHECK-INST: sel %d14, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0xe0]
sel %d14, %d0, %d1, %d15

# CHECK-INST: sel %d14, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0xe0]
sel %d14, %d0, %d14, %d0

# CHECK-INST: sel %d14, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0xe0]
sel %d14, %d0, %d14, %d1

# CHECK-INST: sel %d14, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0xe0]
sel %d14, %d0, %d14, %d14

# CHECK-INST: sel %d14, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0xe0]
sel %d14, %d0, %d14, %d15

# CHECK-INST: sel %d14, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0xe0]
sel %d14, %d0, %d15, %d0

# CHECK-INST: sel %d14, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0xe0]
sel %d14, %d0, %d15, %d1

# CHECK-INST: sel %d14, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0xe0]
sel %d14, %d0, %d15, %d14

# CHECK-INST: sel %d14, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0xe0]
sel %d14, %d0, %d15, %d15

# CHECK-INST: sel %d14, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0xe1]
sel %d14, %d1, %d0, %d0

# CHECK-INST: sel %d14, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0xe1]
sel %d14, %d1, %d0, %d1

# CHECK-INST: sel %d14, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0xe1]
sel %d14, %d1, %d0, %d14

# CHECK-INST: sel %d14, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0xe1]
sel %d14, %d1, %d0, %d15

# CHECK-INST: sel %d14, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0xe1]
sel %d14, %d1, %d1, %d0

# CHECK-INST: sel %d14, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0xe1]
sel %d14, %d1, %d1, %d1

# CHECK-INST: sel %d14, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0xe1]
sel %d14, %d1, %d1, %d14

# CHECK-INST: sel %d14, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0xe1]
sel %d14, %d1, %d1, %d15

# CHECK-INST: sel %d14, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0xe1]
sel %d14, %d1, %d14, %d0

# CHECK-INST: sel %d14, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0xe1]
sel %d14, %d1, %d14, %d1

# CHECK-INST: sel %d14, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0xe1]
sel %d14, %d1, %d14, %d14

# CHECK-INST: sel %d14, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0xe1]
sel %d14, %d1, %d14, %d15

# CHECK-INST: sel %d14, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0xe1]
sel %d14, %d1, %d15, %d0

# CHECK-INST: sel %d14, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0xe1]
sel %d14, %d1, %d15, %d1

# CHECK-INST: sel %d14, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0xe1]
sel %d14, %d1, %d15, %d14

# CHECK-INST: sel %d14, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0xe1]
sel %d14, %d1, %d15, %d15

# CHECK-INST: sel %d14, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0xee]
sel %d14, %d14, %d0, %d0

# CHECK-INST: sel %d14, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0xee]
sel %d14, %d14, %d0, %d1

# CHECK-INST: sel %d14, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0xee]
sel %d14, %d14, %d0, %d14

# CHECK-INST: sel %d14, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0xee]
sel %d14, %d14, %d0, %d15

# CHECK-INST: sel %d14, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0xee]
sel %d14, %d14, %d1, %d0

# CHECK-INST: sel %d14, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0xee]
sel %d14, %d14, %d1, %d1

# CHECK-INST: sel %d14, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0xee]
sel %d14, %d14, %d1, %d14

# CHECK-INST: sel %d14, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0xee]
sel %d14, %d14, %d1, %d15

# CHECK-INST: sel %d14, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0xee]
sel %d14, %d14, %d14, %d0

# CHECK-INST: sel %d14, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0xee]
sel %d14, %d14, %d14, %d1

# CHECK-INST: sel %d14, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0xee]
sel %d14, %d14, %d14, %d14

# CHECK-INST: sel %d14, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0xee]
sel %d14, %d14, %d14, %d15

# CHECK-INST: sel %d14, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0xee]
sel %d14, %d14, %d15, %d0

# CHECK-INST: sel %d14, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0xee]
sel %d14, %d14, %d15, %d1

# CHECK-INST: sel %d14, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0xee]
sel %d14, %d14, %d15, %d14

# CHECK-INST: sel %d14, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0xee]
sel %d14, %d14, %d15, %d15

# CHECK-INST: sel %d14, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0xef]
sel %d14, %d15, %d0, %d0

# CHECK-INST: sel %d14, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0xef]
sel %d14, %d15, %d0, %d1

# CHECK-INST: sel %d14, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0xef]
sel %d14, %d15, %d0, %d14

# CHECK-INST: sel %d14, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0xef]
sel %d14, %d15, %d0, %d15

# CHECK-INST: sel %d14, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0xef]
sel %d14, %d15, %d1, %d0

# CHECK-INST: sel %d14, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0xef]
sel %d14, %d15, %d1, %d1

# CHECK-INST: sel %d14, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0xef]
sel %d14, %d15, %d1, %d14

# CHECK-INST: sel %d14, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0xef]
sel %d14, %d15, %d1, %d15

# CHECK-INST: sel %d14, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0xef]
sel %d14, %d15, %d14, %d0

# CHECK-INST: sel %d14, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0xef]
sel %d14, %d15, %d14, %d1

# CHECK-INST: sel %d14, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0xef]
sel %d14, %d15, %d14, %d14

# CHECK-INST: sel %d14, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0xef]
sel %d14, %d15, %d14, %d15

# CHECK-INST: sel %d14, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0xef]
sel %d14, %d15, %d15, %d0

# CHECK-INST: sel %d14, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0xef]
sel %d14, %d15, %d15, %d1

# CHECK-INST: sel %d14, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0xef]
sel %d14, %d15, %d15, %d14

# CHECK-INST: sel %d14, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0xef]
sel %d14, %d15, %d15, %d15

# CHECK-INST: sel %d15, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0xf0]
sel %d15, %d0, %d0, %d0

# CHECK-INST: sel %d15, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0xf0]
sel %d15, %d0, %d0, %d1

# CHECK-INST: sel %d15, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0xf0]
sel %d15, %d0, %d0, %d14

# CHECK-INST: sel %d15, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0xf0]
sel %d15, %d0, %d0, %d15

# CHECK-INST: sel %d15, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0xf0]
sel %d15, %d0, %d1, %d0

# CHECK-INST: sel %d15, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0xf0]
sel %d15, %d0, %d1, %d1

# CHECK-INST: sel %d15, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0xf0]
sel %d15, %d0, %d1, %d14

# CHECK-INST: sel %d15, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0xf0]
sel %d15, %d0, %d1, %d15

# CHECK-INST: sel %d15, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0xf0]
sel %d15, %d0, %d14, %d0

# CHECK-INST: sel %d15, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0xf0]
sel %d15, %d0, %d14, %d1

# CHECK-INST: sel %d15, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0xf0]
sel %d15, %d0, %d14, %d14

# CHECK-INST: sel %d15, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0xf0]
sel %d15, %d0, %d14, %d15

# CHECK-INST: sel %d15, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0xf0]
sel %d15, %d0, %d15, %d0

# CHECK-INST: sel %d15, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0xf0]
sel %d15, %d0, %d15, %d1

# CHECK-INST: sel %d15, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0xf0]
sel %d15, %d0, %d15, %d14

# CHECK-INST: sel %d15, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0xf0]
sel %d15, %d0, %d15, %d15

# CHECK-INST: sel %d15, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0xf1]
sel %d15, %d1, %d0, %d0

# CHECK-INST: sel %d15, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0xf1]
sel %d15, %d1, %d0, %d1

# CHECK-INST: sel %d15, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0xf1]
sel %d15, %d1, %d0, %d14

# CHECK-INST: sel %d15, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0xf1]
sel %d15, %d1, %d0, %d15

# CHECK-INST: sel %d15, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0xf1]
sel %d15, %d1, %d1, %d0

# CHECK-INST: sel %d15, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0xf1]
sel %d15, %d1, %d1, %d1

# CHECK-INST: sel %d15, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0xf1]
sel %d15, %d1, %d1, %d14

# CHECK-INST: sel %d15, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0xf1]
sel %d15, %d1, %d1, %d15

# CHECK-INST: sel %d15, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0xf1]
sel %d15, %d1, %d14, %d0

# CHECK-INST: sel %d15, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0xf1]
sel %d15, %d1, %d14, %d1

# CHECK-INST: sel %d15, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0xf1]
sel %d15, %d1, %d14, %d14

# CHECK-INST: sel %d15, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0xf1]
sel %d15, %d1, %d14, %d15

# CHECK-INST: sel %d15, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0xf1]
sel %d15, %d1, %d15, %d0

# CHECK-INST: sel %d15, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0xf1]
sel %d15, %d1, %d15, %d1

# CHECK-INST: sel %d15, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0xf1]
sel %d15, %d1, %d15, %d14

# CHECK-INST: sel %d15, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0xf1]
sel %d15, %d1, %d15, %d15

# CHECK-INST: sel %d15, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0xfe]
sel %d15, %d14, %d0, %d0

# CHECK-INST: sel %d15, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0xfe]
sel %d15, %d14, %d0, %d1

# CHECK-INST: sel %d15, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0xfe]
sel %d15, %d14, %d0, %d14

# CHECK-INST: sel %d15, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0xfe]
sel %d15, %d14, %d0, %d15

# CHECK-INST: sel %d15, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0xfe]
sel %d15, %d14, %d1, %d0

# CHECK-INST: sel %d15, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0xfe]
sel %d15, %d14, %d1, %d1

# CHECK-INST: sel %d15, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0xfe]
sel %d15, %d14, %d1, %d14

# CHECK-INST: sel %d15, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0xfe]
sel %d15, %d14, %d1, %d15

# CHECK-INST: sel %d15, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0xfe]
sel %d15, %d14, %d14, %d0

# CHECK-INST: sel %d15, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0xfe]
sel %d15, %d14, %d14, %d1

# CHECK-INST: sel %d15, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0xfe]
sel %d15, %d14, %d14, %d14

# CHECK-INST: sel %d15, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0xfe]
sel %d15, %d14, %d14, %d15

# CHECK-INST: sel %d15, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0xfe]
sel %d15, %d14, %d15, %d0

# CHECK-INST: sel %d15, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0xfe]
sel %d15, %d14, %d15, %d1

# CHECK-INST: sel %d15, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0xfe]
sel %d15, %d14, %d15, %d14

# CHECK-INST: sel %d15, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0xfe]
sel %d15, %d14, %d15, %d15

# CHECK-INST: sel %d15, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x40,0xff]
sel %d15, %d15, %d0, %d0

# CHECK-INST: sel %d15, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x40,0xff]
sel %d15, %d15, %d0, %d1

# CHECK-INST: sel %d15, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x40,0xff]
sel %d15, %d15, %d0, %d14

# CHECK-INST: sel %d15, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x40,0xff]
sel %d15, %d15, %d0, %d15

# CHECK-INST: sel %d15, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x40,0xff]
sel %d15, %d15, %d1, %d0

# CHECK-INST: sel %d15, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x40,0xff]
sel %d15, %d15, %d1, %d1

# CHECK-INST: sel %d15, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x40,0xff]
sel %d15, %d15, %d1, %d14

# CHECK-INST: sel %d15, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x40,0xff]
sel %d15, %d15, %d1, %d15

# CHECK-INST: sel %d15, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x40,0xff]
sel %d15, %d15, %d14, %d0

# CHECK-INST: sel %d15, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x40,0xff]
sel %d15, %d15, %d14, %d1

# CHECK-INST: sel %d15, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x40,0xff]
sel %d15, %d15, %d14, %d14

# CHECK-INST: sel %d15, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x40,0xff]
sel %d15, %d15, %d14, %d15

# CHECK-INST: sel %d15, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x40,0xff]
sel %d15, %d15, %d15, %d0

# CHECK-INST: sel %d15, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x40,0xff]
sel %d15, %d15, %d15, %d1

# CHECK-INST: sel %d15, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x40,0xff]
sel %d15, %d15, %d15, %d14

# CHECK-INST: sel %d15, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x40,0xff]
sel %d15, %d15, %d15, %d15

# CHECK-INST: sel %d0, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0x00]
sel %d0, %d0, %d0, -256

# CHECK-INST: sel %d0, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0x00]
sel %d0, %d0, %d0, -129

# CHECK-INST: sel %d0, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0x00]
sel %d0, %d0, %d0, -1

# CHECK-INST: sel %d0, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0x00]
sel %d0, %d0, %d0, 0

# CHECK-INST: sel %d0, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0x00]
sel %d0, %d0, %d0, 1

# CHECK-INST: sel %d0, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0x00]
sel %d0, %d0, %d0, 128

# CHECK-INST: sel %d0, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0x00]
sel %d0, %d0, %d0, 255

# CHECK-INST: sel %d0, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0x00]
sel %d0, %d0, %d1, -256

# CHECK-INST: sel %d0, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0x00]
sel %d0, %d0, %d1, -129

# CHECK-INST: sel %d0, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0x00]
sel %d0, %d0, %d1, -1

# CHECK-INST: sel %d0, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0x00]
sel %d0, %d0, %d1, 0

# CHECK-INST: sel %d0, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0x00]
sel %d0, %d0, %d1, 1

# CHECK-INST: sel %d0, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0x00]
sel %d0, %d0, %d1, 128

# CHECK-INST: sel %d0, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0x00]
sel %d0, %d0, %d1, 255

# CHECK-INST: sel %d0, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0x00]
sel %d0, %d0, %d14, -256

# CHECK-INST: sel %d0, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0x00]
sel %d0, %d0, %d14, -129

# CHECK-INST: sel %d0, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0x00]
sel %d0, %d0, %d14, -1

# CHECK-INST: sel %d0, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0x00]
sel %d0, %d0, %d14, 0

# CHECK-INST: sel %d0, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0x00]
sel %d0, %d0, %d14, 1

# CHECK-INST: sel %d0, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0x00]
sel %d0, %d0, %d14, 128

# CHECK-INST: sel %d0, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0x00]
sel %d0, %d0, %d14, 255

# CHECK-INST: sel %d0, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0x00]
sel %d0, %d0, %d15, -256

# CHECK-INST: sel %d0, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0x00]
sel %d0, %d0, %d15, -129

# CHECK-INST: sel %d0, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0x00]
sel %d0, %d0, %d15, -1

# CHECK-INST: sel %d0, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0x00]
sel %d0, %d0, %d15, 0

# CHECK-INST: sel %d0, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0x00]
sel %d0, %d0, %d15, 1

# CHECK-INST: sel %d0, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0x00]
sel %d0, %d0, %d15, 128

# CHECK-INST: sel %d0, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0x00]
sel %d0, %d0, %d15, 255

# CHECK-INST: sel %d0, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0x01]
sel %d0, %d1, %d0, -256

# CHECK-INST: sel %d0, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0x01]
sel %d0, %d1, %d0, -129

# CHECK-INST: sel %d0, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0x01]
sel %d0, %d1, %d0, -1

# CHECK-INST: sel %d0, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0x01]
sel %d0, %d1, %d0, 0

# CHECK-INST: sel %d0, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0x01]
sel %d0, %d1, %d0, 1

# CHECK-INST: sel %d0, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0x01]
sel %d0, %d1, %d0, 128

# CHECK-INST: sel %d0, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0x01]
sel %d0, %d1, %d0, 255

# CHECK-INST: sel %d0, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0x01]
sel %d0, %d1, %d1, -256

# CHECK-INST: sel %d0, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0x01]
sel %d0, %d1, %d1, -129

# CHECK-INST: sel %d0, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0x01]
sel %d0, %d1, %d1, -1

# CHECK-INST: sel %d0, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0x01]
sel %d0, %d1, %d1, 0

# CHECK-INST: sel %d0, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0x01]
sel %d0, %d1, %d1, 1

# CHECK-INST: sel %d0, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0x01]
sel %d0, %d1, %d1, 128

# CHECK-INST: sel %d0, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0x01]
sel %d0, %d1, %d1, 255

# CHECK-INST: sel %d0, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0x01]
sel %d0, %d1, %d14, -256

# CHECK-INST: sel %d0, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0x01]
sel %d0, %d1, %d14, -129

# CHECK-INST: sel %d0, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0x01]
sel %d0, %d1, %d14, -1

# CHECK-INST: sel %d0, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0x01]
sel %d0, %d1, %d14, 0

# CHECK-INST: sel %d0, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0x01]
sel %d0, %d1, %d14, 1

# CHECK-INST: sel %d0, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0x01]
sel %d0, %d1, %d14, 128

# CHECK-INST: sel %d0, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0x01]
sel %d0, %d1, %d14, 255

# CHECK-INST: sel %d0, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0x01]
sel %d0, %d1, %d15, -256

# CHECK-INST: sel %d0, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0x01]
sel %d0, %d1, %d15, -129

# CHECK-INST: sel %d0, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0x01]
sel %d0, %d1, %d15, -1

# CHECK-INST: sel %d0, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0x01]
sel %d0, %d1, %d15, 0

# CHECK-INST: sel %d0, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0x01]
sel %d0, %d1, %d15, 1

# CHECK-INST: sel %d0, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0x01]
sel %d0, %d1, %d15, 128

# CHECK-INST: sel %d0, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0x01]
sel %d0, %d1, %d15, 255

# CHECK-INST: sel %d0, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0x0e]
sel %d0, %d14, %d0, -256

# CHECK-INST: sel %d0, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0x0e]
sel %d0, %d14, %d0, -129

# CHECK-INST: sel %d0, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0x0e]
sel %d0, %d14, %d0, -1

# CHECK-INST: sel %d0, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0x0e]
sel %d0, %d14, %d0, 0

# CHECK-INST: sel %d0, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0x0e]
sel %d0, %d14, %d0, 1

# CHECK-INST: sel %d0, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0x0e]
sel %d0, %d14, %d0, 128

# CHECK-INST: sel %d0, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0x0e]
sel %d0, %d14, %d0, 255

# CHECK-INST: sel %d0, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0x0e]
sel %d0, %d14, %d1, -256

# CHECK-INST: sel %d0, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0x0e]
sel %d0, %d14, %d1, -129

# CHECK-INST: sel %d0, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0x0e]
sel %d0, %d14, %d1, -1

# CHECK-INST: sel %d0, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0x0e]
sel %d0, %d14, %d1, 0

# CHECK-INST: sel %d0, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0x0e]
sel %d0, %d14, %d1, 1

# CHECK-INST: sel %d0, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0x0e]
sel %d0, %d14, %d1, 128

# CHECK-INST: sel %d0, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0x0e]
sel %d0, %d14, %d1, 255

# CHECK-INST: sel %d0, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0x0e]
sel %d0, %d14, %d14, -256

# CHECK-INST: sel %d0, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0x0e]
sel %d0, %d14, %d14, -129

# CHECK-INST: sel %d0, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0x0e]
sel %d0, %d14, %d14, -1

# CHECK-INST: sel %d0, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0x0e]
sel %d0, %d14, %d14, 0

# CHECK-INST: sel %d0, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0x0e]
sel %d0, %d14, %d14, 1

# CHECK-INST: sel %d0, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0x0e]
sel %d0, %d14, %d14, 128

# CHECK-INST: sel %d0, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0x0e]
sel %d0, %d14, %d14, 255

# CHECK-INST: sel %d0, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0x0e]
sel %d0, %d14, %d15, -256

# CHECK-INST: sel %d0, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0x0e]
sel %d0, %d14, %d15, -129

# CHECK-INST: sel %d0, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0x0e]
sel %d0, %d14, %d15, -1

# CHECK-INST: sel %d0, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0x0e]
sel %d0, %d14, %d15, 0

# CHECK-INST: sel %d0, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0x0e]
sel %d0, %d14, %d15, 1

# CHECK-INST: sel %d0, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0x0e]
sel %d0, %d14, %d15, 128

# CHECK-INST: sel %d0, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0x0e]
sel %d0, %d14, %d15, 255

# CHECK-INST: sel %d0, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0x0f]
sel %d0, %d15, %d0, -256

# CHECK-INST: sel %d0, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0x0f]
sel %d0, %d15, %d0, -129

# CHECK-INST: sel %d0, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0x0f]
sel %d0, %d15, %d0, -1

# CHECK-INST: sel %d0, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0x0f]
sel %d0, %d15, %d0, 0

# CHECK-INST: sel %d0, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0x0f]
sel %d0, %d15, %d0, 1

# CHECK-INST: sel %d0, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0x0f]
sel %d0, %d15, %d0, 128

# CHECK-INST: sel %d0, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0x0f]
sel %d0, %d15, %d0, 255

# CHECK-INST: sel %d0, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0x0f]
sel %d0, %d15, %d1, -256

# CHECK-INST: sel %d0, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0x0f]
sel %d0, %d15, %d1, -129

# CHECK-INST: sel %d0, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0x0f]
sel %d0, %d15, %d1, -1

# CHECK-INST: sel %d0, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0x0f]
sel %d0, %d15, %d1, 0

# CHECK-INST: sel %d0, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0x0f]
sel %d0, %d15, %d1, 1

# CHECK-INST: sel %d0, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0x0f]
sel %d0, %d15, %d1, 128

# CHECK-INST: sel %d0, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0x0f]
sel %d0, %d15, %d1, 255

# CHECK-INST: sel %d0, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0x0f]
sel %d0, %d15, %d14, -256

# CHECK-INST: sel %d0, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0x0f]
sel %d0, %d15, %d14, -129

# CHECK-INST: sel %d0, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0x0f]
sel %d0, %d15, %d14, -1

# CHECK-INST: sel %d0, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0x0f]
sel %d0, %d15, %d14, 0

# CHECK-INST: sel %d0, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0x0f]
sel %d0, %d15, %d14, 1

# CHECK-INST: sel %d0, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0x0f]
sel %d0, %d15, %d14, 128

# CHECK-INST: sel %d0, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0x0f]
sel %d0, %d15, %d14, 255

# CHECK-INST: sel %d0, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0x0f]
sel %d0, %d15, %d15, -256

# CHECK-INST: sel %d0, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0x0f]
sel %d0, %d15, %d15, -129

# CHECK-INST: sel %d0, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0x0f]
sel %d0, %d15, %d15, -1

# CHECK-INST: sel %d0, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0x0f]
sel %d0, %d15, %d15, 0

# CHECK-INST: sel %d0, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0x0f]
sel %d0, %d15, %d15, 1

# CHECK-INST: sel %d0, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0x0f]
sel %d0, %d15, %d15, 128

# CHECK-INST: sel %d0, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0x0f]
sel %d0, %d15, %d15, 255

# CHECK-INST: sel %d1, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0x10]
sel %d1, %d0, %d0, -256

# CHECK-INST: sel %d1, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0x10]
sel %d1, %d0, %d0, -129

# CHECK-INST: sel %d1, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0x10]
sel %d1, %d0, %d0, -1

# CHECK-INST: sel %d1, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0x10]
sel %d1, %d0, %d0, 0

# CHECK-INST: sel %d1, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0x10]
sel %d1, %d0, %d0, 1

# CHECK-INST: sel %d1, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0x10]
sel %d1, %d0, %d0, 128

# CHECK-INST: sel %d1, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0x10]
sel %d1, %d0, %d0, 255

# CHECK-INST: sel %d1, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0x10]
sel %d1, %d0, %d1, -256

# CHECK-INST: sel %d1, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0x10]
sel %d1, %d0, %d1, -129

# CHECK-INST: sel %d1, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0x10]
sel %d1, %d0, %d1, -1

# CHECK-INST: sel %d1, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0x10]
sel %d1, %d0, %d1, 0

# CHECK-INST: sel %d1, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0x10]
sel %d1, %d0, %d1, 1

# CHECK-INST: sel %d1, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0x10]
sel %d1, %d0, %d1, 128

# CHECK-INST: sel %d1, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0x10]
sel %d1, %d0, %d1, 255

# CHECK-INST: sel %d1, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0x10]
sel %d1, %d0, %d14, -256

# CHECK-INST: sel %d1, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0x10]
sel %d1, %d0, %d14, -129

# CHECK-INST: sel %d1, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0x10]
sel %d1, %d0, %d14, -1

# CHECK-INST: sel %d1, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0x10]
sel %d1, %d0, %d14, 0

# CHECK-INST: sel %d1, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0x10]
sel %d1, %d0, %d14, 1

# CHECK-INST: sel %d1, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0x10]
sel %d1, %d0, %d14, 128

# CHECK-INST: sel %d1, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0x10]
sel %d1, %d0, %d14, 255

# CHECK-INST: sel %d1, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0x10]
sel %d1, %d0, %d15, -256

# CHECK-INST: sel %d1, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0x10]
sel %d1, %d0, %d15, -129

# CHECK-INST: sel %d1, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0x10]
sel %d1, %d0, %d15, -1

# CHECK-INST: sel %d1, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0x10]
sel %d1, %d0, %d15, 0

# CHECK-INST: sel %d1, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0x10]
sel %d1, %d0, %d15, 1

# CHECK-INST: sel %d1, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0x10]
sel %d1, %d0, %d15, 128

# CHECK-INST: sel %d1, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0x10]
sel %d1, %d0, %d15, 255

# CHECK-INST: sel %d1, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0x11]
sel %d1, %d1, %d0, -256

# CHECK-INST: sel %d1, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0x11]
sel %d1, %d1, %d0, -129

# CHECK-INST: sel %d1, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0x11]
sel %d1, %d1, %d0, -1

# CHECK-INST: sel %d1, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0x11]
sel %d1, %d1, %d0, 0

# CHECK-INST: sel %d1, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0x11]
sel %d1, %d1, %d0, 1

# CHECK-INST: sel %d1, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0x11]
sel %d1, %d1, %d0, 128

# CHECK-INST: sel %d1, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0x11]
sel %d1, %d1, %d0, 255

# CHECK-INST: sel %d1, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0x11]
sel %d1, %d1, %d1, -256

# CHECK-INST: sel %d1, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0x11]
sel %d1, %d1, %d1, -129

# CHECK-INST: sel %d1, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0x11]
sel %d1, %d1, %d1, -1

# CHECK-INST: sel %d1, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0x11]
sel %d1, %d1, %d1, 0

# CHECK-INST: sel %d1, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0x11]
sel %d1, %d1, %d1, 1

# CHECK-INST: sel %d1, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0x11]
sel %d1, %d1, %d1, 128

# CHECK-INST: sel %d1, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0x11]
sel %d1, %d1, %d1, 255

# CHECK-INST: sel %d1, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0x11]
sel %d1, %d1, %d14, -256

# CHECK-INST: sel %d1, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0x11]
sel %d1, %d1, %d14, -129

# CHECK-INST: sel %d1, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0x11]
sel %d1, %d1, %d14, -1

# CHECK-INST: sel %d1, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0x11]
sel %d1, %d1, %d14, 0

# CHECK-INST: sel %d1, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0x11]
sel %d1, %d1, %d14, 1

# CHECK-INST: sel %d1, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0x11]
sel %d1, %d1, %d14, 128

# CHECK-INST: sel %d1, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0x11]
sel %d1, %d1, %d14, 255

# CHECK-INST: sel %d1, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0x11]
sel %d1, %d1, %d15, -256

# CHECK-INST: sel %d1, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0x11]
sel %d1, %d1, %d15, -129

# CHECK-INST: sel %d1, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0x11]
sel %d1, %d1, %d15, -1

# CHECK-INST: sel %d1, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0x11]
sel %d1, %d1, %d15, 0

# CHECK-INST: sel %d1, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0x11]
sel %d1, %d1, %d15, 1

# CHECK-INST: sel %d1, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0x11]
sel %d1, %d1, %d15, 128

# CHECK-INST: sel %d1, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0x11]
sel %d1, %d1, %d15, 255

# CHECK-INST: sel %d1, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0x1e]
sel %d1, %d14, %d0, -256

# CHECK-INST: sel %d1, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0x1e]
sel %d1, %d14, %d0, -129

# CHECK-INST: sel %d1, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0x1e]
sel %d1, %d14, %d0, -1

# CHECK-INST: sel %d1, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0x1e]
sel %d1, %d14, %d0, 0

# CHECK-INST: sel %d1, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0x1e]
sel %d1, %d14, %d0, 1

# CHECK-INST: sel %d1, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0x1e]
sel %d1, %d14, %d0, 128

# CHECK-INST: sel %d1, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0x1e]
sel %d1, %d14, %d0, 255

# CHECK-INST: sel %d1, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0x1e]
sel %d1, %d14, %d1, -256

# CHECK-INST: sel %d1, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0x1e]
sel %d1, %d14, %d1, -129

# CHECK-INST: sel %d1, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0x1e]
sel %d1, %d14, %d1, -1

# CHECK-INST: sel %d1, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0x1e]
sel %d1, %d14, %d1, 0

# CHECK-INST: sel %d1, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0x1e]
sel %d1, %d14, %d1, 1

# CHECK-INST: sel %d1, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0x1e]
sel %d1, %d14, %d1, 128

# CHECK-INST: sel %d1, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0x1e]
sel %d1, %d14, %d1, 255

# CHECK-INST: sel %d1, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0x1e]
sel %d1, %d14, %d14, -256

# CHECK-INST: sel %d1, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0x1e]
sel %d1, %d14, %d14, -129

# CHECK-INST: sel %d1, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0x1e]
sel %d1, %d14, %d14, -1

# CHECK-INST: sel %d1, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0x1e]
sel %d1, %d14, %d14, 0

# CHECK-INST: sel %d1, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0x1e]
sel %d1, %d14, %d14, 1

# CHECK-INST: sel %d1, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0x1e]
sel %d1, %d14, %d14, 128

# CHECK-INST: sel %d1, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0x1e]
sel %d1, %d14, %d14, 255

# CHECK-INST: sel %d1, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0x1e]
sel %d1, %d14, %d15, -256

# CHECK-INST: sel %d1, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0x1e]
sel %d1, %d14, %d15, -129

# CHECK-INST: sel %d1, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0x1e]
sel %d1, %d14, %d15, -1

# CHECK-INST: sel %d1, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0x1e]
sel %d1, %d14, %d15, 0

# CHECK-INST: sel %d1, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0x1e]
sel %d1, %d14, %d15, 1

# CHECK-INST: sel %d1, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0x1e]
sel %d1, %d14, %d15, 128

# CHECK-INST: sel %d1, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0x1e]
sel %d1, %d14, %d15, 255

# CHECK-INST: sel %d1, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0x1f]
sel %d1, %d15, %d0, -256

# CHECK-INST: sel %d1, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0x1f]
sel %d1, %d15, %d0, -129

# CHECK-INST: sel %d1, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0x1f]
sel %d1, %d15, %d0, -1

# CHECK-INST: sel %d1, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0x1f]
sel %d1, %d15, %d0, 0

# CHECK-INST: sel %d1, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0x1f]
sel %d1, %d15, %d0, 1

# CHECK-INST: sel %d1, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0x1f]
sel %d1, %d15, %d0, 128

# CHECK-INST: sel %d1, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0x1f]
sel %d1, %d15, %d0, 255

# CHECK-INST: sel %d1, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0x1f]
sel %d1, %d15, %d1, -256

# CHECK-INST: sel %d1, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0x1f]
sel %d1, %d15, %d1, -129

# CHECK-INST: sel %d1, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0x1f]
sel %d1, %d15, %d1, -1

# CHECK-INST: sel %d1, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0x1f]
sel %d1, %d15, %d1, 0

# CHECK-INST: sel %d1, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0x1f]
sel %d1, %d15, %d1, 1

# CHECK-INST: sel %d1, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0x1f]
sel %d1, %d15, %d1, 128

# CHECK-INST: sel %d1, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0x1f]
sel %d1, %d15, %d1, 255

# CHECK-INST: sel %d1, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0x1f]
sel %d1, %d15, %d14, -256

# CHECK-INST: sel %d1, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0x1f]
sel %d1, %d15, %d14, -129

# CHECK-INST: sel %d1, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0x1f]
sel %d1, %d15, %d14, -1

# CHECK-INST: sel %d1, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0x1f]
sel %d1, %d15, %d14, 0

# CHECK-INST: sel %d1, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0x1f]
sel %d1, %d15, %d14, 1

# CHECK-INST: sel %d1, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0x1f]
sel %d1, %d15, %d14, 128

# CHECK-INST: sel %d1, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0x1f]
sel %d1, %d15, %d14, 255

# CHECK-INST: sel %d1, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0x1f]
sel %d1, %d15, %d15, -256

# CHECK-INST: sel %d1, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0x1f]
sel %d1, %d15, %d15, -129

# CHECK-INST: sel %d1, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0x1f]
sel %d1, %d15, %d15, -1

# CHECK-INST: sel %d1, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0x1f]
sel %d1, %d15, %d15, 0

# CHECK-INST: sel %d1, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0x1f]
sel %d1, %d15, %d15, 1

# CHECK-INST: sel %d1, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0x1f]
sel %d1, %d15, %d15, 128

# CHECK-INST: sel %d1, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0x1f]
sel %d1, %d15, %d15, 255

# CHECK-INST: sel %d14, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0xe0]
sel %d14, %d0, %d0, -256

# CHECK-INST: sel %d14, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0xe0]
sel %d14, %d0, %d0, -129

# CHECK-INST: sel %d14, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0xe0]
sel %d14, %d0, %d0, -1

# CHECK-INST: sel %d14, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0xe0]
sel %d14, %d0, %d0, 0

# CHECK-INST: sel %d14, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0xe0]
sel %d14, %d0, %d0, 1

# CHECK-INST: sel %d14, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0xe0]
sel %d14, %d0, %d0, 128

# CHECK-INST: sel %d14, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0xe0]
sel %d14, %d0, %d0, 255

# CHECK-INST: sel %d14, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0xe0]
sel %d14, %d0, %d1, -256

# CHECK-INST: sel %d14, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0xe0]
sel %d14, %d0, %d1, -129

# CHECK-INST: sel %d14, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0xe0]
sel %d14, %d0, %d1, -1

# CHECK-INST: sel %d14, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0xe0]
sel %d14, %d0, %d1, 0

# CHECK-INST: sel %d14, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0xe0]
sel %d14, %d0, %d1, 1

# CHECK-INST: sel %d14, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0xe0]
sel %d14, %d0, %d1, 128

# CHECK-INST: sel %d14, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0xe0]
sel %d14, %d0, %d1, 255

# CHECK-INST: sel %d14, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0xe0]
sel %d14, %d0, %d14, -256

# CHECK-INST: sel %d14, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0xe0]
sel %d14, %d0, %d14, -129

# CHECK-INST: sel %d14, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0xe0]
sel %d14, %d0, %d14, -1

# CHECK-INST: sel %d14, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0xe0]
sel %d14, %d0, %d14, 0

# CHECK-INST: sel %d14, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0xe0]
sel %d14, %d0, %d14, 1

# CHECK-INST: sel %d14, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0xe0]
sel %d14, %d0, %d14, 128

# CHECK-INST: sel %d14, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0xe0]
sel %d14, %d0, %d14, 255

# CHECK-INST: sel %d14, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0xe0]
sel %d14, %d0, %d15, -256

# CHECK-INST: sel %d14, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0xe0]
sel %d14, %d0, %d15, -129

# CHECK-INST: sel %d14, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0xe0]
sel %d14, %d0, %d15, -1

# CHECK-INST: sel %d14, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0xe0]
sel %d14, %d0, %d15, 0

# CHECK-INST: sel %d14, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0xe0]
sel %d14, %d0, %d15, 1

# CHECK-INST: sel %d14, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0xe0]
sel %d14, %d0, %d15, 128

# CHECK-INST: sel %d14, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0xe0]
sel %d14, %d0, %d15, 255

# CHECK-INST: sel %d14, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0xe1]
sel %d14, %d1, %d0, -256

# CHECK-INST: sel %d14, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0xe1]
sel %d14, %d1, %d0, -129

# CHECK-INST: sel %d14, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0xe1]
sel %d14, %d1, %d0, -1

# CHECK-INST: sel %d14, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0xe1]
sel %d14, %d1, %d0, 0

# CHECK-INST: sel %d14, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0xe1]
sel %d14, %d1, %d0, 1

# CHECK-INST: sel %d14, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0xe1]
sel %d14, %d1, %d0, 128

# CHECK-INST: sel %d14, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0xe1]
sel %d14, %d1, %d0, 255

# CHECK-INST: sel %d14, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0xe1]
sel %d14, %d1, %d1, -256

# CHECK-INST: sel %d14, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0xe1]
sel %d14, %d1, %d1, -129

# CHECK-INST: sel %d14, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0xe1]
sel %d14, %d1, %d1, -1

# CHECK-INST: sel %d14, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0xe1]
sel %d14, %d1, %d1, 0

# CHECK-INST: sel %d14, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0xe1]
sel %d14, %d1, %d1, 1

# CHECK-INST: sel %d14, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0xe1]
sel %d14, %d1, %d1, 128

# CHECK-INST: sel %d14, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0xe1]
sel %d14, %d1, %d1, 255

# CHECK-INST: sel %d14, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0xe1]
sel %d14, %d1, %d14, -256

# CHECK-INST: sel %d14, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0xe1]
sel %d14, %d1, %d14, -129

# CHECK-INST: sel %d14, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0xe1]
sel %d14, %d1, %d14, -1

# CHECK-INST: sel %d14, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0xe1]
sel %d14, %d1, %d14, 0

# CHECK-INST: sel %d14, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0xe1]
sel %d14, %d1, %d14, 1

# CHECK-INST: sel %d14, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0xe1]
sel %d14, %d1, %d14, 128

# CHECK-INST: sel %d14, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0xe1]
sel %d14, %d1, %d14, 255

# CHECK-INST: sel %d14, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0xe1]
sel %d14, %d1, %d15, -256

# CHECK-INST: sel %d14, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0xe1]
sel %d14, %d1, %d15, -129

# CHECK-INST: sel %d14, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0xe1]
sel %d14, %d1, %d15, -1

# CHECK-INST: sel %d14, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0xe1]
sel %d14, %d1, %d15, 0

# CHECK-INST: sel %d14, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0xe1]
sel %d14, %d1, %d15, 1

# CHECK-INST: sel %d14, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0xe1]
sel %d14, %d1, %d15, 128

# CHECK-INST: sel %d14, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0xe1]
sel %d14, %d1, %d15, 255

# CHECK-INST: sel %d14, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0xee]
sel %d14, %d14, %d0, -256

# CHECK-INST: sel %d14, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0xee]
sel %d14, %d14, %d0, -129

# CHECK-INST: sel %d14, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0xee]
sel %d14, %d14, %d0, -1

# CHECK-INST: sel %d14, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0xee]
sel %d14, %d14, %d0, 0

# CHECK-INST: sel %d14, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0xee]
sel %d14, %d14, %d0, 1

# CHECK-INST: sel %d14, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0xee]
sel %d14, %d14, %d0, 128

# CHECK-INST: sel %d14, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0xee]
sel %d14, %d14, %d0, 255

# CHECK-INST: sel %d14, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0xee]
sel %d14, %d14, %d1, -256

# CHECK-INST: sel %d14, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0xee]
sel %d14, %d14, %d1, -129

# CHECK-INST: sel %d14, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0xee]
sel %d14, %d14, %d1, -1

# CHECK-INST: sel %d14, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0xee]
sel %d14, %d14, %d1, 0

# CHECK-INST: sel %d14, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0xee]
sel %d14, %d14, %d1, 1

# CHECK-INST: sel %d14, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0xee]
sel %d14, %d14, %d1, 128

# CHECK-INST: sel %d14, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0xee]
sel %d14, %d14, %d1, 255

# CHECK-INST: sel %d14, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0xee]
sel %d14, %d14, %d14, -256

# CHECK-INST: sel %d14, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0xee]
sel %d14, %d14, %d14, -129

# CHECK-INST: sel %d14, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0xee]
sel %d14, %d14, %d14, -1

# CHECK-INST: sel %d14, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0xee]
sel %d14, %d14, %d14, 0

# CHECK-INST: sel %d14, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0xee]
sel %d14, %d14, %d14, 1

# CHECK-INST: sel %d14, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0xee]
sel %d14, %d14, %d14, 128

# CHECK-INST: sel %d14, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0xee]
sel %d14, %d14, %d14, 255

# CHECK-INST: sel %d14, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0xee]
sel %d14, %d14, %d15, -256

# CHECK-INST: sel %d14, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0xee]
sel %d14, %d14, %d15, -129

# CHECK-INST: sel %d14, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0xee]
sel %d14, %d14, %d15, -1

# CHECK-INST: sel %d14, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0xee]
sel %d14, %d14, %d15, 0

# CHECK-INST: sel %d14, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0xee]
sel %d14, %d14, %d15, 1

# CHECK-INST: sel %d14, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0xee]
sel %d14, %d14, %d15, 128

# CHECK-INST: sel %d14, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0xee]
sel %d14, %d14, %d15, 255

# CHECK-INST: sel %d14, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0xef]
sel %d14, %d15, %d0, -256

# CHECK-INST: sel %d14, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0xef]
sel %d14, %d15, %d0, -129

# CHECK-INST: sel %d14, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0xef]
sel %d14, %d15, %d0, -1

# CHECK-INST: sel %d14, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0xef]
sel %d14, %d15, %d0, 0

# CHECK-INST: sel %d14, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0xef]
sel %d14, %d15, %d0, 1

# CHECK-INST: sel %d14, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0xef]
sel %d14, %d15, %d0, 128

# CHECK-INST: sel %d14, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0xef]
sel %d14, %d15, %d0, 255

# CHECK-INST: sel %d14, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0xef]
sel %d14, %d15, %d1, -256

# CHECK-INST: sel %d14, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0xef]
sel %d14, %d15, %d1, -129

# CHECK-INST: sel %d14, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0xef]
sel %d14, %d15, %d1, -1

# CHECK-INST: sel %d14, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0xef]
sel %d14, %d15, %d1, 0

# CHECK-INST: sel %d14, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0xef]
sel %d14, %d15, %d1, 1

# CHECK-INST: sel %d14, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0xef]
sel %d14, %d15, %d1, 128

# CHECK-INST: sel %d14, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0xef]
sel %d14, %d15, %d1, 255

# CHECK-INST: sel %d14, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0xef]
sel %d14, %d15, %d14, -256

# CHECK-INST: sel %d14, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0xef]
sel %d14, %d15, %d14, -129

# CHECK-INST: sel %d14, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0xef]
sel %d14, %d15, %d14, -1

# CHECK-INST: sel %d14, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0xef]
sel %d14, %d15, %d14, 0

# CHECK-INST: sel %d14, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0xef]
sel %d14, %d15, %d14, 1

# CHECK-INST: sel %d14, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0xef]
sel %d14, %d15, %d14, 128

# CHECK-INST: sel %d14, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0xef]
sel %d14, %d15, %d14, 255

# CHECK-INST: sel %d14, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0xef]
sel %d14, %d15, %d15, -256

# CHECK-INST: sel %d14, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0xef]
sel %d14, %d15, %d15, -129

# CHECK-INST: sel %d14, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0xef]
sel %d14, %d15, %d15, -1

# CHECK-INST: sel %d14, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0xef]
sel %d14, %d15, %d15, 0

# CHECK-INST: sel %d14, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0xef]
sel %d14, %d15, %d15, 1

# CHECK-INST: sel %d14, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0xef]
sel %d14, %d15, %d15, 128

# CHECK-INST: sel %d14, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0xef]
sel %d14, %d15, %d15, 255

# CHECK-INST: sel %d15, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0xf0]
sel %d15, %d0, %d0, -256

# CHECK-INST: sel %d15, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0xf0]
sel %d15, %d0, %d0, -129

# CHECK-INST: sel %d15, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0xf0]
sel %d15, %d0, %d0, -1

# CHECK-INST: sel %d15, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0xf0]
sel %d15, %d0, %d0, 0

# CHECK-INST: sel %d15, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0xf0]
sel %d15, %d0, %d0, 1

# CHECK-INST: sel %d15, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0xf0]
sel %d15, %d0, %d0, 128

# CHECK-INST: sel %d15, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0xf0]
sel %d15, %d0, %d0, 255

# CHECK-INST: sel %d15, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0xf0]
sel %d15, %d0, %d1, -256

# CHECK-INST: sel %d15, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0xf0]
sel %d15, %d0, %d1, -129

# CHECK-INST: sel %d15, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0xf0]
sel %d15, %d0, %d1, -1

# CHECK-INST: sel %d15, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0xf0]
sel %d15, %d0, %d1, 0

# CHECK-INST: sel %d15, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0xf0]
sel %d15, %d0, %d1, 1

# CHECK-INST: sel %d15, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0xf0]
sel %d15, %d0, %d1, 128

# CHECK-INST: sel %d15, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0xf0]
sel %d15, %d0, %d1, 255

# CHECK-INST: sel %d15, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0xf0]
sel %d15, %d0, %d14, -256

# CHECK-INST: sel %d15, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0xf0]
sel %d15, %d0, %d14, -129

# CHECK-INST: sel %d15, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0xf0]
sel %d15, %d0, %d14, -1

# CHECK-INST: sel %d15, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0xf0]
sel %d15, %d0, %d14, 0

# CHECK-INST: sel %d15, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0xf0]
sel %d15, %d0, %d14, 1

# CHECK-INST: sel %d15, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0xf0]
sel %d15, %d0, %d14, 128

# CHECK-INST: sel %d15, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0xf0]
sel %d15, %d0, %d14, 255

# CHECK-INST: sel %d15, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0xf0]
sel %d15, %d0, %d15, -256

# CHECK-INST: sel %d15, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0xf0]
sel %d15, %d0, %d15, -129

# CHECK-INST: sel %d15, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0xf0]
sel %d15, %d0, %d15, -1

# CHECK-INST: sel %d15, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0xf0]
sel %d15, %d0, %d15, 0

# CHECK-INST: sel %d15, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0xf0]
sel %d15, %d0, %d15, 1

# CHECK-INST: sel %d15, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0xf0]
sel %d15, %d0, %d15, 128

# CHECK-INST: sel %d15, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0xf0]
sel %d15, %d0, %d15, 255

# CHECK-INST: sel %d15, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0xf1]
sel %d15, %d1, %d0, -256

# CHECK-INST: sel %d15, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0xf1]
sel %d15, %d1, %d0, -129

# CHECK-INST: sel %d15, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0xf1]
sel %d15, %d1, %d0, -1

# CHECK-INST: sel %d15, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0xf1]
sel %d15, %d1, %d0, 0

# CHECK-INST: sel %d15, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0xf1]
sel %d15, %d1, %d0, 1

# CHECK-INST: sel %d15, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0xf1]
sel %d15, %d1, %d0, 128

# CHECK-INST: sel %d15, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0xf1]
sel %d15, %d1, %d0, 255

# CHECK-INST: sel %d15, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0xf1]
sel %d15, %d1, %d1, -256

# CHECK-INST: sel %d15, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0xf1]
sel %d15, %d1, %d1, -129

# CHECK-INST: sel %d15, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0xf1]
sel %d15, %d1, %d1, -1

# CHECK-INST: sel %d15, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0xf1]
sel %d15, %d1, %d1, 0

# CHECK-INST: sel %d15, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0xf1]
sel %d15, %d1, %d1, 1

# CHECK-INST: sel %d15, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0xf1]
sel %d15, %d1, %d1, 128

# CHECK-INST: sel %d15, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0xf1]
sel %d15, %d1, %d1, 255

# CHECK-INST: sel %d15, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0xf1]
sel %d15, %d1, %d14, -256

# CHECK-INST: sel %d15, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0xf1]
sel %d15, %d1, %d14, -129

# CHECK-INST: sel %d15, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0xf1]
sel %d15, %d1, %d14, -1

# CHECK-INST: sel %d15, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0xf1]
sel %d15, %d1, %d14, 0

# CHECK-INST: sel %d15, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0xf1]
sel %d15, %d1, %d14, 1

# CHECK-INST: sel %d15, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0xf1]
sel %d15, %d1, %d14, 128

# CHECK-INST: sel %d15, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0xf1]
sel %d15, %d1, %d14, 255

# CHECK-INST: sel %d15, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0xf1]
sel %d15, %d1, %d15, -256

# CHECK-INST: sel %d15, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0xf1]
sel %d15, %d1, %d15, -129

# CHECK-INST: sel %d15, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0xf1]
sel %d15, %d1, %d15, -1

# CHECK-INST: sel %d15, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0xf1]
sel %d15, %d1, %d15, 0

# CHECK-INST: sel %d15, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0xf1]
sel %d15, %d1, %d15, 1

# CHECK-INST: sel %d15, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0xf1]
sel %d15, %d1, %d15, 128

# CHECK-INST: sel %d15, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0xf1]
sel %d15, %d1, %d15, 255

# CHECK-INST: sel %d15, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0xfe]
sel %d15, %d14, %d0, -256

# CHECK-INST: sel %d15, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0xfe]
sel %d15, %d14, %d0, -129

# CHECK-INST: sel %d15, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0xfe]
sel %d15, %d14, %d0, -1

# CHECK-INST: sel %d15, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0xfe]
sel %d15, %d14, %d0, 0

# CHECK-INST: sel %d15, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0xfe]
sel %d15, %d14, %d0, 1

# CHECK-INST: sel %d15, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0xfe]
sel %d15, %d14, %d0, 128

# CHECK-INST: sel %d15, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0xfe]
sel %d15, %d14, %d0, 255

# CHECK-INST: sel %d15, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0xfe]
sel %d15, %d14, %d1, -256

# CHECK-INST: sel %d15, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0xfe]
sel %d15, %d14, %d1, -129

# CHECK-INST: sel %d15, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0xfe]
sel %d15, %d14, %d1, -1

# CHECK-INST: sel %d15, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0xfe]
sel %d15, %d14, %d1, 0

# CHECK-INST: sel %d15, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0xfe]
sel %d15, %d14, %d1, 1

# CHECK-INST: sel %d15, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0xfe]
sel %d15, %d14, %d1, 128

# CHECK-INST: sel %d15, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0xfe]
sel %d15, %d14, %d1, 255

# CHECK-INST: sel %d15, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0xfe]
sel %d15, %d14, %d14, -256

# CHECK-INST: sel %d15, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0xfe]
sel %d15, %d14, %d14, -129

# CHECK-INST: sel %d15, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0xfe]
sel %d15, %d14, %d14, -1

# CHECK-INST: sel %d15, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0xfe]
sel %d15, %d14, %d14, 0

# CHECK-INST: sel %d15, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0xfe]
sel %d15, %d14, %d14, 1

# CHECK-INST: sel %d15, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0xfe]
sel %d15, %d14, %d14, 128

# CHECK-INST: sel %d15, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0xfe]
sel %d15, %d14, %d14, 255

# CHECK-INST: sel %d15, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0xfe]
sel %d15, %d14, %d15, -256

# CHECK-INST: sel %d15, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0xfe]
sel %d15, %d14, %d15, -129

# CHECK-INST: sel %d15, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0xfe]
sel %d15, %d14, %d15, -1

# CHECK-INST: sel %d15, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0xfe]
sel %d15, %d14, %d15, 0

# CHECK-INST: sel %d15, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0xfe]
sel %d15, %d14, %d15, 1

# CHECK-INST: sel %d15, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0xfe]
sel %d15, %d14, %d15, 128

# CHECK-INST: sel %d15, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0xfe]
sel %d15, %d14, %d15, 255

# CHECK-INST: sel %d15, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0x90,0xff]
sel %d15, %d15, %d0, -256

# CHECK-INST: sel %d15, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0x97,0xff]
sel %d15, %d15, %d0, -129

# CHECK-INST: sel %d15, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0x9f,0xff]
sel %d15, %d15, %d0, -1

# CHECK-INST: sel %d15, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0x80,0xff]
sel %d15, %d15, %d0, 0

# CHECK-INST: sel %d15, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0x80,0xff]
sel %d15, %d15, %d0, 1

# CHECK-INST: sel %d15, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0x88,0xff]
sel %d15, %d15, %d0, 128

# CHECK-INST: sel %d15, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0x8f,0xff]
sel %d15, %d15, %d0, 255

# CHECK-INST: sel %d15, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0x90,0xff]
sel %d15, %d15, %d1, -256

# CHECK-INST: sel %d15, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0x97,0xff]
sel %d15, %d15, %d1, -129

# CHECK-INST: sel %d15, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0x9f,0xff]
sel %d15, %d15, %d1, -1

# CHECK-INST: sel %d15, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0x80,0xff]
sel %d15, %d15, %d1, 0

# CHECK-INST: sel %d15, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0x80,0xff]
sel %d15, %d15, %d1, 1

# CHECK-INST: sel %d15, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0x88,0xff]
sel %d15, %d15, %d1, 128

# CHECK-INST: sel %d15, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0x8f,0xff]
sel %d15, %d15, %d1, 255

# CHECK-INST: sel %d15, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0x90,0xff]
sel %d15, %d15, %d14, -256

# CHECK-INST: sel %d15, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0x97,0xff]
sel %d15, %d15, %d14, -129

# CHECK-INST: sel %d15, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0x9f,0xff]
sel %d15, %d15, %d14, -1

# CHECK-INST: sel %d15, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0x80,0xff]
sel %d15, %d15, %d14, 0

# CHECK-INST: sel %d15, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0x80,0xff]
sel %d15, %d15, %d14, 1

# CHECK-INST: sel %d15, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0x88,0xff]
sel %d15, %d15, %d14, 128

# CHECK-INST: sel %d15, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0x8f,0xff]
sel %d15, %d15, %d14, 255

# CHECK-INST: sel %d15, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0x90,0xff]
sel %d15, %d15, %d15, -256

# CHECK-INST: sel %d15, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0x97,0xff]
sel %d15, %d15, %d15, -129

# CHECK-INST: sel %d15, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0x9f,0xff]
sel %d15, %d15, %d15, -1

# CHECK-INST: sel %d15, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0x80,0xff]
sel %d15, %d15, %d15, 0

# CHECK-INST: sel %d15, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0x80,0xff]
sel %d15, %d15, %d15, 1

# CHECK-INST: sel %d15, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0x88,0xff]
sel %d15, %d15, %d15, 128

# CHECK-INST: sel %d15, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0x8f,0xff]
sel %d15, %d15, %d15, 255

# CHECK-INST: seln %d0, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0x00]
seln %d0, %d0, %d0, %d0

# CHECK-INST: seln %d0, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0x00]
seln %d0, %d0, %d0, %d1

# CHECK-INST: seln %d0, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0x00]
seln %d0, %d0, %d0, %d14

# CHECK-INST: seln %d0, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0x00]
seln %d0, %d0, %d0, %d15

# CHECK-INST: seln %d0, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0x00]
seln %d0, %d0, %d1, %d0

# CHECK-INST: seln %d0, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0x00]
seln %d0, %d0, %d1, %d1

# CHECK-INST: seln %d0, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0x00]
seln %d0, %d0, %d1, %d14

# CHECK-INST: seln %d0, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0x00]
seln %d0, %d0, %d1, %d15

# CHECK-INST: seln %d0, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0x00]
seln %d0, %d0, %d14, %d0

# CHECK-INST: seln %d0, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0x00]
seln %d0, %d0, %d14, %d1

# CHECK-INST: seln %d0, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0x00]
seln %d0, %d0, %d14, %d14

# CHECK-INST: seln %d0, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0x00]
seln %d0, %d0, %d14, %d15

# CHECK-INST: seln %d0, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0x00]
seln %d0, %d0, %d15, %d0

# CHECK-INST: seln %d0, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0x00]
seln %d0, %d0, %d15, %d1

# CHECK-INST: seln %d0, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0x00]
seln %d0, %d0, %d15, %d14

# CHECK-INST: seln %d0, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0x00]
seln %d0, %d0, %d15, %d15

# CHECK-INST: seln %d0, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0x01]
seln %d0, %d1, %d0, %d0

# CHECK-INST: seln %d0, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0x01]
seln %d0, %d1, %d0, %d1

# CHECK-INST: seln %d0, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0x01]
seln %d0, %d1, %d0, %d14

# CHECK-INST: seln %d0, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0x01]
seln %d0, %d1, %d0, %d15

# CHECK-INST: seln %d0, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0x01]
seln %d0, %d1, %d1, %d0

# CHECK-INST: seln %d0, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0x01]
seln %d0, %d1, %d1, %d1

# CHECK-INST: seln %d0, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0x01]
seln %d0, %d1, %d1, %d14

# CHECK-INST: seln %d0, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0x01]
seln %d0, %d1, %d1, %d15

# CHECK-INST: seln %d0, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0x01]
seln %d0, %d1, %d14, %d0

# CHECK-INST: seln %d0, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0x01]
seln %d0, %d1, %d14, %d1

# CHECK-INST: seln %d0, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0x01]
seln %d0, %d1, %d14, %d14

# CHECK-INST: seln %d0, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0x01]
seln %d0, %d1, %d14, %d15

# CHECK-INST: seln %d0, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0x01]
seln %d0, %d1, %d15, %d0

# CHECK-INST: seln %d0, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0x01]
seln %d0, %d1, %d15, %d1

# CHECK-INST: seln %d0, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0x01]
seln %d0, %d1, %d15, %d14

# CHECK-INST: seln %d0, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0x01]
seln %d0, %d1, %d15, %d15

# CHECK-INST: seln %d0, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0x0e]
seln %d0, %d14, %d0, %d0

# CHECK-INST: seln %d0, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0x0e]
seln %d0, %d14, %d0, %d1

# CHECK-INST: seln %d0, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0x0e]
seln %d0, %d14, %d0, %d14

# CHECK-INST: seln %d0, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0x0e]
seln %d0, %d14, %d0, %d15

# CHECK-INST: seln %d0, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0x0e]
seln %d0, %d14, %d1, %d0

# CHECK-INST: seln %d0, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0x0e]
seln %d0, %d14, %d1, %d1

# CHECK-INST: seln %d0, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0x0e]
seln %d0, %d14, %d1, %d14

# CHECK-INST: seln %d0, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0x0e]
seln %d0, %d14, %d1, %d15

# CHECK-INST: seln %d0, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0x0e]
seln %d0, %d14, %d14, %d0

# CHECK-INST: seln %d0, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0x0e]
seln %d0, %d14, %d14, %d1

# CHECK-INST: seln %d0, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0x0e]
seln %d0, %d14, %d14, %d14

# CHECK-INST: seln %d0, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0x0e]
seln %d0, %d14, %d14, %d15

# CHECK-INST: seln %d0, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0x0e]
seln %d0, %d14, %d15, %d0

# CHECK-INST: seln %d0, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0x0e]
seln %d0, %d14, %d15, %d1

# CHECK-INST: seln %d0, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0x0e]
seln %d0, %d14, %d15, %d14

# CHECK-INST: seln %d0, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0x0e]
seln %d0, %d14, %d15, %d15

# CHECK-INST: seln %d0, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0x0f]
seln %d0, %d15, %d0, %d0

# CHECK-INST: seln %d0, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0x0f]
seln %d0, %d15, %d0, %d1

# CHECK-INST: seln %d0, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0x0f]
seln %d0, %d15, %d0, %d14

# CHECK-INST: seln %d0, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0x0f]
seln %d0, %d15, %d0, %d15

# CHECK-INST: seln %d0, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0x0f]
seln %d0, %d15, %d1, %d0

# CHECK-INST: seln %d0, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0x0f]
seln %d0, %d15, %d1, %d1

# CHECK-INST: seln %d0, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0x0f]
seln %d0, %d15, %d1, %d14

# CHECK-INST: seln %d0, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0x0f]
seln %d0, %d15, %d1, %d15

# CHECK-INST: seln %d0, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0x0f]
seln %d0, %d15, %d14, %d0

# CHECK-INST: seln %d0, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0x0f]
seln %d0, %d15, %d14, %d1

# CHECK-INST: seln %d0, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0x0f]
seln %d0, %d15, %d14, %d14

# CHECK-INST: seln %d0, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0x0f]
seln %d0, %d15, %d14, %d15

# CHECK-INST: seln %d0, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0x0f]
seln %d0, %d15, %d15, %d0

# CHECK-INST: seln %d0, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0x0f]
seln %d0, %d15, %d15, %d1

# CHECK-INST: seln %d0, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0x0f]
seln %d0, %d15, %d15, %d14

# CHECK-INST: seln %d0, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0x0f]
seln %d0, %d15, %d15, %d15

# CHECK-INST: seln %d1, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0x10]
seln %d1, %d0, %d0, %d0

# CHECK-INST: seln %d1, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0x10]
seln %d1, %d0, %d0, %d1

# CHECK-INST: seln %d1, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0x10]
seln %d1, %d0, %d0, %d14

# CHECK-INST: seln %d1, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0x10]
seln %d1, %d0, %d0, %d15

# CHECK-INST: seln %d1, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0x10]
seln %d1, %d0, %d1, %d0

# CHECK-INST: seln %d1, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0x10]
seln %d1, %d0, %d1, %d1

# CHECK-INST: seln %d1, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0x10]
seln %d1, %d0, %d1, %d14

# CHECK-INST: seln %d1, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0x10]
seln %d1, %d0, %d1, %d15

# CHECK-INST: seln %d1, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0x10]
seln %d1, %d0, %d14, %d0

# CHECK-INST: seln %d1, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0x10]
seln %d1, %d0, %d14, %d1

# CHECK-INST: seln %d1, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0x10]
seln %d1, %d0, %d14, %d14

# CHECK-INST: seln %d1, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0x10]
seln %d1, %d0, %d14, %d15

# CHECK-INST: seln %d1, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0x10]
seln %d1, %d0, %d15, %d0

# CHECK-INST: seln %d1, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0x10]
seln %d1, %d0, %d15, %d1

# CHECK-INST: seln %d1, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0x10]
seln %d1, %d0, %d15, %d14

# CHECK-INST: seln %d1, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0x10]
seln %d1, %d0, %d15, %d15

# CHECK-INST: seln %d1, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0x11]
seln %d1, %d1, %d0, %d0

# CHECK-INST: seln %d1, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0x11]
seln %d1, %d1, %d0, %d1

# CHECK-INST: seln %d1, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0x11]
seln %d1, %d1, %d0, %d14

# CHECK-INST: seln %d1, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0x11]
seln %d1, %d1, %d0, %d15

# CHECK-INST: seln %d1, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0x11]
seln %d1, %d1, %d1, %d0

# CHECK-INST: seln %d1, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0x11]
seln %d1, %d1, %d1, %d1

# CHECK-INST: seln %d1, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0x11]
seln %d1, %d1, %d1, %d14

# CHECK-INST: seln %d1, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0x11]
seln %d1, %d1, %d1, %d15

# CHECK-INST: seln %d1, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0x11]
seln %d1, %d1, %d14, %d0

# CHECK-INST: seln %d1, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0x11]
seln %d1, %d1, %d14, %d1

# CHECK-INST: seln %d1, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0x11]
seln %d1, %d1, %d14, %d14

# CHECK-INST: seln %d1, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0x11]
seln %d1, %d1, %d14, %d15

# CHECK-INST: seln %d1, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0x11]
seln %d1, %d1, %d15, %d0

# CHECK-INST: seln %d1, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0x11]
seln %d1, %d1, %d15, %d1

# CHECK-INST: seln %d1, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0x11]
seln %d1, %d1, %d15, %d14

# CHECK-INST: seln %d1, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0x11]
seln %d1, %d1, %d15, %d15

# CHECK-INST: seln %d1, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0x1e]
seln %d1, %d14, %d0, %d0

# CHECK-INST: seln %d1, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0x1e]
seln %d1, %d14, %d0, %d1

# CHECK-INST: seln %d1, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0x1e]
seln %d1, %d14, %d0, %d14

# CHECK-INST: seln %d1, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0x1e]
seln %d1, %d14, %d0, %d15

# CHECK-INST: seln %d1, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0x1e]
seln %d1, %d14, %d1, %d0

# CHECK-INST: seln %d1, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0x1e]
seln %d1, %d14, %d1, %d1

# CHECK-INST: seln %d1, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0x1e]
seln %d1, %d14, %d1, %d14

# CHECK-INST: seln %d1, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0x1e]
seln %d1, %d14, %d1, %d15

# CHECK-INST: seln %d1, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0x1e]
seln %d1, %d14, %d14, %d0

# CHECK-INST: seln %d1, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0x1e]
seln %d1, %d14, %d14, %d1

# CHECK-INST: seln %d1, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0x1e]
seln %d1, %d14, %d14, %d14

# CHECK-INST: seln %d1, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0x1e]
seln %d1, %d14, %d14, %d15

# CHECK-INST: seln %d1, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0x1e]
seln %d1, %d14, %d15, %d0

# CHECK-INST: seln %d1, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0x1e]
seln %d1, %d14, %d15, %d1

# CHECK-INST: seln %d1, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0x1e]
seln %d1, %d14, %d15, %d14

# CHECK-INST: seln %d1, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0x1e]
seln %d1, %d14, %d15, %d15

# CHECK-INST: seln %d1, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0x1f]
seln %d1, %d15, %d0, %d0

# CHECK-INST: seln %d1, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0x1f]
seln %d1, %d15, %d0, %d1

# CHECK-INST: seln %d1, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0x1f]
seln %d1, %d15, %d0, %d14

# CHECK-INST: seln %d1, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0x1f]
seln %d1, %d15, %d0, %d15

# CHECK-INST: seln %d1, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0x1f]
seln %d1, %d15, %d1, %d0

# CHECK-INST: seln %d1, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0x1f]
seln %d1, %d15, %d1, %d1

# CHECK-INST: seln %d1, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0x1f]
seln %d1, %d15, %d1, %d14

# CHECK-INST: seln %d1, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0x1f]
seln %d1, %d15, %d1, %d15

# CHECK-INST: seln %d1, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0x1f]
seln %d1, %d15, %d14, %d0

# CHECK-INST: seln %d1, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0x1f]
seln %d1, %d15, %d14, %d1

# CHECK-INST: seln %d1, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0x1f]
seln %d1, %d15, %d14, %d14

# CHECK-INST: seln %d1, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0x1f]
seln %d1, %d15, %d14, %d15

# CHECK-INST: seln %d1, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0x1f]
seln %d1, %d15, %d15, %d0

# CHECK-INST: seln %d1, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0x1f]
seln %d1, %d15, %d15, %d1

# CHECK-INST: seln %d1, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0x1f]
seln %d1, %d15, %d15, %d14

# CHECK-INST: seln %d1, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0x1f]
seln %d1, %d15, %d15, %d15

# CHECK-INST: seln %d14, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0xe0]
seln %d14, %d0, %d0, %d0

# CHECK-INST: seln %d14, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0xe0]
seln %d14, %d0, %d0, %d1

# CHECK-INST: seln %d14, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0xe0]
seln %d14, %d0, %d0, %d14

# CHECK-INST: seln %d14, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0xe0]
seln %d14, %d0, %d0, %d15

# CHECK-INST: seln %d14, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0xe0]
seln %d14, %d0, %d1, %d0

# CHECK-INST: seln %d14, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0xe0]
seln %d14, %d0, %d1, %d1

# CHECK-INST: seln %d14, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0xe0]
seln %d14, %d0, %d1, %d14

# CHECK-INST: seln %d14, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0xe0]
seln %d14, %d0, %d1, %d15

# CHECK-INST: seln %d14, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0xe0]
seln %d14, %d0, %d14, %d0

# CHECK-INST: seln %d14, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0xe0]
seln %d14, %d0, %d14, %d1

# CHECK-INST: seln %d14, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0xe0]
seln %d14, %d0, %d14, %d14

# CHECK-INST: seln %d14, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0xe0]
seln %d14, %d0, %d14, %d15

# CHECK-INST: seln %d14, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0xe0]
seln %d14, %d0, %d15, %d0

# CHECK-INST: seln %d14, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0xe0]
seln %d14, %d0, %d15, %d1

# CHECK-INST: seln %d14, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0xe0]
seln %d14, %d0, %d15, %d14

# CHECK-INST: seln %d14, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0xe0]
seln %d14, %d0, %d15, %d15

# CHECK-INST: seln %d14, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0xe1]
seln %d14, %d1, %d0, %d0

# CHECK-INST: seln %d14, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0xe1]
seln %d14, %d1, %d0, %d1

# CHECK-INST: seln %d14, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0xe1]
seln %d14, %d1, %d0, %d14

# CHECK-INST: seln %d14, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0xe1]
seln %d14, %d1, %d0, %d15

# CHECK-INST: seln %d14, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0xe1]
seln %d14, %d1, %d1, %d0

# CHECK-INST: seln %d14, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0xe1]
seln %d14, %d1, %d1, %d1

# CHECK-INST: seln %d14, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0xe1]
seln %d14, %d1, %d1, %d14

# CHECK-INST: seln %d14, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0xe1]
seln %d14, %d1, %d1, %d15

# CHECK-INST: seln %d14, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0xe1]
seln %d14, %d1, %d14, %d0

# CHECK-INST: seln %d14, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0xe1]
seln %d14, %d1, %d14, %d1

# CHECK-INST: seln %d14, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0xe1]
seln %d14, %d1, %d14, %d14

# CHECK-INST: seln %d14, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0xe1]
seln %d14, %d1, %d14, %d15

# CHECK-INST: seln %d14, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0xe1]
seln %d14, %d1, %d15, %d0

# CHECK-INST: seln %d14, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0xe1]
seln %d14, %d1, %d15, %d1

# CHECK-INST: seln %d14, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0xe1]
seln %d14, %d1, %d15, %d14

# CHECK-INST: seln %d14, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0xe1]
seln %d14, %d1, %d15, %d15

# CHECK-INST: seln %d14, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0xee]
seln %d14, %d14, %d0, %d0

# CHECK-INST: seln %d14, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0xee]
seln %d14, %d14, %d0, %d1

# CHECK-INST: seln %d14, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0xee]
seln %d14, %d14, %d0, %d14

# CHECK-INST: seln %d14, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0xee]
seln %d14, %d14, %d0, %d15

# CHECK-INST: seln %d14, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0xee]
seln %d14, %d14, %d1, %d0

# CHECK-INST: seln %d14, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0xee]
seln %d14, %d14, %d1, %d1

# CHECK-INST: seln %d14, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0xee]
seln %d14, %d14, %d1, %d14

# CHECK-INST: seln %d14, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0xee]
seln %d14, %d14, %d1, %d15

# CHECK-INST: seln %d14, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0xee]
seln %d14, %d14, %d14, %d0

# CHECK-INST: seln %d14, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0xee]
seln %d14, %d14, %d14, %d1

# CHECK-INST: seln %d14, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0xee]
seln %d14, %d14, %d14, %d14

# CHECK-INST: seln %d14, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0xee]
seln %d14, %d14, %d14, %d15

# CHECK-INST: seln %d14, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0xee]
seln %d14, %d14, %d15, %d0

# CHECK-INST: seln %d14, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0xee]
seln %d14, %d14, %d15, %d1

# CHECK-INST: seln %d14, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0xee]
seln %d14, %d14, %d15, %d14

# CHECK-INST: seln %d14, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0xee]
seln %d14, %d14, %d15, %d15

# CHECK-INST: seln %d14, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0xef]
seln %d14, %d15, %d0, %d0

# CHECK-INST: seln %d14, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0xef]
seln %d14, %d15, %d0, %d1

# CHECK-INST: seln %d14, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0xef]
seln %d14, %d15, %d0, %d14

# CHECK-INST: seln %d14, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0xef]
seln %d14, %d15, %d0, %d15

# CHECK-INST: seln %d14, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0xef]
seln %d14, %d15, %d1, %d0

# CHECK-INST: seln %d14, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0xef]
seln %d14, %d15, %d1, %d1

# CHECK-INST: seln %d14, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0xef]
seln %d14, %d15, %d1, %d14

# CHECK-INST: seln %d14, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0xef]
seln %d14, %d15, %d1, %d15

# CHECK-INST: seln %d14, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0xef]
seln %d14, %d15, %d14, %d0

# CHECK-INST: seln %d14, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0xef]
seln %d14, %d15, %d14, %d1

# CHECK-INST: seln %d14, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0xef]
seln %d14, %d15, %d14, %d14

# CHECK-INST: seln %d14, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0xef]
seln %d14, %d15, %d14, %d15

# CHECK-INST: seln %d14, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0xef]
seln %d14, %d15, %d15, %d0

# CHECK-INST: seln %d14, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0xef]
seln %d14, %d15, %d15, %d1

# CHECK-INST: seln %d14, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0xef]
seln %d14, %d15, %d15, %d14

# CHECK-INST: seln %d14, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0xef]
seln %d14, %d15, %d15, %d15

# CHECK-INST: seln %d15, %d0, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0xf0]
seln %d15, %d0, %d0, %d0

# CHECK-INST: seln %d15, %d0, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0xf0]
seln %d15, %d0, %d0, %d1

# CHECK-INST: seln %d15, %d0, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0xf0]
seln %d15, %d0, %d0, %d14

# CHECK-INST: seln %d15, %d0, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0xf0]
seln %d15, %d0, %d0, %d15

# CHECK-INST: seln %d15, %d0, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0xf0]
seln %d15, %d0, %d1, %d0

# CHECK-INST: seln %d15, %d0, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0xf0]
seln %d15, %d0, %d1, %d1

# CHECK-INST: seln %d15, %d0, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0xf0]
seln %d15, %d0, %d1, %d14

# CHECK-INST: seln %d15, %d0, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0xf0]
seln %d15, %d0, %d1, %d15

# CHECK-INST: seln %d15, %d0, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0xf0]
seln %d15, %d0, %d14, %d0

# CHECK-INST: seln %d15, %d0, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0xf0]
seln %d15, %d0, %d14, %d1

# CHECK-INST: seln %d15, %d0, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0xf0]
seln %d15, %d0, %d14, %d14

# CHECK-INST: seln %d15, %d0, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0xf0]
seln %d15, %d0, %d14, %d15

# CHECK-INST: seln %d15, %d0, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0xf0]
seln %d15, %d0, %d15, %d0

# CHECK-INST: seln %d15, %d0, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0xf0]
seln %d15, %d0, %d15, %d1

# CHECK-INST: seln %d15, %d0, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0xf0]
seln %d15, %d0, %d15, %d14

# CHECK-INST: seln %d15, %d0, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0xf0]
seln %d15, %d0, %d15, %d15

# CHECK-INST: seln %d15, %d1, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0xf1]
seln %d15, %d1, %d0, %d0

# CHECK-INST: seln %d15, %d1, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0xf1]
seln %d15, %d1, %d0, %d1

# CHECK-INST: seln %d15, %d1, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0xf1]
seln %d15, %d1, %d0, %d14

# CHECK-INST: seln %d15, %d1, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0xf1]
seln %d15, %d1, %d0, %d15

# CHECK-INST: seln %d15, %d1, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0xf1]
seln %d15, %d1, %d1, %d0

# CHECK-INST: seln %d15, %d1, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0xf1]
seln %d15, %d1, %d1, %d1

# CHECK-INST: seln %d15, %d1, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0xf1]
seln %d15, %d1, %d1, %d14

# CHECK-INST: seln %d15, %d1, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0xf1]
seln %d15, %d1, %d1, %d15

# CHECK-INST: seln %d15, %d1, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0xf1]
seln %d15, %d1, %d14, %d0

# CHECK-INST: seln %d15, %d1, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0xf1]
seln %d15, %d1, %d14, %d1

# CHECK-INST: seln %d15, %d1, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0xf1]
seln %d15, %d1, %d14, %d14

# CHECK-INST: seln %d15, %d1, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0xf1]
seln %d15, %d1, %d14, %d15

# CHECK-INST: seln %d15, %d1, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0xf1]
seln %d15, %d1, %d15, %d0

# CHECK-INST: seln %d15, %d1, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0xf1]
seln %d15, %d1, %d15, %d1

# CHECK-INST: seln %d15, %d1, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0xf1]
seln %d15, %d1, %d15, %d14

# CHECK-INST: seln %d15, %d1, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0xf1]
seln %d15, %d1, %d15, %d15

# CHECK-INST: seln %d15, %d14, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0xfe]
seln %d15, %d14, %d0, %d0

# CHECK-INST: seln %d15, %d14, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0xfe]
seln %d15, %d14, %d0, %d1

# CHECK-INST: seln %d15, %d14, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0xfe]
seln %d15, %d14, %d0, %d14

# CHECK-INST: seln %d15, %d14, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0xfe]
seln %d15, %d14, %d0, %d15

# CHECK-INST: seln %d15, %d14, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0xfe]
seln %d15, %d14, %d1, %d0

# CHECK-INST: seln %d15, %d14, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0xfe]
seln %d15, %d14, %d1, %d1

# CHECK-INST: seln %d15, %d14, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0xfe]
seln %d15, %d14, %d1, %d14

# CHECK-INST: seln %d15, %d14, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0xfe]
seln %d15, %d14, %d1, %d15

# CHECK-INST: seln %d15, %d14, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0xfe]
seln %d15, %d14, %d14, %d0

# CHECK-INST: seln %d15, %d14, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0xfe]
seln %d15, %d14, %d14, %d1

# CHECK-INST: seln %d15, %d14, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0xfe]
seln %d15, %d14, %d14, %d14

# CHECK-INST: seln %d15, %d14, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0xfe]
seln %d15, %d14, %d14, %d15

# CHECK-INST: seln %d15, %d14, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0xfe]
seln %d15, %d14, %d15, %d0

# CHECK-INST: seln %d15, %d14, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0xfe]
seln %d15, %d14, %d15, %d1

# CHECK-INST: seln %d15, %d14, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0xfe]
seln %d15, %d14, %d15, %d14

# CHECK-INST: seln %d15, %d14, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0xfe]
seln %d15, %d14, %d15, %d15

# CHECK-INST: seln %d15, %d15, %d0, %d0
# CHECK: encoding: [0x2b,0x00,0x50,0xff]
seln %d15, %d15, %d0, %d0

# CHECK-INST: seln %d15, %d15, %d0, %d1
# CHECK: encoding: [0x2b,0x10,0x50,0xff]
seln %d15, %d15, %d0, %d1

# CHECK-INST: seln %d15, %d15, %d0, %d14
# CHECK: encoding: [0x2b,0xe0,0x50,0xff]
seln %d15, %d15, %d0, %d14

# CHECK-INST: seln %d15, %d15, %d0, %d15
# CHECK: encoding: [0x2b,0xf0,0x50,0xff]
seln %d15, %d15, %d0, %d15

# CHECK-INST: seln %d15, %d15, %d1, %d0
# CHECK: encoding: [0x2b,0x01,0x50,0xff]
seln %d15, %d15, %d1, %d0

# CHECK-INST: seln %d15, %d15, %d1, %d1
# CHECK: encoding: [0x2b,0x11,0x50,0xff]
seln %d15, %d15, %d1, %d1

# CHECK-INST: seln %d15, %d15, %d1, %d14
# CHECK: encoding: [0x2b,0xe1,0x50,0xff]
seln %d15, %d15, %d1, %d14

# CHECK-INST: seln %d15, %d15, %d1, %d15
# CHECK: encoding: [0x2b,0xf1,0x50,0xff]
seln %d15, %d15, %d1, %d15

# CHECK-INST: seln %d15, %d15, %d14, %d0
# CHECK: encoding: [0x2b,0x0e,0x50,0xff]
seln %d15, %d15, %d14, %d0

# CHECK-INST: seln %d15, %d15, %d14, %d1
# CHECK: encoding: [0x2b,0x1e,0x50,0xff]
seln %d15, %d15, %d14, %d1

# CHECK-INST: seln %d15, %d15, %d14, %d14
# CHECK: encoding: [0x2b,0xee,0x50,0xff]
seln %d15, %d15, %d14, %d14

# CHECK-INST: seln %d15, %d15, %d14, %d15
# CHECK: encoding: [0x2b,0xfe,0x50,0xff]
seln %d15, %d15, %d14, %d15

# CHECK-INST: seln %d15, %d15, %d15, %d0
# CHECK: encoding: [0x2b,0x0f,0x50,0xff]
seln %d15, %d15, %d15, %d0

# CHECK-INST: seln %d15, %d15, %d15, %d1
# CHECK: encoding: [0x2b,0x1f,0x50,0xff]
seln %d15, %d15, %d15, %d1

# CHECK-INST: seln %d15, %d15, %d15, %d14
# CHECK: encoding: [0x2b,0xef,0x50,0xff]
seln %d15, %d15, %d15, %d14

# CHECK-INST: seln %d15, %d15, %d15, %d15
# CHECK: encoding: [0x2b,0xff,0x50,0xff]
seln %d15, %d15, %d15, %d15

# CHECK-INST: seln %d0, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0x00]
seln %d0, %d0, %d0, -256

# CHECK-INST: seln %d0, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0x00]
seln %d0, %d0, %d0, -129

# CHECK-INST: seln %d0, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0x00]
seln %d0, %d0, %d0, -1

# CHECK-INST: seln %d0, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0x00]
seln %d0, %d0, %d0, 0

# CHECK-INST: seln %d0, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0x00]
seln %d0, %d0, %d0, 1

# CHECK-INST: seln %d0, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0x00]
seln %d0, %d0, %d0, 128

# CHECK-INST: seln %d0, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0x00]
seln %d0, %d0, %d0, 255

# CHECK-INST: seln %d0, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0x00]
seln %d0, %d0, %d1, -256

# CHECK-INST: seln %d0, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0x00]
seln %d0, %d0, %d1, -129

# CHECK-INST: seln %d0, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0x00]
seln %d0, %d0, %d1, -1

# CHECK-INST: seln %d0, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0x00]
seln %d0, %d0, %d1, 0

# CHECK-INST: seln %d0, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0x00]
seln %d0, %d0, %d1, 1

# CHECK-INST: seln %d0, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0x00]
seln %d0, %d0, %d1, 128

# CHECK-INST: seln %d0, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0x00]
seln %d0, %d0, %d1, 255

# CHECK-INST: seln %d0, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0x00]
seln %d0, %d0, %d14, -256

# CHECK-INST: seln %d0, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0x00]
seln %d0, %d0, %d14, -129

# CHECK-INST: seln %d0, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0x00]
seln %d0, %d0, %d14, -1

# CHECK-INST: seln %d0, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0x00]
seln %d0, %d0, %d14, 0

# CHECK-INST: seln %d0, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0x00]
seln %d0, %d0, %d14, 1

# CHECK-INST: seln %d0, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0x00]
seln %d0, %d0, %d14, 128

# CHECK-INST: seln %d0, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0x00]
seln %d0, %d0, %d14, 255

# CHECK-INST: seln %d0, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0x00]
seln %d0, %d0, %d15, -256

# CHECK-INST: seln %d0, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0x00]
seln %d0, %d0, %d15, -129

# CHECK-INST: seln %d0, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0x00]
seln %d0, %d0, %d15, -1

# CHECK-INST: seln %d0, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0x00]
seln %d0, %d0, %d15, 0

# CHECK-INST: seln %d0, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0x00]
seln %d0, %d0, %d15, 1

# CHECK-INST: seln %d0, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0x00]
seln %d0, %d0, %d15, 128

# CHECK-INST: seln %d0, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0x00]
seln %d0, %d0, %d15, 255

# CHECK-INST: seln %d0, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0x01]
seln %d0, %d1, %d0, -256

# CHECK-INST: seln %d0, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0x01]
seln %d0, %d1, %d0, -129

# CHECK-INST: seln %d0, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0x01]
seln %d0, %d1, %d0, -1

# CHECK-INST: seln %d0, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0x01]
seln %d0, %d1, %d0, 0

# CHECK-INST: seln %d0, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0x01]
seln %d0, %d1, %d0, 1

# CHECK-INST: seln %d0, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0x01]
seln %d0, %d1, %d0, 128

# CHECK-INST: seln %d0, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0x01]
seln %d0, %d1, %d0, 255

# CHECK-INST: seln %d0, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0x01]
seln %d0, %d1, %d1, -256

# CHECK-INST: seln %d0, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0x01]
seln %d0, %d1, %d1, -129

# CHECK-INST: seln %d0, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0x01]
seln %d0, %d1, %d1, -1

# CHECK-INST: seln %d0, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0x01]
seln %d0, %d1, %d1, 0

# CHECK-INST: seln %d0, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0x01]
seln %d0, %d1, %d1, 1

# CHECK-INST: seln %d0, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0x01]
seln %d0, %d1, %d1, 128

# CHECK-INST: seln %d0, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0x01]
seln %d0, %d1, %d1, 255

# CHECK-INST: seln %d0, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0x01]
seln %d0, %d1, %d14, -256

# CHECK-INST: seln %d0, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0x01]
seln %d0, %d1, %d14, -129

# CHECK-INST: seln %d0, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0x01]
seln %d0, %d1, %d14, -1

# CHECK-INST: seln %d0, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0x01]
seln %d0, %d1, %d14, 0

# CHECK-INST: seln %d0, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0x01]
seln %d0, %d1, %d14, 1

# CHECK-INST: seln %d0, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0x01]
seln %d0, %d1, %d14, 128

# CHECK-INST: seln %d0, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0x01]
seln %d0, %d1, %d14, 255

# CHECK-INST: seln %d0, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0x01]
seln %d0, %d1, %d15, -256

# CHECK-INST: seln %d0, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0x01]
seln %d0, %d1, %d15, -129

# CHECK-INST: seln %d0, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0x01]
seln %d0, %d1, %d15, -1

# CHECK-INST: seln %d0, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0x01]
seln %d0, %d1, %d15, 0

# CHECK-INST: seln %d0, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0x01]
seln %d0, %d1, %d15, 1

# CHECK-INST: seln %d0, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0x01]
seln %d0, %d1, %d15, 128

# CHECK-INST: seln %d0, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0x01]
seln %d0, %d1, %d15, 255

# CHECK-INST: seln %d0, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0x0e]
seln %d0, %d14, %d0, -256

# CHECK-INST: seln %d0, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0x0e]
seln %d0, %d14, %d0, -129

# CHECK-INST: seln %d0, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0x0e]
seln %d0, %d14, %d0, -1

# CHECK-INST: seln %d0, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0x0e]
seln %d0, %d14, %d0, 0

# CHECK-INST: seln %d0, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0x0e]
seln %d0, %d14, %d0, 1

# CHECK-INST: seln %d0, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0x0e]
seln %d0, %d14, %d0, 128

# CHECK-INST: seln %d0, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0x0e]
seln %d0, %d14, %d0, 255

# CHECK-INST: seln %d0, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0x0e]
seln %d0, %d14, %d1, -256

# CHECK-INST: seln %d0, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0x0e]
seln %d0, %d14, %d1, -129

# CHECK-INST: seln %d0, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0x0e]
seln %d0, %d14, %d1, -1

# CHECK-INST: seln %d0, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0x0e]
seln %d0, %d14, %d1, 0

# CHECK-INST: seln %d0, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0x0e]
seln %d0, %d14, %d1, 1

# CHECK-INST: seln %d0, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0x0e]
seln %d0, %d14, %d1, 128

# CHECK-INST: seln %d0, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0x0e]
seln %d0, %d14, %d1, 255

# CHECK-INST: seln %d0, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0x0e]
seln %d0, %d14, %d14, -256

# CHECK-INST: seln %d0, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0x0e]
seln %d0, %d14, %d14, -129

# CHECK-INST: seln %d0, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0x0e]
seln %d0, %d14, %d14, -1

# CHECK-INST: seln %d0, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0x0e]
seln %d0, %d14, %d14, 0

# CHECK-INST: seln %d0, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0x0e]
seln %d0, %d14, %d14, 1

# CHECK-INST: seln %d0, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0x0e]
seln %d0, %d14, %d14, 128

# CHECK-INST: seln %d0, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0x0e]
seln %d0, %d14, %d14, 255

# CHECK-INST: seln %d0, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0x0e]
seln %d0, %d14, %d15, -256

# CHECK-INST: seln %d0, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0x0e]
seln %d0, %d14, %d15, -129

# CHECK-INST: seln %d0, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0x0e]
seln %d0, %d14, %d15, -1

# CHECK-INST: seln %d0, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0x0e]
seln %d0, %d14, %d15, 0

# CHECK-INST: seln %d0, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0x0e]
seln %d0, %d14, %d15, 1

# CHECK-INST: seln %d0, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0x0e]
seln %d0, %d14, %d15, 128

# CHECK-INST: seln %d0, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0x0e]
seln %d0, %d14, %d15, 255

# CHECK-INST: seln %d0, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0x0f]
seln %d0, %d15, %d0, -256

# CHECK-INST: seln %d0, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0x0f]
seln %d0, %d15, %d0, -129

# CHECK-INST: seln %d0, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0x0f]
seln %d0, %d15, %d0, -1

# CHECK-INST: seln %d0, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0x0f]
seln %d0, %d15, %d0, 0

# CHECK-INST: seln %d0, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0x0f]
seln %d0, %d15, %d0, 1

# CHECK-INST: seln %d0, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0x0f]
seln %d0, %d15, %d0, 128

# CHECK-INST: seln %d0, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0x0f]
seln %d0, %d15, %d0, 255

# CHECK-INST: seln %d0, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0x0f]
seln %d0, %d15, %d1, -256

# CHECK-INST: seln %d0, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0x0f]
seln %d0, %d15, %d1, -129

# CHECK-INST: seln %d0, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0x0f]
seln %d0, %d15, %d1, -1

# CHECK-INST: seln %d0, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0x0f]
seln %d0, %d15, %d1, 0

# CHECK-INST: seln %d0, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0x0f]
seln %d0, %d15, %d1, 1

# CHECK-INST: seln %d0, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0x0f]
seln %d0, %d15, %d1, 128

# CHECK-INST: seln %d0, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0x0f]
seln %d0, %d15, %d1, 255

# CHECK-INST: seln %d0, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0x0f]
seln %d0, %d15, %d14, -256

# CHECK-INST: seln %d0, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0x0f]
seln %d0, %d15, %d14, -129

# CHECK-INST: seln %d0, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0x0f]
seln %d0, %d15, %d14, -1

# CHECK-INST: seln %d0, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0x0f]
seln %d0, %d15, %d14, 0

# CHECK-INST: seln %d0, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0x0f]
seln %d0, %d15, %d14, 1

# CHECK-INST: seln %d0, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0x0f]
seln %d0, %d15, %d14, 128

# CHECK-INST: seln %d0, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0x0f]
seln %d0, %d15, %d14, 255

# CHECK-INST: seln %d0, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0x0f]
seln %d0, %d15, %d15, -256

# CHECK-INST: seln %d0, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0x0f]
seln %d0, %d15, %d15, -129

# CHECK-INST: seln %d0, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0x0f]
seln %d0, %d15, %d15, -1

# CHECK-INST: seln %d0, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0x0f]
seln %d0, %d15, %d15, 0

# CHECK-INST: seln %d0, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0x0f]
seln %d0, %d15, %d15, 1

# CHECK-INST: seln %d0, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0x0f]
seln %d0, %d15, %d15, 128

# CHECK-INST: seln %d0, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0x0f]
seln %d0, %d15, %d15, 255

# CHECK-INST: seln %d1, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0x10]
seln %d1, %d0, %d0, -256

# CHECK-INST: seln %d1, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0x10]
seln %d1, %d0, %d0, -129

# CHECK-INST: seln %d1, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0x10]
seln %d1, %d0, %d0, -1

# CHECK-INST: seln %d1, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0x10]
seln %d1, %d0, %d0, 0

# CHECK-INST: seln %d1, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0x10]
seln %d1, %d0, %d0, 1

# CHECK-INST: seln %d1, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0x10]
seln %d1, %d0, %d0, 128

# CHECK-INST: seln %d1, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0x10]
seln %d1, %d0, %d0, 255

# CHECK-INST: seln %d1, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0x10]
seln %d1, %d0, %d1, -256

# CHECK-INST: seln %d1, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0x10]
seln %d1, %d0, %d1, -129

# CHECK-INST: seln %d1, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0x10]
seln %d1, %d0, %d1, -1

# CHECK-INST: seln %d1, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0x10]
seln %d1, %d0, %d1, 0

# CHECK-INST: seln %d1, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0x10]
seln %d1, %d0, %d1, 1

# CHECK-INST: seln %d1, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0x10]
seln %d1, %d0, %d1, 128

# CHECK-INST: seln %d1, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0x10]
seln %d1, %d0, %d1, 255

# CHECK-INST: seln %d1, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0x10]
seln %d1, %d0, %d14, -256

# CHECK-INST: seln %d1, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0x10]
seln %d1, %d0, %d14, -129

# CHECK-INST: seln %d1, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0x10]
seln %d1, %d0, %d14, -1

# CHECK-INST: seln %d1, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0x10]
seln %d1, %d0, %d14, 0

# CHECK-INST: seln %d1, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0x10]
seln %d1, %d0, %d14, 1

# CHECK-INST: seln %d1, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0x10]
seln %d1, %d0, %d14, 128

# CHECK-INST: seln %d1, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0x10]
seln %d1, %d0, %d14, 255

# CHECK-INST: seln %d1, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0x10]
seln %d1, %d0, %d15, -256

# CHECK-INST: seln %d1, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0x10]
seln %d1, %d0, %d15, -129

# CHECK-INST: seln %d1, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0x10]
seln %d1, %d0, %d15, -1

# CHECK-INST: seln %d1, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0x10]
seln %d1, %d0, %d15, 0

# CHECK-INST: seln %d1, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0x10]
seln %d1, %d0, %d15, 1

# CHECK-INST: seln %d1, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0x10]
seln %d1, %d0, %d15, 128

# CHECK-INST: seln %d1, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0x10]
seln %d1, %d0, %d15, 255

# CHECK-INST: seln %d1, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0x11]
seln %d1, %d1, %d0, -256

# CHECK-INST: seln %d1, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0x11]
seln %d1, %d1, %d0, -129

# CHECK-INST: seln %d1, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0x11]
seln %d1, %d1, %d0, -1

# CHECK-INST: seln %d1, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0x11]
seln %d1, %d1, %d0, 0

# CHECK-INST: seln %d1, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0x11]
seln %d1, %d1, %d0, 1

# CHECK-INST: seln %d1, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0x11]
seln %d1, %d1, %d0, 128

# CHECK-INST: seln %d1, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0x11]
seln %d1, %d1, %d0, 255

# CHECK-INST: seln %d1, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0x11]
seln %d1, %d1, %d1, -256

# CHECK-INST: seln %d1, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0x11]
seln %d1, %d1, %d1, -129

# CHECK-INST: seln %d1, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0x11]
seln %d1, %d1, %d1, -1

# CHECK-INST: seln %d1, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0x11]
seln %d1, %d1, %d1, 0

# CHECK-INST: seln %d1, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0x11]
seln %d1, %d1, %d1, 1

# CHECK-INST: seln %d1, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0x11]
seln %d1, %d1, %d1, 128

# CHECK-INST: seln %d1, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0x11]
seln %d1, %d1, %d1, 255

# CHECK-INST: seln %d1, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0x11]
seln %d1, %d1, %d14, -256

# CHECK-INST: seln %d1, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0x11]
seln %d1, %d1, %d14, -129

# CHECK-INST: seln %d1, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0x11]
seln %d1, %d1, %d14, -1

# CHECK-INST: seln %d1, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0x11]
seln %d1, %d1, %d14, 0

# CHECK-INST: seln %d1, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0x11]
seln %d1, %d1, %d14, 1

# CHECK-INST: seln %d1, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0x11]
seln %d1, %d1, %d14, 128

# CHECK-INST: seln %d1, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0x11]
seln %d1, %d1, %d14, 255

# CHECK-INST: seln %d1, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0x11]
seln %d1, %d1, %d15, -256

# CHECK-INST: seln %d1, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0x11]
seln %d1, %d1, %d15, -129

# CHECK-INST: seln %d1, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0x11]
seln %d1, %d1, %d15, -1

# CHECK-INST: seln %d1, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0x11]
seln %d1, %d1, %d15, 0

# CHECK-INST: seln %d1, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0x11]
seln %d1, %d1, %d15, 1

# CHECK-INST: seln %d1, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0x11]
seln %d1, %d1, %d15, 128

# CHECK-INST: seln %d1, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0x11]
seln %d1, %d1, %d15, 255

# CHECK-INST: seln %d1, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0x1e]
seln %d1, %d14, %d0, -256

# CHECK-INST: seln %d1, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0x1e]
seln %d1, %d14, %d0, -129

# CHECK-INST: seln %d1, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0x1e]
seln %d1, %d14, %d0, -1

# CHECK-INST: seln %d1, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0x1e]
seln %d1, %d14, %d0, 0

# CHECK-INST: seln %d1, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0x1e]
seln %d1, %d14, %d0, 1

# CHECK-INST: seln %d1, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0x1e]
seln %d1, %d14, %d0, 128

# CHECK-INST: seln %d1, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0x1e]
seln %d1, %d14, %d0, 255

# CHECK-INST: seln %d1, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0x1e]
seln %d1, %d14, %d1, -256

# CHECK-INST: seln %d1, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0x1e]
seln %d1, %d14, %d1, -129

# CHECK-INST: seln %d1, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0x1e]
seln %d1, %d14, %d1, -1

# CHECK-INST: seln %d1, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0x1e]
seln %d1, %d14, %d1, 0

# CHECK-INST: seln %d1, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0x1e]
seln %d1, %d14, %d1, 1

# CHECK-INST: seln %d1, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0x1e]
seln %d1, %d14, %d1, 128

# CHECK-INST: seln %d1, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0x1e]
seln %d1, %d14, %d1, 255

# CHECK-INST: seln %d1, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0x1e]
seln %d1, %d14, %d14, -256

# CHECK-INST: seln %d1, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0x1e]
seln %d1, %d14, %d14, -129

# CHECK-INST: seln %d1, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0x1e]
seln %d1, %d14, %d14, -1

# CHECK-INST: seln %d1, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0x1e]
seln %d1, %d14, %d14, 0

# CHECK-INST: seln %d1, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0x1e]
seln %d1, %d14, %d14, 1

# CHECK-INST: seln %d1, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0x1e]
seln %d1, %d14, %d14, 128

# CHECK-INST: seln %d1, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0x1e]
seln %d1, %d14, %d14, 255

# CHECK-INST: seln %d1, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0x1e]
seln %d1, %d14, %d15, -256

# CHECK-INST: seln %d1, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0x1e]
seln %d1, %d14, %d15, -129

# CHECK-INST: seln %d1, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0x1e]
seln %d1, %d14, %d15, -1

# CHECK-INST: seln %d1, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0x1e]
seln %d1, %d14, %d15, 0

# CHECK-INST: seln %d1, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0x1e]
seln %d1, %d14, %d15, 1

# CHECK-INST: seln %d1, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0x1e]
seln %d1, %d14, %d15, 128

# CHECK-INST: seln %d1, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0x1e]
seln %d1, %d14, %d15, 255

# CHECK-INST: seln %d1, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0x1f]
seln %d1, %d15, %d0, -256

# CHECK-INST: seln %d1, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0x1f]
seln %d1, %d15, %d0, -129

# CHECK-INST: seln %d1, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0x1f]
seln %d1, %d15, %d0, -1

# CHECK-INST: seln %d1, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0x1f]
seln %d1, %d15, %d0, 0

# CHECK-INST: seln %d1, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0x1f]
seln %d1, %d15, %d0, 1

# CHECK-INST: seln %d1, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0x1f]
seln %d1, %d15, %d0, 128

# CHECK-INST: seln %d1, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0x1f]
seln %d1, %d15, %d0, 255

# CHECK-INST: seln %d1, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0x1f]
seln %d1, %d15, %d1, -256

# CHECK-INST: seln %d1, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0x1f]
seln %d1, %d15, %d1, -129

# CHECK-INST: seln %d1, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0x1f]
seln %d1, %d15, %d1, -1

# CHECK-INST: seln %d1, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0x1f]
seln %d1, %d15, %d1, 0

# CHECK-INST: seln %d1, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0x1f]
seln %d1, %d15, %d1, 1

# CHECK-INST: seln %d1, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0x1f]
seln %d1, %d15, %d1, 128

# CHECK-INST: seln %d1, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0x1f]
seln %d1, %d15, %d1, 255

# CHECK-INST: seln %d1, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0x1f]
seln %d1, %d15, %d14, -256

# CHECK-INST: seln %d1, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0x1f]
seln %d1, %d15, %d14, -129

# CHECK-INST: seln %d1, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0x1f]
seln %d1, %d15, %d14, -1

# CHECK-INST: seln %d1, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0x1f]
seln %d1, %d15, %d14, 0

# CHECK-INST: seln %d1, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0x1f]
seln %d1, %d15, %d14, 1

# CHECK-INST: seln %d1, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0x1f]
seln %d1, %d15, %d14, 128

# CHECK-INST: seln %d1, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0x1f]
seln %d1, %d15, %d14, 255

# CHECK-INST: seln %d1, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0x1f]
seln %d1, %d15, %d15, -256

# CHECK-INST: seln %d1, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0x1f]
seln %d1, %d15, %d15, -129

# CHECK-INST: seln %d1, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0x1f]
seln %d1, %d15, %d15, -1

# CHECK-INST: seln %d1, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0x1f]
seln %d1, %d15, %d15, 0

# CHECK-INST: seln %d1, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0x1f]
seln %d1, %d15, %d15, 1

# CHECK-INST: seln %d1, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0x1f]
seln %d1, %d15, %d15, 128

# CHECK-INST: seln %d1, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0x1f]
seln %d1, %d15, %d15, 255

# CHECK-INST: seln %d14, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0xe0]
seln %d14, %d0, %d0, -256

# CHECK-INST: seln %d14, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0xe0]
seln %d14, %d0, %d0, -129

# CHECK-INST: seln %d14, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0xe0]
seln %d14, %d0, %d0, -1

# CHECK-INST: seln %d14, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0xe0]
seln %d14, %d0, %d0, 0

# CHECK-INST: seln %d14, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0xe0]
seln %d14, %d0, %d0, 1

# CHECK-INST: seln %d14, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0xe0]
seln %d14, %d0, %d0, 128

# CHECK-INST: seln %d14, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0xe0]
seln %d14, %d0, %d0, 255

# CHECK-INST: seln %d14, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0xe0]
seln %d14, %d0, %d1, -256

# CHECK-INST: seln %d14, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0xe0]
seln %d14, %d0, %d1, -129

# CHECK-INST: seln %d14, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0xe0]
seln %d14, %d0, %d1, -1

# CHECK-INST: seln %d14, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0xe0]
seln %d14, %d0, %d1, 0

# CHECK-INST: seln %d14, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0xe0]
seln %d14, %d0, %d1, 1

# CHECK-INST: seln %d14, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0xe0]
seln %d14, %d0, %d1, 128

# CHECK-INST: seln %d14, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0xe0]
seln %d14, %d0, %d1, 255

# CHECK-INST: seln %d14, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0xe0]
seln %d14, %d0, %d14, -256

# CHECK-INST: seln %d14, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0xe0]
seln %d14, %d0, %d14, -129

# CHECK-INST: seln %d14, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0xe0]
seln %d14, %d0, %d14, -1

# CHECK-INST: seln %d14, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0xe0]
seln %d14, %d0, %d14, 0

# CHECK-INST: seln %d14, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0xe0]
seln %d14, %d0, %d14, 1

# CHECK-INST: seln %d14, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0xe0]
seln %d14, %d0, %d14, 128

# CHECK-INST: seln %d14, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0xe0]
seln %d14, %d0, %d14, 255

# CHECK-INST: seln %d14, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0xe0]
seln %d14, %d0, %d15, -256

# CHECK-INST: seln %d14, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0xe0]
seln %d14, %d0, %d15, -129

# CHECK-INST: seln %d14, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0xe0]
seln %d14, %d0, %d15, -1

# CHECK-INST: seln %d14, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0xe0]
seln %d14, %d0, %d15, 0

# CHECK-INST: seln %d14, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0xe0]
seln %d14, %d0, %d15, 1

# CHECK-INST: seln %d14, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0xe0]
seln %d14, %d0, %d15, 128

# CHECK-INST: seln %d14, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0xe0]
seln %d14, %d0, %d15, 255

# CHECK-INST: seln %d14, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0xe1]
seln %d14, %d1, %d0, -256

# CHECK-INST: seln %d14, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0xe1]
seln %d14, %d1, %d0, -129

# CHECK-INST: seln %d14, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0xe1]
seln %d14, %d1, %d0, -1

# CHECK-INST: seln %d14, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0xe1]
seln %d14, %d1, %d0, 0

# CHECK-INST: seln %d14, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0xe1]
seln %d14, %d1, %d0, 1

# CHECK-INST: seln %d14, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0xe1]
seln %d14, %d1, %d0, 128

# CHECK-INST: seln %d14, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0xe1]
seln %d14, %d1, %d0, 255

# CHECK-INST: seln %d14, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0xe1]
seln %d14, %d1, %d1, -256

# CHECK-INST: seln %d14, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0xe1]
seln %d14, %d1, %d1, -129

# CHECK-INST: seln %d14, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0xe1]
seln %d14, %d1, %d1, -1

# CHECK-INST: seln %d14, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0xe1]
seln %d14, %d1, %d1, 0

# CHECK-INST: seln %d14, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0xe1]
seln %d14, %d1, %d1, 1

# CHECK-INST: seln %d14, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0xe1]
seln %d14, %d1, %d1, 128

# CHECK-INST: seln %d14, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0xe1]
seln %d14, %d1, %d1, 255

# CHECK-INST: seln %d14, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0xe1]
seln %d14, %d1, %d14, -256

# CHECK-INST: seln %d14, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0xe1]
seln %d14, %d1, %d14, -129

# CHECK-INST: seln %d14, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0xe1]
seln %d14, %d1, %d14, -1

# CHECK-INST: seln %d14, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0xe1]
seln %d14, %d1, %d14, 0

# CHECK-INST: seln %d14, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0xe1]
seln %d14, %d1, %d14, 1

# CHECK-INST: seln %d14, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0xe1]
seln %d14, %d1, %d14, 128

# CHECK-INST: seln %d14, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0xe1]
seln %d14, %d1, %d14, 255

# CHECK-INST: seln %d14, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0xe1]
seln %d14, %d1, %d15, -256

# CHECK-INST: seln %d14, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0xe1]
seln %d14, %d1, %d15, -129

# CHECK-INST: seln %d14, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0xe1]
seln %d14, %d1, %d15, -1

# CHECK-INST: seln %d14, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0xe1]
seln %d14, %d1, %d15, 0

# CHECK-INST: seln %d14, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0xe1]
seln %d14, %d1, %d15, 1

# CHECK-INST: seln %d14, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0xe1]
seln %d14, %d1, %d15, 128

# CHECK-INST: seln %d14, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0xe1]
seln %d14, %d1, %d15, 255

# CHECK-INST: seln %d14, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0xee]
seln %d14, %d14, %d0, -256

# CHECK-INST: seln %d14, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0xee]
seln %d14, %d14, %d0, -129

# CHECK-INST: seln %d14, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0xee]
seln %d14, %d14, %d0, -1

# CHECK-INST: seln %d14, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0xee]
seln %d14, %d14, %d0, 0

# CHECK-INST: seln %d14, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0xee]
seln %d14, %d14, %d0, 1

# CHECK-INST: seln %d14, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0xee]
seln %d14, %d14, %d0, 128

# CHECK-INST: seln %d14, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0xee]
seln %d14, %d14, %d0, 255

# CHECK-INST: seln %d14, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0xee]
seln %d14, %d14, %d1, -256

# CHECK-INST: seln %d14, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0xee]
seln %d14, %d14, %d1, -129

# CHECK-INST: seln %d14, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0xee]
seln %d14, %d14, %d1, -1

# CHECK-INST: seln %d14, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0xee]
seln %d14, %d14, %d1, 0

# CHECK-INST: seln %d14, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0xee]
seln %d14, %d14, %d1, 1

# CHECK-INST: seln %d14, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0xee]
seln %d14, %d14, %d1, 128

# CHECK-INST: seln %d14, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0xee]
seln %d14, %d14, %d1, 255

# CHECK-INST: seln %d14, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0xee]
seln %d14, %d14, %d14, -256

# CHECK-INST: seln %d14, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0xee]
seln %d14, %d14, %d14, -129

# CHECK-INST: seln %d14, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0xee]
seln %d14, %d14, %d14, -1

# CHECK-INST: seln %d14, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0xee]
seln %d14, %d14, %d14, 0

# CHECK-INST: seln %d14, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0xee]
seln %d14, %d14, %d14, 1

# CHECK-INST: seln %d14, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0xee]
seln %d14, %d14, %d14, 128

# CHECK-INST: seln %d14, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0xee]
seln %d14, %d14, %d14, 255

# CHECK-INST: seln %d14, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0xee]
seln %d14, %d14, %d15, -256

# CHECK-INST: seln %d14, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0xee]
seln %d14, %d14, %d15, -129

# CHECK-INST: seln %d14, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0xee]
seln %d14, %d14, %d15, -1

# CHECK-INST: seln %d14, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0xee]
seln %d14, %d14, %d15, 0

# CHECK-INST: seln %d14, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0xee]
seln %d14, %d14, %d15, 1

# CHECK-INST: seln %d14, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0xee]
seln %d14, %d14, %d15, 128

# CHECK-INST: seln %d14, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0xee]
seln %d14, %d14, %d15, 255

# CHECK-INST: seln %d14, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0xef]
seln %d14, %d15, %d0, -256

# CHECK-INST: seln %d14, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0xef]
seln %d14, %d15, %d0, -129

# CHECK-INST: seln %d14, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0xef]
seln %d14, %d15, %d0, -1

# CHECK-INST: seln %d14, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0xef]
seln %d14, %d15, %d0, 0

# CHECK-INST: seln %d14, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0xef]
seln %d14, %d15, %d0, 1

# CHECK-INST: seln %d14, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0xef]
seln %d14, %d15, %d0, 128

# CHECK-INST: seln %d14, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0xef]
seln %d14, %d15, %d0, 255

# CHECK-INST: seln %d14, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0xef]
seln %d14, %d15, %d1, -256

# CHECK-INST: seln %d14, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0xef]
seln %d14, %d15, %d1, -129

# CHECK-INST: seln %d14, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0xef]
seln %d14, %d15, %d1, -1

# CHECK-INST: seln %d14, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0xef]
seln %d14, %d15, %d1, 0

# CHECK-INST: seln %d14, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0xef]
seln %d14, %d15, %d1, 1

# CHECK-INST: seln %d14, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0xef]
seln %d14, %d15, %d1, 128

# CHECK-INST: seln %d14, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0xef]
seln %d14, %d15, %d1, 255

# CHECK-INST: seln %d14, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0xef]
seln %d14, %d15, %d14, -256

# CHECK-INST: seln %d14, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0xef]
seln %d14, %d15, %d14, -129

# CHECK-INST: seln %d14, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0xef]
seln %d14, %d15, %d14, -1

# CHECK-INST: seln %d14, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0xef]
seln %d14, %d15, %d14, 0

# CHECK-INST: seln %d14, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0xef]
seln %d14, %d15, %d14, 1

# CHECK-INST: seln %d14, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0xef]
seln %d14, %d15, %d14, 128

# CHECK-INST: seln %d14, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0xef]
seln %d14, %d15, %d14, 255

# CHECK-INST: seln %d14, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0xef]
seln %d14, %d15, %d15, -256

# CHECK-INST: seln %d14, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0xef]
seln %d14, %d15, %d15, -129

# CHECK-INST: seln %d14, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0xef]
seln %d14, %d15, %d15, -1

# CHECK-INST: seln %d14, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0xef]
seln %d14, %d15, %d15, 0

# CHECK-INST: seln %d14, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0xef]
seln %d14, %d15, %d15, 1

# CHECK-INST: seln %d14, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0xef]
seln %d14, %d15, %d15, 128

# CHECK-INST: seln %d14, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0xef]
seln %d14, %d15, %d15, 255

# CHECK-INST: seln %d15, %d0, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0xf0]
seln %d15, %d0, %d0, -256

# CHECK-INST: seln %d15, %d0, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0xf0]
seln %d15, %d0, %d0, -129

# CHECK-INST: seln %d15, %d0, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0xf0]
seln %d15, %d0, %d0, -1

# CHECK-INST: seln %d15, %d0, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0xf0]
seln %d15, %d0, %d0, 0

# CHECK-INST: seln %d15, %d0, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0xf0]
seln %d15, %d0, %d0, 1

# CHECK-INST: seln %d15, %d0, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0xf0]
seln %d15, %d0, %d0, 128

# CHECK-INST: seln %d15, %d0, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0xf0]
seln %d15, %d0, %d0, 255

# CHECK-INST: seln %d15, %d0, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0xf0]
seln %d15, %d0, %d1, -256

# CHECK-INST: seln %d15, %d0, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0xf0]
seln %d15, %d0, %d1, -129

# CHECK-INST: seln %d15, %d0, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0xf0]
seln %d15, %d0, %d1, -1

# CHECK-INST: seln %d15, %d0, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0xf0]
seln %d15, %d0, %d1, 0

# CHECK-INST: seln %d15, %d0, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0xf0]
seln %d15, %d0, %d1, 1

# CHECK-INST: seln %d15, %d0, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0xf0]
seln %d15, %d0, %d1, 128

# CHECK-INST: seln %d15, %d0, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0xf0]
seln %d15, %d0, %d1, 255

# CHECK-INST: seln %d15, %d0, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0xf0]
seln %d15, %d0, %d14, -256

# CHECK-INST: seln %d15, %d0, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0xf0]
seln %d15, %d0, %d14, -129

# CHECK-INST: seln %d15, %d0, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0xf0]
seln %d15, %d0, %d14, -1

# CHECK-INST: seln %d15, %d0, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0xf0]
seln %d15, %d0, %d14, 0

# CHECK-INST: seln %d15, %d0, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0xf0]
seln %d15, %d0, %d14, 1

# CHECK-INST: seln %d15, %d0, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0xf0]
seln %d15, %d0, %d14, 128

# CHECK-INST: seln %d15, %d0, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0xf0]
seln %d15, %d0, %d14, 255

# CHECK-INST: seln %d15, %d0, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0xf0]
seln %d15, %d0, %d15, -256

# CHECK-INST: seln %d15, %d0, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0xf0]
seln %d15, %d0, %d15, -129

# CHECK-INST: seln %d15, %d0, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0xf0]
seln %d15, %d0, %d15, -1

# CHECK-INST: seln %d15, %d0, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0xf0]
seln %d15, %d0, %d15, 0

# CHECK-INST: seln %d15, %d0, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0xf0]
seln %d15, %d0, %d15, 1

# CHECK-INST: seln %d15, %d0, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0xf0]
seln %d15, %d0, %d15, 128

# CHECK-INST: seln %d15, %d0, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0xf0]
seln %d15, %d0, %d15, 255

# CHECK-INST: seln %d15, %d1, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0xf1]
seln %d15, %d1, %d0, -256

# CHECK-INST: seln %d15, %d1, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0xf1]
seln %d15, %d1, %d0, -129

# CHECK-INST: seln %d15, %d1, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0xf1]
seln %d15, %d1, %d0, -1

# CHECK-INST: seln %d15, %d1, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0xf1]
seln %d15, %d1, %d0, 0

# CHECK-INST: seln %d15, %d1, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0xf1]
seln %d15, %d1, %d0, 1

# CHECK-INST: seln %d15, %d1, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0xf1]
seln %d15, %d1, %d0, 128

# CHECK-INST: seln %d15, %d1, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0xf1]
seln %d15, %d1, %d0, 255

# CHECK-INST: seln %d15, %d1, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0xf1]
seln %d15, %d1, %d1, -256

# CHECK-INST: seln %d15, %d1, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0xf1]
seln %d15, %d1, %d1, -129

# CHECK-INST: seln %d15, %d1, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0xf1]
seln %d15, %d1, %d1, -1

# CHECK-INST: seln %d15, %d1, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0xf1]
seln %d15, %d1, %d1, 0

# CHECK-INST: seln %d15, %d1, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0xf1]
seln %d15, %d1, %d1, 1

# CHECK-INST: seln %d15, %d1, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0xf1]
seln %d15, %d1, %d1, 128

# CHECK-INST: seln %d15, %d1, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0xf1]
seln %d15, %d1, %d1, 255

# CHECK-INST: seln %d15, %d1, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0xf1]
seln %d15, %d1, %d14, -256

# CHECK-INST: seln %d15, %d1, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0xf1]
seln %d15, %d1, %d14, -129

# CHECK-INST: seln %d15, %d1, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0xf1]
seln %d15, %d1, %d14, -1

# CHECK-INST: seln %d15, %d1, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0xf1]
seln %d15, %d1, %d14, 0

# CHECK-INST: seln %d15, %d1, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0xf1]
seln %d15, %d1, %d14, 1

# CHECK-INST: seln %d15, %d1, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0xf1]
seln %d15, %d1, %d14, 128

# CHECK-INST: seln %d15, %d1, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0xf1]
seln %d15, %d1, %d14, 255

# CHECK-INST: seln %d15, %d1, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0xf1]
seln %d15, %d1, %d15, -256

# CHECK-INST: seln %d15, %d1, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0xf1]
seln %d15, %d1, %d15, -129

# CHECK-INST: seln %d15, %d1, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0xf1]
seln %d15, %d1, %d15, -1

# CHECK-INST: seln %d15, %d1, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0xf1]
seln %d15, %d1, %d15, 0

# CHECK-INST: seln %d15, %d1, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0xf1]
seln %d15, %d1, %d15, 1

# CHECK-INST: seln %d15, %d1, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0xf1]
seln %d15, %d1, %d15, 128

# CHECK-INST: seln %d15, %d1, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0xf1]
seln %d15, %d1, %d15, 255

# CHECK-INST: seln %d15, %d14, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0xfe]
seln %d15, %d14, %d0, -256

# CHECK-INST: seln %d15, %d14, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0xfe]
seln %d15, %d14, %d0, -129

# CHECK-INST: seln %d15, %d14, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0xfe]
seln %d15, %d14, %d0, -1

# CHECK-INST: seln %d15, %d14, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0xfe]
seln %d15, %d14, %d0, 0

# CHECK-INST: seln %d15, %d14, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0xfe]
seln %d15, %d14, %d0, 1

# CHECK-INST: seln %d15, %d14, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0xfe]
seln %d15, %d14, %d0, 128

# CHECK-INST: seln %d15, %d14, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0xfe]
seln %d15, %d14, %d0, 255

# CHECK-INST: seln %d15, %d14, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0xfe]
seln %d15, %d14, %d1, -256

# CHECK-INST: seln %d15, %d14, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0xfe]
seln %d15, %d14, %d1, -129

# CHECK-INST: seln %d15, %d14, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0xfe]
seln %d15, %d14, %d1, -1

# CHECK-INST: seln %d15, %d14, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0xfe]
seln %d15, %d14, %d1, 0

# CHECK-INST: seln %d15, %d14, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0xfe]
seln %d15, %d14, %d1, 1

# CHECK-INST: seln %d15, %d14, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0xfe]
seln %d15, %d14, %d1, 128

# CHECK-INST: seln %d15, %d14, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0xfe]
seln %d15, %d14, %d1, 255

# CHECK-INST: seln %d15, %d14, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0xfe]
seln %d15, %d14, %d14, -256

# CHECK-INST: seln %d15, %d14, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0xfe]
seln %d15, %d14, %d14, -129

# CHECK-INST: seln %d15, %d14, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0xfe]
seln %d15, %d14, %d14, -1

# CHECK-INST: seln %d15, %d14, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0xfe]
seln %d15, %d14, %d14, 0

# CHECK-INST: seln %d15, %d14, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0xfe]
seln %d15, %d14, %d14, 1

# CHECK-INST: seln %d15, %d14, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0xfe]
seln %d15, %d14, %d14, 128

# CHECK-INST: seln %d15, %d14, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0xfe]
seln %d15, %d14, %d14, 255

# CHECK-INST: seln %d15, %d14, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0xfe]
seln %d15, %d14, %d15, -256

# CHECK-INST: seln %d15, %d14, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0xfe]
seln %d15, %d14, %d15, -129

# CHECK-INST: seln %d15, %d14, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0xfe]
seln %d15, %d14, %d15, -1

# CHECK-INST: seln %d15, %d14, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0xfe]
seln %d15, %d14, %d15, 0

# CHECK-INST: seln %d15, %d14, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0xfe]
seln %d15, %d14, %d15, 1

# CHECK-INST: seln %d15, %d14, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0xfe]
seln %d15, %d14, %d15, 128

# CHECK-INST: seln %d15, %d14, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0xfe]
seln %d15, %d14, %d15, 255

# CHECK-INST: seln %d15, %d15, %d0, -256
# CHECK: encoding: [0xab,0x00,0xb0,0xff]
seln %d15, %d15, %d0, -256

# CHECK-INST: seln %d15, %d15, %d0, -129
# CHECK: encoding: [0xab,0xf0,0xb7,0xff]
seln %d15, %d15, %d0, -129

# CHECK-INST: seln %d15, %d15, %d0, -1
# CHECK: encoding: [0xab,0xf0,0xbf,0xff]
seln %d15, %d15, %d0, -1

# CHECK-INST: seln %d15, %d15, %d0, 0
# CHECK: encoding: [0xab,0x00,0xa0,0xff]
seln %d15, %d15, %d0, 0

# CHECK-INST: seln %d15, %d15, %d0, 1
# CHECK: encoding: [0xab,0x10,0xa0,0xff]
seln %d15, %d15, %d0, 1

# CHECK-INST: seln %d15, %d15, %d0, 128
# CHECK: encoding: [0xab,0x00,0xa8,0xff]
seln %d15, %d15, %d0, 128

# CHECK-INST: seln %d15, %d15, %d0, 255
# CHECK: encoding: [0xab,0xf0,0xaf,0xff]
seln %d15, %d15, %d0, 255

# CHECK-INST: seln %d15, %d15, %d1, -256
# CHECK: encoding: [0xab,0x01,0xb0,0xff]
seln %d15, %d15, %d1, -256

# CHECK-INST: seln %d15, %d15, %d1, -129
# CHECK: encoding: [0xab,0xf1,0xb7,0xff]
seln %d15, %d15, %d1, -129

# CHECK-INST: seln %d15, %d15, %d1, -1
# CHECK: encoding: [0xab,0xf1,0xbf,0xff]
seln %d15, %d15, %d1, -1

# CHECK-INST: seln %d15, %d15, %d1, 0
# CHECK: encoding: [0xab,0x01,0xa0,0xff]
seln %d15, %d15, %d1, 0

# CHECK-INST: seln %d15, %d15, %d1, 1
# CHECK: encoding: [0xab,0x11,0xa0,0xff]
seln %d15, %d15, %d1, 1

# CHECK-INST: seln %d15, %d15, %d1, 128
# CHECK: encoding: [0xab,0x01,0xa8,0xff]
seln %d15, %d15, %d1, 128

# CHECK-INST: seln %d15, %d15, %d1, 255
# CHECK: encoding: [0xab,0xf1,0xaf,0xff]
seln %d15, %d15, %d1, 255

# CHECK-INST: seln %d15, %d15, %d14, -256
# CHECK: encoding: [0xab,0x0e,0xb0,0xff]
seln %d15, %d15, %d14, -256

# CHECK-INST: seln %d15, %d15, %d14, -129
# CHECK: encoding: [0xab,0xfe,0xb7,0xff]
seln %d15, %d15, %d14, -129

# CHECK-INST: seln %d15, %d15, %d14, -1
# CHECK: encoding: [0xab,0xfe,0xbf,0xff]
seln %d15, %d15, %d14, -1

# CHECK-INST: seln %d15, %d15, %d14, 0
# CHECK: encoding: [0xab,0x0e,0xa0,0xff]
seln %d15, %d15, %d14, 0

# CHECK-INST: seln %d15, %d15, %d14, 1
# CHECK: encoding: [0xab,0x1e,0xa0,0xff]
seln %d15, %d15, %d14, 1

# CHECK-INST: seln %d15, %d15, %d14, 128
# CHECK: encoding: [0xab,0x0e,0xa8,0xff]
seln %d15, %d15, %d14, 128

# CHECK-INST: seln %d15, %d15, %d14, 255
# CHECK: encoding: [0xab,0xfe,0xaf,0xff]
seln %d15, %d15, %d14, 255

# CHECK-INST: seln %d15, %d15, %d15, -256
# CHECK: encoding: [0xab,0x0f,0xb0,0xff]
seln %d15, %d15, %d15, -256

# CHECK-INST: seln %d15, %d15, %d15, -129
# CHECK: encoding: [0xab,0xff,0xb7,0xff]
seln %d15, %d15, %d15, -129

# CHECK-INST: seln %d15, %d15, %d15, -1
# CHECK: encoding: [0xab,0xff,0xbf,0xff]
seln %d15, %d15, %d15, -1

# CHECK-INST: seln %d15, %d15, %d15, 0
# CHECK: encoding: [0xab,0x0f,0xa0,0xff]
seln %d15, %d15, %d15, 0

# CHECK-INST: seln %d15, %d15, %d15, 1
# CHECK: encoding: [0xab,0x1f,0xa0,0xff]
seln %d15, %d15, %d15, 1

# CHECK-INST: seln %d15, %d15, %d15, 128
# CHECK: encoding: [0xab,0x0f,0xa8,0xff]
seln %d15, %d15, %d15, 128

# CHECK-INST: seln %d15, %d15, %d15, 255
# CHECK: encoding: [0xab,0xff,0xaf,0xff]
seln %d15, %d15, %d15, 255

# CHECK-INST: cmov %d0, %d15, %d0
# CHECK: encoding: [0x2a,0x00]
cmov %d0, %d15, %d0

# CHECK-INST: cmov %d0, %d15, %d1
# CHECK: encoding: [0x2a,0x10]
cmov %d0, %d15, %d1

# CHECK-INST: cmov %d0, %d15, %d14
# CHECK: encoding: [0x2a,0xe0]
cmov %d0, %d15, %d14

# CHECK-INST: cmov %d0, %d15, %d15
# CHECK: encoding: [0x2a,0xf0]
cmov %d0, %d15, %d15

# CHECK-INST: cmov %d1, %d15, %d0
# CHECK: encoding: [0x2a,0x01]
cmov %d1, %d15, %d0

# CHECK-INST: cmov %d1, %d15, %d1
# CHECK: encoding: [0x2a,0x11]
cmov %d1, %d15, %d1

# CHECK-INST: cmov %d1, %d15, %d14
# CHECK: encoding: [0x2a,0xe1]
cmov %d1, %d15, %d14

# CHECK-INST: cmov %d1, %d15, %d15
# CHECK: encoding: [0x2a,0xf1]
cmov %d1, %d15, %d15

# CHECK-INST: cmov %d14, %d15, %d0
# CHECK: encoding: [0x2a,0x0e]
cmov %d14, %d15, %d0

# CHECK-INST: cmov %d14, %d15, %d1
# CHECK: encoding: [0x2a,0x1e]
cmov %d14, %d15, %d1

# CHECK-INST: cmov %d14, %d15, %d14
# CHECK: encoding: [0x2a,0xee]
cmov %d14, %d15, %d14

# CHECK-INST: cmov %d14, %d15, %d15
# CHECK: encoding: [0x2a,0xfe]
cmov %d14, %d15, %d15

# CHECK-INST: cmov %d15, %d15, %d0
# CHECK: encoding: [0x2a,0x0f]
cmov %d15, %d15, %d0

# CHECK-INST: cmov %d15, %d15, %d1
# CHECK: encoding: [0x2a,0x1f]
cmov %d15, %d15, %d1

# CHECK-INST: cmov %d15, %d15, %d14
# CHECK: encoding: [0x2a,0xef]
cmov %d15, %d15, %d14

# CHECK-INST: cmov %d15, %d15, %d15
# CHECK: encoding: [0x2a,0xff]
cmov %d15, %d15, %d15

# CHECK-INST: cmov %d0, %d15, -8
# CHECK: encoding: [0xaa,0x80]
cmov %d0, %d15, -8

# CHECK-INST: cmov %d0, %d15, -1
# CHECK: encoding: [0xaa,0xf0]
cmov %d0, %d15, -1

# CHECK-INST: cmov %d0, %d15, 0
# CHECK: encoding: [0xaa,0x00]
cmov %d0, %d15, 0

# CHECK-INST: cmov %d0, %d15, 1
# CHECK: encoding: [0xaa,0x10]
cmov %d0, %d15, 1

# CHECK-INST: cmov %d0, %d15, 7
# CHECK: encoding: [0xaa,0x70]
cmov %d0, %d15, 7

# CHECK-INST: cmov %d1, %d15, -8
# CHECK: encoding: [0xaa,0x81]
cmov %d1, %d15, -8

# CHECK-INST: cmov %d1, %d15, -1
# CHECK: encoding: [0xaa,0xf1]
cmov %d1, %d15, -1

# CHECK-INST: cmov %d1, %d15, 0
# CHECK: encoding: [0xaa,0x01]
cmov %d1, %d15, 0

# CHECK-INST: cmov %d1, %d15, 1
# CHECK: encoding: [0xaa,0x11]
cmov %d1, %d15, 1

# CHECK-INST: cmov %d1, %d15, 7
# CHECK: encoding: [0xaa,0x71]
cmov %d1, %d15, 7

# CHECK-INST: cmov %d14, %d15, -8
# CHECK: encoding: [0xaa,0x8e]
cmov %d14, %d15, -8

# CHECK-INST: cmov %d14, %d15, -1
# CHECK: encoding: [0xaa,0xfe]
cmov %d14, %d15, -1

# CHECK-INST: cmov %d14, %d15, 0
# CHECK: encoding: [0xaa,0x0e]
cmov %d14, %d15, 0

# CHECK-INST: cmov %d14, %d15, 1
# CHECK: encoding: [0xaa,0x1e]
cmov %d14, %d15, 1

# CHECK-INST: cmov %d14, %d15, 7
# CHECK: encoding: [0xaa,0x7e]
cmov %d14, %d15, 7

# CHECK-INST: cmov %d15, %d15, -8
# CHECK: encoding: [0xaa,0x8f]
cmov %d15, %d15, -8

# CHECK-INST: cmov %d15, %d15, -1
# CHECK: encoding: [0xaa,0xff]
cmov %d15, %d15, -1

# CHECK-INST: cmov %d15, %d15, 0
# CHECK: encoding: [0xaa,0x0f]
cmov %d15, %d15, 0

# CHECK-INST: cmov %d15, %d15, 1
# CHECK: encoding: [0xaa,0x1f]
cmov %d15, %d15, 1

# CHECK-INST: cmov %d15, %d15, 7
# CHECK: encoding: [0xaa,0x7f]
cmov %d15, %d15, 7

# CHECK-INST: cmovn %d0, %d15, %d0
# CHECK: encoding: [0x6a,0x00]
cmovn %d0, %d15, %d0

# CHECK-INST: cmovn %d0, %d15, %d1
# CHECK: encoding: [0x6a,0x10]
cmovn %d0, %d15, %d1

# CHECK-INST: cmovn %d0, %d15, %d14
# CHECK: encoding: [0x6a,0xe0]
cmovn %d0, %d15, %d14

# CHECK-INST: cmovn %d0, %d15, %d15
# CHECK: encoding: [0x6a,0xf0]
cmovn %d0, %d15, %d15

# CHECK-INST: cmovn %d1, %d15, %d0
# CHECK: encoding: [0x6a,0x01]
cmovn %d1, %d15, %d0

# CHECK-INST: cmovn %d1, %d15, %d1
# CHECK: encoding: [0x6a,0x11]
cmovn %d1, %d15, %d1

# CHECK-INST: cmovn %d1, %d15, %d14
# CHECK: encoding: [0x6a,0xe1]
cmovn %d1, %d15, %d14

# CHECK-INST: cmovn %d1, %d15, %d15
# CHECK: encoding: [0x6a,0xf1]
cmovn %d1, %d15, %d15

# CHECK-INST: cmovn %d14, %d15, %d0
# CHECK: encoding: [0x6a,0x0e]
cmovn %d14, %d15, %d0

# CHECK-INST: cmovn %d14, %d15, %d1
# CHECK: encoding: [0x6a,0x1e]
cmovn %d14, %d15, %d1

# CHECK-INST: cmovn %d14, %d15, %d14
# CHECK: encoding: [0x6a,0xee]
cmovn %d14, %d15, %d14

# CHECK-INST: cmovn %d14, %d15, %d15
# CHECK: encoding: [0x6a,0xfe]
cmovn %d14, %d15, %d15

# CHECK-INST: cmovn %d15, %d15, %d0
# CHECK: encoding: [0x6a,0x0f]
cmovn %d15, %d15, %d0

# CHECK-INST: cmovn %d15, %d15, %d1
# CHECK: encoding: [0x6a,0x1f]
cmovn %d15, %d15, %d1

# CHECK-INST: cmovn %d15, %d15, %d14
# CHECK: encoding: [0x6a,0xef]
cmovn %d15, %d15, %d14

# CHECK-INST: cmovn %d15, %d15, %d15
# CHECK: encoding: [0x6a,0xff]
cmovn %d15, %d15, %d15

# CHECK-INST: cmovn %d0, %d15, -8
# CHECK: encoding: [0xea,0x80]
cmovn %d0, %d15, -8

# CHECK-INST: cmovn %d0, %d15, -1
# CHECK: encoding: [0xea,0xf0]
cmovn %d0, %d15, -1

# CHECK-INST: cmovn %d0, %d15, 0
# CHECK: encoding: [0xea,0x00]
cmovn %d0, %d15, 0

# CHECK-INST: cmovn %d0, %d15, 1
# CHECK: encoding: [0xea,0x10]
cmovn %d0, %d15, 1

# CHECK-INST: cmovn %d0, %d15, 7
# CHECK: encoding: [0xea,0x70]
cmovn %d0, %d15, 7

# CHECK-INST: cmovn %d1, %d15, -8
# CHECK: encoding: [0xea,0x81]
cmovn %d1, %d15, -8

# CHECK-INST: cmovn %d1, %d15, -1
# CHECK: encoding: [0xea,0xf1]
cmovn %d1, %d15, -1

# CHECK-INST: cmovn %d1, %d15, 0
# CHECK: encoding: [0xea,0x01]
cmovn %d1, %d15, 0

# CHECK-INST: cmovn %d1, %d15, 1
# CHECK: encoding: [0xea,0x11]
cmovn %d1, %d15, 1

# CHECK-INST: cmovn %d1, %d15, 7
# CHECK: encoding: [0xea,0x71]
cmovn %d1, %d15, 7

# CHECK-INST: cmovn %d14, %d15, -8
# CHECK: encoding: [0xea,0x8e]
cmovn %d14, %d15, -8

# CHECK-INST: cmovn %d14, %d15, -1
# CHECK: encoding: [0xea,0xfe]
cmovn %d14, %d15, -1

# CHECK-INST: cmovn %d14, %d15, 0
# CHECK: encoding: [0xea,0x0e]
cmovn %d14, %d15, 0

# CHECK-INST: cmovn %d14, %d15, 1
# CHECK: encoding: [0xea,0x1e]
cmovn %d14, %d15, 1

# CHECK-INST: cmovn %d14, %d15, 7
# CHECK: encoding: [0xea,0x7e]
cmovn %d14, %d15, 7

# CHECK-INST: cmovn %d15, %d15, -8
# CHECK: encoding: [0xea,0x8f]
cmovn %d15, %d15, -8

# CHECK-INST: cmovn %d15, %d15, -1
# CHECK: encoding: [0xea,0xff]
cmovn %d15, %d15, -1

# CHECK-INST: cmovn %d15, %d15, 0
# CHECK: encoding: [0xea,0x0f]
cmovn %d15, %d15, 0

# CHECK-INST: cmovn %d15, %d15, 1
# CHECK: encoding: [0xea,0x1f]
cmovn %d15, %d15, 1

# CHECK-INST: cmovn %d15, %d15, 7
# CHECK: encoding: [0xea,0x7f]
cmovn %d15, %d15, 7
