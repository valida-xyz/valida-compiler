# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s

# CHECK-INST: sh.and.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x00,0x00]
sh.and.t %d0, %d0, 0, %d0, 0

# CHECK-INST: sh.and.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0x27,0x00,0x80,0x03]
sh.and.t %d0, %d0, 0, %d0, 7

# CHECK-INST: sh.and.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0x27,0x00,0x00,0x0c]
sh.and.t %d0, %d0, 0, %d0, 24

# CHECK-INST: sh.and.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0x27,0x00,0x80,0x0f]
sh.and.t %d0, %d0, 0, %d0, 31

# CHECK-INST: sh.and.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0x27,0x10,0x00,0x00]
sh.and.t %d0, %d0, 0, %d1, 0

# CHECK-INST: sh.and.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0x27,0x10,0x80,0x03]
sh.and.t %d0, %d0, 0, %d1, 7

# CHECK-INST: sh.and.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0x27,0x10,0x00,0x0c]
sh.and.t %d0, %d0, 0, %d1, 24

# CHECK-INST: sh.and.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0x27,0x10,0x80,0x0f]
sh.and.t %d0, %d0, 0, %d1, 31

# CHECK-INST: sh.and.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x00,0x00]
sh.and.t %d0, %d0, 0, %d14, 0

# CHECK-INST: sh.and.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0x27,0xe0,0x80,0x03]
sh.and.t %d0, %d0, 0, %d14, 7

# CHECK-INST: sh.and.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x00,0x0c]
sh.and.t %d0, %d0, 0, %d14, 24

# CHECK-INST: sh.and.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0x27,0xe0,0x80,0x0f]
sh.and.t %d0, %d0, 0, %d14, 31

# CHECK-INST: sh.and.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x00,0x00]
sh.and.t %d0, %d0, 0, %d15, 0

# CHECK-INST: sh.and.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0x27,0xf0,0x80,0x03]
sh.and.t %d0, %d0, 0, %d15, 7

# CHECK-INST: sh.and.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x00,0x0c]
sh.and.t %d0, %d0, 0, %d15, 24

# CHECK-INST: sh.and.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0x27,0xf0,0x80,0x0f]
sh.and.t %d0, %d0, 0, %d15, 31

# CHECK-INST: sh.and.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0x27,0x00,0x07,0x00]
sh.and.t %d0, %d0, 7, %d0, 0

# CHECK-INST: sh.and.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0x27,0x00,0x87,0x03]
sh.and.t %d0, %d0, 7, %d0, 7

# CHECK-INST: sh.and.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0x27,0x00,0x07,0x0c]
sh.and.t %d0, %d0, 7, %d0, 24

# CHECK-INST: sh.and.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0x27,0x00,0x87,0x0f]
sh.and.t %d0, %d0, 7, %d0, 31

# CHECK-INST: sh.and.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0x27,0x10,0x07,0x00]
sh.and.t %d0, %d0, 7, %d1, 0

# CHECK-INST: sh.and.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0x27,0x10,0x87,0x03]
sh.and.t %d0, %d0, 7, %d1, 7

# CHECK-INST: sh.and.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0x27,0x10,0x07,0x0c]
sh.and.t %d0, %d0, 7, %d1, 24

# CHECK-INST: sh.and.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0x27,0x10,0x87,0x0f]
sh.and.t %d0, %d0, 7, %d1, 31

# CHECK-INST: sh.and.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x07,0x00]
sh.and.t %d0, %d0, 7, %d14, 0

# CHECK-INST: sh.and.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0x27,0xe0,0x87,0x03]
sh.and.t %d0, %d0, 7, %d14, 7

# CHECK-INST: sh.and.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x07,0x0c]
sh.and.t %d0, %d0, 7, %d14, 24

# CHECK-INST: sh.and.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0x27,0xe0,0x87,0x0f]
sh.and.t %d0, %d0, 7, %d14, 31

# CHECK-INST: sh.and.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x07,0x00]
sh.and.t %d0, %d0, 7, %d15, 0

# CHECK-INST: sh.and.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0x27,0xf0,0x87,0x03]
sh.and.t %d0, %d0, 7, %d15, 7

# CHECK-INST: sh.and.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x07,0x0c]
sh.and.t %d0, %d0, 7, %d15, 24

# CHECK-INST: sh.and.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0x27,0xf0,0x87,0x0f]
sh.and.t %d0, %d0, 7, %d15, 31

# CHECK-INST: sh.and.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0x27,0x00,0x18,0x00]
sh.and.t %d0, %d0, 24, %d0, 0

# CHECK-INST: sh.and.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0x27,0x00,0x98,0x03]
sh.and.t %d0, %d0, 24, %d0, 7

# CHECK-INST: sh.and.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0x27,0x00,0x18,0x0c]
sh.and.t %d0, %d0, 24, %d0, 24

# CHECK-INST: sh.and.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0x27,0x00,0x98,0x0f]
sh.and.t %d0, %d0, 24, %d0, 31

# CHECK-INST: sh.and.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0x27,0x10,0x18,0x00]
sh.and.t %d0, %d0, 24, %d1, 0

# CHECK-INST: sh.and.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0x27,0x10,0x98,0x03]
sh.and.t %d0, %d0, 24, %d1, 7

# CHECK-INST: sh.and.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0x27,0x10,0x18,0x0c]
sh.and.t %d0, %d0, 24, %d1, 24

# CHECK-INST: sh.and.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0x27,0x10,0x98,0x0f]
sh.and.t %d0, %d0, 24, %d1, 31

# CHECK-INST: sh.and.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x18,0x00]
sh.and.t %d0, %d0, 24, %d14, 0

# CHECK-INST: sh.and.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0x27,0xe0,0x98,0x03]
sh.and.t %d0, %d0, 24, %d14, 7

# CHECK-INST: sh.and.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x18,0x0c]
sh.and.t %d0, %d0, 24, %d14, 24

# CHECK-INST: sh.and.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0x27,0xe0,0x98,0x0f]
sh.and.t %d0, %d0, 24, %d14, 31

# CHECK-INST: sh.and.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x18,0x00]
sh.and.t %d0, %d0, 24, %d15, 0

# CHECK-INST: sh.and.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0x27,0xf0,0x98,0x03]
sh.and.t %d0, %d0, 24, %d15, 7

# CHECK-INST: sh.and.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x18,0x0c]
sh.and.t %d0, %d0, 24, %d15, 24

# CHECK-INST: sh.and.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0x27,0xf0,0x98,0x0f]
sh.and.t %d0, %d0, 24, %d15, 31

# CHECK-INST: sh.and.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0x27,0x00,0x1f,0x00]
sh.and.t %d0, %d0, 31, %d0, 0

# CHECK-INST: sh.and.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0x27,0x00,0x9f,0x03]
sh.and.t %d0, %d0, 31, %d0, 7

# CHECK-INST: sh.and.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0x27,0x00,0x1f,0x0c]
sh.and.t %d0, %d0, 31, %d0, 24

# CHECK-INST: sh.and.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0x27,0x00,0x9f,0x0f]
sh.and.t %d0, %d0, 31, %d0, 31

# CHECK-INST: sh.and.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0x27,0x10,0x1f,0x00]
sh.and.t %d0, %d0, 31, %d1, 0

# CHECK-INST: sh.and.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0x27,0x10,0x9f,0x03]
sh.and.t %d0, %d0, 31, %d1, 7

# CHECK-INST: sh.and.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0x27,0x10,0x1f,0x0c]
sh.and.t %d0, %d0, 31, %d1, 24

# CHECK-INST: sh.and.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0x27,0x10,0x9f,0x0f]
sh.and.t %d0, %d0, 31, %d1, 31

# CHECK-INST: sh.and.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x1f,0x00]
sh.and.t %d0, %d0, 31, %d14, 0

# CHECK-INST: sh.and.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0x27,0xe0,0x9f,0x03]
sh.and.t %d0, %d0, 31, %d14, 7

# CHECK-INST: sh.and.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x1f,0x0c]
sh.and.t %d0, %d0, 31, %d14, 24

# CHECK-INST: sh.and.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0x27,0xe0,0x9f,0x0f]
sh.and.t %d0, %d0, 31, %d14, 31

# CHECK-INST: sh.and.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x1f,0x00]
sh.and.t %d0, %d0, 31, %d15, 0

# CHECK-INST: sh.and.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0x27,0xf0,0x9f,0x03]
sh.and.t %d0, %d0, 31, %d15, 7

# CHECK-INST: sh.and.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x1f,0x0c]
sh.and.t %d0, %d0, 31, %d15, 24

# CHECK-INST: sh.and.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0x27,0xf0,0x9f,0x0f]
sh.and.t %d0, %d0, 31, %d15, 31

# CHECK-INST: sh.and.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0x27,0x01,0x00,0x00]
sh.and.t %d0, %d1, 0, %d0, 0

# CHECK-INST: sh.and.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0x27,0x01,0x80,0x03]
sh.and.t %d0, %d1, 0, %d0, 7

# CHECK-INST: sh.and.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0x27,0x01,0x00,0x0c]
sh.and.t %d0, %d1, 0, %d0, 24

# CHECK-INST: sh.and.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0x27,0x01,0x80,0x0f]
sh.and.t %d0, %d1, 0, %d0, 31

# CHECK-INST: sh.and.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0x27,0x11,0x00,0x00]
sh.and.t %d0, %d1, 0, %d1, 0

# CHECK-INST: sh.and.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0x27,0x11,0x80,0x03]
sh.and.t %d0, %d1, 0, %d1, 7

# CHECK-INST: sh.and.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0x27,0x11,0x00,0x0c]
sh.and.t %d0, %d1, 0, %d1, 24

# CHECK-INST: sh.and.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0x27,0x11,0x80,0x0f]
sh.and.t %d0, %d1, 0, %d1, 31

# CHECK-INST: sh.and.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x00,0x00]
sh.and.t %d0, %d1, 0, %d14, 0

# CHECK-INST: sh.and.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0x27,0xe1,0x80,0x03]
sh.and.t %d0, %d1, 0, %d14, 7

# CHECK-INST: sh.and.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x00,0x0c]
sh.and.t %d0, %d1, 0, %d14, 24

# CHECK-INST: sh.and.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0x27,0xe1,0x80,0x0f]
sh.and.t %d0, %d1, 0, %d14, 31

# CHECK-INST: sh.and.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x00,0x00]
sh.and.t %d0, %d1, 0, %d15, 0

# CHECK-INST: sh.and.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0x27,0xf1,0x80,0x03]
sh.and.t %d0, %d1, 0, %d15, 7

# CHECK-INST: sh.and.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x00,0x0c]
sh.and.t %d0, %d1, 0, %d15, 24

# CHECK-INST: sh.and.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0x27,0xf1,0x80,0x0f]
sh.and.t %d0, %d1, 0, %d15, 31

# CHECK-INST: sh.and.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0x27,0x01,0x07,0x00]
sh.and.t %d0, %d1, 7, %d0, 0

# CHECK-INST: sh.and.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0x27,0x01,0x87,0x03]
sh.and.t %d0, %d1, 7, %d0, 7

# CHECK-INST: sh.and.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0x27,0x01,0x07,0x0c]
sh.and.t %d0, %d1, 7, %d0, 24

# CHECK-INST: sh.and.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0x27,0x01,0x87,0x0f]
sh.and.t %d0, %d1, 7, %d0, 31

# CHECK-INST: sh.and.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0x27,0x11,0x07,0x00]
sh.and.t %d0, %d1, 7, %d1, 0

# CHECK-INST: sh.and.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0x27,0x11,0x87,0x03]
sh.and.t %d0, %d1, 7, %d1, 7

# CHECK-INST: sh.and.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0x27,0x11,0x07,0x0c]
sh.and.t %d0, %d1, 7, %d1, 24

# CHECK-INST: sh.and.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0x27,0x11,0x87,0x0f]
sh.and.t %d0, %d1, 7, %d1, 31

# CHECK-INST: sh.and.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x07,0x00]
sh.and.t %d0, %d1, 7, %d14, 0

# CHECK-INST: sh.and.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0x27,0xe1,0x87,0x03]
sh.and.t %d0, %d1, 7, %d14, 7

# CHECK-INST: sh.and.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x07,0x0c]
sh.and.t %d0, %d1, 7, %d14, 24

# CHECK-INST: sh.and.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0x27,0xe1,0x87,0x0f]
sh.and.t %d0, %d1, 7, %d14, 31

# CHECK-INST: sh.and.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x07,0x00]
sh.and.t %d0, %d1, 7, %d15, 0

# CHECK-INST: sh.and.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0x27,0xf1,0x87,0x03]
sh.and.t %d0, %d1, 7, %d15, 7

# CHECK-INST: sh.and.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x07,0x0c]
sh.and.t %d0, %d1, 7, %d15, 24

# CHECK-INST: sh.and.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0x27,0xf1,0x87,0x0f]
sh.and.t %d0, %d1, 7, %d15, 31

# CHECK-INST: sh.and.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0x27,0x01,0x18,0x00]
sh.and.t %d0, %d1, 24, %d0, 0

# CHECK-INST: sh.and.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0x27,0x01,0x98,0x03]
sh.and.t %d0, %d1, 24, %d0, 7

# CHECK-INST: sh.and.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0x27,0x01,0x18,0x0c]
sh.and.t %d0, %d1, 24, %d0, 24

# CHECK-INST: sh.and.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0x27,0x01,0x98,0x0f]
sh.and.t %d0, %d1, 24, %d0, 31

# CHECK-INST: sh.and.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0x27,0x11,0x18,0x00]
sh.and.t %d0, %d1, 24, %d1, 0

# CHECK-INST: sh.and.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0x27,0x11,0x98,0x03]
sh.and.t %d0, %d1, 24, %d1, 7

# CHECK-INST: sh.and.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0x27,0x11,0x18,0x0c]
sh.and.t %d0, %d1, 24, %d1, 24

# CHECK-INST: sh.and.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0x27,0x11,0x98,0x0f]
sh.and.t %d0, %d1, 24, %d1, 31

# CHECK-INST: sh.and.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x18,0x00]
sh.and.t %d0, %d1, 24, %d14, 0

# CHECK-INST: sh.and.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0x27,0xe1,0x98,0x03]
sh.and.t %d0, %d1, 24, %d14, 7

# CHECK-INST: sh.and.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x18,0x0c]
sh.and.t %d0, %d1, 24, %d14, 24

# CHECK-INST: sh.and.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0x27,0xe1,0x98,0x0f]
sh.and.t %d0, %d1, 24, %d14, 31

# CHECK-INST: sh.and.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x18,0x00]
sh.and.t %d0, %d1, 24, %d15, 0

# CHECK-INST: sh.and.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0x27,0xf1,0x98,0x03]
sh.and.t %d0, %d1, 24, %d15, 7

# CHECK-INST: sh.and.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x18,0x0c]
sh.and.t %d0, %d1, 24, %d15, 24

# CHECK-INST: sh.and.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0x27,0xf1,0x98,0x0f]
sh.and.t %d0, %d1, 24, %d15, 31

# CHECK-INST: sh.and.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0x27,0x01,0x1f,0x00]
sh.and.t %d0, %d1, 31, %d0, 0

# CHECK-INST: sh.and.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0x27,0x01,0x9f,0x03]
sh.and.t %d0, %d1, 31, %d0, 7

# CHECK-INST: sh.and.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0x27,0x01,0x1f,0x0c]
sh.and.t %d0, %d1, 31, %d0, 24

# CHECK-INST: sh.and.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0x27,0x01,0x9f,0x0f]
sh.and.t %d0, %d1, 31, %d0, 31

# CHECK-INST: sh.and.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0x27,0x11,0x1f,0x00]
sh.and.t %d0, %d1, 31, %d1, 0

# CHECK-INST: sh.and.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0x27,0x11,0x9f,0x03]
sh.and.t %d0, %d1, 31, %d1, 7

# CHECK-INST: sh.and.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0x27,0x11,0x1f,0x0c]
sh.and.t %d0, %d1, 31, %d1, 24

# CHECK-INST: sh.and.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0x27,0x11,0x9f,0x0f]
sh.and.t %d0, %d1, 31, %d1, 31

# CHECK-INST: sh.and.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x1f,0x00]
sh.and.t %d0, %d1, 31, %d14, 0

# CHECK-INST: sh.and.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0x27,0xe1,0x9f,0x03]
sh.and.t %d0, %d1, 31, %d14, 7

# CHECK-INST: sh.and.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x1f,0x0c]
sh.and.t %d0, %d1, 31, %d14, 24

# CHECK-INST: sh.and.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0x27,0xe1,0x9f,0x0f]
sh.and.t %d0, %d1, 31, %d14, 31

# CHECK-INST: sh.and.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x1f,0x00]
sh.and.t %d0, %d1, 31, %d15, 0

# CHECK-INST: sh.and.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0x27,0xf1,0x9f,0x03]
sh.and.t %d0, %d1, 31, %d15, 7

# CHECK-INST: sh.and.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x1f,0x0c]
sh.and.t %d0, %d1, 31, %d15, 24

# CHECK-INST: sh.and.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0x27,0xf1,0x9f,0x0f]
sh.and.t %d0, %d1, 31, %d15, 31

# CHECK-INST: sh.and.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x00,0x00]
sh.and.t %d0, %d14, 0, %d0, 0

# CHECK-INST: sh.and.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0x27,0x0e,0x80,0x03]
sh.and.t %d0, %d14, 0, %d0, 7

# CHECK-INST: sh.and.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x00,0x0c]
sh.and.t %d0, %d14, 0, %d0, 24

# CHECK-INST: sh.and.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0x27,0x0e,0x80,0x0f]
sh.and.t %d0, %d14, 0, %d0, 31

# CHECK-INST: sh.and.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x00,0x00]
sh.and.t %d0, %d14, 0, %d1, 0

# CHECK-INST: sh.and.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0x27,0x1e,0x80,0x03]
sh.and.t %d0, %d14, 0, %d1, 7

# CHECK-INST: sh.and.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x00,0x0c]
sh.and.t %d0, %d14, 0, %d1, 24

# CHECK-INST: sh.and.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0x27,0x1e,0x80,0x0f]
sh.and.t %d0, %d14, 0, %d1, 31

# CHECK-INST: sh.and.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0x27,0xee,0x00,0x00]
sh.and.t %d0, %d14, 0, %d14, 0

# CHECK-INST: sh.and.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0x27,0xee,0x80,0x03]
sh.and.t %d0, %d14, 0, %d14, 7

# CHECK-INST: sh.and.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0x27,0xee,0x00,0x0c]
sh.and.t %d0, %d14, 0, %d14, 24

# CHECK-INST: sh.and.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0x27,0xee,0x80,0x0f]
sh.and.t %d0, %d14, 0, %d14, 31

# CHECK-INST: sh.and.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x00,0x00]
sh.and.t %d0, %d14, 0, %d15, 0

# CHECK-INST: sh.and.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0x27,0xfe,0x80,0x03]
sh.and.t %d0, %d14, 0, %d15, 7

# CHECK-INST: sh.and.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x00,0x0c]
sh.and.t %d0, %d14, 0, %d15, 24

# CHECK-INST: sh.and.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0x27,0xfe,0x80,0x0f]
sh.and.t %d0, %d14, 0, %d15, 31

# CHECK-INST: sh.and.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x07,0x00]
sh.and.t %d0, %d14, 7, %d0, 0

# CHECK-INST: sh.and.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0x27,0x0e,0x87,0x03]
sh.and.t %d0, %d14, 7, %d0, 7

# CHECK-INST: sh.and.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x07,0x0c]
sh.and.t %d0, %d14, 7, %d0, 24

# CHECK-INST: sh.and.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0x27,0x0e,0x87,0x0f]
sh.and.t %d0, %d14, 7, %d0, 31

# CHECK-INST: sh.and.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x07,0x00]
sh.and.t %d0, %d14, 7, %d1, 0

# CHECK-INST: sh.and.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0x27,0x1e,0x87,0x03]
sh.and.t %d0, %d14, 7, %d1, 7

# CHECK-INST: sh.and.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x07,0x0c]
sh.and.t %d0, %d14, 7, %d1, 24

# CHECK-INST: sh.and.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0x27,0x1e,0x87,0x0f]
sh.and.t %d0, %d14, 7, %d1, 31

# CHECK-INST: sh.and.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0x27,0xee,0x07,0x00]
sh.and.t %d0, %d14, 7, %d14, 0

# CHECK-INST: sh.and.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0x27,0xee,0x87,0x03]
sh.and.t %d0, %d14, 7, %d14, 7

# CHECK-INST: sh.and.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0x27,0xee,0x07,0x0c]
sh.and.t %d0, %d14, 7, %d14, 24

# CHECK-INST: sh.and.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0x27,0xee,0x87,0x0f]
sh.and.t %d0, %d14, 7, %d14, 31

# CHECK-INST: sh.and.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x07,0x00]
sh.and.t %d0, %d14, 7, %d15, 0

# CHECK-INST: sh.and.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0x27,0xfe,0x87,0x03]
sh.and.t %d0, %d14, 7, %d15, 7

# CHECK-INST: sh.and.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x07,0x0c]
sh.and.t %d0, %d14, 7, %d15, 24

# CHECK-INST: sh.and.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0x27,0xfe,0x87,0x0f]
sh.and.t %d0, %d14, 7, %d15, 31

# CHECK-INST: sh.and.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x18,0x00]
sh.and.t %d0, %d14, 24, %d0, 0

# CHECK-INST: sh.and.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0x27,0x0e,0x98,0x03]
sh.and.t %d0, %d14, 24, %d0, 7

# CHECK-INST: sh.and.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x18,0x0c]
sh.and.t %d0, %d14, 24, %d0, 24

# CHECK-INST: sh.and.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0x27,0x0e,0x98,0x0f]
sh.and.t %d0, %d14, 24, %d0, 31

# CHECK-INST: sh.and.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x18,0x00]
sh.and.t %d0, %d14, 24, %d1, 0

# CHECK-INST: sh.and.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0x27,0x1e,0x98,0x03]
sh.and.t %d0, %d14, 24, %d1, 7

# CHECK-INST: sh.and.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x18,0x0c]
sh.and.t %d0, %d14, 24, %d1, 24

# CHECK-INST: sh.and.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0x27,0x1e,0x98,0x0f]
sh.and.t %d0, %d14, 24, %d1, 31

# CHECK-INST: sh.and.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0x27,0xee,0x18,0x00]
sh.and.t %d0, %d14, 24, %d14, 0

# CHECK-INST: sh.and.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0x27,0xee,0x98,0x03]
sh.and.t %d0, %d14, 24, %d14, 7

# CHECK-INST: sh.and.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0x27,0xee,0x18,0x0c]
sh.and.t %d0, %d14, 24, %d14, 24

# CHECK-INST: sh.and.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0x27,0xee,0x98,0x0f]
sh.and.t %d0, %d14, 24, %d14, 31

# CHECK-INST: sh.and.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x18,0x00]
sh.and.t %d0, %d14, 24, %d15, 0

# CHECK-INST: sh.and.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0x27,0xfe,0x98,0x03]
sh.and.t %d0, %d14, 24, %d15, 7

# CHECK-INST: sh.and.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x18,0x0c]
sh.and.t %d0, %d14, 24, %d15, 24

# CHECK-INST: sh.and.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0x27,0xfe,0x98,0x0f]
sh.and.t %d0, %d14, 24, %d15, 31

# CHECK-INST: sh.and.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x1f,0x00]
sh.and.t %d0, %d14, 31, %d0, 0

# CHECK-INST: sh.and.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0x27,0x0e,0x9f,0x03]
sh.and.t %d0, %d14, 31, %d0, 7

# CHECK-INST: sh.and.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x1f,0x0c]
sh.and.t %d0, %d14, 31, %d0, 24

# CHECK-INST: sh.and.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0x27,0x0e,0x9f,0x0f]
sh.and.t %d0, %d14, 31, %d0, 31

# CHECK-INST: sh.and.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x1f,0x00]
sh.and.t %d0, %d14, 31, %d1, 0

# CHECK-INST: sh.and.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0x27,0x1e,0x9f,0x03]
sh.and.t %d0, %d14, 31, %d1, 7

# CHECK-INST: sh.and.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x1f,0x0c]
sh.and.t %d0, %d14, 31, %d1, 24

# CHECK-INST: sh.and.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0x27,0x1e,0x9f,0x0f]
sh.and.t %d0, %d14, 31, %d1, 31

# CHECK-INST: sh.and.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0x27,0xee,0x1f,0x00]
sh.and.t %d0, %d14, 31, %d14, 0

# CHECK-INST: sh.and.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0x27,0xee,0x9f,0x03]
sh.and.t %d0, %d14, 31, %d14, 7

# CHECK-INST: sh.and.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0x27,0xee,0x1f,0x0c]
sh.and.t %d0, %d14, 31, %d14, 24

# CHECK-INST: sh.and.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0x27,0xee,0x9f,0x0f]
sh.and.t %d0, %d14, 31, %d14, 31

# CHECK-INST: sh.and.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x1f,0x00]
sh.and.t %d0, %d14, 31, %d15, 0

# CHECK-INST: sh.and.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0x27,0xfe,0x9f,0x03]
sh.and.t %d0, %d14, 31, %d15, 7

# CHECK-INST: sh.and.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x1f,0x0c]
sh.and.t %d0, %d14, 31, %d15, 24

# CHECK-INST: sh.and.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0x27,0xfe,0x9f,0x0f]
sh.and.t %d0, %d14, 31, %d15, 31

# CHECK-INST: sh.and.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x00,0x00]
sh.and.t %d0, %d15, 0, %d0, 0

# CHECK-INST: sh.and.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0x27,0x0f,0x80,0x03]
sh.and.t %d0, %d15, 0, %d0, 7

# CHECK-INST: sh.and.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x00,0x0c]
sh.and.t %d0, %d15, 0, %d0, 24

# CHECK-INST: sh.and.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0x27,0x0f,0x80,0x0f]
sh.and.t %d0, %d15, 0, %d0, 31

# CHECK-INST: sh.and.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x00,0x00]
sh.and.t %d0, %d15, 0, %d1, 0

# CHECK-INST: sh.and.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0x27,0x1f,0x80,0x03]
sh.and.t %d0, %d15, 0, %d1, 7

# CHECK-INST: sh.and.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x00,0x0c]
sh.and.t %d0, %d15, 0, %d1, 24

# CHECK-INST: sh.and.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0x27,0x1f,0x80,0x0f]
sh.and.t %d0, %d15, 0, %d1, 31

# CHECK-INST: sh.and.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0x27,0xef,0x00,0x00]
sh.and.t %d0, %d15, 0, %d14, 0

# CHECK-INST: sh.and.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0x27,0xef,0x80,0x03]
sh.and.t %d0, %d15, 0, %d14, 7

# CHECK-INST: sh.and.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0x27,0xef,0x00,0x0c]
sh.and.t %d0, %d15, 0, %d14, 24

# CHECK-INST: sh.and.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0x27,0xef,0x80,0x0f]
sh.and.t %d0, %d15, 0, %d14, 31

# CHECK-INST: sh.and.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0x27,0xff,0x00,0x00]
sh.and.t %d0, %d15, 0, %d15, 0

# CHECK-INST: sh.and.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0x27,0xff,0x80,0x03]
sh.and.t %d0, %d15, 0, %d15, 7

# CHECK-INST: sh.and.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0x27,0xff,0x00,0x0c]
sh.and.t %d0, %d15, 0, %d15, 24

# CHECK-INST: sh.and.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0x27,0xff,0x80,0x0f]
sh.and.t %d0, %d15, 0, %d15, 31

# CHECK-INST: sh.and.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x07,0x00]
sh.and.t %d0, %d15, 7, %d0, 0

# CHECK-INST: sh.and.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0x27,0x0f,0x87,0x03]
sh.and.t %d0, %d15, 7, %d0, 7

# CHECK-INST: sh.and.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x07,0x0c]
sh.and.t %d0, %d15, 7, %d0, 24

# CHECK-INST: sh.and.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0x27,0x0f,0x87,0x0f]
sh.and.t %d0, %d15, 7, %d0, 31

# CHECK-INST: sh.and.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x07,0x00]
sh.and.t %d0, %d15, 7, %d1, 0

# CHECK-INST: sh.and.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0x27,0x1f,0x87,0x03]
sh.and.t %d0, %d15, 7, %d1, 7

# CHECK-INST: sh.and.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x07,0x0c]
sh.and.t %d0, %d15, 7, %d1, 24

# CHECK-INST: sh.and.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0x27,0x1f,0x87,0x0f]
sh.and.t %d0, %d15, 7, %d1, 31

# CHECK-INST: sh.and.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0x27,0xef,0x07,0x00]
sh.and.t %d0, %d15, 7, %d14, 0

# CHECK-INST: sh.and.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0x27,0xef,0x87,0x03]
sh.and.t %d0, %d15, 7, %d14, 7

# CHECK-INST: sh.and.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0x27,0xef,0x07,0x0c]
sh.and.t %d0, %d15, 7, %d14, 24

# CHECK-INST: sh.and.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0x27,0xef,0x87,0x0f]
sh.and.t %d0, %d15, 7, %d14, 31

# CHECK-INST: sh.and.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0x27,0xff,0x07,0x00]
sh.and.t %d0, %d15, 7, %d15, 0

# CHECK-INST: sh.and.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0x27,0xff,0x87,0x03]
sh.and.t %d0, %d15, 7, %d15, 7

# CHECK-INST: sh.and.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0x27,0xff,0x07,0x0c]
sh.and.t %d0, %d15, 7, %d15, 24

# CHECK-INST: sh.and.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0x27,0xff,0x87,0x0f]
sh.and.t %d0, %d15, 7, %d15, 31

# CHECK-INST: sh.and.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x18,0x00]
sh.and.t %d0, %d15, 24, %d0, 0

# CHECK-INST: sh.and.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0x27,0x0f,0x98,0x03]
sh.and.t %d0, %d15, 24, %d0, 7

# CHECK-INST: sh.and.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x18,0x0c]
sh.and.t %d0, %d15, 24, %d0, 24

# CHECK-INST: sh.and.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0x27,0x0f,0x98,0x0f]
sh.and.t %d0, %d15, 24, %d0, 31

# CHECK-INST: sh.and.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x18,0x00]
sh.and.t %d0, %d15, 24, %d1, 0

# CHECK-INST: sh.and.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0x27,0x1f,0x98,0x03]
sh.and.t %d0, %d15, 24, %d1, 7

# CHECK-INST: sh.and.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x18,0x0c]
sh.and.t %d0, %d15, 24, %d1, 24

# CHECK-INST: sh.and.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0x27,0x1f,0x98,0x0f]
sh.and.t %d0, %d15, 24, %d1, 31

# CHECK-INST: sh.and.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0x27,0xef,0x18,0x00]
sh.and.t %d0, %d15, 24, %d14, 0

# CHECK-INST: sh.and.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0x27,0xef,0x98,0x03]
sh.and.t %d0, %d15, 24, %d14, 7

# CHECK-INST: sh.and.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0x27,0xef,0x18,0x0c]
sh.and.t %d0, %d15, 24, %d14, 24

# CHECK-INST: sh.and.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0x27,0xef,0x98,0x0f]
sh.and.t %d0, %d15, 24, %d14, 31

# CHECK-INST: sh.and.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0x27,0xff,0x18,0x00]
sh.and.t %d0, %d15, 24, %d15, 0

# CHECK-INST: sh.and.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0x27,0xff,0x98,0x03]
sh.and.t %d0, %d15, 24, %d15, 7

# CHECK-INST: sh.and.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0x27,0xff,0x18,0x0c]
sh.and.t %d0, %d15, 24, %d15, 24

# CHECK-INST: sh.and.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0x27,0xff,0x98,0x0f]
sh.and.t %d0, %d15, 24, %d15, 31

# CHECK-INST: sh.and.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x1f,0x00]
sh.and.t %d0, %d15, 31, %d0, 0

# CHECK-INST: sh.and.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0x27,0x0f,0x9f,0x03]
sh.and.t %d0, %d15, 31, %d0, 7

# CHECK-INST: sh.and.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x1f,0x0c]
sh.and.t %d0, %d15, 31, %d0, 24

# CHECK-INST: sh.and.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0x27,0x0f,0x9f,0x0f]
sh.and.t %d0, %d15, 31, %d0, 31

# CHECK-INST: sh.and.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x1f,0x00]
sh.and.t %d0, %d15, 31, %d1, 0

# CHECK-INST: sh.and.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0x27,0x1f,0x9f,0x03]
sh.and.t %d0, %d15, 31, %d1, 7

# CHECK-INST: sh.and.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x1f,0x0c]
sh.and.t %d0, %d15, 31, %d1, 24

# CHECK-INST: sh.and.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0x27,0x1f,0x9f,0x0f]
sh.and.t %d0, %d15, 31, %d1, 31

# CHECK-INST: sh.and.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0x27,0xef,0x1f,0x00]
sh.and.t %d0, %d15, 31, %d14, 0

# CHECK-INST: sh.and.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0x27,0xef,0x9f,0x03]
sh.and.t %d0, %d15, 31, %d14, 7

# CHECK-INST: sh.and.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0x27,0xef,0x1f,0x0c]
sh.and.t %d0, %d15, 31, %d14, 24

# CHECK-INST: sh.and.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0x27,0xef,0x9f,0x0f]
sh.and.t %d0, %d15, 31, %d14, 31

# CHECK-INST: sh.and.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0x27,0xff,0x1f,0x00]
sh.and.t %d0, %d15, 31, %d15, 0

# CHECK-INST: sh.and.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0x27,0xff,0x9f,0x03]
sh.and.t %d0, %d15, 31, %d15, 7

# CHECK-INST: sh.and.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0x27,0xff,0x1f,0x0c]
sh.and.t %d0, %d15, 31, %d15, 24

# CHECK-INST: sh.and.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0x27,0xff,0x9f,0x0f]
sh.and.t %d0, %d15, 31, %d15, 31

# CHECK-INST: sh.and.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x00,0x10]
sh.and.t %d1, %d0, 0, %d0, 0

# CHECK-INST: sh.and.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0x27,0x00,0x80,0x13]
sh.and.t %d1, %d0, 0, %d0, 7

# CHECK-INST: sh.and.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0x27,0x00,0x00,0x1c]
sh.and.t %d1, %d0, 0, %d0, 24

# CHECK-INST: sh.and.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0x27,0x00,0x80,0x1f]
sh.and.t %d1, %d0, 0, %d0, 31

# CHECK-INST: sh.and.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0x27,0x10,0x00,0x10]
sh.and.t %d1, %d0, 0, %d1, 0

# CHECK-INST: sh.and.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0x27,0x10,0x80,0x13]
sh.and.t %d1, %d0, 0, %d1, 7

# CHECK-INST: sh.and.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0x27,0x10,0x00,0x1c]
sh.and.t %d1, %d0, 0, %d1, 24

# CHECK-INST: sh.and.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0x27,0x10,0x80,0x1f]
sh.and.t %d1, %d0, 0, %d1, 31

# CHECK-INST: sh.and.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x00,0x10]
sh.and.t %d1, %d0, 0, %d14, 0

# CHECK-INST: sh.and.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0x27,0xe0,0x80,0x13]
sh.and.t %d1, %d0, 0, %d14, 7

# CHECK-INST: sh.and.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x00,0x1c]
sh.and.t %d1, %d0, 0, %d14, 24

# CHECK-INST: sh.and.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0x27,0xe0,0x80,0x1f]
sh.and.t %d1, %d0, 0, %d14, 31

# CHECK-INST: sh.and.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x00,0x10]
sh.and.t %d1, %d0, 0, %d15, 0

# CHECK-INST: sh.and.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0x27,0xf0,0x80,0x13]
sh.and.t %d1, %d0, 0, %d15, 7

# CHECK-INST: sh.and.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x00,0x1c]
sh.and.t %d1, %d0, 0, %d15, 24

# CHECK-INST: sh.and.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0x27,0xf0,0x80,0x1f]
sh.and.t %d1, %d0, 0, %d15, 31

# CHECK-INST: sh.and.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0x27,0x00,0x07,0x10]
sh.and.t %d1, %d0, 7, %d0, 0

# CHECK-INST: sh.and.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0x27,0x00,0x87,0x13]
sh.and.t %d1, %d0, 7, %d0, 7

# CHECK-INST: sh.and.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0x27,0x00,0x07,0x1c]
sh.and.t %d1, %d0, 7, %d0, 24

# CHECK-INST: sh.and.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0x27,0x00,0x87,0x1f]
sh.and.t %d1, %d0, 7, %d0, 31

# CHECK-INST: sh.and.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0x27,0x10,0x07,0x10]
sh.and.t %d1, %d0, 7, %d1, 0

# CHECK-INST: sh.and.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0x27,0x10,0x87,0x13]
sh.and.t %d1, %d0, 7, %d1, 7

# CHECK-INST: sh.and.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0x27,0x10,0x07,0x1c]
sh.and.t %d1, %d0, 7, %d1, 24

# CHECK-INST: sh.and.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0x27,0x10,0x87,0x1f]
sh.and.t %d1, %d0, 7, %d1, 31

# CHECK-INST: sh.and.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x07,0x10]
sh.and.t %d1, %d0, 7, %d14, 0

# CHECK-INST: sh.and.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0x27,0xe0,0x87,0x13]
sh.and.t %d1, %d0, 7, %d14, 7

# CHECK-INST: sh.and.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x07,0x1c]
sh.and.t %d1, %d0, 7, %d14, 24

# CHECK-INST: sh.and.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0x27,0xe0,0x87,0x1f]
sh.and.t %d1, %d0, 7, %d14, 31

# CHECK-INST: sh.and.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x07,0x10]
sh.and.t %d1, %d0, 7, %d15, 0

# CHECK-INST: sh.and.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0x27,0xf0,0x87,0x13]
sh.and.t %d1, %d0, 7, %d15, 7

# CHECK-INST: sh.and.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x07,0x1c]
sh.and.t %d1, %d0, 7, %d15, 24

# CHECK-INST: sh.and.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0x27,0xf0,0x87,0x1f]
sh.and.t %d1, %d0, 7, %d15, 31

# CHECK-INST: sh.and.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0x27,0x00,0x18,0x10]
sh.and.t %d1, %d0, 24, %d0, 0

# CHECK-INST: sh.and.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0x27,0x00,0x98,0x13]
sh.and.t %d1, %d0, 24, %d0, 7

# CHECK-INST: sh.and.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0x27,0x00,0x18,0x1c]
sh.and.t %d1, %d0, 24, %d0, 24

# CHECK-INST: sh.and.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0x27,0x00,0x98,0x1f]
sh.and.t %d1, %d0, 24, %d0, 31

# CHECK-INST: sh.and.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0x27,0x10,0x18,0x10]
sh.and.t %d1, %d0, 24, %d1, 0

# CHECK-INST: sh.and.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0x27,0x10,0x98,0x13]
sh.and.t %d1, %d0, 24, %d1, 7

# CHECK-INST: sh.and.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0x27,0x10,0x18,0x1c]
sh.and.t %d1, %d0, 24, %d1, 24

# CHECK-INST: sh.and.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0x27,0x10,0x98,0x1f]
sh.and.t %d1, %d0, 24, %d1, 31

# CHECK-INST: sh.and.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x18,0x10]
sh.and.t %d1, %d0, 24, %d14, 0

# CHECK-INST: sh.and.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0x27,0xe0,0x98,0x13]
sh.and.t %d1, %d0, 24, %d14, 7

# CHECK-INST: sh.and.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x18,0x1c]
sh.and.t %d1, %d0, 24, %d14, 24

# CHECK-INST: sh.and.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0x27,0xe0,0x98,0x1f]
sh.and.t %d1, %d0, 24, %d14, 31

# CHECK-INST: sh.and.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x18,0x10]
sh.and.t %d1, %d0, 24, %d15, 0

# CHECK-INST: sh.and.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0x27,0xf0,0x98,0x13]
sh.and.t %d1, %d0, 24, %d15, 7

# CHECK-INST: sh.and.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x18,0x1c]
sh.and.t %d1, %d0, 24, %d15, 24

# CHECK-INST: sh.and.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0x27,0xf0,0x98,0x1f]
sh.and.t %d1, %d0, 24, %d15, 31

# CHECK-INST: sh.and.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0x27,0x00,0x1f,0x10]
sh.and.t %d1, %d0, 31, %d0, 0

# CHECK-INST: sh.and.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0x27,0x00,0x9f,0x13]
sh.and.t %d1, %d0, 31, %d0, 7

# CHECK-INST: sh.and.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0x27,0x00,0x1f,0x1c]
sh.and.t %d1, %d0, 31, %d0, 24

# CHECK-INST: sh.and.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0x27,0x00,0x9f,0x1f]
sh.and.t %d1, %d0, 31, %d0, 31

# CHECK-INST: sh.and.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0x27,0x10,0x1f,0x10]
sh.and.t %d1, %d0, 31, %d1, 0

# CHECK-INST: sh.and.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0x27,0x10,0x9f,0x13]
sh.and.t %d1, %d0, 31, %d1, 7

# CHECK-INST: sh.and.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0x27,0x10,0x1f,0x1c]
sh.and.t %d1, %d0, 31, %d1, 24

# CHECK-INST: sh.and.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0x27,0x10,0x9f,0x1f]
sh.and.t %d1, %d0, 31, %d1, 31

# CHECK-INST: sh.and.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x1f,0x10]
sh.and.t %d1, %d0, 31, %d14, 0

# CHECK-INST: sh.and.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0x27,0xe0,0x9f,0x13]
sh.and.t %d1, %d0, 31, %d14, 7

# CHECK-INST: sh.and.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x1f,0x1c]
sh.and.t %d1, %d0, 31, %d14, 24

# CHECK-INST: sh.and.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0x27,0xe0,0x9f,0x1f]
sh.and.t %d1, %d0, 31, %d14, 31

# CHECK-INST: sh.and.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x1f,0x10]
sh.and.t %d1, %d0, 31, %d15, 0

# CHECK-INST: sh.and.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0x27,0xf0,0x9f,0x13]
sh.and.t %d1, %d0, 31, %d15, 7

# CHECK-INST: sh.and.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x1f,0x1c]
sh.and.t %d1, %d0, 31, %d15, 24

# CHECK-INST: sh.and.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0x27,0xf0,0x9f,0x1f]
sh.and.t %d1, %d0, 31, %d15, 31

# CHECK-INST: sh.and.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0x27,0x01,0x00,0x10]
sh.and.t %d1, %d1, 0, %d0, 0

# CHECK-INST: sh.and.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0x27,0x01,0x80,0x13]
sh.and.t %d1, %d1, 0, %d0, 7

# CHECK-INST: sh.and.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0x27,0x01,0x00,0x1c]
sh.and.t %d1, %d1, 0, %d0, 24

# CHECK-INST: sh.and.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0x27,0x01,0x80,0x1f]
sh.and.t %d1, %d1, 0, %d0, 31

# CHECK-INST: sh.and.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0x27,0x11,0x00,0x10]
sh.and.t %d1, %d1, 0, %d1, 0

# CHECK-INST: sh.and.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0x27,0x11,0x80,0x13]
sh.and.t %d1, %d1, 0, %d1, 7

# CHECK-INST: sh.and.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0x27,0x11,0x00,0x1c]
sh.and.t %d1, %d1, 0, %d1, 24

# CHECK-INST: sh.and.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0x27,0x11,0x80,0x1f]
sh.and.t %d1, %d1, 0, %d1, 31

# CHECK-INST: sh.and.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x00,0x10]
sh.and.t %d1, %d1, 0, %d14, 0

# CHECK-INST: sh.and.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0x27,0xe1,0x80,0x13]
sh.and.t %d1, %d1, 0, %d14, 7

# CHECK-INST: sh.and.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x00,0x1c]
sh.and.t %d1, %d1, 0, %d14, 24

# CHECK-INST: sh.and.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0x27,0xe1,0x80,0x1f]
sh.and.t %d1, %d1, 0, %d14, 31

# CHECK-INST: sh.and.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x00,0x10]
sh.and.t %d1, %d1, 0, %d15, 0

# CHECK-INST: sh.and.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0x27,0xf1,0x80,0x13]
sh.and.t %d1, %d1, 0, %d15, 7

# CHECK-INST: sh.and.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x00,0x1c]
sh.and.t %d1, %d1, 0, %d15, 24

# CHECK-INST: sh.and.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0x27,0xf1,0x80,0x1f]
sh.and.t %d1, %d1, 0, %d15, 31

# CHECK-INST: sh.and.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0x27,0x01,0x07,0x10]
sh.and.t %d1, %d1, 7, %d0, 0

# CHECK-INST: sh.and.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0x27,0x01,0x87,0x13]
sh.and.t %d1, %d1, 7, %d0, 7

# CHECK-INST: sh.and.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0x27,0x01,0x07,0x1c]
sh.and.t %d1, %d1, 7, %d0, 24

# CHECK-INST: sh.and.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0x27,0x01,0x87,0x1f]
sh.and.t %d1, %d1, 7, %d0, 31

# CHECK-INST: sh.and.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0x27,0x11,0x07,0x10]
sh.and.t %d1, %d1, 7, %d1, 0

# CHECK-INST: sh.and.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0x27,0x11,0x87,0x13]
sh.and.t %d1, %d1, 7, %d1, 7

# CHECK-INST: sh.and.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0x27,0x11,0x07,0x1c]
sh.and.t %d1, %d1, 7, %d1, 24

# CHECK-INST: sh.and.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0x27,0x11,0x87,0x1f]
sh.and.t %d1, %d1, 7, %d1, 31

# CHECK-INST: sh.and.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x07,0x10]
sh.and.t %d1, %d1, 7, %d14, 0

# CHECK-INST: sh.and.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0x27,0xe1,0x87,0x13]
sh.and.t %d1, %d1, 7, %d14, 7

# CHECK-INST: sh.and.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x07,0x1c]
sh.and.t %d1, %d1, 7, %d14, 24

# CHECK-INST: sh.and.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0x27,0xe1,0x87,0x1f]
sh.and.t %d1, %d1, 7, %d14, 31

# CHECK-INST: sh.and.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x07,0x10]
sh.and.t %d1, %d1, 7, %d15, 0

# CHECK-INST: sh.and.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0x27,0xf1,0x87,0x13]
sh.and.t %d1, %d1, 7, %d15, 7

# CHECK-INST: sh.and.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x07,0x1c]
sh.and.t %d1, %d1, 7, %d15, 24

# CHECK-INST: sh.and.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0x27,0xf1,0x87,0x1f]
sh.and.t %d1, %d1, 7, %d15, 31

# CHECK-INST: sh.and.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0x27,0x01,0x18,0x10]
sh.and.t %d1, %d1, 24, %d0, 0

# CHECK-INST: sh.and.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0x27,0x01,0x98,0x13]
sh.and.t %d1, %d1, 24, %d0, 7

# CHECK-INST: sh.and.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0x27,0x01,0x18,0x1c]
sh.and.t %d1, %d1, 24, %d0, 24

# CHECK-INST: sh.and.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0x27,0x01,0x98,0x1f]
sh.and.t %d1, %d1, 24, %d0, 31

# CHECK-INST: sh.and.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0x27,0x11,0x18,0x10]
sh.and.t %d1, %d1, 24, %d1, 0

# CHECK-INST: sh.and.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0x27,0x11,0x98,0x13]
sh.and.t %d1, %d1, 24, %d1, 7

# CHECK-INST: sh.and.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0x27,0x11,0x18,0x1c]
sh.and.t %d1, %d1, 24, %d1, 24

# CHECK-INST: sh.and.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0x27,0x11,0x98,0x1f]
sh.and.t %d1, %d1, 24, %d1, 31

# CHECK-INST: sh.and.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x18,0x10]
sh.and.t %d1, %d1, 24, %d14, 0

# CHECK-INST: sh.and.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0x27,0xe1,0x98,0x13]
sh.and.t %d1, %d1, 24, %d14, 7

# CHECK-INST: sh.and.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x18,0x1c]
sh.and.t %d1, %d1, 24, %d14, 24

# CHECK-INST: sh.and.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0x27,0xe1,0x98,0x1f]
sh.and.t %d1, %d1, 24, %d14, 31

# CHECK-INST: sh.and.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x18,0x10]
sh.and.t %d1, %d1, 24, %d15, 0

# CHECK-INST: sh.and.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0x27,0xf1,0x98,0x13]
sh.and.t %d1, %d1, 24, %d15, 7

# CHECK-INST: sh.and.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x18,0x1c]
sh.and.t %d1, %d1, 24, %d15, 24

# CHECK-INST: sh.and.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0x27,0xf1,0x98,0x1f]
sh.and.t %d1, %d1, 24, %d15, 31

# CHECK-INST: sh.and.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0x27,0x01,0x1f,0x10]
sh.and.t %d1, %d1, 31, %d0, 0

# CHECK-INST: sh.and.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0x27,0x01,0x9f,0x13]
sh.and.t %d1, %d1, 31, %d0, 7

# CHECK-INST: sh.and.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0x27,0x01,0x1f,0x1c]
sh.and.t %d1, %d1, 31, %d0, 24

# CHECK-INST: sh.and.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0x27,0x01,0x9f,0x1f]
sh.and.t %d1, %d1, 31, %d0, 31

# CHECK-INST: sh.and.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0x27,0x11,0x1f,0x10]
sh.and.t %d1, %d1, 31, %d1, 0

# CHECK-INST: sh.and.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0x27,0x11,0x9f,0x13]
sh.and.t %d1, %d1, 31, %d1, 7

# CHECK-INST: sh.and.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0x27,0x11,0x1f,0x1c]
sh.and.t %d1, %d1, 31, %d1, 24

# CHECK-INST: sh.and.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0x27,0x11,0x9f,0x1f]
sh.and.t %d1, %d1, 31, %d1, 31

# CHECK-INST: sh.and.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x1f,0x10]
sh.and.t %d1, %d1, 31, %d14, 0

# CHECK-INST: sh.and.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0x27,0xe1,0x9f,0x13]
sh.and.t %d1, %d1, 31, %d14, 7

# CHECK-INST: sh.and.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x1f,0x1c]
sh.and.t %d1, %d1, 31, %d14, 24

# CHECK-INST: sh.and.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0x27,0xe1,0x9f,0x1f]
sh.and.t %d1, %d1, 31, %d14, 31

# CHECK-INST: sh.and.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x1f,0x10]
sh.and.t %d1, %d1, 31, %d15, 0

# CHECK-INST: sh.and.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0x27,0xf1,0x9f,0x13]
sh.and.t %d1, %d1, 31, %d15, 7

# CHECK-INST: sh.and.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x1f,0x1c]
sh.and.t %d1, %d1, 31, %d15, 24

# CHECK-INST: sh.and.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0x27,0xf1,0x9f,0x1f]
sh.and.t %d1, %d1, 31, %d15, 31

# CHECK-INST: sh.and.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x00,0x10]
sh.and.t %d1, %d14, 0, %d0, 0

# CHECK-INST: sh.and.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0x27,0x0e,0x80,0x13]
sh.and.t %d1, %d14, 0, %d0, 7

# CHECK-INST: sh.and.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x00,0x1c]
sh.and.t %d1, %d14, 0, %d0, 24

# CHECK-INST: sh.and.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0x27,0x0e,0x80,0x1f]
sh.and.t %d1, %d14, 0, %d0, 31

# CHECK-INST: sh.and.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x00,0x10]
sh.and.t %d1, %d14, 0, %d1, 0

# CHECK-INST: sh.and.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0x27,0x1e,0x80,0x13]
sh.and.t %d1, %d14, 0, %d1, 7

# CHECK-INST: sh.and.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x00,0x1c]
sh.and.t %d1, %d14, 0, %d1, 24

# CHECK-INST: sh.and.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0x27,0x1e,0x80,0x1f]
sh.and.t %d1, %d14, 0, %d1, 31

# CHECK-INST: sh.and.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0x27,0xee,0x00,0x10]
sh.and.t %d1, %d14, 0, %d14, 0

# CHECK-INST: sh.and.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0x27,0xee,0x80,0x13]
sh.and.t %d1, %d14, 0, %d14, 7

# CHECK-INST: sh.and.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0x27,0xee,0x00,0x1c]
sh.and.t %d1, %d14, 0, %d14, 24

# CHECK-INST: sh.and.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0x27,0xee,0x80,0x1f]
sh.and.t %d1, %d14, 0, %d14, 31

# CHECK-INST: sh.and.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x00,0x10]
sh.and.t %d1, %d14, 0, %d15, 0

# CHECK-INST: sh.and.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0x27,0xfe,0x80,0x13]
sh.and.t %d1, %d14, 0, %d15, 7

# CHECK-INST: sh.and.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x00,0x1c]
sh.and.t %d1, %d14, 0, %d15, 24

# CHECK-INST: sh.and.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0x27,0xfe,0x80,0x1f]
sh.and.t %d1, %d14, 0, %d15, 31

# CHECK-INST: sh.and.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x07,0x10]
sh.and.t %d1, %d14, 7, %d0, 0

# CHECK-INST: sh.and.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0x27,0x0e,0x87,0x13]
sh.and.t %d1, %d14, 7, %d0, 7

# CHECK-INST: sh.and.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x07,0x1c]
sh.and.t %d1, %d14, 7, %d0, 24

# CHECK-INST: sh.and.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0x27,0x0e,0x87,0x1f]
sh.and.t %d1, %d14, 7, %d0, 31

# CHECK-INST: sh.and.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x07,0x10]
sh.and.t %d1, %d14, 7, %d1, 0

# CHECK-INST: sh.and.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0x27,0x1e,0x87,0x13]
sh.and.t %d1, %d14, 7, %d1, 7

# CHECK-INST: sh.and.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x07,0x1c]
sh.and.t %d1, %d14, 7, %d1, 24

# CHECK-INST: sh.and.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0x27,0x1e,0x87,0x1f]
sh.and.t %d1, %d14, 7, %d1, 31

# CHECK-INST: sh.and.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0x27,0xee,0x07,0x10]
sh.and.t %d1, %d14, 7, %d14, 0

# CHECK-INST: sh.and.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0x27,0xee,0x87,0x13]
sh.and.t %d1, %d14, 7, %d14, 7

# CHECK-INST: sh.and.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0x27,0xee,0x07,0x1c]
sh.and.t %d1, %d14, 7, %d14, 24

# CHECK-INST: sh.and.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0x27,0xee,0x87,0x1f]
sh.and.t %d1, %d14, 7, %d14, 31

# CHECK-INST: sh.and.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x07,0x10]
sh.and.t %d1, %d14, 7, %d15, 0

# CHECK-INST: sh.and.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0x27,0xfe,0x87,0x13]
sh.and.t %d1, %d14, 7, %d15, 7

# CHECK-INST: sh.and.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x07,0x1c]
sh.and.t %d1, %d14, 7, %d15, 24

# CHECK-INST: sh.and.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0x27,0xfe,0x87,0x1f]
sh.and.t %d1, %d14, 7, %d15, 31

# CHECK-INST: sh.and.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x18,0x10]
sh.and.t %d1, %d14, 24, %d0, 0

# CHECK-INST: sh.and.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0x27,0x0e,0x98,0x13]
sh.and.t %d1, %d14, 24, %d0, 7

# CHECK-INST: sh.and.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x18,0x1c]
sh.and.t %d1, %d14, 24, %d0, 24

# CHECK-INST: sh.and.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0x27,0x0e,0x98,0x1f]
sh.and.t %d1, %d14, 24, %d0, 31

# CHECK-INST: sh.and.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x18,0x10]
sh.and.t %d1, %d14, 24, %d1, 0

# CHECK-INST: sh.and.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0x27,0x1e,0x98,0x13]
sh.and.t %d1, %d14, 24, %d1, 7

# CHECK-INST: sh.and.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x18,0x1c]
sh.and.t %d1, %d14, 24, %d1, 24

# CHECK-INST: sh.and.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0x27,0x1e,0x98,0x1f]
sh.and.t %d1, %d14, 24, %d1, 31

# CHECK-INST: sh.and.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0x27,0xee,0x18,0x10]
sh.and.t %d1, %d14, 24, %d14, 0

# CHECK-INST: sh.and.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0x27,0xee,0x98,0x13]
sh.and.t %d1, %d14, 24, %d14, 7

# CHECK-INST: sh.and.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0x27,0xee,0x18,0x1c]
sh.and.t %d1, %d14, 24, %d14, 24

# CHECK-INST: sh.and.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0x27,0xee,0x98,0x1f]
sh.and.t %d1, %d14, 24, %d14, 31

# CHECK-INST: sh.and.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x18,0x10]
sh.and.t %d1, %d14, 24, %d15, 0

# CHECK-INST: sh.and.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0x27,0xfe,0x98,0x13]
sh.and.t %d1, %d14, 24, %d15, 7

# CHECK-INST: sh.and.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x18,0x1c]
sh.and.t %d1, %d14, 24, %d15, 24

# CHECK-INST: sh.and.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0x27,0xfe,0x98,0x1f]
sh.and.t %d1, %d14, 24, %d15, 31

# CHECK-INST: sh.and.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x1f,0x10]
sh.and.t %d1, %d14, 31, %d0, 0

# CHECK-INST: sh.and.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0x27,0x0e,0x9f,0x13]
sh.and.t %d1, %d14, 31, %d0, 7

# CHECK-INST: sh.and.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x1f,0x1c]
sh.and.t %d1, %d14, 31, %d0, 24

# CHECK-INST: sh.and.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0x27,0x0e,0x9f,0x1f]
sh.and.t %d1, %d14, 31, %d0, 31

# CHECK-INST: sh.and.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x1f,0x10]
sh.and.t %d1, %d14, 31, %d1, 0

# CHECK-INST: sh.and.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0x27,0x1e,0x9f,0x13]
sh.and.t %d1, %d14, 31, %d1, 7

# CHECK-INST: sh.and.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x1f,0x1c]
sh.and.t %d1, %d14, 31, %d1, 24

# CHECK-INST: sh.and.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0x27,0x1e,0x9f,0x1f]
sh.and.t %d1, %d14, 31, %d1, 31

# CHECK-INST: sh.and.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0x27,0xee,0x1f,0x10]
sh.and.t %d1, %d14, 31, %d14, 0

# CHECK-INST: sh.and.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0x27,0xee,0x9f,0x13]
sh.and.t %d1, %d14, 31, %d14, 7

# CHECK-INST: sh.and.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0x27,0xee,0x1f,0x1c]
sh.and.t %d1, %d14, 31, %d14, 24

# CHECK-INST: sh.and.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0x27,0xee,0x9f,0x1f]
sh.and.t %d1, %d14, 31, %d14, 31

# CHECK-INST: sh.and.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x1f,0x10]
sh.and.t %d1, %d14, 31, %d15, 0

# CHECK-INST: sh.and.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0x27,0xfe,0x9f,0x13]
sh.and.t %d1, %d14, 31, %d15, 7

# CHECK-INST: sh.and.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x1f,0x1c]
sh.and.t %d1, %d14, 31, %d15, 24

# CHECK-INST: sh.and.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0x27,0xfe,0x9f,0x1f]
sh.and.t %d1, %d14, 31, %d15, 31

# CHECK-INST: sh.and.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x00,0x10]
sh.and.t %d1, %d15, 0, %d0, 0

# CHECK-INST: sh.and.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0x27,0x0f,0x80,0x13]
sh.and.t %d1, %d15, 0, %d0, 7

# CHECK-INST: sh.and.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x00,0x1c]
sh.and.t %d1, %d15, 0, %d0, 24

# CHECK-INST: sh.and.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0x27,0x0f,0x80,0x1f]
sh.and.t %d1, %d15, 0, %d0, 31

# CHECK-INST: sh.and.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x00,0x10]
sh.and.t %d1, %d15, 0, %d1, 0

# CHECK-INST: sh.and.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0x27,0x1f,0x80,0x13]
sh.and.t %d1, %d15, 0, %d1, 7

# CHECK-INST: sh.and.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x00,0x1c]
sh.and.t %d1, %d15, 0, %d1, 24

# CHECK-INST: sh.and.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0x27,0x1f,0x80,0x1f]
sh.and.t %d1, %d15, 0, %d1, 31

# CHECK-INST: sh.and.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0x27,0xef,0x00,0x10]
sh.and.t %d1, %d15, 0, %d14, 0

# CHECK-INST: sh.and.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0x27,0xef,0x80,0x13]
sh.and.t %d1, %d15, 0, %d14, 7

# CHECK-INST: sh.and.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0x27,0xef,0x00,0x1c]
sh.and.t %d1, %d15, 0, %d14, 24

# CHECK-INST: sh.and.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0x27,0xef,0x80,0x1f]
sh.and.t %d1, %d15, 0, %d14, 31

# CHECK-INST: sh.and.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0x27,0xff,0x00,0x10]
sh.and.t %d1, %d15, 0, %d15, 0

# CHECK-INST: sh.and.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0x27,0xff,0x80,0x13]
sh.and.t %d1, %d15, 0, %d15, 7

# CHECK-INST: sh.and.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0x27,0xff,0x00,0x1c]
sh.and.t %d1, %d15, 0, %d15, 24

# CHECK-INST: sh.and.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0x27,0xff,0x80,0x1f]
sh.and.t %d1, %d15, 0, %d15, 31

# CHECK-INST: sh.and.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x07,0x10]
sh.and.t %d1, %d15, 7, %d0, 0

# CHECK-INST: sh.and.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0x27,0x0f,0x87,0x13]
sh.and.t %d1, %d15, 7, %d0, 7

# CHECK-INST: sh.and.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x07,0x1c]
sh.and.t %d1, %d15, 7, %d0, 24

# CHECK-INST: sh.and.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0x27,0x0f,0x87,0x1f]
sh.and.t %d1, %d15, 7, %d0, 31

# CHECK-INST: sh.and.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x07,0x10]
sh.and.t %d1, %d15, 7, %d1, 0

# CHECK-INST: sh.and.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0x27,0x1f,0x87,0x13]
sh.and.t %d1, %d15, 7, %d1, 7

# CHECK-INST: sh.and.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x07,0x1c]
sh.and.t %d1, %d15, 7, %d1, 24

# CHECK-INST: sh.and.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0x27,0x1f,0x87,0x1f]
sh.and.t %d1, %d15, 7, %d1, 31

# CHECK-INST: sh.and.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0x27,0xef,0x07,0x10]
sh.and.t %d1, %d15, 7, %d14, 0

# CHECK-INST: sh.and.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0x27,0xef,0x87,0x13]
sh.and.t %d1, %d15, 7, %d14, 7

# CHECK-INST: sh.and.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0x27,0xef,0x07,0x1c]
sh.and.t %d1, %d15, 7, %d14, 24

# CHECK-INST: sh.and.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0x27,0xef,0x87,0x1f]
sh.and.t %d1, %d15, 7, %d14, 31

# CHECK-INST: sh.and.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0x27,0xff,0x07,0x10]
sh.and.t %d1, %d15, 7, %d15, 0

# CHECK-INST: sh.and.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0x27,0xff,0x87,0x13]
sh.and.t %d1, %d15, 7, %d15, 7

# CHECK-INST: sh.and.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0x27,0xff,0x07,0x1c]
sh.and.t %d1, %d15, 7, %d15, 24

# CHECK-INST: sh.and.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0x27,0xff,0x87,0x1f]
sh.and.t %d1, %d15, 7, %d15, 31

# CHECK-INST: sh.and.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x18,0x10]
sh.and.t %d1, %d15, 24, %d0, 0

# CHECK-INST: sh.and.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0x27,0x0f,0x98,0x13]
sh.and.t %d1, %d15, 24, %d0, 7

# CHECK-INST: sh.and.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x18,0x1c]
sh.and.t %d1, %d15, 24, %d0, 24

# CHECK-INST: sh.and.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0x27,0x0f,0x98,0x1f]
sh.and.t %d1, %d15, 24, %d0, 31

# CHECK-INST: sh.and.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x18,0x10]
sh.and.t %d1, %d15, 24, %d1, 0

# CHECK-INST: sh.and.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0x27,0x1f,0x98,0x13]
sh.and.t %d1, %d15, 24, %d1, 7

# CHECK-INST: sh.and.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x18,0x1c]
sh.and.t %d1, %d15, 24, %d1, 24

# CHECK-INST: sh.and.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0x27,0x1f,0x98,0x1f]
sh.and.t %d1, %d15, 24, %d1, 31

# CHECK-INST: sh.and.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0x27,0xef,0x18,0x10]
sh.and.t %d1, %d15, 24, %d14, 0

# CHECK-INST: sh.and.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0x27,0xef,0x98,0x13]
sh.and.t %d1, %d15, 24, %d14, 7

# CHECK-INST: sh.and.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0x27,0xef,0x18,0x1c]
sh.and.t %d1, %d15, 24, %d14, 24

# CHECK-INST: sh.and.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0x27,0xef,0x98,0x1f]
sh.and.t %d1, %d15, 24, %d14, 31

# CHECK-INST: sh.and.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0x27,0xff,0x18,0x10]
sh.and.t %d1, %d15, 24, %d15, 0

# CHECK-INST: sh.and.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0x27,0xff,0x98,0x13]
sh.and.t %d1, %d15, 24, %d15, 7

# CHECK-INST: sh.and.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0x27,0xff,0x18,0x1c]
sh.and.t %d1, %d15, 24, %d15, 24

# CHECK-INST: sh.and.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0x27,0xff,0x98,0x1f]
sh.and.t %d1, %d15, 24, %d15, 31

# CHECK-INST: sh.and.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x1f,0x10]
sh.and.t %d1, %d15, 31, %d0, 0

# CHECK-INST: sh.and.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0x27,0x0f,0x9f,0x13]
sh.and.t %d1, %d15, 31, %d0, 7

# CHECK-INST: sh.and.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x1f,0x1c]
sh.and.t %d1, %d15, 31, %d0, 24

# CHECK-INST: sh.and.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0x27,0x0f,0x9f,0x1f]
sh.and.t %d1, %d15, 31, %d0, 31

# CHECK-INST: sh.and.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x1f,0x10]
sh.and.t %d1, %d15, 31, %d1, 0

# CHECK-INST: sh.and.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0x27,0x1f,0x9f,0x13]
sh.and.t %d1, %d15, 31, %d1, 7

# CHECK-INST: sh.and.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x1f,0x1c]
sh.and.t %d1, %d15, 31, %d1, 24

# CHECK-INST: sh.and.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0x27,0x1f,0x9f,0x1f]
sh.and.t %d1, %d15, 31, %d1, 31

# CHECK-INST: sh.and.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0x27,0xef,0x1f,0x10]
sh.and.t %d1, %d15, 31, %d14, 0

# CHECK-INST: sh.and.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0x27,0xef,0x9f,0x13]
sh.and.t %d1, %d15, 31, %d14, 7

# CHECK-INST: sh.and.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0x27,0xef,0x1f,0x1c]
sh.and.t %d1, %d15, 31, %d14, 24

# CHECK-INST: sh.and.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0x27,0xef,0x9f,0x1f]
sh.and.t %d1, %d15, 31, %d14, 31

# CHECK-INST: sh.and.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0x27,0xff,0x1f,0x10]
sh.and.t %d1, %d15, 31, %d15, 0

# CHECK-INST: sh.and.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0x27,0xff,0x9f,0x13]
sh.and.t %d1, %d15, 31, %d15, 7

# CHECK-INST: sh.and.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0x27,0xff,0x1f,0x1c]
sh.and.t %d1, %d15, 31, %d15, 24

# CHECK-INST: sh.and.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0x27,0xff,0x9f,0x1f]
sh.and.t %d1, %d15, 31, %d15, 31

# CHECK-INST: sh.and.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x00,0xe0]
sh.and.t %d14, %d0, 0, %d0, 0

# CHECK-INST: sh.and.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0x27,0x00,0x80,0xe3]
sh.and.t %d14, %d0, 0, %d0, 7

# CHECK-INST: sh.and.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0x27,0x00,0x00,0xec]
sh.and.t %d14, %d0, 0, %d0, 24

# CHECK-INST: sh.and.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0x27,0x00,0x80,0xef]
sh.and.t %d14, %d0, 0, %d0, 31

# CHECK-INST: sh.and.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0x27,0x10,0x00,0xe0]
sh.and.t %d14, %d0, 0, %d1, 0

# CHECK-INST: sh.and.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0x27,0x10,0x80,0xe3]
sh.and.t %d14, %d0, 0, %d1, 7

# CHECK-INST: sh.and.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0x27,0x10,0x00,0xec]
sh.and.t %d14, %d0, 0, %d1, 24

# CHECK-INST: sh.and.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0x27,0x10,0x80,0xef]
sh.and.t %d14, %d0, 0, %d1, 31

# CHECK-INST: sh.and.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x00,0xe0]
sh.and.t %d14, %d0, 0, %d14, 0

# CHECK-INST: sh.and.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0x27,0xe0,0x80,0xe3]
sh.and.t %d14, %d0, 0, %d14, 7

# CHECK-INST: sh.and.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x00,0xec]
sh.and.t %d14, %d0, 0, %d14, 24

# CHECK-INST: sh.and.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0x27,0xe0,0x80,0xef]
sh.and.t %d14, %d0, 0, %d14, 31

# CHECK-INST: sh.and.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x00,0xe0]
sh.and.t %d14, %d0, 0, %d15, 0

# CHECK-INST: sh.and.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0x27,0xf0,0x80,0xe3]
sh.and.t %d14, %d0, 0, %d15, 7

# CHECK-INST: sh.and.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x00,0xec]
sh.and.t %d14, %d0, 0, %d15, 24

# CHECK-INST: sh.and.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0x27,0xf0,0x80,0xef]
sh.and.t %d14, %d0, 0, %d15, 31

# CHECK-INST: sh.and.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0x27,0x00,0x07,0xe0]
sh.and.t %d14, %d0, 7, %d0, 0

# CHECK-INST: sh.and.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0x27,0x00,0x87,0xe3]
sh.and.t %d14, %d0, 7, %d0, 7

# CHECK-INST: sh.and.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0x27,0x00,0x07,0xec]
sh.and.t %d14, %d0, 7, %d0, 24

# CHECK-INST: sh.and.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0x27,0x00,0x87,0xef]
sh.and.t %d14, %d0, 7, %d0, 31

# CHECK-INST: sh.and.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0x27,0x10,0x07,0xe0]
sh.and.t %d14, %d0, 7, %d1, 0

# CHECK-INST: sh.and.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0x27,0x10,0x87,0xe3]
sh.and.t %d14, %d0, 7, %d1, 7

# CHECK-INST: sh.and.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0x27,0x10,0x07,0xec]
sh.and.t %d14, %d0, 7, %d1, 24

# CHECK-INST: sh.and.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0x27,0x10,0x87,0xef]
sh.and.t %d14, %d0, 7, %d1, 31

# CHECK-INST: sh.and.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x07,0xe0]
sh.and.t %d14, %d0, 7, %d14, 0

# CHECK-INST: sh.and.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0x27,0xe0,0x87,0xe3]
sh.and.t %d14, %d0, 7, %d14, 7

# CHECK-INST: sh.and.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x07,0xec]
sh.and.t %d14, %d0, 7, %d14, 24

# CHECK-INST: sh.and.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0x27,0xe0,0x87,0xef]
sh.and.t %d14, %d0, 7, %d14, 31

# CHECK-INST: sh.and.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x07,0xe0]
sh.and.t %d14, %d0, 7, %d15, 0

# CHECK-INST: sh.and.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0x27,0xf0,0x87,0xe3]
sh.and.t %d14, %d0, 7, %d15, 7

# CHECK-INST: sh.and.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x07,0xec]
sh.and.t %d14, %d0, 7, %d15, 24

# CHECK-INST: sh.and.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0x27,0xf0,0x87,0xef]
sh.and.t %d14, %d0, 7, %d15, 31

# CHECK-INST: sh.and.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0x27,0x00,0x18,0xe0]
sh.and.t %d14, %d0, 24, %d0, 0

# CHECK-INST: sh.and.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0x27,0x00,0x98,0xe3]
sh.and.t %d14, %d0, 24, %d0, 7

# CHECK-INST: sh.and.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0x27,0x00,0x18,0xec]
sh.and.t %d14, %d0, 24, %d0, 24

# CHECK-INST: sh.and.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0x27,0x00,0x98,0xef]
sh.and.t %d14, %d0, 24, %d0, 31

# CHECK-INST: sh.and.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0x27,0x10,0x18,0xe0]
sh.and.t %d14, %d0, 24, %d1, 0

# CHECK-INST: sh.and.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0x27,0x10,0x98,0xe3]
sh.and.t %d14, %d0, 24, %d1, 7

# CHECK-INST: sh.and.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0x27,0x10,0x18,0xec]
sh.and.t %d14, %d0, 24, %d1, 24

# CHECK-INST: sh.and.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0x27,0x10,0x98,0xef]
sh.and.t %d14, %d0, 24, %d1, 31

# CHECK-INST: sh.and.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x18,0xe0]
sh.and.t %d14, %d0, 24, %d14, 0

# CHECK-INST: sh.and.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0x27,0xe0,0x98,0xe3]
sh.and.t %d14, %d0, 24, %d14, 7

# CHECK-INST: sh.and.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x18,0xec]
sh.and.t %d14, %d0, 24, %d14, 24

# CHECK-INST: sh.and.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0x27,0xe0,0x98,0xef]
sh.and.t %d14, %d0, 24, %d14, 31

# CHECK-INST: sh.and.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x18,0xe0]
sh.and.t %d14, %d0, 24, %d15, 0

# CHECK-INST: sh.and.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0x27,0xf0,0x98,0xe3]
sh.and.t %d14, %d0, 24, %d15, 7

# CHECK-INST: sh.and.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x18,0xec]
sh.and.t %d14, %d0, 24, %d15, 24

# CHECK-INST: sh.and.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0x27,0xf0,0x98,0xef]
sh.and.t %d14, %d0, 24, %d15, 31

# CHECK-INST: sh.and.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0x27,0x00,0x1f,0xe0]
sh.and.t %d14, %d0, 31, %d0, 0

# CHECK-INST: sh.and.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0x27,0x00,0x9f,0xe3]
sh.and.t %d14, %d0, 31, %d0, 7

# CHECK-INST: sh.and.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0x27,0x00,0x1f,0xec]
sh.and.t %d14, %d0, 31, %d0, 24

# CHECK-INST: sh.and.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0x27,0x00,0x9f,0xef]
sh.and.t %d14, %d0, 31, %d0, 31

# CHECK-INST: sh.and.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0x27,0x10,0x1f,0xe0]
sh.and.t %d14, %d0, 31, %d1, 0

# CHECK-INST: sh.and.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0x27,0x10,0x9f,0xe3]
sh.and.t %d14, %d0, 31, %d1, 7

# CHECK-INST: sh.and.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0x27,0x10,0x1f,0xec]
sh.and.t %d14, %d0, 31, %d1, 24

# CHECK-INST: sh.and.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0x27,0x10,0x9f,0xef]
sh.and.t %d14, %d0, 31, %d1, 31

# CHECK-INST: sh.and.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x1f,0xe0]
sh.and.t %d14, %d0, 31, %d14, 0

# CHECK-INST: sh.and.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0x27,0xe0,0x9f,0xe3]
sh.and.t %d14, %d0, 31, %d14, 7

# CHECK-INST: sh.and.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x1f,0xec]
sh.and.t %d14, %d0, 31, %d14, 24

# CHECK-INST: sh.and.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0x27,0xe0,0x9f,0xef]
sh.and.t %d14, %d0, 31, %d14, 31

# CHECK-INST: sh.and.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x1f,0xe0]
sh.and.t %d14, %d0, 31, %d15, 0

# CHECK-INST: sh.and.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0x27,0xf0,0x9f,0xe3]
sh.and.t %d14, %d0, 31, %d15, 7

# CHECK-INST: sh.and.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x1f,0xec]
sh.and.t %d14, %d0, 31, %d15, 24

# CHECK-INST: sh.and.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0x27,0xf0,0x9f,0xef]
sh.and.t %d14, %d0, 31, %d15, 31

# CHECK-INST: sh.and.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0x27,0x01,0x00,0xe0]
sh.and.t %d14, %d1, 0, %d0, 0

# CHECK-INST: sh.and.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0x27,0x01,0x80,0xe3]
sh.and.t %d14, %d1, 0, %d0, 7

# CHECK-INST: sh.and.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0x27,0x01,0x00,0xec]
sh.and.t %d14, %d1, 0, %d0, 24

# CHECK-INST: sh.and.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0x27,0x01,0x80,0xef]
sh.and.t %d14, %d1, 0, %d0, 31

# CHECK-INST: sh.and.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0x27,0x11,0x00,0xe0]
sh.and.t %d14, %d1, 0, %d1, 0

# CHECK-INST: sh.and.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0x27,0x11,0x80,0xe3]
sh.and.t %d14, %d1, 0, %d1, 7

# CHECK-INST: sh.and.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0x27,0x11,0x00,0xec]
sh.and.t %d14, %d1, 0, %d1, 24

# CHECK-INST: sh.and.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0x27,0x11,0x80,0xef]
sh.and.t %d14, %d1, 0, %d1, 31

# CHECK-INST: sh.and.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x00,0xe0]
sh.and.t %d14, %d1, 0, %d14, 0

# CHECK-INST: sh.and.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0x27,0xe1,0x80,0xe3]
sh.and.t %d14, %d1, 0, %d14, 7

# CHECK-INST: sh.and.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x00,0xec]
sh.and.t %d14, %d1, 0, %d14, 24

# CHECK-INST: sh.and.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0x27,0xe1,0x80,0xef]
sh.and.t %d14, %d1, 0, %d14, 31

# CHECK-INST: sh.and.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x00,0xe0]
sh.and.t %d14, %d1, 0, %d15, 0

# CHECK-INST: sh.and.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0x27,0xf1,0x80,0xe3]
sh.and.t %d14, %d1, 0, %d15, 7

# CHECK-INST: sh.and.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x00,0xec]
sh.and.t %d14, %d1, 0, %d15, 24

# CHECK-INST: sh.and.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0x27,0xf1,0x80,0xef]
sh.and.t %d14, %d1, 0, %d15, 31

# CHECK-INST: sh.and.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0x27,0x01,0x07,0xe0]
sh.and.t %d14, %d1, 7, %d0, 0

# CHECK-INST: sh.and.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0x27,0x01,0x87,0xe3]
sh.and.t %d14, %d1, 7, %d0, 7

# CHECK-INST: sh.and.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0x27,0x01,0x07,0xec]
sh.and.t %d14, %d1, 7, %d0, 24

# CHECK-INST: sh.and.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0x27,0x01,0x87,0xef]
sh.and.t %d14, %d1, 7, %d0, 31

# CHECK-INST: sh.and.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0x27,0x11,0x07,0xe0]
sh.and.t %d14, %d1, 7, %d1, 0

# CHECK-INST: sh.and.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0x27,0x11,0x87,0xe3]
sh.and.t %d14, %d1, 7, %d1, 7

# CHECK-INST: sh.and.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0x27,0x11,0x07,0xec]
sh.and.t %d14, %d1, 7, %d1, 24

# CHECK-INST: sh.and.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0x27,0x11,0x87,0xef]
sh.and.t %d14, %d1, 7, %d1, 31

# CHECK-INST: sh.and.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x07,0xe0]
sh.and.t %d14, %d1, 7, %d14, 0

# CHECK-INST: sh.and.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0x27,0xe1,0x87,0xe3]
sh.and.t %d14, %d1, 7, %d14, 7

# CHECK-INST: sh.and.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x07,0xec]
sh.and.t %d14, %d1, 7, %d14, 24

# CHECK-INST: sh.and.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0x27,0xe1,0x87,0xef]
sh.and.t %d14, %d1, 7, %d14, 31

# CHECK-INST: sh.and.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x07,0xe0]
sh.and.t %d14, %d1, 7, %d15, 0

# CHECK-INST: sh.and.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0x27,0xf1,0x87,0xe3]
sh.and.t %d14, %d1, 7, %d15, 7

# CHECK-INST: sh.and.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x07,0xec]
sh.and.t %d14, %d1, 7, %d15, 24

# CHECK-INST: sh.and.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0x27,0xf1,0x87,0xef]
sh.and.t %d14, %d1, 7, %d15, 31

# CHECK-INST: sh.and.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0x27,0x01,0x18,0xe0]
sh.and.t %d14, %d1, 24, %d0, 0

# CHECK-INST: sh.and.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0x27,0x01,0x98,0xe3]
sh.and.t %d14, %d1, 24, %d0, 7

# CHECK-INST: sh.and.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0x27,0x01,0x18,0xec]
sh.and.t %d14, %d1, 24, %d0, 24

# CHECK-INST: sh.and.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0x27,0x01,0x98,0xef]
sh.and.t %d14, %d1, 24, %d0, 31

# CHECK-INST: sh.and.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0x27,0x11,0x18,0xe0]
sh.and.t %d14, %d1, 24, %d1, 0

# CHECK-INST: sh.and.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0x27,0x11,0x98,0xe3]
sh.and.t %d14, %d1, 24, %d1, 7

# CHECK-INST: sh.and.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0x27,0x11,0x18,0xec]
sh.and.t %d14, %d1, 24, %d1, 24

# CHECK-INST: sh.and.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0x27,0x11,0x98,0xef]
sh.and.t %d14, %d1, 24, %d1, 31

# CHECK-INST: sh.and.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x18,0xe0]
sh.and.t %d14, %d1, 24, %d14, 0

# CHECK-INST: sh.and.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0x27,0xe1,0x98,0xe3]
sh.and.t %d14, %d1, 24, %d14, 7

# CHECK-INST: sh.and.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x18,0xec]
sh.and.t %d14, %d1, 24, %d14, 24

# CHECK-INST: sh.and.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0x27,0xe1,0x98,0xef]
sh.and.t %d14, %d1, 24, %d14, 31

# CHECK-INST: sh.and.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x18,0xe0]
sh.and.t %d14, %d1, 24, %d15, 0

# CHECK-INST: sh.and.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0x27,0xf1,0x98,0xe3]
sh.and.t %d14, %d1, 24, %d15, 7

# CHECK-INST: sh.and.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x18,0xec]
sh.and.t %d14, %d1, 24, %d15, 24

# CHECK-INST: sh.and.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0x27,0xf1,0x98,0xef]
sh.and.t %d14, %d1, 24, %d15, 31

# CHECK-INST: sh.and.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0x27,0x01,0x1f,0xe0]
sh.and.t %d14, %d1, 31, %d0, 0

# CHECK-INST: sh.and.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0x27,0x01,0x9f,0xe3]
sh.and.t %d14, %d1, 31, %d0, 7

# CHECK-INST: sh.and.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0x27,0x01,0x1f,0xec]
sh.and.t %d14, %d1, 31, %d0, 24

# CHECK-INST: sh.and.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0x27,0x01,0x9f,0xef]
sh.and.t %d14, %d1, 31, %d0, 31

# CHECK-INST: sh.and.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0x27,0x11,0x1f,0xe0]
sh.and.t %d14, %d1, 31, %d1, 0

# CHECK-INST: sh.and.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0x27,0x11,0x9f,0xe3]
sh.and.t %d14, %d1, 31, %d1, 7

# CHECK-INST: sh.and.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0x27,0x11,0x1f,0xec]
sh.and.t %d14, %d1, 31, %d1, 24

# CHECK-INST: sh.and.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0x27,0x11,0x9f,0xef]
sh.and.t %d14, %d1, 31, %d1, 31

# CHECK-INST: sh.and.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x1f,0xe0]
sh.and.t %d14, %d1, 31, %d14, 0

# CHECK-INST: sh.and.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0x27,0xe1,0x9f,0xe3]
sh.and.t %d14, %d1, 31, %d14, 7

# CHECK-INST: sh.and.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x1f,0xec]
sh.and.t %d14, %d1, 31, %d14, 24

# CHECK-INST: sh.and.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0x27,0xe1,0x9f,0xef]
sh.and.t %d14, %d1, 31, %d14, 31

# CHECK-INST: sh.and.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x1f,0xe0]
sh.and.t %d14, %d1, 31, %d15, 0

# CHECK-INST: sh.and.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0x27,0xf1,0x9f,0xe3]
sh.and.t %d14, %d1, 31, %d15, 7

# CHECK-INST: sh.and.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x1f,0xec]
sh.and.t %d14, %d1, 31, %d15, 24

# CHECK-INST: sh.and.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0x27,0xf1,0x9f,0xef]
sh.and.t %d14, %d1, 31, %d15, 31

# CHECK-INST: sh.and.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x00,0xe0]
sh.and.t %d14, %d14, 0, %d0, 0

# CHECK-INST: sh.and.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0x27,0x0e,0x80,0xe3]
sh.and.t %d14, %d14, 0, %d0, 7

# CHECK-INST: sh.and.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x00,0xec]
sh.and.t %d14, %d14, 0, %d0, 24

# CHECK-INST: sh.and.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0x27,0x0e,0x80,0xef]
sh.and.t %d14, %d14, 0, %d0, 31

# CHECK-INST: sh.and.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x00,0xe0]
sh.and.t %d14, %d14, 0, %d1, 0

# CHECK-INST: sh.and.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0x27,0x1e,0x80,0xe3]
sh.and.t %d14, %d14, 0, %d1, 7

# CHECK-INST: sh.and.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x00,0xec]
sh.and.t %d14, %d14, 0, %d1, 24

# CHECK-INST: sh.and.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0x27,0x1e,0x80,0xef]
sh.and.t %d14, %d14, 0, %d1, 31

# CHECK-INST: sh.and.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0x27,0xee,0x00,0xe0]
sh.and.t %d14, %d14, 0, %d14, 0

# CHECK-INST: sh.and.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0x27,0xee,0x80,0xe3]
sh.and.t %d14, %d14, 0, %d14, 7

# CHECK-INST: sh.and.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0x27,0xee,0x00,0xec]
sh.and.t %d14, %d14, 0, %d14, 24

# CHECK-INST: sh.and.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0x27,0xee,0x80,0xef]
sh.and.t %d14, %d14, 0, %d14, 31

# CHECK-INST: sh.and.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x00,0xe0]
sh.and.t %d14, %d14, 0, %d15, 0

# CHECK-INST: sh.and.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0x27,0xfe,0x80,0xe3]
sh.and.t %d14, %d14, 0, %d15, 7

# CHECK-INST: sh.and.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x00,0xec]
sh.and.t %d14, %d14, 0, %d15, 24

# CHECK-INST: sh.and.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0x27,0xfe,0x80,0xef]
sh.and.t %d14, %d14, 0, %d15, 31

# CHECK-INST: sh.and.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x07,0xe0]
sh.and.t %d14, %d14, 7, %d0, 0

# CHECK-INST: sh.and.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0x27,0x0e,0x87,0xe3]
sh.and.t %d14, %d14, 7, %d0, 7

# CHECK-INST: sh.and.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x07,0xec]
sh.and.t %d14, %d14, 7, %d0, 24

# CHECK-INST: sh.and.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0x27,0x0e,0x87,0xef]
sh.and.t %d14, %d14, 7, %d0, 31

# CHECK-INST: sh.and.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x07,0xe0]
sh.and.t %d14, %d14, 7, %d1, 0

# CHECK-INST: sh.and.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0x27,0x1e,0x87,0xe3]
sh.and.t %d14, %d14, 7, %d1, 7

# CHECK-INST: sh.and.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x07,0xec]
sh.and.t %d14, %d14, 7, %d1, 24

# CHECK-INST: sh.and.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0x27,0x1e,0x87,0xef]
sh.and.t %d14, %d14, 7, %d1, 31

# CHECK-INST: sh.and.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0x27,0xee,0x07,0xe0]
sh.and.t %d14, %d14, 7, %d14, 0

# CHECK-INST: sh.and.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0x27,0xee,0x87,0xe3]
sh.and.t %d14, %d14, 7, %d14, 7

# CHECK-INST: sh.and.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0x27,0xee,0x07,0xec]
sh.and.t %d14, %d14, 7, %d14, 24

# CHECK-INST: sh.and.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0x27,0xee,0x87,0xef]
sh.and.t %d14, %d14, 7, %d14, 31

# CHECK-INST: sh.and.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x07,0xe0]
sh.and.t %d14, %d14, 7, %d15, 0

# CHECK-INST: sh.and.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0x27,0xfe,0x87,0xe3]
sh.and.t %d14, %d14, 7, %d15, 7

# CHECK-INST: sh.and.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x07,0xec]
sh.and.t %d14, %d14, 7, %d15, 24

# CHECK-INST: sh.and.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0x27,0xfe,0x87,0xef]
sh.and.t %d14, %d14, 7, %d15, 31

# CHECK-INST: sh.and.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x18,0xe0]
sh.and.t %d14, %d14, 24, %d0, 0

# CHECK-INST: sh.and.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0x27,0x0e,0x98,0xe3]
sh.and.t %d14, %d14, 24, %d0, 7

# CHECK-INST: sh.and.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x18,0xec]
sh.and.t %d14, %d14, 24, %d0, 24

# CHECK-INST: sh.and.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0x27,0x0e,0x98,0xef]
sh.and.t %d14, %d14, 24, %d0, 31

# CHECK-INST: sh.and.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x18,0xe0]
sh.and.t %d14, %d14, 24, %d1, 0

# CHECK-INST: sh.and.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0x27,0x1e,0x98,0xe3]
sh.and.t %d14, %d14, 24, %d1, 7

# CHECK-INST: sh.and.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x18,0xec]
sh.and.t %d14, %d14, 24, %d1, 24

# CHECK-INST: sh.and.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0x27,0x1e,0x98,0xef]
sh.and.t %d14, %d14, 24, %d1, 31

# CHECK-INST: sh.and.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0x27,0xee,0x18,0xe0]
sh.and.t %d14, %d14, 24, %d14, 0

# CHECK-INST: sh.and.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0x27,0xee,0x98,0xe3]
sh.and.t %d14, %d14, 24, %d14, 7

# CHECK-INST: sh.and.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0x27,0xee,0x18,0xec]
sh.and.t %d14, %d14, 24, %d14, 24

# CHECK-INST: sh.and.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0x27,0xee,0x98,0xef]
sh.and.t %d14, %d14, 24, %d14, 31

# CHECK-INST: sh.and.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x18,0xe0]
sh.and.t %d14, %d14, 24, %d15, 0

# CHECK-INST: sh.and.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0x27,0xfe,0x98,0xe3]
sh.and.t %d14, %d14, 24, %d15, 7

# CHECK-INST: sh.and.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x18,0xec]
sh.and.t %d14, %d14, 24, %d15, 24

# CHECK-INST: sh.and.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0x27,0xfe,0x98,0xef]
sh.and.t %d14, %d14, 24, %d15, 31

# CHECK-INST: sh.and.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x1f,0xe0]
sh.and.t %d14, %d14, 31, %d0, 0

# CHECK-INST: sh.and.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0x27,0x0e,0x9f,0xe3]
sh.and.t %d14, %d14, 31, %d0, 7

# CHECK-INST: sh.and.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x1f,0xec]
sh.and.t %d14, %d14, 31, %d0, 24

# CHECK-INST: sh.and.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0x27,0x0e,0x9f,0xef]
sh.and.t %d14, %d14, 31, %d0, 31

# CHECK-INST: sh.and.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x1f,0xe0]
sh.and.t %d14, %d14, 31, %d1, 0

# CHECK-INST: sh.and.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0x27,0x1e,0x9f,0xe3]
sh.and.t %d14, %d14, 31, %d1, 7

# CHECK-INST: sh.and.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x1f,0xec]
sh.and.t %d14, %d14, 31, %d1, 24

# CHECK-INST: sh.and.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0x27,0x1e,0x9f,0xef]
sh.and.t %d14, %d14, 31, %d1, 31

# CHECK-INST: sh.and.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0x27,0xee,0x1f,0xe0]
sh.and.t %d14, %d14, 31, %d14, 0

# CHECK-INST: sh.and.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0x27,0xee,0x9f,0xe3]
sh.and.t %d14, %d14, 31, %d14, 7

# CHECK-INST: sh.and.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0x27,0xee,0x1f,0xec]
sh.and.t %d14, %d14, 31, %d14, 24

# CHECK-INST: sh.and.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0x27,0xee,0x9f,0xef]
sh.and.t %d14, %d14, 31, %d14, 31

# CHECK-INST: sh.and.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x1f,0xe0]
sh.and.t %d14, %d14, 31, %d15, 0

# CHECK-INST: sh.and.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0x27,0xfe,0x9f,0xe3]
sh.and.t %d14, %d14, 31, %d15, 7

# CHECK-INST: sh.and.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x1f,0xec]
sh.and.t %d14, %d14, 31, %d15, 24

# CHECK-INST: sh.and.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0x27,0xfe,0x9f,0xef]
sh.and.t %d14, %d14, 31, %d15, 31

# CHECK-INST: sh.and.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x00,0xe0]
sh.and.t %d14, %d15, 0, %d0, 0

# CHECK-INST: sh.and.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0x27,0x0f,0x80,0xe3]
sh.and.t %d14, %d15, 0, %d0, 7

# CHECK-INST: sh.and.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x00,0xec]
sh.and.t %d14, %d15, 0, %d0, 24

# CHECK-INST: sh.and.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0x27,0x0f,0x80,0xef]
sh.and.t %d14, %d15, 0, %d0, 31

# CHECK-INST: sh.and.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x00,0xe0]
sh.and.t %d14, %d15, 0, %d1, 0

# CHECK-INST: sh.and.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0x27,0x1f,0x80,0xe3]
sh.and.t %d14, %d15, 0, %d1, 7

# CHECK-INST: sh.and.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x00,0xec]
sh.and.t %d14, %d15, 0, %d1, 24

# CHECK-INST: sh.and.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0x27,0x1f,0x80,0xef]
sh.and.t %d14, %d15, 0, %d1, 31

# CHECK-INST: sh.and.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0x27,0xef,0x00,0xe0]
sh.and.t %d14, %d15, 0, %d14, 0

# CHECK-INST: sh.and.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0x27,0xef,0x80,0xe3]
sh.and.t %d14, %d15, 0, %d14, 7

# CHECK-INST: sh.and.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0x27,0xef,0x00,0xec]
sh.and.t %d14, %d15, 0, %d14, 24

# CHECK-INST: sh.and.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0x27,0xef,0x80,0xef]
sh.and.t %d14, %d15, 0, %d14, 31

# CHECK-INST: sh.and.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0x27,0xff,0x00,0xe0]
sh.and.t %d14, %d15, 0, %d15, 0

# CHECK-INST: sh.and.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0x27,0xff,0x80,0xe3]
sh.and.t %d14, %d15, 0, %d15, 7

# CHECK-INST: sh.and.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0x27,0xff,0x00,0xec]
sh.and.t %d14, %d15, 0, %d15, 24

# CHECK-INST: sh.and.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0x27,0xff,0x80,0xef]
sh.and.t %d14, %d15, 0, %d15, 31

# CHECK-INST: sh.and.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x07,0xe0]
sh.and.t %d14, %d15, 7, %d0, 0

# CHECK-INST: sh.and.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0x27,0x0f,0x87,0xe3]
sh.and.t %d14, %d15, 7, %d0, 7

# CHECK-INST: sh.and.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x07,0xec]
sh.and.t %d14, %d15, 7, %d0, 24

# CHECK-INST: sh.and.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0x27,0x0f,0x87,0xef]
sh.and.t %d14, %d15, 7, %d0, 31

# CHECK-INST: sh.and.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x07,0xe0]
sh.and.t %d14, %d15, 7, %d1, 0

# CHECK-INST: sh.and.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0x27,0x1f,0x87,0xe3]
sh.and.t %d14, %d15, 7, %d1, 7

# CHECK-INST: sh.and.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x07,0xec]
sh.and.t %d14, %d15, 7, %d1, 24

# CHECK-INST: sh.and.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0x27,0x1f,0x87,0xef]
sh.and.t %d14, %d15, 7, %d1, 31

# CHECK-INST: sh.and.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0x27,0xef,0x07,0xe0]
sh.and.t %d14, %d15, 7, %d14, 0

# CHECK-INST: sh.and.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0x27,0xef,0x87,0xe3]
sh.and.t %d14, %d15, 7, %d14, 7

# CHECK-INST: sh.and.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0x27,0xef,0x07,0xec]
sh.and.t %d14, %d15, 7, %d14, 24

# CHECK-INST: sh.and.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0x27,0xef,0x87,0xef]
sh.and.t %d14, %d15, 7, %d14, 31

# CHECK-INST: sh.and.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0x27,0xff,0x07,0xe0]
sh.and.t %d14, %d15, 7, %d15, 0

# CHECK-INST: sh.and.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0x27,0xff,0x87,0xe3]
sh.and.t %d14, %d15, 7, %d15, 7

# CHECK-INST: sh.and.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0x27,0xff,0x07,0xec]
sh.and.t %d14, %d15, 7, %d15, 24

# CHECK-INST: sh.and.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0x27,0xff,0x87,0xef]
sh.and.t %d14, %d15, 7, %d15, 31

# CHECK-INST: sh.and.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x18,0xe0]
sh.and.t %d14, %d15, 24, %d0, 0

# CHECK-INST: sh.and.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0x27,0x0f,0x98,0xe3]
sh.and.t %d14, %d15, 24, %d0, 7

# CHECK-INST: sh.and.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x18,0xec]
sh.and.t %d14, %d15, 24, %d0, 24

# CHECK-INST: sh.and.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0x27,0x0f,0x98,0xef]
sh.and.t %d14, %d15, 24, %d0, 31

# CHECK-INST: sh.and.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x18,0xe0]
sh.and.t %d14, %d15, 24, %d1, 0

# CHECK-INST: sh.and.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0x27,0x1f,0x98,0xe3]
sh.and.t %d14, %d15, 24, %d1, 7

# CHECK-INST: sh.and.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x18,0xec]
sh.and.t %d14, %d15, 24, %d1, 24

# CHECK-INST: sh.and.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0x27,0x1f,0x98,0xef]
sh.and.t %d14, %d15, 24, %d1, 31

# CHECK-INST: sh.and.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0x27,0xef,0x18,0xe0]
sh.and.t %d14, %d15, 24, %d14, 0

# CHECK-INST: sh.and.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0x27,0xef,0x98,0xe3]
sh.and.t %d14, %d15, 24, %d14, 7

# CHECK-INST: sh.and.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0x27,0xef,0x18,0xec]
sh.and.t %d14, %d15, 24, %d14, 24

# CHECK-INST: sh.and.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0x27,0xef,0x98,0xef]
sh.and.t %d14, %d15, 24, %d14, 31

# CHECK-INST: sh.and.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0x27,0xff,0x18,0xe0]
sh.and.t %d14, %d15, 24, %d15, 0

# CHECK-INST: sh.and.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0x27,0xff,0x98,0xe3]
sh.and.t %d14, %d15, 24, %d15, 7

# CHECK-INST: sh.and.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0x27,0xff,0x18,0xec]
sh.and.t %d14, %d15, 24, %d15, 24

# CHECK-INST: sh.and.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0x27,0xff,0x98,0xef]
sh.and.t %d14, %d15, 24, %d15, 31

# CHECK-INST: sh.and.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x1f,0xe0]
sh.and.t %d14, %d15, 31, %d0, 0

# CHECK-INST: sh.and.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0x27,0x0f,0x9f,0xe3]
sh.and.t %d14, %d15, 31, %d0, 7

# CHECK-INST: sh.and.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x1f,0xec]
sh.and.t %d14, %d15, 31, %d0, 24

# CHECK-INST: sh.and.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0x27,0x0f,0x9f,0xef]
sh.and.t %d14, %d15, 31, %d0, 31

# CHECK-INST: sh.and.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x1f,0xe0]
sh.and.t %d14, %d15, 31, %d1, 0

# CHECK-INST: sh.and.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0x27,0x1f,0x9f,0xe3]
sh.and.t %d14, %d15, 31, %d1, 7

# CHECK-INST: sh.and.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x1f,0xec]
sh.and.t %d14, %d15, 31, %d1, 24

# CHECK-INST: sh.and.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0x27,0x1f,0x9f,0xef]
sh.and.t %d14, %d15, 31, %d1, 31

# CHECK-INST: sh.and.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0x27,0xef,0x1f,0xe0]
sh.and.t %d14, %d15, 31, %d14, 0

# CHECK-INST: sh.and.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0x27,0xef,0x9f,0xe3]
sh.and.t %d14, %d15, 31, %d14, 7

# CHECK-INST: sh.and.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0x27,0xef,0x1f,0xec]
sh.and.t %d14, %d15, 31, %d14, 24

# CHECK-INST: sh.and.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0x27,0xef,0x9f,0xef]
sh.and.t %d14, %d15, 31, %d14, 31

# CHECK-INST: sh.and.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0x27,0xff,0x1f,0xe0]
sh.and.t %d14, %d15, 31, %d15, 0

# CHECK-INST: sh.and.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0x27,0xff,0x9f,0xe3]
sh.and.t %d14, %d15, 31, %d15, 7

# CHECK-INST: sh.and.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0x27,0xff,0x1f,0xec]
sh.and.t %d14, %d15, 31, %d15, 24

# CHECK-INST: sh.and.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0x27,0xff,0x9f,0xef]
sh.and.t %d14, %d15, 31, %d15, 31

# CHECK-INST: sh.and.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x00,0xf0]
sh.and.t %d15, %d0, 0, %d0, 0

# CHECK-INST: sh.and.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0x27,0x00,0x80,0xf3]
sh.and.t %d15, %d0, 0, %d0, 7

# CHECK-INST: sh.and.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0x27,0x00,0x00,0xfc]
sh.and.t %d15, %d0, 0, %d0, 24

# CHECK-INST: sh.and.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0x27,0x00,0x80,0xff]
sh.and.t %d15, %d0, 0, %d0, 31

# CHECK-INST: sh.and.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0x27,0x10,0x00,0xf0]
sh.and.t %d15, %d0, 0, %d1, 0

# CHECK-INST: sh.and.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0x27,0x10,0x80,0xf3]
sh.and.t %d15, %d0, 0, %d1, 7

# CHECK-INST: sh.and.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0x27,0x10,0x00,0xfc]
sh.and.t %d15, %d0, 0, %d1, 24

# CHECK-INST: sh.and.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0x27,0x10,0x80,0xff]
sh.and.t %d15, %d0, 0, %d1, 31

# CHECK-INST: sh.and.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x00,0xf0]
sh.and.t %d15, %d0, 0, %d14, 0

# CHECK-INST: sh.and.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0x27,0xe0,0x80,0xf3]
sh.and.t %d15, %d0, 0, %d14, 7

# CHECK-INST: sh.and.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x00,0xfc]
sh.and.t %d15, %d0, 0, %d14, 24

# CHECK-INST: sh.and.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0x27,0xe0,0x80,0xff]
sh.and.t %d15, %d0, 0, %d14, 31

# CHECK-INST: sh.and.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x00,0xf0]
sh.and.t %d15, %d0, 0, %d15, 0

# CHECK-INST: sh.and.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0x27,0xf0,0x80,0xf3]
sh.and.t %d15, %d0, 0, %d15, 7

# CHECK-INST: sh.and.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x00,0xfc]
sh.and.t %d15, %d0, 0, %d15, 24

# CHECK-INST: sh.and.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0x27,0xf0,0x80,0xff]
sh.and.t %d15, %d0, 0, %d15, 31

# CHECK-INST: sh.and.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0x27,0x00,0x07,0xf0]
sh.and.t %d15, %d0, 7, %d0, 0

# CHECK-INST: sh.and.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0x27,0x00,0x87,0xf3]
sh.and.t %d15, %d0, 7, %d0, 7

# CHECK-INST: sh.and.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0x27,0x00,0x07,0xfc]
sh.and.t %d15, %d0, 7, %d0, 24

# CHECK-INST: sh.and.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0x27,0x00,0x87,0xff]
sh.and.t %d15, %d0, 7, %d0, 31

# CHECK-INST: sh.and.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0x27,0x10,0x07,0xf0]
sh.and.t %d15, %d0, 7, %d1, 0

# CHECK-INST: sh.and.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0x27,0x10,0x87,0xf3]
sh.and.t %d15, %d0, 7, %d1, 7

# CHECK-INST: sh.and.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0x27,0x10,0x07,0xfc]
sh.and.t %d15, %d0, 7, %d1, 24

# CHECK-INST: sh.and.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0x27,0x10,0x87,0xff]
sh.and.t %d15, %d0, 7, %d1, 31

# CHECK-INST: sh.and.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x07,0xf0]
sh.and.t %d15, %d0, 7, %d14, 0

# CHECK-INST: sh.and.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0x27,0xe0,0x87,0xf3]
sh.and.t %d15, %d0, 7, %d14, 7

# CHECK-INST: sh.and.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x07,0xfc]
sh.and.t %d15, %d0, 7, %d14, 24

# CHECK-INST: sh.and.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0x27,0xe0,0x87,0xff]
sh.and.t %d15, %d0, 7, %d14, 31

# CHECK-INST: sh.and.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x07,0xf0]
sh.and.t %d15, %d0, 7, %d15, 0

# CHECK-INST: sh.and.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0x27,0xf0,0x87,0xf3]
sh.and.t %d15, %d0, 7, %d15, 7

# CHECK-INST: sh.and.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x07,0xfc]
sh.and.t %d15, %d0, 7, %d15, 24

# CHECK-INST: sh.and.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0x27,0xf0,0x87,0xff]
sh.and.t %d15, %d0, 7, %d15, 31

# CHECK-INST: sh.and.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0x27,0x00,0x18,0xf0]
sh.and.t %d15, %d0, 24, %d0, 0

# CHECK-INST: sh.and.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0x27,0x00,0x98,0xf3]
sh.and.t %d15, %d0, 24, %d0, 7

# CHECK-INST: sh.and.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0x27,0x00,0x18,0xfc]
sh.and.t %d15, %d0, 24, %d0, 24

# CHECK-INST: sh.and.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0x27,0x00,0x98,0xff]
sh.and.t %d15, %d0, 24, %d0, 31

# CHECK-INST: sh.and.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0x27,0x10,0x18,0xf0]
sh.and.t %d15, %d0, 24, %d1, 0

# CHECK-INST: sh.and.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0x27,0x10,0x98,0xf3]
sh.and.t %d15, %d0, 24, %d1, 7

# CHECK-INST: sh.and.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0x27,0x10,0x18,0xfc]
sh.and.t %d15, %d0, 24, %d1, 24

# CHECK-INST: sh.and.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0x27,0x10,0x98,0xff]
sh.and.t %d15, %d0, 24, %d1, 31

# CHECK-INST: sh.and.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x18,0xf0]
sh.and.t %d15, %d0, 24, %d14, 0

# CHECK-INST: sh.and.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0x27,0xe0,0x98,0xf3]
sh.and.t %d15, %d0, 24, %d14, 7

# CHECK-INST: sh.and.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x18,0xfc]
sh.and.t %d15, %d0, 24, %d14, 24

# CHECK-INST: sh.and.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0x27,0xe0,0x98,0xff]
sh.and.t %d15, %d0, 24, %d14, 31

# CHECK-INST: sh.and.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x18,0xf0]
sh.and.t %d15, %d0, 24, %d15, 0

# CHECK-INST: sh.and.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0x27,0xf0,0x98,0xf3]
sh.and.t %d15, %d0, 24, %d15, 7

# CHECK-INST: sh.and.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x18,0xfc]
sh.and.t %d15, %d0, 24, %d15, 24

# CHECK-INST: sh.and.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0x27,0xf0,0x98,0xff]
sh.and.t %d15, %d0, 24, %d15, 31

# CHECK-INST: sh.and.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0x27,0x00,0x1f,0xf0]
sh.and.t %d15, %d0, 31, %d0, 0

# CHECK-INST: sh.and.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0x27,0x00,0x9f,0xf3]
sh.and.t %d15, %d0, 31, %d0, 7

# CHECK-INST: sh.and.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0x27,0x00,0x1f,0xfc]
sh.and.t %d15, %d0, 31, %d0, 24

# CHECK-INST: sh.and.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0x27,0x00,0x9f,0xff]
sh.and.t %d15, %d0, 31, %d0, 31

# CHECK-INST: sh.and.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0x27,0x10,0x1f,0xf0]
sh.and.t %d15, %d0, 31, %d1, 0

# CHECK-INST: sh.and.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0x27,0x10,0x9f,0xf3]
sh.and.t %d15, %d0, 31, %d1, 7

# CHECK-INST: sh.and.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0x27,0x10,0x1f,0xfc]
sh.and.t %d15, %d0, 31, %d1, 24

# CHECK-INST: sh.and.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0x27,0x10,0x9f,0xff]
sh.and.t %d15, %d0, 31, %d1, 31

# CHECK-INST: sh.and.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x1f,0xf0]
sh.and.t %d15, %d0, 31, %d14, 0

# CHECK-INST: sh.and.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0x27,0xe0,0x9f,0xf3]
sh.and.t %d15, %d0, 31, %d14, 7

# CHECK-INST: sh.and.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x1f,0xfc]
sh.and.t %d15, %d0, 31, %d14, 24

# CHECK-INST: sh.and.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0x27,0xe0,0x9f,0xff]
sh.and.t %d15, %d0, 31, %d14, 31

# CHECK-INST: sh.and.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x1f,0xf0]
sh.and.t %d15, %d0, 31, %d15, 0

# CHECK-INST: sh.and.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0x27,0xf0,0x9f,0xf3]
sh.and.t %d15, %d0, 31, %d15, 7

# CHECK-INST: sh.and.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x1f,0xfc]
sh.and.t %d15, %d0, 31, %d15, 24

# CHECK-INST: sh.and.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0x27,0xf0,0x9f,0xff]
sh.and.t %d15, %d0, 31, %d15, 31

# CHECK-INST: sh.and.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0x27,0x01,0x00,0xf0]
sh.and.t %d15, %d1, 0, %d0, 0

# CHECK-INST: sh.and.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0x27,0x01,0x80,0xf3]
sh.and.t %d15, %d1, 0, %d0, 7

# CHECK-INST: sh.and.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0x27,0x01,0x00,0xfc]
sh.and.t %d15, %d1, 0, %d0, 24

# CHECK-INST: sh.and.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0x27,0x01,0x80,0xff]
sh.and.t %d15, %d1, 0, %d0, 31

# CHECK-INST: sh.and.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0x27,0x11,0x00,0xf0]
sh.and.t %d15, %d1, 0, %d1, 0

# CHECK-INST: sh.and.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0x27,0x11,0x80,0xf3]
sh.and.t %d15, %d1, 0, %d1, 7

# CHECK-INST: sh.and.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0x27,0x11,0x00,0xfc]
sh.and.t %d15, %d1, 0, %d1, 24

# CHECK-INST: sh.and.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0x27,0x11,0x80,0xff]
sh.and.t %d15, %d1, 0, %d1, 31

# CHECK-INST: sh.and.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x00,0xf0]
sh.and.t %d15, %d1, 0, %d14, 0

# CHECK-INST: sh.and.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0x27,0xe1,0x80,0xf3]
sh.and.t %d15, %d1, 0, %d14, 7

# CHECK-INST: sh.and.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x00,0xfc]
sh.and.t %d15, %d1, 0, %d14, 24

# CHECK-INST: sh.and.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0x27,0xe1,0x80,0xff]
sh.and.t %d15, %d1, 0, %d14, 31

# CHECK-INST: sh.and.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x00,0xf0]
sh.and.t %d15, %d1, 0, %d15, 0

# CHECK-INST: sh.and.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0x27,0xf1,0x80,0xf3]
sh.and.t %d15, %d1, 0, %d15, 7

# CHECK-INST: sh.and.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x00,0xfc]
sh.and.t %d15, %d1, 0, %d15, 24

# CHECK-INST: sh.and.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0x27,0xf1,0x80,0xff]
sh.and.t %d15, %d1, 0, %d15, 31

# CHECK-INST: sh.and.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0x27,0x01,0x07,0xf0]
sh.and.t %d15, %d1, 7, %d0, 0

# CHECK-INST: sh.and.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0x27,0x01,0x87,0xf3]
sh.and.t %d15, %d1, 7, %d0, 7

# CHECK-INST: sh.and.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0x27,0x01,0x07,0xfc]
sh.and.t %d15, %d1, 7, %d0, 24

# CHECK-INST: sh.and.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0x27,0x01,0x87,0xff]
sh.and.t %d15, %d1, 7, %d0, 31

# CHECK-INST: sh.and.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0x27,0x11,0x07,0xf0]
sh.and.t %d15, %d1, 7, %d1, 0

# CHECK-INST: sh.and.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0x27,0x11,0x87,0xf3]
sh.and.t %d15, %d1, 7, %d1, 7

# CHECK-INST: sh.and.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0x27,0x11,0x07,0xfc]
sh.and.t %d15, %d1, 7, %d1, 24

# CHECK-INST: sh.and.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0x27,0x11,0x87,0xff]
sh.and.t %d15, %d1, 7, %d1, 31

# CHECK-INST: sh.and.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x07,0xf0]
sh.and.t %d15, %d1, 7, %d14, 0

# CHECK-INST: sh.and.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0x27,0xe1,0x87,0xf3]
sh.and.t %d15, %d1, 7, %d14, 7

# CHECK-INST: sh.and.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x07,0xfc]
sh.and.t %d15, %d1, 7, %d14, 24

# CHECK-INST: sh.and.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0x27,0xe1,0x87,0xff]
sh.and.t %d15, %d1, 7, %d14, 31

# CHECK-INST: sh.and.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x07,0xf0]
sh.and.t %d15, %d1, 7, %d15, 0

# CHECK-INST: sh.and.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0x27,0xf1,0x87,0xf3]
sh.and.t %d15, %d1, 7, %d15, 7

# CHECK-INST: sh.and.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x07,0xfc]
sh.and.t %d15, %d1, 7, %d15, 24

# CHECK-INST: sh.and.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0x27,0xf1,0x87,0xff]
sh.and.t %d15, %d1, 7, %d15, 31

# CHECK-INST: sh.and.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0x27,0x01,0x18,0xf0]
sh.and.t %d15, %d1, 24, %d0, 0

# CHECK-INST: sh.and.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0x27,0x01,0x98,0xf3]
sh.and.t %d15, %d1, 24, %d0, 7

# CHECK-INST: sh.and.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0x27,0x01,0x18,0xfc]
sh.and.t %d15, %d1, 24, %d0, 24

# CHECK-INST: sh.and.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0x27,0x01,0x98,0xff]
sh.and.t %d15, %d1, 24, %d0, 31

# CHECK-INST: sh.and.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0x27,0x11,0x18,0xf0]
sh.and.t %d15, %d1, 24, %d1, 0

# CHECK-INST: sh.and.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0x27,0x11,0x98,0xf3]
sh.and.t %d15, %d1, 24, %d1, 7

# CHECK-INST: sh.and.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0x27,0x11,0x18,0xfc]
sh.and.t %d15, %d1, 24, %d1, 24

# CHECK-INST: sh.and.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0x27,0x11,0x98,0xff]
sh.and.t %d15, %d1, 24, %d1, 31

# CHECK-INST: sh.and.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x18,0xf0]
sh.and.t %d15, %d1, 24, %d14, 0

# CHECK-INST: sh.and.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0x27,0xe1,0x98,0xf3]
sh.and.t %d15, %d1, 24, %d14, 7

# CHECK-INST: sh.and.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x18,0xfc]
sh.and.t %d15, %d1, 24, %d14, 24

# CHECK-INST: sh.and.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0x27,0xe1,0x98,0xff]
sh.and.t %d15, %d1, 24, %d14, 31

# CHECK-INST: sh.and.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x18,0xf0]
sh.and.t %d15, %d1, 24, %d15, 0

# CHECK-INST: sh.and.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0x27,0xf1,0x98,0xf3]
sh.and.t %d15, %d1, 24, %d15, 7

# CHECK-INST: sh.and.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x18,0xfc]
sh.and.t %d15, %d1, 24, %d15, 24

# CHECK-INST: sh.and.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0x27,0xf1,0x98,0xff]
sh.and.t %d15, %d1, 24, %d15, 31

# CHECK-INST: sh.and.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0x27,0x01,0x1f,0xf0]
sh.and.t %d15, %d1, 31, %d0, 0

# CHECK-INST: sh.and.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0x27,0x01,0x9f,0xf3]
sh.and.t %d15, %d1, 31, %d0, 7

# CHECK-INST: sh.and.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0x27,0x01,0x1f,0xfc]
sh.and.t %d15, %d1, 31, %d0, 24

# CHECK-INST: sh.and.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0x27,0x01,0x9f,0xff]
sh.and.t %d15, %d1, 31, %d0, 31

# CHECK-INST: sh.and.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0x27,0x11,0x1f,0xf0]
sh.and.t %d15, %d1, 31, %d1, 0

# CHECK-INST: sh.and.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0x27,0x11,0x9f,0xf3]
sh.and.t %d15, %d1, 31, %d1, 7

# CHECK-INST: sh.and.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0x27,0x11,0x1f,0xfc]
sh.and.t %d15, %d1, 31, %d1, 24

# CHECK-INST: sh.and.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0x27,0x11,0x9f,0xff]
sh.and.t %d15, %d1, 31, %d1, 31

# CHECK-INST: sh.and.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x1f,0xf0]
sh.and.t %d15, %d1, 31, %d14, 0

# CHECK-INST: sh.and.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0x27,0xe1,0x9f,0xf3]
sh.and.t %d15, %d1, 31, %d14, 7

# CHECK-INST: sh.and.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x1f,0xfc]
sh.and.t %d15, %d1, 31, %d14, 24

# CHECK-INST: sh.and.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0x27,0xe1,0x9f,0xff]
sh.and.t %d15, %d1, 31, %d14, 31

# CHECK-INST: sh.and.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x1f,0xf0]
sh.and.t %d15, %d1, 31, %d15, 0

# CHECK-INST: sh.and.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0x27,0xf1,0x9f,0xf3]
sh.and.t %d15, %d1, 31, %d15, 7

# CHECK-INST: sh.and.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x1f,0xfc]
sh.and.t %d15, %d1, 31, %d15, 24

# CHECK-INST: sh.and.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0x27,0xf1,0x9f,0xff]
sh.and.t %d15, %d1, 31, %d15, 31

# CHECK-INST: sh.and.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x00,0xf0]
sh.and.t %d15, %d14, 0, %d0, 0

# CHECK-INST: sh.and.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0x27,0x0e,0x80,0xf3]
sh.and.t %d15, %d14, 0, %d0, 7

# CHECK-INST: sh.and.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x00,0xfc]
sh.and.t %d15, %d14, 0, %d0, 24

# CHECK-INST: sh.and.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0x27,0x0e,0x80,0xff]
sh.and.t %d15, %d14, 0, %d0, 31

# CHECK-INST: sh.and.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x00,0xf0]
sh.and.t %d15, %d14, 0, %d1, 0

# CHECK-INST: sh.and.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0x27,0x1e,0x80,0xf3]
sh.and.t %d15, %d14, 0, %d1, 7

# CHECK-INST: sh.and.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x00,0xfc]
sh.and.t %d15, %d14, 0, %d1, 24

# CHECK-INST: sh.and.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0x27,0x1e,0x80,0xff]
sh.and.t %d15, %d14, 0, %d1, 31

# CHECK-INST: sh.and.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0x27,0xee,0x00,0xf0]
sh.and.t %d15, %d14, 0, %d14, 0

# CHECK-INST: sh.and.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0x27,0xee,0x80,0xf3]
sh.and.t %d15, %d14, 0, %d14, 7

# CHECK-INST: sh.and.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0x27,0xee,0x00,0xfc]
sh.and.t %d15, %d14, 0, %d14, 24

# CHECK-INST: sh.and.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0x27,0xee,0x80,0xff]
sh.and.t %d15, %d14, 0, %d14, 31

# CHECK-INST: sh.and.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x00,0xf0]
sh.and.t %d15, %d14, 0, %d15, 0

# CHECK-INST: sh.and.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0x27,0xfe,0x80,0xf3]
sh.and.t %d15, %d14, 0, %d15, 7

# CHECK-INST: sh.and.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x00,0xfc]
sh.and.t %d15, %d14, 0, %d15, 24

# CHECK-INST: sh.and.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0x27,0xfe,0x80,0xff]
sh.and.t %d15, %d14, 0, %d15, 31

# CHECK-INST: sh.and.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x07,0xf0]
sh.and.t %d15, %d14, 7, %d0, 0

# CHECK-INST: sh.and.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0x27,0x0e,0x87,0xf3]
sh.and.t %d15, %d14, 7, %d0, 7

# CHECK-INST: sh.and.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x07,0xfc]
sh.and.t %d15, %d14, 7, %d0, 24

# CHECK-INST: sh.and.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0x27,0x0e,0x87,0xff]
sh.and.t %d15, %d14, 7, %d0, 31

# CHECK-INST: sh.and.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x07,0xf0]
sh.and.t %d15, %d14, 7, %d1, 0

# CHECK-INST: sh.and.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0x27,0x1e,0x87,0xf3]
sh.and.t %d15, %d14, 7, %d1, 7

# CHECK-INST: sh.and.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x07,0xfc]
sh.and.t %d15, %d14, 7, %d1, 24

# CHECK-INST: sh.and.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0x27,0x1e,0x87,0xff]
sh.and.t %d15, %d14, 7, %d1, 31

# CHECK-INST: sh.and.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0x27,0xee,0x07,0xf0]
sh.and.t %d15, %d14, 7, %d14, 0

# CHECK-INST: sh.and.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0x27,0xee,0x87,0xf3]
sh.and.t %d15, %d14, 7, %d14, 7

# CHECK-INST: sh.and.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0x27,0xee,0x07,0xfc]
sh.and.t %d15, %d14, 7, %d14, 24

# CHECK-INST: sh.and.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0x27,0xee,0x87,0xff]
sh.and.t %d15, %d14, 7, %d14, 31

# CHECK-INST: sh.and.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x07,0xf0]
sh.and.t %d15, %d14, 7, %d15, 0

# CHECK-INST: sh.and.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0x27,0xfe,0x87,0xf3]
sh.and.t %d15, %d14, 7, %d15, 7

# CHECK-INST: sh.and.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x07,0xfc]
sh.and.t %d15, %d14, 7, %d15, 24

# CHECK-INST: sh.and.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0x27,0xfe,0x87,0xff]
sh.and.t %d15, %d14, 7, %d15, 31

# CHECK-INST: sh.and.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x18,0xf0]
sh.and.t %d15, %d14, 24, %d0, 0

# CHECK-INST: sh.and.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0x27,0x0e,0x98,0xf3]
sh.and.t %d15, %d14, 24, %d0, 7

# CHECK-INST: sh.and.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x18,0xfc]
sh.and.t %d15, %d14, 24, %d0, 24

# CHECK-INST: sh.and.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0x27,0x0e,0x98,0xff]
sh.and.t %d15, %d14, 24, %d0, 31

# CHECK-INST: sh.and.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x18,0xf0]
sh.and.t %d15, %d14, 24, %d1, 0

# CHECK-INST: sh.and.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0x27,0x1e,0x98,0xf3]
sh.and.t %d15, %d14, 24, %d1, 7

# CHECK-INST: sh.and.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x18,0xfc]
sh.and.t %d15, %d14, 24, %d1, 24

# CHECK-INST: sh.and.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0x27,0x1e,0x98,0xff]
sh.and.t %d15, %d14, 24, %d1, 31

# CHECK-INST: sh.and.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0x27,0xee,0x18,0xf0]
sh.and.t %d15, %d14, 24, %d14, 0

# CHECK-INST: sh.and.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0x27,0xee,0x98,0xf3]
sh.and.t %d15, %d14, 24, %d14, 7

# CHECK-INST: sh.and.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0x27,0xee,0x18,0xfc]
sh.and.t %d15, %d14, 24, %d14, 24

# CHECK-INST: sh.and.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0x27,0xee,0x98,0xff]
sh.and.t %d15, %d14, 24, %d14, 31

# CHECK-INST: sh.and.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x18,0xf0]
sh.and.t %d15, %d14, 24, %d15, 0

# CHECK-INST: sh.and.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0x27,0xfe,0x98,0xf3]
sh.and.t %d15, %d14, 24, %d15, 7

# CHECK-INST: sh.and.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x18,0xfc]
sh.and.t %d15, %d14, 24, %d15, 24

# CHECK-INST: sh.and.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0x27,0xfe,0x98,0xff]
sh.and.t %d15, %d14, 24, %d15, 31

# CHECK-INST: sh.and.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x1f,0xf0]
sh.and.t %d15, %d14, 31, %d0, 0

# CHECK-INST: sh.and.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0x27,0x0e,0x9f,0xf3]
sh.and.t %d15, %d14, 31, %d0, 7

# CHECK-INST: sh.and.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x1f,0xfc]
sh.and.t %d15, %d14, 31, %d0, 24

# CHECK-INST: sh.and.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0x27,0x0e,0x9f,0xff]
sh.and.t %d15, %d14, 31, %d0, 31

# CHECK-INST: sh.and.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x1f,0xf0]
sh.and.t %d15, %d14, 31, %d1, 0

# CHECK-INST: sh.and.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0x27,0x1e,0x9f,0xf3]
sh.and.t %d15, %d14, 31, %d1, 7

# CHECK-INST: sh.and.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x1f,0xfc]
sh.and.t %d15, %d14, 31, %d1, 24

# CHECK-INST: sh.and.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0x27,0x1e,0x9f,0xff]
sh.and.t %d15, %d14, 31, %d1, 31

# CHECK-INST: sh.and.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0x27,0xee,0x1f,0xf0]
sh.and.t %d15, %d14, 31, %d14, 0

# CHECK-INST: sh.and.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0x27,0xee,0x9f,0xf3]
sh.and.t %d15, %d14, 31, %d14, 7

# CHECK-INST: sh.and.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0x27,0xee,0x1f,0xfc]
sh.and.t %d15, %d14, 31, %d14, 24

# CHECK-INST: sh.and.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0x27,0xee,0x9f,0xff]
sh.and.t %d15, %d14, 31, %d14, 31

# CHECK-INST: sh.and.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x1f,0xf0]
sh.and.t %d15, %d14, 31, %d15, 0

# CHECK-INST: sh.and.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0x27,0xfe,0x9f,0xf3]
sh.and.t %d15, %d14, 31, %d15, 7

# CHECK-INST: sh.and.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x1f,0xfc]
sh.and.t %d15, %d14, 31, %d15, 24

# CHECK-INST: sh.and.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0x27,0xfe,0x9f,0xff]
sh.and.t %d15, %d14, 31, %d15, 31

# CHECK-INST: sh.and.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x00,0xf0]
sh.and.t %d15, %d15, 0, %d0, 0

# CHECK-INST: sh.and.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0x27,0x0f,0x80,0xf3]
sh.and.t %d15, %d15, 0, %d0, 7

# CHECK-INST: sh.and.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x00,0xfc]
sh.and.t %d15, %d15, 0, %d0, 24

# CHECK-INST: sh.and.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0x27,0x0f,0x80,0xff]
sh.and.t %d15, %d15, 0, %d0, 31

# CHECK-INST: sh.and.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x00,0xf0]
sh.and.t %d15, %d15, 0, %d1, 0

# CHECK-INST: sh.and.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0x27,0x1f,0x80,0xf3]
sh.and.t %d15, %d15, 0, %d1, 7

# CHECK-INST: sh.and.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x00,0xfc]
sh.and.t %d15, %d15, 0, %d1, 24

# CHECK-INST: sh.and.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0x27,0x1f,0x80,0xff]
sh.and.t %d15, %d15, 0, %d1, 31

# CHECK-INST: sh.and.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0x27,0xef,0x00,0xf0]
sh.and.t %d15, %d15, 0, %d14, 0

# CHECK-INST: sh.and.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0x27,0xef,0x80,0xf3]
sh.and.t %d15, %d15, 0, %d14, 7

# CHECK-INST: sh.and.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0x27,0xef,0x00,0xfc]
sh.and.t %d15, %d15, 0, %d14, 24

# CHECK-INST: sh.and.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0x27,0xef,0x80,0xff]
sh.and.t %d15, %d15, 0, %d14, 31

# CHECK-INST: sh.and.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0x27,0xff,0x00,0xf0]
sh.and.t %d15, %d15, 0, %d15, 0

# CHECK-INST: sh.and.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0x27,0xff,0x80,0xf3]
sh.and.t %d15, %d15, 0, %d15, 7

# CHECK-INST: sh.and.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0x27,0xff,0x00,0xfc]
sh.and.t %d15, %d15, 0, %d15, 24

# CHECK-INST: sh.and.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0x27,0xff,0x80,0xff]
sh.and.t %d15, %d15, 0, %d15, 31

# CHECK-INST: sh.and.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x07,0xf0]
sh.and.t %d15, %d15, 7, %d0, 0

# CHECK-INST: sh.and.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0x27,0x0f,0x87,0xf3]
sh.and.t %d15, %d15, 7, %d0, 7

# CHECK-INST: sh.and.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x07,0xfc]
sh.and.t %d15, %d15, 7, %d0, 24

# CHECK-INST: sh.and.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0x27,0x0f,0x87,0xff]
sh.and.t %d15, %d15, 7, %d0, 31

# CHECK-INST: sh.and.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x07,0xf0]
sh.and.t %d15, %d15, 7, %d1, 0

# CHECK-INST: sh.and.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0x27,0x1f,0x87,0xf3]
sh.and.t %d15, %d15, 7, %d1, 7

# CHECK-INST: sh.and.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x07,0xfc]
sh.and.t %d15, %d15, 7, %d1, 24

# CHECK-INST: sh.and.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0x27,0x1f,0x87,0xff]
sh.and.t %d15, %d15, 7, %d1, 31

# CHECK-INST: sh.and.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0x27,0xef,0x07,0xf0]
sh.and.t %d15, %d15, 7, %d14, 0

# CHECK-INST: sh.and.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0x27,0xef,0x87,0xf3]
sh.and.t %d15, %d15, 7, %d14, 7

# CHECK-INST: sh.and.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0x27,0xef,0x07,0xfc]
sh.and.t %d15, %d15, 7, %d14, 24

# CHECK-INST: sh.and.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0x27,0xef,0x87,0xff]
sh.and.t %d15, %d15, 7, %d14, 31

# CHECK-INST: sh.and.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0x27,0xff,0x07,0xf0]
sh.and.t %d15, %d15, 7, %d15, 0

# CHECK-INST: sh.and.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0x27,0xff,0x87,0xf3]
sh.and.t %d15, %d15, 7, %d15, 7

# CHECK-INST: sh.and.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0x27,0xff,0x07,0xfc]
sh.and.t %d15, %d15, 7, %d15, 24

# CHECK-INST: sh.and.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0x27,0xff,0x87,0xff]
sh.and.t %d15, %d15, 7, %d15, 31

# CHECK-INST: sh.and.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x18,0xf0]
sh.and.t %d15, %d15, 24, %d0, 0

# CHECK-INST: sh.and.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0x27,0x0f,0x98,0xf3]
sh.and.t %d15, %d15, 24, %d0, 7

# CHECK-INST: sh.and.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x18,0xfc]
sh.and.t %d15, %d15, 24, %d0, 24

# CHECK-INST: sh.and.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0x27,0x0f,0x98,0xff]
sh.and.t %d15, %d15, 24, %d0, 31

# CHECK-INST: sh.and.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x18,0xf0]
sh.and.t %d15, %d15, 24, %d1, 0

# CHECK-INST: sh.and.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0x27,0x1f,0x98,0xf3]
sh.and.t %d15, %d15, 24, %d1, 7

# CHECK-INST: sh.and.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x18,0xfc]
sh.and.t %d15, %d15, 24, %d1, 24

# CHECK-INST: sh.and.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0x27,0x1f,0x98,0xff]
sh.and.t %d15, %d15, 24, %d1, 31

# CHECK-INST: sh.and.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0x27,0xef,0x18,0xf0]
sh.and.t %d15, %d15, 24, %d14, 0

# CHECK-INST: sh.and.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0x27,0xef,0x98,0xf3]
sh.and.t %d15, %d15, 24, %d14, 7

# CHECK-INST: sh.and.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0x27,0xef,0x18,0xfc]
sh.and.t %d15, %d15, 24, %d14, 24

# CHECK-INST: sh.and.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0x27,0xef,0x98,0xff]
sh.and.t %d15, %d15, 24, %d14, 31

# CHECK-INST: sh.and.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0x27,0xff,0x18,0xf0]
sh.and.t %d15, %d15, 24, %d15, 0

# CHECK-INST: sh.and.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0x27,0xff,0x98,0xf3]
sh.and.t %d15, %d15, 24, %d15, 7

# CHECK-INST: sh.and.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0x27,0xff,0x18,0xfc]
sh.and.t %d15, %d15, 24, %d15, 24

# CHECK-INST: sh.and.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0x27,0xff,0x98,0xff]
sh.and.t %d15, %d15, 24, %d15, 31

# CHECK-INST: sh.and.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x1f,0xf0]
sh.and.t %d15, %d15, 31, %d0, 0

# CHECK-INST: sh.and.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0x27,0x0f,0x9f,0xf3]
sh.and.t %d15, %d15, 31, %d0, 7

# CHECK-INST: sh.and.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x1f,0xfc]
sh.and.t %d15, %d15, 31, %d0, 24

# CHECK-INST: sh.and.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0x27,0x0f,0x9f,0xff]
sh.and.t %d15, %d15, 31, %d0, 31

# CHECK-INST: sh.and.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x1f,0xf0]
sh.and.t %d15, %d15, 31, %d1, 0

# CHECK-INST: sh.and.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0x27,0x1f,0x9f,0xf3]
sh.and.t %d15, %d15, 31, %d1, 7

# CHECK-INST: sh.and.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x1f,0xfc]
sh.and.t %d15, %d15, 31, %d1, 24

# CHECK-INST: sh.and.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0x27,0x1f,0x9f,0xff]
sh.and.t %d15, %d15, 31, %d1, 31

# CHECK-INST: sh.and.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0x27,0xef,0x1f,0xf0]
sh.and.t %d15, %d15, 31, %d14, 0

# CHECK-INST: sh.and.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0x27,0xef,0x9f,0xf3]
sh.and.t %d15, %d15, 31, %d14, 7

# CHECK-INST: sh.and.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0x27,0xef,0x1f,0xfc]
sh.and.t %d15, %d15, 31, %d14, 24

# CHECK-INST: sh.and.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0x27,0xef,0x9f,0xff]
sh.and.t %d15, %d15, 31, %d14, 31

# CHECK-INST: sh.and.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0x27,0xff,0x1f,0xf0]
sh.and.t %d15, %d15, 31, %d15, 0

# CHECK-INST: sh.and.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0x27,0xff,0x9f,0xf3]
sh.and.t %d15, %d15, 31, %d15, 7

# CHECK-INST: sh.and.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0x27,0xff,0x1f,0xfc]
sh.and.t %d15, %d15, 31, %d15, 24

# CHECK-INST: sh.and.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0x27,0xff,0x9f,0xff]
sh.and.t %d15, %d15, 31, %d15, 31

# CHECK-INST: sh.andn.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x60,0x00]
sh.andn.t %d0, %d0, 0, %d0, 0

# CHECK-INST: sh.andn.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0x27,0x00,0xe0,0x03]
sh.andn.t %d0, %d0, 0, %d0, 7

# CHECK-INST: sh.andn.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0x27,0x00,0x60,0x0c]
sh.andn.t %d0, %d0, 0, %d0, 24

# CHECK-INST: sh.andn.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0x27,0x00,0xe0,0x0f]
sh.andn.t %d0, %d0, 0, %d0, 31

# CHECK-INST: sh.andn.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0x27,0x10,0x60,0x00]
sh.andn.t %d0, %d0, 0, %d1, 0

# CHECK-INST: sh.andn.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0x27,0x10,0xe0,0x03]
sh.andn.t %d0, %d0, 0, %d1, 7

# CHECK-INST: sh.andn.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0x27,0x10,0x60,0x0c]
sh.andn.t %d0, %d0, 0, %d1, 24

# CHECK-INST: sh.andn.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0x27,0x10,0xe0,0x0f]
sh.andn.t %d0, %d0, 0, %d1, 31

# CHECK-INST: sh.andn.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x60,0x00]
sh.andn.t %d0, %d0, 0, %d14, 0

# CHECK-INST: sh.andn.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xe0,0x03]
sh.andn.t %d0, %d0, 0, %d14, 7

# CHECK-INST: sh.andn.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x60,0x0c]
sh.andn.t %d0, %d0, 0, %d14, 24

# CHECK-INST: sh.andn.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xe0,0x0f]
sh.andn.t %d0, %d0, 0, %d14, 31

# CHECK-INST: sh.andn.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x60,0x00]
sh.andn.t %d0, %d0, 0, %d15, 0

# CHECK-INST: sh.andn.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xe0,0x03]
sh.andn.t %d0, %d0, 0, %d15, 7

# CHECK-INST: sh.andn.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x60,0x0c]
sh.andn.t %d0, %d0, 0, %d15, 24

# CHECK-INST: sh.andn.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xe0,0x0f]
sh.andn.t %d0, %d0, 0, %d15, 31

# CHECK-INST: sh.andn.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0x27,0x00,0x67,0x00]
sh.andn.t %d0, %d0, 7, %d0, 0

# CHECK-INST: sh.andn.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0x27,0x00,0xe7,0x03]
sh.andn.t %d0, %d0, 7, %d0, 7

# CHECK-INST: sh.andn.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0x27,0x00,0x67,0x0c]
sh.andn.t %d0, %d0, 7, %d0, 24

# CHECK-INST: sh.andn.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0x27,0x00,0xe7,0x0f]
sh.andn.t %d0, %d0, 7, %d0, 31

# CHECK-INST: sh.andn.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0x27,0x10,0x67,0x00]
sh.andn.t %d0, %d0, 7, %d1, 0

# CHECK-INST: sh.andn.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0x27,0x10,0xe7,0x03]
sh.andn.t %d0, %d0, 7, %d1, 7

# CHECK-INST: sh.andn.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0x27,0x10,0x67,0x0c]
sh.andn.t %d0, %d0, 7, %d1, 24

# CHECK-INST: sh.andn.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0x27,0x10,0xe7,0x0f]
sh.andn.t %d0, %d0, 7, %d1, 31

# CHECK-INST: sh.andn.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x67,0x00]
sh.andn.t %d0, %d0, 7, %d14, 0

# CHECK-INST: sh.andn.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xe7,0x03]
sh.andn.t %d0, %d0, 7, %d14, 7

# CHECK-INST: sh.andn.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x67,0x0c]
sh.andn.t %d0, %d0, 7, %d14, 24

# CHECK-INST: sh.andn.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xe7,0x0f]
sh.andn.t %d0, %d0, 7, %d14, 31

# CHECK-INST: sh.andn.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x67,0x00]
sh.andn.t %d0, %d0, 7, %d15, 0

# CHECK-INST: sh.andn.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xe7,0x03]
sh.andn.t %d0, %d0, 7, %d15, 7

# CHECK-INST: sh.andn.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x67,0x0c]
sh.andn.t %d0, %d0, 7, %d15, 24

# CHECK-INST: sh.andn.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xe7,0x0f]
sh.andn.t %d0, %d0, 7, %d15, 31

# CHECK-INST: sh.andn.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0x27,0x00,0x78,0x00]
sh.andn.t %d0, %d0, 24, %d0, 0

# CHECK-INST: sh.andn.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0x27,0x00,0xf8,0x03]
sh.andn.t %d0, %d0, 24, %d0, 7

# CHECK-INST: sh.andn.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0x27,0x00,0x78,0x0c]
sh.andn.t %d0, %d0, 24, %d0, 24

# CHECK-INST: sh.andn.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0x27,0x00,0xf8,0x0f]
sh.andn.t %d0, %d0, 24, %d0, 31

# CHECK-INST: sh.andn.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0x27,0x10,0x78,0x00]
sh.andn.t %d0, %d0, 24, %d1, 0

# CHECK-INST: sh.andn.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0x27,0x10,0xf8,0x03]
sh.andn.t %d0, %d0, 24, %d1, 7

# CHECK-INST: sh.andn.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0x27,0x10,0x78,0x0c]
sh.andn.t %d0, %d0, 24, %d1, 24

# CHECK-INST: sh.andn.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0x27,0x10,0xf8,0x0f]
sh.andn.t %d0, %d0, 24, %d1, 31

# CHECK-INST: sh.andn.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x78,0x00]
sh.andn.t %d0, %d0, 24, %d14, 0

# CHECK-INST: sh.andn.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xf8,0x03]
sh.andn.t %d0, %d0, 24, %d14, 7

# CHECK-INST: sh.andn.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x78,0x0c]
sh.andn.t %d0, %d0, 24, %d14, 24

# CHECK-INST: sh.andn.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xf8,0x0f]
sh.andn.t %d0, %d0, 24, %d14, 31

# CHECK-INST: sh.andn.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x78,0x00]
sh.andn.t %d0, %d0, 24, %d15, 0

# CHECK-INST: sh.andn.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xf8,0x03]
sh.andn.t %d0, %d0, 24, %d15, 7

# CHECK-INST: sh.andn.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x78,0x0c]
sh.andn.t %d0, %d0, 24, %d15, 24

# CHECK-INST: sh.andn.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xf8,0x0f]
sh.andn.t %d0, %d0, 24, %d15, 31

# CHECK-INST: sh.andn.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0x27,0x00,0x7f,0x00]
sh.andn.t %d0, %d0, 31, %d0, 0

# CHECK-INST: sh.andn.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0x27,0x00,0xff,0x03]
sh.andn.t %d0, %d0, 31, %d0, 7

# CHECK-INST: sh.andn.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0x27,0x00,0x7f,0x0c]
sh.andn.t %d0, %d0, 31, %d0, 24

# CHECK-INST: sh.andn.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0x27,0x00,0xff,0x0f]
sh.andn.t %d0, %d0, 31, %d0, 31

# CHECK-INST: sh.andn.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0x27,0x10,0x7f,0x00]
sh.andn.t %d0, %d0, 31, %d1, 0

# CHECK-INST: sh.andn.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0x27,0x10,0xff,0x03]
sh.andn.t %d0, %d0, 31, %d1, 7

# CHECK-INST: sh.andn.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0x27,0x10,0x7f,0x0c]
sh.andn.t %d0, %d0, 31, %d1, 24

# CHECK-INST: sh.andn.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0x27,0x10,0xff,0x0f]
sh.andn.t %d0, %d0, 31, %d1, 31

# CHECK-INST: sh.andn.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x7f,0x00]
sh.andn.t %d0, %d0, 31, %d14, 0

# CHECK-INST: sh.andn.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xff,0x03]
sh.andn.t %d0, %d0, 31, %d14, 7

# CHECK-INST: sh.andn.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x7f,0x0c]
sh.andn.t %d0, %d0, 31, %d14, 24

# CHECK-INST: sh.andn.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xff,0x0f]
sh.andn.t %d0, %d0, 31, %d14, 31

# CHECK-INST: sh.andn.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x7f,0x00]
sh.andn.t %d0, %d0, 31, %d15, 0

# CHECK-INST: sh.andn.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xff,0x03]
sh.andn.t %d0, %d0, 31, %d15, 7

# CHECK-INST: sh.andn.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x7f,0x0c]
sh.andn.t %d0, %d0, 31, %d15, 24

# CHECK-INST: sh.andn.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xff,0x0f]
sh.andn.t %d0, %d0, 31, %d15, 31

# CHECK-INST: sh.andn.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0x27,0x01,0x60,0x00]
sh.andn.t %d0, %d1, 0, %d0, 0

# CHECK-INST: sh.andn.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0x27,0x01,0xe0,0x03]
sh.andn.t %d0, %d1, 0, %d0, 7

# CHECK-INST: sh.andn.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0x27,0x01,0x60,0x0c]
sh.andn.t %d0, %d1, 0, %d0, 24

# CHECK-INST: sh.andn.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0x27,0x01,0xe0,0x0f]
sh.andn.t %d0, %d1, 0, %d0, 31

# CHECK-INST: sh.andn.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0x27,0x11,0x60,0x00]
sh.andn.t %d0, %d1, 0, %d1, 0

# CHECK-INST: sh.andn.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0x27,0x11,0xe0,0x03]
sh.andn.t %d0, %d1, 0, %d1, 7

# CHECK-INST: sh.andn.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0x27,0x11,0x60,0x0c]
sh.andn.t %d0, %d1, 0, %d1, 24

# CHECK-INST: sh.andn.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0x27,0x11,0xe0,0x0f]
sh.andn.t %d0, %d1, 0, %d1, 31

# CHECK-INST: sh.andn.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x60,0x00]
sh.andn.t %d0, %d1, 0, %d14, 0

# CHECK-INST: sh.andn.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xe0,0x03]
sh.andn.t %d0, %d1, 0, %d14, 7

# CHECK-INST: sh.andn.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x60,0x0c]
sh.andn.t %d0, %d1, 0, %d14, 24

# CHECK-INST: sh.andn.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xe0,0x0f]
sh.andn.t %d0, %d1, 0, %d14, 31

# CHECK-INST: sh.andn.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x60,0x00]
sh.andn.t %d0, %d1, 0, %d15, 0

# CHECK-INST: sh.andn.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xe0,0x03]
sh.andn.t %d0, %d1, 0, %d15, 7

# CHECK-INST: sh.andn.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x60,0x0c]
sh.andn.t %d0, %d1, 0, %d15, 24

# CHECK-INST: sh.andn.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xe0,0x0f]
sh.andn.t %d0, %d1, 0, %d15, 31

# CHECK-INST: sh.andn.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0x27,0x01,0x67,0x00]
sh.andn.t %d0, %d1, 7, %d0, 0

# CHECK-INST: sh.andn.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0x27,0x01,0xe7,0x03]
sh.andn.t %d0, %d1, 7, %d0, 7

# CHECK-INST: sh.andn.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0x27,0x01,0x67,0x0c]
sh.andn.t %d0, %d1, 7, %d0, 24

# CHECK-INST: sh.andn.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0x27,0x01,0xe7,0x0f]
sh.andn.t %d0, %d1, 7, %d0, 31

# CHECK-INST: sh.andn.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0x27,0x11,0x67,0x00]
sh.andn.t %d0, %d1, 7, %d1, 0

# CHECK-INST: sh.andn.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0x27,0x11,0xe7,0x03]
sh.andn.t %d0, %d1, 7, %d1, 7

# CHECK-INST: sh.andn.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0x27,0x11,0x67,0x0c]
sh.andn.t %d0, %d1, 7, %d1, 24

# CHECK-INST: sh.andn.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0x27,0x11,0xe7,0x0f]
sh.andn.t %d0, %d1, 7, %d1, 31

# CHECK-INST: sh.andn.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x67,0x00]
sh.andn.t %d0, %d1, 7, %d14, 0

# CHECK-INST: sh.andn.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xe7,0x03]
sh.andn.t %d0, %d1, 7, %d14, 7

# CHECK-INST: sh.andn.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x67,0x0c]
sh.andn.t %d0, %d1, 7, %d14, 24

# CHECK-INST: sh.andn.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xe7,0x0f]
sh.andn.t %d0, %d1, 7, %d14, 31

# CHECK-INST: sh.andn.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x67,0x00]
sh.andn.t %d0, %d1, 7, %d15, 0

# CHECK-INST: sh.andn.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xe7,0x03]
sh.andn.t %d0, %d1, 7, %d15, 7

# CHECK-INST: sh.andn.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x67,0x0c]
sh.andn.t %d0, %d1, 7, %d15, 24

# CHECK-INST: sh.andn.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xe7,0x0f]
sh.andn.t %d0, %d1, 7, %d15, 31

# CHECK-INST: sh.andn.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0x27,0x01,0x78,0x00]
sh.andn.t %d0, %d1, 24, %d0, 0

# CHECK-INST: sh.andn.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0x27,0x01,0xf8,0x03]
sh.andn.t %d0, %d1, 24, %d0, 7

# CHECK-INST: sh.andn.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0x27,0x01,0x78,0x0c]
sh.andn.t %d0, %d1, 24, %d0, 24

# CHECK-INST: sh.andn.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0x27,0x01,0xf8,0x0f]
sh.andn.t %d0, %d1, 24, %d0, 31

# CHECK-INST: sh.andn.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0x27,0x11,0x78,0x00]
sh.andn.t %d0, %d1, 24, %d1, 0

# CHECK-INST: sh.andn.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0x27,0x11,0xf8,0x03]
sh.andn.t %d0, %d1, 24, %d1, 7

# CHECK-INST: sh.andn.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0x27,0x11,0x78,0x0c]
sh.andn.t %d0, %d1, 24, %d1, 24

# CHECK-INST: sh.andn.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0x27,0x11,0xf8,0x0f]
sh.andn.t %d0, %d1, 24, %d1, 31

# CHECK-INST: sh.andn.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x78,0x00]
sh.andn.t %d0, %d1, 24, %d14, 0

# CHECK-INST: sh.andn.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xf8,0x03]
sh.andn.t %d0, %d1, 24, %d14, 7

# CHECK-INST: sh.andn.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x78,0x0c]
sh.andn.t %d0, %d1, 24, %d14, 24

# CHECK-INST: sh.andn.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xf8,0x0f]
sh.andn.t %d0, %d1, 24, %d14, 31

# CHECK-INST: sh.andn.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x78,0x00]
sh.andn.t %d0, %d1, 24, %d15, 0

# CHECK-INST: sh.andn.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xf8,0x03]
sh.andn.t %d0, %d1, 24, %d15, 7

# CHECK-INST: sh.andn.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x78,0x0c]
sh.andn.t %d0, %d1, 24, %d15, 24

# CHECK-INST: sh.andn.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xf8,0x0f]
sh.andn.t %d0, %d1, 24, %d15, 31

# CHECK-INST: sh.andn.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0x27,0x01,0x7f,0x00]
sh.andn.t %d0, %d1, 31, %d0, 0

# CHECK-INST: sh.andn.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0x27,0x01,0xff,0x03]
sh.andn.t %d0, %d1, 31, %d0, 7

# CHECK-INST: sh.andn.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0x27,0x01,0x7f,0x0c]
sh.andn.t %d0, %d1, 31, %d0, 24

# CHECK-INST: sh.andn.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0x27,0x01,0xff,0x0f]
sh.andn.t %d0, %d1, 31, %d0, 31

# CHECK-INST: sh.andn.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0x27,0x11,0x7f,0x00]
sh.andn.t %d0, %d1, 31, %d1, 0

# CHECK-INST: sh.andn.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0x27,0x11,0xff,0x03]
sh.andn.t %d0, %d1, 31, %d1, 7

# CHECK-INST: sh.andn.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0x27,0x11,0x7f,0x0c]
sh.andn.t %d0, %d1, 31, %d1, 24

# CHECK-INST: sh.andn.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0x27,0x11,0xff,0x0f]
sh.andn.t %d0, %d1, 31, %d1, 31

# CHECK-INST: sh.andn.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x7f,0x00]
sh.andn.t %d0, %d1, 31, %d14, 0

# CHECK-INST: sh.andn.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xff,0x03]
sh.andn.t %d0, %d1, 31, %d14, 7

# CHECK-INST: sh.andn.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x7f,0x0c]
sh.andn.t %d0, %d1, 31, %d14, 24

# CHECK-INST: sh.andn.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xff,0x0f]
sh.andn.t %d0, %d1, 31, %d14, 31

# CHECK-INST: sh.andn.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x7f,0x00]
sh.andn.t %d0, %d1, 31, %d15, 0

# CHECK-INST: sh.andn.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xff,0x03]
sh.andn.t %d0, %d1, 31, %d15, 7

# CHECK-INST: sh.andn.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x7f,0x0c]
sh.andn.t %d0, %d1, 31, %d15, 24

# CHECK-INST: sh.andn.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xff,0x0f]
sh.andn.t %d0, %d1, 31, %d15, 31

# CHECK-INST: sh.andn.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x60,0x00]
sh.andn.t %d0, %d14, 0, %d0, 0

# CHECK-INST: sh.andn.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xe0,0x03]
sh.andn.t %d0, %d14, 0, %d0, 7

# CHECK-INST: sh.andn.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x60,0x0c]
sh.andn.t %d0, %d14, 0, %d0, 24

# CHECK-INST: sh.andn.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xe0,0x0f]
sh.andn.t %d0, %d14, 0, %d0, 31

# CHECK-INST: sh.andn.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x60,0x00]
sh.andn.t %d0, %d14, 0, %d1, 0

# CHECK-INST: sh.andn.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xe0,0x03]
sh.andn.t %d0, %d14, 0, %d1, 7

# CHECK-INST: sh.andn.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x60,0x0c]
sh.andn.t %d0, %d14, 0, %d1, 24

# CHECK-INST: sh.andn.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xe0,0x0f]
sh.andn.t %d0, %d14, 0, %d1, 31

# CHECK-INST: sh.andn.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0x27,0xee,0x60,0x00]
sh.andn.t %d0, %d14, 0, %d14, 0

# CHECK-INST: sh.andn.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0x27,0xee,0xe0,0x03]
sh.andn.t %d0, %d14, 0, %d14, 7

# CHECK-INST: sh.andn.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0x27,0xee,0x60,0x0c]
sh.andn.t %d0, %d14, 0, %d14, 24

# CHECK-INST: sh.andn.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0x27,0xee,0xe0,0x0f]
sh.andn.t %d0, %d14, 0, %d14, 31

# CHECK-INST: sh.andn.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x60,0x00]
sh.andn.t %d0, %d14, 0, %d15, 0

# CHECK-INST: sh.andn.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xe0,0x03]
sh.andn.t %d0, %d14, 0, %d15, 7

# CHECK-INST: sh.andn.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x60,0x0c]
sh.andn.t %d0, %d14, 0, %d15, 24

# CHECK-INST: sh.andn.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xe0,0x0f]
sh.andn.t %d0, %d14, 0, %d15, 31

# CHECK-INST: sh.andn.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x67,0x00]
sh.andn.t %d0, %d14, 7, %d0, 0

# CHECK-INST: sh.andn.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xe7,0x03]
sh.andn.t %d0, %d14, 7, %d0, 7

# CHECK-INST: sh.andn.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x67,0x0c]
sh.andn.t %d0, %d14, 7, %d0, 24

# CHECK-INST: sh.andn.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xe7,0x0f]
sh.andn.t %d0, %d14, 7, %d0, 31

# CHECK-INST: sh.andn.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x67,0x00]
sh.andn.t %d0, %d14, 7, %d1, 0

# CHECK-INST: sh.andn.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xe7,0x03]
sh.andn.t %d0, %d14, 7, %d1, 7

# CHECK-INST: sh.andn.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x67,0x0c]
sh.andn.t %d0, %d14, 7, %d1, 24

# CHECK-INST: sh.andn.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xe7,0x0f]
sh.andn.t %d0, %d14, 7, %d1, 31

# CHECK-INST: sh.andn.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0x27,0xee,0x67,0x00]
sh.andn.t %d0, %d14, 7, %d14, 0

# CHECK-INST: sh.andn.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0x27,0xee,0xe7,0x03]
sh.andn.t %d0, %d14, 7, %d14, 7

# CHECK-INST: sh.andn.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0x27,0xee,0x67,0x0c]
sh.andn.t %d0, %d14, 7, %d14, 24

# CHECK-INST: sh.andn.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0x27,0xee,0xe7,0x0f]
sh.andn.t %d0, %d14, 7, %d14, 31

# CHECK-INST: sh.andn.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x67,0x00]
sh.andn.t %d0, %d14, 7, %d15, 0

# CHECK-INST: sh.andn.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xe7,0x03]
sh.andn.t %d0, %d14, 7, %d15, 7

# CHECK-INST: sh.andn.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x67,0x0c]
sh.andn.t %d0, %d14, 7, %d15, 24

# CHECK-INST: sh.andn.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xe7,0x0f]
sh.andn.t %d0, %d14, 7, %d15, 31

# CHECK-INST: sh.andn.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x78,0x00]
sh.andn.t %d0, %d14, 24, %d0, 0

# CHECK-INST: sh.andn.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xf8,0x03]
sh.andn.t %d0, %d14, 24, %d0, 7

# CHECK-INST: sh.andn.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x78,0x0c]
sh.andn.t %d0, %d14, 24, %d0, 24

# CHECK-INST: sh.andn.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xf8,0x0f]
sh.andn.t %d0, %d14, 24, %d0, 31

# CHECK-INST: sh.andn.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x78,0x00]
sh.andn.t %d0, %d14, 24, %d1, 0

# CHECK-INST: sh.andn.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xf8,0x03]
sh.andn.t %d0, %d14, 24, %d1, 7

# CHECK-INST: sh.andn.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x78,0x0c]
sh.andn.t %d0, %d14, 24, %d1, 24

# CHECK-INST: sh.andn.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xf8,0x0f]
sh.andn.t %d0, %d14, 24, %d1, 31

# CHECK-INST: sh.andn.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0x27,0xee,0x78,0x00]
sh.andn.t %d0, %d14, 24, %d14, 0

# CHECK-INST: sh.andn.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0x27,0xee,0xf8,0x03]
sh.andn.t %d0, %d14, 24, %d14, 7

# CHECK-INST: sh.andn.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0x27,0xee,0x78,0x0c]
sh.andn.t %d0, %d14, 24, %d14, 24

# CHECK-INST: sh.andn.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0x27,0xee,0xf8,0x0f]
sh.andn.t %d0, %d14, 24, %d14, 31

# CHECK-INST: sh.andn.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x78,0x00]
sh.andn.t %d0, %d14, 24, %d15, 0

# CHECK-INST: sh.andn.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xf8,0x03]
sh.andn.t %d0, %d14, 24, %d15, 7

# CHECK-INST: sh.andn.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x78,0x0c]
sh.andn.t %d0, %d14, 24, %d15, 24

# CHECK-INST: sh.andn.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xf8,0x0f]
sh.andn.t %d0, %d14, 24, %d15, 31

# CHECK-INST: sh.andn.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x7f,0x00]
sh.andn.t %d0, %d14, 31, %d0, 0

# CHECK-INST: sh.andn.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xff,0x03]
sh.andn.t %d0, %d14, 31, %d0, 7

# CHECK-INST: sh.andn.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x7f,0x0c]
sh.andn.t %d0, %d14, 31, %d0, 24

# CHECK-INST: sh.andn.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xff,0x0f]
sh.andn.t %d0, %d14, 31, %d0, 31

# CHECK-INST: sh.andn.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x7f,0x00]
sh.andn.t %d0, %d14, 31, %d1, 0

# CHECK-INST: sh.andn.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xff,0x03]
sh.andn.t %d0, %d14, 31, %d1, 7

# CHECK-INST: sh.andn.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x7f,0x0c]
sh.andn.t %d0, %d14, 31, %d1, 24

# CHECK-INST: sh.andn.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xff,0x0f]
sh.andn.t %d0, %d14, 31, %d1, 31

# CHECK-INST: sh.andn.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0x27,0xee,0x7f,0x00]
sh.andn.t %d0, %d14, 31, %d14, 0

# CHECK-INST: sh.andn.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0x27,0xee,0xff,0x03]
sh.andn.t %d0, %d14, 31, %d14, 7

# CHECK-INST: sh.andn.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0x27,0xee,0x7f,0x0c]
sh.andn.t %d0, %d14, 31, %d14, 24

# CHECK-INST: sh.andn.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0x27,0xee,0xff,0x0f]
sh.andn.t %d0, %d14, 31, %d14, 31

# CHECK-INST: sh.andn.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x7f,0x00]
sh.andn.t %d0, %d14, 31, %d15, 0

# CHECK-INST: sh.andn.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xff,0x03]
sh.andn.t %d0, %d14, 31, %d15, 7

# CHECK-INST: sh.andn.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x7f,0x0c]
sh.andn.t %d0, %d14, 31, %d15, 24

# CHECK-INST: sh.andn.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xff,0x0f]
sh.andn.t %d0, %d14, 31, %d15, 31

# CHECK-INST: sh.andn.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x60,0x00]
sh.andn.t %d0, %d15, 0, %d0, 0

# CHECK-INST: sh.andn.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xe0,0x03]
sh.andn.t %d0, %d15, 0, %d0, 7

# CHECK-INST: sh.andn.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x60,0x0c]
sh.andn.t %d0, %d15, 0, %d0, 24

# CHECK-INST: sh.andn.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xe0,0x0f]
sh.andn.t %d0, %d15, 0, %d0, 31

# CHECK-INST: sh.andn.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x60,0x00]
sh.andn.t %d0, %d15, 0, %d1, 0

# CHECK-INST: sh.andn.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xe0,0x03]
sh.andn.t %d0, %d15, 0, %d1, 7

# CHECK-INST: sh.andn.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x60,0x0c]
sh.andn.t %d0, %d15, 0, %d1, 24

# CHECK-INST: sh.andn.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xe0,0x0f]
sh.andn.t %d0, %d15, 0, %d1, 31

# CHECK-INST: sh.andn.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0x27,0xef,0x60,0x00]
sh.andn.t %d0, %d15, 0, %d14, 0

# CHECK-INST: sh.andn.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0x27,0xef,0xe0,0x03]
sh.andn.t %d0, %d15, 0, %d14, 7

# CHECK-INST: sh.andn.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0x27,0xef,0x60,0x0c]
sh.andn.t %d0, %d15, 0, %d14, 24

# CHECK-INST: sh.andn.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0x27,0xef,0xe0,0x0f]
sh.andn.t %d0, %d15, 0, %d14, 31

# CHECK-INST: sh.andn.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0x27,0xff,0x60,0x00]
sh.andn.t %d0, %d15, 0, %d15, 0

# CHECK-INST: sh.andn.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0x27,0xff,0xe0,0x03]
sh.andn.t %d0, %d15, 0, %d15, 7

# CHECK-INST: sh.andn.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0x27,0xff,0x60,0x0c]
sh.andn.t %d0, %d15, 0, %d15, 24

# CHECK-INST: sh.andn.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0x27,0xff,0xe0,0x0f]
sh.andn.t %d0, %d15, 0, %d15, 31

# CHECK-INST: sh.andn.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x67,0x00]
sh.andn.t %d0, %d15, 7, %d0, 0

# CHECK-INST: sh.andn.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xe7,0x03]
sh.andn.t %d0, %d15, 7, %d0, 7

# CHECK-INST: sh.andn.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x67,0x0c]
sh.andn.t %d0, %d15, 7, %d0, 24

# CHECK-INST: sh.andn.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xe7,0x0f]
sh.andn.t %d0, %d15, 7, %d0, 31

# CHECK-INST: sh.andn.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x67,0x00]
sh.andn.t %d0, %d15, 7, %d1, 0

# CHECK-INST: sh.andn.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xe7,0x03]
sh.andn.t %d0, %d15, 7, %d1, 7

# CHECK-INST: sh.andn.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x67,0x0c]
sh.andn.t %d0, %d15, 7, %d1, 24

# CHECK-INST: sh.andn.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xe7,0x0f]
sh.andn.t %d0, %d15, 7, %d1, 31

# CHECK-INST: sh.andn.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0x27,0xef,0x67,0x00]
sh.andn.t %d0, %d15, 7, %d14, 0

# CHECK-INST: sh.andn.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0x27,0xef,0xe7,0x03]
sh.andn.t %d0, %d15, 7, %d14, 7

# CHECK-INST: sh.andn.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0x27,0xef,0x67,0x0c]
sh.andn.t %d0, %d15, 7, %d14, 24

# CHECK-INST: sh.andn.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0x27,0xef,0xe7,0x0f]
sh.andn.t %d0, %d15, 7, %d14, 31

# CHECK-INST: sh.andn.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0x27,0xff,0x67,0x00]
sh.andn.t %d0, %d15, 7, %d15, 0

# CHECK-INST: sh.andn.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0x27,0xff,0xe7,0x03]
sh.andn.t %d0, %d15, 7, %d15, 7

# CHECK-INST: sh.andn.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0x27,0xff,0x67,0x0c]
sh.andn.t %d0, %d15, 7, %d15, 24

# CHECK-INST: sh.andn.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0x27,0xff,0xe7,0x0f]
sh.andn.t %d0, %d15, 7, %d15, 31

# CHECK-INST: sh.andn.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x78,0x00]
sh.andn.t %d0, %d15, 24, %d0, 0

# CHECK-INST: sh.andn.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xf8,0x03]
sh.andn.t %d0, %d15, 24, %d0, 7

# CHECK-INST: sh.andn.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x78,0x0c]
sh.andn.t %d0, %d15, 24, %d0, 24

# CHECK-INST: sh.andn.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xf8,0x0f]
sh.andn.t %d0, %d15, 24, %d0, 31

# CHECK-INST: sh.andn.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x78,0x00]
sh.andn.t %d0, %d15, 24, %d1, 0

# CHECK-INST: sh.andn.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xf8,0x03]
sh.andn.t %d0, %d15, 24, %d1, 7

# CHECK-INST: sh.andn.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x78,0x0c]
sh.andn.t %d0, %d15, 24, %d1, 24

# CHECK-INST: sh.andn.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xf8,0x0f]
sh.andn.t %d0, %d15, 24, %d1, 31

# CHECK-INST: sh.andn.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0x27,0xef,0x78,0x00]
sh.andn.t %d0, %d15, 24, %d14, 0

# CHECK-INST: sh.andn.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0x27,0xef,0xf8,0x03]
sh.andn.t %d0, %d15, 24, %d14, 7

# CHECK-INST: sh.andn.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0x27,0xef,0x78,0x0c]
sh.andn.t %d0, %d15, 24, %d14, 24

# CHECK-INST: sh.andn.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0x27,0xef,0xf8,0x0f]
sh.andn.t %d0, %d15, 24, %d14, 31

# CHECK-INST: sh.andn.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0x27,0xff,0x78,0x00]
sh.andn.t %d0, %d15, 24, %d15, 0

# CHECK-INST: sh.andn.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0x27,0xff,0xf8,0x03]
sh.andn.t %d0, %d15, 24, %d15, 7

# CHECK-INST: sh.andn.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0x27,0xff,0x78,0x0c]
sh.andn.t %d0, %d15, 24, %d15, 24

# CHECK-INST: sh.andn.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0x27,0xff,0xf8,0x0f]
sh.andn.t %d0, %d15, 24, %d15, 31

# CHECK-INST: sh.andn.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x7f,0x00]
sh.andn.t %d0, %d15, 31, %d0, 0

# CHECK-INST: sh.andn.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xff,0x03]
sh.andn.t %d0, %d15, 31, %d0, 7

# CHECK-INST: sh.andn.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x7f,0x0c]
sh.andn.t %d0, %d15, 31, %d0, 24

# CHECK-INST: sh.andn.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xff,0x0f]
sh.andn.t %d0, %d15, 31, %d0, 31

# CHECK-INST: sh.andn.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x7f,0x00]
sh.andn.t %d0, %d15, 31, %d1, 0

# CHECK-INST: sh.andn.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xff,0x03]
sh.andn.t %d0, %d15, 31, %d1, 7

# CHECK-INST: sh.andn.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x7f,0x0c]
sh.andn.t %d0, %d15, 31, %d1, 24

# CHECK-INST: sh.andn.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xff,0x0f]
sh.andn.t %d0, %d15, 31, %d1, 31

# CHECK-INST: sh.andn.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0x27,0xef,0x7f,0x00]
sh.andn.t %d0, %d15, 31, %d14, 0

# CHECK-INST: sh.andn.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0x27,0xef,0xff,0x03]
sh.andn.t %d0, %d15, 31, %d14, 7

# CHECK-INST: sh.andn.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0x27,0xef,0x7f,0x0c]
sh.andn.t %d0, %d15, 31, %d14, 24

# CHECK-INST: sh.andn.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0x27,0xef,0xff,0x0f]
sh.andn.t %d0, %d15, 31, %d14, 31

# CHECK-INST: sh.andn.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0x27,0xff,0x7f,0x00]
sh.andn.t %d0, %d15, 31, %d15, 0

# CHECK-INST: sh.andn.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0x27,0xff,0xff,0x03]
sh.andn.t %d0, %d15, 31, %d15, 7

# CHECK-INST: sh.andn.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0x27,0xff,0x7f,0x0c]
sh.andn.t %d0, %d15, 31, %d15, 24

# CHECK-INST: sh.andn.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0x27,0xff,0xff,0x0f]
sh.andn.t %d0, %d15, 31, %d15, 31

# CHECK-INST: sh.andn.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x60,0x10]
sh.andn.t %d1, %d0, 0, %d0, 0

# CHECK-INST: sh.andn.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0x27,0x00,0xe0,0x13]
sh.andn.t %d1, %d0, 0, %d0, 7

# CHECK-INST: sh.andn.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0x27,0x00,0x60,0x1c]
sh.andn.t %d1, %d0, 0, %d0, 24

# CHECK-INST: sh.andn.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0x27,0x00,0xe0,0x1f]
sh.andn.t %d1, %d0, 0, %d0, 31

# CHECK-INST: sh.andn.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0x27,0x10,0x60,0x10]
sh.andn.t %d1, %d0, 0, %d1, 0

# CHECK-INST: sh.andn.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0x27,0x10,0xe0,0x13]
sh.andn.t %d1, %d0, 0, %d1, 7

# CHECK-INST: sh.andn.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0x27,0x10,0x60,0x1c]
sh.andn.t %d1, %d0, 0, %d1, 24

# CHECK-INST: sh.andn.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0x27,0x10,0xe0,0x1f]
sh.andn.t %d1, %d0, 0, %d1, 31

# CHECK-INST: sh.andn.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x60,0x10]
sh.andn.t %d1, %d0, 0, %d14, 0

# CHECK-INST: sh.andn.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xe0,0x13]
sh.andn.t %d1, %d0, 0, %d14, 7

# CHECK-INST: sh.andn.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x60,0x1c]
sh.andn.t %d1, %d0, 0, %d14, 24

# CHECK-INST: sh.andn.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xe0,0x1f]
sh.andn.t %d1, %d0, 0, %d14, 31

# CHECK-INST: sh.andn.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x60,0x10]
sh.andn.t %d1, %d0, 0, %d15, 0

# CHECK-INST: sh.andn.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xe0,0x13]
sh.andn.t %d1, %d0, 0, %d15, 7

# CHECK-INST: sh.andn.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x60,0x1c]
sh.andn.t %d1, %d0, 0, %d15, 24

# CHECK-INST: sh.andn.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xe0,0x1f]
sh.andn.t %d1, %d0, 0, %d15, 31

# CHECK-INST: sh.andn.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0x27,0x00,0x67,0x10]
sh.andn.t %d1, %d0, 7, %d0, 0

# CHECK-INST: sh.andn.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0x27,0x00,0xe7,0x13]
sh.andn.t %d1, %d0, 7, %d0, 7

# CHECK-INST: sh.andn.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0x27,0x00,0x67,0x1c]
sh.andn.t %d1, %d0, 7, %d0, 24

# CHECK-INST: sh.andn.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0x27,0x00,0xe7,0x1f]
sh.andn.t %d1, %d0, 7, %d0, 31

# CHECK-INST: sh.andn.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0x27,0x10,0x67,0x10]
sh.andn.t %d1, %d0, 7, %d1, 0

# CHECK-INST: sh.andn.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0x27,0x10,0xe7,0x13]
sh.andn.t %d1, %d0, 7, %d1, 7

# CHECK-INST: sh.andn.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0x27,0x10,0x67,0x1c]
sh.andn.t %d1, %d0, 7, %d1, 24

# CHECK-INST: sh.andn.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0x27,0x10,0xe7,0x1f]
sh.andn.t %d1, %d0, 7, %d1, 31

# CHECK-INST: sh.andn.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x67,0x10]
sh.andn.t %d1, %d0, 7, %d14, 0

# CHECK-INST: sh.andn.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xe7,0x13]
sh.andn.t %d1, %d0, 7, %d14, 7

# CHECK-INST: sh.andn.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x67,0x1c]
sh.andn.t %d1, %d0, 7, %d14, 24

# CHECK-INST: sh.andn.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xe7,0x1f]
sh.andn.t %d1, %d0, 7, %d14, 31

# CHECK-INST: sh.andn.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x67,0x10]
sh.andn.t %d1, %d0, 7, %d15, 0

# CHECK-INST: sh.andn.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xe7,0x13]
sh.andn.t %d1, %d0, 7, %d15, 7

# CHECK-INST: sh.andn.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x67,0x1c]
sh.andn.t %d1, %d0, 7, %d15, 24

# CHECK-INST: sh.andn.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xe7,0x1f]
sh.andn.t %d1, %d0, 7, %d15, 31

# CHECK-INST: sh.andn.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0x27,0x00,0x78,0x10]
sh.andn.t %d1, %d0, 24, %d0, 0

# CHECK-INST: sh.andn.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0x27,0x00,0xf8,0x13]
sh.andn.t %d1, %d0, 24, %d0, 7

# CHECK-INST: sh.andn.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0x27,0x00,0x78,0x1c]
sh.andn.t %d1, %d0, 24, %d0, 24

# CHECK-INST: sh.andn.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0x27,0x00,0xf8,0x1f]
sh.andn.t %d1, %d0, 24, %d0, 31

# CHECK-INST: sh.andn.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0x27,0x10,0x78,0x10]
sh.andn.t %d1, %d0, 24, %d1, 0

# CHECK-INST: sh.andn.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0x27,0x10,0xf8,0x13]
sh.andn.t %d1, %d0, 24, %d1, 7

# CHECK-INST: sh.andn.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0x27,0x10,0x78,0x1c]
sh.andn.t %d1, %d0, 24, %d1, 24

# CHECK-INST: sh.andn.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0x27,0x10,0xf8,0x1f]
sh.andn.t %d1, %d0, 24, %d1, 31

# CHECK-INST: sh.andn.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x78,0x10]
sh.andn.t %d1, %d0, 24, %d14, 0

# CHECK-INST: sh.andn.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xf8,0x13]
sh.andn.t %d1, %d0, 24, %d14, 7

# CHECK-INST: sh.andn.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x78,0x1c]
sh.andn.t %d1, %d0, 24, %d14, 24

# CHECK-INST: sh.andn.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xf8,0x1f]
sh.andn.t %d1, %d0, 24, %d14, 31

# CHECK-INST: sh.andn.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x78,0x10]
sh.andn.t %d1, %d0, 24, %d15, 0

# CHECK-INST: sh.andn.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xf8,0x13]
sh.andn.t %d1, %d0, 24, %d15, 7

# CHECK-INST: sh.andn.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x78,0x1c]
sh.andn.t %d1, %d0, 24, %d15, 24

# CHECK-INST: sh.andn.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xf8,0x1f]
sh.andn.t %d1, %d0, 24, %d15, 31

# CHECK-INST: sh.andn.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0x27,0x00,0x7f,0x10]
sh.andn.t %d1, %d0, 31, %d0, 0

# CHECK-INST: sh.andn.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0x27,0x00,0xff,0x13]
sh.andn.t %d1, %d0, 31, %d0, 7

# CHECK-INST: sh.andn.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0x27,0x00,0x7f,0x1c]
sh.andn.t %d1, %d0, 31, %d0, 24

# CHECK-INST: sh.andn.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0x27,0x00,0xff,0x1f]
sh.andn.t %d1, %d0, 31, %d0, 31

# CHECK-INST: sh.andn.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0x27,0x10,0x7f,0x10]
sh.andn.t %d1, %d0, 31, %d1, 0

# CHECK-INST: sh.andn.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0x27,0x10,0xff,0x13]
sh.andn.t %d1, %d0, 31, %d1, 7

# CHECK-INST: sh.andn.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0x27,0x10,0x7f,0x1c]
sh.andn.t %d1, %d0, 31, %d1, 24

# CHECK-INST: sh.andn.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0x27,0x10,0xff,0x1f]
sh.andn.t %d1, %d0, 31, %d1, 31

# CHECK-INST: sh.andn.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x7f,0x10]
sh.andn.t %d1, %d0, 31, %d14, 0

# CHECK-INST: sh.andn.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xff,0x13]
sh.andn.t %d1, %d0, 31, %d14, 7

# CHECK-INST: sh.andn.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x7f,0x1c]
sh.andn.t %d1, %d0, 31, %d14, 24

# CHECK-INST: sh.andn.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xff,0x1f]
sh.andn.t %d1, %d0, 31, %d14, 31

# CHECK-INST: sh.andn.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x7f,0x10]
sh.andn.t %d1, %d0, 31, %d15, 0

# CHECK-INST: sh.andn.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xff,0x13]
sh.andn.t %d1, %d0, 31, %d15, 7

# CHECK-INST: sh.andn.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x7f,0x1c]
sh.andn.t %d1, %d0, 31, %d15, 24

# CHECK-INST: sh.andn.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xff,0x1f]
sh.andn.t %d1, %d0, 31, %d15, 31

# CHECK-INST: sh.andn.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0x27,0x01,0x60,0x10]
sh.andn.t %d1, %d1, 0, %d0, 0

# CHECK-INST: sh.andn.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0x27,0x01,0xe0,0x13]
sh.andn.t %d1, %d1, 0, %d0, 7

# CHECK-INST: sh.andn.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0x27,0x01,0x60,0x1c]
sh.andn.t %d1, %d1, 0, %d0, 24

# CHECK-INST: sh.andn.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0x27,0x01,0xe0,0x1f]
sh.andn.t %d1, %d1, 0, %d0, 31

# CHECK-INST: sh.andn.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0x27,0x11,0x60,0x10]
sh.andn.t %d1, %d1, 0, %d1, 0

# CHECK-INST: sh.andn.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0x27,0x11,0xe0,0x13]
sh.andn.t %d1, %d1, 0, %d1, 7

# CHECK-INST: sh.andn.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0x27,0x11,0x60,0x1c]
sh.andn.t %d1, %d1, 0, %d1, 24

# CHECK-INST: sh.andn.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0x27,0x11,0xe0,0x1f]
sh.andn.t %d1, %d1, 0, %d1, 31

# CHECK-INST: sh.andn.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x60,0x10]
sh.andn.t %d1, %d1, 0, %d14, 0

# CHECK-INST: sh.andn.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xe0,0x13]
sh.andn.t %d1, %d1, 0, %d14, 7

# CHECK-INST: sh.andn.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x60,0x1c]
sh.andn.t %d1, %d1, 0, %d14, 24

# CHECK-INST: sh.andn.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xe0,0x1f]
sh.andn.t %d1, %d1, 0, %d14, 31

# CHECK-INST: sh.andn.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x60,0x10]
sh.andn.t %d1, %d1, 0, %d15, 0

# CHECK-INST: sh.andn.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xe0,0x13]
sh.andn.t %d1, %d1, 0, %d15, 7

# CHECK-INST: sh.andn.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x60,0x1c]
sh.andn.t %d1, %d1, 0, %d15, 24

# CHECK-INST: sh.andn.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xe0,0x1f]
sh.andn.t %d1, %d1, 0, %d15, 31

# CHECK-INST: sh.andn.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0x27,0x01,0x67,0x10]
sh.andn.t %d1, %d1, 7, %d0, 0

# CHECK-INST: sh.andn.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0x27,0x01,0xe7,0x13]
sh.andn.t %d1, %d1, 7, %d0, 7

# CHECK-INST: sh.andn.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0x27,0x01,0x67,0x1c]
sh.andn.t %d1, %d1, 7, %d0, 24

# CHECK-INST: sh.andn.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0x27,0x01,0xe7,0x1f]
sh.andn.t %d1, %d1, 7, %d0, 31

# CHECK-INST: sh.andn.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0x27,0x11,0x67,0x10]
sh.andn.t %d1, %d1, 7, %d1, 0

# CHECK-INST: sh.andn.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0x27,0x11,0xe7,0x13]
sh.andn.t %d1, %d1, 7, %d1, 7

# CHECK-INST: sh.andn.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0x27,0x11,0x67,0x1c]
sh.andn.t %d1, %d1, 7, %d1, 24

# CHECK-INST: sh.andn.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0x27,0x11,0xe7,0x1f]
sh.andn.t %d1, %d1, 7, %d1, 31

# CHECK-INST: sh.andn.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x67,0x10]
sh.andn.t %d1, %d1, 7, %d14, 0

# CHECK-INST: sh.andn.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xe7,0x13]
sh.andn.t %d1, %d1, 7, %d14, 7

# CHECK-INST: sh.andn.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x67,0x1c]
sh.andn.t %d1, %d1, 7, %d14, 24

# CHECK-INST: sh.andn.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xe7,0x1f]
sh.andn.t %d1, %d1, 7, %d14, 31

# CHECK-INST: sh.andn.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x67,0x10]
sh.andn.t %d1, %d1, 7, %d15, 0

# CHECK-INST: sh.andn.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xe7,0x13]
sh.andn.t %d1, %d1, 7, %d15, 7

# CHECK-INST: sh.andn.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x67,0x1c]
sh.andn.t %d1, %d1, 7, %d15, 24

# CHECK-INST: sh.andn.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xe7,0x1f]
sh.andn.t %d1, %d1, 7, %d15, 31

# CHECK-INST: sh.andn.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0x27,0x01,0x78,0x10]
sh.andn.t %d1, %d1, 24, %d0, 0

# CHECK-INST: sh.andn.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0x27,0x01,0xf8,0x13]
sh.andn.t %d1, %d1, 24, %d0, 7

# CHECK-INST: sh.andn.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0x27,0x01,0x78,0x1c]
sh.andn.t %d1, %d1, 24, %d0, 24

# CHECK-INST: sh.andn.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0x27,0x01,0xf8,0x1f]
sh.andn.t %d1, %d1, 24, %d0, 31

# CHECK-INST: sh.andn.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0x27,0x11,0x78,0x10]
sh.andn.t %d1, %d1, 24, %d1, 0

# CHECK-INST: sh.andn.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0x27,0x11,0xf8,0x13]
sh.andn.t %d1, %d1, 24, %d1, 7

# CHECK-INST: sh.andn.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0x27,0x11,0x78,0x1c]
sh.andn.t %d1, %d1, 24, %d1, 24

# CHECK-INST: sh.andn.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0x27,0x11,0xf8,0x1f]
sh.andn.t %d1, %d1, 24, %d1, 31

# CHECK-INST: sh.andn.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x78,0x10]
sh.andn.t %d1, %d1, 24, %d14, 0

# CHECK-INST: sh.andn.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xf8,0x13]
sh.andn.t %d1, %d1, 24, %d14, 7

# CHECK-INST: sh.andn.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x78,0x1c]
sh.andn.t %d1, %d1, 24, %d14, 24

# CHECK-INST: sh.andn.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xf8,0x1f]
sh.andn.t %d1, %d1, 24, %d14, 31

# CHECK-INST: sh.andn.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x78,0x10]
sh.andn.t %d1, %d1, 24, %d15, 0

# CHECK-INST: sh.andn.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xf8,0x13]
sh.andn.t %d1, %d1, 24, %d15, 7

# CHECK-INST: sh.andn.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x78,0x1c]
sh.andn.t %d1, %d1, 24, %d15, 24

# CHECK-INST: sh.andn.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xf8,0x1f]
sh.andn.t %d1, %d1, 24, %d15, 31

# CHECK-INST: sh.andn.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0x27,0x01,0x7f,0x10]
sh.andn.t %d1, %d1, 31, %d0, 0

# CHECK-INST: sh.andn.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0x27,0x01,0xff,0x13]
sh.andn.t %d1, %d1, 31, %d0, 7

# CHECK-INST: sh.andn.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0x27,0x01,0x7f,0x1c]
sh.andn.t %d1, %d1, 31, %d0, 24

# CHECK-INST: sh.andn.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0x27,0x01,0xff,0x1f]
sh.andn.t %d1, %d1, 31, %d0, 31

# CHECK-INST: sh.andn.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0x27,0x11,0x7f,0x10]
sh.andn.t %d1, %d1, 31, %d1, 0

# CHECK-INST: sh.andn.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0x27,0x11,0xff,0x13]
sh.andn.t %d1, %d1, 31, %d1, 7

# CHECK-INST: sh.andn.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0x27,0x11,0x7f,0x1c]
sh.andn.t %d1, %d1, 31, %d1, 24

# CHECK-INST: sh.andn.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0x27,0x11,0xff,0x1f]
sh.andn.t %d1, %d1, 31, %d1, 31

# CHECK-INST: sh.andn.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x7f,0x10]
sh.andn.t %d1, %d1, 31, %d14, 0

# CHECK-INST: sh.andn.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xff,0x13]
sh.andn.t %d1, %d1, 31, %d14, 7

# CHECK-INST: sh.andn.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x7f,0x1c]
sh.andn.t %d1, %d1, 31, %d14, 24

# CHECK-INST: sh.andn.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xff,0x1f]
sh.andn.t %d1, %d1, 31, %d14, 31

# CHECK-INST: sh.andn.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x7f,0x10]
sh.andn.t %d1, %d1, 31, %d15, 0

# CHECK-INST: sh.andn.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xff,0x13]
sh.andn.t %d1, %d1, 31, %d15, 7

# CHECK-INST: sh.andn.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x7f,0x1c]
sh.andn.t %d1, %d1, 31, %d15, 24

# CHECK-INST: sh.andn.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xff,0x1f]
sh.andn.t %d1, %d1, 31, %d15, 31

# CHECK-INST: sh.andn.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x60,0x10]
sh.andn.t %d1, %d14, 0, %d0, 0

# CHECK-INST: sh.andn.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xe0,0x13]
sh.andn.t %d1, %d14, 0, %d0, 7

# CHECK-INST: sh.andn.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x60,0x1c]
sh.andn.t %d1, %d14, 0, %d0, 24

# CHECK-INST: sh.andn.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xe0,0x1f]
sh.andn.t %d1, %d14, 0, %d0, 31

# CHECK-INST: sh.andn.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x60,0x10]
sh.andn.t %d1, %d14, 0, %d1, 0

# CHECK-INST: sh.andn.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xe0,0x13]
sh.andn.t %d1, %d14, 0, %d1, 7

# CHECK-INST: sh.andn.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x60,0x1c]
sh.andn.t %d1, %d14, 0, %d1, 24

# CHECK-INST: sh.andn.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xe0,0x1f]
sh.andn.t %d1, %d14, 0, %d1, 31

# CHECK-INST: sh.andn.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0x27,0xee,0x60,0x10]
sh.andn.t %d1, %d14, 0, %d14, 0

# CHECK-INST: sh.andn.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0x27,0xee,0xe0,0x13]
sh.andn.t %d1, %d14, 0, %d14, 7

# CHECK-INST: sh.andn.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0x27,0xee,0x60,0x1c]
sh.andn.t %d1, %d14, 0, %d14, 24

# CHECK-INST: sh.andn.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0x27,0xee,0xe0,0x1f]
sh.andn.t %d1, %d14, 0, %d14, 31

# CHECK-INST: sh.andn.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x60,0x10]
sh.andn.t %d1, %d14, 0, %d15, 0

# CHECK-INST: sh.andn.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xe0,0x13]
sh.andn.t %d1, %d14, 0, %d15, 7

# CHECK-INST: sh.andn.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x60,0x1c]
sh.andn.t %d1, %d14, 0, %d15, 24

# CHECK-INST: sh.andn.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xe0,0x1f]
sh.andn.t %d1, %d14, 0, %d15, 31

# CHECK-INST: sh.andn.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x67,0x10]
sh.andn.t %d1, %d14, 7, %d0, 0

# CHECK-INST: sh.andn.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xe7,0x13]
sh.andn.t %d1, %d14, 7, %d0, 7

# CHECK-INST: sh.andn.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x67,0x1c]
sh.andn.t %d1, %d14, 7, %d0, 24

# CHECK-INST: sh.andn.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xe7,0x1f]
sh.andn.t %d1, %d14, 7, %d0, 31

# CHECK-INST: sh.andn.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x67,0x10]
sh.andn.t %d1, %d14, 7, %d1, 0

# CHECK-INST: sh.andn.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xe7,0x13]
sh.andn.t %d1, %d14, 7, %d1, 7

# CHECK-INST: sh.andn.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x67,0x1c]
sh.andn.t %d1, %d14, 7, %d1, 24

# CHECK-INST: sh.andn.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xe7,0x1f]
sh.andn.t %d1, %d14, 7, %d1, 31

# CHECK-INST: sh.andn.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0x27,0xee,0x67,0x10]
sh.andn.t %d1, %d14, 7, %d14, 0

# CHECK-INST: sh.andn.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0x27,0xee,0xe7,0x13]
sh.andn.t %d1, %d14, 7, %d14, 7

# CHECK-INST: sh.andn.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0x27,0xee,0x67,0x1c]
sh.andn.t %d1, %d14, 7, %d14, 24

# CHECK-INST: sh.andn.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0x27,0xee,0xe7,0x1f]
sh.andn.t %d1, %d14, 7, %d14, 31

# CHECK-INST: sh.andn.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x67,0x10]
sh.andn.t %d1, %d14, 7, %d15, 0

# CHECK-INST: sh.andn.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xe7,0x13]
sh.andn.t %d1, %d14, 7, %d15, 7

# CHECK-INST: sh.andn.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x67,0x1c]
sh.andn.t %d1, %d14, 7, %d15, 24

# CHECK-INST: sh.andn.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xe7,0x1f]
sh.andn.t %d1, %d14, 7, %d15, 31

# CHECK-INST: sh.andn.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x78,0x10]
sh.andn.t %d1, %d14, 24, %d0, 0

# CHECK-INST: sh.andn.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xf8,0x13]
sh.andn.t %d1, %d14, 24, %d0, 7

# CHECK-INST: sh.andn.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x78,0x1c]
sh.andn.t %d1, %d14, 24, %d0, 24

# CHECK-INST: sh.andn.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xf8,0x1f]
sh.andn.t %d1, %d14, 24, %d0, 31

# CHECK-INST: sh.andn.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x78,0x10]
sh.andn.t %d1, %d14, 24, %d1, 0

# CHECK-INST: sh.andn.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xf8,0x13]
sh.andn.t %d1, %d14, 24, %d1, 7

# CHECK-INST: sh.andn.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x78,0x1c]
sh.andn.t %d1, %d14, 24, %d1, 24

# CHECK-INST: sh.andn.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xf8,0x1f]
sh.andn.t %d1, %d14, 24, %d1, 31

# CHECK-INST: sh.andn.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0x27,0xee,0x78,0x10]
sh.andn.t %d1, %d14, 24, %d14, 0

# CHECK-INST: sh.andn.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0x27,0xee,0xf8,0x13]
sh.andn.t %d1, %d14, 24, %d14, 7

# CHECK-INST: sh.andn.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0x27,0xee,0x78,0x1c]
sh.andn.t %d1, %d14, 24, %d14, 24

# CHECK-INST: sh.andn.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0x27,0xee,0xf8,0x1f]
sh.andn.t %d1, %d14, 24, %d14, 31

# CHECK-INST: sh.andn.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x78,0x10]
sh.andn.t %d1, %d14, 24, %d15, 0

# CHECK-INST: sh.andn.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xf8,0x13]
sh.andn.t %d1, %d14, 24, %d15, 7

# CHECK-INST: sh.andn.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x78,0x1c]
sh.andn.t %d1, %d14, 24, %d15, 24

# CHECK-INST: sh.andn.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xf8,0x1f]
sh.andn.t %d1, %d14, 24, %d15, 31

# CHECK-INST: sh.andn.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x7f,0x10]
sh.andn.t %d1, %d14, 31, %d0, 0

# CHECK-INST: sh.andn.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xff,0x13]
sh.andn.t %d1, %d14, 31, %d0, 7

# CHECK-INST: sh.andn.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x7f,0x1c]
sh.andn.t %d1, %d14, 31, %d0, 24

# CHECK-INST: sh.andn.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xff,0x1f]
sh.andn.t %d1, %d14, 31, %d0, 31

# CHECK-INST: sh.andn.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x7f,0x10]
sh.andn.t %d1, %d14, 31, %d1, 0

# CHECK-INST: sh.andn.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xff,0x13]
sh.andn.t %d1, %d14, 31, %d1, 7

# CHECK-INST: sh.andn.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x7f,0x1c]
sh.andn.t %d1, %d14, 31, %d1, 24

# CHECK-INST: sh.andn.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xff,0x1f]
sh.andn.t %d1, %d14, 31, %d1, 31

# CHECK-INST: sh.andn.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0x27,0xee,0x7f,0x10]
sh.andn.t %d1, %d14, 31, %d14, 0

# CHECK-INST: sh.andn.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0x27,0xee,0xff,0x13]
sh.andn.t %d1, %d14, 31, %d14, 7

# CHECK-INST: sh.andn.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0x27,0xee,0x7f,0x1c]
sh.andn.t %d1, %d14, 31, %d14, 24

# CHECK-INST: sh.andn.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0x27,0xee,0xff,0x1f]
sh.andn.t %d1, %d14, 31, %d14, 31

# CHECK-INST: sh.andn.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x7f,0x10]
sh.andn.t %d1, %d14, 31, %d15, 0

# CHECK-INST: sh.andn.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xff,0x13]
sh.andn.t %d1, %d14, 31, %d15, 7

# CHECK-INST: sh.andn.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x7f,0x1c]
sh.andn.t %d1, %d14, 31, %d15, 24

# CHECK-INST: sh.andn.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xff,0x1f]
sh.andn.t %d1, %d14, 31, %d15, 31

# CHECK-INST: sh.andn.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x60,0x10]
sh.andn.t %d1, %d15, 0, %d0, 0

# CHECK-INST: sh.andn.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xe0,0x13]
sh.andn.t %d1, %d15, 0, %d0, 7

# CHECK-INST: sh.andn.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x60,0x1c]
sh.andn.t %d1, %d15, 0, %d0, 24

# CHECK-INST: sh.andn.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xe0,0x1f]
sh.andn.t %d1, %d15, 0, %d0, 31

# CHECK-INST: sh.andn.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x60,0x10]
sh.andn.t %d1, %d15, 0, %d1, 0

# CHECK-INST: sh.andn.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xe0,0x13]
sh.andn.t %d1, %d15, 0, %d1, 7

# CHECK-INST: sh.andn.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x60,0x1c]
sh.andn.t %d1, %d15, 0, %d1, 24

# CHECK-INST: sh.andn.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xe0,0x1f]
sh.andn.t %d1, %d15, 0, %d1, 31

# CHECK-INST: sh.andn.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0x27,0xef,0x60,0x10]
sh.andn.t %d1, %d15, 0, %d14, 0

# CHECK-INST: sh.andn.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0x27,0xef,0xe0,0x13]
sh.andn.t %d1, %d15, 0, %d14, 7

# CHECK-INST: sh.andn.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0x27,0xef,0x60,0x1c]
sh.andn.t %d1, %d15, 0, %d14, 24

# CHECK-INST: sh.andn.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0x27,0xef,0xe0,0x1f]
sh.andn.t %d1, %d15, 0, %d14, 31

# CHECK-INST: sh.andn.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0x27,0xff,0x60,0x10]
sh.andn.t %d1, %d15, 0, %d15, 0

# CHECK-INST: sh.andn.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0x27,0xff,0xe0,0x13]
sh.andn.t %d1, %d15, 0, %d15, 7

# CHECK-INST: sh.andn.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0x27,0xff,0x60,0x1c]
sh.andn.t %d1, %d15, 0, %d15, 24

# CHECK-INST: sh.andn.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0x27,0xff,0xe0,0x1f]
sh.andn.t %d1, %d15, 0, %d15, 31

# CHECK-INST: sh.andn.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x67,0x10]
sh.andn.t %d1, %d15, 7, %d0, 0

# CHECK-INST: sh.andn.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xe7,0x13]
sh.andn.t %d1, %d15, 7, %d0, 7

# CHECK-INST: sh.andn.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x67,0x1c]
sh.andn.t %d1, %d15, 7, %d0, 24

# CHECK-INST: sh.andn.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xe7,0x1f]
sh.andn.t %d1, %d15, 7, %d0, 31

# CHECK-INST: sh.andn.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x67,0x10]
sh.andn.t %d1, %d15, 7, %d1, 0

# CHECK-INST: sh.andn.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xe7,0x13]
sh.andn.t %d1, %d15, 7, %d1, 7

# CHECK-INST: sh.andn.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x67,0x1c]
sh.andn.t %d1, %d15, 7, %d1, 24

# CHECK-INST: sh.andn.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xe7,0x1f]
sh.andn.t %d1, %d15, 7, %d1, 31

# CHECK-INST: sh.andn.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0x27,0xef,0x67,0x10]
sh.andn.t %d1, %d15, 7, %d14, 0

# CHECK-INST: sh.andn.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0x27,0xef,0xe7,0x13]
sh.andn.t %d1, %d15, 7, %d14, 7

# CHECK-INST: sh.andn.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0x27,0xef,0x67,0x1c]
sh.andn.t %d1, %d15, 7, %d14, 24

# CHECK-INST: sh.andn.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0x27,0xef,0xe7,0x1f]
sh.andn.t %d1, %d15, 7, %d14, 31

# CHECK-INST: sh.andn.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0x27,0xff,0x67,0x10]
sh.andn.t %d1, %d15, 7, %d15, 0

# CHECK-INST: sh.andn.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0x27,0xff,0xe7,0x13]
sh.andn.t %d1, %d15, 7, %d15, 7

# CHECK-INST: sh.andn.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0x27,0xff,0x67,0x1c]
sh.andn.t %d1, %d15, 7, %d15, 24

# CHECK-INST: sh.andn.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0x27,0xff,0xe7,0x1f]
sh.andn.t %d1, %d15, 7, %d15, 31

# CHECK-INST: sh.andn.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x78,0x10]
sh.andn.t %d1, %d15, 24, %d0, 0

# CHECK-INST: sh.andn.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xf8,0x13]
sh.andn.t %d1, %d15, 24, %d0, 7

# CHECK-INST: sh.andn.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x78,0x1c]
sh.andn.t %d1, %d15, 24, %d0, 24

# CHECK-INST: sh.andn.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xf8,0x1f]
sh.andn.t %d1, %d15, 24, %d0, 31

# CHECK-INST: sh.andn.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x78,0x10]
sh.andn.t %d1, %d15, 24, %d1, 0

# CHECK-INST: sh.andn.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xf8,0x13]
sh.andn.t %d1, %d15, 24, %d1, 7

# CHECK-INST: sh.andn.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x78,0x1c]
sh.andn.t %d1, %d15, 24, %d1, 24

# CHECK-INST: sh.andn.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xf8,0x1f]
sh.andn.t %d1, %d15, 24, %d1, 31

# CHECK-INST: sh.andn.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0x27,0xef,0x78,0x10]
sh.andn.t %d1, %d15, 24, %d14, 0

# CHECK-INST: sh.andn.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0x27,0xef,0xf8,0x13]
sh.andn.t %d1, %d15, 24, %d14, 7

# CHECK-INST: sh.andn.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0x27,0xef,0x78,0x1c]
sh.andn.t %d1, %d15, 24, %d14, 24

# CHECK-INST: sh.andn.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0x27,0xef,0xf8,0x1f]
sh.andn.t %d1, %d15, 24, %d14, 31

# CHECK-INST: sh.andn.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0x27,0xff,0x78,0x10]
sh.andn.t %d1, %d15, 24, %d15, 0

# CHECK-INST: sh.andn.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0x27,0xff,0xf8,0x13]
sh.andn.t %d1, %d15, 24, %d15, 7

# CHECK-INST: sh.andn.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0x27,0xff,0x78,0x1c]
sh.andn.t %d1, %d15, 24, %d15, 24

# CHECK-INST: sh.andn.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0x27,0xff,0xf8,0x1f]
sh.andn.t %d1, %d15, 24, %d15, 31

# CHECK-INST: sh.andn.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x7f,0x10]
sh.andn.t %d1, %d15, 31, %d0, 0

# CHECK-INST: sh.andn.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xff,0x13]
sh.andn.t %d1, %d15, 31, %d0, 7

# CHECK-INST: sh.andn.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x7f,0x1c]
sh.andn.t %d1, %d15, 31, %d0, 24

# CHECK-INST: sh.andn.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xff,0x1f]
sh.andn.t %d1, %d15, 31, %d0, 31

# CHECK-INST: sh.andn.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x7f,0x10]
sh.andn.t %d1, %d15, 31, %d1, 0

# CHECK-INST: sh.andn.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xff,0x13]
sh.andn.t %d1, %d15, 31, %d1, 7

# CHECK-INST: sh.andn.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x7f,0x1c]
sh.andn.t %d1, %d15, 31, %d1, 24

# CHECK-INST: sh.andn.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xff,0x1f]
sh.andn.t %d1, %d15, 31, %d1, 31

# CHECK-INST: sh.andn.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0x27,0xef,0x7f,0x10]
sh.andn.t %d1, %d15, 31, %d14, 0

# CHECK-INST: sh.andn.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0x27,0xef,0xff,0x13]
sh.andn.t %d1, %d15, 31, %d14, 7

# CHECK-INST: sh.andn.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0x27,0xef,0x7f,0x1c]
sh.andn.t %d1, %d15, 31, %d14, 24

# CHECK-INST: sh.andn.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0x27,0xef,0xff,0x1f]
sh.andn.t %d1, %d15, 31, %d14, 31

# CHECK-INST: sh.andn.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0x27,0xff,0x7f,0x10]
sh.andn.t %d1, %d15, 31, %d15, 0

# CHECK-INST: sh.andn.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0x27,0xff,0xff,0x13]
sh.andn.t %d1, %d15, 31, %d15, 7

# CHECK-INST: sh.andn.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0x27,0xff,0x7f,0x1c]
sh.andn.t %d1, %d15, 31, %d15, 24

# CHECK-INST: sh.andn.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0x27,0xff,0xff,0x1f]
sh.andn.t %d1, %d15, 31, %d15, 31

# CHECK-INST: sh.andn.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x60,0xe0]
sh.andn.t %d14, %d0, 0, %d0, 0

# CHECK-INST: sh.andn.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0x27,0x00,0xe0,0xe3]
sh.andn.t %d14, %d0, 0, %d0, 7

# CHECK-INST: sh.andn.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0x27,0x00,0x60,0xec]
sh.andn.t %d14, %d0, 0, %d0, 24

# CHECK-INST: sh.andn.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0x27,0x00,0xe0,0xef]
sh.andn.t %d14, %d0, 0, %d0, 31

# CHECK-INST: sh.andn.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0x27,0x10,0x60,0xe0]
sh.andn.t %d14, %d0, 0, %d1, 0

# CHECK-INST: sh.andn.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0x27,0x10,0xe0,0xe3]
sh.andn.t %d14, %d0, 0, %d1, 7

# CHECK-INST: sh.andn.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0x27,0x10,0x60,0xec]
sh.andn.t %d14, %d0, 0, %d1, 24

# CHECK-INST: sh.andn.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0x27,0x10,0xe0,0xef]
sh.andn.t %d14, %d0, 0, %d1, 31

# CHECK-INST: sh.andn.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x60,0xe0]
sh.andn.t %d14, %d0, 0, %d14, 0

# CHECK-INST: sh.andn.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xe0,0xe3]
sh.andn.t %d14, %d0, 0, %d14, 7

# CHECK-INST: sh.andn.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x60,0xec]
sh.andn.t %d14, %d0, 0, %d14, 24

# CHECK-INST: sh.andn.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xe0,0xef]
sh.andn.t %d14, %d0, 0, %d14, 31

# CHECK-INST: sh.andn.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x60,0xe0]
sh.andn.t %d14, %d0, 0, %d15, 0

# CHECK-INST: sh.andn.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xe0,0xe3]
sh.andn.t %d14, %d0, 0, %d15, 7

# CHECK-INST: sh.andn.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x60,0xec]
sh.andn.t %d14, %d0, 0, %d15, 24

# CHECK-INST: sh.andn.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xe0,0xef]
sh.andn.t %d14, %d0, 0, %d15, 31

# CHECK-INST: sh.andn.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0x27,0x00,0x67,0xe0]
sh.andn.t %d14, %d0, 7, %d0, 0

# CHECK-INST: sh.andn.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0x27,0x00,0xe7,0xe3]
sh.andn.t %d14, %d0, 7, %d0, 7

# CHECK-INST: sh.andn.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0x27,0x00,0x67,0xec]
sh.andn.t %d14, %d0, 7, %d0, 24

# CHECK-INST: sh.andn.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0x27,0x00,0xe7,0xef]
sh.andn.t %d14, %d0, 7, %d0, 31

# CHECK-INST: sh.andn.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0x27,0x10,0x67,0xe0]
sh.andn.t %d14, %d0, 7, %d1, 0

# CHECK-INST: sh.andn.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0x27,0x10,0xe7,0xe3]
sh.andn.t %d14, %d0, 7, %d1, 7

# CHECK-INST: sh.andn.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0x27,0x10,0x67,0xec]
sh.andn.t %d14, %d0, 7, %d1, 24

# CHECK-INST: sh.andn.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0x27,0x10,0xe7,0xef]
sh.andn.t %d14, %d0, 7, %d1, 31

# CHECK-INST: sh.andn.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x67,0xe0]
sh.andn.t %d14, %d0, 7, %d14, 0

# CHECK-INST: sh.andn.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xe7,0xe3]
sh.andn.t %d14, %d0, 7, %d14, 7

# CHECK-INST: sh.andn.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x67,0xec]
sh.andn.t %d14, %d0, 7, %d14, 24

# CHECK-INST: sh.andn.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xe7,0xef]
sh.andn.t %d14, %d0, 7, %d14, 31

# CHECK-INST: sh.andn.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x67,0xe0]
sh.andn.t %d14, %d0, 7, %d15, 0

# CHECK-INST: sh.andn.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xe7,0xe3]
sh.andn.t %d14, %d0, 7, %d15, 7

# CHECK-INST: sh.andn.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x67,0xec]
sh.andn.t %d14, %d0, 7, %d15, 24

# CHECK-INST: sh.andn.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xe7,0xef]
sh.andn.t %d14, %d0, 7, %d15, 31

# CHECK-INST: sh.andn.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0x27,0x00,0x78,0xe0]
sh.andn.t %d14, %d0, 24, %d0, 0

# CHECK-INST: sh.andn.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0x27,0x00,0xf8,0xe3]
sh.andn.t %d14, %d0, 24, %d0, 7

# CHECK-INST: sh.andn.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0x27,0x00,0x78,0xec]
sh.andn.t %d14, %d0, 24, %d0, 24

# CHECK-INST: sh.andn.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0x27,0x00,0xf8,0xef]
sh.andn.t %d14, %d0, 24, %d0, 31

# CHECK-INST: sh.andn.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0x27,0x10,0x78,0xe0]
sh.andn.t %d14, %d0, 24, %d1, 0

# CHECK-INST: sh.andn.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0x27,0x10,0xf8,0xe3]
sh.andn.t %d14, %d0, 24, %d1, 7

# CHECK-INST: sh.andn.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0x27,0x10,0x78,0xec]
sh.andn.t %d14, %d0, 24, %d1, 24

# CHECK-INST: sh.andn.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0x27,0x10,0xf8,0xef]
sh.andn.t %d14, %d0, 24, %d1, 31

# CHECK-INST: sh.andn.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x78,0xe0]
sh.andn.t %d14, %d0, 24, %d14, 0

# CHECK-INST: sh.andn.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xf8,0xe3]
sh.andn.t %d14, %d0, 24, %d14, 7

# CHECK-INST: sh.andn.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x78,0xec]
sh.andn.t %d14, %d0, 24, %d14, 24

# CHECK-INST: sh.andn.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xf8,0xef]
sh.andn.t %d14, %d0, 24, %d14, 31

# CHECK-INST: sh.andn.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x78,0xe0]
sh.andn.t %d14, %d0, 24, %d15, 0

# CHECK-INST: sh.andn.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xf8,0xe3]
sh.andn.t %d14, %d0, 24, %d15, 7

# CHECK-INST: sh.andn.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x78,0xec]
sh.andn.t %d14, %d0, 24, %d15, 24

# CHECK-INST: sh.andn.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xf8,0xef]
sh.andn.t %d14, %d0, 24, %d15, 31

# CHECK-INST: sh.andn.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0x27,0x00,0x7f,0xe0]
sh.andn.t %d14, %d0, 31, %d0, 0

# CHECK-INST: sh.andn.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0x27,0x00,0xff,0xe3]
sh.andn.t %d14, %d0, 31, %d0, 7

# CHECK-INST: sh.andn.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0x27,0x00,0x7f,0xec]
sh.andn.t %d14, %d0, 31, %d0, 24

# CHECK-INST: sh.andn.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0x27,0x00,0xff,0xef]
sh.andn.t %d14, %d0, 31, %d0, 31

# CHECK-INST: sh.andn.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0x27,0x10,0x7f,0xe0]
sh.andn.t %d14, %d0, 31, %d1, 0

# CHECK-INST: sh.andn.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0x27,0x10,0xff,0xe3]
sh.andn.t %d14, %d0, 31, %d1, 7

# CHECK-INST: sh.andn.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0x27,0x10,0x7f,0xec]
sh.andn.t %d14, %d0, 31, %d1, 24

# CHECK-INST: sh.andn.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0x27,0x10,0xff,0xef]
sh.andn.t %d14, %d0, 31, %d1, 31

# CHECK-INST: sh.andn.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x7f,0xe0]
sh.andn.t %d14, %d0, 31, %d14, 0

# CHECK-INST: sh.andn.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xff,0xe3]
sh.andn.t %d14, %d0, 31, %d14, 7

# CHECK-INST: sh.andn.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x7f,0xec]
sh.andn.t %d14, %d0, 31, %d14, 24

# CHECK-INST: sh.andn.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xff,0xef]
sh.andn.t %d14, %d0, 31, %d14, 31

# CHECK-INST: sh.andn.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x7f,0xe0]
sh.andn.t %d14, %d0, 31, %d15, 0

# CHECK-INST: sh.andn.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xff,0xe3]
sh.andn.t %d14, %d0, 31, %d15, 7

# CHECK-INST: sh.andn.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x7f,0xec]
sh.andn.t %d14, %d0, 31, %d15, 24

# CHECK-INST: sh.andn.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xff,0xef]
sh.andn.t %d14, %d0, 31, %d15, 31

# CHECK-INST: sh.andn.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0x27,0x01,0x60,0xe0]
sh.andn.t %d14, %d1, 0, %d0, 0

# CHECK-INST: sh.andn.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0x27,0x01,0xe0,0xe3]
sh.andn.t %d14, %d1, 0, %d0, 7

# CHECK-INST: sh.andn.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0x27,0x01,0x60,0xec]
sh.andn.t %d14, %d1, 0, %d0, 24

# CHECK-INST: sh.andn.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0x27,0x01,0xe0,0xef]
sh.andn.t %d14, %d1, 0, %d0, 31

# CHECK-INST: sh.andn.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0x27,0x11,0x60,0xe0]
sh.andn.t %d14, %d1, 0, %d1, 0

# CHECK-INST: sh.andn.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0x27,0x11,0xe0,0xe3]
sh.andn.t %d14, %d1, 0, %d1, 7

# CHECK-INST: sh.andn.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0x27,0x11,0x60,0xec]
sh.andn.t %d14, %d1, 0, %d1, 24

# CHECK-INST: sh.andn.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0x27,0x11,0xe0,0xef]
sh.andn.t %d14, %d1, 0, %d1, 31

# CHECK-INST: sh.andn.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x60,0xe0]
sh.andn.t %d14, %d1, 0, %d14, 0

# CHECK-INST: sh.andn.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xe0,0xe3]
sh.andn.t %d14, %d1, 0, %d14, 7

# CHECK-INST: sh.andn.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x60,0xec]
sh.andn.t %d14, %d1, 0, %d14, 24

# CHECK-INST: sh.andn.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xe0,0xef]
sh.andn.t %d14, %d1, 0, %d14, 31

# CHECK-INST: sh.andn.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x60,0xe0]
sh.andn.t %d14, %d1, 0, %d15, 0

# CHECK-INST: sh.andn.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xe0,0xe3]
sh.andn.t %d14, %d1, 0, %d15, 7

# CHECK-INST: sh.andn.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x60,0xec]
sh.andn.t %d14, %d1, 0, %d15, 24

# CHECK-INST: sh.andn.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xe0,0xef]
sh.andn.t %d14, %d1, 0, %d15, 31

# CHECK-INST: sh.andn.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0x27,0x01,0x67,0xe0]
sh.andn.t %d14, %d1, 7, %d0, 0

# CHECK-INST: sh.andn.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0x27,0x01,0xe7,0xe3]
sh.andn.t %d14, %d1, 7, %d0, 7

# CHECK-INST: sh.andn.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0x27,0x01,0x67,0xec]
sh.andn.t %d14, %d1, 7, %d0, 24

# CHECK-INST: sh.andn.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0x27,0x01,0xe7,0xef]
sh.andn.t %d14, %d1, 7, %d0, 31

# CHECK-INST: sh.andn.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0x27,0x11,0x67,0xe0]
sh.andn.t %d14, %d1, 7, %d1, 0

# CHECK-INST: sh.andn.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0x27,0x11,0xe7,0xe3]
sh.andn.t %d14, %d1, 7, %d1, 7

# CHECK-INST: sh.andn.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0x27,0x11,0x67,0xec]
sh.andn.t %d14, %d1, 7, %d1, 24

# CHECK-INST: sh.andn.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0x27,0x11,0xe7,0xef]
sh.andn.t %d14, %d1, 7, %d1, 31

# CHECK-INST: sh.andn.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x67,0xe0]
sh.andn.t %d14, %d1, 7, %d14, 0

# CHECK-INST: sh.andn.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xe7,0xe3]
sh.andn.t %d14, %d1, 7, %d14, 7

# CHECK-INST: sh.andn.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x67,0xec]
sh.andn.t %d14, %d1, 7, %d14, 24

# CHECK-INST: sh.andn.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xe7,0xef]
sh.andn.t %d14, %d1, 7, %d14, 31

# CHECK-INST: sh.andn.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x67,0xe0]
sh.andn.t %d14, %d1, 7, %d15, 0

# CHECK-INST: sh.andn.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xe7,0xe3]
sh.andn.t %d14, %d1, 7, %d15, 7

# CHECK-INST: sh.andn.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x67,0xec]
sh.andn.t %d14, %d1, 7, %d15, 24

# CHECK-INST: sh.andn.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xe7,0xef]
sh.andn.t %d14, %d1, 7, %d15, 31

# CHECK-INST: sh.andn.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0x27,0x01,0x78,0xe0]
sh.andn.t %d14, %d1, 24, %d0, 0

# CHECK-INST: sh.andn.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0x27,0x01,0xf8,0xe3]
sh.andn.t %d14, %d1, 24, %d0, 7

# CHECK-INST: sh.andn.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0x27,0x01,0x78,0xec]
sh.andn.t %d14, %d1, 24, %d0, 24

# CHECK-INST: sh.andn.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0x27,0x01,0xf8,0xef]
sh.andn.t %d14, %d1, 24, %d0, 31

# CHECK-INST: sh.andn.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0x27,0x11,0x78,0xe0]
sh.andn.t %d14, %d1, 24, %d1, 0

# CHECK-INST: sh.andn.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0x27,0x11,0xf8,0xe3]
sh.andn.t %d14, %d1, 24, %d1, 7

# CHECK-INST: sh.andn.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0x27,0x11,0x78,0xec]
sh.andn.t %d14, %d1, 24, %d1, 24

# CHECK-INST: sh.andn.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0x27,0x11,0xf8,0xef]
sh.andn.t %d14, %d1, 24, %d1, 31

# CHECK-INST: sh.andn.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x78,0xe0]
sh.andn.t %d14, %d1, 24, %d14, 0

# CHECK-INST: sh.andn.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xf8,0xe3]
sh.andn.t %d14, %d1, 24, %d14, 7

# CHECK-INST: sh.andn.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x78,0xec]
sh.andn.t %d14, %d1, 24, %d14, 24

# CHECK-INST: sh.andn.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xf8,0xef]
sh.andn.t %d14, %d1, 24, %d14, 31

# CHECK-INST: sh.andn.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x78,0xe0]
sh.andn.t %d14, %d1, 24, %d15, 0

# CHECK-INST: sh.andn.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xf8,0xe3]
sh.andn.t %d14, %d1, 24, %d15, 7

# CHECK-INST: sh.andn.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x78,0xec]
sh.andn.t %d14, %d1, 24, %d15, 24

# CHECK-INST: sh.andn.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xf8,0xef]
sh.andn.t %d14, %d1, 24, %d15, 31

# CHECK-INST: sh.andn.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0x27,0x01,0x7f,0xe0]
sh.andn.t %d14, %d1, 31, %d0, 0

# CHECK-INST: sh.andn.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0x27,0x01,0xff,0xe3]
sh.andn.t %d14, %d1, 31, %d0, 7

# CHECK-INST: sh.andn.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0x27,0x01,0x7f,0xec]
sh.andn.t %d14, %d1, 31, %d0, 24

# CHECK-INST: sh.andn.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0x27,0x01,0xff,0xef]
sh.andn.t %d14, %d1, 31, %d0, 31

# CHECK-INST: sh.andn.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0x27,0x11,0x7f,0xe0]
sh.andn.t %d14, %d1, 31, %d1, 0

# CHECK-INST: sh.andn.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0x27,0x11,0xff,0xe3]
sh.andn.t %d14, %d1, 31, %d1, 7

# CHECK-INST: sh.andn.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0x27,0x11,0x7f,0xec]
sh.andn.t %d14, %d1, 31, %d1, 24

# CHECK-INST: sh.andn.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0x27,0x11,0xff,0xef]
sh.andn.t %d14, %d1, 31, %d1, 31

# CHECK-INST: sh.andn.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x7f,0xe0]
sh.andn.t %d14, %d1, 31, %d14, 0

# CHECK-INST: sh.andn.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xff,0xe3]
sh.andn.t %d14, %d1, 31, %d14, 7

# CHECK-INST: sh.andn.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x7f,0xec]
sh.andn.t %d14, %d1, 31, %d14, 24

# CHECK-INST: sh.andn.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xff,0xef]
sh.andn.t %d14, %d1, 31, %d14, 31

# CHECK-INST: sh.andn.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x7f,0xe0]
sh.andn.t %d14, %d1, 31, %d15, 0

# CHECK-INST: sh.andn.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xff,0xe3]
sh.andn.t %d14, %d1, 31, %d15, 7

# CHECK-INST: sh.andn.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x7f,0xec]
sh.andn.t %d14, %d1, 31, %d15, 24

# CHECK-INST: sh.andn.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xff,0xef]
sh.andn.t %d14, %d1, 31, %d15, 31

# CHECK-INST: sh.andn.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x60,0xe0]
sh.andn.t %d14, %d14, 0, %d0, 0

# CHECK-INST: sh.andn.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xe0,0xe3]
sh.andn.t %d14, %d14, 0, %d0, 7

# CHECK-INST: sh.andn.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x60,0xec]
sh.andn.t %d14, %d14, 0, %d0, 24

# CHECK-INST: sh.andn.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xe0,0xef]
sh.andn.t %d14, %d14, 0, %d0, 31

# CHECK-INST: sh.andn.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x60,0xe0]
sh.andn.t %d14, %d14, 0, %d1, 0

# CHECK-INST: sh.andn.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xe0,0xe3]
sh.andn.t %d14, %d14, 0, %d1, 7

# CHECK-INST: sh.andn.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x60,0xec]
sh.andn.t %d14, %d14, 0, %d1, 24

# CHECK-INST: sh.andn.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xe0,0xef]
sh.andn.t %d14, %d14, 0, %d1, 31

# CHECK-INST: sh.andn.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0x27,0xee,0x60,0xe0]
sh.andn.t %d14, %d14, 0, %d14, 0

# CHECK-INST: sh.andn.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0x27,0xee,0xe0,0xe3]
sh.andn.t %d14, %d14, 0, %d14, 7

# CHECK-INST: sh.andn.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0x27,0xee,0x60,0xec]
sh.andn.t %d14, %d14, 0, %d14, 24

# CHECK-INST: sh.andn.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0x27,0xee,0xe0,0xef]
sh.andn.t %d14, %d14, 0, %d14, 31

# CHECK-INST: sh.andn.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x60,0xe0]
sh.andn.t %d14, %d14, 0, %d15, 0

# CHECK-INST: sh.andn.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xe0,0xe3]
sh.andn.t %d14, %d14, 0, %d15, 7

# CHECK-INST: sh.andn.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x60,0xec]
sh.andn.t %d14, %d14, 0, %d15, 24

# CHECK-INST: sh.andn.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xe0,0xef]
sh.andn.t %d14, %d14, 0, %d15, 31

# CHECK-INST: sh.andn.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x67,0xe0]
sh.andn.t %d14, %d14, 7, %d0, 0

# CHECK-INST: sh.andn.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xe7,0xe3]
sh.andn.t %d14, %d14, 7, %d0, 7

# CHECK-INST: sh.andn.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x67,0xec]
sh.andn.t %d14, %d14, 7, %d0, 24

# CHECK-INST: sh.andn.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xe7,0xef]
sh.andn.t %d14, %d14, 7, %d0, 31

# CHECK-INST: sh.andn.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x67,0xe0]
sh.andn.t %d14, %d14, 7, %d1, 0

# CHECK-INST: sh.andn.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xe7,0xe3]
sh.andn.t %d14, %d14, 7, %d1, 7

# CHECK-INST: sh.andn.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x67,0xec]
sh.andn.t %d14, %d14, 7, %d1, 24

# CHECK-INST: sh.andn.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xe7,0xef]
sh.andn.t %d14, %d14, 7, %d1, 31

# CHECK-INST: sh.andn.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0x27,0xee,0x67,0xe0]
sh.andn.t %d14, %d14, 7, %d14, 0

# CHECK-INST: sh.andn.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0x27,0xee,0xe7,0xe3]
sh.andn.t %d14, %d14, 7, %d14, 7

# CHECK-INST: sh.andn.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0x27,0xee,0x67,0xec]
sh.andn.t %d14, %d14, 7, %d14, 24

# CHECK-INST: sh.andn.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0x27,0xee,0xe7,0xef]
sh.andn.t %d14, %d14, 7, %d14, 31

# CHECK-INST: sh.andn.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x67,0xe0]
sh.andn.t %d14, %d14, 7, %d15, 0

# CHECK-INST: sh.andn.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xe7,0xe3]
sh.andn.t %d14, %d14, 7, %d15, 7

# CHECK-INST: sh.andn.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x67,0xec]
sh.andn.t %d14, %d14, 7, %d15, 24

# CHECK-INST: sh.andn.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xe7,0xef]
sh.andn.t %d14, %d14, 7, %d15, 31

# CHECK-INST: sh.andn.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x78,0xe0]
sh.andn.t %d14, %d14, 24, %d0, 0

# CHECK-INST: sh.andn.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xf8,0xe3]
sh.andn.t %d14, %d14, 24, %d0, 7

# CHECK-INST: sh.andn.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x78,0xec]
sh.andn.t %d14, %d14, 24, %d0, 24

# CHECK-INST: sh.andn.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xf8,0xef]
sh.andn.t %d14, %d14, 24, %d0, 31

# CHECK-INST: sh.andn.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x78,0xe0]
sh.andn.t %d14, %d14, 24, %d1, 0

# CHECK-INST: sh.andn.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xf8,0xe3]
sh.andn.t %d14, %d14, 24, %d1, 7

# CHECK-INST: sh.andn.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x78,0xec]
sh.andn.t %d14, %d14, 24, %d1, 24

# CHECK-INST: sh.andn.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xf8,0xef]
sh.andn.t %d14, %d14, 24, %d1, 31

# CHECK-INST: sh.andn.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0x27,0xee,0x78,0xe0]
sh.andn.t %d14, %d14, 24, %d14, 0

# CHECK-INST: sh.andn.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0x27,0xee,0xf8,0xe3]
sh.andn.t %d14, %d14, 24, %d14, 7

# CHECK-INST: sh.andn.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0x27,0xee,0x78,0xec]
sh.andn.t %d14, %d14, 24, %d14, 24

# CHECK-INST: sh.andn.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0x27,0xee,0xf8,0xef]
sh.andn.t %d14, %d14, 24, %d14, 31

# CHECK-INST: sh.andn.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x78,0xe0]
sh.andn.t %d14, %d14, 24, %d15, 0

# CHECK-INST: sh.andn.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xf8,0xe3]
sh.andn.t %d14, %d14, 24, %d15, 7

# CHECK-INST: sh.andn.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x78,0xec]
sh.andn.t %d14, %d14, 24, %d15, 24

# CHECK-INST: sh.andn.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xf8,0xef]
sh.andn.t %d14, %d14, 24, %d15, 31

# CHECK-INST: sh.andn.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x7f,0xe0]
sh.andn.t %d14, %d14, 31, %d0, 0

# CHECK-INST: sh.andn.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xff,0xe3]
sh.andn.t %d14, %d14, 31, %d0, 7

# CHECK-INST: sh.andn.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x7f,0xec]
sh.andn.t %d14, %d14, 31, %d0, 24

# CHECK-INST: sh.andn.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xff,0xef]
sh.andn.t %d14, %d14, 31, %d0, 31

# CHECK-INST: sh.andn.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x7f,0xe0]
sh.andn.t %d14, %d14, 31, %d1, 0

# CHECK-INST: sh.andn.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xff,0xe3]
sh.andn.t %d14, %d14, 31, %d1, 7

# CHECK-INST: sh.andn.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x7f,0xec]
sh.andn.t %d14, %d14, 31, %d1, 24

# CHECK-INST: sh.andn.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xff,0xef]
sh.andn.t %d14, %d14, 31, %d1, 31

# CHECK-INST: sh.andn.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0x27,0xee,0x7f,0xe0]
sh.andn.t %d14, %d14, 31, %d14, 0

# CHECK-INST: sh.andn.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0x27,0xee,0xff,0xe3]
sh.andn.t %d14, %d14, 31, %d14, 7

# CHECK-INST: sh.andn.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0x27,0xee,0x7f,0xec]
sh.andn.t %d14, %d14, 31, %d14, 24

# CHECK-INST: sh.andn.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0x27,0xee,0xff,0xef]
sh.andn.t %d14, %d14, 31, %d14, 31

# CHECK-INST: sh.andn.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x7f,0xe0]
sh.andn.t %d14, %d14, 31, %d15, 0

# CHECK-INST: sh.andn.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xff,0xe3]
sh.andn.t %d14, %d14, 31, %d15, 7

# CHECK-INST: sh.andn.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x7f,0xec]
sh.andn.t %d14, %d14, 31, %d15, 24

# CHECK-INST: sh.andn.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xff,0xef]
sh.andn.t %d14, %d14, 31, %d15, 31

# CHECK-INST: sh.andn.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x60,0xe0]
sh.andn.t %d14, %d15, 0, %d0, 0

# CHECK-INST: sh.andn.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xe0,0xe3]
sh.andn.t %d14, %d15, 0, %d0, 7

# CHECK-INST: sh.andn.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x60,0xec]
sh.andn.t %d14, %d15, 0, %d0, 24

# CHECK-INST: sh.andn.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xe0,0xef]
sh.andn.t %d14, %d15, 0, %d0, 31

# CHECK-INST: sh.andn.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x60,0xe0]
sh.andn.t %d14, %d15, 0, %d1, 0

# CHECK-INST: sh.andn.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xe0,0xe3]
sh.andn.t %d14, %d15, 0, %d1, 7

# CHECK-INST: sh.andn.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x60,0xec]
sh.andn.t %d14, %d15, 0, %d1, 24

# CHECK-INST: sh.andn.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xe0,0xef]
sh.andn.t %d14, %d15, 0, %d1, 31

# CHECK-INST: sh.andn.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0x27,0xef,0x60,0xe0]
sh.andn.t %d14, %d15, 0, %d14, 0

# CHECK-INST: sh.andn.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0x27,0xef,0xe0,0xe3]
sh.andn.t %d14, %d15, 0, %d14, 7

# CHECK-INST: sh.andn.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0x27,0xef,0x60,0xec]
sh.andn.t %d14, %d15, 0, %d14, 24

# CHECK-INST: sh.andn.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0x27,0xef,0xe0,0xef]
sh.andn.t %d14, %d15, 0, %d14, 31

# CHECK-INST: sh.andn.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0x27,0xff,0x60,0xe0]
sh.andn.t %d14, %d15, 0, %d15, 0

# CHECK-INST: sh.andn.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0x27,0xff,0xe0,0xe3]
sh.andn.t %d14, %d15, 0, %d15, 7

# CHECK-INST: sh.andn.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0x27,0xff,0x60,0xec]
sh.andn.t %d14, %d15, 0, %d15, 24

# CHECK-INST: sh.andn.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0x27,0xff,0xe0,0xef]
sh.andn.t %d14, %d15, 0, %d15, 31

# CHECK-INST: sh.andn.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x67,0xe0]
sh.andn.t %d14, %d15, 7, %d0, 0

# CHECK-INST: sh.andn.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xe7,0xe3]
sh.andn.t %d14, %d15, 7, %d0, 7

# CHECK-INST: sh.andn.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x67,0xec]
sh.andn.t %d14, %d15, 7, %d0, 24

# CHECK-INST: sh.andn.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xe7,0xef]
sh.andn.t %d14, %d15, 7, %d0, 31

# CHECK-INST: sh.andn.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x67,0xe0]
sh.andn.t %d14, %d15, 7, %d1, 0

# CHECK-INST: sh.andn.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xe7,0xe3]
sh.andn.t %d14, %d15, 7, %d1, 7

# CHECK-INST: sh.andn.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x67,0xec]
sh.andn.t %d14, %d15, 7, %d1, 24

# CHECK-INST: sh.andn.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xe7,0xef]
sh.andn.t %d14, %d15, 7, %d1, 31

# CHECK-INST: sh.andn.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0x27,0xef,0x67,0xe0]
sh.andn.t %d14, %d15, 7, %d14, 0

# CHECK-INST: sh.andn.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0x27,0xef,0xe7,0xe3]
sh.andn.t %d14, %d15, 7, %d14, 7

# CHECK-INST: sh.andn.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0x27,0xef,0x67,0xec]
sh.andn.t %d14, %d15, 7, %d14, 24

# CHECK-INST: sh.andn.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0x27,0xef,0xe7,0xef]
sh.andn.t %d14, %d15, 7, %d14, 31

# CHECK-INST: sh.andn.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0x27,0xff,0x67,0xe0]
sh.andn.t %d14, %d15, 7, %d15, 0

# CHECK-INST: sh.andn.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0x27,0xff,0xe7,0xe3]
sh.andn.t %d14, %d15, 7, %d15, 7

# CHECK-INST: sh.andn.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0x27,0xff,0x67,0xec]
sh.andn.t %d14, %d15, 7, %d15, 24

# CHECK-INST: sh.andn.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0x27,0xff,0xe7,0xef]
sh.andn.t %d14, %d15, 7, %d15, 31

# CHECK-INST: sh.andn.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x78,0xe0]
sh.andn.t %d14, %d15, 24, %d0, 0

# CHECK-INST: sh.andn.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xf8,0xe3]
sh.andn.t %d14, %d15, 24, %d0, 7

# CHECK-INST: sh.andn.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x78,0xec]
sh.andn.t %d14, %d15, 24, %d0, 24

# CHECK-INST: sh.andn.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xf8,0xef]
sh.andn.t %d14, %d15, 24, %d0, 31

# CHECK-INST: sh.andn.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x78,0xe0]
sh.andn.t %d14, %d15, 24, %d1, 0

# CHECK-INST: sh.andn.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xf8,0xe3]
sh.andn.t %d14, %d15, 24, %d1, 7

# CHECK-INST: sh.andn.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x78,0xec]
sh.andn.t %d14, %d15, 24, %d1, 24

# CHECK-INST: sh.andn.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xf8,0xef]
sh.andn.t %d14, %d15, 24, %d1, 31

# CHECK-INST: sh.andn.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0x27,0xef,0x78,0xe0]
sh.andn.t %d14, %d15, 24, %d14, 0

# CHECK-INST: sh.andn.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0x27,0xef,0xf8,0xe3]
sh.andn.t %d14, %d15, 24, %d14, 7

# CHECK-INST: sh.andn.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0x27,0xef,0x78,0xec]
sh.andn.t %d14, %d15, 24, %d14, 24

# CHECK-INST: sh.andn.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0x27,0xef,0xf8,0xef]
sh.andn.t %d14, %d15, 24, %d14, 31

# CHECK-INST: sh.andn.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0x27,0xff,0x78,0xe0]
sh.andn.t %d14, %d15, 24, %d15, 0

# CHECK-INST: sh.andn.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0x27,0xff,0xf8,0xe3]
sh.andn.t %d14, %d15, 24, %d15, 7

# CHECK-INST: sh.andn.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0x27,0xff,0x78,0xec]
sh.andn.t %d14, %d15, 24, %d15, 24

# CHECK-INST: sh.andn.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0x27,0xff,0xf8,0xef]
sh.andn.t %d14, %d15, 24, %d15, 31

# CHECK-INST: sh.andn.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x7f,0xe0]
sh.andn.t %d14, %d15, 31, %d0, 0

# CHECK-INST: sh.andn.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xff,0xe3]
sh.andn.t %d14, %d15, 31, %d0, 7

# CHECK-INST: sh.andn.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x7f,0xec]
sh.andn.t %d14, %d15, 31, %d0, 24

# CHECK-INST: sh.andn.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xff,0xef]
sh.andn.t %d14, %d15, 31, %d0, 31

# CHECK-INST: sh.andn.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x7f,0xe0]
sh.andn.t %d14, %d15, 31, %d1, 0

# CHECK-INST: sh.andn.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xff,0xe3]
sh.andn.t %d14, %d15, 31, %d1, 7

# CHECK-INST: sh.andn.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x7f,0xec]
sh.andn.t %d14, %d15, 31, %d1, 24

# CHECK-INST: sh.andn.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xff,0xef]
sh.andn.t %d14, %d15, 31, %d1, 31

# CHECK-INST: sh.andn.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0x27,0xef,0x7f,0xe0]
sh.andn.t %d14, %d15, 31, %d14, 0

# CHECK-INST: sh.andn.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0x27,0xef,0xff,0xe3]
sh.andn.t %d14, %d15, 31, %d14, 7

# CHECK-INST: sh.andn.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0x27,0xef,0x7f,0xec]
sh.andn.t %d14, %d15, 31, %d14, 24

# CHECK-INST: sh.andn.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0x27,0xef,0xff,0xef]
sh.andn.t %d14, %d15, 31, %d14, 31

# CHECK-INST: sh.andn.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0x27,0xff,0x7f,0xe0]
sh.andn.t %d14, %d15, 31, %d15, 0

# CHECK-INST: sh.andn.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0x27,0xff,0xff,0xe3]
sh.andn.t %d14, %d15, 31, %d15, 7

# CHECK-INST: sh.andn.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0x27,0xff,0x7f,0xec]
sh.andn.t %d14, %d15, 31, %d15, 24

# CHECK-INST: sh.andn.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0x27,0xff,0xff,0xef]
sh.andn.t %d14, %d15, 31, %d15, 31

# CHECK-INST: sh.andn.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x60,0xf0]
sh.andn.t %d15, %d0, 0, %d0, 0

# CHECK-INST: sh.andn.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0x27,0x00,0xe0,0xf3]
sh.andn.t %d15, %d0, 0, %d0, 7

# CHECK-INST: sh.andn.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0x27,0x00,0x60,0xfc]
sh.andn.t %d15, %d0, 0, %d0, 24

# CHECK-INST: sh.andn.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0x27,0x00,0xe0,0xff]
sh.andn.t %d15, %d0, 0, %d0, 31

# CHECK-INST: sh.andn.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0x27,0x10,0x60,0xf0]
sh.andn.t %d15, %d0, 0, %d1, 0

# CHECK-INST: sh.andn.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0x27,0x10,0xe0,0xf3]
sh.andn.t %d15, %d0, 0, %d1, 7

# CHECK-INST: sh.andn.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0x27,0x10,0x60,0xfc]
sh.andn.t %d15, %d0, 0, %d1, 24

# CHECK-INST: sh.andn.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0x27,0x10,0xe0,0xff]
sh.andn.t %d15, %d0, 0, %d1, 31

# CHECK-INST: sh.andn.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x60,0xf0]
sh.andn.t %d15, %d0, 0, %d14, 0

# CHECK-INST: sh.andn.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xe0,0xf3]
sh.andn.t %d15, %d0, 0, %d14, 7

# CHECK-INST: sh.andn.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x60,0xfc]
sh.andn.t %d15, %d0, 0, %d14, 24

# CHECK-INST: sh.andn.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xe0,0xff]
sh.andn.t %d15, %d0, 0, %d14, 31

# CHECK-INST: sh.andn.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x60,0xf0]
sh.andn.t %d15, %d0, 0, %d15, 0

# CHECK-INST: sh.andn.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xe0,0xf3]
sh.andn.t %d15, %d0, 0, %d15, 7

# CHECK-INST: sh.andn.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x60,0xfc]
sh.andn.t %d15, %d0, 0, %d15, 24

# CHECK-INST: sh.andn.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xe0,0xff]
sh.andn.t %d15, %d0, 0, %d15, 31

# CHECK-INST: sh.andn.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0x27,0x00,0x67,0xf0]
sh.andn.t %d15, %d0, 7, %d0, 0

# CHECK-INST: sh.andn.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0x27,0x00,0xe7,0xf3]
sh.andn.t %d15, %d0, 7, %d0, 7

# CHECK-INST: sh.andn.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0x27,0x00,0x67,0xfc]
sh.andn.t %d15, %d0, 7, %d0, 24

# CHECK-INST: sh.andn.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0x27,0x00,0xe7,0xff]
sh.andn.t %d15, %d0, 7, %d0, 31

# CHECK-INST: sh.andn.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0x27,0x10,0x67,0xf0]
sh.andn.t %d15, %d0, 7, %d1, 0

# CHECK-INST: sh.andn.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0x27,0x10,0xe7,0xf3]
sh.andn.t %d15, %d0, 7, %d1, 7

# CHECK-INST: sh.andn.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0x27,0x10,0x67,0xfc]
sh.andn.t %d15, %d0, 7, %d1, 24

# CHECK-INST: sh.andn.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0x27,0x10,0xe7,0xff]
sh.andn.t %d15, %d0, 7, %d1, 31

# CHECK-INST: sh.andn.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x67,0xf0]
sh.andn.t %d15, %d0, 7, %d14, 0

# CHECK-INST: sh.andn.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xe7,0xf3]
sh.andn.t %d15, %d0, 7, %d14, 7

# CHECK-INST: sh.andn.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x67,0xfc]
sh.andn.t %d15, %d0, 7, %d14, 24

# CHECK-INST: sh.andn.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xe7,0xff]
sh.andn.t %d15, %d0, 7, %d14, 31

# CHECK-INST: sh.andn.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x67,0xf0]
sh.andn.t %d15, %d0, 7, %d15, 0

# CHECK-INST: sh.andn.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xe7,0xf3]
sh.andn.t %d15, %d0, 7, %d15, 7

# CHECK-INST: sh.andn.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x67,0xfc]
sh.andn.t %d15, %d0, 7, %d15, 24

# CHECK-INST: sh.andn.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xe7,0xff]
sh.andn.t %d15, %d0, 7, %d15, 31

# CHECK-INST: sh.andn.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0x27,0x00,0x78,0xf0]
sh.andn.t %d15, %d0, 24, %d0, 0

# CHECK-INST: sh.andn.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0x27,0x00,0xf8,0xf3]
sh.andn.t %d15, %d0, 24, %d0, 7

# CHECK-INST: sh.andn.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0x27,0x00,0x78,0xfc]
sh.andn.t %d15, %d0, 24, %d0, 24

# CHECK-INST: sh.andn.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0x27,0x00,0xf8,0xff]
sh.andn.t %d15, %d0, 24, %d0, 31

# CHECK-INST: sh.andn.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0x27,0x10,0x78,0xf0]
sh.andn.t %d15, %d0, 24, %d1, 0

# CHECK-INST: sh.andn.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0x27,0x10,0xf8,0xf3]
sh.andn.t %d15, %d0, 24, %d1, 7

# CHECK-INST: sh.andn.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0x27,0x10,0x78,0xfc]
sh.andn.t %d15, %d0, 24, %d1, 24

# CHECK-INST: sh.andn.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0x27,0x10,0xf8,0xff]
sh.andn.t %d15, %d0, 24, %d1, 31

# CHECK-INST: sh.andn.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x78,0xf0]
sh.andn.t %d15, %d0, 24, %d14, 0

# CHECK-INST: sh.andn.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xf8,0xf3]
sh.andn.t %d15, %d0, 24, %d14, 7

# CHECK-INST: sh.andn.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x78,0xfc]
sh.andn.t %d15, %d0, 24, %d14, 24

# CHECK-INST: sh.andn.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xf8,0xff]
sh.andn.t %d15, %d0, 24, %d14, 31

# CHECK-INST: sh.andn.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x78,0xf0]
sh.andn.t %d15, %d0, 24, %d15, 0

# CHECK-INST: sh.andn.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xf8,0xf3]
sh.andn.t %d15, %d0, 24, %d15, 7

# CHECK-INST: sh.andn.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x78,0xfc]
sh.andn.t %d15, %d0, 24, %d15, 24

# CHECK-INST: sh.andn.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xf8,0xff]
sh.andn.t %d15, %d0, 24, %d15, 31

# CHECK-INST: sh.andn.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0x27,0x00,0x7f,0xf0]
sh.andn.t %d15, %d0, 31, %d0, 0

# CHECK-INST: sh.andn.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0x27,0x00,0xff,0xf3]
sh.andn.t %d15, %d0, 31, %d0, 7

# CHECK-INST: sh.andn.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0x27,0x00,0x7f,0xfc]
sh.andn.t %d15, %d0, 31, %d0, 24

# CHECK-INST: sh.andn.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0x27,0x00,0xff,0xff]
sh.andn.t %d15, %d0, 31, %d0, 31

# CHECK-INST: sh.andn.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0x27,0x10,0x7f,0xf0]
sh.andn.t %d15, %d0, 31, %d1, 0

# CHECK-INST: sh.andn.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0x27,0x10,0xff,0xf3]
sh.andn.t %d15, %d0, 31, %d1, 7

# CHECK-INST: sh.andn.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0x27,0x10,0x7f,0xfc]
sh.andn.t %d15, %d0, 31, %d1, 24

# CHECK-INST: sh.andn.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0x27,0x10,0xff,0xff]
sh.andn.t %d15, %d0, 31, %d1, 31

# CHECK-INST: sh.andn.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x7f,0xf0]
sh.andn.t %d15, %d0, 31, %d14, 0

# CHECK-INST: sh.andn.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xff,0xf3]
sh.andn.t %d15, %d0, 31, %d14, 7

# CHECK-INST: sh.andn.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x7f,0xfc]
sh.andn.t %d15, %d0, 31, %d14, 24

# CHECK-INST: sh.andn.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xff,0xff]
sh.andn.t %d15, %d0, 31, %d14, 31

# CHECK-INST: sh.andn.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x7f,0xf0]
sh.andn.t %d15, %d0, 31, %d15, 0

# CHECK-INST: sh.andn.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xff,0xf3]
sh.andn.t %d15, %d0, 31, %d15, 7

# CHECK-INST: sh.andn.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x7f,0xfc]
sh.andn.t %d15, %d0, 31, %d15, 24

# CHECK-INST: sh.andn.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xff,0xff]
sh.andn.t %d15, %d0, 31, %d15, 31

# CHECK-INST: sh.andn.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0x27,0x01,0x60,0xf0]
sh.andn.t %d15, %d1, 0, %d0, 0

# CHECK-INST: sh.andn.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0x27,0x01,0xe0,0xf3]
sh.andn.t %d15, %d1, 0, %d0, 7

# CHECK-INST: sh.andn.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0x27,0x01,0x60,0xfc]
sh.andn.t %d15, %d1, 0, %d0, 24

# CHECK-INST: sh.andn.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0x27,0x01,0xe0,0xff]
sh.andn.t %d15, %d1, 0, %d0, 31

# CHECK-INST: sh.andn.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0x27,0x11,0x60,0xf0]
sh.andn.t %d15, %d1, 0, %d1, 0

# CHECK-INST: sh.andn.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0x27,0x11,0xe0,0xf3]
sh.andn.t %d15, %d1, 0, %d1, 7

# CHECK-INST: sh.andn.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0x27,0x11,0x60,0xfc]
sh.andn.t %d15, %d1, 0, %d1, 24

# CHECK-INST: sh.andn.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0x27,0x11,0xe0,0xff]
sh.andn.t %d15, %d1, 0, %d1, 31

# CHECK-INST: sh.andn.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x60,0xf0]
sh.andn.t %d15, %d1, 0, %d14, 0

# CHECK-INST: sh.andn.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xe0,0xf3]
sh.andn.t %d15, %d1, 0, %d14, 7

# CHECK-INST: sh.andn.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x60,0xfc]
sh.andn.t %d15, %d1, 0, %d14, 24

# CHECK-INST: sh.andn.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xe0,0xff]
sh.andn.t %d15, %d1, 0, %d14, 31

# CHECK-INST: sh.andn.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x60,0xf0]
sh.andn.t %d15, %d1, 0, %d15, 0

# CHECK-INST: sh.andn.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xe0,0xf3]
sh.andn.t %d15, %d1, 0, %d15, 7

# CHECK-INST: sh.andn.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x60,0xfc]
sh.andn.t %d15, %d1, 0, %d15, 24

# CHECK-INST: sh.andn.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xe0,0xff]
sh.andn.t %d15, %d1, 0, %d15, 31

# CHECK-INST: sh.andn.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0x27,0x01,0x67,0xf0]
sh.andn.t %d15, %d1, 7, %d0, 0

# CHECK-INST: sh.andn.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0x27,0x01,0xe7,0xf3]
sh.andn.t %d15, %d1, 7, %d0, 7

# CHECK-INST: sh.andn.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0x27,0x01,0x67,0xfc]
sh.andn.t %d15, %d1, 7, %d0, 24

# CHECK-INST: sh.andn.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0x27,0x01,0xe7,0xff]
sh.andn.t %d15, %d1, 7, %d0, 31

# CHECK-INST: sh.andn.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0x27,0x11,0x67,0xf0]
sh.andn.t %d15, %d1, 7, %d1, 0

# CHECK-INST: sh.andn.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0x27,0x11,0xe7,0xf3]
sh.andn.t %d15, %d1, 7, %d1, 7

# CHECK-INST: sh.andn.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0x27,0x11,0x67,0xfc]
sh.andn.t %d15, %d1, 7, %d1, 24

# CHECK-INST: sh.andn.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0x27,0x11,0xe7,0xff]
sh.andn.t %d15, %d1, 7, %d1, 31

# CHECK-INST: sh.andn.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x67,0xf0]
sh.andn.t %d15, %d1, 7, %d14, 0

# CHECK-INST: sh.andn.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xe7,0xf3]
sh.andn.t %d15, %d1, 7, %d14, 7

# CHECK-INST: sh.andn.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x67,0xfc]
sh.andn.t %d15, %d1, 7, %d14, 24

# CHECK-INST: sh.andn.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xe7,0xff]
sh.andn.t %d15, %d1, 7, %d14, 31

# CHECK-INST: sh.andn.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x67,0xf0]
sh.andn.t %d15, %d1, 7, %d15, 0

# CHECK-INST: sh.andn.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xe7,0xf3]
sh.andn.t %d15, %d1, 7, %d15, 7

# CHECK-INST: sh.andn.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x67,0xfc]
sh.andn.t %d15, %d1, 7, %d15, 24

# CHECK-INST: sh.andn.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xe7,0xff]
sh.andn.t %d15, %d1, 7, %d15, 31

# CHECK-INST: sh.andn.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0x27,0x01,0x78,0xf0]
sh.andn.t %d15, %d1, 24, %d0, 0

# CHECK-INST: sh.andn.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0x27,0x01,0xf8,0xf3]
sh.andn.t %d15, %d1, 24, %d0, 7

# CHECK-INST: sh.andn.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0x27,0x01,0x78,0xfc]
sh.andn.t %d15, %d1, 24, %d0, 24

# CHECK-INST: sh.andn.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0x27,0x01,0xf8,0xff]
sh.andn.t %d15, %d1, 24, %d0, 31

# CHECK-INST: sh.andn.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0x27,0x11,0x78,0xf0]
sh.andn.t %d15, %d1, 24, %d1, 0

# CHECK-INST: sh.andn.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0x27,0x11,0xf8,0xf3]
sh.andn.t %d15, %d1, 24, %d1, 7

# CHECK-INST: sh.andn.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0x27,0x11,0x78,0xfc]
sh.andn.t %d15, %d1, 24, %d1, 24

# CHECK-INST: sh.andn.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0x27,0x11,0xf8,0xff]
sh.andn.t %d15, %d1, 24, %d1, 31

# CHECK-INST: sh.andn.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x78,0xf0]
sh.andn.t %d15, %d1, 24, %d14, 0

# CHECK-INST: sh.andn.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xf8,0xf3]
sh.andn.t %d15, %d1, 24, %d14, 7

# CHECK-INST: sh.andn.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x78,0xfc]
sh.andn.t %d15, %d1, 24, %d14, 24

# CHECK-INST: sh.andn.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xf8,0xff]
sh.andn.t %d15, %d1, 24, %d14, 31

# CHECK-INST: sh.andn.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x78,0xf0]
sh.andn.t %d15, %d1, 24, %d15, 0

# CHECK-INST: sh.andn.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xf8,0xf3]
sh.andn.t %d15, %d1, 24, %d15, 7

# CHECK-INST: sh.andn.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x78,0xfc]
sh.andn.t %d15, %d1, 24, %d15, 24

# CHECK-INST: sh.andn.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xf8,0xff]
sh.andn.t %d15, %d1, 24, %d15, 31

# CHECK-INST: sh.andn.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0x27,0x01,0x7f,0xf0]
sh.andn.t %d15, %d1, 31, %d0, 0

# CHECK-INST: sh.andn.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0x27,0x01,0xff,0xf3]
sh.andn.t %d15, %d1, 31, %d0, 7

# CHECK-INST: sh.andn.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0x27,0x01,0x7f,0xfc]
sh.andn.t %d15, %d1, 31, %d0, 24

# CHECK-INST: sh.andn.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0x27,0x01,0xff,0xff]
sh.andn.t %d15, %d1, 31, %d0, 31

# CHECK-INST: sh.andn.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0x27,0x11,0x7f,0xf0]
sh.andn.t %d15, %d1, 31, %d1, 0

# CHECK-INST: sh.andn.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0x27,0x11,0xff,0xf3]
sh.andn.t %d15, %d1, 31, %d1, 7

# CHECK-INST: sh.andn.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0x27,0x11,0x7f,0xfc]
sh.andn.t %d15, %d1, 31, %d1, 24

# CHECK-INST: sh.andn.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0x27,0x11,0xff,0xff]
sh.andn.t %d15, %d1, 31, %d1, 31

# CHECK-INST: sh.andn.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x7f,0xf0]
sh.andn.t %d15, %d1, 31, %d14, 0

# CHECK-INST: sh.andn.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xff,0xf3]
sh.andn.t %d15, %d1, 31, %d14, 7

# CHECK-INST: sh.andn.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x7f,0xfc]
sh.andn.t %d15, %d1, 31, %d14, 24

# CHECK-INST: sh.andn.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xff,0xff]
sh.andn.t %d15, %d1, 31, %d14, 31

# CHECK-INST: sh.andn.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x7f,0xf0]
sh.andn.t %d15, %d1, 31, %d15, 0

# CHECK-INST: sh.andn.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xff,0xf3]
sh.andn.t %d15, %d1, 31, %d15, 7

# CHECK-INST: sh.andn.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x7f,0xfc]
sh.andn.t %d15, %d1, 31, %d15, 24

# CHECK-INST: sh.andn.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xff,0xff]
sh.andn.t %d15, %d1, 31, %d15, 31

# CHECK-INST: sh.andn.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x60,0xf0]
sh.andn.t %d15, %d14, 0, %d0, 0

# CHECK-INST: sh.andn.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xe0,0xf3]
sh.andn.t %d15, %d14, 0, %d0, 7

# CHECK-INST: sh.andn.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x60,0xfc]
sh.andn.t %d15, %d14, 0, %d0, 24

# CHECK-INST: sh.andn.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xe0,0xff]
sh.andn.t %d15, %d14, 0, %d0, 31

# CHECK-INST: sh.andn.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x60,0xf0]
sh.andn.t %d15, %d14, 0, %d1, 0

# CHECK-INST: sh.andn.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xe0,0xf3]
sh.andn.t %d15, %d14, 0, %d1, 7

# CHECK-INST: sh.andn.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x60,0xfc]
sh.andn.t %d15, %d14, 0, %d1, 24

# CHECK-INST: sh.andn.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xe0,0xff]
sh.andn.t %d15, %d14, 0, %d1, 31

# CHECK-INST: sh.andn.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0x27,0xee,0x60,0xf0]
sh.andn.t %d15, %d14, 0, %d14, 0

# CHECK-INST: sh.andn.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0x27,0xee,0xe0,0xf3]
sh.andn.t %d15, %d14, 0, %d14, 7

# CHECK-INST: sh.andn.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0x27,0xee,0x60,0xfc]
sh.andn.t %d15, %d14, 0, %d14, 24

# CHECK-INST: sh.andn.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0x27,0xee,0xe0,0xff]
sh.andn.t %d15, %d14, 0, %d14, 31

# CHECK-INST: sh.andn.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x60,0xf0]
sh.andn.t %d15, %d14, 0, %d15, 0

# CHECK-INST: sh.andn.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xe0,0xf3]
sh.andn.t %d15, %d14, 0, %d15, 7

# CHECK-INST: sh.andn.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x60,0xfc]
sh.andn.t %d15, %d14, 0, %d15, 24

# CHECK-INST: sh.andn.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xe0,0xff]
sh.andn.t %d15, %d14, 0, %d15, 31

# CHECK-INST: sh.andn.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x67,0xf0]
sh.andn.t %d15, %d14, 7, %d0, 0

# CHECK-INST: sh.andn.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xe7,0xf3]
sh.andn.t %d15, %d14, 7, %d0, 7

# CHECK-INST: sh.andn.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x67,0xfc]
sh.andn.t %d15, %d14, 7, %d0, 24

# CHECK-INST: sh.andn.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xe7,0xff]
sh.andn.t %d15, %d14, 7, %d0, 31

# CHECK-INST: sh.andn.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x67,0xf0]
sh.andn.t %d15, %d14, 7, %d1, 0

# CHECK-INST: sh.andn.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xe7,0xf3]
sh.andn.t %d15, %d14, 7, %d1, 7

# CHECK-INST: sh.andn.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x67,0xfc]
sh.andn.t %d15, %d14, 7, %d1, 24

# CHECK-INST: sh.andn.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xe7,0xff]
sh.andn.t %d15, %d14, 7, %d1, 31

# CHECK-INST: sh.andn.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0x27,0xee,0x67,0xf0]
sh.andn.t %d15, %d14, 7, %d14, 0

# CHECK-INST: sh.andn.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0x27,0xee,0xe7,0xf3]
sh.andn.t %d15, %d14, 7, %d14, 7

# CHECK-INST: sh.andn.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0x27,0xee,0x67,0xfc]
sh.andn.t %d15, %d14, 7, %d14, 24

# CHECK-INST: sh.andn.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0x27,0xee,0xe7,0xff]
sh.andn.t %d15, %d14, 7, %d14, 31

# CHECK-INST: sh.andn.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x67,0xf0]
sh.andn.t %d15, %d14, 7, %d15, 0

# CHECK-INST: sh.andn.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xe7,0xf3]
sh.andn.t %d15, %d14, 7, %d15, 7

# CHECK-INST: sh.andn.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x67,0xfc]
sh.andn.t %d15, %d14, 7, %d15, 24

# CHECK-INST: sh.andn.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xe7,0xff]
sh.andn.t %d15, %d14, 7, %d15, 31

# CHECK-INST: sh.andn.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x78,0xf0]
sh.andn.t %d15, %d14, 24, %d0, 0

# CHECK-INST: sh.andn.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xf8,0xf3]
sh.andn.t %d15, %d14, 24, %d0, 7

# CHECK-INST: sh.andn.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x78,0xfc]
sh.andn.t %d15, %d14, 24, %d0, 24

# CHECK-INST: sh.andn.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xf8,0xff]
sh.andn.t %d15, %d14, 24, %d0, 31

# CHECK-INST: sh.andn.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x78,0xf0]
sh.andn.t %d15, %d14, 24, %d1, 0

# CHECK-INST: sh.andn.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xf8,0xf3]
sh.andn.t %d15, %d14, 24, %d1, 7

# CHECK-INST: sh.andn.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x78,0xfc]
sh.andn.t %d15, %d14, 24, %d1, 24

# CHECK-INST: sh.andn.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xf8,0xff]
sh.andn.t %d15, %d14, 24, %d1, 31

# CHECK-INST: sh.andn.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0x27,0xee,0x78,0xf0]
sh.andn.t %d15, %d14, 24, %d14, 0

# CHECK-INST: sh.andn.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0x27,0xee,0xf8,0xf3]
sh.andn.t %d15, %d14, 24, %d14, 7

# CHECK-INST: sh.andn.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0x27,0xee,0x78,0xfc]
sh.andn.t %d15, %d14, 24, %d14, 24

# CHECK-INST: sh.andn.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0x27,0xee,0xf8,0xff]
sh.andn.t %d15, %d14, 24, %d14, 31

# CHECK-INST: sh.andn.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x78,0xf0]
sh.andn.t %d15, %d14, 24, %d15, 0

# CHECK-INST: sh.andn.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xf8,0xf3]
sh.andn.t %d15, %d14, 24, %d15, 7

# CHECK-INST: sh.andn.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x78,0xfc]
sh.andn.t %d15, %d14, 24, %d15, 24

# CHECK-INST: sh.andn.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xf8,0xff]
sh.andn.t %d15, %d14, 24, %d15, 31

# CHECK-INST: sh.andn.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x7f,0xf0]
sh.andn.t %d15, %d14, 31, %d0, 0

# CHECK-INST: sh.andn.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xff,0xf3]
sh.andn.t %d15, %d14, 31, %d0, 7

# CHECK-INST: sh.andn.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x7f,0xfc]
sh.andn.t %d15, %d14, 31, %d0, 24

# CHECK-INST: sh.andn.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xff,0xff]
sh.andn.t %d15, %d14, 31, %d0, 31

# CHECK-INST: sh.andn.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x7f,0xf0]
sh.andn.t %d15, %d14, 31, %d1, 0

# CHECK-INST: sh.andn.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xff,0xf3]
sh.andn.t %d15, %d14, 31, %d1, 7

# CHECK-INST: sh.andn.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x7f,0xfc]
sh.andn.t %d15, %d14, 31, %d1, 24

# CHECK-INST: sh.andn.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xff,0xff]
sh.andn.t %d15, %d14, 31, %d1, 31

# CHECK-INST: sh.andn.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0x27,0xee,0x7f,0xf0]
sh.andn.t %d15, %d14, 31, %d14, 0

# CHECK-INST: sh.andn.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0x27,0xee,0xff,0xf3]
sh.andn.t %d15, %d14, 31, %d14, 7

# CHECK-INST: sh.andn.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0x27,0xee,0x7f,0xfc]
sh.andn.t %d15, %d14, 31, %d14, 24

# CHECK-INST: sh.andn.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0x27,0xee,0xff,0xff]
sh.andn.t %d15, %d14, 31, %d14, 31

# CHECK-INST: sh.andn.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x7f,0xf0]
sh.andn.t %d15, %d14, 31, %d15, 0

# CHECK-INST: sh.andn.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xff,0xf3]
sh.andn.t %d15, %d14, 31, %d15, 7

# CHECK-INST: sh.andn.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x7f,0xfc]
sh.andn.t %d15, %d14, 31, %d15, 24

# CHECK-INST: sh.andn.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xff,0xff]
sh.andn.t %d15, %d14, 31, %d15, 31

# CHECK-INST: sh.andn.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x60,0xf0]
sh.andn.t %d15, %d15, 0, %d0, 0

# CHECK-INST: sh.andn.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xe0,0xf3]
sh.andn.t %d15, %d15, 0, %d0, 7

# CHECK-INST: sh.andn.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x60,0xfc]
sh.andn.t %d15, %d15, 0, %d0, 24

# CHECK-INST: sh.andn.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xe0,0xff]
sh.andn.t %d15, %d15, 0, %d0, 31

# CHECK-INST: sh.andn.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x60,0xf0]
sh.andn.t %d15, %d15, 0, %d1, 0

# CHECK-INST: sh.andn.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xe0,0xf3]
sh.andn.t %d15, %d15, 0, %d1, 7

# CHECK-INST: sh.andn.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x60,0xfc]
sh.andn.t %d15, %d15, 0, %d1, 24

# CHECK-INST: sh.andn.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xe0,0xff]
sh.andn.t %d15, %d15, 0, %d1, 31

# CHECK-INST: sh.andn.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0x27,0xef,0x60,0xf0]
sh.andn.t %d15, %d15, 0, %d14, 0

# CHECK-INST: sh.andn.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0x27,0xef,0xe0,0xf3]
sh.andn.t %d15, %d15, 0, %d14, 7

# CHECK-INST: sh.andn.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0x27,0xef,0x60,0xfc]
sh.andn.t %d15, %d15, 0, %d14, 24

# CHECK-INST: sh.andn.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0x27,0xef,0xe0,0xff]
sh.andn.t %d15, %d15, 0, %d14, 31

# CHECK-INST: sh.andn.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0x27,0xff,0x60,0xf0]
sh.andn.t %d15, %d15, 0, %d15, 0

# CHECK-INST: sh.andn.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0x27,0xff,0xe0,0xf3]
sh.andn.t %d15, %d15, 0, %d15, 7

# CHECK-INST: sh.andn.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0x27,0xff,0x60,0xfc]
sh.andn.t %d15, %d15, 0, %d15, 24

# CHECK-INST: sh.andn.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0x27,0xff,0xe0,0xff]
sh.andn.t %d15, %d15, 0, %d15, 31

# CHECK-INST: sh.andn.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x67,0xf0]
sh.andn.t %d15, %d15, 7, %d0, 0

# CHECK-INST: sh.andn.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xe7,0xf3]
sh.andn.t %d15, %d15, 7, %d0, 7

# CHECK-INST: sh.andn.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x67,0xfc]
sh.andn.t %d15, %d15, 7, %d0, 24

# CHECK-INST: sh.andn.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xe7,0xff]
sh.andn.t %d15, %d15, 7, %d0, 31

# CHECK-INST: sh.andn.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x67,0xf0]
sh.andn.t %d15, %d15, 7, %d1, 0

# CHECK-INST: sh.andn.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xe7,0xf3]
sh.andn.t %d15, %d15, 7, %d1, 7

# CHECK-INST: sh.andn.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x67,0xfc]
sh.andn.t %d15, %d15, 7, %d1, 24

# CHECK-INST: sh.andn.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xe7,0xff]
sh.andn.t %d15, %d15, 7, %d1, 31

# CHECK-INST: sh.andn.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0x27,0xef,0x67,0xf0]
sh.andn.t %d15, %d15, 7, %d14, 0

# CHECK-INST: sh.andn.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0x27,0xef,0xe7,0xf3]
sh.andn.t %d15, %d15, 7, %d14, 7

# CHECK-INST: sh.andn.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0x27,0xef,0x67,0xfc]
sh.andn.t %d15, %d15, 7, %d14, 24

# CHECK-INST: sh.andn.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0x27,0xef,0xe7,0xff]
sh.andn.t %d15, %d15, 7, %d14, 31

# CHECK-INST: sh.andn.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0x27,0xff,0x67,0xf0]
sh.andn.t %d15, %d15, 7, %d15, 0

# CHECK-INST: sh.andn.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0x27,0xff,0xe7,0xf3]
sh.andn.t %d15, %d15, 7, %d15, 7

# CHECK-INST: sh.andn.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0x27,0xff,0x67,0xfc]
sh.andn.t %d15, %d15, 7, %d15, 24

# CHECK-INST: sh.andn.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0x27,0xff,0xe7,0xff]
sh.andn.t %d15, %d15, 7, %d15, 31

# CHECK-INST: sh.andn.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x78,0xf0]
sh.andn.t %d15, %d15, 24, %d0, 0

# CHECK-INST: sh.andn.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xf8,0xf3]
sh.andn.t %d15, %d15, 24, %d0, 7

# CHECK-INST: sh.andn.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x78,0xfc]
sh.andn.t %d15, %d15, 24, %d0, 24

# CHECK-INST: sh.andn.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xf8,0xff]
sh.andn.t %d15, %d15, 24, %d0, 31

# CHECK-INST: sh.andn.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x78,0xf0]
sh.andn.t %d15, %d15, 24, %d1, 0

# CHECK-INST: sh.andn.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xf8,0xf3]
sh.andn.t %d15, %d15, 24, %d1, 7

# CHECK-INST: sh.andn.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x78,0xfc]
sh.andn.t %d15, %d15, 24, %d1, 24

# CHECK-INST: sh.andn.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xf8,0xff]
sh.andn.t %d15, %d15, 24, %d1, 31

# CHECK-INST: sh.andn.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0x27,0xef,0x78,0xf0]
sh.andn.t %d15, %d15, 24, %d14, 0

# CHECK-INST: sh.andn.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0x27,0xef,0xf8,0xf3]
sh.andn.t %d15, %d15, 24, %d14, 7

# CHECK-INST: sh.andn.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0x27,0xef,0x78,0xfc]
sh.andn.t %d15, %d15, 24, %d14, 24

# CHECK-INST: sh.andn.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0x27,0xef,0xf8,0xff]
sh.andn.t %d15, %d15, 24, %d14, 31

# CHECK-INST: sh.andn.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0x27,0xff,0x78,0xf0]
sh.andn.t %d15, %d15, 24, %d15, 0

# CHECK-INST: sh.andn.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0x27,0xff,0xf8,0xf3]
sh.andn.t %d15, %d15, 24, %d15, 7

# CHECK-INST: sh.andn.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0x27,0xff,0x78,0xfc]
sh.andn.t %d15, %d15, 24, %d15, 24

# CHECK-INST: sh.andn.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0x27,0xff,0xf8,0xff]
sh.andn.t %d15, %d15, 24, %d15, 31

# CHECK-INST: sh.andn.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x7f,0xf0]
sh.andn.t %d15, %d15, 31, %d0, 0

# CHECK-INST: sh.andn.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xff,0xf3]
sh.andn.t %d15, %d15, 31, %d0, 7

# CHECK-INST: sh.andn.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x7f,0xfc]
sh.andn.t %d15, %d15, 31, %d0, 24

# CHECK-INST: sh.andn.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xff,0xff]
sh.andn.t %d15, %d15, 31, %d0, 31

# CHECK-INST: sh.andn.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x7f,0xf0]
sh.andn.t %d15, %d15, 31, %d1, 0

# CHECK-INST: sh.andn.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xff,0xf3]
sh.andn.t %d15, %d15, 31, %d1, 7

# CHECK-INST: sh.andn.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x7f,0xfc]
sh.andn.t %d15, %d15, 31, %d1, 24

# CHECK-INST: sh.andn.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xff,0xff]
sh.andn.t %d15, %d15, 31, %d1, 31

# CHECK-INST: sh.andn.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0x27,0xef,0x7f,0xf0]
sh.andn.t %d15, %d15, 31, %d14, 0

# CHECK-INST: sh.andn.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0x27,0xef,0xff,0xf3]
sh.andn.t %d15, %d15, 31, %d14, 7

# CHECK-INST: sh.andn.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0x27,0xef,0x7f,0xfc]
sh.andn.t %d15, %d15, 31, %d14, 24

# CHECK-INST: sh.andn.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0x27,0xef,0xff,0xff]
sh.andn.t %d15, %d15, 31, %d14, 31

# CHECK-INST: sh.andn.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0x27,0xff,0x7f,0xf0]
sh.andn.t %d15, %d15, 31, %d15, 0

# CHECK-INST: sh.andn.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0x27,0xff,0xff,0xf3]
sh.andn.t %d15, %d15, 31, %d15, 7

# CHECK-INST: sh.andn.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0x27,0xff,0x7f,0xfc]
sh.andn.t %d15, %d15, 31, %d15, 24

# CHECK-INST: sh.andn.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0x27,0xff,0xff,0xff]
sh.andn.t %d15, %d15, 31, %d15, 31

# CHECK-INST: sh.nand.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x00,0x00]
sh.nand.t %d0, %d0, 0, %d0, 0

# CHECK-INST: sh.nand.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0xa7,0x00,0x80,0x03]
sh.nand.t %d0, %d0, 0, %d0, 7

# CHECK-INST: sh.nand.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x00,0x0c]
sh.nand.t %d0, %d0, 0, %d0, 24

# CHECK-INST: sh.nand.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0xa7,0x00,0x80,0x0f]
sh.nand.t %d0, %d0, 0, %d0, 31

# CHECK-INST: sh.nand.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x00,0x00]
sh.nand.t %d0, %d0, 0, %d1, 0

# CHECK-INST: sh.nand.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0xa7,0x10,0x80,0x03]
sh.nand.t %d0, %d0, 0, %d1, 7

# CHECK-INST: sh.nand.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x00,0x0c]
sh.nand.t %d0, %d0, 0, %d1, 24

# CHECK-INST: sh.nand.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0xa7,0x10,0x80,0x0f]
sh.nand.t %d0, %d0, 0, %d1, 31

# CHECK-INST: sh.nand.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x00,0x00]
sh.nand.t %d0, %d0, 0, %d14, 0

# CHECK-INST: sh.nand.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0x80,0x03]
sh.nand.t %d0, %d0, 0, %d14, 7

# CHECK-INST: sh.nand.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x00,0x0c]
sh.nand.t %d0, %d0, 0, %d14, 24

# CHECK-INST: sh.nand.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0x80,0x0f]
sh.nand.t %d0, %d0, 0, %d14, 31

# CHECK-INST: sh.nand.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x00,0x00]
sh.nand.t %d0, %d0, 0, %d15, 0

# CHECK-INST: sh.nand.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0x80,0x03]
sh.nand.t %d0, %d0, 0, %d15, 7

# CHECK-INST: sh.nand.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x00,0x0c]
sh.nand.t %d0, %d0, 0, %d15, 24

# CHECK-INST: sh.nand.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0x80,0x0f]
sh.nand.t %d0, %d0, 0, %d15, 31

# CHECK-INST: sh.nand.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x07,0x00]
sh.nand.t %d0, %d0, 7, %d0, 0

# CHECK-INST: sh.nand.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0xa7,0x00,0x87,0x03]
sh.nand.t %d0, %d0, 7, %d0, 7

# CHECK-INST: sh.nand.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x07,0x0c]
sh.nand.t %d0, %d0, 7, %d0, 24

# CHECK-INST: sh.nand.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0xa7,0x00,0x87,0x0f]
sh.nand.t %d0, %d0, 7, %d0, 31

# CHECK-INST: sh.nand.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x07,0x00]
sh.nand.t %d0, %d0, 7, %d1, 0

# CHECK-INST: sh.nand.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0xa7,0x10,0x87,0x03]
sh.nand.t %d0, %d0, 7, %d1, 7

# CHECK-INST: sh.nand.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x07,0x0c]
sh.nand.t %d0, %d0, 7, %d1, 24

# CHECK-INST: sh.nand.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0xa7,0x10,0x87,0x0f]
sh.nand.t %d0, %d0, 7, %d1, 31

# CHECK-INST: sh.nand.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x07,0x00]
sh.nand.t %d0, %d0, 7, %d14, 0

# CHECK-INST: sh.nand.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0x87,0x03]
sh.nand.t %d0, %d0, 7, %d14, 7

# CHECK-INST: sh.nand.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x07,0x0c]
sh.nand.t %d0, %d0, 7, %d14, 24

# CHECK-INST: sh.nand.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0x87,0x0f]
sh.nand.t %d0, %d0, 7, %d14, 31

# CHECK-INST: sh.nand.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x07,0x00]
sh.nand.t %d0, %d0, 7, %d15, 0

# CHECK-INST: sh.nand.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0x87,0x03]
sh.nand.t %d0, %d0, 7, %d15, 7

# CHECK-INST: sh.nand.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x07,0x0c]
sh.nand.t %d0, %d0, 7, %d15, 24

# CHECK-INST: sh.nand.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0x87,0x0f]
sh.nand.t %d0, %d0, 7, %d15, 31

# CHECK-INST: sh.nand.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x18,0x00]
sh.nand.t %d0, %d0, 24, %d0, 0

# CHECK-INST: sh.nand.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0xa7,0x00,0x98,0x03]
sh.nand.t %d0, %d0, 24, %d0, 7

# CHECK-INST: sh.nand.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x18,0x0c]
sh.nand.t %d0, %d0, 24, %d0, 24

# CHECK-INST: sh.nand.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0xa7,0x00,0x98,0x0f]
sh.nand.t %d0, %d0, 24, %d0, 31

# CHECK-INST: sh.nand.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x18,0x00]
sh.nand.t %d0, %d0, 24, %d1, 0

# CHECK-INST: sh.nand.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0xa7,0x10,0x98,0x03]
sh.nand.t %d0, %d0, 24, %d1, 7

# CHECK-INST: sh.nand.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x18,0x0c]
sh.nand.t %d0, %d0, 24, %d1, 24

# CHECK-INST: sh.nand.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0xa7,0x10,0x98,0x0f]
sh.nand.t %d0, %d0, 24, %d1, 31

# CHECK-INST: sh.nand.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x18,0x00]
sh.nand.t %d0, %d0, 24, %d14, 0

# CHECK-INST: sh.nand.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0x98,0x03]
sh.nand.t %d0, %d0, 24, %d14, 7

# CHECK-INST: sh.nand.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x18,0x0c]
sh.nand.t %d0, %d0, 24, %d14, 24

# CHECK-INST: sh.nand.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0x98,0x0f]
sh.nand.t %d0, %d0, 24, %d14, 31

# CHECK-INST: sh.nand.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x18,0x00]
sh.nand.t %d0, %d0, 24, %d15, 0

# CHECK-INST: sh.nand.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0x98,0x03]
sh.nand.t %d0, %d0, 24, %d15, 7

# CHECK-INST: sh.nand.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x18,0x0c]
sh.nand.t %d0, %d0, 24, %d15, 24

# CHECK-INST: sh.nand.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0x98,0x0f]
sh.nand.t %d0, %d0, 24, %d15, 31

# CHECK-INST: sh.nand.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x1f,0x00]
sh.nand.t %d0, %d0, 31, %d0, 0

# CHECK-INST: sh.nand.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0xa7,0x00,0x9f,0x03]
sh.nand.t %d0, %d0, 31, %d0, 7

# CHECK-INST: sh.nand.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x1f,0x0c]
sh.nand.t %d0, %d0, 31, %d0, 24

# CHECK-INST: sh.nand.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0xa7,0x00,0x9f,0x0f]
sh.nand.t %d0, %d0, 31, %d0, 31

# CHECK-INST: sh.nand.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x1f,0x00]
sh.nand.t %d0, %d0, 31, %d1, 0

# CHECK-INST: sh.nand.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0xa7,0x10,0x9f,0x03]
sh.nand.t %d0, %d0, 31, %d1, 7

# CHECK-INST: sh.nand.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x1f,0x0c]
sh.nand.t %d0, %d0, 31, %d1, 24

# CHECK-INST: sh.nand.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0xa7,0x10,0x9f,0x0f]
sh.nand.t %d0, %d0, 31, %d1, 31

# CHECK-INST: sh.nand.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x1f,0x00]
sh.nand.t %d0, %d0, 31, %d14, 0

# CHECK-INST: sh.nand.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0x9f,0x03]
sh.nand.t %d0, %d0, 31, %d14, 7

# CHECK-INST: sh.nand.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x1f,0x0c]
sh.nand.t %d0, %d0, 31, %d14, 24

# CHECK-INST: sh.nand.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0x9f,0x0f]
sh.nand.t %d0, %d0, 31, %d14, 31

# CHECK-INST: sh.nand.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x1f,0x00]
sh.nand.t %d0, %d0, 31, %d15, 0

# CHECK-INST: sh.nand.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0x9f,0x03]
sh.nand.t %d0, %d0, 31, %d15, 7

# CHECK-INST: sh.nand.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x1f,0x0c]
sh.nand.t %d0, %d0, 31, %d15, 24

# CHECK-INST: sh.nand.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0x9f,0x0f]
sh.nand.t %d0, %d0, 31, %d15, 31

# CHECK-INST: sh.nand.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x00,0x00]
sh.nand.t %d0, %d1, 0, %d0, 0

# CHECK-INST: sh.nand.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0xa7,0x01,0x80,0x03]
sh.nand.t %d0, %d1, 0, %d0, 7

# CHECK-INST: sh.nand.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x00,0x0c]
sh.nand.t %d0, %d1, 0, %d0, 24

# CHECK-INST: sh.nand.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0xa7,0x01,0x80,0x0f]
sh.nand.t %d0, %d1, 0, %d0, 31

# CHECK-INST: sh.nand.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x00,0x00]
sh.nand.t %d0, %d1, 0, %d1, 0

# CHECK-INST: sh.nand.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0xa7,0x11,0x80,0x03]
sh.nand.t %d0, %d1, 0, %d1, 7

# CHECK-INST: sh.nand.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x00,0x0c]
sh.nand.t %d0, %d1, 0, %d1, 24

# CHECK-INST: sh.nand.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0xa7,0x11,0x80,0x0f]
sh.nand.t %d0, %d1, 0, %d1, 31

# CHECK-INST: sh.nand.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x00,0x00]
sh.nand.t %d0, %d1, 0, %d14, 0

# CHECK-INST: sh.nand.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0x80,0x03]
sh.nand.t %d0, %d1, 0, %d14, 7

# CHECK-INST: sh.nand.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x00,0x0c]
sh.nand.t %d0, %d1, 0, %d14, 24

# CHECK-INST: sh.nand.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0x80,0x0f]
sh.nand.t %d0, %d1, 0, %d14, 31

# CHECK-INST: sh.nand.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x00,0x00]
sh.nand.t %d0, %d1, 0, %d15, 0

# CHECK-INST: sh.nand.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0x80,0x03]
sh.nand.t %d0, %d1, 0, %d15, 7

# CHECK-INST: sh.nand.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x00,0x0c]
sh.nand.t %d0, %d1, 0, %d15, 24

# CHECK-INST: sh.nand.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0x80,0x0f]
sh.nand.t %d0, %d1, 0, %d15, 31

# CHECK-INST: sh.nand.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x07,0x00]
sh.nand.t %d0, %d1, 7, %d0, 0

# CHECK-INST: sh.nand.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0xa7,0x01,0x87,0x03]
sh.nand.t %d0, %d1, 7, %d0, 7

# CHECK-INST: sh.nand.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x07,0x0c]
sh.nand.t %d0, %d1, 7, %d0, 24

# CHECK-INST: sh.nand.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0xa7,0x01,0x87,0x0f]
sh.nand.t %d0, %d1, 7, %d0, 31

# CHECK-INST: sh.nand.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x07,0x00]
sh.nand.t %d0, %d1, 7, %d1, 0

# CHECK-INST: sh.nand.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0xa7,0x11,0x87,0x03]
sh.nand.t %d0, %d1, 7, %d1, 7

# CHECK-INST: sh.nand.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x07,0x0c]
sh.nand.t %d0, %d1, 7, %d1, 24

# CHECK-INST: sh.nand.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0xa7,0x11,0x87,0x0f]
sh.nand.t %d0, %d1, 7, %d1, 31

# CHECK-INST: sh.nand.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x07,0x00]
sh.nand.t %d0, %d1, 7, %d14, 0

# CHECK-INST: sh.nand.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0x87,0x03]
sh.nand.t %d0, %d1, 7, %d14, 7

# CHECK-INST: sh.nand.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x07,0x0c]
sh.nand.t %d0, %d1, 7, %d14, 24

# CHECK-INST: sh.nand.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0x87,0x0f]
sh.nand.t %d0, %d1, 7, %d14, 31

# CHECK-INST: sh.nand.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x07,0x00]
sh.nand.t %d0, %d1, 7, %d15, 0

# CHECK-INST: sh.nand.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0x87,0x03]
sh.nand.t %d0, %d1, 7, %d15, 7

# CHECK-INST: sh.nand.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x07,0x0c]
sh.nand.t %d0, %d1, 7, %d15, 24

# CHECK-INST: sh.nand.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0x87,0x0f]
sh.nand.t %d0, %d1, 7, %d15, 31

# CHECK-INST: sh.nand.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x18,0x00]
sh.nand.t %d0, %d1, 24, %d0, 0

# CHECK-INST: sh.nand.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0xa7,0x01,0x98,0x03]
sh.nand.t %d0, %d1, 24, %d0, 7

# CHECK-INST: sh.nand.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x18,0x0c]
sh.nand.t %d0, %d1, 24, %d0, 24

# CHECK-INST: sh.nand.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0xa7,0x01,0x98,0x0f]
sh.nand.t %d0, %d1, 24, %d0, 31

# CHECK-INST: sh.nand.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x18,0x00]
sh.nand.t %d0, %d1, 24, %d1, 0

# CHECK-INST: sh.nand.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0xa7,0x11,0x98,0x03]
sh.nand.t %d0, %d1, 24, %d1, 7

# CHECK-INST: sh.nand.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x18,0x0c]
sh.nand.t %d0, %d1, 24, %d1, 24

# CHECK-INST: sh.nand.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0xa7,0x11,0x98,0x0f]
sh.nand.t %d0, %d1, 24, %d1, 31

# CHECK-INST: sh.nand.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x18,0x00]
sh.nand.t %d0, %d1, 24, %d14, 0

# CHECK-INST: sh.nand.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0x98,0x03]
sh.nand.t %d0, %d1, 24, %d14, 7

# CHECK-INST: sh.nand.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x18,0x0c]
sh.nand.t %d0, %d1, 24, %d14, 24

# CHECK-INST: sh.nand.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0x98,0x0f]
sh.nand.t %d0, %d1, 24, %d14, 31

# CHECK-INST: sh.nand.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x18,0x00]
sh.nand.t %d0, %d1, 24, %d15, 0

# CHECK-INST: sh.nand.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0x98,0x03]
sh.nand.t %d0, %d1, 24, %d15, 7

# CHECK-INST: sh.nand.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x18,0x0c]
sh.nand.t %d0, %d1, 24, %d15, 24

# CHECK-INST: sh.nand.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0x98,0x0f]
sh.nand.t %d0, %d1, 24, %d15, 31

# CHECK-INST: sh.nand.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x1f,0x00]
sh.nand.t %d0, %d1, 31, %d0, 0

# CHECK-INST: sh.nand.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0xa7,0x01,0x9f,0x03]
sh.nand.t %d0, %d1, 31, %d0, 7

# CHECK-INST: sh.nand.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x1f,0x0c]
sh.nand.t %d0, %d1, 31, %d0, 24

# CHECK-INST: sh.nand.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0xa7,0x01,0x9f,0x0f]
sh.nand.t %d0, %d1, 31, %d0, 31

# CHECK-INST: sh.nand.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x1f,0x00]
sh.nand.t %d0, %d1, 31, %d1, 0

# CHECK-INST: sh.nand.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0xa7,0x11,0x9f,0x03]
sh.nand.t %d0, %d1, 31, %d1, 7

# CHECK-INST: sh.nand.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x1f,0x0c]
sh.nand.t %d0, %d1, 31, %d1, 24

# CHECK-INST: sh.nand.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0xa7,0x11,0x9f,0x0f]
sh.nand.t %d0, %d1, 31, %d1, 31

# CHECK-INST: sh.nand.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x1f,0x00]
sh.nand.t %d0, %d1, 31, %d14, 0

# CHECK-INST: sh.nand.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0x9f,0x03]
sh.nand.t %d0, %d1, 31, %d14, 7

# CHECK-INST: sh.nand.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x1f,0x0c]
sh.nand.t %d0, %d1, 31, %d14, 24

# CHECK-INST: sh.nand.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0x9f,0x0f]
sh.nand.t %d0, %d1, 31, %d14, 31

# CHECK-INST: sh.nand.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x1f,0x00]
sh.nand.t %d0, %d1, 31, %d15, 0

# CHECK-INST: sh.nand.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0x9f,0x03]
sh.nand.t %d0, %d1, 31, %d15, 7

# CHECK-INST: sh.nand.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x1f,0x0c]
sh.nand.t %d0, %d1, 31, %d15, 24

# CHECK-INST: sh.nand.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0x9f,0x0f]
sh.nand.t %d0, %d1, 31, %d15, 31

# CHECK-INST: sh.nand.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x00,0x00]
sh.nand.t %d0, %d14, 0, %d0, 0

# CHECK-INST: sh.nand.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0x80,0x03]
sh.nand.t %d0, %d14, 0, %d0, 7

# CHECK-INST: sh.nand.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x00,0x0c]
sh.nand.t %d0, %d14, 0, %d0, 24

# CHECK-INST: sh.nand.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0x80,0x0f]
sh.nand.t %d0, %d14, 0, %d0, 31

# CHECK-INST: sh.nand.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x00,0x00]
sh.nand.t %d0, %d14, 0, %d1, 0

# CHECK-INST: sh.nand.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0x80,0x03]
sh.nand.t %d0, %d14, 0, %d1, 7

# CHECK-INST: sh.nand.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x00,0x0c]
sh.nand.t %d0, %d14, 0, %d1, 24

# CHECK-INST: sh.nand.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0x80,0x0f]
sh.nand.t %d0, %d14, 0, %d1, 31

# CHECK-INST: sh.nand.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x00,0x00]
sh.nand.t %d0, %d14, 0, %d14, 0

# CHECK-INST: sh.nand.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0xa7,0xee,0x80,0x03]
sh.nand.t %d0, %d14, 0, %d14, 7

# CHECK-INST: sh.nand.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x00,0x0c]
sh.nand.t %d0, %d14, 0, %d14, 24

# CHECK-INST: sh.nand.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0xa7,0xee,0x80,0x0f]
sh.nand.t %d0, %d14, 0, %d14, 31

# CHECK-INST: sh.nand.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x00,0x00]
sh.nand.t %d0, %d14, 0, %d15, 0

# CHECK-INST: sh.nand.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0x80,0x03]
sh.nand.t %d0, %d14, 0, %d15, 7

# CHECK-INST: sh.nand.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x00,0x0c]
sh.nand.t %d0, %d14, 0, %d15, 24

# CHECK-INST: sh.nand.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0x80,0x0f]
sh.nand.t %d0, %d14, 0, %d15, 31

# CHECK-INST: sh.nand.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x07,0x00]
sh.nand.t %d0, %d14, 7, %d0, 0

# CHECK-INST: sh.nand.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0x87,0x03]
sh.nand.t %d0, %d14, 7, %d0, 7

# CHECK-INST: sh.nand.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x07,0x0c]
sh.nand.t %d0, %d14, 7, %d0, 24

# CHECK-INST: sh.nand.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0x87,0x0f]
sh.nand.t %d0, %d14, 7, %d0, 31

# CHECK-INST: sh.nand.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x07,0x00]
sh.nand.t %d0, %d14, 7, %d1, 0

# CHECK-INST: sh.nand.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0x87,0x03]
sh.nand.t %d0, %d14, 7, %d1, 7

# CHECK-INST: sh.nand.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x07,0x0c]
sh.nand.t %d0, %d14, 7, %d1, 24

# CHECK-INST: sh.nand.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0x87,0x0f]
sh.nand.t %d0, %d14, 7, %d1, 31

# CHECK-INST: sh.nand.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x07,0x00]
sh.nand.t %d0, %d14, 7, %d14, 0

# CHECK-INST: sh.nand.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0xa7,0xee,0x87,0x03]
sh.nand.t %d0, %d14, 7, %d14, 7

# CHECK-INST: sh.nand.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x07,0x0c]
sh.nand.t %d0, %d14, 7, %d14, 24

# CHECK-INST: sh.nand.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0xa7,0xee,0x87,0x0f]
sh.nand.t %d0, %d14, 7, %d14, 31

# CHECK-INST: sh.nand.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x07,0x00]
sh.nand.t %d0, %d14, 7, %d15, 0

# CHECK-INST: sh.nand.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0x87,0x03]
sh.nand.t %d0, %d14, 7, %d15, 7

# CHECK-INST: sh.nand.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x07,0x0c]
sh.nand.t %d0, %d14, 7, %d15, 24

# CHECK-INST: sh.nand.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0x87,0x0f]
sh.nand.t %d0, %d14, 7, %d15, 31

# CHECK-INST: sh.nand.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x18,0x00]
sh.nand.t %d0, %d14, 24, %d0, 0

# CHECK-INST: sh.nand.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0x98,0x03]
sh.nand.t %d0, %d14, 24, %d0, 7

# CHECK-INST: sh.nand.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x18,0x0c]
sh.nand.t %d0, %d14, 24, %d0, 24

# CHECK-INST: sh.nand.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0x98,0x0f]
sh.nand.t %d0, %d14, 24, %d0, 31

# CHECK-INST: sh.nand.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x18,0x00]
sh.nand.t %d0, %d14, 24, %d1, 0

# CHECK-INST: sh.nand.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0x98,0x03]
sh.nand.t %d0, %d14, 24, %d1, 7

# CHECK-INST: sh.nand.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x18,0x0c]
sh.nand.t %d0, %d14, 24, %d1, 24

# CHECK-INST: sh.nand.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0x98,0x0f]
sh.nand.t %d0, %d14, 24, %d1, 31

# CHECK-INST: sh.nand.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x18,0x00]
sh.nand.t %d0, %d14, 24, %d14, 0

# CHECK-INST: sh.nand.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0xa7,0xee,0x98,0x03]
sh.nand.t %d0, %d14, 24, %d14, 7

# CHECK-INST: sh.nand.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x18,0x0c]
sh.nand.t %d0, %d14, 24, %d14, 24

# CHECK-INST: sh.nand.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0xa7,0xee,0x98,0x0f]
sh.nand.t %d0, %d14, 24, %d14, 31

# CHECK-INST: sh.nand.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x18,0x00]
sh.nand.t %d0, %d14, 24, %d15, 0

# CHECK-INST: sh.nand.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0x98,0x03]
sh.nand.t %d0, %d14, 24, %d15, 7

# CHECK-INST: sh.nand.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x18,0x0c]
sh.nand.t %d0, %d14, 24, %d15, 24

# CHECK-INST: sh.nand.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0x98,0x0f]
sh.nand.t %d0, %d14, 24, %d15, 31

# CHECK-INST: sh.nand.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x1f,0x00]
sh.nand.t %d0, %d14, 31, %d0, 0

# CHECK-INST: sh.nand.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0x9f,0x03]
sh.nand.t %d0, %d14, 31, %d0, 7

# CHECK-INST: sh.nand.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x1f,0x0c]
sh.nand.t %d0, %d14, 31, %d0, 24

# CHECK-INST: sh.nand.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0x9f,0x0f]
sh.nand.t %d0, %d14, 31, %d0, 31

# CHECK-INST: sh.nand.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x1f,0x00]
sh.nand.t %d0, %d14, 31, %d1, 0

# CHECK-INST: sh.nand.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0x9f,0x03]
sh.nand.t %d0, %d14, 31, %d1, 7

# CHECK-INST: sh.nand.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x1f,0x0c]
sh.nand.t %d0, %d14, 31, %d1, 24

# CHECK-INST: sh.nand.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0x9f,0x0f]
sh.nand.t %d0, %d14, 31, %d1, 31

# CHECK-INST: sh.nand.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x1f,0x00]
sh.nand.t %d0, %d14, 31, %d14, 0

# CHECK-INST: sh.nand.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0xa7,0xee,0x9f,0x03]
sh.nand.t %d0, %d14, 31, %d14, 7

# CHECK-INST: sh.nand.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x1f,0x0c]
sh.nand.t %d0, %d14, 31, %d14, 24

# CHECK-INST: sh.nand.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0xa7,0xee,0x9f,0x0f]
sh.nand.t %d0, %d14, 31, %d14, 31

# CHECK-INST: sh.nand.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x1f,0x00]
sh.nand.t %d0, %d14, 31, %d15, 0

# CHECK-INST: sh.nand.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0x9f,0x03]
sh.nand.t %d0, %d14, 31, %d15, 7

# CHECK-INST: sh.nand.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x1f,0x0c]
sh.nand.t %d0, %d14, 31, %d15, 24

# CHECK-INST: sh.nand.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0x9f,0x0f]
sh.nand.t %d0, %d14, 31, %d15, 31

# CHECK-INST: sh.nand.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x00,0x00]
sh.nand.t %d0, %d15, 0, %d0, 0

# CHECK-INST: sh.nand.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0x80,0x03]
sh.nand.t %d0, %d15, 0, %d0, 7

# CHECK-INST: sh.nand.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x00,0x0c]
sh.nand.t %d0, %d15, 0, %d0, 24

# CHECK-INST: sh.nand.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0x80,0x0f]
sh.nand.t %d0, %d15, 0, %d0, 31

# CHECK-INST: sh.nand.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x00,0x00]
sh.nand.t %d0, %d15, 0, %d1, 0

# CHECK-INST: sh.nand.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0x80,0x03]
sh.nand.t %d0, %d15, 0, %d1, 7

# CHECK-INST: sh.nand.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x00,0x0c]
sh.nand.t %d0, %d15, 0, %d1, 24

# CHECK-INST: sh.nand.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0x80,0x0f]
sh.nand.t %d0, %d15, 0, %d1, 31

# CHECK-INST: sh.nand.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x00,0x00]
sh.nand.t %d0, %d15, 0, %d14, 0

# CHECK-INST: sh.nand.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0xa7,0xef,0x80,0x03]
sh.nand.t %d0, %d15, 0, %d14, 7

# CHECK-INST: sh.nand.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x00,0x0c]
sh.nand.t %d0, %d15, 0, %d14, 24

# CHECK-INST: sh.nand.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0xa7,0xef,0x80,0x0f]
sh.nand.t %d0, %d15, 0, %d14, 31

# CHECK-INST: sh.nand.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x00,0x00]
sh.nand.t %d0, %d15, 0, %d15, 0

# CHECK-INST: sh.nand.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0xa7,0xff,0x80,0x03]
sh.nand.t %d0, %d15, 0, %d15, 7

# CHECK-INST: sh.nand.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x00,0x0c]
sh.nand.t %d0, %d15, 0, %d15, 24

# CHECK-INST: sh.nand.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0xa7,0xff,0x80,0x0f]
sh.nand.t %d0, %d15, 0, %d15, 31

# CHECK-INST: sh.nand.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x07,0x00]
sh.nand.t %d0, %d15, 7, %d0, 0

# CHECK-INST: sh.nand.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0x87,0x03]
sh.nand.t %d0, %d15, 7, %d0, 7

# CHECK-INST: sh.nand.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x07,0x0c]
sh.nand.t %d0, %d15, 7, %d0, 24

# CHECK-INST: sh.nand.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0x87,0x0f]
sh.nand.t %d0, %d15, 7, %d0, 31

# CHECK-INST: sh.nand.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x07,0x00]
sh.nand.t %d0, %d15, 7, %d1, 0

# CHECK-INST: sh.nand.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0x87,0x03]
sh.nand.t %d0, %d15, 7, %d1, 7

# CHECK-INST: sh.nand.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x07,0x0c]
sh.nand.t %d0, %d15, 7, %d1, 24

# CHECK-INST: sh.nand.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0x87,0x0f]
sh.nand.t %d0, %d15, 7, %d1, 31

# CHECK-INST: sh.nand.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x07,0x00]
sh.nand.t %d0, %d15, 7, %d14, 0

# CHECK-INST: sh.nand.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0xa7,0xef,0x87,0x03]
sh.nand.t %d0, %d15, 7, %d14, 7

# CHECK-INST: sh.nand.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x07,0x0c]
sh.nand.t %d0, %d15, 7, %d14, 24

# CHECK-INST: sh.nand.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0xa7,0xef,0x87,0x0f]
sh.nand.t %d0, %d15, 7, %d14, 31

# CHECK-INST: sh.nand.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x07,0x00]
sh.nand.t %d0, %d15, 7, %d15, 0

# CHECK-INST: sh.nand.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0xa7,0xff,0x87,0x03]
sh.nand.t %d0, %d15, 7, %d15, 7

# CHECK-INST: sh.nand.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x07,0x0c]
sh.nand.t %d0, %d15, 7, %d15, 24

# CHECK-INST: sh.nand.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0xa7,0xff,0x87,0x0f]
sh.nand.t %d0, %d15, 7, %d15, 31

# CHECK-INST: sh.nand.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x18,0x00]
sh.nand.t %d0, %d15, 24, %d0, 0

# CHECK-INST: sh.nand.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0x98,0x03]
sh.nand.t %d0, %d15, 24, %d0, 7

# CHECK-INST: sh.nand.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x18,0x0c]
sh.nand.t %d0, %d15, 24, %d0, 24

# CHECK-INST: sh.nand.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0x98,0x0f]
sh.nand.t %d0, %d15, 24, %d0, 31

# CHECK-INST: sh.nand.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x18,0x00]
sh.nand.t %d0, %d15, 24, %d1, 0

# CHECK-INST: sh.nand.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0x98,0x03]
sh.nand.t %d0, %d15, 24, %d1, 7

# CHECK-INST: sh.nand.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x18,0x0c]
sh.nand.t %d0, %d15, 24, %d1, 24

# CHECK-INST: sh.nand.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0x98,0x0f]
sh.nand.t %d0, %d15, 24, %d1, 31

# CHECK-INST: sh.nand.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x18,0x00]
sh.nand.t %d0, %d15, 24, %d14, 0

# CHECK-INST: sh.nand.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0xa7,0xef,0x98,0x03]
sh.nand.t %d0, %d15, 24, %d14, 7

# CHECK-INST: sh.nand.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x18,0x0c]
sh.nand.t %d0, %d15, 24, %d14, 24

# CHECK-INST: sh.nand.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0xa7,0xef,0x98,0x0f]
sh.nand.t %d0, %d15, 24, %d14, 31

# CHECK-INST: sh.nand.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x18,0x00]
sh.nand.t %d0, %d15, 24, %d15, 0

# CHECK-INST: sh.nand.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0xa7,0xff,0x98,0x03]
sh.nand.t %d0, %d15, 24, %d15, 7

# CHECK-INST: sh.nand.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x18,0x0c]
sh.nand.t %d0, %d15, 24, %d15, 24

# CHECK-INST: sh.nand.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0xa7,0xff,0x98,0x0f]
sh.nand.t %d0, %d15, 24, %d15, 31

# CHECK-INST: sh.nand.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x1f,0x00]
sh.nand.t %d0, %d15, 31, %d0, 0

# CHECK-INST: sh.nand.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0x9f,0x03]
sh.nand.t %d0, %d15, 31, %d0, 7

# CHECK-INST: sh.nand.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x1f,0x0c]
sh.nand.t %d0, %d15, 31, %d0, 24

# CHECK-INST: sh.nand.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0x9f,0x0f]
sh.nand.t %d0, %d15, 31, %d0, 31

# CHECK-INST: sh.nand.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x1f,0x00]
sh.nand.t %d0, %d15, 31, %d1, 0

# CHECK-INST: sh.nand.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0x9f,0x03]
sh.nand.t %d0, %d15, 31, %d1, 7

# CHECK-INST: sh.nand.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x1f,0x0c]
sh.nand.t %d0, %d15, 31, %d1, 24

# CHECK-INST: sh.nand.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0x9f,0x0f]
sh.nand.t %d0, %d15, 31, %d1, 31

# CHECK-INST: sh.nand.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x1f,0x00]
sh.nand.t %d0, %d15, 31, %d14, 0

# CHECK-INST: sh.nand.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0xa7,0xef,0x9f,0x03]
sh.nand.t %d0, %d15, 31, %d14, 7

# CHECK-INST: sh.nand.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x1f,0x0c]
sh.nand.t %d0, %d15, 31, %d14, 24

# CHECK-INST: sh.nand.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0xa7,0xef,0x9f,0x0f]
sh.nand.t %d0, %d15, 31, %d14, 31

# CHECK-INST: sh.nand.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x1f,0x00]
sh.nand.t %d0, %d15, 31, %d15, 0

# CHECK-INST: sh.nand.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0xa7,0xff,0x9f,0x03]
sh.nand.t %d0, %d15, 31, %d15, 7

# CHECK-INST: sh.nand.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x1f,0x0c]
sh.nand.t %d0, %d15, 31, %d15, 24

# CHECK-INST: sh.nand.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0xa7,0xff,0x9f,0x0f]
sh.nand.t %d0, %d15, 31, %d15, 31

# CHECK-INST: sh.nand.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x00,0x10]
sh.nand.t %d1, %d0, 0, %d0, 0

# CHECK-INST: sh.nand.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0xa7,0x00,0x80,0x13]
sh.nand.t %d1, %d0, 0, %d0, 7

# CHECK-INST: sh.nand.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x00,0x1c]
sh.nand.t %d1, %d0, 0, %d0, 24

# CHECK-INST: sh.nand.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0xa7,0x00,0x80,0x1f]
sh.nand.t %d1, %d0, 0, %d0, 31

# CHECK-INST: sh.nand.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x00,0x10]
sh.nand.t %d1, %d0, 0, %d1, 0

# CHECK-INST: sh.nand.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0xa7,0x10,0x80,0x13]
sh.nand.t %d1, %d0, 0, %d1, 7

# CHECK-INST: sh.nand.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x00,0x1c]
sh.nand.t %d1, %d0, 0, %d1, 24

# CHECK-INST: sh.nand.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0xa7,0x10,0x80,0x1f]
sh.nand.t %d1, %d0, 0, %d1, 31

# CHECK-INST: sh.nand.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x00,0x10]
sh.nand.t %d1, %d0, 0, %d14, 0

# CHECK-INST: sh.nand.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0x80,0x13]
sh.nand.t %d1, %d0, 0, %d14, 7

# CHECK-INST: sh.nand.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x00,0x1c]
sh.nand.t %d1, %d0, 0, %d14, 24

# CHECK-INST: sh.nand.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0x80,0x1f]
sh.nand.t %d1, %d0, 0, %d14, 31

# CHECK-INST: sh.nand.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x00,0x10]
sh.nand.t %d1, %d0, 0, %d15, 0

# CHECK-INST: sh.nand.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0x80,0x13]
sh.nand.t %d1, %d0, 0, %d15, 7

# CHECK-INST: sh.nand.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x00,0x1c]
sh.nand.t %d1, %d0, 0, %d15, 24

# CHECK-INST: sh.nand.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0x80,0x1f]
sh.nand.t %d1, %d0, 0, %d15, 31

# CHECK-INST: sh.nand.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x07,0x10]
sh.nand.t %d1, %d0, 7, %d0, 0

# CHECK-INST: sh.nand.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0xa7,0x00,0x87,0x13]
sh.nand.t %d1, %d0, 7, %d0, 7

# CHECK-INST: sh.nand.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x07,0x1c]
sh.nand.t %d1, %d0, 7, %d0, 24

# CHECK-INST: sh.nand.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0xa7,0x00,0x87,0x1f]
sh.nand.t %d1, %d0, 7, %d0, 31

# CHECK-INST: sh.nand.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x07,0x10]
sh.nand.t %d1, %d0, 7, %d1, 0

# CHECK-INST: sh.nand.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0xa7,0x10,0x87,0x13]
sh.nand.t %d1, %d0, 7, %d1, 7

# CHECK-INST: sh.nand.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x07,0x1c]
sh.nand.t %d1, %d0, 7, %d1, 24

# CHECK-INST: sh.nand.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0xa7,0x10,0x87,0x1f]
sh.nand.t %d1, %d0, 7, %d1, 31

# CHECK-INST: sh.nand.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x07,0x10]
sh.nand.t %d1, %d0, 7, %d14, 0

# CHECK-INST: sh.nand.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0x87,0x13]
sh.nand.t %d1, %d0, 7, %d14, 7

# CHECK-INST: sh.nand.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x07,0x1c]
sh.nand.t %d1, %d0, 7, %d14, 24

# CHECK-INST: sh.nand.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0x87,0x1f]
sh.nand.t %d1, %d0, 7, %d14, 31

# CHECK-INST: sh.nand.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x07,0x10]
sh.nand.t %d1, %d0, 7, %d15, 0

# CHECK-INST: sh.nand.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0x87,0x13]
sh.nand.t %d1, %d0, 7, %d15, 7

# CHECK-INST: sh.nand.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x07,0x1c]
sh.nand.t %d1, %d0, 7, %d15, 24

# CHECK-INST: sh.nand.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0x87,0x1f]
sh.nand.t %d1, %d0, 7, %d15, 31

# CHECK-INST: sh.nand.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x18,0x10]
sh.nand.t %d1, %d0, 24, %d0, 0

# CHECK-INST: sh.nand.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0xa7,0x00,0x98,0x13]
sh.nand.t %d1, %d0, 24, %d0, 7

# CHECK-INST: sh.nand.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x18,0x1c]
sh.nand.t %d1, %d0, 24, %d0, 24

# CHECK-INST: sh.nand.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0xa7,0x00,0x98,0x1f]
sh.nand.t %d1, %d0, 24, %d0, 31

# CHECK-INST: sh.nand.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x18,0x10]
sh.nand.t %d1, %d0, 24, %d1, 0

# CHECK-INST: sh.nand.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0xa7,0x10,0x98,0x13]
sh.nand.t %d1, %d0, 24, %d1, 7

# CHECK-INST: sh.nand.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x18,0x1c]
sh.nand.t %d1, %d0, 24, %d1, 24

# CHECK-INST: sh.nand.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0xa7,0x10,0x98,0x1f]
sh.nand.t %d1, %d0, 24, %d1, 31

# CHECK-INST: sh.nand.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x18,0x10]
sh.nand.t %d1, %d0, 24, %d14, 0

# CHECK-INST: sh.nand.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0x98,0x13]
sh.nand.t %d1, %d0, 24, %d14, 7

# CHECK-INST: sh.nand.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x18,0x1c]
sh.nand.t %d1, %d0, 24, %d14, 24

# CHECK-INST: sh.nand.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0x98,0x1f]
sh.nand.t %d1, %d0, 24, %d14, 31

# CHECK-INST: sh.nand.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x18,0x10]
sh.nand.t %d1, %d0, 24, %d15, 0

# CHECK-INST: sh.nand.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0x98,0x13]
sh.nand.t %d1, %d0, 24, %d15, 7

# CHECK-INST: sh.nand.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x18,0x1c]
sh.nand.t %d1, %d0, 24, %d15, 24

# CHECK-INST: sh.nand.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0x98,0x1f]
sh.nand.t %d1, %d0, 24, %d15, 31

# CHECK-INST: sh.nand.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x1f,0x10]
sh.nand.t %d1, %d0, 31, %d0, 0

# CHECK-INST: sh.nand.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0xa7,0x00,0x9f,0x13]
sh.nand.t %d1, %d0, 31, %d0, 7

# CHECK-INST: sh.nand.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x1f,0x1c]
sh.nand.t %d1, %d0, 31, %d0, 24

# CHECK-INST: sh.nand.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0xa7,0x00,0x9f,0x1f]
sh.nand.t %d1, %d0, 31, %d0, 31

# CHECK-INST: sh.nand.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x1f,0x10]
sh.nand.t %d1, %d0, 31, %d1, 0

# CHECK-INST: sh.nand.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0xa7,0x10,0x9f,0x13]
sh.nand.t %d1, %d0, 31, %d1, 7

# CHECK-INST: sh.nand.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x1f,0x1c]
sh.nand.t %d1, %d0, 31, %d1, 24

# CHECK-INST: sh.nand.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0xa7,0x10,0x9f,0x1f]
sh.nand.t %d1, %d0, 31, %d1, 31

# CHECK-INST: sh.nand.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x1f,0x10]
sh.nand.t %d1, %d0, 31, %d14, 0

# CHECK-INST: sh.nand.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0x9f,0x13]
sh.nand.t %d1, %d0, 31, %d14, 7

# CHECK-INST: sh.nand.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x1f,0x1c]
sh.nand.t %d1, %d0, 31, %d14, 24

# CHECK-INST: sh.nand.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0x9f,0x1f]
sh.nand.t %d1, %d0, 31, %d14, 31

# CHECK-INST: sh.nand.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x1f,0x10]
sh.nand.t %d1, %d0, 31, %d15, 0

# CHECK-INST: sh.nand.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0x9f,0x13]
sh.nand.t %d1, %d0, 31, %d15, 7

# CHECK-INST: sh.nand.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x1f,0x1c]
sh.nand.t %d1, %d0, 31, %d15, 24

# CHECK-INST: sh.nand.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0x9f,0x1f]
sh.nand.t %d1, %d0, 31, %d15, 31

# CHECK-INST: sh.nand.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x00,0x10]
sh.nand.t %d1, %d1, 0, %d0, 0

# CHECK-INST: sh.nand.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0xa7,0x01,0x80,0x13]
sh.nand.t %d1, %d1, 0, %d0, 7

# CHECK-INST: sh.nand.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x00,0x1c]
sh.nand.t %d1, %d1, 0, %d0, 24

# CHECK-INST: sh.nand.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0xa7,0x01,0x80,0x1f]
sh.nand.t %d1, %d1, 0, %d0, 31

# CHECK-INST: sh.nand.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x00,0x10]
sh.nand.t %d1, %d1, 0, %d1, 0

# CHECK-INST: sh.nand.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0xa7,0x11,0x80,0x13]
sh.nand.t %d1, %d1, 0, %d1, 7

# CHECK-INST: sh.nand.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x00,0x1c]
sh.nand.t %d1, %d1, 0, %d1, 24

# CHECK-INST: sh.nand.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0xa7,0x11,0x80,0x1f]
sh.nand.t %d1, %d1, 0, %d1, 31

# CHECK-INST: sh.nand.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x00,0x10]
sh.nand.t %d1, %d1, 0, %d14, 0

# CHECK-INST: sh.nand.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0x80,0x13]
sh.nand.t %d1, %d1, 0, %d14, 7

# CHECK-INST: sh.nand.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x00,0x1c]
sh.nand.t %d1, %d1, 0, %d14, 24

# CHECK-INST: sh.nand.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0x80,0x1f]
sh.nand.t %d1, %d1, 0, %d14, 31

# CHECK-INST: sh.nand.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x00,0x10]
sh.nand.t %d1, %d1, 0, %d15, 0

# CHECK-INST: sh.nand.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0x80,0x13]
sh.nand.t %d1, %d1, 0, %d15, 7

# CHECK-INST: sh.nand.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x00,0x1c]
sh.nand.t %d1, %d1, 0, %d15, 24

# CHECK-INST: sh.nand.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0x80,0x1f]
sh.nand.t %d1, %d1, 0, %d15, 31

# CHECK-INST: sh.nand.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x07,0x10]
sh.nand.t %d1, %d1, 7, %d0, 0

# CHECK-INST: sh.nand.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0xa7,0x01,0x87,0x13]
sh.nand.t %d1, %d1, 7, %d0, 7

# CHECK-INST: sh.nand.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x07,0x1c]
sh.nand.t %d1, %d1, 7, %d0, 24

# CHECK-INST: sh.nand.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0xa7,0x01,0x87,0x1f]
sh.nand.t %d1, %d1, 7, %d0, 31

# CHECK-INST: sh.nand.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x07,0x10]
sh.nand.t %d1, %d1, 7, %d1, 0

# CHECK-INST: sh.nand.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0xa7,0x11,0x87,0x13]
sh.nand.t %d1, %d1, 7, %d1, 7

# CHECK-INST: sh.nand.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x07,0x1c]
sh.nand.t %d1, %d1, 7, %d1, 24

# CHECK-INST: sh.nand.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0xa7,0x11,0x87,0x1f]
sh.nand.t %d1, %d1, 7, %d1, 31

# CHECK-INST: sh.nand.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x07,0x10]
sh.nand.t %d1, %d1, 7, %d14, 0

# CHECK-INST: sh.nand.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0x87,0x13]
sh.nand.t %d1, %d1, 7, %d14, 7

# CHECK-INST: sh.nand.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x07,0x1c]
sh.nand.t %d1, %d1, 7, %d14, 24

# CHECK-INST: sh.nand.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0x87,0x1f]
sh.nand.t %d1, %d1, 7, %d14, 31

# CHECK-INST: sh.nand.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x07,0x10]
sh.nand.t %d1, %d1, 7, %d15, 0

# CHECK-INST: sh.nand.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0x87,0x13]
sh.nand.t %d1, %d1, 7, %d15, 7

# CHECK-INST: sh.nand.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x07,0x1c]
sh.nand.t %d1, %d1, 7, %d15, 24

# CHECK-INST: sh.nand.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0x87,0x1f]
sh.nand.t %d1, %d1, 7, %d15, 31

# CHECK-INST: sh.nand.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x18,0x10]
sh.nand.t %d1, %d1, 24, %d0, 0

# CHECK-INST: sh.nand.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0xa7,0x01,0x98,0x13]
sh.nand.t %d1, %d1, 24, %d0, 7

# CHECK-INST: sh.nand.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x18,0x1c]
sh.nand.t %d1, %d1, 24, %d0, 24

# CHECK-INST: sh.nand.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0xa7,0x01,0x98,0x1f]
sh.nand.t %d1, %d1, 24, %d0, 31

# CHECK-INST: sh.nand.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x18,0x10]
sh.nand.t %d1, %d1, 24, %d1, 0

# CHECK-INST: sh.nand.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0xa7,0x11,0x98,0x13]
sh.nand.t %d1, %d1, 24, %d1, 7

# CHECK-INST: sh.nand.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x18,0x1c]
sh.nand.t %d1, %d1, 24, %d1, 24

# CHECK-INST: sh.nand.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0xa7,0x11,0x98,0x1f]
sh.nand.t %d1, %d1, 24, %d1, 31

# CHECK-INST: sh.nand.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x18,0x10]
sh.nand.t %d1, %d1, 24, %d14, 0

# CHECK-INST: sh.nand.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0x98,0x13]
sh.nand.t %d1, %d1, 24, %d14, 7

# CHECK-INST: sh.nand.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x18,0x1c]
sh.nand.t %d1, %d1, 24, %d14, 24

# CHECK-INST: sh.nand.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0x98,0x1f]
sh.nand.t %d1, %d1, 24, %d14, 31

# CHECK-INST: sh.nand.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x18,0x10]
sh.nand.t %d1, %d1, 24, %d15, 0

# CHECK-INST: sh.nand.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0x98,0x13]
sh.nand.t %d1, %d1, 24, %d15, 7

# CHECK-INST: sh.nand.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x18,0x1c]
sh.nand.t %d1, %d1, 24, %d15, 24

# CHECK-INST: sh.nand.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0x98,0x1f]
sh.nand.t %d1, %d1, 24, %d15, 31

# CHECK-INST: sh.nand.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x1f,0x10]
sh.nand.t %d1, %d1, 31, %d0, 0

# CHECK-INST: sh.nand.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0xa7,0x01,0x9f,0x13]
sh.nand.t %d1, %d1, 31, %d0, 7

# CHECK-INST: sh.nand.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x1f,0x1c]
sh.nand.t %d1, %d1, 31, %d0, 24

# CHECK-INST: sh.nand.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0xa7,0x01,0x9f,0x1f]
sh.nand.t %d1, %d1, 31, %d0, 31

# CHECK-INST: sh.nand.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x1f,0x10]
sh.nand.t %d1, %d1, 31, %d1, 0

# CHECK-INST: sh.nand.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0xa7,0x11,0x9f,0x13]
sh.nand.t %d1, %d1, 31, %d1, 7

# CHECK-INST: sh.nand.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x1f,0x1c]
sh.nand.t %d1, %d1, 31, %d1, 24

# CHECK-INST: sh.nand.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0xa7,0x11,0x9f,0x1f]
sh.nand.t %d1, %d1, 31, %d1, 31

# CHECK-INST: sh.nand.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x1f,0x10]
sh.nand.t %d1, %d1, 31, %d14, 0

# CHECK-INST: sh.nand.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0x9f,0x13]
sh.nand.t %d1, %d1, 31, %d14, 7

# CHECK-INST: sh.nand.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x1f,0x1c]
sh.nand.t %d1, %d1, 31, %d14, 24

# CHECK-INST: sh.nand.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0x9f,0x1f]
sh.nand.t %d1, %d1, 31, %d14, 31

# CHECK-INST: sh.nand.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x1f,0x10]
sh.nand.t %d1, %d1, 31, %d15, 0

# CHECK-INST: sh.nand.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0x9f,0x13]
sh.nand.t %d1, %d1, 31, %d15, 7

# CHECK-INST: sh.nand.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x1f,0x1c]
sh.nand.t %d1, %d1, 31, %d15, 24

# CHECK-INST: sh.nand.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0x9f,0x1f]
sh.nand.t %d1, %d1, 31, %d15, 31

# CHECK-INST: sh.nand.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x00,0x10]
sh.nand.t %d1, %d14, 0, %d0, 0

# CHECK-INST: sh.nand.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0x80,0x13]
sh.nand.t %d1, %d14, 0, %d0, 7

# CHECK-INST: sh.nand.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x00,0x1c]
sh.nand.t %d1, %d14, 0, %d0, 24

# CHECK-INST: sh.nand.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0x80,0x1f]
sh.nand.t %d1, %d14, 0, %d0, 31

# CHECK-INST: sh.nand.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x00,0x10]
sh.nand.t %d1, %d14, 0, %d1, 0

# CHECK-INST: sh.nand.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0x80,0x13]
sh.nand.t %d1, %d14, 0, %d1, 7

# CHECK-INST: sh.nand.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x00,0x1c]
sh.nand.t %d1, %d14, 0, %d1, 24

# CHECK-INST: sh.nand.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0x80,0x1f]
sh.nand.t %d1, %d14, 0, %d1, 31

# CHECK-INST: sh.nand.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x00,0x10]
sh.nand.t %d1, %d14, 0, %d14, 0

# CHECK-INST: sh.nand.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0xa7,0xee,0x80,0x13]
sh.nand.t %d1, %d14, 0, %d14, 7

# CHECK-INST: sh.nand.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x00,0x1c]
sh.nand.t %d1, %d14, 0, %d14, 24

# CHECK-INST: sh.nand.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0xa7,0xee,0x80,0x1f]
sh.nand.t %d1, %d14, 0, %d14, 31

# CHECK-INST: sh.nand.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x00,0x10]
sh.nand.t %d1, %d14, 0, %d15, 0

# CHECK-INST: sh.nand.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0x80,0x13]
sh.nand.t %d1, %d14, 0, %d15, 7

# CHECK-INST: sh.nand.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x00,0x1c]
sh.nand.t %d1, %d14, 0, %d15, 24

# CHECK-INST: sh.nand.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0x80,0x1f]
sh.nand.t %d1, %d14, 0, %d15, 31

# CHECK-INST: sh.nand.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x07,0x10]
sh.nand.t %d1, %d14, 7, %d0, 0

# CHECK-INST: sh.nand.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0x87,0x13]
sh.nand.t %d1, %d14, 7, %d0, 7

# CHECK-INST: sh.nand.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x07,0x1c]
sh.nand.t %d1, %d14, 7, %d0, 24

# CHECK-INST: sh.nand.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0x87,0x1f]
sh.nand.t %d1, %d14, 7, %d0, 31

# CHECK-INST: sh.nand.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x07,0x10]
sh.nand.t %d1, %d14, 7, %d1, 0

# CHECK-INST: sh.nand.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0x87,0x13]
sh.nand.t %d1, %d14, 7, %d1, 7

# CHECK-INST: sh.nand.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x07,0x1c]
sh.nand.t %d1, %d14, 7, %d1, 24

# CHECK-INST: sh.nand.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0x87,0x1f]
sh.nand.t %d1, %d14, 7, %d1, 31

# CHECK-INST: sh.nand.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x07,0x10]
sh.nand.t %d1, %d14, 7, %d14, 0

# CHECK-INST: sh.nand.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0xa7,0xee,0x87,0x13]
sh.nand.t %d1, %d14, 7, %d14, 7

# CHECK-INST: sh.nand.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x07,0x1c]
sh.nand.t %d1, %d14, 7, %d14, 24

# CHECK-INST: sh.nand.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0xa7,0xee,0x87,0x1f]
sh.nand.t %d1, %d14, 7, %d14, 31

# CHECK-INST: sh.nand.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x07,0x10]
sh.nand.t %d1, %d14, 7, %d15, 0

# CHECK-INST: sh.nand.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0x87,0x13]
sh.nand.t %d1, %d14, 7, %d15, 7

# CHECK-INST: sh.nand.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x07,0x1c]
sh.nand.t %d1, %d14, 7, %d15, 24

# CHECK-INST: sh.nand.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0x87,0x1f]
sh.nand.t %d1, %d14, 7, %d15, 31

# CHECK-INST: sh.nand.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x18,0x10]
sh.nand.t %d1, %d14, 24, %d0, 0

# CHECK-INST: sh.nand.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0x98,0x13]
sh.nand.t %d1, %d14, 24, %d0, 7

# CHECK-INST: sh.nand.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x18,0x1c]
sh.nand.t %d1, %d14, 24, %d0, 24

# CHECK-INST: sh.nand.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0x98,0x1f]
sh.nand.t %d1, %d14, 24, %d0, 31

# CHECK-INST: sh.nand.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x18,0x10]
sh.nand.t %d1, %d14, 24, %d1, 0

# CHECK-INST: sh.nand.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0x98,0x13]
sh.nand.t %d1, %d14, 24, %d1, 7

# CHECK-INST: sh.nand.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x18,0x1c]
sh.nand.t %d1, %d14, 24, %d1, 24

# CHECK-INST: sh.nand.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0x98,0x1f]
sh.nand.t %d1, %d14, 24, %d1, 31

# CHECK-INST: sh.nand.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x18,0x10]
sh.nand.t %d1, %d14, 24, %d14, 0

# CHECK-INST: sh.nand.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0xa7,0xee,0x98,0x13]
sh.nand.t %d1, %d14, 24, %d14, 7

# CHECK-INST: sh.nand.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x18,0x1c]
sh.nand.t %d1, %d14, 24, %d14, 24

# CHECK-INST: sh.nand.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0xa7,0xee,0x98,0x1f]
sh.nand.t %d1, %d14, 24, %d14, 31

# CHECK-INST: sh.nand.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x18,0x10]
sh.nand.t %d1, %d14, 24, %d15, 0

# CHECK-INST: sh.nand.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0x98,0x13]
sh.nand.t %d1, %d14, 24, %d15, 7

# CHECK-INST: sh.nand.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x18,0x1c]
sh.nand.t %d1, %d14, 24, %d15, 24

# CHECK-INST: sh.nand.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0x98,0x1f]
sh.nand.t %d1, %d14, 24, %d15, 31

# CHECK-INST: sh.nand.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x1f,0x10]
sh.nand.t %d1, %d14, 31, %d0, 0

# CHECK-INST: sh.nand.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0x9f,0x13]
sh.nand.t %d1, %d14, 31, %d0, 7

# CHECK-INST: sh.nand.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x1f,0x1c]
sh.nand.t %d1, %d14, 31, %d0, 24

# CHECK-INST: sh.nand.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0x9f,0x1f]
sh.nand.t %d1, %d14, 31, %d0, 31

# CHECK-INST: sh.nand.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x1f,0x10]
sh.nand.t %d1, %d14, 31, %d1, 0

# CHECK-INST: sh.nand.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0x9f,0x13]
sh.nand.t %d1, %d14, 31, %d1, 7

# CHECK-INST: sh.nand.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x1f,0x1c]
sh.nand.t %d1, %d14, 31, %d1, 24

# CHECK-INST: sh.nand.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0x9f,0x1f]
sh.nand.t %d1, %d14, 31, %d1, 31

# CHECK-INST: sh.nand.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x1f,0x10]
sh.nand.t %d1, %d14, 31, %d14, 0

# CHECK-INST: sh.nand.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0xa7,0xee,0x9f,0x13]
sh.nand.t %d1, %d14, 31, %d14, 7

# CHECK-INST: sh.nand.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x1f,0x1c]
sh.nand.t %d1, %d14, 31, %d14, 24

# CHECK-INST: sh.nand.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0xa7,0xee,0x9f,0x1f]
sh.nand.t %d1, %d14, 31, %d14, 31

# CHECK-INST: sh.nand.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x1f,0x10]
sh.nand.t %d1, %d14, 31, %d15, 0

# CHECK-INST: sh.nand.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0x9f,0x13]
sh.nand.t %d1, %d14, 31, %d15, 7

# CHECK-INST: sh.nand.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x1f,0x1c]
sh.nand.t %d1, %d14, 31, %d15, 24

# CHECK-INST: sh.nand.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0x9f,0x1f]
sh.nand.t %d1, %d14, 31, %d15, 31

# CHECK-INST: sh.nand.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x00,0x10]
sh.nand.t %d1, %d15, 0, %d0, 0

# CHECK-INST: sh.nand.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0x80,0x13]
sh.nand.t %d1, %d15, 0, %d0, 7

# CHECK-INST: sh.nand.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x00,0x1c]
sh.nand.t %d1, %d15, 0, %d0, 24

# CHECK-INST: sh.nand.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0x80,0x1f]
sh.nand.t %d1, %d15, 0, %d0, 31

# CHECK-INST: sh.nand.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x00,0x10]
sh.nand.t %d1, %d15, 0, %d1, 0

# CHECK-INST: sh.nand.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0x80,0x13]
sh.nand.t %d1, %d15, 0, %d1, 7

# CHECK-INST: sh.nand.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x00,0x1c]
sh.nand.t %d1, %d15, 0, %d1, 24

# CHECK-INST: sh.nand.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0x80,0x1f]
sh.nand.t %d1, %d15, 0, %d1, 31

# CHECK-INST: sh.nand.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x00,0x10]
sh.nand.t %d1, %d15, 0, %d14, 0

# CHECK-INST: sh.nand.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0xa7,0xef,0x80,0x13]
sh.nand.t %d1, %d15, 0, %d14, 7

# CHECK-INST: sh.nand.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x00,0x1c]
sh.nand.t %d1, %d15, 0, %d14, 24

# CHECK-INST: sh.nand.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0xa7,0xef,0x80,0x1f]
sh.nand.t %d1, %d15, 0, %d14, 31

# CHECK-INST: sh.nand.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x00,0x10]
sh.nand.t %d1, %d15, 0, %d15, 0

# CHECK-INST: sh.nand.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0xa7,0xff,0x80,0x13]
sh.nand.t %d1, %d15, 0, %d15, 7

# CHECK-INST: sh.nand.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x00,0x1c]
sh.nand.t %d1, %d15, 0, %d15, 24

# CHECK-INST: sh.nand.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0xa7,0xff,0x80,0x1f]
sh.nand.t %d1, %d15, 0, %d15, 31

# CHECK-INST: sh.nand.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x07,0x10]
sh.nand.t %d1, %d15, 7, %d0, 0

# CHECK-INST: sh.nand.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0x87,0x13]
sh.nand.t %d1, %d15, 7, %d0, 7

# CHECK-INST: sh.nand.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x07,0x1c]
sh.nand.t %d1, %d15, 7, %d0, 24

# CHECK-INST: sh.nand.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0x87,0x1f]
sh.nand.t %d1, %d15, 7, %d0, 31

# CHECK-INST: sh.nand.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x07,0x10]
sh.nand.t %d1, %d15, 7, %d1, 0

# CHECK-INST: sh.nand.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0x87,0x13]
sh.nand.t %d1, %d15, 7, %d1, 7

# CHECK-INST: sh.nand.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x07,0x1c]
sh.nand.t %d1, %d15, 7, %d1, 24

# CHECK-INST: sh.nand.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0x87,0x1f]
sh.nand.t %d1, %d15, 7, %d1, 31

# CHECK-INST: sh.nand.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x07,0x10]
sh.nand.t %d1, %d15, 7, %d14, 0

# CHECK-INST: sh.nand.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0xa7,0xef,0x87,0x13]
sh.nand.t %d1, %d15, 7, %d14, 7

# CHECK-INST: sh.nand.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x07,0x1c]
sh.nand.t %d1, %d15, 7, %d14, 24

# CHECK-INST: sh.nand.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0xa7,0xef,0x87,0x1f]
sh.nand.t %d1, %d15, 7, %d14, 31

# CHECK-INST: sh.nand.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x07,0x10]
sh.nand.t %d1, %d15, 7, %d15, 0

# CHECK-INST: sh.nand.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0xa7,0xff,0x87,0x13]
sh.nand.t %d1, %d15, 7, %d15, 7

# CHECK-INST: sh.nand.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x07,0x1c]
sh.nand.t %d1, %d15, 7, %d15, 24

# CHECK-INST: sh.nand.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0xa7,0xff,0x87,0x1f]
sh.nand.t %d1, %d15, 7, %d15, 31

# CHECK-INST: sh.nand.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x18,0x10]
sh.nand.t %d1, %d15, 24, %d0, 0

# CHECK-INST: sh.nand.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0x98,0x13]
sh.nand.t %d1, %d15, 24, %d0, 7

# CHECK-INST: sh.nand.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x18,0x1c]
sh.nand.t %d1, %d15, 24, %d0, 24

# CHECK-INST: sh.nand.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0x98,0x1f]
sh.nand.t %d1, %d15, 24, %d0, 31

# CHECK-INST: sh.nand.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x18,0x10]
sh.nand.t %d1, %d15, 24, %d1, 0

# CHECK-INST: sh.nand.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0x98,0x13]
sh.nand.t %d1, %d15, 24, %d1, 7

# CHECK-INST: sh.nand.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x18,0x1c]
sh.nand.t %d1, %d15, 24, %d1, 24

# CHECK-INST: sh.nand.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0x98,0x1f]
sh.nand.t %d1, %d15, 24, %d1, 31

# CHECK-INST: sh.nand.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x18,0x10]
sh.nand.t %d1, %d15, 24, %d14, 0

# CHECK-INST: sh.nand.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0xa7,0xef,0x98,0x13]
sh.nand.t %d1, %d15, 24, %d14, 7

# CHECK-INST: sh.nand.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x18,0x1c]
sh.nand.t %d1, %d15, 24, %d14, 24

# CHECK-INST: sh.nand.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0xa7,0xef,0x98,0x1f]
sh.nand.t %d1, %d15, 24, %d14, 31

# CHECK-INST: sh.nand.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x18,0x10]
sh.nand.t %d1, %d15, 24, %d15, 0

# CHECK-INST: sh.nand.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0xa7,0xff,0x98,0x13]
sh.nand.t %d1, %d15, 24, %d15, 7

# CHECK-INST: sh.nand.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x18,0x1c]
sh.nand.t %d1, %d15, 24, %d15, 24

# CHECK-INST: sh.nand.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0xa7,0xff,0x98,0x1f]
sh.nand.t %d1, %d15, 24, %d15, 31

# CHECK-INST: sh.nand.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x1f,0x10]
sh.nand.t %d1, %d15, 31, %d0, 0

# CHECK-INST: sh.nand.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0x9f,0x13]
sh.nand.t %d1, %d15, 31, %d0, 7

# CHECK-INST: sh.nand.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x1f,0x1c]
sh.nand.t %d1, %d15, 31, %d0, 24

# CHECK-INST: sh.nand.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0x9f,0x1f]
sh.nand.t %d1, %d15, 31, %d0, 31

# CHECK-INST: sh.nand.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x1f,0x10]
sh.nand.t %d1, %d15, 31, %d1, 0

# CHECK-INST: sh.nand.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0x9f,0x13]
sh.nand.t %d1, %d15, 31, %d1, 7

# CHECK-INST: sh.nand.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x1f,0x1c]
sh.nand.t %d1, %d15, 31, %d1, 24

# CHECK-INST: sh.nand.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0x9f,0x1f]
sh.nand.t %d1, %d15, 31, %d1, 31

# CHECK-INST: sh.nand.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x1f,0x10]
sh.nand.t %d1, %d15, 31, %d14, 0

# CHECK-INST: sh.nand.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0xa7,0xef,0x9f,0x13]
sh.nand.t %d1, %d15, 31, %d14, 7

# CHECK-INST: sh.nand.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x1f,0x1c]
sh.nand.t %d1, %d15, 31, %d14, 24

# CHECK-INST: sh.nand.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0xa7,0xef,0x9f,0x1f]
sh.nand.t %d1, %d15, 31, %d14, 31

# CHECK-INST: sh.nand.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x1f,0x10]
sh.nand.t %d1, %d15, 31, %d15, 0

# CHECK-INST: sh.nand.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0xa7,0xff,0x9f,0x13]
sh.nand.t %d1, %d15, 31, %d15, 7

# CHECK-INST: sh.nand.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x1f,0x1c]
sh.nand.t %d1, %d15, 31, %d15, 24

# CHECK-INST: sh.nand.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0xa7,0xff,0x9f,0x1f]
sh.nand.t %d1, %d15, 31, %d15, 31

# CHECK-INST: sh.nand.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x00,0xe0]
sh.nand.t %d14, %d0, 0, %d0, 0

# CHECK-INST: sh.nand.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0xa7,0x00,0x80,0xe3]
sh.nand.t %d14, %d0, 0, %d0, 7

# CHECK-INST: sh.nand.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x00,0xec]
sh.nand.t %d14, %d0, 0, %d0, 24

# CHECK-INST: sh.nand.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0xa7,0x00,0x80,0xef]
sh.nand.t %d14, %d0, 0, %d0, 31

# CHECK-INST: sh.nand.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x00,0xe0]
sh.nand.t %d14, %d0, 0, %d1, 0

# CHECK-INST: sh.nand.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0xa7,0x10,0x80,0xe3]
sh.nand.t %d14, %d0, 0, %d1, 7

# CHECK-INST: sh.nand.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x00,0xec]
sh.nand.t %d14, %d0, 0, %d1, 24

# CHECK-INST: sh.nand.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0xa7,0x10,0x80,0xef]
sh.nand.t %d14, %d0, 0, %d1, 31

# CHECK-INST: sh.nand.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x00,0xe0]
sh.nand.t %d14, %d0, 0, %d14, 0

# CHECK-INST: sh.nand.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0x80,0xe3]
sh.nand.t %d14, %d0, 0, %d14, 7

# CHECK-INST: sh.nand.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x00,0xec]
sh.nand.t %d14, %d0, 0, %d14, 24

# CHECK-INST: sh.nand.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0x80,0xef]
sh.nand.t %d14, %d0, 0, %d14, 31

# CHECK-INST: sh.nand.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x00,0xe0]
sh.nand.t %d14, %d0, 0, %d15, 0

# CHECK-INST: sh.nand.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0x80,0xe3]
sh.nand.t %d14, %d0, 0, %d15, 7

# CHECK-INST: sh.nand.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x00,0xec]
sh.nand.t %d14, %d0, 0, %d15, 24

# CHECK-INST: sh.nand.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0x80,0xef]
sh.nand.t %d14, %d0, 0, %d15, 31

# CHECK-INST: sh.nand.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x07,0xe0]
sh.nand.t %d14, %d0, 7, %d0, 0

# CHECK-INST: sh.nand.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0xa7,0x00,0x87,0xe3]
sh.nand.t %d14, %d0, 7, %d0, 7

# CHECK-INST: sh.nand.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x07,0xec]
sh.nand.t %d14, %d0, 7, %d0, 24

# CHECK-INST: sh.nand.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0xa7,0x00,0x87,0xef]
sh.nand.t %d14, %d0, 7, %d0, 31

# CHECK-INST: sh.nand.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x07,0xe0]
sh.nand.t %d14, %d0, 7, %d1, 0

# CHECK-INST: sh.nand.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0xa7,0x10,0x87,0xe3]
sh.nand.t %d14, %d0, 7, %d1, 7

# CHECK-INST: sh.nand.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x07,0xec]
sh.nand.t %d14, %d0, 7, %d1, 24

# CHECK-INST: sh.nand.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0xa7,0x10,0x87,0xef]
sh.nand.t %d14, %d0, 7, %d1, 31

# CHECK-INST: sh.nand.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x07,0xe0]
sh.nand.t %d14, %d0, 7, %d14, 0

# CHECK-INST: sh.nand.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0x87,0xe3]
sh.nand.t %d14, %d0, 7, %d14, 7

# CHECK-INST: sh.nand.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x07,0xec]
sh.nand.t %d14, %d0, 7, %d14, 24

# CHECK-INST: sh.nand.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0x87,0xef]
sh.nand.t %d14, %d0, 7, %d14, 31

# CHECK-INST: sh.nand.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x07,0xe0]
sh.nand.t %d14, %d0, 7, %d15, 0

# CHECK-INST: sh.nand.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0x87,0xe3]
sh.nand.t %d14, %d0, 7, %d15, 7

# CHECK-INST: sh.nand.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x07,0xec]
sh.nand.t %d14, %d0, 7, %d15, 24

# CHECK-INST: sh.nand.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0x87,0xef]
sh.nand.t %d14, %d0, 7, %d15, 31

# CHECK-INST: sh.nand.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x18,0xe0]
sh.nand.t %d14, %d0, 24, %d0, 0

# CHECK-INST: sh.nand.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0xa7,0x00,0x98,0xe3]
sh.nand.t %d14, %d0, 24, %d0, 7

# CHECK-INST: sh.nand.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x18,0xec]
sh.nand.t %d14, %d0, 24, %d0, 24

# CHECK-INST: sh.nand.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0xa7,0x00,0x98,0xef]
sh.nand.t %d14, %d0, 24, %d0, 31

# CHECK-INST: sh.nand.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x18,0xe0]
sh.nand.t %d14, %d0, 24, %d1, 0

# CHECK-INST: sh.nand.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0xa7,0x10,0x98,0xe3]
sh.nand.t %d14, %d0, 24, %d1, 7

# CHECK-INST: sh.nand.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x18,0xec]
sh.nand.t %d14, %d0, 24, %d1, 24

# CHECK-INST: sh.nand.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0xa7,0x10,0x98,0xef]
sh.nand.t %d14, %d0, 24, %d1, 31

# CHECK-INST: sh.nand.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x18,0xe0]
sh.nand.t %d14, %d0, 24, %d14, 0

# CHECK-INST: sh.nand.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0x98,0xe3]
sh.nand.t %d14, %d0, 24, %d14, 7

# CHECK-INST: sh.nand.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x18,0xec]
sh.nand.t %d14, %d0, 24, %d14, 24

# CHECK-INST: sh.nand.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0x98,0xef]
sh.nand.t %d14, %d0, 24, %d14, 31

# CHECK-INST: sh.nand.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x18,0xe0]
sh.nand.t %d14, %d0, 24, %d15, 0

# CHECK-INST: sh.nand.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0x98,0xe3]
sh.nand.t %d14, %d0, 24, %d15, 7

# CHECK-INST: sh.nand.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x18,0xec]
sh.nand.t %d14, %d0, 24, %d15, 24

# CHECK-INST: sh.nand.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0x98,0xef]
sh.nand.t %d14, %d0, 24, %d15, 31

# CHECK-INST: sh.nand.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x1f,0xe0]
sh.nand.t %d14, %d0, 31, %d0, 0

# CHECK-INST: sh.nand.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0xa7,0x00,0x9f,0xe3]
sh.nand.t %d14, %d0, 31, %d0, 7

# CHECK-INST: sh.nand.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x1f,0xec]
sh.nand.t %d14, %d0, 31, %d0, 24

# CHECK-INST: sh.nand.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0xa7,0x00,0x9f,0xef]
sh.nand.t %d14, %d0, 31, %d0, 31

# CHECK-INST: sh.nand.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x1f,0xe0]
sh.nand.t %d14, %d0, 31, %d1, 0

# CHECK-INST: sh.nand.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0xa7,0x10,0x9f,0xe3]
sh.nand.t %d14, %d0, 31, %d1, 7

# CHECK-INST: sh.nand.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x1f,0xec]
sh.nand.t %d14, %d0, 31, %d1, 24

# CHECK-INST: sh.nand.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0xa7,0x10,0x9f,0xef]
sh.nand.t %d14, %d0, 31, %d1, 31

# CHECK-INST: sh.nand.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x1f,0xe0]
sh.nand.t %d14, %d0, 31, %d14, 0

# CHECK-INST: sh.nand.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0x9f,0xe3]
sh.nand.t %d14, %d0, 31, %d14, 7

# CHECK-INST: sh.nand.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x1f,0xec]
sh.nand.t %d14, %d0, 31, %d14, 24

# CHECK-INST: sh.nand.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0x9f,0xef]
sh.nand.t %d14, %d0, 31, %d14, 31

# CHECK-INST: sh.nand.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x1f,0xe0]
sh.nand.t %d14, %d0, 31, %d15, 0

# CHECK-INST: sh.nand.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0x9f,0xe3]
sh.nand.t %d14, %d0, 31, %d15, 7

# CHECK-INST: sh.nand.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x1f,0xec]
sh.nand.t %d14, %d0, 31, %d15, 24

# CHECK-INST: sh.nand.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0x9f,0xef]
sh.nand.t %d14, %d0, 31, %d15, 31

# CHECK-INST: sh.nand.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x00,0xe0]
sh.nand.t %d14, %d1, 0, %d0, 0

# CHECK-INST: sh.nand.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0xa7,0x01,0x80,0xe3]
sh.nand.t %d14, %d1, 0, %d0, 7

# CHECK-INST: sh.nand.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x00,0xec]
sh.nand.t %d14, %d1, 0, %d0, 24

# CHECK-INST: sh.nand.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0xa7,0x01,0x80,0xef]
sh.nand.t %d14, %d1, 0, %d0, 31

# CHECK-INST: sh.nand.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x00,0xe0]
sh.nand.t %d14, %d1, 0, %d1, 0

# CHECK-INST: sh.nand.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0xa7,0x11,0x80,0xe3]
sh.nand.t %d14, %d1, 0, %d1, 7

# CHECK-INST: sh.nand.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x00,0xec]
sh.nand.t %d14, %d1, 0, %d1, 24

# CHECK-INST: sh.nand.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0xa7,0x11,0x80,0xef]
sh.nand.t %d14, %d1, 0, %d1, 31

# CHECK-INST: sh.nand.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x00,0xe0]
sh.nand.t %d14, %d1, 0, %d14, 0

# CHECK-INST: sh.nand.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0x80,0xe3]
sh.nand.t %d14, %d1, 0, %d14, 7

# CHECK-INST: sh.nand.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x00,0xec]
sh.nand.t %d14, %d1, 0, %d14, 24

# CHECK-INST: sh.nand.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0x80,0xef]
sh.nand.t %d14, %d1, 0, %d14, 31

# CHECK-INST: sh.nand.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x00,0xe0]
sh.nand.t %d14, %d1, 0, %d15, 0

# CHECK-INST: sh.nand.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0x80,0xe3]
sh.nand.t %d14, %d1, 0, %d15, 7

# CHECK-INST: sh.nand.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x00,0xec]
sh.nand.t %d14, %d1, 0, %d15, 24

# CHECK-INST: sh.nand.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0x80,0xef]
sh.nand.t %d14, %d1, 0, %d15, 31

# CHECK-INST: sh.nand.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x07,0xe0]
sh.nand.t %d14, %d1, 7, %d0, 0

# CHECK-INST: sh.nand.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0xa7,0x01,0x87,0xe3]
sh.nand.t %d14, %d1, 7, %d0, 7

# CHECK-INST: sh.nand.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x07,0xec]
sh.nand.t %d14, %d1, 7, %d0, 24

# CHECK-INST: sh.nand.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0xa7,0x01,0x87,0xef]
sh.nand.t %d14, %d1, 7, %d0, 31

# CHECK-INST: sh.nand.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x07,0xe0]
sh.nand.t %d14, %d1, 7, %d1, 0

# CHECK-INST: sh.nand.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0xa7,0x11,0x87,0xe3]
sh.nand.t %d14, %d1, 7, %d1, 7

# CHECK-INST: sh.nand.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x07,0xec]
sh.nand.t %d14, %d1, 7, %d1, 24

# CHECK-INST: sh.nand.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0xa7,0x11,0x87,0xef]
sh.nand.t %d14, %d1, 7, %d1, 31

# CHECK-INST: sh.nand.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x07,0xe0]
sh.nand.t %d14, %d1, 7, %d14, 0

# CHECK-INST: sh.nand.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0x87,0xe3]
sh.nand.t %d14, %d1, 7, %d14, 7

# CHECK-INST: sh.nand.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x07,0xec]
sh.nand.t %d14, %d1, 7, %d14, 24

# CHECK-INST: sh.nand.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0x87,0xef]
sh.nand.t %d14, %d1, 7, %d14, 31

# CHECK-INST: sh.nand.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x07,0xe0]
sh.nand.t %d14, %d1, 7, %d15, 0

# CHECK-INST: sh.nand.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0x87,0xe3]
sh.nand.t %d14, %d1, 7, %d15, 7

# CHECK-INST: sh.nand.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x07,0xec]
sh.nand.t %d14, %d1, 7, %d15, 24

# CHECK-INST: sh.nand.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0x87,0xef]
sh.nand.t %d14, %d1, 7, %d15, 31

# CHECK-INST: sh.nand.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x18,0xe0]
sh.nand.t %d14, %d1, 24, %d0, 0

# CHECK-INST: sh.nand.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0xa7,0x01,0x98,0xe3]
sh.nand.t %d14, %d1, 24, %d0, 7

# CHECK-INST: sh.nand.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x18,0xec]
sh.nand.t %d14, %d1, 24, %d0, 24

# CHECK-INST: sh.nand.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0xa7,0x01,0x98,0xef]
sh.nand.t %d14, %d1, 24, %d0, 31

# CHECK-INST: sh.nand.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x18,0xe0]
sh.nand.t %d14, %d1, 24, %d1, 0

# CHECK-INST: sh.nand.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0xa7,0x11,0x98,0xe3]
sh.nand.t %d14, %d1, 24, %d1, 7

# CHECK-INST: sh.nand.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x18,0xec]
sh.nand.t %d14, %d1, 24, %d1, 24

# CHECK-INST: sh.nand.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0xa7,0x11,0x98,0xef]
sh.nand.t %d14, %d1, 24, %d1, 31

# CHECK-INST: sh.nand.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x18,0xe0]
sh.nand.t %d14, %d1, 24, %d14, 0

# CHECK-INST: sh.nand.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0x98,0xe3]
sh.nand.t %d14, %d1, 24, %d14, 7

# CHECK-INST: sh.nand.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x18,0xec]
sh.nand.t %d14, %d1, 24, %d14, 24

# CHECK-INST: sh.nand.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0x98,0xef]
sh.nand.t %d14, %d1, 24, %d14, 31

# CHECK-INST: sh.nand.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x18,0xe0]
sh.nand.t %d14, %d1, 24, %d15, 0

# CHECK-INST: sh.nand.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0x98,0xe3]
sh.nand.t %d14, %d1, 24, %d15, 7

# CHECK-INST: sh.nand.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x18,0xec]
sh.nand.t %d14, %d1, 24, %d15, 24

# CHECK-INST: sh.nand.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0x98,0xef]
sh.nand.t %d14, %d1, 24, %d15, 31

# CHECK-INST: sh.nand.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x1f,0xe0]
sh.nand.t %d14, %d1, 31, %d0, 0

# CHECK-INST: sh.nand.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0xa7,0x01,0x9f,0xe3]
sh.nand.t %d14, %d1, 31, %d0, 7

# CHECK-INST: sh.nand.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x1f,0xec]
sh.nand.t %d14, %d1, 31, %d0, 24

# CHECK-INST: sh.nand.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0xa7,0x01,0x9f,0xef]
sh.nand.t %d14, %d1, 31, %d0, 31

# CHECK-INST: sh.nand.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x1f,0xe0]
sh.nand.t %d14, %d1, 31, %d1, 0

# CHECK-INST: sh.nand.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0xa7,0x11,0x9f,0xe3]
sh.nand.t %d14, %d1, 31, %d1, 7

# CHECK-INST: sh.nand.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x1f,0xec]
sh.nand.t %d14, %d1, 31, %d1, 24

# CHECK-INST: sh.nand.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0xa7,0x11,0x9f,0xef]
sh.nand.t %d14, %d1, 31, %d1, 31

# CHECK-INST: sh.nand.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x1f,0xe0]
sh.nand.t %d14, %d1, 31, %d14, 0

# CHECK-INST: sh.nand.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0x9f,0xe3]
sh.nand.t %d14, %d1, 31, %d14, 7

# CHECK-INST: sh.nand.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x1f,0xec]
sh.nand.t %d14, %d1, 31, %d14, 24

# CHECK-INST: sh.nand.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0x9f,0xef]
sh.nand.t %d14, %d1, 31, %d14, 31

# CHECK-INST: sh.nand.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x1f,0xe0]
sh.nand.t %d14, %d1, 31, %d15, 0

# CHECK-INST: sh.nand.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0x9f,0xe3]
sh.nand.t %d14, %d1, 31, %d15, 7

# CHECK-INST: sh.nand.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x1f,0xec]
sh.nand.t %d14, %d1, 31, %d15, 24

# CHECK-INST: sh.nand.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0x9f,0xef]
sh.nand.t %d14, %d1, 31, %d15, 31

# CHECK-INST: sh.nand.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x00,0xe0]
sh.nand.t %d14, %d14, 0, %d0, 0

# CHECK-INST: sh.nand.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0x80,0xe3]
sh.nand.t %d14, %d14, 0, %d0, 7

# CHECK-INST: sh.nand.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x00,0xec]
sh.nand.t %d14, %d14, 0, %d0, 24

# CHECK-INST: sh.nand.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0x80,0xef]
sh.nand.t %d14, %d14, 0, %d0, 31

# CHECK-INST: sh.nand.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x00,0xe0]
sh.nand.t %d14, %d14, 0, %d1, 0

# CHECK-INST: sh.nand.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0x80,0xe3]
sh.nand.t %d14, %d14, 0, %d1, 7

# CHECK-INST: sh.nand.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x00,0xec]
sh.nand.t %d14, %d14, 0, %d1, 24

# CHECK-INST: sh.nand.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0x80,0xef]
sh.nand.t %d14, %d14, 0, %d1, 31

# CHECK-INST: sh.nand.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x00,0xe0]
sh.nand.t %d14, %d14, 0, %d14, 0

# CHECK-INST: sh.nand.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0xa7,0xee,0x80,0xe3]
sh.nand.t %d14, %d14, 0, %d14, 7

# CHECK-INST: sh.nand.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x00,0xec]
sh.nand.t %d14, %d14, 0, %d14, 24

# CHECK-INST: sh.nand.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0xa7,0xee,0x80,0xef]
sh.nand.t %d14, %d14, 0, %d14, 31

# CHECK-INST: sh.nand.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x00,0xe0]
sh.nand.t %d14, %d14, 0, %d15, 0

# CHECK-INST: sh.nand.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0x80,0xe3]
sh.nand.t %d14, %d14, 0, %d15, 7

# CHECK-INST: sh.nand.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x00,0xec]
sh.nand.t %d14, %d14, 0, %d15, 24

# CHECK-INST: sh.nand.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0x80,0xef]
sh.nand.t %d14, %d14, 0, %d15, 31

# CHECK-INST: sh.nand.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x07,0xe0]
sh.nand.t %d14, %d14, 7, %d0, 0

# CHECK-INST: sh.nand.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0x87,0xe3]
sh.nand.t %d14, %d14, 7, %d0, 7

# CHECK-INST: sh.nand.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x07,0xec]
sh.nand.t %d14, %d14, 7, %d0, 24

# CHECK-INST: sh.nand.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0x87,0xef]
sh.nand.t %d14, %d14, 7, %d0, 31

# CHECK-INST: sh.nand.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x07,0xe0]
sh.nand.t %d14, %d14, 7, %d1, 0

# CHECK-INST: sh.nand.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0x87,0xe3]
sh.nand.t %d14, %d14, 7, %d1, 7

# CHECK-INST: sh.nand.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x07,0xec]
sh.nand.t %d14, %d14, 7, %d1, 24

# CHECK-INST: sh.nand.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0x87,0xef]
sh.nand.t %d14, %d14, 7, %d1, 31

# CHECK-INST: sh.nand.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x07,0xe0]
sh.nand.t %d14, %d14, 7, %d14, 0

# CHECK-INST: sh.nand.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0xa7,0xee,0x87,0xe3]
sh.nand.t %d14, %d14, 7, %d14, 7

# CHECK-INST: sh.nand.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x07,0xec]
sh.nand.t %d14, %d14, 7, %d14, 24

# CHECK-INST: sh.nand.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0xa7,0xee,0x87,0xef]
sh.nand.t %d14, %d14, 7, %d14, 31

# CHECK-INST: sh.nand.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x07,0xe0]
sh.nand.t %d14, %d14, 7, %d15, 0

# CHECK-INST: sh.nand.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0x87,0xe3]
sh.nand.t %d14, %d14, 7, %d15, 7

# CHECK-INST: sh.nand.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x07,0xec]
sh.nand.t %d14, %d14, 7, %d15, 24

# CHECK-INST: sh.nand.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0x87,0xef]
sh.nand.t %d14, %d14, 7, %d15, 31

# CHECK-INST: sh.nand.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x18,0xe0]
sh.nand.t %d14, %d14, 24, %d0, 0

# CHECK-INST: sh.nand.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0x98,0xe3]
sh.nand.t %d14, %d14, 24, %d0, 7

# CHECK-INST: sh.nand.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x18,0xec]
sh.nand.t %d14, %d14, 24, %d0, 24

# CHECK-INST: sh.nand.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0x98,0xef]
sh.nand.t %d14, %d14, 24, %d0, 31

# CHECK-INST: sh.nand.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x18,0xe0]
sh.nand.t %d14, %d14, 24, %d1, 0

# CHECK-INST: sh.nand.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0x98,0xe3]
sh.nand.t %d14, %d14, 24, %d1, 7

# CHECK-INST: sh.nand.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x18,0xec]
sh.nand.t %d14, %d14, 24, %d1, 24

# CHECK-INST: sh.nand.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0x98,0xef]
sh.nand.t %d14, %d14, 24, %d1, 31

# CHECK-INST: sh.nand.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x18,0xe0]
sh.nand.t %d14, %d14, 24, %d14, 0

# CHECK-INST: sh.nand.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0xa7,0xee,0x98,0xe3]
sh.nand.t %d14, %d14, 24, %d14, 7

# CHECK-INST: sh.nand.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x18,0xec]
sh.nand.t %d14, %d14, 24, %d14, 24

# CHECK-INST: sh.nand.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0xa7,0xee,0x98,0xef]
sh.nand.t %d14, %d14, 24, %d14, 31

# CHECK-INST: sh.nand.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x18,0xe0]
sh.nand.t %d14, %d14, 24, %d15, 0

# CHECK-INST: sh.nand.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0x98,0xe3]
sh.nand.t %d14, %d14, 24, %d15, 7

# CHECK-INST: sh.nand.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x18,0xec]
sh.nand.t %d14, %d14, 24, %d15, 24

# CHECK-INST: sh.nand.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0x98,0xef]
sh.nand.t %d14, %d14, 24, %d15, 31

# CHECK-INST: sh.nand.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x1f,0xe0]
sh.nand.t %d14, %d14, 31, %d0, 0

# CHECK-INST: sh.nand.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0x9f,0xe3]
sh.nand.t %d14, %d14, 31, %d0, 7

# CHECK-INST: sh.nand.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x1f,0xec]
sh.nand.t %d14, %d14, 31, %d0, 24

# CHECK-INST: sh.nand.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0x9f,0xef]
sh.nand.t %d14, %d14, 31, %d0, 31

# CHECK-INST: sh.nand.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x1f,0xe0]
sh.nand.t %d14, %d14, 31, %d1, 0

# CHECK-INST: sh.nand.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0x9f,0xe3]
sh.nand.t %d14, %d14, 31, %d1, 7

# CHECK-INST: sh.nand.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x1f,0xec]
sh.nand.t %d14, %d14, 31, %d1, 24

# CHECK-INST: sh.nand.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0x9f,0xef]
sh.nand.t %d14, %d14, 31, %d1, 31

# CHECK-INST: sh.nand.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x1f,0xe0]
sh.nand.t %d14, %d14, 31, %d14, 0

# CHECK-INST: sh.nand.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0xa7,0xee,0x9f,0xe3]
sh.nand.t %d14, %d14, 31, %d14, 7

# CHECK-INST: sh.nand.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x1f,0xec]
sh.nand.t %d14, %d14, 31, %d14, 24

# CHECK-INST: sh.nand.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0xa7,0xee,0x9f,0xef]
sh.nand.t %d14, %d14, 31, %d14, 31

# CHECK-INST: sh.nand.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x1f,0xe0]
sh.nand.t %d14, %d14, 31, %d15, 0

# CHECK-INST: sh.nand.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0x9f,0xe3]
sh.nand.t %d14, %d14, 31, %d15, 7

# CHECK-INST: sh.nand.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x1f,0xec]
sh.nand.t %d14, %d14, 31, %d15, 24

# CHECK-INST: sh.nand.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0x9f,0xef]
sh.nand.t %d14, %d14, 31, %d15, 31

# CHECK-INST: sh.nand.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x00,0xe0]
sh.nand.t %d14, %d15, 0, %d0, 0

# CHECK-INST: sh.nand.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0x80,0xe3]
sh.nand.t %d14, %d15, 0, %d0, 7

# CHECK-INST: sh.nand.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x00,0xec]
sh.nand.t %d14, %d15, 0, %d0, 24

# CHECK-INST: sh.nand.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0x80,0xef]
sh.nand.t %d14, %d15, 0, %d0, 31

# CHECK-INST: sh.nand.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x00,0xe0]
sh.nand.t %d14, %d15, 0, %d1, 0

# CHECK-INST: sh.nand.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0x80,0xe3]
sh.nand.t %d14, %d15, 0, %d1, 7

# CHECK-INST: sh.nand.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x00,0xec]
sh.nand.t %d14, %d15, 0, %d1, 24

# CHECK-INST: sh.nand.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0x80,0xef]
sh.nand.t %d14, %d15, 0, %d1, 31

# CHECK-INST: sh.nand.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x00,0xe0]
sh.nand.t %d14, %d15, 0, %d14, 0

# CHECK-INST: sh.nand.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0xa7,0xef,0x80,0xe3]
sh.nand.t %d14, %d15, 0, %d14, 7

# CHECK-INST: sh.nand.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x00,0xec]
sh.nand.t %d14, %d15, 0, %d14, 24

# CHECK-INST: sh.nand.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0xa7,0xef,0x80,0xef]
sh.nand.t %d14, %d15, 0, %d14, 31

# CHECK-INST: sh.nand.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x00,0xe0]
sh.nand.t %d14, %d15, 0, %d15, 0

# CHECK-INST: sh.nand.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0xa7,0xff,0x80,0xe3]
sh.nand.t %d14, %d15, 0, %d15, 7

# CHECK-INST: sh.nand.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x00,0xec]
sh.nand.t %d14, %d15, 0, %d15, 24

# CHECK-INST: sh.nand.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0xa7,0xff,0x80,0xef]
sh.nand.t %d14, %d15, 0, %d15, 31

# CHECK-INST: sh.nand.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x07,0xe0]
sh.nand.t %d14, %d15, 7, %d0, 0

# CHECK-INST: sh.nand.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0x87,0xe3]
sh.nand.t %d14, %d15, 7, %d0, 7

# CHECK-INST: sh.nand.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x07,0xec]
sh.nand.t %d14, %d15, 7, %d0, 24

# CHECK-INST: sh.nand.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0x87,0xef]
sh.nand.t %d14, %d15, 7, %d0, 31

# CHECK-INST: sh.nand.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x07,0xe0]
sh.nand.t %d14, %d15, 7, %d1, 0

# CHECK-INST: sh.nand.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0x87,0xe3]
sh.nand.t %d14, %d15, 7, %d1, 7

# CHECK-INST: sh.nand.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x07,0xec]
sh.nand.t %d14, %d15, 7, %d1, 24

# CHECK-INST: sh.nand.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0x87,0xef]
sh.nand.t %d14, %d15, 7, %d1, 31

# CHECK-INST: sh.nand.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x07,0xe0]
sh.nand.t %d14, %d15, 7, %d14, 0

# CHECK-INST: sh.nand.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0xa7,0xef,0x87,0xe3]
sh.nand.t %d14, %d15, 7, %d14, 7

# CHECK-INST: sh.nand.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x07,0xec]
sh.nand.t %d14, %d15, 7, %d14, 24

# CHECK-INST: sh.nand.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0xa7,0xef,0x87,0xef]
sh.nand.t %d14, %d15, 7, %d14, 31

# CHECK-INST: sh.nand.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x07,0xe0]
sh.nand.t %d14, %d15, 7, %d15, 0

# CHECK-INST: sh.nand.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0xa7,0xff,0x87,0xe3]
sh.nand.t %d14, %d15, 7, %d15, 7

# CHECK-INST: sh.nand.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x07,0xec]
sh.nand.t %d14, %d15, 7, %d15, 24

# CHECK-INST: sh.nand.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0xa7,0xff,0x87,0xef]
sh.nand.t %d14, %d15, 7, %d15, 31

# CHECK-INST: sh.nand.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x18,0xe0]
sh.nand.t %d14, %d15, 24, %d0, 0

# CHECK-INST: sh.nand.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0x98,0xe3]
sh.nand.t %d14, %d15, 24, %d0, 7

# CHECK-INST: sh.nand.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x18,0xec]
sh.nand.t %d14, %d15, 24, %d0, 24

# CHECK-INST: sh.nand.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0x98,0xef]
sh.nand.t %d14, %d15, 24, %d0, 31

# CHECK-INST: sh.nand.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x18,0xe0]
sh.nand.t %d14, %d15, 24, %d1, 0

# CHECK-INST: sh.nand.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0x98,0xe3]
sh.nand.t %d14, %d15, 24, %d1, 7

# CHECK-INST: sh.nand.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x18,0xec]
sh.nand.t %d14, %d15, 24, %d1, 24

# CHECK-INST: sh.nand.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0x98,0xef]
sh.nand.t %d14, %d15, 24, %d1, 31

# CHECK-INST: sh.nand.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x18,0xe0]
sh.nand.t %d14, %d15, 24, %d14, 0

# CHECK-INST: sh.nand.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0xa7,0xef,0x98,0xe3]
sh.nand.t %d14, %d15, 24, %d14, 7

# CHECK-INST: sh.nand.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x18,0xec]
sh.nand.t %d14, %d15, 24, %d14, 24

# CHECK-INST: sh.nand.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0xa7,0xef,0x98,0xef]
sh.nand.t %d14, %d15, 24, %d14, 31

# CHECK-INST: sh.nand.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x18,0xe0]
sh.nand.t %d14, %d15, 24, %d15, 0

# CHECK-INST: sh.nand.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0xa7,0xff,0x98,0xe3]
sh.nand.t %d14, %d15, 24, %d15, 7

# CHECK-INST: sh.nand.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x18,0xec]
sh.nand.t %d14, %d15, 24, %d15, 24

# CHECK-INST: sh.nand.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0xa7,0xff,0x98,0xef]
sh.nand.t %d14, %d15, 24, %d15, 31

# CHECK-INST: sh.nand.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x1f,0xe0]
sh.nand.t %d14, %d15, 31, %d0, 0

# CHECK-INST: sh.nand.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0x9f,0xe3]
sh.nand.t %d14, %d15, 31, %d0, 7

# CHECK-INST: sh.nand.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x1f,0xec]
sh.nand.t %d14, %d15, 31, %d0, 24

# CHECK-INST: sh.nand.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0x9f,0xef]
sh.nand.t %d14, %d15, 31, %d0, 31

# CHECK-INST: sh.nand.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x1f,0xe0]
sh.nand.t %d14, %d15, 31, %d1, 0

# CHECK-INST: sh.nand.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0x9f,0xe3]
sh.nand.t %d14, %d15, 31, %d1, 7

# CHECK-INST: sh.nand.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x1f,0xec]
sh.nand.t %d14, %d15, 31, %d1, 24

# CHECK-INST: sh.nand.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0x9f,0xef]
sh.nand.t %d14, %d15, 31, %d1, 31

# CHECK-INST: sh.nand.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x1f,0xe0]
sh.nand.t %d14, %d15, 31, %d14, 0

# CHECK-INST: sh.nand.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0xa7,0xef,0x9f,0xe3]
sh.nand.t %d14, %d15, 31, %d14, 7

# CHECK-INST: sh.nand.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x1f,0xec]
sh.nand.t %d14, %d15, 31, %d14, 24

# CHECK-INST: sh.nand.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0xa7,0xef,0x9f,0xef]
sh.nand.t %d14, %d15, 31, %d14, 31

# CHECK-INST: sh.nand.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x1f,0xe0]
sh.nand.t %d14, %d15, 31, %d15, 0

# CHECK-INST: sh.nand.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0xa7,0xff,0x9f,0xe3]
sh.nand.t %d14, %d15, 31, %d15, 7

# CHECK-INST: sh.nand.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x1f,0xec]
sh.nand.t %d14, %d15, 31, %d15, 24

# CHECK-INST: sh.nand.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0xa7,0xff,0x9f,0xef]
sh.nand.t %d14, %d15, 31, %d15, 31

# CHECK-INST: sh.nand.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x00,0xf0]
sh.nand.t %d15, %d0, 0, %d0, 0

# CHECK-INST: sh.nand.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0xa7,0x00,0x80,0xf3]
sh.nand.t %d15, %d0, 0, %d0, 7

# CHECK-INST: sh.nand.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x00,0xfc]
sh.nand.t %d15, %d0, 0, %d0, 24

# CHECK-INST: sh.nand.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0xa7,0x00,0x80,0xff]
sh.nand.t %d15, %d0, 0, %d0, 31

# CHECK-INST: sh.nand.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x00,0xf0]
sh.nand.t %d15, %d0, 0, %d1, 0

# CHECK-INST: sh.nand.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0xa7,0x10,0x80,0xf3]
sh.nand.t %d15, %d0, 0, %d1, 7

# CHECK-INST: sh.nand.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x00,0xfc]
sh.nand.t %d15, %d0, 0, %d1, 24

# CHECK-INST: sh.nand.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0xa7,0x10,0x80,0xff]
sh.nand.t %d15, %d0, 0, %d1, 31

# CHECK-INST: sh.nand.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x00,0xf0]
sh.nand.t %d15, %d0, 0, %d14, 0

# CHECK-INST: sh.nand.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0x80,0xf3]
sh.nand.t %d15, %d0, 0, %d14, 7

# CHECK-INST: sh.nand.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x00,0xfc]
sh.nand.t %d15, %d0, 0, %d14, 24

# CHECK-INST: sh.nand.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0x80,0xff]
sh.nand.t %d15, %d0, 0, %d14, 31

# CHECK-INST: sh.nand.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x00,0xf0]
sh.nand.t %d15, %d0, 0, %d15, 0

# CHECK-INST: sh.nand.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0x80,0xf3]
sh.nand.t %d15, %d0, 0, %d15, 7

# CHECK-INST: sh.nand.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x00,0xfc]
sh.nand.t %d15, %d0, 0, %d15, 24

# CHECK-INST: sh.nand.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0x80,0xff]
sh.nand.t %d15, %d0, 0, %d15, 31

# CHECK-INST: sh.nand.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x07,0xf0]
sh.nand.t %d15, %d0, 7, %d0, 0

# CHECK-INST: sh.nand.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0xa7,0x00,0x87,0xf3]
sh.nand.t %d15, %d0, 7, %d0, 7

# CHECK-INST: sh.nand.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x07,0xfc]
sh.nand.t %d15, %d0, 7, %d0, 24

# CHECK-INST: sh.nand.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0xa7,0x00,0x87,0xff]
sh.nand.t %d15, %d0, 7, %d0, 31

# CHECK-INST: sh.nand.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x07,0xf0]
sh.nand.t %d15, %d0, 7, %d1, 0

# CHECK-INST: sh.nand.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0xa7,0x10,0x87,0xf3]
sh.nand.t %d15, %d0, 7, %d1, 7

# CHECK-INST: sh.nand.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x07,0xfc]
sh.nand.t %d15, %d0, 7, %d1, 24

# CHECK-INST: sh.nand.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0xa7,0x10,0x87,0xff]
sh.nand.t %d15, %d0, 7, %d1, 31

# CHECK-INST: sh.nand.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x07,0xf0]
sh.nand.t %d15, %d0, 7, %d14, 0

# CHECK-INST: sh.nand.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0x87,0xf3]
sh.nand.t %d15, %d0, 7, %d14, 7

# CHECK-INST: sh.nand.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x07,0xfc]
sh.nand.t %d15, %d0, 7, %d14, 24

# CHECK-INST: sh.nand.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0x87,0xff]
sh.nand.t %d15, %d0, 7, %d14, 31

# CHECK-INST: sh.nand.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x07,0xf0]
sh.nand.t %d15, %d0, 7, %d15, 0

# CHECK-INST: sh.nand.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0x87,0xf3]
sh.nand.t %d15, %d0, 7, %d15, 7

# CHECK-INST: sh.nand.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x07,0xfc]
sh.nand.t %d15, %d0, 7, %d15, 24

# CHECK-INST: sh.nand.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0x87,0xff]
sh.nand.t %d15, %d0, 7, %d15, 31

# CHECK-INST: sh.nand.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x18,0xf0]
sh.nand.t %d15, %d0, 24, %d0, 0

# CHECK-INST: sh.nand.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0xa7,0x00,0x98,0xf3]
sh.nand.t %d15, %d0, 24, %d0, 7

# CHECK-INST: sh.nand.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x18,0xfc]
sh.nand.t %d15, %d0, 24, %d0, 24

# CHECK-INST: sh.nand.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0xa7,0x00,0x98,0xff]
sh.nand.t %d15, %d0, 24, %d0, 31

# CHECK-INST: sh.nand.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x18,0xf0]
sh.nand.t %d15, %d0, 24, %d1, 0

# CHECK-INST: sh.nand.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0xa7,0x10,0x98,0xf3]
sh.nand.t %d15, %d0, 24, %d1, 7

# CHECK-INST: sh.nand.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x18,0xfc]
sh.nand.t %d15, %d0, 24, %d1, 24

# CHECK-INST: sh.nand.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0xa7,0x10,0x98,0xff]
sh.nand.t %d15, %d0, 24, %d1, 31

# CHECK-INST: sh.nand.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x18,0xf0]
sh.nand.t %d15, %d0, 24, %d14, 0

# CHECK-INST: sh.nand.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0x98,0xf3]
sh.nand.t %d15, %d0, 24, %d14, 7

# CHECK-INST: sh.nand.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x18,0xfc]
sh.nand.t %d15, %d0, 24, %d14, 24

# CHECK-INST: sh.nand.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0x98,0xff]
sh.nand.t %d15, %d0, 24, %d14, 31

# CHECK-INST: sh.nand.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x18,0xf0]
sh.nand.t %d15, %d0, 24, %d15, 0

# CHECK-INST: sh.nand.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0x98,0xf3]
sh.nand.t %d15, %d0, 24, %d15, 7

# CHECK-INST: sh.nand.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x18,0xfc]
sh.nand.t %d15, %d0, 24, %d15, 24

# CHECK-INST: sh.nand.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0x98,0xff]
sh.nand.t %d15, %d0, 24, %d15, 31

# CHECK-INST: sh.nand.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x1f,0xf0]
sh.nand.t %d15, %d0, 31, %d0, 0

# CHECK-INST: sh.nand.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0xa7,0x00,0x9f,0xf3]
sh.nand.t %d15, %d0, 31, %d0, 7

# CHECK-INST: sh.nand.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x1f,0xfc]
sh.nand.t %d15, %d0, 31, %d0, 24

# CHECK-INST: sh.nand.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0xa7,0x00,0x9f,0xff]
sh.nand.t %d15, %d0, 31, %d0, 31

# CHECK-INST: sh.nand.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x1f,0xf0]
sh.nand.t %d15, %d0, 31, %d1, 0

# CHECK-INST: sh.nand.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0xa7,0x10,0x9f,0xf3]
sh.nand.t %d15, %d0, 31, %d1, 7

# CHECK-INST: sh.nand.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x1f,0xfc]
sh.nand.t %d15, %d0, 31, %d1, 24

# CHECK-INST: sh.nand.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0xa7,0x10,0x9f,0xff]
sh.nand.t %d15, %d0, 31, %d1, 31

# CHECK-INST: sh.nand.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x1f,0xf0]
sh.nand.t %d15, %d0, 31, %d14, 0

# CHECK-INST: sh.nand.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0x9f,0xf3]
sh.nand.t %d15, %d0, 31, %d14, 7

# CHECK-INST: sh.nand.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x1f,0xfc]
sh.nand.t %d15, %d0, 31, %d14, 24

# CHECK-INST: sh.nand.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0x9f,0xff]
sh.nand.t %d15, %d0, 31, %d14, 31

# CHECK-INST: sh.nand.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x1f,0xf0]
sh.nand.t %d15, %d0, 31, %d15, 0

# CHECK-INST: sh.nand.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0x9f,0xf3]
sh.nand.t %d15, %d0, 31, %d15, 7

# CHECK-INST: sh.nand.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x1f,0xfc]
sh.nand.t %d15, %d0, 31, %d15, 24

# CHECK-INST: sh.nand.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0x9f,0xff]
sh.nand.t %d15, %d0, 31, %d15, 31

# CHECK-INST: sh.nand.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x00,0xf0]
sh.nand.t %d15, %d1, 0, %d0, 0

# CHECK-INST: sh.nand.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0xa7,0x01,0x80,0xf3]
sh.nand.t %d15, %d1, 0, %d0, 7

# CHECK-INST: sh.nand.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x00,0xfc]
sh.nand.t %d15, %d1, 0, %d0, 24

# CHECK-INST: sh.nand.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0xa7,0x01,0x80,0xff]
sh.nand.t %d15, %d1, 0, %d0, 31

# CHECK-INST: sh.nand.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x00,0xf0]
sh.nand.t %d15, %d1, 0, %d1, 0

# CHECK-INST: sh.nand.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0xa7,0x11,0x80,0xf3]
sh.nand.t %d15, %d1, 0, %d1, 7

# CHECK-INST: sh.nand.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x00,0xfc]
sh.nand.t %d15, %d1, 0, %d1, 24

# CHECK-INST: sh.nand.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0xa7,0x11,0x80,0xff]
sh.nand.t %d15, %d1, 0, %d1, 31

# CHECK-INST: sh.nand.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x00,0xf0]
sh.nand.t %d15, %d1, 0, %d14, 0

# CHECK-INST: sh.nand.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0x80,0xf3]
sh.nand.t %d15, %d1, 0, %d14, 7

# CHECK-INST: sh.nand.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x00,0xfc]
sh.nand.t %d15, %d1, 0, %d14, 24

# CHECK-INST: sh.nand.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0x80,0xff]
sh.nand.t %d15, %d1, 0, %d14, 31

# CHECK-INST: sh.nand.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x00,0xf0]
sh.nand.t %d15, %d1, 0, %d15, 0

# CHECK-INST: sh.nand.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0x80,0xf3]
sh.nand.t %d15, %d1, 0, %d15, 7

# CHECK-INST: sh.nand.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x00,0xfc]
sh.nand.t %d15, %d1, 0, %d15, 24

# CHECK-INST: sh.nand.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0x80,0xff]
sh.nand.t %d15, %d1, 0, %d15, 31

# CHECK-INST: sh.nand.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x07,0xf0]
sh.nand.t %d15, %d1, 7, %d0, 0

# CHECK-INST: sh.nand.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0xa7,0x01,0x87,0xf3]
sh.nand.t %d15, %d1, 7, %d0, 7

# CHECK-INST: sh.nand.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x07,0xfc]
sh.nand.t %d15, %d1, 7, %d0, 24

# CHECK-INST: sh.nand.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0xa7,0x01,0x87,0xff]
sh.nand.t %d15, %d1, 7, %d0, 31

# CHECK-INST: sh.nand.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x07,0xf0]
sh.nand.t %d15, %d1, 7, %d1, 0

# CHECK-INST: sh.nand.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0xa7,0x11,0x87,0xf3]
sh.nand.t %d15, %d1, 7, %d1, 7

# CHECK-INST: sh.nand.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x07,0xfc]
sh.nand.t %d15, %d1, 7, %d1, 24

# CHECK-INST: sh.nand.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0xa7,0x11,0x87,0xff]
sh.nand.t %d15, %d1, 7, %d1, 31

# CHECK-INST: sh.nand.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x07,0xf0]
sh.nand.t %d15, %d1, 7, %d14, 0

# CHECK-INST: sh.nand.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0x87,0xf3]
sh.nand.t %d15, %d1, 7, %d14, 7

# CHECK-INST: sh.nand.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x07,0xfc]
sh.nand.t %d15, %d1, 7, %d14, 24

# CHECK-INST: sh.nand.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0x87,0xff]
sh.nand.t %d15, %d1, 7, %d14, 31

# CHECK-INST: sh.nand.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x07,0xf0]
sh.nand.t %d15, %d1, 7, %d15, 0

# CHECK-INST: sh.nand.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0x87,0xf3]
sh.nand.t %d15, %d1, 7, %d15, 7

# CHECK-INST: sh.nand.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x07,0xfc]
sh.nand.t %d15, %d1, 7, %d15, 24

# CHECK-INST: sh.nand.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0x87,0xff]
sh.nand.t %d15, %d1, 7, %d15, 31

# CHECK-INST: sh.nand.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x18,0xf0]
sh.nand.t %d15, %d1, 24, %d0, 0

# CHECK-INST: sh.nand.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0xa7,0x01,0x98,0xf3]
sh.nand.t %d15, %d1, 24, %d0, 7

# CHECK-INST: sh.nand.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x18,0xfc]
sh.nand.t %d15, %d1, 24, %d0, 24

# CHECK-INST: sh.nand.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0xa7,0x01,0x98,0xff]
sh.nand.t %d15, %d1, 24, %d0, 31

# CHECK-INST: sh.nand.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x18,0xf0]
sh.nand.t %d15, %d1, 24, %d1, 0

# CHECK-INST: sh.nand.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0xa7,0x11,0x98,0xf3]
sh.nand.t %d15, %d1, 24, %d1, 7

# CHECK-INST: sh.nand.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x18,0xfc]
sh.nand.t %d15, %d1, 24, %d1, 24

# CHECK-INST: sh.nand.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0xa7,0x11,0x98,0xff]
sh.nand.t %d15, %d1, 24, %d1, 31

# CHECK-INST: sh.nand.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x18,0xf0]
sh.nand.t %d15, %d1, 24, %d14, 0

# CHECK-INST: sh.nand.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0x98,0xf3]
sh.nand.t %d15, %d1, 24, %d14, 7

# CHECK-INST: sh.nand.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x18,0xfc]
sh.nand.t %d15, %d1, 24, %d14, 24

# CHECK-INST: sh.nand.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0x98,0xff]
sh.nand.t %d15, %d1, 24, %d14, 31

# CHECK-INST: sh.nand.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x18,0xf0]
sh.nand.t %d15, %d1, 24, %d15, 0

# CHECK-INST: sh.nand.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0x98,0xf3]
sh.nand.t %d15, %d1, 24, %d15, 7

# CHECK-INST: sh.nand.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x18,0xfc]
sh.nand.t %d15, %d1, 24, %d15, 24

# CHECK-INST: sh.nand.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0x98,0xff]
sh.nand.t %d15, %d1, 24, %d15, 31

# CHECK-INST: sh.nand.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x1f,0xf0]
sh.nand.t %d15, %d1, 31, %d0, 0

# CHECK-INST: sh.nand.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0xa7,0x01,0x9f,0xf3]
sh.nand.t %d15, %d1, 31, %d0, 7

# CHECK-INST: sh.nand.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x1f,0xfc]
sh.nand.t %d15, %d1, 31, %d0, 24

# CHECK-INST: sh.nand.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0xa7,0x01,0x9f,0xff]
sh.nand.t %d15, %d1, 31, %d0, 31

# CHECK-INST: sh.nand.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x1f,0xf0]
sh.nand.t %d15, %d1, 31, %d1, 0

# CHECK-INST: sh.nand.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0xa7,0x11,0x9f,0xf3]
sh.nand.t %d15, %d1, 31, %d1, 7

# CHECK-INST: sh.nand.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x1f,0xfc]
sh.nand.t %d15, %d1, 31, %d1, 24

# CHECK-INST: sh.nand.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0xa7,0x11,0x9f,0xff]
sh.nand.t %d15, %d1, 31, %d1, 31

# CHECK-INST: sh.nand.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x1f,0xf0]
sh.nand.t %d15, %d1, 31, %d14, 0

# CHECK-INST: sh.nand.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0x9f,0xf3]
sh.nand.t %d15, %d1, 31, %d14, 7

# CHECK-INST: sh.nand.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x1f,0xfc]
sh.nand.t %d15, %d1, 31, %d14, 24

# CHECK-INST: sh.nand.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0x9f,0xff]
sh.nand.t %d15, %d1, 31, %d14, 31

# CHECK-INST: sh.nand.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x1f,0xf0]
sh.nand.t %d15, %d1, 31, %d15, 0

# CHECK-INST: sh.nand.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0x9f,0xf3]
sh.nand.t %d15, %d1, 31, %d15, 7

# CHECK-INST: sh.nand.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x1f,0xfc]
sh.nand.t %d15, %d1, 31, %d15, 24

# CHECK-INST: sh.nand.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0x9f,0xff]
sh.nand.t %d15, %d1, 31, %d15, 31

# CHECK-INST: sh.nand.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x00,0xf0]
sh.nand.t %d15, %d14, 0, %d0, 0

# CHECK-INST: sh.nand.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0x80,0xf3]
sh.nand.t %d15, %d14, 0, %d0, 7

# CHECK-INST: sh.nand.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x00,0xfc]
sh.nand.t %d15, %d14, 0, %d0, 24

# CHECK-INST: sh.nand.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0x80,0xff]
sh.nand.t %d15, %d14, 0, %d0, 31

# CHECK-INST: sh.nand.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x00,0xf0]
sh.nand.t %d15, %d14, 0, %d1, 0

# CHECK-INST: sh.nand.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0x80,0xf3]
sh.nand.t %d15, %d14, 0, %d1, 7

# CHECK-INST: sh.nand.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x00,0xfc]
sh.nand.t %d15, %d14, 0, %d1, 24

# CHECK-INST: sh.nand.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0x80,0xff]
sh.nand.t %d15, %d14, 0, %d1, 31

# CHECK-INST: sh.nand.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x00,0xf0]
sh.nand.t %d15, %d14, 0, %d14, 0

# CHECK-INST: sh.nand.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0xa7,0xee,0x80,0xf3]
sh.nand.t %d15, %d14, 0, %d14, 7

# CHECK-INST: sh.nand.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x00,0xfc]
sh.nand.t %d15, %d14, 0, %d14, 24

# CHECK-INST: sh.nand.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0xa7,0xee,0x80,0xff]
sh.nand.t %d15, %d14, 0, %d14, 31

# CHECK-INST: sh.nand.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x00,0xf0]
sh.nand.t %d15, %d14, 0, %d15, 0

# CHECK-INST: sh.nand.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0x80,0xf3]
sh.nand.t %d15, %d14, 0, %d15, 7

# CHECK-INST: sh.nand.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x00,0xfc]
sh.nand.t %d15, %d14, 0, %d15, 24

# CHECK-INST: sh.nand.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0x80,0xff]
sh.nand.t %d15, %d14, 0, %d15, 31

# CHECK-INST: sh.nand.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x07,0xf0]
sh.nand.t %d15, %d14, 7, %d0, 0

# CHECK-INST: sh.nand.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0x87,0xf3]
sh.nand.t %d15, %d14, 7, %d0, 7

# CHECK-INST: sh.nand.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x07,0xfc]
sh.nand.t %d15, %d14, 7, %d0, 24

# CHECK-INST: sh.nand.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0x87,0xff]
sh.nand.t %d15, %d14, 7, %d0, 31

# CHECK-INST: sh.nand.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x07,0xf0]
sh.nand.t %d15, %d14, 7, %d1, 0

# CHECK-INST: sh.nand.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0x87,0xf3]
sh.nand.t %d15, %d14, 7, %d1, 7

# CHECK-INST: sh.nand.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x07,0xfc]
sh.nand.t %d15, %d14, 7, %d1, 24

# CHECK-INST: sh.nand.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0x87,0xff]
sh.nand.t %d15, %d14, 7, %d1, 31

# CHECK-INST: sh.nand.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x07,0xf0]
sh.nand.t %d15, %d14, 7, %d14, 0

# CHECK-INST: sh.nand.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0xa7,0xee,0x87,0xf3]
sh.nand.t %d15, %d14, 7, %d14, 7

# CHECK-INST: sh.nand.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x07,0xfc]
sh.nand.t %d15, %d14, 7, %d14, 24

# CHECK-INST: sh.nand.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0xa7,0xee,0x87,0xff]
sh.nand.t %d15, %d14, 7, %d14, 31

# CHECK-INST: sh.nand.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x07,0xf0]
sh.nand.t %d15, %d14, 7, %d15, 0

# CHECK-INST: sh.nand.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0x87,0xf3]
sh.nand.t %d15, %d14, 7, %d15, 7

# CHECK-INST: sh.nand.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x07,0xfc]
sh.nand.t %d15, %d14, 7, %d15, 24

# CHECK-INST: sh.nand.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0x87,0xff]
sh.nand.t %d15, %d14, 7, %d15, 31

# CHECK-INST: sh.nand.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x18,0xf0]
sh.nand.t %d15, %d14, 24, %d0, 0

# CHECK-INST: sh.nand.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0x98,0xf3]
sh.nand.t %d15, %d14, 24, %d0, 7

# CHECK-INST: sh.nand.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x18,0xfc]
sh.nand.t %d15, %d14, 24, %d0, 24

# CHECK-INST: sh.nand.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0x98,0xff]
sh.nand.t %d15, %d14, 24, %d0, 31

# CHECK-INST: sh.nand.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x18,0xf0]
sh.nand.t %d15, %d14, 24, %d1, 0

# CHECK-INST: sh.nand.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0x98,0xf3]
sh.nand.t %d15, %d14, 24, %d1, 7

# CHECK-INST: sh.nand.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x18,0xfc]
sh.nand.t %d15, %d14, 24, %d1, 24

# CHECK-INST: sh.nand.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0x98,0xff]
sh.nand.t %d15, %d14, 24, %d1, 31

# CHECK-INST: sh.nand.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x18,0xf0]
sh.nand.t %d15, %d14, 24, %d14, 0

# CHECK-INST: sh.nand.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0xa7,0xee,0x98,0xf3]
sh.nand.t %d15, %d14, 24, %d14, 7

# CHECK-INST: sh.nand.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x18,0xfc]
sh.nand.t %d15, %d14, 24, %d14, 24

# CHECK-INST: sh.nand.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0xa7,0xee,0x98,0xff]
sh.nand.t %d15, %d14, 24, %d14, 31

# CHECK-INST: sh.nand.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x18,0xf0]
sh.nand.t %d15, %d14, 24, %d15, 0

# CHECK-INST: sh.nand.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0x98,0xf3]
sh.nand.t %d15, %d14, 24, %d15, 7

# CHECK-INST: sh.nand.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x18,0xfc]
sh.nand.t %d15, %d14, 24, %d15, 24

# CHECK-INST: sh.nand.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0x98,0xff]
sh.nand.t %d15, %d14, 24, %d15, 31

# CHECK-INST: sh.nand.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x1f,0xf0]
sh.nand.t %d15, %d14, 31, %d0, 0

# CHECK-INST: sh.nand.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0x9f,0xf3]
sh.nand.t %d15, %d14, 31, %d0, 7

# CHECK-INST: sh.nand.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x1f,0xfc]
sh.nand.t %d15, %d14, 31, %d0, 24

# CHECK-INST: sh.nand.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0x9f,0xff]
sh.nand.t %d15, %d14, 31, %d0, 31

# CHECK-INST: sh.nand.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x1f,0xf0]
sh.nand.t %d15, %d14, 31, %d1, 0

# CHECK-INST: sh.nand.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0x9f,0xf3]
sh.nand.t %d15, %d14, 31, %d1, 7

# CHECK-INST: sh.nand.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x1f,0xfc]
sh.nand.t %d15, %d14, 31, %d1, 24

# CHECK-INST: sh.nand.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0x9f,0xff]
sh.nand.t %d15, %d14, 31, %d1, 31

# CHECK-INST: sh.nand.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x1f,0xf0]
sh.nand.t %d15, %d14, 31, %d14, 0

# CHECK-INST: sh.nand.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0xa7,0xee,0x9f,0xf3]
sh.nand.t %d15, %d14, 31, %d14, 7

# CHECK-INST: sh.nand.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x1f,0xfc]
sh.nand.t %d15, %d14, 31, %d14, 24

# CHECK-INST: sh.nand.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0xa7,0xee,0x9f,0xff]
sh.nand.t %d15, %d14, 31, %d14, 31

# CHECK-INST: sh.nand.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x1f,0xf0]
sh.nand.t %d15, %d14, 31, %d15, 0

# CHECK-INST: sh.nand.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0x9f,0xf3]
sh.nand.t %d15, %d14, 31, %d15, 7

# CHECK-INST: sh.nand.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x1f,0xfc]
sh.nand.t %d15, %d14, 31, %d15, 24

# CHECK-INST: sh.nand.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0x9f,0xff]
sh.nand.t %d15, %d14, 31, %d15, 31

# CHECK-INST: sh.nand.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x00,0xf0]
sh.nand.t %d15, %d15, 0, %d0, 0

# CHECK-INST: sh.nand.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0x80,0xf3]
sh.nand.t %d15, %d15, 0, %d0, 7

# CHECK-INST: sh.nand.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x00,0xfc]
sh.nand.t %d15, %d15, 0, %d0, 24

# CHECK-INST: sh.nand.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0x80,0xff]
sh.nand.t %d15, %d15, 0, %d0, 31

# CHECK-INST: sh.nand.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x00,0xf0]
sh.nand.t %d15, %d15, 0, %d1, 0

# CHECK-INST: sh.nand.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0x80,0xf3]
sh.nand.t %d15, %d15, 0, %d1, 7

# CHECK-INST: sh.nand.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x00,0xfc]
sh.nand.t %d15, %d15, 0, %d1, 24

# CHECK-INST: sh.nand.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0x80,0xff]
sh.nand.t %d15, %d15, 0, %d1, 31

# CHECK-INST: sh.nand.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x00,0xf0]
sh.nand.t %d15, %d15, 0, %d14, 0

# CHECK-INST: sh.nand.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0xa7,0xef,0x80,0xf3]
sh.nand.t %d15, %d15, 0, %d14, 7

# CHECK-INST: sh.nand.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x00,0xfc]
sh.nand.t %d15, %d15, 0, %d14, 24

# CHECK-INST: sh.nand.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0xa7,0xef,0x80,0xff]
sh.nand.t %d15, %d15, 0, %d14, 31

# CHECK-INST: sh.nand.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x00,0xf0]
sh.nand.t %d15, %d15, 0, %d15, 0

# CHECK-INST: sh.nand.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0xa7,0xff,0x80,0xf3]
sh.nand.t %d15, %d15, 0, %d15, 7

# CHECK-INST: sh.nand.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x00,0xfc]
sh.nand.t %d15, %d15, 0, %d15, 24

# CHECK-INST: sh.nand.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0xa7,0xff,0x80,0xff]
sh.nand.t %d15, %d15, 0, %d15, 31

# CHECK-INST: sh.nand.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x07,0xf0]
sh.nand.t %d15, %d15, 7, %d0, 0

# CHECK-INST: sh.nand.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0x87,0xf3]
sh.nand.t %d15, %d15, 7, %d0, 7

# CHECK-INST: sh.nand.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x07,0xfc]
sh.nand.t %d15, %d15, 7, %d0, 24

# CHECK-INST: sh.nand.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0x87,0xff]
sh.nand.t %d15, %d15, 7, %d0, 31

# CHECK-INST: sh.nand.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x07,0xf0]
sh.nand.t %d15, %d15, 7, %d1, 0

# CHECK-INST: sh.nand.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0x87,0xf3]
sh.nand.t %d15, %d15, 7, %d1, 7

# CHECK-INST: sh.nand.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x07,0xfc]
sh.nand.t %d15, %d15, 7, %d1, 24

# CHECK-INST: sh.nand.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0x87,0xff]
sh.nand.t %d15, %d15, 7, %d1, 31

# CHECK-INST: sh.nand.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x07,0xf0]
sh.nand.t %d15, %d15, 7, %d14, 0

# CHECK-INST: sh.nand.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0xa7,0xef,0x87,0xf3]
sh.nand.t %d15, %d15, 7, %d14, 7

# CHECK-INST: sh.nand.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x07,0xfc]
sh.nand.t %d15, %d15, 7, %d14, 24

# CHECK-INST: sh.nand.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0xa7,0xef,0x87,0xff]
sh.nand.t %d15, %d15, 7, %d14, 31

# CHECK-INST: sh.nand.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x07,0xf0]
sh.nand.t %d15, %d15, 7, %d15, 0

# CHECK-INST: sh.nand.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0xa7,0xff,0x87,0xf3]
sh.nand.t %d15, %d15, 7, %d15, 7

# CHECK-INST: sh.nand.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x07,0xfc]
sh.nand.t %d15, %d15, 7, %d15, 24

# CHECK-INST: sh.nand.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0xa7,0xff,0x87,0xff]
sh.nand.t %d15, %d15, 7, %d15, 31

# CHECK-INST: sh.nand.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x18,0xf0]
sh.nand.t %d15, %d15, 24, %d0, 0

# CHECK-INST: sh.nand.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0x98,0xf3]
sh.nand.t %d15, %d15, 24, %d0, 7

# CHECK-INST: sh.nand.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x18,0xfc]
sh.nand.t %d15, %d15, 24, %d0, 24

# CHECK-INST: sh.nand.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0x98,0xff]
sh.nand.t %d15, %d15, 24, %d0, 31

# CHECK-INST: sh.nand.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x18,0xf0]
sh.nand.t %d15, %d15, 24, %d1, 0

# CHECK-INST: sh.nand.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0x98,0xf3]
sh.nand.t %d15, %d15, 24, %d1, 7

# CHECK-INST: sh.nand.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x18,0xfc]
sh.nand.t %d15, %d15, 24, %d1, 24

# CHECK-INST: sh.nand.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0x98,0xff]
sh.nand.t %d15, %d15, 24, %d1, 31

# CHECK-INST: sh.nand.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x18,0xf0]
sh.nand.t %d15, %d15, 24, %d14, 0

# CHECK-INST: sh.nand.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0xa7,0xef,0x98,0xf3]
sh.nand.t %d15, %d15, 24, %d14, 7

# CHECK-INST: sh.nand.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x18,0xfc]
sh.nand.t %d15, %d15, 24, %d14, 24

# CHECK-INST: sh.nand.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0xa7,0xef,0x98,0xff]
sh.nand.t %d15, %d15, 24, %d14, 31

# CHECK-INST: sh.nand.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x18,0xf0]
sh.nand.t %d15, %d15, 24, %d15, 0

# CHECK-INST: sh.nand.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0xa7,0xff,0x98,0xf3]
sh.nand.t %d15, %d15, 24, %d15, 7

# CHECK-INST: sh.nand.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x18,0xfc]
sh.nand.t %d15, %d15, 24, %d15, 24

# CHECK-INST: sh.nand.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0xa7,0xff,0x98,0xff]
sh.nand.t %d15, %d15, 24, %d15, 31

# CHECK-INST: sh.nand.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x1f,0xf0]
sh.nand.t %d15, %d15, 31, %d0, 0

# CHECK-INST: sh.nand.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0x9f,0xf3]
sh.nand.t %d15, %d15, 31, %d0, 7

# CHECK-INST: sh.nand.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x1f,0xfc]
sh.nand.t %d15, %d15, 31, %d0, 24

# CHECK-INST: sh.nand.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0x9f,0xff]
sh.nand.t %d15, %d15, 31, %d0, 31

# CHECK-INST: sh.nand.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x1f,0xf0]
sh.nand.t %d15, %d15, 31, %d1, 0

# CHECK-INST: sh.nand.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0x9f,0xf3]
sh.nand.t %d15, %d15, 31, %d1, 7

# CHECK-INST: sh.nand.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x1f,0xfc]
sh.nand.t %d15, %d15, 31, %d1, 24

# CHECK-INST: sh.nand.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0x9f,0xff]
sh.nand.t %d15, %d15, 31, %d1, 31

# CHECK-INST: sh.nand.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x1f,0xf0]
sh.nand.t %d15, %d15, 31, %d14, 0

# CHECK-INST: sh.nand.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0xa7,0xef,0x9f,0xf3]
sh.nand.t %d15, %d15, 31, %d14, 7

# CHECK-INST: sh.nand.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x1f,0xfc]
sh.nand.t %d15, %d15, 31, %d14, 24

# CHECK-INST: sh.nand.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0xa7,0xef,0x9f,0xff]
sh.nand.t %d15, %d15, 31, %d14, 31

# CHECK-INST: sh.nand.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x1f,0xf0]
sh.nand.t %d15, %d15, 31, %d15, 0

# CHECK-INST: sh.nand.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0xa7,0xff,0x9f,0xf3]
sh.nand.t %d15, %d15, 31, %d15, 7

# CHECK-INST: sh.nand.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x1f,0xfc]
sh.nand.t %d15, %d15, 31, %d15, 24

# CHECK-INST: sh.nand.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0xa7,0xff,0x9f,0xff]
sh.nand.t %d15, %d15, 31, %d15, 31

# CHECK-INST: sh.nor.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x40,0x00]
sh.nor.t %d0, %d0, 0, %d0, 0

# CHECK-INST: sh.nor.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0x27,0x00,0xc0,0x03]
sh.nor.t %d0, %d0, 0, %d0, 7

# CHECK-INST: sh.nor.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0x27,0x00,0x40,0x0c]
sh.nor.t %d0, %d0, 0, %d0, 24

# CHECK-INST: sh.nor.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0x27,0x00,0xc0,0x0f]
sh.nor.t %d0, %d0, 0, %d0, 31

# CHECK-INST: sh.nor.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0x27,0x10,0x40,0x00]
sh.nor.t %d0, %d0, 0, %d1, 0

# CHECK-INST: sh.nor.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0x27,0x10,0xc0,0x03]
sh.nor.t %d0, %d0, 0, %d1, 7

# CHECK-INST: sh.nor.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0x27,0x10,0x40,0x0c]
sh.nor.t %d0, %d0, 0, %d1, 24

# CHECK-INST: sh.nor.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0x27,0x10,0xc0,0x0f]
sh.nor.t %d0, %d0, 0, %d1, 31

# CHECK-INST: sh.nor.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x40,0x00]
sh.nor.t %d0, %d0, 0, %d14, 0

# CHECK-INST: sh.nor.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xc0,0x03]
sh.nor.t %d0, %d0, 0, %d14, 7

# CHECK-INST: sh.nor.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x40,0x0c]
sh.nor.t %d0, %d0, 0, %d14, 24

# CHECK-INST: sh.nor.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xc0,0x0f]
sh.nor.t %d0, %d0, 0, %d14, 31

# CHECK-INST: sh.nor.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x40,0x00]
sh.nor.t %d0, %d0, 0, %d15, 0

# CHECK-INST: sh.nor.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xc0,0x03]
sh.nor.t %d0, %d0, 0, %d15, 7

# CHECK-INST: sh.nor.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x40,0x0c]
sh.nor.t %d0, %d0, 0, %d15, 24

# CHECK-INST: sh.nor.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xc0,0x0f]
sh.nor.t %d0, %d0, 0, %d15, 31

# CHECK-INST: sh.nor.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0x27,0x00,0x47,0x00]
sh.nor.t %d0, %d0, 7, %d0, 0

# CHECK-INST: sh.nor.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0x27,0x00,0xc7,0x03]
sh.nor.t %d0, %d0, 7, %d0, 7

# CHECK-INST: sh.nor.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0x27,0x00,0x47,0x0c]
sh.nor.t %d0, %d0, 7, %d0, 24

# CHECK-INST: sh.nor.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0x27,0x00,0xc7,0x0f]
sh.nor.t %d0, %d0, 7, %d0, 31

# CHECK-INST: sh.nor.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0x27,0x10,0x47,0x00]
sh.nor.t %d0, %d0, 7, %d1, 0

# CHECK-INST: sh.nor.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0x27,0x10,0xc7,0x03]
sh.nor.t %d0, %d0, 7, %d1, 7

# CHECK-INST: sh.nor.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0x27,0x10,0x47,0x0c]
sh.nor.t %d0, %d0, 7, %d1, 24

# CHECK-INST: sh.nor.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0x27,0x10,0xc7,0x0f]
sh.nor.t %d0, %d0, 7, %d1, 31

# CHECK-INST: sh.nor.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x47,0x00]
sh.nor.t %d0, %d0, 7, %d14, 0

# CHECK-INST: sh.nor.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xc7,0x03]
sh.nor.t %d0, %d0, 7, %d14, 7

# CHECK-INST: sh.nor.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x47,0x0c]
sh.nor.t %d0, %d0, 7, %d14, 24

# CHECK-INST: sh.nor.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xc7,0x0f]
sh.nor.t %d0, %d0, 7, %d14, 31

# CHECK-INST: sh.nor.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x47,0x00]
sh.nor.t %d0, %d0, 7, %d15, 0

# CHECK-INST: sh.nor.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xc7,0x03]
sh.nor.t %d0, %d0, 7, %d15, 7

# CHECK-INST: sh.nor.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x47,0x0c]
sh.nor.t %d0, %d0, 7, %d15, 24

# CHECK-INST: sh.nor.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xc7,0x0f]
sh.nor.t %d0, %d0, 7, %d15, 31

# CHECK-INST: sh.nor.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0x27,0x00,0x58,0x00]
sh.nor.t %d0, %d0, 24, %d0, 0

# CHECK-INST: sh.nor.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0x27,0x00,0xd8,0x03]
sh.nor.t %d0, %d0, 24, %d0, 7

# CHECK-INST: sh.nor.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0x27,0x00,0x58,0x0c]
sh.nor.t %d0, %d0, 24, %d0, 24

# CHECK-INST: sh.nor.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0x27,0x00,0xd8,0x0f]
sh.nor.t %d0, %d0, 24, %d0, 31

# CHECK-INST: sh.nor.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0x27,0x10,0x58,0x00]
sh.nor.t %d0, %d0, 24, %d1, 0

# CHECK-INST: sh.nor.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0x27,0x10,0xd8,0x03]
sh.nor.t %d0, %d0, 24, %d1, 7

# CHECK-INST: sh.nor.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0x27,0x10,0x58,0x0c]
sh.nor.t %d0, %d0, 24, %d1, 24

# CHECK-INST: sh.nor.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0x27,0x10,0xd8,0x0f]
sh.nor.t %d0, %d0, 24, %d1, 31

# CHECK-INST: sh.nor.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x58,0x00]
sh.nor.t %d0, %d0, 24, %d14, 0

# CHECK-INST: sh.nor.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xd8,0x03]
sh.nor.t %d0, %d0, 24, %d14, 7

# CHECK-INST: sh.nor.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x58,0x0c]
sh.nor.t %d0, %d0, 24, %d14, 24

# CHECK-INST: sh.nor.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xd8,0x0f]
sh.nor.t %d0, %d0, 24, %d14, 31

# CHECK-INST: sh.nor.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x58,0x00]
sh.nor.t %d0, %d0, 24, %d15, 0

# CHECK-INST: sh.nor.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xd8,0x03]
sh.nor.t %d0, %d0, 24, %d15, 7

# CHECK-INST: sh.nor.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x58,0x0c]
sh.nor.t %d0, %d0, 24, %d15, 24

# CHECK-INST: sh.nor.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xd8,0x0f]
sh.nor.t %d0, %d0, 24, %d15, 31

# CHECK-INST: sh.nor.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0x27,0x00,0x5f,0x00]
sh.nor.t %d0, %d0, 31, %d0, 0

# CHECK-INST: sh.nor.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0x27,0x00,0xdf,0x03]
sh.nor.t %d0, %d0, 31, %d0, 7

# CHECK-INST: sh.nor.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0x27,0x00,0x5f,0x0c]
sh.nor.t %d0, %d0, 31, %d0, 24

# CHECK-INST: sh.nor.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0x27,0x00,0xdf,0x0f]
sh.nor.t %d0, %d0, 31, %d0, 31

# CHECK-INST: sh.nor.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0x27,0x10,0x5f,0x00]
sh.nor.t %d0, %d0, 31, %d1, 0

# CHECK-INST: sh.nor.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0x27,0x10,0xdf,0x03]
sh.nor.t %d0, %d0, 31, %d1, 7

# CHECK-INST: sh.nor.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0x27,0x10,0x5f,0x0c]
sh.nor.t %d0, %d0, 31, %d1, 24

# CHECK-INST: sh.nor.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0x27,0x10,0xdf,0x0f]
sh.nor.t %d0, %d0, 31, %d1, 31

# CHECK-INST: sh.nor.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x5f,0x00]
sh.nor.t %d0, %d0, 31, %d14, 0

# CHECK-INST: sh.nor.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xdf,0x03]
sh.nor.t %d0, %d0, 31, %d14, 7

# CHECK-INST: sh.nor.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x5f,0x0c]
sh.nor.t %d0, %d0, 31, %d14, 24

# CHECK-INST: sh.nor.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xdf,0x0f]
sh.nor.t %d0, %d0, 31, %d14, 31

# CHECK-INST: sh.nor.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x5f,0x00]
sh.nor.t %d0, %d0, 31, %d15, 0

# CHECK-INST: sh.nor.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xdf,0x03]
sh.nor.t %d0, %d0, 31, %d15, 7

# CHECK-INST: sh.nor.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x5f,0x0c]
sh.nor.t %d0, %d0, 31, %d15, 24

# CHECK-INST: sh.nor.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xdf,0x0f]
sh.nor.t %d0, %d0, 31, %d15, 31

# CHECK-INST: sh.nor.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0x27,0x01,0x40,0x00]
sh.nor.t %d0, %d1, 0, %d0, 0

# CHECK-INST: sh.nor.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0x27,0x01,0xc0,0x03]
sh.nor.t %d0, %d1, 0, %d0, 7

# CHECK-INST: sh.nor.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0x27,0x01,0x40,0x0c]
sh.nor.t %d0, %d1, 0, %d0, 24

# CHECK-INST: sh.nor.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0x27,0x01,0xc0,0x0f]
sh.nor.t %d0, %d1, 0, %d0, 31

# CHECK-INST: sh.nor.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0x27,0x11,0x40,0x00]
sh.nor.t %d0, %d1, 0, %d1, 0

# CHECK-INST: sh.nor.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0x27,0x11,0xc0,0x03]
sh.nor.t %d0, %d1, 0, %d1, 7

# CHECK-INST: sh.nor.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0x27,0x11,0x40,0x0c]
sh.nor.t %d0, %d1, 0, %d1, 24

# CHECK-INST: sh.nor.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0x27,0x11,0xc0,0x0f]
sh.nor.t %d0, %d1, 0, %d1, 31

# CHECK-INST: sh.nor.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x40,0x00]
sh.nor.t %d0, %d1, 0, %d14, 0

# CHECK-INST: sh.nor.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xc0,0x03]
sh.nor.t %d0, %d1, 0, %d14, 7

# CHECK-INST: sh.nor.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x40,0x0c]
sh.nor.t %d0, %d1, 0, %d14, 24

# CHECK-INST: sh.nor.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xc0,0x0f]
sh.nor.t %d0, %d1, 0, %d14, 31

# CHECK-INST: sh.nor.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x40,0x00]
sh.nor.t %d0, %d1, 0, %d15, 0

# CHECK-INST: sh.nor.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xc0,0x03]
sh.nor.t %d0, %d1, 0, %d15, 7

# CHECK-INST: sh.nor.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x40,0x0c]
sh.nor.t %d0, %d1, 0, %d15, 24

# CHECK-INST: sh.nor.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xc0,0x0f]
sh.nor.t %d0, %d1, 0, %d15, 31

# CHECK-INST: sh.nor.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0x27,0x01,0x47,0x00]
sh.nor.t %d0, %d1, 7, %d0, 0

# CHECK-INST: sh.nor.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0x27,0x01,0xc7,0x03]
sh.nor.t %d0, %d1, 7, %d0, 7

# CHECK-INST: sh.nor.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0x27,0x01,0x47,0x0c]
sh.nor.t %d0, %d1, 7, %d0, 24

# CHECK-INST: sh.nor.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0x27,0x01,0xc7,0x0f]
sh.nor.t %d0, %d1, 7, %d0, 31

# CHECK-INST: sh.nor.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0x27,0x11,0x47,0x00]
sh.nor.t %d0, %d1, 7, %d1, 0

# CHECK-INST: sh.nor.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0x27,0x11,0xc7,0x03]
sh.nor.t %d0, %d1, 7, %d1, 7

# CHECK-INST: sh.nor.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0x27,0x11,0x47,0x0c]
sh.nor.t %d0, %d1, 7, %d1, 24

# CHECK-INST: sh.nor.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0x27,0x11,0xc7,0x0f]
sh.nor.t %d0, %d1, 7, %d1, 31

# CHECK-INST: sh.nor.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x47,0x00]
sh.nor.t %d0, %d1, 7, %d14, 0

# CHECK-INST: sh.nor.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xc7,0x03]
sh.nor.t %d0, %d1, 7, %d14, 7

# CHECK-INST: sh.nor.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x47,0x0c]
sh.nor.t %d0, %d1, 7, %d14, 24

# CHECK-INST: sh.nor.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xc7,0x0f]
sh.nor.t %d0, %d1, 7, %d14, 31

# CHECK-INST: sh.nor.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x47,0x00]
sh.nor.t %d0, %d1, 7, %d15, 0

# CHECK-INST: sh.nor.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xc7,0x03]
sh.nor.t %d0, %d1, 7, %d15, 7

# CHECK-INST: sh.nor.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x47,0x0c]
sh.nor.t %d0, %d1, 7, %d15, 24

# CHECK-INST: sh.nor.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xc7,0x0f]
sh.nor.t %d0, %d1, 7, %d15, 31

# CHECK-INST: sh.nor.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0x27,0x01,0x58,0x00]
sh.nor.t %d0, %d1, 24, %d0, 0

# CHECK-INST: sh.nor.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0x27,0x01,0xd8,0x03]
sh.nor.t %d0, %d1, 24, %d0, 7

# CHECK-INST: sh.nor.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0x27,0x01,0x58,0x0c]
sh.nor.t %d0, %d1, 24, %d0, 24

# CHECK-INST: sh.nor.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0x27,0x01,0xd8,0x0f]
sh.nor.t %d0, %d1, 24, %d0, 31

# CHECK-INST: sh.nor.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0x27,0x11,0x58,0x00]
sh.nor.t %d0, %d1, 24, %d1, 0

# CHECK-INST: sh.nor.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0x27,0x11,0xd8,0x03]
sh.nor.t %d0, %d1, 24, %d1, 7

# CHECK-INST: sh.nor.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0x27,0x11,0x58,0x0c]
sh.nor.t %d0, %d1, 24, %d1, 24

# CHECK-INST: sh.nor.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0x27,0x11,0xd8,0x0f]
sh.nor.t %d0, %d1, 24, %d1, 31

# CHECK-INST: sh.nor.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x58,0x00]
sh.nor.t %d0, %d1, 24, %d14, 0

# CHECK-INST: sh.nor.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xd8,0x03]
sh.nor.t %d0, %d1, 24, %d14, 7

# CHECK-INST: sh.nor.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x58,0x0c]
sh.nor.t %d0, %d1, 24, %d14, 24

# CHECK-INST: sh.nor.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xd8,0x0f]
sh.nor.t %d0, %d1, 24, %d14, 31

# CHECK-INST: sh.nor.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x58,0x00]
sh.nor.t %d0, %d1, 24, %d15, 0

# CHECK-INST: sh.nor.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xd8,0x03]
sh.nor.t %d0, %d1, 24, %d15, 7

# CHECK-INST: sh.nor.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x58,0x0c]
sh.nor.t %d0, %d1, 24, %d15, 24

# CHECK-INST: sh.nor.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xd8,0x0f]
sh.nor.t %d0, %d1, 24, %d15, 31

# CHECK-INST: sh.nor.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0x27,0x01,0x5f,0x00]
sh.nor.t %d0, %d1, 31, %d0, 0

# CHECK-INST: sh.nor.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0x27,0x01,0xdf,0x03]
sh.nor.t %d0, %d1, 31, %d0, 7

# CHECK-INST: sh.nor.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0x27,0x01,0x5f,0x0c]
sh.nor.t %d0, %d1, 31, %d0, 24

# CHECK-INST: sh.nor.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0x27,0x01,0xdf,0x0f]
sh.nor.t %d0, %d1, 31, %d0, 31

# CHECK-INST: sh.nor.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0x27,0x11,0x5f,0x00]
sh.nor.t %d0, %d1, 31, %d1, 0

# CHECK-INST: sh.nor.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0x27,0x11,0xdf,0x03]
sh.nor.t %d0, %d1, 31, %d1, 7

# CHECK-INST: sh.nor.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0x27,0x11,0x5f,0x0c]
sh.nor.t %d0, %d1, 31, %d1, 24

# CHECK-INST: sh.nor.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0x27,0x11,0xdf,0x0f]
sh.nor.t %d0, %d1, 31, %d1, 31

# CHECK-INST: sh.nor.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x5f,0x00]
sh.nor.t %d0, %d1, 31, %d14, 0

# CHECK-INST: sh.nor.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xdf,0x03]
sh.nor.t %d0, %d1, 31, %d14, 7

# CHECK-INST: sh.nor.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x5f,0x0c]
sh.nor.t %d0, %d1, 31, %d14, 24

# CHECK-INST: sh.nor.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xdf,0x0f]
sh.nor.t %d0, %d1, 31, %d14, 31

# CHECK-INST: sh.nor.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x5f,0x00]
sh.nor.t %d0, %d1, 31, %d15, 0

# CHECK-INST: sh.nor.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xdf,0x03]
sh.nor.t %d0, %d1, 31, %d15, 7

# CHECK-INST: sh.nor.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x5f,0x0c]
sh.nor.t %d0, %d1, 31, %d15, 24

# CHECK-INST: sh.nor.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xdf,0x0f]
sh.nor.t %d0, %d1, 31, %d15, 31

# CHECK-INST: sh.nor.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x40,0x00]
sh.nor.t %d0, %d14, 0, %d0, 0

# CHECK-INST: sh.nor.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xc0,0x03]
sh.nor.t %d0, %d14, 0, %d0, 7

# CHECK-INST: sh.nor.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x40,0x0c]
sh.nor.t %d0, %d14, 0, %d0, 24

# CHECK-INST: sh.nor.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xc0,0x0f]
sh.nor.t %d0, %d14, 0, %d0, 31

# CHECK-INST: sh.nor.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x40,0x00]
sh.nor.t %d0, %d14, 0, %d1, 0

# CHECK-INST: sh.nor.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xc0,0x03]
sh.nor.t %d0, %d14, 0, %d1, 7

# CHECK-INST: sh.nor.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x40,0x0c]
sh.nor.t %d0, %d14, 0, %d1, 24

# CHECK-INST: sh.nor.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xc0,0x0f]
sh.nor.t %d0, %d14, 0, %d1, 31

# CHECK-INST: sh.nor.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0x27,0xee,0x40,0x00]
sh.nor.t %d0, %d14, 0, %d14, 0

# CHECK-INST: sh.nor.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0x27,0xee,0xc0,0x03]
sh.nor.t %d0, %d14, 0, %d14, 7

# CHECK-INST: sh.nor.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0x27,0xee,0x40,0x0c]
sh.nor.t %d0, %d14, 0, %d14, 24

# CHECK-INST: sh.nor.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0x27,0xee,0xc0,0x0f]
sh.nor.t %d0, %d14, 0, %d14, 31

# CHECK-INST: sh.nor.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x40,0x00]
sh.nor.t %d0, %d14, 0, %d15, 0

# CHECK-INST: sh.nor.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xc0,0x03]
sh.nor.t %d0, %d14, 0, %d15, 7

# CHECK-INST: sh.nor.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x40,0x0c]
sh.nor.t %d0, %d14, 0, %d15, 24

# CHECK-INST: sh.nor.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xc0,0x0f]
sh.nor.t %d0, %d14, 0, %d15, 31

# CHECK-INST: sh.nor.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x47,0x00]
sh.nor.t %d0, %d14, 7, %d0, 0

# CHECK-INST: sh.nor.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xc7,0x03]
sh.nor.t %d0, %d14, 7, %d0, 7

# CHECK-INST: sh.nor.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x47,0x0c]
sh.nor.t %d0, %d14, 7, %d0, 24

# CHECK-INST: sh.nor.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xc7,0x0f]
sh.nor.t %d0, %d14, 7, %d0, 31

# CHECK-INST: sh.nor.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x47,0x00]
sh.nor.t %d0, %d14, 7, %d1, 0

# CHECK-INST: sh.nor.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xc7,0x03]
sh.nor.t %d0, %d14, 7, %d1, 7

# CHECK-INST: sh.nor.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x47,0x0c]
sh.nor.t %d0, %d14, 7, %d1, 24

# CHECK-INST: sh.nor.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xc7,0x0f]
sh.nor.t %d0, %d14, 7, %d1, 31

# CHECK-INST: sh.nor.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0x27,0xee,0x47,0x00]
sh.nor.t %d0, %d14, 7, %d14, 0

# CHECK-INST: sh.nor.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0x27,0xee,0xc7,0x03]
sh.nor.t %d0, %d14, 7, %d14, 7

# CHECK-INST: sh.nor.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0x27,0xee,0x47,0x0c]
sh.nor.t %d0, %d14, 7, %d14, 24

# CHECK-INST: sh.nor.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0x27,0xee,0xc7,0x0f]
sh.nor.t %d0, %d14, 7, %d14, 31

# CHECK-INST: sh.nor.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x47,0x00]
sh.nor.t %d0, %d14, 7, %d15, 0

# CHECK-INST: sh.nor.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xc7,0x03]
sh.nor.t %d0, %d14, 7, %d15, 7

# CHECK-INST: sh.nor.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x47,0x0c]
sh.nor.t %d0, %d14, 7, %d15, 24

# CHECK-INST: sh.nor.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xc7,0x0f]
sh.nor.t %d0, %d14, 7, %d15, 31

# CHECK-INST: sh.nor.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x58,0x00]
sh.nor.t %d0, %d14, 24, %d0, 0

# CHECK-INST: sh.nor.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xd8,0x03]
sh.nor.t %d0, %d14, 24, %d0, 7

# CHECK-INST: sh.nor.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x58,0x0c]
sh.nor.t %d0, %d14, 24, %d0, 24

# CHECK-INST: sh.nor.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xd8,0x0f]
sh.nor.t %d0, %d14, 24, %d0, 31

# CHECK-INST: sh.nor.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x58,0x00]
sh.nor.t %d0, %d14, 24, %d1, 0

# CHECK-INST: sh.nor.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xd8,0x03]
sh.nor.t %d0, %d14, 24, %d1, 7

# CHECK-INST: sh.nor.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x58,0x0c]
sh.nor.t %d0, %d14, 24, %d1, 24

# CHECK-INST: sh.nor.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xd8,0x0f]
sh.nor.t %d0, %d14, 24, %d1, 31

# CHECK-INST: sh.nor.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0x27,0xee,0x58,0x00]
sh.nor.t %d0, %d14, 24, %d14, 0

# CHECK-INST: sh.nor.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0x27,0xee,0xd8,0x03]
sh.nor.t %d0, %d14, 24, %d14, 7

# CHECK-INST: sh.nor.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0x27,0xee,0x58,0x0c]
sh.nor.t %d0, %d14, 24, %d14, 24

# CHECK-INST: sh.nor.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0x27,0xee,0xd8,0x0f]
sh.nor.t %d0, %d14, 24, %d14, 31

# CHECK-INST: sh.nor.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x58,0x00]
sh.nor.t %d0, %d14, 24, %d15, 0

# CHECK-INST: sh.nor.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xd8,0x03]
sh.nor.t %d0, %d14, 24, %d15, 7

# CHECK-INST: sh.nor.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x58,0x0c]
sh.nor.t %d0, %d14, 24, %d15, 24

# CHECK-INST: sh.nor.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xd8,0x0f]
sh.nor.t %d0, %d14, 24, %d15, 31

# CHECK-INST: sh.nor.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x5f,0x00]
sh.nor.t %d0, %d14, 31, %d0, 0

# CHECK-INST: sh.nor.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xdf,0x03]
sh.nor.t %d0, %d14, 31, %d0, 7

# CHECK-INST: sh.nor.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x5f,0x0c]
sh.nor.t %d0, %d14, 31, %d0, 24

# CHECK-INST: sh.nor.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xdf,0x0f]
sh.nor.t %d0, %d14, 31, %d0, 31

# CHECK-INST: sh.nor.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x5f,0x00]
sh.nor.t %d0, %d14, 31, %d1, 0

# CHECK-INST: sh.nor.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xdf,0x03]
sh.nor.t %d0, %d14, 31, %d1, 7

# CHECK-INST: sh.nor.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x5f,0x0c]
sh.nor.t %d0, %d14, 31, %d1, 24

# CHECK-INST: sh.nor.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xdf,0x0f]
sh.nor.t %d0, %d14, 31, %d1, 31

# CHECK-INST: sh.nor.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0x27,0xee,0x5f,0x00]
sh.nor.t %d0, %d14, 31, %d14, 0

# CHECK-INST: sh.nor.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0x27,0xee,0xdf,0x03]
sh.nor.t %d0, %d14, 31, %d14, 7

# CHECK-INST: sh.nor.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0x27,0xee,0x5f,0x0c]
sh.nor.t %d0, %d14, 31, %d14, 24

# CHECK-INST: sh.nor.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0x27,0xee,0xdf,0x0f]
sh.nor.t %d0, %d14, 31, %d14, 31

# CHECK-INST: sh.nor.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x5f,0x00]
sh.nor.t %d0, %d14, 31, %d15, 0

# CHECK-INST: sh.nor.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xdf,0x03]
sh.nor.t %d0, %d14, 31, %d15, 7

# CHECK-INST: sh.nor.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x5f,0x0c]
sh.nor.t %d0, %d14, 31, %d15, 24

# CHECK-INST: sh.nor.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xdf,0x0f]
sh.nor.t %d0, %d14, 31, %d15, 31

# CHECK-INST: sh.nor.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x40,0x00]
sh.nor.t %d0, %d15, 0, %d0, 0

# CHECK-INST: sh.nor.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xc0,0x03]
sh.nor.t %d0, %d15, 0, %d0, 7

# CHECK-INST: sh.nor.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x40,0x0c]
sh.nor.t %d0, %d15, 0, %d0, 24

# CHECK-INST: sh.nor.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xc0,0x0f]
sh.nor.t %d0, %d15, 0, %d0, 31

# CHECK-INST: sh.nor.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x40,0x00]
sh.nor.t %d0, %d15, 0, %d1, 0

# CHECK-INST: sh.nor.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xc0,0x03]
sh.nor.t %d0, %d15, 0, %d1, 7

# CHECK-INST: sh.nor.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x40,0x0c]
sh.nor.t %d0, %d15, 0, %d1, 24

# CHECK-INST: sh.nor.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xc0,0x0f]
sh.nor.t %d0, %d15, 0, %d1, 31

# CHECK-INST: sh.nor.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0x27,0xef,0x40,0x00]
sh.nor.t %d0, %d15, 0, %d14, 0

# CHECK-INST: sh.nor.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0x27,0xef,0xc0,0x03]
sh.nor.t %d0, %d15, 0, %d14, 7

# CHECK-INST: sh.nor.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0x27,0xef,0x40,0x0c]
sh.nor.t %d0, %d15, 0, %d14, 24

# CHECK-INST: sh.nor.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0x27,0xef,0xc0,0x0f]
sh.nor.t %d0, %d15, 0, %d14, 31

# CHECK-INST: sh.nor.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0x27,0xff,0x40,0x00]
sh.nor.t %d0, %d15, 0, %d15, 0

# CHECK-INST: sh.nor.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0x27,0xff,0xc0,0x03]
sh.nor.t %d0, %d15, 0, %d15, 7

# CHECK-INST: sh.nor.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0x27,0xff,0x40,0x0c]
sh.nor.t %d0, %d15, 0, %d15, 24

# CHECK-INST: sh.nor.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0x27,0xff,0xc0,0x0f]
sh.nor.t %d0, %d15, 0, %d15, 31

# CHECK-INST: sh.nor.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x47,0x00]
sh.nor.t %d0, %d15, 7, %d0, 0

# CHECK-INST: sh.nor.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xc7,0x03]
sh.nor.t %d0, %d15, 7, %d0, 7

# CHECK-INST: sh.nor.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x47,0x0c]
sh.nor.t %d0, %d15, 7, %d0, 24

# CHECK-INST: sh.nor.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xc7,0x0f]
sh.nor.t %d0, %d15, 7, %d0, 31

# CHECK-INST: sh.nor.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x47,0x00]
sh.nor.t %d0, %d15, 7, %d1, 0

# CHECK-INST: sh.nor.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xc7,0x03]
sh.nor.t %d0, %d15, 7, %d1, 7

# CHECK-INST: sh.nor.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x47,0x0c]
sh.nor.t %d0, %d15, 7, %d1, 24

# CHECK-INST: sh.nor.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xc7,0x0f]
sh.nor.t %d0, %d15, 7, %d1, 31

# CHECK-INST: sh.nor.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0x27,0xef,0x47,0x00]
sh.nor.t %d0, %d15, 7, %d14, 0

# CHECK-INST: sh.nor.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0x27,0xef,0xc7,0x03]
sh.nor.t %d0, %d15, 7, %d14, 7

# CHECK-INST: sh.nor.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0x27,0xef,0x47,0x0c]
sh.nor.t %d0, %d15, 7, %d14, 24

# CHECK-INST: sh.nor.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0x27,0xef,0xc7,0x0f]
sh.nor.t %d0, %d15, 7, %d14, 31

# CHECK-INST: sh.nor.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0x27,0xff,0x47,0x00]
sh.nor.t %d0, %d15, 7, %d15, 0

# CHECK-INST: sh.nor.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0x27,0xff,0xc7,0x03]
sh.nor.t %d0, %d15, 7, %d15, 7

# CHECK-INST: sh.nor.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0x27,0xff,0x47,0x0c]
sh.nor.t %d0, %d15, 7, %d15, 24

# CHECK-INST: sh.nor.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0x27,0xff,0xc7,0x0f]
sh.nor.t %d0, %d15, 7, %d15, 31

# CHECK-INST: sh.nor.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x58,0x00]
sh.nor.t %d0, %d15, 24, %d0, 0

# CHECK-INST: sh.nor.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xd8,0x03]
sh.nor.t %d0, %d15, 24, %d0, 7

# CHECK-INST: sh.nor.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x58,0x0c]
sh.nor.t %d0, %d15, 24, %d0, 24

# CHECK-INST: sh.nor.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xd8,0x0f]
sh.nor.t %d0, %d15, 24, %d0, 31

# CHECK-INST: sh.nor.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x58,0x00]
sh.nor.t %d0, %d15, 24, %d1, 0

# CHECK-INST: sh.nor.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xd8,0x03]
sh.nor.t %d0, %d15, 24, %d1, 7

# CHECK-INST: sh.nor.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x58,0x0c]
sh.nor.t %d0, %d15, 24, %d1, 24

# CHECK-INST: sh.nor.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xd8,0x0f]
sh.nor.t %d0, %d15, 24, %d1, 31

# CHECK-INST: sh.nor.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0x27,0xef,0x58,0x00]
sh.nor.t %d0, %d15, 24, %d14, 0

# CHECK-INST: sh.nor.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0x27,0xef,0xd8,0x03]
sh.nor.t %d0, %d15, 24, %d14, 7

# CHECK-INST: sh.nor.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0x27,0xef,0x58,0x0c]
sh.nor.t %d0, %d15, 24, %d14, 24

# CHECK-INST: sh.nor.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0x27,0xef,0xd8,0x0f]
sh.nor.t %d0, %d15, 24, %d14, 31

# CHECK-INST: sh.nor.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0x27,0xff,0x58,0x00]
sh.nor.t %d0, %d15, 24, %d15, 0

# CHECK-INST: sh.nor.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0x27,0xff,0xd8,0x03]
sh.nor.t %d0, %d15, 24, %d15, 7

# CHECK-INST: sh.nor.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0x27,0xff,0x58,0x0c]
sh.nor.t %d0, %d15, 24, %d15, 24

# CHECK-INST: sh.nor.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0x27,0xff,0xd8,0x0f]
sh.nor.t %d0, %d15, 24, %d15, 31

# CHECK-INST: sh.nor.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x5f,0x00]
sh.nor.t %d0, %d15, 31, %d0, 0

# CHECK-INST: sh.nor.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xdf,0x03]
sh.nor.t %d0, %d15, 31, %d0, 7

# CHECK-INST: sh.nor.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x5f,0x0c]
sh.nor.t %d0, %d15, 31, %d0, 24

# CHECK-INST: sh.nor.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xdf,0x0f]
sh.nor.t %d0, %d15, 31, %d0, 31

# CHECK-INST: sh.nor.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x5f,0x00]
sh.nor.t %d0, %d15, 31, %d1, 0

# CHECK-INST: sh.nor.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xdf,0x03]
sh.nor.t %d0, %d15, 31, %d1, 7

# CHECK-INST: sh.nor.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x5f,0x0c]
sh.nor.t %d0, %d15, 31, %d1, 24

# CHECK-INST: sh.nor.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xdf,0x0f]
sh.nor.t %d0, %d15, 31, %d1, 31

# CHECK-INST: sh.nor.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0x27,0xef,0x5f,0x00]
sh.nor.t %d0, %d15, 31, %d14, 0

# CHECK-INST: sh.nor.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0x27,0xef,0xdf,0x03]
sh.nor.t %d0, %d15, 31, %d14, 7

# CHECK-INST: sh.nor.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0x27,0xef,0x5f,0x0c]
sh.nor.t %d0, %d15, 31, %d14, 24

# CHECK-INST: sh.nor.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0x27,0xef,0xdf,0x0f]
sh.nor.t %d0, %d15, 31, %d14, 31

# CHECK-INST: sh.nor.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0x27,0xff,0x5f,0x00]
sh.nor.t %d0, %d15, 31, %d15, 0

# CHECK-INST: sh.nor.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0x27,0xff,0xdf,0x03]
sh.nor.t %d0, %d15, 31, %d15, 7

# CHECK-INST: sh.nor.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0x27,0xff,0x5f,0x0c]
sh.nor.t %d0, %d15, 31, %d15, 24

# CHECK-INST: sh.nor.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0x27,0xff,0xdf,0x0f]
sh.nor.t %d0, %d15, 31, %d15, 31

# CHECK-INST: sh.nor.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x40,0x10]
sh.nor.t %d1, %d0, 0, %d0, 0

# CHECK-INST: sh.nor.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0x27,0x00,0xc0,0x13]
sh.nor.t %d1, %d0, 0, %d0, 7

# CHECK-INST: sh.nor.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0x27,0x00,0x40,0x1c]
sh.nor.t %d1, %d0, 0, %d0, 24

# CHECK-INST: sh.nor.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0x27,0x00,0xc0,0x1f]
sh.nor.t %d1, %d0, 0, %d0, 31

# CHECK-INST: sh.nor.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0x27,0x10,0x40,0x10]
sh.nor.t %d1, %d0, 0, %d1, 0

# CHECK-INST: sh.nor.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0x27,0x10,0xc0,0x13]
sh.nor.t %d1, %d0, 0, %d1, 7

# CHECK-INST: sh.nor.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0x27,0x10,0x40,0x1c]
sh.nor.t %d1, %d0, 0, %d1, 24

# CHECK-INST: sh.nor.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0x27,0x10,0xc0,0x1f]
sh.nor.t %d1, %d0, 0, %d1, 31

# CHECK-INST: sh.nor.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x40,0x10]
sh.nor.t %d1, %d0, 0, %d14, 0

# CHECK-INST: sh.nor.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xc0,0x13]
sh.nor.t %d1, %d0, 0, %d14, 7

# CHECK-INST: sh.nor.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x40,0x1c]
sh.nor.t %d1, %d0, 0, %d14, 24

# CHECK-INST: sh.nor.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xc0,0x1f]
sh.nor.t %d1, %d0, 0, %d14, 31

# CHECK-INST: sh.nor.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x40,0x10]
sh.nor.t %d1, %d0, 0, %d15, 0

# CHECK-INST: sh.nor.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xc0,0x13]
sh.nor.t %d1, %d0, 0, %d15, 7

# CHECK-INST: sh.nor.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x40,0x1c]
sh.nor.t %d1, %d0, 0, %d15, 24

# CHECK-INST: sh.nor.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xc0,0x1f]
sh.nor.t %d1, %d0, 0, %d15, 31

# CHECK-INST: sh.nor.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0x27,0x00,0x47,0x10]
sh.nor.t %d1, %d0, 7, %d0, 0

# CHECK-INST: sh.nor.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0x27,0x00,0xc7,0x13]
sh.nor.t %d1, %d0, 7, %d0, 7

# CHECK-INST: sh.nor.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0x27,0x00,0x47,0x1c]
sh.nor.t %d1, %d0, 7, %d0, 24

# CHECK-INST: sh.nor.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0x27,0x00,0xc7,0x1f]
sh.nor.t %d1, %d0, 7, %d0, 31

# CHECK-INST: sh.nor.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0x27,0x10,0x47,0x10]
sh.nor.t %d1, %d0, 7, %d1, 0

# CHECK-INST: sh.nor.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0x27,0x10,0xc7,0x13]
sh.nor.t %d1, %d0, 7, %d1, 7

# CHECK-INST: sh.nor.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0x27,0x10,0x47,0x1c]
sh.nor.t %d1, %d0, 7, %d1, 24

# CHECK-INST: sh.nor.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0x27,0x10,0xc7,0x1f]
sh.nor.t %d1, %d0, 7, %d1, 31

# CHECK-INST: sh.nor.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x47,0x10]
sh.nor.t %d1, %d0, 7, %d14, 0

# CHECK-INST: sh.nor.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xc7,0x13]
sh.nor.t %d1, %d0, 7, %d14, 7

# CHECK-INST: sh.nor.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x47,0x1c]
sh.nor.t %d1, %d0, 7, %d14, 24

# CHECK-INST: sh.nor.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xc7,0x1f]
sh.nor.t %d1, %d0, 7, %d14, 31

# CHECK-INST: sh.nor.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x47,0x10]
sh.nor.t %d1, %d0, 7, %d15, 0

# CHECK-INST: sh.nor.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xc7,0x13]
sh.nor.t %d1, %d0, 7, %d15, 7

# CHECK-INST: sh.nor.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x47,0x1c]
sh.nor.t %d1, %d0, 7, %d15, 24

# CHECK-INST: sh.nor.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xc7,0x1f]
sh.nor.t %d1, %d0, 7, %d15, 31

# CHECK-INST: sh.nor.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0x27,0x00,0x58,0x10]
sh.nor.t %d1, %d0, 24, %d0, 0

# CHECK-INST: sh.nor.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0x27,0x00,0xd8,0x13]
sh.nor.t %d1, %d0, 24, %d0, 7

# CHECK-INST: sh.nor.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0x27,0x00,0x58,0x1c]
sh.nor.t %d1, %d0, 24, %d0, 24

# CHECK-INST: sh.nor.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0x27,0x00,0xd8,0x1f]
sh.nor.t %d1, %d0, 24, %d0, 31

# CHECK-INST: sh.nor.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0x27,0x10,0x58,0x10]
sh.nor.t %d1, %d0, 24, %d1, 0

# CHECK-INST: sh.nor.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0x27,0x10,0xd8,0x13]
sh.nor.t %d1, %d0, 24, %d1, 7

# CHECK-INST: sh.nor.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0x27,0x10,0x58,0x1c]
sh.nor.t %d1, %d0, 24, %d1, 24

# CHECK-INST: sh.nor.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0x27,0x10,0xd8,0x1f]
sh.nor.t %d1, %d0, 24, %d1, 31

# CHECK-INST: sh.nor.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x58,0x10]
sh.nor.t %d1, %d0, 24, %d14, 0

# CHECK-INST: sh.nor.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xd8,0x13]
sh.nor.t %d1, %d0, 24, %d14, 7

# CHECK-INST: sh.nor.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x58,0x1c]
sh.nor.t %d1, %d0, 24, %d14, 24

# CHECK-INST: sh.nor.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xd8,0x1f]
sh.nor.t %d1, %d0, 24, %d14, 31

# CHECK-INST: sh.nor.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x58,0x10]
sh.nor.t %d1, %d0, 24, %d15, 0

# CHECK-INST: sh.nor.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xd8,0x13]
sh.nor.t %d1, %d0, 24, %d15, 7

# CHECK-INST: sh.nor.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x58,0x1c]
sh.nor.t %d1, %d0, 24, %d15, 24

# CHECK-INST: sh.nor.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xd8,0x1f]
sh.nor.t %d1, %d0, 24, %d15, 31

# CHECK-INST: sh.nor.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0x27,0x00,0x5f,0x10]
sh.nor.t %d1, %d0, 31, %d0, 0

# CHECK-INST: sh.nor.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0x27,0x00,0xdf,0x13]
sh.nor.t %d1, %d0, 31, %d0, 7

# CHECK-INST: sh.nor.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0x27,0x00,0x5f,0x1c]
sh.nor.t %d1, %d0, 31, %d0, 24

# CHECK-INST: sh.nor.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0x27,0x00,0xdf,0x1f]
sh.nor.t %d1, %d0, 31, %d0, 31

# CHECK-INST: sh.nor.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0x27,0x10,0x5f,0x10]
sh.nor.t %d1, %d0, 31, %d1, 0

# CHECK-INST: sh.nor.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0x27,0x10,0xdf,0x13]
sh.nor.t %d1, %d0, 31, %d1, 7

# CHECK-INST: sh.nor.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0x27,0x10,0x5f,0x1c]
sh.nor.t %d1, %d0, 31, %d1, 24

# CHECK-INST: sh.nor.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0x27,0x10,0xdf,0x1f]
sh.nor.t %d1, %d0, 31, %d1, 31

# CHECK-INST: sh.nor.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x5f,0x10]
sh.nor.t %d1, %d0, 31, %d14, 0

# CHECK-INST: sh.nor.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xdf,0x13]
sh.nor.t %d1, %d0, 31, %d14, 7

# CHECK-INST: sh.nor.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x5f,0x1c]
sh.nor.t %d1, %d0, 31, %d14, 24

# CHECK-INST: sh.nor.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xdf,0x1f]
sh.nor.t %d1, %d0, 31, %d14, 31

# CHECK-INST: sh.nor.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x5f,0x10]
sh.nor.t %d1, %d0, 31, %d15, 0

# CHECK-INST: sh.nor.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xdf,0x13]
sh.nor.t %d1, %d0, 31, %d15, 7

# CHECK-INST: sh.nor.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x5f,0x1c]
sh.nor.t %d1, %d0, 31, %d15, 24

# CHECK-INST: sh.nor.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xdf,0x1f]
sh.nor.t %d1, %d0, 31, %d15, 31

# CHECK-INST: sh.nor.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0x27,0x01,0x40,0x10]
sh.nor.t %d1, %d1, 0, %d0, 0

# CHECK-INST: sh.nor.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0x27,0x01,0xc0,0x13]
sh.nor.t %d1, %d1, 0, %d0, 7

# CHECK-INST: sh.nor.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0x27,0x01,0x40,0x1c]
sh.nor.t %d1, %d1, 0, %d0, 24

# CHECK-INST: sh.nor.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0x27,0x01,0xc0,0x1f]
sh.nor.t %d1, %d1, 0, %d0, 31

# CHECK-INST: sh.nor.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0x27,0x11,0x40,0x10]
sh.nor.t %d1, %d1, 0, %d1, 0

# CHECK-INST: sh.nor.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0x27,0x11,0xc0,0x13]
sh.nor.t %d1, %d1, 0, %d1, 7

# CHECK-INST: sh.nor.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0x27,0x11,0x40,0x1c]
sh.nor.t %d1, %d1, 0, %d1, 24

# CHECK-INST: sh.nor.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0x27,0x11,0xc0,0x1f]
sh.nor.t %d1, %d1, 0, %d1, 31

# CHECK-INST: sh.nor.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x40,0x10]
sh.nor.t %d1, %d1, 0, %d14, 0

# CHECK-INST: sh.nor.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xc0,0x13]
sh.nor.t %d1, %d1, 0, %d14, 7

# CHECK-INST: sh.nor.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x40,0x1c]
sh.nor.t %d1, %d1, 0, %d14, 24

# CHECK-INST: sh.nor.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xc0,0x1f]
sh.nor.t %d1, %d1, 0, %d14, 31

# CHECK-INST: sh.nor.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x40,0x10]
sh.nor.t %d1, %d1, 0, %d15, 0

# CHECK-INST: sh.nor.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xc0,0x13]
sh.nor.t %d1, %d1, 0, %d15, 7

# CHECK-INST: sh.nor.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x40,0x1c]
sh.nor.t %d1, %d1, 0, %d15, 24

# CHECK-INST: sh.nor.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xc0,0x1f]
sh.nor.t %d1, %d1, 0, %d15, 31

# CHECK-INST: sh.nor.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0x27,0x01,0x47,0x10]
sh.nor.t %d1, %d1, 7, %d0, 0

# CHECK-INST: sh.nor.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0x27,0x01,0xc7,0x13]
sh.nor.t %d1, %d1, 7, %d0, 7

# CHECK-INST: sh.nor.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0x27,0x01,0x47,0x1c]
sh.nor.t %d1, %d1, 7, %d0, 24

# CHECK-INST: sh.nor.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0x27,0x01,0xc7,0x1f]
sh.nor.t %d1, %d1, 7, %d0, 31

# CHECK-INST: sh.nor.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0x27,0x11,0x47,0x10]
sh.nor.t %d1, %d1, 7, %d1, 0

# CHECK-INST: sh.nor.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0x27,0x11,0xc7,0x13]
sh.nor.t %d1, %d1, 7, %d1, 7

# CHECK-INST: sh.nor.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0x27,0x11,0x47,0x1c]
sh.nor.t %d1, %d1, 7, %d1, 24

# CHECK-INST: sh.nor.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0x27,0x11,0xc7,0x1f]
sh.nor.t %d1, %d1, 7, %d1, 31

# CHECK-INST: sh.nor.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x47,0x10]
sh.nor.t %d1, %d1, 7, %d14, 0

# CHECK-INST: sh.nor.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xc7,0x13]
sh.nor.t %d1, %d1, 7, %d14, 7

# CHECK-INST: sh.nor.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x47,0x1c]
sh.nor.t %d1, %d1, 7, %d14, 24

# CHECK-INST: sh.nor.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xc7,0x1f]
sh.nor.t %d1, %d1, 7, %d14, 31

# CHECK-INST: sh.nor.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x47,0x10]
sh.nor.t %d1, %d1, 7, %d15, 0

# CHECK-INST: sh.nor.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xc7,0x13]
sh.nor.t %d1, %d1, 7, %d15, 7

# CHECK-INST: sh.nor.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x47,0x1c]
sh.nor.t %d1, %d1, 7, %d15, 24

# CHECK-INST: sh.nor.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xc7,0x1f]
sh.nor.t %d1, %d1, 7, %d15, 31

# CHECK-INST: sh.nor.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0x27,0x01,0x58,0x10]
sh.nor.t %d1, %d1, 24, %d0, 0

# CHECK-INST: sh.nor.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0x27,0x01,0xd8,0x13]
sh.nor.t %d1, %d1, 24, %d0, 7

# CHECK-INST: sh.nor.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0x27,0x01,0x58,0x1c]
sh.nor.t %d1, %d1, 24, %d0, 24

# CHECK-INST: sh.nor.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0x27,0x01,0xd8,0x1f]
sh.nor.t %d1, %d1, 24, %d0, 31

# CHECK-INST: sh.nor.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0x27,0x11,0x58,0x10]
sh.nor.t %d1, %d1, 24, %d1, 0

# CHECK-INST: sh.nor.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0x27,0x11,0xd8,0x13]
sh.nor.t %d1, %d1, 24, %d1, 7

# CHECK-INST: sh.nor.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0x27,0x11,0x58,0x1c]
sh.nor.t %d1, %d1, 24, %d1, 24

# CHECK-INST: sh.nor.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0x27,0x11,0xd8,0x1f]
sh.nor.t %d1, %d1, 24, %d1, 31

# CHECK-INST: sh.nor.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x58,0x10]
sh.nor.t %d1, %d1, 24, %d14, 0

# CHECK-INST: sh.nor.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xd8,0x13]
sh.nor.t %d1, %d1, 24, %d14, 7

# CHECK-INST: sh.nor.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x58,0x1c]
sh.nor.t %d1, %d1, 24, %d14, 24

# CHECK-INST: sh.nor.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xd8,0x1f]
sh.nor.t %d1, %d1, 24, %d14, 31

# CHECK-INST: sh.nor.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x58,0x10]
sh.nor.t %d1, %d1, 24, %d15, 0

# CHECK-INST: sh.nor.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xd8,0x13]
sh.nor.t %d1, %d1, 24, %d15, 7

# CHECK-INST: sh.nor.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x58,0x1c]
sh.nor.t %d1, %d1, 24, %d15, 24

# CHECK-INST: sh.nor.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xd8,0x1f]
sh.nor.t %d1, %d1, 24, %d15, 31

# CHECK-INST: sh.nor.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0x27,0x01,0x5f,0x10]
sh.nor.t %d1, %d1, 31, %d0, 0

# CHECK-INST: sh.nor.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0x27,0x01,0xdf,0x13]
sh.nor.t %d1, %d1, 31, %d0, 7

# CHECK-INST: sh.nor.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0x27,0x01,0x5f,0x1c]
sh.nor.t %d1, %d1, 31, %d0, 24

# CHECK-INST: sh.nor.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0x27,0x01,0xdf,0x1f]
sh.nor.t %d1, %d1, 31, %d0, 31

# CHECK-INST: sh.nor.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0x27,0x11,0x5f,0x10]
sh.nor.t %d1, %d1, 31, %d1, 0

# CHECK-INST: sh.nor.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0x27,0x11,0xdf,0x13]
sh.nor.t %d1, %d1, 31, %d1, 7

# CHECK-INST: sh.nor.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0x27,0x11,0x5f,0x1c]
sh.nor.t %d1, %d1, 31, %d1, 24

# CHECK-INST: sh.nor.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0x27,0x11,0xdf,0x1f]
sh.nor.t %d1, %d1, 31, %d1, 31

# CHECK-INST: sh.nor.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x5f,0x10]
sh.nor.t %d1, %d1, 31, %d14, 0

# CHECK-INST: sh.nor.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xdf,0x13]
sh.nor.t %d1, %d1, 31, %d14, 7

# CHECK-INST: sh.nor.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x5f,0x1c]
sh.nor.t %d1, %d1, 31, %d14, 24

# CHECK-INST: sh.nor.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xdf,0x1f]
sh.nor.t %d1, %d1, 31, %d14, 31

# CHECK-INST: sh.nor.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x5f,0x10]
sh.nor.t %d1, %d1, 31, %d15, 0

# CHECK-INST: sh.nor.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xdf,0x13]
sh.nor.t %d1, %d1, 31, %d15, 7

# CHECK-INST: sh.nor.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x5f,0x1c]
sh.nor.t %d1, %d1, 31, %d15, 24

# CHECK-INST: sh.nor.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xdf,0x1f]
sh.nor.t %d1, %d1, 31, %d15, 31

# CHECK-INST: sh.nor.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x40,0x10]
sh.nor.t %d1, %d14, 0, %d0, 0

# CHECK-INST: sh.nor.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xc0,0x13]
sh.nor.t %d1, %d14, 0, %d0, 7

# CHECK-INST: sh.nor.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x40,0x1c]
sh.nor.t %d1, %d14, 0, %d0, 24

# CHECK-INST: sh.nor.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xc0,0x1f]
sh.nor.t %d1, %d14, 0, %d0, 31

# CHECK-INST: sh.nor.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x40,0x10]
sh.nor.t %d1, %d14, 0, %d1, 0

# CHECK-INST: sh.nor.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xc0,0x13]
sh.nor.t %d1, %d14, 0, %d1, 7

# CHECK-INST: sh.nor.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x40,0x1c]
sh.nor.t %d1, %d14, 0, %d1, 24

# CHECK-INST: sh.nor.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xc0,0x1f]
sh.nor.t %d1, %d14, 0, %d1, 31

# CHECK-INST: sh.nor.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0x27,0xee,0x40,0x10]
sh.nor.t %d1, %d14, 0, %d14, 0

# CHECK-INST: sh.nor.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0x27,0xee,0xc0,0x13]
sh.nor.t %d1, %d14, 0, %d14, 7

# CHECK-INST: sh.nor.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0x27,0xee,0x40,0x1c]
sh.nor.t %d1, %d14, 0, %d14, 24

# CHECK-INST: sh.nor.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0x27,0xee,0xc0,0x1f]
sh.nor.t %d1, %d14, 0, %d14, 31

# CHECK-INST: sh.nor.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x40,0x10]
sh.nor.t %d1, %d14, 0, %d15, 0

# CHECK-INST: sh.nor.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xc0,0x13]
sh.nor.t %d1, %d14, 0, %d15, 7

# CHECK-INST: sh.nor.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x40,0x1c]
sh.nor.t %d1, %d14, 0, %d15, 24

# CHECK-INST: sh.nor.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xc0,0x1f]
sh.nor.t %d1, %d14, 0, %d15, 31

# CHECK-INST: sh.nor.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x47,0x10]
sh.nor.t %d1, %d14, 7, %d0, 0

# CHECK-INST: sh.nor.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xc7,0x13]
sh.nor.t %d1, %d14, 7, %d0, 7

# CHECK-INST: sh.nor.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x47,0x1c]
sh.nor.t %d1, %d14, 7, %d0, 24

# CHECK-INST: sh.nor.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xc7,0x1f]
sh.nor.t %d1, %d14, 7, %d0, 31

# CHECK-INST: sh.nor.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x47,0x10]
sh.nor.t %d1, %d14, 7, %d1, 0

# CHECK-INST: sh.nor.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xc7,0x13]
sh.nor.t %d1, %d14, 7, %d1, 7

# CHECK-INST: sh.nor.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x47,0x1c]
sh.nor.t %d1, %d14, 7, %d1, 24

# CHECK-INST: sh.nor.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xc7,0x1f]
sh.nor.t %d1, %d14, 7, %d1, 31

# CHECK-INST: sh.nor.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0x27,0xee,0x47,0x10]
sh.nor.t %d1, %d14, 7, %d14, 0

# CHECK-INST: sh.nor.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0x27,0xee,0xc7,0x13]
sh.nor.t %d1, %d14, 7, %d14, 7

# CHECK-INST: sh.nor.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0x27,0xee,0x47,0x1c]
sh.nor.t %d1, %d14, 7, %d14, 24

# CHECK-INST: sh.nor.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0x27,0xee,0xc7,0x1f]
sh.nor.t %d1, %d14, 7, %d14, 31

# CHECK-INST: sh.nor.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x47,0x10]
sh.nor.t %d1, %d14, 7, %d15, 0

# CHECK-INST: sh.nor.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xc7,0x13]
sh.nor.t %d1, %d14, 7, %d15, 7

# CHECK-INST: sh.nor.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x47,0x1c]
sh.nor.t %d1, %d14, 7, %d15, 24

# CHECK-INST: sh.nor.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xc7,0x1f]
sh.nor.t %d1, %d14, 7, %d15, 31

# CHECK-INST: sh.nor.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x58,0x10]
sh.nor.t %d1, %d14, 24, %d0, 0

# CHECK-INST: sh.nor.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xd8,0x13]
sh.nor.t %d1, %d14, 24, %d0, 7

# CHECK-INST: sh.nor.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x58,0x1c]
sh.nor.t %d1, %d14, 24, %d0, 24

# CHECK-INST: sh.nor.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xd8,0x1f]
sh.nor.t %d1, %d14, 24, %d0, 31

# CHECK-INST: sh.nor.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x58,0x10]
sh.nor.t %d1, %d14, 24, %d1, 0

# CHECK-INST: sh.nor.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xd8,0x13]
sh.nor.t %d1, %d14, 24, %d1, 7

# CHECK-INST: sh.nor.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x58,0x1c]
sh.nor.t %d1, %d14, 24, %d1, 24

# CHECK-INST: sh.nor.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xd8,0x1f]
sh.nor.t %d1, %d14, 24, %d1, 31

# CHECK-INST: sh.nor.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0x27,0xee,0x58,0x10]
sh.nor.t %d1, %d14, 24, %d14, 0

# CHECK-INST: sh.nor.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0x27,0xee,0xd8,0x13]
sh.nor.t %d1, %d14, 24, %d14, 7

# CHECK-INST: sh.nor.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0x27,0xee,0x58,0x1c]
sh.nor.t %d1, %d14, 24, %d14, 24

# CHECK-INST: sh.nor.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0x27,0xee,0xd8,0x1f]
sh.nor.t %d1, %d14, 24, %d14, 31

# CHECK-INST: sh.nor.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x58,0x10]
sh.nor.t %d1, %d14, 24, %d15, 0

# CHECK-INST: sh.nor.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xd8,0x13]
sh.nor.t %d1, %d14, 24, %d15, 7

# CHECK-INST: sh.nor.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x58,0x1c]
sh.nor.t %d1, %d14, 24, %d15, 24

# CHECK-INST: sh.nor.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xd8,0x1f]
sh.nor.t %d1, %d14, 24, %d15, 31

# CHECK-INST: sh.nor.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x5f,0x10]
sh.nor.t %d1, %d14, 31, %d0, 0

# CHECK-INST: sh.nor.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xdf,0x13]
sh.nor.t %d1, %d14, 31, %d0, 7

# CHECK-INST: sh.nor.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x5f,0x1c]
sh.nor.t %d1, %d14, 31, %d0, 24

# CHECK-INST: sh.nor.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xdf,0x1f]
sh.nor.t %d1, %d14, 31, %d0, 31

# CHECK-INST: sh.nor.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x5f,0x10]
sh.nor.t %d1, %d14, 31, %d1, 0

# CHECK-INST: sh.nor.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xdf,0x13]
sh.nor.t %d1, %d14, 31, %d1, 7

# CHECK-INST: sh.nor.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x5f,0x1c]
sh.nor.t %d1, %d14, 31, %d1, 24

# CHECK-INST: sh.nor.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xdf,0x1f]
sh.nor.t %d1, %d14, 31, %d1, 31

# CHECK-INST: sh.nor.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0x27,0xee,0x5f,0x10]
sh.nor.t %d1, %d14, 31, %d14, 0

# CHECK-INST: sh.nor.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0x27,0xee,0xdf,0x13]
sh.nor.t %d1, %d14, 31, %d14, 7

# CHECK-INST: sh.nor.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0x27,0xee,0x5f,0x1c]
sh.nor.t %d1, %d14, 31, %d14, 24

# CHECK-INST: sh.nor.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0x27,0xee,0xdf,0x1f]
sh.nor.t %d1, %d14, 31, %d14, 31

# CHECK-INST: sh.nor.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x5f,0x10]
sh.nor.t %d1, %d14, 31, %d15, 0

# CHECK-INST: sh.nor.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xdf,0x13]
sh.nor.t %d1, %d14, 31, %d15, 7

# CHECK-INST: sh.nor.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x5f,0x1c]
sh.nor.t %d1, %d14, 31, %d15, 24

# CHECK-INST: sh.nor.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xdf,0x1f]
sh.nor.t %d1, %d14, 31, %d15, 31

# CHECK-INST: sh.nor.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x40,0x10]
sh.nor.t %d1, %d15, 0, %d0, 0

# CHECK-INST: sh.nor.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xc0,0x13]
sh.nor.t %d1, %d15, 0, %d0, 7

# CHECK-INST: sh.nor.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x40,0x1c]
sh.nor.t %d1, %d15, 0, %d0, 24

# CHECK-INST: sh.nor.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xc0,0x1f]
sh.nor.t %d1, %d15, 0, %d0, 31

# CHECK-INST: sh.nor.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x40,0x10]
sh.nor.t %d1, %d15, 0, %d1, 0

# CHECK-INST: sh.nor.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xc0,0x13]
sh.nor.t %d1, %d15, 0, %d1, 7

# CHECK-INST: sh.nor.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x40,0x1c]
sh.nor.t %d1, %d15, 0, %d1, 24

# CHECK-INST: sh.nor.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xc0,0x1f]
sh.nor.t %d1, %d15, 0, %d1, 31

# CHECK-INST: sh.nor.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0x27,0xef,0x40,0x10]
sh.nor.t %d1, %d15, 0, %d14, 0

# CHECK-INST: sh.nor.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0x27,0xef,0xc0,0x13]
sh.nor.t %d1, %d15, 0, %d14, 7

# CHECK-INST: sh.nor.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0x27,0xef,0x40,0x1c]
sh.nor.t %d1, %d15, 0, %d14, 24

# CHECK-INST: sh.nor.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0x27,0xef,0xc0,0x1f]
sh.nor.t %d1, %d15, 0, %d14, 31

# CHECK-INST: sh.nor.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0x27,0xff,0x40,0x10]
sh.nor.t %d1, %d15, 0, %d15, 0

# CHECK-INST: sh.nor.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0x27,0xff,0xc0,0x13]
sh.nor.t %d1, %d15, 0, %d15, 7

# CHECK-INST: sh.nor.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0x27,0xff,0x40,0x1c]
sh.nor.t %d1, %d15, 0, %d15, 24

# CHECK-INST: sh.nor.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0x27,0xff,0xc0,0x1f]
sh.nor.t %d1, %d15, 0, %d15, 31

# CHECK-INST: sh.nor.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x47,0x10]
sh.nor.t %d1, %d15, 7, %d0, 0

# CHECK-INST: sh.nor.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xc7,0x13]
sh.nor.t %d1, %d15, 7, %d0, 7

# CHECK-INST: sh.nor.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x47,0x1c]
sh.nor.t %d1, %d15, 7, %d0, 24

# CHECK-INST: sh.nor.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xc7,0x1f]
sh.nor.t %d1, %d15, 7, %d0, 31

# CHECK-INST: sh.nor.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x47,0x10]
sh.nor.t %d1, %d15, 7, %d1, 0

# CHECK-INST: sh.nor.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xc7,0x13]
sh.nor.t %d1, %d15, 7, %d1, 7

# CHECK-INST: sh.nor.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x47,0x1c]
sh.nor.t %d1, %d15, 7, %d1, 24

# CHECK-INST: sh.nor.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xc7,0x1f]
sh.nor.t %d1, %d15, 7, %d1, 31

# CHECK-INST: sh.nor.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0x27,0xef,0x47,0x10]
sh.nor.t %d1, %d15, 7, %d14, 0

# CHECK-INST: sh.nor.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0x27,0xef,0xc7,0x13]
sh.nor.t %d1, %d15, 7, %d14, 7

# CHECK-INST: sh.nor.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0x27,0xef,0x47,0x1c]
sh.nor.t %d1, %d15, 7, %d14, 24

# CHECK-INST: sh.nor.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0x27,0xef,0xc7,0x1f]
sh.nor.t %d1, %d15, 7, %d14, 31

# CHECK-INST: sh.nor.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0x27,0xff,0x47,0x10]
sh.nor.t %d1, %d15, 7, %d15, 0

# CHECK-INST: sh.nor.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0x27,0xff,0xc7,0x13]
sh.nor.t %d1, %d15, 7, %d15, 7

# CHECK-INST: sh.nor.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0x27,0xff,0x47,0x1c]
sh.nor.t %d1, %d15, 7, %d15, 24

# CHECK-INST: sh.nor.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0x27,0xff,0xc7,0x1f]
sh.nor.t %d1, %d15, 7, %d15, 31

# CHECK-INST: sh.nor.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x58,0x10]
sh.nor.t %d1, %d15, 24, %d0, 0

# CHECK-INST: sh.nor.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xd8,0x13]
sh.nor.t %d1, %d15, 24, %d0, 7

# CHECK-INST: sh.nor.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x58,0x1c]
sh.nor.t %d1, %d15, 24, %d0, 24

# CHECK-INST: sh.nor.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xd8,0x1f]
sh.nor.t %d1, %d15, 24, %d0, 31

# CHECK-INST: sh.nor.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x58,0x10]
sh.nor.t %d1, %d15, 24, %d1, 0

# CHECK-INST: sh.nor.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xd8,0x13]
sh.nor.t %d1, %d15, 24, %d1, 7

# CHECK-INST: sh.nor.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x58,0x1c]
sh.nor.t %d1, %d15, 24, %d1, 24

# CHECK-INST: sh.nor.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xd8,0x1f]
sh.nor.t %d1, %d15, 24, %d1, 31

# CHECK-INST: sh.nor.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0x27,0xef,0x58,0x10]
sh.nor.t %d1, %d15, 24, %d14, 0

# CHECK-INST: sh.nor.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0x27,0xef,0xd8,0x13]
sh.nor.t %d1, %d15, 24, %d14, 7

# CHECK-INST: sh.nor.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0x27,0xef,0x58,0x1c]
sh.nor.t %d1, %d15, 24, %d14, 24

# CHECK-INST: sh.nor.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0x27,0xef,0xd8,0x1f]
sh.nor.t %d1, %d15, 24, %d14, 31

# CHECK-INST: sh.nor.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0x27,0xff,0x58,0x10]
sh.nor.t %d1, %d15, 24, %d15, 0

# CHECK-INST: sh.nor.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0x27,0xff,0xd8,0x13]
sh.nor.t %d1, %d15, 24, %d15, 7

# CHECK-INST: sh.nor.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0x27,0xff,0x58,0x1c]
sh.nor.t %d1, %d15, 24, %d15, 24

# CHECK-INST: sh.nor.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0x27,0xff,0xd8,0x1f]
sh.nor.t %d1, %d15, 24, %d15, 31

# CHECK-INST: sh.nor.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x5f,0x10]
sh.nor.t %d1, %d15, 31, %d0, 0

# CHECK-INST: sh.nor.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xdf,0x13]
sh.nor.t %d1, %d15, 31, %d0, 7

# CHECK-INST: sh.nor.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x5f,0x1c]
sh.nor.t %d1, %d15, 31, %d0, 24

# CHECK-INST: sh.nor.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xdf,0x1f]
sh.nor.t %d1, %d15, 31, %d0, 31

# CHECK-INST: sh.nor.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x5f,0x10]
sh.nor.t %d1, %d15, 31, %d1, 0

# CHECK-INST: sh.nor.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xdf,0x13]
sh.nor.t %d1, %d15, 31, %d1, 7

# CHECK-INST: sh.nor.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x5f,0x1c]
sh.nor.t %d1, %d15, 31, %d1, 24

# CHECK-INST: sh.nor.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xdf,0x1f]
sh.nor.t %d1, %d15, 31, %d1, 31

# CHECK-INST: sh.nor.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0x27,0xef,0x5f,0x10]
sh.nor.t %d1, %d15, 31, %d14, 0

# CHECK-INST: sh.nor.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0x27,0xef,0xdf,0x13]
sh.nor.t %d1, %d15, 31, %d14, 7

# CHECK-INST: sh.nor.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0x27,0xef,0x5f,0x1c]
sh.nor.t %d1, %d15, 31, %d14, 24

# CHECK-INST: sh.nor.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0x27,0xef,0xdf,0x1f]
sh.nor.t %d1, %d15, 31, %d14, 31

# CHECK-INST: sh.nor.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0x27,0xff,0x5f,0x10]
sh.nor.t %d1, %d15, 31, %d15, 0

# CHECK-INST: sh.nor.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0x27,0xff,0xdf,0x13]
sh.nor.t %d1, %d15, 31, %d15, 7

# CHECK-INST: sh.nor.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0x27,0xff,0x5f,0x1c]
sh.nor.t %d1, %d15, 31, %d15, 24

# CHECK-INST: sh.nor.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0x27,0xff,0xdf,0x1f]
sh.nor.t %d1, %d15, 31, %d15, 31

# CHECK-INST: sh.nor.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x40,0xe0]
sh.nor.t %d14, %d0, 0, %d0, 0

# CHECK-INST: sh.nor.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0x27,0x00,0xc0,0xe3]
sh.nor.t %d14, %d0, 0, %d0, 7

# CHECK-INST: sh.nor.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0x27,0x00,0x40,0xec]
sh.nor.t %d14, %d0, 0, %d0, 24

# CHECK-INST: sh.nor.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0x27,0x00,0xc0,0xef]
sh.nor.t %d14, %d0, 0, %d0, 31

# CHECK-INST: sh.nor.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0x27,0x10,0x40,0xe0]
sh.nor.t %d14, %d0, 0, %d1, 0

# CHECK-INST: sh.nor.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0x27,0x10,0xc0,0xe3]
sh.nor.t %d14, %d0, 0, %d1, 7

# CHECK-INST: sh.nor.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0x27,0x10,0x40,0xec]
sh.nor.t %d14, %d0, 0, %d1, 24

# CHECK-INST: sh.nor.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0x27,0x10,0xc0,0xef]
sh.nor.t %d14, %d0, 0, %d1, 31

# CHECK-INST: sh.nor.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x40,0xe0]
sh.nor.t %d14, %d0, 0, %d14, 0

# CHECK-INST: sh.nor.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xc0,0xe3]
sh.nor.t %d14, %d0, 0, %d14, 7

# CHECK-INST: sh.nor.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x40,0xec]
sh.nor.t %d14, %d0, 0, %d14, 24

# CHECK-INST: sh.nor.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xc0,0xef]
sh.nor.t %d14, %d0, 0, %d14, 31

# CHECK-INST: sh.nor.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x40,0xe0]
sh.nor.t %d14, %d0, 0, %d15, 0

# CHECK-INST: sh.nor.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xc0,0xe3]
sh.nor.t %d14, %d0, 0, %d15, 7

# CHECK-INST: sh.nor.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x40,0xec]
sh.nor.t %d14, %d0, 0, %d15, 24

# CHECK-INST: sh.nor.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xc0,0xef]
sh.nor.t %d14, %d0, 0, %d15, 31

# CHECK-INST: sh.nor.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0x27,0x00,0x47,0xe0]
sh.nor.t %d14, %d0, 7, %d0, 0

# CHECK-INST: sh.nor.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0x27,0x00,0xc7,0xe3]
sh.nor.t %d14, %d0, 7, %d0, 7

# CHECK-INST: sh.nor.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0x27,0x00,0x47,0xec]
sh.nor.t %d14, %d0, 7, %d0, 24

# CHECK-INST: sh.nor.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0x27,0x00,0xc7,0xef]
sh.nor.t %d14, %d0, 7, %d0, 31

# CHECK-INST: sh.nor.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0x27,0x10,0x47,0xe0]
sh.nor.t %d14, %d0, 7, %d1, 0

# CHECK-INST: sh.nor.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0x27,0x10,0xc7,0xe3]
sh.nor.t %d14, %d0, 7, %d1, 7

# CHECK-INST: sh.nor.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0x27,0x10,0x47,0xec]
sh.nor.t %d14, %d0, 7, %d1, 24

# CHECK-INST: sh.nor.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0x27,0x10,0xc7,0xef]
sh.nor.t %d14, %d0, 7, %d1, 31

# CHECK-INST: sh.nor.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x47,0xe0]
sh.nor.t %d14, %d0, 7, %d14, 0

# CHECK-INST: sh.nor.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xc7,0xe3]
sh.nor.t %d14, %d0, 7, %d14, 7

# CHECK-INST: sh.nor.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x47,0xec]
sh.nor.t %d14, %d0, 7, %d14, 24

# CHECK-INST: sh.nor.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xc7,0xef]
sh.nor.t %d14, %d0, 7, %d14, 31

# CHECK-INST: sh.nor.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x47,0xe0]
sh.nor.t %d14, %d0, 7, %d15, 0

# CHECK-INST: sh.nor.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xc7,0xe3]
sh.nor.t %d14, %d0, 7, %d15, 7

# CHECK-INST: sh.nor.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x47,0xec]
sh.nor.t %d14, %d0, 7, %d15, 24

# CHECK-INST: sh.nor.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xc7,0xef]
sh.nor.t %d14, %d0, 7, %d15, 31

# CHECK-INST: sh.nor.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0x27,0x00,0x58,0xe0]
sh.nor.t %d14, %d0, 24, %d0, 0

# CHECK-INST: sh.nor.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0x27,0x00,0xd8,0xe3]
sh.nor.t %d14, %d0, 24, %d0, 7

# CHECK-INST: sh.nor.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0x27,0x00,0x58,0xec]
sh.nor.t %d14, %d0, 24, %d0, 24

# CHECK-INST: sh.nor.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0x27,0x00,0xd8,0xef]
sh.nor.t %d14, %d0, 24, %d0, 31

# CHECK-INST: sh.nor.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0x27,0x10,0x58,0xe0]
sh.nor.t %d14, %d0, 24, %d1, 0

# CHECK-INST: sh.nor.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0x27,0x10,0xd8,0xe3]
sh.nor.t %d14, %d0, 24, %d1, 7

# CHECK-INST: sh.nor.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0x27,0x10,0x58,0xec]
sh.nor.t %d14, %d0, 24, %d1, 24

# CHECK-INST: sh.nor.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0x27,0x10,0xd8,0xef]
sh.nor.t %d14, %d0, 24, %d1, 31

# CHECK-INST: sh.nor.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x58,0xe0]
sh.nor.t %d14, %d0, 24, %d14, 0

# CHECK-INST: sh.nor.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xd8,0xe3]
sh.nor.t %d14, %d0, 24, %d14, 7

# CHECK-INST: sh.nor.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x58,0xec]
sh.nor.t %d14, %d0, 24, %d14, 24

# CHECK-INST: sh.nor.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xd8,0xef]
sh.nor.t %d14, %d0, 24, %d14, 31

# CHECK-INST: sh.nor.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x58,0xe0]
sh.nor.t %d14, %d0, 24, %d15, 0

# CHECK-INST: sh.nor.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xd8,0xe3]
sh.nor.t %d14, %d0, 24, %d15, 7

# CHECK-INST: sh.nor.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x58,0xec]
sh.nor.t %d14, %d0, 24, %d15, 24

# CHECK-INST: sh.nor.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xd8,0xef]
sh.nor.t %d14, %d0, 24, %d15, 31

# CHECK-INST: sh.nor.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0x27,0x00,0x5f,0xe0]
sh.nor.t %d14, %d0, 31, %d0, 0

# CHECK-INST: sh.nor.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0x27,0x00,0xdf,0xe3]
sh.nor.t %d14, %d0, 31, %d0, 7

# CHECK-INST: sh.nor.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0x27,0x00,0x5f,0xec]
sh.nor.t %d14, %d0, 31, %d0, 24

# CHECK-INST: sh.nor.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0x27,0x00,0xdf,0xef]
sh.nor.t %d14, %d0, 31, %d0, 31

# CHECK-INST: sh.nor.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0x27,0x10,0x5f,0xe0]
sh.nor.t %d14, %d0, 31, %d1, 0

# CHECK-INST: sh.nor.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0x27,0x10,0xdf,0xe3]
sh.nor.t %d14, %d0, 31, %d1, 7

# CHECK-INST: sh.nor.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0x27,0x10,0x5f,0xec]
sh.nor.t %d14, %d0, 31, %d1, 24

# CHECK-INST: sh.nor.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0x27,0x10,0xdf,0xef]
sh.nor.t %d14, %d0, 31, %d1, 31

# CHECK-INST: sh.nor.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x5f,0xe0]
sh.nor.t %d14, %d0, 31, %d14, 0

# CHECK-INST: sh.nor.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xdf,0xe3]
sh.nor.t %d14, %d0, 31, %d14, 7

# CHECK-INST: sh.nor.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x5f,0xec]
sh.nor.t %d14, %d0, 31, %d14, 24

# CHECK-INST: sh.nor.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xdf,0xef]
sh.nor.t %d14, %d0, 31, %d14, 31

# CHECK-INST: sh.nor.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x5f,0xe0]
sh.nor.t %d14, %d0, 31, %d15, 0

# CHECK-INST: sh.nor.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xdf,0xe3]
sh.nor.t %d14, %d0, 31, %d15, 7

# CHECK-INST: sh.nor.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x5f,0xec]
sh.nor.t %d14, %d0, 31, %d15, 24

# CHECK-INST: sh.nor.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xdf,0xef]
sh.nor.t %d14, %d0, 31, %d15, 31

# CHECK-INST: sh.nor.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0x27,0x01,0x40,0xe0]
sh.nor.t %d14, %d1, 0, %d0, 0

# CHECK-INST: sh.nor.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0x27,0x01,0xc0,0xe3]
sh.nor.t %d14, %d1, 0, %d0, 7

# CHECK-INST: sh.nor.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0x27,0x01,0x40,0xec]
sh.nor.t %d14, %d1, 0, %d0, 24

# CHECK-INST: sh.nor.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0x27,0x01,0xc0,0xef]
sh.nor.t %d14, %d1, 0, %d0, 31

# CHECK-INST: sh.nor.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0x27,0x11,0x40,0xe0]
sh.nor.t %d14, %d1, 0, %d1, 0

# CHECK-INST: sh.nor.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0x27,0x11,0xc0,0xe3]
sh.nor.t %d14, %d1, 0, %d1, 7

# CHECK-INST: sh.nor.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0x27,0x11,0x40,0xec]
sh.nor.t %d14, %d1, 0, %d1, 24

# CHECK-INST: sh.nor.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0x27,0x11,0xc0,0xef]
sh.nor.t %d14, %d1, 0, %d1, 31

# CHECK-INST: sh.nor.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x40,0xe0]
sh.nor.t %d14, %d1, 0, %d14, 0

# CHECK-INST: sh.nor.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xc0,0xe3]
sh.nor.t %d14, %d1, 0, %d14, 7

# CHECK-INST: sh.nor.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x40,0xec]
sh.nor.t %d14, %d1, 0, %d14, 24

# CHECK-INST: sh.nor.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xc0,0xef]
sh.nor.t %d14, %d1, 0, %d14, 31

# CHECK-INST: sh.nor.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x40,0xe0]
sh.nor.t %d14, %d1, 0, %d15, 0

# CHECK-INST: sh.nor.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xc0,0xe3]
sh.nor.t %d14, %d1, 0, %d15, 7

# CHECK-INST: sh.nor.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x40,0xec]
sh.nor.t %d14, %d1, 0, %d15, 24

# CHECK-INST: sh.nor.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xc0,0xef]
sh.nor.t %d14, %d1, 0, %d15, 31

# CHECK-INST: sh.nor.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0x27,0x01,0x47,0xe0]
sh.nor.t %d14, %d1, 7, %d0, 0

# CHECK-INST: sh.nor.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0x27,0x01,0xc7,0xe3]
sh.nor.t %d14, %d1, 7, %d0, 7

# CHECK-INST: sh.nor.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0x27,0x01,0x47,0xec]
sh.nor.t %d14, %d1, 7, %d0, 24

# CHECK-INST: sh.nor.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0x27,0x01,0xc7,0xef]
sh.nor.t %d14, %d1, 7, %d0, 31

# CHECK-INST: sh.nor.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0x27,0x11,0x47,0xe0]
sh.nor.t %d14, %d1, 7, %d1, 0

# CHECK-INST: sh.nor.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0x27,0x11,0xc7,0xe3]
sh.nor.t %d14, %d1, 7, %d1, 7

# CHECK-INST: sh.nor.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0x27,0x11,0x47,0xec]
sh.nor.t %d14, %d1, 7, %d1, 24

# CHECK-INST: sh.nor.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0x27,0x11,0xc7,0xef]
sh.nor.t %d14, %d1, 7, %d1, 31

# CHECK-INST: sh.nor.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x47,0xe0]
sh.nor.t %d14, %d1, 7, %d14, 0

# CHECK-INST: sh.nor.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xc7,0xe3]
sh.nor.t %d14, %d1, 7, %d14, 7

# CHECK-INST: sh.nor.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x47,0xec]
sh.nor.t %d14, %d1, 7, %d14, 24

# CHECK-INST: sh.nor.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xc7,0xef]
sh.nor.t %d14, %d1, 7, %d14, 31

# CHECK-INST: sh.nor.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x47,0xe0]
sh.nor.t %d14, %d1, 7, %d15, 0

# CHECK-INST: sh.nor.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xc7,0xe3]
sh.nor.t %d14, %d1, 7, %d15, 7

# CHECK-INST: sh.nor.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x47,0xec]
sh.nor.t %d14, %d1, 7, %d15, 24

# CHECK-INST: sh.nor.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xc7,0xef]
sh.nor.t %d14, %d1, 7, %d15, 31

# CHECK-INST: sh.nor.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0x27,0x01,0x58,0xe0]
sh.nor.t %d14, %d1, 24, %d0, 0

# CHECK-INST: sh.nor.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0x27,0x01,0xd8,0xe3]
sh.nor.t %d14, %d1, 24, %d0, 7

# CHECK-INST: sh.nor.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0x27,0x01,0x58,0xec]
sh.nor.t %d14, %d1, 24, %d0, 24

# CHECK-INST: sh.nor.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0x27,0x01,0xd8,0xef]
sh.nor.t %d14, %d1, 24, %d0, 31

# CHECK-INST: sh.nor.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0x27,0x11,0x58,0xe0]
sh.nor.t %d14, %d1, 24, %d1, 0

# CHECK-INST: sh.nor.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0x27,0x11,0xd8,0xe3]
sh.nor.t %d14, %d1, 24, %d1, 7

# CHECK-INST: sh.nor.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0x27,0x11,0x58,0xec]
sh.nor.t %d14, %d1, 24, %d1, 24

# CHECK-INST: sh.nor.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0x27,0x11,0xd8,0xef]
sh.nor.t %d14, %d1, 24, %d1, 31

# CHECK-INST: sh.nor.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x58,0xe0]
sh.nor.t %d14, %d1, 24, %d14, 0

# CHECK-INST: sh.nor.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xd8,0xe3]
sh.nor.t %d14, %d1, 24, %d14, 7

# CHECK-INST: sh.nor.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x58,0xec]
sh.nor.t %d14, %d1, 24, %d14, 24

# CHECK-INST: sh.nor.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xd8,0xef]
sh.nor.t %d14, %d1, 24, %d14, 31

# CHECK-INST: sh.nor.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x58,0xe0]
sh.nor.t %d14, %d1, 24, %d15, 0

# CHECK-INST: sh.nor.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xd8,0xe3]
sh.nor.t %d14, %d1, 24, %d15, 7

# CHECK-INST: sh.nor.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x58,0xec]
sh.nor.t %d14, %d1, 24, %d15, 24

# CHECK-INST: sh.nor.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xd8,0xef]
sh.nor.t %d14, %d1, 24, %d15, 31

# CHECK-INST: sh.nor.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0x27,0x01,0x5f,0xe0]
sh.nor.t %d14, %d1, 31, %d0, 0

# CHECK-INST: sh.nor.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0x27,0x01,0xdf,0xe3]
sh.nor.t %d14, %d1, 31, %d0, 7

# CHECK-INST: sh.nor.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0x27,0x01,0x5f,0xec]
sh.nor.t %d14, %d1, 31, %d0, 24

# CHECK-INST: sh.nor.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0x27,0x01,0xdf,0xef]
sh.nor.t %d14, %d1, 31, %d0, 31

# CHECK-INST: sh.nor.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0x27,0x11,0x5f,0xe0]
sh.nor.t %d14, %d1, 31, %d1, 0

# CHECK-INST: sh.nor.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0x27,0x11,0xdf,0xe3]
sh.nor.t %d14, %d1, 31, %d1, 7

# CHECK-INST: sh.nor.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0x27,0x11,0x5f,0xec]
sh.nor.t %d14, %d1, 31, %d1, 24

# CHECK-INST: sh.nor.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0x27,0x11,0xdf,0xef]
sh.nor.t %d14, %d1, 31, %d1, 31

# CHECK-INST: sh.nor.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x5f,0xe0]
sh.nor.t %d14, %d1, 31, %d14, 0

# CHECK-INST: sh.nor.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xdf,0xe3]
sh.nor.t %d14, %d1, 31, %d14, 7

# CHECK-INST: sh.nor.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x5f,0xec]
sh.nor.t %d14, %d1, 31, %d14, 24

# CHECK-INST: sh.nor.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xdf,0xef]
sh.nor.t %d14, %d1, 31, %d14, 31

# CHECK-INST: sh.nor.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x5f,0xe0]
sh.nor.t %d14, %d1, 31, %d15, 0

# CHECK-INST: sh.nor.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xdf,0xe3]
sh.nor.t %d14, %d1, 31, %d15, 7

# CHECK-INST: sh.nor.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x5f,0xec]
sh.nor.t %d14, %d1, 31, %d15, 24

# CHECK-INST: sh.nor.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xdf,0xef]
sh.nor.t %d14, %d1, 31, %d15, 31

# CHECK-INST: sh.nor.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x40,0xe0]
sh.nor.t %d14, %d14, 0, %d0, 0

# CHECK-INST: sh.nor.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xc0,0xe3]
sh.nor.t %d14, %d14, 0, %d0, 7

# CHECK-INST: sh.nor.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x40,0xec]
sh.nor.t %d14, %d14, 0, %d0, 24

# CHECK-INST: sh.nor.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xc0,0xef]
sh.nor.t %d14, %d14, 0, %d0, 31

# CHECK-INST: sh.nor.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x40,0xe0]
sh.nor.t %d14, %d14, 0, %d1, 0

# CHECK-INST: sh.nor.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xc0,0xe3]
sh.nor.t %d14, %d14, 0, %d1, 7

# CHECK-INST: sh.nor.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x40,0xec]
sh.nor.t %d14, %d14, 0, %d1, 24

# CHECK-INST: sh.nor.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xc0,0xef]
sh.nor.t %d14, %d14, 0, %d1, 31

# CHECK-INST: sh.nor.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0x27,0xee,0x40,0xe0]
sh.nor.t %d14, %d14, 0, %d14, 0

# CHECK-INST: sh.nor.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0x27,0xee,0xc0,0xe3]
sh.nor.t %d14, %d14, 0, %d14, 7

# CHECK-INST: sh.nor.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0x27,0xee,0x40,0xec]
sh.nor.t %d14, %d14, 0, %d14, 24

# CHECK-INST: sh.nor.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0x27,0xee,0xc0,0xef]
sh.nor.t %d14, %d14, 0, %d14, 31

# CHECK-INST: sh.nor.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x40,0xe0]
sh.nor.t %d14, %d14, 0, %d15, 0

# CHECK-INST: sh.nor.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xc0,0xe3]
sh.nor.t %d14, %d14, 0, %d15, 7

# CHECK-INST: sh.nor.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x40,0xec]
sh.nor.t %d14, %d14, 0, %d15, 24

# CHECK-INST: sh.nor.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xc0,0xef]
sh.nor.t %d14, %d14, 0, %d15, 31

# CHECK-INST: sh.nor.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x47,0xe0]
sh.nor.t %d14, %d14, 7, %d0, 0

# CHECK-INST: sh.nor.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xc7,0xe3]
sh.nor.t %d14, %d14, 7, %d0, 7

# CHECK-INST: sh.nor.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x47,0xec]
sh.nor.t %d14, %d14, 7, %d0, 24

# CHECK-INST: sh.nor.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xc7,0xef]
sh.nor.t %d14, %d14, 7, %d0, 31

# CHECK-INST: sh.nor.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x47,0xe0]
sh.nor.t %d14, %d14, 7, %d1, 0

# CHECK-INST: sh.nor.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xc7,0xe3]
sh.nor.t %d14, %d14, 7, %d1, 7

# CHECK-INST: sh.nor.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x47,0xec]
sh.nor.t %d14, %d14, 7, %d1, 24

# CHECK-INST: sh.nor.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xc7,0xef]
sh.nor.t %d14, %d14, 7, %d1, 31

# CHECK-INST: sh.nor.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0x27,0xee,0x47,0xe0]
sh.nor.t %d14, %d14, 7, %d14, 0

# CHECK-INST: sh.nor.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0x27,0xee,0xc7,0xe3]
sh.nor.t %d14, %d14, 7, %d14, 7

# CHECK-INST: sh.nor.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0x27,0xee,0x47,0xec]
sh.nor.t %d14, %d14, 7, %d14, 24

# CHECK-INST: sh.nor.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0x27,0xee,0xc7,0xef]
sh.nor.t %d14, %d14, 7, %d14, 31

# CHECK-INST: sh.nor.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x47,0xe0]
sh.nor.t %d14, %d14, 7, %d15, 0

# CHECK-INST: sh.nor.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xc7,0xe3]
sh.nor.t %d14, %d14, 7, %d15, 7

# CHECK-INST: sh.nor.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x47,0xec]
sh.nor.t %d14, %d14, 7, %d15, 24

# CHECK-INST: sh.nor.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xc7,0xef]
sh.nor.t %d14, %d14, 7, %d15, 31

# CHECK-INST: sh.nor.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x58,0xe0]
sh.nor.t %d14, %d14, 24, %d0, 0

# CHECK-INST: sh.nor.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xd8,0xe3]
sh.nor.t %d14, %d14, 24, %d0, 7

# CHECK-INST: sh.nor.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x58,0xec]
sh.nor.t %d14, %d14, 24, %d0, 24

# CHECK-INST: sh.nor.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xd8,0xef]
sh.nor.t %d14, %d14, 24, %d0, 31

# CHECK-INST: sh.nor.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x58,0xe0]
sh.nor.t %d14, %d14, 24, %d1, 0

# CHECK-INST: sh.nor.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xd8,0xe3]
sh.nor.t %d14, %d14, 24, %d1, 7

# CHECK-INST: sh.nor.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x58,0xec]
sh.nor.t %d14, %d14, 24, %d1, 24

# CHECK-INST: sh.nor.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xd8,0xef]
sh.nor.t %d14, %d14, 24, %d1, 31

# CHECK-INST: sh.nor.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0x27,0xee,0x58,0xe0]
sh.nor.t %d14, %d14, 24, %d14, 0

# CHECK-INST: sh.nor.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0x27,0xee,0xd8,0xe3]
sh.nor.t %d14, %d14, 24, %d14, 7

# CHECK-INST: sh.nor.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0x27,0xee,0x58,0xec]
sh.nor.t %d14, %d14, 24, %d14, 24

# CHECK-INST: sh.nor.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0x27,0xee,0xd8,0xef]
sh.nor.t %d14, %d14, 24, %d14, 31

# CHECK-INST: sh.nor.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x58,0xe0]
sh.nor.t %d14, %d14, 24, %d15, 0

# CHECK-INST: sh.nor.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xd8,0xe3]
sh.nor.t %d14, %d14, 24, %d15, 7

# CHECK-INST: sh.nor.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x58,0xec]
sh.nor.t %d14, %d14, 24, %d15, 24

# CHECK-INST: sh.nor.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xd8,0xef]
sh.nor.t %d14, %d14, 24, %d15, 31

# CHECK-INST: sh.nor.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x5f,0xe0]
sh.nor.t %d14, %d14, 31, %d0, 0

# CHECK-INST: sh.nor.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xdf,0xe3]
sh.nor.t %d14, %d14, 31, %d0, 7

# CHECK-INST: sh.nor.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x5f,0xec]
sh.nor.t %d14, %d14, 31, %d0, 24

# CHECK-INST: sh.nor.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xdf,0xef]
sh.nor.t %d14, %d14, 31, %d0, 31

# CHECK-INST: sh.nor.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x5f,0xe0]
sh.nor.t %d14, %d14, 31, %d1, 0

# CHECK-INST: sh.nor.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xdf,0xe3]
sh.nor.t %d14, %d14, 31, %d1, 7

# CHECK-INST: sh.nor.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x5f,0xec]
sh.nor.t %d14, %d14, 31, %d1, 24

# CHECK-INST: sh.nor.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xdf,0xef]
sh.nor.t %d14, %d14, 31, %d1, 31

# CHECK-INST: sh.nor.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0x27,0xee,0x5f,0xe0]
sh.nor.t %d14, %d14, 31, %d14, 0

# CHECK-INST: sh.nor.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0x27,0xee,0xdf,0xe3]
sh.nor.t %d14, %d14, 31, %d14, 7

# CHECK-INST: sh.nor.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0x27,0xee,0x5f,0xec]
sh.nor.t %d14, %d14, 31, %d14, 24

# CHECK-INST: sh.nor.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0x27,0xee,0xdf,0xef]
sh.nor.t %d14, %d14, 31, %d14, 31

# CHECK-INST: sh.nor.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x5f,0xe0]
sh.nor.t %d14, %d14, 31, %d15, 0

# CHECK-INST: sh.nor.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xdf,0xe3]
sh.nor.t %d14, %d14, 31, %d15, 7

# CHECK-INST: sh.nor.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x5f,0xec]
sh.nor.t %d14, %d14, 31, %d15, 24

# CHECK-INST: sh.nor.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xdf,0xef]
sh.nor.t %d14, %d14, 31, %d15, 31

# CHECK-INST: sh.nor.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x40,0xe0]
sh.nor.t %d14, %d15, 0, %d0, 0

# CHECK-INST: sh.nor.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xc0,0xe3]
sh.nor.t %d14, %d15, 0, %d0, 7

# CHECK-INST: sh.nor.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x40,0xec]
sh.nor.t %d14, %d15, 0, %d0, 24

# CHECK-INST: sh.nor.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xc0,0xef]
sh.nor.t %d14, %d15, 0, %d0, 31

# CHECK-INST: sh.nor.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x40,0xe0]
sh.nor.t %d14, %d15, 0, %d1, 0

# CHECK-INST: sh.nor.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xc0,0xe3]
sh.nor.t %d14, %d15, 0, %d1, 7

# CHECK-INST: sh.nor.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x40,0xec]
sh.nor.t %d14, %d15, 0, %d1, 24

# CHECK-INST: sh.nor.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xc0,0xef]
sh.nor.t %d14, %d15, 0, %d1, 31

# CHECK-INST: sh.nor.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0x27,0xef,0x40,0xe0]
sh.nor.t %d14, %d15, 0, %d14, 0

# CHECK-INST: sh.nor.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0x27,0xef,0xc0,0xe3]
sh.nor.t %d14, %d15, 0, %d14, 7

# CHECK-INST: sh.nor.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0x27,0xef,0x40,0xec]
sh.nor.t %d14, %d15, 0, %d14, 24

# CHECK-INST: sh.nor.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0x27,0xef,0xc0,0xef]
sh.nor.t %d14, %d15, 0, %d14, 31

# CHECK-INST: sh.nor.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0x27,0xff,0x40,0xe0]
sh.nor.t %d14, %d15, 0, %d15, 0

# CHECK-INST: sh.nor.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0x27,0xff,0xc0,0xe3]
sh.nor.t %d14, %d15, 0, %d15, 7

# CHECK-INST: sh.nor.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0x27,0xff,0x40,0xec]
sh.nor.t %d14, %d15, 0, %d15, 24

# CHECK-INST: sh.nor.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0x27,0xff,0xc0,0xef]
sh.nor.t %d14, %d15, 0, %d15, 31

# CHECK-INST: sh.nor.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x47,0xe0]
sh.nor.t %d14, %d15, 7, %d0, 0

# CHECK-INST: sh.nor.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xc7,0xe3]
sh.nor.t %d14, %d15, 7, %d0, 7

# CHECK-INST: sh.nor.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x47,0xec]
sh.nor.t %d14, %d15, 7, %d0, 24

# CHECK-INST: sh.nor.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xc7,0xef]
sh.nor.t %d14, %d15, 7, %d0, 31

# CHECK-INST: sh.nor.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x47,0xe0]
sh.nor.t %d14, %d15, 7, %d1, 0

# CHECK-INST: sh.nor.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xc7,0xe3]
sh.nor.t %d14, %d15, 7, %d1, 7

# CHECK-INST: sh.nor.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x47,0xec]
sh.nor.t %d14, %d15, 7, %d1, 24

# CHECK-INST: sh.nor.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xc7,0xef]
sh.nor.t %d14, %d15, 7, %d1, 31

# CHECK-INST: sh.nor.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0x27,0xef,0x47,0xe0]
sh.nor.t %d14, %d15, 7, %d14, 0

# CHECK-INST: sh.nor.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0x27,0xef,0xc7,0xe3]
sh.nor.t %d14, %d15, 7, %d14, 7

# CHECK-INST: sh.nor.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0x27,0xef,0x47,0xec]
sh.nor.t %d14, %d15, 7, %d14, 24

# CHECK-INST: sh.nor.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0x27,0xef,0xc7,0xef]
sh.nor.t %d14, %d15, 7, %d14, 31

# CHECK-INST: sh.nor.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0x27,0xff,0x47,0xe0]
sh.nor.t %d14, %d15, 7, %d15, 0

# CHECK-INST: sh.nor.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0x27,0xff,0xc7,0xe3]
sh.nor.t %d14, %d15, 7, %d15, 7

# CHECK-INST: sh.nor.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0x27,0xff,0x47,0xec]
sh.nor.t %d14, %d15, 7, %d15, 24

# CHECK-INST: sh.nor.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0x27,0xff,0xc7,0xef]
sh.nor.t %d14, %d15, 7, %d15, 31

# CHECK-INST: sh.nor.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x58,0xe0]
sh.nor.t %d14, %d15, 24, %d0, 0

# CHECK-INST: sh.nor.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xd8,0xe3]
sh.nor.t %d14, %d15, 24, %d0, 7

# CHECK-INST: sh.nor.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x58,0xec]
sh.nor.t %d14, %d15, 24, %d0, 24

# CHECK-INST: sh.nor.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xd8,0xef]
sh.nor.t %d14, %d15, 24, %d0, 31

# CHECK-INST: sh.nor.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x58,0xe0]
sh.nor.t %d14, %d15, 24, %d1, 0

# CHECK-INST: sh.nor.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xd8,0xe3]
sh.nor.t %d14, %d15, 24, %d1, 7

# CHECK-INST: sh.nor.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x58,0xec]
sh.nor.t %d14, %d15, 24, %d1, 24

# CHECK-INST: sh.nor.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xd8,0xef]
sh.nor.t %d14, %d15, 24, %d1, 31

# CHECK-INST: sh.nor.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0x27,0xef,0x58,0xe0]
sh.nor.t %d14, %d15, 24, %d14, 0

# CHECK-INST: sh.nor.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0x27,0xef,0xd8,0xe3]
sh.nor.t %d14, %d15, 24, %d14, 7

# CHECK-INST: sh.nor.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0x27,0xef,0x58,0xec]
sh.nor.t %d14, %d15, 24, %d14, 24

# CHECK-INST: sh.nor.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0x27,0xef,0xd8,0xef]
sh.nor.t %d14, %d15, 24, %d14, 31

# CHECK-INST: sh.nor.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0x27,0xff,0x58,0xe0]
sh.nor.t %d14, %d15, 24, %d15, 0

# CHECK-INST: sh.nor.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0x27,0xff,0xd8,0xe3]
sh.nor.t %d14, %d15, 24, %d15, 7

# CHECK-INST: sh.nor.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0x27,0xff,0x58,0xec]
sh.nor.t %d14, %d15, 24, %d15, 24

# CHECK-INST: sh.nor.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0x27,0xff,0xd8,0xef]
sh.nor.t %d14, %d15, 24, %d15, 31

# CHECK-INST: sh.nor.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x5f,0xe0]
sh.nor.t %d14, %d15, 31, %d0, 0

# CHECK-INST: sh.nor.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xdf,0xe3]
sh.nor.t %d14, %d15, 31, %d0, 7

# CHECK-INST: sh.nor.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x5f,0xec]
sh.nor.t %d14, %d15, 31, %d0, 24

# CHECK-INST: sh.nor.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xdf,0xef]
sh.nor.t %d14, %d15, 31, %d0, 31

# CHECK-INST: sh.nor.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x5f,0xe0]
sh.nor.t %d14, %d15, 31, %d1, 0

# CHECK-INST: sh.nor.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xdf,0xe3]
sh.nor.t %d14, %d15, 31, %d1, 7

# CHECK-INST: sh.nor.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x5f,0xec]
sh.nor.t %d14, %d15, 31, %d1, 24

# CHECK-INST: sh.nor.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xdf,0xef]
sh.nor.t %d14, %d15, 31, %d1, 31

# CHECK-INST: sh.nor.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0x27,0xef,0x5f,0xe0]
sh.nor.t %d14, %d15, 31, %d14, 0

# CHECK-INST: sh.nor.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0x27,0xef,0xdf,0xe3]
sh.nor.t %d14, %d15, 31, %d14, 7

# CHECK-INST: sh.nor.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0x27,0xef,0x5f,0xec]
sh.nor.t %d14, %d15, 31, %d14, 24

# CHECK-INST: sh.nor.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0x27,0xef,0xdf,0xef]
sh.nor.t %d14, %d15, 31, %d14, 31

# CHECK-INST: sh.nor.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0x27,0xff,0x5f,0xe0]
sh.nor.t %d14, %d15, 31, %d15, 0

# CHECK-INST: sh.nor.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0x27,0xff,0xdf,0xe3]
sh.nor.t %d14, %d15, 31, %d15, 7

# CHECK-INST: sh.nor.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0x27,0xff,0x5f,0xec]
sh.nor.t %d14, %d15, 31, %d15, 24

# CHECK-INST: sh.nor.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0x27,0xff,0xdf,0xef]
sh.nor.t %d14, %d15, 31, %d15, 31

# CHECK-INST: sh.nor.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x40,0xf0]
sh.nor.t %d15, %d0, 0, %d0, 0

# CHECK-INST: sh.nor.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0x27,0x00,0xc0,0xf3]
sh.nor.t %d15, %d0, 0, %d0, 7

# CHECK-INST: sh.nor.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0x27,0x00,0x40,0xfc]
sh.nor.t %d15, %d0, 0, %d0, 24

# CHECK-INST: sh.nor.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0x27,0x00,0xc0,0xff]
sh.nor.t %d15, %d0, 0, %d0, 31

# CHECK-INST: sh.nor.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0x27,0x10,0x40,0xf0]
sh.nor.t %d15, %d0, 0, %d1, 0

# CHECK-INST: sh.nor.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0x27,0x10,0xc0,0xf3]
sh.nor.t %d15, %d0, 0, %d1, 7

# CHECK-INST: sh.nor.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0x27,0x10,0x40,0xfc]
sh.nor.t %d15, %d0, 0, %d1, 24

# CHECK-INST: sh.nor.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0x27,0x10,0xc0,0xff]
sh.nor.t %d15, %d0, 0, %d1, 31

# CHECK-INST: sh.nor.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x40,0xf0]
sh.nor.t %d15, %d0, 0, %d14, 0

# CHECK-INST: sh.nor.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xc0,0xf3]
sh.nor.t %d15, %d0, 0, %d14, 7

# CHECK-INST: sh.nor.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x40,0xfc]
sh.nor.t %d15, %d0, 0, %d14, 24

# CHECK-INST: sh.nor.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xc0,0xff]
sh.nor.t %d15, %d0, 0, %d14, 31

# CHECK-INST: sh.nor.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x40,0xf0]
sh.nor.t %d15, %d0, 0, %d15, 0

# CHECK-INST: sh.nor.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xc0,0xf3]
sh.nor.t %d15, %d0, 0, %d15, 7

# CHECK-INST: sh.nor.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x40,0xfc]
sh.nor.t %d15, %d0, 0, %d15, 24

# CHECK-INST: sh.nor.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xc0,0xff]
sh.nor.t %d15, %d0, 0, %d15, 31

# CHECK-INST: sh.nor.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0x27,0x00,0x47,0xf0]
sh.nor.t %d15, %d0, 7, %d0, 0

# CHECK-INST: sh.nor.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0x27,0x00,0xc7,0xf3]
sh.nor.t %d15, %d0, 7, %d0, 7

# CHECK-INST: sh.nor.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0x27,0x00,0x47,0xfc]
sh.nor.t %d15, %d0, 7, %d0, 24

# CHECK-INST: sh.nor.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0x27,0x00,0xc7,0xff]
sh.nor.t %d15, %d0, 7, %d0, 31

# CHECK-INST: sh.nor.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0x27,0x10,0x47,0xf0]
sh.nor.t %d15, %d0, 7, %d1, 0

# CHECK-INST: sh.nor.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0x27,0x10,0xc7,0xf3]
sh.nor.t %d15, %d0, 7, %d1, 7

# CHECK-INST: sh.nor.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0x27,0x10,0x47,0xfc]
sh.nor.t %d15, %d0, 7, %d1, 24

# CHECK-INST: sh.nor.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0x27,0x10,0xc7,0xff]
sh.nor.t %d15, %d0, 7, %d1, 31

# CHECK-INST: sh.nor.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x47,0xf0]
sh.nor.t %d15, %d0, 7, %d14, 0

# CHECK-INST: sh.nor.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xc7,0xf3]
sh.nor.t %d15, %d0, 7, %d14, 7

# CHECK-INST: sh.nor.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x47,0xfc]
sh.nor.t %d15, %d0, 7, %d14, 24

# CHECK-INST: sh.nor.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xc7,0xff]
sh.nor.t %d15, %d0, 7, %d14, 31

# CHECK-INST: sh.nor.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x47,0xf0]
sh.nor.t %d15, %d0, 7, %d15, 0

# CHECK-INST: sh.nor.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xc7,0xf3]
sh.nor.t %d15, %d0, 7, %d15, 7

# CHECK-INST: sh.nor.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x47,0xfc]
sh.nor.t %d15, %d0, 7, %d15, 24

# CHECK-INST: sh.nor.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xc7,0xff]
sh.nor.t %d15, %d0, 7, %d15, 31

# CHECK-INST: sh.nor.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0x27,0x00,0x58,0xf0]
sh.nor.t %d15, %d0, 24, %d0, 0

# CHECK-INST: sh.nor.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0x27,0x00,0xd8,0xf3]
sh.nor.t %d15, %d0, 24, %d0, 7

# CHECK-INST: sh.nor.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0x27,0x00,0x58,0xfc]
sh.nor.t %d15, %d0, 24, %d0, 24

# CHECK-INST: sh.nor.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0x27,0x00,0xd8,0xff]
sh.nor.t %d15, %d0, 24, %d0, 31

# CHECK-INST: sh.nor.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0x27,0x10,0x58,0xf0]
sh.nor.t %d15, %d0, 24, %d1, 0

# CHECK-INST: sh.nor.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0x27,0x10,0xd8,0xf3]
sh.nor.t %d15, %d0, 24, %d1, 7

# CHECK-INST: sh.nor.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0x27,0x10,0x58,0xfc]
sh.nor.t %d15, %d0, 24, %d1, 24

# CHECK-INST: sh.nor.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0x27,0x10,0xd8,0xff]
sh.nor.t %d15, %d0, 24, %d1, 31

# CHECK-INST: sh.nor.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x58,0xf0]
sh.nor.t %d15, %d0, 24, %d14, 0

# CHECK-INST: sh.nor.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xd8,0xf3]
sh.nor.t %d15, %d0, 24, %d14, 7

# CHECK-INST: sh.nor.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x58,0xfc]
sh.nor.t %d15, %d0, 24, %d14, 24

# CHECK-INST: sh.nor.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xd8,0xff]
sh.nor.t %d15, %d0, 24, %d14, 31

# CHECK-INST: sh.nor.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x58,0xf0]
sh.nor.t %d15, %d0, 24, %d15, 0

# CHECK-INST: sh.nor.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xd8,0xf3]
sh.nor.t %d15, %d0, 24, %d15, 7

# CHECK-INST: sh.nor.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x58,0xfc]
sh.nor.t %d15, %d0, 24, %d15, 24

# CHECK-INST: sh.nor.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xd8,0xff]
sh.nor.t %d15, %d0, 24, %d15, 31

# CHECK-INST: sh.nor.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0x27,0x00,0x5f,0xf0]
sh.nor.t %d15, %d0, 31, %d0, 0

# CHECK-INST: sh.nor.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0x27,0x00,0xdf,0xf3]
sh.nor.t %d15, %d0, 31, %d0, 7

# CHECK-INST: sh.nor.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0x27,0x00,0x5f,0xfc]
sh.nor.t %d15, %d0, 31, %d0, 24

# CHECK-INST: sh.nor.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0x27,0x00,0xdf,0xff]
sh.nor.t %d15, %d0, 31, %d0, 31

# CHECK-INST: sh.nor.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0x27,0x10,0x5f,0xf0]
sh.nor.t %d15, %d0, 31, %d1, 0

# CHECK-INST: sh.nor.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0x27,0x10,0xdf,0xf3]
sh.nor.t %d15, %d0, 31, %d1, 7

# CHECK-INST: sh.nor.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0x27,0x10,0x5f,0xfc]
sh.nor.t %d15, %d0, 31, %d1, 24

# CHECK-INST: sh.nor.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0x27,0x10,0xdf,0xff]
sh.nor.t %d15, %d0, 31, %d1, 31

# CHECK-INST: sh.nor.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x5f,0xf0]
sh.nor.t %d15, %d0, 31, %d14, 0

# CHECK-INST: sh.nor.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xdf,0xf3]
sh.nor.t %d15, %d0, 31, %d14, 7

# CHECK-INST: sh.nor.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x5f,0xfc]
sh.nor.t %d15, %d0, 31, %d14, 24

# CHECK-INST: sh.nor.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xdf,0xff]
sh.nor.t %d15, %d0, 31, %d14, 31

# CHECK-INST: sh.nor.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x5f,0xf0]
sh.nor.t %d15, %d0, 31, %d15, 0

# CHECK-INST: sh.nor.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xdf,0xf3]
sh.nor.t %d15, %d0, 31, %d15, 7

# CHECK-INST: sh.nor.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x5f,0xfc]
sh.nor.t %d15, %d0, 31, %d15, 24

# CHECK-INST: sh.nor.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xdf,0xff]
sh.nor.t %d15, %d0, 31, %d15, 31

# CHECK-INST: sh.nor.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0x27,0x01,0x40,0xf0]
sh.nor.t %d15, %d1, 0, %d0, 0

# CHECK-INST: sh.nor.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0x27,0x01,0xc0,0xf3]
sh.nor.t %d15, %d1, 0, %d0, 7

# CHECK-INST: sh.nor.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0x27,0x01,0x40,0xfc]
sh.nor.t %d15, %d1, 0, %d0, 24

# CHECK-INST: sh.nor.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0x27,0x01,0xc0,0xff]
sh.nor.t %d15, %d1, 0, %d0, 31

# CHECK-INST: sh.nor.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0x27,0x11,0x40,0xf0]
sh.nor.t %d15, %d1, 0, %d1, 0

# CHECK-INST: sh.nor.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0x27,0x11,0xc0,0xf3]
sh.nor.t %d15, %d1, 0, %d1, 7

# CHECK-INST: sh.nor.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0x27,0x11,0x40,0xfc]
sh.nor.t %d15, %d1, 0, %d1, 24

# CHECK-INST: sh.nor.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0x27,0x11,0xc0,0xff]
sh.nor.t %d15, %d1, 0, %d1, 31

# CHECK-INST: sh.nor.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x40,0xf0]
sh.nor.t %d15, %d1, 0, %d14, 0

# CHECK-INST: sh.nor.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xc0,0xf3]
sh.nor.t %d15, %d1, 0, %d14, 7

# CHECK-INST: sh.nor.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x40,0xfc]
sh.nor.t %d15, %d1, 0, %d14, 24

# CHECK-INST: sh.nor.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xc0,0xff]
sh.nor.t %d15, %d1, 0, %d14, 31

# CHECK-INST: sh.nor.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x40,0xf0]
sh.nor.t %d15, %d1, 0, %d15, 0

# CHECK-INST: sh.nor.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xc0,0xf3]
sh.nor.t %d15, %d1, 0, %d15, 7

# CHECK-INST: sh.nor.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x40,0xfc]
sh.nor.t %d15, %d1, 0, %d15, 24

# CHECK-INST: sh.nor.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xc0,0xff]
sh.nor.t %d15, %d1, 0, %d15, 31

# CHECK-INST: sh.nor.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0x27,0x01,0x47,0xf0]
sh.nor.t %d15, %d1, 7, %d0, 0

# CHECK-INST: sh.nor.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0x27,0x01,0xc7,0xf3]
sh.nor.t %d15, %d1, 7, %d0, 7

# CHECK-INST: sh.nor.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0x27,0x01,0x47,0xfc]
sh.nor.t %d15, %d1, 7, %d0, 24

# CHECK-INST: sh.nor.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0x27,0x01,0xc7,0xff]
sh.nor.t %d15, %d1, 7, %d0, 31

# CHECK-INST: sh.nor.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0x27,0x11,0x47,0xf0]
sh.nor.t %d15, %d1, 7, %d1, 0

# CHECK-INST: sh.nor.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0x27,0x11,0xc7,0xf3]
sh.nor.t %d15, %d1, 7, %d1, 7

# CHECK-INST: sh.nor.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0x27,0x11,0x47,0xfc]
sh.nor.t %d15, %d1, 7, %d1, 24

# CHECK-INST: sh.nor.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0x27,0x11,0xc7,0xff]
sh.nor.t %d15, %d1, 7, %d1, 31

# CHECK-INST: sh.nor.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x47,0xf0]
sh.nor.t %d15, %d1, 7, %d14, 0

# CHECK-INST: sh.nor.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xc7,0xf3]
sh.nor.t %d15, %d1, 7, %d14, 7

# CHECK-INST: sh.nor.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x47,0xfc]
sh.nor.t %d15, %d1, 7, %d14, 24

# CHECK-INST: sh.nor.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xc7,0xff]
sh.nor.t %d15, %d1, 7, %d14, 31

# CHECK-INST: sh.nor.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x47,0xf0]
sh.nor.t %d15, %d1, 7, %d15, 0

# CHECK-INST: sh.nor.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xc7,0xf3]
sh.nor.t %d15, %d1, 7, %d15, 7

# CHECK-INST: sh.nor.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x47,0xfc]
sh.nor.t %d15, %d1, 7, %d15, 24

# CHECK-INST: sh.nor.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xc7,0xff]
sh.nor.t %d15, %d1, 7, %d15, 31

# CHECK-INST: sh.nor.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0x27,0x01,0x58,0xf0]
sh.nor.t %d15, %d1, 24, %d0, 0

# CHECK-INST: sh.nor.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0x27,0x01,0xd8,0xf3]
sh.nor.t %d15, %d1, 24, %d0, 7

# CHECK-INST: sh.nor.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0x27,0x01,0x58,0xfc]
sh.nor.t %d15, %d1, 24, %d0, 24

# CHECK-INST: sh.nor.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0x27,0x01,0xd8,0xff]
sh.nor.t %d15, %d1, 24, %d0, 31

# CHECK-INST: sh.nor.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0x27,0x11,0x58,0xf0]
sh.nor.t %d15, %d1, 24, %d1, 0

# CHECK-INST: sh.nor.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0x27,0x11,0xd8,0xf3]
sh.nor.t %d15, %d1, 24, %d1, 7

# CHECK-INST: sh.nor.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0x27,0x11,0x58,0xfc]
sh.nor.t %d15, %d1, 24, %d1, 24

# CHECK-INST: sh.nor.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0x27,0x11,0xd8,0xff]
sh.nor.t %d15, %d1, 24, %d1, 31

# CHECK-INST: sh.nor.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x58,0xf0]
sh.nor.t %d15, %d1, 24, %d14, 0

# CHECK-INST: sh.nor.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xd8,0xf3]
sh.nor.t %d15, %d1, 24, %d14, 7

# CHECK-INST: sh.nor.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x58,0xfc]
sh.nor.t %d15, %d1, 24, %d14, 24

# CHECK-INST: sh.nor.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xd8,0xff]
sh.nor.t %d15, %d1, 24, %d14, 31

# CHECK-INST: sh.nor.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x58,0xf0]
sh.nor.t %d15, %d1, 24, %d15, 0

# CHECK-INST: sh.nor.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xd8,0xf3]
sh.nor.t %d15, %d1, 24, %d15, 7

# CHECK-INST: sh.nor.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x58,0xfc]
sh.nor.t %d15, %d1, 24, %d15, 24

# CHECK-INST: sh.nor.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xd8,0xff]
sh.nor.t %d15, %d1, 24, %d15, 31

# CHECK-INST: sh.nor.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0x27,0x01,0x5f,0xf0]
sh.nor.t %d15, %d1, 31, %d0, 0

# CHECK-INST: sh.nor.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0x27,0x01,0xdf,0xf3]
sh.nor.t %d15, %d1, 31, %d0, 7

# CHECK-INST: sh.nor.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0x27,0x01,0x5f,0xfc]
sh.nor.t %d15, %d1, 31, %d0, 24

# CHECK-INST: sh.nor.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0x27,0x01,0xdf,0xff]
sh.nor.t %d15, %d1, 31, %d0, 31

# CHECK-INST: sh.nor.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0x27,0x11,0x5f,0xf0]
sh.nor.t %d15, %d1, 31, %d1, 0

# CHECK-INST: sh.nor.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0x27,0x11,0xdf,0xf3]
sh.nor.t %d15, %d1, 31, %d1, 7

# CHECK-INST: sh.nor.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0x27,0x11,0x5f,0xfc]
sh.nor.t %d15, %d1, 31, %d1, 24

# CHECK-INST: sh.nor.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0x27,0x11,0xdf,0xff]
sh.nor.t %d15, %d1, 31, %d1, 31

# CHECK-INST: sh.nor.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x5f,0xf0]
sh.nor.t %d15, %d1, 31, %d14, 0

# CHECK-INST: sh.nor.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xdf,0xf3]
sh.nor.t %d15, %d1, 31, %d14, 7

# CHECK-INST: sh.nor.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x5f,0xfc]
sh.nor.t %d15, %d1, 31, %d14, 24

# CHECK-INST: sh.nor.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xdf,0xff]
sh.nor.t %d15, %d1, 31, %d14, 31

# CHECK-INST: sh.nor.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x5f,0xf0]
sh.nor.t %d15, %d1, 31, %d15, 0

# CHECK-INST: sh.nor.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xdf,0xf3]
sh.nor.t %d15, %d1, 31, %d15, 7

# CHECK-INST: sh.nor.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x5f,0xfc]
sh.nor.t %d15, %d1, 31, %d15, 24

# CHECK-INST: sh.nor.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xdf,0xff]
sh.nor.t %d15, %d1, 31, %d15, 31

# CHECK-INST: sh.nor.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x40,0xf0]
sh.nor.t %d15, %d14, 0, %d0, 0

# CHECK-INST: sh.nor.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xc0,0xf3]
sh.nor.t %d15, %d14, 0, %d0, 7

# CHECK-INST: sh.nor.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x40,0xfc]
sh.nor.t %d15, %d14, 0, %d0, 24

# CHECK-INST: sh.nor.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xc0,0xff]
sh.nor.t %d15, %d14, 0, %d0, 31

# CHECK-INST: sh.nor.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x40,0xf0]
sh.nor.t %d15, %d14, 0, %d1, 0

# CHECK-INST: sh.nor.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xc0,0xf3]
sh.nor.t %d15, %d14, 0, %d1, 7

# CHECK-INST: sh.nor.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x40,0xfc]
sh.nor.t %d15, %d14, 0, %d1, 24

# CHECK-INST: sh.nor.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xc0,0xff]
sh.nor.t %d15, %d14, 0, %d1, 31

# CHECK-INST: sh.nor.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0x27,0xee,0x40,0xf0]
sh.nor.t %d15, %d14, 0, %d14, 0

# CHECK-INST: sh.nor.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0x27,0xee,0xc0,0xf3]
sh.nor.t %d15, %d14, 0, %d14, 7

# CHECK-INST: sh.nor.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0x27,0xee,0x40,0xfc]
sh.nor.t %d15, %d14, 0, %d14, 24

# CHECK-INST: sh.nor.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0x27,0xee,0xc0,0xff]
sh.nor.t %d15, %d14, 0, %d14, 31

# CHECK-INST: sh.nor.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x40,0xf0]
sh.nor.t %d15, %d14, 0, %d15, 0

# CHECK-INST: sh.nor.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xc0,0xf3]
sh.nor.t %d15, %d14, 0, %d15, 7

# CHECK-INST: sh.nor.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x40,0xfc]
sh.nor.t %d15, %d14, 0, %d15, 24

# CHECK-INST: sh.nor.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xc0,0xff]
sh.nor.t %d15, %d14, 0, %d15, 31

# CHECK-INST: sh.nor.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x47,0xf0]
sh.nor.t %d15, %d14, 7, %d0, 0

# CHECK-INST: sh.nor.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xc7,0xf3]
sh.nor.t %d15, %d14, 7, %d0, 7

# CHECK-INST: sh.nor.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x47,0xfc]
sh.nor.t %d15, %d14, 7, %d0, 24

# CHECK-INST: sh.nor.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xc7,0xff]
sh.nor.t %d15, %d14, 7, %d0, 31

# CHECK-INST: sh.nor.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x47,0xf0]
sh.nor.t %d15, %d14, 7, %d1, 0

# CHECK-INST: sh.nor.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xc7,0xf3]
sh.nor.t %d15, %d14, 7, %d1, 7

# CHECK-INST: sh.nor.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x47,0xfc]
sh.nor.t %d15, %d14, 7, %d1, 24

# CHECK-INST: sh.nor.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xc7,0xff]
sh.nor.t %d15, %d14, 7, %d1, 31

# CHECK-INST: sh.nor.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0x27,0xee,0x47,0xf0]
sh.nor.t %d15, %d14, 7, %d14, 0

# CHECK-INST: sh.nor.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0x27,0xee,0xc7,0xf3]
sh.nor.t %d15, %d14, 7, %d14, 7

# CHECK-INST: sh.nor.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0x27,0xee,0x47,0xfc]
sh.nor.t %d15, %d14, 7, %d14, 24

# CHECK-INST: sh.nor.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0x27,0xee,0xc7,0xff]
sh.nor.t %d15, %d14, 7, %d14, 31

# CHECK-INST: sh.nor.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x47,0xf0]
sh.nor.t %d15, %d14, 7, %d15, 0

# CHECK-INST: sh.nor.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xc7,0xf3]
sh.nor.t %d15, %d14, 7, %d15, 7

# CHECK-INST: sh.nor.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x47,0xfc]
sh.nor.t %d15, %d14, 7, %d15, 24

# CHECK-INST: sh.nor.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xc7,0xff]
sh.nor.t %d15, %d14, 7, %d15, 31

# CHECK-INST: sh.nor.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x58,0xf0]
sh.nor.t %d15, %d14, 24, %d0, 0

# CHECK-INST: sh.nor.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xd8,0xf3]
sh.nor.t %d15, %d14, 24, %d0, 7

# CHECK-INST: sh.nor.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x58,0xfc]
sh.nor.t %d15, %d14, 24, %d0, 24

# CHECK-INST: sh.nor.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xd8,0xff]
sh.nor.t %d15, %d14, 24, %d0, 31

# CHECK-INST: sh.nor.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x58,0xf0]
sh.nor.t %d15, %d14, 24, %d1, 0

# CHECK-INST: sh.nor.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xd8,0xf3]
sh.nor.t %d15, %d14, 24, %d1, 7

# CHECK-INST: sh.nor.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x58,0xfc]
sh.nor.t %d15, %d14, 24, %d1, 24

# CHECK-INST: sh.nor.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xd8,0xff]
sh.nor.t %d15, %d14, 24, %d1, 31

# CHECK-INST: sh.nor.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0x27,0xee,0x58,0xf0]
sh.nor.t %d15, %d14, 24, %d14, 0

# CHECK-INST: sh.nor.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0x27,0xee,0xd8,0xf3]
sh.nor.t %d15, %d14, 24, %d14, 7

# CHECK-INST: sh.nor.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0x27,0xee,0x58,0xfc]
sh.nor.t %d15, %d14, 24, %d14, 24

# CHECK-INST: sh.nor.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0x27,0xee,0xd8,0xff]
sh.nor.t %d15, %d14, 24, %d14, 31

# CHECK-INST: sh.nor.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x58,0xf0]
sh.nor.t %d15, %d14, 24, %d15, 0

# CHECK-INST: sh.nor.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xd8,0xf3]
sh.nor.t %d15, %d14, 24, %d15, 7

# CHECK-INST: sh.nor.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x58,0xfc]
sh.nor.t %d15, %d14, 24, %d15, 24

# CHECK-INST: sh.nor.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xd8,0xff]
sh.nor.t %d15, %d14, 24, %d15, 31

# CHECK-INST: sh.nor.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x5f,0xf0]
sh.nor.t %d15, %d14, 31, %d0, 0

# CHECK-INST: sh.nor.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xdf,0xf3]
sh.nor.t %d15, %d14, 31, %d0, 7

# CHECK-INST: sh.nor.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x5f,0xfc]
sh.nor.t %d15, %d14, 31, %d0, 24

# CHECK-INST: sh.nor.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xdf,0xff]
sh.nor.t %d15, %d14, 31, %d0, 31

# CHECK-INST: sh.nor.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x5f,0xf0]
sh.nor.t %d15, %d14, 31, %d1, 0

# CHECK-INST: sh.nor.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xdf,0xf3]
sh.nor.t %d15, %d14, 31, %d1, 7

# CHECK-INST: sh.nor.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x5f,0xfc]
sh.nor.t %d15, %d14, 31, %d1, 24

# CHECK-INST: sh.nor.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xdf,0xff]
sh.nor.t %d15, %d14, 31, %d1, 31

# CHECK-INST: sh.nor.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0x27,0xee,0x5f,0xf0]
sh.nor.t %d15, %d14, 31, %d14, 0

# CHECK-INST: sh.nor.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0x27,0xee,0xdf,0xf3]
sh.nor.t %d15, %d14, 31, %d14, 7

# CHECK-INST: sh.nor.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0x27,0xee,0x5f,0xfc]
sh.nor.t %d15, %d14, 31, %d14, 24

# CHECK-INST: sh.nor.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0x27,0xee,0xdf,0xff]
sh.nor.t %d15, %d14, 31, %d14, 31

# CHECK-INST: sh.nor.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x5f,0xf0]
sh.nor.t %d15, %d14, 31, %d15, 0

# CHECK-INST: sh.nor.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xdf,0xf3]
sh.nor.t %d15, %d14, 31, %d15, 7

# CHECK-INST: sh.nor.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x5f,0xfc]
sh.nor.t %d15, %d14, 31, %d15, 24

# CHECK-INST: sh.nor.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xdf,0xff]
sh.nor.t %d15, %d14, 31, %d15, 31

# CHECK-INST: sh.nor.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x40,0xf0]
sh.nor.t %d15, %d15, 0, %d0, 0

# CHECK-INST: sh.nor.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xc0,0xf3]
sh.nor.t %d15, %d15, 0, %d0, 7

# CHECK-INST: sh.nor.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x40,0xfc]
sh.nor.t %d15, %d15, 0, %d0, 24

# CHECK-INST: sh.nor.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xc0,0xff]
sh.nor.t %d15, %d15, 0, %d0, 31

# CHECK-INST: sh.nor.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x40,0xf0]
sh.nor.t %d15, %d15, 0, %d1, 0

# CHECK-INST: sh.nor.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xc0,0xf3]
sh.nor.t %d15, %d15, 0, %d1, 7

# CHECK-INST: sh.nor.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x40,0xfc]
sh.nor.t %d15, %d15, 0, %d1, 24

# CHECK-INST: sh.nor.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xc0,0xff]
sh.nor.t %d15, %d15, 0, %d1, 31

# CHECK-INST: sh.nor.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0x27,0xef,0x40,0xf0]
sh.nor.t %d15, %d15, 0, %d14, 0

# CHECK-INST: sh.nor.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0x27,0xef,0xc0,0xf3]
sh.nor.t %d15, %d15, 0, %d14, 7

# CHECK-INST: sh.nor.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0x27,0xef,0x40,0xfc]
sh.nor.t %d15, %d15, 0, %d14, 24

# CHECK-INST: sh.nor.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0x27,0xef,0xc0,0xff]
sh.nor.t %d15, %d15, 0, %d14, 31

# CHECK-INST: sh.nor.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0x27,0xff,0x40,0xf0]
sh.nor.t %d15, %d15, 0, %d15, 0

# CHECK-INST: sh.nor.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0x27,0xff,0xc0,0xf3]
sh.nor.t %d15, %d15, 0, %d15, 7

# CHECK-INST: sh.nor.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0x27,0xff,0x40,0xfc]
sh.nor.t %d15, %d15, 0, %d15, 24

# CHECK-INST: sh.nor.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0x27,0xff,0xc0,0xff]
sh.nor.t %d15, %d15, 0, %d15, 31

# CHECK-INST: sh.nor.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x47,0xf0]
sh.nor.t %d15, %d15, 7, %d0, 0

# CHECK-INST: sh.nor.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xc7,0xf3]
sh.nor.t %d15, %d15, 7, %d0, 7

# CHECK-INST: sh.nor.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x47,0xfc]
sh.nor.t %d15, %d15, 7, %d0, 24

# CHECK-INST: sh.nor.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xc7,0xff]
sh.nor.t %d15, %d15, 7, %d0, 31

# CHECK-INST: sh.nor.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x47,0xf0]
sh.nor.t %d15, %d15, 7, %d1, 0

# CHECK-INST: sh.nor.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xc7,0xf3]
sh.nor.t %d15, %d15, 7, %d1, 7

# CHECK-INST: sh.nor.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x47,0xfc]
sh.nor.t %d15, %d15, 7, %d1, 24

# CHECK-INST: sh.nor.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xc7,0xff]
sh.nor.t %d15, %d15, 7, %d1, 31

# CHECK-INST: sh.nor.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0x27,0xef,0x47,0xf0]
sh.nor.t %d15, %d15, 7, %d14, 0

# CHECK-INST: sh.nor.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0x27,0xef,0xc7,0xf3]
sh.nor.t %d15, %d15, 7, %d14, 7

# CHECK-INST: sh.nor.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0x27,0xef,0x47,0xfc]
sh.nor.t %d15, %d15, 7, %d14, 24

# CHECK-INST: sh.nor.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0x27,0xef,0xc7,0xff]
sh.nor.t %d15, %d15, 7, %d14, 31

# CHECK-INST: sh.nor.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0x27,0xff,0x47,0xf0]
sh.nor.t %d15, %d15, 7, %d15, 0

# CHECK-INST: sh.nor.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0x27,0xff,0xc7,0xf3]
sh.nor.t %d15, %d15, 7, %d15, 7

# CHECK-INST: sh.nor.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0x27,0xff,0x47,0xfc]
sh.nor.t %d15, %d15, 7, %d15, 24

# CHECK-INST: sh.nor.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0x27,0xff,0xc7,0xff]
sh.nor.t %d15, %d15, 7, %d15, 31

# CHECK-INST: sh.nor.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x58,0xf0]
sh.nor.t %d15, %d15, 24, %d0, 0

# CHECK-INST: sh.nor.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xd8,0xf3]
sh.nor.t %d15, %d15, 24, %d0, 7

# CHECK-INST: sh.nor.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x58,0xfc]
sh.nor.t %d15, %d15, 24, %d0, 24

# CHECK-INST: sh.nor.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xd8,0xff]
sh.nor.t %d15, %d15, 24, %d0, 31

# CHECK-INST: sh.nor.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x58,0xf0]
sh.nor.t %d15, %d15, 24, %d1, 0

# CHECK-INST: sh.nor.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xd8,0xf3]
sh.nor.t %d15, %d15, 24, %d1, 7

# CHECK-INST: sh.nor.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x58,0xfc]
sh.nor.t %d15, %d15, 24, %d1, 24

# CHECK-INST: sh.nor.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xd8,0xff]
sh.nor.t %d15, %d15, 24, %d1, 31

# CHECK-INST: sh.nor.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0x27,0xef,0x58,0xf0]
sh.nor.t %d15, %d15, 24, %d14, 0

# CHECK-INST: sh.nor.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0x27,0xef,0xd8,0xf3]
sh.nor.t %d15, %d15, 24, %d14, 7

# CHECK-INST: sh.nor.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0x27,0xef,0x58,0xfc]
sh.nor.t %d15, %d15, 24, %d14, 24

# CHECK-INST: sh.nor.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0x27,0xef,0xd8,0xff]
sh.nor.t %d15, %d15, 24, %d14, 31

# CHECK-INST: sh.nor.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0x27,0xff,0x58,0xf0]
sh.nor.t %d15, %d15, 24, %d15, 0

# CHECK-INST: sh.nor.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0x27,0xff,0xd8,0xf3]
sh.nor.t %d15, %d15, 24, %d15, 7

# CHECK-INST: sh.nor.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0x27,0xff,0x58,0xfc]
sh.nor.t %d15, %d15, 24, %d15, 24

# CHECK-INST: sh.nor.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0x27,0xff,0xd8,0xff]
sh.nor.t %d15, %d15, 24, %d15, 31

# CHECK-INST: sh.nor.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x5f,0xf0]
sh.nor.t %d15, %d15, 31, %d0, 0

# CHECK-INST: sh.nor.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xdf,0xf3]
sh.nor.t %d15, %d15, 31, %d0, 7

# CHECK-INST: sh.nor.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x5f,0xfc]
sh.nor.t %d15, %d15, 31, %d0, 24

# CHECK-INST: sh.nor.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xdf,0xff]
sh.nor.t %d15, %d15, 31, %d0, 31

# CHECK-INST: sh.nor.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x5f,0xf0]
sh.nor.t %d15, %d15, 31, %d1, 0

# CHECK-INST: sh.nor.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xdf,0xf3]
sh.nor.t %d15, %d15, 31, %d1, 7

# CHECK-INST: sh.nor.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x5f,0xfc]
sh.nor.t %d15, %d15, 31, %d1, 24

# CHECK-INST: sh.nor.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xdf,0xff]
sh.nor.t %d15, %d15, 31, %d1, 31

# CHECK-INST: sh.nor.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0x27,0xef,0x5f,0xf0]
sh.nor.t %d15, %d15, 31, %d14, 0

# CHECK-INST: sh.nor.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0x27,0xef,0xdf,0xf3]
sh.nor.t %d15, %d15, 31, %d14, 7

# CHECK-INST: sh.nor.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0x27,0xef,0x5f,0xfc]
sh.nor.t %d15, %d15, 31, %d14, 24

# CHECK-INST: sh.nor.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0x27,0xef,0xdf,0xff]
sh.nor.t %d15, %d15, 31, %d14, 31

# CHECK-INST: sh.nor.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0x27,0xff,0x5f,0xf0]
sh.nor.t %d15, %d15, 31, %d15, 0

# CHECK-INST: sh.nor.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0x27,0xff,0xdf,0xf3]
sh.nor.t %d15, %d15, 31, %d15, 7

# CHECK-INST: sh.nor.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0x27,0xff,0x5f,0xfc]
sh.nor.t %d15, %d15, 31, %d15, 24

# CHECK-INST: sh.nor.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0x27,0xff,0xdf,0xff]
sh.nor.t %d15, %d15, 31, %d15, 31

# CHECK-INST: sh.or.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x20,0x00]
sh.or.t %d0, %d0, 0, %d0, 0

# CHECK-INST: sh.or.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0x27,0x00,0xa0,0x03]
sh.or.t %d0, %d0, 0, %d0, 7

# CHECK-INST: sh.or.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0x27,0x00,0x20,0x0c]
sh.or.t %d0, %d0, 0, %d0, 24

# CHECK-INST: sh.or.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0x27,0x00,0xa0,0x0f]
sh.or.t %d0, %d0, 0, %d0, 31

# CHECK-INST: sh.or.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0x27,0x10,0x20,0x00]
sh.or.t %d0, %d0, 0, %d1, 0

# CHECK-INST: sh.or.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0x27,0x10,0xa0,0x03]
sh.or.t %d0, %d0, 0, %d1, 7

# CHECK-INST: sh.or.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0x27,0x10,0x20,0x0c]
sh.or.t %d0, %d0, 0, %d1, 24

# CHECK-INST: sh.or.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0x27,0x10,0xa0,0x0f]
sh.or.t %d0, %d0, 0, %d1, 31

# CHECK-INST: sh.or.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x20,0x00]
sh.or.t %d0, %d0, 0, %d14, 0

# CHECK-INST: sh.or.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xa0,0x03]
sh.or.t %d0, %d0, 0, %d14, 7

# CHECK-INST: sh.or.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x20,0x0c]
sh.or.t %d0, %d0, 0, %d14, 24

# CHECK-INST: sh.or.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xa0,0x0f]
sh.or.t %d0, %d0, 0, %d14, 31

# CHECK-INST: sh.or.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x20,0x00]
sh.or.t %d0, %d0, 0, %d15, 0

# CHECK-INST: sh.or.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xa0,0x03]
sh.or.t %d0, %d0, 0, %d15, 7

# CHECK-INST: sh.or.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x20,0x0c]
sh.or.t %d0, %d0, 0, %d15, 24

# CHECK-INST: sh.or.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xa0,0x0f]
sh.or.t %d0, %d0, 0, %d15, 31

# CHECK-INST: sh.or.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0x27,0x00,0x27,0x00]
sh.or.t %d0, %d0, 7, %d0, 0

# CHECK-INST: sh.or.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0x27,0x00,0xa7,0x03]
sh.or.t %d0, %d0, 7, %d0, 7

# CHECK-INST: sh.or.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0x27,0x00,0x27,0x0c]
sh.or.t %d0, %d0, 7, %d0, 24

# CHECK-INST: sh.or.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0x27,0x00,0xa7,0x0f]
sh.or.t %d0, %d0, 7, %d0, 31

# CHECK-INST: sh.or.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0x27,0x10,0x27,0x00]
sh.or.t %d0, %d0, 7, %d1, 0

# CHECK-INST: sh.or.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0x27,0x10,0xa7,0x03]
sh.or.t %d0, %d0, 7, %d1, 7

# CHECK-INST: sh.or.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0x27,0x10,0x27,0x0c]
sh.or.t %d0, %d0, 7, %d1, 24

# CHECK-INST: sh.or.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0x27,0x10,0xa7,0x0f]
sh.or.t %d0, %d0, 7, %d1, 31

# CHECK-INST: sh.or.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x27,0x00]
sh.or.t %d0, %d0, 7, %d14, 0

# CHECK-INST: sh.or.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xa7,0x03]
sh.or.t %d0, %d0, 7, %d14, 7

# CHECK-INST: sh.or.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x27,0x0c]
sh.or.t %d0, %d0, 7, %d14, 24

# CHECK-INST: sh.or.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xa7,0x0f]
sh.or.t %d0, %d0, 7, %d14, 31

# CHECK-INST: sh.or.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x27,0x00]
sh.or.t %d0, %d0, 7, %d15, 0

# CHECK-INST: sh.or.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xa7,0x03]
sh.or.t %d0, %d0, 7, %d15, 7

# CHECK-INST: sh.or.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x27,0x0c]
sh.or.t %d0, %d0, 7, %d15, 24

# CHECK-INST: sh.or.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xa7,0x0f]
sh.or.t %d0, %d0, 7, %d15, 31

# CHECK-INST: sh.or.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0x27,0x00,0x38,0x00]
sh.or.t %d0, %d0, 24, %d0, 0

# CHECK-INST: sh.or.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0x27,0x00,0xb8,0x03]
sh.or.t %d0, %d0, 24, %d0, 7

# CHECK-INST: sh.or.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0x27,0x00,0x38,0x0c]
sh.or.t %d0, %d0, 24, %d0, 24

# CHECK-INST: sh.or.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0x27,0x00,0xb8,0x0f]
sh.or.t %d0, %d0, 24, %d0, 31

# CHECK-INST: sh.or.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0x27,0x10,0x38,0x00]
sh.or.t %d0, %d0, 24, %d1, 0

# CHECK-INST: sh.or.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0x27,0x10,0xb8,0x03]
sh.or.t %d0, %d0, 24, %d1, 7

# CHECK-INST: sh.or.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0x27,0x10,0x38,0x0c]
sh.or.t %d0, %d0, 24, %d1, 24

# CHECK-INST: sh.or.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0x27,0x10,0xb8,0x0f]
sh.or.t %d0, %d0, 24, %d1, 31

# CHECK-INST: sh.or.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x38,0x00]
sh.or.t %d0, %d0, 24, %d14, 0

# CHECK-INST: sh.or.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xb8,0x03]
sh.or.t %d0, %d0, 24, %d14, 7

# CHECK-INST: sh.or.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x38,0x0c]
sh.or.t %d0, %d0, 24, %d14, 24

# CHECK-INST: sh.or.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xb8,0x0f]
sh.or.t %d0, %d0, 24, %d14, 31

# CHECK-INST: sh.or.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x38,0x00]
sh.or.t %d0, %d0, 24, %d15, 0

# CHECK-INST: sh.or.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xb8,0x03]
sh.or.t %d0, %d0, 24, %d15, 7

# CHECK-INST: sh.or.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x38,0x0c]
sh.or.t %d0, %d0, 24, %d15, 24

# CHECK-INST: sh.or.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xb8,0x0f]
sh.or.t %d0, %d0, 24, %d15, 31

# CHECK-INST: sh.or.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0x27,0x00,0x3f,0x00]
sh.or.t %d0, %d0, 31, %d0, 0

# CHECK-INST: sh.or.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0x27,0x00,0xbf,0x03]
sh.or.t %d0, %d0, 31, %d0, 7

# CHECK-INST: sh.or.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0x27,0x00,0x3f,0x0c]
sh.or.t %d0, %d0, 31, %d0, 24

# CHECK-INST: sh.or.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0x27,0x00,0xbf,0x0f]
sh.or.t %d0, %d0, 31, %d0, 31

# CHECK-INST: sh.or.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0x27,0x10,0x3f,0x00]
sh.or.t %d0, %d0, 31, %d1, 0

# CHECK-INST: sh.or.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0x27,0x10,0xbf,0x03]
sh.or.t %d0, %d0, 31, %d1, 7

# CHECK-INST: sh.or.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0x27,0x10,0x3f,0x0c]
sh.or.t %d0, %d0, 31, %d1, 24

# CHECK-INST: sh.or.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0x27,0x10,0xbf,0x0f]
sh.or.t %d0, %d0, 31, %d1, 31

# CHECK-INST: sh.or.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x3f,0x00]
sh.or.t %d0, %d0, 31, %d14, 0

# CHECK-INST: sh.or.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xbf,0x03]
sh.or.t %d0, %d0, 31, %d14, 7

# CHECK-INST: sh.or.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x3f,0x0c]
sh.or.t %d0, %d0, 31, %d14, 24

# CHECK-INST: sh.or.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xbf,0x0f]
sh.or.t %d0, %d0, 31, %d14, 31

# CHECK-INST: sh.or.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x3f,0x00]
sh.or.t %d0, %d0, 31, %d15, 0

# CHECK-INST: sh.or.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xbf,0x03]
sh.or.t %d0, %d0, 31, %d15, 7

# CHECK-INST: sh.or.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x3f,0x0c]
sh.or.t %d0, %d0, 31, %d15, 24

# CHECK-INST: sh.or.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xbf,0x0f]
sh.or.t %d0, %d0, 31, %d15, 31

# CHECK-INST: sh.or.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0x27,0x01,0x20,0x00]
sh.or.t %d0, %d1, 0, %d0, 0

# CHECK-INST: sh.or.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0x27,0x01,0xa0,0x03]
sh.or.t %d0, %d1, 0, %d0, 7

# CHECK-INST: sh.or.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0x27,0x01,0x20,0x0c]
sh.or.t %d0, %d1, 0, %d0, 24

# CHECK-INST: sh.or.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0x27,0x01,0xa0,0x0f]
sh.or.t %d0, %d1, 0, %d0, 31

# CHECK-INST: sh.or.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0x27,0x11,0x20,0x00]
sh.or.t %d0, %d1, 0, %d1, 0

# CHECK-INST: sh.or.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0x27,0x11,0xa0,0x03]
sh.or.t %d0, %d1, 0, %d1, 7

# CHECK-INST: sh.or.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0x27,0x11,0x20,0x0c]
sh.or.t %d0, %d1, 0, %d1, 24

# CHECK-INST: sh.or.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0x27,0x11,0xa0,0x0f]
sh.or.t %d0, %d1, 0, %d1, 31

# CHECK-INST: sh.or.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x20,0x00]
sh.or.t %d0, %d1, 0, %d14, 0

# CHECK-INST: sh.or.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xa0,0x03]
sh.or.t %d0, %d1, 0, %d14, 7

# CHECK-INST: sh.or.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x20,0x0c]
sh.or.t %d0, %d1, 0, %d14, 24

# CHECK-INST: sh.or.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xa0,0x0f]
sh.or.t %d0, %d1, 0, %d14, 31

# CHECK-INST: sh.or.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x20,0x00]
sh.or.t %d0, %d1, 0, %d15, 0

# CHECK-INST: sh.or.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xa0,0x03]
sh.or.t %d0, %d1, 0, %d15, 7

# CHECK-INST: sh.or.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x20,0x0c]
sh.or.t %d0, %d1, 0, %d15, 24

# CHECK-INST: sh.or.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xa0,0x0f]
sh.or.t %d0, %d1, 0, %d15, 31

# CHECK-INST: sh.or.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0x27,0x01,0x27,0x00]
sh.or.t %d0, %d1, 7, %d0, 0

# CHECK-INST: sh.or.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0x27,0x01,0xa7,0x03]
sh.or.t %d0, %d1, 7, %d0, 7

# CHECK-INST: sh.or.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0x27,0x01,0x27,0x0c]
sh.or.t %d0, %d1, 7, %d0, 24

# CHECK-INST: sh.or.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0x27,0x01,0xa7,0x0f]
sh.or.t %d0, %d1, 7, %d0, 31

# CHECK-INST: sh.or.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0x27,0x11,0x27,0x00]
sh.or.t %d0, %d1, 7, %d1, 0

# CHECK-INST: sh.or.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0x27,0x11,0xa7,0x03]
sh.or.t %d0, %d1, 7, %d1, 7

# CHECK-INST: sh.or.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0x27,0x11,0x27,0x0c]
sh.or.t %d0, %d1, 7, %d1, 24

# CHECK-INST: sh.or.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0x27,0x11,0xa7,0x0f]
sh.or.t %d0, %d1, 7, %d1, 31

# CHECK-INST: sh.or.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x27,0x00]
sh.or.t %d0, %d1, 7, %d14, 0

# CHECK-INST: sh.or.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xa7,0x03]
sh.or.t %d0, %d1, 7, %d14, 7

# CHECK-INST: sh.or.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x27,0x0c]
sh.or.t %d0, %d1, 7, %d14, 24

# CHECK-INST: sh.or.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xa7,0x0f]
sh.or.t %d0, %d1, 7, %d14, 31

# CHECK-INST: sh.or.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x27,0x00]
sh.or.t %d0, %d1, 7, %d15, 0

# CHECK-INST: sh.or.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xa7,0x03]
sh.or.t %d0, %d1, 7, %d15, 7

# CHECK-INST: sh.or.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x27,0x0c]
sh.or.t %d0, %d1, 7, %d15, 24

# CHECK-INST: sh.or.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xa7,0x0f]
sh.or.t %d0, %d1, 7, %d15, 31

# CHECK-INST: sh.or.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0x27,0x01,0x38,0x00]
sh.or.t %d0, %d1, 24, %d0, 0

# CHECK-INST: sh.or.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0x27,0x01,0xb8,0x03]
sh.or.t %d0, %d1, 24, %d0, 7

# CHECK-INST: sh.or.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0x27,0x01,0x38,0x0c]
sh.or.t %d0, %d1, 24, %d0, 24

# CHECK-INST: sh.or.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0x27,0x01,0xb8,0x0f]
sh.or.t %d0, %d1, 24, %d0, 31

# CHECK-INST: sh.or.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0x27,0x11,0x38,0x00]
sh.or.t %d0, %d1, 24, %d1, 0

# CHECK-INST: sh.or.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0x27,0x11,0xb8,0x03]
sh.or.t %d0, %d1, 24, %d1, 7

# CHECK-INST: sh.or.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0x27,0x11,0x38,0x0c]
sh.or.t %d0, %d1, 24, %d1, 24

# CHECK-INST: sh.or.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0x27,0x11,0xb8,0x0f]
sh.or.t %d0, %d1, 24, %d1, 31

# CHECK-INST: sh.or.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x38,0x00]
sh.or.t %d0, %d1, 24, %d14, 0

# CHECK-INST: sh.or.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xb8,0x03]
sh.or.t %d0, %d1, 24, %d14, 7

# CHECK-INST: sh.or.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x38,0x0c]
sh.or.t %d0, %d1, 24, %d14, 24

# CHECK-INST: sh.or.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xb8,0x0f]
sh.or.t %d0, %d1, 24, %d14, 31

# CHECK-INST: sh.or.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x38,0x00]
sh.or.t %d0, %d1, 24, %d15, 0

# CHECK-INST: sh.or.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xb8,0x03]
sh.or.t %d0, %d1, 24, %d15, 7

# CHECK-INST: sh.or.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x38,0x0c]
sh.or.t %d0, %d1, 24, %d15, 24

# CHECK-INST: sh.or.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xb8,0x0f]
sh.or.t %d0, %d1, 24, %d15, 31

# CHECK-INST: sh.or.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0x27,0x01,0x3f,0x00]
sh.or.t %d0, %d1, 31, %d0, 0

# CHECK-INST: sh.or.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0x27,0x01,0xbf,0x03]
sh.or.t %d0, %d1, 31, %d0, 7

# CHECK-INST: sh.or.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0x27,0x01,0x3f,0x0c]
sh.or.t %d0, %d1, 31, %d0, 24

# CHECK-INST: sh.or.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0x27,0x01,0xbf,0x0f]
sh.or.t %d0, %d1, 31, %d0, 31

# CHECK-INST: sh.or.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0x27,0x11,0x3f,0x00]
sh.or.t %d0, %d1, 31, %d1, 0

# CHECK-INST: sh.or.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0x27,0x11,0xbf,0x03]
sh.or.t %d0, %d1, 31, %d1, 7

# CHECK-INST: sh.or.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0x27,0x11,0x3f,0x0c]
sh.or.t %d0, %d1, 31, %d1, 24

# CHECK-INST: sh.or.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0x27,0x11,0xbf,0x0f]
sh.or.t %d0, %d1, 31, %d1, 31

# CHECK-INST: sh.or.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x3f,0x00]
sh.or.t %d0, %d1, 31, %d14, 0

# CHECK-INST: sh.or.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xbf,0x03]
sh.or.t %d0, %d1, 31, %d14, 7

# CHECK-INST: sh.or.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x3f,0x0c]
sh.or.t %d0, %d1, 31, %d14, 24

# CHECK-INST: sh.or.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xbf,0x0f]
sh.or.t %d0, %d1, 31, %d14, 31

# CHECK-INST: sh.or.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x3f,0x00]
sh.or.t %d0, %d1, 31, %d15, 0

# CHECK-INST: sh.or.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xbf,0x03]
sh.or.t %d0, %d1, 31, %d15, 7

# CHECK-INST: sh.or.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x3f,0x0c]
sh.or.t %d0, %d1, 31, %d15, 24

# CHECK-INST: sh.or.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xbf,0x0f]
sh.or.t %d0, %d1, 31, %d15, 31

# CHECK-INST: sh.or.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x20,0x00]
sh.or.t %d0, %d14, 0, %d0, 0

# CHECK-INST: sh.or.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xa0,0x03]
sh.or.t %d0, %d14, 0, %d0, 7

# CHECK-INST: sh.or.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x20,0x0c]
sh.or.t %d0, %d14, 0, %d0, 24

# CHECK-INST: sh.or.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xa0,0x0f]
sh.or.t %d0, %d14, 0, %d0, 31

# CHECK-INST: sh.or.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x20,0x00]
sh.or.t %d0, %d14, 0, %d1, 0

# CHECK-INST: sh.or.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xa0,0x03]
sh.or.t %d0, %d14, 0, %d1, 7

# CHECK-INST: sh.or.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x20,0x0c]
sh.or.t %d0, %d14, 0, %d1, 24

# CHECK-INST: sh.or.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xa0,0x0f]
sh.or.t %d0, %d14, 0, %d1, 31

# CHECK-INST: sh.or.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0x27,0xee,0x20,0x00]
sh.or.t %d0, %d14, 0, %d14, 0

# CHECK-INST: sh.or.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0x27,0xee,0xa0,0x03]
sh.or.t %d0, %d14, 0, %d14, 7

# CHECK-INST: sh.or.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0x27,0xee,0x20,0x0c]
sh.or.t %d0, %d14, 0, %d14, 24

# CHECK-INST: sh.or.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0x27,0xee,0xa0,0x0f]
sh.or.t %d0, %d14, 0, %d14, 31

# CHECK-INST: sh.or.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x20,0x00]
sh.or.t %d0, %d14, 0, %d15, 0

# CHECK-INST: sh.or.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xa0,0x03]
sh.or.t %d0, %d14, 0, %d15, 7

# CHECK-INST: sh.or.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x20,0x0c]
sh.or.t %d0, %d14, 0, %d15, 24

# CHECK-INST: sh.or.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xa0,0x0f]
sh.or.t %d0, %d14, 0, %d15, 31

# CHECK-INST: sh.or.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x27,0x00]
sh.or.t %d0, %d14, 7, %d0, 0

# CHECK-INST: sh.or.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xa7,0x03]
sh.or.t %d0, %d14, 7, %d0, 7

# CHECK-INST: sh.or.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x27,0x0c]
sh.or.t %d0, %d14, 7, %d0, 24

# CHECK-INST: sh.or.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xa7,0x0f]
sh.or.t %d0, %d14, 7, %d0, 31

# CHECK-INST: sh.or.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x27,0x00]
sh.or.t %d0, %d14, 7, %d1, 0

# CHECK-INST: sh.or.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xa7,0x03]
sh.or.t %d0, %d14, 7, %d1, 7

# CHECK-INST: sh.or.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x27,0x0c]
sh.or.t %d0, %d14, 7, %d1, 24

# CHECK-INST: sh.or.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xa7,0x0f]
sh.or.t %d0, %d14, 7, %d1, 31

# CHECK-INST: sh.or.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0x27,0xee,0x27,0x00]
sh.or.t %d0, %d14, 7, %d14, 0

# CHECK-INST: sh.or.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0x27,0xee,0xa7,0x03]
sh.or.t %d0, %d14, 7, %d14, 7

# CHECK-INST: sh.or.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0x27,0xee,0x27,0x0c]
sh.or.t %d0, %d14, 7, %d14, 24

# CHECK-INST: sh.or.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0x27,0xee,0xa7,0x0f]
sh.or.t %d0, %d14, 7, %d14, 31

# CHECK-INST: sh.or.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x27,0x00]
sh.or.t %d0, %d14, 7, %d15, 0

# CHECK-INST: sh.or.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xa7,0x03]
sh.or.t %d0, %d14, 7, %d15, 7

# CHECK-INST: sh.or.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x27,0x0c]
sh.or.t %d0, %d14, 7, %d15, 24

# CHECK-INST: sh.or.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xa7,0x0f]
sh.or.t %d0, %d14, 7, %d15, 31

# CHECK-INST: sh.or.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x38,0x00]
sh.or.t %d0, %d14, 24, %d0, 0

# CHECK-INST: sh.or.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xb8,0x03]
sh.or.t %d0, %d14, 24, %d0, 7

# CHECK-INST: sh.or.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x38,0x0c]
sh.or.t %d0, %d14, 24, %d0, 24

# CHECK-INST: sh.or.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xb8,0x0f]
sh.or.t %d0, %d14, 24, %d0, 31

# CHECK-INST: sh.or.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x38,0x00]
sh.or.t %d0, %d14, 24, %d1, 0

# CHECK-INST: sh.or.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xb8,0x03]
sh.or.t %d0, %d14, 24, %d1, 7

# CHECK-INST: sh.or.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x38,0x0c]
sh.or.t %d0, %d14, 24, %d1, 24

# CHECK-INST: sh.or.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xb8,0x0f]
sh.or.t %d0, %d14, 24, %d1, 31

# CHECK-INST: sh.or.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0x27,0xee,0x38,0x00]
sh.or.t %d0, %d14, 24, %d14, 0

# CHECK-INST: sh.or.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0x27,0xee,0xb8,0x03]
sh.or.t %d0, %d14, 24, %d14, 7

# CHECK-INST: sh.or.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0x27,0xee,0x38,0x0c]
sh.or.t %d0, %d14, 24, %d14, 24

# CHECK-INST: sh.or.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0x27,0xee,0xb8,0x0f]
sh.or.t %d0, %d14, 24, %d14, 31

# CHECK-INST: sh.or.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x38,0x00]
sh.or.t %d0, %d14, 24, %d15, 0

# CHECK-INST: sh.or.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xb8,0x03]
sh.or.t %d0, %d14, 24, %d15, 7

# CHECK-INST: sh.or.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x38,0x0c]
sh.or.t %d0, %d14, 24, %d15, 24

# CHECK-INST: sh.or.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xb8,0x0f]
sh.or.t %d0, %d14, 24, %d15, 31

# CHECK-INST: sh.or.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x3f,0x00]
sh.or.t %d0, %d14, 31, %d0, 0

# CHECK-INST: sh.or.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xbf,0x03]
sh.or.t %d0, %d14, 31, %d0, 7

# CHECK-INST: sh.or.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x3f,0x0c]
sh.or.t %d0, %d14, 31, %d0, 24

# CHECK-INST: sh.or.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xbf,0x0f]
sh.or.t %d0, %d14, 31, %d0, 31

# CHECK-INST: sh.or.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x3f,0x00]
sh.or.t %d0, %d14, 31, %d1, 0

# CHECK-INST: sh.or.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xbf,0x03]
sh.or.t %d0, %d14, 31, %d1, 7

# CHECK-INST: sh.or.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x3f,0x0c]
sh.or.t %d0, %d14, 31, %d1, 24

# CHECK-INST: sh.or.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xbf,0x0f]
sh.or.t %d0, %d14, 31, %d1, 31

# CHECK-INST: sh.or.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0x27,0xee,0x3f,0x00]
sh.or.t %d0, %d14, 31, %d14, 0

# CHECK-INST: sh.or.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0x27,0xee,0xbf,0x03]
sh.or.t %d0, %d14, 31, %d14, 7

# CHECK-INST: sh.or.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0x27,0xee,0x3f,0x0c]
sh.or.t %d0, %d14, 31, %d14, 24

# CHECK-INST: sh.or.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0x27,0xee,0xbf,0x0f]
sh.or.t %d0, %d14, 31, %d14, 31

# CHECK-INST: sh.or.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x3f,0x00]
sh.or.t %d0, %d14, 31, %d15, 0

# CHECK-INST: sh.or.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xbf,0x03]
sh.or.t %d0, %d14, 31, %d15, 7

# CHECK-INST: sh.or.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x3f,0x0c]
sh.or.t %d0, %d14, 31, %d15, 24

# CHECK-INST: sh.or.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xbf,0x0f]
sh.or.t %d0, %d14, 31, %d15, 31

# CHECK-INST: sh.or.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x20,0x00]
sh.or.t %d0, %d15, 0, %d0, 0

# CHECK-INST: sh.or.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xa0,0x03]
sh.or.t %d0, %d15, 0, %d0, 7

# CHECK-INST: sh.or.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x20,0x0c]
sh.or.t %d0, %d15, 0, %d0, 24

# CHECK-INST: sh.or.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xa0,0x0f]
sh.or.t %d0, %d15, 0, %d0, 31

# CHECK-INST: sh.or.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x20,0x00]
sh.or.t %d0, %d15, 0, %d1, 0

# CHECK-INST: sh.or.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xa0,0x03]
sh.or.t %d0, %d15, 0, %d1, 7

# CHECK-INST: sh.or.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x20,0x0c]
sh.or.t %d0, %d15, 0, %d1, 24

# CHECK-INST: sh.or.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xa0,0x0f]
sh.or.t %d0, %d15, 0, %d1, 31

# CHECK-INST: sh.or.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0x27,0xef,0x20,0x00]
sh.or.t %d0, %d15, 0, %d14, 0

# CHECK-INST: sh.or.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0x27,0xef,0xa0,0x03]
sh.or.t %d0, %d15, 0, %d14, 7

# CHECK-INST: sh.or.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0x27,0xef,0x20,0x0c]
sh.or.t %d0, %d15, 0, %d14, 24

# CHECK-INST: sh.or.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0x27,0xef,0xa0,0x0f]
sh.or.t %d0, %d15, 0, %d14, 31

# CHECK-INST: sh.or.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0x27,0xff,0x20,0x00]
sh.or.t %d0, %d15, 0, %d15, 0

# CHECK-INST: sh.or.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0x27,0xff,0xa0,0x03]
sh.or.t %d0, %d15, 0, %d15, 7

# CHECK-INST: sh.or.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0x27,0xff,0x20,0x0c]
sh.or.t %d0, %d15, 0, %d15, 24

# CHECK-INST: sh.or.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0x27,0xff,0xa0,0x0f]
sh.or.t %d0, %d15, 0, %d15, 31

# CHECK-INST: sh.or.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x27,0x00]
sh.or.t %d0, %d15, 7, %d0, 0

# CHECK-INST: sh.or.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xa7,0x03]
sh.or.t %d0, %d15, 7, %d0, 7

# CHECK-INST: sh.or.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x27,0x0c]
sh.or.t %d0, %d15, 7, %d0, 24

# CHECK-INST: sh.or.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xa7,0x0f]
sh.or.t %d0, %d15, 7, %d0, 31

# CHECK-INST: sh.or.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x27,0x00]
sh.or.t %d0, %d15, 7, %d1, 0

# CHECK-INST: sh.or.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xa7,0x03]
sh.or.t %d0, %d15, 7, %d1, 7

# CHECK-INST: sh.or.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x27,0x0c]
sh.or.t %d0, %d15, 7, %d1, 24

# CHECK-INST: sh.or.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xa7,0x0f]
sh.or.t %d0, %d15, 7, %d1, 31

# CHECK-INST: sh.or.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0x27,0xef,0x27,0x00]
sh.or.t %d0, %d15, 7, %d14, 0

# CHECK-INST: sh.or.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0x27,0xef,0xa7,0x03]
sh.or.t %d0, %d15, 7, %d14, 7

# CHECK-INST: sh.or.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0x27,0xef,0x27,0x0c]
sh.or.t %d0, %d15, 7, %d14, 24

# CHECK-INST: sh.or.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0x27,0xef,0xa7,0x0f]
sh.or.t %d0, %d15, 7, %d14, 31

# CHECK-INST: sh.or.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0x27,0xff,0x27,0x00]
sh.or.t %d0, %d15, 7, %d15, 0

# CHECK-INST: sh.or.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0x27,0xff,0xa7,0x03]
sh.or.t %d0, %d15, 7, %d15, 7

# CHECK-INST: sh.or.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0x27,0xff,0x27,0x0c]
sh.or.t %d0, %d15, 7, %d15, 24

# CHECK-INST: sh.or.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0x27,0xff,0xa7,0x0f]
sh.or.t %d0, %d15, 7, %d15, 31

# CHECK-INST: sh.or.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x38,0x00]
sh.or.t %d0, %d15, 24, %d0, 0

# CHECK-INST: sh.or.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xb8,0x03]
sh.or.t %d0, %d15, 24, %d0, 7

# CHECK-INST: sh.or.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x38,0x0c]
sh.or.t %d0, %d15, 24, %d0, 24

# CHECK-INST: sh.or.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xb8,0x0f]
sh.or.t %d0, %d15, 24, %d0, 31

# CHECK-INST: sh.or.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x38,0x00]
sh.or.t %d0, %d15, 24, %d1, 0

# CHECK-INST: sh.or.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xb8,0x03]
sh.or.t %d0, %d15, 24, %d1, 7

# CHECK-INST: sh.or.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x38,0x0c]
sh.or.t %d0, %d15, 24, %d1, 24

# CHECK-INST: sh.or.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xb8,0x0f]
sh.or.t %d0, %d15, 24, %d1, 31

# CHECK-INST: sh.or.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0x27,0xef,0x38,0x00]
sh.or.t %d0, %d15, 24, %d14, 0

# CHECK-INST: sh.or.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0x27,0xef,0xb8,0x03]
sh.or.t %d0, %d15, 24, %d14, 7

# CHECK-INST: sh.or.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0x27,0xef,0x38,0x0c]
sh.or.t %d0, %d15, 24, %d14, 24

# CHECK-INST: sh.or.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0x27,0xef,0xb8,0x0f]
sh.or.t %d0, %d15, 24, %d14, 31

# CHECK-INST: sh.or.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0x27,0xff,0x38,0x00]
sh.or.t %d0, %d15, 24, %d15, 0

# CHECK-INST: sh.or.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0x27,0xff,0xb8,0x03]
sh.or.t %d0, %d15, 24, %d15, 7

# CHECK-INST: sh.or.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0x27,0xff,0x38,0x0c]
sh.or.t %d0, %d15, 24, %d15, 24

# CHECK-INST: sh.or.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0x27,0xff,0xb8,0x0f]
sh.or.t %d0, %d15, 24, %d15, 31

# CHECK-INST: sh.or.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x3f,0x00]
sh.or.t %d0, %d15, 31, %d0, 0

# CHECK-INST: sh.or.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xbf,0x03]
sh.or.t %d0, %d15, 31, %d0, 7

# CHECK-INST: sh.or.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x3f,0x0c]
sh.or.t %d0, %d15, 31, %d0, 24

# CHECK-INST: sh.or.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xbf,0x0f]
sh.or.t %d0, %d15, 31, %d0, 31

# CHECK-INST: sh.or.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x3f,0x00]
sh.or.t %d0, %d15, 31, %d1, 0

# CHECK-INST: sh.or.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xbf,0x03]
sh.or.t %d0, %d15, 31, %d1, 7

# CHECK-INST: sh.or.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x3f,0x0c]
sh.or.t %d0, %d15, 31, %d1, 24

# CHECK-INST: sh.or.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xbf,0x0f]
sh.or.t %d0, %d15, 31, %d1, 31

# CHECK-INST: sh.or.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0x27,0xef,0x3f,0x00]
sh.or.t %d0, %d15, 31, %d14, 0

# CHECK-INST: sh.or.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0x27,0xef,0xbf,0x03]
sh.or.t %d0, %d15, 31, %d14, 7

# CHECK-INST: sh.or.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0x27,0xef,0x3f,0x0c]
sh.or.t %d0, %d15, 31, %d14, 24

# CHECK-INST: sh.or.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0x27,0xef,0xbf,0x0f]
sh.or.t %d0, %d15, 31, %d14, 31

# CHECK-INST: sh.or.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0x27,0xff,0x3f,0x00]
sh.or.t %d0, %d15, 31, %d15, 0

# CHECK-INST: sh.or.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0x27,0xff,0xbf,0x03]
sh.or.t %d0, %d15, 31, %d15, 7

# CHECK-INST: sh.or.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0x27,0xff,0x3f,0x0c]
sh.or.t %d0, %d15, 31, %d15, 24

# CHECK-INST: sh.or.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0x27,0xff,0xbf,0x0f]
sh.or.t %d0, %d15, 31, %d15, 31

# CHECK-INST: sh.or.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x20,0x10]
sh.or.t %d1, %d0, 0, %d0, 0

# CHECK-INST: sh.or.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0x27,0x00,0xa0,0x13]
sh.or.t %d1, %d0, 0, %d0, 7

# CHECK-INST: sh.or.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0x27,0x00,0x20,0x1c]
sh.or.t %d1, %d0, 0, %d0, 24

# CHECK-INST: sh.or.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0x27,0x00,0xa0,0x1f]
sh.or.t %d1, %d0, 0, %d0, 31

# CHECK-INST: sh.or.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0x27,0x10,0x20,0x10]
sh.or.t %d1, %d0, 0, %d1, 0

# CHECK-INST: sh.or.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0x27,0x10,0xa0,0x13]
sh.or.t %d1, %d0, 0, %d1, 7

# CHECK-INST: sh.or.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0x27,0x10,0x20,0x1c]
sh.or.t %d1, %d0, 0, %d1, 24

# CHECK-INST: sh.or.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0x27,0x10,0xa0,0x1f]
sh.or.t %d1, %d0, 0, %d1, 31

# CHECK-INST: sh.or.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x20,0x10]
sh.or.t %d1, %d0, 0, %d14, 0

# CHECK-INST: sh.or.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xa0,0x13]
sh.or.t %d1, %d0, 0, %d14, 7

# CHECK-INST: sh.or.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x20,0x1c]
sh.or.t %d1, %d0, 0, %d14, 24

# CHECK-INST: sh.or.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xa0,0x1f]
sh.or.t %d1, %d0, 0, %d14, 31

# CHECK-INST: sh.or.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x20,0x10]
sh.or.t %d1, %d0, 0, %d15, 0

# CHECK-INST: sh.or.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xa0,0x13]
sh.or.t %d1, %d0, 0, %d15, 7

# CHECK-INST: sh.or.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x20,0x1c]
sh.or.t %d1, %d0, 0, %d15, 24

# CHECK-INST: sh.or.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xa0,0x1f]
sh.or.t %d1, %d0, 0, %d15, 31

# CHECK-INST: sh.or.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0x27,0x00,0x27,0x10]
sh.or.t %d1, %d0, 7, %d0, 0

# CHECK-INST: sh.or.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0x27,0x00,0xa7,0x13]
sh.or.t %d1, %d0, 7, %d0, 7

# CHECK-INST: sh.or.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0x27,0x00,0x27,0x1c]
sh.or.t %d1, %d0, 7, %d0, 24

# CHECK-INST: sh.or.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0x27,0x00,0xa7,0x1f]
sh.or.t %d1, %d0, 7, %d0, 31

# CHECK-INST: sh.or.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0x27,0x10,0x27,0x10]
sh.or.t %d1, %d0, 7, %d1, 0

# CHECK-INST: sh.or.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0x27,0x10,0xa7,0x13]
sh.or.t %d1, %d0, 7, %d1, 7

# CHECK-INST: sh.or.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0x27,0x10,0x27,0x1c]
sh.or.t %d1, %d0, 7, %d1, 24

# CHECK-INST: sh.or.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0x27,0x10,0xa7,0x1f]
sh.or.t %d1, %d0, 7, %d1, 31

# CHECK-INST: sh.or.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x27,0x10]
sh.or.t %d1, %d0, 7, %d14, 0

# CHECK-INST: sh.or.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xa7,0x13]
sh.or.t %d1, %d0, 7, %d14, 7

# CHECK-INST: sh.or.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x27,0x1c]
sh.or.t %d1, %d0, 7, %d14, 24

# CHECK-INST: sh.or.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xa7,0x1f]
sh.or.t %d1, %d0, 7, %d14, 31

# CHECK-INST: sh.or.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x27,0x10]
sh.or.t %d1, %d0, 7, %d15, 0

# CHECK-INST: sh.or.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xa7,0x13]
sh.or.t %d1, %d0, 7, %d15, 7

# CHECK-INST: sh.or.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x27,0x1c]
sh.or.t %d1, %d0, 7, %d15, 24

# CHECK-INST: sh.or.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xa7,0x1f]
sh.or.t %d1, %d0, 7, %d15, 31

# CHECK-INST: sh.or.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0x27,0x00,0x38,0x10]
sh.or.t %d1, %d0, 24, %d0, 0

# CHECK-INST: sh.or.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0x27,0x00,0xb8,0x13]
sh.or.t %d1, %d0, 24, %d0, 7

# CHECK-INST: sh.or.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0x27,0x00,0x38,0x1c]
sh.or.t %d1, %d0, 24, %d0, 24

# CHECK-INST: sh.or.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0x27,0x00,0xb8,0x1f]
sh.or.t %d1, %d0, 24, %d0, 31

# CHECK-INST: sh.or.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0x27,0x10,0x38,0x10]
sh.or.t %d1, %d0, 24, %d1, 0

# CHECK-INST: sh.or.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0x27,0x10,0xb8,0x13]
sh.or.t %d1, %d0, 24, %d1, 7

# CHECK-INST: sh.or.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0x27,0x10,0x38,0x1c]
sh.or.t %d1, %d0, 24, %d1, 24

# CHECK-INST: sh.or.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0x27,0x10,0xb8,0x1f]
sh.or.t %d1, %d0, 24, %d1, 31

# CHECK-INST: sh.or.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x38,0x10]
sh.or.t %d1, %d0, 24, %d14, 0

# CHECK-INST: sh.or.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xb8,0x13]
sh.or.t %d1, %d0, 24, %d14, 7

# CHECK-INST: sh.or.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x38,0x1c]
sh.or.t %d1, %d0, 24, %d14, 24

# CHECK-INST: sh.or.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xb8,0x1f]
sh.or.t %d1, %d0, 24, %d14, 31

# CHECK-INST: sh.or.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x38,0x10]
sh.or.t %d1, %d0, 24, %d15, 0

# CHECK-INST: sh.or.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xb8,0x13]
sh.or.t %d1, %d0, 24, %d15, 7

# CHECK-INST: sh.or.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x38,0x1c]
sh.or.t %d1, %d0, 24, %d15, 24

# CHECK-INST: sh.or.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xb8,0x1f]
sh.or.t %d1, %d0, 24, %d15, 31

# CHECK-INST: sh.or.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0x27,0x00,0x3f,0x10]
sh.or.t %d1, %d0, 31, %d0, 0

# CHECK-INST: sh.or.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0x27,0x00,0xbf,0x13]
sh.or.t %d1, %d0, 31, %d0, 7

# CHECK-INST: sh.or.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0x27,0x00,0x3f,0x1c]
sh.or.t %d1, %d0, 31, %d0, 24

# CHECK-INST: sh.or.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0x27,0x00,0xbf,0x1f]
sh.or.t %d1, %d0, 31, %d0, 31

# CHECK-INST: sh.or.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0x27,0x10,0x3f,0x10]
sh.or.t %d1, %d0, 31, %d1, 0

# CHECK-INST: sh.or.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0x27,0x10,0xbf,0x13]
sh.or.t %d1, %d0, 31, %d1, 7

# CHECK-INST: sh.or.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0x27,0x10,0x3f,0x1c]
sh.or.t %d1, %d0, 31, %d1, 24

# CHECK-INST: sh.or.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0x27,0x10,0xbf,0x1f]
sh.or.t %d1, %d0, 31, %d1, 31

# CHECK-INST: sh.or.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x3f,0x10]
sh.or.t %d1, %d0, 31, %d14, 0

# CHECK-INST: sh.or.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xbf,0x13]
sh.or.t %d1, %d0, 31, %d14, 7

# CHECK-INST: sh.or.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x3f,0x1c]
sh.or.t %d1, %d0, 31, %d14, 24

# CHECK-INST: sh.or.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xbf,0x1f]
sh.or.t %d1, %d0, 31, %d14, 31

# CHECK-INST: sh.or.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x3f,0x10]
sh.or.t %d1, %d0, 31, %d15, 0

# CHECK-INST: sh.or.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xbf,0x13]
sh.or.t %d1, %d0, 31, %d15, 7

# CHECK-INST: sh.or.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x3f,0x1c]
sh.or.t %d1, %d0, 31, %d15, 24

# CHECK-INST: sh.or.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xbf,0x1f]
sh.or.t %d1, %d0, 31, %d15, 31

# CHECK-INST: sh.or.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0x27,0x01,0x20,0x10]
sh.or.t %d1, %d1, 0, %d0, 0

# CHECK-INST: sh.or.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0x27,0x01,0xa0,0x13]
sh.or.t %d1, %d1, 0, %d0, 7

# CHECK-INST: sh.or.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0x27,0x01,0x20,0x1c]
sh.or.t %d1, %d1, 0, %d0, 24

# CHECK-INST: sh.or.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0x27,0x01,0xa0,0x1f]
sh.or.t %d1, %d1, 0, %d0, 31

# CHECK-INST: sh.or.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0x27,0x11,0x20,0x10]
sh.or.t %d1, %d1, 0, %d1, 0

# CHECK-INST: sh.or.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0x27,0x11,0xa0,0x13]
sh.or.t %d1, %d1, 0, %d1, 7

# CHECK-INST: sh.or.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0x27,0x11,0x20,0x1c]
sh.or.t %d1, %d1, 0, %d1, 24

# CHECK-INST: sh.or.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0x27,0x11,0xa0,0x1f]
sh.or.t %d1, %d1, 0, %d1, 31

# CHECK-INST: sh.or.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x20,0x10]
sh.or.t %d1, %d1, 0, %d14, 0

# CHECK-INST: sh.or.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xa0,0x13]
sh.or.t %d1, %d1, 0, %d14, 7

# CHECK-INST: sh.or.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x20,0x1c]
sh.or.t %d1, %d1, 0, %d14, 24

# CHECK-INST: sh.or.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xa0,0x1f]
sh.or.t %d1, %d1, 0, %d14, 31

# CHECK-INST: sh.or.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x20,0x10]
sh.or.t %d1, %d1, 0, %d15, 0

# CHECK-INST: sh.or.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xa0,0x13]
sh.or.t %d1, %d1, 0, %d15, 7

# CHECK-INST: sh.or.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x20,0x1c]
sh.or.t %d1, %d1, 0, %d15, 24

# CHECK-INST: sh.or.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xa0,0x1f]
sh.or.t %d1, %d1, 0, %d15, 31

# CHECK-INST: sh.or.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0x27,0x01,0x27,0x10]
sh.or.t %d1, %d1, 7, %d0, 0

# CHECK-INST: sh.or.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0x27,0x01,0xa7,0x13]
sh.or.t %d1, %d1, 7, %d0, 7

# CHECK-INST: sh.or.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0x27,0x01,0x27,0x1c]
sh.or.t %d1, %d1, 7, %d0, 24

# CHECK-INST: sh.or.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0x27,0x01,0xa7,0x1f]
sh.or.t %d1, %d1, 7, %d0, 31

# CHECK-INST: sh.or.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0x27,0x11,0x27,0x10]
sh.or.t %d1, %d1, 7, %d1, 0

# CHECK-INST: sh.or.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0x27,0x11,0xa7,0x13]
sh.or.t %d1, %d1, 7, %d1, 7

# CHECK-INST: sh.or.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0x27,0x11,0x27,0x1c]
sh.or.t %d1, %d1, 7, %d1, 24

# CHECK-INST: sh.or.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0x27,0x11,0xa7,0x1f]
sh.or.t %d1, %d1, 7, %d1, 31

# CHECK-INST: sh.or.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x27,0x10]
sh.or.t %d1, %d1, 7, %d14, 0

# CHECK-INST: sh.or.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xa7,0x13]
sh.or.t %d1, %d1, 7, %d14, 7

# CHECK-INST: sh.or.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x27,0x1c]
sh.or.t %d1, %d1, 7, %d14, 24

# CHECK-INST: sh.or.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xa7,0x1f]
sh.or.t %d1, %d1, 7, %d14, 31

# CHECK-INST: sh.or.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x27,0x10]
sh.or.t %d1, %d1, 7, %d15, 0

# CHECK-INST: sh.or.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xa7,0x13]
sh.or.t %d1, %d1, 7, %d15, 7

# CHECK-INST: sh.or.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x27,0x1c]
sh.or.t %d1, %d1, 7, %d15, 24

# CHECK-INST: sh.or.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xa7,0x1f]
sh.or.t %d1, %d1, 7, %d15, 31

# CHECK-INST: sh.or.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0x27,0x01,0x38,0x10]
sh.or.t %d1, %d1, 24, %d0, 0

# CHECK-INST: sh.or.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0x27,0x01,0xb8,0x13]
sh.or.t %d1, %d1, 24, %d0, 7

# CHECK-INST: sh.or.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0x27,0x01,0x38,0x1c]
sh.or.t %d1, %d1, 24, %d0, 24

# CHECK-INST: sh.or.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0x27,0x01,0xb8,0x1f]
sh.or.t %d1, %d1, 24, %d0, 31

# CHECK-INST: sh.or.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0x27,0x11,0x38,0x10]
sh.or.t %d1, %d1, 24, %d1, 0

# CHECK-INST: sh.or.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0x27,0x11,0xb8,0x13]
sh.or.t %d1, %d1, 24, %d1, 7

# CHECK-INST: sh.or.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0x27,0x11,0x38,0x1c]
sh.or.t %d1, %d1, 24, %d1, 24

# CHECK-INST: sh.or.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0x27,0x11,0xb8,0x1f]
sh.or.t %d1, %d1, 24, %d1, 31

# CHECK-INST: sh.or.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x38,0x10]
sh.or.t %d1, %d1, 24, %d14, 0

# CHECK-INST: sh.or.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xb8,0x13]
sh.or.t %d1, %d1, 24, %d14, 7

# CHECK-INST: sh.or.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x38,0x1c]
sh.or.t %d1, %d1, 24, %d14, 24

# CHECK-INST: sh.or.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xb8,0x1f]
sh.or.t %d1, %d1, 24, %d14, 31

# CHECK-INST: sh.or.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x38,0x10]
sh.or.t %d1, %d1, 24, %d15, 0

# CHECK-INST: sh.or.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xb8,0x13]
sh.or.t %d1, %d1, 24, %d15, 7

# CHECK-INST: sh.or.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x38,0x1c]
sh.or.t %d1, %d1, 24, %d15, 24

# CHECK-INST: sh.or.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xb8,0x1f]
sh.or.t %d1, %d1, 24, %d15, 31

# CHECK-INST: sh.or.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0x27,0x01,0x3f,0x10]
sh.or.t %d1, %d1, 31, %d0, 0

# CHECK-INST: sh.or.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0x27,0x01,0xbf,0x13]
sh.or.t %d1, %d1, 31, %d0, 7

# CHECK-INST: sh.or.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0x27,0x01,0x3f,0x1c]
sh.or.t %d1, %d1, 31, %d0, 24

# CHECK-INST: sh.or.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0x27,0x01,0xbf,0x1f]
sh.or.t %d1, %d1, 31, %d0, 31

# CHECK-INST: sh.or.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0x27,0x11,0x3f,0x10]
sh.or.t %d1, %d1, 31, %d1, 0

# CHECK-INST: sh.or.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0x27,0x11,0xbf,0x13]
sh.or.t %d1, %d1, 31, %d1, 7

# CHECK-INST: sh.or.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0x27,0x11,0x3f,0x1c]
sh.or.t %d1, %d1, 31, %d1, 24

# CHECK-INST: sh.or.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0x27,0x11,0xbf,0x1f]
sh.or.t %d1, %d1, 31, %d1, 31

# CHECK-INST: sh.or.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x3f,0x10]
sh.or.t %d1, %d1, 31, %d14, 0

# CHECK-INST: sh.or.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xbf,0x13]
sh.or.t %d1, %d1, 31, %d14, 7

# CHECK-INST: sh.or.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x3f,0x1c]
sh.or.t %d1, %d1, 31, %d14, 24

# CHECK-INST: sh.or.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xbf,0x1f]
sh.or.t %d1, %d1, 31, %d14, 31

# CHECK-INST: sh.or.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x3f,0x10]
sh.or.t %d1, %d1, 31, %d15, 0

# CHECK-INST: sh.or.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xbf,0x13]
sh.or.t %d1, %d1, 31, %d15, 7

# CHECK-INST: sh.or.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x3f,0x1c]
sh.or.t %d1, %d1, 31, %d15, 24

# CHECK-INST: sh.or.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xbf,0x1f]
sh.or.t %d1, %d1, 31, %d15, 31

# CHECK-INST: sh.or.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x20,0x10]
sh.or.t %d1, %d14, 0, %d0, 0

# CHECK-INST: sh.or.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xa0,0x13]
sh.or.t %d1, %d14, 0, %d0, 7

# CHECK-INST: sh.or.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x20,0x1c]
sh.or.t %d1, %d14, 0, %d0, 24

# CHECK-INST: sh.or.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xa0,0x1f]
sh.or.t %d1, %d14, 0, %d0, 31

# CHECK-INST: sh.or.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x20,0x10]
sh.or.t %d1, %d14, 0, %d1, 0

# CHECK-INST: sh.or.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xa0,0x13]
sh.or.t %d1, %d14, 0, %d1, 7

# CHECK-INST: sh.or.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x20,0x1c]
sh.or.t %d1, %d14, 0, %d1, 24

# CHECK-INST: sh.or.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xa0,0x1f]
sh.or.t %d1, %d14, 0, %d1, 31

# CHECK-INST: sh.or.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0x27,0xee,0x20,0x10]
sh.or.t %d1, %d14, 0, %d14, 0

# CHECK-INST: sh.or.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0x27,0xee,0xa0,0x13]
sh.or.t %d1, %d14, 0, %d14, 7

# CHECK-INST: sh.or.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0x27,0xee,0x20,0x1c]
sh.or.t %d1, %d14, 0, %d14, 24

# CHECK-INST: sh.or.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0x27,0xee,0xa0,0x1f]
sh.or.t %d1, %d14, 0, %d14, 31

# CHECK-INST: sh.or.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x20,0x10]
sh.or.t %d1, %d14, 0, %d15, 0

# CHECK-INST: sh.or.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xa0,0x13]
sh.or.t %d1, %d14, 0, %d15, 7

# CHECK-INST: sh.or.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x20,0x1c]
sh.or.t %d1, %d14, 0, %d15, 24

# CHECK-INST: sh.or.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xa0,0x1f]
sh.or.t %d1, %d14, 0, %d15, 31

# CHECK-INST: sh.or.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x27,0x10]
sh.or.t %d1, %d14, 7, %d0, 0

# CHECK-INST: sh.or.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xa7,0x13]
sh.or.t %d1, %d14, 7, %d0, 7

# CHECK-INST: sh.or.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x27,0x1c]
sh.or.t %d1, %d14, 7, %d0, 24

# CHECK-INST: sh.or.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xa7,0x1f]
sh.or.t %d1, %d14, 7, %d0, 31

# CHECK-INST: sh.or.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x27,0x10]
sh.or.t %d1, %d14, 7, %d1, 0

# CHECK-INST: sh.or.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xa7,0x13]
sh.or.t %d1, %d14, 7, %d1, 7

# CHECK-INST: sh.or.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x27,0x1c]
sh.or.t %d1, %d14, 7, %d1, 24

# CHECK-INST: sh.or.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xa7,0x1f]
sh.or.t %d1, %d14, 7, %d1, 31

# CHECK-INST: sh.or.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0x27,0xee,0x27,0x10]
sh.or.t %d1, %d14, 7, %d14, 0

# CHECK-INST: sh.or.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0x27,0xee,0xa7,0x13]
sh.or.t %d1, %d14, 7, %d14, 7

# CHECK-INST: sh.or.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0x27,0xee,0x27,0x1c]
sh.or.t %d1, %d14, 7, %d14, 24

# CHECK-INST: sh.or.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0x27,0xee,0xa7,0x1f]
sh.or.t %d1, %d14, 7, %d14, 31

# CHECK-INST: sh.or.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x27,0x10]
sh.or.t %d1, %d14, 7, %d15, 0

# CHECK-INST: sh.or.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xa7,0x13]
sh.or.t %d1, %d14, 7, %d15, 7

# CHECK-INST: sh.or.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x27,0x1c]
sh.or.t %d1, %d14, 7, %d15, 24

# CHECK-INST: sh.or.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xa7,0x1f]
sh.or.t %d1, %d14, 7, %d15, 31

# CHECK-INST: sh.or.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x38,0x10]
sh.or.t %d1, %d14, 24, %d0, 0

# CHECK-INST: sh.or.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xb8,0x13]
sh.or.t %d1, %d14, 24, %d0, 7

# CHECK-INST: sh.or.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x38,0x1c]
sh.or.t %d1, %d14, 24, %d0, 24

# CHECK-INST: sh.or.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xb8,0x1f]
sh.or.t %d1, %d14, 24, %d0, 31

# CHECK-INST: sh.or.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x38,0x10]
sh.or.t %d1, %d14, 24, %d1, 0

# CHECK-INST: sh.or.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xb8,0x13]
sh.or.t %d1, %d14, 24, %d1, 7

# CHECK-INST: sh.or.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x38,0x1c]
sh.or.t %d1, %d14, 24, %d1, 24

# CHECK-INST: sh.or.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xb8,0x1f]
sh.or.t %d1, %d14, 24, %d1, 31

# CHECK-INST: sh.or.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0x27,0xee,0x38,0x10]
sh.or.t %d1, %d14, 24, %d14, 0

# CHECK-INST: sh.or.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0x27,0xee,0xb8,0x13]
sh.or.t %d1, %d14, 24, %d14, 7

# CHECK-INST: sh.or.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0x27,0xee,0x38,0x1c]
sh.or.t %d1, %d14, 24, %d14, 24

# CHECK-INST: sh.or.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0x27,0xee,0xb8,0x1f]
sh.or.t %d1, %d14, 24, %d14, 31

# CHECK-INST: sh.or.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x38,0x10]
sh.or.t %d1, %d14, 24, %d15, 0

# CHECK-INST: sh.or.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xb8,0x13]
sh.or.t %d1, %d14, 24, %d15, 7

# CHECK-INST: sh.or.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x38,0x1c]
sh.or.t %d1, %d14, 24, %d15, 24

# CHECK-INST: sh.or.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xb8,0x1f]
sh.or.t %d1, %d14, 24, %d15, 31

# CHECK-INST: sh.or.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x3f,0x10]
sh.or.t %d1, %d14, 31, %d0, 0

# CHECK-INST: sh.or.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xbf,0x13]
sh.or.t %d1, %d14, 31, %d0, 7

# CHECK-INST: sh.or.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x3f,0x1c]
sh.or.t %d1, %d14, 31, %d0, 24

# CHECK-INST: sh.or.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xbf,0x1f]
sh.or.t %d1, %d14, 31, %d0, 31

# CHECK-INST: sh.or.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x3f,0x10]
sh.or.t %d1, %d14, 31, %d1, 0

# CHECK-INST: sh.or.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xbf,0x13]
sh.or.t %d1, %d14, 31, %d1, 7

# CHECK-INST: sh.or.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x3f,0x1c]
sh.or.t %d1, %d14, 31, %d1, 24

# CHECK-INST: sh.or.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xbf,0x1f]
sh.or.t %d1, %d14, 31, %d1, 31

# CHECK-INST: sh.or.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0x27,0xee,0x3f,0x10]
sh.or.t %d1, %d14, 31, %d14, 0

# CHECK-INST: sh.or.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0x27,0xee,0xbf,0x13]
sh.or.t %d1, %d14, 31, %d14, 7

# CHECK-INST: sh.or.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0x27,0xee,0x3f,0x1c]
sh.or.t %d1, %d14, 31, %d14, 24

# CHECK-INST: sh.or.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0x27,0xee,0xbf,0x1f]
sh.or.t %d1, %d14, 31, %d14, 31

# CHECK-INST: sh.or.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x3f,0x10]
sh.or.t %d1, %d14, 31, %d15, 0

# CHECK-INST: sh.or.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xbf,0x13]
sh.or.t %d1, %d14, 31, %d15, 7

# CHECK-INST: sh.or.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x3f,0x1c]
sh.or.t %d1, %d14, 31, %d15, 24

# CHECK-INST: sh.or.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xbf,0x1f]
sh.or.t %d1, %d14, 31, %d15, 31

# CHECK-INST: sh.or.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x20,0x10]
sh.or.t %d1, %d15, 0, %d0, 0

# CHECK-INST: sh.or.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xa0,0x13]
sh.or.t %d1, %d15, 0, %d0, 7

# CHECK-INST: sh.or.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x20,0x1c]
sh.or.t %d1, %d15, 0, %d0, 24

# CHECK-INST: sh.or.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xa0,0x1f]
sh.or.t %d1, %d15, 0, %d0, 31

# CHECK-INST: sh.or.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x20,0x10]
sh.or.t %d1, %d15, 0, %d1, 0

# CHECK-INST: sh.or.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xa0,0x13]
sh.or.t %d1, %d15, 0, %d1, 7

# CHECK-INST: sh.or.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x20,0x1c]
sh.or.t %d1, %d15, 0, %d1, 24

# CHECK-INST: sh.or.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xa0,0x1f]
sh.or.t %d1, %d15, 0, %d1, 31

# CHECK-INST: sh.or.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0x27,0xef,0x20,0x10]
sh.or.t %d1, %d15, 0, %d14, 0

# CHECK-INST: sh.or.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0x27,0xef,0xa0,0x13]
sh.or.t %d1, %d15, 0, %d14, 7

# CHECK-INST: sh.or.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0x27,0xef,0x20,0x1c]
sh.or.t %d1, %d15, 0, %d14, 24

# CHECK-INST: sh.or.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0x27,0xef,0xa0,0x1f]
sh.or.t %d1, %d15, 0, %d14, 31

# CHECK-INST: sh.or.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0x27,0xff,0x20,0x10]
sh.or.t %d1, %d15, 0, %d15, 0

# CHECK-INST: sh.or.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0x27,0xff,0xa0,0x13]
sh.or.t %d1, %d15, 0, %d15, 7

# CHECK-INST: sh.or.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0x27,0xff,0x20,0x1c]
sh.or.t %d1, %d15, 0, %d15, 24

# CHECK-INST: sh.or.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0x27,0xff,0xa0,0x1f]
sh.or.t %d1, %d15, 0, %d15, 31

# CHECK-INST: sh.or.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x27,0x10]
sh.or.t %d1, %d15, 7, %d0, 0

# CHECK-INST: sh.or.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xa7,0x13]
sh.or.t %d1, %d15, 7, %d0, 7

# CHECK-INST: sh.or.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x27,0x1c]
sh.or.t %d1, %d15, 7, %d0, 24

# CHECK-INST: sh.or.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xa7,0x1f]
sh.or.t %d1, %d15, 7, %d0, 31

# CHECK-INST: sh.or.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x27,0x10]
sh.or.t %d1, %d15, 7, %d1, 0

# CHECK-INST: sh.or.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xa7,0x13]
sh.or.t %d1, %d15, 7, %d1, 7

# CHECK-INST: sh.or.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x27,0x1c]
sh.or.t %d1, %d15, 7, %d1, 24

# CHECK-INST: sh.or.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xa7,0x1f]
sh.or.t %d1, %d15, 7, %d1, 31

# CHECK-INST: sh.or.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0x27,0xef,0x27,0x10]
sh.or.t %d1, %d15, 7, %d14, 0

# CHECK-INST: sh.or.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0x27,0xef,0xa7,0x13]
sh.or.t %d1, %d15, 7, %d14, 7

# CHECK-INST: sh.or.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0x27,0xef,0x27,0x1c]
sh.or.t %d1, %d15, 7, %d14, 24

# CHECK-INST: sh.or.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0x27,0xef,0xa7,0x1f]
sh.or.t %d1, %d15, 7, %d14, 31

# CHECK-INST: sh.or.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0x27,0xff,0x27,0x10]
sh.or.t %d1, %d15, 7, %d15, 0

# CHECK-INST: sh.or.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0x27,0xff,0xa7,0x13]
sh.or.t %d1, %d15, 7, %d15, 7

# CHECK-INST: sh.or.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0x27,0xff,0x27,0x1c]
sh.or.t %d1, %d15, 7, %d15, 24

# CHECK-INST: sh.or.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0x27,0xff,0xa7,0x1f]
sh.or.t %d1, %d15, 7, %d15, 31

# CHECK-INST: sh.or.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x38,0x10]
sh.or.t %d1, %d15, 24, %d0, 0

# CHECK-INST: sh.or.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xb8,0x13]
sh.or.t %d1, %d15, 24, %d0, 7

# CHECK-INST: sh.or.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x38,0x1c]
sh.or.t %d1, %d15, 24, %d0, 24

# CHECK-INST: sh.or.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xb8,0x1f]
sh.or.t %d1, %d15, 24, %d0, 31

# CHECK-INST: sh.or.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x38,0x10]
sh.or.t %d1, %d15, 24, %d1, 0

# CHECK-INST: sh.or.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xb8,0x13]
sh.or.t %d1, %d15, 24, %d1, 7

# CHECK-INST: sh.or.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x38,0x1c]
sh.or.t %d1, %d15, 24, %d1, 24

# CHECK-INST: sh.or.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xb8,0x1f]
sh.or.t %d1, %d15, 24, %d1, 31

# CHECK-INST: sh.or.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0x27,0xef,0x38,0x10]
sh.or.t %d1, %d15, 24, %d14, 0

# CHECK-INST: sh.or.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0x27,0xef,0xb8,0x13]
sh.or.t %d1, %d15, 24, %d14, 7

# CHECK-INST: sh.or.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0x27,0xef,0x38,0x1c]
sh.or.t %d1, %d15, 24, %d14, 24

# CHECK-INST: sh.or.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0x27,0xef,0xb8,0x1f]
sh.or.t %d1, %d15, 24, %d14, 31

# CHECK-INST: sh.or.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0x27,0xff,0x38,0x10]
sh.or.t %d1, %d15, 24, %d15, 0

# CHECK-INST: sh.or.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0x27,0xff,0xb8,0x13]
sh.or.t %d1, %d15, 24, %d15, 7

# CHECK-INST: sh.or.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0x27,0xff,0x38,0x1c]
sh.or.t %d1, %d15, 24, %d15, 24

# CHECK-INST: sh.or.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0x27,0xff,0xb8,0x1f]
sh.or.t %d1, %d15, 24, %d15, 31

# CHECK-INST: sh.or.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x3f,0x10]
sh.or.t %d1, %d15, 31, %d0, 0

# CHECK-INST: sh.or.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xbf,0x13]
sh.or.t %d1, %d15, 31, %d0, 7

# CHECK-INST: sh.or.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x3f,0x1c]
sh.or.t %d1, %d15, 31, %d0, 24

# CHECK-INST: sh.or.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xbf,0x1f]
sh.or.t %d1, %d15, 31, %d0, 31

# CHECK-INST: sh.or.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x3f,0x10]
sh.or.t %d1, %d15, 31, %d1, 0

# CHECK-INST: sh.or.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xbf,0x13]
sh.or.t %d1, %d15, 31, %d1, 7

# CHECK-INST: sh.or.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x3f,0x1c]
sh.or.t %d1, %d15, 31, %d1, 24

# CHECK-INST: sh.or.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xbf,0x1f]
sh.or.t %d1, %d15, 31, %d1, 31

# CHECK-INST: sh.or.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0x27,0xef,0x3f,0x10]
sh.or.t %d1, %d15, 31, %d14, 0

# CHECK-INST: sh.or.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0x27,0xef,0xbf,0x13]
sh.or.t %d1, %d15, 31, %d14, 7

# CHECK-INST: sh.or.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0x27,0xef,0x3f,0x1c]
sh.or.t %d1, %d15, 31, %d14, 24

# CHECK-INST: sh.or.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0x27,0xef,0xbf,0x1f]
sh.or.t %d1, %d15, 31, %d14, 31

# CHECK-INST: sh.or.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0x27,0xff,0x3f,0x10]
sh.or.t %d1, %d15, 31, %d15, 0

# CHECK-INST: sh.or.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0x27,0xff,0xbf,0x13]
sh.or.t %d1, %d15, 31, %d15, 7

# CHECK-INST: sh.or.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0x27,0xff,0x3f,0x1c]
sh.or.t %d1, %d15, 31, %d15, 24

# CHECK-INST: sh.or.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0x27,0xff,0xbf,0x1f]
sh.or.t %d1, %d15, 31, %d15, 31

# CHECK-INST: sh.or.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x20,0xe0]
sh.or.t %d14, %d0, 0, %d0, 0

# CHECK-INST: sh.or.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0x27,0x00,0xa0,0xe3]
sh.or.t %d14, %d0, 0, %d0, 7

# CHECK-INST: sh.or.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0x27,0x00,0x20,0xec]
sh.or.t %d14, %d0, 0, %d0, 24

# CHECK-INST: sh.or.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0x27,0x00,0xa0,0xef]
sh.or.t %d14, %d0, 0, %d0, 31

# CHECK-INST: sh.or.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0x27,0x10,0x20,0xe0]
sh.or.t %d14, %d0, 0, %d1, 0

# CHECK-INST: sh.or.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0x27,0x10,0xa0,0xe3]
sh.or.t %d14, %d0, 0, %d1, 7

# CHECK-INST: sh.or.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0x27,0x10,0x20,0xec]
sh.or.t %d14, %d0, 0, %d1, 24

# CHECK-INST: sh.or.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0x27,0x10,0xa0,0xef]
sh.or.t %d14, %d0, 0, %d1, 31

# CHECK-INST: sh.or.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x20,0xe0]
sh.or.t %d14, %d0, 0, %d14, 0

# CHECK-INST: sh.or.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xa0,0xe3]
sh.or.t %d14, %d0, 0, %d14, 7

# CHECK-INST: sh.or.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x20,0xec]
sh.or.t %d14, %d0, 0, %d14, 24

# CHECK-INST: sh.or.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xa0,0xef]
sh.or.t %d14, %d0, 0, %d14, 31

# CHECK-INST: sh.or.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x20,0xe0]
sh.or.t %d14, %d0, 0, %d15, 0

# CHECK-INST: sh.or.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xa0,0xe3]
sh.or.t %d14, %d0, 0, %d15, 7

# CHECK-INST: sh.or.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x20,0xec]
sh.or.t %d14, %d0, 0, %d15, 24

# CHECK-INST: sh.or.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xa0,0xef]
sh.or.t %d14, %d0, 0, %d15, 31

# CHECK-INST: sh.or.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0x27,0x00,0x27,0xe0]
sh.or.t %d14, %d0, 7, %d0, 0

# CHECK-INST: sh.or.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0x27,0x00,0xa7,0xe3]
sh.or.t %d14, %d0, 7, %d0, 7

# CHECK-INST: sh.or.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0x27,0x00,0x27,0xec]
sh.or.t %d14, %d0, 7, %d0, 24

# CHECK-INST: sh.or.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0x27,0x00,0xa7,0xef]
sh.or.t %d14, %d0, 7, %d0, 31

# CHECK-INST: sh.or.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0x27,0x10,0x27,0xe0]
sh.or.t %d14, %d0, 7, %d1, 0

# CHECK-INST: sh.or.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0x27,0x10,0xa7,0xe3]
sh.or.t %d14, %d0, 7, %d1, 7

# CHECK-INST: sh.or.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0x27,0x10,0x27,0xec]
sh.or.t %d14, %d0, 7, %d1, 24

# CHECK-INST: sh.or.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0x27,0x10,0xa7,0xef]
sh.or.t %d14, %d0, 7, %d1, 31

# CHECK-INST: sh.or.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x27,0xe0]
sh.or.t %d14, %d0, 7, %d14, 0

# CHECK-INST: sh.or.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xa7,0xe3]
sh.or.t %d14, %d0, 7, %d14, 7

# CHECK-INST: sh.or.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x27,0xec]
sh.or.t %d14, %d0, 7, %d14, 24

# CHECK-INST: sh.or.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xa7,0xef]
sh.or.t %d14, %d0, 7, %d14, 31

# CHECK-INST: sh.or.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x27,0xe0]
sh.or.t %d14, %d0, 7, %d15, 0

# CHECK-INST: sh.or.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xa7,0xe3]
sh.or.t %d14, %d0, 7, %d15, 7

# CHECK-INST: sh.or.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x27,0xec]
sh.or.t %d14, %d0, 7, %d15, 24

# CHECK-INST: sh.or.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xa7,0xef]
sh.or.t %d14, %d0, 7, %d15, 31

# CHECK-INST: sh.or.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0x27,0x00,0x38,0xe0]
sh.or.t %d14, %d0, 24, %d0, 0

# CHECK-INST: sh.or.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0x27,0x00,0xb8,0xe3]
sh.or.t %d14, %d0, 24, %d0, 7

# CHECK-INST: sh.or.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0x27,0x00,0x38,0xec]
sh.or.t %d14, %d0, 24, %d0, 24

# CHECK-INST: sh.or.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0x27,0x00,0xb8,0xef]
sh.or.t %d14, %d0, 24, %d0, 31

# CHECK-INST: sh.or.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0x27,0x10,0x38,0xe0]
sh.or.t %d14, %d0, 24, %d1, 0

# CHECK-INST: sh.or.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0x27,0x10,0xb8,0xe3]
sh.or.t %d14, %d0, 24, %d1, 7

# CHECK-INST: sh.or.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0x27,0x10,0x38,0xec]
sh.or.t %d14, %d0, 24, %d1, 24

# CHECK-INST: sh.or.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0x27,0x10,0xb8,0xef]
sh.or.t %d14, %d0, 24, %d1, 31

# CHECK-INST: sh.or.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x38,0xe0]
sh.or.t %d14, %d0, 24, %d14, 0

# CHECK-INST: sh.or.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xb8,0xe3]
sh.or.t %d14, %d0, 24, %d14, 7

# CHECK-INST: sh.or.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x38,0xec]
sh.or.t %d14, %d0, 24, %d14, 24

# CHECK-INST: sh.or.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xb8,0xef]
sh.or.t %d14, %d0, 24, %d14, 31

# CHECK-INST: sh.or.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x38,0xe0]
sh.or.t %d14, %d0, 24, %d15, 0

# CHECK-INST: sh.or.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xb8,0xe3]
sh.or.t %d14, %d0, 24, %d15, 7

# CHECK-INST: sh.or.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x38,0xec]
sh.or.t %d14, %d0, 24, %d15, 24

# CHECK-INST: sh.or.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xb8,0xef]
sh.or.t %d14, %d0, 24, %d15, 31

# CHECK-INST: sh.or.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0x27,0x00,0x3f,0xe0]
sh.or.t %d14, %d0, 31, %d0, 0

# CHECK-INST: sh.or.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0x27,0x00,0xbf,0xe3]
sh.or.t %d14, %d0, 31, %d0, 7

# CHECK-INST: sh.or.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0x27,0x00,0x3f,0xec]
sh.or.t %d14, %d0, 31, %d0, 24

# CHECK-INST: sh.or.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0x27,0x00,0xbf,0xef]
sh.or.t %d14, %d0, 31, %d0, 31

# CHECK-INST: sh.or.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0x27,0x10,0x3f,0xe0]
sh.or.t %d14, %d0, 31, %d1, 0

# CHECK-INST: sh.or.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0x27,0x10,0xbf,0xe3]
sh.or.t %d14, %d0, 31, %d1, 7

# CHECK-INST: sh.or.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0x27,0x10,0x3f,0xec]
sh.or.t %d14, %d0, 31, %d1, 24

# CHECK-INST: sh.or.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0x27,0x10,0xbf,0xef]
sh.or.t %d14, %d0, 31, %d1, 31

# CHECK-INST: sh.or.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x3f,0xe0]
sh.or.t %d14, %d0, 31, %d14, 0

# CHECK-INST: sh.or.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xbf,0xe3]
sh.or.t %d14, %d0, 31, %d14, 7

# CHECK-INST: sh.or.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x3f,0xec]
sh.or.t %d14, %d0, 31, %d14, 24

# CHECK-INST: sh.or.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xbf,0xef]
sh.or.t %d14, %d0, 31, %d14, 31

# CHECK-INST: sh.or.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x3f,0xe0]
sh.or.t %d14, %d0, 31, %d15, 0

# CHECK-INST: sh.or.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xbf,0xe3]
sh.or.t %d14, %d0, 31, %d15, 7

# CHECK-INST: sh.or.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x3f,0xec]
sh.or.t %d14, %d0, 31, %d15, 24

# CHECK-INST: sh.or.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xbf,0xef]
sh.or.t %d14, %d0, 31, %d15, 31

# CHECK-INST: sh.or.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0x27,0x01,0x20,0xe0]
sh.or.t %d14, %d1, 0, %d0, 0

# CHECK-INST: sh.or.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0x27,0x01,0xa0,0xe3]
sh.or.t %d14, %d1, 0, %d0, 7

# CHECK-INST: sh.or.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0x27,0x01,0x20,0xec]
sh.or.t %d14, %d1, 0, %d0, 24

# CHECK-INST: sh.or.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0x27,0x01,0xa0,0xef]
sh.or.t %d14, %d1, 0, %d0, 31

# CHECK-INST: sh.or.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0x27,0x11,0x20,0xe0]
sh.or.t %d14, %d1, 0, %d1, 0

# CHECK-INST: sh.or.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0x27,0x11,0xa0,0xe3]
sh.or.t %d14, %d1, 0, %d1, 7

# CHECK-INST: sh.or.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0x27,0x11,0x20,0xec]
sh.or.t %d14, %d1, 0, %d1, 24

# CHECK-INST: sh.or.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0x27,0x11,0xa0,0xef]
sh.or.t %d14, %d1, 0, %d1, 31

# CHECK-INST: sh.or.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x20,0xe0]
sh.or.t %d14, %d1, 0, %d14, 0

# CHECK-INST: sh.or.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xa0,0xe3]
sh.or.t %d14, %d1, 0, %d14, 7

# CHECK-INST: sh.or.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x20,0xec]
sh.or.t %d14, %d1, 0, %d14, 24

# CHECK-INST: sh.or.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xa0,0xef]
sh.or.t %d14, %d1, 0, %d14, 31

# CHECK-INST: sh.or.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x20,0xe0]
sh.or.t %d14, %d1, 0, %d15, 0

# CHECK-INST: sh.or.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xa0,0xe3]
sh.or.t %d14, %d1, 0, %d15, 7

# CHECK-INST: sh.or.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x20,0xec]
sh.or.t %d14, %d1, 0, %d15, 24

# CHECK-INST: sh.or.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xa0,0xef]
sh.or.t %d14, %d1, 0, %d15, 31

# CHECK-INST: sh.or.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0x27,0x01,0x27,0xe0]
sh.or.t %d14, %d1, 7, %d0, 0

# CHECK-INST: sh.or.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0x27,0x01,0xa7,0xe3]
sh.or.t %d14, %d1, 7, %d0, 7

# CHECK-INST: sh.or.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0x27,0x01,0x27,0xec]
sh.or.t %d14, %d1, 7, %d0, 24

# CHECK-INST: sh.or.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0x27,0x01,0xa7,0xef]
sh.or.t %d14, %d1, 7, %d0, 31

# CHECK-INST: sh.or.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0x27,0x11,0x27,0xe0]
sh.or.t %d14, %d1, 7, %d1, 0

# CHECK-INST: sh.or.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0x27,0x11,0xa7,0xe3]
sh.or.t %d14, %d1, 7, %d1, 7

# CHECK-INST: sh.or.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0x27,0x11,0x27,0xec]
sh.or.t %d14, %d1, 7, %d1, 24

# CHECK-INST: sh.or.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0x27,0x11,0xa7,0xef]
sh.or.t %d14, %d1, 7, %d1, 31

# CHECK-INST: sh.or.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x27,0xe0]
sh.or.t %d14, %d1, 7, %d14, 0

# CHECK-INST: sh.or.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xa7,0xe3]
sh.or.t %d14, %d1, 7, %d14, 7

# CHECK-INST: sh.or.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x27,0xec]
sh.or.t %d14, %d1, 7, %d14, 24

# CHECK-INST: sh.or.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xa7,0xef]
sh.or.t %d14, %d1, 7, %d14, 31

# CHECK-INST: sh.or.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x27,0xe0]
sh.or.t %d14, %d1, 7, %d15, 0

# CHECK-INST: sh.or.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xa7,0xe3]
sh.or.t %d14, %d1, 7, %d15, 7

# CHECK-INST: sh.or.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x27,0xec]
sh.or.t %d14, %d1, 7, %d15, 24

# CHECK-INST: sh.or.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xa7,0xef]
sh.or.t %d14, %d1, 7, %d15, 31

# CHECK-INST: sh.or.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0x27,0x01,0x38,0xe0]
sh.or.t %d14, %d1, 24, %d0, 0

# CHECK-INST: sh.or.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0x27,0x01,0xb8,0xe3]
sh.or.t %d14, %d1, 24, %d0, 7

# CHECK-INST: sh.or.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0x27,0x01,0x38,0xec]
sh.or.t %d14, %d1, 24, %d0, 24

# CHECK-INST: sh.or.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0x27,0x01,0xb8,0xef]
sh.or.t %d14, %d1, 24, %d0, 31

# CHECK-INST: sh.or.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0x27,0x11,0x38,0xe0]
sh.or.t %d14, %d1, 24, %d1, 0

# CHECK-INST: sh.or.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0x27,0x11,0xb8,0xe3]
sh.or.t %d14, %d1, 24, %d1, 7

# CHECK-INST: sh.or.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0x27,0x11,0x38,0xec]
sh.or.t %d14, %d1, 24, %d1, 24

# CHECK-INST: sh.or.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0x27,0x11,0xb8,0xef]
sh.or.t %d14, %d1, 24, %d1, 31

# CHECK-INST: sh.or.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x38,0xe0]
sh.or.t %d14, %d1, 24, %d14, 0

# CHECK-INST: sh.or.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xb8,0xe3]
sh.or.t %d14, %d1, 24, %d14, 7

# CHECK-INST: sh.or.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x38,0xec]
sh.or.t %d14, %d1, 24, %d14, 24

# CHECK-INST: sh.or.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xb8,0xef]
sh.or.t %d14, %d1, 24, %d14, 31

# CHECK-INST: sh.or.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x38,0xe0]
sh.or.t %d14, %d1, 24, %d15, 0

# CHECK-INST: sh.or.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xb8,0xe3]
sh.or.t %d14, %d1, 24, %d15, 7

# CHECK-INST: sh.or.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x38,0xec]
sh.or.t %d14, %d1, 24, %d15, 24

# CHECK-INST: sh.or.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xb8,0xef]
sh.or.t %d14, %d1, 24, %d15, 31

# CHECK-INST: sh.or.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0x27,0x01,0x3f,0xe0]
sh.or.t %d14, %d1, 31, %d0, 0

# CHECK-INST: sh.or.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0x27,0x01,0xbf,0xe3]
sh.or.t %d14, %d1, 31, %d0, 7

# CHECK-INST: sh.or.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0x27,0x01,0x3f,0xec]
sh.or.t %d14, %d1, 31, %d0, 24

# CHECK-INST: sh.or.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0x27,0x01,0xbf,0xef]
sh.or.t %d14, %d1, 31, %d0, 31

# CHECK-INST: sh.or.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0x27,0x11,0x3f,0xe0]
sh.or.t %d14, %d1, 31, %d1, 0

# CHECK-INST: sh.or.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0x27,0x11,0xbf,0xe3]
sh.or.t %d14, %d1, 31, %d1, 7

# CHECK-INST: sh.or.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0x27,0x11,0x3f,0xec]
sh.or.t %d14, %d1, 31, %d1, 24

# CHECK-INST: sh.or.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0x27,0x11,0xbf,0xef]
sh.or.t %d14, %d1, 31, %d1, 31

# CHECK-INST: sh.or.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x3f,0xe0]
sh.or.t %d14, %d1, 31, %d14, 0

# CHECK-INST: sh.or.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xbf,0xe3]
sh.or.t %d14, %d1, 31, %d14, 7

# CHECK-INST: sh.or.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x3f,0xec]
sh.or.t %d14, %d1, 31, %d14, 24

# CHECK-INST: sh.or.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xbf,0xef]
sh.or.t %d14, %d1, 31, %d14, 31

# CHECK-INST: sh.or.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x3f,0xe0]
sh.or.t %d14, %d1, 31, %d15, 0

# CHECK-INST: sh.or.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xbf,0xe3]
sh.or.t %d14, %d1, 31, %d15, 7

# CHECK-INST: sh.or.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x3f,0xec]
sh.or.t %d14, %d1, 31, %d15, 24

# CHECK-INST: sh.or.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xbf,0xef]
sh.or.t %d14, %d1, 31, %d15, 31

# CHECK-INST: sh.or.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x20,0xe0]
sh.or.t %d14, %d14, 0, %d0, 0

# CHECK-INST: sh.or.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xa0,0xe3]
sh.or.t %d14, %d14, 0, %d0, 7

# CHECK-INST: sh.or.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x20,0xec]
sh.or.t %d14, %d14, 0, %d0, 24

# CHECK-INST: sh.or.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xa0,0xef]
sh.or.t %d14, %d14, 0, %d0, 31

# CHECK-INST: sh.or.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x20,0xe0]
sh.or.t %d14, %d14, 0, %d1, 0

# CHECK-INST: sh.or.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xa0,0xe3]
sh.or.t %d14, %d14, 0, %d1, 7

# CHECK-INST: sh.or.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x20,0xec]
sh.or.t %d14, %d14, 0, %d1, 24

# CHECK-INST: sh.or.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xa0,0xef]
sh.or.t %d14, %d14, 0, %d1, 31

# CHECK-INST: sh.or.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0x27,0xee,0x20,0xe0]
sh.or.t %d14, %d14, 0, %d14, 0

# CHECK-INST: sh.or.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0x27,0xee,0xa0,0xe3]
sh.or.t %d14, %d14, 0, %d14, 7

# CHECK-INST: sh.or.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0x27,0xee,0x20,0xec]
sh.or.t %d14, %d14, 0, %d14, 24

# CHECK-INST: sh.or.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0x27,0xee,0xa0,0xef]
sh.or.t %d14, %d14, 0, %d14, 31

# CHECK-INST: sh.or.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x20,0xe0]
sh.or.t %d14, %d14, 0, %d15, 0

# CHECK-INST: sh.or.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xa0,0xe3]
sh.or.t %d14, %d14, 0, %d15, 7

# CHECK-INST: sh.or.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x20,0xec]
sh.or.t %d14, %d14, 0, %d15, 24

# CHECK-INST: sh.or.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xa0,0xef]
sh.or.t %d14, %d14, 0, %d15, 31

# CHECK-INST: sh.or.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x27,0xe0]
sh.or.t %d14, %d14, 7, %d0, 0

# CHECK-INST: sh.or.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xa7,0xe3]
sh.or.t %d14, %d14, 7, %d0, 7

# CHECK-INST: sh.or.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x27,0xec]
sh.or.t %d14, %d14, 7, %d0, 24

# CHECK-INST: sh.or.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xa7,0xef]
sh.or.t %d14, %d14, 7, %d0, 31

# CHECK-INST: sh.or.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x27,0xe0]
sh.or.t %d14, %d14, 7, %d1, 0

# CHECK-INST: sh.or.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xa7,0xe3]
sh.or.t %d14, %d14, 7, %d1, 7

# CHECK-INST: sh.or.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x27,0xec]
sh.or.t %d14, %d14, 7, %d1, 24

# CHECK-INST: sh.or.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xa7,0xef]
sh.or.t %d14, %d14, 7, %d1, 31

# CHECK-INST: sh.or.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0x27,0xee,0x27,0xe0]
sh.or.t %d14, %d14, 7, %d14, 0

# CHECK-INST: sh.or.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0x27,0xee,0xa7,0xe3]
sh.or.t %d14, %d14, 7, %d14, 7

# CHECK-INST: sh.or.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0x27,0xee,0x27,0xec]
sh.or.t %d14, %d14, 7, %d14, 24

# CHECK-INST: sh.or.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0x27,0xee,0xa7,0xef]
sh.or.t %d14, %d14, 7, %d14, 31

# CHECK-INST: sh.or.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x27,0xe0]
sh.or.t %d14, %d14, 7, %d15, 0

# CHECK-INST: sh.or.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xa7,0xe3]
sh.or.t %d14, %d14, 7, %d15, 7

# CHECK-INST: sh.or.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x27,0xec]
sh.or.t %d14, %d14, 7, %d15, 24

# CHECK-INST: sh.or.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xa7,0xef]
sh.or.t %d14, %d14, 7, %d15, 31

# CHECK-INST: sh.or.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x38,0xe0]
sh.or.t %d14, %d14, 24, %d0, 0

# CHECK-INST: sh.or.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xb8,0xe3]
sh.or.t %d14, %d14, 24, %d0, 7

# CHECK-INST: sh.or.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x38,0xec]
sh.or.t %d14, %d14, 24, %d0, 24

# CHECK-INST: sh.or.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xb8,0xef]
sh.or.t %d14, %d14, 24, %d0, 31

# CHECK-INST: sh.or.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x38,0xe0]
sh.or.t %d14, %d14, 24, %d1, 0

# CHECK-INST: sh.or.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xb8,0xe3]
sh.or.t %d14, %d14, 24, %d1, 7

# CHECK-INST: sh.or.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x38,0xec]
sh.or.t %d14, %d14, 24, %d1, 24

# CHECK-INST: sh.or.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xb8,0xef]
sh.or.t %d14, %d14, 24, %d1, 31

# CHECK-INST: sh.or.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0x27,0xee,0x38,0xe0]
sh.or.t %d14, %d14, 24, %d14, 0

# CHECK-INST: sh.or.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0x27,0xee,0xb8,0xe3]
sh.or.t %d14, %d14, 24, %d14, 7

# CHECK-INST: sh.or.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0x27,0xee,0x38,0xec]
sh.or.t %d14, %d14, 24, %d14, 24

# CHECK-INST: sh.or.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0x27,0xee,0xb8,0xef]
sh.or.t %d14, %d14, 24, %d14, 31

# CHECK-INST: sh.or.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x38,0xe0]
sh.or.t %d14, %d14, 24, %d15, 0

# CHECK-INST: sh.or.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xb8,0xe3]
sh.or.t %d14, %d14, 24, %d15, 7

# CHECK-INST: sh.or.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x38,0xec]
sh.or.t %d14, %d14, 24, %d15, 24

# CHECK-INST: sh.or.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xb8,0xef]
sh.or.t %d14, %d14, 24, %d15, 31

# CHECK-INST: sh.or.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x3f,0xe0]
sh.or.t %d14, %d14, 31, %d0, 0

# CHECK-INST: sh.or.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xbf,0xe3]
sh.or.t %d14, %d14, 31, %d0, 7

# CHECK-INST: sh.or.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x3f,0xec]
sh.or.t %d14, %d14, 31, %d0, 24

# CHECK-INST: sh.or.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xbf,0xef]
sh.or.t %d14, %d14, 31, %d0, 31

# CHECK-INST: sh.or.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x3f,0xe0]
sh.or.t %d14, %d14, 31, %d1, 0

# CHECK-INST: sh.or.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xbf,0xe3]
sh.or.t %d14, %d14, 31, %d1, 7

# CHECK-INST: sh.or.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x3f,0xec]
sh.or.t %d14, %d14, 31, %d1, 24

# CHECK-INST: sh.or.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xbf,0xef]
sh.or.t %d14, %d14, 31, %d1, 31

# CHECK-INST: sh.or.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0x27,0xee,0x3f,0xe0]
sh.or.t %d14, %d14, 31, %d14, 0

# CHECK-INST: sh.or.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0x27,0xee,0xbf,0xe3]
sh.or.t %d14, %d14, 31, %d14, 7

# CHECK-INST: sh.or.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0x27,0xee,0x3f,0xec]
sh.or.t %d14, %d14, 31, %d14, 24

# CHECK-INST: sh.or.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0x27,0xee,0xbf,0xef]
sh.or.t %d14, %d14, 31, %d14, 31

# CHECK-INST: sh.or.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x3f,0xe0]
sh.or.t %d14, %d14, 31, %d15, 0

# CHECK-INST: sh.or.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xbf,0xe3]
sh.or.t %d14, %d14, 31, %d15, 7

# CHECK-INST: sh.or.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x3f,0xec]
sh.or.t %d14, %d14, 31, %d15, 24

# CHECK-INST: sh.or.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xbf,0xef]
sh.or.t %d14, %d14, 31, %d15, 31

# CHECK-INST: sh.or.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x20,0xe0]
sh.or.t %d14, %d15, 0, %d0, 0

# CHECK-INST: sh.or.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xa0,0xe3]
sh.or.t %d14, %d15, 0, %d0, 7

# CHECK-INST: sh.or.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x20,0xec]
sh.or.t %d14, %d15, 0, %d0, 24

# CHECK-INST: sh.or.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xa0,0xef]
sh.or.t %d14, %d15, 0, %d0, 31

# CHECK-INST: sh.or.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x20,0xe0]
sh.or.t %d14, %d15, 0, %d1, 0

# CHECK-INST: sh.or.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xa0,0xe3]
sh.or.t %d14, %d15, 0, %d1, 7

# CHECK-INST: sh.or.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x20,0xec]
sh.or.t %d14, %d15, 0, %d1, 24

# CHECK-INST: sh.or.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xa0,0xef]
sh.or.t %d14, %d15, 0, %d1, 31

# CHECK-INST: sh.or.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0x27,0xef,0x20,0xe0]
sh.or.t %d14, %d15, 0, %d14, 0

# CHECK-INST: sh.or.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0x27,0xef,0xa0,0xe3]
sh.or.t %d14, %d15, 0, %d14, 7

# CHECK-INST: sh.or.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0x27,0xef,0x20,0xec]
sh.or.t %d14, %d15, 0, %d14, 24

# CHECK-INST: sh.or.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0x27,0xef,0xa0,0xef]
sh.or.t %d14, %d15, 0, %d14, 31

# CHECK-INST: sh.or.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0x27,0xff,0x20,0xe0]
sh.or.t %d14, %d15, 0, %d15, 0

# CHECK-INST: sh.or.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0x27,0xff,0xa0,0xe3]
sh.or.t %d14, %d15, 0, %d15, 7

# CHECK-INST: sh.or.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0x27,0xff,0x20,0xec]
sh.or.t %d14, %d15, 0, %d15, 24

# CHECK-INST: sh.or.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0x27,0xff,0xa0,0xef]
sh.or.t %d14, %d15, 0, %d15, 31

# CHECK-INST: sh.or.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x27,0xe0]
sh.or.t %d14, %d15, 7, %d0, 0

# CHECK-INST: sh.or.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xa7,0xe3]
sh.or.t %d14, %d15, 7, %d0, 7

# CHECK-INST: sh.or.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x27,0xec]
sh.or.t %d14, %d15, 7, %d0, 24

# CHECK-INST: sh.or.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xa7,0xef]
sh.or.t %d14, %d15, 7, %d0, 31

# CHECK-INST: sh.or.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x27,0xe0]
sh.or.t %d14, %d15, 7, %d1, 0

# CHECK-INST: sh.or.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xa7,0xe3]
sh.or.t %d14, %d15, 7, %d1, 7

# CHECK-INST: sh.or.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x27,0xec]
sh.or.t %d14, %d15, 7, %d1, 24

# CHECK-INST: sh.or.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xa7,0xef]
sh.or.t %d14, %d15, 7, %d1, 31

# CHECK-INST: sh.or.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0x27,0xef,0x27,0xe0]
sh.or.t %d14, %d15, 7, %d14, 0

# CHECK-INST: sh.or.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0x27,0xef,0xa7,0xe3]
sh.or.t %d14, %d15, 7, %d14, 7

# CHECK-INST: sh.or.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0x27,0xef,0x27,0xec]
sh.or.t %d14, %d15, 7, %d14, 24

# CHECK-INST: sh.or.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0x27,0xef,0xa7,0xef]
sh.or.t %d14, %d15, 7, %d14, 31

# CHECK-INST: sh.or.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0x27,0xff,0x27,0xe0]
sh.or.t %d14, %d15, 7, %d15, 0

# CHECK-INST: sh.or.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0x27,0xff,0xa7,0xe3]
sh.or.t %d14, %d15, 7, %d15, 7

# CHECK-INST: sh.or.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0x27,0xff,0x27,0xec]
sh.or.t %d14, %d15, 7, %d15, 24

# CHECK-INST: sh.or.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0x27,0xff,0xa7,0xef]
sh.or.t %d14, %d15, 7, %d15, 31

# CHECK-INST: sh.or.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x38,0xe0]
sh.or.t %d14, %d15, 24, %d0, 0

# CHECK-INST: sh.or.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xb8,0xe3]
sh.or.t %d14, %d15, 24, %d0, 7

# CHECK-INST: sh.or.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x38,0xec]
sh.or.t %d14, %d15, 24, %d0, 24

# CHECK-INST: sh.or.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xb8,0xef]
sh.or.t %d14, %d15, 24, %d0, 31

# CHECK-INST: sh.or.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x38,0xe0]
sh.or.t %d14, %d15, 24, %d1, 0

# CHECK-INST: sh.or.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xb8,0xe3]
sh.or.t %d14, %d15, 24, %d1, 7

# CHECK-INST: sh.or.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x38,0xec]
sh.or.t %d14, %d15, 24, %d1, 24

# CHECK-INST: sh.or.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xb8,0xef]
sh.or.t %d14, %d15, 24, %d1, 31

# CHECK-INST: sh.or.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0x27,0xef,0x38,0xe0]
sh.or.t %d14, %d15, 24, %d14, 0

# CHECK-INST: sh.or.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0x27,0xef,0xb8,0xe3]
sh.or.t %d14, %d15, 24, %d14, 7

# CHECK-INST: sh.or.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0x27,0xef,0x38,0xec]
sh.or.t %d14, %d15, 24, %d14, 24

# CHECK-INST: sh.or.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0x27,0xef,0xb8,0xef]
sh.or.t %d14, %d15, 24, %d14, 31

# CHECK-INST: sh.or.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0x27,0xff,0x38,0xe0]
sh.or.t %d14, %d15, 24, %d15, 0

# CHECK-INST: sh.or.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0x27,0xff,0xb8,0xe3]
sh.or.t %d14, %d15, 24, %d15, 7

# CHECK-INST: sh.or.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0x27,0xff,0x38,0xec]
sh.or.t %d14, %d15, 24, %d15, 24

# CHECK-INST: sh.or.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0x27,0xff,0xb8,0xef]
sh.or.t %d14, %d15, 24, %d15, 31

# CHECK-INST: sh.or.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x3f,0xe0]
sh.or.t %d14, %d15, 31, %d0, 0

# CHECK-INST: sh.or.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xbf,0xe3]
sh.or.t %d14, %d15, 31, %d0, 7

# CHECK-INST: sh.or.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x3f,0xec]
sh.or.t %d14, %d15, 31, %d0, 24

# CHECK-INST: sh.or.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xbf,0xef]
sh.or.t %d14, %d15, 31, %d0, 31

# CHECK-INST: sh.or.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x3f,0xe0]
sh.or.t %d14, %d15, 31, %d1, 0

# CHECK-INST: sh.or.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xbf,0xe3]
sh.or.t %d14, %d15, 31, %d1, 7

# CHECK-INST: sh.or.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x3f,0xec]
sh.or.t %d14, %d15, 31, %d1, 24

# CHECK-INST: sh.or.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xbf,0xef]
sh.or.t %d14, %d15, 31, %d1, 31

# CHECK-INST: sh.or.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0x27,0xef,0x3f,0xe0]
sh.or.t %d14, %d15, 31, %d14, 0

# CHECK-INST: sh.or.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0x27,0xef,0xbf,0xe3]
sh.or.t %d14, %d15, 31, %d14, 7

# CHECK-INST: sh.or.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0x27,0xef,0x3f,0xec]
sh.or.t %d14, %d15, 31, %d14, 24

# CHECK-INST: sh.or.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0x27,0xef,0xbf,0xef]
sh.or.t %d14, %d15, 31, %d14, 31

# CHECK-INST: sh.or.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0x27,0xff,0x3f,0xe0]
sh.or.t %d14, %d15, 31, %d15, 0

# CHECK-INST: sh.or.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0x27,0xff,0xbf,0xe3]
sh.or.t %d14, %d15, 31, %d15, 7

# CHECK-INST: sh.or.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0x27,0xff,0x3f,0xec]
sh.or.t %d14, %d15, 31, %d15, 24

# CHECK-INST: sh.or.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0x27,0xff,0xbf,0xef]
sh.or.t %d14, %d15, 31, %d15, 31

# CHECK-INST: sh.or.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0x27,0x00,0x20,0xf0]
sh.or.t %d15, %d0, 0, %d0, 0

# CHECK-INST: sh.or.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0x27,0x00,0xa0,0xf3]
sh.or.t %d15, %d0, 0, %d0, 7

# CHECK-INST: sh.or.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0x27,0x00,0x20,0xfc]
sh.or.t %d15, %d0, 0, %d0, 24

# CHECK-INST: sh.or.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0x27,0x00,0xa0,0xff]
sh.or.t %d15, %d0, 0, %d0, 31

# CHECK-INST: sh.or.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0x27,0x10,0x20,0xf0]
sh.or.t %d15, %d0, 0, %d1, 0

# CHECK-INST: sh.or.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0x27,0x10,0xa0,0xf3]
sh.or.t %d15, %d0, 0, %d1, 7

# CHECK-INST: sh.or.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0x27,0x10,0x20,0xfc]
sh.or.t %d15, %d0, 0, %d1, 24

# CHECK-INST: sh.or.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0x27,0x10,0xa0,0xff]
sh.or.t %d15, %d0, 0, %d1, 31

# CHECK-INST: sh.or.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x20,0xf0]
sh.or.t %d15, %d0, 0, %d14, 0

# CHECK-INST: sh.or.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xa0,0xf3]
sh.or.t %d15, %d0, 0, %d14, 7

# CHECK-INST: sh.or.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x20,0xfc]
sh.or.t %d15, %d0, 0, %d14, 24

# CHECK-INST: sh.or.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xa0,0xff]
sh.or.t %d15, %d0, 0, %d14, 31

# CHECK-INST: sh.or.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x20,0xf0]
sh.or.t %d15, %d0, 0, %d15, 0

# CHECK-INST: sh.or.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xa0,0xf3]
sh.or.t %d15, %d0, 0, %d15, 7

# CHECK-INST: sh.or.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x20,0xfc]
sh.or.t %d15, %d0, 0, %d15, 24

# CHECK-INST: sh.or.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xa0,0xff]
sh.or.t %d15, %d0, 0, %d15, 31

# CHECK-INST: sh.or.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0x27,0x00,0x27,0xf0]
sh.or.t %d15, %d0, 7, %d0, 0

# CHECK-INST: sh.or.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0x27,0x00,0xa7,0xf3]
sh.or.t %d15, %d0, 7, %d0, 7

# CHECK-INST: sh.or.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0x27,0x00,0x27,0xfc]
sh.or.t %d15, %d0, 7, %d0, 24

# CHECK-INST: sh.or.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0x27,0x00,0xa7,0xff]
sh.or.t %d15, %d0, 7, %d0, 31

# CHECK-INST: sh.or.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0x27,0x10,0x27,0xf0]
sh.or.t %d15, %d0, 7, %d1, 0

# CHECK-INST: sh.or.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0x27,0x10,0xa7,0xf3]
sh.or.t %d15, %d0, 7, %d1, 7

# CHECK-INST: sh.or.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0x27,0x10,0x27,0xfc]
sh.or.t %d15, %d0, 7, %d1, 24

# CHECK-INST: sh.or.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0x27,0x10,0xa7,0xff]
sh.or.t %d15, %d0, 7, %d1, 31

# CHECK-INST: sh.or.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x27,0xf0]
sh.or.t %d15, %d0, 7, %d14, 0

# CHECK-INST: sh.or.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xa7,0xf3]
sh.or.t %d15, %d0, 7, %d14, 7

# CHECK-INST: sh.or.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x27,0xfc]
sh.or.t %d15, %d0, 7, %d14, 24

# CHECK-INST: sh.or.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xa7,0xff]
sh.or.t %d15, %d0, 7, %d14, 31

# CHECK-INST: sh.or.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x27,0xf0]
sh.or.t %d15, %d0, 7, %d15, 0

# CHECK-INST: sh.or.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xa7,0xf3]
sh.or.t %d15, %d0, 7, %d15, 7

# CHECK-INST: sh.or.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x27,0xfc]
sh.or.t %d15, %d0, 7, %d15, 24

# CHECK-INST: sh.or.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xa7,0xff]
sh.or.t %d15, %d0, 7, %d15, 31

# CHECK-INST: sh.or.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0x27,0x00,0x38,0xf0]
sh.or.t %d15, %d0, 24, %d0, 0

# CHECK-INST: sh.or.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0x27,0x00,0xb8,0xf3]
sh.or.t %d15, %d0, 24, %d0, 7

# CHECK-INST: sh.or.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0x27,0x00,0x38,0xfc]
sh.or.t %d15, %d0, 24, %d0, 24

# CHECK-INST: sh.or.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0x27,0x00,0xb8,0xff]
sh.or.t %d15, %d0, 24, %d0, 31

# CHECK-INST: sh.or.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0x27,0x10,0x38,0xf0]
sh.or.t %d15, %d0, 24, %d1, 0

# CHECK-INST: sh.or.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0x27,0x10,0xb8,0xf3]
sh.or.t %d15, %d0, 24, %d1, 7

# CHECK-INST: sh.or.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0x27,0x10,0x38,0xfc]
sh.or.t %d15, %d0, 24, %d1, 24

# CHECK-INST: sh.or.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0x27,0x10,0xb8,0xff]
sh.or.t %d15, %d0, 24, %d1, 31

# CHECK-INST: sh.or.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x38,0xf0]
sh.or.t %d15, %d0, 24, %d14, 0

# CHECK-INST: sh.or.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xb8,0xf3]
sh.or.t %d15, %d0, 24, %d14, 7

# CHECK-INST: sh.or.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x38,0xfc]
sh.or.t %d15, %d0, 24, %d14, 24

# CHECK-INST: sh.or.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xb8,0xff]
sh.or.t %d15, %d0, 24, %d14, 31

# CHECK-INST: sh.or.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x38,0xf0]
sh.or.t %d15, %d0, 24, %d15, 0

# CHECK-INST: sh.or.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xb8,0xf3]
sh.or.t %d15, %d0, 24, %d15, 7

# CHECK-INST: sh.or.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x38,0xfc]
sh.or.t %d15, %d0, 24, %d15, 24

# CHECK-INST: sh.or.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xb8,0xff]
sh.or.t %d15, %d0, 24, %d15, 31

# CHECK-INST: sh.or.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0x27,0x00,0x3f,0xf0]
sh.or.t %d15, %d0, 31, %d0, 0

# CHECK-INST: sh.or.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0x27,0x00,0xbf,0xf3]
sh.or.t %d15, %d0, 31, %d0, 7

# CHECK-INST: sh.or.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0x27,0x00,0x3f,0xfc]
sh.or.t %d15, %d0, 31, %d0, 24

# CHECK-INST: sh.or.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0x27,0x00,0xbf,0xff]
sh.or.t %d15, %d0, 31, %d0, 31

# CHECK-INST: sh.or.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0x27,0x10,0x3f,0xf0]
sh.or.t %d15, %d0, 31, %d1, 0

# CHECK-INST: sh.or.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0x27,0x10,0xbf,0xf3]
sh.or.t %d15, %d0, 31, %d1, 7

# CHECK-INST: sh.or.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0x27,0x10,0x3f,0xfc]
sh.or.t %d15, %d0, 31, %d1, 24

# CHECK-INST: sh.or.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0x27,0x10,0xbf,0xff]
sh.or.t %d15, %d0, 31, %d1, 31

# CHECK-INST: sh.or.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0x27,0xe0,0x3f,0xf0]
sh.or.t %d15, %d0, 31, %d14, 0

# CHECK-INST: sh.or.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0x27,0xe0,0xbf,0xf3]
sh.or.t %d15, %d0, 31, %d14, 7

# CHECK-INST: sh.or.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0x27,0xe0,0x3f,0xfc]
sh.or.t %d15, %d0, 31, %d14, 24

# CHECK-INST: sh.or.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0x27,0xe0,0xbf,0xff]
sh.or.t %d15, %d0, 31, %d14, 31

# CHECK-INST: sh.or.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0x27,0xf0,0x3f,0xf0]
sh.or.t %d15, %d0, 31, %d15, 0

# CHECK-INST: sh.or.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0x27,0xf0,0xbf,0xf3]
sh.or.t %d15, %d0, 31, %d15, 7

# CHECK-INST: sh.or.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0x27,0xf0,0x3f,0xfc]
sh.or.t %d15, %d0, 31, %d15, 24

# CHECK-INST: sh.or.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0x27,0xf0,0xbf,0xff]
sh.or.t %d15, %d0, 31, %d15, 31

# CHECK-INST: sh.or.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0x27,0x01,0x20,0xf0]
sh.or.t %d15, %d1, 0, %d0, 0

# CHECK-INST: sh.or.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0x27,0x01,0xa0,0xf3]
sh.or.t %d15, %d1, 0, %d0, 7

# CHECK-INST: sh.or.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0x27,0x01,0x20,0xfc]
sh.or.t %d15, %d1, 0, %d0, 24

# CHECK-INST: sh.or.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0x27,0x01,0xa0,0xff]
sh.or.t %d15, %d1, 0, %d0, 31

# CHECK-INST: sh.or.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0x27,0x11,0x20,0xf0]
sh.or.t %d15, %d1, 0, %d1, 0

# CHECK-INST: sh.or.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0x27,0x11,0xa0,0xf3]
sh.or.t %d15, %d1, 0, %d1, 7

# CHECK-INST: sh.or.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0x27,0x11,0x20,0xfc]
sh.or.t %d15, %d1, 0, %d1, 24

# CHECK-INST: sh.or.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0x27,0x11,0xa0,0xff]
sh.or.t %d15, %d1, 0, %d1, 31

# CHECK-INST: sh.or.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x20,0xf0]
sh.or.t %d15, %d1, 0, %d14, 0

# CHECK-INST: sh.or.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xa0,0xf3]
sh.or.t %d15, %d1, 0, %d14, 7

# CHECK-INST: sh.or.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x20,0xfc]
sh.or.t %d15, %d1, 0, %d14, 24

# CHECK-INST: sh.or.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xa0,0xff]
sh.or.t %d15, %d1, 0, %d14, 31

# CHECK-INST: sh.or.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x20,0xf0]
sh.or.t %d15, %d1, 0, %d15, 0

# CHECK-INST: sh.or.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xa0,0xf3]
sh.or.t %d15, %d1, 0, %d15, 7

# CHECK-INST: sh.or.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x20,0xfc]
sh.or.t %d15, %d1, 0, %d15, 24

# CHECK-INST: sh.or.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xa0,0xff]
sh.or.t %d15, %d1, 0, %d15, 31

# CHECK-INST: sh.or.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0x27,0x01,0x27,0xf0]
sh.or.t %d15, %d1, 7, %d0, 0

# CHECK-INST: sh.or.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0x27,0x01,0xa7,0xf3]
sh.or.t %d15, %d1, 7, %d0, 7

# CHECK-INST: sh.or.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0x27,0x01,0x27,0xfc]
sh.or.t %d15, %d1, 7, %d0, 24

# CHECK-INST: sh.or.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0x27,0x01,0xa7,0xff]
sh.or.t %d15, %d1, 7, %d0, 31

# CHECK-INST: sh.or.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0x27,0x11,0x27,0xf0]
sh.or.t %d15, %d1, 7, %d1, 0

# CHECK-INST: sh.or.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0x27,0x11,0xa7,0xf3]
sh.or.t %d15, %d1, 7, %d1, 7

# CHECK-INST: sh.or.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0x27,0x11,0x27,0xfc]
sh.or.t %d15, %d1, 7, %d1, 24

# CHECK-INST: sh.or.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0x27,0x11,0xa7,0xff]
sh.or.t %d15, %d1, 7, %d1, 31

# CHECK-INST: sh.or.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x27,0xf0]
sh.or.t %d15, %d1, 7, %d14, 0

# CHECK-INST: sh.or.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xa7,0xf3]
sh.or.t %d15, %d1, 7, %d14, 7

# CHECK-INST: sh.or.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x27,0xfc]
sh.or.t %d15, %d1, 7, %d14, 24

# CHECK-INST: sh.or.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xa7,0xff]
sh.or.t %d15, %d1, 7, %d14, 31

# CHECK-INST: sh.or.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x27,0xf0]
sh.or.t %d15, %d1, 7, %d15, 0

# CHECK-INST: sh.or.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xa7,0xf3]
sh.or.t %d15, %d1, 7, %d15, 7

# CHECK-INST: sh.or.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x27,0xfc]
sh.or.t %d15, %d1, 7, %d15, 24

# CHECK-INST: sh.or.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xa7,0xff]
sh.or.t %d15, %d1, 7, %d15, 31

# CHECK-INST: sh.or.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0x27,0x01,0x38,0xf0]
sh.or.t %d15, %d1, 24, %d0, 0

# CHECK-INST: sh.or.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0x27,0x01,0xb8,0xf3]
sh.or.t %d15, %d1, 24, %d0, 7

# CHECK-INST: sh.or.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0x27,0x01,0x38,0xfc]
sh.or.t %d15, %d1, 24, %d0, 24

# CHECK-INST: sh.or.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0x27,0x01,0xb8,0xff]
sh.or.t %d15, %d1, 24, %d0, 31

# CHECK-INST: sh.or.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0x27,0x11,0x38,0xf0]
sh.or.t %d15, %d1, 24, %d1, 0

# CHECK-INST: sh.or.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0x27,0x11,0xb8,0xf3]
sh.or.t %d15, %d1, 24, %d1, 7

# CHECK-INST: sh.or.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0x27,0x11,0x38,0xfc]
sh.or.t %d15, %d1, 24, %d1, 24

# CHECK-INST: sh.or.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0x27,0x11,0xb8,0xff]
sh.or.t %d15, %d1, 24, %d1, 31

# CHECK-INST: sh.or.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x38,0xf0]
sh.or.t %d15, %d1, 24, %d14, 0

# CHECK-INST: sh.or.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xb8,0xf3]
sh.or.t %d15, %d1, 24, %d14, 7

# CHECK-INST: sh.or.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x38,0xfc]
sh.or.t %d15, %d1, 24, %d14, 24

# CHECK-INST: sh.or.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xb8,0xff]
sh.or.t %d15, %d1, 24, %d14, 31

# CHECK-INST: sh.or.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x38,0xf0]
sh.or.t %d15, %d1, 24, %d15, 0

# CHECK-INST: sh.or.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xb8,0xf3]
sh.or.t %d15, %d1, 24, %d15, 7

# CHECK-INST: sh.or.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x38,0xfc]
sh.or.t %d15, %d1, 24, %d15, 24

# CHECK-INST: sh.or.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xb8,0xff]
sh.or.t %d15, %d1, 24, %d15, 31

# CHECK-INST: sh.or.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0x27,0x01,0x3f,0xf0]
sh.or.t %d15, %d1, 31, %d0, 0

# CHECK-INST: sh.or.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0x27,0x01,0xbf,0xf3]
sh.or.t %d15, %d1, 31, %d0, 7

# CHECK-INST: sh.or.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0x27,0x01,0x3f,0xfc]
sh.or.t %d15, %d1, 31, %d0, 24

# CHECK-INST: sh.or.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0x27,0x01,0xbf,0xff]
sh.or.t %d15, %d1, 31, %d0, 31

# CHECK-INST: sh.or.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0x27,0x11,0x3f,0xf0]
sh.or.t %d15, %d1, 31, %d1, 0

# CHECK-INST: sh.or.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0x27,0x11,0xbf,0xf3]
sh.or.t %d15, %d1, 31, %d1, 7

# CHECK-INST: sh.or.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0x27,0x11,0x3f,0xfc]
sh.or.t %d15, %d1, 31, %d1, 24

# CHECK-INST: sh.or.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0x27,0x11,0xbf,0xff]
sh.or.t %d15, %d1, 31, %d1, 31

# CHECK-INST: sh.or.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0x27,0xe1,0x3f,0xf0]
sh.or.t %d15, %d1, 31, %d14, 0

# CHECK-INST: sh.or.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0x27,0xe1,0xbf,0xf3]
sh.or.t %d15, %d1, 31, %d14, 7

# CHECK-INST: sh.or.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0x27,0xe1,0x3f,0xfc]
sh.or.t %d15, %d1, 31, %d14, 24

# CHECK-INST: sh.or.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0x27,0xe1,0xbf,0xff]
sh.or.t %d15, %d1, 31, %d14, 31

# CHECK-INST: sh.or.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0x27,0xf1,0x3f,0xf0]
sh.or.t %d15, %d1, 31, %d15, 0

# CHECK-INST: sh.or.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0x27,0xf1,0xbf,0xf3]
sh.or.t %d15, %d1, 31, %d15, 7

# CHECK-INST: sh.or.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0x27,0xf1,0x3f,0xfc]
sh.or.t %d15, %d1, 31, %d15, 24

# CHECK-INST: sh.or.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0x27,0xf1,0xbf,0xff]
sh.or.t %d15, %d1, 31, %d15, 31

# CHECK-INST: sh.or.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x20,0xf0]
sh.or.t %d15, %d14, 0, %d0, 0

# CHECK-INST: sh.or.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xa0,0xf3]
sh.or.t %d15, %d14, 0, %d0, 7

# CHECK-INST: sh.or.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x20,0xfc]
sh.or.t %d15, %d14, 0, %d0, 24

# CHECK-INST: sh.or.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xa0,0xff]
sh.or.t %d15, %d14, 0, %d0, 31

# CHECK-INST: sh.or.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x20,0xf0]
sh.or.t %d15, %d14, 0, %d1, 0

# CHECK-INST: sh.or.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xa0,0xf3]
sh.or.t %d15, %d14, 0, %d1, 7

# CHECK-INST: sh.or.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x20,0xfc]
sh.or.t %d15, %d14, 0, %d1, 24

# CHECK-INST: sh.or.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xa0,0xff]
sh.or.t %d15, %d14, 0, %d1, 31

# CHECK-INST: sh.or.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0x27,0xee,0x20,0xf0]
sh.or.t %d15, %d14, 0, %d14, 0

# CHECK-INST: sh.or.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0x27,0xee,0xa0,0xf3]
sh.or.t %d15, %d14, 0, %d14, 7

# CHECK-INST: sh.or.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0x27,0xee,0x20,0xfc]
sh.or.t %d15, %d14, 0, %d14, 24

# CHECK-INST: sh.or.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0x27,0xee,0xa0,0xff]
sh.or.t %d15, %d14, 0, %d14, 31

# CHECK-INST: sh.or.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x20,0xf0]
sh.or.t %d15, %d14, 0, %d15, 0

# CHECK-INST: sh.or.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xa0,0xf3]
sh.or.t %d15, %d14, 0, %d15, 7

# CHECK-INST: sh.or.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x20,0xfc]
sh.or.t %d15, %d14, 0, %d15, 24

# CHECK-INST: sh.or.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xa0,0xff]
sh.or.t %d15, %d14, 0, %d15, 31

# CHECK-INST: sh.or.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x27,0xf0]
sh.or.t %d15, %d14, 7, %d0, 0

# CHECK-INST: sh.or.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xa7,0xf3]
sh.or.t %d15, %d14, 7, %d0, 7

# CHECK-INST: sh.or.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x27,0xfc]
sh.or.t %d15, %d14, 7, %d0, 24

# CHECK-INST: sh.or.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xa7,0xff]
sh.or.t %d15, %d14, 7, %d0, 31

# CHECK-INST: sh.or.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x27,0xf0]
sh.or.t %d15, %d14, 7, %d1, 0

# CHECK-INST: sh.or.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xa7,0xf3]
sh.or.t %d15, %d14, 7, %d1, 7

# CHECK-INST: sh.or.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x27,0xfc]
sh.or.t %d15, %d14, 7, %d1, 24

# CHECK-INST: sh.or.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xa7,0xff]
sh.or.t %d15, %d14, 7, %d1, 31

# CHECK-INST: sh.or.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0x27,0xee,0x27,0xf0]
sh.or.t %d15, %d14, 7, %d14, 0

# CHECK-INST: sh.or.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0x27,0xee,0xa7,0xf3]
sh.or.t %d15, %d14, 7, %d14, 7

# CHECK-INST: sh.or.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0x27,0xee,0x27,0xfc]
sh.or.t %d15, %d14, 7, %d14, 24

# CHECK-INST: sh.or.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0x27,0xee,0xa7,0xff]
sh.or.t %d15, %d14, 7, %d14, 31

# CHECK-INST: sh.or.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x27,0xf0]
sh.or.t %d15, %d14, 7, %d15, 0

# CHECK-INST: sh.or.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xa7,0xf3]
sh.or.t %d15, %d14, 7, %d15, 7

# CHECK-INST: sh.or.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x27,0xfc]
sh.or.t %d15, %d14, 7, %d15, 24

# CHECK-INST: sh.or.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xa7,0xff]
sh.or.t %d15, %d14, 7, %d15, 31

# CHECK-INST: sh.or.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x38,0xf0]
sh.or.t %d15, %d14, 24, %d0, 0

# CHECK-INST: sh.or.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xb8,0xf3]
sh.or.t %d15, %d14, 24, %d0, 7

# CHECK-INST: sh.or.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x38,0xfc]
sh.or.t %d15, %d14, 24, %d0, 24

# CHECK-INST: sh.or.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xb8,0xff]
sh.or.t %d15, %d14, 24, %d0, 31

# CHECK-INST: sh.or.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x38,0xf0]
sh.or.t %d15, %d14, 24, %d1, 0

# CHECK-INST: sh.or.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xb8,0xf3]
sh.or.t %d15, %d14, 24, %d1, 7

# CHECK-INST: sh.or.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x38,0xfc]
sh.or.t %d15, %d14, 24, %d1, 24

# CHECK-INST: sh.or.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xb8,0xff]
sh.or.t %d15, %d14, 24, %d1, 31

# CHECK-INST: sh.or.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0x27,0xee,0x38,0xf0]
sh.or.t %d15, %d14, 24, %d14, 0

# CHECK-INST: sh.or.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0x27,0xee,0xb8,0xf3]
sh.or.t %d15, %d14, 24, %d14, 7

# CHECK-INST: sh.or.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0x27,0xee,0x38,0xfc]
sh.or.t %d15, %d14, 24, %d14, 24

# CHECK-INST: sh.or.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0x27,0xee,0xb8,0xff]
sh.or.t %d15, %d14, 24, %d14, 31

# CHECK-INST: sh.or.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x38,0xf0]
sh.or.t %d15, %d14, 24, %d15, 0

# CHECK-INST: sh.or.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xb8,0xf3]
sh.or.t %d15, %d14, 24, %d15, 7

# CHECK-INST: sh.or.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x38,0xfc]
sh.or.t %d15, %d14, 24, %d15, 24

# CHECK-INST: sh.or.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xb8,0xff]
sh.or.t %d15, %d14, 24, %d15, 31

# CHECK-INST: sh.or.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0x27,0x0e,0x3f,0xf0]
sh.or.t %d15, %d14, 31, %d0, 0

# CHECK-INST: sh.or.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0x27,0x0e,0xbf,0xf3]
sh.or.t %d15, %d14, 31, %d0, 7

# CHECK-INST: sh.or.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0x27,0x0e,0x3f,0xfc]
sh.or.t %d15, %d14, 31, %d0, 24

# CHECK-INST: sh.or.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0x27,0x0e,0xbf,0xff]
sh.or.t %d15, %d14, 31, %d0, 31

# CHECK-INST: sh.or.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0x27,0x1e,0x3f,0xf0]
sh.or.t %d15, %d14, 31, %d1, 0

# CHECK-INST: sh.or.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0x27,0x1e,0xbf,0xf3]
sh.or.t %d15, %d14, 31, %d1, 7

# CHECK-INST: sh.or.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0x27,0x1e,0x3f,0xfc]
sh.or.t %d15, %d14, 31, %d1, 24

# CHECK-INST: sh.or.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0x27,0x1e,0xbf,0xff]
sh.or.t %d15, %d14, 31, %d1, 31

# CHECK-INST: sh.or.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0x27,0xee,0x3f,0xf0]
sh.or.t %d15, %d14, 31, %d14, 0

# CHECK-INST: sh.or.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0x27,0xee,0xbf,0xf3]
sh.or.t %d15, %d14, 31, %d14, 7

# CHECK-INST: sh.or.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0x27,0xee,0x3f,0xfc]
sh.or.t %d15, %d14, 31, %d14, 24

# CHECK-INST: sh.or.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0x27,0xee,0xbf,0xff]
sh.or.t %d15, %d14, 31, %d14, 31

# CHECK-INST: sh.or.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0x27,0xfe,0x3f,0xf0]
sh.or.t %d15, %d14, 31, %d15, 0

# CHECK-INST: sh.or.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0x27,0xfe,0xbf,0xf3]
sh.or.t %d15, %d14, 31, %d15, 7

# CHECK-INST: sh.or.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0x27,0xfe,0x3f,0xfc]
sh.or.t %d15, %d14, 31, %d15, 24

# CHECK-INST: sh.or.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0x27,0xfe,0xbf,0xff]
sh.or.t %d15, %d14, 31, %d15, 31

# CHECK-INST: sh.or.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x20,0xf0]
sh.or.t %d15, %d15, 0, %d0, 0

# CHECK-INST: sh.or.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xa0,0xf3]
sh.or.t %d15, %d15, 0, %d0, 7

# CHECK-INST: sh.or.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x20,0xfc]
sh.or.t %d15, %d15, 0, %d0, 24

# CHECK-INST: sh.or.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xa0,0xff]
sh.or.t %d15, %d15, 0, %d0, 31

# CHECK-INST: sh.or.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x20,0xf0]
sh.or.t %d15, %d15, 0, %d1, 0

# CHECK-INST: sh.or.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xa0,0xf3]
sh.or.t %d15, %d15, 0, %d1, 7

# CHECK-INST: sh.or.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x20,0xfc]
sh.or.t %d15, %d15, 0, %d1, 24

# CHECK-INST: sh.or.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xa0,0xff]
sh.or.t %d15, %d15, 0, %d1, 31

# CHECK-INST: sh.or.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0x27,0xef,0x20,0xf0]
sh.or.t %d15, %d15, 0, %d14, 0

# CHECK-INST: sh.or.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0x27,0xef,0xa0,0xf3]
sh.or.t %d15, %d15, 0, %d14, 7

# CHECK-INST: sh.or.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0x27,0xef,0x20,0xfc]
sh.or.t %d15, %d15, 0, %d14, 24

# CHECK-INST: sh.or.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0x27,0xef,0xa0,0xff]
sh.or.t %d15, %d15, 0, %d14, 31

# CHECK-INST: sh.or.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0x27,0xff,0x20,0xf0]
sh.or.t %d15, %d15, 0, %d15, 0

# CHECK-INST: sh.or.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0x27,0xff,0xa0,0xf3]
sh.or.t %d15, %d15, 0, %d15, 7

# CHECK-INST: sh.or.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0x27,0xff,0x20,0xfc]
sh.or.t %d15, %d15, 0, %d15, 24

# CHECK-INST: sh.or.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0x27,0xff,0xa0,0xff]
sh.or.t %d15, %d15, 0, %d15, 31

# CHECK-INST: sh.or.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x27,0xf0]
sh.or.t %d15, %d15, 7, %d0, 0

# CHECK-INST: sh.or.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xa7,0xf3]
sh.or.t %d15, %d15, 7, %d0, 7

# CHECK-INST: sh.or.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x27,0xfc]
sh.or.t %d15, %d15, 7, %d0, 24

# CHECK-INST: sh.or.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xa7,0xff]
sh.or.t %d15, %d15, 7, %d0, 31

# CHECK-INST: sh.or.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x27,0xf0]
sh.or.t %d15, %d15, 7, %d1, 0

# CHECK-INST: sh.or.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xa7,0xf3]
sh.or.t %d15, %d15, 7, %d1, 7

# CHECK-INST: sh.or.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x27,0xfc]
sh.or.t %d15, %d15, 7, %d1, 24

# CHECK-INST: sh.or.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xa7,0xff]
sh.or.t %d15, %d15, 7, %d1, 31

# CHECK-INST: sh.or.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0x27,0xef,0x27,0xf0]
sh.or.t %d15, %d15, 7, %d14, 0

# CHECK-INST: sh.or.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0x27,0xef,0xa7,0xf3]
sh.or.t %d15, %d15, 7, %d14, 7

# CHECK-INST: sh.or.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0x27,0xef,0x27,0xfc]
sh.or.t %d15, %d15, 7, %d14, 24

# CHECK-INST: sh.or.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0x27,0xef,0xa7,0xff]
sh.or.t %d15, %d15, 7, %d14, 31

# CHECK-INST: sh.or.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0x27,0xff,0x27,0xf0]
sh.or.t %d15, %d15, 7, %d15, 0

# CHECK-INST: sh.or.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0x27,0xff,0xa7,0xf3]
sh.or.t %d15, %d15, 7, %d15, 7

# CHECK-INST: sh.or.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0x27,0xff,0x27,0xfc]
sh.or.t %d15, %d15, 7, %d15, 24

# CHECK-INST: sh.or.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0x27,0xff,0xa7,0xff]
sh.or.t %d15, %d15, 7, %d15, 31

# CHECK-INST: sh.or.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x38,0xf0]
sh.or.t %d15, %d15, 24, %d0, 0

# CHECK-INST: sh.or.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xb8,0xf3]
sh.or.t %d15, %d15, 24, %d0, 7

# CHECK-INST: sh.or.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x38,0xfc]
sh.or.t %d15, %d15, 24, %d0, 24

# CHECK-INST: sh.or.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xb8,0xff]
sh.or.t %d15, %d15, 24, %d0, 31

# CHECK-INST: sh.or.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x38,0xf0]
sh.or.t %d15, %d15, 24, %d1, 0

# CHECK-INST: sh.or.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xb8,0xf3]
sh.or.t %d15, %d15, 24, %d1, 7

# CHECK-INST: sh.or.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x38,0xfc]
sh.or.t %d15, %d15, 24, %d1, 24

# CHECK-INST: sh.or.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xb8,0xff]
sh.or.t %d15, %d15, 24, %d1, 31

# CHECK-INST: sh.or.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0x27,0xef,0x38,0xf0]
sh.or.t %d15, %d15, 24, %d14, 0

# CHECK-INST: sh.or.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0x27,0xef,0xb8,0xf3]
sh.or.t %d15, %d15, 24, %d14, 7

# CHECK-INST: sh.or.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0x27,0xef,0x38,0xfc]
sh.or.t %d15, %d15, 24, %d14, 24

# CHECK-INST: sh.or.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0x27,0xef,0xb8,0xff]
sh.or.t %d15, %d15, 24, %d14, 31

# CHECK-INST: sh.or.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0x27,0xff,0x38,0xf0]
sh.or.t %d15, %d15, 24, %d15, 0

# CHECK-INST: sh.or.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0x27,0xff,0xb8,0xf3]
sh.or.t %d15, %d15, 24, %d15, 7

# CHECK-INST: sh.or.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0x27,0xff,0x38,0xfc]
sh.or.t %d15, %d15, 24, %d15, 24

# CHECK-INST: sh.or.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0x27,0xff,0xb8,0xff]
sh.or.t %d15, %d15, 24, %d15, 31

# CHECK-INST: sh.or.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0x27,0x0f,0x3f,0xf0]
sh.or.t %d15, %d15, 31, %d0, 0

# CHECK-INST: sh.or.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0x27,0x0f,0xbf,0xf3]
sh.or.t %d15, %d15, 31, %d0, 7

# CHECK-INST: sh.or.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0x27,0x0f,0x3f,0xfc]
sh.or.t %d15, %d15, 31, %d0, 24

# CHECK-INST: sh.or.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0x27,0x0f,0xbf,0xff]
sh.or.t %d15, %d15, 31, %d0, 31

# CHECK-INST: sh.or.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0x27,0x1f,0x3f,0xf0]
sh.or.t %d15, %d15, 31, %d1, 0

# CHECK-INST: sh.or.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0x27,0x1f,0xbf,0xf3]
sh.or.t %d15, %d15, 31, %d1, 7

# CHECK-INST: sh.or.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0x27,0x1f,0x3f,0xfc]
sh.or.t %d15, %d15, 31, %d1, 24

# CHECK-INST: sh.or.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0x27,0x1f,0xbf,0xff]
sh.or.t %d15, %d15, 31, %d1, 31

# CHECK-INST: sh.or.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0x27,0xef,0x3f,0xf0]
sh.or.t %d15, %d15, 31, %d14, 0

# CHECK-INST: sh.or.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0x27,0xef,0xbf,0xf3]
sh.or.t %d15, %d15, 31, %d14, 7

# CHECK-INST: sh.or.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0x27,0xef,0x3f,0xfc]
sh.or.t %d15, %d15, 31, %d14, 24

# CHECK-INST: sh.or.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0x27,0xef,0xbf,0xff]
sh.or.t %d15, %d15, 31, %d14, 31

# CHECK-INST: sh.or.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0x27,0xff,0x3f,0xf0]
sh.or.t %d15, %d15, 31, %d15, 0

# CHECK-INST: sh.or.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0x27,0xff,0xbf,0xf3]
sh.or.t %d15, %d15, 31, %d15, 7

# CHECK-INST: sh.or.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0x27,0xff,0x3f,0xfc]
sh.or.t %d15, %d15, 31, %d15, 24

# CHECK-INST: sh.or.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0x27,0xff,0xbf,0xff]
sh.or.t %d15, %d15, 31, %d15, 31

# CHECK-INST: sh.orn.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x20,0x00]
sh.orn.t %d0, %d0, 0, %d0, 0

# CHECK-INST: sh.orn.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xa0,0x03]
sh.orn.t %d0, %d0, 0, %d0, 7

# CHECK-INST: sh.orn.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x20,0x0c]
sh.orn.t %d0, %d0, 0, %d0, 24

# CHECK-INST: sh.orn.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xa0,0x0f]
sh.orn.t %d0, %d0, 0, %d0, 31

# CHECK-INST: sh.orn.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x20,0x00]
sh.orn.t %d0, %d0, 0, %d1, 0

# CHECK-INST: sh.orn.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xa0,0x03]
sh.orn.t %d0, %d0, 0, %d1, 7

# CHECK-INST: sh.orn.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x20,0x0c]
sh.orn.t %d0, %d0, 0, %d1, 24

# CHECK-INST: sh.orn.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xa0,0x0f]
sh.orn.t %d0, %d0, 0, %d1, 31

# CHECK-INST: sh.orn.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x20,0x00]
sh.orn.t %d0, %d0, 0, %d14, 0

# CHECK-INST: sh.orn.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xa0,0x03]
sh.orn.t %d0, %d0, 0, %d14, 7

# CHECK-INST: sh.orn.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x20,0x0c]
sh.orn.t %d0, %d0, 0, %d14, 24

# CHECK-INST: sh.orn.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xa0,0x0f]
sh.orn.t %d0, %d0, 0, %d14, 31

# CHECK-INST: sh.orn.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x20,0x00]
sh.orn.t %d0, %d0, 0, %d15, 0

# CHECK-INST: sh.orn.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xa0,0x03]
sh.orn.t %d0, %d0, 0, %d15, 7

# CHECK-INST: sh.orn.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x20,0x0c]
sh.orn.t %d0, %d0, 0, %d15, 24

# CHECK-INST: sh.orn.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xa0,0x0f]
sh.orn.t %d0, %d0, 0, %d15, 31

# CHECK-INST: sh.orn.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x27,0x00]
sh.orn.t %d0, %d0, 7, %d0, 0

# CHECK-INST: sh.orn.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xa7,0x03]
sh.orn.t %d0, %d0, 7, %d0, 7

# CHECK-INST: sh.orn.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x27,0x0c]
sh.orn.t %d0, %d0, 7, %d0, 24

# CHECK-INST: sh.orn.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xa7,0x0f]
sh.orn.t %d0, %d0, 7, %d0, 31

# CHECK-INST: sh.orn.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x27,0x00]
sh.orn.t %d0, %d0, 7, %d1, 0

# CHECK-INST: sh.orn.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xa7,0x03]
sh.orn.t %d0, %d0, 7, %d1, 7

# CHECK-INST: sh.orn.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x27,0x0c]
sh.orn.t %d0, %d0, 7, %d1, 24

# CHECK-INST: sh.orn.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xa7,0x0f]
sh.orn.t %d0, %d0, 7, %d1, 31

# CHECK-INST: sh.orn.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x27,0x00]
sh.orn.t %d0, %d0, 7, %d14, 0

# CHECK-INST: sh.orn.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xa7,0x03]
sh.orn.t %d0, %d0, 7, %d14, 7

# CHECK-INST: sh.orn.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x27,0x0c]
sh.orn.t %d0, %d0, 7, %d14, 24

# CHECK-INST: sh.orn.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xa7,0x0f]
sh.orn.t %d0, %d0, 7, %d14, 31

# CHECK-INST: sh.orn.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x27,0x00]
sh.orn.t %d0, %d0, 7, %d15, 0

# CHECK-INST: sh.orn.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xa7,0x03]
sh.orn.t %d0, %d0, 7, %d15, 7

# CHECK-INST: sh.orn.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x27,0x0c]
sh.orn.t %d0, %d0, 7, %d15, 24

# CHECK-INST: sh.orn.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xa7,0x0f]
sh.orn.t %d0, %d0, 7, %d15, 31

# CHECK-INST: sh.orn.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x38,0x00]
sh.orn.t %d0, %d0, 24, %d0, 0

# CHECK-INST: sh.orn.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xb8,0x03]
sh.orn.t %d0, %d0, 24, %d0, 7

# CHECK-INST: sh.orn.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x38,0x0c]
sh.orn.t %d0, %d0, 24, %d0, 24

# CHECK-INST: sh.orn.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xb8,0x0f]
sh.orn.t %d0, %d0, 24, %d0, 31

# CHECK-INST: sh.orn.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x38,0x00]
sh.orn.t %d0, %d0, 24, %d1, 0

# CHECK-INST: sh.orn.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xb8,0x03]
sh.orn.t %d0, %d0, 24, %d1, 7

# CHECK-INST: sh.orn.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x38,0x0c]
sh.orn.t %d0, %d0, 24, %d1, 24

# CHECK-INST: sh.orn.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xb8,0x0f]
sh.orn.t %d0, %d0, 24, %d1, 31

# CHECK-INST: sh.orn.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x38,0x00]
sh.orn.t %d0, %d0, 24, %d14, 0

# CHECK-INST: sh.orn.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xb8,0x03]
sh.orn.t %d0, %d0, 24, %d14, 7

# CHECK-INST: sh.orn.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x38,0x0c]
sh.orn.t %d0, %d0, 24, %d14, 24

# CHECK-INST: sh.orn.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xb8,0x0f]
sh.orn.t %d0, %d0, 24, %d14, 31

# CHECK-INST: sh.orn.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x38,0x00]
sh.orn.t %d0, %d0, 24, %d15, 0

# CHECK-INST: sh.orn.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xb8,0x03]
sh.orn.t %d0, %d0, 24, %d15, 7

# CHECK-INST: sh.orn.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x38,0x0c]
sh.orn.t %d0, %d0, 24, %d15, 24

# CHECK-INST: sh.orn.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xb8,0x0f]
sh.orn.t %d0, %d0, 24, %d15, 31

# CHECK-INST: sh.orn.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x3f,0x00]
sh.orn.t %d0, %d0, 31, %d0, 0

# CHECK-INST: sh.orn.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xbf,0x03]
sh.orn.t %d0, %d0, 31, %d0, 7

# CHECK-INST: sh.orn.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x3f,0x0c]
sh.orn.t %d0, %d0, 31, %d0, 24

# CHECK-INST: sh.orn.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xbf,0x0f]
sh.orn.t %d0, %d0, 31, %d0, 31

# CHECK-INST: sh.orn.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x3f,0x00]
sh.orn.t %d0, %d0, 31, %d1, 0

# CHECK-INST: sh.orn.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xbf,0x03]
sh.orn.t %d0, %d0, 31, %d1, 7

# CHECK-INST: sh.orn.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x3f,0x0c]
sh.orn.t %d0, %d0, 31, %d1, 24

# CHECK-INST: sh.orn.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xbf,0x0f]
sh.orn.t %d0, %d0, 31, %d1, 31

# CHECK-INST: sh.orn.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x3f,0x00]
sh.orn.t %d0, %d0, 31, %d14, 0

# CHECK-INST: sh.orn.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xbf,0x03]
sh.orn.t %d0, %d0, 31, %d14, 7

# CHECK-INST: sh.orn.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x3f,0x0c]
sh.orn.t %d0, %d0, 31, %d14, 24

# CHECK-INST: sh.orn.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xbf,0x0f]
sh.orn.t %d0, %d0, 31, %d14, 31

# CHECK-INST: sh.orn.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x3f,0x00]
sh.orn.t %d0, %d0, 31, %d15, 0

# CHECK-INST: sh.orn.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xbf,0x03]
sh.orn.t %d0, %d0, 31, %d15, 7

# CHECK-INST: sh.orn.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x3f,0x0c]
sh.orn.t %d0, %d0, 31, %d15, 24

# CHECK-INST: sh.orn.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xbf,0x0f]
sh.orn.t %d0, %d0, 31, %d15, 31

# CHECK-INST: sh.orn.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x20,0x00]
sh.orn.t %d0, %d1, 0, %d0, 0

# CHECK-INST: sh.orn.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xa0,0x03]
sh.orn.t %d0, %d1, 0, %d0, 7

# CHECK-INST: sh.orn.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x20,0x0c]
sh.orn.t %d0, %d1, 0, %d0, 24

# CHECK-INST: sh.orn.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xa0,0x0f]
sh.orn.t %d0, %d1, 0, %d0, 31

# CHECK-INST: sh.orn.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x20,0x00]
sh.orn.t %d0, %d1, 0, %d1, 0

# CHECK-INST: sh.orn.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xa0,0x03]
sh.orn.t %d0, %d1, 0, %d1, 7

# CHECK-INST: sh.orn.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x20,0x0c]
sh.orn.t %d0, %d1, 0, %d1, 24

# CHECK-INST: sh.orn.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xa0,0x0f]
sh.orn.t %d0, %d1, 0, %d1, 31

# CHECK-INST: sh.orn.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x20,0x00]
sh.orn.t %d0, %d1, 0, %d14, 0

# CHECK-INST: sh.orn.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xa0,0x03]
sh.orn.t %d0, %d1, 0, %d14, 7

# CHECK-INST: sh.orn.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x20,0x0c]
sh.orn.t %d0, %d1, 0, %d14, 24

# CHECK-INST: sh.orn.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xa0,0x0f]
sh.orn.t %d0, %d1, 0, %d14, 31

# CHECK-INST: sh.orn.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x20,0x00]
sh.orn.t %d0, %d1, 0, %d15, 0

# CHECK-INST: sh.orn.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xa0,0x03]
sh.orn.t %d0, %d1, 0, %d15, 7

# CHECK-INST: sh.orn.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x20,0x0c]
sh.orn.t %d0, %d1, 0, %d15, 24

# CHECK-INST: sh.orn.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xa0,0x0f]
sh.orn.t %d0, %d1, 0, %d15, 31

# CHECK-INST: sh.orn.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x27,0x00]
sh.orn.t %d0, %d1, 7, %d0, 0

# CHECK-INST: sh.orn.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xa7,0x03]
sh.orn.t %d0, %d1, 7, %d0, 7

# CHECK-INST: sh.orn.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x27,0x0c]
sh.orn.t %d0, %d1, 7, %d0, 24

# CHECK-INST: sh.orn.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xa7,0x0f]
sh.orn.t %d0, %d1, 7, %d0, 31

# CHECK-INST: sh.orn.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x27,0x00]
sh.orn.t %d0, %d1, 7, %d1, 0

# CHECK-INST: sh.orn.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xa7,0x03]
sh.orn.t %d0, %d1, 7, %d1, 7

# CHECK-INST: sh.orn.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x27,0x0c]
sh.orn.t %d0, %d1, 7, %d1, 24

# CHECK-INST: sh.orn.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xa7,0x0f]
sh.orn.t %d0, %d1, 7, %d1, 31

# CHECK-INST: sh.orn.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x27,0x00]
sh.orn.t %d0, %d1, 7, %d14, 0

# CHECK-INST: sh.orn.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xa7,0x03]
sh.orn.t %d0, %d1, 7, %d14, 7

# CHECK-INST: sh.orn.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x27,0x0c]
sh.orn.t %d0, %d1, 7, %d14, 24

# CHECK-INST: sh.orn.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xa7,0x0f]
sh.orn.t %d0, %d1, 7, %d14, 31

# CHECK-INST: sh.orn.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x27,0x00]
sh.orn.t %d0, %d1, 7, %d15, 0

# CHECK-INST: sh.orn.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xa7,0x03]
sh.orn.t %d0, %d1, 7, %d15, 7

# CHECK-INST: sh.orn.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x27,0x0c]
sh.orn.t %d0, %d1, 7, %d15, 24

# CHECK-INST: sh.orn.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xa7,0x0f]
sh.orn.t %d0, %d1, 7, %d15, 31

# CHECK-INST: sh.orn.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x38,0x00]
sh.orn.t %d0, %d1, 24, %d0, 0

# CHECK-INST: sh.orn.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xb8,0x03]
sh.orn.t %d0, %d1, 24, %d0, 7

# CHECK-INST: sh.orn.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x38,0x0c]
sh.orn.t %d0, %d1, 24, %d0, 24

# CHECK-INST: sh.orn.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xb8,0x0f]
sh.orn.t %d0, %d1, 24, %d0, 31

# CHECK-INST: sh.orn.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x38,0x00]
sh.orn.t %d0, %d1, 24, %d1, 0

# CHECK-INST: sh.orn.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xb8,0x03]
sh.orn.t %d0, %d1, 24, %d1, 7

# CHECK-INST: sh.orn.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x38,0x0c]
sh.orn.t %d0, %d1, 24, %d1, 24

# CHECK-INST: sh.orn.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xb8,0x0f]
sh.orn.t %d0, %d1, 24, %d1, 31

# CHECK-INST: sh.orn.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x38,0x00]
sh.orn.t %d0, %d1, 24, %d14, 0

# CHECK-INST: sh.orn.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xb8,0x03]
sh.orn.t %d0, %d1, 24, %d14, 7

# CHECK-INST: sh.orn.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x38,0x0c]
sh.orn.t %d0, %d1, 24, %d14, 24

# CHECK-INST: sh.orn.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xb8,0x0f]
sh.orn.t %d0, %d1, 24, %d14, 31

# CHECK-INST: sh.orn.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x38,0x00]
sh.orn.t %d0, %d1, 24, %d15, 0

# CHECK-INST: sh.orn.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xb8,0x03]
sh.orn.t %d0, %d1, 24, %d15, 7

# CHECK-INST: sh.orn.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x38,0x0c]
sh.orn.t %d0, %d1, 24, %d15, 24

# CHECK-INST: sh.orn.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xb8,0x0f]
sh.orn.t %d0, %d1, 24, %d15, 31

# CHECK-INST: sh.orn.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x3f,0x00]
sh.orn.t %d0, %d1, 31, %d0, 0

# CHECK-INST: sh.orn.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xbf,0x03]
sh.orn.t %d0, %d1, 31, %d0, 7

# CHECK-INST: sh.orn.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x3f,0x0c]
sh.orn.t %d0, %d1, 31, %d0, 24

# CHECK-INST: sh.orn.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xbf,0x0f]
sh.orn.t %d0, %d1, 31, %d0, 31

# CHECK-INST: sh.orn.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x3f,0x00]
sh.orn.t %d0, %d1, 31, %d1, 0

# CHECK-INST: sh.orn.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xbf,0x03]
sh.orn.t %d0, %d1, 31, %d1, 7

# CHECK-INST: sh.orn.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x3f,0x0c]
sh.orn.t %d0, %d1, 31, %d1, 24

# CHECK-INST: sh.orn.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xbf,0x0f]
sh.orn.t %d0, %d1, 31, %d1, 31

# CHECK-INST: sh.orn.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x3f,0x00]
sh.orn.t %d0, %d1, 31, %d14, 0

# CHECK-INST: sh.orn.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xbf,0x03]
sh.orn.t %d0, %d1, 31, %d14, 7

# CHECK-INST: sh.orn.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x3f,0x0c]
sh.orn.t %d0, %d1, 31, %d14, 24

# CHECK-INST: sh.orn.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xbf,0x0f]
sh.orn.t %d0, %d1, 31, %d14, 31

# CHECK-INST: sh.orn.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x3f,0x00]
sh.orn.t %d0, %d1, 31, %d15, 0

# CHECK-INST: sh.orn.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xbf,0x03]
sh.orn.t %d0, %d1, 31, %d15, 7

# CHECK-INST: sh.orn.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x3f,0x0c]
sh.orn.t %d0, %d1, 31, %d15, 24

# CHECK-INST: sh.orn.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xbf,0x0f]
sh.orn.t %d0, %d1, 31, %d15, 31

# CHECK-INST: sh.orn.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x20,0x00]
sh.orn.t %d0, %d14, 0, %d0, 0

# CHECK-INST: sh.orn.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xa0,0x03]
sh.orn.t %d0, %d14, 0, %d0, 7

# CHECK-INST: sh.orn.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x20,0x0c]
sh.orn.t %d0, %d14, 0, %d0, 24

# CHECK-INST: sh.orn.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xa0,0x0f]
sh.orn.t %d0, %d14, 0, %d0, 31

# CHECK-INST: sh.orn.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x20,0x00]
sh.orn.t %d0, %d14, 0, %d1, 0

# CHECK-INST: sh.orn.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xa0,0x03]
sh.orn.t %d0, %d14, 0, %d1, 7

# CHECK-INST: sh.orn.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x20,0x0c]
sh.orn.t %d0, %d14, 0, %d1, 24

# CHECK-INST: sh.orn.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xa0,0x0f]
sh.orn.t %d0, %d14, 0, %d1, 31

# CHECK-INST: sh.orn.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x20,0x00]
sh.orn.t %d0, %d14, 0, %d14, 0

# CHECK-INST: sh.orn.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xa0,0x03]
sh.orn.t %d0, %d14, 0, %d14, 7

# CHECK-INST: sh.orn.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x20,0x0c]
sh.orn.t %d0, %d14, 0, %d14, 24

# CHECK-INST: sh.orn.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xa0,0x0f]
sh.orn.t %d0, %d14, 0, %d14, 31

# CHECK-INST: sh.orn.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x20,0x00]
sh.orn.t %d0, %d14, 0, %d15, 0

# CHECK-INST: sh.orn.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xa0,0x03]
sh.orn.t %d0, %d14, 0, %d15, 7

# CHECK-INST: sh.orn.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x20,0x0c]
sh.orn.t %d0, %d14, 0, %d15, 24

# CHECK-INST: sh.orn.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xa0,0x0f]
sh.orn.t %d0, %d14, 0, %d15, 31

# CHECK-INST: sh.orn.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x27,0x00]
sh.orn.t %d0, %d14, 7, %d0, 0

# CHECK-INST: sh.orn.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xa7,0x03]
sh.orn.t %d0, %d14, 7, %d0, 7

# CHECK-INST: sh.orn.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x27,0x0c]
sh.orn.t %d0, %d14, 7, %d0, 24

# CHECK-INST: sh.orn.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xa7,0x0f]
sh.orn.t %d0, %d14, 7, %d0, 31

# CHECK-INST: sh.orn.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x27,0x00]
sh.orn.t %d0, %d14, 7, %d1, 0

# CHECK-INST: sh.orn.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xa7,0x03]
sh.orn.t %d0, %d14, 7, %d1, 7

# CHECK-INST: sh.orn.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x27,0x0c]
sh.orn.t %d0, %d14, 7, %d1, 24

# CHECK-INST: sh.orn.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xa7,0x0f]
sh.orn.t %d0, %d14, 7, %d1, 31

# CHECK-INST: sh.orn.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x27,0x00]
sh.orn.t %d0, %d14, 7, %d14, 0

# CHECK-INST: sh.orn.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xa7,0x03]
sh.orn.t %d0, %d14, 7, %d14, 7

# CHECK-INST: sh.orn.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x27,0x0c]
sh.orn.t %d0, %d14, 7, %d14, 24

# CHECK-INST: sh.orn.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xa7,0x0f]
sh.orn.t %d0, %d14, 7, %d14, 31

# CHECK-INST: sh.orn.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x27,0x00]
sh.orn.t %d0, %d14, 7, %d15, 0

# CHECK-INST: sh.orn.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xa7,0x03]
sh.orn.t %d0, %d14, 7, %d15, 7

# CHECK-INST: sh.orn.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x27,0x0c]
sh.orn.t %d0, %d14, 7, %d15, 24

# CHECK-INST: sh.orn.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xa7,0x0f]
sh.orn.t %d0, %d14, 7, %d15, 31

# CHECK-INST: sh.orn.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x38,0x00]
sh.orn.t %d0, %d14, 24, %d0, 0

# CHECK-INST: sh.orn.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xb8,0x03]
sh.orn.t %d0, %d14, 24, %d0, 7

# CHECK-INST: sh.orn.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x38,0x0c]
sh.orn.t %d0, %d14, 24, %d0, 24

# CHECK-INST: sh.orn.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xb8,0x0f]
sh.orn.t %d0, %d14, 24, %d0, 31

# CHECK-INST: sh.orn.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x38,0x00]
sh.orn.t %d0, %d14, 24, %d1, 0

# CHECK-INST: sh.orn.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xb8,0x03]
sh.orn.t %d0, %d14, 24, %d1, 7

# CHECK-INST: sh.orn.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x38,0x0c]
sh.orn.t %d0, %d14, 24, %d1, 24

# CHECK-INST: sh.orn.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xb8,0x0f]
sh.orn.t %d0, %d14, 24, %d1, 31

# CHECK-INST: sh.orn.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x38,0x00]
sh.orn.t %d0, %d14, 24, %d14, 0

# CHECK-INST: sh.orn.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xb8,0x03]
sh.orn.t %d0, %d14, 24, %d14, 7

# CHECK-INST: sh.orn.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x38,0x0c]
sh.orn.t %d0, %d14, 24, %d14, 24

# CHECK-INST: sh.orn.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xb8,0x0f]
sh.orn.t %d0, %d14, 24, %d14, 31

# CHECK-INST: sh.orn.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x38,0x00]
sh.orn.t %d0, %d14, 24, %d15, 0

# CHECK-INST: sh.orn.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xb8,0x03]
sh.orn.t %d0, %d14, 24, %d15, 7

# CHECK-INST: sh.orn.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x38,0x0c]
sh.orn.t %d0, %d14, 24, %d15, 24

# CHECK-INST: sh.orn.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xb8,0x0f]
sh.orn.t %d0, %d14, 24, %d15, 31

# CHECK-INST: sh.orn.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x3f,0x00]
sh.orn.t %d0, %d14, 31, %d0, 0

# CHECK-INST: sh.orn.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xbf,0x03]
sh.orn.t %d0, %d14, 31, %d0, 7

# CHECK-INST: sh.orn.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x3f,0x0c]
sh.orn.t %d0, %d14, 31, %d0, 24

# CHECK-INST: sh.orn.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xbf,0x0f]
sh.orn.t %d0, %d14, 31, %d0, 31

# CHECK-INST: sh.orn.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x3f,0x00]
sh.orn.t %d0, %d14, 31, %d1, 0

# CHECK-INST: sh.orn.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xbf,0x03]
sh.orn.t %d0, %d14, 31, %d1, 7

# CHECK-INST: sh.orn.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x3f,0x0c]
sh.orn.t %d0, %d14, 31, %d1, 24

# CHECK-INST: sh.orn.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xbf,0x0f]
sh.orn.t %d0, %d14, 31, %d1, 31

# CHECK-INST: sh.orn.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x3f,0x00]
sh.orn.t %d0, %d14, 31, %d14, 0

# CHECK-INST: sh.orn.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xbf,0x03]
sh.orn.t %d0, %d14, 31, %d14, 7

# CHECK-INST: sh.orn.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x3f,0x0c]
sh.orn.t %d0, %d14, 31, %d14, 24

# CHECK-INST: sh.orn.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xbf,0x0f]
sh.orn.t %d0, %d14, 31, %d14, 31

# CHECK-INST: sh.orn.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x3f,0x00]
sh.orn.t %d0, %d14, 31, %d15, 0

# CHECK-INST: sh.orn.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xbf,0x03]
sh.orn.t %d0, %d14, 31, %d15, 7

# CHECK-INST: sh.orn.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x3f,0x0c]
sh.orn.t %d0, %d14, 31, %d15, 24

# CHECK-INST: sh.orn.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xbf,0x0f]
sh.orn.t %d0, %d14, 31, %d15, 31

# CHECK-INST: sh.orn.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x20,0x00]
sh.orn.t %d0, %d15, 0, %d0, 0

# CHECK-INST: sh.orn.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xa0,0x03]
sh.orn.t %d0, %d15, 0, %d0, 7

# CHECK-INST: sh.orn.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x20,0x0c]
sh.orn.t %d0, %d15, 0, %d0, 24

# CHECK-INST: sh.orn.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xa0,0x0f]
sh.orn.t %d0, %d15, 0, %d0, 31

# CHECK-INST: sh.orn.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x20,0x00]
sh.orn.t %d0, %d15, 0, %d1, 0

# CHECK-INST: sh.orn.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xa0,0x03]
sh.orn.t %d0, %d15, 0, %d1, 7

# CHECK-INST: sh.orn.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x20,0x0c]
sh.orn.t %d0, %d15, 0, %d1, 24

# CHECK-INST: sh.orn.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xa0,0x0f]
sh.orn.t %d0, %d15, 0, %d1, 31

# CHECK-INST: sh.orn.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x20,0x00]
sh.orn.t %d0, %d15, 0, %d14, 0

# CHECK-INST: sh.orn.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xa0,0x03]
sh.orn.t %d0, %d15, 0, %d14, 7

# CHECK-INST: sh.orn.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x20,0x0c]
sh.orn.t %d0, %d15, 0, %d14, 24

# CHECK-INST: sh.orn.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xa0,0x0f]
sh.orn.t %d0, %d15, 0, %d14, 31

# CHECK-INST: sh.orn.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x20,0x00]
sh.orn.t %d0, %d15, 0, %d15, 0

# CHECK-INST: sh.orn.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xa0,0x03]
sh.orn.t %d0, %d15, 0, %d15, 7

# CHECK-INST: sh.orn.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x20,0x0c]
sh.orn.t %d0, %d15, 0, %d15, 24

# CHECK-INST: sh.orn.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xa0,0x0f]
sh.orn.t %d0, %d15, 0, %d15, 31

# CHECK-INST: sh.orn.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x27,0x00]
sh.orn.t %d0, %d15, 7, %d0, 0

# CHECK-INST: sh.orn.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xa7,0x03]
sh.orn.t %d0, %d15, 7, %d0, 7

# CHECK-INST: sh.orn.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x27,0x0c]
sh.orn.t %d0, %d15, 7, %d0, 24

# CHECK-INST: sh.orn.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xa7,0x0f]
sh.orn.t %d0, %d15, 7, %d0, 31

# CHECK-INST: sh.orn.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x27,0x00]
sh.orn.t %d0, %d15, 7, %d1, 0

# CHECK-INST: sh.orn.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xa7,0x03]
sh.orn.t %d0, %d15, 7, %d1, 7

# CHECK-INST: sh.orn.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x27,0x0c]
sh.orn.t %d0, %d15, 7, %d1, 24

# CHECK-INST: sh.orn.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xa7,0x0f]
sh.orn.t %d0, %d15, 7, %d1, 31

# CHECK-INST: sh.orn.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x27,0x00]
sh.orn.t %d0, %d15, 7, %d14, 0

# CHECK-INST: sh.orn.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xa7,0x03]
sh.orn.t %d0, %d15, 7, %d14, 7

# CHECK-INST: sh.orn.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x27,0x0c]
sh.orn.t %d0, %d15, 7, %d14, 24

# CHECK-INST: sh.orn.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xa7,0x0f]
sh.orn.t %d0, %d15, 7, %d14, 31

# CHECK-INST: sh.orn.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x27,0x00]
sh.orn.t %d0, %d15, 7, %d15, 0

# CHECK-INST: sh.orn.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xa7,0x03]
sh.orn.t %d0, %d15, 7, %d15, 7

# CHECK-INST: sh.orn.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x27,0x0c]
sh.orn.t %d0, %d15, 7, %d15, 24

# CHECK-INST: sh.orn.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xa7,0x0f]
sh.orn.t %d0, %d15, 7, %d15, 31

# CHECK-INST: sh.orn.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x38,0x00]
sh.orn.t %d0, %d15, 24, %d0, 0

# CHECK-INST: sh.orn.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xb8,0x03]
sh.orn.t %d0, %d15, 24, %d0, 7

# CHECK-INST: sh.orn.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x38,0x0c]
sh.orn.t %d0, %d15, 24, %d0, 24

# CHECK-INST: sh.orn.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xb8,0x0f]
sh.orn.t %d0, %d15, 24, %d0, 31

# CHECK-INST: sh.orn.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x38,0x00]
sh.orn.t %d0, %d15, 24, %d1, 0

# CHECK-INST: sh.orn.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xb8,0x03]
sh.orn.t %d0, %d15, 24, %d1, 7

# CHECK-INST: sh.orn.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x38,0x0c]
sh.orn.t %d0, %d15, 24, %d1, 24

# CHECK-INST: sh.orn.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xb8,0x0f]
sh.orn.t %d0, %d15, 24, %d1, 31

# CHECK-INST: sh.orn.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x38,0x00]
sh.orn.t %d0, %d15, 24, %d14, 0

# CHECK-INST: sh.orn.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xb8,0x03]
sh.orn.t %d0, %d15, 24, %d14, 7

# CHECK-INST: sh.orn.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x38,0x0c]
sh.orn.t %d0, %d15, 24, %d14, 24

# CHECK-INST: sh.orn.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xb8,0x0f]
sh.orn.t %d0, %d15, 24, %d14, 31

# CHECK-INST: sh.orn.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x38,0x00]
sh.orn.t %d0, %d15, 24, %d15, 0

# CHECK-INST: sh.orn.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xb8,0x03]
sh.orn.t %d0, %d15, 24, %d15, 7

# CHECK-INST: sh.orn.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x38,0x0c]
sh.orn.t %d0, %d15, 24, %d15, 24

# CHECK-INST: sh.orn.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xb8,0x0f]
sh.orn.t %d0, %d15, 24, %d15, 31

# CHECK-INST: sh.orn.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x3f,0x00]
sh.orn.t %d0, %d15, 31, %d0, 0

# CHECK-INST: sh.orn.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xbf,0x03]
sh.orn.t %d0, %d15, 31, %d0, 7

# CHECK-INST: sh.orn.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x3f,0x0c]
sh.orn.t %d0, %d15, 31, %d0, 24

# CHECK-INST: sh.orn.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xbf,0x0f]
sh.orn.t %d0, %d15, 31, %d0, 31

# CHECK-INST: sh.orn.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x3f,0x00]
sh.orn.t %d0, %d15, 31, %d1, 0

# CHECK-INST: sh.orn.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xbf,0x03]
sh.orn.t %d0, %d15, 31, %d1, 7

# CHECK-INST: sh.orn.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x3f,0x0c]
sh.orn.t %d0, %d15, 31, %d1, 24

# CHECK-INST: sh.orn.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xbf,0x0f]
sh.orn.t %d0, %d15, 31, %d1, 31

# CHECK-INST: sh.orn.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x3f,0x00]
sh.orn.t %d0, %d15, 31, %d14, 0

# CHECK-INST: sh.orn.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xbf,0x03]
sh.orn.t %d0, %d15, 31, %d14, 7

# CHECK-INST: sh.orn.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x3f,0x0c]
sh.orn.t %d0, %d15, 31, %d14, 24

# CHECK-INST: sh.orn.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xbf,0x0f]
sh.orn.t %d0, %d15, 31, %d14, 31

# CHECK-INST: sh.orn.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x3f,0x00]
sh.orn.t %d0, %d15, 31, %d15, 0

# CHECK-INST: sh.orn.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xbf,0x03]
sh.orn.t %d0, %d15, 31, %d15, 7

# CHECK-INST: sh.orn.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x3f,0x0c]
sh.orn.t %d0, %d15, 31, %d15, 24

# CHECK-INST: sh.orn.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xbf,0x0f]
sh.orn.t %d0, %d15, 31, %d15, 31

# CHECK-INST: sh.orn.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x20,0x10]
sh.orn.t %d1, %d0, 0, %d0, 0

# CHECK-INST: sh.orn.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xa0,0x13]
sh.orn.t %d1, %d0, 0, %d0, 7

# CHECK-INST: sh.orn.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x20,0x1c]
sh.orn.t %d1, %d0, 0, %d0, 24

# CHECK-INST: sh.orn.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xa0,0x1f]
sh.orn.t %d1, %d0, 0, %d0, 31

# CHECK-INST: sh.orn.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x20,0x10]
sh.orn.t %d1, %d0, 0, %d1, 0

# CHECK-INST: sh.orn.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xa0,0x13]
sh.orn.t %d1, %d0, 0, %d1, 7

# CHECK-INST: sh.orn.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x20,0x1c]
sh.orn.t %d1, %d0, 0, %d1, 24

# CHECK-INST: sh.orn.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xa0,0x1f]
sh.orn.t %d1, %d0, 0, %d1, 31

# CHECK-INST: sh.orn.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x20,0x10]
sh.orn.t %d1, %d0, 0, %d14, 0

# CHECK-INST: sh.orn.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xa0,0x13]
sh.orn.t %d1, %d0, 0, %d14, 7

# CHECK-INST: sh.orn.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x20,0x1c]
sh.orn.t %d1, %d0, 0, %d14, 24

# CHECK-INST: sh.orn.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xa0,0x1f]
sh.orn.t %d1, %d0, 0, %d14, 31

# CHECK-INST: sh.orn.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x20,0x10]
sh.orn.t %d1, %d0, 0, %d15, 0

# CHECK-INST: sh.orn.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xa0,0x13]
sh.orn.t %d1, %d0, 0, %d15, 7

# CHECK-INST: sh.orn.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x20,0x1c]
sh.orn.t %d1, %d0, 0, %d15, 24

# CHECK-INST: sh.orn.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xa0,0x1f]
sh.orn.t %d1, %d0, 0, %d15, 31

# CHECK-INST: sh.orn.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x27,0x10]
sh.orn.t %d1, %d0, 7, %d0, 0

# CHECK-INST: sh.orn.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xa7,0x13]
sh.orn.t %d1, %d0, 7, %d0, 7

# CHECK-INST: sh.orn.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x27,0x1c]
sh.orn.t %d1, %d0, 7, %d0, 24

# CHECK-INST: sh.orn.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xa7,0x1f]
sh.orn.t %d1, %d0, 7, %d0, 31

# CHECK-INST: sh.orn.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x27,0x10]
sh.orn.t %d1, %d0, 7, %d1, 0

# CHECK-INST: sh.orn.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xa7,0x13]
sh.orn.t %d1, %d0, 7, %d1, 7

# CHECK-INST: sh.orn.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x27,0x1c]
sh.orn.t %d1, %d0, 7, %d1, 24

# CHECK-INST: sh.orn.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xa7,0x1f]
sh.orn.t %d1, %d0, 7, %d1, 31

# CHECK-INST: sh.orn.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x27,0x10]
sh.orn.t %d1, %d0, 7, %d14, 0

# CHECK-INST: sh.orn.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xa7,0x13]
sh.orn.t %d1, %d0, 7, %d14, 7

# CHECK-INST: sh.orn.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x27,0x1c]
sh.orn.t %d1, %d0, 7, %d14, 24

# CHECK-INST: sh.orn.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xa7,0x1f]
sh.orn.t %d1, %d0, 7, %d14, 31

# CHECK-INST: sh.orn.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x27,0x10]
sh.orn.t %d1, %d0, 7, %d15, 0

# CHECK-INST: sh.orn.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xa7,0x13]
sh.orn.t %d1, %d0, 7, %d15, 7

# CHECK-INST: sh.orn.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x27,0x1c]
sh.orn.t %d1, %d0, 7, %d15, 24

# CHECK-INST: sh.orn.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xa7,0x1f]
sh.orn.t %d1, %d0, 7, %d15, 31

# CHECK-INST: sh.orn.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x38,0x10]
sh.orn.t %d1, %d0, 24, %d0, 0

# CHECK-INST: sh.orn.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xb8,0x13]
sh.orn.t %d1, %d0, 24, %d0, 7

# CHECK-INST: sh.orn.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x38,0x1c]
sh.orn.t %d1, %d0, 24, %d0, 24

# CHECK-INST: sh.orn.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xb8,0x1f]
sh.orn.t %d1, %d0, 24, %d0, 31

# CHECK-INST: sh.orn.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x38,0x10]
sh.orn.t %d1, %d0, 24, %d1, 0

# CHECK-INST: sh.orn.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xb8,0x13]
sh.orn.t %d1, %d0, 24, %d1, 7

# CHECK-INST: sh.orn.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x38,0x1c]
sh.orn.t %d1, %d0, 24, %d1, 24

# CHECK-INST: sh.orn.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xb8,0x1f]
sh.orn.t %d1, %d0, 24, %d1, 31

# CHECK-INST: sh.orn.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x38,0x10]
sh.orn.t %d1, %d0, 24, %d14, 0

# CHECK-INST: sh.orn.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xb8,0x13]
sh.orn.t %d1, %d0, 24, %d14, 7

# CHECK-INST: sh.orn.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x38,0x1c]
sh.orn.t %d1, %d0, 24, %d14, 24

# CHECK-INST: sh.orn.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xb8,0x1f]
sh.orn.t %d1, %d0, 24, %d14, 31

# CHECK-INST: sh.orn.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x38,0x10]
sh.orn.t %d1, %d0, 24, %d15, 0

# CHECK-INST: sh.orn.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xb8,0x13]
sh.orn.t %d1, %d0, 24, %d15, 7

# CHECK-INST: sh.orn.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x38,0x1c]
sh.orn.t %d1, %d0, 24, %d15, 24

# CHECK-INST: sh.orn.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xb8,0x1f]
sh.orn.t %d1, %d0, 24, %d15, 31

# CHECK-INST: sh.orn.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x3f,0x10]
sh.orn.t %d1, %d0, 31, %d0, 0

# CHECK-INST: sh.orn.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xbf,0x13]
sh.orn.t %d1, %d0, 31, %d0, 7

# CHECK-INST: sh.orn.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x3f,0x1c]
sh.orn.t %d1, %d0, 31, %d0, 24

# CHECK-INST: sh.orn.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xbf,0x1f]
sh.orn.t %d1, %d0, 31, %d0, 31

# CHECK-INST: sh.orn.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x3f,0x10]
sh.orn.t %d1, %d0, 31, %d1, 0

# CHECK-INST: sh.orn.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xbf,0x13]
sh.orn.t %d1, %d0, 31, %d1, 7

# CHECK-INST: sh.orn.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x3f,0x1c]
sh.orn.t %d1, %d0, 31, %d1, 24

# CHECK-INST: sh.orn.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xbf,0x1f]
sh.orn.t %d1, %d0, 31, %d1, 31

# CHECK-INST: sh.orn.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x3f,0x10]
sh.orn.t %d1, %d0, 31, %d14, 0

# CHECK-INST: sh.orn.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xbf,0x13]
sh.orn.t %d1, %d0, 31, %d14, 7

# CHECK-INST: sh.orn.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x3f,0x1c]
sh.orn.t %d1, %d0, 31, %d14, 24

# CHECK-INST: sh.orn.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xbf,0x1f]
sh.orn.t %d1, %d0, 31, %d14, 31

# CHECK-INST: sh.orn.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x3f,0x10]
sh.orn.t %d1, %d0, 31, %d15, 0

# CHECK-INST: sh.orn.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xbf,0x13]
sh.orn.t %d1, %d0, 31, %d15, 7

# CHECK-INST: sh.orn.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x3f,0x1c]
sh.orn.t %d1, %d0, 31, %d15, 24

# CHECK-INST: sh.orn.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xbf,0x1f]
sh.orn.t %d1, %d0, 31, %d15, 31

# CHECK-INST: sh.orn.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x20,0x10]
sh.orn.t %d1, %d1, 0, %d0, 0

# CHECK-INST: sh.orn.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xa0,0x13]
sh.orn.t %d1, %d1, 0, %d0, 7

# CHECK-INST: sh.orn.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x20,0x1c]
sh.orn.t %d1, %d1, 0, %d0, 24

# CHECK-INST: sh.orn.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xa0,0x1f]
sh.orn.t %d1, %d1, 0, %d0, 31

# CHECK-INST: sh.orn.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x20,0x10]
sh.orn.t %d1, %d1, 0, %d1, 0

# CHECK-INST: sh.orn.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xa0,0x13]
sh.orn.t %d1, %d1, 0, %d1, 7

# CHECK-INST: sh.orn.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x20,0x1c]
sh.orn.t %d1, %d1, 0, %d1, 24

# CHECK-INST: sh.orn.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xa0,0x1f]
sh.orn.t %d1, %d1, 0, %d1, 31

# CHECK-INST: sh.orn.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x20,0x10]
sh.orn.t %d1, %d1, 0, %d14, 0

# CHECK-INST: sh.orn.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xa0,0x13]
sh.orn.t %d1, %d1, 0, %d14, 7

# CHECK-INST: sh.orn.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x20,0x1c]
sh.orn.t %d1, %d1, 0, %d14, 24

# CHECK-INST: sh.orn.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xa0,0x1f]
sh.orn.t %d1, %d1, 0, %d14, 31

# CHECK-INST: sh.orn.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x20,0x10]
sh.orn.t %d1, %d1, 0, %d15, 0

# CHECK-INST: sh.orn.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xa0,0x13]
sh.orn.t %d1, %d1, 0, %d15, 7

# CHECK-INST: sh.orn.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x20,0x1c]
sh.orn.t %d1, %d1, 0, %d15, 24

# CHECK-INST: sh.orn.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xa0,0x1f]
sh.orn.t %d1, %d1, 0, %d15, 31

# CHECK-INST: sh.orn.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x27,0x10]
sh.orn.t %d1, %d1, 7, %d0, 0

# CHECK-INST: sh.orn.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xa7,0x13]
sh.orn.t %d1, %d1, 7, %d0, 7

# CHECK-INST: sh.orn.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x27,0x1c]
sh.orn.t %d1, %d1, 7, %d0, 24

# CHECK-INST: sh.orn.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xa7,0x1f]
sh.orn.t %d1, %d1, 7, %d0, 31

# CHECK-INST: sh.orn.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x27,0x10]
sh.orn.t %d1, %d1, 7, %d1, 0

# CHECK-INST: sh.orn.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xa7,0x13]
sh.orn.t %d1, %d1, 7, %d1, 7

# CHECK-INST: sh.orn.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x27,0x1c]
sh.orn.t %d1, %d1, 7, %d1, 24

# CHECK-INST: sh.orn.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xa7,0x1f]
sh.orn.t %d1, %d1, 7, %d1, 31

# CHECK-INST: sh.orn.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x27,0x10]
sh.orn.t %d1, %d1, 7, %d14, 0

# CHECK-INST: sh.orn.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xa7,0x13]
sh.orn.t %d1, %d1, 7, %d14, 7

# CHECK-INST: sh.orn.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x27,0x1c]
sh.orn.t %d1, %d1, 7, %d14, 24

# CHECK-INST: sh.orn.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xa7,0x1f]
sh.orn.t %d1, %d1, 7, %d14, 31

# CHECK-INST: sh.orn.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x27,0x10]
sh.orn.t %d1, %d1, 7, %d15, 0

# CHECK-INST: sh.orn.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xa7,0x13]
sh.orn.t %d1, %d1, 7, %d15, 7

# CHECK-INST: sh.orn.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x27,0x1c]
sh.orn.t %d1, %d1, 7, %d15, 24

# CHECK-INST: sh.orn.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xa7,0x1f]
sh.orn.t %d1, %d1, 7, %d15, 31

# CHECK-INST: sh.orn.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x38,0x10]
sh.orn.t %d1, %d1, 24, %d0, 0

# CHECK-INST: sh.orn.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xb8,0x13]
sh.orn.t %d1, %d1, 24, %d0, 7

# CHECK-INST: sh.orn.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x38,0x1c]
sh.orn.t %d1, %d1, 24, %d0, 24

# CHECK-INST: sh.orn.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xb8,0x1f]
sh.orn.t %d1, %d1, 24, %d0, 31

# CHECK-INST: sh.orn.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x38,0x10]
sh.orn.t %d1, %d1, 24, %d1, 0

# CHECK-INST: sh.orn.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xb8,0x13]
sh.orn.t %d1, %d1, 24, %d1, 7

# CHECK-INST: sh.orn.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x38,0x1c]
sh.orn.t %d1, %d1, 24, %d1, 24

# CHECK-INST: sh.orn.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xb8,0x1f]
sh.orn.t %d1, %d1, 24, %d1, 31

# CHECK-INST: sh.orn.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x38,0x10]
sh.orn.t %d1, %d1, 24, %d14, 0

# CHECK-INST: sh.orn.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xb8,0x13]
sh.orn.t %d1, %d1, 24, %d14, 7

# CHECK-INST: sh.orn.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x38,0x1c]
sh.orn.t %d1, %d1, 24, %d14, 24

# CHECK-INST: sh.orn.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xb8,0x1f]
sh.orn.t %d1, %d1, 24, %d14, 31

# CHECK-INST: sh.orn.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x38,0x10]
sh.orn.t %d1, %d1, 24, %d15, 0

# CHECK-INST: sh.orn.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xb8,0x13]
sh.orn.t %d1, %d1, 24, %d15, 7

# CHECK-INST: sh.orn.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x38,0x1c]
sh.orn.t %d1, %d1, 24, %d15, 24

# CHECK-INST: sh.orn.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xb8,0x1f]
sh.orn.t %d1, %d1, 24, %d15, 31

# CHECK-INST: sh.orn.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x3f,0x10]
sh.orn.t %d1, %d1, 31, %d0, 0

# CHECK-INST: sh.orn.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xbf,0x13]
sh.orn.t %d1, %d1, 31, %d0, 7

# CHECK-INST: sh.orn.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x3f,0x1c]
sh.orn.t %d1, %d1, 31, %d0, 24

# CHECK-INST: sh.orn.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xbf,0x1f]
sh.orn.t %d1, %d1, 31, %d0, 31

# CHECK-INST: sh.orn.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x3f,0x10]
sh.orn.t %d1, %d1, 31, %d1, 0

# CHECK-INST: sh.orn.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xbf,0x13]
sh.orn.t %d1, %d1, 31, %d1, 7

# CHECK-INST: sh.orn.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x3f,0x1c]
sh.orn.t %d1, %d1, 31, %d1, 24

# CHECK-INST: sh.orn.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xbf,0x1f]
sh.orn.t %d1, %d1, 31, %d1, 31

# CHECK-INST: sh.orn.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x3f,0x10]
sh.orn.t %d1, %d1, 31, %d14, 0

# CHECK-INST: sh.orn.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xbf,0x13]
sh.orn.t %d1, %d1, 31, %d14, 7

# CHECK-INST: sh.orn.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x3f,0x1c]
sh.orn.t %d1, %d1, 31, %d14, 24

# CHECK-INST: sh.orn.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xbf,0x1f]
sh.orn.t %d1, %d1, 31, %d14, 31

# CHECK-INST: sh.orn.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x3f,0x10]
sh.orn.t %d1, %d1, 31, %d15, 0

# CHECK-INST: sh.orn.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xbf,0x13]
sh.orn.t %d1, %d1, 31, %d15, 7

# CHECK-INST: sh.orn.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x3f,0x1c]
sh.orn.t %d1, %d1, 31, %d15, 24

# CHECK-INST: sh.orn.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xbf,0x1f]
sh.orn.t %d1, %d1, 31, %d15, 31

# CHECK-INST: sh.orn.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x20,0x10]
sh.orn.t %d1, %d14, 0, %d0, 0

# CHECK-INST: sh.orn.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xa0,0x13]
sh.orn.t %d1, %d14, 0, %d0, 7

# CHECK-INST: sh.orn.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x20,0x1c]
sh.orn.t %d1, %d14, 0, %d0, 24

# CHECK-INST: sh.orn.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xa0,0x1f]
sh.orn.t %d1, %d14, 0, %d0, 31

# CHECK-INST: sh.orn.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x20,0x10]
sh.orn.t %d1, %d14, 0, %d1, 0

# CHECK-INST: sh.orn.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xa0,0x13]
sh.orn.t %d1, %d14, 0, %d1, 7

# CHECK-INST: sh.orn.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x20,0x1c]
sh.orn.t %d1, %d14, 0, %d1, 24

# CHECK-INST: sh.orn.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xa0,0x1f]
sh.orn.t %d1, %d14, 0, %d1, 31

# CHECK-INST: sh.orn.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x20,0x10]
sh.orn.t %d1, %d14, 0, %d14, 0

# CHECK-INST: sh.orn.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xa0,0x13]
sh.orn.t %d1, %d14, 0, %d14, 7

# CHECK-INST: sh.orn.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x20,0x1c]
sh.orn.t %d1, %d14, 0, %d14, 24

# CHECK-INST: sh.orn.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xa0,0x1f]
sh.orn.t %d1, %d14, 0, %d14, 31

# CHECK-INST: sh.orn.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x20,0x10]
sh.orn.t %d1, %d14, 0, %d15, 0

# CHECK-INST: sh.orn.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xa0,0x13]
sh.orn.t %d1, %d14, 0, %d15, 7

# CHECK-INST: sh.orn.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x20,0x1c]
sh.orn.t %d1, %d14, 0, %d15, 24

# CHECK-INST: sh.orn.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xa0,0x1f]
sh.orn.t %d1, %d14, 0, %d15, 31

# CHECK-INST: sh.orn.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x27,0x10]
sh.orn.t %d1, %d14, 7, %d0, 0

# CHECK-INST: sh.orn.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xa7,0x13]
sh.orn.t %d1, %d14, 7, %d0, 7

# CHECK-INST: sh.orn.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x27,0x1c]
sh.orn.t %d1, %d14, 7, %d0, 24

# CHECK-INST: sh.orn.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xa7,0x1f]
sh.orn.t %d1, %d14, 7, %d0, 31

# CHECK-INST: sh.orn.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x27,0x10]
sh.orn.t %d1, %d14, 7, %d1, 0

# CHECK-INST: sh.orn.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xa7,0x13]
sh.orn.t %d1, %d14, 7, %d1, 7

# CHECK-INST: sh.orn.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x27,0x1c]
sh.orn.t %d1, %d14, 7, %d1, 24

# CHECK-INST: sh.orn.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xa7,0x1f]
sh.orn.t %d1, %d14, 7, %d1, 31

# CHECK-INST: sh.orn.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x27,0x10]
sh.orn.t %d1, %d14, 7, %d14, 0

# CHECK-INST: sh.orn.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xa7,0x13]
sh.orn.t %d1, %d14, 7, %d14, 7

# CHECK-INST: sh.orn.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x27,0x1c]
sh.orn.t %d1, %d14, 7, %d14, 24

# CHECK-INST: sh.orn.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xa7,0x1f]
sh.orn.t %d1, %d14, 7, %d14, 31

# CHECK-INST: sh.orn.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x27,0x10]
sh.orn.t %d1, %d14, 7, %d15, 0

# CHECK-INST: sh.orn.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xa7,0x13]
sh.orn.t %d1, %d14, 7, %d15, 7

# CHECK-INST: sh.orn.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x27,0x1c]
sh.orn.t %d1, %d14, 7, %d15, 24

# CHECK-INST: sh.orn.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xa7,0x1f]
sh.orn.t %d1, %d14, 7, %d15, 31

# CHECK-INST: sh.orn.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x38,0x10]
sh.orn.t %d1, %d14, 24, %d0, 0

# CHECK-INST: sh.orn.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xb8,0x13]
sh.orn.t %d1, %d14, 24, %d0, 7

# CHECK-INST: sh.orn.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x38,0x1c]
sh.orn.t %d1, %d14, 24, %d0, 24

# CHECK-INST: sh.orn.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xb8,0x1f]
sh.orn.t %d1, %d14, 24, %d0, 31

# CHECK-INST: sh.orn.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x38,0x10]
sh.orn.t %d1, %d14, 24, %d1, 0

# CHECK-INST: sh.orn.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xb8,0x13]
sh.orn.t %d1, %d14, 24, %d1, 7

# CHECK-INST: sh.orn.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x38,0x1c]
sh.orn.t %d1, %d14, 24, %d1, 24

# CHECK-INST: sh.orn.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xb8,0x1f]
sh.orn.t %d1, %d14, 24, %d1, 31

# CHECK-INST: sh.orn.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x38,0x10]
sh.orn.t %d1, %d14, 24, %d14, 0

# CHECK-INST: sh.orn.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xb8,0x13]
sh.orn.t %d1, %d14, 24, %d14, 7

# CHECK-INST: sh.orn.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x38,0x1c]
sh.orn.t %d1, %d14, 24, %d14, 24

# CHECK-INST: sh.orn.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xb8,0x1f]
sh.orn.t %d1, %d14, 24, %d14, 31

# CHECK-INST: sh.orn.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x38,0x10]
sh.orn.t %d1, %d14, 24, %d15, 0

# CHECK-INST: sh.orn.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xb8,0x13]
sh.orn.t %d1, %d14, 24, %d15, 7

# CHECK-INST: sh.orn.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x38,0x1c]
sh.orn.t %d1, %d14, 24, %d15, 24

# CHECK-INST: sh.orn.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xb8,0x1f]
sh.orn.t %d1, %d14, 24, %d15, 31

# CHECK-INST: sh.orn.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x3f,0x10]
sh.orn.t %d1, %d14, 31, %d0, 0

# CHECK-INST: sh.orn.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xbf,0x13]
sh.orn.t %d1, %d14, 31, %d0, 7

# CHECK-INST: sh.orn.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x3f,0x1c]
sh.orn.t %d1, %d14, 31, %d0, 24

# CHECK-INST: sh.orn.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xbf,0x1f]
sh.orn.t %d1, %d14, 31, %d0, 31

# CHECK-INST: sh.orn.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x3f,0x10]
sh.orn.t %d1, %d14, 31, %d1, 0

# CHECK-INST: sh.orn.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xbf,0x13]
sh.orn.t %d1, %d14, 31, %d1, 7

# CHECK-INST: sh.orn.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x3f,0x1c]
sh.orn.t %d1, %d14, 31, %d1, 24

# CHECK-INST: sh.orn.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xbf,0x1f]
sh.orn.t %d1, %d14, 31, %d1, 31

# CHECK-INST: sh.orn.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x3f,0x10]
sh.orn.t %d1, %d14, 31, %d14, 0

# CHECK-INST: sh.orn.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xbf,0x13]
sh.orn.t %d1, %d14, 31, %d14, 7

# CHECK-INST: sh.orn.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x3f,0x1c]
sh.orn.t %d1, %d14, 31, %d14, 24

# CHECK-INST: sh.orn.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xbf,0x1f]
sh.orn.t %d1, %d14, 31, %d14, 31

# CHECK-INST: sh.orn.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x3f,0x10]
sh.orn.t %d1, %d14, 31, %d15, 0

# CHECK-INST: sh.orn.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xbf,0x13]
sh.orn.t %d1, %d14, 31, %d15, 7

# CHECK-INST: sh.orn.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x3f,0x1c]
sh.orn.t %d1, %d14, 31, %d15, 24

# CHECK-INST: sh.orn.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xbf,0x1f]
sh.orn.t %d1, %d14, 31, %d15, 31

# CHECK-INST: sh.orn.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x20,0x10]
sh.orn.t %d1, %d15, 0, %d0, 0

# CHECK-INST: sh.orn.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xa0,0x13]
sh.orn.t %d1, %d15, 0, %d0, 7

# CHECK-INST: sh.orn.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x20,0x1c]
sh.orn.t %d1, %d15, 0, %d0, 24

# CHECK-INST: sh.orn.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xa0,0x1f]
sh.orn.t %d1, %d15, 0, %d0, 31

# CHECK-INST: sh.orn.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x20,0x10]
sh.orn.t %d1, %d15, 0, %d1, 0

# CHECK-INST: sh.orn.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xa0,0x13]
sh.orn.t %d1, %d15, 0, %d1, 7

# CHECK-INST: sh.orn.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x20,0x1c]
sh.orn.t %d1, %d15, 0, %d1, 24

# CHECK-INST: sh.orn.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xa0,0x1f]
sh.orn.t %d1, %d15, 0, %d1, 31

# CHECK-INST: sh.orn.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x20,0x10]
sh.orn.t %d1, %d15, 0, %d14, 0

# CHECK-INST: sh.orn.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xa0,0x13]
sh.orn.t %d1, %d15, 0, %d14, 7

# CHECK-INST: sh.orn.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x20,0x1c]
sh.orn.t %d1, %d15, 0, %d14, 24

# CHECK-INST: sh.orn.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xa0,0x1f]
sh.orn.t %d1, %d15, 0, %d14, 31

# CHECK-INST: sh.orn.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x20,0x10]
sh.orn.t %d1, %d15, 0, %d15, 0

# CHECK-INST: sh.orn.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xa0,0x13]
sh.orn.t %d1, %d15, 0, %d15, 7

# CHECK-INST: sh.orn.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x20,0x1c]
sh.orn.t %d1, %d15, 0, %d15, 24

# CHECK-INST: sh.orn.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xa0,0x1f]
sh.orn.t %d1, %d15, 0, %d15, 31

# CHECK-INST: sh.orn.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x27,0x10]
sh.orn.t %d1, %d15, 7, %d0, 0

# CHECK-INST: sh.orn.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xa7,0x13]
sh.orn.t %d1, %d15, 7, %d0, 7

# CHECK-INST: sh.orn.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x27,0x1c]
sh.orn.t %d1, %d15, 7, %d0, 24

# CHECK-INST: sh.orn.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xa7,0x1f]
sh.orn.t %d1, %d15, 7, %d0, 31

# CHECK-INST: sh.orn.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x27,0x10]
sh.orn.t %d1, %d15, 7, %d1, 0

# CHECK-INST: sh.orn.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xa7,0x13]
sh.orn.t %d1, %d15, 7, %d1, 7

# CHECK-INST: sh.orn.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x27,0x1c]
sh.orn.t %d1, %d15, 7, %d1, 24

# CHECK-INST: sh.orn.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xa7,0x1f]
sh.orn.t %d1, %d15, 7, %d1, 31

# CHECK-INST: sh.orn.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x27,0x10]
sh.orn.t %d1, %d15, 7, %d14, 0

# CHECK-INST: sh.orn.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xa7,0x13]
sh.orn.t %d1, %d15, 7, %d14, 7

# CHECK-INST: sh.orn.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x27,0x1c]
sh.orn.t %d1, %d15, 7, %d14, 24

# CHECK-INST: sh.orn.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xa7,0x1f]
sh.orn.t %d1, %d15, 7, %d14, 31

# CHECK-INST: sh.orn.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x27,0x10]
sh.orn.t %d1, %d15, 7, %d15, 0

# CHECK-INST: sh.orn.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xa7,0x13]
sh.orn.t %d1, %d15, 7, %d15, 7

# CHECK-INST: sh.orn.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x27,0x1c]
sh.orn.t %d1, %d15, 7, %d15, 24

# CHECK-INST: sh.orn.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xa7,0x1f]
sh.orn.t %d1, %d15, 7, %d15, 31

# CHECK-INST: sh.orn.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x38,0x10]
sh.orn.t %d1, %d15, 24, %d0, 0

# CHECK-INST: sh.orn.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xb8,0x13]
sh.orn.t %d1, %d15, 24, %d0, 7

# CHECK-INST: sh.orn.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x38,0x1c]
sh.orn.t %d1, %d15, 24, %d0, 24

# CHECK-INST: sh.orn.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xb8,0x1f]
sh.orn.t %d1, %d15, 24, %d0, 31

# CHECK-INST: sh.orn.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x38,0x10]
sh.orn.t %d1, %d15, 24, %d1, 0

# CHECK-INST: sh.orn.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xb8,0x13]
sh.orn.t %d1, %d15, 24, %d1, 7

# CHECK-INST: sh.orn.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x38,0x1c]
sh.orn.t %d1, %d15, 24, %d1, 24

# CHECK-INST: sh.orn.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xb8,0x1f]
sh.orn.t %d1, %d15, 24, %d1, 31

# CHECK-INST: sh.orn.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x38,0x10]
sh.orn.t %d1, %d15, 24, %d14, 0

# CHECK-INST: sh.orn.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xb8,0x13]
sh.orn.t %d1, %d15, 24, %d14, 7

# CHECK-INST: sh.orn.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x38,0x1c]
sh.orn.t %d1, %d15, 24, %d14, 24

# CHECK-INST: sh.orn.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xb8,0x1f]
sh.orn.t %d1, %d15, 24, %d14, 31

# CHECK-INST: sh.orn.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x38,0x10]
sh.orn.t %d1, %d15, 24, %d15, 0

# CHECK-INST: sh.orn.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xb8,0x13]
sh.orn.t %d1, %d15, 24, %d15, 7

# CHECK-INST: sh.orn.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x38,0x1c]
sh.orn.t %d1, %d15, 24, %d15, 24

# CHECK-INST: sh.orn.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xb8,0x1f]
sh.orn.t %d1, %d15, 24, %d15, 31

# CHECK-INST: sh.orn.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x3f,0x10]
sh.orn.t %d1, %d15, 31, %d0, 0

# CHECK-INST: sh.orn.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xbf,0x13]
sh.orn.t %d1, %d15, 31, %d0, 7

# CHECK-INST: sh.orn.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x3f,0x1c]
sh.orn.t %d1, %d15, 31, %d0, 24

# CHECK-INST: sh.orn.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xbf,0x1f]
sh.orn.t %d1, %d15, 31, %d0, 31

# CHECK-INST: sh.orn.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x3f,0x10]
sh.orn.t %d1, %d15, 31, %d1, 0

# CHECK-INST: sh.orn.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xbf,0x13]
sh.orn.t %d1, %d15, 31, %d1, 7

# CHECK-INST: sh.orn.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x3f,0x1c]
sh.orn.t %d1, %d15, 31, %d1, 24

# CHECK-INST: sh.orn.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xbf,0x1f]
sh.orn.t %d1, %d15, 31, %d1, 31

# CHECK-INST: sh.orn.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x3f,0x10]
sh.orn.t %d1, %d15, 31, %d14, 0

# CHECK-INST: sh.orn.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xbf,0x13]
sh.orn.t %d1, %d15, 31, %d14, 7

# CHECK-INST: sh.orn.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x3f,0x1c]
sh.orn.t %d1, %d15, 31, %d14, 24

# CHECK-INST: sh.orn.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xbf,0x1f]
sh.orn.t %d1, %d15, 31, %d14, 31

# CHECK-INST: sh.orn.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x3f,0x10]
sh.orn.t %d1, %d15, 31, %d15, 0

# CHECK-INST: sh.orn.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xbf,0x13]
sh.orn.t %d1, %d15, 31, %d15, 7

# CHECK-INST: sh.orn.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x3f,0x1c]
sh.orn.t %d1, %d15, 31, %d15, 24

# CHECK-INST: sh.orn.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xbf,0x1f]
sh.orn.t %d1, %d15, 31, %d15, 31

# CHECK-INST: sh.orn.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x20,0xe0]
sh.orn.t %d14, %d0, 0, %d0, 0

# CHECK-INST: sh.orn.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xa0,0xe3]
sh.orn.t %d14, %d0, 0, %d0, 7

# CHECK-INST: sh.orn.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x20,0xec]
sh.orn.t %d14, %d0, 0, %d0, 24

# CHECK-INST: sh.orn.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xa0,0xef]
sh.orn.t %d14, %d0, 0, %d0, 31

# CHECK-INST: sh.orn.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x20,0xe0]
sh.orn.t %d14, %d0, 0, %d1, 0

# CHECK-INST: sh.orn.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xa0,0xe3]
sh.orn.t %d14, %d0, 0, %d1, 7

# CHECK-INST: sh.orn.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x20,0xec]
sh.orn.t %d14, %d0, 0, %d1, 24

# CHECK-INST: sh.orn.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xa0,0xef]
sh.orn.t %d14, %d0, 0, %d1, 31

# CHECK-INST: sh.orn.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x20,0xe0]
sh.orn.t %d14, %d0, 0, %d14, 0

# CHECK-INST: sh.orn.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xa0,0xe3]
sh.orn.t %d14, %d0, 0, %d14, 7

# CHECK-INST: sh.orn.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x20,0xec]
sh.orn.t %d14, %d0, 0, %d14, 24

# CHECK-INST: sh.orn.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xa0,0xef]
sh.orn.t %d14, %d0, 0, %d14, 31

# CHECK-INST: sh.orn.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x20,0xe0]
sh.orn.t %d14, %d0, 0, %d15, 0

# CHECK-INST: sh.orn.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xa0,0xe3]
sh.orn.t %d14, %d0, 0, %d15, 7

# CHECK-INST: sh.orn.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x20,0xec]
sh.orn.t %d14, %d0, 0, %d15, 24

# CHECK-INST: sh.orn.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xa0,0xef]
sh.orn.t %d14, %d0, 0, %d15, 31

# CHECK-INST: sh.orn.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x27,0xe0]
sh.orn.t %d14, %d0, 7, %d0, 0

# CHECK-INST: sh.orn.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xa7,0xe3]
sh.orn.t %d14, %d0, 7, %d0, 7

# CHECK-INST: sh.orn.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x27,0xec]
sh.orn.t %d14, %d0, 7, %d0, 24

# CHECK-INST: sh.orn.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xa7,0xef]
sh.orn.t %d14, %d0, 7, %d0, 31

# CHECK-INST: sh.orn.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x27,0xe0]
sh.orn.t %d14, %d0, 7, %d1, 0

# CHECK-INST: sh.orn.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xa7,0xe3]
sh.orn.t %d14, %d0, 7, %d1, 7

# CHECK-INST: sh.orn.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x27,0xec]
sh.orn.t %d14, %d0, 7, %d1, 24

# CHECK-INST: sh.orn.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xa7,0xef]
sh.orn.t %d14, %d0, 7, %d1, 31

# CHECK-INST: sh.orn.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x27,0xe0]
sh.orn.t %d14, %d0, 7, %d14, 0

# CHECK-INST: sh.orn.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xa7,0xe3]
sh.orn.t %d14, %d0, 7, %d14, 7

# CHECK-INST: sh.orn.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x27,0xec]
sh.orn.t %d14, %d0, 7, %d14, 24

# CHECK-INST: sh.orn.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xa7,0xef]
sh.orn.t %d14, %d0, 7, %d14, 31

# CHECK-INST: sh.orn.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x27,0xe0]
sh.orn.t %d14, %d0, 7, %d15, 0

# CHECK-INST: sh.orn.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xa7,0xe3]
sh.orn.t %d14, %d0, 7, %d15, 7

# CHECK-INST: sh.orn.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x27,0xec]
sh.orn.t %d14, %d0, 7, %d15, 24

# CHECK-INST: sh.orn.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xa7,0xef]
sh.orn.t %d14, %d0, 7, %d15, 31

# CHECK-INST: sh.orn.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x38,0xe0]
sh.orn.t %d14, %d0, 24, %d0, 0

# CHECK-INST: sh.orn.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xb8,0xe3]
sh.orn.t %d14, %d0, 24, %d0, 7

# CHECK-INST: sh.orn.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x38,0xec]
sh.orn.t %d14, %d0, 24, %d0, 24

# CHECK-INST: sh.orn.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xb8,0xef]
sh.orn.t %d14, %d0, 24, %d0, 31

# CHECK-INST: sh.orn.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x38,0xe0]
sh.orn.t %d14, %d0, 24, %d1, 0

# CHECK-INST: sh.orn.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xb8,0xe3]
sh.orn.t %d14, %d0, 24, %d1, 7

# CHECK-INST: sh.orn.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x38,0xec]
sh.orn.t %d14, %d0, 24, %d1, 24

# CHECK-INST: sh.orn.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xb8,0xef]
sh.orn.t %d14, %d0, 24, %d1, 31

# CHECK-INST: sh.orn.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x38,0xe0]
sh.orn.t %d14, %d0, 24, %d14, 0

# CHECK-INST: sh.orn.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xb8,0xe3]
sh.orn.t %d14, %d0, 24, %d14, 7

# CHECK-INST: sh.orn.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x38,0xec]
sh.orn.t %d14, %d0, 24, %d14, 24

# CHECK-INST: sh.orn.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xb8,0xef]
sh.orn.t %d14, %d0, 24, %d14, 31

# CHECK-INST: sh.orn.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x38,0xe0]
sh.orn.t %d14, %d0, 24, %d15, 0

# CHECK-INST: sh.orn.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xb8,0xe3]
sh.orn.t %d14, %d0, 24, %d15, 7

# CHECK-INST: sh.orn.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x38,0xec]
sh.orn.t %d14, %d0, 24, %d15, 24

# CHECK-INST: sh.orn.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xb8,0xef]
sh.orn.t %d14, %d0, 24, %d15, 31

# CHECK-INST: sh.orn.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x3f,0xe0]
sh.orn.t %d14, %d0, 31, %d0, 0

# CHECK-INST: sh.orn.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xbf,0xe3]
sh.orn.t %d14, %d0, 31, %d0, 7

# CHECK-INST: sh.orn.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x3f,0xec]
sh.orn.t %d14, %d0, 31, %d0, 24

# CHECK-INST: sh.orn.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xbf,0xef]
sh.orn.t %d14, %d0, 31, %d0, 31

# CHECK-INST: sh.orn.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x3f,0xe0]
sh.orn.t %d14, %d0, 31, %d1, 0

# CHECK-INST: sh.orn.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xbf,0xe3]
sh.orn.t %d14, %d0, 31, %d1, 7

# CHECK-INST: sh.orn.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x3f,0xec]
sh.orn.t %d14, %d0, 31, %d1, 24

# CHECK-INST: sh.orn.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xbf,0xef]
sh.orn.t %d14, %d0, 31, %d1, 31

# CHECK-INST: sh.orn.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x3f,0xe0]
sh.orn.t %d14, %d0, 31, %d14, 0

# CHECK-INST: sh.orn.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xbf,0xe3]
sh.orn.t %d14, %d0, 31, %d14, 7

# CHECK-INST: sh.orn.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x3f,0xec]
sh.orn.t %d14, %d0, 31, %d14, 24

# CHECK-INST: sh.orn.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xbf,0xef]
sh.orn.t %d14, %d0, 31, %d14, 31

# CHECK-INST: sh.orn.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x3f,0xe0]
sh.orn.t %d14, %d0, 31, %d15, 0

# CHECK-INST: sh.orn.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xbf,0xe3]
sh.orn.t %d14, %d0, 31, %d15, 7

# CHECK-INST: sh.orn.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x3f,0xec]
sh.orn.t %d14, %d0, 31, %d15, 24

# CHECK-INST: sh.orn.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xbf,0xef]
sh.orn.t %d14, %d0, 31, %d15, 31

# CHECK-INST: sh.orn.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x20,0xe0]
sh.orn.t %d14, %d1, 0, %d0, 0

# CHECK-INST: sh.orn.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xa0,0xe3]
sh.orn.t %d14, %d1, 0, %d0, 7

# CHECK-INST: sh.orn.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x20,0xec]
sh.orn.t %d14, %d1, 0, %d0, 24

# CHECK-INST: sh.orn.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xa0,0xef]
sh.orn.t %d14, %d1, 0, %d0, 31

# CHECK-INST: sh.orn.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x20,0xe0]
sh.orn.t %d14, %d1, 0, %d1, 0

# CHECK-INST: sh.orn.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xa0,0xe3]
sh.orn.t %d14, %d1, 0, %d1, 7

# CHECK-INST: sh.orn.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x20,0xec]
sh.orn.t %d14, %d1, 0, %d1, 24

# CHECK-INST: sh.orn.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xa0,0xef]
sh.orn.t %d14, %d1, 0, %d1, 31

# CHECK-INST: sh.orn.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x20,0xe0]
sh.orn.t %d14, %d1, 0, %d14, 0

# CHECK-INST: sh.orn.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xa0,0xe3]
sh.orn.t %d14, %d1, 0, %d14, 7

# CHECK-INST: sh.orn.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x20,0xec]
sh.orn.t %d14, %d1, 0, %d14, 24

# CHECK-INST: sh.orn.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xa0,0xef]
sh.orn.t %d14, %d1, 0, %d14, 31

# CHECK-INST: sh.orn.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x20,0xe0]
sh.orn.t %d14, %d1, 0, %d15, 0

# CHECK-INST: sh.orn.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xa0,0xe3]
sh.orn.t %d14, %d1, 0, %d15, 7

# CHECK-INST: sh.orn.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x20,0xec]
sh.orn.t %d14, %d1, 0, %d15, 24

# CHECK-INST: sh.orn.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xa0,0xef]
sh.orn.t %d14, %d1, 0, %d15, 31

# CHECK-INST: sh.orn.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x27,0xe0]
sh.orn.t %d14, %d1, 7, %d0, 0

# CHECK-INST: sh.orn.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xa7,0xe3]
sh.orn.t %d14, %d1, 7, %d0, 7

# CHECK-INST: sh.orn.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x27,0xec]
sh.orn.t %d14, %d1, 7, %d0, 24

# CHECK-INST: sh.orn.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xa7,0xef]
sh.orn.t %d14, %d1, 7, %d0, 31

# CHECK-INST: sh.orn.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x27,0xe0]
sh.orn.t %d14, %d1, 7, %d1, 0

# CHECK-INST: sh.orn.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xa7,0xe3]
sh.orn.t %d14, %d1, 7, %d1, 7

# CHECK-INST: sh.orn.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x27,0xec]
sh.orn.t %d14, %d1, 7, %d1, 24

# CHECK-INST: sh.orn.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xa7,0xef]
sh.orn.t %d14, %d1, 7, %d1, 31

# CHECK-INST: sh.orn.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x27,0xe0]
sh.orn.t %d14, %d1, 7, %d14, 0

# CHECK-INST: sh.orn.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xa7,0xe3]
sh.orn.t %d14, %d1, 7, %d14, 7

# CHECK-INST: sh.orn.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x27,0xec]
sh.orn.t %d14, %d1, 7, %d14, 24

# CHECK-INST: sh.orn.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xa7,0xef]
sh.orn.t %d14, %d1, 7, %d14, 31

# CHECK-INST: sh.orn.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x27,0xe0]
sh.orn.t %d14, %d1, 7, %d15, 0

# CHECK-INST: sh.orn.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xa7,0xe3]
sh.orn.t %d14, %d1, 7, %d15, 7

# CHECK-INST: sh.orn.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x27,0xec]
sh.orn.t %d14, %d1, 7, %d15, 24

# CHECK-INST: sh.orn.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xa7,0xef]
sh.orn.t %d14, %d1, 7, %d15, 31

# CHECK-INST: sh.orn.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x38,0xe0]
sh.orn.t %d14, %d1, 24, %d0, 0

# CHECK-INST: sh.orn.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xb8,0xe3]
sh.orn.t %d14, %d1, 24, %d0, 7

# CHECK-INST: sh.orn.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x38,0xec]
sh.orn.t %d14, %d1, 24, %d0, 24

# CHECK-INST: sh.orn.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xb8,0xef]
sh.orn.t %d14, %d1, 24, %d0, 31

# CHECK-INST: sh.orn.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x38,0xe0]
sh.orn.t %d14, %d1, 24, %d1, 0

# CHECK-INST: sh.orn.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xb8,0xe3]
sh.orn.t %d14, %d1, 24, %d1, 7

# CHECK-INST: sh.orn.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x38,0xec]
sh.orn.t %d14, %d1, 24, %d1, 24

# CHECK-INST: sh.orn.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xb8,0xef]
sh.orn.t %d14, %d1, 24, %d1, 31

# CHECK-INST: sh.orn.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x38,0xe0]
sh.orn.t %d14, %d1, 24, %d14, 0

# CHECK-INST: sh.orn.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xb8,0xe3]
sh.orn.t %d14, %d1, 24, %d14, 7

# CHECK-INST: sh.orn.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x38,0xec]
sh.orn.t %d14, %d1, 24, %d14, 24

# CHECK-INST: sh.orn.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xb8,0xef]
sh.orn.t %d14, %d1, 24, %d14, 31

# CHECK-INST: sh.orn.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x38,0xe0]
sh.orn.t %d14, %d1, 24, %d15, 0

# CHECK-INST: sh.orn.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xb8,0xe3]
sh.orn.t %d14, %d1, 24, %d15, 7

# CHECK-INST: sh.orn.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x38,0xec]
sh.orn.t %d14, %d1, 24, %d15, 24

# CHECK-INST: sh.orn.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xb8,0xef]
sh.orn.t %d14, %d1, 24, %d15, 31

# CHECK-INST: sh.orn.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x3f,0xe0]
sh.orn.t %d14, %d1, 31, %d0, 0

# CHECK-INST: sh.orn.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xbf,0xe3]
sh.orn.t %d14, %d1, 31, %d0, 7

# CHECK-INST: sh.orn.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x3f,0xec]
sh.orn.t %d14, %d1, 31, %d0, 24

# CHECK-INST: sh.orn.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xbf,0xef]
sh.orn.t %d14, %d1, 31, %d0, 31

# CHECK-INST: sh.orn.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x3f,0xe0]
sh.orn.t %d14, %d1, 31, %d1, 0

# CHECK-INST: sh.orn.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xbf,0xe3]
sh.orn.t %d14, %d1, 31, %d1, 7

# CHECK-INST: sh.orn.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x3f,0xec]
sh.orn.t %d14, %d1, 31, %d1, 24

# CHECK-INST: sh.orn.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xbf,0xef]
sh.orn.t %d14, %d1, 31, %d1, 31

# CHECK-INST: sh.orn.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x3f,0xe0]
sh.orn.t %d14, %d1, 31, %d14, 0

# CHECK-INST: sh.orn.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xbf,0xe3]
sh.orn.t %d14, %d1, 31, %d14, 7

# CHECK-INST: sh.orn.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x3f,0xec]
sh.orn.t %d14, %d1, 31, %d14, 24

# CHECK-INST: sh.orn.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xbf,0xef]
sh.orn.t %d14, %d1, 31, %d14, 31

# CHECK-INST: sh.orn.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x3f,0xe0]
sh.orn.t %d14, %d1, 31, %d15, 0

# CHECK-INST: sh.orn.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xbf,0xe3]
sh.orn.t %d14, %d1, 31, %d15, 7

# CHECK-INST: sh.orn.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x3f,0xec]
sh.orn.t %d14, %d1, 31, %d15, 24

# CHECK-INST: sh.orn.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xbf,0xef]
sh.orn.t %d14, %d1, 31, %d15, 31

# CHECK-INST: sh.orn.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x20,0xe0]
sh.orn.t %d14, %d14, 0, %d0, 0

# CHECK-INST: sh.orn.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xa0,0xe3]
sh.orn.t %d14, %d14, 0, %d0, 7

# CHECK-INST: sh.orn.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x20,0xec]
sh.orn.t %d14, %d14, 0, %d0, 24

# CHECK-INST: sh.orn.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xa0,0xef]
sh.orn.t %d14, %d14, 0, %d0, 31

# CHECK-INST: sh.orn.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x20,0xe0]
sh.orn.t %d14, %d14, 0, %d1, 0

# CHECK-INST: sh.orn.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xa0,0xe3]
sh.orn.t %d14, %d14, 0, %d1, 7

# CHECK-INST: sh.orn.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x20,0xec]
sh.orn.t %d14, %d14, 0, %d1, 24

# CHECK-INST: sh.orn.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xa0,0xef]
sh.orn.t %d14, %d14, 0, %d1, 31

# CHECK-INST: sh.orn.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x20,0xe0]
sh.orn.t %d14, %d14, 0, %d14, 0

# CHECK-INST: sh.orn.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xa0,0xe3]
sh.orn.t %d14, %d14, 0, %d14, 7

# CHECK-INST: sh.orn.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x20,0xec]
sh.orn.t %d14, %d14, 0, %d14, 24

# CHECK-INST: sh.orn.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xa0,0xef]
sh.orn.t %d14, %d14, 0, %d14, 31

# CHECK-INST: sh.orn.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x20,0xe0]
sh.orn.t %d14, %d14, 0, %d15, 0

# CHECK-INST: sh.orn.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xa0,0xe3]
sh.orn.t %d14, %d14, 0, %d15, 7

# CHECK-INST: sh.orn.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x20,0xec]
sh.orn.t %d14, %d14, 0, %d15, 24

# CHECK-INST: sh.orn.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xa0,0xef]
sh.orn.t %d14, %d14, 0, %d15, 31

# CHECK-INST: sh.orn.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x27,0xe0]
sh.orn.t %d14, %d14, 7, %d0, 0

# CHECK-INST: sh.orn.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xa7,0xe3]
sh.orn.t %d14, %d14, 7, %d0, 7

# CHECK-INST: sh.orn.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x27,0xec]
sh.orn.t %d14, %d14, 7, %d0, 24

# CHECK-INST: sh.orn.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xa7,0xef]
sh.orn.t %d14, %d14, 7, %d0, 31

# CHECK-INST: sh.orn.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x27,0xe0]
sh.orn.t %d14, %d14, 7, %d1, 0

# CHECK-INST: sh.orn.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xa7,0xe3]
sh.orn.t %d14, %d14, 7, %d1, 7

# CHECK-INST: sh.orn.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x27,0xec]
sh.orn.t %d14, %d14, 7, %d1, 24

# CHECK-INST: sh.orn.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xa7,0xef]
sh.orn.t %d14, %d14, 7, %d1, 31

# CHECK-INST: sh.orn.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x27,0xe0]
sh.orn.t %d14, %d14, 7, %d14, 0

# CHECK-INST: sh.orn.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xa7,0xe3]
sh.orn.t %d14, %d14, 7, %d14, 7

# CHECK-INST: sh.orn.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x27,0xec]
sh.orn.t %d14, %d14, 7, %d14, 24

# CHECK-INST: sh.orn.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xa7,0xef]
sh.orn.t %d14, %d14, 7, %d14, 31

# CHECK-INST: sh.orn.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x27,0xe0]
sh.orn.t %d14, %d14, 7, %d15, 0

# CHECK-INST: sh.orn.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xa7,0xe3]
sh.orn.t %d14, %d14, 7, %d15, 7

# CHECK-INST: sh.orn.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x27,0xec]
sh.orn.t %d14, %d14, 7, %d15, 24

# CHECK-INST: sh.orn.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xa7,0xef]
sh.orn.t %d14, %d14, 7, %d15, 31

# CHECK-INST: sh.orn.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x38,0xe0]
sh.orn.t %d14, %d14, 24, %d0, 0

# CHECK-INST: sh.orn.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xb8,0xe3]
sh.orn.t %d14, %d14, 24, %d0, 7

# CHECK-INST: sh.orn.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x38,0xec]
sh.orn.t %d14, %d14, 24, %d0, 24

# CHECK-INST: sh.orn.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xb8,0xef]
sh.orn.t %d14, %d14, 24, %d0, 31

# CHECK-INST: sh.orn.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x38,0xe0]
sh.orn.t %d14, %d14, 24, %d1, 0

# CHECK-INST: sh.orn.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xb8,0xe3]
sh.orn.t %d14, %d14, 24, %d1, 7

# CHECK-INST: sh.orn.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x38,0xec]
sh.orn.t %d14, %d14, 24, %d1, 24

# CHECK-INST: sh.orn.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xb8,0xef]
sh.orn.t %d14, %d14, 24, %d1, 31

# CHECK-INST: sh.orn.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x38,0xe0]
sh.orn.t %d14, %d14, 24, %d14, 0

# CHECK-INST: sh.orn.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xb8,0xe3]
sh.orn.t %d14, %d14, 24, %d14, 7

# CHECK-INST: sh.orn.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x38,0xec]
sh.orn.t %d14, %d14, 24, %d14, 24

# CHECK-INST: sh.orn.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xb8,0xef]
sh.orn.t %d14, %d14, 24, %d14, 31

# CHECK-INST: sh.orn.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x38,0xe0]
sh.orn.t %d14, %d14, 24, %d15, 0

# CHECK-INST: sh.orn.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xb8,0xe3]
sh.orn.t %d14, %d14, 24, %d15, 7

# CHECK-INST: sh.orn.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x38,0xec]
sh.orn.t %d14, %d14, 24, %d15, 24

# CHECK-INST: sh.orn.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xb8,0xef]
sh.orn.t %d14, %d14, 24, %d15, 31

# CHECK-INST: sh.orn.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x3f,0xe0]
sh.orn.t %d14, %d14, 31, %d0, 0

# CHECK-INST: sh.orn.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xbf,0xe3]
sh.orn.t %d14, %d14, 31, %d0, 7

# CHECK-INST: sh.orn.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x3f,0xec]
sh.orn.t %d14, %d14, 31, %d0, 24

# CHECK-INST: sh.orn.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xbf,0xef]
sh.orn.t %d14, %d14, 31, %d0, 31

# CHECK-INST: sh.orn.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x3f,0xe0]
sh.orn.t %d14, %d14, 31, %d1, 0

# CHECK-INST: sh.orn.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xbf,0xe3]
sh.orn.t %d14, %d14, 31, %d1, 7

# CHECK-INST: sh.orn.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x3f,0xec]
sh.orn.t %d14, %d14, 31, %d1, 24

# CHECK-INST: sh.orn.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xbf,0xef]
sh.orn.t %d14, %d14, 31, %d1, 31

# CHECK-INST: sh.orn.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x3f,0xe0]
sh.orn.t %d14, %d14, 31, %d14, 0

# CHECK-INST: sh.orn.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xbf,0xe3]
sh.orn.t %d14, %d14, 31, %d14, 7

# CHECK-INST: sh.orn.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x3f,0xec]
sh.orn.t %d14, %d14, 31, %d14, 24

# CHECK-INST: sh.orn.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xbf,0xef]
sh.orn.t %d14, %d14, 31, %d14, 31

# CHECK-INST: sh.orn.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x3f,0xe0]
sh.orn.t %d14, %d14, 31, %d15, 0

# CHECK-INST: sh.orn.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xbf,0xe3]
sh.orn.t %d14, %d14, 31, %d15, 7

# CHECK-INST: sh.orn.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x3f,0xec]
sh.orn.t %d14, %d14, 31, %d15, 24

# CHECK-INST: sh.orn.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xbf,0xef]
sh.orn.t %d14, %d14, 31, %d15, 31

# CHECK-INST: sh.orn.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x20,0xe0]
sh.orn.t %d14, %d15, 0, %d0, 0

# CHECK-INST: sh.orn.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xa0,0xe3]
sh.orn.t %d14, %d15, 0, %d0, 7

# CHECK-INST: sh.orn.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x20,0xec]
sh.orn.t %d14, %d15, 0, %d0, 24

# CHECK-INST: sh.orn.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xa0,0xef]
sh.orn.t %d14, %d15, 0, %d0, 31

# CHECK-INST: sh.orn.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x20,0xe0]
sh.orn.t %d14, %d15, 0, %d1, 0

# CHECK-INST: sh.orn.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xa0,0xe3]
sh.orn.t %d14, %d15, 0, %d1, 7

# CHECK-INST: sh.orn.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x20,0xec]
sh.orn.t %d14, %d15, 0, %d1, 24

# CHECK-INST: sh.orn.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xa0,0xef]
sh.orn.t %d14, %d15, 0, %d1, 31

# CHECK-INST: sh.orn.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x20,0xe0]
sh.orn.t %d14, %d15, 0, %d14, 0

# CHECK-INST: sh.orn.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xa0,0xe3]
sh.orn.t %d14, %d15, 0, %d14, 7

# CHECK-INST: sh.orn.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x20,0xec]
sh.orn.t %d14, %d15, 0, %d14, 24

# CHECK-INST: sh.orn.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xa0,0xef]
sh.orn.t %d14, %d15, 0, %d14, 31

# CHECK-INST: sh.orn.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x20,0xe0]
sh.orn.t %d14, %d15, 0, %d15, 0

# CHECK-INST: sh.orn.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xa0,0xe3]
sh.orn.t %d14, %d15, 0, %d15, 7

# CHECK-INST: sh.orn.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x20,0xec]
sh.orn.t %d14, %d15, 0, %d15, 24

# CHECK-INST: sh.orn.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xa0,0xef]
sh.orn.t %d14, %d15, 0, %d15, 31

# CHECK-INST: sh.orn.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x27,0xe0]
sh.orn.t %d14, %d15, 7, %d0, 0

# CHECK-INST: sh.orn.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xa7,0xe3]
sh.orn.t %d14, %d15, 7, %d0, 7

# CHECK-INST: sh.orn.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x27,0xec]
sh.orn.t %d14, %d15, 7, %d0, 24

# CHECK-INST: sh.orn.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xa7,0xef]
sh.orn.t %d14, %d15, 7, %d0, 31

# CHECK-INST: sh.orn.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x27,0xe0]
sh.orn.t %d14, %d15, 7, %d1, 0

# CHECK-INST: sh.orn.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xa7,0xe3]
sh.orn.t %d14, %d15, 7, %d1, 7

# CHECK-INST: sh.orn.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x27,0xec]
sh.orn.t %d14, %d15, 7, %d1, 24

# CHECK-INST: sh.orn.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xa7,0xef]
sh.orn.t %d14, %d15, 7, %d1, 31

# CHECK-INST: sh.orn.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x27,0xe0]
sh.orn.t %d14, %d15, 7, %d14, 0

# CHECK-INST: sh.orn.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xa7,0xe3]
sh.orn.t %d14, %d15, 7, %d14, 7

# CHECK-INST: sh.orn.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x27,0xec]
sh.orn.t %d14, %d15, 7, %d14, 24

# CHECK-INST: sh.orn.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xa7,0xef]
sh.orn.t %d14, %d15, 7, %d14, 31

# CHECK-INST: sh.orn.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x27,0xe0]
sh.orn.t %d14, %d15, 7, %d15, 0

# CHECK-INST: sh.orn.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xa7,0xe3]
sh.orn.t %d14, %d15, 7, %d15, 7

# CHECK-INST: sh.orn.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x27,0xec]
sh.orn.t %d14, %d15, 7, %d15, 24

# CHECK-INST: sh.orn.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xa7,0xef]
sh.orn.t %d14, %d15, 7, %d15, 31

# CHECK-INST: sh.orn.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x38,0xe0]
sh.orn.t %d14, %d15, 24, %d0, 0

# CHECK-INST: sh.orn.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xb8,0xe3]
sh.orn.t %d14, %d15, 24, %d0, 7

# CHECK-INST: sh.orn.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x38,0xec]
sh.orn.t %d14, %d15, 24, %d0, 24

# CHECK-INST: sh.orn.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xb8,0xef]
sh.orn.t %d14, %d15, 24, %d0, 31

# CHECK-INST: sh.orn.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x38,0xe0]
sh.orn.t %d14, %d15, 24, %d1, 0

# CHECK-INST: sh.orn.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xb8,0xe3]
sh.orn.t %d14, %d15, 24, %d1, 7

# CHECK-INST: sh.orn.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x38,0xec]
sh.orn.t %d14, %d15, 24, %d1, 24

# CHECK-INST: sh.orn.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xb8,0xef]
sh.orn.t %d14, %d15, 24, %d1, 31

# CHECK-INST: sh.orn.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x38,0xe0]
sh.orn.t %d14, %d15, 24, %d14, 0

# CHECK-INST: sh.orn.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xb8,0xe3]
sh.orn.t %d14, %d15, 24, %d14, 7

# CHECK-INST: sh.orn.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x38,0xec]
sh.orn.t %d14, %d15, 24, %d14, 24

# CHECK-INST: sh.orn.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xb8,0xef]
sh.orn.t %d14, %d15, 24, %d14, 31

# CHECK-INST: sh.orn.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x38,0xe0]
sh.orn.t %d14, %d15, 24, %d15, 0

# CHECK-INST: sh.orn.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xb8,0xe3]
sh.orn.t %d14, %d15, 24, %d15, 7

# CHECK-INST: sh.orn.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x38,0xec]
sh.orn.t %d14, %d15, 24, %d15, 24

# CHECK-INST: sh.orn.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xb8,0xef]
sh.orn.t %d14, %d15, 24, %d15, 31

# CHECK-INST: sh.orn.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x3f,0xe0]
sh.orn.t %d14, %d15, 31, %d0, 0

# CHECK-INST: sh.orn.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xbf,0xe3]
sh.orn.t %d14, %d15, 31, %d0, 7

# CHECK-INST: sh.orn.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x3f,0xec]
sh.orn.t %d14, %d15, 31, %d0, 24

# CHECK-INST: sh.orn.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xbf,0xef]
sh.orn.t %d14, %d15, 31, %d0, 31

# CHECK-INST: sh.orn.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x3f,0xe0]
sh.orn.t %d14, %d15, 31, %d1, 0

# CHECK-INST: sh.orn.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xbf,0xe3]
sh.orn.t %d14, %d15, 31, %d1, 7

# CHECK-INST: sh.orn.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x3f,0xec]
sh.orn.t %d14, %d15, 31, %d1, 24

# CHECK-INST: sh.orn.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xbf,0xef]
sh.orn.t %d14, %d15, 31, %d1, 31

# CHECK-INST: sh.orn.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x3f,0xe0]
sh.orn.t %d14, %d15, 31, %d14, 0

# CHECK-INST: sh.orn.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xbf,0xe3]
sh.orn.t %d14, %d15, 31, %d14, 7

# CHECK-INST: sh.orn.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x3f,0xec]
sh.orn.t %d14, %d15, 31, %d14, 24

# CHECK-INST: sh.orn.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xbf,0xef]
sh.orn.t %d14, %d15, 31, %d14, 31

# CHECK-INST: sh.orn.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x3f,0xe0]
sh.orn.t %d14, %d15, 31, %d15, 0

# CHECK-INST: sh.orn.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xbf,0xe3]
sh.orn.t %d14, %d15, 31, %d15, 7

# CHECK-INST: sh.orn.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x3f,0xec]
sh.orn.t %d14, %d15, 31, %d15, 24

# CHECK-INST: sh.orn.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xbf,0xef]
sh.orn.t %d14, %d15, 31, %d15, 31

# CHECK-INST: sh.orn.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x20,0xf0]
sh.orn.t %d15, %d0, 0, %d0, 0

# CHECK-INST: sh.orn.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xa0,0xf3]
sh.orn.t %d15, %d0, 0, %d0, 7

# CHECK-INST: sh.orn.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x20,0xfc]
sh.orn.t %d15, %d0, 0, %d0, 24

# CHECK-INST: sh.orn.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xa0,0xff]
sh.orn.t %d15, %d0, 0, %d0, 31

# CHECK-INST: sh.orn.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x20,0xf0]
sh.orn.t %d15, %d0, 0, %d1, 0

# CHECK-INST: sh.orn.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xa0,0xf3]
sh.orn.t %d15, %d0, 0, %d1, 7

# CHECK-INST: sh.orn.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x20,0xfc]
sh.orn.t %d15, %d0, 0, %d1, 24

# CHECK-INST: sh.orn.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xa0,0xff]
sh.orn.t %d15, %d0, 0, %d1, 31

# CHECK-INST: sh.orn.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x20,0xf0]
sh.orn.t %d15, %d0, 0, %d14, 0

# CHECK-INST: sh.orn.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xa0,0xf3]
sh.orn.t %d15, %d0, 0, %d14, 7

# CHECK-INST: sh.orn.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x20,0xfc]
sh.orn.t %d15, %d0, 0, %d14, 24

# CHECK-INST: sh.orn.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xa0,0xff]
sh.orn.t %d15, %d0, 0, %d14, 31

# CHECK-INST: sh.orn.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x20,0xf0]
sh.orn.t %d15, %d0, 0, %d15, 0

# CHECK-INST: sh.orn.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xa0,0xf3]
sh.orn.t %d15, %d0, 0, %d15, 7

# CHECK-INST: sh.orn.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x20,0xfc]
sh.orn.t %d15, %d0, 0, %d15, 24

# CHECK-INST: sh.orn.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xa0,0xff]
sh.orn.t %d15, %d0, 0, %d15, 31

# CHECK-INST: sh.orn.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x27,0xf0]
sh.orn.t %d15, %d0, 7, %d0, 0

# CHECK-INST: sh.orn.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xa7,0xf3]
sh.orn.t %d15, %d0, 7, %d0, 7

# CHECK-INST: sh.orn.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x27,0xfc]
sh.orn.t %d15, %d0, 7, %d0, 24

# CHECK-INST: sh.orn.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xa7,0xff]
sh.orn.t %d15, %d0, 7, %d0, 31

# CHECK-INST: sh.orn.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x27,0xf0]
sh.orn.t %d15, %d0, 7, %d1, 0

# CHECK-INST: sh.orn.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xa7,0xf3]
sh.orn.t %d15, %d0, 7, %d1, 7

# CHECK-INST: sh.orn.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x27,0xfc]
sh.orn.t %d15, %d0, 7, %d1, 24

# CHECK-INST: sh.orn.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xa7,0xff]
sh.orn.t %d15, %d0, 7, %d1, 31

# CHECK-INST: sh.orn.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x27,0xf0]
sh.orn.t %d15, %d0, 7, %d14, 0

# CHECK-INST: sh.orn.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xa7,0xf3]
sh.orn.t %d15, %d0, 7, %d14, 7

# CHECK-INST: sh.orn.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x27,0xfc]
sh.orn.t %d15, %d0, 7, %d14, 24

# CHECK-INST: sh.orn.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xa7,0xff]
sh.orn.t %d15, %d0, 7, %d14, 31

# CHECK-INST: sh.orn.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x27,0xf0]
sh.orn.t %d15, %d0, 7, %d15, 0

# CHECK-INST: sh.orn.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xa7,0xf3]
sh.orn.t %d15, %d0, 7, %d15, 7

# CHECK-INST: sh.orn.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x27,0xfc]
sh.orn.t %d15, %d0, 7, %d15, 24

# CHECK-INST: sh.orn.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xa7,0xff]
sh.orn.t %d15, %d0, 7, %d15, 31

# CHECK-INST: sh.orn.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x38,0xf0]
sh.orn.t %d15, %d0, 24, %d0, 0

# CHECK-INST: sh.orn.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xb8,0xf3]
sh.orn.t %d15, %d0, 24, %d0, 7

# CHECK-INST: sh.orn.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x38,0xfc]
sh.orn.t %d15, %d0, 24, %d0, 24

# CHECK-INST: sh.orn.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xb8,0xff]
sh.orn.t %d15, %d0, 24, %d0, 31

# CHECK-INST: sh.orn.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x38,0xf0]
sh.orn.t %d15, %d0, 24, %d1, 0

# CHECK-INST: sh.orn.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xb8,0xf3]
sh.orn.t %d15, %d0, 24, %d1, 7

# CHECK-INST: sh.orn.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x38,0xfc]
sh.orn.t %d15, %d0, 24, %d1, 24

# CHECK-INST: sh.orn.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xb8,0xff]
sh.orn.t %d15, %d0, 24, %d1, 31

# CHECK-INST: sh.orn.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x38,0xf0]
sh.orn.t %d15, %d0, 24, %d14, 0

# CHECK-INST: sh.orn.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xb8,0xf3]
sh.orn.t %d15, %d0, 24, %d14, 7

# CHECK-INST: sh.orn.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x38,0xfc]
sh.orn.t %d15, %d0, 24, %d14, 24

# CHECK-INST: sh.orn.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xb8,0xff]
sh.orn.t %d15, %d0, 24, %d14, 31

# CHECK-INST: sh.orn.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x38,0xf0]
sh.orn.t %d15, %d0, 24, %d15, 0

# CHECK-INST: sh.orn.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xb8,0xf3]
sh.orn.t %d15, %d0, 24, %d15, 7

# CHECK-INST: sh.orn.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x38,0xfc]
sh.orn.t %d15, %d0, 24, %d15, 24

# CHECK-INST: sh.orn.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xb8,0xff]
sh.orn.t %d15, %d0, 24, %d15, 31

# CHECK-INST: sh.orn.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x3f,0xf0]
sh.orn.t %d15, %d0, 31, %d0, 0

# CHECK-INST: sh.orn.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xbf,0xf3]
sh.orn.t %d15, %d0, 31, %d0, 7

# CHECK-INST: sh.orn.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x3f,0xfc]
sh.orn.t %d15, %d0, 31, %d0, 24

# CHECK-INST: sh.orn.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xbf,0xff]
sh.orn.t %d15, %d0, 31, %d0, 31

# CHECK-INST: sh.orn.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x3f,0xf0]
sh.orn.t %d15, %d0, 31, %d1, 0

# CHECK-INST: sh.orn.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xbf,0xf3]
sh.orn.t %d15, %d0, 31, %d1, 7

# CHECK-INST: sh.orn.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x3f,0xfc]
sh.orn.t %d15, %d0, 31, %d1, 24

# CHECK-INST: sh.orn.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xbf,0xff]
sh.orn.t %d15, %d0, 31, %d1, 31

# CHECK-INST: sh.orn.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x3f,0xf0]
sh.orn.t %d15, %d0, 31, %d14, 0

# CHECK-INST: sh.orn.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xbf,0xf3]
sh.orn.t %d15, %d0, 31, %d14, 7

# CHECK-INST: sh.orn.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x3f,0xfc]
sh.orn.t %d15, %d0, 31, %d14, 24

# CHECK-INST: sh.orn.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xbf,0xff]
sh.orn.t %d15, %d0, 31, %d14, 31

# CHECK-INST: sh.orn.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x3f,0xf0]
sh.orn.t %d15, %d0, 31, %d15, 0

# CHECK-INST: sh.orn.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xbf,0xf3]
sh.orn.t %d15, %d0, 31, %d15, 7

# CHECK-INST: sh.orn.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x3f,0xfc]
sh.orn.t %d15, %d0, 31, %d15, 24

# CHECK-INST: sh.orn.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xbf,0xff]
sh.orn.t %d15, %d0, 31, %d15, 31

# CHECK-INST: sh.orn.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x20,0xf0]
sh.orn.t %d15, %d1, 0, %d0, 0

# CHECK-INST: sh.orn.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xa0,0xf3]
sh.orn.t %d15, %d1, 0, %d0, 7

# CHECK-INST: sh.orn.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x20,0xfc]
sh.orn.t %d15, %d1, 0, %d0, 24

# CHECK-INST: sh.orn.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xa0,0xff]
sh.orn.t %d15, %d1, 0, %d0, 31

# CHECK-INST: sh.orn.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x20,0xf0]
sh.orn.t %d15, %d1, 0, %d1, 0

# CHECK-INST: sh.orn.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xa0,0xf3]
sh.orn.t %d15, %d1, 0, %d1, 7

# CHECK-INST: sh.orn.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x20,0xfc]
sh.orn.t %d15, %d1, 0, %d1, 24

# CHECK-INST: sh.orn.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xa0,0xff]
sh.orn.t %d15, %d1, 0, %d1, 31

# CHECK-INST: sh.orn.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x20,0xf0]
sh.orn.t %d15, %d1, 0, %d14, 0

# CHECK-INST: sh.orn.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xa0,0xf3]
sh.orn.t %d15, %d1, 0, %d14, 7

# CHECK-INST: sh.orn.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x20,0xfc]
sh.orn.t %d15, %d1, 0, %d14, 24

# CHECK-INST: sh.orn.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xa0,0xff]
sh.orn.t %d15, %d1, 0, %d14, 31

# CHECK-INST: sh.orn.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x20,0xf0]
sh.orn.t %d15, %d1, 0, %d15, 0

# CHECK-INST: sh.orn.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xa0,0xf3]
sh.orn.t %d15, %d1, 0, %d15, 7

# CHECK-INST: sh.orn.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x20,0xfc]
sh.orn.t %d15, %d1, 0, %d15, 24

# CHECK-INST: sh.orn.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xa0,0xff]
sh.orn.t %d15, %d1, 0, %d15, 31

# CHECK-INST: sh.orn.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x27,0xf0]
sh.orn.t %d15, %d1, 7, %d0, 0

# CHECK-INST: sh.orn.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xa7,0xf3]
sh.orn.t %d15, %d1, 7, %d0, 7

# CHECK-INST: sh.orn.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x27,0xfc]
sh.orn.t %d15, %d1, 7, %d0, 24

# CHECK-INST: sh.orn.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xa7,0xff]
sh.orn.t %d15, %d1, 7, %d0, 31

# CHECK-INST: sh.orn.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x27,0xf0]
sh.orn.t %d15, %d1, 7, %d1, 0

# CHECK-INST: sh.orn.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xa7,0xf3]
sh.orn.t %d15, %d1, 7, %d1, 7

# CHECK-INST: sh.orn.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x27,0xfc]
sh.orn.t %d15, %d1, 7, %d1, 24

# CHECK-INST: sh.orn.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xa7,0xff]
sh.orn.t %d15, %d1, 7, %d1, 31

# CHECK-INST: sh.orn.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x27,0xf0]
sh.orn.t %d15, %d1, 7, %d14, 0

# CHECK-INST: sh.orn.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xa7,0xf3]
sh.orn.t %d15, %d1, 7, %d14, 7

# CHECK-INST: sh.orn.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x27,0xfc]
sh.orn.t %d15, %d1, 7, %d14, 24

# CHECK-INST: sh.orn.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xa7,0xff]
sh.orn.t %d15, %d1, 7, %d14, 31

# CHECK-INST: sh.orn.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x27,0xf0]
sh.orn.t %d15, %d1, 7, %d15, 0

# CHECK-INST: sh.orn.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xa7,0xf3]
sh.orn.t %d15, %d1, 7, %d15, 7

# CHECK-INST: sh.orn.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x27,0xfc]
sh.orn.t %d15, %d1, 7, %d15, 24

# CHECK-INST: sh.orn.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xa7,0xff]
sh.orn.t %d15, %d1, 7, %d15, 31

# CHECK-INST: sh.orn.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x38,0xf0]
sh.orn.t %d15, %d1, 24, %d0, 0

# CHECK-INST: sh.orn.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xb8,0xf3]
sh.orn.t %d15, %d1, 24, %d0, 7

# CHECK-INST: sh.orn.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x38,0xfc]
sh.orn.t %d15, %d1, 24, %d0, 24

# CHECK-INST: sh.orn.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xb8,0xff]
sh.orn.t %d15, %d1, 24, %d0, 31

# CHECK-INST: sh.orn.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x38,0xf0]
sh.orn.t %d15, %d1, 24, %d1, 0

# CHECK-INST: sh.orn.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xb8,0xf3]
sh.orn.t %d15, %d1, 24, %d1, 7

# CHECK-INST: sh.orn.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x38,0xfc]
sh.orn.t %d15, %d1, 24, %d1, 24

# CHECK-INST: sh.orn.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xb8,0xff]
sh.orn.t %d15, %d1, 24, %d1, 31

# CHECK-INST: sh.orn.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x38,0xf0]
sh.orn.t %d15, %d1, 24, %d14, 0

# CHECK-INST: sh.orn.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xb8,0xf3]
sh.orn.t %d15, %d1, 24, %d14, 7

# CHECK-INST: sh.orn.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x38,0xfc]
sh.orn.t %d15, %d1, 24, %d14, 24

# CHECK-INST: sh.orn.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xb8,0xff]
sh.orn.t %d15, %d1, 24, %d14, 31

# CHECK-INST: sh.orn.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x38,0xf0]
sh.orn.t %d15, %d1, 24, %d15, 0

# CHECK-INST: sh.orn.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xb8,0xf3]
sh.orn.t %d15, %d1, 24, %d15, 7

# CHECK-INST: sh.orn.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x38,0xfc]
sh.orn.t %d15, %d1, 24, %d15, 24

# CHECK-INST: sh.orn.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xb8,0xff]
sh.orn.t %d15, %d1, 24, %d15, 31

# CHECK-INST: sh.orn.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x3f,0xf0]
sh.orn.t %d15, %d1, 31, %d0, 0

# CHECK-INST: sh.orn.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xbf,0xf3]
sh.orn.t %d15, %d1, 31, %d0, 7

# CHECK-INST: sh.orn.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x3f,0xfc]
sh.orn.t %d15, %d1, 31, %d0, 24

# CHECK-INST: sh.orn.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xbf,0xff]
sh.orn.t %d15, %d1, 31, %d0, 31

# CHECK-INST: sh.orn.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x3f,0xf0]
sh.orn.t %d15, %d1, 31, %d1, 0

# CHECK-INST: sh.orn.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xbf,0xf3]
sh.orn.t %d15, %d1, 31, %d1, 7

# CHECK-INST: sh.orn.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x3f,0xfc]
sh.orn.t %d15, %d1, 31, %d1, 24

# CHECK-INST: sh.orn.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xbf,0xff]
sh.orn.t %d15, %d1, 31, %d1, 31

# CHECK-INST: sh.orn.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x3f,0xf0]
sh.orn.t %d15, %d1, 31, %d14, 0

# CHECK-INST: sh.orn.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xbf,0xf3]
sh.orn.t %d15, %d1, 31, %d14, 7

# CHECK-INST: sh.orn.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x3f,0xfc]
sh.orn.t %d15, %d1, 31, %d14, 24

# CHECK-INST: sh.orn.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xbf,0xff]
sh.orn.t %d15, %d1, 31, %d14, 31

# CHECK-INST: sh.orn.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x3f,0xf0]
sh.orn.t %d15, %d1, 31, %d15, 0

# CHECK-INST: sh.orn.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xbf,0xf3]
sh.orn.t %d15, %d1, 31, %d15, 7

# CHECK-INST: sh.orn.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x3f,0xfc]
sh.orn.t %d15, %d1, 31, %d15, 24

# CHECK-INST: sh.orn.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xbf,0xff]
sh.orn.t %d15, %d1, 31, %d15, 31

# CHECK-INST: sh.orn.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x20,0xf0]
sh.orn.t %d15, %d14, 0, %d0, 0

# CHECK-INST: sh.orn.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xa0,0xf3]
sh.orn.t %d15, %d14, 0, %d0, 7

# CHECK-INST: sh.orn.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x20,0xfc]
sh.orn.t %d15, %d14, 0, %d0, 24

# CHECK-INST: sh.orn.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xa0,0xff]
sh.orn.t %d15, %d14, 0, %d0, 31

# CHECK-INST: sh.orn.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x20,0xf0]
sh.orn.t %d15, %d14, 0, %d1, 0

# CHECK-INST: sh.orn.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xa0,0xf3]
sh.orn.t %d15, %d14, 0, %d1, 7

# CHECK-INST: sh.orn.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x20,0xfc]
sh.orn.t %d15, %d14, 0, %d1, 24

# CHECK-INST: sh.orn.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xa0,0xff]
sh.orn.t %d15, %d14, 0, %d1, 31

# CHECK-INST: sh.orn.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x20,0xf0]
sh.orn.t %d15, %d14, 0, %d14, 0

# CHECK-INST: sh.orn.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xa0,0xf3]
sh.orn.t %d15, %d14, 0, %d14, 7

# CHECK-INST: sh.orn.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x20,0xfc]
sh.orn.t %d15, %d14, 0, %d14, 24

# CHECK-INST: sh.orn.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xa0,0xff]
sh.orn.t %d15, %d14, 0, %d14, 31

# CHECK-INST: sh.orn.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x20,0xf0]
sh.orn.t %d15, %d14, 0, %d15, 0

# CHECK-INST: sh.orn.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xa0,0xf3]
sh.orn.t %d15, %d14, 0, %d15, 7

# CHECK-INST: sh.orn.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x20,0xfc]
sh.orn.t %d15, %d14, 0, %d15, 24

# CHECK-INST: sh.orn.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xa0,0xff]
sh.orn.t %d15, %d14, 0, %d15, 31

# CHECK-INST: sh.orn.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x27,0xf0]
sh.orn.t %d15, %d14, 7, %d0, 0

# CHECK-INST: sh.orn.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xa7,0xf3]
sh.orn.t %d15, %d14, 7, %d0, 7

# CHECK-INST: sh.orn.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x27,0xfc]
sh.orn.t %d15, %d14, 7, %d0, 24

# CHECK-INST: sh.orn.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xa7,0xff]
sh.orn.t %d15, %d14, 7, %d0, 31

# CHECK-INST: sh.orn.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x27,0xf0]
sh.orn.t %d15, %d14, 7, %d1, 0

# CHECK-INST: sh.orn.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xa7,0xf3]
sh.orn.t %d15, %d14, 7, %d1, 7

# CHECK-INST: sh.orn.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x27,0xfc]
sh.orn.t %d15, %d14, 7, %d1, 24

# CHECK-INST: sh.orn.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xa7,0xff]
sh.orn.t %d15, %d14, 7, %d1, 31

# CHECK-INST: sh.orn.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x27,0xf0]
sh.orn.t %d15, %d14, 7, %d14, 0

# CHECK-INST: sh.orn.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xa7,0xf3]
sh.orn.t %d15, %d14, 7, %d14, 7

# CHECK-INST: sh.orn.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x27,0xfc]
sh.orn.t %d15, %d14, 7, %d14, 24

# CHECK-INST: sh.orn.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xa7,0xff]
sh.orn.t %d15, %d14, 7, %d14, 31

# CHECK-INST: sh.orn.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x27,0xf0]
sh.orn.t %d15, %d14, 7, %d15, 0

# CHECK-INST: sh.orn.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xa7,0xf3]
sh.orn.t %d15, %d14, 7, %d15, 7

# CHECK-INST: sh.orn.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x27,0xfc]
sh.orn.t %d15, %d14, 7, %d15, 24

# CHECK-INST: sh.orn.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xa7,0xff]
sh.orn.t %d15, %d14, 7, %d15, 31

# CHECK-INST: sh.orn.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x38,0xf0]
sh.orn.t %d15, %d14, 24, %d0, 0

# CHECK-INST: sh.orn.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xb8,0xf3]
sh.orn.t %d15, %d14, 24, %d0, 7

# CHECK-INST: sh.orn.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x38,0xfc]
sh.orn.t %d15, %d14, 24, %d0, 24

# CHECK-INST: sh.orn.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xb8,0xff]
sh.orn.t %d15, %d14, 24, %d0, 31

# CHECK-INST: sh.orn.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x38,0xf0]
sh.orn.t %d15, %d14, 24, %d1, 0

# CHECK-INST: sh.orn.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xb8,0xf3]
sh.orn.t %d15, %d14, 24, %d1, 7

# CHECK-INST: sh.orn.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x38,0xfc]
sh.orn.t %d15, %d14, 24, %d1, 24

# CHECK-INST: sh.orn.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xb8,0xff]
sh.orn.t %d15, %d14, 24, %d1, 31

# CHECK-INST: sh.orn.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x38,0xf0]
sh.orn.t %d15, %d14, 24, %d14, 0

# CHECK-INST: sh.orn.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xb8,0xf3]
sh.orn.t %d15, %d14, 24, %d14, 7

# CHECK-INST: sh.orn.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x38,0xfc]
sh.orn.t %d15, %d14, 24, %d14, 24

# CHECK-INST: sh.orn.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xb8,0xff]
sh.orn.t %d15, %d14, 24, %d14, 31

# CHECK-INST: sh.orn.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x38,0xf0]
sh.orn.t %d15, %d14, 24, %d15, 0

# CHECK-INST: sh.orn.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xb8,0xf3]
sh.orn.t %d15, %d14, 24, %d15, 7

# CHECK-INST: sh.orn.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x38,0xfc]
sh.orn.t %d15, %d14, 24, %d15, 24

# CHECK-INST: sh.orn.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xb8,0xff]
sh.orn.t %d15, %d14, 24, %d15, 31

# CHECK-INST: sh.orn.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x3f,0xf0]
sh.orn.t %d15, %d14, 31, %d0, 0

# CHECK-INST: sh.orn.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xbf,0xf3]
sh.orn.t %d15, %d14, 31, %d0, 7

# CHECK-INST: sh.orn.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x3f,0xfc]
sh.orn.t %d15, %d14, 31, %d0, 24

# CHECK-INST: sh.orn.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xbf,0xff]
sh.orn.t %d15, %d14, 31, %d0, 31

# CHECK-INST: sh.orn.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x3f,0xf0]
sh.orn.t %d15, %d14, 31, %d1, 0

# CHECK-INST: sh.orn.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xbf,0xf3]
sh.orn.t %d15, %d14, 31, %d1, 7

# CHECK-INST: sh.orn.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x3f,0xfc]
sh.orn.t %d15, %d14, 31, %d1, 24

# CHECK-INST: sh.orn.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xbf,0xff]
sh.orn.t %d15, %d14, 31, %d1, 31

# CHECK-INST: sh.orn.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x3f,0xf0]
sh.orn.t %d15, %d14, 31, %d14, 0

# CHECK-INST: sh.orn.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xbf,0xf3]
sh.orn.t %d15, %d14, 31, %d14, 7

# CHECK-INST: sh.orn.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x3f,0xfc]
sh.orn.t %d15, %d14, 31, %d14, 24

# CHECK-INST: sh.orn.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xbf,0xff]
sh.orn.t %d15, %d14, 31, %d14, 31

# CHECK-INST: sh.orn.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x3f,0xf0]
sh.orn.t %d15, %d14, 31, %d15, 0

# CHECK-INST: sh.orn.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xbf,0xf3]
sh.orn.t %d15, %d14, 31, %d15, 7

# CHECK-INST: sh.orn.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x3f,0xfc]
sh.orn.t %d15, %d14, 31, %d15, 24

# CHECK-INST: sh.orn.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xbf,0xff]
sh.orn.t %d15, %d14, 31, %d15, 31

# CHECK-INST: sh.orn.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x20,0xf0]
sh.orn.t %d15, %d15, 0, %d0, 0

# CHECK-INST: sh.orn.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xa0,0xf3]
sh.orn.t %d15, %d15, 0, %d0, 7

# CHECK-INST: sh.orn.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x20,0xfc]
sh.orn.t %d15, %d15, 0, %d0, 24

# CHECK-INST: sh.orn.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xa0,0xff]
sh.orn.t %d15, %d15, 0, %d0, 31

# CHECK-INST: sh.orn.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x20,0xf0]
sh.orn.t %d15, %d15, 0, %d1, 0

# CHECK-INST: sh.orn.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xa0,0xf3]
sh.orn.t %d15, %d15, 0, %d1, 7

# CHECK-INST: sh.orn.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x20,0xfc]
sh.orn.t %d15, %d15, 0, %d1, 24

# CHECK-INST: sh.orn.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xa0,0xff]
sh.orn.t %d15, %d15, 0, %d1, 31

# CHECK-INST: sh.orn.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x20,0xf0]
sh.orn.t %d15, %d15, 0, %d14, 0

# CHECK-INST: sh.orn.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xa0,0xf3]
sh.orn.t %d15, %d15, 0, %d14, 7

# CHECK-INST: sh.orn.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x20,0xfc]
sh.orn.t %d15, %d15, 0, %d14, 24

# CHECK-INST: sh.orn.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xa0,0xff]
sh.orn.t %d15, %d15, 0, %d14, 31

# CHECK-INST: sh.orn.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x20,0xf0]
sh.orn.t %d15, %d15, 0, %d15, 0

# CHECK-INST: sh.orn.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xa0,0xf3]
sh.orn.t %d15, %d15, 0, %d15, 7

# CHECK-INST: sh.orn.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x20,0xfc]
sh.orn.t %d15, %d15, 0, %d15, 24

# CHECK-INST: sh.orn.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xa0,0xff]
sh.orn.t %d15, %d15, 0, %d15, 31

# CHECK-INST: sh.orn.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x27,0xf0]
sh.orn.t %d15, %d15, 7, %d0, 0

# CHECK-INST: sh.orn.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xa7,0xf3]
sh.orn.t %d15, %d15, 7, %d0, 7

# CHECK-INST: sh.orn.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x27,0xfc]
sh.orn.t %d15, %d15, 7, %d0, 24

# CHECK-INST: sh.orn.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xa7,0xff]
sh.orn.t %d15, %d15, 7, %d0, 31

# CHECK-INST: sh.orn.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x27,0xf0]
sh.orn.t %d15, %d15, 7, %d1, 0

# CHECK-INST: sh.orn.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xa7,0xf3]
sh.orn.t %d15, %d15, 7, %d1, 7

# CHECK-INST: sh.orn.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x27,0xfc]
sh.orn.t %d15, %d15, 7, %d1, 24

# CHECK-INST: sh.orn.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xa7,0xff]
sh.orn.t %d15, %d15, 7, %d1, 31

# CHECK-INST: sh.orn.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x27,0xf0]
sh.orn.t %d15, %d15, 7, %d14, 0

# CHECK-INST: sh.orn.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xa7,0xf3]
sh.orn.t %d15, %d15, 7, %d14, 7

# CHECK-INST: sh.orn.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x27,0xfc]
sh.orn.t %d15, %d15, 7, %d14, 24

# CHECK-INST: sh.orn.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xa7,0xff]
sh.orn.t %d15, %d15, 7, %d14, 31

# CHECK-INST: sh.orn.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x27,0xf0]
sh.orn.t %d15, %d15, 7, %d15, 0

# CHECK-INST: sh.orn.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xa7,0xf3]
sh.orn.t %d15, %d15, 7, %d15, 7

# CHECK-INST: sh.orn.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x27,0xfc]
sh.orn.t %d15, %d15, 7, %d15, 24

# CHECK-INST: sh.orn.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xa7,0xff]
sh.orn.t %d15, %d15, 7, %d15, 31

# CHECK-INST: sh.orn.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x38,0xf0]
sh.orn.t %d15, %d15, 24, %d0, 0

# CHECK-INST: sh.orn.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xb8,0xf3]
sh.orn.t %d15, %d15, 24, %d0, 7

# CHECK-INST: sh.orn.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x38,0xfc]
sh.orn.t %d15, %d15, 24, %d0, 24

# CHECK-INST: sh.orn.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xb8,0xff]
sh.orn.t %d15, %d15, 24, %d0, 31

# CHECK-INST: sh.orn.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x38,0xf0]
sh.orn.t %d15, %d15, 24, %d1, 0

# CHECK-INST: sh.orn.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xb8,0xf3]
sh.orn.t %d15, %d15, 24, %d1, 7

# CHECK-INST: sh.orn.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x38,0xfc]
sh.orn.t %d15, %d15, 24, %d1, 24

# CHECK-INST: sh.orn.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xb8,0xff]
sh.orn.t %d15, %d15, 24, %d1, 31

# CHECK-INST: sh.orn.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x38,0xf0]
sh.orn.t %d15, %d15, 24, %d14, 0

# CHECK-INST: sh.orn.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xb8,0xf3]
sh.orn.t %d15, %d15, 24, %d14, 7

# CHECK-INST: sh.orn.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x38,0xfc]
sh.orn.t %d15, %d15, 24, %d14, 24

# CHECK-INST: sh.orn.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xb8,0xff]
sh.orn.t %d15, %d15, 24, %d14, 31

# CHECK-INST: sh.orn.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x38,0xf0]
sh.orn.t %d15, %d15, 24, %d15, 0

# CHECK-INST: sh.orn.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xb8,0xf3]
sh.orn.t %d15, %d15, 24, %d15, 7

# CHECK-INST: sh.orn.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x38,0xfc]
sh.orn.t %d15, %d15, 24, %d15, 24

# CHECK-INST: sh.orn.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xb8,0xff]
sh.orn.t %d15, %d15, 24, %d15, 31

# CHECK-INST: sh.orn.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x3f,0xf0]
sh.orn.t %d15, %d15, 31, %d0, 0

# CHECK-INST: sh.orn.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xbf,0xf3]
sh.orn.t %d15, %d15, 31, %d0, 7

# CHECK-INST: sh.orn.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x3f,0xfc]
sh.orn.t %d15, %d15, 31, %d0, 24

# CHECK-INST: sh.orn.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xbf,0xff]
sh.orn.t %d15, %d15, 31, %d0, 31

# CHECK-INST: sh.orn.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x3f,0xf0]
sh.orn.t %d15, %d15, 31, %d1, 0

# CHECK-INST: sh.orn.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xbf,0xf3]
sh.orn.t %d15, %d15, 31, %d1, 7

# CHECK-INST: sh.orn.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x3f,0xfc]
sh.orn.t %d15, %d15, 31, %d1, 24

# CHECK-INST: sh.orn.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xbf,0xff]
sh.orn.t %d15, %d15, 31, %d1, 31

# CHECK-INST: sh.orn.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x3f,0xf0]
sh.orn.t %d15, %d15, 31, %d14, 0

# CHECK-INST: sh.orn.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xbf,0xf3]
sh.orn.t %d15, %d15, 31, %d14, 7

# CHECK-INST: sh.orn.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x3f,0xfc]
sh.orn.t %d15, %d15, 31, %d14, 24

# CHECK-INST: sh.orn.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xbf,0xff]
sh.orn.t %d15, %d15, 31, %d14, 31

# CHECK-INST: sh.orn.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x3f,0xf0]
sh.orn.t %d15, %d15, 31, %d15, 0

# CHECK-INST: sh.orn.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xbf,0xf3]
sh.orn.t %d15, %d15, 31, %d15, 7

# CHECK-INST: sh.orn.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x3f,0xfc]
sh.orn.t %d15, %d15, 31, %d15, 24

# CHECK-INST: sh.orn.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xbf,0xff]
sh.orn.t %d15, %d15, 31, %d15, 31

# CHECK-INST: sh.xnor.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x40,0x00]
sh.xnor.t %d0, %d0, 0, %d0, 0

# CHECK-INST: sh.xnor.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xc0,0x03]
sh.xnor.t %d0, %d0, 0, %d0, 7

# CHECK-INST: sh.xnor.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x40,0x0c]
sh.xnor.t %d0, %d0, 0, %d0, 24

# CHECK-INST: sh.xnor.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xc0,0x0f]
sh.xnor.t %d0, %d0, 0, %d0, 31

# CHECK-INST: sh.xnor.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x40,0x00]
sh.xnor.t %d0, %d0, 0, %d1, 0

# CHECK-INST: sh.xnor.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xc0,0x03]
sh.xnor.t %d0, %d0, 0, %d1, 7

# CHECK-INST: sh.xnor.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x40,0x0c]
sh.xnor.t %d0, %d0, 0, %d1, 24

# CHECK-INST: sh.xnor.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xc0,0x0f]
sh.xnor.t %d0, %d0, 0, %d1, 31

# CHECK-INST: sh.xnor.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x40,0x00]
sh.xnor.t %d0, %d0, 0, %d14, 0

# CHECK-INST: sh.xnor.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xc0,0x03]
sh.xnor.t %d0, %d0, 0, %d14, 7

# CHECK-INST: sh.xnor.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x40,0x0c]
sh.xnor.t %d0, %d0, 0, %d14, 24

# CHECK-INST: sh.xnor.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xc0,0x0f]
sh.xnor.t %d0, %d0, 0, %d14, 31

# CHECK-INST: sh.xnor.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x40,0x00]
sh.xnor.t %d0, %d0, 0, %d15, 0

# CHECK-INST: sh.xnor.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xc0,0x03]
sh.xnor.t %d0, %d0, 0, %d15, 7

# CHECK-INST: sh.xnor.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x40,0x0c]
sh.xnor.t %d0, %d0, 0, %d15, 24

# CHECK-INST: sh.xnor.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xc0,0x0f]
sh.xnor.t %d0, %d0, 0, %d15, 31

# CHECK-INST: sh.xnor.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x47,0x00]
sh.xnor.t %d0, %d0, 7, %d0, 0

# CHECK-INST: sh.xnor.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xc7,0x03]
sh.xnor.t %d0, %d0, 7, %d0, 7

# CHECK-INST: sh.xnor.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x47,0x0c]
sh.xnor.t %d0, %d0, 7, %d0, 24

# CHECK-INST: sh.xnor.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xc7,0x0f]
sh.xnor.t %d0, %d0, 7, %d0, 31

# CHECK-INST: sh.xnor.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x47,0x00]
sh.xnor.t %d0, %d0, 7, %d1, 0

# CHECK-INST: sh.xnor.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xc7,0x03]
sh.xnor.t %d0, %d0, 7, %d1, 7

# CHECK-INST: sh.xnor.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x47,0x0c]
sh.xnor.t %d0, %d0, 7, %d1, 24

# CHECK-INST: sh.xnor.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xc7,0x0f]
sh.xnor.t %d0, %d0, 7, %d1, 31

# CHECK-INST: sh.xnor.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x47,0x00]
sh.xnor.t %d0, %d0, 7, %d14, 0

# CHECK-INST: sh.xnor.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xc7,0x03]
sh.xnor.t %d0, %d0, 7, %d14, 7

# CHECK-INST: sh.xnor.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x47,0x0c]
sh.xnor.t %d0, %d0, 7, %d14, 24

# CHECK-INST: sh.xnor.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xc7,0x0f]
sh.xnor.t %d0, %d0, 7, %d14, 31

# CHECK-INST: sh.xnor.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x47,0x00]
sh.xnor.t %d0, %d0, 7, %d15, 0

# CHECK-INST: sh.xnor.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xc7,0x03]
sh.xnor.t %d0, %d0, 7, %d15, 7

# CHECK-INST: sh.xnor.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x47,0x0c]
sh.xnor.t %d0, %d0, 7, %d15, 24

# CHECK-INST: sh.xnor.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xc7,0x0f]
sh.xnor.t %d0, %d0, 7, %d15, 31

# CHECK-INST: sh.xnor.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x58,0x00]
sh.xnor.t %d0, %d0, 24, %d0, 0

# CHECK-INST: sh.xnor.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xd8,0x03]
sh.xnor.t %d0, %d0, 24, %d0, 7

# CHECK-INST: sh.xnor.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x58,0x0c]
sh.xnor.t %d0, %d0, 24, %d0, 24

# CHECK-INST: sh.xnor.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xd8,0x0f]
sh.xnor.t %d0, %d0, 24, %d0, 31

# CHECK-INST: sh.xnor.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x58,0x00]
sh.xnor.t %d0, %d0, 24, %d1, 0

# CHECK-INST: sh.xnor.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xd8,0x03]
sh.xnor.t %d0, %d0, 24, %d1, 7

# CHECK-INST: sh.xnor.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x58,0x0c]
sh.xnor.t %d0, %d0, 24, %d1, 24

# CHECK-INST: sh.xnor.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xd8,0x0f]
sh.xnor.t %d0, %d0, 24, %d1, 31

# CHECK-INST: sh.xnor.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x58,0x00]
sh.xnor.t %d0, %d0, 24, %d14, 0

# CHECK-INST: sh.xnor.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xd8,0x03]
sh.xnor.t %d0, %d0, 24, %d14, 7

# CHECK-INST: sh.xnor.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x58,0x0c]
sh.xnor.t %d0, %d0, 24, %d14, 24

# CHECK-INST: sh.xnor.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xd8,0x0f]
sh.xnor.t %d0, %d0, 24, %d14, 31

# CHECK-INST: sh.xnor.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x58,0x00]
sh.xnor.t %d0, %d0, 24, %d15, 0

# CHECK-INST: sh.xnor.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xd8,0x03]
sh.xnor.t %d0, %d0, 24, %d15, 7

# CHECK-INST: sh.xnor.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x58,0x0c]
sh.xnor.t %d0, %d0, 24, %d15, 24

# CHECK-INST: sh.xnor.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xd8,0x0f]
sh.xnor.t %d0, %d0, 24, %d15, 31

# CHECK-INST: sh.xnor.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x5f,0x00]
sh.xnor.t %d0, %d0, 31, %d0, 0

# CHECK-INST: sh.xnor.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xdf,0x03]
sh.xnor.t %d0, %d0, 31, %d0, 7

# CHECK-INST: sh.xnor.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x5f,0x0c]
sh.xnor.t %d0, %d0, 31, %d0, 24

# CHECK-INST: sh.xnor.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xdf,0x0f]
sh.xnor.t %d0, %d0, 31, %d0, 31

# CHECK-INST: sh.xnor.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x5f,0x00]
sh.xnor.t %d0, %d0, 31, %d1, 0

# CHECK-INST: sh.xnor.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xdf,0x03]
sh.xnor.t %d0, %d0, 31, %d1, 7

# CHECK-INST: sh.xnor.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x5f,0x0c]
sh.xnor.t %d0, %d0, 31, %d1, 24

# CHECK-INST: sh.xnor.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xdf,0x0f]
sh.xnor.t %d0, %d0, 31, %d1, 31

# CHECK-INST: sh.xnor.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x5f,0x00]
sh.xnor.t %d0, %d0, 31, %d14, 0

# CHECK-INST: sh.xnor.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xdf,0x03]
sh.xnor.t %d0, %d0, 31, %d14, 7

# CHECK-INST: sh.xnor.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x5f,0x0c]
sh.xnor.t %d0, %d0, 31, %d14, 24

# CHECK-INST: sh.xnor.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xdf,0x0f]
sh.xnor.t %d0, %d0, 31, %d14, 31

# CHECK-INST: sh.xnor.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x5f,0x00]
sh.xnor.t %d0, %d0, 31, %d15, 0

# CHECK-INST: sh.xnor.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xdf,0x03]
sh.xnor.t %d0, %d0, 31, %d15, 7

# CHECK-INST: sh.xnor.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x5f,0x0c]
sh.xnor.t %d0, %d0, 31, %d15, 24

# CHECK-INST: sh.xnor.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xdf,0x0f]
sh.xnor.t %d0, %d0, 31, %d15, 31

# CHECK-INST: sh.xnor.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x40,0x00]
sh.xnor.t %d0, %d1, 0, %d0, 0

# CHECK-INST: sh.xnor.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xc0,0x03]
sh.xnor.t %d0, %d1, 0, %d0, 7

# CHECK-INST: sh.xnor.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x40,0x0c]
sh.xnor.t %d0, %d1, 0, %d0, 24

# CHECK-INST: sh.xnor.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xc0,0x0f]
sh.xnor.t %d0, %d1, 0, %d0, 31

# CHECK-INST: sh.xnor.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x40,0x00]
sh.xnor.t %d0, %d1, 0, %d1, 0

# CHECK-INST: sh.xnor.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xc0,0x03]
sh.xnor.t %d0, %d1, 0, %d1, 7

# CHECK-INST: sh.xnor.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x40,0x0c]
sh.xnor.t %d0, %d1, 0, %d1, 24

# CHECK-INST: sh.xnor.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xc0,0x0f]
sh.xnor.t %d0, %d1, 0, %d1, 31

# CHECK-INST: sh.xnor.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x40,0x00]
sh.xnor.t %d0, %d1, 0, %d14, 0

# CHECK-INST: sh.xnor.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xc0,0x03]
sh.xnor.t %d0, %d1, 0, %d14, 7

# CHECK-INST: sh.xnor.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x40,0x0c]
sh.xnor.t %d0, %d1, 0, %d14, 24

# CHECK-INST: sh.xnor.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xc0,0x0f]
sh.xnor.t %d0, %d1, 0, %d14, 31

# CHECK-INST: sh.xnor.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x40,0x00]
sh.xnor.t %d0, %d1, 0, %d15, 0

# CHECK-INST: sh.xnor.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xc0,0x03]
sh.xnor.t %d0, %d1, 0, %d15, 7

# CHECK-INST: sh.xnor.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x40,0x0c]
sh.xnor.t %d0, %d1, 0, %d15, 24

# CHECK-INST: sh.xnor.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xc0,0x0f]
sh.xnor.t %d0, %d1, 0, %d15, 31

# CHECK-INST: sh.xnor.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x47,0x00]
sh.xnor.t %d0, %d1, 7, %d0, 0

# CHECK-INST: sh.xnor.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xc7,0x03]
sh.xnor.t %d0, %d1, 7, %d0, 7

# CHECK-INST: sh.xnor.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x47,0x0c]
sh.xnor.t %d0, %d1, 7, %d0, 24

# CHECK-INST: sh.xnor.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xc7,0x0f]
sh.xnor.t %d0, %d1, 7, %d0, 31

# CHECK-INST: sh.xnor.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x47,0x00]
sh.xnor.t %d0, %d1, 7, %d1, 0

# CHECK-INST: sh.xnor.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xc7,0x03]
sh.xnor.t %d0, %d1, 7, %d1, 7

# CHECK-INST: sh.xnor.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x47,0x0c]
sh.xnor.t %d0, %d1, 7, %d1, 24

# CHECK-INST: sh.xnor.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xc7,0x0f]
sh.xnor.t %d0, %d1, 7, %d1, 31

# CHECK-INST: sh.xnor.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x47,0x00]
sh.xnor.t %d0, %d1, 7, %d14, 0

# CHECK-INST: sh.xnor.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xc7,0x03]
sh.xnor.t %d0, %d1, 7, %d14, 7

# CHECK-INST: sh.xnor.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x47,0x0c]
sh.xnor.t %d0, %d1, 7, %d14, 24

# CHECK-INST: sh.xnor.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xc7,0x0f]
sh.xnor.t %d0, %d1, 7, %d14, 31

# CHECK-INST: sh.xnor.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x47,0x00]
sh.xnor.t %d0, %d1, 7, %d15, 0

# CHECK-INST: sh.xnor.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xc7,0x03]
sh.xnor.t %d0, %d1, 7, %d15, 7

# CHECK-INST: sh.xnor.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x47,0x0c]
sh.xnor.t %d0, %d1, 7, %d15, 24

# CHECK-INST: sh.xnor.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xc7,0x0f]
sh.xnor.t %d0, %d1, 7, %d15, 31

# CHECK-INST: sh.xnor.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x58,0x00]
sh.xnor.t %d0, %d1, 24, %d0, 0

# CHECK-INST: sh.xnor.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xd8,0x03]
sh.xnor.t %d0, %d1, 24, %d0, 7

# CHECK-INST: sh.xnor.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x58,0x0c]
sh.xnor.t %d0, %d1, 24, %d0, 24

# CHECK-INST: sh.xnor.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xd8,0x0f]
sh.xnor.t %d0, %d1, 24, %d0, 31

# CHECK-INST: sh.xnor.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x58,0x00]
sh.xnor.t %d0, %d1, 24, %d1, 0

# CHECK-INST: sh.xnor.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xd8,0x03]
sh.xnor.t %d0, %d1, 24, %d1, 7

# CHECK-INST: sh.xnor.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x58,0x0c]
sh.xnor.t %d0, %d1, 24, %d1, 24

# CHECK-INST: sh.xnor.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xd8,0x0f]
sh.xnor.t %d0, %d1, 24, %d1, 31

# CHECK-INST: sh.xnor.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x58,0x00]
sh.xnor.t %d0, %d1, 24, %d14, 0

# CHECK-INST: sh.xnor.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xd8,0x03]
sh.xnor.t %d0, %d1, 24, %d14, 7

# CHECK-INST: sh.xnor.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x58,0x0c]
sh.xnor.t %d0, %d1, 24, %d14, 24

# CHECK-INST: sh.xnor.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xd8,0x0f]
sh.xnor.t %d0, %d1, 24, %d14, 31

# CHECK-INST: sh.xnor.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x58,0x00]
sh.xnor.t %d0, %d1, 24, %d15, 0

# CHECK-INST: sh.xnor.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xd8,0x03]
sh.xnor.t %d0, %d1, 24, %d15, 7

# CHECK-INST: sh.xnor.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x58,0x0c]
sh.xnor.t %d0, %d1, 24, %d15, 24

# CHECK-INST: sh.xnor.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xd8,0x0f]
sh.xnor.t %d0, %d1, 24, %d15, 31

# CHECK-INST: sh.xnor.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x5f,0x00]
sh.xnor.t %d0, %d1, 31, %d0, 0

# CHECK-INST: sh.xnor.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xdf,0x03]
sh.xnor.t %d0, %d1, 31, %d0, 7

# CHECK-INST: sh.xnor.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x5f,0x0c]
sh.xnor.t %d0, %d1, 31, %d0, 24

# CHECK-INST: sh.xnor.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xdf,0x0f]
sh.xnor.t %d0, %d1, 31, %d0, 31

# CHECK-INST: sh.xnor.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x5f,0x00]
sh.xnor.t %d0, %d1, 31, %d1, 0

# CHECK-INST: sh.xnor.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xdf,0x03]
sh.xnor.t %d0, %d1, 31, %d1, 7

# CHECK-INST: sh.xnor.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x5f,0x0c]
sh.xnor.t %d0, %d1, 31, %d1, 24

# CHECK-INST: sh.xnor.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xdf,0x0f]
sh.xnor.t %d0, %d1, 31, %d1, 31

# CHECK-INST: sh.xnor.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x5f,0x00]
sh.xnor.t %d0, %d1, 31, %d14, 0

# CHECK-INST: sh.xnor.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xdf,0x03]
sh.xnor.t %d0, %d1, 31, %d14, 7

# CHECK-INST: sh.xnor.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x5f,0x0c]
sh.xnor.t %d0, %d1, 31, %d14, 24

# CHECK-INST: sh.xnor.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xdf,0x0f]
sh.xnor.t %d0, %d1, 31, %d14, 31

# CHECK-INST: sh.xnor.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x5f,0x00]
sh.xnor.t %d0, %d1, 31, %d15, 0

# CHECK-INST: sh.xnor.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xdf,0x03]
sh.xnor.t %d0, %d1, 31, %d15, 7

# CHECK-INST: sh.xnor.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x5f,0x0c]
sh.xnor.t %d0, %d1, 31, %d15, 24

# CHECK-INST: sh.xnor.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xdf,0x0f]
sh.xnor.t %d0, %d1, 31, %d15, 31

# CHECK-INST: sh.xnor.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x40,0x00]
sh.xnor.t %d0, %d14, 0, %d0, 0

# CHECK-INST: sh.xnor.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xc0,0x03]
sh.xnor.t %d0, %d14, 0, %d0, 7

# CHECK-INST: sh.xnor.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x40,0x0c]
sh.xnor.t %d0, %d14, 0, %d0, 24

# CHECK-INST: sh.xnor.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xc0,0x0f]
sh.xnor.t %d0, %d14, 0, %d0, 31

# CHECK-INST: sh.xnor.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x40,0x00]
sh.xnor.t %d0, %d14, 0, %d1, 0

# CHECK-INST: sh.xnor.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xc0,0x03]
sh.xnor.t %d0, %d14, 0, %d1, 7

# CHECK-INST: sh.xnor.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x40,0x0c]
sh.xnor.t %d0, %d14, 0, %d1, 24

# CHECK-INST: sh.xnor.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xc0,0x0f]
sh.xnor.t %d0, %d14, 0, %d1, 31

# CHECK-INST: sh.xnor.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x40,0x00]
sh.xnor.t %d0, %d14, 0, %d14, 0

# CHECK-INST: sh.xnor.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xc0,0x03]
sh.xnor.t %d0, %d14, 0, %d14, 7

# CHECK-INST: sh.xnor.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x40,0x0c]
sh.xnor.t %d0, %d14, 0, %d14, 24

# CHECK-INST: sh.xnor.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xc0,0x0f]
sh.xnor.t %d0, %d14, 0, %d14, 31

# CHECK-INST: sh.xnor.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x40,0x00]
sh.xnor.t %d0, %d14, 0, %d15, 0

# CHECK-INST: sh.xnor.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xc0,0x03]
sh.xnor.t %d0, %d14, 0, %d15, 7

# CHECK-INST: sh.xnor.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x40,0x0c]
sh.xnor.t %d0, %d14, 0, %d15, 24

# CHECK-INST: sh.xnor.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xc0,0x0f]
sh.xnor.t %d0, %d14, 0, %d15, 31

# CHECK-INST: sh.xnor.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x47,0x00]
sh.xnor.t %d0, %d14, 7, %d0, 0

# CHECK-INST: sh.xnor.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xc7,0x03]
sh.xnor.t %d0, %d14, 7, %d0, 7

# CHECK-INST: sh.xnor.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x47,0x0c]
sh.xnor.t %d0, %d14, 7, %d0, 24

# CHECK-INST: sh.xnor.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xc7,0x0f]
sh.xnor.t %d0, %d14, 7, %d0, 31

# CHECK-INST: sh.xnor.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x47,0x00]
sh.xnor.t %d0, %d14, 7, %d1, 0

# CHECK-INST: sh.xnor.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xc7,0x03]
sh.xnor.t %d0, %d14, 7, %d1, 7

# CHECK-INST: sh.xnor.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x47,0x0c]
sh.xnor.t %d0, %d14, 7, %d1, 24

# CHECK-INST: sh.xnor.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xc7,0x0f]
sh.xnor.t %d0, %d14, 7, %d1, 31

# CHECK-INST: sh.xnor.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x47,0x00]
sh.xnor.t %d0, %d14, 7, %d14, 0

# CHECK-INST: sh.xnor.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xc7,0x03]
sh.xnor.t %d0, %d14, 7, %d14, 7

# CHECK-INST: sh.xnor.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x47,0x0c]
sh.xnor.t %d0, %d14, 7, %d14, 24

# CHECK-INST: sh.xnor.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xc7,0x0f]
sh.xnor.t %d0, %d14, 7, %d14, 31

# CHECK-INST: sh.xnor.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x47,0x00]
sh.xnor.t %d0, %d14, 7, %d15, 0

# CHECK-INST: sh.xnor.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xc7,0x03]
sh.xnor.t %d0, %d14, 7, %d15, 7

# CHECK-INST: sh.xnor.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x47,0x0c]
sh.xnor.t %d0, %d14, 7, %d15, 24

# CHECK-INST: sh.xnor.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xc7,0x0f]
sh.xnor.t %d0, %d14, 7, %d15, 31

# CHECK-INST: sh.xnor.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x58,0x00]
sh.xnor.t %d0, %d14, 24, %d0, 0

# CHECK-INST: sh.xnor.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xd8,0x03]
sh.xnor.t %d0, %d14, 24, %d0, 7

# CHECK-INST: sh.xnor.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x58,0x0c]
sh.xnor.t %d0, %d14, 24, %d0, 24

# CHECK-INST: sh.xnor.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xd8,0x0f]
sh.xnor.t %d0, %d14, 24, %d0, 31

# CHECK-INST: sh.xnor.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x58,0x00]
sh.xnor.t %d0, %d14, 24, %d1, 0

# CHECK-INST: sh.xnor.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xd8,0x03]
sh.xnor.t %d0, %d14, 24, %d1, 7

# CHECK-INST: sh.xnor.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x58,0x0c]
sh.xnor.t %d0, %d14, 24, %d1, 24

# CHECK-INST: sh.xnor.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xd8,0x0f]
sh.xnor.t %d0, %d14, 24, %d1, 31

# CHECK-INST: sh.xnor.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x58,0x00]
sh.xnor.t %d0, %d14, 24, %d14, 0

# CHECK-INST: sh.xnor.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xd8,0x03]
sh.xnor.t %d0, %d14, 24, %d14, 7

# CHECK-INST: sh.xnor.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x58,0x0c]
sh.xnor.t %d0, %d14, 24, %d14, 24

# CHECK-INST: sh.xnor.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xd8,0x0f]
sh.xnor.t %d0, %d14, 24, %d14, 31

# CHECK-INST: sh.xnor.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x58,0x00]
sh.xnor.t %d0, %d14, 24, %d15, 0

# CHECK-INST: sh.xnor.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xd8,0x03]
sh.xnor.t %d0, %d14, 24, %d15, 7

# CHECK-INST: sh.xnor.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x58,0x0c]
sh.xnor.t %d0, %d14, 24, %d15, 24

# CHECK-INST: sh.xnor.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xd8,0x0f]
sh.xnor.t %d0, %d14, 24, %d15, 31

# CHECK-INST: sh.xnor.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x5f,0x00]
sh.xnor.t %d0, %d14, 31, %d0, 0

# CHECK-INST: sh.xnor.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xdf,0x03]
sh.xnor.t %d0, %d14, 31, %d0, 7

# CHECK-INST: sh.xnor.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x5f,0x0c]
sh.xnor.t %d0, %d14, 31, %d0, 24

# CHECK-INST: sh.xnor.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xdf,0x0f]
sh.xnor.t %d0, %d14, 31, %d0, 31

# CHECK-INST: sh.xnor.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x5f,0x00]
sh.xnor.t %d0, %d14, 31, %d1, 0

# CHECK-INST: sh.xnor.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xdf,0x03]
sh.xnor.t %d0, %d14, 31, %d1, 7

# CHECK-INST: sh.xnor.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x5f,0x0c]
sh.xnor.t %d0, %d14, 31, %d1, 24

# CHECK-INST: sh.xnor.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xdf,0x0f]
sh.xnor.t %d0, %d14, 31, %d1, 31

# CHECK-INST: sh.xnor.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x5f,0x00]
sh.xnor.t %d0, %d14, 31, %d14, 0

# CHECK-INST: sh.xnor.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xdf,0x03]
sh.xnor.t %d0, %d14, 31, %d14, 7

# CHECK-INST: sh.xnor.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x5f,0x0c]
sh.xnor.t %d0, %d14, 31, %d14, 24

# CHECK-INST: sh.xnor.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xdf,0x0f]
sh.xnor.t %d0, %d14, 31, %d14, 31

# CHECK-INST: sh.xnor.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x5f,0x00]
sh.xnor.t %d0, %d14, 31, %d15, 0

# CHECK-INST: sh.xnor.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xdf,0x03]
sh.xnor.t %d0, %d14, 31, %d15, 7

# CHECK-INST: sh.xnor.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x5f,0x0c]
sh.xnor.t %d0, %d14, 31, %d15, 24

# CHECK-INST: sh.xnor.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xdf,0x0f]
sh.xnor.t %d0, %d14, 31, %d15, 31

# CHECK-INST: sh.xnor.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x40,0x00]
sh.xnor.t %d0, %d15, 0, %d0, 0

# CHECK-INST: sh.xnor.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xc0,0x03]
sh.xnor.t %d0, %d15, 0, %d0, 7

# CHECK-INST: sh.xnor.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x40,0x0c]
sh.xnor.t %d0, %d15, 0, %d0, 24

# CHECK-INST: sh.xnor.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xc0,0x0f]
sh.xnor.t %d0, %d15, 0, %d0, 31

# CHECK-INST: sh.xnor.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x40,0x00]
sh.xnor.t %d0, %d15, 0, %d1, 0

# CHECK-INST: sh.xnor.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xc0,0x03]
sh.xnor.t %d0, %d15, 0, %d1, 7

# CHECK-INST: sh.xnor.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x40,0x0c]
sh.xnor.t %d0, %d15, 0, %d1, 24

# CHECK-INST: sh.xnor.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xc0,0x0f]
sh.xnor.t %d0, %d15, 0, %d1, 31

# CHECK-INST: sh.xnor.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x40,0x00]
sh.xnor.t %d0, %d15, 0, %d14, 0

# CHECK-INST: sh.xnor.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xc0,0x03]
sh.xnor.t %d0, %d15, 0, %d14, 7

# CHECK-INST: sh.xnor.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x40,0x0c]
sh.xnor.t %d0, %d15, 0, %d14, 24

# CHECK-INST: sh.xnor.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xc0,0x0f]
sh.xnor.t %d0, %d15, 0, %d14, 31

# CHECK-INST: sh.xnor.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x40,0x00]
sh.xnor.t %d0, %d15, 0, %d15, 0

# CHECK-INST: sh.xnor.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xc0,0x03]
sh.xnor.t %d0, %d15, 0, %d15, 7

# CHECK-INST: sh.xnor.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x40,0x0c]
sh.xnor.t %d0, %d15, 0, %d15, 24

# CHECK-INST: sh.xnor.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xc0,0x0f]
sh.xnor.t %d0, %d15, 0, %d15, 31

# CHECK-INST: sh.xnor.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x47,0x00]
sh.xnor.t %d0, %d15, 7, %d0, 0

# CHECK-INST: sh.xnor.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xc7,0x03]
sh.xnor.t %d0, %d15, 7, %d0, 7

# CHECK-INST: sh.xnor.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x47,0x0c]
sh.xnor.t %d0, %d15, 7, %d0, 24

# CHECK-INST: sh.xnor.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xc7,0x0f]
sh.xnor.t %d0, %d15, 7, %d0, 31

# CHECK-INST: sh.xnor.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x47,0x00]
sh.xnor.t %d0, %d15, 7, %d1, 0

# CHECK-INST: sh.xnor.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xc7,0x03]
sh.xnor.t %d0, %d15, 7, %d1, 7

# CHECK-INST: sh.xnor.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x47,0x0c]
sh.xnor.t %d0, %d15, 7, %d1, 24

# CHECK-INST: sh.xnor.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xc7,0x0f]
sh.xnor.t %d0, %d15, 7, %d1, 31

# CHECK-INST: sh.xnor.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x47,0x00]
sh.xnor.t %d0, %d15, 7, %d14, 0

# CHECK-INST: sh.xnor.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xc7,0x03]
sh.xnor.t %d0, %d15, 7, %d14, 7

# CHECK-INST: sh.xnor.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x47,0x0c]
sh.xnor.t %d0, %d15, 7, %d14, 24

# CHECK-INST: sh.xnor.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xc7,0x0f]
sh.xnor.t %d0, %d15, 7, %d14, 31

# CHECK-INST: sh.xnor.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x47,0x00]
sh.xnor.t %d0, %d15, 7, %d15, 0

# CHECK-INST: sh.xnor.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xc7,0x03]
sh.xnor.t %d0, %d15, 7, %d15, 7

# CHECK-INST: sh.xnor.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x47,0x0c]
sh.xnor.t %d0, %d15, 7, %d15, 24

# CHECK-INST: sh.xnor.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xc7,0x0f]
sh.xnor.t %d0, %d15, 7, %d15, 31

# CHECK-INST: sh.xnor.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x58,0x00]
sh.xnor.t %d0, %d15, 24, %d0, 0

# CHECK-INST: sh.xnor.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xd8,0x03]
sh.xnor.t %d0, %d15, 24, %d0, 7

# CHECK-INST: sh.xnor.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x58,0x0c]
sh.xnor.t %d0, %d15, 24, %d0, 24

# CHECK-INST: sh.xnor.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xd8,0x0f]
sh.xnor.t %d0, %d15, 24, %d0, 31

# CHECK-INST: sh.xnor.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x58,0x00]
sh.xnor.t %d0, %d15, 24, %d1, 0

# CHECK-INST: sh.xnor.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xd8,0x03]
sh.xnor.t %d0, %d15, 24, %d1, 7

# CHECK-INST: sh.xnor.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x58,0x0c]
sh.xnor.t %d0, %d15, 24, %d1, 24

# CHECK-INST: sh.xnor.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xd8,0x0f]
sh.xnor.t %d0, %d15, 24, %d1, 31

# CHECK-INST: sh.xnor.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x58,0x00]
sh.xnor.t %d0, %d15, 24, %d14, 0

# CHECK-INST: sh.xnor.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xd8,0x03]
sh.xnor.t %d0, %d15, 24, %d14, 7

# CHECK-INST: sh.xnor.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x58,0x0c]
sh.xnor.t %d0, %d15, 24, %d14, 24

# CHECK-INST: sh.xnor.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xd8,0x0f]
sh.xnor.t %d0, %d15, 24, %d14, 31

# CHECK-INST: sh.xnor.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x58,0x00]
sh.xnor.t %d0, %d15, 24, %d15, 0

# CHECK-INST: sh.xnor.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xd8,0x03]
sh.xnor.t %d0, %d15, 24, %d15, 7

# CHECK-INST: sh.xnor.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x58,0x0c]
sh.xnor.t %d0, %d15, 24, %d15, 24

# CHECK-INST: sh.xnor.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xd8,0x0f]
sh.xnor.t %d0, %d15, 24, %d15, 31

# CHECK-INST: sh.xnor.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x5f,0x00]
sh.xnor.t %d0, %d15, 31, %d0, 0

# CHECK-INST: sh.xnor.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xdf,0x03]
sh.xnor.t %d0, %d15, 31, %d0, 7

# CHECK-INST: sh.xnor.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x5f,0x0c]
sh.xnor.t %d0, %d15, 31, %d0, 24

# CHECK-INST: sh.xnor.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xdf,0x0f]
sh.xnor.t %d0, %d15, 31, %d0, 31

# CHECK-INST: sh.xnor.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x5f,0x00]
sh.xnor.t %d0, %d15, 31, %d1, 0

# CHECK-INST: sh.xnor.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xdf,0x03]
sh.xnor.t %d0, %d15, 31, %d1, 7

# CHECK-INST: sh.xnor.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x5f,0x0c]
sh.xnor.t %d0, %d15, 31, %d1, 24

# CHECK-INST: sh.xnor.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xdf,0x0f]
sh.xnor.t %d0, %d15, 31, %d1, 31

# CHECK-INST: sh.xnor.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x5f,0x00]
sh.xnor.t %d0, %d15, 31, %d14, 0

# CHECK-INST: sh.xnor.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xdf,0x03]
sh.xnor.t %d0, %d15, 31, %d14, 7

# CHECK-INST: sh.xnor.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x5f,0x0c]
sh.xnor.t %d0, %d15, 31, %d14, 24

# CHECK-INST: sh.xnor.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xdf,0x0f]
sh.xnor.t %d0, %d15, 31, %d14, 31

# CHECK-INST: sh.xnor.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x5f,0x00]
sh.xnor.t %d0, %d15, 31, %d15, 0

# CHECK-INST: sh.xnor.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xdf,0x03]
sh.xnor.t %d0, %d15, 31, %d15, 7

# CHECK-INST: sh.xnor.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x5f,0x0c]
sh.xnor.t %d0, %d15, 31, %d15, 24

# CHECK-INST: sh.xnor.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xdf,0x0f]
sh.xnor.t %d0, %d15, 31, %d15, 31

# CHECK-INST: sh.xnor.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x40,0x10]
sh.xnor.t %d1, %d0, 0, %d0, 0

# CHECK-INST: sh.xnor.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xc0,0x13]
sh.xnor.t %d1, %d0, 0, %d0, 7

# CHECK-INST: sh.xnor.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x40,0x1c]
sh.xnor.t %d1, %d0, 0, %d0, 24

# CHECK-INST: sh.xnor.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xc0,0x1f]
sh.xnor.t %d1, %d0, 0, %d0, 31

# CHECK-INST: sh.xnor.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x40,0x10]
sh.xnor.t %d1, %d0, 0, %d1, 0

# CHECK-INST: sh.xnor.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xc0,0x13]
sh.xnor.t %d1, %d0, 0, %d1, 7

# CHECK-INST: sh.xnor.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x40,0x1c]
sh.xnor.t %d1, %d0, 0, %d1, 24

# CHECK-INST: sh.xnor.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xc0,0x1f]
sh.xnor.t %d1, %d0, 0, %d1, 31

# CHECK-INST: sh.xnor.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x40,0x10]
sh.xnor.t %d1, %d0, 0, %d14, 0

# CHECK-INST: sh.xnor.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xc0,0x13]
sh.xnor.t %d1, %d0, 0, %d14, 7

# CHECK-INST: sh.xnor.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x40,0x1c]
sh.xnor.t %d1, %d0, 0, %d14, 24

# CHECK-INST: sh.xnor.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xc0,0x1f]
sh.xnor.t %d1, %d0, 0, %d14, 31

# CHECK-INST: sh.xnor.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x40,0x10]
sh.xnor.t %d1, %d0, 0, %d15, 0

# CHECK-INST: sh.xnor.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xc0,0x13]
sh.xnor.t %d1, %d0, 0, %d15, 7

# CHECK-INST: sh.xnor.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x40,0x1c]
sh.xnor.t %d1, %d0, 0, %d15, 24

# CHECK-INST: sh.xnor.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xc0,0x1f]
sh.xnor.t %d1, %d0, 0, %d15, 31

# CHECK-INST: sh.xnor.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x47,0x10]
sh.xnor.t %d1, %d0, 7, %d0, 0

# CHECK-INST: sh.xnor.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xc7,0x13]
sh.xnor.t %d1, %d0, 7, %d0, 7

# CHECK-INST: sh.xnor.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x47,0x1c]
sh.xnor.t %d1, %d0, 7, %d0, 24

# CHECK-INST: sh.xnor.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xc7,0x1f]
sh.xnor.t %d1, %d0, 7, %d0, 31

# CHECK-INST: sh.xnor.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x47,0x10]
sh.xnor.t %d1, %d0, 7, %d1, 0

# CHECK-INST: sh.xnor.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xc7,0x13]
sh.xnor.t %d1, %d0, 7, %d1, 7

# CHECK-INST: sh.xnor.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x47,0x1c]
sh.xnor.t %d1, %d0, 7, %d1, 24

# CHECK-INST: sh.xnor.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xc7,0x1f]
sh.xnor.t %d1, %d0, 7, %d1, 31

# CHECK-INST: sh.xnor.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x47,0x10]
sh.xnor.t %d1, %d0, 7, %d14, 0

# CHECK-INST: sh.xnor.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xc7,0x13]
sh.xnor.t %d1, %d0, 7, %d14, 7

# CHECK-INST: sh.xnor.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x47,0x1c]
sh.xnor.t %d1, %d0, 7, %d14, 24

# CHECK-INST: sh.xnor.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xc7,0x1f]
sh.xnor.t %d1, %d0, 7, %d14, 31

# CHECK-INST: sh.xnor.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x47,0x10]
sh.xnor.t %d1, %d0, 7, %d15, 0

# CHECK-INST: sh.xnor.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xc7,0x13]
sh.xnor.t %d1, %d0, 7, %d15, 7

# CHECK-INST: sh.xnor.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x47,0x1c]
sh.xnor.t %d1, %d0, 7, %d15, 24

# CHECK-INST: sh.xnor.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xc7,0x1f]
sh.xnor.t %d1, %d0, 7, %d15, 31

# CHECK-INST: sh.xnor.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x58,0x10]
sh.xnor.t %d1, %d0, 24, %d0, 0

# CHECK-INST: sh.xnor.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xd8,0x13]
sh.xnor.t %d1, %d0, 24, %d0, 7

# CHECK-INST: sh.xnor.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x58,0x1c]
sh.xnor.t %d1, %d0, 24, %d0, 24

# CHECK-INST: sh.xnor.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xd8,0x1f]
sh.xnor.t %d1, %d0, 24, %d0, 31

# CHECK-INST: sh.xnor.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x58,0x10]
sh.xnor.t %d1, %d0, 24, %d1, 0

# CHECK-INST: sh.xnor.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xd8,0x13]
sh.xnor.t %d1, %d0, 24, %d1, 7

# CHECK-INST: sh.xnor.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x58,0x1c]
sh.xnor.t %d1, %d0, 24, %d1, 24

# CHECK-INST: sh.xnor.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xd8,0x1f]
sh.xnor.t %d1, %d0, 24, %d1, 31

# CHECK-INST: sh.xnor.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x58,0x10]
sh.xnor.t %d1, %d0, 24, %d14, 0

# CHECK-INST: sh.xnor.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xd8,0x13]
sh.xnor.t %d1, %d0, 24, %d14, 7

# CHECK-INST: sh.xnor.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x58,0x1c]
sh.xnor.t %d1, %d0, 24, %d14, 24

# CHECK-INST: sh.xnor.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xd8,0x1f]
sh.xnor.t %d1, %d0, 24, %d14, 31

# CHECK-INST: sh.xnor.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x58,0x10]
sh.xnor.t %d1, %d0, 24, %d15, 0

# CHECK-INST: sh.xnor.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xd8,0x13]
sh.xnor.t %d1, %d0, 24, %d15, 7

# CHECK-INST: sh.xnor.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x58,0x1c]
sh.xnor.t %d1, %d0, 24, %d15, 24

# CHECK-INST: sh.xnor.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xd8,0x1f]
sh.xnor.t %d1, %d0, 24, %d15, 31

# CHECK-INST: sh.xnor.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x5f,0x10]
sh.xnor.t %d1, %d0, 31, %d0, 0

# CHECK-INST: sh.xnor.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xdf,0x13]
sh.xnor.t %d1, %d0, 31, %d0, 7

# CHECK-INST: sh.xnor.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x5f,0x1c]
sh.xnor.t %d1, %d0, 31, %d0, 24

# CHECK-INST: sh.xnor.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xdf,0x1f]
sh.xnor.t %d1, %d0, 31, %d0, 31

# CHECK-INST: sh.xnor.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x5f,0x10]
sh.xnor.t %d1, %d0, 31, %d1, 0

# CHECK-INST: sh.xnor.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xdf,0x13]
sh.xnor.t %d1, %d0, 31, %d1, 7

# CHECK-INST: sh.xnor.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x5f,0x1c]
sh.xnor.t %d1, %d0, 31, %d1, 24

# CHECK-INST: sh.xnor.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xdf,0x1f]
sh.xnor.t %d1, %d0, 31, %d1, 31

# CHECK-INST: sh.xnor.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x5f,0x10]
sh.xnor.t %d1, %d0, 31, %d14, 0

# CHECK-INST: sh.xnor.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xdf,0x13]
sh.xnor.t %d1, %d0, 31, %d14, 7

# CHECK-INST: sh.xnor.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x5f,0x1c]
sh.xnor.t %d1, %d0, 31, %d14, 24

# CHECK-INST: sh.xnor.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xdf,0x1f]
sh.xnor.t %d1, %d0, 31, %d14, 31

# CHECK-INST: sh.xnor.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x5f,0x10]
sh.xnor.t %d1, %d0, 31, %d15, 0

# CHECK-INST: sh.xnor.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xdf,0x13]
sh.xnor.t %d1, %d0, 31, %d15, 7

# CHECK-INST: sh.xnor.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x5f,0x1c]
sh.xnor.t %d1, %d0, 31, %d15, 24

# CHECK-INST: sh.xnor.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xdf,0x1f]
sh.xnor.t %d1, %d0, 31, %d15, 31

# CHECK-INST: sh.xnor.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x40,0x10]
sh.xnor.t %d1, %d1, 0, %d0, 0

# CHECK-INST: sh.xnor.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xc0,0x13]
sh.xnor.t %d1, %d1, 0, %d0, 7

# CHECK-INST: sh.xnor.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x40,0x1c]
sh.xnor.t %d1, %d1, 0, %d0, 24

# CHECK-INST: sh.xnor.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xc0,0x1f]
sh.xnor.t %d1, %d1, 0, %d0, 31

# CHECK-INST: sh.xnor.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x40,0x10]
sh.xnor.t %d1, %d1, 0, %d1, 0

# CHECK-INST: sh.xnor.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xc0,0x13]
sh.xnor.t %d1, %d1, 0, %d1, 7

# CHECK-INST: sh.xnor.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x40,0x1c]
sh.xnor.t %d1, %d1, 0, %d1, 24

# CHECK-INST: sh.xnor.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xc0,0x1f]
sh.xnor.t %d1, %d1, 0, %d1, 31

# CHECK-INST: sh.xnor.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x40,0x10]
sh.xnor.t %d1, %d1, 0, %d14, 0

# CHECK-INST: sh.xnor.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xc0,0x13]
sh.xnor.t %d1, %d1, 0, %d14, 7

# CHECK-INST: sh.xnor.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x40,0x1c]
sh.xnor.t %d1, %d1, 0, %d14, 24

# CHECK-INST: sh.xnor.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xc0,0x1f]
sh.xnor.t %d1, %d1, 0, %d14, 31

# CHECK-INST: sh.xnor.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x40,0x10]
sh.xnor.t %d1, %d1, 0, %d15, 0

# CHECK-INST: sh.xnor.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xc0,0x13]
sh.xnor.t %d1, %d1, 0, %d15, 7

# CHECK-INST: sh.xnor.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x40,0x1c]
sh.xnor.t %d1, %d1, 0, %d15, 24

# CHECK-INST: sh.xnor.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xc0,0x1f]
sh.xnor.t %d1, %d1, 0, %d15, 31

# CHECK-INST: sh.xnor.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x47,0x10]
sh.xnor.t %d1, %d1, 7, %d0, 0

# CHECK-INST: sh.xnor.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xc7,0x13]
sh.xnor.t %d1, %d1, 7, %d0, 7

# CHECK-INST: sh.xnor.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x47,0x1c]
sh.xnor.t %d1, %d1, 7, %d0, 24

# CHECK-INST: sh.xnor.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xc7,0x1f]
sh.xnor.t %d1, %d1, 7, %d0, 31

# CHECK-INST: sh.xnor.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x47,0x10]
sh.xnor.t %d1, %d1, 7, %d1, 0

# CHECK-INST: sh.xnor.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xc7,0x13]
sh.xnor.t %d1, %d1, 7, %d1, 7

# CHECK-INST: sh.xnor.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x47,0x1c]
sh.xnor.t %d1, %d1, 7, %d1, 24

# CHECK-INST: sh.xnor.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xc7,0x1f]
sh.xnor.t %d1, %d1, 7, %d1, 31

# CHECK-INST: sh.xnor.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x47,0x10]
sh.xnor.t %d1, %d1, 7, %d14, 0

# CHECK-INST: sh.xnor.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xc7,0x13]
sh.xnor.t %d1, %d1, 7, %d14, 7

# CHECK-INST: sh.xnor.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x47,0x1c]
sh.xnor.t %d1, %d1, 7, %d14, 24

# CHECK-INST: sh.xnor.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xc7,0x1f]
sh.xnor.t %d1, %d1, 7, %d14, 31

# CHECK-INST: sh.xnor.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x47,0x10]
sh.xnor.t %d1, %d1, 7, %d15, 0

# CHECK-INST: sh.xnor.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xc7,0x13]
sh.xnor.t %d1, %d1, 7, %d15, 7

# CHECK-INST: sh.xnor.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x47,0x1c]
sh.xnor.t %d1, %d1, 7, %d15, 24

# CHECK-INST: sh.xnor.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xc7,0x1f]
sh.xnor.t %d1, %d1, 7, %d15, 31

# CHECK-INST: sh.xnor.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x58,0x10]
sh.xnor.t %d1, %d1, 24, %d0, 0

# CHECK-INST: sh.xnor.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xd8,0x13]
sh.xnor.t %d1, %d1, 24, %d0, 7

# CHECK-INST: sh.xnor.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x58,0x1c]
sh.xnor.t %d1, %d1, 24, %d0, 24

# CHECK-INST: sh.xnor.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xd8,0x1f]
sh.xnor.t %d1, %d1, 24, %d0, 31

# CHECK-INST: sh.xnor.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x58,0x10]
sh.xnor.t %d1, %d1, 24, %d1, 0

# CHECK-INST: sh.xnor.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xd8,0x13]
sh.xnor.t %d1, %d1, 24, %d1, 7

# CHECK-INST: sh.xnor.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x58,0x1c]
sh.xnor.t %d1, %d1, 24, %d1, 24

# CHECK-INST: sh.xnor.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xd8,0x1f]
sh.xnor.t %d1, %d1, 24, %d1, 31

# CHECK-INST: sh.xnor.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x58,0x10]
sh.xnor.t %d1, %d1, 24, %d14, 0

# CHECK-INST: sh.xnor.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xd8,0x13]
sh.xnor.t %d1, %d1, 24, %d14, 7

# CHECK-INST: sh.xnor.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x58,0x1c]
sh.xnor.t %d1, %d1, 24, %d14, 24

# CHECK-INST: sh.xnor.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xd8,0x1f]
sh.xnor.t %d1, %d1, 24, %d14, 31

# CHECK-INST: sh.xnor.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x58,0x10]
sh.xnor.t %d1, %d1, 24, %d15, 0

# CHECK-INST: sh.xnor.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xd8,0x13]
sh.xnor.t %d1, %d1, 24, %d15, 7

# CHECK-INST: sh.xnor.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x58,0x1c]
sh.xnor.t %d1, %d1, 24, %d15, 24

# CHECK-INST: sh.xnor.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xd8,0x1f]
sh.xnor.t %d1, %d1, 24, %d15, 31

# CHECK-INST: sh.xnor.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x5f,0x10]
sh.xnor.t %d1, %d1, 31, %d0, 0

# CHECK-INST: sh.xnor.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xdf,0x13]
sh.xnor.t %d1, %d1, 31, %d0, 7

# CHECK-INST: sh.xnor.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x5f,0x1c]
sh.xnor.t %d1, %d1, 31, %d0, 24

# CHECK-INST: sh.xnor.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xdf,0x1f]
sh.xnor.t %d1, %d1, 31, %d0, 31

# CHECK-INST: sh.xnor.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x5f,0x10]
sh.xnor.t %d1, %d1, 31, %d1, 0

# CHECK-INST: sh.xnor.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xdf,0x13]
sh.xnor.t %d1, %d1, 31, %d1, 7

# CHECK-INST: sh.xnor.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x5f,0x1c]
sh.xnor.t %d1, %d1, 31, %d1, 24

# CHECK-INST: sh.xnor.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xdf,0x1f]
sh.xnor.t %d1, %d1, 31, %d1, 31

# CHECK-INST: sh.xnor.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x5f,0x10]
sh.xnor.t %d1, %d1, 31, %d14, 0

# CHECK-INST: sh.xnor.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xdf,0x13]
sh.xnor.t %d1, %d1, 31, %d14, 7

# CHECK-INST: sh.xnor.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x5f,0x1c]
sh.xnor.t %d1, %d1, 31, %d14, 24

# CHECK-INST: sh.xnor.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xdf,0x1f]
sh.xnor.t %d1, %d1, 31, %d14, 31

# CHECK-INST: sh.xnor.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x5f,0x10]
sh.xnor.t %d1, %d1, 31, %d15, 0

# CHECK-INST: sh.xnor.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xdf,0x13]
sh.xnor.t %d1, %d1, 31, %d15, 7

# CHECK-INST: sh.xnor.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x5f,0x1c]
sh.xnor.t %d1, %d1, 31, %d15, 24

# CHECK-INST: sh.xnor.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xdf,0x1f]
sh.xnor.t %d1, %d1, 31, %d15, 31

# CHECK-INST: sh.xnor.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x40,0x10]
sh.xnor.t %d1, %d14, 0, %d0, 0

# CHECK-INST: sh.xnor.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xc0,0x13]
sh.xnor.t %d1, %d14, 0, %d0, 7

# CHECK-INST: sh.xnor.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x40,0x1c]
sh.xnor.t %d1, %d14, 0, %d0, 24

# CHECK-INST: sh.xnor.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xc0,0x1f]
sh.xnor.t %d1, %d14, 0, %d0, 31

# CHECK-INST: sh.xnor.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x40,0x10]
sh.xnor.t %d1, %d14, 0, %d1, 0

# CHECK-INST: sh.xnor.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xc0,0x13]
sh.xnor.t %d1, %d14, 0, %d1, 7

# CHECK-INST: sh.xnor.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x40,0x1c]
sh.xnor.t %d1, %d14, 0, %d1, 24

# CHECK-INST: sh.xnor.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xc0,0x1f]
sh.xnor.t %d1, %d14, 0, %d1, 31

# CHECK-INST: sh.xnor.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x40,0x10]
sh.xnor.t %d1, %d14, 0, %d14, 0

# CHECK-INST: sh.xnor.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xc0,0x13]
sh.xnor.t %d1, %d14, 0, %d14, 7

# CHECK-INST: sh.xnor.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x40,0x1c]
sh.xnor.t %d1, %d14, 0, %d14, 24

# CHECK-INST: sh.xnor.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xc0,0x1f]
sh.xnor.t %d1, %d14, 0, %d14, 31

# CHECK-INST: sh.xnor.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x40,0x10]
sh.xnor.t %d1, %d14, 0, %d15, 0

# CHECK-INST: sh.xnor.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xc0,0x13]
sh.xnor.t %d1, %d14, 0, %d15, 7

# CHECK-INST: sh.xnor.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x40,0x1c]
sh.xnor.t %d1, %d14, 0, %d15, 24

# CHECK-INST: sh.xnor.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xc0,0x1f]
sh.xnor.t %d1, %d14, 0, %d15, 31

# CHECK-INST: sh.xnor.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x47,0x10]
sh.xnor.t %d1, %d14, 7, %d0, 0

# CHECK-INST: sh.xnor.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xc7,0x13]
sh.xnor.t %d1, %d14, 7, %d0, 7

# CHECK-INST: sh.xnor.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x47,0x1c]
sh.xnor.t %d1, %d14, 7, %d0, 24

# CHECK-INST: sh.xnor.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xc7,0x1f]
sh.xnor.t %d1, %d14, 7, %d0, 31

# CHECK-INST: sh.xnor.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x47,0x10]
sh.xnor.t %d1, %d14, 7, %d1, 0

# CHECK-INST: sh.xnor.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xc7,0x13]
sh.xnor.t %d1, %d14, 7, %d1, 7

# CHECK-INST: sh.xnor.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x47,0x1c]
sh.xnor.t %d1, %d14, 7, %d1, 24

# CHECK-INST: sh.xnor.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xc7,0x1f]
sh.xnor.t %d1, %d14, 7, %d1, 31

# CHECK-INST: sh.xnor.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x47,0x10]
sh.xnor.t %d1, %d14, 7, %d14, 0

# CHECK-INST: sh.xnor.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xc7,0x13]
sh.xnor.t %d1, %d14, 7, %d14, 7

# CHECK-INST: sh.xnor.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x47,0x1c]
sh.xnor.t %d1, %d14, 7, %d14, 24

# CHECK-INST: sh.xnor.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xc7,0x1f]
sh.xnor.t %d1, %d14, 7, %d14, 31

# CHECK-INST: sh.xnor.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x47,0x10]
sh.xnor.t %d1, %d14, 7, %d15, 0

# CHECK-INST: sh.xnor.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xc7,0x13]
sh.xnor.t %d1, %d14, 7, %d15, 7

# CHECK-INST: sh.xnor.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x47,0x1c]
sh.xnor.t %d1, %d14, 7, %d15, 24

# CHECK-INST: sh.xnor.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xc7,0x1f]
sh.xnor.t %d1, %d14, 7, %d15, 31

# CHECK-INST: sh.xnor.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x58,0x10]
sh.xnor.t %d1, %d14, 24, %d0, 0

# CHECK-INST: sh.xnor.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xd8,0x13]
sh.xnor.t %d1, %d14, 24, %d0, 7

# CHECK-INST: sh.xnor.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x58,0x1c]
sh.xnor.t %d1, %d14, 24, %d0, 24

# CHECK-INST: sh.xnor.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xd8,0x1f]
sh.xnor.t %d1, %d14, 24, %d0, 31

# CHECK-INST: sh.xnor.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x58,0x10]
sh.xnor.t %d1, %d14, 24, %d1, 0

# CHECK-INST: sh.xnor.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xd8,0x13]
sh.xnor.t %d1, %d14, 24, %d1, 7

# CHECK-INST: sh.xnor.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x58,0x1c]
sh.xnor.t %d1, %d14, 24, %d1, 24

# CHECK-INST: sh.xnor.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xd8,0x1f]
sh.xnor.t %d1, %d14, 24, %d1, 31

# CHECK-INST: sh.xnor.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x58,0x10]
sh.xnor.t %d1, %d14, 24, %d14, 0

# CHECK-INST: sh.xnor.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xd8,0x13]
sh.xnor.t %d1, %d14, 24, %d14, 7

# CHECK-INST: sh.xnor.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x58,0x1c]
sh.xnor.t %d1, %d14, 24, %d14, 24

# CHECK-INST: sh.xnor.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xd8,0x1f]
sh.xnor.t %d1, %d14, 24, %d14, 31

# CHECK-INST: sh.xnor.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x58,0x10]
sh.xnor.t %d1, %d14, 24, %d15, 0

# CHECK-INST: sh.xnor.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xd8,0x13]
sh.xnor.t %d1, %d14, 24, %d15, 7

# CHECK-INST: sh.xnor.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x58,0x1c]
sh.xnor.t %d1, %d14, 24, %d15, 24

# CHECK-INST: sh.xnor.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xd8,0x1f]
sh.xnor.t %d1, %d14, 24, %d15, 31

# CHECK-INST: sh.xnor.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x5f,0x10]
sh.xnor.t %d1, %d14, 31, %d0, 0

# CHECK-INST: sh.xnor.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xdf,0x13]
sh.xnor.t %d1, %d14, 31, %d0, 7

# CHECK-INST: sh.xnor.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x5f,0x1c]
sh.xnor.t %d1, %d14, 31, %d0, 24

# CHECK-INST: sh.xnor.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xdf,0x1f]
sh.xnor.t %d1, %d14, 31, %d0, 31

# CHECK-INST: sh.xnor.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x5f,0x10]
sh.xnor.t %d1, %d14, 31, %d1, 0

# CHECK-INST: sh.xnor.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xdf,0x13]
sh.xnor.t %d1, %d14, 31, %d1, 7

# CHECK-INST: sh.xnor.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x5f,0x1c]
sh.xnor.t %d1, %d14, 31, %d1, 24

# CHECK-INST: sh.xnor.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xdf,0x1f]
sh.xnor.t %d1, %d14, 31, %d1, 31

# CHECK-INST: sh.xnor.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x5f,0x10]
sh.xnor.t %d1, %d14, 31, %d14, 0

# CHECK-INST: sh.xnor.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xdf,0x13]
sh.xnor.t %d1, %d14, 31, %d14, 7

# CHECK-INST: sh.xnor.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x5f,0x1c]
sh.xnor.t %d1, %d14, 31, %d14, 24

# CHECK-INST: sh.xnor.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xdf,0x1f]
sh.xnor.t %d1, %d14, 31, %d14, 31

# CHECK-INST: sh.xnor.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x5f,0x10]
sh.xnor.t %d1, %d14, 31, %d15, 0

# CHECK-INST: sh.xnor.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xdf,0x13]
sh.xnor.t %d1, %d14, 31, %d15, 7

# CHECK-INST: sh.xnor.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x5f,0x1c]
sh.xnor.t %d1, %d14, 31, %d15, 24

# CHECK-INST: sh.xnor.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xdf,0x1f]
sh.xnor.t %d1, %d14, 31, %d15, 31

# CHECK-INST: sh.xnor.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x40,0x10]
sh.xnor.t %d1, %d15, 0, %d0, 0

# CHECK-INST: sh.xnor.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xc0,0x13]
sh.xnor.t %d1, %d15, 0, %d0, 7

# CHECK-INST: sh.xnor.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x40,0x1c]
sh.xnor.t %d1, %d15, 0, %d0, 24

# CHECK-INST: sh.xnor.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xc0,0x1f]
sh.xnor.t %d1, %d15, 0, %d0, 31

# CHECK-INST: sh.xnor.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x40,0x10]
sh.xnor.t %d1, %d15, 0, %d1, 0

# CHECK-INST: sh.xnor.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xc0,0x13]
sh.xnor.t %d1, %d15, 0, %d1, 7

# CHECK-INST: sh.xnor.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x40,0x1c]
sh.xnor.t %d1, %d15, 0, %d1, 24

# CHECK-INST: sh.xnor.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xc0,0x1f]
sh.xnor.t %d1, %d15, 0, %d1, 31

# CHECK-INST: sh.xnor.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x40,0x10]
sh.xnor.t %d1, %d15, 0, %d14, 0

# CHECK-INST: sh.xnor.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xc0,0x13]
sh.xnor.t %d1, %d15, 0, %d14, 7

# CHECK-INST: sh.xnor.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x40,0x1c]
sh.xnor.t %d1, %d15, 0, %d14, 24

# CHECK-INST: sh.xnor.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xc0,0x1f]
sh.xnor.t %d1, %d15, 0, %d14, 31

# CHECK-INST: sh.xnor.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x40,0x10]
sh.xnor.t %d1, %d15, 0, %d15, 0

# CHECK-INST: sh.xnor.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xc0,0x13]
sh.xnor.t %d1, %d15, 0, %d15, 7

# CHECK-INST: sh.xnor.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x40,0x1c]
sh.xnor.t %d1, %d15, 0, %d15, 24

# CHECK-INST: sh.xnor.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xc0,0x1f]
sh.xnor.t %d1, %d15, 0, %d15, 31

# CHECK-INST: sh.xnor.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x47,0x10]
sh.xnor.t %d1, %d15, 7, %d0, 0

# CHECK-INST: sh.xnor.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xc7,0x13]
sh.xnor.t %d1, %d15, 7, %d0, 7

# CHECK-INST: sh.xnor.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x47,0x1c]
sh.xnor.t %d1, %d15, 7, %d0, 24

# CHECK-INST: sh.xnor.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xc7,0x1f]
sh.xnor.t %d1, %d15, 7, %d0, 31

# CHECK-INST: sh.xnor.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x47,0x10]
sh.xnor.t %d1, %d15, 7, %d1, 0

# CHECK-INST: sh.xnor.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xc7,0x13]
sh.xnor.t %d1, %d15, 7, %d1, 7

# CHECK-INST: sh.xnor.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x47,0x1c]
sh.xnor.t %d1, %d15, 7, %d1, 24

# CHECK-INST: sh.xnor.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xc7,0x1f]
sh.xnor.t %d1, %d15, 7, %d1, 31

# CHECK-INST: sh.xnor.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x47,0x10]
sh.xnor.t %d1, %d15, 7, %d14, 0

# CHECK-INST: sh.xnor.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xc7,0x13]
sh.xnor.t %d1, %d15, 7, %d14, 7

# CHECK-INST: sh.xnor.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x47,0x1c]
sh.xnor.t %d1, %d15, 7, %d14, 24

# CHECK-INST: sh.xnor.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xc7,0x1f]
sh.xnor.t %d1, %d15, 7, %d14, 31

# CHECK-INST: sh.xnor.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x47,0x10]
sh.xnor.t %d1, %d15, 7, %d15, 0

# CHECK-INST: sh.xnor.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xc7,0x13]
sh.xnor.t %d1, %d15, 7, %d15, 7

# CHECK-INST: sh.xnor.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x47,0x1c]
sh.xnor.t %d1, %d15, 7, %d15, 24

# CHECK-INST: sh.xnor.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xc7,0x1f]
sh.xnor.t %d1, %d15, 7, %d15, 31

# CHECK-INST: sh.xnor.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x58,0x10]
sh.xnor.t %d1, %d15, 24, %d0, 0

# CHECK-INST: sh.xnor.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xd8,0x13]
sh.xnor.t %d1, %d15, 24, %d0, 7

# CHECK-INST: sh.xnor.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x58,0x1c]
sh.xnor.t %d1, %d15, 24, %d0, 24

# CHECK-INST: sh.xnor.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xd8,0x1f]
sh.xnor.t %d1, %d15, 24, %d0, 31

# CHECK-INST: sh.xnor.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x58,0x10]
sh.xnor.t %d1, %d15, 24, %d1, 0

# CHECK-INST: sh.xnor.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xd8,0x13]
sh.xnor.t %d1, %d15, 24, %d1, 7

# CHECK-INST: sh.xnor.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x58,0x1c]
sh.xnor.t %d1, %d15, 24, %d1, 24

# CHECK-INST: sh.xnor.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xd8,0x1f]
sh.xnor.t %d1, %d15, 24, %d1, 31

# CHECK-INST: sh.xnor.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x58,0x10]
sh.xnor.t %d1, %d15, 24, %d14, 0

# CHECK-INST: sh.xnor.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xd8,0x13]
sh.xnor.t %d1, %d15, 24, %d14, 7

# CHECK-INST: sh.xnor.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x58,0x1c]
sh.xnor.t %d1, %d15, 24, %d14, 24

# CHECK-INST: sh.xnor.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xd8,0x1f]
sh.xnor.t %d1, %d15, 24, %d14, 31

# CHECK-INST: sh.xnor.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x58,0x10]
sh.xnor.t %d1, %d15, 24, %d15, 0

# CHECK-INST: sh.xnor.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xd8,0x13]
sh.xnor.t %d1, %d15, 24, %d15, 7

# CHECK-INST: sh.xnor.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x58,0x1c]
sh.xnor.t %d1, %d15, 24, %d15, 24

# CHECK-INST: sh.xnor.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xd8,0x1f]
sh.xnor.t %d1, %d15, 24, %d15, 31

# CHECK-INST: sh.xnor.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x5f,0x10]
sh.xnor.t %d1, %d15, 31, %d0, 0

# CHECK-INST: sh.xnor.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xdf,0x13]
sh.xnor.t %d1, %d15, 31, %d0, 7

# CHECK-INST: sh.xnor.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x5f,0x1c]
sh.xnor.t %d1, %d15, 31, %d0, 24

# CHECK-INST: sh.xnor.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xdf,0x1f]
sh.xnor.t %d1, %d15, 31, %d0, 31

# CHECK-INST: sh.xnor.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x5f,0x10]
sh.xnor.t %d1, %d15, 31, %d1, 0

# CHECK-INST: sh.xnor.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xdf,0x13]
sh.xnor.t %d1, %d15, 31, %d1, 7

# CHECK-INST: sh.xnor.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x5f,0x1c]
sh.xnor.t %d1, %d15, 31, %d1, 24

# CHECK-INST: sh.xnor.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xdf,0x1f]
sh.xnor.t %d1, %d15, 31, %d1, 31

# CHECK-INST: sh.xnor.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x5f,0x10]
sh.xnor.t %d1, %d15, 31, %d14, 0

# CHECK-INST: sh.xnor.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xdf,0x13]
sh.xnor.t %d1, %d15, 31, %d14, 7

# CHECK-INST: sh.xnor.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x5f,0x1c]
sh.xnor.t %d1, %d15, 31, %d14, 24

# CHECK-INST: sh.xnor.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xdf,0x1f]
sh.xnor.t %d1, %d15, 31, %d14, 31

# CHECK-INST: sh.xnor.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x5f,0x10]
sh.xnor.t %d1, %d15, 31, %d15, 0

# CHECK-INST: sh.xnor.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xdf,0x13]
sh.xnor.t %d1, %d15, 31, %d15, 7

# CHECK-INST: sh.xnor.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x5f,0x1c]
sh.xnor.t %d1, %d15, 31, %d15, 24

# CHECK-INST: sh.xnor.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xdf,0x1f]
sh.xnor.t %d1, %d15, 31, %d15, 31

# CHECK-INST: sh.xnor.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x40,0xe0]
sh.xnor.t %d14, %d0, 0, %d0, 0

# CHECK-INST: sh.xnor.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xc0,0xe3]
sh.xnor.t %d14, %d0, 0, %d0, 7

# CHECK-INST: sh.xnor.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x40,0xec]
sh.xnor.t %d14, %d0, 0, %d0, 24

# CHECK-INST: sh.xnor.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xc0,0xef]
sh.xnor.t %d14, %d0, 0, %d0, 31

# CHECK-INST: sh.xnor.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x40,0xe0]
sh.xnor.t %d14, %d0, 0, %d1, 0

# CHECK-INST: sh.xnor.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xc0,0xe3]
sh.xnor.t %d14, %d0, 0, %d1, 7

# CHECK-INST: sh.xnor.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x40,0xec]
sh.xnor.t %d14, %d0, 0, %d1, 24

# CHECK-INST: sh.xnor.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xc0,0xef]
sh.xnor.t %d14, %d0, 0, %d1, 31

# CHECK-INST: sh.xnor.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x40,0xe0]
sh.xnor.t %d14, %d0, 0, %d14, 0

# CHECK-INST: sh.xnor.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xc0,0xe3]
sh.xnor.t %d14, %d0, 0, %d14, 7

# CHECK-INST: sh.xnor.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x40,0xec]
sh.xnor.t %d14, %d0, 0, %d14, 24

# CHECK-INST: sh.xnor.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xc0,0xef]
sh.xnor.t %d14, %d0, 0, %d14, 31

# CHECK-INST: sh.xnor.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x40,0xe0]
sh.xnor.t %d14, %d0, 0, %d15, 0

# CHECK-INST: sh.xnor.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xc0,0xe3]
sh.xnor.t %d14, %d0, 0, %d15, 7

# CHECK-INST: sh.xnor.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x40,0xec]
sh.xnor.t %d14, %d0, 0, %d15, 24

# CHECK-INST: sh.xnor.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xc0,0xef]
sh.xnor.t %d14, %d0, 0, %d15, 31

# CHECK-INST: sh.xnor.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x47,0xe0]
sh.xnor.t %d14, %d0, 7, %d0, 0

# CHECK-INST: sh.xnor.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xc7,0xe3]
sh.xnor.t %d14, %d0, 7, %d0, 7

# CHECK-INST: sh.xnor.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x47,0xec]
sh.xnor.t %d14, %d0, 7, %d0, 24

# CHECK-INST: sh.xnor.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xc7,0xef]
sh.xnor.t %d14, %d0, 7, %d0, 31

# CHECK-INST: sh.xnor.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x47,0xe0]
sh.xnor.t %d14, %d0, 7, %d1, 0

# CHECK-INST: sh.xnor.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xc7,0xe3]
sh.xnor.t %d14, %d0, 7, %d1, 7

# CHECK-INST: sh.xnor.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x47,0xec]
sh.xnor.t %d14, %d0, 7, %d1, 24

# CHECK-INST: sh.xnor.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xc7,0xef]
sh.xnor.t %d14, %d0, 7, %d1, 31

# CHECK-INST: sh.xnor.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x47,0xe0]
sh.xnor.t %d14, %d0, 7, %d14, 0

# CHECK-INST: sh.xnor.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xc7,0xe3]
sh.xnor.t %d14, %d0, 7, %d14, 7

# CHECK-INST: sh.xnor.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x47,0xec]
sh.xnor.t %d14, %d0, 7, %d14, 24

# CHECK-INST: sh.xnor.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xc7,0xef]
sh.xnor.t %d14, %d0, 7, %d14, 31

# CHECK-INST: sh.xnor.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x47,0xe0]
sh.xnor.t %d14, %d0, 7, %d15, 0

# CHECK-INST: sh.xnor.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xc7,0xe3]
sh.xnor.t %d14, %d0, 7, %d15, 7

# CHECK-INST: sh.xnor.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x47,0xec]
sh.xnor.t %d14, %d0, 7, %d15, 24

# CHECK-INST: sh.xnor.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xc7,0xef]
sh.xnor.t %d14, %d0, 7, %d15, 31

# CHECK-INST: sh.xnor.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x58,0xe0]
sh.xnor.t %d14, %d0, 24, %d0, 0

# CHECK-INST: sh.xnor.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xd8,0xe3]
sh.xnor.t %d14, %d0, 24, %d0, 7

# CHECK-INST: sh.xnor.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x58,0xec]
sh.xnor.t %d14, %d0, 24, %d0, 24

# CHECK-INST: sh.xnor.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xd8,0xef]
sh.xnor.t %d14, %d0, 24, %d0, 31

# CHECK-INST: sh.xnor.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x58,0xe0]
sh.xnor.t %d14, %d0, 24, %d1, 0

# CHECK-INST: sh.xnor.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xd8,0xe3]
sh.xnor.t %d14, %d0, 24, %d1, 7

# CHECK-INST: sh.xnor.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x58,0xec]
sh.xnor.t %d14, %d0, 24, %d1, 24

# CHECK-INST: sh.xnor.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xd8,0xef]
sh.xnor.t %d14, %d0, 24, %d1, 31

# CHECK-INST: sh.xnor.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x58,0xe0]
sh.xnor.t %d14, %d0, 24, %d14, 0

# CHECK-INST: sh.xnor.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xd8,0xe3]
sh.xnor.t %d14, %d0, 24, %d14, 7

# CHECK-INST: sh.xnor.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x58,0xec]
sh.xnor.t %d14, %d0, 24, %d14, 24

# CHECK-INST: sh.xnor.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xd8,0xef]
sh.xnor.t %d14, %d0, 24, %d14, 31

# CHECK-INST: sh.xnor.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x58,0xe0]
sh.xnor.t %d14, %d0, 24, %d15, 0

# CHECK-INST: sh.xnor.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xd8,0xe3]
sh.xnor.t %d14, %d0, 24, %d15, 7

# CHECK-INST: sh.xnor.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x58,0xec]
sh.xnor.t %d14, %d0, 24, %d15, 24

# CHECK-INST: sh.xnor.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xd8,0xef]
sh.xnor.t %d14, %d0, 24, %d15, 31

# CHECK-INST: sh.xnor.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x5f,0xe0]
sh.xnor.t %d14, %d0, 31, %d0, 0

# CHECK-INST: sh.xnor.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xdf,0xe3]
sh.xnor.t %d14, %d0, 31, %d0, 7

# CHECK-INST: sh.xnor.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x5f,0xec]
sh.xnor.t %d14, %d0, 31, %d0, 24

# CHECK-INST: sh.xnor.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xdf,0xef]
sh.xnor.t %d14, %d0, 31, %d0, 31

# CHECK-INST: sh.xnor.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x5f,0xe0]
sh.xnor.t %d14, %d0, 31, %d1, 0

# CHECK-INST: sh.xnor.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xdf,0xe3]
sh.xnor.t %d14, %d0, 31, %d1, 7

# CHECK-INST: sh.xnor.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x5f,0xec]
sh.xnor.t %d14, %d0, 31, %d1, 24

# CHECK-INST: sh.xnor.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xdf,0xef]
sh.xnor.t %d14, %d0, 31, %d1, 31

# CHECK-INST: sh.xnor.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x5f,0xe0]
sh.xnor.t %d14, %d0, 31, %d14, 0

# CHECK-INST: sh.xnor.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xdf,0xe3]
sh.xnor.t %d14, %d0, 31, %d14, 7

# CHECK-INST: sh.xnor.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x5f,0xec]
sh.xnor.t %d14, %d0, 31, %d14, 24

# CHECK-INST: sh.xnor.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xdf,0xef]
sh.xnor.t %d14, %d0, 31, %d14, 31

# CHECK-INST: sh.xnor.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x5f,0xe0]
sh.xnor.t %d14, %d0, 31, %d15, 0

# CHECK-INST: sh.xnor.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xdf,0xe3]
sh.xnor.t %d14, %d0, 31, %d15, 7

# CHECK-INST: sh.xnor.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x5f,0xec]
sh.xnor.t %d14, %d0, 31, %d15, 24

# CHECK-INST: sh.xnor.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xdf,0xef]
sh.xnor.t %d14, %d0, 31, %d15, 31

# CHECK-INST: sh.xnor.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x40,0xe0]
sh.xnor.t %d14, %d1, 0, %d0, 0

# CHECK-INST: sh.xnor.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xc0,0xe3]
sh.xnor.t %d14, %d1, 0, %d0, 7

# CHECK-INST: sh.xnor.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x40,0xec]
sh.xnor.t %d14, %d1, 0, %d0, 24

# CHECK-INST: sh.xnor.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xc0,0xef]
sh.xnor.t %d14, %d1, 0, %d0, 31

# CHECK-INST: sh.xnor.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x40,0xe0]
sh.xnor.t %d14, %d1, 0, %d1, 0

# CHECK-INST: sh.xnor.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xc0,0xe3]
sh.xnor.t %d14, %d1, 0, %d1, 7

# CHECK-INST: sh.xnor.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x40,0xec]
sh.xnor.t %d14, %d1, 0, %d1, 24

# CHECK-INST: sh.xnor.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xc0,0xef]
sh.xnor.t %d14, %d1, 0, %d1, 31

# CHECK-INST: sh.xnor.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x40,0xe0]
sh.xnor.t %d14, %d1, 0, %d14, 0

# CHECK-INST: sh.xnor.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xc0,0xe3]
sh.xnor.t %d14, %d1, 0, %d14, 7

# CHECK-INST: sh.xnor.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x40,0xec]
sh.xnor.t %d14, %d1, 0, %d14, 24

# CHECK-INST: sh.xnor.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xc0,0xef]
sh.xnor.t %d14, %d1, 0, %d14, 31

# CHECK-INST: sh.xnor.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x40,0xe0]
sh.xnor.t %d14, %d1, 0, %d15, 0

# CHECK-INST: sh.xnor.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xc0,0xe3]
sh.xnor.t %d14, %d1, 0, %d15, 7

# CHECK-INST: sh.xnor.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x40,0xec]
sh.xnor.t %d14, %d1, 0, %d15, 24

# CHECK-INST: sh.xnor.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xc0,0xef]
sh.xnor.t %d14, %d1, 0, %d15, 31

# CHECK-INST: sh.xnor.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x47,0xe0]
sh.xnor.t %d14, %d1, 7, %d0, 0

# CHECK-INST: sh.xnor.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xc7,0xe3]
sh.xnor.t %d14, %d1, 7, %d0, 7

# CHECK-INST: sh.xnor.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x47,0xec]
sh.xnor.t %d14, %d1, 7, %d0, 24

# CHECK-INST: sh.xnor.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xc7,0xef]
sh.xnor.t %d14, %d1, 7, %d0, 31

# CHECK-INST: sh.xnor.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x47,0xe0]
sh.xnor.t %d14, %d1, 7, %d1, 0

# CHECK-INST: sh.xnor.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xc7,0xe3]
sh.xnor.t %d14, %d1, 7, %d1, 7

# CHECK-INST: sh.xnor.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x47,0xec]
sh.xnor.t %d14, %d1, 7, %d1, 24

# CHECK-INST: sh.xnor.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xc7,0xef]
sh.xnor.t %d14, %d1, 7, %d1, 31

# CHECK-INST: sh.xnor.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x47,0xe0]
sh.xnor.t %d14, %d1, 7, %d14, 0

# CHECK-INST: sh.xnor.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xc7,0xe3]
sh.xnor.t %d14, %d1, 7, %d14, 7

# CHECK-INST: sh.xnor.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x47,0xec]
sh.xnor.t %d14, %d1, 7, %d14, 24

# CHECK-INST: sh.xnor.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xc7,0xef]
sh.xnor.t %d14, %d1, 7, %d14, 31

# CHECK-INST: sh.xnor.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x47,0xe0]
sh.xnor.t %d14, %d1, 7, %d15, 0

# CHECK-INST: sh.xnor.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xc7,0xe3]
sh.xnor.t %d14, %d1, 7, %d15, 7

# CHECK-INST: sh.xnor.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x47,0xec]
sh.xnor.t %d14, %d1, 7, %d15, 24

# CHECK-INST: sh.xnor.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xc7,0xef]
sh.xnor.t %d14, %d1, 7, %d15, 31

# CHECK-INST: sh.xnor.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x58,0xe0]
sh.xnor.t %d14, %d1, 24, %d0, 0

# CHECK-INST: sh.xnor.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xd8,0xe3]
sh.xnor.t %d14, %d1, 24, %d0, 7

# CHECK-INST: sh.xnor.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x58,0xec]
sh.xnor.t %d14, %d1, 24, %d0, 24

# CHECK-INST: sh.xnor.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xd8,0xef]
sh.xnor.t %d14, %d1, 24, %d0, 31

# CHECK-INST: sh.xnor.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x58,0xe0]
sh.xnor.t %d14, %d1, 24, %d1, 0

# CHECK-INST: sh.xnor.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xd8,0xe3]
sh.xnor.t %d14, %d1, 24, %d1, 7

# CHECK-INST: sh.xnor.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x58,0xec]
sh.xnor.t %d14, %d1, 24, %d1, 24

# CHECK-INST: sh.xnor.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xd8,0xef]
sh.xnor.t %d14, %d1, 24, %d1, 31

# CHECK-INST: sh.xnor.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x58,0xe0]
sh.xnor.t %d14, %d1, 24, %d14, 0

# CHECK-INST: sh.xnor.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xd8,0xe3]
sh.xnor.t %d14, %d1, 24, %d14, 7

# CHECK-INST: sh.xnor.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x58,0xec]
sh.xnor.t %d14, %d1, 24, %d14, 24

# CHECK-INST: sh.xnor.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xd8,0xef]
sh.xnor.t %d14, %d1, 24, %d14, 31

# CHECK-INST: sh.xnor.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x58,0xe0]
sh.xnor.t %d14, %d1, 24, %d15, 0

# CHECK-INST: sh.xnor.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xd8,0xe3]
sh.xnor.t %d14, %d1, 24, %d15, 7

# CHECK-INST: sh.xnor.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x58,0xec]
sh.xnor.t %d14, %d1, 24, %d15, 24

# CHECK-INST: sh.xnor.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xd8,0xef]
sh.xnor.t %d14, %d1, 24, %d15, 31

# CHECK-INST: sh.xnor.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x5f,0xe0]
sh.xnor.t %d14, %d1, 31, %d0, 0

# CHECK-INST: sh.xnor.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xdf,0xe3]
sh.xnor.t %d14, %d1, 31, %d0, 7

# CHECK-INST: sh.xnor.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x5f,0xec]
sh.xnor.t %d14, %d1, 31, %d0, 24

# CHECK-INST: sh.xnor.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xdf,0xef]
sh.xnor.t %d14, %d1, 31, %d0, 31

# CHECK-INST: sh.xnor.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x5f,0xe0]
sh.xnor.t %d14, %d1, 31, %d1, 0

# CHECK-INST: sh.xnor.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xdf,0xe3]
sh.xnor.t %d14, %d1, 31, %d1, 7

# CHECK-INST: sh.xnor.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x5f,0xec]
sh.xnor.t %d14, %d1, 31, %d1, 24

# CHECK-INST: sh.xnor.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xdf,0xef]
sh.xnor.t %d14, %d1, 31, %d1, 31

# CHECK-INST: sh.xnor.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x5f,0xe0]
sh.xnor.t %d14, %d1, 31, %d14, 0

# CHECK-INST: sh.xnor.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xdf,0xe3]
sh.xnor.t %d14, %d1, 31, %d14, 7

# CHECK-INST: sh.xnor.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x5f,0xec]
sh.xnor.t %d14, %d1, 31, %d14, 24

# CHECK-INST: sh.xnor.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xdf,0xef]
sh.xnor.t %d14, %d1, 31, %d14, 31

# CHECK-INST: sh.xnor.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x5f,0xe0]
sh.xnor.t %d14, %d1, 31, %d15, 0

# CHECK-INST: sh.xnor.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xdf,0xe3]
sh.xnor.t %d14, %d1, 31, %d15, 7

# CHECK-INST: sh.xnor.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x5f,0xec]
sh.xnor.t %d14, %d1, 31, %d15, 24

# CHECK-INST: sh.xnor.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xdf,0xef]
sh.xnor.t %d14, %d1, 31, %d15, 31

# CHECK-INST: sh.xnor.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x40,0xe0]
sh.xnor.t %d14, %d14, 0, %d0, 0

# CHECK-INST: sh.xnor.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xc0,0xe3]
sh.xnor.t %d14, %d14, 0, %d0, 7

# CHECK-INST: sh.xnor.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x40,0xec]
sh.xnor.t %d14, %d14, 0, %d0, 24

# CHECK-INST: sh.xnor.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xc0,0xef]
sh.xnor.t %d14, %d14, 0, %d0, 31

# CHECK-INST: sh.xnor.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x40,0xe0]
sh.xnor.t %d14, %d14, 0, %d1, 0

# CHECK-INST: sh.xnor.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xc0,0xe3]
sh.xnor.t %d14, %d14, 0, %d1, 7

# CHECK-INST: sh.xnor.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x40,0xec]
sh.xnor.t %d14, %d14, 0, %d1, 24

# CHECK-INST: sh.xnor.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xc0,0xef]
sh.xnor.t %d14, %d14, 0, %d1, 31

# CHECK-INST: sh.xnor.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x40,0xe0]
sh.xnor.t %d14, %d14, 0, %d14, 0

# CHECK-INST: sh.xnor.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xc0,0xe3]
sh.xnor.t %d14, %d14, 0, %d14, 7

# CHECK-INST: sh.xnor.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x40,0xec]
sh.xnor.t %d14, %d14, 0, %d14, 24

# CHECK-INST: sh.xnor.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xc0,0xef]
sh.xnor.t %d14, %d14, 0, %d14, 31

# CHECK-INST: sh.xnor.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x40,0xe0]
sh.xnor.t %d14, %d14, 0, %d15, 0

# CHECK-INST: sh.xnor.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xc0,0xe3]
sh.xnor.t %d14, %d14, 0, %d15, 7

# CHECK-INST: sh.xnor.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x40,0xec]
sh.xnor.t %d14, %d14, 0, %d15, 24

# CHECK-INST: sh.xnor.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xc0,0xef]
sh.xnor.t %d14, %d14, 0, %d15, 31

# CHECK-INST: sh.xnor.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x47,0xe0]
sh.xnor.t %d14, %d14, 7, %d0, 0

# CHECK-INST: sh.xnor.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xc7,0xe3]
sh.xnor.t %d14, %d14, 7, %d0, 7

# CHECK-INST: sh.xnor.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x47,0xec]
sh.xnor.t %d14, %d14, 7, %d0, 24

# CHECK-INST: sh.xnor.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xc7,0xef]
sh.xnor.t %d14, %d14, 7, %d0, 31

# CHECK-INST: sh.xnor.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x47,0xe0]
sh.xnor.t %d14, %d14, 7, %d1, 0

# CHECK-INST: sh.xnor.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xc7,0xe3]
sh.xnor.t %d14, %d14, 7, %d1, 7

# CHECK-INST: sh.xnor.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x47,0xec]
sh.xnor.t %d14, %d14, 7, %d1, 24

# CHECK-INST: sh.xnor.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xc7,0xef]
sh.xnor.t %d14, %d14, 7, %d1, 31

# CHECK-INST: sh.xnor.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x47,0xe0]
sh.xnor.t %d14, %d14, 7, %d14, 0

# CHECK-INST: sh.xnor.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xc7,0xe3]
sh.xnor.t %d14, %d14, 7, %d14, 7

# CHECK-INST: sh.xnor.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x47,0xec]
sh.xnor.t %d14, %d14, 7, %d14, 24

# CHECK-INST: sh.xnor.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xc7,0xef]
sh.xnor.t %d14, %d14, 7, %d14, 31

# CHECK-INST: sh.xnor.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x47,0xe0]
sh.xnor.t %d14, %d14, 7, %d15, 0

# CHECK-INST: sh.xnor.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xc7,0xe3]
sh.xnor.t %d14, %d14, 7, %d15, 7

# CHECK-INST: sh.xnor.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x47,0xec]
sh.xnor.t %d14, %d14, 7, %d15, 24

# CHECK-INST: sh.xnor.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xc7,0xef]
sh.xnor.t %d14, %d14, 7, %d15, 31

# CHECK-INST: sh.xnor.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x58,0xe0]
sh.xnor.t %d14, %d14, 24, %d0, 0

# CHECK-INST: sh.xnor.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xd8,0xe3]
sh.xnor.t %d14, %d14, 24, %d0, 7

# CHECK-INST: sh.xnor.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x58,0xec]
sh.xnor.t %d14, %d14, 24, %d0, 24

# CHECK-INST: sh.xnor.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xd8,0xef]
sh.xnor.t %d14, %d14, 24, %d0, 31

# CHECK-INST: sh.xnor.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x58,0xe0]
sh.xnor.t %d14, %d14, 24, %d1, 0

# CHECK-INST: sh.xnor.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xd8,0xe3]
sh.xnor.t %d14, %d14, 24, %d1, 7

# CHECK-INST: sh.xnor.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x58,0xec]
sh.xnor.t %d14, %d14, 24, %d1, 24

# CHECK-INST: sh.xnor.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xd8,0xef]
sh.xnor.t %d14, %d14, 24, %d1, 31

# CHECK-INST: sh.xnor.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x58,0xe0]
sh.xnor.t %d14, %d14, 24, %d14, 0

# CHECK-INST: sh.xnor.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xd8,0xe3]
sh.xnor.t %d14, %d14, 24, %d14, 7

# CHECK-INST: sh.xnor.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x58,0xec]
sh.xnor.t %d14, %d14, 24, %d14, 24

# CHECK-INST: sh.xnor.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xd8,0xef]
sh.xnor.t %d14, %d14, 24, %d14, 31

# CHECK-INST: sh.xnor.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x58,0xe0]
sh.xnor.t %d14, %d14, 24, %d15, 0

# CHECK-INST: sh.xnor.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xd8,0xe3]
sh.xnor.t %d14, %d14, 24, %d15, 7

# CHECK-INST: sh.xnor.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x58,0xec]
sh.xnor.t %d14, %d14, 24, %d15, 24

# CHECK-INST: sh.xnor.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xd8,0xef]
sh.xnor.t %d14, %d14, 24, %d15, 31

# CHECK-INST: sh.xnor.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x5f,0xe0]
sh.xnor.t %d14, %d14, 31, %d0, 0

# CHECK-INST: sh.xnor.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xdf,0xe3]
sh.xnor.t %d14, %d14, 31, %d0, 7

# CHECK-INST: sh.xnor.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x5f,0xec]
sh.xnor.t %d14, %d14, 31, %d0, 24

# CHECK-INST: sh.xnor.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xdf,0xef]
sh.xnor.t %d14, %d14, 31, %d0, 31

# CHECK-INST: sh.xnor.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x5f,0xe0]
sh.xnor.t %d14, %d14, 31, %d1, 0

# CHECK-INST: sh.xnor.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xdf,0xe3]
sh.xnor.t %d14, %d14, 31, %d1, 7

# CHECK-INST: sh.xnor.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x5f,0xec]
sh.xnor.t %d14, %d14, 31, %d1, 24

# CHECK-INST: sh.xnor.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xdf,0xef]
sh.xnor.t %d14, %d14, 31, %d1, 31

# CHECK-INST: sh.xnor.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x5f,0xe0]
sh.xnor.t %d14, %d14, 31, %d14, 0

# CHECK-INST: sh.xnor.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xdf,0xe3]
sh.xnor.t %d14, %d14, 31, %d14, 7

# CHECK-INST: sh.xnor.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x5f,0xec]
sh.xnor.t %d14, %d14, 31, %d14, 24

# CHECK-INST: sh.xnor.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xdf,0xef]
sh.xnor.t %d14, %d14, 31, %d14, 31

# CHECK-INST: sh.xnor.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x5f,0xe0]
sh.xnor.t %d14, %d14, 31, %d15, 0

# CHECK-INST: sh.xnor.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xdf,0xe3]
sh.xnor.t %d14, %d14, 31, %d15, 7

# CHECK-INST: sh.xnor.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x5f,0xec]
sh.xnor.t %d14, %d14, 31, %d15, 24

# CHECK-INST: sh.xnor.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xdf,0xef]
sh.xnor.t %d14, %d14, 31, %d15, 31

# CHECK-INST: sh.xnor.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x40,0xe0]
sh.xnor.t %d14, %d15, 0, %d0, 0

# CHECK-INST: sh.xnor.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xc0,0xe3]
sh.xnor.t %d14, %d15, 0, %d0, 7

# CHECK-INST: sh.xnor.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x40,0xec]
sh.xnor.t %d14, %d15, 0, %d0, 24

# CHECK-INST: sh.xnor.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xc0,0xef]
sh.xnor.t %d14, %d15, 0, %d0, 31

# CHECK-INST: sh.xnor.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x40,0xe0]
sh.xnor.t %d14, %d15, 0, %d1, 0

# CHECK-INST: sh.xnor.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xc0,0xe3]
sh.xnor.t %d14, %d15, 0, %d1, 7

# CHECK-INST: sh.xnor.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x40,0xec]
sh.xnor.t %d14, %d15, 0, %d1, 24

# CHECK-INST: sh.xnor.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xc0,0xef]
sh.xnor.t %d14, %d15, 0, %d1, 31

# CHECK-INST: sh.xnor.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x40,0xe0]
sh.xnor.t %d14, %d15, 0, %d14, 0

# CHECK-INST: sh.xnor.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xc0,0xe3]
sh.xnor.t %d14, %d15, 0, %d14, 7

# CHECK-INST: sh.xnor.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x40,0xec]
sh.xnor.t %d14, %d15, 0, %d14, 24

# CHECK-INST: sh.xnor.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xc0,0xef]
sh.xnor.t %d14, %d15, 0, %d14, 31

# CHECK-INST: sh.xnor.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x40,0xe0]
sh.xnor.t %d14, %d15, 0, %d15, 0

# CHECK-INST: sh.xnor.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xc0,0xe3]
sh.xnor.t %d14, %d15, 0, %d15, 7

# CHECK-INST: sh.xnor.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x40,0xec]
sh.xnor.t %d14, %d15, 0, %d15, 24

# CHECK-INST: sh.xnor.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xc0,0xef]
sh.xnor.t %d14, %d15, 0, %d15, 31

# CHECK-INST: sh.xnor.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x47,0xe0]
sh.xnor.t %d14, %d15, 7, %d0, 0

# CHECK-INST: sh.xnor.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xc7,0xe3]
sh.xnor.t %d14, %d15, 7, %d0, 7

# CHECK-INST: sh.xnor.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x47,0xec]
sh.xnor.t %d14, %d15, 7, %d0, 24

# CHECK-INST: sh.xnor.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xc7,0xef]
sh.xnor.t %d14, %d15, 7, %d0, 31

# CHECK-INST: sh.xnor.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x47,0xe0]
sh.xnor.t %d14, %d15, 7, %d1, 0

# CHECK-INST: sh.xnor.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xc7,0xe3]
sh.xnor.t %d14, %d15, 7, %d1, 7

# CHECK-INST: sh.xnor.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x47,0xec]
sh.xnor.t %d14, %d15, 7, %d1, 24

# CHECK-INST: sh.xnor.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xc7,0xef]
sh.xnor.t %d14, %d15, 7, %d1, 31

# CHECK-INST: sh.xnor.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x47,0xe0]
sh.xnor.t %d14, %d15, 7, %d14, 0

# CHECK-INST: sh.xnor.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xc7,0xe3]
sh.xnor.t %d14, %d15, 7, %d14, 7

# CHECK-INST: sh.xnor.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x47,0xec]
sh.xnor.t %d14, %d15, 7, %d14, 24

# CHECK-INST: sh.xnor.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xc7,0xef]
sh.xnor.t %d14, %d15, 7, %d14, 31

# CHECK-INST: sh.xnor.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x47,0xe0]
sh.xnor.t %d14, %d15, 7, %d15, 0

# CHECK-INST: sh.xnor.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xc7,0xe3]
sh.xnor.t %d14, %d15, 7, %d15, 7

# CHECK-INST: sh.xnor.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x47,0xec]
sh.xnor.t %d14, %d15, 7, %d15, 24

# CHECK-INST: sh.xnor.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xc7,0xef]
sh.xnor.t %d14, %d15, 7, %d15, 31

# CHECK-INST: sh.xnor.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x58,0xe0]
sh.xnor.t %d14, %d15, 24, %d0, 0

# CHECK-INST: sh.xnor.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xd8,0xe3]
sh.xnor.t %d14, %d15, 24, %d0, 7

# CHECK-INST: sh.xnor.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x58,0xec]
sh.xnor.t %d14, %d15, 24, %d0, 24

# CHECK-INST: sh.xnor.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xd8,0xef]
sh.xnor.t %d14, %d15, 24, %d0, 31

# CHECK-INST: sh.xnor.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x58,0xe0]
sh.xnor.t %d14, %d15, 24, %d1, 0

# CHECK-INST: sh.xnor.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xd8,0xe3]
sh.xnor.t %d14, %d15, 24, %d1, 7

# CHECK-INST: sh.xnor.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x58,0xec]
sh.xnor.t %d14, %d15, 24, %d1, 24

# CHECK-INST: sh.xnor.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xd8,0xef]
sh.xnor.t %d14, %d15, 24, %d1, 31

# CHECK-INST: sh.xnor.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x58,0xe0]
sh.xnor.t %d14, %d15, 24, %d14, 0

# CHECK-INST: sh.xnor.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xd8,0xe3]
sh.xnor.t %d14, %d15, 24, %d14, 7

# CHECK-INST: sh.xnor.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x58,0xec]
sh.xnor.t %d14, %d15, 24, %d14, 24

# CHECK-INST: sh.xnor.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xd8,0xef]
sh.xnor.t %d14, %d15, 24, %d14, 31

# CHECK-INST: sh.xnor.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x58,0xe0]
sh.xnor.t %d14, %d15, 24, %d15, 0

# CHECK-INST: sh.xnor.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xd8,0xe3]
sh.xnor.t %d14, %d15, 24, %d15, 7

# CHECK-INST: sh.xnor.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x58,0xec]
sh.xnor.t %d14, %d15, 24, %d15, 24

# CHECK-INST: sh.xnor.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xd8,0xef]
sh.xnor.t %d14, %d15, 24, %d15, 31

# CHECK-INST: sh.xnor.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x5f,0xe0]
sh.xnor.t %d14, %d15, 31, %d0, 0

# CHECK-INST: sh.xnor.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xdf,0xe3]
sh.xnor.t %d14, %d15, 31, %d0, 7

# CHECK-INST: sh.xnor.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x5f,0xec]
sh.xnor.t %d14, %d15, 31, %d0, 24

# CHECK-INST: sh.xnor.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xdf,0xef]
sh.xnor.t %d14, %d15, 31, %d0, 31

# CHECK-INST: sh.xnor.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x5f,0xe0]
sh.xnor.t %d14, %d15, 31, %d1, 0

# CHECK-INST: sh.xnor.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xdf,0xe3]
sh.xnor.t %d14, %d15, 31, %d1, 7

# CHECK-INST: sh.xnor.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x5f,0xec]
sh.xnor.t %d14, %d15, 31, %d1, 24

# CHECK-INST: sh.xnor.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xdf,0xef]
sh.xnor.t %d14, %d15, 31, %d1, 31

# CHECK-INST: sh.xnor.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x5f,0xe0]
sh.xnor.t %d14, %d15, 31, %d14, 0

# CHECK-INST: sh.xnor.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xdf,0xe3]
sh.xnor.t %d14, %d15, 31, %d14, 7

# CHECK-INST: sh.xnor.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x5f,0xec]
sh.xnor.t %d14, %d15, 31, %d14, 24

# CHECK-INST: sh.xnor.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xdf,0xef]
sh.xnor.t %d14, %d15, 31, %d14, 31

# CHECK-INST: sh.xnor.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x5f,0xe0]
sh.xnor.t %d14, %d15, 31, %d15, 0

# CHECK-INST: sh.xnor.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xdf,0xe3]
sh.xnor.t %d14, %d15, 31, %d15, 7

# CHECK-INST: sh.xnor.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x5f,0xec]
sh.xnor.t %d14, %d15, 31, %d15, 24

# CHECK-INST: sh.xnor.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xdf,0xef]
sh.xnor.t %d14, %d15, 31, %d15, 31

# CHECK-INST: sh.xnor.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x40,0xf0]
sh.xnor.t %d15, %d0, 0, %d0, 0

# CHECK-INST: sh.xnor.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xc0,0xf3]
sh.xnor.t %d15, %d0, 0, %d0, 7

# CHECK-INST: sh.xnor.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x40,0xfc]
sh.xnor.t %d15, %d0, 0, %d0, 24

# CHECK-INST: sh.xnor.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xc0,0xff]
sh.xnor.t %d15, %d0, 0, %d0, 31

# CHECK-INST: sh.xnor.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x40,0xf0]
sh.xnor.t %d15, %d0, 0, %d1, 0

# CHECK-INST: sh.xnor.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xc0,0xf3]
sh.xnor.t %d15, %d0, 0, %d1, 7

# CHECK-INST: sh.xnor.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x40,0xfc]
sh.xnor.t %d15, %d0, 0, %d1, 24

# CHECK-INST: sh.xnor.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xc0,0xff]
sh.xnor.t %d15, %d0, 0, %d1, 31

# CHECK-INST: sh.xnor.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x40,0xf0]
sh.xnor.t %d15, %d0, 0, %d14, 0

# CHECK-INST: sh.xnor.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xc0,0xf3]
sh.xnor.t %d15, %d0, 0, %d14, 7

# CHECK-INST: sh.xnor.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x40,0xfc]
sh.xnor.t %d15, %d0, 0, %d14, 24

# CHECK-INST: sh.xnor.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xc0,0xff]
sh.xnor.t %d15, %d0, 0, %d14, 31

# CHECK-INST: sh.xnor.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x40,0xf0]
sh.xnor.t %d15, %d0, 0, %d15, 0

# CHECK-INST: sh.xnor.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xc0,0xf3]
sh.xnor.t %d15, %d0, 0, %d15, 7

# CHECK-INST: sh.xnor.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x40,0xfc]
sh.xnor.t %d15, %d0, 0, %d15, 24

# CHECK-INST: sh.xnor.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xc0,0xff]
sh.xnor.t %d15, %d0, 0, %d15, 31

# CHECK-INST: sh.xnor.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x47,0xf0]
sh.xnor.t %d15, %d0, 7, %d0, 0

# CHECK-INST: sh.xnor.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xc7,0xf3]
sh.xnor.t %d15, %d0, 7, %d0, 7

# CHECK-INST: sh.xnor.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x47,0xfc]
sh.xnor.t %d15, %d0, 7, %d0, 24

# CHECK-INST: sh.xnor.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xc7,0xff]
sh.xnor.t %d15, %d0, 7, %d0, 31

# CHECK-INST: sh.xnor.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x47,0xf0]
sh.xnor.t %d15, %d0, 7, %d1, 0

# CHECK-INST: sh.xnor.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xc7,0xf3]
sh.xnor.t %d15, %d0, 7, %d1, 7

# CHECK-INST: sh.xnor.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x47,0xfc]
sh.xnor.t %d15, %d0, 7, %d1, 24

# CHECK-INST: sh.xnor.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xc7,0xff]
sh.xnor.t %d15, %d0, 7, %d1, 31

# CHECK-INST: sh.xnor.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x47,0xf0]
sh.xnor.t %d15, %d0, 7, %d14, 0

# CHECK-INST: sh.xnor.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xc7,0xf3]
sh.xnor.t %d15, %d0, 7, %d14, 7

# CHECK-INST: sh.xnor.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x47,0xfc]
sh.xnor.t %d15, %d0, 7, %d14, 24

# CHECK-INST: sh.xnor.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xc7,0xff]
sh.xnor.t %d15, %d0, 7, %d14, 31

# CHECK-INST: sh.xnor.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x47,0xf0]
sh.xnor.t %d15, %d0, 7, %d15, 0

# CHECK-INST: sh.xnor.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xc7,0xf3]
sh.xnor.t %d15, %d0, 7, %d15, 7

# CHECK-INST: sh.xnor.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x47,0xfc]
sh.xnor.t %d15, %d0, 7, %d15, 24

# CHECK-INST: sh.xnor.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xc7,0xff]
sh.xnor.t %d15, %d0, 7, %d15, 31

# CHECK-INST: sh.xnor.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x58,0xf0]
sh.xnor.t %d15, %d0, 24, %d0, 0

# CHECK-INST: sh.xnor.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xd8,0xf3]
sh.xnor.t %d15, %d0, 24, %d0, 7

# CHECK-INST: sh.xnor.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x58,0xfc]
sh.xnor.t %d15, %d0, 24, %d0, 24

# CHECK-INST: sh.xnor.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xd8,0xff]
sh.xnor.t %d15, %d0, 24, %d0, 31

# CHECK-INST: sh.xnor.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x58,0xf0]
sh.xnor.t %d15, %d0, 24, %d1, 0

# CHECK-INST: sh.xnor.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xd8,0xf3]
sh.xnor.t %d15, %d0, 24, %d1, 7

# CHECK-INST: sh.xnor.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x58,0xfc]
sh.xnor.t %d15, %d0, 24, %d1, 24

# CHECK-INST: sh.xnor.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xd8,0xff]
sh.xnor.t %d15, %d0, 24, %d1, 31

# CHECK-INST: sh.xnor.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x58,0xf0]
sh.xnor.t %d15, %d0, 24, %d14, 0

# CHECK-INST: sh.xnor.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xd8,0xf3]
sh.xnor.t %d15, %d0, 24, %d14, 7

# CHECK-INST: sh.xnor.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x58,0xfc]
sh.xnor.t %d15, %d0, 24, %d14, 24

# CHECK-INST: sh.xnor.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xd8,0xff]
sh.xnor.t %d15, %d0, 24, %d14, 31

# CHECK-INST: sh.xnor.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x58,0xf0]
sh.xnor.t %d15, %d0, 24, %d15, 0

# CHECK-INST: sh.xnor.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xd8,0xf3]
sh.xnor.t %d15, %d0, 24, %d15, 7

# CHECK-INST: sh.xnor.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x58,0xfc]
sh.xnor.t %d15, %d0, 24, %d15, 24

# CHECK-INST: sh.xnor.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xd8,0xff]
sh.xnor.t %d15, %d0, 24, %d15, 31

# CHECK-INST: sh.xnor.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x5f,0xf0]
sh.xnor.t %d15, %d0, 31, %d0, 0

# CHECK-INST: sh.xnor.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xdf,0xf3]
sh.xnor.t %d15, %d0, 31, %d0, 7

# CHECK-INST: sh.xnor.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x5f,0xfc]
sh.xnor.t %d15, %d0, 31, %d0, 24

# CHECK-INST: sh.xnor.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xdf,0xff]
sh.xnor.t %d15, %d0, 31, %d0, 31

# CHECK-INST: sh.xnor.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x5f,0xf0]
sh.xnor.t %d15, %d0, 31, %d1, 0

# CHECK-INST: sh.xnor.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xdf,0xf3]
sh.xnor.t %d15, %d0, 31, %d1, 7

# CHECK-INST: sh.xnor.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x5f,0xfc]
sh.xnor.t %d15, %d0, 31, %d1, 24

# CHECK-INST: sh.xnor.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xdf,0xff]
sh.xnor.t %d15, %d0, 31, %d1, 31

# CHECK-INST: sh.xnor.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x5f,0xf0]
sh.xnor.t %d15, %d0, 31, %d14, 0

# CHECK-INST: sh.xnor.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xdf,0xf3]
sh.xnor.t %d15, %d0, 31, %d14, 7

# CHECK-INST: sh.xnor.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x5f,0xfc]
sh.xnor.t %d15, %d0, 31, %d14, 24

# CHECK-INST: sh.xnor.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xdf,0xff]
sh.xnor.t %d15, %d0, 31, %d14, 31

# CHECK-INST: sh.xnor.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x5f,0xf0]
sh.xnor.t %d15, %d0, 31, %d15, 0

# CHECK-INST: sh.xnor.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xdf,0xf3]
sh.xnor.t %d15, %d0, 31, %d15, 7

# CHECK-INST: sh.xnor.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x5f,0xfc]
sh.xnor.t %d15, %d0, 31, %d15, 24

# CHECK-INST: sh.xnor.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xdf,0xff]
sh.xnor.t %d15, %d0, 31, %d15, 31

# CHECK-INST: sh.xnor.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x40,0xf0]
sh.xnor.t %d15, %d1, 0, %d0, 0

# CHECK-INST: sh.xnor.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xc0,0xf3]
sh.xnor.t %d15, %d1, 0, %d0, 7

# CHECK-INST: sh.xnor.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x40,0xfc]
sh.xnor.t %d15, %d1, 0, %d0, 24

# CHECK-INST: sh.xnor.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xc0,0xff]
sh.xnor.t %d15, %d1, 0, %d0, 31

# CHECK-INST: sh.xnor.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x40,0xf0]
sh.xnor.t %d15, %d1, 0, %d1, 0

# CHECK-INST: sh.xnor.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xc0,0xf3]
sh.xnor.t %d15, %d1, 0, %d1, 7

# CHECK-INST: sh.xnor.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x40,0xfc]
sh.xnor.t %d15, %d1, 0, %d1, 24

# CHECK-INST: sh.xnor.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xc0,0xff]
sh.xnor.t %d15, %d1, 0, %d1, 31

# CHECK-INST: sh.xnor.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x40,0xf0]
sh.xnor.t %d15, %d1, 0, %d14, 0

# CHECK-INST: sh.xnor.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xc0,0xf3]
sh.xnor.t %d15, %d1, 0, %d14, 7

# CHECK-INST: sh.xnor.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x40,0xfc]
sh.xnor.t %d15, %d1, 0, %d14, 24

# CHECK-INST: sh.xnor.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xc0,0xff]
sh.xnor.t %d15, %d1, 0, %d14, 31

# CHECK-INST: sh.xnor.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x40,0xf0]
sh.xnor.t %d15, %d1, 0, %d15, 0

# CHECK-INST: sh.xnor.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xc0,0xf3]
sh.xnor.t %d15, %d1, 0, %d15, 7

# CHECK-INST: sh.xnor.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x40,0xfc]
sh.xnor.t %d15, %d1, 0, %d15, 24

# CHECK-INST: sh.xnor.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xc0,0xff]
sh.xnor.t %d15, %d1, 0, %d15, 31

# CHECK-INST: sh.xnor.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x47,0xf0]
sh.xnor.t %d15, %d1, 7, %d0, 0

# CHECK-INST: sh.xnor.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xc7,0xf3]
sh.xnor.t %d15, %d1, 7, %d0, 7

# CHECK-INST: sh.xnor.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x47,0xfc]
sh.xnor.t %d15, %d1, 7, %d0, 24

# CHECK-INST: sh.xnor.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xc7,0xff]
sh.xnor.t %d15, %d1, 7, %d0, 31

# CHECK-INST: sh.xnor.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x47,0xf0]
sh.xnor.t %d15, %d1, 7, %d1, 0

# CHECK-INST: sh.xnor.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xc7,0xf3]
sh.xnor.t %d15, %d1, 7, %d1, 7

# CHECK-INST: sh.xnor.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x47,0xfc]
sh.xnor.t %d15, %d1, 7, %d1, 24

# CHECK-INST: sh.xnor.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xc7,0xff]
sh.xnor.t %d15, %d1, 7, %d1, 31

# CHECK-INST: sh.xnor.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x47,0xf0]
sh.xnor.t %d15, %d1, 7, %d14, 0

# CHECK-INST: sh.xnor.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xc7,0xf3]
sh.xnor.t %d15, %d1, 7, %d14, 7

# CHECK-INST: sh.xnor.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x47,0xfc]
sh.xnor.t %d15, %d1, 7, %d14, 24

# CHECK-INST: sh.xnor.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xc7,0xff]
sh.xnor.t %d15, %d1, 7, %d14, 31

# CHECK-INST: sh.xnor.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x47,0xf0]
sh.xnor.t %d15, %d1, 7, %d15, 0

# CHECK-INST: sh.xnor.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xc7,0xf3]
sh.xnor.t %d15, %d1, 7, %d15, 7

# CHECK-INST: sh.xnor.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x47,0xfc]
sh.xnor.t %d15, %d1, 7, %d15, 24

# CHECK-INST: sh.xnor.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xc7,0xff]
sh.xnor.t %d15, %d1, 7, %d15, 31

# CHECK-INST: sh.xnor.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x58,0xf0]
sh.xnor.t %d15, %d1, 24, %d0, 0

# CHECK-INST: sh.xnor.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xd8,0xf3]
sh.xnor.t %d15, %d1, 24, %d0, 7

# CHECK-INST: sh.xnor.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x58,0xfc]
sh.xnor.t %d15, %d1, 24, %d0, 24

# CHECK-INST: sh.xnor.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xd8,0xff]
sh.xnor.t %d15, %d1, 24, %d0, 31

# CHECK-INST: sh.xnor.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x58,0xf0]
sh.xnor.t %d15, %d1, 24, %d1, 0

# CHECK-INST: sh.xnor.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xd8,0xf3]
sh.xnor.t %d15, %d1, 24, %d1, 7

# CHECK-INST: sh.xnor.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x58,0xfc]
sh.xnor.t %d15, %d1, 24, %d1, 24

# CHECK-INST: sh.xnor.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xd8,0xff]
sh.xnor.t %d15, %d1, 24, %d1, 31

# CHECK-INST: sh.xnor.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x58,0xf0]
sh.xnor.t %d15, %d1, 24, %d14, 0

# CHECK-INST: sh.xnor.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xd8,0xf3]
sh.xnor.t %d15, %d1, 24, %d14, 7

# CHECK-INST: sh.xnor.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x58,0xfc]
sh.xnor.t %d15, %d1, 24, %d14, 24

# CHECK-INST: sh.xnor.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xd8,0xff]
sh.xnor.t %d15, %d1, 24, %d14, 31

# CHECK-INST: sh.xnor.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x58,0xf0]
sh.xnor.t %d15, %d1, 24, %d15, 0

# CHECK-INST: sh.xnor.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xd8,0xf3]
sh.xnor.t %d15, %d1, 24, %d15, 7

# CHECK-INST: sh.xnor.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x58,0xfc]
sh.xnor.t %d15, %d1, 24, %d15, 24

# CHECK-INST: sh.xnor.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xd8,0xff]
sh.xnor.t %d15, %d1, 24, %d15, 31

# CHECK-INST: sh.xnor.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x5f,0xf0]
sh.xnor.t %d15, %d1, 31, %d0, 0

# CHECK-INST: sh.xnor.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xdf,0xf3]
sh.xnor.t %d15, %d1, 31, %d0, 7

# CHECK-INST: sh.xnor.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x5f,0xfc]
sh.xnor.t %d15, %d1, 31, %d0, 24

# CHECK-INST: sh.xnor.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xdf,0xff]
sh.xnor.t %d15, %d1, 31, %d0, 31

# CHECK-INST: sh.xnor.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x5f,0xf0]
sh.xnor.t %d15, %d1, 31, %d1, 0

# CHECK-INST: sh.xnor.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xdf,0xf3]
sh.xnor.t %d15, %d1, 31, %d1, 7

# CHECK-INST: sh.xnor.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x5f,0xfc]
sh.xnor.t %d15, %d1, 31, %d1, 24

# CHECK-INST: sh.xnor.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xdf,0xff]
sh.xnor.t %d15, %d1, 31, %d1, 31

# CHECK-INST: sh.xnor.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x5f,0xf0]
sh.xnor.t %d15, %d1, 31, %d14, 0

# CHECK-INST: sh.xnor.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xdf,0xf3]
sh.xnor.t %d15, %d1, 31, %d14, 7

# CHECK-INST: sh.xnor.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x5f,0xfc]
sh.xnor.t %d15, %d1, 31, %d14, 24

# CHECK-INST: sh.xnor.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xdf,0xff]
sh.xnor.t %d15, %d1, 31, %d14, 31

# CHECK-INST: sh.xnor.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x5f,0xf0]
sh.xnor.t %d15, %d1, 31, %d15, 0

# CHECK-INST: sh.xnor.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xdf,0xf3]
sh.xnor.t %d15, %d1, 31, %d15, 7

# CHECK-INST: sh.xnor.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x5f,0xfc]
sh.xnor.t %d15, %d1, 31, %d15, 24

# CHECK-INST: sh.xnor.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xdf,0xff]
sh.xnor.t %d15, %d1, 31, %d15, 31

# CHECK-INST: sh.xnor.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x40,0xf0]
sh.xnor.t %d15, %d14, 0, %d0, 0

# CHECK-INST: sh.xnor.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xc0,0xf3]
sh.xnor.t %d15, %d14, 0, %d0, 7

# CHECK-INST: sh.xnor.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x40,0xfc]
sh.xnor.t %d15, %d14, 0, %d0, 24

# CHECK-INST: sh.xnor.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xc0,0xff]
sh.xnor.t %d15, %d14, 0, %d0, 31

# CHECK-INST: sh.xnor.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x40,0xf0]
sh.xnor.t %d15, %d14, 0, %d1, 0

# CHECK-INST: sh.xnor.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xc0,0xf3]
sh.xnor.t %d15, %d14, 0, %d1, 7

# CHECK-INST: sh.xnor.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x40,0xfc]
sh.xnor.t %d15, %d14, 0, %d1, 24

# CHECK-INST: sh.xnor.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xc0,0xff]
sh.xnor.t %d15, %d14, 0, %d1, 31

# CHECK-INST: sh.xnor.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x40,0xf0]
sh.xnor.t %d15, %d14, 0, %d14, 0

# CHECK-INST: sh.xnor.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xc0,0xf3]
sh.xnor.t %d15, %d14, 0, %d14, 7

# CHECK-INST: sh.xnor.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x40,0xfc]
sh.xnor.t %d15, %d14, 0, %d14, 24

# CHECK-INST: sh.xnor.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xc0,0xff]
sh.xnor.t %d15, %d14, 0, %d14, 31

# CHECK-INST: sh.xnor.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x40,0xf0]
sh.xnor.t %d15, %d14, 0, %d15, 0

# CHECK-INST: sh.xnor.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xc0,0xf3]
sh.xnor.t %d15, %d14, 0, %d15, 7

# CHECK-INST: sh.xnor.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x40,0xfc]
sh.xnor.t %d15, %d14, 0, %d15, 24

# CHECK-INST: sh.xnor.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xc0,0xff]
sh.xnor.t %d15, %d14, 0, %d15, 31

# CHECK-INST: sh.xnor.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x47,0xf0]
sh.xnor.t %d15, %d14, 7, %d0, 0

# CHECK-INST: sh.xnor.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xc7,0xf3]
sh.xnor.t %d15, %d14, 7, %d0, 7

# CHECK-INST: sh.xnor.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x47,0xfc]
sh.xnor.t %d15, %d14, 7, %d0, 24

# CHECK-INST: sh.xnor.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xc7,0xff]
sh.xnor.t %d15, %d14, 7, %d0, 31

# CHECK-INST: sh.xnor.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x47,0xf0]
sh.xnor.t %d15, %d14, 7, %d1, 0

# CHECK-INST: sh.xnor.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xc7,0xf3]
sh.xnor.t %d15, %d14, 7, %d1, 7

# CHECK-INST: sh.xnor.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x47,0xfc]
sh.xnor.t %d15, %d14, 7, %d1, 24

# CHECK-INST: sh.xnor.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xc7,0xff]
sh.xnor.t %d15, %d14, 7, %d1, 31

# CHECK-INST: sh.xnor.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x47,0xf0]
sh.xnor.t %d15, %d14, 7, %d14, 0

# CHECK-INST: sh.xnor.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xc7,0xf3]
sh.xnor.t %d15, %d14, 7, %d14, 7

# CHECK-INST: sh.xnor.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x47,0xfc]
sh.xnor.t %d15, %d14, 7, %d14, 24

# CHECK-INST: sh.xnor.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xc7,0xff]
sh.xnor.t %d15, %d14, 7, %d14, 31

# CHECK-INST: sh.xnor.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x47,0xf0]
sh.xnor.t %d15, %d14, 7, %d15, 0

# CHECK-INST: sh.xnor.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xc7,0xf3]
sh.xnor.t %d15, %d14, 7, %d15, 7

# CHECK-INST: sh.xnor.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x47,0xfc]
sh.xnor.t %d15, %d14, 7, %d15, 24

# CHECK-INST: sh.xnor.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xc7,0xff]
sh.xnor.t %d15, %d14, 7, %d15, 31

# CHECK-INST: sh.xnor.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x58,0xf0]
sh.xnor.t %d15, %d14, 24, %d0, 0

# CHECK-INST: sh.xnor.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xd8,0xf3]
sh.xnor.t %d15, %d14, 24, %d0, 7

# CHECK-INST: sh.xnor.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x58,0xfc]
sh.xnor.t %d15, %d14, 24, %d0, 24

# CHECK-INST: sh.xnor.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xd8,0xff]
sh.xnor.t %d15, %d14, 24, %d0, 31

# CHECK-INST: sh.xnor.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x58,0xf0]
sh.xnor.t %d15, %d14, 24, %d1, 0

# CHECK-INST: sh.xnor.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xd8,0xf3]
sh.xnor.t %d15, %d14, 24, %d1, 7

# CHECK-INST: sh.xnor.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x58,0xfc]
sh.xnor.t %d15, %d14, 24, %d1, 24

# CHECK-INST: sh.xnor.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xd8,0xff]
sh.xnor.t %d15, %d14, 24, %d1, 31

# CHECK-INST: sh.xnor.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x58,0xf0]
sh.xnor.t %d15, %d14, 24, %d14, 0

# CHECK-INST: sh.xnor.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xd8,0xf3]
sh.xnor.t %d15, %d14, 24, %d14, 7

# CHECK-INST: sh.xnor.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x58,0xfc]
sh.xnor.t %d15, %d14, 24, %d14, 24

# CHECK-INST: sh.xnor.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xd8,0xff]
sh.xnor.t %d15, %d14, 24, %d14, 31

# CHECK-INST: sh.xnor.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x58,0xf0]
sh.xnor.t %d15, %d14, 24, %d15, 0

# CHECK-INST: sh.xnor.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xd8,0xf3]
sh.xnor.t %d15, %d14, 24, %d15, 7

# CHECK-INST: sh.xnor.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x58,0xfc]
sh.xnor.t %d15, %d14, 24, %d15, 24

# CHECK-INST: sh.xnor.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xd8,0xff]
sh.xnor.t %d15, %d14, 24, %d15, 31

# CHECK-INST: sh.xnor.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x5f,0xf0]
sh.xnor.t %d15, %d14, 31, %d0, 0

# CHECK-INST: sh.xnor.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xdf,0xf3]
sh.xnor.t %d15, %d14, 31, %d0, 7

# CHECK-INST: sh.xnor.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x5f,0xfc]
sh.xnor.t %d15, %d14, 31, %d0, 24

# CHECK-INST: sh.xnor.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xdf,0xff]
sh.xnor.t %d15, %d14, 31, %d0, 31

# CHECK-INST: sh.xnor.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x5f,0xf0]
sh.xnor.t %d15, %d14, 31, %d1, 0

# CHECK-INST: sh.xnor.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xdf,0xf3]
sh.xnor.t %d15, %d14, 31, %d1, 7

# CHECK-INST: sh.xnor.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x5f,0xfc]
sh.xnor.t %d15, %d14, 31, %d1, 24

# CHECK-INST: sh.xnor.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xdf,0xff]
sh.xnor.t %d15, %d14, 31, %d1, 31

# CHECK-INST: sh.xnor.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x5f,0xf0]
sh.xnor.t %d15, %d14, 31, %d14, 0

# CHECK-INST: sh.xnor.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xdf,0xf3]
sh.xnor.t %d15, %d14, 31, %d14, 7

# CHECK-INST: sh.xnor.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x5f,0xfc]
sh.xnor.t %d15, %d14, 31, %d14, 24

# CHECK-INST: sh.xnor.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xdf,0xff]
sh.xnor.t %d15, %d14, 31, %d14, 31

# CHECK-INST: sh.xnor.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x5f,0xf0]
sh.xnor.t %d15, %d14, 31, %d15, 0

# CHECK-INST: sh.xnor.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xdf,0xf3]
sh.xnor.t %d15, %d14, 31, %d15, 7

# CHECK-INST: sh.xnor.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x5f,0xfc]
sh.xnor.t %d15, %d14, 31, %d15, 24

# CHECK-INST: sh.xnor.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xdf,0xff]
sh.xnor.t %d15, %d14, 31, %d15, 31

# CHECK-INST: sh.xnor.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x40,0xf0]
sh.xnor.t %d15, %d15, 0, %d0, 0

# CHECK-INST: sh.xnor.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xc0,0xf3]
sh.xnor.t %d15, %d15, 0, %d0, 7

# CHECK-INST: sh.xnor.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x40,0xfc]
sh.xnor.t %d15, %d15, 0, %d0, 24

# CHECK-INST: sh.xnor.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xc0,0xff]
sh.xnor.t %d15, %d15, 0, %d0, 31

# CHECK-INST: sh.xnor.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x40,0xf0]
sh.xnor.t %d15, %d15, 0, %d1, 0

# CHECK-INST: sh.xnor.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xc0,0xf3]
sh.xnor.t %d15, %d15, 0, %d1, 7

# CHECK-INST: sh.xnor.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x40,0xfc]
sh.xnor.t %d15, %d15, 0, %d1, 24

# CHECK-INST: sh.xnor.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xc0,0xff]
sh.xnor.t %d15, %d15, 0, %d1, 31

# CHECK-INST: sh.xnor.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x40,0xf0]
sh.xnor.t %d15, %d15, 0, %d14, 0

# CHECK-INST: sh.xnor.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xc0,0xf3]
sh.xnor.t %d15, %d15, 0, %d14, 7

# CHECK-INST: sh.xnor.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x40,0xfc]
sh.xnor.t %d15, %d15, 0, %d14, 24

# CHECK-INST: sh.xnor.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xc0,0xff]
sh.xnor.t %d15, %d15, 0, %d14, 31

# CHECK-INST: sh.xnor.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x40,0xf0]
sh.xnor.t %d15, %d15, 0, %d15, 0

# CHECK-INST: sh.xnor.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xc0,0xf3]
sh.xnor.t %d15, %d15, 0, %d15, 7

# CHECK-INST: sh.xnor.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x40,0xfc]
sh.xnor.t %d15, %d15, 0, %d15, 24

# CHECK-INST: sh.xnor.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xc0,0xff]
sh.xnor.t %d15, %d15, 0, %d15, 31

# CHECK-INST: sh.xnor.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x47,0xf0]
sh.xnor.t %d15, %d15, 7, %d0, 0

# CHECK-INST: sh.xnor.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xc7,0xf3]
sh.xnor.t %d15, %d15, 7, %d0, 7

# CHECK-INST: sh.xnor.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x47,0xfc]
sh.xnor.t %d15, %d15, 7, %d0, 24

# CHECK-INST: sh.xnor.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xc7,0xff]
sh.xnor.t %d15, %d15, 7, %d0, 31

# CHECK-INST: sh.xnor.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x47,0xf0]
sh.xnor.t %d15, %d15, 7, %d1, 0

# CHECK-INST: sh.xnor.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xc7,0xf3]
sh.xnor.t %d15, %d15, 7, %d1, 7

# CHECK-INST: sh.xnor.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x47,0xfc]
sh.xnor.t %d15, %d15, 7, %d1, 24

# CHECK-INST: sh.xnor.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xc7,0xff]
sh.xnor.t %d15, %d15, 7, %d1, 31

# CHECK-INST: sh.xnor.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x47,0xf0]
sh.xnor.t %d15, %d15, 7, %d14, 0

# CHECK-INST: sh.xnor.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xc7,0xf3]
sh.xnor.t %d15, %d15, 7, %d14, 7

# CHECK-INST: sh.xnor.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x47,0xfc]
sh.xnor.t %d15, %d15, 7, %d14, 24

# CHECK-INST: sh.xnor.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xc7,0xff]
sh.xnor.t %d15, %d15, 7, %d14, 31

# CHECK-INST: sh.xnor.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x47,0xf0]
sh.xnor.t %d15, %d15, 7, %d15, 0

# CHECK-INST: sh.xnor.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xc7,0xf3]
sh.xnor.t %d15, %d15, 7, %d15, 7

# CHECK-INST: sh.xnor.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x47,0xfc]
sh.xnor.t %d15, %d15, 7, %d15, 24

# CHECK-INST: sh.xnor.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xc7,0xff]
sh.xnor.t %d15, %d15, 7, %d15, 31

# CHECK-INST: sh.xnor.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x58,0xf0]
sh.xnor.t %d15, %d15, 24, %d0, 0

# CHECK-INST: sh.xnor.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xd8,0xf3]
sh.xnor.t %d15, %d15, 24, %d0, 7

# CHECK-INST: sh.xnor.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x58,0xfc]
sh.xnor.t %d15, %d15, 24, %d0, 24

# CHECK-INST: sh.xnor.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xd8,0xff]
sh.xnor.t %d15, %d15, 24, %d0, 31

# CHECK-INST: sh.xnor.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x58,0xf0]
sh.xnor.t %d15, %d15, 24, %d1, 0

# CHECK-INST: sh.xnor.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xd8,0xf3]
sh.xnor.t %d15, %d15, 24, %d1, 7

# CHECK-INST: sh.xnor.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x58,0xfc]
sh.xnor.t %d15, %d15, 24, %d1, 24

# CHECK-INST: sh.xnor.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xd8,0xff]
sh.xnor.t %d15, %d15, 24, %d1, 31

# CHECK-INST: sh.xnor.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x58,0xf0]
sh.xnor.t %d15, %d15, 24, %d14, 0

# CHECK-INST: sh.xnor.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xd8,0xf3]
sh.xnor.t %d15, %d15, 24, %d14, 7

# CHECK-INST: sh.xnor.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x58,0xfc]
sh.xnor.t %d15, %d15, 24, %d14, 24

# CHECK-INST: sh.xnor.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xd8,0xff]
sh.xnor.t %d15, %d15, 24, %d14, 31

# CHECK-INST: sh.xnor.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x58,0xf0]
sh.xnor.t %d15, %d15, 24, %d15, 0

# CHECK-INST: sh.xnor.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xd8,0xf3]
sh.xnor.t %d15, %d15, 24, %d15, 7

# CHECK-INST: sh.xnor.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x58,0xfc]
sh.xnor.t %d15, %d15, 24, %d15, 24

# CHECK-INST: sh.xnor.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xd8,0xff]
sh.xnor.t %d15, %d15, 24, %d15, 31

# CHECK-INST: sh.xnor.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x5f,0xf0]
sh.xnor.t %d15, %d15, 31, %d0, 0

# CHECK-INST: sh.xnor.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xdf,0xf3]
sh.xnor.t %d15, %d15, 31, %d0, 7

# CHECK-INST: sh.xnor.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x5f,0xfc]
sh.xnor.t %d15, %d15, 31, %d0, 24

# CHECK-INST: sh.xnor.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xdf,0xff]
sh.xnor.t %d15, %d15, 31, %d0, 31

# CHECK-INST: sh.xnor.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x5f,0xf0]
sh.xnor.t %d15, %d15, 31, %d1, 0

# CHECK-INST: sh.xnor.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xdf,0xf3]
sh.xnor.t %d15, %d15, 31, %d1, 7

# CHECK-INST: sh.xnor.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x5f,0xfc]
sh.xnor.t %d15, %d15, 31, %d1, 24

# CHECK-INST: sh.xnor.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xdf,0xff]
sh.xnor.t %d15, %d15, 31, %d1, 31

# CHECK-INST: sh.xnor.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x5f,0xf0]
sh.xnor.t %d15, %d15, 31, %d14, 0

# CHECK-INST: sh.xnor.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xdf,0xf3]
sh.xnor.t %d15, %d15, 31, %d14, 7

# CHECK-INST: sh.xnor.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x5f,0xfc]
sh.xnor.t %d15, %d15, 31, %d14, 24

# CHECK-INST: sh.xnor.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xdf,0xff]
sh.xnor.t %d15, %d15, 31, %d14, 31

# CHECK-INST: sh.xnor.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x5f,0xf0]
sh.xnor.t %d15, %d15, 31, %d15, 0

# CHECK-INST: sh.xnor.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xdf,0xf3]
sh.xnor.t %d15, %d15, 31, %d15, 7

# CHECK-INST: sh.xnor.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x5f,0xfc]
sh.xnor.t %d15, %d15, 31, %d15, 24

# CHECK-INST: sh.xnor.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xdf,0xff]
sh.xnor.t %d15, %d15, 31, %d15, 31

# CHECK-INST: sh.xor.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x60,0x00]
sh.xor.t %d0, %d0, 0, %d0, 0

# CHECK-INST: sh.xor.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xe0,0x03]
sh.xor.t %d0, %d0, 0, %d0, 7

# CHECK-INST: sh.xor.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x60,0x0c]
sh.xor.t %d0, %d0, 0, %d0, 24

# CHECK-INST: sh.xor.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xe0,0x0f]
sh.xor.t %d0, %d0, 0, %d0, 31

# CHECK-INST: sh.xor.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x60,0x00]
sh.xor.t %d0, %d0, 0, %d1, 0

# CHECK-INST: sh.xor.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xe0,0x03]
sh.xor.t %d0, %d0, 0, %d1, 7

# CHECK-INST: sh.xor.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x60,0x0c]
sh.xor.t %d0, %d0, 0, %d1, 24

# CHECK-INST: sh.xor.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xe0,0x0f]
sh.xor.t %d0, %d0, 0, %d1, 31

# CHECK-INST: sh.xor.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x60,0x00]
sh.xor.t %d0, %d0, 0, %d14, 0

# CHECK-INST: sh.xor.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xe0,0x03]
sh.xor.t %d0, %d0, 0, %d14, 7

# CHECK-INST: sh.xor.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x60,0x0c]
sh.xor.t %d0, %d0, 0, %d14, 24

# CHECK-INST: sh.xor.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xe0,0x0f]
sh.xor.t %d0, %d0, 0, %d14, 31

# CHECK-INST: sh.xor.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x60,0x00]
sh.xor.t %d0, %d0, 0, %d15, 0

# CHECK-INST: sh.xor.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xe0,0x03]
sh.xor.t %d0, %d0, 0, %d15, 7

# CHECK-INST: sh.xor.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x60,0x0c]
sh.xor.t %d0, %d0, 0, %d15, 24

# CHECK-INST: sh.xor.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xe0,0x0f]
sh.xor.t %d0, %d0, 0, %d15, 31

# CHECK-INST: sh.xor.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x67,0x00]
sh.xor.t %d0, %d0, 7, %d0, 0

# CHECK-INST: sh.xor.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xe7,0x03]
sh.xor.t %d0, %d0, 7, %d0, 7

# CHECK-INST: sh.xor.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x67,0x0c]
sh.xor.t %d0, %d0, 7, %d0, 24

# CHECK-INST: sh.xor.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xe7,0x0f]
sh.xor.t %d0, %d0, 7, %d0, 31

# CHECK-INST: sh.xor.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x67,0x00]
sh.xor.t %d0, %d0, 7, %d1, 0

# CHECK-INST: sh.xor.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xe7,0x03]
sh.xor.t %d0, %d0, 7, %d1, 7

# CHECK-INST: sh.xor.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x67,0x0c]
sh.xor.t %d0, %d0, 7, %d1, 24

# CHECK-INST: sh.xor.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xe7,0x0f]
sh.xor.t %d0, %d0, 7, %d1, 31

# CHECK-INST: sh.xor.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x67,0x00]
sh.xor.t %d0, %d0, 7, %d14, 0

# CHECK-INST: sh.xor.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xe7,0x03]
sh.xor.t %d0, %d0, 7, %d14, 7

# CHECK-INST: sh.xor.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x67,0x0c]
sh.xor.t %d0, %d0, 7, %d14, 24

# CHECK-INST: sh.xor.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xe7,0x0f]
sh.xor.t %d0, %d0, 7, %d14, 31

# CHECK-INST: sh.xor.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x67,0x00]
sh.xor.t %d0, %d0, 7, %d15, 0

# CHECK-INST: sh.xor.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xe7,0x03]
sh.xor.t %d0, %d0, 7, %d15, 7

# CHECK-INST: sh.xor.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x67,0x0c]
sh.xor.t %d0, %d0, 7, %d15, 24

# CHECK-INST: sh.xor.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xe7,0x0f]
sh.xor.t %d0, %d0, 7, %d15, 31

# CHECK-INST: sh.xor.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x78,0x00]
sh.xor.t %d0, %d0, 24, %d0, 0

# CHECK-INST: sh.xor.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xf8,0x03]
sh.xor.t %d0, %d0, 24, %d0, 7

# CHECK-INST: sh.xor.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x78,0x0c]
sh.xor.t %d0, %d0, 24, %d0, 24

# CHECK-INST: sh.xor.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xf8,0x0f]
sh.xor.t %d0, %d0, 24, %d0, 31

# CHECK-INST: sh.xor.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x78,0x00]
sh.xor.t %d0, %d0, 24, %d1, 0

# CHECK-INST: sh.xor.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xf8,0x03]
sh.xor.t %d0, %d0, 24, %d1, 7

# CHECK-INST: sh.xor.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x78,0x0c]
sh.xor.t %d0, %d0, 24, %d1, 24

# CHECK-INST: sh.xor.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xf8,0x0f]
sh.xor.t %d0, %d0, 24, %d1, 31

# CHECK-INST: sh.xor.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x78,0x00]
sh.xor.t %d0, %d0, 24, %d14, 0

# CHECK-INST: sh.xor.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xf8,0x03]
sh.xor.t %d0, %d0, 24, %d14, 7

# CHECK-INST: sh.xor.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x78,0x0c]
sh.xor.t %d0, %d0, 24, %d14, 24

# CHECK-INST: sh.xor.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xf8,0x0f]
sh.xor.t %d0, %d0, 24, %d14, 31

# CHECK-INST: sh.xor.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x78,0x00]
sh.xor.t %d0, %d0, 24, %d15, 0

# CHECK-INST: sh.xor.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xf8,0x03]
sh.xor.t %d0, %d0, 24, %d15, 7

# CHECK-INST: sh.xor.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x78,0x0c]
sh.xor.t %d0, %d0, 24, %d15, 24

# CHECK-INST: sh.xor.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xf8,0x0f]
sh.xor.t %d0, %d0, 24, %d15, 31

# CHECK-INST: sh.xor.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x7f,0x00]
sh.xor.t %d0, %d0, 31, %d0, 0

# CHECK-INST: sh.xor.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xff,0x03]
sh.xor.t %d0, %d0, 31, %d0, 7

# CHECK-INST: sh.xor.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x7f,0x0c]
sh.xor.t %d0, %d0, 31, %d0, 24

# CHECK-INST: sh.xor.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xff,0x0f]
sh.xor.t %d0, %d0, 31, %d0, 31

# CHECK-INST: sh.xor.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x7f,0x00]
sh.xor.t %d0, %d0, 31, %d1, 0

# CHECK-INST: sh.xor.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xff,0x03]
sh.xor.t %d0, %d0, 31, %d1, 7

# CHECK-INST: sh.xor.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x7f,0x0c]
sh.xor.t %d0, %d0, 31, %d1, 24

# CHECK-INST: sh.xor.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xff,0x0f]
sh.xor.t %d0, %d0, 31, %d1, 31

# CHECK-INST: sh.xor.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x7f,0x00]
sh.xor.t %d0, %d0, 31, %d14, 0

# CHECK-INST: sh.xor.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xff,0x03]
sh.xor.t %d0, %d0, 31, %d14, 7

# CHECK-INST: sh.xor.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x7f,0x0c]
sh.xor.t %d0, %d0, 31, %d14, 24

# CHECK-INST: sh.xor.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xff,0x0f]
sh.xor.t %d0, %d0, 31, %d14, 31

# CHECK-INST: sh.xor.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x7f,0x00]
sh.xor.t %d0, %d0, 31, %d15, 0

# CHECK-INST: sh.xor.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xff,0x03]
sh.xor.t %d0, %d0, 31, %d15, 7

# CHECK-INST: sh.xor.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x7f,0x0c]
sh.xor.t %d0, %d0, 31, %d15, 24

# CHECK-INST: sh.xor.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xff,0x0f]
sh.xor.t %d0, %d0, 31, %d15, 31

# CHECK-INST: sh.xor.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x60,0x00]
sh.xor.t %d0, %d1, 0, %d0, 0

# CHECK-INST: sh.xor.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xe0,0x03]
sh.xor.t %d0, %d1, 0, %d0, 7

# CHECK-INST: sh.xor.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x60,0x0c]
sh.xor.t %d0, %d1, 0, %d0, 24

# CHECK-INST: sh.xor.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xe0,0x0f]
sh.xor.t %d0, %d1, 0, %d0, 31

# CHECK-INST: sh.xor.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x60,0x00]
sh.xor.t %d0, %d1, 0, %d1, 0

# CHECK-INST: sh.xor.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xe0,0x03]
sh.xor.t %d0, %d1, 0, %d1, 7

# CHECK-INST: sh.xor.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x60,0x0c]
sh.xor.t %d0, %d1, 0, %d1, 24

# CHECK-INST: sh.xor.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xe0,0x0f]
sh.xor.t %d0, %d1, 0, %d1, 31

# CHECK-INST: sh.xor.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x60,0x00]
sh.xor.t %d0, %d1, 0, %d14, 0

# CHECK-INST: sh.xor.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xe0,0x03]
sh.xor.t %d0, %d1, 0, %d14, 7

# CHECK-INST: sh.xor.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x60,0x0c]
sh.xor.t %d0, %d1, 0, %d14, 24

# CHECK-INST: sh.xor.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xe0,0x0f]
sh.xor.t %d0, %d1, 0, %d14, 31

# CHECK-INST: sh.xor.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x60,0x00]
sh.xor.t %d0, %d1, 0, %d15, 0

# CHECK-INST: sh.xor.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xe0,0x03]
sh.xor.t %d0, %d1, 0, %d15, 7

# CHECK-INST: sh.xor.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x60,0x0c]
sh.xor.t %d0, %d1, 0, %d15, 24

# CHECK-INST: sh.xor.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xe0,0x0f]
sh.xor.t %d0, %d1, 0, %d15, 31

# CHECK-INST: sh.xor.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x67,0x00]
sh.xor.t %d0, %d1, 7, %d0, 0

# CHECK-INST: sh.xor.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xe7,0x03]
sh.xor.t %d0, %d1, 7, %d0, 7

# CHECK-INST: sh.xor.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x67,0x0c]
sh.xor.t %d0, %d1, 7, %d0, 24

# CHECK-INST: sh.xor.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xe7,0x0f]
sh.xor.t %d0, %d1, 7, %d0, 31

# CHECK-INST: sh.xor.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x67,0x00]
sh.xor.t %d0, %d1, 7, %d1, 0

# CHECK-INST: sh.xor.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xe7,0x03]
sh.xor.t %d0, %d1, 7, %d1, 7

# CHECK-INST: sh.xor.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x67,0x0c]
sh.xor.t %d0, %d1, 7, %d1, 24

# CHECK-INST: sh.xor.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xe7,0x0f]
sh.xor.t %d0, %d1, 7, %d1, 31

# CHECK-INST: sh.xor.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x67,0x00]
sh.xor.t %d0, %d1, 7, %d14, 0

# CHECK-INST: sh.xor.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xe7,0x03]
sh.xor.t %d0, %d1, 7, %d14, 7

# CHECK-INST: sh.xor.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x67,0x0c]
sh.xor.t %d0, %d1, 7, %d14, 24

# CHECK-INST: sh.xor.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xe7,0x0f]
sh.xor.t %d0, %d1, 7, %d14, 31

# CHECK-INST: sh.xor.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x67,0x00]
sh.xor.t %d0, %d1, 7, %d15, 0

# CHECK-INST: sh.xor.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xe7,0x03]
sh.xor.t %d0, %d1, 7, %d15, 7

# CHECK-INST: sh.xor.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x67,0x0c]
sh.xor.t %d0, %d1, 7, %d15, 24

# CHECK-INST: sh.xor.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xe7,0x0f]
sh.xor.t %d0, %d1, 7, %d15, 31

# CHECK-INST: sh.xor.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x78,0x00]
sh.xor.t %d0, %d1, 24, %d0, 0

# CHECK-INST: sh.xor.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xf8,0x03]
sh.xor.t %d0, %d1, 24, %d0, 7

# CHECK-INST: sh.xor.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x78,0x0c]
sh.xor.t %d0, %d1, 24, %d0, 24

# CHECK-INST: sh.xor.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xf8,0x0f]
sh.xor.t %d0, %d1, 24, %d0, 31

# CHECK-INST: sh.xor.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x78,0x00]
sh.xor.t %d0, %d1, 24, %d1, 0

# CHECK-INST: sh.xor.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xf8,0x03]
sh.xor.t %d0, %d1, 24, %d1, 7

# CHECK-INST: sh.xor.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x78,0x0c]
sh.xor.t %d0, %d1, 24, %d1, 24

# CHECK-INST: sh.xor.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xf8,0x0f]
sh.xor.t %d0, %d1, 24, %d1, 31

# CHECK-INST: sh.xor.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x78,0x00]
sh.xor.t %d0, %d1, 24, %d14, 0

# CHECK-INST: sh.xor.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xf8,0x03]
sh.xor.t %d0, %d1, 24, %d14, 7

# CHECK-INST: sh.xor.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x78,0x0c]
sh.xor.t %d0, %d1, 24, %d14, 24

# CHECK-INST: sh.xor.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xf8,0x0f]
sh.xor.t %d0, %d1, 24, %d14, 31

# CHECK-INST: sh.xor.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x78,0x00]
sh.xor.t %d0, %d1, 24, %d15, 0

# CHECK-INST: sh.xor.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xf8,0x03]
sh.xor.t %d0, %d1, 24, %d15, 7

# CHECK-INST: sh.xor.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x78,0x0c]
sh.xor.t %d0, %d1, 24, %d15, 24

# CHECK-INST: sh.xor.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xf8,0x0f]
sh.xor.t %d0, %d1, 24, %d15, 31

# CHECK-INST: sh.xor.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x7f,0x00]
sh.xor.t %d0, %d1, 31, %d0, 0

# CHECK-INST: sh.xor.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xff,0x03]
sh.xor.t %d0, %d1, 31, %d0, 7

# CHECK-INST: sh.xor.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x7f,0x0c]
sh.xor.t %d0, %d1, 31, %d0, 24

# CHECK-INST: sh.xor.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xff,0x0f]
sh.xor.t %d0, %d1, 31, %d0, 31

# CHECK-INST: sh.xor.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x7f,0x00]
sh.xor.t %d0, %d1, 31, %d1, 0

# CHECK-INST: sh.xor.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xff,0x03]
sh.xor.t %d0, %d1, 31, %d1, 7

# CHECK-INST: sh.xor.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x7f,0x0c]
sh.xor.t %d0, %d1, 31, %d1, 24

# CHECK-INST: sh.xor.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xff,0x0f]
sh.xor.t %d0, %d1, 31, %d1, 31

# CHECK-INST: sh.xor.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x7f,0x00]
sh.xor.t %d0, %d1, 31, %d14, 0

# CHECK-INST: sh.xor.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xff,0x03]
sh.xor.t %d0, %d1, 31, %d14, 7

# CHECK-INST: sh.xor.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x7f,0x0c]
sh.xor.t %d0, %d1, 31, %d14, 24

# CHECK-INST: sh.xor.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xff,0x0f]
sh.xor.t %d0, %d1, 31, %d14, 31

# CHECK-INST: sh.xor.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x7f,0x00]
sh.xor.t %d0, %d1, 31, %d15, 0

# CHECK-INST: sh.xor.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xff,0x03]
sh.xor.t %d0, %d1, 31, %d15, 7

# CHECK-INST: sh.xor.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x7f,0x0c]
sh.xor.t %d0, %d1, 31, %d15, 24

# CHECK-INST: sh.xor.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xff,0x0f]
sh.xor.t %d0, %d1, 31, %d15, 31

# CHECK-INST: sh.xor.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x60,0x00]
sh.xor.t %d0, %d14, 0, %d0, 0

# CHECK-INST: sh.xor.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xe0,0x03]
sh.xor.t %d0, %d14, 0, %d0, 7

# CHECK-INST: sh.xor.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x60,0x0c]
sh.xor.t %d0, %d14, 0, %d0, 24

# CHECK-INST: sh.xor.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xe0,0x0f]
sh.xor.t %d0, %d14, 0, %d0, 31

# CHECK-INST: sh.xor.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x60,0x00]
sh.xor.t %d0, %d14, 0, %d1, 0

# CHECK-INST: sh.xor.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xe0,0x03]
sh.xor.t %d0, %d14, 0, %d1, 7

# CHECK-INST: sh.xor.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x60,0x0c]
sh.xor.t %d0, %d14, 0, %d1, 24

# CHECK-INST: sh.xor.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xe0,0x0f]
sh.xor.t %d0, %d14, 0, %d1, 31

# CHECK-INST: sh.xor.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x60,0x00]
sh.xor.t %d0, %d14, 0, %d14, 0

# CHECK-INST: sh.xor.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xe0,0x03]
sh.xor.t %d0, %d14, 0, %d14, 7

# CHECK-INST: sh.xor.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x60,0x0c]
sh.xor.t %d0, %d14, 0, %d14, 24

# CHECK-INST: sh.xor.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xe0,0x0f]
sh.xor.t %d0, %d14, 0, %d14, 31

# CHECK-INST: sh.xor.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x60,0x00]
sh.xor.t %d0, %d14, 0, %d15, 0

# CHECK-INST: sh.xor.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xe0,0x03]
sh.xor.t %d0, %d14, 0, %d15, 7

# CHECK-INST: sh.xor.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x60,0x0c]
sh.xor.t %d0, %d14, 0, %d15, 24

# CHECK-INST: sh.xor.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xe0,0x0f]
sh.xor.t %d0, %d14, 0, %d15, 31

# CHECK-INST: sh.xor.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x67,0x00]
sh.xor.t %d0, %d14, 7, %d0, 0

# CHECK-INST: sh.xor.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xe7,0x03]
sh.xor.t %d0, %d14, 7, %d0, 7

# CHECK-INST: sh.xor.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x67,0x0c]
sh.xor.t %d0, %d14, 7, %d0, 24

# CHECK-INST: sh.xor.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xe7,0x0f]
sh.xor.t %d0, %d14, 7, %d0, 31

# CHECK-INST: sh.xor.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x67,0x00]
sh.xor.t %d0, %d14, 7, %d1, 0

# CHECK-INST: sh.xor.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xe7,0x03]
sh.xor.t %d0, %d14, 7, %d1, 7

# CHECK-INST: sh.xor.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x67,0x0c]
sh.xor.t %d0, %d14, 7, %d1, 24

# CHECK-INST: sh.xor.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xe7,0x0f]
sh.xor.t %d0, %d14, 7, %d1, 31

# CHECK-INST: sh.xor.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x67,0x00]
sh.xor.t %d0, %d14, 7, %d14, 0

# CHECK-INST: sh.xor.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xe7,0x03]
sh.xor.t %d0, %d14, 7, %d14, 7

# CHECK-INST: sh.xor.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x67,0x0c]
sh.xor.t %d0, %d14, 7, %d14, 24

# CHECK-INST: sh.xor.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xe7,0x0f]
sh.xor.t %d0, %d14, 7, %d14, 31

# CHECK-INST: sh.xor.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x67,0x00]
sh.xor.t %d0, %d14, 7, %d15, 0

# CHECK-INST: sh.xor.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xe7,0x03]
sh.xor.t %d0, %d14, 7, %d15, 7

# CHECK-INST: sh.xor.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x67,0x0c]
sh.xor.t %d0, %d14, 7, %d15, 24

# CHECK-INST: sh.xor.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xe7,0x0f]
sh.xor.t %d0, %d14, 7, %d15, 31

# CHECK-INST: sh.xor.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x78,0x00]
sh.xor.t %d0, %d14, 24, %d0, 0

# CHECK-INST: sh.xor.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xf8,0x03]
sh.xor.t %d0, %d14, 24, %d0, 7

# CHECK-INST: sh.xor.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x78,0x0c]
sh.xor.t %d0, %d14, 24, %d0, 24

# CHECK-INST: sh.xor.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xf8,0x0f]
sh.xor.t %d0, %d14, 24, %d0, 31

# CHECK-INST: sh.xor.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x78,0x00]
sh.xor.t %d0, %d14, 24, %d1, 0

# CHECK-INST: sh.xor.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xf8,0x03]
sh.xor.t %d0, %d14, 24, %d1, 7

# CHECK-INST: sh.xor.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x78,0x0c]
sh.xor.t %d0, %d14, 24, %d1, 24

# CHECK-INST: sh.xor.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xf8,0x0f]
sh.xor.t %d0, %d14, 24, %d1, 31

# CHECK-INST: sh.xor.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x78,0x00]
sh.xor.t %d0, %d14, 24, %d14, 0

# CHECK-INST: sh.xor.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xf8,0x03]
sh.xor.t %d0, %d14, 24, %d14, 7

# CHECK-INST: sh.xor.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x78,0x0c]
sh.xor.t %d0, %d14, 24, %d14, 24

# CHECK-INST: sh.xor.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xf8,0x0f]
sh.xor.t %d0, %d14, 24, %d14, 31

# CHECK-INST: sh.xor.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x78,0x00]
sh.xor.t %d0, %d14, 24, %d15, 0

# CHECK-INST: sh.xor.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xf8,0x03]
sh.xor.t %d0, %d14, 24, %d15, 7

# CHECK-INST: sh.xor.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x78,0x0c]
sh.xor.t %d0, %d14, 24, %d15, 24

# CHECK-INST: sh.xor.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xf8,0x0f]
sh.xor.t %d0, %d14, 24, %d15, 31

# CHECK-INST: sh.xor.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x7f,0x00]
sh.xor.t %d0, %d14, 31, %d0, 0

# CHECK-INST: sh.xor.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xff,0x03]
sh.xor.t %d0, %d14, 31, %d0, 7

# CHECK-INST: sh.xor.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x7f,0x0c]
sh.xor.t %d0, %d14, 31, %d0, 24

# CHECK-INST: sh.xor.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xff,0x0f]
sh.xor.t %d0, %d14, 31, %d0, 31

# CHECK-INST: sh.xor.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x7f,0x00]
sh.xor.t %d0, %d14, 31, %d1, 0

# CHECK-INST: sh.xor.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xff,0x03]
sh.xor.t %d0, %d14, 31, %d1, 7

# CHECK-INST: sh.xor.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x7f,0x0c]
sh.xor.t %d0, %d14, 31, %d1, 24

# CHECK-INST: sh.xor.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xff,0x0f]
sh.xor.t %d0, %d14, 31, %d1, 31

# CHECK-INST: sh.xor.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x7f,0x00]
sh.xor.t %d0, %d14, 31, %d14, 0

# CHECK-INST: sh.xor.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xff,0x03]
sh.xor.t %d0, %d14, 31, %d14, 7

# CHECK-INST: sh.xor.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x7f,0x0c]
sh.xor.t %d0, %d14, 31, %d14, 24

# CHECK-INST: sh.xor.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xff,0x0f]
sh.xor.t %d0, %d14, 31, %d14, 31

# CHECK-INST: sh.xor.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x7f,0x00]
sh.xor.t %d0, %d14, 31, %d15, 0

# CHECK-INST: sh.xor.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xff,0x03]
sh.xor.t %d0, %d14, 31, %d15, 7

# CHECK-INST: sh.xor.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x7f,0x0c]
sh.xor.t %d0, %d14, 31, %d15, 24

# CHECK-INST: sh.xor.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xff,0x0f]
sh.xor.t %d0, %d14, 31, %d15, 31

# CHECK-INST: sh.xor.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x60,0x00]
sh.xor.t %d0, %d15, 0, %d0, 0

# CHECK-INST: sh.xor.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xe0,0x03]
sh.xor.t %d0, %d15, 0, %d0, 7

# CHECK-INST: sh.xor.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x60,0x0c]
sh.xor.t %d0, %d15, 0, %d0, 24

# CHECK-INST: sh.xor.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xe0,0x0f]
sh.xor.t %d0, %d15, 0, %d0, 31

# CHECK-INST: sh.xor.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x60,0x00]
sh.xor.t %d0, %d15, 0, %d1, 0

# CHECK-INST: sh.xor.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xe0,0x03]
sh.xor.t %d0, %d15, 0, %d1, 7

# CHECK-INST: sh.xor.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x60,0x0c]
sh.xor.t %d0, %d15, 0, %d1, 24

# CHECK-INST: sh.xor.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xe0,0x0f]
sh.xor.t %d0, %d15, 0, %d1, 31

# CHECK-INST: sh.xor.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x60,0x00]
sh.xor.t %d0, %d15, 0, %d14, 0

# CHECK-INST: sh.xor.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xe0,0x03]
sh.xor.t %d0, %d15, 0, %d14, 7

# CHECK-INST: sh.xor.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x60,0x0c]
sh.xor.t %d0, %d15, 0, %d14, 24

# CHECK-INST: sh.xor.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xe0,0x0f]
sh.xor.t %d0, %d15, 0, %d14, 31

# CHECK-INST: sh.xor.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x60,0x00]
sh.xor.t %d0, %d15, 0, %d15, 0

# CHECK-INST: sh.xor.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xe0,0x03]
sh.xor.t %d0, %d15, 0, %d15, 7

# CHECK-INST: sh.xor.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x60,0x0c]
sh.xor.t %d0, %d15, 0, %d15, 24

# CHECK-INST: sh.xor.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xe0,0x0f]
sh.xor.t %d0, %d15, 0, %d15, 31

# CHECK-INST: sh.xor.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x67,0x00]
sh.xor.t %d0, %d15, 7, %d0, 0

# CHECK-INST: sh.xor.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xe7,0x03]
sh.xor.t %d0, %d15, 7, %d0, 7

# CHECK-INST: sh.xor.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x67,0x0c]
sh.xor.t %d0, %d15, 7, %d0, 24

# CHECK-INST: sh.xor.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xe7,0x0f]
sh.xor.t %d0, %d15, 7, %d0, 31

# CHECK-INST: sh.xor.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x67,0x00]
sh.xor.t %d0, %d15, 7, %d1, 0

# CHECK-INST: sh.xor.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xe7,0x03]
sh.xor.t %d0, %d15, 7, %d1, 7

# CHECK-INST: sh.xor.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x67,0x0c]
sh.xor.t %d0, %d15, 7, %d1, 24

# CHECK-INST: sh.xor.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xe7,0x0f]
sh.xor.t %d0, %d15, 7, %d1, 31

# CHECK-INST: sh.xor.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x67,0x00]
sh.xor.t %d0, %d15, 7, %d14, 0

# CHECK-INST: sh.xor.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xe7,0x03]
sh.xor.t %d0, %d15, 7, %d14, 7

# CHECK-INST: sh.xor.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x67,0x0c]
sh.xor.t %d0, %d15, 7, %d14, 24

# CHECK-INST: sh.xor.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xe7,0x0f]
sh.xor.t %d0, %d15, 7, %d14, 31

# CHECK-INST: sh.xor.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x67,0x00]
sh.xor.t %d0, %d15, 7, %d15, 0

# CHECK-INST: sh.xor.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xe7,0x03]
sh.xor.t %d0, %d15, 7, %d15, 7

# CHECK-INST: sh.xor.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x67,0x0c]
sh.xor.t %d0, %d15, 7, %d15, 24

# CHECK-INST: sh.xor.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xe7,0x0f]
sh.xor.t %d0, %d15, 7, %d15, 31

# CHECK-INST: sh.xor.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x78,0x00]
sh.xor.t %d0, %d15, 24, %d0, 0

# CHECK-INST: sh.xor.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xf8,0x03]
sh.xor.t %d0, %d15, 24, %d0, 7

# CHECK-INST: sh.xor.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x78,0x0c]
sh.xor.t %d0, %d15, 24, %d0, 24

# CHECK-INST: sh.xor.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xf8,0x0f]
sh.xor.t %d0, %d15, 24, %d0, 31

# CHECK-INST: sh.xor.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x78,0x00]
sh.xor.t %d0, %d15, 24, %d1, 0

# CHECK-INST: sh.xor.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xf8,0x03]
sh.xor.t %d0, %d15, 24, %d1, 7

# CHECK-INST: sh.xor.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x78,0x0c]
sh.xor.t %d0, %d15, 24, %d1, 24

# CHECK-INST: sh.xor.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xf8,0x0f]
sh.xor.t %d0, %d15, 24, %d1, 31

# CHECK-INST: sh.xor.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x78,0x00]
sh.xor.t %d0, %d15, 24, %d14, 0

# CHECK-INST: sh.xor.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xf8,0x03]
sh.xor.t %d0, %d15, 24, %d14, 7

# CHECK-INST: sh.xor.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x78,0x0c]
sh.xor.t %d0, %d15, 24, %d14, 24

# CHECK-INST: sh.xor.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xf8,0x0f]
sh.xor.t %d0, %d15, 24, %d14, 31

# CHECK-INST: sh.xor.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x78,0x00]
sh.xor.t %d0, %d15, 24, %d15, 0

# CHECK-INST: sh.xor.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xf8,0x03]
sh.xor.t %d0, %d15, 24, %d15, 7

# CHECK-INST: sh.xor.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x78,0x0c]
sh.xor.t %d0, %d15, 24, %d15, 24

# CHECK-INST: sh.xor.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xf8,0x0f]
sh.xor.t %d0, %d15, 24, %d15, 31

# CHECK-INST: sh.xor.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x7f,0x00]
sh.xor.t %d0, %d15, 31, %d0, 0

# CHECK-INST: sh.xor.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xff,0x03]
sh.xor.t %d0, %d15, 31, %d0, 7

# CHECK-INST: sh.xor.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x7f,0x0c]
sh.xor.t %d0, %d15, 31, %d0, 24

# CHECK-INST: sh.xor.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xff,0x0f]
sh.xor.t %d0, %d15, 31, %d0, 31

# CHECK-INST: sh.xor.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x7f,0x00]
sh.xor.t %d0, %d15, 31, %d1, 0

# CHECK-INST: sh.xor.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xff,0x03]
sh.xor.t %d0, %d15, 31, %d1, 7

# CHECK-INST: sh.xor.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x7f,0x0c]
sh.xor.t %d0, %d15, 31, %d1, 24

# CHECK-INST: sh.xor.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xff,0x0f]
sh.xor.t %d0, %d15, 31, %d1, 31

# CHECK-INST: sh.xor.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x7f,0x00]
sh.xor.t %d0, %d15, 31, %d14, 0

# CHECK-INST: sh.xor.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xff,0x03]
sh.xor.t %d0, %d15, 31, %d14, 7

# CHECK-INST: sh.xor.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x7f,0x0c]
sh.xor.t %d0, %d15, 31, %d14, 24

# CHECK-INST: sh.xor.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xff,0x0f]
sh.xor.t %d0, %d15, 31, %d14, 31

# CHECK-INST: sh.xor.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x7f,0x00]
sh.xor.t %d0, %d15, 31, %d15, 0

# CHECK-INST: sh.xor.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xff,0x03]
sh.xor.t %d0, %d15, 31, %d15, 7

# CHECK-INST: sh.xor.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x7f,0x0c]
sh.xor.t %d0, %d15, 31, %d15, 24

# CHECK-INST: sh.xor.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xff,0x0f]
sh.xor.t %d0, %d15, 31, %d15, 31

# CHECK-INST: sh.xor.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x60,0x10]
sh.xor.t %d1, %d0, 0, %d0, 0

# CHECK-INST: sh.xor.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xe0,0x13]
sh.xor.t %d1, %d0, 0, %d0, 7

# CHECK-INST: sh.xor.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x60,0x1c]
sh.xor.t %d1, %d0, 0, %d0, 24

# CHECK-INST: sh.xor.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xe0,0x1f]
sh.xor.t %d1, %d0, 0, %d0, 31

# CHECK-INST: sh.xor.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x60,0x10]
sh.xor.t %d1, %d0, 0, %d1, 0

# CHECK-INST: sh.xor.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xe0,0x13]
sh.xor.t %d1, %d0, 0, %d1, 7

# CHECK-INST: sh.xor.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x60,0x1c]
sh.xor.t %d1, %d0, 0, %d1, 24

# CHECK-INST: sh.xor.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xe0,0x1f]
sh.xor.t %d1, %d0, 0, %d1, 31

# CHECK-INST: sh.xor.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x60,0x10]
sh.xor.t %d1, %d0, 0, %d14, 0

# CHECK-INST: sh.xor.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xe0,0x13]
sh.xor.t %d1, %d0, 0, %d14, 7

# CHECK-INST: sh.xor.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x60,0x1c]
sh.xor.t %d1, %d0, 0, %d14, 24

# CHECK-INST: sh.xor.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xe0,0x1f]
sh.xor.t %d1, %d0, 0, %d14, 31

# CHECK-INST: sh.xor.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x60,0x10]
sh.xor.t %d1, %d0, 0, %d15, 0

# CHECK-INST: sh.xor.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xe0,0x13]
sh.xor.t %d1, %d0, 0, %d15, 7

# CHECK-INST: sh.xor.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x60,0x1c]
sh.xor.t %d1, %d0, 0, %d15, 24

# CHECK-INST: sh.xor.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xe0,0x1f]
sh.xor.t %d1, %d0, 0, %d15, 31

# CHECK-INST: sh.xor.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x67,0x10]
sh.xor.t %d1, %d0, 7, %d0, 0

# CHECK-INST: sh.xor.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xe7,0x13]
sh.xor.t %d1, %d0, 7, %d0, 7

# CHECK-INST: sh.xor.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x67,0x1c]
sh.xor.t %d1, %d0, 7, %d0, 24

# CHECK-INST: sh.xor.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xe7,0x1f]
sh.xor.t %d1, %d0, 7, %d0, 31

# CHECK-INST: sh.xor.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x67,0x10]
sh.xor.t %d1, %d0, 7, %d1, 0

# CHECK-INST: sh.xor.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xe7,0x13]
sh.xor.t %d1, %d0, 7, %d1, 7

# CHECK-INST: sh.xor.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x67,0x1c]
sh.xor.t %d1, %d0, 7, %d1, 24

# CHECK-INST: sh.xor.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xe7,0x1f]
sh.xor.t %d1, %d0, 7, %d1, 31

# CHECK-INST: sh.xor.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x67,0x10]
sh.xor.t %d1, %d0, 7, %d14, 0

# CHECK-INST: sh.xor.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xe7,0x13]
sh.xor.t %d1, %d0, 7, %d14, 7

# CHECK-INST: sh.xor.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x67,0x1c]
sh.xor.t %d1, %d0, 7, %d14, 24

# CHECK-INST: sh.xor.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xe7,0x1f]
sh.xor.t %d1, %d0, 7, %d14, 31

# CHECK-INST: sh.xor.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x67,0x10]
sh.xor.t %d1, %d0, 7, %d15, 0

# CHECK-INST: sh.xor.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xe7,0x13]
sh.xor.t %d1, %d0, 7, %d15, 7

# CHECK-INST: sh.xor.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x67,0x1c]
sh.xor.t %d1, %d0, 7, %d15, 24

# CHECK-INST: sh.xor.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xe7,0x1f]
sh.xor.t %d1, %d0, 7, %d15, 31

# CHECK-INST: sh.xor.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x78,0x10]
sh.xor.t %d1, %d0, 24, %d0, 0

# CHECK-INST: sh.xor.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xf8,0x13]
sh.xor.t %d1, %d0, 24, %d0, 7

# CHECK-INST: sh.xor.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x78,0x1c]
sh.xor.t %d1, %d0, 24, %d0, 24

# CHECK-INST: sh.xor.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xf8,0x1f]
sh.xor.t %d1, %d0, 24, %d0, 31

# CHECK-INST: sh.xor.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x78,0x10]
sh.xor.t %d1, %d0, 24, %d1, 0

# CHECK-INST: sh.xor.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xf8,0x13]
sh.xor.t %d1, %d0, 24, %d1, 7

# CHECK-INST: sh.xor.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x78,0x1c]
sh.xor.t %d1, %d0, 24, %d1, 24

# CHECK-INST: sh.xor.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xf8,0x1f]
sh.xor.t %d1, %d0, 24, %d1, 31

# CHECK-INST: sh.xor.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x78,0x10]
sh.xor.t %d1, %d0, 24, %d14, 0

# CHECK-INST: sh.xor.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xf8,0x13]
sh.xor.t %d1, %d0, 24, %d14, 7

# CHECK-INST: sh.xor.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x78,0x1c]
sh.xor.t %d1, %d0, 24, %d14, 24

# CHECK-INST: sh.xor.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xf8,0x1f]
sh.xor.t %d1, %d0, 24, %d14, 31

# CHECK-INST: sh.xor.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x78,0x10]
sh.xor.t %d1, %d0, 24, %d15, 0

# CHECK-INST: sh.xor.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xf8,0x13]
sh.xor.t %d1, %d0, 24, %d15, 7

# CHECK-INST: sh.xor.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x78,0x1c]
sh.xor.t %d1, %d0, 24, %d15, 24

# CHECK-INST: sh.xor.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xf8,0x1f]
sh.xor.t %d1, %d0, 24, %d15, 31

# CHECK-INST: sh.xor.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x7f,0x10]
sh.xor.t %d1, %d0, 31, %d0, 0

# CHECK-INST: sh.xor.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xff,0x13]
sh.xor.t %d1, %d0, 31, %d0, 7

# CHECK-INST: sh.xor.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x7f,0x1c]
sh.xor.t %d1, %d0, 31, %d0, 24

# CHECK-INST: sh.xor.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xff,0x1f]
sh.xor.t %d1, %d0, 31, %d0, 31

# CHECK-INST: sh.xor.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x7f,0x10]
sh.xor.t %d1, %d0, 31, %d1, 0

# CHECK-INST: sh.xor.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xff,0x13]
sh.xor.t %d1, %d0, 31, %d1, 7

# CHECK-INST: sh.xor.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x7f,0x1c]
sh.xor.t %d1, %d0, 31, %d1, 24

# CHECK-INST: sh.xor.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xff,0x1f]
sh.xor.t %d1, %d0, 31, %d1, 31

# CHECK-INST: sh.xor.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x7f,0x10]
sh.xor.t %d1, %d0, 31, %d14, 0

# CHECK-INST: sh.xor.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xff,0x13]
sh.xor.t %d1, %d0, 31, %d14, 7

# CHECK-INST: sh.xor.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x7f,0x1c]
sh.xor.t %d1, %d0, 31, %d14, 24

# CHECK-INST: sh.xor.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xff,0x1f]
sh.xor.t %d1, %d0, 31, %d14, 31

# CHECK-INST: sh.xor.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x7f,0x10]
sh.xor.t %d1, %d0, 31, %d15, 0

# CHECK-INST: sh.xor.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xff,0x13]
sh.xor.t %d1, %d0, 31, %d15, 7

# CHECK-INST: sh.xor.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x7f,0x1c]
sh.xor.t %d1, %d0, 31, %d15, 24

# CHECK-INST: sh.xor.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xff,0x1f]
sh.xor.t %d1, %d0, 31, %d15, 31

# CHECK-INST: sh.xor.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x60,0x10]
sh.xor.t %d1, %d1, 0, %d0, 0

# CHECK-INST: sh.xor.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xe0,0x13]
sh.xor.t %d1, %d1, 0, %d0, 7

# CHECK-INST: sh.xor.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x60,0x1c]
sh.xor.t %d1, %d1, 0, %d0, 24

# CHECK-INST: sh.xor.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xe0,0x1f]
sh.xor.t %d1, %d1, 0, %d0, 31

# CHECK-INST: sh.xor.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x60,0x10]
sh.xor.t %d1, %d1, 0, %d1, 0

# CHECK-INST: sh.xor.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xe0,0x13]
sh.xor.t %d1, %d1, 0, %d1, 7

# CHECK-INST: sh.xor.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x60,0x1c]
sh.xor.t %d1, %d1, 0, %d1, 24

# CHECK-INST: sh.xor.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xe0,0x1f]
sh.xor.t %d1, %d1, 0, %d1, 31

# CHECK-INST: sh.xor.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x60,0x10]
sh.xor.t %d1, %d1, 0, %d14, 0

# CHECK-INST: sh.xor.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xe0,0x13]
sh.xor.t %d1, %d1, 0, %d14, 7

# CHECK-INST: sh.xor.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x60,0x1c]
sh.xor.t %d1, %d1, 0, %d14, 24

# CHECK-INST: sh.xor.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xe0,0x1f]
sh.xor.t %d1, %d1, 0, %d14, 31

# CHECK-INST: sh.xor.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x60,0x10]
sh.xor.t %d1, %d1, 0, %d15, 0

# CHECK-INST: sh.xor.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xe0,0x13]
sh.xor.t %d1, %d1, 0, %d15, 7

# CHECK-INST: sh.xor.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x60,0x1c]
sh.xor.t %d1, %d1, 0, %d15, 24

# CHECK-INST: sh.xor.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xe0,0x1f]
sh.xor.t %d1, %d1, 0, %d15, 31

# CHECK-INST: sh.xor.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x67,0x10]
sh.xor.t %d1, %d1, 7, %d0, 0

# CHECK-INST: sh.xor.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xe7,0x13]
sh.xor.t %d1, %d1, 7, %d0, 7

# CHECK-INST: sh.xor.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x67,0x1c]
sh.xor.t %d1, %d1, 7, %d0, 24

# CHECK-INST: sh.xor.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xe7,0x1f]
sh.xor.t %d1, %d1, 7, %d0, 31

# CHECK-INST: sh.xor.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x67,0x10]
sh.xor.t %d1, %d1, 7, %d1, 0

# CHECK-INST: sh.xor.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xe7,0x13]
sh.xor.t %d1, %d1, 7, %d1, 7

# CHECK-INST: sh.xor.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x67,0x1c]
sh.xor.t %d1, %d1, 7, %d1, 24

# CHECK-INST: sh.xor.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xe7,0x1f]
sh.xor.t %d1, %d1, 7, %d1, 31

# CHECK-INST: sh.xor.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x67,0x10]
sh.xor.t %d1, %d1, 7, %d14, 0

# CHECK-INST: sh.xor.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xe7,0x13]
sh.xor.t %d1, %d1, 7, %d14, 7

# CHECK-INST: sh.xor.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x67,0x1c]
sh.xor.t %d1, %d1, 7, %d14, 24

# CHECK-INST: sh.xor.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xe7,0x1f]
sh.xor.t %d1, %d1, 7, %d14, 31

# CHECK-INST: sh.xor.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x67,0x10]
sh.xor.t %d1, %d1, 7, %d15, 0

# CHECK-INST: sh.xor.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xe7,0x13]
sh.xor.t %d1, %d1, 7, %d15, 7

# CHECK-INST: sh.xor.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x67,0x1c]
sh.xor.t %d1, %d1, 7, %d15, 24

# CHECK-INST: sh.xor.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xe7,0x1f]
sh.xor.t %d1, %d1, 7, %d15, 31

# CHECK-INST: sh.xor.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x78,0x10]
sh.xor.t %d1, %d1, 24, %d0, 0

# CHECK-INST: sh.xor.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xf8,0x13]
sh.xor.t %d1, %d1, 24, %d0, 7

# CHECK-INST: sh.xor.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x78,0x1c]
sh.xor.t %d1, %d1, 24, %d0, 24

# CHECK-INST: sh.xor.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xf8,0x1f]
sh.xor.t %d1, %d1, 24, %d0, 31

# CHECK-INST: sh.xor.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x78,0x10]
sh.xor.t %d1, %d1, 24, %d1, 0

# CHECK-INST: sh.xor.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xf8,0x13]
sh.xor.t %d1, %d1, 24, %d1, 7

# CHECK-INST: sh.xor.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x78,0x1c]
sh.xor.t %d1, %d1, 24, %d1, 24

# CHECK-INST: sh.xor.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xf8,0x1f]
sh.xor.t %d1, %d1, 24, %d1, 31

# CHECK-INST: sh.xor.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x78,0x10]
sh.xor.t %d1, %d1, 24, %d14, 0

# CHECK-INST: sh.xor.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xf8,0x13]
sh.xor.t %d1, %d1, 24, %d14, 7

# CHECK-INST: sh.xor.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x78,0x1c]
sh.xor.t %d1, %d1, 24, %d14, 24

# CHECK-INST: sh.xor.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xf8,0x1f]
sh.xor.t %d1, %d1, 24, %d14, 31

# CHECK-INST: sh.xor.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x78,0x10]
sh.xor.t %d1, %d1, 24, %d15, 0

# CHECK-INST: sh.xor.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xf8,0x13]
sh.xor.t %d1, %d1, 24, %d15, 7

# CHECK-INST: sh.xor.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x78,0x1c]
sh.xor.t %d1, %d1, 24, %d15, 24

# CHECK-INST: sh.xor.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xf8,0x1f]
sh.xor.t %d1, %d1, 24, %d15, 31

# CHECK-INST: sh.xor.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x7f,0x10]
sh.xor.t %d1, %d1, 31, %d0, 0

# CHECK-INST: sh.xor.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xff,0x13]
sh.xor.t %d1, %d1, 31, %d0, 7

# CHECK-INST: sh.xor.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x7f,0x1c]
sh.xor.t %d1, %d1, 31, %d0, 24

# CHECK-INST: sh.xor.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xff,0x1f]
sh.xor.t %d1, %d1, 31, %d0, 31

# CHECK-INST: sh.xor.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x7f,0x10]
sh.xor.t %d1, %d1, 31, %d1, 0

# CHECK-INST: sh.xor.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xff,0x13]
sh.xor.t %d1, %d1, 31, %d1, 7

# CHECK-INST: sh.xor.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x7f,0x1c]
sh.xor.t %d1, %d1, 31, %d1, 24

# CHECK-INST: sh.xor.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xff,0x1f]
sh.xor.t %d1, %d1, 31, %d1, 31

# CHECK-INST: sh.xor.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x7f,0x10]
sh.xor.t %d1, %d1, 31, %d14, 0

# CHECK-INST: sh.xor.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xff,0x13]
sh.xor.t %d1, %d1, 31, %d14, 7

# CHECK-INST: sh.xor.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x7f,0x1c]
sh.xor.t %d1, %d1, 31, %d14, 24

# CHECK-INST: sh.xor.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xff,0x1f]
sh.xor.t %d1, %d1, 31, %d14, 31

# CHECK-INST: sh.xor.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x7f,0x10]
sh.xor.t %d1, %d1, 31, %d15, 0

# CHECK-INST: sh.xor.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xff,0x13]
sh.xor.t %d1, %d1, 31, %d15, 7

# CHECK-INST: sh.xor.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x7f,0x1c]
sh.xor.t %d1, %d1, 31, %d15, 24

# CHECK-INST: sh.xor.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xff,0x1f]
sh.xor.t %d1, %d1, 31, %d15, 31

# CHECK-INST: sh.xor.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x60,0x10]
sh.xor.t %d1, %d14, 0, %d0, 0

# CHECK-INST: sh.xor.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xe0,0x13]
sh.xor.t %d1, %d14, 0, %d0, 7

# CHECK-INST: sh.xor.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x60,0x1c]
sh.xor.t %d1, %d14, 0, %d0, 24

# CHECK-INST: sh.xor.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xe0,0x1f]
sh.xor.t %d1, %d14, 0, %d0, 31

# CHECK-INST: sh.xor.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x60,0x10]
sh.xor.t %d1, %d14, 0, %d1, 0

# CHECK-INST: sh.xor.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xe0,0x13]
sh.xor.t %d1, %d14, 0, %d1, 7

# CHECK-INST: sh.xor.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x60,0x1c]
sh.xor.t %d1, %d14, 0, %d1, 24

# CHECK-INST: sh.xor.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xe0,0x1f]
sh.xor.t %d1, %d14, 0, %d1, 31

# CHECK-INST: sh.xor.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x60,0x10]
sh.xor.t %d1, %d14, 0, %d14, 0

# CHECK-INST: sh.xor.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xe0,0x13]
sh.xor.t %d1, %d14, 0, %d14, 7

# CHECK-INST: sh.xor.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x60,0x1c]
sh.xor.t %d1, %d14, 0, %d14, 24

# CHECK-INST: sh.xor.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xe0,0x1f]
sh.xor.t %d1, %d14, 0, %d14, 31

# CHECK-INST: sh.xor.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x60,0x10]
sh.xor.t %d1, %d14, 0, %d15, 0

# CHECK-INST: sh.xor.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xe0,0x13]
sh.xor.t %d1, %d14, 0, %d15, 7

# CHECK-INST: sh.xor.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x60,0x1c]
sh.xor.t %d1, %d14, 0, %d15, 24

# CHECK-INST: sh.xor.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xe0,0x1f]
sh.xor.t %d1, %d14, 0, %d15, 31

# CHECK-INST: sh.xor.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x67,0x10]
sh.xor.t %d1, %d14, 7, %d0, 0

# CHECK-INST: sh.xor.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xe7,0x13]
sh.xor.t %d1, %d14, 7, %d0, 7

# CHECK-INST: sh.xor.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x67,0x1c]
sh.xor.t %d1, %d14, 7, %d0, 24

# CHECK-INST: sh.xor.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xe7,0x1f]
sh.xor.t %d1, %d14, 7, %d0, 31

# CHECK-INST: sh.xor.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x67,0x10]
sh.xor.t %d1, %d14, 7, %d1, 0

# CHECK-INST: sh.xor.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xe7,0x13]
sh.xor.t %d1, %d14, 7, %d1, 7

# CHECK-INST: sh.xor.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x67,0x1c]
sh.xor.t %d1, %d14, 7, %d1, 24

# CHECK-INST: sh.xor.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xe7,0x1f]
sh.xor.t %d1, %d14, 7, %d1, 31

# CHECK-INST: sh.xor.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x67,0x10]
sh.xor.t %d1, %d14, 7, %d14, 0

# CHECK-INST: sh.xor.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xe7,0x13]
sh.xor.t %d1, %d14, 7, %d14, 7

# CHECK-INST: sh.xor.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x67,0x1c]
sh.xor.t %d1, %d14, 7, %d14, 24

# CHECK-INST: sh.xor.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xe7,0x1f]
sh.xor.t %d1, %d14, 7, %d14, 31

# CHECK-INST: sh.xor.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x67,0x10]
sh.xor.t %d1, %d14, 7, %d15, 0

# CHECK-INST: sh.xor.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xe7,0x13]
sh.xor.t %d1, %d14, 7, %d15, 7

# CHECK-INST: sh.xor.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x67,0x1c]
sh.xor.t %d1, %d14, 7, %d15, 24

# CHECK-INST: sh.xor.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xe7,0x1f]
sh.xor.t %d1, %d14, 7, %d15, 31

# CHECK-INST: sh.xor.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x78,0x10]
sh.xor.t %d1, %d14, 24, %d0, 0

# CHECK-INST: sh.xor.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xf8,0x13]
sh.xor.t %d1, %d14, 24, %d0, 7

# CHECK-INST: sh.xor.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x78,0x1c]
sh.xor.t %d1, %d14, 24, %d0, 24

# CHECK-INST: sh.xor.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xf8,0x1f]
sh.xor.t %d1, %d14, 24, %d0, 31

# CHECK-INST: sh.xor.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x78,0x10]
sh.xor.t %d1, %d14, 24, %d1, 0

# CHECK-INST: sh.xor.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xf8,0x13]
sh.xor.t %d1, %d14, 24, %d1, 7

# CHECK-INST: sh.xor.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x78,0x1c]
sh.xor.t %d1, %d14, 24, %d1, 24

# CHECK-INST: sh.xor.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xf8,0x1f]
sh.xor.t %d1, %d14, 24, %d1, 31

# CHECK-INST: sh.xor.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x78,0x10]
sh.xor.t %d1, %d14, 24, %d14, 0

# CHECK-INST: sh.xor.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xf8,0x13]
sh.xor.t %d1, %d14, 24, %d14, 7

# CHECK-INST: sh.xor.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x78,0x1c]
sh.xor.t %d1, %d14, 24, %d14, 24

# CHECK-INST: sh.xor.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xf8,0x1f]
sh.xor.t %d1, %d14, 24, %d14, 31

# CHECK-INST: sh.xor.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x78,0x10]
sh.xor.t %d1, %d14, 24, %d15, 0

# CHECK-INST: sh.xor.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xf8,0x13]
sh.xor.t %d1, %d14, 24, %d15, 7

# CHECK-INST: sh.xor.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x78,0x1c]
sh.xor.t %d1, %d14, 24, %d15, 24

# CHECK-INST: sh.xor.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xf8,0x1f]
sh.xor.t %d1, %d14, 24, %d15, 31

# CHECK-INST: sh.xor.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x7f,0x10]
sh.xor.t %d1, %d14, 31, %d0, 0

# CHECK-INST: sh.xor.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xff,0x13]
sh.xor.t %d1, %d14, 31, %d0, 7

# CHECK-INST: sh.xor.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x7f,0x1c]
sh.xor.t %d1, %d14, 31, %d0, 24

# CHECK-INST: sh.xor.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xff,0x1f]
sh.xor.t %d1, %d14, 31, %d0, 31

# CHECK-INST: sh.xor.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x7f,0x10]
sh.xor.t %d1, %d14, 31, %d1, 0

# CHECK-INST: sh.xor.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xff,0x13]
sh.xor.t %d1, %d14, 31, %d1, 7

# CHECK-INST: sh.xor.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x7f,0x1c]
sh.xor.t %d1, %d14, 31, %d1, 24

# CHECK-INST: sh.xor.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xff,0x1f]
sh.xor.t %d1, %d14, 31, %d1, 31

# CHECK-INST: sh.xor.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x7f,0x10]
sh.xor.t %d1, %d14, 31, %d14, 0

# CHECK-INST: sh.xor.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xff,0x13]
sh.xor.t %d1, %d14, 31, %d14, 7

# CHECK-INST: sh.xor.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x7f,0x1c]
sh.xor.t %d1, %d14, 31, %d14, 24

# CHECK-INST: sh.xor.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xff,0x1f]
sh.xor.t %d1, %d14, 31, %d14, 31

# CHECK-INST: sh.xor.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x7f,0x10]
sh.xor.t %d1, %d14, 31, %d15, 0

# CHECK-INST: sh.xor.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xff,0x13]
sh.xor.t %d1, %d14, 31, %d15, 7

# CHECK-INST: sh.xor.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x7f,0x1c]
sh.xor.t %d1, %d14, 31, %d15, 24

# CHECK-INST: sh.xor.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xff,0x1f]
sh.xor.t %d1, %d14, 31, %d15, 31

# CHECK-INST: sh.xor.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x60,0x10]
sh.xor.t %d1, %d15, 0, %d0, 0

# CHECK-INST: sh.xor.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xe0,0x13]
sh.xor.t %d1, %d15, 0, %d0, 7

# CHECK-INST: sh.xor.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x60,0x1c]
sh.xor.t %d1, %d15, 0, %d0, 24

# CHECK-INST: sh.xor.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xe0,0x1f]
sh.xor.t %d1, %d15, 0, %d0, 31

# CHECK-INST: sh.xor.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x60,0x10]
sh.xor.t %d1, %d15, 0, %d1, 0

# CHECK-INST: sh.xor.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xe0,0x13]
sh.xor.t %d1, %d15, 0, %d1, 7

# CHECK-INST: sh.xor.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x60,0x1c]
sh.xor.t %d1, %d15, 0, %d1, 24

# CHECK-INST: sh.xor.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xe0,0x1f]
sh.xor.t %d1, %d15, 0, %d1, 31

# CHECK-INST: sh.xor.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x60,0x10]
sh.xor.t %d1, %d15, 0, %d14, 0

# CHECK-INST: sh.xor.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xe0,0x13]
sh.xor.t %d1, %d15, 0, %d14, 7

# CHECK-INST: sh.xor.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x60,0x1c]
sh.xor.t %d1, %d15, 0, %d14, 24

# CHECK-INST: sh.xor.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xe0,0x1f]
sh.xor.t %d1, %d15, 0, %d14, 31

# CHECK-INST: sh.xor.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x60,0x10]
sh.xor.t %d1, %d15, 0, %d15, 0

# CHECK-INST: sh.xor.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xe0,0x13]
sh.xor.t %d1, %d15, 0, %d15, 7

# CHECK-INST: sh.xor.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x60,0x1c]
sh.xor.t %d1, %d15, 0, %d15, 24

# CHECK-INST: sh.xor.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xe0,0x1f]
sh.xor.t %d1, %d15, 0, %d15, 31

# CHECK-INST: sh.xor.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x67,0x10]
sh.xor.t %d1, %d15, 7, %d0, 0

# CHECK-INST: sh.xor.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xe7,0x13]
sh.xor.t %d1, %d15, 7, %d0, 7

# CHECK-INST: sh.xor.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x67,0x1c]
sh.xor.t %d1, %d15, 7, %d0, 24

# CHECK-INST: sh.xor.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xe7,0x1f]
sh.xor.t %d1, %d15, 7, %d0, 31

# CHECK-INST: sh.xor.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x67,0x10]
sh.xor.t %d1, %d15, 7, %d1, 0

# CHECK-INST: sh.xor.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xe7,0x13]
sh.xor.t %d1, %d15, 7, %d1, 7

# CHECK-INST: sh.xor.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x67,0x1c]
sh.xor.t %d1, %d15, 7, %d1, 24

# CHECK-INST: sh.xor.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xe7,0x1f]
sh.xor.t %d1, %d15, 7, %d1, 31

# CHECK-INST: sh.xor.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x67,0x10]
sh.xor.t %d1, %d15, 7, %d14, 0

# CHECK-INST: sh.xor.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xe7,0x13]
sh.xor.t %d1, %d15, 7, %d14, 7

# CHECK-INST: sh.xor.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x67,0x1c]
sh.xor.t %d1, %d15, 7, %d14, 24

# CHECK-INST: sh.xor.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xe7,0x1f]
sh.xor.t %d1, %d15, 7, %d14, 31

# CHECK-INST: sh.xor.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x67,0x10]
sh.xor.t %d1, %d15, 7, %d15, 0

# CHECK-INST: sh.xor.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xe7,0x13]
sh.xor.t %d1, %d15, 7, %d15, 7

# CHECK-INST: sh.xor.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x67,0x1c]
sh.xor.t %d1, %d15, 7, %d15, 24

# CHECK-INST: sh.xor.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xe7,0x1f]
sh.xor.t %d1, %d15, 7, %d15, 31

# CHECK-INST: sh.xor.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x78,0x10]
sh.xor.t %d1, %d15, 24, %d0, 0

# CHECK-INST: sh.xor.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xf8,0x13]
sh.xor.t %d1, %d15, 24, %d0, 7

# CHECK-INST: sh.xor.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x78,0x1c]
sh.xor.t %d1, %d15, 24, %d0, 24

# CHECK-INST: sh.xor.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xf8,0x1f]
sh.xor.t %d1, %d15, 24, %d0, 31

# CHECK-INST: sh.xor.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x78,0x10]
sh.xor.t %d1, %d15, 24, %d1, 0

# CHECK-INST: sh.xor.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xf8,0x13]
sh.xor.t %d1, %d15, 24, %d1, 7

# CHECK-INST: sh.xor.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x78,0x1c]
sh.xor.t %d1, %d15, 24, %d1, 24

# CHECK-INST: sh.xor.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xf8,0x1f]
sh.xor.t %d1, %d15, 24, %d1, 31

# CHECK-INST: sh.xor.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x78,0x10]
sh.xor.t %d1, %d15, 24, %d14, 0

# CHECK-INST: sh.xor.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xf8,0x13]
sh.xor.t %d1, %d15, 24, %d14, 7

# CHECK-INST: sh.xor.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x78,0x1c]
sh.xor.t %d1, %d15, 24, %d14, 24

# CHECK-INST: sh.xor.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xf8,0x1f]
sh.xor.t %d1, %d15, 24, %d14, 31

# CHECK-INST: sh.xor.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x78,0x10]
sh.xor.t %d1, %d15, 24, %d15, 0

# CHECK-INST: sh.xor.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xf8,0x13]
sh.xor.t %d1, %d15, 24, %d15, 7

# CHECK-INST: sh.xor.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x78,0x1c]
sh.xor.t %d1, %d15, 24, %d15, 24

# CHECK-INST: sh.xor.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xf8,0x1f]
sh.xor.t %d1, %d15, 24, %d15, 31

# CHECK-INST: sh.xor.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x7f,0x10]
sh.xor.t %d1, %d15, 31, %d0, 0

# CHECK-INST: sh.xor.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xff,0x13]
sh.xor.t %d1, %d15, 31, %d0, 7

# CHECK-INST: sh.xor.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x7f,0x1c]
sh.xor.t %d1, %d15, 31, %d0, 24

# CHECK-INST: sh.xor.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xff,0x1f]
sh.xor.t %d1, %d15, 31, %d0, 31

# CHECK-INST: sh.xor.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x7f,0x10]
sh.xor.t %d1, %d15, 31, %d1, 0

# CHECK-INST: sh.xor.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xff,0x13]
sh.xor.t %d1, %d15, 31, %d1, 7

# CHECK-INST: sh.xor.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x7f,0x1c]
sh.xor.t %d1, %d15, 31, %d1, 24

# CHECK-INST: sh.xor.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xff,0x1f]
sh.xor.t %d1, %d15, 31, %d1, 31

# CHECK-INST: sh.xor.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x7f,0x10]
sh.xor.t %d1, %d15, 31, %d14, 0

# CHECK-INST: sh.xor.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xff,0x13]
sh.xor.t %d1, %d15, 31, %d14, 7

# CHECK-INST: sh.xor.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x7f,0x1c]
sh.xor.t %d1, %d15, 31, %d14, 24

# CHECK-INST: sh.xor.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xff,0x1f]
sh.xor.t %d1, %d15, 31, %d14, 31

# CHECK-INST: sh.xor.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x7f,0x10]
sh.xor.t %d1, %d15, 31, %d15, 0

# CHECK-INST: sh.xor.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xff,0x13]
sh.xor.t %d1, %d15, 31, %d15, 7

# CHECK-INST: sh.xor.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x7f,0x1c]
sh.xor.t %d1, %d15, 31, %d15, 24

# CHECK-INST: sh.xor.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xff,0x1f]
sh.xor.t %d1, %d15, 31, %d15, 31

# CHECK-INST: sh.xor.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x60,0xe0]
sh.xor.t %d14, %d0, 0, %d0, 0

# CHECK-INST: sh.xor.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xe0,0xe3]
sh.xor.t %d14, %d0, 0, %d0, 7

# CHECK-INST: sh.xor.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x60,0xec]
sh.xor.t %d14, %d0, 0, %d0, 24

# CHECK-INST: sh.xor.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xe0,0xef]
sh.xor.t %d14, %d0, 0, %d0, 31

# CHECK-INST: sh.xor.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x60,0xe0]
sh.xor.t %d14, %d0, 0, %d1, 0

# CHECK-INST: sh.xor.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xe0,0xe3]
sh.xor.t %d14, %d0, 0, %d1, 7

# CHECK-INST: sh.xor.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x60,0xec]
sh.xor.t %d14, %d0, 0, %d1, 24

# CHECK-INST: sh.xor.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xe0,0xef]
sh.xor.t %d14, %d0, 0, %d1, 31

# CHECK-INST: sh.xor.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x60,0xe0]
sh.xor.t %d14, %d0, 0, %d14, 0

# CHECK-INST: sh.xor.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xe0,0xe3]
sh.xor.t %d14, %d0, 0, %d14, 7

# CHECK-INST: sh.xor.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x60,0xec]
sh.xor.t %d14, %d0, 0, %d14, 24

# CHECK-INST: sh.xor.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xe0,0xef]
sh.xor.t %d14, %d0, 0, %d14, 31

# CHECK-INST: sh.xor.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x60,0xe0]
sh.xor.t %d14, %d0, 0, %d15, 0

# CHECK-INST: sh.xor.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xe0,0xe3]
sh.xor.t %d14, %d0, 0, %d15, 7

# CHECK-INST: sh.xor.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x60,0xec]
sh.xor.t %d14, %d0, 0, %d15, 24

# CHECK-INST: sh.xor.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xe0,0xef]
sh.xor.t %d14, %d0, 0, %d15, 31

# CHECK-INST: sh.xor.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x67,0xe0]
sh.xor.t %d14, %d0, 7, %d0, 0

# CHECK-INST: sh.xor.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xe7,0xe3]
sh.xor.t %d14, %d0, 7, %d0, 7

# CHECK-INST: sh.xor.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x67,0xec]
sh.xor.t %d14, %d0, 7, %d0, 24

# CHECK-INST: sh.xor.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xe7,0xef]
sh.xor.t %d14, %d0, 7, %d0, 31

# CHECK-INST: sh.xor.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x67,0xe0]
sh.xor.t %d14, %d0, 7, %d1, 0

# CHECK-INST: sh.xor.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xe7,0xe3]
sh.xor.t %d14, %d0, 7, %d1, 7

# CHECK-INST: sh.xor.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x67,0xec]
sh.xor.t %d14, %d0, 7, %d1, 24

# CHECK-INST: sh.xor.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xe7,0xef]
sh.xor.t %d14, %d0, 7, %d1, 31

# CHECK-INST: sh.xor.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x67,0xe0]
sh.xor.t %d14, %d0, 7, %d14, 0

# CHECK-INST: sh.xor.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xe7,0xe3]
sh.xor.t %d14, %d0, 7, %d14, 7

# CHECK-INST: sh.xor.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x67,0xec]
sh.xor.t %d14, %d0, 7, %d14, 24

# CHECK-INST: sh.xor.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xe7,0xef]
sh.xor.t %d14, %d0, 7, %d14, 31

# CHECK-INST: sh.xor.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x67,0xe0]
sh.xor.t %d14, %d0, 7, %d15, 0

# CHECK-INST: sh.xor.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xe7,0xe3]
sh.xor.t %d14, %d0, 7, %d15, 7

# CHECK-INST: sh.xor.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x67,0xec]
sh.xor.t %d14, %d0, 7, %d15, 24

# CHECK-INST: sh.xor.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xe7,0xef]
sh.xor.t %d14, %d0, 7, %d15, 31

# CHECK-INST: sh.xor.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x78,0xe0]
sh.xor.t %d14, %d0, 24, %d0, 0

# CHECK-INST: sh.xor.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xf8,0xe3]
sh.xor.t %d14, %d0, 24, %d0, 7

# CHECK-INST: sh.xor.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x78,0xec]
sh.xor.t %d14, %d0, 24, %d0, 24

# CHECK-INST: sh.xor.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xf8,0xef]
sh.xor.t %d14, %d0, 24, %d0, 31

# CHECK-INST: sh.xor.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x78,0xe0]
sh.xor.t %d14, %d0, 24, %d1, 0

# CHECK-INST: sh.xor.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xf8,0xe3]
sh.xor.t %d14, %d0, 24, %d1, 7

# CHECK-INST: sh.xor.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x78,0xec]
sh.xor.t %d14, %d0, 24, %d1, 24

# CHECK-INST: sh.xor.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xf8,0xef]
sh.xor.t %d14, %d0, 24, %d1, 31

# CHECK-INST: sh.xor.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x78,0xe0]
sh.xor.t %d14, %d0, 24, %d14, 0

# CHECK-INST: sh.xor.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xf8,0xe3]
sh.xor.t %d14, %d0, 24, %d14, 7

# CHECK-INST: sh.xor.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x78,0xec]
sh.xor.t %d14, %d0, 24, %d14, 24

# CHECK-INST: sh.xor.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xf8,0xef]
sh.xor.t %d14, %d0, 24, %d14, 31

# CHECK-INST: sh.xor.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x78,0xe0]
sh.xor.t %d14, %d0, 24, %d15, 0

# CHECK-INST: sh.xor.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xf8,0xe3]
sh.xor.t %d14, %d0, 24, %d15, 7

# CHECK-INST: sh.xor.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x78,0xec]
sh.xor.t %d14, %d0, 24, %d15, 24

# CHECK-INST: sh.xor.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xf8,0xef]
sh.xor.t %d14, %d0, 24, %d15, 31

# CHECK-INST: sh.xor.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x7f,0xe0]
sh.xor.t %d14, %d0, 31, %d0, 0

# CHECK-INST: sh.xor.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xff,0xe3]
sh.xor.t %d14, %d0, 31, %d0, 7

# CHECK-INST: sh.xor.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x7f,0xec]
sh.xor.t %d14, %d0, 31, %d0, 24

# CHECK-INST: sh.xor.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xff,0xef]
sh.xor.t %d14, %d0, 31, %d0, 31

# CHECK-INST: sh.xor.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x7f,0xe0]
sh.xor.t %d14, %d0, 31, %d1, 0

# CHECK-INST: sh.xor.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xff,0xe3]
sh.xor.t %d14, %d0, 31, %d1, 7

# CHECK-INST: sh.xor.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x7f,0xec]
sh.xor.t %d14, %d0, 31, %d1, 24

# CHECK-INST: sh.xor.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xff,0xef]
sh.xor.t %d14, %d0, 31, %d1, 31

# CHECK-INST: sh.xor.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x7f,0xe0]
sh.xor.t %d14, %d0, 31, %d14, 0

# CHECK-INST: sh.xor.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xff,0xe3]
sh.xor.t %d14, %d0, 31, %d14, 7

# CHECK-INST: sh.xor.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x7f,0xec]
sh.xor.t %d14, %d0, 31, %d14, 24

# CHECK-INST: sh.xor.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xff,0xef]
sh.xor.t %d14, %d0, 31, %d14, 31

# CHECK-INST: sh.xor.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x7f,0xe0]
sh.xor.t %d14, %d0, 31, %d15, 0

# CHECK-INST: sh.xor.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xff,0xe3]
sh.xor.t %d14, %d0, 31, %d15, 7

# CHECK-INST: sh.xor.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x7f,0xec]
sh.xor.t %d14, %d0, 31, %d15, 24

# CHECK-INST: sh.xor.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xff,0xef]
sh.xor.t %d14, %d0, 31, %d15, 31

# CHECK-INST: sh.xor.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x60,0xe0]
sh.xor.t %d14, %d1, 0, %d0, 0

# CHECK-INST: sh.xor.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xe0,0xe3]
sh.xor.t %d14, %d1, 0, %d0, 7

# CHECK-INST: sh.xor.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x60,0xec]
sh.xor.t %d14, %d1, 0, %d0, 24

# CHECK-INST: sh.xor.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xe0,0xef]
sh.xor.t %d14, %d1, 0, %d0, 31

# CHECK-INST: sh.xor.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x60,0xe0]
sh.xor.t %d14, %d1, 0, %d1, 0

# CHECK-INST: sh.xor.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xe0,0xe3]
sh.xor.t %d14, %d1, 0, %d1, 7

# CHECK-INST: sh.xor.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x60,0xec]
sh.xor.t %d14, %d1, 0, %d1, 24

# CHECK-INST: sh.xor.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xe0,0xef]
sh.xor.t %d14, %d1, 0, %d1, 31

# CHECK-INST: sh.xor.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x60,0xe0]
sh.xor.t %d14, %d1, 0, %d14, 0

# CHECK-INST: sh.xor.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xe0,0xe3]
sh.xor.t %d14, %d1, 0, %d14, 7

# CHECK-INST: sh.xor.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x60,0xec]
sh.xor.t %d14, %d1, 0, %d14, 24

# CHECK-INST: sh.xor.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xe0,0xef]
sh.xor.t %d14, %d1, 0, %d14, 31

# CHECK-INST: sh.xor.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x60,0xe0]
sh.xor.t %d14, %d1, 0, %d15, 0

# CHECK-INST: sh.xor.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xe0,0xe3]
sh.xor.t %d14, %d1, 0, %d15, 7

# CHECK-INST: sh.xor.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x60,0xec]
sh.xor.t %d14, %d1, 0, %d15, 24

# CHECK-INST: sh.xor.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xe0,0xef]
sh.xor.t %d14, %d1, 0, %d15, 31

# CHECK-INST: sh.xor.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x67,0xe0]
sh.xor.t %d14, %d1, 7, %d0, 0

# CHECK-INST: sh.xor.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xe7,0xe3]
sh.xor.t %d14, %d1, 7, %d0, 7

# CHECK-INST: sh.xor.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x67,0xec]
sh.xor.t %d14, %d1, 7, %d0, 24

# CHECK-INST: sh.xor.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xe7,0xef]
sh.xor.t %d14, %d1, 7, %d0, 31

# CHECK-INST: sh.xor.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x67,0xe0]
sh.xor.t %d14, %d1, 7, %d1, 0

# CHECK-INST: sh.xor.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xe7,0xe3]
sh.xor.t %d14, %d1, 7, %d1, 7

# CHECK-INST: sh.xor.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x67,0xec]
sh.xor.t %d14, %d1, 7, %d1, 24

# CHECK-INST: sh.xor.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xe7,0xef]
sh.xor.t %d14, %d1, 7, %d1, 31

# CHECK-INST: sh.xor.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x67,0xe0]
sh.xor.t %d14, %d1, 7, %d14, 0

# CHECK-INST: sh.xor.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xe7,0xe3]
sh.xor.t %d14, %d1, 7, %d14, 7

# CHECK-INST: sh.xor.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x67,0xec]
sh.xor.t %d14, %d1, 7, %d14, 24

# CHECK-INST: sh.xor.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xe7,0xef]
sh.xor.t %d14, %d1, 7, %d14, 31

# CHECK-INST: sh.xor.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x67,0xe0]
sh.xor.t %d14, %d1, 7, %d15, 0

# CHECK-INST: sh.xor.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xe7,0xe3]
sh.xor.t %d14, %d1, 7, %d15, 7

# CHECK-INST: sh.xor.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x67,0xec]
sh.xor.t %d14, %d1, 7, %d15, 24

# CHECK-INST: sh.xor.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xe7,0xef]
sh.xor.t %d14, %d1, 7, %d15, 31

# CHECK-INST: sh.xor.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x78,0xe0]
sh.xor.t %d14, %d1, 24, %d0, 0

# CHECK-INST: sh.xor.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xf8,0xe3]
sh.xor.t %d14, %d1, 24, %d0, 7

# CHECK-INST: sh.xor.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x78,0xec]
sh.xor.t %d14, %d1, 24, %d0, 24

# CHECK-INST: sh.xor.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xf8,0xef]
sh.xor.t %d14, %d1, 24, %d0, 31

# CHECK-INST: sh.xor.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x78,0xe0]
sh.xor.t %d14, %d1, 24, %d1, 0

# CHECK-INST: sh.xor.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xf8,0xe3]
sh.xor.t %d14, %d1, 24, %d1, 7

# CHECK-INST: sh.xor.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x78,0xec]
sh.xor.t %d14, %d1, 24, %d1, 24

# CHECK-INST: sh.xor.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xf8,0xef]
sh.xor.t %d14, %d1, 24, %d1, 31

# CHECK-INST: sh.xor.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x78,0xe0]
sh.xor.t %d14, %d1, 24, %d14, 0

# CHECK-INST: sh.xor.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xf8,0xe3]
sh.xor.t %d14, %d1, 24, %d14, 7

# CHECK-INST: sh.xor.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x78,0xec]
sh.xor.t %d14, %d1, 24, %d14, 24

# CHECK-INST: sh.xor.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xf8,0xef]
sh.xor.t %d14, %d1, 24, %d14, 31

# CHECK-INST: sh.xor.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x78,0xe0]
sh.xor.t %d14, %d1, 24, %d15, 0

# CHECK-INST: sh.xor.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xf8,0xe3]
sh.xor.t %d14, %d1, 24, %d15, 7

# CHECK-INST: sh.xor.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x78,0xec]
sh.xor.t %d14, %d1, 24, %d15, 24

# CHECK-INST: sh.xor.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xf8,0xef]
sh.xor.t %d14, %d1, 24, %d15, 31

# CHECK-INST: sh.xor.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x7f,0xe0]
sh.xor.t %d14, %d1, 31, %d0, 0

# CHECK-INST: sh.xor.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xff,0xe3]
sh.xor.t %d14, %d1, 31, %d0, 7

# CHECK-INST: sh.xor.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x7f,0xec]
sh.xor.t %d14, %d1, 31, %d0, 24

# CHECK-INST: sh.xor.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xff,0xef]
sh.xor.t %d14, %d1, 31, %d0, 31

# CHECK-INST: sh.xor.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x7f,0xe0]
sh.xor.t %d14, %d1, 31, %d1, 0

# CHECK-INST: sh.xor.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xff,0xe3]
sh.xor.t %d14, %d1, 31, %d1, 7

# CHECK-INST: sh.xor.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x7f,0xec]
sh.xor.t %d14, %d1, 31, %d1, 24

# CHECK-INST: sh.xor.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xff,0xef]
sh.xor.t %d14, %d1, 31, %d1, 31

# CHECK-INST: sh.xor.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x7f,0xe0]
sh.xor.t %d14, %d1, 31, %d14, 0

# CHECK-INST: sh.xor.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xff,0xe3]
sh.xor.t %d14, %d1, 31, %d14, 7

# CHECK-INST: sh.xor.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x7f,0xec]
sh.xor.t %d14, %d1, 31, %d14, 24

# CHECK-INST: sh.xor.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xff,0xef]
sh.xor.t %d14, %d1, 31, %d14, 31

# CHECK-INST: sh.xor.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x7f,0xe0]
sh.xor.t %d14, %d1, 31, %d15, 0

# CHECK-INST: sh.xor.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xff,0xe3]
sh.xor.t %d14, %d1, 31, %d15, 7

# CHECK-INST: sh.xor.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x7f,0xec]
sh.xor.t %d14, %d1, 31, %d15, 24

# CHECK-INST: sh.xor.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xff,0xef]
sh.xor.t %d14, %d1, 31, %d15, 31

# CHECK-INST: sh.xor.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x60,0xe0]
sh.xor.t %d14, %d14, 0, %d0, 0

# CHECK-INST: sh.xor.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xe0,0xe3]
sh.xor.t %d14, %d14, 0, %d0, 7

# CHECK-INST: sh.xor.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x60,0xec]
sh.xor.t %d14, %d14, 0, %d0, 24

# CHECK-INST: sh.xor.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xe0,0xef]
sh.xor.t %d14, %d14, 0, %d0, 31

# CHECK-INST: sh.xor.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x60,0xe0]
sh.xor.t %d14, %d14, 0, %d1, 0

# CHECK-INST: sh.xor.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xe0,0xe3]
sh.xor.t %d14, %d14, 0, %d1, 7

# CHECK-INST: sh.xor.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x60,0xec]
sh.xor.t %d14, %d14, 0, %d1, 24

# CHECK-INST: sh.xor.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xe0,0xef]
sh.xor.t %d14, %d14, 0, %d1, 31

# CHECK-INST: sh.xor.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x60,0xe0]
sh.xor.t %d14, %d14, 0, %d14, 0

# CHECK-INST: sh.xor.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xe0,0xe3]
sh.xor.t %d14, %d14, 0, %d14, 7

# CHECK-INST: sh.xor.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x60,0xec]
sh.xor.t %d14, %d14, 0, %d14, 24

# CHECK-INST: sh.xor.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xe0,0xef]
sh.xor.t %d14, %d14, 0, %d14, 31

# CHECK-INST: sh.xor.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x60,0xe0]
sh.xor.t %d14, %d14, 0, %d15, 0

# CHECK-INST: sh.xor.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xe0,0xe3]
sh.xor.t %d14, %d14, 0, %d15, 7

# CHECK-INST: sh.xor.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x60,0xec]
sh.xor.t %d14, %d14, 0, %d15, 24

# CHECK-INST: sh.xor.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xe0,0xef]
sh.xor.t %d14, %d14, 0, %d15, 31

# CHECK-INST: sh.xor.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x67,0xe0]
sh.xor.t %d14, %d14, 7, %d0, 0

# CHECK-INST: sh.xor.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xe7,0xe3]
sh.xor.t %d14, %d14, 7, %d0, 7

# CHECK-INST: sh.xor.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x67,0xec]
sh.xor.t %d14, %d14, 7, %d0, 24

# CHECK-INST: sh.xor.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xe7,0xef]
sh.xor.t %d14, %d14, 7, %d0, 31

# CHECK-INST: sh.xor.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x67,0xe0]
sh.xor.t %d14, %d14, 7, %d1, 0

# CHECK-INST: sh.xor.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xe7,0xe3]
sh.xor.t %d14, %d14, 7, %d1, 7

# CHECK-INST: sh.xor.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x67,0xec]
sh.xor.t %d14, %d14, 7, %d1, 24

# CHECK-INST: sh.xor.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xe7,0xef]
sh.xor.t %d14, %d14, 7, %d1, 31

# CHECK-INST: sh.xor.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x67,0xe0]
sh.xor.t %d14, %d14, 7, %d14, 0

# CHECK-INST: sh.xor.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xe7,0xe3]
sh.xor.t %d14, %d14, 7, %d14, 7

# CHECK-INST: sh.xor.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x67,0xec]
sh.xor.t %d14, %d14, 7, %d14, 24

# CHECK-INST: sh.xor.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xe7,0xef]
sh.xor.t %d14, %d14, 7, %d14, 31

# CHECK-INST: sh.xor.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x67,0xe0]
sh.xor.t %d14, %d14, 7, %d15, 0

# CHECK-INST: sh.xor.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xe7,0xe3]
sh.xor.t %d14, %d14, 7, %d15, 7

# CHECK-INST: sh.xor.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x67,0xec]
sh.xor.t %d14, %d14, 7, %d15, 24

# CHECK-INST: sh.xor.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xe7,0xef]
sh.xor.t %d14, %d14, 7, %d15, 31

# CHECK-INST: sh.xor.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x78,0xe0]
sh.xor.t %d14, %d14, 24, %d0, 0

# CHECK-INST: sh.xor.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xf8,0xe3]
sh.xor.t %d14, %d14, 24, %d0, 7

# CHECK-INST: sh.xor.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x78,0xec]
sh.xor.t %d14, %d14, 24, %d0, 24

# CHECK-INST: sh.xor.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xf8,0xef]
sh.xor.t %d14, %d14, 24, %d0, 31

# CHECK-INST: sh.xor.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x78,0xe0]
sh.xor.t %d14, %d14, 24, %d1, 0

# CHECK-INST: sh.xor.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xf8,0xe3]
sh.xor.t %d14, %d14, 24, %d1, 7

# CHECK-INST: sh.xor.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x78,0xec]
sh.xor.t %d14, %d14, 24, %d1, 24

# CHECK-INST: sh.xor.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xf8,0xef]
sh.xor.t %d14, %d14, 24, %d1, 31

# CHECK-INST: sh.xor.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x78,0xe0]
sh.xor.t %d14, %d14, 24, %d14, 0

# CHECK-INST: sh.xor.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xf8,0xe3]
sh.xor.t %d14, %d14, 24, %d14, 7

# CHECK-INST: sh.xor.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x78,0xec]
sh.xor.t %d14, %d14, 24, %d14, 24

# CHECK-INST: sh.xor.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xf8,0xef]
sh.xor.t %d14, %d14, 24, %d14, 31

# CHECK-INST: sh.xor.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x78,0xe0]
sh.xor.t %d14, %d14, 24, %d15, 0

# CHECK-INST: sh.xor.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xf8,0xe3]
sh.xor.t %d14, %d14, 24, %d15, 7

# CHECK-INST: sh.xor.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x78,0xec]
sh.xor.t %d14, %d14, 24, %d15, 24

# CHECK-INST: sh.xor.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xf8,0xef]
sh.xor.t %d14, %d14, 24, %d15, 31

# CHECK-INST: sh.xor.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x7f,0xe0]
sh.xor.t %d14, %d14, 31, %d0, 0

# CHECK-INST: sh.xor.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xff,0xe3]
sh.xor.t %d14, %d14, 31, %d0, 7

# CHECK-INST: sh.xor.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x7f,0xec]
sh.xor.t %d14, %d14, 31, %d0, 24

# CHECK-INST: sh.xor.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xff,0xef]
sh.xor.t %d14, %d14, 31, %d0, 31

# CHECK-INST: sh.xor.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x7f,0xe0]
sh.xor.t %d14, %d14, 31, %d1, 0

# CHECK-INST: sh.xor.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xff,0xe3]
sh.xor.t %d14, %d14, 31, %d1, 7

# CHECK-INST: sh.xor.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x7f,0xec]
sh.xor.t %d14, %d14, 31, %d1, 24

# CHECK-INST: sh.xor.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xff,0xef]
sh.xor.t %d14, %d14, 31, %d1, 31

# CHECK-INST: sh.xor.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x7f,0xe0]
sh.xor.t %d14, %d14, 31, %d14, 0

# CHECK-INST: sh.xor.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xff,0xe3]
sh.xor.t %d14, %d14, 31, %d14, 7

# CHECK-INST: sh.xor.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x7f,0xec]
sh.xor.t %d14, %d14, 31, %d14, 24

# CHECK-INST: sh.xor.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xff,0xef]
sh.xor.t %d14, %d14, 31, %d14, 31

# CHECK-INST: sh.xor.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x7f,0xe0]
sh.xor.t %d14, %d14, 31, %d15, 0

# CHECK-INST: sh.xor.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xff,0xe3]
sh.xor.t %d14, %d14, 31, %d15, 7

# CHECK-INST: sh.xor.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x7f,0xec]
sh.xor.t %d14, %d14, 31, %d15, 24

# CHECK-INST: sh.xor.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xff,0xef]
sh.xor.t %d14, %d14, 31, %d15, 31

# CHECK-INST: sh.xor.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x60,0xe0]
sh.xor.t %d14, %d15, 0, %d0, 0

# CHECK-INST: sh.xor.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xe0,0xe3]
sh.xor.t %d14, %d15, 0, %d0, 7

# CHECK-INST: sh.xor.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x60,0xec]
sh.xor.t %d14, %d15, 0, %d0, 24

# CHECK-INST: sh.xor.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xe0,0xef]
sh.xor.t %d14, %d15, 0, %d0, 31

# CHECK-INST: sh.xor.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x60,0xe0]
sh.xor.t %d14, %d15, 0, %d1, 0

# CHECK-INST: sh.xor.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xe0,0xe3]
sh.xor.t %d14, %d15, 0, %d1, 7

# CHECK-INST: sh.xor.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x60,0xec]
sh.xor.t %d14, %d15, 0, %d1, 24

# CHECK-INST: sh.xor.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xe0,0xef]
sh.xor.t %d14, %d15, 0, %d1, 31

# CHECK-INST: sh.xor.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x60,0xe0]
sh.xor.t %d14, %d15, 0, %d14, 0

# CHECK-INST: sh.xor.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xe0,0xe3]
sh.xor.t %d14, %d15, 0, %d14, 7

# CHECK-INST: sh.xor.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x60,0xec]
sh.xor.t %d14, %d15, 0, %d14, 24

# CHECK-INST: sh.xor.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xe0,0xef]
sh.xor.t %d14, %d15, 0, %d14, 31

# CHECK-INST: sh.xor.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x60,0xe0]
sh.xor.t %d14, %d15, 0, %d15, 0

# CHECK-INST: sh.xor.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xe0,0xe3]
sh.xor.t %d14, %d15, 0, %d15, 7

# CHECK-INST: sh.xor.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x60,0xec]
sh.xor.t %d14, %d15, 0, %d15, 24

# CHECK-INST: sh.xor.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xe0,0xef]
sh.xor.t %d14, %d15, 0, %d15, 31

# CHECK-INST: sh.xor.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x67,0xe0]
sh.xor.t %d14, %d15, 7, %d0, 0

# CHECK-INST: sh.xor.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xe7,0xe3]
sh.xor.t %d14, %d15, 7, %d0, 7

# CHECK-INST: sh.xor.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x67,0xec]
sh.xor.t %d14, %d15, 7, %d0, 24

# CHECK-INST: sh.xor.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xe7,0xef]
sh.xor.t %d14, %d15, 7, %d0, 31

# CHECK-INST: sh.xor.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x67,0xe0]
sh.xor.t %d14, %d15, 7, %d1, 0

# CHECK-INST: sh.xor.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xe7,0xe3]
sh.xor.t %d14, %d15, 7, %d1, 7

# CHECK-INST: sh.xor.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x67,0xec]
sh.xor.t %d14, %d15, 7, %d1, 24

# CHECK-INST: sh.xor.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xe7,0xef]
sh.xor.t %d14, %d15, 7, %d1, 31

# CHECK-INST: sh.xor.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x67,0xe0]
sh.xor.t %d14, %d15, 7, %d14, 0

# CHECK-INST: sh.xor.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xe7,0xe3]
sh.xor.t %d14, %d15, 7, %d14, 7

# CHECK-INST: sh.xor.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x67,0xec]
sh.xor.t %d14, %d15, 7, %d14, 24

# CHECK-INST: sh.xor.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xe7,0xef]
sh.xor.t %d14, %d15, 7, %d14, 31

# CHECK-INST: sh.xor.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x67,0xe0]
sh.xor.t %d14, %d15, 7, %d15, 0

# CHECK-INST: sh.xor.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xe7,0xe3]
sh.xor.t %d14, %d15, 7, %d15, 7

# CHECK-INST: sh.xor.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x67,0xec]
sh.xor.t %d14, %d15, 7, %d15, 24

# CHECK-INST: sh.xor.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xe7,0xef]
sh.xor.t %d14, %d15, 7, %d15, 31

# CHECK-INST: sh.xor.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x78,0xe0]
sh.xor.t %d14, %d15, 24, %d0, 0

# CHECK-INST: sh.xor.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xf8,0xe3]
sh.xor.t %d14, %d15, 24, %d0, 7

# CHECK-INST: sh.xor.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x78,0xec]
sh.xor.t %d14, %d15, 24, %d0, 24

# CHECK-INST: sh.xor.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xf8,0xef]
sh.xor.t %d14, %d15, 24, %d0, 31

# CHECK-INST: sh.xor.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x78,0xe0]
sh.xor.t %d14, %d15, 24, %d1, 0

# CHECK-INST: sh.xor.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xf8,0xe3]
sh.xor.t %d14, %d15, 24, %d1, 7

# CHECK-INST: sh.xor.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x78,0xec]
sh.xor.t %d14, %d15, 24, %d1, 24

# CHECK-INST: sh.xor.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xf8,0xef]
sh.xor.t %d14, %d15, 24, %d1, 31

# CHECK-INST: sh.xor.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x78,0xe0]
sh.xor.t %d14, %d15, 24, %d14, 0

# CHECK-INST: sh.xor.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xf8,0xe3]
sh.xor.t %d14, %d15, 24, %d14, 7

# CHECK-INST: sh.xor.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x78,0xec]
sh.xor.t %d14, %d15, 24, %d14, 24

# CHECK-INST: sh.xor.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xf8,0xef]
sh.xor.t %d14, %d15, 24, %d14, 31

# CHECK-INST: sh.xor.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x78,0xe0]
sh.xor.t %d14, %d15, 24, %d15, 0

# CHECK-INST: sh.xor.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xf8,0xe3]
sh.xor.t %d14, %d15, 24, %d15, 7

# CHECK-INST: sh.xor.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x78,0xec]
sh.xor.t %d14, %d15, 24, %d15, 24

# CHECK-INST: sh.xor.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xf8,0xef]
sh.xor.t %d14, %d15, 24, %d15, 31

# CHECK-INST: sh.xor.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x7f,0xe0]
sh.xor.t %d14, %d15, 31, %d0, 0

# CHECK-INST: sh.xor.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xff,0xe3]
sh.xor.t %d14, %d15, 31, %d0, 7

# CHECK-INST: sh.xor.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x7f,0xec]
sh.xor.t %d14, %d15, 31, %d0, 24

# CHECK-INST: sh.xor.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xff,0xef]
sh.xor.t %d14, %d15, 31, %d0, 31

# CHECK-INST: sh.xor.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x7f,0xe0]
sh.xor.t %d14, %d15, 31, %d1, 0

# CHECK-INST: sh.xor.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xff,0xe3]
sh.xor.t %d14, %d15, 31, %d1, 7

# CHECK-INST: sh.xor.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x7f,0xec]
sh.xor.t %d14, %d15, 31, %d1, 24

# CHECK-INST: sh.xor.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xff,0xef]
sh.xor.t %d14, %d15, 31, %d1, 31

# CHECK-INST: sh.xor.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x7f,0xe0]
sh.xor.t %d14, %d15, 31, %d14, 0

# CHECK-INST: sh.xor.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xff,0xe3]
sh.xor.t %d14, %d15, 31, %d14, 7

# CHECK-INST: sh.xor.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x7f,0xec]
sh.xor.t %d14, %d15, 31, %d14, 24

# CHECK-INST: sh.xor.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xff,0xef]
sh.xor.t %d14, %d15, 31, %d14, 31

# CHECK-INST: sh.xor.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x7f,0xe0]
sh.xor.t %d14, %d15, 31, %d15, 0

# CHECK-INST: sh.xor.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xff,0xe3]
sh.xor.t %d14, %d15, 31, %d15, 7

# CHECK-INST: sh.xor.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x7f,0xec]
sh.xor.t %d14, %d15, 31, %d15, 24

# CHECK-INST: sh.xor.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xff,0xef]
sh.xor.t %d14, %d15, 31, %d15, 31

# CHECK-INST: sh.xor.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x60,0xf0]
sh.xor.t %d15, %d0, 0, %d0, 0

# CHECK-INST: sh.xor.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xe0,0xf3]
sh.xor.t %d15, %d0, 0, %d0, 7

# CHECK-INST: sh.xor.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x60,0xfc]
sh.xor.t %d15, %d0, 0, %d0, 24

# CHECK-INST: sh.xor.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xe0,0xff]
sh.xor.t %d15, %d0, 0, %d0, 31

# CHECK-INST: sh.xor.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x60,0xf0]
sh.xor.t %d15, %d0, 0, %d1, 0

# CHECK-INST: sh.xor.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xe0,0xf3]
sh.xor.t %d15, %d0, 0, %d1, 7

# CHECK-INST: sh.xor.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x60,0xfc]
sh.xor.t %d15, %d0, 0, %d1, 24

# CHECK-INST: sh.xor.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xe0,0xff]
sh.xor.t %d15, %d0, 0, %d1, 31

# CHECK-INST: sh.xor.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x60,0xf0]
sh.xor.t %d15, %d0, 0, %d14, 0

# CHECK-INST: sh.xor.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xe0,0xf3]
sh.xor.t %d15, %d0, 0, %d14, 7

# CHECK-INST: sh.xor.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x60,0xfc]
sh.xor.t %d15, %d0, 0, %d14, 24

# CHECK-INST: sh.xor.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xe0,0xff]
sh.xor.t %d15, %d0, 0, %d14, 31

# CHECK-INST: sh.xor.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x60,0xf0]
sh.xor.t %d15, %d0, 0, %d15, 0

# CHECK-INST: sh.xor.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xe0,0xf3]
sh.xor.t %d15, %d0, 0, %d15, 7

# CHECK-INST: sh.xor.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x60,0xfc]
sh.xor.t %d15, %d0, 0, %d15, 24

# CHECK-INST: sh.xor.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xe0,0xff]
sh.xor.t %d15, %d0, 0, %d15, 31

# CHECK-INST: sh.xor.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x67,0xf0]
sh.xor.t %d15, %d0, 7, %d0, 0

# CHECK-INST: sh.xor.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xe7,0xf3]
sh.xor.t %d15, %d0, 7, %d0, 7

# CHECK-INST: sh.xor.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x67,0xfc]
sh.xor.t %d15, %d0, 7, %d0, 24

# CHECK-INST: sh.xor.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xe7,0xff]
sh.xor.t %d15, %d0, 7, %d0, 31

# CHECK-INST: sh.xor.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x67,0xf0]
sh.xor.t %d15, %d0, 7, %d1, 0

# CHECK-INST: sh.xor.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xe7,0xf3]
sh.xor.t %d15, %d0, 7, %d1, 7

# CHECK-INST: sh.xor.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x67,0xfc]
sh.xor.t %d15, %d0, 7, %d1, 24

# CHECK-INST: sh.xor.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xe7,0xff]
sh.xor.t %d15, %d0, 7, %d1, 31

# CHECK-INST: sh.xor.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x67,0xf0]
sh.xor.t %d15, %d0, 7, %d14, 0

# CHECK-INST: sh.xor.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xe7,0xf3]
sh.xor.t %d15, %d0, 7, %d14, 7

# CHECK-INST: sh.xor.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x67,0xfc]
sh.xor.t %d15, %d0, 7, %d14, 24

# CHECK-INST: sh.xor.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xe7,0xff]
sh.xor.t %d15, %d0, 7, %d14, 31

# CHECK-INST: sh.xor.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x67,0xf0]
sh.xor.t %d15, %d0, 7, %d15, 0

# CHECK-INST: sh.xor.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xe7,0xf3]
sh.xor.t %d15, %d0, 7, %d15, 7

# CHECK-INST: sh.xor.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x67,0xfc]
sh.xor.t %d15, %d0, 7, %d15, 24

# CHECK-INST: sh.xor.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xe7,0xff]
sh.xor.t %d15, %d0, 7, %d15, 31

# CHECK-INST: sh.xor.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x78,0xf0]
sh.xor.t %d15, %d0, 24, %d0, 0

# CHECK-INST: sh.xor.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xf8,0xf3]
sh.xor.t %d15, %d0, 24, %d0, 7

# CHECK-INST: sh.xor.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x78,0xfc]
sh.xor.t %d15, %d0, 24, %d0, 24

# CHECK-INST: sh.xor.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xf8,0xff]
sh.xor.t %d15, %d0, 24, %d0, 31

# CHECK-INST: sh.xor.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x78,0xf0]
sh.xor.t %d15, %d0, 24, %d1, 0

# CHECK-INST: sh.xor.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xf8,0xf3]
sh.xor.t %d15, %d0, 24, %d1, 7

# CHECK-INST: sh.xor.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x78,0xfc]
sh.xor.t %d15, %d0, 24, %d1, 24

# CHECK-INST: sh.xor.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xf8,0xff]
sh.xor.t %d15, %d0, 24, %d1, 31

# CHECK-INST: sh.xor.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x78,0xf0]
sh.xor.t %d15, %d0, 24, %d14, 0

# CHECK-INST: sh.xor.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xf8,0xf3]
sh.xor.t %d15, %d0, 24, %d14, 7

# CHECK-INST: sh.xor.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x78,0xfc]
sh.xor.t %d15, %d0, 24, %d14, 24

# CHECK-INST: sh.xor.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xf8,0xff]
sh.xor.t %d15, %d0, 24, %d14, 31

# CHECK-INST: sh.xor.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x78,0xf0]
sh.xor.t %d15, %d0, 24, %d15, 0

# CHECK-INST: sh.xor.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xf8,0xf3]
sh.xor.t %d15, %d0, 24, %d15, 7

# CHECK-INST: sh.xor.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x78,0xfc]
sh.xor.t %d15, %d0, 24, %d15, 24

# CHECK-INST: sh.xor.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xf8,0xff]
sh.xor.t %d15, %d0, 24, %d15, 31

# CHECK-INST: sh.xor.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0xa7,0x00,0x7f,0xf0]
sh.xor.t %d15, %d0, 31, %d0, 0

# CHECK-INST: sh.xor.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0xa7,0x00,0xff,0xf3]
sh.xor.t %d15, %d0, 31, %d0, 7

# CHECK-INST: sh.xor.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0xa7,0x00,0x7f,0xfc]
sh.xor.t %d15, %d0, 31, %d0, 24

# CHECK-INST: sh.xor.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0xa7,0x00,0xff,0xff]
sh.xor.t %d15, %d0, 31, %d0, 31

# CHECK-INST: sh.xor.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0xa7,0x10,0x7f,0xf0]
sh.xor.t %d15, %d0, 31, %d1, 0

# CHECK-INST: sh.xor.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0xa7,0x10,0xff,0xf3]
sh.xor.t %d15, %d0, 31, %d1, 7

# CHECK-INST: sh.xor.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0xa7,0x10,0x7f,0xfc]
sh.xor.t %d15, %d0, 31, %d1, 24

# CHECK-INST: sh.xor.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0xa7,0x10,0xff,0xff]
sh.xor.t %d15, %d0, 31, %d1, 31

# CHECK-INST: sh.xor.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe0,0x7f,0xf0]
sh.xor.t %d15, %d0, 31, %d14, 0

# CHECK-INST: sh.xor.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe0,0xff,0xf3]
sh.xor.t %d15, %d0, 31, %d14, 7

# CHECK-INST: sh.xor.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe0,0x7f,0xfc]
sh.xor.t %d15, %d0, 31, %d14, 24

# CHECK-INST: sh.xor.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe0,0xff,0xff]
sh.xor.t %d15, %d0, 31, %d14, 31

# CHECK-INST: sh.xor.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf0,0x7f,0xf0]
sh.xor.t %d15, %d0, 31, %d15, 0

# CHECK-INST: sh.xor.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf0,0xff,0xf3]
sh.xor.t %d15, %d0, 31, %d15, 7

# CHECK-INST: sh.xor.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf0,0x7f,0xfc]
sh.xor.t %d15, %d0, 31, %d15, 24

# CHECK-INST: sh.xor.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf0,0xff,0xff]
sh.xor.t %d15, %d0, 31, %d15, 31

# CHECK-INST: sh.xor.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x60,0xf0]
sh.xor.t %d15, %d1, 0, %d0, 0

# CHECK-INST: sh.xor.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xe0,0xf3]
sh.xor.t %d15, %d1, 0, %d0, 7

# CHECK-INST: sh.xor.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x60,0xfc]
sh.xor.t %d15, %d1, 0, %d0, 24

# CHECK-INST: sh.xor.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xe0,0xff]
sh.xor.t %d15, %d1, 0, %d0, 31

# CHECK-INST: sh.xor.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x60,0xf0]
sh.xor.t %d15, %d1, 0, %d1, 0

# CHECK-INST: sh.xor.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xe0,0xf3]
sh.xor.t %d15, %d1, 0, %d1, 7

# CHECK-INST: sh.xor.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x60,0xfc]
sh.xor.t %d15, %d1, 0, %d1, 24

# CHECK-INST: sh.xor.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xe0,0xff]
sh.xor.t %d15, %d1, 0, %d1, 31

# CHECK-INST: sh.xor.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x60,0xf0]
sh.xor.t %d15, %d1, 0, %d14, 0

# CHECK-INST: sh.xor.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xe0,0xf3]
sh.xor.t %d15, %d1, 0, %d14, 7

# CHECK-INST: sh.xor.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x60,0xfc]
sh.xor.t %d15, %d1, 0, %d14, 24

# CHECK-INST: sh.xor.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xe0,0xff]
sh.xor.t %d15, %d1, 0, %d14, 31

# CHECK-INST: sh.xor.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x60,0xf0]
sh.xor.t %d15, %d1, 0, %d15, 0

# CHECK-INST: sh.xor.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xe0,0xf3]
sh.xor.t %d15, %d1, 0, %d15, 7

# CHECK-INST: sh.xor.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x60,0xfc]
sh.xor.t %d15, %d1, 0, %d15, 24

# CHECK-INST: sh.xor.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xe0,0xff]
sh.xor.t %d15, %d1, 0, %d15, 31

# CHECK-INST: sh.xor.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x67,0xf0]
sh.xor.t %d15, %d1, 7, %d0, 0

# CHECK-INST: sh.xor.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xe7,0xf3]
sh.xor.t %d15, %d1, 7, %d0, 7

# CHECK-INST: sh.xor.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x67,0xfc]
sh.xor.t %d15, %d1, 7, %d0, 24

# CHECK-INST: sh.xor.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xe7,0xff]
sh.xor.t %d15, %d1, 7, %d0, 31

# CHECK-INST: sh.xor.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x67,0xf0]
sh.xor.t %d15, %d1, 7, %d1, 0

# CHECK-INST: sh.xor.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xe7,0xf3]
sh.xor.t %d15, %d1, 7, %d1, 7

# CHECK-INST: sh.xor.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x67,0xfc]
sh.xor.t %d15, %d1, 7, %d1, 24

# CHECK-INST: sh.xor.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xe7,0xff]
sh.xor.t %d15, %d1, 7, %d1, 31

# CHECK-INST: sh.xor.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x67,0xf0]
sh.xor.t %d15, %d1, 7, %d14, 0

# CHECK-INST: sh.xor.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xe7,0xf3]
sh.xor.t %d15, %d1, 7, %d14, 7

# CHECK-INST: sh.xor.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x67,0xfc]
sh.xor.t %d15, %d1, 7, %d14, 24

# CHECK-INST: sh.xor.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xe7,0xff]
sh.xor.t %d15, %d1, 7, %d14, 31

# CHECK-INST: sh.xor.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x67,0xf0]
sh.xor.t %d15, %d1, 7, %d15, 0

# CHECK-INST: sh.xor.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xe7,0xf3]
sh.xor.t %d15, %d1, 7, %d15, 7

# CHECK-INST: sh.xor.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x67,0xfc]
sh.xor.t %d15, %d1, 7, %d15, 24

# CHECK-INST: sh.xor.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xe7,0xff]
sh.xor.t %d15, %d1, 7, %d15, 31

# CHECK-INST: sh.xor.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x78,0xf0]
sh.xor.t %d15, %d1, 24, %d0, 0

# CHECK-INST: sh.xor.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xf8,0xf3]
sh.xor.t %d15, %d1, 24, %d0, 7

# CHECK-INST: sh.xor.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x78,0xfc]
sh.xor.t %d15, %d1, 24, %d0, 24

# CHECK-INST: sh.xor.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xf8,0xff]
sh.xor.t %d15, %d1, 24, %d0, 31

# CHECK-INST: sh.xor.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x78,0xf0]
sh.xor.t %d15, %d1, 24, %d1, 0

# CHECK-INST: sh.xor.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xf8,0xf3]
sh.xor.t %d15, %d1, 24, %d1, 7

# CHECK-INST: sh.xor.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x78,0xfc]
sh.xor.t %d15, %d1, 24, %d1, 24

# CHECK-INST: sh.xor.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xf8,0xff]
sh.xor.t %d15, %d1, 24, %d1, 31

# CHECK-INST: sh.xor.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x78,0xf0]
sh.xor.t %d15, %d1, 24, %d14, 0

# CHECK-INST: sh.xor.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xf8,0xf3]
sh.xor.t %d15, %d1, 24, %d14, 7

# CHECK-INST: sh.xor.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x78,0xfc]
sh.xor.t %d15, %d1, 24, %d14, 24

# CHECK-INST: sh.xor.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xf8,0xff]
sh.xor.t %d15, %d1, 24, %d14, 31

# CHECK-INST: sh.xor.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x78,0xf0]
sh.xor.t %d15, %d1, 24, %d15, 0

# CHECK-INST: sh.xor.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xf8,0xf3]
sh.xor.t %d15, %d1, 24, %d15, 7

# CHECK-INST: sh.xor.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x78,0xfc]
sh.xor.t %d15, %d1, 24, %d15, 24

# CHECK-INST: sh.xor.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xf8,0xff]
sh.xor.t %d15, %d1, 24, %d15, 31

# CHECK-INST: sh.xor.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0xa7,0x01,0x7f,0xf0]
sh.xor.t %d15, %d1, 31, %d0, 0

# CHECK-INST: sh.xor.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0xa7,0x01,0xff,0xf3]
sh.xor.t %d15, %d1, 31, %d0, 7

# CHECK-INST: sh.xor.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0xa7,0x01,0x7f,0xfc]
sh.xor.t %d15, %d1, 31, %d0, 24

# CHECK-INST: sh.xor.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0xa7,0x01,0xff,0xff]
sh.xor.t %d15, %d1, 31, %d0, 31

# CHECK-INST: sh.xor.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0xa7,0x11,0x7f,0xf0]
sh.xor.t %d15, %d1, 31, %d1, 0

# CHECK-INST: sh.xor.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0xa7,0x11,0xff,0xf3]
sh.xor.t %d15, %d1, 31, %d1, 7

# CHECK-INST: sh.xor.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0xa7,0x11,0x7f,0xfc]
sh.xor.t %d15, %d1, 31, %d1, 24

# CHECK-INST: sh.xor.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0xa7,0x11,0xff,0xff]
sh.xor.t %d15, %d1, 31, %d1, 31

# CHECK-INST: sh.xor.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0xa7,0xe1,0x7f,0xf0]
sh.xor.t %d15, %d1, 31, %d14, 0

# CHECK-INST: sh.xor.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0xa7,0xe1,0xff,0xf3]
sh.xor.t %d15, %d1, 31, %d14, 7

# CHECK-INST: sh.xor.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0xa7,0xe1,0x7f,0xfc]
sh.xor.t %d15, %d1, 31, %d14, 24

# CHECK-INST: sh.xor.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0xa7,0xe1,0xff,0xff]
sh.xor.t %d15, %d1, 31, %d14, 31

# CHECK-INST: sh.xor.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0xa7,0xf1,0x7f,0xf0]
sh.xor.t %d15, %d1, 31, %d15, 0

# CHECK-INST: sh.xor.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0xa7,0xf1,0xff,0xf3]
sh.xor.t %d15, %d1, 31, %d15, 7

# CHECK-INST: sh.xor.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0xa7,0xf1,0x7f,0xfc]
sh.xor.t %d15, %d1, 31, %d15, 24

# CHECK-INST: sh.xor.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0xa7,0xf1,0xff,0xff]
sh.xor.t %d15, %d1, 31, %d15, 31

# CHECK-INST: sh.xor.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x60,0xf0]
sh.xor.t %d15, %d14, 0, %d0, 0

# CHECK-INST: sh.xor.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xe0,0xf3]
sh.xor.t %d15, %d14, 0, %d0, 7

# CHECK-INST: sh.xor.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x60,0xfc]
sh.xor.t %d15, %d14, 0, %d0, 24

# CHECK-INST: sh.xor.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xe0,0xff]
sh.xor.t %d15, %d14, 0, %d0, 31

# CHECK-INST: sh.xor.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x60,0xf0]
sh.xor.t %d15, %d14, 0, %d1, 0

# CHECK-INST: sh.xor.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xe0,0xf3]
sh.xor.t %d15, %d14, 0, %d1, 7

# CHECK-INST: sh.xor.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x60,0xfc]
sh.xor.t %d15, %d14, 0, %d1, 24

# CHECK-INST: sh.xor.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xe0,0xff]
sh.xor.t %d15, %d14, 0, %d1, 31

# CHECK-INST: sh.xor.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x60,0xf0]
sh.xor.t %d15, %d14, 0, %d14, 0

# CHECK-INST: sh.xor.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xe0,0xf3]
sh.xor.t %d15, %d14, 0, %d14, 7

# CHECK-INST: sh.xor.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x60,0xfc]
sh.xor.t %d15, %d14, 0, %d14, 24

# CHECK-INST: sh.xor.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xe0,0xff]
sh.xor.t %d15, %d14, 0, %d14, 31

# CHECK-INST: sh.xor.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x60,0xf0]
sh.xor.t %d15, %d14, 0, %d15, 0

# CHECK-INST: sh.xor.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xe0,0xf3]
sh.xor.t %d15, %d14, 0, %d15, 7

# CHECK-INST: sh.xor.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x60,0xfc]
sh.xor.t %d15, %d14, 0, %d15, 24

# CHECK-INST: sh.xor.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xe0,0xff]
sh.xor.t %d15, %d14, 0, %d15, 31

# CHECK-INST: sh.xor.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x67,0xf0]
sh.xor.t %d15, %d14, 7, %d0, 0

# CHECK-INST: sh.xor.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xe7,0xf3]
sh.xor.t %d15, %d14, 7, %d0, 7

# CHECK-INST: sh.xor.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x67,0xfc]
sh.xor.t %d15, %d14, 7, %d0, 24

# CHECK-INST: sh.xor.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xe7,0xff]
sh.xor.t %d15, %d14, 7, %d0, 31

# CHECK-INST: sh.xor.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x67,0xf0]
sh.xor.t %d15, %d14, 7, %d1, 0

# CHECK-INST: sh.xor.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xe7,0xf3]
sh.xor.t %d15, %d14, 7, %d1, 7

# CHECK-INST: sh.xor.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x67,0xfc]
sh.xor.t %d15, %d14, 7, %d1, 24

# CHECK-INST: sh.xor.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xe7,0xff]
sh.xor.t %d15, %d14, 7, %d1, 31

# CHECK-INST: sh.xor.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x67,0xf0]
sh.xor.t %d15, %d14, 7, %d14, 0

# CHECK-INST: sh.xor.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xe7,0xf3]
sh.xor.t %d15, %d14, 7, %d14, 7

# CHECK-INST: sh.xor.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x67,0xfc]
sh.xor.t %d15, %d14, 7, %d14, 24

# CHECK-INST: sh.xor.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xe7,0xff]
sh.xor.t %d15, %d14, 7, %d14, 31

# CHECK-INST: sh.xor.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x67,0xf0]
sh.xor.t %d15, %d14, 7, %d15, 0

# CHECK-INST: sh.xor.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xe7,0xf3]
sh.xor.t %d15, %d14, 7, %d15, 7

# CHECK-INST: sh.xor.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x67,0xfc]
sh.xor.t %d15, %d14, 7, %d15, 24

# CHECK-INST: sh.xor.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xe7,0xff]
sh.xor.t %d15, %d14, 7, %d15, 31

# CHECK-INST: sh.xor.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x78,0xf0]
sh.xor.t %d15, %d14, 24, %d0, 0

# CHECK-INST: sh.xor.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xf8,0xf3]
sh.xor.t %d15, %d14, 24, %d0, 7

# CHECK-INST: sh.xor.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x78,0xfc]
sh.xor.t %d15, %d14, 24, %d0, 24

# CHECK-INST: sh.xor.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xf8,0xff]
sh.xor.t %d15, %d14, 24, %d0, 31

# CHECK-INST: sh.xor.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x78,0xf0]
sh.xor.t %d15, %d14, 24, %d1, 0

# CHECK-INST: sh.xor.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xf8,0xf3]
sh.xor.t %d15, %d14, 24, %d1, 7

# CHECK-INST: sh.xor.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x78,0xfc]
sh.xor.t %d15, %d14, 24, %d1, 24

# CHECK-INST: sh.xor.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xf8,0xff]
sh.xor.t %d15, %d14, 24, %d1, 31

# CHECK-INST: sh.xor.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x78,0xf0]
sh.xor.t %d15, %d14, 24, %d14, 0

# CHECK-INST: sh.xor.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xf8,0xf3]
sh.xor.t %d15, %d14, 24, %d14, 7

# CHECK-INST: sh.xor.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x78,0xfc]
sh.xor.t %d15, %d14, 24, %d14, 24

# CHECK-INST: sh.xor.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xf8,0xff]
sh.xor.t %d15, %d14, 24, %d14, 31

# CHECK-INST: sh.xor.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x78,0xf0]
sh.xor.t %d15, %d14, 24, %d15, 0

# CHECK-INST: sh.xor.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xf8,0xf3]
sh.xor.t %d15, %d14, 24, %d15, 7

# CHECK-INST: sh.xor.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x78,0xfc]
sh.xor.t %d15, %d14, 24, %d15, 24

# CHECK-INST: sh.xor.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xf8,0xff]
sh.xor.t %d15, %d14, 24, %d15, 31

# CHECK-INST: sh.xor.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0e,0x7f,0xf0]
sh.xor.t %d15, %d14, 31, %d0, 0

# CHECK-INST: sh.xor.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0e,0xff,0xf3]
sh.xor.t %d15, %d14, 31, %d0, 7

# CHECK-INST: sh.xor.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0e,0x7f,0xfc]
sh.xor.t %d15, %d14, 31, %d0, 24

# CHECK-INST: sh.xor.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0e,0xff,0xff]
sh.xor.t %d15, %d14, 31, %d0, 31

# CHECK-INST: sh.xor.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1e,0x7f,0xf0]
sh.xor.t %d15, %d14, 31, %d1, 0

# CHECK-INST: sh.xor.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1e,0xff,0xf3]
sh.xor.t %d15, %d14, 31, %d1, 7

# CHECK-INST: sh.xor.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1e,0x7f,0xfc]
sh.xor.t %d15, %d14, 31, %d1, 24

# CHECK-INST: sh.xor.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1e,0xff,0xff]
sh.xor.t %d15, %d14, 31, %d1, 31

# CHECK-INST: sh.xor.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0xa7,0xee,0x7f,0xf0]
sh.xor.t %d15, %d14, 31, %d14, 0

# CHECK-INST: sh.xor.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0xa7,0xee,0xff,0xf3]
sh.xor.t %d15, %d14, 31, %d14, 7

# CHECK-INST: sh.xor.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0xa7,0xee,0x7f,0xfc]
sh.xor.t %d15, %d14, 31, %d14, 24

# CHECK-INST: sh.xor.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0xa7,0xee,0xff,0xff]
sh.xor.t %d15, %d14, 31, %d14, 31

# CHECK-INST: sh.xor.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0xa7,0xfe,0x7f,0xf0]
sh.xor.t %d15, %d14, 31, %d15, 0

# CHECK-INST: sh.xor.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0xa7,0xfe,0xff,0xf3]
sh.xor.t %d15, %d14, 31, %d15, 7

# CHECK-INST: sh.xor.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0xa7,0xfe,0x7f,0xfc]
sh.xor.t %d15, %d14, 31, %d15, 24

# CHECK-INST: sh.xor.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0xa7,0xfe,0xff,0xff]
sh.xor.t %d15, %d14, 31, %d15, 31

# CHECK-INST: sh.xor.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x60,0xf0]
sh.xor.t %d15, %d15, 0, %d0, 0

# CHECK-INST: sh.xor.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xe0,0xf3]
sh.xor.t %d15, %d15, 0, %d0, 7

# CHECK-INST: sh.xor.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x60,0xfc]
sh.xor.t %d15, %d15, 0, %d0, 24

# CHECK-INST: sh.xor.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xe0,0xff]
sh.xor.t %d15, %d15, 0, %d0, 31

# CHECK-INST: sh.xor.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x60,0xf0]
sh.xor.t %d15, %d15, 0, %d1, 0

# CHECK-INST: sh.xor.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xe0,0xf3]
sh.xor.t %d15, %d15, 0, %d1, 7

# CHECK-INST: sh.xor.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x60,0xfc]
sh.xor.t %d15, %d15, 0, %d1, 24

# CHECK-INST: sh.xor.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xe0,0xff]
sh.xor.t %d15, %d15, 0, %d1, 31

# CHECK-INST: sh.xor.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x60,0xf0]
sh.xor.t %d15, %d15, 0, %d14, 0

# CHECK-INST: sh.xor.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xe0,0xf3]
sh.xor.t %d15, %d15, 0, %d14, 7

# CHECK-INST: sh.xor.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x60,0xfc]
sh.xor.t %d15, %d15, 0, %d14, 24

# CHECK-INST: sh.xor.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xe0,0xff]
sh.xor.t %d15, %d15, 0, %d14, 31

# CHECK-INST: sh.xor.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x60,0xf0]
sh.xor.t %d15, %d15, 0, %d15, 0

# CHECK-INST: sh.xor.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xe0,0xf3]
sh.xor.t %d15, %d15, 0, %d15, 7

# CHECK-INST: sh.xor.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x60,0xfc]
sh.xor.t %d15, %d15, 0, %d15, 24

# CHECK-INST: sh.xor.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xe0,0xff]
sh.xor.t %d15, %d15, 0, %d15, 31

# CHECK-INST: sh.xor.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x67,0xf0]
sh.xor.t %d15, %d15, 7, %d0, 0

# CHECK-INST: sh.xor.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xe7,0xf3]
sh.xor.t %d15, %d15, 7, %d0, 7

# CHECK-INST: sh.xor.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x67,0xfc]
sh.xor.t %d15, %d15, 7, %d0, 24

# CHECK-INST: sh.xor.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xe7,0xff]
sh.xor.t %d15, %d15, 7, %d0, 31

# CHECK-INST: sh.xor.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x67,0xf0]
sh.xor.t %d15, %d15, 7, %d1, 0

# CHECK-INST: sh.xor.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xe7,0xf3]
sh.xor.t %d15, %d15, 7, %d1, 7

# CHECK-INST: sh.xor.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x67,0xfc]
sh.xor.t %d15, %d15, 7, %d1, 24

# CHECK-INST: sh.xor.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xe7,0xff]
sh.xor.t %d15, %d15, 7, %d1, 31

# CHECK-INST: sh.xor.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x67,0xf0]
sh.xor.t %d15, %d15, 7, %d14, 0

# CHECK-INST: sh.xor.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xe7,0xf3]
sh.xor.t %d15, %d15, 7, %d14, 7

# CHECK-INST: sh.xor.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x67,0xfc]
sh.xor.t %d15, %d15, 7, %d14, 24

# CHECK-INST: sh.xor.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xe7,0xff]
sh.xor.t %d15, %d15, 7, %d14, 31

# CHECK-INST: sh.xor.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x67,0xf0]
sh.xor.t %d15, %d15, 7, %d15, 0

# CHECK-INST: sh.xor.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xe7,0xf3]
sh.xor.t %d15, %d15, 7, %d15, 7

# CHECK-INST: sh.xor.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x67,0xfc]
sh.xor.t %d15, %d15, 7, %d15, 24

# CHECK-INST: sh.xor.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xe7,0xff]
sh.xor.t %d15, %d15, 7, %d15, 31

# CHECK-INST: sh.xor.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x78,0xf0]
sh.xor.t %d15, %d15, 24, %d0, 0

# CHECK-INST: sh.xor.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xf8,0xf3]
sh.xor.t %d15, %d15, 24, %d0, 7

# CHECK-INST: sh.xor.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x78,0xfc]
sh.xor.t %d15, %d15, 24, %d0, 24

# CHECK-INST: sh.xor.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xf8,0xff]
sh.xor.t %d15, %d15, 24, %d0, 31

# CHECK-INST: sh.xor.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x78,0xf0]
sh.xor.t %d15, %d15, 24, %d1, 0

# CHECK-INST: sh.xor.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xf8,0xf3]
sh.xor.t %d15, %d15, 24, %d1, 7

# CHECK-INST: sh.xor.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x78,0xfc]
sh.xor.t %d15, %d15, 24, %d1, 24

# CHECK-INST: sh.xor.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xf8,0xff]
sh.xor.t %d15, %d15, 24, %d1, 31

# CHECK-INST: sh.xor.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x78,0xf0]
sh.xor.t %d15, %d15, 24, %d14, 0

# CHECK-INST: sh.xor.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xf8,0xf3]
sh.xor.t %d15, %d15, 24, %d14, 7

# CHECK-INST: sh.xor.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x78,0xfc]
sh.xor.t %d15, %d15, 24, %d14, 24

# CHECK-INST: sh.xor.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xf8,0xff]
sh.xor.t %d15, %d15, 24, %d14, 31

# CHECK-INST: sh.xor.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x78,0xf0]
sh.xor.t %d15, %d15, 24, %d15, 0

# CHECK-INST: sh.xor.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xf8,0xf3]
sh.xor.t %d15, %d15, 24, %d15, 7

# CHECK-INST: sh.xor.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x78,0xfc]
sh.xor.t %d15, %d15, 24, %d15, 24

# CHECK-INST: sh.xor.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xf8,0xff]
sh.xor.t %d15, %d15, 24, %d15, 31

# CHECK-INST: sh.xor.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0xa7,0x0f,0x7f,0xf0]
sh.xor.t %d15, %d15, 31, %d0, 0

# CHECK-INST: sh.xor.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0xa7,0x0f,0xff,0xf3]
sh.xor.t %d15, %d15, 31, %d0, 7

# CHECK-INST: sh.xor.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0xa7,0x0f,0x7f,0xfc]
sh.xor.t %d15, %d15, 31, %d0, 24

# CHECK-INST: sh.xor.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0xa7,0x0f,0xff,0xff]
sh.xor.t %d15, %d15, 31, %d0, 31

# CHECK-INST: sh.xor.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0xa7,0x1f,0x7f,0xf0]
sh.xor.t %d15, %d15, 31, %d1, 0

# CHECK-INST: sh.xor.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0xa7,0x1f,0xff,0xf3]
sh.xor.t %d15, %d15, 31, %d1, 7

# CHECK-INST: sh.xor.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0xa7,0x1f,0x7f,0xfc]
sh.xor.t %d15, %d15, 31, %d1, 24

# CHECK-INST: sh.xor.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0xa7,0x1f,0xff,0xff]
sh.xor.t %d15, %d15, 31, %d1, 31

# CHECK-INST: sh.xor.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0xa7,0xef,0x7f,0xf0]
sh.xor.t %d15, %d15, 31, %d14, 0

# CHECK-INST: sh.xor.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0xa7,0xef,0xff,0xf3]
sh.xor.t %d15, %d15, 31, %d14, 7

# CHECK-INST: sh.xor.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0xa7,0xef,0x7f,0xfc]
sh.xor.t %d15, %d15, 31, %d14, 24

# CHECK-INST: sh.xor.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0xa7,0xef,0xff,0xff]
sh.xor.t %d15, %d15, 31, %d14, 31

# CHECK-INST: sh.xor.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0xa7,0xff,0x7f,0xf0]
sh.xor.t %d15, %d15, 31, %d15, 0

# CHECK-INST: sh.xor.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0xa7,0xff,0xff,0xf3]
sh.xor.t %d15, %d15, 31, %d15, 7

# CHECK-INST: sh.xor.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0xa7,0xff,0x7f,0xfc]
sh.xor.t %d15, %d15, 31, %d15, 24

# CHECK-INST: sh.xor.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0xa7,0xff,0xff,0xff]
sh.xor.t %d15, %d15, 31, %d15, 31
 