# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s

# CHECK-INST: madd %d0, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0x00]
.code32
madd %d0, %d0, %d0, %d0

# CHECK-INST: madd %d0, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0x00]
.code32
madd %d0, %d0, %d0, %d1

# CHECK-INST: madd %d0, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0x00]
.code32
madd %d0, %d0, %d0, %d14

# CHECK-INST: madd %d0, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0x00]
.code32
madd %d0, %d0, %d0, %d15

# CHECK-INST: madd %d0, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0x00]
.code32
madd %d0, %d0, %d1, %d0

# CHECK-INST: madd %d0, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0x00]
.code32
madd %d0, %d0, %d1, %d1

# CHECK-INST: madd %d0, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0x00]
.code32
madd %d0, %d0, %d1, %d14

# CHECK-INST: madd %d0, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0x00]
.code32
madd %d0, %d0, %d1, %d15

# CHECK-INST: madd %d0, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0x00]
.code32
madd %d0, %d0, %d14, %d0

# CHECK-INST: madd %d0, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0x00]
.code32
madd %d0, %d0, %d14, %d1

# CHECK-INST: madd %d0, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0x00]
.code32
madd %d0, %d0, %d14, %d14

# CHECK-INST: madd %d0, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0x00]
.code32
madd %d0, %d0, %d14, %d15

# CHECK-INST: madd %d0, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0x00]
.code32
madd %d0, %d0, %d15, %d0

# CHECK-INST: madd %d0, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0x00]
.code32
madd %d0, %d0, %d15, %d1

# CHECK-INST: madd %d0, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0x00]
.code32
madd %d0, %d0, %d15, %d14

# CHECK-INST: madd %d0, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0x00]
.code32
madd %d0, %d0, %d15, %d15

# CHECK-INST: madd %d0, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0x01]
.code32
madd %d0, %d1, %d0, %d0

# CHECK-INST: madd %d0, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0x01]
.code32
madd %d0, %d1, %d0, %d1

# CHECK-INST: madd %d0, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0x01]
.code32
madd %d0, %d1, %d0, %d14

# CHECK-INST: madd %d0, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0x01]
.code32
madd %d0, %d1, %d0, %d15

# CHECK-INST: madd %d0, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0x01]
.code32
madd %d0, %d1, %d1, %d0

# CHECK-INST: madd %d0, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0x01]
.code32
madd %d0, %d1, %d1, %d1

# CHECK-INST: madd %d0, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0x01]
.code32
madd %d0, %d1, %d1, %d14

# CHECK-INST: madd %d0, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0x01]
.code32
madd %d0, %d1, %d1, %d15

# CHECK-INST: madd %d0, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0x01]
.code32
madd %d0, %d1, %d14, %d0

# CHECK-INST: madd %d0, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0x01]
.code32
madd %d0, %d1, %d14, %d1

# CHECK-INST: madd %d0, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0x01]
.code32
madd %d0, %d1, %d14, %d14

# CHECK-INST: madd %d0, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0x01]
.code32
madd %d0, %d1, %d14, %d15

# CHECK-INST: madd %d0, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0x01]
.code32
madd %d0, %d1, %d15, %d0

# CHECK-INST: madd %d0, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0x01]
.code32
madd %d0, %d1, %d15, %d1

# CHECK-INST: madd %d0, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0x01]
.code32
madd %d0, %d1, %d15, %d14

# CHECK-INST: madd %d0, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0x01]
.code32
madd %d0, %d1, %d15, %d15

# CHECK-INST: madd %d0, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0x0e]
.code32
madd %d0, %d14, %d0, %d0

# CHECK-INST: madd %d0, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0x0e]
.code32
madd %d0, %d14, %d0, %d1

# CHECK-INST: madd %d0, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0x0e]
.code32
madd %d0, %d14, %d0, %d14

# CHECK-INST: madd %d0, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0x0e]
.code32
madd %d0, %d14, %d0, %d15

# CHECK-INST: madd %d0, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0x0e]
.code32
madd %d0, %d14, %d1, %d0

# CHECK-INST: madd %d0, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0x0e]
.code32
madd %d0, %d14, %d1, %d1

# CHECK-INST: madd %d0, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0x0e]
.code32
madd %d0, %d14, %d1, %d14

# CHECK-INST: madd %d0, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0x0e]
.code32
madd %d0, %d14, %d1, %d15

# CHECK-INST: madd %d0, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0x0e]
.code32
madd %d0, %d14, %d14, %d0

# CHECK-INST: madd %d0, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0x0e]
.code32
madd %d0, %d14, %d14, %d1

# CHECK-INST: madd %d0, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0x0e]
.code32
madd %d0, %d14, %d14, %d14

# CHECK-INST: madd %d0, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0x0e]
.code32
madd %d0, %d14, %d14, %d15

# CHECK-INST: madd %d0, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0x0e]
.code32
madd %d0, %d14, %d15, %d0

# CHECK-INST: madd %d0, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0x0e]
.code32
madd %d0, %d14, %d15, %d1

# CHECK-INST: madd %d0, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0x0e]
.code32
madd %d0, %d14, %d15, %d14

# CHECK-INST: madd %d0, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0x0e]
.code32
madd %d0, %d14, %d15, %d15

# CHECK-INST: madd %d0, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0x0f]
.code32
madd %d0, %d15, %d0, %d0

# CHECK-INST: madd %d0, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0x0f]
.code32
madd %d0, %d15, %d0, %d1

# CHECK-INST: madd %d0, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0x0f]
.code32
madd %d0, %d15, %d0, %d14

# CHECK-INST: madd %d0, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0x0f]
.code32
madd %d0, %d15, %d0, %d15

# CHECK-INST: madd %d0, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0x0f]
.code32
madd %d0, %d15, %d1, %d0

# CHECK-INST: madd %d0, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0x0f]
.code32
madd %d0, %d15, %d1, %d1

# CHECK-INST: madd %d0, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0x0f]
.code32
madd %d0, %d15, %d1, %d14

# CHECK-INST: madd %d0, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0x0f]
.code32
madd %d0, %d15, %d1, %d15

# CHECK-INST: madd %d0, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0x0f]
.code32
madd %d0, %d15, %d14, %d0

# CHECK-INST: madd %d0, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0x0f]
.code32
madd %d0, %d15, %d14, %d1

# CHECK-INST: madd %d0, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0x0f]
.code32
madd %d0, %d15, %d14, %d14

# CHECK-INST: madd %d0, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0x0f]
.code32
madd %d0, %d15, %d14, %d15

# CHECK-INST: madd %d0, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0x0f]
.code32
madd %d0, %d15, %d15, %d0

# CHECK-INST: madd %d0, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0x0f]
.code32
madd %d0, %d15, %d15, %d1

# CHECK-INST: madd %d0, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0x0f]
.code32
madd %d0, %d15, %d15, %d14

# CHECK-INST: madd %d0, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0x0f]
.code32
madd %d0, %d15, %d15, %d15

# CHECK-INST: madd %d1, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0x10]
.code32
madd %d1, %d0, %d0, %d0

# CHECK-INST: madd %d1, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0x10]
.code32
madd %d1, %d0, %d0, %d1

# CHECK-INST: madd %d1, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0x10]
.code32
madd %d1, %d0, %d0, %d14

# CHECK-INST: madd %d1, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0x10]
.code32
madd %d1, %d0, %d0, %d15

# CHECK-INST: madd %d1, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0x10]
.code32
madd %d1, %d0, %d1, %d0

# CHECK-INST: madd %d1, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0x10]
.code32
madd %d1, %d0, %d1, %d1

# CHECK-INST: madd %d1, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0x10]
.code32
madd %d1, %d0, %d1, %d14

# CHECK-INST: madd %d1, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0x10]
.code32
madd %d1, %d0, %d1, %d15

# CHECK-INST: madd %d1, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0x10]
.code32
madd %d1, %d0, %d14, %d0

# CHECK-INST: madd %d1, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0x10]
.code32
madd %d1, %d0, %d14, %d1

# CHECK-INST: madd %d1, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0x10]
.code32
madd %d1, %d0, %d14, %d14

# CHECK-INST: madd %d1, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0x10]
.code32
madd %d1, %d0, %d14, %d15

# CHECK-INST: madd %d1, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0x10]
.code32
madd %d1, %d0, %d15, %d0

# CHECK-INST: madd %d1, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0x10]
.code32
madd %d1, %d0, %d15, %d1

# CHECK-INST: madd %d1, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0x10]
.code32
madd %d1, %d0, %d15, %d14

# CHECK-INST: madd %d1, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0x10]
.code32
madd %d1, %d0, %d15, %d15

# CHECK-INST: madd %d1, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0x11]
.code32
madd %d1, %d1, %d0, %d0

# CHECK-INST: madd %d1, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0x11]
.code32
madd %d1, %d1, %d0, %d1

# CHECK-INST: madd %d1, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0x11]
.code32
madd %d1, %d1, %d0, %d14

# CHECK-INST: madd %d1, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0x11]
.code32
madd %d1, %d1, %d0, %d15

# CHECK-INST: madd %d1, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0x11]
.code32
madd %d1, %d1, %d1, %d0

# CHECK-INST: madd %d1, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0x11]
.code32
madd %d1, %d1, %d1, %d1

# CHECK-INST: madd %d1, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0x11]
.code32
madd %d1, %d1, %d1, %d14

# CHECK-INST: madd %d1, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0x11]
.code32
madd %d1, %d1, %d1, %d15

# CHECK-INST: madd %d1, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0x11]
.code32
madd %d1, %d1, %d14, %d0

# CHECK-INST: madd %d1, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0x11]
.code32
madd %d1, %d1, %d14, %d1

# CHECK-INST: madd %d1, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0x11]
.code32
madd %d1, %d1, %d14, %d14

# CHECK-INST: madd %d1, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0x11]
.code32
madd %d1, %d1, %d14, %d15

# CHECK-INST: madd %d1, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0x11]
.code32
madd %d1, %d1, %d15, %d0

# CHECK-INST: madd %d1, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0x11]
.code32
madd %d1, %d1, %d15, %d1

# CHECK-INST: madd %d1, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0x11]
.code32
madd %d1, %d1, %d15, %d14

# CHECK-INST: madd %d1, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0x11]
.code32
madd %d1, %d1, %d15, %d15

# CHECK-INST: madd %d1, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0x1e]
.code32
madd %d1, %d14, %d0, %d0

# CHECK-INST: madd %d1, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0x1e]
.code32
madd %d1, %d14, %d0, %d1

# CHECK-INST: madd %d1, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0x1e]
.code32
madd %d1, %d14, %d0, %d14

# CHECK-INST: madd %d1, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0x1e]
.code32
madd %d1, %d14, %d0, %d15

# CHECK-INST: madd %d1, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0x1e]
.code32
madd %d1, %d14, %d1, %d0

# CHECK-INST: madd %d1, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0x1e]
.code32
madd %d1, %d14, %d1, %d1

# CHECK-INST: madd %d1, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0x1e]
.code32
madd %d1, %d14, %d1, %d14

# CHECK-INST: madd %d1, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0x1e]
.code32
madd %d1, %d14, %d1, %d15

# CHECK-INST: madd %d1, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0x1e]
.code32
madd %d1, %d14, %d14, %d0

# CHECK-INST: madd %d1, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0x1e]
.code32
madd %d1, %d14, %d14, %d1

# CHECK-INST: madd %d1, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0x1e]
.code32
madd %d1, %d14, %d14, %d14

# CHECK-INST: madd %d1, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0x1e]
.code32
madd %d1, %d14, %d14, %d15

# CHECK-INST: madd %d1, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0x1e]
.code32
madd %d1, %d14, %d15, %d0

# CHECK-INST: madd %d1, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0x1e]
.code32
madd %d1, %d14, %d15, %d1

# CHECK-INST: madd %d1, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0x1e]
.code32
madd %d1, %d14, %d15, %d14

# CHECK-INST: madd %d1, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0x1e]
.code32
madd %d1, %d14, %d15, %d15

# CHECK-INST: madd %d1, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0x1f]
.code32
madd %d1, %d15, %d0, %d0

# CHECK-INST: madd %d1, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0x1f]
.code32
madd %d1, %d15, %d0, %d1

# CHECK-INST: madd %d1, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0x1f]
.code32
madd %d1, %d15, %d0, %d14

# CHECK-INST: madd %d1, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0x1f]
.code32
madd %d1, %d15, %d0, %d15

# CHECK-INST: madd %d1, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0x1f]
.code32
madd %d1, %d15, %d1, %d0

# CHECK-INST: madd %d1, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0x1f]
.code32
madd %d1, %d15, %d1, %d1

# CHECK-INST: madd %d1, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0x1f]
.code32
madd %d1, %d15, %d1, %d14

# CHECK-INST: madd %d1, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0x1f]
.code32
madd %d1, %d15, %d1, %d15

# CHECK-INST: madd %d1, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0x1f]
.code32
madd %d1, %d15, %d14, %d0

# CHECK-INST: madd %d1, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0x1f]
.code32
madd %d1, %d15, %d14, %d1

# CHECK-INST: madd %d1, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0x1f]
.code32
madd %d1, %d15, %d14, %d14

# CHECK-INST: madd %d1, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0x1f]
.code32
madd %d1, %d15, %d14, %d15

# CHECK-INST: madd %d1, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0x1f]
.code32
madd %d1, %d15, %d15, %d0

# CHECK-INST: madd %d1, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0x1f]
.code32
madd %d1, %d15, %d15, %d1

# CHECK-INST: madd %d1, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0x1f]
.code32
madd %d1, %d15, %d15, %d14

# CHECK-INST: madd %d1, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0x1f]
.code32
madd %d1, %d15, %d15, %d15

# CHECK-INST: madd %d14, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0xe0]
.code32
madd %d14, %d0, %d0, %d0

# CHECK-INST: madd %d14, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0xe0]
.code32
madd %d14, %d0, %d0, %d1

# CHECK-INST: madd %d14, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0xe0]
.code32
madd %d14, %d0, %d0, %d14

# CHECK-INST: madd %d14, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0xe0]
.code32
madd %d14, %d0, %d0, %d15

# CHECK-INST: madd %d14, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0xe0]
.code32
madd %d14, %d0, %d1, %d0

# CHECK-INST: madd %d14, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0xe0]
.code32
madd %d14, %d0, %d1, %d1

# CHECK-INST: madd %d14, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0xe0]
.code32
madd %d14, %d0, %d1, %d14

# CHECK-INST: madd %d14, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0xe0]
.code32
madd %d14, %d0, %d1, %d15

# CHECK-INST: madd %d14, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0xe0]
.code32
madd %d14, %d0, %d14, %d0

# CHECK-INST: madd %d14, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0xe0]
.code32
madd %d14, %d0, %d14, %d1

# CHECK-INST: madd %d14, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0xe0]
.code32
madd %d14, %d0, %d14, %d14

# CHECK-INST: madd %d14, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0xe0]
.code32
madd %d14, %d0, %d14, %d15

# CHECK-INST: madd %d14, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0xe0]
.code32
madd %d14, %d0, %d15, %d0

# CHECK-INST: madd %d14, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0xe0]
.code32
madd %d14, %d0, %d15, %d1

# CHECK-INST: madd %d14, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0xe0]
.code32
madd %d14, %d0, %d15, %d14

# CHECK-INST: madd %d14, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0xe0]
.code32
madd %d14, %d0, %d15, %d15

# CHECK-INST: madd %d14, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0xe1]
.code32
madd %d14, %d1, %d0, %d0

# CHECK-INST: madd %d14, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0xe1]
.code32
madd %d14, %d1, %d0, %d1

# CHECK-INST: madd %d14, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0xe1]
.code32
madd %d14, %d1, %d0, %d14

# CHECK-INST: madd %d14, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0xe1]
.code32
madd %d14, %d1, %d0, %d15

# CHECK-INST: madd %d14, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0xe1]
.code32
madd %d14, %d1, %d1, %d0

# CHECK-INST: madd %d14, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0xe1]
.code32
madd %d14, %d1, %d1, %d1

# CHECK-INST: madd %d14, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0xe1]
.code32
madd %d14, %d1, %d1, %d14

# CHECK-INST: madd %d14, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0xe1]
.code32
madd %d14, %d1, %d1, %d15

# CHECK-INST: madd %d14, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0xe1]
.code32
madd %d14, %d1, %d14, %d0

# CHECK-INST: madd %d14, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0xe1]
.code32
madd %d14, %d1, %d14, %d1

# CHECK-INST: madd %d14, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0xe1]
.code32
madd %d14, %d1, %d14, %d14

# CHECK-INST: madd %d14, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0xe1]
.code32
madd %d14, %d1, %d14, %d15

# CHECK-INST: madd %d14, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0xe1]
.code32
madd %d14, %d1, %d15, %d0

# CHECK-INST: madd %d14, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0xe1]
.code32
madd %d14, %d1, %d15, %d1

# CHECK-INST: madd %d14, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0xe1]
.code32
madd %d14, %d1, %d15, %d14

# CHECK-INST: madd %d14, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0xe1]
.code32
madd %d14, %d1, %d15, %d15

# CHECK-INST: madd %d14, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0xee]
.code32
madd %d14, %d14, %d0, %d0

# CHECK-INST: madd %d14, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0xee]
.code32
madd %d14, %d14, %d0, %d1

# CHECK-INST: madd %d14, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0xee]
.code32
madd %d14, %d14, %d0, %d14

# CHECK-INST: madd %d14, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0xee]
.code32
madd %d14, %d14, %d0, %d15

# CHECK-INST: madd %d14, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0xee]
.code32
madd %d14, %d14, %d1, %d0

# CHECK-INST: madd %d14, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0xee]
.code32
madd %d14, %d14, %d1, %d1

# CHECK-INST: madd %d14, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0xee]
.code32
madd %d14, %d14, %d1, %d14

# CHECK-INST: madd %d14, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0xee]
.code32
madd %d14, %d14, %d1, %d15

# CHECK-INST: madd %d14, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0xee]
.code32
madd %d14, %d14, %d14, %d0

# CHECK-INST: madd %d14, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0xee]
.code32
madd %d14, %d14, %d14, %d1

# CHECK-INST: madd %d14, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0xee]
.code32
madd %d14, %d14, %d14, %d14

# CHECK-INST: madd %d14, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0xee]
.code32
madd %d14, %d14, %d14, %d15

# CHECK-INST: madd %d14, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0xee]
.code32
madd %d14, %d14, %d15, %d0

# CHECK-INST: madd %d14, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0xee]
.code32
madd %d14, %d14, %d15, %d1

# CHECK-INST: madd %d14, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0xee]
.code32
madd %d14, %d14, %d15, %d14

# CHECK-INST: madd %d14, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0xee]
.code32
madd %d14, %d14, %d15, %d15

# CHECK-INST: madd %d14, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0xef]
.code32
madd %d14, %d15, %d0, %d0

# CHECK-INST: madd %d14, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0xef]
.code32
madd %d14, %d15, %d0, %d1

# CHECK-INST: madd %d14, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0xef]
.code32
madd %d14, %d15, %d0, %d14

# CHECK-INST: madd %d14, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0xef]
.code32
madd %d14, %d15, %d0, %d15

# CHECK-INST: madd %d14, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0xef]
.code32
madd %d14, %d15, %d1, %d0

# CHECK-INST: madd %d14, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0xef]
.code32
madd %d14, %d15, %d1, %d1

# CHECK-INST: madd %d14, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0xef]
.code32
madd %d14, %d15, %d1, %d14

# CHECK-INST: madd %d14, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0xef]
.code32
madd %d14, %d15, %d1, %d15

# CHECK-INST: madd %d14, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0xef]
.code32
madd %d14, %d15, %d14, %d0

# CHECK-INST: madd %d14, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0xef]
.code32
madd %d14, %d15, %d14, %d1

# CHECK-INST: madd %d14, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0xef]
.code32
madd %d14, %d15, %d14, %d14

# CHECK-INST: madd %d14, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0xef]
.code32
madd %d14, %d15, %d14, %d15

# CHECK-INST: madd %d14, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0xef]
.code32
madd %d14, %d15, %d15, %d0

# CHECK-INST: madd %d14, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0xef]
.code32
madd %d14, %d15, %d15, %d1

# CHECK-INST: madd %d14, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0xef]
.code32
madd %d14, %d15, %d15, %d14

# CHECK-INST: madd %d14, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0xef]
.code32
madd %d14, %d15, %d15, %d15

# CHECK-INST: madd %d15, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0xf0]
.code32
madd %d15, %d0, %d0, %d0

# CHECK-INST: madd %d15, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0xf0]
.code32
madd %d15, %d0, %d0, %d1

# CHECK-INST: madd %d15, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0xf0]
.code32
madd %d15, %d0, %d0, %d14

# CHECK-INST: madd %d15, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0xf0]
.code32
madd %d15, %d0, %d0, %d15

# CHECK-INST: madd %d15, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0xf0]
.code32
madd %d15, %d0, %d1, %d0

# CHECK-INST: madd %d15, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0xf0]
.code32
madd %d15, %d0, %d1, %d1

# CHECK-INST: madd %d15, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0xf0]
.code32
madd %d15, %d0, %d1, %d14

# CHECK-INST: madd %d15, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0xf0]
.code32
madd %d15, %d0, %d1, %d15

# CHECK-INST: madd %d15, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0xf0]
.code32
madd %d15, %d0, %d14, %d0

# CHECK-INST: madd %d15, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0xf0]
.code32
madd %d15, %d0, %d14, %d1

# CHECK-INST: madd %d15, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0xf0]
.code32
madd %d15, %d0, %d14, %d14

# CHECK-INST: madd %d15, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0xf0]
.code32
madd %d15, %d0, %d14, %d15

# CHECK-INST: madd %d15, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0xf0]
.code32
madd %d15, %d0, %d15, %d0

# CHECK-INST: madd %d15, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0xf0]
.code32
madd %d15, %d0, %d15, %d1

# CHECK-INST: madd %d15, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0xf0]
.code32
madd %d15, %d0, %d15, %d14

# CHECK-INST: madd %d15, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0xf0]
.code32
madd %d15, %d0, %d15, %d15

# CHECK-INST: madd %d15, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0xf1]
.code32
madd %d15, %d1, %d0, %d0

# CHECK-INST: madd %d15, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0xf1]
.code32
madd %d15, %d1, %d0, %d1

# CHECK-INST: madd %d15, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0xf1]
.code32
madd %d15, %d1, %d0, %d14

# CHECK-INST: madd %d15, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0xf1]
.code32
madd %d15, %d1, %d0, %d15

# CHECK-INST: madd %d15, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0xf1]
.code32
madd %d15, %d1, %d1, %d0

# CHECK-INST: madd %d15, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0xf1]
.code32
madd %d15, %d1, %d1, %d1

# CHECK-INST: madd %d15, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0xf1]
.code32
madd %d15, %d1, %d1, %d14

# CHECK-INST: madd %d15, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0xf1]
.code32
madd %d15, %d1, %d1, %d15

# CHECK-INST: madd %d15, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0xf1]
.code32
madd %d15, %d1, %d14, %d0

# CHECK-INST: madd %d15, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0xf1]
.code32
madd %d15, %d1, %d14, %d1

# CHECK-INST: madd %d15, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0xf1]
.code32
madd %d15, %d1, %d14, %d14

# CHECK-INST: madd %d15, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0xf1]
.code32
madd %d15, %d1, %d14, %d15

# CHECK-INST: madd %d15, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0xf1]
.code32
madd %d15, %d1, %d15, %d0

# CHECK-INST: madd %d15, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0xf1]
.code32
madd %d15, %d1, %d15, %d1

# CHECK-INST: madd %d15, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0xf1]
.code32
madd %d15, %d1, %d15, %d14

# CHECK-INST: madd %d15, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0xf1]
.code32
madd %d15, %d1, %d15, %d15

# CHECK-INST: madd %d15, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0xfe]
.code32
madd %d15, %d14, %d0, %d0

# CHECK-INST: madd %d15, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0xfe]
.code32
madd %d15, %d14, %d0, %d1

# CHECK-INST: madd %d15, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0xfe]
.code32
madd %d15, %d14, %d0, %d14

# CHECK-INST: madd %d15, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0xfe]
.code32
madd %d15, %d14, %d0, %d15

# CHECK-INST: madd %d15, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0xfe]
.code32
madd %d15, %d14, %d1, %d0

# CHECK-INST: madd %d15, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0xfe]
.code32
madd %d15, %d14, %d1, %d1

# CHECK-INST: madd %d15, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0xfe]
.code32
madd %d15, %d14, %d1, %d14

# CHECK-INST: madd %d15, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0xfe]
.code32
madd %d15, %d14, %d1, %d15

# CHECK-INST: madd %d15, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0xfe]
.code32
madd %d15, %d14, %d14, %d0

# CHECK-INST: madd %d15, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0xfe]
.code32
madd %d15, %d14, %d14, %d1

# CHECK-INST: madd %d15, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0xfe]
.code32
madd %d15, %d14, %d14, %d14

# CHECK-INST: madd %d15, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0xfe]
.code32
madd %d15, %d14, %d14, %d15

# CHECK-INST: madd %d15, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0xfe]
.code32
madd %d15, %d14, %d15, %d0

# CHECK-INST: madd %d15, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0xfe]
.code32
madd %d15, %d14, %d15, %d1

# CHECK-INST: madd %d15, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0xfe]
.code32
madd %d15, %d14, %d15, %d14

# CHECK-INST: madd %d15, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0xfe]
.code32
madd %d15, %d14, %d15, %d15

# CHECK-INST: madd %d15, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0xff]
.code32
madd %d15, %d15, %d0, %d0

# CHECK-INST: madd %d15, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0xff]
.code32
madd %d15, %d15, %d0, %d1

# CHECK-INST: madd %d15, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0xff]
.code32
madd %d15, %d15, %d0, %d14

# CHECK-INST: madd %d15, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0xff]
.code32
madd %d15, %d15, %d0, %d15

# CHECK-INST: madd %d15, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0xff]
.code32
madd %d15, %d15, %d1, %d0

# CHECK-INST: madd %d15, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0xff]
.code32
madd %d15, %d15, %d1, %d1

# CHECK-INST: madd %d15, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0xff]
.code32
madd %d15, %d15, %d1, %d14

# CHECK-INST: madd %d15, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0xff]
.code32
madd %d15, %d15, %d1, %d15

# CHECK-INST: madd %d15, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0xff]
.code32
madd %d15, %d15, %d14, %d0

# CHECK-INST: madd %d15, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0xff]
.code32
madd %d15, %d15, %d14, %d1

# CHECK-INST: madd %d15, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0xff]
.code32
madd %d15, %d15, %d14, %d14

# CHECK-INST: madd %d15, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0xff]
.code32
madd %d15, %d15, %d14, %d15

# CHECK-INST: madd %d15, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0xff]
.code32
madd %d15, %d15, %d15, %d0

# CHECK-INST: madd %d15, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0xff]
.code32
madd %d15, %d15, %d15, %d1

# CHECK-INST: madd %d15, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0xff]
.code32
madd %d15, %d15, %d15, %d14

# CHECK-INST: madd %d15, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0xff]
.code32
madd %d15, %d15, %d15, %d15

# CHECK-INST: madd %d0, %d0, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0x00]
.code32
madd %d0, %d0, %d0, -256

# CHECK-INST: madd %d0, %d0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0x00]
.code32
madd %d0, %d0, %d0, -129

# CHECK-INST: madd %d0, %d0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0x00]
.code32
madd %d0, %d0, %d0, -1

# CHECK-INST: madd %d0, %d0, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0x00]
.code32
madd %d0, %d0, %d0, 0

# CHECK-INST: madd %d0, %d0, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0x00]
.code32
madd %d0, %d0, %d0, 1

# CHECK-INST: madd %d0, %d0, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0x00]
.code32
madd %d0, %d0, %d0, 128

# CHECK-INST: madd %d0, %d0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0x00]
.code32
madd %d0, %d0, %d0, 255

# CHECK-INST: madd %d0, %d0, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0x00]
.code32
madd %d0, %d0, %d1, -256

# CHECK-INST: madd %d0, %d0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0x00]
.code32
madd %d0, %d0, %d1, -129

# CHECK-INST: madd %d0, %d0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0x00]
.code32
madd %d0, %d0, %d1, -1

# CHECK-INST: madd %d0, %d0, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0x00]
.code32
madd %d0, %d0, %d1, 0

# CHECK-INST: madd %d0, %d0, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0x00]
.code32
madd %d0, %d0, %d1, 1

# CHECK-INST: madd %d0, %d0, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0x00]
.code32
madd %d0, %d0, %d1, 128

# CHECK-INST: madd %d0, %d0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0x00]
.code32
madd %d0, %d0, %d1, 255

# CHECK-INST: madd %d0, %d0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0x00]
.code32
madd %d0, %d0, %d14, -256

# CHECK-INST: madd %d0, %d0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0x00]
.code32
madd %d0, %d0, %d14, -129

# CHECK-INST: madd %d0, %d0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0x00]
.code32
madd %d0, %d0, %d14, -1

# CHECK-INST: madd %d0, %d0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0x00]
.code32
madd %d0, %d0, %d14, 0

# CHECK-INST: madd %d0, %d0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0x00]
.code32
madd %d0, %d0, %d14, 1

# CHECK-INST: madd %d0, %d0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0x00]
.code32
madd %d0, %d0, %d14, 128

# CHECK-INST: madd %d0, %d0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0x00]
.code32
madd %d0, %d0, %d14, 255

# CHECK-INST: madd %d0, %d0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0x00]
.code32
madd %d0, %d0, %d15, -256

# CHECK-INST: madd %d0, %d0, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0x00]
.code32
madd %d0, %d0, %d15, -129

# CHECK-INST: madd %d0, %d0, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0x00]
.code32
madd %d0, %d0, %d15, -1

# CHECK-INST: madd %d0, %d0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0x00]
.code32
madd %d0, %d0, %d15, 0

# CHECK-INST: madd %d0, %d0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0x00]
.code32
madd %d0, %d0, %d15, 1

# CHECK-INST: madd %d0, %d0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0x00]
.code32
madd %d0, %d0, %d15, 128

# CHECK-INST: madd %d0, %d0, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0x00]
.code32
madd %d0, %d0, %d15, 255

# CHECK-INST: madd %d0, %d1, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0x01]
.code32
madd %d0, %d1, %d0, -256

# CHECK-INST: madd %d0, %d1, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0x01]
.code32
madd %d0, %d1, %d0, -129

# CHECK-INST: madd %d0, %d1, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0x01]
.code32
madd %d0, %d1, %d0, -1

# CHECK-INST: madd %d0, %d1, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0x01]
.code32
madd %d0, %d1, %d0, 0

# CHECK-INST: madd %d0, %d1, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0x01]
.code32
madd %d0, %d1, %d0, 1

# CHECK-INST: madd %d0, %d1, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0x01]
.code32
madd %d0, %d1, %d0, 128

# CHECK-INST: madd %d0, %d1, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0x01]
.code32
madd %d0, %d1, %d0, 255

# CHECK-INST: madd %d0, %d1, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0x01]
.code32
madd %d0, %d1, %d1, -256

# CHECK-INST: madd %d0, %d1, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0x01]
.code32
madd %d0, %d1, %d1, -129

# CHECK-INST: madd %d0, %d1, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0x01]
.code32
madd %d0, %d1, %d1, -1

# CHECK-INST: madd %d0, %d1, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0x01]
.code32
madd %d0, %d1, %d1, 0

# CHECK-INST: madd %d0, %d1, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0x01]
.code32
madd %d0, %d1, %d1, 1

# CHECK-INST: madd %d0, %d1, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0x01]
.code32
madd %d0, %d1, %d1, 128

# CHECK-INST: madd %d0, %d1, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0x01]
.code32
madd %d0, %d1, %d1, 255

# CHECK-INST: madd %d0, %d1, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0x01]
.code32
madd %d0, %d1, %d14, -256

# CHECK-INST: madd %d0, %d1, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0x01]
.code32
madd %d0, %d1, %d14, -129

# CHECK-INST: madd %d0, %d1, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0x01]
.code32
madd %d0, %d1, %d14, -1

# CHECK-INST: madd %d0, %d1, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0x01]
.code32
madd %d0, %d1, %d14, 0

# CHECK-INST: madd %d0, %d1, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0x01]
.code32
madd %d0, %d1, %d14, 1

# CHECK-INST: madd %d0, %d1, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0x01]
.code32
madd %d0, %d1, %d14, 128

# CHECK-INST: madd %d0, %d1, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0x01]
.code32
madd %d0, %d1, %d14, 255

# CHECK-INST: madd %d0, %d1, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0x01]
.code32
madd %d0, %d1, %d15, -256

# CHECK-INST: madd %d0, %d1, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0x01]
.code32
madd %d0, %d1, %d15, -129

# CHECK-INST: madd %d0, %d1, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0x01]
.code32
madd %d0, %d1, %d15, -1

# CHECK-INST: madd %d0, %d1, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0x01]
.code32
madd %d0, %d1, %d15, 0

# CHECK-INST: madd %d0, %d1, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0x01]
.code32
madd %d0, %d1, %d15, 1

# CHECK-INST: madd %d0, %d1, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0x01]
.code32
madd %d0, %d1, %d15, 128

# CHECK-INST: madd %d0, %d1, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0x01]
.code32
madd %d0, %d1, %d15, 255

# CHECK-INST: madd %d0, %d14, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0x0e]
.code32
madd %d0, %d14, %d0, -256

# CHECK-INST: madd %d0, %d14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0x0e]
.code32
madd %d0, %d14, %d0, -129

# CHECK-INST: madd %d0, %d14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0x0e]
.code32
madd %d0, %d14, %d0, -1

# CHECK-INST: madd %d0, %d14, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0x0e]
.code32
madd %d0, %d14, %d0, 0

# CHECK-INST: madd %d0, %d14, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0x0e]
.code32
madd %d0, %d14, %d0, 1

# CHECK-INST: madd %d0, %d14, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0x0e]
.code32
madd %d0, %d14, %d0, 128

# CHECK-INST: madd %d0, %d14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0x0e]
.code32
madd %d0, %d14, %d0, 255

# CHECK-INST: madd %d0, %d14, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0x0e]
.code32
madd %d0, %d14, %d1, -256

# CHECK-INST: madd %d0, %d14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0x0e]
.code32
madd %d0, %d14, %d1, -129

# CHECK-INST: madd %d0, %d14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0x0e]
.code32
madd %d0, %d14, %d1, -1

# CHECK-INST: madd %d0, %d14, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0x0e]
.code32
madd %d0, %d14, %d1, 0

# CHECK-INST: madd %d0, %d14, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0x0e]
.code32
madd %d0, %d14, %d1, 1

# CHECK-INST: madd %d0, %d14, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0x0e]
.code32
madd %d0, %d14, %d1, 128

# CHECK-INST: madd %d0, %d14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0x0e]
.code32
madd %d0, %d14, %d1, 255

# CHECK-INST: madd %d0, %d14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0x0e]
.code32
madd %d0, %d14, %d14, -256

# CHECK-INST: madd %d0, %d14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0x0e]
.code32
madd %d0, %d14, %d14, -129

# CHECK-INST: madd %d0, %d14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0x0e]
.code32
madd %d0, %d14, %d14, -1

# CHECK-INST: madd %d0, %d14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0x0e]
.code32
madd %d0, %d14, %d14, 0

# CHECK-INST: madd %d0, %d14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0x0e]
.code32
madd %d0, %d14, %d14, 1

# CHECK-INST: madd %d0, %d14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0x0e]
.code32
madd %d0, %d14, %d14, 128

# CHECK-INST: madd %d0, %d14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0x0e]
.code32
madd %d0, %d14, %d14, 255

# CHECK-INST: madd %d0, %d14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0x0e]
.code32
madd %d0, %d14, %d15, -256

# CHECK-INST: madd %d0, %d14, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0x0e]
.code32
madd %d0, %d14, %d15, -129

# CHECK-INST: madd %d0, %d14, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0x0e]
.code32
madd %d0, %d14, %d15, -1

# CHECK-INST: madd %d0, %d14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0x0e]
.code32
madd %d0, %d14, %d15, 0

# CHECK-INST: madd %d0, %d14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0x0e]
.code32
madd %d0, %d14, %d15, 1

# CHECK-INST: madd %d0, %d14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0x0e]
.code32
madd %d0, %d14, %d15, 128

# CHECK-INST: madd %d0, %d14, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0x0e]
.code32
madd %d0, %d14, %d15, 255

# CHECK-INST: madd %d0, %d15, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0x0f]
.code32
madd %d0, %d15, %d0, -256

# CHECK-INST: madd %d0, %d15, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0x0f]
.code32
madd %d0, %d15, %d0, -129

# CHECK-INST: madd %d0, %d15, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0x0f]
.code32
madd %d0, %d15, %d0, -1

# CHECK-INST: madd %d0, %d15, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0x0f]
.code32
madd %d0, %d15, %d0, 0

# CHECK-INST: madd %d0, %d15, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0x0f]
.code32
madd %d0, %d15, %d0, 1

# CHECK-INST: madd %d0, %d15, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0x0f]
.code32
madd %d0, %d15, %d0, 128

# CHECK-INST: madd %d0, %d15, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0x0f]
.code32
madd %d0, %d15, %d0, 255

# CHECK-INST: madd %d0, %d15, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0x0f]
.code32
madd %d0, %d15, %d1, -256

# CHECK-INST: madd %d0, %d15, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0x0f]
.code32
madd %d0, %d15, %d1, -129

# CHECK-INST: madd %d0, %d15, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0x0f]
.code32
madd %d0, %d15, %d1, -1

# CHECK-INST: madd %d0, %d15, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0x0f]
.code32
madd %d0, %d15, %d1, 0

# CHECK-INST: madd %d0, %d15, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0x0f]
.code32
madd %d0, %d15, %d1, 1

# CHECK-INST: madd %d0, %d15, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0x0f]
.code32
madd %d0, %d15, %d1, 128

# CHECK-INST: madd %d0, %d15, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0x0f]
.code32
madd %d0, %d15, %d1, 255

# CHECK-INST: madd %d0, %d15, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0x0f]
.code32
madd %d0, %d15, %d14, -256

# CHECK-INST: madd %d0, %d15, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0x0f]
.code32
madd %d0, %d15, %d14, -129

# CHECK-INST: madd %d0, %d15, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0x0f]
.code32
madd %d0, %d15, %d14, -1

# CHECK-INST: madd %d0, %d15, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0x0f]
.code32
madd %d0, %d15, %d14, 0

# CHECK-INST: madd %d0, %d15, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0x0f]
.code32
madd %d0, %d15, %d14, 1

# CHECK-INST: madd %d0, %d15, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0x0f]
.code32
madd %d0, %d15, %d14, 128

# CHECK-INST: madd %d0, %d15, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0x0f]
.code32
madd %d0, %d15, %d14, 255

# CHECK-INST: madd %d0, %d15, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0x0f]
.code32
madd %d0, %d15, %d15, -256

# CHECK-INST: madd %d0, %d15, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0x0f]
.code32
madd %d0, %d15, %d15, -129

# CHECK-INST: madd %d0, %d15, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0x0f]
.code32
madd %d0, %d15, %d15, -1

# CHECK-INST: madd %d0, %d15, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0x0f]
.code32
madd %d0, %d15, %d15, 0

# CHECK-INST: madd %d0, %d15, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0x0f]
.code32
madd %d0, %d15, %d15, 1

# CHECK-INST: madd %d0, %d15, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0x0f]
.code32
madd %d0, %d15, %d15, 128

# CHECK-INST: madd %d0, %d15, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0x0f]
.code32
madd %d0, %d15, %d15, 255

# CHECK-INST: madd %d1, %d0, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0x10]
.code32
madd %d1, %d0, %d0, -256

# CHECK-INST: madd %d1, %d0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0x10]
.code32
madd %d1, %d0, %d0, -129

# CHECK-INST: madd %d1, %d0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0x10]
.code32
madd %d1, %d0, %d0, -1

# CHECK-INST: madd %d1, %d0, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0x10]
.code32
madd %d1, %d0, %d0, 0

# CHECK-INST: madd %d1, %d0, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0x10]
.code32
madd %d1, %d0, %d0, 1

# CHECK-INST: madd %d1, %d0, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0x10]
.code32
madd %d1, %d0, %d0, 128

# CHECK-INST: madd %d1, %d0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0x10]
.code32
madd %d1, %d0, %d0, 255

# CHECK-INST: madd %d1, %d0, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0x10]
.code32
madd %d1, %d0, %d1, -256

# CHECK-INST: madd %d1, %d0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0x10]
.code32
madd %d1, %d0, %d1, -129

# CHECK-INST: madd %d1, %d0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0x10]
.code32
madd %d1, %d0, %d1, -1

# CHECK-INST: madd %d1, %d0, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0x10]
.code32
madd %d1, %d0, %d1, 0

# CHECK-INST: madd %d1, %d0, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0x10]
.code32
madd %d1, %d0, %d1, 1

# CHECK-INST: madd %d1, %d0, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0x10]
.code32
madd %d1, %d0, %d1, 128

# CHECK-INST: madd %d1, %d0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0x10]
.code32
madd %d1, %d0, %d1, 255

# CHECK-INST: madd %d1, %d0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0x10]
.code32
madd %d1, %d0, %d14, -256

# CHECK-INST: madd %d1, %d0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0x10]
.code32
madd %d1, %d0, %d14, -129

# CHECK-INST: madd %d1, %d0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0x10]
.code32
madd %d1, %d0, %d14, -1

# CHECK-INST: madd %d1, %d0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0x10]
.code32
madd %d1, %d0, %d14, 0

# CHECK-INST: madd %d1, %d0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0x10]
.code32
madd %d1, %d0, %d14, 1

# CHECK-INST: madd %d1, %d0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0x10]
.code32
madd %d1, %d0, %d14, 128

# CHECK-INST: madd %d1, %d0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0x10]
.code32
madd %d1, %d0, %d14, 255

# CHECK-INST: madd %d1, %d0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0x10]
.code32
madd %d1, %d0, %d15, -256

# CHECK-INST: madd %d1, %d0, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0x10]
.code32
madd %d1, %d0, %d15, -129

# CHECK-INST: madd %d1, %d0, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0x10]
.code32
madd %d1, %d0, %d15, -1

# CHECK-INST: madd %d1, %d0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0x10]
.code32
madd %d1, %d0, %d15, 0

# CHECK-INST: madd %d1, %d0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0x10]
.code32
madd %d1, %d0, %d15, 1

# CHECK-INST: madd %d1, %d0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0x10]
.code32
madd %d1, %d0, %d15, 128

# CHECK-INST: madd %d1, %d0, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0x10]
.code32
madd %d1, %d0, %d15, 255

# CHECK-INST: madd %d1, %d1, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0x11]
.code32
madd %d1, %d1, %d0, -256

# CHECK-INST: madd %d1, %d1, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0x11]
.code32
madd %d1, %d1, %d0, -129

# CHECK-INST: madd %d1, %d1, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0x11]
.code32
madd %d1, %d1, %d0, -1

# CHECK-INST: madd %d1, %d1, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0x11]
.code32
madd %d1, %d1, %d0, 0

# CHECK-INST: madd %d1, %d1, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0x11]
.code32
madd %d1, %d1, %d0, 1

# CHECK-INST: madd %d1, %d1, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0x11]
.code32
madd %d1, %d1, %d0, 128

# CHECK-INST: madd %d1, %d1, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0x11]
.code32
madd %d1, %d1, %d0, 255

# CHECK-INST: madd %d1, %d1, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0x11]
.code32
madd %d1, %d1, %d1, -256

# CHECK-INST: madd %d1, %d1, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0x11]
.code32
madd %d1, %d1, %d1, -129

# CHECK-INST: madd %d1, %d1, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0x11]
.code32
madd %d1, %d1, %d1, -1

# CHECK-INST: madd %d1, %d1, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0x11]
.code32
madd %d1, %d1, %d1, 0

# CHECK-INST: madd %d1, %d1, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0x11]
.code32
madd %d1, %d1, %d1, 1

# CHECK-INST: madd %d1, %d1, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0x11]
.code32
madd %d1, %d1, %d1, 128

# CHECK-INST: madd %d1, %d1, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0x11]
.code32
madd %d1, %d1, %d1, 255

# CHECK-INST: madd %d1, %d1, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0x11]
.code32
madd %d1, %d1, %d14, -256

# CHECK-INST: madd %d1, %d1, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0x11]
.code32
madd %d1, %d1, %d14, -129

# CHECK-INST: madd %d1, %d1, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0x11]
.code32
madd %d1, %d1, %d14, -1

# CHECK-INST: madd %d1, %d1, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0x11]
.code32
madd %d1, %d1, %d14, 0

# CHECK-INST: madd %d1, %d1, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0x11]
.code32
madd %d1, %d1, %d14, 1

# CHECK-INST: madd %d1, %d1, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0x11]
.code32
madd %d1, %d1, %d14, 128

# CHECK-INST: madd %d1, %d1, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0x11]
.code32
madd %d1, %d1, %d14, 255

# CHECK-INST: madd %d1, %d1, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0x11]
.code32
madd %d1, %d1, %d15, -256

# CHECK-INST: madd %d1, %d1, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0x11]
.code32
madd %d1, %d1, %d15, -129

# CHECK-INST: madd %d1, %d1, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0x11]
.code32
madd %d1, %d1, %d15, -1

# CHECK-INST: madd %d1, %d1, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0x11]
.code32
madd %d1, %d1, %d15, 0

# CHECK-INST: madd %d1, %d1, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0x11]
.code32
madd %d1, %d1, %d15, 1

# CHECK-INST: madd %d1, %d1, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0x11]
.code32
madd %d1, %d1, %d15, 128

# CHECK-INST: madd %d1, %d1, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0x11]
.code32
madd %d1, %d1, %d15, 255

# CHECK-INST: madd %d1, %d14, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0x1e]
.code32
madd %d1, %d14, %d0, -256

# CHECK-INST: madd %d1, %d14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0x1e]
.code32
madd %d1, %d14, %d0, -129

# CHECK-INST: madd %d1, %d14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0x1e]
.code32
madd %d1, %d14, %d0, -1

# CHECK-INST: madd %d1, %d14, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0x1e]
.code32
madd %d1, %d14, %d0, 0

# CHECK-INST: madd %d1, %d14, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0x1e]
.code32
madd %d1, %d14, %d0, 1

# CHECK-INST: madd %d1, %d14, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0x1e]
.code32
madd %d1, %d14, %d0, 128

# CHECK-INST: madd %d1, %d14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0x1e]
.code32
madd %d1, %d14, %d0, 255

# CHECK-INST: madd %d1, %d14, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0x1e]
.code32
madd %d1, %d14, %d1, -256

# CHECK-INST: madd %d1, %d14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0x1e]
.code32
madd %d1, %d14, %d1, -129

# CHECK-INST: madd %d1, %d14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0x1e]
.code32
madd %d1, %d14, %d1, -1

# CHECK-INST: madd %d1, %d14, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0x1e]
.code32
madd %d1, %d14, %d1, 0

# CHECK-INST: madd %d1, %d14, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0x1e]
.code32
madd %d1, %d14, %d1, 1

# CHECK-INST: madd %d1, %d14, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0x1e]
.code32
madd %d1, %d14, %d1, 128

# CHECK-INST: madd %d1, %d14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0x1e]
.code32
madd %d1, %d14, %d1, 255

# CHECK-INST: madd %d1, %d14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0x1e]
.code32
madd %d1, %d14, %d14, -256

# CHECK-INST: madd %d1, %d14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0x1e]
.code32
madd %d1, %d14, %d14, -129

# CHECK-INST: madd %d1, %d14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0x1e]
.code32
madd %d1, %d14, %d14, -1

# CHECK-INST: madd %d1, %d14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0x1e]
.code32
madd %d1, %d14, %d14, 0

# CHECK-INST: madd %d1, %d14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0x1e]
.code32
madd %d1, %d14, %d14, 1

# CHECK-INST: madd %d1, %d14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0x1e]
.code32
madd %d1, %d14, %d14, 128

# CHECK-INST: madd %d1, %d14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0x1e]
.code32
madd %d1, %d14, %d14, 255

# CHECK-INST: madd %d1, %d14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0x1e]
.code32
madd %d1, %d14, %d15, -256

# CHECK-INST: madd %d1, %d14, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0x1e]
.code32
madd %d1, %d14, %d15, -129

# CHECK-INST: madd %d1, %d14, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0x1e]
.code32
madd %d1, %d14, %d15, -1

# CHECK-INST: madd %d1, %d14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0x1e]
.code32
madd %d1, %d14, %d15, 0

# CHECK-INST: madd %d1, %d14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0x1e]
.code32
madd %d1, %d14, %d15, 1

# CHECK-INST: madd %d1, %d14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0x1e]
.code32
madd %d1, %d14, %d15, 128

# CHECK-INST: madd %d1, %d14, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0x1e]
.code32
madd %d1, %d14, %d15, 255

# CHECK-INST: madd %d1, %d15, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0x1f]
.code32
madd %d1, %d15, %d0, -256

# CHECK-INST: madd %d1, %d15, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0x1f]
.code32
madd %d1, %d15, %d0, -129

# CHECK-INST: madd %d1, %d15, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0x1f]
.code32
madd %d1, %d15, %d0, -1

# CHECK-INST: madd %d1, %d15, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0x1f]
.code32
madd %d1, %d15, %d0, 0

# CHECK-INST: madd %d1, %d15, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0x1f]
.code32
madd %d1, %d15, %d0, 1

# CHECK-INST: madd %d1, %d15, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0x1f]
.code32
madd %d1, %d15, %d0, 128

# CHECK-INST: madd %d1, %d15, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0x1f]
.code32
madd %d1, %d15, %d0, 255

# CHECK-INST: madd %d1, %d15, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0x1f]
.code32
madd %d1, %d15, %d1, -256

# CHECK-INST: madd %d1, %d15, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0x1f]
.code32
madd %d1, %d15, %d1, -129

# CHECK-INST: madd %d1, %d15, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0x1f]
.code32
madd %d1, %d15, %d1, -1

# CHECK-INST: madd %d1, %d15, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0x1f]
.code32
madd %d1, %d15, %d1, 0

# CHECK-INST: madd %d1, %d15, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0x1f]
.code32
madd %d1, %d15, %d1, 1

# CHECK-INST: madd %d1, %d15, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0x1f]
.code32
madd %d1, %d15, %d1, 128

# CHECK-INST: madd %d1, %d15, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0x1f]
.code32
madd %d1, %d15, %d1, 255

# CHECK-INST: madd %d1, %d15, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0x1f]
.code32
madd %d1, %d15, %d14, -256

# CHECK-INST: madd %d1, %d15, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0x1f]
.code32
madd %d1, %d15, %d14, -129

# CHECK-INST: madd %d1, %d15, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0x1f]
.code32
madd %d1, %d15, %d14, -1

# CHECK-INST: madd %d1, %d15, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0x1f]
.code32
madd %d1, %d15, %d14, 0

# CHECK-INST: madd %d1, %d15, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0x1f]
.code32
madd %d1, %d15, %d14, 1

# CHECK-INST: madd %d1, %d15, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0x1f]
.code32
madd %d1, %d15, %d14, 128

# CHECK-INST: madd %d1, %d15, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0x1f]
.code32
madd %d1, %d15, %d14, 255

# CHECK-INST: madd %d1, %d15, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0x1f]
.code32
madd %d1, %d15, %d15, -256

# CHECK-INST: madd %d1, %d15, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0x1f]
.code32
madd %d1, %d15, %d15, -129

# CHECK-INST: madd %d1, %d15, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0x1f]
.code32
madd %d1, %d15, %d15, -1

# CHECK-INST: madd %d1, %d15, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0x1f]
.code32
madd %d1, %d15, %d15, 0

# CHECK-INST: madd %d1, %d15, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0x1f]
.code32
madd %d1, %d15, %d15, 1

# CHECK-INST: madd %d1, %d15, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0x1f]
.code32
madd %d1, %d15, %d15, 128

# CHECK-INST: madd %d1, %d15, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0x1f]
.code32
madd %d1, %d15, %d15, 255

# CHECK-INST: madd %d14, %d0, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0xe0]
.code32
madd %d14, %d0, %d0, -256

# CHECK-INST: madd %d14, %d0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0xe0]
.code32
madd %d14, %d0, %d0, -129

# CHECK-INST: madd %d14, %d0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0xe0]
.code32
madd %d14, %d0, %d0, -1

# CHECK-INST: madd %d14, %d0, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0xe0]
.code32
madd %d14, %d0, %d0, 0

# CHECK-INST: madd %d14, %d0, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0xe0]
.code32
madd %d14, %d0, %d0, 1

# CHECK-INST: madd %d14, %d0, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0xe0]
.code32
madd %d14, %d0, %d0, 128

# CHECK-INST: madd %d14, %d0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0xe0]
.code32
madd %d14, %d0, %d0, 255

# CHECK-INST: madd %d14, %d0, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0xe0]
.code32
madd %d14, %d0, %d1, -256

# CHECK-INST: madd %d14, %d0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0xe0]
.code32
madd %d14, %d0, %d1, -129

# CHECK-INST: madd %d14, %d0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0xe0]
.code32
madd %d14, %d0, %d1, -1

# CHECK-INST: madd %d14, %d0, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0xe0]
.code32
madd %d14, %d0, %d1, 0

# CHECK-INST: madd %d14, %d0, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0xe0]
.code32
madd %d14, %d0, %d1, 1

# CHECK-INST: madd %d14, %d0, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0xe0]
.code32
madd %d14, %d0, %d1, 128

# CHECK-INST: madd %d14, %d0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0xe0]
.code32
madd %d14, %d0, %d1, 255

# CHECK-INST: madd %d14, %d0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0xe0]
.code32
madd %d14, %d0, %d14, -256

# CHECK-INST: madd %d14, %d0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0xe0]
.code32
madd %d14, %d0, %d14, -129

# CHECK-INST: madd %d14, %d0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0xe0]
.code32
madd %d14, %d0, %d14, -1

# CHECK-INST: madd %d14, %d0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0xe0]
.code32
madd %d14, %d0, %d14, 0

# CHECK-INST: madd %d14, %d0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0xe0]
.code32
madd %d14, %d0, %d14, 1

# CHECK-INST: madd %d14, %d0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0xe0]
.code32
madd %d14, %d0, %d14, 128

# CHECK-INST: madd %d14, %d0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0xe0]
.code32
madd %d14, %d0, %d14, 255

# CHECK-INST: madd %d14, %d0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0xe0]
.code32
madd %d14, %d0, %d15, -256

# CHECK-INST: madd %d14, %d0, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0xe0]
.code32
madd %d14, %d0, %d15, -129

# CHECK-INST: madd %d14, %d0, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0xe0]
.code32
madd %d14, %d0, %d15, -1

# CHECK-INST: madd %d14, %d0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0xe0]
.code32
madd %d14, %d0, %d15, 0

# CHECK-INST: madd %d14, %d0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0xe0]
.code32
madd %d14, %d0, %d15, 1

# CHECK-INST: madd %d14, %d0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0xe0]
.code32
madd %d14, %d0, %d15, 128

# CHECK-INST: madd %d14, %d0, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0xe0]
.code32
madd %d14, %d0, %d15, 255

# CHECK-INST: madd %d14, %d1, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0xe1]
.code32
madd %d14, %d1, %d0, -256

# CHECK-INST: madd %d14, %d1, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0xe1]
.code32
madd %d14, %d1, %d0, -129

# CHECK-INST: madd %d14, %d1, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0xe1]
.code32
madd %d14, %d1, %d0, -1

# CHECK-INST: madd %d14, %d1, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0xe1]
.code32
madd %d14, %d1, %d0, 0

# CHECK-INST: madd %d14, %d1, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0xe1]
.code32
madd %d14, %d1, %d0, 1

# CHECK-INST: madd %d14, %d1, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0xe1]
.code32
madd %d14, %d1, %d0, 128

# CHECK-INST: madd %d14, %d1, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0xe1]
.code32
madd %d14, %d1, %d0, 255

# CHECK-INST: madd %d14, %d1, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0xe1]
.code32
madd %d14, %d1, %d1, -256

# CHECK-INST: madd %d14, %d1, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0xe1]
.code32
madd %d14, %d1, %d1, -129

# CHECK-INST: madd %d14, %d1, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0xe1]
.code32
madd %d14, %d1, %d1, -1

# CHECK-INST: madd %d14, %d1, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0xe1]
.code32
madd %d14, %d1, %d1, 0

# CHECK-INST: madd %d14, %d1, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0xe1]
.code32
madd %d14, %d1, %d1, 1

# CHECK-INST: madd %d14, %d1, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0xe1]
.code32
madd %d14, %d1, %d1, 128

# CHECK-INST: madd %d14, %d1, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0xe1]
.code32
madd %d14, %d1, %d1, 255

# CHECK-INST: madd %d14, %d1, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0xe1]
.code32
madd %d14, %d1, %d14, -256

# CHECK-INST: madd %d14, %d1, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0xe1]
.code32
madd %d14, %d1, %d14, -129

# CHECK-INST: madd %d14, %d1, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0xe1]
.code32
madd %d14, %d1, %d14, -1

# CHECK-INST: madd %d14, %d1, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0xe1]
.code32
madd %d14, %d1, %d14, 0

# CHECK-INST: madd %d14, %d1, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0xe1]
.code32
madd %d14, %d1, %d14, 1

# CHECK-INST: madd %d14, %d1, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0xe1]
.code32
madd %d14, %d1, %d14, 128

# CHECK-INST: madd %d14, %d1, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0xe1]
.code32
madd %d14, %d1, %d14, 255

# CHECK-INST: madd %d14, %d1, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0xe1]
.code32
madd %d14, %d1, %d15, -256

# CHECK-INST: madd %d14, %d1, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0xe1]
.code32
madd %d14, %d1, %d15, -129

# CHECK-INST: madd %d14, %d1, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0xe1]
.code32
madd %d14, %d1, %d15, -1

# CHECK-INST: madd %d14, %d1, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0xe1]
.code32
madd %d14, %d1, %d15, 0

# CHECK-INST: madd %d14, %d1, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0xe1]
.code32
madd %d14, %d1, %d15, 1

# CHECK-INST: madd %d14, %d1, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0xe1]
.code32
madd %d14, %d1, %d15, 128

# CHECK-INST: madd %d14, %d1, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0xe1]
.code32
madd %d14, %d1, %d15, 255

# CHECK-INST: madd %d14, %d14, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0xee]
.code32
madd %d14, %d14, %d0, -256

# CHECK-INST: madd %d14, %d14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0xee]
.code32
madd %d14, %d14, %d0, -129

# CHECK-INST: madd %d14, %d14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0xee]
.code32
madd %d14, %d14, %d0, -1

# CHECK-INST: madd %d14, %d14, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0xee]
.code32
madd %d14, %d14, %d0, 0

# CHECK-INST: madd %d14, %d14, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0xee]
.code32
madd %d14, %d14, %d0, 1

# CHECK-INST: madd %d14, %d14, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0xee]
.code32
madd %d14, %d14, %d0, 128

# CHECK-INST: madd %d14, %d14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0xee]
.code32
madd %d14, %d14, %d0, 255

# CHECK-INST: madd %d14, %d14, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0xee]
.code32
madd %d14, %d14, %d1, -256

# CHECK-INST: madd %d14, %d14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0xee]
.code32
madd %d14, %d14, %d1, -129

# CHECK-INST: madd %d14, %d14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0xee]
.code32
madd %d14, %d14, %d1, -1

# CHECK-INST: madd %d14, %d14, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0xee]
.code32
madd %d14, %d14, %d1, 0

# CHECK-INST: madd %d14, %d14, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0xee]
.code32
madd %d14, %d14, %d1, 1

# CHECK-INST: madd %d14, %d14, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0xee]
.code32
madd %d14, %d14, %d1, 128

# CHECK-INST: madd %d14, %d14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0xee]
.code32
madd %d14, %d14, %d1, 255

# CHECK-INST: madd %d14, %d14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0xee]
.code32
madd %d14, %d14, %d14, -256

# CHECK-INST: madd %d14, %d14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0xee]
.code32
madd %d14, %d14, %d14, -129

# CHECK-INST: madd %d14, %d14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0xee]
.code32
madd %d14, %d14, %d14, -1

# CHECK-INST: madd %d14, %d14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0xee]
.code32
madd %d14, %d14, %d14, 0

# CHECK-INST: madd %d14, %d14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0xee]
.code32
madd %d14, %d14, %d14, 1

# CHECK-INST: madd %d14, %d14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0xee]
.code32
madd %d14, %d14, %d14, 128

# CHECK-INST: madd %d14, %d14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0xee]
.code32
madd %d14, %d14, %d14, 255

# CHECK-INST: madd %d14, %d14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0xee]
.code32
madd %d14, %d14, %d15, -256

# CHECK-INST: madd %d14, %d14, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0xee]
.code32
madd %d14, %d14, %d15, -129

# CHECK-INST: madd %d14, %d14, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0xee]
.code32
madd %d14, %d14, %d15, -1

# CHECK-INST: madd %d14, %d14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0xee]
.code32
madd %d14, %d14, %d15, 0

# CHECK-INST: madd %d14, %d14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0xee]
.code32
madd %d14, %d14, %d15, 1

# CHECK-INST: madd %d14, %d14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0xee]
.code32
madd %d14, %d14, %d15, 128

# CHECK-INST: madd %d14, %d14, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0xee]
.code32
madd %d14, %d14, %d15, 255

# CHECK-INST: madd %d14, %d15, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0xef]
.code32
madd %d14, %d15, %d0, -256

# CHECK-INST: madd %d14, %d15, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0xef]
.code32
madd %d14, %d15, %d0, -129

# CHECK-INST: madd %d14, %d15, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0xef]
.code32
madd %d14, %d15, %d0, -1

# CHECK-INST: madd %d14, %d15, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0xef]
.code32
madd %d14, %d15, %d0, 0

# CHECK-INST: madd %d14, %d15, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0xef]
.code32
madd %d14, %d15, %d0, 1

# CHECK-INST: madd %d14, %d15, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0xef]
.code32
madd %d14, %d15, %d0, 128

# CHECK-INST: madd %d14, %d15, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0xef]
.code32
madd %d14, %d15, %d0, 255

# CHECK-INST: madd %d14, %d15, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0xef]
.code32
madd %d14, %d15, %d1, -256

# CHECK-INST: madd %d14, %d15, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0xef]
.code32
madd %d14, %d15, %d1, -129

# CHECK-INST: madd %d14, %d15, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0xef]
.code32
madd %d14, %d15, %d1, -1

# CHECK-INST: madd %d14, %d15, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0xef]
.code32
madd %d14, %d15, %d1, 0

# CHECK-INST: madd %d14, %d15, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0xef]
.code32
madd %d14, %d15, %d1, 1

# CHECK-INST: madd %d14, %d15, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0xef]
.code32
madd %d14, %d15, %d1, 128

# CHECK-INST: madd %d14, %d15, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0xef]
.code32
madd %d14, %d15, %d1, 255

# CHECK-INST: madd %d14, %d15, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0xef]
.code32
madd %d14, %d15, %d14, -256

# CHECK-INST: madd %d14, %d15, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0xef]
.code32
madd %d14, %d15, %d14, -129

# CHECK-INST: madd %d14, %d15, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0xef]
.code32
madd %d14, %d15, %d14, -1

# CHECK-INST: madd %d14, %d15, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0xef]
.code32
madd %d14, %d15, %d14, 0

# CHECK-INST: madd %d14, %d15, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0xef]
.code32
madd %d14, %d15, %d14, 1

# CHECK-INST: madd %d14, %d15, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0xef]
.code32
madd %d14, %d15, %d14, 128

# CHECK-INST: madd %d14, %d15, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0xef]
.code32
madd %d14, %d15, %d14, 255

# CHECK-INST: madd %d14, %d15, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0xef]
.code32
madd %d14, %d15, %d15, -256

# CHECK-INST: madd %d14, %d15, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0xef]
.code32
madd %d14, %d15, %d15, -129

# CHECK-INST: madd %d14, %d15, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0xef]
.code32
madd %d14, %d15, %d15, -1

# CHECK-INST: madd %d14, %d15, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0xef]
.code32
madd %d14, %d15, %d15, 0

# CHECK-INST: madd %d14, %d15, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0xef]
.code32
madd %d14, %d15, %d15, 1

# CHECK-INST: madd %d14, %d15, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0xef]
.code32
madd %d14, %d15, %d15, 128

# CHECK-INST: madd %d14, %d15, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0xef]
.code32
madd %d14, %d15, %d15, 255

# CHECK-INST: madd %d15, %d0, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0xf0]
.code32
madd %d15, %d0, %d0, -256

# CHECK-INST: madd %d15, %d0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0xf0]
.code32
madd %d15, %d0, %d0, -129

# CHECK-INST: madd %d15, %d0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0xf0]
.code32
madd %d15, %d0, %d0, -1

# CHECK-INST: madd %d15, %d0, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0xf0]
.code32
madd %d15, %d0, %d0, 0

# CHECK-INST: madd %d15, %d0, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0xf0]
.code32
madd %d15, %d0, %d0, 1

# CHECK-INST: madd %d15, %d0, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0xf0]
.code32
madd %d15, %d0, %d0, 128

# CHECK-INST: madd %d15, %d0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0xf0]
.code32
madd %d15, %d0, %d0, 255

# CHECK-INST: madd %d15, %d0, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0xf0]
.code32
madd %d15, %d0, %d1, -256

# CHECK-INST: madd %d15, %d0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0xf0]
.code32
madd %d15, %d0, %d1, -129

# CHECK-INST: madd %d15, %d0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0xf0]
.code32
madd %d15, %d0, %d1, -1

# CHECK-INST: madd %d15, %d0, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0xf0]
.code32
madd %d15, %d0, %d1, 0

# CHECK-INST: madd %d15, %d0, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0xf0]
.code32
madd %d15, %d0, %d1, 1

# CHECK-INST: madd %d15, %d0, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0xf0]
.code32
madd %d15, %d0, %d1, 128

# CHECK-INST: madd %d15, %d0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0xf0]
.code32
madd %d15, %d0, %d1, 255

# CHECK-INST: madd %d15, %d0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0xf0]
.code32
madd %d15, %d0, %d14, -256

# CHECK-INST: madd %d15, %d0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0xf0]
.code32
madd %d15, %d0, %d14, -129

# CHECK-INST: madd %d15, %d0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0xf0]
.code32
madd %d15, %d0, %d14, -1

# CHECK-INST: madd %d15, %d0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0xf0]
.code32
madd %d15, %d0, %d14, 0

# CHECK-INST: madd %d15, %d0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0xf0]
.code32
madd %d15, %d0, %d14, 1

# CHECK-INST: madd %d15, %d0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0xf0]
.code32
madd %d15, %d0, %d14, 128

# CHECK-INST: madd %d15, %d0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0xf0]
.code32
madd %d15, %d0, %d14, 255

# CHECK-INST: madd %d15, %d0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0xf0]
.code32
madd %d15, %d0, %d15, -256

# CHECK-INST: madd %d15, %d0, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0xf0]
.code32
madd %d15, %d0, %d15, -129

# CHECK-INST: madd %d15, %d0, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0xf0]
.code32
madd %d15, %d0, %d15, -1

# CHECK-INST: madd %d15, %d0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0xf0]
.code32
madd %d15, %d0, %d15, 0

# CHECK-INST: madd %d15, %d0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0xf0]
.code32
madd %d15, %d0, %d15, 1

# CHECK-INST: madd %d15, %d0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0xf0]
.code32
madd %d15, %d0, %d15, 128

# CHECK-INST: madd %d15, %d0, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0xf0]
.code32
madd %d15, %d0, %d15, 255

# CHECK-INST: madd %d15, %d1, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0xf1]
.code32
madd %d15, %d1, %d0, -256

# CHECK-INST: madd %d15, %d1, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0xf1]
.code32
madd %d15, %d1, %d0, -129

# CHECK-INST: madd %d15, %d1, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0xf1]
.code32
madd %d15, %d1, %d0, -1

# CHECK-INST: madd %d15, %d1, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0xf1]
.code32
madd %d15, %d1, %d0, 0

# CHECK-INST: madd %d15, %d1, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0xf1]
.code32
madd %d15, %d1, %d0, 1

# CHECK-INST: madd %d15, %d1, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0xf1]
.code32
madd %d15, %d1, %d0, 128

# CHECK-INST: madd %d15, %d1, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0xf1]
.code32
madd %d15, %d1, %d0, 255

# CHECK-INST: madd %d15, %d1, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0xf1]
.code32
madd %d15, %d1, %d1, -256

# CHECK-INST: madd %d15, %d1, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0xf1]
.code32
madd %d15, %d1, %d1, -129

# CHECK-INST: madd %d15, %d1, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0xf1]
.code32
madd %d15, %d1, %d1, -1

# CHECK-INST: madd %d15, %d1, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0xf1]
.code32
madd %d15, %d1, %d1, 0

# CHECK-INST: madd %d15, %d1, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0xf1]
.code32
madd %d15, %d1, %d1, 1

# CHECK-INST: madd %d15, %d1, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0xf1]
.code32
madd %d15, %d1, %d1, 128

# CHECK-INST: madd %d15, %d1, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0xf1]
.code32
madd %d15, %d1, %d1, 255

# CHECK-INST: madd %d15, %d1, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0xf1]
.code32
madd %d15, %d1, %d14, -256

# CHECK-INST: madd %d15, %d1, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0xf1]
.code32
madd %d15, %d1, %d14, -129

# CHECK-INST: madd %d15, %d1, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0xf1]
.code32
madd %d15, %d1, %d14, -1

# CHECK-INST: madd %d15, %d1, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0xf1]
.code32
madd %d15, %d1, %d14, 0

# CHECK-INST: madd %d15, %d1, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0xf1]
.code32
madd %d15, %d1, %d14, 1

# CHECK-INST: madd %d15, %d1, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0xf1]
.code32
madd %d15, %d1, %d14, 128

# CHECK-INST: madd %d15, %d1, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0xf1]
.code32
madd %d15, %d1, %d14, 255

# CHECK-INST: madd %d15, %d1, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0xf1]
.code32
madd %d15, %d1, %d15, -256

# CHECK-INST: madd %d15, %d1, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0xf1]
.code32
madd %d15, %d1, %d15, -129

# CHECK-INST: madd %d15, %d1, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0xf1]
.code32
madd %d15, %d1, %d15, -1

# CHECK-INST: madd %d15, %d1, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0xf1]
.code32
madd %d15, %d1, %d15, 0

# CHECK-INST: madd %d15, %d1, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0xf1]
.code32
madd %d15, %d1, %d15, 1

# CHECK-INST: madd %d15, %d1, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0xf1]
.code32
madd %d15, %d1, %d15, 128

# CHECK-INST: madd %d15, %d1, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0xf1]
.code32
madd %d15, %d1, %d15, 255

# CHECK-INST: madd %d15, %d14, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0xfe]
.code32
madd %d15, %d14, %d0, -256

# CHECK-INST: madd %d15, %d14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0xfe]
.code32
madd %d15, %d14, %d0, -129

# CHECK-INST: madd %d15, %d14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0xfe]
.code32
madd %d15, %d14, %d0, -1

# CHECK-INST: madd %d15, %d14, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0xfe]
.code32
madd %d15, %d14, %d0, 0

# CHECK-INST: madd %d15, %d14, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0xfe]
.code32
madd %d15, %d14, %d0, 1

# CHECK-INST: madd %d15, %d14, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0xfe]
.code32
madd %d15, %d14, %d0, 128

# CHECK-INST: madd %d15, %d14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0xfe]
.code32
madd %d15, %d14, %d0, 255

# CHECK-INST: madd %d15, %d14, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0xfe]
.code32
madd %d15, %d14, %d1, -256

# CHECK-INST: madd %d15, %d14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0xfe]
.code32
madd %d15, %d14, %d1, -129

# CHECK-INST: madd %d15, %d14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0xfe]
.code32
madd %d15, %d14, %d1, -1

# CHECK-INST: madd %d15, %d14, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0xfe]
.code32
madd %d15, %d14, %d1, 0

# CHECK-INST: madd %d15, %d14, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0xfe]
.code32
madd %d15, %d14, %d1, 1

# CHECK-INST: madd %d15, %d14, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0xfe]
.code32
madd %d15, %d14, %d1, 128

# CHECK-INST: madd %d15, %d14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0xfe]
.code32
madd %d15, %d14, %d1, 255

# CHECK-INST: madd %d15, %d14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0xfe]
.code32
madd %d15, %d14, %d14, -256

# CHECK-INST: madd %d15, %d14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0xfe]
.code32
madd %d15, %d14, %d14, -129

# CHECK-INST: madd %d15, %d14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0xfe]
.code32
madd %d15, %d14, %d14, -1

# CHECK-INST: madd %d15, %d14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0xfe]
.code32
madd %d15, %d14, %d14, 0

# CHECK-INST: madd %d15, %d14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0xfe]
.code32
madd %d15, %d14, %d14, 1

# CHECK-INST: madd %d15, %d14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0xfe]
.code32
madd %d15, %d14, %d14, 128

# CHECK-INST: madd %d15, %d14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0xfe]
.code32
madd %d15, %d14, %d14, 255

# CHECK-INST: madd %d15, %d14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0xfe]
.code32
madd %d15, %d14, %d15, -256

# CHECK-INST: madd %d15, %d14, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0xfe]
.code32
madd %d15, %d14, %d15, -129

# CHECK-INST: madd %d15, %d14, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0xfe]
.code32
madd %d15, %d14, %d15, -1

# CHECK-INST: madd %d15, %d14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0xfe]
.code32
madd %d15, %d14, %d15, 0

# CHECK-INST: madd %d15, %d14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0xfe]
.code32
madd %d15, %d14, %d15, 1

# CHECK-INST: madd %d15, %d14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0xfe]
.code32
madd %d15, %d14, %d15, 128

# CHECK-INST: madd %d15, %d14, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0xfe]
.code32
madd %d15, %d14, %d15, 255

# CHECK-INST: madd %d15, %d15, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0xff]
.code32
madd %d15, %d15, %d0, -256

# CHECK-INST: madd %d15, %d15, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0xff]
.code32
madd %d15, %d15, %d0, -129

# CHECK-INST: madd %d15, %d15, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0xff]
.code32
madd %d15, %d15, %d0, -1

# CHECK-INST: madd %d15, %d15, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0xff]
.code32
madd %d15, %d15, %d0, 0

# CHECK-INST: madd %d15, %d15, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0xff]
.code32
madd %d15, %d15, %d0, 1

# CHECK-INST: madd %d15, %d15, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0xff]
.code32
madd %d15, %d15, %d0, 128

# CHECK-INST: madd %d15, %d15, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0xff]
.code32
madd %d15, %d15, %d0, 255

# CHECK-INST: madd %d15, %d15, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0xff]
.code32
madd %d15, %d15, %d1, -256

# CHECK-INST: madd %d15, %d15, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0xff]
.code32
madd %d15, %d15, %d1, -129

# CHECK-INST: madd %d15, %d15, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0xff]
.code32
madd %d15, %d15, %d1, -1

# CHECK-INST: madd %d15, %d15, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0xff]
.code32
madd %d15, %d15, %d1, 0

# CHECK-INST: madd %d15, %d15, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0xff]
.code32
madd %d15, %d15, %d1, 1

# CHECK-INST: madd %d15, %d15, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0xff]
.code32
madd %d15, %d15, %d1, 128

# CHECK-INST: madd %d15, %d15, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0xff]
.code32
madd %d15, %d15, %d1, 255

# CHECK-INST: madd %d15, %d15, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0xff]
.code32
madd %d15, %d15, %d14, -256

# CHECK-INST: madd %d15, %d15, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0xff]
.code32
madd %d15, %d15, %d14, -129

# CHECK-INST: madd %d15, %d15, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0xff]
.code32
madd %d15, %d15, %d14, -1

# CHECK-INST: madd %d15, %d15, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0xff]
.code32
madd %d15, %d15, %d14, 0

# CHECK-INST: madd %d15, %d15, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0xff]
.code32
madd %d15, %d15, %d14, 1

# CHECK-INST: madd %d15, %d15, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0xff]
.code32
madd %d15, %d15, %d14, 128

# CHECK-INST: madd %d15, %d15, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0xff]
.code32
madd %d15, %d15, %d14, 255

# CHECK-INST: madd %d15, %d15, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0xff]
.code32
madd %d15, %d15, %d15, -256

# CHECK-INST: madd %d15, %d15, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0xff]
.code32
madd %d15, %d15, %d15, -129

# CHECK-INST: madd %d15, %d15, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0xff]
.code32
madd %d15, %d15, %d15, -1

# CHECK-INST: madd %d15, %d15, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0xff]
.code32
madd %d15, %d15, %d15, 0

# CHECK-INST: madd %d15, %d15, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0xff]
.code32
madd %d15, %d15, %d15, 1

# CHECK-INST: madd %d15, %d15, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0xff]
.code32
madd %d15, %d15, %d15, 128

# CHECK-INST: madd %d15, %d15, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0xff]
.code32
madd %d15, %d15, %d15, 255

# CHECK-INST: madd %e0, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x6a,0x00]
.code32
madd %e0, %e0, %d0, %d0

# CHECK-INST: madd %e0, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x6a,0x00]
.code32
madd %e0, %e0, %d0, %d1

# CHECK-INST: madd %e0, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x6a,0x00]
.code32
madd %e0, %e0, %d0, %d14

# CHECK-INST: madd %e0, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x6a,0x00]
.code32
madd %e0, %e0, %d0, %d15

# CHECK-INST: madd %e0, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x6a,0x00]
.code32
madd %e0, %e0, %d1, %d0

# CHECK-INST: madd %e0, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x6a,0x00]
.code32
madd %e0, %e0, %d1, %d1

# CHECK-INST: madd %e0, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x6a,0x00]
.code32
madd %e0, %e0, %d1, %d14

# CHECK-INST: madd %e0, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x6a,0x00]
.code32
madd %e0, %e0, %d1, %d15

# CHECK-INST: madd %e0, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x6a,0x00]
.code32
madd %e0, %e0, %d14, %d0

# CHECK-INST: madd %e0, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x6a,0x00]
.code32
madd %e0, %e0, %d14, %d1

# CHECK-INST: madd %e0, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x6a,0x00]
.code32
madd %e0, %e0, %d14, %d14

# CHECK-INST: madd %e0, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x6a,0x00]
.code32
madd %e0, %e0, %d14, %d15

# CHECK-INST: madd %e0, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x6a,0x00]
.code32
madd %e0, %e0, %d15, %d0

# CHECK-INST: madd %e0, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x6a,0x00]
.code32
madd %e0, %e0, %d15, %d1

# CHECK-INST: madd %e0, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x6a,0x00]
.code32
madd %e0, %e0, %d15, %d14

# CHECK-INST: madd %e0, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x6a,0x00]
.code32
madd %e0, %e0, %d15, %d15

# CHECK-INST: madd %e0, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x6a,0x06]
.code32
madd %e0, %e6, %d0, %d0

# CHECK-INST: madd %e0, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x6a,0x06]
.code32
madd %e0, %e6, %d0, %d1

# CHECK-INST: madd %e0, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x6a,0x06]
.code32
madd %e0, %e6, %d0, %d14

# CHECK-INST: madd %e0, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x6a,0x06]
.code32
madd %e0, %e6, %d0, %d15

# CHECK-INST: madd %e0, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x6a,0x06]
.code32
madd %e0, %e6, %d1, %d0

# CHECK-INST: madd %e0, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x6a,0x06]
.code32
madd %e0, %e6, %d1, %d1

# CHECK-INST: madd %e0, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x6a,0x06]
.code32
madd %e0, %e6, %d1, %d14

# CHECK-INST: madd %e0, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x6a,0x06]
.code32
madd %e0, %e6, %d1, %d15

# CHECK-INST: madd %e0, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x6a,0x06]
.code32
madd %e0, %e6, %d14, %d0

# CHECK-INST: madd %e0, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x6a,0x06]
.code32
madd %e0, %e6, %d14, %d1

# CHECK-INST: madd %e0, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x6a,0x06]
.code32
madd %e0, %e6, %d14, %d14

# CHECK-INST: madd %e0, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x6a,0x06]
.code32
madd %e0, %e6, %d14, %d15

# CHECK-INST: madd %e0, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x6a,0x06]
.code32
madd %e0, %e6, %d15, %d0

# CHECK-INST: madd %e0, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x6a,0x06]
.code32
madd %e0, %e6, %d15, %d1

# CHECK-INST: madd %e0, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x6a,0x06]
.code32
madd %e0, %e6, %d15, %d14

# CHECK-INST: madd %e0, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x6a,0x06]
.code32
madd %e0, %e6, %d15, %d15

# CHECK-INST: madd %e0, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x6a,0x0e]
.code32
madd %e0, %e14, %d0, %d0

# CHECK-INST: madd %e0, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x6a,0x0e]
.code32
madd %e0, %e14, %d0, %d1

# CHECK-INST: madd %e0, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x6a,0x0e]
.code32
madd %e0, %e14, %d0, %d14

# CHECK-INST: madd %e0, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x6a,0x0e]
.code32
madd %e0, %e14, %d0, %d15

# CHECK-INST: madd %e0, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x6a,0x0e]
.code32
madd %e0, %e14, %d1, %d0

# CHECK-INST: madd %e0, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x6a,0x0e]
.code32
madd %e0, %e14, %d1, %d1

# CHECK-INST: madd %e0, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x6a,0x0e]
.code32
madd %e0, %e14, %d1, %d14

# CHECK-INST: madd %e0, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x6a,0x0e]
.code32
madd %e0, %e14, %d1, %d15

# CHECK-INST: madd %e0, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x6a,0x0e]
.code32
madd %e0, %e14, %d14, %d0

# CHECK-INST: madd %e0, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x6a,0x0e]
.code32
madd %e0, %e14, %d14, %d1

# CHECK-INST: madd %e0, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x6a,0x0e]
.code32
madd %e0, %e14, %d14, %d14

# CHECK-INST: madd %e0, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x6a,0x0e]
.code32
madd %e0, %e14, %d14, %d15

# CHECK-INST: madd %e0, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x6a,0x0e]
.code32
madd %e0, %e14, %d15, %d0

# CHECK-INST: madd %e0, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x6a,0x0e]
.code32
madd %e0, %e14, %d15, %d1

# CHECK-INST: madd %e0, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x6a,0x0e]
.code32
madd %e0, %e14, %d15, %d14

# CHECK-INST: madd %e0, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x6a,0x0e]
.code32
madd %e0, %e14, %d15, %d15

# CHECK-INST: madd %e6, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x6a,0x60]
.code32
madd %e6, %e0, %d0, %d0

# CHECK-INST: madd %e6, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x6a,0x60]
.code32
madd %e6, %e0, %d0, %d1

# CHECK-INST: madd %e6, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x6a,0x60]
.code32
madd %e6, %e0, %d0, %d14

# CHECK-INST: madd %e6, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x6a,0x60]
.code32
madd %e6, %e0, %d0, %d15

# CHECK-INST: madd %e6, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x6a,0x60]
.code32
madd %e6, %e0, %d1, %d0

# CHECK-INST: madd %e6, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x6a,0x60]
.code32
madd %e6, %e0, %d1, %d1

# CHECK-INST: madd %e6, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x6a,0x60]
.code32
madd %e6, %e0, %d1, %d14

# CHECK-INST: madd %e6, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x6a,0x60]
.code32
madd %e6, %e0, %d1, %d15

# CHECK-INST: madd %e6, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x6a,0x60]
.code32
madd %e6, %e0, %d14, %d0

# CHECK-INST: madd %e6, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x6a,0x60]
.code32
madd %e6, %e0, %d14, %d1

# CHECK-INST: madd %e6, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x6a,0x60]
.code32
madd %e6, %e0, %d14, %d14

# CHECK-INST: madd %e6, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x6a,0x60]
.code32
madd %e6, %e0, %d14, %d15

# CHECK-INST: madd %e6, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x6a,0x60]
.code32
madd %e6, %e0, %d15, %d0

# CHECK-INST: madd %e6, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x6a,0x60]
.code32
madd %e6, %e0, %d15, %d1

# CHECK-INST: madd %e6, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x6a,0x60]
.code32
madd %e6, %e0, %d15, %d14

# CHECK-INST: madd %e6, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x6a,0x60]
.code32
madd %e6, %e0, %d15, %d15

# CHECK-INST: madd %e6, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x6a,0x66]
.code32
madd %e6, %e6, %d0, %d0

# CHECK-INST: madd %e6, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x6a,0x66]
.code32
madd %e6, %e6, %d0, %d1

# CHECK-INST: madd %e6, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x6a,0x66]
.code32
madd %e6, %e6, %d0, %d14

# CHECK-INST: madd %e6, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x6a,0x66]
.code32
madd %e6, %e6, %d0, %d15

# CHECK-INST: madd %e6, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x6a,0x66]
.code32
madd %e6, %e6, %d1, %d0

# CHECK-INST: madd %e6, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x6a,0x66]
.code32
madd %e6, %e6, %d1, %d1

# CHECK-INST: madd %e6, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x6a,0x66]
.code32
madd %e6, %e6, %d1, %d14

# CHECK-INST: madd %e6, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x6a,0x66]
.code32
madd %e6, %e6, %d1, %d15

# CHECK-INST: madd %e6, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x6a,0x66]
.code32
madd %e6, %e6, %d14, %d0

# CHECK-INST: madd %e6, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x6a,0x66]
.code32
madd %e6, %e6, %d14, %d1

# CHECK-INST: madd %e6, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x6a,0x66]
.code32
madd %e6, %e6, %d14, %d14

# CHECK-INST: madd %e6, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x6a,0x66]
.code32
madd %e6, %e6, %d14, %d15

# CHECK-INST: madd %e6, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x6a,0x66]
.code32
madd %e6, %e6, %d15, %d0

# CHECK-INST: madd %e6, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x6a,0x66]
.code32
madd %e6, %e6, %d15, %d1

# CHECK-INST: madd %e6, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x6a,0x66]
.code32
madd %e6, %e6, %d15, %d14

# CHECK-INST: madd %e6, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x6a,0x66]
.code32
madd %e6, %e6, %d15, %d15

# CHECK-INST: madd %e6, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x6a,0x6e]
.code32
madd %e6, %e14, %d0, %d0

# CHECK-INST: madd %e6, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x6a,0x6e]
.code32
madd %e6, %e14, %d0, %d1

# CHECK-INST: madd %e6, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x6a,0x6e]
.code32
madd %e6, %e14, %d0, %d14

# CHECK-INST: madd %e6, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x6a,0x6e]
.code32
madd %e6, %e14, %d0, %d15

# CHECK-INST: madd %e6, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x6a,0x6e]
.code32
madd %e6, %e14, %d1, %d0

# CHECK-INST: madd %e6, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x6a,0x6e]
.code32
madd %e6, %e14, %d1, %d1

# CHECK-INST: madd %e6, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x6a,0x6e]
.code32
madd %e6, %e14, %d1, %d14

# CHECK-INST: madd %e6, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x6a,0x6e]
.code32
madd %e6, %e14, %d1, %d15

# CHECK-INST: madd %e6, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x6a,0x6e]
.code32
madd %e6, %e14, %d14, %d0

# CHECK-INST: madd %e6, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x6a,0x6e]
.code32
madd %e6, %e14, %d14, %d1

# CHECK-INST: madd %e6, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x6a,0x6e]
.code32
madd %e6, %e14, %d14, %d14

# CHECK-INST: madd %e6, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x6a,0x6e]
.code32
madd %e6, %e14, %d14, %d15

# CHECK-INST: madd %e6, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x6a,0x6e]
.code32
madd %e6, %e14, %d15, %d0

# CHECK-INST: madd %e6, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x6a,0x6e]
.code32
madd %e6, %e14, %d15, %d1

# CHECK-INST: madd %e6, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x6a,0x6e]
.code32
madd %e6, %e14, %d15, %d14

# CHECK-INST: madd %e6, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x6a,0x6e]
.code32
madd %e6, %e14, %d15, %d15

# CHECK-INST: madd %e14, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x6a,0xe0]
.code32
madd %e14, %e0, %d0, %d0

# CHECK-INST: madd %e14, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x6a,0xe0]
.code32
madd %e14, %e0, %d0, %d1

# CHECK-INST: madd %e14, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x6a,0xe0]
.code32
madd %e14, %e0, %d0, %d14

# CHECK-INST: madd %e14, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x6a,0xe0]
.code32
madd %e14, %e0, %d0, %d15

# CHECK-INST: madd %e14, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x6a,0xe0]
.code32
madd %e14, %e0, %d1, %d0

# CHECK-INST: madd %e14, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x6a,0xe0]
.code32
madd %e14, %e0, %d1, %d1

# CHECK-INST: madd %e14, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x6a,0xe0]
.code32
madd %e14, %e0, %d1, %d14

# CHECK-INST: madd %e14, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x6a,0xe0]
.code32
madd %e14, %e0, %d1, %d15

# CHECK-INST: madd %e14, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x6a,0xe0]
.code32
madd %e14, %e0, %d14, %d0

# CHECK-INST: madd %e14, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x6a,0xe0]
.code32
madd %e14, %e0, %d14, %d1

# CHECK-INST: madd %e14, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x6a,0xe0]
.code32
madd %e14, %e0, %d14, %d14

# CHECK-INST: madd %e14, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x6a,0xe0]
.code32
madd %e14, %e0, %d14, %d15

# CHECK-INST: madd %e14, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x6a,0xe0]
.code32
madd %e14, %e0, %d15, %d0

# CHECK-INST: madd %e14, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x6a,0xe0]
.code32
madd %e14, %e0, %d15, %d1

# CHECK-INST: madd %e14, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x6a,0xe0]
.code32
madd %e14, %e0, %d15, %d14

# CHECK-INST: madd %e14, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x6a,0xe0]
.code32
madd %e14, %e0, %d15, %d15

# CHECK-INST: madd %e14, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x6a,0xe6]
.code32
madd %e14, %e6, %d0, %d0

# CHECK-INST: madd %e14, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x6a,0xe6]
.code32
madd %e14, %e6, %d0, %d1

# CHECK-INST: madd %e14, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x6a,0xe6]
.code32
madd %e14, %e6, %d0, %d14

# CHECK-INST: madd %e14, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x6a,0xe6]
.code32
madd %e14, %e6, %d0, %d15

# CHECK-INST: madd %e14, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x6a,0xe6]
.code32
madd %e14, %e6, %d1, %d0

# CHECK-INST: madd %e14, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x6a,0xe6]
.code32
madd %e14, %e6, %d1, %d1

# CHECK-INST: madd %e14, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x6a,0xe6]
.code32
madd %e14, %e6, %d1, %d14

# CHECK-INST: madd %e14, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x6a,0xe6]
.code32
madd %e14, %e6, %d1, %d15

# CHECK-INST: madd %e14, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x6a,0xe6]
.code32
madd %e14, %e6, %d14, %d0

# CHECK-INST: madd %e14, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x6a,0xe6]
.code32
madd %e14, %e6, %d14, %d1

# CHECK-INST: madd %e14, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x6a,0xe6]
.code32
madd %e14, %e6, %d14, %d14

# CHECK-INST: madd %e14, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x6a,0xe6]
.code32
madd %e14, %e6, %d14, %d15

# CHECK-INST: madd %e14, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x6a,0xe6]
.code32
madd %e14, %e6, %d15, %d0

# CHECK-INST: madd %e14, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x6a,0xe6]
.code32
madd %e14, %e6, %d15, %d1

# CHECK-INST: madd %e14, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x6a,0xe6]
.code32
madd %e14, %e6, %d15, %d14

# CHECK-INST: madd %e14, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x6a,0xe6]
.code32
madd %e14, %e6, %d15, %d15

# CHECK-INST: madd %e14, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x6a,0xee]
.code32
madd %e14, %e14, %d0, %d0

# CHECK-INST: madd %e14, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x6a,0xee]
.code32
madd %e14, %e14, %d0, %d1

# CHECK-INST: madd %e14, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x6a,0xee]
.code32
madd %e14, %e14, %d0, %d14

# CHECK-INST: madd %e14, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x6a,0xee]
.code32
madd %e14, %e14, %d0, %d15

# CHECK-INST: madd %e14, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x6a,0xee]
.code32
madd %e14, %e14, %d1, %d0

# CHECK-INST: madd %e14, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x6a,0xee]
.code32
madd %e14, %e14, %d1, %d1

# CHECK-INST: madd %e14, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x6a,0xee]
.code32
madd %e14, %e14, %d1, %d14

# CHECK-INST: madd %e14, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x6a,0xee]
.code32
madd %e14, %e14, %d1, %d15

# CHECK-INST: madd %e14, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x6a,0xee]
.code32
madd %e14, %e14, %d14, %d0

# CHECK-INST: madd %e14, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x6a,0xee]
.code32
madd %e14, %e14, %d14, %d1

# CHECK-INST: madd %e14, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x6a,0xee]
.code32
madd %e14, %e14, %d14, %d14

# CHECK-INST: madd %e14, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x6a,0xee]
.code32
madd %e14, %e14, %d14, %d15

# CHECK-INST: madd %e14, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x6a,0xee]
.code32
madd %e14, %e14, %d15, %d0

# CHECK-INST: madd %e14, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x6a,0xee]
.code32
madd %e14, %e14, %d15, %d1

# CHECK-INST: madd %e14, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x6a,0xee]
.code32
madd %e14, %e14, %d15, %d14

# CHECK-INST: madd %e14, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x6a,0xee]
.code32
madd %e14, %e14, %d15, %d15

# CHECK-INST: madd %e0, %e0, %d0, -256
# CHECK: encoding: [0x13,0x00,0x70,0x00]
.code32
madd %e0, %e0, %d0, -256

# CHECK-INST: madd %e0, %e0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x77,0x00]
.code32
madd %e0, %e0, %d0, -129

# CHECK-INST: madd %e0, %e0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x7f,0x00]
.code32
madd %e0, %e0, %d0, -1

# CHECK-INST: madd %e0, %e0, %d0, 0
# CHECK: encoding: [0x13,0x00,0x60,0x00]
.code32
madd %e0, %e0, %d0, 0

# CHECK-INST: madd %e0, %e0, %d0, 1
# CHECK: encoding: [0x13,0x10,0x60,0x00]
.code32
madd %e0, %e0, %d0, 1

# CHECK-INST: madd %e0, %e0, %d0, 128
# CHECK: encoding: [0x13,0x00,0x68,0x00]
.code32
madd %e0, %e0, %d0, 128

# CHECK-INST: madd %e0, %e0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x6f,0x00]
.code32
madd %e0, %e0, %d0, 255

# CHECK-INST: madd %e0, %e0, %d1, -256
# CHECK: encoding: [0x13,0x01,0x70,0x00]
.code32
madd %e0, %e0, %d1, -256

# CHECK-INST: madd %e0, %e0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x77,0x00]
.code32
madd %e0, %e0, %d1, -129

# CHECK-INST: madd %e0, %e0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x7f,0x00]
.code32
madd %e0, %e0, %d1, -1

# CHECK-INST: madd %e0, %e0, %d1, 0
# CHECK: encoding: [0x13,0x01,0x60,0x00]
.code32
madd %e0, %e0, %d1, 0

# CHECK-INST: madd %e0, %e0, %d1, 1
# CHECK: encoding: [0x13,0x11,0x60,0x00]
.code32
madd %e0, %e0, %d1, 1

# CHECK-INST: madd %e0, %e0, %d1, 128
# CHECK: encoding: [0x13,0x01,0x68,0x00]
.code32
madd %e0, %e0, %d1, 128

# CHECK-INST: madd %e0, %e0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x6f,0x00]
.code32
madd %e0, %e0, %d1, 255

# CHECK-INST: madd %e0, %e0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x70,0x00]
.code32
madd %e0, %e0, %d14, -256

# CHECK-INST: madd %e0, %e0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x77,0x00]
.code32
madd %e0, %e0, %d14, -129

# CHECK-INST: madd %e0, %e0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x7f,0x00]
.code32
madd %e0, %e0, %d14, -1

# CHECK-INST: madd %e0, %e0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x60,0x00]
.code32
madd %e0, %e0, %d14, 0

# CHECK-INST: madd %e0, %e0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x60,0x00]
.code32
madd %e0, %e0, %d14, 1

# CHECK-INST: madd %e0, %e0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x68,0x00]
.code32
madd %e0, %e0, %d14, 128

# CHECK-INST: madd %e0, %e0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x6f,0x00]
.code32
madd %e0, %e0, %d14, 255

# CHECK-INST: madd %e0, %e0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x70,0x00]
.code32
madd %e0, %e0, %d15, -256

# CHECK-INST: madd %e0, %e0, %d15, -129
# CHECK: encoding: [0x13,0xff,0x77,0x00]
.code32
madd %e0, %e0, %d15, -129

# CHECK-INST: madd %e0, %e0, %d15, -1
# CHECK: encoding: [0x13,0xff,0x7f,0x00]
.code32
madd %e0, %e0, %d15, -1

# CHECK-INST: madd %e0, %e0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x60,0x00]
.code32
madd %e0, %e0, %d15, 0

# CHECK-INST: madd %e0, %e0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x60,0x00]
.code32
madd %e0, %e0, %d15, 1

# CHECK-INST: madd %e0, %e0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x68,0x00]
.code32
madd %e0, %e0, %d15, 128

# CHECK-INST: madd %e0, %e0, %d15, 255
# CHECK: encoding: [0x13,0xff,0x6f,0x00]
.code32
madd %e0, %e0, %d15, 255

# CHECK-INST: madd %e0, %e6, %d0, -256
# CHECK: encoding: [0x13,0x00,0x70,0x06]
.code32
madd %e0, %e6, %d0, -256

# CHECK-INST: madd %e0, %e6, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x77,0x06]
.code32
madd %e0, %e6, %d0, -129

# CHECK-INST: madd %e0, %e6, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x7f,0x06]
.code32
madd %e0, %e6, %d0, -1

# CHECK-INST: madd %e0, %e6, %d0, 0
# CHECK: encoding: [0x13,0x00,0x60,0x06]
.code32
madd %e0, %e6, %d0, 0

# CHECK-INST: madd %e0, %e6, %d0, 1
# CHECK: encoding: [0x13,0x10,0x60,0x06]
.code32
madd %e0, %e6, %d0, 1

# CHECK-INST: madd %e0, %e6, %d0, 128
# CHECK: encoding: [0x13,0x00,0x68,0x06]
.code32
madd %e0, %e6, %d0, 128

# CHECK-INST: madd %e0, %e6, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x6f,0x06]
.code32
madd %e0, %e6, %d0, 255

# CHECK-INST: madd %e0, %e6, %d1, -256
# CHECK: encoding: [0x13,0x01,0x70,0x06]
.code32
madd %e0, %e6, %d1, -256

# CHECK-INST: madd %e0, %e6, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x77,0x06]
.code32
madd %e0, %e6, %d1, -129

# CHECK-INST: madd %e0, %e6, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x7f,0x06]
.code32
madd %e0, %e6, %d1, -1

# CHECK-INST: madd %e0, %e6, %d1, 0
# CHECK: encoding: [0x13,0x01,0x60,0x06]
.code32
madd %e0, %e6, %d1, 0

# CHECK-INST: madd %e0, %e6, %d1, 1
# CHECK: encoding: [0x13,0x11,0x60,0x06]
.code32
madd %e0, %e6, %d1, 1

# CHECK-INST: madd %e0, %e6, %d1, 128
# CHECK: encoding: [0x13,0x01,0x68,0x06]
.code32
madd %e0, %e6, %d1, 128

# CHECK-INST: madd %e0, %e6, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x6f,0x06]
.code32
madd %e0, %e6, %d1, 255

# CHECK-INST: madd %e0, %e6, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x70,0x06]
.code32
madd %e0, %e6, %d14, -256

# CHECK-INST: madd %e0, %e6, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x77,0x06]
.code32
madd %e0, %e6, %d14, -129

# CHECK-INST: madd %e0, %e6, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x7f,0x06]
.code32
madd %e0, %e6, %d14, -1

# CHECK-INST: madd %e0, %e6, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x60,0x06]
.code32
madd %e0, %e6, %d14, 0

# CHECK-INST: madd %e0, %e6, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x60,0x06]
.code32
madd %e0, %e6, %d14, 1

# CHECK-INST: madd %e0, %e6, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x68,0x06]
.code32
madd %e0, %e6, %d14, 128

# CHECK-INST: madd %e0, %e6, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x6f,0x06]
.code32
madd %e0, %e6, %d14, 255

# CHECK-INST: madd %e0, %e6, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x70,0x06]
.code32
madd %e0, %e6, %d15, -256

# CHECK-INST: madd %e0, %e6, %d15, -129
# CHECK: encoding: [0x13,0xff,0x77,0x06]
.code32
madd %e0, %e6, %d15, -129

# CHECK-INST: madd %e0, %e6, %d15, -1
# CHECK: encoding: [0x13,0xff,0x7f,0x06]
.code32
madd %e0, %e6, %d15, -1

# CHECK-INST: madd %e0, %e6, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x60,0x06]
.code32
madd %e0, %e6, %d15, 0

# CHECK-INST: madd %e0, %e6, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x60,0x06]
.code32
madd %e0, %e6, %d15, 1

# CHECK-INST: madd %e0, %e6, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x68,0x06]
.code32
madd %e0, %e6, %d15, 128

# CHECK-INST: madd %e0, %e6, %d15, 255
# CHECK: encoding: [0x13,0xff,0x6f,0x06]
.code32
madd %e0, %e6, %d15, 255

# CHECK-INST: madd %e0, %e14, %d0, -256
# CHECK: encoding: [0x13,0x00,0x70,0x0e]
.code32
madd %e0, %e14, %d0, -256

# CHECK-INST: madd %e0, %e14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x77,0x0e]
.code32
madd %e0, %e14, %d0, -129

# CHECK-INST: madd %e0, %e14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x7f,0x0e]
.code32
madd %e0, %e14, %d0, -1

# CHECK-INST: madd %e0, %e14, %d0, 0
# CHECK: encoding: [0x13,0x00,0x60,0x0e]
.code32
madd %e0, %e14, %d0, 0

# CHECK-INST: madd %e0, %e14, %d0, 1
# CHECK: encoding: [0x13,0x10,0x60,0x0e]
.code32
madd %e0, %e14, %d0, 1

# CHECK-INST: madd %e0, %e14, %d0, 128
# CHECK: encoding: [0x13,0x00,0x68,0x0e]
.code32
madd %e0, %e14, %d0, 128

# CHECK-INST: madd %e0, %e14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x6f,0x0e]
.code32
madd %e0, %e14, %d0, 255

# CHECK-INST: madd %e0, %e14, %d1, -256
# CHECK: encoding: [0x13,0x01,0x70,0x0e]
.code32
madd %e0, %e14, %d1, -256

# CHECK-INST: madd %e0, %e14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x77,0x0e]
.code32
madd %e0, %e14, %d1, -129

# CHECK-INST: madd %e0, %e14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x7f,0x0e]
.code32
madd %e0, %e14, %d1, -1

# CHECK-INST: madd %e0, %e14, %d1, 0
# CHECK: encoding: [0x13,0x01,0x60,0x0e]
.code32
madd %e0, %e14, %d1, 0

# CHECK-INST: madd %e0, %e14, %d1, 1
# CHECK: encoding: [0x13,0x11,0x60,0x0e]
.code32
madd %e0, %e14, %d1, 1

# CHECK-INST: madd %e0, %e14, %d1, 128
# CHECK: encoding: [0x13,0x01,0x68,0x0e]
.code32
madd %e0, %e14, %d1, 128

# CHECK-INST: madd %e0, %e14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x6f,0x0e]
.code32
madd %e0, %e14, %d1, 255

# CHECK-INST: madd %e0, %e14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x70,0x0e]
.code32
madd %e0, %e14, %d14, -256

# CHECK-INST: madd %e0, %e14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x77,0x0e]
.code32
madd %e0, %e14, %d14, -129

# CHECK-INST: madd %e0, %e14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x7f,0x0e]
.code32
madd %e0, %e14, %d14, -1

# CHECK-INST: madd %e0, %e14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x60,0x0e]
.code32
madd %e0, %e14, %d14, 0

# CHECK-INST: madd %e0, %e14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x60,0x0e]
.code32
madd %e0, %e14, %d14, 1

# CHECK-INST: madd %e0, %e14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x68,0x0e]
.code32
madd %e0, %e14, %d14, 128

# CHECK-INST: madd %e0, %e14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x6f,0x0e]
.code32
madd %e0, %e14, %d14, 255

# CHECK-INST: madd %e0, %e14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x70,0x0e]
.code32
madd %e0, %e14, %d15, -256

# CHECK-INST: madd %e0, %e14, %d15, -129
# CHECK: encoding: [0x13,0xff,0x77,0x0e]
.code32
madd %e0, %e14, %d15, -129

# CHECK-INST: madd %e0, %e14, %d15, -1
# CHECK: encoding: [0x13,0xff,0x7f,0x0e]
.code32
madd %e0, %e14, %d15, -1

# CHECK-INST: madd %e0, %e14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x60,0x0e]
.code32
madd %e0, %e14, %d15, 0

# CHECK-INST: madd %e0, %e14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x60,0x0e]
.code32
madd %e0, %e14, %d15, 1

# CHECK-INST: madd %e0, %e14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x68,0x0e]
.code32
madd %e0, %e14, %d15, 128

# CHECK-INST: madd %e0, %e14, %d15, 255
# CHECK: encoding: [0x13,0xff,0x6f,0x0e]
.code32
madd %e0, %e14, %d15, 255

# CHECK-INST: madd %e6, %e0, %d0, -256
# CHECK: encoding: [0x13,0x00,0x70,0x60]
.code32
madd %e6, %e0, %d0, -256

# CHECK-INST: madd %e6, %e0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x77,0x60]
.code32
madd %e6, %e0, %d0, -129

# CHECK-INST: madd %e6, %e0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x7f,0x60]
.code32
madd %e6, %e0, %d0, -1

# CHECK-INST: madd %e6, %e0, %d0, 0
# CHECK: encoding: [0x13,0x00,0x60,0x60]
.code32
madd %e6, %e0, %d0, 0

# CHECK-INST: madd %e6, %e0, %d0, 1
# CHECK: encoding: [0x13,0x10,0x60,0x60]
.code32
madd %e6, %e0, %d0, 1

# CHECK-INST: madd %e6, %e0, %d0, 128
# CHECK: encoding: [0x13,0x00,0x68,0x60]
.code32
madd %e6, %e0, %d0, 128

# CHECK-INST: madd %e6, %e0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x6f,0x60]
.code32
madd %e6, %e0, %d0, 255

# CHECK-INST: madd %e6, %e0, %d1, -256
# CHECK: encoding: [0x13,0x01,0x70,0x60]
.code32
madd %e6, %e0, %d1, -256

# CHECK-INST: madd %e6, %e0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x77,0x60]
.code32
madd %e6, %e0, %d1, -129

# CHECK-INST: madd %e6, %e0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x7f,0x60]
.code32
madd %e6, %e0, %d1, -1

# CHECK-INST: madd %e6, %e0, %d1, 0
# CHECK: encoding: [0x13,0x01,0x60,0x60]
.code32
madd %e6, %e0, %d1, 0

# CHECK-INST: madd %e6, %e0, %d1, 1
# CHECK: encoding: [0x13,0x11,0x60,0x60]
.code32
madd %e6, %e0, %d1, 1

# CHECK-INST: madd %e6, %e0, %d1, 128
# CHECK: encoding: [0x13,0x01,0x68,0x60]
.code32
madd %e6, %e0, %d1, 128

# CHECK-INST: madd %e6, %e0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x6f,0x60]
.code32
madd %e6, %e0, %d1, 255

# CHECK-INST: madd %e6, %e0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x70,0x60]
.code32
madd %e6, %e0, %d14, -256

# CHECK-INST: madd %e6, %e0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x77,0x60]
.code32
madd %e6, %e0, %d14, -129

# CHECK-INST: madd %e6, %e0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x7f,0x60]
.code32
madd %e6, %e0, %d14, -1

# CHECK-INST: madd %e6, %e0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x60,0x60]
.code32
madd %e6, %e0, %d14, 0

# CHECK-INST: madd %e6, %e0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x60,0x60]
.code32
madd %e6, %e0, %d14, 1

# CHECK-INST: madd %e6, %e0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x68,0x60]
.code32
madd %e6, %e0, %d14, 128

# CHECK-INST: madd %e6, %e0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x6f,0x60]
.code32
madd %e6, %e0, %d14, 255

# CHECK-INST: madd %e6, %e0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x70,0x60]
.code32
madd %e6, %e0, %d15, -256

# CHECK-INST: madd %e6, %e0, %d15, -129
# CHECK: encoding: [0x13,0xff,0x77,0x60]
.code32
madd %e6, %e0, %d15, -129

# CHECK-INST: madd %e6, %e0, %d15, -1
# CHECK: encoding: [0x13,0xff,0x7f,0x60]
.code32
madd %e6, %e0, %d15, -1

# CHECK-INST: madd %e6, %e0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x60,0x60]
.code32
madd %e6, %e0, %d15, 0

# CHECK-INST: madd %e6, %e0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x60,0x60]
.code32
madd %e6, %e0, %d15, 1

# CHECK-INST: madd %e6, %e0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x68,0x60]
.code32
madd %e6, %e0, %d15, 128

# CHECK-INST: madd %e6, %e0, %d15, 255
# CHECK: encoding: [0x13,0xff,0x6f,0x60]
.code32
madd %e6, %e0, %d15, 255

# CHECK-INST: madd %e6, %e6, %d0, -256
# CHECK: encoding: [0x13,0x00,0x70,0x66]
.code32
madd %e6, %e6, %d0, -256

# CHECK-INST: madd %e6, %e6, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x77,0x66]
.code32
madd %e6, %e6, %d0, -129

# CHECK-INST: madd %e6, %e6, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x7f,0x66]
.code32
madd %e6, %e6, %d0, -1

# CHECK-INST: madd %e6, %e6, %d0, 0
# CHECK: encoding: [0x13,0x00,0x60,0x66]
.code32
madd %e6, %e6, %d0, 0

# CHECK-INST: madd %e6, %e6, %d0, 1
# CHECK: encoding: [0x13,0x10,0x60,0x66]
.code32
madd %e6, %e6, %d0, 1

# CHECK-INST: madd %e6, %e6, %d0, 128
# CHECK: encoding: [0x13,0x00,0x68,0x66]
.code32
madd %e6, %e6, %d0, 128

# CHECK-INST: madd %e6, %e6, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x6f,0x66]
.code32
madd %e6, %e6, %d0, 255

# CHECK-INST: madd %e6, %e6, %d1, -256
# CHECK: encoding: [0x13,0x01,0x70,0x66]
.code32
madd %e6, %e6, %d1, -256

# CHECK-INST: madd %e6, %e6, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x77,0x66]
.code32
madd %e6, %e6, %d1, -129

# CHECK-INST: madd %e6, %e6, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x7f,0x66]
.code32
madd %e6, %e6, %d1, -1

# CHECK-INST: madd %e6, %e6, %d1, 0
# CHECK: encoding: [0x13,0x01,0x60,0x66]
.code32
madd %e6, %e6, %d1, 0

# CHECK-INST: madd %e6, %e6, %d1, 1
# CHECK: encoding: [0x13,0x11,0x60,0x66]
.code32
madd %e6, %e6, %d1, 1

# CHECK-INST: madd %e6, %e6, %d1, 128
# CHECK: encoding: [0x13,0x01,0x68,0x66]
.code32
madd %e6, %e6, %d1, 128

# CHECK-INST: madd %e6, %e6, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x6f,0x66]
.code32
madd %e6, %e6, %d1, 255

# CHECK-INST: madd %e6, %e6, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x70,0x66]
.code32
madd %e6, %e6, %d14, -256

# CHECK-INST: madd %e6, %e6, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x77,0x66]
.code32
madd %e6, %e6, %d14, -129

# CHECK-INST: madd %e6, %e6, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x7f,0x66]
.code32
madd %e6, %e6, %d14, -1

# CHECK-INST: madd %e6, %e6, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x60,0x66]
.code32
madd %e6, %e6, %d14, 0

# CHECK-INST: madd %e6, %e6, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x60,0x66]
.code32
madd %e6, %e6, %d14, 1

# CHECK-INST: madd %e6, %e6, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x68,0x66]
.code32
madd %e6, %e6, %d14, 128

# CHECK-INST: madd %e6, %e6, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x6f,0x66]
.code32
madd %e6, %e6, %d14, 255

# CHECK-INST: madd %e6, %e6, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x70,0x66]
.code32
madd %e6, %e6, %d15, -256

# CHECK-INST: madd %e6, %e6, %d15, -129
# CHECK: encoding: [0x13,0xff,0x77,0x66]
.code32
madd %e6, %e6, %d15, -129

# CHECK-INST: madd %e6, %e6, %d15, -1
# CHECK: encoding: [0x13,0xff,0x7f,0x66]
.code32
madd %e6, %e6, %d15, -1

# CHECK-INST: madd %e6, %e6, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x60,0x66]
.code32
madd %e6, %e6, %d15, 0

# CHECK-INST: madd %e6, %e6, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x60,0x66]
.code32
madd %e6, %e6, %d15, 1

# CHECK-INST: madd %e6, %e6, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x68,0x66]
.code32
madd %e6, %e6, %d15, 128

# CHECK-INST: madd %e6, %e6, %d15, 255
# CHECK: encoding: [0x13,0xff,0x6f,0x66]
.code32
madd %e6, %e6, %d15, 255

# CHECK-INST: madd %e6, %e14, %d0, -256
# CHECK: encoding: [0x13,0x00,0x70,0x6e]
.code32
madd %e6, %e14, %d0, -256

# CHECK-INST: madd %e6, %e14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x77,0x6e]
.code32
madd %e6, %e14, %d0, -129

# CHECK-INST: madd %e6, %e14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x7f,0x6e]
.code32
madd %e6, %e14, %d0, -1

# CHECK-INST: madd %e6, %e14, %d0, 0
# CHECK: encoding: [0x13,0x00,0x60,0x6e]
.code32
madd %e6, %e14, %d0, 0

# CHECK-INST: madd %e6, %e14, %d0, 1
# CHECK: encoding: [0x13,0x10,0x60,0x6e]
.code32
madd %e6, %e14, %d0, 1

# CHECK-INST: madd %e6, %e14, %d0, 128
# CHECK: encoding: [0x13,0x00,0x68,0x6e]
.code32
madd %e6, %e14, %d0, 128

# CHECK-INST: madd %e6, %e14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x6f,0x6e]
.code32
madd %e6, %e14, %d0, 255

# CHECK-INST: madd %e6, %e14, %d1, -256
# CHECK: encoding: [0x13,0x01,0x70,0x6e]
.code32
madd %e6, %e14, %d1, -256

# CHECK-INST: madd %e6, %e14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x77,0x6e]
.code32
madd %e6, %e14, %d1, -129

# CHECK-INST: madd %e6, %e14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x7f,0x6e]
.code32
madd %e6, %e14, %d1, -1

# CHECK-INST: madd %e6, %e14, %d1, 0
# CHECK: encoding: [0x13,0x01,0x60,0x6e]
.code32
madd %e6, %e14, %d1, 0

# CHECK-INST: madd %e6, %e14, %d1, 1
# CHECK: encoding: [0x13,0x11,0x60,0x6e]
.code32
madd %e6, %e14, %d1, 1

# CHECK-INST: madd %e6, %e14, %d1, 128
# CHECK: encoding: [0x13,0x01,0x68,0x6e]
.code32
madd %e6, %e14, %d1, 128

# CHECK-INST: madd %e6, %e14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x6f,0x6e]
.code32
madd %e6, %e14, %d1, 255

# CHECK-INST: madd %e6, %e14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x70,0x6e]
.code32
madd %e6, %e14, %d14, -256

# CHECK-INST: madd %e6, %e14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x77,0x6e]
.code32
madd %e6, %e14, %d14, -129

# CHECK-INST: madd %e6, %e14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x7f,0x6e]
.code32
madd %e6, %e14, %d14, -1

# CHECK-INST: madd %e6, %e14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x60,0x6e]
.code32
madd %e6, %e14, %d14, 0

# CHECK-INST: madd %e6, %e14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x60,0x6e]
.code32
madd %e6, %e14, %d14, 1

# CHECK-INST: madd %e6, %e14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x68,0x6e]
.code32
madd %e6, %e14, %d14, 128

# CHECK-INST: madd %e6, %e14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x6f,0x6e]
.code32
madd %e6, %e14, %d14, 255

# CHECK-INST: madd %e6, %e14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x70,0x6e]
.code32
madd %e6, %e14, %d15, -256

# CHECK-INST: madd %e6, %e14, %d15, -129
# CHECK: encoding: [0x13,0xff,0x77,0x6e]
.code32
madd %e6, %e14, %d15, -129

# CHECK-INST: madd %e6, %e14, %d15, -1
# CHECK: encoding: [0x13,0xff,0x7f,0x6e]
.code32
madd %e6, %e14, %d15, -1

# CHECK-INST: madd %e6, %e14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x60,0x6e]
.code32
madd %e6, %e14, %d15, 0

# CHECK-INST: madd %e6, %e14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x60,0x6e]
.code32
madd %e6, %e14, %d15, 1

# CHECK-INST: madd %e6, %e14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x68,0x6e]
.code32
madd %e6, %e14, %d15, 128

# CHECK-INST: madd %e6, %e14, %d15, 255
# CHECK: encoding: [0x13,0xff,0x6f,0x6e]
.code32
madd %e6, %e14, %d15, 255

# CHECK-INST: madd %e14, %e0, %d0, -256
# CHECK: encoding: [0x13,0x00,0x70,0xe0]
.code32
madd %e14, %e0, %d0, -256

# CHECK-INST: madd %e14, %e0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x77,0xe0]
.code32
madd %e14, %e0, %d0, -129

# CHECK-INST: madd %e14, %e0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x7f,0xe0]
.code32
madd %e14, %e0, %d0, -1

# CHECK-INST: madd %e14, %e0, %d0, 0
# CHECK: encoding: [0x13,0x00,0x60,0xe0]
.code32
madd %e14, %e0, %d0, 0

# CHECK-INST: madd %e14, %e0, %d0, 1
# CHECK: encoding: [0x13,0x10,0x60,0xe0]
.code32
madd %e14, %e0, %d0, 1

# CHECK-INST: madd %e14, %e0, %d0, 128
# CHECK: encoding: [0x13,0x00,0x68,0xe0]
.code32
madd %e14, %e0, %d0, 128

# CHECK-INST: madd %e14, %e0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x6f,0xe0]
.code32
madd %e14, %e0, %d0, 255

# CHECK-INST: madd %e14, %e0, %d1, -256
# CHECK: encoding: [0x13,0x01,0x70,0xe0]
.code32
madd %e14, %e0, %d1, -256

# CHECK-INST: madd %e14, %e0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x77,0xe0]
.code32
madd %e14, %e0, %d1, -129

# CHECK-INST: madd %e14, %e0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x7f,0xe0]
.code32
madd %e14, %e0, %d1, -1

# CHECK-INST: madd %e14, %e0, %d1, 0
# CHECK: encoding: [0x13,0x01,0x60,0xe0]
.code32
madd %e14, %e0, %d1, 0

# CHECK-INST: madd %e14, %e0, %d1, 1
# CHECK: encoding: [0x13,0x11,0x60,0xe0]
.code32
madd %e14, %e0, %d1, 1

# CHECK-INST: madd %e14, %e0, %d1, 128
# CHECK: encoding: [0x13,0x01,0x68,0xe0]
.code32
madd %e14, %e0, %d1, 128

# CHECK-INST: madd %e14, %e0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x6f,0xe0]
.code32
madd %e14, %e0, %d1, 255

# CHECK-INST: madd %e14, %e0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x70,0xe0]
.code32
madd %e14, %e0, %d14, -256

# CHECK-INST: madd %e14, %e0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x77,0xe0]
.code32
madd %e14, %e0, %d14, -129

# CHECK-INST: madd %e14, %e0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x7f,0xe0]
.code32
madd %e14, %e0, %d14, -1

# CHECK-INST: madd %e14, %e0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x60,0xe0]
.code32
madd %e14, %e0, %d14, 0

# CHECK-INST: madd %e14, %e0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x60,0xe0]
.code32
madd %e14, %e0, %d14, 1

# CHECK-INST: madd %e14, %e0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x68,0xe0]
.code32
madd %e14, %e0, %d14, 128

# CHECK-INST: madd %e14, %e0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x6f,0xe0]
.code32
madd %e14, %e0, %d14, 255

# CHECK-INST: madd %e14, %e0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x70,0xe0]
.code32
madd %e14, %e0, %d15, -256

# CHECK-INST: madd %e14, %e0, %d15, -129
# CHECK: encoding: [0x13,0xff,0x77,0xe0]
.code32
madd %e14, %e0, %d15, -129

# CHECK-INST: madd %e14, %e0, %d15, -1
# CHECK: encoding: [0x13,0xff,0x7f,0xe0]
.code32
madd %e14, %e0, %d15, -1

# CHECK-INST: madd %e14, %e0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x60,0xe0]
.code32
madd %e14, %e0, %d15, 0

# CHECK-INST: madd %e14, %e0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x60,0xe0]
.code32
madd %e14, %e0, %d15, 1

# CHECK-INST: madd %e14, %e0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x68,0xe0]
.code32
madd %e14, %e0, %d15, 128

# CHECK-INST: madd %e14, %e0, %d15, 255
# CHECK: encoding: [0x13,0xff,0x6f,0xe0]
.code32
madd %e14, %e0, %d15, 255

# CHECK-INST: madd %e14, %e6, %d0, -256
# CHECK: encoding: [0x13,0x00,0x70,0xe6]
.code32
madd %e14, %e6, %d0, -256

# CHECK-INST: madd %e14, %e6, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x77,0xe6]
.code32
madd %e14, %e6, %d0, -129

# CHECK-INST: madd %e14, %e6, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x7f,0xe6]
.code32
madd %e14, %e6, %d0, -1

# CHECK-INST: madd %e14, %e6, %d0, 0
# CHECK: encoding: [0x13,0x00,0x60,0xe6]
.code32
madd %e14, %e6, %d0, 0

# CHECK-INST: madd %e14, %e6, %d0, 1
# CHECK: encoding: [0x13,0x10,0x60,0xe6]
.code32
madd %e14, %e6, %d0, 1

# CHECK-INST: madd %e14, %e6, %d0, 128
# CHECK: encoding: [0x13,0x00,0x68,0xe6]
.code32
madd %e14, %e6, %d0, 128

# CHECK-INST: madd %e14, %e6, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x6f,0xe6]
.code32
madd %e14, %e6, %d0, 255

# CHECK-INST: madd %e14, %e6, %d1, -256
# CHECK: encoding: [0x13,0x01,0x70,0xe6]
.code32
madd %e14, %e6, %d1, -256

# CHECK-INST: madd %e14, %e6, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x77,0xe6]
.code32
madd %e14, %e6, %d1, -129

# CHECK-INST: madd %e14, %e6, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x7f,0xe6]
.code32
madd %e14, %e6, %d1, -1

# CHECK-INST: madd %e14, %e6, %d1, 0
# CHECK: encoding: [0x13,0x01,0x60,0xe6]
.code32
madd %e14, %e6, %d1, 0

# CHECK-INST: madd %e14, %e6, %d1, 1
# CHECK: encoding: [0x13,0x11,0x60,0xe6]
.code32
madd %e14, %e6, %d1, 1

# CHECK-INST: madd %e14, %e6, %d1, 128
# CHECK: encoding: [0x13,0x01,0x68,0xe6]
.code32
madd %e14, %e6, %d1, 128

# CHECK-INST: madd %e14, %e6, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x6f,0xe6]
.code32
madd %e14, %e6, %d1, 255

# CHECK-INST: madd %e14, %e6, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x70,0xe6]
.code32
madd %e14, %e6, %d14, -256

# CHECK-INST: madd %e14, %e6, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x77,0xe6]
.code32
madd %e14, %e6, %d14, -129

# CHECK-INST: madd %e14, %e6, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x7f,0xe6]
.code32
madd %e14, %e6, %d14, -1

# CHECK-INST: madd %e14, %e6, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x60,0xe6]
.code32
madd %e14, %e6, %d14, 0

# CHECK-INST: madd %e14, %e6, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x60,0xe6]
.code32
madd %e14, %e6, %d14, 1

# CHECK-INST: madd %e14, %e6, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x68,0xe6]
.code32
madd %e14, %e6, %d14, 128

# CHECK-INST: madd %e14, %e6, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x6f,0xe6]
.code32
madd %e14, %e6, %d14, 255

# CHECK-INST: madd %e14, %e6, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x70,0xe6]
.code32
madd %e14, %e6, %d15, -256

# CHECK-INST: madd %e14, %e6, %d15, -129
# CHECK: encoding: [0x13,0xff,0x77,0xe6]
.code32
madd %e14, %e6, %d15, -129

# CHECK-INST: madd %e14, %e6, %d15, -1
# CHECK: encoding: [0x13,0xff,0x7f,0xe6]
.code32
madd %e14, %e6, %d15, -1

# CHECK-INST: madd %e14, %e6, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x60,0xe6]
.code32
madd %e14, %e6, %d15, 0

# CHECK-INST: madd %e14, %e6, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x60,0xe6]
.code32
madd %e14, %e6, %d15, 1

# CHECK-INST: madd %e14, %e6, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x68,0xe6]
.code32
madd %e14, %e6, %d15, 128

# CHECK-INST: madd %e14, %e6, %d15, 255
# CHECK: encoding: [0x13,0xff,0x6f,0xe6]
.code32
madd %e14, %e6, %d15, 255

# CHECK-INST: madd %e14, %e14, %d0, -256
# CHECK: encoding: [0x13,0x00,0x70,0xee]
.code32
madd %e14, %e14, %d0, -256

# CHECK-INST: madd %e14, %e14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x77,0xee]
.code32
madd %e14, %e14, %d0, -129

# CHECK-INST: madd %e14, %e14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x7f,0xee]
.code32
madd %e14, %e14, %d0, -1

# CHECK-INST: madd %e14, %e14, %d0, 0
# CHECK: encoding: [0x13,0x00,0x60,0xee]
.code32
madd %e14, %e14, %d0, 0

# CHECK-INST: madd %e14, %e14, %d0, 1
# CHECK: encoding: [0x13,0x10,0x60,0xee]
.code32
madd %e14, %e14, %d0, 1

# CHECK-INST: madd %e14, %e14, %d0, 128
# CHECK: encoding: [0x13,0x00,0x68,0xee]
.code32
madd %e14, %e14, %d0, 128

# CHECK-INST: madd %e14, %e14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x6f,0xee]
.code32
madd %e14, %e14, %d0, 255

# CHECK-INST: madd %e14, %e14, %d1, -256
# CHECK: encoding: [0x13,0x01,0x70,0xee]
.code32
madd %e14, %e14, %d1, -256

# CHECK-INST: madd %e14, %e14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x77,0xee]
.code32
madd %e14, %e14, %d1, -129

# CHECK-INST: madd %e14, %e14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x7f,0xee]
.code32
madd %e14, %e14, %d1, -1

# CHECK-INST: madd %e14, %e14, %d1, 0
# CHECK: encoding: [0x13,0x01,0x60,0xee]
.code32
madd %e14, %e14, %d1, 0

# CHECK-INST: madd %e14, %e14, %d1, 1
# CHECK: encoding: [0x13,0x11,0x60,0xee]
.code32
madd %e14, %e14, %d1, 1

# CHECK-INST: madd %e14, %e14, %d1, 128
# CHECK: encoding: [0x13,0x01,0x68,0xee]
.code32
madd %e14, %e14, %d1, 128

# CHECK-INST: madd %e14, %e14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x6f,0xee]
.code32
madd %e14, %e14, %d1, 255

# CHECK-INST: madd %e14, %e14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x70,0xee]
.code32
madd %e14, %e14, %d14, -256

# CHECK-INST: madd %e14, %e14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x77,0xee]
.code32
madd %e14, %e14, %d14, -129

# CHECK-INST: madd %e14, %e14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x7f,0xee]
.code32
madd %e14, %e14, %d14, -1

# CHECK-INST: madd %e14, %e14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x60,0xee]
.code32
madd %e14, %e14, %d14, 0

# CHECK-INST: madd %e14, %e14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x60,0xee]
.code32
madd %e14, %e14, %d14, 1

# CHECK-INST: madd %e14, %e14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x68,0xee]
.code32
madd %e14, %e14, %d14, 128

# CHECK-INST: madd %e14, %e14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x6f,0xee]
.code32
madd %e14, %e14, %d14, 255

# CHECK-INST: madd %e14, %e14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x70,0xee]
.code32
madd %e14, %e14, %d15, -256

# CHECK-INST: madd %e14, %e14, %d15, -129
# CHECK: encoding: [0x13,0xff,0x77,0xee]
.code32
madd %e14, %e14, %d15, -129

# CHECK-INST: madd %e14, %e14, %d15, -1
# CHECK: encoding: [0x13,0xff,0x7f,0xee]
.code32
madd %e14, %e14, %d15, -1

# CHECK-INST: madd %e14, %e14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x60,0xee]
.code32
madd %e14, %e14, %d15, 0

# CHECK-INST: madd %e14, %e14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x60,0xee]
.code32
madd %e14, %e14, %d15, 1

# CHECK-INST: madd %e14, %e14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x68,0xee]
.code32
madd %e14, %e14, %d15, 128

# CHECK-INST: madd %e14, %e14, %d15, 255
# CHECK: encoding: [0x13,0xff,0x6f,0xee]
.code32
madd %e14, %e14, %d15, 255

# CHECK-INST: madd.u %e0, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x68,0x00]
.code32
madd.u %e0, %e0, %d0, %d0

# CHECK-INST: madd.u %e0, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x68,0x00]
.code32
madd.u %e0, %e0, %d0, %d1

# CHECK-INST: madd.u %e0, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x68,0x00]
.code32
madd.u %e0, %e0, %d0, %d14

# CHECK-INST: madd.u %e0, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x68,0x00]
.code32
madd.u %e0, %e0, %d0, %d15

# CHECK-INST: madd.u %e0, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x68,0x00]
.code32
madd.u %e0, %e0, %d1, %d0

# CHECK-INST: madd.u %e0, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x68,0x00]
.code32
madd.u %e0, %e0, %d1, %d1

# CHECK-INST: madd.u %e0, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x68,0x00]
.code32
madd.u %e0, %e0, %d1, %d14

# CHECK-INST: madd.u %e0, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x68,0x00]
.code32
madd.u %e0, %e0, %d1, %d15

# CHECK-INST: madd.u %e0, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x68,0x00]
.code32
madd.u %e0, %e0, %d14, %d0

# CHECK-INST: madd.u %e0, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x68,0x00]
.code32
madd.u %e0, %e0, %d14, %d1

# CHECK-INST: madd.u %e0, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x68,0x00]
.code32
madd.u %e0, %e0, %d14, %d14

# CHECK-INST: madd.u %e0, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x68,0x00]
.code32
madd.u %e0, %e0, %d14, %d15

# CHECK-INST: madd.u %e0, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x68,0x00]
.code32
madd.u %e0, %e0, %d15, %d0

# CHECK-INST: madd.u %e0, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x68,0x00]
.code32
madd.u %e0, %e0, %d15, %d1

# CHECK-INST: madd.u %e0, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x68,0x00]
.code32
madd.u %e0, %e0, %d15, %d14

# CHECK-INST: madd.u %e0, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x68,0x00]
.code32
madd.u %e0, %e0, %d15, %d15

# CHECK-INST: madd.u %e0, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x68,0x06]
.code32
madd.u %e0, %e6, %d0, %d0

# CHECK-INST: madd.u %e0, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x68,0x06]
.code32
madd.u %e0, %e6, %d0, %d1

# CHECK-INST: madd.u %e0, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x68,0x06]
.code32
madd.u %e0, %e6, %d0, %d14

# CHECK-INST: madd.u %e0, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x68,0x06]
.code32
madd.u %e0, %e6, %d0, %d15

# CHECK-INST: madd.u %e0, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x68,0x06]
.code32
madd.u %e0, %e6, %d1, %d0

# CHECK-INST: madd.u %e0, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x68,0x06]
.code32
madd.u %e0, %e6, %d1, %d1

# CHECK-INST: madd.u %e0, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x68,0x06]
.code32
madd.u %e0, %e6, %d1, %d14

# CHECK-INST: madd.u %e0, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x68,0x06]
.code32
madd.u %e0, %e6, %d1, %d15

# CHECK-INST: madd.u %e0, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x68,0x06]
.code32
madd.u %e0, %e6, %d14, %d0

# CHECK-INST: madd.u %e0, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x68,0x06]
.code32
madd.u %e0, %e6, %d14, %d1

# CHECK-INST: madd.u %e0, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x68,0x06]
.code32
madd.u %e0, %e6, %d14, %d14

# CHECK-INST: madd.u %e0, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x68,0x06]
.code32
madd.u %e0, %e6, %d14, %d15

# CHECK-INST: madd.u %e0, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x68,0x06]
.code32
madd.u %e0, %e6, %d15, %d0

# CHECK-INST: madd.u %e0, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x68,0x06]
.code32
madd.u %e0, %e6, %d15, %d1

# CHECK-INST: madd.u %e0, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x68,0x06]
.code32
madd.u %e0, %e6, %d15, %d14

# CHECK-INST: madd.u %e0, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x68,0x06]
.code32
madd.u %e0, %e6, %d15, %d15

# CHECK-INST: madd.u %e0, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x68,0x0e]
.code32
madd.u %e0, %e14, %d0, %d0

# CHECK-INST: madd.u %e0, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x68,0x0e]
.code32
madd.u %e0, %e14, %d0, %d1

# CHECK-INST: madd.u %e0, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x68,0x0e]
.code32
madd.u %e0, %e14, %d0, %d14

# CHECK-INST: madd.u %e0, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x68,0x0e]
.code32
madd.u %e0, %e14, %d0, %d15

# CHECK-INST: madd.u %e0, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x68,0x0e]
.code32
madd.u %e0, %e14, %d1, %d0

# CHECK-INST: madd.u %e0, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x68,0x0e]
.code32
madd.u %e0, %e14, %d1, %d1

# CHECK-INST: madd.u %e0, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x68,0x0e]
.code32
madd.u %e0, %e14, %d1, %d14

# CHECK-INST: madd.u %e0, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x68,0x0e]
.code32
madd.u %e0, %e14, %d1, %d15

# CHECK-INST: madd.u %e0, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x68,0x0e]
.code32
madd.u %e0, %e14, %d14, %d0

# CHECK-INST: madd.u %e0, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x68,0x0e]
.code32
madd.u %e0, %e14, %d14, %d1

# CHECK-INST: madd.u %e0, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x68,0x0e]
.code32
madd.u %e0, %e14, %d14, %d14

# CHECK-INST: madd.u %e0, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x68,0x0e]
.code32
madd.u %e0, %e14, %d14, %d15

# CHECK-INST: madd.u %e0, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x68,0x0e]
.code32
madd.u %e0, %e14, %d15, %d0

# CHECK-INST: madd.u %e0, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x68,0x0e]
.code32
madd.u %e0, %e14, %d15, %d1

# CHECK-INST: madd.u %e0, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x68,0x0e]
.code32
madd.u %e0, %e14, %d15, %d14

# CHECK-INST: madd.u %e0, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x68,0x0e]
.code32
madd.u %e0, %e14, %d15, %d15

# CHECK-INST: madd.u %e6, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x68,0x60]
.code32
madd.u %e6, %e0, %d0, %d0

# CHECK-INST: madd.u %e6, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x68,0x60]
.code32
madd.u %e6, %e0, %d0, %d1

# CHECK-INST: madd.u %e6, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x68,0x60]
.code32
madd.u %e6, %e0, %d0, %d14

# CHECK-INST: madd.u %e6, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x68,0x60]
.code32
madd.u %e6, %e0, %d0, %d15

# CHECK-INST: madd.u %e6, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x68,0x60]
.code32
madd.u %e6, %e0, %d1, %d0

# CHECK-INST: madd.u %e6, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x68,0x60]
.code32
madd.u %e6, %e0, %d1, %d1

# CHECK-INST: madd.u %e6, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x68,0x60]
.code32
madd.u %e6, %e0, %d1, %d14

# CHECK-INST: madd.u %e6, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x68,0x60]
.code32
madd.u %e6, %e0, %d1, %d15

# CHECK-INST: madd.u %e6, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x68,0x60]
.code32
madd.u %e6, %e0, %d14, %d0

# CHECK-INST: madd.u %e6, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x68,0x60]
.code32
madd.u %e6, %e0, %d14, %d1

# CHECK-INST: madd.u %e6, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x68,0x60]
.code32
madd.u %e6, %e0, %d14, %d14

# CHECK-INST: madd.u %e6, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x68,0x60]
.code32
madd.u %e6, %e0, %d14, %d15

# CHECK-INST: madd.u %e6, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x68,0x60]
.code32
madd.u %e6, %e0, %d15, %d0

# CHECK-INST: madd.u %e6, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x68,0x60]
.code32
madd.u %e6, %e0, %d15, %d1

# CHECK-INST: madd.u %e6, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x68,0x60]
.code32
madd.u %e6, %e0, %d15, %d14

# CHECK-INST: madd.u %e6, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x68,0x60]
.code32
madd.u %e6, %e0, %d15, %d15

# CHECK-INST: madd.u %e6, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x68,0x66]
.code32
madd.u %e6, %e6, %d0, %d0

# CHECK-INST: madd.u %e6, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x68,0x66]
.code32
madd.u %e6, %e6, %d0, %d1

# CHECK-INST: madd.u %e6, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x68,0x66]
.code32
madd.u %e6, %e6, %d0, %d14

# CHECK-INST: madd.u %e6, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x68,0x66]
.code32
madd.u %e6, %e6, %d0, %d15

# CHECK-INST: madd.u %e6, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x68,0x66]
.code32
madd.u %e6, %e6, %d1, %d0

# CHECK-INST: madd.u %e6, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x68,0x66]
.code32
madd.u %e6, %e6, %d1, %d1

# CHECK-INST: madd.u %e6, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x68,0x66]
.code32
madd.u %e6, %e6, %d1, %d14

# CHECK-INST: madd.u %e6, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x68,0x66]
.code32
madd.u %e6, %e6, %d1, %d15

# CHECK-INST: madd.u %e6, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x68,0x66]
.code32
madd.u %e6, %e6, %d14, %d0

# CHECK-INST: madd.u %e6, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x68,0x66]
.code32
madd.u %e6, %e6, %d14, %d1

# CHECK-INST: madd.u %e6, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x68,0x66]
.code32
madd.u %e6, %e6, %d14, %d14

# CHECK-INST: madd.u %e6, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x68,0x66]
.code32
madd.u %e6, %e6, %d14, %d15

# CHECK-INST: madd.u %e6, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x68,0x66]
.code32
madd.u %e6, %e6, %d15, %d0

# CHECK-INST: madd.u %e6, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x68,0x66]
.code32
madd.u %e6, %e6, %d15, %d1

# CHECK-INST: madd.u %e6, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x68,0x66]
.code32
madd.u %e6, %e6, %d15, %d14

# CHECK-INST: madd.u %e6, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x68,0x66]
.code32
madd.u %e6, %e6, %d15, %d15

# CHECK-INST: madd.u %e6, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x68,0x6e]
.code32
madd.u %e6, %e14, %d0, %d0

# CHECK-INST: madd.u %e6, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x68,0x6e]
.code32
madd.u %e6, %e14, %d0, %d1

# CHECK-INST: madd.u %e6, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x68,0x6e]
.code32
madd.u %e6, %e14, %d0, %d14

# CHECK-INST: madd.u %e6, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x68,0x6e]
.code32
madd.u %e6, %e14, %d0, %d15

# CHECK-INST: madd.u %e6, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x68,0x6e]
.code32
madd.u %e6, %e14, %d1, %d0

# CHECK-INST: madd.u %e6, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x68,0x6e]
.code32
madd.u %e6, %e14, %d1, %d1

# CHECK-INST: madd.u %e6, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x68,0x6e]
.code32
madd.u %e6, %e14, %d1, %d14

# CHECK-INST: madd.u %e6, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x68,0x6e]
.code32
madd.u %e6, %e14, %d1, %d15

# CHECK-INST: madd.u %e6, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x68,0x6e]
.code32
madd.u %e6, %e14, %d14, %d0

# CHECK-INST: madd.u %e6, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x68,0x6e]
.code32
madd.u %e6, %e14, %d14, %d1

# CHECK-INST: madd.u %e6, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x68,0x6e]
.code32
madd.u %e6, %e14, %d14, %d14

# CHECK-INST: madd.u %e6, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x68,0x6e]
.code32
madd.u %e6, %e14, %d14, %d15

# CHECK-INST: madd.u %e6, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x68,0x6e]
.code32
madd.u %e6, %e14, %d15, %d0

# CHECK-INST: madd.u %e6, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x68,0x6e]
.code32
madd.u %e6, %e14, %d15, %d1

# CHECK-INST: madd.u %e6, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x68,0x6e]
.code32
madd.u %e6, %e14, %d15, %d14

# CHECK-INST: madd.u %e6, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x68,0x6e]
.code32
madd.u %e6, %e14, %d15, %d15

# CHECK-INST: madd.u %e14, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x68,0xe0]
.code32
madd.u %e14, %e0, %d0, %d0

# CHECK-INST: madd.u %e14, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x68,0xe0]
.code32
madd.u %e14, %e0, %d0, %d1

# CHECK-INST: madd.u %e14, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x68,0xe0]
.code32
madd.u %e14, %e0, %d0, %d14

# CHECK-INST: madd.u %e14, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x68,0xe0]
.code32
madd.u %e14, %e0, %d0, %d15

# CHECK-INST: madd.u %e14, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x68,0xe0]
.code32
madd.u %e14, %e0, %d1, %d0

# CHECK-INST: madd.u %e14, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x68,0xe0]
.code32
madd.u %e14, %e0, %d1, %d1

# CHECK-INST: madd.u %e14, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x68,0xe0]
.code32
madd.u %e14, %e0, %d1, %d14

# CHECK-INST: madd.u %e14, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x68,0xe0]
.code32
madd.u %e14, %e0, %d1, %d15

# CHECK-INST: madd.u %e14, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x68,0xe0]
.code32
madd.u %e14, %e0, %d14, %d0

# CHECK-INST: madd.u %e14, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x68,0xe0]
.code32
madd.u %e14, %e0, %d14, %d1

# CHECK-INST: madd.u %e14, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x68,0xe0]
.code32
madd.u %e14, %e0, %d14, %d14

# CHECK-INST: madd.u %e14, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x68,0xe0]
.code32
madd.u %e14, %e0, %d14, %d15

# CHECK-INST: madd.u %e14, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x68,0xe0]
.code32
madd.u %e14, %e0, %d15, %d0

# CHECK-INST: madd.u %e14, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x68,0xe0]
.code32
madd.u %e14, %e0, %d15, %d1

# CHECK-INST: madd.u %e14, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x68,0xe0]
.code32
madd.u %e14, %e0, %d15, %d14

# CHECK-INST: madd.u %e14, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x68,0xe0]
.code32
madd.u %e14, %e0, %d15, %d15

# CHECK-INST: madd.u %e14, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x68,0xe6]
.code32
madd.u %e14, %e6, %d0, %d0

# CHECK-INST: madd.u %e14, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x68,0xe6]
.code32
madd.u %e14, %e6, %d0, %d1

# CHECK-INST: madd.u %e14, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x68,0xe6]
.code32
madd.u %e14, %e6, %d0, %d14

# CHECK-INST: madd.u %e14, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x68,0xe6]
.code32
madd.u %e14, %e6, %d0, %d15

# CHECK-INST: madd.u %e14, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x68,0xe6]
.code32
madd.u %e14, %e6, %d1, %d0

# CHECK-INST: madd.u %e14, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x68,0xe6]
.code32
madd.u %e14, %e6, %d1, %d1

# CHECK-INST: madd.u %e14, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x68,0xe6]
.code32
madd.u %e14, %e6, %d1, %d14

# CHECK-INST: madd.u %e14, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x68,0xe6]
.code32
madd.u %e14, %e6, %d1, %d15

# CHECK-INST: madd.u %e14, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x68,0xe6]
.code32
madd.u %e14, %e6, %d14, %d0

# CHECK-INST: madd.u %e14, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x68,0xe6]
.code32
madd.u %e14, %e6, %d14, %d1

# CHECK-INST: madd.u %e14, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x68,0xe6]
.code32
madd.u %e14, %e6, %d14, %d14

# CHECK-INST: madd.u %e14, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x68,0xe6]
.code32
madd.u %e14, %e6, %d14, %d15

# CHECK-INST: madd.u %e14, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x68,0xe6]
.code32
madd.u %e14, %e6, %d15, %d0

# CHECK-INST: madd.u %e14, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x68,0xe6]
.code32
madd.u %e14, %e6, %d15, %d1

# CHECK-INST: madd.u %e14, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x68,0xe6]
.code32
madd.u %e14, %e6, %d15, %d14

# CHECK-INST: madd.u %e14, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x68,0xe6]
.code32
madd.u %e14, %e6, %d15, %d15

# CHECK-INST: madd.u %e14, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x68,0xee]
.code32
madd.u %e14, %e14, %d0, %d0

# CHECK-INST: madd.u %e14, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x68,0xee]
.code32
madd.u %e14, %e14, %d0, %d1

# CHECK-INST: madd.u %e14, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x68,0xee]
.code32
madd.u %e14, %e14, %d0, %d14

# CHECK-INST: madd.u %e14, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x68,0xee]
.code32
madd.u %e14, %e14, %d0, %d15

# CHECK-INST: madd.u %e14, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x68,0xee]
.code32
madd.u %e14, %e14, %d1, %d0

# CHECK-INST: madd.u %e14, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x68,0xee]
.code32
madd.u %e14, %e14, %d1, %d1

# CHECK-INST: madd.u %e14, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x68,0xee]
.code32
madd.u %e14, %e14, %d1, %d14

# CHECK-INST: madd.u %e14, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x68,0xee]
.code32
madd.u %e14, %e14, %d1, %d15

# CHECK-INST: madd.u %e14, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x68,0xee]
.code32
madd.u %e14, %e14, %d14, %d0

# CHECK-INST: madd.u %e14, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x68,0xee]
.code32
madd.u %e14, %e14, %d14, %d1

# CHECK-INST: madd.u %e14, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x68,0xee]
.code32
madd.u %e14, %e14, %d14, %d14

# CHECK-INST: madd.u %e14, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x68,0xee]
.code32
madd.u %e14, %e14, %d14, %d15

# CHECK-INST: madd.u %e14, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x68,0xee]
.code32
madd.u %e14, %e14, %d15, %d0

# CHECK-INST: madd.u %e14, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x68,0xee]
.code32
madd.u %e14, %e14, %d15, %d1

# CHECK-INST: madd.u %e14, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x68,0xee]
.code32
madd.u %e14, %e14, %d15, %d14

# CHECK-INST: madd.u %e14, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x68,0xee]
.code32
madd.u %e14, %e14, %d15, %d15

# CHECK-INST: madd.u %e0, %e0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x50,0x00]
.code32
madd.u %e0, %e0, %d0, 271

# CHECK-INST: madd.u %e0, %e0, %d0, 496
# CHECK: encoding: [0x13,0x00,0x5f,0x00]
.code32
madd.u %e0, %e0, %d0, 496

# CHECK-INST: madd.u %e0, %e0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x5f,0x00]
.code32
madd.u %e0, %e0, %d0, 511

# CHECK-INST: madd.u %e0, %e0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x50,0x00]
.code32
madd.u %e0, %e0, %d1, 271

# CHECK-INST: madd.u %e0, %e0, %d1, 496
# CHECK: encoding: [0x13,0x01,0x5f,0x00]
.code32
madd.u %e0, %e0, %d1, 496

# CHECK-INST: madd.u %e0, %e0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x5f,0x00]
.code32
madd.u %e0, %e0, %d1, 511

# CHECK-INST: madd.u %e0, %e0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x50,0x00]
.code32
madd.u %e0, %e0, %d14, 271

# CHECK-INST: madd.u %e0, %e0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x5f,0x00]
.code32
madd.u %e0, %e0, %d14, 496

# CHECK-INST: madd.u %e0, %e0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x5f,0x00]
.code32
madd.u %e0, %e0, %d14, 511

# CHECK-INST: madd.u %e0, %e0, %d15, 271
# CHECK: encoding: [0x13,0xff,0x50,0x00]
.code32
madd.u %e0, %e0, %d15, 271

# CHECK-INST: madd.u %e0, %e0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x5f,0x00]
.code32
madd.u %e0, %e0, %d15, 496

# CHECK-INST: madd.u %e0, %e0, %d15, 511
# CHECK: encoding: [0x13,0xff,0x5f,0x00]
.code32
madd.u %e0, %e0, %d15, 511

# CHECK-INST: madd.u %e0, %e6, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x50,0x06]
.code32
madd.u %e0, %e6, %d0, 271

# CHECK-INST: madd.u %e0, %e6, %d0, 496
# CHECK: encoding: [0x13,0x00,0x5f,0x06]
.code32
madd.u %e0, %e6, %d0, 496

# CHECK-INST: madd.u %e0, %e6, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x5f,0x06]
.code32
madd.u %e0, %e6, %d0, 511

# CHECK-INST: madd.u %e0, %e6, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x50,0x06]
.code32
madd.u %e0, %e6, %d1, 271

# CHECK-INST: madd.u %e0, %e6, %d1, 496
# CHECK: encoding: [0x13,0x01,0x5f,0x06]
.code32
madd.u %e0, %e6, %d1, 496

# CHECK-INST: madd.u %e0, %e6, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x5f,0x06]
.code32
madd.u %e0, %e6, %d1, 511

# CHECK-INST: madd.u %e0, %e6, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x50,0x06]
.code32
madd.u %e0, %e6, %d14, 271

# CHECK-INST: madd.u %e0, %e6, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x5f,0x06]
.code32
madd.u %e0, %e6, %d14, 496

# CHECK-INST: madd.u %e0, %e6, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x5f,0x06]
.code32
madd.u %e0, %e6, %d14, 511

# CHECK-INST: madd.u %e0, %e6, %d15, 271
# CHECK: encoding: [0x13,0xff,0x50,0x06]
.code32
madd.u %e0, %e6, %d15, 271

# CHECK-INST: madd.u %e0, %e6, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x5f,0x06]
.code32
madd.u %e0, %e6, %d15, 496

# CHECK-INST: madd.u %e0, %e6, %d15, 511
# CHECK: encoding: [0x13,0xff,0x5f,0x06]
.code32
madd.u %e0, %e6, %d15, 511

# CHECK-INST: madd.u %e0, %e14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x50,0x0e]
.code32
madd.u %e0, %e14, %d0, 271

# CHECK-INST: madd.u %e0, %e14, %d0, 496
# CHECK: encoding: [0x13,0x00,0x5f,0x0e]
.code32
madd.u %e0, %e14, %d0, 496

# CHECK-INST: madd.u %e0, %e14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x5f,0x0e]
.code32
madd.u %e0, %e14, %d0, 511

# CHECK-INST: madd.u %e0, %e14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x50,0x0e]
.code32
madd.u %e0, %e14, %d1, 271

# CHECK-INST: madd.u %e0, %e14, %d1, 496
# CHECK: encoding: [0x13,0x01,0x5f,0x0e]
.code32
madd.u %e0, %e14, %d1, 496

# CHECK-INST: madd.u %e0, %e14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x5f,0x0e]
.code32
madd.u %e0, %e14, %d1, 511

# CHECK-INST: madd.u %e0, %e14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x50,0x0e]
.code32
madd.u %e0, %e14, %d14, 271

# CHECK-INST: madd.u %e0, %e14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x5f,0x0e]
.code32
madd.u %e0, %e14, %d14, 496

# CHECK-INST: madd.u %e0, %e14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x5f,0x0e]
.code32
madd.u %e0, %e14, %d14, 511

# CHECK-INST: madd.u %e0, %e14, %d15, 271
# CHECK: encoding: [0x13,0xff,0x50,0x0e]
.code32
madd.u %e0, %e14, %d15, 271

# CHECK-INST: madd.u %e0, %e14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x5f,0x0e]
.code32
madd.u %e0, %e14, %d15, 496

# CHECK-INST: madd.u %e0, %e14, %d15, 511
# CHECK: encoding: [0x13,0xff,0x5f,0x0e]
.code32
madd.u %e0, %e14, %d15, 511

# CHECK-INST: madd.u %e6, %e0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x50,0x60]
.code32
madd.u %e6, %e0, %d0, 271

# CHECK-INST: madd.u %e6, %e0, %d0, 496
# CHECK: encoding: [0x13,0x00,0x5f,0x60]
.code32
madd.u %e6, %e0, %d0, 496

# CHECK-INST: madd.u %e6, %e0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x5f,0x60]
.code32
madd.u %e6, %e0, %d0, 511

# CHECK-INST: madd.u %e6, %e0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x50,0x60]
.code32
madd.u %e6, %e0, %d1, 271

# CHECK-INST: madd.u %e6, %e0, %d1, 496
# CHECK: encoding: [0x13,0x01,0x5f,0x60]
.code32
madd.u %e6, %e0, %d1, 496

# CHECK-INST: madd.u %e6, %e0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x5f,0x60]
.code32
madd.u %e6, %e0, %d1, 511

# CHECK-INST: madd.u %e6, %e0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x50,0x60]
.code32
madd.u %e6, %e0, %d14, 271

# CHECK-INST: madd.u %e6, %e0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x5f,0x60]
.code32
madd.u %e6, %e0, %d14, 496

# CHECK-INST: madd.u %e6, %e0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x5f,0x60]
.code32
madd.u %e6, %e0, %d14, 511

# CHECK-INST: madd.u %e6, %e0, %d15, 271
# CHECK: encoding: [0x13,0xff,0x50,0x60]
.code32
madd.u %e6, %e0, %d15, 271

# CHECK-INST: madd.u %e6, %e0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x5f,0x60]
.code32
madd.u %e6, %e0, %d15, 496

# CHECK-INST: madd.u %e6, %e0, %d15, 511
# CHECK: encoding: [0x13,0xff,0x5f,0x60]
.code32
madd.u %e6, %e0, %d15, 511

# CHECK-INST: madd.u %e6, %e6, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x50,0x66]
.code32
madd.u %e6, %e6, %d0, 271

# CHECK-INST: madd.u %e6, %e6, %d0, 496
# CHECK: encoding: [0x13,0x00,0x5f,0x66]
.code32
madd.u %e6, %e6, %d0, 496

# CHECK-INST: madd.u %e6, %e6, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x5f,0x66]
.code32
madd.u %e6, %e6, %d0, 511

# CHECK-INST: madd.u %e6, %e6, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x50,0x66]
.code32
madd.u %e6, %e6, %d1, 271

# CHECK-INST: madd.u %e6, %e6, %d1, 496
# CHECK: encoding: [0x13,0x01,0x5f,0x66]
.code32
madd.u %e6, %e6, %d1, 496

# CHECK-INST: madd.u %e6, %e6, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x5f,0x66]
.code32
madd.u %e6, %e6, %d1, 511

# CHECK-INST: madd.u %e6, %e6, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x50,0x66]
.code32
madd.u %e6, %e6, %d14, 271

# CHECK-INST: madd.u %e6, %e6, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x5f,0x66]
.code32
madd.u %e6, %e6, %d14, 496

# CHECK-INST: madd.u %e6, %e6, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x5f,0x66]
.code32
madd.u %e6, %e6, %d14, 511

# CHECK-INST: madd.u %e6, %e6, %d15, 271
# CHECK: encoding: [0x13,0xff,0x50,0x66]
.code32
madd.u %e6, %e6, %d15, 271

# CHECK-INST: madd.u %e6, %e6, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x5f,0x66]
.code32
madd.u %e6, %e6, %d15, 496

# CHECK-INST: madd.u %e6, %e6, %d15, 511
# CHECK: encoding: [0x13,0xff,0x5f,0x66]
.code32
madd.u %e6, %e6, %d15, 511

# CHECK-INST: madd.u %e6, %e14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x50,0x6e]
.code32
madd.u %e6, %e14, %d0, 271

# CHECK-INST: madd.u %e6, %e14, %d0, 496
# CHECK: encoding: [0x13,0x00,0x5f,0x6e]
.code32
madd.u %e6, %e14, %d0, 496

# CHECK-INST: madd.u %e6, %e14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x5f,0x6e]
.code32
madd.u %e6, %e14, %d0, 511

# CHECK-INST: madd.u %e6, %e14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x50,0x6e]
.code32
madd.u %e6, %e14, %d1, 271

# CHECK-INST: madd.u %e6, %e14, %d1, 496
# CHECK: encoding: [0x13,0x01,0x5f,0x6e]
.code32
madd.u %e6, %e14, %d1, 496

# CHECK-INST: madd.u %e6, %e14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x5f,0x6e]
.code32
madd.u %e6, %e14, %d1, 511

# CHECK-INST: madd.u %e6, %e14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x50,0x6e]
.code32
madd.u %e6, %e14, %d14, 271

# CHECK-INST: madd.u %e6, %e14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x5f,0x6e]
.code32
madd.u %e6, %e14, %d14, 496

# CHECK-INST: madd.u %e6, %e14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x5f,0x6e]
.code32
madd.u %e6, %e14, %d14, 511

# CHECK-INST: madd.u %e6, %e14, %d15, 271
# CHECK: encoding: [0x13,0xff,0x50,0x6e]
.code32
madd.u %e6, %e14, %d15, 271

# CHECK-INST: madd.u %e6, %e14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x5f,0x6e]
.code32
madd.u %e6, %e14, %d15, 496

# CHECK-INST: madd.u %e6, %e14, %d15, 511
# CHECK: encoding: [0x13,0xff,0x5f,0x6e]
.code32
madd.u %e6, %e14, %d15, 511

# CHECK-INST: madd.u %e14, %e0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x50,0xe0]
.code32
madd.u %e14, %e0, %d0, 271

# CHECK-INST: madd.u %e14, %e0, %d0, 496
# CHECK: encoding: [0x13,0x00,0x5f,0xe0]
.code32
madd.u %e14, %e0, %d0, 496

# CHECK-INST: madd.u %e14, %e0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x5f,0xe0]
.code32
madd.u %e14, %e0, %d0, 511

# CHECK-INST: madd.u %e14, %e0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x50,0xe0]
.code32
madd.u %e14, %e0, %d1, 271

# CHECK-INST: madd.u %e14, %e0, %d1, 496
# CHECK: encoding: [0x13,0x01,0x5f,0xe0]
.code32
madd.u %e14, %e0, %d1, 496

# CHECK-INST: madd.u %e14, %e0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x5f,0xe0]
.code32
madd.u %e14, %e0, %d1, 511

# CHECK-INST: madd.u %e14, %e0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x50,0xe0]
.code32
madd.u %e14, %e0, %d14, 271

# CHECK-INST: madd.u %e14, %e0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x5f,0xe0]
.code32
madd.u %e14, %e0, %d14, 496

# CHECK-INST: madd.u %e14, %e0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x5f,0xe0]
.code32
madd.u %e14, %e0, %d14, 511

# CHECK-INST: madd.u %e14, %e0, %d15, 271
# CHECK: encoding: [0x13,0xff,0x50,0xe0]
.code32
madd.u %e14, %e0, %d15, 271

# CHECK-INST: madd.u %e14, %e0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x5f,0xe0]
.code32
madd.u %e14, %e0, %d15, 496

# CHECK-INST: madd.u %e14, %e0, %d15, 511
# CHECK: encoding: [0x13,0xff,0x5f,0xe0]
.code32
madd.u %e14, %e0, %d15, 511

# CHECK-INST: madd.u %e14, %e6, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x50,0xe6]
.code32
madd.u %e14, %e6, %d0, 271

# CHECK-INST: madd.u %e14, %e6, %d0, 496
# CHECK: encoding: [0x13,0x00,0x5f,0xe6]
.code32
madd.u %e14, %e6, %d0, 496

# CHECK-INST: madd.u %e14, %e6, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x5f,0xe6]
.code32
madd.u %e14, %e6, %d0, 511

# CHECK-INST: madd.u %e14, %e6, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x50,0xe6]
.code32
madd.u %e14, %e6, %d1, 271

# CHECK-INST: madd.u %e14, %e6, %d1, 496
# CHECK: encoding: [0x13,0x01,0x5f,0xe6]
.code32
madd.u %e14, %e6, %d1, 496

# CHECK-INST: madd.u %e14, %e6, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x5f,0xe6]
.code32
madd.u %e14, %e6, %d1, 511

# CHECK-INST: madd.u %e14, %e6, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x50,0xe6]
.code32
madd.u %e14, %e6, %d14, 271

# CHECK-INST: madd.u %e14, %e6, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x5f,0xe6]
.code32
madd.u %e14, %e6, %d14, 496

# CHECK-INST: madd.u %e14, %e6, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x5f,0xe6]
.code32
madd.u %e14, %e6, %d14, 511

# CHECK-INST: madd.u %e14, %e6, %d15, 271
# CHECK: encoding: [0x13,0xff,0x50,0xe6]
.code32
madd.u %e14, %e6, %d15, 271

# CHECK-INST: madd.u %e14, %e6, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x5f,0xe6]
.code32
madd.u %e14, %e6, %d15, 496

# CHECK-INST: madd.u %e14, %e6, %d15, 511
# CHECK: encoding: [0x13,0xff,0x5f,0xe6]
.code32
madd.u %e14, %e6, %d15, 511

# CHECK-INST: madd.u %e14, %e14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x50,0xee]
.code32
madd.u %e14, %e14, %d0, 271

# CHECK-INST: madd.u %e14, %e14, %d0, 496
# CHECK: encoding: [0x13,0x00,0x5f,0xee]
.code32
madd.u %e14, %e14, %d0, 496

# CHECK-INST: madd.u %e14, %e14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x5f,0xee]
.code32
madd.u %e14, %e14, %d0, 511

# CHECK-INST: madd.u %e14, %e14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x50,0xee]
.code32
madd.u %e14, %e14, %d1, 271

# CHECK-INST: madd.u %e14, %e14, %d1, 496
# CHECK: encoding: [0x13,0x01,0x5f,0xee]
.code32
madd.u %e14, %e14, %d1, 496

# CHECK-INST: madd.u %e14, %e14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x5f,0xee]
.code32
madd.u %e14, %e14, %d1, 511

# CHECK-INST: madd.u %e14, %e14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x50,0xee]
.code32
madd.u %e14, %e14, %d14, 271

# CHECK-INST: madd.u %e14, %e14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x5f,0xee]
.code32
madd.u %e14, %e14, %d14, 496

# CHECK-INST: madd.u %e14, %e14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x5f,0xee]
.code32
madd.u %e14, %e14, %d14, 511

# CHECK-INST: madd.u %e14, %e14, %d15, 271
# CHECK: encoding: [0x13,0xff,0x50,0xee]
.code32
madd.u %e14, %e14, %d15, 271

# CHECK-INST: madd.u %e14, %e14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x5f,0xee]
.code32
madd.u %e14, %e14, %d15, 496

# CHECK-INST: madd.u %e14, %e14, %d15, 511
# CHECK: encoding: [0x13,0xff,0x5f,0xee]
.code32
madd.u %e14, %e14, %d15, 511

# CHECK-INST: madds %d0, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0x00]
.code32
madds %d0, %d0, %d0, %d0

# CHECK-INST: madds %d0, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0x00]
.code32
madds %d0, %d0, %d0, %d1

# CHECK-INST: madds %d0, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0x00]
.code32
madds %d0, %d0, %d0, %d14

# CHECK-INST: madds %d0, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0x00]
.code32
madds %d0, %d0, %d0, %d15

# CHECK-INST: madds %d0, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0x00]
.code32
madds %d0, %d0, %d1, %d0

# CHECK-INST: madds %d0, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0x00]
.code32
madds %d0, %d0, %d1, %d1

# CHECK-INST: madds %d0, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0x00]
.code32
madds %d0, %d0, %d1, %d14

# CHECK-INST: madds %d0, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0x00]
.code32
madds %d0, %d0, %d1, %d15

# CHECK-INST: madds %d0, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0x00]
.code32
madds %d0, %d0, %d14, %d0

# CHECK-INST: madds %d0, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0x00]
.code32
madds %d0, %d0, %d14, %d1

# CHECK-INST: madds %d0, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0x00]
.code32
madds %d0, %d0, %d14, %d14

# CHECK-INST: madds %d0, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0x00]
.code32
madds %d0, %d0, %d14, %d15

# CHECK-INST: madds %d0, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0x00]
.code32
madds %d0, %d0, %d15, %d0

# CHECK-INST: madds %d0, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0x00]
.code32
madds %d0, %d0, %d15, %d1

# CHECK-INST: madds %d0, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0x00]
.code32
madds %d0, %d0, %d15, %d14

# CHECK-INST: madds %d0, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0x00]
.code32
madds %d0, %d0, %d15, %d15

# CHECK-INST: madds %d0, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0x01]
.code32
madds %d0, %d1, %d0, %d0

# CHECK-INST: madds %d0, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0x01]
.code32
madds %d0, %d1, %d0, %d1

# CHECK-INST: madds %d0, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0x01]
.code32
madds %d0, %d1, %d0, %d14

# CHECK-INST: madds %d0, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0x01]
.code32
madds %d0, %d1, %d0, %d15

# CHECK-INST: madds %d0, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0x01]
.code32
madds %d0, %d1, %d1, %d0

# CHECK-INST: madds %d0, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0x01]
.code32
madds %d0, %d1, %d1, %d1

# CHECK-INST: madds %d0, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0x01]
.code32
madds %d0, %d1, %d1, %d14

# CHECK-INST: madds %d0, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0x01]
.code32
madds %d0, %d1, %d1, %d15

# CHECK-INST: madds %d0, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0x01]
.code32
madds %d0, %d1, %d14, %d0

# CHECK-INST: madds %d0, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0x01]
.code32
madds %d0, %d1, %d14, %d1

# CHECK-INST: madds %d0, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0x01]
.code32
madds %d0, %d1, %d14, %d14

# CHECK-INST: madds %d0, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0x01]
.code32
madds %d0, %d1, %d14, %d15

# CHECK-INST: madds %d0, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0x01]
.code32
madds %d0, %d1, %d15, %d0

# CHECK-INST: madds %d0, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0x01]
.code32
madds %d0, %d1, %d15, %d1

# CHECK-INST: madds %d0, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0x01]
.code32
madds %d0, %d1, %d15, %d14

# CHECK-INST: madds %d0, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0x01]
.code32
madds %d0, %d1, %d15, %d15

# CHECK-INST: madds %d0, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0x0e]
.code32
madds %d0, %d14, %d0, %d0

# CHECK-INST: madds %d0, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0x0e]
.code32
madds %d0, %d14, %d0, %d1

# CHECK-INST: madds %d0, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0x0e]
.code32
madds %d0, %d14, %d0, %d14

# CHECK-INST: madds %d0, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0x0e]
.code32
madds %d0, %d14, %d0, %d15

# CHECK-INST: madds %d0, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0x0e]
.code32
madds %d0, %d14, %d1, %d0

# CHECK-INST: madds %d0, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0x0e]
.code32
madds %d0, %d14, %d1, %d1

# CHECK-INST: madds %d0, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0x0e]
.code32
madds %d0, %d14, %d1, %d14

# CHECK-INST: madds %d0, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0x0e]
.code32
madds %d0, %d14, %d1, %d15

# CHECK-INST: madds %d0, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0x0e]
.code32
madds %d0, %d14, %d14, %d0

# CHECK-INST: madds %d0, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0x0e]
.code32
madds %d0, %d14, %d14, %d1

# CHECK-INST: madds %d0, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0x0e]
.code32
madds %d0, %d14, %d14, %d14

# CHECK-INST: madds %d0, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0x0e]
.code32
madds %d0, %d14, %d14, %d15

# CHECK-INST: madds %d0, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0x0e]
.code32
madds %d0, %d14, %d15, %d0

# CHECK-INST: madds %d0, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0x0e]
.code32
madds %d0, %d14, %d15, %d1

# CHECK-INST: madds %d0, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0x0e]
.code32
madds %d0, %d14, %d15, %d14

# CHECK-INST: madds %d0, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0x0e]
.code32
madds %d0, %d14, %d15, %d15

# CHECK-INST: madds %d0, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0x0f]
.code32
madds %d0, %d15, %d0, %d0

# CHECK-INST: madds %d0, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0x0f]
.code32
madds %d0, %d15, %d0, %d1

# CHECK-INST: madds %d0, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0x0f]
.code32
madds %d0, %d15, %d0, %d14

# CHECK-INST: madds %d0, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0x0f]
.code32
madds %d0, %d15, %d0, %d15

# CHECK-INST: madds %d0, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0x0f]
.code32
madds %d0, %d15, %d1, %d0

# CHECK-INST: madds %d0, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0x0f]
.code32
madds %d0, %d15, %d1, %d1

# CHECK-INST: madds %d0, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0x0f]
.code32
madds %d0, %d15, %d1, %d14

# CHECK-INST: madds %d0, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0x0f]
.code32
madds %d0, %d15, %d1, %d15

# CHECK-INST: madds %d0, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0x0f]
.code32
madds %d0, %d15, %d14, %d0

# CHECK-INST: madds %d0, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0x0f]
.code32
madds %d0, %d15, %d14, %d1

# CHECK-INST: madds %d0, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0x0f]
.code32
madds %d0, %d15, %d14, %d14

# CHECK-INST: madds %d0, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0x0f]
.code32
madds %d0, %d15, %d14, %d15

# CHECK-INST: madds %d0, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0x0f]
.code32
madds %d0, %d15, %d15, %d0

# CHECK-INST: madds %d0, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0x0f]
.code32
madds %d0, %d15, %d15, %d1

# CHECK-INST: madds %d0, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0x0f]
.code32
madds %d0, %d15, %d15, %d14

# CHECK-INST: madds %d0, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0x0f]
.code32
madds %d0, %d15, %d15, %d15

# CHECK-INST: madds %d1, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0x10]
.code32
madds %d1, %d0, %d0, %d0

# CHECK-INST: madds %d1, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0x10]
.code32
madds %d1, %d0, %d0, %d1

# CHECK-INST: madds %d1, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0x10]
.code32
madds %d1, %d0, %d0, %d14

# CHECK-INST: madds %d1, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0x10]
.code32
madds %d1, %d0, %d0, %d15

# CHECK-INST: madds %d1, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0x10]
.code32
madds %d1, %d0, %d1, %d0

# CHECK-INST: madds %d1, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0x10]
.code32
madds %d1, %d0, %d1, %d1

# CHECK-INST: madds %d1, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0x10]
.code32
madds %d1, %d0, %d1, %d14

# CHECK-INST: madds %d1, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0x10]
.code32
madds %d1, %d0, %d1, %d15

# CHECK-INST: madds %d1, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0x10]
.code32
madds %d1, %d0, %d14, %d0

# CHECK-INST: madds %d1, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0x10]
.code32
madds %d1, %d0, %d14, %d1

# CHECK-INST: madds %d1, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0x10]
.code32
madds %d1, %d0, %d14, %d14

# CHECK-INST: madds %d1, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0x10]
.code32
madds %d1, %d0, %d14, %d15

# CHECK-INST: madds %d1, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0x10]
.code32
madds %d1, %d0, %d15, %d0

# CHECK-INST: madds %d1, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0x10]
.code32
madds %d1, %d0, %d15, %d1

# CHECK-INST: madds %d1, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0x10]
.code32
madds %d1, %d0, %d15, %d14

# CHECK-INST: madds %d1, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0x10]
.code32
madds %d1, %d0, %d15, %d15

# CHECK-INST: madds %d1, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0x11]
.code32
madds %d1, %d1, %d0, %d0

# CHECK-INST: madds %d1, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0x11]
.code32
madds %d1, %d1, %d0, %d1

# CHECK-INST: madds %d1, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0x11]
.code32
madds %d1, %d1, %d0, %d14

# CHECK-INST: madds %d1, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0x11]
.code32
madds %d1, %d1, %d0, %d15

# CHECK-INST: madds %d1, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0x11]
.code32
madds %d1, %d1, %d1, %d0

# CHECK-INST: madds %d1, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0x11]
.code32
madds %d1, %d1, %d1, %d1

# CHECK-INST: madds %d1, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0x11]
.code32
madds %d1, %d1, %d1, %d14

# CHECK-INST: madds %d1, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0x11]
.code32
madds %d1, %d1, %d1, %d15

# CHECK-INST: madds %d1, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0x11]
.code32
madds %d1, %d1, %d14, %d0

# CHECK-INST: madds %d1, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0x11]
.code32
madds %d1, %d1, %d14, %d1

# CHECK-INST: madds %d1, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0x11]
.code32
madds %d1, %d1, %d14, %d14

# CHECK-INST: madds %d1, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0x11]
.code32
madds %d1, %d1, %d14, %d15

# CHECK-INST: madds %d1, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0x11]
.code32
madds %d1, %d1, %d15, %d0

# CHECK-INST: madds %d1, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0x11]
.code32
madds %d1, %d1, %d15, %d1

# CHECK-INST: madds %d1, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0x11]
.code32
madds %d1, %d1, %d15, %d14

# CHECK-INST: madds %d1, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0x11]
.code32
madds %d1, %d1, %d15, %d15

# CHECK-INST: madds %d1, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0x1e]
.code32
madds %d1, %d14, %d0, %d0

# CHECK-INST: madds %d1, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0x1e]
.code32
madds %d1, %d14, %d0, %d1

# CHECK-INST: madds %d1, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0x1e]
.code32
madds %d1, %d14, %d0, %d14

# CHECK-INST: madds %d1, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0x1e]
.code32
madds %d1, %d14, %d0, %d15

# CHECK-INST: madds %d1, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0x1e]
.code32
madds %d1, %d14, %d1, %d0

# CHECK-INST: madds %d1, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0x1e]
.code32
madds %d1, %d14, %d1, %d1

# CHECK-INST: madds %d1, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0x1e]
.code32
madds %d1, %d14, %d1, %d14

# CHECK-INST: madds %d1, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0x1e]
.code32
madds %d1, %d14, %d1, %d15

# CHECK-INST: madds %d1, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0x1e]
.code32
madds %d1, %d14, %d14, %d0

# CHECK-INST: madds %d1, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0x1e]
.code32
madds %d1, %d14, %d14, %d1

# CHECK-INST: madds %d1, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0x1e]
.code32
madds %d1, %d14, %d14, %d14

# CHECK-INST: madds %d1, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0x1e]
.code32
madds %d1, %d14, %d14, %d15

# CHECK-INST: madds %d1, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0x1e]
.code32
madds %d1, %d14, %d15, %d0

# CHECK-INST: madds %d1, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0x1e]
.code32
madds %d1, %d14, %d15, %d1

# CHECK-INST: madds %d1, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0x1e]
.code32
madds %d1, %d14, %d15, %d14

# CHECK-INST: madds %d1, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0x1e]
.code32
madds %d1, %d14, %d15, %d15

# CHECK-INST: madds %d1, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0x1f]
.code32
madds %d1, %d15, %d0, %d0

# CHECK-INST: madds %d1, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0x1f]
.code32
madds %d1, %d15, %d0, %d1

# CHECK-INST: madds %d1, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0x1f]
.code32
madds %d1, %d15, %d0, %d14

# CHECK-INST: madds %d1, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0x1f]
.code32
madds %d1, %d15, %d0, %d15

# CHECK-INST: madds %d1, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0x1f]
.code32
madds %d1, %d15, %d1, %d0

# CHECK-INST: madds %d1, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0x1f]
.code32
madds %d1, %d15, %d1, %d1

# CHECK-INST: madds %d1, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0x1f]
.code32
madds %d1, %d15, %d1, %d14

# CHECK-INST: madds %d1, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0x1f]
.code32
madds %d1, %d15, %d1, %d15

# CHECK-INST: madds %d1, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0x1f]
.code32
madds %d1, %d15, %d14, %d0

# CHECK-INST: madds %d1, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0x1f]
.code32
madds %d1, %d15, %d14, %d1

# CHECK-INST: madds %d1, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0x1f]
.code32
madds %d1, %d15, %d14, %d14

# CHECK-INST: madds %d1, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0x1f]
.code32
madds %d1, %d15, %d14, %d15

# CHECK-INST: madds %d1, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0x1f]
.code32
madds %d1, %d15, %d15, %d0

# CHECK-INST: madds %d1, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0x1f]
.code32
madds %d1, %d15, %d15, %d1

# CHECK-INST: madds %d1, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0x1f]
.code32
madds %d1, %d15, %d15, %d14

# CHECK-INST: madds %d1, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0x1f]
.code32
madds %d1, %d15, %d15, %d15

# CHECK-INST: madds %d14, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0xe0]
.code32
madds %d14, %d0, %d0, %d0

# CHECK-INST: madds %d14, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0xe0]
.code32
madds %d14, %d0, %d0, %d1

# CHECK-INST: madds %d14, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0xe0]
.code32
madds %d14, %d0, %d0, %d14

# CHECK-INST: madds %d14, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0xe0]
.code32
madds %d14, %d0, %d0, %d15

# CHECK-INST: madds %d14, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0xe0]
.code32
madds %d14, %d0, %d1, %d0

# CHECK-INST: madds %d14, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0xe0]
.code32
madds %d14, %d0, %d1, %d1

# CHECK-INST: madds %d14, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0xe0]
.code32
madds %d14, %d0, %d1, %d14

# CHECK-INST: madds %d14, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0xe0]
.code32
madds %d14, %d0, %d1, %d15

# CHECK-INST: madds %d14, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0xe0]
.code32
madds %d14, %d0, %d14, %d0

# CHECK-INST: madds %d14, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0xe0]
.code32
madds %d14, %d0, %d14, %d1

# CHECK-INST: madds %d14, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0xe0]
.code32
madds %d14, %d0, %d14, %d14

# CHECK-INST: madds %d14, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0xe0]
.code32
madds %d14, %d0, %d14, %d15

# CHECK-INST: madds %d14, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0xe0]
.code32
madds %d14, %d0, %d15, %d0

# CHECK-INST: madds %d14, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0xe0]
.code32
madds %d14, %d0, %d15, %d1

# CHECK-INST: madds %d14, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0xe0]
.code32
madds %d14, %d0, %d15, %d14

# CHECK-INST: madds %d14, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0xe0]
.code32
madds %d14, %d0, %d15, %d15

# CHECK-INST: madds %d14, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0xe1]
.code32
madds %d14, %d1, %d0, %d0

# CHECK-INST: madds %d14, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0xe1]
.code32
madds %d14, %d1, %d0, %d1

# CHECK-INST: madds %d14, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0xe1]
.code32
madds %d14, %d1, %d0, %d14

# CHECK-INST: madds %d14, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0xe1]
.code32
madds %d14, %d1, %d0, %d15

# CHECK-INST: madds %d14, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0xe1]
.code32
madds %d14, %d1, %d1, %d0

# CHECK-INST: madds %d14, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0xe1]
.code32
madds %d14, %d1, %d1, %d1

# CHECK-INST: madds %d14, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0xe1]
.code32
madds %d14, %d1, %d1, %d14

# CHECK-INST: madds %d14, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0xe1]
.code32
madds %d14, %d1, %d1, %d15

# CHECK-INST: madds %d14, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0xe1]
.code32
madds %d14, %d1, %d14, %d0

# CHECK-INST: madds %d14, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0xe1]
.code32
madds %d14, %d1, %d14, %d1

# CHECK-INST: madds %d14, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0xe1]
.code32
madds %d14, %d1, %d14, %d14

# CHECK-INST: madds %d14, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0xe1]
.code32
madds %d14, %d1, %d14, %d15

# CHECK-INST: madds %d14, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0xe1]
.code32
madds %d14, %d1, %d15, %d0

# CHECK-INST: madds %d14, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0xe1]
.code32
madds %d14, %d1, %d15, %d1

# CHECK-INST: madds %d14, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0xe1]
.code32
madds %d14, %d1, %d15, %d14

# CHECK-INST: madds %d14, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0xe1]
.code32
madds %d14, %d1, %d15, %d15

# CHECK-INST: madds %d14, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0xee]
.code32
madds %d14, %d14, %d0, %d0

# CHECK-INST: madds %d14, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0xee]
.code32
madds %d14, %d14, %d0, %d1

# CHECK-INST: madds %d14, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0xee]
.code32
madds %d14, %d14, %d0, %d14

# CHECK-INST: madds %d14, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0xee]
.code32
madds %d14, %d14, %d0, %d15

# CHECK-INST: madds %d14, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0xee]
.code32
madds %d14, %d14, %d1, %d0

# CHECK-INST: madds %d14, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0xee]
.code32
madds %d14, %d14, %d1, %d1

# CHECK-INST: madds %d14, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0xee]
.code32
madds %d14, %d14, %d1, %d14

# CHECK-INST: madds %d14, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0xee]
.code32
madds %d14, %d14, %d1, %d15

# CHECK-INST: madds %d14, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0xee]
.code32
madds %d14, %d14, %d14, %d0

# CHECK-INST: madds %d14, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0xee]
.code32
madds %d14, %d14, %d14, %d1

# CHECK-INST: madds %d14, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0xee]
.code32
madds %d14, %d14, %d14, %d14

# CHECK-INST: madds %d14, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0xee]
.code32
madds %d14, %d14, %d14, %d15

# CHECK-INST: madds %d14, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0xee]
.code32
madds %d14, %d14, %d15, %d0

# CHECK-INST: madds %d14, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0xee]
.code32
madds %d14, %d14, %d15, %d1

# CHECK-INST: madds %d14, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0xee]
.code32
madds %d14, %d14, %d15, %d14

# CHECK-INST: madds %d14, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0xee]
.code32
madds %d14, %d14, %d15, %d15

# CHECK-INST: madds %d14, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0xef]
.code32
madds %d14, %d15, %d0, %d0

# CHECK-INST: madds %d14, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0xef]
.code32
madds %d14, %d15, %d0, %d1

# CHECK-INST: madds %d14, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0xef]
.code32
madds %d14, %d15, %d0, %d14

# CHECK-INST: madds %d14, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0xef]
.code32
madds %d14, %d15, %d0, %d15

# CHECK-INST: madds %d14, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0xef]
.code32
madds %d14, %d15, %d1, %d0

# CHECK-INST: madds %d14, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0xef]
.code32
madds %d14, %d15, %d1, %d1

# CHECK-INST: madds %d14, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0xef]
.code32
madds %d14, %d15, %d1, %d14

# CHECK-INST: madds %d14, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0xef]
.code32
madds %d14, %d15, %d1, %d15

# CHECK-INST: madds %d14, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0xef]
.code32
madds %d14, %d15, %d14, %d0

# CHECK-INST: madds %d14, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0xef]
.code32
madds %d14, %d15, %d14, %d1

# CHECK-INST: madds %d14, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0xef]
.code32
madds %d14, %d15, %d14, %d14

# CHECK-INST: madds %d14, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0xef]
.code32
madds %d14, %d15, %d14, %d15

# CHECK-INST: madds %d14, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0xef]
.code32
madds %d14, %d15, %d15, %d0

# CHECK-INST: madds %d14, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0xef]
.code32
madds %d14, %d15, %d15, %d1

# CHECK-INST: madds %d14, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0xef]
.code32
madds %d14, %d15, %d15, %d14

# CHECK-INST: madds %d14, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0xef]
.code32
madds %d14, %d15, %d15, %d15

# CHECK-INST: madds %d15, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0xf0]
.code32
madds %d15, %d0, %d0, %d0

# CHECK-INST: madds %d15, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0xf0]
.code32
madds %d15, %d0, %d0, %d1

# CHECK-INST: madds %d15, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0xf0]
.code32
madds %d15, %d0, %d0, %d14

# CHECK-INST: madds %d15, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0xf0]
.code32
madds %d15, %d0, %d0, %d15

# CHECK-INST: madds %d15, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0xf0]
.code32
madds %d15, %d0, %d1, %d0

# CHECK-INST: madds %d15, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0xf0]
.code32
madds %d15, %d0, %d1, %d1

# CHECK-INST: madds %d15, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0xf0]
.code32
madds %d15, %d0, %d1, %d14

# CHECK-INST: madds %d15, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0xf0]
.code32
madds %d15, %d0, %d1, %d15

# CHECK-INST: madds %d15, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0xf0]
.code32
madds %d15, %d0, %d14, %d0

# CHECK-INST: madds %d15, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0xf0]
.code32
madds %d15, %d0, %d14, %d1

# CHECK-INST: madds %d15, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0xf0]
.code32
madds %d15, %d0, %d14, %d14

# CHECK-INST: madds %d15, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0xf0]
.code32
madds %d15, %d0, %d14, %d15

# CHECK-INST: madds %d15, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0xf0]
.code32
madds %d15, %d0, %d15, %d0

# CHECK-INST: madds %d15, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0xf0]
.code32
madds %d15, %d0, %d15, %d1

# CHECK-INST: madds %d15, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0xf0]
.code32
madds %d15, %d0, %d15, %d14

# CHECK-INST: madds %d15, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0xf0]
.code32
madds %d15, %d0, %d15, %d15

# CHECK-INST: madds %d15, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0xf1]
.code32
madds %d15, %d1, %d0, %d0

# CHECK-INST: madds %d15, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0xf1]
.code32
madds %d15, %d1, %d0, %d1

# CHECK-INST: madds %d15, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0xf1]
.code32
madds %d15, %d1, %d0, %d14

# CHECK-INST: madds %d15, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0xf1]
.code32
madds %d15, %d1, %d0, %d15

# CHECK-INST: madds %d15, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0xf1]
.code32
madds %d15, %d1, %d1, %d0

# CHECK-INST: madds %d15, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0xf1]
.code32
madds %d15, %d1, %d1, %d1

# CHECK-INST: madds %d15, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0xf1]
.code32
madds %d15, %d1, %d1, %d14

# CHECK-INST: madds %d15, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0xf1]
.code32
madds %d15, %d1, %d1, %d15

# CHECK-INST: madds %d15, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0xf1]
.code32
madds %d15, %d1, %d14, %d0

# CHECK-INST: madds %d15, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0xf1]
.code32
madds %d15, %d1, %d14, %d1

# CHECK-INST: madds %d15, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0xf1]
.code32
madds %d15, %d1, %d14, %d14

# CHECK-INST: madds %d15, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0xf1]
.code32
madds %d15, %d1, %d14, %d15

# CHECK-INST: madds %d15, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0xf1]
.code32
madds %d15, %d1, %d15, %d0

# CHECK-INST: madds %d15, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0xf1]
.code32
madds %d15, %d1, %d15, %d1

# CHECK-INST: madds %d15, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0xf1]
.code32
madds %d15, %d1, %d15, %d14

# CHECK-INST: madds %d15, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0xf1]
.code32
madds %d15, %d1, %d15, %d15

# CHECK-INST: madds %d15, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0xfe]
.code32
madds %d15, %d14, %d0, %d0

# CHECK-INST: madds %d15, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0xfe]
.code32
madds %d15, %d14, %d0, %d1

# CHECK-INST: madds %d15, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0xfe]
.code32
madds %d15, %d14, %d0, %d14

# CHECK-INST: madds %d15, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0xfe]
.code32
madds %d15, %d14, %d0, %d15

# CHECK-INST: madds %d15, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0xfe]
.code32
madds %d15, %d14, %d1, %d0

# CHECK-INST: madds %d15, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0xfe]
.code32
madds %d15, %d14, %d1, %d1

# CHECK-INST: madds %d15, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0xfe]
.code32
madds %d15, %d14, %d1, %d14

# CHECK-INST: madds %d15, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0xfe]
.code32
madds %d15, %d14, %d1, %d15

# CHECK-INST: madds %d15, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0xfe]
.code32
madds %d15, %d14, %d14, %d0

# CHECK-INST: madds %d15, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0xfe]
.code32
madds %d15, %d14, %d14, %d1

# CHECK-INST: madds %d15, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0xfe]
.code32
madds %d15, %d14, %d14, %d14

# CHECK-INST: madds %d15, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0xfe]
.code32
madds %d15, %d14, %d14, %d15

# CHECK-INST: madds %d15, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0xfe]
.code32
madds %d15, %d14, %d15, %d0

# CHECK-INST: madds %d15, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0xfe]
.code32
madds %d15, %d14, %d15, %d1

# CHECK-INST: madds %d15, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0xfe]
.code32
madds %d15, %d14, %d15, %d14

# CHECK-INST: madds %d15, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0xfe]
.code32
madds %d15, %d14, %d15, %d15

# CHECK-INST: madds %d15, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0xff]
.code32
madds %d15, %d15, %d0, %d0

# CHECK-INST: madds %d15, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0xff]
.code32
madds %d15, %d15, %d0, %d1

# CHECK-INST: madds %d15, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0xff]
.code32
madds %d15, %d15, %d0, %d14

# CHECK-INST: madds %d15, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0xff]
.code32
madds %d15, %d15, %d0, %d15

# CHECK-INST: madds %d15, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0xff]
.code32
madds %d15, %d15, %d1, %d0

# CHECK-INST: madds %d15, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0xff]
.code32
madds %d15, %d15, %d1, %d1

# CHECK-INST: madds %d15, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0xff]
.code32
madds %d15, %d15, %d1, %d14

# CHECK-INST: madds %d15, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0xff]
.code32
madds %d15, %d15, %d1, %d15

# CHECK-INST: madds %d15, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0xff]
.code32
madds %d15, %d15, %d14, %d0

# CHECK-INST: madds %d15, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0xff]
.code32
madds %d15, %d15, %d14, %d1

# CHECK-INST: madds %d15, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0xff]
.code32
madds %d15, %d15, %d14, %d14

# CHECK-INST: madds %d15, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0xff]
.code32
madds %d15, %d15, %d14, %d15

# CHECK-INST: madds %d15, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0xff]
.code32
madds %d15, %d15, %d15, %d0

# CHECK-INST: madds %d15, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0xff]
.code32
madds %d15, %d15, %d15, %d1

# CHECK-INST: madds %d15, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0xff]
.code32
madds %d15, %d15, %d15, %d14

# CHECK-INST: madds %d15, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0xff]
.code32
madds %d15, %d15, %d15, %d15

# CHECK-INST: madds %d0, %d0, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0x00]
.code32
madds %d0, %d0, %d0, -256

# CHECK-INST: madds %d0, %d0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0x00]
.code32
madds %d0, %d0, %d0, -129

# CHECK-INST: madds %d0, %d0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0x00]
.code32
madds %d0, %d0, %d0, -1

# CHECK-INST: madds %d0, %d0, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0x00]
.code32
madds %d0, %d0, %d0, 0

# CHECK-INST: madds %d0, %d0, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0x00]
.code32
madds %d0, %d0, %d0, 1

# CHECK-INST: madds %d0, %d0, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0x00]
.code32
madds %d0, %d0, %d0, 128

# CHECK-INST: madds %d0, %d0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0x00]
.code32
madds %d0, %d0, %d0, 255

# CHECK-INST: madds %d0, %d0, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0x00]
.code32
madds %d0, %d0, %d1, -256

# CHECK-INST: madds %d0, %d0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0x00]
.code32
madds %d0, %d0, %d1, -129

# CHECK-INST: madds %d0, %d0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0x00]
.code32
madds %d0, %d0, %d1, -1

# CHECK-INST: madds %d0, %d0, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0x00]
.code32
madds %d0, %d0, %d1, 0

# CHECK-INST: madds %d0, %d0, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0x00]
.code32
madds %d0, %d0, %d1, 1

# CHECK-INST: madds %d0, %d0, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0x00]
.code32
madds %d0, %d0, %d1, 128

# CHECK-INST: madds %d0, %d0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0x00]
.code32
madds %d0, %d0, %d1, 255

# CHECK-INST: madds %d0, %d0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0x00]
.code32
madds %d0, %d0, %d14, -256

# CHECK-INST: madds %d0, %d0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0x00]
.code32
madds %d0, %d0, %d14, -129

# CHECK-INST: madds %d0, %d0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0x00]
.code32
madds %d0, %d0, %d14, -1

# CHECK-INST: madds %d0, %d0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0x00]
.code32
madds %d0, %d0, %d14, 0

# CHECK-INST: madds %d0, %d0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0x00]
.code32
madds %d0, %d0, %d14, 1

# CHECK-INST: madds %d0, %d0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0x00]
.code32
madds %d0, %d0, %d14, 128

# CHECK-INST: madds %d0, %d0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0x00]
.code32
madds %d0, %d0, %d14, 255

# CHECK-INST: madds %d0, %d0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0x00]
.code32
madds %d0, %d0, %d15, -256

# CHECK-INST: madds %d0, %d0, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0x00]
.code32
madds %d0, %d0, %d15, -129

# CHECK-INST: madds %d0, %d0, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0x00]
.code32
madds %d0, %d0, %d15, -1

# CHECK-INST: madds %d0, %d0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0x00]
.code32
madds %d0, %d0, %d15, 0

# CHECK-INST: madds %d0, %d0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0x00]
.code32
madds %d0, %d0, %d15, 1

# CHECK-INST: madds %d0, %d0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0x00]
.code32
madds %d0, %d0, %d15, 128

# CHECK-INST: madds %d0, %d0, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0x00]
.code32
madds %d0, %d0, %d15, 255

# CHECK-INST: madds %d0, %d1, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0x01]
.code32
madds %d0, %d1, %d0, -256

# CHECK-INST: madds %d0, %d1, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0x01]
.code32
madds %d0, %d1, %d0, -129

# CHECK-INST: madds %d0, %d1, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0x01]
.code32
madds %d0, %d1, %d0, -1

# CHECK-INST: madds %d0, %d1, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0x01]
.code32
madds %d0, %d1, %d0, 0

# CHECK-INST: madds %d0, %d1, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0x01]
.code32
madds %d0, %d1, %d0, 1

# CHECK-INST: madds %d0, %d1, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0x01]
.code32
madds %d0, %d1, %d0, 128

# CHECK-INST: madds %d0, %d1, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0x01]
.code32
madds %d0, %d1, %d0, 255

# CHECK-INST: madds %d0, %d1, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0x01]
.code32
madds %d0, %d1, %d1, -256

# CHECK-INST: madds %d0, %d1, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0x01]
.code32
madds %d0, %d1, %d1, -129

# CHECK-INST: madds %d0, %d1, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0x01]
.code32
madds %d0, %d1, %d1, -1

# CHECK-INST: madds %d0, %d1, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0x01]
.code32
madds %d0, %d1, %d1, 0

# CHECK-INST: madds %d0, %d1, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0x01]
.code32
madds %d0, %d1, %d1, 1

# CHECK-INST: madds %d0, %d1, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0x01]
.code32
madds %d0, %d1, %d1, 128

# CHECK-INST: madds %d0, %d1, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0x01]
.code32
madds %d0, %d1, %d1, 255

# CHECK-INST: madds %d0, %d1, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0x01]
.code32
madds %d0, %d1, %d14, -256

# CHECK-INST: madds %d0, %d1, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0x01]
.code32
madds %d0, %d1, %d14, -129

# CHECK-INST: madds %d0, %d1, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0x01]
.code32
madds %d0, %d1, %d14, -1

# CHECK-INST: madds %d0, %d1, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0x01]
.code32
madds %d0, %d1, %d14, 0

# CHECK-INST: madds %d0, %d1, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0x01]
.code32
madds %d0, %d1, %d14, 1

# CHECK-INST: madds %d0, %d1, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0x01]
.code32
madds %d0, %d1, %d14, 128

# CHECK-INST: madds %d0, %d1, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0x01]
.code32
madds %d0, %d1, %d14, 255

# CHECK-INST: madds %d0, %d1, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0x01]
.code32
madds %d0, %d1, %d15, -256

# CHECK-INST: madds %d0, %d1, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0x01]
.code32
madds %d0, %d1, %d15, -129

# CHECK-INST: madds %d0, %d1, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0x01]
.code32
madds %d0, %d1, %d15, -1

# CHECK-INST: madds %d0, %d1, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0x01]
.code32
madds %d0, %d1, %d15, 0

# CHECK-INST: madds %d0, %d1, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0x01]
.code32
madds %d0, %d1, %d15, 1

# CHECK-INST: madds %d0, %d1, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0x01]
.code32
madds %d0, %d1, %d15, 128

# CHECK-INST: madds %d0, %d1, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0x01]
.code32
madds %d0, %d1, %d15, 255

# CHECK-INST: madds %d0, %d14, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0x0e]
.code32
madds %d0, %d14, %d0, -256

# CHECK-INST: madds %d0, %d14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0x0e]
.code32
madds %d0, %d14, %d0, -129

# CHECK-INST: madds %d0, %d14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0x0e]
.code32
madds %d0, %d14, %d0, -1

# CHECK-INST: madds %d0, %d14, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0x0e]
.code32
madds %d0, %d14, %d0, 0

# CHECK-INST: madds %d0, %d14, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0x0e]
.code32
madds %d0, %d14, %d0, 1

# CHECK-INST: madds %d0, %d14, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0x0e]
.code32
madds %d0, %d14, %d0, 128

# CHECK-INST: madds %d0, %d14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0x0e]
.code32
madds %d0, %d14, %d0, 255

# CHECK-INST: madds %d0, %d14, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0x0e]
.code32
madds %d0, %d14, %d1, -256

# CHECK-INST: madds %d0, %d14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0x0e]
.code32
madds %d0, %d14, %d1, -129

# CHECK-INST: madds %d0, %d14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0x0e]
.code32
madds %d0, %d14, %d1, -1

# CHECK-INST: madds %d0, %d14, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0x0e]
.code32
madds %d0, %d14, %d1, 0

# CHECK-INST: madds %d0, %d14, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0x0e]
.code32
madds %d0, %d14, %d1, 1

# CHECK-INST: madds %d0, %d14, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0x0e]
.code32
madds %d0, %d14, %d1, 128

# CHECK-INST: madds %d0, %d14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0x0e]
.code32
madds %d0, %d14, %d1, 255

# CHECK-INST: madds %d0, %d14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0x0e]
.code32
madds %d0, %d14, %d14, -256

# CHECK-INST: madds %d0, %d14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0x0e]
.code32
madds %d0, %d14, %d14, -129

# CHECK-INST: madds %d0, %d14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0x0e]
.code32
madds %d0, %d14, %d14, -1

# CHECK-INST: madds %d0, %d14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0x0e]
.code32
madds %d0, %d14, %d14, 0

# CHECK-INST: madds %d0, %d14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0x0e]
.code32
madds %d0, %d14, %d14, 1

# CHECK-INST: madds %d0, %d14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0x0e]
.code32
madds %d0, %d14, %d14, 128

# CHECK-INST: madds %d0, %d14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0x0e]
.code32
madds %d0, %d14, %d14, 255

# CHECK-INST: madds %d0, %d14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0x0e]
.code32
madds %d0, %d14, %d15, -256

# CHECK-INST: madds %d0, %d14, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0x0e]
.code32
madds %d0, %d14, %d15, -129

# CHECK-INST: madds %d0, %d14, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0x0e]
.code32
madds %d0, %d14, %d15, -1

# CHECK-INST: madds %d0, %d14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0x0e]
.code32
madds %d0, %d14, %d15, 0

# CHECK-INST: madds %d0, %d14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0x0e]
.code32
madds %d0, %d14, %d15, 1

# CHECK-INST: madds %d0, %d14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0x0e]
.code32
madds %d0, %d14, %d15, 128

# CHECK-INST: madds %d0, %d14, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0x0e]
.code32
madds %d0, %d14, %d15, 255

# CHECK-INST: madds %d0, %d15, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0x0f]
.code32
madds %d0, %d15, %d0, -256

# CHECK-INST: madds %d0, %d15, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0x0f]
.code32
madds %d0, %d15, %d0, -129

# CHECK-INST: madds %d0, %d15, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0x0f]
.code32
madds %d0, %d15, %d0, -1

# CHECK-INST: madds %d0, %d15, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0x0f]
.code32
madds %d0, %d15, %d0, 0

# CHECK-INST: madds %d0, %d15, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0x0f]
.code32
madds %d0, %d15, %d0, 1

# CHECK-INST: madds %d0, %d15, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0x0f]
.code32
madds %d0, %d15, %d0, 128

# CHECK-INST: madds %d0, %d15, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0x0f]
.code32
madds %d0, %d15, %d0, 255

# CHECK-INST: madds %d0, %d15, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0x0f]
.code32
madds %d0, %d15, %d1, -256

# CHECK-INST: madds %d0, %d15, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0x0f]
.code32
madds %d0, %d15, %d1, -129

# CHECK-INST: madds %d0, %d15, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0x0f]
.code32
madds %d0, %d15, %d1, -1

# CHECK-INST: madds %d0, %d15, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0x0f]
.code32
madds %d0, %d15, %d1, 0

# CHECK-INST: madds %d0, %d15, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0x0f]
.code32
madds %d0, %d15, %d1, 1

# CHECK-INST: madds %d0, %d15, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0x0f]
.code32
madds %d0, %d15, %d1, 128

# CHECK-INST: madds %d0, %d15, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0x0f]
.code32
madds %d0, %d15, %d1, 255

# CHECK-INST: madds %d0, %d15, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0x0f]
.code32
madds %d0, %d15, %d14, -256

# CHECK-INST: madds %d0, %d15, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0x0f]
.code32
madds %d0, %d15, %d14, -129

# CHECK-INST: madds %d0, %d15, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0x0f]
.code32
madds %d0, %d15, %d14, -1

# CHECK-INST: madds %d0, %d15, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0x0f]
.code32
madds %d0, %d15, %d14, 0

# CHECK-INST: madds %d0, %d15, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0x0f]
.code32
madds %d0, %d15, %d14, 1

# CHECK-INST: madds %d0, %d15, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0x0f]
.code32
madds %d0, %d15, %d14, 128

# CHECK-INST: madds %d0, %d15, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0x0f]
.code32
madds %d0, %d15, %d14, 255

# CHECK-INST: madds %d0, %d15, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0x0f]
.code32
madds %d0, %d15, %d15, -256

# CHECK-INST: madds %d0, %d15, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0x0f]
.code32
madds %d0, %d15, %d15, -129

# CHECK-INST: madds %d0, %d15, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0x0f]
.code32
madds %d0, %d15, %d15, -1

# CHECK-INST: madds %d0, %d15, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0x0f]
.code32
madds %d0, %d15, %d15, 0

# CHECK-INST: madds %d0, %d15, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0x0f]
.code32
madds %d0, %d15, %d15, 1

# CHECK-INST: madds %d0, %d15, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0x0f]
.code32
madds %d0, %d15, %d15, 128

# CHECK-INST: madds %d0, %d15, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0x0f]
.code32
madds %d0, %d15, %d15, 255

# CHECK-INST: madds %d1, %d0, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0x10]
.code32
madds %d1, %d0, %d0, -256

# CHECK-INST: madds %d1, %d0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0x10]
.code32
madds %d1, %d0, %d0, -129

# CHECK-INST: madds %d1, %d0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0x10]
.code32
madds %d1, %d0, %d0, -1

# CHECK-INST: madds %d1, %d0, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0x10]
.code32
madds %d1, %d0, %d0, 0

# CHECK-INST: madds %d1, %d0, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0x10]
.code32
madds %d1, %d0, %d0, 1

# CHECK-INST: madds %d1, %d0, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0x10]
.code32
madds %d1, %d0, %d0, 128

# CHECK-INST: madds %d1, %d0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0x10]
.code32
madds %d1, %d0, %d0, 255

# CHECK-INST: madds %d1, %d0, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0x10]
.code32
madds %d1, %d0, %d1, -256

# CHECK-INST: madds %d1, %d0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0x10]
.code32
madds %d1, %d0, %d1, -129

# CHECK-INST: madds %d1, %d0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0x10]
.code32
madds %d1, %d0, %d1, -1

# CHECK-INST: madds %d1, %d0, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0x10]
.code32
madds %d1, %d0, %d1, 0

# CHECK-INST: madds %d1, %d0, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0x10]
.code32
madds %d1, %d0, %d1, 1

# CHECK-INST: madds %d1, %d0, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0x10]
.code32
madds %d1, %d0, %d1, 128

# CHECK-INST: madds %d1, %d0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0x10]
.code32
madds %d1, %d0, %d1, 255

# CHECK-INST: madds %d1, %d0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0x10]
.code32
madds %d1, %d0, %d14, -256

# CHECK-INST: madds %d1, %d0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0x10]
.code32
madds %d1, %d0, %d14, -129

# CHECK-INST: madds %d1, %d0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0x10]
.code32
madds %d1, %d0, %d14, -1

# CHECK-INST: madds %d1, %d0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0x10]
.code32
madds %d1, %d0, %d14, 0

# CHECK-INST: madds %d1, %d0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0x10]
.code32
madds %d1, %d0, %d14, 1

# CHECK-INST: madds %d1, %d0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0x10]
.code32
madds %d1, %d0, %d14, 128

# CHECK-INST: madds %d1, %d0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0x10]
.code32
madds %d1, %d0, %d14, 255

# CHECK-INST: madds %d1, %d0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0x10]
.code32
madds %d1, %d0, %d15, -256

# CHECK-INST: madds %d1, %d0, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0x10]
.code32
madds %d1, %d0, %d15, -129

# CHECK-INST: madds %d1, %d0, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0x10]
.code32
madds %d1, %d0, %d15, -1

# CHECK-INST: madds %d1, %d0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0x10]
.code32
madds %d1, %d0, %d15, 0

# CHECK-INST: madds %d1, %d0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0x10]
.code32
madds %d1, %d0, %d15, 1

# CHECK-INST: madds %d1, %d0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0x10]
.code32
madds %d1, %d0, %d15, 128

# CHECK-INST: madds %d1, %d0, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0x10]
.code32
madds %d1, %d0, %d15, 255

# CHECK-INST: madds %d1, %d1, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0x11]
.code32
madds %d1, %d1, %d0, -256

# CHECK-INST: madds %d1, %d1, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0x11]
.code32
madds %d1, %d1, %d0, -129

# CHECK-INST: madds %d1, %d1, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0x11]
.code32
madds %d1, %d1, %d0, -1

# CHECK-INST: madds %d1, %d1, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0x11]
.code32
madds %d1, %d1, %d0, 0

# CHECK-INST: madds %d1, %d1, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0x11]
.code32
madds %d1, %d1, %d0, 1

# CHECK-INST: madds %d1, %d1, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0x11]
.code32
madds %d1, %d1, %d0, 128

# CHECK-INST: madds %d1, %d1, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0x11]
.code32
madds %d1, %d1, %d0, 255

# CHECK-INST: madds %d1, %d1, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0x11]
.code32
madds %d1, %d1, %d1, -256

# CHECK-INST: madds %d1, %d1, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0x11]
.code32
madds %d1, %d1, %d1, -129

# CHECK-INST: madds %d1, %d1, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0x11]
.code32
madds %d1, %d1, %d1, -1

# CHECK-INST: madds %d1, %d1, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0x11]
.code32
madds %d1, %d1, %d1, 0

# CHECK-INST: madds %d1, %d1, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0x11]
.code32
madds %d1, %d1, %d1, 1

# CHECK-INST: madds %d1, %d1, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0x11]
.code32
madds %d1, %d1, %d1, 128

# CHECK-INST: madds %d1, %d1, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0x11]
.code32
madds %d1, %d1, %d1, 255

# CHECK-INST: madds %d1, %d1, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0x11]
.code32
madds %d1, %d1, %d14, -256

# CHECK-INST: madds %d1, %d1, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0x11]
.code32
madds %d1, %d1, %d14, -129

# CHECK-INST: madds %d1, %d1, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0x11]
.code32
madds %d1, %d1, %d14, -1

# CHECK-INST: madds %d1, %d1, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0x11]
.code32
madds %d1, %d1, %d14, 0

# CHECK-INST: madds %d1, %d1, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0x11]
.code32
madds %d1, %d1, %d14, 1

# CHECK-INST: madds %d1, %d1, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0x11]
.code32
madds %d1, %d1, %d14, 128

# CHECK-INST: madds %d1, %d1, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0x11]
.code32
madds %d1, %d1, %d14, 255

# CHECK-INST: madds %d1, %d1, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0x11]
.code32
madds %d1, %d1, %d15, -256

# CHECK-INST: madds %d1, %d1, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0x11]
.code32
madds %d1, %d1, %d15, -129

# CHECK-INST: madds %d1, %d1, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0x11]
.code32
madds %d1, %d1, %d15, -1

# CHECK-INST: madds %d1, %d1, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0x11]
.code32
madds %d1, %d1, %d15, 0

# CHECK-INST: madds %d1, %d1, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0x11]
.code32
madds %d1, %d1, %d15, 1

# CHECK-INST: madds %d1, %d1, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0x11]
.code32
madds %d1, %d1, %d15, 128

# CHECK-INST: madds %d1, %d1, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0x11]
.code32
madds %d1, %d1, %d15, 255

# CHECK-INST: madds %d1, %d14, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0x1e]
.code32
madds %d1, %d14, %d0, -256

# CHECK-INST: madds %d1, %d14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0x1e]
.code32
madds %d1, %d14, %d0, -129

# CHECK-INST: madds %d1, %d14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0x1e]
.code32
madds %d1, %d14, %d0, -1

# CHECK-INST: madds %d1, %d14, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0x1e]
.code32
madds %d1, %d14, %d0, 0

# CHECK-INST: madds %d1, %d14, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0x1e]
.code32
madds %d1, %d14, %d0, 1

# CHECK-INST: madds %d1, %d14, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0x1e]
.code32
madds %d1, %d14, %d0, 128

# CHECK-INST: madds %d1, %d14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0x1e]
.code32
madds %d1, %d14, %d0, 255

# CHECK-INST: madds %d1, %d14, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0x1e]
.code32
madds %d1, %d14, %d1, -256

# CHECK-INST: madds %d1, %d14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0x1e]
.code32
madds %d1, %d14, %d1, -129

# CHECK-INST: madds %d1, %d14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0x1e]
.code32
madds %d1, %d14, %d1, -1

# CHECK-INST: madds %d1, %d14, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0x1e]
.code32
madds %d1, %d14, %d1, 0

# CHECK-INST: madds %d1, %d14, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0x1e]
.code32
madds %d1, %d14, %d1, 1

# CHECK-INST: madds %d1, %d14, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0x1e]
.code32
madds %d1, %d14, %d1, 128

# CHECK-INST: madds %d1, %d14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0x1e]
.code32
madds %d1, %d14, %d1, 255

# CHECK-INST: madds %d1, %d14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0x1e]
.code32
madds %d1, %d14, %d14, -256

# CHECK-INST: madds %d1, %d14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0x1e]
.code32
madds %d1, %d14, %d14, -129

# CHECK-INST: madds %d1, %d14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0x1e]
.code32
madds %d1, %d14, %d14, -1

# CHECK-INST: madds %d1, %d14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0x1e]
.code32
madds %d1, %d14, %d14, 0

# CHECK-INST: madds %d1, %d14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0x1e]
.code32
madds %d1, %d14, %d14, 1

# CHECK-INST: madds %d1, %d14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0x1e]
.code32
madds %d1, %d14, %d14, 128

# CHECK-INST: madds %d1, %d14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0x1e]
.code32
madds %d1, %d14, %d14, 255

# CHECK-INST: madds %d1, %d14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0x1e]
.code32
madds %d1, %d14, %d15, -256

# CHECK-INST: madds %d1, %d14, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0x1e]
.code32
madds %d1, %d14, %d15, -129

# CHECK-INST: madds %d1, %d14, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0x1e]
.code32
madds %d1, %d14, %d15, -1

# CHECK-INST: madds %d1, %d14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0x1e]
.code32
madds %d1, %d14, %d15, 0

# CHECK-INST: madds %d1, %d14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0x1e]
.code32
madds %d1, %d14, %d15, 1

# CHECK-INST: madds %d1, %d14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0x1e]
.code32
madds %d1, %d14, %d15, 128

# CHECK-INST: madds %d1, %d14, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0x1e]
.code32
madds %d1, %d14, %d15, 255

# CHECK-INST: madds %d1, %d15, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0x1f]
.code32
madds %d1, %d15, %d0, -256

# CHECK-INST: madds %d1, %d15, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0x1f]
.code32
madds %d1, %d15, %d0, -129

# CHECK-INST: madds %d1, %d15, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0x1f]
.code32
madds %d1, %d15, %d0, -1

# CHECK-INST: madds %d1, %d15, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0x1f]
.code32
madds %d1, %d15, %d0, 0

# CHECK-INST: madds %d1, %d15, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0x1f]
.code32
madds %d1, %d15, %d0, 1

# CHECK-INST: madds %d1, %d15, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0x1f]
.code32
madds %d1, %d15, %d0, 128

# CHECK-INST: madds %d1, %d15, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0x1f]
.code32
madds %d1, %d15, %d0, 255

# CHECK-INST: madds %d1, %d15, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0x1f]
.code32
madds %d1, %d15, %d1, -256

# CHECK-INST: madds %d1, %d15, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0x1f]
.code32
madds %d1, %d15, %d1, -129

# CHECK-INST: madds %d1, %d15, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0x1f]
.code32
madds %d1, %d15, %d1, -1

# CHECK-INST: madds %d1, %d15, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0x1f]
.code32
madds %d1, %d15, %d1, 0

# CHECK-INST: madds %d1, %d15, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0x1f]
.code32
madds %d1, %d15, %d1, 1

# CHECK-INST: madds %d1, %d15, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0x1f]
.code32
madds %d1, %d15, %d1, 128

# CHECK-INST: madds %d1, %d15, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0x1f]
.code32
madds %d1, %d15, %d1, 255

# CHECK-INST: madds %d1, %d15, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0x1f]
.code32
madds %d1, %d15, %d14, -256

# CHECK-INST: madds %d1, %d15, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0x1f]
.code32
madds %d1, %d15, %d14, -129

# CHECK-INST: madds %d1, %d15, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0x1f]
.code32
madds %d1, %d15, %d14, -1

# CHECK-INST: madds %d1, %d15, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0x1f]
.code32
madds %d1, %d15, %d14, 0

# CHECK-INST: madds %d1, %d15, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0x1f]
.code32
madds %d1, %d15, %d14, 1

# CHECK-INST: madds %d1, %d15, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0x1f]
.code32
madds %d1, %d15, %d14, 128

# CHECK-INST: madds %d1, %d15, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0x1f]
.code32
madds %d1, %d15, %d14, 255

# CHECK-INST: madds %d1, %d15, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0x1f]
.code32
madds %d1, %d15, %d15, -256

# CHECK-INST: madds %d1, %d15, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0x1f]
.code32
madds %d1, %d15, %d15, -129

# CHECK-INST: madds %d1, %d15, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0x1f]
.code32
madds %d1, %d15, %d15, -1

# CHECK-INST: madds %d1, %d15, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0x1f]
.code32
madds %d1, %d15, %d15, 0

# CHECK-INST: madds %d1, %d15, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0x1f]
.code32
madds %d1, %d15, %d15, 1

# CHECK-INST: madds %d1, %d15, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0x1f]
.code32
madds %d1, %d15, %d15, 128

# CHECK-INST: madds %d1, %d15, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0x1f]
.code32
madds %d1, %d15, %d15, 255

# CHECK-INST: madds %d14, %d0, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0xe0]
.code32
madds %d14, %d0, %d0, -256

# CHECK-INST: madds %d14, %d0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0xe0]
.code32
madds %d14, %d0, %d0, -129

# CHECK-INST: madds %d14, %d0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0xe0]
.code32
madds %d14, %d0, %d0, -1

# CHECK-INST: madds %d14, %d0, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0xe0]
.code32
madds %d14, %d0, %d0, 0

# CHECK-INST: madds %d14, %d0, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0xe0]
.code32
madds %d14, %d0, %d0, 1

# CHECK-INST: madds %d14, %d0, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0xe0]
.code32
madds %d14, %d0, %d0, 128

# CHECK-INST: madds %d14, %d0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0xe0]
.code32
madds %d14, %d0, %d0, 255

# CHECK-INST: madds %d14, %d0, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0xe0]
.code32
madds %d14, %d0, %d1, -256

# CHECK-INST: madds %d14, %d0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0xe0]
.code32
madds %d14, %d0, %d1, -129

# CHECK-INST: madds %d14, %d0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0xe0]
.code32
madds %d14, %d0, %d1, -1

# CHECK-INST: madds %d14, %d0, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0xe0]
.code32
madds %d14, %d0, %d1, 0

# CHECK-INST: madds %d14, %d0, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0xe0]
.code32
madds %d14, %d0, %d1, 1

# CHECK-INST: madds %d14, %d0, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0xe0]
.code32
madds %d14, %d0, %d1, 128

# CHECK-INST: madds %d14, %d0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0xe0]
.code32
madds %d14, %d0, %d1, 255

# CHECK-INST: madds %d14, %d0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0xe0]
.code32
madds %d14, %d0, %d14, -256

# CHECK-INST: madds %d14, %d0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0xe0]
.code32
madds %d14, %d0, %d14, -129

# CHECK-INST: madds %d14, %d0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0xe0]
.code32
madds %d14, %d0, %d14, -1

# CHECK-INST: madds %d14, %d0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0xe0]
.code32
madds %d14, %d0, %d14, 0

# CHECK-INST: madds %d14, %d0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0xe0]
.code32
madds %d14, %d0, %d14, 1

# CHECK-INST: madds %d14, %d0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0xe0]
.code32
madds %d14, %d0, %d14, 128

# CHECK-INST: madds %d14, %d0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0xe0]
.code32
madds %d14, %d0, %d14, 255

# CHECK-INST: madds %d14, %d0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0xe0]
.code32
madds %d14, %d0, %d15, -256

# CHECK-INST: madds %d14, %d0, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0xe0]
.code32
madds %d14, %d0, %d15, -129

# CHECK-INST: madds %d14, %d0, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0xe0]
.code32
madds %d14, %d0, %d15, -1

# CHECK-INST: madds %d14, %d0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0xe0]
.code32
madds %d14, %d0, %d15, 0

# CHECK-INST: madds %d14, %d0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0xe0]
.code32
madds %d14, %d0, %d15, 1

# CHECK-INST: madds %d14, %d0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0xe0]
.code32
madds %d14, %d0, %d15, 128

# CHECK-INST: madds %d14, %d0, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0xe0]
.code32
madds %d14, %d0, %d15, 255

# CHECK-INST: madds %d14, %d1, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0xe1]
.code32
madds %d14, %d1, %d0, -256

# CHECK-INST: madds %d14, %d1, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0xe1]
.code32
madds %d14, %d1, %d0, -129

# CHECK-INST: madds %d14, %d1, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0xe1]
.code32
madds %d14, %d1, %d0, -1

# CHECK-INST: madds %d14, %d1, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0xe1]
.code32
madds %d14, %d1, %d0, 0

# CHECK-INST: madds %d14, %d1, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0xe1]
.code32
madds %d14, %d1, %d0, 1

# CHECK-INST: madds %d14, %d1, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0xe1]
.code32
madds %d14, %d1, %d0, 128

# CHECK-INST: madds %d14, %d1, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0xe1]
.code32
madds %d14, %d1, %d0, 255

# CHECK-INST: madds %d14, %d1, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0xe1]
.code32
madds %d14, %d1, %d1, -256

# CHECK-INST: madds %d14, %d1, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0xe1]
.code32
madds %d14, %d1, %d1, -129

# CHECK-INST: madds %d14, %d1, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0xe1]
.code32
madds %d14, %d1, %d1, -1

# CHECK-INST: madds %d14, %d1, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0xe1]
.code32
madds %d14, %d1, %d1, 0

# CHECK-INST: madds %d14, %d1, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0xe1]
.code32
madds %d14, %d1, %d1, 1

# CHECK-INST: madds %d14, %d1, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0xe1]
.code32
madds %d14, %d1, %d1, 128

# CHECK-INST: madds %d14, %d1, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0xe1]
.code32
madds %d14, %d1, %d1, 255

# CHECK-INST: madds %d14, %d1, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0xe1]
.code32
madds %d14, %d1, %d14, -256

# CHECK-INST: madds %d14, %d1, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0xe1]
.code32
madds %d14, %d1, %d14, -129

# CHECK-INST: madds %d14, %d1, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0xe1]
.code32
madds %d14, %d1, %d14, -1

# CHECK-INST: madds %d14, %d1, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0xe1]
.code32
madds %d14, %d1, %d14, 0

# CHECK-INST: madds %d14, %d1, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0xe1]
.code32
madds %d14, %d1, %d14, 1

# CHECK-INST: madds %d14, %d1, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0xe1]
.code32
madds %d14, %d1, %d14, 128

# CHECK-INST: madds %d14, %d1, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0xe1]
.code32
madds %d14, %d1, %d14, 255

# CHECK-INST: madds %d14, %d1, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0xe1]
.code32
madds %d14, %d1, %d15, -256

# CHECK-INST: madds %d14, %d1, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0xe1]
.code32
madds %d14, %d1, %d15, -129

# CHECK-INST: madds %d14, %d1, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0xe1]
.code32
madds %d14, %d1, %d15, -1

# CHECK-INST: madds %d14, %d1, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0xe1]
.code32
madds %d14, %d1, %d15, 0

# CHECK-INST: madds %d14, %d1, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0xe1]
.code32
madds %d14, %d1, %d15, 1

# CHECK-INST: madds %d14, %d1, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0xe1]
.code32
madds %d14, %d1, %d15, 128

# CHECK-INST: madds %d14, %d1, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0xe1]
.code32
madds %d14, %d1, %d15, 255

# CHECK-INST: madds %d14, %d14, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0xee]
.code32
madds %d14, %d14, %d0, -256

# CHECK-INST: madds %d14, %d14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0xee]
.code32
madds %d14, %d14, %d0, -129

# CHECK-INST: madds %d14, %d14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0xee]
.code32
madds %d14, %d14, %d0, -1

# CHECK-INST: madds %d14, %d14, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0xee]
.code32
madds %d14, %d14, %d0, 0

# CHECK-INST: madds %d14, %d14, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0xee]
.code32
madds %d14, %d14, %d0, 1

# CHECK-INST: madds %d14, %d14, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0xee]
.code32
madds %d14, %d14, %d0, 128

# CHECK-INST: madds %d14, %d14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0xee]
.code32
madds %d14, %d14, %d0, 255

# CHECK-INST: madds %d14, %d14, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0xee]
.code32
madds %d14, %d14, %d1, -256

# CHECK-INST: madds %d14, %d14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0xee]
.code32
madds %d14, %d14, %d1, -129

# CHECK-INST: madds %d14, %d14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0xee]
.code32
madds %d14, %d14, %d1, -1

# CHECK-INST: madds %d14, %d14, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0xee]
.code32
madds %d14, %d14, %d1, 0

# CHECK-INST: madds %d14, %d14, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0xee]
.code32
madds %d14, %d14, %d1, 1

# CHECK-INST: madds %d14, %d14, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0xee]
.code32
madds %d14, %d14, %d1, 128

# CHECK-INST: madds %d14, %d14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0xee]
.code32
madds %d14, %d14, %d1, 255

# CHECK-INST: madds %d14, %d14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0xee]
.code32
madds %d14, %d14, %d14, -256

# CHECK-INST: madds %d14, %d14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0xee]
.code32
madds %d14, %d14, %d14, -129

# CHECK-INST: madds %d14, %d14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0xee]
.code32
madds %d14, %d14, %d14, -1

# CHECK-INST: madds %d14, %d14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0xee]
.code32
madds %d14, %d14, %d14, 0

# CHECK-INST: madds %d14, %d14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0xee]
.code32
madds %d14, %d14, %d14, 1

# CHECK-INST: madds %d14, %d14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0xee]
.code32
madds %d14, %d14, %d14, 128

# CHECK-INST: madds %d14, %d14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0xee]
.code32
madds %d14, %d14, %d14, 255

# CHECK-INST: madds %d14, %d14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0xee]
.code32
madds %d14, %d14, %d15, -256

# CHECK-INST: madds %d14, %d14, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0xee]
.code32
madds %d14, %d14, %d15, -129

# CHECK-INST: madds %d14, %d14, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0xee]
.code32
madds %d14, %d14, %d15, -1

# CHECK-INST: madds %d14, %d14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0xee]
.code32
madds %d14, %d14, %d15, 0

# CHECK-INST: madds %d14, %d14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0xee]
.code32
madds %d14, %d14, %d15, 1

# CHECK-INST: madds %d14, %d14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0xee]
.code32
madds %d14, %d14, %d15, 128

# CHECK-INST: madds %d14, %d14, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0xee]
.code32
madds %d14, %d14, %d15, 255

# CHECK-INST: madds %d14, %d15, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0xef]
.code32
madds %d14, %d15, %d0, -256

# CHECK-INST: madds %d14, %d15, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0xef]
.code32
madds %d14, %d15, %d0, -129

# CHECK-INST: madds %d14, %d15, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0xef]
.code32
madds %d14, %d15, %d0, -1

# CHECK-INST: madds %d14, %d15, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0xef]
.code32
madds %d14, %d15, %d0, 0

# CHECK-INST: madds %d14, %d15, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0xef]
.code32
madds %d14, %d15, %d0, 1

# CHECK-INST: madds %d14, %d15, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0xef]
.code32
madds %d14, %d15, %d0, 128

# CHECK-INST: madds %d14, %d15, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0xef]
.code32
madds %d14, %d15, %d0, 255

# CHECK-INST: madds %d14, %d15, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0xef]
.code32
madds %d14, %d15, %d1, -256

# CHECK-INST: madds %d14, %d15, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0xef]
.code32
madds %d14, %d15, %d1, -129

# CHECK-INST: madds %d14, %d15, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0xef]
.code32
madds %d14, %d15, %d1, -1

# CHECK-INST: madds %d14, %d15, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0xef]
.code32
madds %d14, %d15, %d1, 0

# CHECK-INST: madds %d14, %d15, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0xef]
.code32
madds %d14, %d15, %d1, 1

# CHECK-INST: madds %d14, %d15, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0xef]
.code32
madds %d14, %d15, %d1, 128

# CHECK-INST: madds %d14, %d15, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0xef]
.code32
madds %d14, %d15, %d1, 255

# CHECK-INST: madds %d14, %d15, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0xef]
.code32
madds %d14, %d15, %d14, -256

# CHECK-INST: madds %d14, %d15, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0xef]
.code32
madds %d14, %d15, %d14, -129

# CHECK-INST: madds %d14, %d15, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0xef]
.code32
madds %d14, %d15, %d14, -1

# CHECK-INST: madds %d14, %d15, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0xef]
.code32
madds %d14, %d15, %d14, 0

# CHECK-INST: madds %d14, %d15, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0xef]
.code32
madds %d14, %d15, %d14, 1

# CHECK-INST: madds %d14, %d15, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0xef]
.code32
madds %d14, %d15, %d14, 128

# CHECK-INST: madds %d14, %d15, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0xef]
.code32
madds %d14, %d15, %d14, 255

# CHECK-INST: madds %d14, %d15, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0xef]
.code32
madds %d14, %d15, %d15, -256

# CHECK-INST: madds %d14, %d15, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0xef]
.code32
madds %d14, %d15, %d15, -129

# CHECK-INST: madds %d14, %d15, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0xef]
.code32
madds %d14, %d15, %d15, -1

# CHECK-INST: madds %d14, %d15, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0xef]
.code32
madds %d14, %d15, %d15, 0

# CHECK-INST: madds %d14, %d15, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0xef]
.code32
madds %d14, %d15, %d15, 1

# CHECK-INST: madds %d14, %d15, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0xef]
.code32
madds %d14, %d15, %d15, 128

# CHECK-INST: madds %d14, %d15, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0xef]
.code32
madds %d14, %d15, %d15, 255

# CHECK-INST: madds %d15, %d0, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0xf0]
.code32
madds %d15, %d0, %d0, -256

# CHECK-INST: madds %d15, %d0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0xf0]
.code32
madds %d15, %d0, %d0, -129

# CHECK-INST: madds %d15, %d0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0xf0]
.code32
madds %d15, %d0, %d0, -1

# CHECK-INST: madds %d15, %d0, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0xf0]
.code32
madds %d15, %d0, %d0, 0

# CHECK-INST: madds %d15, %d0, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0xf0]
.code32
madds %d15, %d0, %d0, 1

# CHECK-INST: madds %d15, %d0, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0xf0]
.code32
madds %d15, %d0, %d0, 128

# CHECK-INST: madds %d15, %d0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0xf0]
.code32
madds %d15, %d0, %d0, 255

# CHECK-INST: madds %d15, %d0, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0xf0]
.code32
madds %d15, %d0, %d1, -256

# CHECK-INST: madds %d15, %d0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0xf0]
.code32
madds %d15, %d0, %d1, -129

# CHECK-INST: madds %d15, %d0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0xf0]
.code32
madds %d15, %d0, %d1, -1

# CHECK-INST: madds %d15, %d0, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0xf0]
.code32
madds %d15, %d0, %d1, 0

# CHECK-INST: madds %d15, %d0, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0xf0]
.code32
madds %d15, %d0, %d1, 1

# CHECK-INST: madds %d15, %d0, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0xf0]
.code32
madds %d15, %d0, %d1, 128

# CHECK-INST: madds %d15, %d0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0xf0]
.code32
madds %d15, %d0, %d1, 255

# CHECK-INST: madds %d15, %d0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0xf0]
.code32
madds %d15, %d0, %d14, -256

# CHECK-INST: madds %d15, %d0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0xf0]
.code32
madds %d15, %d0, %d14, -129

# CHECK-INST: madds %d15, %d0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0xf0]
.code32
madds %d15, %d0, %d14, -1

# CHECK-INST: madds %d15, %d0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0xf0]
.code32
madds %d15, %d0, %d14, 0

# CHECK-INST: madds %d15, %d0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0xf0]
.code32
madds %d15, %d0, %d14, 1

# CHECK-INST: madds %d15, %d0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0xf0]
.code32
madds %d15, %d0, %d14, 128

# CHECK-INST: madds %d15, %d0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0xf0]
.code32
madds %d15, %d0, %d14, 255

# CHECK-INST: madds %d15, %d0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0xf0]
.code32
madds %d15, %d0, %d15, -256

# CHECK-INST: madds %d15, %d0, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0xf0]
.code32
madds %d15, %d0, %d15, -129

# CHECK-INST: madds %d15, %d0, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0xf0]
.code32
madds %d15, %d0, %d15, -1

# CHECK-INST: madds %d15, %d0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0xf0]
.code32
madds %d15, %d0, %d15, 0

# CHECK-INST: madds %d15, %d0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0xf0]
.code32
madds %d15, %d0, %d15, 1

# CHECK-INST: madds %d15, %d0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0xf0]
.code32
madds %d15, %d0, %d15, 128

# CHECK-INST: madds %d15, %d0, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0xf0]
.code32
madds %d15, %d0, %d15, 255

# CHECK-INST: madds %d15, %d1, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0xf1]
.code32
madds %d15, %d1, %d0, -256

# CHECK-INST: madds %d15, %d1, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0xf1]
.code32
madds %d15, %d1, %d0, -129

# CHECK-INST: madds %d15, %d1, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0xf1]
.code32
madds %d15, %d1, %d0, -1

# CHECK-INST: madds %d15, %d1, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0xf1]
.code32
madds %d15, %d1, %d0, 0

# CHECK-INST: madds %d15, %d1, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0xf1]
.code32
madds %d15, %d1, %d0, 1

# CHECK-INST: madds %d15, %d1, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0xf1]
.code32
madds %d15, %d1, %d0, 128

# CHECK-INST: madds %d15, %d1, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0xf1]
.code32
madds %d15, %d1, %d0, 255

# CHECK-INST: madds %d15, %d1, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0xf1]
.code32
madds %d15, %d1, %d1, -256

# CHECK-INST: madds %d15, %d1, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0xf1]
.code32
madds %d15, %d1, %d1, -129

# CHECK-INST: madds %d15, %d1, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0xf1]
.code32
madds %d15, %d1, %d1, -1

# CHECK-INST: madds %d15, %d1, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0xf1]
.code32
madds %d15, %d1, %d1, 0

# CHECK-INST: madds %d15, %d1, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0xf1]
.code32
madds %d15, %d1, %d1, 1

# CHECK-INST: madds %d15, %d1, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0xf1]
.code32
madds %d15, %d1, %d1, 128

# CHECK-INST: madds %d15, %d1, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0xf1]
.code32
madds %d15, %d1, %d1, 255

# CHECK-INST: madds %d15, %d1, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0xf1]
.code32
madds %d15, %d1, %d14, -256

# CHECK-INST: madds %d15, %d1, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0xf1]
.code32
madds %d15, %d1, %d14, -129

# CHECK-INST: madds %d15, %d1, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0xf1]
.code32
madds %d15, %d1, %d14, -1

# CHECK-INST: madds %d15, %d1, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0xf1]
.code32
madds %d15, %d1, %d14, 0

# CHECK-INST: madds %d15, %d1, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0xf1]
.code32
madds %d15, %d1, %d14, 1

# CHECK-INST: madds %d15, %d1, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0xf1]
.code32
madds %d15, %d1, %d14, 128

# CHECK-INST: madds %d15, %d1, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0xf1]
.code32
madds %d15, %d1, %d14, 255

# CHECK-INST: madds %d15, %d1, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0xf1]
.code32
madds %d15, %d1, %d15, -256

# CHECK-INST: madds %d15, %d1, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0xf1]
.code32
madds %d15, %d1, %d15, -129

# CHECK-INST: madds %d15, %d1, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0xf1]
.code32
madds %d15, %d1, %d15, -1

# CHECK-INST: madds %d15, %d1, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0xf1]
.code32
madds %d15, %d1, %d15, 0

# CHECK-INST: madds %d15, %d1, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0xf1]
.code32
madds %d15, %d1, %d15, 1

# CHECK-INST: madds %d15, %d1, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0xf1]
.code32
madds %d15, %d1, %d15, 128

# CHECK-INST: madds %d15, %d1, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0xf1]
.code32
madds %d15, %d1, %d15, 255

# CHECK-INST: madds %d15, %d14, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0xfe]
.code32
madds %d15, %d14, %d0, -256

# CHECK-INST: madds %d15, %d14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0xfe]
.code32
madds %d15, %d14, %d0, -129

# CHECK-INST: madds %d15, %d14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0xfe]
.code32
madds %d15, %d14, %d0, -1

# CHECK-INST: madds %d15, %d14, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0xfe]
.code32
madds %d15, %d14, %d0, 0

# CHECK-INST: madds %d15, %d14, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0xfe]
.code32
madds %d15, %d14, %d0, 1

# CHECK-INST: madds %d15, %d14, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0xfe]
.code32
madds %d15, %d14, %d0, 128

# CHECK-INST: madds %d15, %d14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0xfe]
.code32
madds %d15, %d14, %d0, 255

# CHECK-INST: madds %d15, %d14, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0xfe]
.code32
madds %d15, %d14, %d1, -256

# CHECK-INST: madds %d15, %d14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0xfe]
.code32
madds %d15, %d14, %d1, -129

# CHECK-INST: madds %d15, %d14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0xfe]
.code32
madds %d15, %d14, %d1, -1

# CHECK-INST: madds %d15, %d14, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0xfe]
.code32
madds %d15, %d14, %d1, 0

# CHECK-INST: madds %d15, %d14, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0xfe]
.code32
madds %d15, %d14, %d1, 1

# CHECK-INST: madds %d15, %d14, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0xfe]
.code32
madds %d15, %d14, %d1, 128

# CHECK-INST: madds %d15, %d14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0xfe]
.code32
madds %d15, %d14, %d1, 255

# CHECK-INST: madds %d15, %d14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0xfe]
.code32
madds %d15, %d14, %d14, -256

# CHECK-INST: madds %d15, %d14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0xfe]
.code32
madds %d15, %d14, %d14, -129

# CHECK-INST: madds %d15, %d14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0xfe]
.code32
madds %d15, %d14, %d14, -1

# CHECK-INST: madds %d15, %d14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0xfe]
.code32
madds %d15, %d14, %d14, 0

# CHECK-INST: madds %d15, %d14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0xfe]
.code32
madds %d15, %d14, %d14, 1

# CHECK-INST: madds %d15, %d14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0xfe]
.code32
madds %d15, %d14, %d14, 128

# CHECK-INST: madds %d15, %d14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0xfe]
.code32
madds %d15, %d14, %d14, 255

# CHECK-INST: madds %d15, %d14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0xfe]
.code32
madds %d15, %d14, %d15, -256

# CHECK-INST: madds %d15, %d14, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0xfe]
.code32
madds %d15, %d14, %d15, -129

# CHECK-INST: madds %d15, %d14, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0xfe]
.code32
madds %d15, %d14, %d15, -1

# CHECK-INST: madds %d15, %d14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0xfe]
.code32
madds %d15, %d14, %d15, 0

# CHECK-INST: madds %d15, %d14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0xfe]
.code32
madds %d15, %d14, %d15, 1

# CHECK-INST: madds %d15, %d14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0xfe]
.code32
madds %d15, %d14, %d15, 128

# CHECK-INST: madds %d15, %d14, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0xfe]
.code32
madds %d15, %d14, %d15, 255

# CHECK-INST: madds %d15, %d15, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0xff]
.code32
madds %d15, %d15, %d0, -256

# CHECK-INST: madds %d15, %d15, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0xff]
.code32
madds %d15, %d15, %d0, -129

# CHECK-INST: madds %d15, %d15, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0xff]
.code32
madds %d15, %d15, %d0, -1

# CHECK-INST: madds %d15, %d15, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0xff]
.code32
madds %d15, %d15, %d0, 0

# CHECK-INST: madds %d15, %d15, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0xff]
.code32
madds %d15, %d15, %d0, 1

# CHECK-INST: madds %d15, %d15, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0xff]
.code32
madds %d15, %d15, %d0, 128

# CHECK-INST: madds %d15, %d15, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0xff]
.code32
madds %d15, %d15, %d0, 255

# CHECK-INST: madds %d15, %d15, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0xff]
.code32
madds %d15, %d15, %d1, -256

# CHECK-INST: madds %d15, %d15, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0xff]
.code32
madds %d15, %d15, %d1, -129

# CHECK-INST: madds %d15, %d15, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0xff]
.code32
madds %d15, %d15, %d1, -1

# CHECK-INST: madds %d15, %d15, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0xff]
.code32
madds %d15, %d15, %d1, 0

# CHECK-INST: madds %d15, %d15, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0xff]
.code32
madds %d15, %d15, %d1, 1

# CHECK-INST: madds %d15, %d15, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0xff]
.code32
madds %d15, %d15, %d1, 128

# CHECK-INST: madds %d15, %d15, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0xff]
.code32
madds %d15, %d15, %d1, 255

# CHECK-INST: madds %d15, %d15, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0xff]
.code32
madds %d15, %d15, %d14, -256

# CHECK-INST: madds %d15, %d15, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0xff]
.code32
madds %d15, %d15, %d14, -129

# CHECK-INST: madds %d15, %d15, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0xff]
.code32
madds %d15, %d15, %d14, -1

# CHECK-INST: madds %d15, %d15, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0xff]
.code32
madds %d15, %d15, %d14, 0

# CHECK-INST: madds %d15, %d15, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0xff]
.code32
madds %d15, %d15, %d14, 1

# CHECK-INST: madds %d15, %d15, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0xff]
.code32
madds %d15, %d15, %d14, 128

# CHECK-INST: madds %d15, %d15, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0xff]
.code32
madds %d15, %d15, %d14, 255

# CHECK-INST: madds %d15, %d15, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0xff]
.code32
madds %d15, %d15, %d15, -256

# CHECK-INST: madds %d15, %d15, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0xff]
.code32
madds %d15, %d15, %d15, -129

# CHECK-INST: madds %d15, %d15, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0xff]
.code32
madds %d15, %d15, %d15, -1

# CHECK-INST: madds %d15, %d15, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0xff]
.code32
madds %d15, %d15, %d15, 0

# CHECK-INST: madds %d15, %d15, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0xff]
.code32
madds %d15, %d15, %d15, 1

# CHECK-INST: madds %d15, %d15, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0xff]
.code32
madds %d15, %d15, %d15, 128

# CHECK-INST: madds %d15, %d15, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0xff]
.code32
madds %d15, %d15, %d15, 255

# CHECK-INST: madds %e0, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xea,0x00]
.code32
madds %e0, %e0, %d0, %d0

# CHECK-INST: madds %e0, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xea,0x00]
.code32
madds %e0, %e0, %d0, %d1

# CHECK-INST: madds %e0, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xea,0x00]
.code32
madds %e0, %e0, %d0, %d14

# CHECK-INST: madds %e0, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xea,0x00]
.code32
madds %e0, %e0, %d0, %d15

# CHECK-INST: madds %e0, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xea,0x00]
.code32
madds %e0, %e0, %d1, %d0

# CHECK-INST: madds %e0, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xea,0x00]
.code32
madds %e0, %e0, %d1, %d1

# CHECK-INST: madds %e0, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xea,0x00]
.code32
madds %e0, %e0, %d1, %d14

# CHECK-INST: madds %e0, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xea,0x00]
.code32
madds %e0, %e0, %d1, %d15

# CHECK-INST: madds %e0, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xea,0x00]
.code32
madds %e0, %e0, %d14, %d0

# CHECK-INST: madds %e0, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xea,0x00]
.code32
madds %e0, %e0, %d14, %d1

# CHECK-INST: madds %e0, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xea,0x00]
.code32
madds %e0, %e0, %d14, %d14

# CHECK-INST: madds %e0, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xea,0x00]
.code32
madds %e0, %e0, %d14, %d15

# CHECK-INST: madds %e0, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xea,0x00]
.code32
madds %e0, %e0, %d15, %d0

# CHECK-INST: madds %e0, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xea,0x00]
.code32
madds %e0, %e0, %d15, %d1

# CHECK-INST: madds %e0, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xea,0x00]
.code32
madds %e0, %e0, %d15, %d14

# CHECK-INST: madds %e0, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xea,0x00]
.code32
madds %e0, %e0, %d15, %d15

# CHECK-INST: madds %e0, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xea,0x06]
.code32
madds %e0, %e6, %d0, %d0

# CHECK-INST: madds %e0, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xea,0x06]
.code32
madds %e0, %e6, %d0, %d1

# CHECK-INST: madds %e0, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xea,0x06]
.code32
madds %e0, %e6, %d0, %d14

# CHECK-INST: madds %e0, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xea,0x06]
.code32
madds %e0, %e6, %d0, %d15

# CHECK-INST: madds %e0, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xea,0x06]
.code32
madds %e0, %e6, %d1, %d0

# CHECK-INST: madds %e0, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xea,0x06]
.code32
madds %e0, %e6, %d1, %d1

# CHECK-INST: madds %e0, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xea,0x06]
.code32
madds %e0, %e6, %d1, %d14

# CHECK-INST: madds %e0, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xea,0x06]
.code32
madds %e0, %e6, %d1, %d15

# CHECK-INST: madds %e0, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xea,0x06]
.code32
madds %e0, %e6, %d14, %d0

# CHECK-INST: madds %e0, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xea,0x06]
.code32
madds %e0, %e6, %d14, %d1

# CHECK-INST: madds %e0, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xea,0x06]
.code32
madds %e0, %e6, %d14, %d14

# CHECK-INST: madds %e0, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xea,0x06]
.code32
madds %e0, %e6, %d14, %d15

# CHECK-INST: madds %e0, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xea,0x06]
.code32
madds %e0, %e6, %d15, %d0

# CHECK-INST: madds %e0, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xea,0x06]
.code32
madds %e0, %e6, %d15, %d1

# CHECK-INST: madds %e0, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xea,0x06]
.code32
madds %e0, %e6, %d15, %d14

# CHECK-INST: madds %e0, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xea,0x06]
.code32
madds %e0, %e6, %d15, %d15

# CHECK-INST: madds %e0, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xea,0x0e]
.code32
madds %e0, %e14, %d0, %d0

# CHECK-INST: madds %e0, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xea,0x0e]
.code32
madds %e0, %e14, %d0, %d1

# CHECK-INST: madds %e0, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xea,0x0e]
.code32
madds %e0, %e14, %d0, %d14

# CHECK-INST: madds %e0, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xea,0x0e]
.code32
madds %e0, %e14, %d0, %d15

# CHECK-INST: madds %e0, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xea,0x0e]
.code32
madds %e0, %e14, %d1, %d0

# CHECK-INST: madds %e0, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xea,0x0e]
.code32
madds %e0, %e14, %d1, %d1

# CHECK-INST: madds %e0, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xea,0x0e]
.code32
madds %e0, %e14, %d1, %d14

# CHECK-INST: madds %e0, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xea,0x0e]
.code32
madds %e0, %e14, %d1, %d15

# CHECK-INST: madds %e0, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xea,0x0e]
.code32
madds %e0, %e14, %d14, %d0

# CHECK-INST: madds %e0, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xea,0x0e]
.code32
madds %e0, %e14, %d14, %d1

# CHECK-INST: madds %e0, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xea,0x0e]
.code32
madds %e0, %e14, %d14, %d14

# CHECK-INST: madds %e0, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xea,0x0e]
.code32
madds %e0, %e14, %d14, %d15

# CHECK-INST: madds %e0, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xea,0x0e]
.code32
madds %e0, %e14, %d15, %d0

# CHECK-INST: madds %e0, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xea,0x0e]
.code32
madds %e0, %e14, %d15, %d1

# CHECK-INST: madds %e0, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xea,0x0e]
.code32
madds %e0, %e14, %d15, %d14

# CHECK-INST: madds %e0, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xea,0x0e]
.code32
madds %e0, %e14, %d15, %d15

# CHECK-INST: madds %e6, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xea,0x60]
.code32
madds %e6, %e0, %d0, %d0

# CHECK-INST: madds %e6, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xea,0x60]
.code32
madds %e6, %e0, %d0, %d1

# CHECK-INST: madds %e6, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xea,0x60]
.code32
madds %e6, %e0, %d0, %d14

# CHECK-INST: madds %e6, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xea,0x60]
.code32
madds %e6, %e0, %d0, %d15

# CHECK-INST: madds %e6, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xea,0x60]
.code32
madds %e6, %e0, %d1, %d0

# CHECK-INST: madds %e6, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xea,0x60]
.code32
madds %e6, %e0, %d1, %d1

# CHECK-INST: madds %e6, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xea,0x60]
.code32
madds %e6, %e0, %d1, %d14

# CHECK-INST: madds %e6, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xea,0x60]
.code32
madds %e6, %e0, %d1, %d15

# CHECK-INST: madds %e6, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xea,0x60]
.code32
madds %e6, %e0, %d14, %d0

# CHECK-INST: madds %e6, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xea,0x60]
.code32
madds %e6, %e0, %d14, %d1

# CHECK-INST: madds %e6, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xea,0x60]
.code32
madds %e6, %e0, %d14, %d14

# CHECK-INST: madds %e6, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xea,0x60]
.code32
madds %e6, %e0, %d14, %d15

# CHECK-INST: madds %e6, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xea,0x60]
.code32
madds %e6, %e0, %d15, %d0

# CHECK-INST: madds %e6, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xea,0x60]
.code32
madds %e6, %e0, %d15, %d1

# CHECK-INST: madds %e6, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xea,0x60]
.code32
madds %e6, %e0, %d15, %d14

# CHECK-INST: madds %e6, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xea,0x60]
.code32
madds %e6, %e0, %d15, %d15

# CHECK-INST: madds %e6, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xea,0x66]
.code32
madds %e6, %e6, %d0, %d0

# CHECK-INST: madds %e6, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xea,0x66]
.code32
madds %e6, %e6, %d0, %d1

# CHECK-INST: madds %e6, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xea,0x66]
.code32
madds %e6, %e6, %d0, %d14

# CHECK-INST: madds %e6, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xea,0x66]
.code32
madds %e6, %e6, %d0, %d15

# CHECK-INST: madds %e6, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xea,0x66]
.code32
madds %e6, %e6, %d1, %d0

# CHECK-INST: madds %e6, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xea,0x66]
.code32
madds %e6, %e6, %d1, %d1

# CHECK-INST: madds %e6, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xea,0x66]
.code32
madds %e6, %e6, %d1, %d14

# CHECK-INST: madds %e6, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xea,0x66]
.code32
madds %e6, %e6, %d1, %d15

# CHECK-INST: madds %e6, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xea,0x66]
.code32
madds %e6, %e6, %d14, %d0

# CHECK-INST: madds %e6, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xea,0x66]
.code32
madds %e6, %e6, %d14, %d1

# CHECK-INST: madds %e6, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xea,0x66]
.code32
madds %e6, %e6, %d14, %d14

# CHECK-INST: madds %e6, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xea,0x66]
.code32
madds %e6, %e6, %d14, %d15

# CHECK-INST: madds %e6, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xea,0x66]
.code32
madds %e6, %e6, %d15, %d0

# CHECK-INST: madds %e6, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xea,0x66]
.code32
madds %e6, %e6, %d15, %d1

# CHECK-INST: madds %e6, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xea,0x66]
.code32
madds %e6, %e6, %d15, %d14

# CHECK-INST: madds %e6, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xea,0x66]
.code32
madds %e6, %e6, %d15, %d15

# CHECK-INST: madds %e6, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xea,0x6e]
.code32
madds %e6, %e14, %d0, %d0

# CHECK-INST: madds %e6, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xea,0x6e]
.code32
madds %e6, %e14, %d0, %d1

# CHECK-INST: madds %e6, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xea,0x6e]
.code32
madds %e6, %e14, %d0, %d14

# CHECK-INST: madds %e6, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xea,0x6e]
.code32
madds %e6, %e14, %d0, %d15

# CHECK-INST: madds %e6, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xea,0x6e]
.code32
madds %e6, %e14, %d1, %d0

# CHECK-INST: madds %e6, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xea,0x6e]
.code32
madds %e6, %e14, %d1, %d1

# CHECK-INST: madds %e6, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xea,0x6e]
.code32
madds %e6, %e14, %d1, %d14

# CHECK-INST: madds %e6, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xea,0x6e]
.code32
madds %e6, %e14, %d1, %d15

# CHECK-INST: madds %e6, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xea,0x6e]
.code32
madds %e6, %e14, %d14, %d0

# CHECK-INST: madds %e6, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xea,0x6e]
.code32
madds %e6, %e14, %d14, %d1

# CHECK-INST: madds %e6, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xea,0x6e]
.code32
madds %e6, %e14, %d14, %d14

# CHECK-INST: madds %e6, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xea,0x6e]
.code32
madds %e6, %e14, %d14, %d15

# CHECK-INST: madds %e6, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xea,0x6e]
.code32
madds %e6, %e14, %d15, %d0

# CHECK-INST: madds %e6, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xea,0x6e]
.code32
madds %e6, %e14, %d15, %d1

# CHECK-INST: madds %e6, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xea,0x6e]
.code32
madds %e6, %e14, %d15, %d14

# CHECK-INST: madds %e6, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xea,0x6e]
.code32
madds %e6, %e14, %d15, %d15

# CHECK-INST: madds %e14, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xea,0xe0]
.code32
madds %e14, %e0, %d0, %d0

# CHECK-INST: madds %e14, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xea,0xe0]
.code32
madds %e14, %e0, %d0, %d1

# CHECK-INST: madds %e14, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xea,0xe0]
.code32
madds %e14, %e0, %d0, %d14

# CHECK-INST: madds %e14, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xea,0xe0]
.code32
madds %e14, %e0, %d0, %d15

# CHECK-INST: madds %e14, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xea,0xe0]
.code32
madds %e14, %e0, %d1, %d0

# CHECK-INST: madds %e14, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xea,0xe0]
.code32
madds %e14, %e0, %d1, %d1

# CHECK-INST: madds %e14, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xea,0xe0]
.code32
madds %e14, %e0, %d1, %d14

# CHECK-INST: madds %e14, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xea,0xe0]
.code32
madds %e14, %e0, %d1, %d15

# CHECK-INST: madds %e14, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xea,0xe0]
.code32
madds %e14, %e0, %d14, %d0

# CHECK-INST: madds %e14, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xea,0xe0]
.code32
madds %e14, %e0, %d14, %d1

# CHECK-INST: madds %e14, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xea,0xe0]
.code32
madds %e14, %e0, %d14, %d14

# CHECK-INST: madds %e14, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xea,0xe0]
.code32
madds %e14, %e0, %d14, %d15

# CHECK-INST: madds %e14, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xea,0xe0]
.code32
madds %e14, %e0, %d15, %d0

# CHECK-INST: madds %e14, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xea,0xe0]
.code32
madds %e14, %e0, %d15, %d1

# CHECK-INST: madds %e14, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xea,0xe0]
.code32
madds %e14, %e0, %d15, %d14

# CHECK-INST: madds %e14, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xea,0xe0]
.code32
madds %e14, %e0, %d15, %d15

# CHECK-INST: madds %e14, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xea,0xe6]
.code32
madds %e14, %e6, %d0, %d0

# CHECK-INST: madds %e14, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xea,0xe6]
.code32
madds %e14, %e6, %d0, %d1

# CHECK-INST: madds %e14, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xea,0xe6]
.code32
madds %e14, %e6, %d0, %d14

# CHECK-INST: madds %e14, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xea,0xe6]
.code32
madds %e14, %e6, %d0, %d15

# CHECK-INST: madds %e14, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xea,0xe6]
.code32
madds %e14, %e6, %d1, %d0

# CHECK-INST: madds %e14, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xea,0xe6]
.code32
madds %e14, %e6, %d1, %d1

# CHECK-INST: madds %e14, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xea,0xe6]
.code32
madds %e14, %e6, %d1, %d14

# CHECK-INST: madds %e14, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xea,0xe6]
.code32
madds %e14, %e6, %d1, %d15

# CHECK-INST: madds %e14, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xea,0xe6]
.code32
madds %e14, %e6, %d14, %d0

# CHECK-INST: madds %e14, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xea,0xe6]
.code32
madds %e14, %e6, %d14, %d1

# CHECK-INST: madds %e14, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xea,0xe6]
.code32
madds %e14, %e6, %d14, %d14

# CHECK-INST: madds %e14, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xea,0xe6]
.code32
madds %e14, %e6, %d14, %d15

# CHECK-INST: madds %e14, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xea,0xe6]
.code32
madds %e14, %e6, %d15, %d0

# CHECK-INST: madds %e14, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xea,0xe6]
.code32
madds %e14, %e6, %d15, %d1

# CHECK-INST: madds %e14, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xea,0xe6]
.code32
madds %e14, %e6, %d15, %d14

# CHECK-INST: madds %e14, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xea,0xe6]
.code32
madds %e14, %e6, %d15, %d15

# CHECK-INST: madds %e14, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xea,0xee]
.code32
madds %e14, %e14, %d0, %d0

# CHECK-INST: madds %e14, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xea,0xee]
.code32
madds %e14, %e14, %d0, %d1

# CHECK-INST: madds %e14, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xea,0xee]
.code32
madds %e14, %e14, %d0, %d14

# CHECK-INST: madds %e14, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xea,0xee]
.code32
madds %e14, %e14, %d0, %d15

# CHECK-INST: madds %e14, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xea,0xee]
.code32
madds %e14, %e14, %d1, %d0

# CHECK-INST: madds %e14, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xea,0xee]
.code32
madds %e14, %e14, %d1, %d1

# CHECK-INST: madds %e14, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xea,0xee]
.code32
madds %e14, %e14, %d1, %d14

# CHECK-INST: madds %e14, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xea,0xee]
.code32
madds %e14, %e14, %d1, %d15

# CHECK-INST: madds %e14, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xea,0xee]
.code32
madds %e14, %e14, %d14, %d0

# CHECK-INST: madds %e14, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xea,0xee]
.code32
madds %e14, %e14, %d14, %d1

# CHECK-INST: madds %e14, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xea,0xee]
.code32
madds %e14, %e14, %d14, %d14

# CHECK-INST: madds %e14, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xea,0xee]
.code32
madds %e14, %e14, %d14, %d15

# CHECK-INST: madds %e14, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xea,0xee]
.code32
madds %e14, %e14, %d15, %d0

# CHECK-INST: madds %e14, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xea,0xee]
.code32
madds %e14, %e14, %d15, %d1

# CHECK-INST: madds %e14, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xea,0xee]
.code32
madds %e14, %e14, %d15, %d14

# CHECK-INST: madds %e14, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xea,0xee]
.code32
madds %e14, %e14, %d15, %d15

# CHECK-INST: madds %e0, %e0, %d0, -256
# CHECK: encoding: [0x13,0x00,0xf0,0x00]
.code32
madds %e0, %e0, %d0, -256

# CHECK-INST: madds %e0, %e0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xf7,0x00]
.code32
madds %e0, %e0, %d0, -129

# CHECK-INST: madds %e0, %e0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xff,0x00]
.code32
madds %e0, %e0, %d0, -1

# CHECK-INST: madds %e0, %e0, %d0, 0
# CHECK: encoding: [0x13,0x00,0xe0,0x00]
.code32
madds %e0, %e0, %d0, 0

# CHECK-INST: madds %e0, %e0, %d0, 1
# CHECK: encoding: [0x13,0x10,0xe0,0x00]
.code32
madds %e0, %e0, %d0, 1

# CHECK-INST: madds %e0, %e0, %d0, 128
# CHECK: encoding: [0x13,0x00,0xe8,0x00]
.code32
madds %e0, %e0, %d0, 128

# CHECK-INST: madds %e0, %e0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xef,0x00]
.code32
madds %e0, %e0, %d0, 255

# CHECK-INST: madds %e0, %e0, %d1, -256
# CHECK: encoding: [0x13,0x01,0xf0,0x00]
.code32
madds %e0, %e0, %d1, -256

# CHECK-INST: madds %e0, %e0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xf7,0x00]
.code32
madds %e0, %e0, %d1, -129

# CHECK-INST: madds %e0, %e0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xff,0x00]
.code32
madds %e0, %e0, %d1, -1

# CHECK-INST: madds %e0, %e0, %d1, 0
# CHECK: encoding: [0x13,0x01,0xe0,0x00]
.code32
madds %e0, %e0, %d1, 0

# CHECK-INST: madds %e0, %e0, %d1, 1
# CHECK: encoding: [0x13,0x11,0xe0,0x00]
.code32
madds %e0, %e0, %d1, 1

# CHECK-INST: madds %e0, %e0, %d1, 128
# CHECK: encoding: [0x13,0x01,0xe8,0x00]
.code32
madds %e0, %e0, %d1, 128

# CHECK-INST: madds %e0, %e0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xef,0x00]
.code32
madds %e0, %e0, %d1, 255

# CHECK-INST: madds %e0, %e0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xf0,0x00]
.code32
madds %e0, %e0, %d14, -256

# CHECK-INST: madds %e0, %e0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xf7,0x00]
.code32
madds %e0, %e0, %d14, -129

# CHECK-INST: madds %e0, %e0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xff,0x00]
.code32
madds %e0, %e0, %d14, -1

# CHECK-INST: madds %e0, %e0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xe0,0x00]
.code32
madds %e0, %e0, %d14, 0

# CHECK-INST: madds %e0, %e0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xe0,0x00]
.code32
madds %e0, %e0, %d14, 1

# CHECK-INST: madds %e0, %e0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xe8,0x00]
.code32
madds %e0, %e0, %d14, 128

# CHECK-INST: madds %e0, %e0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xef,0x00]
.code32
madds %e0, %e0, %d14, 255

# CHECK-INST: madds %e0, %e0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xf0,0x00]
.code32
madds %e0, %e0, %d15, -256

# CHECK-INST: madds %e0, %e0, %d15, -129
# CHECK: encoding: [0x13,0xff,0xf7,0x00]
.code32
madds %e0, %e0, %d15, -129

# CHECK-INST: madds %e0, %e0, %d15, -1
# CHECK: encoding: [0x13,0xff,0xff,0x00]
.code32
madds %e0, %e0, %d15, -1

# CHECK-INST: madds %e0, %e0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xe0,0x00]
.code32
madds %e0, %e0, %d15, 0

# CHECK-INST: madds %e0, %e0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xe0,0x00]
.code32
madds %e0, %e0, %d15, 1

# CHECK-INST: madds %e0, %e0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xe8,0x00]
.code32
madds %e0, %e0, %d15, 128

# CHECK-INST: madds %e0, %e0, %d15, 255
# CHECK: encoding: [0x13,0xff,0xef,0x00]
.code32
madds %e0, %e0, %d15, 255

# CHECK-INST: madds %e0, %e6, %d0, -256
# CHECK: encoding: [0x13,0x00,0xf0,0x06]
.code32
madds %e0, %e6, %d0, -256

# CHECK-INST: madds %e0, %e6, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xf7,0x06]
.code32
madds %e0, %e6, %d0, -129

# CHECK-INST: madds %e0, %e6, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xff,0x06]
.code32
madds %e0, %e6, %d0, -1

# CHECK-INST: madds %e0, %e6, %d0, 0
# CHECK: encoding: [0x13,0x00,0xe0,0x06]
.code32
madds %e0, %e6, %d0, 0

# CHECK-INST: madds %e0, %e6, %d0, 1
# CHECK: encoding: [0x13,0x10,0xe0,0x06]
.code32
madds %e0, %e6, %d0, 1

# CHECK-INST: madds %e0, %e6, %d0, 128
# CHECK: encoding: [0x13,0x00,0xe8,0x06]
.code32
madds %e0, %e6, %d0, 128

# CHECK-INST: madds %e0, %e6, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xef,0x06]
.code32
madds %e0, %e6, %d0, 255

# CHECK-INST: madds %e0, %e6, %d1, -256
# CHECK: encoding: [0x13,0x01,0xf0,0x06]
.code32
madds %e0, %e6, %d1, -256

# CHECK-INST: madds %e0, %e6, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xf7,0x06]
.code32
madds %e0, %e6, %d1, -129

# CHECK-INST: madds %e0, %e6, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xff,0x06]
.code32
madds %e0, %e6, %d1, -1

# CHECK-INST: madds %e0, %e6, %d1, 0
# CHECK: encoding: [0x13,0x01,0xe0,0x06]
.code32
madds %e0, %e6, %d1, 0

# CHECK-INST: madds %e0, %e6, %d1, 1
# CHECK: encoding: [0x13,0x11,0xe0,0x06]
.code32
madds %e0, %e6, %d1, 1

# CHECK-INST: madds %e0, %e6, %d1, 128
# CHECK: encoding: [0x13,0x01,0xe8,0x06]
.code32
madds %e0, %e6, %d1, 128

# CHECK-INST: madds %e0, %e6, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xef,0x06]
.code32
madds %e0, %e6, %d1, 255

# CHECK-INST: madds %e0, %e6, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xf0,0x06]
.code32
madds %e0, %e6, %d14, -256

# CHECK-INST: madds %e0, %e6, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xf7,0x06]
.code32
madds %e0, %e6, %d14, -129

# CHECK-INST: madds %e0, %e6, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xff,0x06]
.code32
madds %e0, %e6, %d14, -1

# CHECK-INST: madds %e0, %e6, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xe0,0x06]
.code32
madds %e0, %e6, %d14, 0

# CHECK-INST: madds %e0, %e6, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xe0,0x06]
.code32
madds %e0, %e6, %d14, 1

# CHECK-INST: madds %e0, %e6, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xe8,0x06]
.code32
madds %e0, %e6, %d14, 128

# CHECK-INST: madds %e0, %e6, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xef,0x06]
.code32
madds %e0, %e6, %d14, 255

# CHECK-INST: madds %e0, %e6, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xf0,0x06]
.code32
madds %e0, %e6, %d15, -256

# CHECK-INST: madds %e0, %e6, %d15, -129
# CHECK: encoding: [0x13,0xff,0xf7,0x06]
.code32
madds %e0, %e6, %d15, -129

# CHECK-INST: madds %e0, %e6, %d15, -1
# CHECK: encoding: [0x13,0xff,0xff,0x06]
.code32
madds %e0, %e6, %d15, -1

# CHECK-INST: madds %e0, %e6, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xe0,0x06]
.code32
madds %e0, %e6, %d15, 0

# CHECK-INST: madds %e0, %e6, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xe0,0x06]
.code32
madds %e0, %e6, %d15, 1

# CHECK-INST: madds %e0, %e6, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xe8,0x06]
.code32
madds %e0, %e6, %d15, 128

# CHECK-INST: madds %e0, %e6, %d15, 255
# CHECK: encoding: [0x13,0xff,0xef,0x06]
.code32
madds %e0, %e6, %d15, 255

# CHECK-INST: madds %e0, %e14, %d0, -256
# CHECK: encoding: [0x13,0x00,0xf0,0x0e]
.code32
madds %e0, %e14, %d0, -256

# CHECK-INST: madds %e0, %e14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xf7,0x0e]
.code32
madds %e0, %e14, %d0, -129

# CHECK-INST: madds %e0, %e14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xff,0x0e]
.code32
madds %e0, %e14, %d0, -1

# CHECK-INST: madds %e0, %e14, %d0, 0
# CHECK: encoding: [0x13,0x00,0xe0,0x0e]
.code32
madds %e0, %e14, %d0, 0

# CHECK-INST: madds %e0, %e14, %d0, 1
# CHECK: encoding: [0x13,0x10,0xe0,0x0e]
.code32
madds %e0, %e14, %d0, 1

# CHECK-INST: madds %e0, %e14, %d0, 128
# CHECK: encoding: [0x13,0x00,0xe8,0x0e]
.code32
madds %e0, %e14, %d0, 128

# CHECK-INST: madds %e0, %e14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xef,0x0e]
.code32
madds %e0, %e14, %d0, 255

# CHECK-INST: madds %e0, %e14, %d1, -256
# CHECK: encoding: [0x13,0x01,0xf0,0x0e]
.code32
madds %e0, %e14, %d1, -256

# CHECK-INST: madds %e0, %e14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xf7,0x0e]
.code32
madds %e0, %e14, %d1, -129

# CHECK-INST: madds %e0, %e14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xff,0x0e]
.code32
madds %e0, %e14, %d1, -1

# CHECK-INST: madds %e0, %e14, %d1, 0
# CHECK: encoding: [0x13,0x01,0xe0,0x0e]
.code32
madds %e0, %e14, %d1, 0

# CHECK-INST: madds %e0, %e14, %d1, 1
# CHECK: encoding: [0x13,0x11,0xe0,0x0e]
.code32
madds %e0, %e14, %d1, 1

# CHECK-INST: madds %e0, %e14, %d1, 128
# CHECK: encoding: [0x13,0x01,0xe8,0x0e]
.code32
madds %e0, %e14, %d1, 128

# CHECK-INST: madds %e0, %e14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xef,0x0e]
.code32
madds %e0, %e14, %d1, 255

# CHECK-INST: madds %e0, %e14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xf0,0x0e]
.code32
madds %e0, %e14, %d14, -256

# CHECK-INST: madds %e0, %e14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xf7,0x0e]
.code32
madds %e0, %e14, %d14, -129

# CHECK-INST: madds %e0, %e14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xff,0x0e]
.code32
madds %e0, %e14, %d14, -1

# CHECK-INST: madds %e0, %e14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xe0,0x0e]
.code32
madds %e0, %e14, %d14, 0

# CHECK-INST: madds %e0, %e14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xe0,0x0e]
.code32
madds %e0, %e14, %d14, 1

# CHECK-INST: madds %e0, %e14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xe8,0x0e]
.code32
madds %e0, %e14, %d14, 128

# CHECK-INST: madds %e0, %e14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xef,0x0e]
.code32
madds %e0, %e14, %d14, 255

# CHECK-INST: madds %e0, %e14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xf0,0x0e]
.code32
madds %e0, %e14, %d15, -256

# CHECK-INST: madds %e0, %e14, %d15, -129
# CHECK: encoding: [0x13,0xff,0xf7,0x0e]
.code32
madds %e0, %e14, %d15, -129

# CHECK-INST: madds %e0, %e14, %d15, -1
# CHECK: encoding: [0x13,0xff,0xff,0x0e]
.code32
madds %e0, %e14, %d15, -1

# CHECK-INST: madds %e0, %e14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xe0,0x0e]
.code32
madds %e0, %e14, %d15, 0

# CHECK-INST: madds %e0, %e14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xe0,0x0e]
.code32
madds %e0, %e14, %d15, 1

# CHECK-INST: madds %e0, %e14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xe8,0x0e]
.code32
madds %e0, %e14, %d15, 128

# CHECK-INST: madds %e0, %e14, %d15, 255
# CHECK: encoding: [0x13,0xff,0xef,0x0e]
.code32
madds %e0, %e14, %d15, 255

# CHECK-INST: madds %e6, %e0, %d0, -256
# CHECK: encoding: [0x13,0x00,0xf0,0x60]
.code32
madds %e6, %e0, %d0, -256

# CHECK-INST: madds %e6, %e0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xf7,0x60]
.code32
madds %e6, %e0, %d0, -129

# CHECK-INST: madds %e6, %e0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xff,0x60]
.code32
madds %e6, %e0, %d0, -1

# CHECK-INST: madds %e6, %e0, %d0, 0
# CHECK: encoding: [0x13,0x00,0xe0,0x60]
.code32
madds %e6, %e0, %d0, 0

# CHECK-INST: madds %e6, %e0, %d0, 1
# CHECK: encoding: [0x13,0x10,0xe0,0x60]
.code32
madds %e6, %e0, %d0, 1

# CHECK-INST: madds %e6, %e0, %d0, 128
# CHECK: encoding: [0x13,0x00,0xe8,0x60]
.code32
madds %e6, %e0, %d0, 128

# CHECK-INST: madds %e6, %e0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xef,0x60]
.code32
madds %e6, %e0, %d0, 255

# CHECK-INST: madds %e6, %e0, %d1, -256
# CHECK: encoding: [0x13,0x01,0xf0,0x60]
.code32
madds %e6, %e0, %d1, -256

# CHECK-INST: madds %e6, %e0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xf7,0x60]
.code32
madds %e6, %e0, %d1, -129

# CHECK-INST: madds %e6, %e0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xff,0x60]
.code32
madds %e6, %e0, %d1, -1

# CHECK-INST: madds %e6, %e0, %d1, 0
# CHECK: encoding: [0x13,0x01,0xe0,0x60]
.code32
madds %e6, %e0, %d1, 0

# CHECK-INST: madds %e6, %e0, %d1, 1
# CHECK: encoding: [0x13,0x11,0xe0,0x60]
.code32
madds %e6, %e0, %d1, 1

# CHECK-INST: madds %e6, %e0, %d1, 128
# CHECK: encoding: [0x13,0x01,0xe8,0x60]
.code32
madds %e6, %e0, %d1, 128

# CHECK-INST: madds %e6, %e0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xef,0x60]
.code32
madds %e6, %e0, %d1, 255

# CHECK-INST: madds %e6, %e0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xf0,0x60]
.code32
madds %e6, %e0, %d14, -256

# CHECK-INST: madds %e6, %e0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xf7,0x60]
.code32
madds %e6, %e0, %d14, -129

# CHECK-INST: madds %e6, %e0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xff,0x60]
.code32
madds %e6, %e0, %d14, -1

# CHECK-INST: madds %e6, %e0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xe0,0x60]
.code32
madds %e6, %e0, %d14, 0

# CHECK-INST: madds %e6, %e0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xe0,0x60]
.code32
madds %e6, %e0, %d14, 1

# CHECK-INST: madds %e6, %e0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xe8,0x60]
.code32
madds %e6, %e0, %d14, 128

# CHECK-INST: madds %e6, %e0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xef,0x60]
.code32
madds %e6, %e0, %d14, 255

# CHECK-INST: madds %e6, %e0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xf0,0x60]
.code32
madds %e6, %e0, %d15, -256

# CHECK-INST: madds %e6, %e0, %d15, -129
# CHECK: encoding: [0x13,0xff,0xf7,0x60]
.code32
madds %e6, %e0, %d15, -129

# CHECK-INST: madds %e6, %e0, %d15, -1
# CHECK: encoding: [0x13,0xff,0xff,0x60]
.code32
madds %e6, %e0, %d15, -1

# CHECK-INST: madds %e6, %e0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xe0,0x60]
.code32
madds %e6, %e0, %d15, 0

# CHECK-INST: madds %e6, %e0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xe0,0x60]
.code32
madds %e6, %e0, %d15, 1

# CHECK-INST: madds %e6, %e0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xe8,0x60]
.code32
madds %e6, %e0, %d15, 128

# CHECK-INST: madds %e6, %e0, %d15, 255
# CHECK: encoding: [0x13,0xff,0xef,0x60]
.code32
madds %e6, %e0, %d15, 255

# CHECK-INST: madds %e6, %e6, %d0, -256
# CHECK: encoding: [0x13,0x00,0xf0,0x66]
.code32
madds %e6, %e6, %d0, -256

# CHECK-INST: madds %e6, %e6, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xf7,0x66]
.code32
madds %e6, %e6, %d0, -129

# CHECK-INST: madds %e6, %e6, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xff,0x66]
.code32
madds %e6, %e6, %d0, -1

# CHECK-INST: madds %e6, %e6, %d0, 0
# CHECK: encoding: [0x13,0x00,0xe0,0x66]
.code32
madds %e6, %e6, %d0, 0

# CHECK-INST: madds %e6, %e6, %d0, 1
# CHECK: encoding: [0x13,0x10,0xe0,0x66]
.code32
madds %e6, %e6, %d0, 1

# CHECK-INST: madds %e6, %e6, %d0, 128
# CHECK: encoding: [0x13,0x00,0xe8,0x66]
.code32
madds %e6, %e6, %d0, 128

# CHECK-INST: madds %e6, %e6, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xef,0x66]
.code32
madds %e6, %e6, %d0, 255

# CHECK-INST: madds %e6, %e6, %d1, -256
# CHECK: encoding: [0x13,0x01,0xf0,0x66]
.code32
madds %e6, %e6, %d1, -256

# CHECK-INST: madds %e6, %e6, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xf7,0x66]
.code32
madds %e6, %e6, %d1, -129

# CHECK-INST: madds %e6, %e6, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xff,0x66]
.code32
madds %e6, %e6, %d1, -1

# CHECK-INST: madds %e6, %e6, %d1, 0
# CHECK: encoding: [0x13,0x01,0xe0,0x66]
.code32
madds %e6, %e6, %d1, 0

# CHECK-INST: madds %e6, %e6, %d1, 1
# CHECK: encoding: [0x13,0x11,0xe0,0x66]
.code32
madds %e6, %e6, %d1, 1

# CHECK-INST: madds %e6, %e6, %d1, 128
# CHECK: encoding: [0x13,0x01,0xe8,0x66]
.code32
madds %e6, %e6, %d1, 128

# CHECK-INST: madds %e6, %e6, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xef,0x66]
.code32
madds %e6, %e6, %d1, 255

# CHECK-INST: madds %e6, %e6, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xf0,0x66]
.code32
madds %e6, %e6, %d14, -256

# CHECK-INST: madds %e6, %e6, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xf7,0x66]
.code32
madds %e6, %e6, %d14, -129

# CHECK-INST: madds %e6, %e6, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xff,0x66]
.code32
madds %e6, %e6, %d14, -1

# CHECK-INST: madds %e6, %e6, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xe0,0x66]
.code32
madds %e6, %e6, %d14, 0

# CHECK-INST: madds %e6, %e6, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xe0,0x66]
.code32
madds %e6, %e6, %d14, 1

# CHECK-INST: madds %e6, %e6, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xe8,0x66]
.code32
madds %e6, %e6, %d14, 128

# CHECK-INST: madds %e6, %e6, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xef,0x66]
.code32
madds %e6, %e6, %d14, 255

# CHECK-INST: madds %e6, %e6, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xf0,0x66]
.code32
madds %e6, %e6, %d15, -256

# CHECK-INST: madds %e6, %e6, %d15, -129
# CHECK: encoding: [0x13,0xff,0xf7,0x66]
.code32
madds %e6, %e6, %d15, -129

# CHECK-INST: madds %e6, %e6, %d15, -1
# CHECK: encoding: [0x13,0xff,0xff,0x66]
.code32
madds %e6, %e6, %d15, -1

# CHECK-INST: madds %e6, %e6, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xe0,0x66]
.code32
madds %e6, %e6, %d15, 0

# CHECK-INST: madds %e6, %e6, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xe0,0x66]
.code32
madds %e6, %e6, %d15, 1

# CHECK-INST: madds %e6, %e6, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xe8,0x66]
.code32
madds %e6, %e6, %d15, 128

# CHECK-INST: madds %e6, %e6, %d15, 255
# CHECK: encoding: [0x13,0xff,0xef,0x66]
.code32
madds %e6, %e6, %d15, 255

# CHECK-INST: madds %e6, %e14, %d0, -256
# CHECK: encoding: [0x13,0x00,0xf0,0x6e]
.code32
madds %e6, %e14, %d0, -256

# CHECK-INST: madds %e6, %e14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xf7,0x6e]
.code32
madds %e6, %e14, %d0, -129

# CHECK-INST: madds %e6, %e14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xff,0x6e]
.code32
madds %e6, %e14, %d0, -1

# CHECK-INST: madds %e6, %e14, %d0, 0
# CHECK: encoding: [0x13,0x00,0xe0,0x6e]
.code32
madds %e6, %e14, %d0, 0

# CHECK-INST: madds %e6, %e14, %d0, 1
# CHECK: encoding: [0x13,0x10,0xe0,0x6e]
.code32
madds %e6, %e14, %d0, 1

# CHECK-INST: madds %e6, %e14, %d0, 128
# CHECK: encoding: [0x13,0x00,0xe8,0x6e]
.code32
madds %e6, %e14, %d0, 128

# CHECK-INST: madds %e6, %e14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xef,0x6e]
.code32
madds %e6, %e14, %d0, 255

# CHECK-INST: madds %e6, %e14, %d1, -256
# CHECK: encoding: [0x13,0x01,0xf0,0x6e]
.code32
madds %e6, %e14, %d1, -256

# CHECK-INST: madds %e6, %e14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xf7,0x6e]
.code32
madds %e6, %e14, %d1, -129

# CHECK-INST: madds %e6, %e14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xff,0x6e]
.code32
madds %e6, %e14, %d1, -1

# CHECK-INST: madds %e6, %e14, %d1, 0
# CHECK: encoding: [0x13,0x01,0xe0,0x6e]
.code32
madds %e6, %e14, %d1, 0

# CHECK-INST: madds %e6, %e14, %d1, 1
# CHECK: encoding: [0x13,0x11,0xe0,0x6e]
.code32
madds %e6, %e14, %d1, 1

# CHECK-INST: madds %e6, %e14, %d1, 128
# CHECK: encoding: [0x13,0x01,0xe8,0x6e]
.code32
madds %e6, %e14, %d1, 128

# CHECK-INST: madds %e6, %e14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xef,0x6e]
.code32
madds %e6, %e14, %d1, 255

# CHECK-INST: madds %e6, %e14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xf0,0x6e]
.code32
madds %e6, %e14, %d14, -256

# CHECK-INST: madds %e6, %e14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xf7,0x6e]
.code32
madds %e6, %e14, %d14, -129

# CHECK-INST: madds %e6, %e14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xff,0x6e]
.code32
madds %e6, %e14, %d14, -1

# CHECK-INST: madds %e6, %e14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xe0,0x6e]
.code32
madds %e6, %e14, %d14, 0

# CHECK-INST: madds %e6, %e14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xe0,0x6e]
.code32
madds %e6, %e14, %d14, 1

# CHECK-INST: madds %e6, %e14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xe8,0x6e]
.code32
madds %e6, %e14, %d14, 128

# CHECK-INST: madds %e6, %e14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xef,0x6e]
.code32
madds %e6, %e14, %d14, 255

# CHECK-INST: madds %e6, %e14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xf0,0x6e]
.code32
madds %e6, %e14, %d15, -256

# CHECK-INST: madds %e6, %e14, %d15, -129
# CHECK: encoding: [0x13,0xff,0xf7,0x6e]
.code32
madds %e6, %e14, %d15, -129

# CHECK-INST: madds %e6, %e14, %d15, -1
# CHECK: encoding: [0x13,0xff,0xff,0x6e]
.code32
madds %e6, %e14, %d15, -1

# CHECK-INST: madds %e6, %e14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xe0,0x6e]
.code32
madds %e6, %e14, %d15, 0

# CHECK-INST: madds %e6, %e14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xe0,0x6e]
.code32
madds %e6, %e14, %d15, 1

# CHECK-INST: madds %e6, %e14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xe8,0x6e]
.code32
madds %e6, %e14, %d15, 128

# CHECK-INST: madds %e6, %e14, %d15, 255
# CHECK: encoding: [0x13,0xff,0xef,0x6e]
.code32
madds %e6, %e14, %d15, 255

# CHECK-INST: madds %e14, %e0, %d0, -256
# CHECK: encoding: [0x13,0x00,0xf0,0xe0]
.code32
madds %e14, %e0, %d0, -256

# CHECK-INST: madds %e14, %e0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xf7,0xe0]
.code32
madds %e14, %e0, %d0, -129

# CHECK-INST: madds %e14, %e0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xff,0xe0]
.code32
madds %e14, %e0, %d0, -1

# CHECK-INST: madds %e14, %e0, %d0, 0
# CHECK: encoding: [0x13,0x00,0xe0,0xe0]
.code32
madds %e14, %e0, %d0, 0

# CHECK-INST: madds %e14, %e0, %d0, 1
# CHECK: encoding: [0x13,0x10,0xe0,0xe0]
.code32
madds %e14, %e0, %d0, 1

# CHECK-INST: madds %e14, %e0, %d0, 128
# CHECK: encoding: [0x13,0x00,0xe8,0xe0]
.code32
madds %e14, %e0, %d0, 128

# CHECK-INST: madds %e14, %e0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xef,0xe0]
.code32
madds %e14, %e0, %d0, 255

# CHECK-INST: madds %e14, %e0, %d1, -256
# CHECK: encoding: [0x13,0x01,0xf0,0xe0]
.code32
madds %e14, %e0, %d1, -256

# CHECK-INST: madds %e14, %e0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xf7,0xe0]
.code32
madds %e14, %e0, %d1, -129

# CHECK-INST: madds %e14, %e0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xff,0xe0]
.code32
madds %e14, %e0, %d1, -1

# CHECK-INST: madds %e14, %e0, %d1, 0
# CHECK: encoding: [0x13,0x01,0xe0,0xe0]
.code32
madds %e14, %e0, %d1, 0

# CHECK-INST: madds %e14, %e0, %d1, 1
# CHECK: encoding: [0x13,0x11,0xe0,0xe0]
.code32
madds %e14, %e0, %d1, 1

# CHECK-INST: madds %e14, %e0, %d1, 128
# CHECK: encoding: [0x13,0x01,0xe8,0xe0]
.code32
madds %e14, %e0, %d1, 128

# CHECK-INST: madds %e14, %e0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xef,0xe0]
.code32
madds %e14, %e0, %d1, 255

# CHECK-INST: madds %e14, %e0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xf0,0xe0]
.code32
madds %e14, %e0, %d14, -256

# CHECK-INST: madds %e14, %e0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xf7,0xe0]
.code32
madds %e14, %e0, %d14, -129

# CHECK-INST: madds %e14, %e0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xff,0xe0]
.code32
madds %e14, %e0, %d14, -1

# CHECK-INST: madds %e14, %e0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xe0,0xe0]
.code32
madds %e14, %e0, %d14, 0

# CHECK-INST: madds %e14, %e0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xe0,0xe0]
.code32
madds %e14, %e0, %d14, 1

# CHECK-INST: madds %e14, %e0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xe8,0xe0]
.code32
madds %e14, %e0, %d14, 128

# CHECK-INST: madds %e14, %e0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xef,0xe0]
.code32
madds %e14, %e0, %d14, 255

# CHECK-INST: madds %e14, %e0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xf0,0xe0]
.code32
madds %e14, %e0, %d15, -256

# CHECK-INST: madds %e14, %e0, %d15, -129
# CHECK: encoding: [0x13,0xff,0xf7,0xe0]
.code32
madds %e14, %e0, %d15, -129

# CHECK-INST: madds %e14, %e0, %d15, -1
# CHECK: encoding: [0x13,0xff,0xff,0xe0]
.code32
madds %e14, %e0, %d15, -1

# CHECK-INST: madds %e14, %e0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xe0,0xe0]
.code32
madds %e14, %e0, %d15, 0

# CHECK-INST: madds %e14, %e0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xe0,0xe0]
.code32
madds %e14, %e0, %d15, 1

# CHECK-INST: madds %e14, %e0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xe8,0xe0]
.code32
madds %e14, %e0, %d15, 128

# CHECK-INST: madds %e14, %e0, %d15, 255
# CHECK: encoding: [0x13,0xff,0xef,0xe0]
.code32
madds %e14, %e0, %d15, 255

# CHECK-INST: madds %e14, %e6, %d0, -256
# CHECK: encoding: [0x13,0x00,0xf0,0xe6]
.code32
madds %e14, %e6, %d0, -256

# CHECK-INST: madds %e14, %e6, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xf7,0xe6]
.code32
madds %e14, %e6, %d0, -129

# CHECK-INST: madds %e14, %e6, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xff,0xe6]
.code32
madds %e14, %e6, %d0, -1

# CHECK-INST: madds %e14, %e6, %d0, 0
# CHECK: encoding: [0x13,0x00,0xe0,0xe6]
.code32
madds %e14, %e6, %d0, 0

# CHECK-INST: madds %e14, %e6, %d0, 1
# CHECK: encoding: [0x13,0x10,0xe0,0xe6]
.code32
madds %e14, %e6, %d0, 1

# CHECK-INST: madds %e14, %e6, %d0, 128
# CHECK: encoding: [0x13,0x00,0xe8,0xe6]
.code32
madds %e14, %e6, %d0, 128

# CHECK-INST: madds %e14, %e6, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xef,0xe6]
.code32
madds %e14, %e6, %d0, 255

# CHECK-INST: madds %e14, %e6, %d1, -256
# CHECK: encoding: [0x13,0x01,0xf0,0xe6]
.code32
madds %e14, %e6, %d1, -256

# CHECK-INST: madds %e14, %e6, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xf7,0xe6]
.code32
madds %e14, %e6, %d1, -129

# CHECK-INST: madds %e14, %e6, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xff,0xe6]
.code32
madds %e14, %e6, %d1, -1

# CHECK-INST: madds %e14, %e6, %d1, 0
# CHECK: encoding: [0x13,0x01,0xe0,0xe6]
.code32
madds %e14, %e6, %d1, 0

# CHECK-INST: madds %e14, %e6, %d1, 1
# CHECK: encoding: [0x13,0x11,0xe0,0xe6]
.code32
madds %e14, %e6, %d1, 1

# CHECK-INST: madds %e14, %e6, %d1, 128
# CHECK: encoding: [0x13,0x01,0xe8,0xe6]
.code32
madds %e14, %e6, %d1, 128

# CHECK-INST: madds %e14, %e6, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xef,0xe6]
.code32
madds %e14, %e6, %d1, 255

# CHECK-INST: madds %e14, %e6, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xf0,0xe6]
.code32
madds %e14, %e6, %d14, -256

# CHECK-INST: madds %e14, %e6, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xf7,0xe6]
.code32
madds %e14, %e6, %d14, -129

# CHECK-INST: madds %e14, %e6, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xff,0xe6]
.code32
madds %e14, %e6, %d14, -1

# CHECK-INST: madds %e14, %e6, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xe0,0xe6]
.code32
madds %e14, %e6, %d14, 0

# CHECK-INST: madds %e14, %e6, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xe0,0xe6]
.code32
madds %e14, %e6, %d14, 1

# CHECK-INST: madds %e14, %e6, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xe8,0xe6]
.code32
madds %e14, %e6, %d14, 128

# CHECK-INST: madds %e14, %e6, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xef,0xe6]
.code32
madds %e14, %e6, %d14, 255

# CHECK-INST: madds %e14, %e6, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xf0,0xe6]
.code32
madds %e14, %e6, %d15, -256

# CHECK-INST: madds %e14, %e6, %d15, -129
# CHECK: encoding: [0x13,0xff,0xf7,0xe6]
.code32
madds %e14, %e6, %d15, -129

# CHECK-INST: madds %e14, %e6, %d15, -1
# CHECK: encoding: [0x13,0xff,0xff,0xe6]
.code32
madds %e14, %e6, %d15, -1

# CHECK-INST: madds %e14, %e6, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xe0,0xe6]
.code32
madds %e14, %e6, %d15, 0

# CHECK-INST: madds %e14, %e6, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xe0,0xe6]
.code32
madds %e14, %e6, %d15, 1

# CHECK-INST: madds %e14, %e6, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xe8,0xe6]
.code32
madds %e14, %e6, %d15, 128

# CHECK-INST: madds %e14, %e6, %d15, 255
# CHECK: encoding: [0x13,0xff,0xef,0xe6]
.code32
madds %e14, %e6, %d15, 255

# CHECK-INST: madds %e14, %e14, %d0, -256
# CHECK: encoding: [0x13,0x00,0xf0,0xee]
.code32
madds %e14, %e14, %d0, -256

# CHECK-INST: madds %e14, %e14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xf7,0xee]
.code32
madds %e14, %e14, %d0, -129

# CHECK-INST: madds %e14, %e14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xff,0xee]
.code32
madds %e14, %e14, %d0, -1

# CHECK-INST: madds %e14, %e14, %d0, 0
# CHECK: encoding: [0x13,0x00,0xe0,0xee]
.code32
madds %e14, %e14, %d0, 0

# CHECK-INST: madds %e14, %e14, %d0, 1
# CHECK: encoding: [0x13,0x10,0xe0,0xee]
.code32
madds %e14, %e14, %d0, 1

# CHECK-INST: madds %e14, %e14, %d0, 128
# CHECK: encoding: [0x13,0x00,0xe8,0xee]
.code32
madds %e14, %e14, %d0, 128

# CHECK-INST: madds %e14, %e14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xef,0xee]
.code32
madds %e14, %e14, %d0, 255

# CHECK-INST: madds %e14, %e14, %d1, -256
# CHECK: encoding: [0x13,0x01,0xf0,0xee]
.code32
madds %e14, %e14, %d1, -256

# CHECK-INST: madds %e14, %e14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xf7,0xee]
.code32
madds %e14, %e14, %d1, -129

# CHECK-INST: madds %e14, %e14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xff,0xee]
.code32
madds %e14, %e14, %d1, -1

# CHECK-INST: madds %e14, %e14, %d1, 0
# CHECK: encoding: [0x13,0x01,0xe0,0xee]
.code32
madds %e14, %e14, %d1, 0

# CHECK-INST: madds %e14, %e14, %d1, 1
# CHECK: encoding: [0x13,0x11,0xe0,0xee]
.code32
madds %e14, %e14, %d1, 1

# CHECK-INST: madds %e14, %e14, %d1, 128
# CHECK: encoding: [0x13,0x01,0xe8,0xee]
.code32
madds %e14, %e14, %d1, 128

# CHECK-INST: madds %e14, %e14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xef,0xee]
.code32
madds %e14, %e14, %d1, 255

# CHECK-INST: madds %e14, %e14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xf0,0xee]
.code32
madds %e14, %e14, %d14, -256

# CHECK-INST: madds %e14, %e14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xf7,0xee]
.code32
madds %e14, %e14, %d14, -129

# CHECK-INST: madds %e14, %e14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xff,0xee]
.code32
madds %e14, %e14, %d14, -1

# CHECK-INST: madds %e14, %e14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xe0,0xee]
.code32
madds %e14, %e14, %d14, 0

# CHECK-INST: madds %e14, %e14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xe0,0xee]
.code32
madds %e14, %e14, %d14, 1

# CHECK-INST: madds %e14, %e14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xe8,0xee]
.code32
madds %e14, %e14, %d14, 128

# CHECK-INST: madds %e14, %e14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xef,0xee]
.code32
madds %e14, %e14, %d14, 255

# CHECK-INST: madds %e14, %e14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xf0,0xee]
.code32
madds %e14, %e14, %d15, -256

# CHECK-INST: madds %e14, %e14, %d15, -129
# CHECK: encoding: [0x13,0xff,0xf7,0xee]
.code32
madds %e14, %e14, %d15, -129

# CHECK-INST: madds %e14, %e14, %d15, -1
# CHECK: encoding: [0x13,0xff,0xff,0xee]
.code32
madds %e14, %e14, %d15, -1

# CHECK-INST: madds %e14, %e14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xe0,0xee]
.code32
madds %e14, %e14, %d15, 0

# CHECK-INST: madds %e14, %e14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xe0,0xee]
.code32
madds %e14, %e14, %d15, 1

# CHECK-INST: madds %e14, %e14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xe8,0xee]
.code32
madds %e14, %e14, %d15, 128

# CHECK-INST: madds %e14, %e14, %d15, 255
# CHECK: encoding: [0x13,0xff,0xef,0xee]
.code32
madds %e14, %e14, %d15, 255

# CHECK-INST: madds.u %d0, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0x00]
.code32
madds.u %d0, %d0, %d0, %d0

# CHECK-INST: madds.u %d0, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0x00]
.code32
madds.u %d0, %d0, %d0, %d1

# CHECK-INST: madds.u %d0, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0x00]
.code32
madds.u %d0, %d0, %d0, %d14

# CHECK-INST: madds.u %d0, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0x00]
.code32
madds.u %d0, %d0, %d0, %d15

# CHECK-INST: madds.u %d0, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0x00]
.code32
madds.u %d0, %d0, %d1, %d0

# CHECK-INST: madds.u %d0, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0x00]
.code32
madds.u %d0, %d0, %d1, %d1

# CHECK-INST: madds.u %d0, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0x00]
.code32
madds.u %d0, %d0, %d1, %d14

# CHECK-INST: madds.u %d0, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0x00]
.code32
madds.u %d0, %d0, %d1, %d15

# CHECK-INST: madds.u %d0, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0x00]
.code32
madds.u %d0, %d0, %d14, %d0

# CHECK-INST: madds.u %d0, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0x00]
.code32
madds.u %d0, %d0, %d14, %d1

# CHECK-INST: madds.u %d0, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0x00]
.code32
madds.u %d0, %d0, %d14, %d14

# CHECK-INST: madds.u %d0, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0x00]
.code32
madds.u %d0, %d0, %d14, %d15

# CHECK-INST: madds.u %d0, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0x00]
.code32
madds.u %d0, %d0, %d15, %d0

# CHECK-INST: madds.u %d0, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0x00]
.code32
madds.u %d0, %d0, %d15, %d1

# CHECK-INST: madds.u %d0, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0x00]
.code32
madds.u %d0, %d0, %d15, %d14

# CHECK-INST: madds.u %d0, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0x00]
.code32
madds.u %d0, %d0, %d15, %d15

# CHECK-INST: madds.u %d0, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0x01]
.code32
madds.u %d0, %d1, %d0, %d0

# CHECK-INST: madds.u %d0, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0x01]
.code32
madds.u %d0, %d1, %d0, %d1

# CHECK-INST: madds.u %d0, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0x01]
.code32
madds.u %d0, %d1, %d0, %d14

# CHECK-INST: madds.u %d0, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0x01]
.code32
madds.u %d0, %d1, %d0, %d15

# CHECK-INST: madds.u %d0, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0x01]
.code32
madds.u %d0, %d1, %d1, %d0

# CHECK-INST: madds.u %d0, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0x01]
.code32
madds.u %d0, %d1, %d1, %d1

# CHECK-INST: madds.u %d0, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0x01]
.code32
madds.u %d0, %d1, %d1, %d14

# CHECK-INST: madds.u %d0, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0x01]
.code32
madds.u %d0, %d1, %d1, %d15

# CHECK-INST: madds.u %d0, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0x01]
.code32
madds.u %d0, %d1, %d14, %d0

# CHECK-INST: madds.u %d0, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0x01]
.code32
madds.u %d0, %d1, %d14, %d1

# CHECK-INST: madds.u %d0, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0x01]
.code32
madds.u %d0, %d1, %d14, %d14

# CHECK-INST: madds.u %d0, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0x01]
.code32
madds.u %d0, %d1, %d14, %d15

# CHECK-INST: madds.u %d0, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0x01]
.code32
madds.u %d0, %d1, %d15, %d0

# CHECK-INST: madds.u %d0, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0x01]
.code32
madds.u %d0, %d1, %d15, %d1

# CHECK-INST: madds.u %d0, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0x01]
.code32
madds.u %d0, %d1, %d15, %d14

# CHECK-INST: madds.u %d0, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0x01]
.code32
madds.u %d0, %d1, %d15, %d15

# CHECK-INST: madds.u %d0, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0x0e]
.code32
madds.u %d0, %d14, %d0, %d0

# CHECK-INST: madds.u %d0, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0x0e]
.code32
madds.u %d0, %d14, %d0, %d1

# CHECK-INST: madds.u %d0, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0x0e]
.code32
madds.u %d0, %d14, %d0, %d14

# CHECK-INST: madds.u %d0, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0x0e]
.code32
madds.u %d0, %d14, %d0, %d15

# CHECK-INST: madds.u %d0, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0x0e]
.code32
madds.u %d0, %d14, %d1, %d0

# CHECK-INST: madds.u %d0, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0x0e]
.code32
madds.u %d0, %d14, %d1, %d1

# CHECK-INST: madds.u %d0, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0x0e]
.code32
madds.u %d0, %d14, %d1, %d14

# CHECK-INST: madds.u %d0, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0x0e]
.code32
madds.u %d0, %d14, %d1, %d15

# CHECK-INST: madds.u %d0, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0x0e]
.code32
madds.u %d0, %d14, %d14, %d0

# CHECK-INST: madds.u %d0, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0x0e]
.code32
madds.u %d0, %d14, %d14, %d1

# CHECK-INST: madds.u %d0, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0x0e]
.code32
madds.u %d0, %d14, %d14, %d14

# CHECK-INST: madds.u %d0, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0x0e]
.code32
madds.u %d0, %d14, %d14, %d15

# CHECK-INST: madds.u %d0, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0x0e]
.code32
madds.u %d0, %d14, %d15, %d0

# CHECK-INST: madds.u %d0, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0x0e]
.code32
madds.u %d0, %d14, %d15, %d1

# CHECK-INST: madds.u %d0, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0x0e]
.code32
madds.u %d0, %d14, %d15, %d14

# CHECK-INST: madds.u %d0, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0x0e]
.code32
madds.u %d0, %d14, %d15, %d15

# CHECK-INST: madds.u %d0, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0x0f]
.code32
madds.u %d0, %d15, %d0, %d0

# CHECK-INST: madds.u %d0, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0x0f]
.code32
madds.u %d0, %d15, %d0, %d1

# CHECK-INST: madds.u %d0, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0x0f]
.code32
madds.u %d0, %d15, %d0, %d14

# CHECK-INST: madds.u %d0, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0x0f]
.code32
madds.u %d0, %d15, %d0, %d15

# CHECK-INST: madds.u %d0, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0x0f]
.code32
madds.u %d0, %d15, %d1, %d0

# CHECK-INST: madds.u %d0, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0x0f]
.code32
madds.u %d0, %d15, %d1, %d1

# CHECK-INST: madds.u %d0, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0x0f]
.code32
madds.u %d0, %d15, %d1, %d14

# CHECK-INST: madds.u %d0, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0x0f]
.code32
madds.u %d0, %d15, %d1, %d15

# CHECK-INST: madds.u %d0, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0x0f]
.code32
madds.u %d0, %d15, %d14, %d0

# CHECK-INST: madds.u %d0, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0x0f]
.code32
madds.u %d0, %d15, %d14, %d1

# CHECK-INST: madds.u %d0, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0x0f]
.code32
madds.u %d0, %d15, %d14, %d14

# CHECK-INST: madds.u %d0, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0x0f]
.code32
madds.u %d0, %d15, %d14, %d15

# CHECK-INST: madds.u %d0, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0x0f]
.code32
madds.u %d0, %d15, %d15, %d0

# CHECK-INST: madds.u %d0, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0x0f]
.code32
madds.u %d0, %d15, %d15, %d1

# CHECK-INST: madds.u %d0, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0x0f]
.code32
madds.u %d0, %d15, %d15, %d14

# CHECK-INST: madds.u %d0, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0x0f]
.code32
madds.u %d0, %d15, %d15, %d15

# CHECK-INST: madds.u %d1, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0x10]
.code32
madds.u %d1, %d0, %d0, %d0

# CHECK-INST: madds.u %d1, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0x10]
.code32
madds.u %d1, %d0, %d0, %d1

# CHECK-INST: madds.u %d1, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0x10]
.code32
madds.u %d1, %d0, %d0, %d14

# CHECK-INST: madds.u %d1, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0x10]
.code32
madds.u %d1, %d0, %d0, %d15

# CHECK-INST: madds.u %d1, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0x10]
.code32
madds.u %d1, %d0, %d1, %d0

# CHECK-INST: madds.u %d1, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0x10]
.code32
madds.u %d1, %d0, %d1, %d1

# CHECK-INST: madds.u %d1, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0x10]
.code32
madds.u %d1, %d0, %d1, %d14

# CHECK-INST: madds.u %d1, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0x10]
.code32
madds.u %d1, %d0, %d1, %d15

# CHECK-INST: madds.u %d1, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0x10]
.code32
madds.u %d1, %d0, %d14, %d0

# CHECK-INST: madds.u %d1, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0x10]
.code32
madds.u %d1, %d0, %d14, %d1

# CHECK-INST: madds.u %d1, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0x10]
.code32
madds.u %d1, %d0, %d14, %d14

# CHECK-INST: madds.u %d1, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0x10]
.code32
madds.u %d1, %d0, %d14, %d15

# CHECK-INST: madds.u %d1, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0x10]
.code32
madds.u %d1, %d0, %d15, %d0

# CHECK-INST: madds.u %d1, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0x10]
.code32
madds.u %d1, %d0, %d15, %d1

# CHECK-INST: madds.u %d1, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0x10]
.code32
madds.u %d1, %d0, %d15, %d14

# CHECK-INST: madds.u %d1, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0x10]
.code32
madds.u %d1, %d0, %d15, %d15

# CHECK-INST: madds.u %d1, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0x11]
.code32
madds.u %d1, %d1, %d0, %d0

# CHECK-INST: madds.u %d1, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0x11]
.code32
madds.u %d1, %d1, %d0, %d1

# CHECK-INST: madds.u %d1, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0x11]
.code32
madds.u %d1, %d1, %d0, %d14

# CHECK-INST: madds.u %d1, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0x11]
.code32
madds.u %d1, %d1, %d0, %d15

# CHECK-INST: madds.u %d1, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0x11]
.code32
madds.u %d1, %d1, %d1, %d0

# CHECK-INST: madds.u %d1, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0x11]
.code32
madds.u %d1, %d1, %d1, %d1

# CHECK-INST: madds.u %d1, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0x11]
.code32
madds.u %d1, %d1, %d1, %d14

# CHECK-INST: madds.u %d1, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0x11]
.code32
madds.u %d1, %d1, %d1, %d15

# CHECK-INST: madds.u %d1, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0x11]
.code32
madds.u %d1, %d1, %d14, %d0

# CHECK-INST: madds.u %d1, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0x11]
.code32
madds.u %d1, %d1, %d14, %d1

# CHECK-INST: madds.u %d1, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0x11]
.code32
madds.u %d1, %d1, %d14, %d14

# CHECK-INST: madds.u %d1, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0x11]
.code32
madds.u %d1, %d1, %d14, %d15

# CHECK-INST: madds.u %d1, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0x11]
.code32
madds.u %d1, %d1, %d15, %d0

# CHECK-INST: madds.u %d1, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0x11]
.code32
madds.u %d1, %d1, %d15, %d1

# CHECK-INST: madds.u %d1, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0x11]
.code32
madds.u %d1, %d1, %d15, %d14

# CHECK-INST: madds.u %d1, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0x11]
.code32
madds.u %d1, %d1, %d15, %d15

# CHECK-INST: madds.u %d1, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0x1e]
.code32
madds.u %d1, %d14, %d0, %d0

# CHECK-INST: madds.u %d1, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0x1e]
.code32
madds.u %d1, %d14, %d0, %d1

# CHECK-INST: madds.u %d1, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0x1e]
.code32
madds.u %d1, %d14, %d0, %d14

# CHECK-INST: madds.u %d1, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0x1e]
.code32
madds.u %d1, %d14, %d0, %d15

# CHECK-INST: madds.u %d1, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0x1e]
.code32
madds.u %d1, %d14, %d1, %d0

# CHECK-INST: madds.u %d1, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0x1e]
.code32
madds.u %d1, %d14, %d1, %d1

# CHECK-INST: madds.u %d1, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0x1e]
.code32
madds.u %d1, %d14, %d1, %d14

# CHECK-INST: madds.u %d1, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0x1e]
.code32
madds.u %d1, %d14, %d1, %d15

# CHECK-INST: madds.u %d1, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0x1e]
.code32
madds.u %d1, %d14, %d14, %d0

# CHECK-INST: madds.u %d1, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0x1e]
.code32
madds.u %d1, %d14, %d14, %d1

# CHECK-INST: madds.u %d1, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0x1e]
.code32
madds.u %d1, %d14, %d14, %d14

# CHECK-INST: madds.u %d1, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0x1e]
.code32
madds.u %d1, %d14, %d14, %d15

# CHECK-INST: madds.u %d1, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0x1e]
.code32
madds.u %d1, %d14, %d15, %d0

# CHECK-INST: madds.u %d1, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0x1e]
.code32
madds.u %d1, %d14, %d15, %d1

# CHECK-INST: madds.u %d1, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0x1e]
.code32
madds.u %d1, %d14, %d15, %d14

# CHECK-INST: madds.u %d1, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0x1e]
.code32
madds.u %d1, %d14, %d15, %d15

# CHECK-INST: madds.u %d1, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0x1f]
.code32
madds.u %d1, %d15, %d0, %d0

# CHECK-INST: madds.u %d1, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0x1f]
.code32
madds.u %d1, %d15, %d0, %d1

# CHECK-INST: madds.u %d1, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0x1f]
.code32
madds.u %d1, %d15, %d0, %d14

# CHECK-INST: madds.u %d1, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0x1f]
.code32
madds.u %d1, %d15, %d0, %d15

# CHECK-INST: madds.u %d1, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0x1f]
.code32
madds.u %d1, %d15, %d1, %d0

# CHECK-INST: madds.u %d1, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0x1f]
.code32
madds.u %d1, %d15, %d1, %d1

# CHECK-INST: madds.u %d1, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0x1f]
.code32
madds.u %d1, %d15, %d1, %d14

# CHECK-INST: madds.u %d1, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0x1f]
.code32
madds.u %d1, %d15, %d1, %d15

# CHECK-INST: madds.u %d1, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0x1f]
.code32
madds.u %d1, %d15, %d14, %d0

# CHECK-INST: madds.u %d1, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0x1f]
.code32
madds.u %d1, %d15, %d14, %d1

# CHECK-INST: madds.u %d1, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0x1f]
.code32
madds.u %d1, %d15, %d14, %d14

# CHECK-INST: madds.u %d1, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0x1f]
.code32
madds.u %d1, %d15, %d14, %d15

# CHECK-INST: madds.u %d1, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0x1f]
.code32
madds.u %d1, %d15, %d15, %d0

# CHECK-INST: madds.u %d1, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0x1f]
.code32
madds.u %d1, %d15, %d15, %d1

# CHECK-INST: madds.u %d1, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0x1f]
.code32
madds.u %d1, %d15, %d15, %d14

# CHECK-INST: madds.u %d1, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0x1f]
.code32
madds.u %d1, %d15, %d15, %d15

# CHECK-INST: madds.u %d14, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0xe0]
.code32
madds.u %d14, %d0, %d0, %d0

# CHECK-INST: madds.u %d14, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0xe0]
.code32
madds.u %d14, %d0, %d0, %d1

# CHECK-INST: madds.u %d14, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0xe0]
.code32
madds.u %d14, %d0, %d0, %d14

# CHECK-INST: madds.u %d14, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0xe0]
.code32
madds.u %d14, %d0, %d0, %d15

# CHECK-INST: madds.u %d14, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0xe0]
.code32
madds.u %d14, %d0, %d1, %d0

# CHECK-INST: madds.u %d14, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0xe0]
.code32
madds.u %d14, %d0, %d1, %d1

# CHECK-INST: madds.u %d14, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0xe0]
.code32
madds.u %d14, %d0, %d1, %d14

# CHECK-INST: madds.u %d14, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0xe0]
.code32
madds.u %d14, %d0, %d1, %d15

# CHECK-INST: madds.u %d14, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0xe0]
.code32
madds.u %d14, %d0, %d14, %d0

# CHECK-INST: madds.u %d14, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0xe0]
.code32
madds.u %d14, %d0, %d14, %d1

# CHECK-INST: madds.u %d14, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0xe0]
.code32
madds.u %d14, %d0, %d14, %d14

# CHECK-INST: madds.u %d14, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0xe0]
.code32
madds.u %d14, %d0, %d14, %d15

# CHECK-INST: madds.u %d14, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0xe0]
.code32
madds.u %d14, %d0, %d15, %d0

# CHECK-INST: madds.u %d14, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0xe0]
.code32
madds.u %d14, %d0, %d15, %d1

# CHECK-INST: madds.u %d14, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0xe0]
.code32
madds.u %d14, %d0, %d15, %d14

# CHECK-INST: madds.u %d14, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0xe0]
.code32
madds.u %d14, %d0, %d15, %d15

# CHECK-INST: madds.u %d14, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0xe1]
.code32
madds.u %d14, %d1, %d0, %d0

# CHECK-INST: madds.u %d14, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0xe1]
.code32
madds.u %d14, %d1, %d0, %d1

# CHECK-INST: madds.u %d14, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0xe1]
.code32
madds.u %d14, %d1, %d0, %d14

# CHECK-INST: madds.u %d14, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0xe1]
.code32
madds.u %d14, %d1, %d0, %d15

# CHECK-INST: madds.u %d14, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0xe1]
.code32
madds.u %d14, %d1, %d1, %d0

# CHECK-INST: madds.u %d14, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0xe1]
.code32
madds.u %d14, %d1, %d1, %d1

# CHECK-INST: madds.u %d14, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0xe1]
.code32
madds.u %d14, %d1, %d1, %d14

# CHECK-INST: madds.u %d14, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0xe1]
.code32
madds.u %d14, %d1, %d1, %d15

# CHECK-INST: madds.u %d14, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0xe1]
.code32
madds.u %d14, %d1, %d14, %d0

# CHECK-INST: madds.u %d14, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0xe1]
.code32
madds.u %d14, %d1, %d14, %d1

# CHECK-INST: madds.u %d14, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0xe1]
.code32
madds.u %d14, %d1, %d14, %d14

# CHECK-INST: madds.u %d14, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0xe1]
.code32
madds.u %d14, %d1, %d14, %d15

# CHECK-INST: madds.u %d14, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0xe1]
.code32
madds.u %d14, %d1, %d15, %d0

# CHECK-INST: madds.u %d14, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0xe1]
.code32
madds.u %d14, %d1, %d15, %d1

# CHECK-INST: madds.u %d14, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0xe1]
.code32
madds.u %d14, %d1, %d15, %d14

# CHECK-INST: madds.u %d14, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0xe1]
.code32
madds.u %d14, %d1, %d15, %d15

# CHECK-INST: madds.u %d14, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0xee]
.code32
madds.u %d14, %d14, %d0, %d0

# CHECK-INST: madds.u %d14, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0xee]
.code32
madds.u %d14, %d14, %d0, %d1

# CHECK-INST: madds.u %d14, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0xee]
.code32
madds.u %d14, %d14, %d0, %d14

# CHECK-INST: madds.u %d14, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0xee]
.code32
madds.u %d14, %d14, %d0, %d15

# CHECK-INST: madds.u %d14, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0xee]
.code32
madds.u %d14, %d14, %d1, %d0

# CHECK-INST: madds.u %d14, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0xee]
.code32
madds.u %d14, %d14, %d1, %d1

# CHECK-INST: madds.u %d14, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0xee]
.code32
madds.u %d14, %d14, %d1, %d14

# CHECK-INST: madds.u %d14, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0xee]
.code32
madds.u %d14, %d14, %d1, %d15

# CHECK-INST: madds.u %d14, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0xee]
.code32
madds.u %d14, %d14, %d14, %d0

# CHECK-INST: madds.u %d14, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0xee]
.code32
madds.u %d14, %d14, %d14, %d1

# CHECK-INST: madds.u %d14, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0xee]
.code32
madds.u %d14, %d14, %d14, %d14

# CHECK-INST: madds.u %d14, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0xee]
.code32
madds.u %d14, %d14, %d14, %d15

# CHECK-INST: madds.u %d14, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0xee]
.code32
madds.u %d14, %d14, %d15, %d0

# CHECK-INST: madds.u %d14, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0xee]
.code32
madds.u %d14, %d14, %d15, %d1

# CHECK-INST: madds.u %d14, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0xee]
.code32
madds.u %d14, %d14, %d15, %d14

# CHECK-INST: madds.u %d14, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0xee]
.code32
madds.u %d14, %d14, %d15, %d15

# CHECK-INST: madds.u %d14, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0xef]
.code32
madds.u %d14, %d15, %d0, %d0

# CHECK-INST: madds.u %d14, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0xef]
.code32
madds.u %d14, %d15, %d0, %d1

# CHECK-INST: madds.u %d14, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0xef]
.code32
madds.u %d14, %d15, %d0, %d14

# CHECK-INST: madds.u %d14, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0xef]
.code32
madds.u %d14, %d15, %d0, %d15

# CHECK-INST: madds.u %d14, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0xef]
.code32
madds.u %d14, %d15, %d1, %d0

# CHECK-INST: madds.u %d14, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0xef]
.code32
madds.u %d14, %d15, %d1, %d1

# CHECK-INST: madds.u %d14, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0xef]
.code32
madds.u %d14, %d15, %d1, %d14

# CHECK-INST: madds.u %d14, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0xef]
.code32
madds.u %d14, %d15, %d1, %d15

# CHECK-INST: madds.u %d14, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0xef]
.code32
madds.u %d14, %d15, %d14, %d0

# CHECK-INST: madds.u %d14, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0xef]
.code32
madds.u %d14, %d15, %d14, %d1

# CHECK-INST: madds.u %d14, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0xef]
.code32
madds.u %d14, %d15, %d14, %d14

# CHECK-INST: madds.u %d14, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0xef]
.code32
madds.u %d14, %d15, %d14, %d15

# CHECK-INST: madds.u %d14, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0xef]
.code32
madds.u %d14, %d15, %d15, %d0

# CHECK-INST: madds.u %d14, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0xef]
.code32
madds.u %d14, %d15, %d15, %d1

# CHECK-INST: madds.u %d14, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0xef]
.code32
madds.u %d14, %d15, %d15, %d14

# CHECK-INST: madds.u %d14, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0xef]
.code32
madds.u %d14, %d15, %d15, %d15

# CHECK-INST: madds.u %d15, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0xf0]
.code32
madds.u %d15, %d0, %d0, %d0

# CHECK-INST: madds.u %d15, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0xf0]
.code32
madds.u %d15, %d0, %d0, %d1

# CHECK-INST: madds.u %d15, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0xf0]
.code32
madds.u %d15, %d0, %d0, %d14

# CHECK-INST: madds.u %d15, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0xf0]
.code32
madds.u %d15, %d0, %d0, %d15

# CHECK-INST: madds.u %d15, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0xf0]
.code32
madds.u %d15, %d0, %d1, %d0

# CHECK-INST: madds.u %d15, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0xf0]
.code32
madds.u %d15, %d0, %d1, %d1

# CHECK-INST: madds.u %d15, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0xf0]
.code32
madds.u %d15, %d0, %d1, %d14

# CHECK-INST: madds.u %d15, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0xf0]
.code32
madds.u %d15, %d0, %d1, %d15

# CHECK-INST: madds.u %d15, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0xf0]
.code32
madds.u %d15, %d0, %d14, %d0

# CHECK-INST: madds.u %d15, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0xf0]
.code32
madds.u %d15, %d0, %d14, %d1

# CHECK-INST: madds.u %d15, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0xf0]
.code32
madds.u %d15, %d0, %d14, %d14

# CHECK-INST: madds.u %d15, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0xf0]
.code32
madds.u %d15, %d0, %d14, %d15

# CHECK-INST: madds.u %d15, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0xf0]
.code32
madds.u %d15, %d0, %d15, %d0

# CHECK-INST: madds.u %d15, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0xf0]
.code32
madds.u %d15, %d0, %d15, %d1

# CHECK-INST: madds.u %d15, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0xf0]
.code32
madds.u %d15, %d0, %d15, %d14

# CHECK-INST: madds.u %d15, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0xf0]
.code32
madds.u %d15, %d0, %d15, %d15

# CHECK-INST: madds.u %d15, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0xf1]
.code32
madds.u %d15, %d1, %d0, %d0

# CHECK-INST: madds.u %d15, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0xf1]
.code32
madds.u %d15, %d1, %d0, %d1

# CHECK-INST: madds.u %d15, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0xf1]
.code32
madds.u %d15, %d1, %d0, %d14

# CHECK-INST: madds.u %d15, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0xf1]
.code32
madds.u %d15, %d1, %d0, %d15

# CHECK-INST: madds.u %d15, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0xf1]
.code32
madds.u %d15, %d1, %d1, %d0

# CHECK-INST: madds.u %d15, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0xf1]
.code32
madds.u %d15, %d1, %d1, %d1

# CHECK-INST: madds.u %d15, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0xf1]
.code32
madds.u %d15, %d1, %d1, %d14

# CHECK-INST: madds.u %d15, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0xf1]
.code32
madds.u %d15, %d1, %d1, %d15

# CHECK-INST: madds.u %d15, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0xf1]
.code32
madds.u %d15, %d1, %d14, %d0

# CHECK-INST: madds.u %d15, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0xf1]
.code32
madds.u %d15, %d1, %d14, %d1

# CHECK-INST: madds.u %d15, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0xf1]
.code32
madds.u %d15, %d1, %d14, %d14

# CHECK-INST: madds.u %d15, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0xf1]
.code32
madds.u %d15, %d1, %d14, %d15

# CHECK-INST: madds.u %d15, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0xf1]
.code32
madds.u %d15, %d1, %d15, %d0

# CHECK-INST: madds.u %d15, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0xf1]
.code32
madds.u %d15, %d1, %d15, %d1

# CHECK-INST: madds.u %d15, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0xf1]
.code32
madds.u %d15, %d1, %d15, %d14

# CHECK-INST: madds.u %d15, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0xf1]
.code32
madds.u %d15, %d1, %d15, %d15

# CHECK-INST: madds.u %d15, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0xfe]
.code32
madds.u %d15, %d14, %d0, %d0

# CHECK-INST: madds.u %d15, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0xfe]
.code32
madds.u %d15, %d14, %d0, %d1

# CHECK-INST: madds.u %d15, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0xfe]
.code32
madds.u %d15, %d14, %d0, %d14

# CHECK-INST: madds.u %d15, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0xfe]
.code32
madds.u %d15, %d14, %d0, %d15

# CHECK-INST: madds.u %d15, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0xfe]
.code32
madds.u %d15, %d14, %d1, %d0

# CHECK-INST: madds.u %d15, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0xfe]
.code32
madds.u %d15, %d14, %d1, %d1

# CHECK-INST: madds.u %d15, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0xfe]
.code32
madds.u %d15, %d14, %d1, %d14

# CHECK-INST: madds.u %d15, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0xfe]
.code32
madds.u %d15, %d14, %d1, %d15

# CHECK-INST: madds.u %d15, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0xfe]
.code32
madds.u %d15, %d14, %d14, %d0

# CHECK-INST: madds.u %d15, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0xfe]
.code32
madds.u %d15, %d14, %d14, %d1

# CHECK-INST: madds.u %d15, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0xfe]
.code32
madds.u %d15, %d14, %d14, %d14

# CHECK-INST: madds.u %d15, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0xfe]
.code32
madds.u %d15, %d14, %d14, %d15

# CHECK-INST: madds.u %d15, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0xfe]
.code32
madds.u %d15, %d14, %d15, %d0

# CHECK-INST: madds.u %d15, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0xfe]
.code32
madds.u %d15, %d14, %d15, %d1

# CHECK-INST: madds.u %d15, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0xfe]
.code32
madds.u %d15, %d14, %d15, %d14

# CHECK-INST: madds.u %d15, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0xfe]
.code32
madds.u %d15, %d14, %d15, %d15

# CHECK-INST: madds.u %d15, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0xff]
.code32
madds.u %d15, %d15, %d0, %d0

# CHECK-INST: madds.u %d15, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0xff]
.code32
madds.u %d15, %d15, %d0, %d1

# CHECK-INST: madds.u %d15, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0xff]
.code32
madds.u %d15, %d15, %d0, %d14

# CHECK-INST: madds.u %d15, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0xff]
.code32
madds.u %d15, %d15, %d0, %d15

# CHECK-INST: madds.u %d15, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0xff]
.code32
madds.u %d15, %d15, %d1, %d0

# CHECK-INST: madds.u %d15, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0xff]
.code32
madds.u %d15, %d15, %d1, %d1

# CHECK-INST: madds.u %d15, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0xff]
.code32
madds.u %d15, %d15, %d1, %d14

# CHECK-INST: madds.u %d15, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0xff]
.code32
madds.u %d15, %d15, %d1, %d15

# CHECK-INST: madds.u %d15, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0xff]
.code32
madds.u %d15, %d15, %d14, %d0

# CHECK-INST: madds.u %d15, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0xff]
.code32
madds.u %d15, %d15, %d14, %d1

# CHECK-INST: madds.u %d15, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0xff]
.code32
madds.u %d15, %d15, %d14, %d14

# CHECK-INST: madds.u %d15, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0xff]
.code32
madds.u %d15, %d15, %d14, %d15

# CHECK-INST: madds.u %d15, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0xff]
.code32
madds.u %d15, %d15, %d15, %d0

# CHECK-INST: madds.u %d15, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0xff]
.code32
madds.u %d15, %d15, %d15, %d1

# CHECK-INST: madds.u %d15, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0xff]
.code32
madds.u %d15, %d15, %d15, %d14

# CHECK-INST: madds.u %d15, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0xff]
.code32
madds.u %d15, %d15, %d15, %d15

# CHECK-INST: madds.u %d0, %d0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0x00]
.code32
madds.u %d0, %d0, %d0, 271

# CHECK-INST: madds.u %d0, %d0, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0x00]
.code32
madds.u %d0, %d0, %d0, 496

# CHECK-INST: madds.u %d0, %d0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0x00]
.code32
madds.u %d0, %d0, %d0, 511

# CHECK-INST: madds.u %d0, %d0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0x00]
.code32
madds.u %d0, %d0, %d1, 271

# CHECK-INST: madds.u %d0, %d0, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0x00]
.code32
madds.u %d0, %d0, %d1, 496

# CHECK-INST: madds.u %d0, %d0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0x00]
.code32
madds.u %d0, %d0, %d1, 511

# CHECK-INST: madds.u %d0, %d0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0x00]
.code32
madds.u %d0, %d0, %d14, 271

# CHECK-INST: madds.u %d0, %d0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0x00]
.code32
madds.u %d0, %d0, %d14, 496

# CHECK-INST: madds.u %d0, %d0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0x00]
.code32
madds.u %d0, %d0, %d14, 511

# CHECK-INST: madds.u %d0, %d0, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0x00]
.code32
madds.u %d0, %d0, %d15, 271

# CHECK-INST: madds.u %d0, %d0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0x00]
.code32
madds.u %d0, %d0, %d15, 496

# CHECK-INST: madds.u %d0, %d0, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0x00]
.code32
madds.u %d0, %d0, %d15, 511

# CHECK-INST: madds.u %d0, %d1, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0x01]
.code32
madds.u %d0, %d1, %d0, 271

# CHECK-INST: madds.u %d0, %d1, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0x01]
.code32
madds.u %d0, %d1, %d0, 496

# CHECK-INST: madds.u %d0, %d1, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0x01]
.code32
madds.u %d0, %d1, %d0, 511

# CHECK-INST: madds.u %d0, %d1, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0x01]
.code32
madds.u %d0, %d1, %d1, 271

# CHECK-INST: madds.u %d0, %d1, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0x01]
.code32
madds.u %d0, %d1, %d1, 496

# CHECK-INST: madds.u %d0, %d1, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0x01]
.code32
madds.u %d0, %d1, %d1, 511

# CHECK-INST: madds.u %d0, %d1, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0x01]
.code32
madds.u %d0, %d1, %d14, 271

# CHECK-INST: madds.u %d0, %d1, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0x01]
.code32
madds.u %d0, %d1, %d14, 496

# CHECK-INST: madds.u %d0, %d1, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0x01]
.code32
madds.u %d0, %d1, %d14, 511

# CHECK-INST: madds.u %d0, %d1, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0x01]
.code32
madds.u %d0, %d1, %d15, 271

# CHECK-INST: madds.u %d0, %d1, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0x01]
.code32
madds.u %d0, %d1, %d15, 496

# CHECK-INST: madds.u %d0, %d1, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0x01]
.code32
madds.u %d0, %d1, %d15, 511

# CHECK-INST: madds.u %d0, %d14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0x0e]
.code32
madds.u %d0, %d14, %d0, 271

# CHECK-INST: madds.u %d0, %d14, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0x0e]
.code32
madds.u %d0, %d14, %d0, 496

# CHECK-INST: madds.u %d0, %d14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0x0e]
.code32
madds.u %d0, %d14, %d0, 511

# CHECK-INST: madds.u %d0, %d14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0x0e]
.code32
madds.u %d0, %d14, %d1, 271

# CHECK-INST: madds.u %d0, %d14, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0x0e]
.code32
madds.u %d0, %d14, %d1, 496

# CHECK-INST: madds.u %d0, %d14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0x0e]
.code32
madds.u %d0, %d14, %d1, 511

# CHECK-INST: madds.u %d0, %d14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0x0e]
.code32
madds.u %d0, %d14, %d14, 271

# CHECK-INST: madds.u %d0, %d14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0x0e]
.code32
madds.u %d0, %d14, %d14, 496

# CHECK-INST: madds.u %d0, %d14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0x0e]
.code32
madds.u %d0, %d14, %d14, 511

# CHECK-INST: madds.u %d0, %d14, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0x0e]
.code32
madds.u %d0, %d14, %d15, 271

# CHECK-INST: madds.u %d0, %d14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0x0e]
.code32
madds.u %d0, %d14, %d15, 496

# CHECK-INST: madds.u %d0, %d14, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0x0e]
.code32
madds.u %d0, %d14, %d15, 511

# CHECK-INST: madds.u %d0, %d15, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0x0f]
.code32
madds.u %d0, %d15, %d0, 271

# CHECK-INST: madds.u %d0, %d15, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0x0f]
.code32
madds.u %d0, %d15, %d0, 496

# CHECK-INST: madds.u %d0, %d15, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0x0f]
.code32
madds.u %d0, %d15, %d0, 511

# CHECK-INST: madds.u %d0, %d15, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0x0f]
.code32
madds.u %d0, %d15, %d1, 271

# CHECK-INST: madds.u %d0, %d15, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0x0f]
.code32
madds.u %d0, %d15, %d1, 496

# CHECK-INST: madds.u %d0, %d15, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0x0f]
.code32
madds.u %d0, %d15, %d1, 511

# CHECK-INST: madds.u %d0, %d15, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0x0f]
.code32
madds.u %d0, %d15, %d14, 271

# CHECK-INST: madds.u %d0, %d15, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0x0f]
.code32
madds.u %d0, %d15, %d14, 496

# CHECK-INST: madds.u %d0, %d15, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0x0f]
.code32
madds.u %d0, %d15, %d14, 511

# CHECK-INST: madds.u %d0, %d15, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0x0f]
.code32
madds.u %d0, %d15, %d15, 271

# CHECK-INST: madds.u %d0, %d15, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0x0f]
.code32
madds.u %d0, %d15, %d15, 496

# CHECK-INST: madds.u %d0, %d15, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0x0f]
.code32
madds.u %d0, %d15, %d15, 511

# CHECK-INST: madds.u %d1, %d0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0x10]
.code32
madds.u %d1, %d0, %d0, 271

# CHECK-INST: madds.u %d1, %d0, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0x10]
.code32
madds.u %d1, %d0, %d0, 496

# CHECK-INST: madds.u %d1, %d0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0x10]
.code32
madds.u %d1, %d0, %d0, 511

# CHECK-INST: madds.u %d1, %d0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0x10]
.code32
madds.u %d1, %d0, %d1, 271

# CHECK-INST: madds.u %d1, %d0, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0x10]
.code32
madds.u %d1, %d0, %d1, 496

# CHECK-INST: madds.u %d1, %d0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0x10]
.code32
madds.u %d1, %d0, %d1, 511

# CHECK-INST: madds.u %d1, %d0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0x10]
.code32
madds.u %d1, %d0, %d14, 271

# CHECK-INST: madds.u %d1, %d0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0x10]
.code32
madds.u %d1, %d0, %d14, 496

# CHECK-INST: madds.u %d1, %d0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0x10]
.code32
madds.u %d1, %d0, %d14, 511

# CHECK-INST: madds.u %d1, %d0, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0x10]
.code32
madds.u %d1, %d0, %d15, 271

# CHECK-INST: madds.u %d1, %d0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0x10]
.code32
madds.u %d1, %d0, %d15, 496

# CHECK-INST: madds.u %d1, %d0, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0x10]
.code32
madds.u %d1, %d0, %d15, 511

# CHECK-INST: madds.u %d1, %d1, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0x11]
.code32
madds.u %d1, %d1, %d0, 271

# CHECK-INST: madds.u %d1, %d1, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0x11]
.code32
madds.u %d1, %d1, %d0, 496

# CHECK-INST: madds.u %d1, %d1, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0x11]
.code32
madds.u %d1, %d1, %d0, 511

# CHECK-INST: madds.u %d1, %d1, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0x11]
.code32
madds.u %d1, %d1, %d1, 271

# CHECK-INST: madds.u %d1, %d1, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0x11]
.code32
madds.u %d1, %d1, %d1, 496

# CHECK-INST: madds.u %d1, %d1, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0x11]
.code32
madds.u %d1, %d1, %d1, 511

# CHECK-INST: madds.u %d1, %d1, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0x11]
.code32
madds.u %d1, %d1, %d14, 271

# CHECK-INST: madds.u %d1, %d1, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0x11]
.code32
madds.u %d1, %d1, %d14, 496

# CHECK-INST: madds.u %d1, %d1, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0x11]
.code32
madds.u %d1, %d1, %d14, 511

# CHECK-INST: madds.u %d1, %d1, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0x11]
.code32
madds.u %d1, %d1, %d15, 271

# CHECK-INST: madds.u %d1, %d1, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0x11]
.code32
madds.u %d1, %d1, %d15, 496

# CHECK-INST: madds.u %d1, %d1, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0x11]
.code32
madds.u %d1, %d1, %d15, 511

# CHECK-INST: madds.u %d1, %d14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0x1e]
.code32
madds.u %d1, %d14, %d0, 271

# CHECK-INST: madds.u %d1, %d14, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0x1e]
.code32
madds.u %d1, %d14, %d0, 496

# CHECK-INST: madds.u %d1, %d14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0x1e]
.code32
madds.u %d1, %d14, %d0, 511

# CHECK-INST: madds.u %d1, %d14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0x1e]
.code32
madds.u %d1, %d14, %d1, 271

# CHECK-INST: madds.u %d1, %d14, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0x1e]
.code32
madds.u %d1, %d14, %d1, 496

# CHECK-INST: madds.u %d1, %d14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0x1e]
.code32
madds.u %d1, %d14, %d1, 511

# CHECK-INST: madds.u %d1, %d14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0x1e]
.code32
madds.u %d1, %d14, %d14, 271

# CHECK-INST: madds.u %d1, %d14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0x1e]
.code32
madds.u %d1, %d14, %d14, 496

# CHECK-INST: madds.u %d1, %d14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0x1e]
.code32
madds.u %d1, %d14, %d14, 511

# CHECK-INST: madds.u %d1, %d14, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0x1e]
.code32
madds.u %d1, %d14, %d15, 271

# CHECK-INST: madds.u %d1, %d14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0x1e]
.code32
madds.u %d1, %d14, %d15, 496

# CHECK-INST: madds.u %d1, %d14, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0x1e]
.code32
madds.u %d1, %d14, %d15, 511

# CHECK-INST: madds.u %d1, %d15, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0x1f]
.code32
madds.u %d1, %d15, %d0, 271

# CHECK-INST: madds.u %d1, %d15, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0x1f]
.code32
madds.u %d1, %d15, %d0, 496

# CHECK-INST: madds.u %d1, %d15, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0x1f]
.code32
madds.u %d1, %d15, %d0, 511

# CHECK-INST: madds.u %d1, %d15, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0x1f]
.code32
madds.u %d1, %d15, %d1, 271

# CHECK-INST: madds.u %d1, %d15, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0x1f]
.code32
madds.u %d1, %d15, %d1, 496

# CHECK-INST: madds.u %d1, %d15, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0x1f]
.code32
madds.u %d1, %d15, %d1, 511

# CHECK-INST: madds.u %d1, %d15, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0x1f]
.code32
madds.u %d1, %d15, %d14, 271

# CHECK-INST: madds.u %d1, %d15, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0x1f]
.code32
madds.u %d1, %d15, %d14, 496

# CHECK-INST: madds.u %d1, %d15, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0x1f]
.code32
madds.u %d1, %d15, %d14, 511

# CHECK-INST: madds.u %d1, %d15, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0x1f]
.code32
madds.u %d1, %d15, %d15, 271

# CHECK-INST: madds.u %d1, %d15, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0x1f]
.code32
madds.u %d1, %d15, %d15, 496

# CHECK-INST: madds.u %d1, %d15, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0x1f]
.code32
madds.u %d1, %d15, %d15, 511

# CHECK-INST: madds.u %d14, %d0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0xe0]
.code32
madds.u %d14, %d0, %d0, 271

# CHECK-INST: madds.u %d14, %d0, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0xe0]
.code32
madds.u %d14, %d0, %d0, 496

# CHECK-INST: madds.u %d14, %d0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0xe0]
.code32
madds.u %d14, %d0, %d0, 511

# CHECK-INST: madds.u %d14, %d0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0xe0]
.code32
madds.u %d14, %d0, %d1, 271

# CHECK-INST: madds.u %d14, %d0, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0xe0]
.code32
madds.u %d14, %d0, %d1, 496

# CHECK-INST: madds.u %d14, %d0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0xe0]
.code32
madds.u %d14, %d0, %d1, 511

# CHECK-INST: madds.u %d14, %d0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0xe0]
.code32
madds.u %d14, %d0, %d14, 271

# CHECK-INST: madds.u %d14, %d0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0xe0]
.code32
madds.u %d14, %d0, %d14, 496

# CHECK-INST: madds.u %d14, %d0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0xe0]
.code32
madds.u %d14, %d0, %d14, 511

# CHECK-INST: madds.u %d14, %d0, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0xe0]
.code32
madds.u %d14, %d0, %d15, 271

# CHECK-INST: madds.u %d14, %d0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0xe0]
.code32
madds.u %d14, %d0, %d15, 496

# CHECK-INST: madds.u %d14, %d0, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0xe0]
.code32
madds.u %d14, %d0, %d15, 511

# CHECK-INST: madds.u %d14, %d1, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0xe1]
.code32
madds.u %d14, %d1, %d0, 271

# CHECK-INST: madds.u %d14, %d1, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0xe1]
.code32
madds.u %d14, %d1, %d0, 496

# CHECK-INST: madds.u %d14, %d1, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0xe1]
.code32
madds.u %d14, %d1, %d0, 511

# CHECK-INST: madds.u %d14, %d1, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0xe1]
.code32
madds.u %d14, %d1, %d1, 271

# CHECK-INST: madds.u %d14, %d1, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0xe1]
.code32
madds.u %d14, %d1, %d1, 496

# CHECK-INST: madds.u %d14, %d1, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0xe1]
.code32
madds.u %d14, %d1, %d1, 511

# CHECK-INST: madds.u %d14, %d1, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0xe1]
.code32
madds.u %d14, %d1, %d14, 271

# CHECK-INST: madds.u %d14, %d1, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0xe1]
.code32
madds.u %d14, %d1, %d14, 496

# CHECK-INST: madds.u %d14, %d1, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0xe1]
.code32
madds.u %d14, %d1, %d14, 511

# CHECK-INST: madds.u %d14, %d1, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0xe1]
.code32
madds.u %d14, %d1, %d15, 271

# CHECK-INST: madds.u %d14, %d1, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0xe1]
.code32
madds.u %d14, %d1, %d15, 496

# CHECK-INST: madds.u %d14, %d1, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0xe1]
.code32
madds.u %d14, %d1, %d15, 511

# CHECK-INST: madds.u %d14, %d14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0xee]
.code32
madds.u %d14, %d14, %d0, 271

# CHECK-INST: madds.u %d14, %d14, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0xee]
.code32
madds.u %d14, %d14, %d0, 496

# CHECK-INST: madds.u %d14, %d14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0xee]
.code32
madds.u %d14, %d14, %d0, 511

# CHECK-INST: madds.u %d14, %d14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0xee]
.code32
madds.u %d14, %d14, %d1, 271

# CHECK-INST: madds.u %d14, %d14, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0xee]
.code32
madds.u %d14, %d14, %d1, 496

# CHECK-INST: madds.u %d14, %d14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0xee]
.code32
madds.u %d14, %d14, %d1, 511

# CHECK-INST: madds.u %d14, %d14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0xee]
.code32
madds.u %d14, %d14, %d14, 271

# CHECK-INST: madds.u %d14, %d14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0xee]
.code32
madds.u %d14, %d14, %d14, 496

# CHECK-INST: madds.u %d14, %d14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0xee]
.code32
madds.u %d14, %d14, %d14, 511

# CHECK-INST: madds.u %d14, %d14, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0xee]
.code32
madds.u %d14, %d14, %d15, 271

# CHECK-INST: madds.u %d14, %d14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0xee]
.code32
madds.u %d14, %d14, %d15, 496

# CHECK-INST: madds.u %d14, %d14, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0xee]
.code32
madds.u %d14, %d14, %d15, 511

# CHECK-INST: madds.u %d14, %d15, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0xef]
.code32
madds.u %d14, %d15, %d0, 271

# CHECK-INST: madds.u %d14, %d15, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0xef]
.code32
madds.u %d14, %d15, %d0, 496

# CHECK-INST: madds.u %d14, %d15, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0xef]
.code32
madds.u %d14, %d15, %d0, 511

# CHECK-INST: madds.u %d14, %d15, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0xef]
.code32
madds.u %d14, %d15, %d1, 271

# CHECK-INST: madds.u %d14, %d15, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0xef]
.code32
madds.u %d14, %d15, %d1, 496

# CHECK-INST: madds.u %d14, %d15, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0xef]
.code32
madds.u %d14, %d15, %d1, 511

# CHECK-INST: madds.u %d14, %d15, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0xef]
.code32
madds.u %d14, %d15, %d14, 271

# CHECK-INST: madds.u %d14, %d15, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0xef]
.code32
madds.u %d14, %d15, %d14, 496

# CHECK-INST: madds.u %d14, %d15, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0xef]
.code32
madds.u %d14, %d15, %d14, 511

# CHECK-INST: madds.u %d14, %d15, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0xef]
.code32
madds.u %d14, %d15, %d15, 271

# CHECK-INST: madds.u %d14, %d15, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0xef]
.code32
madds.u %d14, %d15, %d15, 496

# CHECK-INST: madds.u %d14, %d15, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0xef]
.code32
madds.u %d14, %d15, %d15, 511

# CHECK-INST: madds.u %d15, %d0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0xf0]
.code32
madds.u %d15, %d0, %d0, 271

# CHECK-INST: madds.u %d15, %d0, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0xf0]
.code32
madds.u %d15, %d0, %d0, 496

# CHECK-INST: madds.u %d15, %d0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0xf0]
.code32
madds.u %d15, %d0, %d0, 511

# CHECK-INST: madds.u %d15, %d0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0xf0]
.code32
madds.u %d15, %d0, %d1, 271

# CHECK-INST: madds.u %d15, %d0, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0xf0]
.code32
madds.u %d15, %d0, %d1, 496

# CHECK-INST: madds.u %d15, %d0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0xf0]
.code32
madds.u %d15, %d0, %d1, 511

# CHECK-INST: madds.u %d15, %d0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0xf0]
.code32
madds.u %d15, %d0, %d14, 271

# CHECK-INST: madds.u %d15, %d0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0xf0]
.code32
madds.u %d15, %d0, %d14, 496

# CHECK-INST: madds.u %d15, %d0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0xf0]
.code32
madds.u %d15, %d0, %d14, 511

# CHECK-INST: madds.u %d15, %d0, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0xf0]
.code32
madds.u %d15, %d0, %d15, 271

# CHECK-INST: madds.u %d15, %d0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0xf0]
.code32
madds.u %d15, %d0, %d15, 496

# CHECK-INST: madds.u %d15, %d0, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0xf0]
.code32
madds.u %d15, %d0, %d15, 511

# CHECK-INST: madds.u %d15, %d1, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0xf1]
.code32
madds.u %d15, %d1, %d0, 271

# CHECK-INST: madds.u %d15, %d1, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0xf1]
.code32
madds.u %d15, %d1, %d0, 496

# CHECK-INST: madds.u %d15, %d1, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0xf1]
.code32
madds.u %d15, %d1, %d0, 511

# CHECK-INST: madds.u %d15, %d1, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0xf1]
.code32
madds.u %d15, %d1, %d1, 271

# CHECK-INST: madds.u %d15, %d1, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0xf1]
.code32
madds.u %d15, %d1, %d1, 496

# CHECK-INST: madds.u %d15, %d1, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0xf1]
.code32
madds.u %d15, %d1, %d1, 511

# CHECK-INST: madds.u %d15, %d1, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0xf1]
.code32
madds.u %d15, %d1, %d14, 271

# CHECK-INST: madds.u %d15, %d1, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0xf1]
.code32
madds.u %d15, %d1, %d14, 496

# CHECK-INST: madds.u %d15, %d1, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0xf1]
.code32
madds.u %d15, %d1, %d14, 511

# CHECK-INST: madds.u %d15, %d1, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0xf1]
.code32
madds.u %d15, %d1, %d15, 271

# CHECK-INST: madds.u %d15, %d1, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0xf1]
.code32
madds.u %d15, %d1, %d15, 496

# CHECK-INST: madds.u %d15, %d1, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0xf1]
.code32
madds.u %d15, %d1, %d15, 511

# CHECK-INST: madds.u %d15, %d14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0xfe]
.code32
madds.u %d15, %d14, %d0, 271

# CHECK-INST: madds.u %d15, %d14, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0xfe]
.code32
madds.u %d15, %d14, %d0, 496

# CHECK-INST: madds.u %d15, %d14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0xfe]
.code32
madds.u %d15, %d14, %d0, 511

# CHECK-INST: madds.u %d15, %d14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0xfe]
.code32
madds.u %d15, %d14, %d1, 271

# CHECK-INST: madds.u %d15, %d14, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0xfe]
.code32
madds.u %d15, %d14, %d1, 496

# CHECK-INST: madds.u %d15, %d14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0xfe]
.code32
madds.u %d15, %d14, %d1, 511

# CHECK-INST: madds.u %d15, %d14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0xfe]
.code32
madds.u %d15, %d14, %d14, 271

# CHECK-INST: madds.u %d15, %d14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0xfe]
.code32
madds.u %d15, %d14, %d14, 496

# CHECK-INST: madds.u %d15, %d14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0xfe]
.code32
madds.u %d15, %d14, %d14, 511

# CHECK-INST: madds.u %d15, %d14, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0xfe]
.code32
madds.u %d15, %d14, %d15, 271

# CHECK-INST: madds.u %d15, %d14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0xfe]
.code32
madds.u %d15, %d14, %d15, 496

# CHECK-INST: madds.u %d15, %d14, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0xfe]
.code32
madds.u %d15, %d14, %d15, 511

# CHECK-INST: madds.u %d15, %d15, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0xff]
.code32
madds.u %d15, %d15, %d0, 271

# CHECK-INST: madds.u %d15, %d15, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0xff]
.code32
madds.u %d15, %d15, %d0, 496

# CHECK-INST: madds.u %d15, %d15, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0xff]
.code32
madds.u %d15, %d15, %d0, 511

# CHECK-INST: madds.u %d15, %d15, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0xff]
.code32
madds.u %d15, %d15, %d1, 271

# CHECK-INST: madds.u %d15, %d15, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0xff]
.code32
madds.u %d15, %d15, %d1, 496

# CHECK-INST: madds.u %d15, %d15, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0xff]
.code32
madds.u %d15, %d15, %d1, 511

# CHECK-INST: madds.u %d15, %d15, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0xff]
.code32
madds.u %d15, %d15, %d14, 271

# CHECK-INST: madds.u %d15, %d15, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0xff]
.code32
madds.u %d15, %d15, %d14, 496

# CHECK-INST: madds.u %d15, %d15, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0xff]
.code32
madds.u %d15, %d15, %d14, 511

# CHECK-INST: madds.u %d15, %d15, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0xff]
.code32
madds.u %d15, %d15, %d15, 271

# CHECK-INST: madds.u %d15, %d15, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0xff]
.code32
madds.u %d15, %d15, %d15, 496

# CHECK-INST: madds.u %d15, %d15, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0xff]
.code32
madds.u %d15, %d15, %d15, 511

# CHECK-INST: madds.u %e0, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xe8,0x00]
.code32
madds.u %e0, %e0, %d0, %d0

# CHECK-INST: madds.u %e0, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xe8,0x00]
.code32
madds.u %e0, %e0, %d0, %d1

# CHECK-INST: madds.u %e0, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xe8,0x00]
.code32
madds.u %e0, %e0, %d0, %d14

# CHECK-INST: madds.u %e0, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xe8,0x00]
.code32
madds.u %e0, %e0, %d0, %d15

# CHECK-INST: madds.u %e0, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xe8,0x00]
.code32
madds.u %e0, %e0, %d1, %d0

# CHECK-INST: madds.u %e0, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xe8,0x00]
.code32
madds.u %e0, %e0, %d1, %d1

# CHECK-INST: madds.u %e0, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xe8,0x00]
.code32
madds.u %e0, %e0, %d1, %d14

# CHECK-INST: madds.u %e0, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xe8,0x00]
.code32
madds.u %e0, %e0, %d1, %d15

# CHECK-INST: madds.u %e0, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xe8,0x00]
.code32
madds.u %e0, %e0, %d14, %d0

# CHECK-INST: madds.u %e0, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xe8,0x00]
.code32
madds.u %e0, %e0, %d14, %d1

# CHECK-INST: madds.u %e0, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xe8,0x00]
.code32
madds.u %e0, %e0, %d14, %d14

# CHECK-INST: madds.u %e0, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xe8,0x00]
.code32
madds.u %e0, %e0, %d14, %d15

# CHECK-INST: madds.u %e0, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xe8,0x00]
.code32
madds.u %e0, %e0, %d15, %d0

# CHECK-INST: madds.u %e0, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xe8,0x00]
.code32
madds.u %e0, %e0, %d15, %d1

# CHECK-INST: madds.u %e0, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xe8,0x00]
.code32
madds.u %e0, %e0, %d15, %d14

# CHECK-INST: madds.u %e0, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xe8,0x00]
.code32
madds.u %e0, %e0, %d15, %d15

# CHECK-INST: madds.u %e0, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xe8,0x06]
.code32
madds.u %e0, %e6, %d0, %d0

# CHECK-INST: madds.u %e0, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xe8,0x06]
.code32
madds.u %e0, %e6, %d0, %d1

# CHECK-INST: madds.u %e0, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xe8,0x06]
.code32
madds.u %e0, %e6, %d0, %d14

# CHECK-INST: madds.u %e0, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xe8,0x06]
.code32
madds.u %e0, %e6, %d0, %d15

# CHECK-INST: madds.u %e0, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xe8,0x06]
.code32
madds.u %e0, %e6, %d1, %d0

# CHECK-INST: madds.u %e0, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xe8,0x06]
.code32
madds.u %e0, %e6, %d1, %d1

# CHECK-INST: madds.u %e0, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xe8,0x06]
.code32
madds.u %e0, %e6, %d1, %d14

# CHECK-INST: madds.u %e0, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xe8,0x06]
.code32
madds.u %e0, %e6, %d1, %d15

# CHECK-INST: madds.u %e0, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xe8,0x06]
.code32
madds.u %e0, %e6, %d14, %d0

# CHECK-INST: madds.u %e0, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xe8,0x06]
.code32
madds.u %e0, %e6, %d14, %d1

# CHECK-INST: madds.u %e0, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xe8,0x06]
.code32
madds.u %e0, %e6, %d14, %d14

# CHECK-INST: madds.u %e0, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xe8,0x06]
.code32
madds.u %e0, %e6, %d14, %d15

# CHECK-INST: madds.u %e0, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xe8,0x06]
.code32
madds.u %e0, %e6, %d15, %d0

# CHECK-INST: madds.u %e0, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xe8,0x06]
.code32
madds.u %e0, %e6, %d15, %d1

# CHECK-INST: madds.u %e0, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xe8,0x06]
.code32
madds.u %e0, %e6, %d15, %d14

# CHECK-INST: madds.u %e0, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xe8,0x06]
.code32
madds.u %e0, %e6, %d15, %d15

# CHECK-INST: madds.u %e0, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xe8,0x0e]
.code32
madds.u %e0, %e14, %d0, %d0

# CHECK-INST: madds.u %e0, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xe8,0x0e]
.code32
madds.u %e0, %e14, %d0, %d1

# CHECK-INST: madds.u %e0, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xe8,0x0e]
.code32
madds.u %e0, %e14, %d0, %d14

# CHECK-INST: madds.u %e0, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xe8,0x0e]
.code32
madds.u %e0, %e14, %d0, %d15

# CHECK-INST: madds.u %e0, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xe8,0x0e]
.code32
madds.u %e0, %e14, %d1, %d0

# CHECK-INST: madds.u %e0, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xe8,0x0e]
.code32
madds.u %e0, %e14, %d1, %d1

# CHECK-INST: madds.u %e0, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xe8,0x0e]
.code32
madds.u %e0, %e14, %d1, %d14

# CHECK-INST: madds.u %e0, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xe8,0x0e]
.code32
madds.u %e0, %e14, %d1, %d15

# CHECK-INST: madds.u %e0, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xe8,0x0e]
.code32
madds.u %e0, %e14, %d14, %d0

# CHECK-INST: madds.u %e0, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xe8,0x0e]
.code32
madds.u %e0, %e14, %d14, %d1

# CHECK-INST: madds.u %e0, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xe8,0x0e]
.code32
madds.u %e0, %e14, %d14, %d14

# CHECK-INST: madds.u %e0, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xe8,0x0e]
.code32
madds.u %e0, %e14, %d14, %d15

# CHECK-INST: madds.u %e0, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xe8,0x0e]
.code32
madds.u %e0, %e14, %d15, %d0

# CHECK-INST: madds.u %e0, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xe8,0x0e]
.code32
madds.u %e0, %e14, %d15, %d1

# CHECK-INST: madds.u %e0, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xe8,0x0e]
.code32
madds.u %e0, %e14, %d15, %d14

# CHECK-INST: madds.u %e0, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xe8,0x0e]
.code32
madds.u %e0, %e14, %d15, %d15

# CHECK-INST: madds.u %e6, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xe8,0x60]
.code32
madds.u %e6, %e0, %d0, %d0

# CHECK-INST: madds.u %e6, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xe8,0x60]
.code32
madds.u %e6, %e0, %d0, %d1

# CHECK-INST: madds.u %e6, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xe8,0x60]
.code32
madds.u %e6, %e0, %d0, %d14

# CHECK-INST: madds.u %e6, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xe8,0x60]
.code32
madds.u %e6, %e0, %d0, %d15

# CHECK-INST: madds.u %e6, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xe8,0x60]
.code32
madds.u %e6, %e0, %d1, %d0

# CHECK-INST: madds.u %e6, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xe8,0x60]
.code32
madds.u %e6, %e0, %d1, %d1

# CHECK-INST: madds.u %e6, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xe8,0x60]
.code32
madds.u %e6, %e0, %d1, %d14

# CHECK-INST: madds.u %e6, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xe8,0x60]
.code32
madds.u %e6, %e0, %d1, %d15

# CHECK-INST: madds.u %e6, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xe8,0x60]
.code32
madds.u %e6, %e0, %d14, %d0

# CHECK-INST: madds.u %e6, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xe8,0x60]
.code32
madds.u %e6, %e0, %d14, %d1

# CHECK-INST: madds.u %e6, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xe8,0x60]
.code32
madds.u %e6, %e0, %d14, %d14

# CHECK-INST: madds.u %e6, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xe8,0x60]
.code32
madds.u %e6, %e0, %d14, %d15

# CHECK-INST: madds.u %e6, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xe8,0x60]
.code32
madds.u %e6, %e0, %d15, %d0

# CHECK-INST: madds.u %e6, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xe8,0x60]
.code32
madds.u %e6, %e0, %d15, %d1

# CHECK-INST: madds.u %e6, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xe8,0x60]
.code32
madds.u %e6, %e0, %d15, %d14

# CHECK-INST: madds.u %e6, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xe8,0x60]
.code32
madds.u %e6, %e0, %d15, %d15

# CHECK-INST: madds.u %e6, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xe8,0x66]
.code32
madds.u %e6, %e6, %d0, %d0

# CHECK-INST: madds.u %e6, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xe8,0x66]
.code32
madds.u %e6, %e6, %d0, %d1

# CHECK-INST: madds.u %e6, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xe8,0x66]
.code32
madds.u %e6, %e6, %d0, %d14

# CHECK-INST: madds.u %e6, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xe8,0x66]
.code32
madds.u %e6, %e6, %d0, %d15

# CHECK-INST: madds.u %e6, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xe8,0x66]
.code32
madds.u %e6, %e6, %d1, %d0

# CHECK-INST: madds.u %e6, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xe8,0x66]
.code32
madds.u %e6, %e6, %d1, %d1

# CHECK-INST: madds.u %e6, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xe8,0x66]
.code32
madds.u %e6, %e6, %d1, %d14

# CHECK-INST: madds.u %e6, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xe8,0x66]
.code32
madds.u %e6, %e6, %d1, %d15

# CHECK-INST: madds.u %e6, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xe8,0x66]
.code32
madds.u %e6, %e6, %d14, %d0

# CHECK-INST: madds.u %e6, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xe8,0x66]
.code32
madds.u %e6, %e6, %d14, %d1

# CHECK-INST: madds.u %e6, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xe8,0x66]
.code32
madds.u %e6, %e6, %d14, %d14

# CHECK-INST: madds.u %e6, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xe8,0x66]
.code32
madds.u %e6, %e6, %d14, %d15

# CHECK-INST: madds.u %e6, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xe8,0x66]
.code32
madds.u %e6, %e6, %d15, %d0

# CHECK-INST: madds.u %e6, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xe8,0x66]
.code32
madds.u %e6, %e6, %d15, %d1

# CHECK-INST: madds.u %e6, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xe8,0x66]
.code32
madds.u %e6, %e6, %d15, %d14

# CHECK-INST: madds.u %e6, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xe8,0x66]
.code32
madds.u %e6, %e6, %d15, %d15

# CHECK-INST: madds.u %e6, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xe8,0x6e]
.code32
madds.u %e6, %e14, %d0, %d0

# CHECK-INST: madds.u %e6, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xe8,0x6e]
.code32
madds.u %e6, %e14, %d0, %d1

# CHECK-INST: madds.u %e6, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xe8,0x6e]
.code32
madds.u %e6, %e14, %d0, %d14

# CHECK-INST: madds.u %e6, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xe8,0x6e]
.code32
madds.u %e6, %e14, %d0, %d15

# CHECK-INST: madds.u %e6, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xe8,0x6e]
.code32
madds.u %e6, %e14, %d1, %d0

# CHECK-INST: madds.u %e6, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xe8,0x6e]
.code32
madds.u %e6, %e14, %d1, %d1

# CHECK-INST: madds.u %e6, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xe8,0x6e]
.code32
madds.u %e6, %e14, %d1, %d14

# CHECK-INST: madds.u %e6, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xe8,0x6e]
.code32
madds.u %e6, %e14, %d1, %d15

# CHECK-INST: madds.u %e6, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xe8,0x6e]
.code32
madds.u %e6, %e14, %d14, %d0

# CHECK-INST: madds.u %e6, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xe8,0x6e]
.code32
madds.u %e6, %e14, %d14, %d1

# CHECK-INST: madds.u %e6, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xe8,0x6e]
.code32
madds.u %e6, %e14, %d14, %d14

# CHECK-INST: madds.u %e6, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xe8,0x6e]
.code32
madds.u %e6, %e14, %d14, %d15

# CHECK-INST: madds.u %e6, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xe8,0x6e]
.code32
madds.u %e6, %e14, %d15, %d0

# CHECK-INST: madds.u %e6, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xe8,0x6e]
.code32
madds.u %e6, %e14, %d15, %d1

# CHECK-INST: madds.u %e6, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xe8,0x6e]
.code32
madds.u %e6, %e14, %d15, %d14

# CHECK-INST: madds.u %e6, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xe8,0x6e]
.code32
madds.u %e6, %e14, %d15, %d15

# CHECK-INST: madds.u %e14, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xe8,0xe0]
.code32
madds.u %e14, %e0, %d0, %d0

# CHECK-INST: madds.u %e14, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xe8,0xe0]
.code32
madds.u %e14, %e0, %d0, %d1

# CHECK-INST: madds.u %e14, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xe8,0xe0]
.code32
madds.u %e14, %e0, %d0, %d14

# CHECK-INST: madds.u %e14, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xe8,0xe0]
.code32
madds.u %e14, %e0, %d0, %d15

# CHECK-INST: madds.u %e14, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xe8,0xe0]
.code32
madds.u %e14, %e0, %d1, %d0

# CHECK-INST: madds.u %e14, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xe8,0xe0]
.code32
madds.u %e14, %e0, %d1, %d1

# CHECK-INST: madds.u %e14, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xe8,0xe0]
.code32
madds.u %e14, %e0, %d1, %d14

# CHECK-INST: madds.u %e14, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xe8,0xe0]
.code32
madds.u %e14, %e0, %d1, %d15

# CHECK-INST: madds.u %e14, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xe8,0xe0]
.code32
madds.u %e14, %e0, %d14, %d0

# CHECK-INST: madds.u %e14, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xe8,0xe0]
.code32
madds.u %e14, %e0, %d14, %d1

# CHECK-INST: madds.u %e14, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xe8,0xe0]
.code32
madds.u %e14, %e0, %d14, %d14

# CHECK-INST: madds.u %e14, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xe8,0xe0]
.code32
madds.u %e14, %e0, %d14, %d15

# CHECK-INST: madds.u %e14, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xe8,0xe0]
.code32
madds.u %e14, %e0, %d15, %d0

# CHECK-INST: madds.u %e14, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xe8,0xe0]
.code32
madds.u %e14, %e0, %d15, %d1

# CHECK-INST: madds.u %e14, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xe8,0xe0]
.code32
madds.u %e14, %e0, %d15, %d14

# CHECK-INST: madds.u %e14, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xe8,0xe0]
.code32
madds.u %e14, %e0, %d15, %d15

# CHECK-INST: madds.u %e14, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xe8,0xe6]
.code32
madds.u %e14, %e6, %d0, %d0

# CHECK-INST: madds.u %e14, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xe8,0xe6]
.code32
madds.u %e14, %e6, %d0, %d1

# CHECK-INST: madds.u %e14, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xe8,0xe6]
.code32
madds.u %e14, %e6, %d0, %d14

# CHECK-INST: madds.u %e14, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xe8,0xe6]
.code32
madds.u %e14, %e6, %d0, %d15

# CHECK-INST: madds.u %e14, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xe8,0xe6]
.code32
madds.u %e14, %e6, %d1, %d0

# CHECK-INST: madds.u %e14, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xe8,0xe6]
.code32
madds.u %e14, %e6, %d1, %d1

# CHECK-INST: madds.u %e14, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xe8,0xe6]
.code32
madds.u %e14, %e6, %d1, %d14

# CHECK-INST: madds.u %e14, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xe8,0xe6]
.code32
madds.u %e14, %e6, %d1, %d15

# CHECK-INST: madds.u %e14, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xe8,0xe6]
.code32
madds.u %e14, %e6, %d14, %d0

# CHECK-INST: madds.u %e14, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xe8,0xe6]
.code32
madds.u %e14, %e6, %d14, %d1

# CHECK-INST: madds.u %e14, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xe8,0xe6]
.code32
madds.u %e14, %e6, %d14, %d14

# CHECK-INST: madds.u %e14, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xe8,0xe6]
.code32
madds.u %e14, %e6, %d14, %d15

# CHECK-INST: madds.u %e14, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xe8,0xe6]
.code32
madds.u %e14, %e6, %d15, %d0

# CHECK-INST: madds.u %e14, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xe8,0xe6]
.code32
madds.u %e14, %e6, %d15, %d1

# CHECK-INST: madds.u %e14, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xe8,0xe6]
.code32
madds.u %e14, %e6, %d15, %d14

# CHECK-INST: madds.u %e14, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xe8,0xe6]
.code32
madds.u %e14, %e6, %d15, %d15

# CHECK-INST: madds.u %e14, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xe8,0xee]
.code32
madds.u %e14, %e14, %d0, %d0

# CHECK-INST: madds.u %e14, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xe8,0xee]
.code32
madds.u %e14, %e14, %d0, %d1

# CHECK-INST: madds.u %e14, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xe8,0xee]
.code32
madds.u %e14, %e14, %d0, %d14

# CHECK-INST: madds.u %e14, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xe8,0xee]
.code32
madds.u %e14, %e14, %d0, %d15

# CHECK-INST: madds.u %e14, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xe8,0xee]
.code32
madds.u %e14, %e14, %d1, %d0

# CHECK-INST: madds.u %e14, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xe8,0xee]
.code32
madds.u %e14, %e14, %d1, %d1

# CHECK-INST: madds.u %e14, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xe8,0xee]
.code32
madds.u %e14, %e14, %d1, %d14

# CHECK-INST: madds.u %e14, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xe8,0xee]
.code32
madds.u %e14, %e14, %d1, %d15

# CHECK-INST: madds.u %e14, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xe8,0xee]
.code32
madds.u %e14, %e14, %d14, %d0

# CHECK-INST: madds.u %e14, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xe8,0xee]
.code32
madds.u %e14, %e14, %d14, %d1

# CHECK-INST: madds.u %e14, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xe8,0xee]
.code32
madds.u %e14, %e14, %d14, %d14

# CHECK-INST: madds.u %e14, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xe8,0xee]
.code32
madds.u %e14, %e14, %d14, %d15

# CHECK-INST: madds.u %e14, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xe8,0xee]
.code32
madds.u %e14, %e14, %d15, %d0

# CHECK-INST: madds.u %e14, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xe8,0xee]
.code32
madds.u %e14, %e14, %d15, %d1

# CHECK-INST: madds.u %e14, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xe8,0xee]
.code32
madds.u %e14, %e14, %d15, %d14

# CHECK-INST: madds.u %e14, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xe8,0xee]
.code32
madds.u %e14, %e14, %d15, %d15

# CHECK-INST: madds.u %e0, %e0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0xd0,0x00]
.code32
madds.u %e0, %e0, %d0, 271

# CHECK-INST: madds.u %e0, %e0, %d0, 496
# CHECK: encoding: [0x13,0x00,0xdf,0x00]
.code32
madds.u %e0, %e0, %d0, 496

# CHECK-INST: madds.u %e0, %e0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0xdf,0x00]
.code32
madds.u %e0, %e0, %d0, 511

# CHECK-INST: madds.u %e0, %e0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0xd0,0x00]
.code32
madds.u %e0, %e0, %d1, 271

# CHECK-INST: madds.u %e0, %e0, %d1, 496
# CHECK: encoding: [0x13,0x01,0xdf,0x00]
.code32
madds.u %e0, %e0, %d1, 496

# CHECK-INST: madds.u %e0, %e0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0xdf,0x00]
.code32
madds.u %e0, %e0, %d1, 511

# CHECK-INST: madds.u %e0, %e0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0xd0,0x00]
.code32
madds.u %e0, %e0, %d14, 271

# CHECK-INST: madds.u %e0, %e0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0xdf,0x00]
.code32
madds.u %e0, %e0, %d14, 496

# CHECK-INST: madds.u %e0, %e0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0xdf,0x00]
.code32
madds.u %e0, %e0, %d14, 511

# CHECK-INST: madds.u %e0, %e0, %d15, 271
# CHECK: encoding: [0x13,0xff,0xd0,0x00]
.code32
madds.u %e0, %e0, %d15, 271

# CHECK-INST: madds.u %e0, %e0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0xdf,0x00]
.code32
madds.u %e0, %e0, %d15, 496

# CHECK-INST: madds.u %e0, %e0, %d15, 511
# CHECK: encoding: [0x13,0xff,0xdf,0x00]
.code32
madds.u %e0, %e0, %d15, 511

# CHECK-INST: madds.u %e0, %e6, %d0, 271
# CHECK: encoding: [0x13,0xf0,0xd0,0x06]
.code32
madds.u %e0, %e6, %d0, 271

# CHECK-INST: madds.u %e0, %e6, %d0, 496
# CHECK: encoding: [0x13,0x00,0xdf,0x06]
.code32
madds.u %e0, %e6, %d0, 496

# CHECK-INST: madds.u %e0, %e6, %d0, 511
# CHECK: encoding: [0x13,0xf0,0xdf,0x06]
.code32
madds.u %e0, %e6, %d0, 511

# CHECK-INST: madds.u %e0, %e6, %d1, 271
# CHECK: encoding: [0x13,0xf1,0xd0,0x06]
.code32
madds.u %e0, %e6, %d1, 271

# CHECK-INST: madds.u %e0, %e6, %d1, 496
# CHECK: encoding: [0x13,0x01,0xdf,0x06]
.code32
madds.u %e0, %e6, %d1, 496

# CHECK-INST: madds.u %e0, %e6, %d1, 511
# CHECK: encoding: [0x13,0xf1,0xdf,0x06]
.code32
madds.u %e0, %e6, %d1, 511

# CHECK-INST: madds.u %e0, %e6, %d14, 271
# CHECK: encoding: [0x13,0xfe,0xd0,0x06]
.code32
madds.u %e0, %e6, %d14, 271

# CHECK-INST: madds.u %e0, %e6, %d14, 496
# CHECK: encoding: [0x13,0x0e,0xdf,0x06]
.code32
madds.u %e0, %e6, %d14, 496

# CHECK-INST: madds.u %e0, %e6, %d14, 511
# CHECK: encoding: [0x13,0xfe,0xdf,0x06]
.code32
madds.u %e0, %e6, %d14, 511

# CHECK-INST: madds.u %e0, %e6, %d15, 271
# CHECK: encoding: [0x13,0xff,0xd0,0x06]
.code32
madds.u %e0, %e6, %d15, 271

# CHECK-INST: madds.u %e0, %e6, %d15, 496
# CHECK: encoding: [0x13,0x0f,0xdf,0x06]
.code32
madds.u %e0, %e6, %d15, 496

# CHECK-INST: madds.u %e0, %e6, %d15, 511
# CHECK: encoding: [0x13,0xff,0xdf,0x06]
.code32
madds.u %e0, %e6, %d15, 511

# CHECK-INST: madds.u %e0, %e14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0xd0,0x0e]
.code32
madds.u %e0, %e14, %d0, 271

# CHECK-INST: madds.u %e0, %e14, %d0, 496
# CHECK: encoding: [0x13,0x00,0xdf,0x0e]
.code32
madds.u %e0, %e14, %d0, 496

# CHECK-INST: madds.u %e0, %e14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0xdf,0x0e]
.code32
madds.u %e0, %e14, %d0, 511

# CHECK-INST: madds.u %e0, %e14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0xd0,0x0e]
.code32
madds.u %e0, %e14, %d1, 271

# CHECK-INST: madds.u %e0, %e14, %d1, 496
# CHECK: encoding: [0x13,0x01,0xdf,0x0e]
.code32
madds.u %e0, %e14, %d1, 496

# CHECK-INST: madds.u %e0, %e14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0xdf,0x0e]
.code32
madds.u %e0, %e14, %d1, 511

# CHECK-INST: madds.u %e0, %e14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0xd0,0x0e]
.code32
madds.u %e0, %e14, %d14, 271

# CHECK-INST: madds.u %e0, %e14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0xdf,0x0e]
.code32
madds.u %e0, %e14, %d14, 496

# CHECK-INST: madds.u %e0, %e14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0xdf,0x0e]
.code32
madds.u %e0, %e14, %d14, 511

# CHECK-INST: madds.u %e0, %e14, %d15, 271
# CHECK: encoding: [0x13,0xff,0xd0,0x0e]
.code32
madds.u %e0, %e14, %d15, 271

# CHECK-INST: madds.u %e0, %e14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0xdf,0x0e]
.code32
madds.u %e0, %e14, %d15, 496

# CHECK-INST: madds.u %e0, %e14, %d15, 511
# CHECK: encoding: [0x13,0xff,0xdf,0x0e]
.code32
madds.u %e0, %e14, %d15, 511

# CHECK-INST: madds.u %e6, %e0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0xd0,0x60]
.code32
madds.u %e6, %e0, %d0, 271

# CHECK-INST: madds.u %e6, %e0, %d0, 496
# CHECK: encoding: [0x13,0x00,0xdf,0x60]
.code32
madds.u %e6, %e0, %d0, 496

# CHECK-INST: madds.u %e6, %e0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0xdf,0x60]
.code32
madds.u %e6, %e0, %d0, 511

# CHECK-INST: madds.u %e6, %e0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0xd0,0x60]
.code32
madds.u %e6, %e0, %d1, 271

# CHECK-INST: madds.u %e6, %e0, %d1, 496
# CHECK: encoding: [0x13,0x01,0xdf,0x60]
.code32
madds.u %e6, %e0, %d1, 496

# CHECK-INST: madds.u %e6, %e0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0xdf,0x60]
.code32
madds.u %e6, %e0, %d1, 511

# CHECK-INST: madds.u %e6, %e0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0xd0,0x60]
.code32
madds.u %e6, %e0, %d14, 271

# CHECK-INST: madds.u %e6, %e0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0xdf,0x60]
.code32
madds.u %e6, %e0, %d14, 496

# CHECK-INST: madds.u %e6, %e0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0xdf,0x60]
.code32
madds.u %e6, %e0, %d14, 511

# CHECK-INST: madds.u %e6, %e0, %d15, 271
# CHECK: encoding: [0x13,0xff,0xd0,0x60]
.code32
madds.u %e6, %e0, %d15, 271

# CHECK-INST: madds.u %e6, %e0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0xdf,0x60]
.code32
madds.u %e6, %e0, %d15, 496

# CHECK-INST: madds.u %e6, %e0, %d15, 511
# CHECK: encoding: [0x13,0xff,0xdf,0x60]
.code32
madds.u %e6, %e0, %d15, 511

# CHECK-INST: madds.u %e6, %e6, %d0, 271
# CHECK: encoding: [0x13,0xf0,0xd0,0x66]
.code32
madds.u %e6, %e6, %d0, 271

# CHECK-INST: madds.u %e6, %e6, %d0, 496
# CHECK: encoding: [0x13,0x00,0xdf,0x66]
.code32
madds.u %e6, %e6, %d0, 496

# CHECK-INST: madds.u %e6, %e6, %d0, 511
# CHECK: encoding: [0x13,0xf0,0xdf,0x66]
.code32
madds.u %e6, %e6, %d0, 511

# CHECK-INST: madds.u %e6, %e6, %d1, 271
# CHECK: encoding: [0x13,0xf1,0xd0,0x66]
.code32
madds.u %e6, %e6, %d1, 271

# CHECK-INST: madds.u %e6, %e6, %d1, 496
# CHECK: encoding: [0x13,0x01,0xdf,0x66]
.code32
madds.u %e6, %e6, %d1, 496

# CHECK-INST: madds.u %e6, %e6, %d1, 511
# CHECK: encoding: [0x13,0xf1,0xdf,0x66]
.code32
madds.u %e6, %e6, %d1, 511

# CHECK-INST: madds.u %e6, %e6, %d14, 271
# CHECK: encoding: [0x13,0xfe,0xd0,0x66]
.code32
madds.u %e6, %e6, %d14, 271

# CHECK-INST: madds.u %e6, %e6, %d14, 496
# CHECK: encoding: [0x13,0x0e,0xdf,0x66]
.code32
madds.u %e6, %e6, %d14, 496

# CHECK-INST: madds.u %e6, %e6, %d14, 511
# CHECK: encoding: [0x13,0xfe,0xdf,0x66]
.code32
madds.u %e6, %e6, %d14, 511

# CHECK-INST: madds.u %e6, %e6, %d15, 271
# CHECK: encoding: [0x13,0xff,0xd0,0x66]
.code32
madds.u %e6, %e6, %d15, 271

# CHECK-INST: madds.u %e6, %e6, %d15, 496
# CHECK: encoding: [0x13,0x0f,0xdf,0x66]
.code32
madds.u %e6, %e6, %d15, 496

# CHECK-INST: madds.u %e6, %e6, %d15, 511
# CHECK: encoding: [0x13,0xff,0xdf,0x66]
.code32
madds.u %e6, %e6, %d15, 511

# CHECK-INST: madds.u %e6, %e14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0xd0,0x6e]
.code32
madds.u %e6, %e14, %d0, 271

# CHECK-INST: madds.u %e6, %e14, %d0, 496
# CHECK: encoding: [0x13,0x00,0xdf,0x6e]
.code32
madds.u %e6, %e14, %d0, 496

# CHECK-INST: madds.u %e6, %e14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0xdf,0x6e]
.code32
madds.u %e6, %e14, %d0, 511

# CHECK-INST: madds.u %e6, %e14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0xd0,0x6e]
.code32
madds.u %e6, %e14, %d1, 271

# CHECK-INST: madds.u %e6, %e14, %d1, 496
# CHECK: encoding: [0x13,0x01,0xdf,0x6e]
.code32
madds.u %e6, %e14, %d1, 496

# CHECK-INST: madds.u %e6, %e14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0xdf,0x6e]
.code32
madds.u %e6, %e14, %d1, 511

# CHECK-INST: madds.u %e6, %e14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0xd0,0x6e]
.code32
madds.u %e6, %e14, %d14, 271

# CHECK-INST: madds.u %e6, %e14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0xdf,0x6e]
.code32
madds.u %e6, %e14, %d14, 496

# CHECK-INST: madds.u %e6, %e14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0xdf,0x6e]
.code32
madds.u %e6, %e14, %d14, 511

# CHECK-INST: madds.u %e6, %e14, %d15, 271
# CHECK: encoding: [0x13,0xff,0xd0,0x6e]
.code32
madds.u %e6, %e14, %d15, 271

# CHECK-INST: madds.u %e6, %e14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0xdf,0x6e]
.code32
madds.u %e6, %e14, %d15, 496

# CHECK-INST: madds.u %e6, %e14, %d15, 511
# CHECK: encoding: [0x13,0xff,0xdf,0x6e]
.code32
madds.u %e6, %e14, %d15, 511

# CHECK-INST: madds.u %e14, %e0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0xd0,0xe0]
.code32
madds.u %e14, %e0, %d0, 271

# CHECK-INST: madds.u %e14, %e0, %d0, 496
# CHECK: encoding: [0x13,0x00,0xdf,0xe0]
.code32
madds.u %e14, %e0, %d0, 496

# CHECK-INST: madds.u %e14, %e0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0xdf,0xe0]
.code32
madds.u %e14, %e0, %d0, 511

# CHECK-INST: madds.u %e14, %e0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0xd0,0xe0]
.code32
madds.u %e14, %e0, %d1, 271

# CHECK-INST: madds.u %e14, %e0, %d1, 496
# CHECK: encoding: [0x13,0x01,0xdf,0xe0]
.code32
madds.u %e14, %e0, %d1, 496

# CHECK-INST: madds.u %e14, %e0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0xdf,0xe0]
.code32
madds.u %e14, %e0, %d1, 511

# CHECK-INST: madds.u %e14, %e0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0xd0,0xe0]
.code32
madds.u %e14, %e0, %d14, 271

# CHECK-INST: madds.u %e14, %e0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0xdf,0xe0]
.code32
madds.u %e14, %e0, %d14, 496

# CHECK-INST: madds.u %e14, %e0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0xdf,0xe0]
.code32
madds.u %e14, %e0, %d14, 511

# CHECK-INST: madds.u %e14, %e0, %d15, 271
# CHECK: encoding: [0x13,0xff,0xd0,0xe0]
.code32
madds.u %e14, %e0, %d15, 271

# CHECK-INST: madds.u %e14, %e0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0xdf,0xe0]
.code32
madds.u %e14, %e0, %d15, 496

# CHECK-INST: madds.u %e14, %e0, %d15, 511
# CHECK: encoding: [0x13,0xff,0xdf,0xe0]
.code32
madds.u %e14, %e0, %d15, 511

# CHECK-INST: madds.u %e14, %e6, %d0, 271
# CHECK: encoding: [0x13,0xf0,0xd0,0xe6]
.code32
madds.u %e14, %e6, %d0, 271

# CHECK-INST: madds.u %e14, %e6, %d0, 496
# CHECK: encoding: [0x13,0x00,0xdf,0xe6]
.code32
madds.u %e14, %e6, %d0, 496

# CHECK-INST: madds.u %e14, %e6, %d0, 511
# CHECK: encoding: [0x13,0xf0,0xdf,0xe6]
.code32
madds.u %e14, %e6, %d0, 511

# CHECK-INST: madds.u %e14, %e6, %d1, 271
# CHECK: encoding: [0x13,0xf1,0xd0,0xe6]
.code32
madds.u %e14, %e6, %d1, 271

# CHECK-INST: madds.u %e14, %e6, %d1, 496
# CHECK: encoding: [0x13,0x01,0xdf,0xe6]
.code32
madds.u %e14, %e6, %d1, 496

# CHECK-INST: madds.u %e14, %e6, %d1, 511
# CHECK: encoding: [0x13,0xf1,0xdf,0xe6]
.code32
madds.u %e14, %e6, %d1, 511

# CHECK-INST: madds.u %e14, %e6, %d14, 271
# CHECK: encoding: [0x13,0xfe,0xd0,0xe6]
.code32
madds.u %e14, %e6, %d14, 271

# CHECK-INST: madds.u %e14, %e6, %d14, 496
# CHECK: encoding: [0x13,0x0e,0xdf,0xe6]
.code32
madds.u %e14, %e6, %d14, 496

# CHECK-INST: madds.u %e14, %e6, %d14, 511
# CHECK: encoding: [0x13,0xfe,0xdf,0xe6]
.code32
madds.u %e14, %e6, %d14, 511

# CHECK-INST: madds.u %e14, %e6, %d15, 271
# CHECK: encoding: [0x13,0xff,0xd0,0xe6]
.code32
madds.u %e14, %e6, %d15, 271

# CHECK-INST: madds.u %e14, %e6, %d15, 496
# CHECK: encoding: [0x13,0x0f,0xdf,0xe6]
.code32
madds.u %e14, %e6, %d15, 496

# CHECK-INST: madds.u %e14, %e6, %d15, 511
# CHECK: encoding: [0x13,0xff,0xdf,0xe6]
.code32
madds.u %e14, %e6, %d15, 511

# CHECK-INST: madds.u %e14, %e14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0xd0,0xee]
.code32
madds.u %e14, %e14, %d0, 271

# CHECK-INST: madds.u %e14, %e14, %d0, 496
# CHECK: encoding: [0x13,0x00,0xdf,0xee]
.code32
madds.u %e14, %e14, %d0, 496

# CHECK-INST: madds.u %e14, %e14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0xdf,0xee]
.code32
madds.u %e14, %e14, %d0, 511

# CHECK-INST: madds.u %e14, %e14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0xd0,0xee]
.code32
madds.u %e14, %e14, %d1, 271

# CHECK-INST: madds.u %e14, %e14, %d1, 496
# CHECK: encoding: [0x13,0x01,0xdf,0xee]
.code32
madds.u %e14, %e14, %d1, 496

# CHECK-INST: madds.u %e14, %e14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0xdf,0xee]
.code32
madds.u %e14, %e14, %d1, 511

# CHECK-INST: madds.u %e14, %e14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0xd0,0xee]
.code32
madds.u %e14, %e14, %d14, 271

# CHECK-INST: madds.u %e14, %e14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0xdf,0xee]
.code32
madds.u %e14, %e14, %d14, 496

# CHECK-INST: madds.u %e14, %e14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0xdf,0xee]
.code32
madds.u %e14, %e14, %d14, 511

# CHECK-INST: madds.u %e14, %e14, %d15, 271
# CHECK: encoding: [0x13,0xff,0xd0,0xee]
.code32
madds.u %e14, %e14, %d15, 271

# CHECK-INST: madds.u %e14, %e14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0xdf,0xee]
.code32
madds.u %e14, %e14, %d15, 496

# CHECK-INST: madds.u %e14, %e14, %d15, 511
# CHECK: encoding: [0x13,0xff,0xdf,0xee]
.code32
madds.u %e14, %e14, %d15, 511

# CHECK-INST: msub %d0, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0x00]
.code32
msub %d0, %d0, %d0, %d0

# CHECK-INST: msub %d0, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0x00]
.code32
msub %d0, %d0, %d0, %d1

# CHECK-INST: msub %d0, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0x00]
.code32
msub %d0, %d0, %d0, %d14

# CHECK-INST: msub %d0, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0x00]
.code32
msub %d0, %d0, %d0, %d15

# CHECK-INST: msub %d0, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0x00]
.code32
msub %d0, %d0, %d1, %d0

# CHECK-INST: msub %d0, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0x00]
.code32
msub %d0, %d0, %d1, %d1

# CHECK-INST: msub %d0, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0x00]
.code32
msub %d0, %d0, %d1, %d14

# CHECK-INST: msub %d0, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0x00]
.code32
msub %d0, %d0, %d1, %d15

# CHECK-INST: msub %d0, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0x00]
.code32
msub %d0, %d0, %d14, %d0

# CHECK-INST: msub %d0, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0x00]
.code32
msub %d0, %d0, %d14, %d1

# CHECK-INST: msub %d0, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0x00]
.code32
msub %d0, %d0, %d14, %d14

# CHECK-INST: msub %d0, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0x00]
.code32
msub %d0, %d0, %d14, %d15

# CHECK-INST: msub %d0, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0x00]
.code32
msub %d0, %d0, %d15, %d0

# CHECK-INST: msub %d0, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0x00]
.code32
msub %d0, %d0, %d15, %d1

# CHECK-INST: msub %d0, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0x00]
.code32
msub %d0, %d0, %d15, %d14

# CHECK-INST: msub %d0, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0x00]
.code32
msub %d0, %d0, %d15, %d15

# CHECK-INST: msub %d0, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0x01]
.code32
msub %d0, %d1, %d0, %d0

# CHECK-INST: msub %d0, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0x01]
.code32
msub %d0, %d1, %d0, %d1

# CHECK-INST: msub %d0, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0x01]
.code32
msub %d0, %d1, %d0, %d14

# CHECK-INST: msub %d0, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0x01]
.code32
msub %d0, %d1, %d0, %d15

# CHECK-INST: msub %d0, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0x01]
.code32
msub %d0, %d1, %d1, %d0

# CHECK-INST: msub %d0, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0x01]
.code32
msub %d0, %d1, %d1, %d1

# CHECK-INST: msub %d0, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0x01]
.code32
msub %d0, %d1, %d1, %d14

# CHECK-INST: msub %d0, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0x01]
.code32
msub %d0, %d1, %d1, %d15

# CHECK-INST: msub %d0, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0x01]
.code32
msub %d0, %d1, %d14, %d0

# CHECK-INST: msub %d0, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0x01]
.code32
msub %d0, %d1, %d14, %d1

# CHECK-INST: msub %d0, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0x01]
.code32
msub %d0, %d1, %d14, %d14

# CHECK-INST: msub %d0, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0x01]
.code32
msub %d0, %d1, %d14, %d15

# CHECK-INST: msub %d0, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0x01]
.code32
msub %d0, %d1, %d15, %d0

# CHECK-INST: msub %d0, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0x01]
.code32
msub %d0, %d1, %d15, %d1

# CHECK-INST: msub %d0, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0x01]
.code32
msub %d0, %d1, %d15, %d14

# CHECK-INST: msub %d0, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0x01]
.code32
msub %d0, %d1, %d15, %d15

# CHECK-INST: msub %d0, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0x0e]
.code32
msub %d0, %d14, %d0, %d0

# CHECK-INST: msub %d0, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0x0e]
.code32
msub %d0, %d14, %d0, %d1

# CHECK-INST: msub %d0, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0x0e]
.code32
msub %d0, %d14, %d0, %d14

# CHECK-INST: msub %d0, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0x0e]
.code32
msub %d0, %d14, %d0, %d15

# CHECK-INST: msub %d0, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0x0e]
.code32
msub %d0, %d14, %d1, %d0

# CHECK-INST: msub %d0, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0x0e]
.code32
msub %d0, %d14, %d1, %d1

# CHECK-INST: msub %d0, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0x0e]
.code32
msub %d0, %d14, %d1, %d14

# CHECK-INST: msub %d0, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0x0e]
.code32
msub %d0, %d14, %d1, %d15

# CHECK-INST: msub %d0, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0x0e]
.code32
msub %d0, %d14, %d14, %d0

# CHECK-INST: msub %d0, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0x0e]
.code32
msub %d0, %d14, %d14, %d1

# CHECK-INST: msub %d0, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0x0e]
.code32
msub %d0, %d14, %d14, %d14

# CHECK-INST: msub %d0, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0x0e]
.code32
msub %d0, %d14, %d14, %d15

# CHECK-INST: msub %d0, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0x0e]
.code32
msub %d0, %d14, %d15, %d0

# CHECK-INST: msub %d0, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0x0e]
.code32
msub %d0, %d14, %d15, %d1

# CHECK-INST: msub %d0, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0x0e]
.code32
msub %d0, %d14, %d15, %d14

# CHECK-INST: msub %d0, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0x0e]
.code32
msub %d0, %d14, %d15, %d15

# CHECK-INST: msub %d0, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0x0f]
.code32
msub %d0, %d15, %d0, %d0

# CHECK-INST: msub %d0, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0x0f]
.code32
msub %d0, %d15, %d0, %d1

# CHECK-INST: msub %d0, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0x0f]
.code32
msub %d0, %d15, %d0, %d14

# CHECK-INST: msub %d0, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0x0f]
.code32
msub %d0, %d15, %d0, %d15

# CHECK-INST: msub %d0, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0x0f]
.code32
msub %d0, %d15, %d1, %d0

# CHECK-INST: msub %d0, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0x0f]
.code32
msub %d0, %d15, %d1, %d1

# CHECK-INST: msub %d0, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0x0f]
.code32
msub %d0, %d15, %d1, %d14

# CHECK-INST: msub %d0, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0x0f]
.code32
msub %d0, %d15, %d1, %d15

# CHECK-INST: msub %d0, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0x0f]
.code32
msub %d0, %d15, %d14, %d0

# CHECK-INST: msub %d0, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0x0f]
.code32
msub %d0, %d15, %d14, %d1

# CHECK-INST: msub %d0, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0x0f]
.code32
msub %d0, %d15, %d14, %d14

# CHECK-INST: msub %d0, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0x0f]
.code32
msub %d0, %d15, %d14, %d15

# CHECK-INST: msub %d0, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0x0f]
.code32
msub %d0, %d15, %d15, %d0

# CHECK-INST: msub %d0, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0x0f]
.code32
msub %d0, %d15, %d15, %d1

# CHECK-INST: msub %d0, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0x0f]
.code32
msub %d0, %d15, %d15, %d14

# CHECK-INST: msub %d0, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0x0f]
.code32
msub %d0, %d15, %d15, %d15

# CHECK-INST: msub %d1, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0x10]
.code32
msub %d1, %d0, %d0, %d0

# CHECK-INST: msub %d1, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0x10]
.code32
msub %d1, %d0, %d0, %d1

# CHECK-INST: msub %d1, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0x10]
.code32
msub %d1, %d0, %d0, %d14

# CHECK-INST: msub %d1, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0x10]
.code32
msub %d1, %d0, %d0, %d15

# CHECK-INST: msub %d1, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0x10]
.code32
msub %d1, %d0, %d1, %d0

# CHECK-INST: msub %d1, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0x10]
.code32
msub %d1, %d0, %d1, %d1

# CHECK-INST: msub %d1, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0x10]
.code32
msub %d1, %d0, %d1, %d14

# CHECK-INST: msub %d1, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0x10]
.code32
msub %d1, %d0, %d1, %d15

# CHECK-INST: msub %d1, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0x10]
.code32
msub %d1, %d0, %d14, %d0

# CHECK-INST: msub %d1, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0x10]
.code32
msub %d1, %d0, %d14, %d1

# CHECK-INST: msub %d1, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0x10]
.code32
msub %d1, %d0, %d14, %d14

# CHECK-INST: msub %d1, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0x10]
.code32
msub %d1, %d0, %d14, %d15

# CHECK-INST: msub %d1, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0x10]
.code32
msub %d1, %d0, %d15, %d0

# CHECK-INST: msub %d1, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0x10]
.code32
msub %d1, %d0, %d15, %d1

# CHECK-INST: msub %d1, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0x10]
.code32
msub %d1, %d0, %d15, %d14

# CHECK-INST: msub %d1, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0x10]
.code32
msub %d1, %d0, %d15, %d15

# CHECK-INST: msub %d1, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0x11]
.code32
msub %d1, %d1, %d0, %d0

# CHECK-INST: msub %d1, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0x11]
.code32
msub %d1, %d1, %d0, %d1

# CHECK-INST: msub %d1, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0x11]
.code32
msub %d1, %d1, %d0, %d14

# CHECK-INST: msub %d1, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0x11]
.code32
msub %d1, %d1, %d0, %d15

# CHECK-INST: msub %d1, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0x11]
.code32
msub %d1, %d1, %d1, %d0

# CHECK-INST: msub %d1, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0x11]
.code32
msub %d1, %d1, %d1, %d1

# CHECK-INST: msub %d1, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0x11]
.code32
msub %d1, %d1, %d1, %d14

# CHECK-INST: msub %d1, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0x11]
.code32
msub %d1, %d1, %d1, %d15

# CHECK-INST: msub %d1, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0x11]
.code32
msub %d1, %d1, %d14, %d0

# CHECK-INST: msub %d1, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0x11]
.code32
msub %d1, %d1, %d14, %d1

# CHECK-INST: msub %d1, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0x11]
.code32
msub %d1, %d1, %d14, %d14

# CHECK-INST: msub %d1, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0x11]
.code32
msub %d1, %d1, %d14, %d15

# CHECK-INST: msub %d1, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0x11]
.code32
msub %d1, %d1, %d15, %d0

# CHECK-INST: msub %d1, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0x11]
.code32
msub %d1, %d1, %d15, %d1

# CHECK-INST: msub %d1, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0x11]
.code32
msub %d1, %d1, %d15, %d14

# CHECK-INST: msub %d1, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0x11]
.code32
msub %d1, %d1, %d15, %d15

# CHECK-INST: msub %d1, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0x1e]
.code32
msub %d1, %d14, %d0, %d0

# CHECK-INST: msub %d1, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0x1e]
.code32
msub %d1, %d14, %d0, %d1

# CHECK-INST: msub %d1, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0x1e]
.code32
msub %d1, %d14, %d0, %d14

# CHECK-INST: msub %d1, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0x1e]
.code32
msub %d1, %d14, %d0, %d15

# CHECK-INST: msub %d1, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0x1e]
.code32
msub %d1, %d14, %d1, %d0

# CHECK-INST: msub %d1, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0x1e]
.code32
msub %d1, %d14, %d1, %d1

# CHECK-INST: msub %d1, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0x1e]
.code32
msub %d1, %d14, %d1, %d14

# CHECK-INST: msub %d1, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0x1e]
.code32
msub %d1, %d14, %d1, %d15

# CHECK-INST: msub %d1, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0x1e]
.code32
msub %d1, %d14, %d14, %d0

# CHECK-INST: msub %d1, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0x1e]
.code32
msub %d1, %d14, %d14, %d1

# CHECK-INST: msub %d1, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0x1e]
.code32
msub %d1, %d14, %d14, %d14

# CHECK-INST: msub %d1, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0x1e]
.code32
msub %d1, %d14, %d14, %d15

# CHECK-INST: msub %d1, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0x1e]
.code32
msub %d1, %d14, %d15, %d0

# CHECK-INST: msub %d1, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0x1e]
.code32
msub %d1, %d14, %d15, %d1

# CHECK-INST: msub %d1, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0x1e]
.code32
msub %d1, %d14, %d15, %d14

# CHECK-INST: msub %d1, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0x1e]
.code32
msub %d1, %d14, %d15, %d15

# CHECK-INST: msub %d1, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0x1f]
.code32
msub %d1, %d15, %d0, %d0

# CHECK-INST: msub %d1, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0x1f]
.code32
msub %d1, %d15, %d0, %d1

# CHECK-INST: msub %d1, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0x1f]
.code32
msub %d1, %d15, %d0, %d14

# CHECK-INST: msub %d1, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0x1f]
.code32
msub %d1, %d15, %d0, %d15

# CHECK-INST: msub %d1, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0x1f]
.code32
msub %d1, %d15, %d1, %d0

# CHECK-INST: msub %d1, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0x1f]
.code32
msub %d1, %d15, %d1, %d1

# CHECK-INST: msub %d1, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0x1f]
.code32
msub %d1, %d15, %d1, %d14

# CHECK-INST: msub %d1, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0x1f]
.code32
msub %d1, %d15, %d1, %d15

# CHECK-INST: msub %d1, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0x1f]
.code32
msub %d1, %d15, %d14, %d0

# CHECK-INST: msub %d1, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0x1f]
.code32
msub %d1, %d15, %d14, %d1

# CHECK-INST: msub %d1, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0x1f]
.code32
msub %d1, %d15, %d14, %d14

# CHECK-INST: msub %d1, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0x1f]
.code32
msub %d1, %d15, %d14, %d15

# CHECK-INST: msub %d1, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0x1f]
.code32
msub %d1, %d15, %d15, %d0

# CHECK-INST: msub %d1, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0x1f]
.code32
msub %d1, %d15, %d15, %d1

# CHECK-INST: msub %d1, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0x1f]
.code32
msub %d1, %d15, %d15, %d14

# CHECK-INST: msub %d1, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0x1f]
.code32
msub %d1, %d15, %d15, %d15

# CHECK-INST: msub %d14, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0xe0]
.code32
msub %d14, %d0, %d0, %d0

# CHECK-INST: msub %d14, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0xe0]
.code32
msub %d14, %d0, %d0, %d1

# CHECK-INST: msub %d14, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0xe0]
.code32
msub %d14, %d0, %d0, %d14

# CHECK-INST: msub %d14, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0xe0]
.code32
msub %d14, %d0, %d0, %d15

# CHECK-INST: msub %d14, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0xe0]
.code32
msub %d14, %d0, %d1, %d0

# CHECK-INST: msub %d14, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0xe0]
.code32
msub %d14, %d0, %d1, %d1

# CHECK-INST: msub %d14, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0xe0]
.code32
msub %d14, %d0, %d1, %d14

# CHECK-INST: msub %d14, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0xe0]
.code32
msub %d14, %d0, %d1, %d15

# CHECK-INST: msub %d14, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0xe0]
.code32
msub %d14, %d0, %d14, %d0

# CHECK-INST: msub %d14, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0xe0]
.code32
msub %d14, %d0, %d14, %d1

# CHECK-INST: msub %d14, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0xe0]
.code32
msub %d14, %d0, %d14, %d14

# CHECK-INST: msub %d14, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0xe0]
.code32
msub %d14, %d0, %d14, %d15

# CHECK-INST: msub %d14, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0xe0]
.code32
msub %d14, %d0, %d15, %d0

# CHECK-INST: msub %d14, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0xe0]
.code32
msub %d14, %d0, %d15, %d1

# CHECK-INST: msub %d14, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0xe0]
.code32
msub %d14, %d0, %d15, %d14

# CHECK-INST: msub %d14, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0xe0]
.code32
msub %d14, %d0, %d15, %d15

# CHECK-INST: msub %d14, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0xe1]
.code32
msub %d14, %d1, %d0, %d0

# CHECK-INST: msub %d14, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0xe1]
.code32
msub %d14, %d1, %d0, %d1

# CHECK-INST: msub %d14, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0xe1]
.code32
msub %d14, %d1, %d0, %d14

# CHECK-INST: msub %d14, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0xe1]
.code32
msub %d14, %d1, %d0, %d15

# CHECK-INST: msub %d14, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0xe1]
.code32
msub %d14, %d1, %d1, %d0

# CHECK-INST: msub %d14, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0xe1]
.code32
msub %d14, %d1, %d1, %d1

# CHECK-INST: msub %d14, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0xe1]
.code32
msub %d14, %d1, %d1, %d14

# CHECK-INST: msub %d14, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0xe1]
.code32
msub %d14, %d1, %d1, %d15

# CHECK-INST: msub %d14, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0xe1]
.code32
msub %d14, %d1, %d14, %d0

# CHECK-INST: msub %d14, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0xe1]
.code32
msub %d14, %d1, %d14, %d1

# CHECK-INST: msub %d14, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0xe1]
.code32
msub %d14, %d1, %d14, %d14

# CHECK-INST: msub %d14, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0xe1]
.code32
msub %d14, %d1, %d14, %d15

# CHECK-INST: msub %d14, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0xe1]
.code32
msub %d14, %d1, %d15, %d0

# CHECK-INST: msub %d14, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0xe1]
.code32
msub %d14, %d1, %d15, %d1

# CHECK-INST: msub %d14, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0xe1]
.code32
msub %d14, %d1, %d15, %d14

# CHECK-INST: msub %d14, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0xe1]
.code32
msub %d14, %d1, %d15, %d15

# CHECK-INST: msub %d14, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0xee]
.code32
msub %d14, %d14, %d0, %d0

# CHECK-INST: msub %d14, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0xee]
.code32
msub %d14, %d14, %d0, %d1

# CHECK-INST: msub %d14, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0xee]
.code32
msub %d14, %d14, %d0, %d14

# CHECK-INST: msub %d14, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0xee]
.code32
msub %d14, %d14, %d0, %d15

# CHECK-INST: msub %d14, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0xee]
.code32
msub %d14, %d14, %d1, %d0

# CHECK-INST: msub %d14, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0xee]
.code32
msub %d14, %d14, %d1, %d1

# CHECK-INST: msub %d14, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0xee]
.code32
msub %d14, %d14, %d1, %d14

# CHECK-INST: msub %d14, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0xee]
.code32
msub %d14, %d14, %d1, %d15

# CHECK-INST: msub %d14, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0xee]
.code32
msub %d14, %d14, %d14, %d0

# CHECK-INST: msub %d14, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0xee]
.code32
msub %d14, %d14, %d14, %d1

# CHECK-INST: msub %d14, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0xee]
.code32
msub %d14, %d14, %d14, %d14

# CHECK-INST: msub %d14, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0xee]
.code32
msub %d14, %d14, %d14, %d15

# CHECK-INST: msub %d14, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0xee]
.code32
msub %d14, %d14, %d15, %d0

# CHECK-INST: msub %d14, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0xee]
.code32
msub %d14, %d14, %d15, %d1

# CHECK-INST: msub %d14, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0xee]
.code32
msub %d14, %d14, %d15, %d14

# CHECK-INST: msub %d14, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0xee]
.code32
msub %d14, %d14, %d15, %d15

# CHECK-INST: msub %d14, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0xef]
.code32
msub %d14, %d15, %d0, %d0

# CHECK-INST: msub %d14, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0xef]
.code32
msub %d14, %d15, %d0, %d1

# CHECK-INST: msub %d14, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0xef]
.code32
msub %d14, %d15, %d0, %d14

# CHECK-INST: msub %d14, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0xef]
.code32
msub %d14, %d15, %d0, %d15

# CHECK-INST: msub %d14, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0xef]
.code32
msub %d14, %d15, %d1, %d0

# CHECK-INST: msub %d14, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0xef]
.code32
msub %d14, %d15, %d1, %d1

# CHECK-INST: msub %d14, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0xef]
.code32
msub %d14, %d15, %d1, %d14

# CHECK-INST: msub %d14, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0xef]
.code32
msub %d14, %d15, %d1, %d15

# CHECK-INST: msub %d14, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0xef]
.code32
msub %d14, %d15, %d14, %d0

# CHECK-INST: msub %d14, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0xef]
.code32
msub %d14, %d15, %d14, %d1

# CHECK-INST: msub %d14, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0xef]
.code32
msub %d14, %d15, %d14, %d14

# CHECK-INST: msub %d14, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0xef]
.code32
msub %d14, %d15, %d14, %d15

# CHECK-INST: msub %d14, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0xef]
.code32
msub %d14, %d15, %d15, %d0

# CHECK-INST: msub %d14, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0xef]
.code32
msub %d14, %d15, %d15, %d1

# CHECK-INST: msub %d14, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0xef]
.code32
msub %d14, %d15, %d15, %d14

# CHECK-INST: msub %d14, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0xef]
.code32
msub %d14, %d15, %d15, %d15

# CHECK-INST: msub %d15, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0xf0]
.code32
msub %d15, %d0, %d0, %d0

# CHECK-INST: msub %d15, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0xf0]
.code32
msub %d15, %d0, %d0, %d1

# CHECK-INST: msub %d15, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0xf0]
.code32
msub %d15, %d0, %d0, %d14

# CHECK-INST: msub %d15, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0xf0]
.code32
msub %d15, %d0, %d0, %d15

# CHECK-INST: msub %d15, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0xf0]
.code32
msub %d15, %d0, %d1, %d0

# CHECK-INST: msub %d15, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0xf0]
.code32
msub %d15, %d0, %d1, %d1

# CHECK-INST: msub %d15, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0xf0]
.code32
msub %d15, %d0, %d1, %d14

# CHECK-INST: msub %d15, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0xf0]
.code32
msub %d15, %d0, %d1, %d15

# CHECK-INST: msub %d15, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0xf0]
.code32
msub %d15, %d0, %d14, %d0

# CHECK-INST: msub %d15, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0xf0]
.code32
msub %d15, %d0, %d14, %d1

# CHECK-INST: msub %d15, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0xf0]
.code32
msub %d15, %d0, %d14, %d14

# CHECK-INST: msub %d15, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0xf0]
.code32
msub %d15, %d0, %d14, %d15

# CHECK-INST: msub %d15, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0xf0]
.code32
msub %d15, %d0, %d15, %d0

# CHECK-INST: msub %d15, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0xf0]
.code32
msub %d15, %d0, %d15, %d1

# CHECK-INST: msub %d15, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0xf0]
.code32
msub %d15, %d0, %d15, %d14

# CHECK-INST: msub %d15, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0xf0]
.code32
msub %d15, %d0, %d15, %d15

# CHECK-INST: msub %d15, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0xf1]
.code32
msub %d15, %d1, %d0, %d0

# CHECK-INST: msub %d15, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0xf1]
.code32
msub %d15, %d1, %d0, %d1

# CHECK-INST: msub %d15, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0xf1]
.code32
msub %d15, %d1, %d0, %d14

# CHECK-INST: msub %d15, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0xf1]
.code32
msub %d15, %d1, %d0, %d15

# CHECK-INST: msub %d15, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0xf1]
.code32
msub %d15, %d1, %d1, %d0

# CHECK-INST: msub %d15, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0xf1]
.code32
msub %d15, %d1, %d1, %d1

# CHECK-INST: msub %d15, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0xf1]
.code32
msub %d15, %d1, %d1, %d14

# CHECK-INST: msub %d15, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0xf1]
.code32
msub %d15, %d1, %d1, %d15

# CHECK-INST: msub %d15, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0xf1]
.code32
msub %d15, %d1, %d14, %d0

# CHECK-INST: msub %d15, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0xf1]
.code32
msub %d15, %d1, %d14, %d1

# CHECK-INST: msub %d15, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0xf1]
.code32
msub %d15, %d1, %d14, %d14

# CHECK-INST: msub %d15, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0xf1]
.code32
msub %d15, %d1, %d14, %d15

# CHECK-INST: msub %d15, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0xf1]
.code32
msub %d15, %d1, %d15, %d0

# CHECK-INST: msub %d15, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0xf1]
.code32
msub %d15, %d1, %d15, %d1

# CHECK-INST: msub %d15, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0xf1]
.code32
msub %d15, %d1, %d15, %d14

# CHECK-INST: msub %d15, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0xf1]
.code32
msub %d15, %d1, %d15, %d15

# CHECK-INST: msub %d15, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0xfe]
.code32
msub %d15, %d14, %d0, %d0

# CHECK-INST: msub %d15, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0xfe]
.code32
msub %d15, %d14, %d0, %d1

# CHECK-INST: msub %d15, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0xfe]
.code32
msub %d15, %d14, %d0, %d14

# CHECK-INST: msub %d15, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0xfe]
.code32
msub %d15, %d14, %d0, %d15

# CHECK-INST: msub %d15, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0xfe]
.code32
msub %d15, %d14, %d1, %d0

# CHECK-INST: msub %d15, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0xfe]
.code32
msub %d15, %d14, %d1, %d1

# CHECK-INST: msub %d15, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0xfe]
.code32
msub %d15, %d14, %d1, %d14

# CHECK-INST: msub %d15, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0xfe]
.code32
msub %d15, %d14, %d1, %d15

# CHECK-INST: msub %d15, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0xfe]
.code32
msub %d15, %d14, %d14, %d0

# CHECK-INST: msub %d15, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0xfe]
.code32
msub %d15, %d14, %d14, %d1

# CHECK-INST: msub %d15, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0xfe]
.code32
msub %d15, %d14, %d14, %d14

# CHECK-INST: msub %d15, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0xfe]
.code32
msub %d15, %d14, %d14, %d15

# CHECK-INST: msub %d15, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0xfe]
.code32
msub %d15, %d14, %d15, %d0

# CHECK-INST: msub %d15, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0xfe]
.code32
msub %d15, %d14, %d15, %d1

# CHECK-INST: msub %d15, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0xfe]
.code32
msub %d15, %d14, %d15, %d14

# CHECK-INST: msub %d15, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0xfe]
.code32
msub %d15, %d14, %d15, %d15

# CHECK-INST: msub %d15, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0xff]
.code32
msub %d15, %d15, %d0, %d0

# CHECK-INST: msub %d15, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0xff]
.code32
msub %d15, %d15, %d0, %d1

# CHECK-INST: msub %d15, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0xff]
.code32
msub %d15, %d15, %d0, %d14

# CHECK-INST: msub %d15, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0xff]
.code32
msub %d15, %d15, %d0, %d15

# CHECK-INST: msub %d15, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0xff]
.code32
msub %d15, %d15, %d1, %d0

# CHECK-INST: msub %d15, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0xff]
.code32
msub %d15, %d15, %d1, %d1

# CHECK-INST: msub %d15, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0xff]
.code32
msub %d15, %d15, %d1, %d14

# CHECK-INST: msub %d15, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0xff]
.code32
msub %d15, %d15, %d1, %d15

# CHECK-INST: msub %d15, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0xff]
.code32
msub %d15, %d15, %d14, %d0

# CHECK-INST: msub %d15, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0xff]
.code32
msub %d15, %d15, %d14, %d1

# CHECK-INST: msub %d15, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0xff]
.code32
msub %d15, %d15, %d14, %d14

# CHECK-INST: msub %d15, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0xff]
.code32
msub %d15, %d15, %d14, %d15

# CHECK-INST: msub %d15, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0xff]
.code32
msub %d15, %d15, %d15, %d0

# CHECK-INST: msub %d15, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0xff]
.code32
msub %d15, %d15, %d15, %d1

# CHECK-INST: msub %d15, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0xff]
.code32
msub %d15, %d15, %d15, %d14

# CHECK-INST: msub %d15, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0xff]
.code32
msub %d15, %d15, %d15, %d15

# CHECK-INST: msub %d0, %d0, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0x00]
.code32
msub %d0, %d0, %d0, -256

# CHECK-INST: msub %d0, %d0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0x00]
.code32
msub %d0, %d0, %d0, -129

# CHECK-INST: msub %d0, %d0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0x00]
.code32
msub %d0, %d0, %d0, -1

# CHECK-INST: msub %d0, %d0, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0x00]
.code32
msub %d0, %d0, %d0, 0

# CHECK-INST: msub %d0, %d0, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0x00]
.code32
msub %d0, %d0, %d0, 1

# CHECK-INST: msub %d0, %d0, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0x00]
.code32
msub %d0, %d0, %d0, 128

# CHECK-INST: msub %d0, %d0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0x00]
.code32
msub %d0, %d0, %d0, 255

# CHECK-INST: msub %d0, %d0, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0x00]
.code32
msub %d0, %d0, %d1, -256

# CHECK-INST: msub %d0, %d0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0x00]
.code32
msub %d0, %d0, %d1, -129

# CHECK-INST: msub %d0, %d0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0x00]
.code32
msub %d0, %d0, %d1, -1

# CHECK-INST: msub %d0, %d0, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0x00]
.code32
msub %d0, %d0, %d1, 0

# CHECK-INST: msub %d0, %d0, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0x00]
.code32
msub %d0, %d0, %d1, 1

# CHECK-INST: msub %d0, %d0, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0x00]
.code32
msub %d0, %d0, %d1, 128

# CHECK-INST: msub %d0, %d0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0x00]
.code32
msub %d0, %d0, %d1, 255

# CHECK-INST: msub %d0, %d0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0x00]
.code32
msub %d0, %d0, %d14, -256

# CHECK-INST: msub %d0, %d0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0x00]
.code32
msub %d0, %d0, %d14, -129

# CHECK-INST: msub %d0, %d0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0x00]
.code32
msub %d0, %d0, %d14, -1

# CHECK-INST: msub %d0, %d0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0x00]
.code32
msub %d0, %d0, %d14, 0

# CHECK-INST: msub %d0, %d0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0x00]
.code32
msub %d0, %d0, %d14, 1

# CHECK-INST: msub %d0, %d0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0x00]
.code32
msub %d0, %d0, %d14, 128

# CHECK-INST: msub %d0, %d0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0x00]
.code32
msub %d0, %d0, %d14, 255

# CHECK-INST: msub %d0, %d0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0x00]
.code32
msub %d0, %d0, %d15, -256

# CHECK-INST: msub %d0, %d0, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0x00]
.code32
msub %d0, %d0, %d15, -129

# CHECK-INST: msub %d0, %d0, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0x00]
.code32
msub %d0, %d0, %d15, -1

# CHECK-INST: msub %d0, %d0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0x00]
.code32
msub %d0, %d0, %d15, 0

# CHECK-INST: msub %d0, %d0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0x00]
.code32
msub %d0, %d0, %d15, 1

# CHECK-INST: msub %d0, %d0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0x00]
.code32
msub %d0, %d0, %d15, 128

# CHECK-INST: msub %d0, %d0, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0x00]
.code32
msub %d0, %d0, %d15, 255

# CHECK-INST: msub %d0, %d1, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0x01]
.code32
msub %d0, %d1, %d0, -256

# CHECK-INST: msub %d0, %d1, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0x01]
.code32
msub %d0, %d1, %d0, -129

# CHECK-INST: msub %d0, %d1, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0x01]
.code32
msub %d0, %d1, %d0, -1

# CHECK-INST: msub %d0, %d1, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0x01]
.code32
msub %d0, %d1, %d0, 0

# CHECK-INST: msub %d0, %d1, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0x01]
.code32
msub %d0, %d1, %d0, 1

# CHECK-INST: msub %d0, %d1, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0x01]
.code32
msub %d0, %d1, %d0, 128

# CHECK-INST: msub %d0, %d1, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0x01]
.code32
msub %d0, %d1, %d0, 255

# CHECK-INST: msub %d0, %d1, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0x01]
.code32
msub %d0, %d1, %d1, -256

# CHECK-INST: msub %d0, %d1, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0x01]
.code32
msub %d0, %d1, %d1, -129

# CHECK-INST: msub %d0, %d1, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0x01]
.code32
msub %d0, %d1, %d1, -1

# CHECK-INST: msub %d0, %d1, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0x01]
.code32
msub %d0, %d1, %d1, 0

# CHECK-INST: msub %d0, %d1, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0x01]
.code32
msub %d0, %d1, %d1, 1

# CHECK-INST: msub %d0, %d1, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0x01]
.code32
msub %d0, %d1, %d1, 128

# CHECK-INST: msub %d0, %d1, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0x01]
.code32
msub %d0, %d1, %d1, 255

# CHECK-INST: msub %d0, %d1, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0x01]
.code32
msub %d0, %d1, %d14, -256

# CHECK-INST: msub %d0, %d1, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0x01]
.code32
msub %d0, %d1, %d14, -129

# CHECK-INST: msub %d0, %d1, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0x01]
.code32
msub %d0, %d1, %d14, -1

# CHECK-INST: msub %d0, %d1, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0x01]
.code32
msub %d0, %d1, %d14, 0

# CHECK-INST: msub %d0, %d1, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0x01]
.code32
msub %d0, %d1, %d14, 1

# CHECK-INST: msub %d0, %d1, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0x01]
.code32
msub %d0, %d1, %d14, 128

# CHECK-INST: msub %d0, %d1, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0x01]
.code32
msub %d0, %d1, %d14, 255

# CHECK-INST: msub %d0, %d1, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0x01]
.code32
msub %d0, %d1, %d15, -256

# CHECK-INST: msub %d0, %d1, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0x01]
.code32
msub %d0, %d1, %d15, -129

# CHECK-INST: msub %d0, %d1, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0x01]
.code32
msub %d0, %d1, %d15, -1

# CHECK-INST: msub %d0, %d1, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0x01]
.code32
msub %d0, %d1, %d15, 0

# CHECK-INST: msub %d0, %d1, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0x01]
.code32
msub %d0, %d1, %d15, 1

# CHECK-INST: msub %d0, %d1, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0x01]
.code32
msub %d0, %d1, %d15, 128

# CHECK-INST: msub %d0, %d1, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0x01]
.code32
msub %d0, %d1, %d15, 255

# CHECK-INST: msub %d0, %d14, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0x0e]
.code32
msub %d0, %d14, %d0, -256

# CHECK-INST: msub %d0, %d14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0x0e]
.code32
msub %d0, %d14, %d0, -129

# CHECK-INST: msub %d0, %d14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0x0e]
.code32
msub %d0, %d14, %d0, -1

# CHECK-INST: msub %d0, %d14, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0x0e]
.code32
msub %d0, %d14, %d0, 0

# CHECK-INST: msub %d0, %d14, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0x0e]
.code32
msub %d0, %d14, %d0, 1

# CHECK-INST: msub %d0, %d14, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0x0e]
.code32
msub %d0, %d14, %d0, 128

# CHECK-INST: msub %d0, %d14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0x0e]
.code32
msub %d0, %d14, %d0, 255

# CHECK-INST: msub %d0, %d14, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0x0e]
.code32
msub %d0, %d14, %d1, -256

# CHECK-INST: msub %d0, %d14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0x0e]
.code32
msub %d0, %d14, %d1, -129

# CHECK-INST: msub %d0, %d14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0x0e]
.code32
msub %d0, %d14, %d1, -1

# CHECK-INST: msub %d0, %d14, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0x0e]
.code32
msub %d0, %d14, %d1, 0

# CHECK-INST: msub %d0, %d14, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0x0e]
.code32
msub %d0, %d14, %d1, 1

# CHECK-INST: msub %d0, %d14, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0x0e]
.code32
msub %d0, %d14, %d1, 128

# CHECK-INST: msub %d0, %d14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0x0e]
.code32
msub %d0, %d14, %d1, 255

# CHECK-INST: msub %d0, %d14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0x0e]
.code32
msub %d0, %d14, %d14, -256

# CHECK-INST: msub %d0, %d14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0x0e]
.code32
msub %d0, %d14, %d14, -129

# CHECK-INST: msub %d0, %d14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0x0e]
.code32
msub %d0, %d14, %d14, -1

# CHECK-INST: msub %d0, %d14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0x0e]
.code32
msub %d0, %d14, %d14, 0

# CHECK-INST: msub %d0, %d14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0x0e]
.code32
msub %d0, %d14, %d14, 1

# CHECK-INST: msub %d0, %d14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0x0e]
.code32
msub %d0, %d14, %d14, 128

# CHECK-INST: msub %d0, %d14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0x0e]
.code32
msub %d0, %d14, %d14, 255

# CHECK-INST: msub %d0, %d14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0x0e]
.code32
msub %d0, %d14, %d15, -256

# CHECK-INST: msub %d0, %d14, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0x0e]
.code32
msub %d0, %d14, %d15, -129

# CHECK-INST: msub %d0, %d14, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0x0e]
.code32
msub %d0, %d14, %d15, -1

# CHECK-INST: msub %d0, %d14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0x0e]
.code32
msub %d0, %d14, %d15, 0

# CHECK-INST: msub %d0, %d14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0x0e]
.code32
msub %d0, %d14, %d15, 1

# CHECK-INST: msub %d0, %d14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0x0e]
.code32
msub %d0, %d14, %d15, 128

# CHECK-INST: msub %d0, %d14, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0x0e]
.code32
msub %d0, %d14, %d15, 255

# CHECK-INST: msub %d0, %d15, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0x0f]
.code32
msub %d0, %d15, %d0, -256

# CHECK-INST: msub %d0, %d15, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0x0f]
.code32
msub %d0, %d15, %d0, -129

# CHECK-INST: msub %d0, %d15, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0x0f]
.code32
msub %d0, %d15, %d0, -1

# CHECK-INST: msub %d0, %d15, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0x0f]
.code32
msub %d0, %d15, %d0, 0

# CHECK-INST: msub %d0, %d15, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0x0f]
.code32
msub %d0, %d15, %d0, 1

# CHECK-INST: msub %d0, %d15, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0x0f]
.code32
msub %d0, %d15, %d0, 128

# CHECK-INST: msub %d0, %d15, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0x0f]
.code32
msub %d0, %d15, %d0, 255

# CHECK-INST: msub %d0, %d15, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0x0f]
.code32
msub %d0, %d15, %d1, -256

# CHECK-INST: msub %d0, %d15, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0x0f]
.code32
msub %d0, %d15, %d1, -129

# CHECK-INST: msub %d0, %d15, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0x0f]
.code32
msub %d0, %d15, %d1, -1

# CHECK-INST: msub %d0, %d15, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0x0f]
.code32
msub %d0, %d15, %d1, 0

# CHECK-INST: msub %d0, %d15, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0x0f]
.code32
msub %d0, %d15, %d1, 1

# CHECK-INST: msub %d0, %d15, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0x0f]
.code32
msub %d0, %d15, %d1, 128

# CHECK-INST: msub %d0, %d15, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0x0f]
.code32
msub %d0, %d15, %d1, 255

# CHECK-INST: msub %d0, %d15, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0x0f]
.code32
msub %d0, %d15, %d14, -256

# CHECK-INST: msub %d0, %d15, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0x0f]
.code32
msub %d0, %d15, %d14, -129

# CHECK-INST: msub %d0, %d15, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0x0f]
.code32
msub %d0, %d15, %d14, -1

# CHECK-INST: msub %d0, %d15, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0x0f]
.code32
msub %d0, %d15, %d14, 0

# CHECK-INST: msub %d0, %d15, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0x0f]
.code32
msub %d0, %d15, %d14, 1

# CHECK-INST: msub %d0, %d15, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0x0f]
.code32
msub %d0, %d15, %d14, 128

# CHECK-INST: msub %d0, %d15, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0x0f]
.code32
msub %d0, %d15, %d14, 255

# CHECK-INST: msub %d0, %d15, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0x0f]
.code32
msub %d0, %d15, %d15, -256

# CHECK-INST: msub %d0, %d15, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0x0f]
.code32
msub %d0, %d15, %d15, -129

# CHECK-INST: msub %d0, %d15, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0x0f]
.code32
msub %d0, %d15, %d15, -1

# CHECK-INST: msub %d0, %d15, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0x0f]
.code32
msub %d0, %d15, %d15, 0

# CHECK-INST: msub %d0, %d15, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0x0f]
.code32
msub %d0, %d15, %d15, 1

# CHECK-INST: msub %d0, %d15, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0x0f]
.code32
msub %d0, %d15, %d15, 128

# CHECK-INST: msub %d0, %d15, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0x0f]
.code32
msub %d0, %d15, %d15, 255

# CHECK-INST: msub %d1, %d0, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0x10]
.code32
msub %d1, %d0, %d0, -256

# CHECK-INST: msub %d1, %d0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0x10]
.code32
msub %d1, %d0, %d0, -129

# CHECK-INST: msub %d1, %d0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0x10]
.code32
msub %d1, %d0, %d0, -1

# CHECK-INST: msub %d1, %d0, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0x10]
.code32
msub %d1, %d0, %d0, 0

# CHECK-INST: msub %d1, %d0, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0x10]
.code32
msub %d1, %d0, %d0, 1

# CHECK-INST: msub %d1, %d0, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0x10]
.code32
msub %d1, %d0, %d0, 128

# CHECK-INST: msub %d1, %d0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0x10]
.code32
msub %d1, %d0, %d0, 255

# CHECK-INST: msub %d1, %d0, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0x10]
.code32
msub %d1, %d0, %d1, -256

# CHECK-INST: msub %d1, %d0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0x10]
.code32
msub %d1, %d0, %d1, -129

# CHECK-INST: msub %d1, %d0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0x10]
.code32
msub %d1, %d0, %d1, -1

# CHECK-INST: msub %d1, %d0, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0x10]
.code32
msub %d1, %d0, %d1, 0

# CHECK-INST: msub %d1, %d0, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0x10]
.code32
msub %d1, %d0, %d1, 1

# CHECK-INST: msub %d1, %d0, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0x10]
.code32
msub %d1, %d0, %d1, 128

# CHECK-INST: msub %d1, %d0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0x10]
.code32
msub %d1, %d0, %d1, 255

# CHECK-INST: msub %d1, %d0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0x10]
.code32
msub %d1, %d0, %d14, -256

# CHECK-INST: msub %d1, %d0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0x10]
.code32
msub %d1, %d0, %d14, -129

# CHECK-INST: msub %d1, %d0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0x10]
.code32
msub %d1, %d0, %d14, -1

# CHECK-INST: msub %d1, %d0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0x10]
.code32
msub %d1, %d0, %d14, 0

# CHECK-INST: msub %d1, %d0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0x10]
.code32
msub %d1, %d0, %d14, 1

# CHECK-INST: msub %d1, %d0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0x10]
.code32
msub %d1, %d0, %d14, 128

# CHECK-INST: msub %d1, %d0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0x10]
.code32
msub %d1, %d0, %d14, 255

# CHECK-INST: msub %d1, %d0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0x10]
.code32
msub %d1, %d0, %d15, -256

# CHECK-INST: msub %d1, %d0, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0x10]
.code32
msub %d1, %d0, %d15, -129

# CHECK-INST: msub %d1, %d0, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0x10]
.code32
msub %d1, %d0, %d15, -1

# CHECK-INST: msub %d1, %d0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0x10]
.code32
msub %d1, %d0, %d15, 0

# CHECK-INST: msub %d1, %d0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0x10]
.code32
msub %d1, %d0, %d15, 1

# CHECK-INST: msub %d1, %d0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0x10]
.code32
msub %d1, %d0, %d15, 128

# CHECK-INST: msub %d1, %d0, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0x10]
.code32
msub %d1, %d0, %d15, 255

# CHECK-INST: msub %d1, %d1, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0x11]
.code32
msub %d1, %d1, %d0, -256

# CHECK-INST: msub %d1, %d1, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0x11]
.code32
msub %d1, %d1, %d0, -129

# CHECK-INST: msub %d1, %d1, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0x11]
.code32
msub %d1, %d1, %d0, -1

# CHECK-INST: msub %d1, %d1, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0x11]
.code32
msub %d1, %d1, %d0, 0

# CHECK-INST: msub %d1, %d1, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0x11]
.code32
msub %d1, %d1, %d0, 1

# CHECK-INST: msub %d1, %d1, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0x11]
.code32
msub %d1, %d1, %d0, 128

# CHECK-INST: msub %d1, %d1, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0x11]
.code32
msub %d1, %d1, %d0, 255

# CHECK-INST: msub %d1, %d1, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0x11]
.code32
msub %d1, %d1, %d1, -256

# CHECK-INST: msub %d1, %d1, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0x11]
.code32
msub %d1, %d1, %d1, -129

# CHECK-INST: msub %d1, %d1, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0x11]
.code32
msub %d1, %d1, %d1, -1

# CHECK-INST: msub %d1, %d1, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0x11]
.code32
msub %d1, %d1, %d1, 0

# CHECK-INST: msub %d1, %d1, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0x11]
.code32
msub %d1, %d1, %d1, 1

# CHECK-INST: msub %d1, %d1, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0x11]
.code32
msub %d1, %d1, %d1, 128

# CHECK-INST: msub %d1, %d1, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0x11]
.code32
msub %d1, %d1, %d1, 255

# CHECK-INST: msub %d1, %d1, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0x11]
.code32
msub %d1, %d1, %d14, -256

# CHECK-INST: msub %d1, %d1, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0x11]
.code32
msub %d1, %d1, %d14, -129

# CHECK-INST: msub %d1, %d1, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0x11]
.code32
msub %d1, %d1, %d14, -1

# CHECK-INST: msub %d1, %d1, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0x11]
.code32
msub %d1, %d1, %d14, 0

# CHECK-INST: msub %d1, %d1, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0x11]
.code32
msub %d1, %d1, %d14, 1

# CHECK-INST: msub %d1, %d1, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0x11]
.code32
msub %d1, %d1, %d14, 128

# CHECK-INST: msub %d1, %d1, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0x11]
.code32
msub %d1, %d1, %d14, 255

# CHECK-INST: msub %d1, %d1, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0x11]
.code32
msub %d1, %d1, %d15, -256

# CHECK-INST: msub %d1, %d1, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0x11]
.code32
msub %d1, %d1, %d15, -129

# CHECK-INST: msub %d1, %d1, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0x11]
.code32
msub %d1, %d1, %d15, -1

# CHECK-INST: msub %d1, %d1, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0x11]
.code32
msub %d1, %d1, %d15, 0

# CHECK-INST: msub %d1, %d1, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0x11]
.code32
msub %d1, %d1, %d15, 1

# CHECK-INST: msub %d1, %d1, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0x11]
.code32
msub %d1, %d1, %d15, 128

# CHECK-INST: msub %d1, %d1, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0x11]
.code32
msub %d1, %d1, %d15, 255

# CHECK-INST: msub %d1, %d14, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0x1e]
.code32
msub %d1, %d14, %d0, -256

# CHECK-INST: msub %d1, %d14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0x1e]
.code32
msub %d1, %d14, %d0, -129

# CHECK-INST: msub %d1, %d14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0x1e]
.code32
msub %d1, %d14, %d0, -1

# CHECK-INST: msub %d1, %d14, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0x1e]
.code32
msub %d1, %d14, %d0, 0

# CHECK-INST: msub %d1, %d14, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0x1e]
.code32
msub %d1, %d14, %d0, 1

# CHECK-INST: msub %d1, %d14, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0x1e]
.code32
msub %d1, %d14, %d0, 128

# CHECK-INST: msub %d1, %d14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0x1e]
.code32
msub %d1, %d14, %d0, 255

# CHECK-INST: msub %d1, %d14, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0x1e]
.code32
msub %d1, %d14, %d1, -256

# CHECK-INST: msub %d1, %d14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0x1e]
.code32
msub %d1, %d14, %d1, -129

# CHECK-INST: msub %d1, %d14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0x1e]
.code32
msub %d1, %d14, %d1, -1

# CHECK-INST: msub %d1, %d14, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0x1e]
.code32
msub %d1, %d14, %d1, 0

# CHECK-INST: msub %d1, %d14, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0x1e]
.code32
msub %d1, %d14, %d1, 1

# CHECK-INST: msub %d1, %d14, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0x1e]
.code32
msub %d1, %d14, %d1, 128

# CHECK-INST: msub %d1, %d14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0x1e]
.code32
msub %d1, %d14, %d1, 255

# CHECK-INST: msub %d1, %d14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0x1e]
.code32
msub %d1, %d14, %d14, -256

# CHECK-INST: msub %d1, %d14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0x1e]
.code32
msub %d1, %d14, %d14, -129

# CHECK-INST: msub %d1, %d14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0x1e]
.code32
msub %d1, %d14, %d14, -1

# CHECK-INST: msub %d1, %d14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0x1e]
.code32
msub %d1, %d14, %d14, 0

# CHECK-INST: msub %d1, %d14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0x1e]
.code32
msub %d1, %d14, %d14, 1

# CHECK-INST: msub %d1, %d14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0x1e]
.code32
msub %d1, %d14, %d14, 128

# CHECK-INST: msub %d1, %d14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0x1e]
.code32
msub %d1, %d14, %d14, 255

# CHECK-INST: msub %d1, %d14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0x1e]
.code32
msub %d1, %d14, %d15, -256

# CHECK-INST: msub %d1, %d14, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0x1e]
.code32
msub %d1, %d14, %d15, -129

# CHECK-INST: msub %d1, %d14, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0x1e]
.code32
msub %d1, %d14, %d15, -1

# CHECK-INST: msub %d1, %d14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0x1e]
.code32
msub %d1, %d14, %d15, 0

# CHECK-INST: msub %d1, %d14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0x1e]
.code32
msub %d1, %d14, %d15, 1

# CHECK-INST: msub %d1, %d14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0x1e]
.code32
msub %d1, %d14, %d15, 128

# CHECK-INST: msub %d1, %d14, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0x1e]
.code32
msub %d1, %d14, %d15, 255

# CHECK-INST: msub %d1, %d15, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0x1f]
.code32
msub %d1, %d15, %d0, -256

# CHECK-INST: msub %d1, %d15, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0x1f]
.code32
msub %d1, %d15, %d0, -129

# CHECK-INST: msub %d1, %d15, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0x1f]
.code32
msub %d1, %d15, %d0, -1

# CHECK-INST: msub %d1, %d15, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0x1f]
.code32
msub %d1, %d15, %d0, 0

# CHECK-INST: msub %d1, %d15, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0x1f]
.code32
msub %d1, %d15, %d0, 1

# CHECK-INST: msub %d1, %d15, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0x1f]
.code32
msub %d1, %d15, %d0, 128

# CHECK-INST: msub %d1, %d15, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0x1f]
.code32
msub %d1, %d15, %d0, 255

# CHECK-INST: msub %d1, %d15, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0x1f]
.code32
msub %d1, %d15, %d1, -256

# CHECK-INST: msub %d1, %d15, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0x1f]
.code32
msub %d1, %d15, %d1, -129

# CHECK-INST: msub %d1, %d15, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0x1f]
.code32
msub %d1, %d15, %d1, -1

# CHECK-INST: msub %d1, %d15, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0x1f]
.code32
msub %d1, %d15, %d1, 0

# CHECK-INST: msub %d1, %d15, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0x1f]
.code32
msub %d1, %d15, %d1, 1

# CHECK-INST: msub %d1, %d15, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0x1f]
.code32
msub %d1, %d15, %d1, 128

# CHECK-INST: msub %d1, %d15, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0x1f]
.code32
msub %d1, %d15, %d1, 255

# CHECK-INST: msub %d1, %d15, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0x1f]
.code32
msub %d1, %d15, %d14, -256

# CHECK-INST: msub %d1, %d15, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0x1f]
.code32
msub %d1, %d15, %d14, -129

# CHECK-INST: msub %d1, %d15, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0x1f]
.code32
msub %d1, %d15, %d14, -1

# CHECK-INST: msub %d1, %d15, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0x1f]
.code32
msub %d1, %d15, %d14, 0

# CHECK-INST: msub %d1, %d15, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0x1f]
.code32
msub %d1, %d15, %d14, 1

# CHECK-INST: msub %d1, %d15, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0x1f]
.code32
msub %d1, %d15, %d14, 128

# CHECK-INST: msub %d1, %d15, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0x1f]
.code32
msub %d1, %d15, %d14, 255

# CHECK-INST: msub %d1, %d15, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0x1f]
.code32
msub %d1, %d15, %d15, -256

# CHECK-INST: msub %d1, %d15, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0x1f]
.code32
msub %d1, %d15, %d15, -129

# CHECK-INST: msub %d1, %d15, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0x1f]
.code32
msub %d1, %d15, %d15, -1

# CHECK-INST: msub %d1, %d15, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0x1f]
.code32
msub %d1, %d15, %d15, 0

# CHECK-INST: msub %d1, %d15, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0x1f]
.code32
msub %d1, %d15, %d15, 1

# CHECK-INST: msub %d1, %d15, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0x1f]
.code32
msub %d1, %d15, %d15, 128

# CHECK-INST: msub %d1, %d15, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0x1f]
.code32
msub %d1, %d15, %d15, 255

# CHECK-INST: msub %d14, %d0, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0xe0]
.code32
msub %d14, %d0, %d0, -256

# CHECK-INST: msub %d14, %d0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0xe0]
.code32
msub %d14, %d0, %d0, -129

# CHECK-INST: msub %d14, %d0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0xe0]
.code32
msub %d14, %d0, %d0, -1

# CHECK-INST: msub %d14, %d0, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0xe0]
.code32
msub %d14, %d0, %d0, 0

# CHECK-INST: msub %d14, %d0, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0xe0]
.code32
msub %d14, %d0, %d0, 1

# CHECK-INST: msub %d14, %d0, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0xe0]
.code32
msub %d14, %d0, %d0, 128

# CHECK-INST: msub %d14, %d0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0xe0]
.code32
msub %d14, %d0, %d0, 255

# CHECK-INST: msub %d14, %d0, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0xe0]
.code32
msub %d14, %d0, %d1, -256

# CHECK-INST: msub %d14, %d0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0xe0]
.code32
msub %d14, %d0, %d1, -129

# CHECK-INST: msub %d14, %d0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0xe0]
.code32
msub %d14, %d0, %d1, -1

# CHECK-INST: msub %d14, %d0, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0xe0]
.code32
msub %d14, %d0, %d1, 0

# CHECK-INST: msub %d14, %d0, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0xe0]
.code32
msub %d14, %d0, %d1, 1

# CHECK-INST: msub %d14, %d0, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0xe0]
.code32
msub %d14, %d0, %d1, 128

# CHECK-INST: msub %d14, %d0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0xe0]
.code32
msub %d14, %d0, %d1, 255

# CHECK-INST: msub %d14, %d0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0xe0]
.code32
msub %d14, %d0, %d14, -256

# CHECK-INST: msub %d14, %d0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0xe0]
.code32
msub %d14, %d0, %d14, -129

# CHECK-INST: msub %d14, %d0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0xe0]
.code32
msub %d14, %d0, %d14, -1

# CHECK-INST: msub %d14, %d0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0xe0]
.code32
msub %d14, %d0, %d14, 0

# CHECK-INST: msub %d14, %d0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0xe0]
.code32
msub %d14, %d0, %d14, 1

# CHECK-INST: msub %d14, %d0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0xe0]
.code32
msub %d14, %d0, %d14, 128

# CHECK-INST: msub %d14, %d0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0xe0]
.code32
msub %d14, %d0, %d14, 255

# CHECK-INST: msub %d14, %d0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0xe0]
.code32
msub %d14, %d0, %d15, -256

# CHECK-INST: msub %d14, %d0, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0xe0]
.code32
msub %d14, %d0, %d15, -129

# CHECK-INST: msub %d14, %d0, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0xe0]
.code32
msub %d14, %d0, %d15, -1

# CHECK-INST: msub %d14, %d0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0xe0]
.code32
msub %d14, %d0, %d15, 0

# CHECK-INST: msub %d14, %d0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0xe0]
.code32
msub %d14, %d0, %d15, 1

# CHECK-INST: msub %d14, %d0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0xe0]
.code32
msub %d14, %d0, %d15, 128

# CHECK-INST: msub %d14, %d0, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0xe0]
.code32
msub %d14, %d0, %d15, 255

# CHECK-INST: msub %d14, %d1, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0xe1]
.code32
msub %d14, %d1, %d0, -256

# CHECK-INST: msub %d14, %d1, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0xe1]
.code32
msub %d14, %d1, %d0, -129

# CHECK-INST: msub %d14, %d1, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0xe1]
.code32
msub %d14, %d1, %d0, -1

# CHECK-INST: msub %d14, %d1, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0xe1]
.code32
msub %d14, %d1, %d0, 0

# CHECK-INST: msub %d14, %d1, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0xe1]
.code32
msub %d14, %d1, %d0, 1

# CHECK-INST: msub %d14, %d1, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0xe1]
.code32
msub %d14, %d1, %d0, 128

# CHECK-INST: msub %d14, %d1, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0xe1]
.code32
msub %d14, %d1, %d0, 255

# CHECK-INST: msub %d14, %d1, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0xe1]
.code32
msub %d14, %d1, %d1, -256

# CHECK-INST: msub %d14, %d1, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0xe1]
.code32
msub %d14, %d1, %d1, -129

# CHECK-INST: msub %d14, %d1, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0xe1]
.code32
msub %d14, %d1, %d1, -1

# CHECK-INST: msub %d14, %d1, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0xe1]
.code32
msub %d14, %d1, %d1, 0

# CHECK-INST: msub %d14, %d1, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0xe1]
.code32
msub %d14, %d1, %d1, 1

# CHECK-INST: msub %d14, %d1, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0xe1]
.code32
msub %d14, %d1, %d1, 128

# CHECK-INST: msub %d14, %d1, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0xe1]
.code32
msub %d14, %d1, %d1, 255

# CHECK-INST: msub %d14, %d1, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0xe1]
.code32
msub %d14, %d1, %d14, -256

# CHECK-INST: msub %d14, %d1, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0xe1]
.code32
msub %d14, %d1, %d14, -129

# CHECK-INST: msub %d14, %d1, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0xe1]
.code32
msub %d14, %d1, %d14, -1

# CHECK-INST: msub %d14, %d1, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0xe1]
.code32
msub %d14, %d1, %d14, 0

# CHECK-INST: msub %d14, %d1, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0xe1]
.code32
msub %d14, %d1, %d14, 1

# CHECK-INST: msub %d14, %d1, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0xe1]
.code32
msub %d14, %d1, %d14, 128

# CHECK-INST: msub %d14, %d1, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0xe1]
.code32
msub %d14, %d1, %d14, 255

# CHECK-INST: msub %d14, %d1, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0xe1]
.code32
msub %d14, %d1, %d15, -256

# CHECK-INST: msub %d14, %d1, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0xe1]
.code32
msub %d14, %d1, %d15, -129

# CHECK-INST: msub %d14, %d1, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0xe1]
.code32
msub %d14, %d1, %d15, -1

# CHECK-INST: msub %d14, %d1, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0xe1]
.code32
msub %d14, %d1, %d15, 0

# CHECK-INST: msub %d14, %d1, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0xe1]
.code32
msub %d14, %d1, %d15, 1

# CHECK-INST: msub %d14, %d1, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0xe1]
.code32
msub %d14, %d1, %d15, 128

# CHECK-INST: msub %d14, %d1, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0xe1]
.code32
msub %d14, %d1, %d15, 255

# CHECK-INST: msub %d14, %d14, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0xee]
.code32
msub %d14, %d14, %d0, -256

# CHECK-INST: msub %d14, %d14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0xee]
.code32
msub %d14, %d14, %d0, -129

# CHECK-INST: msub %d14, %d14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0xee]
.code32
msub %d14, %d14, %d0, -1

# CHECK-INST: msub %d14, %d14, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0xee]
.code32
msub %d14, %d14, %d0, 0

# CHECK-INST: msub %d14, %d14, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0xee]
.code32
msub %d14, %d14, %d0, 1

# CHECK-INST: msub %d14, %d14, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0xee]
.code32
msub %d14, %d14, %d0, 128

# CHECK-INST: msub %d14, %d14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0xee]
.code32
msub %d14, %d14, %d0, 255

# CHECK-INST: msub %d14, %d14, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0xee]
.code32
msub %d14, %d14, %d1, -256

# CHECK-INST: msub %d14, %d14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0xee]
.code32
msub %d14, %d14, %d1, -129

# CHECK-INST: msub %d14, %d14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0xee]
.code32
msub %d14, %d14, %d1, -1

# CHECK-INST: msub %d14, %d14, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0xee]
.code32
msub %d14, %d14, %d1, 0

# CHECK-INST: msub %d14, %d14, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0xee]
.code32
msub %d14, %d14, %d1, 1

# CHECK-INST: msub %d14, %d14, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0xee]
.code32
msub %d14, %d14, %d1, 128

# CHECK-INST: msub %d14, %d14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0xee]
.code32
msub %d14, %d14, %d1, 255

# CHECK-INST: msub %d14, %d14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0xee]
.code32
msub %d14, %d14, %d14, -256

# CHECK-INST: msub %d14, %d14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0xee]
.code32
msub %d14, %d14, %d14, -129

# CHECK-INST: msub %d14, %d14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0xee]
.code32
msub %d14, %d14, %d14, -1

# CHECK-INST: msub %d14, %d14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0xee]
.code32
msub %d14, %d14, %d14, 0

# CHECK-INST: msub %d14, %d14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0xee]
.code32
msub %d14, %d14, %d14, 1

# CHECK-INST: msub %d14, %d14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0xee]
.code32
msub %d14, %d14, %d14, 128

# CHECK-INST: msub %d14, %d14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0xee]
.code32
msub %d14, %d14, %d14, 255

# CHECK-INST: msub %d14, %d14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0xee]
.code32
msub %d14, %d14, %d15, -256

# CHECK-INST: msub %d14, %d14, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0xee]
.code32
msub %d14, %d14, %d15, -129

# CHECK-INST: msub %d14, %d14, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0xee]
.code32
msub %d14, %d14, %d15, -1

# CHECK-INST: msub %d14, %d14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0xee]
.code32
msub %d14, %d14, %d15, 0

# CHECK-INST: msub %d14, %d14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0xee]
.code32
msub %d14, %d14, %d15, 1

# CHECK-INST: msub %d14, %d14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0xee]
.code32
msub %d14, %d14, %d15, 128

# CHECK-INST: msub %d14, %d14, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0xee]
.code32
msub %d14, %d14, %d15, 255

# CHECK-INST: msub %d14, %d15, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0xef]
.code32
msub %d14, %d15, %d0, -256

# CHECK-INST: msub %d14, %d15, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0xef]
.code32
msub %d14, %d15, %d0, -129

# CHECK-INST: msub %d14, %d15, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0xef]
.code32
msub %d14, %d15, %d0, -1

# CHECK-INST: msub %d14, %d15, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0xef]
.code32
msub %d14, %d15, %d0, 0

# CHECK-INST: msub %d14, %d15, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0xef]
.code32
msub %d14, %d15, %d0, 1

# CHECK-INST: msub %d14, %d15, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0xef]
.code32
msub %d14, %d15, %d0, 128

# CHECK-INST: msub %d14, %d15, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0xef]
.code32
msub %d14, %d15, %d0, 255

# CHECK-INST: msub %d14, %d15, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0xef]
.code32
msub %d14, %d15, %d1, -256

# CHECK-INST: msub %d14, %d15, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0xef]
.code32
msub %d14, %d15, %d1, -129

# CHECK-INST: msub %d14, %d15, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0xef]
.code32
msub %d14, %d15, %d1, -1

# CHECK-INST: msub %d14, %d15, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0xef]
.code32
msub %d14, %d15, %d1, 0

# CHECK-INST: msub %d14, %d15, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0xef]
.code32
msub %d14, %d15, %d1, 1

# CHECK-INST: msub %d14, %d15, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0xef]
.code32
msub %d14, %d15, %d1, 128

# CHECK-INST: msub %d14, %d15, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0xef]
.code32
msub %d14, %d15, %d1, 255

# CHECK-INST: msub %d14, %d15, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0xef]
.code32
msub %d14, %d15, %d14, -256

# CHECK-INST: msub %d14, %d15, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0xef]
.code32
msub %d14, %d15, %d14, -129

# CHECK-INST: msub %d14, %d15, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0xef]
.code32
msub %d14, %d15, %d14, -1

# CHECK-INST: msub %d14, %d15, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0xef]
.code32
msub %d14, %d15, %d14, 0

# CHECK-INST: msub %d14, %d15, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0xef]
.code32
msub %d14, %d15, %d14, 1

# CHECK-INST: msub %d14, %d15, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0xef]
.code32
msub %d14, %d15, %d14, 128

# CHECK-INST: msub %d14, %d15, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0xef]
.code32
msub %d14, %d15, %d14, 255

# CHECK-INST: msub %d14, %d15, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0xef]
.code32
msub %d14, %d15, %d15, -256

# CHECK-INST: msub %d14, %d15, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0xef]
.code32
msub %d14, %d15, %d15, -129

# CHECK-INST: msub %d14, %d15, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0xef]
.code32
msub %d14, %d15, %d15, -1

# CHECK-INST: msub %d14, %d15, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0xef]
.code32
msub %d14, %d15, %d15, 0

# CHECK-INST: msub %d14, %d15, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0xef]
.code32
msub %d14, %d15, %d15, 1

# CHECK-INST: msub %d14, %d15, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0xef]
.code32
msub %d14, %d15, %d15, 128

# CHECK-INST: msub %d14, %d15, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0xef]
.code32
msub %d14, %d15, %d15, 255

# CHECK-INST: msub %d15, %d0, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0xf0]
.code32
msub %d15, %d0, %d0, -256

# CHECK-INST: msub %d15, %d0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0xf0]
.code32
msub %d15, %d0, %d0, -129

# CHECK-INST: msub %d15, %d0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0xf0]
.code32
msub %d15, %d0, %d0, -1

# CHECK-INST: msub %d15, %d0, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0xf0]
.code32
msub %d15, %d0, %d0, 0

# CHECK-INST: msub %d15, %d0, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0xf0]
.code32
msub %d15, %d0, %d0, 1

# CHECK-INST: msub %d15, %d0, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0xf0]
.code32
msub %d15, %d0, %d0, 128

# CHECK-INST: msub %d15, %d0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0xf0]
.code32
msub %d15, %d0, %d0, 255

# CHECK-INST: msub %d15, %d0, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0xf0]
.code32
msub %d15, %d0, %d1, -256

# CHECK-INST: msub %d15, %d0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0xf0]
.code32
msub %d15, %d0, %d1, -129

# CHECK-INST: msub %d15, %d0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0xf0]
.code32
msub %d15, %d0, %d1, -1

# CHECK-INST: msub %d15, %d0, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0xf0]
.code32
msub %d15, %d0, %d1, 0

# CHECK-INST: msub %d15, %d0, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0xf0]
.code32
msub %d15, %d0, %d1, 1

# CHECK-INST: msub %d15, %d0, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0xf0]
.code32
msub %d15, %d0, %d1, 128

# CHECK-INST: msub %d15, %d0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0xf0]
.code32
msub %d15, %d0, %d1, 255

# CHECK-INST: msub %d15, %d0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0xf0]
.code32
msub %d15, %d0, %d14, -256

# CHECK-INST: msub %d15, %d0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0xf0]
.code32
msub %d15, %d0, %d14, -129

# CHECK-INST: msub %d15, %d0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0xf0]
.code32
msub %d15, %d0, %d14, -1

# CHECK-INST: msub %d15, %d0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0xf0]
.code32
msub %d15, %d0, %d14, 0

# CHECK-INST: msub %d15, %d0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0xf0]
.code32
msub %d15, %d0, %d14, 1

# CHECK-INST: msub %d15, %d0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0xf0]
.code32
msub %d15, %d0, %d14, 128

# CHECK-INST: msub %d15, %d0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0xf0]
.code32
msub %d15, %d0, %d14, 255

# CHECK-INST: msub %d15, %d0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0xf0]
.code32
msub %d15, %d0, %d15, -256

# CHECK-INST: msub %d15, %d0, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0xf0]
.code32
msub %d15, %d0, %d15, -129

# CHECK-INST: msub %d15, %d0, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0xf0]
.code32
msub %d15, %d0, %d15, -1

# CHECK-INST: msub %d15, %d0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0xf0]
.code32
msub %d15, %d0, %d15, 0

# CHECK-INST: msub %d15, %d0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0xf0]
.code32
msub %d15, %d0, %d15, 1

# CHECK-INST: msub %d15, %d0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0xf0]
.code32
msub %d15, %d0, %d15, 128

# CHECK-INST: msub %d15, %d0, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0xf0]
.code32
msub %d15, %d0, %d15, 255

# CHECK-INST: msub %d15, %d1, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0xf1]
.code32
msub %d15, %d1, %d0, -256

# CHECK-INST: msub %d15, %d1, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0xf1]
.code32
msub %d15, %d1, %d0, -129

# CHECK-INST: msub %d15, %d1, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0xf1]
.code32
msub %d15, %d1, %d0, -1

# CHECK-INST: msub %d15, %d1, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0xf1]
.code32
msub %d15, %d1, %d0, 0

# CHECK-INST: msub %d15, %d1, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0xf1]
.code32
msub %d15, %d1, %d0, 1

# CHECK-INST: msub %d15, %d1, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0xf1]
.code32
msub %d15, %d1, %d0, 128

# CHECK-INST: msub %d15, %d1, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0xf1]
.code32
msub %d15, %d1, %d0, 255

# CHECK-INST: msub %d15, %d1, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0xf1]
.code32
msub %d15, %d1, %d1, -256

# CHECK-INST: msub %d15, %d1, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0xf1]
.code32
msub %d15, %d1, %d1, -129

# CHECK-INST: msub %d15, %d1, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0xf1]
.code32
msub %d15, %d1, %d1, -1

# CHECK-INST: msub %d15, %d1, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0xf1]
.code32
msub %d15, %d1, %d1, 0

# CHECK-INST: msub %d15, %d1, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0xf1]
.code32
msub %d15, %d1, %d1, 1

# CHECK-INST: msub %d15, %d1, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0xf1]
.code32
msub %d15, %d1, %d1, 128

# CHECK-INST: msub %d15, %d1, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0xf1]
.code32
msub %d15, %d1, %d1, 255

# CHECK-INST: msub %d15, %d1, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0xf1]
.code32
msub %d15, %d1, %d14, -256

# CHECK-INST: msub %d15, %d1, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0xf1]
.code32
msub %d15, %d1, %d14, -129

# CHECK-INST: msub %d15, %d1, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0xf1]
.code32
msub %d15, %d1, %d14, -1

# CHECK-INST: msub %d15, %d1, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0xf1]
.code32
msub %d15, %d1, %d14, 0

# CHECK-INST: msub %d15, %d1, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0xf1]
.code32
msub %d15, %d1, %d14, 1

# CHECK-INST: msub %d15, %d1, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0xf1]
.code32
msub %d15, %d1, %d14, 128

# CHECK-INST: msub %d15, %d1, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0xf1]
.code32
msub %d15, %d1, %d14, 255

# CHECK-INST: msub %d15, %d1, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0xf1]
.code32
msub %d15, %d1, %d15, -256

# CHECK-INST: msub %d15, %d1, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0xf1]
.code32
msub %d15, %d1, %d15, -129

# CHECK-INST: msub %d15, %d1, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0xf1]
.code32
msub %d15, %d1, %d15, -1

# CHECK-INST: msub %d15, %d1, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0xf1]
.code32
msub %d15, %d1, %d15, 0

# CHECK-INST: msub %d15, %d1, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0xf1]
.code32
msub %d15, %d1, %d15, 1

# CHECK-INST: msub %d15, %d1, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0xf1]
.code32
msub %d15, %d1, %d15, 128

# CHECK-INST: msub %d15, %d1, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0xf1]
.code32
msub %d15, %d1, %d15, 255

# CHECK-INST: msub %d15, %d14, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0xfe]
.code32
msub %d15, %d14, %d0, -256

# CHECK-INST: msub %d15, %d14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0xfe]
.code32
msub %d15, %d14, %d0, -129

# CHECK-INST: msub %d15, %d14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0xfe]
.code32
msub %d15, %d14, %d0, -1

# CHECK-INST: msub %d15, %d14, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0xfe]
.code32
msub %d15, %d14, %d0, 0

# CHECK-INST: msub %d15, %d14, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0xfe]
.code32
msub %d15, %d14, %d0, 1

# CHECK-INST: msub %d15, %d14, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0xfe]
.code32
msub %d15, %d14, %d0, 128

# CHECK-INST: msub %d15, %d14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0xfe]
.code32
msub %d15, %d14, %d0, 255

# CHECK-INST: msub %d15, %d14, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0xfe]
.code32
msub %d15, %d14, %d1, -256

# CHECK-INST: msub %d15, %d14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0xfe]
.code32
msub %d15, %d14, %d1, -129

# CHECK-INST: msub %d15, %d14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0xfe]
.code32
msub %d15, %d14, %d1, -1

# CHECK-INST: msub %d15, %d14, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0xfe]
.code32
msub %d15, %d14, %d1, 0

# CHECK-INST: msub %d15, %d14, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0xfe]
.code32
msub %d15, %d14, %d1, 1

# CHECK-INST: msub %d15, %d14, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0xfe]
.code32
msub %d15, %d14, %d1, 128

# CHECK-INST: msub %d15, %d14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0xfe]
.code32
msub %d15, %d14, %d1, 255

# CHECK-INST: msub %d15, %d14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0xfe]
.code32
msub %d15, %d14, %d14, -256

# CHECK-INST: msub %d15, %d14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0xfe]
.code32
msub %d15, %d14, %d14, -129

# CHECK-INST: msub %d15, %d14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0xfe]
.code32
msub %d15, %d14, %d14, -1

# CHECK-INST: msub %d15, %d14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0xfe]
.code32
msub %d15, %d14, %d14, 0

# CHECK-INST: msub %d15, %d14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0xfe]
.code32
msub %d15, %d14, %d14, 1

# CHECK-INST: msub %d15, %d14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0xfe]
.code32
msub %d15, %d14, %d14, 128

# CHECK-INST: msub %d15, %d14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0xfe]
.code32
msub %d15, %d14, %d14, 255

# CHECK-INST: msub %d15, %d14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0xfe]
.code32
msub %d15, %d14, %d15, -256

# CHECK-INST: msub %d15, %d14, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0xfe]
.code32
msub %d15, %d14, %d15, -129

# CHECK-INST: msub %d15, %d14, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0xfe]
.code32
msub %d15, %d14, %d15, -1

# CHECK-INST: msub %d15, %d14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0xfe]
.code32
msub %d15, %d14, %d15, 0

# CHECK-INST: msub %d15, %d14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0xfe]
.code32
msub %d15, %d14, %d15, 1

# CHECK-INST: msub %d15, %d14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0xfe]
.code32
msub %d15, %d14, %d15, 128

# CHECK-INST: msub %d15, %d14, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0xfe]
.code32
msub %d15, %d14, %d15, 255

# CHECK-INST: msub %d15, %d15, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0xff]
.code32
msub %d15, %d15, %d0, -256

# CHECK-INST: msub %d15, %d15, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0xff]
.code32
msub %d15, %d15, %d0, -129

# CHECK-INST: msub %d15, %d15, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0xff]
.code32
msub %d15, %d15, %d0, -1

# CHECK-INST: msub %d15, %d15, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0xff]
.code32
msub %d15, %d15, %d0, 0

# CHECK-INST: msub %d15, %d15, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0xff]
.code32
msub %d15, %d15, %d0, 1

# CHECK-INST: msub %d15, %d15, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0xff]
.code32
msub %d15, %d15, %d0, 128

# CHECK-INST: msub %d15, %d15, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0xff]
.code32
msub %d15, %d15, %d0, 255

# CHECK-INST: msub %d15, %d15, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0xff]
.code32
msub %d15, %d15, %d1, -256

# CHECK-INST: msub %d15, %d15, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0xff]
.code32
msub %d15, %d15, %d1, -129

# CHECK-INST: msub %d15, %d15, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0xff]
.code32
msub %d15, %d15, %d1, -1

# CHECK-INST: msub %d15, %d15, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0xff]
.code32
msub %d15, %d15, %d1, 0

# CHECK-INST: msub %d15, %d15, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0xff]
.code32
msub %d15, %d15, %d1, 1

# CHECK-INST: msub %d15, %d15, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0xff]
.code32
msub %d15, %d15, %d1, 128

# CHECK-INST: msub %d15, %d15, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0xff]
.code32
msub %d15, %d15, %d1, 255

# CHECK-INST: msub %d15, %d15, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0xff]
.code32
msub %d15, %d15, %d14, -256

# CHECK-INST: msub %d15, %d15, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0xff]
.code32
msub %d15, %d15, %d14, -129

# CHECK-INST: msub %d15, %d15, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0xff]
.code32
msub %d15, %d15, %d14, -1

# CHECK-INST: msub %d15, %d15, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0xff]
.code32
msub %d15, %d15, %d14, 0

# CHECK-INST: msub %d15, %d15, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0xff]
.code32
msub %d15, %d15, %d14, 1

# CHECK-INST: msub %d15, %d15, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0xff]
.code32
msub %d15, %d15, %d14, 128

# CHECK-INST: msub %d15, %d15, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0xff]
.code32
msub %d15, %d15, %d14, 255

# CHECK-INST: msub %d15, %d15, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0xff]
.code32
msub %d15, %d15, %d15, -256

# CHECK-INST: msub %d15, %d15, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0xff]
.code32
msub %d15, %d15, %d15, -129

# CHECK-INST: msub %d15, %d15, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0xff]
.code32
msub %d15, %d15, %d15, -1

# CHECK-INST: msub %d15, %d15, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0xff]
.code32
msub %d15, %d15, %d15, 0

# CHECK-INST: msub %d15, %d15, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0xff]
.code32
msub %d15, %d15, %d15, 1

# CHECK-INST: msub %d15, %d15, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0xff]
.code32
msub %d15, %d15, %d15, 128

# CHECK-INST: msub %d15, %d15, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0xff]
.code32
msub %d15, %d15, %d15, 255

# CHECK-INST: msub %e0, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x6a,0x00]
.code32
msub %e0, %e0, %d0, %d0

# CHECK-INST: msub %e0, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x6a,0x00]
.code32
msub %e0, %e0, %d0, %d1

# CHECK-INST: msub %e0, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x6a,0x00]
.code32
msub %e0, %e0, %d0, %d14

# CHECK-INST: msub %e0, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x6a,0x00]
.code32
msub %e0, %e0, %d0, %d15

# CHECK-INST: msub %e0, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x6a,0x00]
.code32
msub %e0, %e0, %d1, %d0

# CHECK-INST: msub %e0, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x6a,0x00]
.code32
msub %e0, %e0, %d1, %d1

# CHECK-INST: msub %e0, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x6a,0x00]
.code32
msub %e0, %e0, %d1, %d14

# CHECK-INST: msub %e0, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x6a,0x00]
.code32
msub %e0, %e0, %d1, %d15

# CHECK-INST: msub %e0, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x6a,0x00]
.code32
msub %e0, %e0, %d14, %d0

# CHECK-INST: msub %e0, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x6a,0x00]
.code32
msub %e0, %e0, %d14, %d1

# CHECK-INST: msub %e0, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x6a,0x00]
.code32
msub %e0, %e0, %d14, %d14

# CHECK-INST: msub %e0, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x6a,0x00]
.code32
msub %e0, %e0, %d14, %d15

# CHECK-INST: msub %e0, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x6a,0x00]
.code32
msub %e0, %e0, %d15, %d0

# CHECK-INST: msub %e0, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x6a,0x00]
.code32
msub %e0, %e0, %d15, %d1

# CHECK-INST: msub %e0, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x6a,0x00]
.code32
msub %e0, %e0, %d15, %d14

# CHECK-INST: msub %e0, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x6a,0x00]
.code32
msub %e0, %e0, %d15, %d15

# CHECK-INST: msub %e0, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x6a,0x06]
.code32
msub %e0, %e6, %d0, %d0

# CHECK-INST: msub %e0, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x6a,0x06]
.code32
msub %e0, %e6, %d0, %d1

# CHECK-INST: msub %e0, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x6a,0x06]
.code32
msub %e0, %e6, %d0, %d14

# CHECK-INST: msub %e0, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x6a,0x06]
.code32
msub %e0, %e6, %d0, %d15

# CHECK-INST: msub %e0, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x6a,0x06]
.code32
msub %e0, %e6, %d1, %d0

# CHECK-INST: msub %e0, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x6a,0x06]
.code32
msub %e0, %e6, %d1, %d1

# CHECK-INST: msub %e0, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x6a,0x06]
.code32
msub %e0, %e6, %d1, %d14

# CHECK-INST: msub %e0, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x6a,0x06]
.code32
msub %e0, %e6, %d1, %d15

# CHECK-INST: msub %e0, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x6a,0x06]
.code32
msub %e0, %e6, %d14, %d0

# CHECK-INST: msub %e0, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x6a,0x06]
.code32
msub %e0, %e6, %d14, %d1

# CHECK-INST: msub %e0, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x6a,0x06]
.code32
msub %e0, %e6, %d14, %d14

# CHECK-INST: msub %e0, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x6a,0x06]
.code32
msub %e0, %e6, %d14, %d15

# CHECK-INST: msub %e0, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x6a,0x06]
.code32
msub %e0, %e6, %d15, %d0

# CHECK-INST: msub %e0, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x6a,0x06]
.code32
msub %e0, %e6, %d15, %d1

# CHECK-INST: msub %e0, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x6a,0x06]
.code32
msub %e0, %e6, %d15, %d14

# CHECK-INST: msub %e0, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x6a,0x06]
.code32
msub %e0, %e6, %d15, %d15

# CHECK-INST: msub %e0, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x6a,0x0e]
.code32
msub %e0, %e14, %d0, %d0

# CHECK-INST: msub %e0, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x6a,0x0e]
.code32
msub %e0, %e14, %d0, %d1

# CHECK-INST: msub %e0, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x6a,0x0e]
.code32
msub %e0, %e14, %d0, %d14

# CHECK-INST: msub %e0, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x6a,0x0e]
.code32
msub %e0, %e14, %d0, %d15

# CHECK-INST: msub %e0, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x6a,0x0e]
.code32
msub %e0, %e14, %d1, %d0

# CHECK-INST: msub %e0, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x6a,0x0e]
.code32
msub %e0, %e14, %d1, %d1

# CHECK-INST: msub %e0, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x6a,0x0e]
.code32
msub %e0, %e14, %d1, %d14

# CHECK-INST: msub %e0, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x6a,0x0e]
.code32
msub %e0, %e14, %d1, %d15

# CHECK-INST: msub %e0, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x6a,0x0e]
.code32
msub %e0, %e14, %d14, %d0

# CHECK-INST: msub %e0, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x6a,0x0e]
.code32
msub %e0, %e14, %d14, %d1

# CHECK-INST: msub %e0, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x6a,0x0e]
.code32
msub %e0, %e14, %d14, %d14

# CHECK-INST: msub %e0, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x6a,0x0e]
.code32
msub %e0, %e14, %d14, %d15

# CHECK-INST: msub %e0, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x6a,0x0e]
.code32
msub %e0, %e14, %d15, %d0

# CHECK-INST: msub %e0, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x6a,0x0e]
.code32
msub %e0, %e14, %d15, %d1

# CHECK-INST: msub %e0, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x6a,0x0e]
.code32
msub %e0, %e14, %d15, %d14

# CHECK-INST: msub %e0, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x6a,0x0e]
.code32
msub %e0, %e14, %d15, %d15

# CHECK-INST: msub %e6, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x6a,0x60]
.code32
msub %e6, %e0, %d0, %d0

# CHECK-INST: msub %e6, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x6a,0x60]
.code32
msub %e6, %e0, %d0, %d1

# CHECK-INST: msub %e6, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x6a,0x60]
.code32
msub %e6, %e0, %d0, %d14

# CHECK-INST: msub %e6, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x6a,0x60]
.code32
msub %e6, %e0, %d0, %d15

# CHECK-INST: msub %e6, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x6a,0x60]
.code32
msub %e6, %e0, %d1, %d0

# CHECK-INST: msub %e6, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x6a,0x60]
.code32
msub %e6, %e0, %d1, %d1

# CHECK-INST: msub %e6, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x6a,0x60]
.code32
msub %e6, %e0, %d1, %d14

# CHECK-INST: msub %e6, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x6a,0x60]
.code32
msub %e6, %e0, %d1, %d15

# CHECK-INST: msub %e6, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x6a,0x60]
.code32
msub %e6, %e0, %d14, %d0

# CHECK-INST: msub %e6, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x6a,0x60]
.code32
msub %e6, %e0, %d14, %d1

# CHECK-INST: msub %e6, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x6a,0x60]
.code32
msub %e6, %e0, %d14, %d14

# CHECK-INST: msub %e6, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x6a,0x60]
.code32
msub %e6, %e0, %d14, %d15

# CHECK-INST: msub %e6, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x6a,0x60]
.code32
msub %e6, %e0, %d15, %d0

# CHECK-INST: msub %e6, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x6a,0x60]
.code32
msub %e6, %e0, %d15, %d1

# CHECK-INST: msub %e6, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x6a,0x60]
.code32
msub %e6, %e0, %d15, %d14

# CHECK-INST: msub %e6, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x6a,0x60]
.code32
msub %e6, %e0, %d15, %d15

# CHECK-INST: msub %e6, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x6a,0x66]
.code32
msub %e6, %e6, %d0, %d0

# CHECK-INST: msub %e6, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x6a,0x66]
.code32
msub %e6, %e6, %d0, %d1

# CHECK-INST: msub %e6, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x6a,0x66]
.code32
msub %e6, %e6, %d0, %d14

# CHECK-INST: msub %e6, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x6a,0x66]
.code32
msub %e6, %e6, %d0, %d15

# CHECK-INST: msub %e6, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x6a,0x66]
.code32
msub %e6, %e6, %d1, %d0

# CHECK-INST: msub %e6, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x6a,0x66]
.code32
msub %e6, %e6, %d1, %d1

# CHECK-INST: msub %e6, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x6a,0x66]
.code32
msub %e6, %e6, %d1, %d14

# CHECK-INST: msub %e6, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x6a,0x66]
.code32
msub %e6, %e6, %d1, %d15

# CHECK-INST: msub %e6, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x6a,0x66]
.code32
msub %e6, %e6, %d14, %d0

# CHECK-INST: msub %e6, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x6a,0x66]
.code32
msub %e6, %e6, %d14, %d1

# CHECK-INST: msub %e6, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x6a,0x66]
.code32
msub %e6, %e6, %d14, %d14

# CHECK-INST: msub %e6, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x6a,0x66]
.code32
msub %e6, %e6, %d14, %d15

# CHECK-INST: msub %e6, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x6a,0x66]
.code32
msub %e6, %e6, %d15, %d0

# CHECK-INST: msub %e6, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x6a,0x66]
.code32
msub %e6, %e6, %d15, %d1

# CHECK-INST: msub %e6, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x6a,0x66]
.code32
msub %e6, %e6, %d15, %d14

# CHECK-INST: msub %e6, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x6a,0x66]
.code32
msub %e6, %e6, %d15, %d15

# CHECK-INST: msub %e6, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x6a,0x6e]
.code32
msub %e6, %e14, %d0, %d0

# CHECK-INST: msub %e6, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x6a,0x6e]
.code32
msub %e6, %e14, %d0, %d1

# CHECK-INST: msub %e6, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x6a,0x6e]
.code32
msub %e6, %e14, %d0, %d14

# CHECK-INST: msub %e6, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x6a,0x6e]
.code32
msub %e6, %e14, %d0, %d15

# CHECK-INST: msub %e6, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x6a,0x6e]
.code32
msub %e6, %e14, %d1, %d0

# CHECK-INST: msub %e6, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x6a,0x6e]
.code32
msub %e6, %e14, %d1, %d1

# CHECK-INST: msub %e6, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x6a,0x6e]
.code32
msub %e6, %e14, %d1, %d14

# CHECK-INST: msub %e6, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x6a,0x6e]
.code32
msub %e6, %e14, %d1, %d15

# CHECK-INST: msub %e6, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x6a,0x6e]
.code32
msub %e6, %e14, %d14, %d0

# CHECK-INST: msub %e6, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x6a,0x6e]
.code32
msub %e6, %e14, %d14, %d1

# CHECK-INST: msub %e6, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x6a,0x6e]
.code32
msub %e6, %e14, %d14, %d14

# CHECK-INST: msub %e6, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x6a,0x6e]
.code32
msub %e6, %e14, %d14, %d15

# CHECK-INST: msub %e6, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x6a,0x6e]
.code32
msub %e6, %e14, %d15, %d0

# CHECK-INST: msub %e6, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x6a,0x6e]
.code32
msub %e6, %e14, %d15, %d1

# CHECK-INST: msub %e6, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x6a,0x6e]
.code32
msub %e6, %e14, %d15, %d14

# CHECK-INST: msub %e6, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x6a,0x6e]
.code32
msub %e6, %e14, %d15, %d15

# CHECK-INST: msub %e14, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x6a,0xe0]
.code32
msub %e14, %e0, %d0, %d0

# CHECK-INST: msub %e14, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x6a,0xe0]
.code32
msub %e14, %e0, %d0, %d1

# CHECK-INST: msub %e14, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x6a,0xe0]
.code32
msub %e14, %e0, %d0, %d14

# CHECK-INST: msub %e14, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x6a,0xe0]
.code32
msub %e14, %e0, %d0, %d15

# CHECK-INST: msub %e14, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x6a,0xe0]
.code32
msub %e14, %e0, %d1, %d0

# CHECK-INST: msub %e14, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x6a,0xe0]
.code32
msub %e14, %e0, %d1, %d1

# CHECK-INST: msub %e14, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x6a,0xe0]
.code32
msub %e14, %e0, %d1, %d14

# CHECK-INST: msub %e14, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x6a,0xe0]
.code32
msub %e14, %e0, %d1, %d15

# CHECK-INST: msub %e14, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x6a,0xe0]
.code32
msub %e14, %e0, %d14, %d0

# CHECK-INST: msub %e14, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x6a,0xe0]
.code32
msub %e14, %e0, %d14, %d1

# CHECK-INST: msub %e14, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x6a,0xe0]
.code32
msub %e14, %e0, %d14, %d14

# CHECK-INST: msub %e14, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x6a,0xe0]
.code32
msub %e14, %e0, %d14, %d15

# CHECK-INST: msub %e14, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x6a,0xe0]
.code32
msub %e14, %e0, %d15, %d0

# CHECK-INST: msub %e14, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x6a,0xe0]
.code32
msub %e14, %e0, %d15, %d1

# CHECK-INST: msub %e14, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x6a,0xe0]
.code32
msub %e14, %e0, %d15, %d14

# CHECK-INST: msub %e14, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x6a,0xe0]
.code32
msub %e14, %e0, %d15, %d15

# CHECK-INST: msub %e14, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x6a,0xe6]
.code32
msub %e14, %e6, %d0, %d0

# CHECK-INST: msub %e14, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x6a,0xe6]
.code32
msub %e14, %e6, %d0, %d1

# CHECK-INST: msub %e14, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x6a,0xe6]
.code32
msub %e14, %e6, %d0, %d14

# CHECK-INST: msub %e14, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x6a,0xe6]
.code32
msub %e14, %e6, %d0, %d15

# CHECK-INST: msub %e14, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x6a,0xe6]
.code32
msub %e14, %e6, %d1, %d0

# CHECK-INST: msub %e14, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x6a,0xe6]
.code32
msub %e14, %e6, %d1, %d1

# CHECK-INST: msub %e14, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x6a,0xe6]
.code32
msub %e14, %e6, %d1, %d14

# CHECK-INST: msub %e14, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x6a,0xe6]
.code32
msub %e14, %e6, %d1, %d15

# CHECK-INST: msub %e14, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x6a,0xe6]
.code32
msub %e14, %e6, %d14, %d0

# CHECK-INST: msub %e14, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x6a,0xe6]
.code32
msub %e14, %e6, %d14, %d1

# CHECK-INST: msub %e14, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x6a,0xe6]
.code32
msub %e14, %e6, %d14, %d14

# CHECK-INST: msub %e14, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x6a,0xe6]
.code32
msub %e14, %e6, %d14, %d15

# CHECK-INST: msub %e14, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x6a,0xe6]
.code32
msub %e14, %e6, %d15, %d0

# CHECK-INST: msub %e14, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x6a,0xe6]
.code32
msub %e14, %e6, %d15, %d1

# CHECK-INST: msub %e14, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x6a,0xe6]
.code32
msub %e14, %e6, %d15, %d14

# CHECK-INST: msub %e14, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x6a,0xe6]
.code32
msub %e14, %e6, %d15, %d15

# CHECK-INST: msub %e14, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x6a,0xee]
.code32
msub %e14, %e14, %d0, %d0

# CHECK-INST: msub %e14, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x6a,0xee]
.code32
msub %e14, %e14, %d0, %d1

# CHECK-INST: msub %e14, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x6a,0xee]
.code32
msub %e14, %e14, %d0, %d14

# CHECK-INST: msub %e14, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x6a,0xee]
.code32
msub %e14, %e14, %d0, %d15

# CHECK-INST: msub %e14, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x6a,0xee]
.code32
msub %e14, %e14, %d1, %d0

# CHECK-INST: msub %e14, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x6a,0xee]
.code32
msub %e14, %e14, %d1, %d1

# CHECK-INST: msub %e14, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x6a,0xee]
.code32
msub %e14, %e14, %d1, %d14

# CHECK-INST: msub %e14, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x6a,0xee]
.code32
msub %e14, %e14, %d1, %d15

# CHECK-INST: msub %e14, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x6a,0xee]
.code32
msub %e14, %e14, %d14, %d0

# CHECK-INST: msub %e14, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x6a,0xee]
.code32
msub %e14, %e14, %d14, %d1

# CHECK-INST: msub %e14, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x6a,0xee]
.code32
msub %e14, %e14, %d14, %d14

# CHECK-INST: msub %e14, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x6a,0xee]
.code32
msub %e14, %e14, %d14, %d15

# CHECK-INST: msub %e14, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x6a,0xee]
.code32
msub %e14, %e14, %d15, %d0

# CHECK-INST: msub %e14, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x6a,0xee]
.code32
msub %e14, %e14, %d15, %d1

# CHECK-INST: msub %e14, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x6a,0xee]
.code32
msub %e14, %e14, %d15, %d14

# CHECK-INST: msub %e14, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x6a,0xee]
.code32
msub %e14, %e14, %d15, %d15

# CHECK-INST: msub %e0, %e0, %d0, -256
# CHECK: encoding: [0x33,0x00,0x70,0x00]
.code32
msub %e0, %e0, %d0, -256

# CHECK-INST: msub %e0, %e0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x77,0x00]
.code32
msub %e0, %e0, %d0, -129

# CHECK-INST: msub %e0, %e0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x7f,0x00]
.code32
msub %e0, %e0, %d0, -1

# CHECK-INST: msub %e0, %e0, %d0, 0
# CHECK: encoding: [0x33,0x00,0x60,0x00]
.code32
msub %e0, %e0, %d0, 0

# CHECK-INST: msub %e0, %e0, %d0, 1
# CHECK: encoding: [0x33,0x10,0x60,0x00]
.code32
msub %e0, %e0, %d0, 1

# CHECK-INST: msub %e0, %e0, %d0, 128
# CHECK: encoding: [0x33,0x00,0x68,0x00]
.code32
msub %e0, %e0, %d0, 128

# CHECK-INST: msub %e0, %e0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x6f,0x00]
.code32
msub %e0, %e0, %d0, 255

# CHECK-INST: msub %e0, %e0, %d1, -256
# CHECK: encoding: [0x33,0x01,0x70,0x00]
.code32
msub %e0, %e0, %d1, -256

# CHECK-INST: msub %e0, %e0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x77,0x00]
.code32
msub %e0, %e0, %d1, -129

# CHECK-INST: msub %e0, %e0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x7f,0x00]
.code32
msub %e0, %e0, %d1, -1

# CHECK-INST: msub %e0, %e0, %d1, 0
# CHECK: encoding: [0x33,0x01,0x60,0x00]
.code32
msub %e0, %e0, %d1, 0

# CHECK-INST: msub %e0, %e0, %d1, 1
# CHECK: encoding: [0x33,0x11,0x60,0x00]
.code32
msub %e0, %e0, %d1, 1

# CHECK-INST: msub %e0, %e0, %d1, 128
# CHECK: encoding: [0x33,0x01,0x68,0x00]
.code32
msub %e0, %e0, %d1, 128

# CHECK-INST: msub %e0, %e0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x6f,0x00]
.code32
msub %e0, %e0, %d1, 255

# CHECK-INST: msub %e0, %e0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x70,0x00]
.code32
msub %e0, %e0, %d14, -256

# CHECK-INST: msub %e0, %e0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x77,0x00]
.code32
msub %e0, %e0, %d14, -129

# CHECK-INST: msub %e0, %e0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x7f,0x00]
.code32
msub %e0, %e0, %d14, -1

# CHECK-INST: msub %e0, %e0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x60,0x00]
.code32
msub %e0, %e0, %d14, 0

# CHECK-INST: msub %e0, %e0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x60,0x00]
.code32
msub %e0, %e0, %d14, 1

# CHECK-INST: msub %e0, %e0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x68,0x00]
.code32
msub %e0, %e0, %d14, 128

# CHECK-INST: msub %e0, %e0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x6f,0x00]
.code32
msub %e0, %e0, %d14, 255

# CHECK-INST: msub %e0, %e0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x70,0x00]
.code32
msub %e0, %e0, %d15, -256

# CHECK-INST: msub %e0, %e0, %d15, -129
# CHECK: encoding: [0x33,0xff,0x77,0x00]
.code32
msub %e0, %e0, %d15, -129

# CHECK-INST: msub %e0, %e0, %d15, -1
# CHECK: encoding: [0x33,0xff,0x7f,0x00]
.code32
msub %e0, %e0, %d15, -1

# CHECK-INST: msub %e0, %e0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x60,0x00]
.code32
msub %e0, %e0, %d15, 0

# CHECK-INST: msub %e0, %e0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x60,0x00]
.code32
msub %e0, %e0, %d15, 1

# CHECK-INST: msub %e0, %e0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x68,0x00]
.code32
msub %e0, %e0, %d15, 128

# CHECK-INST: msub %e0, %e0, %d15, 255
# CHECK: encoding: [0x33,0xff,0x6f,0x00]
.code32
msub %e0, %e0, %d15, 255

# CHECK-INST: msub %e0, %e6, %d0, -256
# CHECK: encoding: [0x33,0x00,0x70,0x06]
.code32
msub %e0, %e6, %d0, -256

# CHECK-INST: msub %e0, %e6, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x77,0x06]
.code32
msub %e0, %e6, %d0, -129

# CHECK-INST: msub %e0, %e6, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x7f,0x06]
.code32
msub %e0, %e6, %d0, -1

# CHECK-INST: msub %e0, %e6, %d0, 0
# CHECK: encoding: [0x33,0x00,0x60,0x06]
.code32
msub %e0, %e6, %d0, 0

# CHECK-INST: msub %e0, %e6, %d0, 1
# CHECK: encoding: [0x33,0x10,0x60,0x06]
.code32
msub %e0, %e6, %d0, 1

# CHECK-INST: msub %e0, %e6, %d0, 128
# CHECK: encoding: [0x33,0x00,0x68,0x06]
.code32
msub %e0, %e6, %d0, 128

# CHECK-INST: msub %e0, %e6, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x6f,0x06]
.code32
msub %e0, %e6, %d0, 255

# CHECK-INST: msub %e0, %e6, %d1, -256
# CHECK: encoding: [0x33,0x01,0x70,0x06]
.code32
msub %e0, %e6, %d1, -256

# CHECK-INST: msub %e0, %e6, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x77,0x06]
.code32
msub %e0, %e6, %d1, -129

# CHECK-INST: msub %e0, %e6, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x7f,0x06]
.code32
msub %e0, %e6, %d1, -1

# CHECK-INST: msub %e0, %e6, %d1, 0
# CHECK: encoding: [0x33,0x01,0x60,0x06]
.code32
msub %e0, %e6, %d1, 0

# CHECK-INST: msub %e0, %e6, %d1, 1
# CHECK: encoding: [0x33,0x11,0x60,0x06]
.code32
msub %e0, %e6, %d1, 1

# CHECK-INST: msub %e0, %e6, %d1, 128
# CHECK: encoding: [0x33,0x01,0x68,0x06]
.code32
msub %e0, %e6, %d1, 128

# CHECK-INST: msub %e0, %e6, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x6f,0x06]
.code32
msub %e0, %e6, %d1, 255

# CHECK-INST: msub %e0, %e6, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x70,0x06]
.code32
msub %e0, %e6, %d14, -256

# CHECK-INST: msub %e0, %e6, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x77,0x06]
.code32
msub %e0, %e6, %d14, -129

# CHECK-INST: msub %e0, %e6, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x7f,0x06]
.code32
msub %e0, %e6, %d14, -1

# CHECK-INST: msub %e0, %e6, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x60,0x06]
.code32
msub %e0, %e6, %d14, 0

# CHECK-INST: msub %e0, %e6, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x60,0x06]
.code32
msub %e0, %e6, %d14, 1

# CHECK-INST: msub %e0, %e6, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x68,0x06]
.code32
msub %e0, %e6, %d14, 128

# CHECK-INST: msub %e0, %e6, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x6f,0x06]
.code32
msub %e0, %e6, %d14, 255

# CHECK-INST: msub %e0, %e6, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x70,0x06]
.code32
msub %e0, %e6, %d15, -256

# CHECK-INST: msub %e0, %e6, %d15, -129
# CHECK: encoding: [0x33,0xff,0x77,0x06]
.code32
msub %e0, %e6, %d15, -129

# CHECK-INST: msub %e0, %e6, %d15, -1
# CHECK: encoding: [0x33,0xff,0x7f,0x06]
.code32
msub %e0, %e6, %d15, -1

# CHECK-INST: msub %e0, %e6, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x60,0x06]
.code32
msub %e0, %e6, %d15, 0

# CHECK-INST: msub %e0, %e6, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x60,0x06]
.code32
msub %e0, %e6, %d15, 1

# CHECK-INST: msub %e0, %e6, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x68,0x06]
.code32
msub %e0, %e6, %d15, 128

# CHECK-INST: msub %e0, %e6, %d15, 255
# CHECK: encoding: [0x33,0xff,0x6f,0x06]
.code32
msub %e0, %e6, %d15, 255

# CHECK-INST: msub %e0, %e14, %d0, -256
# CHECK: encoding: [0x33,0x00,0x70,0x0e]
.code32
msub %e0, %e14, %d0, -256

# CHECK-INST: msub %e0, %e14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x77,0x0e]
.code32
msub %e0, %e14, %d0, -129

# CHECK-INST: msub %e0, %e14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x7f,0x0e]
.code32
msub %e0, %e14, %d0, -1

# CHECK-INST: msub %e0, %e14, %d0, 0
# CHECK: encoding: [0x33,0x00,0x60,0x0e]
.code32
msub %e0, %e14, %d0, 0

# CHECK-INST: msub %e0, %e14, %d0, 1
# CHECK: encoding: [0x33,0x10,0x60,0x0e]
.code32
msub %e0, %e14, %d0, 1

# CHECK-INST: msub %e0, %e14, %d0, 128
# CHECK: encoding: [0x33,0x00,0x68,0x0e]
.code32
msub %e0, %e14, %d0, 128

# CHECK-INST: msub %e0, %e14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x6f,0x0e]
.code32
msub %e0, %e14, %d0, 255

# CHECK-INST: msub %e0, %e14, %d1, -256
# CHECK: encoding: [0x33,0x01,0x70,0x0e]
.code32
msub %e0, %e14, %d1, -256

# CHECK-INST: msub %e0, %e14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x77,0x0e]
.code32
msub %e0, %e14, %d1, -129

# CHECK-INST: msub %e0, %e14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x7f,0x0e]
.code32
msub %e0, %e14, %d1, -1

# CHECK-INST: msub %e0, %e14, %d1, 0
# CHECK: encoding: [0x33,0x01,0x60,0x0e]
.code32
msub %e0, %e14, %d1, 0

# CHECK-INST: msub %e0, %e14, %d1, 1
# CHECK: encoding: [0x33,0x11,0x60,0x0e]
.code32
msub %e0, %e14, %d1, 1

# CHECK-INST: msub %e0, %e14, %d1, 128
# CHECK: encoding: [0x33,0x01,0x68,0x0e]
.code32
msub %e0, %e14, %d1, 128

# CHECK-INST: msub %e0, %e14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x6f,0x0e]
.code32
msub %e0, %e14, %d1, 255

# CHECK-INST: msub %e0, %e14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x70,0x0e]
.code32
msub %e0, %e14, %d14, -256

# CHECK-INST: msub %e0, %e14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x77,0x0e]
.code32
msub %e0, %e14, %d14, -129

# CHECK-INST: msub %e0, %e14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x7f,0x0e]
.code32
msub %e0, %e14, %d14, -1

# CHECK-INST: msub %e0, %e14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x60,0x0e]
.code32
msub %e0, %e14, %d14, 0

# CHECK-INST: msub %e0, %e14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x60,0x0e]
.code32
msub %e0, %e14, %d14, 1

# CHECK-INST: msub %e0, %e14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x68,0x0e]
.code32
msub %e0, %e14, %d14, 128

# CHECK-INST: msub %e0, %e14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x6f,0x0e]
.code32
msub %e0, %e14, %d14, 255

# CHECK-INST: msub %e0, %e14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x70,0x0e]
.code32
msub %e0, %e14, %d15, -256

# CHECK-INST: msub %e0, %e14, %d15, -129
# CHECK: encoding: [0x33,0xff,0x77,0x0e]
.code32
msub %e0, %e14, %d15, -129

# CHECK-INST: msub %e0, %e14, %d15, -1
# CHECK: encoding: [0x33,0xff,0x7f,0x0e]
.code32
msub %e0, %e14, %d15, -1

# CHECK-INST: msub %e0, %e14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x60,0x0e]
.code32
msub %e0, %e14, %d15, 0

# CHECK-INST: msub %e0, %e14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x60,0x0e]
.code32
msub %e0, %e14, %d15, 1

# CHECK-INST: msub %e0, %e14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x68,0x0e]
.code32
msub %e0, %e14, %d15, 128

# CHECK-INST: msub %e0, %e14, %d15, 255
# CHECK: encoding: [0x33,0xff,0x6f,0x0e]
.code32
msub %e0, %e14, %d15, 255

# CHECK-INST: msub %e6, %e0, %d0, -256
# CHECK: encoding: [0x33,0x00,0x70,0x60]
.code32
msub %e6, %e0, %d0, -256

# CHECK-INST: msub %e6, %e0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x77,0x60]
.code32
msub %e6, %e0, %d0, -129

# CHECK-INST: msub %e6, %e0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x7f,0x60]
.code32
msub %e6, %e0, %d0, -1

# CHECK-INST: msub %e6, %e0, %d0, 0
# CHECK: encoding: [0x33,0x00,0x60,0x60]
.code32
msub %e6, %e0, %d0, 0

# CHECK-INST: msub %e6, %e0, %d0, 1
# CHECK: encoding: [0x33,0x10,0x60,0x60]
.code32
msub %e6, %e0, %d0, 1

# CHECK-INST: msub %e6, %e0, %d0, 128
# CHECK: encoding: [0x33,0x00,0x68,0x60]
.code32
msub %e6, %e0, %d0, 128

# CHECK-INST: msub %e6, %e0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x6f,0x60]
.code32
msub %e6, %e0, %d0, 255

# CHECK-INST: msub %e6, %e0, %d1, -256
# CHECK: encoding: [0x33,0x01,0x70,0x60]
.code32
msub %e6, %e0, %d1, -256

# CHECK-INST: msub %e6, %e0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x77,0x60]
.code32
msub %e6, %e0, %d1, -129

# CHECK-INST: msub %e6, %e0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x7f,0x60]
.code32
msub %e6, %e0, %d1, -1

# CHECK-INST: msub %e6, %e0, %d1, 0
# CHECK: encoding: [0x33,0x01,0x60,0x60]
.code32
msub %e6, %e0, %d1, 0

# CHECK-INST: msub %e6, %e0, %d1, 1
# CHECK: encoding: [0x33,0x11,0x60,0x60]
.code32
msub %e6, %e0, %d1, 1

# CHECK-INST: msub %e6, %e0, %d1, 128
# CHECK: encoding: [0x33,0x01,0x68,0x60]
.code32
msub %e6, %e0, %d1, 128

# CHECK-INST: msub %e6, %e0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x6f,0x60]
.code32
msub %e6, %e0, %d1, 255

# CHECK-INST: msub %e6, %e0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x70,0x60]
.code32
msub %e6, %e0, %d14, -256

# CHECK-INST: msub %e6, %e0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x77,0x60]
.code32
msub %e6, %e0, %d14, -129

# CHECK-INST: msub %e6, %e0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x7f,0x60]
.code32
msub %e6, %e0, %d14, -1

# CHECK-INST: msub %e6, %e0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x60,0x60]
.code32
msub %e6, %e0, %d14, 0

# CHECK-INST: msub %e6, %e0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x60,0x60]
.code32
msub %e6, %e0, %d14, 1

# CHECK-INST: msub %e6, %e0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x68,0x60]
.code32
msub %e6, %e0, %d14, 128

# CHECK-INST: msub %e6, %e0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x6f,0x60]
.code32
msub %e6, %e0, %d14, 255

# CHECK-INST: msub %e6, %e0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x70,0x60]
.code32
msub %e6, %e0, %d15, -256

# CHECK-INST: msub %e6, %e0, %d15, -129
# CHECK: encoding: [0x33,0xff,0x77,0x60]
.code32
msub %e6, %e0, %d15, -129

# CHECK-INST: msub %e6, %e0, %d15, -1
# CHECK: encoding: [0x33,0xff,0x7f,0x60]
.code32
msub %e6, %e0, %d15, -1

# CHECK-INST: msub %e6, %e0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x60,0x60]
.code32
msub %e6, %e0, %d15, 0

# CHECK-INST: msub %e6, %e0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x60,0x60]
.code32
msub %e6, %e0, %d15, 1

# CHECK-INST: msub %e6, %e0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x68,0x60]
.code32
msub %e6, %e0, %d15, 128

# CHECK-INST: msub %e6, %e0, %d15, 255
# CHECK: encoding: [0x33,0xff,0x6f,0x60]
.code32
msub %e6, %e0, %d15, 255

# CHECK-INST: msub %e6, %e6, %d0, -256
# CHECK: encoding: [0x33,0x00,0x70,0x66]
.code32
msub %e6, %e6, %d0, -256

# CHECK-INST: msub %e6, %e6, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x77,0x66]
.code32
msub %e6, %e6, %d0, -129

# CHECK-INST: msub %e6, %e6, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x7f,0x66]
.code32
msub %e6, %e6, %d0, -1

# CHECK-INST: msub %e6, %e6, %d0, 0
# CHECK: encoding: [0x33,0x00,0x60,0x66]
.code32
msub %e6, %e6, %d0, 0

# CHECK-INST: msub %e6, %e6, %d0, 1
# CHECK: encoding: [0x33,0x10,0x60,0x66]
.code32
msub %e6, %e6, %d0, 1

# CHECK-INST: msub %e6, %e6, %d0, 128
# CHECK: encoding: [0x33,0x00,0x68,0x66]
.code32
msub %e6, %e6, %d0, 128

# CHECK-INST: msub %e6, %e6, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x6f,0x66]
.code32
msub %e6, %e6, %d0, 255

# CHECK-INST: msub %e6, %e6, %d1, -256
# CHECK: encoding: [0x33,0x01,0x70,0x66]
.code32
msub %e6, %e6, %d1, -256

# CHECK-INST: msub %e6, %e6, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x77,0x66]
.code32
msub %e6, %e6, %d1, -129

# CHECK-INST: msub %e6, %e6, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x7f,0x66]
.code32
msub %e6, %e6, %d1, -1

# CHECK-INST: msub %e6, %e6, %d1, 0
# CHECK: encoding: [0x33,0x01,0x60,0x66]
.code32
msub %e6, %e6, %d1, 0

# CHECK-INST: msub %e6, %e6, %d1, 1
# CHECK: encoding: [0x33,0x11,0x60,0x66]
.code32
msub %e6, %e6, %d1, 1

# CHECK-INST: msub %e6, %e6, %d1, 128
# CHECK: encoding: [0x33,0x01,0x68,0x66]
.code32
msub %e6, %e6, %d1, 128

# CHECK-INST: msub %e6, %e6, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x6f,0x66]
.code32
msub %e6, %e6, %d1, 255

# CHECK-INST: msub %e6, %e6, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x70,0x66]
.code32
msub %e6, %e6, %d14, -256

# CHECK-INST: msub %e6, %e6, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x77,0x66]
.code32
msub %e6, %e6, %d14, -129

# CHECK-INST: msub %e6, %e6, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x7f,0x66]
.code32
msub %e6, %e6, %d14, -1

# CHECK-INST: msub %e6, %e6, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x60,0x66]
.code32
msub %e6, %e6, %d14, 0

# CHECK-INST: msub %e6, %e6, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x60,0x66]
.code32
msub %e6, %e6, %d14, 1

# CHECK-INST: msub %e6, %e6, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x68,0x66]
.code32
msub %e6, %e6, %d14, 128

# CHECK-INST: msub %e6, %e6, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x6f,0x66]
.code32
msub %e6, %e6, %d14, 255

# CHECK-INST: msub %e6, %e6, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x70,0x66]
.code32
msub %e6, %e6, %d15, -256

# CHECK-INST: msub %e6, %e6, %d15, -129
# CHECK: encoding: [0x33,0xff,0x77,0x66]
.code32
msub %e6, %e6, %d15, -129

# CHECK-INST: msub %e6, %e6, %d15, -1
# CHECK: encoding: [0x33,0xff,0x7f,0x66]
.code32
msub %e6, %e6, %d15, -1

# CHECK-INST: msub %e6, %e6, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x60,0x66]
.code32
msub %e6, %e6, %d15, 0

# CHECK-INST: msub %e6, %e6, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x60,0x66]
.code32
msub %e6, %e6, %d15, 1

# CHECK-INST: msub %e6, %e6, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x68,0x66]
.code32
msub %e6, %e6, %d15, 128

# CHECK-INST: msub %e6, %e6, %d15, 255
# CHECK: encoding: [0x33,0xff,0x6f,0x66]
.code32
msub %e6, %e6, %d15, 255

# CHECK-INST: msub %e6, %e14, %d0, -256
# CHECK: encoding: [0x33,0x00,0x70,0x6e]
.code32
msub %e6, %e14, %d0, -256

# CHECK-INST: msub %e6, %e14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x77,0x6e]
.code32
msub %e6, %e14, %d0, -129

# CHECK-INST: msub %e6, %e14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x7f,0x6e]
.code32
msub %e6, %e14, %d0, -1

# CHECK-INST: msub %e6, %e14, %d0, 0
# CHECK: encoding: [0x33,0x00,0x60,0x6e]
.code32
msub %e6, %e14, %d0, 0

# CHECK-INST: msub %e6, %e14, %d0, 1
# CHECK: encoding: [0x33,0x10,0x60,0x6e]
.code32
msub %e6, %e14, %d0, 1

# CHECK-INST: msub %e6, %e14, %d0, 128
# CHECK: encoding: [0x33,0x00,0x68,0x6e]
.code32
msub %e6, %e14, %d0, 128

# CHECK-INST: msub %e6, %e14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x6f,0x6e]
.code32
msub %e6, %e14, %d0, 255

# CHECK-INST: msub %e6, %e14, %d1, -256
# CHECK: encoding: [0x33,0x01,0x70,0x6e]
.code32
msub %e6, %e14, %d1, -256

# CHECK-INST: msub %e6, %e14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x77,0x6e]
.code32
msub %e6, %e14, %d1, -129

# CHECK-INST: msub %e6, %e14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x7f,0x6e]
.code32
msub %e6, %e14, %d1, -1

# CHECK-INST: msub %e6, %e14, %d1, 0
# CHECK: encoding: [0x33,0x01,0x60,0x6e]
.code32
msub %e6, %e14, %d1, 0

# CHECK-INST: msub %e6, %e14, %d1, 1
# CHECK: encoding: [0x33,0x11,0x60,0x6e]
.code32
msub %e6, %e14, %d1, 1

# CHECK-INST: msub %e6, %e14, %d1, 128
# CHECK: encoding: [0x33,0x01,0x68,0x6e]
.code32
msub %e6, %e14, %d1, 128

# CHECK-INST: msub %e6, %e14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x6f,0x6e]
.code32
msub %e6, %e14, %d1, 255

# CHECK-INST: msub %e6, %e14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x70,0x6e]
.code32
msub %e6, %e14, %d14, -256

# CHECK-INST: msub %e6, %e14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x77,0x6e]
.code32
msub %e6, %e14, %d14, -129

# CHECK-INST: msub %e6, %e14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x7f,0x6e]
.code32
msub %e6, %e14, %d14, -1

# CHECK-INST: msub %e6, %e14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x60,0x6e]
.code32
msub %e6, %e14, %d14, 0

# CHECK-INST: msub %e6, %e14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x60,0x6e]
.code32
msub %e6, %e14, %d14, 1

# CHECK-INST: msub %e6, %e14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x68,0x6e]
.code32
msub %e6, %e14, %d14, 128

# CHECK-INST: msub %e6, %e14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x6f,0x6e]
.code32
msub %e6, %e14, %d14, 255

# CHECK-INST: msub %e6, %e14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x70,0x6e]
.code32
msub %e6, %e14, %d15, -256

# CHECK-INST: msub %e6, %e14, %d15, -129
# CHECK: encoding: [0x33,0xff,0x77,0x6e]
.code32
msub %e6, %e14, %d15, -129

# CHECK-INST: msub %e6, %e14, %d15, -1
# CHECK: encoding: [0x33,0xff,0x7f,0x6e]
.code32
msub %e6, %e14, %d15, -1

# CHECK-INST: msub %e6, %e14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x60,0x6e]
.code32
msub %e6, %e14, %d15, 0

# CHECK-INST: msub %e6, %e14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x60,0x6e]
.code32
msub %e6, %e14, %d15, 1

# CHECK-INST: msub %e6, %e14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x68,0x6e]
.code32
msub %e6, %e14, %d15, 128

# CHECK-INST: msub %e6, %e14, %d15, 255
# CHECK: encoding: [0x33,0xff,0x6f,0x6e]
.code32
msub %e6, %e14, %d15, 255

# CHECK-INST: msub %e14, %e0, %d0, -256
# CHECK: encoding: [0x33,0x00,0x70,0xe0]
.code32
msub %e14, %e0, %d0, -256

# CHECK-INST: msub %e14, %e0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x77,0xe0]
.code32
msub %e14, %e0, %d0, -129

# CHECK-INST: msub %e14, %e0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x7f,0xe0]
.code32
msub %e14, %e0, %d0, -1

# CHECK-INST: msub %e14, %e0, %d0, 0
# CHECK: encoding: [0x33,0x00,0x60,0xe0]
.code32
msub %e14, %e0, %d0, 0

# CHECK-INST: msub %e14, %e0, %d0, 1
# CHECK: encoding: [0x33,0x10,0x60,0xe0]
.code32
msub %e14, %e0, %d0, 1

# CHECK-INST: msub %e14, %e0, %d0, 128
# CHECK: encoding: [0x33,0x00,0x68,0xe0]
.code32
msub %e14, %e0, %d0, 128

# CHECK-INST: msub %e14, %e0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x6f,0xe0]
.code32
msub %e14, %e0, %d0, 255

# CHECK-INST: msub %e14, %e0, %d1, -256
# CHECK: encoding: [0x33,0x01,0x70,0xe0]
.code32
msub %e14, %e0, %d1, -256

# CHECK-INST: msub %e14, %e0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x77,0xe0]
.code32
msub %e14, %e0, %d1, -129

# CHECK-INST: msub %e14, %e0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x7f,0xe0]
.code32
msub %e14, %e0, %d1, -1

# CHECK-INST: msub %e14, %e0, %d1, 0
# CHECK: encoding: [0x33,0x01,0x60,0xe0]
.code32
msub %e14, %e0, %d1, 0

# CHECK-INST: msub %e14, %e0, %d1, 1
# CHECK: encoding: [0x33,0x11,0x60,0xe0]
.code32
msub %e14, %e0, %d1, 1

# CHECK-INST: msub %e14, %e0, %d1, 128
# CHECK: encoding: [0x33,0x01,0x68,0xe0]
.code32
msub %e14, %e0, %d1, 128

# CHECK-INST: msub %e14, %e0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x6f,0xe0]
.code32
msub %e14, %e0, %d1, 255

# CHECK-INST: msub %e14, %e0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x70,0xe0]
.code32
msub %e14, %e0, %d14, -256

# CHECK-INST: msub %e14, %e0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x77,0xe0]
.code32
msub %e14, %e0, %d14, -129

# CHECK-INST: msub %e14, %e0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x7f,0xe0]
.code32
msub %e14, %e0, %d14, -1

# CHECK-INST: msub %e14, %e0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x60,0xe0]
.code32
msub %e14, %e0, %d14, 0

# CHECK-INST: msub %e14, %e0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x60,0xe0]
.code32
msub %e14, %e0, %d14, 1

# CHECK-INST: msub %e14, %e0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x68,0xe0]
.code32
msub %e14, %e0, %d14, 128

# CHECK-INST: msub %e14, %e0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x6f,0xe0]
.code32
msub %e14, %e0, %d14, 255

# CHECK-INST: msub %e14, %e0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x70,0xe0]
.code32
msub %e14, %e0, %d15, -256

# CHECK-INST: msub %e14, %e0, %d15, -129
# CHECK: encoding: [0x33,0xff,0x77,0xe0]
.code32
msub %e14, %e0, %d15, -129

# CHECK-INST: msub %e14, %e0, %d15, -1
# CHECK: encoding: [0x33,0xff,0x7f,0xe0]
.code32
msub %e14, %e0, %d15, -1

# CHECK-INST: msub %e14, %e0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x60,0xe0]
.code32
msub %e14, %e0, %d15, 0

# CHECK-INST: msub %e14, %e0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x60,0xe0]
.code32
msub %e14, %e0, %d15, 1

# CHECK-INST: msub %e14, %e0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x68,0xe0]
.code32
msub %e14, %e0, %d15, 128

# CHECK-INST: msub %e14, %e0, %d15, 255
# CHECK: encoding: [0x33,0xff,0x6f,0xe0]
.code32
msub %e14, %e0, %d15, 255

# CHECK-INST: msub %e14, %e6, %d0, -256
# CHECK: encoding: [0x33,0x00,0x70,0xe6]
.code32
msub %e14, %e6, %d0, -256

# CHECK-INST: msub %e14, %e6, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x77,0xe6]
.code32
msub %e14, %e6, %d0, -129

# CHECK-INST: msub %e14, %e6, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x7f,0xe6]
.code32
msub %e14, %e6, %d0, -1

# CHECK-INST: msub %e14, %e6, %d0, 0
# CHECK: encoding: [0x33,0x00,0x60,0xe6]
.code32
msub %e14, %e6, %d0, 0

# CHECK-INST: msub %e14, %e6, %d0, 1
# CHECK: encoding: [0x33,0x10,0x60,0xe6]
.code32
msub %e14, %e6, %d0, 1

# CHECK-INST: msub %e14, %e6, %d0, 128
# CHECK: encoding: [0x33,0x00,0x68,0xe6]
.code32
msub %e14, %e6, %d0, 128

# CHECK-INST: msub %e14, %e6, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x6f,0xe6]
.code32
msub %e14, %e6, %d0, 255

# CHECK-INST: msub %e14, %e6, %d1, -256
# CHECK: encoding: [0x33,0x01,0x70,0xe6]
.code32
msub %e14, %e6, %d1, -256

# CHECK-INST: msub %e14, %e6, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x77,0xe6]
.code32
msub %e14, %e6, %d1, -129

# CHECK-INST: msub %e14, %e6, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x7f,0xe6]
.code32
msub %e14, %e6, %d1, -1

# CHECK-INST: msub %e14, %e6, %d1, 0
# CHECK: encoding: [0x33,0x01,0x60,0xe6]
.code32
msub %e14, %e6, %d1, 0

# CHECK-INST: msub %e14, %e6, %d1, 1
# CHECK: encoding: [0x33,0x11,0x60,0xe6]
.code32
msub %e14, %e6, %d1, 1

# CHECK-INST: msub %e14, %e6, %d1, 128
# CHECK: encoding: [0x33,0x01,0x68,0xe6]
.code32
msub %e14, %e6, %d1, 128

# CHECK-INST: msub %e14, %e6, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x6f,0xe6]
.code32
msub %e14, %e6, %d1, 255

# CHECK-INST: msub %e14, %e6, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x70,0xe6]
.code32
msub %e14, %e6, %d14, -256

# CHECK-INST: msub %e14, %e6, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x77,0xe6]
.code32
msub %e14, %e6, %d14, -129

# CHECK-INST: msub %e14, %e6, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x7f,0xe6]
.code32
msub %e14, %e6, %d14, -1

# CHECK-INST: msub %e14, %e6, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x60,0xe6]
.code32
msub %e14, %e6, %d14, 0

# CHECK-INST: msub %e14, %e6, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x60,0xe6]
.code32
msub %e14, %e6, %d14, 1

# CHECK-INST: msub %e14, %e6, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x68,0xe6]
.code32
msub %e14, %e6, %d14, 128

# CHECK-INST: msub %e14, %e6, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x6f,0xe6]
.code32
msub %e14, %e6, %d14, 255

# CHECK-INST: msub %e14, %e6, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x70,0xe6]
.code32
msub %e14, %e6, %d15, -256

# CHECK-INST: msub %e14, %e6, %d15, -129
# CHECK: encoding: [0x33,0xff,0x77,0xe6]
.code32
msub %e14, %e6, %d15, -129

# CHECK-INST: msub %e14, %e6, %d15, -1
# CHECK: encoding: [0x33,0xff,0x7f,0xe6]
.code32
msub %e14, %e6, %d15, -1

# CHECK-INST: msub %e14, %e6, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x60,0xe6]
.code32
msub %e14, %e6, %d15, 0

# CHECK-INST: msub %e14, %e6, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x60,0xe6]
.code32
msub %e14, %e6, %d15, 1

# CHECK-INST: msub %e14, %e6, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x68,0xe6]
.code32
msub %e14, %e6, %d15, 128

# CHECK-INST: msub %e14, %e6, %d15, 255
# CHECK: encoding: [0x33,0xff,0x6f,0xe6]
.code32
msub %e14, %e6, %d15, 255

# CHECK-INST: msub %e14, %e14, %d0, -256
# CHECK: encoding: [0x33,0x00,0x70,0xee]
.code32
msub %e14, %e14, %d0, -256

# CHECK-INST: msub %e14, %e14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x77,0xee]
.code32
msub %e14, %e14, %d0, -129

# CHECK-INST: msub %e14, %e14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x7f,0xee]
.code32
msub %e14, %e14, %d0, -1

# CHECK-INST: msub %e14, %e14, %d0, 0
# CHECK: encoding: [0x33,0x00,0x60,0xee]
.code32
msub %e14, %e14, %d0, 0

# CHECK-INST: msub %e14, %e14, %d0, 1
# CHECK: encoding: [0x33,0x10,0x60,0xee]
.code32
msub %e14, %e14, %d0, 1

# CHECK-INST: msub %e14, %e14, %d0, 128
# CHECK: encoding: [0x33,0x00,0x68,0xee]
.code32
msub %e14, %e14, %d0, 128

# CHECK-INST: msub %e14, %e14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x6f,0xee]
.code32
msub %e14, %e14, %d0, 255

# CHECK-INST: msub %e14, %e14, %d1, -256
# CHECK: encoding: [0x33,0x01,0x70,0xee]
.code32
msub %e14, %e14, %d1, -256

# CHECK-INST: msub %e14, %e14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x77,0xee]
.code32
msub %e14, %e14, %d1, -129

# CHECK-INST: msub %e14, %e14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x7f,0xee]
.code32
msub %e14, %e14, %d1, -1

# CHECK-INST: msub %e14, %e14, %d1, 0
# CHECK: encoding: [0x33,0x01,0x60,0xee]
.code32
msub %e14, %e14, %d1, 0

# CHECK-INST: msub %e14, %e14, %d1, 1
# CHECK: encoding: [0x33,0x11,0x60,0xee]
.code32
msub %e14, %e14, %d1, 1

# CHECK-INST: msub %e14, %e14, %d1, 128
# CHECK: encoding: [0x33,0x01,0x68,0xee]
.code32
msub %e14, %e14, %d1, 128

# CHECK-INST: msub %e14, %e14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x6f,0xee]
.code32
msub %e14, %e14, %d1, 255

# CHECK-INST: msub %e14, %e14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x70,0xee]
.code32
msub %e14, %e14, %d14, -256

# CHECK-INST: msub %e14, %e14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x77,0xee]
.code32
msub %e14, %e14, %d14, -129

# CHECK-INST: msub %e14, %e14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x7f,0xee]
.code32
msub %e14, %e14, %d14, -1

# CHECK-INST: msub %e14, %e14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x60,0xee]
.code32
msub %e14, %e14, %d14, 0

# CHECK-INST: msub %e14, %e14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x60,0xee]
.code32
msub %e14, %e14, %d14, 1

# CHECK-INST: msub %e14, %e14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x68,0xee]
.code32
msub %e14, %e14, %d14, 128

# CHECK-INST: msub %e14, %e14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x6f,0xee]
.code32
msub %e14, %e14, %d14, 255

# CHECK-INST: msub %e14, %e14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x70,0xee]
.code32
msub %e14, %e14, %d15, -256

# CHECK-INST: msub %e14, %e14, %d15, -129
# CHECK: encoding: [0x33,0xff,0x77,0xee]
.code32
msub %e14, %e14, %d15, -129

# CHECK-INST: msub %e14, %e14, %d15, -1
# CHECK: encoding: [0x33,0xff,0x7f,0xee]
.code32
msub %e14, %e14, %d15, -1

# CHECK-INST: msub %e14, %e14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x60,0xee]
.code32
msub %e14, %e14, %d15, 0

# CHECK-INST: msub %e14, %e14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x60,0xee]
.code32
msub %e14, %e14, %d15, 1

# CHECK-INST: msub %e14, %e14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x68,0xee]
.code32
msub %e14, %e14, %d15, 128

# CHECK-INST: msub %e14, %e14, %d15, 255
# CHECK: encoding: [0x33,0xff,0x6f,0xee]
.code32
msub %e14, %e14, %d15, 255

# CHECK-INST: msub.u %e0, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x68,0x00]
.code32
msub.u %e0, %e0, %d0, %d0

# CHECK-INST: msub.u %e0, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x68,0x00]
.code32
msub.u %e0, %e0, %d0, %d1

# CHECK-INST: msub.u %e0, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x68,0x00]
.code32
msub.u %e0, %e0, %d0, %d14

# CHECK-INST: msub.u %e0, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x68,0x00]
.code32
msub.u %e0, %e0, %d0, %d15

# CHECK-INST: msub.u %e0, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x68,0x00]
.code32
msub.u %e0, %e0, %d1, %d0

# CHECK-INST: msub.u %e0, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x68,0x00]
.code32
msub.u %e0, %e0, %d1, %d1

# CHECK-INST: msub.u %e0, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x68,0x00]
.code32
msub.u %e0, %e0, %d1, %d14

# CHECK-INST: msub.u %e0, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x68,0x00]
.code32
msub.u %e0, %e0, %d1, %d15

# CHECK-INST: msub.u %e0, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x68,0x00]
.code32
msub.u %e0, %e0, %d14, %d0

# CHECK-INST: msub.u %e0, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x68,0x00]
.code32
msub.u %e0, %e0, %d14, %d1

# CHECK-INST: msub.u %e0, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x68,0x00]
.code32
msub.u %e0, %e0, %d14, %d14

# CHECK-INST: msub.u %e0, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x68,0x00]
.code32
msub.u %e0, %e0, %d14, %d15

# CHECK-INST: msub.u %e0, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x68,0x00]
.code32
msub.u %e0, %e0, %d15, %d0

# CHECK-INST: msub.u %e0, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x68,0x00]
.code32
msub.u %e0, %e0, %d15, %d1

# CHECK-INST: msub.u %e0, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x68,0x00]
.code32
msub.u %e0, %e0, %d15, %d14

# CHECK-INST: msub.u %e0, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x68,0x00]
.code32
msub.u %e0, %e0, %d15, %d15

# CHECK-INST: msub.u %e0, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x68,0x06]
.code32
msub.u %e0, %e6, %d0, %d0

# CHECK-INST: msub.u %e0, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x68,0x06]
.code32
msub.u %e0, %e6, %d0, %d1

# CHECK-INST: msub.u %e0, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x68,0x06]
.code32
msub.u %e0, %e6, %d0, %d14

# CHECK-INST: msub.u %e0, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x68,0x06]
.code32
msub.u %e0, %e6, %d0, %d15

# CHECK-INST: msub.u %e0, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x68,0x06]
.code32
msub.u %e0, %e6, %d1, %d0

# CHECK-INST: msub.u %e0, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x68,0x06]
.code32
msub.u %e0, %e6, %d1, %d1

# CHECK-INST: msub.u %e0, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x68,0x06]
.code32
msub.u %e0, %e6, %d1, %d14

# CHECK-INST: msub.u %e0, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x68,0x06]
.code32
msub.u %e0, %e6, %d1, %d15

# CHECK-INST: msub.u %e0, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x68,0x06]
.code32
msub.u %e0, %e6, %d14, %d0

# CHECK-INST: msub.u %e0, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x68,0x06]
.code32
msub.u %e0, %e6, %d14, %d1

# CHECK-INST: msub.u %e0, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x68,0x06]
.code32
msub.u %e0, %e6, %d14, %d14

# CHECK-INST: msub.u %e0, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x68,0x06]
.code32
msub.u %e0, %e6, %d14, %d15

# CHECK-INST: msub.u %e0, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x68,0x06]
.code32
msub.u %e0, %e6, %d15, %d0

# CHECK-INST: msub.u %e0, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x68,0x06]
.code32
msub.u %e0, %e6, %d15, %d1

# CHECK-INST: msub.u %e0, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x68,0x06]
.code32
msub.u %e0, %e6, %d15, %d14

# CHECK-INST: msub.u %e0, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x68,0x06]
.code32
msub.u %e0, %e6, %d15, %d15

# CHECK-INST: msub.u %e0, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x68,0x0e]
.code32
msub.u %e0, %e14, %d0, %d0

# CHECK-INST: msub.u %e0, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x68,0x0e]
.code32
msub.u %e0, %e14, %d0, %d1

# CHECK-INST: msub.u %e0, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x68,0x0e]
.code32
msub.u %e0, %e14, %d0, %d14

# CHECK-INST: msub.u %e0, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x68,0x0e]
.code32
msub.u %e0, %e14, %d0, %d15

# CHECK-INST: msub.u %e0, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x68,0x0e]
.code32
msub.u %e0, %e14, %d1, %d0

# CHECK-INST: msub.u %e0, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x68,0x0e]
.code32
msub.u %e0, %e14, %d1, %d1

# CHECK-INST: msub.u %e0, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x68,0x0e]
.code32
msub.u %e0, %e14, %d1, %d14

# CHECK-INST: msub.u %e0, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x68,0x0e]
.code32
msub.u %e0, %e14, %d1, %d15

# CHECK-INST: msub.u %e0, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x68,0x0e]
.code32
msub.u %e0, %e14, %d14, %d0

# CHECK-INST: msub.u %e0, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x68,0x0e]
.code32
msub.u %e0, %e14, %d14, %d1

# CHECK-INST: msub.u %e0, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x68,0x0e]
.code32
msub.u %e0, %e14, %d14, %d14

# CHECK-INST: msub.u %e0, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x68,0x0e]
.code32
msub.u %e0, %e14, %d14, %d15

# CHECK-INST: msub.u %e0, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x68,0x0e]
.code32
msub.u %e0, %e14, %d15, %d0

# CHECK-INST: msub.u %e0, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x68,0x0e]
.code32
msub.u %e0, %e14, %d15, %d1

# CHECK-INST: msub.u %e0, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x68,0x0e]
.code32
msub.u %e0, %e14, %d15, %d14

# CHECK-INST: msub.u %e0, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x68,0x0e]
.code32
msub.u %e0, %e14, %d15, %d15

# CHECK-INST: msub.u %e6, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x68,0x60]
.code32
msub.u %e6, %e0, %d0, %d0

# CHECK-INST: msub.u %e6, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x68,0x60]
.code32
msub.u %e6, %e0, %d0, %d1

# CHECK-INST: msub.u %e6, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x68,0x60]
.code32
msub.u %e6, %e0, %d0, %d14

# CHECK-INST: msub.u %e6, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x68,0x60]
.code32
msub.u %e6, %e0, %d0, %d15

# CHECK-INST: msub.u %e6, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x68,0x60]
.code32
msub.u %e6, %e0, %d1, %d0

# CHECK-INST: msub.u %e6, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x68,0x60]
.code32
msub.u %e6, %e0, %d1, %d1

# CHECK-INST: msub.u %e6, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x68,0x60]
.code32
msub.u %e6, %e0, %d1, %d14

# CHECK-INST: msub.u %e6, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x68,0x60]
.code32
msub.u %e6, %e0, %d1, %d15

# CHECK-INST: msub.u %e6, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x68,0x60]
.code32
msub.u %e6, %e0, %d14, %d0

# CHECK-INST: msub.u %e6, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x68,0x60]
.code32
msub.u %e6, %e0, %d14, %d1

# CHECK-INST: msub.u %e6, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x68,0x60]
.code32
msub.u %e6, %e0, %d14, %d14

# CHECK-INST: msub.u %e6, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x68,0x60]
.code32
msub.u %e6, %e0, %d14, %d15

# CHECK-INST: msub.u %e6, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x68,0x60]
.code32
msub.u %e6, %e0, %d15, %d0

# CHECK-INST: msub.u %e6, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x68,0x60]
.code32
msub.u %e6, %e0, %d15, %d1

# CHECK-INST: msub.u %e6, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x68,0x60]
.code32
msub.u %e6, %e0, %d15, %d14

# CHECK-INST: msub.u %e6, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x68,0x60]
.code32
msub.u %e6, %e0, %d15, %d15

# CHECK-INST: msub.u %e6, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x68,0x66]
.code32
msub.u %e6, %e6, %d0, %d0

# CHECK-INST: msub.u %e6, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x68,0x66]
.code32
msub.u %e6, %e6, %d0, %d1

# CHECK-INST: msub.u %e6, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x68,0x66]
.code32
msub.u %e6, %e6, %d0, %d14

# CHECK-INST: msub.u %e6, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x68,0x66]
.code32
msub.u %e6, %e6, %d0, %d15

# CHECK-INST: msub.u %e6, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x68,0x66]
.code32
msub.u %e6, %e6, %d1, %d0

# CHECK-INST: msub.u %e6, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x68,0x66]
.code32
msub.u %e6, %e6, %d1, %d1

# CHECK-INST: msub.u %e6, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x68,0x66]
.code32
msub.u %e6, %e6, %d1, %d14

# CHECK-INST: msub.u %e6, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x68,0x66]
.code32
msub.u %e6, %e6, %d1, %d15

# CHECK-INST: msub.u %e6, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x68,0x66]
.code32
msub.u %e6, %e6, %d14, %d0

# CHECK-INST: msub.u %e6, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x68,0x66]
.code32
msub.u %e6, %e6, %d14, %d1

# CHECK-INST: msub.u %e6, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x68,0x66]
.code32
msub.u %e6, %e6, %d14, %d14

# CHECK-INST: msub.u %e6, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x68,0x66]
.code32
msub.u %e6, %e6, %d14, %d15

# CHECK-INST: msub.u %e6, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x68,0x66]
.code32
msub.u %e6, %e6, %d15, %d0

# CHECK-INST: msub.u %e6, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x68,0x66]
.code32
msub.u %e6, %e6, %d15, %d1

# CHECK-INST: msub.u %e6, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x68,0x66]
.code32
msub.u %e6, %e6, %d15, %d14

# CHECK-INST: msub.u %e6, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x68,0x66]
.code32
msub.u %e6, %e6, %d15, %d15

# CHECK-INST: msub.u %e6, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x68,0x6e]
.code32
msub.u %e6, %e14, %d0, %d0

# CHECK-INST: msub.u %e6, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x68,0x6e]
.code32
msub.u %e6, %e14, %d0, %d1

# CHECK-INST: msub.u %e6, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x68,0x6e]
.code32
msub.u %e6, %e14, %d0, %d14

# CHECK-INST: msub.u %e6, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x68,0x6e]
.code32
msub.u %e6, %e14, %d0, %d15

# CHECK-INST: msub.u %e6, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x68,0x6e]
.code32
msub.u %e6, %e14, %d1, %d0

# CHECK-INST: msub.u %e6, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x68,0x6e]
.code32
msub.u %e6, %e14, %d1, %d1

# CHECK-INST: msub.u %e6, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x68,0x6e]
.code32
msub.u %e6, %e14, %d1, %d14

# CHECK-INST: msub.u %e6, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x68,0x6e]
.code32
msub.u %e6, %e14, %d1, %d15

# CHECK-INST: msub.u %e6, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x68,0x6e]
.code32
msub.u %e6, %e14, %d14, %d0

# CHECK-INST: msub.u %e6, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x68,0x6e]
.code32
msub.u %e6, %e14, %d14, %d1

# CHECK-INST: msub.u %e6, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x68,0x6e]
.code32
msub.u %e6, %e14, %d14, %d14

# CHECK-INST: msub.u %e6, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x68,0x6e]
.code32
msub.u %e6, %e14, %d14, %d15

# CHECK-INST: msub.u %e6, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x68,0x6e]
.code32
msub.u %e6, %e14, %d15, %d0

# CHECK-INST: msub.u %e6, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x68,0x6e]
.code32
msub.u %e6, %e14, %d15, %d1

# CHECK-INST: msub.u %e6, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x68,0x6e]
.code32
msub.u %e6, %e14, %d15, %d14

# CHECK-INST: msub.u %e6, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x68,0x6e]
.code32
msub.u %e6, %e14, %d15, %d15

# CHECK-INST: msub.u %e14, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x68,0xe0]
.code32
msub.u %e14, %e0, %d0, %d0

# CHECK-INST: msub.u %e14, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x68,0xe0]
.code32
msub.u %e14, %e0, %d0, %d1

# CHECK-INST: msub.u %e14, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x68,0xe0]
.code32
msub.u %e14, %e0, %d0, %d14

# CHECK-INST: msub.u %e14, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x68,0xe0]
.code32
msub.u %e14, %e0, %d0, %d15

# CHECK-INST: msub.u %e14, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x68,0xe0]
.code32
msub.u %e14, %e0, %d1, %d0

# CHECK-INST: msub.u %e14, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x68,0xe0]
.code32
msub.u %e14, %e0, %d1, %d1

# CHECK-INST: msub.u %e14, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x68,0xe0]
.code32
msub.u %e14, %e0, %d1, %d14

# CHECK-INST: msub.u %e14, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x68,0xe0]
.code32
msub.u %e14, %e0, %d1, %d15

# CHECK-INST: msub.u %e14, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x68,0xe0]
.code32
msub.u %e14, %e0, %d14, %d0

# CHECK-INST: msub.u %e14, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x68,0xe0]
.code32
msub.u %e14, %e0, %d14, %d1

# CHECK-INST: msub.u %e14, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x68,0xe0]
.code32
msub.u %e14, %e0, %d14, %d14

# CHECK-INST: msub.u %e14, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x68,0xe0]
.code32
msub.u %e14, %e0, %d14, %d15

# CHECK-INST: msub.u %e14, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x68,0xe0]
.code32
msub.u %e14, %e0, %d15, %d0

# CHECK-INST: msub.u %e14, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x68,0xe0]
.code32
msub.u %e14, %e0, %d15, %d1

# CHECK-INST: msub.u %e14, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x68,0xe0]
.code32
msub.u %e14, %e0, %d15, %d14

# CHECK-INST: msub.u %e14, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x68,0xe0]
.code32
msub.u %e14, %e0, %d15, %d15

# CHECK-INST: msub.u %e14, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x68,0xe6]
.code32
msub.u %e14, %e6, %d0, %d0

# CHECK-INST: msub.u %e14, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x68,0xe6]
.code32
msub.u %e14, %e6, %d0, %d1

# CHECK-INST: msub.u %e14, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x68,0xe6]
.code32
msub.u %e14, %e6, %d0, %d14

# CHECK-INST: msub.u %e14, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x68,0xe6]
.code32
msub.u %e14, %e6, %d0, %d15

# CHECK-INST: msub.u %e14, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x68,0xe6]
.code32
msub.u %e14, %e6, %d1, %d0

# CHECK-INST: msub.u %e14, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x68,0xe6]
.code32
msub.u %e14, %e6, %d1, %d1

# CHECK-INST: msub.u %e14, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x68,0xe6]
.code32
msub.u %e14, %e6, %d1, %d14

# CHECK-INST: msub.u %e14, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x68,0xe6]
.code32
msub.u %e14, %e6, %d1, %d15

# CHECK-INST: msub.u %e14, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x68,0xe6]
.code32
msub.u %e14, %e6, %d14, %d0

# CHECK-INST: msub.u %e14, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x68,0xe6]
.code32
msub.u %e14, %e6, %d14, %d1

# CHECK-INST: msub.u %e14, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x68,0xe6]
.code32
msub.u %e14, %e6, %d14, %d14

# CHECK-INST: msub.u %e14, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x68,0xe6]
.code32
msub.u %e14, %e6, %d14, %d15

# CHECK-INST: msub.u %e14, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x68,0xe6]
.code32
msub.u %e14, %e6, %d15, %d0

# CHECK-INST: msub.u %e14, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x68,0xe6]
.code32
msub.u %e14, %e6, %d15, %d1

# CHECK-INST: msub.u %e14, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x68,0xe6]
.code32
msub.u %e14, %e6, %d15, %d14

# CHECK-INST: msub.u %e14, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x68,0xe6]
.code32
msub.u %e14, %e6, %d15, %d15

# CHECK-INST: msub.u %e14, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x68,0xee]
.code32
msub.u %e14, %e14, %d0, %d0

# CHECK-INST: msub.u %e14, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x68,0xee]
.code32
msub.u %e14, %e14, %d0, %d1

# CHECK-INST: msub.u %e14, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x68,0xee]
.code32
msub.u %e14, %e14, %d0, %d14

# CHECK-INST: msub.u %e14, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x68,0xee]
.code32
msub.u %e14, %e14, %d0, %d15

# CHECK-INST: msub.u %e14, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x68,0xee]
.code32
msub.u %e14, %e14, %d1, %d0

# CHECK-INST: msub.u %e14, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x68,0xee]
.code32
msub.u %e14, %e14, %d1, %d1

# CHECK-INST: msub.u %e14, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x68,0xee]
.code32
msub.u %e14, %e14, %d1, %d14

# CHECK-INST: msub.u %e14, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x68,0xee]
.code32
msub.u %e14, %e14, %d1, %d15

# CHECK-INST: msub.u %e14, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x68,0xee]
.code32
msub.u %e14, %e14, %d14, %d0

# CHECK-INST: msub.u %e14, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x68,0xee]
.code32
msub.u %e14, %e14, %d14, %d1

# CHECK-INST: msub.u %e14, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x68,0xee]
.code32
msub.u %e14, %e14, %d14, %d14

# CHECK-INST: msub.u %e14, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x68,0xee]
.code32
msub.u %e14, %e14, %d14, %d15

# CHECK-INST: msub.u %e14, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x68,0xee]
.code32
msub.u %e14, %e14, %d15, %d0

# CHECK-INST: msub.u %e14, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x68,0xee]
.code32
msub.u %e14, %e14, %d15, %d1

# CHECK-INST: msub.u %e14, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x68,0xee]
.code32
msub.u %e14, %e14, %d15, %d14

# CHECK-INST: msub.u %e14, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x68,0xee]
.code32
msub.u %e14, %e14, %d15, %d15

# CHECK-INST: msub.u %e0, %e0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x50,0x00]
.code32
msub.u %e0, %e0, %d0, 271

# CHECK-INST: msub.u %e0, %e0, %d0, 496
# CHECK: encoding: [0x33,0x00,0x5f,0x00]
.code32
msub.u %e0, %e0, %d0, 496

# CHECK-INST: msub.u %e0, %e0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x5f,0x00]
.code32
msub.u %e0, %e0, %d0, 511

# CHECK-INST: msub.u %e0, %e0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x50,0x00]
.code32
msub.u %e0, %e0, %d1, 271

# CHECK-INST: msub.u %e0, %e0, %d1, 496
# CHECK: encoding: [0x33,0x01,0x5f,0x00]
.code32
msub.u %e0, %e0, %d1, 496

# CHECK-INST: msub.u %e0, %e0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x5f,0x00]
.code32
msub.u %e0, %e0, %d1, 511

# CHECK-INST: msub.u %e0, %e0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x50,0x00]
.code32
msub.u %e0, %e0, %d14, 271

# CHECK-INST: msub.u %e0, %e0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x5f,0x00]
.code32
msub.u %e0, %e0, %d14, 496

# CHECK-INST: msub.u %e0, %e0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x5f,0x00]
.code32
msub.u %e0, %e0, %d14, 511

# CHECK-INST: msub.u %e0, %e0, %d15, 271
# CHECK: encoding: [0x33,0xff,0x50,0x00]
.code32
msub.u %e0, %e0, %d15, 271

# CHECK-INST: msub.u %e0, %e0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x5f,0x00]
.code32
msub.u %e0, %e0, %d15, 496

# CHECK-INST: msub.u %e0, %e0, %d15, 511
# CHECK: encoding: [0x33,0xff,0x5f,0x00]
.code32
msub.u %e0, %e0, %d15, 511

# CHECK-INST: msub.u %e0, %e6, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x50,0x06]
.code32
msub.u %e0, %e6, %d0, 271

# CHECK-INST: msub.u %e0, %e6, %d0, 496
# CHECK: encoding: [0x33,0x00,0x5f,0x06]
.code32
msub.u %e0, %e6, %d0, 496

# CHECK-INST: msub.u %e0, %e6, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x5f,0x06]
.code32
msub.u %e0, %e6, %d0, 511

# CHECK-INST: msub.u %e0, %e6, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x50,0x06]
.code32
msub.u %e0, %e6, %d1, 271

# CHECK-INST: msub.u %e0, %e6, %d1, 496
# CHECK: encoding: [0x33,0x01,0x5f,0x06]
.code32
msub.u %e0, %e6, %d1, 496

# CHECK-INST: msub.u %e0, %e6, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x5f,0x06]
.code32
msub.u %e0, %e6, %d1, 511

# CHECK-INST: msub.u %e0, %e6, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x50,0x06]
.code32
msub.u %e0, %e6, %d14, 271

# CHECK-INST: msub.u %e0, %e6, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x5f,0x06]
.code32
msub.u %e0, %e6, %d14, 496

# CHECK-INST: msub.u %e0, %e6, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x5f,0x06]
.code32
msub.u %e0, %e6, %d14, 511

# CHECK-INST: msub.u %e0, %e6, %d15, 271
# CHECK: encoding: [0x33,0xff,0x50,0x06]
.code32
msub.u %e0, %e6, %d15, 271

# CHECK-INST: msub.u %e0, %e6, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x5f,0x06]
.code32
msub.u %e0, %e6, %d15, 496

# CHECK-INST: msub.u %e0, %e6, %d15, 511
# CHECK: encoding: [0x33,0xff,0x5f,0x06]
.code32
msub.u %e0, %e6, %d15, 511

# CHECK-INST: msub.u %e0, %e14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x50,0x0e]
.code32
msub.u %e0, %e14, %d0, 271

# CHECK-INST: msub.u %e0, %e14, %d0, 496
# CHECK: encoding: [0x33,0x00,0x5f,0x0e]
.code32
msub.u %e0, %e14, %d0, 496

# CHECK-INST: msub.u %e0, %e14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x5f,0x0e]
.code32
msub.u %e0, %e14, %d0, 511

# CHECK-INST: msub.u %e0, %e14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x50,0x0e]
.code32
msub.u %e0, %e14, %d1, 271

# CHECK-INST: msub.u %e0, %e14, %d1, 496
# CHECK: encoding: [0x33,0x01,0x5f,0x0e]
.code32
msub.u %e0, %e14, %d1, 496

# CHECK-INST: msub.u %e0, %e14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x5f,0x0e]
.code32
msub.u %e0, %e14, %d1, 511

# CHECK-INST: msub.u %e0, %e14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x50,0x0e]
.code32
msub.u %e0, %e14, %d14, 271

# CHECK-INST: msub.u %e0, %e14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x5f,0x0e]
.code32
msub.u %e0, %e14, %d14, 496

# CHECK-INST: msub.u %e0, %e14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x5f,0x0e]
.code32
msub.u %e0, %e14, %d14, 511

# CHECK-INST: msub.u %e0, %e14, %d15, 271
# CHECK: encoding: [0x33,0xff,0x50,0x0e]
.code32
msub.u %e0, %e14, %d15, 271

# CHECK-INST: msub.u %e0, %e14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x5f,0x0e]
.code32
msub.u %e0, %e14, %d15, 496

# CHECK-INST: msub.u %e0, %e14, %d15, 511
# CHECK: encoding: [0x33,0xff,0x5f,0x0e]
.code32
msub.u %e0, %e14, %d15, 511

# CHECK-INST: msub.u %e6, %e0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x50,0x60]
.code32
msub.u %e6, %e0, %d0, 271

# CHECK-INST: msub.u %e6, %e0, %d0, 496
# CHECK: encoding: [0x33,0x00,0x5f,0x60]
.code32
msub.u %e6, %e0, %d0, 496

# CHECK-INST: msub.u %e6, %e0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x5f,0x60]
.code32
msub.u %e6, %e0, %d0, 511

# CHECK-INST: msub.u %e6, %e0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x50,0x60]
.code32
msub.u %e6, %e0, %d1, 271

# CHECK-INST: msub.u %e6, %e0, %d1, 496
# CHECK: encoding: [0x33,0x01,0x5f,0x60]
.code32
msub.u %e6, %e0, %d1, 496

# CHECK-INST: msub.u %e6, %e0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x5f,0x60]
.code32
msub.u %e6, %e0, %d1, 511

# CHECK-INST: msub.u %e6, %e0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x50,0x60]
.code32
msub.u %e6, %e0, %d14, 271

# CHECK-INST: msub.u %e6, %e0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x5f,0x60]
.code32
msub.u %e6, %e0, %d14, 496

# CHECK-INST: msub.u %e6, %e0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x5f,0x60]
.code32
msub.u %e6, %e0, %d14, 511

# CHECK-INST: msub.u %e6, %e0, %d15, 271
# CHECK: encoding: [0x33,0xff,0x50,0x60]
.code32
msub.u %e6, %e0, %d15, 271

# CHECK-INST: msub.u %e6, %e0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x5f,0x60]
.code32
msub.u %e6, %e0, %d15, 496

# CHECK-INST: msub.u %e6, %e0, %d15, 511
# CHECK: encoding: [0x33,0xff,0x5f,0x60]
.code32
msub.u %e6, %e0, %d15, 511

# CHECK-INST: msub.u %e6, %e6, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x50,0x66]
.code32
msub.u %e6, %e6, %d0, 271

# CHECK-INST: msub.u %e6, %e6, %d0, 496
# CHECK: encoding: [0x33,0x00,0x5f,0x66]
.code32
msub.u %e6, %e6, %d0, 496

# CHECK-INST: msub.u %e6, %e6, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x5f,0x66]
.code32
msub.u %e6, %e6, %d0, 511

# CHECK-INST: msub.u %e6, %e6, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x50,0x66]
.code32
msub.u %e6, %e6, %d1, 271

# CHECK-INST: msub.u %e6, %e6, %d1, 496
# CHECK: encoding: [0x33,0x01,0x5f,0x66]
.code32
msub.u %e6, %e6, %d1, 496

# CHECK-INST: msub.u %e6, %e6, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x5f,0x66]
.code32
msub.u %e6, %e6, %d1, 511

# CHECK-INST: msub.u %e6, %e6, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x50,0x66]
.code32
msub.u %e6, %e6, %d14, 271

# CHECK-INST: msub.u %e6, %e6, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x5f,0x66]
.code32
msub.u %e6, %e6, %d14, 496

# CHECK-INST: msub.u %e6, %e6, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x5f,0x66]
.code32
msub.u %e6, %e6, %d14, 511

# CHECK-INST: msub.u %e6, %e6, %d15, 271
# CHECK: encoding: [0x33,0xff,0x50,0x66]
.code32
msub.u %e6, %e6, %d15, 271

# CHECK-INST: msub.u %e6, %e6, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x5f,0x66]
.code32
msub.u %e6, %e6, %d15, 496

# CHECK-INST: msub.u %e6, %e6, %d15, 511
# CHECK: encoding: [0x33,0xff,0x5f,0x66]
.code32
msub.u %e6, %e6, %d15, 511

# CHECK-INST: msub.u %e6, %e14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x50,0x6e]
.code32
msub.u %e6, %e14, %d0, 271

# CHECK-INST: msub.u %e6, %e14, %d0, 496
# CHECK: encoding: [0x33,0x00,0x5f,0x6e]
.code32
msub.u %e6, %e14, %d0, 496

# CHECK-INST: msub.u %e6, %e14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x5f,0x6e]
.code32
msub.u %e6, %e14, %d0, 511

# CHECK-INST: msub.u %e6, %e14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x50,0x6e]
.code32
msub.u %e6, %e14, %d1, 271

# CHECK-INST: msub.u %e6, %e14, %d1, 496
# CHECK: encoding: [0x33,0x01,0x5f,0x6e]
.code32
msub.u %e6, %e14, %d1, 496

# CHECK-INST: msub.u %e6, %e14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x5f,0x6e]
.code32
msub.u %e6, %e14, %d1, 511

# CHECK-INST: msub.u %e6, %e14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x50,0x6e]
.code32
msub.u %e6, %e14, %d14, 271

# CHECK-INST: msub.u %e6, %e14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x5f,0x6e]
.code32
msub.u %e6, %e14, %d14, 496

# CHECK-INST: msub.u %e6, %e14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x5f,0x6e]
.code32
msub.u %e6, %e14, %d14, 511

# CHECK-INST: msub.u %e6, %e14, %d15, 271
# CHECK: encoding: [0x33,0xff,0x50,0x6e]
.code32
msub.u %e6, %e14, %d15, 271

# CHECK-INST: msub.u %e6, %e14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x5f,0x6e]
.code32
msub.u %e6, %e14, %d15, 496

# CHECK-INST: msub.u %e6, %e14, %d15, 511
# CHECK: encoding: [0x33,0xff,0x5f,0x6e]
.code32
msub.u %e6, %e14, %d15, 511

# CHECK-INST: msub.u %e14, %e0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x50,0xe0]
.code32
msub.u %e14, %e0, %d0, 271

# CHECK-INST: msub.u %e14, %e0, %d0, 496
# CHECK: encoding: [0x33,0x00,0x5f,0xe0]
.code32
msub.u %e14, %e0, %d0, 496

# CHECK-INST: msub.u %e14, %e0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x5f,0xe0]
.code32
msub.u %e14, %e0, %d0, 511

# CHECK-INST: msub.u %e14, %e0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x50,0xe0]
.code32
msub.u %e14, %e0, %d1, 271

# CHECK-INST: msub.u %e14, %e0, %d1, 496
# CHECK: encoding: [0x33,0x01,0x5f,0xe0]
.code32
msub.u %e14, %e0, %d1, 496

# CHECK-INST: msub.u %e14, %e0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x5f,0xe0]
.code32
msub.u %e14, %e0, %d1, 511

# CHECK-INST: msub.u %e14, %e0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x50,0xe0]
.code32
msub.u %e14, %e0, %d14, 271

# CHECK-INST: msub.u %e14, %e0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x5f,0xe0]
.code32
msub.u %e14, %e0, %d14, 496

# CHECK-INST: msub.u %e14, %e0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x5f,0xe0]
.code32
msub.u %e14, %e0, %d14, 511

# CHECK-INST: msub.u %e14, %e0, %d15, 271
# CHECK: encoding: [0x33,0xff,0x50,0xe0]
.code32
msub.u %e14, %e0, %d15, 271

# CHECK-INST: msub.u %e14, %e0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x5f,0xe0]
.code32
msub.u %e14, %e0, %d15, 496

# CHECK-INST: msub.u %e14, %e0, %d15, 511
# CHECK: encoding: [0x33,0xff,0x5f,0xe0]
.code32
msub.u %e14, %e0, %d15, 511

# CHECK-INST: msub.u %e14, %e6, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x50,0xe6]
.code32
msub.u %e14, %e6, %d0, 271

# CHECK-INST: msub.u %e14, %e6, %d0, 496
# CHECK: encoding: [0x33,0x00,0x5f,0xe6]
.code32
msub.u %e14, %e6, %d0, 496

# CHECK-INST: msub.u %e14, %e6, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x5f,0xe6]
.code32
msub.u %e14, %e6, %d0, 511

# CHECK-INST: msub.u %e14, %e6, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x50,0xe6]
.code32
msub.u %e14, %e6, %d1, 271

# CHECK-INST: msub.u %e14, %e6, %d1, 496
# CHECK: encoding: [0x33,0x01,0x5f,0xe6]
.code32
msub.u %e14, %e6, %d1, 496

# CHECK-INST: msub.u %e14, %e6, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x5f,0xe6]
.code32
msub.u %e14, %e6, %d1, 511

# CHECK-INST: msub.u %e14, %e6, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x50,0xe6]
.code32
msub.u %e14, %e6, %d14, 271

# CHECK-INST: msub.u %e14, %e6, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x5f,0xe6]
.code32
msub.u %e14, %e6, %d14, 496

# CHECK-INST: msub.u %e14, %e6, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x5f,0xe6]
.code32
msub.u %e14, %e6, %d14, 511

# CHECK-INST: msub.u %e14, %e6, %d15, 271
# CHECK: encoding: [0x33,0xff,0x50,0xe6]
.code32
msub.u %e14, %e6, %d15, 271

# CHECK-INST: msub.u %e14, %e6, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x5f,0xe6]
.code32
msub.u %e14, %e6, %d15, 496

# CHECK-INST: msub.u %e14, %e6, %d15, 511
# CHECK: encoding: [0x33,0xff,0x5f,0xe6]
.code32
msub.u %e14, %e6, %d15, 511

# CHECK-INST: msub.u %e14, %e14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x50,0xee]
.code32
msub.u %e14, %e14, %d0, 271

# CHECK-INST: msub.u %e14, %e14, %d0, 496
# CHECK: encoding: [0x33,0x00,0x5f,0xee]
.code32
msub.u %e14, %e14, %d0, 496

# CHECK-INST: msub.u %e14, %e14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x5f,0xee]
.code32
msub.u %e14, %e14, %d0, 511

# CHECK-INST: msub.u %e14, %e14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x50,0xee]
.code32
msub.u %e14, %e14, %d1, 271

# CHECK-INST: msub.u %e14, %e14, %d1, 496
# CHECK: encoding: [0x33,0x01,0x5f,0xee]
.code32
msub.u %e14, %e14, %d1, 496

# CHECK-INST: msub.u %e14, %e14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x5f,0xee]
.code32
msub.u %e14, %e14, %d1, 511

# CHECK-INST: msub.u %e14, %e14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x50,0xee]
.code32
msub.u %e14, %e14, %d14, 271

# CHECK-INST: msub.u %e14, %e14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x5f,0xee]
.code32
msub.u %e14, %e14, %d14, 496

# CHECK-INST: msub.u %e14, %e14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x5f,0xee]
.code32
msub.u %e14, %e14, %d14, 511

# CHECK-INST: msub.u %e14, %e14, %d15, 271
# CHECK: encoding: [0x33,0xff,0x50,0xee]
.code32
msub.u %e14, %e14, %d15, 271

# CHECK-INST: msub.u %e14, %e14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x5f,0xee]
.code32
msub.u %e14, %e14, %d15, 496

# CHECK-INST: msub.u %e14, %e14, %d15, 511
# CHECK: encoding: [0x33,0xff,0x5f,0xee]
.code32
msub.u %e14, %e14, %d15, 511

# CHECK-INST: msubs %d0, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0x00]
.code32
msubs %d0, %d0, %d0, %d0

# CHECK-INST: msubs %d0, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0x00]
.code32
msubs %d0, %d0, %d0, %d1

# CHECK-INST: msubs %d0, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0x00]
.code32
msubs %d0, %d0, %d0, %d14

# CHECK-INST: msubs %d0, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0x00]
.code32
msubs %d0, %d0, %d0, %d15

# CHECK-INST: msubs %d0, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0x00]
.code32
msubs %d0, %d0, %d1, %d0

# CHECK-INST: msubs %d0, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0x00]
.code32
msubs %d0, %d0, %d1, %d1

# CHECK-INST: msubs %d0, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0x00]
.code32
msubs %d0, %d0, %d1, %d14

# CHECK-INST: msubs %d0, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0x00]
.code32
msubs %d0, %d0, %d1, %d15

# CHECK-INST: msubs %d0, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0x00]
.code32
msubs %d0, %d0, %d14, %d0

# CHECK-INST: msubs %d0, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0x00]
.code32
msubs %d0, %d0, %d14, %d1

# CHECK-INST: msubs %d0, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0x00]
.code32
msubs %d0, %d0, %d14, %d14

# CHECK-INST: msubs %d0, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0x00]
.code32
msubs %d0, %d0, %d14, %d15

# CHECK-INST: msubs %d0, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0x00]
.code32
msubs %d0, %d0, %d15, %d0

# CHECK-INST: msubs %d0, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0x00]
.code32
msubs %d0, %d0, %d15, %d1

# CHECK-INST: msubs %d0, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0x00]
.code32
msubs %d0, %d0, %d15, %d14

# CHECK-INST: msubs %d0, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0x00]
.code32
msubs %d0, %d0, %d15, %d15

# CHECK-INST: msubs %d0, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0x01]
.code32
msubs %d0, %d1, %d0, %d0

# CHECK-INST: msubs %d0, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0x01]
.code32
msubs %d0, %d1, %d0, %d1

# CHECK-INST: msubs %d0, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0x01]
.code32
msubs %d0, %d1, %d0, %d14

# CHECK-INST: msubs %d0, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0x01]
.code32
msubs %d0, %d1, %d0, %d15

# CHECK-INST: msubs %d0, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0x01]
.code32
msubs %d0, %d1, %d1, %d0

# CHECK-INST: msubs %d0, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0x01]
.code32
msubs %d0, %d1, %d1, %d1

# CHECK-INST: msubs %d0, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0x01]
.code32
msubs %d0, %d1, %d1, %d14

# CHECK-INST: msubs %d0, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0x01]
.code32
msubs %d0, %d1, %d1, %d15

# CHECK-INST: msubs %d0, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0x01]
.code32
msubs %d0, %d1, %d14, %d0

# CHECK-INST: msubs %d0, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0x01]
.code32
msubs %d0, %d1, %d14, %d1

# CHECK-INST: msubs %d0, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0x01]
.code32
msubs %d0, %d1, %d14, %d14

# CHECK-INST: msubs %d0, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0x01]
.code32
msubs %d0, %d1, %d14, %d15

# CHECK-INST: msubs %d0, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0x01]
.code32
msubs %d0, %d1, %d15, %d0

# CHECK-INST: msubs %d0, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0x01]
.code32
msubs %d0, %d1, %d15, %d1

# CHECK-INST: msubs %d0, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0x01]
.code32
msubs %d0, %d1, %d15, %d14

# CHECK-INST: msubs %d0, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0x01]
.code32
msubs %d0, %d1, %d15, %d15

# CHECK-INST: msubs %d0, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0x0e]
.code32
msubs %d0, %d14, %d0, %d0

# CHECK-INST: msubs %d0, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0x0e]
.code32
msubs %d0, %d14, %d0, %d1

# CHECK-INST: msubs %d0, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0x0e]
.code32
msubs %d0, %d14, %d0, %d14

# CHECK-INST: msubs %d0, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0x0e]
.code32
msubs %d0, %d14, %d0, %d15

# CHECK-INST: msubs %d0, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0x0e]
.code32
msubs %d0, %d14, %d1, %d0

# CHECK-INST: msubs %d0, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0x0e]
.code32
msubs %d0, %d14, %d1, %d1

# CHECK-INST: msubs %d0, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0x0e]
.code32
msubs %d0, %d14, %d1, %d14

# CHECK-INST: msubs %d0, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0x0e]
.code32
msubs %d0, %d14, %d1, %d15

# CHECK-INST: msubs %d0, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0x0e]
.code32
msubs %d0, %d14, %d14, %d0

# CHECK-INST: msubs %d0, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0x0e]
.code32
msubs %d0, %d14, %d14, %d1

# CHECK-INST: msubs %d0, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0x0e]
.code32
msubs %d0, %d14, %d14, %d14

# CHECK-INST: msubs %d0, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0x0e]
.code32
msubs %d0, %d14, %d14, %d15

# CHECK-INST: msubs %d0, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0x0e]
.code32
msubs %d0, %d14, %d15, %d0

# CHECK-INST: msubs %d0, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0x0e]
.code32
msubs %d0, %d14, %d15, %d1

# CHECK-INST: msubs %d0, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0x0e]
.code32
msubs %d0, %d14, %d15, %d14

# CHECK-INST: msubs %d0, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0x0e]
.code32
msubs %d0, %d14, %d15, %d15

# CHECK-INST: msubs %d0, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0x0f]
.code32
msubs %d0, %d15, %d0, %d0

# CHECK-INST: msubs %d0, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0x0f]
.code32
msubs %d0, %d15, %d0, %d1

# CHECK-INST: msubs %d0, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0x0f]
.code32
msubs %d0, %d15, %d0, %d14

# CHECK-INST: msubs %d0, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0x0f]
.code32
msubs %d0, %d15, %d0, %d15

# CHECK-INST: msubs %d0, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0x0f]
.code32
msubs %d0, %d15, %d1, %d0

# CHECK-INST: msubs %d0, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0x0f]
.code32
msubs %d0, %d15, %d1, %d1

# CHECK-INST: msubs %d0, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0x0f]
.code32
msubs %d0, %d15, %d1, %d14

# CHECK-INST: msubs %d0, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0x0f]
.code32
msubs %d0, %d15, %d1, %d15

# CHECK-INST: msubs %d0, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0x0f]
.code32
msubs %d0, %d15, %d14, %d0

# CHECK-INST: msubs %d0, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0x0f]
.code32
msubs %d0, %d15, %d14, %d1

# CHECK-INST: msubs %d0, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0x0f]
.code32
msubs %d0, %d15, %d14, %d14

# CHECK-INST: msubs %d0, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0x0f]
.code32
msubs %d0, %d15, %d14, %d15

# CHECK-INST: msubs %d0, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0x0f]
.code32
msubs %d0, %d15, %d15, %d0

# CHECK-INST: msubs %d0, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0x0f]
.code32
msubs %d0, %d15, %d15, %d1

# CHECK-INST: msubs %d0, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0x0f]
.code32
msubs %d0, %d15, %d15, %d14

# CHECK-INST: msubs %d0, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0x0f]
.code32
msubs %d0, %d15, %d15, %d15

# CHECK-INST: msubs %d1, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0x10]
.code32
msubs %d1, %d0, %d0, %d0

# CHECK-INST: msubs %d1, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0x10]
.code32
msubs %d1, %d0, %d0, %d1

# CHECK-INST: msubs %d1, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0x10]
.code32
msubs %d1, %d0, %d0, %d14

# CHECK-INST: msubs %d1, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0x10]
.code32
msubs %d1, %d0, %d0, %d15

# CHECK-INST: msubs %d1, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0x10]
.code32
msubs %d1, %d0, %d1, %d0

# CHECK-INST: msubs %d1, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0x10]
.code32
msubs %d1, %d0, %d1, %d1

# CHECK-INST: msubs %d1, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0x10]
.code32
msubs %d1, %d0, %d1, %d14

# CHECK-INST: msubs %d1, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0x10]
.code32
msubs %d1, %d0, %d1, %d15

# CHECK-INST: msubs %d1, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0x10]
.code32
msubs %d1, %d0, %d14, %d0

# CHECK-INST: msubs %d1, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0x10]
.code32
msubs %d1, %d0, %d14, %d1

# CHECK-INST: msubs %d1, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0x10]
.code32
msubs %d1, %d0, %d14, %d14

# CHECK-INST: msubs %d1, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0x10]
.code32
msubs %d1, %d0, %d14, %d15

# CHECK-INST: msubs %d1, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0x10]
.code32
msubs %d1, %d0, %d15, %d0

# CHECK-INST: msubs %d1, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0x10]
.code32
msubs %d1, %d0, %d15, %d1

# CHECK-INST: msubs %d1, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0x10]
.code32
msubs %d1, %d0, %d15, %d14

# CHECK-INST: msubs %d1, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0x10]
.code32
msubs %d1, %d0, %d15, %d15

# CHECK-INST: msubs %d1, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0x11]
.code32
msubs %d1, %d1, %d0, %d0

# CHECK-INST: msubs %d1, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0x11]
.code32
msubs %d1, %d1, %d0, %d1

# CHECK-INST: msubs %d1, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0x11]
.code32
msubs %d1, %d1, %d0, %d14

# CHECK-INST: msubs %d1, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0x11]
.code32
msubs %d1, %d1, %d0, %d15

# CHECK-INST: msubs %d1, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0x11]
.code32
msubs %d1, %d1, %d1, %d0

# CHECK-INST: msubs %d1, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0x11]
.code32
msubs %d1, %d1, %d1, %d1

# CHECK-INST: msubs %d1, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0x11]
.code32
msubs %d1, %d1, %d1, %d14

# CHECK-INST: msubs %d1, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0x11]
.code32
msubs %d1, %d1, %d1, %d15

# CHECK-INST: msubs %d1, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0x11]
.code32
msubs %d1, %d1, %d14, %d0

# CHECK-INST: msubs %d1, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0x11]
.code32
msubs %d1, %d1, %d14, %d1

# CHECK-INST: msubs %d1, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0x11]
.code32
msubs %d1, %d1, %d14, %d14

# CHECK-INST: msubs %d1, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0x11]
.code32
msubs %d1, %d1, %d14, %d15

# CHECK-INST: msubs %d1, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0x11]
.code32
msubs %d1, %d1, %d15, %d0

# CHECK-INST: msubs %d1, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0x11]
.code32
msubs %d1, %d1, %d15, %d1

# CHECK-INST: msubs %d1, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0x11]
.code32
msubs %d1, %d1, %d15, %d14

# CHECK-INST: msubs %d1, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0x11]
.code32
msubs %d1, %d1, %d15, %d15

# CHECK-INST: msubs %d1, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0x1e]
.code32
msubs %d1, %d14, %d0, %d0

# CHECK-INST: msubs %d1, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0x1e]
.code32
msubs %d1, %d14, %d0, %d1

# CHECK-INST: msubs %d1, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0x1e]
.code32
msubs %d1, %d14, %d0, %d14

# CHECK-INST: msubs %d1, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0x1e]
.code32
msubs %d1, %d14, %d0, %d15

# CHECK-INST: msubs %d1, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0x1e]
.code32
msubs %d1, %d14, %d1, %d0

# CHECK-INST: msubs %d1, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0x1e]
.code32
msubs %d1, %d14, %d1, %d1

# CHECK-INST: msubs %d1, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0x1e]
.code32
msubs %d1, %d14, %d1, %d14

# CHECK-INST: msubs %d1, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0x1e]
.code32
msubs %d1, %d14, %d1, %d15

# CHECK-INST: msubs %d1, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0x1e]
.code32
msubs %d1, %d14, %d14, %d0

# CHECK-INST: msubs %d1, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0x1e]
.code32
msubs %d1, %d14, %d14, %d1

# CHECK-INST: msubs %d1, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0x1e]
.code32
msubs %d1, %d14, %d14, %d14

# CHECK-INST: msubs %d1, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0x1e]
.code32
msubs %d1, %d14, %d14, %d15

# CHECK-INST: msubs %d1, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0x1e]
.code32
msubs %d1, %d14, %d15, %d0

# CHECK-INST: msubs %d1, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0x1e]
.code32
msubs %d1, %d14, %d15, %d1

# CHECK-INST: msubs %d1, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0x1e]
.code32
msubs %d1, %d14, %d15, %d14

# CHECK-INST: msubs %d1, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0x1e]
.code32
msubs %d1, %d14, %d15, %d15

# CHECK-INST: msubs %d1, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0x1f]
.code32
msubs %d1, %d15, %d0, %d0

# CHECK-INST: msubs %d1, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0x1f]
.code32
msubs %d1, %d15, %d0, %d1

# CHECK-INST: msubs %d1, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0x1f]
.code32
msubs %d1, %d15, %d0, %d14

# CHECK-INST: msubs %d1, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0x1f]
.code32
msubs %d1, %d15, %d0, %d15

# CHECK-INST: msubs %d1, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0x1f]
.code32
msubs %d1, %d15, %d1, %d0

# CHECK-INST: msubs %d1, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0x1f]
.code32
msubs %d1, %d15, %d1, %d1

# CHECK-INST: msubs %d1, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0x1f]
.code32
msubs %d1, %d15, %d1, %d14

# CHECK-INST: msubs %d1, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0x1f]
.code32
msubs %d1, %d15, %d1, %d15

# CHECK-INST: msubs %d1, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0x1f]
.code32
msubs %d1, %d15, %d14, %d0

# CHECK-INST: msubs %d1, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0x1f]
.code32
msubs %d1, %d15, %d14, %d1

# CHECK-INST: msubs %d1, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0x1f]
.code32
msubs %d1, %d15, %d14, %d14

# CHECK-INST: msubs %d1, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0x1f]
.code32
msubs %d1, %d15, %d14, %d15

# CHECK-INST: msubs %d1, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0x1f]
.code32
msubs %d1, %d15, %d15, %d0

# CHECK-INST: msubs %d1, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0x1f]
.code32
msubs %d1, %d15, %d15, %d1

# CHECK-INST: msubs %d1, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0x1f]
.code32
msubs %d1, %d15, %d15, %d14

# CHECK-INST: msubs %d1, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0x1f]
.code32
msubs %d1, %d15, %d15, %d15

# CHECK-INST: msubs %d14, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0xe0]
.code32
msubs %d14, %d0, %d0, %d0

# CHECK-INST: msubs %d14, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0xe0]
.code32
msubs %d14, %d0, %d0, %d1

# CHECK-INST: msubs %d14, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0xe0]
.code32
msubs %d14, %d0, %d0, %d14

# CHECK-INST: msubs %d14, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0xe0]
.code32
msubs %d14, %d0, %d0, %d15

# CHECK-INST: msubs %d14, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0xe0]
.code32
msubs %d14, %d0, %d1, %d0

# CHECK-INST: msubs %d14, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0xe0]
.code32
msubs %d14, %d0, %d1, %d1

# CHECK-INST: msubs %d14, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0xe0]
.code32
msubs %d14, %d0, %d1, %d14

# CHECK-INST: msubs %d14, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0xe0]
.code32
msubs %d14, %d0, %d1, %d15

# CHECK-INST: msubs %d14, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0xe0]
.code32
msubs %d14, %d0, %d14, %d0

# CHECK-INST: msubs %d14, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0xe0]
.code32
msubs %d14, %d0, %d14, %d1

# CHECK-INST: msubs %d14, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0xe0]
.code32
msubs %d14, %d0, %d14, %d14

# CHECK-INST: msubs %d14, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0xe0]
.code32
msubs %d14, %d0, %d14, %d15

# CHECK-INST: msubs %d14, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0xe0]
.code32
msubs %d14, %d0, %d15, %d0

# CHECK-INST: msubs %d14, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0xe0]
.code32
msubs %d14, %d0, %d15, %d1

# CHECK-INST: msubs %d14, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0xe0]
.code32
msubs %d14, %d0, %d15, %d14

# CHECK-INST: msubs %d14, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0xe0]
.code32
msubs %d14, %d0, %d15, %d15

# CHECK-INST: msubs %d14, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0xe1]
.code32
msubs %d14, %d1, %d0, %d0

# CHECK-INST: msubs %d14, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0xe1]
.code32
msubs %d14, %d1, %d0, %d1

# CHECK-INST: msubs %d14, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0xe1]
.code32
msubs %d14, %d1, %d0, %d14

# CHECK-INST: msubs %d14, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0xe1]
.code32
msubs %d14, %d1, %d0, %d15

# CHECK-INST: msubs %d14, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0xe1]
.code32
msubs %d14, %d1, %d1, %d0

# CHECK-INST: msubs %d14, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0xe1]
.code32
msubs %d14, %d1, %d1, %d1

# CHECK-INST: msubs %d14, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0xe1]
.code32
msubs %d14, %d1, %d1, %d14

# CHECK-INST: msubs %d14, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0xe1]
.code32
msubs %d14, %d1, %d1, %d15

# CHECK-INST: msubs %d14, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0xe1]
.code32
msubs %d14, %d1, %d14, %d0

# CHECK-INST: msubs %d14, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0xe1]
.code32
msubs %d14, %d1, %d14, %d1

# CHECK-INST: msubs %d14, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0xe1]
.code32
msubs %d14, %d1, %d14, %d14

# CHECK-INST: msubs %d14, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0xe1]
.code32
msubs %d14, %d1, %d14, %d15

# CHECK-INST: msubs %d14, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0xe1]
.code32
msubs %d14, %d1, %d15, %d0

# CHECK-INST: msubs %d14, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0xe1]
.code32
msubs %d14, %d1, %d15, %d1

# CHECK-INST: msubs %d14, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0xe1]
.code32
msubs %d14, %d1, %d15, %d14

# CHECK-INST: msubs %d14, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0xe1]
.code32
msubs %d14, %d1, %d15, %d15

# CHECK-INST: msubs %d14, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0xee]
.code32
msubs %d14, %d14, %d0, %d0

# CHECK-INST: msubs %d14, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0xee]
.code32
msubs %d14, %d14, %d0, %d1

# CHECK-INST: msubs %d14, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0xee]
.code32
msubs %d14, %d14, %d0, %d14

# CHECK-INST: msubs %d14, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0xee]
.code32
msubs %d14, %d14, %d0, %d15

# CHECK-INST: msubs %d14, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0xee]
.code32
msubs %d14, %d14, %d1, %d0

# CHECK-INST: msubs %d14, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0xee]
.code32
msubs %d14, %d14, %d1, %d1

# CHECK-INST: msubs %d14, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0xee]
.code32
msubs %d14, %d14, %d1, %d14

# CHECK-INST: msubs %d14, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0xee]
.code32
msubs %d14, %d14, %d1, %d15

# CHECK-INST: msubs %d14, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0xee]
.code32
msubs %d14, %d14, %d14, %d0

# CHECK-INST: msubs %d14, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0xee]
.code32
msubs %d14, %d14, %d14, %d1

# CHECK-INST: msubs %d14, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0xee]
.code32
msubs %d14, %d14, %d14, %d14

# CHECK-INST: msubs %d14, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0xee]
.code32
msubs %d14, %d14, %d14, %d15

# CHECK-INST: msubs %d14, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0xee]
.code32
msubs %d14, %d14, %d15, %d0

# CHECK-INST: msubs %d14, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0xee]
.code32
msubs %d14, %d14, %d15, %d1

# CHECK-INST: msubs %d14, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0xee]
.code32
msubs %d14, %d14, %d15, %d14

# CHECK-INST: msubs %d14, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0xee]
.code32
msubs %d14, %d14, %d15, %d15

# CHECK-INST: msubs %d14, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0xef]
.code32
msubs %d14, %d15, %d0, %d0

# CHECK-INST: msubs %d14, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0xef]
.code32
msubs %d14, %d15, %d0, %d1

# CHECK-INST: msubs %d14, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0xef]
.code32
msubs %d14, %d15, %d0, %d14

# CHECK-INST: msubs %d14, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0xef]
.code32
msubs %d14, %d15, %d0, %d15

# CHECK-INST: msubs %d14, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0xef]
.code32
msubs %d14, %d15, %d1, %d0

# CHECK-INST: msubs %d14, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0xef]
.code32
msubs %d14, %d15, %d1, %d1

# CHECK-INST: msubs %d14, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0xef]
.code32
msubs %d14, %d15, %d1, %d14

# CHECK-INST: msubs %d14, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0xef]
.code32
msubs %d14, %d15, %d1, %d15

# CHECK-INST: msubs %d14, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0xef]
.code32
msubs %d14, %d15, %d14, %d0

# CHECK-INST: msubs %d14, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0xef]
.code32
msubs %d14, %d15, %d14, %d1

# CHECK-INST: msubs %d14, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0xef]
.code32
msubs %d14, %d15, %d14, %d14

# CHECK-INST: msubs %d14, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0xef]
.code32
msubs %d14, %d15, %d14, %d15

# CHECK-INST: msubs %d14, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0xef]
.code32
msubs %d14, %d15, %d15, %d0

# CHECK-INST: msubs %d14, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0xef]
.code32
msubs %d14, %d15, %d15, %d1

# CHECK-INST: msubs %d14, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0xef]
.code32
msubs %d14, %d15, %d15, %d14

# CHECK-INST: msubs %d14, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0xef]
.code32
msubs %d14, %d15, %d15, %d15

# CHECK-INST: msubs %d15, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0xf0]
.code32
msubs %d15, %d0, %d0, %d0

# CHECK-INST: msubs %d15, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0xf0]
.code32
msubs %d15, %d0, %d0, %d1

# CHECK-INST: msubs %d15, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0xf0]
.code32
msubs %d15, %d0, %d0, %d14

# CHECK-INST: msubs %d15, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0xf0]
.code32
msubs %d15, %d0, %d0, %d15

# CHECK-INST: msubs %d15, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0xf0]
.code32
msubs %d15, %d0, %d1, %d0

# CHECK-INST: msubs %d15, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0xf0]
.code32
msubs %d15, %d0, %d1, %d1

# CHECK-INST: msubs %d15, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0xf0]
.code32
msubs %d15, %d0, %d1, %d14

# CHECK-INST: msubs %d15, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0xf0]
.code32
msubs %d15, %d0, %d1, %d15

# CHECK-INST: msubs %d15, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0xf0]
.code32
msubs %d15, %d0, %d14, %d0

# CHECK-INST: msubs %d15, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0xf0]
.code32
msubs %d15, %d0, %d14, %d1

# CHECK-INST: msubs %d15, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0xf0]
.code32
msubs %d15, %d0, %d14, %d14

# CHECK-INST: msubs %d15, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0xf0]
.code32
msubs %d15, %d0, %d14, %d15

# CHECK-INST: msubs %d15, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0xf0]
.code32
msubs %d15, %d0, %d15, %d0

# CHECK-INST: msubs %d15, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0xf0]
.code32
msubs %d15, %d0, %d15, %d1

# CHECK-INST: msubs %d15, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0xf0]
.code32
msubs %d15, %d0, %d15, %d14

# CHECK-INST: msubs %d15, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0xf0]
.code32
msubs %d15, %d0, %d15, %d15

# CHECK-INST: msubs %d15, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0xf1]
.code32
msubs %d15, %d1, %d0, %d0

# CHECK-INST: msubs %d15, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0xf1]
.code32
msubs %d15, %d1, %d0, %d1

# CHECK-INST: msubs %d15, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0xf1]
.code32
msubs %d15, %d1, %d0, %d14

# CHECK-INST: msubs %d15, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0xf1]
.code32
msubs %d15, %d1, %d0, %d15

# CHECK-INST: msubs %d15, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0xf1]
.code32
msubs %d15, %d1, %d1, %d0

# CHECK-INST: msubs %d15, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0xf1]
.code32
msubs %d15, %d1, %d1, %d1

# CHECK-INST: msubs %d15, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0xf1]
.code32
msubs %d15, %d1, %d1, %d14

# CHECK-INST: msubs %d15, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0xf1]
.code32
msubs %d15, %d1, %d1, %d15

# CHECK-INST: msubs %d15, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0xf1]
.code32
msubs %d15, %d1, %d14, %d0

# CHECK-INST: msubs %d15, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0xf1]
.code32
msubs %d15, %d1, %d14, %d1

# CHECK-INST: msubs %d15, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0xf1]
.code32
msubs %d15, %d1, %d14, %d14

# CHECK-INST: msubs %d15, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0xf1]
.code32
msubs %d15, %d1, %d14, %d15

# CHECK-INST: msubs %d15, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0xf1]
.code32
msubs %d15, %d1, %d15, %d0

# CHECK-INST: msubs %d15, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0xf1]
.code32
msubs %d15, %d1, %d15, %d1

# CHECK-INST: msubs %d15, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0xf1]
.code32
msubs %d15, %d1, %d15, %d14

# CHECK-INST: msubs %d15, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0xf1]
.code32
msubs %d15, %d1, %d15, %d15

# CHECK-INST: msubs %d15, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0xfe]
.code32
msubs %d15, %d14, %d0, %d0

# CHECK-INST: msubs %d15, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0xfe]
.code32
msubs %d15, %d14, %d0, %d1

# CHECK-INST: msubs %d15, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0xfe]
.code32
msubs %d15, %d14, %d0, %d14

# CHECK-INST: msubs %d15, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0xfe]
.code32
msubs %d15, %d14, %d0, %d15

# CHECK-INST: msubs %d15, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0xfe]
.code32
msubs %d15, %d14, %d1, %d0

# CHECK-INST: msubs %d15, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0xfe]
.code32
msubs %d15, %d14, %d1, %d1

# CHECK-INST: msubs %d15, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0xfe]
.code32
msubs %d15, %d14, %d1, %d14

# CHECK-INST: msubs %d15, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0xfe]
.code32
msubs %d15, %d14, %d1, %d15

# CHECK-INST: msubs %d15, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0xfe]
.code32
msubs %d15, %d14, %d14, %d0

# CHECK-INST: msubs %d15, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0xfe]
.code32
msubs %d15, %d14, %d14, %d1

# CHECK-INST: msubs %d15, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0xfe]
.code32
msubs %d15, %d14, %d14, %d14

# CHECK-INST: msubs %d15, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0xfe]
.code32
msubs %d15, %d14, %d14, %d15

# CHECK-INST: msubs %d15, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0xfe]
.code32
msubs %d15, %d14, %d15, %d0

# CHECK-INST: msubs %d15, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0xfe]
.code32
msubs %d15, %d14, %d15, %d1

# CHECK-INST: msubs %d15, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0xfe]
.code32
msubs %d15, %d14, %d15, %d14

# CHECK-INST: msubs %d15, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0xfe]
.code32
msubs %d15, %d14, %d15, %d15

# CHECK-INST: msubs %d15, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0xff]
.code32
msubs %d15, %d15, %d0, %d0

# CHECK-INST: msubs %d15, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0xff]
.code32
msubs %d15, %d15, %d0, %d1

# CHECK-INST: msubs %d15, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0xff]
.code32
msubs %d15, %d15, %d0, %d14

# CHECK-INST: msubs %d15, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0xff]
.code32
msubs %d15, %d15, %d0, %d15

# CHECK-INST: msubs %d15, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0xff]
.code32
msubs %d15, %d15, %d1, %d0

# CHECK-INST: msubs %d15, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0xff]
.code32
msubs %d15, %d15, %d1, %d1

# CHECK-INST: msubs %d15, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0xff]
.code32
msubs %d15, %d15, %d1, %d14

# CHECK-INST: msubs %d15, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0xff]
.code32
msubs %d15, %d15, %d1, %d15

# CHECK-INST: msubs %d15, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0xff]
.code32
msubs %d15, %d15, %d14, %d0

# CHECK-INST: msubs %d15, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0xff]
.code32
msubs %d15, %d15, %d14, %d1

# CHECK-INST: msubs %d15, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0xff]
.code32
msubs %d15, %d15, %d14, %d14

# CHECK-INST: msubs %d15, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0xff]
.code32
msubs %d15, %d15, %d14, %d15

# CHECK-INST: msubs %d15, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0xff]
.code32
msubs %d15, %d15, %d15, %d0

# CHECK-INST: msubs %d15, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0xff]
.code32
msubs %d15, %d15, %d15, %d1

# CHECK-INST: msubs %d15, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0xff]
.code32
msubs %d15, %d15, %d15, %d14

# CHECK-INST: msubs %d15, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0xff]
.code32
msubs %d15, %d15, %d15, %d15

# CHECK-INST: msubs %d0, %d0, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0x00]
.code32
msubs %d0, %d0, %d0, -256

# CHECK-INST: msubs %d0, %d0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0x00]
.code32
msubs %d0, %d0, %d0, -129

# CHECK-INST: msubs %d0, %d0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0x00]
.code32
msubs %d0, %d0, %d0, -1

# CHECK-INST: msubs %d0, %d0, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0x00]
.code32
msubs %d0, %d0, %d0, 0

# CHECK-INST: msubs %d0, %d0, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0x00]
.code32
msubs %d0, %d0, %d0, 1

# CHECK-INST: msubs %d0, %d0, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0x00]
.code32
msubs %d0, %d0, %d0, 128

# CHECK-INST: msubs %d0, %d0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0x00]
.code32
msubs %d0, %d0, %d0, 255

# CHECK-INST: msubs %d0, %d0, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0x00]
.code32
msubs %d0, %d0, %d1, -256

# CHECK-INST: msubs %d0, %d0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0x00]
.code32
msubs %d0, %d0, %d1, -129

# CHECK-INST: msubs %d0, %d0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0x00]
.code32
msubs %d0, %d0, %d1, -1

# CHECK-INST: msubs %d0, %d0, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0x00]
.code32
msubs %d0, %d0, %d1, 0

# CHECK-INST: msubs %d0, %d0, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0x00]
.code32
msubs %d0, %d0, %d1, 1

# CHECK-INST: msubs %d0, %d0, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0x00]
.code32
msubs %d0, %d0, %d1, 128

# CHECK-INST: msubs %d0, %d0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0x00]
.code32
msubs %d0, %d0, %d1, 255

# CHECK-INST: msubs %d0, %d0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0x00]
.code32
msubs %d0, %d0, %d14, -256

# CHECK-INST: msubs %d0, %d0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0x00]
.code32
msubs %d0, %d0, %d14, -129

# CHECK-INST: msubs %d0, %d0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0x00]
.code32
msubs %d0, %d0, %d14, -1

# CHECK-INST: msubs %d0, %d0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0x00]
.code32
msubs %d0, %d0, %d14, 0

# CHECK-INST: msubs %d0, %d0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0x00]
.code32
msubs %d0, %d0, %d14, 1

# CHECK-INST: msubs %d0, %d0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0x00]
.code32
msubs %d0, %d0, %d14, 128

# CHECK-INST: msubs %d0, %d0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0x00]
.code32
msubs %d0, %d0, %d14, 255

# CHECK-INST: msubs %d0, %d0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0x00]
.code32
msubs %d0, %d0, %d15, -256

# CHECK-INST: msubs %d0, %d0, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0x00]
.code32
msubs %d0, %d0, %d15, -129

# CHECK-INST: msubs %d0, %d0, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0x00]
.code32
msubs %d0, %d0, %d15, -1

# CHECK-INST: msubs %d0, %d0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0x00]
.code32
msubs %d0, %d0, %d15, 0

# CHECK-INST: msubs %d0, %d0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0x00]
.code32
msubs %d0, %d0, %d15, 1

# CHECK-INST: msubs %d0, %d0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0x00]
.code32
msubs %d0, %d0, %d15, 128

# CHECK-INST: msubs %d0, %d0, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0x00]
.code32
msubs %d0, %d0, %d15, 255

# CHECK-INST: msubs %d0, %d1, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0x01]
.code32
msubs %d0, %d1, %d0, -256

# CHECK-INST: msubs %d0, %d1, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0x01]
.code32
msubs %d0, %d1, %d0, -129

# CHECK-INST: msubs %d0, %d1, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0x01]
.code32
msubs %d0, %d1, %d0, -1

# CHECK-INST: msubs %d0, %d1, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0x01]
.code32
msubs %d0, %d1, %d0, 0

# CHECK-INST: msubs %d0, %d1, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0x01]
.code32
msubs %d0, %d1, %d0, 1

# CHECK-INST: msubs %d0, %d1, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0x01]
.code32
msubs %d0, %d1, %d0, 128

# CHECK-INST: msubs %d0, %d1, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0x01]
.code32
msubs %d0, %d1, %d0, 255

# CHECK-INST: msubs %d0, %d1, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0x01]
.code32
msubs %d0, %d1, %d1, -256

# CHECK-INST: msubs %d0, %d1, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0x01]
.code32
msubs %d0, %d1, %d1, -129

# CHECK-INST: msubs %d0, %d1, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0x01]
.code32
msubs %d0, %d1, %d1, -1

# CHECK-INST: msubs %d0, %d1, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0x01]
.code32
msubs %d0, %d1, %d1, 0

# CHECK-INST: msubs %d0, %d1, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0x01]
.code32
msubs %d0, %d1, %d1, 1

# CHECK-INST: msubs %d0, %d1, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0x01]
.code32
msubs %d0, %d1, %d1, 128

# CHECK-INST: msubs %d0, %d1, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0x01]
.code32
msubs %d0, %d1, %d1, 255

# CHECK-INST: msubs %d0, %d1, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0x01]
.code32
msubs %d0, %d1, %d14, -256

# CHECK-INST: msubs %d0, %d1, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0x01]
.code32
msubs %d0, %d1, %d14, -129

# CHECK-INST: msubs %d0, %d1, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0x01]
.code32
msubs %d0, %d1, %d14, -1

# CHECK-INST: msubs %d0, %d1, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0x01]
.code32
msubs %d0, %d1, %d14, 0

# CHECK-INST: msubs %d0, %d1, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0x01]
.code32
msubs %d0, %d1, %d14, 1

# CHECK-INST: msubs %d0, %d1, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0x01]
.code32
msubs %d0, %d1, %d14, 128

# CHECK-INST: msubs %d0, %d1, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0x01]
.code32
msubs %d0, %d1, %d14, 255

# CHECK-INST: msubs %d0, %d1, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0x01]
.code32
msubs %d0, %d1, %d15, -256

# CHECK-INST: msubs %d0, %d1, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0x01]
.code32
msubs %d0, %d1, %d15, -129

# CHECK-INST: msubs %d0, %d1, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0x01]
.code32
msubs %d0, %d1, %d15, -1

# CHECK-INST: msubs %d0, %d1, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0x01]
.code32
msubs %d0, %d1, %d15, 0

# CHECK-INST: msubs %d0, %d1, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0x01]
.code32
msubs %d0, %d1, %d15, 1

# CHECK-INST: msubs %d0, %d1, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0x01]
.code32
msubs %d0, %d1, %d15, 128

# CHECK-INST: msubs %d0, %d1, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0x01]
.code32
msubs %d0, %d1, %d15, 255

# CHECK-INST: msubs %d0, %d14, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0x0e]
.code32
msubs %d0, %d14, %d0, -256

# CHECK-INST: msubs %d0, %d14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0x0e]
.code32
msubs %d0, %d14, %d0, -129

# CHECK-INST: msubs %d0, %d14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0x0e]
.code32
msubs %d0, %d14, %d0, -1

# CHECK-INST: msubs %d0, %d14, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0x0e]
.code32
msubs %d0, %d14, %d0, 0

# CHECK-INST: msubs %d0, %d14, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0x0e]
.code32
msubs %d0, %d14, %d0, 1

# CHECK-INST: msubs %d0, %d14, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0x0e]
.code32
msubs %d0, %d14, %d0, 128

# CHECK-INST: msubs %d0, %d14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0x0e]
.code32
msubs %d0, %d14, %d0, 255

# CHECK-INST: msubs %d0, %d14, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0x0e]
.code32
msubs %d0, %d14, %d1, -256

# CHECK-INST: msubs %d0, %d14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0x0e]
.code32
msubs %d0, %d14, %d1, -129

# CHECK-INST: msubs %d0, %d14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0x0e]
.code32
msubs %d0, %d14, %d1, -1

# CHECK-INST: msubs %d0, %d14, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0x0e]
.code32
msubs %d0, %d14, %d1, 0

# CHECK-INST: msubs %d0, %d14, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0x0e]
.code32
msubs %d0, %d14, %d1, 1

# CHECK-INST: msubs %d0, %d14, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0x0e]
.code32
msubs %d0, %d14, %d1, 128

# CHECK-INST: msubs %d0, %d14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0x0e]
.code32
msubs %d0, %d14, %d1, 255

# CHECK-INST: msubs %d0, %d14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0x0e]
.code32
msubs %d0, %d14, %d14, -256

# CHECK-INST: msubs %d0, %d14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0x0e]
.code32
msubs %d0, %d14, %d14, -129

# CHECK-INST: msubs %d0, %d14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0x0e]
.code32
msubs %d0, %d14, %d14, -1

# CHECK-INST: msubs %d0, %d14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0x0e]
.code32
msubs %d0, %d14, %d14, 0

# CHECK-INST: msubs %d0, %d14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0x0e]
.code32
msubs %d0, %d14, %d14, 1

# CHECK-INST: msubs %d0, %d14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0x0e]
.code32
msubs %d0, %d14, %d14, 128

# CHECK-INST: msubs %d0, %d14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0x0e]
.code32
msubs %d0, %d14, %d14, 255

# CHECK-INST: msubs %d0, %d14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0x0e]
.code32
msubs %d0, %d14, %d15, -256

# CHECK-INST: msubs %d0, %d14, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0x0e]
.code32
msubs %d0, %d14, %d15, -129

# CHECK-INST: msubs %d0, %d14, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0x0e]
.code32
msubs %d0, %d14, %d15, -1

# CHECK-INST: msubs %d0, %d14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0x0e]
.code32
msubs %d0, %d14, %d15, 0

# CHECK-INST: msubs %d0, %d14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0x0e]
.code32
msubs %d0, %d14, %d15, 1

# CHECK-INST: msubs %d0, %d14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0x0e]
.code32
msubs %d0, %d14, %d15, 128

# CHECK-INST: msubs %d0, %d14, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0x0e]
.code32
msubs %d0, %d14, %d15, 255

# CHECK-INST: msubs %d0, %d15, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0x0f]
.code32
msubs %d0, %d15, %d0, -256

# CHECK-INST: msubs %d0, %d15, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0x0f]
.code32
msubs %d0, %d15, %d0, -129

# CHECK-INST: msubs %d0, %d15, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0x0f]
.code32
msubs %d0, %d15, %d0, -1

# CHECK-INST: msubs %d0, %d15, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0x0f]
.code32
msubs %d0, %d15, %d0, 0

# CHECK-INST: msubs %d0, %d15, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0x0f]
.code32
msubs %d0, %d15, %d0, 1

# CHECK-INST: msubs %d0, %d15, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0x0f]
.code32
msubs %d0, %d15, %d0, 128

# CHECK-INST: msubs %d0, %d15, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0x0f]
.code32
msubs %d0, %d15, %d0, 255

# CHECK-INST: msubs %d0, %d15, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0x0f]
.code32
msubs %d0, %d15, %d1, -256

# CHECK-INST: msubs %d0, %d15, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0x0f]
.code32
msubs %d0, %d15, %d1, -129

# CHECK-INST: msubs %d0, %d15, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0x0f]
.code32
msubs %d0, %d15, %d1, -1

# CHECK-INST: msubs %d0, %d15, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0x0f]
.code32
msubs %d0, %d15, %d1, 0

# CHECK-INST: msubs %d0, %d15, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0x0f]
.code32
msubs %d0, %d15, %d1, 1

# CHECK-INST: msubs %d0, %d15, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0x0f]
.code32
msubs %d0, %d15, %d1, 128

# CHECK-INST: msubs %d0, %d15, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0x0f]
.code32
msubs %d0, %d15, %d1, 255

# CHECK-INST: msubs %d0, %d15, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0x0f]
.code32
msubs %d0, %d15, %d14, -256

# CHECK-INST: msubs %d0, %d15, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0x0f]
.code32
msubs %d0, %d15, %d14, -129

# CHECK-INST: msubs %d0, %d15, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0x0f]
.code32
msubs %d0, %d15, %d14, -1

# CHECK-INST: msubs %d0, %d15, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0x0f]
.code32
msubs %d0, %d15, %d14, 0

# CHECK-INST: msubs %d0, %d15, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0x0f]
.code32
msubs %d0, %d15, %d14, 1

# CHECK-INST: msubs %d0, %d15, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0x0f]
.code32
msubs %d0, %d15, %d14, 128

# CHECK-INST: msubs %d0, %d15, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0x0f]
.code32
msubs %d0, %d15, %d14, 255

# CHECK-INST: msubs %d0, %d15, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0x0f]
.code32
msubs %d0, %d15, %d15, -256

# CHECK-INST: msubs %d0, %d15, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0x0f]
.code32
msubs %d0, %d15, %d15, -129

# CHECK-INST: msubs %d0, %d15, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0x0f]
.code32
msubs %d0, %d15, %d15, -1

# CHECK-INST: msubs %d0, %d15, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0x0f]
.code32
msubs %d0, %d15, %d15, 0

# CHECK-INST: msubs %d0, %d15, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0x0f]
.code32
msubs %d0, %d15, %d15, 1

# CHECK-INST: msubs %d0, %d15, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0x0f]
.code32
msubs %d0, %d15, %d15, 128

# CHECK-INST: msubs %d0, %d15, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0x0f]
.code32
msubs %d0, %d15, %d15, 255

# CHECK-INST: msubs %d1, %d0, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0x10]
.code32
msubs %d1, %d0, %d0, -256

# CHECK-INST: msubs %d1, %d0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0x10]
.code32
msubs %d1, %d0, %d0, -129

# CHECK-INST: msubs %d1, %d0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0x10]
.code32
msubs %d1, %d0, %d0, -1

# CHECK-INST: msubs %d1, %d0, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0x10]
.code32
msubs %d1, %d0, %d0, 0

# CHECK-INST: msubs %d1, %d0, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0x10]
.code32
msubs %d1, %d0, %d0, 1

# CHECK-INST: msubs %d1, %d0, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0x10]
.code32
msubs %d1, %d0, %d0, 128

# CHECK-INST: msubs %d1, %d0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0x10]
.code32
msubs %d1, %d0, %d0, 255

# CHECK-INST: msubs %d1, %d0, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0x10]
.code32
msubs %d1, %d0, %d1, -256

# CHECK-INST: msubs %d1, %d0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0x10]
.code32
msubs %d1, %d0, %d1, -129

# CHECK-INST: msubs %d1, %d0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0x10]
.code32
msubs %d1, %d0, %d1, -1

# CHECK-INST: msubs %d1, %d0, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0x10]
.code32
msubs %d1, %d0, %d1, 0

# CHECK-INST: msubs %d1, %d0, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0x10]
.code32
msubs %d1, %d0, %d1, 1

# CHECK-INST: msubs %d1, %d0, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0x10]
.code32
msubs %d1, %d0, %d1, 128

# CHECK-INST: msubs %d1, %d0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0x10]
.code32
msubs %d1, %d0, %d1, 255

# CHECK-INST: msubs %d1, %d0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0x10]
.code32
msubs %d1, %d0, %d14, -256

# CHECK-INST: msubs %d1, %d0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0x10]
.code32
msubs %d1, %d0, %d14, -129

# CHECK-INST: msubs %d1, %d0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0x10]
.code32
msubs %d1, %d0, %d14, -1

# CHECK-INST: msubs %d1, %d0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0x10]
.code32
msubs %d1, %d0, %d14, 0

# CHECK-INST: msubs %d1, %d0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0x10]
.code32
msubs %d1, %d0, %d14, 1

# CHECK-INST: msubs %d1, %d0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0x10]
.code32
msubs %d1, %d0, %d14, 128

# CHECK-INST: msubs %d1, %d0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0x10]
.code32
msubs %d1, %d0, %d14, 255

# CHECK-INST: msubs %d1, %d0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0x10]
.code32
msubs %d1, %d0, %d15, -256

# CHECK-INST: msubs %d1, %d0, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0x10]
.code32
msubs %d1, %d0, %d15, -129

# CHECK-INST: msubs %d1, %d0, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0x10]
.code32
msubs %d1, %d0, %d15, -1

# CHECK-INST: msubs %d1, %d0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0x10]
.code32
msubs %d1, %d0, %d15, 0

# CHECK-INST: msubs %d1, %d0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0x10]
.code32
msubs %d1, %d0, %d15, 1

# CHECK-INST: msubs %d1, %d0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0x10]
.code32
msubs %d1, %d0, %d15, 128

# CHECK-INST: msubs %d1, %d0, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0x10]
.code32
msubs %d1, %d0, %d15, 255

# CHECK-INST: msubs %d1, %d1, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0x11]
.code32
msubs %d1, %d1, %d0, -256

# CHECK-INST: msubs %d1, %d1, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0x11]
.code32
msubs %d1, %d1, %d0, -129

# CHECK-INST: msubs %d1, %d1, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0x11]
.code32
msubs %d1, %d1, %d0, -1

# CHECK-INST: msubs %d1, %d1, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0x11]
.code32
msubs %d1, %d1, %d0, 0

# CHECK-INST: msubs %d1, %d1, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0x11]
.code32
msubs %d1, %d1, %d0, 1

# CHECK-INST: msubs %d1, %d1, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0x11]
.code32
msubs %d1, %d1, %d0, 128

# CHECK-INST: msubs %d1, %d1, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0x11]
.code32
msubs %d1, %d1, %d0, 255

# CHECK-INST: msubs %d1, %d1, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0x11]
.code32
msubs %d1, %d1, %d1, -256

# CHECK-INST: msubs %d1, %d1, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0x11]
.code32
msubs %d1, %d1, %d1, -129

# CHECK-INST: msubs %d1, %d1, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0x11]
.code32
msubs %d1, %d1, %d1, -1

# CHECK-INST: msubs %d1, %d1, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0x11]
.code32
msubs %d1, %d1, %d1, 0

# CHECK-INST: msubs %d1, %d1, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0x11]
.code32
msubs %d1, %d1, %d1, 1

# CHECK-INST: msubs %d1, %d1, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0x11]
.code32
msubs %d1, %d1, %d1, 128

# CHECK-INST: msubs %d1, %d1, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0x11]
.code32
msubs %d1, %d1, %d1, 255

# CHECK-INST: msubs %d1, %d1, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0x11]
.code32
msubs %d1, %d1, %d14, -256

# CHECK-INST: msubs %d1, %d1, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0x11]
.code32
msubs %d1, %d1, %d14, -129

# CHECK-INST: msubs %d1, %d1, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0x11]
.code32
msubs %d1, %d1, %d14, -1

# CHECK-INST: msubs %d1, %d1, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0x11]
.code32
msubs %d1, %d1, %d14, 0

# CHECK-INST: msubs %d1, %d1, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0x11]
.code32
msubs %d1, %d1, %d14, 1

# CHECK-INST: msubs %d1, %d1, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0x11]
.code32
msubs %d1, %d1, %d14, 128

# CHECK-INST: msubs %d1, %d1, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0x11]
.code32
msubs %d1, %d1, %d14, 255

# CHECK-INST: msubs %d1, %d1, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0x11]
.code32
msubs %d1, %d1, %d15, -256

# CHECK-INST: msubs %d1, %d1, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0x11]
.code32
msubs %d1, %d1, %d15, -129

# CHECK-INST: msubs %d1, %d1, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0x11]
.code32
msubs %d1, %d1, %d15, -1

# CHECK-INST: msubs %d1, %d1, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0x11]
.code32
msubs %d1, %d1, %d15, 0

# CHECK-INST: msubs %d1, %d1, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0x11]
.code32
msubs %d1, %d1, %d15, 1

# CHECK-INST: msubs %d1, %d1, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0x11]
.code32
msubs %d1, %d1, %d15, 128

# CHECK-INST: msubs %d1, %d1, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0x11]
.code32
msubs %d1, %d1, %d15, 255

# CHECK-INST: msubs %d1, %d14, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0x1e]
.code32
msubs %d1, %d14, %d0, -256

# CHECK-INST: msubs %d1, %d14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0x1e]
.code32
msubs %d1, %d14, %d0, -129

# CHECK-INST: msubs %d1, %d14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0x1e]
.code32
msubs %d1, %d14, %d0, -1

# CHECK-INST: msubs %d1, %d14, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0x1e]
.code32
msubs %d1, %d14, %d0, 0

# CHECK-INST: msubs %d1, %d14, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0x1e]
.code32
msubs %d1, %d14, %d0, 1

# CHECK-INST: msubs %d1, %d14, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0x1e]
.code32
msubs %d1, %d14, %d0, 128

# CHECK-INST: msubs %d1, %d14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0x1e]
.code32
msubs %d1, %d14, %d0, 255

# CHECK-INST: msubs %d1, %d14, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0x1e]
.code32
msubs %d1, %d14, %d1, -256

# CHECK-INST: msubs %d1, %d14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0x1e]
.code32
msubs %d1, %d14, %d1, -129

# CHECK-INST: msubs %d1, %d14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0x1e]
.code32
msubs %d1, %d14, %d1, -1

# CHECK-INST: msubs %d1, %d14, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0x1e]
.code32
msubs %d1, %d14, %d1, 0

# CHECK-INST: msubs %d1, %d14, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0x1e]
.code32
msubs %d1, %d14, %d1, 1

# CHECK-INST: msubs %d1, %d14, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0x1e]
.code32
msubs %d1, %d14, %d1, 128

# CHECK-INST: msubs %d1, %d14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0x1e]
.code32
msubs %d1, %d14, %d1, 255

# CHECK-INST: msubs %d1, %d14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0x1e]
.code32
msubs %d1, %d14, %d14, -256

# CHECK-INST: msubs %d1, %d14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0x1e]
.code32
msubs %d1, %d14, %d14, -129

# CHECK-INST: msubs %d1, %d14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0x1e]
.code32
msubs %d1, %d14, %d14, -1

# CHECK-INST: msubs %d1, %d14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0x1e]
.code32
msubs %d1, %d14, %d14, 0

# CHECK-INST: msubs %d1, %d14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0x1e]
.code32
msubs %d1, %d14, %d14, 1

# CHECK-INST: msubs %d1, %d14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0x1e]
.code32
msubs %d1, %d14, %d14, 128

# CHECK-INST: msubs %d1, %d14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0x1e]
.code32
msubs %d1, %d14, %d14, 255

# CHECK-INST: msubs %d1, %d14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0x1e]
.code32
msubs %d1, %d14, %d15, -256

# CHECK-INST: msubs %d1, %d14, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0x1e]
.code32
msubs %d1, %d14, %d15, -129

# CHECK-INST: msubs %d1, %d14, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0x1e]
.code32
msubs %d1, %d14, %d15, -1

# CHECK-INST: msubs %d1, %d14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0x1e]
.code32
msubs %d1, %d14, %d15, 0

# CHECK-INST: msubs %d1, %d14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0x1e]
.code32
msubs %d1, %d14, %d15, 1

# CHECK-INST: msubs %d1, %d14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0x1e]
.code32
msubs %d1, %d14, %d15, 128

# CHECK-INST: msubs %d1, %d14, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0x1e]
.code32
msubs %d1, %d14, %d15, 255

# CHECK-INST: msubs %d1, %d15, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0x1f]
.code32
msubs %d1, %d15, %d0, -256

# CHECK-INST: msubs %d1, %d15, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0x1f]
.code32
msubs %d1, %d15, %d0, -129

# CHECK-INST: msubs %d1, %d15, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0x1f]
.code32
msubs %d1, %d15, %d0, -1

# CHECK-INST: msubs %d1, %d15, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0x1f]
.code32
msubs %d1, %d15, %d0, 0

# CHECK-INST: msubs %d1, %d15, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0x1f]
.code32
msubs %d1, %d15, %d0, 1

# CHECK-INST: msubs %d1, %d15, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0x1f]
.code32
msubs %d1, %d15, %d0, 128

# CHECK-INST: msubs %d1, %d15, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0x1f]
.code32
msubs %d1, %d15, %d0, 255

# CHECK-INST: msubs %d1, %d15, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0x1f]
.code32
msubs %d1, %d15, %d1, -256

# CHECK-INST: msubs %d1, %d15, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0x1f]
.code32
msubs %d1, %d15, %d1, -129

# CHECK-INST: msubs %d1, %d15, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0x1f]
.code32
msubs %d1, %d15, %d1, -1

# CHECK-INST: msubs %d1, %d15, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0x1f]
.code32
msubs %d1, %d15, %d1, 0

# CHECK-INST: msubs %d1, %d15, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0x1f]
.code32
msubs %d1, %d15, %d1, 1

# CHECK-INST: msubs %d1, %d15, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0x1f]
.code32
msubs %d1, %d15, %d1, 128

# CHECK-INST: msubs %d1, %d15, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0x1f]
.code32
msubs %d1, %d15, %d1, 255

# CHECK-INST: msubs %d1, %d15, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0x1f]
.code32
msubs %d1, %d15, %d14, -256

# CHECK-INST: msubs %d1, %d15, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0x1f]
.code32
msubs %d1, %d15, %d14, -129

# CHECK-INST: msubs %d1, %d15, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0x1f]
.code32
msubs %d1, %d15, %d14, -1

# CHECK-INST: msubs %d1, %d15, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0x1f]
.code32
msubs %d1, %d15, %d14, 0

# CHECK-INST: msubs %d1, %d15, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0x1f]
.code32
msubs %d1, %d15, %d14, 1

# CHECK-INST: msubs %d1, %d15, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0x1f]
.code32
msubs %d1, %d15, %d14, 128

# CHECK-INST: msubs %d1, %d15, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0x1f]
.code32
msubs %d1, %d15, %d14, 255

# CHECK-INST: msubs %d1, %d15, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0x1f]
.code32
msubs %d1, %d15, %d15, -256

# CHECK-INST: msubs %d1, %d15, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0x1f]
.code32
msubs %d1, %d15, %d15, -129

# CHECK-INST: msubs %d1, %d15, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0x1f]
.code32
msubs %d1, %d15, %d15, -1

# CHECK-INST: msubs %d1, %d15, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0x1f]
.code32
msubs %d1, %d15, %d15, 0

# CHECK-INST: msubs %d1, %d15, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0x1f]
.code32
msubs %d1, %d15, %d15, 1

# CHECK-INST: msubs %d1, %d15, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0x1f]
.code32
msubs %d1, %d15, %d15, 128

# CHECK-INST: msubs %d1, %d15, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0x1f]
.code32
msubs %d1, %d15, %d15, 255

# CHECK-INST: msubs %d14, %d0, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0xe0]
.code32
msubs %d14, %d0, %d0, -256

# CHECK-INST: msubs %d14, %d0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0xe0]
.code32
msubs %d14, %d0, %d0, -129

# CHECK-INST: msubs %d14, %d0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0xe0]
.code32
msubs %d14, %d0, %d0, -1

# CHECK-INST: msubs %d14, %d0, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0xe0]
.code32
msubs %d14, %d0, %d0, 0

# CHECK-INST: msubs %d14, %d0, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0xe0]
.code32
msubs %d14, %d0, %d0, 1

# CHECK-INST: msubs %d14, %d0, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0xe0]
.code32
msubs %d14, %d0, %d0, 128

# CHECK-INST: msubs %d14, %d0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0xe0]
.code32
msubs %d14, %d0, %d0, 255

# CHECK-INST: msubs %d14, %d0, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0xe0]
.code32
msubs %d14, %d0, %d1, -256

# CHECK-INST: msubs %d14, %d0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0xe0]
.code32
msubs %d14, %d0, %d1, -129

# CHECK-INST: msubs %d14, %d0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0xe0]
.code32
msubs %d14, %d0, %d1, -1

# CHECK-INST: msubs %d14, %d0, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0xe0]
.code32
msubs %d14, %d0, %d1, 0

# CHECK-INST: msubs %d14, %d0, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0xe0]
.code32
msubs %d14, %d0, %d1, 1

# CHECK-INST: msubs %d14, %d0, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0xe0]
.code32
msubs %d14, %d0, %d1, 128

# CHECK-INST: msubs %d14, %d0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0xe0]
.code32
msubs %d14, %d0, %d1, 255

# CHECK-INST: msubs %d14, %d0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0xe0]
.code32
msubs %d14, %d0, %d14, -256

# CHECK-INST: msubs %d14, %d0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0xe0]
.code32
msubs %d14, %d0, %d14, -129

# CHECK-INST: msubs %d14, %d0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0xe0]
.code32
msubs %d14, %d0, %d14, -1

# CHECK-INST: msubs %d14, %d0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0xe0]
.code32
msubs %d14, %d0, %d14, 0

# CHECK-INST: msubs %d14, %d0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0xe0]
.code32
msubs %d14, %d0, %d14, 1

# CHECK-INST: msubs %d14, %d0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0xe0]
.code32
msubs %d14, %d0, %d14, 128

# CHECK-INST: msubs %d14, %d0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0xe0]
.code32
msubs %d14, %d0, %d14, 255

# CHECK-INST: msubs %d14, %d0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0xe0]
.code32
msubs %d14, %d0, %d15, -256

# CHECK-INST: msubs %d14, %d0, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0xe0]
.code32
msubs %d14, %d0, %d15, -129

# CHECK-INST: msubs %d14, %d0, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0xe0]
.code32
msubs %d14, %d0, %d15, -1

# CHECK-INST: msubs %d14, %d0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0xe0]
.code32
msubs %d14, %d0, %d15, 0

# CHECK-INST: msubs %d14, %d0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0xe0]
.code32
msubs %d14, %d0, %d15, 1

# CHECK-INST: msubs %d14, %d0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0xe0]
.code32
msubs %d14, %d0, %d15, 128

# CHECK-INST: msubs %d14, %d0, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0xe0]
.code32
msubs %d14, %d0, %d15, 255

# CHECK-INST: msubs %d14, %d1, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0xe1]
.code32
msubs %d14, %d1, %d0, -256

# CHECK-INST: msubs %d14, %d1, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0xe1]
.code32
msubs %d14, %d1, %d0, -129

# CHECK-INST: msubs %d14, %d1, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0xe1]
.code32
msubs %d14, %d1, %d0, -1

# CHECK-INST: msubs %d14, %d1, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0xe1]
.code32
msubs %d14, %d1, %d0, 0

# CHECK-INST: msubs %d14, %d1, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0xe1]
.code32
msubs %d14, %d1, %d0, 1

# CHECK-INST: msubs %d14, %d1, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0xe1]
.code32
msubs %d14, %d1, %d0, 128

# CHECK-INST: msubs %d14, %d1, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0xe1]
.code32
msubs %d14, %d1, %d0, 255

# CHECK-INST: msubs %d14, %d1, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0xe1]
.code32
msubs %d14, %d1, %d1, -256

# CHECK-INST: msubs %d14, %d1, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0xe1]
.code32
msubs %d14, %d1, %d1, -129

# CHECK-INST: msubs %d14, %d1, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0xe1]
.code32
msubs %d14, %d1, %d1, -1

# CHECK-INST: msubs %d14, %d1, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0xe1]
.code32
msubs %d14, %d1, %d1, 0

# CHECK-INST: msubs %d14, %d1, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0xe1]
.code32
msubs %d14, %d1, %d1, 1

# CHECK-INST: msubs %d14, %d1, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0xe1]
.code32
msubs %d14, %d1, %d1, 128

# CHECK-INST: msubs %d14, %d1, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0xe1]
.code32
msubs %d14, %d1, %d1, 255

# CHECK-INST: msubs %d14, %d1, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0xe1]
.code32
msubs %d14, %d1, %d14, -256

# CHECK-INST: msubs %d14, %d1, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0xe1]
.code32
msubs %d14, %d1, %d14, -129

# CHECK-INST: msubs %d14, %d1, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0xe1]
.code32
msubs %d14, %d1, %d14, -1

# CHECK-INST: msubs %d14, %d1, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0xe1]
.code32
msubs %d14, %d1, %d14, 0

# CHECK-INST: msubs %d14, %d1, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0xe1]
.code32
msubs %d14, %d1, %d14, 1

# CHECK-INST: msubs %d14, %d1, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0xe1]
.code32
msubs %d14, %d1, %d14, 128

# CHECK-INST: msubs %d14, %d1, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0xe1]
.code32
msubs %d14, %d1, %d14, 255

# CHECK-INST: msubs %d14, %d1, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0xe1]
.code32
msubs %d14, %d1, %d15, -256

# CHECK-INST: msubs %d14, %d1, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0xe1]
.code32
msubs %d14, %d1, %d15, -129

# CHECK-INST: msubs %d14, %d1, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0xe1]
.code32
msubs %d14, %d1, %d15, -1

# CHECK-INST: msubs %d14, %d1, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0xe1]
.code32
msubs %d14, %d1, %d15, 0

# CHECK-INST: msubs %d14, %d1, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0xe1]
.code32
msubs %d14, %d1, %d15, 1

# CHECK-INST: msubs %d14, %d1, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0xe1]
.code32
msubs %d14, %d1, %d15, 128

# CHECK-INST: msubs %d14, %d1, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0xe1]
.code32
msubs %d14, %d1, %d15, 255

# CHECK-INST: msubs %d14, %d14, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0xee]
.code32
msubs %d14, %d14, %d0, -256

# CHECK-INST: msubs %d14, %d14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0xee]
.code32
msubs %d14, %d14, %d0, -129

# CHECK-INST: msubs %d14, %d14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0xee]
.code32
msubs %d14, %d14, %d0, -1

# CHECK-INST: msubs %d14, %d14, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0xee]
.code32
msubs %d14, %d14, %d0, 0

# CHECK-INST: msubs %d14, %d14, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0xee]
.code32
msubs %d14, %d14, %d0, 1

# CHECK-INST: msubs %d14, %d14, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0xee]
.code32
msubs %d14, %d14, %d0, 128

# CHECK-INST: msubs %d14, %d14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0xee]
.code32
msubs %d14, %d14, %d0, 255

# CHECK-INST: msubs %d14, %d14, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0xee]
.code32
msubs %d14, %d14, %d1, -256

# CHECK-INST: msubs %d14, %d14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0xee]
.code32
msubs %d14, %d14, %d1, -129

# CHECK-INST: msubs %d14, %d14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0xee]
.code32
msubs %d14, %d14, %d1, -1

# CHECK-INST: msubs %d14, %d14, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0xee]
.code32
msubs %d14, %d14, %d1, 0

# CHECK-INST: msubs %d14, %d14, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0xee]
.code32
msubs %d14, %d14, %d1, 1

# CHECK-INST: msubs %d14, %d14, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0xee]
.code32
msubs %d14, %d14, %d1, 128

# CHECK-INST: msubs %d14, %d14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0xee]
.code32
msubs %d14, %d14, %d1, 255

# CHECK-INST: msubs %d14, %d14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0xee]
.code32
msubs %d14, %d14, %d14, -256

# CHECK-INST: msubs %d14, %d14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0xee]
.code32
msubs %d14, %d14, %d14, -129

# CHECK-INST: msubs %d14, %d14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0xee]
.code32
msubs %d14, %d14, %d14, -1

# CHECK-INST: msubs %d14, %d14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0xee]
.code32
msubs %d14, %d14, %d14, 0

# CHECK-INST: msubs %d14, %d14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0xee]
.code32
msubs %d14, %d14, %d14, 1

# CHECK-INST: msubs %d14, %d14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0xee]
.code32
msubs %d14, %d14, %d14, 128

# CHECK-INST: msubs %d14, %d14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0xee]
.code32
msubs %d14, %d14, %d14, 255

# CHECK-INST: msubs %d14, %d14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0xee]
.code32
msubs %d14, %d14, %d15, -256

# CHECK-INST: msubs %d14, %d14, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0xee]
.code32
msubs %d14, %d14, %d15, -129

# CHECK-INST: msubs %d14, %d14, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0xee]
.code32
msubs %d14, %d14, %d15, -1

# CHECK-INST: msubs %d14, %d14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0xee]
.code32
msubs %d14, %d14, %d15, 0

# CHECK-INST: msubs %d14, %d14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0xee]
.code32
msubs %d14, %d14, %d15, 1

# CHECK-INST: msubs %d14, %d14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0xee]
.code32
msubs %d14, %d14, %d15, 128

# CHECK-INST: msubs %d14, %d14, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0xee]
.code32
msubs %d14, %d14, %d15, 255

# CHECK-INST: msubs %d14, %d15, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0xef]
.code32
msubs %d14, %d15, %d0, -256

# CHECK-INST: msubs %d14, %d15, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0xef]
.code32
msubs %d14, %d15, %d0, -129

# CHECK-INST: msubs %d14, %d15, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0xef]
.code32
msubs %d14, %d15, %d0, -1

# CHECK-INST: msubs %d14, %d15, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0xef]
.code32
msubs %d14, %d15, %d0, 0

# CHECK-INST: msubs %d14, %d15, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0xef]
.code32
msubs %d14, %d15, %d0, 1

# CHECK-INST: msubs %d14, %d15, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0xef]
.code32
msubs %d14, %d15, %d0, 128

# CHECK-INST: msubs %d14, %d15, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0xef]
.code32
msubs %d14, %d15, %d0, 255

# CHECK-INST: msubs %d14, %d15, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0xef]
.code32
msubs %d14, %d15, %d1, -256

# CHECK-INST: msubs %d14, %d15, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0xef]
.code32
msubs %d14, %d15, %d1, -129

# CHECK-INST: msubs %d14, %d15, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0xef]
.code32
msubs %d14, %d15, %d1, -1

# CHECK-INST: msubs %d14, %d15, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0xef]
.code32
msubs %d14, %d15, %d1, 0

# CHECK-INST: msubs %d14, %d15, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0xef]
.code32
msubs %d14, %d15, %d1, 1

# CHECK-INST: msubs %d14, %d15, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0xef]
.code32
msubs %d14, %d15, %d1, 128

# CHECK-INST: msubs %d14, %d15, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0xef]
.code32
msubs %d14, %d15, %d1, 255

# CHECK-INST: msubs %d14, %d15, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0xef]
.code32
msubs %d14, %d15, %d14, -256

# CHECK-INST: msubs %d14, %d15, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0xef]
.code32
msubs %d14, %d15, %d14, -129

# CHECK-INST: msubs %d14, %d15, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0xef]
.code32
msubs %d14, %d15, %d14, -1

# CHECK-INST: msubs %d14, %d15, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0xef]
.code32
msubs %d14, %d15, %d14, 0

# CHECK-INST: msubs %d14, %d15, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0xef]
.code32
msubs %d14, %d15, %d14, 1

# CHECK-INST: msubs %d14, %d15, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0xef]
.code32
msubs %d14, %d15, %d14, 128

# CHECK-INST: msubs %d14, %d15, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0xef]
.code32
msubs %d14, %d15, %d14, 255

# CHECK-INST: msubs %d14, %d15, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0xef]
.code32
msubs %d14, %d15, %d15, -256

# CHECK-INST: msubs %d14, %d15, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0xef]
.code32
msubs %d14, %d15, %d15, -129

# CHECK-INST: msubs %d14, %d15, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0xef]
.code32
msubs %d14, %d15, %d15, -1

# CHECK-INST: msubs %d14, %d15, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0xef]
.code32
msubs %d14, %d15, %d15, 0

# CHECK-INST: msubs %d14, %d15, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0xef]
.code32
msubs %d14, %d15, %d15, 1

# CHECK-INST: msubs %d14, %d15, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0xef]
.code32
msubs %d14, %d15, %d15, 128

# CHECK-INST: msubs %d14, %d15, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0xef]
.code32
msubs %d14, %d15, %d15, 255

# CHECK-INST: msubs %d15, %d0, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0xf0]
.code32
msubs %d15, %d0, %d0, -256

# CHECK-INST: msubs %d15, %d0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0xf0]
.code32
msubs %d15, %d0, %d0, -129

# CHECK-INST: msubs %d15, %d0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0xf0]
.code32
msubs %d15, %d0, %d0, -1

# CHECK-INST: msubs %d15, %d0, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0xf0]
.code32
msubs %d15, %d0, %d0, 0

# CHECK-INST: msubs %d15, %d0, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0xf0]
.code32
msubs %d15, %d0, %d0, 1

# CHECK-INST: msubs %d15, %d0, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0xf0]
.code32
msubs %d15, %d0, %d0, 128

# CHECK-INST: msubs %d15, %d0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0xf0]
.code32
msubs %d15, %d0, %d0, 255

# CHECK-INST: msubs %d15, %d0, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0xf0]
.code32
msubs %d15, %d0, %d1, -256

# CHECK-INST: msubs %d15, %d0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0xf0]
.code32
msubs %d15, %d0, %d1, -129

# CHECK-INST: msubs %d15, %d0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0xf0]
.code32
msubs %d15, %d0, %d1, -1

# CHECK-INST: msubs %d15, %d0, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0xf0]
.code32
msubs %d15, %d0, %d1, 0

# CHECK-INST: msubs %d15, %d0, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0xf0]
.code32
msubs %d15, %d0, %d1, 1

# CHECK-INST: msubs %d15, %d0, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0xf0]
.code32
msubs %d15, %d0, %d1, 128

# CHECK-INST: msubs %d15, %d0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0xf0]
.code32
msubs %d15, %d0, %d1, 255

# CHECK-INST: msubs %d15, %d0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0xf0]
.code32
msubs %d15, %d0, %d14, -256

# CHECK-INST: msubs %d15, %d0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0xf0]
.code32
msubs %d15, %d0, %d14, -129

# CHECK-INST: msubs %d15, %d0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0xf0]
.code32
msubs %d15, %d0, %d14, -1

# CHECK-INST: msubs %d15, %d0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0xf0]
.code32
msubs %d15, %d0, %d14, 0

# CHECK-INST: msubs %d15, %d0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0xf0]
.code32
msubs %d15, %d0, %d14, 1

# CHECK-INST: msubs %d15, %d0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0xf0]
.code32
msubs %d15, %d0, %d14, 128

# CHECK-INST: msubs %d15, %d0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0xf0]
.code32
msubs %d15, %d0, %d14, 255

# CHECK-INST: msubs %d15, %d0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0xf0]
.code32
msubs %d15, %d0, %d15, -256

# CHECK-INST: msubs %d15, %d0, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0xf0]
.code32
msubs %d15, %d0, %d15, -129

# CHECK-INST: msubs %d15, %d0, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0xf0]
.code32
msubs %d15, %d0, %d15, -1

# CHECK-INST: msubs %d15, %d0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0xf0]
.code32
msubs %d15, %d0, %d15, 0

# CHECK-INST: msubs %d15, %d0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0xf0]
.code32
msubs %d15, %d0, %d15, 1

# CHECK-INST: msubs %d15, %d0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0xf0]
.code32
msubs %d15, %d0, %d15, 128

# CHECK-INST: msubs %d15, %d0, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0xf0]
.code32
msubs %d15, %d0, %d15, 255

# CHECK-INST: msubs %d15, %d1, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0xf1]
.code32
msubs %d15, %d1, %d0, -256

# CHECK-INST: msubs %d15, %d1, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0xf1]
.code32
msubs %d15, %d1, %d0, -129

# CHECK-INST: msubs %d15, %d1, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0xf1]
.code32
msubs %d15, %d1, %d0, -1

# CHECK-INST: msubs %d15, %d1, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0xf1]
.code32
msubs %d15, %d1, %d0, 0

# CHECK-INST: msubs %d15, %d1, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0xf1]
.code32
msubs %d15, %d1, %d0, 1

# CHECK-INST: msubs %d15, %d1, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0xf1]
.code32
msubs %d15, %d1, %d0, 128

# CHECK-INST: msubs %d15, %d1, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0xf1]
.code32
msubs %d15, %d1, %d0, 255

# CHECK-INST: msubs %d15, %d1, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0xf1]
.code32
msubs %d15, %d1, %d1, -256

# CHECK-INST: msubs %d15, %d1, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0xf1]
.code32
msubs %d15, %d1, %d1, -129

# CHECK-INST: msubs %d15, %d1, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0xf1]
.code32
msubs %d15, %d1, %d1, -1

# CHECK-INST: msubs %d15, %d1, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0xf1]
.code32
msubs %d15, %d1, %d1, 0

# CHECK-INST: msubs %d15, %d1, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0xf1]
.code32
msubs %d15, %d1, %d1, 1

# CHECK-INST: msubs %d15, %d1, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0xf1]
.code32
msubs %d15, %d1, %d1, 128

# CHECK-INST: msubs %d15, %d1, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0xf1]
.code32
msubs %d15, %d1, %d1, 255

# CHECK-INST: msubs %d15, %d1, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0xf1]
.code32
msubs %d15, %d1, %d14, -256

# CHECK-INST: msubs %d15, %d1, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0xf1]
.code32
msubs %d15, %d1, %d14, -129

# CHECK-INST: msubs %d15, %d1, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0xf1]
.code32
msubs %d15, %d1, %d14, -1

# CHECK-INST: msubs %d15, %d1, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0xf1]
.code32
msubs %d15, %d1, %d14, 0

# CHECK-INST: msubs %d15, %d1, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0xf1]
.code32
msubs %d15, %d1, %d14, 1

# CHECK-INST: msubs %d15, %d1, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0xf1]
.code32
msubs %d15, %d1, %d14, 128

# CHECK-INST: msubs %d15, %d1, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0xf1]
.code32
msubs %d15, %d1, %d14, 255

# CHECK-INST: msubs %d15, %d1, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0xf1]
.code32
msubs %d15, %d1, %d15, -256

# CHECK-INST: msubs %d15, %d1, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0xf1]
.code32
msubs %d15, %d1, %d15, -129

# CHECK-INST: msubs %d15, %d1, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0xf1]
.code32
msubs %d15, %d1, %d15, -1

# CHECK-INST: msubs %d15, %d1, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0xf1]
.code32
msubs %d15, %d1, %d15, 0

# CHECK-INST: msubs %d15, %d1, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0xf1]
.code32
msubs %d15, %d1, %d15, 1

# CHECK-INST: msubs %d15, %d1, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0xf1]
.code32
msubs %d15, %d1, %d15, 128

# CHECK-INST: msubs %d15, %d1, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0xf1]
.code32
msubs %d15, %d1, %d15, 255

# CHECK-INST: msubs %d15, %d14, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0xfe]
.code32
msubs %d15, %d14, %d0, -256

# CHECK-INST: msubs %d15, %d14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0xfe]
.code32
msubs %d15, %d14, %d0, -129

# CHECK-INST: msubs %d15, %d14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0xfe]
.code32
msubs %d15, %d14, %d0, -1

# CHECK-INST: msubs %d15, %d14, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0xfe]
.code32
msubs %d15, %d14, %d0, 0

# CHECK-INST: msubs %d15, %d14, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0xfe]
.code32
msubs %d15, %d14, %d0, 1

# CHECK-INST: msubs %d15, %d14, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0xfe]
.code32
msubs %d15, %d14, %d0, 128

# CHECK-INST: msubs %d15, %d14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0xfe]
.code32
msubs %d15, %d14, %d0, 255

# CHECK-INST: msubs %d15, %d14, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0xfe]
.code32
msubs %d15, %d14, %d1, -256

# CHECK-INST: msubs %d15, %d14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0xfe]
.code32
msubs %d15, %d14, %d1, -129

# CHECK-INST: msubs %d15, %d14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0xfe]
.code32
msubs %d15, %d14, %d1, -1

# CHECK-INST: msubs %d15, %d14, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0xfe]
.code32
msubs %d15, %d14, %d1, 0

# CHECK-INST: msubs %d15, %d14, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0xfe]
.code32
msubs %d15, %d14, %d1, 1

# CHECK-INST: msubs %d15, %d14, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0xfe]
.code32
msubs %d15, %d14, %d1, 128

# CHECK-INST: msubs %d15, %d14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0xfe]
.code32
msubs %d15, %d14, %d1, 255

# CHECK-INST: msubs %d15, %d14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0xfe]
.code32
msubs %d15, %d14, %d14, -256

# CHECK-INST: msubs %d15, %d14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0xfe]
.code32
msubs %d15, %d14, %d14, -129

# CHECK-INST: msubs %d15, %d14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0xfe]
.code32
msubs %d15, %d14, %d14, -1

# CHECK-INST: msubs %d15, %d14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0xfe]
.code32
msubs %d15, %d14, %d14, 0

# CHECK-INST: msubs %d15, %d14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0xfe]
.code32
msubs %d15, %d14, %d14, 1

# CHECK-INST: msubs %d15, %d14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0xfe]
.code32
msubs %d15, %d14, %d14, 128

# CHECK-INST: msubs %d15, %d14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0xfe]
.code32
msubs %d15, %d14, %d14, 255

# CHECK-INST: msubs %d15, %d14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0xfe]
.code32
msubs %d15, %d14, %d15, -256

# CHECK-INST: msubs %d15, %d14, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0xfe]
.code32
msubs %d15, %d14, %d15, -129

# CHECK-INST: msubs %d15, %d14, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0xfe]
.code32
msubs %d15, %d14, %d15, -1

# CHECK-INST: msubs %d15, %d14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0xfe]
.code32
msubs %d15, %d14, %d15, 0

# CHECK-INST: msubs %d15, %d14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0xfe]
.code32
msubs %d15, %d14, %d15, 1

# CHECK-INST: msubs %d15, %d14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0xfe]
.code32
msubs %d15, %d14, %d15, 128

# CHECK-INST: msubs %d15, %d14, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0xfe]
.code32
msubs %d15, %d14, %d15, 255

# CHECK-INST: msubs %d15, %d15, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0xff]
.code32
msubs %d15, %d15, %d0, -256

# CHECK-INST: msubs %d15, %d15, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0xff]
.code32
msubs %d15, %d15, %d0, -129

# CHECK-INST: msubs %d15, %d15, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0xff]
.code32
msubs %d15, %d15, %d0, -1

# CHECK-INST: msubs %d15, %d15, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0xff]
.code32
msubs %d15, %d15, %d0, 0

# CHECK-INST: msubs %d15, %d15, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0xff]
.code32
msubs %d15, %d15, %d0, 1

# CHECK-INST: msubs %d15, %d15, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0xff]
.code32
msubs %d15, %d15, %d0, 128

# CHECK-INST: msubs %d15, %d15, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0xff]
.code32
msubs %d15, %d15, %d0, 255

# CHECK-INST: msubs %d15, %d15, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0xff]
.code32
msubs %d15, %d15, %d1, -256

# CHECK-INST: msubs %d15, %d15, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0xff]
.code32
msubs %d15, %d15, %d1, -129

# CHECK-INST: msubs %d15, %d15, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0xff]
.code32
msubs %d15, %d15, %d1, -1

# CHECK-INST: msubs %d15, %d15, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0xff]
.code32
msubs %d15, %d15, %d1, 0

# CHECK-INST: msubs %d15, %d15, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0xff]
.code32
msubs %d15, %d15, %d1, 1

# CHECK-INST: msubs %d15, %d15, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0xff]
.code32
msubs %d15, %d15, %d1, 128

# CHECK-INST: msubs %d15, %d15, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0xff]
.code32
msubs %d15, %d15, %d1, 255

# CHECK-INST: msubs %d15, %d15, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0xff]
.code32
msubs %d15, %d15, %d14, -256

# CHECK-INST: msubs %d15, %d15, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0xff]
.code32
msubs %d15, %d15, %d14, -129

# CHECK-INST: msubs %d15, %d15, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0xff]
.code32
msubs %d15, %d15, %d14, -1

# CHECK-INST: msubs %d15, %d15, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0xff]
.code32
msubs %d15, %d15, %d14, 0

# CHECK-INST: msubs %d15, %d15, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0xff]
.code32
msubs %d15, %d15, %d14, 1

# CHECK-INST: msubs %d15, %d15, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0xff]
.code32
msubs %d15, %d15, %d14, 128

# CHECK-INST: msubs %d15, %d15, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0xff]
.code32
msubs %d15, %d15, %d14, 255

# CHECK-INST: msubs %d15, %d15, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0xff]
.code32
msubs %d15, %d15, %d15, -256

# CHECK-INST: msubs %d15, %d15, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0xff]
.code32
msubs %d15, %d15, %d15, -129

# CHECK-INST: msubs %d15, %d15, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0xff]
.code32
msubs %d15, %d15, %d15, -1

# CHECK-INST: msubs %d15, %d15, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0xff]
.code32
msubs %d15, %d15, %d15, 0

# CHECK-INST: msubs %d15, %d15, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0xff]
.code32
msubs %d15, %d15, %d15, 1

# CHECK-INST: msubs %d15, %d15, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0xff]
.code32
msubs %d15, %d15, %d15, 128

# CHECK-INST: msubs %d15, %d15, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0xff]
.code32
msubs %d15, %d15, %d15, 255

# CHECK-INST: msubs %e0, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xea,0x00]
.code32
msubs %e0, %e0, %d0, %d0

# CHECK-INST: msubs %e0, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xea,0x00]
.code32
msubs %e0, %e0, %d0, %d1

# CHECK-INST: msubs %e0, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xea,0x00]
.code32
msubs %e0, %e0, %d0, %d14

# CHECK-INST: msubs %e0, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xea,0x00]
.code32
msubs %e0, %e0, %d0, %d15

# CHECK-INST: msubs %e0, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xea,0x00]
.code32
msubs %e0, %e0, %d1, %d0

# CHECK-INST: msubs %e0, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xea,0x00]
.code32
msubs %e0, %e0, %d1, %d1

# CHECK-INST: msubs %e0, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xea,0x00]
.code32
msubs %e0, %e0, %d1, %d14

# CHECK-INST: msubs %e0, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xea,0x00]
.code32
msubs %e0, %e0, %d1, %d15

# CHECK-INST: msubs %e0, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xea,0x00]
.code32
msubs %e0, %e0, %d14, %d0

# CHECK-INST: msubs %e0, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xea,0x00]
.code32
msubs %e0, %e0, %d14, %d1

# CHECK-INST: msubs %e0, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xea,0x00]
.code32
msubs %e0, %e0, %d14, %d14

# CHECK-INST: msubs %e0, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xea,0x00]
.code32
msubs %e0, %e0, %d14, %d15

# CHECK-INST: msubs %e0, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xea,0x00]
.code32
msubs %e0, %e0, %d15, %d0

# CHECK-INST: msubs %e0, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xea,0x00]
.code32
msubs %e0, %e0, %d15, %d1

# CHECK-INST: msubs %e0, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xea,0x00]
.code32
msubs %e0, %e0, %d15, %d14

# CHECK-INST: msubs %e0, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xea,0x00]
.code32
msubs %e0, %e0, %d15, %d15

# CHECK-INST: msubs %e0, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xea,0x06]
.code32
msubs %e0, %e6, %d0, %d0

# CHECK-INST: msubs %e0, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xea,0x06]
.code32
msubs %e0, %e6, %d0, %d1

# CHECK-INST: msubs %e0, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xea,0x06]
.code32
msubs %e0, %e6, %d0, %d14

# CHECK-INST: msubs %e0, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xea,0x06]
.code32
msubs %e0, %e6, %d0, %d15

# CHECK-INST: msubs %e0, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xea,0x06]
.code32
msubs %e0, %e6, %d1, %d0

# CHECK-INST: msubs %e0, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xea,0x06]
.code32
msubs %e0, %e6, %d1, %d1

# CHECK-INST: msubs %e0, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xea,0x06]
.code32
msubs %e0, %e6, %d1, %d14

# CHECK-INST: msubs %e0, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xea,0x06]
.code32
msubs %e0, %e6, %d1, %d15

# CHECK-INST: msubs %e0, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xea,0x06]
.code32
msubs %e0, %e6, %d14, %d0

# CHECK-INST: msubs %e0, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xea,0x06]
.code32
msubs %e0, %e6, %d14, %d1

# CHECK-INST: msubs %e0, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xea,0x06]
.code32
msubs %e0, %e6, %d14, %d14

# CHECK-INST: msubs %e0, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xea,0x06]
.code32
msubs %e0, %e6, %d14, %d15

# CHECK-INST: msubs %e0, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xea,0x06]
.code32
msubs %e0, %e6, %d15, %d0

# CHECK-INST: msubs %e0, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xea,0x06]
.code32
msubs %e0, %e6, %d15, %d1

# CHECK-INST: msubs %e0, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xea,0x06]
.code32
msubs %e0, %e6, %d15, %d14

# CHECK-INST: msubs %e0, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xea,0x06]
.code32
msubs %e0, %e6, %d15, %d15

# CHECK-INST: msubs %e0, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xea,0x0e]
.code32
msubs %e0, %e14, %d0, %d0

# CHECK-INST: msubs %e0, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xea,0x0e]
.code32
msubs %e0, %e14, %d0, %d1

# CHECK-INST: msubs %e0, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xea,0x0e]
.code32
msubs %e0, %e14, %d0, %d14

# CHECK-INST: msubs %e0, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xea,0x0e]
.code32
msubs %e0, %e14, %d0, %d15

# CHECK-INST: msubs %e0, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xea,0x0e]
.code32
msubs %e0, %e14, %d1, %d0

# CHECK-INST: msubs %e0, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xea,0x0e]
.code32
msubs %e0, %e14, %d1, %d1

# CHECK-INST: msubs %e0, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xea,0x0e]
.code32
msubs %e0, %e14, %d1, %d14

# CHECK-INST: msubs %e0, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xea,0x0e]
.code32
msubs %e0, %e14, %d1, %d15

# CHECK-INST: msubs %e0, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xea,0x0e]
.code32
msubs %e0, %e14, %d14, %d0

# CHECK-INST: msubs %e0, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xea,0x0e]
.code32
msubs %e0, %e14, %d14, %d1

# CHECK-INST: msubs %e0, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xea,0x0e]
.code32
msubs %e0, %e14, %d14, %d14

# CHECK-INST: msubs %e0, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xea,0x0e]
.code32
msubs %e0, %e14, %d14, %d15

# CHECK-INST: msubs %e0, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xea,0x0e]
.code32
msubs %e0, %e14, %d15, %d0

# CHECK-INST: msubs %e0, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xea,0x0e]
.code32
msubs %e0, %e14, %d15, %d1

# CHECK-INST: msubs %e0, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xea,0x0e]
.code32
msubs %e0, %e14, %d15, %d14

# CHECK-INST: msubs %e0, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xea,0x0e]
.code32
msubs %e0, %e14, %d15, %d15

# CHECK-INST: msubs %e6, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xea,0x60]
.code32
msubs %e6, %e0, %d0, %d0

# CHECK-INST: msubs %e6, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xea,0x60]
.code32
msubs %e6, %e0, %d0, %d1

# CHECK-INST: msubs %e6, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xea,0x60]
.code32
msubs %e6, %e0, %d0, %d14

# CHECK-INST: msubs %e6, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xea,0x60]
.code32
msubs %e6, %e0, %d0, %d15

# CHECK-INST: msubs %e6, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xea,0x60]
.code32
msubs %e6, %e0, %d1, %d0

# CHECK-INST: msubs %e6, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xea,0x60]
.code32
msubs %e6, %e0, %d1, %d1

# CHECK-INST: msubs %e6, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xea,0x60]
.code32
msubs %e6, %e0, %d1, %d14

# CHECK-INST: msubs %e6, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xea,0x60]
.code32
msubs %e6, %e0, %d1, %d15

# CHECK-INST: msubs %e6, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xea,0x60]
.code32
msubs %e6, %e0, %d14, %d0

# CHECK-INST: msubs %e6, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xea,0x60]
.code32
msubs %e6, %e0, %d14, %d1

# CHECK-INST: msubs %e6, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xea,0x60]
.code32
msubs %e6, %e0, %d14, %d14

# CHECK-INST: msubs %e6, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xea,0x60]
.code32
msubs %e6, %e0, %d14, %d15

# CHECK-INST: msubs %e6, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xea,0x60]
.code32
msubs %e6, %e0, %d15, %d0

# CHECK-INST: msubs %e6, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xea,0x60]
.code32
msubs %e6, %e0, %d15, %d1

# CHECK-INST: msubs %e6, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xea,0x60]
.code32
msubs %e6, %e0, %d15, %d14

# CHECK-INST: msubs %e6, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xea,0x60]
.code32
msubs %e6, %e0, %d15, %d15

# CHECK-INST: msubs %e6, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xea,0x66]
.code32
msubs %e6, %e6, %d0, %d0

# CHECK-INST: msubs %e6, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xea,0x66]
.code32
msubs %e6, %e6, %d0, %d1

# CHECK-INST: msubs %e6, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xea,0x66]
.code32
msubs %e6, %e6, %d0, %d14

# CHECK-INST: msubs %e6, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xea,0x66]
.code32
msubs %e6, %e6, %d0, %d15

# CHECK-INST: msubs %e6, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xea,0x66]
.code32
msubs %e6, %e6, %d1, %d0

# CHECK-INST: msubs %e6, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xea,0x66]
.code32
msubs %e6, %e6, %d1, %d1

# CHECK-INST: msubs %e6, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xea,0x66]
.code32
msubs %e6, %e6, %d1, %d14

# CHECK-INST: msubs %e6, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xea,0x66]
.code32
msubs %e6, %e6, %d1, %d15

# CHECK-INST: msubs %e6, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xea,0x66]
.code32
msubs %e6, %e6, %d14, %d0

# CHECK-INST: msubs %e6, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xea,0x66]
.code32
msubs %e6, %e6, %d14, %d1

# CHECK-INST: msubs %e6, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xea,0x66]
.code32
msubs %e6, %e6, %d14, %d14

# CHECK-INST: msubs %e6, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xea,0x66]
.code32
msubs %e6, %e6, %d14, %d15

# CHECK-INST: msubs %e6, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xea,0x66]
.code32
msubs %e6, %e6, %d15, %d0

# CHECK-INST: msubs %e6, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xea,0x66]
.code32
msubs %e6, %e6, %d15, %d1

# CHECK-INST: msubs %e6, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xea,0x66]
.code32
msubs %e6, %e6, %d15, %d14

# CHECK-INST: msubs %e6, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xea,0x66]
.code32
msubs %e6, %e6, %d15, %d15

# CHECK-INST: msubs %e6, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xea,0x6e]
.code32
msubs %e6, %e14, %d0, %d0

# CHECK-INST: msubs %e6, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xea,0x6e]
.code32
msubs %e6, %e14, %d0, %d1

# CHECK-INST: msubs %e6, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xea,0x6e]
.code32
msubs %e6, %e14, %d0, %d14

# CHECK-INST: msubs %e6, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xea,0x6e]
.code32
msubs %e6, %e14, %d0, %d15

# CHECK-INST: msubs %e6, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xea,0x6e]
.code32
msubs %e6, %e14, %d1, %d0

# CHECK-INST: msubs %e6, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xea,0x6e]
.code32
msubs %e6, %e14, %d1, %d1

# CHECK-INST: msubs %e6, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xea,0x6e]
.code32
msubs %e6, %e14, %d1, %d14

# CHECK-INST: msubs %e6, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xea,0x6e]
.code32
msubs %e6, %e14, %d1, %d15

# CHECK-INST: msubs %e6, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xea,0x6e]
.code32
msubs %e6, %e14, %d14, %d0

# CHECK-INST: msubs %e6, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xea,0x6e]
.code32
msubs %e6, %e14, %d14, %d1

# CHECK-INST: msubs %e6, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xea,0x6e]
.code32
msubs %e6, %e14, %d14, %d14

# CHECK-INST: msubs %e6, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xea,0x6e]
.code32
msubs %e6, %e14, %d14, %d15

# CHECK-INST: msubs %e6, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xea,0x6e]
.code32
msubs %e6, %e14, %d15, %d0

# CHECK-INST: msubs %e6, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xea,0x6e]
.code32
msubs %e6, %e14, %d15, %d1

# CHECK-INST: msubs %e6, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xea,0x6e]
.code32
msubs %e6, %e14, %d15, %d14

# CHECK-INST: msubs %e6, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xea,0x6e]
.code32
msubs %e6, %e14, %d15, %d15

# CHECK-INST: msubs %e14, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xea,0xe0]
.code32
msubs %e14, %e0, %d0, %d0

# CHECK-INST: msubs %e14, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xea,0xe0]
.code32
msubs %e14, %e0, %d0, %d1

# CHECK-INST: msubs %e14, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xea,0xe0]
.code32
msubs %e14, %e0, %d0, %d14

# CHECK-INST: msubs %e14, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xea,0xe0]
.code32
msubs %e14, %e0, %d0, %d15

# CHECK-INST: msubs %e14, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xea,0xe0]
.code32
msubs %e14, %e0, %d1, %d0

# CHECK-INST: msubs %e14, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xea,0xe0]
.code32
msubs %e14, %e0, %d1, %d1

# CHECK-INST: msubs %e14, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xea,0xe0]
.code32
msubs %e14, %e0, %d1, %d14

# CHECK-INST: msubs %e14, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xea,0xe0]
.code32
msubs %e14, %e0, %d1, %d15

# CHECK-INST: msubs %e14, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xea,0xe0]
.code32
msubs %e14, %e0, %d14, %d0

# CHECK-INST: msubs %e14, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xea,0xe0]
.code32
msubs %e14, %e0, %d14, %d1

# CHECK-INST: msubs %e14, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xea,0xe0]
.code32
msubs %e14, %e0, %d14, %d14

# CHECK-INST: msubs %e14, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xea,0xe0]
.code32
msubs %e14, %e0, %d14, %d15

# CHECK-INST: msubs %e14, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xea,0xe0]
.code32
msubs %e14, %e0, %d15, %d0

# CHECK-INST: msubs %e14, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xea,0xe0]
.code32
msubs %e14, %e0, %d15, %d1

# CHECK-INST: msubs %e14, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xea,0xe0]
.code32
msubs %e14, %e0, %d15, %d14

# CHECK-INST: msubs %e14, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xea,0xe0]
.code32
msubs %e14, %e0, %d15, %d15

# CHECK-INST: msubs %e14, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xea,0xe6]
.code32
msubs %e14, %e6, %d0, %d0

# CHECK-INST: msubs %e14, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xea,0xe6]
.code32
msubs %e14, %e6, %d0, %d1

# CHECK-INST: msubs %e14, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xea,0xe6]
.code32
msubs %e14, %e6, %d0, %d14

# CHECK-INST: msubs %e14, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xea,0xe6]
.code32
msubs %e14, %e6, %d0, %d15

# CHECK-INST: msubs %e14, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xea,0xe6]
.code32
msubs %e14, %e6, %d1, %d0

# CHECK-INST: msubs %e14, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xea,0xe6]
.code32
msubs %e14, %e6, %d1, %d1

# CHECK-INST: msubs %e14, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xea,0xe6]
.code32
msubs %e14, %e6, %d1, %d14

# CHECK-INST: msubs %e14, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xea,0xe6]
.code32
msubs %e14, %e6, %d1, %d15

# CHECK-INST: msubs %e14, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xea,0xe6]
.code32
msubs %e14, %e6, %d14, %d0

# CHECK-INST: msubs %e14, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xea,0xe6]
.code32
msubs %e14, %e6, %d14, %d1

# CHECK-INST: msubs %e14, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xea,0xe6]
.code32
msubs %e14, %e6, %d14, %d14

# CHECK-INST: msubs %e14, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xea,0xe6]
.code32
msubs %e14, %e6, %d14, %d15

# CHECK-INST: msubs %e14, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xea,0xe6]
.code32
msubs %e14, %e6, %d15, %d0

# CHECK-INST: msubs %e14, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xea,0xe6]
.code32
msubs %e14, %e6, %d15, %d1

# CHECK-INST: msubs %e14, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xea,0xe6]
.code32
msubs %e14, %e6, %d15, %d14

# CHECK-INST: msubs %e14, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xea,0xe6]
.code32
msubs %e14, %e6, %d15, %d15

# CHECK-INST: msubs %e14, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xea,0xee]
.code32
msubs %e14, %e14, %d0, %d0

# CHECK-INST: msubs %e14, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xea,0xee]
.code32
msubs %e14, %e14, %d0, %d1

# CHECK-INST: msubs %e14, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xea,0xee]
.code32
msubs %e14, %e14, %d0, %d14

# CHECK-INST: msubs %e14, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xea,0xee]
.code32
msubs %e14, %e14, %d0, %d15

# CHECK-INST: msubs %e14, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xea,0xee]
.code32
msubs %e14, %e14, %d1, %d0

# CHECK-INST: msubs %e14, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xea,0xee]
.code32
msubs %e14, %e14, %d1, %d1

# CHECK-INST: msubs %e14, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xea,0xee]
.code32
msubs %e14, %e14, %d1, %d14

# CHECK-INST: msubs %e14, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xea,0xee]
.code32
msubs %e14, %e14, %d1, %d15

# CHECK-INST: msubs %e14, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xea,0xee]
.code32
msubs %e14, %e14, %d14, %d0

# CHECK-INST: msubs %e14, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xea,0xee]
.code32
msubs %e14, %e14, %d14, %d1

# CHECK-INST: msubs %e14, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xea,0xee]
.code32
msubs %e14, %e14, %d14, %d14

# CHECK-INST: msubs %e14, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xea,0xee]
.code32
msubs %e14, %e14, %d14, %d15

# CHECK-INST: msubs %e14, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xea,0xee]
.code32
msubs %e14, %e14, %d15, %d0

# CHECK-INST: msubs %e14, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xea,0xee]
.code32
msubs %e14, %e14, %d15, %d1

# CHECK-INST: msubs %e14, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xea,0xee]
.code32
msubs %e14, %e14, %d15, %d14

# CHECK-INST: msubs %e14, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xea,0xee]
.code32
msubs %e14, %e14, %d15, %d15

# CHECK-INST: msubs %e0, %e0, %d0, -256
# CHECK: encoding: [0x33,0x00,0xf0,0x00]
.code32
msubs %e0, %e0, %d0, -256

# CHECK-INST: msubs %e0, %e0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xf7,0x00]
.code32
msubs %e0, %e0, %d0, -129

# CHECK-INST: msubs %e0, %e0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xff,0x00]
.code32
msubs %e0, %e0, %d0, -1

# CHECK-INST: msubs %e0, %e0, %d0, 0
# CHECK: encoding: [0x33,0x00,0xe0,0x00]
.code32
msubs %e0, %e0, %d0, 0

# CHECK-INST: msubs %e0, %e0, %d0, 1
# CHECK: encoding: [0x33,0x10,0xe0,0x00]
.code32
msubs %e0, %e0, %d0, 1

# CHECK-INST: msubs %e0, %e0, %d0, 128
# CHECK: encoding: [0x33,0x00,0xe8,0x00]
.code32
msubs %e0, %e0, %d0, 128

# CHECK-INST: msubs %e0, %e0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xef,0x00]
.code32
msubs %e0, %e0, %d0, 255

# CHECK-INST: msubs %e0, %e0, %d1, -256
# CHECK: encoding: [0x33,0x01,0xf0,0x00]
.code32
msubs %e0, %e0, %d1, -256

# CHECK-INST: msubs %e0, %e0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xf7,0x00]
.code32
msubs %e0, %e0, %d1, -129

# CHECK-INST: msubs %e0, %e0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xff,0x00]
.code32
msubs %e0, %e0, %d1, -1

# CHECK-INST: msubs %e0, %e0, %d1, 0
# CHECK: encoding: [0x33,0x01,0xe0,0x00]
.code32
msubs %e0, %e0, %d1, 0

# CHECK-INST: msubs %e0, %e0, %d1, 1
# CHECK: encoding: [0x33,0x11,0xe0,0x00]
.code32
msubs %e0, %e0, %d1, 1

# CHECK-INST: msubs %e0, %e0, %d1, 128
# CHECK: encoding: [0x33,0x01,0xe8,0x00]
.code32
msubs %e0, %e0, %d1, 128

# CHECK-INST: msubs %e0, %e0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xef,0x00]
.code32
msubs %e0, %e0, %d1, 255

# CHECK-INST: msubs %e0, %e0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xf0,0x00]
.code32
msubs %e0, %e0, %d14, -256

# CHECK-INST: msubs %e0, %e0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xf7,0x00]
.code32
msubs %e0, %e0, %d14, -129

# CHECK-INST: msubs %e0, %e0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xff,0x00]
.code32
msubs %e0, %e0, %d14, -1

# CHECK-INST: msubs %e0, %e0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xe0,0x00]
.code32
msubs %e0, %e0, %d14, 0

# CHECK-INST: msubs %e0, %e0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xe0,0x00]
.code32
msubs %e0, %e0, %d14, 1

# CHECK-INST: msubs %e0, %e0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xe8,0x00]
.code32
msubs %e0, %e0, %d14, 128

# CHECK-INST: msubs %e0, %e0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xef,0x00]
.code32
msubs %e0, %e0, %d14, 255

# CHECK-INST: msubs %e0, %e0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xf0,0x00]
.code32
msubs %e0, %e0, %d15, -256

# CHECK-INST: msubs %e0, %e0, %d15, -129
# CHECK: encoding: [0x33,0xff,0xf7,0x00]
.code32
msubs %e0, %e0, %d15, -129

# CHECK-INST: msubs %e0, %e0, %d15, -1
# CHECK: encoding: [0x33,0xff,0xff,0x00]
.code32
msubs %e0, %e0, %d15, -1

# CHECK-INST: msubs %e0, %e0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xe0,0x00]
.code32
msubs %e0, %e0, %d15, 0

# CHECK-INST: msubs %e0, %e0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xe0,0x00]
.code32
msubs %e0, %e0, %d15, 1

# CHECK-INST: msubs %e0, %e0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xe8,0x00]
.code32
msubs %e0, %e0, %d15, 128

# CHECK-INST: msubs %e0, %e0, %d15, 255
# CHECK: encoding: [0x33,0xff,0xef,0x00]
.code32
msubs %e0, %e0, %d15, 255

# CHECK-INST: msubs %e0, %e6, %d0, -256
# CHECK: encoding: [0x33,0x00,0xf0,0x06]
.code32
msubs %e0, %e6, %d0, -256

# CHECK-INST: msubs %e0, %e6, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xf7,0x06]
.code32
msubs %e0, %e6, %d0, -129

# CHECK-INST: msubs %e0, %e6, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xff,0x06]
.code32
msubs %e0, %e6, %d0, -1

# CHECK-INST: msubs %e0, %e6, %d0, 0
# CHECK: encoding: [0x33,0x00,0xe0,0x06]
.code32
msubs %e0, %e6, %d0, 0

# CHECK-INST: msubs %e0, %e6, %d0, 1
# CHECK: encoding: [0x33,0x10,0xe0,0x06]
.code32
msubs %e0, %e6, %d0, 1

# CHECK-INST: msubs %e0, %e6, %d0, 128
# CHECK: encoding: [0x33,0x00,0xe8,0x06]
.code32
msubs %e0, %e6, %d0, 128

# CHECK-INST: msubs %e0, %e6, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xef,0x06]
.code32
msubs %e0, %e6, %d0, 255

# CHECK-INST: msubs %e0, %e6, %d1, -256
# CHECK: encoding: [0x33,0x01,0xf0,0x06]
.code32
msubs %e0, %e6, %d1, -256

# CHECK-INST: msubs %e0, %e6, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xf7,0x06]
.code32
msubs %e0, %e6, %d1, -129

# CHECK-INST: msubs %e0, %e6, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xff,0x06]
.code32
msubs %e0, %e6, %d1, -1

# CHECK-INST: msubs %e0, %e6, %d1, 0
# CHECK: encoding: [0x33,0x01,0xe0,0x06]
.code32
msubs %e0, %e6, %d1, 0

# CHECK-INST: msubs %e0, %e6, %d1, 1
# CHECK: encoding: [0x33,0x11,0xe0,0x06]
.code32
msubs %e0, %e6, %d1, 1

# CHECK-INST: msubs %e0, %e6, %d1, 128
# CHECK: encoding: [0x33,0x01,0xe8,0x06]
.code32
msubs %e0, %e6, %d1, 128

# CHECK-INST: msubs %e0, %e6, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xef,0x06]
.code32
msubs %e0, %e6, %d1, 255

# CHECK-INST: msubs %e0, %e6, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xf0,0x06]
.code32
msubs %e0, %e6, %d14, -256

# CHECK-INST: msubs %e0, %e6, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xf7,0x06]
.code32
msubs %e0, %e6, %d14, -129

# CHECK-INST: msubs %e0, %e6, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xff,0x06]
.code32
msubs %e0, %e6, %d14, -1

# CHECK-INST: msubs %e0, %e6, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xe0,0x06]
.code32
msubs %e0, %e6, %d14, 0

# CHECK-INST: msubs %e0, %e6, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xe0,0x06]
.code32
msubs %e0, %e6, %d14, 1

# CHECK-INST: msubs %e0, %e6, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xe8,0x06]
.code32
msubs %e0, %e6, %d14, 128

# CHECK-INST: msubs %e0, %e6, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xef,0x06]
.code32
msubs %e0, %e6, %d14, 255

# CHECK-INST: msubs %e0, %e6, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xf0,0x06]
.code32
msubs %e0, %e6, %d15, -256

# CHECK-INST: msubs %e0, %e6, %d15, -129
# CHECK: encoding: [0x33,0xff,0xf7,0x06]
.code32
msubs %e0, %e6, %d15, -129

# CHECK-INST: msubs %e0, %e6, %d15, -1
# CHECK: encoding: [0x33,0xff,0xff,0x06]
.code32
msubs %e0, %e6, %d15, -1

# CHECK-INST: msubs %e0, %e6, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xe0,0x06]
.code32
msubs %e0, %e6, %d15, 0

# CHECK-INST: msubs %e0, %e6, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xe0,0x06]
.code32
msubs %e0, %e6, %d15, 1

# CHECK-INST: msubs %e0, %e6, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xe8,0x06]
.code32
msubs %e0, %e6, %d15, 128

# CHECK-INST: msubs %e0, %e6, %d15, 255
# CHECK: encoding: [0x33,0xff,0xef,0x06]
.code32
msubs %e0, %e6, %d15, 255

# CHECK-INST: msubs %e0, %e14, %d0, -256
# CHECK: encoding: [0x33,0x00,0xf0,0x0e]
.code32
msubs %e0, %e14, %d0, -256

# CHECK-INST: msubs %e0, %e14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xf7,0x0e]
.code32
msubs %e0, %e14, %d0, -129

# CHECK-INST: msubs %e0, %e14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xff,0x0e]
.code32
msubs %e0, %e14, %d0, -1

# CHECK-INST: msubs %e0, %e14, %d0, 0
# CHECK: encoding: [0x33,0x00,0xe0,0x0e]
.code32
msubs %e0, %e14, %d0, 0

# CHECK-INST: msubs %e0, %e14, %d0, 1
# CHECK: encoding: [0x33,0x10,0xe0,0x0e]
.code32
msubs %e0, %e14, %d0, 1

# CHECK-INST: msubs %e0, %e14, %d0, 128
# CHECK: encoding: [0x33,0x00,0xe8,0x0e]
.code32
msubs %e0, %e14, %d0, 128

# CHECK-INST: msubs %e0, %e14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xef,0x0e]
.code32
msubs %e0, %e14, %d0, 255

# CHECK-INST: msubs %e0, %e14, %d1, -256
# CHECK: encoding: [0x33,0x01,0xf0,0x0e]
.code32
msubs %e0, %e14, %d1, -256

# CHECK-INST: msubs %e0, %e14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xf7,0x0e]
.code32
msubs %e0, %e14, %d1, -129

# CHECK-INST: msubs %e0, %e14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xff,0x0e]
.code32
msubs %e0, %e14, %d1, -1

# CHECK-INST: msubs %e0, %e14, %d1, 0
# CHECK: encoding: [0x33,0x01,0xe0,0x0e]
.code32
msubs %e0, %e14, %d1, 0

# CHECK-INST: msubs %e0, %e14, %d1, 1
# CHECK: encoding: [0x33,0x11,0xe0,0x0e]
.code32
msubs %e0, %e14, %d1, 1

# CHECK-INST: msubs %e0, %e14, %d1, 128
# CHECK: encoding: [0x33,0x01,0xe8,0x0e]
.code32
msubs %e0, %e14, %d1, 128

# CHECK-INST: msubs %e0, %e14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xef,0x0e]
.code32
msubs %e0, %e14, %d1, 255

# CHECK-INST: msubs %e0, %e14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xf0,0x0e]
.code32
msubs %e0, %e14, %d14, -256

# CHECK-INST: msubs %e0, %e14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xf7,0x0e]
.code32
msubs %e0, %e14, %d14, -129

# CHECK-INST: msubs %e0, %e14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xff,0x0e]
.code32
msubs %e0, %e14, %d14, -1

# CHECK-INST: msubs %e0, %e14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xe0,0x0e]
.code32
msubs %e0, %e14, %d14, 0

# CHECK-INST: msubs %e0, %e14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xe0,0x0e]
.code32
msubs %e0, %e14, %d14, 1

# CHECK-INST: msubs %e0, %e14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xe8,0x0e]
.code32
msubs %e0, %e14, %d14, 128

# CHECK-INST: msubs %e0, %e14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xef,0x0e]
.code32
msubs %e0, %e14, %d14, 255

# CHECK-INST: msubs %e0, %e14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xf0,0x0e]
.code32
msubs %e0, %e14, %d15, -256

# CHECK-INST: msubs %e0, %e14, %d15, -129
# CHECK: encoding: [0x33,0xff,0xf7,0x0e]
.code32
msubs %e0, %e14, %d15, -129

# CHECK-INST: msubs %e0, %e14, %d15, -1
# CHECK: encoding: [0x33,0xff,0xff,0x0e]
.code32
msubs %e0, %e14, %d15, -1

# CHECK-INST: msubs %e0, %e14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xe0,0x0e]
.code32
msubs %e0, %e14, %d15, 0

# CHECK-INST: msubs %e0, %e14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xe0,0x0e]
.code32
msubs %e0, %e14, %d15, 1

# CHECK-INST: msubs %e0, %e14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xe8,0x0e]
.code32
msubs %e0, %e14, %d15, 128

# CHECK-INST: msubs %e0, %e14, %d15, 255
# CHECK: encoding: [0x33,0xff,0xef,0x0e]
.code32
msubs %e0, %e14, %d15, 255

# CHECK-INST: msubs %e6, %e0, %d0, -256
# CHECK: encoding: [0x33,0x00,0xf0,0x60]
.code32
msubs %e6, %e0, %d0, -256

# CHECK-INST: msubs %e6, %e0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xf7,0x60]
.code32
msubs %e6, %e0, %d0, -129

# CHECK-INST: msubs %e6, %e0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xff,0x60]
.code32
msubs %e6, %e0, %d0, -1

# CHECK-INST: msubs %e6, %e0, %d0, 0
# CHECK: encoding: [0x33,0x00,0xe0,0x60]
.code32
msubs %e6, %e0, %d0, 0

# CHECK-INST: msubs %e6, %e0, %d0, 1
# CHECK: encoding: [0x33,0x10,0xe0,0x60]
.code32
msubs %e6, %e0, %d0, 1

# CHECK-INST: msubs %e6, %e0, %d0, 128
# CHECK: encoding: [0x33,0x00,0xe8,0x60]
.code32
msubs %e6, %e0, %d0, 128

# CHECK-INST: msubs %e6, %e0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xef,0x60]
.code32
msubs %e6, %e0, %d0, 255

# CHECK-INST: msubs %e6, %e0, %d1, -256
# CHECK: encoding: [0x33,0x01,0xf0,0x60]
.code32
msubs %e6, %e0, %d1, -256

# CHECK-INST: msubs %e6, %e0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xf7,0x60]
.code32
msubs %e6, %e0, %d1, -129

# CHECK-INST: msubs %e6, %e0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xff,0x60]
.code32
msubs %e6, %e0, %d1, -1

# CHECK-INST: msubs %e6, %e0, %d1, 0
# CHECK: encoding: [0x33,0x01,0xe0,0x60]
.code32
msubs %e6, %e0, %d1, 0

# CHECK-INST: msubs %e6, %e0, %d1, 1
# CHECK: encoding: [0x33,0x11,0xe0,0x60]
.code32
msubs %e6, %e0, %d1, 1

# CHECK-INST: msubs %e6, %e0, %d1, 128
# CHECK: encoding: [0x33,0x01,0xe8,0x60]
.code32
msubs %e6, %e0, %d1, 128

# CHECK-INST: msubs %e6, %e0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xef,0x60]
.code32
msubs %e6, %e0, %d1, 255

# CHECK-INST: msubs %e6, %e0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xf0,0x60]
.code32
msubs %e6, %e0, %d14, -256

# CHECK-INST: msubs %e6, %e0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xf7,0x60]
.code32
msubs %e6, %e0, %d14, -129

# CHECK-INST: msubs %e6, %e0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xff,0x60]
.code32
msubs %e6, %e0, %d14, -1

# CHECK-INST: msubs %e6, %e0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xe0,0x60]
.code32
msubs %e6, %e0, %d14, 0

# CHECK-INST: msubs %e6, %e0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xe0,0x60]
.code32
msubs %e6, %e0, %d14, 1

# CHECK-INST: msubs %e6, %e0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xe8,0x60]
.code32
msubs %e6, %e0, %d14, 128

# CHECK-INST: msubs %e6, %e0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xef,0x60]
.code32
msubs %e6, %e0, %d14, 255

# CHECK-INST: msubs %e6, %e0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xf0,0x60]
.code32
msubs %e6, %e0, %d15, -256

# CHECK-INST: msubs %e6, %e0, %d15, -129
# CHECK: encoding: [0x33,0xff,0xf7,0x60]
.code32
msubs %e6, %e0, %d15, -129

# CHECK-INST: msubs %e6, %e0, %d15, -1
# CHECK: encoding: [0x33,0xff,0xff,0x60]
.code32
msubs %e6, %e0, %d15, -1

# CHECK-INST: msubs %e6, %e0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xe0,0x60]
.code32
msubs %e6, %e0, %d15, 0

# CHECK-INST: msubs %e6, %e0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xe0,0x60]
.code32
msubs %e6, %e0, %d15, 1

# CHECK-INST: msubs %e6, %e0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xe8,0x60]
.code32
msubs %e6, %e0, %d15, 128

# CHECK-INST: msubs %e6, %e0, %d15, 255
# CHECK: encoding: [0x33,0xff,0xef,0x60]
.code32
msubs %e6, %e0, %d15, 255

# CHECK-INST: msubs %e6, %e6, %d0, -256
# CHECK: encoding: [0x33,0x00,0xf0,0x66]
.code32
msubs %e6, %e6, %d0, -256

# CHECK-INST: msubs %e6, %e6, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xf7,0x66]
.code32
msubs %e6, %e6, %d0, -129

# CHECK-INST: msubs %e6, %e6, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xff,0x66]
.code32
msubs %e6, %e6, %d0, -1

# CHECK-INST: msubs %e6, %e6, %d0, 0
# CHECK: encoding: [0x33,0x00,0xe0,0x66]
.code32
msubs %e6, %e6, %d0, 0

# CHECK-INST: msubs %e6, %e6, %d0, 1
# CHECK: encoding: [0x33,0x10,0xe0,0x66]
.code32
msubs %e6, %e6, %d0, 1

# CHECK-INST: msubs %e6, %e6, %d0, 128
# CHECK: encoding: [0x33,0x00,0xe8,0x66]
.code32
msubs %e6, %e6, %d0, 128

# CHECK-INST: msubs %e6, %e6, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xef,0x66]
.code32
msubs %e6, %e6, %d0, 255

# CHECK-INST: msubs %e6, %e6, %d1, -256
# CHECK: encoding: [0x33,0x01,0xf0,0x66]
.code32
msubs %e6, %e6, %d1, -256

# CHECK-INST: msubs %e6, %e6, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xf7,0x66]
.code32
msubs %e6, %e6, %d1, -129

# CHECK-INST: msubs %e6, %e6, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xff,0x66]
.code32
msubs %e6, %e6, %d1, -1

# CHECK-INST: msubs %e6, %e6, %d1, 0
# CHECK: encoding: [0x33,0x01,0xe0,0x66]
.code32
msubs %e6, %e6, %d1, 0

# CHECK-INST: msubs %e6, %e6, %d1, 1
# CHECK: encoding: [0x33,0x11,0xe0,0x66]
.code32
msubs %e6, %e6, %d1, 1

# CHECK-INST: msubs %e6, %e6, %d1, 128
# CHECK: encoding: [0x33,0x01,0xe8,0x66]
.code32
msubs %e6, %e6, %d1, 128

# CHECK-INST: msubs %e6, %e6, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xef,0x66]
.code32
msubs %e6, %e6, %d1, 255

# CHECK-INST: msubs %e6, %e6, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xf0,0x66]
.code32
msubs %e6, %e6, %d14, -256

# CHECK-INST: msubs %e6, %e6, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xf7,0x66]
.code32
msubs %e6, %e6, %d14, -129

# CHECK-INST: msubs %e6, %e6, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xff,0x66]
.code32
msubs %e6, %e6, %d14, -1

# CHECK-INST: msubs %e6, %e6, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xe0,0x66]
.code32
msubs %e6, %e6, %d14, 0

# CHECK-INST: msubs %e6, %e6, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xe0,0x66]
.code32
msubs %e6, %e6, %d14, 1

# CHECK-INST: msubs %e6, %e6, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xe8,0x66]
.code32
msubs %e6, %e6, %d14, 128

# CHECK-INST: msubs %e6, %e6, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xef,0x66]
.code32
msubs %e6, %e6, %d14, 255

# CHECK-INST: msubs %e6, %e6, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xf0,0x66]
.code32
msubs %e6, %e6, %d15, -256

# CHECK-INST: msubs %e6, %e6, %d15, -129
# CHECK: encoding: [0x33,0xff,0xf7,0x66]
.code32
msubs %e6, %e6, %d15, -129

# CHECK-INST: msubs %e6, %e6, %d15, -1
# CHECK: encoding: [0x33,0xff,0xff,0x66]
.code32
msubs %e6, %e6, %d15, -1

# CHECK-INST: msubs %e6, %e6, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xe0,0x66]
.code32
msubs %e6, %e6, %d15, 0

# CHECK-INST: msubs %e6, %e6, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xe0,0x66]
.code32
msubs %e6, %e6, %d15, 1

# CHECK-INST: msubs %e6, %e6, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xe8,0x66]
.code32
msubs %e6, %e6, %d15, 128

# CHECK-INST: msubs %e6, %e6, %d15, 255
# CHECK: encoding: [0x33,0xff,0xef,0x66]
.code32
msubs %e6, %e6, %d15, 255

# CHECK-INST: msubs %e6, %e14, %d0, -256
# CHECK: encoding: [0x33,0x00,0xf0,0x6e]
.code32
msubs %e6, %e14, %d0, -256

# CHECK-INST: msubs %e6, %e14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xf7,0x6e]
.code32
msubs %e6, %e14, %d0, -129

# CHECK-INST: msubs %e6, %e14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xff,0x6e]
.code32
msubs %e6, %e14, %d0, -1

# CHECK-INST: msubs %e6, %e14, %d0, 0
# CHECK: encoding: [0x33,0x00,0xe0,0x6e]
.code32
msubs %e6, %e14, %d0, 0

# CHECK-INST: msubs %e6, %e14, %d0, 1
# CHECK: encoding: [0x33,0x10,0xe0,0x6e]
.code32
msubs %e6, %e14, %d0, 1

# CHECK-INST: msubs %e6, %e14, %d0, 128
# CHECK: encoding: [0x33,0x00,0xe8,0x6e]
.code32
msubs %e6, %e14, %d0, 128

# CHECK-INST: msubs %e6, %e14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xef,0x6e]
.code32
msubs %e6, %e14, %d0, 255

# CHECK-INST: msubs %e6, %e14, %d1, -256
# CHECK: encoding: [0x33,0x01,0xf0,0x6e]
.code32
msubs %e6, %e14, %d1, -256

# CHECK-INST: msubs %e6, %e14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xf7,0x6e]
.code32
msubs %e6, %e14, %d1, -129

# CHECK-INST: msubs %e6, %e14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xff,0x6e]
.code32
msubs %e6, %e14, %d1, -1

# CHECK-INST: msubs %e6, %e14, %d1, 0
# CHECK: encoding: [0x33,0x01,0xe0,0x6e]
.code32
msubs %e6, %e14, %d1, 0

# CHECK-INST: msubs %e6, %e14, %d1, 1
# CHECK: encoding: [0x33,0x11,0xe0,0x6e]
.code32
msubs %e6, %e14, %d1, 1

# CHECK-INST: msubs %e6, %e14, %d1, 128
# CHECK: encoding: [0x33,0x01,0xe8,0x6e]
.code32
msubs %e6, %e14, %d1, 128

# CHECK-INST: msubs %e6, %e14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xef,0x6e]
.code32
msubs %e6, %e14, %d1, 255

# CHECK-INST: msubs %e6, %e14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xf0,0x6e]
.code32
msubs %e6, %e14, %d14, -256

# CHECK-INST: msubs %e6, %e14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xf7,0x6e]
.code32
msubs %e6, %e14, %d14, -129

# CHECK-INST: msubs %e6, %e14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xff,0x6e]
.code32
msubs %e6, %e14, %d14, -1

# CHECK-INST: msubs %e6, %e14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xe0,0x6e]
.code32
msubs %e6, %e14, %d14, 0

# CHECK-INST: msubs %e6, %e14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xe0,0x6e]
.code32
msubs %e6, %e14, %d14, 1

# CHECK-INST: msubs %e6, %e14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xe8,0x6e]
.code32
msubs %e6, %e14, %d14, 128

# CHECK-INST: msubs %e6, %e14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xef,0x6e]
.code32
msubs %e6, %e14, %d14, 255

# CHECK-INST: msubs %e6, %e14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xf0,0x6e]
.code32
msubs %e6, %e14, %d15, -256

# CHECK-INST: msubs %e6, %e14, %d15, -129
# CHECK: encoding: [0x33,0xff,0xf7,0x6e]
.code32
msubs %e6, %e14, %d15, -129

# CHECK-INST: msubs %e6, %e14, %d15, -1
# CHECK: encoding: [0x33,0xff,0xff,0x6e]
.code32
msubs %e6, %e14, %d15, -1

# CHECK-INST: msubs %e6, %e14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xe0,0x6e]
.code32
msubs %e6, %e14, %d15, 0

# CHECK-INST: msubs %e6, %e14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xe0,0x6e]
.code32
msubs %e6, %e14, %d15, 1

# CHECK-INST: msubs %e6, %e14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xe8,0x6e]
.code32
msubs %e6, %e14, %d15, 128

# CHECK-INST: msubs %e6, %e14, %d15, 255
# CHECK: encoding: [0x33,0xff,0xef,0x6e]
.code32
msubs %e6, %e14, %d15, 255

# CHECK-INST: msubs %e14, %e0, %d0, -256
# CHECK: encoding: [0x33,0x00,0xf0,0xe0]
.code32
msubs %e14, %e0, %d0, -256

# CHECK-INST: msubs %e14, %e0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xf7,0xe0]
.code32
msubs %e14, %e0, %d0, -129

# CHECK-INST: msubs %e14, %e0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xff,0xe0]
.code32
msubs %e14, %e0, %d0, -1

# CHECK-INST: msubs %e14, %e0, %d0, 0
# CHECK: encoding: [0x33,0x00,0xe0,0xe0]
.code32
msubs %e14, %e0, %d0, 0

# CHECK-INST: msubs %e14, %e0, %d0, 1
# CHECK: encoding: [0x33,0x10,0xe0,0xe0]
.code32
msubs %e14, %e0, %d0, 1

# CHECK-INST: msubs %e14, %e0, %d0, 128
# CHECK: encoding: [0x33,0x00,0xe8,0xe0]
.code32
msubs %e14, %e0, %d0, 128

# CHECK-INST: msubs %e14, %e0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xef,0xe0]
.code32
msubs %e14, %e0, %d0, 255

# CHECK-INST: msubs %e14, %e0, %d1, -256
# CHECK: encoding: [0x33,0x01,0xf0,0xe0]
.code32
msubs %e14, %e0, %d1, -256

# CHECK-INST: msubs %e14, %e0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xf7,0xe0]
.code32
msubs %e14, %e0, %d1, -129

# CHECK-INST: msubs %e14, %e0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xff,0xe0]
.code32
msubs %e14, %e0, %d1, -1

# CHECK-INST: msubs %e14, %e0, %d1, 0
# CHECK: encoding: [0x33,0x01,0xe0,0xe0]
.code32
msubs %e14, %e0, %d1, 0

# CHECK-INST: msubs %e14, %e0, %d1, 1
# CHECK: encoding: [0x33,0x11,0xe0,0xe0]
.code32
msubs %e14, %e0, %d1, 1

# CHECK-INST: msubs %e14, %e0, %d1, 128
# CHECK: encoding: [0x33,0x01,0xe8,0xe0]
.code32
msubs %e14, %e0, %d1, 128

# CHECK-INST: msubs %e14, %e0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xef,0xe0]
.code32
msubs %e14, %e0, %d1, 255

# CHECK-INST: msubs %e14, %e0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xf0,0xe0]
.code32
msubs %e14, %e0, %d14, -256

# CHECK-INST: msubs %e14, %e0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xf7,0xe0]
.code32
msubs %e14, %e0, %d14, -129

# CHECK-INST: msubs %e14, %e0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xff,0xe0]
.code32
msubs %e14, %e0, %d14, -1

# CHECK-INST: msubs %e14, %e0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xe0,0xe0]
.code32
msubs %e14, %e0, %d14, 0

# CHECK-INST: msubs %e14, %e0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xe0,0xe0]
.code32
msubs %e14, %e0, %d14, 1

# CHECK-INST: msubs %e14, %e0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xe8,0xe0]
.code32
msubs %e14, %e0, %d14, 128

# CHECK-INST: msubs %e14, %e0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xef,0xe0]
.code32
msubs %e14, %e0, %d14, 255

# CHECK-INST: msubs %e14, %e0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xf0,0xe0]
.code32
msubs %e14, %e0, %d15, -256

# CHECK-INST: msubs %e14, %e0, %d15, -129
# CHECK: encoding: [0x33,0xff,0xf7,0xe0]
.code32
msubs %e14, %e0, %d15, -129

# CHECK-INST: msubs %e14, %e0, %d15, -1
# CHECK: encoding: [0x33,0xff,0xff,0xe0]
.code32
msubs %e14, %e0, %d15, -1

# CHECK-INST: msubs %e14, %e0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xe0,0xe0]
.code32
msubs %e14, %e0, %d15, 0

# CHECK-INST: msubs %e14, %e0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xe0,0xe0]
.code32
msubs %e14, %e0, %d15, 1

# CHECK-INST: msubs %e14, %e0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xe8,0xe0]
.code32
msubs %e14, %e0, %d15, 128

# CHECK-INST: msubs %e14, %e0, %d15, 255
# CHECK: encoding: [0x33,0xff,0xef,0xe0]
.code32
msubs %e14, %e0, %d15, 255

# CHECK-INST: msubs %e14, %e6, %d0, -256
# CHECK: encoding: [0x33,0x00,0xf0,0xe6]
.code32
msubs %e14, %e6, %d0, -256

# CHECK-INST: msubs %e14, %e6, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xf7,0xe6]
.code32
msubs %e14, %e6, %d0, -129

# CHECK-INST: msubs %e14, %e6, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xff,0xe6]
.code32
msubs %e14, %e6, %d0, -1

# CHECK-INST: msubs %e14, %e6, %d0, 0
# CHECK: encoding: [0x33,0x00,0xe0,0xe6]
.code32
msubs %e14, %e6, %d0, 0

# CHECK-INST: msubs %e14, %e6, %d0, 1
# CHECK: encoding: [0x33,0x10,0xe0,0xe6]
.code32
msubs %e14, %e6, %d0, 1

# CHECK-INST: msubs %e14, %e6, %d0, 128
# CHECK: encoding: [0x33,0x00,0xe8,0xe6]
.code32
msubs %e14, %e6, %d0, 128

# CHECK-INST: msubs %e14, %e6, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xef,0xe6]
.code32
msubs %e14, %e6, %d0, 255

# CHECK-INST: msubs %e14, %e6, %d1, -256
# CHECK: encoding: [0x33,0x01,0xf0,0xe6]
.code32
msubs %e14, %e6, %d1, -256

# CHECK-INST: msubs %e14, %e6, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xf7,0xe6]
.code32
msubs %e14, %e6, %d1, -129

# CHECK-INST: msubs %e14, %e6, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xff,0xe6]
.code32
msubs %e14, %e6, %d1, -1

# CHECK-INST: msubs %e14, %e6, %d1, 0
# CHECK: encoding: [0x33,0x01,0xe0,0xe6]
.code32
msubs %e14, %e6, %d1, 0

# CHECK-INST: msubs %e14, %e6, %d1, 1
# CHECK: encoding: [0x33,0x11,0xe0,0xe6]
.code32
msubs %e14, %e6, %d1, 1

# CHECK-INST: msubs %e14, %e6, %d1, 128
# CHECK: encoding: [0x33,0x01,0xe8,0xe6]
.code32
msubs %e14, %e6, %d1, 128

# CHECK-INST: msubs %e14, %e6, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xef,0xe6]
.code32
msubs %e14, %e6, %d1, 255

# CHECK-INST: msubs %e14, %e6, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xf0,0xe6]
.code32
msubs %e14, %e6, %d14, -256

# CHECK-INST: msubs %e14, %e6, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xf7,0xe6]
.code32
msubs %e14, %e6, %d14, -129

# CHECK-INST: msubs %e14, %e6, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xff,0xe6]
.code32
msubs %e14, %e6, %d14, -1

# CHECK-INST: msubs %e14, %e6, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xe0,0xe6]
.code32
msubs %e14, %e6, %d14, 0

# CHECK-INST: msubs %e14, %e6, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xe0,0xe6]
.code32
msubs %e14, %e6, %d14, 1

# CHECK-INST: msubs %e14, %e6, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xe8,0xe6]
.code32
msubs %e14, %e6, %d14, 128

# CHECK-INST: msubs %e14, %e6, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xef,0xe6]
.code32
msubs %e14, %e6, %d14, 255

# CHECK-INST: msubs %e14, %e6, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xf0,0xe6]
.code32
msubs %e14, %e6, %d15, -256

# CHECK-INST: msubs %e14, %e6, %d15, -129
# CHECK: encoding: [0x33,0xff,0xf7,0xe6]
.code32
msubs %e14, %e6, %d15, -129

# CHECK-INST: msubs %e14, %e6, %d15, -1
# CHECK: encoding: [0x33,0xff,0xff,0xe6]
.code32
msubs %e14, %e6, %d15, -1

# CHECK-INST: msubs %e14, %e6, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xe0,0xe6]
.code32
msubs %e14, %e6, %d15, 0

# CHECK-INST: msubs %e14, %e6, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xe0,0xe6]
.code32
msubs %e14, %e6, %d15, 1

# CHECK-INST: msubs %e14, %e6, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xe8,0xe6]
.code32
msubs %e14, %e6, %d15, 128

# CHECK-INST: msubs %e14, %e6, %d15, 255
# CHECK: encoding: [0x33,0xff,0xef,0xe6]
.code32
msubs %e14, %e6, %d15, 255

# CHECK-INST: msubs %e14, %e14, %d0, -256
# CHECK: encoding: [0x33,0x00,0xf0,0xee]
.code32
msubs %e14, %e14, %d0, -256

# CHECK-INST: msubs %e14, %e14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xf7,0xee]
.code32
msubs %e14, %e14, %d0, -129

# CHECK-INST: msubs %e14, %e14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xff,0xee]
.code32
msubs %e14, %e14, %d0, -1

# CHECK-INST: msubs %e14, %e14, %d0, 0
# CHECK: encoding: [0x33,0x00,0xe0,0xee]
.code32
msubs %e14, %e14, %d0, 0

# CHECK-INST: msubs %e14, %e14, %d0, 1
# CHECK: encoding: [0x33,0x10,0xe0,0xee]
.code32
msubs %e14, %e14, %d0, 1

# CHECK-INST: msubs %e14, %e14, %d0, 128
# CHECK: encoding: [0x33,0x00,0xe8,0xee]
.code32
msubs %e14, %e14, %d0, 128

# CHECK-INST: msubs %e14, %e14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xef,0xee]
.code32
msubs %e14, %e14, %d0, 255

# CHECK-INST: msubs %e14, %e14, %d1, -256
# CHECK: encoding: [0x33,0x01,0xf0,0xee]
.code32
msubs %e14, %e14, %d1, -256

# CHECK-INST: msubs %e14, %e14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xf7,0xee]
.code32
msubs %e14, %e14, %d1, -129

# CHECK-INST: msubs %e14, %e14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xff,0xee]
.code32
msubs %e14, %e14, %d1, -1

# CHECK-INST: msubs %e14, %e14, %d1, 0
# CHECK: encoding: [0x33,0x01,0xe0,0xee]
.code32
msubs %e14, %e14, %d1, 0

# CHECK-INST: msubs %e14, %e14, %d1, 1
# CHECK: encoding: [0x33,0x11,0xe0,0xee]
.code32
msubs %e14, %e14, %d1, 1

# CHECK-INST: msubs %e14, %e14, %d1, 128
# CHECK: encoding: [0x33,0x01,0xe8,0xee]
.code32
msubs %e14, %e14, %d1, 128

# CHECK-INST: msubs %e14, %e14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xef,0xee]
.code32
msubs %e14, %e14, %d1, 255

# CHECK-INST: msubs %e14, %e14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xf0,0xee]
.code32
msubs %e14, %e14, %d14, -256

# CHECK-INST: msubs %e14, %e14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xf7,0xee]
.code32
msubs %e14, %e14, %d14, -129

# CHECK-INST: msubs %e14, %e14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xff,0xee]
.code32
msubs %e14, %e14, %d14, -1

# CHECK-INST: msubs %e14, %e14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xe0,0xee]
.code32
msubs %e14, %e14, %d14, 0

# CHECK-INST: msubs %e14, %e14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xe0,0xee]
.code32
msubs %e14, %e14, %d14, 1

# CHECK-INST: msubs %e14, %e14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xe8,0xee]
.code32
msubs %e14, %e14, %d14, 128

# CHECK-INST: msubs %e14, %e14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xef,0xee]
.code32
msubs %e14, %e14, %d14, 255

# CHECK-INST: msubs %e14, %e14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xf0,0xee]
.code32
msubs %e14, %e14, %d15, -256

# CHECK-INST: msubs %e14, %e14, %d15, -129
# CHECK: encoding: [0x33,0xff,0xf7,0xee]
.code32
msubs %e14, %e14, %d15, -129

# CHECK-INST: msubs %e14, %e14, %d15, -1
# CHECK: encoding: [0x33,0xff,0xff,0xee]
.code32
msubs %e14, %e14, %d15, -1

# CHECK-INST: msubs %e14, %e14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xe0,0xee]
.code32
msubs %e14, %e14, %d15, 0

# CHECK-INST: msubs %e14, %e14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xe0,0xee]
.code32
msubs %e14, %e14, %d15, 1

# CHECK-INST: msubs %e14, %e14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xe8,0xee]
.code32
msubs %e14, %e14, %d15, 128

# CHECK-INST: msubs %e14, %e14, %d15, 255
# CHECK: encoding: [0x33,0xff,0xef,0xee]
.code32
msubs %e14, %e14, %d15, 255

# CHECK-INST: msubs.u %d0, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0x00]
.code32
msubs.u %d0, %d0, %d0, %d0

# CHECK-INST: msubs.u %d0, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0x00]
.code32
msubs.u %d0, %d0, %d0, %d1

# CHECK-INST: msubs.u %d0, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0x00]
.code32
msubs.u %d0, %d0, %d0, %d14

# CHECK-INST: msubs.u %d0, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0x00]
.code32
msubs.u %d0, %d0, %d0, %d15

# CHECK-INST: msubs.u %d0, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0x00]
.code32
msubs.u %d0, %d0, %d1, %d0

# CHECK-INST: msubs.u %d0, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0x00]
.code32
msubs.u %d0, %d0, %d1, %d1

# CHECK-INST: msubs.u %d0, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0x00]
.code32
msubs.u %d0, %d0, %d1, %d14

# CHECK-INST: msubs.u %d0, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0x00]
.code32
msubs.u %d0, %d0, %d1, %d15

# CHECK-INST: msubs.u %d0, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0x00]
.code32
msubs.u %d0, %d0, %d14, %d0

# CHECK-INST: msubs.u %d0, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0x00]
.code32
msubs.u %d0, %d0, %d14, %d1

# CHECK-INST: msubs.u %d0, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0x00]
.code32
msubs.u %d0, %d0, %d14, %d14

# CHECK-INST: msubs.u %d0, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0x00]
.code32
msubs.u %d0, %d0, %d14, %d15

# CHECK-INST: msubs.u %d0, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0x00]
.code32
msubs.u %d0, %d0, %d15, %d0

# CHECK-INST: msubs.u %d0, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0x00]
.code32
msubs.u %d0, %d0, %d15, %d1

# CHECK-INST: msubs.u %d0, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0x00]
.code32
msubs.u %d0, %d0, %d15, %d14

# CHECK-INST: msubs.u %d0, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0x00]
.code32
msubs.u %d0, %d0, %d15, %d15

# CHECK-INST: msubs.u %d0, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0x01]
.code32
msubs.u %d0, %d1, %d0, %d0

# CHECK-INST: msubs.u %d0, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0x01]
.code32
msubs.u %d0, %d1, %d0, %d1

# CHECK-INST: msubs.u %d0, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0x01]
.code32
msubs.u %d0, %d1, %d0, %d14

# CHECK-INST: msubs.u %d0, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0x01]
.code32
msubs.u %d0, %d1, %d0, %d15

# CHECK-INST: msubs.u %d0, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0x01]
.code32
msubs.u %d0, %d1, %d1, %d0

# CHECK-INST: msubs.u %d0, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0x01]
.code32
msubs.u %d0, %d1, %d1, %d1

# CHECK-INST: msubs.u %d0, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0x01]
.code32
msubs.u %d0, %d1, %d1, %d14

# CHECK-INST: msubs.u %d0, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0x01]
.code32
msubs.u %d0, %d1, %d1, %d15

# CHECK-INST: msubs.u %d0, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0x01]
.code32
msubs.u %d0, %d1, %d14, %d0

# CHECK-INST: msubs.u %d0, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0x01]
.code32
msubs.u %d0, %d1, %d14, %d1

# CHECK-INST: msubs.u %d0, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0x01]
.code32
msubs.u %d0, %d1, %d14, %d14

# CHECK-INST: msubs.u %d0, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0x01]
.code32
msubs.u %d0, %d1, %d14, %d15

# CHECK-INST: msubs.u %d0, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0x01]
.code32
msubs.u %d0, %d1, %d15, %d0

# CHECK-INST: msubs.u %d0, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0x01]
.code32
msubs.u %d0, %d1, %d15, %d1

# CHECK-INST: msubs.u %d0, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0x01]
.code32
msubs.u %d0, %d1, %d15, %d14

# CHECK-INST: msubs.u %d0, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0x01]
.code32
msubs.u %d0, %d1, %d15, %d15

# CHECK-INST: msubs.u %d0, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0x0e]
.code32
msubs.u %d0, %d14, %d0, %d0

# CHECK-INST: msubs.u %d0, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0x0e]
.code32
msubs.u %d0, %d14, %d0, %d1

# CHECK-INST: msubs.u %d0, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0x0e]
.code32
msubs.u %d0, %d14, %d0, %d14

# CHECK-INST: msubs.u %d0, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0x0e]
.code32
msubs.u %d0, %d14, %d0, %d15

# CHECK-INST: msubs.u %d0, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0x0e]
.code32
msubs.u %d0, %d14, %d1, %d0

# CHECK-INST: msubs.u %d0, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0x0e]
.code32
msubs.u %d0, %d14, %d1, %d1

# CHECK-INST: msubs.u %d0, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0x0e]
.code32
msubs.u %d0, %d14, %d1, %d14

# CHECK-INST: msubs.u %d0, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0x0e]
.code32
msubs.u %d0, %d14, %d1, %d15

# CHECK-INST: msubs.u %d0, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0x0e]
.code32
msubs.u %d0, %d14, %d14, %d0

# CHECK-INST: msubs.u %d0, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0x0e]
.code32
msubs.u %d0, %d14, %d14, %d1

# CHECK-INST: msubs.u %d0, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0x0e]
.code32
msubs.u %d0, %d14, %d14, %d14

# CHECK-INST: msubs.u %d0, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0x0e]
.code32
msubs.u %d0, %d14, %d14, %d15

# CHECK-INST: msubs.u %d0, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0x0e]
.code32
msubs.u %d0, %d14, %d15, %d0

# CHECK-INST: msubs.u %d0, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0x0e]
.code32
msubs.u %d0, %d14, %d15, %d1

# CHECK-INST: msubs.u %d0, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0x0e]
.code32
msubs.u %d0, %d14, %d15, %d14

# CHECK-INST: msubs.u %d0, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0x0e]
.code32
msubs.u %d0, %d14, %d15, %d15

# CHECK-INST: msubs.u %d0, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0x0f]
.code32
msubs.u %d0, %d15, %d0, %d0

# CHECK-INST: msubs.u %d0, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0x0f]
.code32
msubs.u %d0, %d15, %d0, %d1

# CHECK-INST: msubs.u %d0, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0x0f]
.code32
msubs.u %d0, %d15, %d0, %d14

# CHECK-INST: msubs.u %d0, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0x0f]
.code32
msubs.u %d0, %d15, %d0, %d15

# CHECK-INST: msubs.u %d0, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0x0f]
.code32
msubs.u %d0, %d15, %d1, %d0

# CHECK-INST: msubs.u %d0, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0x0f]
.code32
msubs.u %d0, %d15, %d1, %d1

# CHECK-INST: msubs.u %d0, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0x0f]
.code32
msubs.u %d0, %d15, %d1, %d14

# CHECK-INST: msubs.u %d0, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0x0f]
.code32
msubs.u %d0, %d15, %d1, %d15

# CHECK-INST: msubs.u %d0, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0x0f]
.code32
msubs.u %d0, %d15, %d14, %d0

# CHECK-INST: msubs.u %d0, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0x0f]
.code32
msubs.u %d0, %d15, %d14, %d1

# CHECK-INST: msubs.u %d0, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0x0f]
.code32
msubs.u %d0, %d15, %d14, %d14

# CHECK-INST: msubs.u %d0, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0x0f]
.code32
msubs.u %d0, %d15, %d14, %d15

# CHECK-INST: msubs.u %d0, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0x0f]
.code32
msubs.u %d0, %d15, %d15, %d0

# CHECK-INST: msubs.u %d0, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0x0f]
.code32
msubs.u %d0, %d15, %d15, %d1

# CHECK-INST: msubs.u %d0, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0x0f]
.code32
msubs.u %d0, %d15, %d15, %d14

# CHECK-INST: msubs.u %d0, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0x0f]
.code32
msubs.u %d0, %d15, %d15, %d15

# CHECK-INST: msubs.u %d1, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0x10]
.code32
msubs.u %d1, %d0, %d0, %d0

# CHECK-INST: msubs.u %d1, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0x10]
.code32
msubs.u %d1, %d0, %d0, %d1

# CHECK-INST: msubs.u %d1, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0x10]
.code32
msubs.u %d1, %d0, %d0, %d14

# CHECK-INST: msubs.u %d1, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0x10]
.code32
msubs.u %d1, %d0, %d0, %d15

# CHECK-INST: msubs.u %d1, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0x10]
.code32
msubs.u %d1, %d0, %d1, %d0

# CHECK-INST: msubs.u %d1, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0x10]
.code32
msubs.u %d1, %d0, %d1, %d1

# CHECK-INST: msubs.u %d1, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0x10]
.code32
msubs.u %d1, %d0, %d1, %d14

# CHECK-INST: msubs.u %d1, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0x10]
.code32
msubs.u %d1, %d0, %d1, %d15

# CHECK-INST: msubs.u %d1, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0x10]
.code32
msubs.u %d1, %d0, %d14, %d0

# CHECK-INST: msubs.u %d1, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0x10]
.code32
msubs.u %d1, %d0, %d14, %d1

# CHECK-INST: msubs.u %d1, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0x10]
.code32
msubs.u %d1, %d0, %d14, %d14

# CHECK-INST: msubs.u %d1, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0x10]
.code32
msubs.u %d1, %d0, %d14, %d15

# CHECK-INST: msubs.u %d1, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0x10]
.code32
msubs.u %d1, %d0, %d15, %d0

# CHECK-INST: msubs.u %d1, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0x10]
.code32
msubs.u %d1, %d0, %d15, %d1

# CHECK-INST: msubs.u %d1, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0x10]
.code32
msubs.u %d1, %d0, %d15, %d14

# CHECK-INST: msubs.u %d1, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0x10]
.code32
msubs.u %d1, %d0, %d15, %d15

# CHECK-INST: msubs.u %d1, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0x11]
.code32
msubs.u %d1, %d1, %d0, %d0

# CHECK-INST: msubs.u %d1, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0x11]
.code32
msubs.u %d1, %d1, %d0, %d1

# CHECK-INST: msubs.u %d1, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0x11]
.code32
msubs.u %d1, %d1, %d0, %d14

# CHECK-INST: msubs.u %d1, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0x11]
.code32
msubs.u %d1, %d1, %d0, %d15

# CHECK-INST: msubs.u %d1, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0x11]
.code32
msubs.u %d1, %d1, %d1, %d0

# CHECK-INST: msubs.u %d1, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0x11]
.code32
msubs.u %d1, %d1, %d1, %d1

# CHECK-INST: msubs.u %d1, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0x11]
.code32
msubs.u %d1, %d1, %d1, %d14

# CHECK-INST: msubs.u %d1, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0x11]
.code32
msubs.u %d1, %d1, %d1, %d15

# CHECK-INST: msubs.u %d1, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0x11]
.code32
msubs.u %d1, %d1, %d14, %d0

# CHECK-INST: msubs.u %d1, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0x11]
.code32
msubs.u %d1, %d1, %d14, %d1

# CHECK-INST: msubs.u %d1, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0x11]
.code32
msubs.u %d1, %d1, %d14, %d14

# CHECK-INST: msubs.u %d1, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0x11]
.code32
msubs.u %d1, %d1, %d14, %d15

# CHECK-INST: msubs.u %d1, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0x11]
.code32
msubs.u %d1, %d1, %d15, %d0

# CHECK-INST: msubs.u %d1, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0x11]
.code32
msubs.u %d1, %d1, %d15, %d1

# CHECK-INST: msubs.u %d1, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0x11]
.code32
msubs.u %d1, %d1, %d15, %d14

# CHECK-INST: msubs.u %d1, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0x11]
.code32
msubs.u %d1, %d1, %d15, %d15

# CHECK-INST: msubs.u %d1, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0x1e]
.code32
msubs.u %d1, %d14, %d0, %d0

# CHECK-INST: msubs.u %d1, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0x1e]
.code32
msubs.u %d1, %d14, %d0, %d1

# CHECK-INST: msubs.u %d1, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0x1e]
.code32
msubs.u %d1, %d14, %d0, %d14

# CHECK-INST: msubs.u %d1, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0x1e]
.code32
msubs.u %d1, %d14, %d0, %d15

# CHECK-INST: msubs.u %d1, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0x1e]
.code32
msubs.u %d1, %d14, %d1, %d0

# CHECK-INST: msubs.u %d1, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0x1e]
.code32
msubs.u %d1, %d14, %d1, %d1

# CHECK-INST: msubs.u %d1, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0x1e]
.code32
msubs.u %d1, %d14, %d1, %d14

# CHECK-INST: msubs.u %d1, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0x1e]
.code32
msubs.u %d1, %d14, %d1, %d15

# CHECK-INST: msubs.u %d1, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0x1e]
.code32
msubs.u %d1, %d14, %d14, %d0

# CHECK-INST: msubs.u %d1, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0x1e]
.code32
msubs.u %d1, %d14, %d14, %d1

# CHECK-INST: msubs.u %d1, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0x1e]
.code32
msubs.u %d1, %d14, %d14, %d14

# CHECK-INST: msubs.u %d1, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0x1e]
.code32
msubs.u %d1, %d14, %d14, %d15

# CHECK-INST: msubs.u %d1, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0x1e]
.code32
msubs.u %d1, %d14, %d15, %d0

# CHECK-INST: msubs.u %d1, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0x1e]
.code32
msubs.u %d1, %d14, %d15, %d1

# CHECK-INST: msubs.u %d1, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0x1e]
.code32
msubs.u %d1, %d14, %d15, %d14

# CHECK-INST: msubs.u %d1, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0x1e]
.code32
msubs.u %d1, %d14, %d15, %d15

# CHECK-INST: msubs.u %d1, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0x1f]
.code32
msubs.u %d1, %d15, %d0, %d0

# CHECK-INST: msubs.u %d1, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0x1f]
.code32
msubs.u %d1, %d15, %d0, %d1

# CHECK-INST: msubs.u %d1, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0x1f]
.code32
msubs.u %d1, %d15, %d0, %d14

# CHECK-INST: msubs.u %d1, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0x1f]
.code32
msubs.u %d1, %d15, %d0, %d15

# CHECK-INST: msubs.u %d1, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0x1f]
.code32
msubs.u %d1, %d15, %d1, %d0

# CHECK-INST: msubs.u %d1, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0x1f]
.code32
msubs.u %d1, %d15, %d1, %d1

# CHECK-INST: msubs.u %d1, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0x1f]
.code32
msubs.u %d1, %d15, %d1, %d14

# CHECK-INST: msubs.u %d1, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0x1f]
.code32
msubs.u %d1, %d15, %d1, %d15

# CHECK-INST: msubs.u %d1, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0x1f]
.code32
msubs.u %d1, %d15, %d14, %d0

# CHECK-INST: msubs.u %d1, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0x1f]
.code32
msubs.u %d1, %d15, %d14, %d1

# CHECK-INST: msubs.u %d1, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0x1f]
.code32
msubs.u %d1, %d15, %d14, %d14

# CHECK-INST: msubs.u %d1, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0x1f]
.code32
msubs.u %d1, %d15, %d14, %d15

# CHECK-INST: msubs.u %d1, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0x1f]
.code32
msubs.u %d1, %d15, %d15, %d0

# CHECK-INST: msubs.u %d1, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0x1f]
.code32
msubs.u %d1, %d15, %d15, %d1

# CHECK-INST: msubs.u %d1, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0x1f]
.code32
msubs.u %d1, %d15, %d15, %d14

# CHECK-INST: msubs.u %d1, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0x1f]
.code32
msubs.u %d1, %d15, %d15, %d15

# CHECK-INST: msubs.u %d14, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0xe0]
.code32
msubs.u %d14, %d0, %d0, %d0

# CHECK-INST: msubs.u %d14, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0xe0]
.code32
msubs.u %d14, %d0, %d0, %d1

# CHECK-INST: msubs.u %d14, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0xe0]
.code32
msubs.u %d14, %d0, %d0, %d14

# CHECK-INST: msubs.u %d14, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0xe0]
.code32
msubs.u %d14, %d0, %d0, %d15

# CHECK-INST: msubs.u %d14, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0xe0]
.code32
msubs.u %d14, %d0, %d1, %d0

# CHECK-INST: msubs.u %d14, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0xe0]
.code32
msubs.u %d14, %d0, %d1, %d1

# CHECK-INST: msubs.u %d14, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0xe0]
.code32
msubs.u %d14, %d0, %d1, %d14

# CHECK-INST: msubs.u %d14, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0xe0]
.code32
msubs.u %d14, %d0, %d1, %d15

# CHECK-INST: msubs.u %d14, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0xe0]
.code32
msubs.u %d14, %d0, %d14, %d0

# CHECK-INST: msubs.u %d14, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0xe0]
.code32
msubs.u %d14, %d0, %d14, %d1

# CHECK-INST: msubs.u %d14, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0xe0]
.code32
msubs.u %d14, %d0, %d14, %d14

# CHECK-INST: msubs.u %d14, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0xe0]
.code32
msubs.u %d14, %d0, %d14, %d15

# CHECK-INST: msubs.u %d14, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0xe0]
.code32
msubs.u %d14, %d0, %d15, %d0

# CHECK-INST: msubs.u %d14, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0xe0]
.code32
msubs.u %d14, %d0, %d15, %d1

# CHECK-INST: msubs.u %d14, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0xe0]
.code32
msubs.u %d14, %d0, %d15, %d14

# CHECK-INST: msubs.u %d14, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0xe0]
.code32
msubs.u %d14, %d0, %d15, %d15

# CHECK-INST: msubs.u %d14, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0xe1]
.code32
msubs.u %d14, %d1, %d0, %d0

# CHECK-INST: msubs.u %d14, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0xe1]
.code32
msubs.u %d14, %d1, %d0, %d1

# CHECK-INST: msubs.u %d14, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0xe1]
.code32
msubs.u %d14, %d1, %d0, %d14

# CHECK-INST: msubs.u %d14, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0xe1]
.code32
msubs.u %d14, %d1, %d0, %d15

# CHECK-INST: msubs.u %d14, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0xe1]
.code32
msubs.u %d14, %d1, %d1, %d0

# CHECK-INST: msubs.u %d14, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0xe1]
.code32
msubs.u %d14, %d1, %d1, %d1

# CHECK-INST: msubs.u %d14, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0xe1]
.code32
msubs.u %d14, %d1, %d1, %d14

# CHECK-INST: msubs.u %d14, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0xe1]
.code32
msubs.u %d14, %d1, %d1, %d15

# CHECK-INST: msubs.u %d14, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0xe1]
.code32
msubs.u %d14, %d1, %d14, %d0

# CHECK-INST: msubs.u %d14, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0xe1]
.code32
msubs.u %d14, %d1, %d14, %d1

# CHECK-INST: msubs.u %d14, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0xe1]
.code32
msubs.u %d14, %d1, %d14, %d14

# CHECK-INST: msubs.u %d14, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0xe1]
.code32
msubs.u %d14, %d1, %d14, %d15

# CHECK-INST: msubs.u %d14, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0xe1]
.code32
msubs.u %d14, %d1, %d15, %d0

# CHECK-INST: msubs.u %d14, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0xe1]
.code32
msubs.u %d14, %d1, %d15, %d1

# CHECK-INST: msubs.u %d14, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0xe1]
.code32
msubs.u %d14, %d1, %d15, %d14

# CHECK-INST: msubs.u %d14, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0xe1]
.code32
msubs.u %d14, %d1, %d15, %d15

# CHECK-INST: msubs.u %d14, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0xee]
.code32
msubs.u %d14, %d14, %d0, %d0

# CHECK-INST: msubs.u %d14, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0xee]
.code32
msubs.u %d14, %d14, %d0, %d1

# CHECK-INST: msubs.u %d14, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0xee]
.code32
msubs.u %d14, %d14, %d0, %d14

# CHECK-INST: msubs.u %d14, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0xee]
.code32
msubs.u %d14, %d14, %d0, %d15

# CHECK-INST: msubs.u %d14, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0xee]
.code32
msubs.u %d14, %d14, %d1, %d0

# CHECK-INST: msubs.u %d14, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0xee]
.code32
msubs.u %d14, %d14, %d1, %d1

# CHECK-INST: msubs.u %d14, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0xee]
.code32
msubs.u %d14, %d14, %d1, %d14

# CHECK-INST: msubs.u %d14, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0xee]
.code32
msubs.u %d14, %d14, %d1, %d15

# CHECK-INST: msubs.u %d14, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0xee]
.code32
msubs.u %d14, %d14, %d14, %d0

# CHECK-INST: msubs.u %d14, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0xee]
.code32
msubs.u %d14, %d14, %d14, %d1

# CHECK-INST: msubs.u %d14, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0xee]
.code32
msubs.u %d14, %d14, %d14, %d14

# CHECK-INST: msubs.u %d14, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0xee]
.code32
msubs.u %d14, %d14, %d14, %d15

# CHECK-INST: msubs.u %d14, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0xee]
.code32
msubs.u %d14, %d14, %d15, %d0

# CHECK-INST: msubs.u %d14, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0xee]
.code32
msubs.u %d14, %d14, %d15, %d1

# CHECK-INST: msubs.u %d14, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0xee]
.code32
msubs.u %d14, %d14, %d15, %d14

# CHECK-INST: msubs.u %d14, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0xee]
.code32
msubs.u %d14, %d14, %d15, %d15

# CHECK-INST: msubs.u %d14, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0xef]
.code32
msubs.u %d14, %d15, %d0, %d0

# CHECK-INST: msubs.u %d14, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0xef]
.code32
msubs.u %d14, %d15, %d0, %d1

# CHECK-INST: msubs.u %d14, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0xef]
.code32
msubs.u %d14, %d15, %d0, %d14

# CHECK-INST: msubs.u %d14, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0xef]
.code32
msubs.u %d14, %d15, %d0, %d15

# CHECK-INST: msubs.u %d14, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0xef]
.code32
msubs.u %d14, %d15, %d1, %d0

# CHECK-INST: msubs.u %d14, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0xef]
.code32
msubs.u %d14, %d15, %d1, %d1

# CHECK-INST: msubs.u %d14, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0xef]
.code32
msubs.u %d14, %d15, %d1, %d14

# CHECK-INST: msubs.u %d14, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0xef]
.code32
msubs.u %d14, %d15, %d1, %d15

# CHECK-INST: msubs.u %d14, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0xef]
.code32
msubs.u %d14, %d15, %d14, %d0

# CHECK-INST: msubs.u %d14, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0xef]
.code32
msubs.u %d14, %d15, %d14, %d1

# CHECK-INST: msubs.u %d14, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0xef]
.code32
msubs.u %d14, %d15, %d14, %d14

# CHECK-INST: msubs.u %d14, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0xef]
.code32
msubs.u %d14, %d15, %d14, %d15

# CHECK-INST: msubs.u %d14, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0xef]
.code32
msubs.u %d14, %d15, %d15, %d0

# CHECK-INST: msubs.u %d14, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0xef]
.code32
msubs.u %d14, %d15, %d15, %d1

# CHECK-INST: msubs.u %d14, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0xef]
.code32
msubs.u %d14, %d15, %d15, %d14

# CHECK-INST: msubs.u %d14, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0xef]
.code32
msubs.u %d14, %d15, %d15, %d15

# CHECK-INST: msubs.u %d15, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0xf0]
.code32
msubs.u %d15, %d0, %d0, %d0

# CHECK-INST: msubs.u %d15, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0xf0]
.code32
msubs.u %d15, %d0, %d0, %d1

# CHECK-INST: msubs.u %d15, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0xf0]
.code32
msubs.u %d15, %d0, %d0, %d14

# CHECK-INST: msubs.u %d15, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0xf0]
.code32
msubs.u %d15, %d0, %d0, %d15

# CHECK-INST: msubs.u %d15, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0xf0]
.code32
msubs.u %d15, %d0, %d1, %d0

# CHECK-INST: msubs.u %d15, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0xf0]
.code32
msubs.u %d15, %d0, %d1, %d1

# CHECK-INST: msubs.u %d15, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0xf0]
.code32
msubs.u %d15, %d0, %d1, %d14

# CHECK-INST: msubs.u %d15, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0xf0]
.code32
msubs.u %d15, %d0, %d1, %d15

# CHECK-INST: msubs.u %d15, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0xf0]
.code32
msubs.u %d15, %d0, %d14, %d0

# CHECK-INST: msubs.u %d15, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0xf0]
.code32
msubs.u %d15, %d0, %d14, %d1

# CHECK-INST: msubs.u %d15, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0xf0]
.code32
msubs.u %d15, %d0, %d14, %d14

# CHECK-INST: msubs.u %d15, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0xf0]
.code32
msubs.u %d15, %d0, %d14, %d15

# CHECK-INST: msubs.u %d15, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0xf0]
.code32
msubs.u %d15, %d0, %d15, %d0

# CHECK-INST: msubs.u %d15, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0xf0]
.code32
msubs.u %d15, %d0, %d15, %d1

# CHECK-INST: msubs.u %d15, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0xf0]
.code32
msubs.u %d15, %d0, %d15, %d14

# CHECK-INST: msubs.u %d15, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0xf0]
.code32
msubs.u %d15, %d0, %d15, %d15

# CHECK-INST: msubs.u %d15, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0xf1]
.code32
msubs.u %d15, %d1, %d0, %d0

# CHECK-INST: msubs.u %d15, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0xf1]
.code32
msubs.u %d15, %d1, %d0, %d1

# CHECK-INST: msubs.u %d15, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0xf1]
.code32
msubs.u %d15, %d1, %d0, %d14

# CHECK-INST: msubs.u %d15, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0xf1]
.code32
msubs.u %d15, %d1, %d0, %d15

# CHECK-INST: msubs.u %d15, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0xf1]
.code32
msubs.u %d15, %d1, %d1, %d0

# CHECK-INST: msubs.u %d15, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0xf1]
.code32
msubs.u %d15, %d1, %d1, %d1

# CHECK-INST: msubs.u %d15, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0xf1]
.code32
msubs.u %d15, %d1, %d1, %d14

# CHECK-INST: msubs.u %d15, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0xf1]
.code32
msubs.u %d15, %d1, %d1, %d15

# CHECK-INST: msubs.u %d15, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0xf1]
.code32
msubs.u %d15, %d1, %d14, %d0

# CHECK-INST: msubs.u %d15, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0xf1]
.code32
msubs.u %d15, %d1, %d14, %d1

# CHECK-INST: msubs.u %d15, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0xf1]
.code32
msubs.u %d15, %d1, %d14, %d14

# CHECK-INST: msubs.u %d15, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0xf1]
.code32
msubs.u %d15, %d1, %d14, %d15

# CHECK-INST: msubs.u %d15, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0xf1]
.code32
msubs.u %d15, %d1, %d15, %d0

# CHECK-INST: msubs.u %d15, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0xf1]
.code32
msubs.u %d15, %d1, %d15, %d1

# CHECK-INST: msubs.u %d15, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0xf1]
.code32
msubs.u %d15, %d1, %d15, %d14

# CHECK-INST: msubs.u %d15, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0xf1]
.code32
msubs.u %d15, %d1, %d15, %d15

# CHECK-INST: msubs.u %d15, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0xfe]
.code32
msubs.u %d15, %d14, %d0, %d0

# CHECK-INST: msubs.u %d15, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0xfe]
.code32
msubs.u %d15, %d14, %d0, %d1

# CHECK-INST: msubs.u %d15, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0xfe]
.code32
msubs.u %d15, %d14, %d0, %d14

# CHECK-INST: msubs.u %d15, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0xfe]
.code32
msubs.u %d15, %d14, %d0, %d15

# CHECK-INST: msubs.u %d15, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0xfe]
.code32
msubs.u %d15, %d14, %d1, %d0

# CHECK-INST: msubs.u %d15, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0xfe]
.code32
msubs.u %d15, %d14, %d1, %d1

# CHECK-INST: msubs.u %d15, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0xfe]
.code32
msubs.u %d15, %d14, %d1, %d14

# CHECK-INST: msubs.u %d15, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0xfe]
.code32
msubs.u %d15, %d14, %d1, %d15

# CHECK-INST: msubs.u %d15, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0xfe]
.code32
msubs.u %d15, %d14, %d14, %d0

# CHECK-INST: msubs.u %d15, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0xfe]
.code32
msubs.u %d15, %d14, %d14, %d1

# CHECK-INST: msubs.u %d15, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0xfe]
.code32
msubs.u %d15, %d14, %d14, %d14

# CHECK-INST: msubs.u %d15, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0xfe]
.code32
msubs.u %d15, %d14, %d14, %d15

# CHECK-INST: msubs.u %d15, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0xfe]
.code32
msubs.u %d15, %d14, %d15, %d0

# CHECK-INST: msubs.u %d15, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0xfe]
.code32
msubs.u %d15, %d14, %d15, %d1

# CHECK-INST: msubs.u %d15, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0xfe]
.code32
msubs.u %d15, %d14, %d15, %d14

# CHECK-INST: msubs.u %d15, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0xfe]
.code32
msubs.u %d15, %d14, %d15, %d15

# CHECK-INST: msubs.u %d15, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0xff]
.code32
msubs.u %d15, %d15, %d0, %d0

# CHECK-INST: msubs.u %d15, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0xff]
.code32
msubs.u %d15, %d15, %d0, %d1

# CHECK-INST: msubs.u %d15, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0xff]
.code32
msubs.u %d15, %d15, %d0, %d14

# CHECK-INST: msubs.u %d15, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0xff]
.code32
msubs.u %d15, %d15, %d0, %d15

# CHECK-INST: msubs.u %d15, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0xff]
.code32
msubs.u %d15, %d15, %d1, %d0

# CHECK-INST: msubs.u %d15, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0xff]
.code32
msubs.u %d15, %d15, %d1, %d1

# CHECK-INST: msubs.u %d15, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0xff]
.code32
msubs.u %d15, %d15, %d1, %d14

# CHECK-INST: msubs.u %d15, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0xff]
.code32
msubs.u %d15, %d15, %d1, %d15

# CHECK-INST: msubs.u %d15, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0xff]
.code32
msubs.u %d15, %d15, %d14, %d0

# CHECK-INST: msubs.u %d15, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0xff]
.code32
msubs.u %d15, %d15, %d14, %d1

# CHECK-INST: msubs.u %d15, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0xff]
.code32
msubs.u %d15, %d15, %d14, %d14

# CHECK-INST: msubs.u %d15, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0xff]
.code32
msubs.u %d15, %d15, %d14, %d15

# CHECK-INST: msubs.u %d15, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0xff]
.code32
msubs.u %d15, %d15, %d15, %d0

# CHECK-INST: msubs.u %d15, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0xff]
.code32
msubs.u %d15, %d15, %d15, %d1

# CHECK-INST: msubs.u %d15, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0xff]
.code32
msubs.u %d15, %d15, %d15, %d14

# CHECK-INST: msubs.u %d15, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0xff]
.code32
msubs.u %d15, %d15, %d15, %d15

# CHECK-INST: msubs.u %d0, %d0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0x00]
.code32
msubs.u %d0, %d0, %d0, 271

# CHECK-INST: msubs.u %d0, %d0, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0x00]
.code32
msubs.u %d0, %d0, %d0, 496

# CHECK-INST: msubs.u %d0, %d0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0x00]
.code32
msubs.u %d0, %d0, %d0, 511

# CHECK-INST: msubs.u %d0, %d0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0x00]
.code32
msubs.u %d0, %d0, %d1, 271

# CHECK-INST: msubs.u %d0, %d0, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0x00]
.code32
msubs.u %d0, %d0, %d1, 496

# CHECK-INST: msubs.u %d0, %d0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0x00]
.code32
msubs.u %d0, %d0, %d1, 511

# CHECK-INST: msubs.u %d0, %d0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0x00]
.code32
msubs.u %d0, %d0, %d14, 271

# CHECK-INST: msubs.u %d0, %d0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0x00]
.code32
msubs.u %d0, %d0, %d14, 496

# CHECK-INST: msubs.u %d0, %d0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0x00]
.code32
msubs.u %d0, %d0, %d14, 511

# CHECK-INST: msubs.u %d0, %d0, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0x00]
.code32
msubs.u %d0, %d0, %d15, 271

# CHECK-INST: msubs.u %d0, %d0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0x00]
.code32
msubs.u %d0, %d0, %d15, 496

# CHECK-INST: msubs.u %d0, %d0, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0x00]
.code32
msubs.u %d0, %d0, %d15, 511

# CHECK-INST: msubs.u %d0, %d1, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0x01]
.code32
msubs.u %d0, %d1, %d0, 271

# CHECK-INST: msubs.u %d0, %d1, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0x01]
.code32
msubs.u %d0, %d1, %d0, 496

# CHECK-INST: msubs.u %d0, %d1, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0x01]
.code32
msubs.u %d0, %d1, %d0, 511

# CHECK-INST: msubs.u %d0, %d1, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0x01]
.code32
msubs.u %d0, %d1, %d1, 271

# CHECK-INST: msubs.u %d0, %d1, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0x01]
.code32
msubs.u %d0, %d1, %d1, 496

# CHECK-INST: msubs.u %d0, %d1, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0x01]
.code32
msubs.u %d0, %d1, %d1, 511

# CHECK-INST: msubs.u %d0, %d1, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0x01]
.code32
msubs.u %d0, %d1, %d14, 271

# CHECK-INST: msubs.u %d0, %d1, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0x01]
.code32
msubs.u %d0, %d1, %d14, 496

# CHECK-INST: msubs.u %d0, %d1, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0x01]
.code32
msubs.u %d0, %d1, %d14, 511

# CHECK-INST: msubs.u %d0, %d1, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0x01]
.code32
msubs.u %d0, %d1, %d15, 271

# CHECK-INST: msubs.u %d0, %d1, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0x01]
.code32
msubs.u %d0, %d1, %d15, 496

# CHECK-INST: msubs.u %d0, %d1, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0x01]
.code32
msubs.u %d0, %d1, %d15, 511

# CHECK-INST: msubs.u %d0, %d14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0x0e]
.code32
msubs.u %d0, %d14, %d0, 271

# CHECK-INST: msubs.u %d0, %d14, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0x0e]
.code32
msubs.u %d0, %d14, %d0, 496

# CHECK-INST: msubs.u %d0, %d14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0x0e]
.code32
msubs.u %d0, %d14, %d0, 511

# CHECK-INST: msubs.u %d0, %d14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0x0e]
.code32
msubs.u %d0, %d14, %d1, 271

# CHECK-INST: msubs.u %d0, %d14, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0x0e]
.code32
msubs.u %d0, %d14, %d1, 496

# CHECK-INST: msubs.u %d0, %d14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0x0e]
.code32
msubs.u %d0, %d14, %d1, 511

# CHECK-INST: msubs.u %d0, %d14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0x0e]
.code32
msubs.u %d0, %d14, %d14, 271

# CHECK-INST: msubs.u %d0, %d14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0x0e]
.code32
msubs.u %d0, %d14, %d14, 496

# CHECK-INST: msubs.u %d0, %d14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0x0e]
.code32
msubs.u %d0, %d14, %d14, 511

# CHECK-INST: msubs.u %d0, %d14, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0x0e]
.code32
msubs.u %d0, %d14, %d15, 271

# CHECK-INST: msubs.u %d0, %d14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0x0e]
.code32
msubs.u %d0, %d14, %d15, 496

# CHECK-INST: msubs.u %d0, %d14, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0x0e]
.code32
msubs.u %d0, %d14, %d15, 511

# CHECK-INST: msubs.u %d0, %d15, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0x0f]
.code32
msubs.u %d0, %d15, %d0, 271

# CHECK-INST: msubs.u %d0, %d15, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0x0f]
.code32
msubs.u %d0, %d15, %d0, 496

# CHECK-INST: msubs.u %d0, %d15, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0x0f]
.code32
msubs.u %d0, %d15, %d0, 511

# CHECK-INST: msubs.u %d0, %d15, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0x0f]
.code32
msubs.u %d0, %d15, %d1, 271

# CHECK-INST: msubs.u %d0, %d15, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0x0f]
.code32
msubs.u %d0, %d15, %d1, 496

# CHECK-INST: msubs.u %d0, %d15, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0x0f]
.code32
msubs.u %d0, %d15, %d1, 511

# CHECK-INST: msubs.u %d0, %d15, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0x0f]
.code32
msubs.u %d0, %d15, %d14, 271

# CHECK-INST: msubs.u %d0, %d15, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0x0f]
.code32
msubs.u %d0, %d15, %d14, 496

# CHECK-INST: msubs.u %d0, %d15, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0x0f]
.code32
msubs.u %d0, %d15, %d14, 511

# CHECK-INST: msubs.u %d0, %d15, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0x0f]
.code32
msubs.u %d0, %d15, %d15, 271

# CHECK-INST: msubs.u %d0, %d15, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0x0f]
.code32
msubs.u %d0, %d15, %d15, 496

# CHECK-INST: msubs.u %d0, %d15, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0x0f]
.code32
msubs.u %d0, %d15, %d15, 511

# CHECK-INST: msubs.u %d1, %d0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0x10]
.code32
msubs.u %d1, %d0, %d0, 271

# CHECK-INST: msubs.u %d1, %d0, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0x10]
.code32
msubs.u %d1, %d0, %d0, 496

# CHECK-INST: msubs.u %d1, %d0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0x10]
.code32
msubs.u %d1, %d0, %d0, 511

# CHECK-INST: msubs.u %d1, %d0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0x10]
.code32
msubs.u %d1, %d0, %d1, 271

# CHECK-INST: msubs.u %d1, %d0, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0x10]
.code32
msubs.u %d1, %d0, %d1, 496

# CHECK-INST: msubs.u %d1, %d0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0x10]
.code32
msubs.u %d1, %d0, %d1, 511

# CHECK-INST: msubs.u %d1, %d0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0x10]
.code32
msubs.u %d1, %d0, %d14, 271

# CHECK-INST: msubs.u %d1, %d0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0x10]
.code32
msubs.u %d1, %d0, %d14, 496

# CHECK-INST: msubs.u %d1, %d0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0x10]
.code32
msubs.u %d1, %d0, %d14, 511

# CHECK-INST: msubs.u %d1, %d0, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0x10]
.code32
msubs.u %d1, %d0, %d15, 271

# CHECK-INST: msubs.u %d1, %d0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0x10]
.code32
msubs.u %d1, %d0, %d15, 496

# CHECK-INST: msubs.u %d1, %d0, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0x10]
.code32
msubs.u %d1, %d0, %d15, 511

# CHECK-INST: msubs.u %d1, %d1, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0x11]
.code32
msubs.u %d1, %d1, %d0, 271

# CHECK-INST: msubs.u %d1, %d1, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0x11]
.code32
msubs.u %d1, %d1, %d0, 496

# CHECK-INST: msubs.u %d1, %d1, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0x11]
.code32
msubs.u %d1, %d1, %d0, 511

# CHECK-INST: msubs.u %d1, %d1, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0x11]
.code32
msubs.u %d1, %d1, %d1, 271

# CHECK-INST: msubs.u %d1, %d1, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0x11]
.code32
msubs.u %d1, %d1, %d1, 496

# CHECK-INST: msubs.u %d1, %d1, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0x11]
.code32
msubs.u %d1, %d1, %d1, 511

# CHECK-INST: msubs.u %d1, %d1, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0x11]
.code32
msubs.u %d1, %d1, %d14, 271

# CHECK-INST: msubs.u %d1, %d1, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0x11]
.code32
msubs.u %d1, %d1, %d14, 496

# CHECK-INST: msubs.u %d1, %d1, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0x11]
.code32
msubs.u %d1, %d1, %d14, 511

# CHECK-INST: msubs.u %d1, %d1, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0x11]
.code32
msubs.u %d1, %d1, %d15, 271

# CHECK-INST: msubs.u %d1, %d1, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0x11]
.code32
msubs.u %d1, %d1, %d15, 496

# CHECK-INST: msubs.u %d1, %d1, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0x11]
.code32
msubs.u %d1, %d1, %d15, 511

# CHECK-INST: msubs.u %d1, %d14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0x1e]
.code32
msubs.u %d1, %d14, %d0, 271

# CHECK-INST: msubs.u %d1, %d14, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0x1e]
.code32
msubs.u %d1, %d14, %d0, 496

# CHECK-INST: msubs.u %d1, %d14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0x1e]
.code32
msubs.u %d1, %d14, %d0, 511

# CHECK-INST: msubs.u %d1, %d14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0x1e]
.code32
msubs.u %d1, %d14, %d1, 271

# CHECK-INST: msubs.u %d1, %d14, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0x1e]
.code32
msubs.u %d1, %d14, %d1, 496

# CHECK-INST: msubs.u %d1, %d14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0x1e]
.code32
msubs.u %d1, %d14, %d1, 511

# CHECK-INST: msubs.u %d1, %d14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0x1e]
.code32
msubs.u %d1, %d14, %d14, 271

# CHECK-INST: msubs.u %d1, %d14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0x1e]
.code32
msubs.u %d1, %d14, %d14, 496

# CHECK-INST: msubs.u %d1, %d14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0x1e]
.code32
msubs.u %d1, %d14, %d14, 511

# CHECK-INST: msubs.u %d1, %d14, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0x1e]
.code32
msubs.u %d1, %d14, %d15, 271

# CHECK-INST: msubs.u %d1, %d14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0x1e]
.code32
msubs.u %d1, %d14, %d15, 496

# CHECK-INST: msubs.u %d1, %d14, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0x1e]
.code32
msubs.u %d1, %d14, %d15, 511

# CHECK-INST: msubs.u %d1, %d15, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0x1f]
.code32
msubs.u %d1, %d15, %d0, 271

# CHECK-INST: msubs.u %d1, %d15, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0x1f]
.code32
msubs.u %d1, %d15, %d0, 496

# CHECK-INST: msubs.u %d1, %d15, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0x1f]
.code32
msubs.u %d1, %d15, %d0, 511

# CHECK-INST: msubs.u %d1, %d15, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0x1f]
.code32
msubs.u %d1, %d15, %d1, 271

# CHECK-INST: msubs.u %d1, %d15, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0x1f]
.code32
msubs.u %d1, %d15, %d1, 496

# CHECK-INST: msubs.u %d1, %d15, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0x1f]
.code32
msubs.u %d1, %d15, %d1, 511

# CHECK-INST: msubs.u %d1, %d15, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0x1f]
.code32
msubs.u %d1, %d15, %d14, 271

# CHECK-INST: msubs.u %d1, %d15, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0x1f]
.code32
msubs.u %d1, %d15, %d14, 496

# CHECK-INST: msubs.u %d1, %d15, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0x1f]
.code32
msubs.u %d1, %d15, %d14, 511

# CHECK-INST: msubs.u %d1, %d15, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0x1f]
.code32
msubs.u %d1, %d15, %d15, 271

# CHECK-INST: msubs.u %d1, %d15, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0x1f]
.code32
msubs.u %d1, %d15, %d15, 496

# CHECK-INST: msubs.u %d1, %d15, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0x1f]
.code32
msubs.u %d1, %d15, %d15, 511

# CHECK-INST: msubs.u %d14, %d0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0xe0]
.code32
msubs.u %d14, %d0, %d0, 271

# CHECK-INST: msubs.u %d14, %d0, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0xe0]
.code32
msubs.u %d14, %d0, %d0, 496

# CHECK-INST: msubs.u %d14, %d0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0xe0]
.code32
msubs.u %d14, %d0, %d0, 511

# CHECK-INST: msubs.u %d14, %d0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0xe0]
.code32
msubs.u %d14, %d0, %d1, 271

# CHECK-INST: msubs.u %d14, %d0, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0xe0]
.code32
msubs.u %d14, %d0, %d1, 496

# CHECK-INST: msubs.u %d14, %d0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0xe0]
.code32
msubs.u %d14, %d0, %d1, 511

# CHECK-INST: msubs.u %d14, %d0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0xe0]
.code32
msubs.u %d14, %d0, %d14, 271

# CHECK-INST: msubs.u %d14, %d0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0xe0]
.code32
msubs.u %d14, %d0, %d14, 496

# CHECK-INST: msubs.u %d14, %d0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0xe0]
.code32
msubs.u %d14, %d0, %d14, 511

# CHECK-INST: msubs.u %d14, %d0, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0xe0]
.code32
msubs.u %d14, %d0, %d15, 271

# CHECK-INST: msubs.u %d14, %d0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0xe0]
.code32
msubs.u %d14, %d0, %d15, 496

# CHECK-INST: msubs.u %d14, %d0, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0xe0]
.code32
msubs.u %d14, %d0, %d15, 511

# CHECK-INST: msubs.u %d14, %d1, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0xe1]
.code32
msubs.u %d14, %d1, %d0, 271

# CHECK-INST: msubs.u %d14, %d1, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0xe1]
.code32
msubs.u %d14, %d1, %d0, 496

# CHECK-INST: msubs.u %d14, %d1, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0xe1]
.code32
msubs.u %d14, %d1, %d0, 511

# CHECK-INST: msubs.u %d14, %d1, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0xe1]
.code32
msubs.u %d14, %d1, %d1, 271

# CHECK-INST: msubs.u %d14, %d1, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0xe1]
.code32
msubs.u %d14, %d1, %d1, 496

# CHECK-INST: msubs.u %d14, %d1, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0xe1]
.code32
msubs.u %d14, %d1, %d1, 511

# CHECK-INST: msubs.u %d14, %d1, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0xe1]
.code32
msubs.u %d14, %d1, %d14, 271

# CHECK-INST: msubs.u %d14, %d1, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0xe1]
.code32
msubs.u %d14, %d1, %d14, 496

# CHECK-INST: msubs.u %d14, %d1, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0xe1]
.code32
msubs.u %d14, %d1, %d14, 511

# CHECK-INST: msubs.u %d14, %d1, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0xe1]
.code32
msubs.u %d14, %d1, %d15, 271

# CHECK-INST: msubs.u %d14, %d1, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0xe1]
.code32
msubs.u %d14, %d1, %d15, 496

# CHECK-INST: msubs.u %d14, %d1, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0xe1]
.code32
msubs.u %d14, %d1, %d15, 511

# CHECK-INST: msubs.u %d14, %d14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0xee]
.code32
msubs.u %d14, %d14, %d0, 271

# CHECK-INST: msubs.u %d14, %d14, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0xee]
.code32
msubs.u %d14, %d14, %d0, 496

# CHECK-INST: msubs.u %d14, %d14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0xee]
.code32
msubs.u %d14, %d14, %d0, 511

# CHECK-INST: msubs.u %d14, %d14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0xee]
.code32
msubs.u %d14, %d14, %d1, 271

# CHECK-INST: msubs.u %d14, %d14, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0xee]
.code32
msubs.u %d14, %d14, %d1, 496

# CHECK-INST: msubs.u %d14, %d14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0xee]
.code32
msubs.u %d14, %d14, %d1, 511

# CHECK-INST: msubs.u %d14, %d14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0xee]
.code32
msubs.u %d14, %d14, %d14, 271

# CHECK-INST: msubs.u %d14, %d14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0xee]
.code32
msubs.u %d14, %d14, %d14, 496

# CHECK-INST: msubs.u %d14, %d14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0xee]
.code32
msubs.u %d14, %d14, %d14, 511

# CHECK-INST: msubs.u %d14, %d14, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0xee]
.code32
msubs.u %d14, %d14, %d15, 271

# CHECK-INST: msubs.u %d14, %d14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0xee]
.code32
msubs.u %d14, %d14, %d15, 496

# CHECK-INST: msubs.u %d14, %d14, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0xee]
.code32
msubs.u %d14, %d14, %d15, 511

# CHECK-INST: msubs.u %d14, %d15, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0xef]
.code32
msubs.u %d14, %d15, %d0, 271

# CHECK-INST: msubs.u %d14, %d15, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0xef]
.code32
msubs.u %d14, %d15, %d0, 496

# CHECK-INST: msubs.u %d14, %d15, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0xef]
.code32
msubs.u %d14, %d15, %d0, 511

# CHECK-INST: msubs.u %d14, %d15, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0xef]
.code32
msubs.u %d14, %d15, %d1, 271

# CHECK-INST: msubs.u %d14, %d15, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0xef]
.code32
msubs.u %d14, %d15, %d1, 496

# CHECK-INST: msubs.u %d14, %d15, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0xef]
.code32
msubs.u %d14, %d15, %d1, 511

# CHECK-INST: msubs.u %d14, %d15, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0xef]
.code32
msubs.u %d14, %d15, %d14, 271

# CHECK-INST: msubs.u %d14, %d15, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0xef]
.code32
msubs.u %d14, %d15, %d14, 496

# CHECK-INST: msubs.u %d14, %d15, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0xef]
.code32
msubs.u %d14, %d15, %d14, 511

# CHECK-INST: msubs.u %d14, %d15, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0xef]
.code32
msubs.u %d14, %d15, %d15, 271

# CHECK-INST: msubs.u %d14, %d15, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0xef]
.code32
msubs.u %d14, %d15, %d15, 496

# CHECK-INST: msubs.u %d14, %d15, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0xef]
.code32
msubs.u %d14, %d15, %d15, 511

# CHECK-INST: msubs.u %d15, %d0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0xf0]
.code32
msubs.u %d15, %d0, %d0, 271

# CHECK-INST: msubs.u %d15, %d0, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0xf0]
.code32
msubs.u %d15, %d0, %d0, 496

# CHECK-INST: msubs.u %d15, %d0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0xf0]
.code32
msubs.u %d15, %d0, %d0, 511

# CHECK-INST: msubs.u %d15, %d0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0xf0]
.code32
msubs.u %d15, %d0, %d1, 271

# CHECK-INST: msubs.u %d15, %d0, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0xf0]
.code32
msubs.u %d15, %d0, %d1, 496

# CHECK-INST: msubs.u %d15, %d0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0xf0]
.code32
msubs.u %d15, %d0, %d1, 511

# CHECK-INST: msubs.u %d15, %d0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0xf0]
.code32
msubs.u %d15, %d0, %d14, 271

# CHECK-INST: msubs.u %d15, %d0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0xf0]
.code32
msubs.u %d15, %d0, %d14, 496

# CHECK-INST: msubs.u %d15, %d0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0xf0]
.code32
msubs.u %d15, %d0, %d14, 511

# CHECK-INST: msubs.u %d15, %d0, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0xf0]
.code32
msubs.u %d15, %d0, %d15, 271

# CHECK-INST: msubs.u %d15, %d0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0xf0]
.code32
msubs.u %d15, %d0, %d15, 496

# CHECK-INST: msubs.u %d15, %d0, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0xf0]
.code32
msubs.u %d15, %d0, %d15, 511

# CHECK-INST: msubs.u %d15, %d1, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0xf1]
.code32
msubs.u %d15, %d1, %d0, 271

# CHECK-INST: msubs.u %d15, %d1, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0xf1]
.code32
msubs.u %d15, %d1, %d0, 496

# CHECK-INST: msubs.u %d15, %d1, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0xf1]
.code32
msubs.u %d15, %d1, %d0, 511

# CHECK-INST: msubs.u %d15, %d1, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0xf1]
.code32
msubs.u %d15, %d1, %d1, 271

# CHECK-INST: msubs.u %d15, %d1, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0xf1]
.code32
msubs.u %d15, %d1, %d1, 496

# CHECK-INST: msubs.u %d15, %d1, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0xf1]
.code32
msubs.u %d15, %d1, %d1, 511

# CHECK-INST: msubs.u %d15, %d1, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0xf1]
.code32
msubs.u %d15, %d1, %d14, 271

# CHECK-INST: msubs.u %d15, %d1, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0xf1]
.code32
msubs.u %d15, %d1, %d14, 496

# CHECK-INST: msubs.u %d15, %d1, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0xf1]
.code32
msubs.u %d15, %d1, %d14, 511

# CHECK-INST: msubs.u %d15, %d1, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0xf1]
.code32
msubs.u %d15, %d1, %d15, 271

# CHECK-INST: msubs.u %d15, %d1, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0xf1]
.code32
msubs.u %d15, %d1, %d15, 496

# CHECK-INST: msubs.u %d15, %d1, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0xf1]
.code32
msubs.u %d15, %d1, %d15, 511

# CHECK-INST: msubs.u %d15, %d14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0xfe]
.code32
msubs.u %d15, %d14, %d0, 271

# CHECK-INST: msubs.u %d15, %d14, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0xfe]
.code32
msubs.u %d15, %d14, %d0, 496

# CHECK-INST: msubs.u %d15, %d14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0xfe]
.code32
msubs.u %d15, %d14, %d0, 511

# CHECK-INST: msubs.u %d15, %d14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0xfe]
.code32
msubs.u %d15, %d14, %d1, 271

# CHECK-INST: msubs.u %d15, %d14, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0xfe]
.code32
msubs.u %d15, %d14, %d1, 496

# CHECK-INST: msubs.u %d15, %d14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0xfe]
.code32
msubs.u %d15, %d14, %d1, 511

# CHECK-INST: msubs.u %d15, %d14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0xfe]
.code32
msubs.u %d15, %d14, %d14, 271

# CHECK-INST: msubs.u %d15, %d14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0xfe]
.code32
msubs.u %d15, %d14, %d14, 496

# CHECK-INST: msubs.u %d15, %d14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0xfe]
.code32
msubs.u %d15, %d14, %d14, 511

# CHECK-INST: msubs.u %d15, %d14, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0xfe]
.code32
msubs.u %d15, %d14, %d15, 271

# CHECK-INST: msubs.u %d15, %d14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0xfe]
.code32
msubs.u %d15, %d14, %d15, 496

# CHECK-INST: msubs.u %d15, %d14, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0xfe]
.code32
msubs.u %d15, %d14, %d15, 511

# CHECK-INST: msubs.u %d15, %d15, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0xff]
.code32
msubs.u %d15, %d15, %d0, 271

# CHECK-INST: msubs.u %d15, %d15, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0xff]
.code32
msubs.u %d15, %d15, %d0, 496

# CHECK-INST: msubs.u %d15, %d15, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0xff]
.code32
msubs.u %d15, %d15, %d0, 511

# CHECK-INST: msubs.u %d15, %d15, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0xff]
.code32
msubs.u %d15, %d15, %d1, 271

# CHECK-INST: msubs.u %d15, %d15, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0xff]
.code32
msubs.u %d15, %d15, %d1, 496

# CHECK-INST: msubs.u %d15, %d15, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0xff]
.code32
msubs.u %d15, %d15, %d1, 511

# CHECK-INST: msubs.u %d15, %d15, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0xff]
.code32
msubs.u %d15, %d15, %d14, 271

# CHECK-INST: msubs.u %d15, %d15, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0xff]
.code32
msubs.u %d15, %d15, %d14, 496

# CHECK-INST: msubs.u %d15, %d15, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0xff]
.code32
msubs.u %d15, %d15, %d14, 511

# CHECK-INST: msubs.u %d15, %d15, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0xff]
.code32
msubs.u %d15, %d15, %d15, 271

# CHECK-INST: msubs.u %d15, %d15, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0xff]
.code32
msubs.u %d15, %d15, %d15, 496

# CHECK-INST: msubs.u %d15, %d15, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0xff]
.code32
msubs.u %d15, %d15, %d15, 511

# CHECK-INST: msubs.u %e0, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xe8,0x00]
.code32
msubs.u %e0, %e0, %d0, %d0

# CHECK-INST: msubs.u %e0, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xe8,0x00]
.code32
msubs.u %e0, %e0, %d0, %d1

# CHECK-INST: msubs.u %e0, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xe8,0x00]
.code32
msubs.u %e0, %e0, %d0, %d14

# CHECK-INST: msubs.u %e0, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xe8,0x00]
.code32
msubs.u %e0, %e0, %d0, %d15

# CHECK-INST: msubs.u %e0, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xe8,0x00]
.code32
msubs.u %e0, %e0, %d1, %d0

# CHECK-INST: msubs.u %e0, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xe8,0x00]
.code32
msubs.u %e0, %e0, %d1, %d1

# CHECK-INST: msubs.u %e0, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xe8,0x00]
.code32
msubs.u %e0, %e0, %d1, %d14

# CHECK-INST: msubs.u %e0, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xe8,0x00]
.code32
msubs.u %e0, %e0, %d1, %d15

# CHECK-INST: msubs.u %e0, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xe8,0x00]
.code32
msubs.u %e0, %e0, %d14, %d0

# CHECK-INST: msubs.u %e0, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xe8,0x00]
.code32
msubs.u %e0, %e0, %d14, %d1

# CHECK-INST: msubs.u %e0, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xe8,0x00]
.code32
msubs.u %e0, %e0, %d14, %d14

# CHECK-INST: msubs.u %e0, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xe8,0x00]
.code32
msubs.u %e0, %e0, %d14, %d15

# CHECK-INST: msubs.u %e0, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xe8,0x00]
.code32
msubs.u %e0, %e0, %d15, %d0

# CHECK-INST: msubs.u %e0, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xe8,0x00]
.code32
msubs.u %e0, %e0, %d15, %d1

# CHECK-INST: msubs.u %e0, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xe8,0x00]
.code32
msubs.u %e0, %e0, %d15, %d14

# CHECK-INST: msubs.u %e0, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xe8,0x00]
.code32
msubs.u %e0, %e0, %d15, %d15

# CHECK-INST: msubs.u %e0, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xe8,0x06]
.code32
msubs.u %e0, %e6, %d0, %d0

# CHECK-INST: msubs.u %e0, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xe8,0x06]
.code32
msubs.u %e0, %e6, %d0, %d1

# CHECK-INST: msubs.u %e0, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xe8,0x06]
.code32
msubs.u %e0, %e6, %d0, %d14

# CHECK-INST: msubs.u %e0, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xe8,0x06]
.code32
msubs.u %e0, %e6, %d0, %d15

# CHECK-INST: msubs.u %e0, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xe8,0x06]
.code32
msubs.u %e0, %e6, %d1, %d0

# CHECK-INST: msubs.u %e0, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xe8,0x06]
.code32
msubs.u %e0, %e6, %d1, %d1

# CHECK-INST: msubs.u %e0, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xe8,0x06]
.code32
msubs.u %e0, %e6, %d1, %d14

# CHECK-INST: msubs.u %e0, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xe8,0x06]
.code32
msubs.u %e0, %e6, %d1, %d15

# CHECK-INST: msubs.u %e0, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xe8,0x06]
.code32
msubs.u %e0, %e6, %d14, %d0

# CHECK-INST: msubs.u %e0, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xe8,0x06]
.code32
msubs.u %e0, %e6, %d14, %d1

# CHECK-INST: msubs.u %e0, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xe8,0x06]
.code32
msubs.u %e0, %e6, %d14, %d14

# CHECK-INST: msubs.u %e0, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xe8,0x06]
.code32
msubs.u %e0, %e6, %d14, %d15

# CHECK-INST: msubs.u %e0, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xe8,0x06]
.code32
msubs.u %e0, %e6, %d15, %d0

# CHECK-INST: msubs.u %e0, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xe8,0x06]
.code32
msubs.u %e0, %e6, %d15, %d1

# CHECK-INST: msubs.u %e0, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xe8,0x06]
.code32
msubs.u %e0, %e6, %d15, %d14

# CHECK-INST: msubs.u %e0, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xe8,0x06]
.code32
msubs.u %e0, %e6, %d15, %d15

# CHECK-INST: msubs.u %e0, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xe8,0x0e]
.code32
msubs.u %e0, %e14, %d0, %d0

# CHECK-INST: msubs.u %e0, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xe8,0x0e]
.code32
msubs.u %e0, %e14, %d0, %d1

# CHECK-INST: msubs.u %e0, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xe8,0x0e]
.code32
msubs.u %e0, %e14, %d0, %d14

# CHECK-INST: msubs.u %e0, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xe8,0x0e]
.code32
msubs.u %e0, %e14, %d0, %d15

# CHECK-INST: msubs.u %e0, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xe8,0x0e]
.code32
msubs.u %e0, %e14, %d1, %d0

# CHECK-INST: msubs.u %e0, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xe8,0x0e]
.code32
msubs.u %e0, %e14, %d1, %d1

# CHECK-INST: msubs.u %e0, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xe8,0x0e]
.code32
msubs.u %e0, %e14, %d1, %d14

# CHECK-INST: msubs.u %e0, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xe8,0x0e]
.code32
msubs.u %e0, %e14, %d1, %d15

# CHECK-INST: msubs.u %e0, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xe8,0x0e]
.code32
msubs.u %e0, %e14, %d14, %d0

# CHECK-INST: msubs.u %e0, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xe8,0x0e]
.code32
msubs.u %e0, %e14, %d14, %d1

# CHECK-INST: msubs.u %e0, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xe8,0x0e]
.code32
msubs.u %e0, %e14, %d14, %d14

# CHECK-INST: msubs.u %e0, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xe8,0x0e]
.code32
msubs.u %e0, %e14, %d14, %d15

# CHECK-INST: msubs.u %e0, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xe8,0x0e]
.code32
msubs.u %e0, %e14, %d15, %d0

# CHECK-INST: msubs.u %e0, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xe8,0x0e]
.code32
msubs.u %e0, %e14, %d15, %d1

# CHECK-INST: msubs.u %e0, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xe8,0x0e]
.code32
msubs.u %e0, %e14, %d15, %d14

# CHECK-INST: msubs.u %e0, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xe8,0x0e]
.code32
msubs.u %e0, %e14, %d15, %d15

# CHECK-INST: msubs.u %e6, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xe8,0x60]
.code32
msubs.u %e6, %e0, %d0, %d0

# CHECK-INST: msubs.u %e6, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xe8,0x60]
.code32
msubs.u %e6, %e0, %d0, %d1

# CHECK-INST: msubs.u %e6, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xe8,0x60]
.code32
msubs.u %e6, %e0, %d0, %d14

# CHECK-INST: msubs.u %e6, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xe8,0x60]
.code32
msubs.u %e6, %e0, %d0, %d15

# CHECK-INST: msubs.u %e6, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xe8,0x60]
.code32
msubs.u %e6, %e0, %d1, %d0

# CHECK-INST: msubs.u %e6, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xe8,0x60]
.code32
msubs.u %e6, %e0, %d1, %d1

# CHECK-INST: msubs.u %e6, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xe8,0x60]
.code32
msubs.u %e6, %e0, %d1, %d14

# CHECK-INST: msubs.u %e6, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xe8,0x60]
.code32
msubs.u %e6, %e0, %d1, %d15

# CHECK-INST: msubs.u %e6, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xe8,0x60]
.code32
msubs.u %e6, %e0, %d14, %d0

# CHECK-INST: msubs.u %e6, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xe8,0x60]
.code32
msubs.u %e6, %e0, %d14, %d1

# CHECK-INST: msubs.u %e6, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xe8,0x60]
.code32
msubs.u %e6, %e0, %d14, %d14

# CHECK-INST: msubs.u %e6, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xe8,0x60]
.code32
msubs.u %e6, %e0, %d14, %d15

# CHECK-INST: msubs.u %e6, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xe8,0x60]
.code32
msubs.u %e6, %e0, %d15, %d0

# CHECK-INST: msubs.u %e6, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xe8,0x60]
.code32
msubs.u %e6, %e0, %d15, %d1

# CHECK-INST: msubs.u %e6, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xe8,0x60]
.code32
msubs.u %e6, %e0, %d15, %d14

# CHECK-INST: msubs.u %e6, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xe8,0x60]
.code32
msubs.u %e6, %e0, %d15, %d15

# CHECK-INST: msubs.u %e6, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xe8,0x66]
.code32
msubs.u %e6, %e6, %d0, %d0

# CHECK-INST: msubs.u %e6, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xe8,0x66]
.code32
msubs.u %e6, %e6, %d0, %d1

# CHECK-INST: msubs.u %e6, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xe8,0x66]
.code32
msubs.u %e6, %e6, %d0, %d14

# CHECK-INST: msubs.u %e6, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xe8,0x66]
.code32
msubs.u %e6, %e6, %d0, %d15

# CHECK-INST: msubs.u %e6, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xe8,0x66]
.code32
msubs.u %e6, %e6, %d1, %d0

# CHECK-INST: msubs.u %e6, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xe8,0x66]
.code32
msubs.u %e6, %e6, %d1, %d1

# CHECK-INST: msubs.u %e6, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xe8,0x66]
.code32
msubs.u %e6, %e6, %d1, %d14

# CHECK-INST: msubs.u %e6, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xe8,0x66]
.code32
msubs.u %e6, %e6, %d1, %d15

# CHECK-INST: msubs.u %e6, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xe8,0x66]
.code32
msubs.u %e6, %e6, %d14, %d0

# CHECK-INST: msubs.u %e6, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xe8,0x66]
.code32
msubs.u %e6, %e6, %d14, %d1

# CHECK-INST: msubs.u %e6, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xe8,0x66]
.code32
msubs.u %e6, %e6, %d14, %d14

# CHECK-INST: msubs.u %e6, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xe8,0x66]
.code32
msubs.u %e6, %e6, %d14, %d15

# CHECK-INST: msubs.u %e6, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xe8,0x66]
.code32
msubs.u %e6, %e6, %d15, %d0

# CHECK-INST: msubs.u %e6, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xe8,0x66]
.code32
msubs.u %e6, %e6, %d15, %d1

# CHECK-INST: msubs.u %e6, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xe8,0x66]
.code32
msubs.u %e6, %e6, %d15, %d14

# CHECK-INST: msubs.u %e6, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xe8,0x66]
.code32
msubs.u %e6, %e6, %d15, %d15

# CHECK-INST: msubs.u %e6, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xe8,0x6e]
.code32
msubs.u %e6, %e14, %d0, %d0

# CHECK-INST: msubs.u %e6, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xe8,0x6e]
.code32
msubs.u %e6, %e14, %d0, %d1

# CHECK-INST: msubs.u %e6, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xe8,0x6e]
.code32
msubs.u %e6, %e14, %d0, %d14

# CHECK-INST: msubs.u %e6, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xe8,0x6e]
.code32
msubs.u %e6, %e14, %d0, %d15

# CHECK-INST: msubs.u %e6, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xe8,0x6e]
.code32
msubs.u %e6, %e14, %d1, %d0

# CHECK-INST: msubs.u %e6, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xe8,0x6e]
.code32
msubs.u %e6, %e14, %d1, %d1

# CHECK-INST: msubs.u %e6, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xe8,0x6e]
.code32
msubs.u %e6, %e14, %d1, %d14

# CHECK-INST: msubs.u %e6, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xe8,0x6e]
.code32
msubs.u %e6, %e14, %d1, %d15

# CHECK-INST: msubs.u %e6, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xe8,0x6e]
.code32
msubs.u %e6, %e14, %d14, %d0

# CHECK-INST: msubs.u %e6, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xe8,0x6e]
.code32
msubs.u %e6, %e14, %d14, %d1

# CHECK-INST: msubs.u %e6, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xe8,0x6e]
.code32
msubs.u %e6, %e14, %d14, %d14

# CHECK-INST: msubs.u %e6, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xe8,0x6e]
.code32
msubs.u %e6, %e14, %d14, %d15

# CHECK-INST: msubs.u %e6, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xe8,0x6e]
.code32
msubs.u %e6, %e14, %d15, %d0

# CHECK-INST: msubs.u %e6, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xe8,0x6e]
.code32
msubs.u %e6, %e14, %d15, %d1

# CHECK-INST: msubs.u %e6, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xe8,0x6e]
.code32
msubs.u %e6, %e14, %d15, %d14

# CHECK-INST: msubs.u %e6, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xe8,0x6e]
.code32
msubs.u %e6, %e14, %d15, %d15

# CHECK-INST: msubs.u %e14, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xe8,0xe0]
.code32
msubs.u %e14, %e0, %d0, %d0

# CHECK-INST: msubs.u %e14, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xe8,0xe0]
.code32
msubs.u %e14, %e0, %d0, %d1

# CHECK-INST: msubs.u %e14, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xe8,0xe0]
.code32
msubs.u %e14, %e0, %d0, %d14

# CHECK-INST: msubs.u %e14, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xe8,0xe0]
.code32
msubs.u %e14, %e0, %d0, %d15

# CHECK-INST: msubs.u %e14, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xe8,0xe0]
.code32
msubs.u %e14, %e0, %d1, %d0

# CHECK-INST: msubs.u %e14, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xe8,0xe0]
.code32
msubs.u %e14, %e0, %d1, %d1

# CHECK-INST: msubs.u %e14, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xe8,0xe0]
.code32
msubs.u %e14, %e0, %d1, %d14

# CHECK-INST: msubs.u %e14, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xe8,0xe0]
.code32
msubs.u %e14, %e0, %d1, %d15

# CHECK-INST: msubs.u %e14, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xe8,0xe0]
.code32
msubs.u %e14, %e0, %d14, %d0

# CHECK-INST: msubs.u %e14, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xe8,0xe0]
.code32
msubs.u %e14, %e0, %d14, %d1

# CHECK-INST: msubs.u %e14, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xe8,0xe0]
.code32
msubs.u %e14, %e0, %d14, %d14

# CHECK-INST: msubs.u %e14, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xe8,0xe0]
.code32
msubs.u %e14, %e0, %d14, %d15

# CHECK-INST: msubs.u %e14, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xe8,0xe0]
.code32
msubs.u %e14, %e0, %d15, %d0

# CHECK-INST: msubs.u %e14, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xe8,0xe0]
.code32
msubs.u %e14, %e0, %d15, %d1

# CHECK-INST: msubs.u %e14, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xe8,0xe0]
.code32
msubs.u %e14, %e0, %d15, %d14

# CHECK-INST: msubs.u %e14, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xe8,0xe0]
.code32
msubs.u %e14, %e0, %d15, %d15

# CHECK-INST: msubs.u %e14, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xe8,0xe6]
.code32
msubs.u %e14, %e6, %d0, %d0

# CHECK-INST: msubs.u %e14, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xe8,0xe6]
.code32
msubs.u %e14, %e6, %d0, %d1

# CHECK-INST: msubs.u %e14, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xe8,0xe6]
.code32
msubs.u %e14, %e6, %d0, %d14

# CHECK-INST: msubs.u %e14, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xe8,0xe6]
.code32
msubs.u %e14, %e6, %d0, %d15

# CHECK-INST: msubs.u %e14, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xe8,0xe6]
.code32
msubs.u %e14, %e6, %d1, %d0

# CHECK-INST: msubs.u %e14, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xe8,0xe6]
.code32
msubs.u %e14, %e6, %d1, %d1

# CHECK-INST: msubs.u %e14, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xe8,0xe6]
.code32
msubs.u %e14, %e6, %d1, %d14

# CHECK-INST: msubs.u %e14, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xe8,0xe6]
.code32
msubs.u %e14, %e6, %d1, %d15

# CHECK-INST: msubs.u %e14, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xe8,0xe6]
.code32
msubs.u %e14, %e6, %d14, %d0

# CHECK-INST: msubs.u %e14, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xe8,0xe6]
.code32
msubs.u %e14, %e6, %d14, %d1

# CHECK-INST: msubs.u %e14, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xe8,0xe6]
.code32
msubs.u %e14, %e6, %d14, %d14

# CHECK-INST: msubs.u %e14, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xe8,0xe6]
.code32
msubs.u %e14, %e6, %d14, %d15

# CHECK-INST: msubs.u %e14, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xe8,0xe6]
.code32
msubs.u %e14, %e6, %d15, %d0

# CHECK-INST: msubs.u %e14, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xe8,0xe6]
.code32
msubs.u %e14, %e6, %d15, %d1

# CHECK-INST: msubs.u %e14, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xe8,0xe6]
.code32
msubs.u %e14, %e6, %d15, %d14

# CHECK-INST: msubs.u %e14, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xe8,0xe6]
.code32
msubs.u %e14, %e6, %d15, %d15

# CHECK-INST: msubs.u %e14, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xe8,0xee]
.code32
msubs.u %e14, %e14, %d0, %d0

# CHECK-INST: msubs.u %e14, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xe8,0xee]
.code32
msubs.u %e14, %e14, %d0, %d1

# CHECK-INST: msubs.u %e14, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xe8,0xee]
.code32
msubs.u %e14, %e14, %d0, %d14

# CHECK-INST: msubs.u %e14, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xe8,0xee]
.code32
msubs.u %e14, %e14, %d0, %d15

# CHECK-INST: msubs.u %e14, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xe8,0xee]
.code32
msubs.u %e14, %e14, %d1, %d0

# CHECK-INST: msubs.u %e14, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xe8,0xee]
.code32
msubs.u %e14, %e14, %d1, %d1

# CHECK-INST: msubs.u %e14, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xe8,0xee]
.code32
msubs.u %e14, %e14, %d1, %d14

# CHECK-INST: msubs.u %e14, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xe8,0xee]
.code32
msubs.u %e14, %e14, %d1, %d15

# CHECK-INST: msubs.u %e14, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xe8,0xee]
.code32
msubs.u %e14, %e14, %d14, %d0

# CHECK-INST: msubs.u %e14, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xe8,0xee]
.code32
msubs.u %e14, %e14, %d14, %d1

# CHECK-INST: msubs.u %e14, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xe8,0xee]
.code32
msubs.u %e14, %e14, %d14, %d14

# CHECK-INST: msubs.u %e14, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xe8,0xee]
.code32
msubs.u %e14, %e14, %d14, %d15

# CHECK-INST: msubs.u %e14, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xe8,0xee]
.code32
msubs.u %e14, %e14, %d15, %d0

# CHECK-INST: msubs.u %e14, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xe8,0xee]
.code32
msubs.u %e14, %e14, %d15, %d1

# CHECK-INST: msubs.u %e14, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xe8,0xee]
.code32
msubs.u %e14, %e14, %d15, %d14

# CHECK-INST: msubs.u %e14, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xe8,0xee]
.code32
msubs.u %e14, %e14, %d15, %d15

# CHECK-INST: msubs.u %e0, %e0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0xd0,0x00]
.code32
msubs.u %e0, %e0, %d0, 271

# CHECK-INST: msubs.u %e0, %e0, %d0, 496
# CHECK: encoding: [0x33,0x00,0xdf,0x00]
.code32
msubs.u %e0, %e0, %d0, 496

# CHECK-INST: msubs.u %e0, %e0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0xdf,0x00]
.code32
msubs.u %e0, %e0, %d0, 511

# CHECK-INST: msubs.u %e0, %e0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0xd0,0x00]
.code32
msubs.u %e0, %e0, %d1, 271

# CHECK-INST: msubs.u %e0, %e0, %d1, 496
# CHECK: encoding: [0x33,0x01,0xdf,0x00]
.code32
msubs.u %e0, %e0, %d1, 496

# CHECK-INST: msubs.u %e0, %e0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0xdf,0x00]
.code32
msubs.u %e0, %e0, %d1, 511

# CHECK-INST: msubs.u %e0, %e0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0xd0,0x00]
.code32
msubs.u %e0, %e0, %d14, 271

# CHECK-INST: msubs.u %e0, %e0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0xdf,0x00]
.code32
msubs.u %e0, %e0, %d14, 496

# CHECK-INST: msubs.u %e0, %e0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0xdf,0x00]
.code32
msubs.u %e0, %e0, %d14, 511

# CHECK-INST: msubs.u %e0, %e0, %d15, 271
# CHECK: encoding: [0x33,0xff,0xd0,0x00]
.code32
msubs.u %e0, %e0, %d15, 271

# CHECK-INST: msubs.u %e0, %e0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0xdf,0x00]
.code32
msubs.u %e0, %e0, %d15, 496

# CHECK-INST: msubs.u %e0, %e0, %d15, 511
# CHECK: encoding: [0x33,0xff,0xdf,0x00]
.code32
msubs.u %e0, %e0, %d15, 511

# CHECK-INST: msubs.u %e0, %e6, %d0, 271
# CHECK: encoding: [0x33,0xf0,0xd0,0x06]
.code32
msubs.u %e0, %e6, %d0, 271

# CHECK-INST: msubs.u %e0, %e6, %d0, 496
# CHECK: encoding: [0x33,0x00,0xdf,0x06]
.code32
msubs.u %e0, %e6, %d0, 496

# CHECK-INST: msubs.u %e0, %e6, %d0, 511
# CHECK: encoding: [0x33,0xf0,0xdf,0x06]
.code32
msubs.u %e0, %e6, %d0, 511

# CHECK-INST: msubs.u %e0, %e6, %d1, 271
# CHECK: encoding: [0x33,0xf1,0xd0,0x06]
.code32
msubs.u %e0, %e6, %d1, 271

# CHECK-INST: msubs.u %e0, %e6, %d1, 496
# CHECK: encoding: [0x33,0x01,0xdf,0x06]
.code32
msubs.u %e0, %e6, %d1, 496

# CHECK-INST: msubs.u %e0, %e6, %d1, 511
# CHECK: encoding: [0x33,0xf1,0xdf,0x06]
.code32
msubs.u %e0, %e6, %d1, 511

# CHECK-INST: msubs.u %e0, %e6, %d14, 271
# CHECK: encoding: [0x33,0xfe,0xd0,0x06]
.code32
msubs.u %e0, %e6, %d14, 271

# CHECK-INST: msubs.u %e0, %e6, %d14, 496
# CHECK: encoding: [0x33,0x0e,0xdf,0x06]
.code32
msubs.u %e0, %e6, %d14, 496

# CHECK-INST: msubs.u %e0, %e6, %d14, 511
# CHECK: encoding: [0x33,0xfe,0xdf,0x06]
.code32
msubs.u %e0, %e6, %d14, 511

# CHECK-INST: msubs.u %e0, %e6, %d15, 271
# CHECK: encoding: [0x33,0xff,0xd0,0x06]
.code32
msubs.u %e0, %e6, %d15, 271

# CHECK-INST: msubs.u %e0, %e6, %d15, 496
# CHECK: encoding: [0x33,0x0f,0xdf,0x06]
.code32
msubs.u %e0, %e6, %d15, 496

# CHECK-INST: msubs.u %e0, %e6, %d15, 511
# CHECK: encoding: [0x33,0xff,0xdf,0x06]
.code32
msubs.u %e0, %e6, %d15, 511

# CHECK-INST: msubs.u %e0, %e14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0xd0,0x0e]
.code32
msubs.u %e0, %e14, %d0, 271

# CHECK-INST: msubs.u %e0, %e14, %d0, 496
# CHECK: encoding: [0x33,0x00,0xdf,0x0e]
.code32
msubs.u %e0, %e14, %d0, 496

# CHECK-INST: msubs.u %e0, %e14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0xdf,0x0e]
.code32
msubs.u %e0, %e14, %d0, 511

# CHECK-INST: msubs.u %e0, %e14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0xd0,0x0e]
.code32
msubs.u %e0, %e14, %d1, 271

# CHECK-INST: msubs.u %e0, %e14, %d1, 496
# CHECK: encoding: [0x33,0x01,0xdf,0x0e]
.code32
msubs.u %e0, %e14, %d1, 496

# CHECK-INST: msubs.u %e0, %e14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0xdf,0x0e]
.code32
msubs.u %e0, %e14, %d1, 511

# CHECK-INST: msubs.u %e0, %e14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0xd0,0x0e]
.code32
msubs.u %e0, %e14, %d14, 271

# CHECK-INST: msubs.u %e0, %e14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0xdf,0x0e]
.code32
msubs.u %e0, %e14, %d14, 496

# CHECK-INST: msubs.u %e0, %e14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0xdf,0x0e]
.code32
msubs.u %e0, %e14, %d14, 511

# CHECK-INST: msubs.u %e0, %e14, %d15, 271
# CHECK: encoding: [0x33,0xff,0xd0,0x0e]
.code32
msubs.u %e0, %e14, %d15, 271

# CHECK-INST: msubs.u %e0, %e14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0xdf,0x0e]
.code32
msubs.u %e0, %e14, %d15, 496

# CHECK-INST: msubs.u %e0, %e14, %d15, 511
# CHECK: encoding: [0x33,0xff,0xdf,0x0e]
.code32
msubs.u %e0, %e14, %d15, 511

# CHECK-INST: msubs.u %e6, %e0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0xd0,0x60]
.code32
msubs.u %e6, %e0, %d0, 271

# CHECK-INST: msubs.u %e6, %e0, %d0, 496
# CHECK: encoding: [0x33,0x00,0xdf,0x60]
.code32
msubs.u %e6, %e0, %d0, 496

# CHECK-INST: msubs.u %e6, %e0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0xdf,0x60]
.code32
msubs.u %e6, %e0, %d0, 511

# CHECK-INST: msubs.u %e6, %e0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0xd0,0x60]
.code32
msubs.u %e6, %e0, %d1, 271

# CHECK-INST: msubs.u %e6, %e0, %d1, 496
# CHECK: encoding: [0x33,0x01,0xdf,0x60]
.code32
msubs.u %e6, %e0, %d1, 496

# CHECK-INST: msubs.u %e6, %e0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0xdf,0x60]
.code32
msubs.u %e6, %e0, %d1, 511

# CHECK-INST: msubs.u %e6, %e0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0xd0,0x60]
.code32
msubs.u %e6, %e0, %d14, 271

# CHECK-INST: msubs.u %e6, %e0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0xdf,0x60]
.code32
msubs.u %e6, %e0, %d14, 496

# CHECK-INST: msubs.u %e6, %e0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0xdf,0x60]
.code32
msubs.u %e6, %e0, %d14, 511

# CHECK-INST: msubs.u %e6, %e0, %d15, 271
# CHECK: encoding: [0x33,0xff,0xd0,0x60]
.code32
msubs.u %e6, %e0, %d15, 271

# CHECK-INST: msubs.u %e6, %e0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0xdf,0x60]
.code32
msubs.u %e6, %e0, %d15, 496

# CHECK-INST: msubs.u %e6, %e0, %d15, 511
# CHECK: encoding: [0x33,0xff,0xdf,0x60]
.code32
msubs.u %e6, %e0, %d15, 511

# CHECK-INST: msubs.u %e6, %e6, %d0, 271
# CHECK: encoding: [0x33,0xf0,0xd0,0x66]
.code32
msubs.u %e6, %e6, %d0, 271

# CHECK-INST: msubs.u %e6, %e6, %d0, 496
# CHECK: encoding: [0x33,0x00,0xdf,0x66]
.code32
msubs.u %e6, %e6, %d0, 496

# CHECK-INST: msubs.u %e6, %e6, %d0, 511
# CHECK: encoding: [0x33,0xf0,0xdf,0x66]
.code32
msubs.u %e6, %e6, %d0, 511

# CHECK-INST: msubs.u %e6, %e6, %d1, 271
# CHECK: encoding: [0x33,0xf1,0xd0,0x66]
.code32
msubs.u %e6, %e6, %d1, 271

# CHECK-INST: msubs.u %e6, %e6, %d1, 496
# CHECK: encoding: [0x33,0x01,0xdf,0x66]
.code32
msubs.u %e6, %e6, %d1, 496

# CHECK-INST: msubs.u %e6, %e6, %d1, 511
# CHECK: encoding: [0x33,0xf1,0xdf,0x66]
.code32
msubs.u %e6, %e6, %d1, 511

# CHECK-INST: msubs.u %e6, %e6, %d14, 271
# CHECK: encoding: [0x33,0xfe,0xd0,0x66]
.code32
msubs.u %e6, %e6, %d14, 271

# CHECK-INST: msubs.u %e6, %e6, %d14, 496
# CHECK: encoding: [0x33,0x0e,0xdf,0x66]
.code32
msubs.u %e6, %e6, %d14, 496

# CHECK-INST: msubs.u %e6, %e6, %d14, 511
# CHECK: encoding: [0x33,0xfe,0xdf,0x66]
.code32
msubs.u %e6, %e6, %d14, 511

# CHECK-INST: msubs.u %e6, %e6, %d15, 271
# CHECK: encoding: [0x33,0xff,0xd0,0x66]
.code32
msubs.u %e6, %e6, %d15, 271

# CHECK-INST: msubs.u %e6, %e6, %d15, 496
# CHECK: encoding: [0x33,0x0f,0xdf,0x66]
.code32
msubs.u %e6, %e6, %d15, 496

# CHECK-INST: msubs.u %e6, %e6, %d15, 511
# CHECK: encoding: [0x33,0xff,0xdf,0x66]
.code32
msubs.u %e6, %e6, %d15, 511

# CHECK-INST: msubs.u %e6, %e14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0xd0,0x6e]
.code32
msubs.u %e6, %e14, %d0, 271

# CHECK-INST: msubs.u %e6, %e14, %d0, 496
# CHECK: encoding: [0x33,0x00,0xdf,0x6e]
.code32
msubs.u %e6, %e14, %d0, 496

# CHECK-INST: msubs.u %e6, %e14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0xdf,0x6e]
.code32
msubs.u %e6, %e14, %d0, 511

# CHECK-INST: msubs.u %e6, %e14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0xd0,0x6e]
.code32
msubs.u %e6, %e14, %d1, 271

# CHECK-INST: msubs.u %e6, %e14, %d1, 496
# CHECK: encoding: [0x33,0x01,0xdf,0x6e]
.code32
msubs.u %e6, %e14, %d1, 496

# CHECK-INST: msubs.u %e6, %e14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0xdf,0x6e]
.code32
msubs.u %e6, %e14, %d1, 511

# CHECK-INST: msubs.u %e6, %e14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0xd0,0x6e]
.code32
msubs.u %e6, %e14, %d14, 271

# CHECK-INST: msubs.u %e6, %e14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0xdf,0x6e]
.code32
msubs.u %e6, %e14, %d14, 496

# CHECK-INST: msubs.u %e6, %e14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0xdf,0x6e]
.code32
msubs.u %e6, %e14, %d14, 511

# CHECK-INST: msubs.u %e6, %e14, %d15, 271
# CHECK: encoding: [0x33,0xff,0xd0,0x6e]
.code32
msubs.u %e6, %e14, %d15, 271

# CHECK-INST: msubs.u %e6, %e14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0xdf,0x6e]
.code32
msubs.u %e6, %e14, %d15, 496

# CHECK-INST: msubs.u %e6, %e14, %d15, 511
# CHECK: encoding: [0x33,0xff,0xdf,0x6e]
.code32
msubs.u %e6, %e14, %d15, 511

# CHECK-INST: msubs.u %e14, %e0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0xd0,0xe0]
.code32
msubs.u %e14, %e0, %d0, 271

# CHECK-INST: msubs.u %e14, %e0, %d0, 496
# CHECK: encoding: [0x33,0x00,0xdf,0xe0]
.code32
msubs.u %e14, %e0, %d0, 496

# CHECK-INST: msubs.u %e14, %e0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0xdf,0xe0]
.code32
msubs.u %e14, %e0, %d0, 511

# CHECK-INST: msubs.u %e14, %e0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0xd0,0xe0]
.code32
msubs.u %e14, %e0, %d1, 271

# CHECK-INST: msubs.u %e14, %e0, %d1, 496
# CHECK: encoding: [0x33,0x01,0xdf,0xe0]
.code32
msubs.u %e14, %e0, %d1, 496

# CHECK-INST: msubs.u %e14, %e0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0xdf,0xe0]
.code32
msubs.u %e14, %e0, %d1, 511

# CHECK-INST: msubs.u %e14, %e0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0xd0,0xe0]
.code32
msubs.u %e14, %e0, %d14, 271

# CHECK-INST: msubs.u %e14, %e0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0xdf,0xe0]
.code32
msubs.u %e14, %e0, %d14, 496

# CHECK-INST: msubs.u %e14, %e0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0xdf,0xe0]
.code32
msubs.u %e14, %e0, %d14, 511

# CHECK-INST: msubs.u %e14, %e0, %d15, 271
# CHECK: encoding: [0x33,0xff,0xd0,0xe0]
.code32
msubs.u %e14, %e0, %d15, 271

# CHECK-INST: msubs.u %e14, %e0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0xdf,0xe0]
.code32
msubs.u %e14, %e0, %d15, 496

# CHECK-INST: msubs.u %e14, %e0, %d15, 511
# CHECK: encoding: [0x33,0xff,0xdf,0xe0]
.code32
msubs.u %e14, %e0, %d15, 511

# CHECK-INST: msubs.u %e14, %e6, %d0, 271
# CHECK: encoding: [0x33,0xf0,0xd0,0xe6]
.code32
msubs.u %e14, %e6, %d0, 271

# CHECK-INST: msubs.u %e14, %e6, %d0, 496
# CHECK: encoding: [0x33,0x00,0xdf,0xe6]
.code32
msubs.u %e14, %e6, %d0, 496

# CHECK-INST: msubs.u %e14, %e6, %d0, 511
# CHECK: encoding: [0x33,0xf0,0xdf,0xe6]
.code32
msubs.u %e14, %e6, %d0, 511

# CHECK-INST: msubs.u %e14, %e6, %d1, 271
# CHECK: encoding: [0x33,0xf1,0xd0,0xe6]
.code32
msubs.u %e14, %e6, %d1, 271

# CHECK-INST: msubs.u %e14, %e6, %d1, 496
# CHECK: encoding: [0x33,0x01,0xdf,0xe6]
.code32
msubs.u %e14, %e6, %d1, 496

# CHECK-INST: msubs.u %e14, %e6, %d1, 511
# CHECK: encoding: [0x33,0xf1,0xdf,0xe6]
.code32
msubs.u %e14, %e6, %d1, 511

# CHECK-INST: msubs.u %e14, %e6, %d14, 271
# CHECK: encoding: [0x33,0xfe,0xd0,0xe6]
.code32
msubs.u %e14, %e6, %d14, 271

# CHECK-INST: msubs.u %e14, %e6, %d14, 496
# CHECK: encoding: [0x33,0x0e,0xdf,0xe6]
.code32
msubs.u %e14, %e6, %d14, 496

# CHECK-INST: msubs.u %e14, %e6, %d14, 511
# CHECK: encoding: [0x33,0xfe,0xdf,0xe6]
.code32
msubs.u %e14, %e6, %d14, 511

# CHECK-INST: msubs.u %e14, %e6, %d15, 271
# CHECK: encoding: [0x33,0xff,0xd0,0xe6]
.code32
msubs.u %e14, %e6, %d15, 271

# CHECK-INST: msubs.u %e14, %e6, %d15, 496
# CHECK: encoding: [0x33,0x0f,0xdf,0xe6]
.code32
msubs.u %e14, %e6, %d15, 496

# CHECK-INST: msubs.u %e14, %e6, %d15, 511
# CHECK: encoding: [0x33,0xff,0xdf,0xe6]
.code32
msubs.u %e14, %e6, %d15, 511

# CHECK-INST: msubs.u %e14, %e14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0xd0,0xee]
.code32
msubs.u %e14, %e14, %d0, 271

# CHECK-INST: msubs.u %e14, %e14, %d0, 496
# CHECK: encoding: [0x33,0x00,0xdf,0xee]
.code32
msubs.u %e14, %e14, %d0, 496

# CHECK-INST: msubs.u %e14, %e14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0xdf,0xee]
.code32
msubs.u %e14, %e14, %d0, 511

# CHECK-INST: msubs.u %e14, %e14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0xd0,0xee]
.code32
msubs.u %e14, %e14, %d1, 271

# CHECK-INST: msubs.u %e14, %e14, %d1, 496
# CHECK: encoding: [0x33,0x01,0xdf,0xee]
.code32
msubs.u %e14, %e14, %d1, 496

# CHECK-INST: msubs.u %e14, %e14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0xdf,0xee]
.code32
msubs.u %e14, %e14, %d1, 511

# CHECK-INST: msubs.u %e14, %e14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0xd0,0xee]
.code32
msubs.u %e14, %e14, %d14, 271

# CHECK-INST: msubs.u %e14, %e14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0xdf,0xee]
.code32
msubs.u %e14, %e14, %d14, 496

# CHECK-INST: msubs.u %e14, %e14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0xdf,0xee]
.code32
msubs.u %e14, %e14, %d14, 511

# CHECK-INST: msubs.u %e14, %e14, %d15, 271
# CHECK: encoding: [0x33,0xff,0xd0,0xee]
.code32
msubs.u %e14, %e14, %d15, 271

# CHECK-INST: msubs.u %e14, %e14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0xdf,0xee]
.code32
msubs.u %e14, %e14, %d15, 496

# CHECK-INST: msubs.u %e14, %e14, %d15, 511
# CHECK: encoding: [0x33,0xff,0xdf,0xee]
.code32
msubs.u %e14, %e14, %d15, 511

# CHECK-INST: mul %d0, %d0
# CHECK: encoding: [0xe2,0x00]
.code16
mul %d0, %d0

# CHECK-INST: mul %d0, %d1
# CHECK: encoding: [0xe2,0x10]
.code16
mul %d0, %d1

# CHECK-INST: mul %d0, %d14
# CHECK: encoding: [0xe2,0xe0]
.code16
mul %d0, %d14

# CHECK-INST: mul %d0, %d15
# CHECK: encoding: [0xe2,0xf0]
.code16
mul %d0, %d15

# CHECK-INST: mul %d1, %d0
# CHECK: encoding: [0xe2,0x01]
.code16
mul %d1, %d0

# CHECK-INST: mul %d1, %d1
# CHECK: encoding: [0xe2,0x11]
.code16
mul %d1, %d1

# CHECK-INST: mul %d1, %d14
# CHECK: encoding: [0xe2,0xe1]
.code16
mul %d1, %d14

# CHECK-INST: mul %d1, %d15
# CHECK: encoding: [0xe2,0xf1]
.code16
mul %d1, %d15

# CHECK-INST: mul %d14, %d0
# CHECK: encoding: [0xe2,0x0e]
.code16
mul %d14, %d0

# CHECK-INST: mul %d14, %d1
# CHECK: encoding: [0xe2,0x1e]
.code16
mul %d14, %d1

# CHECK-INST: mul %d14, %d14
# CHECK: encoding: [0xe2,0xee]
.code16
mul %d14, %d14

# CHECK-INST: mul %d14, %d15
# CHECK: encoding: [0xe2,0xfe]
.code16
mul %d14, %d15

# CHECK-INST: mul %d15, %d0
# CHECK: encoding: [0xe2,0x0f]
.code16
mul %d15, %d0

# CHECK-INST: mul %d15, %d1
# CHECK: encoding: [0xe2,0x1f]
.code16
mul %d15, %d1

# CHECK-INST: mul %d15, %d14
# CHECK: encoding: [0xe2,0xef]
.code16
mul %d15, %d14

# CHECK-INST: mul %d15, %d15
# CHECK: encoding: [0xe2,0xff]
.code16
mul %d15, %d15

# CHECK-INST: mul %d0, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x0a,0x00]
.code32
mul %d0, %d0, %d0

# CHECK-INST: mul %d0, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x0a,0x00]
.code32
mul %d0, %d0, %d1

# CHECK-INST: mul %d0, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x0a,0x00]
.code32
mul %d0, %d0, %d14

# CHECK-INST: mul %d0, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x0a,0x00]
.code32
mul %d0, %d0, %d15

# CHECK-INST: mul %d0, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x0a,0x00]
.code32
mul %d0, %d1, %d0

# CHECK-INST: mul %d0, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x0a,0x00]
.code32
mul %d0, %d1, %d1

# CHECK-INST: mul %d0, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x0a,0x00]
.code32
mul %d0, %d1, %d14

# CHECK-INST: mul %d0, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x0a,0x00]
.code32
mul %d0, %d1, %d15

# CHECK-INST: mul %d0, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x0a,0x00]
.code32
mul %d0, %d14, %d0

# CHECK-INST: mul %d0, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x0a,0x00]
.code32
mul %d0, %d14, %d1

# CHECK-INST: mul %d0, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x0a,0x00]
.code32
mul %d0, %d14, %d14

# CHECK-INST: mul %d0, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x0a,0x00]
.code32
mul %d0, %d14, %d15

# CHECK-INST: mul %d0, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x0a,0x00]
.code32
mul %d0, %d15, %d0

# CHECK-INST: mul %d0, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x0a,0x00]
.code32
mul %d0, %d15, %d1

# CHECK-INST: mul %d0, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x0a,0x00]
.code32
mul %d0, %d15, %d14

# CHECK-INST: mul %d0, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x0a,0x00]
.code32
mul %d0, %d15, %d15

# CHECK-INST: mul %d1, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x0a,0x10]
.code32
mul %d1, %d0, %d0

# CHECK-INST: mul %d1, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x0a,0x10]
.code32
mul %d1, %d0, %d1

# CHECK-INST: mul %d1, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x0a,0x10]
.code32
mul %d1, %d0, %d14

# CHECK-INST: mul %d1, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x0a,0x10]
.code32
mul %d1, %d0, %d15

# CHECK-INST: mul %d1, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x0a,0x10]
.code32
mul %d1, %d1, %d0

# CHECK-INST: mul %d1, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x0a,0x10]
.code32
mul %d1, %d1, %d1

# CHECK-INST: mul %d1, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x0a,0x10]
.code32
mul %d1, %d1, %d14

# CHECK-INST: mul %d1, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x0a,0x10]
.code32
mul %d1, %d1, %d15

# CHECK-INST: mul %d1, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x0a,0x10]
.code32
mul %d1, %d14, %d0

# CHECK-INST: mul %d1, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x0a,0x10]
.code32
mul %d1, %d14, %d1

# CHECK-INST: mul %d1, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x0a,0x10]
.code32
mul %d1, %d14, %d14

# CHECK-INST: mul %d1, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x0a,0x10]
.code32
mul %d1, %d14, %d15

# CHECK-INST: mul %d1, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x0a,0x10]
.code32
mul %d1, %d15, %d0

# CHECK-INST: mul %d1, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x0a,0x10]
.code32
mul %d1, %d15, %d1

# CHECK-INST: mul %d1, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x0a,0x10]
.code32
mul %d1, %d15, %d14

# CHECK-INST: mul %d1, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x0a,0x10]
.code32
mul %d1, %d15, %d15

# CHECK-INST: mul %d14, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x0a,0xe0]
.code32
mul %d14, %d0, %d0

# CHECK-INST: mul %d14, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x0a,0xe0]
.code32
mul %d14, %d0, %d1

# CHECK-INST: mul %d14, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x0a,0xe0]
.code32
mul %d14, %d0, %d14

# CHECK-INST: mul %d14, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x0a,0xe0]
.code32
mul %d14, %d0, %d15

# CHECK-INST: mul %d14, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x0a,0xe0]
.code32
mul %d14, %d1, %d0

# CHECK-INST: mul %d14, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x0a,0xe0]
.code32
mul %d14, %d1, %d1

# CHECK-INST: mul %d14, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x0a,0xe0]
.code32
mul %d14, %d1, %d14

# CHECK-INST: mul %d14, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x0a,0xe0]
.code32
mul %d14, %d1, %d15

# CHECK-INST: mul %d14, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x0a,0xe0]
.code32
mul %d14, %d14, %d0

# CHECK-INST: mul %d14, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x0a,0xe0]
.code32
mul %d14, %d14, %d1

# CHECK-INST: mul %d14, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x0a,0xe0]
.code32
mul %d14, %d14, %d14

# CHECK-INST: mul %d14, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x0a,0xe0]
.code32
mul %d14, %d14, %d15

# CHECK-INST: mul %d14, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x0a,0xe0]
.code32
mul %d14, %d15, %d0

# CHECK-INST: mul %d14, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x0a,0xe0]
.code32
mul %d14, %d15, %d1

# CHECK-INST: mul %d14, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x0a,0xe0]
.code32
mul %d14, %d15, %d14

# CHECK-INST: mul %d14, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x0a,0xe0]
.code32
mul %d14, %d15, %d15

# CHECK-INST: mul %d15, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x0a,0xf0]
.code32
mul %d15, %d0, %d0

# CHECK-INST: mul %d15, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x0a,0xf0]
.code32
mul %d15, %d0, %d1

# CHECK-INST: mul %d15, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x0a,0xf0]
.code32
mul %d15, %d0, %d14

# CHECK-INST: mul %d15, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x0a,0xf0]
.code32
mul %d15, %d0, %d15

# CHECK-INST: mul %d15, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x0a,0xf0]
.code32
mul %d15, %d1, %d0

# CHECK-INST: mul %d15, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x0a,0xf0]
.code32
mul %d15, %d1, %d1

# CHECK-INST: mul %d15, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x0a,0xf0]
.code32
mul %d15, %d1, %d14

# CHECK-INST: mul %d15, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x0a,0xf0]
.code32
mul %d15, %d1, %d15

# CHECK-INST: mul %d15, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x0a,0xf0]
.code32
mul %d15, %d14, %d0

# CHECK-INST: mul %d15, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x0a,0xf0]
.code32
mul %d15, %d14, %d1

# CHECK-INST: mul %d15, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x0a,0xf0]
.code32
mul %d15, %d14, %d14

# CHECK-INST: mul %d15, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x0a,0xf0]
.code32
mul %d15, %d14, %d15

# CHECK-INST: mul %d15, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x0a,0xf0]
.code32
mul %d15, %d15, %d0

# CHECK-INST: mul %d15, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x0a,0xf0]
.code32
mul %d15, %d15, %d1

# CHECK-INST: mul %d15, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x0a,0xf0]
.code32
mul %d15, %d15, %d14

# CHECK-INST: mul %d15, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x0a,0xf0]
.code32
mul %d15, %d15, %d15

# CHECK-INST: mul %d0, %d0, -256
# CHECK: encoding: [0x53,0x00,0x30,0x00]
.code32
mul %d0, %d0, -256

# CHECK-INST: mul %d0, %d0, -129
# CHECK: encoding: [0x53,0xf0,0x37,0x00]
.code32
mul %d0, %d0, -129

# CHECK-INST: mul %d0, %d0, -1
# CHECK: encoding: [0x53,0xf0,0x3f,0x00]
.code32
mul %d0, %d0, -1

# CHECK-INST: mul %d0, %d0, 0
# CHECK: encoding: [0x53,0x00,0x20,0x00]
.code32
mul %d0, %d0, 0

# CHECK-INST: mul %d0, %d0, 1
# CHECK: encoding: [0x53,0x10,0x20,0x00]
.code32
mul %d0, %d0, 1

# CHECK-INST: mul %d0, %d0, 128
# CHECK: encoding: [0x53,0x00,0x28,0x00]
.code32
mul %d0, %d0, 128

# CHECK-INST: mul %d0, %d0, 255
# CHECK: encoding: [0x53,0xf0,0x2f,0x00]
.code32
mul %d0, %d0, 255

# CHECK-INST: mul %d0, %d1, -256
# CHECK: encoding: [0x53,0x01,0x30,0x00]
.code32
mul %d0, %d1, -256

# CHECK-INST: mul %d0, %d1, -129
# CHECK: encoding: [0x53,0xf1,0x37,0x00]
.code32
mul %d0, %d1, -129

# CHECK-INST: mul %d0, %d1, -1
# CHECK: encoding: [0x53,0xf1,0x3f,0x00]
.code32
mul %d0, %d1, -1

# CHECK-INST: mul %d0, %d1, 0
# CHECK: encoding: [0x53,0x01,0x20,0x00]
.code32
mul %d0, %d1, 0

# CHECK-INST: mul %d0, %d1, 1
# CHECK: encoding: [0x53,0x11,0x20,0x00]
.code32
mul %d0, %d1, 1

# CHECK-INST: mul %d0, %d1, 128
# CHECK: encoding: [0x53,0x01,0x28,0x00]
.code32
mul %d0, %d1, 128

# CHECK-INST: mul %d0, %d1, 255
# CHECK: encoding: [0x53,0xf1,0x2f,0x00]
.code32
mul %d0, %d1, 255

# CHECK-INST: mul %d0, %d14, -256
# CHECK: encoding: [0x53,0x0e,0x30,0x00]
.code32
mul %d0, %d14, -256

# CHECK-INST: mul %d0, %d14, -129
# CHECK: encoding: [0x53,0xfe,0x37,0x00]
.code32
mul %d0, %d14, -129

# CHECK-INST: mul %d0, %d14, -1
# CHECK: encoding: [0x53,0xfe,0x3f,0x00]
.code32
mul %d0, %d14, -1

# CHECK-INST: mul %d0, %d14, 0
# CHECK: encoding: [0x53,0x0e,0x20,0x00]
.code32
mul %d0, %d14, 0

# CHECK-INST: mul %d0, %d14, 1
# CHECK: encoding: [0x53,0x1e,0x20,0x00]
.code32
mul %d0, %d14, 1

# CHECK-INST: mul %d0, %d14, 128
# CHECK: encoding: [0x53,0x0e,0x28,0x00]
.code32
mul %d0, %d14, 128

# CHECK-INST: mul %d0, %d14, 255
# CHECK: encoding: [0x53,0xfe,0x2f,0x00]
.code32
mul %d0, %d14, 255

# CHECK-INST: mul %d0, %d15, -256
# CHECK: encoding: [0x53,0x0f,0x30,0x00]
.code32
mul %d0, %d15, -256

# CHECK-INST: mul %d0, %d15, -129
# CHECK: encoding: [0x53,0xff,0x37,0x00]
.code32
mul %d0, %d15, -129

# CHECK-INST: mul %d0, %d15, -1
# CHECK: encoding: [0x53,0xff,0x3f,0x00]
.code32
mul %d0, %d15, -1

# CHECK-INST: mul %d0, %d15, 0
# CHECK: encoding: [0x53,0x0f,0x20,0x00]
.code32
mul %d0, %d15, 0

# CHECK-INST: mul %d0, %d15, 1
# CHECK: encoding: [0x53,0x1f,0x20,0x00]
.code32
mul %d0, %d15, 1

# CHECK-INST: mul %d0, %d15, 128
# CHECK: encoding: [0x53,0x0f,0x28,0x00]
.code32
mul %d0, %d15, 128

# CHECK-INST: mul %d0, %d15, 255
# CHECK: encoding: [0x53,0xff,0x2f,0x00]
.code32
mul %d0, %d15, 255

# CHECK-INST: mul %d1, %d0, -256
# CHECK: encoding: [0x53,0x00,0x30,0x10]
.code32
mul %d1, %d0, -256

# CHECK-INST: mul %d1, %d0, -129
# CHECK: encoding: [0x53,0xf0,0x37,0x10]
.code32
mul %d1, %d0, -129

# CHECK-INST: mul %d1, %d0, -1
# CHECK: encoding: [0x53,0xf0,0x3f,0x10]
.code32
mul %d1, %d0, -1

# CHECK-INST: mul %d1, %d0, 0
# CHECK: encoding: [0x53,0x00,0x20,0x10]
.code32
mul %d1, %d0, 0

# CHECK-INST: mul %d1, %d0, 1
# CHECK: encoding: [0x53,0x10,0x20,0x10]
.code32
mul %d1, %d0, 1

# CHECK-INST: mul %d1, %d0, 128
# CHECK: encoding: [0x53,0x00,0x28,0x10]
.code32
mul %d1, %d0, 128

# CHECK-INST: mul %d1, %d0, 255
# CHECK: encoding: [0x53,0xf0,0x2f,0x10]
.code32
mul %d1, %d0, 255

# CHECK-INST: mul %d1, %d1, -256
# CHECK: encoding: [0x53,0x01,0x30,0x10]
.code32
mul %d1, %d1, -256

# CHECK-INST: mul %d1, %d1, -129
# CHECK: encoding: [0x53,0xf1,0x37,0x10]
.code32
mul %d1, %d1, -129

# CHECK-INST: mul %d1, %d1, -1
# CHECK: encoding: [0x53,0xf1,0x3f,0x10]
.code32
mul %d1, %d1, -1

# CHECK-INST: mul %d1, %d1, 0
# CHECK: encoding: [0x53,0x01,0x20,0x10]
.code32
mul %d1, %d1, 0

# CHECK-INST: mul %d1, %d1, 1
# CHECK: encoding: [0x53,0x11,0x20,0x10]
.code32
mul %d1, %d1, 1

# CHECK-INST: mul %d1, %d1, 128
# CHECK: encoding: [0x53,0x01,0x28,0x10]
.code32
mul %d1, %d1, 128

# CHECK-INST: mul %d1, %d1, 255
# CHECK: encoding: [0x53,0xf1,0x2f,0x10]
.code32
mul %d1, %d1, 255

# CHECK-INST: mul %d1, %d14, -256
# CHECK: encoding: [0x53,0x0e,0x30,0x10]
.code32
mul %d1, %d14, -256

# CHECK-INST: mul %d1, %d14, -129
# CHECK: encoding: [0x53,0xfe,0x37,0x10]
.code32
mul %d1, %d14, -129

# CHECK-INST: mul %d1, %d14, -1
# CHECK: encoding: [0x53,0xfe,0x3f,0x10]
.code32
mul %d1, %d14, -1

# CHECK-INST: mul %d1, %d14, 0
# CHECK: encoding: [0x53,0x0e,0x20,0x10]
.code32
mul %d1, %d14, 0

# CHECK-INST: mul %d1, %d14, 1
# CHECK: encoding: [0x53,0x1e,0x20,0x10]
.code32
mul %d1, %d14, 1

# CHECK-INST: mul %d1, %d14, 128
# CHECK: encoding: [0x53,0x0e,0x28,0x10]
.code32
mul %d1, %d14, 128

# CHECK-INST: mul %d1, %d14, 255
# CHECK: encoding: [0x53,0xfe,0x2f,0x10]
.code32
mul %d1, %d14, 255

# CHECK-INST: mul %d1, %d15, -256
# CHECK: encoding: [0x53,0x0f,0x30,0x10]
.code32
mul %d1, %d15, -256

# CHECK-INST: mul %d1, %d15, -129
# CHECK: encoding: [0x53,0xff,0x37,0x10]
.code32
mul %d1, %d15, -129

# CHECK-INST: mul %d1, %d15, -1
# CHECK: encoding: [0x53,0xff,0x3f,0x10]
.code32
mul %d1, %d15, -1

# CHECK-INST: mul %d1, %d15, 0
# CHECK: encoding: [0x53,0x0f,0x20,0x10]
.code32
mul %d1, %d15, 0

# CHECK-INST: mul %d1, %d15, 1
# CHECK: encoding: [0x53,0x1f,0x20,0x10]
.code32
mul %d1, %d15, 1

# CHECK-INST: mul %d1, %d15, 128
# CHECK: encoding: [0x53,0x0f,0x28,0x10]
.code32
mul %d1, %d15, 128

# CHECK-INST: mul %d1, %d15, 255
# CHECK: encoding: [0x53,0xff,0x2f,0x10]
.code32
mul %d1, %d15, 255

# CHECK-INST: mul %d14, %d0, -256
# CHECK: encoding: [0x53,0x00,0x30,0xe0]
.code32
mul %d14, %d0, -256

# CHECK-INST: mul %d14, %d0, -129
# CHECK: encoding: [0x53,0xf0,0x37,0xe0]
.code32
mul %d14, %d0, -129

# CHECK-INST: mul %d14, %d0, -1
# CHECK: encoding: [0x53,0xf0,0x3f,0xe0]
.code32
mul %d14, %d0, -1

# CHECK-INST: mul %d14, %d0, 0
# CHECK: encoding: [0x53,0x00,0x20,0xe0]
.code32
mul %d14, %d0, 0

# CHECK-INST: mul %d14, %d0, 1
# CHECK: encoding: [0x53,0x10,0x20,0xe0]
.code32
mul %d14, %d0, 1

# CHECK-INST: mul %d14, %d0, 128
# CHECK: encoding: [0x53,0x00,0x28,0xe0]
.code32
mul %d14, %d0, 128

# CHECK-INST: mul %d14, %d0, 255
# CHECK: encoding: [0x53,0xf0,0x2f,0xe0]
.code32
mul %d14, %d0, 255

# CHECK-INST: mul %d14, %d1, -256
# CHECK: encoding: [0x53,0x01,0x30,0xe0]
.code32
mul %d14, %d1, -256

# CHECK-INST: mul %d14, %d1, -129
# CHECK: encoding: [0x53,0xf1,0x37,0xe0]
.code32
mul %d14, %d1, -129

# CHECK-INST: mul %d14, %d1, -1
# CHECK: encoding: [0x53,0xf1,0x3f,0xe0]
.code32
mul %d14, %d1, -1

# CHECK-INST: mul %d14, %d1, 0
# CHECK: encoding: [0x53,0x01,0x20,0xe0]
.code32
mul %d14, %d1, 0

# CHECK-INST: mul %d14, %d1, 1
# CHECK: encoding: [0x53,0x11,0x20,0xe0]
.code32
mul %d14, %d1, 1

# CHECK-INST: mul %d14, %d1, 128
# CHECK: encoding: [0x53,0x01,0x28,0xe0]
.code32
mul %d14, %d1, 128

# CHECK-INST: mul %d14, %d1, 255
# CHECK: encoding: [0x53,0xf1,0x2f,0xe0]
.code32
mul %d14, %d1, 255

# CHECK-INST: mul %d14, %d14, -256
# CHECK: encoding: [0x53,0x0e,0x30,0xe0]
.code32
mul %d14, %d14, -256

# CHECK-INST: mul %d14, %d14, -129
# CHECK: encoding: [0x53,0xfe,0x37,0xe0]
.code32
mul %d14, %d14, -129

# CHECK-INST: mul %d14, %d14, -1
# CHECK: encoding: [0x53,0xfe,0x3f,0xe0]
.code32
mul %d14, %d14, -1

# CHECK-INST: mul %d14, %d14, 0
# CHECK: encoding: [0x53,0x0e,0x20,0xe0]
.code32
mul %d14, %d14, 0

# CHECK-INST: mul %d14, %d14, 1
# CHECK: encoding: [0x53,0x1e,0x20,0xe0]
.code32
mul %d14, %d14, 1

# CHECK-INST: mul %d14, %d14, 128
# CHECK: encoding: [0x53,0x0e,0x28,0xe0]
.code32
mul %d14, %d14, 128

# CHECK-INST: mul %d14, %d14, 255
# CHECK: encoding: [0x53,0xfe,0x2f,0xe0]
.code32
mul %d14, %d14, 255

# CHECK-INST: mul %d14, %d15, -256
# CHECK: encoding: [0x53,0x0f,0x30,0xe0]
.code32
mul %d14, %d15, -256

# CHECK-INST: mul %d14, %d15, -129
# CHECK: encoding: [0x53,0xff,0x37,0xe0]
.code32
mul %d14, %d15, -129

# CHECK-INST: mul %d14, %d15, -1
# CHECK: encoding: [0x53,0xff,0x3f,0xe0]
.code32
mul %d14, %d15, -1

# CHECK-INST: mul %d14, %d15, 0
# CHECK: encoding: [0x53,0x0f,0x20,0xe0]
.code32
mul %d14, %d15, 0

# CHECK-INST: mul %d14, %d15, 1
# CHECK: encoding: [0x53,0x1f,0x20,0xe0]
.code32
mul %d14, %d15, 1

# CHECK-INST: mul %d14, %d15, 128
# CHECK: encoding: [0x53,0x0f,0x28,0xe0]
.code32
mul %d14, %d15, 128

# CHECK-INST: mul %d14, %d15, 255
# CHECK: encoding: [0x53,0xff,0x2f,0xe0]
.code32
mul %d14, %d15, 255

# CHECK-INST: mul %d15, %d0, -256
# CHECK: encoding: [0x53,0x00,0x30,0xf0]
.code32
mul %d15, %d0, -256

# CHECK-INST: mul %d15, %d0, -129
# CHECK: encoding: [0x53,0xf0,0x37,0xf0]
.code32
mul %d15, %d0, -129

# CHECK-INST: mul %d15, %d0, -1
# CHECK: encoding: [0x53,0xf0,0x3f,0xf0]
.code32
mul %d15, %d0, -1

# CHECK-INST: mul %d15, %d0, 0
# CHECK: encoding: [0x53,0x00,0x20,0xf0]
.code32
mul %d15, %d0, 0

# CHECK-INST: mul %d15, %d0, 1
# CHECK: encoding: [0x53,0x10,0x20,0xf0]
.code32
mul %d15, %d0, 1

# CHECK-INST: mul %d15, %d0, 128
# CHECK: encoding: [0x53,0x00,0x28,0xf0]
.code32
mul %d15, %d0, 128

# CHECK-INST: mul %d15, %d0, 255
# CHECK: encoding: [0x53,0xf0,0x2f,0xf0]
.code32
mul %d15, %d0, 255

# CHECK-INST: mul %d15, %d1, -256
# CHECK: encoding: [0x53,0x01,0x30,0xf0]
.code32
mul %d15, %d1, -256

# CHECK-INST: mul %d15, %d1, -129
# CHECK: encoding: [0x53,0xf1,0x37,0xf0]
.code32
mul %d15, %d1, -129

# CHECK-INST: mul %d15, %d1, -1
# CHECK: encoding: [0x53,0xf1,0x3f,0xf0]
.code32
mul %d15, %d1, -1

# CHECK-INST: mul %d15, %d1, 0
# CHECK: encoding: [0x53,0x01,0x20,0xf0]
.code32
mul %d15, %d1, 0

# CHECK-INST: mul %d15, %d1, 1
# CHECK: encoding: [0x53,0x11,0x20,0xf0]
.code32
mul %d15, %d1, 1

# CHECK-INST: mul %d15, %d1, 128
# CHECK: encoding: [0x53,0x01,0x28,0xf0]
.code32
mul %d15, %d1, 128

# CHECK-INST: mul %d15, %d1, 255
# CHECK: encoding: [0x53,0xf1,0x2f,0xf0]
.code32
mul %d15, %d1, 255

# CHECK-INST: mul %d15, %d14, -256
# CHECK: encoding: [0x53,0x0e,0x30,0xf0]
.code32
mul %d15, %d14, -256

# CHECK-INST: mul %d15, %d14, -129
# CHECK: encoding: [0x53,0xfe,0x37,0xf0]
.code32
mul %d15, %d14, -129

# CHECK-INST: mul %d15, %d14, -1
# CHECK: encoding: [0x53,0xfe,0x3f,0xf0]
.code32
mul %d15, %d14, -1

# CHECK-INST: mul %d15, %d14, 0
# CHECK: encoding: [0x53,0x0e,0x20,0xf0]
.code32
mul %d15, %d14, 0

# CHECK-INST: mul %d15, %d14, 1
# CHECK: encoding: [0x53,0x1e,0x20,0xf0]
.code32
mul %d15, %d14, 1

# CHECK-INST: mul %d15, %d14, 128
# CHECK: encoding: [0x53,0x0e,0x28,0xf0]
.code32
mul %d15, %d14, 128

# CHECK-INST: mul %d15, %d14, 255
# CHECK: encoding: [0x53,0xfe,0x2f,0xf0]
.code32
mul %d15, %d14, 255

# CHECK-INST: mul %d15, %d15, -256
# CHECK: encoding: [0x53,0x0f,0x30,0xf0]
.code32
mul %d15, %d15, -256

# CHECK-INST: mul %d15, %d15, -129
# CHECK: encoding: [0x53,0xff,0x37,0xf0]
.code32
mul %d15, %d15, -129

# CHECK-INST: mul %d15, %d15, -1
# CHECK: encoding: [0x53,0xff,0x3f,0xf0]
.code32
mul %d15, %d15, -1

# CHECK-INST: mul %d15, %d15, 0
# CHECK: encoding: [0x53,0x0f,0x20,0xf0]
.code32
mul %d15, %d15, 0

# CHECK-INST: mul %d15, %d15, 1
# CHECK: encoding: [0x53,0x1f,0x20,0xf0]
.code32
mul %d15, %d15, 1

# CHECK-INST: mul %d15, %d15, 128
# CHECK: encoding: [0x53,0x0f,0x28,0xf0]
.code32
mul %d15, %d15, 128

# CHECK-INST: mul %d15, %d15, 255
# CHECK: encoding: [0x53,0xff,0x2f,0xf0]
.code32
mul %d15, %d15, 255

# CHECK-INST: mul %e0, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x6a,0x00]
.code32
mul %e0, %d0, %d0

# CHECK-INST: mul %e0, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x6a,0x00]
.code32
mul %e0, %d0, %d1

# CHECK-INST: mul %e0, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x6a,0x00]
.code32
mul %e0, %d0, %d14

# CHECK-INST: mul %e0, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x6a,0x00]
.code32
mul %e0, %d0, %d15

# CHECK-INST: mul %e0, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x6a,0x00]
.code32
mul %e0, %d1, %d0

# CHECK-INST: mul %e0, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x6a,0x00]
.code32
mul %e0, %d1, %d1

# CHECK-INST: mul %e0, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x6a,0x00]
.code32
mul %e0, %d1, %d14

# CHECK-INST: mul %e0, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x6a,0x00]
.code32
mul %e0, %d1, %d15

# CHECK-INST: mul %e0, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x6a,0x00]
.code32
mul %e0, %d14, %d0

# CHECK-INST: mul %e0, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x6a,0x00]
.code32
mul %e0, %d14, %d1

# CHECK-INST: mul %e0, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x6a,0x00]
.code32
mul %e0, %d14, %d14

# CHECK-INST: mul %e0, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x6a,0x00]
.code32
mul %e0, %d14, %d15

# CHECK-INST: mul %e0, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x6a,0x00]
.code32
mul %e0, %d15, %d0

# CHECK-INST: mul %e0, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x6a,0x00]
.code32
mul %e0, %d15, %d1

# CHECK-INST: mul %e0, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x6a,0x00]
.code32
mul %e0, %d15, %d14

# CHECK-INST: mul %e0, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x6a,0x00]
.code32
mul %e0, %d15, %d15

# CHECK-INST: mul %e6, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x6a,0x60]
.code32
mul %e6, %d0, %d0

# CHECK-INST: mul %e6, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x6a,0x60]
.code32
mul %e6, %d0, %d1

# CHECK-INST: mul %e6, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x6a,0x60]
.code32
mul %e6, %d0, %d14

# CHECK-INST: mul %e6, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x6a,0x60]
.code32
mul %e6, %d0, %d15

# CHECK-INST: mul %e6, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x6a,0x60]
.code32
mul %e6, %d1, %d0

# CHECK-INST: mul %e6, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x6a,0x60]
.code32
mul %e6, %d1, %d1

# CHECK-INST: mul %e6, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x6a,0x60]
.code32
mul %e6, %d1, %d14

# CHECK-INST: mul %e6, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x6a,0x60]
.code32
mul %e6, %d1, %d15

# CHECK-INST: mul %e6, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x6a,0x60]
.code32
mul %e6, %d14, %d0

# CHECK-INST: mul %e6, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x6a,0x60]
.code32
mul %e6, %d14, %d1

# CHECK-INST: mul %e6, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x6a,0x60]
.code32
mul %e6, %d14, %d14

# CHECK-INST: mul %e6, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x6a,0x60]
.code32
mul %e6, %d14, %d15

# CHECK-INST: mul %e6, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x6a,0x60]
.code32
mul %e6, %d15, %d0

# CHECK-INST: mul %e6, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x6a,0x60]
.code32
mul %e6, %d15, %d1

# CHECK-INST: mul %e6, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x6a,0x60]
.code32
mul %e6, %d15, %d14

# CHECK-INST: mul %e6, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x6a,0x60]
.code32
mul %e6, %d15, %d15

# CHECK-INST: mul %e14, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x6a,0xe0]
.code32
mul %e14, %d0, %d0

# CHECK-INST: mul %e14, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x6a,0xe0]
.code32
mul %e14, %d0, %d1

# CHECK-INST: mul %e14, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x6a,0xe0]
.code32
mul %e14, %d0, %d14

# CHECK-INST: mul %e14, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x6a,0xe0]
.code32
mul %e14, %d0, %d15

# CHECK-INST: mul %e14, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x6a,0xe0]
.code32
mul %e14, %d1, %d0

# CHECK-INST: mul %e14, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x6a,0xe0]
.code32
mul %e14, %d1, %d1

# CHECK-INST: mul %e14, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x6a,0xe0]
.code32
mul %e14, %d1, %d14

# CHECK-INST: mul %e14, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x6a,0xe0]
.code32
mul %e14, %d1, %d15

# CHECK-INST: mul %e14, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x6a,0xe0]
.code32
mul %e14, %d14, %d0

# CHECK-INST: mul %e14, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x6a,0xe0]
.code32
mul %e14, %d14, %d1

# CHECK-INST: mul %e14, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x6a,0xe0]
.code32
mul %e14, %d14, %d14

# CHECK-INST: mul %e14, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x6a,0xe0]
.code32
mul %e14, %d14, %d15

# CHECK-INST: mul %e14, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x6a,0xe0]
.code32
mul %e14, %d15, %d0

# CHECK-INST: mul %e14, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x6a,0xe0]
.code32
mul %e14, %d15, %d1

# CHECK-INST: mul %e14, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x6a,0xe0]
.code32
mul %e14, %d15, %d14

# CHECK-INST: mul %e14, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x6a,0xe0]
.code32
mul %e14, %d15, %d15

# CHECK-INST: mul %e0, %d0, -256
# CHECK: encoding: [0x53,0x00,0x70,0x00]
.code32
mul %e0, %d0, -256

# CHECK-INST: mul %e0, %d0, -129
# CHECK: encoding: [0x53,0xf0,0x77,0x00]
.code32
mul %e0, %d0, -129

# CHECK-INST: mul %e0, %d0, -1
# CHECK: encoding: [0x53,0xf0,0x7f,0x00]
.code32
mul %e0, %d0, -1

# CHECK-INST: mul %e0, %d0, 0
# CHECK: encoding: [0x53,0x00,0x60,0x00]
.code32
mul %e0, %d0, 0

# CHECK-INST: mul %e0, %d0, 1
# CHECK: encoding: [0x53,0x10,0x60,0x00]
.code32
mul %e0, %d0, 1

# CHECK-INST: mul %e0, %d0, 128
# CHECK: encoding: [0x53,0x00,0x68,0x00]
.code32
mul %e0, %d0, 128

# CHECK-INST: mul %e0, %d0, 255
# CHECK: encoding: [0x53,0xf0,0x6f,0x00]
.code32
mul %e0, %d0, 255

# CHECK-INST: mul %e0, %d1, -256
# CHECK: encoding: [0x53,0x01,0x70,0x00]
.code32
mul %e0, %d1, -256

# CHECK-INST: mul %e0, %d1, -129
# CHECK: encoding: [0x53,0xf1,0x77,0x00]
.code32
mul %e0, %d1, -129

# CHECK-INST: mul %e0, %d1, -1
# CHECK: encoding: [0x53,0xf1,0x7f,0x00]
.code32
mul %e0, %d1, -1

# CHECK-INST: mul %e0, %d1, 0
# CHECK: encoding: [0x53,0x01,0x60,0x00]
.code32
mul %e0, %d1, 0

# CHECK-INST: mul %e0, %d1, 1
# CHECK: encoding: [0x53,0x11,0x60,0x00]
.code32
mul %e0, %d1, 1

# CHECK-INST: mul %e0, %d1, 128
# CHECK: encoding: [0x53,0x01,0x68,0x00]
.code32
mul %e0, %d1, 128

# CHECK-INST: mul %e0, %d1, 255
# CHECK: encoding: [0x53,0xf1,0x6f,0x00]
.code32
mul %e0, %d1, 255

# CHECK-INST: mul %e0, %d14, -256
# CHECK: encoding: [0x53,0x0e,0x70,0x00]
.code32
mul %e0, %d14, -256

# CHECK-INST: mul %e0, %d14, -129
# CHECK: encoding: [0x53,0xfe,0x77,0x00]
.code32
mul %e0, %d14, -129

# CHECK-INST: mul %e0, %d14, -1
# CHECK: encoding: [0x53,0xfe,0x7f,0x00]
.code32
mul %e0, %d14, -1

# CHECK-INST: mul %e0, %d14, 0
# CHECK: encoding: [0x53,0x0e,0x60,0x00]
.code32
mul %e0, %d14, 0

# CHECK-INST: mul %e0, %d14, 1
# CHECK: encoding: [0x53,0x1e,0x60,0x00]
.code32
mul %e0, %d14, 1

# CHECK-INST: mul %e0, %d14, 128
# CHECK: encoding: [0x53,0x0e,0x68,0x00]
.code32
mul %e0, %d14, 128

# CHECK-INST: mul %e0, %d14, 255
# CHECK: encoding: [0x53,0xfe,0x6f,0x00]
.code32
mul %e0, %d14, 255

# CHECK-INST: mul %e0, %d15, -256
# CHECK: encoding: [0x53,0x0f,0x70,0x00]
.code32
mul %e0, %d15, -256

# CHECK-INST: mul %e0, %d15, -129
# CHECK: encoding: [0x53,0xff,0x77,0x00]
.code32
mul %e0, %d15, -129

# CHECK-INST: mul %e0, %d15, -1
# CHECK: encoding: [0x53,0xff,0x7f,0x00]
.code32
mul %e0, %d15, -1

# CHECK-INST: mul %e0, %d15, 0
# CHECK: encoding: [0x53,0x0f,0x60,0x00]
.code32
mul %e0, %d15, 0

# CHECK-INST: mul %e0, %d15, 1
# CHECK: encoding: [0x53,0x1f,0x60,0x00]
.code32
mul %e0, %d15, 1

# CHECK-INST: mul %e0, %d15, 128
# CHECK: encoding: [0x53,0x0f,0x68,0x00]
.code32
mul %e0, %d15, 128

# CHECK-INST: mul %e0, %d15, 255
# CHECK: encoding: [0x53,0xff,0x6f,0x00]
.code32
mul %e0, %d15, 255

# CHECK-INST: mul %e6, %d0, -256
# CHECK: encoding: [0x53,0x00,0x70,0x60]
.code32
mul %e6, %d0, -256

# CHECK-INST: mul %e6, %d0, -129
# CHECK: encoding: [0x53,0xf0,0x77,0x60]
.code32
mul %e6, %d0, -129

# CHECK-INST: mul %e6, %d0, -1
# CHECK: encoding: [0x53,0xf0,0x7f,0x60]
.code32
mul %e6, %d0, -1

# CHECK-INST: mul %e6, %d0, 0
# CHECK: encoding: [0x53,0x00,0x60,0x60]
.code32
mul %e6, %d0, 0

# CHECK-INST: mul %e6, %d0, 1
# CHECK: encoding: [0x53,0x10,0x60,0x60]
.code32
mul %e6, %d0, 1

# CHECK-INST: mul %e6, %d0, 128
# CHECK: encoding: [0x53,0x00,0x68,0x60]
.code32
mul %e6, %d0, 128

# CHECK-INST: mul %e6, %d0, 255
# CHECK: encoding: [0x53,0xf0,0x6f,0x60]
.code32
mul %e6, %d0, 255

# CHECK-INST: mul %e6, %d1, -256
# CHECK: encoding: [0x53,0x01,0x70,0x60]
.code32
mul %e6, %d1, -256

# CHECK-INST: mul %e6, %d1, -129
# CHECK: encoding: [0x53,0xf1,0x77,0x60]
.code32
mul %e6, %d1, -129

# CHECK-INST: mul %e6, %d1, -1
# CHECK: encoding: [0x53,0xf1,0x7f,0x60]
.code32
mul %e6, %d1, -1

# CHECK-INST: mul %e6, %d1, 0
# CHECK: encoding: [0x53,0x01,0x60,0x60]
.code32
mul %e6, %d1, 0

# CHECK-INST: mul %e6, %d1, 1
# CHECK: encoding: [0x53,0x11,0x60,0x60]
.code32
mul %e6, %d1, 1

# CHECK-INST: mul %e6, %d1, 128
# CHECK: encoding: [0x53,0x01,0x68,0x60]
.code32
mul %e6, %d1, 128

# CHECK-INST: mul %e6, %d1, 255
# CHECK: encoding: [0x53,0xf1,0x6f,0x60]
.code32
mul %e6, %d1, 255

# CHECK-INST: mul %e6, %d14, -256
# CHECK: encoding: [0x53,0x0e,0x70,0x60]
.code32
mul %e6, %d14, -256

# CHECK-INST: mul %e6, %d14, -129
# CHECK: encoding: [0x53,0xfe,0x77,0x60]
.code32
mul %e6, %d14, -129

# CHECK-INST: mul %e6, %d14, -1
# CHECK: encoding: [0x53,0xfe,0x7f,0x60]
.code32
mul %e6, %d14, -1

# CHECK-INST: mul %e6, %d14, 0
# CHECK: encoding: [0x53,0x0e,0x60,0x60]
.code32
mul %e6, %d14, 0

# CHECK-INST: mul %e6, %d14, 1
# CHECK: encoding: [0x53,0x1e,0x60,0x60]
.code32
mul %e6, %d14, 1

# CHECK-INST: mul %e6, %d14, 128
# CHECK: encoding: [0x53,0x0e,0x68,0x60]
.code32
mul %e6, %d14, 128

# CHECK-INST: mul %e6, %d14, 255
# CHECK: encoding: [0x53,0xfe,0x6f,0x60]
.code32
mul %e6, %d14, 255

# CHECK-INST: mul %e6, %d15, -256
# CHECK: encoding: [0x53,0x0f,0x70,0x60]
.code32
mul %e6, %d15, -256

# CHECK-INST: mul %e6, %d15, -129
# CHECK: encoding: [0x53,0xff,0x77,0x60]
.code32
mul %e6, %d15, -129

# CHECK-INST: mul %e6, %d15, -1
# CHECK: encoding: [0x53,0xff,0x7f,0x60]
.code32
mul %e6, %d15, -1

# CHECK-INST: mul %e6, %d15, 0
# CHECK: encoding: [0x53,0x0f,0x60,0x60]
.code32
mul %e6, %d15, 0

# CHECK-INST: mul %e6, %d15, 1
# CHECK: encoding: [0x53,0x1f,0x60,0x60]
.code32
mul %e6, %d15, 1

# CHECK-INST: mul %e6, %d15, 128
# CHECK: encoding: [0x53,0x0f,0x68,0x60]
.code32
mul %e6, %d15, 128

# CHECK-INST: mul %e6, %d15, 255
# CHECK: encoding: [0x53,0xff,0x6f,0x60]
.code32
mul %e6, %d15, 255

# CHECK-INST: mul %e14, %d0, -256
# CHECK: encoding: [0x53,0x00,0x70,0xe0]
.code32
mul %e14, %d0, -256

# CHECK-INST: mul %e14, %d0, -129
# CHECK: encoding: [0x53,0xf0,0x77,0xe0]
.code32
mul %e14, %d0, -129

# CHECK-INST: mul %e14, %d0, -1
# CHECK: encoding: [0x53,0xf0,0x7f,0xe0]
.code32
mul %e14, %d0, -1

# CHECK-INST: mul %e14, %d0, 0
# CHECK: encoding: [0x53,0x00,0x60,0xe0]
.code32
mul %e14, %d0, 0

# CHECK-INST: mul %e14, %d0, 1
# CHECK: encoding: [0x53,0x10,0x60,0xe0]
.code32
mul %e14, %d0, 1

# CHECK-INST: mul %e14, %d0, 128
# CHECK: encoding: [0x53,0x00,0x68,0xe0]
.code32
mul %e14, %d0, 128

# CHECK-INST: mul %e14, %d0, 255
# CHECK: encoding: [0x53,0xf0,0x6f,0xe0]
.code32
mul %e14, %d0, 255

# CHECK-INST: mul %e14, %d1, -256
# CHECK: encoding: [0x53,0x01,0x70,0xe0]
.code32
mul %e14, %d1, -256

# CHECK-INST: mul %e14, %d1, -129
# CHECK: encoding: [0x53,0xf1,0x77,0xe0]
.code32
mul %e14, %d1, -129

# CHECK-INST: mul %e14, %d1, -1
# CHECK: encoding: [0x53,0xf1,0x7f,0xe0]
.code32
mul %e14, %d1, -1

# CHECK-INST: mul %e14, %d1, 0
# CHECK: encoding: [0x53,0x01,0x60,0xe0]
.code32
mul %e14, %d1, 0

# CHECK-INST: mul %e14, %d1, 1
# CHECK: encoding: [0x53,0x11,0x60,0xe0]
.code32
mul %e14, %d1, 1

# CHECK-INST: mul %e14, %d1, 128
# CHECK: encoding: [0x53,0x01,0x68,0xe0]
.code32
mul %e14, %d1, 128

# CHECK-INST: mul %e14, %d1, 255
# CHECK: encoding: [0x53,0xf1,0x6f,0xe0]
.code32
mul %e14, %d1, 255

# CHECK-INST: mul %e14, %d14, -256
# CHECK: encoding: [0x53,0x0e,0x70,0xe0]
.code32
mul %e14, %d14, -256

# CHECK-INST: mul %e14, %d14, -129
# CHECK: encoding: [0x53,0xfe,0x77,0xe0]
.code32
mul %e14, %d14, -129

# CHECK-INST: mul %e14, %d14, -1
# CHECK: encoding: [0x53,0xfe,0x7f,0xe0]
.code32
mul %e14, %d14, -1

# CHECK-INST: mul %e14, %d14, 0
# CHECK: encoding: [0x53,0x0e,0x60,0xe0]
.code32
mul %e14, %d14, 0

# CHECK-INST: mul %e14, %d14, 1
# CHECK: encoding: [0x53,0x1e,0x60,0xe0]
.code32
mul %e14, %d14, 1

# CHECK-INST: mul %e14, %d14, 128
# CHECK: encoding: [0x53,0x0e,0x68,0xe0]
.code32
mul %e14, %d14, 128

# CHECK-INST: mul %e14, %d14, 255
# CHECK: encoding: [0x53,0xfe,0x6f,0xe0]
.code32
mul %e14, %d14, 255

# CHECK-INST: mul %e14, %d15, -256
# CHECK: encoding: [0x53,0x0f,0x70,0xe0]
.code32
mul %e14, %d15, -256

# CHECK-INST: mul %e14, %d15, -129
# CHECK: encoding: [0x53,0xff,0x77,0xe0]
.code32
mul %e14, %d15, -129

# CHECK-INST: mul %e14, %d15, -1
# CHECK: encoding: [0x53,0xff,0x7f,0xe0]
.code32
mul %e14, %d15, -1

# CHECK-INST: mul %e14, %d15, 0
# CHECK: encoding: [0x53,0x0f,0x60,0xe0]
.code32
mul %e14, %d15, 0

# CHECK-INST: mul %e14, %d15, 1
# CHECK: encoding: [0x53,0x1f,0x60,0xe0]
.code32
mul %e14, %d15, 1

# CHECK-INST: mul %e14, %d15, 128
# CHECK: encoding: [0x53,0x0f,0x68,0xe0]
.code32
mul %e14, %d15, 128

# CHECK-INST: mul %e14, %d15, 255
# CHECK: encoding: [0x53,0xff,0x6f,0xe0]
.code32
mul %e14, %d15, 255

# CHECK-INST: mul.u %e0, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x68,0x00]
.code32
mul.u %e0, %d0, %d0

# CHECK-INST: mul.u %e0, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x68,0x00]
.code32
mul.u %e0, %d0, %d1

# CHECK-INST: mul.u %e0, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x68,0x00]
.code32
mul.u %e0, %d0, %d14

# CHECK-INST: mul.u %e0, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x68,0x00]
.code32
mul.u %e0, %d0, %d15

# CHECK-INST: mul.u %e0, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x68,0x00]
.code32
mul.u %e0, %d1, %d0

# CHECK-INST: mul.u %e0, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x68,0x00]
.code32
mul.u %e0, %d1, %d1

# CHECK-INST: mul.u %e0, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x68,0x00]
.code32
mul.u %e0, %d1, %d14

# CHECK-INST: mul.u %e0, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x68,0x00]
.code32
mul.u %e0, %d1, %d15

# CHECK-INST: mul.u %e0, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x68,0x00]
.code32
mul.u %e0, %d14, %d0

# CHECK-INST: mul.u %e0, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x68,0x00]
.code32
mul.u %e0, %d14, %d1

# CHECK-INST: mul.u %e0, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x68,0x00]
.code32
mul.u %e0, %d14, %d14

# CHECK-INST: mul.u %e0, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x68,0x00]
.code32
mul.u %e0, %d14, %d15

# CHECK-INST: mul.u %e0, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x68,0x00]
.code32
mul.u %e0, %d15, %d0

# CHECK-INST: mul.u %e0, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x68,0x00]
.code32
mul.u %e0, %d15, %d1

# CHECK-INST: mul.u %e0, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x68,0x00]
.code32
mul.u %e0, %d15, %d14

# CHECK-INST: mul.u %e0, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x68,0x00]
.code32
mul.u %e0, %d15, %d15

# CHECK-INST: mul.u %e6, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x68,0x60]
.code32
mul.u %e6, %d0, %d0

# CHECK-INST: mul.u %e6, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x68,0x60]
.code32
mul.u %e6, %d0, %d1

# CHECK-INST: mul.u %e6, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x68,0x60]
.code32
mul.u %e6, %d0, %d14

# CHECK-INST: mul.u %e6, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x68,0x60]
.code32
mul.u %e6, %d0, %d15

# CHECK-INST: mul.u %e6, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x68,0x60]
.code32
mul.u %e6, %d1, %d0

# CHECK-INST: mul.u %e6, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x68,0x60]
.code32
mul.u %e6, %d1, %d1

# CHECK-INST: mul.u %e6, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x68,0x60]
.code32
mul.u %e6, %d1, %d14

# CHECK-INST: mul.u %e6, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x68,0x60]
.code32
mul.u %e6, %d1, %d15

# CHECK-INST: mul.u %e6, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x68,0x60]
.code32
mul.u %e6, %d14, %d0

# CHECK-INST: mul.u %e6, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x68,0x60]
.code32
mul.u %e6, %d14, %d1

# CHECK-INST: mul.u %e6, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x68,0x60]
.code32
mul.u %e6, %d14, %d14

# CHECK-INST: mul.u %e6, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x68,0x60]
.code32
mul.u %e6, %d14, %d15

# CHECK-INST: mul.u %e6, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x68,0x60]
.code32
mul.u %e6, %d15, %d0

# CHECK-INST: mul.u %e6, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x68,0x60]
.code32
mul.u %e6, %d15, %d1

# CHECK-INST: mul.u %e6, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x68,0x60]
.code32
mul.u %e6, %d15, %d14

# CHECK-INST: mul.u %e6, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x68,0x60]
.code32
mul.u %e6, %d15, %d15

# CHECK-INST: mul.u %e14, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x68,0xe0]
.code32
mul.u %e14, %d0, %d0

# CHECK-INST: mul.u %e14, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x68,0xe0]
.code32
mul.u %e14, %d0, %d1

# CHECK-INST: mul.u %e14, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x68,0xe0]
.code32
mul.u %e14, %d0, %d14

# CHECK-INST: mul.u %e14, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x68,0xe0]
.code32
mul.u %e14, %d0, %d15

# CHECK-INST: mul.u %e14, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x68,0xe0]
.code32
mul.u %e14, %d1, %d0

# CHECK-INST: mul.u %e14, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x68,0xe0]
.code32
mul.u %e14, %d1, %d1

# CHECK-INST: mul.u %e14, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x68,0xe0]
.code32
mul.u %e14, %d1, %d14

# CHECK-INST: mul.u %e14, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x68,0xe0]
.code32
mul.u %e14, %d1, %d15

# CHECK-INST: mul.u %e14, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x68,0xe0]
.code32
mul.u %e14, %d14, %d0

# CHECK-INST: mul.u %e14, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x68,0xe0]
.code32
mul.u %e14, %d14, %d1

# CHECK-INST: mul.u %e14, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x68,0xe0]
.code32
mul.u %e14, %d14, %d14

# CHECK-INST: mul.u %e14, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x68,0xe0]
.code32
mul.u %e14, %d14, %d15

# CHECK-INST: mul.u %e14, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x68,0xe0]
.code32
mul.u %e14, %d15, %d0

# CHECK-INST: mul.u %e14, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x68,0xe0]
.code32
mul.u %e14, %d15, %d1

# CHECK-INST: mul.u %e14, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x68,0xe0]
.code32
mul.u %e14, %d15, %d14

# CHECK-INST: mul.u %e14, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x68,0xe0]
.code32
mul.u %e14, %d15, %d15

# CHECK-INST: mul.u %e0, %d0, 271
# CHECK: encoding: [0x53,0xf0,0x50,0x00]
.code32
mul.u %e0, %d0, 271

# CHECK-INST: mul.u %e0, %d0, 496
# CHECK: encoding: [0x53,0x00,0x5f,0x00]
.code32
mul.u %e0, %d0, 496

# CHECK-INST: mul.u %e0, %d0, 511
# CHECK: encoding: [0x53,0xf0,0x5f,0x00]
.code32
mul.u %e0, %d0, 511

# CHECK-INST: mul.u %e0, %d1, 271
# CHECK: encoding: [0x53,0xf1,0x50,0x00]
.code32
mul.u %e0, %d1, 271

# CHECK-INST: mul.u %e0, %d1, 496
# CHECK: encoding: [0x53,0x01,0x5f,0x00]
.code32
mul.u %e0, %d1, 496

# CHECK-INST: mul.u %e0, %d1, 511
# CHECK: encoding: [0x53,0xf1,0x5f,0x00]
.code32
mul.u %e0, %d1, 511

# CHECK-INST: mul.u %e0, %d14, 271
# CHECK: encoding: [0x53,0xfe,0x50,0x00]
.code32
mul.u %e0, %d14, 271

# CHECK-INST: mul.u %e0, %d14, 496
# CHECK: encoding: [0x53,0x0e,0x5f,0x00]
.code32
mul.u %e0, %d14, 496

# CHECK-INST: mul.u %e0, %d14, 511
# CHECK: encoding: [0x53,0xfe,0x5f,0x00]
.code32
mul.u %e0, %d14, 511

# CHECK-INST: mul.u %e0, %d15, 271
# CHECK: encoding: [0x53,0xff,0x50,0x00]
.code32
mul.u %e0, %d15, 271

# CHECK-INST: mul.u %e0, %d15, 496
# CHECK: encoding: [0x53,0x0f,0x5f,0x00]
.code32
mul.u %e0, %d15, 496

# CHECK-INST: mul.u %e0, %d15, 511
# CHECK: encoding: [0x53,0xff,0x5f,0x00]
.code32
mul.u %e0, %d15, 511

# CHECK-INST: mul.u %e6, %d0, 271
# CHECK: encoding: [0x53,0xf0,0x50,0x60]
.code32
mul.u %e6, %d0, 271

# CHECK-INST: mul.u %e6, %d0, 496
# CHECK: encoding: [0x53,0x00,0x5f,0x60]
.code32
mul.u %e6, %d0, 496

# CHECK-INST: mul.u %e6, %d0, 511
# CHECK: encoding: [0x53,0xf0,0x5f,0x60]
.code32
mul.u %e6, %d0, 511

# CHECK-INST: mul.u %e6, %d1, 271
# CHECK: encoding: [0x53,0xf1,0x50,0x60]
.code32
mul.u %e6, %d1, 271

# CHECK-INST: mul.u %e6, %d1, 496
# CHECK: encoding: [0x53,0x01,0x5f,0x60]
.code32
mul.u %e6, %d1, 496

# CHECK-INST: mul.u %e6, %d1, 511
# CHECK: encoding: [0x53,0xf1,0x5f,0x60]
.code32
mul.u %e6, %d1, 511

# CHECK-INST: mul.u %e6, %d14, 271
# CHECK: encoding: [0x53,0xfe,0x50,0x60]
.code32
mul.u %e6, %d14, 271

# CHECK-INST: mul.u %e6, %d14, 496
# CHECK: encoding: [0x53,0x0e,0x5f,0x60]
.code32
mul.u %e6, %d14, 496

# CHECK-INST: mul.u %e6, %d14, 511
# CHECK: encoding: [0x53,0xfe,0x5f,0x60]
.code32
mul.u %e6, %d14, 511

# CHECK-INST: mul.u %e6, %d15, 271
# CHECK: encoding: [0x53,0xff,0x50,0x60]
.code32
mul.u %e6, %d15, 271

# CHECK-INST: mul.u %e6, %d15, 496
# CHECK: encoding: [0x53,0x0f,0x5f,0x60]
.code32
mul.u %e6, %d15, 496

# CHECK-INST: mul.u %e6, %d15, 511
# CHECK: encoding: [0x53,0xff,0x5f,0x60]
.code32
mul.u %e6, %d15, 511

# CHECK-INST: mul.u %e14, %d0, 271
# CHECK: encoding: [0x53,0xf0,0x50,0xe0]
.code32
mul.u %e14, %d0, 271

# CHECK-INST: mul.u %e14, %d0, 496
# CHECK: encoding: [0x53,0x00,0x5f,0xe0]
.code32
mul.u %e14, %d0, 496

# CHECK-INST: mul.u %e14, %d0, 511
# CHECK: encoding: [0x53,0xf0,0x5f,0xe0]
.code32
mul.u %e14, %d0, 511

# CHECK-INST: mul.u %e14, %d1, 271
# CHECK: encoding: [0x53,0xf1,0x50,0xe0]
.code32
mul.u %e14, %d1, 271

# CHECK-INST: mul.u %e14, %d1, 496
# CHECK: encoding: [0x53,0x01,0x5f,0xe0]
.code32
mul.u %e14, %d1, 496

# CHECK-INST: mul.u %e14, %d1, 511
# CHECK: encoding: [0x53,0xf1,0x5f,0xe0]
.code32
mul.u %e14, %d1, 511

# CHECK-INST: mul.u %e14, %d14, 271
# CHECK: encoding: [0x53,0xfe,0x50,0xe0]
.code32
mul.u %e14, %d14, 271

# CHECK-INST: mul.u %e14, %d14, 496
# CHECK: encoding: [0x53,0x0e,0x5f,0xe0]
.code32
mul.u %e14, %d14, 496

# CHECK-INST: mul.u %e14, %d14, 511
# CHECK: encoding: [0x53,0xfe,0x5f,0xe0]
.code32
mul.u %e14, %d14, 511

# CHECK-INST: mul.u %e14, %d15, 271
# CHECK: encoding: [0x53,0xff,0x50,0xe0]
.code32
mul.u %e14, %d15, 271

# CHECK-INST: mul.u %e14, %d15, 496
# CHECK: encoding: [0x53,0x0f,0x5f,0xe0]
.code32
mul.u %e14, %d15, 496

# CHECK-INST: mul.u %e14, %d15, 511
# CHECK: encoding: [0x53,0xff,0x5f,0xe0]
.code32
mul.u %e14, %d15, 511

# CHECK-INST: muls %d0, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x8a,0x00]
.code32
muls %d0, %d0, %d0

# CHECK-INST: muls %d0, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x8a,0x00]
.code32
muls %d0, %d0, %d1

# CHECK-INST: muls %d0, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x8a,0x00]
.code32
muls %d0, %d0, %d14

# CHECK-INST: muls %d0, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x8a,0x00]
.code32
muls %d0, %d0, %d15

# CHECK-INST: muls %d0, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x8a,0x00]
.code32
muls %d0, %d1, %d0

# CHECK-INST: muls %d0, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x8a,0x00]
.code32
muls %d0, %d1, %d1

# CHECK-INST: muls %d0, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x8a,0x00]
.code32
muls %d0, %d1, %d14

# CHECK-INST: muls %d0, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x8a,0x00]
.code32
muls %d0, %d1, %d15

# CHECK-INST: muls %d0, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x8a,0x00]
.code32
muls %d0, %d14, %d0

# CHECK-INST: muls %d0, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x8a,0x00]
.code32
muls %d0, %d14, %d1

# CHECK-INST: muls %d0, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x8a,0x00]
.code32
muls %d0, %d14, %d14

# CHECK-INST: muls %d0, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x8a,0x00]
.code32
muls %d0, %d14, %d15

# CHECK-INST: muls %d0, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x8a,0x00]
.code32
muls %d0, %d15, %d0

# CHECK-INST: muls %d0, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x8a,0x00]
.code32
muls %d0, %d15, %d1

# CHECK-INST: muls %d0, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x8a,0x00]
.code32
muls %d0, %d15, %d14

# CHECK-INST: muls %d0, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x8a,0x00]
.code32
muls %d0, %d15, %d15

# CHECK-INST: muls %d1, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x8a,0x10]
.code32
muls %d1, %d0, %d0

# CHECK-INST: muls %d1, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x8a,0x10]
.code32
muls %d1, %d0, %d1

# CHECK-INST: muls %d1, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x8a,0x10]
.code32
muls %d1, %d0, %d14

# CHECK-INST: muls %d1, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x8a,0x10]
.code32
muls %d1, %d0, %d15

# CHECK-INST: muls %d1, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x8a,0x10]
.code32
muls %d1, %d1, %d0

# CHECK-INST: muls %d1, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x8a,0x10]
.code32
muls %d1, %d1, %d1

# CHECK-INST: muls %d1, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x8a,0x10]
.code32
muls %d1, %d1, %d14

# CHECK-INST: muls %d1, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x8a,0x10]
.code32
muls %d1, %d1, %d15

# CHECK-INST: muls %d1, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x8a,0x10]
.code32
muls %d1, %d14, %d0

# CHECK-INST: muls %d1, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x8a,0x10]
.code32
muls %d1, %d14, %d1

# CHECK-INST: muls %d1, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x8a,0x10]
.code32
muls %d1, %d14, %d14

# CHECK-INST: muls %d1, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x8a,0x10]
.code32
muls %d1, %d14, %d15

# CHECK-INST: muls %d1, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x8a,0x10]
.code32
muls %d1, %d15, %d0

# CHECK-INST: muls %d1, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x8a,0x10]
.code32
muls %d1, %d15, %d1

# CHECK-INST: muls %d1, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x8a,0x10]
.code32
muls %d1, %d15, %d14

# CHECK-INST: muls %d1, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x8a,0x10]
.code32
muls %d1, %d15, %d15

# CHECK-INST: muls %d14, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x8a,0xe0]
.code32
muls %d14, %d0, %d0

# CHECK-INST: muls %d14, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x8a,0xe0]
.code32
muls %d14, %d0, %d1

# CHECK-INST: muls %d14, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x8a,0xe0]
.code32
muls %d14, %d0, %d14

# CHECK-INST: muls %d14, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x8a,0xe0]
.code32
muls %d14, %d0, %d15

# CHECK-INST: muls %d14, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x8a,0xe0]
.code32
muls %d14, %d1, %d0

# CHECK-INST: muls %d14, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x8a,0xe0]
.code32
muls %d14, %d1, %d1

# CHECK-INST: muls %d14, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x8a,0xe0]
.code32
muls %d14, %d1, %d14

# CHECK-INST: muls %d14, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x8a,0xe0]
.code32
muls %d14, %d1, %d15

# CHECK-INST: muls %d14, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x8a,0xe0]
.code32
muls %d14, %d14, %d0

# CHECK-INST: muls %d14, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x8a,0xe0]
.code32
muls %d14, %d14, %d1

# CHECK-INST: muls %d14, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x8a,0xe0]
.code32
muls %d14, %d14, %d14

# CHECK-INST: muls %d14, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x8a,0xe0]
.code32
muls %d14, %d14, %d15

# CHECK-INST: muls %d14, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x8a,0xe0]
.code32
muls %d14, %d15, %d0

# CHECK-INST: muls %d14, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x8a,0xe0]
.code32
muls %d14, %d15, %d1

# CHECK-INST: muls %d14, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x8a,0xe0]
.code32
muls %d14, %d15, %d14

# CHECK-INST: muls %d14, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x8a,0xe0]
.code32
muls %d14, %d15, %d15

# CHECK-INST: muls %d15, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x8a,0xf0]
.code32
muls %d15, %d0, %d0

# CHECK-INST: muls %d15, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x8a,0xf0]
.code32
muls %d15, %d0, %d1

# CHECK-INST: muls %d15, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x8a,0xf0]
.code32
muls %d15, %d0, %d14

# CHECK-INST: muls %d15, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x8a,0xf0]
.code32
muls %d15, %d0, %d15

# CHECK-INST: muls %d15, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x8a,0xf0]
.code32
muls %d15, %d1, %d0

# CHECK-INST: muls %d15, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x8a,0xf0]
.code32
muls %d15, %d1, %d1

# CHECK-INST: muls %d15, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x8a,0xf0]
.code32
muls %d15, %d1, %d14

# CHECK-INST: muls %d15, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x8a,0xf0]
.code32
muls %d15, %d1, %d15

# CHECK-INST: muls %d15, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x8a,0xf0]
.code32
muls %d15, %d14, %d0

# CHECK-INST: muls %d15, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x8a,0xf0]
.code32
muls %d15, %d14, %d1

# CHECK-INST: muls %d15, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x8a,0xf0]
.code32
muls %d15, %d14, %d14

# CHECK-INST: muls %d15, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x8a,0xf0]
.code32
muls %d15, %d14, %d15

# CHECK-INST: muls %d15, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x8a,0xf0]
.code32
muls %d15, %d15, %d0

# CHECK-INST: muls %d15, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x8a,0xf0]
.code32
muls %d15, %d15, %d1

# CHECK-INST: muls %d15, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x8a,0xf0]
.code32
muls %d15, %d15, %d14

# CHECK-INST: muls %d15, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x8a,0xf0]
.code32
muls %d15, %d15, %d15

# CHECK-INST: muls %d0, %d0, -256
# CHECK: encoding: [0x53,0x00,0xb0,0x00]
.code32
muls %d0, %d0, -256

# CHECK-INST: muls %d0, %d0, -129
# CHECK: encoding: [0x53,0xf0,0xb7,0x00]
.code32
muls %d0, %d0, -129

# CHECK-INST: muls %d0, %d0, -1
# CHECK: encoding: [0x53,0xf0,0xbf,0x00]
.code32
muls %d0, %d0, -1

# CHECK-INST: muls %d0, %d0, 0
# CHECK: encoding: [0x53,0x00,0xa0,0x00]
.code32
muls %d0, %d0, 0

# CHECK-INST: muls %d0, %d0, 1
# CHECK: encoding: [0x53,0x10,0xa0,0x00]
.code32
muls %d0, %d0, 1

# CHECK-INST: muls %d0, %d0, 128
# CHECK: encoding: [0x53,0x00,0xa8,0x00]
.code32
muls %d0, %d0, 128

# CHECK-INST: muls %d0, %d0, 255
# CHECK: encoding: [0x53,0xf0,0xaf,0x00]
.code32
muls %d0, %d0, 255

# CHECK-INST: muls %d0, %d1, -256
# CHECK: encoding: [0x53,0x01,0xb0,0x00]
.code32
muls %d0, %d1, -256

# CHECK-INST: muls %d0, %d1, -129
# CHECK: encoding: [0x53,0xf1,0xb7,0x00]
.code32
muls %d0, %d1, -129

# CHECK-INST: muls %d0, %d1, -1
# CHECK: encoding: [0x53,0xf1,0xbf,0x00]
.code32
muls %d0, %d1, -1

# CHECK-INST: muls %d0, %d1, 0
# CHECK: encoding: [0x53,0x01,0xa0,0x00]
.code32
muls %d0, %d1, 0

# CHECK-INST: muls %d0, %d1, 1
# CHECK: encoding: [0x53,0x11,0xa0,0x00]
.code32
muls %d0, %d1, 1

# CHECK-INST: muls %d0, %d1, 128
# CHECK: encoding: [0x53,0x01,0xa8,0x00]
.code32
muls %d0, %d1, 128

# CHECK-INST: muls %d0, %d1, 255
# CHECK: encoding: [0x53,0xf1,0xaf,0x00]
.code32
muls %d0, %d1, 255

# CHECK-INST: muls %d0, %d14, -256
# CHECK: encoding: [0x53,0x0e,0xb0,0x00]
.code32
muls %d0, %d14, -256

# CHECK-INST: muls %d0, %d14, -129
# CHECK: encoding: [0x53,0xfe,0xb7,0x00]
.code32
muls %d0, %d14, -129

# CHECK-INST: muls %d0, %d14, -1
# CHECK: encoding: [0x53,0xfe,0xbf,0x00]
.code32
muls %d0, %d14, -1

# CHECK-INST: muls %d0, %d14, 0
# CHECK: encoding: [0x53,0x0e,0xa0,0x00]
.code32
muls %d0, %d14, 0

# CHECK-INST: muls %d0, %d14, 1
# CHECK: encoding: [0x53,0x1e,0xa0,0x00]
.code32
muls %d0, %d14, 1

# CHECK-INST: muls %d0, %d14, 128
# CHECK: encoding: [0x53,0x0e,0xa8,0x00]
.code32
muls %d0, %d14, 128

# CHECK-INST: muls %d0, %d14, 255
# CHECK: encoding: [0x53,0xfe,0xaf,0x00]
.code32
muls %d0, %d14, 255

# CHECK-INST: muls %d0, %d15, -256
# CHECK: encoding: [0x53,0x0f,0xb0,0x00]
.code32
muls %d0, %d15, -256

# CHECK-INST: muls %d0, %d15, -129
# CHECK: encoding: [0x53,0xff,0xb7,0x00]
.code32
muls %d0, %d15, -129

# CHECK-INST: muls %d0, %d15, -1
# CHECK: encoding: [0x53,0xff,0xbf,0x00]
.code32
muls %d0, %d15, -1

# CHECK-INST: muls %d0, %d15, 0
# CHECK: encoding: [0x53,0x0f,0xa0,0x00]
.code32
muls %d0, %d15, 0

# CHECK-INST: muls %d0, %d15, 1
# CHECK: encoding: [0x53,0x1f,0xa0,0x00]
.code32
muls %d0, %d15, 1

# CHECK-INST: muls %d0, %d15, 128
# CHECK: encoding: [0x53,0x0f,0xa8,0x00]
.code32
muls %d0, %d15, 128

# CHECK-INST: muls %d0, %d15, 255
# CHECK: encoding: [0x53,0xff,0xaf,0x00]
.code32
muls %d0, %d15, 255

# CHECK-INST: muls %d1, %d0, -256
# CHECK: encoding: [0x53,0x00,0xb0,0x10]
.code32
muls %d1, %d0, -256

# CHECK-INST: muls %d1, %d0, -129
# CHECK: encoding: [0x53,0xf0,0xb7,0x10]
.code32
muls %d1, %d0, -129

# CHECK-INST: muls %d1, %d0, -1
# CHECK: encoding: [0x53,0xf0,0xbf,0x10]
.code32
muls %d1, %d0, -1

# CHECK-INST: muls %d1, %d0, 0
# CHECK: encoding: [0x53,0x00,0xa0,0x10]
.code32
muls %d1, %d0, 0

# CHECK-INST: muls %d1, %d0, 1
# CHECK: encoding: [0x53,0x10,0xa0,0x10]
.code32
muls %d1, %d0, 1

# CHECK-INST: muls %d1, %d0, 128
# CHECK: encoding: [0x53,0x00,0xa8,0x10]
.code32
muls %d1, %d0, 128

# CHECK-INST: muls %d1, %d0, 255
# CHECK: encoding: [0x53,0xf0,0xaf,0x10]
.code32
muls %d1, %d0, 255

# CHECK-INST: muls %d1, %d1, -256
# CHECK: encoding: [0x53,0x01,0xb0,0x10]
.code32
muls %d1, %d1, -256

# CHECK-INST: muls %d1, %d1, -129
# CHECK: encoding: [0x53,0xf1,0xb7,0x10]
.code32
muls %d1, %d1, -129

# CHECK-INST: muls %d1, %d1, -1
# CHECK: encoding: [0x53,0xf1,0xbf,0x10]
.code32
muls %d1, %d1, -1

# CHECK-INST: muls %d1, %d1, 0
# CHECK: encoding: [0x53,0x01,0xa0,0x10]
.code32
muls %d1, %d1, 0

# CHECK-INST: muls %d1, %d1, 1
# CHECK: encoding: [0x53,0x11,0xa0,0x10]
.code32
muls %d1, %d1, 1

# CHECK-INST: muls %d1, %d1, 128
# CHECK: encoding: [0x53,0x01,0xa8,0x10]
.code32
muls %d1, %d1, 128

# CHECK-INST: muls %d1, %d1, 255
# CHECK: encoding: [0x53,0xf1,0xaf,0x10]
.code32
muls %d1, %d1, 255

# CHECK-INST: muls %d1, %d14, -256
# CHECK: encoding: [0x53,0x0e,0xb0,0x10]
.code32
muls %d1, %d14, -256

# CHECK-INST: muls %d1, %d14, -129
# CHECK: encoding: [0x53,0xfe,0xb7,0x10]
.code32
muls %d1, %d14, -129

# CHECK-INST: muls %d1, %d14, -1
# CHECK: encoding: [0x53,0xfe,0xbf,0x10]
.code32
muls %d1, %d14, -1

# CHECK-INST: muls %d1, %d14, 0
# CHECK: encoding: [0x53,0x0e,0xa0,0x10]
.code32
muls %d1, %d14, 0

# CHECK-INST: muls %d1, %d14, 1
# CHECK: encoding: [0x53,0x1e,0xa0,0x10]
.code32
muls %d1, %d14, 1

# CHECK-INST: muls %d1, %d14, 128
# CHECK: encoding: [0x53,0x0e,0xa8,0x10]
.code32
muls %d1, %d14, 128

# CHECK-INST: muls %d1, %d14, 255
# CHECK: encoding: [0x53,0xfe,0xaf,0x10]
.code32
muls %d1, %d14, 255

# CHECK-INST: muls %d1, %d15, -256
# CHECK: encoding: [0x53,0x0f,0xb0,0x10]
.code32
muls %d1, %d15, -256

# CHECK-INST: muls %d1, %d15, -129
# CHECK: encoding: [0x53,0xff,0xb7,0x10]
.code32
muls %d1, %d15, -129

# CHECK-INST: muls %d1, %d15, -1
# CHECK: encoding: [0x53,0xff,0xbf,0x10]
.code32
muls %d1, %d15, -1

# CHECK-INST: muls %d1, %d15, 0
# CHECK: encoding: [0x53,0x0f,0xa0,0x10]
.code32
muls %d1, %d15, 0

# CHECK-INST: muls %d1, %d15, 1
# CHECK: encoding: [0x53,0x1f,0xa0,0x10]
.code32
muls %d1, %d15, 1

# CHECK-INST: muls %d1, %d15, 128
# CHECK: encoding: [0x53,0x0f,0xa8,0x10]
.code32
muls %d1, %d15, 128

# CHECK-INST: muls %d1, %d15, 255
# CHECK: encoding: [0x53,0xff,0xaf,0x10]
.code32
muls %d1, %d15, 255

# CHECK-INST: muls %d14, %d0, -256
# CHECK: encoding: [0x53,0x00,0xb0,0xe0]
.code32
muls %d14, %d0, -256

# CHECK-INST: muls %d14, %d0, -129
# CHECK: encoding: [0x53,0xf0,0xb7,0xe0]
.code32
muls %d14, %d0, -129

# CHECK-INST: muls %d14, %d0, -1
# CHECK: encoding: [0x53,0xf0,0xbf,0xe0]
.code32
muls %d14, %d0, -1

# CHECK-INST: muls %d14, %d0, 0
# CHECK: encoding: [0x53,0x00,0xa0,0xe0]
.code32
muls %d14, %d0, 0

# CHECK-INST: muls %d14, %d0, 1
# CHECK: encoding: [0x53,0x10,0xa0,0xe0]
.code32
muls %d14, %d0, 1

# CHECK-INST: muls %d14, %d0, 128
# CHECK: encoding: [0x53,0x00,0xa8,0xe0]
.code32
muls %d14, %d0, 128

# CHECK-INST: muls %d14, %d0, 255
# CHECK: encoding: [0x53,0xf0,0xaf,0xe0]
.code32
muls %d14, %d0, 255

# CHECK-INST: muls %d14, %d1, -256
# CHECK: encoding: [0x53,0x01,0xb0,0xe0]
.code32
muls %d14, %d1, -256

# CHECK-INST: muls %d14, %d1, -129
# CHECK: encoding: [0x53,0xf1,0xb7,0xe0]
.code32
muls %d14, %d1, -129

# CHECK-INST: muls %d14, %d1, -1
# CHECK: encoding: [0x53,0xf1,0xbf,0xe0]
.code32
muls %d14, %d1, -1

# CHECK-INST: muls %d14, %d1, 0
# CHECK: encoding: [0x53,0x01,0xa0,0xe0]
.code32
muls %d14, %d1, 0

# CHECK-INST: muls %d14, %d1, 1
# CHECK: encoding: [0x53,0x11,0xa0,0xe0]
.code32
muls %d14, %d1, 1

# CHECK-INST: muls %d14, %d1, 128
# CHECK: encoding: [0x53,0x01,0xa8,0xe0]
.code32
muls %d14, %d1, 128

# CHECK-INST: muls %d14, %d1, 255
# CHECK: encoding: [0x53,0xf1,0xaf,0xe0]
.code32
muls %d14, %d1, 255

# CHECK-INST: muls %d14, %d14, -256
# CHECK: encoding: [0x53,0x0e,0xb0,0xe0]
.code32
muls %d14, %d14, -256

# CHECK-INST: muls %d14, %d14, -129
# CHECK: encoding: [0x53,0xfe,0xb7,0xe0]
.code32
muls %d14, %d14, -129

# CHECK-INST: muls %d14, %d14, -1
# CHECK: encoding: [0x53,0xfe,0xbf,0xe0]
.code32
muls %d14, %d14, -1

# CHECK-INST: muls %d14, %d14, 0
# CHECK: encoding: [0x53,0x0e,0xa0,0xe0]
.code32
muls %d14, %d14, 0

# CHECK-INST: muls %d14, %d14, 1
# CHECK: encoding: [0x53,0x1e,0xa0,0xe0]
.code32
muls %d14, %d14, 1

# CHECK-INST: muls %d14, %d14, 128
# CHECK: encoding: [0x53,0x0e,0xa8,0xe0]
.code32
muls %d14, %d14, 128

# CHECK-INST: muls %d14, %d14, 255
# CHECK: encoding: [0x53,0xfe,0xaf,0xe0]
.code32
muls %d14, %d14, 255

# CHECK-INST: muls %d14, %d15, -256
# CHECK: encoding: [0x53,0x0f,0xb0,0xe0]
.code32
muls %d14, %d15, -256

# CHECK-INST: muls %d14, %d15, -129
# CHECK: encoding: [0x53,0xff,0xb7,0xe0]
.code32
muls %d14, %d15, -129

# CHECK-INST: muls %d14, %d15, -1
# CHECK: encoding: [0x53,0xff,0xbf,0xe0]
.code32
muls %d14, %d15, -1

# CHECK-INST: muls %d14, %d15, 0
# CHECK: encoding: [0x53,0x0f,0xa0,0xe0]
.code32
muls %d14, %d15, 0

# CHECK-INST: muls %d14, %d15, 1
# CHECK: encoding: [0x53,0x1f,0xa0,0xe0]
.code32
muls %d14, %d15, 1

# CHECK-INST: muls %d14, %d15, 128
# CHECK: encoding: [0x53,0x0f,0xa8,0xe0]
.code32
muls %d14, %d15, 128

# CHECK-INST: muls %d14, %d15, 255
# CHECK: encoding: [0x53,0xff,0xaf,0xe0]
.code32
muls %d14, %d15, 255

# CHECK-INST: muls %d15, %d0, -256
# CHECK: encoding: [0x53,0x00,0xb0,0xf0]
.code32
muls %d15, %d0, -256

# CHECK-INST: muls %d15, %d0, -129
# CHECK: encoding: [0x53,0xf0,0xb7,0xf0]
.code32
muls %d15, %d0, -129

# CHECK-INST: muls %d15, %d0, -1
# CHECK: encoding: [0x53,0xf0,0xbf,0xf0]
.code32
muls %d15, %d0, -1

# CHECK-INST: muls %d15, %d0, 0
# CHECK: encoding: [0x53,0x00,0xa0,0xf0]
.code32
muls %d15, %d0, 0

# CHECK-INST: muls %d15, %d0, 1
# CHECK: encoding: [0x53,0x10,0xa0,0xf0]
.code32
muls %d15, %d0, 1

# CHECK-INST: muls %d15, %d0, 128
# CHECK: encoding: [0x53,0x00,0xa8,0xf0]
.code32
muls %d15, %d0, 128

# CHECK-INST: muls %d15, %d0, 255
# CHECK: encoding: [0x53,0xf0,0xaf,0xf0]
.code32
muls %d15, %d0, 255

# CHECK-INST: muls %d15, %d1, -256
# CHECK: encoding: [0x53,0x01,0xb0,0xf0]
.code32
muls %d15, %d1, -256

# CHECK-INST: muls %d15, %d1, -129
# CHECK: encoding: [0x53,0xf1,0xb7,0xf0]
.code32
muls %d15, %d1, -129

# CHECK-INST: muls %d15, %d1, -1
# CHECK: encoding: [0x53,0xf1,0xbf,0xf0]
.code32
muls %d15, %d1, -1

# CHECK-INST: muls %d15, %d1, 0
# CHECK: encoding: [0x53,0x01,0xa0,0xf0]
.code32
muls %d15, %d1, 0

# CHECK-INST: muls %d15, %d1, 1
# CHECK: encoding: [0x53,0x11,0xa0,0xf0]
.code32
muls %d15, %d1, 1

# CHECK-INST: muls %d15, %d1, 128
# CHECK: encoding: [0x53,0x01,0xa8,0xf0]
.code32
muls %d15, %d1, 128

# CHECK-INST: muls %d15, %d1, 255
# CHECK: encoding: [0x53,0xf1,0xaf,0xf0]
.code32
muls %d15, %d1, 255

# CHECK-INST: muls %d15, %d14, -256
# CHECK: encoding: [0x53,0x0e,0xb0,0xf0]
.code32
muls %d15, %d14, -256

# CHECK-INST: muls %d15, %d14, -129
# CHECK: encoding: [0x53,0xfe,0xb7,0xf0]
.code32
muls %d15, %d14, -129

# CHECK-INST: muls %d15, %d14, -1
# CHECK: encoding: [0x53,0xfe,0xbf,0xf0]
.code32
muls %d15, %d14, -1

# CHECK-INST: muls %d15, %d14, 0
# CHECK: encoding: [0x53,0x0e,0xa0,0xf0]
.code32
muls %d15, %d14, 0

# CHECK-INST: muls %d15, %d14, 1
# CHECK: encoding: [0x53,0x1e,0xa0,0xf0]
.code32
muls %d15, %d14, 1

# CHECK-INST: muls %d15, %d14, 128
# CHECK: encoding: [0x53,0x0e,0xa8,0xf0]
.code32
muls %d15, %d14, 128

# CHECK-INST: muls %d15, %d14, 255
# CHECK: encoding: [0x53,0xfe,0xaf,0xf0]
.code32
muls %d15, %d14, 255

# CHECK-INST: muls %d15, %d15, -256
# CHECK: encoding: [0x53,0x0f,0xb0,0xf0]
.code32
muls %d15, %d15, -256

# CHECK-INST: muls %d15, %d15, -129
# CHECK: encoding: [0x53,0xff,0xb7,0xf0]
.code32
muls %d15, %d15, -129

# CHECK-INST: muls %d15, %d15, -1
# CHECK: encoding: [0x53,0xff,0xbf,0xf0]
.code32
muls %d15, %d15, -1

# CHECK-INST: muls %d15, %d15, 0
# CHECK: encoding: [0x53,0x0f,0xa0,0xf0]
.code32
muls %d15, %d15, 0

# CHECK-INST: muls %d15, %d15, 1
# CHECK: encoding: [0x53,0x1f,0xa0,0xf0]
.code32
muls %d15, %d15, 1

# CHECK-INST: muls %d15, %d15, 128
# CHECK: encoding: [0x53,0x0f,0xa8,0xf0]
.code32
muls %d15, %d15, 128

# CHECK-INST: muls %d15, %d15, 255
# CHECK: encoding: [0x53,0xff,0xaf,0xf0]
.code32
muls %d15, %d15, 255

# CHECK-INST: muls.u %d0, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x88,0x00]
.code32
muls.u %d0, %d0, %d0

# CHECK-INST: muls.u %d0, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x88,0x00]
.code32
muls.u %d0, %d0, %d1

# CHECK-INST: muls.u %d0, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x88,0x00]
.code32
muls.u %d0, %d0, %d14

# CHECK-INST: muls.u %d0, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x88,0x00]
.code32
muls.u %d0, %d0, %d15

# CHECK-INST: muls.u %d0, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x88,0x00]
.code32
muls.u %d0, %d1, %d0

# CHECK-INST: muls.u %d0, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x88,0x00]
.code32
muls.u %d0, %d1, %d1

# CHECK-INST: muls.u %d0, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x88,0x00]
.code32
muls.u %d0, %d1, %d14

# CHECK-INST: muls.u %d0, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x88,0x00]
.code32
muls.u %d0, %d1, %d15

# CHECK-INST: muls.u %d0, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x88,0x00]
.code32
muls.u %d0, %d14, %d0

# CHECK-INST: muls.u %d0, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x88,0x00]
.code32
muls.u %d0, %d14, %d1

# CHECK-INST: muls.u %d0, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x88,0x00]
.code32
muls.u %d0, %d14, %d14

# CHECK-INST: muls.u %d0, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x88,0x00]
.code32
muls.u %d0, %d14, %d15

# CHECK-INST: muls.u %d0, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x88,0x00]
.code32
muls.u %d0, %d15, %d0

# CHECK-INST: muls.u %d0, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x88,0x00]
.code32
muls.u %d0, %d15, %d1

# CHECK-INST: muls.u %d0, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x88,0x00]
.code32
muls.u %d0, %d15, %d14

# CHECK-INST: muls.u %d0, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x88,0x00]
.code32
muls.u %d0, %d15, %d15

# CHECK-INST: muls.u %d1, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x88,0x10]
.code32
muls.u %d1, %d0, %d0

# CHECK-INST: muls.u %d1, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x88,0x10]
.code32
muls.u %d1, %d0, %d1

# CHECK-INST: muls.u %d1, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x88,0x10]
.code32
muls.u %d1, %d0, %d14

# CHECK-INST: muls.u %d1, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x88,0x10]
.code32
muls.u %d1, %d0, %d15

# CHECK-INST: muls.u %d1, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x88,0x10]
.code32
muls.u %d1, %d1, %d0

# CHECK-INST: muls.u %d1, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x88,0x10]
.code32
muls.u %d1, %d1, %d1

# CHECK-INST: muls.u %d1, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x88,0x10]
.code32
muls.u %d1, %d1, %d14

# CHECK-INST: muls.u %d1, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x88,0x10]
.code32
muls.u %d1, %d1, %d15

# CHECK-INST: muls.u %d1, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x88,0x10]
.code32
muls.u %d1, %d14, %d0

# CHECK-INST: muls.u %d1, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x88,0x10]
.code32
muls.u %d1, %d14, %d1

# CHECK-INST: muls.u %d1, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x88,0x10]
.code32
muls.u %d1, %d14, %d14

# CHECK-INST: muls.u %d1, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x88,0x10]
.code32
muls.u %d1, %d14, %d15

# CHECK-INST: muls.u %d1, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x88,0x10]
.code32
muls.u %d1, %d15, %d0

# CHECK-INST: muls.u %d1, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x88,0x10]
.code32
muls.u %d1, %d15, %d1

# CHECK-INST: muls.u %d1, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x88,0x10]
.code32
muls.u %d1, %d15, %d14

# CHECK-INST: muls.u %d1, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x88,0x10]
.code32
muls.u %d1, %d15, %d15

# CHECK-INST: muls.u %d14, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x88,0xe0]
.code32
muls.u %d14, %d0, %d0

# CHECK-INST: muls.u %d14, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x88,0xe0]
.code32
muls.u %d14, %d0, %d1

# CHECK-INST: muls.u %d14, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x88,0xe0]
.code32
muls.u %d14, %d0, %d14

# CHECK-INST: muls.u %d14, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x88,0xe0]
.code32
muls.u %d14, %d0, %d15

# CHECK-INST: muls.u %d14, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x88,0xe0]
.code32
muls.u %d14, %d1, %d0

# CHECK-INST: muls.u %d14, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x88,0xe0]
.code32
muls.u %d14, %d1, %d1

# CHECK-INST: muls.u %d14, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x88,0xe0]
.code32
muls.u %d14, %d1, %d14

# CHECK-INST: muls.u %d14, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x88,0xe0]
.code32
muls.u %d14, %d1, %d15

# CHECK-INST: muls.u %d14, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x88,0xe0]
.code32
muls.u %d14, %d14, %d0

# CHECK-INST: muls.u %d14, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x88,0xe0]
.code32
muls.u %d14, %d14, %d1

# CHECK-INST: muls.u %d14, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x88,0xe0]
.code32
muls.u %d14, %d14, %d14

# CHECK-INST: muls.u %d14, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x88,0xe0]
.code32
muls.u %d14, %d14, %d15

# CHECK-INST: muls.u %d14, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x88,0xe0]
.code32
muls.u %d14, %d15, %d0

# CHECK-INST: muls.u %d14, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x88,0xe0]
.code32
muls.u %d14, %d15, %d1

# CHECK-INST: muls.u %d14, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x88,0xe0]
.code32
muls.u %d14, %d15, %d14

# CHECK-INST: muls.u %d14, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x88,0xe0]
.code32
muls.u %d14, %d15, %d15

# CHECK-INST: muls.u %d15, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x88,0xf0]
.code32
muls.u %d15, %d0, %d0

# CHECK-INST: muls.u %d15, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x88,0xf0]
.code32
muls.u %d15, %d0, %d1

# CHECK-INST: muls.u %d15, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x88,0xf0]
.code32
muls.u %d15, %d0, %d14

# CHECK-INST: muls.u %d15, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x88,0xf0]
.code32
muls.u %d15, %d0, %d15

# CHECK-INST: muls.u %d15, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x88,0xf0]
.code32
muls.u %d15, %d1, %d0

# CHECK-INST: muls.u %d15, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x88,0xf0]
.code32
muls.u %d15, %d1, %d1

# CHECK-INST: muls.u %d15, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x88,0xf0]
.code32
muls.u %d15, %d1, %d14

# CHECK-INST: muls.u %d15, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x88,0xf0]
.code32
muls.u %d15, %d1, %d15

# CHECK-INST: muls.u %d15, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x88,0xf0]
.code32
muls.u %d15, %d14, %d0

# CHECK-INST: muls.u %d15, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x88,0xf0]
.code32
muls.u %d15, %d14, %d1

# CHECK-INST: muls.u %d15, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x88,0xf0]
.code32
muls.u %d15, %d14, %d14

# CHECK-INST: muls.u %d15, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x88,0xf0]
.code32
muls.u %d15, %d14, %d15

# CHECK-INST: muls.u %d15, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x88,0xf0]
.code32
muls.u %d15, %d15, %d0

# CHECK-INST: muls.u %d15, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x88,0xf0]
.code32
muls.u %d15, %d15, %d1

# CHECK-INST: muls.u %d15, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x88,0xf0]
.code32
muls.u %d15, %d15, %d14

# CHECK-INST: muls.u %d15, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x88,0xf0]
.code32
muls.u %d15, %d15, %d15

# CHECK-INST: muls.u %d0, %d0, 271
# CHECK: encoding: [0x53,0xf0,0x90,0x00]
.code32
muls.u %d0, %d0, 271

# CHECK-INST: muls.u %d0, %d0, 496
# CHECK: encoding: [0x53,0x00,0x9f,0x00]
.code32
muls.u %d0, %d0, 496

# CHECK-INST: muls.u %d0, %d0, 511
# CHECK: encoding: [0x53,0xf0,0x9f,0x00]
.code32
muls.u %d0, %d0, 511

# CHECK-INST: muls.u %d0, %d1, 271
# CHECK: encoding: [0x53,0xf1,0x90,0x00]
.code32
muls.u %d0, %d1, 271

# CHECK-INST: muls.u %d0, %d1, 496
# CHECK: encoding: [0x53,0x01,0x9f,0x00]
.code32
muls.u %d0, %d1, 496

# CHECK-INST: muls.u %d0, %d1, 511
# CHECK: encoding: [0x53,0xf1,0x9f,0x00]
.code32
muls.u %d0, %d1, 511

# CHECK-INST: muls.u %d0, %d14, 271
# CHECK: encoding: [0x53,0xfe,0x90,0x00]
.code32
muls.u %d0, %d14, 271

# CHECK-INST: muls.u %d0, %d14, 496
# CHECK: encoding: [0x53,0x0e,0x9f,0x00]
.code32
muls.u %d0, %d14, 496

# CHECK-INST: muls.u %d0, %d14, 511
# CHECK: encoding: [0x53,0xfe,0x9f,0x00]
.code32
muls.u %d0, %d14, 511

# CHECK-INST: muls.u %d0, %d15, 271
# CHECK: encoding: [0x53,0xff,0x90,0x00]
.code32
muls.u %d0, %d15, 271

# CHECK-INST: muls.u %d0, %d15, 496
# CHECK: encoding: [0x53,0x0f,0x9f,0x00]
.code32
muls.u %d0, %d15, 496

# CHECK-INST: muls.u %d0, %d15, 511
# CHECK: encoding: [0x53,0xff,0x9f,0x00]
.code32
muls.u %d0, %d15, 511

# CHECK-INST: muls.u %d1, %d0, 271
# CHECK: encoding: [0x53,0xf0,0x90,0x10]
.code32
muls.u %d1, %d0, 271

# CHECK-INST: muls.u %d1, %d0, 496
# CHECK: encoding: [0x53,0x00,0x9f,0x10]
.code32
muls.u %d1, %d0, 496

# CHECK-INST: muls.u %d1, %d0, 511
# CHECK: encoding: [0x53,0xf0,0x9f,0x10]
.code32
muls.u %d1, %d0, 511

# CHECK-INST: muls.u %d1, %d1, 271
# CHECK: encoding: [0x53,0xf1,0x90,0x10]
.code32
muls.u %d1, %d1, 271

# CHECK-INST: muls.u %d1, %d1, 496
# CHECK: encoding: [0x53,0x01,0x9f,0x10]
.code32
muls.u %d1, %d1, 496

# CHECK-INST: muls.u %d1, %d1, 511
# CHECK: encoding: [0x53,0xf1,0x9f,0x10]
.code32
muls.u %d1, %d1, 511

# CHECK-INST: muls.u %d1, %d14, 271
# CHECK: encoding: [0x53,0xfe,0x90,0x10]
.code32
muls.u %d1, %d14, 271

# CHECK-INST: muls.u %d1, %d14, 496
# CHECK: encoding: [0x53,0x0e,0x9f,0x10]
.code32
muls.u %d1, %d14, 496

# CHECK-INST: muls.u %d1, %d14, 511
# CHECK: encoding: [0x53,0xfe,0x9f,0x10]
.code32
muls.u %d1, %d14, 511

# CHECK-INST: muls.u %d1, %d15, 271
# CHECK: encoding: [0x53,0xff,0x90,0x10]
.code32
muls.u %d1, %d15, 271

# CHECK-INST: muls.u %d1, %d15, 496
# CHECK: encoding: [0x53,0x0f,0x9f,0x10]
.code32
muls.u %d1, %d15, 496

# CHECK-INST: muls.u %d1, %d15, 511
# CHECK: encoding: [0x53,0xff,0x9f,0x10]
.code32
muls.u %d1, %d15, 511

# CHECK-INST: muls.u %d14, %d0, 271
# CHECK: encoding: [0x53,0xf0,0x90,0xe0]
.code32
muls.u %d14, %d0, 271

# CHECK-INST: muls.u %d14, %d0, 496
# CHECK: encoding: [0x53,0x00,0x9f,0xe0]
.code32
muls.u %d14, %d0, 496

# CHECK-INST: muls.u %d14, %d0, 511
# CHECK: encoding: [0x53,0xf0,0x9f,0xe0]
.code32
muls.u %d14, %d0, 511

# CHECK-INST: muls.u %d14, %d1, 271
# CHECK: encoding: [0x53,0xf1,0x90,0xe0]
.code32
muls.u %d14, %d1, 271

# CHECK-INST: muls.u %d14, %d1, 496
# CHECK: encoding: [0x53,0x01,0x9f,0xe0]
.code32
muls.u %d14, %d1, 496

# CHECK-INST: muls.u %d14, %d1, 511
# CHECK: encoding: [0x53,0xf1,0x9f,0xe0]
.code32
muls.u %d14, %d1, 511

# CHECK-INST: muls.u %d14, %d14, 271
# CHECK: encoding: [0x53,0xfe,0x90,0xe0]
.code32
muls.u %d14, %d14, 271

# CHECK-INST: muls.u %d14, %d14, 496
# CHECK: encoding: [0x53,0x0e,0x9f,0xe0]
.code32
muls.u %d14, %d14, 496

# CHECK-INST: muls.u %d14, %d14, 511
# CHECK: encoding: [0x53,0xfe,0x9f,0xe0]
.code32
muls.u %d14, %d14, 511

# CHECK-INST: muls.u %d14, %d15, 271
# CHECK: encoding: [0x53,0xff,0x90,0xe0]
.code32
muls.u %d14, %d15, 271

# CHECK-INST: muls.u %d14, %d15, 496
# CHECK: encoding: [0x53,0x0f,0x9f,0xe0]
.code32
muls.u %d14, %d15, 496

# CHECK-INST: muls.u %d14, %d15, 511
# CHECK: encoding: [0x53,0xff,0x9f,0xe0]
.code32
muls.u %d14, %d15, 511

# CHECK-INST: muls.u %d15, %d0, 271
# CHECK: encoding: [0x53,0xf0,0x90,0xf0]
.code32
muls.u %d15, %d0, 271

# CHECK-INST: muls.u %d15, %d0, 496
# CHECK: encoding: [0x53,0x00,0x9f,0xf0]
.code32
muls.u %d15, %d0, 496

# CHECK-INST: muls.u %d15, %d0, 511
# CHECK: encoding: [0x53,0xf0,0x9f,0xf0]
.code32
muls.u %d15, %d0, 511

# CHECK-INST: muls.u %d15, %d1, 271
# CHECK: encoding: [0x53,0xf1,0x90,0xf0]
.code32
muls.u %d15, %d1, 271

# CHECK-INST: muls.u %d15, %d1, 496
# CHECK: encoding: [0x53,0x01,0x9f,0xf0]
.code32
muls.u %d15, %d1, 496

# CHECK-INST: muls.u %d15, %d1, 511
# CHECK: encoding: [0x53,0xf1,0x9f,0xf0]
.code32
muls.u %d15, %d1, 511

# CHECK-INST: muls.u %d15, %d14, 271
# CHECK: encoding: [0x53,0xfe,0x90,0xf0]
.code32
muls.u %d15, %d14, 271

# CHECK-INST: muls.u %d15, %d14, 496
# CHECK: encoding: [0x53,0x0e,0x9f,0xf0]
.code32
muls.u %d15, %d14, 496

# CHECK-INST: muls.u %d15, %d14, 511
# CHECK: encoding: [0x53,0xfe,0x9f,0xf0]
.code32
muls.u %d15, %d14, 511

# CHECK-INST: muls.u %d15, %d15, 271
# CHECK: encoding: [0x53,0xff,0x90,0xf0]
.code32
muls.u %d15, %d15, 271

# CHECK-INST: muls.u %d15, %d15, 496
# CHECK: encoding: [0x53,0x0f,0x9f,0xf0]
.code32
muls.u %d15, %d15, 496

# CHECK-INST: muls.u %d15, %d15, 511
# CHECK: encoding: [0x53,0xff,0x9f,0xf0]
.code32
muls.u %d15, %d15, 511