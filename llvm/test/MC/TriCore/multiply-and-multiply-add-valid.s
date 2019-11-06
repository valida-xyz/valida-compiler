# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s

# CHECK-INST: madd %d0, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0x00]
madd %d0, %d0, %d0, %d0

# CHECK-INST: madd %d0, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0x00]
madd %d0, %d0, %d0, %d1

# CHECK-INST: madd %d0, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0x00]
madd %d0, %d0, %d0, %d14

# CHECK-INST: madd %d0, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0x00]
madd %d0, %d0, %d0, %d15

# CHECK-INST: madd %d0, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0x00]
madd %d0, %d0, %d1, %d0

# CHECK-INST: madd %d0, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0x00]
madd %d0, %d0, %d1, %d1

# CHECK-INST: madd %d0, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0x00]
madd %d0, %d0, %d1, %d14

# CHECK-INST: madd %d0, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0x00]
madd %d0, %d0, %d1, %d15

# CHECK-INST: madd %d0, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0x00]
madd %d0, %d0, %d14, %d0

# CHECK-INST: madd %d0, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0x00]
madd %d0, %d0, %d14, %d1

# CHECK-INST: madd %d0, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0x00]
madd %d0, %d0, %d14, %d14

# CHECK-INST: madd %d0, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0x00]
madd %d0, %d0, %d14, %d15

# CHECK-INST: madd %d0, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0x00]
madd %d0, %d0, %d15, %d0

# CHECK-INST: madd %d0, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0x00]
madd %d0, %d0, %d15, %d1

# CHECK-INST: madd %d0, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0x00]
madd %d0, %d0, %d15, %d14

# CHECK-INST: madd %d0, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0x00]
madd %d0, %d0, %d15, %d15

# CHECK-INST: madd %d0, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0x01]
madd %d0, %d1, %d0, %d0

# CHECK-INST: madd %d0, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0x01]
madd %d0, %d1, %d0, %d1

# CHECK-INST: madd %d0, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0x01]
madd %d0, %d1, %d0, %d14

# CHECK-INST: madd %d0, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0x01]
madd %d0, %d1, %d0, %d15

# CHECK-INST: madd %d0, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0x01]
madd %d0, %d1, %d1, %d0

# CHECK-INST: madd %d0, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0x01]
madd %d0, %d1, %d1, %d1

# CHECK-INST: madd %d0, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0x01]
madd %d0, %d1, %d1, %d14

# CHECK-INST: madd %d0, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0x01]
madd %d0, %d1, %d1, %d15

# CHECK-INST: madd %d0, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0x01]
madd %d0, %d1, %d14, %d0

# CHECK-INST: madd %d0, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0x01]
madd %d0, %d1, %d14, %d1

# CHECK-INST: madd %d0, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0x01]
madd %d0, %d1, %d14, %d14

# CHECK-INST: madd %d0, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0x01]
madd %d0, %d1, %d14, %d15

# CHECK-INST: madd %d0, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0x01]
madd %d0, %d1, %d15, %d0

# CHECK-INST: madd %d0, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0x01]
madd %d0, %d1, %d15, %d1

# CHECK-INST: madd %d0, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0x01]
madd %d0, %d1, %d15, %d14

# CHECK-INST: madd %d0, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0x01]
madd %d0, %d1, %d15, %d15

# CHECK-INST: madd %d0, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0x0e]
madd %d0, %d14, %d0, %d0

# CHECK-INST: madd %d0, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0x0e]
madd %d0, %d14, %d0, %d1

# CHECK-INST: madd %d0, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0x0e]
madd %d0, %d14, %d0, %d14

# CHECK-INST: madd %d0, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0x0e]
madd %d0, %d14, %d0, %d15

# CHECK-INST: madd %d0, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0x0e]
madd %d0, %d14, %d1, %d0

# CHECK-INST: madd %d0, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0x0e]
madd %d0, %d14, %d1, %d1

# CHECK-INST: madd %d0, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0x0e]
madd %d0, %d14, %d1, %d14

# CHECK-INST: madd %d0, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0x0e]
madd %d0, %d14, %d1, %d15

# CHECK-INST: madd %d0, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0x0e]
madd %d0, %d14, %d14, %d0

# CHECK-INST: madd %d0, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0x0e]
madd %d0, %d14, %d14, %d1

# CHECK-INST: madd %d0, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0x0e]
madd %d0, %d14, %d14, %d14

# CHECK-INST: madd %d0, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0x0e]
madd %d0, %d14, %d14, %d15

# CHECK-INST: madd %d0, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0x0e]
madd %d0, %d14, %d15, %d0

# CHECK-INST: madd %d0, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0x0e]
madd %d0, %d14, %d15, %d1

# CHECK-INST: madd %d0, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0x0e]
madd %d0, %d14, %d15, %d14

# CHECK-INST: madd %d0, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0x0e]
madd %d0, %d14, %d15, %d15

# CHECK-INST: madd %d0, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0x0f]
madd %d0, %d15, %d0, %d0

# CHECK-INST: madd %d0, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0x0f]
madd %d0, %d15, %d0, %d1

# CHECK-INST: madd %d0, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0x0f]
madd %d0, %d15, %d0, %d14

# CHECK-INST: madd %d0, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0x0f]
madd %d0, %d15, %d0, %d15

# CHECK-INST: madd %d0, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0x0f]
madd %d0, %d15, %d1, %d0

# CHECK-INST: madd %d0, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0x0f]
madd %d0, %d15, %d1, %d1

# CHECK-INST: madd %d0, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0x0f]
madd %d0, %d15, %d1, %d14

# CHECK-INST: madd %d0, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0x0f]
madd %d0, %d15, %d1, %d15

# CHECK-INST: madd %d0, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0x0f]
madd %d0, %d15, %d14, %d0

# CHECK-INST: madd %d0, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0x0f]
madd %d0, %d15, %d14, %d1

# CHECK-INST: madd %d0, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0x0f]
madd %d0, %d15, %d14, %d14

# CHECK-INST: madd %d0, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0x0f]
madd %d0, %d15, %d14, %d15

# CHECK-INST: madd %d0, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0x0f]
madd %d0, %d15, %d15, %d0

# CHECK-INST: madd %d0, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0x0f]
madd %d0, %d15, %d15, %d1

# CHECK-INST: madd %d0, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0x0f]
madd %d0, %d15, %d15, %d14

# CHECK-INST: madd %d0, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0x0f]
madd %d0, %d15, %d15, %d15

# CHECK-INST: madd %d1, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0x10]
madd %d1, %d0, %d0, %d0

# CHECK-INST: madd %d1, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0x10]
madd %d1, %d0, %d0, %d1

# CHECK-INST: madd %d1, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0x10]
madd %d1, %d0, %d0, %d14

# CHECK-INST: madd %d1, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0x10]
madd %d1, %d0, %d0, %d15

# CHECK-INST: madd %d1, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0x10]
madd %d1, %d0, %d1, %d0

# CHECK-INST: madd %d1, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0x10]
madd %d1, %d0, %d1, %d1

# CHECK-INST: madd %d1, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0x10]
madd %d1, %d0, %d1, %d14

# CHECK-INST: madd %d1, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0x10]
madd %d1, %d0, %d1, %d15

# CHECK-INST: madd %d1, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0x10]
madd %d1, %d0, %d14, %d0

# CHECK-INST: madd %d1, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0x10]
madd %d1, %d0, %d14, %d1

# CHECK-INST: madd %d1, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0x10]
madd %d1, %d0, %d14, %d14

# CHECK-INST: madd %d1, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0x10]
madd %d1, %d0, %d14, %d15

# CHECK-INST: madd %d1, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0x10]
madd %d1, %d0, %d15, %d0

# CHECK-INST: madd %d1, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0x10]
madd %d1, %d0, %d15, %d1

# CHECK-INST: madd %d1, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0x10]
madd %d1, %d0, %d15, %d14

# CHECK-INST: madd %d1, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0x10]
madd %d1, %d0, %d15, %d15

# CHECK-INST: madd %d1, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0x11]
madd %d1, %d1, %d0, %d0

# CHECK-INST: madd %d1, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0x11]
madd %d1, %d1, %d0, %d1

# CHECK-INST: madd %d1, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0x11]
madd %d1, %d1, %d0, %d14

# CHECK-INST: madd %d1, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0x11]
madd %d1, %d1, %d0, %d15

# CHECK-INST: madd %d1, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0x11]
madd %d1, %d1, %d1, %d0

# CHECK-INST: madd %d1, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0x11]
madd %d1, %d1, %d1, %d1

# CHECK-INST: madd %d1, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0x11]
madd %d1, %d1, %d1, %d14

# CHECK-INST: madd %d1, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0x11]
madd %d1, %d1, %d1, %d15

# CHECK-INST: madd %d1, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0x11]
madd %d1, %d1, %d14, %d0

# CHECK-INST: madd %d1, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0x11]
madd %d1, %d1, %d14, %d1

# CHECK-INST: madd %d1, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0x11]
madd %d1, %d1, %d14, %d14

# CHECK-INST: madd %d1, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0x11]
madd %d1, %d1, %d14, %d15

# CHECK-INST: madd %d1, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0x11]
madd %d1, %d1, %d15, %d0

# CHECK-INST: madd %d1, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0x11]
madd %d1, %d1, %d15, %d1

# CHECK-INST: madd %d1, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0x11]
madd %d1, %d1, %d15, %d14

# CHECK-INST: madd %d1, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0x11]
madd %d1, %d1, %d15, %d15

# CHECK-INST: madd %d1, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0x1e]
madd %d1, %d14, %d0, %d0

# CHECK-INST: madd %d1, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0x1e]
madd %d1, %d14, %d0, %d1

# CHECK-INST: madd %d1, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0x1e]
madd %d1, %d14, %d0, %d14

# CHECK-INST: madd %d1, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0x1e]
madd %d1, %d14, %d0, %d15

# CHECK-INST: madd %d1, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0x1e]
madd %d1, %d14, %d1, %d0

# CHECK-INST: madd %d1, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0x1e]
madd %d1, %d14, %d1, %d1

# CHECK-INST: madd %d1, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0x1e]
madd %d1, %d14, %d1, %d14

# CHECK-INST: madd %d1, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0x1e]
madd %d1, %d14, %d1, %d15

# CHECK-INST: madd %d1, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0x1e]
madd %d1, %d14, %d14, %d0

# CHECK-INST: madd %d1, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0x1e]
madd %d1, %d14, %d14, %d1

# CHECK-INST: madd %d1, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0x1e]
madd %d1, %d14, %d14, %d14

# CHECK-INST: madd %d1, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0x1e]
madd %d1, %d14, %d14, %d15

# CHECK-INST: madd %d1, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0x1e]
madd %d1, %d14, %d15, %d0

# CHECK-INST: madd %d1, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0x1e]
madd %d1, %d14, %d15, %d1

# CHECK-INST: madd %d1, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0x1e]
madd %d1, %d14, %d15, %d14

# CHECK-INST: madd %d1, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0x1e]
madd %d1, %d14, %d15, %d15

# CHECK-INST: madd %d1, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0x1f]
madd %d1, %d15, %d0, %d0

# CHECK-INST: madd %d1, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0x1f]
madd %d1, %d15, %d0, %d1

# CHECK-INST: madd %d1, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0x1f]
madd %d1, %d15, %d0, %d14

# CHECK-INST: madd %d1, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0x1f]
madd %d1, %d15, %d0, %d15

# CHECK-INST: madd %d1, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0x1f]
madd %d1, %d15, %d1, %d0

# CHECK-INST: madd %d1, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0x1f]
madd %d1, %d15, %d1, %d1

# CHECK-INST: madd %d1, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0x1f]
madd %d1, %d15, %d1, %d14

# CHECK-INST: madd %d1, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0x1f]
madd %d1, %d15, %d1, %d15

# CHECK-INST: madd %d1, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0x1f]
madd %d1, %d15, %d14, %d0

# CHECK-INST: madd %d1, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0x1f]
madd %d1, %d15, %d14, %d1

# CHECK-INST: madd %d1, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0x1f]
madd %d1, %d15, %d14, %d14

# CHECK-INST: madd %d1, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0x1f]
madd %d1, %d15, %d14, %d15

# CHECK-INST: madd %d1, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0x1f]
madd %d1, %d15, %d15, %d0

# CHECK-INST: madd %d1, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0x1f]
madd %d1, %d15, %d15, %d1

# CHECK-INST: madd %d1, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0x1f]
madd %d1, %d15, %d15, %d14

# CHECK-INST: madd %d1, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0x1f]
madd %d1, %d15, %d15, %d15

# CHECK-INST: madd %d14, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0xe0]
madd %d14, %d0, %d0, %d0

# CHECK-INST: madd %d14, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0xe0]
madd %d14, %d0, %d0, %d1

# CHECK-INST: madd %d14, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0xe0]
madd %d14, %d0, %d0, %d14

# CHECK-INST: madd %d14, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0xe0]
madd %d14, %d0, %d0, %d15

# CHECK-INST: madd %d14, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0xe0]
madd %d14, %d0, %d1, %d0

# CHECK-INST: madd %d14, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0xe0]
madd %d14, %d0, %d1, %d1

# CHECK-INST: madd %d14, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0xe0]
madd %d14, %d0, %d1, %d14

# CHECK-INST: madd %d14, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0xe0]
madd %d14, %d0, %d1, %d15

# CHECK-INST: madd %d14, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0xe0]
madd %d14, %d0, %d14, %d0

# CHECK-INST: madd %d14, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0xe0]
madd %d14, %d0, %d14, %d1

# CHECK-INST: madd %d14, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0xe0]
madd %d14, %d0, %d14, %d14

# CHECK-INST: madd %d14, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0xe0]
madd %d14, %d0, %d14, %d15

# CHECK-INST: madd %d14, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0xe0]
madd %d14, %d0, %d15, %d0

# CHECK-INST: madd %d14, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0xe0]
madd %d14, %d0, %d15, %d1

# CHECK-INST: madd %d14, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0xe0]
madd %d14, %d0, %d15, %d14

# CHECK-INST: madd %d14, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0xe0]
madd %d14, %d0, %d15, %d15

# CHECK-INST: madd %d14, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0xe1]
madd %d14, %d1, %d0, %d0

# CHECK-INST: madd %d14, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0xe1]
madd %d14, %d1, %d0, %d1

# CHECK-INST: madd %d14, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0xe1]
madd %d14, %d1, %d0, %d14

# CHECK-INST: madd %d14, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0xe1]
madd %d14, %d1, %d0, %d15

# CHECK-INST: madd %d14, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0xe1]
madd %d14, %d1, %d1, %d0

# CHECK-INST: madd %d14, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0xe1]
madd %d14, %d1, %d1, %d1

# CHECK-INST: madd %d14, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0xe1]
madd %d14, %d1, %d1, %d14

# CHECK-INST: madd %d14, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0xe1]
madd %d14, %d1, %d1, %d15

# CHECK-INST: madd %d14, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0xe1]
madd %d14, %d1, %d14, %d0

# CHECK-INST: madd %d14, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0xe1]
madd %d14, %d1, %d14, %d1

# CHECK-INST: madd %d14, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0xe1]
madd %d14, %d1, %d14, %d14

# CHECK-INST: madd %d14, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0xe1]
madd %d14, %d1, %d14, %d15

# CHECK-INST: madd %d14, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0xe1]
madd %d14, %d1, %d15, %d0

# CHECK-INST: madd %d14, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0xe1]
madd %d14, %d1, %d15, %d1

# CHECK-INST: madd %d14, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0xe1]
madd %d14, %d1, %d15, %d14

# CHECK-INST: madd %d14, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0xe1]
madd %d14, %d1, %d15, %d15

# CHECK-INST: madd %d14, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0xee]
madd %d14, %d14, %d0, %d0

# CHECK-INST: madd %d14, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0xee]
madd %d14, %d14, %d0, %d1

# CHECK-INST: madd %d14, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0xee]
madd %d14, %d14, %d0, %d14

# CHECK-INST: madd %d14, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0xee]
madd %d14, %d14, %d0, %d15

# CHECK-INST: madd %d14, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0xee]
madd %d14, %d14, %d1, %d0

# CHECK-INST: madd %d14, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0xee]
madd %d14, %d14, %d1, %d1

# CHECK-INST: madd %d14, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0xee]
madd %d14, %d14, %d1, %d14

# CHECK-INST: madd %d14, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0xee]
madd %d14, %d14, %d1, %d15

# CHECK-INST: madd %d14, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0xee]
madd %d14, %d14, %d14, %d0

# CHECK-INST: madd %d14, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0xee]
madd %d14, %d14, %d14, %d1

# CHECK-INST: madd %d14, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0xee]
madd %d14, %d14, %d14, %d14

# CHECK-INST: madd %d14, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0xee]
madd %d14, %d14, %d14, %d15

# CHECK-INST: madd %d14, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0xee]
madd %d14, %d14, %d15, %d0

# CHECK-INST: madd %d14, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0xee]
madd %d14, %d14, %d15, %d1

# CHECK-INST: madd %d14, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0xee]
madd %d14, %d14, %d15, %d14

# CHECK-INST: madd %d14, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0xee]
madd %d14, %d14, %d15, %d15

# CHECK-INST: madd %d14, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0xef]
madd %d14, %d15, %d0, %d0

# CHECK-INST: madd %d14, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0xef]
madd %d14, %d15, %d0, %d1

# CHECK-INST: madd %d14, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0xef]
madd %d14, %d15, %d0, %d14

# CHECK-INST: madd %d14, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0xef]
madd %d14, %d15, %d0, %d15

# CHECK-INST: madd %d14, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0xef]
madd %d14, %d15, %d1, %d0

# CHECK-INST: madd %d14, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0xef]
madd %d14, %d15, %d1, %d1

# CHECK-INST: madd %d14, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0xef]
madd %d14, %d15, %d1, %d14

# CHECK-INST: madd %d14, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0xef]
madd %d14, %d15, %d1, %d15

# CHECK-INST: madd %d14, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0xef]
madd %d14, %d15, %d14, %d0

# CHECK-INST: madd %d14, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0xef]
madd %d14, %d15, %d14, %d1

# CHECK-INST: madd %d14, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0xef]
madd %d14, %d15, %d14, %d14

# CHECK-INST: madd %d14, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0xef]
madd %d14, %d15, %d14, %d15

# CHECK-INST: madd %d14, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0xef]
madd %d14, %d15, %d15, %d0

# CHECK-INST: madd %d14, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0xef]
madd %d14, %d15, %d15, %d1

# CHECK-INST: madd %d14, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0xef]
madd %d14, %d15, %d15, %d14

# CHECK-INST: madd %d14, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0xef]
madd %d14, %d15, %d15, %d15

# CHECK-INST: madd %d15, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0xf0]
madd %d15, %d0, %d0, %d0

# CHECK-INST: madd %d15, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0xf0]
madd %d15, %d0, %d0, %d1

# CHECK-INST: madd %d15, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0xf0]
madd %d15, %d0, %d0, %d14

# CHECK-INST: madd %d15, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0xf0]
madd %d15, %d0, %d0, %d15

# CHECK-INST: madd %d15, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0xf0]
madd %d15, %d0, %d1, %d0

# CHECK-INST: madd %d15, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0xf0]
madd %d15, %d0, %d1, %d1

# CHECK-INST: madd %d15, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0xf0]
madd %d15, %d0, %d1, %d14

# CHECK-INST: madd %d15, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0xf0]
madd %d15, %d0, %d1, %d15

# CHECK-INST: madd %d15, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0xf0]
madd %d15, %d0, %d14, %d0

# CHECK-INST: madd %d15, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0xf0]
madd %d15, %d0, %d14, %d1

# CHECK-INST: madd %d15, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0xf0]
madd %d15, %d0, %d14, %d14

# CHECK-INST: madd %d15, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0xf0]
madd %d15, %d0, %d14, %d15

# CHECK-INST: madd %d15, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0xf0]
madd %d15, %d0, %d15, %d0

# CHECK-INST: madd %d15, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0xf0]
madd %d15, %d0, %d15, %d1

# CHECK-INST: madd %d15, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0xf0]
madd %d15, %d0, %d15, %d14

# CHECK-INST: madd %d15, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0xf0]
madd %d15, %d0, %d15, %d15

# CHECK-INST: madd %d15, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0xf1]
madd %d15, %d1, %d0, %d0

# CHECK-INST: madd %d15, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0xf1]
madd %d15, %d1, %d0, %d1

# CHECK-INST: madd %d15, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0xf1]
madd %d15, %d1, %d0, %d14

# CHECK-INST: madd %d15, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0xf1]
madd %d15, %d1, %d0, %d15

# CHECK-INST: madd %d15, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0xf1]
madd %d15, %d1, %d1, %d0

# CHECK-INST: madd %d15, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0xf1]
madd %d15, %d1, %d1, %d1

# CHECK-INST: madd %d15, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0xf1]
madd %d15, %d1, %d1, %d14

# CHECK-INST: madd %d15, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0xf1]
madd %d15, %d1, %d1, %d15

# CHECK-INST: madd %d15, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0xf1]
madd %d15, %d1, %d14, %d0

# CHECK-INST: madd %d15, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0xf1]
madd %d15, %d1, %d14, %d1

# CHECK-INST: madd %d15, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0xf1]
madd %d15, %d1, %d14, %d14

# CHECK-INST: madd %d15, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0xf1]
madd %d15, %d1, %d14, %d15

# CHECK-INST: madd %d15, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0xf1]
madd %d15, %d1, %d15, %d0

# CHECK-INST: madd %d15, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0xf1]
madd %d15, %d1, %d15, %d1

# CHECK-INST: madd %d15, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0xf1]
madd %d15, %d1, %d15, %d14

# CHECK-INST: madd %d15, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0xf1]
madd %d15, %d1, %d15, %d15

# CHECK-INST: madd %d15, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0xfe]
madd %d15, %d14, %d0, %d0

# CHECK-INST: madd %d15, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0xfe]
madd %d15, %d14, %d0, %d1

# CHECK-INST: madd %d15, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0xfe]
madd %d15, %d14, %d0, %d14

# CHECK-INST: madd %d15, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0xfe]
madd %d15, %d14, %d0, %d15

# CHECK-INST: madd %d15, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0xfe]
madd %d15, %d14, %d1, %d0

# CHECK-INST: madd %d15, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0xfe]
madd %d15, %d14, %d1, %d1

# CHECK-INST: madd %d15, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0xfe]
madd %d15, %d14, %d1, %d14

# CHECK-INST: madd %d15, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0xfe]
madd %d15, %d14, %d1, %d15

# CHECK-INST: madd %d15, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0xfe]
madd %d15, %d14, %d14, %d0

# CHECK-INST: madd %d15, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0xfe]
madd %d15, %d14, %d14, %d1

# CHECK-INST: madd %d15, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0xfe]
madd %d15, %d14, %d14, %d14

# CHECK-INST: madd %d15, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0xfe]
madd %d15, %d14, %d14, %d15

# CHECK-INST: madd %d15, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0xfe]
madd %d15, %d14, %d15, %d0

# CHECK-INST: madd %d15, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0xfe]
madd %d15, %d14, %d15, %d1

# CHECK-INST: madd %d15, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0xfe]
madd %d15, %d14, %d15, %d14

# CHECK-INST: madd %d15, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0xfe]
madd %d15, %d14, %d15, %d15

# CHECK-INST: madd %d15, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x0a,0xff]
madd %d15, %d15, %d0, %d0

# CHECK-INST: madd %d15, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x0a,0xff]
madd %d15, %d15, %d0, %d1

# CHECK-INST: madd %d15, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x0a,0xff]
madd %d15, %d15, %d0, %d14

# CHECK-INST: madd %d15, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x0a,0xff]
madd %d15, %d15, %d0, %d15

# CHECK-INST: madd %d15, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x0a,0xff]
madd %d15, %d15, %d1, %d0

# CHECK-INST: madd %d15, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x0a,0xff]
madd %d15, %d15, %d1, %d1

# CHECK-INST: madd %d15, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x0a,0xff]
madd %d15, %d15, %d1, %d14

# CHECK-INST: madd %d15, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x0a,0xff]
madd %d15, %d15, %d1, %d15

# CHECK-INST: madd %d15, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x0a,0xff]
madd %d15, %d15, %d14, %d0

# CHECK-INST: madd %d15, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x0a,0xff]
madd %d15, %d15, %d14, %d1

# CHECK-INST: madd %d15, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x0a,0xff]
madd %d15, %d15, %d14, %d14

# CHECK-INST: madd %d15, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x0a,0xff]
madd %d15, %d15, %d14, %d15

# CHECK-INST: madd %d15, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x0a,0xff]
madd %d15, %d15, %d15, %d0

# CHECK-INST: madd %d15, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x0a,0xff]
madd %d15, %d15, %d15, %d1

# CHECK-INST: madd %d15, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x0a,0xff]
madd %d15, %d15, %d15, %d14

# CHECK-INST: madd %d15, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x0a,0xff]
madd %d15, %d15, %d15, %d15

# CHECK-INST: madd %d0, %d0, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0x00]
madd %d0, %d0, %d0, -256

# CHECK-INST: madd %d0, %d0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0x00]
madd %d0, %d0, %d0, -129

# CHECK-INST: madd %d0, %d0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0x00]
madd %d0, %d0, %d0, -1

# CHECK-INST: madd %d0, %d0, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0x00]
madd %d0, %d0, %d0, 0

# CHECK-INST: madd %d0, %d0, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0x00]
madd %d0, %d0, %d0, 1

# CHECK-INST: madd %d0, %d0, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0x00]
madd %d0, %d0, %d0, 128

# CHECK-INST: madd %d0, %d0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0x00]
madd %d0, %d0, %d0, 255

# CHECK-INST: madd %d0, %d0, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0x00]
madd %d0, %d0, %d1, -256

# CHECK-INST: madd %d0, %d0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0x00]
madd %d0, %d0, %d1, -129

# CHECK-INST: madd %d0, %d0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0x00]
madd %d0, %d0, %d1, -1

# CHECK-INST: madd %d0, %d0, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0x00]
madd %d0, %d0, %d1, 0

# CHECK-INST: madd %d0, %d0, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0x00]
madd %d0, %d0, %d1, 1

# CHECK-INST: madd %d0, %d0, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0x00]
madd %d0, %d0, %d1, 128

# CHECK-INST: madd %d0, %d0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0x00]
madd %d0, %d0, %d1, 255

# CHECK-INST: madd %d0, %d0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0x00]
madd %d0, %d0, %d14, -256

# CHECK-INST: madd %d0, %d0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0x00]
madd %d0, %d0, %d14, -129

# CHECK-INST: madd %d0, %d0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0x00]
madd %d0, %d0, %d14, -1

# CHECK-INST: madd %d0, %d0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0x00]
madd %d0, %d0, %d14, 0

# CHECK-INST: madd %d0, %d0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0x00]
madd %d0, %d0, %d14, 1

# CHECK-INST: madd %d0, %d0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0x00]
madd %d0, %d0, %d14, 128

# CHECK-INST: madd %d0, %d0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0x00]
madd %d0, %d0, %d14, 255

# CHECK-INST: madd %d0, %d0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0x00]
madd %d0, %d0, %d15, -256

# CHECK-INST: madd %d0, %d0, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0x00]
madd %d0, %d0, %d15, -129

# CHECK-INST: madd %d0, %d0, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0x00]
madd %d0, %d0, %d15, -1

# CHECK-INST: madd %d0, %d0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0x00]
madd %d0, %d0, %d15, 0

# CHECK-INST: madd %d0, %d0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0x00]
madd %d0, %d0, %d15, 1

# CHECK-INST: madd %d0, %d0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0x00]
madd %d0, %d0, %d15, 128

# CHECK-INST: madd %d0, %d0, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0x00]
madd %d0, %d0, %d15, 255

# CHECK-INST: madd %d0, %d1, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0x01]
madd %d0, %d1, %d0, -256

# CHECK-INST: madd %d0, %d1, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0x01]
madd %d0, %d1, %d0, -129

# CHECK-INST: madd %d0, %d1, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0x01]
madd %d0, %d1, %d0, -1

# CHECK-INST: madd %d0, %d1, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0x01]
madd %d0, %d1, %d0, 0

# CHECK-INST: madd %d0, %d1, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0x01]
madd %d0, %d1, %d0, 1

# CHECK-INST: madd %d0, %d1, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0x01]
madd %d0, %d1, %d0, 128

# CHECK-INST: madd %d0, %d1, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0x01]
madd %d0, %d1, %d0, 255

# CHECK-INST: madd %d0, %d1, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0x01]
madd %d0, %d1, %d1, -256

# CHECK-INST: madd %d0, %d1, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0x01]
madd %d0, %d1, %d1, -129

# CHECK-INST: madd %d0, %d1, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0x01]
madd %d0, %d1, %d1, -1

# CHECK-INST: madd %d0, %d1, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0x01]
madd %d0, %d1, %d1, 0

# CHECK-INST: madd %d0, %d1, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0x01]
madd %d0, %d1, %d1, 1

# CHECK-INST: madd %d0, %d1, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0x01]
madd %d0, %d1, %d1, 128

# CHECK-INST: madd %d0, %d1, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0x01]
madd %d0, %d1, %d1, 255

# CHECK-INST: madd %d0, %d1, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0x01]
madd %d0, %d1, %d14, -256

# CHECK-INST: madd %d0, %d1, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0x01]
madd %d0, %d1, %d14, -129

# CHECK-INST: madd %d0, %d1, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0x01]
madd %d0, %d1, %d14, -1

# CHECK-INST: madd %d0, %d1, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0x01]
madd %d0, %d1, %d14, 0

# CHECK-INST: madd %d0, %d1, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0x01]
madd %d0, %d1, %d14, 1

# CHECK-INST: madd %d0, %d1, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0x01]
madd %d0, %d1, %d14, 128

# CHECK-INST: madd %d0, %d1, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0x01]
madd %d0, %d1, %d14, 255

# CHECK-INST: madd %d0, %d1, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0x01]
madd %d0, %d1, %d15, -256

# CHECK-INST: madd %d0, %d1, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0x01]
madd %d0, %d1, %d15, -129

# CHECK-INST: madd %d0, %d1, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0x01]
madd %d0, %d1, %d15, -1

# CHECK-INST: madd %d0, %d1, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0x01]
madd %d0, %d1, %d15, 0

# CHECK-INST: madd %d0, %d1, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0x01]
madd %d0, %d1, %d15, 1

# CHECK-INST: madd %d0, %d1, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0x01]
madd %d0, %d1, %d15, 128

# CHECK-INST: madd %d0, %d1, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0x01]
madd %d0, %d1, %d15, 255

# CHECK-INST: madd %d0, %d14, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0x0e]
madd %d0, %d14, %d0, -256

# CHECK-INST: madd %d0, %d14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0x0e]
madd %d0, %d14, %d0, -129

# CHECK-INST: madd %d0, %d14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0x0e]
madd %d0, %d14, %d0, -1

# CHECK-INST: madd %d0, %d14, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0x0e]
madd %d0, %d14, %d0, 0

# CHECK-INST: madd %d0, %d14, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0x0e]
madd %d0, %d14, %d0, 1

# CHECK-INST: madd %d0, %d14, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0x0e]
madd %d0, %d14, %d0, 128

# CHECK-INST: madd %d0, %d14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0x0e]
madd %d0, %d14, %d0, 255

# CHECK-INST: madd %d0, %d14, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0x0e]
madd %d0, %d14, %d1, -256

# CHECK-INST: madd %d0, %d14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0x0e]
madd %d0, %d14, %d1, -129

# CHECK-INST: madd %d0, %d14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0x0e]
madd %d0, %d14, %d1, -1

# CHECK-INST: madd %d0, %d14, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0x0e]
madd %d0, %d14, %d1, 0

# CHECK-INST: madd %d0, %d14, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0x0e]
madd %d0, %d14, %d1, 1

# CHECK-INST: madd %d0, %d14, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0x0e]
madd %d0, %d14, %d1, 128

# CHECK-INST: madd %d0, %d14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0x0e]
madd %d0, %d14, %d1, 255

# CHECK-INST: madd %d0, %d14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0x0e]
madd %d0, %d14, %d14, -256

# CHECK-INST: madd %d0, %d14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0x0e]
madd %d0, %d14, %d14, -129

# CHECK-INST: madd %d0, %d14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0x0e]
madd %d0, %d14, %d14, -1

# CHECK-INST: madd %d0, %d14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0x0e]
madd %d0, %d14, %d14, 0

# CHECK-INST: madd %d0, %d14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0x0e]
madd %d0, %d14, %d14, 1

# CHECK-INST: madd %d0, %d14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0x0e]
madd %d0, %d14, %d14, 128

# CHECK-INST: madd %d0, %d14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0x0e]
madd %d0, %d14, %d14, 255

# CHECK-INST: madd %d0, %d14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0x0e]
madd %d0, %d14, %d15, -256

# CHECK-INST: madd %d0, %d14, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0x0e]
madd %d0, %d14, %d15, -129

# CHECK-INST: madd %d0, %d14, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0x0e]
madd %d0, %d14, %d15, -1

# CHECK-INST: madd %d0, %d14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0x0e]
madd %d0, %d14, %d15, 0

# CHECK-INST: madd %d0, %d14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0x0e]
madd %d0, %d14, %d15, 1

# CHECK-INST: madd %d0, %d14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0x0e]
madd %d0, %d14, %d15, 128

# CHECK-INST: madd %d0, %d14, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0x0e]
madd %d0, %d14, %d15, 255

# CHECK-INST: madd %d0, %d15, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0x0f]
madd %d0, %d15, %d0, -256

# CHECK-INST: madd %d0, %d15, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0x0f]
madd %d0, %d15, %d0, -129

# CHECK-INST: madd %d0, %d15, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0x0f]
madd %d0, %d15, %d0, -1

# CHECK-INST: madd %d0, %d15, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0x0f]
madd %d0, %d15, %d0, 0

# CHECK-INST: madd %d0, %d15, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0x0f]
madd %d0, %d15, %d0, 1

# CHECK-INST: madd %d0, %d15, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0x0f]
madd %d0, %d15, %d0, 128

# CHECK-INST: madd %d0, %d15, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0x0f]
madd %d0, %d15, %d0, 255

# CHECK-INST: madd %d0, %d15, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0x0f]
madd %d0, %d15, %d1, -256

# CHECK-INST: madd %d0, %d15, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0x0f]
madd %d0, %d15, %d1, -129

# CHECK-INST: madd %d0, %d15, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0x0f]
madd %d0, %d15, %d1, -1

# CHECK-INST: madd %d0, %d15, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0x0f]
madd %d0, %d15, %d1, 0

# CHECK-INST: madd %d0, %d15, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0x0f]
madd %d0, %d15, %d1, 1

# CHECK-INST: madd %d0, %d15, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0x0f]
madd %d0, %d15, %d1, 128

# CHECK-INST: madd %d0, %d15, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0x0f]
madd %d0, %d15, %d1, 255

# CHECK-INST: madd %d0, %d15, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0x0f]
madd %d0, %d15, %d14, -256

# CHECK-INST: madd %d0, %d15, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0x0f]
madd %d0, %d15, %d14, -129

# CHECK-INST: madd %d0, %d15, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0x0f]
madd %d0, %d15, %d14, -1

# CHECK-INST: madd %d0, %d15, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0x0f]
madd %d0, %d15, %d14, 0

# CHECK-INST: madd %d0, %d15, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0x0f]
madd %d0, %d15, %d14, 1

# CHECK-INST: madd %d0, %d15, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0x0f]
madd %d0, %d15, %d14, 128

# CHECK-INST: madd %d0, %d15, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0x0f]
madd %d0, %d15, %d14, 255

# CHECK-INST: madd %d0, %d15, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0x0f]
madd %d0, %d15, %d15, -256

# CHECK-INST: madd %d0, %d15, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0x0f]
madd %d0, %d15, %d15, -129

# CHECK-INST: madd %d0, %d15, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0x0f]
madd %d0, %d15, %d15, -1

# CHECK-INST: madd %d0, %d15, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0x0f]
madd %d0, %d15, %d15, 0

# CHECK-INST: madd %d0, %d15, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0x0f]
madd %d0, %d15, %d15, 1

# CHECK-INST: madd %d0, %d15, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0x0f]
madd %d0, %d15, %d15, 128

# CHECK-INST: madd %d0, %d15, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0x0f]
madd %d0, %d15, %d15, 255

# CHECK-INST: madd %d1, %d0, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0x10]
madd %d1, %d0, %d0, -256

# CHECK-INST: madd %d1, %d0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0x10]
madd %d1, %d0, %d0, -129

# CHECK-INST: madd %d1, %d0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0x10]
madd %d1, %d0, %d0, -1

# CHECK-INST: madd %d1, %d0, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0x10]
madd %d1, %d0, %d0, 0

# CHECK-INST: madd %d1, %d0, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0x10]
madd %d1, %d0, %d0, 1

# CHECK-INST: madd %d1, %d0, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0x10]
madd %d1, %d0, %d0, 128

# CHECK-INST: madd %d1, %d0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0x10]
madd %d1, %d0, %d0, 255

# CHECK-INST: madd %d1, %d0, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0x10]
madd %d1, %d0, %d1, -256

# CHECK-INST: madd %d1, %d0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0x10]
madd %d1, %d0, %d1, -129

# CHECK-INST: madd %d1, %d0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0x10]
madd %d1, %d0, %d1, -1

# CHECK-INST: madd %d1, %d0, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0x10]
madd %d1, %d0, %d1, 0

# CHECK-INST: madd %d1, %d0, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0x10]
madd %d1, %d0, %d1, 1

# CHECK-INST: madd %d1, %d0, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0x10]
madd %d1, %d0, %d1, 128

# CHECK-INST: madd %d1, %d0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0x10]
madd %d1, %d0, %d1, 255

# CHECK-INST: madd %d1, %d0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0x10]
madd %d1, %d0, %d14, -256

# CHECK-INST: madd %d1, %d0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0x10]
madd %d1, %d0, %d14, -129

# CHECK-INST: madd %d1, %d0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0x10]
madd %d1, %d0, %d14, -1

# CHECK-INST: madd %d1, %d0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0x10]
madd %d1, %d0, %d14, 0

# CHECK-INST: madd %d1, %d0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0x10]
madd %d1, %d0, %d14, 1

# CHECK-INST: madd %d1, %d0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0x10]
madd %d1, %d0, %d14, 128

# CHECK-INST: madd %d1, %d0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0x10]
madd %d1, %d0, %d14, 255

# CHECK-INST: madd %d1, %d0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0x10]
madd %d1, %d0, %d15, -256

# CHECK-INST: madd %d1, %d0, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0x10]
madd %d1, %d0, %d15, -129

# CHECK-INST: madd %d1, %d0, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0x10]
madd %d1, %d0, %d15, -1

# CHECK-INST: madd %d1, %d0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0x10]
madd %d1, %d0, %d15, 0

# CHECK-INST: madd %d1, %d0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0x10]
madd %d1, %d0, %d15, 1

# CHECK-INST: madd %d1, %d0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0x10]
madd %d1, %d0, %d15, 128

# CHECK-INST: madd %d1, %d0, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0x10]
madd %d1, %d0, %d15, 255

# CHECK-INST: madd %d1, %d1, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0x11]
madd %d1, %d1, %d0, -256

# CHECK-INST: madd %d1, %d1, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0x11]
madd %d1, %d1, %d0, -129

# CHECK-INST: madd %d1, %d1, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0x11]
madd %d1, %d1, %d0, -1

# CHECK-INST: madd %d1, %d1, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0x11]
madd %d1, %d1, %d0, 0

# CHECK-INST: madd %d1, %d1, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0x11]
madd %d1, %d1, %d0, 1

# CHECK-INST: madd %d1, %d1, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0x11]
madd %d1, %d1, %d0, 128

# CHECK-INST: madd %d1, %d1, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0x11]
madd %d1, %d1, %d0, 255

# CHECK-INST: madd %d1, %d1, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0x11]
madd %d1, %d1, %d1, -256

# CHECK-INST: madd %d1, %d1, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0x11]
madd %d1, %d1, %d1, -129

# CHECK-INST: madd %d1, %d1, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0x11]
madd %d1, %d1, %d1, -1

# CHECK-INST: madd %d1, %d1, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0x11]
madd %d1, %d1, %d1, 0

# CHECK-INST: madd %d1, %d1, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0x11]
madd %d1, %d1, %d1, 1

# CHECK-INST: madd %d1, %d1, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0x11]
madd %d1, %d1, %d1, 128

# CHECK-INST: madd %d1, %d1, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0x11]
madd %d1, %d1, %d1, 255

# CHECK-INST: madd %d1, %d1, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0x11]
madd %d1, %d1, %d14, -256

# CHECK-INST: madd %d1, %d1, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0x11]
madd %d1, %d1, %d14, -129

# CHECK-INST: madd %d1, %d1, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0x11]
madd %d1, %d1, %d14, -1

# CHECK-INST: madd %d1, %d1, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0x11]
madd %d1, %d1, %d14, 0

# CHECK-INST: madd %d1, %d1, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0x11]
madd %d1, %d1, %d14, 1

# CHECK-INST: madd %d1, %d1, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0x11]
madd %d1, %d1, %d14, 128

# CHECK-INST: madd %d1, %d1, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0x11]
madd %d1, %d1, %d14, 255

# CHECK-INST: madd %d1, %d1, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0x11]
madd %d1, %d1, %d15, -256

# CHECK-INST: madd %d1, %d1, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0x11]
madd %d1, %d1, %d15, -129

# CHECK-INST: madd %d1, %d1, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0x11]
madd %d1, %d1, %d15, -1

# CHECK-INST: madd %d1, %d1, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0x11]
madd %d1, %d1, %d15, 0

# CHECK-INST: madd %d1, %d1, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0x11]
madd %d1, %d1, %d15, 1

# CHECK-INST: madd %d1, %d1, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0x11]
madd %d1, %d1, %d15, 128

# CHECK-INST: madd %d1, %d1, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0x11]
madd %d1, %d1, %d15, 255

# CHECK-INST: madd %d1, %d14, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0x1e]
madd %d1, %d14, %d0, -256

# CHECK-INST: madd %d1, %d14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0x1e]
madd %d1, %d14, %d0, -129

# CHECK-INST: madd %d1, %d14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0x1e]
madd %d1, %d14, %d0, -1

# CHECK-INST: madd %d1, %d14, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0x1e]
madd %d1, %d14, %d0, 0

# CHECK-INST: madd %d1, %d14, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0x1e]
madd %d1, %d14, %d0, 1

# CHECK-INST: madd %d1, %d14, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0x1e]
madd %d1, %d14, %d0, 128

# CHECK-INST: madd %d1, %d14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0x1e]
madd %d1, %d14, %d0, 255

# CHECK-INST: madd %d1, %d14, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0x1e]
madd %d1, %d14, %d1, -256

# CHECK-INST: madd %d1, %d14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0x1e]
madd %d1, %d14, %d1, -129

# CHECK-INST: madd %d1, %d14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0x1e]
madd %d1, %d14, %d1, -1

# CHECK-INST: madd %d1, %d14, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0x1e]
madd %d1, %d14, %d1, 0

# CHECK-INST: madd %d1, %d14, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0x1e]
madd %d1, %d14, %d1, 1

# CHECK-INST: madd %d1, %d14, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0x1e]
madd %d1, %d14, %d1, 128

# CHECK-INST: madd %d1, %d14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0x1e]
madd %d1, %d14, %d1, 255

# CHECK-INST: madd %d1, %d14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0x1e]
madd %d1, %d14, %d14, -256

# CHECK-INST: madd %d1, %d14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0x1e]
madd %d1, %d14, %d14, -129

# CHECK-INST: madd %d1, %d14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0x1e]
madd %d1, %d14, %d14, -1

# CHECK-INST: madd %d1, %d14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0x1e]
madd %d1, %d14, %d14, 0

# CHECK-INST: madd %d1, %d14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0x1e]
madd %d1, %d14, %d14, 1

# CHECK-INST: madd %d1, %d14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0x1e]
madd %d1, %d14, %d14, 128

# CHECK-INST: madd %d1, %d14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0x1e]
madd %d1, %d14, %d14, 255

# CHECK-INST: madd %d1, %d14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0x1e]
madd %d1, %d14, %d15, -256

# CHECK-INST: madd %d1, %d14, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0x1e]
madd %d1, %d14, %d15, -129

# CHECK-INST: madd %d1, %d14, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0x1e]
madd %d1, %d14, %d15, -1

# CHECK-INST: madd %d1, %d14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0x1e]
madd %d1, %d14, %d15, 0

# CHECK-INST: madd %d1, %d14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0x1e]
madd %d1, %d14, %d15, 1

# CHECK-INST: madd %d1, %d14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0x1e]
madd %d1, %d14, %d15, 128

# CHECK-INST: madd %d1, %d14, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0x1e]
madd %d1, %d14, %d15, 255

# CHECK-INST: madd %d1, %d15, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0x1f]
madd %d1, %d15, %d0, -256

# CHECK-INST: madd %d1, %d15, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0x1f]
madd %d1, %d15, %d0, -129

# CHECK-INST: madd %d1, %d15, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0x1f]
madd %d1, %d15, %d0, -1

# CHECK-INST: madd %d1, %d15, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0x1f]
madd %d1, %d15, %d0, 0

# CHECK-INST: madd %d1, %d15, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0x1f]
madd %d1, %d15, %d0, 1

# CHECK-INST: madd %d1, %d15, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0x1f]
madd %d1, %d15, %d0, 128

# CHECK-INST: madd %d1, %d15, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0x1f]
madd %d1, %d15, %d0, 255

# CHECK-INST: madd %d1, %d15, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0x1f]
madd %d1, %d15, %d1, -256

# CHECK-INST: madd %d1, %d15, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0x1f]
madd %d1, %d15, %d1, -129

# CHECK-INST: madd %d1, %d15, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0x1f]
madd %d1, %d15, %d1, -1

# CHECK-INST: madd %d1, %d15, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0x1f]
madd %d1, %d15, %d1, 0

# CHECK-INST: madd %d1, %d15, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0x1f]
madd %d1, %d15, %d1, 1

# CHECK-INST: madd %d1, %d15, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0x1f]
madd %d1, %d15, %d1, 128

# CHECK-INST: madd %d1, %d15, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0x1f]
madd %d1, %d15, %d1, 255

# CHECK-INST: madd %d1, %d15, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0x1f]
madd %d1, %d15, %d14, -256

# CHECK-INST: madd %d1, %d15, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0x1f]
madd %d1, %d15, %d14, -129

# CHECK-INST: madd %d1, %d15, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0x1f]
madd %d1, %d15, %d14, -1

# CHECK-INST: madd %d1, %d15, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0x1f]
madd %d1, %d15, %d14, 0

# CHECK-INST: madd %d1, %d15, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0x1f]
madd %d1, %d15, %d14, 1

# CHECK-INST: madd %d1, %d15, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0x1f]
madd %d1, %d15, %d14, 128

# CHECK-INST: madd %d1, %d15, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0x1f]
madd %d1, %d15, %d14, 255

# CHECK-INST: madd %d1, %d15, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0x1f]
madd %d1, %d15, %d15, -256

# CHECK-INST: madd %d1, %d15, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0x1f]
madd %d1, %d15, %d15, -129

# CHECK-INST: madd %d1, %d15, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0x1f]
madd %d1, %d15, %d15, -1

# CHECK-INST: madd %d1, %d15, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0x1f]
madd %d1, %d15, %d15, 0

# CHECK-INST: madd %d1, %d15, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0x1f]
madd %d1, %d15, %d15, 1

# CHECK-INST: madd %d1, %d15, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0x1f]
madd %d1, %d15, %d15, 128

# CHECK-INST: madd %d1, %d15, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0x1f]
madd %d1, %d15, %d15, 255

# CHECK-INST: madd %d14, %d0, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0xe0]
madd %d14, %d0, %d0, -256

# CHECK-INST: madd %d14, %d0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0xe0]
madd %d14, %d0, %d0, -129

# CHECK-INST: madd %d14, %d0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0xe0]
madd %d14, %d0, %d0, -1

# CHECK-INST: madd %d14, %d0, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0xe0]
madd %d14, %d0, %d0, 0

# CHECK-INST: madd %d14, %d0, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0xe0]
madd %d14, %d0, %d0, 1

# CHECK-INST: madd %d14, %d0, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0xe0]
madd %d14, %d0, %d0, 128

# CHECK-INST: madd %d14, %d0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0xe0]
madd %d14, %d0, %d0, 255

# CHECK-INST: madd %d14, %d0, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0xe0]
madd %d14, %d0, %d1, -256

# CHECK-INST: madd %d14, %d0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0xe0]
madd %d14, %d0, %d1, -129

# CHECK-INST: madd %d14, %d0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0xe0]
madd %d14, %d0, %d1, -1

# CHECK-INST: madd %d14, %d0, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0xe0]
madd %d14, %d0, %d1, 0

# CHECK-INST: madd %d14, %d0, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0xe0]
madd %d14, %d0, %d1, 1

# CHECK-INST: madd %d14, %d0, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0xe0]
madd %d14, %d0, %d1, 128

# CHECK-INST: madd %d14, %d0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0xe0]
madd %d14, %d0, %d1, 255

# CHECK-INST: madd %d14, %d0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0xe0]
madd %d14, %d0, %d14, -256

# CHECK-INST: madd %d14, %d0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0xe0]
madd %d14, %d0, %d14, -129

# CHECK-INST: madd %d14, %d0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0xe0]
madd %d14, %d0, %d14, -1

# CHECK-INST: madd %d14, %d0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0xe0]
madd %d14, %d0, %d14, 0

# CHECK-INST: madd %d14, %d0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0xe0]
madd %d14, %d0, %d14, 1

# CHECK-INST: madd %d14, %d0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0xe0]
madd %d14, %d0, %d14, 128

# CHECK-INST: madd %d14, %d0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0xe0]
madd %d14, %d0, %d14, 255

# CHECK-INST: madd %d14, %d0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0xe0]
madd %d14, %d0, %d15, -256

# CHECK-INST: madd %d14, %d0, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0xe0]
madd %d14, %d0, %d15, -129

# CHECK-INST: madd %d14, %d0, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0xe0]
madd %d14, %d0, %d15, -1

# CHECK-INST: madd %d14, %d0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0xe0]
madd %d14, %d0, %d15, 0

# CHECK-INST: madd %d14, %d0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0xe0]
madd %d14, %d0, %d15, 1

# CHECK-INST: madd %d14, %d0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0xe0]
madd %d14, %d0, %d15, 128

# CHECK-INST: madd %d14, %d0, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0xe0]
madd %d14, %d0, %d15, 255

# CHECK-INST: madd %d14, %d1, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0xe1]
madd %d14, %d1, %d0, -256

# CHECK-INST: madd %d14, %d1, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0xe1]
madd %d14, %d1, %d0, -129

# CHECK-INST: madd %d14, %d1, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0xe1]
madd %d14, %d1, %d0, -1

# CHECK-INST: madd %d14, %d1, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0xe1]
madd %d14, %d1, %d0, 0

# CHECK-INST: madd %d14, %d1, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0xe1]
madd %d14, %d1, %d0, 1

# CHECK-INST: madd %d14, %d1, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0xe1]
madd %d14, %d1, %d0, 128

# CHECK-INST: madd %d14, %d1, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0xe1]
madd %d14, %d1, %d0, 255

# CHECK-INST: madd %d14, %d1, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0xe1]
madd %d14, %d1, %d1, -256

# CHECK-INST: madd %d14, %d1, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0xe1]
madd %d14, %d1, %d1, -129

# CHECK-INST: madd %d14, %d1, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0xe1]
madd %d14, %d1, %d1, -1

# CHECK-INST: madd %d14, %d1, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0xe1]
madd %d14, %d1, %d1, 0

# CHECK-INST: madd %d14, %d1, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0xe1]
madd %d14, %d1, %d1, 1

# CHECK-INST: madd %d14, %d1, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0xe1]
madd %d14, %d1, %d1, 128

# CHECK-INST: madd %d14, %d1, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0xe1]
madd %d14, %d1, %d1, 255

# CHECK-INST: madd %d14, %d1, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0xe1]
madd %d14, %d1, %d14, -256

# CHECK-INST: madd %d14, %d1, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0xe1]
madd %d14, %d1, %d14, -129

# CHECK-INST: madd %d14, %d1, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0xe1]
madd %d14, %d1, %d14, -1

# CHECK-INST: madd %d14, %d1, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0xe1]
madd %d14, %d1, %d14, 0

# CHECK-INST: madd %d14, %d1, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0xe1]
madd %d14, %d1, %d14, 1

# CHECK-INST: madd %d14, %d1, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0xe1]
madd %d14, %d1, %d14, 128

# CHECK-INST: madd %d14, %d1, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0xe1]
madd %d14, %d1, %d14, 255

# CHECK-INST: madd %d14, %d1, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0xe1]
madd %d14, %d1, %d15, -256

# CHECK-INST: madd %d14, %d1, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0xe1]
madd %d14, %d1, %d15, -129

# CHECK-INST: madd %d14, %d1, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0xe1]
madd %d14, %d1, %d15, -1

# CHECK-INST: madd %d14, %d1, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0xe1]
madd %d14, %d1, %d15, 0

# CHECK-INST: madd %d14, %d1, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0xe1]
madd %d14, %d1, %d15, 1

# CHECK-INST: madd %d14, %d1, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0xe1]
madd %d14, %d1, %d15, 128

# CHECK-INST: madd %d14, %d1, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0xe1]
madd %d14, %d1, %d15, 255

# CHECK-INST: madd %d14, %d14, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0xee]
madd %d14, %d14, %d0, -256

# CHECK-INST: madd %d14, %d14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0xee]
madd %d14, %d14, %d0, -129

# CHECK-INST: madd %d14, %d14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0xee]
madd %d14, %d14, %d0, -1

# CHECK-INST: madd %d14, %d14, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0xee]
madd %d14, %d14, %d0, 0

# CHECK-INST: madd %d14, %d14, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0xee]
madd %d14, %d14, %d0, 1

# CHECK-INST: madd %d14, %d14, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0xee]
madd %d14, %d14, %d0, 128

# CHECK-INST: madd %d14, %d14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0xee]
madd %d14, %d14, %d0, 255

# CHECK-INST: madd %d14, %d14, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0xee]
madd %d14, %d14, %d1, -256

# CHECK-INST: madd %d14, %d14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0xee]
madd %d14, %d14, %d1, -129

# CHECK-INST: madd %d14, %d14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0xee]
madd %d14, %d14, %d1, -1

# CHECK-INST: madd %d14, %d14, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0xee]
madd %d14, %d14, %d1, 0

# CHECK-INST: madd %d14, %d14, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0xee]
madd %d14, %d14, %d1, 1

# CHECK-INST: madd %d14, %d14, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0xee]
madd %d14, %d14, %d1, 128

# CHECK-INST: madd %d14, %d14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0xee]
madd %d14, %d14, %d1, 255

# CHECK-INST: madd %d14, %d14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0xee]
madd %d14, %d14, %d14, -256

# CHECK-INST: madd %d14, %d14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0xee]
madd %d14, %d14, %d14, -129

# CHECK-INST: madd %d14, %d14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0xee]
madd %d14, %d14, %d14, -1

# CHECK-INST: madd %d14, %d14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0xee]
madd %d14, %d14, %d14, 0

# CHECK-INST: madd %d14, %d14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0xee]
madd %d14, %d14, %d14, 1

# CHECK-INST: madd %d14, %d14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0xee]
madd %d14, %d14, %d14, 128

# CHECK-INST: madd %d14, %d14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0xee]
madd %d14, %d14, %d14, 255

# CHECK-INST: madd %d14, %d14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0xee]
madd %d14, %d14, %d15, -256

# CHECK-INST: madd %d14, %d14, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0xee]
madd %d14, %d14, %d15, -129

# CHECK-INST: madd %d14, %d14, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0xee]
madd %d14, %d14, %d15, -1

# CHECK-INST: madd %d14, %d14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0xee]
madd %d14, %d14, %d15, 0

# CHECK-INST: madd %d14, %d14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0xee]
madd %d14, %d14, %d15, 1

# CHECK-INST: madd %d14, %d14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0xee]
madd %d14, %d14, %d15, 128

# CHECK-INST: madd %d14, %d14, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0xee]
madd %d14, %d14, %d15, 255

# CHECK-INST: madd %d14, %d15, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0xef]
madd %d14, %d15, %d0, -256

# CHECK-INST: madd %d14, %d15, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0xef]
madd %d14, %d15, %d0, -129

# CHECK-INST: madd %d14, %d15, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0xef]
madd %d14, %d15, %d0, -1

# CHECK-INST: madd %d14, %d15, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0xef]
madd %d14, %d15, %d0, 0

# CHECK-INST: madd %d14, %d15, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0xef]
madd %d14, %d15, %d0, 1

# CHECK-INST: madd %d14, %d15, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0xef]
madd %d14, %d15, %d0, 128

# CHECK-INST: madd %d14, %d15, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0xef]
madd %d14, %d15, %d0, 255

# CHECK-INST: madd %d14, %d15, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0xef]
madd %d14, %d15, %d1, -256

# CHECK-INST: madd %d14, %d15, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0xef]
madd %d14, %d15, %d1, -129

# CHECK-INST: madd %d14, %d15, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0xef]
madd %d14, %d15, %d1, -1

# CHECK-INST: madd %d14, %d15, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0xef]
madd %d14, %d15, %d1, 0

# CHECK-INST: madd %d14, %d15, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0xef]
madd %d14, %d15, %d1, 1

# CHECK-INST: madd %d14, %d15, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0xef]
madd %d14, %d15, %d1, 128

# CHECK-INST: madd %d14, %d15, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0xef]
madd %d14, %d15, %d1, 255

# CHECK-INST: madd %d14, %d15, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0xef]
madd %d14, %d15, %d14, -256

# CHECK-INST: madd %d14, %d15, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0xef]
madd %d14, %d15, %d14, -129

# CHECK-INST: madd %d14, %d15, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0xef]
madd %d14, %d15, %d14, -1

# CHECK-INST: madd %d14, %d15, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0xef]
madd %d14, %d15, %d14, 0

# CHECK-INST: madd %d14, %d15, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0xef]
madd %d14, %d15, %d14, 1

# CHECK-INST: madd %d14, %d15, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0xef]
madd %d14, %d15, %d14, 128

# CHECK-INST: madd %d14, %d15, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0xef]
madd %d14, %d15, %d14, 255

# CHECK-INST: madd %d14, %d15, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0xef]
madd %d14, %d15, %d15, -256

# CHECK-INST: madd %d14, %d15, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0xef]
madd %d14, %d15, %d15, -129

# CHECK-INST: madd %d14, %d15, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0xef]
madd %d14, %d15, %d15, -1

# CHECK-INST: madd %d14, %d15, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0xef]
madd %d14, %d15, %d15, 0

# CHECK-INST: madd %d14, %d15, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0xef]
madd %d14, %d15, %d15, 1

# CHECK-INST: madd %d14, %d15, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0xef]
madd %d14, %d15, %d15, 128

# CHECK-INST: madd %d14, %d15, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0xef]
madd %d14, %d15, %d15, 255

# CHECK-INST: madd %d15, %d0, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0xf0]
madd %d15, %d0, %d0, -256

# CHECK-INST: madd %d15, %d0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0xf0]
madd %d15, %d0, %d0, -129

# CHECK-INST: madd %d15, %d0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0xf0]
madd %d15, %d0, %d0, -1

# CHECK-INST: madd %d15, %d0, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0xf0]
madd %d15, %d0, %d0, 0

# CHECK-INST: madd %d15, %d0, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0xf0]
madd %d15, %d0, %d0, 1

# CHECK-INST: madd %d15, %d0, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0xf0]
madd %d15, %d0, %d0, 128

# CHECK-INST: madd %d15, %d0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0xf0]
madd %d15, %d0, %d0, 255

# CHECK-INST: madd %d15, %d0, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0xf0]
madd %d15, %d0, %d1, -256

# CHECK-INST: madd %d15, %d0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0xf0]
madd %d15, %d0, %d1, -129

# CHECK-INST: madd %d15, %d0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0xf0]
madd %d15, %d0, %d1, -1

# CHECK-INST: madd %d15, %d0, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0xf0]
madd %d15, %d0, %d1, 0

# CHECK-INST: madd %d15, %d0, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0xf0]
madd %d15, %d0, %d1, 1

# CHECK-INST: madd %d15, %d0, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0xf0]
madd %d15, %d0, %d1, 128

# CHECK-INST: madd %d15, %d0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0xf0]
madd %d15, %d0, %d1, 255

# CHECK-INST: madd %d15, %d0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0xf0]
madd %d15, %d0, %d14, -256

# CHECK-INST: madd %d15, %d0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0xf0]
madd %d15, %d0, %d14, -129

# CHECK-INST: madd %d15, %d0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0xf0]
madd %d15, %d0, %d14, -1

# CHECK-INST: madd %d15, %d0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0xf0]
madd %d15, %d0, %d14, 0

# CHECK-INST: madd %d15, %d0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0xf0]
madd %d15, %d0, %d14, 1

# CHECK-INST: madd %d15, %d0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0xf0]
madd %d15, %d0, %d14, 128

# CHECK-INST: madd %d15, %d0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0xf0]
madd %d15, %d0, %d14, 255

# CHECK-INST: madd %d15, %d0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0xf0]
madd %d15, %d0, %d15, -256

# CHECK-INST: madd %d15, %d0, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0xf0]
madd %d15, %d0, %d15, -129

# CHECK-INST: madd %d15, %d0, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0xf0]
madd %d15, %d0, %d15, -1

# CHECK-INST: madd %d15, %d0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0xf0]
madd %d15, %d0, %d15, 0

# CHECK-INST: madd %d15, %d0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0xf0]
madd %d15, %d0, %d15, 1

# CHECK-INST: madd %d15, %d0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0xf0]
madd %d15, %d0, %d15, 128

# CHECK-INST: madd %d15, %d0, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0xf0]
madd %d15, %d0, %d15, 255

# CHECK-INST: madd %d15, %d1, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0xf1]
madd %d15, %d1, %d0, -256

# CHECK-INST: madd %d15, %d1, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0xf1]
madd %d15, %d1, %d0, -129

# CHECK-INST: madd %d15, %d1, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0xf1]
madd %d15, %d1, %d0, -1

# CHECK-INST: madd %d15, %d1, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0xf1]
madd %d15, %d1, %d0, 0

# CHECK-INST: madd %d15, %d1, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0xf1]
madd %d15, %d1, %d0, 1

# CHECK-INST: madd %d15, %d1, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0xf1]
madd %d15, %d1, %d0, 128

# CHECK-INST: madd %d15, %d1, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0xf1]
madd %d15, %d1, %d0, 255

# CHECK-INST: madd %d15, %d1, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0xf1]
madd %d15, %d1, %d1, -256

# CHECK-INST: madd %d15, %d1, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0xf1]
madd %d15, %d1, %d1, -129

# CHECK-INST: madd %d15, %d1, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0xf1]
madd %d15, %d1, %d1, -1

# CHECK-INST: madd %d15, %d1, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0xf1]
madd %d15, %d1, %d1, 0

# CHECK-INST: madd %d15, %d1, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0xf1]
madd %d15, %d1, %d1, 1

# CHECK-INST: madd %d15, %d1, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0xf1]
madd %d15, %d1, %d1, 128

# CHECK-INST: madd %d15, %d1, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0xf1]
madd %d15, %d1, %d1, 255

# CHECK-INST: madd %d15, %d1, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0xf1]
madd %d15, %d1, %d14, -256

# CHECK-INST: madd %d15, %d1, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0xf1]
madd %d15, %d1, %d14, -129

# CHECK-INST: madd %d15, %d1, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0xf1]
madd %d15, %d1, %d14, -1

# CHECK-INST: madd %d15, %d1, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0xf1]
madd %d15, %d1, %d14, 0

# CHECK-INST: madd %d15, %d1, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0xf1]
madd %d15, %d1, %d14, 1

# CHECK-INST: madd %d15, %d1, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0xf1]
madd %d15, %d1, %d14, 128

# CHECK-INST: madd %d15, %d1, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0xf1]
madd %d15, %d1, %d14, 255

# CHECK-INST: madd %d15, %d1, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0xf1]
madd %d15, %d1, %d15, -256

# CHECK-INST: madd %d15, %d1, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0xf1]
madd %d15, %d1, %d15, -129

# CHECK-INST: madd %d15, %d1, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0xf1]
madd %d15, %d1, %d15, -1

# CHECK-INST: madd %d15, %d1, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0xf1]
madd %d15, %d1, %d15, 0

# CHECK-INST: madd %d15, %d1, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0xf1]
madd %d15, %d1, %d15, 1

# CHECK-INST: madd %d15, %d1, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0xf1]
madd %d15, %d1, %d15, 128

# CHECK-INST: madd %d15, %d1, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0xf1]
madd %d15, %d1, %d15, 255

# CHECK-INST: madd %d15, %d14, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0xfe]
madd %d15, %d14, %d0, -256

# CHECK-INST: madd %d15, %d14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0xfe]
madd %d15, %d14, %d0, -129

# CHECK-INST: madd %d15, %d14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0xfe]
madd %d15, %d14, %d0, -1

# CHECK-INST: madd %d15, %d14, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0xfe]
madd %d15, %d14, %d0, 0

# CHECK-INST: madd %d15, %d14, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0xfe]
madd %d15, %d14, %d0, 1

# CHECK-INST: madd %d15, %d14, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0xfe]
madd %d15, %d14, %d0, 128

# CHECK-INST: madd %d15, %d14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0xfe]
madd %d15, %d14, %d0, 255

# CHECK-INST: madd %d15, %d14, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0xfe]
madd %d15, %d14, %d1, -256

# CHECK-INST: madd %d15, %d14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0xfe]
madd %d15, %d14, %d1, -129

# CHECK-INST: madd %d15, %d14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0xfe]
madd %d15, %d14, %d1, -1

# CHECK-INST: madd %d15, %d14, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0xfe]
madd %d15, %d14, %d1, 0

# CHECK-INST: madd %d15, %d14, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0xfe]
madd %d15, %d14, %d1, 1

# CHECK-INST: madd %d15, %d14, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0xfe]
madd %d15, %d14, %d1, 128

# CHECK-INST: madd %d15, %d14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0xfe]
madd %d15, %d14, %d1, 255

# CHECK-INST: madd %d15, %d14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0xfe]
madd %d15, %d14, %d14, -256

# CHECK-INST: madd %d15, %d14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0xfe]
madd %d15, %d14, %d14, -129

# CHECK-INST: madd %d15, %d14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0xfe]
madd %d15, %d14, %d14, -1

# CHECK-INST: madd %d15, %d14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0xfe]
madd %d15, %d14, %d14, 0

# CHECK-INST: madd %d15, %d14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0xfe]
madd %d15, %d14, %d14, 1

# CHECK-INST: madd %d15, %d14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0xfe]
madd %d15, %d14, %d14, 128

# CHECK-INST: madd %d15, %d14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0xfe]
madd %d15, %d14, %d14, 255

# CHECK-INST: madd %d15, %d14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0xfe]
madd %d15, %d14, %d15, -256

# CHECK-INST: madd %d15, %d14, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0xfe]
madd %d15, %d14, %d15, -129

# CHECK-INST: madd %d15, %d14, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0xfe]
madd %d15, %d14, %d15, -1

# CHECK-INST: madd %d15, %d14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0xfe]
madd %d15, %d14, %d15, 0

# CHECK-INST: madd %d15, %d14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0xfe]
madd %d15, %d14, %d15, 1

# CHECK-INST: madd %d15, %d14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0xfe]
madd %d15, %d14, %d15, 128

# CHECK-INST: madd %d15, %d14, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0xfe]
madd %d15, %d14, %d15, 255

# CHECK-INST: madd %d15, %d15, %d0, -256
# CHECK: encoding: [0x13,0x00,0x30,0xff]
madd %d15, %d15, %d0, -256

# CHECK-INST: madd %d15, %d15, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x37,0xff]
madd %d15, %d15, %d0, -129

# CHECK-INST: madd %d15, %d15, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x3f,0xff]
madd %d15, %d15, %d0, -1

# CHECK-INST: madd %d15, %d15, %d0, 0
# CHECK: encoding: [0x13,0x00,0x20,0xff]
madd %d15, %d15, %d0, 0

# CHECK-INST: madd %d15, %d15, %d0, 1
# CHECK: encoding: [0x13,0x10,0x20,0xff]
madd %d15, %d15, %d0, 1

# CHECK-INST: madd %d15, %d15, %d0, 128
# CHECK: encoding: [0x13,0x00,0x28,0xff]
madd %d15, %d15, %d0, 128

# CHECK-INST: madd %d15, %d15, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x2f,0xff]
madd %d15, %d15, %d0, 255

# CHECK-INST: madd %d15, %d15, %d1, -256
# CHECK: encoding: [0x13,0x01,0x30,0xff]
madd %d15, %d15, %d1, -256

# CHECK-INST: madd %d15, %d15, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x37,0xff]
madd %d15, %d15, %d1, -129

# CHECK-INST: madd %d15, %d15, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x3f,0xff]
madd %d15, %d15, %d1, -1

# CHECK-INST: madd %d15, %d15, %d1, 0
# CHECK: encoding: [0x13,0x01,0x20,0xff]
madd %d15, %d15, %d1, 0

# CHECK-INST: madd %d15, %d15, %d1, 1
# CHECK: encoding: [0x13,0x11,0x20,0xff]
madd %d15, %d15, %d1, 1

# CHECK-INST: madd %d15, %d15, %d1, 128
# CHECK: encoding: [0x13,0x01,0x28,0xff]
madd %d15, %d15, %d1, 128

# CHECK-INST: madd %d15, %d15, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x2f,0xff]
madd %d15, %d15, %d1, 255

# CHECK-INST: madd %d15, %d15, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x30,0xff]
madd %d15, %d15, %d14, -256

# CHECK-INST: madd %d15, %d15, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x37,0xff]
madd %d15, %d15, %d14, -129

# CHECK-INST: madd %d15, %d15, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x3f,0xff]
madd %d15, %d15, %d14, -1

# CHECK-INST: madd %d15, %d15, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x20,0xff]
madd %d15, %d15, %d14, 0

# CHECK-INST: madd %d15, %d15, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x20,0xff]
madd %d15, %d15, %d14, 1

# CHECK-INST: madd %d15, %d15, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x28,0xff]
madd %d15, %d15, %d14, 128

# CHECK-INST: madd %d15, %d15, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x2f,0xff]
madd %d15, %d15, %d14, 255

# CHECK-INST: madd %d15, %d15, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x30,0xff]
madd %d15, %d15, %d15, -256

# CHECK-INST: madd %d15, %d15, %d15, -129
# CHECK: encoding: [0x13,0xff,0x37,0xff]
madd %d15, %d15, %d15, -129

# CHECK-INST: madd %d15, %d15, %d15, -1
# CHECK: encoding: [0x13,0xff,0x3f,0xff]
madd %d15, %d15, %d15, -1

# CHECK-INST: madd %d15, %d15, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x20,0xff]
madd %d15, %d15, %d15, 0

# CHECK-INST: madd %d15, %d15, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x20,0xff]
madd %d15, %d15, %d15, 1

# CHECK-INST: madd %d15, %d15, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x28,0xff]
madd %d15, %d15, %d15, 128

# CHECK-INST: madd %d15, %d15, %d15, 255
# CHECK: encoding: [0x13,0xff,0x2f,0xff]
madd %d15, %d15, %d15, 255

# CHECK-INST: madd %e0, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x6a,0x00]
madd %e0, %e0, %d0, %d0

# CHECK-INST: madd %e0, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x6a,0x00]
madd %e0, %e0, %d0, %d1

# CHECK-INST: madd %e0, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x6a,0x00]
madd %e0, %e0, %d0, %d14

# CHECK-INST: madd %e0, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x6a,0x00]
madd %e0, %e0, %d0, %d15

# CHECK-INST: madd %e0, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x6a,0x00]
madd %e0, %e0, %d1, %d0

# CHECK-INST: madd %e0, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x6a,0x00]
madd %e0, %e0, %d1, %d1

# CHECK-INST: madd %e0, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x6a,0x00]
madd %e0, %e0, %d1, %d14

# CHECK-INST: madd %e0, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x6a,0x00]
madd %e0, %e0, %d1, %d15

# CHECK-INST: madd %e0, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x6a,0x00]
madd %e0, %e0, %d14, %d0

# CHECK-INST: madd %e0, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x6a,0x00]
madd %e0, %e0, %d14, %d1

# CHECK-INST: madd %e0, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x6a,0x00]
madd %e0, %e0, %d14, %d14

# CHECK-INST: madd %e0, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x6a,0x00]
madd %e0, %e0, %d14, %d15

# CHECK-INST: madd %e0, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x6a,0x00]
madd %e0, %e0, %d15, %d0

# CHECK-INST: madd %e0, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x6a,0x00]
madd %e0, %e0, %d15, %d1

# CHECK-INST: madd %e0, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x6a,0x00]
madd %e0, %e0, %d15, %d14

# CHECK-INST: madd %e0, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x6a,0x00]
madd %e0, %e0, %d15, %d15

# CHECK-INST: madd %e0, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x6a,0x06]
madd %e0, %e6, %d0, %d0

# CHECK-INST: madd %e0, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x6a,0x06]
madd %e0, %e6, %d0, %d1

# CHECK-INST: madd %e0, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x6a,0x06]
madd %e0, %e6, %d0, %d14

# CHECK-INST: madd %e0, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x6a,0x06]
madd %e0, %e6, %d0, %d15

# CHECK-INST: madd %e0, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x6a,0x06]
madd %e0, %e6, %d1, %d0

# CHECK-INST: madd %e0, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x6a,0x06]
madd %e0, %e6, %d1, %d1

# CHECK-INST: madd %e0, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x6a,0x06]
madd %e0, %e6, %d1, %d14

# CHECK-INST: madd %e0, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x6a,0x06]
madd %e0, %e6, %d1, %d15

# CHECK-INST: madd %e0, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x6a,0x06]
madd %e0, %e6, %d14, %d0

# CHECK-INST: madd %e0, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x6a,0x06]
madd %e0, %e6, %d14, %d1

# CHECK-INST: madd %e0, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x6a,0x06]
madd %e0, %e6, %d14, %d14

# CHECK-INST: madd %e0, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x6a,0x06]
madd %e0, %e6, %d14, %d15

# CHECK-INST: madd %e0, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x6a,0x06]
madd %e0, %e6, %d15, %d0

# CHECK-INST: madd %e0, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x6a,0x06]
madd %e0, %e6, %d15, %d1

# CHECK-INST: madd %e0, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x6a,0x06]
madd %e0, %e6, %d15, %d14

# CHECK-INST: madd %e0, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x6a,0x06]
madd %e0, %e6, %d15, %d15

# CHECK-INST: madd %e0, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x6a,0x0e]
madd %e0, %e14, %d0, %d0

# CHECK-INST: madd %e0, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x6a,0x0e]
madd %e0, %e14, %d0, %d1

# CHECK-INST: madd %e0, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x6a,0x0e]
madd %e0, %e14, %d0, %d14

# CHECK-INST: madd %e0, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x6a,0x0e]
madd %e0, %e14, %d0, %d15

# CHECK-INST: madd %e0, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x6a,0x0e]
madd %e0, %e14, %d1, %d0

# CHECK-INST: madd %e0, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x6a,0x0e]
madd %e0, %e14, %d1, %d1

# CHECK-INST: madd %e0, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x6a,0x0e]
madd %e0, %e14, %d1, %d14

# CHECK-INST: madd %e0, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x6a,0x0e]
madd %e0, %e14, %d1, %d15

# CHECK-INST: madd %e0, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x6a,0x0e]
madd %e0, %e14, %d14, %d0

# CHECK-INST: madd %e0, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x6a,0x0e]
madd %e0, %e14, %d14, %d1

# CHECK-INST: madd %e0, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x6a,0x0e]
madd %e0, %e14, %d14, %d14

# CHECK-INST: madd %e0, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x6a,0x0e]
madd %e0, %e14, %d14, %d15

# CHECK-INST: madd %e0, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x6a,0x0e]
madd %e0, %e14, %d15, %d0

# CHECK-INST: madd %e0, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x6a,0x0e]
madd %e0, %e14, %d15, %d1

# CHECK-INST: madd %e0, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x6a,0x0e]
madd %e0, %e14, %d15, %d14

# CHECK-INST: madd %e0, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x6a,0x0e]
madd %e0, %e14, %d15, %d15

# CHECK-INST: madd %e6, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x6a,0x60]
madd %e6, %e0, %d0, %d0

# CHECK-INST: madd %e6, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x6a,0x60]
madd %e6, %e0, %d0, %d1

# CHECK-INST: madd %e6, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x6a,0x60]
madd %e6, %e0, %d0, %d14

# CHECK-INST: madd %e6, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x6a,0x60]
madd %e6, %e0, %d0, %d15

# CHECK-INST: madd %e6, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x6a,0x60]
madd %e6, %e0, %d1, %d0

# CHECK-INST: madd %e6, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x6a,0x60]
madd %e6, %e0, %d1, %d1

# CHECK-INST: madd %e6, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x6a,0x60]
madd %e6, %e0, %d1, %d14

# CHECK-INST: madd %e6, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x6a,0x60]
madd %e6, %e0, %d1, %d15

# CHECK-INST: madd %e6, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x6a,0x60]
madd %e6, %e0, %d14, %d0

# CHECK-INST: madd %e6, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x6a,0x60]
madd %e6, %e0, %d14, %d1

# CHECK-INST: madd %e6, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x6a,0x60]
madd %e6, %e0, %d14, %d14

# CHECK-INST: madd %e6, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x6a,0x60]
madd %e6, %e0, %d14, %d15

# CHECK-INST: madd %e6, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x6a,0x60]
madd %e6, %e0, %d15, %d0

# CHECK-INST: madd %e6, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x6a,0x60]
madd %e6, %e0, %d15, %d1

# CHECK-INST: madd %e6, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x6a,0x60]
madd %e6, %e0, %d15, %d14

# CHECK-INST: madd %e6, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x6a,0x60]
madd %e6, %e0, %d15, %d15

# CHECK-INST: madd %e6, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x6a,0x66]
madd %e6, %e6, %d0, %d0

# CHECK-INST: madd %e6, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x6a,0x66]
madd %e6, %e6, %d0, %d1

# CHECK-INST: madd %e6, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x6a,0x66]
madd %e6, %e6, %d0, %d14

# CHECK-INST: madd %e6, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x6a,0x66]
madd %e6, %e6, %d0, %d15

# CHECK-INST: madd %e6, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x6a,0x66]
madd %e6, %e6, %d1, %d0

# CHECK-INST: madd %e6, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x6a,0x66]
madd %e6, %e6, %d1, %d1

# CHECK-INST: madd %e6, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x6a,0x66]
madd %e6, %e6, %d1, %d14

# CHECK-INST: madd %e6, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x6a,0x66]
madd %e6, %e6, %d1, %d15

# CHECK-INST: madd %e6, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x6a,0x66]
madd %e6, %e6, %d14, %d0

# CHECK-INST: madd %e6, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x6a,0x66]
madd %e6, %e6, %d14, %d1

# CHECK-INST: madd %e6, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x6a,0x66]
madd %e6, %e6, %d14, %d14

# CHECK-INST: madd %e6, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x6a,0x66]
madd %e6, %e6, %d14, %d15

# CHECK-INST: madd %e6, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x6a,0x66]
madd %e6, %e6, %d15, %d0

# CHECK-INST: madd %e6, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x6a,0x66]
madd %e6, %e6, %d15, %d1

# CHECK-INST: madd %e6, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x6a,0x66]
madd %e6, %e6, %d15, %d14

# CHECK-INST: madd %e6, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x6a,0x66]
madd %e6, %e6, %d15, %d15

# CHECK-INST: madd %e6, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x6a,0x6e]
madd %e6, %e14, %d0, %d0

# CHECK-INST: madd %e6, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x6a,0x6e]
madd %e6, %e14, %d0, %d1

# CHECK-INST: madd %e6, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x6a,0x6e]
madd %e6, %e14, %d0, %d14

# CHECK-INST: madd %e6, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x6a,0x6e]
madd %e6, %e14, %d0, %d15

# CHECK-INST: madd %e6, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x6a,0x6e]
madd %e6, %e14, %d1, %d0

# CHECK-INST: madd %e6, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x6a,0x6e]
madd %e6, %e14, %d1, %d1

# CHECK-INST: madd %e6, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x6a,0x6e]
madd %e6, %e14, %d1, %d14

# CHECK-INST: madd %e6, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x6a,0x6e]
madd %e6, %e14, %d1, %d15

# CHECK-INST: madd %e6, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x6a,0x6e]
madd %e6, %e14, %d14, %d0

# CHECK-INST: madd %e6, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x6a,0x6e]
madd %e6, %e14, %d14, %d1

# CHECK-INST: madd %e6, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x6a,0x6e]
madd %e6, %e14, %d14, %d14

# CHECK-INST: madd %e6, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x6a,0x6e]
madd %e6, %e14, %d14, %d15

# CHECK-INST: madd %e6, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x6a,0x6e]
madd %e6, %e14, %d15, %d0

# CHECK-INST: madd %e6, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x6a,0x6e]
madd %e6, %e14, %d15, %d1

# CHECK-INST: madd %e6, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x6a,0x6e]
madd %e6, %e14, %d15, %d14

# CHECK-INST: madd %e6, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x6a,0x6e]
madd %e6, %e14, %d15, %d15

# CHECK-INST: madd %e14, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x6a,0xe0]
madd %e14, %e0, %d0, %d0

# CHECK-INST: madd %e14, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x6a,0xe0]
madd %e14, %e0, %d0, %d1

# CHECK-INST: madd %e14, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x6a,0xe0]
madd %e14, %e0, %d0, %d14

# CHECK-INST: madd %e14, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x6a,0xe0]
madd %e14, %e0, %d0, %d15

# CHECK-INST: madd %e14, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x6a,0xe0]
madd %e14, %e0, %d1, %d0

# CHECK-INST: madd %e14, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x6a,0xe0]
madd %e14, %e0, %d1, %d1

# CHECK-INST: madd %e14, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x6a,0xe0]
madd %e14, %e0, %d1, %d14

# CHECK-INST: madd %e14, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x6a,0xe0]
madd %e14, %e0, %d1, %d15

# CHECK-INST: madd %e14, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x6a,0xe0]
madd %e14, %e0, %d14, %d0

# CHECK-INST: madd %e14, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x6a,0xe0]
madd %e14, %e0, %d14, %d1

# CHECK-INST: madd %e14, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x6a,0xe0]
madd %e14, %e0, %d14, %d14

# CHECK-INST: madd %e14, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x6a,0xe0]
madd %e14, %e0, %d14, %d15

# CHECK-INST: madd %e14, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x6a,0xe0]
madd %e14, %e0, %d15, %d0

# CHECK-INST: madd %e14, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x6a,0xe0]
madd %e14, %e0, %d15, %d1

# CHECK-INST: madd %e14, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x6a,0xe0]
madd %e14, %e0, %d15, %d14

# CHECK-INST: madd %e14, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x6a,0xe0]
madd %e14, %e0, %d15, %d15

# CHECK-INST: madd %e14, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x6a,0xe6]
madd %e14, %e6, %d0, %d0

# CHECK-INST: madd %e14, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x6a,0xe6]
madd %e14, %e6, %d0, %d1

# CHECK-INST: madd %e14, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x6a,0xe6]
madd %e14, %e6, %d0, %d14

# CHECK-INST: madd %e14, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x6a,0xe6]
madd %e14, %e6, %d0, %d15

# CHECK-INST: madd %e14, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x6a,0xe6]
madd %e14, %e6, %d1, %d0

# CHECK-INST: madd %e14, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x6a,0xe6]
madd %e14, %e6, %d1, %d1

# CHECK-INST: madd %e14, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x6a,0xe6]
madd %e14, %e6, %d1, %d14

# CHECK-INST: madd %e14, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x6a,0xe6]
madd %e14, %e6, %d1, %d15

# CHECK-INST: madd %e14, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x6a,0xe6]
madd %e14, %e6, %d14, %d0

# CHECK-INST: madd %e14, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x6a,0xe6]
madd %e14, %e6, %d14, %d1

# CHECK-INST: madd %e14, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x6a,0xe6]
madd %e14, %e6, %d14, %d14

# CHECK-INST: madd %e14, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x6a,0xe6]
madd %e14, %e6, %d14, %d15

# CHECK-INST: madd %e14, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x6a,0xe6]
madd %e14, %e6, %d15, %d0

# CHECK-INST: madd %e14, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x6a,0xe6]
madd %e14, %e6, %d15, %d1

# CHECK-INST: madd %e14, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x6a,0xe6]
madd %e14, %e6, %d15, %d14

# CHECK-INST: madd %e14, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x6a,0xe6]
madd %e14, %e6, %d15, %d15

# CHECK-INST: madd %e14, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x6a,0xee]
madd %e14, %e14, %d0, %d0

# CHECK-INST: madd %e14, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x6a,0xee]
madd %e14, %e14, %d0, %d1

# CHECK-INST: madd %e14, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x6a,0xee]
madd %e14, %e14, %d0, %d14

# CHECK-INST: madd %e14, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x6a,0xee]
madd %e14, %e14, %d0, %d15

# CHECK-INST: madd %e14, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x6a,0xee]
madd %e14, %e14, %d1, %d0

# CHECK-INST: madd %e14, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x6a,0xee]
madd %e14, %e14, %d1, %d1

# CHECK-INST: madd %e14, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x6a,0xee]
madd %e14, %e14, %d1, %d14

# CHECK-INST: madd %e14, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x6a,0xee]
madd %e14, %e14, %d1, %d15

# CHECK-INST: madd %e14, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x6a,0xee]
madd %e14, %e14, %d14, %d0

# CHECK-INST: madd %e14, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x6a,0xee]
madd %e14, %e14, %d14, %d1

# CHECK-INST: madd %e14, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x6a,0xee]
madd %e14, %e14, %d14, %d14

# CHECK-INST: madd %e14, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x6a,0xee]
madd %e14, %e14, %d14, %d15

# CHECK-INST: madd %e14, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x6a,0xee]
madd %e14, %e14, %d15, %d0

# CHECK-INST: madd %e14, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x6a,0xee]
madd %e14, %e14, %d15, %d1

# CHECK-INST: madd %e14, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x6a,0xee]
madd %e14, %e14, %d15, %d14

# CHECK-INST: madd %e14, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x6a,0xee]
madd %e14, %e14, %d15, %d15

# CHECK-INST: madd %e0, %e0, %d0, -256
# CHECK: encoding: [0x13,0x00,0x70,0x00]
madd %e0, %e0, %d0, -256

# CHECK-INST: madd %e0, %e0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x77,0x00]
madd %e0, %e0, %d0, -129

# CHECK-INST: madd %e0, %e0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x7f,0x00]
madd %e0, %e0, %d0, -1

# CHECK-INST: madd %e0, %e0, %d0, 0
# CHECK: encoding: [0x13,0x00,0x60,0x00]
madd %e0, %e0, %d0, 0

# CHECK-INST: madd %e0, %e0, %d0, 1
# CHECK: encoding: [0x13,0x10,0x60,0x00]
madd %e0, %e0, %d0, 1

# CHECK-INST: madd %e0, %e0, %d0, 128
# CHECK: encoding: [0x13,0x00,0x68,0x00]
madd %e0, %e0, %d0, 128

# CHECK-INST: madd %e0, %e0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x6f,0x00]
madd %e0, %e0, %d0, 255

# CHECK-INST: madd %e0, %e0, %d1, -256
# CHECK: encoding: [0x13,0x01,0x70,0x00]
madd %e0, %e0, %d1, -256

# CHECK-INST: madd %e0, %e0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x77,0x00]
madd %e0, %e0, %d1, -129

# CHECK-INST: madd %e0, %e0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x7f,0x00]
madd %e0, %e0, %d1, -1

# CHECK-INST: madd %e0, %e0, %d1, 0
# CHECK: encoding: [0x13,0x01,0x60,0x00]
madd %e0, %e0, %d1, 0

# CHECK-INST: madd %e0, %e0, %d1, 1
# CHECK: encoding: [0x13,0x11,0x60,0x00]
madd %e0, %e0, %d1, 1

# CHECK-INST: madd %e0, %e0, %d1, 128
# CHECK: encoding: [0x13,0x01,0x68,0x00]
madd %e0, %e0, %d1, 128

# CHECK-INST: madd %e0, %e0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x6f,0x00]
madd %e0, %e0, %d1, 255

# CHECK-INST: madd %e0, %e0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x70,0x00]
madd %e0, %e0, %d14, -256

# CHECK-INST: madd %e0, %e0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x77,0x00]
madd %e0, %e0, %d14, -129

# CHECK-INST: madd %e0, %e0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x7f,0x00]
madd %e0, %e0, %d14, -1

# CHECK-INST: madd %e0, %e0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x60,0x00]
madd %e0, %e0, %d14, 0

# CHECK-INST: madd %e0, %e0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x60,0x00]
madd %e0, %e0, %d14, 1

# CHECK-INST: madd %e0, %e0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x68,0x00]
madd %e0, %e0, %d14, 128

# CHECK-INST: madd %e0, %e0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x6f,0x00]
madd %e0, %e0, %d14, 255

# CHECK-INST: madd %e0, %e0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x70,0x00]
madd %e0, %e0, %d15, -256

# CHECK-INST: madd %e0, %e0, %d15, -129
# CHECK: encoding: [0x13,0xff,0x77,0x00]
madd %e0, %e0, %d15, -129

# CHECK-INST: madd %e0, %e0, %d15, -1
# CHECK: encoding: [0x13,0xff,0x7f,0x00]
madd %e0, %e0, %d15, -1

# CHECK-INST: madd %e0, %e0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x60,0x00]
madd %e0, %e0, %d15, 0

# CHECK-INST: madd %e0, %e0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x60,0x00]
madd %e0, %e0, %d15, 1

# CHECK-INST: madd %e0, %e0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x68,0x00]
madd %e0, %e0, %d15, 128

# CHECK-INST: madd %e0, %e0, %d15, 255
# CHECK: encoding: [0x13,0xff,0x6f,0x00]
madd %e0, %e0, %d15, 255

# CHECK-INST: madd %e0, %e6, %d0, -256
# CHECK: encoding: [0x13,0x00,0x70,0x06]
madd %e0, %e6, %d0, -256

# CHECK-INST: madd %e0, %e6, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x77,0x06]
madd %e0, %e6, %d0, -129

# CHECK-INST: madd %e0, %e6, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x7f,0x06]
madd %e0, %e6, %d0, -1

# CHECK-INST: madd %e0, %e6, %d0, 0
# CHECK: encoding: [0x13,0x00,0x60,0x06]
madd %e0, %e6, %d0, 0

# CHECK-INST: madd %e0, %e6, %d0, 1
# CHECK: encoding: [0x13,0x10,0x60,0x06]
madd %e0, %e6, %d0, 1

# CHECK-INST: madd %e0, %e6, %d0, 128
# CHECK: encoding: [0x13,0x00,0x68,0x06]
madd %e0, %e6, %d0, 128

# CHECK-INST: madd %e0, %e6, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x6f,0x06]
madd %e0, %e6, %d0, 255

# CHECK-INST: madd %e0, %e6, %d1, -256
# CHECK: encoding: [0x13,0x01,0x70,0x06]
madd %e0, %e6, %d1, -256

# CHECK-INST: madd %e0, %e6, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x77,0x06]
madd %e0, %e6, %d1, -129

# CHECK-INST: madd %e0, %e6, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x7f,0x06]
madd %e0, %e6, %d1, -1

# CHECK-INST: madd %e0, %e6, %d1, 0
# CHECK: encoding: [0x13,0x01,0x60,0x06]
madd %e0, %e6, %d1, 0

# CHECK-INST: madd %e0, %e6, %d1, 1
# CHECK: encoding: [0x13,0x11,0x60,0x06]
madd %e0, %e6, %d1, 1

# CHECK-INST: madd %e0, %e6, %d1, 128
# CHECK: encoding: [0x13,0x01,0x68,0x06]
madd %e0, %e6, %d1, 128

# CHECK-INST: madd %e0, %e6, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x6f,0x06]
madd %e0, %e6, %d1, 255

# CHECK-INST: madd %e0, %e6, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x70,0x06]
madd %e0, %e6, %d14, -256

# CHECK-INST: madd %e0, %e6, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x77,0x06]
madd %e0, %e6, %d14, -129

# CHECK-INST: madd %e0, %e6, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x7f,0x06]
madd %e0, %e6, %d14, -1

# CHECK-INST: madd %e0, %e6, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x60,0x06]
madd %e0, %e6, %d14, 0

# CHECK-INST: madd %e0, %e6, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x60,0x06]
madd %e0, %e6, %d14, 1

# CHECK-INST: madd %e0, %e6, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x68,0x06]
madd %e0, %e6, %d14, 128

# CHECK-INST: madd %e0, %e6, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x6f,0x06]
madd %e0, %e6, %d14, 255

# CHECK-INST: madd %e0, %e6, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x70,0x06]
madd %e0, %e6, %d15, -256

# CHECK-INST: madd %e0, %e6, %d15, -129
# CHECK: encoding: [0x13,0xff,0x77,0x06]
madd %e0, %e6, %d15, -129

# CHECK-INST: madd %e0, %e6, %d15, -1
# CHECK: encoding: [0x13,0xff,0x7f,0x06]
madd %e0, %e6, %d15, -1

# CHECK-INST: madd %e0, %e6, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x60,0x06]
madd %e0, %e6, %d15, 0

# CHECK-INST: madd %e0, %e6, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x60,0x06]
madd %e0, %e6, %d15, 1

# CHECK-INST: madd %e0, %e6, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x68,0x06]
madd %e0, %e6, %d15, 128

# CHECK-INST: madd %e0, %e6, %d15, 255
# CHECK: encoding: [0x13,0xff,0x6f,0x06]
madd %e0, %e6, %d15, 255

# CHECK-INST: madd %e0, %e14, %d0, -256
# CHECK: encoding: [0x13,0x00,0x70,0x0e]
madd %e0, %e14, %d0, -256

# CHECK-INST: madd %e0, %e14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x77,0x0e]
madd %e0, %e14, %d0, -129

# CHECK-INST: madd %e0, %e14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x7f,0x0e]
madd %e0, %e14, %d0, -1

# CHECK-INST: madd %e0, %e14, %d0, 0
# CHECK: encoding: [0x13,0x00,0x60,0x0e]
madd %e0, %e14, %d0, 0

# CHECK-INST: madd %e0, %e14, %d0, 1
# CHECK: encoding: [0x13,0x10,0x60,0x0e]
madd %e0, %e14, %d0, 1

# CHECK-INST: madd %e0, %e14, %d0, 128
# CHECK: encoding: [0x13,0x00,0x68,0x0e]
madd %e0, %e14, %d0, 128

# CHECK-INST: madd %e0, %e14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x6f,0x0e]
madd %e0, %e14, %d0, 255

# CHECK-INST: madd %e0, %e14, %d1, -256
# CHECK: encoding: [0x13,0x01,0x70,0x0e]
madd %e0, %e14, %d1, -256

# CHECK-INST: madd %e0, %e14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x77,0x0e]
madd %e0, %e14, %d1, -129

# CHECK-INST: madd %e0, %e14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x7f,0x0e]
madd %e0, %e14, %d1, -1

# CHECK-INST: madd %e0, %e14, %d1, 0
# CHECK: encoding: [0x13,0x01,0x60,0x0e]
madd %e0, %e14, %d1, 0

# CHECK-INST: madd %e0, %e14, %d1, 1
# CHECK: encoding: [0x13,0x11,0x60,0x0e]
madd %e0, %e14, %d1, 1

# CHECK-INST: madd %e0, %e14, %d1, 128
# CHECK: encoding: [0x13,0x01,0x68,0x0e]
madd %e0, %e14, %d1, 128

# CHECK-INST: madd %e0, %e14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x6f,0x0e]
madd %e0, %e14, %d1, 255

# CHECK-INST: madd %e0, %e14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x70,0x0e]
madd %e0, %e14, %d14, -256

# CHECK-INST: madd %e0, %e14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x77,0x0e]
madd %e0, %e14, %d14, -129

# CHECK-INST: madd %e0, %e14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x7f,0x0e]
madd %e0, %e14, %d14, -1

# CHECK-INST: madd %e0, %e14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x60,0x0e]
madd %e0, %e14, %d14, 0

# CHECK-INST: madd %e0, %e14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x60,0x0e]
madd %e0, %e14, %d14, 1

# CHECK-INST: madd %e0, %e14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x68,0x0e]
madd %e0, %e14, %d14, 128

# CHECK-INST: madd %e0, %e14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x6f,0x0e]
madd %e0, %e14, %d14, 255

# CHECK-INST: madd %e0, %e14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x70,0x0e]
madd %e0, %e14, %d15, -256

# CHECK-INST: madd %e0, %e14, %d15, -129
# CHECK: encoding: [0x13,0xff,0x77,0x0e]
madd %e0, %e14, %d15, -129

# CHECK-INST: madd %e0, %e14, %d15, -1
# CHECK: encoding: [0x13,0xff,0x7f,0x0e]
madd %e0, %e14, %d15, -1

# CHECK-INST: madd %e0, %e14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x60,0x0e]
madd %e0, %e14, %d15, 0

# CHECK-INST: madd %e0, %e14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x60,0x0e]
madd %e0, %e14, %d15, 1

# CHECK-INST: madd %e0, %e14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x68,0x0e]
madd %e0, %e14, %d15, 128

# CHECK-INST: madd %e0, %e14, %d15, 255
# CHECK: encoding: [0x13,0xff,0x6f,0x0e]
madd %e0, %e14, %d15, 255

# CHECK-INST: madd %e6, %e0, %d0, -256
# CHECK: encoding: [0x13,0x00,0x70,0x60]
madd %e6, %e0, %d0, -256

# CHECK-INST: madd %e6, %e0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x77,0x60]
madd %e6, %e0, %d0, -129

# CHECK-INST: madd %e6, %e0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x7f,0x60]
madd %e6, %e0, %d0, -1

# CHECK-INST: madd %e6, %e0, %d0, 0
# CHECK: encoding: [0x13,0x00,0x60,0x60]
madd %e6, %e0, %d0, 0

# CHECK-INST: madd %e6, %e0, %d0, 1
# CHECK: encoding: [0x13,0x10,0x60,0x60]
madd %e6, %e0, %d0, 1

# CHECK-INST: madd %e6, %e0, %d0, 128
# CHECK: encoding: [0x13,0x00,0x68,0x60]
madd %e6, %e0, %d0, 128

# CHECK-INST: madd %e6, %e0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x6f,0x60]
madd %e6, %e0, %d0, 255

# CHECK-INST: madd %e6, %e0, %d1, -256
# CHECK: encoding: [0x13,0x01,0x70,0x60]
madd %e6, %e0, %d1, -256

# CHECK-INST: madd %e6, %e0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x77,0x60]
madd %e6, %e0, %d1, -129

# CHECK-INST: madd %e6, %e0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x7f,0x60]
madd %e6, %e0, %d1, -1

# CHECK-INST: madd %e6, %e0, %d1, 0
# CHECK: encoding: [0x13,0x01,0x60,0x60]
madd %e6, %e0, %d1, 0

# CHECK-INST: madd %e6, %e0, %d1, 1
# CHECK: encoding: [0x13,0x11,0x60,0x60]
madd %e6, %e0, %d1, 1

# CHECK-INST: madd %e6, %e0, %d1, 128
# CHECK: encoding: [0x13,0x01,0x68,0x60]
madd %e6, %e0, %d1, 128

# CHECK-INST: madd %e6, %e0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x6f,0x60]
madd %e6, %e0, %d1, 255

# CHECK-INST: madd %e6, %e0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x70,0x60]
madd %e6, %e0, %d14, -256

# CHECK-INST: madd %e6, %e0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x77,0x60]
madd %e6, %e0, %d14, -129

# CHECK-INST: madd %e6, %e0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x7f,0x60]
madd %e6, %e0, %d14, -1

# CHECK-INST: madd %e6, %e0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x60,0x60]
madd %e6, %e0, %d14, 0

# CHECK-INST: madd %e6, %e0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x60,0x60]
madd %e6, %e0, %d14, 1

# CHECK-INST: madd %e6, %e0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x68,0x60]
madd %e6, %e0, %d14, 128

# CHECK-INST: madd %e6, %e0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x6f,0x60]
madd %e6, %e0, %d14, 255

# CHECK-INST: madd %e6, %e0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x70,0x60]
madd %e6, %e0, %d15, -256

# CHECK-INST: madd %e6, %e0, %d15, -129
# CHECK: encoding: [0x13,0xff,0x77,0x60]
madd %e6, %e0, %d15, -129

# CHECK-INST: madd %e6, %e0, %d15, -1
# CHECK: encoding: [0x13,0xff,0x7f,0x60]
madd %e6, %e0, %d15, -1

# CHECK-INST: madd %e6, %e0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x60,0x60]
madd %e6, %e0, %d15, 0

# CHECK-INST: madd %e6, %e0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x60,0x60]
madd %e6, %e0, %d15, 1

# CHECK-INST: madd %e6, %e0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x68,0x60]
madd %e6, %e0, %d15, 128

# CHECK-INST: madd %e6, %e0, %d15, 255
# CHECK: encoding: [0x13,0xff,0x6f,0x60]
madd %e6, %e0, %d15, 255

# CHECK-INST: madd %e6, %e6, %d0, -256
# CHECK: encoding: [0x13,0x00,0x70,0x66]
madd %e6, %e6, %d0, -256

# CHECK-INST: madd %e6, %e6, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x77,0x66]
madd %e6, %e6, %d0, -129

# CHECK-INST: madd %e6, %e6, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x7f,0x66]
madd %e6, %e6, %d0, -1

# CHECK-INST: madd %e6, %e6, %d0, 0
# CHECK: encoding: [0x13,0x00,0x60,0x66]
madd %e6, %e6, %d0, 0

# CHECK-INST: madd %e6, %e6, %d0, 1
# CHECK: encoding: [0x13,0x10,0x60,0x66]
madd %e6, %e6, %d0, 1

# CHECK-INST: madd %e6, %e6, %d0, 128
# CHECK: encoding: [0x13,0x00,0x68,0x66]
madd %e6, %e6, %d0, 128

# CHECK-INST: madd %e6, %e6, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x6f,0x66]
madd %e6, %e6, %d0, 255

# CHECK-INST: madd %e6, %e6, %d1, -256
# CHECK: encoding: [0x13,0x01,0x70,0x66]
madd %e6, %e6, %d1, -256

# CHECK-INST: madd %e6, %e6, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x77,0x66]
madd %e6, %e6, %d1, -129

# CHECK-INST: madd %e6, %e6, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x7f,0x66]
madd %e6, %e6, %d1, -1

# CHECK-INST: madd %e6, %e6, %d1, 0
# CHECK: encoding: [0x13,0x01,0x60,0x66]
madd %e6, %e6, %d1, 0

# CHECK-INST: madd %e6, %e6, %d1, 1
# CHECK: encoding: [0x13,0x11,0x60,0x66]
madd %e6, %e6, %d1, 1

# CHECK-INST: madd %e6, %e6, %d1, 128
# CHECK: encoding: [0x13,0x01,0x68,0x66]
madd %e6, %e6, %d1, 128

# CHECK-INST: madd %e6, %e6, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x6f,0x66]
madd %e6, %e6, %d1, 255

# CHECK-INST: madd %e6, %e6, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x70,0x66]
madd %e6, %e6, %d14, -256

# CHECK-INST: madd %e6, %e6, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x77,0x66]
madd %e6, %e6, %d14, -129

# CHECK-INST: madd %e6, %e6, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x7f,0x66]
madd %e6, %e6, %d14, -1

# CHECK-INST: madd %e6, %e6, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x60,0x66]
madd %e6, %e6, %d14, 0

# CHECK-INST: madd %e6, %e6, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x60,0x66]
madd %e6, %e6, %d14, 1

# CHECK-INST: madd %e6, %e6, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x68,0x66]
madd %e6, %e6, %d14, 128

# CHECK-INST: madd %e6, %e6, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x6f,0x66]
madd %e6, %e6, %d14, 255

# CHECK-INST: madd %e6, %e6, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x70,0x66]
madd %e6, %e6, %d15, -256

# CHECK-INST: madd %e6, %e6, %d15, -129
# CHECK: encoding: [0x13,0xff,0x77,0x66]
madd %e6, %e6, %d15, -129

# CHECK-INST: madd %e6, %e6, %d15, -1
# CHECK: encoding: [0x13,0xff,0x7f,0x66]
madd %e6, %e6, %d15, -1

# CHECK-INST: madd %e6, %e6, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x60,0x66]
madd %e6, %e6, %d15, 0

# CHECK-INST: madd %e6, %e6, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x60,0x66]
madd %e6, %e6, %d15, 1

# CHECK-INST: madd %e6, %e6, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x68,0x66]
madd %e6, %e6, %d15, 128

# CHECK-INST: madd %e6, %e6, %d15, 255
# CHECK: encoding: [0x13,0xff,0x6f,0x66]
madd %e6, %e6, %d15, 255

# CHECK-INST: madd %e6, %e14, %d0, -256
# CHECK: encoding: [0x13,0x00,0x70,0x6e]
madd %e6, %e14, %d0, -256

# CHECK-INST: madd %e6, %e14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x77,0x6e]
madd %e6, %e14, %d0, -129

# CHECK-INST: madd %e6, %e14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x7f,0x6e]
madd %e6, %e14, %d0, -1

# CHECK-INST: madd %e6, %e14, %d0, 0
# CHECK: encoding: [0x13,0x00,0x60,0x6e]
madd %e6, %e14, %d0, 0

# CHECK-INST: madd %e6, %e14, %d0, 1
# CHECK: encoding: [0x13,0x10,0x60,0x6e]
madd %e6, %e14, %d0, 1

# CHECK-INST: madd %e6, %e14, %d0, 128
# CHECK: encoding: [0x13,0x00,0x68,0x6e]
madd %e6, %e14, %d0, 128

# CHECK-INST: madd %e6, %e14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x6f,0x6e]
madd %e6, %e14, %d0, 255

# CHECK-INST: madd %e6, %e14, %d1, -256
# CHECK: encoding: [0x13,0x01,0x70,0x6e]
madd %e6, %e14, %d1, -256

# CHECK-INST: madd %e6, %e14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x77,0x6e]
madd %e6, %e14, %d1, -129

# CHECK-INST: madd %e6, %e14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x7f,0x6e]
madd %e6, %e14, %d1, -1

# CHECK-INST: madd %e6, %e14, %d1, 0
# CHECK: encoding: [0x13,0x01,0x60,0x6e]
madd %e6, %e14, %d1, 0

# CHECK-INST: madd %e6, %e14, %d1, 1
# CHECK: encoding: [0x13,0x11,0x60,0x6e]
madd %e6, %e14, %d1, 1

# CHECK-INST: madd %e6, %e14, %d1, 128
# CHECK: encoding: [0x13,0x01,0x68,0x6e]
madd %e6, %e14, %d1, 128

# CHECK-INST: madd %e6, %e14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x6f,0x6e]
madd %e6, %e14, %d1, 255

# CHECK-INST: madd %e6, %e14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x70,0x6e]
madd %e6, %e14, %d14, -256

# CHECK-INST: madd %e6, %e14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x77,0x6e]
madd %e6, %e14, %d14, -129

# CHECK-INST: madd %e6, %e14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x7f,0x6e]
madd %e6, %e14, %d14, -1

# CHECK-INST: madd %e6, %e14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x60,0x6e]
madd %e6, %e14, %d14, 0

# CHECK-INST: madd %e6, %e14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x60,0x6e]
madd %e6, %e14, %d14, 1

# CHECK-INST: madd %e6, %e14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x68,0x6e]
madd %e6, %e14, %d14, 128

# CHECK-INST: madd %e6, %e14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x6f,0x6e]
madd %e6, %e14, %d14, 255

# CHECK-INST: madd %e6, %e14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x70,0x6e]
madd %e6, %e14, %d15, -256

# CHECK-INST: madd %e6, %e14, %d15, -129
# CHECK: encoding: [0x13,0xff,0x77,0x6e]
madd %e6, %e14, %d15, -129

# CHECK-INST: madd %e6, %e14, %d15, -1
# CHECK: encoding: [0x13,0xff,0x7f,0x6e]
madd %e6, %e14, %d15, -1

# CHECK-INST: madd %e6, %e14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x60,0x6e]
madd %e6, %e14, %d15, 0

# CHECK-INST: madd %e6, %e14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x60,0x6e]
madd %e6, %e14, %d15, 1

# CHECK-INST: madd %e6, %e14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x68,0x6e]
madd %e6, %e14, %d15, 128

# CHECK-INST: madd %e6, %e14, %d15, 255
# CHECK: encoding: [0x13,0xff,0x6f,0x6e]
madd %e6, %e14, %d15, 255

# CHECK-INST: madd %e14, %e0, %d0, -256
# CHECK: encoding: [0x13,0x00,0x70,0xe0]
madd %e14, %e0, %d0, -256

# CHECK-INST: madd %e14, %e0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x77,0xe0]
madd %e14, %e0, %d0, -129

# CHECK-INST: madd %e14, %e0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x7f,0xe0]
madd %e14, %e0, %d0, -1

# CHECK-INST: madd %e14, %e0, %d0, 0
# CHECK: encoding: [0x13,0x00,0x60,0xe0]
madd %e14, %e0, %d0, 0

# CHECK-INST: madd %e14, %e0, %d0, 1
# CHECK: encoding: [0x13,0x10,0x60,0xe0]
madd %e14, %e0, %d0, 1

# CHECK-INST: madd %e14, %e0, %d0, 128
# CHECK: encoding: [0x13,0x00,0x68,0xe0]
madd %e14, %e0, %d0, 128

# CHECK-INST: madd %e14, %e0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x6f,0xe0]
madd %e14, %e0, %d0, 255

# CHECK-INST: madd %e14, %e0, %d1, -256
# CHECK: encoding: [0x13,0x01,0x70,0xe0]
madd %e14, %e0, %d1, -256

# CHECK-INST: madd %e14, %e0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x77,0xe0]
madd %e14, %e0, %d1, -129

# CHECK-INST: madd %e14, %e0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x7f,0xe0]
madd %e14, %e0, %d1, -1

# CHECK-INST: madd %e14, %e0, %d1, 0
# CHECK: encoding: [0x13,0x01,0x60,0xe0]
madd %e14, %e0, %d1, 0

# CHECK-INST: madd %e14, %e0, %d1, 1
# CHECK: encoding: [0x13,0x11,0x60,0xe0]
madd %e14, %e0, %d1, 1

# CHECK-INST: madd %e14, %e0, %d1, 128
# CHECK: encoding: [0x13,0x01,0x68,0xe0]
madd %e14, %e0, %d1, 128

# CHECK-INST: madd %e14, %e0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x6f,0xe0]
madd %e14, %e0, %d1, 255

# CHECK-INST: madd %e14, %e0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x70,0xe0]
madd %e14, %e0, %d14, -256

# CHECK-INST: madd %e14, %e0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x77,0xe0]
madd %e14, %e0, %d14, -129

# CHECK-INST: madd %e14, %e0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x7f,0xe0]
madd %e14, %e0, %d14, -1

# CHECK-INST: madd %e14, %e0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x60,0xe0]
madd %e14, %e0, %d14, 0

# CHECK-INST: madd %e14, %e0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x60,0xe0]
madd %e14, %e0, %d14, 1

# CHECK-INST: madd %e14, %e0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x68,0xe0]
madd %e14, %e0, %d14, 128

# CHECK-INST: madd %e14, %e0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x6f,0xe0]
madd %e14, %e0, %d14, 255

# CHECK-INST: madd %e14, %e0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x70,0xe0]
madd %e14, %e0, %d15, -256

# CHECK-INST: madd %e14, %e0, %d15, -129
# CHECK: encoding: [0x13,0xff,0x77,0xe0]
madd %e14, %e0, %d15, -129

# CHECK-INST: madd %e14, %e0, %d15, -1
# CHECK: encoding: [0x13,0xff,0x7f,0xe0]
madd %e14, %e0, %d15, -1

# CHECK-INST: madd %e14, %e0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x60,0xe0]
madd %e14, %e0, %d15, 0

# CHECK-INST: madd %e14, %e0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x60,0xe0]
madd %e14, %e0, %d15, 1

# CHECK-INST: madd %e14, %e0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x68,0xe0]
madd %e14, %e0, %d15, 128

# CHECK-INST: madd %e14, %e0, %d15, 255
# CHECK: encoding: [0x13,0xff,0x6f,0xe0]
madd %e14, %e0, %d15, 255

# CHECK-INST: madd %e14, %e6, %d0, -256
# CHECK: encoding: [0x13,0x00,0x70,0xe6]
madd %e14, %e6, %d0, -256

# CHECK-INST: madd %e14, %e6, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x77,0xe6]
madd %e14, %e6, %d0, -129

# CHECK-INST: madd %e14, %e6, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x7f,0xe6]
madd %e14, %e6, %d0, -1

# CHECK-INST: madd %e14, %e6, %d0, 0
# CHECK: encoding: [0x13,0x00,0x60,0xe6]
madd %e14, %e6, %d0, 0

# CHECK-INST: madd %e14, %e6, %d0, 1
# CHECK: encoding: [0x13,0x10,0x60,0xe6]
madd %e14, %e6, %d0, 1

# CHECK-INST: madd %e14, %e6, %d0, 128
# CHECK: encoding: [0x13,0x00,0x68,0xe6]
madd %e14, %e6, %d0, 128

# CHECK-INST: madd %e14, %e6, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x6f,0xe6]
madd %e14, %e6, %d0, 255

# CHECK-INST: madd %e14, %e6, %d1, -256
# CHECK: encoding: [0x13,0x01,0x70,0xe6]
madd %e14, %e6, %d1, -256

# CHECK-INST: madd %e14, %e6, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x77,0xe6]
madd %e14, %e6, %d1, -129

# CHECK-INST: madd %e14, %e6, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x7f,0xe6]
madd %e14, %e6, %d1, -1

# CHECK-INST: madd %e14, %e6, %d1, 0
# CHECK: encoding: [0x13,0x01,0x60,0xe6]
madd %e14, %e6, %d1, 0

# CHECK-INST: madd %e14, %e6, %d1, 1
# CHECK: encoding: [0x13,0x11,0x60,0xe6]
madd %e14, %e6, %d1, 1

# CHECK-INST: madd %e14, %e6, %d1, 128
# CHECK: encoding: [0x13,0x01,0x68,0xe6]
madd %e14, %e6, %d1, 128

# CHECK-INST: madd %e14, %e6, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x6f,0xe6]
madd %e14, %e6, %d1, 255

# CHECK-INST: madd %e14, %e6, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x70,0xe6]
madd %e14, %e6, %d14, -256

# CHECK-INST: madd %e14, %e6, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x77,0xe6]
madd %e14, %e6, %d14, -129

# CHECK-INST: madd %e14, %e6, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x7f,0xe6]
madd %e14, %e6, %d14, -1

# CHECK-INST: madd %e14, %e6, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x60,0xe6]
madd %e14, %e6, %d14, 0

# CHECK-INST: madd %e14, %e6, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x60,0xe6]
madd %e14, %e6, %d14, 1

# CHECK-INST: madd %e14, %e6, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x68,0xe6]
madd %e14, %e6, %d14, 128

# CHECK-INST: madd %e14, %e6, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x6f,0xe6]
madd %e14, %e6, %d14, 255

# CHECK-INST: madd %e14, %e6, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x70,0xe6]
madd %e14, %e6, %d15, -256

# CHECK-INST: madd %e14, %e6, %d15, -129
# CHECK: encoding: [0x13,0xff,0x77,0xe6]
madd %e14, %e6, %d15, -129

# CHECK-INST: madd %e14, %e6, %d15, -1
# CHECK: encoding: [0x13,0xff,0x7f,0xe6]
madd %e14, %e6, %d15, -1

# CHECK-INST: madd %e14, %e6, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x60,0xe6]
madd %e14, %e6, %d15, 0

# CHECK-INST: madd %e14, %e6, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x60,0xe6]
madd %e14, %e6, %d15, 1

# CHECK-INST: madd %e14, %e6, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x68,0xe6]
madd %e14, %e6, %d15, 128

# CHECK-INST: madd %e14, %e6, %d15, 255
# CHECK: encoding: [0x13,0xff,0x6f,0xe6]
madd %e14, %e6, %d15, 255

# CHECK-INST: madd %e14, %e14, %d0, -256
# CHECK: encoding: [0x13,0x00,0x70,0xee]
madd %e14, %e14, %d0, -256

# CHECK-INST: madd %e14, %e14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0x77,0xee]
madd %e14, %e14, %d0, -129

# CHECK-INST: madd %e14, %e14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0x7f,0xee]
madd %e14, %e14, %d0, -1

# CHECK-INST: madd %e14, %e14, %d0, 0
# CHECK: encoding: [0x13,0x00,0x60,0xee]
madd %e14, %e14, %d0, 0

# CHECK-INST: madd %e14, %e14, %d0, 1
# CHECK: encoding: [0x13,0x10,0x60,0xee]
madd %e14, %e14, %d0, 1

# CHECK-INST: madd %e14, %e14, %d0, 128
# CHECK: encoding: [0x13,0x00,0x68,0xee]
madd %e14, %e14, %d0, 128

# CHECK-INST: madd %e14, %e14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0x6f,0xee]
madd %e14, %e14, %d0, 255

# CHECK-INST: madd %e14, %e14, %d1, -256
# CHECK: encoding: [0x13,0x01,0x70,0xee]
madd %e14, %e14, %d1, -256

# CHECK-INST: madd %e14, %e14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0x77,0xee]
madd %e14, %e14, %d1, -129

# CHECK-INST: madd %e14, %e14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0x7f,0xee]
madd %e14, %e14, %d1, -1

# CHECK-INST: madd %e14, %e14, %d1, 0
# CHECK: encoding: [0x13,0x01,0x60,0xee]
madd %e14, %e14, %d1, 0

# CHECK-INST: madd %e14, %e14, %d1, 1
# CHECK: encoding: [0x13,0x11,0x60,0xee]
madd %e14, %e14, %d1, 1

# CHECK-INST: madd %e14, %e14, %d1, 128
# CHECK: encoding: [0x13,0x01,0x68,0xee]
madd %e14, %e14, %d1, 128

# CHECK-INST: madd %e14, %e14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0x6f,0xee]
madd %e14, %e14, %d1, 255

# CHECK-INST: madd %e14, %e14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0x70,0xee]
madd %e14, %e14, %d14, -256

# CHECK-INST: madd %e14, %e14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0x77,0xee]
madd %e14, %e14, %d14, -129

# CHECK-INST: madd %e14, %e14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0x7f,0xee]
madd %e14, %e14, %d14, -1

# CHECK-INST: madd %e14, %e14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0x60,0xee]
madd %e14, %e14, %d14, 0

# CHECK-INST: madd %e14, %e14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0x60,0xee]
madd %e14, %e14, %d14, 1

# CHECK-INST: madd %e14, %e14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0x68,0xee]
madd %e14, %e14, %d14, 128

# CHECK-INST: madd %e14, %e14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0x6f,0xee]
madd %e14, %e14, %d14, 255

# CHECK-INST: madd %e14, %e14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0x70,0xee]
madd %e14, %e14, %d15, -256

# CHECK-INST: madd %e14, %e14, %d15, -129
# CHECK: encoding: [0x13,0xff,0x77,0xee]
madd %e14, %e14, %d15, -129

# CHECK-INST: madd %e14, %e14, %d15, -1
# CHECK: encoding: [0x13,0xff,0x7f,0xee]
madd %e14, %e14, %d15, -1

# CHECK-INST: madd %e14, %e14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0x60,0xee]
madd %e14, %e14, %d15, 0

# CHECK-INST: madd %e14, %e14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0x60,0xee]
madd %e14, %e14, %d15, 1

# CHECK-INST: madd %e14, %e14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0x68,0xee]
madd %e14, %e14, %d15, 128

# CHECK-INST: madd %e14, %e14, %d15, 255
# CHECK: encoding: [0x13,0xff,0x6f,0xee]
madd %e14, %e14, %d15, 255

# CHECK-INST: madd.u %e0, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x68,0x00]
madd.u %e0, %e0, %d0, %d0

# CHECK-INST: madd.u %e0, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x68,0x00]
madd.u %e0, %e0, %d0, %d1

# CHECK-INST: madd.u %e0, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x68,0x00]
madd.u %e0, %e0, %d0, %d14

# CHECK-INST: madd.u %e0, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x68,0x00]
madd.u %e0, %e0, %d0, %d15

# CHECK-INST: madd.u %e0, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x68,0x00]
madd.u %e0, %e0, %d1, %d0

# CHECK-INST: madd.u %e0, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x68,0x00]
madd.u %e0, %e0, %d1, %d1

# CHECK-INST: madd.u %e0, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x68,0x00]
madd.u %e0, %e0, %d1, %d14

# CHECK-INST: madd.u %e0, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x68,0x00]
madd.u %e0, %e0, %d1, %d15

# CHECK-INST: madd.u %e0, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x68,0x00]
madd.u %e0, %e0, %d14, %d0

# CHECK-INST: madd.u %e0, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x68,0x00]
madd.u %e0, %e0, %d14, %d1

# CHECK-INST: madd.u %e0, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x68,0x00]
madd.u %e0, %e0, %d14, %d14

# CHECK-INST: madd.u %e0, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x68,0x00]
madd.u %e0, %e0, %d14, %d15

# CHECK-INST: madd.u %e0, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x68,0x00]
madd.u %e0, %e0, %d15, %d0

# CHECK-INST: madd.u %e0, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x68,0x00]
madd.u %e0, %e0, %d15, %d1

# CHECK-INST: madd.u %e0, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x68,0x00]
madd.u %e0, %e0, %d15, %d14

# CHECK-INST: madd.u %e0, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x68,0x00]
madd.u %e0, %e0, %d15, %d15

# CHECK-INST: madd.u %e0, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x68,0x06]
madd.u %e0, %e6, %d0, %d0

# CHECK-INST: madd.u %e0, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x68,0x06]
madd.u %e0, %e6, %d0, %d1

# CHECK-INST: madd.u %e0, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x68,0x06]
madd.u %e0, %e6, %d0, %d14

# CHECK-INST: madd.u %e0, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x68,0x06]
madd.u %e0, %e6, %d0, %d15

# CHECK-INST: madd.u %e0, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x68,0x06]
madd.u %e0, %e6, %d1, %d0

# CHECK-INST: madd.u %e0, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x68,0x06]
madd.u %e0, %e6, %d1, %d1

# CHECK-INST: madd.u %e0, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x68,0x06]
madd.u %e0, %e6, %d1, %d14

# CHECK-INST: madd.u %e0, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x68,0x06]
madd.u %e0, %e6, %d1, %d15

# CHECK-INST: madd.u %e0, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x68,0x06]
madd.u %e0, %e6, %d14, %d0

# CHECK-INST: madd.u %e0, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x68,0x06]
madd.u %e0, %e6, %d14, %d1

# CHECK-INST: madd.u %e0, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x68,0x06]
madd.u %e0, %e6, %d14, %d14

# CHECK-INST: madd.u %e0, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x68,0x06]
madd.u %e0, %e6, %d14, %d15

# CHECK-INST: madd.u %e0, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x68,0x06]
madd.u %e0, %e6, %d15, %d0

# CHECK-INST: madd.u %e0, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x68,0x06]
madd.u %e0, %e6, %d15, %d1

# CHECK-INST: madd.u %e0, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x68,0x06]
madd.u %e0, %e6, %d15, %d14

# CHECK-INST: madd.u %e0, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x68,0x06]
madd.u %e0, %e6, %d15, %d15

# CHECK-INST: madd.u %e0, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x68,0x0e]
madd.u %e0, %e14, %d0, %d0

# CHECK-INST: madd.u %e0, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x68,0x0e]
madd.u %e0, %e14, %d0, %d1

# CHECK-INST: madd.u %e0, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x68,0x0e]
madd.u %e0, %e14, %d0, %d14

# CHECK-INST: madd.u %e0, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x68,0x0e]
madd.u %e0, %e14, %d0, %d15

# CHECK-INST: madd.u %e0, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x68,0x0e]
madd.u %e0, %e14, %d1, %d0

# CHECK-INST: madd.u %e0, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x68,0x0e]
madd.u %e0, %e14, %d1, %d1

# CHECK-INST: madd.u %e0, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x68,0x0e]
madd.u %e0, %e14, %d1, %d14

# CHECK-INST: madd.u %e0, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x68,0x0e]
madd.u %e0, %e14, %d1, %d15

# CHECK-INST: madd.u %e0, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x68,0x0e]
madd.u %e0, %e14, %d14, %d0

# CHECK-INST: madd.u %e0, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x68,0x0e]
madd.u %e0, %e14, %d14, %d1

# CHECK-INST: madd.u %e0, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x68,0x0e]
madd.u %e0, %e14, %d14, %d14

# CHECK-INST: madd.u %e0, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x68,0x0e]
madd.u %e0, %e14, %d14, %d15

# CHECK-INST: madd.u %e0, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x68,0x0e]
madd.u %e0, %e14, %d15, %d0

# CHECK-INST: madd.u %e0, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x68,0x0e]
madd.u %e0, %e14, %d15, %d1

# CHECK-INST: madd.u %e0, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x68,0x0e]
madd.u %e0, %e14, %d15, %d14

# CHECK-INST: madd.u %e0, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x68,0x0e]
madd.u %e0, %e14, %d15, %d15

# CHECK-INST: madd.u %e6, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x68,0x60]
madd.u %e6, %e0, %d0, %d0

# CHECK-INST: madd.u %e6, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x68,0x60]
madd.u %e6, %e0, %d0, %d1

# CHECK-INST: madd.u %e6, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x68,0x60]
madd.u %e6, %e0, %d0, %d14

# CHECK-INST: madd.u %e6, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x68,0x60]
madd.u %e6, %e0, %d0, %d15

# CHECK-INST: madd.u %e6, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x68,0x60]
madd.u %e6, %e0, %d1, %d0

# CHECK-INST: madd.u %e6, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x68,0x60]
madd.u %e6, %e0, %d1, %d1

# CHECK-INST: madd.u %e6, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x68,0x60]
madd.u %e6, %e0, %d1, %d14

# CHECK-INST: madd.u %e6, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x68,0x60]
madd.u %e6, %e0, %d1, %d15

# CHECK-INST: madd.u %e6, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x68,0x60]
madd.u %e6, %e0, %d14, %d0

# CHECK-INST: madd.u %e6, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x68,0x60]
madd.u %e6, %e0, %d14, %d1

# CHECK-INST: madd.u %e6, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x68,0x60]
madd.u %e6, %e0, %d14, %d14

# CHECK-INST: madd.u %e6, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x68,0x60]
madd.u %e6, %e0, %d14, %d15

# CHECK-INST: madd.u %e6, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x68,0x60]
madd.u %e6, %e0, %d15, %d0

# CHECK-INST: madd.u %e6, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x68,0x60]
madd.u %e6, %e0, %d15, %d1

# CHECK-INST: madd.u %e6, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x68,0x60]
madd.u %e6, %e0, %d15, %d14

# CHECK-INST: madd.u %e6, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x68,0x60]
madd.u %e6, %e0, %d15, %d15

# CHECK-INST: madd.u %e6, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x68,0x66]
madd.u %e6, %e6, %d0, %d0

# CHECK-INST: madd.u %e6, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x68,0x66]
madd.u %e6, %e6, %d0, %d1

# CHECK-INST: madd.u %e6, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x68,0x66]
madd.u %e6, %e6, %d0, %d14

# CHECK-INST: madd.u %e6, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x68,0x66]
madd.u %e6, %e6, %d0, %d15

# CHECK-INST: madd.u %e6, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x68,0x66]
madd.u %e6, %e6, %d1, %d0

# CHECK-INST: madd.u %e6, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x68,0x66]
madd.u %e6, %e6, %d1, %d1

# CHECK-INST: madd.u %e6, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x68,0x66]
madd.u %e6, %e6, %d1, %d14

# CHECK-INST: madd.u %e6, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x68,0x66]
madd.u %e6, %e6, %d1, %d15

# CHECK-INST: madd.u %e6, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x68,0x66]
madd.u %e6, %e6, %d14, %d0

# CHECK-INST: madd.u %e6, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x68,0x66]
madd.u %e6, %e6, %d14, %d1

# CHECK-INST: madd.u %e6, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x68,0x66]
madd.u %e6, %e6, %d14, %d14

# CHECK-INST: madd.u %e6, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x68,0x66]
madd.u %e6, %e6, %d14, %d15

# CHECK-INST: madd.u %e6, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x68,0x66]
madd.u %e6, %e6, %d15, %d0

# CHECK-INST: madd.u %e6, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x68,0x66]
madd.u %e6, %e6, %d15, %d1

# CHECK-INST: madd.u %e6, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x68,0x66]
madd.u %e6, %e6, %d15, %d14

# CHECK-INST: madd.u %e6, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x68,0x66]
madd.u %e6, %e6, %d15, %d15

# CHECK-INST: madd.u %e6, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x68,0x6e]
madd.u %e6, %e14, %d0, %d0

# CHECK-INST: madd.u %e6, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x68,0x6e]
madd.u %e6, %e14, %d0, %d1

# CHECK-INST: madd.u %e6, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x68,0x6e]
madd.u %e6, %e14, %d0, %d14

# CHECK-INST: madd.u %e6, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x68,0x6e]
madd.u %e6, %e14, %d0, %d15

# CHECK-INST: madd.u %e6, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x68,0x6e]
madd.u %e6, %e14, %d1, %d0

# CHECK-INST: madd.u %e6, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x68,0x6e]
madd.u %e6, %e14, %d1, %d1

# CHECK-INST: madd.u %e6, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x68,0x6e]
madd.u %e6, %e14, %d1, %d14

# CHECK-INST: madd.u %e6, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x68,0x6e]
madd.u %e6, %e14, %d1, %d15

# CHECK-INST: madd.u %e6, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x68,0x6e]
madd.u %e6, %e14, %d14, %d0

# CHECK-INST: madd.u %e6, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x68,0x6e]
madd.u %e6, %e14, %d14, %d1

# CHECK-INST: madd.u %e6, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x68,0x6e]
madd.u %e6, %e14, %d14, %d14

# CHECK-INST: madd.u %e6, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x68,0x6e]
madd.u %e6, %e14, %d14, %d15

# CHECK-INST: madd.u %e6, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x68,0x6e]
madd.u %e6, %e14, %d15, %d0

# CHECK-INST: madd.u %e6, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x68,0x6e]
madd.u %e6, %e14, %d15, %d1

# CHECK-INST: madd.u %e6, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x68,0x6e]
madd.u %e6, %e14, %d15, %d14

# CHECK-INST: madd.u %e6, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x68,0x6e]
madd.u %e6, %e14, %d15, %d15

# CHECK-INST: madd.u %e14, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x68,0xe0]
madd.u %e14, %e0, %d0, %d0

# CHECK-INST: madd.u %e14, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x68,0xe0]
madd.u %e14, %e0, %d0, %d1

# CHECK-INST: madd.u %e14, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x68,0xe0]
madd.u %e14, %e0, %d0, %d14

# CHECK-INST: madd.u %e14, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x68,0xe0]
madd.u %e14, %e0, %d0, %d15

# CHECK-INST: madd.u %e14, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x68,0xe0]
madd.u %e14, %e0, %d1, %d0

# CHECK-INST: madd.u %e14, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x68,0xe0]
madd.u %e14, %e0, %d1, %d1

# CHECK-INST: madd.u %e14, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x68,0xe0]
madd.u %e14, %e0, %d1, %d14

# CHECK-INST: madd.u %e14, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x68,0xe0]
madd.u %e14, %e0, %d1, %d15

# CHECK-INST: madd.u %e14, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x68,0xe0]
madd.u %e14, %e0, %d14, %d0

# CHECK-INST: madd.u %e14, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x68,0xe0]
madd.u %e14, %e0, %d14, %d1

# CHECK-INST: madd.u %e14, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x68,0xe0]
madd.u %e14, %e0, %d14, %d14

# CHECK-INST: madd.u %e14, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x68,0xe0]
madd.u %e14, %e0, %d14, %d15

# CHECK-INST: madd.u %e14, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x68,0xe0]
madd.u %e14, %e0, %d15, %d0

# CHECK-INST: madd.u %e14, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x68,0xe0]
madd.u %e14, %e0, %d15, %d1

# CHECK-INST: madd.u %e14, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x68,0xe0]
madd.u %e14, %e0, %d15, %d14

# CHECK-INST: madd.u %e14, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x68,0xe0]
madd.u %e14, %e0, %d15, %d15

# CHECK-INST: madd.u %e14, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x68,0xe6]
madd.u %e14, %e6, %d0, %d0

# CHECK-INST: madd.u %e14, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x68,0xe6]
madd.u %e14, %e6, %d0, %d1

# CHECK-INST: madd.u %e14, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x68,0xe6]
madd.u %e14, %e6, %d0, %d14

# CHECK-INST: madd.u %e14, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x68,0xe6]
madd.u %e14, %e6, %d0, %d15

# CHECK-INST: madd.u %e14, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x68,0xe6]
madd.u %e14, %e6, %d1, %d0

# CHECK-INST: madd.u %e14, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x68,0xe6]
madd.u %e14, %e6, %d1, %d1

# CHECK-INST: madd.u %e14, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x68,0xe6]
madd.u %e14, %e6, %d1, %d14

# CHECK-INST: madd.u %e14, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x68,0xe6]
madd.u %e14, %e6, %d1, %d15

# CHECK-INST: madd.u %e14, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x68,0xe6]
madd.u %e14, %e6, %d14, %d0

# CHECK-INST: madd.u %e14, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x68,0xe6]
madd.u %e14, %e6, %d14, %d1

# CHECK-INST: madd.u %e14, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x68,0xe6]
madd.u %e14, %e6, %d14, %d14

# CHECK-INST: madd.u %e14, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x68,0xe6]
madd.u %e14, %e6, %d14, %d15

# CHECK-INST: madd.u %e14, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x68,0xe6]
madd.u %e14, %e6, %d15, %d0

# CHECK-INST: madd.u %e14, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x68,0xe6]
madd.u %e14, %e6, %d15, %d1

# CHECK-INST: madd.u %e14, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x68,0xe6]
madd.u %e14, %e6, %d15, %d14

# CHECK-INST: madd.u %e14, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x68,0xe6]
madd.u %e14, %e6, %d15, %d15

# CHECK-INST: madd.u %e14, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x68,0xee]
madd.u %e14, %e14, %d0, %d0

# CHECK-INST: madd.u %e14, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x68,0xee]
madd.u %e14, %e14, %d0, %d1

# CHECK-INST: madd.u %e14, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x68,0xee]
madd.u %e14, %e14, %d0, %d14

# CHECK-INST: madd.u %e14, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x68,0xee]
madd.u %e14, %e14, %d0, %d15

# CHECK-INST: madd.u %e14, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x68,0xee]
madd.u %e14, %e14, %d1, %d0

# CHECK-INST: madd.u %e14, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x68,0xee]
madd.u %e14, %e14, %d1, %d1

# CHECK-INST: madd.u %e14, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x68,0xee]
madd.u %e14, %e14, %d1, %d14

# CHECK-INST: madd.u %e14, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x68,0xee]
madd.u %e14, %e14, %d1, %d15

# CHECK-INST: madd.u %e14, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x68,0xee]
madd.u %e14, %e14, %d14, %d0

# CHECK-INST: madd.u %e14, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x68,0xee]
madd.u %e14, %e14, %d14, %d1

# CHECK-INST: madd.u %e14, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x68,0xee]
madd.u %e14, %e14, %d14, %d14

# CHECK-INST: madd.u %e14, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x68,0xee]
madd.u %e14, %e14, %d14, %d15

# CHECK-INST: madd.u %e14, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x68,0xee]
madd.u %e14, %e14, %d15, %d0

# CHECK-INST: madd.u %e14, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x68,0xee]
madd.u %e14, %e14, %d15, %d1

# CHECK-INST: madd.u %e14, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x68,0xee]
madd.u %e14, %e14, %d15, %d14

# CHECK-INST: madd.u %e14, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x68,0xee]
madd.u %e14, %e14, %d15, %d15

# CHECK-INST: madd.u %e0, %e0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x50,0x00]
madd.u %e0, %e0, %d0, 271

# CHECK-INST: madd.u %e0, %e0, %d0, 496
# CHECK: encoding: [0x13,0x00,0x5f,0x00]
madd.u %e0, %e0, %d0, 496

# CHECK-INST: madd.u %e0, %e0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x5f,0x00]
madd.u %e0, %e0, %d0, 511

# CHECK-INST: madd.u %e0, %e0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x50,0x00]
madd.u %e0, %e0, %d1, 271

# CHECK-INST: madd.u %e0, %e0, %d1, 496
# CHECK: encoding: [0x13,0x01,0x5f,0x00]
madd.u %e0, %e0, %d1, 496

# CHECK-INST: madd.u %e0, %e0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x5f,0x00]
madd.u %e0, %e0, %d1, 511

# CHECK-INST: madd.u %e0, %e0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x50,0x00]
madd.u %e0, %e0, %d14, 271

# CHECK-INST: madd.u %e0, %e0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x5f,0x00]
madd.u %e0, %e0, %d14, 496

# CHECK-INST: madd.u %e0, %e0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x5f,0x00]
madd.u %e0, %e0, %d14, 511

# CHECK-INST: madd.u %e0, %e0, %d15, 271
# CHECK: encoding: [0x13,0xff,0x50,0x00]
madd.u %e0, %e0, %d15, 271

# CHECK-INST: madd.u %e0, %e0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x5f,0x00]
madd.u %e0, %e0, %d15, 496

# CHECK-INST: madd.u %e0, %e0, %d15, 511
# CHECK: encoding: [0x13,0xff,0x5f,0x00]
madd.u %e0, %e0, %d15, 511

# CHECK-INST: madd.u %e0, %e6, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x50,0x06]
madd.u %e0, %e6, %d0, 271

# CHECK-INST: madd.u %e0, %e6, %d0, 496
# CHECK: encoding: [0x13,0x00,0x5f,0x06]
madd.u %e0, %e6, %d0, 496

# CHECK-INST: madd.u %e0, %e6, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x5f,0x06]
madd.u %e0, %e6, %d0, 511

# CHECK-INST: madd.u %e0, %e6, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x50,0x06]
madd.u %e0, %e6, %d1, 271

# CHECK-INST: madd.u %e0, %e6, %d1, 496
# CHECK: encoding: [0x13,0x01,0x5f,0x06]
madd.u %e0, %e6, %d1, 496

# CHECK-INST: madd.u %e0, %e6, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x5f,0x06]
madd.u %e0, %e6, %d1, 511

# CHECK-INST: madd.u %e0, %e6, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x50,0x06]
madd.u %e0, %e6, %d14, 271

# CHECK-INST: madd.u %e0, %e6, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x5f,0x06]
madd.u %e0, %e6, %d14, 496

# CHECK-INST: madd.u %e0, %e6, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x5f,0x06]
madd.u %e0, %e6, %d14, 511

# CHECK-INST: madd.u %e0, %e6, %d15, 271
# CHECK: encoding: [0x13,0xff,0x50,0x06]
madd.u %e0, %e6, %d15, 271

# CHECK-INST: madd.u %e0, %e6, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x5f,0x06]
madd.u %e0, %e6, %d15, 496

# CHECK-INST: madd.u %e0, %e6, %d15, 511
# CHECK: encoding: [0x13,0xff,0x5f,0x06]
madd.u %e0, %e6, %d15, 511

# CHECK-INST: madd.u %e0, %e14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x50,0x0e]
madd.u %e0, %e14, %d0, 271

# CHECK-INST: madd.u %e0, %e14, %d0, 496
# CHECK: encoding: [0x13,0x00,0x5f,0x0e]
madd.u %e0, %e14, %d0, 496

# CHECK-INST: madd.u %e0, %e14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x5f,0x0e]
madd.u %e0, %e14, %d0, 511

# CHECK-INST: madd.u %e0, %e14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x50,0x0e]
madd.u %e0, %e14, %d1, 271

# CHECK-INST: madd.u %e0, %e14, %d1, 496
# CHECK: encoding: [0x13,0x01,0x5f,0x0e]
madd.u %e0, %e14, %d1, 496

# CHECK-INST: madd.u %e0, %e14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x5f,0x0e]
madd.u %e0, %e14, %d1, 511

# CHECK-INST: madd.u %e0, %e14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x50,0x0e]
madd.u %e0, %e14, %d14, 271

# CHECK-INST: madd.u %e0, %e14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x5f,0x0e]
madd.u %e0, %e14, %d14, 496

# CHECK-INST: madd.u %e0, %e14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x5f,0x0e]
madd.u %e0, %e14, %d14, 511

# CHECK-INST: madd.u %e0, %e14, %d15, 271
# CHECK: encoding: [0x13,0xff,0x50,0x0e]
madd.u %e0, %e14, %d15, 271

# CHECK-INST: madd.u %e0, %e14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x5f,0x0e]
madd.u %e0, %e14, %d15, 496

# CHECK-INST: madd.u %e0, %e14, %d15, 511
# CHECK: encoding: [0x13,0xff,0x5f,0x0e]
madd.u %e0, %e14, %d15, 511

# CHECK-INST: madd.u %e6, %e0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x50,0x60]
madd.u %e6, %e0, %d0, 271

# CHECK-INST: madd.u %e6, %e0, %d0, 496
# CHECK: encoding: [0x13,0x00,0x5f,0x60]
madd.u %e6, %e0, %d0, 496

# CHECK-INST: madd.u %e6, %e0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x5f,0x60]
madd.u %e6, %e0, %d0, 511

# CHECK-INST: madd.u %e6, %e0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x50,0x60]
madd.u %e6, %e0, %d1, 271

# CHECK-INST: madd.u %e6, %e0, %d1, 496
# CHECK: encoding: [0x13,0x01,0x5f,0x60]
madd.u %e6, %e0, %d1, 496

# CHECK-INST: madd.u %e6, %e0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x5f,0x60]
madd.u %e6, %e0, %d1, 511

# CHECK-INST: madd.u %e6, %e0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x50,0x60]
madd.u %e6, %e0, %d14, 271

# CHECK-INST: madd.u %e6, %e0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x5f,0x60]
madd.u %e6, %e0, %d14, 496

# CHECK-INST: madd.u %e6, %e0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x5f,0x60]
madd.u %e6, %e0, %d14, 511

# CHECK-INST: madd.u %e6, %e0, %d15, 271
# CHECK: encoding: [0x13,0xff,0x50,0x60]
madd.u %e6, %e0, %d15, 271

# CHECK-INST: madd.u %e6, %e0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x5f,0x60]
madd.u %e6, %e0, %d15, 496

# CHECK-INST: madd.u %e6, %e0, %d15, 511
# CHECK: encoding: [0x13,0xff,0x5f,0x60]
madd.u %e6, %e0, %d15, 511

# CHECK-INST: madd.u %e6, %e6, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x50,0x66]
madd.u %e6, %e6, %d0, 271

# CHECK-INST: madd.u %e6, %e6, %d0, 496
# CHECK: encoding: [0x13,0x00,0x5f,0x66]
madd.u %e6, %e6, %d0, 496

# CHECK-INST: madd.u %e6, %e6, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x5f,0x66]
madd.u %e6, %e6, %d0, 511

# CHECK-INST: madd.u %e6, %e6, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x50,0x66]
madd.u %e6, %e6, %d1, 271

# CHECK-INST: madd.u %e6, %e6, %d1, 496
# CHECK: encoding: [0x13,0x01,0x5f,0x66]
madd.u %e6, %e6, %d1, 496

# CHECK-INST: madd.u %e6, %e6, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x5f,0x66]
madd.u %e6, %e6, %d1, 511

# CHECK-INST: madd.u %e6, %e6, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x50,0x66]
madd.u %e6, %e6, %d14, 271

# CHECK-INST: madd.u %e6, %e6, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x5f,0x66]
madd.u %e6, %e6, %d14, 496

# CHECK-INST: madd.u %e6, %e6, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x5f,0x66]
madd.u %e6, %e6, %d14, 511

# CHECK-INST: madd.u %e6, %e6, %d15, 271
# CHECK: encoding: [0x13,0xff,0x50,0x66]
madd.u %e6, %e6, %d15, 271

# CHECK-INST: madd.u %e6, %e6, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x5f,0x66]
madd.u %e6, %e6, %d15, 496

# CHECK-INST: madd.u %e6, %e6, %d15, 511
# CHECK: encoding: [0x13,0xff,0x5f,0x66]
madd.u %e6, %e6, %d15, 511

# CHECK-INST: madd.u %e6, %e14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x50,0x6e]
madd.u %e6, %e14, %d0, 271

# CHECK-INST: madd.u %e6, %e14, %d0, 496
# CHECK: encoding: [0x13,0x00,0x5f,0x6e]
madd.u %e6, %e14, %d0, 496

# CHECK-INST: madd.u %e6, %e14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x5f,0x6e]
madd.u %e6, %e14, %d0, 511

# CHECK-INST: madd.u %e6, %e14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x50,0x6e]
madd.u %e6, %e14, %d1, 271

# CHECK-INST: madd.u %e6, %e14, %d1, 496
# CHECK: encoding: [0x13,0x01,0x5f,0x6e]
madd.u %e6, %e14, %d1, 496

# CHECK-INST: madd.u %e6, %e14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x5f,0x6e]
madd.u %e6, %e14, %d1, 511

# CHECK-INST: madd.u %e6, %e14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x50,0x6e]
madd.u %e6, %e14, %d14, 271

# CHECK-INST: madd.u %e6, %e14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x5f,0x6e]
madd.u %e6, %e14, %d14, 496

# CHECK-INST: madd.u %e6, %e14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x5f,0x6e]
madd.u %e6, %e14, %d14, 511

# CHECK-INST: madd.u %e6, %e14, %d15, 271
# CHECK: encoding: [0x13,0xff,0x50,0x6e]
madd.u %e6, %e14, %d15, 271

# CHECK-INST: madd.u %e6, %e14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x5f,0x6e]
madd.u %e6, %e14, %d15, 496

# CHECK-INST: madd.u %e6, %e14, %d15, 511
# CHECK: encoding: [0x13,0xff,0x5f,0x6e]
madd.u %e6, %e14, %d15, 511

# CHECK-INST: madd.u %e14, %e0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x50,0xe0]
madd.u %e14, %e0, %d0, 271

# CHECK-INST: madd.u %e14, %e0, %d0, 496
# CHECK: encoding: [0x13,0x00,0x5f,0xe0]
madd.u %e14, %e0, %d0, 496

# CHECK-INST: madd.u %e14, %e0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x5f,0xe0]
madd.u %e14, %e0, %d0, 511

# CHECK-INST: madd.u %e14, %e0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x50,0xe0]
madd.u %e14, %e0, %d1, 271

# CHECK-INST: madd.u %e14, %e0, %d1, 496
# CHECK: encoding: [0x13,0x01,0x5f,0xe0]
madd.u %e14, %e0, %d1, 496

# CHECK-INST: madd.u %e14, %e0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x5f,0xe0]
madd.u %e14, %e0, %d1, 511

# CHECK-INST: madd.u %e14, %e0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x50,0xe0]
madd.u %e14, %e0, %d14, 271

# CHECK-INST: madd.u %e14, %e0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x5f,0xe0]
madd.u %e14, %e0, %d14, 496

# CHECK-INST: madd.u %e14, %e0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x5f,0xe0]
madd.u %e14, %e0, %d14, 511

# CHECK-INST: madd.u %e14, %e0, %d15, 271
# CHECK: encoding: [0x13,0xff,0x50,0xe0]
madd.u %e14, %e0, %d15, 271

# CHECK-INST: madd.u %e14, %e0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x5f,0xe0]
madd.u %e14, %e0, %d15, 496

# CHECK-INST: madd.u %e14, %e0, %d15, 511
# CHECK: encoding: [0x13,0xff,0x5f,0xe0]
madd.u %e14, %e0, %d15, 511

# CHECK-INST: madd.u %e14, %e6, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x50,0xe6]
madd.u %e14, %e6, %d0, 271

# CHECK-INST: madd.u %e14, %e6, %d0, 496
# CHECK: encoding: [0x13,0x00,0x5f,0xe6]
madd.u %e14, %e6, %d0, 496

# CHECK-INST: madd.u %e14, %e6, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x5f,0xe6]
madd.u %e14, %e6, %d0, 511

# CHECK-INST: madd.u %e14, %e6, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x50,0xe6]
madd.u %e14, %e6, %d1, 271

# CHECK-INST: madd.u %e14, %e6, %d1, 496
# CHECK: encoding: [0x13,0x01,0x5f,0xe6]
madd.u %e14, %e6, %d1, 496

# CHECK-INST: madd.u %e14, %e6, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x5f,0xe6]
madd.u %e14, %e6, %d1, 511

# CHECK-INST: madd.u %e14, %e6, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x50,0xe6]
madd.u %e14, %e6, %d14, 271

# CHECK-INST: madd.u %e14, %e6, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x5f,0xe6]
madd.u %e14, %e6, %d14, 496

# CHECK-INST: madd.u %e14, %e6, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x5f,0xe6]
madd.u %e14, %e6, %d14, 511

# CHECK-INST: madd.u %e14, %e6, %d15, 271
# CHECK: encoding: [0x13,0xff,0x50,0xe6]
madd.u %e14, %e6, %d15, 271

# CHECK-INST: madd.u %e14, %e6, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x5f,0xe6]
madd.u %e14, %e6, %d15, 496

# CHECK-INST: madd.u %e14, %e6, %d15, 511
# CHECK: encoding: [0x13,0xff,0x5f,0xe6]
madd.u %e14, %e6, %d15, 511

# CHECK-INST: madd.u %e14, %e14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x50,0xee]
madd.u %e14, %e14, %d0, 271

# CHECK-INST: madd.u %e14, %e14, %d0, 496
# CHECK: encoding: [0x13,0x00,0x5f,0xee]
madd.u %e14, %e14, %d0, 496

# CHECK-INST: madd.u %e14, %e14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x5f,0xee]
madd.u %e14, %e14, %d0, 511

# CHECK-INST: madd.u %e14, %e14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x50,0xee]
madd.u %e14, %e14, %d1, 271

# CHECK-INST: madd.u %e14, %e14, %d1, 496
# CHECK: encoding: [0x13,0x01,0x5f,0xee]
madd.u %e14, %e14, %d1, 496

# CHECK-INST: madd.u %e14, %e14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x5f,0xee]
madd.u %e14, %e14, %d1, 511

# CHECK-INST: madd.u %e14, %e14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x50,0xee]
madd.u %e14, %e14, %d14, 271

# CHECK-INST: madd.u %e14, %e14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x5f,0xee]
madd.u %e14, %e14, %d14, 496

# CHECK-INST: madd.u %e14, %e14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x5f,0xee]
madd.u %e14, %e14, %d14, 511

# CHECK-INST: madd.u %e14, %e14, %d15, 271
# CHECK: encoding: [0x13,0xff,0x50,0xee]
madd.u %e14, %e14, %d15, 271

# CHECK-INST: madd.u %e14, %e14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x5f,0xee]
madd.u %e14, %e14, %d15, 496

# CHECK-INST: madd.u %e14, %e14, %d15, 511
# CHECK: encoding: [0x13,0xff,0x5f,0xee]
madd.u %e14, %e14, %d15, 511

# CHECK-INST: madds %d0, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0x00]
madds %d0, %d0, %d0, %d0

# CHECK-INST: madds %d0, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0x00]
madds %d0, %d0, %d0, %d1

# CHECK-INST: madds %d0, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0x00]
madds %d0, %d0, %d0, %d14

# CHECK-INST: madds %d0, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0x00]
madds %d0, %d0, %d0, %d15

# CHECK-INST: madds %d0, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0x00]
madds %d0, %d0, %d1, %d0

# CHECK-INST: madds %d0, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0x00]
madds %d0, %d0, %d1, %d1

# CHECK-INST: madds %d0, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0x00]
madds %d0, %d0, %d1, %d14

# CHECK-INST: madds %d0, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0x00]
madds %d0, %d0, %d1, %d15

# CHECK-INST: madds %d0, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0x00]
madds %d0, %d0, %d14, %d0

# CHECK-INST: madds %d0, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0x00]
madds %d0, %d0, %d14, %d1

# CHECK-INST: madds %d0, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0x00]
madds %d0, %d0, %d14, %d14

# CHECK-INST: madds %d0, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0x00]
madds %d0, %d0, %d14, %d15

# CHECK-INST: madds %d0, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0x00]
madds %d0, %d0, %d15, %d0

# CHECK-INST: madds %d0, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0x00]
madds %d0, %d0, %d15, %d1

# CHECK-INST: madds %d0, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0x00]
madds %d0, %d0, %d15, %d14

# CHECK-INST: madds %d0, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0x00]
madds %d0, %d0, %d15, %d15

# CHECK-INST: madds %d0, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0x01]
madds %d0, %d1, %d0, %d0

# CHECK-INST: madds %d0, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0x01]
madds %d0, %d1, %d0, %d1

# CHECK-INST: madds %d0, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0x01]
madds %d0, %d1, %d0, %d14

# CHECK-INST: madds %d0, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0x01]
madds %d0, %d1, %d0, %d15

# CHECK-INST: madds %d0, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0x01]
madds %d0, %d1, %d1, %d0

# CHECK-INST: madds %d0, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0x01]
madds %d0, %d1, %d1, %d1

# CHECK-INST: madds %d0, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0x01]
madds %d0, %d1, %d1, %d14

# CHECK-INST: madds %d0, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0x01]
madds %d0, %d1, %d1, %d15

# CHECK-INST: madds %d0, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0x01]
madds %d0, %d1, %d14, %d0

# CHECK-INST: madds %d0, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0x01]
madds %d0, %d1, %d14, %d1

# CHECK-INST: madds %d0, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0x01]
madds %d0, %d1, %d14, %d14

# CHECK-INST: madds %d0, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0x01]
madds %d0, %d1, %d14, %d15

# CHECK-INST: madds %d0, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0x01]
madds %d0, %d1, %d15, %d0

# CHECK-INST: madds %d0, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0x01]
madds %d0, %d1, %d15, %d1

# CHECK-INST: madds %d0, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0x01]
madds %d0, %d1, %d15, %d14

# CHECK-INST: madds %d0, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0x01]
madds %d0, %d1, %d15, %d15

# CHECK-INST: madds %d0, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0x0e]
madds %d0, %d14, %d0, %d0

# CHECK-INST: madds %d0, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0x0e]
madds %d0, %d14, %d0, %d1

# CHECK-INST: madds %d0, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0x0e]
madds %d0, %d14, %d0, %d14

# CHECK-INST: madds %d0, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0x0e]
madds %d0, %d14, %d0, %d15

# CHECK-INST: madds %d0, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0x0e]
madds %d0, %d14, %d1, %d0

# CHECK-INST: madds %d0, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0x0e]
madds %d0, %d14, %d1, %d1

# CHECK-INST: madds %d0, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0x0e]
madds %d0, %d14, %d1, %d14

# CHECK-INST: madds %d0, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0x0e]
madds %d0, %d14, %d1, %d15

# CHECK-INST: madds %d0, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0x0e]
madds %d0, %d14, %d14, %d0

# CHECK-INST: madds %d0, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0x0e]
madds %d0, %d14, %d14, %d1

# CHECK-INST: madds %d0, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0x0e]
madds %d0, %d14, %d14, %d14

# CHECK-INST: madds %d0, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0x0e]
madds %d0, %d14, %d14, %d15

# CHECK-INST: madds %d0, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0x0e]
madds %d0, %d14, %d15, %d0

# CHECK-INST: madds %d0, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0x0e]
madds %d0, %d14, %d15, %d1

# CHECK-INST: madds %d0, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0x0e]
madds %d0, %d14, %d15, %d14

# CHECK-INST: madds %d0, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0x0e]
madds %d0, %d14, %d15, %d15

# CHECK-INST: madds %d0, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0x0f]
madds %d0, %d15, %d0, %d0

# CHECK-INST: madds %d0, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0x0f]
madds %d0, %d15, %d0, %d1

# CHECK-INST: madds %d0, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0x0f]
madds %d0, %d15, %d0, %d14

# CHECK-INST: madds %d0, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0x0f]
madds %d0, %d15, %d0, %d15

# CHECK-INST: madds %d0, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0x0f]
madds %d0, %d15, %d1, %d0

# CHECK-INST: madds %d0, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0x0f]
madds %d0, %d15, %d1, %d1

# CHECK-INST: madds %d0, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0x0f]
madds %d0, %d15, %d1, %d14

# CHECK-INST: madds %d0, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0x0f]
madds %d0, %d15, %d1, %d15

# CHECK-INST: madds %d0, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0x0f]
madds %d0, %d15, %d14, %d0

# CHECK-INST: madds %d0, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0x0f]
madds %d0, %d15, %d14, %d1

# CHECK-INST: madds %d0, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0x0f]
madds %d0, %d15, %d14, %d14

# CHECK-INST: madds %d0, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0x0f]
madds %d0, %d15, %d14, %d15

# CHECK-INST: madds %d0, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0x0f]
madds %d0, %d15, %d15, %d0

# CHECK-INST: madds %d0, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0x0f]
madds %d0, %d15, %d15, %d1

# CHECK-INST: madds %d0, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0x0f]
madds %d0, %d15, %d15, %d14

# CHECK-INST: madds %d0, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0x0f]
madds %d0, %d15, %d15, %d15

# CHECK-INST: madds %d1, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0x10]
madds %d1, %d0, %d0, %d0

# CHECK-INST: madds %d1, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0x10]
madds %d1, %d0, %d0, %d1

# CHECK-INST: madds %d1, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0x10]
madds %d1, %d0, %d0, %d14

# CHECK-INST: madds %d1, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0x10]
madds %d1, %d0, %d0, %d15

# CHECK-INST: madds %d1, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0x10]
madds %d1, %d0, %d1, %d0

# CHECK-INST: madds %d1, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0x10]
madds %d1, %d0, %d1, %d1

# CHECK-INST: madds %d1, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0x10]
madds %d1, %d0, %d1, %d14

# CHECK-INST: madds %d1, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0x10]
madds %d1, %d0, %d1, %d15

# CHECK-INST: madds %d1, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0x10]
madds %d1, %d0, %d14, %d0

# CHECK-INST: madds %d1, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0x10]
madds %d1, %d0, %d14, %d1

# CHECK-INST: madds %d1, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0x10]
madds %d1, %d0, %d14, %d14

# CHECK-INST: madds %d1, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0x10]
madds %d1, %d0, %d14, %d15

# CHECK-INST: madds %d1, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0x10]
madds %d1, %d0, %d15, %d0

# CHECK-INST: madds %d1, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0x10]
madds %d1, %d0, %d15, %d1

# CHECK-INST: madds %d1, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0x10]
madds %d1, %d0, %d15, %d14

# CHECK-INST: madds %d1, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0x10]
madds %d1, %d0, %d15, %d15

# CHECK-INST: madds %d1, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0x11]
madds %d1, %d1, %d0, %d0

# CHECK-INST: madds %d1, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0x11]
madds %d1, %d1, %d0, %d1

# CHECK-INST: madds %d1, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0x11]
madds %d1, %d1, %d0, %d14

# CHECK-INST: madds %d1, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0x11]
madds %d1, %d1, %d0, %d15

# CHECK-INST: madds %d1, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0x11]
madds %d1, %d1, %d1, %d0

# CHECK-INST: madds %d1, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0x11]
madds %d1, %d1, %d1, %d1

# CHECK-INST: madds %d1, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0x11]
madds %d1, %d1, %d1, %d14

# CHECK-INST: madds %d1, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0x11]
madds %d1, %d1, %d1, %d15

# CHECK-INST: madds %d1, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0x11]
madds %d1, %d1, %d14, %d0

# CHECK-INST: madds %d1, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0x11]
madds %d1, %d1, %d14, %d1

# CHECK-INST: madds %d1, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0x11]
madds %d1, %d1, %d14, %d14

# CHECK-INST: madds %d1, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0x11]
madds %d1, %d1, %d14, %d15

# CHECK-INST: madds %d1, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0x11]
madds %d1, %d1, %d15, %d0

# CHECK-INST: madds %d1, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0x11]
madds %d1, %d1, %d15, %d1

# CHECK-INST: madds %d1, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0x11]
madds %d1, %d1, %d15, %d14

# CHECK-INST: madds %d1, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0x11]
madds %d1, %d1, %d15, %d15

# CHECK-INST: madds %d1, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0x1e]
madds %d1, %d14, %d0, %d0

# CHECK-INST: madds %d1, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0x1e]
madds %d1, %d14, %d0, %d1

# CHECK-INST: madds %d1, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0x1e]
madds %d1, %d14, %d0, %d14

# CHECK-INST: madds %d1, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0x1e]
madds %d1, %d14, %d0, %d15

# CHECK-INST: madds %d1, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0x1e]
madds %d1, %d14, %d1, %d0

# CHECK-INST: madds %d1, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0x1e]
madds %d1, %d14, %d1, %d1

# CHECK-INST: madds %d1, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0x1e]
madds %d1, %d14, %d1, %d14

# CHECK-INST: madds %d1, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0x1e]
madds %d1, %d14, %d1, %d15

# CHECK-INST: madds %d1, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0x1e]
madds %d1, %d14, %d14, %d0

# CHECK-INST: madds %d1, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0x1e]
madds %d1, %d14, %d14, %d1

# CHECK-INST: madds %d1, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0x1e]
madds %d1, %d14, %d14, %d14

# CHECK-INST: madds %d1, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0x1e]
madds %d1, %d14, %d14, %d15

# CHECK-INST: madds %d1, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0x1e]
madds %d1, %d14, %d15, %d0

# CHECK-INST: madds %d1, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0x1e]
madds %d1, %d14, %d15, %d1

# CHECK-INST: madds %d1, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0x1e]
madds %d1, %d14, %d15, %d14

# CHECK-INST: madds %d1, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0x1e]
madds %d1, %d14, %d15, %d15

# CHECK-INST: madds %d1, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0x1f]
madds %d1, %d15, %d0, %d0

# CHECK-INST: madds %d1, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0x1f]
madds %d1, %d15, %d0, %d1

# CHECK-INST: madds %d1, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0x1f]
madds %d1, %d15, %d0, %d14

# CHECK-INST: madds %d1, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0x1f]
madds %d1, %d15, %d0, %d15

# CHECK-INST: madds %d1, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0x1f]
madds %d1, %d15, %d1, %d0

# CHECK-INST: madds %d1, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0x1f]
madds %d1, %d15, %d1, %d1

# CHECK-INST: madds %d1, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0x1f]
madds %d1, %d15, %d1, %d14

# CHECK-INST: madds %d1, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0x1f]
madds %d1, %d15, %d1, %d15

# CHECK-INST: madds %d1, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0x1f]
madds %d1, %d15, %d14, %d0

# CHECK-INST: madds %d1, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0x1f]
madds %d1, %d15, %d14, %d1

# CHECK-INST: madds %d1, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0x1f]
madds %d1, %d15, %d14, %d14

# CHECK-INST: madds %d1, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0x1f]
madds %d1, %d15, %d14, %d15

# CHECK-INST: madds %d1, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0x1f]
madds %d1, %d15, %d15, %d0

# CHECK-INST: madds %d1, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0x1f]
madds %d1, %d15, %d15, %d1

# CHECK-INST: madds %d1, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0x1f]
madds %d1, %d15, %d15, %d14

# CHECK-INST: madds %d1, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0x1f]
madds %d1, %d15, %d15, %d15

# CHECK-INST: madds %d14, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0xe0]
madds %d14, %d0, %d0, %d0

# CHECK-INST: madds %d14, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0xe0]
madds %d14, %d0, %d0, %d1

# CHECK-INST: madds %d14, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0xe0]
madds %d14, %d0, %d0, %d14

# CHECK-INST: madds %d14, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0xe0]
madds %d14, %d0, %d0, %d15

# CHECK-INST: madds %d14, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0xe0]
madds %d14, %d0, %d1, %d0

# CHECK-INST: madds %d14, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0xe0]
madds %d14, %d0, %d1, %d1

# CHECK-INST: madds %d14, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0xe0]
madds %d14, %d0, %d1, %d14

# CHECK-INST: madds %d14, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0xe0]
madds %d14, %d0, %d1, %d15

# CHECK-INST: madds %d14, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0xe0]
madds %d14, %d0, %d14, %d0

# CHECK-INST: madds %d14, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0xe0]
madds %d14, %d0, %d14, %d1

# CHECK-INST: madds %d14, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0xe0]
madds %d14, %d0, %d14, %d14

# CHECK-INST: madds %d14, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0xe0]
madds %d14, %d0, %d14, %d15

# CHECK-INST: madds %d14, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0xe0]
madds %d14, %d0, %d15, %d0

# CHECK-INST: madds %d14, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0xe0]
madds %d14, %d0, %d15, %d1

# CHECK-INST: madds %d14, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0xe0]
madds %d14, %d0, %d15, %d14

# CHECK-INST: madds %d14, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0xe0]
madds %d14, %d0, %d15, %d15

# CHECK-INST: madds %d14, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0xe1]
madds %d14, %d1, %d0, %d0

# CHECK-INST: madds %d14, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0xe1]
madds %d14, %d1, %d0, %d1

# CHECK-INST: madds %d14, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0xe1]
madds %d14, %d1, %d0, %d14

# CHECK-INST: madds %d14, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0xe1]
madds %d14, %d1, %d0, %d15

# CHECK-INST: madds %d14, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0xe1]
madds %d14, %d1, %d1, %d0

# CHECK-INST: madds %d14, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0xe1]
madds %d14, %d1, %d1, %d1

# CHECK-INST: madds %d14, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0xe1]
madds %d14, %d1, %d1, %d14

# CHECK-INST: madds %d14, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0xe1]
madds %d14, %d1, %d1, %d15

# CHECK-INST: madds %d14, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0xe1]
madds %d14, %d1, %d14, %d0

# CHECK-INST: madds %d14, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0xe1]
madds %d14, %d1, %d14, %d1

# CHECK-INST: madds %d14, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0xe1]
madds %d14, %d1, %d14, %d14

# CHECK-INST: madds %d14, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0xe1]
madds %d14, %d1, %d14, %d15

# CHECK-INST: madds %d14, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0xe1]
madds %d14, %d1, %d15, %d0

# CHECK-INST: madds %d14, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0xe1]
madds %d14, %d1, %d15, %d1

# CHECK-INST: madds %d14, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0xe1]
madds %d14, %d1, %d15, %d14

# CHECK-INST: madds %d14, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0xe1]
madds %d14, %d1, %d15, %d15

# CHECK-INST: madds %d14, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0xee]
madds %d14, %d14, %d0, %d0

# CHECK-INST: madds %d14, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0xee]
madds %d14, %d14, %d0, %d1

# CHECK-INST: madds %d14, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0xee]
madds %d14, %d14, %d0, %d14

# CHECK-INST: madds %d14, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0xee]
madds %d14, %d14, %d0, %d15

# CHECK-INST: madds %d14, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0xee]
madds %d14, %d14, %d1, %d0

# CHECK-INST: madds %d14, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0xee]
madds %d14, %d14, %d1, %d1

# CHECK-INST: madds %d14, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0xee]
madds %d14, %d14, %d1, %d14

# CHECK-INST: madds %d14, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0xee]
madds %d14, %d14, %d1, %d15

# CHECK-INST: madds %d14, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0xee]
madds %d14, %d14, %d14, %d0

# CHECK-INST: madds %d14, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0xee]
madds %d14, %d14, %d14, %d1

# CHECK-INST: madds %d14, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0xee]
madds %d14, %d14, %d14, %d14

# CHECK-INST: madds %d14, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0xee]
madds %d14, %d14, %d14, %d15

# CHECK-INST: madds %d14, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0xee]
madds %d14, %d14, %d15, %d0

# CHECK-INST: madds %d14, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0xee]
madds %d14, %d14, %d15, %d1

# CHECK-INST: madds %d14, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0xee]
madds %d14, %d14, %d15, %d14

# CHECK-INST: madds %d14, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0xee]
madds %d14, %d14, %d15, %d15

# CHECK-INST: madds %d14, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0xef]
madds %d14, %d15, %d0, %d0

# CHECK-INST: madds %d14, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0xef]
madds %d14, %d15, %d0, %d1

# CHECK-INST: madds %d14, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0xef]
madds %d14, %d15, %d0, %d14

# CHECK-INST: madds %d14, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0xef]
madds %d14, %d15, %d0, %d15

# CHECK-INST: madds %d14, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0xef]
madds %d14, %d15, %d1, %d0

# CHECK-INST: madds %d14, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0xef]
madds %d14, %d15, %d1, %d1

# CHECK-INST: madds %d14, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0xef]
madds %d14, %d15, %d1, %d14

# CHECK-INST: madds %d14, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0xef]
madds %d14, %d15, %d1, %d15

# CHECK-INST: madds %d14, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0xef]
madds %d14, %d15, %d14, %d0

# CHECK-INST: madds %d14, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0xef]
madds %d14, %d15, %d14, %d1

# CHECK-INST: madds %d14, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0xef]
madds %d14, %d15, %d14, %d14

# CHECK-INST: madds %d14, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0xef]
madds %d14, %d15, %d14, %d15

# CHECK-INST: madds %d14, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0xef]
madds %d14, %d15, %d15, %d0

# CHECK-INST: madds %d14, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0xef]
madds %d14, %d15, %d15, %d1

# CHECK-INST: madds %d14, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0xef]
madds %d14, %d15, %d15, %d14

# CHECK-INST: madds %d14, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0xef]
madds %d14, %d15, %d15, %d15

# CHECK-INST: madds %d15, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0xf0]
madds %d15, %d0, %d0, %d0

# CHECK-INST: madds %d15, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0xf0]
madds %d15, %d0, %d0, %d1

# CHECK-INST: madds %d15, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0xf0]
madds %d15, %d0, %d0, %d14

# CHECK-INST: madds %d15, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0xf0]
madds %d15, %d0, %d0, %d15

# CHECK-INST: madds %d15, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0xf0]
madds %d15, %d0, %d1, %d0

# CHECK-INST: madds %d15, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0xf0]
madds %d15, %d0, %d1, %d1

# CHECK-INST: madds %d15, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0xf0]
madds %d15, %d0, %d1, %d14

# CHECK-INST: madds %d15, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0xf0]
madds %d15, %d0, %d1, %d15

# CHECK-INST: madds %d15, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0xf0]
madds %d15, %d0, %d14, %d0

# CHECK-INST: madds %d15, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0xf0]
madds %d15, %d0, %d14, %d1

# CHECK-INST: madds %d15, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0xf0]
madds %d15, %d0, %d14, %d14

# CHECK-INST: madds %d15, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0xf0]
madds %d15, %d0, %d14, %d15

# CHECK-INST: madds %d15, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0xf0]
madds %d15, %d0, %d15, %d0

# CHECK-INST: madds %d15, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0xf0]
madds %d15, %d0, %d15, %d1

# CHECK-INST: madds %d15, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0xf0]
madds %d15, %d0, %d15, %d14

# CHECK-INST: madds %d15, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0xf0]
madds %d15, %d0, %d15, %d15

# CHECK-INST: madds %d15, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0xf1]
madds %d15, %d1, %d0, %d0

# CHECK-INST: madds %d15, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0xf1]
madds %d15, %d1, %d0, %d1

# CHECK-INST: madds %d15, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0xf1]
madds %d15, %d1, %d0, %d14

# CHECK-INST: madds %d15, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0xf1]
madds %d15, %d1, %d0, %d15

# CHECK-INST: madds %d15, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0xf1]
madds %d15, %d1, %d1, %d0

# CHECK-INST: madds %d15, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0xf1]
madds %d15, %d1, %d1, %d1

# CHECK-INST: madds %d15, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0xf1]
madds %d15, %d1, %d1, %d14

# CHECK-INST: madds %d15, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0xf1]
madds %d15, %d1, %d1, %d15

# CHECK-INST: madds %d15, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0xf1]
madds %d15, %d1, %d14, %d0

# CHECK-INST: madds %d15, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0xf1]
madds %d15, %d1, %d14, %d1

# CHECK-INST: madds %d15, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0xf1]
madds %d15, %d1, %d14, %d14

# CHECK-INST: madds %d15, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0xf1]
madds %d15, %d1, %d14, %d15

# CHECK-INST: madds %d15, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0xf1]
madds %d15, %d1, %d15, %d0

# CHECK-INST: madds %d15, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0xf1]
madds %d15, %d1, %d15, %d1

# CHECK-INST: madds %d15, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0xf1]
madds %d15, %d1, %d15, %d14

# CHECK-INST: madds %d15, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0xf1]
madds %d15, %d1, %d15, %d15

# CHECK-INST: madds %d15, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0xfe]
madds %d15, %d14, %d0, %d0

# CHECK-INST: madds %d15, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0xfe]
madds %d15, %d14, %d0, %d1

# CHECK-INST: madds %d15, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0xfe]
madds %d15, %d14, %d0, %d14

# CHECK-INST: madds %d15, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0xfe]
madds %d15, %d14, %d0, %d15

# CHECK-INST: madds %d15, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0xfe]
madds %d15, %d14, %d1, %d0

# CHECK-INST: madds %d15, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0xfe]
madds %d15, %d14, %d1, %d1

# CHECK-INST: madds %d15, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0xfe]
madds %d15, %d14, %d1, %d14

# CHECK-INST: madds %d15, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0xfe]
madds %d15, %d14, %d1, %d15

# CHECK-INST: madds %d15, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0xfe]
madds %d15, %d14, %d14, %d0

# CHECK-INST: madds %d15, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0xfe]
madds %d15, %d14, %d14, %d1

# CHECK-INST: madds %d15, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0xfe]
madds %d15, %d14, %d14, %d14

# CHECK-INST: madds %d15, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0xfe]
madds %d15, %d14, %d14, %d15

# CHECK-INST: madds %d15, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0xfe]
madds %d15, %d14, %d15, %d0

# CHECK-INST: madds %d15, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0xfe]
madds %d15, %d14, %d15, %d1

# CHECK-INST: madds %d15, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0xfe]
madds %d15, %d14, %d15, %d14

# CHECK-INST: madds %d15, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0xfe]
madds %d15, %d14, %d15, %d15

# CHECK-INST: madds %d15, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x8a,0xff]
madds %d15, %d15, %d0, %d0

# CHECK-INST: madds %d15, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x8a,0xff]
madds %d15, %d15, %d0, %d1

# CHECK-INST: madds %d15, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x8a,0xff]
madds %d15, %d15, %d0, %d14

# CHECK-INST: madds %d15, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x8a,0xff]
madds %d15, %d15, %d0, %d15

# CHECK-INST: madds %d15, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x8a,0xff]
madds %d15, %d15, %d1, %d0

# CHECK-INST: madds %d15, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x8a,0xff]
madds %d15, %d15, %d1, %d1

# CHECK-INST: madds %d15, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x8a,0xff]
madds %d15, %d15, %d1, %d14

# CHECK-INST: madds %d15, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x8a,0xff]
madds %d15, %d15, %d1, %d15

# CHECK-INST: madds %d15, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x8a,0xff]
madds %d15, %d15, %d14, %d0

# CHECK-INST: madds %d15, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x8a,0xff]
madds %d15, %d15, %d14, %d1

# CHECK-INST: madds %d15, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x8a,0xff]
madds %d15, %d15, %d14, %d14

# CHECK-INST: madds %d15, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x8a,0xff]
madds %d15, %d15, %d14, %d15

# CHECK-INST: madds %d15, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x8a,0xff]
madds %d15, %d15, %d15, %d0

# CHECK-INST: madds %d15, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x8a,0xff]
madds %d15, %d15, %d15, %d1

# CHECK-INST: madds %d15, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x8a,0xff]
madds %d15, %d15, %d15, %d14

# CHECK-INST: madds %d15, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x8a,0xff]
madds %d15, %d15, %d15, %d15

# CHECK-INST: madds %d0, %d0, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0x00]
madds %d0, %d0, %d0, -256

# CHECK-INST: madds %d0, %d0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0x00]
madds %d0, %d0, %d0, -129

# CHECK-INST: madds %d0, %d0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0x00]
madds %d0, %d0, %d0, -1

# CHECK-INST: madds %d0, %d0, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0x00]
madds %d0, %d0, %d0, 0

# CHECK-INST: madds %d0, %d0, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0x00]
madds %d0, %d0, %d0, 1

# CHECK-INST: madds %d0, %d0, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0x00]
madds %d0, %d0, %d0, 128

# CHECK-INST: madds %d0, %d0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0x00]
madds %d0, %d0, %d0, 255

# CHECK-INST: madds %d0, %d0, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0x00]
madds %d0, %d0, %d1, -256

# CHECK-INST: madds %d0, %d0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0x00]
madds %d0, %d0, %d1, -129

# CHECK-INST: madds %d0, %d0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0x00]
madds %d0, %d0, %d1, -1

# CHECK-INST: madds %d0, %d0, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0x00]
madds %d0, %d0, %d1, 0

# CHECK-INST: madds %d0, %d0, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0x00]
madds %d0, %d0, %d1, 1

# CHECK-INST: madds %d0, %d0, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0x00]
madds %d0, %d0, %d1, 128

# CHECK-INST: madds %d0, %d0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0x00]
madds %d0, %d0, %d1, 255

# CHECK-INST: madds %d0, %d0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0x00]
madds %d0, %d0, %d14, -256

# CHECK-INST: madds %d0, %d0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0x00]
madds %d0, %d0, %d14, -129

# CHECK-INST: madds %d0, %d0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0x00]
madds %d0, %d0, %d14, -1

# CHECK-INST: madds %d0, %d0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0x00]
madds %d0, %d0, %d14, 0

# CHECK-INST: madds %d0, %d0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0x00]
madds %d0, %d0, %d14, 1

# CHECK-INST: madds %d0, %d0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0x00]
madds %d0, %d0, %d14, 128

# CHECK-INST: madds %d0, %d0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0x00]
madds %d0, %d0, %d14, 255

# CHECK-INST: madds %d0, %d0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0x00]
madds %d0, %d0, %d15, -256

# CHECK-INST: madds %d0, %d0, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0x00]
madds %d0, %d0, %d15, -129

# CHECK-INST: madds %d0, %d0, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0x00]
madds %d0, %d0, %d15, -1

# CHECK-INST: madds %d0, %d0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0x00]
madds %d0, %d0, %d15, 0

# CHECK-INST: madds %d0, %d0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0x00]
madds %d0, %d0, %d15, 1

# CHECK-INST: madds %d0, %d0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0x00]
madds %d0, %d0, %d15, 128

# CHECK-INST: madds %d0, %d0, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0x00]
madds %d0, %d0, %d15, 255

# CHECK-INST: madds %d0, %d1, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0x01]
madds %d0, %d1, %d0, -256

# CHECK-INST: madds %d0, %d1, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0x01]
madds %d0, %d1, %d0, -129

# CHECK-INST: madds %d0, %d1, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0x01]
madds %d0, %d1, %d0, -1

# CHECK-INST: madds %d0, %d1, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0x01]
madds %d0, %d1, %d0, 0

# CHECK-INST: madds %d0, %d1, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0x01]
madds %d0, %d1, %d0, 1

# CHECK-INST: madds %d0, %d1, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0x01]
madds %d0, %d1, %d0, 128

# CHECK-INST: madds %d0, %d1, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0x01]
madds %d0, %d1, %d0, 255

# CHECK-INST: madds %d0, %d1, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0x01]
madds %d0, %d1, %d1, -256

# CHECK-INST: madds %d0, %d1, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0x01]
madds %d0, %d1, %d1, -129

# CHECK-INST: madds %d0, %d1, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0x01]
madds %d0, %d1, %d1, -1

# CHECK-INST: madds %d0, %d1, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0x01]
madds %d0, %d1, %d1, 0

# CHECK-INST: madds %d0, %d1, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0x01]
madds %d0, %d1, %d1, 1

# CHECK-INST: madds %d0, %d1, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0x01]
madds %d0, %d1, %d1, 128

# CHECK-INST: madds %d0, %d1, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0x01]
madds %d0, %d1, %d1, 255

# CHECK-INST: madds %d0, %d1, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0x01]
madds %d0, %d1, %d14, -256

# CHECK-INST: madds %d0, %d1, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0x01]
madds %d0, %d1, %d14, -129

# CHECK-INST: madds %d0, %d1, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0x01]
madds %d0, %d1, %d14, -1

# CHECK-INST: madds %d0, %d1, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0x01]
madds %d0, %d1, %d14, 0

# CHECK-INST: madds %d0, %d1, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0x01]
madds %d0, %d1, %d14, 1

# CHECK-INST: madds %d0, %d1, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0x01]
madds %d0, %d1, %d14, 128

# CHECK-INST: madds %d0, %d1, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0x01]
madds %d0, %d1, %d14, 255

# CHECK-INST: madds %d0, %d1, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0x01]
madds %d0, %d1, %d15, -256

# CHECK-INST: madds %d0, %d1, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0x01]
madds %d0, %d1, %d15, -129

# CHECK-INST: madds %d0, %d1, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0x01]
madds %d0, %d1, %d15, -1

# CHECK-INST: madds %d0, %d1, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0x01]
madds %d0, %d1, %d15, 0

# CHECK-INST: madds %d0, %d1, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0x01]
madds %d0, %d1, %d15, 1

# CHECK-INST: madds %d0, %d1, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0x01]
madds %d0, %d1, %d15, 128

# CHECK-INST: madds %d0, %d1, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0x01]
madds %d0, %d1, %d15, 255

# CHECK-INST: madds %d0, %d14, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0x0e]
madds %d0, %d14, %d0, -256

# CHECK-INST: madds %d0, %d14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0x0e]
madds %d0, %d14, %d0, -129

# CHECK-INST: madds %d0, %d14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0x0e]
madds %d0, %d14, %d0, -1

# CHECK-INST: madds %d0, %d14, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0x0e]
madds %d0, %d14, %d0, 0

# CHECK-INST: madds %d0, %d14, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0x0e]
madds %d0, %d14, %d0, 1

# CHECK-INST: madds %d0, %d14, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0x0e]
madds %d0, %d14, %d0, 128

# CHECK-INST: madds %d0, %d14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0x0e]
madds %d0, %d14, %d0, 255

# CHECK-INST: madds %d0, %d14, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0x0e]
madds %d0, %d14, %d1, -256

# CHECK-INST: madds %d0, %d14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0x0e]
madds %d0, %d14, %d1, -129

# CHECK-INST: madds %d0, %d14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0x0e]
madds %d0, %d14, %d1, -1

# CHECK-INST: madds %d0, %d14, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0x0e]
madds %d0, %d14, %d1, 0

# CHECK-INST: madds %d0, %d14, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0x0e]
madds %d0, %d14, %d1, 1

# CHECK-INST: madds %d0, %d14, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0x0e]
madds %d0, %d14, %d1, 128

# CHECK-INST: madds %d0, %d14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0x0e]
madds %d0, %d14, %d1, 255

# CHECK-INST: madds %d0, %d14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0x0e]
madds %d0, %d14, %d14, -256

# CHECK-INST: madds %d0, %d14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0x0e]
madds %d0, %d14, %d14, -129

# CHECK-INST: madds %d0, %d14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0x0e]
madds %d0, %d14, %d14, -1

# CHECK-INST: madds %d0, %d14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0x0e]
madds %d0, %d14, %d14, 0

# CHECK-INST: madds %d0, %d14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0x0e]
madds %d0, %d14, %d14, 1

# CHECK-INST: madds %d0, %d14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0x0e]
madds %d0, %d14, %d14, 128

# CHECK-INST: madds %d0, %d14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0x0e]
madds %d0, %d14, %d14, 255

# CHECK-INST: madds %d0, %d14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0x0e]
madds %d0, %d14, %d15, -256

# CHECK-INST: madds %d0, %d14, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0x0e]
madds %d0, %d14, %d15, -129

# CHECK-INST: madds %d0, %d14, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0x0e]
madds %d0, %d14, %d15, -1

# CHECK-INST: madds %d0, %d14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0x0e]
madds %d0, %d14, %d15, 0

# CHECK-INST: madds %d0, %d14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0x0e]
madds %d0, %d14, %d15, 1

# CHECK-INST: madds %d0, %d14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0x0e]
madds %d0, %d14, %d15, 128

# CHECK-INST: madds %d0, %d14, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0x0e]
madds %d0, %d14, %d15, 255

# CHECK-INST: madds %d0, %d15, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0x0f]
madds %d0, %d15, %d0, -256

# CHECK-INST: madds %d0, %d15, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0x0f]
madds %d0, %d15, %d0, -129

# CHECK-INST: madds %d0, %d15, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0x0f]
madds %d0, %d15, %d0, -1

# CHECK-INST: madds %d0, %d15, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0x0f]
madds %d0, %d15, %d0, 0

# CHECK-INST: madds %d0, %d15, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0x0f]
madds %d0, %d15, %d0, 1

# CHECK-INST: madds %d0, %d15, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0x0f]
madds %d0, %d15, %d0, 128

# CHECK-INST: madds %d0, %d15, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0x0f]
madds %d0, %d15, %d0, 255

# CHECK-INST: madds %d0, %d15, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0x0f]
madds %d0, %d15, %d1, -256

# CHECK-INST: madds %d0, %d15, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0x0f]
madds %d0, %d15, %d1, -129

# CHECK-INST: madds %d0, %d15, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0x0f]
madds %d0, %d15, %d1, -1

# CHECK-INST: madds %d0, %d15, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0x0f]
madds %d0, %d15, %d1, 0

# CHECK-INST: madds %d0, %d15, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0x0f]
madds %d0, %d15, %d1, 1

# CHECK-INST: madds %d0, %d15, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0x0f]
madds %d0, %d15, %d1, 128

# CHECK-INST: madds %d0, %d15, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0x0f]
madds %d0, %d15, %d1, 255

# CHECK-INST: madds %d0, %d15, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0x0f]
madds %d0, %d15, %d14, -256

# CHECK-INST: madds %d0, %d15, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0x0f]
madds %d0, %d15, %d14, -129

# CHECK-INST: madds %d0, %d15, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0x0f]
madds %d0, %d15, %d14, -1

# CHECK-INST: madds %d0, %d15, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0x0f]
madds %d0, %d15, %d14, 0

# CHECK-INST: madds %d0, %d15, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0x0f]
madds %d0, %d15, %d14, 1

# CHECK-INST: madds %d0, %d15, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0x0f]
madds %d0, %d15, %d14, 128

# CHECK-INST: madds %d0, %d15, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0x0f]
madds %d0, %d15, %d14, 255

# CHECK-INST: madds %d0, %d15, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0x0f]
madds %d0, %d15, %d15, -256

# CHECK-INST: madds %d0, %d15, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0x0f]
madds %d0, %d15, %d15, -129

# CHECK-INST: madds %d0, %d15, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0x0f]
madds %d0, %d15, %d15, -1

# CHECK-INST: madds %d0, %d15, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0x0f]
madds %d0, %d15, %d15, 0

# CHECK-INST: madds %d0, %d15, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0x0f]
madds %d0, %d15, %d15, 1

# CHECK-INST: madds %d0, %d15, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0x0f]
madds %d0, %d15, %d15, 128

# CHECK-INST: madds %d0, %d15, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0x0f]
madds %d0, %d15, %d15, 255

# CHECK-INST: madds %d1, %d0, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0x10]
madds %d1, %d0, %d0, -256

# CHECK-INST: madds %d1, %d0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0x10]
madds %d1, %d0, %d0, -129

# CHECK-INST: madds %d1, %d0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0x10]
madds %d1, %d0, %d0, -1

# CHECK-INST: madds %d1, %d0, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0x10]
madds %d1, %d0, %d0, 0

# CHECK-INST: madds %d1, %d0, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0x10]
madds %d1, %d0, %d0, 1

# CHECK-INST: madds %d1, %d0, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0x10]
madds %d1, %d0, %d0, 128

# CHECK-INST: madds %d1, %d0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0x10]
madds %d1, %d0, %d0, 255

# CHECK-INST: madds %d1, %d0, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0x10]
madds %d1, %d0, %d1, -256

# CHECK-INST: madds %d1, %d0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0x10]
madds %d1, %d0, %d1, -129

# CHECK-INST: madds %d1, %d0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0x10]
madds %d1, %d0, %d1, -1

# CHECK-INST: madds %d1, %d0, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0x10]
madds %d1, %d0, %d1, 0

# CHECK-INST: madds %d1, %d0, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0x10]
madds %d1, %d0, %d1, 1

# CHECK-INST: madds %d1, %d0, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0x10]
madds %d1, %d0, %d1, 128

# CHECK-INST: madds %d1, %d0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0x10]
madds %d1, %d0, %d1, 255

# CHECK-INST: madds %d1, %d0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0x10]
madds %d1, %d0, %d14, -256

# CHECK-INST: madds %d1, %d0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0x10]
madds %d1, %d0, %d14, -129

# CHECK-INST: madds %d1, %d0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0x10]
madds %d1, %d0, %d14, -1

# CHECK-INST: madds %d1, %d0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0x10]
madds %d1, %d0, %d14, 0

# CHECK-INST: madds %d1, %d0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0x10]
madds %d1, %d0, %d14, 1

# CHECK-INST: madds %d1, %d0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0x10]
madds %d1, %d0, %d14, 128

# CHECK-INST: madds %d1, %d0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0x10]
madds %d1, %d0, %d14, 255

# CHECK-INST: madds %d1, %d0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0x10]
madds %d1, %d0, %d15, -256

# CHECK-INST: madds %d1, %d0, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0x10]
madds %d1, %d0, %d15, -129

# CHECK-INST: madds %d1, %d0, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0x10]
madds %d1, %d0, %d15, -1

# CHECK-INST: madds %d1, %d0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0x10]
madds %d1, %d0, %d15, 0

# CHECK-INST: madds %d1, %d0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0x10]
madds %d1, %d0, %d15, 1

# CHECK-INST: madds %d1, %d0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0x10]
madds %d1, %d0, %d15, 128

# CHECK-INST: madds %d1, %d0, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0x10]
madds %d1, %d0, %d15, 255

# CHECK-INST: madds %d1, %d1, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0x11]
madds %d1, %d1, %d0, -256

# CHECK-INST: madds %d1, %d1, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0x11]
madds %d1, %d1, %d0, -129

# CHECK-INST: madds %d1, %d1, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0x11]
madds %d1, %d1, %d0, -1

# CHECK-INST: madds %d1, %d1, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0x11]
madds %d1, %d1, %d0, 0

# CHECK-INST: madds %d1, %d1, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0x11]
madds %d1, %d1, %d0, 1

# CHECK-INST: madds %d1, %d1, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0x11]
madds %d1, %d1, %d0, 128

# CHECK-INST: madds %d1, %d1, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0x11]
madds %d1, %d1, %d0, 255

# CHECK-INST: madds %d1, %d1, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0x11]
madds %d1, %d1, %d1, -256

# CHECK-INST: madds %d1, %d1, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0x11]
madds %d1, %d1, %d1, -129

# CHECK-INST: madds %d1, %d1, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0x11]
madds %d1, %d1, %d1, -1

# CHECK-INST: madds %d1, %d1, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0x11]
madds %d1, %d1, %d1, 0

# CHECK-INST: madds %d1, %d1, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0x11]
madds %d1, %d1, %d1, 1

# CHECK-INST: madds %d1, %d1, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0x11]
madds %d1, %d1, %d1, 128

# CHECK-INST: madds %d1, %d1, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0x11]
madds %d1, %d1, %d1, 255

# CHECK-INST: madds %d1, %d1, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0x11]
madds %d1, %d1, %d14, -256

# CHECK-INST: madds %d1, %d1, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0x11]
madds %d1, %d1, %d14, -129

# CHECK-INST: madds %d1, %d1, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0x11]
madds %d1, %d1, %d14, -1

# CHECK-INST: madds %d1, %d1, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0x11]
madds %d1, %d1, %d14, 0

# CHECK-INST: madds %d1, %d1, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0x11]
madds %d1, %d1, %d14, 1

# CHECK-INST: madds %d1, %d1, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0x11]
madds %d1, %d1, %d14, 128

# CHECK-INST: madds %d1, %d1, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0x11]
madds %d1, %d1, %d14, 255

# CHECK-INST: madds %d1, %d1, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0x11]
madds %d1, %d1, %d15, -256

# CHECK-INST: madds %d1, %d1, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0x11]
madds %d1, %d1, %d15, -129

# CHECK-INST: madds %d1, %d1, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0x11]
madds %d1, %d1, %d15, -1

# CHECK-INST: madds %d1, %d1, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0x11]
madds %d1, %d1, %d15, 0

# CHECK-INST: madds %d1, %d1, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0x11]
madds %d1, %d1, %d15, 1

# CHECK-INST: madds %d1, %d1, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0x11]
madds %d1, %d1, %d15, 128

# CHECK-INST: madds %d1, %d1, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0x11]
madds %d1, %d1, %d15, 255

# CHECK-INST: madds %d1, %d14, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0x1e]
madds %d1, %d14, %d0, -256

# CHECK-INST: madds %d1, %d14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0x1e]
madds %d1, %d14, %d0, -129

# CHECK-INST: madds %d1, %d14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0x1e]
madds %d1, %d14, %d0, -1

# CHECK-INST: madds %d1, %d14, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0x1e]
madds %d1, %d14, %d0, 0

# CHECK-INST: madds %d1, %d14, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0x1e]
madds %d1, %d14, %d0, 1

# CHECK-INST: madds %d1, %d14, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0x1e]
madds %d1, %d14, %d0, 128

# CHECK-INST: madds %d1, %d14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0x1e]
madds %d1, %d14, %d0, 255

# CHECK-INST: madds %d1, %d14, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0x1e]
madds %d1, %d14, %d1, -256

# CHECK-INST: madds %d1, %d14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0x1e]
madds %d1, %d14, %d1, -129

# CHECK-INST: madds %d1, %d14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0x1e]
madds %d1, %d14, %d1, -1

# CHECK-INST: madds %d1, %d14, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0x1e]
madds %d1, %d14, %d1, 0

# CHECK-INST: madds %d1, %d14, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0x1e]
madds %d1, %d14, %d1, 1

# CHECK-INST: madds %d1, %d14, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0x1e]
madds %d1, %d14, %d1, 128

# CHECK-INST: madds %d1, %d14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0x1e]
madds %d1, %d14, %d1, 255

# CHECK-INST: madds %d1, %d14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0x1e]
madds %d1, %d14, %d14, -256

# CHECK-INST: madds %d1, %d14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0x1e]
madds %d1, %d14, %d14, -129

# CHECK-INST: madds %d1, %d14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0x1e]
madds %d1, %d14, %d14, -1

# CHECK-INST: madds %d1, %d14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0x1e]
madds %d1, %d14, %d14, 0

# CHECK-INST: madds %d1, %d14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0x1e]
madds %d1, %d14, %d14, 1

# CHECK-INST: madds %d1, %d14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0x1e]
madds %d1, %d14, %d14, 128

# CHECK-INST: madds %d1, %d14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0x1e]
madds %d1, %d14, %d14, 255

# CHECK-INST: madds %d1, %d14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0x1e]
madds %d1, %d14, %d15, -256

# CHECK-INST: madds %d1, %d14, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0x1e]
madds %d1, %d14, %d15, -129

# CHECK-INST: madds %d1, %d14, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0x1e]
madds %d1, %d14, %d15, -1

# CHECK-INST: madds %d1, %d14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0x1e]
madds %d1, %d14, %d15, 0

# CHECK-INST: madds %d1, %d14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0x1e]
madds %d1, %d14, %d15, 1

# CHECK-INST: madds %d1, %d14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0x1e]
madds %d1, %d14, %d15, 128

# CHECK-INST: madds %d1, %d14, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0x1e]
madds %d1, %d14, %d15, 255

# CHECK-INST: madds %d1, %d15, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0x1f]
madds %d1, %d15, %d0, -256

# CHECK-INST: madds %d1, %d15, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0x1f]
madds %d1, %d15, %d0, -129

# CHECK-INST: madds %d1, %d15, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0x1f]
madds %d1, %d15, %d0, -1

# CHECK-INST: madds %d1, %d15, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0x1f]
madds %d1, %d15, %d0, 0

# CHECK-INST: madds %d1, %d15, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0x1f]
madds %d1, %d15, %d0, 1

# CHECK-INST: madds %d1, %d15, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0x1f]
madds %d1, %d15, %d0, 128

# CHECK-INST: madds %d1, %d15, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0x1f]
madds %d1, %d15, %d0, 255

# CHECK-INST: madds %d1, %d15, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0x1f]
madds %d1, %d15, %d1, -256

# CHECK-INST: madds %d1, %d15, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0x1f]
madds %d1, %d15, %d1, -129

# CHECK-INST: madds %d1, %d15, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0x1f]
madds %d1, %d15, %d1, -1

# CHECK-INST: madds %d1, %d15, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0x1f]
madds %d1, %d15, %d1, 0

# CHECK-INST: madds %d1, %d15, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0x1f]
madds %d1, %d15, %d1, 1

# CHECK-INST: madds %d1, %d15, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0x1f]
madds %d1, %d15, %d1, 128

# CHECK-INST: madds %d1, %d15, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0x1f]
madds %d1, %d15, %d1, 255

# CHECK-INST: madds %d1, %d15, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0x1f]
madds %d1, %d15, %d14, -256

# CHECK-INST: madds %d1, %d15, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0x1f]
madds %d1, %d15, %d14, -129

# CHECK-INST: madds %d1, %d15, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0x1f]
madds %d1, %d15, %d14, -1

# CHECK-INST: madds %d1, %d15, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0x1f]
madds %d1, %d15, %d14, 0

# CHECK-INST: madds %d1, %d15, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0x1f]
madds %d1, %d15, %d14, 1

# CHECK-INST: madds %d1, %d15, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0x1f]
madds %d1, %d15, %d14, 128

# CHECK-INST: madds %d1, %d15, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0x1f]
madds %d1, %d15, %d14, 255

# CHECK-INST: madds %d1, %d15, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0x1f]
madds %d1, %d15, %d15, -256

# CHECK-INST: madds %d1, %d15, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0x1f]
madds %d1, %d15, %d15, -129

# CHECK-INST: madds %d1, %d15, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0x1f]
madds %d1, %d15, %d15, -1

# CHECK-INST: madds %d1, %d15, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0x1f]
madds %d1, %d15, %d15, 0

# CHECK-INST: madds %d1, %d15, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0x1f]
madds %d1, %d15, %d15, 1

# CHECK-INST: madds %d1, %d15, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0x1f]
madds %d1, %d15, %d15, 128

# CHECK-INST: madds %d1, %d15, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0x1f]
madds %d1, %d15, %d15, 255

# CHECK-INST: madds %d14, %d0, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0xe0]
madds %d14, %d0, %d0, -256

# CHECK-INST: madds %d14, %d0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0xe0]
madds %d14, %d0, %d0, -129

# CHECK-INST: madds %d14, %d0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0xe0]
madds %d14, %d0, %d0, -1

# CHECK-INST: madds %d14, %d0, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0xe0]
madds %d14, %d0, %d0, 0

# CHECK-INST: madds %d14, %d0, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0xe0]
madds %d14, %d0, %d0, 1

# CHECK-INST: madds %d14, %d0, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0xe0]
madds %d14, %d0, %d0, 128

# CHECK-INST: madds %d14, %d0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0xe0]
madds %d14, %d0, %d0, 255

# CHECK-INST: madds %d14, %d0, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0xe0]
madds %d14, %d0, %d1, -256

# CHECK-INST: madds %d14, %d0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0xe0]
madds %d14, %d0, %d1, -129

# CHECK-INST: madds %d14, %d0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0xe0]
madds %d14, %d0, %d1, -1

# CHECK-INST: madds %d14, %d0, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0xe0]
madds %d14, %d0, %d1, 0

# CHECK-INST: madds %d14, %d0, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0xe0]
madds %d14, %d0, %d1, 1

# CHECK-INST: madds %d14, %d0, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0xe0]
madds %d14, %d0, %d1, 128

# CHECK-INST: madds %d14, %d0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0xe0]
madds %d14, %d0, %d1, 255

# CHECK-INST: madds %d14, %d0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0xe0]
madds %d14, %d0, %d14, -256

# CHECK-INST: madds %d14, %d0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0xe0]
madds %d14, %d0, %d14, -129

# CHECK-INST: madds %d14, %d0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0xe0]
madds %d14, %d0, %d14, -1

# CHECK-INST: madds %d14, %d0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0xe0]
madds %d14, %d0, %d14, 0

# CHECK-INST: madds %d14, %d0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0xe0]
madds %d14, %d0, %d14, 1

# CHECK-INST: madds %d14, %d0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0xe0]
madds %d14, %d0, %d14, 128

# CHECK-INST: madds %d14, %d0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0xe0]
madds %d14, %d0, %d14, 255

# CHECK-INST: madds %d14, %d0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0xe0]
madds %d14, %d0, %d15, -256

# CHECK-INST: madds %d14, %d0, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0xe0]
madds %d14, %d0, %d15, -129

# CHECK-INST: madds %d14, %d0, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0xe0]
madds %d14, %d0, %d15, -1

# CHECK-INST: madds %d14, %d0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0xe0]
madds %d14, %d0, %d15, 0

# CHECK-INST: madds %d14, %d0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0xe0]
madds %d14, %d0, %d15, 1

# CHECK-INST: madds %d14, %d0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0xe0]
madds %d14, %d0, %d15, 128

# CHECK-INST: madds %d14, %d0, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0xe0]
madds %d14, %d0, %d15, 255

# CHECK-INST: madds %d14, %d1, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0xe1]
madds %d14, %d1, %d0, -256

# CHECK-INST: madds %d14, %d1, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0xe1]
madds %d14, %d1, %d0, -129

# CHECK-INST: madds %d14, %d1, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0xe1]
madds %d14, %d1, %d0, -1

# CHECK-INST: madds %d14, %d1, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0xe1]
madds %d14, %d1, %d0, 0

# CHECK-INST: madds %d14, %d1, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0xe1]
madds %d14, %d1, %d0, 1

# CHECK-INST: madds %d14, %d1, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0xe1]
madds %d14, %d1, %d0, 128

# CHECK-INST: madds %d14, %d1, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0xe1]
madds %d14, %d1, %d0, 255

# CHECK-INST: madds %d14, %d1, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0xe1]
madds %d14, %d1, %d1, -256

# CHECK-INST: madds %d14, %d1, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0xe1]
madds %d14, %d1, %d1, -129

# CHECK-INST: madds %d14, %d1, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0xe1]
madds %d14, %d1, %d1, -1

# CHECK-INST: madds %d14, %d1, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0xe1]
madds %d14, %d1, %d1, 0

# CHECK-INST: madds %d14, %d1, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0xe1]
madds %d14, %d1, %d1, 1

# CHECK-INST: madds %d14, %d1, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0xe1]
madds %d14, %d1, %d1, 128

# CHECK-INST: madds %d14, %d1, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0xe1]
madds %d14, %d1, %d1, 255

# CHECK-INST: madds %d14, %d1, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0xe1]
madds %d14, %d1, %d14, -256

# CHECK-INST: madds %d14, %d1, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0xe1]
madds %d14, %d1, %d14, -129

# CHECK-INST: madds %d14, %d1, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0xe1]
madds %d14, %d1, %d14, -1

# CHECK-INST: madds %d14, %d1, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0xe1]
madds %d14, %d1, %d14, 0

# CHECK-INST: madds %d14, %d1, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0xe1]
madds %d14, %d1, %d14, 1

# CHECK-INST: madds %d14, %d1, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0xe1]
madds %d14, %d1, %d14, 128

# CHECK-INST: madds %d14, %d1, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0xe1]
madds %d14, %d1, %d14, 255

# CHECK-INST: madds %d14, %d1, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0xe1]
madds %d14, %d1, %d15, -256

# CHECK-INST: madds %d14, %d1, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0xe1]
madds %d14, %d1, %d15, -129

# CHECK-INST: madds %d14, %d1, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0xe1]
madds %d14, %d1, %d15, -1

# CHECK-INST: madds %d14, %d1, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0xe1]
madds %d14, %d1, %d15, 0

# CHECK-INST: madds %d14, %d1, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0xe1]
madds %d14, %d1, %d15, 1

# CHECK-INST: madds %d14, %d1, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0xe1]
madds %d14, %d1, %d15, 128

# CHECK-INST: madds %d14, %d1, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0xe1]
madds %d14, %d1, %d15, 255

# CHECK-INST: madds %d14, %d14, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0xee]
madds %d14, %d14, %d0, -256

# CHECK-INST: madds %d14, %d14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0xee]
madds %d14, %d14, %d0, -129

# CHECK-INST: madds %d14, %d14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0xee]
madds %d14, %d14, %d0, -1

# CHECK-INST: madds %d14, %d14, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0xee]
madds %d14, %d14, %d0, 0

# CHECK-INST: madds %d14, %d14, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0xee]
madds %d14, %d14, %d0, 1

# CHECK-INST: madds %d14, %d14, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0xee]
madds %d14, %d14, %d0, 128

# CHECK-INST: madds %d14, %d14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0xee]
madds %d14, %d14, %d0, 255

# CHECK-INST: madds %d14, %d14, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0xee]
madds %d14, %d14, %d1, -256

# CHECK-INST: madds %d14, %d14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0xee]
madds %d14, %d14, %d1, -129

# CHECK-INST: madds %d14, %d14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0xee]
madds %d14, %d14, %d1, -1

# CHECK-INST: madds %d14, %d14, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0xee]
madds %d14, %d14, %d1, 0

# CHECK-INST: madds %d14, %d14, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0xee]
madds %d14, %d14, %d1, 1

# CHECK-INST: madds %d14, %d14, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0xee]
madds %d14, %d14, %d1, 128

# CHECK-INST: madds %d14, %d14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0xee]
madds %d14, %d14, %d1, 255

# CHECK-INST: madds %d14, %d14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0xee]
madds %d14, %d14, %d14, -256

# CHECK-INST: madds %d14, %d14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0xee]
madds %d14, %d14, %d14, -129

# CHECK-INST: madds %d14, %d14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0xee]
madds %d14, %d14, %d14, -1

# CHECK-INST: madds %d14, %d14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0xee]
madds %d14, %d14, %d14, 0

# CHECK-INST: madds %d14, %d14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0xee]
madds %d14, %d14, %d14, 1

# CHECK-INST: madds %d14, %d14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0xee]
madds %d14, %d14, %d14, 128

# CHECK-INST: madds %d14, %d14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0xee]
madds %d14, %d14, %d14, 255

# CHECK-INST: madds %d14, %d14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0xee]
madds %d14, %d14, %d15, -256

# CHECK-INST: madds %d14, %d14, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0xee]
madds %d14, %d14, %d15, -129

# CHECK-INST: madds %d14, %d14, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0xee]
madds %d14, %d14, %d15, -1

# CHECK-INST: madds %d14, %d14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0xee]
madds %d14, %d14, %d15, 0

# CHECK-INST: madds %d14, %d14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0xee]
madds %d14, %d14, %d15, 1

# CHECK-INST: madds %d14, %d14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0xee]
madds %d14, %d14, %d15, 128

# CHECK-INST: madds %d14, %d14, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0xee]
madds %d14, %d14, %d15, 255

# CHECK-INST: madds %d14, %d15, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0xef]
madds %d14, %d15, %d0, -256

# CHECK-INST: madds %d14, %d15, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0xef]
madds %d14, %d15, %d0, -129

# CHECK-INST: madds %d14, %d15, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0xef]
madds %d14, %d15, %d0, -1

# CHECK-INST: madds %d14, %d15, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0xef]
madds %d14, %d15, %d0, 0

# CHECK-INST: madds %d14, %d15, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0xef]
madds %d14, %d15, %d0, 1

# CHECK-INST: madds %d14, %d15, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0xef]
madds %d14, %d15, %d0, 128

# CHECK-INST: madds %d14, %d15, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0xef]
madds %d14, %d15, %d0, 255

# CHECK-INST: madds %d14, %d15, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0xef]
madds %d14, %d15, %d1, -256

# CHECK-INST: madds %d14, %d15, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0xef]
madds %d14, %d15, %d1, -129

# CHECK-INST: madds %d14, %d15, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0xef]
madds %d14, %d15, %d1, -1

# CHECK-INST: madds %d14, %d15, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0xef]
madds %d14, %d15, %d1, 0

# CHECK-INST: madds %d14, %d15, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0xef]
madds %d14, %d15, %d1, 1

# CHECK-INST: madds %d14, %d15, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0xef]
madds %d14, %d15, %d1, 128

# CHECK-INST: madds %d14, %d15, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0xef]
madds %d14, %d15, %d1, 255

# CHECK-INST: madds %d14, %d15, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0xef]
madds %d14, %d15, %d14, -256

# CHECK-INST: madds %d14, %d15, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0xef]
madds %d14, %d15, %d14, -129

# CHECK-INST: madds %d14, %d15, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0xef]
madds %d14, %d15, %d14, -1

# CHECK-INST: madds %d14, %d15, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0xef]
madds %d14, %d15, %d14, 0

# CHECK-INST: madds %d14, %d15, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0xef]
madds %d14, %d15, %d14, 1

# CHECK-INST: madds %d14, %d15, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0xef]
madds %d14, %d15, %d14, 128

# CHECK-INST: madds %d14, %d15, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0xef]
madds %d14, %d15, %d14, 255

# CHECK-INST: madds %d14, %d15, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0xef]
madds %d14, %d15, %d15, -256

# CHECK-INST: madds %d14, %d15, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0xef]
madds %d14, %d15, %d15, -129

# CHECK-INST: madds %d14, %d15, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0xef]
madds %d14, %d15, %d15, -1

# CHECK-INST: madds %d14, %d15, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0xef]
madds %d14, %d15, %d15, 0

# CHECK-INST: madds %d14, %d15, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0xef]
madds %d14, %d15, %d15, 1

# CHECK-INST: madds %d14, %d15, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0xef]
madds %d14, %d15, %d15, 128

# CHECK-INST: madds %d14, %d15, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0xef]
madds %d14, %d15, %d15, 255

# CHECK-INST: madds %d15, %d0, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0xf0]
madds %d15, %d0, %d0, -256

# CHECK-INST: madds %d15, %d0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0xf0]
madds %d15, %d0, %d0, -129

# CHECK-INST: madds %d15, %d0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0xf0]
madds %d15, %d0, %d0, -1

# CHECK-INST: madds %d15, %d0, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0xf0]
madds %d15, %d0, %d0, 0

# CHECK-INST: madds %d15, %d0, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0xf0]
madds %d15, %d0, %d0, 1

# CHECK-INST: madds %d15, %d0, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0xf0]
madds %d15, %d0, %d0, 128

# CHECK-INST: madds %d15, %d0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0xf0]
madds %d15, %d0, %d0, 255

# CHECK-INST: madds %d15, %d0, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0xf0]
madds %d15, %d0, %d1, -256

# CHECK-INST: madds %d15, %d0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0xf0]
madds %d15, %d0, %d1, -129

# CHECK-INST: madds %d15, %d0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0xf0]
madds %d15, %d0, %d1, -1

# CHECK-INST: madds %d15, %d0, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0xf0]
madds %d15, %d0, %d1, 0

# CHECK-INST: madds %d15, %d0, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0xf0]
madds %d15, %d0, %d1, 1

# CHECK-INST: madds %d15, %d0, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0xf0]
madds %d15, %d0, %d1, 128

# CHECK-INST: madds %d15, %d0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0xf0]
madds %d15, %d0, %d1, 255

# CHECK-INST: madds %d15, %d0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0xf0]
madds %d15, %d0, %d14, -256

# CHECK-INST: madds %d15, %d0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0xf0]
madds %d15, %d0, %d14, -129

# CHECK-INST: madds %d15, %d0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0xf0]
madds %d15, %d0, %d14, -1

# CHECK-INST: madds %d15, %d0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0xf0]
madds %d15, %d0, %d14, 0

# CHECK-INST: madds %d15, %d0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0xf0]
madds %d15, %d0, %d14, 1

# CHECK-INST: madds %d15, %d0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0xf0]
madds %d15, %d0, %d14, 128

# CHECK-INST: madds %d15, %d0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0xf0]
madds %d15, %d0, %d14, 255

# CHECK-INST: madds %d15, %d0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0xf0]
madds %d15, %d0, %d15, -256

# CHECK-INST: madds %d15, %d0, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0xf0]
madds %d15, %d0, %d15, -129

# CHECK-INST: madds %d15, %d0, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0xf0]
madds %d15, %d0, %d15, -1

# CHECK-INST: madds %d15, %d0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0xf0]
madds %d15, %d0, %d15, 0

# CHECK-INST: madds %d15, %d0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0xf0]
madds %d15, %d0, %d15, 1

# CHECK-INST: madds %d15, %d0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0xf0]
madds %d15, %d0, %d15, 128

# CHECK-INST: madds %d15, %d0, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0xf0]
madds %d15, %d0, %d15, 255

# CHECK-INST: madds %d15, %d1, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0xf1]
madds %d15, %d1, %d0, -256

# CHECK-INST: madds %d15, %d1, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0xf1]
madds %d15, %d1, %d0, -129

# CHECK-INST: madds %d15, %d1, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0xf1]
madds %d15, %d1, %d0, -1

# CHECK-INST: madds %d15, %d1, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0xf1]
madds %d15, %d1, %d0, 0

# CHECK-INST: madds %d15, %d1, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0xf1]
madds %d15, %d1, %d0, 1

# CHECK-INST: madds %d15, %d1, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0xf1]
madds %d15, %d1, %d0, 128

# CHECK-INST: madds %d15, %d1, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0xf1]
madds %d15, %d1, %d0, 255

# CHECK-INST: madds %d15, %d1, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0xf1]
madds %d15, %d1, %d1, -256

# CHECK-INST: madds %d15, %d1, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0xf1]
madds %d15, %d1, %d1, -129

# CHECK-INST: madds %d15, %d1, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0xf1]
madds %d15, %d1, %d1, -1

# CHECK-INST: madds %d15, %d1, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0xf1]
madds %d15, %d1, %d1, 0

# CHECK-INST: madds %d15, %d1, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0xf1]
madds %d15, %d1, %d1, 1

# CHECK-INST: madds %d15, %d1, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0xf1]
madds %d15, %d1, %d1, 128

# CHECK-INST: madds %d15, %d1, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0xf1]
madds %d15, %d1, %d1, 255

# CHECK-INST: madds %d15, %d1, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0xf1]
madds %d15, %d1, %d14, -256

# CHECK-INST: madds %d15, %d1, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0xf1]
madds %d15, %d1, %d14, -129

# CHECK-INST: madds %d15, %d1, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0xf1]
madds %d15, %d1, %d14, -1

# CHECK-INST: madds %d15, %d1, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0xf1]
madds %d15, %d1, %d14, 0

# CHECK-INST: madds %d15, %d1, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0xf1]
madds %d15, %d1, %d14, 1

# CHECK-INST: madds %d15, %d1, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0xf1]
madds %d15, %d1, %d14, 128

# CHECK-INST: madds %d15, %d1, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0xf1]
madds %d15, %d1, %d14, 255

# CHECK-INST: madds %d15, %d1, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0xf1]
madds %d15, %d1, %d15, -256

# CHECK-INST: madds %d15, %d1, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0xf1]
madds %d15, %d1, %d15, -129

# CHECK-INST: madds %d15, %d1, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0xf1]
madds %d15, %d1, %d15, -1

# CHECK-INST: madds %d15, %d1, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0xf1]
madds %d15, %d1, %d15, 0

# CHECK-INST: madds %d15, %d1, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0xf1]
madds %d15, %d1, %d15, 1

# CHECK-INST: madds %d15, %d1, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0xf1]
madds %d15, %d1, %d15, 128

# CHECK-INST: madds %d15, %d1, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0xf1]
madds %d15, %d1, %d15, 255

# CHECK-INST: madds %d15, %d14, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0xfe]
madds %d15, %d14, %d0, -256

# CHECK-INST: madds %d15, %d14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0xfe]
madds %d15, %d14, %d0, -129

# CHECK-INST: madds %d15, %d14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0xfe]
madds %d15, %d14, %d0, -1

# CHECK-INST: madds %d15, %d14, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0xfe]
madds %d15, %d14, %d0, 0

# CHECK-INST: madds %d15, %d14, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0xfe]
madds %d15, %d14, %d0, 1

# CHECK-INST: madds %d15, %d14, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0xfe]
madds %d15, %d14, %d0, 128

# CHECK-INST: madds %d15, %d14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0xfe]
madds %d15, %d14, %d0, 255

# CHECK-INST: madds %d15, %d14, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0xfe]
madds %d15, %d14, %d1, -256

# CHECK-INST: madds %d15, %d14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0xfe]
madds %d15, %d14, %d1, -129

# CHECK-INST: madds %d15, %d14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0xfe]
madds %d15, %d14, %d1, -1

# CHECK-INST: madds %d15, %d14, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0xfe]
madds %d15, %d14, %d1, 0

# CHECK-INST: madds %d15, %d14, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0xfe]
madds %d15, %d14, %d1, 1

# CHECK-INST: madds %d15, %d14, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0xfe]
madds %d15, %d14, %d1, 128

# CHECK-INST: madds %d15, %d14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0xfe]
madds %d15, %d14, %d1, 255

# CHECK-INST: madds %d15, %d14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0xfe]
madds %d15, %d14, %d14, -256

# CHECK-INST: madds %d15, %d14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0xfe]
madds %d15, %d14, %d14, -129

# CHECK-INST: madds %d15, %d14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0xfe]
madds %d15, %d14, %d14, -1

# CHECK-INST: madds %d15, %d14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0xfe]
madds %d15, %d14, %d14, 0

# CHECK-INST: madds %d15, %d14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0xfe]
madds %d15, %d14, %d14, 1

# CHECK-INST: madds %d15, %d14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0xfe]
madds %d15, %d14, %d14, 128

# CHECK-INST: madds %d15, %d14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0xfe]
madds %d15, %d14, %d14, 255

# CHECK-INST: madds %d15, %d14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0xfe]
madds %d15, %d14, %d15, -256

# CHECK-INST: madds %d15, %d14, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0xfe]
madds %d15, %d14, %d15, -129

# CHECK-INST: madds %d15, %d14, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0xfe]
madds %d15, %d14, %d15, -1

# CHECK-INST: madds %d15, %d14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0xfe]
madds %d15, %d14, %d15, 0

# CHECK-INST: madds %d15, %d14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0xfe]
madds %d15, %d14, %d15, 1

# CHECK-INST: madds %d15, %d14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0xfe]
madds %d15, %d14, %d15, 128

# CHECK-INST: madds %d15, %d14, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0xfe]
madds %d15, %d14, %d15, 255

# CHECK-INST: madds %d15, %d15, %d0, -256
# CHECK: encoding: [0x13,0x00,0xb0,0xff]
madds %d15, %d15, %d0, -256

# CHECK-INST: madds %d15, %d15, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xb7,0xff]
madds %d15, %d15, %d0, -129

# CHECK-INST: madds %d15, %d15, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xbf,0xff]
madds %d15, %d15, %d0, -1

# CHECK-INST: madds %d15, %d15, %d0, 0
# CHECK: encoding: [0x13,0x00,0xa0,0xff]
madds %d15, %d15, %d0, 0

# CHECK-INST: madds %d15, %d15, %d0, 1
# CHECK: encoding: [0x13,0x10,0xa0,0xff]
madds %d15, %d15, %d0, 1

# CHECK-INST: madds %d15, %d15, %d0, 128
# CHECK: encoding: [0x13,0x00,0xa8,0xff]
madds %d15, %d15, %d0, 128

# CHECK-INST: madds %d15, %d15, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xaf,0xff]
madds %d15, %d15, %d0, 255

# CHECK-INST: madds %d15, %d15, %d1, -256
# CHECK: encoding: [0x13,0x01,0xb0,0xff]
madds %d15, %d15, %d1, -256

# CHECK-INST: madds %d15, %d15, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xb7,0xff]
madds %d15, %d15, %d1, -129

# CHECK-INST: madds %d15, %d15, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xbf,0xff]
madds %d15, %d15, %d1, -1

# CHECK-INST: madds %d15, %d15, %d1, 0
# CHECK: encoding: [0x13,0x01,0xa0,0xff]
madds %d15, %d15, %d1, 0

# CHECK-INST: madds %d15, %d15, %d1, 1
# CHECK: encoding: [0x13,0x11,0xa0,0xff]
madds %d15, %d15, %d1, 1

# CHECK-INST: madds %d15, %d15, %d1, 128
# CHECK: encoding: [0x13,0x01,0xa8,0xff]
madds %d15, %d15, %d1, 128

# CHECK-INST: madds %d15, %d15, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xaf,0xff]
madds %d15, %d15, %d1, 255

# CHECK-INST: madds %d15, %d15, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xb0,0xff]
madds %d15, %d15, %d14, -256

# CHECK-INST: madds %d15, %d15, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xb7,0xff]
madds %d15, %d15, %d14, -129

# CHECK-INST: madds %d15, %d15, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xbf,0xff]
madds %d15, %d15, %d14, -1

# CHECK-INST: madds %d15, %d15, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xa0,0xff]
madds %d15, %d15, %d14, 0

# CHECK-INST: madds %d15, %d15, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xa0,0xff]
madds %d15, %d15, %d14, 1

# CHECK-INST: madds %d15, %d15, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xa8,0xff]
madds %d15, %d15, %d14, 128

# CHECK-INST: madds %d15, %d15, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xaf,0xff]
madds %d15, %d15, %d14, 255

# CHECK-INST: madds %d15, %d15, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xb0,0xff]
madds %d15, %d15, %d15, -256

# CHECK-INST: madds %d15, %d15, %d15, -129
# CHECK: encoding: [0x13,0xff,0xb7,0xff]
madds %d15, %d15, %d15, -129

# CHECK-INST: madds %d15, %d15, %d15, -1
# CHECK: encoding: [0x13,0xff,0xbf,0xff]
madds %d15, %d15, %d15, -1

# CHECK-INST: madds %d15, %d15, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xa0,0xff]
madds %d15, %d15, %d15, 0

# CHECK-INST: madds %d15, %d15, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xa0,0xff]
madds %d15, %d15, %d15, 1

# CHECK-INST: madds %d15, %d15, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xa8,0xff]
madds %d15, %d15, %d15, 128

# CHECK-INST: madds %d15, %d15, %d15, 255
# CHECK: encoding: [0x13,0xff,0xaf,0xff]
madds %d15, %d15, %d15, 255

# CHECK-INST: madds %e0, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xea,0x00]
madds %e0, %e0, %d0, %d0

# CHECK-INST: madds %e0, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xea,0x00]
madds %e0, %e0, %d0, %d1

# CHECK-INST: madds %e0, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xea,0x00]
madds %e0, %e0, %d0, %d14

# CHECK-INST: madds %e0, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xea,0x00]
madds %e0, %e0, %d0, %d15

# CHECK-INST: madds %e0, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xea,0x00]
madds %e0, %e0, %d1, %d0

# CHECK-INST: madds %e0, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xea,0x00]
madds %e0, %e0, %d1, %d1

# CHECK-INST: madds %e0, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xea,0x00]
madds %e0, %e0, %d1, %d14

# CHECK-INST: madds %e0, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xea,0x00]
madds %e0, %e0, %d1, %d15

# CHECK-INST: madds %e0, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xea,0x00]
madds %e0, %e0, %d14, %d0

# CHECK-INST: madds %e0, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xea,0x00]
madds %e0, %e0, %d14, %d1

# CHECK-INST: madds %e0, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xea,0x00]
madds %e0, %e0, %d14, %d14

# CHECK-INST: madds %e0, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xea,0x00]
madds %e0, %e0, %d14, %d15

# CHECK-INST: madds %e0, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xea,0x00]
madds %e0, %e0, %d15, %d0

# CHECK-INST: madds %e0, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xea,0x00]
madds %e0, %e0, %d15, %d1

# CHECK-INST: madds %e0, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xea,0x00]
madds %e0, %e0, %d15, %d14

# CHECK-INST: madds %e0, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xea,0x00]
madds %e0, %e0, %d15, %d15

# CHECK-INST: madds %e0, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xea,0x06]
madds %e0, %e6, %d0, %d0

# CHECK-INST: madds %e0, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xea,0x06]
madds %e0, %e6, %d0, %d1

# CHECK-INST: madds %e0, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xea,0x06]
madds %e0, %e6, %d0, %d14

# CHECK-INST: madds %e0, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xea,0x06]
madds %e0, %e6, %d0, %d15

# CHECK-INST: madds %e0, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xea,0x06]
madds %e0, %e6, %d1, %d0

# CHECK-INST: madds %e0, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xea,0x06]
madds %e0, %e6, %d1, %d1

# CHECK-INST: madds %e0, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xea,0x06]
madds %e0, %e6, %d1, %d14

# CHECK-INST: madds %e0, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xea,0x06]
madds %e0, %e6, %d1, %d15

# CHECK-INST: madds %e0, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xea,0x06]
madds %e0, %e6, %d14, %d0

# CHECK-INST: madds %e0, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xea,0x06]
madds %e0, %e6, %d14, %d1

# CHECK-INST: madds %e0, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xea,0x06]
madds %e0, %e6, %d14, %d14

# CHECK-INST: madds %e0, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xea,0x06]
madds %e0, %e6, %d14, %d15

# CHECK-INST: madds %e0, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xea,0x06]
madds %e0, %e6, %d15, %d0

# CHECK-INST: madds %e0, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xea,0x06]
madds %e0, %e6, %d15, %d1

# CHECK-INST: madds %e0, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xea,0x06]
madds %e0, %e6, %d15, %d14

# CHECK-INST: madds %e0, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xea,0x06]
madds %e0, %e6, %d15, %d15

# CHECK-INST: madds %e0, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xea,0x0e]
madds %e0, %e14, %d0, %d0

# CHECK-INST: madds %e0, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xea,0x0e]
madds %e0, %e14, %d0, %d1

# CHECK-INST: madds %e0, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xea,0x0e]
madds %e0, %e14, %d0, %d14

# CHECK-INST: madds %e0, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xea,0x0e]
madds %e0, %e14, %d0, %d15

# CHECK-INST: madds %e0, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xea,0x0e]
madds %e0, %e14, %d1, %d0

# CHECK-INST: madds %e0, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xea,0x0e]
madds %e0, %e14, %d1, %d1

# CHECK-INST: madds %e0, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xea,0x0e]
madds %e0, %e14, %d1, %d14

# CHECK-INST: madds %e0, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xea,0x0e]
madds %e0, %e14, %d1, %d15

# CHECK-INST: madds %e0, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xea,0x0e]
madds %e0, %e14, %d14, %d0

# CHECK-INST: madds %e0, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xea,0x0e]
madds %e0, %e14, %d14, %d1

# CHECK-INST: madds %e0, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xea,0x0e]
madds %e0, %e14, %d14, %d14

# CHECK-INST: madds %e0, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xea,0x0e]
madds %e0, %e14, %d14, %d15

# CHECK-INST: madds %e0, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xea,0x0e]
madds %e0, %e14, %d15, %d0

# CHECK-INST: madds %e0, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xea,0x0e]
madds %e0, %e14, %d15, %d1

# CHECK-INST: madds %e0, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xea,0x0e]
madds %e0, %e14, %d15, %d14

# CHECK-INST: madds %e0, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xea,0x0e]
madds %e0, %e14, %d15, %d15

# CHECK-INST: madds %e6, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xea,0x60]
madds %e6, %e0, %d0, %d0

# CHECK-INST: madds %e6, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xea,0x60]
madds %e6, %e0, %d0, %d1

# CHECK-INST: madds %e6, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xea,0x60]
madds %e6, %e0, %d0, %d14

# CHECK-INST: madds %e6, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xea,0x60]
madds %e6, %e0, %d0, %d15

# CHECK-INST: madds %e6, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xea,0x60]
madds %e6, %e0, %d1, %d0

# CHECK-INST: madds %e6, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xea,0x60]
madds %e6, %e0, %d1, %d1

# CHECK-INST: madds %e6, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xea,0x60]
madds %e6, %e0, %d1, %d14

# CHECK-INST: madds %e6, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xea,0x60]
madds %e6, %e0, %d1, %d15

# CHECK-INST: madds %e6, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xea,0x60]
madds %e6, %e0, %d14, %d0

# CHECK-INST: madds %e6, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xea,0x60]
madds %e6, %e0, %d14, %d1

# CHECK-INST: madds %e6, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xea,0x60]
madds %e6, %e0, %d14, %d14

# CHECK-INST: madds %e6, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xea,0x60]
madds %e6, %e0, %d14, %d15

# CHECK-INST: madds %e6, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xea,0x60]
madds %e6, %e0, %d15, %d0

# CHECK-INST: madds %e6, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xea,0x60]
madds %e6, %e0, %d15, %d1

# CHECK-INST: madds %e6, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xea,0x60]
madds %e6, %e0, %d15, %d14

# CHECK-INST: madds %e6, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xea,0x60]
madds %e6, %e0, %d15, %d15

# CHECK-INST: madds %e6, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xea,0x66]
madds %e6, %e6, %d0, %d0

# CHECK-INST: madds %e6, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xea,0x66]
madds %e6, %e6, %d0, %d1

# CHECK-INST: madds %e6, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xea,0x66]
madds %e6, %e6, %d0, %d14

# CHECK-INST: madds %e6, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xea,0x66]
madds %e6, %e6, %d0, %d15

# CHECK-INST: madds %e6, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xea,0x66]
madds %e6, %e6, %d1, %d0

# CHECK-INST: madds %e6, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xea,0x66]
madds %e6, %e6, %d1, %d1

# CHECK-INST: madds %e6, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xea,0x66]
madds %e6, %e6, %d1, %d14

# CHECK-INST: madds %e6, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xea,0x66]
madds %e6, %e6, %d1, %d15

# CHECK-INST: madds %e6, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xea,0x66]
madds %e6, %e6, %d14, %d0

# CHECK-INST: madds %e6, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xea,0x66]
madds %e6, %e6, %d14, %d1

# CHECK-INST: madds %e6, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xea,0x66]
madds %e6, %e6, %d14, %d14

# CHECK-INST: madds %e6, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xea,0x66]
madds %e6, %e6, %d14, %d15

# CHECK-INST: madds %e6, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xea,0x66]
madds %e6, %e6, %d15, %d0

# CHECK-INST: madds %e6, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xea,0x66]
madds %e6, %e6, %d15, %d1

# CHECK-INST: madds %e6, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xea,0x66]
madds %e6, %e6, %d15, %d14

# CHECK-INST: madds %e6, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xea,0x66]
madds %e6, %e6, %d15, %d15

# CHECK-INST: madds %e6, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xea,0x6e]
madds %e6, %e14, %d0, %d0

# CHECK-INST: madds %e6, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xea,0x6e]
madds %e6, %e14, %d0, %d1

# CHECK-INST: madds %e6, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xea,0x6e]
madds %e6, %e14, %d0, %d14

# CHECK-INST: madds %e6, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xea,0x6e]
madds %e6, %e14, %d0, %d15

# CHECK-INST: madds %e6, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xea,0x6e]
madds %e6, %e14, %d1, %d0

# CHECK-INST: madds %e6, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xea,0x6e]
madds %e6, %e14, %d1, %d1

# CHECK-INST: madds %e6, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xea,0x6e]
madds %e6, %e14, %d1, %d14

# CHECK-INST: madds %e6, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xea,0x6e]
madds %e6, %e14, %d1, %d15

# CHECK-INST: madds %e6, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xea,0x6e]
madds %e6, %e14, %d14, %d0

# CHECK-INST: madds %e6, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xea,0x6e]
madds %e6, %e14, %d14, %d1

# CHECK-INST: madds %e6, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xea,0x6e]
madds %e6, %e14, %d14, %d14

# CHECK-INST: madds %e6, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xea,0x6e]
madds %e6, %e14, %d14, %d15

# CHECK-INST: madds %e6, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xea,0x6e]
madds %e6, %e14, %d15, %d0

# CHECK-INST: madds %e6, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xea,0x6e]
madds %e6, %e14, %d15, %d1

# CHECK-INST: madds %e6, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xea,0x6e]
madds %e6, %e14, %d15, %d14

# CHECK-INST: madds %e6, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xea,0x6e]
madds %e6, %e14, %d15, %d15

# CHECK-INST: madds %e14, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xea,0xe0]
madds %e14, %e0, %d0, %d0

# CHECK-INST: madds %e14, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xea,0xe0]
madds %e14, %e0, %d0, %d1

# CHECK-INST: madds %e14, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xea,0xe0]
madds %e14, %e0, %d0, %d14

# CHECK-INST: madds %e14, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xea,0xe0]
madds %e14, %e0, %d0, %d15

# CHECK-INST: madds %e14, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xea,0xe0]
madds %e14, %e0, %d1, %d0

# CHECK-INST: madds %e14, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xea,0xe0]
madds %e14, %e0, %d1, %d1

# CHECK-INST: madds %e14, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xea,0xe0]
madds %e14, %e0, %d1, %d14

# CHECK-INST: madds %e14, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xea,0xe0]
madds %e14, %e0, %d1, %d15

# CHECK-INST: madds %e14, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xea,0xe0]
madds %e14, %e0, %d14, %d0

# CHECK-INST: madds %e14, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xea,0xe0]
madds %e14, %e0, %d14, %d1

# CHECK-INST: madds %e14, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xea,0xe0]
madds %e14, %e0, %d14, %d14

# CHECK-INST: madds %e14, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xea,0xe0]
madds %e14, %e0, %d14, %d15

# CHECK-INST: madds %e14, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xea,0xe0]
madds %e14, %e0, %d15, %d0

# CHECK-INST: madds %e14, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xea,0xe0]
madds %e14, %e0, %d15, %d1

# CHECK-INST: madds %e14, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xea,0xe0]
madds %e14, %e0, %d15, %d14

# CHECK-INST: madds %e14, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xea,0xe0]
madds %e14, %e0, %d15, %d15

# CHECK-INST: madds %e14, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xea,0xe6]
madds %e14, %e6, %d0, %d0

# CHECK-INST: madds %e14, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xea,0xe6]
madds %e14, %e6, %d0, %d1

# CHECK-INST: madds %e14, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xea,0xe6]
madds %e14, %e6, %d0, %d14

# CHECK-INST: madds %e14, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xea,0xe6]
madds %e14, %e6, %d0, %d15

# CHECK-INST: madds %e14, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xea,0xe6]
madds %e14, %e6, %d1, %d0

# CHECK-INST: madds %e14, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xea,0xe6]
madds %e14, %e6, %d1, %d1

# CHECK-INST: madds %e14, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xea,0xe6]
madds %e14, %e6, %d1, %d14

# CHECK-INST: madds %e14, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xea,0xe6]
madds %e14, %e6, %d1, %d15

# CHECK-INST: madds %e14, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xea,0xe6]
madds %e14, %e6, %d14, %d0

# CHECK-INST: madds %e14, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xea,0xe6]
madds %e14, %e6, %d14, %d1

# CHECK-INST: madds %e14, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xea,0xe6]
madds %e14, %e6, %d14, %d14

# CHECK-INST: madds %e14, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xea,0xe6]
madds %e14, %e6, %d14, %d15

# CHECK-INST: madds %e14, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xea,0xe6]
madds %e14, %e6, %d15, %d0

# CHECK-INST: madds %e14, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xea,0xe6]
madds %e14, %e6, %d15, %d1

# CHECK-INST: madds %e14, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xea,0xe6]
madds %e14, %e6, %d15, %d14

# CHECK-INST: madds %e14, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xea,0xe6]
madds %e14, %e6, %d15, %d15

# CHECK-INST: madds %e14, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xea,0xee]
madds %e14, %e14, %d0, %d0

# CHECK-INST: madds %e14, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xea,0xee]
madds %e14, %e14, %d0, %d1

# CHECK-INST: madds %e14, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xea,0xee]
madds %e14, %e14, %d0, %d14

# CHECK-INST: madds %e14, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xea,0xee]
madds %e14, %e14, %d0, %d15

# CHECK-INST: madds %e14, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xea,0xee]
madds %e14, %e14, %d1, %d0

# CHECK-INST: madds %e14, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xea,0xee]
madds %e14, %e14, %d1, %d1

# CHECK-INST: madds %e14, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xea,0xee]
madds %e14, %e14, %d1, %d14

# CHECK-INST: madds %e14, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xea,0xee]
madds %e14, %e14, %d1, %d15

# CHECK-INST: madds %e14, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xea,0xee]
madds %e14, %e14, %d14, %d0

# CHECK-INST: madds %e14, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xea,0xee]
madds %e14, %e14, %d14, %d1

# CHECK-INST: madds %e14, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xea,0xee]
madds %e14, %e14, %d14, %d14

# CHECK-INST: madds %e14, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xea,0xee]
madds %e14, %e14, %d14, %d15

# CHECK-INST: madds %e14, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xea,0xee]
madds %e14, %e14, %d15, %d0

# CHECK-INST: madds %e14, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xea,0xee]
madds %e14, %e14, %d15, %d1

# CHECK-INST: madds %e14, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xea,0xee]
madds %e14, %e14, %d15, %d14

# CHECK-INST: madds %e14, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xea,0xee]
madds %e14, %e14, %d15, %d15

# CHECK-INST: madds %e0, %e0, %d0, -256
# CHECK: encoding: [0x13,0x00,0xf0,0x00]
madds %e0, %e0, %d0, -256

# CHECK-INST: madds %e0, %e0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xf7,0x00]
madds %e0, %e0, %d0, -129

# CHECK-INST: madds %e0, %e0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xff,0x00]
madds %e0, %e0, %d0, -1

# CHECK-INST: madds %e0, %e0, %d0, 0
# CHECK: encoding: [0x13,0x00,0xe0,0x00]
madds %e0, %e0, %d0, 0

# CHECK-INST: madds %e0, %e0, %d0, 1
# CHECK: encoding: [0x13,0x10,0xe0,0x00]
madds %e0, %e0, %d0, 1

# CHECK-INST: madds %e0, %e0, %d0, 128
# CHECK: encoding: [0x13,0x00,0xe8,0x00]
madds %e0, %e0, %d0, 128

# CHECK-INST: madds %e0, %e0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xef,0x00]
madds %e0, %e0, %d0, 255

# CHECK-INST: madds %e0, %e0, %d1, -256
# CHECK: encoding: [0x13,0x01,0xf0,0x00]
madds %e0, %e0, %d1, -256

# CHECK-INST: madds %e0, %e0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xf7,0x00]
madds %e0, %e0, %d1, -129

# CHECK-INST: madds %e0, %e0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xff,0x00]
madds %e0, %e0, %d1, -1

# CHECK-INST: madds %e0, %e0, %d1, 0
# CHECK: encoding: [0x13,0x01,0xe0,0x00]
madds %e0, %e0, %d1, 0

# CHECK-INST: madds %e0, %e0, %d1, 1
# CHECK: encoding: [0x13,0x11,0xe0,0x00]
madds %e0, %e0, %d1, 1

# CHECK-INST: madds %e0, %e0, %d1, 128
# CHECK: encoding: [0x13,0x01,0xe8,0x00]
madds %e0, %e0, %d1, 128

# CHECK-INST: madds %e0, %e0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xef,0x00]
madds %e0, %e0, %d1, 255

# CHECK-INST: madds %e0, %e0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xf0,0x00]
madds %e0, %e0, %d14, -256

# CHECK-INST: madds %e0, %e0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xf7,0x00]
madds %e0, %e0, %d14, -129

# CHECK-INST: madds %e0, %e0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xff,0x00]
madds %e0, %e0, %d14, -1

# CHECK-INST: madds %e0, %e0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xe0,0x00]
madds %e0, %e0, %d14, 0

# CHECK-INST: madds %e0, %e0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xe0,0x00]
madds %e0, %e0, %d14, 1

# CHECK-INST: madds %e0, %e0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xe8,0x00]
madds %e0, %e0, %d14, 128

# CHECK-INST: madds %e0, %e0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xef,0x00]
madds %e0, %e0, %d14, 255

# CHECK-INST: madds %e0, %e0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xf0,0x00]
madds %e0, %e0, %d15, -256

# CHECK-INST: madds %e0, %e0, %d15, -129
# CHECK: encoding: [0x13,0xff,0xf7,0x00]
madds %e0, %e0, %d15, -129

# CHECK-INST: madds %e0, %e0, %d15, -1
# CHECK: encoding: [0x13,0xff,0xff,0x00]
madds %e0, %e0, %d15, -1

# CHECK-INST: madds %e0, %e0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xe0,0x00]
madds %e0, %e0, %d15, 0

# CHECK-INST: madds %e0, %e0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xe0,0x00]
madds %e0, %e0, %d15, 1

# CHECK-INST: madds %e0, %e0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xe8,0x00]
madds %e0, %e0, %d15, 128

# CHECK-INST: madds %e0, %e0, %d15, 255
# CHECK: encoding: [0x13,0xff,0xef,0x00]
madds %e0, %e0, %d15, 255

# CHECK-INST: madds %e0, %e6, %d0, -256
# CHECK: encoding: [0x13,0x00,0xf0,0x06]
madds %e0, %e6, %d0, -256

# CHECK-INST: madds %e0, %e6, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xf7,0x06]
madds %e0, %e6, %d0, -129

# CHECK-INST: madds %e0, %e6, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xff,0x06]
madds %e0, %e6, %d0, -1

# CHECK-INST: madds %e0, %e6, %d0, 0
# CHECK: encoding: [0x13,0x00,0xe0,0x06]
madds %e0, %e6, %d0, 0

# CHECK-INST: madds %e0, %e6, %d0, 1
# CHECK: encoding: [0x13,0x10,0xe0,0x06]
madds %e0, %e6, %d0, 1

# CHECK-INST: madds %e0, %e6, %d0, 128
# CHECK: encoding: [0x13,0x00,0xe8,0x06]
madds %e0, %e6, %d0, 128

# CHECK-INST: madds %e0, %e6, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xef,0x06]
madds %e0, %e6, %d0, 255

# CHECK-INST: madds %e0, %e6, %d1, -256
# CHECK: encoding: [0x13,0x01,0xf0,0x06]
madds %e0, %e6, %d1, -256

# CHECK-INST: madds %e0, %e6, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xf7,0x06]
madds %e0, %e6, %d1, -129

# CHECK-INST: madds %e0, %e6, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xff,0x06]
madds %e0, %e6, %d1, -1

# CHECK-INST: madds %e0, %e6, %d1, 0
# CHECK: encoding: [0x13,0x01,0xe0,0x06]
madds %e0, %e6, %d1, 0

# CHECK-INST: madds %e0, %e6, %d1, 1
# CHECK: encoding: [0x13,0x11,0xe0,0x06]
madds %e0, %e6, %d1, 1

# CHECK-INST: madds %e0, %e6, %d1, 128
# CHECK: encoding: [0x13,0x01,0xe8,0x06]
madds %e0, %e6, %d1, 128

# CHECK-INST: madds %e0, %e6, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xef,0x06]
madds %e0, %e6, %d1, 255

# CHECK-INST: madds %e0, %e6, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xf0,0x06]
madds %e0, %e6, %d14, -256

# CHECK-INST: madds %e0, %e6, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xf7,0x06]
madds %e0, %e6, %d14, -129

# CHECK-INST: madds %e0, %e6, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xff,0x06]
madds %e0, %e6, %d14, -1

# CHECK-INST: madds %e0, %e6, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xe0,0x06]
madds %e0, %e6, %d14, 0

# CHECK-INST: madds %e0, %e6, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xe0,0x06]
madds %e0, %e6, %d14, 1

# CHECK-INST: madds %e0, %e6, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xe8,0x06]
madds %e0, %e6, %d14, 128

# CHECK-INST: madds %e0, %e6, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xef,0x06]
madds %e0, %e6, %d14, 255

# CHECK-INST: madds %e0, %e6, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xf0,0x06]
madds %e0, %e6, %d15, -256

# CHECK-INST: madds %e0, %e6, %d15, -129
# CHECK: encoding: [0x13,0xff,0xf7,0x06]
madds %e0, %e6, %d15, -129

# CHECK-INST: madds %e0, %e6, %d15, -1
# CHECK: encoding: [0x13,0xff,0xff,0x06]
madds %e0, %e6, %d15, -1

# CHECK-INST: madds %e0, %e6, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xe0,0x06]
madds %e0, %e6, %d15, 0

# CHECK-INST: madds %e0, %e6, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xe0,0x06]
madds %e0, %e6, %d15, 1

# CHECK-INST: madds %e0, %e6, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xe8,0x06]
madds %e0, %e6, %d15, 128

# CHECK-INST: madds %e0, %e6, %d15, 255
# CHECK: encoding: [0x13,0xff,0xef,0x06]
madds %e0, %e6, %d15, 255

# CHECK-INST: madds %e0, %e14, %d0, -256
# CHECK: encoding: [0x13,0x00,0xf0,0x0e]
madds %e0, %e14, %d0, -256

# CHECK-INST: madds %e0, %e14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xf7,0x0e]
madds %e0, %e14, %d0, -129

# CHECK-INST: madds %e0, %e14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xff,0x0e]
madds %e0, %e14, %d0, -1

# CHECK-INST: madds %e0, %e14, %d0, 0
# CHECK: encoding: [0x13,0x00,0xe0,0x0e]
madds %e0, %e14, %d0, 0

# CHECK-INST: madds %e0, %e14, %d0, 1
# CHECK: encoding: [0x13,0x10,0xe0,0x0e]
madds %e0, %e14, %d0, 1

# CHECK-INST: madds %e0, %e14, %d0, 128
# CHECK: encoding: [0x13,0x00,0xe8,0x0e]
madds %e0, %e14, %d0, 128

# CHECK-INST: madds %e0, %e14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xef,0x0e]
madds %e0, %e14, %d0, 255

# CHECK-INST: madds %e0, %e14, %d1, -256
# CHECK: encoding: [0x13,0x01,0xf0,0x0e]
madds %e0, %e14, %d1, -256

# CHECK-INST: madds %e0, %e14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xf7,0x0e]
madds %e0, %e14, %d1, -129

# CHECK-INST: madds %e0, %e14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xff,0x0e]
madds %e0, %e14, %d1, -1

# CHECK-INST: madds %e0, %e14, %d1, 0
# CHECK: encoding: [0x13,0x01,0xe0,0x0e]
madds %e0, %e14, %d1, 0

# CHECK-INST: madds %e0, %e14, %d1, 1
# CHECK: encoding: [0x13,0x11,0xe0,0x0e]
madds %e0, %e14, %d1, 1

# CHECK-INST: madds %e0, %e14, %d1, 128
# CHECK: encoding: [0x13,0x01,0xe8,0x0e]
madds %e0, %e14, %d1, 128

# CHECK-INST: madds %e0, %e14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xef,0x0e]
madds %e0, %e14, %d1, 255

# CHECK-INST: madds %e0, %e14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xf0,0x0e]
madds %e0, %e14, %d14, -256

# CHECK-INST: madds %e0, %e14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xf7,0x0e]
madds %e0, %e14, %d14, -129

# CHECK-INST: madds %e0, %e14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xff,0x0e]
madds %e0, %e14, %d14, -1

# CHECK-INST: madds %e0, %e14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xe0,0x0e]
madds %e0, %e14, %d14, 0

# CHECK-INST: madds %e0, %e14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xe0,0x0e]
madds %e0, %e14, %d14, 1

# CHECK-INST: madds %e0, %e14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xe8,0x0e]
madds %e0, %e14, %d14, 128

# CHECK-INST: madds %e0, %e14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xef,0x0e]
madds %e0, %e14, %d14, 255

# CHECK-INST: madds %e0, %e14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xf0,0x0e]
madds %e0, %e14, %d15, -256

# CHECK-INST: madds %e0, %e14, %d15, -129
# CHECK: encoding: [0x13,0xff,0xf7,0x0e]
madds %e0, %e14, %d15, -129

# CHECK-INST: madds %e0, %e14, %d15, -1
# CHECK: encoding: [0x13,0xff,0xff,0x0e]
madds %e0, %e14, %d15, -1

# CHECK-INST: madds %e0, %e14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xe0,0x0e]
madds %e0, %e14, %d15, 0

# CHECK-INST: madds %e0, %e14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xe0,0x0e]
madds %e0, %e14, %d15, 1

# CHECK-INST: madds %e0, %e14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xe8,0x0e]
madds %e0, %e14, %d15, 128

# CHECK-INST: madds %e0, %e14, %d15, 255
# CHECK: encoding: [0x13,0xff,0xef,0x0e]
madds %e0, %e14, %d15, 255

# CHECK-INST: madds %e6, %e0, %d0, -256
# CHECK: encoding: [0x13,0x00,0xf0,0x60]
madds %e6, %e0, %d0, -256

# CHECK-INST: madds %e6, %e0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xf7,0x60]
madds %e6, %e0, %d0, -129

# CHECK-INST: madds %e6, %e0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xff,0x60]
madds %e6, %e0, %d0, -1

# CHECK-INST: madds %e6, %e0, %d0, 0
# CHECK: encoding: [0x13,0x00,0xe0,0x60]
madds %e6, %e0, %d0, 0

# CHECK-INST: madds %e6, %e0, %d0, 1
# CHECK: encoding: [0x13,0x10,0xe0,0x60]
madds %e6, %e0, %d0, 1

# CHECK-INST: madds %e6, %e0, %d0, 128
# CHECK: encoding: [0x13,0x00,0xe8,0x60]
madds %e6, %e0, %d0, 128

# CHECK-INST: madds %e6, %e0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xef,0x60]
madds %e6, %e0, %d0, 255

# CHECK-INST: madds %e6, %e0, %d1, -256
# CHECK: encoding: [0x13,0x01,0xf0,0x60]
madds %e6, %e0, %d1, -256

# CHECK-INST: madds %e6, %e0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xf7,0x60]
madds %e6, %e0, %d1, -129

# CHECK-INST: madds %e6, %e0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xff,0x60]
madds %e6, %e0, %d1, -1

# CHECK-INST: madds %e6, %e0, %d1, 0
# CHECK: encoding: [0x13,0x01,0xe0,0x60]
madds %e6, %e0, %d1, 0

# CHECK-INST: madds %e6, %e0, %d1, 1
# CHECK: encoding: [0x13,0x11,0xe0,0x60]
madds %e6, %e0, %d1, 1

# CHECK-INST: madds %e6, %e0, %d1, 128
# CHECK: encoding: [0x13,0x01,0xe8,0x60]
madds %e6, %e0, %d1, 128

# CHECK-INST: madds %e6, %e0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xef,0x60]
madds %e6, %e0, %d1, 255

# CHECK-INST: madds %e6, %e0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xf0,0x60]
madds %e6, %e0, %d14, -256

# CHECK-INST: madds %e6, %e0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xf7,0x60]
madds %e6, %e0, %d14, -129

# CHECK-INST: madds %e6, %e0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xff,0x60]
madds %e6, %e0, %d14, -1

# CHECK-INST: madds %e6, %e0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xe0,0x60]
madds %e6, %e0, %d14, 0

# CHECK-INST: madds %e6, %e0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xe0,0x60]
madds %e6, %e0, %d14, 1

# CHECK-INST: madds %e6, %e0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xe8,0x60]
madds %e6, %e0, %d14, 128

# CHECK-INST: madds %e6, %e0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xef,0x60]
madds %e6, %e0, %d14, 255

# CHECK-INST: madds %e6, %e0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xf0,0x60]
madds %e6, %e0, %d15, -256

# CHECK-INST: madds %e6, %e0, %d15, -129
# CHECK: encoding: [0x13,0xff,0xf7,0x60]
madds %e6, %e0, %d15, -129

# CHECK-INST: madds %e6, %e0, %d15, -1
# CHECK: encoding: [0x13,0xff,0xff,0x60]
madds %e6, %e0, %d15, -1

# CHECK-INST: madds %e6, %e0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xe0,0x60]
madds %e6, %e0, %d15, 0

# CHECK-INST: madds %e6, %e0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xe0,0x60]
madds %e6, %e0, %d15, 1

# CHECK-INST: madds %e6, %e0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xe8,0x60]
madds %e6, %e0, %d15, 128

# CHECK-INST: madds %e6, %e0, %d15, 255
# CHECK: encoding: [0x13,0xff,0xef,0x60]
madds %e6, %e0, %d15, 255

# CHECK-INST: madds %e6, %e6, %d0, -256
# CHECK: encoding: [0x13,0x00,0xf0,0x66]
madds %e6, %e6, %d0, -256

# CHECK-INST: madds %e6, %e6, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xf7,0x66]
madds %e6, %e6, %d0, -129

# CHECK-INST: madds %e6, %e6, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xff,0x66]
madds %e6, %e6, %d0, -1

# CHECK-INST: madds %e6, %e6, %d0, 0
# CHECK: encoding: [0x13,0x00,0xe0,0x66]
madds %e6, %e6, %d0, 0

# CHECK-INST: madds %e6, %e6, %d0, 1
# CHECK: encoding: [0x13,0x10,0xe0,0x66]
madds %e6, %e6, %d0, 1

# CHECK-INST: madds %e6, %e6, %d0, 128
# CHECK: encoding: [0x13,0x00,0xe8,0x66]
madds %e6, %e6, %d0, 128

# CHECK-INST: madds %e6, %e6, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xef,0x66]
madds %e6, %e6, %d0, 255

# CHECK-INST: madds %e6, %e6, %d1, -256
# CHECK: encoding: [0x13,0x01,0xf0,0x66]
madds %e6, %e6, %d1, -256

# CHECK-INST: madds %e6, %e6, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xf7,0x66]
madds %e6, %e6, %d1, -129

# CHECK-INST: madds %e6, %e6, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xff,0x66]
madds %e6, %e6, %d1, -1

# CHECK-INST: madds %e6, %e6, %d1, 0
# CHECK: encoding: [0x13,0x01,0xe0,0x66]
madds %e6, %e6, %d1, 0

# CHECK-INST: madds %e6, %e6, %d1, 1
# CHECK: encoding: [0x13,0x11,0xe0,0x66]
madds %e6, %e6, %d1, 1

# CHECK-INST: madds %e6, %e6, %d1, 128
# CHECK: encoding: [0x13,0x01,0xe8,0x66]
madds %e6, %e6, %d1, 128

# CHECK-INST: madds %e6, %e6, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xef,0x66]
madds %e6, %e6, %d1, 255

# CHECK-INST: madds %e6, %e6, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xf0,0x66]
madds %e6, %e6, %d14, -256

# CHECK-INST: madds %e6, %e6, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xf7,0x66]
madds %e6, %e6, %d14, -129

# CHECK-INST: madds %e6, %e6, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xff,0x66]
madds %e6, %e6, %d14, -1

# CHECK-INST: madds %e6, %e6, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xe0,0x66]
madds %e6, %e6, %d14, 0

# CHECK-INST: madds %e6, %e6, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xe0,0x66]
madds %e6, %e6, %d14, 1

# CHECK-INST: madds %e6, %e6, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xe8,0x66]
madds %e6, %e6, %d14, 128

# CHECK-INST: madds %e6, %e6, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xef,0x66]
madds %e6, %e6, %d14, 255

# CHECK-INST: madds %e6, %e6, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xf0,0x66]
madds %e6, %e6, %d15, -256

# CHECK-INST: madds %e6, %e6, %d15, -129
# CHECK: encoding: [0x13,0xff,0xf7,0x66]
madds %e6, %e6, %d15, -129

# CHECK-INST: madds %e6, %e6, %d15, -1
# CHECK: encoding: [0x13,0xff,0xff,0x66]
madds %e6, %e6, %d15, -1

# CHECK-INST: madds %e6, %e6, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xe0,0x66]
madds %e6, %e6, %d15, 0

# CHECK-INST: madds %e6, %e6, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xe0,0x66]
madds %e6, %e6, %d15, 1

# CHECK-INST: madds %e6, %e6, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xe8,0x66]
madds %e6, %e6, %d15, 128

# CHECK-INST: madds %e6, %e6, %d15, 255
# CHECK: encoding: [0x13,0xff,0xef,0x66]
madds %e6, %e6, %d15, 255

# CHECK-INST: madds %e6, %e14, %d0, -256
# CHECK: encoding: [0x13,0x00,0xf0,0x6e]
madds %e6, %e14, %d0, -256

# CHECK-INST: madds %e6, %e14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xf7,0x6e]
madds %e6, %e14, %d0, -129

# CHECK-INST: madds %e6, %e14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xff,0x6e]
madds %e6, %e14, %d0, -1

# CHECK-INST: madds %e6, %e14, %d0, 0
# CHECK: encoding: [0x13,0x00,0xe0,0x6e]
madds %e6, %e14, %d0, 0

# CHECK-INST: madds %e6, %e14, %d0, 1
# CHECK: encoding: [0x13,0x10,0xe0,0x6e]
madds %e6, %e14, %d0, 1

# CHECK-INST: madds %e6, %e14, %d0, 128
# CHECK: encoding: [0x13,0x00,0xe8,0x6e]
madds %e6, %e14, %d0, 128

# CHECK-INST: madds %e6, %e14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xef,0x6e]
madds %e6, %e14, %d0, 255

# CHECK-INST: madds %e6, %e14, %d1, -256
# CHECK: encoding: [0x13,0x01,0xf0,0x6e]
madds %e6, %e14, %d1, -256

# CHECK-INST: madds %e6, %e14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xf7,0x6e]
madds %e6, %e14, %d1, -129

# CHECK-INST: madds %e6, %e14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xff,0x6e]
madds %e6, %e14, %d1, -1

# CHECK-INST: madds %e6, %e14, %d1, 0
# CHECK: encoding: [0x13,0x01,0xe0,0x6e]
madds %e6, %e14, %d1, 0

# CHECK-INST: madds %e6, %e14, %d1, 1
# CHECK: encoding: [0x13,0x11,0xe0,0x6e]
madds %e6, %e14, %d1, 1

# CHECK-INST: madds %e6, %e14, %d1, 128
# CHECK: encoding: [0x13,0x01,0xe8,0x6e]
madds %e6, %e14, %d1, 128

# CHECK-INST: madds %e6, %e14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xef,0x6e]
madds %e6, %e14, %d1, 255

# CHECK-INST: madds %e6, %e14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xf0,0x6e]
madds %e6, %e14, %d14, -256

# CHECK-INST: madds %e6, %e14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xf7,0x6e]
madds %e6, %e14, %d14, -129

# CHECK-INST: madds %e6, %e14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xff,0x6e]
madds %e6, %e14, %d14, -1

# CHECK-INST: madds %e6, %e14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xe0,0x6e]
madds %e6, %e14, %d14, 0

# CHECK-INST: madds %e6, %e14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xe0,0x6e]
madds %e6, %e14, %d14, 1

# CHECK-INST: madds %e6, %e14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xe8,0x6e]
madds %e6, %e14, %d14, 128

# CHECK-INST: madds %e6, %e14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xef,0x6e]
madds %e6, %e14, %d14, 255

# CHECK-INST: madds %e6, %e14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xf0,0x6e]
madds %e6, %e14, %d15, -256

# CHECK-INST: madds %e6, %e14, %d15, -129
# CHECK: encoding: [0x13,0xff,0xf7,0x6e]
madds %e6, %e14, %d15, -129

# CHECK-INST: madds %e6, %e14, %d15, -1
# CHECK: encoding: [0x13,0xff,0xff,0x6e]
madds %e6, %e14, %d15, -1

# CHECK-INST: madds %e6, %e14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xe0,0x6e]
madds %e6, %e14, %d15, 0

# CHECK-INST: madds %e6, %e14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xe0,0x6e]
madds %e6, %e14, %d15, 1

# CHECK-INST: madds %e6, %e14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xe8,0x6e]
madds %e6, %e14, %d15, 128

# CHECK-INST: madds %e6, %e14, %d15, 255
# CHECK: encoding: [0x13,0xff,0xef,0x6e]
madds %e6, %e14, %d15, 255

# CHECK-INST: madds %e14, %e0, %d0, -256
# CHECK: encoding: [0x13,0x00,0xf0,0xe0]
madds %e14, %e0, %d0, -256

# CHECK-INST: madds %e14, %e0, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xf7,0xe0]
madds %e14, %e0, %d0, -129

# CHECK-INST: madds %e14, %e0, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xff,0xe0]
madds %e14, %e0, %d0, -1

# CHECK-INST: madds %e14, %e0, %d0, 0
# CHECK: encoding: [0x13,0x00,0xe0,0xe0]
madds %e14, %e0, %d0, 0

# CHECK-INST: madds %e14, %e0, %d0, 1
# CHECK: encoding: [0x13,0x10,0xe0,0xe0]
madds %e14, %e0, %d0, 1

# CHECK-INST: madds %e14, %e0, %d0, 128
# CHECK: encoding: [0x13,0x00,0xe8,0xe0]
madds %e14, %e0, %d0, 128

# CHECK-INST: madds %e14, %e0, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xef,0xe0]
madds %e14, %e0, %d0, 255

# CHECK-INST: madds %e14, %e0, %d1, -256
# CHECK: encoding: [0x13,0x01,0xf0,0xe0]
madds %e14, %e0, %d1, -256

# CHECK-INST: madds %e14, %e0, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xf7,0xe0]
madds %e14, %e0, %d1, -129

# CHECK-INST: madds %e14, %e0, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xff,0xe0]
madds %e14, %e0, %d1, -1

# CHECK-INST: madds %e14, %e0, %d1, 0
# CHECK: encoding: [0x13,0x01,0xe0,0xe0]
madds %e14, %e0, %d1, 0

# CHECK-INST: madds %e14, %e0, %d1, 1
# CHECK: encoding: [0x13,0x11,0xe0,0xe0]
madds %e14, %e0, %d1, 1

# CHECK-INST: madds %e14, %e0, %d1, 128
# CHECK: encoding: [0x13,0x01,0xe8,0xe0]
madds %e14, %e0, %d1, 128

# CHECK-INST: madds %e14, %e0, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xef,0xe0]
madds %e14, %e0, %d1, 255

# CHECK-INST: madds %e14, %e0, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xf0,0xe0]
madds %e14, %e0, %d14, -256

# CHECK-INST: madds %e14, %e0, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xf7,0xe0]
madds %e14, %e0, %d14, -129

# CHECK-INST: madds %e14, %e0, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xff,0xe0]
madds %e14, %e0, %d14, -1

# CHECK-INST: madds %e14, %e0, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xe0,0xe0]
madds %e14, %e0, %d14, 0

# CHECK-INST: madds %e14, %e0, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xe0,0xe0]
madds %e14, %e0, %d14, 1

# CHECK-INST: madds %e14, %e0, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xe8,0xe0]
madds %e14, %e0, %d14, 128

# CHECK-INST: madds %e14, %e0, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xef,0xe0]
madds %e14, %e0, %d14, 255

# CHECK-INST: madds %e14, %e0, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xf0,0xe0]
madds %e14, %e0, %d15, -256

# CHECK-INST: madds %e14, %e0, %d15, -129
# CHECK: encoding: [0x13,0xff,0xf7,0xe0]
madds %e14, %e0, %d15, -129

# CHECK-INST: madds %e14, %e0, %d15, -1
# CHECK: encoding: [0x13,0xff,0xff,0xe0]
madds %e14, %e0, %d15, -1

# CHECK-INST: madds %e14, %e0, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xe0,0xe0]
madds %e14, %e0, %d15, 0

# CHECK-INST: madds %e14, %e0, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xe0,0xe0]
madds %e14, %e0, %d15, 1

# CHECK-INST: madds %e14, %e0, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xe8,0xe0]
madds %e14, %e0, %d15, 128

# CHECK-INST: madds %e14, %e0, %d15, 255
# CHECK: encoding: [0x13,0xff,0xef,0xe0]
madds %e14, %e0, %d15, 255

# CHECK-INST: madds %e14, %e6, %d0, -256
# CHECK: encoding: [0x13,0x00,0xf0,0xe6]
madds %e14, %e6, %d0, -256

# CHECK-INST: madds %e14, %e6, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xf7,0xe6]
madds %e14, %e6, %d0, -129

# CHECK-INST: madds %e14, %e6, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xff,0xe6]
madds %e14, %e6, %d0, -1

# CHECK-INST: madds %e14, %e6, %d0, 0
# CHECK: encoding: [0x13,0x00,0xe0,0xe6]
madds %e14, %e6, %d0, 0

# CHECK-INST: madds %e14, %e6, %d0, 1
# CHECK: encoding: [0x13,0x10,0xe0,0xe6]
madds %e14, %e6, %d0, 1

# CHECK-INST: madds %e14, %e6, %d0, 128
# CHECK: encoding: [0x13,0x00,0xe8,0xe6]
madds %e14, %e6, %d0, 128

# CHECK-INST: madds %e14, %e6, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xef,0xe6]
madds %e14, %e6, %d0, 255

# CHECK-INST: madds %e14, %e6, %d1, -256
# CHECK: encoding: [0x13,0x01,0xf0,0xe6]
madds %e14, %e6, %d1, -256

# CHECK-INST: madds %e14, %e6, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xf7,0xe6]
madds %e14, %e6, %d1, -129

# CHECK-INST: madds %e14, %e6, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xff,0xe6]
madds %e14, %e6, %d1, -1

# CHECK-INST: madds %e14, %e6, %d1, 0
# CHECK: encoding: [0x13,0x01,0xe0,0xe6]
madds %e14, %e6, %d1, 0

# CHECK-INST: madds %e14, %e6, %d1, 1
# CHECK: encoding: [0x13,0x11,0xe0,0xe6]
madds %e14, %e6, %d1, 1

# CHECK-INST: madds %e14, %e6, %d1, 128
# CHECK: encoding: [0x13,0x01,0xe8,0xe6]
madds %e14, %e6, %d1, 128

# CHECK-INST: madds %e14, %e6, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xef,0xe6]
madds %e14, %e6, %d1, 255

# CHECK-INST: madds %e14, %e6, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xf0,0xe6]
madds %e14, %e6, %d14, -256

# CHECK-INST: madds %e14, %e6, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xf7,0xe6]
madds %e14, %e6, %d14, -129

# CHECK-INST: madds %e14, %e6, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xff,0xe6]
madds %e14, %e6, %d14, -1

# CHECK-INST: madds %e14, %e6, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xe0,0xe6]
madds %e14, %e6, %d14, 0

# CHECK-INST: madds %e14, %e6, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xe0,0xe6]
madds %e14, %e6, %d14, 1

# CHECK-INST: madds %e14, %e6, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xe8,0xe6]
madds %e14, %e6, %d14, 128

# CHECK-INST: madds %e14, %e6, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xef,0xe6]
madds %e14, %e6, %d14, 255

# CHECK-INST: madds %e14, %e6, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xf0,0xe6]
madds %e14, %e6, %d15, -256

# CHECK-INST: madds %e14, %e6, %d15, -129
# CHECK: encoding: [0x13,0xff,0xf7,0xe6]
madds %e14, %e6, %d15, -129

# CHECK-INST: madds %e14, %e6, %d15, -1
# CHECK: encoding: [0x13,0xff,0xff,0xe6]
madds %e14, %e6, %d15, -1

# CHECK-INST: madds %e14, %e6, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xe0,0xe6]
madds %e14, %e6, %d15, 0

# CHECK-INST: madds %e14, %e6, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xe0,0xe6]
madds %e14, %e6, %d15, 1

# CHECK-INST: madds %e14, %e6, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xe8,0xe6]
madds %e14, %e6, %d15, 128

# CHECK-INST: madds %e14, %e6, %d15, 255
# CHECK: encoding: [0x13,0xff,0xef,0xe6]
madds %e14, %e6, %d15, 255

# CHECK-INST: madds %e14, %e14, %d0, -256
# CHECK: encoding: [0x13,0x00,0xf0,0xee]
madds %e14, %e14, %d0, -256

# CHECK-INST: madds %e14, %e14, %d0, -129
# CHECK: encoding: [0x13,0xf0,0xf7,0xee]
madds %e14, %e14, %d0, -129

# CHECK-INST: madds %e14, %e14, %d0, -1
# CHECK: encoding: [0x13,0xf0,0xff,0xee]
madds %e14, %e14, %d0, -1

# CHECK-INST: madds %e14, %e14, %d0, 0
# CHECK: encoding: [0x13,0x00,0xe0,0xee]
madds %e14, %e14, %d0, 0

# CHECK-INST: madds %e14, %e14, %d0, 1
# CHECK: encoding: [0x13,0x10,0xe0,0xee]
madds %e14, %e14, %d0, 1

# CHECK-INST: madds %e14, %e14, %d0, 128
# CHECK: encoding: [0x13,0x00,0xe8,0xee]
madds %e14, %e14, %d0, 128

# CHECK-INST: madds %e14, %e14, %d0, 255
# CHECK: encoding: [0x13,0xf0,0xef,0xee]
madds %e14, %e14, %d0, 255

# CHECK-INST: madds %e14, %e14, %d1, -256
# CHECK: encoding: [0x13,0x01,0xf0,0xee]
madds %e14, %e14, %d1, -256

# CHECK-INST: madds %e14, %e14, %d1, -129
# CHECK: encoding: [0x13,0xf1,0xf7,0xee]
madds %e14, %e14, %d1, -129

# CHECK-INST: madds %e14, %e14, %d1, -1
# CHECK: encoding: [0x13,0xf1,0xff,0xee]
madds %e14, %e14, %d1, -1

# CHECK-INST: madds %e14, %e14, %d1, 0
# CHECK: encoding: [0x13,0x01,0xe0,0xee]
madds %e14, %e14, %d1, 0

# CHECK-INST: madds %e14, %e14, %d1, 1
# CHECK: encoding: [0x13,0x11,0xe0,0xee]
madds %e14, %e14, %d1, 1

# CHECK-INST: madds %e14, %e14, %d1, 128
# CHECK: encoding: [0x13,0x01,0xe8,0xee]
madds %e14, %e14, %d1, 128

# CHECK-INST: madds %e14, %e14, %d1, 255
# CHECK: encoding: [0x13,0xf1,0xef,0xee]
madds %e14, %e14, %d1, 255

# CHECK-INST: madds %e14, %e14, %d14, -256
# CHECK: encoding: [0x13,0x0e,0xf0,0xee]
madds %e14, %e14, %d14, -256

# CHECK-INST: madds %e14, %e14, %d14, -129
# CHECK: encoding: [0x13,0xfe,0xf7,0xee]
madds %e14, %e14, %d14, -129

# CHECK-INST: madds %e14, %e14, %d14, -1
# CHECK: encoding: [0x13,0xfe,0xff,0xee]
madds %e14, %e14, %d14, -1

# CHECK-INST: madds %e14, %e14, %d14, 0
# CHECK: encoding: [0x13,0x0e,0xe0,0xee]
madds %e14, %e14, %d14, 0

# CHECK-INST: madds %e14, %e14, %d14, 1
# CHECK: encoding: [0x13,0x1e,0xe0,0xee]
madds %e14, %e14, %d14, 1

# CHECK-INST: madds %e14, %e14, %d14, 128
# CHECK: encoding: [0x13,0x0e,0xe8,0xee]
madds %e14, %e14, %d14, 128

# CHECK-INST: madds %e14, %e14, %d14, 255
# CHECK: encoding: [0x13,0xfe,0xef,0xee]
madds %e14, %e14, %d14, 255

# CHECK-INST: madds %e14, %e14, %d15, -256
# CHECK: encoding: [0x13,0x0f,0xf0,0xee]
madds %e14, %e14, %d15, -256

# CHECK-INST: madds %e14, %e14, %d15, -129
# CHECK: encoding: [0x13,0xff,0xf7,0xee]
madds %e14, %e14, %d15, -129

# CHECK-INST: madds %e14, %e14, %d15, -1
# CHECK: encoding: [0x13,0xff,0xff,0xee]
madds %e14, %e14, %d15, -1

# CHECK-INST: madds %e14, %e14, %d15, 0
# CHECK: encoding: [0x13,0x0f,0xe0,0xee]
madds %e14, %e14, %d15, 0

# CHECK-INST: madds %e14, %e14, %d15, 1
# CHECK: encoding: [0x13,0x1f,0xe0,0xee]
madds %e14, %e14, %d15, 1

# CHECK-INST: madds %e14, %e14, %d15, 128
# CHECK: encoding: [0x13,0x0f,0xe8,0xee]
madds %e14, %e14, %d15, 128

# CHECK-INST: madds %e14, %e14, %d15, 255
# CHECK: encoding: [0x13,0xff,0xef,0xee]
madds %e14, %e14, %d15, 255

# CHECK-INST: madds.u %d0, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0x00]
madds.u %d0, %d0, %d0, %d0

# CHECK-INST: madds.u %d0, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0x00]
madds.u %d0, %d0, %d0, %d1

# CHECK-INST: madds.u %d0, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0x00]
madds.u %d0, %d0, %d0, %d14

# CHECK-INST: madds.u %d0, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0x00]
madds.u %d0, %d0, %d0, %d15

# CHECK-INST: madds.u %d0, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0x00]
madds.u %d0, %d0, %d1, %d0

# CHECK-INST: madds.u %d0, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0x00]
madds.u %d0, %d0, %d1, %d1

# CHECK-INST: madds.u %d0, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0x00]
madds.u %d0, %d0, %d1, %d14

# CHECK-INST: madds.u %d0, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0x00]
madds.u %d0, %d0, %d1, %d15

# CHECK-INST: madds.u %d0, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0x00]
madds.u %d0, %d0, %d14, %d0

# CHECK-INST: madds.u %d0, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0x00]
madds.u %d0, %d0, %d14, %d1

# CHECK-INST: madds.u %d0, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0x00]
madds.u %d0, %d0, %d14, %d14

# CHECK-INST: madds.u %d0, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0x00]
madds.u %d0, %d0, %d14, %d15

# CHECK-INST: madds.u %d0, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0x00]
madds.u %d0, %d0, %d15, %d0

# CHECK-INST: madds.u %d0, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0x00]
madds.u %d0, %d0, %d15, %d1

# CHECK-INST: madds.u %d0, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0x00]
madds.u %d0, %d0, %d15, %d14

# CHECK-INST: madds.u %d0, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0x00]
madds.u %d0, %d0, %d15, %d15

# CHECK-INST: madds.u %d0, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0x01]
madds.u %d0, %d1, %d0, %d0

# CHECK-INST: madds.u %d0, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0x01]
madds.u %d0, %d1, %d0, %d1

# CHECK-INST: madds.u %d0, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0x01]
madds.u %d0, %d1, %d0, %d14

# CHECK-INST: madds.u %d0, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0x01]
madds.u %d0, %d1, %d0, %d15

# CHECK-INST: madds.u %d0, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0x01]
madds.u %d0, %d1, %d1, %d0

# CHECK-INST: madds.u %d0, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0x01]
madds.u %d0, %d1, %d1, %d1

# CHECK-INST: madds.u %d0, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0x01]
madds.u %d0, %d1, %d1, %d14

# CHECK-INST: madds.u %d0, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0x01]
madds.u %d0, %d1, %d1, %d15

# CHECK-INST: madds.u %d0, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0x01]
madds.u %d0, %d1, %d14, %d0

# CHECK-INST: madds.u %d0, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0x01]
madds.u %d0, %d1, %d14, %d1

# CHECK-INST: madds.u %d0, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0x01]
madds.u %d0, %d1, %d14, %d14

# CHECK-INST: madds.u %d0, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0x01]
madds.u %d0, %d1, %d14, %d15

# CHECK-INST: madds.u %d0, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0x01]
madds.u %d0, %d1, %d15, %d0

# CHECK-INST: madds.u %d0, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0x01]
madds.u %d0, %d1, %d15, %d1

# CHECK-INST: madds.u %d0, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0x01]
madds.u %d0, %d1, %d15, %d14

# CHECK-INST: madds.u %d0, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0x01]
madds.u %d0, %d1, %d15, %d15

# CHECK-INST: madds.u %d0, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0x0e]
madds.u %d0, %d14, %d0, %d0

# CHECK-INST: madds.u %d0, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0x0e]
madds.u %d0, %d14, %d0, %d1

# CHECK-INST: madds.u %d0, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0x0e]
madds.u %d0, %d14, %d0, %d14

# CHECK-INST: madds.u %d0, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0x0e]
madds.u %d0, %d14, %d0, %d15

# CHECK-INST: madds.u %d0, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0x0e]
madds.u %d0, %d14, %d1, %d0

# CHECK-INST: madds.u %d0, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0x0e]
madds.u %d0, %d14, %d1, %d1

# CHECK-INST: madds.u %d0, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0x0e]
madds.u %d0, %d14, %d1, %d14

# CHECK-INST: madds.u %d0, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0x0e]
madds.u %d0, %d14, %d1, %d15

# CHECK-INST: madds.u %d0, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0x0e]
madds.u %d0, %d14, %d14, %d0

# CHECK-INST: madds.u %d0, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0x0e]
madds.u %d0, %d14, %d14, %d1

# CHECK-INST: madds.u %d0, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0x0e]
madds.u %d0, %d14, %d14, %d14

# CHECK-INST: madds.u %d0, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0x0e]
madds.u %d0, %d14, %d14, %d15

# CHECK-INST: madds.u %d0, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0x0e]
madds.u %d0, %d14, %d15, %d0

# CHECK-INST: madds.u %d0, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0x0e]
madds.u %d0, %d14, %d15, %d1

# CHECK-INST: madds.u %d0, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0x0e]
madds.u %d0, %d14, %d15, %d14

# CHECK-INST: madds.u %d0, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0x0e]
madds.u %d0, %d14, %d15, %d15

# CHECK-INST: madds.u %d0, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0x0f]
madds.u %d0, %d15, %d0, %d0

# CHECK-INST: madds.u %d0, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0x0f]
madds.u %d0, %d15, %d0, %d1

# CHECK-INST: madds.u %d0, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0x0f]
madds.u %d0, %d15, %d0, %d14

# CHECK-INST: madds.u %d0, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0x0f]
madds.u %d0, %d15, %d0, %d15

# CHECK-INST: madds.u %d0, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0x0f]
madds.u %d0, %d15, %d1, %d0

# CHECK-INST: madds.u %d0, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0x0f]
madds.u %d0, %d15, %d1, %d1

# CHECK-INST: madds.u %d0, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0x0f]
madds.u %d0, %d15, %d1, %d14

# CHECK-INST: madds.u %d0, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0x0f]
madds.u %d0, %d15, %d1, %d15

# CHECK-INST: madds.u %d0, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0x0f]
madds.u %d0, %d15, %d14, %d0

# CHECK-INST: madds.u %d0, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0x0f]
madds.u %d0, %d15, %d14, %d1

# CHECK-INST: madds.u %d0, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0x0f]
madds.u %d0, %d15, %d14, %d14

# CHECK-INST: madds.u %d0, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0x0f]
madds.u %d0, %d15, %d14, %d15

# CHECK-INST: madds.u %d0, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0x0f]
madds.u %d0, %d15, %d15, %d0

# CHECK-INST: madds.u %d0, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0x0f]
madds.u %d0, %d15, %d15, %d1

# CHECK-INST: madds.u %d0, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0x0f]
madds.u %d0, %d15, %d15, %d14

# CHECK-INST: madds.u %d0, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0x0f]
madds.u %d0, %d15, %d15, %d15

# CHECK-INST: madds.u %d1, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0x10]
madds.u %d1, %d0, %d0, %d0

# CHECK-INST: madds.u %d1, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0x10]
madds.u %d1, %d0, %d0, %d1

# CHECK-INST: madds.u %d1, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0x10]
madds.u %d1, %d0, %d0, %d14

# CHECK-INST: madds.u %d1, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0x10]
madds.u %d1, %d0, %d0, %d15

# CHECK-INST: madds.u %d1, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0x10]
madds.u %d1, %d0, %d1, %d0

# CHECK-INST: madds.u %d1, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0x10]
madds.u %d1, %d0, %d1, %d1

# CHECK-INST: madds.u %d1, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0x10]
madds.u %d1, %d0, %d1, %d14

# CHECK-INST: madds.u %d1, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0x10]
madds.u %d1, %d0, %d1, %d15

# CHECK-INST: madds.u %d1, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0x10]
madds.u %d1, %d0, %d14, %d0

# CHECK-INST: madds.u %d1, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0x10]
madds.u %d1, %d0, %d14, %d1

# CHECK-INST: madds.u %d1, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0x10]
madds.u %d1, %d0, %d14, %d14

# CHECK-INST: madds.u %d1, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0x10]
madds.u %d1, %d0, %d14, %d15

# CHECK-INST: madds.u %d1, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0x10]
madds.u %d1, %d0, %d15, %d0

# CHECK-INST: madds.u %d1, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0x10]
madds.u %d1, %d0, %d15, %d1

# CHECK-INST: madds.u %d1, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0x10]
madds.u %d1, %d0, %d15, %d14

# CHECK-INST: madds.u %d1, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0x10]
madds.u %d1, %d0, %d15, %d15

# CHECK-INST: madds.u %d1, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0x11]
madds.u %d1, %d1, %d0, %d0

# CHECK-INST: madds.u %d1, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0x11]
madds.u %d1, %d1, %d0, %d1

# CHECK-INST: madds.u %d1, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0x11]
madds.u %d1, %d1, %d0, %d14

# CHECK-INST: madds.u %d1, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0x11]
madds.u %d1, %d1, %d0, %d15

# CHECK-INST: madds.u %d1, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0x11]
madds.u %d1, %d1, %d1, %d0

# CHECK-INST: madds.u %d1, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0x11]
madds.u %d1, %d1, %d1, %d1

# CHECK-INST: madds.u %d1, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0x11]
madds.u %d1, %d1, %d1, %d14

# CHECK-INST: madds.u %d1, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0x11]
madds.u %d1, %d1, %d1, %d15

# CHECK-INST: madds.u %d1, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0x11]
madds.u %d1, %d1, %d14, %d0

# CHECK-INST: madds.u %d1, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0x11]
madds.u %d1, %d1, %d14, %d1

# CHECK-INST: madds.u %d1, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0x11]
madds.u %d1, %d1, %d14, %d14

# CHECK-INST: madds.u %d1, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0x11]
madds.u %d1, %d1, %d14, %d15

# CHECK-INST: madds.u %d1, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0x11]
madds.u %d1, %d1, %d15, %d0

# CHECK-INST: madds.u %d1, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0x11]
madds.u %d1, %d1, %d15, %d1

# CHECK-INST: madds.u %d1, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0x11]
madds.u %d1, %d1, %d15, %d14

# CHECK-INST: madds.u %d1, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0x11]
madds.u %d1, %d1, %d15, %d15

# CHECK-INST: madds.u %d1, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0x1e]
madds.u %d1, %d14, %d0, %d0

# CHECK-INST: madds.u %d1, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0x1e]
madds.u %d1, %d14, %d0, %d1

# CHECK-INST: madds.u %d1, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0x1e]
madds.u %d1, %d14, %d0, %d14

# CHECK-INST: madds.u %d1, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0x1e]
madds.u %d1, %d14, %d0, %d15

# CHECK-INST: madds.u %d1, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0x1e]
madds.u %d1, %d14, %d1, %d0

# CHECK-INST: madds.u %d1, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0x1e]
madds.u %d1, %d14, %d1, %d1

# CHECK-INST: madds.u %d1, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0x1e]
madds.u %d1, %d14, %d1, %d14

# CHECK-INST: madds.u %d1, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0x1e]
madds.u %d1, %d14, %d1, %d15

# CHECK-INST: madds.u %d1, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0x1e]
madds.u %d1, %d14, %d14, %d0

# CHECK-INST: madds.u %d1, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0x1e]
madds.u %d1, %d14, %d14, %d1

# CHECK-INST: madds.u %d1, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0x1e]
madds.u %d1, %d14, %d14, %d14

# CHECK-INST: madds.u %d1, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0x1e]
madds.u %d1, %d14, %d14, %d15

# CHECK-INST: madds.u %d1, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0x1e]
madds.u %d1, %d14, %d15, %d0

# CHECK-INST: madds.u %d1, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0x1e]
madds.u %d1, %d14, %d15, %d1

# CHECK-INST: madds.u %d1, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0x1e]
madds.u %d1, %d14, %d15, %d14

# CHECK-INST: madds.u %d1, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0x1e]
madds.u %d1, %d14, %d15, %d15

# CHECK-INST: madds.u %d1, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0x1f]
madds.u %d1, %d15, %d0, %d0

# CHECK-INST: madds.u %d1, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0x1f]
madds.u %d1, %d15, %d0, %d1

# CHECK-INST: madds.u %d1, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0x1f]
madds.u %d1, %d15, %d0, %d14

# CHECK-INST: madds.u %d1, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0x1f]
madds.u %d1, %d15, %d0, %d15

# CHECK-INST: madds.u %d1, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0x1f]
madds.u %d1, %d15, %d1, %d0

# CHECK-INST: madds.u %d1, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0x1f]
madds.u %d1, %d15, %d1, %d1

# CHECK-INST: madds.u %d1, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0x1f]
madds.u %d1, %d15, %d1, %d14

# CHECK-INST: madds.u %d1, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0x1f]
madds.u %d1, %d15, %d1, %d15

# CHECK-INST: madds.u %d1, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0x1f]
madds.u %d1, %d15, %d14, %d0

# CHECK-INST: madds.u %d1, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0x1f]
madds.u %d1, %d15, %d14, %d1

# CHECK-INST: madds.u %d1, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0x1f]
madds.u %d1, %d15, %d14, %d14

# CHECK-INST: madds.u %d1, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0x1f]
madds.u %d1, %d15, %d14, %d15

# CHECK-INST: madds.u %d1, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0x1f]
madds.u %d1, %d15, %d15, %d0

# CHECK-INST: madds.u %d1, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0x1f]
madds.u %d1, %d15, %d15, %d1

# CHECK-INST: madds.u %d1, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0x1f]
madds.u %d1, %d15, %d15, %d14

# CHECK-INST: madds.u %d1, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0x1f]
madds.u %d1, %d15, %d15, %d15

# CHECK-INST: madds.u %d14, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0xe0]
madds.u %d14, %d0, %d0, %d0

# CHECK-INST: madds.u %d14, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0xe0]
madds.u %d14, %d0, %d0, %d1

# CHECK-INST: madds.u %d14, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0xe0]
madds.u %d14, %d0, %d0, %d14

# CHECK-INST: madds.u %d14, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0xe0]
madds.u %d14, %d0, %d0, %d15

# CHECK-INST: madds.u %d14, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0xe0]
madds.u %d14, %d0, %d1, %d0

# CHECK-INST: madds.u %d14, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0xe0]
madds.u %d14, %d0, %d1, %d1

# CHECK-INST: madds.u %d14, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0xe0]
madds.u %d14, %d0, %d1, %d14

# CHECK-INST: madds.u %d14, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0xe0]
madds.u %d14, %d0, %d1, %d15

# CHECK-INST: madds.u %d14, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0xe0]
madds.u %d14, %d0, %d14, %d0

# CHECK-INST: madds.u %d14, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0xe0]
madds.u %d14, %d0, %d14, %d1

# CHECK-INST: madds.u %d14, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0xe0]
madds.u %d14, %d0, %d14, %d14

# CHECK-INST: madds.u %d14, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0xe0]
madds.u %d14, %d0, %d14, %d15

# CHECK-INST: madds.u %d14, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0xe0]
madds.u %d14, %d0, %d15, %d0

# CHECK-INST: madds.u %d14, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0xe0]
madds.u %d14, %d0, %d15, %d1

# CHECK-INST: madds.u %d14, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0xe0]
madds.u %d14, %d0, %d15, %d14

# CHECK-INST: madds.u %d14, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0xe0]
madds.u %d14, %d0, %d15, %d15

# CHECK-INST: madds.u %d14, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0xe1]
madds.u %d14, %d1, %d0, %d0

# CHECK-INST: madds.u %d14, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0xe1]
madds.u %d14, %d1, %d0, %d1

# CHECK-INST: madds.u %d14, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0xe1]
madds.u %d14, %d1, %d0, %d14

# CHECK-INST: madds.u %d14, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0xe1]
madds.u %d14, %d1, %d0, %d15

# CHECK-INST: madds.u %d14, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0xe1]
madds.u %d14, %d1, %d1, %d0

# CHECK-INST: madds.u %d14, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0xe1]
madds.u %d14, %d1, %d1, %d1

# CHECK-INST: madds.u %d14, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0xe1]
madds.u %d14, %d1, %d1, %d14

# CHECK-INST: madds.u %d14, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0xe1]
madds.u %d14, %d1, %d1, %d15

# CHECK-INST: madds.u %d14, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0xe1]
madds.u %d14, %d1, %d14, %d0

# CHECK-INST: madds.u %d14, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0xe1]
madds.u %d14, %d1, %d14, %d1

# CHECK-INST: madds.u %d14, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0xe1]
madds.u %d14, %d1, %d14, %d14

# CHECK-INST: madds.u %d14, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0xe1]
madds.u %d14, %d1, %d14, %d15

# CHECK-INST: madds.u %d14, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0xe1]
madds.u %d14, %d1, %d15, %d0

# CHECK-INST: madds.u %d14, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0xe1]
madds.u %d14, %d1, %d15, %d1

# CHECK-INST: madds.u %d14, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0xe1]
madds.u %d14, %d1, %d15, %d14

# CHECK-INST: madds.u %d14, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0xe1]
madds.u %d14, %d1, %d15, %d15

# CHECK-INST: madds.u %d14, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0xee]
madds.u %d14, %d14, %d0, %d0

# CHECK-INST: madds.u %d14, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0xee]
madds.u %d14, %d14, %d0, %d1

# CHECK-INST: madds.u %d14, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0xee]
madds.u %d14, %d14, %d0, %d14

# CHECK-INST: madds.u %d14, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0xee]
madds.u %d14, %d14, %d0, %d15

# CHECK-INST: madds.u %d14, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0xee]
madds.u %d14, %d14, %d1, %d0

# CHECK-INST: madds.u %d14, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0xee]
madds.u %d14, %d14, %d1, %d1

# CHECK-INST: madds.u %d14, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0xee]
madds.u %d14, %d14, %d1, %d14

# CHECK-INST: madds.u %d14, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0xee]
madds.u %d14, %d14, %d1, %d15

# CHECK-INST: madds.u %d14, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0xee]
madds.u %d14, %d14, %d14, %d0

# CHECK-INST: madds.u %d14, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0xee]
madds.u %d14, %d14, %d14, %d1

# CHECK-INST: madds.u %d14, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0xee]
madds.u %d14, %d14, %d14, %d14

# CHECK-INST: madds.u %d14, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0xee]
madds.u %d14, %d14, %d14, %d15

# CHECK-INST: madds.u %d14, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0xee]
madds.u %d14, %d14, %d15, %d0

# CHECK-INST: madds.u %d14, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0xee]
madds.u %d14, %d14, %d15, %d1

# CHECK-INST: madds.u %d14, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0xee]
madds.u %d14, %d14, %d15, %d14

# CHECK-INST: madds.u %d14, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0xee]
madds.u %d14, %d14, %d15, %d15

# CHECK-INST: madds.u %d14, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0xef]
madds.u %d14, %d15, %d0, %d0

# CHECK-INST: madds.u %d14, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0xef]
madds.u %d14, %d15, %d0, %d1

# CHECK-INST: madds.u %d14, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0xef]
madds.u %d14, %d15, %d0, %d14

# CHECK-INST: madds.u %d14, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0xef]
madds.u %d14, %d15, %d0, %d15

# CHECK-INST: madds.u %d14, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0xef]
madds.u %d14, %d15, %d1, %d0

# CHECK-INST: madds.u %d14, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0xef]
madds.u %d14, %d15, %d1, %d1

# CHECK-INST: madds.u %d14, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0xef]
madds.u %d14, %d15, %d1, %d14

# CHECK-INST: madds.u %d14, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0xef]
madds.u %d14, %d15, %d1, %d15

# CHECK-INST: madds.u %d14, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0xef]
madds.u %d14, %d15, %d14, %d0

# CHECK-INST: madds.u %d14, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0xef]
madds.u %d14, %d15, %d14, %d1

# CHECK-INST: madds.u %d14, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0xef]
madds.u %d14, %d15, %d14, %d14

# CHECK-INST: madds.u %d14, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0xef]
madds.u %d14, %d15, %d14, %d15

# CHECK-INST: madds.u %d14, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0xef]
madds.u %d14, %d15, %d15, %d0

# CHECK-INST: madds.u %d14, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0xef]
madds.u %d14, %d15, %d15, %d1

# CHECK-INST: madds.u %d14, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0xef]
madds.u %d14, %d15, %d15, %d14

# CHECK-INST: madds.u %d14, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0xef]
madds.u %d14, %d15, %d15, %d15

# CHECK-INST: madds.u %d15, %d0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0xf0]
madds.u %d15, %d0, %d0, %d0

# CHECK-INST: madds.u %d15, %d0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0xf0]
madds.u %d15, %d0, %d0, %d1

# CHECK-INST: madds.u %d15, %d0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0xf0]
madds.u %d15, %d0, %d0, %d14

# CHECK-INST: madds.u %d15, %d0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0xf0]
madds.u %d15, %d0, %d0, %d15

# CHECK-INST: madds.u %d15, %d0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0xf0]
madds.u %d15, %d0, %d1, %d0

# CHECK-INST: madds.u %d15, %d0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0xf0]
madds.u %d15, %d0, %d1, %d1

# CHECK-INST: madds.u %d15, %d0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0xf0]
madds.u %d15, %d0, %d1, %d14

# CHECK-INST: madds.u %d15, %d0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0xf0]
madds.u %d15, %d0, %d1, %d15

# CHECK-INST: madds.u %d15, %d0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0xf0]
madds.u %d15, %d0, %d14, %d0

# CHECK-INST: madds.u %d15, %d0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0xf0]
madds.u %d15, %d0, %d14, %d1

# CHECK-INST: madds.u %d15, %d0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0xf0]
madds.u %d15, %d0, %d14, %d14

# CHECK-INST: madds.u %d15, %d0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0xf0]
madds.u %d15, %d0, %d14, %d15

# CHECK-INST: madds.u %d15, %d0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0xf0]
madds.u %d15, %d0, %d15, %d0

# CHECK-INST: madds.u %d15, %d0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0xf0]
madds.u %d15, %d0, %d15, %d1

# CHECK-INST: madds.u %d15, %d0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0xf0]
madds.u %d15, %d0, %d15, %d14

# CHECK-INST: madds.u %d15, %d0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0xf0]
madds.u %d15, %d0, %d15, %d15

# CHECK-INST: madds.u %d15, %d1, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0xf1]
madds.u %d15, %d1, %d0, %d0

# CHECK-INST: madds.u %d15, %d1, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0xf1]
madds.u %d15, %d1, %d0, %d1

# CHECK-INST: madds.u %d15, %d1, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0xf1]
madds.u %d15, %d1, %d0, %d14

# CHECK-INST: madds.u %d15, %d1, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0xf1]
madds.u %d15, %d1, %d0, %d15

# CHECK-INST: madds.u %d15, %d1, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0xf1]
madds.u %d15, %d1, %d1, %d0

# CHECK-INST: madds.u %d15, %d1, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0xf1]
madds.u %d15, %d1, %d1, %d1

# CHECK-INST: madds.u %d15, %d1, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0xf1]
madds.u %d15, %d1, %d1, %d14

# CHECK-INST: madds.u %d15, %d1, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0xf1]
madds.u %d15, %d1, %d1, %d15

# CHECK-INST: madds.u %d15, %d1, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0xf1]
madds.u %d15, %d1, %d14, %d0

# CHECK-INST: madds.u %d15, %d1, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0xf1]
madds.u %d15, %d1, %d14, %d1

# CHECK-INST: madds.u %d15, %d1, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0xf1]
madds.u %d15, %d1, %d14, %d14

# CHECK-INST: madds.u %d15, %d1, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0xf1]
madds.u %d15, %d1, %d14, %d15

# CHECK-INST: madds.u %d15, %d1, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0xf1]
madds.u %d15, %d1, %d15, %d0

# CHECK-INST: madds.u %d15, %d1, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0xf1]
madds.u %d15, %d1, %d15, %d1

# CHECK-INST: madds.u %d15, %d1, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0xf1]
madds.u %d15, %d1, %d15, %d14

# CHECK-INST: madds.u %d15, %d1, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0xf1]
madds.u %d15, %d1, %d15, %d15

# CHECK-INST: madds.u %d15, %d14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0xfe]
madds.u %d15, %d14, %d0, %d0

# CHECK-INST: madds.u %d15, %d14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0xfe]
madds.u %d15, %d14, %d0, %d1

# CHECK-INST: madds.u %d15, %d14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0xfe]
madds.u %d15, %d14, %d0, %d14

# CHECK-INST: madds.u %d15, %d14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0xfe]
madds.u %d15, %d14, %d0, %d15

# CHECK-INST: madds.u %d15, %d14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0xfe]
madds.u %d15, %d14, %d1, %d0

# CHECK-INST: madds.u %d15, %d14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0xfe]
madds.u %d15, %d14, %d1, %d1

# CHECK-INST: madds.u %d15, %d14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0xfe]
madds.u %d15, %d14, %d1, %d14

# CHECK-INST: madds.u %d15, %d14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0xfe]
madds.u %d15, %d14, %d1, %d15

# CHECK-INST: madds.u %d15, %d14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0xfe]
madds.u %d15, %d14, %d14, %d0

# CHECK-INST: madds.u %d15, %d14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0xfe]
madds.u %d15, %d14, %d14, %d1

# CHECK-INST: madds.u %d15, %d14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0xfe]
madds.u %d15, %d14, %d14, %d14

# CHECK-INST: madds.u %d15, %d14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0xfe]
madds.u %d15, %d14, %d14, %d15

# CHECK-INST: madds.u %d15, %d14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0xfe]
madds.u %d15, %d14, %d15, %d0

# CHECK-INST: madds.u %d15, %d14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0xfe]
madds.u %d15, %d14, %d15, %d1

# CHECK-INST: madds.u %d15, %d14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0xfe]
madds.u %d15, %d14, %d15, %d14

# CHECK-INST: madds.u %d15, %d14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0xfe]
madds.u %d15, %d14, %d15, %d15

# CHECK-INST: madds.u %d15, %d15, %d0, %d0
# CHECK: encoding: [0x03,0x00,0x88,0xff]
madds.u %d15, %d15, %d0, %d0

# CHECK-INST: madds.u %d15, %d15, %d0, %d1
# CHECK: encoding: [0x03,0x10,0x88,0xff]
madds.u %d15, %d15, %d0, %d1

# CHECK-INST: madds.u %d15, %d15, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0x88,0xff]
madds.u %d15, %d15, %d0, %d14

# CHECK-INST: madds.u %d15, %d15, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0x88,0xff]
madds.u %d15, %d15, %d0, %d15

# CHECK-INST: madds.u %d15, %d15, %d1, %d0
# CHECK: encoding: [0x03,0x01,0x88,0xff]
madds.u %d15, %d15, %d1, %d0

# CHECK-INST: madds.u %d15, %d15, %d1, %d1
# CHECK: encoding: [0x03,0x11,0x88,0xff]
madds.u %d15, %d15, %d1, %d1

# CHECK-INST: madds.u %d15, %d15, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0x88,0xff]
madds.u %d15, %d15, %d1, %d14

# CHECK-INST: madds.u %d15, %d15, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0x88,0xff]
madds.u %d15, %d15, %d1, %d15

# CHECK-INST: madds.u %d15, %d15, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0x88,0xff]
madds.u %d15, %d15, %d14, %d0

# CHECK-INST: madds.u %d15, %d15, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0x88,0xff]
madds.u %d15, %d15, %d14, %d1

# CHECK-INST: madds.u %d15, %d15, %d14, %d14
# CHECK: encoding: [0x03,0xee,0x88,0xff]
madds.u %d15, %d15, %d14, %d14

# CHECK-INST: madds.u %d15, %d15, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0x88,0xff]
madds.u %d15, %d15, %d14, %d15

# CHECK-INST: madds.u %d15, %d15, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0x88,0xff]
madds.u %d15, %d15, %d15, %d0

# CHECK-INST: madds.u %d15, %d15, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0x88,0xff]
madds.u %d15, %d15, %d15, %d1

# CHECK-INST: madds.u %d15, %d15, %d15, %d14
# CHECK: encoding: [0x03,0xef,0x88,0xff]
madds.u %d15, %d15, %d15, %d14

# CHECK-INST: madds.u %d15, %d15, %d15, %d15
# CHECK: encoding: [0x03,0xff,0x88,0xff]
madds.u %d15, %d15, %d15, %d15

# CHECK-INST: madds.u %d0, %d0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0x00]
madds.u %d0, %d0, %d0, 271

# CHECK-INST: madds.u %d0, %d0, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0x00]
madds.u %d0, %d0, %d0, 496

# CHECK-INST: madds.u %d0, %d0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0x00]
madds.u %d0, %d0, %d0, 511

# CHECK-INST: madds.u %d0, %d0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0x00]
madds.u %d0, %d0, %d1, 271

# CHECK-INST: madds.u %d0, %d0, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0x00]
madds.u %d0, %d0, %d1, 496

# CHECK-INST: madds.u %d0, %d0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0x00]
madds.u %d0, %d0, %d1, 511

# CHECK-INST: madds.u %d0, %d0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0x00]
madds.u %d0, %d0, %d14, 271

# CHECK-INST: madds.u %d0, %d0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0x00]
madds.u %d0, %d0, %d14, 496

# CHECK-INST: madds.u %d0, %d0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0x00]
madds.u %d0, %d0, %d14, 511

# CHECK-INST: madds.u %d0, %d0, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0x00]
madds.u %d0, %d0, %d15, 271

# CHECK-INST: madds.u %d0, %d0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0x00]
madds.u %d0, %d0, %d15, 496

# CHECK-INST: madds.u %d0, %d0, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0x00]
madds.u %d0, %d0, %d15, 511

# CHECK-INST: madds.u %d0, %d1, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0x01]
madds.u %d0, %d1, %d0, 271

# CHECK-INST: madds.u %d0, %d1, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0x01]
madds.u %d0, %d1, %d0, 496

# CHECK-INST: madds.u %d0, %d1, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0x01]
madds.u %d0, %d1, %d0, 511

# CHECK-INST: madds.u %d0, %d1, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0x01]
madds.u %d0, %d1, %d1, 271

# CHECK-INST: madds.u %d0, %d1, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0x01]
madds.u %d0, %d1, %d1, 496

# CHECK-INST: madds.u %d0, %d1, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0x01]
madds.u %d0, %d1, %d1, 511

# CHECK-INST: madds.u %d0, %d1, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0x01]
madds.u %d0, %d1, %d14, 271

# CHECK-INST: madds.u %d0, %d1, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0x01]
madds.u %d0, %d1, %d14, 496

# CHECK-INST: madds.u %d0, %d1, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0x01]
madds.u %d0, %d1, %d14, 511

# CHECK-INST: madds.u %d0, %d1, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0x01]
madds.u %d0, %d1, %d15, 271

# CHECK-INST: madds.u %d0, %d1, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0x01]
madds.u %d0, %d1, %d15, 496

# CHECK-INST: madds.u %d0, %d1, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0x01]
madds.u %d0, %d1, %d15, 511

# CHECK-INST: madds.u %d0, %d14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0x0e]
madds.u %d0, %d14, %d0, 271

# CHECK-INST: madds.u %d0, %d14, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0x0e]
madds.u %d0, %d14, %d0, 496

# CHECK-INST: madds.u %d0, %d14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0x0e]
madds.u %d0, %d14, %d0, 511

# CHECK-INST: madds.u %d0, %d14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0x0e]
madds.u %d0, %d14, %d1, 271

# CHECK-INST: madds.u %d0, %d14, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0x0e]
madds.u %d0, %d14, %d1, 496

# CHECK-INST: madds.u %d0, %d14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0x0e]
madds.u %d0, %d14, %d1, 511

# CHECK-INST: madds.u %d0, %d14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0x0e]
madds.u %d0, %d14, %d14, 271

# CHECK-INST: madds.u %d0, %d14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0x0e]
madds.u %d0, %d14, %d14, 496

# CHECK-INST: madds.u %d0, %d14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0x0e]
madds.u %d0, %d14, %d14, 511

# CHECK-INST: madds.u %d0, %d14, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0x0e]
madds.u %d0, %d14, %d15, 271

# CHECK-INST: madds.u %d0, %d14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0x0e]
madds.u %d0, %d14, %d15, 496

# CHECK-INST: madds.u %d0, %d14, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0x0e]
madds.u %d0, %d14, %d15, 511

# CHECK-INST: madds.u %d0, %d15, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0x0f]
madds.u %d0, %d15, %d0, 271

# CHECK-INST: madds.u %d0, %d15, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0x0f]
madds.u %d0, %d15, %d0, 496

# CHECK-INST: madds.u %d0, %d15, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0x0f]
madds.u %d0, %d15, %d0, 511

# CHECK-INST: madds.u %d0, %d15, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0x0f]
madds.u %d0, %d15, %d1, 271

# CHECK-INST: madds.u %d0, %d15, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0x0f]
madds.u %d0, %d15, %d1, 496

# CHECK-INST: madds.u %d0, %d15, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0x0f]
madds.u %d0, %d15, %d1, 511

# CHECK-INST: madds.u %d0, %d15, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0x0f]
madds.u %d0, %d15, %d14, 271

# CHECK-INST: madds.u %d0, %d15, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0x0f]
madds.u %d0, %d15, %d14, 496

# CHECK-INST: madds.u %d0, %d15, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0x0f]
madds.u %d0, %d15, %d14, 511

# CHECK-INST: madds.u %d0, %d15, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0x0f]
madds.u %d0, %d15, %d15, 271

# CHECK-INST: madds.u %d0, %d15, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0x0f]
madds.u %d0, %d15, %d15, 496

# CHECK-INST: madds.u %d0, %d15, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0x0f]
madds.u %d0, %d15, %d15, 511

# CHECK-INST: madds.u %d1, %d0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0x10]
madds.u %d1, %d0, %d0, 271

# CHECK-INST: madds.u %d1, %d0, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0x10]
madds.u %d1, %d0, %d0, 496

# CHECK-INST: madds.u %d1, %d0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0x10]
madds.u %d1, %d0, %d0, 511

# CHECK-INST: madds.u %d1, %d0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0x10]
madds.u %d1, %d0, %d1, 271

# CHECK-INST: madds.u %d1, %d0, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0x10]
madds.u %d1, %d0, %d1, 496

# CHECK-INST: madds.u %d1, %d0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0x10]
madds.u %d1, %d0, %d1, 511

# CHECK-INST: madds.u %d1, %d0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0x10]
madds.u %d1, %d0, %d14, 271

# CHECK-INST: madds.u %d1, %d0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0x10]
madds.u %d1, %d0, %d14, 496

# CHECK-INST: madds.u %d1, %d0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0x10]
madds.u %d1, %d0, %d14, 511

# CHECK-INST: madds.u %d1, %d0, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0x10]
madds.u %d1, %d0, %d15, 271

# CHECK-INST: madds.u %d1, %d0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0x10]
madds.u %d1, %d0, %d15, 496

# CHECK-INST: madds.u %d1, %d0, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0x10]
madds.u %d1, %d0, %d15, 511

# CHECK-INST: madds.u %d1, %d1, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0x11]
madds.u %d1, %d1, %d0, 271

# CHECK-INST: madds.u %d1, %d1, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0x11]
madds.u %d1, %d1, %d0, 496

# CHECK-INST: madds.u %d1, %d1, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0x11]
madds.u %d1, %d1, %d0, 511

# CHECK-INST: madds.u %d1, %d1, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0x11]
madds.u %d1, %d1, %d1, 271

# CHECK-INST: madds.u %d1, %d1, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0x11]
madds.u %d1, %d1, %d1, 496

# CHECK-INST: madds.u %d1, %d1, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0x11]
madds.u %d1, %d1, %d1, 511

# CHECK-INST: madds.u %d1, %d1, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0x11]
madds.u %d1, %d1, %d14, 271

# CHECK-INST: madds.u %d1, %d1, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0x11]
madds.u %d1, %d1, %d14, 496

# CHECK-INST: madds.u %d1, %d1, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0x11]
madds.u %d1, %d1, %d14, 511

# CHECK-INST: madds.u %d1, %d1, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0x11]
madds.u %d1, %d1, %d15, 271

# CHECK-INST: madds.u %d1, %d1, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0x11]
madds.u %d1, %d1, %d15, 496

# CHECK-INST: madds.u %d1, %d1, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0x11]
madds.u %d1, %d1, %d15, 511

# CHECK-INST: madds.u %d1, %d14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0x1e]
madds.u %d1, %d14, %d0, 271

# CHECK-INST: madds.u %d1, %d14, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0x1e]
madds.u %d1, %d14, %d0, 496

# CHECK-INST: madds.u %d1, %d14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0x1e]
madds.u %d1, %d14, %d0, 511

# CHECK-INST: madds.u %d1, %d14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0x1e]
madds.u %d1, %d14, %d1, 271

# CHECK-INST: madds.u %d1, %d14, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0x1e]
madds.u %d1, %d14, %d1, 496

# CHECK-INST: madds.u %d1, %d14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0x1e]
madds.u %d1, %d14, %d1, 511

# CHECK-INST: madds.u %d1, %d14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0x1e]
madds.u %d1, %d14, %d14, 271

# CHECK-INST: madds.u %d1, %d14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0x1e]
madds.u %d1, %d14, %d14, 496

# CHECK-INST: madds.u %d1, %d14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0x1e]
madds.u %d1, %d14, %d14, 511

# CHECK-INST: madds.u %d1, %d14, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0x1e]
madds.u %d1, %d14, %d15, 271

# CHECK-INST: madds.u %d1, %d14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0x1e]
madds.u %d1, %d14, %d15, 496

# CHECK-INST: madds.u %d1, %d14, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0x1e]
madds.u %d1, %d14, %d15, 511

# CHECK-INST: madds.u %d1, %d15, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0x1f]
madds.u %d1, %d15, %d0, 271

# CHECK-INST: madds.u %d1, %d15, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0x1f]
madds.u %d1, %d15, %d0, 496

# CHECK-INST: madds.u %d1, %d15, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0x1f]
madds.u %d1, %d15, %d0, 511

# CHECK-INST: madds.u %d1, %d15, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0x1f]
madds.u %d1, %d15, %d1, 271

# CHECK-INST: madds.u %d1, %d15, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0x1f]
madds.u %d1, %d15, %d1, 496

# CHECK-INST: madds.u %d1, %d15, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0x1f]
madds.u %d1, %d15, %d1, 511

# CHECK-INST: madds.u %d1, %d15, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0x1f]
madds.u %d1, %d15, %d14, 271

# CHECK-INST: madds.u %d1, %d15, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0x1f]
madds.u %d1, %d15, %d14, 496

# CHECK-INST: madds.u %d1, %d15, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0x1f]
madds.u %d1, %d15, %d14, 511

# CHECK-INST: madds.u %d1, %d15, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0x1f]
madds.u %d1, %d15, %d15, 271

# CHECK-INST: madds.u %d1, %d15, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0x1f]
madds.u %d1, %d15, %d15, 496

# CHECK-INST: madds.u %d1, %d15, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0x1f]
madds.u %d1, %d15, %d15, 511

# CHECK-INST: madds.u %d14, %d0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0xe0]
madds.u %d14, %d0, %d0, 271

# CHECK-INST: madds.u %d14, %d0, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0xe0]
madds.u %d14, %d0, %d0, 496

# CHECK-INST: madds.u %d14, %d0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0xe0]
madds.u %d14, %d0, %d0, 511

# CHECK-INST: madds.u %d14, %d0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0xe0]
madds.u %d14, %d0, %d1, 271

# CHECK-INST: madds.u %d14, %d0, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0xe0]
madds.u %d14, %d0, %d1, 496

# CHECK-INST: madds.u %d14, %d0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0xe0]
madds.u %d14, %d0, %d1, 511

# CHECK-INST: madds.u %d14, %d0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0xe0]
madds.u %d14, %d0, %d14, 271

# CHECK-INST: madds.u %d14, %d0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0xe0]
madds.u %d14, %d0, %d14, 496

# CHECK-INST: madds.u %d14, %d0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0xe0]
madds.u %d14, %d0, %d14, 511

# CHECK-INST: madds.u %d14, %d0, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0xe0]
madds.u %d14, %d0, %d15, 271

# CHECK-INST: madds.u %d14, %d0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0xe0]
madds.u %d14, %d0, %d15, 496

# CHECK-INST: madds.u %d14, %d0, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0xe0]
madds.u %d14, %d0, %d15, 511

# CHECK-INST: madds.u %d14, %d1, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0xe1]
madds.u %d14, %d1, %d0, 271

# CHECK-INST: madds.u %d14, %d1, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0xe1]
madds.u %d14, %d1, %d0, 496

# CHECK-INST: madds.u %d14, %d1, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0xe1]
madds.u %d14, %d1, %d0, 511

# CHECK-INST: madds.u %d14, %d1, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0xe1]
madds.u %d14, %d1, %d1, 271

# CHECK-INST: madds.u %d14, %d1, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0xe1]
madds.u %d14, %d1, %d1, 496

# CHECK-INST: madds.u %d14, %d1, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0xe1]
madds.u %d14, %d1, %d1, 511

# CHECK-INST: madds.u %d14, %d1, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0xe1]
madds.u %d14, %d1, %d14, 271

# CHECK-INST: madds.u %d14, %d1, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0xe1]
madds.u %d14, %d1, %d14, 496

# CHECK-INST: madds.u %d14, %d1, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0xe1]
madds.u %d14, %d1, %d14, 511

# CHECK-INST: madds.u %d14, %d1, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0xe1]
madds.u %d14, %d1, %d15, 271

# CHECK-INST: madds.u %d14, %d1, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0xe1]
madds.u %d14, %d1, %d15, 496

# CHECK-INST: madds.u %d14, %d1, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0xe1]
madds.u %d14, %d1, %d15, 511

# CHECK-INST: madds.u %d14, %d14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0xee]
madds.u %d14, %d14, %d0, 271

# CHECK-INST: madds.u %d14, %d14, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0xee]
madds.u %d14, %d14, %d0, 496

# CHECK-INST: madds.u %d14, %d14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0xee]
madds.u %d14, %d14, %d0, 511

# CHECK-INST: madds.u %d14, %d14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0xee]
madds.u %d14, %d14, %d1, 271

# CHECK-INST: madds.u %d14, %d14, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0xee]
madds.u %d14, %d14, %d1, 496

# CHECK-INST: madds.u %d14, %d14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0xee]
madds.u %d14, %d14, %d1, 511

# CHECK-INST: madds.u %d14, %d14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0xee]
madds.u %d14, %d14, %d14, 271

# CHECK-INST: madds.u %d14, %d14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0xee]
madds.u %d14, %d14, %d14, 496

# CHECK-INST: madds.u %d14, %d14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0xee]
madds.u %d14, %d14, %d14, 511

# CHECK-INST: madds.u %d14, %d14, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0xee]
madds.u %d14, %d14, %d15, 271

# CHECK-INST: madds.u %d14, %d14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0xee]
madds.u %d14, %d14, %d15, 496

# CHECK-INST: madds.u %d14, %d14, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0xee]
madds.u %d14, %d14, %d15, 511

# CHECK-INST: madds.u %d14, %d15, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0xef]
madds.u %d14, %d15, %d0, 271

# CHECK-INST: madds.u %d14, %d15, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0xef]
madds.u %d14, %d15, %d0, 496

# CHECK-INST: madds.u %d14, %d15, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0xef]
madds.u %d14, %d15, %d0, 511

# CHECK-INST: madds.u %d14, %d15, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0xef]
madds.u %d14, %d15, %d1, 271

# CHECK-INST: madds.u %d14, %d15, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0xef]
madds.u %d14, %d15, %d1, 496

# CHECK-INST: madds.u %d14, %d15, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0xef]
madds.u %d14, %d15, %d1, 511

# CHECK-INST: madds.u %d14, %d15, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0xef]
madds.u %d14, %d15, %d14, 271

# CHECK-INST: madds.u %d14, %d15, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0xef]
madds.u %d14, %d15, %d14, 496

# CHECK-INST: madds.u %d14, %d15, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0xef]
madds.u %d14, %d15, %d14, 511

# CHECK-INST: madds.u %d14, %d15, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0xef]
madds.u %d14, %d15, %d15, 271

# CHECK-INST: madds.u %d14, %d15, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0xef]
madds.u %d14, %d15, %d15, 496

# CHECK-INST: madds.u %d14, %d15, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0xef]
madds.u %d14, %d15, %d15, 511

# CHECK-INST: madds.u %d15, %d0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0xf0]
madds.u %d15, %d0, %d0, 271

# CHECK-INST: madds.u %d15, %d0, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0xf0]
madds.u %d15, %d0, %d0, 496

# CHECK-INST: madds.u %d15, %d0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0xf0]
madds.u %d15, %d0, %d0, 511

# CHECK-INST: madds.u %d15, %d0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0xf0]
madds.u %d15, %d0, %d1, 271

# CHECK-INST: madds.u %d15, %d0, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0xf0]
madds.u %d15, %d0, %d1, 496

# CHECK-INST: madds.u %d15, %d0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0xf0]
madds.u %d15, %d0, %d1, 511

# CHECK-INST: madds.u %d15, %d0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0xf0]
madds.u %d15, %d0, %d14, 271

# CHECK-INST: madds.u %d15, %d0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0xf0]
madds.u %d15, %d0, %d14, 496

# CHECK-INST: madds.u %d15, %d0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0xf0]
madds.u %d15, %d0, %d14, 511

# CHECK-INST: madds.u %d15, %d0, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0xf0]
madds.u %d15, %d0, %d15, 271

# CHECK-INST: madds.u %d15, %d0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0xf0]
madds.u %d15, %d0, %d15, 496

# CHECK-INST: madds.u %d15, %d0, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0xf0]
madds.u %d15, %d0, %d15, 511

# CHECK-INST: madds.u %d15, %d1, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0xf1]
madds.u %d15, %d1, %d0, 271

# CHECK-INST: madds.u %d15, %d1, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0xf1]
madds.u %d15, %d1, %d0, 496

# CHECK-INST: madds.u %d15, %d1, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0xf1]
madds.u %d15, %d1, %d0, 511

# CHECK-INST: madds.u %d15, %d1, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0xf1]
madds.u %d15, %d1, %d1, 271

# CHECK-INST: madds.u %d15, %d1, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0xf1]
madds.u %d15, %d1, %d1, 496

# CHECK-INST: madds.u %d15, %d1, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0xf1]
madds.u %d15, %d1, %d1, 511

# CHECK-INST: madds.u %d15, %d1, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0xf1]
madds.u %d15, %d1, %d14, 271

# CHECK-INST: madds.u %d15, %d1, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0xf1]
madds.u %d15, %d1, %d14, 496

# CHECK-INST: madds.u %d15, %d1, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0xf1]
madds.u %d15, %d1, %d14, 511

# CHECK-INST: madds.u %d15, %d1, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0xf1]
madds.u %d15, %d1, %d15, 271

# CHECK-INST: madds.u %d15, %d1, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0xf1]
madds.u %d15, %d1, %d15, 496

# CHECK-INST: madds.u %d15, %d1, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0xf1]
madds.u %d15, %d1, %d15, 511

# CHECK-INST: madds.u %d15, %d14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0xfe]
madds.u %d15, %d14, %d0, 271

# CHECK-INST: madds.u %d15, %d14, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0xfe]
madds.u %d15, %d14, %d0, 496

# CHECK-INST: madds.u %d15, %d14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0xfe]
madds.u %d15, %d14, %d0, 511

# CHECK-INST: madds.u %d15, %d14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0xfe]
madds.u %d15, %d14, %d1, 271

# CHECK-INST: madds.u %d15, %d14, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0xfe]
madds.u %d15, %d14, %d1, 496

# CHECK-INST: madds.u %d15, %d14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0xfe]
madds.u %d15, %d14, %d1, 511

# CHECK-INST: madds.u %d15, %d14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0xfe]
madds.u %d15, %d14, %d14, 271

# CHECK-INST: madds.u %d15, %d14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0xfe]
madds.u %d15, %d14, %d14, 496

# CHECK-INST: madds.u %d15, %d14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0xfe]
madds.u %d15, %d14, %d14, 511

# CHECK-INST: madds.u %d15, %d14, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0xfe]
madds.u %d15, %d14, %d15, 271

# CHECK-INST: madds.u %d15, %d14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0xfe]
madds.u %d15, %d14, %d15, 496

# CHECK-INST: madds.u %d15, %d14, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0xfe]
madds.u %d15, %d14, %d15, 511

# CHECK-INST: madds.u %d15, %d15, %d0, 271
# CHECK: encoding: [0x13,0xf0,0x90,0xff]
madds.u %d15, %d15, %d0, 271

# CHECK-INST: madds.u %d15, %d15, %d0, 496
# CHECK: encoding: [0x13,0x00,0x9f,0xff]
madds.u %d15, %d15, %d0, 496

# CHECK-INST: madds.u %d15, %d15, %d0, 511
# CHECK: encoding: [0x13,0xf0,0x9f,0xff]
madds.u %d15, %d15, %d0, 511

# CHECK-INST: madds.u %d15, %d15, %d1, 271
# CHECK: encoding: [0x13,0xf1,0x90,0xff]
madds.u %d15, %d15, %d1, 271

# CHECK-INST: madds.u %d15, %d15, %d1, 496
# CHECK: encoding: [0x13,0x01,0x9f,0xff]
madds.u %d15, %d15, %d1, 496

# CHECK-INST: madds.u %d15, %d15, %d1, 511
# CHECK: encoding: [0x13,0xf1,0x9f,0xff]
madds.u %d15, %d15, %d1, 511

# CHECK-INST: madds.u %d15, %d15, %d14, 271
# CHECK: encoding: [0x13,0xfe,0x90,0xff]
madds.u %d15, %d15, %d14, 271

# CHECK-INST: madds.u %d15, %d15, %d14, 496
# CHECK: encoding: [0x13,0x0e,0x9f,0xff]
madds.u %d15, %d15, %d14, 496

# CHECK-INST: madds.u %d15, %d15, %d14, 511
# CHECK: encoding: [0x13,0xfe,0x9f,0xff]
madds.u %d15, %d15, %d14, 511

# CHECK-INST: madds.u %d15, %d15, %d15, 271
# CHECK: encoding: [0x13,0xff,0x90,0xff]
madds.u %d15, %d15, %d15, 271

# CHECK-INST: madds.u %d15, %d15, %d15, 496
# CHECK: encoding: [0x13,0x0f,0x9f,0xff]
madds.u %d15, %d15, %d15, 496

# CHECK-INST: madds.u %d15, %d15, %d15, 511
# CHECK: encoding: [0x13,0xff,0x9f,0xff]
madds.u %d15, %d15, %d15, 511

# CHECK-INST: madds.u %e0, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xe8,0x00]
madds.u %e0, %e0, %d0, %d0

# CHECK-INST: madds.u %e0, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xe8,0x00]
madds.u %e0, %e0, %d0, %d1

# CHECK-INST: madds.u %e0, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xe8,0x00]
madds.u %e0, %e0, %d0, %d14

# CHECK-INST: madds.u %e0, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xe8,0x00]
madds.u %e0, %e0, %d0, %d15

# CHECK-INST: madds.u %e0, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xe8,0x00]
madds.u %e0, %e0, %d1, %d0

# CHECK-INST: madds.u %e0, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xe8,0x00]
madds.u %e0, %e0, %d1, %d1

# CHECK-INST: madds.u %e0, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xe8,0x00]
madds.u %e0, %e0, %d1, %d14

# CHECK-INST: madds.u %e0, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xe8,0x00]
madds.u %e0, %e0, %d1, %d15

# CHECK-INST: madds.u %e0, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xe8,0x00]
madds.u %e0, %e0, %d14, %d0

# CHECK-INST: madds.u %e0, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xe8,0x00]
madds.u %e0, %e0, %d14, %d1

# CHECK-INST: madds.u %e0, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xe8,0x00]
madds.u %e0, %e0, %d14, %d14

# CHECK-INST: madds.u %e0, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xe8,0x00]
madds.u %e0, %e0, %d14, %d15

# CHECK-INST: madds.u %e0, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xe8,0x00]
madds.u %e0, %e0, %d15, %d0

# CHECK-INST: madds.u %e0, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xe8,0x00]
madds.u %e0, %e0, %d15, %d1

# CHECK-INST: madds.u %e0, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xe8,0x00]
madds.u %e0, %e0, %d15, %d14

# CHECK-INST: madds.u %e0, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xe8,0x00]
madds.u %e0, %e0, %d15, %d15

# CHECK-INST: madds.u %e0, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xe8,0x06]
madds.u %e0, %e6, %d0, %d0

# CHECK-INST: madds.u %e0, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xe8,0x06]
madds.u %e0, %e6, %d0, %d1

# CHECK-INST: madds.u %e0, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xe8,0x06]
madds.u %e0, %e6, %d0, %d14

# CHECK-INST: madds.u %e0, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xe8,0x06]
madds.u %e0, %e6, %d0, %d15

# CHECK-INST: madds.u %e0, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xe8,0x06]
madds.u %e0, %e6, %d1, %d0

# CHECK-INST: madds.u %e0, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xe8,0x06]
madds.u %e0, %e6, %d1, %d1

# CHECK-INST: madds.u %e0, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xe8,0x06]
madds.u %e0, %e6, %d1, %d14

# CHECK-INST: madds.u %e0, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xe8,0x06]
madds.u %e0, %e6, %d1, %d15

# CHECK-INST: madds.u %e0, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xe8,0x06]
madds.u %e0, %e6, %d14, %d0

# CHECK-INST: madds.u %e0, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xe8,0x06]
madds.u %e0, %e6, %d14, %d1

# CHECK-INST: madds.u %e0, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xe8,0x06]
madds.u %e0, %e6, %d14, %d14

# CHECK-INST: madds.u %e0, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xe8,0x06]
madds.u %e0, %e6, %d14, %d15

# CHECK-INST: madds.u %e0, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xe8,0x06]
madds.u %e0, %e6, %d15, %d0

# CHECK-INST: madds.u %e0, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xe8,0x06]
madds.u %e0, %e6, %d15, %d1

# CHECK-INST: madds.u %e0, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xe8,0x06]
madds.u %e0, %e6, %d15, %d14

# CHECK-INST: madds.u %e0, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xe8,0x06]
madds.u %e0, %e6, %d15, %d15

# CHECK-INST: madds.u %e0, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xe8,0x0e]
madds.u %e0, %e14, %d0, %d0

# CHECK-INST: madds.u %e0, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xe8,0x0e]
madds.u %e0, %e14, %d0, %d1

# CHECK-INST: madds.u %e0, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xe8,0x0e]
madds.u %e0, %e14, %d0, %d14

# CHECK-INST: madds.u %e0, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xe8,0x0e]
madds.u %e0, %e14, %d0, %d15

# CHECK-INST: madds.u %e0, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xe8,0x0e]
madds.u %e0, %e14, %d1, %d0

# CHECK-INST: madds.u %e0, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xe8,0x0e]
madds.u %e0, %e14, %d1, %d1

# CHECK-INST: madds.u %e0, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xe8,0x0e]
madds.u %e0, %e14, %d1, %d14

# CHECK-INST: madds.u %e0, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xe8,0x0e]
madds.u %e0, %e14, %d1, %d15

# CHECK-INST: madds.u %e0, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xe8,0x0e]
madds.u %e0, %e14, %d14, %d0

# CHECK-INST: madds.u %e0, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xe8,0x0e]
madds.u %e0, %e14, %d14, %d1

# CHECK-INST: madds.u %e0, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xe8,0x0e]
madds.u %e0, %e14, %d14, %d14

# CHECK-INST: madds.u %e0, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xe8,0x0e]
madds.u %e0, %e14, %d14, %d15

# CHECK-INST: madds.u %e0, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xe8,0x0e]
madds.u %e0, %e14, %d15, %d0

# CHECK-INST: madds.u %e0, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xe8,0x0e]
madds.u %e0, %e14, %d15, %d1

# CHECK-INST: madds.u %e0, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xe8,0x0e]
madds.u %e0, %e14, %d15, %d14

# CHECK-INST: madds.u %e0, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xe8,0x0e]
madds.u %e0, %e14, %d15, %d15

# CHECK-INST: madds.u %e6, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xe8,0x60]
madds.u %e6, %e0, %d0, %d0

# CHECK-INST: madds.u %e6, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xe8,0x60]
madds.u %e6, %e0, %d0, %d1

# CHECK-INST: madds.u %e6, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xe8,0x60]
madds.u %e6, %e0, %d0, %d14

# CHECK-INST: madds.u %e6, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xe8,0x60]
madds.u %e6, %e0, %d0, %d15

# CHECK-INST: madds.u %e6, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xe8,0x60]
madds.u %e6, %e0, %d1, %d0

# CHECK-INST: madds.u %e6, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xe8,0x60]
madds.u %e6, %e0, %d1, %d1

# CHECK-INST: madds.u %e6, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xe8,0x60]
madds.u %e6, %e0, %d1, %d14

# CHECK-INST: madds.u %e6, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xe8,0x60]
madds.u %e6, %e0, %d1, %d15

# CHECK-INST: madds.u %e6, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xe8,0x60]
madds.u %e6, %e0, %d14, %d0

# CHECK-INST: madds.u %e6, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xe8,0x60]
madds.u %e6, %e0, %d14, %d1

# CHECK-INST: madds.u %e6, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xe8,0x60]
madds.u %e6, %e0, %d14, %d14

# CHECK-INST: madds.u %e6, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xe8,0x60]
madds.u %e6, %e0, %d14, %d15

# CHECK-INST: madds.u %e6, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xe8,0x60]
madds.u %e6, %e0, %d15, %d0

# CHECK-INST: madds.u %e6, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xe8,0x60]
madds.u %e6, %e0, %d15, %d1

# CHECK-INST: madds.u %e6, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xe8,0x60]
madds.u %e6, %e0, %d15, %d14

# CHECK-INST: madds.u %e6, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xe8,0x60]
madds.u %e6, %e0, %d15, %d15

# CHECK-INST: madds.u %e6, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xe8,0x66]
madds.u %e6, %e6, %d0, %d0

# CHECK-INST: madds.u %e6, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xe8,0x66]
madds.u %e6, %e6, %d0, %d1

# CHECK-INST: madds.u %e6, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xe8,0x66]
madds.u %e6, %e6, %d0, %d14

# CHECK-INST: madds.u %e6, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xe8,0x66]
madds.u %e6, %e6, %d0, %d15

# CHECK-INST: madds.u %e6, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xe8,0x66]
madds.u %e6, %e6, %d1, %d0

# CHECK-INST: madds.u %e6, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xe8,0x66]
madds.u %e6, %e6, %d1, %d1

# CHECK-INST: madds.u %e6, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xe8,0x66]
madds.u %e6, %e6, %d1, %d14

# CHECK-INST: madds.u %e6, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xe8,0x66]
madds.u %e6, %e6, %d1, %d15

# CHECK-INST: madds.u %e6, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xe8,0x66]
madds.u %e6, %e6, %d14, %d0

# CHECK-INST: madds.u %e6, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xe8,0x66]
madds.u %e6, %e6, %d14, %d1

# CHECK-INST: madds.u %e6, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xe8,0x66]
madds.u %e6, %e6, %d14, %d14

# CHECK-INST: madds.u %e6, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xe8,0x66]
madds.u %e6, %e6, %d14, %d15

# CHECK-INST: madds.u %e6, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xe8,0x66]
madds.u %e6, %e6, %d15, %d0

# CHECK-INST: madds.u %e6, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xe8,0x66]
madds.u %e6, %e6, %d15, %d1

# CHECK-INST: madds.u %e6, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xe8,0x66]
madds.u %e6, %e6, %d15, %d14

# CHECK-INST: madds.u %e6, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xe8,0x66]
madds.u %e6, %e6, %d15, %d15

# CHECK-INST: madds.u %e6, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xe8,0x6e]
madds.u %e6, %e14, %d0, %d0

# CHECK-INST: madds.u %e6, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xe8,0x6e]
madds.u %e6, %e14, %d0, %d1

# CHECK-INST: madds.u %e6, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xe8,0x6e]
madds.u %e6, %e14, %d0, %d14

# CHECK-INST: madds.u %e6, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xe8,0x6e]
madds.u %e6, %e14, %d0, %d15

# CHECK-INST: madds.u %e6, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xe8,0x6e]
madds.u %e6, %e14, %d1, %d0

# CHECK-INST: madds.u %e6, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xe8,0x6e]
madds.u %e6, %e14, %d1, %d1

# CHECK-INST: madds.u %e6, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xe8,0x6e]
madds.u %e6, %e14, %d1, %d14

# CHECK-INST: madds.u %e6, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xe8,0x6e]
madds.u %e6, %e14, %d1, %d15

# CHECK-INST: madds.u %e6, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xe8,0x6e]
madds.u %e6, %e14, %d14, %d0

# CHECK-INST: madds.u %e6, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xe8,0x6e]
madds.u %e6, %e14, %d14, %d1

# CHECK-INST: madds.u %e6, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xe8,0x6e]
madds.u %e6, %e14, %d14, %d14

# CHECK-INST: madds.u %e6, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xe8,0x6e]
madds.u %e6, %e14, %d14, %d15

# CHECK-INST: madds.u %e6, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xe8,0x6e]
madds.u %e6, %e14, %d15, %d0

# CHECK-INST: madds.u %e6, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xe8,0x6e]
madds.u %e6, %e14, %d15, %d1

# CHECK-INST: madds.u %e6, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xe8,0x6e]
madds.u %e6, %e14, %d15, %d14

# CHECK-INST: madds.u %e6, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xe8,0x6e]
madds.u %e6, %e14, %d15, %d15

# CHECK-INST: madds.u %e14, %e0, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xe8,0xe0]
madds.u %e14, %e0, %d0, %d0

# CHECK-INST: madds.u %e14, %e0, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xe8,0xe0]
madds.u %e14, %e0, %d0, %d1

# CHECK-INST: madds.u %e14, %e0, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xe8,0xe0]
madds.u %e14, %e0, %d0, %d14

# CHECK-INST: madds.u %e14, %e0, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xe8,0xe0]
madds.u %e14, %e0, %d0, %d15

# CHECK-INST: madds.u %e14, %e0, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xe8,0xe0]
madds.u %e14, %e0, %d1, %d0

# CHECK-INST: madds.u %e14, %e0, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xe8,0xe0]
madds.u %e14, %e0, %d1, %d1

# CHECK-INST: madds.u %e14, %e0, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xe8,0xe0]
madds.u %e14, %e0, %d1, %d14

# CHECK-INST: madds.u %e14, %e0, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xe8,0xe0]
madds.u %e14, %e0, %d1, %d15

# CHECK-INST: madds.u %e14, %e0, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xe8,0xe0]
madds.u %e14, %e0, %d14, %d0

# CHECK-INST: madds.u %e14, %e0, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xe8,0xe0]
madds.u %e14, %e0, %d14, %d1

# CHECK-INST: madds.u %e14, %e0, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xe8,0xe0]
madds.u %e14, %e0, %d14, %d14

# CHECK-INST: madds.u %e14, %e0, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xe8,0xe0]
madds.u %e14, %e0, %d14, %d15

# CHECK-INST: madds.u %e14, %e0, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xe8,0xe0]
madds.u %e14, %e0, %d15, %d0

# CHECK-INST: madds.u %e14, %e0, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xe8,0xe0]
madds.u %e14, %e0, %d15, %d1

# CHECK-INST: madds.u %e14, %e0, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xe8,0xe0]
madds.u %e14, %e0, %d15, %d14

# CHECK-INST: madds.u %e14, %e0, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xe8,0xe0]
madds.u %e14, %e0, %d15, %d15

# CHECK-INST: madds.u %e14, %e6, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xe8,0xe6]
madds.u %e14, %e6, %d0, %d0

# CHECK-INST: madds.u %e14, %e6, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xe8,0xe6]
madds.u %e14, %e6, %d0, %d1

# CHECK-INST: madds.u %e14, %e6, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xe8,0xe6]
madds.u %e14, %e6, %d0, %d14

# CHECK-INST: madds.u %e14, %e6, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xe8,0xe6]
madds.u %e14, %e6, %d0, %d15

# CHECK-INST: madds.u %e14, %e6, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xe8,0xe6]
madds.u %e14, %e6, %d1, %d0

# CHECK-INST: madds.u %e14, %e6, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xe8,0xe6]
madds.u %e14, %e6, %d1, %d1

# CHECK-INST: madds.u %e14, %e6, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xe8,0xe6]
madds.u %e14, %e6, %d1, %d14

# CHECK-INST: madds.u %e14, %e6, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xe8,0xe6]
madds.u %e14, %e6, %d1, %d15

# CHECK-INST: madds.u %e14, %e6, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xe8,0xe6]
madds.u %e14, %e6, %d14, %d0

# CHECK-INST: madds.u %e14, %e6, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xe8,0xe6]
madds.u %e14, %e6, %d14, %d1

# CHECK-INST: madds.u %e14, %e6, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xe8,0xe6]
madds.u %e14, %e6, %d14, %d14

# CHECK-INST: madds.u %e14, %e6, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xe8,0xe6]
madds.u %e14, %e6, %d14, %d15

# CHECK-INST: madds.u %e14, %e6, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xe8,0xe6]
madds.u %e14, %e6, %d15, %d0

# CHECK-INST: madds.u %e14, %e6, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xe8,0xe6]
madds.u %e14, %e6, %d15, %d1

# CHECK-INST: madds.u %e14, %e6, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xe8,0xe6]
madds.u %e14, %e6, %d15, %d14

# CHECK-INST: madds.u %e14, %e6, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xe8,0xe6]
madds.u %e14, %e6, %d15, %d15

# CHECK-INST: madds.u %e14, %e14, %d0, %d0
# CHECK: encoding: [0x03,0x00,0xe8,0xee]
madds.u %e14, %e14, %d0, %d0

# CHECK-INST: madds.u %e14, %e14, %d0, %d1
# CHECK: encoding: [0x03,0x10,0xe8,0xee]
madds.u %e14, %e14, %d0, %d1

# CHECK-INST: madds.u %e14, %e14, %d0, %d14
# CHECK: encoding: [0x03,0xe0,0xe8,0xee]
madds.u %e14, %e14, %d0, %d14

# CHECK-INST: madds.u %e14, %e14, %d0, %d15
# CHECK: encoding: [0x03,0xf0,0xe8,0xee]
madds.u %e14, %e14, %d0, %d15

# CHECK-INST: madds.u %e14, %e14, %d1, %d0
# CHECK: encoding: [0x03,0x01,0xe8,0xee]
madds.u %e14, %e14, %d1, %d0

# CHECK-INST: madds.u %e14, %e14, %d1, %d1
# CHECK: encoding: [0x03,0x11,0xe8,0xee]
madds.u %e14, %e14, %d1, %d1

# CHECK-INST: madds.u %e14, %e14, %d1, %d14
# CHECK: encoding: [0x03,0xe1,0xe8,0xee]
madds.u %e14, %e14, %d1, %d14

# CHECK-INST: madds.u %e14, %e14, %d1, %d15
# CHECK: encoding: [0x03,0xf1,0xe8,0xee]
madds.u %e14, %e14, %d1, %d15

# CHECK-INST: madds.u %e14, %e14, %d14, %d0
# CHECK: encoding: [0x03,0x0e,0xe8,0xee]
madds.u %e14, %e14, %d14, %d0

# CHECK-INST: madds.u %e14, %e14, %d14, %d1
# CHECK: encoding: [0x03,0x1e,0xe8,0xee]
madds.u %e14, %e14, %d14, %d1

# CHECK-INST: madds.u %e14, %e14, %d14, %d14
# CHECK: encoding: [0x03,0xee,0xe8,0xee]
madds.u %e14, %e14, %d14, %d14

# CHECK-INST: madds.u %e14, %e14, %d14, %d15
# CHECK: encoding: [0x03,0xfe,0xe8,0xee]
madds.u %e14, %e14, %d14, %d15

# CHECK-INST: madds.u %e14, %e14, %d15, %d0
# CHECK: encoding: [0x03,0x0f,0xe8,0xee]
madds.u %e14, %e14, %d15, %d0

# CHECK-INST: madds.u %e14, %e14, %d15, %d1
# CHECK: encoding: [0x03,0x1f,0xe8,0xee]
madds.u %e14, %e14, %d15, %d1

# CHECK-INST: madds.u %e14, %e14, %d15, %d14
# CHECK: encoding: [0x03,0xef,0xe8,0xee]
madds.u %e14, %e14, %d15, %d14

# CHECK-INST: madds.u %e14, %e14, %d15, %d15
# CHECK: encoding: [0x03,0xff,0xe8,0xee]
madds.u %e14, %e14, %d15, %d15

# CHECK-INST: madds.u %e0, %e0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0xd0,0x00]
madds.u %e0, %e0, %d0, 271

# CHECK-INST: madds.u %e0, %e0, %d0, 496
# CHECK: encoding: [0x13,0x00,0xdf,0x00]
madds.u %e0, %e0, %d0, 496

# CHECK-INST: madds.u %e0, %e0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0xdf,0x00]
madds.u %e0, %e0, %d0, 511

# CHECK-INST: madds.u %e0, %e0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0xd0,0x00]
madds.u %e0, %e0, %d1, 271

# CHECK-INST: madds.u %e0, %e0, %d1, 496
# CHECK: encoding: [0x13,0x01,0xdf,0x00]
madds.u %e0, %e0, %d1, 496

# CHECK-INST: madds.u %e0, %e0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0xdf,0x00]
madds.u %e0, %e0, %d1, 511

# CHECK-INST: madds.u %e0, %e0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0xd0,0x00]
madds.u %e0, %e0, %d14, 271

# CHECK-INST: madds.u %e0, %e0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0xdf,0x00]
madds.u %e0, %e0, %d14, 496

# CHECK-INST: madds.u %e0, %e0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0xdf,0x00]
madds.u %e0, %e0, %d14, 511

# CHECK-INST: madds.u %e0, %e0, %d15, 271
# CHECK: encoding: [0x13,0xff,0xd0,0x00]
madds.u %e0, %e0, %d15, 271

# CHECK-INST: madds.u %e0, %e0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0xdf,0x00]
madds.u %e0, %e0, %d15, 496

# CHECK-INST: madds.u %e0, %e0, %d15, 511
# CHECK: encoding: [0x13,0xff,0xdf,0x00]
madds.u %e0, %e0, %d15, 511

# CHECK-INST: madds.u %e0, %e6, %d0, 271
# CHECK: encoding: [0x13,0xf0,0xd0,0x06]
madds.u %e0, %e6, %d0, 271

# CHECK-INST: madds.u %e0, %e6, %d0, 496
# CHECK: encoding: [0x13,0x00,0xdf,0x06]
madds.u %e0, %e6, %d0, 496

# CHECK-INST: madds.u %e0, %e6, %d0, 511
# CHECK: encoding: [0x13,0xf0,0xdf,0x06]
madds.u %e0, %e6, %d0, 511

# CHECK-INST: madds.u %e0, %e6, %d1, 271
# CHECK: encoding: [0x13,0xf1,0xd0,0x06]
madds.u %e0, %e6, %d1, 271

# CHECK-INST: madds.u %e0, %e6, %d1, 496
# CHECK: encoding: [0x13,0x01,0xdf,0x06]
madds.u %e0, %e6, %d1, 496

# CHECK-INST: madds.u %e0, %e6, %d1, 511
# CHECK: encoding: [0x13,0xf1,0xdf,0x06]
madds.u %e0, %e6, %d1, 511

# CHECK-INST: madds.u %e0, %e6, %d14, 271
# CHECK: encoding: [0x13,0xfe,0xd0,0x06]
madds.u %e0, %e6, %d14, 271

# CHECK-INST: madds.u %e0, %e6, %d14, 496
# CHECK: encoding: [0x13,0x0e,0xdf,0x06]
madds.u %e0, %e6, %d14, 496

# CHECK-INST: madds.u %e0, %e6, %d14, 511
# CHECK: encoding: [0x13,0xfe,0xdf,0x06]
madds.u %e0, %e6, %d14, 511

# CHECK-INST: madds.u %e0, %e6, %d15, 271
# CHECK: encoding: [0x13,0xff,0xd0,0x06]
madds.u %e0, %e6, %d15, 271

# CHECK-INST: madds.u %e0, %e6, %d15, 496
# CHECK: encoding: [0x13,0x0f,0xdf,0x06]
madds.u %e0, %e6, %d15, 496

# CHECK-INST: madds.u %e0, %e6, %d15, 511
# CHECK: encoding: [0x13,0xff,0xdf,0x06]
madds.u %e0, %e6, %d15, 511

# CHECK-INST: madds.u %e0, %e14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0xd0,0x0e]
madds.u %e0, %e14, %d0, 271

# CHECK-INST: madds.u %e0, %e14, %d0, 496
# CHECK: encoding: [0x13,0x00,0xdf,0x0e]
madds.u %e0, %e14, %d0, 496

# CHECK-INST: madds.u %e0, %e14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0xdf,0x0e]
madds.u %e0, %e14, %d0, 511

# CHECK-INST: madds.u %e0, %e14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0xd0,0x0e]
madds.u %e0, %e14, %d1, 271

# CHECK-INST: madds.u %e0, %e14, %d1, 496
# CHECK: encoding: [0x13,0x01,0xdf,0x0e]
madds.u %e0, %e14, %d1, 496

# CHECK-INST: madds.u %e0, %e14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0xdf,0x0e]
madds.u %e0, %e14, %d1, 511

# CHECK-INST: madds.u %e0, %e14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0xd0,0x0e]
madds.u %e0, %e14, %d14, 271

# CHECK-INST: madds.u %e0, %e14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0xdf,0x0e]
madds.u %e0, %e14, %d14, 496

# CHECK-INST: madds.u %e0, %e14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0xdf,0x0e]
madds.u %e0, %e14, %d14, 511

# CHECK-INST: madds.u %e0, %e14, %d15, 271
# CHECK: encoding: [0x13,0xff,0xd0,0x0e]
madds.u %e0, %e14, %d15, 271

# CHECK-INST: madds.u %e0, %e14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0xdf,0x0e]
madds.u %e0, %e14, %d15, 496

# CHECK-INST: madds.u %e0, %e14, %d15, 511
# CHECK: encoding: [0x13,0xff,0xdf,0x0e]
madds.u %e0, %e14, %d15, 511

# CHECK-INST: madds.u %e6, %e0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0xd0,0x60]
madds.u %e6, %e0, %d0, 271

# CHECK-INST: madds.u %e6, %e0, %d0, 496
# CHECK: encoding: [0x13,0x00,0xdf,0x60]
madds.u %e6, %e0, %d0, 496

# CHECK-INST: madds.u %e6, %e0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0xdf,0x60]
madds.u %e6, %e0, %d0, 511

# CHECK-INST: madds.u %e6, %e0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0xd0,0x60]
madds.u %e6, %e0, %d1, 271

# CHECK-INST: madds.u %e6, %e0, %d1, 496
# CHECK: encoding: [0x13,0x01,0xdf,0x60]
madds.u %e6, %e0, %d1, 496

# CHECK-INST: madds.u %e6, %e0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0xdf,0x60]
madds.u %e6, %e0, %d1, 511

# CHECK-INST: madds.u %e6, %e0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0xd0,0x60]
madds.u %e6, %e0, %d14, 271

# CHECK-INST: madds.u %e6, %e0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0xdf,0x60]
madds.u %e6, %e0, %d14, 496

# CHECK-INST: madds.u %e6, %e0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0xdf,0x60]
madds.u %e6, %e0, %d14, 511

# CHECK-INST: madds.u %e6, %e0, %d15, 271
# CHECK: encoding: [0x13,0xff,0xd0,0x60]
madds.u %e6, %e0, %d15, 271

# CHECK-INST: madds.u %e6, %e0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0xdf,0x60]
madds.u %e6, %e0, %d15, 496

# CHECK-INST: madds.u %e6, %e0, %d15, 511
# CHECK: encoding: [0x13,0xff,0xdf,0x60]
madds.u %e6, %e0, %d15, 511

# CHECK-INST: madds.u %e6, %e6, %d0, 271
# CHECK: encoding: [0x13,0xf0,0xd0,0x66]
madds.u %e6, %e6, %d0, 271

# CHECK-INST: madds.u %e6, %e6, %d0, 496
# CHECK: encoding: [0x13,0x00,0xdf,0x66]
madds.u %e6, %e6, %d0, 496

# CHECK-INST: madds.u %e6, %e6, %d0, 511
# CHECK: encoding: [0x13,0xf0,0xdf,0x66]
madds.u %e6, %e6, %d0, 511

# CHECK-INST: madds.u %e6, %e6, %d1, 271
# CHECK: encoding: [0x13,0xf1,0xd0,0x66]
madds.u %e6, %e6, %d1, 271

# CHECK-INST: madds.u %e6, %e6, %d1, 496
# CHECK: encoding: [0x13,0x01,0xdf,0x66]
madds.u %e6, %e6, %d1, 496

# CHECK-INST: madds.u %e6, %e6, %d1, 511
# CHECK: encoding: [0x13,0xf1,0xdf,0x66]
madds.u %e6, %e6, %d1, 511

# CHECK-INST: madds.u %e6, %e6, %d14, 271
# CHECK: encoding: [0x13,0xfe,0xd0,0x66]
madds.u %e6, %e6, %d14, 271

# CHECK-INST: madds.u %e6, %e6, %d14, 496
# CHECK: encoding: [0x13,0x0e,0xdf,0x66]
madds.u %e6, %e6, %d14, 496

# CHECK-INST: madds.u %e6, %e6, %d14, 511
# CHECK: encoding: [0x13,0xfe,0xdf,0x66]
madds.u %e6, %e6, %d14, 511

# CHECK-INST: madds.u %e6, %e6, %d15, 271
# CHECK: encoding: [0x13,0xff,0xd0,0x66]
madds.u %e6, %e6, %d15, 271

# CHECK-INST: madds.u %e6, %e6, %d15, 496
# CHECK: encoding: [0x13,0x0f,0xdf,0x66]
madds.u %e6, %e6, %d15, 496

# CHECK-INST: madds.u %e6, %e6, %d15, 511
# CHECK: encoding: [0x13,0xff,0xdf,0x66]
madds.u %e6, %e6, %d15, 511

# CHECK-INST: madds.u %e6, %e14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0xd0,0x6e]
madds.u %e6, %e14, %d0, 271

# CHECK-INST: madds.u %e6, %e14, %d0, 496
# CHECK: encoding: [0x13,0x00,0xdf,0x6e]
madds.u %e6, %e14, %d0, 496

# CHECK-INST: madds.u %e6, %e14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0xdf,0x6e]
madds.u %e6, %e14, %d0, 511

# CHECK-INST: madds.u %e6, %e14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0xd0,0x6e]
madds.u %e6, %e14, %d1, 271

# CHECK-INST: madds.u %e6, %e14, %d1, 496
# CHECK: encoding: [0x13,0x01,0xdf,0x6e]
madds.u %e6, %e14, %d1, 496

# CHECK-INST: madds.u %e6, %e14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0xdf,0x6e]
madds.u %e6, %e14, %d1, 511

# CHECK-INST: madds.u %e6, %e14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0xd0,0x6e]
madds.u %e6, %e14, %d14, 271

# CHECK-INST: madds.u %e6, %e14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0xdf,0x6e]
madds.u %e6, %e14, %d14, 496

# CHECK-INST: madds.u %e6, %e14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0xdf,0x6e]
madds.u %e6, %e14, %d14, 511

# CHECK-INST: madds.u %e6, %e14, %d15, 271
# CHECK: encoding: [0x13,0xff,0xd0,0x6e]
madds.u %e6, %e14, %d15, 271

# CHECK-INST: madds.u %e6, %e14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0xdf,0x6e]
madds.u %e6, %e14, %d15, 496

# CHECK-INST: madds.u %e6, %e14, %d15, 511
# CHECK: encoding: [0x13,0xff,0xdf,0x6e]
madds.u %e6, %e14, %d15, 511

# CHECK-INST: madds.u %e14, %e0, %d0, 271
# CHECK: encoding: [0x13,0xf0,0xd0,0xe0]
madds.u %e14, %e0, %d0, 271

# CHECK-INST: madds.u %e14, %e0, %d0, 496
# CHECK: encoding: [0x13,0x00,0xdf,0xe0]
madds.u %e14, %e0, %d0, 496

# CHECK-INST: madds.u %e14, %e0, %d0, 511
# CHECK: encoding: [0x13,0xf0,0xdf,0xe0]
madds.u %e14, %e0, %d0, 511

# CHECK-INST: madds.u %e14, %e0, %d1, 271
# CHECK: encoding: [0x13,0xf1,0xd0,0xe0]
madds.u %e14, %e0, %d1, 271

# CHECK-INST: madds.u %e14, %e0, %d1, 496
# CHECK: encoding: [0x13,0x01,0xdf,0xe0]
madds.u %e14, %e0, %d1, 496

# CHECK-INST: madds.u %e14, %e0, %d1, 511
# CHECK: encoding: [0x13,0xf1,0xdf,0xe0]
madds.u %e14, %e0, %d1, 511

# CHECK-INST: madds.u %e14, %e0, %d14, 271
# CHECK: encoding: [0x13,0xfe,0xd0,0xe0]
madds.u %e14, %e0, %d14, 271

# CHECK-INST: madds.u %e14, %e0, %d14, 496
# CHECK: encoding: [0x13,0x0e,0xdf,0xe0]
madds.u %e14, %e0, %d14, 496

# CHECK-INST: madds.u %e14, %e0, %d14, 511
# CHECK: encoding: [0x13,0xfe,0xdf,0xe0]
madds.u %e14, %e0, %d14, 511

# CHECK-INST: madds.u %e14, %e0, %d15, 271
# CHECK: encoding: [0x13,0xff,0xd0,0xe0]
madds.u %e14, %e0, %d15, 271

# CHECK-INST: madds.u %e14, %e0, %d15, 496
# CHECK: encoding: [0x13,0x0f,0xdf,0xe0]
madds.u %e14, %e0, %d15, 496

# CHECK-INST: madds.u %e14, %e0, %d15, 511
# CHECK: encoding: [0x13,0xff,0xdf,0xe0]
madds.u %e14, %e0, %d15, 511

# CHECK-INST: madds.u %e14, %e6, %d0, 271
# CHECK: encoding: [0x13,0xf0,0xd0,0xe6]
madds.u %e14, %e6, %d0, 271

# CHECK-INST: madds.u %e14, %e6, %d0, 496
# CHECK: encoding: [0x13,0x00,0xdf,0xe6]
madds.u %e14, %e6, %d0, 496

# CHECK-INST: madds.u %e14, %e6, %d0, 511
# CHECK: encoding: [0x13,0xf0,0xdf,0xe6]
madds.u %e14, %e6, %d0, 511

# CHECK-INST: madds.u %e14, %e6, %d1, 271
# CHECK: encoding: [0x13,0xf1,0xd0,0xe6]
madds.u %e14, %e6, %d1, 271

# CHECK-INST: madds.u %e14, %e6, %d1, 496
# CHECK: encoding: [0x13,0x01,0xdf,0xe6]
madds.u %e14, %e6, %d1, 496

# CHECK-INST: madds.u %e14, %e6, %d1, 511
# CHECK: encoding: [0x13,0xf1,0xdf,0xe6]
madds.u %e14, %e6, %d1, 511

# CHECK-INST: madds.u %e14, %e6, %d14, 271
# CHECK: encoding: [0x13,0xfe,0xd0,0xe6]
madds.u %e14, %e6, %d14, 271

# CHECK-INST: madds.u %e14, %e6, %d14, 496
# CHECK: encoding: [0x13,0x0e,0xdf,0xe6]
madds.u %e14, %e6, %d14, 496

# CHECK-INST: madds.u %e14, %e6, %d14, 511
# CHECK: encoding: [0x13,0xfe,0xdf,0xe6]
madds.u %e14, %e6, %d14, 511

# CHECK-INST: madds.u %e14, %e6, %d15, 271
# CHECK: encoding: [0x13,0xff,0xd0,0xe6]
madds.u %e14, %e6, %d15, 271

# CHECK-INST: madds.u %e14, %e6, %d15, 496
# CHECK: encoding: [0x13,0x0f,0xdf,0xe6]
madds.u %e14, %e6, %d15, 496

# CHECK-INST: madds.u %e14, %e6, %d15, 511
# CHECK: encoding: [0x13,0xff,0xdf,0xe6]
madds.u %e14, %e6, %d15, 511

# CHECK-INST: madds.u %e14, %e14, %d0, 271
# CHECK: encoding: [0x13,0xf0,0xd0,0xee]
madds.u %e14, %e14, %d0, 271

# CHECK-INST: madds.u %e14, %e14, %d0, 496
# CHECK: encoding: [0x13,0x00,0xdf,0xee]
madds.u %e14, %e14, %d0, 496

# CHECK-INST: madds.u %e14, %e14, %d0, 511
# CHECK: encoding: [0x13,0xf0,0xdf,0xee]
madds.u %e14, %e14, %d0, 511

# CHECK-INST: madds.u %e14, %e14, %d1, 271
# CHECK: encoding: [0x13,0xf1,0xd0,0xee]
madds.u %e14, %e14, %d1, 271

# CHECK-INST: madds.u %e14, %e14, %d1, 496
# CHECK: encoding: [0x13,0x01,0xdf,0xee]
madds.u %e14, %e14, %d1, 496

# CHECK-INST: madds.u %e14, %e14, %d1, 511
# CHECK: encoding: [0x13,0xf1,0xdf,0xee]
madds.u %e14, %e14, %d1, 511

# CHECK-INST: madds.u %e14, %e14, %d14, 271
# CHECK: encoding: [0x13,0xfe,0xd0,0xee]
madds.u %e14, %e14, %d14, 271

# CHECK-INST: madds.u %e14, %e14, %d14, 496
# CHECK: encoding: [0x13,0x0e,0xdf,0xee]
madds.u %e14, %e14, %d14, 496

# CHECK-INST: madds.u %e14, %e14, %d14, 511
# CHECK: encoding: [0x13,0xfe,0xdf,0xee]
madds.u %e14, %e14, %d14, 511

# CHECK-INST: madds.u %e14, %e14, %d15, 271
# CHECK: encoding: [0x13,0xff,0xd0,0xee]
madds.u %e14, %e14, %d15, 271

# CHECK-INST: madds.u %e14, %e14, %d15, 496
# CHECK: encoding: [0x13,0x0f,0xdf,0xee]
madds.u %e14, %e14, %d15, 496

# CHECK-INST: madds.u %e14, %e14, %d15, 511
# CHECK: encoding: [0x13,0xff,0xdf,0xee]
madds.u %e14, %e14, %d15, 511

# CHECK-INST: msub %d0, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0x00]
msub %d0, %d0, %d0, %d0

# CHECK-INST: msub %d0, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0x00]
msub %d0, %d0, %d0, %d1

# CHECK-INST: msub %d0, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0x00]
msub %d0, %d0, %d0, %d14

# CHECK-INST: msub %d0, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0x00]
msub %d0, %d0, %d0, %d15

# CHECK-INST: msub %d0, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0x00]
msub %d0, %d0, %d1, %d0

# CHECK-INST: msub %d0, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0x00]
msub %d0, %d0, %d1, %d1

# CHECK-INST: msub %d0, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0x00]
msub %d0, %d0, %d1, %d14

# CHECK-INST: msub %d0, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0x00]
msub %d0, %d0, %d1, %d15

# CHECK-INST: msub %d0, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0x00]
msub %d0, %d0, %d14, %d0

# CHECK-INST: msub %d0, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0x00]
msub %d0, %d0, %d14, %d1

# CHECK-INST: msub %d0, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0x00]
msub %d0, %d0, %d14, %d14

# CHECK-INST: msub %d0, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0x00]
msub %d0, %d0, %d14, %d15

# CHECK-INST: msub %d0, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0x00]
msub %d0, %d0, %d15, %d0

# CHECK-INST: msub %d0, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0x00]
msub %d0, %d0, %d15, %d1

# CHECK-INST: msub %d0, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0x00]
msub %d0, %d0, %d15, %d14

# CHECK-INST: msub %d0, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0x00]
msub %d0, %d0, %d15, %d15

# CHECK-INST: msub %d0, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0x01]
msub %d0, %d1, %d0, %d0

# CHECK-INST: msub %d0, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0x01]
msub %d0, %d1, %d0, %d1

# CHECK-INST: msub %d0, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0x01]
msub %d0, %d1, %d0, %d14

# CHECK-INST: msub %d0, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0x01]
msub %d0, %d1, %d0, %d15

# CHECK-INST: msub %d0, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0x01]
msub %d0, %d1, %d1, %d0

# CHECK-INST: msub %d0, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0x01]
msub %d0, %d1, %d1, %d1

# CHECK-INST: msub %d0, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0x01]
msub %d0, %d1, %d1, %d14

# CHECK-INST: msub %d0, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0x01]
msub %d0, %d1, %d1, %d15

# CHECK-INST: msub %d0, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0x01]
msub %d0, %d1, %d14, %d0

# CHECK-INST: msub %d0, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0x01]
msub %d0, %d1, %d14, %d1

# CHECK-INST: msub %d0, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0x01]
msub %d0, %d1, %d14, %d14

# CHECK-INST: msub %d0, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0x01]
msub %d0, %d1, %d14, %d15

# CHECK-INST: msub %d0, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0x01]
msub %d0, %d1, %d15, %d0

# CHECK-INST: msub %d0, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0x01]
msub %d0, %d1, %d15, %d1

# CHECK-INST: msub %d0, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0x01]
msub %d0, %d1, %d15, %d14

# CHECK-INST: msub %d0, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0x01]
msub %d0, %d1, %d15, %d15

# CHECK-INST: msub %d0, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0x0e]
msub %d0, %d14, %d0, %d0

# CHECK-INST: msub %d0, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0x0e]
msub %d0, %d14, %d0, %d1

# CHECK-INST: msub %d0, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0x0e]
msub %d0, %d14, %d0, %d14

# CHECK-INST: msub %d0, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0x0e]
msub %d0, %d14, %d0, %d15

# CHECK-INST: msub %d0, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0x0e]
msub %d0, %d14, %d1, %d0

# CHECK-INST: msub %d0, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0x0e]
msub %d0, %d14, %d1, %d1

# CHECK-INST: msub %d0, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0x0e]
msub %d0, %d14, %d1, %d14

# CHECK-INST: msub %d0, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0x0e]
msub %d0, %d14, %d1, %d15

# CHECK-INST: msub %d0, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0x0e]
msub %d0, %d14, %d14, %d0

# CHECK-INST: msub %d0, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0x0e]
msub %d0, %d14, %d14, %d1

# CHECK-INST: msub %d0, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0x0e]
msub %d0, %d14, %d14, %d14

# CHECK-INST: msub %d0, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0x0e]
msub %d0, %d14, %d14, %d15

# CHECK-INST: msub %d0, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0x0e]
msub %d0, %d14, %d15, %d0

# CHECK-INST: msub %d0, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0x0e]
msub %d0, %d14, %d15, %d1

# CHECK-INST: msub %d0, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0x0e]
msub %d0, %d14, %d15, %d14

# CHECK-INST: msub %d0, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0x0e]
msub %d0, %d14, %d15, %d15

# CHECK-INST: msub %d0, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0x0f]
msub %d0, %d15, %d0, %d0

# CHECK-INST: msub %d0, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0x0f]
msub %d0, %d15, %d0, %d1

# CHECK-INST: msub %d0, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0x0f]
msub %d0, %d15, %d0, %d14

# CHECK-INST: msub %d0, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0x0f]
msub %d0, %d15, %d0, %d15

# CHECK-INST: msub %d0, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0x0f]
msub %d0, %d15, %d1, %d0

# CHECK-INST: msub %d0, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0x0f]
msub %d0, %d15, %d1, %d1

# CHECK-INST: msub %d0, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0x0f]
msub %d0, %d15, %d1, %d14

# CHECK-INST: msub %d0, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0x0f]
msub %d0, %d15, %d1, %d15

# CHECK-INST: msub %d0, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0x0f]
msub %d0, %d15, %d14, %d0

# CHECK-INST: msub %d0, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0x0f]
msub %d0, %d15, %d14, %d1

# CHECK-INST: msub %d0, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0x0f]
msub %d0, %d15, %d14, %d14

# CHECK-INST: msub %d0, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0x0f]
msub %d0, %d15, %d14, %d15

# CHECK-INST: msub %d0, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0x0f]
msub %d0, %d15, %d15, %d0

# CHECK-INST: msub %d0, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0x0f]
msub %d0, %d15, %d15, %d1

# CHECK-INST: msub %d0, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0x0f]
msub %d0, %d15, %d15, %d14

# CHECK-INST: msub %d0, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0x0f]
msub %d0, %d15, %d15, %d15

# CHECK-INST: msub %d1, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0x10]
msub %d1, %d0, %d0, %d0

# CHECK-INST: msub %d1, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0x10]
msub %d1, %d0, %d0, %d1

# CHECK-INST: msub %d1, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0x10]
msub %d1, %d0, %d0, %d14

# CHECK-INST: msub %d1, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0x10]
msub %d1, %d0, %d0, %d15

# CHECK-INST: msub %d1, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0x10]
msub %d1, %d0, %d1, %d0

# CHECK-INST: msub %d1, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0x10]
msub %d1, %d0, %d1, %d1

# CHECK-INST: msub %d1, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0x10]
msub %d1, %d0, %d1, %d14

# CHECK-INST: msub %d1, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0x10]
msub %d1, %d0, %d1, %d15

# CHECK-INST: msub %d1, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0x10]
msub %d1, %d0, %d14, %d0

# CHECK-INST: msub %d1, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0x10]
msub %d1, %d0, %d14, %d1

# CHECK-INST: msub %d1, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0x10]
msub %d1, %d0, %d14, %d14

# CHECK-INST: msub %d1, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0x10]
msub %d1, %d0, %d14, %d15

# CHECK-INST: msub %d1, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0x10]
msub %d1, %d0, %d15, %d0

# CHECK-INST: msub %d1, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0x10]
msub %d1, %d0, %d15, %d1

# CHECK-INST: msub %d1, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0x10]
msub %d1, %d0, %d15, %d14

# CHECK-INST: msub %d1, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0x10]
msub %d1, %d0, %d15, %d15

# CHECK-INST: msub %d1, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0x11]
msub %d1, %d1, %d0, %d0

# CHECK-INST: msub %d1, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0x11]
msub %d1, %d1, %d0, %d1

# CHECK-INST: msub %d1, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0x11]
msub %d1, %d1, %d0, %d14

# CHECK-INST: msub %d1, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0x11]
msub %d1, %d1, %d0, %d15

# CHECK-INST: msub %d1, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0x11]
msub %d1, %d1, %d1, %d0

# CHECK-INST: msub %d1, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0x11]
msub %d1, %d1, %d1, %d1

# CHECK-INST: msub %d1, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0x11]
msub %d1, %d1, %d1, %d14

# CHECK-INST: msub %d1, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0x11]
msub %d1, %d1, %d1, %d15

# CHECK-INST: msub %d1, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0x11]
msub %d1, %d1, %d14, %d0

# CHECK-INST: msub %d1, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0x11]
msub %d1, %d1, %d14, %d1

# CHECK-INST: msub %d1, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0x11]
msub %d1, %d1, %d14, %d14

# CHECK-INST: msub %d1, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0x11]
msub %d1, %d1, %d14, %d15

# CHECK-INST: msub %d1, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0x11]
msub %d1, %d1, %d15, %d0

# CHECK-INST: msub %d1, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0x11]
msub %d1, %d1, %d15, %d1

# CHECK-INST: msub %d1, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0x11]
msub %d1, %d1, %d15, %d14

# CHECK-INST: msub %d1, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0x11]
msub %d1, %d1, %d15, %d15

# CHECK-INST: msub %d1, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0x1e]
msub %d1, %d14, %d0, %d0

# CHECK-INST: msub %d1, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0x1e]
msub %d1, %d14, %d0, %d1

# CHECK-INST: msub %d1, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0x1e]
msub %d1, %d14, %d0, %d14

# CHECK-INST: msub %d1, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0x1e]
msub %d1, %d14, %d0, %d15

# CHECK-INST: msub %d1, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0x1e]
msub %d1, %d14, %d1, %d0

# CHECK-INST: msub %d1, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0x1e]
msub %d1, %d14, %d1, %d1

# CHECK-INST: msub %d1, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0x1e]
msub %d1, %d14, %d1, %d14

# CHECK-INST: msub %d1, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0x1e]
msub %d1, %d14, %d1, %d15

# CHECK-INST: msub %d1, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0x1e]
msub %d1, %d14, %d14, %d0

# CHECK-INST: msub %d1, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0x1e]
msub %d1, %d14, %d14, %d1

# CHECK-INST: msub %d1, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0x1e]
msub %d1, %d14, %d14, %d14

# CHECK-INST: msub %d1, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0x1e]
msub %d1, %d14, %d14, %d15

# CHECK-INST: msub %d1, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0x1e]
msub %d1, %d14, %d15, %d0

# CHECK-INST: msub %d1, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0x1e]
msub %d1, %d14, %d15, %d1

# CHECK-INST: msub %d1, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0x1e]
msub %d1, %d14, %d15, %d14

# CHECK-INST: msub %d1, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0x1e]
msub %d1, %d14, %d15, %d15

# CHECK-INST: msub %d1, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0x1f]
msub %d1, %d15, %d0, %d0

# CHECK-INST: msub %d1, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0x1f]
msub %d1, %d15, %d0, %d1

# CHECK-INST: msub %d1, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0x1f]
msub %d1, %d15, %d0, %d14

# CHECK-INST: msub %d1, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0x1f]
msub %d1, %d15, %d0, %d15

# CHECK-INST: msub %d1, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0x1f]
msub %d1, %d15, %d1, %d0

# CHECK-INST: msub %d1, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0x1f]
msub %d1, %d15, %d1, %d1

# CHECK-INST: msub %d1, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0x1f]
msub %d1, %d15, %d1, %d14

# CHECK-INST: msub %d1, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0x1f]
msub %d1, %d15, %d1, %d15

# CHECK-INST: msub %d1, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0x1f]
msub %d1, %d15, %d14, %d0

# CHECK-INST: msub %d1, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0x1f]
msub %d1, %d15, %d14, %d1

# CHECK-INST: msub %d1, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0x1f]
msub %d1, %d15, %d14, %d14

# CHECK-INST: msub %d1, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0x1f]
msub %d1, %d15, %d14, %d15

# CHECK-INST: msub %d1, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0x1f]
msub %d1, %d15, %d15, %d0

# CHECK-INST: msub %d1, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0x1f]
msub %d1, %d15, %d15, %d1

# CHECK-INST: msub %d1, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0x1f]
msub %d1, %d15, %d15, %d14

# CHECK-INST: msub %d1, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0x1f]
msub %d1, %d15, %d15, %d15

# CHECK-INST: msub %d14, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0xe0]
msub %d14, %d0, %d0, %d0

# CHECK-INST: msub %d14, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0xe0]
msub %d14, %d0, %d0, %d1

# CHECK-INST: msub %d14, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0xe0]
msub %d14, %d0, %d0, %d14

# CHECK-INST: msub %d14, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0xe0]
msub %d14, %d0, %d0, %d15

# CHECK-INST: msub %d14, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0xe0]
msub %d14, %d0, %d1, %d0

# CHECK-INST: msub %d14, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0xe0]
msub %d14, %d0, %d1, %d1

# CHECK-INST: msub %d14, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0xe0]
msub %d14, %d0, %d1, %d14

# CHECK-INST: msub %d14, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0xe0]
msub %d14, %d0, %d1, %d15

# CHECK-INST: msub %d14, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0xe0]
msub %d14, %d0, %d14, %d0

# CHECK-INST: msub %d14, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0xe0]
msub %d14, %d0, %d14, %d1

# CHECK-INST: msub %d14, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0xe0]
msub %d14, %d0, %d14, %d14

# CHECK-INST: msub %d14, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0xe0]
msub %d14, %d0, %d14, %d15

# CHECK-INST: msub %d14, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0xe0]
msub %d14, %d0, %d15, %d0

# CHECK-INST: msub %d14, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0xe0]
msub %d14, %d0, %d15, %d1

# CHECK-INST: msub %d14, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0xe0]
msub %d14, %d0, %d15, %d14

# CHECK-INST: msub %d14, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0xe0]
msub %d14, %d0, %d15, %d15

# CHECK-INST: msub %d14, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0xe1]
msub %d14, %d1, %d0, %d0

# CHECK-INST: msub %d14, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0xe1]
msub %d14, %d1, %d0, %d1

# CHECK-INST: msub %d14, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0xe1]
msub %d14, %d1, %d0, %d14

# CHECK-INST: msub %d14, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0xe1]
msub %d14, %d1, %d0, %d15

# CHECK-INST: msub %d14, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0xe1]
msub %d14, %d1, %d1, %d0

# CHECK-INST: msub %d14, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0xe1]
msub %d14, %d1, %d1, %d1

# CHECK-INST: msub %d14, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0xe1]
msub %d14, %d1, %d1, %d14

# CHECK-INST: msub %d14, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0xe1]
msub %d14, %d1, %d1, %d15

# CHECK-INST: msub %d14, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0xe1]
msub %d14, %d1, %d14, %d0

# CHECK-INST: msub %d14, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0xe1]
msub %d14, %d1, %d14, %d1

# CHECK-INST: msub %d14, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0xe1]
msub %d14, %d1, %d14, %d14

# CHECK-INST: msub %d14, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0xe1]
msub %d14, %d1, %d14, %d15

# CHECK-INST: msub %d14, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0xe1]
msub %d14, %d1, %d15, %d0

# CHECK-INST: msub %d14, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0xe1]
msub %d14, %d1, %d15, %d1

# CHECK-INST: msub %d14, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0xe1]
msub %d14, %d1, %d15, %d14

# CHECK-INST: msub %d14, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0xe1]
msub %d14, %d1, %d15, %d15

# CHECK-INST: msub %d14, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0xee]
msub %d14, %d14, %d0, %d0

# CHECK-INST: msub %d14, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0xee]
msub %d14, %d14, %d0, %d1

# CHECK-INST: msub %d14, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0xee]
msub %d14, %d14, %d0, %d14

# CHECK-INST: msub %d14, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0xee]
msub %d14, %d14, %d0, %d15

# CHECK-INST: msub %d14, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0xee]
msub %d14, %d14, %d1, %d0

# CHECK-INST: msub %d14, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0xee]
msub %d14, %d14, %d1, %d1

# CHECK-INST: msub %d14, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0xee]
msub %d14, %d14, %d1, %d14

# CHECK-INST: msub %d14, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0xee]
msub %d14, %d14, %d1, %d15

# CHECK-INST: msub %d14, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0xee]
msub %d14, %d14, %d14, %d0

# CHECK-INST: msub %d14, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0xee]
msub %d14, %d14, %d14, %d1

# CHECK-INST: msub %d14, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0xee]
msub %d14, %d14, %d14, %d14

# CHECK-INST: msub %d14, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0xee]
msub %d14, %d14, %d14, %d15

# CHECK-INST: msub %d14, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0xee]
msub %d14, %d14, %d15, %d0

# CHECK-INST: msub %d14, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0xee]
msub %d14, %d14, %d15, %d1

# CHECK-INST: msub %d14, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0xee]
msub %d14, %d14, %d15, %d14

# CHECK-INST: msub %d14, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0xee]
msub %d14, %d14, %d15, %d15

# CHECK-INST: msub %d14, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0xef]
msub %d14, %d15, %d0, %d0

# CHECK-INST: msub %d14, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0xef]
msub %d14, %d15, %d0, %d1

# CHECK-INST: msub %d14, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0xef]
msub %d14, %d15, %d0, %d14

# CHECK-INST: msub %d14, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0xef]
msub %d14, %d15, %d0, %d15

# CHECK-INST: msub %d14, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0xef]
msub %d14, %d15, %d1, %d0

# CHECK-INST: msub %d14, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0xef]
msub %d14, %d15, %d1, %d1

# CHECK-INST: msub %d14, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0xef]
msub %d14, %d15, %d1, %d14

# CHECK-INST: msub %d14, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0xef]
msub %d14, %d15, %d1, %d15

# CHECK-INST: msub %d14, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0xef]
msub %d14, %d15, %d14, %d0

# CHECK-INST: msub %d14, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0xef]
msub %d14, %d15, %d14, %d1

# CHECK-INST: msub %d14, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0xef]
msub %d14, %d15, %d14, %d14

# CHECK-INST: msub %d14, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0xef]
msub %d14, %d15, %d14, %d15

# CHECK-INST: msub %d14, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0xef]
msub %d14, %d15, %d15, %d0

# CHECK-INST: msub %d14, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0xef]
msub %d14, %d15, %d15, %d1

# CHECK-INST: msub %d14, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0xef]
msub %d14, %d15, %d15, %d14

# CHECK-INST: msub %d14, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0xef]
msub %d14, %d15, %d15, %d15

# CHECK-INST: msub %d15, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0xf0]
msub %d15, %d0, %d0, %d0

# CHECK-INST: msub %d15, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0xf0]
msub %d15, %d0, %d0, %d1

# CHECK-INST: msub %d15, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0xf0]
msub %d15, %d0, %d0, %d14

# CHECK-INST: msub %d15, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0xf0]
msub %d15, %d0, %d0, %d15

# CHECK-INST: msub %d15, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0xf0]
msub %d15, %d0, %d1, %d0

# CHECK-INST: msub %d15, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0xf0]
msub %d15, %d0, %d1, %d1

# CHECK-INST: msub %d15, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0xf0]
msub %d15, %d0, %d1, %d14

# CHECK-INST: msub %d15, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0xf0]
msub %d15, %d0, %d1, %d15

# CHECK-INST: msub %d15, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0xf0]
msub %d15, %d0, %d14, %d0

# CHECK-INST: msub %d15, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0xf0]
msub %d15, %d0, %d14, %d1

# CHECK-INST: msub %d15, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0xf0]
msub %d15, %d0, %d14, %d14

# CHECK-INST: msub %d15, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0xf0]
msub %d15, %d0, %d14, %d15

# CHECK-INST: msub %d15, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0xf0]
msub %d15, %d0, %d15, %d0

# CHECK-INST: msub %d15, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0xf0]
msub %d15, %d0, %d15, %d1

# CHECK-INST: msub %d15, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0xf0]
msub %d15, %d0, %d15, %d14

# CHECK-INST: msub %d15, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0xf0]
msub %d15, %d0, %d15, %d15

# CHECK-INST: msub %d15, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0xf1]
msub %d15, %d1, %d0, %d0

# CHECK-INST: msub %d15, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0xf1]
msub %d15, %d1, %d0, %d1

# CHECK-INST: msub %d15, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0xf1]
msub %d15, %d1, %d0, %d14

# CHECK-INST: msub %d15, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0xf1]
msub %d15, %d1, %d0, %d15

# CHECK-INST: msub %d15, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0xf1]
msub %d15, %d1, %d1, %d0

# CHECK-INST: msub %d15, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0xf1]
msub %d15, %d1, %d1, %d1

# CHECK-INST: msub %d15, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0xf1]
msub %d15, %d1, %d1, %d14

# CHECK-INST: msub %d15, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0xf1]
msub %d15, %d1, %d1, %d15

# CHECK-INST: msub %d15, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0xf1]
msub %d15, %d1, %d14, %d0

# CHECK-INST: msub %d15, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0xf1]
msub %d15, %d1, %d14, %d1

# CHECK-INST: msub %d15, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0xf1]
msub %d15, %d1, %d14, %d14

# CHECK-INST: msub %d15, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0xf1]
msub %d15, %d1, %d14, %d15

# CHECK-INST: msub %d15, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0xf1]
msub %d15, %d1, %d15, %d0

# CHECK-INST: msub %d15, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0xf1]
msub %d15, %d1, %d15, %d1

# CHECK-INST: msub %d15, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0xf1]
msub %d15, %d1, %d15, %d14

# CHECK-INST: msub %d15, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0xf1]
msub %d15, %d1, %d15, %d15

# CHECK-INST: msub %d15, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0xfe]
msub %d15, %d14, %d0, %d0

# CHECK-INST: msub %d15, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0xfe]
msub %d15, %d14, %d0, %d1

# CHECK-INST: msub %d15, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0xfe]
msub %d15, %d14, %d0, %d14

# CHECK-INST: msub %d15, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0xfe]
msub %d15, %d14, %d0, %d15

# CHECK-INST: msub %d15, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0xfe]
msub %d15, %d14, %d1, %d0

# CHECK-INST: msub %d15, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0xfe]
msub %d15, %d14, %d1, %d1

# CHECK-INST: msub %d15, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0xfe]
msub %d15, %d14, %d1, %d14

# CHECK-INST: msub %d15, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0xfe]
msub %d15, %d14, %d1, %d15

# CHECK-INST: msub %d15, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0xfe]
msub %d15, %d14, %d14, %d0

# CHECK-INST: msub %d15, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0xfe]
msub %d15, %d14, %d14, %d1

# CHECK-INST: msub %d15, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0xfe]
msub %d15, %d14, %d14, %d14

# CHECK-INST: msub %d15, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0xfe]
msub %d15, %d14, %d14, %d15

# CHECK-INST: msub %d15, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0xfe]
msub %d15, %d14, %d15, %d0

# CHECK-INST: msub %d15, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0xfe]
msub %d15, %d14, %d15, %d1

# CHECK-INST: msub %d15, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0xfe]
msub %d15, %d14, %d15, %d14

# CHECK-INST: msub %d15, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0xfe]
msub %d15, %d14, %d15, %d15

# CHECK-INST: msub %d15, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x0a,0xff]
msub %d15, %d15, %d0, %d0

# CHECK-INST: msub %d15, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x0a,0xff]
msub %d15, %d15, %d0, %d1

# CHECK-INST: msub %d15, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x0a,0xff]
msub %d15, %d15, %d0, %d14

# CHECK-INST: msub %d15, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x0a,0xff]
msub %d15, %d15, %d0, %d15

# CHECK-INST: msub %d15, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x0a,0xff]
msub %d15, %d15, %d1, %d0

# CHECK-INST: msub %d15, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x0a,0xff]
msub %d15, %d15, %d1, %d1

# CHECK-INST: msub %d15, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x0a,0xff]
msub %d15, %d15, %d1, %d14

# CHECK-INST: msub %d15, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x0a,0xff]
msub %d15, %d15, %d1, %d15

# CHECK-INST: msub %d15, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x0a,0xff]
msub %d15, %d15, %d14, %d0

# CHECK-INST: msub %d15, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x0a,0xff]
msub %d15, %d15, %d14, %d1

# CHECK-INST: msub %d15, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x0a,0xff]
msub %d15, %d15, %d14, %d14

# CHECK-INST: msub %d15, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x0a,0xff]
msub %d15, %d15, %d14, %d15

# CHECK-INST: msub %d15, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x0a,0xff]
msub %d15, %d15, %d15, %d0

# CHECK-INST: msub %d15, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x0a,0xff]
msub %d15, %d15, %d15, %d1

# CHECK-INST: msub %d15, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x0a,0xff]
msub %d15, %d15, %d15, %d14

# CHECK-INST: msub %d15, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x0a,0xff]
msub %d15, %d15, %d15, %d15

# CHECK-INST: msub %d0, %d0, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0x00]
msub %d0, %d0, %d0, -256

# CHECK-INST: msub %d0, %d0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0x00]
msub %d0, %d0, %d0, -129

# CHECK-INST: msub %d0, %d0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0x00]
msub %d0, %d0, %d0, -1

# CHECK-INST: msub %d0, %d0, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0x00]
msub %d0, %d0, %d0, 0

# CHECK-INST: msub %d0, %d0, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0x00]
msub %d0, %d0, %d0, 1

# CHECK-INST: msub %d0, %d0, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0x00]
msub %d0, %d0, %d0, 128

# CHECK-INST: msub %d0, %d0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0x00]
msub %d0, %d0, %d0, 255

# CHECK-INST: msub %d0, %d0, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0x00]
msub %d0, %d0, %d1, -256

# CHECK-INST: msub %d0, %d0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0x00]
msub %d0, %d0, %d1, -129

# CHECK-INST: msub %d0, %d0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0x00]
msub %d0, %d0, %d1, -1

# CHECK-INST: msub %d0, %d0, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0x00]
msub %d0, %d0, %d1, 0

# CHECK-INST: msub %d0, %d0, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0x00]
msub %d0, %d0, %d1, 1

# CHECK-INST: msub %d0, %d0, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0x00]
msub %d0, %d0, %d1, 128

# CHECK-INST: msub %d0, %d0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0x00]
msub %d0, %d0, %d1, 255

# CHECK-INST: msub %d0, %d0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0x00]
msub %d0, %d0, %d14, -256

# CHECK-INST: msub %d0, %d0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0x00]
msub %d0, %d0, %d14, -129

# CHECK-INST: msub %d0, %d0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0x00]
msub %d0, %d0, %d14, -1

# CHECK-INST: msub %d0, %d0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0x00]
msub %d0, %d0, %d14, 0

# CHECK-INST: msub %d0, %d0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0x00]
msub %d0, %d0, %d14, 1

# CHECK-INST: msub %d0, %d0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0x00]
msub %d0, %d0, %d14, 128

# CHECK-INST: msub %d0, %d0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0x00]
msub %d0, %d0, %d14, 255

# CHECK-INST: msub %d0, %d0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0x00]
msub %d0, %d0, %d15, -256

# CHECK-INST: msub %d0, %d0, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0x00]
msub %d0, %d0, %d15, -129

# CHECK-INST: msub %d0, %d0, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0x00]
msub %d0, %d0, %d15, -1

# CHECK-INST: msub %d0, %d0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0x00]
msub %d0, %d0, %d15, 0

# CHECK-INST: msub %d0, %d0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0x00]
msub %d0, %d0, %d15, 1

# CHECK-INST: msub %d0, %d0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0x00]
msub %d0, %d0, %d15, 128

# CHECK-INST: msub %d0, %d0, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0x00]
msub %d0, %d0, %d15, 255

# CHECK-INST: msub %d0, %d1, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0x01]
msub %d0, %d1, %d0, -256

# CHECK-INST: msub %d0, %d1, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0x01]
msub %d0, %d1, %d0, -129

# CHECK-INST: msub %d0, %d1, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0x01]
msub %d0, %d1, %d0, -1

# CHECK-INST: msub %d0, %d1, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0x01]
msub %d0, %d1, %d0, 0

# CHECK-INST: msub %d0, %d1, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0x01]
msub %d0, %d1, %d0, 1

# CHECK-INST: msub %d0, %d1, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0x01]
msub %d0, %d1, %d0, 128

# CHECK-INST: msub %d0, %d1, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0x01]
msub %d0, %d1, %d0, 255

# CHECK-INST: msub %d0, %d1, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0x01]
msub %d0, %d1, %d1, -256

# CHECK-INST: msub %d0, %d1, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0x01]
msub %d0, %d1, %d1, -129

# CHECK-INST: msub %d0, %d1, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0x01]
msub %d0, %d1, %d1, -1

# CHECK-INST: msub %d0, %d1, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0x01]
msub %d0, %d1, %d1, 0

# CHECK-INST: msub %d0, %d1, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0x01]
msub %d0, %d1, %d1, 1

# CHECK-INST: msub %d0, %d1, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0x01]
msub %d0, %d1, %d1, 128

# CHECK-INST: msub %d0, %d1, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0x01]
msub %d0, %d1, %d1, 255

# CHECK-INST: msub %d0, %d1, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0x01]
msub %d0, %d1, %d14, -256

# CHECK-INST: msub %d0, %d1, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0x01]
msub %d0, %d1, %d14, -129

# CHECK-INST: msub %d0, %d1, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0x01]
msub %d0, %d1, %d14, -1

# CHECK-INST: msub %d0, %d1, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0x01]
msub %d0, %d1, %d14, 0

# CHECK-INST: msub %d0, %d1, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0x01]
msub %d0, %d1, %d14, 1

# CHECK-INST: msub %d0, %d1, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0x01]
msub %d0, %d1, %d14, 128

# CHECK-INST: msub %d0, %d1, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0x01]
msub %d0, %d1, %d14, 255

# CHECK-INST: msub %d0, %d1, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0x01]
msub %d0, %d1, %d15, -256

# CHECK-INST: msub %d0, %d1, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0x01]
msub %d0, %d1, %d15, -129

# CHECK-INST: msub %d0, %d1, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0x01]
msub %d0, %d1, %d15, -1

# CHECK-INST: msub %d0, %d1, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0x01]
msub %d0, %d1, %d15, 0

# CHECK-INST: msub %d0, %d1, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0x01]
msub %d0, %d1, %d15, 1

# CHECK-INST: msub %d0, %d1, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0x01]
msub %d0, %d1, %d15, 128

# CHECK-INST: msub %d0, %d1, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0x01]
msub %d0, %d1, %d15, 255

# CHECK-INST: msub %d0, %d14, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0x0e]
msub %d0, %d14, %d0, -256

# CHECK-INST: msub %d0, %d14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0x0e]
msub %d0, %d14, %d0, -129

# CHECK-INST: msub %d0, %d14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0x0e]
msub %d0, %d14, %d0, -1

# CHECK-INST: msub %d0, %d14, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0x0e]
msub %d0, %d14, %d0, 0

# CHECK-INST: msub %d0, %d14, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0x0e]
msub %d0, %d14, %d0, 1

# CHECK-INST: msub %d0, %d14, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0x0e]
msub %d0, %d14, %d0, 128

# CHECK-INST: msub %d0, %d14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0x0e]
msub %d0, %d14, %d0, 255

# CHECK-INST: msub %d0, %d14, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0x0e]
msub %d0, %d14, %d1, -256

# CHECK-INST: msub %d0, %d14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0x0e]
msub %d0, %d14, %d1, -129

# CHECK-INST: msub %d0, %d14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0x0e]
msub %d0, %d14, %d1, -1

# CHECK-INST: msub %d0, %d14, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0x0e]
msub %d0, %d14, %d1, 0

# CHECK-INST: msub %d0, %d14, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0x0e]
msub %d0, %d14, %d1, 1

# CHECK-INST: msub %d0, %d14, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0x0e]
msub %d0, %d14, %d1, 128

# CHECK-INST: msub %d0, %d14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0x0e]
msub %d0, %d14, %d1, 255

# CHECK-INST: msub %d0, %d14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0x0e]
msub %d0, %d14, %d14, -256

# CHECK-INST: msub %d0, %d14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0x0e]
msub %d0, %d14, %d14, -129

# CHECK-INST: msub %d0, %d14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0x0e]
msub %d0, %d14, %d14, -1

# CHECK-INST: msub %d0, %d14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0x0e]
msub %d0, %d14, %d14, 0

# CHECK-INST: msub %d0, %d14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0x0e]
msub %d0, %d14, %d14, 1

# CHECK-INST: msub %d0, %d14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0x0e]
msub %d0, %d14, %d14, 128

# CHECK-INST: msub %d0, %d14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0x0e]
msub %d0, %d14, %d14, 255

# CHECK-INST: msub %d0, %d14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0x0e]
msub %d0, %d14, %d15, -256

# CHECK-INST: msub %d0, %d14, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0x0e]
msub %d0, %d14, %d15, -129

# CHECK-INST: msub %d0, %d14, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0x0e]
msub %d0, %d14, %d15, -1

# CHECK-INST: msub %d0, %d14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0x0e]
msub %d0, %d14, %d15, 0

# CHECK-INST: msub %d0, %d14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0x0e]
msub %d0, %d14, %d15, 1

# CHECK-INST: msub %d0, %d14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0x0e]
msub %d0, %d14, %d15, 128

# CHECK-INST: msub %d0, %d14, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0x0e]
msub %d0, %d14, %d15, 255

# CHECK-INST: msub %d0, %d15, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0x0f]
msub %d0, %d15, %d0, -256

# CHECK-INST: msub %d0, %d15, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0x0f]
msub %d0, %d15, %d0, -129

# CHECK-INST: msub %d0, %d15, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0x0f]
msub %d0, %d15, %d0, -1

# CHECK-INST: msub %d0, %d15, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0x0f]
msub %d0, %d15, %d0, 0

# CHECK-INST: msub %d0, %d15, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0x0f]
msub %d0, %d15, %d0, 1

# CHECK-INST: msub %d0, %d15, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0x0f]
msub %d0, %d15, %d0, 128

# CHECK-INST: msub %d0, %d15, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0x0f]
msub %d0, %d15, %d0, 255

# CHECK-INST: msub %d0, %d15, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0x0f]
msub %d0, %d15, %d1, -256

# CHECK-INST: msub %d0, %d15, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0x0f]
msub %d0, %d15, %d1, -129

# CHECK-INST: msub %d0, %d15, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0x0f]
msub %d0, %d15, %d1, -1

# CHECK-INST: msub %d0, %d15, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0x0f]
msub %d0, %d15, %d1, 0

# CHECK-INST: msub %d0, %d15, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0x0f]
msub %d0, %d15, %d1, 1

# CHECK-INST: msub %d0, %d15, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0x0f]
msub %d0, %d15, %d1, 128

# CHECK-INST: msub %d0, %d15, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0x0f]
msub %d0, %d15, %d1, 255

# CHECK-INST: msub %d0, %d15, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0x0f]
msub %d0, %d15, %d14, -256

# CHECK-INST: msub %d0, %d15, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0x0f]
msub %d0, %d15, %d14, -129

# CHECK-INST: msub %d0, %d15, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0x0f]
msub %d0, %d15, %d14, -1

# CHECK-INST: msub %d0, %d15, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0x0f]
msub %d0, %d15, %d14, 0

# CHECK-INST: msub %d0, %d15, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0x0f]
msub %d0, %d15, %d14, 1

# CHECK-INST: msub %d0, %d15, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0x0f]
msub %d0, %d15, %d14, 128

# CHECK-INST: msub %d0, %d15, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0x0f]
msub %d0, %d15, %d14, 255

# CHECK-INST: msub %d0, %d15, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0x0f]
msub %d0, %d15, %d15, -256

# CHECK-INST: msub %d0, %d15, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0x0f]
msub %d0, %d15, %d15, -129

# CHECK-INST: msub %d0, %d15, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0x0f]
msub %d0, %d15, %d15, -1

# CHECK-INST: msub %d0, %d15, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0x0f]
msub %d0, %d15, %d15, 0

# CHECK-INST: msub %d0, %d15, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0x0f]
msub %d0, %d15, %d15, 1

# CHECK-INST: msub %d0, %d15, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0x0f]
msub %d0, %d15, %d15, 128

# CHECK-INST: msub %d0, %d15, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0x0f]
msub %d0, %d15, %d15, 255

# CHECK-INST: msub %d1, %d0, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0x10]
msub %d1, %d0, %d0, -256

# CHECK-INST: msub %d1, %d0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0x10]
msub %d1, %d0, %d0, -129

# CHECK-INST: msub %d1, %d0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0x10]
msub %d1, %d0, %d0, -1

# CHECK-INST: msub %d1, %d0, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0x10]
msub %d1, %d0, %d0, 0

# CHECK-INST: msub %d1, %d0, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0x10]
msub %d1, %d0, %d0, 1

# CHECK-INST: msub %d1, %d0, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0x10]
msub %d1, %d0, %d0, 128

# CHECK-INST: msub %d1, %d0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0x10]
msub %d1, %d0, %d0, 255

# CHECK-INST: msub %d1, %d0, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0x10]
msub %d1, %d0, %d1, -256

# CHECK-INST: msub %d1, %d0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0x10]
msub %d1, %d0, %d1, -129

# CHECK-INST: msub %d1, %d0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0x10]
msub %d1, %d0, %d1, -1

# CHECK-INST: msub %d1, %d0, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0x10]
msub %d1, %d0, %d1, 0

# CHECK-INST: msub %d1, %d0, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0x10]
msub %d1, %d0, %d1, 1

# CHECK-INST: msub %d1, %d0, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0x10]
msub %d1, %d0, %d1, 128

# CHECK-INST: msub %d1, %d0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0x10]
msub %d1, %d0, %d1, 255

# CHECK-INST: msub %d1, %d0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0x10]
msub %d1, %d0, %d14, -256

# CHECK-INST: msub %d1, %d0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0x10]
msub %d1, %d0, %d14, -129

# CHECK-INST: msub %d1, %d0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0x10]
msub %d1, %d0, %d14, -1

# CHECK-INST: msub %d1, %d0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0x10]
msub %d1, %d0, %d14, 0

# CHECK-INST: msub %d1, %d0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0x10]
msub %d1, %d0, %d14, 1

# CHECK-INST: msub %d1, %d0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0x10]
msub %d1, %d0, %d14, 128

# CHECK-INST: msub %d1, %d0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0x10]
msub %d1, %d0, %d14, 255

# CHECK-INST: msub %d1, %d0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0x10]
msub %d1, %d0, %d15, -256

# CHECK-INST: msub %d1, %d0, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0x10]
msub %d1, %d0, %d15, -129

# CHECK-INST: msub %d1, %d0, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0x10]
msub %d1, %d0, %d15, -1

# CHECK-INST: msub %d1, %d0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0x10]
msub %d1, %d0, %d15, 0

# CHECK-INST: msub %d1, %d0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0x10]
msub %d1, %d0, %d15, 1

# CHECK-INST: msub %d1, %d0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0x10]
msub %d1, %d0, %d15, 128

# CHECK-INST: msub %d1, %d0, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0x10]
msub %d1, %d0, %d15, 255

# CHECK-INST: msub %d1, %d1, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0x11]
msub %d1, %d1, %d0, -256

# CHECK-INST: msub %d1, %d1, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0x11]
msub %d1, %d1, %d0, -129

# CHECK-INST: msub %d1, %d1, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0x11]
msub %d1, %d1, %d0, -1

# CHECK-INST: msub %d1, %d1, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0x11]
msub %d1, %d1, %d0, 0

# CHECK-INST: msub %d1, %d1, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0x11]
msub %d1, %d1, %d0, 1

# CHECK-INST: msub %d1, %d1, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0x11]
msub %d1, %d1, %d0, 128

# CHECK-INST: msub %d1, %d1, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0x11]
msub %d1, %d1, %d0, 255

# CHECK-INST: msub %d1, %d1, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0x11]
msub %d1, %d1, %d1, -256

# CHECK-INST: msub %d1, %d1, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0x11]
msub %d1, %d1, %d1, -129

# CHECK-INST: msub %d1, %d1, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0x11]
msub %d1, %d1, %d1, -1

# CHECK-INST: msub %d1, %d1, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0x11]
msub %d1, %d1, %d1, 0

# CHECK-INST: msub %d1, %d1, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0x11]
msub %d1, %d1, %d1, 1

# CHECK-INST: msub %d1, %d1, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0x11]
msub %d1, %d1, %d1, 128

# CHECK-INST: msub %d1, %d1, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0x11]
msub %d1, %d1, %d1, 255

# CHECK-INST: msub %d1, %d1, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0x11]
msub %d1, %d1, %d14, -256

# CHECK-INST: msub %d1, %d1, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0x11]
msub %d1, %d1, %d14, -129

# CHECK-INST: msub %d1, %d1, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0x11]
msub %d1, %d1, %d14, -1

# CHECK-INST: msub %d1, %d1, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0x11]
msub %d1, %d1, %d14, 0

# CHECK-INST: msub %d1, %d1, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0x11]
msub %d1, %d1, %d14, 1

# CHECK-INST: msub %d1, %d1, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0x11]
msub %d1, %d1, %d14, 128

# CHECK-INST: msub %d1, %d1, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0x11]
msub %d1, %d1, %d14, 255

# CHECK-INST: msub %d1, %d1, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0x11]
msub %d1, %d1, %d15, -256

# CHECK-INST: msub %d1, %d1, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0x11]
msub %d1, %d1, %d15, -129

# CHECK-INST: msub %d1, %d1, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0x11]
msub %d1, %d1, %d15, -1

# CHECK-INST: msub %d1, %d1, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0x11]
msub %d1, %d1, %d15, 0

# CHECK-INST: msub %d1, %d1, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0x11]
msub %d1, %d1, %d15, 1

# CHECK-INST: msub %d1, %d1, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0x11]
msub %d1, %d1, %d15, 128

# CHECK-INST: msub %d1, %d1, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0x11]
msub %d1, %d1, %d15, 255

# CHECK-INST: msub %d1, %d14, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0x1e]
msub %d1, %d14, %d0, -256

# CHECK-INST: msub %d1, %d14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0x1e]
msub %d1, %d14, %d0, -129

# CHECK-INST: msub %d1, %d14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0x1e]
msub %d1, %d14, %d0, -1

# CHECK-INST: msub %d1, %d14, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0x1e]
msub %d1, %d14, %d0, 0

# CHECK-INST: msub %d1, %d14, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0x1e]
msub %d1, %d14, %d0, 1

# CHECK-INST: msub %d1, %d14, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0x1e]
msub %d1, %d14, %d0, 128

# CHECK-INST: msub %d1, %d14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0x1e]
msub %d1, %d14, %d0, 255

# CHECK-INST: msub %d1, %d14, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0x1e]
msub %d1, %d14, %d1, -256

# CHECK-INST: msub %d1, %d14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0x1e]
msub %d1, %d14, %d1, -129

# CHECK-INST: msub %d1, %d14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0x1e]
msub %d1, %d14, %d1, -1

# CHECK-INST: msub %d1, %d14, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0x1e]
msub %d1, %d14, %d1, 0

# CHECK-INST: msub %d1, %d14, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0x1e]
msub %d1, %d14, %d1, 1

# CHECK-INST: msub %d1, %d14, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0x1e]
msub %d1, %d14, %d1, 128

# CHECK-INST: msub %d1, %d14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0x1e]
msub %d1, %d14, %d1, 255

# CHECK-INST: msub %d1, %d14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0x1e]
msub %d1, %d14, %d14, -256

# CHECK-INST: msub %d1, %d14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0x1e]
msub %d1, %d14, %d14, -129

# CHECK-INST: msub %d1, %d14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0x1e]
msub %d1, %d14, %d14, -1

# CHECK-INST: msub %d1, %d14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0x1e]
msub %d1, %d14, %d14, 0

# CHECK-INST: msub %d1, %d14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0x1e]
msub %d1, %d14, %d14, 1

# CHECK-INST: msub %d1, %d14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0x1e]
msub %d1, %d14, %d14, 128

# CHECK-INST: msub %d1, %d14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0x1e]
msub %d1, %d14, %d14, 255

# CHECK-INST: msub %d1, %d14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0x1e]
msub %d1, %d14, %d15, -256

# CHECK-INST: msub %d1, %d14, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0x1e]
msub %d1, %d14, %d15, -129

# CHECK-INST: msub %d1, %d14, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0x1e]
msub %d1, %d14, %d15, -1

# CHECK-INST: msub %d1, %d14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0x1e]
msub %d1, %d14, %d15, 0

# CHECK-INST: msub %d1, %d14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0x1e]
msub %d1, %d14, %d15, 1

# CHECK-INST: msub %d1, %d14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0x1e]
msub %d1, %d14, %d15, 128

# CHECK-INST: msub %d1, %d14, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0x1e]
msub %d1, %d14, %d15, 255

# CHECK-INST: msub %d1, %d15, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0x1f]
msub %d1, %d15, %d0, -256

# CHECK-INST: msub %d1, %d15, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0x1f]
msub %d1, %d15, %d0, -129

# CHECK-INST: msub %d1, %d15, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0x1f]
msub %d1, %d15, %d0, -1

# CHECK-INST: msub %d1, %d15, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0x1f]
msub %d1, %d15, %d0, 0

# CHECK-INST: msub %d1, %d15, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0x1f]
msub %d1, %d15, %d0, 1

# CHECK-INST: msub %d1, %d15, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0x1f]
msub %d1, %d15, %d0, 128

# CHECK-INST: msub %d1, %d15, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0x1f]
msub %d1, %d15, %d0, 255

# CHECK-INST: msub %d1, %d15, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0x1f]
msub %d1, %d15, %d1, -256

# CHECK-INST: msub %d1, %d15, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0x1f]
msub %d1, %d15, %d1, -129

# CHECK-INST: msub %d1, %d15, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0x1f]
msub %d1, %d15, %d1, -1

# CHECK-INST: msub %d1, %d15, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0x1f]
msub %d1, %d15, %d1, 0

# CHECK-INST: msub %d1, %d15, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0x1f]
msub %d1, %d15, %d1, 1

# CHECK-INST: msub %d1, %d15, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0x1f]
msub %d1, %d15, %d1, 128

# CHECK-INST: msub %d1, %d15, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0x1f]
msub %d1, %d15, %d1, 255

# CHECK-INST: msub %d1, %d15, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0x1f]
msub %d1, %d15, %d14, -256

# CHECK-INST: msub %d1, %d15, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0x1f]
msub %d1, %d15, %d14, -129

# CHECK-INST: msub %d1, %d15, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0x1f]
msub %d1, %d15, %d14, -1

# CHECK-INST: msub %d1, %d15, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0x1f]
msub %d1, %d15, %d14, 0

# CHECK-INST: msub %d1, %d15, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0x1f]
msub %d1, %d15, %d14, 1

# CHECK-INST: msub %d1, %d15, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0x1f]
msub %d1, %d15, %d14, 128

# CHECK-INST: msub %d1, %d15, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0x1f]
msub %d1, %d15, %d14, 255

# CHECK-INST: msub %d1, %d15, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0x1f]
msub %d1, %d15, %d15, -256

# CHECK-INST: msub %d1, %d15, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0x1f]
msub %d1, %d15, %d15, -129

# CHECK-INST: msub %d1, %d15, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0x1f]
msub %d1, %d15, %d15, -1

# CHECK-INST: msub %d1, %d15, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0x1f]
msub %d1, %d15, %d15, 0

# CHECK-INST: msub %d1, %d15, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0x1f]
msub %d1, %d15, %d15, 1

# CHECK-INST: msub %d1, %d15, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0x1f]
msub %d1, %d15, %d15, 128

# CHECK-INST: msub %d1, %d15, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0x1f]
msub %d1, %d15, %d15, 255

# CHECK-INST: msub %d14, %d0, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0xe0]
msub %d14, %d0, %d0, -256

# CHECK-INST: msub %d14, %d0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0xe0]
msub %d14, %d0, %d0, -129

# CHECK-INST: msub %d14, %d0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0xe0]
msub %d14, %d0, %d0, -1

# CHECK-INST: msub %d14, %d0, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0xe0]
msub %d14, %d0, %d0, 0

# CHECK-INST: msub %d14, %d0, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0xe0]
msub %d14, %d0, %d0, 1

# CHECK-INST: msub %d14, %d0, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0xe0]
msub %d14, %d0, %d0, 128

# CHECK-INST: msub %d14, %d0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0xe0]
msub %d14, %d0, %d0, 255

# CHECK-INST: msub %d14, %d0, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0xe0]
msub %d14, %d0, %d1, -256

# CHECK-INST: msub %d14, %d0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0xe0]
msub %d14, %d0, %d1, -129

# CHECK-INST: msub %d14, %d0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0xe0]
msub %d14, %d0, %d1, -1

# CHECK-INST: msub %d14, %d0, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0xe0]
msub %d14, %d0, %d1, 0

# CHECK-INST: msub %d14, %d0, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0xe0]
msub %d14, %d0, %d1, 1

# CHECK-INST: msub %d14, %d0, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0xe0]
msub %d14, %d0, %d1, 128

# CHECK-INST: msub %d14, %d0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0xe0]
msub %d14, %d0, %d1, 255

# CHECK-INST: msub %d14, %d0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0xe0]
msub %d14, %d0, %d14, -256

# CHECK-INST: msub %d14, %d0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0xe0]
msub %d14, %d0, %d14, -129

# CHECK-INST: msub %d14, %d0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0xe0]
msub %d14, %d0, %d14, -1

# CHECK-INST: msub %d14, %d0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0xe0]
msub %d14, %d0, %d14, 0

# CHECK-INST: msub %d14, %d0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0xe0]
msub %d14, %d0, %d14, 1

# CHECK-INST: msub %d14, %d0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0xe0]
msub %d14, %d0, %d14, 128

# CHECK-INST: msub %d14, %d0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0xe0]
msub %d14, %d0, %d14, 255

# CHECK-INST: msub %d14, %d0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0xe0]
msub %d14, %d0, %d15, -256

# CHECK-INST: msub %d14, %d0, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0xe0]
msub %d14, %d0, %d15, -129

# CHECK-INST: msub %d14, %d0, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0xe0]
msub %d14, %d0, %d15, -1

# CHECK-INST: msub %d14, %d0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0xe0]
msub %d14, %d0, %d15, 0

# CHECK-INST: msub %d14, %d0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0xe0]
msub %d14, %d0, %d15, 1

# CHECK-INST: msub %d14, %d0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0xe0]
msub %d14, %d0, %d15, 128

# CHECK-INST: msub %d14, %d0, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0xe0]
msub %d14, %d0, %d15, 255

# CHECK-INST: msub %d14, %d1, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0xe1]
msub %d14, %d1, %d0, -256

# CHECK-INST: msub %d14, %d1, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0xe1]
msub %d14, %d1, %d0, -129

# CHECK-INST: msub %d14, %d1, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0xe1]
msub %d14, %d1, %d0, -1

# CHECK-INST: msub %d14, %d1, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0xe1]
msub %d14, %d1, %d0, 0

# CHECK-INST: msub %d14, %d1, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0xe1]
msub %d14, %d1, %d0, 1

# CHECK-INST: msub %d14, %d1, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0xe1]
msub %d14, %d1, %d0, 128

# CHECK-INST: msub %d14, %d1, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0xe1]
msub %d14, %d1, %d0, 255

# CHECK-INST: msub %d14, %d1, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0xe1]
msub %d14, %d1, %d1, -256

# CHECK-INST: msub %d14, %d1, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0xe1]
msub %d14, %d1, %d1, -129

# CHECK-INST: msub %d14, %d1, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0xe1]
msub %d14, %d1, %d1, -1

# CHECK-INST: msub %d14, %d1, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0xe1]
msub %d14, %d1, %d1, 0

# CHECK-INST: msub %d14, %d1, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0xe1]
msub %d14, %d1, %d1, 1

# CHECK-INST: msub %d14, %d1, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0xe1]
msub %d14, %d1, %d1, 128

# CHECK-INST: msub %d14, %d1, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0xe1]
msub %d14, %d1, %d1, 255

# CHECK-INST: msub %d14, %d1, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0xe1]
msub %d14, %d1, %d14, -256

# CHECK-INST: msub %d14, %d1, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0xe1]
msub %d14, %d1, %d14, -129

# CHECK-INST: msub %d14, %d1, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0xe1]
msub %d14, %d1, %d14, -1

# CHECK-INST: msub %d14, %d1, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0xe1]
msub %d14, %d1, %d14, 0

# CHECK-INST: msub %d14, %d1, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0xe1]
msub %d14, %d1, %d14, 1

# CHECK-INST: msub %d14, %d1, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0xe1]
msub %d14, %d1, %d14, 128

# CHECK-INST: msub %d14, %d1, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0xe1]
msub %d14, %d1, %d14, 255

# CHECK-INST: msub %d14, %d1, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0xe1]
msub %d14, %d1, %d15, -256

# CHECK-INST: msub %d14, %d1, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0xe1]
msub %d14, %d1, %d15, -129

# CHECK-INST: msub %d14, %d1, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0xe1]
msub %d14, %d1, %d15, -1

# CHECK-INST: msub %d14, %d1, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0xe1]
msub %d14, %d1, %d15, 0

# CHECK-INST: msub %d14, %d1, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0xe1]
msub %d14, %d1, %d15, 1

# CHECK-INST: msub %d14, %d1, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0xe1]
msub %d14, %d1, %d15, 128

# CHECK-INST: msub %d14, %d1, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0xe1]
msub %d14, %d1, %d15, 255

# CHECK-INST: msub %d14, %d14, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0xee]
msub %d14, %d14, %d0, -256

# CHECK-INST: msub %d14, %d14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0xee]
msub %d14, %d14, %d0, -129

# CHECK-INST: msub %d14, %d14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0xee]
msub %d14, %d14, %d0, -1

# CHECK-INST: msub %d14, %d14, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0xee]
msub %d14, %d14, %d0, 0

# CHECK-INST: msub %d14, %d14, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0xee]
msub %d14, %d14, %d0, 1

# CHECK-INST: msub %d14, %d14, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0xee]
msub %d14, %d14, %d0, 128

# CHECK-INST: msub %d14, %d14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0xee]
msub %d14, %d14, %d0, 255

# CHECK-INST: msub %d14, %d14, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0xee]
msub %d14, %d14, %d1, -256

# CHECK-INST: msub %d14, %d14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0xee]
msub %d14, %d14, %d1, -129

# CHECK-INST: msub %d14, %d14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0xee]
msub %d14, %d14, %d1, -1

# CHECK-INST: msub %d14, %d14, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0xee]
msub %d14, %d14, %d1, 0

# CHECK-INST: msub %d14, %d14, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0xee]
msub %d14, %d14, %d1, 1

# CHECK-INST: msub %d14, %d14, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0xee]
msub %d14, %d14, %d1, 128

# CHECK-INST: msub %d14, %d14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0xee]
msub %d14, %d14, %d1, 255

# CHECK-INST: msub %d14, %d14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0xee]
msub %d14, %d14, %d14, -256

# CHECK-INST: msub %d14, %d14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0xee]
msub %d14, %d14, %d14, -129

# CHECK-INST: msub %d14, %d14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0xee]
msub %d14, %d14, %d14, -1

# CHECK-INST: msub %d14, %d14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0xee]
msub %d14, %d14, %d14, 0

# CHECK-INST: msub %d14, %d14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0xee]
msub %d14, %d14, %d14, 1

# CHECK-INST: msub %d14, %d14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0xee]
msub %d14, %d14, %d14, 128

# CHECK-INST: msub %d14, %d14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0xee]
msub %d14, %d14, %d14, 255

# CHECK-INST: msub %d14, %d14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0xee]
msub %d14, %d14, %d15, -256

# CHECK-INST: msub %d14, %d14, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0xee]
msub %d14, %d14, %d15, -129

# CHECK-INST: msub %d14, %d14, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0xee]
msub %d14, %d14, %d15, -1

# CHECK-INST: msub %d14, %d14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0xee]
msub %d14, %d14, %d15, 0

# CHECK-INST: msub %d14, %d14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0xee]
msub %d14, %d14, %d15, 1

# CHECK-INST: msub %d14, %d14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0xee]
msub %d14, %d14, %d15, 128

# CHECK-INST: msub %d14, %d14, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0xee]
msub %d14, %d14, %d15, 255

# CHECK-INST: msub %d14, %d15, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0xef]
msub %d14, %d15, %d0, -256

# CHECK-INST: msub %d14, %d15, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0xef]
msub %d14, %d15, %d0, -129

# CHECK-INST: msub %d14, %d15, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0xef]
msub %d14, %d15, %d0, -1

# CHECK-INST: msub %d14, %d15, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0xef]
msub %d14, %d15, %d0, 0

# CHECK-INST: msub %d14, %d15, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0xef]
msub %d14, %d15, %d0, 1

# CHECK-INST: msub %d14, %d15, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0xef]
msub %d14, %d15, %d0, 128

# CHECK-INST: msub %d14, %d15, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0xef]
msub %d14, %d15, %d0, 255

# CHECK-INST: msub %d14, %d15, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0xef]
msub %d14, %d15, %d1, -256

# CHECK-INST: msub %d14, %d15, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0xef]
msub %d14, %d15, %d1, -129

# CHECK-INST: msub %d14, %d15, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0xef]
msub %d14, %d15, %d1, -1

# CHECK-INST: msub %d14, %d15, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0xef]
msub %d14, %d15, %d1, 0

# CHECK-INST: msub %d14, %d15, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0xef]
msub %d14, %d15, %d1, 1

# CHECK-INST: msub %d14, %d15, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0xef]
msub %d14, %d15, %d1, 128

# CHECK-INST: msub %d14, %d15, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0xef]
msub %d14, %d15, %d1, 255

# CHECK-INST: msub %d14, %d15, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0xef]
msub %d14, %d15, %d14, -256

# CHECK-INST: msub %d14, %d15, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0xef]
msub %d14, %d15, %d14, -129

# CHECK-INST: msub %d14, %d15, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0xef]
msub %d14, %d15, %d14, -1

# CHECK-INST: msub %d14, %d15, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0xef]
msub %d14, %d15, %d14, 0

# CHECK-INST: msub %d14, %d15, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0xef]
msub %d14, %d15, %d14, 1

# CHECK-INST: msub %d14, %d15, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0xef]
msub %d14, %d15, %d14, 128

# CHECK-INST: msub %d14, %d15, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0xef]
msub %d14, %d15, %d14, 255

# CHECK-INST: msub %d14, %d15, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0xef]
msub %d14, %d15, %d15, -256

# CHECK-INST: msub %d14, %d15, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0xef]
msub %d14, %d15, %d15, -129

# CHECK-INST: msub %d14, %d15, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0xef]
msub %d14, %d15, %d15, -1

# CHECK-INST: msub %d14, %d15, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0xef]
msub %d14, %d15, %d15, 0

# CHECK-INST: msub %d14, %d15, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0xef]
msub %d14, %d15, %d15, 1

# CHECK-INST: msub %d14, %d15, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0xef]
msub %d14, %d15, %d15, 128

# CHECK-INST: msub %d14, %d15, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0xef]
msub %d14, %d15, %d15, 255

# CHECK-INST: msub %d15, %d0, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0xf0]
msub %d15, %d0, %d0, -256

# CHECK-INST: msub %d15, %d0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0xf0]
msub %d15, %d0, %d0, -129

# CHECK-INST: msub %d15, %d0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0xf0]
msub %d15, %d0, %d0, -1

# CHECK-INST: msub %d15, %d0, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0xf0]
msub %d15, %d0, %d0, 0

# CHECK-INST: msub %d15, %d0, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0xf0]
msub %d15, %d0, %d0, 1

# CHECK-INST: msub %d15, %d0, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0xf0]
msub %d15, %d0, %d0, 128

# CHECK-INST: msub %d15, %d0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0xf0]
msub %d15, %d0, %d0, 255

# CHECK-INST: msub %d15, %d0, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0xf0]
msub %d15, %d0, %d1, -256

# CHECK-INST: msub %d15, %d0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0xf0]
msub %d15, %d0, %d1, -129

# CHECK-INST: msub %d15, %d0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0xf0]
msub %d15, %d0, %d1, -1

# CHECK-INST: msub %d15, %d0, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0xf0]
msub %d15, %d0, %d1, 0

# CHECK-INST: msub %d15, %d0, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0xf0]
msub %d15, %d0, %d1, 1

# CHECK-INST: msub %d15, %d0, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0xf0]
msub %d15, %d0, %d1, 128

# CHECK-INST: msub %d15, %d0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0xf0]
msub %d15, %d0, %d1, 255

# CHECK-INST: msub %d15, %d0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0xf0]
msub %d15, %d0, %d14, -256

# CHECK-INST: msub %d15, %d0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0xf0]
msub %d15, %d0, %d14, -129

# CHECK-INST: msub %d15, %d0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0xf0]
msub %d15, %d0, %d14, -1

# CHECK-INST: msub %d15, %d0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0xf0]
msub %d15, %d0, %d14, 0

# CHECK-INST: msub %d15, %d0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0xf0]
msub %d15, %d0, %d14, 1

# CHECK-INST: msub %d15, %d0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0xf0]
msub %d15, %d0, %d14, 128

# CHECK-INST: msub %d15, %d0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0xf0]
msub %d15, %d0, %d14, 255

# CHECK-INST: msub %d15, %d0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0xf0]
msub %d15, %d0, %d15, -256

# CHECK-INST: msub %d15, %d0, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0xf0]
msub %d15, %d0, %d15, -129

# CHECK-INST: msub %d15, %d0, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0xf0]
msub %d15, %d0, %d15, -1

# CHECK-INST: msub %d15, %d0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0xf0]
msub %d15, %d0, %d15, 0

# CHECK-INST: msub %d15, %d0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0xf0]
msub %d15, %d0, %d15, 1

# CHECK-INST: msub %d15, %d0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0xf0]
msub %d15, %d0, %d15, 128

# CHECK-INST: msub %d15, %d0, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0xf0]
msub %d15, %d0, %d15, 255

# CHECK-INST: msub %d15, %d1, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0xf1]
msub %d15, %d1, %d0, -256

# CHECK-INST: msub %d15, %d1, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0xf1]
msub %d15, %d1, %d0, -129

# CHECK-INST: msub %d15, %d1, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0xf1]
msub %d15, %d1, %d0, -1

# CHECK-INST: msub %d15, %d1, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0xf1]
msub %d15, %d1, %d0, 0

# CHECK-INST: msub %d15, %d1, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0xf1]
msub %d15, %d1, %d0, 1

# CHECK-INST: msub %d15, %d1, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0xf1]
msub %d15, %d1, %d0, 128

# CHECK-INST: msub %d15, %d1, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0xf1]
msub %d15, %d1, %d0, 255

# CHECK-INST: msub %d15, %d1, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0xf1]
msub %d15, %d1, %d1, -256

# CHECK-INST: msub %d15, %d1, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0xf1]
msub %d15, %d1, %d1, -129

# CHECK-INST: msub %d15, %d1, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0xf1]
msub %d15, %d1, %d1, -1

# CHECK-INST: msub %d15, %d1, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0xf1]
msub %d15, %d1, %d1, 0

# CHECK-INST: msub %d15, %d1, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0xf1]
msub %d15, %d1, %d1, 1

# CHECK-INST: msub %d15, %d1, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0xf1]
msub %d15, %d1, %d1, 128

# CHECK-INST: msub %d15, %d1, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0xf1]
msub %d15, %d1, %d1, 255

# CHECK-INST: msub %d15, %d1, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0xf1]
msub %d15, %d1, %d14, -256

# CHECK-INST: msub %d15, %d1, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0xf1]
msub %d15, %d1, %d14, -129

# CHECK-INST: msub %d15, %d1, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0xf1]
msub %d15, %d1, %d14, -1

# CHECK-INST: msub %d15, %d1, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0xf1]
msub %d15, %d1, %d14, 0

# CHECK-INST: msub %d15, %d1, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0xf1]
msub %d15, %d1, %d14, 1

# CHECK-INST: msub %d15, %d1, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0xf1]
msub %d15, %d1, %d14, 128

# CHECK-INST: msub %d15, %d1, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0xf1]
msub %d15, %d1, %d14, 255

# CHECK-INST: msub %d15, %d1, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0xf1]
msub %d15, %d1, %d15, -256

# CHECK-INST: msub %d15, %d1, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0xf1]
msub %d15, %d1, %d15, -129

# CHECK-INST: msub %d15, %d1, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0xf1]
msub %d15, %d1, %d15, -1

# CHECK-INST: msub %d15, %d1, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0xf1]
msub %d15, %d1, %d15, 0

# CHECK-INST: msub %d15, %d1, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0xf1]
msub %d15, %d1, %d15, 1

# CHECK-INST: msub %d15, %d1, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0xf1]
msub %d15, %d1, %d15, 128

# CHECK-INST: msub %d15, %d1, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0xf1]
msub %d15, %d1, %d15, 255

# CHECK-INST: msub %d15, %d14, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0xfe]
msub %d15, %d14, %d0, -256

# CHECK-INST: msub %d15, %d14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0xfe]
msub %d15, %d14, %d0, -129

# CHECK-INST: msub %d15, %d14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0xfe]
msub %d15, %d14, %d0, -1

# CHECK-INST: msub %d15, %d14, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0xfe]
msub %d15, %d14, %d0, 0

# CHECK-INST: msub %d15, %d14, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0xfe]
msub %d15, %d14, %d0, 1

# CHECK-INST: msub %d15, %d14, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0xfe]
msub %d15, %d14, %d0, 128

# CHECK-INST: msub %d15, %d14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0xfe]
msub %d15, %d14, %d0, 255

# CHECK-INST: msub %d15, %d14, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0xfe]
msub %d15, %d14, %d1, -256

# CHECK-INST: msub %d15, %d14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0xfe]
msub %d15, %d14, %d1, -129

# CHECK-INST: msub %d15, %d14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0xfe]
msub %d15, %d14, %d1, -1

# CHECK-INST: msub %d15, %d14, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0xfe]
msub %d15, %d14, %d1, 0

# CHECK-INST: msub %d15, %d14, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0xfe]
msub %d15, %d14, %d1, 1

# CHECK-INST: msub %d15, %d14, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0xfe]
msub %d15, %d14, %d1, 128

# CHECK-INST: msub %d15, %d14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0xfe]
msub %d15, %d14, %d1, 255

# CHECK-INST: msub %d15, %d14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0xfe]
msub %d15, %d14, %d14, -256

# CHECK-INST: msub %d15, %d14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0xfe]
msub %d15, %d14, %d14, -129

# CHECK-INST: msub %d15, %d14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0xfe]
msub %d15, %d14, %d14, -1

# CHECK-INST: msub %d15, %d14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0xfe]
msub %d15, %d14, %d14, 0

# CHECK-INST: msub %d15, %d14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0xfe]
msub %d15, %d14, %d14, 1

# CHECK-INST: msub %d15, %d14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0xfe]
msub %d15, %d14, %d14, 128

# CHECK-INST: msub %d15, %d14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0xfe]
msub %d15, %d14, %d14, 255

# CHECK-INST: msub %d15, %d14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0xfe]
msub %d15, %d14, %d15, -256

# CHECK-INST: msub %d15, %d14, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0xfe]
msub %d15, %d14, %d15, -129

# CHECK-INST: msub %d15, %d14, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0xfe]
msub %d15, %d14, %d15, -1

# CHECK-INST: msub %d15, %d14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0xfe]
msub %d15, %d14, %d15, 0

# CHECK-INST: msub %d15, %d14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0xfe]
msub %d15, %d14, %d15, 1

# CHECK-INST: msub %d15, %d14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0xfe]
msub %d15, %d14, %d15, 128

# CHECK-INST: msub %d15, %d14, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0xfe]
msub %d15, %d14, %d15, 255

# CHECK-INST: msub %d15, %d15, %d0, -256
# CHECK: encoding: [0x33,0x00,0x30,0xff]
msub %d15, %d15, %d0, -256

# CHECK-INST: msub %d15, %d15, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x37,0xff]
msub %d15, %d15, %d0, -129

# CHECK-INST: msub %d15, %d15, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x3f,0xff]
msub %d15, %d15, %d0, -1

# CHECK-INST: msub %d15, %d15, %d0, 0
# CHECK: encoding: [0x33,0x00,0x20,0xff]
msub %d15, %d15, %d0, 0

# CHECK-INST: msub %d15, %d15, %d0, 1
# CHECK: encoding: [0x33,0x10,0x20,0xff]
msub %d15, %d15, %d0, 1

# CHECK-INST: msub %d15, %d15, %d0, 128
# CHECK: encoding: [0x33,0x00,0x28,0xff]
msub %d15, %d15, %d0, 128

# CHECK-INST: msub %d15, %d15, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x2f,0xff]
msub %d15, %d15, %d0, 255

# CHECK-INST: msub %d15, %d15, %d1, -256
# CHECK: encoding: [0x33,0x01,0x30,0xff]
msub %d15, %d15, %d1, -256

# CHECK-INST: msub %d15, %d15, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x37,0xff]
msub %d15, %d15, %d1, -129

# CHECK-INST: msub %d15, %d15, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x3f,0xff]
msub %d15, %d15, %d1, -1

# CHECK-INST: msub %d15, %d15, %d1, 0
# CHECK: encoding: [0x33,0x01,0x20,0xff]
msub %d15, %d15, %d1, 0

# CHECK-INST: msub %d15, %d15, %d1, 1
# CHECK: encoding: [0x33,0x11,0x20,0xff]
msub %d15, %d15, %d1, 1

# CHECK-INST: msub %d15, %d15, %d1, 128
# CHECK: encoding: [0x33,0x01,0x28,0xff]
msub %d15, %d15, %d1, 128

# CHECK-INST: msub %d15, %d15, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x2f,0xff]
msub %d15, %d15, %d1, 255

# CHECK-INST: msub %d15, %d15, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x30,0xff]
msub %d15, %d15, %d14, -256

# CHECK-INST: msub %d15, %d15, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x37,0xff]
msub %d15, %d15, %d14, -129

# CHECK-INST: msub %d15, %d15, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x3f,0xff]
msub %d15, %d15, %d14, -1

# CHECK-INST: msub %d15, %d15, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x20,0xff]
msub %d15, %d15, %d14, 0

# CHECK-INST: msub %d15, %d15, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x20,0xff]
msub %d15, %d15, %d14, 1

# CHECK-INST: msub %d15, %d15, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x28,0xff]
msub %d15, %d15, %d14, 128

# CHECK-INST: msub %d15, %d15, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x2f,0xff]
msub %d15, %d15, %d14, 255

# CHECK-INST: msub %d15, %d15, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x30,0xff]
msub %d15, %d15, %d15, -256

# CHECK-INST: msub %d15, %d15, %d15, -129
# CHECK: encoding: [0x33,0xff,0x37,0xff]
msub %d15, %d15, %d15, -129

# CHECK-INST: msub %d15, %d15, %d15, -1
# CHECK: encoding: [0x33,0xff,0x3f,0xff]
msub %d15, %d15, %d15, -1

# CHECK-INST: msub %d15, %d15, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x20,0xff]
msub %d15, %d15, %d15, 0

# CHECK-INST: msub %d15, %d15, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x20,0xff]
msub %d15, %d15, %d15, 1

# CHECK-INST: msub %d15, %d15, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x28,0xff]
msub %d15, %d15, %d15, 128

# CHECK-INST: msub %d15, %d15, %d15, 255
# CHECK: encoding: [0x33,0xff,0x2f,0xff]
msub %d15, %d15, %d15, 255

# CHECK-INST: msub %e0, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x6a,0x00]
msub %e0, %e0, %d0, %d0

# CHECK-INST: msub %e0, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x6a,0x00]
msub %e0, %e0, %d0, %d1

# CHECK-INST: msub %e0, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x6a,0x00]
msub %e0, %e0, %d0, %d14

# CHECK-INST: msub %e0, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x6a,0x00]
msub %e0, %e0, %d0, %d15

# CHECK-INST: msub %e0, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x6a,0x00]
msub %e0, %e0, %d1, %d0

# CHECK-INST: msub %e0, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x6a,0x00]
msub %e0, %e0, %d1, %d1

# CHECK-INST: msub %e0, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x6a,0x00]
msub %e0, %e0, %d1, %d14

# CHECK-INST: msub %e0, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x6a,0x00]
msub %e0, %e0, %d1, %d15

# CHECK-INST: msub %e0, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x6a,0x00]
msub %e0, %e0, %d14, %d0

# CHECK-INST: msub %e0, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x6a,0x00]
msub %e0, %e0, %d14, %d1

# CHECK-INST: msub %e0, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x6a,0x00]
msub %e0, %e0, %d14, %d14

# CHECK-INST: msub %e0, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x6a,0x00]
msub %e0, %e0, %d14, %d15

# CHECK-INST: msub %e0, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x6a,0x00]
msub %e0, %e0, %d15, %d0

# CHECK-INST: msub %e0, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x6a,0x00]
msub %e0, %e0, %d15, %d1

# CHECK-INST: msub %e0, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x6a,0x00]
msub %e0, %e0, %d15, %d14

# CHECK-INST: msub %e0, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x6a,0x00]
msub %e0, %e0, %d15, %d15

# CHECK-INST: msub %e0, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x6a,0x06]
msub %e0, %e6, %d0, %d0

# CHECK-INST: msub %e0, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x6a,0x06]
msub %e0, %e6, %d0, %d1

# CHECK-INST: msub %e0, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x6a,0x06]
msub %e0, %e6, %d0, %d14

# CHECK-INST: msub %e0, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x6a,0x06]
msub %e0, %e6, %d0, %d15

# CHECK-INST: msub %e0, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x6a,0x06]
msub %e0, %e6, %d1, %d0

# CHECK-INST: msub %e0, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x6a,0x06]
msub %e0, %e6, %d1, %d1

# CHECK-INST: msub %e0, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x6a,0x06]
msub %e0, %e6, %d1, %d14

# CHECK-INST: msub %e0, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x6a,0x06]
msub %e0, %e6, %d1, %d15

# CHECK-INST: msub %e0, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x6a,0x06]
msub %e0, %e6, %d14, %d0

# CHECK-INST: msub %e0, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x6a,0x06]
msub %e0, %e6, %d14, %d1

# CHECK-INST: msub %e0, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x6a,0x06]
msub %e0, %e6, %d14, %d14

# CHECK-INST: msub %e0, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x6a,0x06]
msub %e0, %e6, %d14, %d15

# CHECK-INST: msub %e0, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x6a,0x06]
msub %e0, %e6, %d15, %d0

# CHECK-INST: msub %e0, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x6a,0x06]
msub %e0, %e6, %d15, %d1

# CHECK-INST: msub %e0, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x6a,0x06]
msub %e0, %e6, %d15, %d14

# CHECK-INST: msub %e0, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x6a,0x06]
msub %e0, %e6, %d15, %d15

# CHECK-INST: msub %e0, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x6a,0x0e]
msub %e0, %e14, %d0, %d0

# CHECK-INST: msub %e0, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x6a,0x0e]
msub %e0, %e14, %d0, %d1

# CHECK-INST: msub %e0, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x6a,0x0e]
msub %e0, %e14, %d0, %d14

# CHECK-INST: msub %e0, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x6a,0x0e]
msub %e0, %e14, %d0, %d15

# CHECK-INST: msub %e0, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x6a,0x0e]
msub %e0, %e14, %d1, %d0

# CHECK-INST: msub %e0, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x6a,0x0e]
msub %e0, %e14, %d1, %d1

# CHECK-INST: msub %e0, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x6a,0x0e]
msub %e0, %e14, %d1, %d14

# CHECK-INST: msub %e0, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x6a,0x0e]
msub %e0, %e14, %d1, %d15

# CHECK-INST: msub %e0, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x6a,0x0e]
msub %e0, %e14, %d14, %d0

# CHECK-INST: msub %e0, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x6a,0x0e]
msub %e0, %e14, %d14, %d1

# CHECK-INST: msub %e0, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x6a,0x0e]
msub %e0, %e14, %d14, %d14

# CHECK-INST: msub %e0, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x6a,0x0e]
msub %e0, %e14, %d14, %d15

# CHECK-INST: msub %e0, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x6a,0x0e]
msub %e0, %e14, %d15, %d0

# CHECK-INST: msub %e0, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x6a,0x0e]
msub %e0, %e14, %d15, %d1

# CHECK-INST: msub %e0, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x6a,0x0e]
msub %e0, %e14, %d15, %d14

# CHECK-INST: msub %e0, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x6a,0x0e]
msub %e0, %e14, %d15, %d15

# CHECK-INST: msub %e6, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x6a,0x60]
msub %e6, %e0, %d0, %d0

# CHECK-INST: msub %e6, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x6a,0x60]
msub %e6, %e0, %d0, %d1

# CHECK-INST: msub %e6, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x6a,0x60]
msub %e6, %e0, %d0, %d14

# CHECK-INST: msub %e6, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x6a,0x60]
msub %e6, %e0, %d0, %d15

# CHECK-INST: msub %e6, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x6a,0x60]
msub %e6, %e0, %d1, %d0

# CHECK-INST: msub %e6, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x6a,0x60]
msub %e6, %e0, %d1, %d1

# CHECK-INST: msub %e6, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x6a,0x60]
msub %e6, %e0, %d1, %d14

# CHECK-INST: msub %e6, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x6a,0x60]
msub %e6, %e0, %d1, %d15

# CHECK-INST: msub %e6, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x6a,0x60]
msub %e6, %e0, %d14, %d0

# CHECK-INST: msub %e6, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x6a,0x60]
msub %e6, %e0, %d14, %d1

# CHECK-INST: msub %e6, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x6a,0x60]
msub %e6, %e0, %d14, %d14

# CHECK-INST: msub %e6, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x6a,0x60]
msub %e6, %e0, %d14, %d15

# CHECK-INST: msub %e6, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x6a,0x60]
msub %e6, %e0, %d15, %d0

# CHECK-INST: msub %e6, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x6a,0x60]
msub %e6, %e0, %d15, %d1

# CHECK-INST: msub %e6, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x6a,0x60]
msub %e6, %e0, %d15, %d14

# CHECK-INST: msub %e6, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x6a,0x60]
msub %e6, %e0, %d15, %d15

# CHECK-INST: msub %e6, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x6a,0x66]
msub %e6, %e6, %d0, %d0

# CHECK-INST: msub %e6, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x6a,0x66]
msub %e6, %e6, %d0, %d1

# CHECK-INST: msub %e6, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x6a,0x66]
msub %e6, %e6, %d0, %d14

# CHECK-INST: msub %e6, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x6a,0x66]
msub %e6, %e6, %d0, %d15

# CHECK-INST: msub %e6, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x6a,0x66]
msub %e6, %e6, %d1, %d0

# CHECK-INST: msub %e6, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x6a,0x66]
msub %e6, %e6, %d1, %d1

# CHECK-INST: msub %e6, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x6a,0x66]
msub %e6, %e6, %d1, %d14

# CHECK-INST: msub %e6, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x6a,0x66]
msub %e6, %e6, %d1, %d15

# CHECK-INST: msub %e6, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x6a,0x66]
msub %e6, %e6, %d14, %d0

# CHECK-INST: msub %e6, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x6a,0x66]
msub %e6, %e6, %d14, %d1

# CHECK-INST: msub %e6, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x6a,0x66]
msub %e6, %e6, %d14, %d14

# CHECK-INST: msub %e6, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x6a,0x66]
msub %e6, %e6, %d14, %d15

# CHECK-INST: msub %e6, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x6a,0x66]
msub %e6, %e6, %d15, %d0

# CHECK-INST: msub %e6, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x6a,0x66]
msub %e6, %e6, %d15, %d1

# CHECK-INST: msub %e6, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x6a,0x66]
msub %e6, %e6, %d15, %d14

# CHECK-INST: msub %e6, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x6a,0x66]
msub %e6, %e6, %d15, %d15

# CHECK-INST: msub %e6, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x6a,0x6e]
msub %e6, %e14, %d0, %d0

# CHECK-INST: msub %e6, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x6a,0x6e]
msub %e6, %e14, %d0, %d1

# CHECK-INST: msub %e6, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x6a,0x6e]
msub %e6, %e14, %d0, %d14

# CHECK-INST: msub %e6, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x6a,0x6e]
msub %e6, %e14, %d0, %d15

# CHECK-INST: msub %e6, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x6a,0x6e]
msub %e6, %e14, %d1, %d0

# CHECK-INST: msub %e6, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x6a,0x6e]
msub %e6, %e14, %d1, %d1

# CHECK-INST: msub %e6, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x6a,0x6e]
msub %e6, %e14, %d1, %d14

# CHECK-INST: msub %e6, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x6a,0x6e]
msub %e6, %e14, %d1, %d15

# CHECK-INST: msub %e6, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x6a,0x6e]
msub %e6, %e14, %d14, %d0

# CHECK-INST: msub %e6, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x6a,0x6e]
msub %e6, %e14, %d14, %d1

# CHECK-INST: msub %e6, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x6a,0x6e]
msub %e6, %e14, %d14, %d14

# CHECK-INST: msub %e6, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x6a,0x6e]
msub %e6, %e14, %d14, %d15

# CHECK-INST: msub %e6, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x6a,0x6e]
msub %e6, %e14, %d15, %d0

# CHECK-INST: msub %e6, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x6a,0x6e]
msub %e6, %e14, %d15, %d1

# CHECK-INST: msub %e6, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x6a,0x6e]
msub %e6, %e14, %d15, %d14

# CHECK-INST: msub %e6, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x6a,0x6e]
msub %e6, %e14, %d15, %d15

# CHECK-INST: msub %e14, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x6a,0xe0]
msub %e14, %e0, %d0, %d0

# CHECK-INST: msub %e14, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x6a,0xe0]
msub %e14, %e0, %d0, %d1

# CHECK-INST: msub %e14, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x6a,0xe0]
msub %e14, %e0, %d0, %d14

# CHECK-INST: msub %e14, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x6a,0xe0]
msub %e14, %e0, %d0, %d15

# CHECK-INST: msub %e14, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x6a,0xe0]
msub %e14, %e0, %d1, %d0

# CHECK-INST: msub %e14, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x6a,0xe0]
msub %e14, %e0, %d1, %d1

# CHECK-INST: msub %e14, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x6a,0xe0]
msub %e14, %e0, %d1, %d14

# CHECK-INST: msub %e14, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x6a,0xe0]
msub %e14, %e0, %d1, %d15

# CHECK-INST: msub %e14, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x6a,0xe0]
msub %e14, %e0, %d14, %d0

# CHECK-INST: msub %e14, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x6a,0xe0]
msub %e14, %e0, %d14, %d1

# CHECK-INST: msub %e14, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x6a,0xe0]
msub %e14, %e0, %d14, %d14

# CHECK-INST: msub %e14, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x6a,0xe0]
msub %e14, %e0, %d14, %d15

# CHECK-INST: msub %e14, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x6a,0xe0]
msub %e14, %e0, %d15, %d0

# CHECK-INST: msub %e14, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x6a,0xe0]
msub %e14, %e0, %d15, %d1

# CHECK-INST: msub %e14, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x6a,0xe0]
msub %e14, %e0, %d15, %d14

# CHECK-INST: msub %e14, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x6a,0xe0]
msub %e14, %e0, %d15, %d15

# CHECK-INST: msub %e14, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x6a,0xe6]
msub %e14, %e6, %d0, %d0

# CHECK-INST: msub %e14, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x6a,0xe6]
msub %e14, %e6, %d0, %d1

# CHECK-INST: msub %e14, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x6a,0xe6]
msub %e14, %e6, %d0, %d14

# CHECK-INST: msub %e14, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x6a,0xe6]
msub %e14, %e6, %d0, %d15

# CHECK-INST: msub %e14, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x6a,0xe6]
msub %e14, %e6, %d1, %d0

# CHECK-INST: msub %e14, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x6a,0xe6]
msub %e14, %e6, %d1, %d1

# CHECK-INST: msub %e14, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x6a,0xe6]
msub %e14, %e6, %d1, %d14

# CHECK-INST: msub %e14, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x6a,0xe6]
msub %e14, %e6, %d1, %d15

# CHECK-INST: msub %e14, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x6a,0xe6]
msub %e14, %e6, %d14, %d0

# CHECK-INST: msub %e14, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x6a,0xe6]
msub %e14, %e6, %d14, %d1

# CHECK-INST: msub %e14, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x6a,0xe6]
msub %e14, %e6, %d14, %d14

# CHECK-INST: msub %e14, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x6a,0xe6]
msub %e14, %e6, %d14, %d15

# CHECK-INST: msub %e14, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x6a,0xe6]
msub %e14, %e6, %d15, %d0

# CHECK-INST: msub %e14, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x6a,0xe6]
msub %e14, %e6, %d15, %d1

# CHECK-INST: msub %e14, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x6a,0xe6]
msub %e14, %e6, %d15, %d14

# CHECK-INST: msub %e14, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x6a,0xe6]
msub %e14, %e6, %d15, %d15

# CHECK-INST: msub %e14, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x6a,0xee]
msub %e14, %e14, %d0, %d0

# CHECK-INST: msub %e14, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x6a,0xee]
msub %e14, %e14, %d0, %d1

# CHECK-INST: msub %e14, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x6a,0xee]
msub %e14, %e14, %d0, %d14

# CHECK-INST: msub %e14, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x6a,0xee]
msub %e14, %e14, %d0, %d15

# CHECK-INST: msub %e14, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x6a,0xee]
msub %e14, %e14, %d1, %d0

# CHECK-INST: msub %e14, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x6a,0xee]
msub %e14, %e14, %d1, %d1

# CHECK-INST: msub %e14, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x6a,0xee]
msub %e14, %e14, %d1, %d14

# CHECK-INST: msub %e14, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x6a,0xee]
msub %e14, %e14, %d1, %d15

# CHECK-INST: msub %e14, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x6a,0xee]
msub %e14, %e14, %d14, %d0

# CHECK-INST: msub %e14, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x6a,0xee]
msub %e14, %e14, %d14, %d1

# CHECK-INST: msub %e14, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x6a,0xee]
msub %e14, %e14, %d14, %d14

# CHECK-INST: msub %e14, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x6a,0xee]
msub %e14, %e14, %d14, %d15

# CHECK-INST: msub %e14, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x6a,0xee]
msub %e14, %e14, %d15, %d0

# CHECK-INST: msub %e14, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x6a,0xee]
msub %e14, %e14, %d15, %d1

# CHECK-INST: msub %e14, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x6a,0xee]
msub %e14, %e14, %d15, %d14

# CHECK-INST: msub %e14, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x6a,0xee]
msub %e14, %e14, %d15, %d15

# CHECK-INST: msub %e0, %e0, %d0, -256
# CHECK: encoding: [0x33,0x00,0x70,0x00]
msub %e0, %e0, %d0, -256

# CHECK-INST: msub %e0, %e0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x77,0x00]
msub %e0, %e0, %d0, -129

# CHECK-INST: msub %e0, %e0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x7f,0x00]
msub %e0, %e0, %d0, -1

# CHECK-INST: msub %e0, %e0, %d0, 0
# CHECK: encoding: [0x33,0x00,0x60,0x00]
msub %e0, %e0, %d0, 0

# CHECK-INST: msub %e0, %e0, %d0, 1
# CHECK: encoding: [0x33,0x10,0x60,0x00]
msub %e0, %e0, %d0, 1

# CHECK-INST: msub %e0, %e0, %d0, 128
# CHECK: encoding: [0x33,0x00,0x68,0x00]
msub %e0, %e0, %d0, 128

# CHECK-INST: msub %e0, %e0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x6f,0x00]
msub %e0, %e0, %d0, 255

# CHECK-INST: msub %e0, %e0, %d1, -256
# CHECK: encoding: [0x33,0x01,0x70,0x00]
msub %e0, %e0, %d1, -256

# CHECK-INST: msub %e0, %e0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x77,0x00]
msub %e0, %e0, %d1, -129

# CHECK-INST: msub %e0, %e0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x7f,0x00]
msub %e0, %e0, %d1, -1

# CHECK-INST: msub %e0, %e0, %d1, 0
# CHECK: encoding: [0x33,0x01,0x60,0x00]
msub %e0, %e0, %d1, 0

# CHECK-INST: msub %e0, %e0, %d1, 1
# CHECK: encoding: [0x33,0x11,0x60,0x00]
msub %e0, %e0, %d1, 1

# CHECK-INST: msub %e0, %e0, %d1, 128
# CHECK: encoding: [0x33,0x01,0x68,0x00]
msub %e0, %e0, %d1, 128

# CHECK-INST: msub %e0, %e0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x6f,0x00]
msub %e0, %e0, %d1, 255

# CHECK-INST: msub %e0, %e0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x70,0x00]
msub %e0, %e0, %d14, -256

# CHECK-INST: msub %e0, %e0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x77,0x00]
msub %e0, %e0, %d14, -129

# CHECK-INST: msub %e0, %e0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x7f,0x00]
msub %e0, %e0, %d14, -1

# CHECK-INST: msub %e0, %e0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x60,0x00]
msub %e0, %e0, %d14, 0

# CHECK-INST: msub %e0, %e0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x60,0x00]
msub %e0, %e0, %d14, 1

# CHECK-INST: msub %e0, %e0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x68,0x00]
msub %e0, %e0, %d14, 128

# CHECK-INST: msub %e0, %e0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x6f,0x00]
msub %e0, %e0, %d14, 255

# CHECK-INST: msub %e0, %e0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x70,0x00]
msub %e0, %e0, %d15, -256

# CHECK-INST: msub %e0, %e0, %d15, -129
# CHECK: encoding: [0x33,0xff,0x77,0x00]
msub %e0, %e0, %d15, -129

# CHECK-INST: msub %e0, %e0, %d15, -1
# CHECK: encoding: [0x33,0xff,0x7f,0x00]
msub %e0, %e0, %d15, -1

# CHECK-INST: msub %e0, %e0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x60,0x00]
msub %e0, %e0, %d15, 0

# CHECK-INST: msub %e0, %e0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x60,0x00]
msub %e0, %e0, %d15, 1

# CHECK-INST: msub %e0, %e0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x68,0x00]
msub %e0, %e0, %d15, 128

# CHECK-INST: msub %e0, %e0, %d15, 255
# CHECK: encoding: [0x33,0xff,0x6f,0x00]
msub %e0, %e0, %d15, 255

# CHECK-INST: msub %e0, %e6, %d0, -256
# CHECK: encoding: [0x33,0x00,0x70,0x06]
msub %e0, %e6, %d0, -256

# CHECK-INST: msub %e0, %e6, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x77,0x06]
msub %e0, %e6, %d0, -129

# CHECK-INST: msub %e0, %e6, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x7f,0x06]
msub %e0, %e6, %d0, -1

# CHECK-INST: msub %e0, %e6, %d0, 0
# CHECK: encoding: [0x33,0x00,0x60,0x06]
msub %e0, %e6, %d0, 0

# CHECK-INST: msub %e0, %e6, %d0, 1
# CHECK: encoding: [0x33,0x10,0x60,0x06]
msub %e0, %e6, %d0, 1

# CHECK-INST: msub %e0, %e6, %d0, 128
# CHECK: encoding: [0x33,0x00,0x68,0x06]
msub %e0, %e6, %d0, 128

# CHECK-INST: msub %e0, %e6, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x6f,0x06]
msub %e0, %e6, %d0, 255

# CHECK-INST: msub %e0, %e6, %d1, -256
# CHECK: encoding: [0x33,0x01,0x70,0x06]
msub %e0, %e6, %d1, -256

# CHECK-INST: msub %e0, %e6, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x77,0x06]
msub %e0, %e6, %d1, -129

# CHECK-INST: msub %e0, %e6, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x7f,0x06]
msub %e0, %e6, %d1, -1

# CHECK-INST: msub %e0, %e6, %d1, 0
# CHECK: encoding: [0x33,0x01,0x60,0x06]
msub %e0, %e6, %d1, 0

# CHECK-INST: msub %e0, %e6, %d1, 1
# CHECK: encoding: [0x33,0x11,0x60,0x06]
msub %e0, %e6, %d1, 1

# CHECK-INST: msub %e0, %e6, %d1, 128
# CHECK: encoding: [0x33,0x01,0x68,0x06]
msub %e0, %e6, %d1, 128

# CHECK-INST: msub %e0, %e6, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x6f,0x06]
msub %e0, %e6, %d1, 255

# CHECK-INST: msub %e0, %e6, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x70,0x06]
msub %e0, %e6, %d14, -256

# CHECK-INST: msub %e0, %e6, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x77,0x06]
msub %e0, %e6, %d14, -129

# CHECK-INST: msub %e0, %e6, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x7f,0x06]
msub %e0, %e6, %d14, -1

# CHECK-INST: msub %e0, %e6, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x60,0x06]
msub %e0, %e6, %d14, 0

# CHECK-INST: msub %e0, %e6, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x60,0x06]
msub %e0, %e6, %d14, 1

# CHECK-INST: msub %e0, %e6, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x68,0x06]
msub %e0, %e6, %d14, 128

# CHECK-INST: msub %e0, %e6, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x6f,0x06]
msub %e0, %e6, %d14, 255

# CHECK-INST: msub %e0, %e6, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x70,0x06]
msub %e0, %e6, %d15, -256

# CHECK-INST: msub %e0, %e6, %d15, -129
# CHECK: encoding: [0x33,0xff,0x77,0x06]
msub %e0, %e6, %d15, -129

# CHECK-INST: msub %e0, %e6, %d15, -1
# CHECK: encoding: [0x33,0xff,0x7f,0x06]
msub %e0, %e6, %d15, -1

# CHECK-INST: msub %e0, %e6, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x60,0x06]
msub %e0, %e6, %d15, 0

# CHECK-INST: msub %e0, %e6, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x60,0x06]
msub %e0, %e6, %d15, 1

# CHECK-INST: msub %e0, %e6, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x68,0x06]
msub %e0, %e6, %d15, 128

# CHECK-INST: msub %e0, %e6, %d15, 255
# CHECK: encoding: [0x33,0xff,0x6f,0x06]
msub %e0, %e6, %d15, 255

# CHECK-INST: msub %e0, %e14, %d0, -256
# CHECK: encoding: [0x33,0x00,0x70,0x0e]
msub %e0, %e14, %d0, -256

# CHECK-INST: msub %e0, %e14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x77,0x0e]
msub %e0, %e14, %d0, -129

# CHECK-INST: msub %e0, %e14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x7f,0x0e]
msub %e0, %e14, %d0, -1

# CHECK-INST: msub %e0, %e14, %d0, 0
# CHECK: encoding: [0x33,0x00,0x60,0x0e]
msub %e0, %e14, %d0, 0

# CHECK-INST: msub %e0, %e14, %d0, 1
# CHECK: encoding: [0x33,0x10,0x60,0x0e]
msub %e0, %e14, %d0, 1

# CHECK-INST: msub %e0, %e14, %d0, 128
# CHECK: encoding: [0x33,0x00,0x68,0x0e]
msub %e0, %e14, %d0, 128

# CHECK-INST: msub %e0, %e14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x6f,0x0e]
msub %e0, %e14, %d0, 255

# CHECK-INST: msub %e0, %e14, %d1, -256
# CHECK: encoding: [0x33,0x01,0x70,0x0e]
msub %e0, %e14, %d1, -256

# CHECK-INST: msub %e0, %e14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x77,0x0e]
msub %e0, %e14, %d1, -129

# CHECK-INST: msub %e0, %e14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x7f,0x0e]
msub %e0, %e14, %d1, -1

# CHECK-INST: msub %e0, %e14, %d1, 0
# CHECK: encoding: [0x33,0x01,0x60,0x0e]
msub %e0, %e14, %d1, 0

# CHECK-INST: msub %e0, %e14, %d1, 1
# CHECK: encoding: [0x33,0x11,0x60,0x0e]
msub %e0, %e14, %d1, 1

# CHECK-INST: msub %e0, %e14, %d1, 128
# CHECK: encoding: [0x33,0x01,0x68,0x0e]
msub %e0, %e14, %d1, 128

# CHECK-INST: msub %e0, %e14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x6f,0x0e]
msub %e0, %e14, %d1, 255

# CHECK-INST: msub %e0, %e14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x70,0x0e]
msub %e0, %e14, %d14, -256

# CHECK-INST: msub %e0, %e14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x77,0x0e]
msub %e0, %e14, %d14, -129

# CHECK-INST: msub %e0, %e14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x7f,0x0e]
msub %e0, %e14, %d14, -1

# CHECK-INST: msub %e0, %e14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x60,0x0e]
msub %e0, %e14, %d14, 0

# CHECK-INST: msub %e0, %e14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x60,0x0e]
msub %e0, %e14, %d14, 1

# CHECK-INST: msub %e0, %e14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x68,0x0e]
msub %e0, %e14, %d14, 128

# CHECK-INST: msub %e0, %e14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x6f,0x0e]
msub %e0, %e14, %d14, 255

# CHECK-INST: msub %e0, %e14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x70,0x0e]
msub %e0, %e14, %d15, -256

# CHECK-INST: msub %e0, %e14, %d15, -129
# CHECK: encoding: [0x33,0xff,0x77,0x0e]
msub %e0, %e14, %d15, -129

# CHECK-INST: msub %e0, %e14, %d15, -1
# CHECK: encoding: [0x33,0xff,0x7f,0x0e]
msub %e0, %e14, %d15, -1

# CHECK-INST: msub %e0, %e14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x60,0x0e]
msub %e0, %e14, %d15, 0

# CHECK-INST: msub %e0, %e14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x60,0x0e]
msub %e0, %e14, %d15, 1

# CHECK-INST: msub %e0, %e14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x68,0x0e]
msub %e0, %e14, %d15, 128

# CHECK-INST: msub %e0, %e14, %d15, 255
# CHECK: encoding: [0x33,0xff,0x6f,0x0e]
msub %e0, %e14, %d15, 255

# CHECK-INST: msub %e6, %e0, %d0, -256
# CHECK: encoding: [0x33,0x00,0x70,0x60]
msub %e6, %e0, %d0, -256

# CHECK-INST: msub %e6, %e0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x77,0x60]
msub %e6, %e0, %d0, -129

# CHECK-INST: msub %e6, %e0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x7f,0x60]
msub %e6, %e0, %d0, -1

# CHECK-INST: msub %e6, %e0, %d0, 0
# CHECK: encoding: [0x33,0x00,0x60,0x60]
msub %e6, %e0, %d0, 0

# CHECK-INST: msub %e6, %e0, %d0, 1
# CHECK: encoding: [0x33,0x10,0x60,0x60]
msub %e6, %e0, %d0, 1

# CHECK-INST: msub %e6, %e0, %d0, 128
# CHECK: encoding: [0x33,0x00,0x68,0x60]
msub %e6, %e0, %d0, 128

# CHECK-INST: msub %e6, %e0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x6f,0x60]
msub %e6, %e0, %d0, 255

# CHECK-INST: msub %e6, %e0, %d1, -256
# CHECK: encoding: [0x33,0x01,0x70,0x60]
msub %e6, %e0, %d1, -256

# CHECK-INST: msub %e6, %e0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x77,0x60]
msub %e6, %e0, %d1, -129

# CHECK-INST: msub %e6, %e0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x7f,0x60]
msub %e6, %e0, %d1, -1

# CHECK-INST: msub %e6, %e0, %d1, 0
# CHECK: encoding: [0x33,0x01,0x60,0x60]
msub %e6, %e0, %d1, 0

# CHECK-INST: msub %e6, %e0, %d1, 1
# CHECK: encoding: [0x33,0x11,0x60,0x60]
msub %e6, %e0, %d1, 1

# CHECK-INST: msub %e6, %e0, %d1, 128
# CHECK: encoding: [0x33,0x01,0x68,0x60]
msub %e6, %e0, %d1, 128

# CHECK-INST: msub %e6, %e0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x6f,0x60]
msub %e6, %e0, %d1, 255

# CHECK-INST: msub %e6, %e0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x70,0x60]
msub %e6, %e0, %d14, -256

# CHECK-INST: msub %e6, %e0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x77,0x60]
msub %e6, %e0, %d14, -129

# CHECK-INST: msub %e6, %e0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x7f,0x60]
msub %e6, %e0, %d14, -1

# CHECK-INST: msub %e6, %e0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x60,0x60]
msub %e6, %e0, %d14, 0

# CHECK-INST: msub %e6, %e0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x60,0x60]
msub %e6, %e0, %d14, 1

# CHECK-INST: msub %e6, %e0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x68,0x60]
msub %e6, %e0, %d14, 128

# CHECK-INST: msub %e6, %e0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x6f,0x60]
msub %e6, %e0, %d14, 255

# CHECK-INST: msub %e6, %e0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x70,0x60]
msub %e6, %e0, %d15, -256

# CHECK-INST: msub %e6, %e0, %d15, -129
# CHECK: encoding: [0x33,0xff,0x77,0x60]
msub %e6, %e0, %d15, -129

# CHECK-INST: msub %e6, %e0, %d15, -1
# CHECK: encoding: [0x33,0xff,0x7f,0x60]
msub %e6, %e0, %d15, -1

# CHECK-INST: msub %e6, %e0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x60,0x60]
msub %e6, %e0, %d15, 0

# CHECK-INST: msub %e6, %e0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x60,0x60]
msub %e6, %e0, %d15, 1

# CHECK-INST: msub %e6, %e0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x68,0x60]
msub %e6, %e0, %d15, 128

# CHECK-INST: msub %e6, %e0, %d15, 255
# CHECK: encoding: [0x33,0xff,0x6f,0x60]
msub %e6, %e0, %d15, 255

# CHECK-INST: msub %e6, %e6, %d0, -256
# CHECK: encoding: [0x33,0x00,0x70,0x66]
msub %e6, %e6, %d0, -256

# CHECK-INST: msub %e6, %e6, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x77,0x66]
msub %e6, %e6, %d0, -129

# CHECK-INST: msub %e6, %e6, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x7f,0x66]
msub %e6, %e6, %d0, -1

# CHECK-INST: msub %e6, %e6, %d0, 0
# CHECK: encoding: [0x33,0x00,0x60,0x66]
msub %e6, %e6, %d0, 0

# CHECK-INST: msub %e6, %e6, %d0, 1
# CHECK: encoding: [0x33,0x10,0x60,0x66]
msub %e6, %e6, %d0, 1

# CHECK-INST: msub %e6, %e6, %d0, 128
# CHECK: encoding: [0x33,0x00,0x68,0x66]
msub %e6, %e6, %d0, 128

# CHECK-INST: msub %e6, %e6, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x6f,0x66]
msub %e6, %e6, %d0, 255

# CHECK-INST: msub %e6, %e6, %d1, -256
# CHECK: encoding: [0x33,0x01,0x70,0x66]
msub %e6, %e6, %d1, -256

# CHECK-INST: msub %e6, %e6, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x77,0x66]
msub %e6, %e6, %d1, -129

# CHECK-INST: msub %e6, %e6, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x7f,0x66]
msub %e6, %e6, %d1, -1

# CHECK-INST: msub %e6, %e6, %d1, 0
# CHECK: encoding: [0x33,0x01,0x60,0x66]
msub %e6, %e6, %d1, 0

# CHECK-INST: msub %e6, %e6, %d1, 1
# CHECK: encoding: [0x33,0x11,0x60,0x66]
msub %e6, %e6, %d1, 1

# CHECK-INST: msub %e6, %e6, %d1, 128
# CHECK: encoding: [0x33,0x01,0x68,0x66]
msub %e6, %e6, %d1, 128

# CHECK-INST: msub %e6, %e6, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x6f,0x66]
msub %e6, %e6, %d1, 255

# CHECK-INST: msub %e6, %e6, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x70,0x66]
msub %e6, %e6, %d14, -256

# CHECK-INST: msub %e6, %e6, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x77,0x66]
msub %e6, %e6, %d14, -129

# CHECK-INST: msub %e6, %e6, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x7f,0x66]
msub %e6, %e6, %d14, -1

# CHECK-INST: msub %e6, %e6, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x60,0x66]
msub %e6, %e6, %d14, 0

# CHECK-INST: msub %e6, %e6, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x60,0x66]
msub %e6, %e6, %d14, 1

# CHECK-INST: msub %e6, %e6, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x68,0x66]
msub %e6, %e6, %d14, 128

# CHECK-INST: msub %e6, %e6, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x6f,0x66]
msub %e6, %e6, %d14, 255

# CHECK-INST: msub %e6, %e6, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x70,0x66]
msub %e6, %e6, %d15, -256

# CHECK-INST: msub %e6, %e6, %d15, -129
# CHECK: encoding: [0x33,0xff,0x77,0x66]
msub %e6, %e6, %d15, -129

# CHECK-INST: msub %e6, %e6, %d15, -1
# CHECK: encoding: [0x33,0xff,0x7f,0x66]
msub %e6, %e6, %d15, -1

# CHECK-INST: msub %e6, %e6, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x60,0x66]
msub %e6, %e6, %d15, 0

# CHECK-INST: msub %e6, %e6, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x60,0x66]
msub %e6, %e6, %d15, 1

# CHECK-INST: msub %e6, %e6, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x68,0x66]
msub %e6, %e6, %d15, 128

# CHECK-INST: msub %e6, %e6, %d15, 255
# CHECK: encoding: [0x33,0xff,0x6f,0x66]
msub %e6, %e6, %d15, 255

# CHECK-INST: msub %e6, %e14, %d0, -256
# CHECK: encoding: [0x33,0x00,0x70,0x6e]
msub %e6, %e14, %d0, -256

# CHECK-INST: msub %e6, %e14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x77,0x6e]
msub %e6, %e14, %d0, -129

# CHECK-INST: msub %e6, %e14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x7f,0x6e]
msub %e6, %e14, %d0, -1

# CHECK-INST: msub %e6, %e14, %d0, 0
# CHECK: encoding: [0x33,0x00,0x60,0x6e]
msub %e6, %e14, %d0, 0

# CHECK-INST: msub %e6, %e14, %d0, 1
# CHECK: encoding: [0x33,0x10,0x60,0x6e]
msub %e6, %e14, %d0, 1

# CHECK-INST: msub %e6, %e14, %d0, 128
# CHECK: encoding: [0x33,0x00,0x68,0x6e]
msub %e6, %e14, %d0, 128

# CHECK-INST: msub %e6, %e14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x6f,0x6e]
msub %e6, %e14, %d0, 255

# CHECK-INST: msub %e6, %e14, %d1, -256
# CHECK: encoding: [0x33,0x01,0x70,0x6e]
msub %e6, %e14, %d1, -256

# CHECK-INST: msub %e6, %e14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x77,0x6e]
msub %e6, %e14, %d1, -129

# CHECK-INST: msub %e6, %e14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x7f,0x6e]
msub %e6, %e14, %d1, -1

# CHECK-INST: msub %e6, %e14, %d1, 0
# CHECK: encoding: [0x33,0x01,0x60,0x6e]
msub %e6, %e14, %d1, 0

# CHECK-INST: msub %e6, %e14, %d1, 1
# CHECK: encoding: [0x33,0x11,0x60,0x6e]
msub %e6, %e14, %d1, 1

# CHECK-INST: msub %e6, %e14, %d1, 128
# CHECK: encoding: [0x33,0x01,0x68,0x6e]
msub %e6, %e14, %d1, 128

# CHECK-INST: msub %e6, %e14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x6f,0x6e]
msub %e6, %e14, %d1, 255

# CHECK-INST: msub %e6, %e14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x70,0x6e]
msub %e6, %e14, %d14, -256

# CHECK-INST: msub %e6, %e14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x77,0x6e]
msub %e6, %e14, %d14, -129

# CHECK-INST: msub %e6, %e14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x7f,0x6e]
msub %e6, %e14, %d14, -1

# CHECK-INST: msub %e6, %e14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x60,0x6e]
msub %e6, %e14, %d14, 0

# CHECK-INST: msub %e6, %e14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x60,0x6e]
msub %e6, %e14, %d14, 1

# CHECK-INST: msub %e6, %e14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x68,0x6e]
msub %e6, %e14, %d14, 128

# CHECK-INST: msub %e6, %e14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x6f,0x6e]
msub %e6, %e14, %d14, 255

# CHECK-INST: msub %e6, %e14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x70,0x6e]
msub %e6, %e14, %d15, -256

# CHECK-INST: msub %e6, %e14, %d15, -129
# CHECK: encoding: [0x33,0xff,0x77,0x6e]
msub %e6, %e14, %d15, -129

# CHECK-INST: msub %e6, %e14, %d15, -1
# CHECK: encoding: [0x33,0xff,0x7f,0x6e]
msub %e6, %e14, %d15, -1

# CHECK-INST: msub %e6, %e14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x60,0x6e]
msub %e6, %e14, %d15, 0

# CHECK-INST: msub %e6, %e14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x60,0x6e]
msub %e6, %e14, %d15, 1

# CHECK-INST: msub %e6, %e14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x68,0x6e]
msub %e6, %e14, %d15, 128

# CHECK-INST: msub %e6, %e14, %d15, 255
# CHECK: encoding: [0x33,0xff,0x6f,0x6e]
msub %e6, %e14, %d15, 255

# CHECK-INST: msub %e14, %e0, %d0, -256
# CHECK: encoding: [0x33,0x00,0x70,0xe0]
msub %e14, %e0, %d0, -256

# CHECK-INST: msub %e14, %e0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x77,0xe0]
msub %e14, %e0, %d0, -129

# CHECK-INST: msub %e14, %e0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x7f,0xe0]
msub %e14, %e0, %d0, -1

# CHECK-INST: msub %e14, %e0, %d0, 0
# CHECK: encoding: [0x33,0x00,0x60,0xe0]
msub %e14, %e0, %d0, 0

# CHECK-INST: msub %e14, %e0, %d0, 1
# CHECK: encoding: [0x33,0x10,0x60,0xe0]
msub %e14, %e0, %d0, 1

# CHECK-INST: msub %e14, %e0, %d0, 128
# CHECK: encoding: [0x33,0x00,0x68,0xe0]
msub %e14, %e0, %d0, 128

# CHECK-INST: msub %e14, %e0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x6f,0xe0]
msub %e14, %e0, %d0, 255

# CHECK-INST: msub %e14, %e0, %d1, -256
# CHECK: encoding: [0x33,0x01,0x70,0xe0]
msub %e14, %e0, %d1, -256

# CHECK-INST: msub %e14, %e0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x77,0xe0]
msub %e14, %e0, %d1, -129

# CHECK-INST: msub %e14, %e0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x7f,0xe0]
msub %e14, %e0, %d1, -1

# CHECK-INST: msub %e14, %e0, %d1, 0
# CHECK: encoding: [0x33,0x01,0x60,0xe0]
msub %e14, %e0, %d1, 0

# CHECK-INST: msub %e14, %e0, %d1, 1
# CHECK: encoding: [0x33,0x11,0x60,0xe0]
msub %e14, %e0, %d1, 1

# CHECK-INST: msub %e14, %e0, %d1, 128
# CHECK: encoding: [0x33,0x01,0x68,0xe0]
msub %e14, %e0, %d1, 128

# CHECK-INST: msub %e14, %e0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x6f,0xe0]
msub %e14, %e0, %d1, 255

# CHECK-INST: msub %e14, %e0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x70,0xe0]
msub %e14, %e0, %d14, -256

# CHECK-INST: msub %e14, %e0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x77,0xe0]
msub %e14, %e0, %d14, -129

# CHECK-INST: msub %e14, %e0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x7f,0xe0]
msub %e14, %e0, %d14, -1

# CHECK-INST: msub %e14, %e0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x60,0xe0]
msub %e14, %e0, %d14, 0

# CHECK-INST: msub %e14, %e0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x60,0xe0]
msub %e14, %e0, %d14, 1

# CHECK-INST: msub %e14, %e0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x68,0xe0]
msub %e14, %e0, %d14, 128

# CHECK-INST: msub %e14, %e0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x6f,0xe0]
msub %e14, %e0, %d14, 255

# CHECK-INST: msub %e14, %e0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x70,0xe0]
msub %e14, %e0, %d15, -256

# CHECK-INST: msub %e14, %e0, %d15, -129
# CHECK: encoding: [0x33,0xff,0x77,0xe0]
msub %e14, %e0, %d15, -129

# CHECK-INST: msub %e14, %e0, %d15, -1
# CHECK: encoding: [0x33,0xff,0x7f,0xe0]
msub %e14, %e0, %d15, -1

# CHECK-INST: msub %e14, %e0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x60,0xe0]
msub %e14, %e0, %d15, 0

# CHECK-INST: msub %e14, %e0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x60,0xe0]
msub %e14, %e0, %d15, 1

# CHECK-INST: msub %e14, %e0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x68,0xe0]
msub %e14, %e0, %d15, 128

# CHECK-INST: msub %e14, %e0, %d15, 255
# CHECK: encoding: [0x33,0xff,0x6f,0xe0]
msub %e14, %e0, %d15, 255

# CHECK-INST: msub %e14, %e6, %d0, -256
# CHECK: encoding: [0x33,0x00,0x70,0xe6]
msub %e14, %e6, %d0, -256

# CHECK-INST: msub %e14, %e6, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x77,0xe6]
msub %e14, %e6, %d0, -129

# CHECK-INST: msub %e14, %e6, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x7f,0xe6]
msub %e14, %e6, %d0, -1

# CHECK-INST: msub %e14, %e6, %d0, 0
# CHECK: encoding: [0x33,0x00,0x60,0xe6]
msub %e14, %e6, %d0, 0

# CHECK-INST: msub %e14, %e6, %d0, 1
# CHECK: encoding: [0x33,0x10,0x60,0xe6]
msub %e14, %e6, %d0, 1

# CHECK-INST: msub %e14, %e6, %d0, 128
# CHECK: encoding: [0x33,0x00,0x68,0xe6]
msub %e14, %e6, %d0, 128

# CHECK-INST: msub %e14, %e6, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x6f,0xe6]
msub %e14, %e6, %d0, 255

# CHECK-INST: msub %e14, %e6, %d1, -256
# CHECK: encoding: [0x33,0x01,0x70,0xe6]
msub %e14, %e6, %d1, -256

# CHECK-INST: msub %e14, %e6, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x77,0xe6]
msub %e14, %e6, %d1, -129

# CHECK-INST: msub %e14, %e6, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x7f,0xe6]
msub %e14, %e6, %d1, -1

# CHECK-INST: msub %e14, %e6, %d1, 0
# CHECK: encoding: [0x33,0x01,0x60,0xe6]
msub %e14, %e6, %d1, 0

# CHECK-INST: msub %e14, %e6, %d1, 1
# CHECK: encoding: [0x33,0x11,0x60,0xe6]
msub %e14, %e6, %d1, 1

# CHECK-INST: msub %e14, %e6, %d1, 128
# CHECK: encoding: [0x33,0x01,0x68,0xe6]
msub %e14, %e6, %d1, 128

# CHECK-INST: msub %e14, %e6, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x6f,0xe6]
msub %e14, %e6, %d1, 255

# CHECK-INST: msub %e14, %e6, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x70,0xe6]
msub %e14, %e6, %d14, -256

# CHECK-INST: msub %e14, %e6, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x77,0xe6]
msub %e14, %e6, %d14, -129

# CHECK-INST: msub %e14, %e6, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x7f,0xe6]
msub %e14, %e6, %d14, -1

# CHECK-INST: msub %e14, %e6, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x60,0xe6]
msub %e14, %e6, %d14, 0

# CHECK-INST: msub %e14, %e6, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x60,0xe6]
msub %e14, %e6, %d14, 1

# CHECK-INST: msub %e14, %e6, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x68,0xe6]
msub %e14, %e6, %d14, 128

# CHECK-INST: msub %e14, %e6, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x6f,0xe6]
msub %e14, %e6, %d14, 255

# CHECK-INST: msub %e14, %e6, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x70,0xe6]
msub %e14, %e6, %d15, -256

# CHECK-INST: msub %e14, %e6, %d15, -129
# CHECK: encoding: [0x33,0xff,0x77,0xe6]
msub %e14, %e6, %d15, -129

# CHECK-INST: msub %e14, %e6, %d15, -1
# CHECK: encoding: [0x33,0xff,0x7f,0xe6]
msub %e14, %e6, %d15, -1

# CHECK-INST: msub %e14, %e6, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x60,0xe6]
msub %e14, %e6, %d15, 0

# CHECK-INST: msub %e14, %e6, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x60,0xe6]
msub %e14, %e6, %d15, 1

# CHECK-INST: msub %e14, %e6, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x68,0xe6]
msub %e14, %e6, %d15, 128

# CHECK-INST: msub %e14, %e6, %d15, 255
# CHECK: encoding: [0x33,0xff,0x6f,0xe6]
msub %e14, %e6, %d15, 255

# CHECK-INST: msub %e14, %e14, %d0, -256
# CHECK: encoding: [0x33,0x00,0x70,0xee]
msub %e14, %e14, %d0, -256

# CHECK-INST: msub %e14, %e14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0x77,0xee]
msub %e14, %e14, %d0, -129

# CHECK-INST: msub %e14, %e14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0x7f,0xee]
msub %e14, %e14, %d0, -1

# CHECK-INST: msub %e14, %e14, %d0, 0
# CHECK: encoding: [0x33,0x00,0x60,0xee]
msub %e14, %e14, %d0, 0

# CHECK-INST: msub %e14, %e14, %d0, 1
# CHECK: encoding: [0x33,0x10,0x60,0xee]
msub %e14, %e14, %d0, 1

# CHECK-INST: msub %e14, %e14, %d0, 128
# CHECK: encoding: [0x33,0x00,0x68,0xee]
msub %e14, %e14, %d0, 128

# CHECK-INST: msub %e14, %e14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0x6f,0xee]
msub %e14, %e14, %d0, 255

# CHECK-INST: msub %e14, %e14, %d1, -256
# CHECK: encoding: [0x33,0x01,0x70,0xee]
msub %e14, %e14, %d1, -256

# CHECK-INST: msub %e14, %e14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0x77,0xee]
msub %e14, %e14, %d1, -129

# CHECK-INST: msub %e14, %e14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0x7f,0xee]
msub %e14, %e14, %d1, -1

# CHECK-INST: msub %e14, %e14, %d1, 0
# CHECK: encoding: [0x33,0x01,0x60,0xee]
msub %e14, %e14, %d1, 0

# CHECK-INST: msub %e14, %e14, %d1, 1
# CHECK: encoding: [0x33,0x11,0x60,0xee]
msub %e14, %e14, %d1, 1

# CHECK-INST: msub %e14, %e14, %d1, 128
# CHECK: encoding: [0x33,0x01,0x68,0xee]
msub %e14, %e14, %d1, 128

# CHECK-INST: msub %e14, %e14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0x6f,0xee]
msub %e14, %e14, %d1, 255

# CHECK-INST: msub %e14, %e14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0x70,0xee]
msub %e14, %e14, %d14, -256

# CHECK-INST: msub %e14, %e14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0x77,0xee]
msub %e14, %e14, %d14, -129

# CHECK-INST: msub %e14, %e14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0x7f,0xee]
msub %e14, %e14, %d14, -1

# CHECK-INST: msub %e14, %e14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0x60,0xee]
msub %e14, %e14, %d14, 0

# CHECK-INST: msub %e14, %e14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0x60,0xee]
msub %e14, %e14, %d14, 1

# CHECK-INST: msub %e14, %e14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0x68,0xee]
msub %e14, %e14, %d14, 128

# CHECK-INST: msub %e14, %e14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0x6f,0xee]
msub %e14, %e14, %d14, 255

# CHECK-INST: msub %e14, %e14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0x70,0xee]
msub %e14, %e14, %d15, -256

# CHECK-INST: msub %e14, %e14, %d15, -129
# CHECK: encoding: [0x33,0xff,0x77,0xee]
msub %e14, %e14, %d15, -129

# CHECK-INST: msub %e14, %e14, %d15, -1
# CHECK: encoding: [0x33,0xff,0x7f,0xee]
msub %e14, %e14, %d15, -1

# CHECK-INST: msub %e14, %e14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0x60,0xee]
msub %e14, %e14, %d15, 0

# CHECK-INST: msub %e14, %e14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0x60,0xee]
msub %e14, %e14, %d15, 1

# CHECK-INST: msub %e14, %e14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0x68,0xee]
msub %e14, %e14, %d15, 128

# CHECK-INST: msub %e14, %e14, %d15, 255
# CHECK: encoding: [0x33,0xff,0x6f,0xee]
msub %e14, %e14, %d15, 255

# CHECK-INST: msub.u %e0, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x68,0x00]
msub.u %e0, %e0, %d0, %d0

# CHECK-INST: msub.u %e0, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x68,0x00]
msub.u %e0, %e0, %d0, %d1

# CHECK-INST: msub.u %e0, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x68,0x00]
msub.u %e0, %e0, %d0, %d14

# CHECK-INST: msub.u %e0, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x68,0x00]
msub.u %e0, %e0, %d0, %d15

# CHECK-INST: msub.u %e0, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x68,0x00]
msub.u %e0, %e0, %d1, %d0

# CHECK-INST: msub.u %e0, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x68,0x00]
msub.u %e0, %e0, %d1, %d1

# CHECK-INST: msub.u %e0, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x68,0x00]
msub.u %e0, %e0, %d1, %d14

# CHECK-INST: msub.u %e0, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x68,0x00]
msub.u %e0, %e0, %d1, %d15

# CHECK-INST: msub.u %e0, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x68,0x00]
msub.u %e0, %e0, %d14, %d0

# CHECK-INST: msub.u %e0, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x68,0x00]
msub.u %e0, %e0, %d14, %d1

# CHECK-INST: msub.u %e0, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x68,0x00]
msub.u %e0, %e0, %d14, %d14

# CHECK-INST: msub.u %e0, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x68,0x00]
msub.u %e0, %e0, %d14, %d15

# CHECK-INST: msub.u %e0, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x68,0x00]
msub.u %e0, %e0, %d15, %d0

# CHECK-INST: msub.u %e0, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x68,0x00]
msub.u %e0, %e0, %d15, %d1

# CHECK-INST: msub.u %e0, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x68,0x00]
msub.u %e0, %e0, %d15, %d14

# CHECK-INST: msub.u %e0, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x68,0x00]
msub.u %e0, %e0, %d15, %d15

# CHECK-INST: msub.u %e0, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x68,0x06]
msub.u %e0, %e6, %d0, %d0

# CHECK-INST: msub.u %e0, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x68,0x06]
msub.u %e0, %e6, %d0, %d1

# CHECK-INST: msub.u %e0, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x68,0x06]
msub.u %e0, %e6, %d0, %d14

# CHECK-INST: msub.u %e0, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x68,0x06]
msub.u %e0, %e6, %d0, %d15

# CHECK-INST: msub.u %e0, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x68,0x06]
msub.u %e0, %e6, %d1, %d0

# CHECK-INST: msub.u %e0, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x68,0x06]
msub.u %e0, %e6, %d1, %d1

# CHECK-INST: msub.u %e0, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x68,0x06]
msub.u %e0, %e6, %d1, %d14

# CHECK-INST: msub.u %e0, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x68,0x06]
msub.u %e0, %e6, %d1, %d15

# CHECK-INST: msub.u %e0, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x68,0x06]
msub.u %e0, %e6, %d14, %d0

# CHECK-INST: msub.u %e0, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x68,0x06]
msub.u %e0, %e6, %d14, %d1

# CHECK-INST: msub.u %e0, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x68,0x06]
msub.u %e0, %e6, %d14, %d14

# CHECK-INST: msub.u %e0, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x68,0x06]
msub.u %e0, %e6, %d14, %d15

# CHECK-INST: msub.u %e0, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x68,0x06]
msub.u %e0, %e6, %d15, %d0

# CHECK-INST: msub.u %e0, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x68,0x06]
msub.u %e0, %e6, %d15, %d1

# CHECK-INST: msub.u %e0, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x68,0x06]
msub.u %e0, %e6, %d15, %d14

# CHECK-INST: msub.u %e0, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x68,0x06]
msub.u %e0, %e6, %d15, %d15

# CHECK-INST: msub.u %e0, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x68,0x0e]
msub.u %e0, %e14, %d0, %d0

# CHECK-INST: msub.u %e0, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x68,0x0e]
msub.u %e0, %e14, %d0, %d1

# CHECK-INST: msub.u %e0, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x68,0x0e]
msub.u %e0, %e14, %d0, %d14

# CHECK-INST: msub.u %e0, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x68,0x0e]
msub.u %e0, %e14, %d0, %d15

# CHECK-INST: msub.u %e0, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x68,0x0e]
msub.u %e0, %e14, %d1, %d0

# CHECK-INST: msub.u %e0, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x68,0x0e]
msub.u %e0, %e14, %d1, %d1

# CHECK-INST: msub.u %e0, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x68,0x0e]
msub.u %e0, %e14, %d1, %d14

# CHECK-INST: msub.u %e0, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x68,0x0e]
msub.u %e0, %e14, %d1, %d15

# CHECK-INST: msub.u %e0, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x68,0x0e]
msub.u %e0, %e14, %d14, %d0

# CHECK-INST: msub.u %e0, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x68,0x0e]
msub.u %e0, %e14, %d14, %d1

# CHECK-INST: msub.u %e0, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x68,0x0e]
msub.u %e0, %e14, %d14, %d14

# CHECK-INST: msub.u %e0, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x68,0x0e]
msub.u %e0, %e14, %d14, %d15

# CHECK-INST: msub.u %e0, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x68,0x0e]
msub.u %e0, %e14, %d15, %d0

# CHECK-INST: msub.u %e0, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x68,0x0e]
msub.u %e0, %e14, %d15, %d1

# CHECK-INST: msub.u %e0, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x68,0x0e]
msub.u %e0, %e14, %d15, %d14

# CHECK-INST: msub.u %e0, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x68,0x0e]
msub.u %e0, %e14, %d15, %d15

# CHECK-INST: msub.u %e6, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x68,0x60]
msub.u %e6, %e0, %d0, %d0

# CHECK-INST: msub.u %e6, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x68,0x60]
msub.u %e6, %e0, %d0, %d1

# CHECK-INST: msub.u %e6, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x68,0x60]
msub.u %e6, %e0, %d0, %d14

# CHECK-INST: msub.u %e6, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x68,0x60]
msub.u %e6, %e0, %d0, %d15

# CHECK-INST: msub.u %e6, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x68,0x60]
msub.u %e6, %e0, %d1, %d0

# CHECK-INST: msub.u %e6, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x68,0x60]
msub.u %e6, %e0, %d1, %d1

# CHECK-INST: msub.u %e6, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x68,0x60]
msub.u %e6, %e0, %d1, %d14

# CHECK-INST: msub.u %e6, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x68,0x60]
msub.u %e6, %e0, %d1, %d15

# CHECK-INST: msub.u %e6, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x68,0x60]
msub.u %e6, %e0, %d14, %d0

# CHECK-INST: msub.u %e6, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x68,0x60]
msub.u %e6, %e0, %d14, %d1

# CHECK-INST: msub.u %e6, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x68,0x60]
msub.u %e6, %e0, %d14, %d14

# CHECK-INST: msub.u %e6, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x68,0x60]
msub.u %e6, %e0, %d14, %d15

# CHECK-INST: msub.u %e6, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x68,0x60]
msub.u %e6, %e0, %d15, %d0

# CHECK-INST: msub.u %e6, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x68,0x60]
msub.u %e6, %e0, %d15, %d1

# CHECK-INST: msub.u %e6, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x68,0x60]
msub.u %e6, %e0, %d15, %d14

# CHECK-INST: msub.u %e6, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x68,0x60]
msub.u %e6, %e0, %d15, %d15

# CHECK-INST: msub.u %e6, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x68,0x66]
msub.u %e6, %e6, %d0, %d0

# CHECK-INST: msub.u %e6, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x68,0x66]
msub.u %e6, %e6, %d0, %d1

# CHECK-INST: msub.u %e6, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x68,0x66]
msub.u %e6, %e6, %d0, %d14

# CHECK-INST: msub.u %e6, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x68,0x66]
msub.u %e6, %e6, %d0, %d15

# CHECK-INST: msub.u %e6, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x68,0x66]
msub.u %e6, %e6, %d1, %d0

# CHECK-INST: msub.u %e6, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x68,0x66]
msub.u %e6, %e6, %d1, %d1

# CHECK-INST: msub.u %e6, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x68,0x66]
msub.u %e6, %e6, %d1, %d14

# CHECK-INST: msub.u %e6, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x68,0x66]
msub.u %e6, %e6, %d1, %d15

# CHECK-INST: msub.u %e6, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x68,0x66]
msub.u %e6, %e6, %d14, %d0

# CHECK-INST: msub.u %e6, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x68,0x66]
msub.u %e6, %e6, %d14, %d1

# CHECK-INST: msub.u %e6, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x68,0x66]
msub.u %e6, %e6, %d14, %d14

# CHECK-INST: msub.u %e6, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x68,0x66]
msub.u %e6, %e6, %d14, %d15

# CHECK-INST: msub.u %e6, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x68,0x66]
msub.u %e6, %e6, %d15, %d0

# CHECK-INST: msub.u %e6, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x68,0x66]
msub.u %e6, %e6, %d15, %d1

# CHECK-INST: msub.u %e6, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x68,0x66]
msub.u %e6, %e6, %d15, %d14

# CHECK-INST: msub.u %e6, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x68,0x66]
msub.u %e6, %e6, %d15, %d15

# CHECK-INST: msub.u %e6, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x68,0x6e]
msub.u %e6, %e14, %d0, %d0

# CHECK-INST: msub.u %e6, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x68,0x6e]
msub.u %e6, %e14, %d0, %d1

# CHECK-INST: msub.u %e6, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x68,0x6e]
msub.u %e6, %e14, %d0, %d14

# CHECK-INST: msub.u %e6, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x68,0x6e]
msub.u %e6, %e14, %d0, %d15

# CHECK-INST: msub.u %e6, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x68,0x6e]
msub.u %e6, %e14, %d1, %d0

# CHECK-INST: msub.u %e6, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x68,0x6e]
msub.u %e6, %e14, %d1, %d1

# CHECK-INST: msub.u %e6, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x68,0x6e]
msub.u %e6, %e14, %d1, %d14

# CHECK-INST: msub.u %e6, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x68,0x6e]
msub.u %e6, %e14, %d1, %d15

# CHECK-INST: msub.u %e6, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x68,0x6e]
msub.u %e6, %e14, %d14, %d0

# CHECK-INST: msub.u %e6, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x68,0x6e]
msub.u %e6, %e14, %d14, %d1

# CHECK-INST: msub.u %e6, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x68,0x6e]
msub.u %e6, %e14, %d14, %d14

# CHECK-INST: msub.u %e6, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x68,0x6e]
msub.u %e6, %e14, %d14, %d15

# CHECK-INST: msub.u %e6, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x68,0x6e]
msub.u %e6, %e14, %d15, %d0

# CHECK-INST: msub.u %e6, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x68,0x6e]
msub.u %e6, %e14, %d15, %d1

# CHECK-INST: msub.u %e6, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x68,0x6e]
msub.u %e6, %e14, %d15, %d14

# CHECK-INST: msub.u %e6, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x68,0x6e]
msub.u %e6, %e14, %d15, %d15

# CHECK-INST: msub.u %e14, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x68,0xe0]
msub.u %e14, %e0, %d0, %d0

# CHECK-INST: msub.u %e14, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x68,0xe0]
msub.u %e14, %e0, %d0, %d1

# CHECK-INST: msub.u %e14, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x68,0xe0]
msub.u %e14, %e0, %d0, %d14

# CHECK-INST: msub.u %e14, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x68,0xe0]
msub.u %e14, %e0, %d0, %d15

# CHECK-INST: msub.u %e14, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x68,0xe0]
msub.u %e14, %e0, %d1, %d0

# CHECK-INST: msub.u %e14, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x68,0xe0]
msub.u %e14, %e0, %d1, %d1

# CHECK-INST: msub.u %e14, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x68,0xe0]
msub.u %e14, %e0, %d1, %d14

# CHECK-INST: msub.u %e14, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x68,0xe0]
msub.u %e14, %e0, %d1, %d15

# CHECK-INST: msub.u %e14, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x68,0xe0]
msub.u %e14, %e0, %d14, %d0

# CHECK-INST: msub.u %e14, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x68,0xe0]
msub.u %e14, %e0, %d14, %d1

# CHECK-INST: msub.u %e14, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x68,0xe0]
msub.u %e14, %e0, %d14, %d14

# CHECK-INST: msub.u %e14, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x68,0xe0]
msub.u %e14, %e0, %d14, %d15

# CHECK-INST: msub.u %e14, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x68,0xe0]
msub.u %e14, %e0, %d15, %d0

# CHECK-INST: msub.u %e14, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x68,0xe0]
msub.u %e14, %e0, %d15, %d1

# CHECK-INST: msub.u %e14, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x68,0xe0]
msub.u %e14, %e0, %d15, %d14

# CHECK-INST: msub.u %e14, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x68,0xe0]
msub.u %e14, %e0, %d15, %d15

# CHECK-INST: msub.u %e14, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x68,0xe6]
msub.u %e14, %e6, %d0, %d0

# CHECK-INST: msub.u %e14, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x68,0xe6]
msub.u %e14, %e6, %d0, %d1

# CHECK-INST: msub.u %e14, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x68,0xe6]
msub.u %e14, %e6, %d0, %d14

# CHECK-INST: msub.u %e14, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x68,0xe6]
msub.u %e14, %e6, %d0, %d15

# CHECK-INST: msub.u %e14, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x68,0xe6]
msub.u %e14, %e6, %d1, %d0

# CHECK-INST: msub.u %e14, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x68,0xe6]
msub.u %e14, %e6, %d1, %d1

# CHECK-INST: msub.u %e14, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x68,0xe6]
msub.u %e14, %e6, %d1, %d14

# CHECK-INST: msub.u %e14, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x68,0xe6]
msub.u %e14, %e6, %d1, %d15

# CHECK-INST: msub.u %e14, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x68,0xe6]
msub.u %e14, %e6, %d14, %d0

# CHECK-INST: msub.u %e14, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x68,0xe6]
msub.u %e14, %e6, %d14, %d1

# CHECK-INST: msub.u %e14, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x68,0xe6]
msub.u %e14, %e6, %d14, %d14

# CHECK-INST: msub.u %e14, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x68,0xe6]
msub.u %e14, %e6, %d14, %d15

# CHECK-INST: msub.u %e14, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x68,0xe6]
msub.u %e14, %e6, %d15, %d0

# CHECK-INST: msub.u %e14, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x68,0xe6]
msub.u %e14, %e6, %d15, %d1

# CHECK-INST: msub.u %e14, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x68,0xe6]
msub.u %e14, %e6, %d15, %d14

# CHECK-INST: msub.u %e14, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x68,0xe6]
msub.u %e14, %e6, %d15, %d15

# CHECK-INST: msub.u %e14, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x68,0xee]
msub.u %e14, %e14, %d0, %d0

# CHECK-INST: msub.u %e14, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x68,0xee]
msub.u %e14, %e14, %d0, %d1

# CHECK-INST: msub.u %e14, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x68,0xee]
msub.u %e14, %e14, %d0, %d14

# CHECK-INST: msub.u %e14, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x68,0xee]
msub.u %e14, %e14, %d0, %d15

# CHECK-INST: msub.u %e14, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x68,0xee]
msub.u %e14, %e14, %d1, %d0

# CHECK-INST: msub.u %e14, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x68,0xee]
msub.u %e14, %e14, %d1, %d1

# CHECK-INST: msub.u %e14, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x68,0xee]
msub.u %e14, %e14, %d1, %d14

# CHECK-INST: msub.u %e14, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x68,0xee]
msub.u %e14, %e14, %d1, %d15

# CHECK-INST: msub.u %e14, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x68,0xee]
msub.u %e14, %e14, %d14, %d0

# CHECK-INST: msub.u %e14, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x68,0xee]
msub.u %e14, %e14, %d14, %d1

# CHECK-INST: msub.u %e14, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x68,0xee]
msub.u %e14, %e14, %d14, %d14

# CHECK-INST: msub.u %e14, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x68,0xee]
msub.u %e14, %e14, %d14, %d15

# CHECK-INST: msub.u %e14, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x68,0xee]
msub.u %e14, %e14, %d15, %d0

# CHECK-INST: msub.u %e14, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x68,0xee]
msub.u %e14, %e14, %d15, %d1

# CHECK-INST: msub.u %e14, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x68,0xee]
msub.u %e14, %e14, %d15, %d14

# CHECK-INST: msub.u %e14, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x68,0xee]
msub.u %e14, %e14, %d15, %d15

# CHECK-INST: msub.u %e0, %e0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x50,0x00]
msub.u %e0, %e0, %d0, 271

# CHECK-INST: msub.u %e0, %e0, %d0, 496
# CHECK: encoding: [0x33,0x00,0x5f,0x00]
msub.u %e0, %e0, %d0, 496

# CHECK-INST: msub.u %e0, %e0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x5f,0x00]
msub.u %e0, %e0, %d0, 511

# CHECK-INST: msub.u %e0, %e0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x50,0x00]
msub.u %e0, %e0, %d1, 271

# CHECK-INST: msub.u %e0, %e0, %d1, 496
# CHECK: encoding: [0x33,0x01,0x5f,0x00]
msub.u %e0, %e0, %d1, 496

# CHECK-INST: msub.u %e0, %e0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x5f,0x00]
msub.u %e0, %e0, %d1, 511

# CHECK-INST: msub.u %e0, %e0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x50,0x00]
msub.u %e0, %e0, %d14, 271

# CHECK-INST: msub.u %e0, %e0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x5f,0x00]
msub.u %e0, %e0, %d14, 496

# CHECK-INST: msub.u %e0, %e0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x5f,0x00]
msub.u %e0, %e0, %d14, 511

# CHECK-INST: msub.u %e0, %e0, %d15, 271
# CHECK: encoding: [0x33,0xff,0x50,0x00]
msub.u %e0, %e0, %d15, 271

# CHECK-INST: msub.u %e0, %e0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x5f,0x00]
msub.u %e0, %e0, %d15, 496

# CHECK-INST: msub.u %e0, %e0, %d15, 511
# CHECK: encoding: [0x33,0xff,0x5f,0x00]
msub.u %e0, %e0, %d15, 511

# CHECK-INST: msub.u %e0, %e6, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x50,0x06]
msub.u %e0, %e6, %d0, 271

# CHECK-INST: msub.u %e0, %e6, %d0, 496
# CHECK: encoding: [0x33,0x00,0x5f,0x06]
msub.u %e0, %e6, %d0, 496

# CHECK-INST: msub.u %e0, %e6, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x5f,0x06]
msub.u %e0, %e6, %d0, 511

# CHECK-INST: msub.u %e0, %e6, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x50,0x06]
msub.u %e0, %e6, %d1, 271

# CHECK-INST: msub.u %e0, %e6, %d1, 496
# CHECK: encoding: [0x33,0x01,0x5f,0x06]
msub.u %e0, %e6, %d1, 496

# CHECK-INST: msub.u %e0, %e6, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x5f,0x06]
msub.u %e0, %e6, %d1, 511

# CHECK-INST: msub.u %e0, %e6, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x50,0x06]
msub.u %e0, %e6, %d14, 271

# CHECK-INST: msub.u %e0, %e6, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x5f,0x06]
msub.u %e0, %e6, %d14, 496

# CHECK-INST: msub.u %e0, %e6, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x5f,0x06]
msub.u %e0, %e6, %d14, 511

# CHECK-INST: msub.u %e0, %e6, %d15, 271
# CHECK: encoding: [0x33,0xff,0x50,0x06]
msub.u %e0, %e6, %d15, 271

# CHECK-INST: msub.u %e0, %e6, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x5f,0x06]
msub.u %e0, %e6, %d15, 496

# CHECK-INST: msub.u %e0, %e6, %d15, 511
# CHECK: encoding: [0x33,0xff,0x5f,0x06]
msub.u %e0, %e6, %d15, 511

# CHECK-INST: msub.u %e0, %e14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x50,0x0e]
msub.u %e0, %e14, %d0, 271

# CHECK-INST: msub.u %e0, %e14, %d0, 496
# CHECK: encoding: [0x33,0x00,0x5f,0x0e]
msub.u %e0, %e14, %d0, 496

# CHECK-INST: msub.u %e0, %e14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x5f,0x0e]
msub.u %e0, %e14, %d0, 511

# CHECK-INST: msub.u %e0, %e14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x50,0x0e]
msub.u %e0, %e14, %d1, 271

# CHECK-INST: msub.u %e0, %e14, %d1, 496
# CHECK: encoding: [0x33,0x01,0x5f,0x0e]
msub.u %e0, %e14, %d1, 496

# CHECK-INST: msub.u %e0, %e14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x5f,0x0e]
msub.u %e0, %e14, %d1, 511

# CHECK-INST: msub.u %e0, %e14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x50,0x0e]
msub.u %e0, %e14, %d14, 271

# CHECK-INST: msub.u %e0, %e14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x5f,0x0e]
msub.u %e0, %e14, %d14, 496

# CHECK-INST: msub.u %e0, %e14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x5f,0x0e]
msub.u %e0, %e14, %d14, 511

# CHECK-INST: msub.u %e0, %e14, %d15, 271
# CHECK: encoding: [0x33,0xff,0x50,0x0e]
msub.u %e0, %e14, %d15, 271

# CHECK-INST: msub.u %e0, %e14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x5f,0x0e]
msub.u %e0, %e14, %d15, 496

# CHECK-INST: msub.u %e0, %e14, %d15, 511
# CHECK: encoding: [0x33,0xff,0x5f,0x0e]
msub.u %e0, %e14, %d15, 511

# CHECK-INST: msub.u %e6, %e0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x50,0x60]
msub.u %e6, %e0, %d0, 271

# CHECK-INST: msub.u %e6, %e0, %d0, 496
# CHECK: encoding: [0x33,0x00,0x5f,0x60]
msub.u %e6, %e0, %d0, 496

# CHECK-INST: msub.u %e6, %e0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x5f,0x60]
msub.u %e6, %e0, %d0, 511

# CHECK-INST: msub.u %e6, %e0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x50,0x60]
msub.u %e6, %e0, %d1, 271

# CHECK-INST: msub.u %e6, %e0, %d1, 496
# CHECK: encoding: [0x33,0x01,0x5f,0x60]
msub.u %e6, %e0, %d1, 496

# CHECK-INST: msub.u %e6, %e0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x5f,0x60]
msub.u %e6, %e0, %d1, 511

# CHECK-INST: msub.u %e6, %e0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x50,0x60]
msub.u %e6, %e0, %d14, 271

# CHECK-INST: msub.u %e6, %e0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x5f,0x60]
msub.u %e6, %e0, %d14, 496

# CHECK-INST: msub.u %e6, %e0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x5f,0x60]
msub.u %e6, %e0, %d14, 511

# CHECK-INST: msub.u %e6, %e0, %d15, 271
# CHECK: encoding: [0x33,0xff,0x50,0x60]
msub.u %e6, %e0, %d15, 271

# CHECK-INST: msub.u %e6, %e0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x5f,0x60]
msub.u %e6, %e0, %d15, 496

# CHECK-INST: msub.u %e6, %e0, %d15, 511
# CHECK: encoding: [0x33,0xff,0x5f,0x60]
msub.u %e6, %e0, %d15, 511

# CHECK-INST: msub.u %e6, %e6, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x50,0x66]
msub.u %e6, %e6, %d0, 271

# CHECK-INST: msub.u %e6, %e6, %d0, 496
# CHECK: encoding: [0x33,0x00,0x5f,0x66]
msub.u %e6, %e6, %d0, 496

# CHECK-INST: msub.u %e6, %e6, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x5f,0x66]
msub.u %e6, %e6, %d0, 511

# CHECK-INST: msub.u %e6, %e6, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x50,0x66]
msub.u %e6, %e6, %d1, 271

# CHECK-INST: msub.u %e6, %e6, %d1, 496
# CHECK: encoding: [0x33,0x01,0x5f,0x66]
msub.u %e6, %e6, %d1, 496

# CHECK-INST: msub.u %e6, %e6, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x5f,0x66]
msub.u %e6, %e6, %d1, 511

# CHECK-INST: msub.u %e6, %e6, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x50,0x66]
msub.u %e6, %e6, %d14, 271

# CHECK-INST: msub.u %e6, %e6, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x5f,0x66]
msub.u %e6, %e6, %d14, 496

# CHECK-INST: msub.u %e6, %e6, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x5f,0x66]
msub.u %e6, %e6, %d14, 511

# CHECK-INST: msub.u %e6, %e6, %d15, 271
# CHECK: encoding: [0x33,0xff,0x50,0x66]
msub.u %e6, %e6, %d15, 271

# CHECK-INST: msub.u %e6, %e6, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x5f,0x66]
msub.u %e6, %e6, %d15, 496

# CHECK-INST: msub.u %e6, %e6, %d15, 511
# CHECK: encoding: [0x33,0xff,0x5f,0x66]
msub.u %e6, %e6, %d15, 511

# CHECK-INST: msub.u %e6, %e14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x50,0x6e]
msub.u %e6, %e14, %d0, 271

# CHECK-INST: msub.u %e6, %e14, %d0, 496
# CHECK: encoding: [0x33,0x00,0x5f,0x6e]
msub.u %e6, %e14, %d0, 496

# CHECK-INST: msub.u %e6, %e14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x5f,0x6e]
msub.u %e6, %e14, %d0, 511

# CHECK-INST: msub.u %e6, %e14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x50,0x6e]
msub.u %e6, %e14, %d1, 271

# CHECK-INST: msub.u %e6, %e14, %d1, 496
# CHECK: encoding: [0x33,0x01,0x5f,0x6e]
msub.u %e6, %e14, %d1, 496

# CHECK-INST: msub.u %e6, %e14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x5f,0x6e]
msub.u %e6, %e14, %d1, 511

# CHECK-INST: msub.u %e6, %e14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x50,0x6e]
msub.u %e6, %e14, %d14, 271

# CHECK-INST: msub.u %e6, %e14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x5f,0x6e]
msub.u %e6, %e14, %d14, 496

# CHECK-INST: msub.u %e6, %e14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x5f,0x6e]
msub.u %e6, %e14, %d14, 511

# CHECK-INST: msub.u %e6, %e14, %d15, 271
# CHECK: encoding: [0x33,0xff,0x50,0x6e]
msub.u %e6, %e14, %d15, 271

# CHECK-INST: msub.u %e6, %e14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x5f,0x6e]
msub.u %e6, %e14, %d15, 496

# CHECK-INST: msub.u %e6, %e14, %d15, 511
# CHECK: encoding: [0x33,0xff,0x5f,0x6e]
msub.u %e6, %e14, %d15, 511

# CHECK-INST: msub.u %e14, %e0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x50,0xe0]
msub.u %e14, %e0, %d0, 271

# CHECK-INST: msub.u %e14, %e0, %d0, 496
# CHECK: encoding: [0x33,0x00,0x5f,0xe0]
msub.u %e14, %e0, %d0, 496

# CHECK-INST: msub.u %e14, %e0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x5f,0xe0]
msub.u %e14, %e0, %d0, 511

# CHECK-INST: msub.u %e14, %e0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x50,0xe0]
msub.u %e14, %e0, %d1, 271

# CHECK-INST: msub.u %e14, %e0, %d1, 496
# CHECK: encoding: [0x33,0x01,0x5f,0xe0]
msub.u %e14, %e0, %d1, 496

# CHECK-INST: msub.u %e14, %e0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x5f,0xe0]
msub.u %e14, %e0, %d1, 511

# CHECK-INST: msub.u %e14, %e0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x50,0xe0]
msub.u %e14, %e0, %d14, 271

# CHECK-INST: msub.u %e14, %e0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x5f,0xe0]
msub.u %e14, %e0, %d14, 496

# CHECK-INST: msub.u %e14, %e0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x5f,0xe0]
msub.u %e14, %e0, %d14, 511

# CHECK-INST: msub.u %e14, %e0, %d15, 271
# CHECK: encoding: [0x33,0xff,0x50,0xe0]
msub.u %e14, %e0, %d15, 271

# CHECK-INST: msub.u %e14, %e0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x5f,0xe0]
msub.u %e14, %e0, %d15, 496

# CHECK-INST: msub.u %e14, %e0, %d15, 511
# CHECK: encoding: [0x33,0xff,0x5f,0xe0]
msub.u %e14, %e0, %d15, 511

# CHECK-INST: msub.u %e14, %e6, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x50,0xe6]
msub.u %e14, %e6, %d0, 271

# CHECK-INST: msub.u %e14, %e6, %d0, 496
# CHECK: encoding: [0x33,0x00,0x5f,0xe6]
msub.u %e14, %e6, %d0, 496

# CHECK-INST: msub.u %e14, %e6, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x5f,0xe6]
msub.u %e14, %e6, %d0, 511

# CHECK-INST: msub.u %e14, %e6, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x50,0xe6]
msub.u %e14, %e6, %d1, 271

# CHECK-INST: msub.u %e14, %e6, %d1, 496
# CHECK: encoding: [0x33,0x01,0x5f,0xe6]
msub.u %e14, %e6, %d1, 496

# CHECK-INST: msub.u %e14, %e6, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x5f,0xe6]
msub.u %e14, %e6, %d1, 511

# CHECK-INST: msub.u %e14, %e6, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x50,0xe6]
msub.u %e14, %e6, %d14, 271

# CHECK-INST: msub.u %e14, %e6, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x5f,0xe6]
msub.u %e14, %e6, %d14, 496

# CHECK-INST: msub.u %e14, %e6, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x5f,0xe6]
msub.u %e14, %e6, %d14, 511

# CHECK-INST: msub.u %e14, %e6, %d15, 271
# CHECK: encoding: [0x33,0xff,0x50,0xe6]
msub.u %e14, %e6, %d15, 271

# CHECK-INST: msub.u %e14, %e6, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x5f,0xe6]
msub.u %e14, %e6, %d15, 496

# CHECK-INST: msub.u %e14, %e6, %d15, 511
# CHECK: encoding: [0x33,0xff,0x5f,0xe6]
msub.u %e14, %e6, %d15, 511

# CHECK-INST: msub.u %e14, %e14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x50,0xee]
msub.u %e14, %e14, %d0, 271

# CHECK-INST: msub.u %e14, %e14, %d0, 496
# CHECK: encoding: [0x33,0x00,0x5f,0xee]
msub.u %e14, %e14, %d0, 496

# CHECK-INST: msub.u %e14, %e14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x5f,0xee]
msub.u %e14, %e14, %d0, 511

# CHECK-INST: msub.u %e14, %e14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x50,0xee]
msub.u %e14, %e14, %d1, 271

# CHECK-INST: msub.u %e14, %e14, %d1, 496
# CHECK: encoding: [0x33,0x01,0x5f,0xee]
msub.u %e14, %e14, %d1, 496

# CHECK-INST: msub.u %e14, %e14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x5f,0xee]
msub.u %e14, %e14, %d1, 511

# CHECK-INST: msub.u %e14, %e14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x50,0xee]
msub.u %e14, %e14, %d14, 271

# CHECK-INST: msub.u %e14, %e14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x5f,0xee]
msub.u %e14, %e14, %d14, 496

# CHECK-INST: msub.u %e14, %e14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x5f,0xee]
msub.u %e14, %e14, %d14, 511

# CHECK-INST: msub.u %e14, %e14, %d15, 271
# CHECK: encoding: [0x33,0xff,0x50,0xee]
msub.u %e14, %e14, %d15, 271

# CHECK-INST: msub.u %e14, %e14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x5f,0xee]
msub.u %e14, %e14, %d15, 496

# CHECK-INST: msub.u %e14, %e14, %d15, 511
# CHECK: encoding: [0x33,0xff,0x5f,0xee]
msub.u %e14, %e14, %d15, 511

# CHECK-INST: msubs %d0, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0x00]
msubs %d0, %d0, %d0, %d0

# CHECK-INST: msubs %d0, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0x00]
msubs %d0, %d0, %d0, %d1

# CHECK-INST: msubs %d0, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0x00]
msubs %d0, %d0, %d0, %d14

# CHECK-INST: msubs %d0, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0x00]
msubs %d0, %d0, %d0, %d15

# CHECK-INST: msubs %d0, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0x00]
msubs %d0, %d0, %d1, %d0

# CHECK-INST: msubs %d0, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0x00]
msubs %d0, %d0, %d1, %d1

# CHECK-INST: msubs %d0, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0x00]
msubs %d0, %d0, %d1, %d14

# CHECK-INST: msubs %d0, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0x00]
msubs %d0, %d0, %d1, %d15

# CHECK-INST: msubs %d0, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0x00]
msubs %d0, %d0, %d14, %d0

# CHECK-INST: msubs %d0, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0x00]
msubs %d0, %d0, %d14, %d1

# CHECK-INST: msubs %d0, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0x00]
msubs %d0, %d0, %d14, %d14

# CHECK-INST: msubs %d0, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0x00]
msubs %d0, %d0, %d14, %d15

# CHECK-INST: msubs %d0, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0x00]
msubs %d0, %d0, %d15, %d0

# CHECK-INST: msubs %d0, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0x00]
msubs %d0, %d0, %d15, %d1

# CHECK-INST: msubs %d0, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0x00]
msubs %d0, %d0, %d15, %d14

# CHECK-INST: msubs %d0, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0x00]
msubs %d0, %d0, %d15, %d15

# CHECK-INST: msubs %d0, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0x01]
msubs %d0, %d1, %d0, %d0

# CHECK-INST: msubs %d0, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0x01]
msubs %d0, %d1, %d0, %d1

# CHECK-INST: msubs %d0, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0x01]
msubs %d0, %d1, %d0, %d14

# CHECK-INST: msubs %d0, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0x01]
msubs %d0, %d1, %d0, %d15

# CHECK-INST: msubs %d0, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0x01]
msubs %d0, %d1, %d1, %d0

# CHECK-INST: msubs %d0, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0x01]
msubs %d0, %d1, %d1, %d1

# CHECK-INST: msubs %d0, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0x01]
msubs %d0, %d1, %d1, %d14

# CHECK-INST: msubs %d0, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0x01]
msubs %d0, %d1, %d1, %d15

# CHECK-INST: msubs %d0, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0x01]
msubs %d0, %d1, %d14, %d0

# CHECK-INST: msubs %d0, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0x01]
msubs %d0, %d1, %d14, %d1

# CHECK-INST: msubs %d0, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0x01]
msubs %d0, %d1, %d14, %d14

# CHECK-INST: msubs %d0, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0x01]
msubs %d0, %d1, %d14, %d15

# CHECK-INST: msubs %d0, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0x01]
msubs %d0, %d1, %d15, %d0

# CHECK-INST: msubs %d0, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0x01]
msubs %d0, %d1, %d15, %d1

# CHECK-INST: msubs %d0, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0x01]
msubs %d0, %d1, %d15, %d14

# CHECK-INST: msubs %d0, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0x01]
msubs %d0, %d1, %d15, %d15

# CHECK-INST: msubs %d0, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0x0e]
msubs %d0, %d14, %d0, %d0

# CHECK-INST: msubs %d0, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0x0e]
msubs %d0, %d14, %d0, %d1

# CHECK-INST: msubs %d0, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0x0e]
msubs %d0, %d14, %d0, %d14

# CHECK-INST: msubs %d0, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0x0e]
msubs %d0, %d14, %d0, %d15

# CHECK-INST: msubs %d0, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0x0e]
msubs %d0, %d14, %d1, %d0

# CHECK-INST: msubs %d0, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0x0e]
msubs %d0, %d14, %d1, %d1

# CHECK-INST: msubs %d0, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0x0e]
msubs %d0, %d14, %d1, %d14

# CHECK-INST: msubs %d0, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0x0e]
msubs %d0, %d14, %d1, %d15

# CHECK-INST: msubs %d0, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0x0e]
msubs %d0, %d14, %d14, %d0

# CHECK-INST: msubs %d0, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0x0e]
msubs %d0, %d14, %d14, %d1

# CHECK-INST: msubs %d0, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0x0e]
msubs %d0, %d14, %d14, %d14

# CHECK-INST: msubs %d0, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0x0e]
msubs %d0, %d14, %d14, %d15

# CHECK-INST: msubs %d0, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0x0e]
msubs %d0, %d14, %d15, %d0

# CHECK-INST: msubs %d0, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0x0e]
msubs %d0, %d14, %d15, %d1

# CHECK-INST: msubs %d0, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0x0e]
msubs %d0, %d14, %d15, %d14

# CHECK-INST: msubs %d0, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0x0e]
msubs %d0, %d14, %d15, %d15

# CHECK-INST: msubs %d0, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0x0f]
msubs %d0, %d15, %d0, %d0

# CHECK-INST: msubs %d0, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0x0f]
msubs %d0, %d15, %d0, %d1

# CHECK-INST: msubs %d0, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0x0f]
msubs %d0, %d15, %d0, %d14

# CHECK-INST: msubs %d0, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0x0f]
msubs %d0, %d15, %d0, %d15

# CHECK-INST: msubs %d0, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0x0f]
msubs %d0, %d15, %d1, %d0

# CHECK-INST: msubs %d0, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0x0f]
msubs %d0, %d15, %d1, %d1

# CHECK-INST: msubs %d0, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0x0f]
msubs %d0, %d15, %d1, %d14

# CHECK-INST: msubs %d0, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0x0f]
msubs %d0, %d15, %d1, %d15

# CHECK-INST: msubs %d0, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0x0f]
msubs %d0, %d15, %d14, %d0

# CHECK-INST: msubs %d0, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0x0f]
msubs %d0, %d15, %d14, %d1

# CHECK-INST: msubs %d0, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0x0f]
msubs %d0, %d15, %d14, %d14

# CHECK-INST: msubs %d0, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0x0f]
msubs %d0, %d15, %d14, %d15

# CHECK-INST: msubs %d0, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0x0f]
msubs %d0, %d15, %d15, %d0

# CHECK-INST: msubs %d0, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0x0f]
msubs %d0, %d15, %d15, %d1

# CHECK-INST: msubs %d0, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0x0f]
msubs %d0, %d15, %d15, %d14

# CHECK-INST: msubs %d0, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0x0f]
msubs %d0, %d15, %d15, %d15

# CHECK-INST: msubs %d1, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0x10]
msubs %d1, %d0, %d0, %d0

# CHECK-INST: msubs %d1, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0x10]
msubs %d1, %d0, %d0, %d1

# CHECK-INST: msubs %d1, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0x10]
msubs %d1, %d0, %d0, %d14

# CHECK-INST: msubs %d1, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0x10]
msubs %d1, %d0, %d0, %d15

# CHECK-INST: msubs %d1, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0x10]
msubs %d1, %d0, %d1, %d0

# CHECK-INST: msubs %d1, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0x10]
msubs %d1, %d0, %d1, %d1

# CHECK-INST: msubs %d1, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0x10]
msubs %d1, %d0, %d1, %d14

# CHECK-INST: msubs %d1, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0x10]
msubs %d1, %d0, %d1, %d15

# CHECK-INST: msubs %d1, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0x10]
msubs %d1, %d0, %d14, %d0

# CHECK-INST: msubs %d1, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0x10]
msubs %d1, %d0, %d14, %d1

# CHECK-INST: msubs %d1, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0x10]
msubs %d1, %d0, %d14, %d14

# CHECK-INST: msubs %d1, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0x10]
msubs %d1, %d0, %d14, %d15

# CHECK-INST: msubs %d1, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0x10]
msubs %d1, %d0, %d15, %d0

# CHECK-INST: msubs %d1, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0x10]
msubs %d1, %d0, %d15, %d1

# CHECK-INST: msubs %d1, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0x10]
msubs %d1, %d0, %d15, %d14

# CHECK-INST: msubs %d1, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0x10]
msubs %d1, %d0, %d15, %d15

# CHECK-INST: msubs %d1, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0x11]
msubs %d1, %d1, %d0, %d0

# CHECK-INST: msubs %d1, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0x11]
msubs %d1, %d1, %d0, %d1

# CHECK-INST: msubs %d1, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0x11]
msubs %d1, %d1, %d0, %d14

# CHECK-INST: msubs %d1, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0x11]
msubs %d1, %d1, %d0, %d15

# CHECK-INST: msubs %d1, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0x11]
msubs %d1, %d1, %d1, %d0

# CHECK-INST: msubs %d1, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0x11]
msubs %d1, %d1, %d1, %d1

# CHECK-INST: msubs %d1, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0x11]
msubs %d1, %d1, %d1, %d14

# CHECK-INST: msubs %d1, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0x11]
msubs %d1, %d1, %d1, %d15

# CHECK-INST: msubs %d1, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0x11]
msubs %d1, %d1, %d14, %d0

# CHECK-INST: msubs %d1, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0x11]
msubs %d1, %d1, %d14, %d1

# CHECK-INST: msubs %d1, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0x11]
msubs %d1, %d1, %d14, %d14

# CHECK-INST: msubs %d1, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0x11]
msubs %d1, %d1, %d14, %d15

# CHECK-INST: msubs %d1, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0x11]
msubs %d1, %d1, %d15, %d0

# CHECK-INST: msubs %d1, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0x11]
msubs %d1, %d1, %d15, %d1

# CHECK-INST: msubs %d1, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0x11]
msubs %d1, %d1, %d15, %d14

# CHECK-INST: msubs %d1, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0x11]
msubs %d1, %d1, %d15, %d15

# CHECK-INST: msubs %d1, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0x1e]
msubs %d1, %d14, %d0, %d0

# CHECK-INST: msubs %d1, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0x1e]
msubs %d1, %d14, %d0, %d1

# CHECK-INST: msubs %d1, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0x1e]
msubs %d1, %d14, %d0, %d14

# CHECK-INST: msubs %d1, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0x1e]
msubs %d1, %d14, %d0, %d15

# CHECK-INST: msubs %d1, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0x1e]
msubs %d1, %d14, %d1, %d0

# CHECK-INST: msubs %d1, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0x1e]
msubs %d1, %d14, %d1, %d1

# CHECK-INST: msubs %d1, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0x1e]
msubs %d1, %d14, %d1, %d14

# CHECK-INST: msubs %d1, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0x1e]
msubs %d1, %d14, %d1, %d15

# CHECK-INST: msubs %d1, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0x1e]
msubs %d1, %d14, %d14, %d0

# CHECK-INST: msubs %d1, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0x1e]
msubs %d1, %d14, %d14, %d1

# CHECK-INST: msubs %d1, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0x1e]
msubs %d1, %d14, %d14, %d14

# CHECK-INST: msubs %d1, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0x1e]
msubs %d1, %d14, %d14, %d15

# CHECK-INST: msubs %d1, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0x1e]
msubs %d1, %d14, %d15, %d0

# CHECK-INST: msubs %d1, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0x1e]
msubs %d1, %d14, %d15, %d1

# CHECK-INST: msubs %d1, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0x1e]
msubs %d1, %d14, %d15, %d14

# CHECK-INST: msubs %d1, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0x1e]
msubs %d1, %d14, %d15, %d15

# CHECK-INST: msubs %d1, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0x1f]
msubs %d1, %d15, %d0, %d0

# CHECK-INST: msubs %d1, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0x1f]
msubs %d1, %d15, %d0, %d1

# CHECK-INST: msubs %d1, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0x1f]
msubs %d1, %d15, %d0, %d14

# CHECK-INST: msubs %d1, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0x1f]
msubs %d1, %d15, %d0, %d15

# CHECK-INST: msubs %d1, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0x1f]
msubs %d1, %d15, %d1, %d0

# CHECK-INST: msubs %d1, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0x1f]
msubs %d1, %d15, %d1, %d1

# CHECK-INST: msubs %d1, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0x1f]
msubs %d1, %d15, %d1, %d14

# CHECK-INST: msubs %d1, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0x1f]
msubs %d1, %d15, %d1, %d15

# CHECK-INST: msubs %d1, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0x1f]
msubs %d1, %d15, %d14, %d0

# CHECK-INST: msubs %d1, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0x1f]
msubs %d1, %d15, %d14, %d1

# CHECK-INST: msubs %d1, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0x1f]
msubs %d1, %d15, %d14, %d14

# CHECK-INST: msubs %d1, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0x1f]
msubs %d1, %d15, %d14, %d15

# CHECK-INST: msubs %d1, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0x1f]
msubs %d1, %d15, %d15, %d0

# CHECK-INST: msubs %d1, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0x1f]
msubs %d1, %d15, %d15, %d1

# CHECK-INST: msubs %d1, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0x1f]
msubs %d1, %d15, %d15, %d14

# CHECK-INST: msubs %d1, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0x1f]
msubs %d1, %d15, %d15, %d15

# CHECK-INST: msubs %d14, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0xe0]
msubs %d14, %d0, %d0, %d0

# CHECK-INST: msubs %d14, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0xe0]
msubs %d14, %d0, %d0, %d1

# CHECK-INST: msubs %d14, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0xe0]
msubs %d14, %d0, %d0, %d14

# CHECK-INST: msubs %d14, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0xe0]
msubs %d14, %d0, %d0, %d15

# CHECK-INST: msubs %d14, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0xe0]
msubs %d14, %d0, %d1, %d0

# CHECK-INST: msubs %d14, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0xe0]
msubs %d14, %d0, %d1, %d1

# CHECK-INST: msubs %d14, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0xe0]
msubs %d14, %d0, %d1, %d14

# CHECK-INST: msubs %d14, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0xe0]
msubs %d14, %d0, %d1, %d15

# CHECK-INST: msubs %d14, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0xe0]
msubs %d14, %d0, %d14, %d0

# CHECK-INST: msubs %d14, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0xe0]
msubs %d14, %d0, %d14, %d1

# CHECK-INST: msubs %d14, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0xe0]
msubs %d14, %d0, %d14, %d14

# CHECK-INST: msubs %d14, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0xe0]
msubs %d14, %d0, %d14, %d15

# CHECK-INST: msubs %d14, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0xe0]
msubs %d14, %d0, %d15, %d0

# CHECK-INST: msubs %d14, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0xe0]
msubs %d14, %d0, %d15, %d1

# CHECK-INST: msubs %d14, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0xe0]
msubs %d14, %d0, %d15, %d14

# CHECK-INST: msubs %d14, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0xe0]
msubs %d14, %d0, %d15, %d15

# CHECK-INST: msubs %d14, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0xe1]
msubs %d14, %d1, %d0, %d0

# CHECK-INST: msubs %d14, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0xe1]
msubs %d14, %d1, %d0, %d1

# CHECK-INST: msubs %d14, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0xe1]
msubs %d14, %d1, %d0, %d14

# CHECK-INST: msubs %d14, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0xe1]
msubs %d14, %d1, %d0, %d15

# CHECK-INST: msubs %d14, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0xe1]
msubs %d14, %d1, %d1, %d0

# CHECK-INST: msubs %d14, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0xe1]
msubs %d14, %d1, %d1, %d1

# CHECK-INST: msubs %d14, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0xe1]
msubs %d14, %d1, %d1, %d14

# CHECK-INST: msubs %d14, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0xe1]
msubs %d14, %d1, %d1, %d15

# CHECK-INST: msubs %d14, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0xe1]
msubs %d14, %d1, %d14, %d0

# CHECK-INST: msubs %d14, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0xe1]
msubs %d14, %d1, %d14, %d1

# CHECK-INST: msubs %d14, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0xe1]
msubs %d14, %d1, %d14, %d14

# CHECK-INST: msubs %d14, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0xe1]
msubs %d14, %d1, %d14, %d15

# CHECK-INST: msubs %d14, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0xe1]
msubs %d14, %d1, %d15, %d0

# CHECK-INST: msubs %d14, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0xe1]
msubs %d14, %d1, %d15, %d1

# CHECK-INST: msubs %d14, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0xe1]
msubs %d14, %d1, %d15, %d14

# CHECK-INST: msubs %d14, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0xe1]
msubs %d14, %d1, %d15, %d15

# CHECK-INST: msubs %d14, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0xee]
msubs %d14, %d14, %d0, %d0

# CHECK-INST: msubs %d14, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0xee]
msubs %d14, %d14, %d0, %d1

# CHECK-INST: msubs %d14, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0xee]
msubs %d14, %d14, %d0, %d14

# CHECK-INST: msubs %d14, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0xee]
msubs %d14, %d14, %d0, %d15

# CHECK-INST: msubs %d14, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0xee]
msubs %d14, %d14, %d1, %d0

# CHECK-INST: msubs %d14, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0xee]
msubs %d14, %d14, %d1, %d1

# CHECK-INST: msubs %d14, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0xee]
msubs %d14, %d14, %d1, %d14

# CHECK-INST: msubs %d14, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0xee]
msubs %d14, %d14, %d1, %d15

# CHECK-INST: msubs %d14, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0xee]
msubs %d14, %d14, %d14, %d0

# CHECK-INST: msubs %d14, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0xee]
msubs %d14, %d14, %d14, %d1

# CHECK-INST: msubs %d14, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0xee]
msubs %d14, %d14, %d14, %d14

# CHECK-INST: msubs %d14, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0xee]
msubs %d14, %d14, %d14, %d15

# CHECK-INST: msubs %d14, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0xee]
msubs %d14, %d14, %d15, %d0

# CHECK-INST: msubs %d14, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0xee]
msubs %d14, %d14, %d15, %d1

# CHECK-INST: msubs %d14, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0xee]
msubs %d14, %d14, %d15, %d14

# CHECK-INST: msubs %d14, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0xee]
msubs %d14, %d14, %d15, %d15

# CHECK-INST: msubs %d14, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0xef]
msubs %d14, %d15, %d0, %d0

# CHECK-INST: msubs %d14, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0xef]
msubs %d14, %d15, %d0, %d1

# CHECK-INST: msubs %d14, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0xef]
msubs %d14, %d15, %d0, %d14

# CHECK-INST: msubs %d14, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0xef]
msubs %d14, %d15, %d0, %d15

# CHECK-INST: msubs %d14, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0xef]
msubs %d14, %d15, %d1, %d0

# CHECK-INST: msubs %d14, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0xef]
msubs %d14, %d15, %d1, %d1

# CHECK-INST: msubs %d14, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0xef]
msubs %d14, %d15, %d1, %d14

# CHECK-INST: msubs %d14, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0xef]
msubs %d14, %d15, %d1, %d15

# CHECK-INST: msubs %d14, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0xef]
msubs %d14, %d15, %d14, %d0

# CHECK-INST: msubs %d14, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0xef]
msubs %d14, %d15, %d14, %d1

# CHECK-INST: msubs %d14, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0xef]
msubs %d14, %d15, %d14, %d14

# CHECK-INST: msubs %d14, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0xef]
msubs %d14, %d15, %d14, %d15

# CHECK-INST: msubs %d14, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0xef]
msubs %d14, %d15, %d15, %d0

# CHECK-INST: msubs %d14, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0xef]
msubs %d14, %d15, %d15, %d1

# CHECK-INST: msubs %d14, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0xef]
msubs %d14, %d15, %d15, %d14

# CHECK-INST: msubs %d14, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0xef]
msubs %d14, %d15, %d15, %d15

# CHECK-INST: msubs %d15, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0xf0]
msubs %d15, %d0, %d0, %d0

# CHECK-INST: msubs %d15, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0xf0]
msubs %d15, %d0, %d0, %d1

# CHECK-INST: msubs %d15, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0xf0]
msubs %d15, %d0, %d0, %d14

# CHECK-INST: msubs %d15, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0xf0]
msubs %d15, %d0, %d0, %d15

# CHECK-INST: msubs %d15, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0xf0]
msubs %d15, %d0, %d1, %d0

# CHECK-INST: msubs %d15, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0xf0]
msubs %d15, %d0, %d1, %d1

# CHECK-INST: msubs %d15, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0xf0]
msubs %d15, %d0, %d1, %d14

# CHECK-INST: msubs %d15, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0xf0]
msubs %d15, %d0, %d1, %d15

# CHECK-INST: msubs %d15, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0xf0]
msubs %d15, %d0, %d14, %d0

# CHECK-INST: msubs %d15, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0xf0]
msubs %d15, %d0, %d14, %d1

# CHECK-INST: msubs %d15, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0xf0]
msubs %d15, %d0, %d14, %d14

# CHECK-INST: msubs %d15, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0xf0]
msubs %d15, %d0, %d14, %d15

# CHECK-INST: msubs %d15, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0xf0]
msubs %d15, %d0, %d15, %d0

# CHECK-INST: msubs %d15, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0xf0]
msubs %d15, %d0, %d15, %d1

# CHECK-INST: msubs %d15, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0xf0]
msubs %d15, %d0, %d15, %d14

# CHECK-INST: msubs %d15, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0xf0]
msubs %d15, %d0, %d15, %d15

# CHECK-INST: msubs %d15, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0xf1]
msubs %d15, %d1, %d0, %d0

# CHECK-INST: msubs %d15, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0xf1]
msubs %d15, %d1, %d0, %d1

# CHECK-INST: msubs %d15, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0xf1]
msubs %d15, %d1, %d0, %d14

# CHECK-INST: msubs %d15, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0xf1]
msubs %d15, %d1, %d0, %d15

# CHECK-INST: msubs %d15, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0xf1]
msubs %d15, %d1, %d1, %d0

# CHECK-INST: msubs %d15, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0xf1]
msubs %d15, %d1, %d1, %d1

# CHECK-INST: msubs %d15, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0xf1]
msubs %d15, %d1, %d1, %d14

# CHECK-INST: msubs %d15, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0xf1]
msubs %d15, %d1, %d1, %d15

# CHECK-INST: msubs %d15, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0xf1]
msubs %d15, %d1, %d14, %d0

# CHECK-INST: msubs %d15, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0xf1]
msubs %d15, %d1, %d14, %d1

# CHECK-INST: msubs %d15, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0xf1]
msubs %d15, %d1, %d14, %d14

# CHECK-INST: msubs %d15, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0xf1]
msubs %d15, %d1, %d14, %d15

# CHECK-INST: msubs %d15, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0xf1]
msubs %d15, %d1, %d15, %d0

# CHECK-INST: msubs %d15, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0xf1]
msubs %d15, %d1, %d15, %d1

# CHECK-INST: msubs %d15, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0xf1]
msubs %d15, %d1, %d15, %d14

# CHECK-INST: msubs %d15, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0xf1]
msubs %d15, %d1, %d15, %d15

# CHECK-INST: msubs %d15, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0xfe]
msubs %d15, %d14, %d0, %d0

# CHECK-INST: msubs %d15, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0xfe]
msubs %d15, %d14, %d0, %d1

# CHECK-INST: msubs %d15, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0xfe]
msubs %d15, %d14, %d0, %d14

# CHECK-INST: msubs %d15, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0xfe]
msubs %d15, %d14, %d0, %d15

# CHECK-INST: msubs %d15, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0xfe]
msubs %d15, %d14, %d1, %d0

# CHECK-INST: msubs %d15, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0xfe]
msubs %d15, %d14, %d1, %d1

# CHECK-INST: msubs %d15, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0xfe]
msubs %d15, %d14, %d1, %d14

# CHECK-INST: msubs %d15, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0xfe]
msubs %d15, %d14, %d1, %d15

# CHECK-INST: msubs %d15, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0xfe]
msubs %d15, %d14, %d14, %d0

# CHECK-INST: msubs %d15, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0xfe]
msubs %d15, %d14, %d14, %d1

# CHECK-INST: msubs %d15, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0xfe]
msubs %d15, %d14, %d14, %d14

# CHECK-INST: msubs %d15, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0xfe]
msubs %d15, %d14, %d14, %d15

# CHECK-INST: msubs %d15, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0xfe]
msubs %d15, %d14, %d15, %d0

# CHECK-INST: msubs %d15, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0xfe]
msubs %d15, %d14, %d15, %d1

# CHECK-INST: msubs %d15, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0xfe]
msubs %d15, %d14, %d15, %d14

# CHECK-INST: msubs %d15, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0xfe]
msubs %d15, %d14, %d15, %d15

# CHECK-INST: msubs %d15, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x8a,0xff]
msubs %d15, %d15, %d0, %d0

# CHECK-INST: msubs %d15, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x8a,0xff]
msubs %d15, %d15, %d0, %d1

# CHECK-INST: msubs %d15, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x8a,0xff]
msubs %d15, %d15, %d0, %d14

# CHECK-INST: msubs %d15, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x8a,0xff]
msubs %d15, %d15, %d0, %d15

# CHECK-INST: msubs %d15, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x8a,0xff]
msubs %d15, %d15, %d1, %d0

# CHECK-INST: msubs %d15, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x8a,0xff]
msubs %d15, %d15, %d1, %d1

# CHECK-INST: msubs %d15, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x8a,0xff]
msubs %d15, %d15, %d1, %d14

# CHECK-INST: msubs %d15, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x8a,0xff]
msubs %d15, %d15, %d1, %d15

# CHECK-INST: msubs %d15, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x8a,0xff]
msubs %d15, %d15, %d14, %d0

# CHECK-INST: msubs %d15, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x8a,0xff]
msubs %d15, %d15, %d14, %d1

# CHECK-INST: msubs %d15, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x8a,0xff]
msubs %d15, %d15, %d14, %d14

# CHECK-INST: msubs %d15, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x8a,0xff]
msubs %d15, %d15, %d14, %d15

# CHECK-INST: msubs %d15, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x8a,0xff]
msubs %d15, %d15, %d15, %d0

# CHECK-INST: msubs %d15, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x8a,0xff]
msubs %d15, %d15, %d15, %d1

# CHECK-INST: msubs %d15, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x8a,0xff]
msubs %d15, %d15, %d15, %d14

# CHECK-INST: msubs %d15, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x8a,0xff]
msubs %d15, %d15, %d15, %d15

# CHECK-INST: msubs %d0, %d0, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0x00]
msubs %d0, %d0, %d0, -256

# CHECK-INST: msubs %d0, %d0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0x00]
msubs %d0, %d0, %d0, -129

# CHECK-INST: msubs %d0, %d0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0x00]
msubs %d0, %d0, %d0, -1

# CHECK-INST: msubs %d0, %d0, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0x00]
msubs %d0, %d0, %d0, 0

# CHECK-INST: msubs %d0, %d0, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0x00]
msubs %d0, %d0, %d0, 1

# CHECK-INST: msubs %d0, %d0, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0x00]
msubs %d0, %d0, %d0, 128

# CHECK-INST: msubs %d0, %d0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0x00]
msubs %d0, %d0, %d0, 255

# CHECK-INST: msubs %d0, %d0, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0x00]
msubs %d0, %d0, %d1, -256

# CHECK-INST: msubs %d0, %d0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0x00]
msubs %d0, %d0, %d1, -129

# CHECK-INST: msubs %d0, %d0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0x00]
msubs %d0, %d0, %d1, -1

# CHECK-INST: msubs %d0, %d0, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0x00]
msubs %d0, %d0, %d1, 0

# CHECK-INST: msubs %d0, %d0, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0x00]
msubs %d0, %d0, %d1, 1

# CHECK-INST: msubs %d0, %d0, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0x00]
msubs %d0, %d0, %d1, 128

# CHECK-INST: msubs %d0, %d0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0x00]
msubs %d0, %d0, %d1, 255

# CHECK-INST: msubs %d0, %d0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0x00]
msubs %d0, %d0, %d14, -256

# CHECK-INST: msubs %d0, %d0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0x00]
msubs %d0, %d0, %d14, -129

# CHECK-INST: msubs %d0, %d0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0x00]
msubs %d0, %d0, %d14, -1

# CHECK-INST: msubs %d0, %d0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0x00]
msubs %d0, %d0, %d14, 0

# CHECK-INST: msubs %d0, %d0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0x00]
msubs %d0, %d0, %d14, 1

# CHECK-INST: msubs %d0, %d0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0x00]
msubs %d0, %d0, %d14, 128

# CHECK-INST: msubs %d0, %d0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0x00]
msubs %d0, %d0, %d14, 255

# CHECK-INST: msubs %d0, %d0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0x00]
msubs %d0, %d0, %d15, -256

# CHECK-INST: msubs %d0, %d0, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0x00]
msubs %d0, %d0, %d15, -129

# CHECK-INST: msubs %d0, %d0, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0x00]
msubs %d0, %d0, %d15, -1

# CHECK-INST: msubs %d0, %d0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0x00]
msubs %d0, %d0, %d15, 0

# CHECK-INST: msubs %d0, %d0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0x00]
msubs %d0, %d0, %d15, 1

# CHECK-INST: msubs %d0, %d0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0x00]
msubs %d0, %d0, %d15, 128

# CHECK-INST: msubs %d0, %d0, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0x00]
msubs %d0, %d0, %d15, 255

# CHECK-INST: msubs %d0, %d1, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0x01]
msubs %d0, %d1, %d0, -256

# CHECK-INST: msubs %d0, %d1, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0x01]
msubs %d0, %d1, %d0, -129

# CHECK-INST: msubs %d0, %d1, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0x01]
msubs %d0, %d1, %d0, -1

# CHECK-INST: msubs %d0, %d1, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0x01]
msubs %d0, %d1, %d0, 0

# CHECK-INST: msubs %d0, %d1, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0x01]
msubs %d0, %d1, %d0, 1

# CHECK-INST: msubs %d0, %d1, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0x01]
msubs %d0, %d1, %d0, 128

# CHECK-INST: msubs %d0, %d1, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0x01]
msubs %d0, %d1, %d0, 255

# CHECK-INST: msubs %d0, %d1, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0x01]
msubs %d0, %d1, %d1, -256

# CHECK-INST: msubs %d0, %d1, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0x01]
msubs %d0, %d1, %d1, -129

# CHECK-INST: msubs %d0, %d1, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0x01]
msubs %d0, %d1, %d1, -1

# CHECK-INST: msubs %d0, %d1, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0x01]
msubs %d0, %d1, %d1, 0

# CHECK-INST: msubs %d0, %d1, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0x01]
msubs %d0, %d1, %d1, 1

# CHECK-INST: msubs %d0, %d1, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0x01]
msubs %d0, %d1, %d1, 128

# CHECK-INST: msubs %d0, %d1, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0x01]
msubs %d0, %d1, %d1, 255

# CHECK-INST: msubs %d0, %d1, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0x01]
msubs %d0, %d1, %d14, -256

# CHECK-INST: msubs %d0, %d1, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0x01]
msubs %d0, %d1, %d14, -129

# CHECK-INST: msubs %d0, %d1, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0x01]
msubs %d0, %d1, %d14, -1

# CHECK-INST: msubs %d0, %d1, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0x01]
msubs %d0, %d1, %d14, 0

# CHECK-INST: msubs %d0, %d1, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0x01]
msubs %d0, %d1, %d14, 1

# CHECK-INST: msubs %d0, %d1, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0x01]
msubs %d0, %d1, %d14, 128

# CHECK-INST: msubs %d0, %d1, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0x01]
msubs %d0, %d1, %d14, 255

# CHECK-INST: msubs %d0, %d1, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0x01]
msubs %d0, %d1, %d15, -256

# CHECK-INST: msubs %d0, %d1, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0x01]
msubs %d0, %d1, %d15, -129

# CHECK-INST: msubs %d0, %d1, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0x01]
msubs %d0, %d1, %d15, -1

# CHECK-INST: msubs %d0, %d1, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0x01]
msubs %d0, %d1, %d15, 0

# CHECK-INST: msubs %d0, %d1, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0x01]
msubs %d0, %d1, %d15, 1

# CHECK-INST: msubs %d0, %d1, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0x01]
msubs %d0, %d1, %d15, 128

# CHECK-INST: msubs %d0, %d1, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0x01]
msubs %d0, %d1, %d15, 255

# CHECK-INST: msubs %d0, %d14, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0x0e]
msubs %d0, %d14, %d0, -256

# CHECK-INST: msubs %d0, %d14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0x0e]
msubs %d0, %d14, %d0, -129

# CHECK-INST: msubs %d0, %d14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0x0e]
msubs %d0, %d14, %d0, -1

# CHECK-INST: msubs %d0, %d14, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0x0e]
msubs %d0, %d14, %d0, 0

# CHECK-INST: msubs %d0, %d14, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0x0e]
msubs %d0, %d14, %d0, 1

# CHECK-INST: msubs %d0, %d14, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0x0e]
msubs %d0, %d14, %d0, 128

# CHECK-INST: msubs %d0, %d14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0x0e]
msubs %d0, %d14, %d0, 255

# CHECK-INST: msubs %d0, %d14, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0x0e]
msubs %d0, %d14, %d1, -256

# CHECK-INST: msubs %d0, %d14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0x0e]
msubs %d0, %d14, %d1, -129

# CHECK-INST: msubs %d0, %d14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0x0e]
msubs %d0, %d14, %d1, -1

# CHECK-INST: msubs %d0, %d14, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0x0e]
msubs %d0, %d14, %d1, 0

# CHECK-INST: msubs %d0, %d14, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0x0e]
msubs %d0, %d14, %d1, 1

# CHECK-INST: msubs %d0, %d14, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0x0e]
msubs %d0, %d14, %d1, 128

# CHECK-INST: msubs %d0, %d14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0x0e]
msubs %d0, %d14, %d1, 255

# CHECK-INST: msubs %d0, %d14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0x0e]
msubs %d0, %d14, %d14, -256

# CHECK-INST: msubs %d0, %d14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0x0e]
msubs %d0, %d14, %d14, -129

# CHECK-INST: msubs %d0, %d14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0x0e]
msubs %d0, %d14, %d14, -1

# CHECK-INST: msubs %d0, %d14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0x0e]
msubs %d0, %d14, %d14, 0

# CHECK-INST: msubs %d0, %d14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0x0e]
msubs %d0, %d14, %d14, 1

# CHECK-INST: msubs %d0, %d14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0x0e]
msubs %d0, %d14, %d14, 128

# CHECK-INST: msubs %d0, %d14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0x0e]
msubs %d0, %d14, %d14, 255

# CHECK-INST: msubs %d0, %d14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0x0e]
msubs %d0, %d14, %d15, -256

# CHECK-INST: msubs %d0, %d14, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0x0e]
msubs %d0, %d14, %d15, -129

# CHECK-INST: msubs %d0, %d14, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0x0e]
msubs %d0, %d14, %d15, -1

# CHECK-INST: msubs %d0, %d14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0x0e]
msubs %d0, %d14, %d15, 0

# CHECK-INST: msubs %d0, %d14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0x0e]
msubs %d0, %d14, %d15, 1

# CHECK-INST: msubs %d0, %d14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0x0e]
msubs %d0, %d14, %d15, 128

# CHECK-INST: msubs %d0, %d14, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0x0e]
msubs %d0, %d14, %d15, 255

# CHECK-INST: msubs %d0, %d15, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0x0f]
msubs %d0, %d15, %d0, -256

# CHECK-INST: msubs %d0, %d15, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0x0f]
msubs %d0, %d15, %d0, -129

# CHECK-INST: msubs %d0, %d15, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0x0f]
msubs %d0, %d15, %d0, -1

# CHECK-INST: msubs %d0, %d15, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0x0f]
msubs %d0, %d15, %d0, 0

# CHECK-INST: msubs %d0, %d15, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0x0f]
msubs %d0, %d15, %d0, 1

# CHECK-INST: msubs %d0, %d15, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0x0f]
msubs %d0, %d15, %d0, 128

# CHECK-INST: msubs %d0, %d15, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0x0f]
msubs %d0, %d15, %d0, 255

# CHECK-INST: msubs %d0, %d15, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0x0f]
msubs %d0, %d15, %d1, -256

# CHECK-INST: msubs %d0, %d15, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0x0f]
msubs %d0, %d15, %d1, -129

# CHECK-INST: msubs %d0, %d15, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0x0f]
msubs %d0, %d15, %d1, -1

# CHECK-INST: msubs %d0, %d15, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0x0f]
msubs %d0, %d15, %d1, 0

# CHECK-INST: msubs %d0, %d15, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0x0f]
msubs %d0, %d15, %d1, 1

# CHECK-INST: msubs %d0, %d15, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0x0f]
msubs %d0, %d15, %d1, 128

# CHECK-INST: msubs %d0, %d15, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0x0f]
msubs %d0, %d15, %d1, 255

# CHECK-INST: msubs %d0, %d15, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0x0f]
msubs %d0, %d15, %d14, -256

# CHECK-INST: msubs %d0, %d15, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0x0f]
msubs %d0, %d15, %d14, -129

# CHECK-INST: msubs %d0, %d15, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0x0f]
msubs %d0, %d15, %d14, -1

# CHECK-INST: msubs %d0, %d15, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0x0f]
msubs %d0, %d15, %d14, 0

# CHECK-INST: msubs %d0, %d15, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0x0f]
msubs %d0, %d15, %d14, 1

# CHECK-INST: msubs %d0, %d15, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0x0f]
msubs %d0, %d15, %d14, 128

# CHECK-INST: msubs %d0, %d15, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0x0f]
msubs %d0, %d15, %d14, 255

# CHECK-INST: msubs %d0, %d15, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0x0f]
msubs %d0, %d15, %d15, -256

# CHECK-INST: msubs %d0, %d15, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0x0f]
msubs %d0, %d15, %d15, -129

# CHECK-INST: msubs %d0, %d15, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0x0f]
msubs %d0, %d15, %d15, -1

# CHECK-INST: msubs %d0, %d15, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0x0f]
msubs %d0, %d15, %d15, 0

# CHECK-INST: msubs %d0, %d15, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0x0f]
msubs %d0, %d15, %d15, 1

# CHECK-INST: msubs %d0, %d15, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0x0f]
msubs %d0, %d15, %d15, 128

# CHECK-INST: msubs %d0, %d15, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0x0f]
msubs %d0, %d15, %d15, 255

# CHECK-INST: msubs %d1, %d0, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0x10]
msubs %d1, %d0, %d0, -256

# CHECK-INST: msubs %d1, %d0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0x10]
msubs %d1, %d0, %d0, -129

# CHECK-INST: msubs %d1, %d0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0x10]
msubs %d1, %d0, %d0, -1

# CHECK-INST: msubs %d1, %d0, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0x10]
msubs %d1, %d0, %d0, 0

# CHECK-INST: msubs %d1, %d0, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0x10]
msubs %d1, %d0, %d0, 1

# CHECK-INST: msubs %d1, %d0, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0x10]
msubs %d1, %d0, %d0, 128

# CHECK-INST: msubs %d1, %d0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0x10]
msubs %d1, %d0, %d0, 255

# CHECK-INST: msubs %d1, %d0, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0x10]
msubs %d1, %d0, %d1, -256

# CHECK-INST: msubs %d1, %d0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0x10]
msubs %d1, %d0, %d1, -129

# CHECK-INST: msubs %d1, %d0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0x10]
msubs %d1, %d0, %d1, -1

# CHECK-INST: msubs %d1, %d0, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0x10]
msubs %d1, %d0, %d1, 0

# CHECK-INST: msubs %d1, %d0, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0x10]
msubs %d1, %d0, %d1, 1

# CHECK-INST: msubs %d1, %d0, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0x10]
msubs %d1, %d0, %d1, 128

# CHECK-INST: msubs %d1, %d0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0x10]
msubs %d1, %d0, %d1, 255

# CHECK-INST: msubs %d1, %d0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0x10]
msubs %d1, %d0, %d14, -256

# CHECK-INST: msubs %d1, %d0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0x10]
msubs %d1, %d0, %d14, -129

# CHECK-INST: msubs %d1, %d0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0x10]
msubs %d1, %d0, %d14, -1

# CHECK-INST: msubs %d1, %d0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0x10]
msubs %d1, %d0, %d14, 0

# CHECK-INST: msubs %d1, %d0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0x10]
msubs %d1, %d0, %d14, 1

# CHECK-INST: msubs %d1, %d0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0x10]
msubs %d1, %d0, %d14, 128

# CHECK-INST: msubs %d1, %d0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0x10]
msubs %d1, %d0, %d14, 255

# CHECK-INST: msubs %d1, %d0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0x10]
msubs %d1, %d0, %d15, -256

# CHECK-INST: msubs %d1, %d0, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0x10]
msubs %d1, %d0, %d15, -129

# CHECK-INST: msubs %d1, %d0, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0x10]
msubs %d1, %d0, %d15, -1

# CHECK-INST: msubs %d1, %d0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0x10]
msubs %d1, %d0, %d15, 0

# CHECK-INST: msubs %d1, %d0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0x10]
msubs %d1, %d0, %d15, 1

# CHECK-INST: msubs %d1, %d0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0x10]
msubs %d1, %d0, %d15, 128

# CHECK-INST: msubs %d1, %d0, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0x10]
msubs %d1, %d0, %d15, 255

# CHECK-INST: msubs %d1, %d1, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0x11]
msubs %d1, %d1, %d0, -256

# CHECK-INST: msubs %d1, %d1, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0x11]
msubs %d1, %d1, %d0, -129

# CHECK-INST: msubs %d1, %d1, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0x11]
msubs %d1, %d1, %d0, -1

# CHECK-INST: msubs %d1, %d1, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0x11]
msubs %d1, %d1, %d0, 0

# CHECK-INST: msubs %d1, %d1, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0x11]
msubs %d1, %d1, %d0, 1

# CHECK-INST: msubs %d1, %d1, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0x11]
msubs %d1, %d1, %d0, 128

# CHECK-INST: msubs %d1, %d1, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0x11]
msubs %d1, %d1, %d0, 255

# CHECK-INST: msubs %d1, %d1, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0x11]
msubs %d1, %d1, %d1, -256

# CHECK-INST: msubs %d1, %d1, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0x11]
msubs %d1, %d1, %d1, -129

# CHECK-INST: msubs %d1, %d1, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0x11]
msubs %d1, %d1, %d1, -1

# CHECK-INST: msubs %d1, %d1, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0x11]
msubs %d1, %d1, %d1, 0

# CHECK-INST: msubs %d1, %d1, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0x11]
msubs %d1, %d1, %d1, 1

# CHECK-INST: msubs %d1, %d1, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0x11]
msubs %d1, %d1, %d1, 128

# CHECK-INST: msubs %d1, %d1, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0x11]
msubs %d1, %d1, %d1, 255

# CHECK-INST: msubs %d1, %d1, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0x11]
msubs %d1, %d1, %d14, -256

# CHECK-INST: msubs %d1, %d1, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0x11]
msubs %d1, %d1, %d14, -129

# CHECK-INST: msubs %d1, %d1, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0x11]
msubs %d1, %d1, %d14, -1

# CHECK-INST: msubs %d1, %d1, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0x11]
msubs %d1, %d1, %d14, 0

# CHECK-INST: msubs %d1, %d1, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0x11]
msubs %d1, %d1, %d14, 1

# CHECK-INST: msubs %d1, %d1, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0x11]
msubs %d1, %d1, %d14, 128

# CHECK-INST: msubs %d1, %d1, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0x11]
msubs %d1, %d1, %d14, 255

# CHECK-INST: msubs %d1, %d1, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0x11]
msubs %d1, %d1, %d15, -256

# CHECK-INST: msubs %d1, %d1, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0x11]
msubs %d1, %d1, %d15, -129

# CHECK-INST: msubs %d1, %d1, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0x11]
msubs %d1, %d1, %d15, -1

# CHECK-INST: msubs %d1, %d1, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0x11]
msubs %d1, %d1, %d15, 0

# CHECK-INST: msubs %d1, %d1, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0x11]
msubs %d1, %d1, %d15, 1

# CHECK-INST: msubs %d1, %d1, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0x11]
msubs %d1, %d1, %d15, 128

# CHECK-INST: msubs %d1, %d1, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0x11]
msubs %d1, %d1, %d15, 255

# CHECK-INST: msubs %d1, %d14, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0x1e]
msubs %d1, %d14, %d0, -256

# CHECK-INST: msubs %d1, %d14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0x1e]
msubs %d1, %d14, %d0, -129

# CHECK-INST: msubs %d1, %d14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0x1e]
msubs %d1, %d14, %d0, -1

# CHECK-INST: msubs %d1, %d14, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0x1e]
msubs %d1, %d14, %d0, 0

# CHECK-INST: msubs %d1, %d14, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0x1e]
msubs %d1, %d14, %d0, 1

# CHECK-INST: msubs %d1, %d14, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0x1e]
msubs %d1, %d14, %d0, 128

# CHECK-INST: msubs %d1, %d14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0x1e]
msubs %d1, %d14, %d0, 255

# CHECK-INST: msubs %d1, %d14, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0x1e]
msubs %d1, %d14, %d1, -256

# CHECK-INST: msubs %d1, %d14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0x1e]
msubs %d1, %d14, %d1, -129

# CHECK-INST: msubs %d1, %d14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0x1e]
msubs %d1, %d14, %d1, -1

# CHECK-INST: msubs %d1, %d14, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0x1e]
msubs %d1, %d14, %d1, 0

# CHECK-INST: msubs %d1, %d14, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0x1e]
msubs %d1, %d14, %d1, 1

# CHECK-INST: msubs %d1, %d14, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0x1e]
msubs %d1, %d14, %d1, 128

# CHECK-INST: msubs %d1, %d14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0x1e]
msubs %d1, %d14, %d1, 255

# CHECK-INST: msubs %d1, %d14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0x1e]
msubs %d1, %d14, %d14, -256

# CHECK-INST: msubs %d1, %d14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0x1e]
msubs %d1, %d14, %d14, -129

# CHECK-INST: msubs %d1, %d14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0x1e]
msubs %d1, %d14, %d14, -1

# CHECK-INST: msubs %d1, %d14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0x1e]
msubs %d1, %d14, %d14, 0

# CHECK-INST: msubs %d1, %d14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0x1e]
msubs %d1, %d14, %d14, 1

# CHECK-INST: msubs %d1, %d14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0x1e]
msubs %d1, %d14, %d14, 128

# CHECK-INST: msubs %d1, %d14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0x1e]
msubs %d1, %d14, %d14, 255

# CHECK-INST: msubs %d1, %d14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0x1e]
msubs %d1, %d14, %d15, -256

# CHECK-INST: msubs %d1, %d14, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0x1e]
msubs %d1, %d14, %d15, -129

# CHECK-INST: msubs %d1, %d14, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0x1e]
msubs %d1, %d14, %d15, -1

# CHECK-INST: msubs %d1, %d14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0x1e]
msubs %d1, %d14, %d15, 0

# CHECK-INST: msubs %d1, %d14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0x1e]
msubs %d1, %d14, %d15, 1

# CHECK-INST: msubs %d1, %d14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0x1e]
msubs %d1, %d14, %d15, 128

# CHECK-INST: msubs %d1, %d14, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0x1e]
msubs %d1, %d14, %d15, 255

# CHECK-INST: msubs %d1, %d15, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0x1f]
msubs %d1, %d15, %d0, -256

# CHECK-INST: msubs %d1, %d15, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0x1f]
msubs %d1, %d15, %d0, -129

# CHECK-INST: msubs %d1, %d15, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0x1f]
msubs %d1, %d15, %d0, -1

# CHECK-INST: msubs %d1, %d15, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0x1f]
msubs %d1, %d15, %d0, 0

# CHECK-INST: msubs %d1, %d15, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0x1f]
msubs %d1, %d15, %d0, 1

# CHECK-INST: msubs %d1, %d15, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0x1f]
msubs %d1, %d15, %d0, 128

# CHECK-INST: msubs %d1, %d15, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0x1f]
msubs %d1, %d15, %d0, 255

# CHECK-INST: msubs %d1, %d15, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0x1f]
msubs %d1, %d15, %d1, -256

# CHECK-INST: msubs %d1, %d15, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0x1f]
msubs %d1, %d15, %d1, -129

# CHECK-INST: msubs %d1, %d15, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0x1f]
msubs %d1, %d15, %d1, -1

# CHECK-INST: msubs %d1, %d15, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0x1f]
msubs %d1, %d15, %d1, 0

# CHECK-INST: msubs %d1, %d15, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0x1f]
msubs %d1, %d15, %d1, 1

# CHECK-INST: msubs %d1, %d15, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0x1f]
msubs %d1, %d15, %d1, 128

# CHECK-INST: msubs %d1, %d15, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0x1f]
msubs %d1, %d15, %d1, 255

# CHECK-INST: msubs %d1, %d15, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0x1f]
msubs %d1, %d15, %d14, -256

# CHECK-INST: msubs %d1, %d15, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0x1f]
msubs %d1, %d15, %d14, -129

# CHECK-INST: msubs %d1, %d15, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0x1f]
msubs %d1, %d15, %d14, -1

# CHECK-INST: msubs %d1, %d15, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0x1f]
msubs %d1, %d15, %d14, 0

# CHECK-INST: msubs %d1, %d15, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0x1f]
msubs %d1, %d15, %d14, 1

# CHECK-INST: msubs %d1, %d15, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0x1f]
msubs %d1, %d15, %d14, 128

# CHECK-INST: msubs %d1, %d15, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0x1f]
msubs %d1, %d15, %d14, 255

# CHECK-INST: msubs %d1, %d15, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0x1f]
msubs %d1, %d15, %d15, -256

# CHECK-INST: msubs %d1, %d15, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0x1f]
msubs %d1, %d15, %d15, -129

# CHECK-INST: msubs %d1, %d15, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0x1f]
msubs %d1, %d15, %d15, -1

# CHECK-INST: msubs %d1, %d15, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0x1f]
msubs %d1, %d15, %d15, 0

# CHECK-INST: msubs %d1, %d15, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0x1f]
msubs %d1, %d15, %d15, 1

# CHECK-INST: msubs %d1, %d15, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0x1f]
msubs %d1, %d15, %d15, 128

# CHECK-INST: msubs %d1, %d15, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0x1f]
msubs %d1, %d15, %d15, 255

# CHECK-INST: msubs %d14, %d0, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0xe0]
msubs %d14, %d0, %d0, -256

# CHECK-INST: msubs %d14, %d0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0xe0]
msubs %d14, %d0, %d0, -129

# CHECK-INST: msubs %d14, %d0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0xe0]
msubs %d14, %d0, %d0, -1

# CHECK-INST: msubs %d14, %d0, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0xe0]
msubs %d14, %d0, %d0, 0

# CHECK-INST: msubs %d14, %d0, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0xe0]
msubs %d14, %d0, %d0, 1

# CHECK-INST: msubs %d14, %d0, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0xe0]
msubs %d14, %d0, %d0, 128

# CHECK-INST: msubs %d14, %d0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0xe0]
msubs %d14, %d0, %d0, 255

# CHECK-INST: msubs %d14, %d0, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0xe0]
msubs %d14, %d0, %d1, -256

# CHECK-INST: msubs %d14, %d0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0xe0]
msubs %d14, %d0, %d1, -129

# CHECK-INST: msubs %d14, %d0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0xe0]
msubs %d14, %d0, %d1, -1

# CHECK-INST: msubs %d14, %d0, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0xe0]
msubs %d14, %d0, %d1, 0

# CHECK-INST: msubs %d14, %d0, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0xe0]
msubs %d14, %d0, %d1, 1

# CHECK-INST: msubs %d14, %d0, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0xe0]
msubs %d14, %d0, %d1, 128

# CHECK-INST: msubs %d14, %d0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0xe0]
msubs %d14, %d0, %d1, 255

# CHECK-INST: msubs %d14, %d0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0xe0]
msubs %d14, %d0, %d14, -256

# CHECK-INST: msubs %d14, %d0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0xe0]
msubs %d14, %d0, %d14, -129

# CHECK-INST: msubs %d14, %d0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0xe0]
msubs %d14, %d0, %d14, -1

# CHECK-INST: msubs %d14, %d0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0xe0]
msubs %d14, %d0, %d14, 0

# CHECK-INST: msubs %d14, %d0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0xe0]
msubs %d14, %d0, %d14, 1

# CHECK-INST: msubs %d14, %d0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0xe0]
msubs %d14, %d0, %d14, 128

# CHECK-INST: msubs %d14, %d0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0xe0]
msubs %d14, %d0, %d14, 255

# CHECK-INST: msubs %d14, %d0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0xe0]
msubs %d14, %d0, %d15, -256

# CHECK-INST: msubs %d14, %d0, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0xe0]
msubs %d14, %d0, %d15, -129

# CHECK-INST: msubs %d14, %d0, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0xe0]
msubs %d14, %d0, %d15, -1

# CHECK-INST: msubs %d14, %d0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0xe0]
msubs %d14, %d0, %d15, 0

# CHECK-INST: msubs %d14, %d0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0xe0]
msubs %d14, %d0, %d15, 1

# CHECK-INST: msubs %d14, %d0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0xe0]
msubs %d14, %d0, %d15, 128

# CHECK-INST: msubs %d14, %d0, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0xe0]
msubs %d14, %d0, %d15, 255

# CHECK-INST: msubs %d14, %d1, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0xe1]
msubs %d14, %d1, %d0, -256

# CHECK-INST: msubs %d14, %d1, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0xe1]
msubs %d14, %d1, %d0, -129

# CHECK-INST: msubs %d14, %d1, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0xe1]
msubs %d14, %d1, %d0, -1

# CHECK-INST: msubs %d14, %d1, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0xe1]
msubs %d14, %d1, %d0, 0

# CHECK-INST: msubs %d14, %d1, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0xe1]
msubs %d14, %d1, %d0, 1

# CHECK-INST: msubs %d14, %d1, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0xe1]
msubs %d14, %d1, %d0, 128

# CHECK-INST: msubs %d14, %d1, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0xe1]
msubs %d14, %d1, %d0, 255

# CHECK-INST: msubs %d14, %d1, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0xe1]
msubs %d14, %d1, %d1, -256

# CHECK-INST: msubs %d14, %d1, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0xe1]
msubs %d14, %d1, %d1, -129

# CHECK-INST: msubs %d14, %d1, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0xe1]
msubs %d14, %d1, %d1, -1

# CHECK-INST: msubs %d14, %d1, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0xe1]
msubs %d14, %d1, %d1, 0

# CHECK-INST: msubs %d14, %d1, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0xe1]
msubs %d14, %d1, %d1, 1

# CHECK-INST: msubs %d14, %d1, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0xe1]
msubs %d14, %d1, %d1, 128

# CHECK-INST: msubs %d14, %d1, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0xe1]
msubs %d14, %d1, %d1, 255

# CHECK-INST: msubs %d14, %d1, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0xe1]
msubs %d14, %d1, %d14, -256

# CHECK-INST: msubs %d14, %d1, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0xe1]
msubs %d14, %d1, %d14, -129

# CHECK-INST: msubs %d14, %d1, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0xe1]
msubs %d14, %d1, %d14, -1

# CHECK-INST: msubs %d14, %d1, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0xe1]
msubs %d14, %d1, %d14, 0

# CHECK-INST: msubs %d14, %d1, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0xe1]
msubs %d14, %d1, %d14, 1

# CHECK-INST: msubs %d14, %d1, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0xe1]
msubs %d14, %d1, %d14, 128

# CHECK-INST: msubs %d14, %d1, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0xe1]
msubs %d14, %d1, %d14, 255

# CHECK-INST: msubs %d14, %d1, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0xe1]
msubs %d14, %d1, %d15, -256

# CHECK-INST: msubs %d14, %d1, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0xe1]
msubs %d14, %d1, %d15, -129

# CHECK-INST: msubs %d14, %d1, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0xe1]
msubs %d14, %d1, %d15, -1

# CHECK-INST: msubs %d14, %d1, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0xe1]
msubs %d14, %d1, %d15, 0

# CHECK-INST: msubs %d14, %d1, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0xe1]
msubs %d14, %d1, %d15, 1

# CHECK-INST: msubs %d14, %d1, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0xe1]
msubs %d14, %d1, %d15, 128

# CHECK-INST: msubs %d14, %d1, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0xe1]
msubs %d14, %d1, %d15, 255

# CHECK-INST: msubs %d14, %d14, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0xee]
msubs %d14, %d14, %d0, -256

# CHECK-INST: msubs %d14, %d14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0xee]
msubs %d14, %d14, %d0, -129

# CHECK-INST: msubs %d14, %d14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0xee]
msubs %d14, %d14, %d0, -1

# CHECK-INST: msubs %d14, %d14, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0xee]
msubs %d14, %d14, %d0, 0

# CHECK-INST: msubs %d14, %d14, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0xee]
msubs %d14, %d14, %d0, 1

# CHECK-INST: msubs %d14, %d14, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0xee]
msubs %d14, %d14, %d0, 128

# CHECK-INST: msubs %d14, %d14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0xee]
msubs %d14, %d14, %d0, 255

# CHECK-INST: msubs %d14, %d14, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0xee]
msubs %d14, %d14, %d1, -256

# CHECK-INST: msubs %d14, %d14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0xee]
msubs %d14, %d14, %d1, -129

# CHECK-INST: msubs %d14, %d14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0xee]
msubs %d14, %d14, %d1, -1

# CHECK-INST: msubs %d14, %d14, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0xee]
msubs %d14, %d14, %d1, 0

# CHECK-INST: msubs %d14, %d14, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0xee]
msubs %d14, %d14, %d1, 1

# CHECK-INST: msubs %d14, %d14, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0xee]
msubs %d14, %d14, %d1, 128

# CHECK-INST: msubs %d14, %d14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0xee]
msubs %d14, %d14, %d1, 255

# CHECK-INST: msubs %d14, %d14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0xee]
msubs %d14, %d14, %d14, -256

# CHECK-INST: msubs %d14, %d14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0xee]
msubs %d14, %d14, %d14, -129

# CHECK-INST: msubs %d14, %d14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0xee]
msubs %d14, %d14, %d14, -1

# CHECK-INST: msubs %d14, %d14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0xee]
msubs %d14, %d14, %d14, 0

# CHECK-INST: msubs %d14, %d14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0xee]
msubs %d14, %d14, %d14, 1

# CHECK-INST: msubs %d14, %d14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0xee]
msubs %d14, %d14, %d14, 128

# CHECK-INST: msubs %d14, %d14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0xee]
msubs %d14, %d14, %d14, 255

# CHECK-INST: msubs %d14, %d14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0xee]
msubs %d14, %d14, %d15, -256

# CHECK-INST: msubs %d14, %d14, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0xee]
msubs %d14, %d14, %d15, -129

# CHECK-INST: msubs %d14, %d14, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0xee]
msubs %d14, %d14, %d15, -1

# CHECK-INST: msubs %d14, %d14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0xee]
msubs %d14, %d14, %d15, 0

# CHECK-INST: msubs %d14, %d14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0xee]
msubs %d14, %d14, %d15, 1

# CHECK-INST: msubs %d14, %d14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0xee]
msubs %d14, %d14, %d15, 128

# CHECK-INST: msubs %d14, %d14, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0xee]
msubs %d14, %d14, %d15, 255

# CHECK-INST: msubs %d14, %d15, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0xef]
msubs %d14, %d15, %d0, -256

# CHECK-INST: msubs %d14, %d15, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0xef]
msubs %d14, %d15, %d0, -129

# CHECK-INST: msubs %d14, %d15, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0xef]
msubs %d14, %d15, %d0, -1

# CHECK-INST: msubs %d14, %d15, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0xef]
msubs %d14, %d15, %d0, 0

# CHECK-INST: msubs %d14, %d15, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0xef]
msubs %d14, %d15, %d0, 1

# CHECK-INST: msubs %d14, %d15, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0xef]
msubs %d14, %d15, %d0, 128

# CHECK-INST: msubs %d14, %d15, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0xef]
msubs %d14, %d15, %d0, 255

# CHECK-INST: msubs %d14, %d15, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0xef]
msubs %d14, %d15, %d1, -256

# CHECK-INST: msubs %d14, %d15, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0xef]
msubs %d14, %d15, %d1, -129

# CHECK-INST: msubs %d14, %d15, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0xef]
msubs %d14, %d15, %d1, -1

# CHECK-INST: msubs %d14, %d15, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0xef]
msubs %d14, %d15, %d1, 0

# CHECK-INST: msubs %d14, %d15, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0xef]
msubs %d14, %d15, %d1, 1

# CHECK-INST: msubs %d14, %d15, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0xef]
msubs %d14, %d15, %d1, 128

# CHECK-INST: msubs %d14, %d15, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0xef]
msubs %d14, %d15, %d1, 255

# CHECK-INST: msubs %d14, %d15, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0xef]
msubs %d14, %d15, %d14, -256

# CHECK-INST: msubs %d14, %d15, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0xef]
msubs %d14, %d15, %d14, -129

# CHECK-INST: msubs %d14, %d15, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0xef]
msubs %d14, %d15, %d14, -1

# CHECK-INST: msubs %d14, %d15, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0xef]
msubs %d14, %d15, %d14, 0

# CHECK-INST: msubs %d14, %d15, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0xef]
msubs %d14, %d15, %d14, 1

# CHECK-INST: msubs %d14, %d15, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0xef]
msubs %d14, %d15, %d14, 128

# CHECK-INST: msubs %d14, %d15, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0xef]
msubs %d14, %d15, %d14, 255

# CHECK-INST: msubs %d14, %d15, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0xef]
msubs %d14, %d15, %d15, -256

# CHECK-INST: msubs %d14, %d15, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0xef]
msubs %d14, %d15, %d15, -129

# CHECK-INST: msubs %d14, %d15, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0xef]
msubs %d14, %d15, %d15, -1

# CHECK-INST: msubs %d14, %d15, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0xef]
msubs %d14, %d15, %d15, 0

# CHECK-INST: msubs %d14, %d15, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0xef]
msubs %d14, %d15, %d15, 1

# CHECK-INST: msubs %d14, %d15, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0xef]
msubs %d14, %d15, %d15, 128

# CHECK-INST: msubs %d14, %d15, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0xef]
msubs %d14, %d15, %d15, 255

# CHECK-INST: msubs %d15, %d0, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0xf0]
msubs %d15, %d0, %d0, -256

# CHECK-INST: msubs %d15, %d0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0xf0]
msubs %d15, %d0, %d0, -129

# CHECK-INST: msubs %d15, %d0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0xf0]
msubs %d15, %d0, %d0, -1

# CHECK-INST: msubs %d15, %d0, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0xf0]
msubs %d15, %d0, %d0, 0

# CHECK-INST: msubs %d15, %d0, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0xf0]
msubs %d15, %d0, %d0, 1

# CHECK-INST: msubs %d15, %d0, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0xf0]
msubs %d15, %d0, %d0, 128

# CHECK-INST: msubs %d15, %d0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0xf0]
msubs %d15, %d0, %d0, 255

# CHECK-INST: msubs %d15, %d0, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0xf0]
msubs %d15, %d0, %d1, -256

# CHECK-INST: msubs %d15, %d0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0xf0]
msubs %d15, %d0, %d1, -129

# CHECK-INST: msubs %d15, %d0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0xf0]
msubs %d15, %d0, %d1, -1

# CHECK-INST: msubs %d15, %d0, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0xf0]
msubs %d15, %d0, %d1, 0

# CHECK-INST: msubs %d15, %d0, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0xf0]
msubs %d15, %d0, %d1, 1

# CHECK-INST: msubs %d15, %d0, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0xf0]
msubs %d15, %d0, %d1, 128

# CHECK-INST: msubs %d15, %d0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0xf0]
msubs %d15, %d0, %d1, 255

# CHECK-INST: msubs %d15, %d0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0xf0]
msubs %d15, %d0, %d14, -256

# CHECK-INST: msubs %d15, %d0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0xf0]
msubs %d15, %d0, %d14, -129

# CHECK-INST: msubs %d15, %d0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0xf0]
msubs %d15, %d0, %d14, -1

# CHECK-INST: msubs %d15, %d0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0xf0]
msubs %d15, %d0, %d14, 0

# CHECK-INST: msubs %d15, %d0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0xf0]
msubs %d15, %d0, %d14, 1

# CHECK-INST: msubs %d15, %d0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0xf0]
msubs %d15, %d0, %d14, 128

# CHECK-INST: msubs %d15, %d0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0xf0]
msubs %d15, %d0, %d14, 255

# CHECK-INST: msubs %d15, %d0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0xf0]
msubs %d15, %d0, %d15, -256

# CHECK-INST: msubs %d15, %d0, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0xf0]
msubs %d15, %d0, %d15, -129

# CHECK-INST: msubs %d15, %d0, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0xf0]
msubs %d15, %d0, %d15, -1

# CHECK-INST: msubs %d15, %d0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0xf0]
msubs %d15, %d0, %d15, 0

# CHECK-INST: msubs %d15, %d0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0xf0]
msubs %d15, %d0, %d15, 1

# CHECK-INST: msubs %d15, %d0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0xf0]
msubs %d15, %d0, %d15, 128

# CHECK-INST: msubs %d15, %d0, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0xf0]
msubs %d15, %d0, %d15, 255

# CHECK-INST: msubs %d15, %d1, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0xf1]
msubs %d15, %d1, %d0, -256

# CHECK-INST: msubs %d15, %d1, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0xf1]
msubs %d15, %d1, %d0, -129

# CHECK-INST: msubs %d15, %d1, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0xf1]
msubs %d15, %d1, %d0, -1

# CHECK-INST: msubs %d15, %d1, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0xf1]
msubs %d15, %d1, %d0, 0

# CHECK-INST: msubs %d15, %d1, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0xf1]
msubs %d15, %d1, %d0, 1

# CHECK-INST: msubs %d15, %d1, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0xf1]
msubs %d15, %d1, %d0, 128

# CHECK-INST: msubs %d15, %d1, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0xf1]
msubs %d15, %d1, %d0, 255

# CHECK-INST: msubs %d15, %d1, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0xf1]
msubs %d15, %d1, %d1, -256

# CHECK-INST: msubs %d15, %d1, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0xf1]
msubs %d15, %d1, %d1, -129

# CHECK-INST: msubs %d15, %d1, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0xf1]
msubs %d15, %d1, %d1, -1

# CHECK-INST: msubs %d15, %d1, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0xf1]
msubs %d15, %d1, %d1, 0

# CHECK-INST: msubs %d15, %d1, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0xf1]
msubs %d15, %d1, %d1, 1

# CHECK-INST: msubs %d15, %d1, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0xf1]
msubs %d15, %d1, %d1, 128

# CHECK-INST: msubs %d15, %d1, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0xf1]
msubs %d15, %d1, %d1, 255

# CHECK-INST: msubs %d15, %d1, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0xf1]
msubs %d15, %d1, %d14, -256

# CHECK-INST: msubs %d15, %d1, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0xf1]
msubs %d15, %d1, %d14, -129

# CHECK-INST: msubs %d15, %d1, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0xf1]
msubs %d15, %d1, %d14, -1

# CHECK-INST: msubs %d15, %d1, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0xf1]
msubs %d15, %d1, %d14, 0

# CHECK-INST: msubs %d15, %d1, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0xf1]
msubs %d15, %d1, %d14, 1

# CHECK-INST: msubs %d15, %d1, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0xf1]
msubs %d15, %d1, %d14, 128

# CHECK-INST: msubs %d15, %d1, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0xf1]
msubs %d15, %d1, %d14, 255

# CHECK-INST: msubs %d15, %d1, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0xf1]
msubs %d15, %d1, %d15, -256

# CHECK-INST: msubs %d15, %d1, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0xf1]
msubs %d15, %d1, %d15, -129

# CHECK-INST: msubs %d15, %d1, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0xf1]
msubs %d15, %d1, %d15, -1

# CHECK-INST: msubs %d15, %d1, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0xf1]
msubs %d15, %d1, %d15, 0

# CHECK-INST: msubs %d15, %d1, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0xf1]
msubs %d15, %d1, %d15, 1

# CHECK-INST: msubs %d15, %d1, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0xf1]
msubs %d15, %d1, %d15, 128

# CHECK-INST: msubs %d15, %d1, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0xf1]
msubs %d15, %d1, %d15, 255

# CHECK-INST: msubs %d15, %d14, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0xfe]
msubs %d15, %d14, %d0, -256

# CHECK-INST: msubs %d15, %d14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0xfe]
msubs %d15, %d14, %d0, -129

# CHECK-INST: msubs %d15, %d14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0xfe]
msubs %d15, %d14, %d0, -1

# CHECK-INST: msubs %d15, %d14, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0xfe]
msubs %d15, %d14, %d0, 0

# CHECK-INST: msubs %d15, %d14, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0xfe]
msubs %d15, %d14, %d0, 1

# CHECK-INST: msubs %d15, %d14, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0xfe]
msubs %d15, %d14, %d0, 128

# CHECK-INST: msubs %d15, %d14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0xfe]
msubs %d15, %d14, %d0, 255

# CHECK-INST: msubs %d15, %d14, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0xfe]
msubs %d15, %d14, %d1, -256

# CHECK-INST: msubs %d15, %d14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0xfe]
msubs %d15, %d14, %d1, -129

# CHECK-INST: msubs %d15, %d14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0xfe]
msubs %d15, %d14, %d1, -1

# CHECK-INST: msubs %d15, %d14, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0xfe]
msubs %d15, %d14, %d1, 0

# CHECK-INST: msubs %d15, %d14, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0xfe]
msubs %d15, %d14, %d1, 1

# CHECK-INST: msubs %d15, %d14, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0xfe]
msubs %d15, %d14, %d1, 128

# CHECK-INST: msubs %d15, %d14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0xfe]
msubs %d15, %d14, %d1, 255

# CHECK-INST: msubs %d15, %d14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0xfe]
msubs %d15, %d14, %d14, -256

# CHECK-INST: msubs %d15, %d14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0xfe]
msubs %d15, %d14, %d14, -129

# CHECK-INST: msubs %d15, %d14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0xfe]
msubs %d15, %d14, %d14, -1

# CHECK-INST: msubs %d15, %d14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0xfe]
msubs %d15, %d14, %d14, 0

# CHECK-INST: msubs %d15, %d14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0xfe]
msubs %d15, %d14, %d14, 1

# CHECK-INST: msubs %d15, %d14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0xfe]
msubs %d15, %d14, %d14, 128

# CHECK-INST: msubs %d15, %d14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0xfe]
msubs %d15, %d14, %d14, 255

# CHECK-INST: msubs %d15, %d14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0xfe]
msubs %d15, %d14, %d15, -256

# CHECK-INST: msubs %d15, %d14, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0xfe]
msubs %d15, %d14, %d15, -129

# CHECK-INST: msubs %d15, %d14, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0xfe]
msubs %d15, %d14, %d15, -1

# CHECK-INST: msubs %d15, %d14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0xfe]
msubs %d15, %d14, %d15, 0

# CHECK-INST: msubs %d15, %d14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0xfe]
msubs %d15, %d14, %d15, 1

# CHECK-INST: msubs %d15, %d14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0xfe]
msubs %d15, %d14, %d15, 128

# CHECK-INST: msubs %d15, %d14, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0xfe]
msubs %d15, %d14, %d15, 255

# CHECK-INST: msubs %d15, %d15, %d0, -256
# CHECK: encoding: [0x33,0x00,0xb0,0xff]
msubs %d15, %d15, %d0, -256

# CHECK-INST: msubs %d15, %d15, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xb7,0xff]
msubs %d15, %d15, %d0, -129

# CHECK-INST: msubs %d15, %d15, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xbf,0xff]
msubs %d15, %d15, %d0, -1

# CHECK-INST: msubs %d15, %d15, %d0, 0
# CHECK: encoding: [0x33,0x00,0xa0,0xff]
msubs %d15, %d15, %d0, 0

# CHECK-INST: msubs %d15, %d15, %d0, 1
# CHECK: encoding: [0x33,0x10,0xa0,0xff]
msubs %d15, %d15, %d0, 1

# CHECK-INST: msubs %d15, %d15, %d0, 128
# CHECK: encoding: [0x33,0x00,0xa8,0xff]
msubs %d15, %d15, %d0, 128

# CHECK-INST: msubs %d15, %d15, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xaf,0xff]
msubs %d15, %d15, %d0, 255

# CHECK-INST: msubs %d15, %d15, %d1, -256
# CHECK: encoding: [0x33,0x01,0xb0,0xff]
msubs %d15, %d15, %d1, -256

# CHECK-INST: msubs %d15, %d15, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xb7,0xff]
msubs %d15, %d15, %d1, -129

# CHECK-INST: msubs %d15, %d15, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xbf,0xff]
msubs %d15, %d15, %d1, -1

# CHECK-INST: msubs %d15, %d15, %d1, 0
# CHECK: encoding: [0x33,0x01,0xa0,0xff]
msubs %d15, %d15, %d1, 0

# CHECK-INST: msubs %d15, %d15, %d1, 1
# CHECK: encoding: [0x33,0x11,0xa0,0xff]
msubs %d15, %d15, %d1, 1

# CHECK-INST: msubs %d15, %d15, %d1, 128
# CHECK: encoding: [0x33,0x01,0xa8,0xff]
msubs %d15, %d15, %d1, 128

# CHECK-INST: msubs %d15, %d15, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xaf,0xff]
msubs %d15, %d15, %d1, 255

# CHECK-INST: msubs %d15, %d15, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xb0,0xff]
msubs %d15, %d15, %d14, -256

# CHECK-INST: msubs %d15, %d15, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xb7,0xff]
msubs %d15, %d15, %d14, -129

# CHECK-INST: msubs %d15, %d15, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xbf,0xff]
msubs %d15, %d15, %d14, -1

# CHECK-INST: msubs %d15, %d15, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xa0,0xff]
msubs %d15, %d15, %d14, 0

# CHECK-INST: msubs %d15, %d15, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xa0,0xff]
msubs %d15, %d15, %d14, 1

# CHECK-INST: msubs %d15, %d15, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xa8,0xff]
msubs %d15, %d15, %d14, 128

# CHECK-INST: msubs %d15, %d15, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xaf,0xff]
msubs %d15, %d15, %d14, 255

# CHECK-INST: msubs %d15, %d15, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xb0,0xff]
msubs %d15, %d15, %d15, -256

# CHECK-INST: msubs %d15, %d15, %d15, -129
# CHECK: encoding: [0x33,0xff,0xb7,0xff]
msubs %d15, %d15, %d15, -129

# CHECK-INST: msubs %d15, %d15, %d15, -1
# CHECK: encoding: [0x33,0xff,0xbf,0xff]
msubs %d15, %d15, %d15, -1

# CHECK-INST: msubs %d15, %d15, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xa0,0xff]
msubs %d15, %d15, %d15, 0

# CHECK-INST: msubs %d15, %d15, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xa0,0xff]
msubs %d15, %d15, %d15, 1

# CHECK-INST: msubs %d15, %d15, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xa8,0xff]
msubs %d15, %d15, %d15, 128

# CHECK-INST: msubs %d15, %d15, %d15, 255
# CHECK: encoding: [0x33,0xff,0xaf,0xff]
msubs %d15, %d15, %d15, 255

# CHECK-INST: msubs %e0, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xea,0x00]
msubs %e0, %e0, %d0, %d0

# CHECK-INST: msubs %e0, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xea,0x00]
msubs %e0, %e0, %d0, %d1

# CHECK-INST: msubs %e0, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xea,0x00]
msubs %e0, %e0, %d0, %d14

# CHECK-INST: msubs %e0, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xea,0x00]
msubs %e0, %e0, %d0, %d15

# CHECK-INST: msubs %e0, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xea,0x00]
msubs %e0, %e0, %d1, %d0

# CHECK-INST: msubs %e0, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xea,0x00]
msubs %e0, %e0, %d1, %d1

# CHECK-INST: msubs %e0, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xea,0x00]
msubs %e0, %e0, %d1, %d14

# CHECK-INST: msubs %e0, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xea,0x00]
msubs %e0, %e0, %d1, %d15

# CHECK-INST: msubs %e0, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xea,0x00]
msubs %e0, %e0, %d14, %d0

# CHECK-INST: msubs %e0, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xea,0x00]
msubs %e0, %e0, %d14, %d1

# CHECK-INST: msubs %e0, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xea,0x00]
msubs %e0, %e0, %d14, %d14

# CHECK-INST: msubs %e0, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xea,0x00]
msubs %e0, %e0, %d14, %d15

# CHECK-INST: msubs %e0, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xea,0x00]
msubs %e0, %e0, %d15, %d0

# CHECK-INST: msubs %e0, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xea,0x00]
msubs %e0, %e0, %d15, %d1

# CHECK-INST: msubs %e0, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xea,0x00]
msubs %e0, %e0, %d15, %d14

# CHECK-INST: msubs %e0, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xea,0x00]
msubs %e0, %e0, %d15, %d15

# CHECK-INST: msubs %e0, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xea,0x06]
msubs %e0, %e6, %d0, %d0

# CHECK-INST: msubs %e0, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xea,0x06]
msubs %e0, %e6, %d0, %d1

# CHECK-INST: msubs %e0, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xea,0x06]
msubs %e0, %e6, %d0, %d14

# CHECK-INST: msubs %e0, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xea,0x06]
msubs %e0, %e6, %d0, %d15

# CHECK-INST: msubs %e0, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xea,0x06]
msubs %e0, %e6, %d1, %d0

# CHECK-INST: msubs %e0, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xea,0x06]
msubs %e0, %e6, %d1, %d1

# CHECK-INST: msubs %e0, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xea,0x06]
msubs %e0, %e6, %d1, %d14

# CHECK-INST: msubs %e0, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xea,0x06]
msubs %e0, %e6, %d1, %d15

# CHECK-INST: msubs %e0, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xea,0x06]
msubs %e0, %e6, %d14, %d0

# CHECK-INST: msubs %e0, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xea,0x06]
msubs %e0, %e6, %d14, %d1

# CHECK-INST: msubs %e0, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xea,0x06]
msubs %e0, %e6, %d14, %d14

# CHECK-INST: msubs %e0, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xea,0x06]
msubs %e0, %e6, %d14, %d15

# CHECK-INST: msubs %e0, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xea,0x06]
msubs %e0, %e6, %d15, %d0

# CHECK-INST: msubs %e0, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xea,0x06]
msubs %e0, %e6, %d15, %d1

# CHECK-INST: msubs %e0, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xea,0x06]
msubs %e0, %e6, %d15, %d14

# CHECK-INST: msubs %e0, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xea,0x06]
msubs %e0, %e6, %d15, %d15

# CHECK-INST: msubs %e0, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xea,0x0e]
msubs %e0, %e14, %d0, %d0

# CHECK-INST: msubs %e0, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xea,0x0e]
msubs %e0, %e14, %d0, %d1

# CHECK-INST: msubs %e0, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xea,0x0e]
msubs %e0, %e14, %d0, %d14

# CHECK-INST: msubs %e0, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xea,0x0e]
msubs %e0, %e14, %d0, %d15

# CHECK-INST: msubs %e0, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xea,0x0e]
msubs %e0, %e14, %d1, %d0

# CHECK-INST: msubs %e0, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xea,0x0e]
msubs %e0, %e14, %d1, %d1

# CHECK-INST: msubs %e0, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xea,0x0e]
msubs %e0, %e14, %d1, %d14

# CHECK-INST: msubs %e0, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xea,0x0e]
msubs %e0, %e14, %d1, %d15

# CHECK-INST: msubs %e0, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xea,0x0e]
msubs %e0, %e14, %d14, %d0

# CHECK-INST: msubs %e0, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xea,0x0e]
msubs %e0, %e14, %d14, %d1

# CHECK-INST: msubs %e0, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xea,0x0e]
msubs %e0, %e14, %d14, %d14

# CHECK-INST: msubs %e0, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xea,0x0e]
msubs %e0, %e14, %d14, %d15

# CHECK-INST: msubs %e0, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xea,0x0e]
msubs %e0, %e14, %d15, %d0

# CHECK-INST: msubs %e0, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xea,0x0e]
msubs %e0, %e14, %d15, %d1

# CHECK-INST: msubs %e0, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xea,0x0e]
msubs %e0, %e14, %d15, %d14

# CHECK-INST: msubs %e0, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xea,0x0e]
msubs %e0, %e14, %d15, %d15

# CHECK-INST: msubs %e6, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xea,0x60]
msubs %e6, %e0, %d0, %d0

# CHECK-INST: msubs %e6, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xea,0x60]
msubs %e6, %e0, %d0, %d1

# CHECK-INST: msubs %e6, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xea,0x60]
msubs %e6, %e0, %d0, %d14

# CHECK-INST: msubs %e6, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xea,0x60]
msubs %e6, %e0, %d0, %d15

# CHECK-INST: msubs %e6, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xea,0x60]
msubs %e6, %e0, %d1, %d0

# CHECK-INST: msubs %e6, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xea,0x60]
msubs %e6, %e0, %d1, %d1

# CHECK-INST: msubs %e6, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xea,0x60]
msubs %e6, %e0, %d1, %d14

# CHECK-INST: msubs %e6, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xea,0x60]
msubs %e6, %e0, %d1, %d15

# CHECK-INST: msubs %e6, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xea,0x60]
msubs %e6, %e0, %d14, %d0

# CHECK-INST: msubs %e6, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xea,0x60]
msubs %e6, %e0, %d14, %d1

# CHECK-INST: msubs %e6, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xea,0x60]
msubs %e6, %e0, %d14, %d14

# CHECK-INST: msubs %e6, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xea,0x60]
msubs %e6, %e0, %d14, %d15

# CHECK-INST: msubs %e6, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xea,0x60]
msubs %e6, %e0, %d15, %d0

# CHECK-INST: msubs %e6, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xea,0x60]
msubs %e6, %e0, %d15, %d1

# CHECK-INST: msubs %e6, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xea,0x60]
msubs %e6, %e0, %d15, %d14

# CHECK-INST: msubs %e6, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xea,0x60]
msubs %e6, %e0, %d15, %d15

# CHECK-INST: msubs %e6, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xea,0x66]
msubs %e6, %e6, %d0, %d0

# CHECK-INST: msubs %e6, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xea,0x66]
msubs %e6, %e6, %d0, %d1

# CHECK-INST: msubs %e6, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xea,0x66]
msubs %e6, %e6, %d0, %d14

# CHECK-INST: msubs %e6, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xea,0x66]
msubs %e6, %e6, %d0, %d15

# CHECK-INST: msubs %e6, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xea,0x66]
msubs %e6, %e6, %d1, %d0

# CHECK-INST: msubs %e6, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xea,0x66]
msubs %e6, %e6, %d1, %d1

# CHECK-INST: msubs %e6, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xea,0x66]
msubs %e6, %e6, %d1, %d14

# CHECK-INST: msubs %e6, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xea,0x66]
msubs %e6, %e6, %d1, %d15

# CHECK-INST: msubs %e6, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xea,0x66]
msubs %e6, %e6, %d14, %d0

# CHECK-INST: msubs %e6, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xea,0x66]
msubs %e6, %e6, %d14, %d1

# CHECK-INST: msubs %e6, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xea,0x66]
msubs %e6, %e6, %d14, %d14

# CHECK-INST: msubs %e6, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xea,0x66]
msubs %e6, %e6, %d14, %d15

# CHECK-INST: msubs %e6, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xea,0x66]
msubs %e6, %e6, %d15, %d0

# CHECK-INST: msubs %e6, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xea,0x66]
msubs %e6, %e6, %d15, %d1

# CHECK-INST: msubs %e6, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xea,0x66]
msubs %e6, %e6, %d15, %d14

# CHECK-INST: msubs %e6, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xea,0x66]
msubs %e6, %e6, %d15, %d15

# CHECK-INST: msubs %e6, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xea,0x6e]
msubs %e6, %e14, %d0, %d0

# CHECK-INST: msubs %e6, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xea,0x6e]
msubs %e6, %e14, %d0, %d1

# CHECK-INST: msubs %e6, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xea,0x6e]
msubs %e6, %e14, %d0, %d14

# CHECK-INST: msubs %e6, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xea,0x6e]
msubs %e6, %e14, %d0, %d15

# CHECK-INST: msubs %e6, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xea,0x6e]
msubs %e6, %e14, %d1, %d0

# CHECK-INST: msubs %e6, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xea,0x6e]
msubs %e6, %e14, %d1, %d1

# CHECK-INST: msubs %e6, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xea,0x6e]
msubs %e6, %e14, %d1, %d14

# CHECK-INST: msubs %e6, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xea,0x6e]
msubs %e6, %e14, %d1, %d15

# CHECK-INST: msubs %e6, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xea,0x6e]
msubs %e6, %e14, %d14, %d0

# CHECK-INST: msubs %e6, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xea,0x6e]
msubs %e6, %e14, %d14, %d1

# CHECK-INST: msubs %e6, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xea,0x6e]
msubs %e6, %e14, %d14, %d14

# CHECK-INST: msubs %e6, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xea,0x6e]
msubs %e6, %e14, %d14, %d15

# CHECK-INST: msubs %e6, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xea,0x6e]
msubs %e6, %e14, %d15, %d0

# CHECK-INST: msubs %e6, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xea,0x6e]
msubs %e6, %e14, %d15, %d1

# CHECK-INST: msubs %e6, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xea,0x6e]
msubs %e6, %e14, %d15, %d14

# CHECK-INST: msubs %e6, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xea,0x6e]
msubs %e6, %e14, %d15, %d15

# CHECK-INST: msubs %e14, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xea,0xe0]
msubs %e14, %e0, %d0, %d0

# CHECK-INST: msubs %e14, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xea,0xe0]
msubs %e14, %e0, %d0, %d1

# CHECK-INST: msubs %e14, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xea,0xe0]
msubs %e14, %e0, %d0, %d14

# CHECK-INST: msubs %e14, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xea,0xe0]
msubs %e14, %e0, %d0, %d15

# CHECK-INST: msubs %e14, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xea,0xe0]
msubs %e14, %e0, %d1, %d0

# CHECK-INST: msubs %e14, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xea,0xe0]
msubs %e14, %e0, %d1, %d1

# CHECK-INST: msubs %e14, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xea,0xe0]
msubs %e14, %e0, %d1, %d14

# CHECK-INST: msubs %e14, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xea,0xe0]
msubs %e14, %e0, %d1, %d15

# CHECK-INST: msubs %e14, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xea,0xe0]
msubs %e14, %e0, %d14, %d0

# CHECK-INST: msubs %e14, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xea,0xe0]
msubs %e14, %e0, %d14, %d1

# CHECK-INST: msubs %e14, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xea,0xe0]
msubs %e14, %e0, %d14, %d14

# CHECK-INST: msubs %e14, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xea,0xe0]
msubs %e14, %e0, %d14, %d15

# CHECK-INST: msubs %e14, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xea,0xe0]
msubs %e14, %e0, %d15, %d0

# CHECK-INST: msubs %e14, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xea,0xe0]
msubs %e14, %e0, %d15, %d1

# CHECK-INST: msubs %e14, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xea,0xe0]
msubs %e14, %e0, %d15, %d14

# CHECK-INST: msubs %e14, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xea,0xe0]
msubs %e14, %e0, %d15, %d15

# CHECK-INST: msubs %e14, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xea,0xe6]
msubs %e14, %e6, %d0, %d0

# CHECK-INST: msubs %e14, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xea,0xe6]
msubs %e14, %e6, %d0, %d1

# CHECK-INST: msubs %e14, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xea,0xe6]
msubs %e14, %e6, %d0, %d14

# CHECK-INST: msubs %e14, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xea,0xe6]
msubs %e14, %e6, %d0, %d15

# CHECK-INST: msubs %e14, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xea,0xe6]
msubs %e14, %e6, %d1, %d0

# CHECK-INST: msubs %e14, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xea,0xe6]
msubs %e14, %e6, %d1, %d1

# CHECK-INST: msubs %e14, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xea,0xe6]
msubs %e14, %e6, %d1, %d14

# CHECK-INST: msubs %e14, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xea,0xe6]
msubs %e14, %e6, %d1, %d15

# CHECK-INST: msubs %e14, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xea,0xe6]
msubs %e14, %e6, %d14, %d0

# CHECK-INST: msubs %e14, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xea,0xe6]
msubs %e14, %e6, %d14, %d1

# CHECK-INST: msubs %e14, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xea,0xe6]
msubs %e14, %e6, %d14, %d14

# CHECK-INST: msubs %e14, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xea,0xe6]
msubs %e14, %e6, %d14, %d15

# CHECK-INST: msubs %e14, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xea,0xe6]
msubs %e14, %e6, %d15, %d0

# CHECK-INST: msubs %e14, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xea,0xe6]
msubs %e14, %e6, %d15, %d1

# CHECK-INST: msubs %e14, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xea,0xe6]
msubs %e14, %e6, %d15, %d14

# CHECK-INST: msubs %e14, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xea,0xe6]
msubs %e14, %e6, %d15, %d15

# CHECK-INST: msubs %e14, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xea,0xee]
msubs %e14, %e14, %d0, %d0

# CHECK-INST: msubs %e14, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xea,0xee]
msubs %e14, %e14, %d0, %d1

# CHECK-INST: msubs %e14, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xea,0xee]
msubs %e14, %e14, %d0, %d14

# CHECK-INST: msubs %e14, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xea,0xee]
msubs %e14, %e14, %d0, %d15

# CHECK-INST: msubs %e14, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xea,0xee]
msubs %e14, %e14, %d1, %d0

# CHECK-INST: msubs %e14, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xea,0xee]
msubs %e14, %e14, %d1, %d1

# CHECK-INST: msubs %e14, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xea,0xee]
msubs %e14, %e14, %d1, %d14

# CHECK-INST: msubs %e14, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xea,0xee]
msubs %e14, %e14, %d1, %d15

# CHECK-INST: msubs %e14, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xea,0xee]
msubs %e14, %e14, %d14, %d0

# CHECK-INST: msubs %e14, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xea,0xee]
msubs %e14, %e14, %d14, %d1

# CHECK-INST: msubs %e14, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xea,0xee]
msubs %e14, %e14, %d14, %d14

# CHECK-INST: msubs %e14, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xea,0xee]
msubs %e14, %e14, %d14, %d15

# CHECK-INST: msubs %e14, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xea,0xee]
msubs %e14, %e14, %d15, %d0

# CHECK-INST: msubs %e14, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xea,0xee]
msubs %e14, %e14, %d15, %d1

# CHECK-INST: msubs %e14, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xea,0xee]
msubs %e14, %e14, %d15, %d14

# CHECK-INST: msubs %e14, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xea,0xee]
msubs %e14, %e14, %d15, %d15

# CHECK-INST: msubs %e0, %e0, %d0, -256
# CHECK: encoding: [0x33,0x00,0xf0,0x00]
msubs %e0, %e0, %d0, -256

# CHECK-INST: msubs %e0, %e0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xf7,0x00]
msubs %e0, %e0, %d0, -129

# CHECK-INST: msubs %e0, %e0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xff,0x00]
msubs %e0, %e0, %d0, -1

# CHECK-INST: msubs %e0, %e0, %d0, 0
# CHECK: encoding: [0x33,0x00,0xe0,0x00]
msubs %e0, %e0, %d0, 0

# CHECK-INST: msubs %e0, %e0, %d0, 1
# CHECK: encoding: [0x33,0x10,0xe0,0x00]
msubs %e0, %e0, %d0, 1

# CHECK-INST: msubs %e0, %e0, %d0, 128
# CHECK: encoding: [0x33,0x00,0xe8,0x00]
msubs %e0, %e0, %d0, 128

# CHECK-INST: msubs %e0, %e0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xef,0x00]
msubs %e0, %e0, %d0, 255

# CHECK-INST: msubs %e0, %e0, %d1, -256
# CHECK: encoding: [0x33,0x01,0xf0,0x00]
msubs %e0, %e0, %d1, -256

# CHECK-INST: msubs %e0, %e0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xf7,0x00]
msubs %e0, %e0, %d1, -129

# CHECK-INST: msubs %e0, %e0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xff,0x00]
msubs %e0, %e0, %d1, -1

# CHECK-INST: msubs %e0, %e0, %d1, 0
# CHECK: encoding: [0x33,0x01,0xe0,0x00]
msubs %e0, %e0, %d1, 0

# CHECK-INST: msubs %e0, %e0, %d1, 1
# CHECK: encoding: [0x33,0x11,0xe0,0x00]
msubs %e0, %e0, %d1, 1

# CHECK-INST: msubs %e0, %e0, %d1, 128
# CHECK: encoding: [0x33,0x01,0xe8,0x00]
msubs %e0, %e0, %d1, 128

# CHECK-INST: msubs %e0, %e0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xef,0x00]
msubs %e0, %e0, %d1, 255

# CHECK-INST: msubs %e0, %e0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xf0,0x00]
msubs %e0, %e0, %d14, -256

# CHECK-INST: msubs %e0, %e0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xf7,0x00]
msubs %e0, %e0, %d14, -129

# CHECK-INST: msubs %e0, %e0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xff,0x00]
msubs %e0, %e0, %d14, -1

# CHECK-INST: msubs %e0, %e0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xe0,0x00]
msubs %e0, %e0, %d14, 0

# CHECK-INST: msubs %e0, %e0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xe0,0x00]
msubs %e0, %e0, %d14, 1

# CHECK-INST: msubs %e0, %e0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xe8,0x00]
msubs %e0, %e0, %d14, 128

# CHECK-INST: msubs %e0, %e0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xef,0x00]
msubs %e0, %e0, %d14, 255

# CHECK-INST: msubs %e0, %e0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xf0,0x00]
msubs %e0, %e0, %d15, -256

# CHECK-INST: msubs %e0, %e0, %d15, -129
# CHECK: encoding: [0x33,0xff,0xf7,0x00]
msubs %e0, %e0, %d15, -129

# CHECK-INST: msubs %e0, %e0, %d15, -1
# CHECK: encoding: [0x33,0xff,0xff,0x00]
msubs %e0, %e0, %d15, -1

# CHECK-INST: msubs %e0, %e0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xe0,0x00]
msubs %e0, %e0, %d15, 0

# CHECK-INST: msubs %e0, %e0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xe0,0x00]
msubs %e0, %e0, %d15, 1

# CHECK-INST: msubs %e0, %e0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xe8,0x00]
msubs %e0, %e0, %d15, 128

# CHECK-INST: msubs %e0, %e0, %d15, 255
# CHECK: encoding: [0x33,0xff,0xef,0x00]
msubs %e0, %e0, %d15, 255

# CHECK-INST: msubs %e0, %e6, %d0, -256
# CHECK: encoding: [0x33,0x00,0xf0,0x06]
msubs %e0, %e6, %d0, -256

# CHECK-INST: msubs %e0, %e6, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xf7,0x06]
msubs %e0, %e6, %d0, -129

# CHECK-INST: msubs %e0, %e6, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xff,0x06]
msubs %e0, %e6, %d0, -1

# CHECK-INST: msubs %e0, %e6, %d0, 0
# CHECK: encoding: [0x33,0x00,0xe0,0x06]
msubs %e0, %e6, %d0, 0

# CHECK-INST: msubs %e0, %e6, %d0, 1
# CHECK: encoding: [0x33,0x10,0xe0,0x06]
msubs %e0, %e6, %d0, 1

# CHECK-INST: msubs %e0, %e6, %d0, 128
# CHECK: encoding: [0x33,0x00,0xe8,0x06]
msubs %e0, %e6, %d0, 128

# CHECK-INST: msubs %e0, %e6, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xef,0x06]
msubs %e0, %e6, %d0, 255

# CHECK-INST: msubs %e0, %e6, %d1, -256
# CHECK: encoding: [0x33,0x01,0xf0,0x06]
msubs %e0, %e6, %d1, -256

# CHECK-INST: msubs %e0, %e6, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xf7,0x06]
msubs %e0, %e6, %d1, -129

# CHECK-INST: msubs %e0, %e6, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xff,0x06]
msubs %e0, %e6, %d1, -1

# CHECK-INST: msubs %e0, %e6, %d1, 0
# CHECK: encoding: [0x33,0x01,0xe0,0x06]
msubs %e0, %e6, %d1, 0

# CHECK-INST: msubs %e0, %e6, %d1, 1
# CHECK: encoding: [0x33,0x11,0xe0,0x06]
msubs %e0, %e6, %d1, 1

# CHECK-INST: msubs %e0, %e6, %d1, 128
# CHECK: encoding: [0x33,0x01,0xe8,0x06]
msubs %e0, %e6, %d1, 128

# CHECK-INST: msubs %e0, %e6, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xef,0x06]
msubs %e0, %e6, %d1, 255

# CHECK-INST: msubs %e0, %e6, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xf0,0x06]
msubs %e0, %e6, %d14, -256

# CHECK-INST: msubs %e0, %e6, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xf7,0x06]
msubs %e0, %e6, %d14, -129

# CHECK-INST: msubs %e0, %e6, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xff,0x06]
msubs %e0, %e6, %d14, -1

# CHECK-INST: msubs %e0, %e6, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xe0,0x06]
msubs %e0, %e6, %d14, 0

# CHECK-INST: msubs %e0, %e6, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xe0,0x06]
msubs %e0, %e6, %d14, 1

# CHECK-INST: msubs %e0, %e6, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xe8,0x06]
msubs %e0, %e6, %d14, 128

# CHECK-INST: msubs %e0, %e6, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xef,0x06]
msubs %e0, %e6, %d14, 255

# CHECK-INST: msubs %e0, %e6, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xf0,0x06]
msubs %e0, %e6, %d15, -256

# CHECK-INST: msubs %e0, %e6, %d15, -129
# CHECK: encoding: [0x33,0xff,0xf7,0x06]
msubs %e0, %e6, %d15, -129

# CHECK-INST: msubs %e0, %e6, %d15, -1
# CHECK: encoding: [0x33,0xff,0xff,0x06]
msubs %e0, %e6, %d15, -1

# CHECK-INST: msubs %e0, %e6, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xe0,0x06]
msubs %e0, %e6, %d15, 0

# CHECK-INST: msubs %e0, %e6, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xe0,0x06]
msubs %e0, %e6, %d15, 1

# CHECK-INST: msubs %e0, %e6, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xe8,0x06]
msubs %e0, %e6, %d15, 128

# CHECK-INST: msubs %e0, %e6, %d15, 255
# CHECK: encoding: [0x33,0xff,0xef,0x06]
msubs %e0, %e6, %d15, 255

# CHECK-INST: msubs %e0, %e14, %d0, -256
# CHECK: encoding: [0x33,0x00,0xf0,0x0e]
msubs %e0, %e14, %d0, -256

# CHECK-INST: msubs %e0, %e14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xf7,0x0e]
msubs %e0, %e14, %d0, -129

# CHECK-INST: msubs %e0, %e14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xff,0x0e]
msubs %e0, %e14, %d0, -1

# CHECK-INST: msubs %e0, %e14, %d0, 0
# CHECK: encoding: [0x33,0x00,0xe0,0x0e]
msubs %e0, %e14, %d0, 0

# CHECK-INST: msubs %e0, %e14, %d0, 1
# CHECK: encoding: [0x33,0x10,0xe0,0x0e]
msubs %e0, %e14, %d0, 1

# CHECK-INST: msubs %e0, %e14, %d0, 128
# CHECK: encoding: [0x33,0x00,0xe8,0x0e]
msubs %e0, %e14, %d0, 128

# CHECK-INST: msubs %e0, %e14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xef,0x0e]
msubs %e0, %e14, %d0, 255

# CHECK-INST: msubs %e0, %e14, %d1, -256
# CHECK: encoding: [0x33,0x01,0xf0,0x0e]
msubs %e0, %e14, %d1, -256

# CHECK-INST: msubs %e0, %e14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xf7,0x0e]
msubs %e0, %e14, %d1, -129

# CHECK-INST: msubs %e0, %e14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xff,0x0e]
msubs %e0, %e14, %d1, -1

# CHECK-INST: msubs %e0, %e14, %d1, 0
# CHECK: encoding: [0x33,0x01,0xe0,0x0e]
msubs %e0, %e14, %d1, 0

# CHECK-INST: msubs %e0, %e14, %d1, 1
# CHECK: encoding: [0x33,0x11,0xe0,0x0e]
msubs %e0, %e14, %d1, 1

# CHECK-INST: msubs %e0, %e14, %d1, 128
# CHECK: encoding: [0x33,0x01,0xe8,0x0e]
msubs %e0, %e14, %d1, 128

# CHECK-INST: msubs %e0, %e14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xef,0x0e]
msubs %e0, %e14, %d1, 255

# CHECK-INST: msubs %e0, %e14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xf0,0x0e]
msubs %e0, %e14, %d14, -256

# CHECK-INST: msubs %e0, %e14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xf7,0x0e]
msubs %e0, %e14, %d14, -129

# CHECK-INST: msubs %e0, %e14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xff,0x0e]
msubs %e0, %e14, %d14, -1

# CHECK-INST: msubs %e0, %e14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xe0,0x0e]
msubs %e0, %e14, %d14, 0

# CHECK-INST: msubs %e0, %e14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xe0,0x0e]
msubs %e0, %e14, %d14, 1

# CHECK-INST: msubs %e0, %e14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xe8,0x0e]
msubs %e0, %e14, %d14, 128

# CHECK-INST: msubs %e0, %e14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xef,0x0e]
msubs %e0, %e14, %d14, 255

# CHECK-INST: msubs %e0, %e14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xf0,0x0e]
msubs %e0, %e14, %d15, -256

# CHECK-INST: msubs %e0, %e14, %d15, -129
# CHECK: encoding: [0x33,0xff,0xf7,0x0e]
msubs %e0, %e14, %d15, -129

# CHECK-INST: msubs %e0, %e14, %d15, -1
# CHECK: encoding: [0x33,0xff,0xff,0x0e]
msubs %e0, %e14, %d15, -1

# CHECK-INST: msubs %e0, %e14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xe0,0x0e]
msubs %e0, %e14, %d15, 0

# CHECK-INST: msubs %e0, %e14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xe0,0x0e]
msubs %e0, %e14, %d15, 1

# CHECK-INST: msubs %e0, %e14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xe8,0x0e]
msubs %e0, %e14, %d15, 128

# CHECK-INST: msubs %e0, %e14, %d15, 255
# CHECK: encoding: [0x33,0xff,0xef,0x0e]
msubs %e0, %e14, %d15, 255

# CHECK-INST: msubs %e6, %e0, %d0, -256
# CHECK: encoding: [0x33,0x00,0xf0,0x60]
msubs %e6, %e0, %d0, -256

# CHECK-INST: msubs %e6, %e0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xf7,0x60]
msubs %e6, %e0, %d0, -129

# CHECK-INST: msubs %e6, %e0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xff,0x60]
msubs %e6, %e0, %d0, -1

# CHECK-INST: msubs %e6, %e0, %d0, 0
# CHECK: encoding: [0x33,0x00,0xe0,0x60]
msubs %e6, %e0, %d0, 0

# CHECK-INST: msubs %e6, %e0, %d0, 1
# CHECK: encoding: [0x33,0x10,0xe0,0x60]
msubs %e6, %e0, %d0, 1

# CHECK-INST: msubs %e6, %e0, %d0, 128
# CHECK: encoding: [0x33,0x00,0xe8,0x60]
msubs %e6, %e0, %d0, 128

# CHECK-INST: msubs %e6, %e0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xef,0x60]
msubs %e6, %e0, %d0, 255

# CHECK-INST: msubs %e6, %e0, %d1, -256
# CHECK: encoding: [0x33,0x01,0xf0,0x60]
msubs %e6, %e0, %d1, -256

# CHECK-INST: msubs %e6, %e0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xf7,0x60]
msubs %e6, %e0, %d1, -129

# CHECK-INST: msubs %e6, %e0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xff,0x60]
msubs %e6, %e0, %d1, -1

# CHECK-INST: msubs %e6, %e0, %d1, 0
# CHECK: encoding: [0x33,0x01,0xe0,0x60]
msubs %e6, %e0, %d1, 0

# CHECK-INST: msubs %e6, %e0, %d1, 1
# CHECK: encoding: [0x33,0x11,0xe0,0x60]
msubs %e6, %e0, %d1, 1

# CHECK-INST: msubs %e6, %e0, %d1, 128
# CHECK: encoding: [0x33,0x01,0xe8,0x60]
msubs %e6, %e0, %d1, 128

# CHECK-INST: msubs %e6, %e0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xef,0x60]
msubs %e6, %e0, %d1, 255

# CHECK-INST: msubs %e6, %e0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xf0,0x60]
msubs %e6, %e0, %d14, -256

# CHECK-INST: msubs %e6, %e0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xf7,0x60]
msubs %e6, %e0, %d14, -129

# CHECK-INST: msubs %e6, %e0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xff,0x60]
msubs %e6, %e0, %d14, -1

# CHECK-INST: msubs %e6, %e0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xe0,0x60]
msubs %e6, %e0, %d14, 0

# CHECK-INST: msubs %e6, %e0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xe0,0x60]
msubs %e6, %e0, %d14, 1

# CHECK-INST: msubs %e6, %e0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xe8,0x60]
msubs %e6, %e0, %d14, 128

# CHECK-INST: msubs %e6, %e0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xef,0x60]
msubs %e6, %e0, %d14, 255

# CHECK-INST: msubs %e6, %e0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xf0,0x60]
msubs %e6, %e0, %d15, -256

# CHECK-INST: msubs %e6, %e0, %d15, -129
# CHECK: encoding: [0x33,0xff,0xf7,0x60]
msubs %e6, %e0, %d15, -129

# CHECK-INST: msubs %e6, %e0, %d15, -1
# CHECK: encoding: [0x33,0xff,0xff,0x60]
msubs %e6, %e0, %d15, -1

# CHECK-INST: msubs %e6, %e0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xe0,0x60]
msubs %e6, %e0, %d15, 0

# CHECK-INST: msubs %e6, %e0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xe0,0x60]
msubs %e6, %e0, %d15, 1

# CHECK-INST: msubs %e6, %e0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xe8,0x60]
msubs %e6, %e0, %d15, 128

# CHECK-INST: msubs %e6, %e0, %d15, 255
# CHECK: encoding: [0x33,0xff,0xef,0x60]
msubs %e6, %e0, %d15, 255

# CHECK-INST: msubs %e6, %e6, %d0, -256
# CHECK: encoding: [0x33,0x00,0xf0,0x66]
msubs %e6, %e6, %d0, -256

# CHECK-INST: msubs %e6, %e6, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xf7,0x66]
msubs %e6, %e6, %d0, -129

# CHECK-INST: msubs %e6, %e6, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xff,0x66]
msubs %e6, %e6, %d0, -1

# CHECK-INST: msubs %e6, %e6, %d0, 0
# CHECK: encoding: [0x33,0x00,0xe0,0x66]
msubs %e6, %e6, %d0, 0

# CHECK-INST: msubs %e6, %e6, %d0, 1
# CHECK: encoding: [0x33,0x10,0xe0,0x66]
msubs %e6, %e6, %d0, 1

# CHECK-INST: msubs %e6, %e6, %d0, 128
# CHECK: encoding: [0x33,0x00,0xe8,0x66]
msubs %e6, %e6, %d0, 128

# CHECK-INST: msubs %e6, %e6, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xef,0x66]
msubs %e6, %e6, %d0, 255

# CHECK-INST: msubs %e6, %e6, %d1, -256
# CHECK: encoding: [0x33,0x01,0xf0,0x66]
msubs %e6, %e6, %d1, -256

# CHECK-INST: msubs %e6, %e6, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xf7,0x66]
msubs %e6, %e6, %d1, -129

# CHECK-INST: msubs %e6, %e6, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xff,0x66]
msubs %e6, %e6, %d1, -1

# CHECK-INST: msubs %e6, %e6, %d1, 0
# CHECK: encoding: [0x33,0x01,0xe0,0x66]
msubs %e6, %e6, %d1, 0

# CHECK-INST: msubs %e6, %e6, %d1, 1
# CHECK: encoding: [0x33,0x11,0xe0,0x66]
msubs %e6, %e6, %d1, 1

# CHECK-INST: msubs %e6, %e6, %d1, 128
# CHECK: encoding: [0x33,0x01,0xe8,0x66]
msubs %e6, %e6, %d1, 128

# CHECK-INST: msubs %e6, %e6, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xef,0x66]
msubs %e6, %e6, %d1, 255

# CHECK-INST: msubs %e6, %e6, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xf0,0x66]
msubs %e6, %e6, %d14, -256

# CHECK-INST: msubs %e6, %e6, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xf7,0x66]
msubs %e6, %e6, %d14, -129

# CHECK-INST: msubs %e6, %e6, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xff,0x66]
msubs %e6, %e6, %d14, -1

# CHECK-INST: msubs %e6, %e6, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xe0,0x66]
msubs %e6, %e6, %d14, 0

# CHECK-INST: msubs %e6, %e6, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xe0,0x66]
msubs %e6, %e6, %d14, 1

# CHECK-INST: msubs %e6, %e6, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xe8,0x66]
msubs %e6, %e6, %d14, 128

# CHECK-INST: msubs %e6, %e6, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xef,0x66]
msubs %e6, %e6, %d14, 255

# CHECK-INST: msubs %e6, %e6, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xf0,0x66]
msubs %e6, %e6, %d15, -256

# CHECK-INST: msubs %e6, %e6, %d15, -129
# CHECK: encoding: [0x33,0xff,0xf7,0x66]
msubs %e6, %e6, %d15, -129

# CHECK-INST: msubs %e6, %e6, %d15, -1
# CHECK: encoding: [0x33,0xff,0xff,0x66]
msubs %e6, %e6, %d15, -1

# CHECK-INST: msubs %e6, %e6, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xe0,0x66]
msubs %e6, %e6, %d15, 0

# CHECK-INST: msubs %e6, %e6, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xe0,0x66]
msubs %e6, %e6, %d15, 1

# CHECK-INST: msubs %e6, %e6, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xe8,0x66]
msubs %e6, %e6, %d15, 128

# CHECK-INST: msubs %e6, %e6, %d15, 255
# CHECK: encoding: [0x33,0xff,0xef,0x66]
msubs %e6, %e6, %d15, 255

# CHECK-INST: msubs %e6, %e14, %d0, -256
# CHECK: encoding: [0x33,0x00,0xf0,0x6e]
msubs %e6, %e14, %d0, -256

# CHECK-INST: msubs %e6, %e14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xf7,0x6e]
msubs %e6, %e14, %d0, -129

# CHECK-INST: msubs %e6, %e14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xff,0x6e]
msubs %e6, %e14, %d0, -1

# CHECK-INST: msubs %e6, %e14, %d0, 0
# CHECK: encoding: [0x33,0x00,0xe0,0x6e]
msubs %e6, %e14, %d0, 0

# CHECK-INST: msubs %e6, %e14, %d0, 1
# CHECK: encoding: [0x33,0x10,0xe0,0x6e]
msubs %e6, %e14, %d0, 1

# CHECK-INST: msubs %e6, %e14, %d0, 128
# CHECK: encoding: [0x33,0x00,0xe8,0x6e]
msubs %e6, %e14, %d0, 128

# CHECK-INST: msubs %e6, %e14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xef,0x6e]
msubs %e6, %e14, %d0, 255

# CHECK-INST: msubs %e6, %e14, %d1, -256
# CHECK: encoding: [0x33,0x01,0xf0,0x6e]
msubs %e6, %e14, %d1, -256

# CHECK-INST: msubs %e6, %e14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xf7,0x6e]
msubs %e6, %e14, %d1, -129

# CHECK-INST: msubs %e6, %e14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xff,0x6e]
msubs %e6, %e14, %d1, -1

# CHECK-INST: msubs %e6, %e14, %d1, 0
# CHECK: encoding: [0x33,0x01,0xe0,0x6e]
msubs %e6, %e14, %d1, 0

# CHECK-INST: msubs %e6, %e14, %d1, 1
# CHECK: encoding: [0x33,0x11,0xe0,0x6e]
msubs %e6, %e14, %d1, 1

# CHECK-INST: msubs %e6, %e14, %d1, 128
# CHECK: encoding: [0x33,0x01,0xe8,0x6e]
msubs %e6, %e14, %d1, 128

# CHECK-INST: msubs %e6, %e14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xef,0x6e]
msubs %e6, %e14, %d1, 255

# CHECK-INST: msubs %e6, %e14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xf0,0x6e]
msubs %e6, %e14, %d14, -256

# CHECK-INST: msubs %e6, %e14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xf7,0x6e]
msubs %e6, %e14, %d14, -129

# CHECK-INST: msubs %e6, %e14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xff,0x6e]
msubs %e6, %e14, %d14, -1

# CHECK-INST: msubs %e6, %e14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xe0,0x6e]
msubs %e6, %e14, %d14, 0

# CHECK-INST: msubs %e6, %e14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xe0,0x6e]
msubs %e6, %e14, %d14, 1

# CHECK-INST: msubs %e6, %e14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xe8,0x6e]
msubs %e6, %e14, %d14, 128

# CHECK-INST: msubs %e6, %e14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xef,0x6e]
msubs %e6, %e14, %d14, 255

# CHECK-INST: msubs %e6, %e14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xf0,0x6e]
msubs %e6, %e14, %d15, -256

# CHECK-INST: msubs %e6, %e14, %d15, -129
# CHECK: encoding: [0x33,0xff,0xf7,0x6e]
msubs %e6, %e14, %d15, -129

# CHECK-INST: msubs %e6, %e14, %d15, -1
# CHECK: encoding: [0x33,0xff,0xff,0x6e]
msubs %e6, %e14, %d15, -1

# CHECK-INST: msubs %e6, %e14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xe0,0x6e]
msubs %e6, %e14, %d15, 0

# CHECK-INST: msubs %e6, %e14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xe0,0x6e]
msubs %e6, %e14, %d15, 1

# CHECK-INST: msubs %e6, %e14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xe8,0x6e]
msubs %e6, %e14, %d15, 128

# CHECK-INST: msubs %e6, %e14, %d15, 255
# CHECK: encoding: [0x33,0xff,0xef,0x6e]
msubs %e6, %e14, %d15, 255

# CHECK-INST: msubs %e14, %e0, %d0, -256
# CHECK: encoding: [0x33,0x00,0xf0,0xe0]
msubs %e14, %e0, %d0, -256

# CHECK-INST: msubs %e14, %e0, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xf7,0xe0]
msubs %e14, %e0, %d0, -129

# CHECK-INST: msubs %e14, %e0, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xff,0xe0]
msubs %e14, %e0, %d0, -1

# CHECK-INST: msubs %e14, %e0, %d0, 0
# CHECK: encoding: [0x33,0x00,0xe0,0xe0]
msubs %e14, %e0, %d0, 0

# CHECK-INST: msubs %e14, %e0, %d0, 1
# CHECK: encoding: [0x33,0x10,0xe0,0xe0]
msubs %e14, %e0, %d0, 1

# CHECK-INST: msubs %e14, %e0, %d0, 128
# CHECK: encoding: [0x33,0x00,0xe8,0xe0]
msubs %e14, %e0, %d0, 128

# CHECK-INST: msubs %e14, %e0, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xef,0xe0]
msubs %e14, %e0, %d0, 255

# CHECK-INST: msubs %e14, %e0, %d1, -256
# CHECK: encoding: [0x33,0x01,0xf0,0xe0]
msubs %e14, %e0, %d1, -256

# CHECK-INST: msubs %e14, %e0, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xf7,0xe0]
msubs %e14, %e0, %d1, -129

# CHECK-INST: msubs %e14, %e0, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xff,0xe0]
msubs %e14, %e0, %d1, -1

# CHECK-INST: msubs %e14, %e0, %d1, 0
# CHECK: encoding: [0x33,0x01,0xe0,0xe0]
msubs %e14, %e0, %d1, 0

# CHECK-INST: msubs %e14, %e0, %d1, 1
# CHECK: encoding: [0x33,0x11,0xe0,0xe0]
msubs %e14, %e0, %d1, 1

# CHECK-INST: msubs %e14, %e0, %d1, 128
# CHECK: encoding: [0x33,0x01,0xe8,0xe0]
msubs %e14, %e0, %d1, 128

# CHECK-INST: msubs %e14, %e0, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xef,0xe0]
msubs %e14, %e0, %d1, 255

# CHECK-INST: msubs %e14, %e0, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xf0,0xe0]
msubs %e14, %e0, %d14, -256

# CHECK-INST: msubs %e14, %e0, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xf7,0xe0]
msubs %e14, %e0, %d14, -129

# CHECK-INST: msubs %e14, %e0, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xff,0xe0]
msubs %e14, %e0, %d14, -1

# CHECK-INST: msubs %e14, %e0, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xe0,0xe0]
msubs %e14, %e0, %d14, 0

# CHECK-INST: msubs %e14, %e0, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xe0,0xe0]
msubs %e14, %e0, %d14, 1

# CHECK-INST: msubs %e14, %e0, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xe8,0xe0]
msubs %e14, %e0, %d14, 128

# CHECK-INST: msubs %e14, %e0, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xef,0xe0]
msubs %e14, %e0, %d14, 255

# CHECK-INST: msubs %e14, %e0, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xf0,0xe0]
msubs %e14, %e0, %d15, -256

# CHECK-INST: msubs %e14, %e0, %d15, -129
# CHECK: encoding: [0x33,0xff,0xf7,0xe0]
msubs %e14, %e0, %d15, -129

# CHECK-INST: msubs %e14, %e0, %d15, -1
# CHECK: encoding: [0x33,0xff,0xff,0xe0]
msubs %e14, %e0, %d15, -1

# CHECK-INST: msubs %e14, %e0, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xe0,0xe0]
msubs %e14, %e0, %d15, 0

# CHECK-INST: msubs %e14, %e0, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xe0,0xe0]
msubs %e14, %e0, %d15, 1

# CHECK-INST: msubs %e14, %e0, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xe8,0xe0]
msubs %e14, %e0, %d15, 128

# CHECK-INST: msubs %e14, %e0, %d15, 255
# CHECK: encoding: [0x33,0xff,0xef,0xe0]
msubs %e14, %e0, %d15, 255

# CHECK-INST: msubs %e14, %e6, %d0, -256
# CHECK: encoding: [0x33,0x00,0xf0,0xe6]
msubs %e14, %e6, %d0, -256

# CHECK-INST: msubs %e14, %e6, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xf7,0xe6]
msubs %e14, %e6, %d0, -129

# CHECK-INST: msubs %e14, %e6, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xff,0xe6]
msubs %e14, %e6, %d0, -1

# CHECK-INST: msubs %e14, %e6, %d0, 0
# CHECK: encoding: [0x33,0x00,0xe0,0xe6]
msubs %e14, %e6, %d0, 0

# CHECK-INST: msubs %e14, %e6, %d0, 1
# CHECK: encoding: [0x33,0x10,0xe0,0xe6]
msubs %e14, %e6, %d0, 1

# CHECK-INST: msubs %e14, %e6, %d0, 128
# CHECK: encoding: [0x33,0x00,0xe8,0xe6]
msubs %e14, %e6, %d0, 128

# CHECK-INST: msubs %e14, %e6, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xef,0xe6]
msubs %e14, %e6, %d0, 255

# CHECK-INST: msubs %e14, %e6, %d1, -256
# CHECK: encoding: [0x33,0x01,0xf0,0xe6]
msubs %e14, %e6, %d1, -256

# CHECK-INST: msubs %e14, %e6, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xf7,0xe6]
msubs %e14, %e6, %d1, -129

# CHECK-INST: msubs %e14, %e6, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xff,0xe6]
msubs %e14, %e6, %d1, -1

# CHECK-INST: msubs %e14, %e6, %d1, 0
# CHECK: encoding: [0x33,0x01,0xe0,0xe6]
msubs %e14, %e6, %d1, 0

# CHECK-INST: msubs %e14, %e6, %d1, 1
# CHECK: encoding: [0x33,0x11,0xe0,0xe6]
msubs %e14, %e6, %d1, 1

# CHECK-INST: msubs %e14, %e6, %d1, 128
# CHECK: encoding: [0x33,0x01,0xe8,0xe6]
msubs %e14, %e6, %d1, 128

# CHECK-INST: msubs %e14, %e6, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xef,0xe6]
msubs %e14, %e6, %d1, 255

# CHECK-INST: msubs %e14, %e6, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xf0,0xe6]
msubs %e14, %e6, %d14, -256

# CHECK-INST: msubs %e14, %e6, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xf7,0xe6]
msubs %e14, %e6, %d14, -129

# CHECK-INST: msubs %e14, %e6, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xff,0xe6]
msubs %e14, %e6, %d14, -1

# CHECK-INST: msubs %e14, %e6, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xe0,0xe6]
msubs %e14, %e6, %d14, 0

# CHECK-INST: msubs %e14, %e6, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xe0,0xe6]
msubs %e14, %e6, %d14, 1

# CHECK-INST: msubs %e14, %e6, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xe8,0xe6]
msubs %e14, %e6, %d14, 128

# CHECK-INST: msubs %e14, %e6, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xef,0xe6]
msubs %e14, %e6, %d14, 255

# CHECK-INST: msubs %e14, %e6, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xf0,0xe6]
msubs %e14, %e6, %d15, -256

# CHECK-INST: msubs %e14, %e6, %d15, -129
# CHECK: encoding: [0x33,0xff,0xf7,0xe6]
msubs %e14, %e6, %d15, -129

# CHECK-INST: msubs %e14, %e6, %d15, -1
# CHECK: encoding: [0x33,0xff,0xff,0xe6]
msubs %e14, %e6, %d15, -1

# CHECK-INST: msubs %e14, %e6, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xe0,0xe6]
msubs %e14, %e6, %d15, 0

# CHECK-INST: msubs %e14, %e6, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xe0,0xe6]
msubs %e14, %e6, %d15, 1

# CHECK-INST: msubs %e14, %e6, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xe8,0xe6]
msubs %e14, %e6, %d15, 128

# CHECK-INST: msubs %e14, %e6, %d15, 255
# CHECK: encoding: [0x33,0xff,0xef,0xe6]
msubs %e14, %e6, %d15, 255

# CHECK-INST: msubs %e14, %e14, %d0, -256
# CHECK: encoding: [0x33,0x00,0xf0,0xee]
msubs %e14, %e14, %d0, -256

# CHECK-INST: msubs %e14, %e14, %d0, -129
# CHECK: encoding: [0x33,0xf0,0xf7,0xee]
msubs %e14, %e14, %d0, -129

# CHECK-INST: msubs %e14, %e14, %d0, -1
# CHECK: encoding: [0x33,0xf0,0xff,0xee]
msubs %e14, %e14, %d0, -1

# CHECK-INST: msubs %e14, %e14, %d0, 0
# CHECK: encoding: [0x33,0x00,0xe0,0xee]
msubs %e14, %e14, %d0, 0

# CHECK-INST: msubs %e14, %e14, %d0, 1
# CHECK: encoding: [0x33,0x10,0xe0,0xee]
msubs %e14, %e14, %d0, 1

# CHECK-INST: msubs %e14, %e14, %d0, 128
# CHECK: encoding: [0x33,0x00,0xe8,0xee]
msubs %e14, %e14, %d0, 128

# CHECK-INST: msubs %e14, %e14, %d0, 255
# CHECK: encoding: [0x33,0xf0,0xef,0xee]
msubs %e14, %e14, %d0, 255

# CHECK-INST: msubs %e14, %e14, %d1, -256
# CHECK: encoding: [0x33,0x01,0xf0,0xee]
msubs %e14, %e14, %d1, -256

# CHECK-INST: msubs %e14, %e14, %d1, -129
# CHECK: encoding: [0x33,0xf1,0xf7,0xee]
msubs %e14, %e14, %d1, -129

# CHECK-INST: msubs %e14, %e14, %d1, -1
# CHECK: encoding: [0x33,0xf1,0xff,0xee]
msubs %e14, %e14, %d1, -1

# CHECK-INST: msubs %e14, %e14, %d1, 0
# CHECK: encoding: [0x33,0x01,0xe0,0xee]
msubs %e14, %e14, %d1, 0

# CHECK-INST: msubs %e14, %e14, %d1, 1
# CHECK: encoding: [0x33,0x11,0xe0,0xee]
msubs %e14, %e14, %d1, 1

# CHECK-INST: msubs %e14, %e14, %d1, 128
# CHECK: encoding: [0x33,0x01,0xe8,0xee]
msubs %e14, %e14, %d1, 128

# CHECK-INST: msubs %e14, %e14, %d1, 255
# CHECK: encoding: [0x33,0xf1,0xef,0xee]
msubs %e14, %e14, %d1, 255

# CHECK-INST: msubs %e14, %e14, %d14, -256
# CHECK: encoding: [0x33,0x0e,0xf0,0xee]
msubs %e14, %e14, %d14, -256

# CHECK-INST: msubs %e14, %e14, %d14, -129
# CHECK: encoding: [0x33,0xfe,0xf7,0xee]
msubs %e14, %e14, %d14, -129

# CHECK-INST: msubs %e14, %e14, %d14, -1
# CHECK: encoding: [0x33,0xfe,0xff,0xee]
msubs %e14, %e14, %d14, -1

# CHECK-INST: msubs %e14, %e14, %d14, 0
# CHECK: encoding: [0x33,0x0e,0xe0,0xee]
msubs %e14, %e14, %d14, 0

# CHECK-INST: msubs %e14, %e14, %d14, 1
# CHECK: encoding: [0x33,0x1e,0xe0,0xee]
msubs %e14, %e14, %d14, 1

# CHECK-INST: msubs %e14, %e14, %d14, 128
# CHECK: encoding: [0x33,0x0e,0xe8,0xee]
msubs %e14, %e14, %d14, 128

# CHECK-INST: msubs %e14, %e14, %d14, 255
# CHECK: encoding: [0x33,0xfe,0xef,0xee]
msubs %e14, %e14, %d14, 255

# CHECK-INST: msubs %e14, %e14, %d15, -256
# CHECK: encoding: [0x33,0x0f,0xf0,0xee]
msubs %e14, %e14, %d15, -256

# CHECK-INST: msubs %e14, %e14, %d15, -129
# CHECK: encoding: [0x33,0xff,0xf7,0xee]
msubs %e14, %e14, %d15, -129

# CHECK-INST: msubs %e14, %e14, %d15, -1
# CHECK: encoding: [0x33,0xff,0xff,0xee]
msubs %e14, %e14, %d15, -1

# CHECK-INST: msubs %e14, %e14, %d15, 0
# CHECK: encoding: [0x33,0x0f,0xe0,0xee]
msubs %e14, %e14, %d15, 0

# CHECK-INST: msubs %e14, %e14, %d15, 1
# CHECK: encoding: [0x33,0x1f,0xe0,0xee]
msubs %e14, %e14, %d15, 1

# CHECK-INST: msubs %e14, %e14, %d15, 128
# CHECK: encoding: [0x33,0x0f,0xe8,0xee]
msubs %e14, %e14, %d15, 128

# CHECK-INST: msubs %e14, %e14, %d15, 255
# CHECK: encoding: [0x33,0xff,0xef,0xee]
msubs %e14, %e14, %d15, 255

# CHECK-INST: msubs.u %d0, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0x00]
msubs.u %d0, %d0, %d0, %d0

# CHECK-INST: msubs.u %d0, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0x00]
msubs.u %d0, %d0, %d0, %d1

# CHECK-INST: msubs.u %d0, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0x00]
msubs.u %d0, %d0, %d0, %d14

# CHECK-INST: msubs.u %d0, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0x00]
msubs.u %d0, %d0, %d0, %d15

# CHECK-INST: msubs.u %d0, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0x00]
msubs.u %d0, %d0, %d1, %d0

# CHECK-INST: msubs.u %d0, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0x00]
msubs.u %d0, %d0, %d1, %d1

# CHECK-INST: msubs.u %d0, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0x00]
msubs.u %d0, %d0, %d1, %d14

# CHECK-INST: msubs.u %d0, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0x00]
msubs.u %d0, %d0, %d1, %d15

# CHECK-INST: msubs.u %d0, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0x00]
msubs.u %d0, %d0, %d14, %d0

# CHECK-INST: msubs.u %d0, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0x00]
msubs.u %d0, %d0, %d14, %d1

# CHECK-INST: msubs.u %d0, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0x00]
msubs.u %d0, %d0, %d14, %d14

# CHECK-INST: msubs.u %d0, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0x00]
msubs.u %d0, %d0, %d14, %d15

# CHECK-INST: msubs.u %d0, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0x00]
msubs.u %d0, %d0, %d15, %d0

# CHECK-INST: msubs.u %d0, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0x00]
msubs.u %d0, %d0, %d15, %d1

# CHECK-INST: msubs.u %d0, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0x00]
msubs.u %d0, %d0, %d15, %d14

# CHECK-INST: msubs.u %d0, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0x00]
msubs.u %d0, %d0, %d15, %d15

# CHECK-INST: msubs.u %d0, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0x01]
msubs.u %d0, %d1, %d0, %d0

# CHECK-INST: msubs.u %d0, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0x01]
msubs.u %d0, %d1, %d0, %d1

# CHECK-INST: msubs.u %d0, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0x01]
msubs.u %d0, %d1, %d0, %d14

# CHECK-INST: msubs.u %d0, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0x01]
msubs.u %d0, %d1, %d0, %d15

# CHECK-INST: msubs.u %d0, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0x01]
msubs.u %d0, %d1, %d1, %d0

# CHECK-INST: msubs.u %d0, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0x01]
msubs.u %d0, %d1, %d1, %d1

# CHECK-INST: msubs.u %d0, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0x01]
msubs.u %d0, %d1, %d1, %d14

# CHECK-INST: msubs.u %d0, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0x01]
msubs.u %d0, %d1, %d1, %d15

# CHECK-INST: msubs.u %d0, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0x01]
msubs.u %d0, %d1, %d14, %d0

# CHECK-INST: msubs.u %d0, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0x01]
msubs.u %d0, %d1, %d14, %d1

# CHECK-INST: msubs.u %d0, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0x01]
msubs.u %d0, %d1, %d14, %d14

# CHECK-INST: msubs.u %d0, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0x01]
msubs.u %d0, %d1, %d14, %d15

# CHECK-INST: msubs.u %d0, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0x01]
msubs.u %d0, %d1, %d15, %d0

# CHECK-INST: msubs.u %d0, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0x01]
msubs.u %d0, %d1, %d15, %d1

# CHECK-INST: msubs.u %d0, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0x01]
msubs.u %d0, %d1, %d15, %d14

# CHECK-INST: msubs.u %d0, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0x01]
msubs.u %d0, %d1, %d15, %d15

# CHECK-INST: msubs.u %d0, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0x0e]
msubs.u %d0, %d14, %d0, %d0

# CHECK-INST: msubs.u %d0, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0x0e]
msubs.u %d0, %d14, %d0, %d1

# CHECK-INST: msubs.u %d0, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0x0e]
msubs.u %d0, %d14, %d0, %d14

# CHECK-INST: msubs.u %d0, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0x0e]
msubs.u %d0, %d14, %d0, %d15

# CHECK-INST: msubs.u %d0, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0x0e]
msubs.u %d0, %d14, %d1, %d0

# CHECK-INST: msubs.u %d0, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0x0e]
msubs.u %d0, %d14, %d1, %d1

# CHECK-INST: msubs.u %d0, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0x0e]
msubs.u %d0, %d14, %d1, %d14

# CHECK-INST: msubs.u %d0, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0x0e]
msubs.u %d0, %d14, %d1, %d15

# CHECK-INST: msubs.u %d0, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0x0e]
msubs.u %d0, %d14, %d14, %d0

# CHECK-INST: msubs.u %d0, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0x0e]
msubs.u %d0, %d14, %d14, %d1

# CHECK-INST: msubs.u %d0, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0x0e]
msubs.u %d0, %d14, %d14, %d14

# CHECK-INST: msubs.u %d0, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0x0e]
msubs.u %d0, %d14, %d14, %d15

# CHECK-INST: msubs.u %d0, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0x0e]
msubs.u %d0, %d14, %d15, %d0

# CHECK-INST: msubs.u %d0, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0x0e]
msubs.u %d0, %d14, %d15, %d1

# CHECK-INST: msubs.u %d0, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0x0e]
msubs.u %d0, %d14, %d15, %d14

# CHECK-INST: msubs.u %d0, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0x0e]
msubs.u %d0, %d14, %d15, %d15

# CHECK-INST: msubs.u %d0, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0x0f]
msubs.u %d0, %d15, %d0, %d0

# CHECK-INST: msubs.u %d0, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0x0f]
msubs.u %d0, %d15, %d0, %d1

# CHECK-INST: msubs.u %d0, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0x0f]
msubs.u %d0, %d15, %d0, %d14

# CHECK-INST: msubs.u %d0, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0x0f]
msubs.u %d0, %d15, %d0, %d15

# CHECK-INST: msubs.u %d0, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0x0f]
msubs.u %d0, %d15, %d1, %d0

# CHECK-INST: msubs.u %d0, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0x0f]
msubs.u %d0, %d15, %d1, %d1

# CHECK-INST: msubs.u %d0, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0x0f]
msubs.u %d0, %d15, %d1, %d14

# CHECK-INST: msubs.u %d0, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0x0f]
msubs.u %d0, %d15, %d1, %d15

# CHECK-INST: msubs.u %d0, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0x0f]
msubs.u %d0, %d15, %d14, %d0

# CHECK-INST: msubs.u %d0, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0x0f]
msubs.u %d0, %d15, %d14, %d1

# CHECK-INST: msubs.u %d0, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0x0f]
msubs.u %d0, %d15, %d14, %d14

# CHECK-INST: msubs.u %d0, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0x0f]
msubs.u %d0, %d15, %d14, %d15

# CHECK-INST: msubs.u %d0, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0x0f]
msubs.u %d0, %d15, %d15, %d0

# CHECK-INST: msubs.u %d0, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0x0f]
msubs.u %d0, %d15, %d15, %d1

# CHECK-INST: msubs.u %d0, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0x0f]
msubs.u %d0, %d15, %d15, %d14

# CHECK-INST: msubs.u %d0, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0x0f]
msubs.u %d0, %d15, %d15, %d15

# CHECK-INST: msubs.u %d1, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0x10]
msubs.u %d1, %d0, %d0, %d0

# CHECK-INST: msubs.u %d1, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0x10]
msubs.u %d1, %d0, %d0, %d1

# CHECK-INST: msubs.u %d1, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0x10]
msubs.u %d1, %d0, %d0, %d14

# CHECK-INST: msubs.u %d1, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0x10]
msubs.u %d1, %d0, %d0, %d15

# CHECK-INST: msubs.u %d1, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0x10]
msubs.u %d1, %d0, %d1, %d0

# CHECK-INST: msubs.u %d1, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0x10]
msubs.u %d1, %d0, %d1, %d1

# CHECK-INST: msubs.u %d1, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0x10]
msubs.u %d1, %d0, %d1, %d14

# CHECK-INST: msubs.u %d1, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0x10]
msubs.u %d1, %d0, %d1, %d15

# CHECK-INST: msubs.u %d1, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0x10]
msubs.u %d1, %d0, %d14, %d0

# CHECK-INST: msubs.u %d1, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0x10]
msubs.u %d1, %d0, %d14, %d1

# CHECK-INST: msubs.u %d1, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0x10]
msubs.u %d1, %d0, %d14, %d14

# CHECK-INST: msubs.u %d1, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0x10]
msubs.u %d1, %d0, %d14, %d15

# CHECK-INST: msubs.u %d1, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0x10]
msubs.u %d1, %d0, %d15, %d0

# CHECK-INST: msubs.u %d1, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0x10]
msubs.u %d1, %d0, %d15, %d1

# CHECK-INST: msubs.u %d1, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0x10]
msubs.u %d1, %d0, %d15, %d14

# CHECK-INST: msubs.u %d1, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0x10]
msubs.u %d1, %d0, %d15, %d15

# CHECK-INST: msubs.u %d1, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0x11]
msubs.u %d1, %d1, %d0, %d0

# CHECK-INST: msubs.u %d1, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0x11]
msubs.u %d1, %d1, %d0, %d1

# CHECK-INST: msubs.u %d1, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0x11]
msubs.u %d1, %d1, %d0, %d14

# CHECK-INST: msubs.u %d1, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0x11]
msubs.u %d1, %d1, %d0, %d15

# CHECK-INST: msubs.u %d1, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0x11]
msubs.u %d1, %d1, %d1, %d0

# CHECK-INST: msubs.u %d1, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0x11]
msubs.u %d1, %d1, %d1, %d1

# CHECK-INST: msubs.u %d1, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0x11]
msubs.u %d1, %d1, %d1, %d14

# CHECK-INST: msubs.u %d1, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0x11]
msubs.u %d1, %d1, %d1, %d15

# CHECK-INST: msubs.u %d1, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0x11]
msubs.u %d1, %d1, %d14, %d0

# CHECK-INST: msubs.u %d1, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0x11]
msubs.u %d1, %d1, %d14, %d1

# CHECK-INST: msubs.u %d1, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0x11]
msubs.u %d1, %d1, %d14, %d14

# CHECK-INST: msubs.u %d1, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0x11]
msubs.u %d1, %d1, %d14, %d15

# CHECK-INST: msubs.u %d1, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0x11]
msubs.u %d1, %d1, %d15, %d0

# CHECK-INST: msubs.u %d1, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0x11]
msubs.u %d1, %d1, %d15, %d1

# CHECK-INST: msubs.u %d1, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0x11]
msubs.u %d1, %d1, %d15, %d14

# CHECK-INST: msubs.u %d1, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0x11]
msubs.u %d1, %d1, %d15, %d15

# CHECK-INST: msubs.u %d1, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0x1e]
msubs.u %d1, %d14, %d0, %d0

# CHECK-INST: msubs.u %d1, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0x1e]
msubs.u %d1, %d14, %d0, %d1

# CHECK-INST: msubs.u %d1, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0x1e]
msubs.u %d1, %d14, %d0, %d14

# CHECK-INST: msubs.u %d1, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0x1e]
msubs.u %d1, %d14, %d0, %d15

# CHECK-INST: msubs.u %d1, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0x1e]
msubs.u %d1, %d14, %d1, %d0

# CHECK-INST: msubs.u %d1, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0x1e]
msubs.u %d1, %d14, %d1, %d1

# CHECK-INST: msubs.u %d1, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0x1e]
msubs.u %d1, %d14, %d1, %d14

# CHECK-INST: msubs.u %d1, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0x1e]
msubs.u %d1, %d14, %d1, %d15

# CHECK-INST: msubs.u %d1, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0x1e]
msubs.u %d1, %d14, %d14, %d0

# CHECK-INST: msubs.u %d1, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0x1e]
msubs.u %d1, %d14, %d14, %d1

# CHECK-INST: msubs.u %d1, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0x1e]
msubs.u %d1, %d14, %d14, %d14

# CHECK-INST: msubs.u %d1, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0x1e]
msubs.u %d1, %d14, %d14, %d15

# CHECK-INST: msubs.u %d1, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0x1e]
msubs.u %d1, %d14, %d15, %d0

# CHECK-INST: msubs.u %d1, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0x1e]
msubs.u %d1, %d14, %d15, %d1

# CHECK-INST: msubs.u %d1, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0x1e]
msubs.u %d1, %d14, %d15, %d14

# CHECK-INST: msubs.u %d1, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0x1e]
msubs.u %d1, %d14, %d15, %d15

# CHECK-INST: msubs.u %d1, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0x1f]
msubs.u %d1, %d15, %d0, %d0

# CHECK-INST: msubs.u %d1, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0x1f]
msubs.u %d1, %d15, %d0, %d1

# CHECK-INST: msubs.u %d1, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0x1f]
msubs.u %d1, %d15, %d0, %d14

# CHECK-INST: msubs.u %d1, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0x1f]
msubs.u %d1, %d15, %d0, %d15

# CHECK-INST: msubs.u %d1, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0x1f]
msubs.u %d1, %d15, %d1, %d0

# CHECK-INST: msubs.u %d1, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0x1f]
msubs.u %d1, %d15, %d1, %d1

# CHECK-INST: msubs.u %d1, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0x1f]
msubs.u %d1, %d15, %d1, %d14

# CHECK-INST: msubs.u %d1, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0x1f]
msubs.u %d1, %d15, %d1, %d15

# CHECK-INST: msubs.u %d1, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0x1f]
msubs.u %d1, %d15, %d14, %d0

# CHECK-INST: msubs.u %d1, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0x1f]
msubs.u %d1, %d15, %d14, %d1

# CHECK-INST: msubs.u %d1, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0x1f]
msubs.u %d1, %d15, %d14, %d14

# CHECK-INST: msubs.u %d1, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0x1f]
msubs.u %d1, %d15, %d14, %d15

# CHECK-INST: msubs.u %d1, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0x1f]
msubs.u %d1, %d15, %d15, %d0

# CHECK-INST: msubs.u %d1, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0x1f]
msubs.u %d1, %d15, %d15, %d1

# CHECK-INST: msubs.u %d1, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0x1f]
msubs.u %d1, %d15, %d15, %d14

# CHECK-INST: msubs.u %d1, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0x1f]
msubs.u %d1, %d15, %d15, %d15

# CHECK-INST: msubs.u %d14, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0xe0]
msubs.u %d14, %d0, %d0, %d0

# CHECK-INST: msubs.u %d14, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0xe0]
msubs.u %d14, %d0, %d0, %d1

# CHECK-INST: msubs.u %d14, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0xe0]
msubs.u %d14, %d0, %d0, %d14

# CHECK-INST: msubs.u %d14, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0xe0]
msubs.u %d14, %d0, %d0, %d15

# CHECK-INST: msubs.u %d14, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0xe0]
msubs.u %d14, %d0, %d1, %d0

# CHECK-INST: msubs.u %d14, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0xe0]
msubs.u %d14, %d0, %d1, %d1

# CHECK-INST: msubs.u %d14, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0xe0]
msubs.u %d14, %d0, %d1, %d14

# CHECK-INST: msubs.u %d14, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0xe0]
msubs.u %d14, %d0, %d1, %d15

# CHECK-INST: msubs.u %d14, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0xe0]
msubs.u %d14, %d0, %d14, %d0

# CHECK-INST: msubs.u %d14, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0xe0]
msubs.u %d14, %d0, %d14, %d1

# CHECK-INST: msubs.u %d14, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0xe0]
msubs.u %d14, %d0, %d14, %d14

# CHECK-INST: msubs.u %d14, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0xe0]
msubs.u %d14, %d0, %d14, %d15

# CHECK-INST: msubs.u %d14, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0xe0]
msubs.u %d14, %d0, %d15, %d0

# CHECK-INST: msubs.u %d14, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0xe0]
msubs.u %d14, %d0, %d15, %d1

# CHECK-INST: msubs.u %d14, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0xe0]
msubs.u %d14, %d0, %d15, %d14

# CHECK-INST: msubs.u %d14, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0xe0]
msubs.u %d14, %d0, %d15, %d15

# CHECK-INST: msubs.u %d14, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0xe1]
msubs.u %d14, %d1, %d0, %d0

# CHECK-INST: msubs.u %d14, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0xe1]
msubs.u %d14, %d1, %d0, %d1

# CHECK-INST: msubs.u %d14, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0xe1]
msubs.u %d14, %d1, %d0, %d14

# CHECK-INST: msubs.u %d14, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0xe1]
msubs.u %d14, %d1, %d0, %d15

# CHECK-INST: msubs.u %d14, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0xe1]
msubs.u %d14, %d1, %d1, %d0

# CHECK-INST: msubs.u %d14, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0xe1]
msubs.u %d14, %d1, %d1, %d1

# CHECK-INST: msubs.u %d14, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0xe1]
msubs.u %d14, %d1, %d1, %d14

# CHECK-INST: msubs.u %d14, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0xe1]
msubs.u %d14, %d1, %d1, %d15

# CHECK-INST: msubs.u %d14, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0xe1]
msubs.u %d14, %d1, %d14, %d0

# CHECK-INST: msubs.u %d14, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0xe1]
msubs.u %d14, %d1, %d14, %d1

# CHECK-INST: msubs.u %d14, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0xe1]
msubs.u %d14, %d1, %d14, %d14

# CHECK-INST: msubs.u %d14, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0xe1]
msubs.u %d14, %d1, %d14, %d15

# CHECK-INST: msubs.u %d14, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0xe1]
msubs.u %d14, %d1, %d15, %d0

# CHECK-INST: msubs.u %d14, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0xe1]
msubs.u %d14, %d1, %d15, %d1

# CHECK-INST: msubs.u %d14, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0xe1]
msubs.u %d14, %d1, %d15, %d14

# CHECK-INST: msubs.u %d14, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0xe1]
msubs.u %d14, %d1, %d15, %d15

# CHECK-INST: msubs.u %d14, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0xee]
msubs.u %d14, %d14, %d0, %d0

# CHECK-INST: msubs.u %d14, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0xee]
msubs.u %d14, %d14, %d0, %d1

# CHECK-INST: msubs.u %d14, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0xee]
msubs.u %d14, %d14, %d0, %d14

# CHECK-INST: msubs.u %d14, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0xee]
msubs.u %d14, %d14, %d0, %d15

# CHECK-INST: msubs.u %d14, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0xee]
msubs.u %d14, %d14, %d1, %d0

# CHECK-INST: msubs.u %d14, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0xee]
msubs.u %d14, %d14, %d1, %d1

# CHECK-INST: msubs.u %d14, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0xee]
msubs.u %d14, %d14, %d1, %d14

# CHECK-INST: msubs.u %d14, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0xee]
msubs.u %d14, %d14, %d1, %d15

# CHECK-INST: msubs.u %d14, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0xee]
msubs.u %d14, %d14, %d14, %d0

# CHECK-INST: msubs.u %d14, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0xee]
msubs.u %d14, %d14, %d14, %d1

# CHECK-INST: msubs.u %d14, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0xee]
msubs.u %d14, %d14, %d14, %d14

# CHECK-INST: msubs.u %d14, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0xee]
msubs.u %d14, %d14, %d14, %d15

# CHECK-INST: msubs.u %d14, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0xee]
msubs.u %d14, %d14, %d15, %d0

# CHECK-INST: msubs.u %d14, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0xee]
msubs.u %d14, %d14, %d15, %d1

# CHECK-INST: msubs.u %d14, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0xee]
msubs.u %d14, %d14, %d15, %d14

# CHECK-INST: msubs.u %d14, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0xee]
msubs.u %d14, %d14, %d15, %d15

# CHECK-INST: msubs.u %d14, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0xef]
msubs.u %d14, %d15, %d0, %d0

# CHECK-INST: msubs.u %d14, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0xef]
msubs.u %d14, %d15, %d0, %d1

# CHECK-INST: msubs.u %d14, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0xef]
msubs.u %d14, %d15, %d0, %d14

# CHECK-INST: msubs.u %d14, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0xef]
msubs.u %d14, %d15, %d0, %d15

# CHECK-INST: msubs.u %d14, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0xef]
msubs.u %d14, %d15, %d1, %d0

# CHECK-INST: msubs.u %d14, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0xef]
msubs.u %d14, %d15, %d1, %d1

# CHECK-INST: msubs.u %d14, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0xef]
msubs.u %d14, %d15, %d1, %d14

# CHECK-INST: msubs.u %d14, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0xef]
msubs.u %d14, %d15, %d1, %d15

# CHECK-INST: msubs.u %d14, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0xef]
msubs.u %d14, %d15, %d14, %d0

# CHECK-INST: msubs.u %d14, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0xef]
msubs.u %d14, %d15, %d14, %d1

# CHECK-INST: msubs.u %d14, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0xef]
msubs.u %d14, %d15, %d14, %d14

# CHECK-INST: msubs.u %d14, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0xef]
msubs.u %d14, %d15, %d14, %d15

# CHECK-INST: msubs.u %d14, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0xef]
msubs.u %d14, %d15, %d15, %d0

# CHECK-INST: msubs.u %d14, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0xef]
msubs.u %d14, %d15, %d15, %d1

# CHECK-INST: msubs.u %d14, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0xef]
msubs.u %d14, %d15, %d15, %d14

# CHECK-INST: msubs.u %d14, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0xef]
msubs.u %d14, %d15, %d15, %d15

# CHECK-INST: msubs.u %d15, %d0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0xf0]
msubs.u %d15, %d0, %d0, %d0

# CHECK-INST: msubs.u %d15, %d0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0xf0]
msubs.u %d15, %d0, %d0, %d1

# CHECK-INST: msubs.u %d15, %d0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0xf0]
msubs.u %d15, %d0, %d0, %d14

# CHECK-INST: msubs.u %d15, %d0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0xf0]
msubs.u %d15, %d0, %d0, %d15

# CHECK-INST: msubs.u %d15, %d0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0xf0]
msubs.u %d15, %d0, %d1, %d0

# CHECK-INST: msubs.u %d15, %d0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0xf0]
msubs.u %d15, %d0, %d1, %d1

# CHECK-INST: msubs.u %d15, %d0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0xf0]
msubs.u %d15, %d0, %d1, %d14

# CHECK-INST: msubs.u %d15, %d0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0xf0]
msubs.u %d15, %d0, %d1, %d15

# CHECK-INST: msubs.u %d15, %d0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0xf0]
msubs.u %d15, %d0, %d14, %d0

# CHECK-INST: msubs.u %d15, %d0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0xf0]
msubs.u %d15, %d0, %d14, %d1

# CHECK-INST: msubs.u %d15, %d0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0xf0]
msubs.u %d15, %d0, %d14, %d14

# CHECK-INST: msubs.u %d15, %d0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0xf0]
msubs.u %d15, %d0, %d14, %d15

# CHECK-INST: msubs.u %d15, %d0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0xf0]
msubs.u %d15, %d0, %d15, %d0

# CHECK-INST: msubs.u %d15, %d0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0xf0]
msubs.u %d15, %d0, %d15, %d1

# CHECK-INST: msubs.u %d15, %d0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0xf0]
msubs.u %d15, %d0, %d15, %d14

# CHECK-INST: msubs.u %d15, %d0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0xf0]
msubs.u %d15, %d0, %d15, %d15

# CHECK-INST: msubs.u %d15, %d1, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0xf1]
msubs.u %d15, %d1, %d0, %d0

# CHECK-INST: msubs.u %d15, %d1, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0xf1]
msubs.u %d15, %d1, %d0, %d1

# CHECK-INST: msubs.u %d15, %d1, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0xf1]
msubs.u %d15, %d1, %d0, %d14

# CHECK-INST: msubs.u %d15, %d1, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0xf1]
msubs.u %d15, %d1, %d0, %d15

# CHECK-INST: msubs.u %d15, %d1, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0xf1]
msubs.u %d15, %d1, %d1, %d0

# CHECK-INST: msubs.u %d15, %d1, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0xf1]
msubs.u %d15, %d1, %d1, %d1

# CHECK-INST: msubs.u %d15, %d1, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0xf1]
msubs.u %d15, %d1, %d1, %d14

# CHECK-INST: msubs.u %d15, %d1, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0xf1]
msubs.u %d15, %d1, %d1, %d15

# CHECK-INST: msubs.u %d15, %d1, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0xf1]
msubs.u %d15, %d1, %d14, %d0

# CHECK-INST: msubs.u %d15, %d1, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0xf1]
msubs.u %d15, %d1, %d14, %d1

# CHECK-INST: msubs.u %d15, %d1, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0xf1]
msubs.u %d15, %d1, %d14, %d14

# CHECK-INST: msubs.u %d15, %d1, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0xf1]
msubs.u %d15, %d1, %d14, %d15

# CHECK-INST: msubs.u %d15, %d1, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0xf1]
msubs.u %d15, %d1, %d15, %d0

# CHECK-INST: msubs.u %d15, %d1, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0xf1]
msubs.u %d15, %d1, %d15, %d1

# CHECK-INST: msubs.u %d15, %d1, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0xf1]
msubs.u %d15, %d1, %d15, %d14

# CHECK-INST: msubs.u %d15, %d1, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0xf1]
msubs.u %d15, %d1, %d15, %d15

# CHECK-INST: msubs.u %d15, %d14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0xfe]
msubs.u %d15, %d14, %d0, %d0

# CHECK-INST: msubs.u %d15, %d14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0xfe]
msubs.u %d15, %d14, %d0, %d1

# CHECK-INST: msubs.u %d15, %d14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0xfe]
msubs.u %d15, %d14, %d0, %d14

# CHECK-INST: msubs.u %d15, %d14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0xfe]
msubs.u %d15, %d14, %d0, %d15

# CHECK-INST: msubs.u %d15, %d14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0xfe]
msubs.u %d15, %d14, %d1, %d0

# CHECK-INST: msubs.u %d15, %d14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0xfe]
msubs.u %d15, %d14, %d1, %d1

# CHECK-INST: msubs.u %d15, %d14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0xfe]
msubs.u %d15, %d14, %d1, %d14

# CHECK-INST: msubs.u %d15, %d14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0xfe]
msubs.u %d15, %d14, %d1, %d15

# CHECK-INST: msubs.u %d15, %d14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0xfe]
msubs.u %d15, %d14, %d14, %d0

# CHECK-INST: msubs.u %d15, %d14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0xfe]
msubs.u %d15, %d14, %d14, %d1

# CHECK-INST: msubs.u %d15, %d14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0xfe]
msubs.u %d15, %d14, %d14, %d14

# CHECK-INST: msubs.u %d15, %d14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0xfe]
msubs.u %d15, %d14, %d14, %d15

# CHECK-INST: msubs.u %d15, %d14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0xfe]
msubs.u %d15, %d14, %d15, %d0

# CHECK-INST: msubs.u %d15, %d14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0xfe]
msubs.u %d15, %d14, %d15, %d1

# CHECK-INST: msubs.u %d15, %d14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0xfe]
msubs.u %d15, %d14, %d15, %d14

# CHECK-INST: msubs.u %d15, %d14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0xfe]
msubs.u %d15, %d14, %d15, %d15

# CHECK-INST: msubs.u %d15, %d15, %d0, %d0
# CHECK: encoding: [0x23,0x00,0x88,0xff]
msubs.u %d15, %d15, %d0, %d0

# CHECK-INST: msubs.u %d15, %d15, %d0, %d1
# CHECK: encoding: [0x23,0x10,0x88,0xff]
msubs.u %d15, %d15, %d0, %d1

# CHECK-INST: msubs.u %d15, %d15, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0x88,0xff]
msubs.u %d15, %d15, %d0, %d14

# CHECK-INST: msubs.u %d15, %d15, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0x88,0xff]
msubs.u %d15, %d15, %d0, %d15

# CHECK-INST: msubs.u %d15, %d15, %d1, %d0
# CHECK: encoding: [0x23,0x01,0x88,0xff]
msubs.u %d15, %d15, %d1, %d0

# CHECK-INST: msubs.u %d15, %d15, %d1, %d1
# CHECK: encoding: [0x23,0x11,0x88,0xff]
msubs.u %d15, %d15, %d1, %d1

# CHECK-INST: msubs.u %d15, %d15, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0x88,0xff]
msubs.u %d15, %d15, %d1, %d14

# CHECK-INST: msubs.u %d15, %d15, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0x88,0xff]
msubs.u %d15, %d15, %d1, %d15

# CHECK-INST: msubs.u %d15, %d15, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0x88,0xff]
msubs.u %d15, %d15, %d14, %d0

# CHECK-INST: msubs.u %d15, %d15, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0x88,0xff]
msubs.u %d15, %d15, %d14, %d1

# CHECK-INST: msubs.u %d15, %d15, %d14, %d14
# CHECK: encoding: [0x23,0xee,0x88,0xff]
msubs.u %d15, %d15, %d14, %d14

# CHECK-INST: msubs.u %d15, %d15, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0x88,0xff]
msubs.u %d15, %d15, %d14, %d15

# CHECK-INST: msubs.u %d15, %d15, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0x88,0xff]
msubs.u %d15, %d15, %d15, %d0

# CHECK-INST: msubs.u %d15, %d15, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0x88,0xff]
msubs.u %d15, %d15, %d15, %d1

# CHECK-INST: msubs.u %d15, %d15, %d15, %d14
# CHECK: encoding: [0x23,0xef,0x88,0xff]
msubs.u %d15, %d15, %d15, %d14

# CHECK-INST: msubs.u %d15, %d15, %d15, %d15
# CHECK: encoding: [0x23,0xff,0x88,0xff]
msubs.u %d15, %d15, %d15, %d15

# CHECK-INST: msubs.u %d0, %d0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0x00]
msubs.u %d0, %d0, %d0, 271

# CHECK-INST: msubs.u %d0, %d0, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0x00]
msubs.u %d0, %d0, %d0, 496

# CHECK-INST: msubs.u %d0, %d0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0x00]
msubs.u %d0, %d0, %d0, 511

# CHECK-INST: msubs.u %d0, %d0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0x00]
msubs.u %d0, %d0, %d1, 271

# CHECK-INST: msubs.u %d0, %d0, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0x00]
msubs.u %d0, %d0, %d1, 496

# CHECK-INST: msubs.u %d0, %d0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0x00]
msubs.u %d0, %d0, %d1, 511

# CHECK-INST: msubs.u %d0, %d0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0x00]
msubs.u %d0, %d0, %d14, 271

# CHECK-INST: msubs.u %d0, %d0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0x00]
msubs.u %d0, %d0, %d14, 496

# CHECK-INST: msubs.u %d0, %d0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0x00]
msubs.u %d0, %d0, %d14, 511

# CHECK-INST: msubs.u %d0, %d0, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0x00]
msubs.u %d0, %d0, %d15, 271

# CHECK-INST: msubs.u %d0, %d0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0x00]
msubs.u %d0, %d0, %d15, 496

# CHECK-INST: msubs.u %d0, %d0, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0x00]
msubs.u %d0, %d0, %d15, 511

# CHECK-INST: msubs.u %d0, %d1, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0x01]
msubs.u %d0, %d1, %d0, 271

# CHECK-INST: msubs.u %d0, %d1, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0x01]
msubs.u %d0, %d1, %d0, 496

# CHECK-INST: msubs.u %d0, %d1, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0x01]
msubs.u %d0, %d1, %d0, 511

# CHECK-INST: msubs.u %d0, %d1, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0x01]
msubs.u %d0, %d1, %d1, 271

# CHECK-INST: msubs.u %d0, %d1, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0x01]
msubs.u %d0, %d1, %d1, 496

# CHECK-INST: msubs.u %d0, %d1, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0x01]
msubs.u %d0, %d1, %d1, 511

# CHECK-INST: msubs.u %d0, %d1, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0x01]
msubs.u %d0, %d1, %d14, 271

# CHECK-INST: msubs.u %d0, %d1, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0x01]
msubs.u %d0, %d1, %d14, 496

# CHECK-INST: msubs.u %d0, %d1, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0x01]
msubs.u %d0, %d1, %d14, 511

# CHECK-INST: msubs.u %d0, %d1, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0x01]
msubs.u %d0, %d1, %d15, 271

# CHECK-INST: msubs.u %d0, %d1, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0x01]
msubs.u %d0, %d1, %d15, 496

# CHECK-INST: msubs.u %d0, %d1, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0x01]
msubs.u %d0, %d1, %d15, 511

# CHECK-INST: msubs.u %d0, %d14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0x0e]
msubs.u %d0, %d14, %d0, 271

# CHECK-INST: msubs.u %d0, %d14, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0x0e]
msubs.u %d0, %d14, %d0, 496

# CHECK-INST: msubs.u %d0, %d14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0x0e]
msubs.u %d0, %d14, %d0, 511

# CHECK-INST: msubs.u %d0, %d14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0x0e]
msubs.u %d0, %d14, %d1, 271

# CHECK-INST: msubs.u %d0, %d14, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0x0e]
msubs.u %d0, %d14, %d1, 496

# CHECK-INST: msubs.u %d0, %d14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0x0e]
msubs.u %d0, %d14, %d1, 511

# CHECK-INST: msubs.u %d0, %d14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0x0e]
msubs.u %d0, %d14, %d14, 271

# CHECK-INST: msubs.u %d0, %d14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0x0e]
msubs.u %d0, %d14, %d14, 496

# CHECK-INST: msubs.u %d0, %d14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0x0e]
msubs.u %d0, %d14, %d14, 511

# CHECK-INST: msubs.u %d0, %d14, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0x0e]
msubs.u %d0, %d14, %d15, 271

# CHECK-INST: msubs.u %d0, %d14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0x0e]
msubs.u %d0, %d14, %d15, 496

# CHECK-INST: msubs.u %d0, %d14, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0x0e]
msubs.u %d0, %d14, %d15, 511

# CHECK-INST: msubs.u %d0, %d15, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0x0f]
msubs.u %d0, %d15, %d0, 271

# CHECK-INST: msubs.u %d0, %d15, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0x0f]
msubs.u %d0, %d15, %d0, 496

# CHECK-INST: msubs.u %d0, %d15, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0x0f]
msubs.u %d0, %d15, %d0, 511

# CHECK-INST: msubs.u %d0, %d15, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0x0f]
msubs.u %d0, %d15, %d1, 271

# CHECK-INST: msubs.u %d0, %d15, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0x0f]
msubs.u %d0, %d15, %d1, 496

# CHECK-INST: msubs.u %d0, %d15, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0x0f]
msubs.u %d0, %d15, %d1, 511

# CHECK-INST: msubs.u %d0, %d15, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0x0f]
msubs.u %d0, %d15, %d14, 271

# CHECK-INST: msubs.u %d0, %d15, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0x0f]
msubs.u %d0, %d15, %d14, 496

# CHECK-INST: msubs.u %d0, %d15, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0x0f]
msubs.u %d0, %d15, %d14, 511

# CHECK-INST: msubs.u %d0, %d15, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0x0f]
msubs.u %d0, %d15, %d15, 271

# CHECK-INST: msubs.u %d0, %d15, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0x0f]
msubs.u %d0, %d15, %d15, 496

# CHECK-INST: msubs.u %d0, %d15, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0x0f]
msubs.u %d0, %d15, %d15, 511

# CHECK-INST: msubs.u %d1, %d0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0x10]
msubs.u %d1, %d0, %d0, 271

# CHECK-INST: msubs.u %d1, %d0, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0x10]
msubs.u %d1, %d0, %d0, 496

# CHECK-INST: msubs.u %d1, %d0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0x10]
msubs.u %d1, %d0, %d0, 511

# CHECK-INST: msubs.u %d1, %d0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0x10]
msubs.u %d1, %d0, %d1, 271

# CHECK-INST: msubs.u %d1, %d0, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0x10]
msubs.u %d1, %d0, %d1, 496

# CHECK-INST: msubs.u %d1, %d0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0x10]
msubs.u %d1, %d0, %d1, 511

# CHECK-INST: msubs.u %d1, %d0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0x10]
msubs.u %d1, %d0, %d14, 271

# CHECK-INST: msubs.u %d1, %d0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0x10]
msubs.u %d1, %d0, %d14, 496

# CHECK-INST: msubs.u %d1, %d0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0x10]
msubs.u %d1, %d0, %d14, 511

# CHECK-INST: msubs.u %d1, %d0, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0x10]
msubs.u %d1, %d0, %d15, 271

# CHECK-INST: msubs.u %d1, %d0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0x10]
msubs.u %d1, %d0, %d15, 496

# CHECK-INST: msubs.u %d1, %d0, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0x10]
msubs.u %d1, %d0, %d15, 511

# CHECK-INST: msubs.u %d1, %d1, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0x11]
msubs.u %d1, %d1, %d0, 271

# CHECK-INST: msubs.u %d1, %d1, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0x11]
msubs.u %d1, %d1, %d0, 496

# CHECK-INST: msubs.u %d1, %d1, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0x11]
msubs.u %d1, %d1, %d0, 511

# CHECK-INST: msubs.u %d1, %d1, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0x11]
msubs.u %d1, %d1, %d1, 271

# CHECK-INST: msubs.u %d1, %d1, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0x11]
msubs.u %d1, %d1, %d1, 496

# CHECK-INST: msubs.u %d1, %d1, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0x11]
msubs.u %d1, %d1, %d1, 511

# CHECK-INST: msubs.u %d1, %d1, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0x11]
msubs.u %d1, %d1, %d14, 271

# CHECK-INST: msubs.u %d1, %d1, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0x11]
msubs.u %d1, %d1, %d14, 496

# CHECK-INST: msubs.u %d1, %d1, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0x11]
msubs.u %d1, %d1, %d14, 511

# CHECK-INST: msubs.u %d1, %d1, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0x11]
msubs.u %d1, %d1, %d15, 271

# CHECK-INST: msubs.u %d1, %d1, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0x11]
msubs.u %d1, %d1, %d15, 496

# CHECK-INST: msubs.u %d1, %d1, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0x11]
msubs.u %d1, %d1, %d15, 511

# CHECK-INST: msubs.u %d1, %d14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0x1e]
msubs.u %d1, %d14, %d0, 271

# CHECK-INST: msubs.u %d1, %d14, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0x1e]
msubs.u %d1, %d14, %d0, 496

# CHECK-INST: msubs.u %d1, %d14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0x1e]
msubs.u %d1, %d14, %d0, 511

# CHECK-INST: msubs.u %d1, %d14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0x1e]
msubs.u %d1, %d14, %d1, 271

# CHECK-INST: msubs.u %d1, %d14, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0x1e]
msubs.u %d1, %d14, %d1, 496

# CHECK-INST: msubs.u %d1, %d14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0x1e]
msubs.u %d1, %d14, %d1, 511

# CHECK-INST: msubs.u %d1, %d14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0x1e]
msubs.u %d1, %d14, %d14, 271

# CHECK-INST: msubs.u %d1, %d14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0x1e]
msubs.u %d1, %d14, %d14, 496

# CHECK-INST: msubs.u %d1, %d14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0x1e]
msubs.u %d1, %d14, %d14, 511

# CHECK-INST: msubs.u %d1, %d14, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0x1e]
msubs.u %d1, %d14, %d15, 271

# CHECK-INST: msubs.u %d1, %d14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0x1e]
msubs.u %d1, %d14, %d15, 496

# CHECK-INST: msubs.u %d1, %d14, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0x1e]
msubs.u %d1, %d14, %d15, 511

# CHECK-INST: msubs.u %d1, %d15, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0x1f]
msubs.u %d1, %d15, %d0, 271

# CHECK-INST: msubs.u %d1, %d15, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0x1f]
msubs.u %d1, %d15, %d0, 496

# CHECK-INST: msubs.u %d1, %d15, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0x1f]
msubs.u %d1, %d15, %d0, 511

# CHECK-INST: msubs.u %d1, %d15, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0x1f]
msubs.u %d1, %d15, %d1, 271

# CHECK-INST: msubs.u %d1, %d15, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0x1f]
msubs.u %d1, %d15, %d1, 496

# CHECK-INST: msubs.u %d1, %d15, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0x1f]
msubs.u %d1, %d15, %d1, 511

# CHECK-INST: msubs.u %d1, %d15, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0x1f]
msubs.u %d1, %d15, %d14, 271

# CHECK-INST: msubs.u %d1, %d15, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0x1f]
msubs.u %d1, %d15, %d14, 496

# CHECK-INST: msubs.u %d1, %d15, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0x1f]
msubs.u %d1, %d15, %d14, 511

# CHECK-INST: msubs.u %d1, %d15, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0x1f]
msubs.u %d1, %d15, %d15, 271

# CHECK-INST: msubs.u %d1, %d15, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0x1f]
msubs.u %d1, %d15, %d15, 496

# CHECK-INST: msubs.u %d1, %d15, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0x1f]
msubs.u %d1, %d15, %d15, 511

# CHECK-INST: msubs.u %d14, %d0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0xe0]
msubs.u %d14, %d0, %d0, 271

# CHECK-INST: msubs.u %d14, %d0, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0xe0]
msubs.u %d14, %d0, %d0, 496

# CHECK-INST: msubs.u %d14, %d0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0xe0]
msubs.u %d14, %d0, %d0, 511

# CHECK-INST: msubs.u %d14, %d0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0xe0]
msubs.u %d14, %d0, %d1, 271

# CHECK-INST: msubs.u %d14, %d0, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0xe0]
msubs.u %d14, %d0, %d1, 496

# CHECK-INST: msubs.u %d14, %d0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0xe0]
msubs.u %d14, %d0, %d1, 511

# CHECK-INST: msubs.u %d14, %d0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0xe0]
msubs.u %d14, %d0, %d14, 271

# CHECK-INST: msubs.u %d14, %d0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0xe0]
msubs.u %d14, %d0, %d14, 496

# CHECK-INST: msubs.u %d14, %d0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0xe0]
msubs.u %d14, %d0, %d14, 511

# CHECK-INST: msubs.u %d14, %d0, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0xe0]
msubs.u %d14, %d0, %d15, 271

# CHECK-INST: msubs.u %d14, %d0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0xe0]
msubs.u %d14, %d0, %d15, 496

# CHECK-INST: msubs.u %d14, %d0, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0xe0]
msubs.u %d14, %d0, %d15, 511

# CHECK-INST: msubs.u %d14, %d1, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0xe1]
msubs.u %d14, %d1, %d0, 271

# CHECK-INST: msubs.u %d14, %d1, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0xe1]
msubs.u %d14, %d1, %d0, 496

# CHECK-INST: msubs.u %d14, %d1, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0xe1]
msubs.u %d14, %d1, %d0, 511

# CHECK-INST: msubs.u %d14, %d1, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0xe1]
msubs.u %d14, %d1, %d1, 271

# CHECK-INST: msubs.u %d14, %d1, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0xe1]
msubs.u %d14, %d1, %d1, 496

# CHECK-INST: msubs.u %d14, %d1, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0xe1]
msubs.u %d14, %d1, %d1, 511

# CHECK-INST: msubs.u %d14, %d1, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0xe1]
msubs.u %d14, %d1, %d14, 271

# CHECK-INST: msubs.u %d14, %d1, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0xe1]
msubs.u %d14, %d1, %d14, 496

# CHECK-INST: msubs.u %d14, %d1, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0xe1]
msubs.u %d14, %d1, %d14, 511

# CHECK-INST: msubs.u %d14, %d1, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0xe1]
msubs.u %d14, %d1, %d15, 271

# CHECK-INST: msubs.u %d14, %d1, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0xe1]
msubs.u %d14, %d1, %d15, 496

# CHECK-INST: msubs.u %d14, %d1, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0xe1]
msubs.u %d14, %d1, %d15, 511

# CHECK-INST: msubs.u %d14, %d14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0xee]
msubs.u %d14, %d14, %d0, 271

# CHECK-INST: msubs.u %d14, %d14, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0xee]
msubs.u %d14, %d14, %d0, 496

# CHECK-INST: msubs.u %d14, %d14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0xee]
msubs.u %d14, %d14, %d0, 511

# CHECK-INST: msubs.u %d14, %d14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0xee]
msubs.u %d14, %d14, %d1, 271

# CHECK-INST: msubs.u %d14, %d14, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0xee]
msubs.u %d14, %d14, %d1, 496

# CHECK-INST: msubs.u %d14, %d14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0xee]
msubs.u %d14, %d14, %d1, 511

# CHECK-INST: msubs.u %d14, %d14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0xee]
msubs.u %d14, %d14, %d14, 271

# CHECK-INST: msubs.u %d14, %d14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0xee]
msubs.u %d14, %d14, %d14, 496

# CHECK-INST: msubs.u %d14, %d14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0xee]
msubs.u %d14, %d14, %d14, 511

# CHECK-INST: msubs.u %d14, %d14, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0xee]
msubs.u %d14, %d14, %d15, 271

# CHECK-INST: msubs.u %d14, %d14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0xee]
msubs.u %d14, %d14, %d15, 496

# CHECK-INST: msubs.u %d14, %d14, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0xee]
msubs.u %d14, %d14, %d15, 511

# CHECK-INST: msubs.u %d14, %d15, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0xef]
msubs.u %d14, %d15, %d0, 271

# CHECK-INST: msubs.u %d14, %d15, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0xef]
msubs.u %d14, %d15, %d0, 496

# CHECK-INST: msubs.u %d14, %d15, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0xef]
msubs.u %d14, %d15, %d0, 511

# CHECK-INST: msubs.u %d14, %d15, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0xef]
msubs.u %d14, %d15, %d1, 271

# CHECK-INST: msubs.u %d14, %d15, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0xef]
msubs.u %d14, %d15, %d1, 496

# CHECK-INST: msubs.u %d14, %d15, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0xef]
msubs.u %d14, %d15, %d1, 511

# CHECK-INST: msubs.u %d14, %d15, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0xef]
msubs.u %d14, %d15, %d14, 271

# CHECK-INST: msubs.u %d14, %d15, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0xef]
msubs.u %d14, %d15, %d14, 496

# CHECK-INST: msubs.u %d14, %d15, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0xef]
msubs.u %d14, %d15, %d14, 511

# CHECK-INST: msubs.u %d14, %d15, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0xef]
msubs.u %d14, %d15, %d15, 271

# CHECK-INST: msubs.u %d14, %d15, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0xef]
msubs.u %d14, %d15, %d15, 496

# CHECK-INST: msubs.u %d14, %d15, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0xef]
msubs.u %d14, %d15, %d15, 511

# CHECK-INST: msubs.u %d15, %d0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0xf0]
msubs.u %d15, %d0, %d0, 271

# CHECK-INST: msubs.u %d15, %d0, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0xf0]
msubs.u %d15, %d0, %d0, 496

# CHECK-INST: msubs.u %d15, %d0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0xf0]
msubs.u %d15, %d0, %d0, 511

# CHECK-INST: msubs.u %d15, %d0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0xf0]
msubs.u %d15, %d0, %d1, 271

# CHECK-INST: msubs.u %d15, %d0, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0xf0]
msubs.u %d15, %d0, %d1, 496

# CHECK-INST: msubs.u %d15, %d0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0xf0]
msubs.u %d15, %d0, %d1, 511

# CHECK-INST: msubs.u %d15, %d0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0xf0]
msubs.u %d15, %d0, %d14, 271

# CHECK-INST: msubs.u %d15, %d0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0xf0]
msubs.u %d15, %d0, %d14, 496

# CHECK-INST: msubs.u %d15, %d0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0xf0]
msubs.u %d15, %d0, %d14, 511

# CHECK-INST: msubs.u %d15, %d0, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0xf0]
msubs.u %d15, %d0, %d15, 271

# CHECK-INST: msubs.u %d15, %d0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0xf0]
msubs.u %d15, %d0, %d15, 496

# CHECK-INST: msubs.u %d15, %d0, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0xf0]
msubs.u %d15, %d0, %d15, 511

# CHECK-INST: msubs.u %d15, %d1, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0xf1]
msubs.u %d15, %d1, %d0, 271

# CHECK-INST: msubs.u %d15, %d1, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0xf1]
msubs.u %d15, %d1, %d0, 496

# CHECK-INST: msubs.u %d15, %d1, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0xf1]
msubs.u %d15, %d1, %d0, 511

# CHECK-INST: msubs.u %d15, %d1, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0xf1]
msubs.u %d15, %d1, %d1, 271

# CHECK-INST: msubs.u %d15, %d1, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0xf1]
msubs.u %d15, %d1, %d1, 496

# CHECK-INST: msubs.u %d15, %d1, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0xf1]
msubs.u %d15, %d1, %d1, 511

# CHECK-INST: msubs.u %d15, %d1, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0xf1]
msubs.u %d15, %d1, %d14, 271

# CHECK-INST: msubs.u %d15, %d1, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0xf1]
msubs.u %d15, %d1, %d14, 496

# CHECK-INST: msubs.u %d15, %d1, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0xf1]
msubs.u %d15, %d1, %d14, 511

# CHECK-INST: msubs.u %d15, %d1, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0xf1]
msubs.u %d15, %d1, %d15, 271

# CHECK-INST: msubs.u %d15, %d1, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0xf1]
msubs.u %d15, %d1, %d15, 496

# CHECK-INST: msubs.u %d15, %d1, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0xf1]
msubs.u %d15, %d1, %d15, 511

# CHECK-INST: msubs.u %d15, %d14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0xfe]
msubs.u %d15, %d14, %d0, 271

# CHECK-INST: msubs.u %d15, %d14, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0xfe]
msubs.u %d15, %d14, %d0, 496

# CHECK-INST: msubs.u %d15, %d14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0xfe]
msubs.u %d15, %d14, %d0, 511

# CHECK-INST: msubs.u %d15, %d14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0xfe]
msubs.u %d15, %d14, %d1, 271

# CHECK-INST: msubs.u %d15, %d14, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0xfe]
msubs.u %d15, %d14, %d1, 496

# CHECK-INST: msubs.u %d15, %d14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0xfe]
msubs.u %d15, %d14, %d1, 511

# CHECK-INST: msubs.u %d15, %d14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0xfe]
msubs.u %d15, %d14, %d14, 271

# CHECK-INST: msubs.u %d15, %d14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0xfe]
msubs.u %d15, %d14, %d14, 496

# CHECK-INST: msubs.u %d15, %d14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0xfe]
msubs.u %d15, %d14, %d14, 511

# CHECK-INST: msubs.u %d15, %d14, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0xfe]
msubs.u %d15, %d14, %d15, 271

# CHECK-INST: msubs.u %d15, %d14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0xfe]
msubs.u %d15, %d14, %d15, 496

# CHECK-INST: msubs.u %d15, %d14, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0xfe]
msubs.u %d15, %d14, %d15, 511

# CHECK-INST: msubs.u %d15, %d15, %d0, 271
# CHECK: encoding: [0x33,0xf0,0x90,0xff]
msubs.u %d15, %d15, %d0, 271

# CHECK-INST: msubs.u %d15, %d15, %d0, 496
# CHECK: encoding: [0x33,0x00,0x9f,0xff]
msubs.u %d15, %d15, %d0, 496

# CHECK-INST: msubs.u %d15, %d15, %d0, 511
# CHECK: encoding: [0x33,0xf0,0x9f,0xff]
msubs.u %d15, %d15, %d0, 511

# CHECK-INST: msubs.u %d15, %d15, %d1, 271
# CHECK: encoding: [0x33,0xf1,0x90,0xff]
msubs.u %d15, %d15, %d1, 271

# CHECK-INST: msubs.u %d15, %d15, %d1, 496
# CHECK: encoding: [0x33,0x01,0x9f,0xff]
msubs.u %d15, %d15, %d1, 496

# CHECK-INST: msubs.u %d15, %d15, %d1, 511
# CHECK: encoding: [0x33,0xf1,0x9f,0xff]
msubs.u %d15, %d15, %d1, 511

# CHECK-INST: msubs.u %d15, %d15, %d14, 271
# CHECK: encoding: [0x33,0xfe,0x90,0xff]
msubs.u %d15, %d15, %d14, 271

# CHECK-INST: msubs.u %d15, %d15, %d14, 496
# CHECK: encoding: [0x33,0x0e,0x9f,0xff]
msubs.u %d15, %d15, %d14, 496

# CHECK-INST: msubs.u %d15, %d15, %d14, 511
# CHECK: encoding: [0x33,0xfe,0x9f,0xff]
msubs.u %d15, %d15, %d14, 511

# CHECK-INST: msubs.u %d15, %d15, %d15, 271
# CHECK: encoding: [0x33,0xff,0x90,0xff]
msubs.u %d15, %d15, %d15, 271

# CHECK-INST: msubs.u %d15, %d15, %d15, 496
# CHECK: encoding: [0x33,0x0f,0x9f,0xff]
msubs.u %d15, %d15, %d15, 496

# CHECK-INST: msubs.u %d15, %d15, %d15, 511
# CHECK: encoding: [0x33,0xff,0x9f,0xff]
msubs.u %d15, %d15, %d15, 511

# CHECK-INST: msubs.u %e0, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xe8,0x00]
msubs.u %e0, %e0, %d0, %d0

# CHECK-INST: msubs.u %e0, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xe8,0x00]
msubs.u %e0, %e0, %d0, %d1

# CHECK-INST: msubs.u %e0, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xe8,0x00]
msubs.u %e0, %e0, %d0, %d14

# CHECK-INST: msubs.u %e0, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xe8,0x00]
msubs.u %e0, %e0, %d0, %d15

# CHECK-INST: msubs.u %e0, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xe8,0x00]
msubs.u %e0, %e0, %d1, %d0

# CHECK-INST: msubs.u %e0, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xe8,0x00]
msubs.u %e0, %e0, %d1, %d1

# CHECK-INST: msubs.u %e0, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xe8,0x00]
msubs.u %e0, %e0, %d1, %d14

# CHECK-INST: msubs.u %e0, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xe8,0x00]
msubs.u %e0, %e0, %d1, %d15

# CHECK-INST: msubs.u %e0, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xe8,0x00]
msubs.u %e0, %e0, %d14, %d0

# CHECK-INST: msubs.u %e0, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xe8,0x00]
msubs.u %e0, %e0, %d14, %d1

# CHECK-INST: msubs.u %e0, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xe8,0x00]
msubs.u %e0, %e0, %d14, %d14

# CHECK-INST: msubs.u %e0, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xe8,0x00]
msubs.u %e0, %e0, %d14, %d15

# CHECK-INST: msubs.u %e0, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xe8,0x00]
msubs.u %e0, %e0, %d15, %d0

# CHECK-INST: msubs.u %e0, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xe8,0x00]
msubs.u %e0, %e0, %d15, %d1

# CHECK-INST: msubs.u %e0, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xe8,0x00]
msubs.u %e0, %e0, %d15, %d14

# CHECK-INST: msubs.u %e0, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xe8,0x00]
msubs.u %e0, %e0, %d15, %d15

# CHECK-INST: msubs.u %e0, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xe8,0x06]
msubs.u %e0, %e6, %d0, %d0

# CHECK-INST: msubs.u %e0, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xe8,0x06]
msubs.u %e0, %e6, %d0, %d1

# CHECK-INST: msubs.u %e0, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xe8,0x06]
msubs.u %e0, %e6, %d0, %d14

# CHECK-INST: msubs.u %e0, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xe8,0x06]
msubs.u %e0, %e6, %d0, %d15

# CHECK-INST: msubs.u %e0, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xe8,0x06]
msubs.u %e0, %e6, %d1, %d0

# CHECK-INST: msubs.u %e0, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xe8,0x06]
msubs.u %e0, %e6, %d1, %d1

# CHECK-INST: msubs.u %e0, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xe8,0x06]
msubs.u %e0, %e6, %d1, %d14

# CHECK-INST: msubs.u %e0, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xe8,0x06]
msubs.u %e0, %e6, %d1, %d15

# CHECK-INST: msubs.u %e0, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xe8,0x06]
msubs.u %e0, %e6, %d14, %d0

# CHECK-INST: msubs.u %e0, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xe8,0x06]
msubs.u %e0, %e6, %d14, %d1

# CHECK-INST: msubs.u %e0, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xe8,0x06]
msubs.u %e0, %e6, %d14, %d14

# CHECK-INST: msubs.u %e0, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xe8,0x06]
msubs.u %e0, %e6, %d14, %d15

# CHECK-INST: msubs.u %e0, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xe8,0x06]
msubs.u %e0, %e6, %d15, %d0

# CHECK-INST: msubs.u %e0, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xe8,0x06]
msubs.u %e0, %e6, %d15, %d1

# CHECK-INST: msubs.u %e0, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xe8,0x06]
msubs.u %e0, %e6, %d15, %d14

# CHECK-INST: msubs.u %e0, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xe8,0x06]
msubs.u %e0, %e6, %d15, %d15

# CHECK-INST: msubs.u %e0, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xe8,0x0e]
msubs.u %e0, %e14, %d0, %d0

# CHECK-INST: msubs.u %e0, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xe8,0x0e]
msubs.u %e0, %e14, %d0, %d1

# CHECK-INST: msubs.u %e0, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xe8,0x0e]
msubs.u %e0, %e14, %d0, %d14

# CHECK-INST: msubs.u %e0, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xe8,0x0e]
msubs.u %e0, %e14, %d0, %d15

# CHECK-INST: msubs.u %e0, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xe8,0x0e]
msubs.u %e0, %e14, %d1, %d0

# CHECK-INST: msubs.u %e0, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xe8,0x0e]
msubs.u %e0, %e14, %d1, %d1

# CHECK-INST: msubs.u %e0, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xe8,0x0e]
msubs.u %e0, %e14, %d1, %d14

# CHECK-INST: msubs.u %e0, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xe8,0x0e]
msubs.u %e0, %e14, %d1, %d15

# CHECK-INST: msubs.u %e0, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xe8,0x0e]
msubs.u %e0, %e14, %d14, %d0

# CHECK-INST: msubs.u %e0, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xe8,0x0e]
msubs.u %e0, %e14, %d14, %d1

# CHECK-INST: msubs.u %e0, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xe8,0x0e]
msubs.u %e0, %e14, %d14, %d14

# CHECK-INST: msubs.u %e0, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xe8,0x0e]
msubs.u %e0, %e14, %d14, %d15

# CHECK-INST: msubs.u %e0, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xe8,0x0e]
msubs.u %e0, %e14, %d15, %d0

# CHECK-INST: msubs.u %e0, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xe8,0x0e]
msubs.u %e0, %e14, %d15, %d1

# CHECK-INST: msubs.u %e0, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xe8,0x0e]
msubs.u %e0, %e14, %d15, %d14

# CHECK-INST: msubs.u %e0, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xe8,0x0e]
msubs.u %e0, %e14, %d15, %d15

# CHECK-INST: msubs.u %e6, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xe8,0x60]
msubs.u %e6, %e0, %d0, %d0

# CHECK-INST: msubs.u %e6, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xe8,0x60]
msubs.u %e6, %e0, %d0, %d1

# CHECK-INST: msubs.u %e6, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xe8,0x60]
msubs.u %e6, %e0, %d0, %d14

# CHECK-INST: msubs.u %e6, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xe8,0x60]
msubs.u %e6, %e0, %d0, %d15

# CHECK-INST: msubs.u %e6, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xe8,0x60]
msubs.u %e6, %e0, %d1, %d0

# CHECK-INST: msubs.u %e6, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xe8,0x60]
msubs.u %e6, %e0, %d1, %d1

# CHECK-INST: msubs.u %e6, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xe8,0x60]
msubs.u %e6, %e0, %d1, %d14

# CHECK-INST: msubs.u %e6, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xe8,0x60]
msubs.u %e6, %e0, %d1, %d15

# CHECK-INST: msubs.u %e6, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xe8,0x60]
msubs.u %e6, %e0, %d14, %d0

# CHECK-INST: msubs.u %e6, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xe8,0x60]
msubs.u %e6, %e0, %d14, %d1

# CHECK-INST: msubs.u %e6, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xe8,0x60]
msubs.u %e6, %e0, %d14, %d14

# CHECK-INST: msubs.u %e6, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xe8,0x60]
msubs.u %e6, %e0, %d14, %d15

# CHECK-INST: msubs.u %e6, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xe8,0x60]
msubs.u %e6, %e0, %d15, %d0

# CHECK-INST: msubs.u %e6, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xe8,0x60]
msubs.u %e6, %e0, %d15, %d1

# CHECK-INST: msubs.u %e6, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xe8,0x60]
msubs.u %e6, %e0, %d15, %d14

# CHECK-INST: msubs.u %e6, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xe8,0x60]
msubs.u %e6, %e0, %d15, %d15

# CHECK-INST: msubs.u %e6, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xe8,0x66]
msubs.u %e6, %e6, %d0, %d0

# CHECK-INST: msubs.u %e6, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xe8,0x66]
msubs.u %e6, %e6, %d0, %d1

# CHECK-INST: msubs.u %e6, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xe8,0x66]
msubs.u %e6, %e6, %d0, %d14

# CHECK-INST: msubs.u %e6, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xe8,0x66]
msubs.u %e6, %e6, %d0, %d15

# CHECK-INST: msubs.u %e6, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xe8,0x66]
msubs.u %e6, %e6, %d1, %d0

# CHECK-INST: msubs.u %e6, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xe8,0x66]
msubs.u %e6, %e6, %d1, %d1

# CHECK-INST: msubs.u %e6, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xe8,0x66]
msubs.u %e6, %e6, %d1, %d14

# CHECK-INST: msubs.u %e6, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xe8,0x66]
msubs.u %e6, %e6, %d1, %d15

# CHECK-INST: msubs.u %e6, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xe8,0x66]
msubs.u %e6, %e6, %d14, %d0

# CHECK-INST: msubs.u %e6, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xe8,0x66]
msubs.u %e6, %e6, %d14, %d1

# CHECK-INST: msubs.u %e6, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xe8,0x66]
msubs.u %e6, %e6, %d14, %d14

# CHECK-INST: msubs.u %e6, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xe8,0x66]
msubs.u %e6, %e6, %d14, %d15

# CHECK-INST: msubs.u %e6, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xe8,0x66]
msubs.u %e6, %e6, %d15, %d0

# CHECK-INST: msubs.u %e6, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xe8,0x66]
msubs.u %e6, %e6, %d15, %d1

# CHECK-INST: msubs.u %e6, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xe8,0x66]
msubs.u %e6, %e6, %d15, %d14

# CHECK-INST: msubs.u %e6, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xe8,0x66]
msubs.u %e6, %e6, %d15, %d15

# CHECK-INST: msubs.u %e6, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xe8,0x6e]
msubs.u %e6, %e14, %d0, %d0

# CHECK-INST: msubs.u %e6, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xe8,0x6e]
msubs.u %e6, %e14, %d0, %d1

# CHECK-INST: msubs.u %e6, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xe8,0x6e]
msubs.u %e6, %e14, %d0, %d14

# CHECK-INST: msubs.u %e6, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xe8,0x6e]
msubs.u %e6, %e14, %d0, %d15

# CHECK-INST: msubs.u %e6, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xe8,0x6e]
msubs.u %e6, %e14, %d1, %d0

# CHECK-INST: msubs.u %e6, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xe8,0x6e]
msubs.u %e6, %e14, %d1, %d1

# CHECK-INST: msubs.u %e6, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xe8,0x6e]
msubs.u %e6, %e14, %d1, %d14

# CHECK-INST: msubs.u %e6, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xe8,0x6e]
msubs.u %e6, %e14, %d1, %d15

# CHECK-INST: msubs.u %e6, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xe8,0x6e]
msubs.u %e6, %e14, %d14, %d0

# CHECK-INST: msubs.u %e6, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xe8,0x6e]
msubs.u %e6, %e14, %d14, %d1

# CHECK-INST: msubs.u %e6, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xe8,0x6e]
msubs.u %e6, %e14, %d14, %d14

# CHECK-INST: msubs.u %e6, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xe8,0x6e]
msubs.u %e6, %e14, %d14, %d15

# CHECK-INST: msubs.u %e6, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xe8,0x6e]
msubs.u %e6, %e14, %d15, %d0

# CHECK-INST: msubs.u %e6, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xe8,0x6e]
msubs.u %e6, %e14, %d15, %d1

# CHECK-INST: msubs.u %e6, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xe8,0x6e]
msubs.u %e6, %e14, %d15, %d14

# CHECK-INST: msubs.u %e6, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xe8,0x6e]
msubs.u %e6, %e14, %d15, %d15

# CHECK-INST: msubs.u %e14, %e0, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xe8,0xe0]
msubs.u %e14, %e0, %d0, %d0

# CHECK-INST: msubs.u %e14, %e0, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xe8,0xe0]
msubs.u %e14, %e0, %d0, %d1

# CHECK-INST: msubs.u %e14, %e0, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xe8,0xe0]
msubs.u %e14, %e0, %d0, %d14

# CHECK-INST: msubs.u %e14, %e0, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xe8,0xe0]
msubs.u %e14, %e0, %d0, %d15

# CHECK-INST: msubs.u %e14, %e0, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xe8,0xe0]
msubs.u %e14, %e0, %d1, %d0

# CHECK-INST: msubs.u %e14, %e0, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xe8,0xe0]
msubs.u %e14, %e0, %d1, %d1

# CHECK-INST: msubs.u %e14, %e0, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xe8,0xe0]
msubs.u %e14, %e0, %d1, %d14

# CHECK-INST: msubs.u %e14, %e0, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xe8,0xe0]
msubs.u %e14, %e0, %d1, %d15

# CHECK-INST: msubs.u %e14, %e0, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xe8,0xe0]
msubs.u %e14, %e0, %d14, %d0

# CHECK-INST: msubs.u %e14, %e0, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xe8,0xe0]
msubs.u %e14, %e0, %d14, %d1

# CHECK-INST: msubs.u %e14, %e0, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xe8,0xe0]
msubs.u %e14, %e0, %d14, %d14

# CHECK-INST: msubs.u %e14, %e0, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xe8,0xe0]
msubs.u %e14, %e0, %d14, %d15

# CHECK-INST: msubs.u %e14, %e0, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xe8,0xe0]
msubs.u %e14, %e0, %d15, %d0

# CHECK-INST: msubs.u %e14, %e0, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xe8,0xe0]
msubs.u %e14, %e0, %d15, %d1

# CHECK-INST: msubs.u %e14, %e0, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xe8,0xe0]
msubs.u %e14, %e0, %d15, %d14

# CHECK-INST: msubs.u %e14, %e0, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xe8,0xe0]
msubs.u %e14, %e0, %d15, %d15

# CHECK-INST: msubs.u %e14, %e6, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xe8,0xe6]
msubs.u %e14, %e6, %d0, %d0

# CHECK-INST: msubs.u %e14, %e6, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xe8,0xe6]
msubs.u %e14, %e6, %d0, %d1

# CHECK-INST: msubs.u %e14, %e6, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xe8,0xe6]
msubs.u %e14, %e6, %d0, %d14

# CHECK-INST: msubs.u %e14, %e6, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xe8,0xe6]
msubs.u %e14, %e6, %d0, %d15

# CHECK-INST: msubs.u %e14, %e6, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xe8,0xe6]
msubs.u %e14, %e6, %d1, %d0

# CHECK-INST: msubs.u %e14, %e6, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xe8,0xe6]
msubs.u %e14, %e6, %d1, %d1

# CHECK-INST: msubs.u %e14, %e6, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xe8,0xe6]
msubs.u %e14, %e6, %d1, %d14

# CHECK-INST: msubs.u %e14, %e6, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xe8,0xe6]
msubs.u %e14, %e6, %d1, %d15

# CHECK-INST: msubs.u %e14, %e6, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xe8,0xe6]
msubs.u %e14, %e6, %d14, %d0

# CHECK-INST: msubs.u %e14, %e6, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xe8,0xe6]
msubs.u %e14, %e6, %d14, %d1

# CHECK-INST: msubs.u %e14, %e6, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xe8,0xe6]
msubs.u %e14, %e6, %d14, %d14

# CHECK-INST: msubs.u %e14, %e6, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xe8,0xe6]
msubs.u %e14, %e6, %d14, %d15

# CHECK-INST: msubs.u %e14, %e6, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xe8,0xe6]
msubs.u %e14, %e6, %d15, %d0

# CHECK-INST: msubs.u %e14, %e6, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xe8,0xe6]
msubs.u %e14, %e6, %d15, %d1

# CHECK-INST: msubs.u %e14, %e6, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xe8,0xe6]
msubs.u %e14, %e6, %d15, %d14

# CHECK-INST: msubs.u %e14, %e6, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xe8,0xe6]
msubs.u %e14, %e6, %d15, %d15

# CHECK-INST: msubs.u %e14, %e14, %d0, %d0
# CHECK: encoding: [0x23,0x00,0xe8,0xee]
msubs.u %e14, %e14, %d0, %d0

# CHECK-INST: msubs.u %e14, %e14, %d0, %d1
# CHECK: encoding: [0x23,0x10,0xe8,0xee]
msubs.u %e14, %e14, %d0, %d1

# CHECK-INST: msubs.u %e14, %e14, %d0, %d14
# CHECK: encoding: [0x23,0xe0,0xe8,0xee]
msubs.u %e14, %e14, %d0, %d14

# CHECK-INST: msubs.u %e14, %e14, %d0, %d15
# CHECK: encoding: [0x23,0xf0,0xe8,0xee]
msubs.u %e14, %e14, %d0, %d15

# CHECK-INST: msubs.u %e14, %e14, %d1, %d0
# CHECK: encoding: [0x23,0x01,0xe8,0xee]
msubs.u %e14, %e14, %d1, %d0

# CHECK-INST: msubs.u %e14, %e14, %d1, %d1
# CHECK: encoding: [0x23,0x11,0xe8,0xee]
msubs.u %e14, %e14, %d1, %d1

# CHECK-INST: msubs.u %e14, %e14, %d1, %d14
# CHECK: encoding: [0x23,0xe1,0xe8,0xee]
msubs.u %e14, %e14, %d1, %d14

# CHECK-INST: msubs.u %e14, %e14, %d1, %d15
# CHECK: encoding: [0x23,0xf1,0xe8,0xee]
msubs.u %e14, %e14, %d1, %d15

# CHECK-INST: msubs.u %e14, %e14, %d14, %d0
# CHECK: encoding: [0x23,0x0e,0xe8,0xee]
msubs.u %e14, %e14, %d14, %d0

# CHECK-INST: msubs.u %e14, %e14, %d14, %d1
# CHECK: encoding: [0x23,0x1e,0xe8,0xee]
msubs.u %e14, %e14, %d14, %d1

# CHECK-INST: msubs.u %e14, %e14, %d14, %d14
# CHECK: encoding: [0x23,0xee,0xe8,0xee]
msubs.u %e14, %e14, %d14, %d14

# CHECK-INST: msubs.u %e14, %e14, %d14, %d15
# CHECK: encoding: [0x23,0xfe,0xe8,0xee]
msubs.u %e14, %e14, %d14, %d15

# CHECK-INST: msubs.u %e14, %e14, %d15, %d0
# CHECK: encoding: [0x23,0x0f,0xe8,0xee]
msubs.u %e14, %e14, %d15, %d0

# CHECK-INST: msubs.u %e14, %e14, %d15, %d1
# CHECK: encoding: [0x23,0x1f,0xe8,0xee]
msubs.u %e14, %e14, %d15, %d1

# CHECK-INST: msubs.u %e14, %e14, %d15, %d14
# CHECK: encoding: [0x23,0xef,0xe8,0xee]
msubs.u %e14, %e14, %d15, %d14

# CHECK-INST: msubs.u %e14, %e14, %d15, %d15
# CHECK: encoding: [0x23,0xff,0xe8,0xee]
msubs.u %e14, %e14, %d15, %d15

# CHECK-INST: msubs.u %e0, %e0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0xd0,0x00]
msubs.u %e0, %e0, %d0, 271

# CHECK-INST: msubs.u %e0, %e0, %d0, 496
# CHECK: encoding: [0x33,0x00,0xdf,0x00]
msubs.u %e0, %e0, %d0, 496

# CHECK-INST: msubs.u %e0, %e0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0xdf,0x00]
msubs.u %e0, %e0, %d0, 511

# CHECK-INST: msubs.u %e0, %e0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0xd0,0x00]
msubs.u %e0, %e0, %d1, 271

# CHECK-INST: msubs.u %e0, %e0, %d1, 496
# CHECK: encoding: [0x33,0x01,0xdf,0x00]
msubs.u %e0, %e0, %d1, 496

# CHECK-INST: msubs.u %e0, %e0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0xdf,0x00]
msubs.u %e0, %e0, %d1, 511

# CHECK-INST: msubs.u %e0, %e0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0xd0,0x00]
msubs.u %e0, %e0, %d14, 271

# CHECK-INST: msubs.u %e0, %e0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0xdf,0x00]
msubs.u %e0, %e0, %d14, 496

# CHECK-INST: msubs.u %e0, %e0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0xdf,0x00]
msubs.u %e0, %e0, %d14, 511

# CHECK-INST: msubs.u %e0, %e0, %d15, 271
# CHECK: encoding: [0x33,0xff,0xd0,0x00]
msubs.u %e0, %e0, %d15, 271

# CHECK-INST: msubs.u %e0, %e0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0xdf,0x00]
msubs.u %e0, %e0, %d15, 496

# CHECK-INST: msubs.u %e0, %e0, %d15, 511
# CHECK: encoding: [0x33,0xff,0xdf,0x00]
msubs.u %e0, %e0, %d15, 511

# CHECK-INST: msubs.u %e0, %e6, %d0, 271
# CHECK: encoding: [0x33,0xf0,0xd0,0x06]
msubs.u %e0, %e6, %d0, 271

# CHECK-INST: msubs.u %e0, %e6, %d0, 496
# CHECK: encoding: [0x33,0x00,0xdf,0x06]
msubs.u %e0, %e6, %d0, 496

# CHECK-INST: msubs.u %e0, %e6, %d0, 511
# CHECK: encoding: [0x33,0xf0,0xdf,0x06]
msubs.u %e0, %e6, %d0, 511

# CHECK-INST: msubs.u %e0, %e6, %d1, 271
# CHECK: encoding: [0x33,0xf1,0xd0,0x06]
msubs.u %e0, %e6, %d1, 271

# CHECK-INST: msubs.u %e0, %e6, %d1, 496
# CHECK: encoding: [0x33,0x01,0xdf,0x06]
msubs.u %e0, %e6, %d1, 496

# CHECK-INST: msubs.u %e0, %e6, %d1, 511
# CHECK: encoding: [0x33,0xf1,0xdf,0x06]
msubs.u %e0, %e6, %d1, 511

# CHECK-INST: msubs.u %e0, %e6, %d14, 271
# CHECK: encoding: [0x33,0xfe,0xd0,0x06]
msubs.u %e0, %e6, %d14, 271

# CHECK-INST: msubs.u %e0, %e6, %d14, 496
# CHECK: encoding: [0x33,0x0e,0xdf,0x06]
msubs.u %e0, %e6, %d14, 496

# CHECK-INST: msubs.u %e0, %e6, %d14, 511
# CHECK: encoding: [0x33,0xfe,0xdf,0x06]
msubs.u %e0, %e6, %d14, 511

# CHECK-INST: msubs.u %e0, %e6, %d15, 271
# CHECK: encoding: [0x33,0xff,0xd0,0x06]
msubs.u %e0, %e6, %d15, 271

# CHECK-INST: msubs.u %e0, %e6, %d15, 496
# CHECK: encoding: [0x33,0x0f,0xdf,0x06]
msubs.u %e0, %e6, %d15, 496

# CHECK-INST: msubs.u %e0, %e6, %d15, 511
# CHECK: encoding: [0x33,0xff,0xdf,0x06]
msubs.u %e0, %e6, %d15, 511

# CHECK-INST: msubs.u %e0, %e14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0xd0,0x0e]
msubs.u %e0, %e14, %d0, 271

# CHECK-INST: msubs.u %e0, %e14, %d0, 496
# CHECK: encoding: [0x33,0x00,0xdf,0x0e]
msubs.u %e0, %e14, %d0, 496

# CHECK-INST: msubs.u %e0, %e14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0xdf,0x0e]
msubs.u %e0, %e14, %d0, 511

# CHECK-INST: msubs.u %e0, %e14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0xd0,0x0e]
msubs.u %e0, %e14, %d1, 271

# CHECK-INST: msubs.u %e0, %e14, %d1, 496
# CHECK: encoding: [0x33,0x01,0xdf,0x0e]
msubs.u %e0, %e14, %d1, 496

# CHECK-INST: msubs.u %e0, %e14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0xdf,0x0e]
msubs.u %e0, %e14, %d1, 511

# CHECK-INST: msubs.u %e0, %e14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0xd0,0x0e]
msubs.u %e0, %e14, %d14, 271

# CHECK-INST: msubs.u %e0, %e14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0xdf,0x0e]
msubs.u %e0, %e14, %d14, 496

# CHECK-INST: msubs.u %e0, %e14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0xdf,0x0e]
msubs.u %e0, %e14, %d14, 511

# CHECK-INST: msubs.u %e0, %e14, %d15, 271
# CHECK: encoding: [0x33,0xff,0xd0,0x0e]
msubs.u %e0, %e14, %d15, 271

# CHECK-INST: msubs.u %e0, %e14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0xdf,0x0e]
msubs.u %e0, %e14, %d15, 496

# CHECK-INST: msubs.u %e0, %e14, %d15, 511
# CHECK: encoding: [0x33,0xff,0xdf,0x0e]
msubs.u %e0, %e14, %d15, 511

# CHECK-INST: msubs.u %e6, %e0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0xd0,0x60]
msubs.u %e6, %e0, %d0, 271

# CHECK-INST: msubs.u %e6, %e0, %d0, 496
# CHECK: encoding: [0x33,0x00,0xdf,0x60]
msubs.u %e6, %e0, %d0, 496

# CHECK-INST: msubs.u %e6, %e0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0xdf,0x60]
msubs.u %e6, %e0, %d0, 511

# CHECK-INST: msubs.u %e6, %e0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0xd0,0x60]
msubs.u %e6, %e0, %d1, 271

# CHECK-INST: msubs.u %e6, %e0, %d1, 496
# CHECK: encoding: [0x33,0x01,0xdf,0x60]
msubs.u %e6, %e0, %d1, 496

# CHECK-INST: msubs.u %e6, %e0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0xdf,0x60]
msubs.u %e6, %e0, %d1, 511

# CHECK-INST: msubs.u %e6, %e0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0xd0,0x60]
msubs.u %e6, %e0, %d14, 271

# CHECK-INST: msubs.u %e6, %e0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0xdf,0x60]
msubs.u %e6, %e0, %d14, 496

# CHECK-INST: msubs.u %e6, %e0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0xdf,0x60]
msubs.u %e6, %e0, %d14, 511

# CHECK-INST: msubs.u %e6, %e0, %d15, 271
# CHECK: encoding: [0x33,0xff,0xd0,0x60]
msubs.u %e6, %e0, %d15, 271

# CHECK-INST: msubs.u %e6, %e0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0xdf,0x60]
msubs.u %e6, %e0, %d15, 496

# CHECK-INST: msubs.u %e6, %e0, %d15, 511
# CHECK: encoding: [0x33,0xff,0xdf,0x60]
msubs.u %e6, %e0, %d15, 511

# CHECK-INST: msubs.u %e6, %e6, %d0, 271
# CHECK: encoding: [0x33,0xf0,0xd0,0x66]
msubs.u %e6, %e6, %d0, 271

# CHECK-INST: msubs.u %e6, %e6, %d0, 496
# CHECK: encoding: [0x33,0x00,0xdf,0x66]
msubs.u %e6, %e6, %d0, 496

# CHECK-INST: msubs.u %e6, %e6, %d0, 511
# CHECK: encoding: [0x33,0xf0,0xdf,0x66]
msubs.u %e6, %e6, %d0, 511

# CHECK-INST: msubs.u %e6, %e6, %d1, 271
# CHECK: encoding: [0x33,0xf1,0xd0,0x66]
msubs.u %e6, %e6, %d1, 271

# CHECK-INST: msubs.u %e6, %e6, %d1, 496
# CHECK: encoding: [0x33,0x01,0xdf,0x66]
msubs.u %e6, %e6, %d1, 496

# CHECK-INST: msubs.u %e6, %e6, %d1, 511
# CHECK: encoding: [0x33,0xf1,0xdf,0x66]
msubs.u %e6, %e6, %d1, 511

# CHECK-INST: msubs.u %e6, %e6, %d14, 271
# CHECK: encoding: [0x33,0xfe,0xd0,0x66]
msubs.u %e6, %e6, %d14, 271

# CHECK-INST: msubs.u %e6, %e6, %d14, 496
# CHECK: encoding: [0x33,0x0e,0xdf,0x66]
msubs.u %e6, %e6, %d14, 496

# CHECK-INST: msubs.u %e6, %e6, %d14, 511
# CHECK: encoding: [0x33,0xfe,0xdf,0x66]
msubs.u %e6, %e6, %d14, 511

# CHECK-INST: msubs.u %e6, %e6, %d15, 271
# CHECK: encoding: [0x33,0xff,0xd0,0x66]
msubs.u %e6, %e6, %d15, 271

# CHECK-INST: msubs.u %e6, %e6, %d15, 496
# CHECK: encoding: [0x33,0x0f,0xdf,0x66]
msubs.u %e6, %e6, %d15, 496

# CHECK-INST: msubs.u %e6, %e6, %d15, 511
# CHECK: encoding: [0x33,0xff,0xdf,0x66]
msubs.u %e6, %e6, %d15, 511

# CHECK-INST: msubs.u %e6, %e14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0xd0,0x6e]
msubs.u %e6, %e14, %d0, 271

# CHECK-INST: msubs.u %e6, %e14, %d0, 496
# CHECK: encoding: [0x33,0x00,0xdf,0x6e]
msubs.u %e6, %e14, %d0, 496

# CHECK-INST: msubs.u %e6, %e14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0xdf,0x6e]
msubs.u %e6, %e14, %d0, 511

# CHECK-INST: msubs.u %e6, %e14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0xd0,0x6e]
msubs.u %e6, %e14, %d1, 271

# CHECK-INST: msubs.u %e6, %e14, %d1, 496
# CHECK: encoding: [0x33,0x01,0xdf,0x6e]
msubs.u %e6, %e14, %d1, 496

# CHECK-INST: msubs.u %e6, %e14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0xdf,0x6e]
msubs.u %e6, %e14, %d1, 511

# CHECK-INST: msubs.u %e6, %e14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0xd0,0x6e]
msubs.u %e6, %e14, %d14, 271

# CHECK-INST: msubs.u %e6, %e14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0xdf,0x6e]
msubs.u %e6, %e14, %d14, 496

# CHECK-INST: msubs.u %e6, %e14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0xdf,0x6e]
msubs.u %e6, %e14, %d14, 511

# CHECK-INST: msubs.u %e6, %e14, %d15, 271
# CHECK: encoding: [0x33,0xff,0xd0,0x6e]
msubs.u %e6, %e14, %d15, 271

# CHECK-INST: msubs.u %e6, %e14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0xdf,0x6e]
msubs.u %e6, %e14, %d15, 496

# CHECK-INST: msubs.u %e6, %e14, %d15, 511
# CHECK: encoding: [0x33,0xff,0xdf,0x6e]
msubs.u %e6, %e14, %d15, 511

# CHECK-INST: msubs.u %e14, %e0, %d0, 271
# CHECK: encoding: [0x33,0xf0,0xd0,0xe0]
msubs.u %e14, %e0, %d0, 271

# CHECK-INST: msubs.u %e14, %e0, %d0, 496
# CHECK: encoding: [0x33,0x00,0xdf,0xe0]
msubs.u %e14, %e0, %d0, 496

# CHECK-INST: msubs.u %e14, %e0, %d0, 511
# CHECK: encoding: [0x33,0xf0,0xdf,0xe0]
msubs.u %e14, %e0, %d0, 511

# CHECK-INST: msubs.u %e14, %e0, %d1, 271
# CHECK: encoding: [0x33,0xf1,0xd0,0xe0]
msubs.u %e14, %e0, %d1, 271

# CHECK-INST: msubs.u %e14, %e0, %d1, 496
# CHECK: encoding: [0x33,0x01,0xdf,0xe0]
msubs.u %e14, %e0, %d1, 496

# CHECK-INST: msubs.u %e14, %e0, %d1, 511
# CHECK: encoding: [0x33,0xf1,0xdf,0xe0]
msubs.u %e14, %e0, %d1, 511

# CHECK-INST: msubs.u %e14, %e0, %d14, 271
# CHECK: encoding: [0x33,0xfe,0xd0,0xe0]
msubs.u %e14, %e0, %d14, 271

# CHECK-INST: msubs.u %e14, %e0, %d14, 496
# CHECK: encoding: [0x33,0x0e,0xdf,0xe0]
msubs.u %e14, %e0, %d14, 496

# CHECK-INST: msubs.u %e14, %e0, %d14, 511
# CHECK: encoding: [0x33,0xfe,0xdf,0xe0]
msubs.u %e14, %e0, %d14, 511

# CHECK-INST: msubs.u %e14, %e0, %d15, 271
# CHECK: encoding: [0x33,0xff,0xd0,0xe0]
msubs.u %e14, %e0, %d15, 271

# CHECK-INST: msubs.u %e14, %e0, %d15, 496
# CHECK: encoding: [0x33,0x0f,0xdf,0xe0]
msubs.u %e14, %e0, %d15, 496

# CHECK-INST: msubs.u %e14, %e0, %d15, 511
# CHECK: encoding: [0x33,0xff,0xdf,0xe0]
msubs.u %e14, %e0, %d15, 511

# CHECK-INST: msubs.u %e14, %e6, %d0, 271
# CHECK: encoding: [0x33,0xf0,0xd0,0xe6]
msubs.u %e14, %e6, %d0, 271

# CHECK-INST: msubs.u %e14, %e6, %d0, 496
# CHECK: encoding: [0x33,0x00,0xdf,0xe6]
msubs.u %e14, %e6, %d0, 496

# CHECK-INST: msubs.u %e14, %e6, %d0, 511
# CHECK: encoding: [0x33,0xf0,0xdf,0xe6]
msubs.u %e14, %e6, %d0, 511

# CHECK-INST: msubs.u %e14, %e6, %d1, 271
# CHECK: encoding: [0x33,0xf1,0xd0,0xe6]
msubs.u %e14, %e6, %d1, 271

# CHECK-INST: msubs.u %e14, %e6, %d1, 496
# CHECK: encoding: [0x33,0x01,0xdf,0xe6]
msubs.u %e14, %e6, %d1, 496

# CHECK-INST: msubs.u %e14, %e6, %d1, 511
# CHECK: encoding: [0x33,0xf1,0xdf,0xe6]
msubs.u %e14, %e6, %d1, 511

# CHECK-INST: msubs.u %e14, %e6, %d14, 271
# CHECK: encoding: [0x33,0xfe,0xd0,0xe6]
msubs.u %e14, %e6, %d14, 271

# CHECK-INST: msubs.u %e14, %e6, %d14, 496
# CHECK: encoding: [0x33,0x0e,0xdf,0xe6]
msubs.u %e14, %e6, %d14, 496

# CHECK-INST: msubs.u %e14, %e6, %d14, 511
# CHECK: encoding: [0x33,0xfe,0xdf,0xe6]
msubs.u %e14, %e6, %d14, 511

# CHECK-INST: msubs.u %e14, %e6, %d15, 271
# CHECK: encoding: [0x33,0xff,0xd0,0xe6]
msubs.u %e14, %e6, %d15, 271

# CHECK-INST: msubs.u %e14, %e6, %d15, 496
# CHECK: encoding: [0x33,0x0f,0xdf,0xe6]
msubs.u %e14, %e6, %d15, 496

# CHECK-INST: msubs.u %e14, %e6, %d15, 511
# CHECK: encoding: [0x33,0xff,0xdf,0xe6]
msubs.u %e14, %e6, %d15, 511

# CHECK-INST: msubs.u %e14, %e14, %d0, 271
# CHECK: encoding: [0x33,0xf0,0xd0,0xee]
msubs.u %e14, %e14, %d0, 271

# CHECK-INST: msubs.u %e14, %e14, %d0, 496
# CHECK: encoding: [0x33,0x00,0xdf,0xee]
msubs.u %e14, %e14, %d0, 496

# CHECK-INST: msubs.u %e14, %e14, %d0, 511
# CHECK: encoding: [0x33,0xf0,0xdf,0xee]
msubs.u %e14, %e14, %d0, 511

# CHECK-INST: msubs.u %e14, %e14, %d1, 271
# CHECK: encoding: [0x33,0xf1,0xd0,0xee]
msubs.u %e14, %e14, %d1, 271

# CHECK-INST: msubs.u %e14, %e14, %d1, 496
# CHECK: encoding: [0x33,0x01,0xdf,0xee]
msubs.u %e14, %e14, %d1, 496

# CHECK-INST: msubs.u %e14, %e14, %d1, 511
# CHECK: encoding: [0x33,0xf1,0xdf,0xee]
msubs.u %e14, %e14, %d1, 511

# CHECK-INST: msubs.u %e14, %e14, %d14, 271
# CHECK: encoding: [0x33,0xfe,0xd0,0xee]
msubs.u %e14, %e14, %d14, 271

# CHECK-INST: msubs.u %e14, %e14, %d14, 496
# CHECK: encoding: [0x33,0x0e,0xdf,0xee]
msubs.u %e14, %e14, %d14, 496

# CHECK-INST: msubs.u %e14, %e14, %d14, 511
# CHECK: encoding: [0x33,0xfe,0xdf,0xee]
msubs.u %e14, %e14, %d14, 511

# CHECK-INST: msubs.u %e14, %e14, %d15, 271
# CHECK: encoding: [0x33,0xff,0xd0,0xee]
msubs.u %e14, %e14, %d15, 271

# CHECK-INST: msubs.u %e14, %e14, %d15, 496
# CHECK: encoding: [0x33,0x0f,0xdf,0xee]
msubs.u %e14, %e14, %d15, 496

# CHECK-INST: msubs.u %e14, %e14, %d15, 511
# CHECK: encoding: [0x33,0xff,0xdf,0xee]
msubs.u %e14, %e14, %d15, 511

# CHECK-INST: mul %d0, %d0
# CHECK: encoding: [0xe2,0x00]
mul %d0, %d0

# CHECK-INST: mul %d0, %d1
# CHECK: encoding: [0xe2,0x10]
mul %d0, %d1

# CHECK-INST: mul %d0, %d14
# CHECK: encoding: [0xe2,0xe0]
mul %d0, %d14

# CHECK-INST: mul %d0, %d15
# CHECK: encoding: [0xe2,0xf0]
mul %d0, %d15

# CHECK-INST: mul %d1, %d0
# CHECK: encoding: [0xe2,0x01]
mul %d1, %d0

# CHECK-INST: mul %d1, %d1
# CHECK: encoding: [0xe2,0x11]
mul %d1, %d1

# CHECK-INST: mul %d1, %d14
# CHECK: encoding: [0xe2,0xe1]
mul %d1, %d14

# CHECK-INST: mul %d1, %d15
# CHECK: encoding: [0xe2,0xf1]
mul %d1, %d15

# CHECK-INST: mul %d14, %d0
# CHECK: encoding: [0xe2,0x0e]
mul %d14, %d0

# CHECK-INST: mul %d14, %d1
# CHECK: encoding: [0xe2,0x1e]
mul %d14, %d1

# CHECK-INST: mul %d14, %d14
# CHECK: encoding: [0xe2,0xee]
mul %d14, %d14

# CHECK-INST: mul %d14, %d15
# CHECK: encoding: [0xe2,0xfe]
mul %d14, %d15

# CHECK-INST: mul %d15, %d0
# CHECK: encoding: [0xe2,0x0f]
mul %d15, %d0

# CHECK-INST: mul %d15, %d1
# CHECK: encoding: [0xe2,0x1f]
mul %d15, %d1

# CHECK-INST: mul %d15, %d14
# CHECK: encoding: [0xe2,0xef]
mul %d15, %d14

# CHECK-INST: mul %d15, %d15
# CHECK: encoding: [0xe2,0xff]
mul %d15, %d15

# CHECK-INST: mul %d0, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x0a,0x00]
mul %d0, %d0, %d0

# CHECK-INST: mul %d0, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x0a,0x00]
mul %d0, %d0, %d1

# CHECK-INST: mul %d0, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x0a,0x00]
mul %d0, %d0, %d14

# CHECK-INST: mul %d0, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x0a,0x00]
mul %d0, %d0, %d15

# CHECK-INST: mul %d0, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x0a,0x00]
mul %d0, %d1, %d0

# CHECK-INST: mul %d0, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x0a,0x00]
mul %d0, %d1, %d1

# CHECK-INST: mul %d0, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x0a,0x00]
mul %d0, %d1, %d14

# CHECK-INST: mul %d0, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x0a,0x00]
mul %d0, %d1, %d15

# CHECK-INST: mul %d0, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x0a,0x00]
mul %d0, %d14, %d0

# CHECK-INST: mul %d0, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x0a,0x00]
mul %d0, %d14, %d1

# CHECK-INST: mul %d0, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x0a,0x00]
mul %d0, %d14, %d14

# CHECK-INST: mul %d0, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x0a,0x00]
mul %d0, %d14, %d15

# CHECK-INST: mul %d0, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x0a,0x00]
mul %d0, %d15, %d0

# CHECK-INST: mul %d0, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x0a,0x00]
mul %d0, %d15, %d1

# CHECK-INST: mul %d0, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x0a,0x00]
mul %d0, %d15, %d14

# CHECK-INST: mul %d0, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x0a,0x00]
mul %d0, %d15, %d15

# CHECK-INST: mul %d1, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x0a,0x10]
mul %d1, %d0, %d0

# CHECK-INST: mul %d1, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x0a,0x10]
mul %d1, %d0, %d1

# CHECK-INST: mul %d1, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x0a,0x10]
mul %d1, %d0, %d14

# CHECK-INST: mul %d1, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x0a,0x10]
mul %d1, %d0, %d15

# CHECK-INST: mul %d1, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x0a,0x10]
mul %d1, %d1, %d0

# CHECK-INST: mul %d1, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x0a,0x10]
mul %d1, %d1, %d1

# CHECK-INST: mul %d1, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x0a,0x10]
mul %d1, %d1, %d14

# CHECK-INST: mul %d1, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x0a,0x10]
mul %d1, %d1, %d15

# CHECK-INST: mul %d1, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x0a,0x10]
mul %d1, %d14, %d0

# CHECK-INST: mul %d1, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x0a,0x10]
mul %d1, %d14, %d1

# CHECK-INST: mul %d1, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x0a,0x10]
mul %d1, %d14, %d14

# CHECK-INST: mul %d1, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x0a,0x10]
mul %d1, %d14, %d15

# CHECK-INST: mul %d1, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x0a,0x10]
mul %d1, %d15, %d0

# CHECK-INST: mul %d1, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x0a,0x10]
mul %d1, %d15, %d1

# CHECK-INST: mul %d1, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x0a,0x10]
mul %d1, %d15, %d14

# CHECK-INST: mul %d1, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x0a,0x10]
mul %d1, %d15, %d15

# CHECK-INST: mul %d14, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x0a,0xe0]
mul %d14, %d0, %d0

# CHECK-INST: mul %d14, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x0a,0xe0]
mul %d14, %d0, %d1

# CHECK-INST: mul %d14, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x0a,0xe0]
mul %d14, %d0, %d14

# CHECK-INST: mul %d14, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x0a,0xe0]
mul %d14, %d0, %d15

# CHECK-INST: mul %d14, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x0a,0xe0]
mul %d14, %d1, %d0

# CHECK-INST: mul %d14, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x0a,0xe0]
mul %d14, %d1, %d1

# CHECK-INST: mul %d14, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x0a,0xe0]
mul %d14, %d1, %d14

# CHECK-INST: mul %d14, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x0a,0xe0]
mul %d14, %d1, %d15

# CHECK-INST: mul %d14, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x0a,0xe0]
mul %d14, %d14, %d0

# CHECK-INST: mul %d14, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x0a,0xe0]
mul %d14, %d14, %d1

# CHECK-INST: mul %d14, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x0a,0xe0]
mul %d14, %d14, %d14

# CHECK-INST: mul %d14, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x0a,0xe0]
mul %d14, %d14, %d15

# CHECK-INST: mul %d14, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x0a,0xe0]
mul %d14, %d15, %d0

# CHECK-INST: mul %d14, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x0a,0xe0]
mul %d14, %d15, %d1

# CHECK-INST: mul %d14, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x0a,0xe0]
mul %d14, %d15, %d14

# CHECK-INST: mul %d14, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x0a,0xe0]
mul %d14, %d15, %d15

# CHECK-INST: mul %d15, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x0a,0xf0]
mul %d15, %d0, %d0

# CHECK-INST: mul %d15, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x0a,0xf0]
mul %d15, %d0, %d1

# CHECK-INST: mul %d15, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x0a,0xf0]
mul %d15, %d0, %d14

# CHECK-INST: mul %d15, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x0a,0xf0]
mul %d15, %d0, %d15

# CHECK-INST: mul %d15, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x0a,0xf0]
mul %d15, %d1, %d0

# CHECK-INST: mul %d15, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x0a,0xf0]
mul %d15, %d1, %d1

# CHECK-INST: mul %d15, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x0a,0xf0]
mul %d15, %d1, %d14

# CHECK-INST: mul %d15, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x0a,0xf0]
mul %d15, %d1, %d15

# CHECK-INST: mul %d15, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x0a,0xf0]
mul %d15, %d14, %d0

# CHECK-INST: mul %d15, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x0a,0xf0]
mul %d15, %d14, %d1

# CHECK-INST: mul %d15, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x0a,0xf0]
mul %d15, %d14, %d14

# CHECK-INST: mul %d15, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x0a,0xf0]
mul %d15, %d14, %d15

# CHECK-INST: mul %d15, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x0a,0xf0]
mul %d15, %d15, %d0

# CHECK-INST: mul %d15, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x0a,0xf0]
mul %d15, %d15, %d1

# CHECK-INST: mul %d15, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x0a,0xf0]
mul %d15, %d15, %d14

# CHECK-INST: mul %d15, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x0a,0xf0]
mul %d15, %d15, %d15

# CHECK-INST: mul %d0, %d0, -256
# CHECK: encoding: [0x53,0x00,0x30,0x00]
mul %d0, %d0, -256

# CHECK-INST: mul %d0, %d0, -129
# CHECK: encoding: [0x53,0xf0,0x37,0x00]
mul %d0, %d0, -129

# CHECK-INST: mul %d0, %d0, -1
# CHECK: encoding: [0x53,0xf0,0x3f,0x00]
mul %d0, %d0, -1

# CHECK-INST: mul %d0, %d0, 0
# CHECK: encoding: [0x53,0x00,0x20,0x00]
mul %d0, %d0, 0

# CHECK-INST: mul %d0, %d0, 1
# CHECK: encoding: [0x53,0x10,0x20,0x00]
mul %d0, %d0, 1

# CHECK-INST: mul %d0, %d0, 128
# CHECK: encoding: [0x53,0x00,0x28,0x00]
mul %d0, %d0, 128

# CHECK-INST: mul %d0, %d0, 255
# CHECK: encoding: [0x53,0xf0,0x2f,0x00]
mul %d0, %d0, 255

# CHECK-INST: mul %d0, %d1, -256
# CHECK: encoding: [0x53,0x01,0x30,0x00]
mul %d0, %d1, -256

# CHECK-INST: mul %d0, %d1, -129
# CHECK: encoding: [0x53,0xf1,0x37,0x00]
mul %d0, %d1, -129

# CHECK-INST: mul %d0, %d1, -1
# CHECK: encoding: [0x53,0xf1,0x3f,0x00]
mul %d0, %d1, -1

# CHECK-INST: mul %d0, %d1, 0
# CHECK: encoding: [0x53,0x01,0x20,0x00]
mul %d0, %d1, 0

# CHECK-INST: mul %d0, %d1, 1
# CHECK: encoding: [0x53,0x11,0x20,0x00]
mul %d0, %d1, 1

# CHECK-INST: mul %d0, %d1, 128
# CHECK: encoding: [0x53,0x01,0x28,0x00]
mul %d0, %d1, 128

# CHECK-INST: mul %d0, %d1, 255
# CHECK: encoding: [0x53,0xf1,0x2f,0x00]
mul %d0, %d1, 255

# CHECK-INST: mul %d0, %d14, -256
# CHECK: encoding: [0x53,0x0e,0x30,0x00]
mul %d0, %d14, -256

# CHECK-INST: mul %d0, %d14, -129
# CHECK: encoding: [0x53,0xfe,0x37,0x00]
mul %d0, %d14, -129

# CHECK-INST: mul %d0, %d14, -1
# CHECK: encoding: [0x53,0xfe,0x3f,0x00]
mul %d0, %d14, -1

# CHECK-INST: mul %d0, %d14, 0
# CHECK: encoding: [0x53,0x0e,0x20,0x00]
mul %d0, %d14, 0

# CHECK-INST: mul %d0, %d14, 1
# CHECK: encoding: [0x53,0x1e,0x20,0x00]
mul %d0, %d14, 1

# CHECK-INST: mul %d0, %d14, 128
# CHECK: encoding: [0x53,0x0e,0x28,0x00]
mul %d0, %d14, 128

# CHECK-INST: mul %d0, %d14, 255
# CHECK: encoding: [0x53,0xfe,0x2f,0x00]
mul %d0, %d14, 255

# CHECK-INST: mul %d0, %d15, -256
# CHECK: encoding: [0x53,0x0f,0x30,0x00]
mul %d0, %d15, -256

# CHECK-INST: mul %d0, %d15, -129
# CHECK: encoding: [0x53,0xff,0x37,0x00]
mul %d0, %d15, -129

# CHECK-INST: mul %d0, %d15, -1
# CHECK: encoding: [0x53,0xff,0x3f,0x00]
mul %d0, %d15, -1

# CHECK-INST: mul %d0, %d15, 0
# CHECK: encoding: [0x53,0x0f,0x20,0x00]
mul %d0, %d15, 0

# CHECK-INST: mul %d0, %d15, 1
# CHECK: encoding: [0x53,0x1f,0x20,0x00]
mul %d0, %d15, 1

# CHECK-INST: mul %d0, %d15, 128
# CHECK: encoding: [0x53,0x0f,0x28,0x00]
mul %d0, %d15, 128

# CHECK-INST: mul %d0, %d15, 255
# CHECK: encoding: [0x53,0xff,0x2f,0x00]
mul %d0, %d15, 255

# CHECK-INST: mul %d1, %d0, -256
# CHECK: encoding: [0x53,0x00,0x30,0x10]
mul %d1, %d0, -256

# CHECK-INST: mul %d1, %d0, -129
# CHECK: encoding: [0x53,0xf0,0x37,0x10]
mul %d1, %d0, -129

# CHECK-INST: mul %d1, %d0, -1
# CHECK: encoding: [0x53,0xf0,0x3f,0x10]
mul %d1, %d0, -1

# CHECK-INST: mul %d1, %d0, 0
# CHECK: encoding: [0x53,0x00,0x20,0x10]
mul %d1, %d0, 0

# CHECK-INST: mul %d1, %d0, 1
# CHECK: encoding: [0x53,0x10,0x20,0x10]
mul %d1, %d0, 1

# CHECK-INST: mul %d1, %d0, 128
# CHECK: encoding: [0x53,0x00,0x28,0x10]
mul %d1, %d0, 128

# CHECK-INST: mul %d1, %d0, 255
# CHECK: encoding: [0x53,0xf0,0x2f,0x10]
mul %d1, %d0, 255

# CHECK-INST: mul %d1, %d1, -256
# CHECK: encoding: [0x53,0x01,0x30,0x10]
mul %d1, %d1, -256

# CHECK-INST: mul %d1, %d1, -129
# CHECK: encoding: [0x53,0xf1,0x37,0x10]
mul %d1, %d1, -129

# CHECK-INST: mul %d1, %d1, -1
# CHECK: encoding: [0x53,0xf1,0x3f,0x10]
mul %d1, %d1, -1

# CHECK-INST: mul %d1, %d1, 0
# CHECK: encoding: [0x53,0x01,0x20,0x10]
mul %d1, %d1, 0

# CHECK-INST: mul %d1, %d1, 1
# CHECK: encoding: [0x53,0x11,0x20,0x10]
mul %d1, %d1, 1

# CHECK-INST: mul %d1, %d1, 128
# CHECK: encoding: [0x53,0x01,0x28,0x10]
mul %d1, %d1, 128

# CHECK-INST: mul %d1, %d1, 255
# CHECK: encoding: [0x53,0xf1,0x2f,0x10]
mul %d1, %d1, 255

# CHECK-INST: mul %d1, %d14, -256
# CHECK: encoding: [0x53,0x0e,0x30,0x10]
mul %d1, %d14, -256

# CHECK-INST: mul %d1, %d14, -129
# CHECK: encoding: [0x53,0xfe,0x37,0x10]
mul %d1, %d14, -129

# CHECK-INST: mul %d1, %d14, -1
# CHECK: encoding: [0x53,0xfe,0x3f,0x10]
mul %d1, %d14, -1

# CHECK-INST: mul %d1, %d14, 0
# CHECK: encoding: [0x53,0x0e,0x20,0x10]
mul %d1, %d14, 0

# CHECK-INST: mul %d1, %d14, 1
# CHECK: encoding: [0x53,0x1e,0x20,0x10]
mul %d1, %d14, 1

# CHECK-INST: mul %d1, %d14, 128
# CHECK: encoding: [0x53,0x0e,0x28,0x10]
mul %d1, %d14, 128

# CHECK-INST: mul %d1, %d14, 255
# CHECK: encoding: [0x53,0xfe,0x2f,0x10]
mul %d1, %d14, 255

# CHECK-INST: mul %d1, %d15, -256
# CHECK: encoding: [0x53,0x0f,0x30,0x10]
mul %d1, %d15, -256

# CHECK-INST: mul %d1, %d15, -129
# CHECK: encoding: [0x53,0xff,0x37,0x10]
mul %d1, %d15, -129

# CHECK-INST: mul %d1, %d15, -1
# CHECK: encoding: [0x53,0xff,0x3f,0x10]
mul %d1, %d15, -1

# CHECK-INST: mul %d1, %d15, 0
# CHECK: encoding: [0x53,0x0f,0x20,0x10]
mul %d1, %d15, 0

# CHECK-INST: mul %d1, %d15, 1
# CHECK: encoding: [0x53,0x1f,0x20,0x10]
mul %d1, %d15, 1

# CHECK-INST: mul %d1, %d15, 128
# CHECK: encoding: [0x53,0x0f,0x28,0x10]
mul %d1, %d15, 128

# CHECK-INST: mul %d1, %d15, 255
# CHECK: encoding: [0x53,0xff,0x2f,0x10]
mul %d1, %d15, 255

# CHECK-INST: mul %d14, %d0, -256
# CHECK: encoding: [0x53,0x00,0x30,0xe0]
mul %d14, %d0, -256

# CHECK-INST: mul %d14, %d0, -129
# CHECK: encoding: [0x53,0xf0,0x37,0xe0]
mul %d14, %d0, -129

# CHECK-INST: mul %d14, %d0, -1
# CHECK: encoding: [0x53,0xf0,0x3f,0xe0]
mul %d14, %d0, -1

# CHECK-INST: mul %d14, %d0, 0
# CHECK: encoding: [0x53,0x00,0x20,0xe0]
mul %d14, %d0, 0

# CHECK-INST: mul %d14, %d0, 1
# CHECK: encoding: [0x53,0x10,0x20,0xe0]
mul %d14, %d0, 1

# CHECK-INST: mul %d14, %d0, 128
# CHECK: encoding: [0x53,0x00,0x28,0xe0]
mul %d14, %d0, 128

# CHECK-INST: mul %d14, %d0, 255
# CHECK: encoding: [0x53,0xf0,0x2f,0xe0]
mul %d14, %d0, 255

# CHECK-INST: mul %d14, %d1, -256
# CHECK: encoding: [0x53,0x01,0x30,0xe0]
mul %d14, %d1, -256

# CHECK-INST: mul %d14, %d1, -129
# CHECK: encoding: [0x53,0xf1,0x37,0xe0]
mul %d14, %d1, -129

# CHECK-INST: mul %d14, %d1, -1
# CHECK: encoding: [0x53,0xf1,0x3f,0xe0]
mul %d14, %d1, -1

# CHECK-INST: mul %d14, %d1, 0
# CHECK: encoding: [0x53,0x01,0x20,0xe0]
mul %d14, %d1, 0

# CHECK-INST: mul %d14, %d1, 1
# CHECK: encoding: [0x53,0x11,0x20,0xe0]
mul %d14, %d1, 1

# CHECK-INST: mul %d14, %d1, 128
# CHECK: encoding: [0x53,0x01,0x28,0xe0]
mul %d14, %d1, 128

# CHECK-INST: mul %d14, %d1, 255
# CHECK: encoding: [0x53,0xf1,0x2f,0xe0]
mul %d14, %d1, 255

# CHECK-INST: mul %d14, %d14, -256
# CHECK: encoding: [0x53,0x0e,0x30,0xe0]
mul %d14, %d14, -256

# CHECK-INST: mul %d14, %d14, -129
# CHECK: encoding: [0x53,0xfe,0x37,0xe0]
mul %d14, %d14, -129

# CHECK-INST: mul %d14, %d14, -1
# CHECK: encoding: [0x53,0xfe,0x3f,0xe0]
mul %d14, %d14, -1

# CHECK-INST: mul %d14, %d14, 0
# CHECK: encoding: [0x53,0x0e,0x20,0xe0]
mul %d14, %d14, 0

# CHECK-INST: mul %d14, %d14, 1
# CHECK: encoding: [0x53,0x1e,0x20,0xe0]
mul %d14, %d14, 1

# CHECK-INST: mul %d14, %d14, 128
# CHECK: encoding: [0x53,0x0e,0x28,0xe0]
mul %d14, %d14, 128

# CHECK-INST: mul %d14, %d14, 255
# CHECK: encoding: [0x53,0xfe,0x2f,0xe0]
mul %d14, %d14, 255

# CHECK-INST: mul %d14, %d15, -256
# CHECK: encoding: [0x53,0x0f,0x30,0xe0]
mul %d14, %d15, -256

# CHECK-INST: mul %d14, %d15, -129
# CHECK: encoding: [0x53,0xff,0x37,0xe0]
mul %d14, %d15, -129

# CHECK-INST: mul %d14, %d15, -1
# CHECK: encoding: [0x53,0xff,0x3f,0xe0]
mul %d14, %d15, -1

# CHECK-INST: mul %d14, %d15, 0
# CHECK: encoding: [0x53,0x0f,0x20,0xe0]
mul %d14, %d15, 0

# CHECK-INST: mul %d14, %d15, 1
# CHECK: encoding: [0x53,0x1f,0x20,0xe0]
mul %d14, %d15, 1

# CHECK-INST: mul %d14, %d15, 128
# CHECK: encoding: [0x53,0x0f,0x28,0xe0]
mul %d14, %d15, 128

# CHECK-INST: mul %d14, %d15, 255
# CHECK: encoding: [0x53,0xff,0x2f,0xe0]
mul %d14, %d15, 255

# CHECK-INST: mul %d15, %d0, -256
# CHECK: encoding: [0x53,0x00,0x30,0xf0]
mul %d15, %d0, -256

# CHECK-INST: mul %d15, %d0, -129
# CHECK: encoding: [0x53,0xf0,0x37,0xf0]
mul %d15, %d0, -129

# CHECK-INST: mul %d15, %d0, -1
# CHECK: encoding: [0x53,0xf0,0x3f,0xf0]
mul %d15, %d0, -1

# CHECK-INST: mul %d15, %d0, 0
# CHECK: encoding: [0x53,0x00,0x20,0xf0]
mul %d15, %d0, 0

# CHECK-INST: mul %d15, %d0, 1
# CHECK: encoding: [0x53,0x10,0x20,0xf0]
mul %d15, %d0, 1

# CHECK-INST: mul %d15, %d0, 128
# CHECK: encoding: [0x53,0x00,0x28,0xf0]
mul %d15, %d0, 128

# CHECK-INST: mul %d15, %d0, 255
# CHECK: encoding: [0x53,0xf0,0x2f,0xf0]
mul %d15, %d0, 255

# CHECK-INST: mul %d15, %d1, -256
# CHECK: encoding: [0x53,0x01,0x30,0xf0]
mul %d15, %d1, -256

# CHECK-INST: mul %d15, %d1, -129
# CHECK: encoding: [0x53,0xf1,0x37,0xf0]
mul %d15, %d1, -129

# CHECK-INST: mul %d15, %d1, -1
# CHECK: encoding: [0x53,0xf1,0x3f,0xf0]
mul %d15, %d1, -1

# CHECK-INST: mul %d15, %d1, 0
# CHECK: encoding: [0x53,0x01,0x20,0xf0]
mul %d15, %d1, 0

# CHECK-INST: mul %d15, %d1, 1
# CHECK: encoding: [0x53,0x11,0x20,0xf0]
mul %d15, %d1, 1

# CHECK-INST: mul %d15, %d1, 128
# CHECK: encoding: [0x53,0x01,0x28,0xf0]
mul %d15, %d1, 128

# CHECK-INST: mul %d15, %d1, 255
# CHECK: encoding: [0x53,0xf1,0x2f,0xf0]
mul %d15, %d1, 255

# CHECK-INST: mul %d15, %d14, -256
# CHECK: encoding: [0x53,0x0e,0x30,0xf0]
mul %d15, %d14, -256

# CHECK-INST: mul %d15, %d14, -129
# CHECK: encoding: [0x53,0xfe,0x37,0xf0]
mul %d15, %d14, -129

# CHECK-INST: mul %d15, %d14, -1
# CHECK: encoding: [0x53,0xfe,0x3f,0xf0]
mul %d15, %d14, -1

# CHECK-INST: mul %d15, %d14, 0
# CHECK: encoding: [0x53,0x0e,0x20,0xf0]
mul %d15, %d14, 0

# CHECK-INST: mul %d15, %d14, 1
# CHECK: encoding: [0x53,0x1e,0x20,0xf0]
mul %d15, %d14, 1

# CHECK-INST: mul %d15, %d14, 128
# CHECK: encoding: [0x53,0x0e,0x28,0xf0]
mul %d15, %d14, 128

# CHECK-INST: mul %d15, %d14, 255
# CHECK: encoding: [0x53,0xfe,0x2f,0xf0]
mul %d15, %d14, 255

# CHECK-INST: mul %d15, %d15, -256
# CHECK: encoding: [0x53,0x0f,0x30,0xf0]
mul %d15, %d15, -256

# CHECK-INST: mul %d15, %d15, -129
# CHECK: encoding: [0x53,0xff,0x37,0xf0]
mul %d15, %d15, -129

# CHECK-INST: mul %d15, %d15, -1
# CHECK: encoding: [0x53,0xff,0x3f,0xf0]
mul %d15, %d15, -1

# CHECK-INST: mul %d15, %d15, 0
# CHECK: encoding: [0x53,0x0f,0x20,0xf0]
mul %d15, %d15, 0

# CHECK-INST: mul %d15, %d15, 1
# CHECK: encoding: [0x53,0x1f,0x20,0xf0]
mul %d15, %d15, 1

# CHECK-INST: mul %d15, %d15, 128
# CHECK: encoding: [0x53,0x0f,0x28,0xf0]
mul %d15, %d15, 128

# CHECK-INST: mul %d15, %d15, 255
# CHECK: encoding: [0x53,0xff,0x2f,0xf0]
mul %d15, %d15, 255

# CHECK-INST: mul %e0, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x6a,0x00]
mul %e0, %d0, %d0

# CHECK-INST: mul %e0, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x6a,0x00]
mul %e0, %d0, %d1

# CHECK-INST: mul %e0, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x6a,0x00]
mul %e0, %d0, %d14

# CHECK-INST: mul %e0, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x6a,0x00]
mul %e0, %d0, %d15

# CHECK-INST: mul %e0, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x6a,0x00]
mul %e0, %d1, %d0

# CHECK-INST: mul %e0, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x6a,0x00]
mul %e0, %d1, %d1

# CHECK-INST: mul %e0, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x6a,0x00]
mul %e0, %d1, %d14

# CHECK-INST: mul %e0, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x6a,0x00]
mul %e0, %d1, %d15

# CHECK-INST: mul %e0, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x6a,0x00]
mul %e0, %d14, %d0

# CHECK-INST: mul %e0, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x6a,0x00]
mul %e0, %d14, %d1

# CHECK-INST: mul %e0, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x6a,0x00]
mul %e0, %d14, %d14

# CHECK-INST: mul %e0, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x6a,0x00]
mul %e0, %d14, %d15

# CHECK-INST: mul %e0, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x6a,0x00]
mul %e0, %d15, %d0

# CHECK-INST: mul %e0, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x6a,0x00]
mul %e0, %d15, %d1

# CHECK-INST: mul %e0, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x6a,0x00]
mul %e0, %d15, %d14

# CHECK-INST: mul %e0, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x6a,0x00]
mul %e0, %d15, %d15

# CHECK-INST: mul %e6, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x6a,0x60]
mul %e6, %d0, %d0

# CHECK-INST: mul %e6, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x6a,0x60]
mul %e6, %d0, %d1

# CHECK-INST: mul %e6, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x6a,0x60]
mul %e6, %d0, %d14

# CHECK-INST: mul %e6, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x6a,0x60]
mul %e6, %d0, %d15

# CHECK-INST: mul %e6, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x6a,0x60]
mul %e6, %d1, %d0

# CHECK-INST: mul %e6, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x6a,0x60]
mul %e6, %d1, %d1

# CHECK-INST: mul %e6, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x6a,0x60]
mul %e6, %d1, %d14

# CHECK-INST: mul %e6, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x6a,0x60]
mul %e6, %d1, %d15

# CHECK-INST: mul %e6, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x6a,0x60]
mul %e6, %d14, %d0

# CHECK-INST: mul %e6, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x6a,0x60]
mul %e6, %d14, %d1

# CHECK-INST: mul %e6, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x6a,0x60]
mul %e6, %d14, %d14

# CHECK-INST: mul %e6, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x6a,0x60]
mul %e6, %d14, %d15

# CHECK-INST: mul %e6, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x6a,0x60]
mul %e6, %d15, %d0

# CHECK-INST: mul %e6, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x6a,0x60]
mul %e6, %d15, %d1

# CHECK-INST: mul %e6, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x6a,0x60]
mul %e6, %d15, %d14

# CHECK-INST: mul %e6, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x6a,0x60]
mul %e6, %d15, %d15

# CHECK-INST: mul %e14, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x6a,0xe0]
mul %e14, %d0, %d0

# CHECK-INST: mul %e14, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x6a,0xe0]
mul %e14, %d0, %d1

# CHECK-INST: mul %e14, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x6a,0xe0]
mul %e14, %d0, %d14

# CHECK-INST: mul %e14, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x6a,0xe0]
mul %e14, %d0, %d15

# CHECK-INST: mul %e14, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x6a,0xe0]
mul %e14, %d1, %d0

# CHECK-INST: mul %e14, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x6a,0xe0]
mul %e14, %d1, %d1

# CHECK-INST: mul %e14, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x6a,0xe0]
mul %e14, %d1, %d14

# CHECK-INST: mul %e14, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x6a,0xe0]
mul %e14, %d1, %d15

# CHECK-INST: mul %e14, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x6a,0xe0]
mul %e14, %d14, %d0

# CHECK-INST: mul %e14, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x6a,0xe0]
mul %e14, %d14, %d1

# CHECK-INST: mul %e14, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x6a,0xe0]
mul %e14, %d14, %d14

# CHECK-INST: mul %e14, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x6a,0xe0]
mul %e14, %d14, %d15

# CHECK-INST: mul %e14, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x6a,0xe0]
mul %e14, %d15, %d0

# CHECK-INST: mul %e14, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x6a,0xe0]
mul %e14, %d15, %d1

# CHECK-INST: mul %e14, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x6a,0xe0]
mul %e14, %d15, %d14

# CHECK-INST: mul %e14, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x6a,0xe0]
mul %e14, %d15, %d15

# CHECK-INST: mul %e0, %d0, -256
# CHECK: encoding: [0x53,0x00,0x70,0x00]
mul %e0, %d0, -256

# CHECK-INST: mul %e0, %d0, -129
# CHECK: encoding: [0x53,0xf0,0x77,0x00]
mul %e0, %d0, -129

# CHECK-INST: mul %e0, %d0, -1
# CHECK: encoding: [0x53,0xf0,0x7f,0x00]
mul %e0, %d0, -1

# CHECK-INST: mul %e0, %d0, 0
# CHECK: encoding: [0x53,0x00,0x60,0x00]
mul %e0, %d0, 0

# CHECK-INST: mul %e0, %d0, 1
# CHECK: encoding: [0x53,0x10,0x60,0x00]
mul %e0, %d0, 1

# CHECK-INST: mul %e0, %d0, 128
# CHECK: encoding: [0x53,0x00,0x68,0x00]
mul %e0, %d0, 128

# CHECK-INST: mul %e0, %d0, 255
# CHECK: encoding: [0x53,0xf0,0x6f,0x00]
mul %e0, %d0, 255

# CHECK-INST: mul %e0, %d1, -256
# CHECK: encoding: [0x53,0x01,0x70,0x00]
mul %e0, %d1, -256

# CHECK-INST: mul %e0, %d1, -129
# CHECK: encoding: [0x53,0xf1,0x77,0x00]
mul %e0, %d1, -129

# CHECK-INST: mul %e0, %d1, -1
# CHECK: encoding: [0x53,0xf1,0x7f,0x00]
mul %e0, %d1, -1

# CHECK-INST: mul %e0, %d1, 0
# CHECK: encoding: [0x53,0x01,0x60,0x00]
mul %e0, %d1, 0

# CHECK-INST: mul %e0, %d1, 1
# CHECK: encoding: [0x53,0x11,0x60,0x00]
mul %e0, %d1, 1

# CHECK-INST: mul %e0, %d1, 128
# CHECK: encoding: [0x53,0x01,0x68,0x00]
mul %e0, %d1, 128

# CHECK-INST: mul %e0, %d1, 255
# CHECK: encoding: [0x53,0xf1,0x6f,0x00]
mul %e0, %d1, 255

# CHECK-INST: mul %e0, %d14, -256
# CHECK: encoding: [0x53,0x0e,0x70,0x00]
mul %e0, %d14, -256

# CHECK-INST: mul %e0, %d14, -129
# CHECK: encoding: [0x53,0xfe,0x77,0x00]
mul %e0, %d14, -129

# CHECK-INST: mul %e0, %d14, -1
# CHECK: encoding: [0x53,0xfe,0x7f,0x00]
mul %e0, %d14, -1

# CHECK-INST: mul %e0, %d14, 0
# CHECK: encoding: [0x53,0x0e,0x60,0x00]
mul %e0, %d14, 0

# CHECK-INST: mul %e0, %d14, 1
# CHECK: encoding: [0x53,0x1e,0x60,0x00]
mul %e0, %d14, 1

# CHECK-INST: mul %e0, %d14, 128
# CHECK: encoding: [0x53,0x0e,0x68,0x00]
mul %e0, %d14, 128

# CHECK-INST: mul %e0, %d14, 255
# CHECK: encoding: [0x53,0xfe,0x6f,0x00]
mul %e0, %d14, 255

# CHECK-INST: mul %e0, %d15, -256
# CHECK: encoding: [0x53,0x0f,0x70,0x00]
mul %e0, %d15, -256

# CHECK-INST: mul %e0, %d15, -129
# CHECK: encoding: [0x53,0xff,0x77,0x00]
mul %e0, %d15, -129

# CHECK-INST: mul %e0, %d15, -1
# CHECK: encoding: [0x53,0xff,0x7f,0x00]
mul %e0, %d15, -1

# CHECK-INST: mul %e0, %d15, 0
# CHECK: encoding: [0x53,0x0f,0x60,0x00]
mul %e0, %d15, 0

# CHECK-INST: mul %e0, %d15, 1
# CHECK: encoding: [0x53,0x1f,0x60,0x00]
mul %e0, %d15, 1

# CHECK-INST: mul %e0, %d15, 128
# CHECK: encoding: [0x53,0x0f,0x68,0x00]
mul %e0, %d15, 128

# CHECK-INST: mul %e0, %d15, 255
# CHECK: encoding: [0x53,0xff,0x6f,0x00]
mul %e0, %d15, 255

# CHECK-INST: mul %e6, %d0, -256
# CHECK: encoding: [0x53,0x00,0x70,0x60]
mul %e6, %d0, -256

# CHECK-INST: mul %e6, %d0, -129
# CHECK: encoding: [0x53,0xf0,0x77,0x60]
mul %e6, %d0, -129

# CHECK-INST: mul %e6, %d0, -1
# CHECK: encoding: [0x53,0xf0,0x7f,0x60]
mul %e6, %d0, -1

# CHECK-INST: mul %e6, %d0, 0
# CHECK: encoding: [0x53,0x00,0x60,0x60]
mul %e6, %d0, 0

# CHECK-INST: mul %e6, %d0, 1
# CHECK: encoding: [0x53,0x10,0x60,0x60]
mul %e6, %d0, 1

# CHECK-INST: mul %e6, %d0, 128
# CHECK: encoding: [0x53,0x00,0x68,0x60]
mul %e6, %d0, 128

# CHECK-INST: mul %e6, %d0, 255
# CHECK: encoding: [0x53,0xf0,0x6f,0x60]
mul %e6, %d0, 255

# CHECK-INST: mul %e6, %d1, -256
# CHECK: encoding: [0x53,0x01,0x70,0x60]
mul %e6, %d1, -256

# CHECK-INST: mul %e6, %d1, -129
# CHECK: encoding: [0x53,0xf1,0x77,0x60]
mul %e6, %d1, -129

# CHECK-INST: mul %e6, %d1, -1
# CHECK: encoding: [0x53,0xf1,0x7f,0x60]
mul %e6, %d1, -1

# CHECK-INST: mul %e6, %d1, 0
# CHECK: encoding: [0x53,0x01,0x60,0x60]
mul %e6, %d1, 0

# CHECK-INST: mul %e6, %d1, 1
# CHECK: encoding: [0x53,0x11,0x60,0x60]
mul %e6, %d1, 1

# CHECK-INST: mul %e6, %d1, 128
# CHECK: encoding: [0x53,0x01,0x68,0x60]
mul %e6, %d1, 128

# CHECK-INST: mul %e6, %d1, 255
# CHECK: encoding: [0x53,0xf1,0x6f,0x60]
mul %e6, %d1, 255

# CHECK-INST: mul %e6, %d14, -256
# CHECK: encoding: [0x53,0x0e,0x70,0x60]
mul %e6, %d14, -256

# CHECK-INST: mul %e6, %d14, -129
# CHECK: encoding: [0x53,0xfe,0x77,0x60]
mul %e6, %d14, -129

# CHECK-INST: mul %e6, %d14, -1
# CHECK: encoding: [0x53,0xfe,0x7f,0x60]
mul %e6, %d14, -1

# CHECK-INST: mul %e6, %d14, 0
# CHECK: encoding: [0x53,0x0e,0x60,0x60]
mul %e6, %d14, 0

# CHECK-INST: mul %e6, %d14, 1
# CHECK: encoding: [0x53,0x1e,0x60,0x60]
mul %e6, %d14, 1

# CHECK-INST: mul %e6, %d14, 128
# CHECK: encoding: [0x53,0x0e,0x68,0x60]
mul %e6, %d14, 128

# CHECK-INST: mul %e6, %d14, 255
# CHECK: encoding: [0x53,0xfe,0x6f,0x60]
mul %e6, %d14, 255

# CHECK-INST: mul %e6, %d15, -256
# CHECK: encoding: [0x53,0x0f,0x70,0x60]
mul %e6, %d15, -256

# CHECK-INST: mul %e6, %d15, -129
# CHECK: encoding: [0x53,0xff,0x77,0x60]
mul %e6, %d15, -129

# CHECK-INST: mul %e6, %d15, -1
# CHECK: encoding: [0x53,0xff,0x7f,0x60]
mul %e6, %d15, -1

# CHECK-INST: mul %e6, %d15, 0
# CHECK: encoding: [0x53,0x0f,0x60,0x60]
mul %e6, %d15, 0

# CHECK-INST: mul %e6, %d15, 1
# CHECK: encoding: [0x53,0x1f,0x60,0x60]
mul %e6, %d15, 1

# CHECK-INST: mul %e6, %d15, 128
# CHECK: encoding: [0x53,0x0f,0x68,0x60]
mul %e6, %d15, 128

# CHECK-INST: mul %e6, %d15, 255
# CHECK: encoding: [0x53,0xff,0x6f,0x60]
mul %e6, %d15, 255

# CHECK-INST: mul %e14, %d0, -256
# CHECK: encoding: [0x53,0x00,0x70,0xe0]
mul %e14, %d0, -256

# CHECK-INST: mul %e14, %d0, -129
# CHECK: encoding: [0x53,0xf0,0x77,0xe0]
mul %e14, %d0, -129

# CHECK-INST: mul %e14, %d0, -1
# CHECK: encoding: [0x53,0xf0,0x7f,0xe0]
mul %e14, %d0, -1

# CHECK-INST: mul %e14, %d0, 0
# CHECK: encoding: [0x53,0x00,0x60,0xe0]
mul %e14, %d0, 0

# CHECK-INST: mul %e14, %d0, 1
# CHECK: encoding: [0x53,0x10,0x60,0xe0]
mul %e14, %d0, 1

# CHECK-INST: mul %e14, %d0, 128
# CHECK: encoding: [0x53,0x00,0x68,0xe0]
mul %e14, %d0, 128

# CHECK-INST: mul %e14, %d0, 255
# CHECK: encoding: [0x53,0xf0,0x6f,0xe0]
mul %e14, %d0, 255

# CHECK-INST: mul %e14, %d1, -256
# CHECK: encoding: [0x53,0x01,0x70,0xe0]
mul %e14, %d1, -256

# CHECK-INST: mul %e14, %d1, -129
# CHECK: encoding: [0x53,0xf1,0x77,0xe0]
mul %e14, %d1, -129

# CHECK-INST: mul %e14, %d1, -1
# CHECK: encoding: [0x53,0xf1,0x7f,0xe0]
mul %e14, %d1, -1

# CHECK-INST: mul %e14, %d1, 0
# CHECK: encoding: [0x53,0x01,0x60,0xe0]
mul %e14, %d1, 0

# CHECK-INST: mul %e14, %d1, 1
# CHECK: encoding: [0x53,0x11,0x60,0xe0]
mul %e14, %d1, 1

# CHECK-INST: mul %e14, %d1, 128
# CHECK: encoding: [0x53,0x01,0x68,0xe0]
mul %e14, %d1, 128

# CHECK-INST: mul %e14, %d1, 255
# CHECK: encoding: [0x53,0xf1,0x6f,0xe0]
mul %e14, %d1, 255

# CHECK-INST: mul %e14, %d14, -256
# CHECK: encoding: [0x53,0x0e,0x70,0xe0]
mul %e14, %d14, -256

# CHECK-INST: mul %e14, %d14, -129
# CHECK: encoding: [0x53,0xfe,0x77,0xe0]
mul %e14, %d14, -129

# CHECK-INST: mul %e14, %d14, -1
# CHECK: encoding: [0x53,0xfe,0x7f,0xe0]
mul %e14, %d14, -1

# CHECK-INST: mul %e14, %d14, 0
# CHECK: encoding: [0x53,0x0e,0x60,0xe0]
mul %e14, %d14, 0

# CHECK-INST: mul %e14, %d14, 1
# CHECK: encoding: [0x53,0x1e,0x60,0xe0]
mul %e14, %d14, 1

# CHECK-INST: mul %e14, %d14, 128
# CHECK: encoding: [0x53,0x0e,0x68,0xe0]
mul %e14, %d14, 128

# CHECK-INST: mul %e14, %d14, 255
# CHECK: encoding: [0x53,0xfe,0x6f,0xe0]
mul %e14, %d14, 255

# CHECK-INST: mul %e14, %d15, -256
# CHECK: encoding: [0x53,0x0f,0x70,0xe0]
mul %e14, %d15, -256

# CHECK-INST: mul %e14, %d15, -129
# CHECK: encoding: [0x53,0xff,0x77,0xe0]
mul %e14, %d15, -129

# CHECK-INST: mul %e14, %d15, -1
# CHECK: encoding: [0x53,0xff,0x7f,0xe0]
mul %e14, %d15, -1

# CHECK-INST: mul %e14, %d15, 0
# CHECK: encoding: [0x53,0x0f,0x60,0xe0]
mul %e14, %d15, 0

# CHECK-INST: mul %e14, %d15, 1
# CHECK: encoding: [0x53,0x1f,0x60,0xe0]
mul %e14, %d15, 1

# CHECK-INST: mul %e14, %d15, 128
# CHECK: encoding: [0x53,0x0f,0x68,0xe0]
mul %e14, %d15, 128

# CHECK-INST: mul %e14, %d15, 255
# CHECK: encoding: [0x53,0xff,0x6f,0xe0]
mul %e14, %d15, 255

# CHECK-INST: mul.u %e0, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x68,0x00]
mul.u %e0, %d0, %d0

# CHECK-INST: mul.u %e0, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x68,0x00]
mul.u %e0, %d0, %d1

# CHECK-INST: mul.u %e0, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x68,0x00]
mul.u %e0, %d0, %d14

# CHECK-INST: mul.u %e0, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x68,0x00]
mul.u %e0, %d0, %d15

# CHECK-INST: mul.u %e0, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x68,0x00]
mul.u %e0, %d1, %d0

# CHECK-INST: mul.u %e0, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x68,0x00]
mul.u %e0, %d1, %d1

# CHECK-INST: mul.u %e0, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x68,0x00]
mul.u %e0, %d1, %d14

# CHECK-INST: mul.u %e0, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x68,0x00]
mul.u %e0, %d1, %d15

# CHECK-INST: mul.u %e0, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x68,0x00]
mul.u %e0, %d14, %d0

# CHECK-INST: mul.u %e0, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x68,0x00]
mul.u %e0, %d14, %d1

# CHECK-INST: mul.u %e0, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x68,0x00]
mul.u %e0, %d14, %d14

# CHECK-INST: mul.u %e0, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x68,0x00]
mul.u %e0, %d14, %d15

# CHECK-INST: mul.u %e0, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x68,0x00]
mul.u %e0, %d15, %d0

# CHECK-INST: mul.u %e0, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x68,0x00]
mul.u %e0, %d15, %d1

# CHECK-INST: mul.u %e0, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x68,0x00]
mul.u %e0, %d15, %d14

# CHECK-INST: mul.u %e0, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x68,0x00]
mul.u %e0, %d15, %d15

# CHECK-INST: mul.u %e6, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x68,0x60]
mul.u %e6, %d0, %d0

# CHECK-INST: mul.u %e6, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x68,0x60]
mul.u %e6, %d0, %d1

# CHECK-INST: mul.u %e6, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x68,0x60]
mul.u %e6, %d0, %d14

# CHECK-INST: mul.u %e6, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x68,0x60]
mul.u %e6, %d0, %d15

# CHECK-INST: mul.u %e6, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x68,0x60]
mul.u %e6, %d1, %d0

# CHECK-INST: mul.u %e6, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x68,0x60]
mul.u %e6, %d1, %d1

# CHECK-INST: mul.u %e6, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x68,0x60]
mul.u %e6, %d1, %d14

# CHECK-INST: mul.u %e6, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x68,0x60]
mul.u %e6, %d1, %d15

# CHECK-INST: mul.u %e6, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x68,0x60]
mul.u %e6, %d14, %d0

# CHECK-INST: mul.u %e6, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x68,0x60]
mul.u %e6, %d14, %d1

# CHECK-INST: mul.u %e6, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x68,0x60]
mul.u %e6, %d14, %d14

# CHECK-INST: mul.u %e6, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x68,0x60]
mul.u %e6, %d14, %d15

# CHECK-INST: mul.u %e6, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x68,0x60]
mul.u %e6, %d15, %d0

# CHECK-INST: mul.u %e6, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x68,0x60]
mul.u %e6, %d15, %d1

# CHECK-INST: mul.u %e6, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x68,0x60]
mul.u %e6, %d15, %d14

# CHECK-INST: mul.u %e6, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x68,0x60]
mul.u %e6, %d15, %d15

# CHECK-INST: mul.u %e14, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x68,0xe0]
mul.u %e14, %d0, %d0

# CHECK-INST: mul.u %e14, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x68,0xe0]
mul.u %e14, %d0, %d1

# CHECK-INST: mul.u %e14, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x68,0xe0]
mul.u %e14, %d0, %d14

# CHECK-INST: mul.u %e14, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x68,0xe0]
mul.u %e14, %d0, %d15

# CHECK-INST: mul.u %e14, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x68,0xe0]
mul.u %e14, %d1, %d0

# CHECK-INST: mul.u %e14, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x68,0xe0]
mul.u %e14, %d1, %d1

# CHECK-INST: mul.u %e14, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x68,0xe0]
mul.u %e14, %d1, %d14

# CHECK-INST: mul.u %e14, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x68,0xe0]
mul.u %e14, %d1, %d15

# CHECK-INST: mul.u %e14, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x68,0xe0]
mul.u %e14, %d14, %d0

# CHECK-INST: mul.u %e14, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x68,0xe0]
mul.u %e14, %d14, %d1

# CHECK-INST: mul.u %e14, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x68,0xe0]
mul.u %e14, %d14, %d14

# CHECK-INST: mul.u %e14, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x68,0xe0]
mul.u %e14, %d14, %d15

# CHECK-INST: mul.u %e14, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x68,0xe0]
mul.u %e14, %d15, %d0

# CHECK-INST: mul.u %e14, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x68,0xe0]
mul.u %e14, %d15, %d1

# CHECK-INST: mul.u %e14, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x68,0xe0]
mul.u %e14, %d15, %d14

# CHECK-INST: mul.u %e14, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x68,0xe0]
mul.u %e14, %d15, %d15

# CHECK-INST: mul.u %e0, %d0, 271
# CHECK: encoding: [0x53,0xf0,0x50,0x00]
mul.u %e0, %d0, 271

# CHECK-INST: mul.u %e0, %d0, 496
# CHECK: encoding: [0x53,0x00,0x5f,0x00]
mul.u %e0, %d0, 496

# CHECK-INST: mul.u %e0, %d0, 511
# CHECK: encoding: [0x53,0xf0,0x5f,0x00]
mul.u %e0, %d0, 511

# CHECK-INST: mul.u %e0, %d1, 271
# CHECK: encoding: [0x53,0xf1,0x50,0x00]
mul.u %e0, %d1, 271

# CHECK-INST: mul.u %e0, %d1, 496
# CHECK: encoding: [0x53,0x01,0x5f,0x00]
mul.u %e0, %d1, 496

# CHECK-INST: mul.u %e0, %d1, 511
# CHECK: encoding: [0x53,0xf1,0x5f,0x00]
mul.u %e0, %d1, 511

# CHECK-INST: mul.u %e0, %d14, 271
# CHECK: encoding: [0x53,0xfe,0x50,0x00]
mul.u %e0, %d14, 271

# CHECK-INST: mul.u %e0, %d14, 496
# CHECK: encoding: [0x53,0x0e,0x5f,0x00]
mul.u %e0, %d14, 496

# CHECK-INST: mul.u %e0, %d14, 511
# CHECK: encoding: [0x53,0xfe,0x5f,0x00]
mul.u %e0, %d14, 511

# CHECK-INST: mul.u %e0, %d15, 271
# CHECK: encoding: [0x53,0xff,0x50,0x00]
mul.u %e0, %d15, 271

# CHECK-INST: mul.u %e0, %d15, 496
# CHECK: encoding: [0x53,0x0f,0x5f,0x00]
mul.u %e0, %d15, 496

# CHECK-INST: mul.u %e0, %d15, 511
# CHECK: encoding: [0x53,0xff,0x5f,0x00]
mul.u %e0, %d15, 511

# CHECK-INST: mul.u %e6, %d0, 271
# CHECK: encoding: [0x53,0xf0,0x50,0x60]
mul.u %e6, %d0, 271

# CHECK-INST: mul.u %e6, %d0, 496
# CHECK: encoding: [0x53,0x00,0x5f,0x60]
mul.u %e6, %d0, 496

# CHECK-INST: mul.u %e6, %d0, 511
# CHECK: encoding: [0x53,0xf0,0x5f,0x60]
mul.u %e6, %d0, 511

# CHECK-INST: mul.u %e6, %d1, 271
# CHECK: encoding: [0x53,0xf1,0x50,0x60]
mul.u %e6, %d1, 271

# CHECK-INST: mul.u %e6, %d1, 496
# CHECK: encoding: [0x53,0x01,0x5f,0x60]
mul.u %e6, %d1, 496

# CHECK-INST: mul.u %e6, %d1, 511
# CHECK: encoding: [0x53,0xf1,0x5f,0x60]
mul.u %e6, %d1, 511

# CHECK-INST: mul.u %e6, %d14, 271
# CHECK: encoding: [0x53,0xfe,0x50,0x60]
mul.u %e6, %d14, 271

# CHECK-INST: mul.u %e6, %d14, 496
# CHECK: encoding: [0x53,0x0e,0x5f,0x60]
mul.u %e6, %d14, 496

# CHECK-INST: mul.u %e6, %d14, 511
# CHECK: encoding: [0x53,0xfe,0x5f,0x60]
mul.u %e6, %d14, 511

# CHECK-INST: mul.u %e6, %d15, 271
# CHECK: encoding: [0x53,0xff,0x50,0x60]
mul.u %e6, %d15, 271

# CHECK-INST: mul.u %e6, %d15, 496
# CHECK: encoding: [0x53,0x0f,0x5f,0x60]
mul.u %e6, %d15, 496

# CHECK-INST: mul.u %e6, %d15, 511
# CHECK: encoding: [0x53,0xff,0x5f,0x60]
mul.u %e6, %d15, 511

# CHECK-INST: mul.u %e14, %d0, 271
# CHECK: encoding: [0x53,0xf0,0x50,0xe0]
mul.u %e14, %d0, 271

# CHECK-INST: mul.u %e14, %d0, 496
# CHECK: encoding: [0x53,0x00,0x5f,0xe0]
mul.u %e14, %d0, 496

# CHECK-INST: mul.u %e14, %d0, 511
# CHECK: encoding: [0x53,0xf0,0x5f,0xe0]
mul.u %e14, %d0, 511

# CHECK-INST: mul.u %e14, %d1, 271
# CHECK: encoding: [0x53,0xf1,0x50,0xe0]
mul.u %e14, %d1, 271

# CHECK-INST: mul.u %e14, %d1, 496
# CHECK: encoding: [0x53,0x01,0x5f,0xe0]
mul.u %e14, %d1, 496

# CHECK-INST: mul.u %e14, %d1, 511
# CHECK: encoding: [0x53,0xf1,0x5f,0xe0]
mul.u %e14, %d1, 511

# CHECK-INST: mul.u %e14, %d14, 271
# CHECK: encoding: [0x53,0xfe,0x50,0xe0]
mul.u %e14, %d14, 271

# CHECK-INST: mul.u %e14, %d14, 496
# CHECK: encoding: [0x53,0x0e,0x5f,0xe0]
mul.u %e14, %d14, 496

# CHECK-INST: mul.u %e14, %d14, 511
# CHECK: encoding: [0x53,0xfe,0x5f,0xe0]
mul.u %e14, %d14, 511

# CHECK-INST: mul.u %e14, %d15, 271
# CHECK: encoding: [0x53,0xff,0x50,0xe0]
mul.u %e14, %d15, 271

# CHECK-INST: mul.u %e14, %d15, 496
# CHECK: encoding: [0x53,0x0f,0x5f,0xe0]
mul.u %e14, %d15, 496

# CHECK-INST: mul.u %e14, %d15, 511
# CHECK: encoding: [0x53,0xff,0x5f,0xe0]
mul.u %e14, %d15, 511

# CHECK-INST: muls %d0, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x8a,0x00]
muls %d0, %d0, %d0

# CHECK-INST: muls %d0, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x8a,0x00]
muls %d0, %d0, %d1

# CHECK-INST: muls %d0, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x8a,0x00]
muls %d0, %d0, %d14

# CHECK-INST: muls %d0, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x8a,0x00]
muls %d0, %d0, %d15

# CHECK-INST: muls %d0, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x8a,0x00]
muls %d0, %d1, %d0

# CHECK-INST: muls %d0, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x8a,0x00]
muls %d0, %d1, %d1

# CHECK-INST: muls %d0, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x8a,0x00]
muls %d0, %d1, %d14

# CHECK-INST: muls %d0, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x8a,0x00]
muls %d0, %d1, %d15

# CHECK-INST: muls %d0, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x8a,0x00]
muls %d0, %d14, %d0

# CHECK-INST: muls %d0, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x8a,0x00]
muls %d0, %d14, %d1

# CHECK-INST: muls %d0, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x8a,0x00]
muls %d0, %d14, %d14

# CHECK-INST: muls %d0, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x8a,0x00]
muls %d0, %d14, %d15

# CHECK-INST: muls %d0, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x8a,0x00]
muls %d0, %d15, %d0

# CHECK-INST: muls %d0, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x8a,0x00]
muls %d0, %d15, %d1

# CHECK-INST: muls %d0, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x8a,0x00]
muls %d0, %d15, %d14

# CHECK-INST: muls %d0, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x8a,0x00]
muls %d0, %d15, %d15

# CHECK-INST: muls %d1, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x8a,0x10]
muls %d1, %d0, %d0

# CHECK-INST: muls %d1, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x8a,0x10]
muls %d1, %d0, %d1

# CHECK-INST: muls %d1, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x8a,0x10]
muls %d1, %d0, %d14

# CHECK-INST: muls %d1, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x8a,0x10]
muls %d1, %d0, %d15

# CHECK-INST: muls %d1, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x8a,0x10]
muls %d1, %d1, %d0

# CHECK-INST: muls %d1, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x8a,0x10]
muls %d1, %d1, %d1

# CHECK-INST: muls %d1, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x8a,0x10]
muls %d1, %d1, %d14

# CHECK-INST: muls %d1, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x8a,0x10]
muls %d1, %d1, %d15

# CHECK-INST: muls %d1, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x8a,0x10]
muls %d1, %d14, %d0

# CHECK-INST: muls %d1, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x8a,0x10]
muls %d1, %d14, %d1

# CHECK-INST: muls %d1, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x8a,0x10]
muls %d1, %d14, %d14

# CHECK-INST: muls %d1, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x8a,0x10]
muls %d1, %d14, %d15

# CHECK-INST: muls %d1, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x8a,0x10]
muls %d1, %d15, %d0

# CHECK-INST: muls %d1, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x8a,0x10]
muls %d1, %d15, %d1

# CHECK-INST: muls %d1, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x8a,0x10]
muls %d1, %d15, %d14

# CHECK-INST: muls %d1, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x8a,0x10]
muls %d1, %d15, %d15

# CHECK-INST: muls %d14, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x8a,0xe0]
muls %d14, %d0, %d0

# CHECK-INST: muls %d14, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x8a,0xe0]
muls %d14, %d0, %d1

# CHECK-INST: muls %d14, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x8a,0xe0]
muls %d14, %d0, %d14

# CHECK-INST: muls %d14, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x8a,0xe0]
muls %d14, %d0, %d15

# CHECK-INST: muls %d14, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x8a,0xe0]
muls %d14, %d1, %d0

# CHECK-INST: muls %d14, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x8a,0xe0]
muls %d14, %d1, %d1

# CHECK-INST: muls %d14, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x8a,0xe0]
muls %d14, %d1, %d14

# CHECK-INST: muls %d14, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x8a,0xe0]
muls %d14, %d1, %d15

# CHECK-INST: muls %d14, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x8a,0xe0]
muls %d14, %d14, %d0

# CHECK-INST: muls %d14, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x8a,0xe0]
muls %d14, %d14, %d1

# CHECK-INST: muls %d14, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x8a,0xe0]
muls %d14, %d14, %d14

# CHECK-INST: muls %d14, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x8a,0xe0]
muls %d14, %d14, %d15

# CHECK-INST: muls %d14, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x8a,0xe0]
muls %d14, %d15, %d0

# CHECK-INST: muls %d14, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x8a,0xe0]
muls %d14, %d15, %d1

# CHECK-INST: muls %d14, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x8a,0xe0]
muls %d14, %d15, %d14

# CHECK-INST: muls %d14, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x8a,0xe0]
muls %d14, %d15, %d15

# CHECK-INST: muls %d15, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x8a,0xf0]
muls %d15, %d0, %d0

# CHECK-INST: muls %d15, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x8a,0xf0]
muls %d15, %d0, %d1

# CHECK-INST: muls %d15, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x8a,0xf0]
muls %d15, %d0, %d14

# CHECK-INST: muls %d15, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x8a,0xf0]
muls %d15, %d0, %d15

# CHECK-INST: muls %d15, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x8a,0xf0]
muls %d15, %d1, %d0

# CHECK-INST: muls %d15, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x8a,0xf0]
muls %d15, %d1, %d1

# CHECK-INST: muls %d15, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x8a,0xf0]
muls %d15, %d1, %d14

# CHECK-INST: muls %d15, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x8a,0xf0]
muls %d15, %d1, %d15

# CHECK-INST: muls %d15, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x8a,0xf0]
muls %d15, %d14, %d0

# CHECK-INST: muls %d15, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x8a,0xf0]
muls %d15, %d14, %d1

# CHECK-INST: muls %d15, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x8a,0xf0]
muls %d15, %d14, %d14

# CHECK-INST: muls %d15, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x8a,0xf0]
muls %d15, %d14, %d15

# CHECK-INST: muls %d15, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x8a,0xf0]
muls %d15, %d15, %d0

# CHECK-INST: muls %d15, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x8a,0xf0]
muls %d15, %d15, %d1

# CHECK-INST: muls %d15, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x8a,0xf0]
muls %d15, %d15, %d14

# CHECK-INST: muls %d15, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x8a,0xf0]
muls %d15, %d15, %d15

# CHECK-INST: muls %d0, %d0, -256
# CHECK: encoding: [0x53,0x00,0xb0,0x00]
muls %d0, %d0, -256

# CHECK-INST: muls %d0, %d0, -129
# CHECK: encoding: [0x53,0xf0,0xb7,0x00]
muls %d0, %d0, -129

# CHECK-INST: muls %d0, %d0, -1
# CHECK: encoding: [0x53,0xf0,0xbf,0x00]
muls %d0, %d0, -1

# CHECK-INST: muls %d0, %d0, 0
# CHECK: encoding: [0x53,0x00,0xa0,0x00]
muls %d0, %d0, 0

# CHECK-INST: muls %d0, %d0, 1
# CHECK: encoding: [0x53,0x10,0xa0,0x00]
muls %d0, %d0, 1

# CHECK-INST: muls %d0, %d0, 128
# CHECK: encoding: [0x53,0x00,0xa8,0x00]
muls %d0, %d0, 128

# CHECK-INST: muls %d0, %d0, 255
# CHECK: encoding: [0x53,0xf0,0xaf,0x00]
muls %d0, %d0, 255

# CHECK-INST: muls %d0, %d1, -256
# CHECK: encoding: [0x53,0x01,0xb0,0x00]
muls %d0, %d1, -256

# CHECK-INST: muls %d0, %d1, -129
# CHECK: encoding: [0x53,0xf1,0xb7,0x00]
muls %d0, %d1, -129

# CHECK-INST: muls %d0, %d1, -1
# CHECK: encoding: [0x53,0xf1,0xbf,0x00]
muls %d0, %d1, -1

# CHECK-INST: muls %d0, %d1, 0
# CHECK: encoding: [0x53,0x01,0xa0,0x00]
muls %d0, %d1, 0

# CHECK-INST: muls %d0, %d1, 1
# CHECK: encoding: [0x53,0x11,0xa0,0x00]
muls %d0, %d1, 1

# CHECK-INST: muls %d0, %d1, 128
# CHECK: encoding: [0x53,0x01,0xa8,0x00]
muls %d0, %d1, 128

# CHECK-INST: muls %d0, %d1, 255
# CHECK: encoding: [0x53,0xf1,0xaf,0x00]
muls %d0, %d1, 255

# CHECK-INST: muls %d0, %d14, -256
# CHECK: encoding: [0x53,0x0e,0xb0,0x00]
muls %d0, %d14, -256

# CHECK-INST: muls %d0, %d14, -129
# CHECK: encoding: [0x53,0xfe,0xb7,0x00]
muls %d0, %d14, -129

# CHECK-INST: muls %d0, %d14, -1
# CHECK: encoding: [0x53,0xfe,0xbf,0x00]
muls %d0, %d14, -1

# CHECK-INST: muls %d0, %d14, 0
# CHECK: encoding: [0x53,0x0e,0xa0,0x00]
muls %d0, %d14, 0

# CHECK-INST: muls %d0, %d14, 1
# CHECK: encoding: [0x53,0x1e,0xa0,0x00]
muls %d0, %d14, 1

# CHECK-INST: muls %d0, %d14, 128
# CHECK: encoding: [0x53,0x0e,0xa8,0x00]
muls %d0, %d14, 128

# CHECK-INST: muls %d0, %d14, 255
# CHECK: encoding: [0x53,0xfe,0xaf,0x00]
muls %d0, %d14, 255

# CHECK-INST: muls %d0, %d15, -256
# CHECK: encoding: [0x53,0x0f,0xb0,0x00]
muls %d0, %d15, -256

# CHECK-INST: muls %d0, %d15, -129
# CHECK: encoding: [0x53,0xff,0xb7,0x00]
muls %d0, %d15, -129

# CHECK-INST: muls %d0, %d15, -1
# CHECK: encoding: [0x53,0xff,0xbf,0x00]
muls %d0, %d15, -1

# CHECK-INST: muls %d0, %d15, 0
# CHECK: encoding: [0x53,0x0f,0xa0,0x00]
muls %d0, %d15, 0

# CHECK-INST: muls %d0, %d15, 1
# CHECK: encoding: [0x53,0x1f,0xa0,0x00]
muls %d0, %d15, 1

# CHECK-INST: muls %d0, %d15, 128
# CHECK: encoding: [0x53,0x0f,0xa8,0x00]
muls %d0, %d15, 128

# CHECK-INST: muls %d0, %d15, 255
# CHECK: encoding: [0x53,0xff,0xaf,0x00]
muls %d0, %d15, 255

# CHECK-INST: muls %d1, %d0, -256
# CHECK: encoding: [0x53,0x00,0xb0,0x10]
muls %d1, %d0, -256

# CHECK-INST: muls %d1, %d0, -129
# CHECK: encoding: [0x53,0xf0,0xb7,0x10]
muls %d1, %d0, -129

# CHECK-INST: muls %d1, %d0, -1
# CHECK: encoding: [0x53,0xf0,0xbf,0x10]
muls %d1, %d0, -1

# CHECK-INST: muls %d1, %d0, 0
# CHECK: encoding: [0x53,0x00,0xa0,0x10]
muls %d1, %d0, 0

# CHECK-INST: muls %d1, %d0, 1
# CHECK: encoding: [0x53,0x10,0xa0,0x10]
muls %d1, %d0, 1

# CHECK-INST: muls %d1, %d0, 128
# CHECK: encoding: [0x53,0x00,0xa8,0x10]
muls %d1, %d0, 128

# CHECK-INST: muls %d1, %d0, 255
# CHECK: encoding: [0x53,0xf0,0xaf,0x10]
muls %d1, %d0, 255

# CHECK-INST: muls %d1, %d1, -256
# CHECK: encoding: [0x53,0x01,0xb0,0x10]
muls %d1, %d1, -256

# CHECK-INST: muls %d1, %d1, -129
# CHECK: encoding: [0x53,0xf1,0xb7,0x10]
muls %d1, %d1, -129

# CHECK-INST: muls %d1, %d1, -1
# CHECK: encoding: [0x53,0xf1,0xbf,0x10]
muls %d1, %d1, -1

# CHECK-INST: muls %d1, %d1, 0
# CHECK: encoding: [0x53,0x01,0xa0,0x10]
muls %d1, %d1, 0

# CHECK-INST: muls %d1, %d1, 1
# CHECK: encoding: [0x53,0x11,0xa0,0x10]
muls %d1, %d1, 1

# CHECK-INST: muls %d1, %d1, 128
# CHECK: encoding: [0x53,0x01,0xa8,0x10]
muls %d1, %d1, 128

# CHECK-INST: muls %d1, %d1, 255
# CHECK: encoding: [0x53,0xf1,0xaf,0x10]
muls %d1, %d1, 255

# CHECK-INST: muls %d1, %d14, -256
# CHECK: encoding: [0x53,0x0e,0xb0,0x10]
muls %d1, %d14, -256

# CHECK-INST: muls %d1, %d14, -129
# CHECK: encoding: [0x53,0xfe,0xb7,0x10]
muls %d1, %d14, -129

# CHECK-INST: muls %d1, %d14, -1
# CHECK: encoding: [0x53,0xfe,0xbf,0x10]
muls %d1, %d14, -1

# CHECK-INST: muls %d1, %d14, 0
# CHECK: encoding: [0x53,0x0e,0xa0,0x10]
muls %d1, %d14, 0

# CHECK-INST: muls %d1, %d14, 1
# CHECK: encoding: [0x53,0x1e,0xa0,0x10]
muls %d1, %d14, 1

# CHECK-INST: muls %d1, %d14, 128
# CHECK: encoding: [0x53,0x0e,0xa8,0x10]
muls %d1, %d14, 128

# CHECK-INST: muls %d1, %d14, 255
# CHECK: encoding: [0x53,0xfe,0xaf,0x10]
muls %d1, %d14, 255

# CHECK-INST: muls %d1, %d15, -256
# CHECK: encoding: [0x53,0x0f,0xb0,0x10]
muls %d1, %d15, -256

# CHECK-INST: muls %d1, %d15, -129
# CHECK: encoding: [0x53,0xff,0xb7,0x10]
muls %d1, %d15, -129

# CHECK-INST: muls %d1, %d15, -1
# CHECK: encoding: [0x53,0xff,0xbf,0x10]
muls %d1, %d15, -1

# CHECK-INST: muls %d1, %d15, 0
# CHECK: encoding: [0x53,0x0f,0xa0,0x10]
muls %d1, %d15, 0

# CHECK-INST: muls %d1, %d15, 1
# CHECK: encoding: [0x53,0x1f,0xa0,0x10]
muls %d1, %d15, 1

# CHECK-INST: muls %d1, %d15, 128
# CHECK: encoding: [0x53,0x0f,0xa8,0x10]
muls %d1, %d15, 128

# CHECK-INST: muls %d1, %d15, 255
# CHECK: encoding: [0x53,0xff,0xaf,0x10]
muls %d1, %d15, 255

# CHECK-INST: muls %d14, %d0, -256
# CHECK: encoding: [0x53,0x00,0xb0,0xe0]
muls %d14, %d0, -256

# CHECK-INST: muls %d14, %d0, -129
# CHECK: encoding: [0x53,0xf0,0xb7,0xe0]
muls %d14, %d0, -129

# CHECK-INST: muls %d14, %d0, -1
# CHECK: encoding: [0x53,0xf0,0xbf,0xe0]
muls %d14, %d0, -1

# CHECK-INST: muls %d14, %d0, 0
# CHECK: encoding: [0x53,0x00,0xa0,0xe0]
muls %d14, %d0, 0

# CHECK-INST: muls %d14, %d0, 1
# CHECK: encoding: [0x53,0x10,0xa0,0xe0]
muls %d14, %d0, 1

# CHECK-INST: muls %d14, %d0, 128
# CHECK: encoding: [0x53,0x00,0xa8,0xe0]
muls %d14, %d0, 128

# CHECK-INST: muls %d14, %d0, 255
# CHECK: encoding: [0x53,0xf0,0xaf,0xe0]
muls %d14, %d0, 255

# CHECK-INST: muls %d14, %d1, -256
# CHECK: encoding: [0x53,0x01,0xb0,0xe0]
muls %d14, %d1, -256

# CHECK-INST: muls %d14, %d1, -129
# CHECK: encoding: [0x53,0xf1,0xb7,0xe0]
muls %d14, %d1, -129

# CHECK-INST: muls %d14, %d1, -1
# CHECK: encoding: [0x53,0xf1,0xbf,0xe0]
muls %d14, %d1, -1

# CHECK-INST: muls %d14, %d1, 0
# CHECK: encoding: [0x53,0x01,0xa0,0xe0]
muls %d14, %d1, 0

# CHECK-INST: muls %d14, %d1, 1
# CHECK: encoding: [0x53,0x11,0xa0,0xe0]
muls %d14, %d1, 1

# CHECK-INST: muls %d14, %d1, 128
# CHECK: encoding: [0x53,0x01,0xa8,0xe0]
muls %d14, %d1, 128

# CHECK-INST: muls %d14, %d1, 255
# CHECK: encoding: [0x53,0xf1,0xaf,0xe0]
muls %d14, %d1, 255

# CHECK-INST: muls %d14, %d14, -256
# CHECK: encoding: [0x53,0x0e,0xb0,0xe0]
muls %d14, %d14, -256

# CHECK-INST: muls %d14, %d14, -129
# CHECK: encoding: [0x53,0xfe,0xb7,0xe0]
muls %d14, %d14, -129

# CHECK-INST: muls %d14, %d14, -1
# CHECK: encoding: [0x53,0xfe,0xbf,0xe0]
muls %d14, %d14, -1

# CHECK-INST: muls %d14, %d14, 0
# CHECK: encoding: [0x53,0x0e,0xa0,0xe0]
muls %d14, %d14, 0

# CHECK-INST: muls %d14, %d14, 1
# CHECK: encoding: [0x53,0x1e,0xa0,0xe0]
muls %d14, %d14, 1

# CHECK-INST: muls %d14, %d14, 128
# CHECK: encoding: [0x53,0x0e,0xa8,0xe0]
muls %d14, %d14, 128

# CHECK-INST: muls %d14, %d14, 255
# CHECK: encoding: [0x53,0xfe,0xaf,0xe0]
muls %d14, %d14, 255

# CHECK-INST: muls %d14, %d15, -256
# CHECK: encoding: [0x53,0x0f,0xb0,0xe0]
muls %d14, %d15, -256

# CHECK-INST: muls %d14, %d15, -129
# CHECK: encoding: [0x53,0xff,0xb7,0xe0]
muls %d14, %d15, -129

# CHECK-INST: muls %d14, %d15, -1
# CHECK: encoding: [0x53,0xff,0xbf,0xe0]
muls %d14, %d15, -1

# CHECK-INST: muls %d14, %d15, 0
# CHECK: encoding: [0x53,0x0f,0xa0,0xe0]
muls %d14, %d15, 0

# CHECK-INST: muls %d14, %d15, 1
# CHECK: encoding: [0x53,0x1f,0xa0,0xe0]
muls %d14, %d15, 1

# CHECK-INST: muls %d14, %d15, 128
# CHECK: encoding: [0x53,0x0f,0xa8,0xe0]
muls %d14, %d15, 128

# CHECK-INST: muls %d14, %d15, 255
# CHECK: encoding: [0x53,0xff,0xaf,0xe0]
muls %d14, %d15, 255

# CHECK-INST: muls %d15, %d0, -256
# CHECK: encoding: [0x53,0x00,0xb0,0xf0]
muls %d15, %d0, -256

# CHECK-INST: muls %d15, %d0, -129
# CHECK: encoding: [0x53,0xf0,0xb7,0xf0]
muls %d15, %d0, -129

# CHECK-INST: muls %d15, %d0, -1
# CHECK: encoding: [0x53,0xf0,0xbf,0xf0]
muls %d15, %d0, -1

# CHECK-INST: muls %d15, %d0, 0
# CHECK: encoding: [0x53,0x00,0xa0,0xf0]
muls %d15, %d0, 0

# CHECK-INST: muls %d15, %d0, 1
# CHECK: encoding: [0x53,0x10,0xa0,0xf0]
muls %d15, %d0, 1

# CHECK-INST: muls %d15, %d0, 128
# CHECK: encoding: [0x53,0x00,0xa8,0xf0]
muls %d15, %d0, 128

# CHECK-INST: muls %d15, %d0, 255
# CHECK: encoding: [0x53,0xf0,0xaf,0xf0]
muls %d15, %d0, 255

# CHECK-INST: muls %d15, %d1, -256
# CHECK: encoding: [0x53,0x01,0xb0,0xf0]
muls %d15, %d1, -256

# CHECK-INST: muls %d15, %d1, -129
# CHECK: encoding: [0x53,0xf1,0xb7,0xf0]
muls %d15, %d1, -129

# CHECK-INST: muls %d15, %d1, -1
# CHECK: encoding: [0x53,0xf1,0xbf,0xf0]
muls %d15, %d1, -1

# CHECK-INST: muls %d15, %d1, 0
# CHECK: encoding: [0x53,0x01,0xa0,0xf0]
muls %d15, %d1, 0

# CHECK-INST: muls %d15, %d1, 1
# CHECK: encoding: [0x53,0x11,0xa0,0xf0]
muls %d15, %d1, 1

# CHECK-INST: muls %d15, %d1, 128
# CHECK: encoding: [0x53,0x01,0xa8,0xf0]
muls %d15, %d1, 128

# CHECK-INST: muls %d15, %d1, 255
# CHECK: encoding: [0x53,0xf1,0xaf,0xf0]
muls %d15, %d1, 255

# CHECK-INST: muls %d15, %d14, -256
# CHECK: encoding: [0x53,0x0e,0xb0,0xf0]
muls %d15, %d14, -256

# CHECK-INST: muls %d15, %d14, -129
# CHECK: encoding: [0x53,0xfe,0xb7,0xf0]
muls %d15, %d14, -129

# CHECK-INST: muls %d15, %d14, -1
# CHECK: encoding: [0x53,0xfe,0xbf,0xf0]
muls %d15, %d14, -1

# CHECK-INST: muls %d15, %d14, 0
# CHECK: encoding: [0x53,0x0e,0xa0,0xf0]
muls %d15, %d14, 0

# CHECK-INST: muls %d15, %d14, 1
# CHECK: encoding: [0x53,0x1e,0xa0,0xf0]
muls %d15, %d14, 1

# CHECK-INST: muls %d15, %d14, 128
# CHECK: encoding: [0x53,0x0e,0xa8,0xf0]
muls %d15, %d14, 128

# CHECK-INST: muls %d15, %d14, 255
# CHECK: encoding: [0x53,0xfe,0xaf,0xf0]
muls %d15, %d14, 255

# CHECK-INST: muls %d15, %d15, -256
# CHECK: encoding: [0x53,0x0f,0xb0,0xf0]
muls %d15, %d15, -256

# CHECK-INST: muls %d15, %d15, -129
# CHECK: encoding: [0x53,0xff,0xb7,0xf0]
muls %d15, %d15, -129

# CHECK-INST: muls %d15, %d15, -1
# CHECK: encoding: [0x53,0xff,0xbf,0xf0]
muls %d15, %d15, -1

# CHECK-INST: muls %d15, %d15, 0
# CHECK: encoding: [0x53,0x0f,0xa0,0xf0]
muls %d15, %d15, 0

# CHECK-INST: muls %d15, %d15, 1
# CHECK: encoding: [0x53,0x1f,0xa0,0xf0]
muls %d15, %d15, 1

# CHECK-INST: muls %d15, %d15, 128
# CHECK: encoding: [0x53,0x0f,0xa8,0xf0]
muls %d15, %d15, 128

# CHECK-INST: muls %d15, %d15, 255
# CHECK: encoding: [0x53,0xff,0xaf,0xf0]
muls %d15, %d15, 255

# CHECK-INST: muls.u %d0, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x88,0x00]
muls.u %d0, %d0, %d0

# CHECK-INST: muls.u %d0, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x88,0x00]
muls.u %d0, %d0, %d1

# CHECK-INST: muls.u %d0, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x88,0x00]
muls.u %d0, %d0, %d14

# CHECK-INST: muls.u %d0, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x88,0x00]
muls.u %d0, %d0, %d15

# CHECK-INST: muls.u %d0, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x88,0x00]
muls.u %d0, %d1, %d0

# CHECK-INST: muls.u %d0, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x88,0x00]
muls.u %d0, %d1, %d1

# CHECK-INST: muls.u %d0, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x88,0x00]
muls.u %d0, %d1, %d14

# CHECK-INST: muls.u %d0, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x88,0x00]
muls.u %d0, %d1, %d15

# CHECK-INST: muls.u %d0, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x88,0x00]
muls.u %d0, %d14, %d0

# CHECK-INST: muls.u %d0, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x88,0x00]
muls.u %d0, %d14, %d1

# CHECK-INST: muls.u %d0, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x88,0x00]
muls.u %d0, %d14, %d14

# CHECK-INST: muls.u %d0, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x88,0x00]
muls.u %d0, %d14, %d15

# CHECK-INST: muls.u %d0, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x88,0x00]
muls.u %d0, %d15, %d0

# CHECK-INST: muls.u %d0, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x88,0x00]
muls.u %d0, %d15, %d1

# CHECK-INST: muls.u %d0, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x88,0x00]
muls.u %d0, %d15, %d14

# CHECK-INST: muls.u %d0, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x88,0x00]
muls.u %d0, %d15, %d15

# CHECK-INST: muls.u %d1, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x88,0x10]
muls.u %d1, %d0, %d0

# CHECK-INST: muls.u %d1, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x88,0x10]
muls.u %d1, %d0, %d1

# CHECK-INST: muls.u %d1, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x88,0x10]
muls.u %d1, %d0, %d14

# CHECK-INST: muls.u %d1, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x88,0x10]
muls.u %d1, %d0, %d15

# CHECK-INST: muls.u %d1, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x88,0x10]
muls.u %d1, %d1, %d0

# CHECK-INST: muls.u %d1, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x88,0x10]
muls.u %d1, %d1, %d1

# CHECK-INST: muls.u %d1, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x88,0x10]
muls.u %d1, %d1, %d14

# CHECK-INST: muls.u %d1, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x88,0x10]
muls.u %d1, %d1, %d15

# CHECK-INST: muls.u %d1, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x88,0x10]
muls.u %d1, %d14, %d0

# CHECK-INST: muls.u %d1, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x88,0x10]
muls.u %d1, %d14, %d1

# CHECK-INST: muls.u %d1, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x88,0x10]
muls.u %d1, %d14, %d14

# CHECK-INST: muls.u %d1, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x88,0x10]
muls.u %d1, %d14, %d15

# CHECK-INST: muls.u %d1, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x88,0x10]
muls.u %d1, %d15, %d0

# CHECK-INST: muls.u %d1, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x88,0x10]
muls.u %d1, %d15, %d1

# CHECK-INST: muls.u %d1, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x88,0x10]
muls.u %d1, %d15, %d14

# CHECK-INST: muls.u %d1, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x88,0x10]
muls.u %d1, %d15, %d15

# CHECK-INST: muls.u %d14, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x88,0xe0]
muls.u %d14, %d0, %d0

# CHECK-INST: muls.u %d14, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x88,0xe0]
muls.u %d14, %d0, %d1

# CHECK-INST: muls.u %d14, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x88,0xe0]
muls.u %d14, %d0, %d14

# CHECK-INST: muls.u %d14, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x88,0xe0]
muls.u %d14, %d0, %d15

# CHECK-INST: muls.u %d14, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x88,0xe0]
muls.u %d14, %d1, %d0

# CHECK-INST: muls.u %d14, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x88,0xe0]
muls.u %d14, %d1, %d1

# CHECK-INST: muls.u %d14, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x88,0xe0]
muls.u %d14, %d1, %d14

# CHECK-INST: muls.u %d14, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x88,0xe0]
muls.u %d14, %d1, %d15

# CHECK-INST: muls.u %d14, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x88,0xe0]
muls.u %d14, %d14, %d0

# CHECK-INST: muls.u %d14, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x88,0xe0]
muls.u %d14, %d14, %d1

# CHECK-INST: muls.u %d14, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x88,0xe0]
muls.u %d14, %d14, %d14

# CHECK-INST: muls.u %d14, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x88,0xe0]
muls.u %d14, %d14, %d15

# CHECK-INST: muls.u %d14, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x88,0xe0]
muls.u %d14, %d15, %d0

# CHECK-INST: muls.u %d14, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x88,0xe0]
muls.u %d14, %d15, %d1

# CHECK-INST: muls.u %d14, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x88,0xe0]
muls.u %d14, %d15, %d14

# CHECK-INST: muls.u %d14, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x88,0xe0]
muls.u %d14, %d15, %d15

# CHECK-INST: muls.u %d15, %d0, %d0
# CHECK: encoding: [0x73,0x00,0x88,0xf0]
muls.u %d15, %d0, %d0

# CHECK-INST: muls.u %d15, %d0, %d1
# CHECK: encoding: [0x73,0x10,0x88,0xf0]
muls.u %d15, %d0, %d1

# CHECK-INST: muls.u %d15, %d0, %d14
# CHECK: encoding: [0x73,0xe0,0x88,0xf0]
muls.u %d15, %d0, %d14

# CHECK-INST: muls.u %d15, %d0, %d15
# CHECK: encoding: [0x73,0xf0,0x88,0xf0]
muls.u %d15, %d0, %d15

# CHECK-INST: muls.u %d15, %d1, %d0
# CHECK: encoding: [0x73,0x01,0x88,0xf0]
muls.u %d15, %d1, %d0

# CHECK-INST: muls.u %d15, %d1, %d1
# CHECK: encoding: [0x73,0x11,0x88,0xf0]
muls.u %d15, %d1, %d1

# CHECK-INST: muls.u %d15, %d1, %d14
# CHECK: encoding: [0x73,0xe1,0x88,0xf0]
muls.u %d15, %d1, %d14

# CHECK-INST: muls.u %d15, %d1, %d15
# CHECK: encoding: [0x73,0xf1,0x88,0xf0]
muls.u %d15, %d1, %d15

# CHECK-INST: muls.u %d15, %d14, %d0
# CHECK: encoding: [0x73,0x0e,0x88,0xf0]
muls.u %d15, %d14, %d0

# CHECK-INST: muls.u %d15, %d14, %d1
# CHECK: encoding: [0x73,0x1e,0x88,0xf0]
muls.u %d15, %d14, %d1

# CHECK-INST: muls.u %d15, %d14, %d14
# CHECK: encoding: [0x73,0xee,0x88,0xf0]
muls.u %d15, %d14, %d14

# CHECK-INST: muls.u %d15, %d14, %d15
# CHECK: encoding: [0x73,0xfe,0x88,0xf0]
muls.u %d15, %d14, %d15

# CHECK-INST: muls.u %d15, %d15, %d0
# CHECK: encoding: [0x73,0x0f,0x88,0xf0]
muls.u %d15, %d15, %d0

# CHECK-INST: muls.u %d15, %d15, %d1
# CHECK: encoding: [0x73,0x1f,0x88,0xf0]
muls.u %d15, %d15, %d1

# CHECK-INST: muls.u %d15, %d15, %d14
# CHECK: encoding: [0x73,0xef,0x88,0xf0]
muls.u %d15, %d15, %d14

# CHECK-INST: muls.u %d15, %d15, %d15
# CHECK: encoding: [0x73,0xff,0x88,0xf0]
muls.u %d15, %d15, %d15

# CHECK-INST: muls.u %d0, %d0, 271
# CHECK: encoding: [0x53,0xf0,0x90,0x00]
muls.u %d0, %d0, 271

# CHECK-INST: muls.u %d0, %d0, 496
# CHECK: encoding: [0x53,0x00,0x9f,0x00]
muls.u %d0, %d0, 496

# CHECK-INST: muls.u %d0, %d0, 511
# CHECK: encoding: [0x53,0xf0,0x9f,0x00]
muls.u %d0, %d0, 511

# CHECK-INST: muls.u %d0, %d1, 271
# CHECK: encoding: [0x53,0xf1,0x90,0x00]
muls.u %d0, %d1, 271

# CHECK-INST: muls.u %d0, %d1, 496
# CHECK: encoding: [0x53,0x01,0x9f,0x00]
muls.u %d0, %d1, 496

# CHECK-INST: muls.u %d0, %d1, 511
# CHECK: encoding: [0x53,0xf1,0x9f,0x00]
muls.u %d0, %d1, 511

# CHECK-INST: muls.u %d0, %d14, 271
# CHECK: encoding: [0x53,0xfe,0x90,0x00]
muls.u %d0, %d14, 271

# CHECK-INST: muls.u %d0, %d14, 496
# CHECK: encoding: [0x53,0x0e,0x9f,0x00]
muls.u %d0, %d14, 496

# CHECK-INST: muls.u %d0, %d14, 511
# CHECK: encoding: [0x53,0xfe,0x9f,0x00]
muls.u %d0, %d14, 511

# CHECK-INST: muls.u %d0, %d15, 271
# CHECK: encoding: [0x53,0xff,0x90,0x00]
muls.u %d0, %d15, 271

# CHECK-INST: muls.u %d0, %d15, 496
# CHECK: encoding: [0x53,0x0f,0x9f,0x00]
muls.u %d0, %d15, 496

# CHECK-INST: muls.u %d0, %d15, 511
# CHECK: encoding: [0x53,0xff,0x9f,0x00]
muls.u %d0, %d15, 511

# CHECK-INST: muls.u %d1, %d0, 271
# CHECK: encoding: [0x53,0xf0,0x90,0x10]
muls.u %d1, %d0, 271

# CHECK-INST: muls.u %d1, %d0, 496
# CHECK: encoding: [0x53,0x00,0x9f,0x10]
muls.u %d1, %d0, 496

# CHECK-INST: muls.u %d1, %d0, 511
# CHECK: encoding: [0x53,0xf0,0x9f,0x10]
muls.u %d1, %d0, 511

# CHECK-INST: muls.u %d1, %d1, 271
# CHECK: encoding: [0x53,0xf1,0x90,0x10]
muls.u %d1, %d1, 271

# CHECK-INST: muls.u %d1, %d1, 496
# CHECK: encoding: [0x53,0x01,0x9f,0x10]
muls.u %d1, %d1, 496

# CHECK-INST: muls.u %d1, %d1, 511
# CHECK: encoding: [0x53,0xf1,0x9f,0x10]
muls.u %d1, %d1, 511

# CHECK-INST: muls.u %d1, %d14, 271
# CHECK: encoding: [0x53,0xfe,0x90,0x10]
muls.u %d1, %d14, 271

# CHECK-INST: muls.u %d1, %d14, 496
# CHECK: encoding: [0x53,0x0e,0x9f,0x10]
muls.u %d1, %d14, 496

# CHECK-INST: muls.u %d1, %d14, 511
# CHECK: encoding: [0x53,0xfe,0x9f,0x10]
muls.u %d1, %d14, 511

# CHECK-INST: muls.u %d1, %d15, 271
# CHECK: encoding: [0x53,0xff,0x90,0x10]
muls.u %d1, %d15, 271

# CHECK-INST: muls.u %d1, %d15, 496
# CHECK: encoding: [0x53,0x0f,0x9f,0x10]
muls.u %d1, %d15, 496

# CHECK-INST: muls.u %d1, %d15, 511
# CHECK: encoding: [0x53,0xff,0x9f,0x10]
muls.u %d1, %d15, 511

# CHECK-INST: muls.u %d14, %d0, 271
# CHECK: encoding: [0x53,0xf0,0x90,0xe0]
muls.u %d14, %d0, 271

# CHECK-INST: muls.u %d14, %d0, 496
# CHECK: encoding: [0x53,0x00,0x9f,0xe0]
muls.u %d14, %d0, 496

# CHECK-INST: muls.u %d14, %d0, 511
# CHECK: encoding: [0x53,0xf0,0x9f,0xe0]
muls.u %d14, %d0, 511

# CHECK-INST: muls.u %d14, %d1, 271
# CHECK: encoding: [0x53,0xf1,0x90,0xe0]
muls.u %d14, %d1, 271

# CHECK-INST: muls.u %d14, %d1, 496
# CHECK: encoding: [0x53,0x01,0x9f,0xe0]
muls.u %d14, %d1, 496

# CHECK-INST: muls.u %d14, %d1, 511
# CHECK: encoding: [0x53,0xf1,0x9f,0xe0]
muls.u %d14, %d1, 511

# CHECK-INST: muls.u %d14, %d14, 271
# CHECK: encoding: [0x53,0xfe,0x90,0xe0]
muls.u %d14, %d14, 271

# CHECK-INST: muls.u %d14, %d14, 496
# CHECK: encoding: [0x53,0x0e,0x9f,0xe0]
muls.u %d14, %d14, 496

# CHECK-INST: muls.u %d14, %d14, 511
# CHECK: encoding: [0x53,0xfe,0x9f,0xe0]
muls.u %d14, %d14, 511

# CHECK-INST: muls.u %d14, %d15, 271
# CHECK: encoding: [0x53,0xff,0x90,0xe0]
muls.u %d14, %d15, 271

# CHECK-INST: muls.u %d14, %d15, 496
# CHECK: encoding: [0x53,0x0f,0x9f,0xe0]
muls.u %d14, %d15, 496

# CHECK-INST: muls.u %d14, %d15, 511
# CHECK: encoding: [0x53,0xff,0x9f,0xe0]
muls.u %d14, %d15, 511

# CHECK-INST: muls.u %d15, %d0, 271
# CHECK: encoding: [0x53,0xf0,0x90,0xf0]
muls.u %d15, %d0, 271

# CHECK-INST: muls.u %d15, %d0, 496
# CHECK: encoding: [0x53,0x00,0x9f,0xf0]
muls.u %d15, %d0, 496

# CHECK-INST: muls.u %d15, %d0, 511
# CHECK: encoding: [0x53,0xf0,0x9f,0xf0]
muls.u %d15, %d0, 511

# CHECK-INST: muls.u %d15, %d1, 271
# CHECK: encoding: [0x53,0xf1,0x90,0xf0]
muls.u %d15, %d1, 271

# CHECK-INST: muls.u %d15, %d1, 496
# CHECK: encoding: [0x53,0x01,0x9f,0xf0]
muls.u %d15, %d1, 496

# CHECK-INST: muls.u %d15, %d1, 511
# CHECK: encoding: [0x53,0xf1,0x9f,0xf0]
muls.u %d15, %d1, 511

# CHECK-INST: muls.u %d15, %d14, 271
# CHECK: encoding: [0x53,0xfe,0x90,0xf0]
muls.u %d15, %d14, 271

# CHECK-INST: muls.u %d15, %d14, 496
# CHECK: encoding: [0x53,0x0e,0x9f,0xf0]
muls.u %d15, %d14, 496

# CHECK-INST: muls.u %d15, %d14, 511
# CHECK: encoding: [0x53,0xfe,0x9f,0xf0]
muls.u %d15, %d14, 511

# CHECK-INST: muls.u %d15, %d15, 271
# CHECK: encoding: [0x53,0xff,0x90,0xf0]
muls.u %d15, %d15, 271

# CHECK-INST: muls.u %d15, %d15, 496
# CHECK: encoding: [0x53,0x0f,0x9f,0xf0]
muls.u %d15, %d15, 496

# CHECK-INST: muls.u %d15, %d15, 511
# CHECK: encoding: [0x53,0xff,0x9f,0xf0]
muls.u %d15, %d15, 511