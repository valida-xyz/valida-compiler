# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s

# CHECK-INST: and.and.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x47,0x00,0x00,0x00]
and.and.t %d0, %d0, 0, %d0, 0

# CHECK-INST: and.and.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0x47,0x00,0x80,0x03]
and.and.t %d0, %d0, 0, %d0, 7

# CHECK-INST: and.and.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0x47,0x00,0x00,0x0c]
and.and.t %d0, %d0, 0, %d0, 24

# CHECK-INST: and.and.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0x47,0x00,0x80,0x0f]
and.and.t %d0, %d0, 0, %d0, 31

# CHECK-INST: and.and.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0x47,0x10,0x00,0x00]
and.and.t %d0, %d0, 0, %d1, 0

# CHECK-INST: and.and.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0x47,0x10,0x80,0x03]
and.and.t %d0, %d0, 0, %d1, 7

# CHECK-INST: and.and.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0x47,0x10,0x00,0x0c]
and.and.t %d0, %d0, 0, %d1, 24

# CHECK-INST: and.and.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0x47,0x10,0x80,0x0f]
and.and.t %d0, %d0, 0, %d1, 31

# CHECK-INST: and.and.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x00,0x00]
and.and.t %d0, %d0, 0, %d14, 0

# CHECK-INST: and.and.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0x47,0xe0,0x80,0x03]
and.and.t %d0, %d0, 0, %d14, 7

# CHECK-INST: and.and.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x00,0x0c]
and.and.t %d0, %d0, 0, %d14, 24

# CHECK-INST: and.and.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0x47,0xe0,0x80,0x0f]
and.and.t %d0, %d0, 0, %d14, 31

# CHECK-INST: and.and.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x00,0x00]
and.and.t %d0, %d0, 0, %d15, 0

# CHECK-INST: and.and.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0x47,0xf0,0x80,0x03]
and.and.t %d0, %d0, 0, %d15, 7

# CHECK-INST: and.and.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x00,0x0c]
and.and.t %d0, %d0, 0, %d15, 24

# CHECK-INST: and.and.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0x47,0xf0,0x80,0x0f]
and.and.t %d0, %d0, 0, %d15, 31

# CHECK-INST: and.and.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0x47,0x00,0x07,0x00]
and.and.t %d0, %d0, 7, %d0, 0

# CHECK-INST: and.and.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0x47,0x00,0x87,0x03]
and.and.t %d0, %d0, 7, %d0, 7

# CHECK-INST: and.and.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0x47,0x00,0x07,0x0c]
and.and.t %d0, %d0, 7, %d0, 24

# CHECK-INST: and.and.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0x47,0x00,0x87,0x0f]
and.and.t %d0, %d0, 7, %d0, 31

# CHECK-INST: and.and.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0x47,0x10,0x07,0x00]
and.and.t %d0, %d0, 7, %d1, 0

# CHECK-INST: and.and.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0x47,0x10,0x87,0x03]
and.and.t %d0, %d0, 7, %d1, 7

# CHECK-INST: and.and.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0x47,0x10,0x07,0x0c]
and.and.t %d0, %d0, 7, %d1, 24

# CHECK-INST: and.and.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0x47,0x10,0x87,0x0f]
and.and.t %d0, %d0, 7, %d1, 31

# CHECK-INST: and.and.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x07,0x00]
and.and.t %d0, %d0, 7, %d14, 0

# CHECK-INST: and.and.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0x47,0xe0,0x87,0x03]
and.and.t %d0, %d0, 7, %d14, 7

# CHECK-INST: and.and.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x07,0x0c]
and.and.t %d0, %d0, 7, %d14, 24

# CHECK-INST: and.and.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0x47,0xe0,0x87,0x0f]
and.and.t %d0, %d0, 7, %d14, 31

# CHECK-INST: and.and.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x07,0x00]
and.and.t %d0, %d0, 7, %d15, 0

# CHECK-INST: and.and.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0x47,0xf0,0x87,0x03]
and.and.t %d0, %d0, 7, %d15, 7

# CHECK-INST: and.and.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x07,0x0c]
and.and.t %d0, %d0, 7, %d15, 24

# CHECK-INST: and.and.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0x47,0xf0,0x87,0x0f]
and.and.t %d0, %d0, 7, %d15, 31

# CHECK-INST: and.and.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0x47,0x00,0x18,0x00]
and.and.t %d0, %d0, 24, %d0, 0

# CHECK-INST: and.and.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0x47,0x00,0x98,0x03]
and.and.t %d0, %d0, 24, %d0, 7

# CHECK-INST: and.and.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0x47,0x00,0x18,0x0c]
and.and.t %d0, %d0, 24, %d0, 24

# CHECK-INST: and.and.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0x47,0x00,0x98,0x0f]
and.and.t %d0, %d0, 24, %d0, 31

# CHECK-INST: and.and.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0x47,0x10,0x18,0x00]
and.and.t %d0, %d0, 24, %d1, 0

# CHECK-INST: and.and.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0x47,0x10,0x98,0x03]
and.and.t %d0, %d0, 24, %d1, 7

# CHECK-INST: and.and.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0x47,0x10,0x18,0x0c]
and.and.t %d0, %d0, 24, %d1, 24

# CHECK-INST: and.and.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0x47,0x10,0x98,0x0f]
and.and.t %d0, %d0, 24, %d1, 31

# CHECK-INST: and.and.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x18,0x00]
and.and.t %d0, %d0, 24, %d14, 0

# CHECK-INST: and.and.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0x47,0xe0,0x98,0x03]
and.and.t %d0, %d0, 24, %d14, 7

# CHECK-INST: and.and.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x18,0x0c]
and.and.t %d0, %d0, 24, %d14, 24

# CHECK-INST: and.and.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0x47,0xe0,0x98,0x0f]
and.and.t %d0, %d0, 24, %d14, 31

# CHECK-INST: and.and.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x18,0x00]
and.and.t %d0, %d0, 24, %d15, 0

# CHECK-INST: and.and.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0x47,0xf0,0x98,0x03]
and.and.t %d0, %d0, 24, %d15, 7

# CHECK-INST: and.and.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x18,0x0c]
and.and.t %d0, %d0, 24, %d15, 24

# CHECK-INST: and.and.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0x47,0xf0,0x98,0x0f]
and.and.t %d0, %d0, 24, %d15, 31

# CHECK-INST: and.and.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0x47,0x00,0x1f,0x00]
and.and.t %d0, %d0, 31, %d0, 0

# CHECK-INST: and.and.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0x47,0x00,0x9f,0x03]
and.and.t %d0, %d0, 31, %d0, 7

# CHECK-INST: and.and.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0x47,0x00,0x1f,0x0c]
and.and.t %d0, %d0, 31, %d0, 24

# CHECK-INST: and.and.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0x47,0x00,0x9f,0x0f]
and.and.t %d0, %d0, 31, %d0, 31

# CHECK-INST: and.and.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0x47,0x10,0x1f,0x00]
and.and.t %d0, %d0, 31, %d1, 0

# CHECK-INST: and.and.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0x47,0x10,0x9f,0x03]
and.and.t %d0, %d0, 31, %d1, 7

# CHECK-INST: and.and.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0x47,0x10,0x1f,0x0c]
and.and.t %d0, %d0, 31, %d1, 24

# CHECK-INST: and.and.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0x47,0x10,0x9f,0x0f]
and.and.t %d0, %d0, 31, %d1, 31

# CHECK-INST: and.and.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x1f,0x00]
and.and.t %d0, %d0, 31, %d14, 0

# CHECK-INST: and.and.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0x47,0xe0,0x9f,0x03]
and.and.t %d0, %d0, 31, %d14, 7

# CHECK-INST: and.and.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x1f,0x0c]
and.and.t %d0, %d0, 31, %d14, 24

# CHECK-INST: and.and.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0x47,0xe0,0x9f,0x0f]
and.and.t %d0, %d0, 31, %d14, 31

# CHECK-INST: and.and.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x1f,0x00]
and.and.t %d0, %d0, 31, %d15, 0

# CHECK-INST: and.and.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0x47,0xf0,0x9f,0x03]
and.and.t %d0, %d0, 31, %d15, 7

# CHECK-INST: and.and.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x1f,0x0c]
and.and.t %d0, %d0, 31, %d15, 24

# CHECK-INST: and.and.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0x47,0xf0,0x9f,0x0f]
and.and.t %d0, %d0, 31, %d15, 31

# CHECK-INST: and.and.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0x47,0x01,0x00,0x00]
and.and.t %d0, %d1, 0, %d0, 0

# CHECK-INST: and.and.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0x47,0x01,0x80,0x03]
and.and.t %d0, %d1, 0, %d0, 7

# CHECK-INST: and.and.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0x47,0x01,0x00,0x0c]
and.and.t %d0, %d1, 0, %d0, 24

# CHECK-INST: and.and.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0x47,0x01,0x80,0x0f]
and.and.t %d0, %d1, 0, %d0, 31

# CHECK-INST: and.and.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0x47,0x11,0x00,0x00]
and.and.t %d0, %d1, 0, %d1, 0

# CHECK-INST: and.and.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0x47,0x11,0x80,0x03]
and.and.t %d0, %d1, 0, %d1, 7

# CHECK-INST: and.and.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0x47,0x11,0x00,0x0c]
and.and.t %d0, %d1, 0, %d1, 24

# CHECK-INST: and.and.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0x47,0x11,0x80,0x0f]
and.and.t %d0, %d1, 0, %d1, 31

# CHECK-INST: and.and.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x00,0x00]
and.and.t %d0, %d1, 0, %d14, 0

# CHECK-INST: and.and.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0x47,0xe1,0x80,0x03]
and.and.t %d0, %d1, 0, %d14, 7

# CHECK-INST: and.and.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x00,0x0c]
and.and.t %d0, %d1, 0, %d14, 24

# CHECK-INST: and.and.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0x47,0xe1,0x80,0x0f]
and.and.t %d0, %d1, 0, %d14, 31

# CHECK-INST: and.and.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x00,0x00]
and.and.t %d0, %d1, 0, %d15, 0

# CHECK-INST: and.and.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0x47,0xf1,0x80,0x03]
and.and.t %d0, %d1, 0, %d15, 7

# CHECK-INST: and.and.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x00,0x0c]
and.and.t %d0, %d1, 0, %d15, 24

# CHECK-INST: and.and.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0x47,0xf1,0x80,0x0f]
and.and.t %d0, %d1, 0, %d15, 31

# CHECK-INST: and.and.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0x47,0x01,0x07,0x00]
and.and.t %d0, %d1, 7, %d0, 0

# CHECK-INST: and.and.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0x47,0x01,0x87,0x03]
and.and.t %d0, %d1, 7, %d0, 7

# CHECK-INST: and.and.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0x47,0x01,0x07,0x0c]
and.and.t %d0, %d1, 7, %d0, 24

# CHECK-INST: and.and.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0x47,0x01,0x87,0x0f]
and.and.t %d0, %d1, 7, %d0, 31

# CHECK-INST: and.and.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0x47,0x11,0x07,0x00]
and.and.t %d0, %d1, 7, %d1, 0

# CHECK-INST: and.and.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0x47,0x11,0x87,0x03]
and.and.t %d0, %d1, 7, %d1, 7

# CHECK-INST: and.and.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0x47,0x11,0x07,0x0c]
and.and.t %d0, %d1, 7, %d1, 24

# CHECK-INST: and.and.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0x47,0x11,0x87,0x0f]
and.and.t %d0, %d1, 7, %d1, 31

# CHECK-INST: and.and.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x07,0x00]
and.and.t %d0, %d1, 7, %d14, 0

# CHECK-INST: and.and.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0x47,0xe1,0x87,0x03]
and.and.t %d0, %d1, 7, %d14, 7

# CHECK-INST: and.and.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x07,0x0c]
and.and.t %d0, %d1, 7, %d14, 24

# CHECK-INST: and.and.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0x47,0xe1,0x87,0x0f]
and.and.t %d0, %d1, 7, %d14, 31

# CHECK-INST: and.and.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x07,0x00]
and.and.t %d0, %d1, 7, %d15, 0

# CHECK-INST: and.and.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0x47,0xf1,0x87,0x03]
and.and.t %d0, %d1, 7, %d15, 7

# CHECK-INST: and.and.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x07,0x0c]
and.and.t %d0, %d1, 7, %d15, 24

# CHECK-INST: and.and.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0x47,0xf1,0x87,0x0f]
and.and.t %d0, %d1, 7, %d15, 31

# CHECK-INST: and.and.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0x47,0x01,0x18,0x00]
and.and.t %d0, %d1, 24, %d0, 0

# CHECK-INST: and.and.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0x47,0x01,0x98,0x03]
and.and.t %d0, %d1, 24, %d0, 7

# CHECK-INST: and.and.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0x47,0x01,0x18,0x0c]
and.and.t %d0, %d1, 24, %d0, 24

# CHECK-INST: and.and.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0x47,0x01,0x98,0x0f]
and.and.t %d0, %d1, 24, %d0, 31

# CHECK-INST: and.and.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0x47,0x11,0x18,0x00]
and.and.t %d0, %d1, 24, %d1, 0

# CHECK-INST: and.and.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0x47,0x11,0x98,0x03]
and.and.t %d0, %d1, 24, %d1, 7

# CHECK-INST: and.and.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0x47,0x11,0x18,0x0c]
and.and.t %d0, %d1, 24, %d1, 24

# CHECK-INST: and.and.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0x47,0x11,0x98,0x0f]
and.and.t %d0, %d1, 24, %d1, 31

# CHECK-INST: and.and.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x18,0x00]
and.and.t %d0, %d1, 24, %d14, 0

# CHECK-INST: and.and.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0x47,0xe1,0x98,0x03]
and.and.t %d0, %d1, 24, %d14, 7

# CHECK-INST: and.and.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x18,0x0c]
and.and.t %d0, %d1, 24, %d14, 24

# CHECK-INST: and.and.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0x47,0xe1,0x98,0x0f]
and.and.t %d0, %d1, 24, %d14, 31

# CHECK-INST: and.and.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x18,0x00]
and.and.t %d0, %d1, 24, %d15, 0

# CHECK-INST: and.and.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0x47,0xf1,0x98,0x03]
and.and.t %d0, %d1, 24, %d15, 7

# CHECK-INST: and.and.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x18,0x0c]
and.and.t %d0, %d1, 24, %d15, 24

# CHECK-INST: and.and.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0x47,0xf1,0x98,0x0f]
and.and.t %d0, %d1, 24, %d15, 31

# CHECK-INST: and.and.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0x47,0x01,0x1f,0x00]
and.and.t %d0, %d1, 31, %d0, 0

# CHECK-INST: and.and.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0x47,0x01,0x9f,0x03]
and.and.t %d0, %d1, 31, %d0, 7

# CHECK-INST: and.and.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0x47,0x01,0x1f,0x0c]
and.and.t %d0, %d1, 31, %d0, 24

# CHECK-INST: and.and.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0x47,0x01,0x9f,0x0f]
and.and.t %d0, %d1, 31, %d0, 31

# CHECK-INST: and.and.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0x47,0x11,0x1f,0x00]
and.and.t %d0, %d1, 31, %d1, 0

# CHECK-INST: and.and.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0x47,0x11,0x9f,0x03]
and.and.t %d0, %d1, 31, %d1, 7

# CHECK-INST: and.and.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0x47,0x11,0x1f,0x0c]
and.and.t %d0, %d1, 31, %d1, 24

# CHECK-INST: and.and.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0x47,0x11,0x9f,0x0f]
and.and.t %d0, %d1, 31, %d1, 31

# CHECK-INST: and.and.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x1f,0x00]
and.and.t %d0, %d1, 31, %d14, 0

# CHECK-INST: and.and.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0x47,0xe1,0x9f,0x03]
and.and.t %d0, %d1, 31, %d14, 7

# CHECK-INST: and.and.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x1f,0x0c]
and.and.t %d0, %d1, 31, %d14, 24

# CHECK-INST: and.and.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0x47,0xe1,0x9f,0x0f]
and.and.t %d0, %d1, 31, %d14, 31

# CHECK-INST: and.and.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x1f,0x00]
and.and.t %d0, %d1, 31, %d15, 0

# CHECK-INST: and.and.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0x47,0xf1,0x9f,0x03]
and.and.t %d0, %d1, 31, %d15, 7

# CHECK-INST: and.and.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x1f,0x0c]
and.and.t %d0, %d1, 31, %d15, 24

# CHECK-INST: and.and.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0x47,0xf1,0x9f,0x0f]
and.and.t %d0, %d1, 31, %d15, 31

# CHECK-INST: and.and.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x00,0x00]
and.and.t %d0, %d14, 0, %d0, 0

# CHECK-INST: and.and.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0x47,0x0e,0x80,0x03]
and.and.t %d0, %d14, 0, %d0, 7

# CHECK-INST: and.and.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x00,0x0c]
and.and.t %d0, %d14, 0, %d0, 24

# CHECK-INST: and.and.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0x47,0x0e,0x80,0x0f]
and.and.t %d0, %d14, 0, %d0, 31

# CHECK-INST: and.and.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x00,0x00]
and.and.t %d0, %d14, 0, %d1, 0

# CHECK-INST: and.and.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0x47,0x1e,0x80,0x03]
and.and.t %d0, %d14, 0, %d1, 7

# CHECK-INST: and.and.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x00,0x0c]
and.and.t %d0, %d14, 0, %d1, 24

# CHECK-INST: and.and.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0x47,0x1e,0x80,0x0f]
and.and.t %d0, %d14, 0, %d1, 31

# CHECK-INST: and.and.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0x47,0xee,0x00,0x00]
and.and.t %d0, %d14, 0, %d14, 0

# CHECK-INST: and.and.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0x47,0xee,0x80,0x03]
and.and.t %d0, %d14, 0, %d14, 7

# CHECK-INST: and.and.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0x47,0xee,0x00,0x0c]
and.and.t %d0, %d14, 0, %d14, 24

# CHECK-INST: and.and.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0x47,0xee,0x80,0x0f]
and.and.t %d0, %d14, 0, %d14, 31

# CHECK-INST: and.and.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x00,0x00]
and.and.t %d0, %d14, 0, %d15, 0

# CHECK-INST: and.and.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0x47,0xfe,0x80,0x03]
and.and.t %d0, %d14, 0, %d15, 7

# CHECK-INST: and.and.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x00,0x0c]
and.and.t %d0, %d14, 0, %d15, 24

# CHECK-INST: and.and.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0x47,0xfe,0x80,0x0f]
and.and.t %d0, %d14, 0, %d15, 31

# CHECK-INST: and.and.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x07,0x00]
and.and.t %d0, %d14, 7, %d0, 0

# CHECK-INST: and.and.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0x47,0x0e,0x87,0x03]
and.and.t %d0, %d14, 7, %d0, 7

# CHECK-INST: and.and.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x07,0x0c]
and.and.t %d0, %d14, 7, %d0, 24

# CHECK-INST: and.and.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0x47,0x0e,0x87,0x0f]
and.and.t %d0, %d14, 7, %d0, 31

# CHECK-INST: and.and.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x07,0x00]
and.and.t %d0, %d14, 7, %d1, 0

# CHECK-INST: and.and.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0x47,0x1e,0x87,0x03]
and.and.t %d0, %d14, 7, %d1, 7

# CHECK-INST: and.and.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x07,0x0c]
and.and.t %d0, %d14, 7, %d1, 24

# CHECK-INST: and.and.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0x47,0x1e,0x87,0x0f]
and.and.t %d0, %d14, 7, %d1, 31

# CHECK-INST: and.and.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0x47,0xee,0x07,0x00]
and.and.t %d0, %d14, 7, %d14, 0

# CHECK-INST: and.and.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0x47,0xee,0x87,0x03]
and.and.t %d0, %d14, 7, %d14, 7

# CHECK-INST: and.and.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0x47,0xee,0x07,0x0c]
and.and.t %d0, %d14, 7, %d14, 24

# CHECK-INST: and.and.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0x47,0xee,0x87,0x0f]
and.and.t %d0, %d14, 7, %d14, 31

# CHECK-INST: and.and.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x07,0x00]
and.and.t %d0, %d14, 7, %d15, 0

# CHECK-INST: and.and.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0x47,0xfe,0x87,0x03]
and.and.t %d0, %d14, 7, %d15, 7

# CHECK-INST: and.and.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x07,0x0c]
and.and.t %d0, %d14, 7, %d15, 24

# CHECK-INST: and.and.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0x47,0xfe,0x87,0x0f]
and.and.t %d0, %d14, 7, %d15, 31

# CHECK-INST: and.and.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x18,0x00]
and.and.t %d0, %d14, 24, %d0, 0

# CHECK-INST: and.and.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0x47,0x0e,0x98,0x03]
and.and.t %d0, %d14, 24, %d0, 7

# CHECK-INST: and.and.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x18,0x0c]
and.and.t %d0, %d14, 24, %d0, 24

# CHECK-INST: and.and.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0x47,0x0e,0x98,0x0f]
and.and.t %d0, %d14, 24, %d0, 31

# CHECK-INST: and.and.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x18,0x00]
and.and.t %d0, %d14, 24, %d1, 0

# CHECK-INST: and.and.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0x47,0x1e,0x98,0x03]
and.and.t %d0, %d14, 24, %d1, 7

# CHECK-INST: and.and.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x18,0x0c]
and.and.t %d0, %d14, 24, %d1, 24

# CHECK-INST: and.and.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0x47,0x1e,0x98,0x0f]
and.and.t %d0, %d14, 24, %d1, 31

# CHECK-INST: and.and.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0x47,0xee,0x18,0x00]
and.and.t %d0, %d14, 24, %d14, 0

# CHECK-INST: and.and.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0x47,0xee,0x98,0x03]
and.and.t %d0, %d14, 24, %d14, 7

# CHECK-INST: and.and.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0x47,0xee,0x18,0x0c]
and.and.t %d0, %d14, 24, %d14, 24

# CHECK-INST: and.and.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0x47,0xee,0x98,0x0f]
and.and.t %d0, %d14, 24, %d14, 31

# CHECK-INST: and.and.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x18,0x00]
and.and.t %d0, %d14, 24, %d15, 0

# CHECK-INST: and.and.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0x47,0xfe,0x98,0x03]
and.and.t %d0, %d14, 24, %d15, 7

# CHECK-INST: and.and.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x18,0x0c]
and.and.t %d0, %d14, 24, %d15, 24

# CHECK-INST: and.and.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0x47,0xfe,0x98,0x0f]
and.and.t %d0, %d14, 24, %d15, 31

# CHECK-INST: and.and.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x1f,0x00]
and.and.t %d0, %d14, 31, %d0, 0

# CHECK-INST: and.and.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0x47,0x0e,0x9f,0x03]
and.and.t %d0, %d14, 31, %d0, 7

# CHECK-INST: and.and.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x1f,0x0c]
and.and.t %d0, %d14, 31, %d0, 24

# CHECK-INST: and.and.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0x47,0x0e,0x9f,0x0f]
and.and.t %d0, %d14, 31, %d0, 31

# CHECK-INST: and.and.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x1f,0x00]
and.and.t %d0, %d14, 31, %d1, 0

# CHECK-INST: and.and.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0x47,0x1e,0x9f,0x03]
and.and.t %d0, %d14, 31, %d1, 7

# CHECK-INST: and.and.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x1f,0x0c]
and.and.t %d0, %d14, 31, %d1, 24

# CHECK-INST: and.and.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0x47,0x1e,0x9f,0x0f]
and.and.t %d0, %d14, 31, %d1, 31

# CHECK-INST: and.and.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0x47,0xee,0x1f,0x00]
and.and.t %d0, %d14, 31, %d14, 0

# CHECK-INST: and.and.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0x47,0xee,0x9f,0x03]
and.and.t %d0, %d14, 31, %d14, 7

# CHECK-INST: and.and.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0x47,0xee,0x1f,0x0c]
and.and.t %d0, %d14, 31, %d14, 24

# CHECK-INST: and.and.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0x47,0xee,0x9f,0x0f]
and.and.t %d0, %d14, 31, %d14, 31

# CHECK-INST: and.and.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x1f,0x00]
and.and.t %d0, %d14, 31, %d15, 0

# CHECK-INST: and.and.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0x47,0xfe,0x9f,0x03]
and.and.t %d0, %d14, 31, %d15, 7

# CHECK-INST: and.and.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x1f,0x0c]
and.and.t %d0, %d14, 31, %d15, 24

# CHECK-INST: and.and.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0x47,0xfe,0x9f,0x0f]
and.and.t %d0, %d14, 31, %d15, 31

# CHECK-INST: and.and.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x00,0x00]
and.and.t %d0, %d15, 0, %d0, 0

# CHECK-INST: and.and.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0x47,0x0f,0x80,0x03]
and.and.t %d0, %d15, 0, %d0, 7

# CHECK-INST: and.and.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x00,0x0c]
and.and.t %d0, %d15, 0, %d0, 24

# CHECK-INST: and.and.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0x47,0x0f,0x80,0x0f]
and.and.t %d0, %d15, 0, %d0, 31

# CHECK-INST: and.and.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x00,0x00]
and.and.t %d0, %d15, 0, %d1, 0

# CHECK-INST: and.and.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0x47,0x1f,0x80,0x03]
and.and.t %d0, %d15, 0, %d1, 7

# CHECK-INST: and.and.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x00,0x0c]
and.and.t %d0, %d15, 0, %d1, 24

# CHECK-INST: and.and.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0x47,0x1f,0x80,0x0f]
and.and.t %d0, %d15, 0, %d1, 31

# CHECK-INST: and.and.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0x47,0xef,0x00,0x00]
and.and.t %d0, %d15, 0, %d14, 0

# CHECK-INST: and.and.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0x47,0xef,0x80,0x03]
and.and.t %d0, %d15, 0, %d14, 7

# CHECK-INST: and.and.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0x47,0xef,0x00,0x0c]
and.and.t %d0, %d15, 0, %d14, 24

# CHECK-INST: and.and.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0x47,0xef,0x80,0x0f]
and.and.t %d0, %d15, 0, %d14, 31

# CHECK-INST: and.and.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0x47,0xff,0x00,0x00]
and.and.t %d0, %d15, 0, %d15, 0

# CHECK-INST: and.and.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0x47,0xff,0x80,0x03]
and.and.t %d0, %d15, 0, %d15, 7

# CHECK-INST: and.and.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0x47,0xff,0x00,0x0c]
and.and.t %d0, %d15, 0, %d15, 24

# CHECK-INST: and.and.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0x47,0xff,0x80,0x0f]
and.and.t %d0, %d15, 0, %d15, 31

# CHECK-INST: and.and.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x07,0x00]
and.and.t %d0, %d15, 7, %d0, 0

# CHECK-INST: and.and.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0x47,0x0f,0x87,0x03]
and.and.t %d0, %d15, 7, %d0, 7

# CHECK-INST: and.and.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x07,0x0c]
and.and.t %d0, %d15, 7, %d0, 24

# CHECK-INST: and.and.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0x47,0x0f,0x87,0x0f]
and.and.t %d0, %d15, 7, %d0, 31

# CHECK-INST: and.and.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x07,0x00]
and.and.t %d0, %d15, 7, %d1, 0

# CHECK-INST: and.and.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0x47,0x1f,0x87,0x03]
and.and.t %d0, %d15, 7, %d1, 7

# CHECK-INST: and.and.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x07,0x0c]
and.and.t %d0, %d15, 7, %d1, 24

# CHECK-INST: and.and.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0x47,0x1f,0x87,0x0f]
and.and.t %d0, %d15, 7, %d1, 31

# CHECK-INST: and.and.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0x47,0xef,0x07,0x00]
and.and.t %d0, %d15, 7, %d14, 0

# CHECK-INST: and.and.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0x47,0xef,0x87,0x03]
and.and.t %d0, %d15, 7, %d14, 7

# CHECK-INST: and.and.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0x47,0xef,0x07,0x0c]
and.and.t %d0, %d15, 7, %d14, 24

# CHECK-INST: and.and.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0x47,0xef,0x87,0x0f]
and.and.t %d0, %d15, 7, %d14, 31

# CHECK-INST: and.and.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0x47,0xff,0x07,0x00]
and.and.t %d0, %d15, 7, %d15, 0

# CHECK-INST: and.and.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0x47,0xff,0x87,0x03]
and.and.t %d0, %d15, 7, %d15, 7

# CHECK-INST: and.and.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0x47,0xff,0x07,0x0c]
and.and.t %d0, %d15, 7, %d15, 24

# CHECK-INST: and.and.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0x47,0xff,0x87,0x0f]
and.and.t %d0, %d15, 7, %d15, 31

# CHECK-INST: and.and.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x18,0x00]
and.and.t %d0, %d15, 24, %d0, 0

# CHECK-INST: and.and.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0x47,0x0f,0x98,0x03]
and.and.t %d0, %d15, 24, %d0, 7

# CHECK-INST: and.and.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x18,0x0c]
and.and.t %d0, %d15, 24, %d0, 24

# CHECK-INST: and.and.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0x47,0x0f,0x98,0x0f]
and.and.t %d0, %d15, 24, %d0, 31

# CHECK-INST: and.and.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x18,0x00]
and.and.t %d0, %d15, 24, %d1, 0

# CHECK-INST: and.and.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0x47,0x1f,0x98,0x03]
and.and.t %d0, %d15, 24, %d1, 7

# CHECK-INST: and.and.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x18,0x0c]
and.and.t %d0, %d15, 24, %d1, 24

# CHECK-INST: and.and.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0x47,0x1f,0x98,0x0f]
and.and.t %d0, %d15, 24, %d1, 31

# CHECK-INST: and.and.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0x47,0xef,0x18,0x00]
and.and.t %d0, %d15, 24, %d14, 0

# CHECK-INST: and.and.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0x47,0xef,0x98,0x03]
and.and.t %d0, %d15, 24, %d14, 7

# CHECK-INST: and.and.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0x47,0xef,0x18,0x0c]
and.and.t %d0, %d15, 24, %d14, 24

# CHECK-INST: and.and.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0x47,0xef,0x98,0x0f]
and.and.t %d0, %d15, 24, %d14, 31

# CHECK-INST: and.and.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0x47,0xff,0x18,0x00]
and.and.t %d0, %d15, 24, %d15, 0

# CHECK-INST: and.and.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0x47,0xff,0x98,0x03]
and.and.t %d0, %d15, 24, %d15, 7

# CHECK-INST: and.and.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0x47,0xff,0x18,0x0c]
and.and.t %d0, %d15, 24, %d15, 24

# CHECK-INST: and.and.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0x47,0xff,0x98,0x0f]
and.and.t %d0, %d15, 24, %d15, 31

# CHECK-INST: and.and.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x1f,0x00]
and.and.t %d0, %d15, 31, %d0, 0

# CHECK-INST: and.and.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0x47,0x0f,0x9f,0x03]
and.and.t %d0, %d15, 31, %d0, 7

# CHECK-INST: and.and.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x1f,0x0c]
and.and.t %d0, %d15, 31, %d0, 24

# CHECK-INST: and.and.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0x47,0x0f,0x9f,0x0f]
and.and.t %d0, %d15, 31, %d0, 31

# CHECK-INST: and.and.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x1f,0x00]
and.and.t %d0, %d15, 31, %d1, 0

# CHECK-INST: and.and.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0x47,0x1f,0x9f,0x03]
and.and.t %d0, %d15, 31, %d1, 7

# CHECK-INST: and.and.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x1f,0x0c]
and.and.t %d0, %d15, 31, %d1, 24

# CHECK-INST: and.and.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0x47,0x1f,0x9f,0x0f]
and.and.t %d0, %d15, 31, %d1, 31

# CHECK-INST: and.and.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0x47,0xef,0x1f,0x00]
and.and.t %d0, %d15, 31, %d14, 0

# CHECK-INST: and.and.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0x47,0xef,0x9f,0x03]
and.and.t %d0, %d15, 31, %d14, 7

# CHECK-INST: and.and.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0x47,0xef,0x1f,0x0c]
and.and.t %d0, %d15, 31, %d14, 24

# CHECK-INST: and.and.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0x47,0xef,0x9f,0x0f]
and.and.t %d0, %d15, 31, %d14, 31

# CHECK-INST: and.and.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0x47,0xff,0x1f,0x00]
and.and.t %d0, %d15, 31, %d15, 0

# CHECK-INST: and.and.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0x47,0xff,0x9f,0x03]
and.and.t %d0, %d15, 31, %d15, 7

# CHECK-INST: and.and.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0x47,0xff,0x1f,0x0c]
and.and.t %d0, %d15, 31, %d15, 24

# CHECK-INST: and.and.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0x47,0xff,0x9f,0x0f]
and.and.t %d0, %d15, 31, %d15, 31

# CHECK-INST: and.and.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0x47,0x00,0x00,0x10]
and.and.t %d1, %d0, 0, %d0, 0

# CHECK-INST: and.and.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0x47,0x00,0x80,0x13]
and.and.t %d1, %d0, 0, %d0, 7

# CHECK-INST: and.and.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0x47,0x00,0x00,0x1c]
and.and.t %d1, %d0, 0, %d0, 24

# CHECK-INST: and.and.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0x47,0x00,0x80,0x1f]
and.and.t %d1, %d0, 0, %d0, 31

# CHECK-INST: and.and.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0x47,0x10,0x00,0x10]
and.and.t %d1, %d0, 0, %d1, 0

# CHECK-INST: and.and.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0x47,0x10,0x80,0x13]
and.and.t %d1, %d0, 0, %d1, 7

# CHECK-INST: and.and.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0x47,0x10,0x00,0x1c]
and.and.t %d1, %d0, 0, %d1, 24

# CHECK-INST: and.and.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0x47,0x10,0x80,0x1f]
and.and.t %d1, %d0, 0, %d1, 31

# CHECK-INST: and.and.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x00,0x10]
and.and.t %d1, %d0, 0, %d14, 0

# CHECK-INST: and.and.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0x47,0xe0,0x80,0x13]
and.and.t %d1, %d0, 0, %d14, 7

# CHECK-INST: and.and.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x00,0x1c]
and.and.t %d1, %d0, 0, %d14, 24

# CHECK-INST: and.and.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0x47,0xe0,0x80,0x1f]
and.and.t %d1, %d0, 0, %d14, 31

# CHECK-INST: and.and.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x00,0x10]
and.and.t %d1, %d0, 0, %d15, 0

# CHECK-INST: and.and.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0x47,0xf0,0x80,0x13]
and.and.t %d1, %d0, 0, %d15, 7

# CHECK-INST: and.and.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x00,0x1c]
and.and.t %d1, %d0, 0, %d15, 24

# CHECK-INST: and.and.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0x47,0xf0,0x80,0x1f]
and.and.t %d1, %d0, 0, %d15, 31

# CHECK-INST: and.and.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0x47,0x00,0x07,0x10]
and.and.t %d1, %d0, 7, %d0, 0

# CHECK-INST: and.and.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0x47,0x00,0x87,0x13]
and.and.t %d1, %d0, 7, %d0, 7

# CHECK-INST: and.and.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0x47,0x00,0x07,0x1c]
and.and.t %d1, %d0, 7, %d0, 24

# CHECK-INST: and.and.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0x47,0x00,0x87,0x1f]
and.and.t %d1, %d0, 7, %d0, 31

# CHECK-INST: and.and.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0x47,0x10,0x07,0x10]
and.and.t %d1, %d0, 7, %d1, 0

# CHECK-INST: and.and.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0x47,0x10,0x87,0x13]
and.and.t %d1, %d0, 7, %d1, 7

# CHECK-INST: and.and.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0x47,0x10,0x07,0x1c]
and.and.t %d1, %d0, 7, %d1, 24

# CHECK-INST: and.and.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0x47,0x10,0x87,0x1f]
and.and.t %d1, %d0, 7, %d1, 31

# CHECK-INST: and.and.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x07,0x10]
and.and.t %d1, %d0, 7, %d14, 0

# CHECK-INST: and.and.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0x47,0xe0,0x87,0x13]
and.and.t %d1, %d0, 7, %d14, 7

# CHECK-INST: and.and.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x07,0x1c]
and.and.t %d1, %d0, 7, %d14, 24

# CHECK-INST: and.and.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0x47,0xe0,0x87,0x1f]
and.and.t %d1, %d0, 7, %d14, 31

# CHECK-INST: and.and.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x07,0x10]
and.and.t %d1, %d0, 7, %d15, 0

# CHECK-INST: and.and.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0x47,0xf0,0x87,0x13]
and.and.t %d1, %d0, 7, %d15, 7

# CHECK-INST: and.and.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x07,0x1c]
and.and.t %d1, %d0, 7, %d15, 24

# CHECK-INST: and.and.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0x47,0xf0,0x87,0x1f]
and.and.t %d1, %d0, 7, %d15, 31

# CHECK-INST: and.and.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0x47,0x00,0x18,0x10]
and.and.t %d1, %d0, 24, %d0, 0

# CHECK-INST: and.and.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0x47,0x00,0x98,0x13]
and.and.t %d1, %d0, 24, %d0, 7

# CHECK-INST: and.and.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0x47,0x00,0x18,0x1c]
and.and.t %d1, %d0, 24, %d0, 24

# CHECK-INST: and.and.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0x47,0x00,0x98,0x1f]
and.and.t %d1, %d0, 24, %d0, 31

# CHECK-INST: and.and.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0x47,0x10,0x18,0x10]
and.and.t %d1, %d0, 24, %d1, 0

# CHECK-INST: and.and.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0x47,0x10,0x98,0x13]
and.and.t %d1, %d0, 24, %d1, 7

# CHECK-INST: and.and.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0x47,0x10,0x18,0x1c]
and.and.t %d1, %d0, 24, %d1, 24

# CHECK-INST: and.and.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0x47,0x10,0x98,0x1f]
and.and.t %d1, %d0, 24, %d1, 31

# CHECK-INST: and.and.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x18,0x10]
and.and.t %d1, %d0, 24, %d14, 0

# CHECK-INST: and.and.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0x47,0xe0,0x98,0x13]
and.and.t %d1, %d0, 24, %d14, 7

# CHECK-INST: and.and.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x18,0x1c]
and.and.t %d1, %d0, 24, %d14, 24

# CHECK-INST: and.and.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0x47,0xe0,0x98,0x1f]
and.and.t %d1, %d0, 24, %d14, 31

# CHECK-INST: and.and.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x18,0x10]
and.and.t %d1, %d0, 24, %d15, 0

# CHECK-INST: and.and.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0x47,0xf0,0x98,0x13]
and.and.t %d1, %d0, 24, %d15, 7

# CHECK-INST: and.and.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x18,0x1c]
and.and.t %d1, %d0, 24, %d15, 24

# CHECK-INST: and.and.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0x47,0xf0,0x98,0x1f]
and.and.t %d1, %d0, 24, %d15, 31

# CHECK-INST: and.and.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0x47,0x00,0x1f,0x10]
and.and.t %d1, %d0, 31, %d0, 0

# CHECK-INST: and.and.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0x47,0x00,0x9f,0x13]
and.and.t %d1, %d0, 31, %d0, 7

# CHECK-INST: and.and.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0x47,0x00,0x1f,0x1c]
and.and.t %d1, %d0, 31, %d0, 24

# CHECK-INST: and.and.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0x47,0x00,0x9f,0x1f]
and.and.t %d1, %d0, 31, %d0, 31

# CHECK-INST: and.and.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0x47,0x10,0x1f,0x10]
and.and.t %d1, %d0, 31, %d1, 0

# CHECK-INST: and.and.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0x47,0x10,0x9f,0x13]
and.and.t %d1, %d0, 31, %d1, 7

# CHECK-INST: and.and.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0x47,0x10,0x1f,0x1c]
and.and.t %d1, %d0, 31, %d1, 24

# CHECK-INST: and.and.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0x47,0x10,0x9f,0x1f]
and.and.t %d1, %d0, 31, %d1, 31

# CHECK-INST: and.and.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x1f,0x10]
and.and.t %d1, %d0, 31, %d14, 0

# CHECK-INST: and.and.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0x47,0xe0,0x9f,0x13]
and.and.t %d1, %d0, 31, %d14, 7

# CHECK-INST: and.and.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x1f,0x1c]
and.and.t %d1, %d0, 31, %d14, 24

# CHECK-INST: and.and.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0x47,0xe0,0x9f,0x1f]
and.and.t %d1, %d0, 31, %d14, 31

# CHECK-INST: and.and.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x1f,0x10]
and.and.t %d1, %d0, 31, %d15, 0

# CHECK-INST: and.and.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0x47,0xf0,0x9f,0x13]
and.and.t %d1, %d0, 31, %d15, 7

# CHECK-INST: and.and.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x1f,0x1c]
and.and.t %d1, %d0, 31, %d15, 24

# CHECK-INST: and.and.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0x47,0xf0,0x9f,0x1f]
and.and.t %d1, %d0, 31, %d15, 31

# CHECK-INST: and.and.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0x47,0x01,0x00,0x10]
and.and.t %d1, %d1, 0, %d0, 0

# CHECK-INST: and.and.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0x47,0x01,0x80,0x13]
and.and.t %d1, %d1, 0, %d0, 7

# CHECK-INST: and.and.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0x47,0x01,0x00,0x1c]
and.and.t %d1, %d1, 0, %d0, 24

# CHECK-INST: and.and.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0x47,0x01,0x80,0x1f]
and.and.t %d1, %d1, 0, %d0, 31

# CHECK-INST: and.and.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0x47,0x11,0x00,0x10]
and.and.t %d1, %d1, 0, %d1, 0

# CHECK-INST: and.and.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0x47,0x11,0x80,0x13]
and.and.t %d1, %d1, 0, %d1, 7

# CHECK-INST: and.and.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0x47,0x11,0x00,0x1c]
and.and.t %d1, %d1, 0, %d1, 24

# CHECK-INST: and.and.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0x47,0x11,0x80,0x1f]
and.and.t %d1, %d1, 0, %d1, 31

# CHECK-INST: and.and.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x00,0x10]
and.and.t %d1, %d1, 0, %d14, 0

# CHECK-INST: and.and.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0x47,0xe1,0x80,0x13]
and.and.t %d1, %d1, 0, %d14, 7

# CHECK-INST: and.and.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x00,0x1c]
and.and.t %d1, %d1, 0, %d14, 24

# CHECK-INST: and.and.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0x47,0xe1,0x80,0x1f]
and.and.t %d1, %d1, 0, %d14, 31

# CHECK-INST: and.and.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x00,0x10]
and.and.t %d1, %d1, 0, %d15, 0

# CHECK-INST: and.and.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0x47,0xf1,0x80,0x13]
and.and.t %d1, %d1, 0, %d15, 7

# CHECK-INST: and.and.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x00,0x1c]
and.and.t %d1, %d1, 0, %d15, 24

# CHECK-INST: and.and.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0x47,0xf1,0x80,0x1f]
and.and.t %d1, %d1, 0, %d15, 31

# CHECK-INST: and.and.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0x47,0x01,0x07,0x10]
and.and.t %d1, %d1, 7, %d0, 0

# CHECK-INST: and.and.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0x47,0x01,0x87,0x13]
and.and.t %d1, %d1, 7, %d0, 7

# CHECK-INST: and.and.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0x47,0x01,0x07,0x1c]
and.and.t %d1, %d1, 7, %d0, 24

# CHECK-INST: and.and.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0x47,0x01,0x87,0x1f]
and.and.t %d1, %d1, 7, %d0, 31

# CHECK-INST: and.and.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0x47,0x11,0x07,0x10]
and.and.t %d1, %d1, 7, %d1, 0

# CHECK-INST: and.and.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0x47,0x11,0x87,0x13]
and.and.t %d1, %d1, 7, %d1, 7

# CHECK-INST: and.and.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0x47,0x11,0x07,0x1c]
and.and.t %d1, %d1, 7, %d1, 24

# CHECK-INST: and.and.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0x47,0x11,0x87,0x1f]
and.and.t %d1, %d1, 7, %d1, 31

# CHECK-INST: and.and.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x07,0x10]
and.and.t %d1, %d1, 7, %d14, 0

# CHECK-INST: and.and.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0x47,0xe1,0x87,0x13]
and.and.t %d1, %d1, 7, %d14, 7

# CHECK-INST: and.and.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x07,0x1c]
and.and.t %d1, %d1, 7, %d14, 24

# CHECK-INST: and.and.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0x47,0xe1,0x87,0x1f]
and.and.t %d1, %d1, 7, %d14, 31

# CHECK-INST: and.and.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x07,0x10]
and.and.t %d1, %d1, 7, %d15, 0

# CHECK-INST: and.and.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0x47,0xf1,0x87,0x13]
and.and.t %d1, %d1, 7, %d15, 7

# CHECK-INST: and.and.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x07,0x1c]
and.and.t %d1, %d1, 7, %d15, 24

# CHECK-INST: and.and.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0x47,0xf1,0x87,0x1f]
and.and.t %d1, %d1, 7, %d15, 31

# CHECK-INST: and.and.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0x47,0x01,0x18,0x10]
and.and.t %d1, %d1, 24, %d0, 0

# CHECK-INST: and.and.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0x47,0x01,0x98,0x13]
and.and.t %d1, %d1, 24, %d0, 7

# CHECK-INST: and.and.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0x47,0x01,0x18,0x1c]
and.and.t %d1, %d1, 24, %d0, 24

# CHECK-INST: and.and.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0x47,0x01,0x98,0x1f]
and.and.t %d1, %d1, 24, %d0, 31

# CHECK-INST: and.and.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0x47,0x11,0x18,0x10]
and.and.t %d1, %d1, 24, %d1, 0

# CHECK-INST: and.and.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0x47,0x11,0x98,0x13]
and.and.t %d1, %d1, 24, %d1, 7

# CHECK-INST: and.and.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0x47,0x11,0x18,0x1c]
and.and.t %d1, %d1, 24, %d1, 24

# CHECK-INST: and.and.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0x47,0x11,0x98,0x1f]
and.and.t %d1, %d1, 24, %d1, 31

# CHECK-INST: and.and.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x18,0x10]
and.and.t %d1, %d1, 24, %d14, 0

# CHECK-INST: and.and.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0x47,0xe1,0x98,0x13]
and.and.t %d1, %d1, 24, %d14, 7

# CHECK-INST: and.and.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x18,0x1c]
and.and.t %d1, %d1, 24, %d14, 24

# CHECK-INST: and.and.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0x47,0xe1,0x98,0x1f]
and.and.t %d1, %d1, 24, %d14, 31

# CHECK-INST: and.and.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x18,0x10]
and.and.t %d1, %d1, 24, %d15, 0

# CHECK-INST: and.and.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0x47,0xf1,0x98,0x13]
and.and.t %d1, %d1, 24, %d15, 7

# CHECK-INST: and.and.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x18,0x1c]
and.and.t %d1, %d1, 24, %d15, 24

# CHECK-INST: and.and.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0x47,0xf1,0x98,0x1f]
and.and.t %d1, %d1, 24, %d15, 31

# CHECK-INST: and.and.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0x47,0x01,0x1f,0x10]
and.and.t %d1, %d1, 31, %d0, 0

# CHECK-INST: and.and.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0x47,0x01,0x9f,0x13]
and.and.t %d1, %d1, 31, %d0, 7

# CHECK-INST: and.and.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0x47,0x01,0x1f,0x1c]
and.and.t %d1, %d1, 31, %d0, 24

# CHECK-INST: and.and.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0x47,0x01,0x9f,0x1f]
and.and.t %d1, %d1, 31, %d0, 31

# CHECK-INST: and.and.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0x47,0x11,0x1f,0x10]
and.and.t %d1, %d1, 31, %d1, 0

# CHECK-INST: and.and.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0x47,0x11,0x9f,0x13]
and.and.t %d1, %d1, 31, %d1, 7

# CHECK-INST: and.and.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0x47,0x11,0x1f,0x1c]
and.and.t %d1, %d1, 31, %d1, 24

# CHECK-INST: and.and.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0x47,0x11,0x9f,0x1f]
and.and.t %d1, %d1, 31, %d1, 31

# CHECK-INST: and.and.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x1f,0x10]
and.and.t %d1, %d1, 31, %d14, 0

# CHECK-INST: and.and.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0x47,0xe1,0x9f,0x13]
and.and.t %d1, %d1, 31, %d14, 7

# CHECK-INST: and.and.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x1f,0x1c]
and.and.t %d1, %d1, 31, %d14, 24

# CHECK-INST: and.and.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0x47,0xe1,0x9f,0x1f]
and.and.t %d1, %d1, 31, %d14, 31

# CHECK-INST: and.and.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x1f,0x10]
and.and.t %d1, %d1, 31, %d15, 0

# CHECK-INST: and.and.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0x47,0xf1,0x9f,0x13]
and.and.t %d1, %d1, 31, %d15, 7

# CHECK-INST: and.and.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x1f,0x1c]
and.and.t %d1, %d1, 31, %d15, 24

# CHECK-INST: and.and.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0x47,0xf1,0x9f,0x1f]
and.and.t %d1, %d1, 31, %d15, 31

# CHECK-INST: and.and.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x00,0x10]
and.and.t %d1, %d14, 0, %d0, 0

# CHECK-INST: and.and.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0x47,0x0e,0x80,0x13]
and.and.t %d1, %d14, 0, %d0, 7

# CHECK-INST: and.and.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x00,0x1c]
and.and.t %d1, %d14, 0, %d0, 24

# CHECK-INST: and.and.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0x47,0x0e,0x80,0x1f]
and.and.t %d1, %d14, 0, %d0, 31

# CHECK-INST: and.and.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x00,0x10]
and.and.t %d1, %d14, 0, %d1, 0

# CHECK-INST: and.and.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0x47,0x1e,0x80,0x13]
and.and.t %d1, %d14, 0, %d1, 7

# CHECK-INST: and.and.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x00,0x1c]
and.and.t %d1, %d14, 0, %d1, 24

# CHECK-INST: and.and.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0x47,0x1e,0x80,0x1f]
and.and.t %d1, %d14, 0, %d1, 31

# CHECK-INST: and.and.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0x47,0xee,0x00,0x10]
and.and.t %d1, %d14, 0, %d14, 0

# CHECK-INST: and.and.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0x47,0xee,0x80,0x13]
and.and.t %d1, %d14, 0, %d14, 7

# CHECK-INST: and.and.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0x47,0xee,0x00,0x1c]
and.and.t %d1, %d14, 0, %d14, 24

# CHECK-INST: and.and.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0x47,0xee,0x80,0x1f]
and.and.t %d1, %d14, 0, %d14, 31

# CHECK-INST: and.and.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x00,0x10]
and.and.t %d1, %d14, 0, %d15, 0

# CHECK-INST: and.and.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0x47,0xfe,0x80,0x13]
and.and.t %d1, %d14, 0, %d15, 7

# CHECK-INST: and.and.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x00,0x1c]
and.and.t %d1, %d14, 0, %d15, 24

# CHECK-INST: and.and.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0x47,0xfe,0x80,0x1f]
and.and.t %d1, %d14, 0, %d15, 31

# CHECK-INST: and.and.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x07,0x10]
and.and.t %d1, %d14, 7, %d0, 0

# CHECK-INST: and.and.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0x47,0x0e,0x87,0x13]
and.and.t %d1, %d14, 7, %d0, 7

# CHECK-INST: and.and.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x07,0x1c]
and.and.t %d1, %d14, 7, %d0, 24

# CHECK-INST: and.and.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0x47,0x0e,0x87,0x1f]
and.and.t %d1, %d14, 7, %d0, 31

# CHECK-INST: and.and.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x07,0x10]
and.and.t %d1, %d14, 7, %d1, 0

# CHECK-INST: and.and.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0x47,0x1e,0x87,0x13]
and.and.t %d1, %d14, 7, %d1, 7

# CHECK-INST: and.and.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x07,0x1c]
and.and.t %d1, %d14, 7, %d1, 24

# CHECK-INST: and.and.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0x47,0x1e,0x87,0x1f]
and.and.t %d1, %d14, 7, %d1, 31

# CHECK-INST: and.and.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0x47,0xee,0x07,0x10]
and.and.t %d1, %d14, 7, %d14, 0

# CHECK-INST: and.and.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0x47,0xee,0x87,0x13]
and.and.t %d1, %d14, 7, %d14, 7

# CHECK-INST: and.and.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0x47,0xee,0x07,0x1c]
and.and.t %d1, %d14, 7, %d14, 24

# CHECK-INST: and.and.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0x47,0xee,0x87,0x1f]
and.and.t %d1, %d14, 7, %d14, 31

# CHECK-INST: and.and.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x07,0x10]
and.and.t %d1, %d14, 7, %d15, 0

# CHECK-INST: and.and.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0x47,0xfe,0x87,0x13]
and.and.t %d1, %d14, 7, %d15, 7

# CHECK-INST: and.and.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x07,0x1c]
and.and.t %d1, %d14, 7, %d15, 24

# CHECK-INST: and.and.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0x47,0xfe,0x87,0x1f]
and.and.t %d1, %d14, 7, %d15, 31

# CHECK-INST: and.and.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x18,0x10]
and.and.t %d1, %d14, 24, %d0, 0

# CHECK-INST: and.and.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0x47,0x0e,0x98,0x13]
and.and.t %d1, %d14, 24, %d0, 7

# CHECK-INST: and.and.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x18,0x1c]
and.and.t %d1, %d14, 24, %d0, 24

# CHECK-INST: and.and.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0x47,0x0e,0x98,0x1f]
and.and.t %d1, %d14, 24, %d0, 31

# CHECK-INST: and.and.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x18,0x10]
and.and.t %d1, %d14, 24, %d1, 0

# CHECK-INST: and.and.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0x47,0x1e,0x98,0x13]
and.and.t %d1, %d14, 24, %d1, 7

# CHECK-INST: and.and.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x18,0x1c]
and.and.t %d1, %d14, 24, %d1, 24

# CHECK-INST: and.and.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0x47,0x1e,0x98,0x1f]
and.and.t %d1, %d14, 24, %d1, 31

# CHECK-INST: and.and.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0x47,0xee,0x18,0x10]
and.and.t %d1, %d14, 24, %d14, 0

# CHECK-INST: and.and.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0x47,0xee,0x98,0x13]
and.and.t %d1, %d14, 24, %d14, 7

# CHECK-INST: and.and.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0x47,0xee,0x18,0x1c]
and.and.t %d1, %d14, 24, %d14, 24

# CHECK-INST: and.and.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0x47,0xee,0x98,0x1f]
and.and.t %d1, %d14, 24, %d14, 31

# CHECK-INST: and.and.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x18,0x10]
and.and.t %d1, %d14, 24, %d15, 0

# CHECK-INST: and.and.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0x47,0xfe,0x98,0x13]
and.and.t %d1, %d14, 24, %d15, 7

# CHECK-INST: and.and.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x18,0x1c]
and.and.t %d1, %d14, 24, %d15, 24

# CHECK-INST: and.and.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0x47,0xfe,0x98,0x1f]
and.and.t %d1, %d14, 24, %d15, 31

# CHECK-INST: and.and.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x1f,0x10]
and.and.t %d1, %d14, 31, %d0, 0

# CHECK-INST: and.and.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0x47,0x0e,0x9f,0x13]
and.and.t %d1, %d14, 31, %d0, 7

# CHECK-INST: and.and.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x1f,0x1c]
and.and.t %d1, %d14, 31, %d0, 24

# CHECK-INST: and.and.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0x47,0x0e,0x9f,0x1f]
and.and.t %d1, %d14, 31, %d0, 31

# CHECK-INST: and.and.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x1f,0x10]
and.and.t %d1, %d14, 31, %d1, 0

# CHECK-INST: and.and.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0x47,0x1e,0x9f,0x13]
and.and.t %d1, %d14, 31, %d1, 7

# CHECK-INST: and.and.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x1f,0x1c]
and.and.t %d1, %d14, 31, %d1, 24

# CHECK-INST: and.and.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0x47,0x1e,0x9f,0x1f]
and.and.t %d1, %d14, 31, %d1, 31

# CHECK-INST: and.and.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0x47,0xee,0x1f,0x10]
and.and.t %d1, %d14, 31, %d14, 0

# CHECK-INST: and.and.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0x47,0xee,0x9f,0x13]
and.and.t %d1, %d14, 31, %d14, 7

# CHECK-INST: and.and.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0x47,0xee,0x1f,0x1c]
and.and.t %d1, %d14, 31, %d14, 24

# CHECK-INST: and.and.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0x47,0xee,0x9f,0x1f]
and.and.t %d1, %d14, 31, %d14, 31

# CHECK-INST: and.and.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x1f,0x10]
and.and.t %d1, %d14, 31, %d15, 0

# CHECK-INST: and.and.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0x47,0xfe,0x9f,0x13]
and.and.t %d1, %d14, 31, %d15, 7

# CHECK-INST: and.and.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x1f,0x1c]
and.and.t %d1, %d14, 31, %d15, 24

# CHECK-INST: and.and.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0x47,0xfe,0x9f,0x1f]
and.and.t %d1, %d14, 31, %d15, 31

# CHECK-INST: and.and.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x00,0x10]
and.and.t %d1, %d15, 0, %d0, 0

# CHECK-INST: and.and.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0x47,0x0f,0x80,0x13]
and.and.t %d1, %d15, 0, %d0, 7

# CHECK-INST: and.and.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x00,0x1c]
and.and.t %d1, %d15, 0, %d0, 24

# CHECK-INST: and.and.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0x47,0x0f,0x80,0x1f]
and.and.t %d1, %d15, 0, %d0, 31

# CHECK-INST: and.and.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x00,0x10]
and.and.t %d1, %d15, 0, %d1, 0

# CHECK-INST: and.and.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0x47,0x1f,0x80,0x13]
and.and.t %d1, %d15, 0, %d1, 7

# CHECK-INST: and.and.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x00,0x1c]
and.and.t %d1, %d15, 0, %d1, 24

# CHECK-INST: and.and.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0x47,0x1f,0x80,0x1f]
and.and.t %d1, %d15, 0, %d1, 31

# CHECK-INST: and.and.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0x47,0xef,0x00,0x10]
and.and.t %d1, %d15, 0, %d14, 0

# CHECK-INST: and.and.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0x47,0xef,0x80,0x13]
and.and.t %d1, %d15, 0, %d14, 7

# CHECK-INST: and.and.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0x47,0xef,0x00,0x1c]
and.and.t %d1, %d15, 0, %d14, 24

# CHECK-INST: and.and.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0x47,0xef,0x80,0x1f]
and.and.t %d1, %d15, 0, %d14, 31

# CHECK-INST: and.and.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0x47,0xff,0x00,0x10]
and.and.t %d1, %d15, 0, %d15, 0

# CHECK-INST: and.and.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0x47,0xff,0x80,0x13]
and.and.t %d1, %d15, 0, %d15, 7

# CHECK-INST: and.and.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0x47,0xff,0x00,0x1c]
and.and.t %d1, %d15, 0, %d15, 24

# CHECK-INST: and.and.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0x47,0xff,0x80,0x1f]
and.and.t %d1, %d15, 0, %d15, 31

# CHECK-INST: and.and.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x07,0x10]
and.and.t %d1, %d15, 7, %d0, 0

# CHECK-INST: and.and.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0x47,0x0f,0x87,0x13]
and.and.t %d1, %d15, 7, %d0, 7

# CHECK-INST: and.and.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x07,0x1c]
and.and.t %d1, %d15, 7, %d0, 24

# CHECK-INST: and.and.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0x47,0x0f,0x87,0x1f]
and.and.t %d1, %d15, 7, %d0, 31

# CHECK-INST: and.and.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x07,0x10]
and.and.t %d1, %d15, 7, %d1, 0

# CHECK-INST: and.and.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0x47,0x1f,0x87,0x13]
and.and.t %d1, %d15, 7, %d1, 7

# CHECK-INST: and.and.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x07,0x1c]
and.and.t %d1, %d15, 7, %d1, 24

# CHECK-INST: and.and.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0x47,0x1f,0x87,0x1f]
and.and.t %d1, %d15, 7, %d1, 31

# CHECK-INST: and.and.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0x47,0xef,0x07,0x10]
and.and.t %d1, %d15, 7, %d14, 0

# CHECK-INST: and.and.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0x47,0xef,0x87,0x13]
and.and.t %d1, %d15, 7, %d14, 7

# CHECK-INST: and.and.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0x47,0xef,0x07,0x1c]
and.and.t %d1, %d15, 7, %d14, 24

# CHECK-INST: and.and.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0x47,0xef,0x87,0x1f]
and.and.t %d1, %d15, 7, %d14, 31

# CHECK-INST: and.and.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0x47,0xff,0x07,0x10]
and.and.t %d1, %d15, 7, %d15, 0

# CHECK-INST: and.and.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0x47,0xff,0x87,0x13]
and.and.t %d1, %d15, 7, %d15, 7

# CHECK-INST: and.and.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0x47,0xff,0x07,0x1c]
and.and.t %d1, %d15, 7, %d15, 24

# CHECK-INST: and.and.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0x47,0xff,0x87,0x1f]
and.and.t %d1, %d15, 7, %d15, 31

# CHECK-INST: and.and.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x18,0x10]
and.and.t %d1, %d15, 24, %d0, 0

# CHECK-INST: and.and.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0x47,0x0f,0x98,0x13]
and.and.t %d1, %d15, 24, %d0, 7

# CHECK-INST: and.and.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x18,0x1c]
and.and.t %d1, %d15, 24, %d0, 24

# CHECK-INST: and.and.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0x47,0x0f,0x98,0x1f]
and.and.t %d1, %d15, 24, %d0, 31

# CHECK-INST: and.and.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x18,0x10]
and.and.t %d1, %d15, 24, %d1, 0

# CHECK-INST: and.and.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0x47,0x1f,0x98,0x13]
and.and.t %d1, %d15, 24, %d1, 7

# CHECK-INST: and.and.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x18,0x1c]
and.and.t %d1, %d15, 24, %d1, 24

# CHECK-INST: and.and.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0x47,0x1f,0x98,0x1f]
and.and.t %d1, %d15, 24, %d1, 31

# CHECK-INST: and.and.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0x47,0xef,0x18,0x10]
and.and.t %d1, %d15, 24, %d14, 0

# CHECK-INST: and.and.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0x47,0xef,0x98,0x13]
and.and.t %d1, %d15, 24, %d14, 7

# CHECK-INST: and.and.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0x47,0xef,0x18,0x1c]
and.and.t %d1, %d15, 24, %d14, 24

# CHECK-INST: and.and.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0x47,0xef,0x98,0x1f]
and.and.t %d1, %d15, 24, %d14, 31

# CHECK-INST: and.and.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0x47,0xff,0x18,0x10]
and.and.t %d1, %d15, 24, %d15, 0

# CHECK-INST: and.and.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0x47,0xff,0x98,0x13]
and.and.t %d1, %d15, 24, %d15, 7

# CHECK-INST: and.and.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0x47,0xff,0x18,0x1c]
and.and.t %d1, %d15, 24, %d15, 24

# CHECK-INST: and.and.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0x47,0xff,0x98,0x1f]
and.and.t %d1, %d15, 24, %d15, 31

# CHECK-INST: and.and.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x1f,0x10]
and.and.t %d1, %d15, 31, %d0, 0

# CHECK-INST: and.and.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0x47,0x0f,0x9f,0x13]
and.and.t %d1, %d15, 31, %d0, 7

# CHECK-INST: and.and.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x1f,0x1c]
and.and.t %d1, %d15, 31, %d0, 24

# CHECK-INST: and.and.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0x47,0x0f,0x9f,0x1f]
and.and.t %d1, %d15, 31, %d0, 31

# CHECK-INST: and.and.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x1f,0x10]
and.and.t %d1, %d15, 31, %d1, 0

# CHECK-INST: and.and.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0x47,0x1f,0x9f,0x13]
and.and.t %d1, %d15, 31, %d1, 7

# CHECK-INST: and.and.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x1f,0x1c]
and.and.t %d1, %d15, 31, %d1, 24

# CHECK-INST: and.and.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0x47,0x1f,0x9f,0x1f]
and.and.t %d1, %d15, 31, %d1, 31

# CHECK-INST: and.and.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0x47,0xef,0x1f,0x10]
and.and.t %d1, %d15, 31, %d14, 0

# CHECK-INST: and.and.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0x47,0xef,0x9f,0x13]
and.and.t %d1, %d15, 31, %d14, 7

# CHECK-INST: and.and.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0x47,0xef,0x1f,0x1c]
and.and.t %d1, %d15, 31, %d14, 24

# CHECK-INST: and.and.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0x47,0xef,0x9f,0x1f]
and.and.t %d1, %d15, 31, %d14, 31

# CHECK-INST: and.and.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0x47,0xff,0x1f,0x10]
and.and.t %d1, %d15, 31, %d15, 0

# CHECK-INST: and.and.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0x47,0xff,0x9f,0x13]
and.and.t %d1, %d15, 31, %d15, 7

# CHECK-INST: and.and.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0x47,0xff,0x1f,0x1c]
and.and.t %d1, %d15, 31, %d15, 24

# CHECK-INST: and.and.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0x47,0xff,0x9f,0x1f]
and.and.t %d1, %d15, 31, %d15, 31

# CHECK-INST: and.and.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0x47,0x00,0x00,0xe0]
and.and.t %d14, %d0, 0, %d0, 0

# CHECK-INST: and.and.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0x47,0x00,0x80,0xe3]
and.and.t %d14, %d0, 0, %d0, 7

# CHECK-INST: and.and.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0x47,0x00,0x00,0xec]
and.and.t %d14, %d0, 0, %d0, 24

# CHECK-INST: and.and.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0x47,0x00,0x80,0xef]
and.and.t %d14, %d0, 0, %d0, 31

# CHECK-INST: and.and.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0x47,0x10,0x00,0xe0]
and.and.t %d14, %d0, 0, %d1, 0

# CHECK-INST: and.and.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0x47,0x10,0x80,0xe3]
and.and.t %d14, %d0, 0, %d1, 7

# CHECK-INST: and.and.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0x47,0x10,0x00,0xec]
and.and.t %d14, %d0, 0, %d1, 24

# CHECK-INST: and.and.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0x47,0x10,0x80,0xef]
and.and.t %d14, %d0, 0, %d1, 31

# CHECK-INST: and.and.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x00,0xe0]
and.and.t %d14, %d0, 0, %d14, 0

# CHECK-INST: and.and.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0x47,0xe0,0x80,0xe3]
and.and.t %d14, %d0, 0, %d14, 7

# CHECK-INST: and.and.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x00,0xec]
and.and.t %d14, %d0, 0, %d14, 24

# CHECK-INST: and.and.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0x47,0xe0,0x80,0xef]
and.and.t %d14, %d0, 0, %d14, 31

# CHECK-INST: and.and.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x00,0xe0]
and.and.t %d14, %d0, 0, %d15, 0

# CHECK-INST: and.and.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0x47,0xf0,0x80,0xe3]
and.and.t %d14, %d0, 0, %d15, 7

# CHECK-INST: and.and.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x00,0xec]
and.and.t %d14, %d0, 0, %d15, 24

# CHECK-INST: and.and.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0x47,0xf0,0x80,0xef]
and.and.t %d14, %d0, 0, %d15, 31

# CHECK-INST: and.and.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0x47,0x00,0x07,0xe0]
and.and.t %d14, %d0, 7, %d0, 0

# CHECK-INST: and.and.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0x47,0x00,0x87,0xe3]
and.and.t %d14, %d0, 7, %d0, 7

# CHECK-INST: and.and.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0x47,0x00,0x07,0xec]
and.and.t %d14, %d0, 7, %d0, 24

# CHECK-INST: and.and.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0x47,0x00,0x87,0xef]
and.and.t %d14, %d0, 7, %d0, 31

# CHECK-INST: and.and.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0x47,0x10,0x07,0xe0]
and.and.t %d14, %d0, 7, %d1, 0

# CHECK-INST: and.and.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0x47,0x10,0x87,0xe3]
and.and.t %d14, %d0, 7, %d1, 7

# CHECK-INST: and.and.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0x47,0x10,0x07,0xec]
and.and.t %d14, %d0, 7, %d1, 24

# CHECK-INST: and.and.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0x47,0x10,0x87,0xef]
and.and.t %d14, %d0, 7, %d1, 31

# CHECK-INST: and.and.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x07,0xe0]
and.and.t %d14, %d0, 7, %d14, 0

# CHECK-INST: and.and.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0x47,0xe0,0x87,0xe3]
and.and.t %d14, %d0, 7, %d14, 7

# CHECK-INST: and.and.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x07,0xec]
and.and.t %d14, %d0, 7, %d14, 24

# CHECK-INST: and.and.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0x47,0xe0,0x87,0xef]
and.and.t %d14, %d0, 7, %d14, 31

# CHECK-INST: and.and.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x07,0xe0]
and.and.t %d14, %d0, 7, %d15, 0

# CHECK-INST: and.and.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0x47,0xf0,0x87,0xe3]
and.and.t %d14, %d0, 7, %d15, 7

# CHECK-INST: and.and.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x07,0xec]
and.and.t %d14, %d0, 7, %d15, 24

# CHECK-INST: and.and.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0x47,0xf0,0x87,0xef]
and.and.t %d14, %d0, 7, %d15, 31

# CHECK-INST: and.and.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0x47,0x00,0x18,0xe0]
and.and.t %d14, %d0, 24, %d0, 0

# CHECK-INST: and.and.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0x47,0x00,0x98,0xe3]
and.and.t %d14, %d0, 24, %d0, 7

# CHECK-INST: and.and.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0x47,0x00,0x18,0xec]
and.and.t %d14, %d0, 24, %d0, 24

# CHECK-INST: and.and.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0x47,0x00,0x98,0xef]
and.and.t %d14, %d0, 24, %d0, 31

# CHECK-INST: and.and.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0x47,0x10,0x18,0xe0]
and.and.t %d14, %d0, 24, %d1, 0

# CHECK-INST: and.and.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0x47,0x10,0x98,0xe3]
and.and.t %d14, %d0, 24, %d1, 7

# CHECK-INST: and.and.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0x47,0x10,0x18,0xec]
and.and.t %d14, %d0, 24, %d1, 24

# CHECK-INST: and.and.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0x47,0x10,0x98,0xef]
and.and.t %d14, %d0, 24, %d1, 31

# CHECK-INST: and.and.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x18,0xe0]
and.and.t %d14, %d0, 24, %d14, 0

# CHECK-INST: and.and.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0x47,0xe0,0x98,0xe3]
and.and.t %d14, %d0, 24, %d14, 7

# CHECK-INST: and.and.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x18,0xec]
and.and.t %d14, %d0, 24, %d14, 24

# CHECK-INST: and.and.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0x47,0xe0,0x98,0xef]
and.and.t %d14, %d0, 24, %d14, 31

# CHECK-INST: and.and.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x18,0xe0]
and.and.t %d14, %d0, 24, %d15, 0

# CHECK-INST: and.and.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0x47,0xf0,0x98,0xe3]
and.and.t %d14, %d0, 24, %d15, 7

# CHECK-INST: and.and.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x18,0xec]
and.and.t %d14, %d0, 24, %d15, 24

# CHECK-INST: and.and.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0x47,0xf0,0x98,0xef]
and.and.t %d14, %d0, 24, %d15, 31

# CHECK-INST: and.and.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0x47,0x00,0x1f,0xe0]
and.and.t %d14, %d0, 31, %d0, 0

# CHECK-INST: and.and.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0x47,0x00,0x9f,0xe3]
and.and.t %d14, %d0, 31, %d0, 7

# CHECK-INST: and.and.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0x47,0x00,0x1f,0xec]
and.and.t %d14, %d0, 31, %d0, 24

# CHECK-INST: and.and.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0x47,0x00,0x9f,0xef]
and.and.t %d14, %d0, 31, %d0, 31

# CHECK-INST: and.and.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0x47,0x10,0x1f,0xe0]
and.and.t %d14, %d0, 31, %d1, 0

# CHECK-INST: and.and.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0x47,0x10,0x9f,0xe3]
and.and.t %d14, %d0, 31, %d1, 7

# CHECK-INST: and.and.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0x47,0x10,0x1f,0xec]
and.and.t %d14, %d0, 31, %d1, 24

# CHECK-INST: and.and.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0x47,0x10,0x9f,0xef]
and.and.t %d14, %d0, 31, %d1, 31

# CHECK-INST: and.and.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x1f,0xe0]
and.and.t %d14, %d0, 31, %d14, 0

# CHECK-INST: and.and.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0x47,0xe0,0x9f,0xe3]
and.and.t %d14, %d0, 31, %d14, 7

# CHECK-INST: and.and.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x1f,0xec]
and.and.t %d14, %d0, 31, %d14, 24

# CHECK-INST: and.and.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0x47,0xe0,0x9f,0xef]
and.and.t %d14, %d0, 31, %d14, 31

# CHECK-INST: and.and.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x1f,0xe0]
and.and.t %d14, %d0, 31, %d15, 0

# CHECK-INST: and.and.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0x47,0xf0,0x9f,0xe3]
and.and.t %d14, %d0, 31, %d15, 7

# CHECK-INST: and.and.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x1f,0xec]
and.and.t %d14, %d0, 31, %d15, 24

# CHECK-INST: and.and.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0x47,0xf0,0x9f,0xef]
and.and.t %d14, %d0, 31, %d15, 31

# CHECK-INST: and.and.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0x47,0x01,0x00,0xe0]
and.and.t %d14, %d1, 0, %d0, 0

# CHECK-INST: and.and.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0x47,0x01,0x80,0xe3]
and.and.t %d14, %d1, 0, %d0, 7

# CHECK-INST: and.and.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0x47,0x01,0x00,0xec]
and.and.t %d14, %d1, 0, %d0, 24

# CHECK-INST: and.and.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0x47,0x01,0x80,0xef]
and.and.t %d14, %d1, 0, %d0, 31

# CHECK-INST: and.and.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0x47,0x11,0x00,0xe0]
and.and.t %d14, %d1, 0, %d1, 0

# CHECK-INST: and.and.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0x47,0x11,0x80,0xe3]
and.and.t %d14, %d1, 0, %d1, 7

# CHECK-INST: and.and.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0x47,0x11,0x00,0xec]
and.and.t %d14, %d1, 0, %d1, 24

# CHECK-INST: and.and.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0x47,0x11,0x80,0xef]
and.and.t %d14, %d1, 0, %d1, 31

# CHECK-INST: and.and.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x00,0xe0]
and.and.t %d14, %d1, 0, %d14, 0

# CHECK-INST: and.and.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0x47,0xe1,0x80,0xe3]
and.and.t %d14, %d1, 0, %d14, 7

# CHECK-INST: and.and.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x00,0xec]
and.and.t %d14, %d1, 0, %d14, 24

# CHECK-INST: and.and.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0x47,0xe1,0x80,0xef]
and.and.t %d14, %d1, 0, %d14, 31

# CHECK-INST: and.and.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x00,0xe0]
and.and.t %d14, %d1, 0, %d15, 0

# CHECK-INST: and.and.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0x47,0xf1,0x80,0xe3]
and.and.t %d14, %d1, 0, %d15, 7

# CHECK-INST: and.and.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x00,0xec]
and.and.t %d14, %d1, 0, %d15, 24

# CHECK-INST: and.and.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0x47,0xf1,0x80,0xef]
and.and.t %d14, %d1, 0, %d15, 31

# CHECK-INST: and.and.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0x47,0x01,0x07,0xe0]
and.and.t %d14, %d1, 7, %d0, 0

# CHECK-INST: and.and.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0x47,0x01,0x87,0xe3]
and.and.t %d14, %d1, 7, %d0, 7

# CHECK-INST: and.and.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0x47,0x01,0x07,0xec]
and.and.t %d14, %d1, 7, %d0, 24

# CHECK-INST: and.and.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0x47,0x01,0x87,0xef]
and.and.t %d14, %d1, 7, %d0, 31

# CHECK-INST: and.and.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0x47,0x11,0x07,0xe0]
and.and.t %d14, %d1, 7, %d1, 0

# CHECK-INST: and.and.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0x47,0x11,0x87,0xe3]
and.and.t %d14, %d1, 7, %d1, 7

# CHECK-INST: and.and.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0x47,0x11,0x07,0xec]
and.and.t %d14, %d1, 7, %d1, 24

# CHECK-INST: and.and.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0x47,0x11,0x87,0xef]
and.and.t %d14, %d1, 7, %d1, 31

# CHECK-INST: and.and.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x07,0xe0]
and.and.t %d14, %d1, 7, %d14, 0

# CHECK-INST: and.and.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0x47,0xe1,0x87,0xe3]
and.and.t %d14, %d1, 7, %d14, 7

# CHECK-INST: and.and.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x07,0xec]
and.and.t %d14, %d1, 7, %d14, 24

# CHECK-INST: and.and.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0x47,0xe1,0x87,0xef]
and.and.t %d14, %d1, 7, %d14, 31

# CHECK-INST: and.and.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x07,0xe0]
and.and.t %d14, %d1, 7, %d15, 0

# CHECK-INST: and.and.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0x47,0xf1,0x87,0xe3]
and.and.t %d14, %d1, 7, %d15, 7

# CHECK-INST: and.and.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x07,0xec]
and.and.t %d14, %d1, 7, %d15, 24

# CHECK-INST: and.and.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0x47,0xf1,0x87,0xef]
and.and.t %d14, %d1, 7, %d15, 31

# CHECK-INST: and.and.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0x47,0x01,0x18,0xe0]
and.and.t %d14, %d1, 24, %d0, 0

# CHECK-INST: and.and.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0x47,0x01,0x98,0xe3]
and.and.t %d14, %d1, 24, %d0, 7

# CHECK-INST: and.and.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0x47,0x01,0x18,0xec]
and.and.t %d14, %d1, 24, %d0, 24

# CHECK-INST: and.and.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0x47,0x01,0x98,0xef]
and.and.t %d14, %d1, 24, %d0, 31

# CHECK-INST: and.and.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0x47,0x11,0x18,0xe0]
and.and.t %d14, %d1, 24, %d1, 0

# CHECK-INST: and.and.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0x47,0x11,0x98,0xe3]
and.and.t %d14, %d1, 24, %d1, 7

# CHECK-INST: and.and.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0x47,0x11,0x18,0xec]
and.and.t %d14, %d1, 24, %d1, 24

# CHECK-INST: and.and.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0x47,0x11,0x98,0xef]
and.and.t %d14, %d1, 24, %d1, 31

# CHECK-INST: and.and.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x18,0xe0]
and.and.t %d14, %d1, 24, %d14, 0

# CHECK-INST: and.and.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0x47,0xe1,0x98,0xe3]
and.and.t %d14, %d1, 24, %d14, 7

# CHECK-INST: and.and.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x18,0xec]
and.and.t %d14, %d1, 24, %d14, 24

# CHECK-INST: and.and.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0x47,0xe1,0x98,0xef]
and.and.t %d14, %d1, 24, %d14, 31

# CHECK-INST: and.and.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x18,0xe0]
and.and.t %d14, %d1, 24, %d15, 0

# CHECK-INST: and.and.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0x47,0xf1,0x98,0xe3]
and.and.t %d14, %d1, 24, %d15, 7

# CHECK-INST: and.and.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x18,0xec]
and.and.t %d14, %d1, 24, %d15, 24

# CHECK-INST: and.and.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0x47,0xf1,0x98,0xef]
and.and.t %d14, %d1, 24, %d15, 31

# CHECK-INST: and.and.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0x47,0x01,0x1f,0xe0]
and.and.t %d14, %d1, 31, %d0, 0

# CHECK-INST: and.and.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0x47,0x01,0x9f,0xe3]
and.and.t %d14, %d1, 31, %d0, 7

# CHECK-INST: and.and.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0x47,0x01,0x1f,0xec]
and.and.t %d14, %d1, 31, %d0, 24

# CHECK-INST: and.and.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0x47,0x01,0x9f,0xef]
and.and.t %d14, %d1, 31, %d0, 31

# CHECK-INST: and.and.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0x47,0x11,0x1f,0xe0]
and.and.t %d14, %d1, 31, %d1, 0

# CHECK-INST: and.and.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0x47,0x11,0x9f,0xe3]
and.and.t %d14, %d1, 31, %d1, 7

# CHECK-INST: and.and.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0x47,0x11,0x1f,0xec]
and.and.t %d14, %d1, 31, %d1, 24

# CHECK-INST: and.and.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0x47,0x11,0x9f,0xef]
and.and.t %d14, %d1, 31, %d1, 31

# CHECK-INST: and.and.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x1f,0xe0]
and.and.t %d14, %d1, 31, %d14, 0

# CHECK-INST: and.and.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0x47,0xe1,0x9f,0xe3]
and.and.t %d14, %d1, 31, %d14, 7

# CHECK-INST: and.and.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x1f,0xec]
and.and.t %d14, %d1, 31, %d14, 24

# CHECK-INST: and.and.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0x47,0xe1,0x9f,0xef]
and.and.t %d14, %d1, 31, %d14, 31

# CHECK-INST: and.and.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x1f,0xe0]
and.and.t %d14, %d1, 31, %d15, 0

# CHECK-INST: and.and.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0x47,0xf1,0x9f,0xe3]
and.and.t %d14, %d1, 31, %d15, 7

# CHECK-INST: and.and.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x1f,0xec]
and.and.t %d14, %d1, 31, %d15, 24

# CHECK-INST: and.and.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0x47,0xf1,0x9f,0xef]
and.and.t %d14, %d1, 31, %d15, 31

# CHECK-INST: and.and.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x00,0xe0]
and.and.t %d14, %d14, 0, %d0, 0

# CHECK-INST: and.and.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0x47,0x0e,0x80,0xe3]
and.and.t %d14, %d14, 0, %d0, 7

# CHECK-INST: and.and.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x00,0xec]
and.and.t %d14, %d14, 0, %d0, 24

# CHECK-INST: and.and.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0x47,0x0e,0x80,0xef]
and.and.t %d14, %d14, 0, %d0, 31

# CHECK-INST: and.and.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x00,0xe0]
and.and.t %d14, %d14, 0, %d1, 0

# CHECK-INST: and.and.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0x47,0x1e,0x80,0xe3]
and.and.t %d14, %d14, 0, %d1, 7

# CHECK-INST: and.and.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x00,0xec]
and.and.t %d14, %d14, 0, %d1, 24

# CHECK-INST: and.and.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0x47,0x1e,0x80,0xef]
and.and.t %d14, %d14, 0, %d1, 31

# CHECK-INST: and.and.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0x47,0xee,0x00,0xe0]
and.and.t %d14, %d14, 0, %d14, 0

# CHECK-INST: and.and.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0x47,0xee,0x80,0xe3]
and.and.t %d14, %d14, 0, %d14, 7

# CHECK-INST: and.and.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0x47,0xee,0x00,0xec]
and.and.t %d14, %d14, 0, %d14, 24

# CHECK-INST: and.and.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0x47,0xee,0x80,0xef]
and.and.t %d14, %d14, 0, %d14, 31

# CHECK-INST: and.and.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x00,0xe0]
and.and.t %d14, %d14, 0, %d15, 0

# CHECK-INST: and.and.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0x47,0xfe,0x80,0xe3]
and.and.t %d14, %d14, 0, %d15, 7

# CHECK-INST: and.and.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x00,0xec]
and.and.t %d14, %d14, 0, %d15, 24

# CHECK-INST: and.and.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0x47,0xfe,0x80,0xef]
and.and.t %d14, %d14, 0, %d15, 31

# CHECK-INST: and.and.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x07,0xe0]
and.and.t %d14, %d14, 7, %d0, 0

# CHECK-INST: and.and.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0x47,0x0e,0x87,0xe3]
and.and.t %d14, %d14, 7, %d0, 7

# CHECK-INST: and.and.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x07,0xec]
and.and.t %d14, %d14, 7, %d0, 24

# CHECK-INST: and.and.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0x47,0x0e,0x87,0xef]
and.and.t %d14, %d14, 7, %d0, 31

# CHECK-INST: and.and.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x07,0xe0]
and.and.t %d14, %d14, 7, %d1, 0

# CHECK-INST: and.and.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0x47,0x1e,0x87,0xe3]
and.and.t %d14, %d14, 7, %d1, 7

# CHECK-INST: and.and.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x07,0xec]
and.and.t %d14, %d14, 7, %d1, 24

# CHECK-INST: and.and.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0x47,0x1e,0x87,0xef]
and.and.t %d14, %d14, 7, %d1, 31

# CHECK-INST: and.and.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0x47,0xee,0x07,0xe0]
and.and.t %d14, %d14, 7, %d14, 0

# CHECK-INST: and.and.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0x47,0xee,0x87,0xe3]
and.and.t %d14, %d14, 7, %d14, 7

# CHECK-INST: and.and.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0x47,0xee,0x07,0xec]
and.and.t %d14, %d14, 7, %d14, 24

# CHECK-INST: and.and.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0x47,0xee,0x87,0xef]
and.and.t %d14, %d14, 7, %d14, 31

# CHECK-INST: and.and.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x07,0xe0]
and.and.t %d14, %d14, 7, %d15, 0

# CHECK-INST: and.and.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0x47,0xfe,0x87,0xe3]
and.and.t %d14, %d14, 7, %d15, 7

# CHECK-INST: and.and.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x07,0xec]
and.and.t %d14, %d14, 7, %d15, 24

# CHECK-INST: and.and.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0x47,0xfe,0x87,0xef]
and.and.t %d14, %d14, 7, %d15, 31

# CHECK-INST: and.and.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x18,0xe0]
and.and.t %d14, %d14, 24, %d0, 0

# CHECK-INST: and.and.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0x47,0x0e,0x98,0xe3]
and.and.t %d14, %d14, 24, %d0, 7

# CHECK-INST: and.and.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x18,0xec]
and.and.t %d14, %d14, 24, %d0, 24

# CHECK-INST: and.and.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0x47,0x0e,0x98,0xef]
and.and.t %d14, %d14, 24, %d0, 31

# CHECK-INST: and.and.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x18,0xe0]
and.and.t %d14, %d14, 24, %d1, 0

# CHECK-INST: and.and.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0x47,0x1e,0x98,0xe3]
and.and.t %d14, %d14, 24, %d1, 7

# CHECK-INST: and.and.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x18,0xec]
and.and.t %d14, %d14, 24, %d1, 24

# CHECK-INST: and.and.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0x47,0x1e,0x98,0xef]
and.and.t %d14, %d14, 24, %d1, 31

# CHECK-INST: and.and.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0x47,0xee,0x18,0xe0]
and.and.t %d14, %d14, 24, %d14, 0

# CHECK-INST: and.and.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0x47,0xee,0x98,0xe3]
and.and.t %d14, %d14, 24, %d14, 7

# CHECK-INST: and.and.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0x47,0xee,0x18,0xec]
and.and.t %d14, %d14, 24, %d14, 24

# CHECK-INST: and.and.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0x47,0xee,0x98,0xef]
and.and.t %d14, %d14, 24, %d14, 31

# CHECK-INST: and.and.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x18,0xe0]
and.and.t %d14, %d14, 24, %d15, 0

# CHECK-INST: and.and.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0x47,0xfe,0x98,0xe3]
and.and.t %d14, %d14, 24, %d15, 7

# CHECK-INST: and.and.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x18,0xec]
and.and.t %d14, %d14, 24, %d15, 24

# CHECK-INST: and.and.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0x47,0xfe,0x98,0xef]
and.and.t %d14, %d14, 24, %d15, 31

# CHECK-INST: and.and.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x1f,0xe0]
and.and.t %d14, %d14, 31, %d0, 0

# CHECK-INST: and.and.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0x47,0x0e,0x9f,0xe3]
and.and.t %d14, %d14, 31, %d0, 7

# CHECK-INST: and.and.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x1f,0xec]
and.and.t %d14, %d14, 31, %d0, 24

# CHECK-INST: and.and.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0x47,0x0e,0x9f,0xef]
and.and.t %d14, %d14, 31, %d0, 31

# CHECK-INST: and.and.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x1f,0xe0]
and.and.t %d14, %d14, 31, %d1, 0

# CHECK-INST: and.and.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0x47,0x1e,0x9f,0xe3]
and.and.t %d14, %d14, 31, %d1, 7

# CHECK-INST: and.and.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x1f,0xec]
and.and.t %d14, %d14, 31, %d1, 24

# CHECK-INST: and.and.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0x47,0x1e,0x9f,0xef]
and.and.t %d14, %d14, 31, %d1, 31

# CHECK-INST: and.and.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0x47,0xee,0x1f,0xe0]
and.and.t %d14, %d14, 31, %d14, 0

# CHECK-INST: and.and.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0x47,0xee,0x9f,0xe3]
and.and.t %d14, %d14, 31, %d14, 7

# CHECK-INST: and.and.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0x47,0xee,0x1f,0xec]
and.and.t %d14, %d14, 31, %d14, 24

# CHECK-INST: and.and.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0x47,0xee,0x9f,0xef]
and.and.t %d14, %d14, 31, %d14, 31

# CHECK-INST: and.and.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x1f,0xe0]
and.and.t %d14, %d14, 31, %d15, 0

# CHECK-INST: and.and.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0x47,0xfe,0x9f,0xe3]
and.and.t %d14, %d14, 31, %d15, 7

# CHECK-INST: and.and.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x1f,0xec]
and.and.t %d14, %d14, 31, %d15, 24

# CHECK-INST: and.and.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0x47,0xfe,0x9f,0xef]
and.and.t %d14, %d14, 31, %d15, 31

# CHECK-INST: and.and.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x00,0xe0]
and.and.t %d14, %d15, 0, %d0, 0

# CHECK-INST: and.and.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0x47,0x0f,0x80,0xe3]
and.and.t %d14, %d15, 0, %d0, 7

# CHECK-INST: and.and.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x00,0xec]
and.and.t %d14, %d15, 0, %d0, 24

# CHECK-INST: and.and.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0x47,0x0f,0x80,0xef]
and.and.t %d14, %d15, 0, %d0, 31

# CHECK-INST: and.and.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x00,0xe0]
and.and.t %d14, %d15, 0, %d1, 0

# CHECK-INST: and.and.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0x47,0x1f,0x80,0xe3]
and.and.t %d14, %d15, 0, %d1, 7

# CHECK-INST: and.and.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x00,0xec]
and.and.t %d14, %d15, 0, %d1, 24

# CHECK-INST: and.and.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0x47,0x1f,0x80,0xef]
and.and.t %d14, %d15, 0, %d1, 31

# CHECK-INST: and.and.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0x47,0xef,0x00,0xe0]
and.and.t %d14, %d15, 0, %d14, 0

# CHECK-INST: and.and.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0x47,0xef,0x80,0xe3]
and.and.t %d14, %d15, 0, %d14, 7

# CHECK-INST: and.and.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0x47,0xef,0x00,0xec]
and.and.t %d14, %d15, 0, %d14, 24

# CHECK-INST: and.and.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0x47,0xef,0x80,0xef]
and.and.t %d14, %d15, 0, %d14, 31

# CHECK-INST: and.and.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0x47,0xff,0x00,0xe0]
and.and.t %d14, %d15, 0, %d15, 0

# CHECK-INST: and.and.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0x47,0xff,0x80,0xe3]
and.and.t %d14, %d15, 0, %d15, 7

# CHECK-INST: and.and.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0x47,0xff,0x00,0xec]
and.and.t %d14, %d15, 0, %d15, 24

# CHECK-INST: and.and.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0x47,0xff,0x80,0xef]
and.and.t %d14, %d15, 0, %d15, 31

# CHECK-INST: and.and.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x07,0xe0]
and.and.t %d14, %d15, 7, %d0, 0

# CHECK-INST: and.and.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0x47,0x0f,0x87,0xe3]
and.and.t %d14, %d15, 7, %d0, 7

# CHECK-INST: and.and.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x07,0xec]
and.and.t %d14, %d15, 7, %d0, 24

# CHECK-INST: and.and.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0x47,0x0f,0x87,0xef]
and.and.t %d14, %d15, 7, %d0, 31

# CHECK-INST: and.and.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x07,0xe0]
and.and.t %d14, %d15, 7, %d1, 0

# CHECK-INST: and.and.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0x47,0x1f,0x87,0xe3]
and.and.t %d14, %d15, 7, %d1, 7

# CHECK-INST: and.and.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x07,0xec]
and.and.t %d14, %d15, 7, %d1, 24

# CHECK-INST: and.and.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0x47,0x1f,0x87,0xef]
and.and.t %d14, %d15, 7, %d1, 31

# CHECK-INST: and.and.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0x47,0xef,0x07,0xe0]
and.and.t %d14, %d15, 7, %d14, 0

# CHECK-INST: and.and.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0x47,0xef,0x87,0xe3]
and.and.t %d14, %d15, 7, %d14, 7

# CHECK-INST: and.and.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0x47,0xef,0x07,0xec]
and.and.t %d14, %d15, 7, %d14, 24

# CHECK-INST: and.and.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0x47,0xef,0x87,0xef]
and.and.t %d14, %d15, 7, %d14, 31

# CHECK-INST: and.and.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0x47,0xff,0x07,0xe0]
and.and.t %d14, %d15, 7, %d15, 0

# CHECK-INST: and.and.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0x47,0xff,0x87,0xe3]
and.and.t %d14, %d15, 7, %d15, 7

# CHECK-INST: and.and.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0x47,0xff,0x07,0xec]
and.and.t %d14, %d15, 7, %d15, 24

# CHECK-INST: and.and.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0x47,0xff,0x87,0xef]
and.and.t %d14, %d15, 7, %d15, 31

# CHECK-INST: and.and.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x18,0xe0]
and.and.t %d14, %d15, 24, %d0, 0

# CHECK-INST: and.and.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0x47,0x0f,0x98,0xe3]
and.and.t %d14, %d15, 24, %d0, 7

# CHECK-INST: and.and.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x18,0xec]
and.and.t %d14, %d15, 24, %d0, 24

# CHECK-INST: and.and.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0x47,0x0f,0x98,0xef]
and.and.t %d14, %d15, 24, %d0, 31

# CHECK-INST: and.and.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x18,0xe0]
and.and.t %d14, %d15, 24, %d1, 0

# CHECK-INST: and.and.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0x47,0x1f,0x98,0xe3]
and.and.t %d14, %d15, 24, %d1, 7

# CHECK-INST: and.and.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x18,0xec]
and.and.t %d14, %d15, 24, %d1, 24

# CHECK-INST: and.and.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0x47,0x1f,0x98,0xef]
and.and.t %d14, %d15, 24, %d1, 31

# CHECK-INST: and.and.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0x47,0xef,0x18,0xe0]
and.and.t %d14, %d15, 24, %d14, 0

# CHECK-INST: and.and.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0x47,0xef,0x98,0xe3]
and.and.t %d14, %d15, 24, %d14, 7

# CHECK-INST: and.and.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0x47,0xef,0x18,0xec]
and.and.t %d14, %d15, 24, %d14, 24

# CHECK-INST: and.and.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0x47,0xef,0x98,0xef]
and.and.t %d14, %d15, 24, %d14, 31

# CHECK-INST: and.and.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0x47,0xff,0x18,0xe0]
and.and.t %d14, %d15, 24, %d15, 0

# CHECK-INST: and.and.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0x47,0xff,0x98,0xe3]
and.and.t %d14, %d15, 24, %d15, 7

# CHECK-INST: and.and.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0x47,0xff,0x18,0xec]
and.and.t %d14, %d15, 24, %d15, 24

# CHECK-INST: and.and.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0x47,0xff,0x98,0xef]
and.and.t %d14, %d15, 24, %d15, 31

# CHECK-INST: and.and.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x1f,0xe0]
and.and.t %d14, %d15, 31, %d0, 0

# CHECK-INST: and.and.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0x47,0x0f,0x9f,0xe3]
and.and.t %d14, %d15, 31, %d0, 7

# CHECK-INST: and.and.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x1f,0xec]
and.and.t %d14, %d15, 31, %d0, 24

# CHECK-INST: and.and.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0x47,0x0f,0x9f,0xef]
and.and.t %d14, %d15, 31, %d0, 31

# CHECK-INST: and.and.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x1f,0xe0]
and.and.t %d14, %d15, 31, %d1, 0

# CHECK-INST: and.and.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0x47,0x1f,0x9f,0xe3]
and.and.t %d14, %d15, 31, %d1, 7

# CHECK-INST: and.and.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x1f,0xec]
and.and.t %d14, %d15, 31, %d1, 24

# CHECK-INST: and.and.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0x47,0x1f,0x9f,0xef]
and.and.t %d14, %d15, 31, %d1, 31

# CHECK-INST: and.and.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0x47,0xef,0x1f,0xe0]
and.and.t %d14, %d15, 31, %d14, 0

# CHECK-INST: and.and.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0x47,0xef,0x9f,0xe3]
and.and.t %d14, %d15, 31, %d14, 7

# CHECK-INST: and.and.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0x47,0xef,0x1f,0xec]
and.and.t %d14, %d15, 31, %d14, 24

# CHECK-INST: and.and.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0x47,0xef,0x9f,0xef]
and.and.t %d14, %d15, 31, %d14, 31

# CHECK-INST: and.and.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0x47,0xff,0x1f,0xe0]
and.and.t %d14, %d15, 31, %d15, 0

# CHECK-INST: and.and.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0x47,0xff,0x9f,0xe3]
and.and.t %d14, %d15, 31, %d15, 7

# CHECK-INST: and.and.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0x47,0xff,0x1f,0xec]
and.and.t %d14, %d15, 31, %d15, 24

# CHECK-INST: and.and.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0x47,0xff,0x9f,0xef]
and.and.t %d14, %d15, 31, %d15, 31

# CHECK-INST: and.and.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0x47,0x00,0x00,0xf0]
and.and.t %d15, %d0, 0, %d0, 0

# CHECK-INST: and.and.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0x47,0x00,0x80,0xf3]
and.and.t %d15, %d0, 0, %d0, 7

# CHECK-INST: and.and.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0x47,0x00,0x00,0xfc]
and.and.t %d15, %d0, 0, %d0, 24

# CHECK-INST: and.and.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0x47,0x00,0x80,0xff]
and.and.t %d15, %d0, 0, %d0, 31

# CHECK-INST: and.and.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0x47,0x10,0x00,0xf0]
and.and.t %d15, %d0, 0, %d1, 0

# CHECK-INST: and.and.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0x47,0x10,0x80,0xf3]
and.and.t %d15, %d0, 0, %d1, 7

# CHECK-INST: and.and.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0x47,0x10,0x00,0xfc]
and.and.t %d15, %d0, 0, %d1, 24

# CHECK-INST: and.and.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0x47,0x10,0x80,0xff]
and.and.t %d15, %d0, 0, %d1, 31

# CHECK-INST: and.and.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x00,0xf0]
and.and.t %d15, %d0, 0, %d14, 0

# CHECK-INST: and.and.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0x47,0xe0,0x80,0xf3]
and.and.t %d15, %d0, 0, %d14, 7

# CHECK-INST: and.and.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x00,0xfc]
and.and.t %d15, %d0, 0, %d14, 24

# CHECK-INST: and.and.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0x47,0xe0,0x80,0xff]
and.and.t %d15, %d0, 0, %d14, 31

# CHECK-INST: and.and.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x00,0xf0]
and.and.t %d15, %d0, 0, %d15, 0

# CHECK-INST: and.and.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0x47,0xf0,0x80,0xf3]
and.and.t %d15, %d0, 0, %d15, 7

# CHECK-INST: and.and.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x00,0xfc]
and.and.t %d15, %d0, 0, %d15, 24

# CHECK-INST: and.and.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0x47,0xf0,0x80,0xff]
and.and.t %d15, %d0, 0, %d15, 31

# CHECK-INST: and.and.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0x47,0x00,0x07,0xf0]
and.and.t %d15, %d0, 7, %d0, 0

# CHECK-INST: and.and.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0x47,0x00,0x87,0xf3]
and.and.t %d15, %d0, 7, %d0, 7

# CHECK-INST: and.and.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0x47,0x00,0x07,0xfc]
and.and.t %d15, %d0, 7, %d0, 24

# CHECK-INST: and.and.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0x47,0x00,0x87,0xff]
and.and.t %d15, %d0, 7, %d0, 31

# CHECK-INST: and.and.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0x47,0x10,0x07,0xf0]
and.and.t %d15, %d0, 7, %d1, 0

# CHECK-INST: and.and.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0x47,0x10,0x87,0xf3]
and.and.t %d15, %d0, 7, %d1, 7

# CHECK-INST: and.and.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0x47,0x10,0x07,0xfc]
and.and.t %d15, %d0, 7, %d1, 24

# CHECK-INST: and.and.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0x47,0x10,0x87,0xff]
and.and.t %d15, %d0, 7, %d1, 31

# CHECK-INST: and.and.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x07,0xf0]
and.and.t %d15, %d0, 7, %d14, 0

# CHECK-INST: and.and.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0x47,0xe0,0x87,0xf3]
and.and.t %d15, %d0, 7, %d14, 7

# CHECK-INST: and.and.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x07,0xfc]
and.and.t %d15, %d0, 7, %d14, 24

# CHECK-INST: and.and.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0x47,0xe0,0x87,0xff]
and.and.t %d15, %d0, 7, %d14, 31

# CHECK-INST: and.and.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x07,0xf0]
and.and.t %d15, %d0, 7, %d15, 0

# CHECK-INST: and.and.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0x47,0xf0,0x87,0xf3]
and.and.t %d15, %d0, 7, %d15, 7

# CHECK-INST: and.and.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x07,0xfc]
and.and.t %d15, %d0, 7, %d15, 24

# CHECK-INST: and.and.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0x47,0xf0,0x87,0xff]
and.and.t %d15, %d0, 7, %d15, 31

# CHECK-INST: and.and.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0x47,0x00,0x18,0xf0]
and.and.t %d15, %d0, 24, %d0, 0

# CHECK-INST: and.and.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0x47,0x00,0x98,0xf3]
and.and.t %d15, %d0, 24, %d0, 7

# CHECK-INST: and.and.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0x47,0x00,0x18,0xfc]
and.and.t %d15, %d0, 24, %d0, 24

# CHECK-INST: and.and.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0x47,0x00,0x98,0xff]
and.and.t %d15, %d0, 24, %d0, 31

# CHECK-INST: and.and.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0x47,0x10,0x18,0xf0]
and.and.t %d15, %d0, 24, %d1, 0

# CHECK-INST: and.and.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0x47,0x10,0x98,0xf3]
and.and.t %d15, %d0, 24, %d1, 7

# CHECK-INST: and.and.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0x47,0x10,0x18,0xfc]
and.and.t %d15, %d0, 24, %d1, 24

# CHECK-INST: and.and.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0x47,0x10,0x98,0xff]
and.and.t %d15, %d0, 24, %d1, 31

# CHECK-INST: and.and.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x18,0xf0]
and.and.t %d15, %d0, 24, %d14, 0

# CHECK-INST: and.and.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0x47,0xe0,0x98,0xf3]
and.and.t %d15, %d0, 24, %d14, 7

# CHECK-INST: and.and.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x18,0xfc]
and.and.t %d15, %d0, 24, %d14, 24

# CHECK-INST: and.and.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0x47,0xe0,0x98,0xff]
and.and.t %d15, %d0, 24, %d14, 31

# CHECK-INST: and.and.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x18,0xf0]
and.and.t %d15, %d0, 24, %d15, 0

# CHECK-INST: and.and.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0x47,0xf0,0x98,0xf3]
and.and.t %d15, %d0, 24, %d15, 7

# CHECK-INST: and.and.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x18,0xfc]
and.and.t %d15, %d0, 24, %d15, 24

# CHECK-INST: and.and.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0x47,0xf0,0x98,0xff]
and.and.t %d15, %d0, 24, %d15, 31

# CHECK-INST: and.and.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0x47,0x00,0x1f,0xf0]
and.and.t %d15, %d0, 31, %d0, 0

# CHECK-INST: and.and.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0x47,0x00,0x9f,0xf3]
and.and.t %d15, %d0, 31, %d0, 7

# CHECK-INST: and.and.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0x47,0x00,0x1f,0xfc]
and.and.t %d15, %d0, 31, %d0, 24

# CHECK-INST: and.and.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0x47,0x00,0x9f,0xff]
and.and.t %d15, %d0, 31, %d0, 31

# CHECK-INST: and.and.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0x47,0x10,0x1f,0xf0]
and.and.t %d15, %d0, 31, %d1, 0

# CHECK-INST: and.and.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0x47,0x10,0x9f,0xf3]
and.and.t %d15, %d0, 31, %d1, 7

# CHECK-INST: and.and.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0x47,0x10,0x1f,0xfc]
and.and.t %d15, %d0, 31, %d1, 24

# CHECK-INST: and.and.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0x47,0x10,0x9f,0xff]
and.and.t %d15, %d0, 31, %d1, 31

# CHECK-INST: and.and.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x1f,0xf0]
and.and.t %d15, %d0, 31, %d14, 0

# CHECK-INST: and.and.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0x47,0xe0,0x9f,0xf3]
and.and.t %d15, %d0, 31, %d14, 7

# CHECK-INST: and.and.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x1f,0xfc]
and.and.t %d15, %d0, 31, %d14, 24

# CHECK-INST: and.and.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0x47,0xe0,0x9f,0xff]
and.and.t %d15, %d0, 31, %d14, 31

# CHECK-INST: and.and.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x1f,0xf0]
and.and.t %d15, %d0, 31, %d15, 0

# CHECK-INST: and.and.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0x47,0xf0,0x9f,0xf3]
and.and.t %d15, %d0, 31, %d15, 7

# CHECK-INST: and.and.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x1f,0xfc]
and.and.t %d15, %d0, 31, %d15, 24

# CHECK-INST: and.and.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0x47,0xf0,0x9f,0xff]
and.and.t %d15, %d0, 31, %d15, 31

# CHECK-INST: and.and.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0x47,0x01,0x00,0xf0]
and.and.t %d15, %d1, 0, %d0, 0

# CHECK-INST: and.and.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0x47,0x01,0x80,0xf3]
and.and.t %d15, %d1, 0, %d0, 7

# CHECK-INST: and.and.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0x47,0x01,0x00,0xfc]
and.and.t %d15, %d1, 0, %d0, 24

# CHECK-INST: and.and.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0x47,0x01,0x80,0xff]
and.and.t %d15, %d1, 0, %d0, 31

# CHECK-INST: and.and.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0x47,0x11,0x00,0xf0]
and.and.t %d15, %d1, 0, %d1, 0

# CHECK-INST: and.and.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0x47,0x11,0x80,0xf3]
and.and.t %d15, %d1, 0, %d1, 7

# CHECK-INST: and.and.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0x47,0x11,0x00,0xfc]
and.and.t %d15, %d1, 0, %d1, 24

# CHECK-INST: and.and.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0x47,0x11,0x80,0xff]
and.and.t %d15, %d1, 0, %d1, 31

# CHECK-INST: and.and.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x00,0xf0]
and.and.t %d15, %d1, 0, %d14, 0

# CHECK-INST: and.and.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0x47,0xe1,0x80,0xf3]
and.and.t %d15, %d1, 0, %d14, 7

# CHECK-INST: and.and.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x00,0xfc]
and.and.t %d15, %d1, 0, %d14, 24

# CHECK-INST: and.and.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0x47,0xe1,0x80,0xff]
and.and.t %d15, %d1, 0, %d14, 31

# CHECK-INST: and.and.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x00,0xf0]
and.and.t %d15, %d1, 0, %d15, 0

# CHECK-INST: and.and.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0x47,0xf1,0x80,0xf3]
and.and.t %d15, %d1, 0, %d15, 7

# CHECK-INST: and.and.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x00,0xfc]
and.and.t %d15, %d1, 0, %d15, 24

# CHECK-INST: and.and.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0x47,0xf1,0x80,0xff]
and.and.t %d15, %d1, 0, %d15, 31

# CHECK-INST: and.and.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0x47,0x01,0x07,0xf0]
and.and.t %d15, %d1, 7, %d0, 0

# CHECK-INST: and.and.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0x47,0x01,0x87,0xf3]
and.and.t %d15, %d1, 7, %d0, 7

# CHECK-INST: and.and.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0x47,0x01,0x07,0xfc]
and.and.t %d15, %d1, 7, %d0, 24

# CHECK-INST: and.and.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0x47,0x01,0x87,0xff]
and.and.t %d15, %d1, 7, %d0, 31

# CHECK-INST: and.and.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0x47,0x11,0x07,0xf0]
and.and.t %d15, %d1, 7, %d1, 0

# CHECK-INST: and.and.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0x47,0x11,0x87,0xf3]
and.and.t %d15, %d1, 7, %d1, 7

# CHECK-INST: and.and.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0x47,0x11,0x07,0xfc]
and.and.t %d15, %d1, 7, %d1, 24

# CHECK-INST: and.and.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0x47,0x11,0x87,0xff]
and.and.t %d15, %d1, 7, %d1, 31

# CHECK-INST: and.and.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x07,0xf0]
and.and.t %d15, %d1, 7, %d14, 0

# CHECK-INST: and.and.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0x47,0xe1,0x87,0xf3]
and.and.t %d15, %d1, 7, %d14, 7

# CHECK-INST: and.and.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x07,0xfc]
and.and.t %d15, %d1, 7, %d14, 24

# CHECK-INST: and.and.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0x47,0xe1,0x87,0xff]
and.and.t %d15, %d1, 7, %d14, 31

# CHECK-INST: and.and.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x07,0xf0]
and.and.t %d15, %d1, 7, %d15, 0

# CHECK-INST: and.and.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0x47,0xf1,0x87,0xf3]
and.and.t %d15, %d1, 7, %d15, 7

# CHECK-INST: and.and.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x07,0xfc]
and.and.t %d15, %d1, 7, %d15, 24

# CHECK-INST: and.and.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0x47,0xf1,0x87,0xff]
and.and.t %d15, %d1, 7, %d15, 31

# CHECK-INST: and.and.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0x47,0x01,0x18,0xf0]
and.and.t %d15, %d1, 24, %d0, 0

# CHECK-INST: and.and.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0x47,0x01,0x98,0xf3]
and.and.t %d15, %d1, 24, %d0, 7

# CHECK-INST: and.and.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0x47,0x01,0x18,0xfc]
and.and.t %d15, %d1, 24, %d0, 24

# CHECK-INST: and.and.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0x47,0x01,0x98,0xff]
and.and.t %d15, %d1, 24, %d0, 31

# CHECK-INST: and.and.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0x47,0x11,0x18,0xf0]
and.and.t %d15, %d1, 24, %d1, 0

# CHECK-INST: and.and.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0x47,0x11,0x98,0xf3]
and.and.t %d15, %d1, 24, %d1, 7

# CHECK-INST: and.and.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0x47,0x11,0x18,0xfc]
and.and.t %d15, %d1, 24, %d1, 24

# CHECK-INST: and.and.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0x47,0x11,0x98,0xff]
and.and.t %d15, %d1, 24, %d1, 31

# CHECK-INST: and.and.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x18,0xf0]
and.and.t %d15, %d1, 24, %d14, 0

# CHECK-INST: and.and.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0x47,0xe1,0x98,0xf3]
and.and.t %d15, %d1, 24, %d14, 7

# CHECK-INST: and.and.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x18,0xfc]
and.and.t %d15, %d1, 24, %d14, 24

# CHECK-INST: and.and.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0x47,0xe1,0x98,0xff]
and.and.t %d15, %d1, 24, %d14, 31

# CHECK-INST: and.and.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x18,0xf0]
and.and.t %d15, %d1, 24, %d15, 0

# CHECK-INST: and.and.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0x47,0xf1,0x98,0xf3]
and.and.t %d15, %d1, 24, %d15, 7

# CHECK-INST: and.and.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x18,0xfc]
and.and.t %d15, %d1, 24, %d15, 24

# CHECK-INST: and.and.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0x47,0xf1,0x98,0xff]
and.and.t %d15, %d1, 24, %d15, 31

# CHECK-INST: and.and.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0x47,0x01,0x1f,0xf0]
and.and.t %d15, %d1, 31, %d0, 0

# CHECK-INST: and.and.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0x47,0x01,0x9f,0xf3]
and.and.t %d15, %d1, 31, %d0, 7

# CHECK-INST: and.and.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0x47,0x01,0x1f,0xfc]
and.and.t %d15, %d1, 31, %d0, 24

# CHECK-INST: and.and.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0x47,0x01,0x9f,0xff]
and.and.t %d15, %d1, 31, %d0, 31

# CHECK-INST: and.and.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0x47,0x11,0x1f,0xf0]
and.and.t %d15, %d1, 31, %d1, 0

# CHECK-INST: and.and.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0x47,0x11,0x9f,0xf3]
and.and.t %d15, %d1, 31, %d1, 7

# CHECK-INST: and.and.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0x47,0x11,0x1f,0xfc]
and.and.t %d15, %d1, 31, %d1, 24

# CHECK-INST: and.and.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0x47,0x11,0x9f,0xff]
and.and.t %d15, %d1, 31, %d1, 31

# CHECK-INST: and.and.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x1f,0xf0]
and.and.t %d15, %d1, 31, %d14, 0

# CHECK-INST: and.and.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0x47,0xe1,0x9f,0xf3]
and.and.t %d15, %d1, 31, %d14, 7

# CHECK-INST: and.and.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x1f,0xfc]
and.and.t %d15, %d1, 31, %d14, 24

# CHECK-INST: and.and.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0x47,0xe1,0x9f,0xff]
and.and.t %d15, %d1, 31, %d14, 31

# CHECK-INST: and.and.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x1f,0xf0]
and.and.t %d15, %d1, 31, %d15, 0

# CHECK-INST: and.and.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0x47,0xf1,0x9f,0xf3]
and.and.t %d15, %d1, 31, %d15, 7

# CHECK-INST: and.and.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x1f,0xfc]
and.and.t %d15, %d1, 31, %d15, 24

# CHECK-INST: and.and.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0x47,0xf1,0x9f,0xff]
and.and.t %d15, %d1, 31, %d15, 31

# CHECK-INST: and.and.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x00,0xf0]
and.and.t %d15, %d14, 0, %d0, 0

# CHECK-INST: and.and.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0x47,0x0e,0x80,0xf3]
and.and.t %d15, %d14, 0, %d0, 7

# CHECK-INST: and.and.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x00,0xfc]
and.and.t %d15, %d14, 0, %d0, 24

# CHECK-INST: and.and.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0x47,0x0e,0x80,0xff]
and.and.t %d15, %d14, 0, %d0, 31

# CHECK-INST: and.and.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x00,0xf0]
and.and.t %d15, %d14, 0, %d1, 0

# CHECK-INST: and.and.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0x47,0x1e,0x80,0xf3]
and.and.t %d15, %d14, 0, %d1, 7

# CHECK-INST: and.and.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x00,0xfc]
and.and.t %d15, %d14, 0, %d1, 24

# CHECK-INST: and.and.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0x47,0x1e,0x80,0xff]
and.and.t %d15, %d14, 0, %d1, 31

# CHECK-INST: and.and.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0x47,0xee,0x00,0xf0]
and.and.t %d15, %d14, 0, %d14, 0

# CHECK-INST: and.and.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0x47,0xee,0x80,0xf3]
and.and.t %d15, %d14, 0, %d14, 7

# CHECK-INST: and.and.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0x47,0xee,0x00,0xfc]
and.and.t %d15, %d14, 0, %d14, 24

# CHECK-INST: and.and.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0x47,0xee,0x80,0xff]
and.and.t %d15, %d14, 0, %d14, 31

# CHECK-INST: and.and.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x00,0xf0]
and.and.t %d15, %d14, 0, %d15, 0

# CHECK-INST: and.and.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0x47,0xfe,0x80,0xf3]
and.and.t %d15, %d14, 0, %d15, 7

# CHECK-INST: and.and.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x00,0xfc]
and.and.t %d15, %d14, 0, %d15, 24

# CHECK-INST: and.and.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0x47,0xfe,0x80,0xff]
and.and.t %d15, %d14, 0, %d15, 31

# CHECK-INST: and.and.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x07,0xf0]
and.and.t %d15, %d14, 7, %d0, 0

# CHECK-INST: and.and.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0x47,0x0e,0x87,0xf3]
and.and.t %d15, %d14, 7, %d0, 7

# CHECK-INST: and.and.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x07,0xfc]
and.and.t %d15, %d14, 7, %d0, 24

# CHECK-INST: and.and.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0x47,0x0e,0x87,0xff]
and.and.t %d15, %d14, 7, %d0, 31

# CHECK-INST: and.and.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x07,0xf0]
and.and.t %d15, %d14, 7, %d1, 0

# CHECK-INST: and.and.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0x47,0x1e,0x87,0xf3]
and.and.t %d15, %d14, 7, %d1, 7

# CHECK-INST: and.and.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x07,0xfc]
and.and.t %d15, %d14, 7, %d1, 24

# CHECK-INST: and.and.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0x47,0x1e,0x87,0xff]
and.and.t %d15, %d14, 7, %d1, 31

# CHECK-INST: and.and.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0x47,0xee,0x07,0xf0]
and.and.t %d15, %d14, 7, %d14, 0

# CHECK-INST: and.and.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0x47,0xee,0x87,0xf3]
and.and.t %d15, %d14, 7, %d14, 7

# CHECK-INST: and.and.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0x47,0xee,0x07,0xfc]
and.and.t %d15, %d14, 7, %d14, 24

# CHECK-INST: and.and.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0x47,0xee,0x87,0xff]
and.and.t %d15, %d14, 7, %d14, 31

# CHECK-INST: and.and.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x07,0xf0]
and.and.t %d15, %d14, 7, %d15, 0

# CHECK-INST: and.and.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0x47,0xfe,0x87,0xf3]
and.and.t %d15, %d14, 7, %d15, 7

# CHECK-INST: and.and.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x07,0xfc]
and.and.t %d15, %d14, 7, %d15, 24

# CHECK-INST: and.and.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0x47,0xfe,0x87,0xff]
and.and.t %d15, %d14, 7, %d15, 31

# CHECK-INST: and.and.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x18,0xf0]
and.and.t %d15, %d14, 24, %d0, 0

# CHECK-INST: and.and.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0x47,0x0e,0x98,0xf3]
and.and.t %d15, %d14, 24, %d0, 7

# CHECK-INST: and.and.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x18,0xfc]
and.and.t %d15, %d14, 24, %d0, 24

# CHECK-INST: and.and.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0x47,0x0e,0x98,0xff]
and.and.t %d15, %d14, 24, %d0, 31

# CHECK-INST: and.and.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x18,0xf0]
and.and.t %d15, %d14, 24, %d1, 0

# CHECK-INST: and.and.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0x47,0x1e,0x98,0xf3]
and.and.t %d15, %d14, 24, %d1, 7

# CHECK-INST: and.and.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x18,0xfc]
and.and.t %d15, %d14, 24, %d1, 24

# CHECK-INST: and.and.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0x47,0x1e,0x98,0xff]
and.and.t %d15, %d14, 24, %d1, 31

# CHECK-INST: and.and.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0x47,0xee,0x18,0xf0]
and.and.t %d15, %d14, 24, %d14, 0

# CHECK-INST: and.and.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0x47,0xee,0x98,0xf3]
and.and.t %d15, %d14, 24, %d14, 7

# CHECK-INST: and.and.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0x47,0xee,0x18,0xfc]
and.and.t %d15, %d14, 24, %d14, 24

# CHECK-INST: and.and.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0x47,0xee,0x98,0xff]
and.and.t %d15, %d14, 24, %d14, 31

# CHECK-INST: and.and.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x18,0xf0]
and.and.t %d15, %d14, 24, %d15, 0

# CHECK-INST: and.and.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0x47,0xfe,0x98,0xf3]
and.and.t %d15, %d14, 24, %d15, 7

# CHECK-INST: and.and.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x18,0xfc]
and.and.t %d15, %d14, 24, %d15, 24

# CHECK-INST: and.and.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0x47,0xfe,0x98,0xff]
and.and.t %d15, %d14, 24, %d15, 31

# CHECK-INST: and.and.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x1f,0xf0]
and.and.t %d15, %d14, 31, %d0, 0

# CHECK-INST: and.and.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0x47,0x0e,0x9f,0xf3]
and.and.t %d15, %d14, 31, %d0, 7

# CHECK-INST: and.and.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x1f,0xfc]
and.and.t %d15, %d14, 31, %d0, 24

# CHECK-INST: and.and.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0x47,0x0e,0x9f,0xff]
and.and.t %d15, %d14, 31, %d0, 31

# CHECK-INST: and.and.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x1f,0xf0]
and.and.t %d15, %d14, 31, %d1, 0

# CHECK-INST: and.and.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0x47,0x1e,0x9f,0xf3]
and.and.t %d15, %d14, 31, %d1, 7

# CHECK-INST: and.and.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x1f,0xfc]
and.and.t %d15, %d14, 31, %d1, 24

# CHECK-INST: and.and.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0x47,0x1e,0x9f,0xff]
and.and.t %d15, %d14, 31, %d1, 31

# CHECK-INST: and.and.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0x47,0xee,0x1f,0xf0]
and.and.t %d15, %d14, 31, %d14, 0

# CHECK-INST: and.and.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0x47,0xee,0x9f,0xf3]
and.and.t %d15, %d14, 31, %d14, 7

# CHECK-INST: and.and.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0x47,0xee,0x1f,0xfc]
and.and.t %d15, %d14, 31, %d14, 24

# CHECK-INST: and.and.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0x47,0xee,0x9f,0xff]
and.and.t %d15, %d14, 31, %d14, 31

# CHECK-INST: and.and.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x1f,0xf0]
and.and.t %d15, %d14, 31, %d15, 0

# CHECK-INST: and.and.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0x47,0xfe,0x9f,0xf3]
and.and.t %d15, %d14, 31, %d15, 7

# CHECK-INST: and.and.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x1f,0xfc]
and.and.t %d15, %d14, 31, %d15, 24

# CHECK-INST: and.and.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0x47,0xfe,0x9f,0xff]
and.and.t %d15, %d14, 31, %d15, 31

# CHECK-INST: and.and.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x00,0xf0]
and.and.t %d15, %d15, 0, %d0, 0

# CHECK-INST: and.and.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0x47,0x0f,0x80,0xf3]
and.and.t %d15, %d15, 0, %d0, 7

# CHECK-INST: and.and.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x00,0xfc]
and.and.t %d15, %d15, 0, %d0, 24

# CHECK-INST: and.and.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0x47,0x0f,0x80,0xff]
and.and.t %d15, %d15, 0, %d0, 31

# CHECK-INST: and.and.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x00,0xf0]
and.and.t %d15, %d15, 0, %d1, 0

# CHECK-INST: and.and.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0x47,0x1f,0x80,0xf3]
and.and.t %d15, %d15, 0, %d1, 7

# CHECK-INST: and.and.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x00,0xfc]
and.and.t %d15, %d15, 0, %d1, 24

# CHECK-INST: and.and.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0x47,0x1f,0x80,0xff]
and.and.t %d15, %d15, 0, %d1, 31

# CHECK-INST: and.and.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0x47,0xef,0x00,0xf0]
and.and.t %d15, %d15, 0, %d14, 0

# CHECK-INST: and.and.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0x47,0xef,0x80,0xf3]
and.and.t %d15, %d15, 0, %d14, 7

# CHECK-INST: and.and.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0x47,0xef,0x00,0xfc]
and.and.t %d15, %d15, 0, %d14, 24

# CHECK-INST: and.and.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0x47,0xef,0x80,0xff]
and.and.t %d15, %d15, 0, %d14, 31

# CHECK-INST: and.and.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0x47,0xff,0x00,0xf0]
and.and.t %d15, %d15, 0, %d15, 0

# CHECK-INST: and.and.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0x47,0xff,0x80,0xf3]
and.and.t %d15, %d15, 0, %d15, 7

# CHECK-INST: and.and.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0x47,0xff,0x00,0xfc]
and.and.t %d15, %d15, 0, %d15, 24

# CHECK-INST: and.and.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0x47,0xff,0x80,0xff]
and.and.t %d15, %d15, 0, %d15, 31

# CHECK-INST: and.and.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x07,0xf0]
and.and.t %d15, %d15, 7, %d0, 0

# CHECK-INST: and.and.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0x47,0x0f,0x87,0xf3]
and.and.t %d15, %d15, 7, %d0, 7

# CHECK-INST: and.and.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x07,0xfc]
and.and.t %d15, %d15, 7, %d0, 24

# CHECK-INST: and.and.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0x47,0x0f,0x87,0xff]
and.and.t %d15, %d15, 7, %d0, 31

# CHECK-INST: and.and.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x07,0xf0]
and.and.t %d15, %d15, 7, %d1, 0

# CHECK-INST: and.and.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0x47,0x1f,0x87,0xf3]
and.and.t %d15, %d15, 7, %d1, 7

# CHECK-INST: and.and.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x07,0xfc]
and.and.t %d15, %d15, 7, %d1, 24

# CHECK-INST: and.and.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0x47,0x1f,0x87,0xff]
and.and.t %d15, %d15, 7, %d1, 31

# CHECK-INST: and.and.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0x47,0xef,0x07,0xf0]
and.and.t %d15, %d15, 7, %d14, 0

# CHECK-INST: and.and.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0x47,0xef,0x87,0xf3]
and.and.t %d15, %d15, 7, %d14, 7

# CHECK-INST: and.and.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0x47,0xef,0x07,0xfc]
and.and.t %d15, %d15, 7, %d14, 24

# CHECK-INST: and.and.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0x47,0xef,0x87,0xff]
and.and.t %d15, %d15, 7, %d14, 31

# CHECK-INST: and.and.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0x47,0xff,0x07,0xf0]
and.and.t %d15, %d15, 7, %d15, 0

# CHECK-INST: and.and.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0x47,0xff,0x87,0xf3]
and.and.t %d15, %d15, 7, %d15, 7

# CHECK-INST: and.and.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0x47,0xff,0x07,0xfc]
and.and.t %d15, %d15, 7, %d15, 24

# CHECK-INST: and.and.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0x47,0xff,0x87,0xff]
and.and.t %d15, %d15, 7, %d15, 31

# CHECK-INST: and.and.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x18,0xf0]
and.and.t %d15, %d15, 24, %d0, 0

# CHECK-INST: and.and.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0x47,0x0f,0x98,0xf3]
and.and.t %d15, %d15, 24, %d0, 7

# CHECK-INST: and.and.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x18,0xfc]
and.and.t %d15, %d15, 24, %d0, 24

# CHECK-INST: and.and.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0x47,0x0f,0x98,0xff]
and.and.t %d15, %d15, 24, %d0, 31

# CHECK-INST: and.and.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x18,0xf0]
and.and.t %d15, %d15, 24, %d1, 0

# CHECK-INST: and.and.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0x47,0x1f,0x98,0xf3]
and.and.t %d15, %d15, 24, %d1, 7

# CHECK-INST: and.and.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x18,0xfc]
and.and.t %d15, %d15, 24, %d1, 24

# CHECK-INST: and.and.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0x47,0x1f,0x98,0xff]
and.and.t %d15, %d15, 24, %d1, 31

# CHECK-INST: and.and.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0x47,0xef,0x18,0xf0]
and.and.t %d15, %d15, 24, %d14, 0

# CHECK-INST: and.and.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0x47,0xef,0x98,0xf3]
and.and.t %d15, %d15, 24, %d14, 7

# CHECK-INST: and.and.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0x47,0xef,0x18,0xfc]
and.and.t %d15, %d15, 24, %d14, 24

# CHECK-INST: and.and.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0x47,0xef,0x98,0xff]
and.and.t %d15, %d15, 24, %d14, 31

# CHECK-INST: and.and.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0x47,0xff,0x18,0xf0]
and.and.t %d15, %d15, 24, %d15, 0

# CHECK-INST: and.and.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0x47,0xff,0x98,0xf3]
and.and.t %d15, %d15, 24, %d15, 7

# CHECK-INST: and.and.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0x47,0xff,0x18,0xfc]
and.and.t %d15, %d15, 24, %d15, 24

# CHECK-INST: and.and.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0x47,0xff,0x98,0xff]
and.and.t %d15, %d15, 24, %d15, 31

# CHECK-INST: and.and.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x1f,0xf0]
and.and.t %d15, %d15, 31, %d0, 0

# CHECK-INST: and.and.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0x47,0x0f,0x9f,0xf3]
and.and.t %d15, %d15, 31, %d0, 7

# CHECK-INST: and.and.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x1f,0xfc]
and.and.t %d15, %d15, 31, %d0, 24

# CHECK-INST: and.and.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0x47,0x0f,0x9f,0xff]
and.and.t %d15, %d15, 31, %d0, 31

# CHECK-INST: and.and.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x1f,0xf0]
and.and.t %d15, %d15, 31, %d1, 0

# CHECK-INST: and.and.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0x47,0x1f,0x9f,0xf3]
and.and.t %d15, %d15, 31, %d1, 7

# CHECK-INST: and.and.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x1f,0xfc]
and.and.t %d15, %d15, 31, %d1, 24

# CHECK-INST: and.and.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0x47,0x1f,0x9f,0xff]
and.and.t %d15, %d15, 31, %d1, 31

# CHECK-INST: and.and.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0x47,0xef,0x1f,0xf0]
and.and.t %d15, %d15, 31, %d14, 0

# CHECK-INST: and.and.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0x47,0xef,0x9f,0xf3]
and.and.t %d15, %d15, 31, %d14, 7

# CHECK-INST: and.and.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0x47,0xef,0x1f,0xfc]
and.and.t %d15, %d15, 31, %d14, 24

# CHECK-INST: and.and.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0x47,0xef,0x9f,0xff]
and.and.t %d15, %d15, 31, %d14, 31

# CHECK-INST: and.and.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0x47,0xff,0x1f,0xf0]
and.and.t %d15, %d15, 31, %d15, 0

# CHECK-INST: and.and.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0x47,0xff,0x9f,0xf3]
and.and.t %d15, %d15, 31, %d15, 7

# CHECK-INST: and.and.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0x47,0xff,0x1f,0xfc]
and.and.t %d15, %d15, 31, %d15, 24

# CHECK-INST: and.and.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0x47,0xff,0x9f,0xff]
and.and.t %d15, %d15, 31, %d15, 31

# CHECK-INST: and.andn.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x47,0x00,0x60,0x00]
and.andn.t %d0, %d0, 0, %d0, 0

# CHECK-INST: and.andn.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0x47,0x00,0xe0,0x03]
and.andn.t %d0, %d0, 0, %d0, 7

# CHECK-INST: and.andn.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0x47,0x00,0x60,0x0c]
and.andn.t %d0, %d0, 0, %d0, 24

# CHECK-INST: and.andn.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0x47,0x00,0xe0,0x0f]
and.andn.t %d0, %d0, 0, %d0, 31

# CHECK-INST: and.andn.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0x47,0x10,0x60,0x00]
and.andn.t %d0, %d0, 0, %d1, 0

# CHECK-INST: and.andn.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0x47,0x10,0xe0,0x03]
and.andn.t %d0, %d0, 0, %d1, 7

# CHECK-INST: and.andn.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0x47,0x10,0x60,0x0c]
and.andn.t %d0, %d0, 0, %d1, 24

# CHECK-INST: and.andn.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0x47,0x10,0xe0,0x0f]
and.andn.t %d0, %d0, 0, %d1, 31

# CHECK-INST: and.andn.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x60,0x00]
and.andn.t %d0, %d0, 0, %d14, 0

# CHECK-INST: and.andn.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xe0,0x03]
and.andn.t %d0, %d0, 0, %d14, 7

# CHECK-INST: and.andn.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x60,0x0c]
and.andn.t %d0, %d0, 0, %d14, 24

# CHECK-INST: and.andn.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xe0,0x0f]
and.andn.t %d0, %d0, 0, %d14, 31

# CHECK-INST: and.andn.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x60,0x00]
and.andn.t %d0, %d0, 0, %d15, 0

# CHECK-INST: and.andn.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xe0,0x03]
and.andn.t %d0, %d0, 0, %d15, 7

# CHECK-INST: and.andn.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x60,0x0c]
and.andn.t %d0, %d0, 0, %d15, 24

# CHECK-INST: and.andn.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xe0,0x0f]
and.andn.t %d0, %d0, 0, %d15, 31

# CHECK-INST: and.andn.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0x47,0x00,0x67,0x00]
and.andn.t %d0, %d0, 7, %d0, 0

# CHECK-INST: and.andn.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0x47,0x00,0xe7,0x03]
and.andn.t %d0, %d0, 7, %d0, 7

# CHECK-INST: and.andn.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0x47,0x00,0x67,0x0c]
and.andn.t %d0, %d0, 7, %d0, 24

# CHECK-INST: and.andn.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0x47,0x00,0xe7,0x0f]
and.andn.t %d0, %d0, 7, %d0, 31

# CHECK-INST: and.andn.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0x47,0x10,0x67,0x00]
and.andn.t %d0, %d0, 7, %d1, 0

# CHECK-INST: and.andn.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0x47,0x10,0xe7,0x03]
and.andn.t %d0, %d0, 7, %d1, 7

# CHECK-INST: and.andn.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0x47,0x10,0x67,0x0c]
and.andn.t %d0, %d0, 7, %d1, 24

# CHECK-INST: and.andn.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0x47,0x10,0xe7,0x0f]
and.andn.t %d0, %d0, 7, %d1, 31

# CHECK-INST: and.andn.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x67,0x00]
and.andn.t %d0, %d0, 7, %d14, 0

# CHECK-INST: and.andn.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xe7,0x03]
and.andn.t %d0, %d0, 7, %d14, 7

# CHECK-INST: and.andn.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x67,0x0c]
and.andn.t %d0, %d0, 7, %d14, 24

# CHECK-INST: and.andn.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xe7,0x0f]
and.andn.t %d0, %d0, 7, %d14, 31

# CHECK-INST: and.andn.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x67,0x00]
and.andn.t %d0, %d0, 7, %d15, 0

# CHECK-INST: and.andn.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xe7,0x03]
and.andn.t %d0, %d0, 7, %d15, 7

# CHECK-INST: and.andn.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x67,0x0c]
and.andn.t %d0, %d0, 7, %d15, 24

# CHECK-INST: and.andn.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xe7,0x0f]
and.andn.t %d0, %d0, 7, %d15, 31

# CHECK-INST: and.andn.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0x47,0x00,0x78,0x00]
and.andn.t %d0, %d0, 24, %d0, 0

# CHECK-INST: and.andn.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0x47,0x00,0xf8,0x03]
and.andn.t %d0, %d0, 24, %d0, 7

# CHECK-INST: and.andn.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0x47,0x00,0x78,0x0c]
and.andn.t %d0, %d0, 24, %d0, 24

# CHECK-INST: and.andn.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0x47,0x00,0xf8,0x0f]
and.andn.t %d0, %d0, 24, %d0, 31

# CHECK-INST: and.andn.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0x47,0x10,0x78,0x00]
and.andn.t %d0, %d0, 24, %d1, 0

# CHECK-INST: and.andn.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0x47,0x10,0xf8,0x03]
and.andn.t %d0, %d0, 24, %d1, 7

# CHECK-INST: and.andn.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0x47,0x10,0x78,0x0c]
and.andn.t %d0, %d0, 24, %d1, 24

# CHECK-INST: and.andn.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0x47,0x10,0xf8,0x0f]
and.andn.t %d0, %d0, 24, %d1, 31

# CHECK-INST: and.andn.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x78,0x00]
and.andn.t %d0, %d0, 24, %d14, 0

# CHECK-INST: and.andn.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xf8,0x03]
and.andn.t %d0, %d0, 24, %d14, 7

# CHECK-INST: and.andn.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x78,0x0c]
and.andn.t %d0, %d0, 24, %d14, 24

# CHECK-INST: and.andn.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xf8,0x0f]
and.andn.t %d0, %d0, 24, %d14, 31

# CHECK-INST: and.andn.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x78,0x00]
and.andn.t %d0, %d0, 24, %d15, 0

# CHECK-INST: and.andn.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xf8,0x03]
and.andn.t %d0, %d0, 24, %d15, 7

# CHECK-INST: and.andn.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x78,0x0c]
and.andn.t %d0, %d0, 24, %d15, 24

# CHECK-INST: and.andn.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xf8,0x0f]
and.andn.t %d0, %d0, 24, %d15, 31

# CHECK-INST: and.andn.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0x47,0x00,0x7f,0x00]
and.andn.t %d0, %d0, 31, %d0, 0

# CHECK-INST: and.andn.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0x47,0x00,0xff,0x03]
and.andn.t %d0, %d0, 31, %d0, 7

# CHECK-INST: and.andn.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0x47,0x00,0x7f,0x0c]
and.andn.t %d0, %d0, 31, %d0, 24

# CHECK-INST: and.andn.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0x47,0x00,0xff,0x0f]
and.andn.t %d0, %d0, 31, %d0, 31

# CHECK-INST: and.andn.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0x47,0x10,0x7f,0x00]
and.andn.t %d0, %d0, 31, %d1, 0

# CHECK-INST: and.andn.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0x47,0x10,0xff,0x03]
and.andn.t %d0, %d0, 31, %d1, 7

# CHECK-INST: and.andn.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0x47,0x10,0x7f,0x0c]
and.andn.t %d0, %d0, 31, %d1, 24

# CHECK-INST: and.andn.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0x47,0x10,0xff,0x0f]
and.andn.t %d0, %d0, 31, %d1, 31

# CHECK-INST: and.andn.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x7f,0x00]
and.andn.t %d0, %d0, 31, %d14, 0

# CHECK-INST: and.andn.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xff,0x03]
and.andn.t %d0, %d0, 31, %d14, 7

# CHECK-INST: and.andn.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x7f,0x0c]
and.andn.t %d0, %d0, 31, %d14, 24

# CHECK-INST: and.andn.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xff,0x0f]
and.andn.t %d0, %d0, 31, %d14, 31

# CHECK-INST: and.andn.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x7f,0x00]
and.andn.t %d0, %d0, 31, %d15, 0

# CHECK-INST: and.andn.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xff,0x03]
and.andn.t %d0, %d0, 31, %d15, 7

# CHECK-INST: and.andn.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x7f,0x0c]
and.andn.t %d0, %d0, 31, %d15, 24

# CHECK-INST: and.andn.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xff,0x0f]
and.andn.t %d0, %d0, 31, %d15, 31

# CHECK-INST: and.andn.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0x47,0x01,0x60,0x00]
and.andn.t %d0, %d1, 0, %d0, 0

# CHECK-INST: and.andn.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0x47,0x01,0xe0,0x03]
and.andn.t %d0, %d1, 0, %d0, 7

# CHECK-INST: and.andn.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0x47,0x01,0x60,0x0c]
and.andn.t %d0, %d1, 0, %d0, 24

# CHECK-INST: and.andn.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0x47,0x01,0xe0,0x0f]
and.andn.t %d0, %d1, 0, %d0, 31

# CHECK-INST: and.andn.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0x47,0x11,0x60,0x00]
and.andn.t %d0, %d1, 0, %d1, 0

# CHECK-INST: and.andn.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0x47,0x11,0xe0,0x03]
and.andn.t %d0, %d1, 0, %d1, 7

# CHECK-INST: and.andn.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0x47,0x11,0x60,0x0c]
and.andn.t %d0, %d1, 0, %d1, 24

# CHECK-INST: and.andn.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0x47,0x11,0xe0,0x0f]
and.andn.t %d0, %d1, 0, %d1, 31

# CHECK-INST: and.andn.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x60,0x00]
and.andn.t %d0, %d1, 0, %d14, 0

# CHECK-INST: and.andn.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xe0,0x03]
and.andn.t %d0, %d1, 0, %d14, 7

# CHECK-INST: and.andn.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x60,0x0c]
and.andn.t %d0, %d1, 0, %d14, 24

# CHECK-INST: and.andn.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xe0,0x0f]
and.andn.t %d0, %d1, 0, %d14, 31

# CHECK-INST: and.andn.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x60,0x00]
and.andn.t %d0, %d1, 0, %d15, 0

# CHECK-INST: and.andn.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xe0,0x03]
and.andn.t %d0, %d1, 0, %d15, 7

# CHECK-INST: and.andn.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x60,0x0c]
and.andn.t %d0, %d1, 0, %d15, 24

# CHECK-INST: and.andn.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xe0,0x0f]
and.andn.t %d0, %d1, 0, %d15, 31

# CHECK-INST: and.andn.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0x47,0x01,0x67,0x00]
and.andn.t %d0, %d1, 7, %d0, 0

# CHECK-INST: and.andn.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0x47,0x01,0xe7,0x03]
and.andn.t %d0, %d1, 7, %d0, 7

# CHECK-INST: and.andn.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0x47,0x01,0x67,0x0c]
and.andn.t %d0, %d1, 7, %d0, 24

# CHECK-INST: and.andn.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0x47,0x01,0xe7,0x0f]
and.andn.t %d0, %d1, 7, %d0, 31

# CHECK-INST: and.andn.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0x47,0x11,0x67,0x00]
and.andn.t %d0, %d1, 7, %d1, 0

# CHECK-INST: and.andn.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0x47,0x11,0xe7,0x03]
and.andn.t %d0, %d1, 7, %d1, 7

# CHECK-INST: and.andn.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0x47,0x11,0x67,0x0c]
and.andn.t %d0, %d1, 7, %d1, 24

# CHECK-INST: and.andn.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0x47,0x11,0xe7,0x0f]
and.andn.t %d0, %d1, 7, %d1, 31

# CHECK-INST: and.andn.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x67,0x00]
and.andn.t %d0, %d1, 7, %d14, 0

# CHECK-INST: and.andn.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xe7,0x03]
and.andn.t %d0, %d1, 7, %d14, 7

# CHECK-INST: and.andn.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x67,0x0c]
and.andn.t %d0, %d1, 7, %d14, 24

# CHECK-INST: and.andn.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xe7,0x0f]
and.andn.t %d0, %d1, 7, %d14, 31

# CHECK-INST: and.andn.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x67,0x00]
and.andn.t %d0, %d1, 7, %d15, 0

# CHECK-INST: and.andn.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xe7,0x03]
and.andn.t %d0, %d1, 7, %d15, 7

# CHECK-INST: and.andn.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x67,0x0c]
and.andn.t %d0, %d1, 7, %d15, 24

# CHECK-INST: and.andn.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xe7,0x0f]
and.andn.t %d0, %d1, 7, %d15, 31

# CHECK-INST: and.andn.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0x47,0x01,0x78,0x00]
and.andn.t %d0, %d1, 24, %d0, 0

# CHECK-INST: and.andn.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0x47,0x01,0xf8,0x03]
and.andn.t %d0, %d1, 24, %d0, 7

# CHECK-INST: and.andn.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0x47,0x01,0x78,0x0c]
and.andn.t %d0, %d1, 24, %d0, 24

# CHECK-INST: and.andn.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0x47,0x01,0xf8,0x0f]
and.andn.t %d0, %d1, 24, %d0, 31

# CHECK-INST: and.andn.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0x47,0x11,0x78,0x00]
and.andn.t %d0, %d1, 24, %d1, 0

# CHECK-INST: and.andn.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0x47,0x11,0xf8,0x03]
and.andn.t %d0, %d1, 24, %d1, 7

# CHECK-INST: and.andn.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0x47,0x11,0x78,0x0c]
and.andn.t %d0, %d1, 24, %d1, 24

# CHECK-INST: and.andn.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0x47,0x11,0xf8,0x0f]
and.andn.t %d0, %d1, 24, %d1, 31

# CHECK-INST: and.andn.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x78,0x00]
and.andn.t %d0, %d1, 24, %d14, 0

# CHECK-INST: and.andn.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xf8,0x03]
and.andn.t %d0, %d1, 24, %d14, 7

# CHECK-INST: and.andn.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x78,0x0c]
and.andn.t %d0, %d1, 24, %d14, 24

# CHECK-INST: and.andn.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xf8,0x0f]
and.andn.t %d0, %d1, 24, %d14, 31

# CHECK-INST: and.andn.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x78,0x00]
and.andn.t %d0, %d1, 24, %d15, 0

# CHECK-INST: and.andn.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xf8,0x03]
and.andn.t %d0, %d1, 24, %d15, 7

# CHECK-INST: and.andn.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x78,0x0c]
and.andn.t %d0, %d1, 24, %d15, 24

# CHECK-INST: and.andn.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xf8,0x0f]
and.andn.t %d0, %d1, 24, %d15, 31

# CHECK-INST: and.andn.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0x47,0x01,0x7f,0x00]
and.andn.t %d0, %d1, 31, %d0, 0

# CHECK-INST: and.andn.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0x47,0x01,0xff,0x03]
and.andn.t %d0, %d1, 31, %d0, 7

# CHECK-INST: and.andn.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0x47,0x01,0x7f,0x0c]
and.andn.t %d0, %d1, 31, %d0, 24

# CHECK-INST: and.andn.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0x47,0x01,0xff,0x0f]
and.andn.t %d0, %d1, 31, %d0, 31

# CHECK-INST: and.andn.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0x47,0x11,0x7f,0x00]
and.andn.t %d0, %d1, 31, %d1, 0

# CHECK-INST: and.andn.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0x47,0x11,0xff,0x03]
and.andn.t %d0, %d1, 31, %d1, 7

# CHECK-INST: and.andn.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0x47,0x11,0x7f,0x0c]
and.andn.t %d0, %d1, 31, %d1, 24

# CHECK-INST: and.andn.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0x47,0x11,0xff,0x0f]
and.andn.t %d0, %d1, 31, %d1, 31

# CHECK-INST: and.andn.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x7f,0x00]
and.andn.t %d0, %d1, 31, %d14, 0

# CHECK-INST: and.andn.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xff,0x03]
and.andn.t %d0, %d1, 31, %d14, 7

# CHECK-INST: and.andn.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x7f,0x0c]
and.andn.t %d0, %d1, 31, %d14, 24

# CHECK-INST: and.andn.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xff,0x0f]
and.andn.t %d0, %d1, 31, %d14, 31

# CHECK-INST: and.andn.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x7f,0x00]
and.andn.t %d0, %d1, 31, %d15, 0

# CHECK-INST: and.andn.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xff,0x03]
and.andn.t %d0, %d1, 31, %d15, 7

# CHECK-INST: and.andn.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x7f,0x0c]
and.andn.t %d0, %d1, 31, %d15, 24

# CHECK-INST: and.andn.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xff,0x0f]
and.andn.t %d0, %d1, 31, %d15, 31

# CHECK-INST: and.andn.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x60,0x00]
and.andn.t %d0, %d14, 0, %d0, 0

# CHECK-INST: and.andn.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xe0,0x03]
and.andn.t %d0, %d14, 0, %d0, 7

# CHECK-INST: and.andn.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x60,0x0c]
and.andn.t %d0, %d14, 0, %d0, 24

# CHECK-INST: and.andn.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xe0,0x0f]
and.andn.t %d0, %d14, 0, %d0, 31

# CHECK-INST: and.andn.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x60,0x00]
and.andn.t %d0, %d14, 0, %d1, 0

# CHECK-INST: and.andn.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xe0,0x03]
and.andn.t %d0, %d14, 0, %d1, 7

# CHECK-INST: and.andn.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x60,0x0c]
and.andn.t %d0, %d14, 0, %d1, 24

# CHECK-INST: and.andn.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xe0,0x0f]
and.andn.t %d0, %d14, 0, %d1, 31

# CHECK-INST: and.andn.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0x47,0xee,0x60,0x00]
and.andn.t %d0, %d14, 0, %d14, 0

# CHECK-INST: and.andn.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0x47,0xee,0xe0,0x03]
and.andn.t %d0, %d14, 0, %d14, 7

# CHECK-INST: and.andn.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0x47,0xee,0x60,0x0c]
and.andn.t %d0, %d14, 0, %d14, 24

# CHECK-INST: and.andn.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0x47,0xee,0xe0,0x0f]
and.andn.t %d0, %d14, 0, %d14, 31

# CHECK-INST: and.andn.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x60,0x00]
and.andn.t %d0, %d14, 0, %d15, 0

# CHECK-INST: and.andn.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xe0,0x03]
and.andn.t %d0, %d14, 0, %d15, 7

# CHECK-INST: and.andn.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x60,0x0c]
and.andn.t %d0, %d14, 0, %d15, 24

# CHECK-INST: and.andn.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xe0,0x0f]
and.andn.t %d0, %d14, 0, %d15, 31

# CHECK-INST: and.andn.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x67,0x00]
and.andn.t %d0, %d14, 7, %d0, 0

# CHECK-INST: and.andn.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xe7,0x03]
and.andn.t %d0, %d14, 7, %d0, 7

# CHECK-INST: and.andn.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x67,0x0c]
and.andn.t %d0, %d14, 7, %d0, 24

# CHECK-INST: and.andn.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xe7,0x0f]
and.andn.t %d0, %d14, 7, %d0, 31

# CHECK-INST: and.andn.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x67,0x00]
and.andn.t %d0, %d14, 7, %d1, 0

# CHECK-INST: and.andn.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xe7,0x03]
and.andn.t %d0, %d14, 7, %d1, 7

# CHECK-INST: and.andn.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x67,0x0c]
and.andn.t %d0, %d14, 7, %d1, 24

# CHECK-INST: and.andn.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xe7,0x0f]
and.andn.t %d0, %d14, 7, %d1, 31

# CHECK-INST: and.andn.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0x47,0xee,0x67,0x00]
and.andn.t %d0, %d14, 7, %d14, 0

# CHECK-INST: and.andn.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0x47,0xee,0xe7,0x03]
and.andn.t %d0, %d14, 7, %d14, 7

# CHECK-INST: and.andn.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0x47,0xee,0x67,0x0c]
and.andn.t %d0, %d14, 7, %d14, 24

# CHECK-INST: and.andn.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0x47,0xee,0xe7,0x0f]
and.andn.t %d0, %d14, 7, %d14, 31

# CHECK-INST: and.andn.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x67,0x00]
and.andn.t %d0, %d14, 7, %d15, 0

# CHECK-INST: and.andn.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xe7,0x03]
and.andn.t %d0, %d14, 7, %d15, 7

# CHECK-INST: and.andn.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x67,0x0c]
and.andn.t %d0, %d14, 7, %d15, 24

# CHECK-INST: and.andn.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xe7,0x0f]
and.andn.t %d0, %d14, 7, %d15, 31

# CHECK-INST: and.andn.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x78,0x00]
and.andn.t %d0, %d14, 24, %d0, 0

# CHECK-INST: and.andn.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xf8,0x03]
and.andn.t %d0, %d14, 24, %d0, 7

# CHECK-INST: and.andn.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x78,0x0c]
and.andn.t %d0, %d14, 24, %d0, 24

# CHECK-INST: and.andn.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xf8,0x0f]
and.andn.t %d0, %d14, 24, %d0, 31

# CHECK-INST: and.andn.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x78,0x00]
and.andn.t %d0, %d14, 24, %d1, 0

# CHECK-INST: and.andn.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xf8,0x03]
and.andn.t %d0, %d14, 24, %d1, 7

# CHECK-INST: and.andn.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x78,0x0c]
and.andn.t %d0, %d14, 24, %d1, 24

# CHECK-INST: and.andn.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xf8,0x0f]
and.andn.t %d0, %d14, 24, %d1, 31

# CHECK-INST: and.andn.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0x47,0xee,0x78,0x00]
and.andn.t %d0, %d14, 24, %d14, 0

# CHECK-INST: and.andn.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0x47,0xee,0xf8,0x03]
and.andn.t %d0, %d14, 24, %d14, 7

# CHECK-INST: and.andn.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0x47,0xee,0x78,0x0c]
and.andn.t %d0, %d14, 24, %d14, 24

# CHECK-INST: and.andn.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0x47,0xee,0xf8,0x0f]
and.andn.t %d0, %d14, 24, %d14, 31

# CHECK-INST: and.andn.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x78,0x00]
and.andn.t %d0, %d14, 24, %d15, 0

# CHECK-INST: and.andn.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xf8,0x03]
and.andn.t %d0, %d14, 24, %d15, 7

# CHECK-INST: and.andn.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x78,0x0c]
and.andn.t %d0, %d14, 24, %d15, 24

# CHECK-INST: and.andn.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xf8,0x0f]
and.andn.t %d0, %d14, 24, %d15, 31

# CHECK-INST: and.andn.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x7f,0x00]
and.andn.t %d0, %d14, 31, %d0, 0

# CHECK-INST: and.andn.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xff,0x03]
and.andn.t %d0, %d14, 31, %d0, 7

# CHECK-INST: and.andn.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x7f,0x0c]
and.andn.t %d0, %d14, 31, %d0, 24

# CHECK-INST: and.andn.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xff,0x0f]
and.andn.t %d0, %d14, 31, %d0, 31

# CHECK-INST: and.andn.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x7f,0x00]
and.andn.t %d0, %d14, 31, %d1, 0

# CHECK-INST: and.andn.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xff,0x03]
and.andn.t %d0, %d14, 31, %d1, 7

# CHECK-INST: and.andn.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x7f,0x0c]
and.andn.t %d0, %d14, 31, %d1, 24

# CHECK-INST: and.andn.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xff,0x0f]
and.andn.t %d0, %d14, 31, %d1, 31

# CHECK-INST: and.andn.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0x47,0xee,0x7f,0x00]
and.andn.t %d0, %d14, 31, %d14, 0

# CHECK-INST: and.andn.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0x47,0xee,0xff,0x03]
and.andn.t %d0, %d14, 31, %d14, 7

# CHECK-INST: and.andn.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0x47,0xee,0x7f,0x0c]
and.andn.t %d0, %d14, 31, %d14, 24

# CHECK-INST: and.andn.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0x47,0xee,0xff,0x0f]
and.andn.t %d0, %d14, 31, %d14, 31

# CHECK-INST: and.andn.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x7f,0x00]
and.andn.t %d0, %d14, 31, %d15, 0

# CHECK-INST: and.andn.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xff,0x03]
and.andn.t %d0, %d14, 31, %d15, 7

# CHECK-INST: and.andn.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x7f,0x0c]
and.andn.t %d0, %d14, 31, %d15, 24

# CHECK-INST: and.andn.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xff,0x0f]
and.andn.t %d0, %d14, 31, %d15, 31

# CHECK-INST: and.andn.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x60,0x00]
and.andn.t %d0, %d15, 0, %d0, 0

# CHECK-INST: and.andn.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xe0,0x03]
and.andn.t %d0, %d15, 0, %d0, 7

# CHECK-INST: and.andn.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x60,0x0c]
and.andn.t %d0, %d15, 0, %d0, 24

# CHECK-INST: and.andn.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xe0,0x0f]
and.andn.t %d0, %d15, 0, %d0, 31

# CHECK-INST: and.andn.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x60,0x00]
and.andn.t %d0, %d15, 0, %d1, 0

# CHECK-INST: and.andn.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xe0,0x03]
and.andn.t %d0, %d15, 0, %d1, 7

# CHECK-INST: and.andn.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x60,0x0c]
and.andn.t %d0, %d15, 0, %d1, 24

# CHECK-INST: and.andn.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xe0,0x0f]
and.andn.t %d0, %d15, 0, %d1, 31

# CHECK-INST: and.andn.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0x47,0xef,0x60,0x00]
and.andn.t %d0, %d15, 0, %d14, 0

# CHECK-INST: and.andn.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0x47,0xef,0xe0,0x03]
and.andn.t %d0, %d15, 0, %d14, 7

# CHECK-INST: and.andn.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0x47,0xef,0x60,0x0c]
and.andn.t %d0, %d15, 0, %d14, 24

# CHECK-INST: and.andn.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0x47,0xef,0xe0,0x0f]
and.andn.t %d0, %d15, 0, %d14, 31

# CHECK-INST: and.andn.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0x47,0xff,0x60,0x00]
and.andn.t %d0, %d15, 0, %d15, 0

# CHECK-INST: and.andn.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0x47,0xff,0xe0,0x03]
and.andn.t %d0, %d15, 0, %d15, 7

# CHECK-INST: and.andn.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0x47,0xff,0x60,0x0c]
and.andn.t %d0, %d15, 0, %d15, 24

# CHECK-INST: and.andn.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0x47,0xff,0xe0,0x0f]
and.andn.t %d0, %d15, 0, %d15, 31

# CHECK-INST: and.andn.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x67,0x00]
and.andn.t %d0, %d15, 7, %d0, 0

# CHECK-INST: and.andn.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xe7,0x03]
and.andn.t %d0, %d15, 7, %d0, 7

# CHECK-INST: and.andn.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x67,0x0c]
and.andn.t %d0, %d15, 7, %d0, 24

# CHECK-INST: and.andn.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xe7,0x0f]
and.andn.t %d0, %d15, 7, %d0, 31

# CHECK-INST: and.andn.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x67,0x00]
and.andn.t %d0, %d15, 7, %d1, 0

# CHECK-INST: and.andn.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xe7,0x03]
and.andn.t %d0, %d15, 7, %d1, 7

# CHECK-INST: and.andn.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x67,0x0c]
and.andn.t %d0, %d15, 7, %d1, 24

# CHECK-INST: and.andn.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xe7,0x0f]
and.andn.t %d0, %d15, 7, %d1, 31

# CHECK-INST: and.andn.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0x47,0xef,0x67,0x00]
and.andn.t %d0, %d15, 7, %d14, 0

# CHECK-INST: and.andn.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0x47,0xef,0xe7,0x03]
and.andn.t %d0, %d15, 7, %d14, 7

# CHECK-INST: and.andn.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0x47,0xef,0x67,0x0c]
and.andn.t %d0, %d15, 7, %d14, 24

# CHECK-INST: and.andn.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0x47,0xef,0xe7,0x0f]
and.andn.t %d0, %d15, 7, %d14, 31

# CHECK-INST: and.andn.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0x47,0xff,0x67,0x00]
and.andn.t %d0, %d15, 7, %d15, 0

# CHECK-INST: and.andn.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0x47,0xff,0xe7,0x03]
and.andn.t %d0, %d15, 7, %d15, 7

# CHECK-INST: and.andn.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0x47,0xff,0x67,0x0c]
and.andn.t %d0, %d15, 7, %d15, 24

# CHECK-INST: and.andn.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0x47,0xff,0xe7,0x0f]
and.andn.t %d0, %d15, 7, %d15, 31

# CHECK-INST: and.andn.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x78,0x00]
and.andn.t %d0, %d15, 24, %d0, 0

# CHECK-INST: and.andn.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xf8,0x03]
and.andn.t %d0, %d15, 24, %d0, 7

# CHECK-INST: and.andn.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x78,0x0c]
and.andn.t %d0, %d15, 24, %d0, 24

# CHECK-INST: and.andn.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xf8,0x0f]
and.andn.t %d0, %d15, 24, %d0, 31

# CHECK-INST: and.andn.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x78,0x00]
and.andn.t %d0, %d15, 24, %d1, 0

# CHECK-INST: and.andn.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xf8,0x03]
and.andn.t %d0, %d15, 24, %d1, 7

# CHECK-INST: and.andn.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x78,0x0c]
and.andn.t %d0, %d15, 24, %d1, 24

# CHECK-INST: and.andn.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xf8,0x0f]
and.andn.t %d0, %d15, 24, %d1, 31

# CHECK-INST: and.andn.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0x47,0xef,0x78,0x00]
and.andn.t %d0, %d15, 24, %d14, 0

# CHECK-INST: and.andn.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0x47,0xef,0xf8,0x03]
and.andn.t %d0, %d15, 24, %d14, 7

# CHECK-INST: and.andn.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0x47,0xef,0x78,0x0c]
and.andn.t %d0, %d15, 24, %d14, 24

# CHECK-INST: and.andn.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0x47,0xef,0xf8,0x0f]
and.andn.t %d0, %d15, 24, %d14, 31

# CHECK-INST: and.andn.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0x47,0xff,0x78,0x00]
and.andn.t %d0, %d15, 24, %d15, 0

# CHECK-INST: and.andn.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0x47,0xff,0xf8,0x03]
and.andn.t %d0, %d15, 24, %d15, 7

# CHECK-INST: and.andn.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0x47,0xff,0x78,0x0c]
and.andn.t %d0, %d15, 24, %d15, 24

# CHECK-INST: and.andn.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0x47,0xff,0xf8,0x0f]
and.andn.t %d0, %d15, 24, %d15, 31

# CHECK-INST: and.andn.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x7f,0x00]
and.andn.t %d0, %d15, 31, %d0, 0

# CHECK-INST: and.andn.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xff,0x03]
and.andn.t %d0, %d15, 31, %d0, 7

# CHECK-INST: and.andn.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x7f,0x0c]
and.andn.t %d0, %d15, 31, %d0, 24

# CHECK-INST: and.andn.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xff,0x0f]
and.andn.t %d0, %d15, 31, %d0, 31

# CHECK-INST: and.andn.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x7f,0x00]
and.andn.t %d0, %d15, 31, %d1, 0

# CHECK-INST: and.andn.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xff,0x03]
and.andn.t %d0, %d15, 31, %d1, 7

# CHECK-INST: and.andn.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x7f,0x0c]
and.andn.t %d0, %d15, 31, %d1, 24

# CHECK-INST: and.andn.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xff,0x0f]
and.andn.t %d0, %d15, 31, %d1, 31

# CHECK-INST: and.andn.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0x47,0xef,0x7f,0x00]
and.andn.t %d0, %d15, 31, %d14, 0

# CHECK-INST: and.andn.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0x47,0xef,0xff,0x03]
and.andn.t %d0, %d15, 31, %d14, 7

# CHECK-INST: and.andn.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0x47,0xef,0x7f,0x0c]
and.andn.t %d0, %d15, 31, %d14, 24

# CHECK-INST: and.andn.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0x47,0xef,0xff,0x0f]
and.andn.t %d0, %d15, 31, %d14, 31

# CHECK-INST: and.andn.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0x47,0xff,0x7f,0x00]
and.andn.t %d0, %d15, 31, %d15, 0

# CHECK-INST: and.andn.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0x47,0xff,0xff,0x03]
and.andn.t %d0, %d15, 31, %d15, 7

# CHECK-INST: and.andn.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0x47,0xff,0x7f,0x0c]
and.andn.t %d0, %d15, 31, %d15, 24

# CHECK-INST: and.andn.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0x47,0xff,0xff,0x0f]
and.andn.t %d0, %d15, 31, %d15, 31

# CHECK-INST: and.andn.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0x47,0x00,0x60,0x10]
and.andn.t %d1, %d0, 0, %d0, 0

# CHECK-INST: and.andn.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0x47,0x00,0xe0,0x13]
and.andn.t %d1, %d0, 0, %d0, 7

# CHECK-INST: and.andn.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0x47,0x00,0x60,0x1c]
and.andn.t %d1, %d0, 0, %d0, 24

# CHECK-INST: and.andn.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0x47,0x00,0xe0,0x1f]
and.andn.t %d1, %d0, 0, %d0, 31

# CHECK-INST: and.andn.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0x47,0x10,0x60,0x10]
and.andn.t %d1, %d0, 0, %d1, 0

# CHECK-INST: and.andn.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0x47,0x10,0xe0,0x13]
and.andn.t %d1, %d0, 0, %d1, 7

# CHECK-INST: and.andn.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0x47,0x10,0x60,0x1c]
and.andn.t %d1, %d0, 0, %d1, 24

# CHECK-INST: and.andn.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0x47,0x10,0xe0,0x1f]
and.andn.t %d1, %d0, 0, %d1, 31

# CHECK-INST: and.andn.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x60,0x10]
and.andn.t %d1, %d0, 0, %d14, 0

# CHECK-INST: and.andn.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xe0,0x13]
and.andn.t %d1, %d0, 0, %d14, 7

# CHECK-INST: and.andn.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x60,0x1c]
and.andn.t %d1, %d0, 0, %d14, 24

# CHECK-INST: and.andn.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xe0,0x1f]
and.andn.t %d1, %d0, 0, %d14, 31

# CHECK-INST: and.andn.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x60,0x10]
and.andn.t %d1, %d0, 0, %d15, 0

# CHECK-INST: and.andn.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xe0,0x13]
and.andn.t %d1, %d0, 0, %d15, 7

# CHECK-INST: and.andn.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x60,0x1c]
and.andn.t %d1, %d0, 0, %d15, 24

# CHECK-INST: and.andn.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xe0,0x1f]
and.andn.t %d1, %d0, 0, %d15, 31

# CHECK-INST: and.andn.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0x47,0x00,0x67,0x10]
and.andn.t %d1, %d0, 7, %d0, 0

# CHECK-INST: and.andn.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0x47,0x00,0xe7,0x13]
and.andn.t %d1, %d0, 7, %d0, 7

# CHECK-INST: and.andn.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0x47,0x00,0x67,0x1c]
and.andn.t %d1, %d0, 7, %d0, 24

# CHECK-INST: and.andn.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0x47,0x00,0xe7,0x1f]
and.andn.t %d1, %d0, 7, %d0, 31

# CHECK-INST: and.andn.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0x47,0x10,0x67,0x10]
and.andn.t %d1, %d0, 7, %d1, 0

# CHECK-INST: and.andn.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0x47,0x10,0xe7,0x13]
and.andn.t %d1, %d0, 7, %d1, 7

# CHECK-INST: and.andn.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0x47,0x10,0x67,0x1c]
and.andn.t %d1, %d0, 7, %d1, 24

# CHECK-INST: and.andn.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0x47,0x10,0xe7,0x1f]
and.andn.t %d1, %d0, 7, %d1, 31

# CHECK-INST: and.andn.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x67,0x10]
and.andn.t %d1, %d0, 7, %d14, 0

# CHECK-INST: and.andn.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xe7,0x13]
and.andn.t %d1, %d0, 7, %d14, 7

# CHECK-INST: and.andn.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x67,0x1c]
and.andn.t %d1, %d0, 7, %d14, 24

# CHECK-INST: and.andn.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xe7,0x1f]
and.andn.t %d1, %d0, 7, %d14, 31

# CHECK-INST: and.andn.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x67,0x10]
and.andn.t %d1, %d0, 7, %d15, 0

# CHECK-INST: and.andn.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xe7,0x13]
and.andn.t %d1, %d0, 7, %d15, 7

# CHECK-INST: and.andn.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x67,0x1c]
and.andn.t %d1, %d0, 7, %d15, 24

# CHECK-INST: and.andn.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xe7,0x1f]
and.andn.t %d1, %d0, 7, %d15, 31

# CHECK-INST: and.andn.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0x47,0x00,0x78,0x10]
and.andn.t %d1, %d0, 24, %d0, 0

# CHECK-INST: and.andn.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0x47,0x00,0xf8,0x13]
and.andn.t %d1, %d0, 24, %d0, 7

# CHECK-INST: and.andn.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0x47,0x00,0x78,0x1c]
and.andn.t %d1, %d0, 24, %d0, 24

# CHECK-INST: and.andn.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0x47,0x00,0xf8,0x1f]
and.andn.t %d1, %d0, 24, %d0, 31

# CHECK-INST: and.andn.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0x47,0x10,0x78,0x10]
and.andn.t %d1, %d0, 24, %d1, 0

# CHECK-INST: and.andn.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0x47,0x10,0xf8,0x13]
and.andn.t %d1, %d0, 24, %d1, 7

# CHECK-INST: and.andn.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0x47,0x10,0x78,0x1c]
and.andn.t %d1, %d0, 24, %d1, 24

# CHECK-INST: and.andn.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0x47,0x10,0xf8,0x1f]
and.andn.t %d1, %d0, 24, %d1, 31

# CHECK-INST: and.andn.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x78,0x10]
and.andn.t %d1, %d0, 24, %d14, 0

# CHECK-INST: and.andn.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xf8,0x13]
and.andn.t %d1, %d0, 24, %d14, 7

# CHECK-INST: and.andn.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x78,0x1c]
and.andn.t %d1, %d0, 24, %d14, 24

# CHECK-INST: and.andn.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xf8,0x1f]
and.andn.t %d1, %d0, 24, %d14, 31

# CHECK-INST: and.andn.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x78,0x10]
and.andn.t %d1, %d0, 24, %d15, 0

# CHECK-INST: and.andn.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xf8,0x13]
and.andn.t %d1, %d0, 24, %d15, 7

# CHECK-INST: and.andn.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x78,0x1c]
and.andn.t %d1, %d0, 24, %d15, 24

# CHECK-INST: and.andn.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xf8,0x1f]
and.andn.t %d1, %d0, 24, %d15, 31

# CHECK-INST: and.andn.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0x47,0x00,0x7f,0x10]
and.andn.t %d1, %d0, 31, %d0, 0

# CHECK-INST: and.andn.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0x47,0x00,0xff,0x13]
and.andn.t %d1, %d0, 31, %d0, 7

# CHECK-INST: and.andn.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0x47,0x00,0x7f,0x1c]
and.andn.t %d1, %d0, 31, %d0, 24

# CHECK-INST: and.andn.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0x47,0x00,0xff,0x1f]
and.andn.t %d1, %d0, 31, %d0, 31

# CHECK-INST: and.andn.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0x47,0x10,0x7f,0x10]
and.andn.t %d1, %d0, 31, %d1, 0

# CHECK-INST: and.andn.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0x47,0x10,0xff,0x13]
and.andn.t %d1, %d0, 31, %d1, 7

# CHECK-INST: and.andn.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0x47,0x10,0x7f,0x1c]
and.andn.t %d1, %d0, 31, %d1, 24

# CHECK-INST: and.andn.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0x47,0x10,0xff,0x1f]
and.andn.t %d1, %d0, 31, %d1, 31

# CHECK-INST: and.andn.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x7f,0x10]
and.andn.t %d1, %d0, 31, %d14, 0

# CHECK-INST: and.andn.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xff,0x13]
and.andn.t %d1, %d0, 31, %d14, 7

# CHECK-INST: and.andn.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x7f,0x1c]
and.andn.t %d1, %d0, 31, %d14, 24

# CHECK-INST: and.andn.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xff,0x1f]
and.andn.t %d1, %d0, 31, %d14, 31

# CHECK-INST: and.andn.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x7f,0x10]
and.andn.t %d1, %d0, 31, %d15, 0

# CHECK-INST: and.andn.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xff,0x13]
and.andn.t %d1, %d0, 31, %d15, 7

# CHECK-INST: and.andn.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x7f,0x1c]
and.andn.t %d1, %d0, 31, %d15, 24

# CHECK-INST: and.andn.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xff,0x1f]
and.andn.t %d1, %d0, 31, %d15, 31

# CHECK-INST: and.andn.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0x47,0x01,0x60,0x10]
and.andn.t %d1, %d1, 0, %d0, 0

# CHECK-INST: and.andn.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0x47,0x01,0xe0,0x13]
and.andn.t %d1, %d1, 0, %d0, 7

# CHECK-INST: and.andn.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0x47,0x01,0x60,0x1c]
and.andn.t %d1, %d1, 0, %d0, 24

# CHECK-INST: and.andn.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0x47,0x01,0xe0,0x1f]
and.andn.t %d1, %d1, 0, %d0, 31

# CHECK-INST: and.andn.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0x47,0x11,0x60,0x10]
and.andn.t %d1, %d1, 0, %d1, 0

# CHECK-INST: and.andn.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0x47,0x11,0xe0,0x13]
and.andn.t %d1, %d1, 0, %d1, 7

# CHECK-INST: and.andn.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0x47,0x11,0x60,0x1c]
and.andn.t %d1, %d1, 0, %d1, 24

# CHECK-INST: and.andn.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0x47,0x11,0xe0,0x1f]
and.andn.t %d1, %d1, 0, %d1, 31

# CHECK-INST: and.andn.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x60,0x10]
and.andn.t %d1, %d1, 0, %d14, 0

# CHECK-INST: and.andn.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xe0,0x13]
and.andn.t %d1, %d1, 0, %d14, 7

# CHECK-INST: and.andn.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x60,0x1c]
and.andn.t %d1, %d1, 0, %d14, 24

# CHECK-INST: and.andn.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xe0,0x1f]
and.andn.t %d1, %d1, 0, %d14, 31

# CHECK-INST: and.andn.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x60,0x10]
and.andn.t %d1, %d1, 0, %d15, 0

# CHECK-INST: and.andn.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xe0,0x13]
and.andn.t %d1, %d1, 0, %d15, 7

# CHECK-INST: and.andn.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x60,0x1c]
and.andn.t %d1, %d1, 0, %d15, 24

# CHECK-INST: and.andn.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xe0,0x1f]
and.andn.t %d1, %d1, 0, %d15, 31

# CHECK-INST: and.andn.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0x47,0x01,0x67,0x10]
and.andn.t %d1, %d1, 7, %d0, 0

# CHECK-INST: and.andn.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0x47,0x01,0xe7,0x13]
and.andn.t %d1, %d1, 7, %d0, 7

# CHECK-INST: and.andn.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0x47,0x01,0x67,0x1c]
and.andn.t %d1, %d1, 7, %d0, 24

# CHECK-INST: and.andn.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0x47,0x01,0xe7,0x1f]
and.andn.t %d1, %d1, 7, %d0, 31

# CHECK-INST: and.andn.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0x47,0x11,0x67,0x10]
and.andn.t %d1, %d1, 7, %d1, 0

# CHECK-INST: and.andn.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0x47,0x11,0xe7,0x13]
and.andn.t %d1, %d1, 7, %d1, 7

# CHECK-INST: and.andn.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0x47,0x11,0x67,0x1c]
and.andn.t %d1, %d1, 7, %d1, 24

# CHECK-INST: and.andn.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0x47,0x11,0xe7,0x1f]
and.andn.t %d1, %d1, 7, %d1, 31

# CHECK-INST: and.andn.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x67,0x10]
and.andn.t %d1, %d1, 7, %d14, 0

# CHECK-INST: and.andn.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xe7,0x13]
and.andn.t %d1, %d1, 7, %d14, 7

# CHECK-INST: and.andn.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x67,0x1c]
and.andn.t %d1, %d1, 7, %d14, 24

# CHECK-INST: and.andn.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xe7,0x1f]
and.andn.t %d1, %d1, 7, %d14, 31

# CHECK-INST: and.andn.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x67,0x10]
and.andn.t %d1, %d1, 7, %d15, 0

# CHECK-INST: and.andn.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xe7,0x13]
and.andn.t %d1, %d1, 7, %d15, 7

# CHECK-INST: and.andn.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x67,0x1c]
and.andn.t %d1, %d1, 7, %d15, 24

# CHECK-INST: and.andn.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xe7,0x1f]
and.andn.t %d1, %d1, 7, %d15, 31

# CHECK-INST: and.andn.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0x47,0x01,0x78,0x10]
and.andn.t %d1, %d1, 24, %d0, 0

# CHECK-INST: and.andn.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0x47,0x01,0xf8,0x13]
and.andn.t %d1, %d1, 24, %d0, 7

# CHECK-INST: and.andn.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0x47,0x01,0x78,0x1c]
and.andn.t %d1, %d1, 24, %d0, 24

# CHECK-INST: and.andn.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0x47,0x01,0xf8,0x1f]
and.andn.t %d1, %d1, 24, %d0, 31

# CHECK-INST: and.andn.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0x47,0x11,0x78,0x10]
and.andn.t %d1, %d1, 24, %d1, 0

# CHECK-INST: and.andn.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0x47,0x11,0xf8,0x13]
and.andn.t %d1, %d1, 24, %d1, 7

# CHECK-INST: and.andn.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0x47,0x11,0x78,0x1c]
and.andn.t %d1, %d1, 24, %d1, 24

# CHECK-INST: and.andn.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0x47,0x11,0xf8,0x1f]
and.andn.t %d1, %d1, 24, %d1, 31

# CHECK-INST: and.andn.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x78,0x10]
and.andn.t %d1, %d1, 24, %d14, 0

# CHECK-INST: and.andn.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xf8,0x13]
and.andn.t %d1, %d1, 24, %d14, 7

# CHECK-INST: and.andn.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x78,0x1c]
and.andn.t %d1, %d1, 24, %d14, 24

# CHECK-INST: and.andn.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xf8,0x1f]
and.andn.t %d1, %d1, 24, %d14, 31

# CHECK-INST: and.andn.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x78,0x10]
and.andn.t %d1, %d1, 24, %d15, 0

# CHECK-INST: and.andn.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xf8,0x13]
and.andn.t %d1, %d1, 24, %d15, 7

# CHECK-INST: and.andn.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x78,0x1c]
and.andn.t %d1, %d1, 24, %d15, 24

# CHECK-INST: and.andn.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xf8,0x1f]
and.andn.t %d1, %d1, 24, %d15, 31

# CHECK-INST: and.andn.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0x47,0x01,0x7f,0x10]
and.andn.t %d1, %d1, 31, %d0, 0

# CHECK-INST: and.andn.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0x47,0x01,0xff,0x13]
and.andn.t %d1, %d1, 31, %d0, 7

# CHECK-INST: and.andn.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0x47,0x01,0x7f,0x1c]
and.andn.t %d1, %d1, 31, %d0, 24

# CHECK-INST: and.andn.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0x47,0x01,0xff,0x1f]
and.andn.t %d1, %d1, 31, %d0, 31

# CHECK-INST: and.andn.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0x47,0x11,0x7f,0x10]
and.andn.t %d1, %d1, 31, %d1, 0

# CHECK-INST: and.andn.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0x47,0x11,0xff,0x13]
and.andn.t %d1, %d1, 31, %d1, 7

# CHECK-INST: and.andn.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0x47,0x11,0x7f,0x1c]
and.andn.t %d1, %d1, 31, %d1, 24

# CHECK-INST: and.andn.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0x47,0x11,0xff,0x1f]
and.andn.t %d1, %d1, 31, %d1, 31

# CHECK-INST: and.andn.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x7f,0x10]
and.andn.t %d1, %d1, 31, %d14, 0

# CHECK-INST: and.andn.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xff,0x13]
and.andn.t %d1, %d1, 31, %d14, 7

# CHECK-INST: and.andn.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x7f,0x1c]
and.andn.t %d1, %d1, 31, %d14, 24

# CHECK-INST: and.andn.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xff,0x1f]
and.andn.t %d1, %d1, 31, %d14, 31

# CHECK-INST: and.andn.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x7f,0x10]
and.andn.t %d1, %d1, 31, %d15, 0

# CHECK-INST: and.andn.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xff,0x13]
and.andn.t %d1, %d1, 31, %d15, 7

# CHECK-INST: and.andn.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x7f,0x1c]
and.andn.t %d1, %d1, 31, %d15, 24

# CHECK-INST: and.andn.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xff,0x1f]
and.andn.t %d1, %d1, 31, %d15, 31

# CHECK-INST: and.andn.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x60,0x10]
and.andn.t %d1, %d14, 0, %d0, 0

# CHECK-INST: and.andn.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xe0,0x13]
and.andn.t %d1, %d14, 0, %d0, 7

# CHECK-INST: and.andn.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x60,0x1c]
and.andn.t %d1, %d14, 0, %d0, 24

# CHECK-INST: and.andn.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xe0,0x1f]
and.andn.t %d1, %d14, 0, %d0, 31

# CHECK-INST: and.andn.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x60,0x10]
and.andn.t %d1, %d14, 0, %d1, 0

# CHECK-INST: and.andn.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xe0,0x13]
and.andn.t %d1, %d14, 0, %d1, 7

# CHECK-INST: and.andn.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x60,0x1c]
and.andn.t %d1, %d14, 0, %d1, 24

# CHECK-INST: and.andn.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xe0,0x1f]
and.andn.t %d1, %d14, 0, %d1, 31

# CHECK-INST: and.andn.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0x47,0xee,0x60,0x10]
and.andn.t %d1, %d14, 0, %d14, 0

# CHECK-INST: and.andn.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0x47,0xee,0xe0,0x13]
and.andn.t %d1, %d14, 0, %d14, 7

# CHECK-INST: and.andn.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0x47,0xee,0x60,0x1c]
and.andn.t %d1, %d14, 0, %d14, 24

# CHECK-INST: and.andn.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0x47,0xee,0xe0,0x1f]
and.andn.t %d1, %d14, 0, %d14, 31

# CHECK-INST: and.andn.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x60,0x10]
and.andn.t %d1, %d14, 0, %d15, 0

# CHECK-INST: and.andn.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xe0,0x13]
and.andn.t %d1, %d14, 0, %d15, 7

# CHECK-INST: and.andn.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x60,0x1c]
and.andn.t %d1, %d14, 0, %d15, 24

# CHECK-INST: and.andn.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xe0,0x1f]
and.andn.t %d1, %d14, 0, %d15, 31

# CHECK-INST: and.andn.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x67,0x10]
and.andn.t %d1, %d14, 7, %d0, 0

# CHECK-INST: and.andn.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xe7,0x13]
and.andn.t %d1, %d14, 7, %d0, 7

# CHECK-INST: and.andn.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x67,0x1c]
and.andn.t %d1, %d14, 7, %d0, 24

# CHECK-INST: and.andn.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xe7,0x1f]
and.andn.t %d1, %d14, 7, %d0, 31

# CHECK-INST: and.andn.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x67,0x10]
and.andn.t %d1, %d14, 7, %d1, 0

# CHECK-INST: and.andn.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xe7,0x13]
and.andn.t %d1, %d14, 7, %d1, 7

# CHECK-INST: and.andn.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x67,0x1c]
and.andn.t %d1, %d14, 7, %d1, 24

# CHECK-INST: and.andn.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xe7,0x1f]
and.andn.t %d1, %d14, 7, %d1, 31

# CHECK-INST: and.andn.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0x47,0xee,0x67,0x10]
and.andn.t %d1, %d14, 7, %d14, 0

# CHECK-INST: and.andn.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0x47,0xee,0xe7,0x13]
and.andn.t %d1, %d14, 7, %d14, 7

# CHECK-INST: and.andn.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0x47,0xee,0x67,0x1c]
and.andn.t %d1, %d14, 7, %d14, 24

# CHECK-INST: and.andn.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0x47,0xee,0xe7,0x1f]
and.andn.t %d1, %d14, 7, %d14, 31

# CHECK-INST: and.andn.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x67,0x10]
and.andn.t %d1, %d14, 7, %d15, 0

# CHECK-INST: and.andn.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xe7,0x13]
and.andn.t %d1, %d14, 7, %d15, 7

# CHECK-INST: and.andn.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x67,0x1c]
and.andn.t %d1, %d14, 7, %d15, 24

# CHECK-INST: and.andn.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xe7,0x1f]
and.andn.t %d1, %d14, 7, %d15, 31

# CHECK-INST: and.andn.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x78,0x10]
and.andn.t %d1, %d14, 24, %d0, 0

# CHECK-INST: and.andn.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xf8,0x13]
and.andn.t %d1, %d14, 24, %d0, 7

# CHECK-INST: and.andn.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x78,0x1c]
and.andn.t %d1, %d14, 24, %d0, 24

# CHECK-INST: and.andn.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xf8,0x1f]
and.andn.t %d1, %d14, 24, %d0, 31

# CHECK-INST: and.andn.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x78,0x10]
and.andn.t %d1, %d14, 24, %d1, 0

# CHECK-INST: and.andn.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xf8,0x13]
and.andn.t %d1, %d14, 24, %d1, 7

# CHECK-INST: and.andn.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x78,0x1c]
and.andn.t %d1, %d14, 24, %d1, 24

# CHECK-INST: and.andn.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xf8,0x1f]
and.andn.t %d1, %d14, 24, %d1, 31

# CHECK-INST: and.andn.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0x47,0xee,0x78,0x10]
and.andn.t %d1, %d14, 24, %d14, 0

# CHECK-INST: and.andn.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0x47,0xee,0xf8,0x13]
and.andn.t %d1, %d14, 24, %d14, 7

# CHECK-INST: and.andn.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0x47,0xee,0x78,0x1c]
and.andn.t %d1, %d14, 24, %d14, 24

# CHECK-INST: and.andn.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0x47,0xee,0xf8,0x1f]
and.andn.t %d1, %d14, 24, %d14, 31

# CHECK-INST: and.andn.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x78,0x10]
and.andn.t %d1, %d14, 24, %d15, 0

# CHECK-INST: and.andn.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xf8,0x13]
and.andn.t %d1, %d14, 24, %d15, 7

# CHECK-INST: and.andn.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x78,0x1c]
and.andn.t %d1, %d14, 24, %d15, 24

# CHECK-INST: and.andn.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xf8,0x1f]
and.andn.t %d1, %d14, 24, %d15, 31

# CHECK-INST: and.andn.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x7f,0x10]
and.andn.t %d1, %d14, 31, %d0, 0

# CHECK-INST: and.andn.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xff,0x13]
and.andn.t %d1, %d14, 31, %d0, 7

# CHECK-INST: and.andn.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x7f,0x1c]
and.andn.t %d1, %d14, 31, %d0, 24

# CHECK-INST: and.andn.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xff,0x1f]
and.andn.t %d1, %d14, 31, %d0, 31

# CHECK-INST: and.andn.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x7f,0x10]
and.andn.t %d1, %d14, 31, %d1, 0

# CHECK-INST: and.andn.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xff,0x13]
and.andn.t %d1, %d14, 31, %d1, 7

# CHECK-INST: and.andn.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x7f,0x1c]
and.andn.t %d1, %d14, 31, %d1, 24

# CHECK-INST: and.andn.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xff,0x1f]
and.andn.t %d1, %d14, 31, %d1, 31

# CHECK-INST: and.andn.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0x47,0xee,0x7f,0x10]
and.andn.t %d1, %d14, 31, %d14, 0

# CHECK-INST: and.andn.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0x47,0xee,0xff,0x13]
and.andn.t %d1, %d14, 31, %d14, 7

# CHECK-INST: and.andn.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0x47,0xee,0x7f,0x1c]
and.andn.t %d1, %d14, 31, %d14, 24

# CHECK-INST: and.andn.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0x47,0xee,0xff,0x1f]
and.andn.t %d1, %d14, 31, %d14, 31

# CHECK-INST: and.andn.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x7f,0x10]
and.andn.t %d1, %d14, 31, %d15, 0

# CHECK-INST: and.andn.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xff,0x13]
and.andn.t %d1, %d14, 31, %d15, 7

# CHECK-INST: and.andn.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x7f,0x1c]
and.andn.t %d1, %d14, 31, %d15, 24

# CHECK-INST: and.andn.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xff,0x1f]
and.andn.t %d1, %d14, 31, %d15, 31

# CHECK-INST: and.andn.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x60,0x10]
and.andn.t %d1, %d15, 0, %d0, 0

# CHECK-INST: and.andn.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xe0,0x13]
and.andn.t %d1, %d15, 0, %d0, 7

# CHECK-INST: and.andn.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x60,0x1c]
and.andn.t %d1, %d15, 0, %d0, 24

# CHECK-INST: and.andn.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xe0,0x1f]
and.andn.t %d1, %d15, 0, %d0, 31

# CHECK-INST: and.andn.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x60,0x10]
and.andn.t %d1, %d15, 0, %d1, 0

# CHECK-INST: and.andn.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xe0,0x13]
and.andn.t %d1, %d15, 0, %d1, 7

# CHECK-INST: and.andn.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x60,0x1c]
and.andn.t %d1, %d15, 0, %d1, 24

# CHECK-INST: and.andn.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xe0,0x1f]
and.andn.t %d1, %d15, 0, %d1, 31

# CHECK-INST: and.andn.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0x47,0xef,0x60,0x10]
and.andn.t %d1, %d15, 0, %d14, 0

# CHECK-INST: and.andn.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0x47,0xef,0xe0,0x13]
and.andn.t %d1, %d15, 0, %d14, 7

# CHECK-INST: and.andn.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0x47,0xef,0x60,0x1c]
and.andn.t %d1, %d15, 0, %d14, 24

# CHECK-INST: and.andn.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0x47,0xef,0xe0,0x1f]
and.andn.t %d1, %d15, 0, %d14, 31

# CHECK-INST: and.andn.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0x47,0xff,0x60,0x10]
and.andn.t %d1, %d15, 0, %d15, 0

# CHECK-INST: and.andn.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0x47,0xff,0xe0,0x13]
and.andn.t %d1, %d15, 0, %d15, 7

# CHECK-INST: and.andn.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0x47,0xff,0x60,0x1c]
and.andn.t %d1, %d15, 0, %d15, 24

# CHECK-INST: and.andn.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0x47,0xff,0xe0,0x1f]
and.andn.t %d1, %d15, 0, %d15, 31

# CHECK-INST: and.andn.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x67,0x10]
and.andn.t %d1, %d15, 7, %d0, 0

# CHECK-INST: and.andn.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xe7,0x13]
and.andn.t %d1, %d15, 7, %d0, 7

# CHECK-INST: and.andn.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x67,0x1c]
and.andn.t %d1, %d15, 7, %d0, 24

# CHECK-INST: and.andn.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xe7,0x1f]
and.andn.t %d1, %d15, 7, %d0, 31

# CHECK-INST: and.andn.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x67,0x10]
and.andn.t %d1, %d15, 7, %d1, 0

# CHECK-INST: and.andn.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xe7,0x13]
and.andn.t %d1, %d15, 7, %d1, 7

# CHECK-INST: and.andn.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x67,0x1c]
and.andn.t %d1, %d15, 7, %d1, 24

# CHECK-INST: and.andn.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xe7,0x1f]
and.andn.t %d1, %d15, 7, %d1, 31

# CHECK-INST: and.andn.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0x47,0xef,0x67,0x10]
and.andn.t %d1, %d15, 7, %d14, 0

# CHECK-INST: and.andn.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0x47,0xef,0xe7,0x13]
and.andn.t %d1, %d15, 7, %d14, 7

# CHECK-INST: and.andn.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0x47,0xef,0x67,0x1c]
and.andn.t %d1, %d15, 7, %d14, 24

# CHECK-INST: and.andn.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0x47,0xef,0xe7,0x1f]
and.andn.t %d1, %d15, 7, %d14, 31

# CHECK-INST: and.andn.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0x47,0xff,0x67,0x10]
and.andn.t %d1, %d15, 7, %d15, 0

# CHECK-INST: and.andn.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0x47,0xff,0xe7,0x13]
and.andn.t %d1, %d15, 7, %d15, 7

# CHECK-INST: and.andn.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0x47,0xff,0x67,0x1c]
and.andn.t %d1, %d15, 7, %d15, 24

# CHECK-INST: and.andn.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0x47,0xff,0xe7,0x1f]
and.andn.t %d1, %d15, 7, %d15, 31

# CHECK-INST: and.andn.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x78,0x10]
and.andn.t %d1, %d15, 24, %d0, 0

# CHECK-INST: and.andn.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xf8,0x13]
and.andn.t %d1, %d15, 24, %d0, 7

# CHECK-INST: and.andn.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x78,0x1c]
and.andn.t %d1, %d15, 24, %d0, 24

# CHECK-INST: and.andn.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xf8,0x1f]
and.andn.t %d1, %d15, 24, %d0, 31

# CHECK-INST: and.andn.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x78,0x10]
and.andn.t %d1, %d15, 24, %d1, 0

# CHECK-INST: and.andn.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xf8,0x13]
and.andn.t %d1, %d15, 24, %d1, 7

# CHECK-INST: and.andn.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x78,0x1c]
and.andn.t %d1, %d15, 24, %d1, 24

# CHECK-INST: and.andn.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xf8,0x1f]
and.andn.t %d1, %d15, 24, %d1, 31

# CHECK-INST: and.andn.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0x47,0xef,0x78,0x10]
and.andn.t %d1, %d15, 24, %d14, 0

# CHECK-INST: and.andn.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0x47,0xef,0xf8,0x13]
and.andn.t %d1, %d15, 24, %d14, 7

# CHECK-INST: and.andn.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0x47,0xef,0x78,0x1c]
and.andn.t %d1, %d15, 24, %d14, 24

# CHECK-INST: and.andn.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0x47,0xef,0xf8,0x1f]
and.andn.t %d1, %d15, 24, %d14, 31

# CHECK-INST: and.andn.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0x47,0xff,0x78,0x10]
and.andn.t %d1, %d15, 24, %d15, 0

# CHECK-INST: and.andn.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0x47,0xff,0xf8,0x13]
and.andn.t %d1, %d15, 24, %d15, 7

# CHECK-INST: and.andn.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0x47,0xff,0x78,0x1c]
and.andn.t %d1, %d15, 24, %d15, 24

# CHECK-INST: and.andn.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0x47,0xff,0xf8,0x1f]
and.andn.t %d1, %d15, 24, %d15, 31

# CHECK-INST: and.andn.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x7f,0x10]
and.andn.t %d1, %d15, 31, %d0, 0

# CHECK-INST: and.andn.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xff,0x13]
and.andn.t %d1, %d15, 31, %d0, 7

# CHECK-INST: and.andn.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x7f,0x1c]
and.andn.t %d1, %d15, 31, %d0, 24

# CHECK-INST: and.andn.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xff,0x1f]
and.andn.t %d1, %d15, 31, %d0, 31

# CHECK-INST: and.andn.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x7f,0x10]
and.andn.t %d1, %d15, 31, %d1, 0

# CHECK-INST: and.andn.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xff,0x13]
and.andn.t %d1, %d15, 31, %d1, 7

# CHECK-INST: and.andn.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x7f,0x1c]
and.andn.t %d1, %d15, 31, %d1, 24

# CHECK-INST: and.andn.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xff,0x1f]
and.andn.t %d1, %d15, 31, %d1, 31

# CHECK-INST: and.andn.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0x47,0xef,0x7f,0x10]
and.andn.t %d1, %d15, 31, %d14, 0

# CHECK-INST: and.andn.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0x47,0xef,0xff,0x13]
and.andn.t %d1, %d15, 31, %d14, 7

# CHECK-INST: and.andn.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0x47,0xef,0x7f,0x1c]
and.andn.t %d1, %d15, 31, %d14, 24

# CHECK-INST: and.andn.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0x47,0xef,0xff,0x1f]
and.andn.t %d1, %d15, 31, %d14, 31

# CHECK-INST: and.andn.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0x47,0xff,0x7f,0x10]
and.andn.t %d1, %d15, 31, %d15, 0

# CHECK-INST: and.andn.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0x47,0xff,0xff,0x13]
and.andn.t %d1, %d15, 31, %d15, 7

# CHECK-INST: and.andn.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0x47,0xff,0x7f,0x1c]
and.andn.t %d1, %d15, 31, %d15, 24

# CHECK-INST: and.andn.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0x47,0xff,0xff,0x1f]
and.andn.t %d1, %d15, 31, %d15, 31

# CHECK-INST: and.andn.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0x47,0x00,0x60,0xe0]
and.andn.t %d14, %d0, 0, %d0, 0

# CHECK-INST: and.andn.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0x47,0x00,0xe0,0xe3]
and.andn.t %d14, %d0, 0, %d0, 7

# CHECK-INST: and.andn.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0x47,0x00,0x60,0xec]
and.andn.t %d14, %d0, 0, %d0, 24

# CHECK-INST: and.andn.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0x47,0x00,0xe0,0xef]
and.andn.t %d14, %d0, 0, %d0, 31

# CHECK-INST: and.andn.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0x47,0x10,0x60,0xe0]
and.andn.t %d14, %d0, 0, %d1, 0

# CHECK-INST: and.andn.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0x47,0x10,0xe0,0xe3]
and.andn.t %d14, %d0, 0, %d1, 7

# CHECK-INST: and.andn.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0x47,0x10,0x60,0xec]
and.andn.t %d14, %d0, 0, %d1, 24

# CHECK-INST: and.andn.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0x47,0x10,0xe0,0xef]
and.andn.t %d14, %d0, 0, %d1, 31

# CHECK-INST: and.andn.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x60,0xe0]
and.andn.t %d14, %d0, 0, %d14, 0

# CHECK-INST: and.andn.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xe0,0xe3]
and.andn.t %d14, %d0, 0, %d14, 7

# CHECK-INST: and.andn.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x60,0xec]
and.andn.t %d14, %d0, 0, %d14, 24

# CHECK-INST: and.andn.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xe0,0xef]
and.andn.t %d14, %d0, 0, %d14, 31

# CHECK-INST: and.andn.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x60,0xe0]
and.andn.t %d14, %d0, 0, %d15, 0

# CHECK-INST: and.andn.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xe0,0xe3]
and.andn.t %d14, %d0, 0, %d15, 7

# CHECK-INST: and.andn.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x60,0xec]
and.andn.t %d14, %d0, 0, %d15, 24

# CHECK-INST: and.andn.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xe0,0xef]
and.andn.t %d14, %d0, 0, %d15, 31

# CHECK-INST: and.andn.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0x47,0x00,0x67,0xe0]
and.andn.t %d14, %d0, 7, %d0, 0

# CHECK-INST: and.andn.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0x47,0x00,0xe7,0xe3]
and.andn.t %d14, %d0, 7, %d0, 7

# CHECK-INST: and.andn.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0x47,0x00,0x67,0xec]
and.andn.t %d14, %d0, 7, %d0, 24

# CHECK-INST: and.andn.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0x47,0x00,0xe7,0xef]
and.andn.t %d14, %d0, 7, %d0, 31

# CHECK-INST: and.andn.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0x47,0x10,0x67,0xe0]
and.andn.t %d14, %d0, 7, %d1, 0

# CHECK-INST: and.andn.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0x47,0x10,0xe7,0xe3]
and.andn.t %d14, %d0, 7, %d1, 7

# CHECK-INST: and.andn.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0x47,0x10,0x67,0xec]
and.andn.t %d14, %d0, 7, %d1, 24

# CHECK-INST: and.andn.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0x47,0x10,0xe7,0xef]
and.andn.t %d14, %d0, 7, %d1, 31

# CHECK-INST: and.andn.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x67,0xe0]
and.andn.t %d14, %d0, 7, %d14, 0

# CHECK-INST: and.andn.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xe7,0xe3]
and.andn.t %d14, %d0, 7, %d14, 7

# CHECK-INST: and.andn.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x67,0xec]
and.andn.t %d14, %d0, 7, %d14, 24

# CHECK-INST: and.andn.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xe7,0xef]
and.andn.t %d14, %d0, 7, %d14, 31

# CHECK-INST: and.andn.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x67,0xe0]
and.andn.t %d14, %d0, 7, %d15, 0

# CHECK-INST: and.andn.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xe7,0xe3]
and.andn.t %d14, %d0, 7, %d15, 7

# CHECK-INST: and.andn.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x67,0xec]
and.andn.t %d14, %d0, 7, %d15, 24

# CHECK-INST: and.andn.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xe7,0xef]
and.andn.t %d14, %d0, 7, %d15, 31

# CHECK-INST: and.andn.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0x47,0x00,0x78,0xe0]
and.andn.t %d14, %d0, 24, %d0, 0

# CHECK-INST: and.andn.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0x47,0x00,0xf8,0xe3]
and.andn.t %d14, %d0, 24, %d0, 7

# CHECK-INST: and.andn.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0x47,0x00,0x78,0xec]
and.andn.t %d14, %d0, 24, %d0, 24

# CHECK-INST: and.andn.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0x47,0x00,0xf8,0xef]
and.andn.t %d14, %d0, 24, %d0, 31

# CHECK-INST: and.andn.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0x47,0x10,0x78,0xe0]
and.andn.t %d14, %d0, 24, %d1, 0

# CHECK-INST: and.andn.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0x47,0x10,0xf8,0xe3]
and.andn.t %d14, %d0, 24, %d1, 7

# CHECK-INST: and.andn.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0x47,0x10,0x78,0xec]
and.andn.t %d14, %d0, 24, %d1, 24

# CHECK-INST: and.andn.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0x47,0x10,0xf8,0xef]
and.andn.t %d14, %d0, 24, %d1, 31

# CHECK-INST: and.andn.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x78,0xe0]
and.andn.t %d14, %d0, 24, %d14, 0

# CHECK-INST: and.andn.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xf8,0xe3]
and.andn.t %d14, %d0, 24, %d14, 7

# CHECK-INST: and.andn.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x78,0xec]
and.andn.t %d14, %d0, 24, %d14, 24

# CHECK-INST: and.andn.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xf8,0xef]
and.andn.t %d14, %d0, 24, %d14, 31

# CHECK-INST: and.andn.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x78,0xe0]
and.andn.t %d14, %d0, 24, %d15, 0

# CHECK-INST: and.andn.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xf8,0xe3]
and.andn.t %d14, %d0, 24, %d15, 7

# CHECK-INST: and.andn.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x78,0xec]
and.andn.t %d14, %d0, 24, %d15, 24

# CHECK-INST: and.andn.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xf8,0xef]
and.andn.t %d14, %d0, 24, %d15, 31

# CHECK-INST: and.andn.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0x47,0x00,0x7f,0xe0]
and.andn.t %d14, %d0, 31, %d0, 0

# CHECK-INST: and.andn.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0x47,0x00,0xff,0xe3]
and.andn.t %d14, %d0, 31, %d0, 7

# CHECK-INST: and.andn.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0x47,0x00,0x7f,0xec]
and.andn.t %d14, %d0, 31, %d0, 24

# CHECK-INST: and.andn.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0x47,0x00,0xff,0xef]
and.andn.t %d14, %d0, 31, %d0, 31

# CHECK-INST: and.andn.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0x47,0x10,0x7f,0xe0]
and.andn.t %d14, %d0, 31, %d1, 0

# CHECK-INST: and.andn.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0x47,0x10,0xff,0xe3]
and.andn.t %d14, %d0, 31, %d1, 7

# CHECK-INST: and.andn.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0x47,0x10,0x7f,0xec]
and.andn.t %d14, %d0, 31, %d1, 24

# CHECK-INST: and.andn.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0x47,0x10,0xff,0xef]
and.andn.t %d14, %d0, 31, %d1, 31

# CHECK-INST: and.andn.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x7f,0xe0]
and.andn.t %d14, %d0, 31, %d14, 0

# CHECK-INST: and.andn.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xff,0xe3]
and.andn.t %d14, %d0, 31, %d14, 7

# CHECK-INST: and.andn.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x7f,0xec]
and.andn.t %d14, %d0, 31, %d14, 24

# CHECK-INST: and.andn.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xff,0xef]
and.andn.t %d14, %d0, 31, %d14, 31

# CHECK-INST: and.andn.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x7f,0xe0]
and.andn.t %d14, %d0, 31, %d15, 0

# CHECK-INST: and.andn.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xff,0xe3]
and.andn.t %d14, %d0, 31, %d15, 7

# CHECK-INST: and.andn.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x7f,0xec]
and.andn.t %d14, %d0, 31, %d15, 24

# CHECK-INST: and.andn.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xff,0xef]
and.andn.t %d14, %d0, 31, %d15, 31

# CHECK-INST: and.andn.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0x47,0x01,0x60,0xe0]
and.andn.t %d14, %d1, 0, %d0, 0

# CHECK-INST: and.andn.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0x47,0x01,0xe0,0xe3]
and.andn.t %d14, %d1, 0, %d0, 7

# CHECK-INST: and.andn.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0x47,0x01,0x60,0xec]
and.andn.t %d14, %d1, 0, %d0, 24

# CHECK-INST: and.andn.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0x47,0x01,0xe0,0xef]
and.andn.t %d14, %d1, 0, %d0, 31

# CHECK-INST: and.andn.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0x47,0x11,0x60,0xe0]
and.andn.t %d14, %d1, 0, %d1, 0

# CHECK-INST: and.andn.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0x47,0x11,0xe0,0xe3]
and.andn.t %d14, %d1, 0, %d1, 7

# CHECK-INST: and.andn.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0x47,0x11,0x60,0xec]
and.andn.t %d14, %d1, 0, %d1, 24

# CHECK-INST: and.andn.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0x47,0x11,0xe0,0xef]
and.andn.t %d14, %d1, 0, %d1, 31

# CHECK-INST: and.andn.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x60,0xe0]
and.andn.t %d14, %d1, 0, %d14, 0

# CHECK-INST: and.andn.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xe0,0xe3]
and.andn.t %d14, %d1, 0, %d14, 7

# CHECK-INST: and.andn.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x60,0xec]
and.andn.t %d14, %d1, 0, %d14, 24

# CHECK-INST: and.andn.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xe0,0xef]
and.andn.t %d14, %d1, 0, %d14, 31

# CHECK-INST: and.andn.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x60,0xe0]
and.andn.t %d14, %d1, 0, %d15, 0

# CHECK-INST: and.andn.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xe0,0xe3]
and.andn.t %d14, %d1, 0, %d15, 7

# CHECK-INST: and.andn.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x60,0xec]
and.andn.t %d14, %d1, 0, %d15, 24

# CHECK-INST: and.andn.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xe0,0xef]
and.andn.t %d14, %d1, 0, %d15, 31

# CHECK-INST: and.andn.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0x47,0x01,0x67,0xe0]
and.andn.t %d14, %d1, 7, %d0, 0

# CHECK-INST: and.andn.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0x47,0x01,0xe7,0xe3]
and.andn.t %d14, %d1, 7, %d0, 7

# CHECK-INST: and.andn.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0x47,0x01,0x67,0xec]
and.andn.t %d14, %d1, 7, %d0, 24

# CHECK-INST: and.andn.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0x47,0x01,0xe7,0xef]
and.andn.t %d14, %d1, 7, %d0, 31

# CHECK-INST: and.andn.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0x47,0x11,0x67,0xe0]
and.andn.t %d14, %d1, 7, %d1, 0

# CHECK-INST: and.andn.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0x47,0x11,0xe7,0xe3]
and.andn.t %d14, %d1, 7, %d1, 7

# CHECK-INST: and.andn.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0x47,0x11,0x67,0xec]
and.andn.t %d14, %d1, 7, %d1, 24

# CHECK-INST: and.andn.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0x47,0x11,0xe7,0xef]
and.andn.t %d14, %d1, 7, %d1, 31

# CHECK-INST: and.andn.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x67,0xe0]
and.andn.t %d14, %d1, 7, %d14, 0

# CHECK-INST: and.andn.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xe7,0xe3]
and.andn.t %d14, %d1, 7, %d14, 7

# CHECK-INST: and.andn.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x67,0xec]
and.andn.t %d14, %d1, 7, %d14, 24

# CHECK-INST: and.andn.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xe7,0xef]
and.andn.t %d14, %d1, 7, %d14, 31

# CHECK-INST: and.andn.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x67,0xe0]
and.andn.t %d14, %d1, 7, %d15, 0

# CHECK-INST: and.andn.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xe7,0xe3]
and.andn.t %d14, %d1, 7, %d15, 7

# CHECK-INST: and.andn.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x67,0xec]
and.andn.t %d14, %d1, 7, %d15, 24

# CHECK-INST: and.andn.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xe7,0xef]
and.andn.t %d14, %d1, 7, %d15, 31

# CHECK-INST: and.andn.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0x47,0x01,0x78,0xe0]
and.andn.t %d14, %d1, 24, %d0, 0

# CHECK-INST: and.andn.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0x47,0x01,0xf8,0xe3]
and.andn.t %d14, %d1, 24, %d0, 7

# CHECK-INST: and.andn.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0x47,0x01,0x78,0xec]
and.andn.t %d14, %d1, 24, %d0, 24

# CHECK-INST: and.andn.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0x47,0x01,0xf8,0xef]
and.andn.t %d14, %d1, 24, %d0, 31

# CHECK-INST: and.andn.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0x47,0x11,0x78,0xe0]
and.andn.t %d14, %d1, 24, %d1, 0

# CHECK-INST: and.andn.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0x47,0x11,0xf8,0xe3]
and.andn.t %d14, %d1, 24, %d1, 7

# CHECK-INST: and.andn.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0x47,0x11,0x78,0xec]
and.andn.t %d14, %d1, 24, %d1, 24

# CHECK-INST: and.andn.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0x47,0x11,0xf8,0xef]
and.andn.t %d14, %d1, 24, %d1, 31

# CHECK-INST: and.andn.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x78,0xe0]
and.andn.t %d14, %d1, 24, %d14, 0

# CHECK-INST: and.andn.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xf8,0xe3]
and.andn.t %d14, %d1, 24, %d14, 7

# CHECK-INST: and.andn.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x78,0xec]
and.andn.t %d14, %d1, 24, %d14, 24

# CHECK-INST: and.andn.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xf8,0xef]
and.andn.t %d14, %d1, 24, %d14, 31

# CHECK-INST: and.andn.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x78,0xe0]
and.andn.t %d14, %d1, 24, %d15, 0

# CHECK-INST: and.andn.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xf8,0xe3]
and.andn.t %d14, %d1, 24, %d15, 7

# CHECK-INST: and.andn.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x78,0xec]
and.andn.t %d14, %d1, 24, %d15, 24

# CHECK-INST: and.andn.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xf8,0xef]
and.andn.t %d14, %d1, 24, %d15, 31

# CHECK-INST: and.andn.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0x47,0x01,0x7f,0xe0]
and.andn.t %d14, %d1, 31, %d0, 0

# CHECK-INST: and.andn.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0x47,0x01,0xff,0xe3]
and.andn.t %d14, %d1, 31, %d0, 7

# CHECK-INST: and.andn.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0x47,0x01,0x7f,0xec]
and.andn.t %d14, %d1, 31, %d0, 24

# CHECK-INST: and.andn.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0x47,0x01,0xff,0xef]
and.andn.t %d14, %d1, 31, %d0, 31

# CHECK-INST: and.andn.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0x47,0x11,0x7f,0xe0]
and.andn.t %d14, %d1, 31, %d1, 0

# CHECK-INST: and.andn.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0x47,0x11,0xff,0xe3]
and.andn.t %d14, %d1, 31, %d1, 7

# CHECK-INST: and.andn.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0x47,0x11,0x7f,0xec]
and.andn.t %d14, %d1, 31, %d1, 24

# CHECK-INST: and.andn.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0x47,0x11,0xff,0xef]
and.andn.t %d14, %d1, 31, %d1, 31

# CHECK-INST: and.andn.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x7f,0xe0]
and.andn.t %d14, %d1, 31, %d14, 0

# CHECK-INST: and.andn.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xff,0xe3]
and.andn.t %d14, %d1, 31, %d14, 7

# CHECK-INST: and.andn.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x7f,0xec]
and.andn.t %d14, %d1, 31, %d14, 24

# CHECK-INST: and.andn.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xff,0xef]
and.andn.t %d14, %d1, 31, %d14, 31

# CHECK-INST: and.andn.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x7f,0xe0]
and.andn.t %d14, %d1, 31, %d15, 0

# CHECK-INST: and.andn.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xff,0xe3]
and.andn.t %d14, %d1, 31, %d15, 7

# CHECK-INST: and.andn.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x7f,0xec]
and.andn.t %d14, %d1, 31, %d15, 24

# CHECK-INST: and.andn.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xff,0xef]
and.andn.t %d14, %d1, 31, %d15, 31

# CHECK-INST: and.andn.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x60,0xe0]
and.andn.t %d14, %d14, 0, %d0, 0

# CHECK-INST: and.andn.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xe0,0xe3]
and.andn.t %d14, %d14, 0, %d0, 7

# CHECK-INST: and.andn.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x60,0xec]
and.andn.t %d14, %d14, 0, %d0, 24

# CHECK-INST: and.andn.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xe0,0xef]
and.andn.t %d14, %d14, 0, %d0, 31

# CHECK-INST: and.andn.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x60,0xe0]
and.andn.t %d14, %d14, 0, %d1, 0

# CHECK-INST: and.andn.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xe0,0xe3]
and.andn.t %d14, %d14, 0, %d1, 7

# CHECK-INST: and.andn.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x60,0xec]
and.andn.t %d14, %d14, 0, %d1, 24

# CHECK-INST: and.andn.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xe0,0xef]
and.andn.t %d14, %d14, 0, %d1, 31

# CHECK-INST: and.andn.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0x47,0xee,0x60,0xe0]
and.andn.t %d14, %d14, 0, %d14, 0

# CHECK-INST: and.andn.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0x47,0xee,0xe0,0xe3]
and.andn.t %d14, %d14, 0, %d14, 7

# CHECK-INST: and.andn.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0x47,0xee,0x60,0xec]
and.andn.t %d14, %d14, 0, %d14, 24

# CHECK-INST: and.andn.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0x47,0xee,0xe0,0xef]
and.andn.t %d14, %d14, 0, %d14, 31

# CHECK-INST: and.andn.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x60,0xe0]
and.andn.t %d14, %d14, 0, %d15, 0

# CHECK-INST: and.andn.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xe0,0xe3]
and.andn.t %d14, %d14, 0, %d15, 7

# CHECK-INST: and.andn.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x60,0xec]
and.andn.t %d14, %d14, 0, %d15, 24

# CHECK-INST: and.andn.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xe0,0xef]
and.andn.t %d14, %d14, 0, %d15, 31

# CHECK-INST: and.andn.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x67,0xe0]
and.andn.t %d14, %d14, 7, %d0, 0

# CHECK-INST: and.andn.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xe7,0xe3]
and.andn.t %d14, %d14, 7, %d0, 7

# CHECK-INST: and.andn.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x67,0xec]
and.andn.t %d14, %d14, 7, %d0, 24

# CHECK-INST: and.andn.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xe7,0xef]
and.andn.t %d14, %d14, 7, %d0, 31

# CHECK-INST: and.andn.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x67,0xe0]
and.andn.t %d14, %d14, 7, %d1, 0

# CHECK-INST: and.andn.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xe7,0xe3]
and.andn.t %d14, %d14, 7, %d1, 7

# CHECK-INST: and.andn.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x67,0xec]
and.andn.t %d14, %d14, 7, %d1, 24

# CHECK-INST: and.andn.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xe7,0xef]
and.andn.t %d14, %d14, 7, %d1, 31

# CHECK-INST: and.andn.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0x47,0xee,0x67,0xe0]
and.andn.t %d14, %d14, 7, %d14, 0

# CHECK-INST: and.andn.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0x47,0xee,0xe7,0xe3]
and.andn.t %d14, %d14, 7, %d14, 7

# CHECK-INST: and.andn.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0x47,0xee,0x67,0xec]
and.andn.t %d14, %d14, 7, %d14, 24

# CHECK-INST: and.andn.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0x47,0xee,0xe7,0xef]
and.andn.t %d14, %d14, 7, %d14, 31

# CHECK-INST: and.andn.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x67,0xe0]
and.andn.t %d14, %d14, 7, %d15, 0

# CHECK-INST: and.andn.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xe7,0xe3]
and.andn.t %d14, %d14, 7, %d15, 7

# CHECK-INST: and.andn.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x67,0xec]
and.andn.t %d14, %d14, 7, %d15, 24

# CHECK-INST: and.andn.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xe7,0xef]
and.andn.t %d14, %d14, 7, %d15, 31

# CHECK-INST: and.andn.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x78,0xe0]
and.andn.t %d14, %d14, 24, %d0, 0

# CHECK-INST: and.andn.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xf8,0xe3]
and.andn.t %d14, %d14, 24, %d0, 7

# CHECK-INST: and.andn.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x78,0xec]
and.andn.t %d14, %d14, 24, %d0, 24

# CHECK-INST: and.andn.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xf8,0xef]
and.andn.t %d14, %d14, 24, %d0, 31

# CHECK-INST: and.andn.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x78,0xe0]
and.andn.t %d14, %d14, 24, %d1, 0

# CHECK-INST: and.andn.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xf8,0xe3]
and.andn.t %d14, %d14, 24, %d1, 7

# CHECK-INST: and.andn.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x78,0xec]
and.andn.t %d14, %d14, 24, %d1, 24

# CHECK-INST: and.andn.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xf8,0xef]
and.andn.t %d14, %d14, 24, %d1, 31

# CHECK-INST: and.andn.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0x47,0xee,0x78,0xe0]
and.andn.t %d14, %d14, 24, %d14, 0

# CHECK-INST: and.andn.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0x47,0xee,0xf8,0xe3]
and.andn.t %d14, %d14, 24, %d14, 7

# CHECK-INST: and.andn.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0x47,0xee,0x78,0xec]
and.andn.t %d14, %d14, 24, %d14, 24

# CHECK-INST: and.andn.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0x47,0xee,0xf8,0xef]
and.andn.t %d14, %d14, 24, %d14, 31

# CHECK-INST: and.andn.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x78,0xe0]
and.andn.t %d14, %d14, 24, %d15, 0

# CHECK-INST: and.andn.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xf8,0xe3]
and.andn.t %d14, %d14, 24, %d15, 7

# CHECK-INST: and.andn.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x78,0xec]
and.andn.t %d14, %d14, 24, %d15, 24

# CHECK-INST: and.andn.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xf8,0xef]
and.andn.t %d14, %d14, 24, %d15, 31

# CHECK-INST: and.andn.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x7f,0xe0]
and.andn.t %d14, %d14, 31, %d0, 0

# CHECK-INST: and.andn.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xff,0xe3]
and.andn.t %d14, %d14, 31, %d0, 7

# CHECK-INST: and.andn.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x7f,0xec]
and.andn.t %d14, %d14, 31, %d0, 24

# CHECK-INST: and.andn.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xff,0xef]
and.andn.t %d14, %d14, 31, %d0, 31

# CHECK-INST: and.andn.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x7f,0xe0]
and.andn.t %d14, %d14, 31, %d1, 0

# CHECK-INST: and.andn.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xff,0xe3]
and.andn.t %d14, %d14, 31, %d1, 7

# CHECK-INST: and.andn.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x7f,0xec]
and.andn.t %d14, %d14, 31, %d1, 24

# CHECK-INST: and.andn.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xff,0xef]
and.andn.t %d14, %d14, 31, %d1, 31

# CHECK-INST: and.andn.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0x47,0xee,0x7f,0xe0]
and.andn.t %d14, %d14, 31, %d14, 0

# CHECK-INST: and.andn.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0x47,0xee,0xff,0xe3]
and.andn.t %d14, %d14, 31, %d14, 7

# CHECK-INST: and.andn.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0x47,0xee,0x7f,0xec]
and.andn.t %d14, %d14, 31, %d14, 24

# CHECK-INST: and.andn.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0x47,0xee,0xff,0xef]
and.andn.t %d14, %d14, 31, %d14, 31

# CHECK-INST: and.andn.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x7f,0xe0]
and.andn.t %d14, %d14, 31, %d15, 0

# CHECK-INST: and.andn.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xff,0xe3]
and.andn.t %d14, %d14, 31, %d15, 7

# CHECK-INST: and.andn.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x7f,0xec]
and.andn.t %d14, %d14, 31, %d15, 24

# CHECK-INST: and.andn.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xff,0xef]
and.andn.t %d14, %d14, 31, %d15, 31

# CHECK-INST: and.andn.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x60,0xe0]
and.andn.t %d14, %d15, 0, %d0, 0

# CHECK-INST: and.andn.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xe0,0xe3]
and.andn.t %d14, %d15, 0, %d0, 7

# CHECK-INST: and.andn.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x60,0xec]
and.andn.t %d14, %d15, 0, %d0, 24

# CHECK-INST: and.andn.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xe0,0xef]
and.andn.t %d14, %d15, 0, %d0, 31

# CHECK-INST: and.andn.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x60,0xe0]
and.andn.t %d14, %d15, 0, %d1, 0

# CHECK-INST: and.andn.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xe0,0xe3]
and.andn.t %d14, %d15, 0, %d1, 7

# CHECK-INST: and.andn.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x60,0xec]
and.andn.t %d14, %d15, 0, %d1, 24

# CHECK-INST: and.andn.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xe0,0xef]
and.andn.t %d14, %d15, 0, %d1, 31

# CHECK-INST: and.andn.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0x47,0xef,0x60,0xe0]
and.andn.t %d14, %d15, 0, %d14, 0

# CHECK-INST: and.andn.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0x47,0xef,0xe0,0xe3]
and.andn.t %d14, %d15, 0, %d14, 7

# CHECK-INST: and.andn.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0x47,0xef,0x60,0xec]
and.andn.t %d14, %d15, 0, %d14, 24

# CHECK-INST: and.andn.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0x47,0xef,0xe0,0xef]
and.andn.t %d14, %d15, 0, %d14, 31

# CHECK-INST: and.andn.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0x47,0xff,0x60,0xe0]
and.andn.t %d14, %d15, 0, %d15, 0

# CHECK-INST: and.andn.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0x47,0xff,0xe0,0xe3]
and.andn.t %d14, %d15, 0, %d15, 7

# CHECK-INST: and.andn.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0x47,0xff,0x60,0xec]
and.andn.t %d14, %d15, 0, %d15, 24

# CHECK-INST: and.andn.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0x47,0xff,0xe0,0xef]
and.andn.t %d14, %d15, 0, %d15, 31

# CHECK-INST: and.andn.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x67,0xe0]
and.andn.t %d14, %d15, 7, %d0, 0

# CHECK-INST: and.andn.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xe7,0xe3]
and.andn.t %d14, %d15, 7, %d0, 7

# CHECK-INST: and.andn.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x67,0xec]
and.andn.t %d14, %d15, 7, %d0, 24

# CHECK-INST: and.andn.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xe7,0xef]
and.andn.t %d14, %d15, 7, %d0, 31

# CHECK-INST: and.andn.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x67,0xe0]
and.andn.t %d14, %d15, 7, %d1, 0

# CHECK-INST: and.andn.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xe7,0xe3]
and.andn.t %d14, %d15, 7, %d1, 7

# CHECK-INST: and.andn.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x67,0xec]
and.andn.t %d14, %d15, 7, %d1, 24

# CHECK-INST: and.andn.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xe7,0xef]
and.andn.t %d14, %d15, 7, %d1, 31

# CHECK-INST: and.andn.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0x47,0xef,0x67,0xe0]
and.andn.t %d14, %d15, 7, %d14, 0

# CHECK-INST: and.andn.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0x47,0xef,0xe7,0xe3]
and.andn.t %d14, %d15, 7, %d14, 7

# CHECK-INST: and.andn.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0x47,0xef,0x67,0xec]
and.andn.t %d14, %d15, 7, %d14, 24

# CHECK-INST: and.andn.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0x47,0xef,0xe7,0xef]
and.andn.t %d14, %d15, 7, %d14, 31

# CHECK-INST: and.andn.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0x47,0xff,0x67,0xe0]
and.andn.t %d14, %d15, 7, %d15, 0

# CHECK-INST: and.andn.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0x47,0xff,0xe7,0xe3]
and.andn.t %d14, %d15, 7, %d15, 7

# CHECK-INST: and.andn.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0x47,0xff,0x67,0xec]
and.andn.t %d14, %d15, 7, %d15, 24

# CHECK-INST: and.andn.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0x47,0xff,0xe7,0xef]
and.andn.t %d14, %d15, 7, %d15, 31

# CHECK-INST: and.andn.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x78,0xe0]
and.andn.t %d14, %d15, 24, %d0, 0

# CHECK-INST: and.andn.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xf8,0xe3]
and.andn.t %d14, %d15, 24, %d0, 7

# CHECK-INST: and.andn.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x78,0xec]
and.andn.t %d14, %d15, 24, %d0, 24

# CHECK-INST: and.andn.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xf8,0xef]
and.andn.t %d14, %d15, 24, %d0, 31

# CHECK-INST: and.andn.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x78,0xe0]
and.andn.t %d14, %d15, 24, %d1, 0

# CHECK-INST: and.andn.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xf8,0xe3]
and.andn.t %d14, %d15, 24, %d1, 7

# CHECK-INST: and.andn.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x78,0xec]
and.andn.t %d14, %d15, 24, %d1, 24

# CHECK-INST: and.andn.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xf8,0xef]
and.andn.t %d14, %d15, 24, %d1, 31

# CHECK-INST: and.andn.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0x47,0xef,0x78,0xe0]
and.andn.t %d14, %d15, 24, %d14, 0

# CHECK-INST: and.andn.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0x47,0xef,0xf8,0xe3]
and.andn.t %d14, %d15, 24, %d14, 7

# CHECK-INST: and.andn.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0x47,0xef,0x78,0xec]
and.andn.t %d14, %d15, 24, %d14, 24

# CHECK-INST: and.andn.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0x47,0xef,0xf8,0xef]
and.andn.t %d14, %d15, 24, %d14, 31

# CHECK-INST: and.andn.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0x47,0xff,0x78,0xe0]
and.andn.t %d14, %d15, 24, %d15, 0

# CHECK-INST: and.andn.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0x47,0xff,0xf8,0xe3]
and.andn.t %d14, %d15, 24, %d15, 7

# CHECK-INST: and.andn.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0x47,0xff,0x78,0xec]
and.andn.t %d14, %d15, 24, %d15, 24

# CHECK-INST: and.andn.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0x47,0xff,0xf8,0xef]
and.andn.t %d14, %d15, 24, %d15, 31

# CHECK-INST: and.andn.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x7f,0xe0]
and.andn.t %d14, %d15, 31, %d0, 0

# CHECK-INST: and.andn.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xff,0xe3]
and.andn.t %d14, %d15, 31, %d0, 7

# CHECK-INST: and.andn.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x7f,0xec]
and.andn.t %d14, %d15, 31, %d0, 24

# CHECK-INST: and.andn.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xff,0xef]
and.andn.t %d14, %d15, 31, %d0, 31

# CHECK-INST: and.andn.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x7f,0xe0]
and.andn.t %d14, %d15, 31, %d1, 0

# CHECK-INST: and.andn.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xff,0xe3]
and.andn.t %d14, %d15, 31, %d1, 7

# CHECK-INST: and.andn.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x7f,0xec]
and.andn.t %d14, %d15, 31, %d1, 24

# CHECK-INST: and.andn.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xff,0xef]
and.andn.t %d14, %d15, 31, %d1, 31

# CHECK-INST: and.andn.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0x47,0xef,0x7f,0xe0]
and.andn.t %d14, %d15, 31, %d14, 0

# CHECK-INST: and.andn.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0x47,0xef,0xff,0xe3]
and.andn.t %d14, %d15, 31, %d14, 7

# CHECK-INST: and.andn.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0x47,0xef,0x7f,0xec]
and.andn.t %d14, %d15, 31, %d14, 24

# CHECK-INST: and.andn.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0x47,0xef,0xff,0xef]
and.andn.t %d14, %d15, 31, %d14, 31

# CHECK-INST: and.andn.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0x47,0xff,0x7f,0xe0]
and.andn.t %d14, %d15, 31, %d15, 0

# CHECK-INST: and.andn.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0x47,0xff,0xff,0xe3]
and.andn.t %d14, %d15, 31, %d15, 7

# CHECK-INST: and.andn.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0x47,0xff,0x7f,0xec]
and.andn.t %d14, %d15, 31, %d15, 24

# CHECK-INST: and.andn.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0x47,0xff,0xff,0xef]
and.andn.t %d14, %d15, 31, %d15, 31

# CHECK-INST: and.andn.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0x47,0x00,0x60,0xf0]
and.andn.t %d15, %d0, 0, %d0, 0

# CHECK-INST: and.andn.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0x47,0x00,0xe0,0xf3]
and.andn.t %d15, %d0, 0, %d0, 7

# CHECK-INST: and.andn.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0x47,0x00,0x60,0xfc]
and.andn.t %d15, %d0, 0, %d0, 24

# CHECK-INST: and.andn.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0x47,0x00,0xe0,0xff]
and.andn.t %d15, %d0, 0, %d0, 31

# CHECK-INST: and.andn.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0x47,0x10,0x60,0xf0]
and.andn.t %d15, %d0, 0, %d1, 0

# CHECK-INST: and.andn.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0x47,0x10,0xe0,0xf3]
and.andn.t %d15, %d0, 0, %d1, 7

# CHECK-INST: and.andn.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0x47,0x10,0x60,0xfc]
and.andn.t %d15, %d0, 0, %d1, 24

# CHECK-INST: and.andn.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0x47,0x10,0xe0,0xff]
and.andn.t %d15, %d0, 0, %d1, 31

# CHECK-INST: and.andn.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x60,0xf0]
and.andn.t %d15, %d0, 0, %d14, 0

# CHECK-INST: and.andn.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xe0,0xf3]
and.andn.t %d15, %d0, 0, %d14, 7

# CHECK-INST: and.andn.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x60,0xfc]
and.andn.t %d15, %d0, 0, %d14, 24

# CHECK-INST: and.andn.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xe0,0xff]
and.andn.t %d15, %d0, 0, %d14, 31

# CHECK-INST: and.andn.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x60,0xf0]
and.andn.t %d15, %d0, 0, %d15, 0

# CHECK-INST: and.andn.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xe0,0xf3]
and.andn.t %d15, %d0, 0, %d15, 7

# CHECK-INST: and.andn.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x60,0xfc]
and.andn.t %d15, %d0, 0, %d15, 24

# CHECK-INST: and.andn.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xe0,0xff]
and.andn.t %d15, %d0, 0, %d15, 31

# CHECK-INST: and.andn.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0x47,0x00,0x67,0xf0]
and.andn.t %d15, %d0, 7, %d0, 0

# CHECK-INST: and.andn.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0x47,0x00,0xe7,0xf3]
and.andn.t %d15, %d0, 7, %d0, 7

# CHECK-INST: and.andn.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0x47,0x00,0x67,0xfc]
and.andn.t %d15, %d0, 7, %d0, 24

# CHECK-INST: and.andn.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0x47,0x00,0xe7,0xff]
and.andn.t %d15, %d0, 7, %d0, 31

# CHECK-INST: and.andn.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0x47,0x10,0x67,0xf0]
and.andn.t %d15, %d0, 7, %d1, 0

# CHECK-INST: and.andn.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0x47,0x10,0xe7,0xf3]
and.andn.t %d15, %d0, 7, %d1, 7

# CHECK-INST: and.andn.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0x47,0x10,0x67,0xfc]
and.andn.t %d15, %d0, 7, %d1, 24

# CHECK-INST: and.andn.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0x47,0x10,0xe7,0xff]
and.andn.t %d15, %d0, 7, %d1, 31

# CHECK-INST: and.andn.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x67,0xf0]
and.andn.t %d15, %d0, 7, %d14, 0

# CHECK-INST: and.andn.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xe7,0xf3]
and.andn.t %d15, %d0, 7, %d14, 7

# CHECK-INST: and.andn.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x67,0xfc]
and.andn.t %d15, %d0, 7, %d14, 24

# CHECK-INST: and.andn.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xe7,0xff]
and.andn.t %d15, %d0, 7, %d14, 31

# CHECK-INST: and.andn.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x67,0xf0]
and.andn.t %d15, %d0, 7, %d15, 0

# CHECK-INST: and.andn.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xe7,0xf3]
and.andn.t %d15, %d0, 7, %d15, 7

# CHECK-INST: and.andn.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x67,0xfc]
and.andn.t %d15, %d0, 7, %d15, 24

# CHECK-INST: and.andn.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xe7,0xff]
and.andn.t %d15, %d0, 7, %d15, 31

# CHECK-INST: and.andn.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0x47,0x00,0x78,0xf0]
and.andn.t %d15, %d0, 24, %d0, 0

# CHECK-INST: and.andn.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0x47,0x00,0xf8,0xf3]
and.andn.t %d15, %d0, 24, %d0, 7

# CHECK-INST: and.andn.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0x47,0x00,0x78,0xfc]
and.andn.t %d15, %d0, 24, %d0, 24

# CHECK-INST: and.andn.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0x47,0x00,0xf8,0xff]
and.andn.t %d15, %d0, 24, %d0, 31

# CHECK-INST: and.andn.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0x47,0x10,0x78,0xf0]
and.andn.t %d15, %d0, 24, %d1, 0

# CHECK-INST: and.andn.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0x47,0x10,0xf8,0xf3]
and.andn.t %d15, %d0, 24, %d1, 7

# CHECK-INST: and.andn.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0x47,0x10,0x78,0xfc]
and.andn.t %d15, %d0, 24, %d1, 24

# CHECK-INST: and.andn.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0x47,0x10,0xf8,0xff]
and.andn.t %d15, %d0, 24, %d1, 31

# CHECK-INST: and.andn.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x78,0xf0]
and.andn.t %d15, %d0, 24, %d14, 0

# CHECK-INST: and.andn.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xf8,0xf3]
and.andn.t %d15, %d0, 24, %d14, 7

# CHECK-INST: and.andn.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x78,0xfc]
and.andn.t %d15, %d0, 24, %d14, 24

# CHECK-INST: and.andn.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xf8,0xff]
and.andn.t %d15, %d0, 24, %d14, 31

# CHECK-INST: and.andn.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x78,0xf0]
and.andn.t %d15, %d0, 24, %d15, 0

# CHECK-INST: and.andn.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xf8,0xf3]
and.andn.t %d15, %d0, 24, %d15, 7

# CHECK-INST: and.andn.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x78,0xfc]
and.andn.t %d15, %d0, 24, %d15, 24

# CHECK-INST: and.andn.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xf8,0xff]
and.andn.t %d15, %d0, 24, %d15, 31

# CHECK-INST: and.andn.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0x47,0x00,0x7f,0xf0]
and.andn.t %d15, %d0, 31, %d0, 0

# CHECK-INST: and.andn.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0x47,0x00,0xff,0xf3]
and.andn.t %d15, %d0, 31, %d0, 7

# CHECK-INST: and.andn.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0x47,0x00,0x7f,0xfc]
and.andn.t %d15, %d0, 31, %d0, 24

# CHECK-INST: and.andn.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0x47,0x00,0xff,0xff]
and.andn.t %d15, %d0, 31, %d0, 31

# CHECK-INST: and.andn.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0x47,0x10,0x7f,0xf0]
and.andn.t %d15, %d0, 31, %d1, 0

# CHECK-INST: and.andn.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0x47,0x10,0xff,0xf3]
and.andn.t %d15, %d0, 31, %d1, 7

# CHECK-INST: and.andn.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0x47,0x10,0x7f,0xfc]
and.andn.t %d15, %d0, 31, %d1, 24

# CHECK-INST: and.andn.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0x47,0x10,0xff,0xff]
and.andn.t %d15, %d0, 31, %d1, 31

# CHECK-INST: and.andn.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x7f,0xf0]
and.andn.t %d15, %d0, 31, %d14, 0

# CHECK-INST: and.andn.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xff,0xf3]
and.andn.t %d15, %d0, 31, %d14, 7

# CHECK-INST: and.andn.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x7f,0xfc]
and.andn.t %d15, %d0, 31, %d14, 24

# CHECK-INST: and.andn.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xff,0xff]
and.andn.t %d15, %d0, 31, %d14, 31

# CHECK-INST: and.andn.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x7f,0xf0]
and.andn.t %d15, %d0, 31, %d15, 0

# CHECK-INST: and.andn.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xff,0xf3]
and.andn.t %d15, %d0, 31, %d15, 7

# CHECK-INST: and.andn.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x7f,0xfc]
and.andn.t %d15, %d0, 31, %d15, 24

# CHECK-INST: and.andn.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xff,0xff]
and.andn.t %d15, %d0, 31, %d15, 31

# CHECK-INST: and.andn.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0x47,0x01,0x60,0xf0]
and.andn.t %d15, %d1, 0, %d0, 0

# CHECK-INST: and.andn.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0x47,0x01,0xe0,0xf3]
and.andn.t %d15, %d1, 0, %d0, 7

# CHECK-INST: and.andn.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0x47,0x01,0x60,0xfc]
and.andn.t %d15, %d1, 0, %d0, 24

# CHECK-INST: and.andn.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0x47,0x01,0xe0,0xff]
and.andn.t %d15, %d1, 0, %d0, 31

# CHECK-INST: and.andn.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0x47,0x11,0x60,0xf0]
and.andn.t %d15, %d1, 0, %d1, 0

# CHECK-INST: and.andn.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0x47,0x11,0xe0,0xf3]
and.andn.t %d15, %d1, 0, %d1, 7

# CHECK-INST: and.andn.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0x47,0x11,0x60,0xfc]
and.andn.t %d15, %d1, 0, %d1, 24

# CHECK-INST: and.andn.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0x47,0x11,0xe0,0xff]
and.andn.t %d15, %d1, 0, %d1, 31

# CHECK-INST: and.andn.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x60,0xf0]
and.andn.t %d15, %d1, 0, %d14, 0

# CHECK-INST: and.andn.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xe0,0xf3]
and.andn.t %d15, %d1, 0, %d14, 7

# CHECK-INST: and.andn.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x60,0xfc]
and.andn.t %d15, %d1, 0, %d14, 24

# CHECK-INST: and.andn.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xe0,0xff]
and.andn.t %d15, %d1, 0, %d14, 31

# CHECK-INST: and.andn.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x60,0xf0]
and.andn.t %d15, %d1, 0, %d15, 0

# CHECK-INST: and.andn.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xe0,0xf3]
and.andn.t %d15, %d1, 0, %d15, 7

# CHECK-INST: and.andn.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x60,0xfc]
and.andn.t %d15, %d1, 0, %d15, 24

# CHECK-INST: and.andn.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xe0,0xff]
and.andn.t %d15, %d1, 0, %d15, 31

# CHECK-INST: and.andn.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0x47,0x01,0x67,0xf0]
and.andn.t %d15, %d1, 7, %d0, 0

# CHECK-INST: and.andn.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0x47,0x01,0xe7,0xf3]
and.andn.t %d15, %d1, 7, %d0, 7

# CHECK-INST: and.andn.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0x47,0x01,0x67,0xfc]
and.andn.t %d15, %d1, 7, %d0, 24

# CHECK-INST: and.andn.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0x47,0x01,0xe7,0xff]
and.andn.t %d15, %d1, 7, %d0, 31

# CHECK-INST: and.andn.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0x47,0x11,0x67,0xf0]
and.andn.t %d15, %d1, 7, %d1, 0

# CHECK-INST: and.andn.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0x47,0x11,0xe7,0xf3]
and.andn.t %d15, %d1, 7, %d1, 7

# CHECK-INST: and.andn.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0x47,0x11,0x67,0xfc]
and.andn.t %d15, %d1, 7, %d1, 24

# CHECK-INST: and.andn.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0x47,0x11,0xe7,0xff]
and.andn.t %d15, %d1, 7, %d1, 31

# CHECK-INST: and.andn.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x67,0xf0]
and.andn.t %d15, %d1, 7, %d14, 0

# CHECK-INST: and.andn.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xe7,0xf3]
and.andn.t %d15, %d1, 7, %d14, 7

# CHECK-INST: and.andn.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x67,0xfc]
and.andn.t %d15, %d1, 7, %d14, 24

# CHECK-INST: and.andn.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xe7,0xff]
and.andn.t %d15, %d1, 7, %d14, 31

# CHECK-INST: and.andn.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x67,0xf0]
and.andn.t %d15, %d1, 7, %d15, 0

# CHECK-INST: and.andn.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xe7,0xf3]
and.andn.t %d15, %d1, 7, %d15, 7

# CHECK-INST: and.andn.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x67,0xfc]
and.andn.t %d15, %d1, 7, %d15, 24

# CHECK-INST: and.andn.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xe7,0xff]
and.andn.t %d15, %d1, 7, %d15, 31

# CHECK-INST: and.andn.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0x47,0x01,0x78,0xf0]
and.andn.t %d15, %d1, 24, %d0, 0

# CHECK-INST: and.andn.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0x47,0x01,0xf8,0xf3]
and.andn.t %d15, %d1, 24, %d0, 7

# CHECK-INST: and.andn.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0x47,0x01,0x78,0xfc]
and.andn.t %d15, %d1, 24, %d0, 24

# CHECK-INST: and.andn.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0x47,0x01,0xf8,0xff]
and.andn.t %d15, %d1, 24, %d0, 31

# CHECK-INST: and.andn.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0x47,0x11,0x78,0xf0]
and.andn.t %d15, %d1, 24, %d1, 0

# CHECK-INST: and.andn.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0x47,0x11,0xf8,0xf3]
and.andn.t %d15, %d1, 24, %d1, 7

# CHECK-INST: and.andn.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0x47,0x11,0x78,0xfc]
and.andn.t %d15, %d1, 24, %d1, 24

# CHECK-INST: and.andn.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0x47,0x11,0xf8,0xff]
and.andn.t %d15, %d1, 24, %d1, 31

# CHECK-INST: and.andn.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x78,0xf0]
and.andn.t %d15, %d1, 24, %d14, 0

# CHECK-INST: and.andn.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xf8,0xf3]
and.andn.t %d15, %d1, 24, %d14, 7

# CHECK-INST: and.andn.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x78,0xfc]
and.andn.t %d15, %d1, 24, %d14, 24

# CHECK-INST: and.andn.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xf8,0xff]
and.andn.t %d15, %d1, 24, %d14, 31

# CHECK-INST: and.andn.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x78,0xf0]
and.andn.t %d15, %d1, 24, %d15, 0

# CHECK-INST: and.andn.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xf8,0xf3]
and.andn.t %d15, %d1, 24, %d15, 7

# CHECK-INST: and.andn.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x78,0xfc]
and.andn.t %d15, %d1, 24, %d15, 24

# CHECK-INST: and.andn.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xf8,0xff]
and.andn.t %d15, %d1, 24, %d15, 31

# CHECK-INST: and.andn.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0x47,0x01,0x7f,0xf0]
and.andn.t %d15, %d1, 31, %d0, 0

# CHECK-INST: and.andn.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0x47,0x01,0xff,0xf3]
and.andn.t %d15, %d1, 31, %d0, 7

# CHECK-INST: and.andn.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0x47,0x01,0x7f,0xfc]
and.andn.t %d15, %d1, 31, %d0, 24

# CHECK-INST: and.andn.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0x47,0x01,0xff,0xff]
and.andn.t %d15, %d1, 31, %d0, 31

# CHECK-INST: and.andn.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0x47,0x11,0x7f,0xf0]
and.andn.t %d15, %d1, 31, %d1, 0

# CHECK-INST: and.andn.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0x47,0x11,0xff,0xf3]
and.andn.t %d15, %d1, 31, %d1, 7

# CHECK-INST: and.andn.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0x47,0x11,0x7f,0xfc]
and.andn.t %d15, %d1, 31, %d1, 24

# CHECK-INST: and.andn.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0x47,0x11,0xff,0xff]
and.andn.t %d15, %d1, 31, %d1, 31

# CHECK-INST: and.andn.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x7f,0xf0]
and.andn.t %d15, %d1, 31, %d14, 0

# CHECK-INST: and.andn.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xff,0xf3]
and.andn.t %d15, %d1, 31, %d14, 7

# CHECK-INST: and.andn.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x7f,0xfc]
and.andn.t %d15, %d1, 31, %d14, 24

# CHECK-INST: and.andn.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xff,0xff]
and.andn.t %d15, %d1, 31, %d14, 31

# CHECK-INST: and.andn.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x7f,0xf0]
and.andn.t %d15, %d1, 31, %d15, 0

# CHECK-INST: and.andn.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xff,0xf3]
and.andn.t %d15, %d1, 31, %d15, 7

# CHECK-INST: and.andn.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x7f,0xfc]
and.andn.t %d15, %d1, 31, %d15, 24

# CHECK-INST: and.andn.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xff,0xff]
and.andn.t %d15, %d1, 31, %d15, 31

# CHECK-INST: and.andn.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x60,0xf0]
and.andn.t %d15, %d14, 0, %d0, 0

# CHECK-INST: and.andn.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xe0,0xf3]
and.andn.t %d15, %d14, 0, %d0, 7

# CHECK-INST: and.andn.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x60,0xfc]
and.andn.t %d15, %d14, 0, %d0, 24

# CHECK-INST: and.andn.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xe0,0xff]
and.andn.t %d15, %d14, 0, %d0, 31

# CHECK-INST: and.andn.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x60,0xf0]
and.andn.t %d15, %d14, 0, %d1, 0

# CHECK-INST: and.andn.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xe0,0xf3]
and.andn.t %d15, %d14, 0, %d1, 7

# CHECK-INST: and.andn.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x60,0xfc]
and.andn.t %d15, %d14, 0, %d1, 24

# CHECK-INST: and.andn.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xe0,0xff]
and.andn.t %d15, %d14, 0, %d1, 31

# CHECK-INST: and.andn.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0x47,0xee,0x60,0xf0]
and.andn.t %d15, %d14, 0, %d14, 0

# CHECK-INST: and.andn.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0x47,0xee,0xe0,0xf3]
and.andn.t %d15, %d14, 0, %d14, 7

# CHECK-INST: and.andn.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0x47,0xee,0x60,0xfc]
and.andn.t %d15, %d14, 0, %d14, 24

# CHECK-INST: and.andn.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0x47,0xee,0xe0,0xff]
and.andn.t %d15, %d14, 0, %d14, 31

# CHECK-INST: and.andn.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x60,0xf0]
and.andn.t %d15, %d14, 0, %d15, 0

# CHECK-INST: and.andn.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xe0,0xf3]
and.andn.t %d15, %d14, 0, %d15, 7

# CHECK-INST: and.andn.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x60,0xfc]
and.andn.t %d15, %d14, 0, %d15, 24

# CHECK-INST: and.andn.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xe0,0xff]
and.andn.t %d15, %d14, 0, %d15, 31

# CHECK-INST: and.andn.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x67,0xf0]
and.andn.t %d15, %d14, 7, %d0, 0

# CHECK-INST: and.andn.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xe7,0xf3]
and.andn.t %d15, %d14, 7, %d0, 7

# CHECK-INST: and.andn.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x67,0xfc]
and.andn.t %d15, %d14, 7, %d0, 24

# CHECK-INST: and.andn.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xe7,0xff]
and.andn.t %d15, %d14, 7, %d0, 31

# CHECK-INST: and.andn.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x67,0xf0]
and.andn.t %d15, %d14, 7, %d1, 0

# CHECK-INST: and.andn.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xe7,0xf3]
and.andn.t %d15, %d14, 7, %d1, 7

# CHECK-INST: and.andn.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x67,0xfc]
and.andn.t %d15, %d14, 7, %d1, 24

# CHECK-INST: and.andn.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xe7,0xff]
and.andn.t %d15, %d14, 7, %d1, 31

# CHECK-INST: and.andn.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0x47,0xee,0x67,0xf0]
and.andn.t %d15, %d14, 7, %d14, 0

# CHECK-INST: and.andn.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0x47,0xee,0xe7,0xf3]
and.andn.t %d15, %d14, 7, %d14, 7

# CHECK-INST: and.andn.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0x47,0xee,0x67,0xfc]
and.andn.t %d15, %d14, 7, %d14, 24

# CHECK-INST: and.andn.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0x47,0xee,0xe7,0xff]
and.andn.t %d15, %d14, 7, %d14, 31

# CHECK-INST: and.andn.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x67,0xf0]
and.andn.t %d15, %d14, 7, %d15, 0

# CHECK-INST: and.andn.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xe7,0xf3]
and.andn.t %d15, %d14, 7, %d15, 7

# CHECK-INST: and.andn.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x67,0xfc]
and.andn.t %d15, %d14, 7, %d15, 24

# CHECK-INST: and.andn.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xe7,0xff]
and.andn.t %d15, %d14, 7, %d15, 31

# CHECK-INST: and.andn.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x78,0xf0]
and.andn.t %d15, %d14, 24, %d0, 0

# CHECK-INST: and.andn.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xf8,0xf3]
and.andn.t %d15, %d14, 24, %d0, 7

# CHECK-INST: and.andn.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x78,0xfc]
and.andn.t %d15, %d14, 24, %d0, 24

# CHECK-INST: and.andn.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xf8,0xff]
and.andn.t %d15, %d14, 24, %d0, 31

# CHECK-INST: and.andn.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x78,0xf0]
and.andn.t %d15, %d14, 24, %d1, 0

# CHECK-INST: and.andn.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xf8,0xf3]
and.andn.t %d15, %d14, 24, %d1, 7

# CHECK-INST: and.andn.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x78,0xfc]
and.andn.t %d15, %d14, 24, %d1, 24

# CHECK-INST: and.andn.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xf8,0xff]
and.andn.t %d15, %d14, 24, %d1, 31

# CHECK-INST: and.andn.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0x47,0xee,0x78,0xf0]
and.andn.t %d15, %d14, 24, %d14, 0

# CHECK-INST: and.andn.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0x47,0xee,0xf8,0xf3]
and.andn.t %d15, %d14, 24, %d14, 7

# CHECK-INST: and.andn.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0x47,0xee,0x78,0xfc]
and.andn.t %d15, %d14, 24, %d14, 24

# CHECK-INST: and.andn.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0x47,0xee,0xf8,0xff]
and.andn.t %d15, %d14, 24, %d14, 31

# CHECK-INST: and.andn.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x78,0xf0]
and.andn.t %d15, %d14, 24, %d15, 0

# CHECK-INST: and.andn.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xf8,0xf3]
and.andn.t %d15, %d14, 24, %d15, 7

# CHECK-INST: and.andn.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x78,0xfc]
and.andn.t %d15, %d14, 24, %d15, 24

# CHECK-INST: and.andn.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xf8,0xff]
and.andn.t %d15, %d14, 24, %d15, 31

# CHECK-INST: and.andn.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x7f,0xf0]
and.andn.t %d15, %d14, 31, %d0, 0

# CHECK-INST: and.andn.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xff,0xf3]
and.andn.t %d15, %d14, 31, %d0, 7

# CHECK-INST: and.andn.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x7f,0xfc]
and.andn.t %d15, %d14, 31, %d0, 24

# CHECK-INST: and.andn.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xff,0xff]
and.andn.t %d15, %d14, 31, %d0, 31

# CHECK-INST: and.andn.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x7f,0xf0]
and.andn.t %d15, %d14, 31, %d1, 0

# CHECK-INST: and.andn.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xff,0xf3]
and.andn.t %d15, %d14, 31, %d1, 7

# CHECK-INST: and.andn.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x7f,0xfc]
and.andn.t %d15, %d14, 31, %d1, 24

# CHECK-INST: and.andn.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xff,0xff]
and.andn.t %d15, %d14, 31, %d1, 31

# CHECK-INST: and.andn.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0x47,0xee,0x7f,0xf0]
and.andn.t %d15, %d14, 31, %d14, 0

# CHECK-INST: and.andn.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0x47,0xee,0xff,0xf3]
and.andn.t %d15, %d14, 31, %d14, 7

# CHECK-INST: and.andn.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0x47,0xee,0x7f,0xfc]
and.andn.t %d15, %d14, 31, %d14, 24

# CHECK-INST: and.andn.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0x47,0xee,0xff,0xff]
and.andn.t %d15, %d14, 31, %d14, 31

# CHECK-INST: and.andn.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x7f,0xf0]
and.andn.t %d15, %d14, 31, %d15, 0

# CHECK-INST: and.andn.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xff,0xf3]
and.andn.t %d15, %d14, 31, %d15, 7

# CHECK-INST: and.andn.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x7f,0xfc]
and.andn.t %d15, %d14, 31, %d15, 24

# CHECK-INST: and.andn.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xff,0xff]
and.andn.t %d15, %d14, 31, %d15, 31

# CHECK-INST: and.andn.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x60,0xf0]
and.andn.t %d15, %d15, 0, %d0, 0

# CHECK-INST: and.andn.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xe0,0xf3]
and.andn.t %d15, %d15, 0, %d0, 7

# CHECK-INST: and.andn.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x60,0xfc]
and.andn.t %d15, %d15, 0, %d0, 24

# CHECK-INST: and.andn.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xe0,0xff]
and.andn.t %d15, %d15, 0, %d0, 31

# CHECK-INST: and.andn.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x60,0xf0]
and.andn.t %d15, %d15, 0, %d1, 0

# CHECK-INST: and.andn.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xe0,0xf3]
and.andn.t %d15, %d15, 0, %d1, 7

# CHECK-INST: and.andn.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x60,0xfc]
and.andn.t %d15, %d15, 0, %d1, 24

# CHECK-INST: and.andn.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xe0,0xff]
and.andn.t %d15, %d15, 0, %d1, 31

# CHECK-INST: and.andn.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0x47,0xef,0x60,0xf0]
and.andn.t %d15, %d15, 0, %d14, 0

# CHECK-INST: and.andn.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0x47,0xef,0xe0,0xf3]
and.andn.t %d15, %d15, 0, %d14, 7

# CHECK-INST: and.andn.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0x47,0xef,0x60,0xfc]
and.andn.t %d15, %d15, 0, %d14, 24

# CHECK-INST: and.andn.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0x47,0xef,0xe0,0xff]
and.andn.t %d15, %d15, 0, %d14, 31

# CHECK-INST: and.andn.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0x47,0xff,0x60,0xf0]
and.andn.t %d15, %d15, 0, %d15, 0

# CHECK-INST: and.andn.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0x47,0xff,0xe0,0xf3]
and.andn.t %d15, %d15, 0, %d15, 7

# CHECK-INST: and.andn.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0x47,0xff,0x60,0xfc]
and.andn.t %d15, %d15, 0, %d15, 24

# CHECK-INST: and.andn.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0x47,0xff,0xe0,0xff]
and.andn.t %d15, %d15, 0, %d15, 31

# CHECK-INST: and.andn.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x67,0xf0]
and.andn.t %d15, %d15, 7, %d0, 0

# CHECK-INST: and.andn.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xe7,0xf3]
and.andn.t %d15, %d15, 7, %d0, 7

# CHECK-INST: and.andn.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x67,0xfc]
and.andn.t %d15, %d15, 7, %d0, 24

# CHECK-INST: and.andn.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xe7,0xff]
and.andn.t %d15, %d15, 7, %d0, 31

# CHECK-INST: and.andn.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x67,0xf0]
and.andn.t %d15, %d15, 7, %d1, 0

# CHECK-INST: and.andn.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xe7,0xf3]
and.andn.t %d15, %d15, 7, %d1, 7

# CHECK-INST: and.andn.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x67,0xfc]
and.andn.t %d15, %d15, 7, %d1, 24

# CHECK-INST: and.andn.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xe7,0xff]
and.andn.t %d15, %d15, 7, %d1, 31

# CHECK-INST: and.andn.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0x47,0xef,0x67,0xf0]
and.andn.t %d15, %d15, 7, %d14, 0

# CHECK-INST: and.andn.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0x47,0xef,0xe7,0xf3]
and.andn.t %d15, %d15, 7, %d14, 7

# CHECK-INST: and.andn.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0x47,0xef,0x67,0xfc]
and.andn.t %d15, %d15, 7, %d14, 24

# CHECK-INST: and.andn.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0x47,0xef,0xe7,0xff]
and.andn.t %d15, %d15, 7, %d14, 31

# CHECK-INST: and.andn.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0x47,0xff,0x67,0xf0]
and.andn.t %d15, %d15, 7, %d15, 0

# CHECK-INST: and.andn.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0x47,0xff,0xe7,0xf3]
and.andn.t %d15, %d15, 7, %d15, 7

# CHECK-INST: and.andn.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0x47,0xff,0x67,0xfc]
and.andn.t %d15, %d15, 7, %d15, 24

# CHECK-INST: and.andn.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0x47,0xff,0xe7,0xff]
and.andn.t %d15, %d15, 7, %d15, 31

# CHECK-INST: and.andn.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x78,0xf0]
and.andn.t %d15, %d15, 24, %d0, 0

# CHECK-INST: and.andn.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xf8,0xf3]
and.andn.t %d15, %d15, 24, %d0, 7

# CHECK-INST: and.andn.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x78,0xfc]
and.andn.t %d15, %d15, 24, %d0, 24

# CHECK-INST: and.andn.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xf8,0xff]
and.andn.t %d15, %d15, 24, %d0, 31

# CHECK-INST: and.andn.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x78,0xf0]
and.andn.t %d15, %d15, 24, %d1, 0

# CHECK-INST: and.andn.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xf8,0xf3]
and.andn.t %d15, %d15, 24, %d1, 7

# CHECK-INST: and.andn.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x78,0xfc]
and.andn.t %d15, %d15, 24, %d1, 24

# CHECK-INST: and.andn.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xf8,0xff]
and.andn.t %d15, %d15, 24, %d1, 31

# CHECK-INST: and.andn.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0x47,0xef,0x78,0xf0]
and.andn.t %d15, %d15, 24, %d14, 0

# CHECK-INST: and.andn.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0x47,0xef,0xf8,0xf3]
and.andn.t %d15, %d15, 24, %d14, 7

# CHECK-INST: and.andn.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0x47,0xef,0x78,0xfc]
and.andn.t %d15, %d15, 24, %d14, 24

# CHECK-INST: and.andn.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0x47,0xef,0xf8,0xff]
and.andn.t %d15, %d15, 24, %d14, 31

# CHECK-INST: and.andn.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0x47,0xff,0x78,0xf0]
and.andn.t %d15, %d15, 24, %d15, 0

# CHECK-INST: and.andn.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0x47,0xff,0xf8,0xf3]
and.andn.t %d15, %d15, 24, %d15, 7

# CHECK-INST: and.andn.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0x47,0xff,0x78,0xfc]
and.andn.t %d15, %d15, 24, %d15, 24

# CHECK-INST: and.andn.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0x47,0xff,0xf8,0xff]
and.andn.t %d15, %d15, 24, %d15, 31

# CHECK-INST: and.andn.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x7f,0xf0]
and.andn.t %d15, %d15, 31, %d0, 0

# CHECK-INST: and.andn.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xff,0xf3]
and.andn.t %d15, %d15, 31, %d0, 7

# CHECK-INST: and.andn.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x7f,0xfc]
and.andn.t %d15, %d15, 31, %d0, 24

# CHECK-INST: and.andn.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xff,0xff]
and.andn.t %d15, %d15, 31, %d0, 31

# CHECK-INST: and.andn.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x7f,0xf0]
and.andn.t %d15, %d15, 31, %d1, 0

# CHECK-INST: and.andn.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xff,0xf3]
and.andn.t %d15, %d15, 31, %d1, 7

# CHECK-INST: and.andn.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x7f,0xfc]
and.andn.t %d15, %d15, 31, %d1, 24

# CHECK-INST: and.andn.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xff,0xff]
and.andn.t %d15, %d15, 31, %d1, 31

# CHECK-INST: and.andn.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0x47,0xef,0x7f,0xf0]
and.andn.t %d15, %d15, 31, %d14, 0

# CHECK-INST: and.andn.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0x47,0xef,0xff,0xf3]
and.andn.t %d15, %d15, 31, %d14, 7

# CHECK-INST: and.andn.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0x47,0xef,0x7f,0xfc]
and.andn.t %d15, %d15, 31, %d14, 24

# CHECK-INST: and.andn.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0x47,0xef,0xff,0xff]
and.andn.t %d15, %d15, 31, %d14, 31

# CHECK-INST: and.andn.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0x47,0xff,0x7f,0xf0]
and.andn.t %d15, %d15, 31, %d15, 0

# CHECK-INST: and.andn.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0x47,0xff,0xff,0xf3]
and.andn.t %d15, %d15, 31, %d15, 7

# CHECK-INST: and.andn.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0x47,0xff,0x7f,0xfc]
and.andn.t %d15, %d15, 31, %d15, 24

# CHECK-INST: and.andn.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0x47,0xff,0xff,0xff]
and.andn.t %d15, %d15, 31, %d15, 31

# CHECK-INST: and.nor.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x47,0x00,0x40,0x00]
and.nor.t %d0, %d0, 0, %d0, 0

# CHECK-INST: and.nor.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0x47,0x00,0xc0,0x03]
and.nor.t %d0, %d0, 0, %d0, 7

# CHECK-INST: and.nor.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0x47,0x00,0x40,0x0c]
and.nor.t %d0, %d0, 0, %d0, 24

# CHECK-INST: and.nor.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0x47,0x00,0xc0,0x0f]
and.nor.t %d0, %d0, 0, %d0, 31

# CHECK-INST: and.nor.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0x47,0x10,0x40,0x00]
and.nor.t %d0, %d0, 0, %d1, 0

# CHECK-INST: and.nor.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0x47,0x10,0xc0,0x03]
and.nor.t %d0, %d0, 0, %d1, 7

# CHECK-INST: and.nor.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0x47,0x10,0x40,0x0c]
and.nor.t %d0, %d0, 0, %d1, 24

# CHECK-INST: and.nor.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0x47,0x10,0xc0,0x0f]
and.nor.t %d0, %d0, 0, %d1, 31

# CHECK-INST: and.nor.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x40,0x00]
and.nor.t %d0, %d0, 0, %d14, 0

# CHECK-INST: and.nor.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xc0,0x03]
and.nor.t %d0, %d0, 0, %d14, 7

# CHECK-INST: and.nor.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x40,0x0c]
and.nor.t %d0, %d0, 0, %d14, 24

# CHECK-INST: and.nor.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xc0,0x0f]
and.nor.t %d0, %d0, 0, %d14, 31

# CHECK-INST: and.nor.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x40,0x00]
and.nor.t %d0, %d0, 0, %d15, 0

# CHECK-INST: and.nor.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xc0,0x03]
and.nor.t %d0, %d0, 0, %d15, 7

# CHECK-INST: and.nor.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x40,0x0c]
and.nor.t %d0, %d0, 0, %d15, 24

# CHECK-INST: and.nor.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xc0,0x0f]
and.nor.t %d0, %d0, 0, %d15, 31

# CHECK-INST: and.nor.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0x47,0x00,0x47,0x00]
and.nor.t %d0, %d0, 7, %d0, 0

# CHECK-INST: and.nor.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0x47,0x00,0xc7,0x03]
and.nor.t %d0, %d0, 7, %d0, 7

# CHECK-INST: and.nor.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0x47,0x00,0x47,0x0c]
and.nor.t %d0, %d0, 7, %d0, 24

# CHECK-INST: and.nor.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0x47,0x00,0xc7,0x0f]
and.nor.t %d0, %d0, 7, %d0, 31

# CHECK-INST: and.nor.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0x47,0x10,0x47,0x00]
and.nor.t %d0, %d0, 7, %d1, 0

# CHECK-INST: and.nor.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0x47,0x10,0xc7,0x03]
and.nor.t %d0, %d0, 7, %d1, 7

# CHECK-INST: and.nor.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0x47,0x10,0x47,0x0c]
and.nor.t %d0, %d0, 7, %d1, 24

# CHECK-INST: and.nor.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0x47,0x10,0xc7,0x0f]
and.nor.t %d0, %d0, 7, %d1, 31

# CHECK-INST: and.nor.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x47,0x00]
and.nor.t %d0, %d0, 7, %d14, 0

# CHECK-INST: and.nor.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xc7,0x03]
and.nor.t %d0, %d0, 7, %d14, 7

# CHECK-INST: and.nor.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x47,0x0c]
and.nor.t %d0, %d0, 7, %d14, 24

# CHECK-INST: and.nor.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xc7,0x0f]
and.nor.t %d0, %d0, 7, %d14, 31

# CHECK-INST: and.nor.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x47,0x00]
and.nor.t %d0, %d0, 7, %d15, 0

# CHECK-INST: and.nor.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xc7,0x03]
and.nor.t %d0, %d0, 7, %d15, 7

# CHECK-INST: and.nor.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x47,0x0c]
and.nor.t %d0, %d0, 7, %d15, 24

# CHECK-INST: and.nor.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xc7,0x0f]
and.nor.t %d0, %d0, 7, %d15, 31

# CHECK-INST: and.nor.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0x47,0x00,0x58,0x00]
and.nor.t %d0, %d0, 24, %d0, 0

# CHECK-INST: and.nor.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0x47,0x00,0xd8,0x03]
and.nor.t %d0, %d0, 24, %d0, 7

# CHECK-INST: and.nor.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0x47,0x00,0x58,0x0c]
and.nor.t %d0, %d0, 24, %d0, 24

# CHECK-INST: and.nor.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0x47,0x00,0xd8,0x0f]
and.nor.t %d0, %d0, 24, %d0, 31

# CHECK-INST: and.nor.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0x47,0x10,0x58,0x00]
and.nor.t %d0, %d0, 24, %d1, 0

# CHECK-INST: and.nor.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0x47,0x10,0xd8,0x03]
and.nor.t %d0, %d0, 24, %d1, 7

# CHECK-INST: and.nor.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0x47,0x10,0x58,0x0c]
and.nor.t %d0, %d0, 24, %d1, 24

# CHECK-INST: and.nor.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0x47,0x10,0xd8,0x0f]
and.nor.t %d0, %d0, 24, %d1, 31

# CHECK-INST: and.nor.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x58,0x00]
and.nor.t %d0, %d0, 24, %d14, 0

# CHECK-INST: and.nor.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xd8,0x03]
and.nor.t %d0, %d0, 24, %d14, 7

# CHECK-INST: and.nor.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x58,0x0c]
and.nor.t %d0, %d0, 24, %d14, 24

# CHECK-INST: and.nor.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xd8,0x0f]
and.nor.t %d0, %d0, 24, %d14, 31

# CHECK-INST: and.nor.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x58,0x00]
and.nor.t %d0, %d0, 24, %d15, 0

# CHECK-INST: and.nor.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xd8,0x03]
and.nor.t %d0, %d0, 24, %d15, 7

# CHECK-INST: and.nor.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x58,0x0c]
and.nor.t %d0, %d0, 24, %d15, 24

# CHECK-INST: and.nor.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xd8,0x0f]
and.nor.t %d0, %d0, 24, %d15, 31

# CHECK-INST: and.nor.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0x47,0x00,0x5f,0x00]
and.nor.t %d0, %d0, 31, %d0, 0

# CHECK-INST: and.nor.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0x47,0x00,0xdf,0x03]
and.nor.t %d0, %d0, 31, %d0, 7

# CHECK-INST: and.nor.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0x47,0x00,0x5f,0x0c]
and.nor.t %d0, %d0, 31, %d0, 24

# CHECK-INST: and.nor.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0x47,0x00,0xdf,0x0f]
and.nor.t %d0, %d0, 31, %d0, 31

# CHECK-INST: and.nor.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0x47,0x10,0x5f,0x00]
and.nor.t %d0, %d0, 31, %d1, 0

# CHECK-INST: and.nor.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0x47,0x10,0xdf,0x03]
and.nor.t %d0, %d0, 31, %d1, 7

# CHECK-INST: and.nor.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0x47,0x10,0x5f,0x0c]
and.nor.t %d0, %d0, 31, %d1, 24

# CHECK-INST: and.nor.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0x47,0x10,0xdf,0x0f]
and.nor.t %d0, %d0, 31, %d1, 31

# CHECK-INST: and.nor.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x5f,0x00]
and.nor.t %d0, %d0, 31, %d14, 0

# CHECK-INST: and.nor.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xdf,0x03]
and.nor.t %d0, %d0, 31, %d14, 7

# CHECK-INST: and.nor.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x5f,0x0c]
and.nor.t %d0, %d0, 31, %d14, 24

# CHECK-INST: and.nor.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xdf,0x0f]
and.nor.t %d0, %d0, 31, %d14, 31

# CHECK-INST: and.nor.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x5f,0x00]
and.nor.t %d0, %d0, 31, %d15, 0

# CHECK-INST: and.nor.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xdf,0x03]
and.nor.t %d0, %d0, 31, %d15, 7

# CHECK-INST: and.nor.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x5f,0x0c]
and.nor.t %d0, %d0, 31, %d15, 24

# CHECK-INST: and.nor.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xdf,0x0f]
and.nor.t %d0, %d0, 31, %d15, 31

# CHECK-INST: and.nor.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0x47,0x01,0x40,0x00]
and.nor.t %d0, %d1, 0, %d0, 0

# CHECK-INST: and.nor.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0x47,0x01,0xc0,0x03]
and.nor.t %d0, %d1, 0, %d0, 7

# CHECK-INST: and.nor.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0x47,0x01,0x40,0x0c]
and.nor.t %d0, %d1, 0, %d0, 24

# CHECK-INST: and.nor.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0x47,0x01,0xc0,0x0f]
and.nor.t %d0, %d1, 0, %d0, 31

# CHECK-INST: and.nor.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0x47,0x11,0x40,0x00]
and.nor.t %d0, %d1, 0, %d1, 0

# CHECK-INST: and.nor.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0x47,0x11,0xc0,0x03]
and.nor.t %d0, %d1, 0, %d1, 7

# CHECK-INST: and.nor.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0x47,0x11,0x40,0x0c]
and.nor.t %d0, %d1, 0, %d1, 24

# CHECK-INST: and.nor.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0x47,0x11,0xc0,0x0f]
and.nor.t %d0, %d1, 0, %d1, 31

# CHECK-INST: and.nor.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x40,0x00]
and.nor.t %d0, %d1, 0, %d14, 0

# CHECK-INST: and.nor.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xc0,0x03]
and.nor.t %d0, %d1, 0, %d14, 7

# CHECK-INST: and.nor.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x40,0x0c]
and.nor.t %d0, %d1, 0, %d14, 24

# CHECK-INST: and.nor.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xc0,0x0f]
and.nor.t %d0, %d1, 0, %d14, 31

# CHECK-INST: and.nor.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x40,0x00]
and.nor.t %d0, %d1, 0, %d15, 0

# CHECK-INST: and.nor.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xc0,0x03]
and.nor.t %d0, %d1, 0, %d15, 7

# CHECK-INST: and.nor.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x40,0x0c]
and.nor.t %d0, %d1, 0, %d15, 24

# CHECK-INST: and.nor.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xc0,0x0f]
and.nor.t %d0, %d1, 0, %d15, 31

# CHECK-INST: and.nor.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0x47,0x01,0x47,0x00]
and.nor.t %d0, %d1, 7, %d0, 0

# CHECK-INST: and.nor.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0x47,0x01,0xc7,0x03]
and.nor.t %d0, %d1, 7, %d0, 7

# CHECK-INST: and.nor.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0x47,0x01,0x47,0x0c]
and.nor.t %d0, %d1, 7, %d0, 24

# CHECK-INST: and.nor.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0x47,0x01,0xc7,0x0f]
and.nor.t %d0, %d1, 7, %d0, 31

# CHECK-INST: and.nor.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0x47,0x11,0x47,0x00]
and.nor.t %d0, %d1, 7, %d1, 0

# CHECK-INST: and.nor.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0x47,0x11,0xc7,0x03]
and.nor.t %d0, %d1, 7, %d1, 7

# CHECK-INST: and.nor.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0x47,0x11,0x47,0x0c]
and.nor.t %d0, %d1, 7, %d1, 24

# CHECK-INST: and.nor.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0x47,0x11,0xc7,0x0f]
and.nor.t %d0, %d1, 7, %d1, 31

# CHECK-INST: and.nor.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x47,0x00]
and.nor.t %d0, %d1, 7, %d14, 0

# CHECK-INST: and.nor.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xc7,0x03]
and.nor.t %d0, %d1, 7, %d14, 7

# CHECK-INST: and.nor.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x47,0x0c]
and.nor.t %d0, %d1, 7, %d14, 24

# CHECK-INST: and.nor.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xc7,0x0f]
and.nor.t %d0, %d1, 7, %d14, 31

# CHECK-INST: and.nor.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x47,0x00]
and.nor.t %d0, %d1, 7, %d15, 0

# CHECK-INST: and.nor.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xc7,0x03]
and.nor.t %d0, %d1, 7, %d15, 7

# CHECK-INST: and.nor.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x47,0x0c]
and.nor.t %d0, %d1, 7, %d15, 24

# CHECK-INST: and.nor.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xc7,0x0f]
and.nor.t %d0, %d1, 7, %d15, 31

# CHECK-INST: and.nor.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0x47,0x01,0x58,0x00]
and.nor.t %d0, %d1, 24, %d0, 0

# CHECK-INST: and.nor.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0x47,0x01,0xd8,0x03]
and.nor.t %d0, %d1, 24, %d0, 7

# CHECK-INST: and.nor.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0x47,0x01,0x58,0x0c]
and.nor.t %d0, %d1, 24, %d0, 24

# CHECK-INST: and.nor.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0x47,0x01,0xd8,0x0f]
and.nor.t %d0, %d1, 24, %d0, 31

# CHECK-INST: and.nor.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0x47,0x11,0x58,0x00]
and.nor.t %d0, %d1, 24, %d1, 0

# CHECK-INST: and.nor.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0x47,0x11,0xd8,0x03]
and.nor.t %d0, %d1, 24, %d1, 7

# CHECK-INST: and.nor.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0x47,0x11,0x58,0x0c]
and.nor.t %d0, %d1, 24, %d1, 24

# CHECK-INST: and.nor.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0x47,0x11,0xd8,0x0f]
and.nor.t %d0, %d1, 24, %d1, 31

# CHECK-INST: and.nor.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x58,0x00]
and.nor.t %d0, %d1, 24, %d14, 0

# CHECK-INST: and.nor.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xd8,0x03]
and.nor.t %d0, %d1, 24, %d14, 7

# CHECK-INST: and.nor.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x58,0x0c]
and.nor.t %d0, %d1, 24, %d14, 24

# CHECK-INST: and.nor.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xd8,0x0f]
and.nor.t %d0, %d1, 24, %d14, 31

# CHECK-INST: and.nor.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x58,0x00]
and.nor.t %d0, %d1, 24, %d15, 0

# CHECK-INST: and.nor.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xd8,0x03]
and.nor.t %d0, %d1, 24, %d15, 7

# CHECK-INST: and.nor.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x58,0x0c]
and.nor.t %d0, %d1, 24, %d15, 24

# CHECK-INST: and.nor.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xd8,0x0f]
and.nor.t %d0, %d1, 24, %d15, 31

# CHECK-INST: and.nor.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0x47,0x01,0x5f,0x00]
and.nor.t %d0, %d1, 31, %d0, 0

# CHECK-INST: and.nor.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0x47,0x01,0xdf,0x03]
and.nor.t %d0, %d1, 31, %d0, 7

# CHECK-INST: and.nor.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0x47,0x01,0x5f,0x0c]
and.nor.t %d0, %d1, 31, %d0, 24

# CHECK-INST: and.nor.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0x47,0x01,0xdf,0x0f]
and.nor.t %d0, %d1, 31, %d0, 31

# CHECK-INST: and.nor.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0x47,0x11,0x5f,0x00]
and.nor.t %d0, %d1, 31, %d1, 0

# CHECK-INST: and.nor.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0x47,0x11,0xdf,0x03]
and.nor.t %d0, %d1, 31, %d1, 7

# CHECK-INST: and.nor.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0x47,0x11,0x5f,0x0c]
and.nor.t %d0, %d1, 31, %d1, 24

# CHECK-INST: and.nor.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0x47,0x11,0xdf,0x0f]
and.nor.t %d0, %d1, 31, %d1, 31

# CHECK-INST: and.nor.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x5f,0x00]
and.nor.t %d0, %d1, 31, %d14, 0

# CHECK-INST: and.nor.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xdf,0x03]
and.nor.t %d0, %d1, 31, %d14, 7

# CHECK-INST: and.nor.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x5f,0x0c]
and.nor.t %d0, %d1, 31, %d14, 24

# CHECK-INST: and.nor.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xdf,0x0f]
and.nor.t %d0, %d1, 31, %d14, 31

# CHECK-INST: and.nor.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x5f,0x00]
and.nor.t %d0, %d1, 31, %d15, 0

# CHECK-INST: and.nor.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xdf,0x03]
and.nor.t %d0, %d1, 31, %d15, 7

# CHECK-INST: and.nor.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x5f,0x0c]
and.nor.t %d0, %d1, 31, %d15, 24

# CHECK-INST: and.nor.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xdf,0x0f]
and.nor.t %d0, %d1, 31, %d15, 31

# CHECK-INST: and.nor.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x40,0x00]
and.nor.t %d0, %d14, 0, %d0, 0

# CHECK-INST: and.nor.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xc0,0x03]
and.nor.t %d0, %d14, 0, %d0, 7

# CHECK-INST: and.nor.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x40,0x0c]
and.nor.t %d0, %d14, 0, %d0, 24

# CHECK-INST: and.nor.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xc0,0x0f]
and.nor.t %d0, %d14, 0, %d0, 31

# CHECK-INST: and.nor.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x40,0x00]
and.nor.t %d0, %d14, 0, %d1, 0

# CHECK-INST: and.nor.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xc0,0x03]
and.nor.t %d0, %d14, 0, %d1, 7

# CHECK-INST: and.nor.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x40,0x0c]
and.nor.t %d0, %d14, 0, %d1, 24

# CHECK-INST: and.nor.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xc0,0x0f]
and.nor.t %d0, %d14, 0, %d1, 31

# CHECK-INST: and.nor.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0x47,0xee,0x40,0x00]
and.nor.t %d0, %d14, 0, %d14, 0

# CHECK-INST: and.nor.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0x47,0xee,0xc0,0x03]
and.nor.t %d0, %d14, 0, %d14, 7

# CHECK-INST: and.nor.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0x47,0xee,0x40,0x0c]
and.nor.t %d0, %d14, 0, %d14, 24

# CHECK-INST: and.nor.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0x47,0xee,0xc0,0x0f]
and.nor.t %d0, %d14, 0, %d14, 31

# CHECK-INST: and.nor.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x40,0x00]
and.nor.t %d0, %d14, 0, %d15, 0

# CHECK-INST: and.nor.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xc0,0x03]
and.nor.t %d0, %d14, 0, %d15, 7

# CHECK-INST: and.nor.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x40,0x0c]
and.nor.t %d0, %d14, 0, %d15, 24

# CHECK-INST: and.nor.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xc0,0x0f]
and.nor.t %d0, %d14, 0, %d15, 31

# CHECK-INST: and.nor.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x47,0x00]
and.nor.t %d0, %d14, 7, %d0, 0

# CHECK-INST: and.nor.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xc7,0x03]
and.nor.t %d0, %d14, 7, %d0, 7

# CHECK-INST: and.nor.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x47,0x0c]
and.nor.t %d0, %d14, 7, %d0, 24

# CHECK-INST: and.nor.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xc7,0x0f]
and.nor.t %d0, %d14, 7, %d0, 31

# CHECK-INST: and.nor.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x47,0x00]
and.nor.t %d0, %d14, 7, %d1, 0

# CHECK-INST: and.nor.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xc7,0x03]
and.nor.t %d0, %d14, 7, %d1, 7

# CHECK-INST: and.nor.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x47,0x0c]
and.nor.t %d0, %d14, 7, %d1, 24

# CHECK-INST: and.nor.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xc7,0x0f]
and.nor.t %d0, %d14, 7, %d1, 31

# CHECK-INST: and.nor.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0x47,0xee,0x47,0x00]
and.nor.t %d0, %d14, 7, %d14, 0

# CHECK-INST: and.nor.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0x47,0xee,0xc7,0x03]
and.nor.t %d0, %d14, 7, %d14, 7

# CHECK-INST: and.nor.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0x47,0xee,0x47,0x0c]
and.nor.t %d0, %d14, 7, %d14, 24

# CHECK-INST: and.nor.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0x47,0xee,0xc7,0x0f]
and.nor.t %d0, %d14, 7, %d14, 31

# CHECK-INST: and.nor.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x47,0x00]
and.nor.t %d0, %d14, 7, %d15, 0

# CHECK-INST: and.nor.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xc7,0x03]
and.nor.t %d0, %d14, 7, %d15, 7

# CHECK-INST: and.nor.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x47,0x0c]
and.nor.t %d0, %d14, 7, %d15, 24

# CHECK-INST: and.nor.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xc7,0x0f]
and.nor.t %d0, %d14, 7, %d15, 31

# CHECK-INST: and.nor.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x58,0x00]
and.nor.t %d0, %d14, 24, %d0, 0

# CHECK-INST: and.nor.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xd8,0x03]
and.nor.t %d0, %d14, 24, %d0, 7

# CHECK-INST: and.nor.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x58,0x0c]
and.nor.t %d0, %d14, 24, %d0, 24

# CHECK-INST: and.nor.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xd8,0x0f]
and.nor.t %d0, %d14, 24, %d0, 31

# CHECK-INST: and.nor.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x58,0x00]
and.nor.t %d0, %d14, 24, %d1, 0

# CHECK-INST: and.nor.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xd8,0x03]
and.nor.t %d0, %d14, 24, %d1, 7

# CHECK-INST: and.nor.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x58,0x0c]
and.nor.t %d0, %d14, 24, %d1, 24

# CHECK-INST: and.nor.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xd8,0x0f]
and.nor.t %d0, %d14, 24, %d1, 31

# CHECK-INST: and.nor.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0x47,0xee,0x58,0x00]
and.nor.t %d0, %d14, 24, %d14, 0

# CHECK-INST: and.nor.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0x47,0xee,0xd8,0x03]
and.nor.t %d0, %d14, 24, %d14, 7

# CHECK-INST: and.nor.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0x47,0xee,0x58,0x0c]
and.nor.t %d0, %d14, 24, %d14, 24

# CHECK-INST: and.nor.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0x47,0xee,0xd8,0x0f]
and.nor.t %d0, %d14, 24, %d14, 31

# CHECK-INST: and.nor.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x58,0x00]
and.nor.t %d0, %d14, 24, %d15, 0

# CHECK-INST: and.nor.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xd8,0x03]
and.nor.t %d0, %d14, 24, %d15, 7

# CHECK-INST: and.nor.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x58,0x0c]
and.nor.t %d0, %d14, 24, %d15, 24

# CHECK-INST: and.nor.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xd8,0x0f]
and.nor.t %d0, %d14, 24, %d15, 31

# CHECK-INST: and.nor.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x5f,0x00]
and.nor.t %d0, %d14, 31, %d0, 0

# CHECK-INST: and.nor.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xdf,0x03]
and.nor.t %d0, %d14, 31, %d0, 7

# CHECK-INST: and.nor.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x5f,0x0c]
and.nor.t %d0, %d14, 31, %d0, 24

# CHECK-INST: and.nor.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xdf,0x0f]
and.nor.t %d0, %d14, 31, %d0, 31

# CHECK-INST: and.nor.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x5f,0x00]
and.nor.t %d0, %d14, 31, %d1, 0

# CHECK-INST: and.nor.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xdf,0x03]
and.nor.t %d0, %d14, 31, %d1, 7

# CHECK-INST: and.nor.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x5f,0x0c]
and.nor.t %d0, %d14, 31, %d1, 24

# CHECK-INST: and.nor.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xdf,0x0f]
and.nor.t %d0, %d14, 31, %d1, 31

# CHECK-INST: and.nor.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0x47,0xee,0x5f,0x00]
and.nor.t %d0, %d14, 31, %d14, 0

# CHECK-INST: and.nor.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0x47,0xee,0xdf,0x03]
and.nor.t %d0, %d14, 31, %d14, 7

# CHECK-INST: and.nor.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0x47,0xee,0x5f,0x0c]
and.nor.t %d0, %d14, 31, %d14, 24

# CHECK-INST: and.nor.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0x47,0xee,0xdf,0x0f]
and.nor.t %d0, %d14, 31, %d14, 31

# CHECK-INST: and.nor.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x5f,0x00]
and.nor.t %d0, %d14, 31, %d15, 0

# CHECK-INST: and.nor.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xdf,0x03]
and.nor.t %d0, %d14, 31, %d15, 7

# CHECK-INST: and.nor.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x5f,0x0c]
and.nor.t %d0, %d14, 31, %d15, 24

# CHECK-INST: and.nor.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xdf,0x0f]
and.nor.t %d0, %d14, 31, %d15, 31

# CHECK-INST: and.nor.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x40,0x00]
and.nor.t %d0, %d15, 0, %d0, 0

# CHECK-INST: and.nor.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xc0,0x03]
and.nor.t %d0, %d15, 0, %d0, 7

# CHECK-INST: and.nor.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x40,0x0c]
and.nor.t %d0, %d15, 0, %d0, 24

# CHECK-INST: and.nor.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xc0,0x0f]
and.nor.t %d0, %d15, 0, %d0, 31

# CHECK-INST: and.nor.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x40,0x00]
and.nor.t %d0, %d15, 0, %d1, 0

# CHECK-INST: and.nor.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xc0,0x03]
and.nor.t %d0, %d15, 0, %d1, 7

# CHECK-INST: and.nor.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x40,0x0c]
and.nor.t %d0, %d15, 0, %d1, 24

# CHECK-INST: and.nor.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xc0,0x0f]
and.nor.t %d0, %d15, 0, %d1, 31

# CHECK-INST: and.nor.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0x47,0xef,0x40,0x00]
and.nor.t %d0, %d15, 0, %d14, 0

# CHECK-INST: and.nor.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0x47,0xef,0xc0,0x03]
and.nor.t %d0, %d15, 0, %d14, 7

# CHECK-INST: and.nor.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0x47,0xef,0x40,0x0c]
and.nor.t %d0, %d15, 0, %d14, 24

# CHECK-INST: and.nor.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0x47,0xef,0xc0,0x0f]
and.nor.t %d0, %d15, 0, %d14, 31

# CHECK-INST: and.nor.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0x47,0xff,0x40,0x00]
and.nor.t %d0, %d15, 0, %d15, 0

# CHECK-INST: and.nor.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0x47,0xff,0xc0,0x03]
and.nor.t %d0, %d15, 0, %d15, 7

# CHECK-INST: and.nor.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0x47,0xff,0x40,0x0c]
and.nor.t %d0, %d15, 0, %d15, 24

# CHECK-INST: and.nor.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0x47,0xff,0xc0,0x0f]
and.nor.t %d0, %d15, 0, %d15, 31

# CHECK-INST: and.nor.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x47,0x00]
and.nor.t %d0, %d15, 7, %d0, 0

# CHECK-INST: and.nor.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xc7,0x03]
and.nor.t %d0, %d15, 7, %d0, 7

# CHECK-INST: and.nor.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x47,0x0c]
and.nor.t %d0, %d15, 7, %d0, 24

# CHECK-INST: and.nor.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xc7,0x0f]
and.nor.t %d0, %d15, 7, %d0, 31

# CHECK-INST: and.nor.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x47,0x00]
and.nor.t %d0, %d15, 7, %d1, 0

# CHECK-INST: and.nor.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xc7,0x03]
and.nor.t %d0, %d15, 7, %d1, 7

# CHECK-INST: and.nor.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x47,0x0c]
and.nor.t %d0, %d15, 7, %d1, 24

# CHECK-INST: and.nor.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xc7,0x0f]
and.nor.t %d0, %d15, 7, %d1, 31

# CHECK-INST: and.nor.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0x47,0xef,0x47,0x00]
and.nor.t %d0, %d15, 7, %d14, 0

# CHECK-INST: and.nor.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0x47,0xef,0xc7,0x03]
and.nor.t %d0, %d15, 7, %d14, 7

# CHECK-INST: and.nor.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0x47,0xef,0x47,0x0c]
and.nor.t %d0, %d15, 7, %d14, 24

# CHECK-INST: and.nor.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0x47,0xef,0xc7,0x0f]
and.nor.t %d0, %d15, 7, %d14, 31

# CHECK-INST: and.nor.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0x47,0xff,0x47,0x00]
and.nor.t %d0, %d15, 7, %d15, 0

# CHECK-INST: and.nor.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0x47,0xff,0xc7,0x03]
and.nor.t %d0, %d15, 7, %d15, 7

# CHECK-INST: and.nor.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0x47,0xff,0x47,0x0c]
and.nor.t %d0, %d15, 7, %d15, 24

# CHECK-INST: and.nor.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0x47,0xff,0xc7,0x0f]
and.nor.t %d0, %d15, 7, %d15, 31

# CHECK-INST: and.nor.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x58,0x00]
and.nor.t %d0, %d15, 24, %d0, 0

# CHECK-INST: and.nor.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xd8,0x03]
and.nor.t %d0, %d15, 24, %d0, 7

# CHECK-INST: and.nor.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x58,0x0c]
and.nor.t %d0, %d15, 24, %d0, 24

# CHECK-INST: and.nor.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xd8,0x0f]
and.nor.t %d0, %d15, 24, %d0, 31

# CHECK-INST: and.nor.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x58,0x00]
and.nor.t %d0, %d15, 24, %d1, 0

# CHECK-INST: and.nor.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xd8,0x03]
and.nor.t %d0, %d15, 24, %d1, 7

# CHECK-INST: and.nor.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x58,0x0c]
and.nor.t %d0, %d15, 24, %d1, 24

# CHECK-INST: and.nor.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xd8,0x0f]
and.nor.t %d0, %d15, 24, %d1, 31

# CHECK-INST: and.nor.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0x47,0xef,0x58,0x00]
and.nor.t %d0, %d15, 24, %d14, 0

# CHECK-INST: and.nor.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0x47,0xef,0xd8,0x03]
and.nor.t %d0, %d15, 24, %d14, 7

# CHECK-INST: and.nor.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0x47,0xef,0x58,0x0c]
and.nor.t %d0, %d15, 24, %d14, 24

# CHECK-INST: and.nor.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0x47,0xef,0xd8,0x0f]
and.nor.t %d0, %d15, 24, %d14, 31

# CHECK-INST: and.nor.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0x47,0xff,0x58,0x00]
and.nor.t %d0, %d15, 24, %d15, 0

# CHECK-INST: and.nor.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0x47,0xff,0xd8,0x03]
and.nor.t %d0, %d15, 24, %d15, 7

# CHECK-INST: and.nor.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0x47,0xff,0x58,0x0c]
and.nor.t %d0, %d15, 24, %d15, 24

# CHECK-INST: and.nor.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0x47,0xff,0xd8,0x0f]
and.nor.t %d0, %d15, 24, %d15, 31

# CHECK-INST: and.nor.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x5f,0x00]
and.nor.t %d0, %d15, 31, %d0, 0

# CHECK-INST: and.nor.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xdf,0x03]
and.nor.t %d0, %d15, 31, %d0, 7

# CHECK-INST: and.nor.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x5f,0x0c]
and.nor.t %d0, %d15, 31, %d0, 24

# CHECK-INST: and.nor.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xdf,0x0f]
and.nor.t %d0, %d15, 31, %d0, 31

# CHECK-INST: and.nor.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x5f,0x00]
and.nor.t %d0, %d15, 31, %d1, 0

# CHECK-INST: and.nor.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xdf,0x03]
and.nor.t %d0, %d15, 31, %d1, 7

# CHECK-INST: and.nor.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x5f,0x0c]
and.nor.t %d0, %d15, 31, %d1, 24

# CHECK-INST: and.nor.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xdf,0x0f]
and.nor.t %d0, %d15, 31, %d1, 31

# CHECK-INST: and.nor.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0x47,0xef,0x5f,0x00]
and.nor.t %d0, %d15, 31, %d14, 0

# CHECK-INST: and.nor.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0x47,0xef,0xdf,0x03]
and.nor.t %d0, %d15, 31, %d14, 7

# CHECK-INST: and.nor.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0x47,0xef,0x5f,0x0c]
and.nor.t %d0, %d15, 31, %d14, 24

# CHECK-INST: and.nor.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0x47,0xef,0xdf,0x0f]
and.nor.t %d0, %d15, 31, %d14, 31

# CHECK-INST: and.nor.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0x47,0xff,0x5f,0x00]
and.nor.t %d0, %d15, 31, %d15, 0

# CHECK-INST: and.nor.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0x47,0xff,0xdf,0x03]
and.nor.t %d0, %d15, 31, %d15, 7

# CHECK-INST: and.nor.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0x47,0xff,0x5f,0x0c]
and.nor.t %d0, %d15, 31, %d15, 24

# CHECK-INST: and.nor.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0x47,0xff,0xdf,0x0f]
and.nor.t %d0, %d15, 31, %d15, 31

# CHECK-INST: and.nor.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0x47,0x00,0x40,0x10]
and.nor.t %d1, %d0, 0, %d0, 0

# CHECK-INST: and.nor.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0x47,0x00,0xc0,0x13]
and.nor.t %d1, %d0, 0, %d0, 7

# CHECK-INST: and.nor.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0x47,0x00,0x40,0x1c]
and.nor.t %d1, %d0, 0, %d0, 24

# CHECK-INST: and.nor.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0x47,0x00,0xc0,0x1f]
and.nor.t %d1, %d0, 0, %d0, 31

# CHECK-INST: and.nor.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0x47,0x10,0x40,0x10]
and.nor.t %d1, %d0, 0, %d1, 0

# CHECK-INST: and.nor.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0x47,0x10,0xc0,0x13]
and.nor.t %d1, %d0, 0, %d1, 7

# CHECK-INST: and.nor.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0x47,0x10,0x40,0x1c]
and.nor.t %d1, %d0, 0, %d1, 24

# CHECK-INST: and.nor.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0x47,0x10,0xc0,0x1f]
and.nor.t %d1, %d0, 0, %d1, 31

# CHECK-INST: and.nor.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x40,0x10]
and.nor.t %d1, %d0, 0, %d14, 0

# CHECK-INST: and.nor.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xc0,0x13]
and.nor.t %d1, %d0, 0, %d14, 7

# CHECK-INST: and.nor.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x40,0x1c]
and.nor.t %d1, %d0, 0, %d14, 24

# CHECK-INST: and.nor.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xc0,0x1f]
and.nor.t %d1, %d0, 0, %d14, 31

# CHECK-INST: and.nor.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x40,0x10]
and.nor.t %d1, %d0, 0, %d15, 0

# CHECK-INST: and.nor.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xc0,0x13]
and.nor.t %d1, %d0, 0, %d15, 7

# CHECK-INST: and.nor.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x40,0x1c]
and.nor.t %d1, %d0, 0, %d15, 24

# CHECK-INST: and.nor.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xc0,0x1f]
and.nor.t %d1, %d0, 0, %d15, 31

# CHECK-INST: and.nor.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0x47,0x00,0x47,0x10]
and.nor.t %d1, %d0, 7, %d0, 0

# CHECK-INST: and.nor.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0x47,0x00,0xc7,0x13]
and.nor.t %d1, %d0, 7, %d0, 7

# CHECK-INST: and.nor.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0x47,0x00,0x47,0x1c]
and.nor.t %d1, %d0, 7, %d0, 24

# CHECK-INST: and.nor.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0x47,0x00,0xc7,0x1f]
and.nor.t %d1, %d0, 7, %d0, 31

# CHECK-INST: and.nor.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0x47,0x10,0x47,0x10]
and.nor.t %d1, %d0, 7, %d1, 0

# CHECK-INST: and.nor.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0x47,0x10,0xc7,0x13]
and.nor.t %d1, %d0, 7, %d1, 7

# CHECK-INST: and.nor.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0x47,0x10,0x47,0x1c]
and.nor.t %d1, %d0, 7, %d1, 24

# CHECK-INST: and.nor.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0x47,0x10,0xc7,0x1f]
and.nor.t %d1, %d0, 7, %d1, 31

# CHECK-INST: and.nor.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x47,0x10]
and.nor.t %d1, %d0, 7, %d14, 0

# CHECK-INST: and.nor.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xc7,0x13]
and.nor.t %d1, %d0, 7, %d14, 7

# CHECK-INST: and.nor.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x47,0x1c]
and.nor.t %d1, %d0, 7, %d14, 24

# CHECK-INST: and.nor.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xc7,0x1f]
and.nor.t %d1, %d0, 7, %d14, 31

# CHECK-INST: and.nor.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x47,0x10]
and.nor.t %d1, %d0, 7, %d15, 0

# CHECK-INST: and.nor.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xc7,0x13]
and.nor.t %d1, %d0, 7, %d15, 7

# CHECK-INST: and.nor.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x47,0x1c]
and.nor.t %d1, %d0, 7, %d15, 24

# CHECK-INST: and.nor.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xc7,0x1f]
and.nor.t %d1, %d0, 7, %d15, 31

# CHECK-INST: and.nor.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0x47,0x00,0x58,0x10]
and.nor.t %d1, %d0, 24, %d0, 0

# CHECK-INST: and.nor.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0x47,0x00,0xd8,0x13]
and.nor.t %d1, %d0, 24, %d0, 7

# CHECK-INST: and.nor.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0x47,0x00,0x58,0x1c]
and.nor.t %d1, %d0, 24, %d0, 24

# CHECK-INST: and.nor.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0x47,0x00,0xd8,0x1f]
and.nor.t %d1, %d0, 24, %d0, 31

# CHECK-INST: and.nor.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0x47,0x10,0x58,0x10]
and.nor.t %d1, %d0, 24, %d1, 0

# CHECK-INST: and.nor.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0x47,0x10,0xd8,0x13]
and.nor.t %d1, %d0, 24, %d1, 7

# CHECK-INST: and.nor.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0x47,0x10,0x58,0x1c]
and.nor.t %d1, %d0, 24, %d1, 24

# CHECK-INST: and.nor.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0x47,0x10,0xd8,0x1f]
and.nor.t %d1, %d0, 24, %d1, 31

# CHECK-INST: and.nor.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x58,0x10]
and.nor.t %d1, %d0, 24, %d14, 0

# CHECK-INST: and.nor.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xd8,0x13]
and.nor.t %d1, %d0, 24, %d14, 7

# CHECK-INST: and.nor.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x58,0x1c]
and.nor.t %d1, %d0, 24, %d14, 24

# CHECK-INST: and.nor.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xd8,0x1f]
and.nor.t %d1, %d0, 24, %d14, 31

# CHECK-INST: and.nor.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x58,0x10]
and.nor.t %d1, %d0, 24, %d15, 0

# CHECK-INST: and.nor.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xd8,0x13]
and.nor.t %d1, %d0, 24, %d15, 7

# CHECK-INST: and.nor.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x58,0x1c]
and.nor.t %d1, %d0, 24, %d15, 24

# CHECK-INST: and.nor.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xd8,0x1f]
and.nor.t %d1, %d0, 24, %d15, 31

# CHECK-INST: and.nor.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0x47,0x00,0x5f,0x10]
and.nor.t %d1, %d0, 31, %d0, 0

# CHECK-INST: and.nor.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0x47,0x00,0xdf,0x13]
and.nor.t %d1, %d0, 31, %d0, 7

# CHECK-INST: and.nor.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0x47,0x00,0x5f,0x1c]
and.nor.t %d1, %d0, 31, %d0, 24

# CHECK-INST: and.nor.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0x47,0x00,0xdf,0x1f]
and.nor.t %d1, %d0, 31, %d0, 31

# CHECK-INST: and.nor.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0x47,0x10,0x5f,0x10]
and.nor.t %d1, %d0, 31, %d1, 0

# CHECK-INST: and.nor.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0x47,0x10,0xdf,0x13]
and.nor.t %d1, %d0, 31, %d1, 7

# CHECK-INST: and.nor.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0x47,0x10,0x5f,0x1c]
and.nor.t %d1, %d0, 31, %d1, 24

# CHECK-INST: and.nor.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0x47,0x10,0xdf,0x1f]
and.nor.t %d1, %d0, 31, %d1, 31

# CHECK-INST: and.nor.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x5f,0x10]
and.nor.t %d1, %d0, 31, %d14, 0

# CHECK-INST: and.nor.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xdf,0x13]
and.nor.t %d1, %d0, 31, %d14, 7

# CHECK-INST: and.nor.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x5f,0x1c]
and.nor.t %d1, %d0, 31, %d14, 24

# CHECK-INST: and.nor.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xdf,0x1f]
and.nor.t %d1, %d0, 31, %d14, 31

# CHECK-INST: and.nor.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x5f,0x10]
and.nor.t %d1, %d0, 31, %d15, 0

# CHECK-INST: and.nor.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xdf,0x13]
and.nor.t %d1, %d0, 31, %d15, 7

# CHECK-INST: and.nor.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x5f,0x1c]
and.nor.t %d1, %d0, 31, %d15, 24

# CHECK-INST: and.nor.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xdf,0x1f]
and.nor.t %d1, %d0, 31, %d15, 31

# CHECK-INST: and.nor.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0x47,0x01,0x40,0x10]
and.nor.t %d1, %d1, 0, %d0, 0

# CHECK-INST: and.nor.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0x47,0x01,0xc0,0x13]
and.nor.t %d1, %d1, 0, %d0, 7

# CHECK-INST: and.nor.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0x47,0x01,0x40,0x1c]
and.nor.t %d1, %d1, 0, %d0, 24

# CHECK-INST: and.nor.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0x47,0x01,0xc0,0x1f]
and.nor.t %d1, %d1, 0, %d0, 31

# CHECK-INST: and.nor.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0x47,0x11,0x40,0x10]
and.nor.t %d1, %d1, 0, %d1, 0

# CHECK-INST: and.nor.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0x47,0x11,0xc0,0x13]
and.nor.t %d1, %d1, 0, %d1, 7

# CHECK-INST: and.nor.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0x47,0x11,0x40,0x1c]
and.nor.t %d1, %d1, 0, %d1, 24

# CHECK-INST: and.nor.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0x47,0x11,0xc0,0x1f]
and.nor.t %d1, %d1, 0, %d1, 31

# CHECK-INST: and.nor.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x40,0x10]
and.nor.t %d1, %d1, 0, %d14, 0

# CHECK-INST: and.nor.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xc0,0x13]
and.nor.t %d1, %d1, 0, %d14, 7

# CHECK-INST: and.nor.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x40,0x1c]
and.nor.t %d1, %d1, 0, %d14, 24

# CHECK-INST: and.nor.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xc0,0x1f]
and.nor.t %d1, %d1, 0, %d14, 31

# CHECK-INST: and.nor.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x40,0x10]
and.nor.t %d1, %d1, 0, %d15, 0

# CHECK-INST: and.nor.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xc0,0x13]
and.nor.t %d1, %d1, 0, %d15, 7

# CHECK-INST: and.nor.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x40,0x1c]
and.nor.t %d1, %d1, 0, %d15, 24

# CHECK-INST: and.nor.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xc0,0x1f]
and.nor.t %d1, %d1, 0, %d15, 31

# CHECK-INST: and.nor.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0x47,0x01,0x47,0x10]
and.nor.t %d1, %d1, 7, %d0, 0

# CHECK-INST: and.nor.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0x47,0x01,0xc7,0x13]
and.nor.t %d1, %d1, 7, %d0, 7

# CHECK-INST: and.nor.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0x47,0x01,0x47,0x1c]
and.nor.t %d1, %d1, 7, %d0, 24

# CHECK-INST: and.nor.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0x47,0x01,0xc7,0x1f]
and.nor.t %d1, %d1, 7, %d0, 31

# CHECK-INST: and.nor.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0x47,0x11,0x47,0x10]
and.nor.t %d1, %d1, 7, %d1, 0

# CHECK-INST: and.nor.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0x47,0x11,0xc7,0x13]
and.nor.t %d1, %d1, 7, %d1, 7

# CHECK-INST: and.nor.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0x47,0x11,0x47,0x1c]
and.nor.t %d1, %d1, 7, %d1, 24

# CHECK-INST: and.nor.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0x47,0x11,0xc7,0x1f]
and.nor.t %d1, %d1, 7, %d1, 31

# CHECK-INST: and.nor.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x47,0x10]
and.nor.t %d1, %d1, 7, %d14, 0

# CHECK-INST: and.nor.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xc7,0x13]
and.nor.t %d1, %d1, 7, %d14, 7

# CHECK-INST: and.nor.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x47,0x1c]
and.nor.t %d1, %d1, 7, %d14, 24

# CHECK-INST: and.nor.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xc7,0x1f]
and.nor.t %d1, %d1, 7, %d14, 31

# CHECK-INST: and.nor.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x47,0x10]
and.nor.t %d1, %d1, 7, %d15, 0

# CHECK-INST: and.nor.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xc7,0x13]
and.nor.t %d1, %d1, 7, %d15, 7

# CHECK-INST: and.nor.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x47,0x1c]
and.nor.t %d1, %d1, 7, %d15, 24

# CHECK-INST: and.nor.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xc7,0x1f]
and.nor.t %d1, %d1, 7, %d15, 31

# CHECK-INST: and.nor.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0x47,0x01,0x58,0x10]
and.nor.t %d1, %d1, 24, %d0, 0

# CHECK-INST: and.nor.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0x47,0x01,0xd8,0x13]
and.nor.t %d1, %d1, 24, %d0, 7

# CHECK-INST: and.nor.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0x47,0x01,0x58,0x1c]
and.nor.t %d1, %d1, 24, %d0, 24

# CHECK-INST: and.nor.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0x47,0x01,0xd8,0x1f]
and.nor.t %d1, %d1, 24, %d0, 31

# CHECK-INST: and.nor.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0x47,0x11,0x58,0x10]
and.nor.t %d1, %d1, 24, %d1, 0

# CHECK-INST: and.nor.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0x47,0x11,0xd8,0x13]
and.nor.t %d1, %d1, 24, %d1, 7

# CHECK-INST: and.nor.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0x47,0x11,0x58,0x1c]
and.nor.t %d1, %d1, 24, %d1, 24

# CHECK-INST: and.nor.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0x47,0x11,0xd8,0x1f]
and.nor.t %d1, %d1, 24, %d1, 31

# CHECK-INST: and.nor.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x58,0x10]
and.nor.t %d1, %d1, 24, %d14, 0

# CHECK-INST: and.nor.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xd8,0x13]
and.nor.t %d1, %d1, 24, %d14, 7

# CHECK-INST: and.nor.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x58,0x1c]
and.nor.t %d1, %d1, 24, %d14, 24

# CHECK-INST: and.nor.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xd8,0x1f]
and.nor.t %d1, %d1, 24, %d14, 31

# CHECK-INST: and.nor.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x58,0x10]
and.nor.t %d1, %d1, 24, %d15, 0

# CHECK-INST: and.nor.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xd8,0x13]
and.nor.t %d1, %d1, 24, %d15, 7

# CHECK-INST: and.nor.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x58,0x1c]
and.nor.t %d1, %d1, 24, %d15, 24

# CHECK-INST: and.nor.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xd8,0x1f]
and.nor.t %d1, %d1, 24, %d15, 31

# CHECK-INST: and.nor.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0x47,0x01,0x5f,0x10]
and.nor.t %d1, %d1, 31, %d0, 0

# CHECK-INST: and.nor.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0x47,0x01,0xdf,0x13]
and.nor.t %d1, %d1, 31, %d0, 7

# CHECK-INST: and.nor.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0x47,0x01,0x5f,0x1c]
and.nor.t %d1, %d1, 31, %d0, 24

# CHECK-INST: and.nor.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0x47,0x01,0xdf,0x1f]
and.nor.t %d1, %d1, 31, %d0, 31

# CHECK-INST: and.nor.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0x47,0x11,0x5f,0x10]
and.nor.t %d1, %d1, 31, %d1, 0

# CHECK-INST: and.nor.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0x47,0x11,0xdf,0x13]
and.nor.t %d1, %d1, 31, %d1, 7

# CHECK-INST: and.nor.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0x47,0x11,0x5f,0x1c]
and.nor.t %d1, %d1, 31, %d1, 24

# CHECK-INST: and.nor.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0x47,0x11,0xdf,0x1f]
and.nor.t %d1, %d1, 31, %d1, 31

# CHECK-INST: and.nor.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x5f,0x10]
and.nor.t %d1, %d1, 31, %d14, 0

# CHECK-INST: and.nor.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xdf,0x13]
and.nor.t %d1, %d1, 31, %d14, 7

# CHECK-INST: and.nor.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x5f,0x1c]
and.nor.t %d1, %d1, 31, %d14, 24

# CHECK-INST: and.nor.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xdf,0x1f]
and.nor.t %d1, %d1, 31, %d14, 31

# CHECK-INST: and.nor.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x5f,0x10]
and.nor.t %d1, %d1, 31, %d15, 0

# CHECK-INST: and.nor.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xdf,0x13]
and.nor.t %d1, %d1, 31, %d15, 7

# CHECK-INST: and.nor.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x5f,0x1c]
and.nor.t %d1, %d1, 31, %d15, 24

# CHECK-INST: and.nor.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xdf,0x1f]
and.nor.t %d1, %d1, 31, %d15, 31

# CHECK-INST: and.nor.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x40,0x10]
and.nor.t %d1, %d14, 0, %d0, 0

# CHECK-INST: and.nor.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xc0,0x13]
and.nor.t %d1, %d14, 0, %d0, 7

# CHECK-INST: and.nor.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x40,0x1c]
and.nor.t %d1, %d14, 0, %d0, 24

# CHECK-INST: and.nor.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xc0,0x1f]
and.nor.t %d1, %d14, 0, %d0, 31

# CHECK-INST: and.nor.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x40,0x10]
and.nor.t %d1, %d14, 0, %d1, 0

# CHECK-INST: and.nor.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xc0,0x13]
and.nor.t %d1, %d14, 0, %d1, 7

# CHECK-INST: and.nor.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x40,0x1c]
and.nor.t %d1, %d14, 0, %d1, 24

# CHECK-INST: and.nor.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xc0,0x1f]
and.nor.t %d1, %d14, 0, %d1, 31

# CHECK-INST: and.nor.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0x47,0xee,0x40,0x10]
and.nor.t %d1, %d14, 0, %d14, 0

# CHECK-INST: and.nor.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0x47,0xee,0xc0,0x13]
and.nor.t %d1, %d14, 0, %d14, 7

# CHECK-INST: and.nor.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0x47,0xee,0x40,0x1c]
and.nor.t %d1, %d14, 0, %d14, 24

# CHECK-INST: and.nor.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0x47,0xee,0xc0,0x1f]
and.nor.t %d1, %d14, 0, %d14, 31

# CHECK-INST: and.nor.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x40,0x10]
and.nor.t %d1, %d14, 0, %d15, 0

# CHECK-INST: and.nor.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xc0,0x13]
and.nor.t %d1, %d14, 0, %d15, 7

# CHECK-INST: and.nor.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x40,0x1c]
and.nor.t %d1, %d14, 0, %d15, 24

# CHECK-INST: and.nor.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xc0,0x1f]
and.nor.t %d1, %d14, 0, %d15, 31

# CHECK-INST: and.nor.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x47,0x10]
and.nor.t %d1, %d14, 7, %d0, 0

# CHECK-INST: and.nor.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xc7,0x13]
and.nor.t %d1, %d14, 7, %d0, 7

# CHECK-INST: and.nor.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x47,0x1c]
and.nor.t %d1, %d14, 7, %d0, 24

# CHECK-INST: and.nor.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xc7,0x1f]
and.nor.t %d1, %d14, 7, %d0, 31

# CHECK-INST: and.nor.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x47,0x10]
and.nor.t %d1, %d14, 7, %d1, 0

# CHECK-INST: and.nor.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xc7,0x13]
and.nor.t %d1, %d14, 7, %d1, 7

# CHECK-INST: and.nor.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x47,0x1c]
and.nor.t %d1, %d14, 7, %d1, 24

# CHECK-INST: and.nor.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xc7,0x1f]
and.nor.t %d1, %d14, 7, %d1, 31

# CHECK-INST: and.nor.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0x47,0xee,0x47,0x10]
and.nor.t %d1, %d14, 7, %d14, 0

# CHECK-INST: and.nor.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0x47,0xee,0xc7,0x13]
and.nor.t %d1, %d14, 7, %d14, 7

# CHECK-INST: and.nor.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0x47,0xee,0x47,0x1c]
and.nor.t %d1, %d14, 7, %d14, 24

# CHECK-INST: and.nor.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0x47,0xee,0xc7,0x1f]
and.nor.t %d1, %d14, 7, %d14, 31

# CHECK-INST: and.nor.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x47,0x10]
and.nor.t %d1, %d14, 7, %d15, 0

# CHECK-INST: and.nor.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xc7,0x13]
and.nor.t %d1, %d14, 7, %d15, 7

# CHECK-INST: and.nor.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x47,0x1c]
and.nor.t %d1, %d14, 7, %d15, 24

# CHECK-INST: and.nor.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xc7,0x1f]
and.nor.t %d1, %d14, 7, %d15, 31

# CHECK-INST: and.nor.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x58,0x10]
and.nor.t %d1, %d14, 24, %d0, 0

# CHECK-INST: and.nor.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xd8,0x13]
and.nor.t %d1, %d14, 24, %d0, 7

# CHECK-INST: and.nor.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x58,0x1c]
and.nor.t %d1, %d14, 24, %d0, 24

# CHECK-INST: and.nor.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xd8,0x1f]
and.nor.t %d1, %d14, 24, %d0, 31

# CHECK-INST: and.nor.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x58,0x10]
and.nor.t %d1, %d14, 24, %d1, 0

# CHECK-INST: and.nor.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xd8,0x13]
and.nor.t %d1, %d14, 24, %d1, 7

# CHECK-INST: and.nor.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x58,0x1c]
and.nor.t %d1, %d14, 24, %d1, 24

# CHECK-INST: and.nor.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xd8,0x1f]
and.nor.t %d1, %d14, 24, %d1, 31

# CHECK-INST: and.nor.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0x47,0xee,0x58,0x10]
and.nor.t %d1, %d14, 24, %d14, 0

# CHECK-INST: and.nor.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0x47,0xee,0xd8,0x13]
and.nor.t %d1, %d14, 24, %d14, 7

# CHECK-INST: and.nor.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0x47,0xee,0x58,0x1c]
and.nor.t %d1, %d14, 24, %d14, 24

# CHECK-INST: and.nor.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0x47,0xee,0xd8,0x1f]
and.nor.t %d1, %d14, 24, %d14, 31

# CHECK-INST: and.nor.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x58,0x10]
and.nor.t %d1, %d14, 24, %d15, 0

# CHECK-INST: and.nor.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xd8,0x13]
and.nor.t %d1, %d14, 24, %d15, 7

# CHECK-INST: and.nor.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x58,0x1c]
and.nor.t %d1, %d14, 24, %d15, 24

# CHECK-INST: and.nor.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xd8,0x1f]
and.nor.t %d1, %d14, 24, %d15, 31

# CHECK-INST: and.nor.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x5f,0x10]
and.nor.t %d1, %d14, 31, %d0, 0

# CHECK-INST: and.nor.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xdf,0x13]
and.nor.t %d1, %d14, 31, %d0, 7

# CHECK-INST: and.nor.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x5f,0x1c]
and.nor.t %d1, %d14, 31, %d0, 24

# CHECK-INST: and.nor.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xdf,0x1f]
and.nor.t %d1, %d14, 31, %d0, 31

# CHECK-INST: and.nor.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x5f,0x10]
and.nor.t %d1, %d14, 31, %d1, 0

# CHECK-INST: and.nor.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xdf,0x13]
and.nor.t %d1, %d14, 31, %d1, 7

# CHECK-INST: and.nor.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x5f,0x1c]
and.nor.t %d1, %d14, 31, %d1, 24

# CHECK-INST: and.nor.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xdf,0x1f]
and.nor.t %d1, %d14, 31, %d1, 31

# CHECK-INST: and.nor.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0x47,0xee,0x5f,0x10]
and.nor.t %d1, %d14, 31, %d14, 0

# CHECK-INST: and.nor.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0x47,0xee,0xdf,0x13]
and.nor.t %d1, %d14, 31, %d14, 7

# CHECK-INST: and.nor.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0x47,0xee,0x5f,0x1c]
and.nor.t %d1, %d14, 31, %d14, 24

# CHECK-INST: and.nor.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0x47,0xee,0xdf,0x1f]
and.nor.t %d1, %d14, 31, %d14, 31

# CHECK-INST: and.nor.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x5f,0x10]
and.nor.t %d1, %d14, 31, %d15, 0

# CHECK-INST: and.nor.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xdf,0x13]
and.nor.t %d1, %d14, 31, %d15, 7

# CHECK-INST: and.nor.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x5f,0x1c]
and.nor.t %d1, %d14, 31, %d15, 24

# CHECK-INST: and.nor.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xdf,0x1f]
and.nor.t %d1, %d14, 31, %d15, 31

# CHECK-INST: and.nor.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x40,0x10]
and.nor.t %d1, %d15, 0, %d0, 0

# CHECK-INST: and.nor.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xc0,0x13]
and.nor.t %d1, %d15, 0, %d0, 7

# CHECK-INST: and.nor.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x40,0x1c]
and.nor.t %d1, %d15, 0, %d0, 24

# CHECK-INST: and.nor.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xc0,0x1f]
and.nor.t %d1, %d15, 0, %d0, 31

# CHECK-INST: and.nor.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x40,0x10]
and.nor.t %d1, %d15, 0, %d1, 0

# CHECK-INST: and.nor.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xc0,0x13]
and.nor.t %d1, %d15, 0, %d1, 7

# CHECK-INST: and.nor.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x40,0x1c]
and.nor.t %d1, %d15, 0, %d1, 24

# CHECK-INST: and.nor.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xc0,0x1f]
and.nor.t %d1, %d15, 0, %d1, 31

# CHECK-INST: and.nor.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0x47,0xef,0x40,0x10]
and.nor.t %d1, %d15, 0, %d14, 0

# CHECK-INST: and.nor.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0x47,0xef,0xc0,0x13]
and.nor.t %d1, %d15, 0, %d14, 7

# CHECK-INST: and.nor.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0x47,0xef,0x40,0x1c]
and.nor.t %d1, %d15, 0, %d14, 24

# CHECK-INST: and.nor.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0x47,0xef,0xc0,0x1f]
and.nor.t %d1, %d15, 0, %d14, 31

# CHECK-INST: and.nor.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0x47,0xff,0x40,0x10]
and.nor.t %d1, %d15, 0, %d15, 0

# CHECK-INST: and.nor.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0x47,0xff,0xc0,0x13]
and.nor.t %d1, %d15, 0, %d15, 7

# CHECK-INST: and.nor.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0x47,0xff,0x40,0x1c]
and.nor.t %d1, %d15, 0, %d15, 24

# CHECK-INST: and.nor.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0x47,0xff,0xc0,0x1f]
and.nor.t %d1, %d15, 0, %d15, 31

# CHECK-INST: and.nor.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x47,0x10]
and.nor.t %d1, %d15, 7, %d0, 0

# CHECK-INST: and.nor.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xc7,0x13]
and.nor.t %d1, %d15, 7, %d0, 7

# CHECK-INST: and.nor.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x47,0x1c]
and.nor.t %d1, %d15, 7, %d0, 24

# CHECK-INST: and.nor.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xc7,0x1f]
and.nor.t %d1, %d15, 7, %d0, 31

# CHECK-INST: and.nor.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x47,0x10]
and.nor.t %d1, %d15, 7, %d1, 0

# CHECK-INST: and.nor.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xc7,0x13]
and.nor.t %d1, %d15, 7, %d1, 7

# CHECK-INST: and.nor.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x47,0x1c]
and.nor.t %d1, %d15, 7, %d1, 24

# CHECK-INST: and.nor.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xc7,0x1f]
and.nor.t %d1, %d15, 7, %d1, 31

# CHECK-INST: and.nor.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0x47,0xef,0x47,0x10]
and.nor.t %d1, %d15, 7, %d14, 0

# CHECK-INST: and.nor.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0x47,0xef,0xc7,0x13]
and.nor.t %d1, %d15, 7, %d14, 7

# CHECK-INST: and.nor.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0x47,0xef,0x47,0x1c]
and.nor.t %d1, %d15, 7, %d14, 24

# CHECK-INST: and.nor.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0x47,0xef,0xc7,0x1f]
and.nor.t %d1, %d15, 7, %d14, 31

# CHECK-INST: and.nor.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0x47,0xff,0x47,0x10]
and.nor.t %d1, %d15, 7, %d15, 0

# CHECK-INST: and.nor.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0x47,0xff,0xc7,0x13]
and.nor.t %d1, %d15, 7, %d15, 7

# CHECK-INST: and.nor.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0x47,0xff,0x47,0x1c]
and.nor.t %d1, %d15, 7, %d15, 24

# CHECK-INST: and.nor.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0x47,0xff,0xc7,0x1f]
and.nor.t %d1, %d15, 7, %d15, 31

# CHECK-INST: and.nor.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x58,0x10]
and.nor.t %d1, %d15, 24, %d0, 0

# CHECK-INST: and.nor.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xd8,0x13]
and.nor.t %d1, %d15, 24, %d0, 7

# CHECK-INST: and.nor.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x58,0x1c]
and.nor.t %d1, %d15, 24, %d0, 24

# CHECK-INST: and.nor.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xd8,0x1f]
and.nor.t %d1, %d15, 24, %d0, 31

# CHECK-INST: and.nor.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x58,0x10]
and.nor.t %d1, %d15, 24, %d1, 0

# CHECK-INST: and.nor.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xd8,0x13]
and.nor.t %d1, %d15, 24, %d1, 7

# CHECK-INST: and.nor.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x58,0x1c]
and.nor.t %d1, %d15, 24, %d1, 24

# CHECK-INST: and.nor.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xd8,0x1f]
and.nor.t %d1, %d15, 24, %d1, 31

# CHECK-INST: and.nor.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0x47,0xef,0x58,0x10]
and.nor.t %d1, %d15, 24, %d14, 0

# CHECK-INST: and.nor.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0x47,0xef,0xd8,0x13]
and.nor.t %d1, %d15, 24, %d14, 7

# CHECK-INST: and.nor.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0x47,0xef,0x58,0x1c]
and.nor.t %d1, %d15, 24, %d14, 24

# CHECK-INST: and.nor.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0x47,0xef,0xd8,0x1f]
and.nor.t %d1, %d15, 24, %d14, 31

# CHECK-INST: and.nor.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0x47,0xff,0x58,0x10]
and.nor.t %d1, %d15, 24, %d15, 0

# CHECK-INST: and.nor.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0x47,0xff,0xd8,0x13]
and.nor.t %d1, %d15, 24, %d15, 7

# CHECK-INST: and.nor.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0x47,0xff,0x58,0x1c]
and.nor.t %d1, %d15, 24, %d15, 24

# CHECK-INST: and.nor.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0x47,0xff,0xd8,0x1f]
and.nor.t %d1, %d15, 24, %d15, 31

# CHECK-INST: and.nor.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x5f,0x10]
and.nor.t %d1, %d15, 31, %d0, 0

# CHECK-INST: and.nor.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xdf,0x13]
and.nor.t %d1, %d15, 31, %d0, 7

# CHECK-INST: and.nor.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x5f,0x1c]
and.nor.t %d1, %d15, 31, %d0, 24

# CHECK-INST: and.nor.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xdf,0x1f]
and.nor.t %d1, %d15, 31, %d0, 31

# CHECK-INST: and.nor.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x5f,0x10]
and.nor.t %d1, %d15, 31, %d1, 0

# CHECK-INST: and.nor.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xdf,0x13]
and.nor.t %d1, %d15, 31, %d1, 7

# CHECK-INST: and.nor.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x5f,0x1c]
and.nor.t %d1, %d15, 31, %d1, 24

# CHECK-INST: and.nor.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xdf,0x1f]
and.nor.t %d1, %d15, 31, %d1, 31

# CHECK-INST: and.nor.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0x47,0xef,0x5f,0x10]
and.nor.t %d1, %d15, 31, %d14, 0

# CHECK-INST: and.nor.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0x47,0xef,0xdf,0x13]
and.nor.t %d1, %d15, 31, %d14, 7

# CHECK-INST: and.nor.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0x47,0xef,0x5f,0x1c]
and.nor.t %d1, %d15, 31, %d14, 24

# CHECK-INST: and.nor.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0x47,0xef,0xdf,0x1f]
and.nor.t %d1, %d15, 31, %d14, 31

# CHECK-INST: and.nor.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0x47,0xff,0x5f,0x10]
and.nor.t %d1, %d15, 31, %d15, 0

# CHECK-INST: and.nor.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0x47,0xff,0xdf,0x13]
and.nor.t %d1, %d15, 31, %d15, 7

# CHECK-INST: and.nor.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0x47,0xff,0x5f,0x1c]
and.nor.t %d1, %d15, 31, %d15, 24

# CHECK-INST: and.nor.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0x47,0xff,0xdf,0x1f]
and.nor.t %d1, %d15, 31, %d15, 31

# CHECK-INST: and.nor.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0x47,0x00,0x40,0xe0]
and.nor.t %d14, %d0, 0, %d0, 0

# CHECK-INST: and.nor.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0x47,0x00,0xc0,0xe3]
and.nor.t %d14, %d0, 0, %d0, 7

# CHECK-INST: and.nor.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0x47,0x00,0x40,0xec]
and.nor.t %d14, %d0, 0, %d0, 24

# CHECK-INST: and.nor.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0x47,0x00,0xc0,0xef]
and.nor.t %d14, %d0, 0, %d0, 31

# CHECK-INST: and.nor.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0x47,0x10,0x40,0xe0]
and.nor.t %d14, %d0, 0, %d1, 0

# CHECK-INST: and.nor.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0x47,0x10,0xc0,0xe3]
and.nor.t %d14, %d0, 0, %d1, 7

# CHECK-INST: and.nor.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0x47,0x10,0x40,0xec]
and.nor.t %d14, %d0, 0, %d1, 24

# CHECK-INST: and.nor.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0x47,0x10,0xc0,0xef]
and.nor.t %d14, %d0, 0, %d1, 31

# CHECK-INST: and.nor.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x40,0xe0]
and.nor.t %d14, %d0, 0, %d14, 0

# CHECK-INST: and.nor.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xc0,0xe3]
and.nor.t %d14, %d0, 0, %d14, 7

# CHECK-INST: and.nor.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x40,0xec]
and.nor.t %d14, %d0, 0, %d14, 24

# CHECK-INST: and.nor.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xc0,0xef]
and.nor.t %d14, %d0, 0, %d14, 31

# CHECK-INST: and.nor.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x40,0xe0]
and.nor.t %d14, %d0, 0, %d15, 0

# CHECK-INST: and.nor.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xc0,0xe3]
and.nor.t %d14, %d0, 0, %d15, 7

# CHECK-INST: and.nor.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x40,0xec]
and.nor.t %d14, %d0, 0, %d15, 24

# CHECK-INST: and.nor.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xc0,0xef]
and.nor.t %d14, %d0, 0, %d15, 31

# CHECK-INST: and.nor.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0x47,0x00,0x47,0xe0]
and.nor.t %d14, %d0, 7, %d0, 0

# CHECK-INST: and.nor.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0x47,0x00,0xc7,0xe3]
and.nor.t %d14, %d0, 7, %d0, 7

# CHECK-INST: and.nor.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0x47,0x00,0x47,0xec]
and.nor.t %d14, %d0, 7, %d0, 24

# CHECK-INST: and.nor.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0x47,0x00,0xc7,0xef]
and.nor.t %d14, %d0, 7, %d0, 31

# CHECK-INST: and.nor.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0x47,0x10,0x47,0xe0]
and.nor.t %d14, %d0, 7, %d1, 0

# CHECK-INST: and.nor.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0x47,0x10,0xc7,0xe3]
and.nor.t %d14, %d0, 7, %d1, 7

# CHECK-INST: and.nor.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0x47,0x10,0x47,0xec]
and.nor.t %d14, %d0, 7, %d1, 24

# CHECK-INST: and.nor.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0x47,0x10,0xc7,0xef]
and.nor.t %d14, %d0, 7, %d1, 31

# CHECK-INST: and.nor.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x47,0xe0]
and.nor.t %d14, %d0, 7, %d14, 0

# CHECK-INST: and.nor.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xc7,0xe3]
and.nor.t %d14, %d0, 7, %d14, 7

# CHECK-INST: and.nor.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x47,0xec]
and.nor.t %d14, %d0, 7, %d14, 24

# CHECK-INST: and.nor.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xc7,0xef]
and.nor.t %d14, %d0, 7, %d14, 31

# CHECK-INST: and.nor.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x47,0xe0]
and.nor.t %d14, %d0, 7, %d15, 0

# CHECK-INST: and.nor.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xc7,0xe3]
and.nor.t %d14, %d0, 7, %d15, 7

# CHECK-INST: and.nor.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x47,0xec]
and.nor.t %d14, %d0, 7, %d15, 24

# CHECK-INST: and.nor.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xc7,0xef]
and.nor.t %d14, %d0, 7, %d15, 31

# CHECK-INST: and.nor.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0x47,0x00,0x58,0xe0]
and.nor.t %d14, %d0, 24, %d0, 0

# CHECK-INST: and.nor.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0x47,0x00,0xd8,0xe3]
and.nor.t %d14, %d0, 24, %d0, 7

# CHECK-INST: and.nor.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0x47,0x00,0x58,0xec]
and.nor.t %d14, %d0, 24, %d0, 24

# CHECK-INST: and.nor.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0x47,0x00,0xd8,0xef]
and.nor.t %d14, %d0, 24, %d0, 31

# CHECK-INST: and.nor.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0x47,0x10,0x58,0xe0]
and.nor.t %d14, %d0, 24, %d1, 0

# CHECK-INST: and.nor.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0x47,0x10,0xd8,0xe3]
and.nor.t %d14, %d0, 24, %d1, 7

# CHECK-INST: and.nor.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0x47,0x10,0x58,0xec]
and.nor.t %d14, %d0, 24, %d1, 24

# CHECK-INST: and.nor.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0x47,0x10,0xd8,0xef]
and.nor.t %d14, %d0, 24, %d1, 31

# CHECK-INST: and.nor.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x58,0xe0]
and.nor.t %d14, %d0, 24, %d14, 0

# CHECK-INST: and.nor.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xd8,0xe3]
and.nor.t %d14, %d0, 24, %d14, 7

# CHECK-INST: and.nor.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x58,0xec]
and.nor.t %d14, %d0, 24, %d14, 24

# CHECK-INST: and.nor.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xd8,0xef]
and.nor.t %d14, %d0, 24, %d14, 31

# CHECK-INST: and.nor.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x58,0xe0]
and.nor.t %d14, %d0, 24, %d15, 0

# CHECK-INST: and.nor.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xd8,0xe3]
and.nor.t %d14, %d0, 24, %d15, 7

# CHECK-INST: and.nor.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x58,0xec]
and.nor.t %d14, %d0, 24, %d15, 24

# CHECK-INST: and.nor.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xd8,0xef]
and.nor.t %d14, %d0, 24, %d15, 31

# CHECK-INST: and.nor.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0x47,0x00,0x5f,0xe0]
and.nor.t %d14, %d0, 31, %d0, 0

# CHECK-INST: and.nor.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0x47,0x00,0xdf,0xe3]
and.nor.t %d14, %d0, 31, %d0, 7

# CHECK-INST: and.nor.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0x47,0x00,0x5f,0xec]
and.nor.t %d14, %d0, 31, %d0, 24

# CHECK-INST: and.nor.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0x47,0x00,0xdf,0xef]
and.nor.t %d14, %d0, 31, %d0, 31

# CHECK-INST: and.nor.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0x47,0x10,0x5f,0xe0]
and.nor.t %d14, %d0, 31, %d1, 0

# CHECK-INST: and.nor.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0x47,0x10,0xdf,0xe3]
and.nor.t %d14, %d0, 31, %d1, 7

# CHECK-INST: and.nor.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0x47,0x10,0x5f,0xec]
and.nor.t %d14, %d0, 31, %d1, 24

# CHECK-INST: and.nor.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0x47,0x10,0xdf,0xef]
and.nor.t %d14, %d0, 31, %d1, 31

# CHECK-INST: and.nor.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x5f,0xe0]
and.nor.t %d14, %d0, 31, %d14, 0

# CHECK-INST: and.nor.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xdf,0xe3]
and.nor.t %d14, %d0, 31, %d14, 7

# CHECK-INST: and.nor.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x5f,0xec]
and.nor.t %d14, %d0, 31, %d14, 24

# CHECK-INST: and.nor.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xdf,0xef]
and.nor.t %d14, %d0, 31, %d14, 31

# CHECK-INST: and.nor.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x5f,0xe0]
and.nor.t %d14, %d0, 31, %d15, 0

# CHECK-INST: and.nor.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xdf,0xe3]
and.nor.t %d14, %d0, 31, %d15, 7

# CHECK-INST: and.nor.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x5f,0xec]
and.nor.t %d14, %d0, 31, %d15, 24

# CHECK-INST: and.nor.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xdf,0xef]
and.nor.t %d14, %d0, 31, %d15, 31

# CHECK-INST: and.nor.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0x47,0x01,0x40,0xe0]
and.nor.t %d14, %d1, 0, %d0, 0

# CHECK-INST: and.nor.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0x47,0x01,0xc0,0xe3]
and.nor.t %d14, %d1, 0, %d0, 7

# CHECK-INST: and.nor.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0x47,0x01,0x40,0xec]
and.nor.t %d14, %d1, 0, %d0, 24

# CHECK-INST: and.nor.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0x47,0x01,0xc0,0xef]
and.nor.t %d14, %d1, 0, %d0, 31

# CHECK-INST: and.nor.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0x47,0x11,0x40,0xe0]
and.nor.t %d14, %d1, 0, %d1, 0

# CHECK-INST: and.nor.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0x47,0x11,0xc0,0xe3]
and.nor.t %d14, %d1, 0, %d1, 7

# CHECK-INST: and.nor.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0x47,0x11,0x40,0xec]
and.nor.t %d14, %d1, 0, %d1, 24

# CHECK-INST: and.nor.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0x47,0x11,0xc0,0xef]
and.nor.t %d14, %d1, 0, %d1, 31

# CHECK-INST: and.nor.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x40,0xe0]
and.nor.t %d14, %d1, 0, %d14, 0

# CHECK-INST: and.nor.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xc0,0xe3]
and.nor.t %d14, %d1, 0, %d14, 7

# CHECK-INST: and.nor.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x40,0xec]
and.nor.t %d14, %d1, 0, %d14, 24

# CHECK-INST: and.nor.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xc0,0xef]
and.nor.t %d14, %d1, 0, %d14, 31

# CHECK-INST: and.nor.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x40,0xe0]
and.nor.t %d14, %d1, 0, %d15, 0

# CHECK-INST: and.nor.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xc0,0xe3]
and.nor.t %d14, %d1, 0, %d15, 7

# CHECK-INST: and.nor.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x40,0xec]
and.nor.t %d14, %d1, 0, %d15, 24

# CHECK-INST: and.nor.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xc0,0xef]
and.nor.t %d14, %d1, 0, %d15, 31

# CHECK-INST: and.nor.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0x47,0x01,0x47,0xe0]
and.nor.t %d14, %d1, 7, %d0, 0

# CHECK-INST: and.nor.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0x47,0x01,0xc7,0xe3]
and.nor.t %d14, %d1, 7, %d0, 7

# CHECK-INST: and.nor.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0x47,0x01,0x47,0xec]
and.nor.t %d14, %d1, 7, %d0, 24

# CHECK-INST: and.nor.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0x47,0x01,0xc7,0xef]
and.nor.t %d14, %d1, 7, %d0, 31

# CHECK-INST: and.nor.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0x47,0x11,0x47,0xe0]
and.nor.t %d14, %d1, 7, %d1, 0

# CHECK-INST: and.nor.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0x47,0x11,0xc7,0xe3]
and.nor.t %d14, %d1, 7, %d1, 7

# CHECK-INST: and.nor.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0x47,0x11,0x47,0xec]
and.nor.t %d14, %d1, 7, %d1, 24

# CHECK-INST: and.nor.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0x47,0x11,0xc7,0xef]
and.nor.t %d14, %d1, 7, %d1, 31

# CHECK-INST: and.nor.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x47,0xe0]
and.nor.t %d14, %d1, 7, %d14, 0

# CHECK-INST: and.nor.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xc7,0xe3]
and.nor.t %d14, %d1, 7, %d14, 7

# CHECK-INST: and.nor.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x47,0xec]
and.nor.t %d14, %d1, 7, %d14, 24

# CHECK-INST: and.nor.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xc7,0xef]
and.nor.t %d14, %d1, 7, %d14, 31

# CHECK-INST: and.nor.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x47,0xe0]
and.nor.t %d14, %d1, 7, %d15, 0

# CHECK-INST: and.nor.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xc7,0xe3]
and.nor.t %d14, %d1, 7, %d15, 7

# CHECK-INST: and.nor.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x47,0xec]
and.nor.t %d14, %d1, 7, %d15, 24

# CHECK-INST: and.nor.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xc7,0xef]
and.nor.t %d14, %d1, 7, %d15, 31

# CHECK-INST: and.nor.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0x47,0x01,0x58,0xe0]
and.nor.t %d14, %d1, 24, %d0, 0

# CHECK-INST: and.nor.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0x47,0x01,0xd8,0xe3]
and.nor.t %d14, %d1, 24, %d0, 7

# CHECK-INST: and.nor.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0x47,0x01,0x58,0xec]
and.nor.t %d14, %d1, 24, %d0, 24

# CHECK-INST: and.nor.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0x47,0x01,0xd8,0xef]
and.nor.t %d14, %d1, 24, %d0, 31

# CHECK-INST: and.nor.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0x47,0x11,0x58,0xe0]
and.nor.t %d14, %d1, 24, %d1, 0

# CHECK-INST: and.nor.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0x47,0x11,0xd8,0xe3]
and.nor.t %d14, %d1, 24, %d1, 7

# CHECK-INST: and.nor.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0x47,0x11,0x58,0xec]
and.nor.t %d14, %d1, 24, %d1, 24

# CHECK-INST: and.nor.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0x47,0x11,0xd8,0xef]
and.nor.t %d14, %d1, 24, %d1, 31

# CHECK-INST: and.nor.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x58,0xe0]
and.nor.t %d14, %d1, 24, %d14, 0

# CHECK-INST: and.nor.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xd8,0xe3]
and.nor.t %d14, %d1, 24, %d14, 7

# CHECK-INST: and.nor.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x58,0xec]
and.nor.t %d14, %d1, 24, %d14, 24

# CHECK-INST: and.nor.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xd8,0xef]
and.nor.t %d14, %d1, 24, %d14, 31

# CHECK-INST: and.nor.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x58,0xe0]
and.nor.t %d14, %d1, 24, %d15, 0

# CHECK-INST: and.nor.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xd8,0xe3]
and.nor.t %d14, %d1, 24, %d15, 7

# CHECK-INST: and.nor.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x58,0xec]
and.nor.t %d14, %d1, 24, %d15, 24

# CHECK-INST: and.nor.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xd8,0xef]
and.nor.t %d14, %d1, 24, %d15, 31

# CHECK-INST: and.nor.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0x47,0x01,0x5f,0xe0]
and.nor.t %d14, %d1, 31, %d0, 0

# CHECK-INST: and.nor.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0x47,0x01,0xdf,0xe3]
and.nor.t %d14, %d1, 31, %d0, 7

# CHECK-INST: and.nor.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0x47,0x01,0x5f,0xec]
and.nor.t %d14, %d1, 31, %d0, 24

# CHECK-INST: and.nor.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0x47,0x01,0xdf,0xef]
and.nor.t %d14, %d1, 31, %d0, 31

# CHECK-INST: and.nor.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0x47,0x11,0x5f,0xe0]
and.nor.t %d14, %d1, 31, %d1, 0

# CHECK-INST: and.nor.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0x47,0x11,0xdf,0xe3]
and.nor.t %d14, %d1, 31, %d1, 7

# CHECK-INST: and.nor.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0x47,0x11,0x5f,0xec]
and.nor.t %d14, %d1, 31, %d1, 24

# CHECK-INST: and.nor.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0x47,0x11,0xdf,0xef]
and.nor.t %d14, %d1, 31, %d1, 31

# CHECK-INST: and.nor.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x5f,0xe0]
and.nor.t %d14, %d1, 31, %d14, 0

# CHECK-INST: and.nor.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xdf,0xe3]
and.nor.t %d14, %d1, 31, %d14, 7

# CHECK-INST: and.nor.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x5f,0xec]
and.nor.t %d14, %d1, 31, %d14, 24

# CHECK-INST: and.nor.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xdf,0xef]
and.nor.t %d14, %d1, 31, %d14, 31

# CHECK-INST: and.nor.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x5f,0xe0]
and.nor.t %d14, %d1, 31, %d15, 0

# CHECK-INST: and.nor.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xdf,0xe3]
and.nor.t %d14, %d1, 31, %d15, 7

# CHECK-INST: and.nor.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x5f,0xec]
and.nor.t %d14, %d1, 31, %d15, 24

# CHECK-INST: and.nor.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xdf,0xef]
and.nor.t %d14, %d1, 31, %d15, 31

# CHECK-INST: and.nor.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x40,0xe0]
and.nor.t %d14, %d14, 0, %d0, 0

# CHECK-INST: and.nor.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xc0,0xe3]
and.nor.t %d14, %d14, 0, %d0, 7

# CHECK-INST: and.nor.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x40,0xec]
and.nor.t %d14, %d14, 0, %d0, 24

# CHECK-INST: and.nor.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xc0,0xef]
and.nor.t %d14, %d14, 0, %d0, 31

# CHECK-INST: and.nor.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x40,0xe0]
and.nor.t %d14, %d14, 0, %d1, 0

# CHECK-INST: and.nor.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xc0,0xe3]
and.nor.t %d14, %d14, 0, %d1, 7

# CHECK-INST: and.nor.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x40,0xec]
and.nor.t %d14, %d14, 0, %d1, 24

# CHECK-INST: and.nor.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xc0,0xef]
and.nor.t %d14, %d14, 0, %d1, 31

# CHECK-INST: and.nor.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0x47,0xee,0x40,0xe0]
and.nor.t %d14, %d14, 0, %d14, 0

# CHECK-INST: and.nor.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0x47,0xee,0xc0,0xe3]
and.nor.t %d14, %d14, 0, %d14, 7

# CHECK-INST: and.nor.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0x47,0xee,0x40,0xec]
and.nor.t %d14, %d14, 0, %d14, 24

# CHECK-INST: and.nor.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0x47,0xee,0xc0,0xef]
and.nor.t %d14, %d14, 0, %d14, 31

# CHECK-INST: and.nor.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x40,0xe0]
and.nor.t %d14, %d14, 0, %d15, 0

# CHECK-INST: and.nor.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xc0,0xe3]
and.nor.t %d14, %d14, 0, %d15, 7

# CHECK-INST: and.nor.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x40,0xec]
and.nor.t %d14, %d14, 0, %d15, 24

# CHECK-INST: and.nor.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xc0,0xef]
and.nor.t %d14, %d14, 0, %d15, 31

# CHECK-INST: and.nor.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x47,0xe0]
and.nor.t %d14, %d14, 7, %d0, 0

# CHECK-INST: and.nor.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xc7,0xe3]
and.nor.t %d14, %d14, 7, %d0, 7

# CHECK-INST: and.nor.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x47,0xec]
and.nor.t %d14, %d14, 7, %d0, 24

# CHECK-INST: and.nor.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xc7,0xef]
and.nor.t %d14, %d14, 7, %d0, 31

# CHECK-INST: and.nor.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x47,0xe0]
and.nor.t %d14, %d14, 7, %d1, 0

# CHECK-INST: and.nor.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xc7,0xe3]
and.nor.t %d14, %d14, 7, %d1, 7

# CHECK-INST: and.nor.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x47,0xec]
and.nor.t %d14, %d14, 7, %d1, 24

# CHECK-INST: and.nor.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xc7,0xef]
and.nor.t %d14, %d14, 7, %d1, 31

# CHECK-INST: and.nor.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0x47,0xee,0x47,0xe0]
and.nor.t %d14, %d14, 7, %d14, 0

# CHECK-INST: and.nor.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0x47,0xee,0xc7,0xe3]
and.nor.t %d14, %d14, 7, %d14, 7

# CHECK-INST: and.nor.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0x47,0xee,0x47,0xec]
and.nor.t %d14, %d14, 7, %d14, 24

# CHECK-INST: and.nor.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0x47,0xee,0xc7,0xef]
and.nor.t %d14, %d14, 7, %d14, 31

# CHECK-INST: and.nor.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x47,0xe0]
and.nor.t %d14, %d14, 7, %d15, 0

# CHECK-INST: and.nor.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xc7,0xe3]
and.nor.t %d14, %d14, 7, %d15, 7

# CHECK-INST: and.nor.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x47,0xec]
and.nor.t %d14, %d14, 7, %d15, 24

# CHECK-INST: and.nor.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xc7,0xef]
and.nor.t %d14, %d14, 7, %d15, 31

# CHECK-INST: and.nor.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x58,0xe0]
and.nor.t %d14, %d14, 24, %d0, 0

# CHECK-INST: and.nor.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xd8,0xe3]
and.nor.t %d14, %d14, 24, %d0, 7

# CHECK-INST: and.nor.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x58,0xec]
and.nor.t %d14, %d14, 24, %d0, 24

# CHECK-INST: and.nor.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xd8,0xef]
and.nor.t %d14, %d14, 24, %d0, 31

# CHECK-INST: and.nor.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x58,0xe0]
and.nor.t %d14, %d14, 24, %d1, 0

# CHECK-INST: and.nor.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xd8,0xe3]
and.nor.t %d14, %d14, 24, %d1, 7

# CHECK-INST: and.nor.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x58,0xec]
and.nor.t %d14, %d14, 24, %d1, 24

# CHECK-INST: and.nor.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xd8,0xef]
and.nor.t %d14, %d14, 24, %d1, 31

# CHECK-INST: and.nor.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0x47,0xee,0x58,0xe0]
and.nor.t %d14, %d14, 24, %d14, 0

# CHECK-INST: and.nor.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0x47,0xee,0xd8,0xe3]
and.nor.t %d14, %d14, 24, %d14, 7

# CHECK-INST: and.nor.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0x47,0xee,0x58,0xec]
and.nor.t %d14, %d14, 24, %d14, 24

# CHECK-INST: and.nor.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0x47,0xee,0xd8,0xef]
and.nor.t %d14, %d14, 24, %d14, 31

# CHECK-INST: and.nor.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x58,0xe0]
and.nor.t %d14, %d14, 24, %d15, 0

# CHECK-INST: and.nor.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xd8,0xe3]
and.nor.t %d14, %d14, 24, %d15, 7

# CHECK-INST: and.nor.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x58,0xec]
and.nor.t %d14, %d14, 24, %d15, 24

# CHECK-INST: and.nor.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xd8,0xef]
and.nor.t %d14, %d14, 24, %d15, 31

# CHECK-INST: and.nor.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x5f,0xe0]
and.nor.t %d14, %d14, 31, %d0, 0

# CHECK-INST: and.nor.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xdf,0xe3]
and.nor.t %d14, %d14, 31, %d0, 7

# CHECK-INST: and.nor.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x5f,0xec]
and.nor.t %d14, %d14, 31, %d0, 24

# CHECK-INST: and.nor.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xdf,0xef]
and.nor.t %d14, %d14, 31, %d0, 31

# CHECK-INST: and.nor.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x5f,0xe0]
and.nor.t %d14, %d14, 31, %d1, 0

# CHECK-INST: and.nor.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xdf,0xe3]
and.nor.t %d14, %d14, 31, %d1, 7

# CHECK-INST: and.nor.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x5f,0xec]
and.nor.t %d14, %d14, 31, %d1, 24

# CHECK-INST: and.nor.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xdf,0xef]
and.nor.t %d14, %d14, 31, %d1, 31

# CHECK-INST: and.nor.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0x47,0xee,0x5f,0xe0]
and.nor.t %d14, %d14, 31, %d14, 0

# CHECK-INST: and.nor.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0x47,0xee,0xdf,0xe3]
and.nor.t %d14, %d14, 31, %d14, 7

# CHECK-INST: and.nor.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0x47,0xee,0x5f,0xec]
and.nor.t %d14, %d14, 31, %d14, 24

# CHECK-INST: and.nor.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0x47,0xee,0xdf,0xef]
and.nor.t %d14, %d14, 31, %d14, 31

# CHECK-INST: and.nor.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x5f,0xe0]
and.nor.t %d14, %d14, 31, %d15, 0

# CHECK-INST: and.nor.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xdf,0xe3]
and.nor.t %d14, %d14, 31, %d15, 7

# CHECK-INST: and.nor.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x5f,0xec]
and.nor.t %d14, %d14, 31, %d15, 24

# CHECK-INST: and.nor.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xdf,0xef]
and.nor.t %d14, %d14, 31, %d15, 31

# CHECK-INST: and.nor.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x40,0xe0]
and.nor.t %d14, %d15, 0, %d0, 0

# CHECK-INST: and.nor.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xc0,0xe3]
and.nor.t %d14, %d15, 0, %d0, 7

# CHECK-INST: and.nor.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x40,0xec]
and.nor.t %d14, %d15, 0, %d0, 24

# CHECK-INST: and.nor.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xc0,0xef]
and.nor.t %d14, %d15, 0, %d0, 31

# CHECK-INST: and.nor.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x40,0xe0]
and.nor.t %d14, %d15, 0, %d1, 0

# CHECK-INST: and.nor.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xc0,0xe3]
and.nor.t %d14, %d15, 0, %d1, 7

# CHECK-INST: and.nor.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x40,0xec]
and.nor.t %d14, %d15, 0, %d1, 24

# CHECK-INST: and.nor.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xc0,0xef]
and.nor.t %d14, %d15, 0, %d1, 31

# CHECK-INST: and.nor.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0x47,0xef,0x40,0xe0]
and.nor.t %d14, %d15, 0, %d14, 0

# CHECK-INST: and.nor.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0x47,0xef,0xc0,0xe3]
and.nor.t %d14, %d15, 0, %d14, 7

# CHECK-INST: and.nor.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0x47,0xef,0x40,0xec]
and.nor.t %d14, %d15, 0, %d14, 24

# CHECK-INST: and.nor.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0x47,0xef,0xc0,0xef]
and.nor.t %d14, %d15, 0, %d14, 31

# CHECK-INST: and.nor.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0x47,0xff,0x40,0xe0]
and.nor.t %d14, %d15, 0, %d15, 0

# CHECK-INST: and.nor.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0x47,0xff,0xc0,0xe3]
and.nor.t %d14, %d15, 0, %d15, 7

# CHECK-INST: and.nor.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0x47,0xff,0x40,0xec]
and.nor.t %d14, %d15, 0, %d15, 24

# CHECK-INST: and.nor.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0x47,0xff,0xc0,0xef]
and.nor.t %d14, %d15, 0, %d15, 31

# CHECK-INST: and.nor.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x47,0xe0]
and.nor.t %d14, %d15, 7, %d0, 0

# CHECK-INST: and.nor.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xc7,0xe3]
and.nor.t %d14, %d15, 7, %d0, 7

# CHECK-INST: and.nor.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x47,0xec]
and.nor.t %d14, %d15, 7, %d0, 24

# CHECK-INST: and.nor.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xc7,0xef]
and.nor.t %d14, %d15, 7, %d0, 31

# CHECK-INST: and.nor.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x47,0xe0]
and.nor.t %d14, %d15, 7, %d1, 0

# CHECK-INST: and.nor.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xc7,0xe3]
and.nor.t %d14, %d15, 7, %d1, 7

# CHECK-INST: and.nor.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x47,0xec]
and.nor.t %d14, %d15, 7, %d1, 24

# CHECK-INST: and.nor.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xc7,0xef]
and.nor.t %d14, %d15, 7, %d1, 31

# CHECK-INST: and.nor.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0x47,0xef,0x47,0xe0]
and.nor.t %d14, %d15, 7, %d14, 0

# CHECK-INST: and.nor.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0x47,0xef,0xc7,0xe3]
and.nor.t %d14, %d15, 7, %d14, 7

# CHECK-INST: and.nor.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0x47,0xef,0x47,0xec]
and.nor.t %d14, %d15, 7, %d14, 24

# CHECK-INST: and.nor.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0x47,0xef,0xc7,0xef]
and.nor.t %d14, %d15, 7, %d14, 31

# CHECK-INST: and.nor.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0x47,0xff,0x47,0xe0]
and.nor.t %d14, %d15, 7, %d15, 0

# CHECK-INST: and.nor.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0x47,0xff,0xc7,0xe3]
and.nor.t %d14, %d15, 7, %d15, 7

# CHECK-INST: and.nor.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0x47,0xff,0x47,0xec]
and.nor.t %d14, %d15, 7, %d15, 24

# CHECK-INST: and.nor.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0x47,0xff,0xc7,0xef]
and.nor.t %d14, %d15, 7, %d15, 31

# CHECK-INST: and.nor.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x58,0xe0]
and.nor.t %d14, %d15, 24, %d0, 0

# CHECK-INST: and.nor.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xd8,0xe3]
and.nor.t %d14, %d15, 24, %d0, 7

# CHECK-INST: and.nor.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x58,0xec]
and.nor.t %d14, %d15, 24, %d0, 24

# CHECK-INST: and.nor.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xd8,0xef]
and.nor.t %d14, %d15, 24, %d0, 31

# CHECK-INST: and.nor.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x58,0xe0]
and.nor.t %d14, %d15, 24, %d1, 0

# CHECK-INST: and.nor.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xd8,0xe3]
and.nor.t %d14, %d15, 24, %d1, 7

# CHECK-INST: and.nor.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x58,0xec]
and.nor.t %d14, %d15, 24, %d1, 24

# CHECK-INST: and.nor.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xd8,0xef]
and.nor.t %d14, %d15, 24, %d1, 31

# CHECK-INST: and.nor.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0x47,0xef,0x58,0xe0]
and.nor.t %d14, %d15, 24, %d14, 0

# CHECK-INST: and.nor.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0x47,0xef,0xd8,0xe3]
and.nor.t %d14, %d15, 24, %d14, 7

# CHECK-INST: and.nor.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0x47,0xef,0x58,0xec]
and.nor.t %d14, %d15, 24, %d14, 24

# CHECK-INST: and.nor.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0x47,0xef,0xd8,0xef]
and.nor.t %d14, %d15, 24, %d14, 31

# CHECK-INST: and.nor.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0x47,0xff,0x58,0xe0]
and.nor.t %d14, %d15, 24, %d15, 0

# CHECK-INST: and.nor.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0x47,0xff,0xd8,0xe3]
and.nor.t %d14, %d15, 24, %d15, 7

# CHECK-INST: and.nor.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0x47,0xff,0x58,0xec]
and.nor.t %d14, %d15, 24, %d15, 24

# CHECK-INST: and.nor.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0x47,0xff,0xd8,0xef]
and.nor.t %d14, %d15, 24, %d15, 31

# CHECK-INST: and.nor.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x5f,0xe0]
and.nor.t %d14, %d15, 31, %d0, 0

# CHECK-INST: and.nor.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xdf,0xe3]
and.nor.t %d14, %d15, 31, %d0, 7

# CHECK-INST: and.nor.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x5f,0xec]
and.nor.t %d14, %d15, 31, %d0, 24

# CHECK-INST: and.nor.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xdf,0xef]
and.nor.t %d14, %d15, 31, %d0, 31

# CHECK-INST: and.nor.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x5f,0xe0]
and.nor.t %d14, %d15, 31, %d1, 0

# CHECK-INST: and.nor.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xdf,0xe3]
and.nor.t %d14, %d15, 31, %d1, 7

# CHECK-INST: and.nor.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x5f,0xec]
and.nor.t %d14, %d15, 31, %d1, 24

# CHECK-INST: and.nor.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xdf,0xef]
and.nor.t %d14, %d15, 31, %d1, 31

# CHECK-INST: and.nor.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0x47,0xef,0x5f,0xe0]
and.nor.t %d14, %d15, 31, %d14, 0

# CHECK-INST: and.nor.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0x47,0xef,0xdf,0xe3]
and.nor.t %d14, %d15, 31, %d14, 7

# CHECK-INST: and.nor.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0x47,0xef,0x5f,0xec]
and.nor.t %d14, %d15, 31, %d14, 24

# CHECK-INST: and.nor.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0x47,0xef,0xdf,0xef]
and.nor.t %d14, %d15, 31, %d14, 31

# CHECK-INST: and.nor.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0x47,0xff,0x5f,0xe0]
and.nor.t %d14, %d15, 31, %d15, 0

# CHECK-INST: and.nor.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0x47,0xff,0xdf,0xe3]
and.nor.t %d14, %d15, 31, %d15, 7

# CHECK-INST: and.nor.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0x47,0xff,0x5f,0xec]
and.nor.t %d14, %d15, 31, %d15, 24

# CHECK-INST: and.nor.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0x47,0xff,0xdf,0xef]
and.nor.t %d14, %d15, 31, %d15, 31

# CHECK-INST: and.nor.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0x47,0x00,0x40,0xf0]
and.nor.t %d15, %d0, 0, %d0, 0

# CHECK-INST: and.nor.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0x47,0x00,0xc0,0xf3]
and.nor.t %d15, %d0, 0, %d0, 7

# CHECK-INST: and.nor.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0x47,0x00,0x40,0xfc]
and.nor.t %d15, %d0, 0, %d0, 24

# CHECK-INST: and.nor.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0x47,0x00,0xc0,0xff]
and.nor.t %d15, %d0, 0, %d0, 31

# CHECK-INST: and.nor.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0x47,0x10,0x40,0xf0]
and.nor.t %d15, %d0, 0, %d1, 0

# CHECK-INST: and.nor.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0x47,0x10,0xc0,0xf3]
and.nor.t %d15, %d0, 0, %d1, 7

# CHECK-INST: and.nor.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0x47,0x10,0x40,0xfc]
and.nor.t %d15, %d0, 0, %d1, 24

# CHECK-INST: and.nor.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0x47,0x10,0xc0,0xff]
and.nor.t %d15, %d0, 0, %d1, 31

# CHECK-INST: and.nor.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x40,0xf0]
and.nor.t %d15, %d0, 0, %d14, 0

# CHECK-INST: and.nor.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xc0,0xf3]
and.nor.t %d15, %d0, 0, %d14, 7

# CHECK-INST: and.nor.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x40,0xfc]
and.nor.t %d15, %d0, 0, %d14, 24

# CHECK-INST: and.nor.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xc0,0xff]
and.nor.t %d15, %d0, 0, %d14, 31

# CHECK-INST: and.nor.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x40,0xf0]
and.nor.t %d15, %d0, 0, %d15, 0

# CHECK-INST: and.nor.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xc0,0xf3]
and.nor.t %d15, %d0, 0, %d15, 7

# CHECK-INST: and.nor.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x40,0xfc]
and.nor.t %d15, %d0, 0, %d15, 24

# CHECK-INST: and.nor.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xc0,0xff]
and.nor.t %d15, %d0, 0, %d15, 31

# CHECK-INST: and.nor.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0x47,0x00,0x47,0xf0]
and.nor.t %d15, %d0, 7, %d0, 0

# CHECK-INST: and.nor.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0x47,0x00,0xc7,0xf3]
and.nor.t %d15, %d0, 7, %d0, 7

# CHECK-INST: and.nor.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0x47,0x00,0x47,0xfc]
and.nor.t %d15, %d0, 7, %d0, 24

# CHECK-INST: and.nor.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0x47,0x00,0xc7,0xff]
and.nor.t %d15, %d0, 7, %d0, 31

# CHECK-INST: and.nor.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0x47,0x10,0x47,0xf0]
and.nor.t %d15, %d0, 7, %d1, 0

# CHECK-INST: and.nor.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0x47,0x10,0xc7,0xf3]
and.nor.t %d15, %d0, 7, %d1, 7

# CHECK-INST: and.nor.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0x47,0x10,0x47,0xfc]
and.nor.t %d15, %d0, 7, %d1, 24

# CHECK-INST: and.nor.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0x47,0x10,0xc7,0xff]
and.nor.t %d15, %d0, 7, %d1, 31

# CHECK-INST: and.nor.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x47,0xf0]
and.nor.t %d15, %d0, 7, %d14, 0

# CHECK-INST: and.nor.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xc7,0xf3]
and.nor.t %d15, %d0, 7, %d14, 7

# CHECK-INST: and.nor.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x47,0xfc]
and.nor.t %d15, %d0, 7, %d14, 24

# CHECK-INST: and.nor.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xc7,0xff]
and.nor.t %d15, %d0, 7, %d14, 31

# CHECK-INST: and.nor.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x47,0xf0]
and.nor.t %d15, %d0, 7, %d15, 0

# CHECK-INST: and.nor.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xc7,0xf3]
and.nor.t %d15, %d0, 7, %d15, 7

# CHECK-INST: and.nor.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x47,0xfc]
and.nor.t %d15, %d0, 7, %d15, 24

# CHECK-INST: and.nor.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xc7,0xff]
and.nor.t %d15, %d0, 7, %d15, 31

# CHECK-INST: and.nor.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0x47,0x00,0x58,0xf0]
and.nor.t %d15, %d0, 24, %d0, 0

# CHECK-INST: and.nor.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0x47,0x00,0xd8,0xf3]
and.nor.t %d15, %d0, 24, %d0, 7

# CHECK-INST: and.nor.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0x47,0x00,0x58,0xfc]
and.nor.t %d15, %d0, 24, %d0, 24

# CHECK-INST: and.nor.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0x47,0x00,0xd8,0xff]
and.nor.t %d15, %d0, 24, %d0, 31

# CHECK-INST: and.nor.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0x47,0x10,0x58,0xf0]
and.nor.t %d15, %d0, 24, %d1, 0

# CHECK-INST: and.nor.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0x47,0x10,0xd8,0xf3]
and.nor.t %d15, %d0, 24, %d1, 7

# CHECK-INST: and.nor.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0x47,0x10,0x58,0xfc]
and.nor.t %d15, %d0, 24, %d1, 24

# CHECK-INST: and.nor.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0x47,0x10,0xd8,0xff]
and.nor.t %d15, %d0, 24, %d1, 31

# CHECK-INST: and.nor.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x58,0xf0]
and.nor.t %d15, %d0, 24, %d14, 0

# CHECK-INST: and.nor.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xd8,0xf3]
and.nor.t %d15, %d0, 24, %d14, 7

# CHECK-INST: and.nor.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x58,0xfc]
and.nor.t %d15, %d0, 24, %d14, 24

# CHECK-INST: and.nor.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xd8,0xff]
and.nor.t %d15, %d0, 24, %d14, 31

# CHECK-INST: and.nor.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x58,0xf0]
and.nor.t %d15, %d0, 24, %d15, 0

# CHECK-INST: and.nor.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xd8,0xf3]
and.nor.t %d15, %d0, 24, %d15, 7

# CHECK-INST: and.nor.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x58,0xfc]
and.nor.t %d15, %d0, 24, %d15, 24

# CHECK-INST: and.nor.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xd8,0xff]
and.nor.t %d15, %d0, 24, %d15, 31

# CHECK-INST: and.nor.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0x47,0x00,0x5f,0xf0]
and.nor.t %d15, %d0, 31, %d0, 0

# CHECK-INST: and.nor.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0x47,0x00,0xdf,0xf3]
and.nor.t %d15, %d0, 31, %d0, 7

# CHECK-INST: and.nor.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0x47,0x00,0x5f,0xfc]
and.nor.t %d15, %d0, 31, %d0, 24

# CHECK-INST: and.nor.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0x47,0x00,0xdf,0xff]
and.nor.t %d15, %d0, 31, %d0, 31

# CHECK-INST: and.nor.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0x47,0x10,0x5f,0xf0]
and.nor.t %d15, %d0, 31, %d1, 0

# CHECK-INST: and.nor.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0x47,0x10,0xdf,0xf3]
and.nor.t %d15, %d0, 31, %d1, 7

# CHECK-INST: and.nor.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0x47,0x10,0x5f,0xfc]
and.nor.t %d15, %d0, 31, %d1, 24

# CHECK-INST: and.nor.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0x47,0x10,0xdf,0xff]
and.nor.t %d15, %d0, 31, %d1, 31

# CHECK-INST: and.nor.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x5f,0xf0]
and.nor.t %d15, %d0, 31, %d14, 0

# CHECK-INST: and.nor.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xdf,0xf3]
and.nor.t %d15, %d0, 31, %d14, 7

# CHECK-INST: and.nor.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x5f,0xfc]
and.nor.t %d15, %d0, 31, %d14, 24

# CHECK-INST: and.nor.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xdf,0xff]
and.nor.t %d15, %d0, 31, %d14, 31

# CHECK-INST: and.nor.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x5f,0xf0]
and.nor.t %d15, %d0, 31, %d15, 0

# CHECK-INST: and.nor.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xdf,0xf3]
and.nor.t %d15, %d0, 31, %d15, 7

# CHECK-INST: and.nor.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x5f,0xfc]
and.nor.t %d15, %d0, 31, %d15, 24

# CHECK-INST: and.nor.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xdf,0xff]
and.nor.t %d15, %d0, 31, %d15, 31

# CHECK-INST: and.nor.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0x47,0x01,0x40,0xf0]
and.nor.t %d15, %d1, 0, %d0, 0

# CHECK-INST: and.nor.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0x47,0x01,0xc0,0xf3]
and.nor.t %d15, %d1, 0, %d0, 7

# CHECK-INST: and.nor.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0x47,0x01,0x40,0xfc]
and.nor.t %d15, %d1, 0, %d0, 24

# CHECK-INST: and.nor.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0x47,0x01,0xc0,0xff]
and.nor.t %d15, %d1, 0, %d0, 31

# CHECK-INST: and.nor.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0x47,0x11,0x40,0xf0]
and.nor.t %d15, %d1, 0, %d1, 0

# CHECK-INST: and.nor.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0x47,0x11,0xc0,0xf3]
and.nor.t %d15, %d1, 0, %d1, 7

# CHECK-INST: and.nor.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0x47,0x11,0x40,0xfc]
and.nor.t %d15, %d1, 0, %d1, 24

# CHECK-INST: and.nor.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0x47,0x11,0xc0,0xff]
and.nor.t %d15, %d1, 0, %d1, 31

# CHECK-INST: and.nor.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x40,0xf0]
and.nor.t %d15, %d1, 0, %d14, 0

# CHECK-INST: and.nor.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xc0,0xf3]
and.nor.t %d15, %d1, 0, %d14, 7

# CHECK-INST: and.nor.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x40,0xfc]
and.nor.t %d15, %d1, 0, %d14, 24

# CHECK-INST: and.nor.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xc0,0xff]
and.nor.t %d15, %d1, 0, %d14, 31

# CHECK-INST: and.nor.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x40,0xf0]
and.nor.t %d15, %d1, 0, %d15, 0

# CHECK-INST: and.nor.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xc0,0xf3]
and.nor.t %d15, %d1, 0, %d15, 7

# CHECK-INST: and.nor.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x40,0xfc]
and.nor.t %d15, %d1, 0, %d15, 24

# CHECK-INST: and.nor.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xc0,0xff]
and.nor.t %d15, %d1, 0, %d15, 31

# CHECK-INST: and.nor.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0x47,0x01,0x47,0xf0]
and.nor.t %d15, %d1, 7, %d0, 0

# CHECK-INST: and.nor.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0x47,0x01,0xc7,0xf3]
and.nor.t %d15, %d1, 7, %d0, 7

# CHECK-INST: and.nor.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0x47,0x01,0x47,0xfc]
and.nor.t %d15, %d1, 7, %d0, 24

# CHECK-INST: and.nor.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0x47,0x01,0xc7,0xff]
and.nor.t %d15, %d1, 7, %d0, 31

# CHECK-INST: and.nor.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0x47,0x11,0x47,0xf0]
and.nor.t %d15, %d1, 7, %d1, 0

# CHECK-INST: and.nor.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0x47,0x11,0xc7,0xf3]
and.nor.t %d15, %d1, 7, %d1, 7

# CHECK-INST: and.nor.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0x47,0x11,0x47,0xfc]
and.nor.t %d15, %d1, 7, %d1, 24

# CHECK-INST: and.nor.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0x47,0x11,0xc7,0xff]
and.nor.t %d15, %d1, 7, %d1, 31

# CHECK-INST: and.nor.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x47,0xf0]
and.nor.t %d15, %d1, 7, %d14, 0

# CHECK-INST: and.nor.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xc7,0xf3]
and.nor.t %d15, %d1, 7, %d14, 7

# CHECK-INST: and.nor.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x47,0xfc]
and.nor.t %d15, %d1, 7, %d14, 24

# CHECK-INST: and.nor.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xc7,0xff]
and.nor.t %d15, %d1, 7, %d14, 31

# CHECK-INST: and.nor.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x47,0xf0]
and.nor.t %d15, %d1, 7, %d15, 0

# CHECK-INST: and.nor.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xc7,0xf3]
and.nor.t %d15, %d1, 7, %d15, 7

# CHECK-INST: and.nor.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x47,0xfc]
and.nor.t %d15, %d1, 7, %d15, 24

# CHECK-INST: and.nor.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xc7,0xff]
and.nor.t %d15, %d1, 7, %d15, 31

# CHECK-INST: and.nor.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0x47,0x01,0x58,0xf0]
and.nor.t %d15, %d1, 24, %d0, 0

# CHECK-INST: and.nor.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0x47,0x01,0xd8,0xf3]
and.nor.t %d15, %d1, 24, %d0, 7

# CHECK-INST: and.nor.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0x47,0x01,0x58,0xfc]
and.nor.t %d15, %d1, 24, %d0, 24

# CHECK-INST: and.nor.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0x47,0x01,0xd8,0xff]
and.nor.t %d15, %d1, 24, %d0, 31

# CHECK-INST: and.nor.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0x47,0x11,0x58,0xf0]
and.nor.t %d15, %d1, 24, %d1, 0

# CHECK-INST: and.nor.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0x47,0x11,0xd8,0xf3]
and.nor.t %d15, %d1, 24, %d1, 7

# CHECK-INST: and.nor.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0x47,0x11,0x58,0xfc]
and.nor.t %d15, %d1, 24, %d1, 24

# CHECK-INST: and.nor.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0x47,0x11,0xd8,0xff]
and.nor.t %d15, %d1, 24, %d1, 31

# CHECK-INST: and.nor.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x58,0xf0]
and.nor.t %d15, %d1, 24, %d14, 0

# CHECK-INST: and.nor.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xd8,0xf3]
and.nor.t %d15, %d1, 24, %d14, 7

# CHECK-INST: and.nor.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x58,0xfc]
and.nor.t %d15, %d1, 24, %d14, 24

# CHECK-INST: and.nor.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xd8,0xff]
and.nor.t %d15, %d1, 24, %d14, 31

# CHECK-INST: and.nor.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x58,0xf0]
and.nor.t %d15, %d1, 24, %d15, 0

# CHECK-INST: and.nor.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xd8,0xf3]
and.nor.t %d15, %d1, 24, %d15, 7

# CHECK-INST: and.nor.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x58,0xfc]
and.nor.t %d15, %d1, 24, %d15, 24

# CHECK-INST: and.nor.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xd8,0xff]
and.nor.t %d15, %d1, 24, %d15, 31

# CHECK-INST: and.nor.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0x47,0x01,0x5f,0xf0]
and.nor.t %d15, %d1, 31, %d0, 0

# CHECK-INST: and.nor.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0x47,0x01,0xdf,0xf3]
and.nor.t %d15, %d1, 31, %d0, 7

# CHECK-INST: and.nor.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0x47,0x01,0x5f,0xfc]
and.nor.t %d15, %d1, 31, %d0, 24

# CHECK-INST: and.nor.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0x47,0x01,0xdf,0xff]
and.nor.t %d15, %d1, 31, %d0, 31

# CHECK-INST: and.nor.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0x47,0x11,0x5f,0xf0]
and.nor.t %d15, %d1, 31, %d1, 0

# CHECK-INST: and.nor.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0x47,0x11,0xdf,0xf3]
and.nor.t %d15, %d1, 31, %d1, 7

# CHECK-INST: and.nor.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0x47,0x11,0x5f,0xfc]
and.nor.t %d15, %d1, 31, %d1, 24

# CHECK-INST: and.nor.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0x47,0x11,0xdf,0xff]
and.nor.t %d15, %d1, 31, %d1, 31

# CHECK-INST: and.nor.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x5f,0xf0]
and.nor.t %d15, %d1, 31, %d14, 0

# CHECK-INST: and.nor.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xdf,0xf3]
and.nor.t %d15, %d1, 31, %d14, 7

# CHECK-INST: and.nor.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x5f,0xfc]
and.nor.t %d15, %d1, 31, %d14, 24

# CHECK-INST: and.nor.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xdf,0xff]
and.nor.t %d15, %d1, 31, %d14, 31

# CHECK-INST: and.nor.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x5f,0xf0]
and.nor.t %d15, %d1, 31, %d15, 0

# CHECK-INST: and.nor.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xdf,0xf3]
and.nor.t %d15, %d1, 31, %d15, 7

# CHECK-INST: and.nor.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x5f,0xfc]
and.nor.t %d15, %d1, 31, %d15, 24

# CHECK-INST: and.nor.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xdf,0xff]
and.nor.t %d15, %d1, 31, %d15, 31

# CHECK-INST: and.nor.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x40,0xf0]
and.nor.t %d15, %d14, 0, %d0, 0

# CHECK-INST: and.nor.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xc0,0xf3]
and.nor.t %d15, %d14, 0, %d0, 7

# CHECK-INST: and.nor.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x40,0xfc]
and.nor.t %d15, %d14, 0, %d0, 24

# CHECK-INST: and.nor.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xc0,0xff]
and.nor.t %d15, %d14, 0, %d0, 31

# CHECK-INST: and.nor.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x40,0xf0]
and.nor.t %d15, %d14, 0, %d1, 0

# CHECK-INST: and.nor.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xc0,0xf3]
and.nor.t %d15, %d14, 0, %d1, 7

# CHECK-INST: and.nor.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x40,0xfc]
and.nor.t %d15, %d14, 0, %d1, 24

# CHECK-INST: and.nor.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xc0,0xff]
and.nor.t %d15, %d14, 0, %d1, 31

# CHECK-INST: and.nor.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0x47,0xee,0x40,0xf0]
and.nor.t %d15, %d14, 0, %d14, 0

# CHECK-INST: and.nor.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0x47,0xee,0xc0,0xf3]
and.nor.t %d15, %d14, 0, %d14, 7

# CHECK-INST: and.nor.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0x47,0xee,0x40,0xfc]
and.nor.t %d15, %d14, 0, %d14, 24

# CHECK-INST: and.nor.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0x47,0xee,0xc0,0xff]
and.nor.t %d15, %d14, 0, %d14, 31

# CHECK-INST: and.nor.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x40,0xf0]
and.nor.t %d15, %d14, 0, %d15, 0

# CHECK-INST: and.nor.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xc0,0xf3]
and.nor.t %d15, %d14, 0, %d15, 7

# CHECK-INST: and.nor.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x40,0xfc]
and.nor.t %d15, %d14, 0, %d15, 24

# CHECK-INST: and.nor.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xc0,0xff]
and.nor.t %d15, %d14, 0, %d15, 31

# CHECK-INST: and.nor.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x47,0xf0]
and.nor.t %d15, %d14, 7, %d0, 0

# CHECK-INST: and.nor.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xc7,0xf3]
and.nor.t %d15, %d14, 7, %d0, 7

# CHECK-INST: and.nor.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x47,0xfc]
and.nor.t %d15, %d14, 7, %d0, 24

# CHECK-INST: and.nor.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xc7,0xff]
and.nor.t %d15, %d14, 7, %d0, 31

# CHECK-INST: and.nor.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x47,0xf0]
and.nor.t %d15, %d14, 7, %d1, 0

# CHECK-INST: and.nor.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xc7,0xf3]
and.nor.t %d15, %d14, 7, %d1, 7

# CHECK-INST: and.nor.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x47,0xfc]
and.nor.t %d15, %d14, 7, %d1, 24

# CHECK-INST: and.nor.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xc7,0xff]
and.nor.t %d15, %d14, 7, %d1, 31

# CHECK-INST: and.nor.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0x47,0xee,0x47,0xf0]
and.nor.t %d15, %d14, 7, %d14, 0

# CHECK-INST: and.nor.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0x47,0xee,0xc7,0xf3]
and.nor.t %d15, %d14, 7, %d14, 7

# CHECK-INST: and.nor.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0x47,0xee,0x47,0xfc]
and.nor.t %d15, %d14, 7, %d14, 24

# CHECK-INST: and.nor.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0x47,0xee,0xc7,0xff]
and.nor.t %d15, %d14, 7, %d14, 31

# CHECK-INST: and.nor.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x47,0xf0]
and.nor.t %d15, %d14, 7, %d15, 0

# CHECK-INST: and.nor.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xc7,0xf3]
and.nor.t %d15, %d14, 7, %d15, 7

# CHECK-INST: and.nor.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x47,0xfc]
and.nor.t %d15, %d14, 7, %d15, 24

# CHECK-INST: and.nor.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xc7,0xff]
and.nor.t %d15, %d14, 7, %d15, 31

# CHECK-INST: and.nor.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x58,0xf0]
and.nor.t %d15, %d14, 24, %d0, 0

# CHECK-INST: and.nor.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xd8,0xf3]
and.nor.t %d15, %d14, 24, %d0, 7

# CHECK-INST: and.nor.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x58,0xfc]
and.nor.t %d15, %d14, 24, %d0, 24

# CHECK-INST: and.nor.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xd8,0xff]
and.nor.t %d15, %d14, 24, %d0, 31

# CHECK-INST: and.nor.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x58,0xf0]
and.nor.t %d15, %d14, 24, %d1, 0

# CHECK-INST: and.nor.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xd8,0xf3]
and.nor.t %d15, %d14, 24, %d1, 7

# CHECK-INST: and.nor.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x58,0xfc]
and.nor.t %d15, %d14, 24, %d1, 24

# CHECK-INST: and.nor.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xd8,0xff]
and.nor.t %d15, %d14, 24, %d1, 31

# CHECK-INST: and.nor.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0x47,0xee,0x58,0xf0]
and.nor.t %d15, %d14, 24, %d14, 0

# CHECK-INST: and.nor.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0x47,0xee,0xd8,0xf3]
and.nor.t %d15, %d14, 24, %d14, 7

# CHECK-INST: and.nor.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0x47,0xee,0x58,0xfc]
and.nor.t %d15, %d14, 24, %d14, 24

# CHECK-INST: and.nor.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0x47,0xee,0xd8,0xff]
and.nor.t %d15, %d14, 24, %d14, 31

# CHECK-INST: and.nor.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x58,0xf0]
and.nor.t %d15, %d14, 24, %d15, 0

# CHECK-INST: and.nor.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xd8,0xf3]
and.nor.t %d15, %d14, 24, %d15, 7

# CHECK-INST: and.nor.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x58,0xfc]
and.nor.t %d15, %d14, 24, %d15, 24

# CHECK-INST: and.nor.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xd8,0xff]
and.nor.t %d15, %d14, 24, %d15, 31

# CHECK-INST: and.nor.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x5f,0xf0]
and.nor.t %d15, %d14, 31, %d0, 0

# CHECK-INST: and.nor.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xdf,0xf3]
and.nor.t %d15, %d14, 31, %d0, 7

# CHECK-INST: and.nor.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x5f,0xfc]
and.nor.t %d15, %d14, 31, %d0, 24

# CHECK-INST: and.nor.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xdf,0xff]
and.nor.t %d15, %d14, 31, %d0, 31

# CHECK-INST: and.nor.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x5f,0xf0]
and.nor.t %d15, %d14, 31, %d1, 0

# CHECK-INST: and.nor.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xdf,0xf3]
and.nor.t %d15, %d14, 31, %d1, 7

# CHECK-INST: and.nor.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x5f,0xfc]
and.nor.t %d15, %d14, 31, %d1, 24

# CHECK-INST: and.nor.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xdf,0xff]
and.nor.t %d15, %d14, 31, %d1, 31

# CHECK-INST: and.nor.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0x47,0xee,0x5f,0xf0]
and.nor.t %d15, %d14, 31, %d14, 0

# CHECK-INST: and.nor.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0x47,0xee,0xdf,0xf3]
and.nor.t %d15, %d14, 31, %d14, 7

# CHECK-INST: and.nor.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0x47,0xee,0x5f,0xfc]
and.nor.t %d15, %d14, 31, %d14, 24

# CHECK-INST: and.nor.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0x47,0xee,0xdf,0xff]
and.nor.t %d15, %d14, 31, %d14, 31

# CHECK-INST: and.nor.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x5f,0xf0]
and.nor.t %d15, %d14, 31, %d15, 0

# CHECK-INST: and.nor.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xdf,0xf3]
and.nor.t %d15, %d14, 31, %d15, 7

# CHECK-INST: and.nor.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x5f,0xfc]
and.nor.t %d15, %d14, 31, %d15, 24

# CHECK-INST: and.nor.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xdf,0xff]
and.nor.t %d15, %d14, 31, %d15, 31

# CHECK-INST: and.nor.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x40,0xf0]
and.nor.t %d15, %d15, 0, %d0, 0

# CHECK-INST: and.nor.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xc0,0xf3]
and.nor.t %d15, %d15, 0, %d0, 7

# CHECK-INST: and.nor.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x40,0xfc]
and.nor.t %d15, %d15, 0, %d0, 24

# CHECK-INST: and.nor.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xc0,0xff]
and.nor.t %d15, %d15, 0, %d0, 31

# CHECK-INST: and.nor.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x40,0xf0]
and.nor.t %d15, %d15, 0, %d1, 0

# CHECK-INST: and.nor.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xc0,0xf3]
and.nor.t %d15, %d15, 0, %d1, 7

# CHECK-INST: and.nor.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x40,0xfc]
and.nor.t %d15, %d15, 0, %d1, 24

# CHECK-INST: and.nor.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xc0,0xff]
and.nor.t %d15, %d15, 0, %d1, 31

# CHECK-INST: and.nor.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0x47,0xef,0x40,0xf0]
and.nor.t %d15, %d15, 0, %d14, 0

# CHECK-INST: and.nor.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0x47,0xef,0xc0,0xf3]
and.nor.t %d15, %d15, 0, %d14, 7

# CHECK-INST: and.nor.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0x47,0xef,0x40,0xfc]
and.nor.t %d15, %d15, 0, %d14, 24

# CHECK-INST: and.nor.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0x47,0xef,0xc0,0xff]
and.nor.t %d15, %d15, 0, %d14, 31

# CHECK-INST: and.nor.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0x47,0xff,0x40,0xf0]
and.nor.t %d15, %d15, 0, %d15, 0

# CHECK-INST: and.nor.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0x47,0xff,0xc0,0xf3]
and.nor.t %d15, %d15, 0, %d15, 7

# CHECK-INST: and.nor.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0x47,0xff,0x40,0xfc]
and.nor.t %d15, %d15, 0, %d15, 24

# CHECK-INST: and.nor.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0x47,0xff,0xc0,0xff]
and.nor.t %d15, %d15, 0, %d15, 31

# CHECK-INST: and.nor.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x47,0xf0]
and.nor.t %d15, %d15, 7, %d0, 0

# CHECK-INST: and.nor.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xc7,0xf3]
and.nor.t %d15, %d15, 7, %d0, 7

# CHECK-INST: and.nor.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x47,0xfc]
and.nor.t %d15, %d15, 7, %d0, 24

# CHECK-INST: and.nor.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xc7,0xff]
and.nor.t %d15, %d15, 7, %d0, 31

# CHECK-INST: and.nor.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x47,0xf0]
and.nor.t %d15, %d15, 7, %d1, 0

# CHECK-INST: and.nor.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xc7,0xf3]
and.nor.t %d15, %d15, 7, %d1, 7

# CHECK-INST: and.nor.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x47,0xfc]
and.nor.t %d15, %d15, 7, %d1, 24

# CHECK-INST: and.nor.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xc7,0xff]
and.nor.t %d15, %d15, 7, %d1, 31

# CHECK-INST: and.nor.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0x47,0xef,0x47,0xf0]
and.nor.t %d15, %d15, 7, %d14, 0

# CHECK-INST: and.nor.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0x47,0xef,0xc7,0xf3]
and.nor.t %d15, %d15, 7, %d14, 7

# CHECK-INST: and.nor.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0x47,0xef,0x47,0xfc]
and.nor.t %d15, %d15, 7, %d14, 24

# CHECK-INST: and.nor.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0x47,0xef,0xc7,0xff]
and.nor.t %d15, %d15, 7, %d14, 31

# CHECK-INST: and.nor.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0x47,0xff,0x47,0xf0]
and.nor.t %d15, %d15, 7, %d15, 0

# CHECK-INST: and.nor.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0x47,0xff,0xc7,0xf3]
and.nor.t %d15, %d15, 7, %d15, 7

# CHECK-INST: and.nor.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0x47,0xff,0x47,0xfc]
and.nor.t %d15, %d15, 7, %d15, 24

# CHECK-INST: and.nor.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0x47,0xff,0xc7,0xff]
and.nor.t %d15, %d15, 7, %d15, 31

# CHECK-INST: and.nor.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x58,0xf0]
and.nor.t %d15, %d15, 24, %d0, 0

# CHECK-INST: and.nor.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xd8,0xf3]
and.nor.t %d15, %d15, 24, %d0, 7

# CHECK-INST: and.nor.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x58,0xfc]
and.nor.t %d15, %d15, 24, %d0, 24

# CHECK-INST: and.nor.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xd8,0xff]
and.nor.t %d15, %d15, 24, %d0, 31

# CHECK-INST: and.nor.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x58,0xf0]
and.nor.t %d15, %d15, 24, %d1, 0

# CHECK-INST: and.nor.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xd8,0xf3]
and.nor.t %d15, %d15, 24, %d1, 7

# CHECK-INST: and.nor.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x58,0xfc]
and.nor.t %d15, %d15, 24, %d1, 24

# CHECK-INST: and.nor.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xd8,0xff]
and.nor.t %d15, %d15, 24, %d1, 31

# CHECK-INST: and.nor.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0x47,0xef,0x58,0xf0]
and.nor.t %d15, %d15, 24, %d14, 0

# CHECK-INST: and.nor.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0x47,0xef,0xd8,0xf3]
and.nor.t %d15, %d15, 24, %d14, 7

# CHECK-INST: and.nor.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0x47,0xef,0x58,0xfc]
and.nor.t %d15, %d15, 24, %d14, 24

# CHECK-INST: and.nor.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0x47,0xef,0xd8,0xff]
and.nor.t %d15, %d15, 24, %d14, 31

# CHECK-INST: and.nor.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0x47,0xff,0x58,0xf0]
and.nor.t %d15, %d15, 24, %d15, 0

# CHECK-INST: and.nor.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0x47,0xff,0xd8,0xf3]
and.nor.t %d15, %d15, 24, %d15, 7

# CHECK-INST: and.nor.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0x47,0xff,0x58,0xfc]
and.nor.t %d15, %d15, 24, %d15, 24

# CHECK-INST: and.nor.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0x47,0xff,0xd8,0xff]
and.nor.t %d15, %d15, 24, %d15, 31

# CHECK-INST: and.nor.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x5f,0xf0]
and.nor.t %d15, %d15, 31, %d0, 0

# CHECK-INST: and.nor.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xdf,0xf3]
and.nor.t %d15, %d15, 31, %d0, 7

# CHECK-INST: and.nor.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x5f,0xfc]
and.nor.t %d15, %d15, 31, %d0, 24

# CHECK-INST: and.nor.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xdf,0xff]
and.nor.t %d15, %d15, 31, %d0, 31

# CHECK-INST: and.nor.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x5f,0xf0]
and.nor.t %d15, %d15, 31, %d1, 0

# CHECK-INST: and.nor.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xdf,0xf3]
and.nor.t %d15, %d15, 31, %d1, 7

# CHECK-INST: and.nor.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x5f,0xfc]
and.nor.t %d15, %d15, 31, %d1, 24

# CHECK-INST: and.nor.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xdf,0xff]
and.nor.t %d15, %d15, 31, %d1, 31

# CHECK-INST: and.nor.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0x47,0xef,0x5f,0xf0]
and.nor.t %d15, %d15, 31, %d14, 0

# CHECK-INST: and.nor.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0x47,0xef,0xdf,0xf3]
and.nor.t %d15, %d15, 31, %d14, 7

# CHECK-INST: and.nor.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0x47,0xef,0x5f,0xfc]
and.nor.t %d15, %d15, 31, %d14, 24

# CHECK-INST: and.nor.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0x47,0xef,0xdf,0xff]
and.nor.t %d15, %d15, 31, %d14, 31

# CHECK-INST: and.nor.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0x47,0xff,0x5f,0xf0]
and.nor.t %d15, %d15, 31, %d15, 0

# CHECK-INST: and.nor.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0x47,0xff,0xdf,0xf3]
and.nor.t %d15, %d15, 31, %d15, 7

# CHECK-INST: and.nor.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0x47,0xff,0x5f,0xfc]
and.nor.t %d15, %d15, 31, %d15, 24

# CHECK-INST: and.nor.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0x47,0xff,0xdf,0xff]
and.nor.t %d15, %d15, 31, %d15, 31

# CHECK-INST: and.or.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x47,0x00,0x20,0x00]
and.or.t %d0, %d0, 0, %d0, 0

# CHECK-INST: and.or.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0x47,0x00,0xa0,0x03]
and.or.t %d0, %d0, 0, %d0, 7

# CHECK-INST: and.or.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0x47,0x00,0x20,0x0c]
and.or.t %d0, %d0, 0, %d0, 24

# CHECK-INST: and.or.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0x47,0x00,0xa0,0x0f]
and.or.t %d0, %d0, 0, %d0, 31

# CHECK-INST: and.or.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0x47,0x10,0x20,0x00]
and.or.t %d0, %d0, 0, %d1, 0

# CHECK-INST: and.or.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0x47,0x10,0xa0,0x03]
and.or.t %d0, %d0, 0, %d1, 7

# CHECK-INST: and.or.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0x47,0x10,0x20,0x0c]
and.or.t %d0, %d0, 0, %d1, 24

# CHECK-INST: and.or.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0x47,0x10,0xa0,0x0f]
and.or.t %d0, %d0, 0, %d1, 31

# CHECK-INST: and.or.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x20,0x00]
and.or.t %d0, %d0, 0, %d14, 0

# CHECK-INST: and.or.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xa0,0x03]
and.or.t %d0, %d0, 0, %d14, 7

# CHECK-INST: and.or.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x20,0x0c]
and.or.t %d0, %d0, 0, %d14, 24

# CHECK-INST: and.or.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xa0,0x0f]
and.or.t %d0, %d0, 0, %d14, 31

# CHECK-INST: and.or.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x20,0x00]
and.or.t %d0, %d0, 0, %d15, 0

# CHECK-INST: and.or.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xa0,0x03]
and.or.t %d0, %d0, 0, %d15, 7

# CHECK-INST: and.or.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x20,0x0c]
and.or.t %d0, %d0, 0, %d15, 24

# CHECK-INST: and.or.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xa0,0x0f]
and.or.t %d0, %d0, 0, %d15, 31

# CHECK-INST: and.or.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0x47,0x00,0x27,0x00]
and.or.t %d0, %d0, 7, %d0, 0

# CHECK-INST: and.or.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0x47,0x00,0xa7,0x03]
and.or.t %d0, %d0, 7, %d0, 7

# CHECK-INST: and.or.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0x47,0x00,0x27,0x0c]
and.or.t %d0, %d0, 7, %d0, 24

# CHECK-INST: and.or.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0x47,0x00,0xa7,0x0f]
and.or.t %d0, %d0, 7, %d0, 31

# CHECK-INST: and.or.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0x47,0x10,0x27,0x00]
and.or.t %d0, %d0, 7, %d1, 0

# CHECK-INST: and.or.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0x47,0x10,0xa7,0x03]
and.or.t %d0, %d0, 7, %d1, 7

# CHECK-INST: and.or.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0x47,0x10,0x27,0x0c]
and.or.t %d0, %d0, 7, %d1, 24

# CHECK-INST: and.or.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0x47,0x10,0xa7,0x0f]
and.or.t %d0, %d0, 7, %d1, 31

# CHECK-INST: and.or.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x27,0x00]
and.or.t %d0, %d0, 7, %d14, 0

# CHECK-INST: and.or.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xa7,0x03]
and.or.t %d0, %d0, 7, %d14, 7

# CHECK-INST: and.or.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x27,0x0c]
and.or.t %d0, %d0, 7, %d14, 24

# CHECK-INST: and.or.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xa7,0x0f]
and.or.t %d0, %d0, 7, %d14, 31

# CHECK-INST: and.or.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x27,0x00]
and.or.t %d0, %d0, 7, %d15, 0

# CHECK-INST: and.or.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xa7,0x03]
and.or.t %d0, %d0, 7, %d15, 7

# CHECK-INST: and.or.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x27,0x0c]
and.or.t %d0, %d0, 7, %d15, 24

# CHECK-INST: and.or.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xa7,0x0f]
and.or.t %d0, %d0, 7, %d15, 31

# CHECK-INST: and.or.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0x47,0x00,0x38,0x00]
and.or.t %d0, %d0, 24, %d0, 0

# CHECK-INST: and.or.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0x47,0x00,0xb8,0x03]
and.or.t %d0, %d0, 24, %d0, 7

# CHECK-INST: and.or.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0x47,0x00,0x38,0x0c]
and.or.t %d0, %d0, 24, %d0, 24

# CHECK-INST: and.or.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0x47,0x00,0xb8,0x0f]
and.or.t %d0, %d0, 24, %d0, 31

# CHECK-INST: and.or.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0x47,0x10,0x38,0x00]
and.or.t %d0, %d0, 24, %d1, 0

# CHECK-INST: and.or.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0x47,0x10,0xb8,0x03]
and.or.t %d0, %d0, 24, %d1, 7

# CHECK-INST: and.or.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0x47,0x10,0x38,0x0c]
and.or.t %d0, %d0, 24, %d1, 24

# CHECK-INST: and.or.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0x47,0x10,0xb8,0x0f]
and.or.t %d0, %d0, 24, %d1, 31

# CHECK-INST: and.or.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x38,0x00]
and.or.t %d0, %d0, 24, %d14, 0

# CHECK-INST: and.or.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xb8,0x03]
and.or.t %d0, %d0, 24, %d14, 7

# CHECK-INST: and.or.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x38,0x0c]
and.or.t %d0, %d0, 24, %d14, 24

# CHECK-INST: and.or.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xb8,0x0f]
and.or.t %d0, %d0, 24, %d14, 31

# CHECK-INST: and.or.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x38,0x00]
and.or.t %d0, %d0, 24, %d15, 0

# CHECK-INST: and.or.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xb8,0x03]
and.or.t %d0, %d0, 24, %d15, 7

# CHECK-INST: and.or.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x38,0x0c]
and.or.t %d0, %d0, 24, %d15, 24

# CHECK-INST: and.or.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xb8,0x0f]
and.or.t %d0, %d0, 24, %d15, 31

# CHECK-INST: and.or.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0x47,0x00,0x3f,0x00]
and.or.t %d0, %d0, 31, %d0, 0

# CHECK-INST: and.or.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0x47,0x00,0xbf,0x03]
and.or.t %d0, %d0, 31, %d0, 7

# CHECK-INST: and.or.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0x47,0x00,0x3f,0x0c]
and.or.t %d0, %d0, 31, %d0, 24

# CHECK-INST: and.or.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0x47,0x00,0xbf,0x0f]
and.or.t %d0, %d0, 31, %d0, 31

# CHECK-INST: and.or.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0x47,0x10,0x3f,0x00]
and.or.t %d0, %d0, 31, %d1, 0

# CHECK-INST: and.or.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0x47,0x10,0xbf,0x03]
and.or.t %d0, %d0, 31, %d1, 7

# CHECK-INST: and.or.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0x47,0x10,0x3f,0x0c]
and.or.t %d0, %d0, 31, %d1, 24

# CHECK-INST: and.or.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0x47,0x10,0xbf,0x0f]
and.or.t %d0, %d0, 31, %d1, 31

# CHECK-INST: and.or.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x3f,0x00]
and.or.t %d0, %d0, 31, %d14, 0

# CHECK-INST: and.or.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xbf,0x03]
and.or.t %d0, %d0, 31, %d14, 7

# CHECK-INST: and.or.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x3f,0x0c]
and.or.t %d0, %d0, 31, %d14, 24

# CHECK-INST: and.or.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xbf,0x0f]
and.or.t %d0, %d0, 31, %d14, 31

# CHECK-INST: and.or.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x3f,0x00]
and.or.t %d0, %d0, 31, %d15, 0

# CHECK-INST: and.or.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xbf,0x03]
and.or.t %d0, %d0, 31, %d15, 7

# CHECK-INST: and.or.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x3f,0x0c]
and.or.t %d0, %d0, 31, %d15, 24

# CHECK-INST: and.or.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xbf,0x0f]
and.or.t %d0, %d0, 31, %d15, 31

# CHECK-INST: and.or.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0x47,0x01,0x20,0x00]
and.or.t %d0, %d1, 0, %d0, 0

# CHECK-INST: and.or.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0x47,0x01,0xa0,0x03]
and.or.t %d0, %d1, 0, %d0, 7

# CHECK-INST: and.or.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0x47,0x01,0x20,0x0c]
and.or.t %d0, %d1, 0, %d0, 24

# CHECK-INST: and.or.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0x47,0x01,0xa0,0x0f]
and.or.t %d0, %d1, 0, %d0, 31

# CHECK-INST: and.or.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0x47,0x11,0x20,0x00]
and.or.t %d0, %d1, 0, %d1, 0

# CHECK-INST: and.or.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0x47,0x11,0xa0,0x03]
and.or.t %d0, %d1, 0, %d1, 7

# CHECK-INST: and.or.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0x47,0x11,0x20,0x0c]
and.or.t %d0, %d1, 0, %d1, 24

# CHECK-INST: and.or.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0x47,0x11,0xa0,0x0f]
and.or.t %d0, %d1, 0, %d1, 31

# CHECK-INST: and.or.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x20,0x00]
and.or.t %d0, %d1, 0, %d14, 0

# CHECK-INST: and.or.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xa0,0x03]
and.or.t %d0, %d1, 0, %d14, 7

# CHECK-INST: and.or.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x20,0x0c]
and.or.t %d0, %d1, 0, %d14, 24

# CHECK-INST: and.or.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xa0,0x0f]
and.or.t %d0, %d1, 0, %d14, 31

# CHECK-INST: and.or.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x20,0x00]
and.or.t %d0, %d1, 0, %d15, 0

# CHECK-INST: and.or.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xa0,0x03]
and.or.t %d0, %d1, 0, %d15, 7

# CHECK-INST: and.or.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x20,0x0c]
and.or.t %d0, %d1, 0, %d15, 24

# CHECK-INST: and.or.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xa0,0x0f]
and.or.t %d0, %d1, 0, %d15, 31

# CHECK-INST: and.or.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0x47,0x01,0x27,0x00]
and.or.t %d0, %d1, 7, %d0, 0

# CHECK-INST: and.or.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0x47,0x01,0xa7,0x03]
and.or.t %d0, %d1, 7, %d0, 7

# CHECK-INST: and.or.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0x47,0x01,0x27,0x0c]
and.or.t %d0, %d1, 7, %d0, 24

# CHECK-INST: and.or.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0x47,0x01,0xa7,0x0f]
and.or.t %d0, %d1, 7, %d0, 31

# CHECK-INST: and.or.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0x47,0x11,0x27,0x00]
and.or.t %d0, %d1, 7, %d1, 0

# CHECK-INST: and.or.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0x47,0x11,0xa7,0x03]
and.or.t %d0, %d1, 7, %d1, 7

# CHECK-INST: and.or.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0x47,0x11,0x27,0x0c]
and.or.t %d0, %d1, 7, %d1, 24

# CHECK-INST: and.or.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0x47,0x11,0xa7,0x0f]
and.or.t %d0, %d1, 7, %d1, 31

# CHECK-INST: and.or.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x27,0x00]
and.or.t %d0, %d1, 7, %d14, 0

# CHECK-INST: and.or.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xa7,0x03]
and.or.t %d0, %d1, 7, %d14, 7

# CHECK-INST: and.or.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x27,0x0c]
and.or.t %d0, %d1, 7, %d14, 24

# CHECK-INST: and.or.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xa7,0x0f]
and.or.t %d0, %d1, 7, %d14, 31

# CHECK-INST: and.or.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x27,0x00]
and.or.t %d0, %d1, 7, %d15, 0

# CHECK-INST: and.or.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xa7,0x03]
and.or.t %d0, %d1, 7, %d15, 7

# CHECK-INST: and.or.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x27,0x0c]
and.or.t %d0, %d1, 7, %d15, 24

# CHECK-INST: and.or.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xa7,0x0f]
and.or.t %d0, %d1, 7, %d15, 31

# CHECK-INST: and.or.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0x47,0x01,0x38,0x00]
and.or.t %d0, %d1, 24, %d0, 0

# CHECK-INST: and.or.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0x47,0x01,0xb8,0x03]
and.or.t %d0, %d1, 24, %d0, 7

# CHECK-INST: and.or.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0x47,0x01,0x38,0x0c]
and.or.t %d0, %d1, 24, %d0, 24

# CHECK-INST: and.or.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0x47,0x01,0xb8,0x0f]
and.or.t %d0, %d1, 24, %d0, 31

# CHECK-INST: and.or.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0x47,0x11,0x38,0x00]
and.or.t %d0, %d1, 24, %d1, 0

# CHECK-INST: and.or.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0x47,0x11,0xb8,0x03]
and.or.t %d0, %d1, 24, %d1, 7

# CHECK-INST: and.or.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0x47,0x11,0x38,0x0c]
and.or.t %d0, %d1, 24, %d1, 24

# CHECK-INST: and.or.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0x47,0x11,0xb8,0x0f]
and.or.t %d0, %d1, 24, %d1, 31

# CHECK-INST: and.or.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x38,0x00]
and.or.t %d0, %d1, 24, %d14, 0

# CHECK-INST: and.or.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xb8,0x03]
and.or.t %d0, %d1, 24, %d14, 7

# CHECK-INST: and.or.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x38,0x0c]
and.or.t %d0, %d1, 24, %d14, 24

# CHECK-INST: and.or.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xb8,0x0f]
and.or.t %d0, %d1, 24, %d14, 31

# CHECK-INST: and.or.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x38,0x00]
and.or.t %d0, %d1, 24, %d15, 0

# CHECK-INST: and.or.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xb8,0x03]
and.or.t %d0, %d1, 24, %d15, 7

# CHECK-INST: and.or.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x38,0x0c]
and.or.t %d0, %d1, 24, %d15, 24

# CHECK-INST: and.or.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xb8,0x0f]
and.or.t %d0, %d1, 24, %d15, 31

# CHECK-INST: and.or.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0x47,0x01,0x3f,0x00]
and.or.t %d0, %d1, 31, %d0, 0

# CHECK-INST: and.or.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0x47,0x01,0xbf,0x03]
and.or.t %d0, %d1, 31, %d0, 7

# CHECK-INST: and.or.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0x47,0x01,0x3f,0x0c]
and.or.t %d0, %d1, 31, %d0, 24

# CHECK-INST: and.or.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0x47,0x01,0xbf,0x0f]
and.or.t %d0, %d1, 31, %d0, 31

# CHECK-INST: and.or.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0x47,0x11,0x3f,0x00]
and.or.t %d0, %d1, 31, %d1, 0

# CHECK-INST: and.or.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0x47,0x11,0xbf,0x03]
and.or.t %d0, %d1, 31, %d1, 7

# CHECK-INST: and.or.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0x47,0x11,0x3f,0x0c]
and.or.t %d0, %d1, 31, %d1, 24

# CHECK-INST: and.or.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0x47,0x11,0xbf,0x0f]
and.or.t %d0, %d1, 31, %d1, 31

# CHECK-INST: and.or.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x3f,0x00]
and.or.t %d0, %d1, 31, %d14, 0

# CHECK-INST: and.or.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xbf,0x03]
and.or.t %d0, %d1, 31, %d14, 7

# CHECK-INST: and.or.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x3f,0x0c]
and.or.t %d0, %d1, 31, %d14, 24

# CHECK-INST: and.or.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xbf,0x0f]
and.or.t %d0, %d1, 31, %d14, 31

# CHECK-INST: and.or.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x3f,0x00]
and.or.t %d0, %d1, 31, %d15, 0

# CHECK-INST: and.or.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xbf,0x03]
and.or.t %d0, %d1, 31, %d15, 7

# CHECK-INST: and.or.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x3f,0x0c]
and.or.t %d0, %d1, 31, %d15, 24

# CHECK-INST: and.or.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xbf,0x0f]
and.or.t %d0, %d1, 31, %d15, 31

# CHECK-INST: and.or.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x20,0x00]
and.or.t %d0, %d14, 0, %d0, 0

# CHECK-INST: and.or.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xa0,0x03]
and.or.t %d0, %d14, 0, %d0, 7

# CHECK-INST: and.or.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x20,0x0c]
and.or.t %d0, %d14, 0, %d0, 24

# CHECK-INST: and.or.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xa0,0x0f]
and.or.t %d0, %d14, 0, %d0, 31

# CHECK-INST: and.or.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x20,0x00]
and.or.t %d0, %d14, 0, %d1, 0

# CHECK-INST: and.or.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xa0,0x03]
and.or.t %d0, %d14, 0, %d1, 7

# CHECK-INST: and.or.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x20,0x0c]
and.or.t %d0, %d14, 0, %d1, 24

# CHECK-INST: and.or.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xa0,0x0f]
and.or.t %d0, %d14, 0, %d1, 31

# CHECK-INST: and.or.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0x47,0xee,0x20,0x00]
and.or.t %d0, %d14, 0, %d14, 0

# CHECK-INST: and.or.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0x47,0xee,0xa0,0x03]
and.or.t %d0, %d14, 0, %d14, 7

# CHECK-INST: and.or.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0x47,0xee,0x20,0x0c]
and.or.t %d0, %d14, 0, %d14, 24

# CHECK-INST: and.or.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0x47,0xee,0xa0,0x0f]
and.or.t %d0, %d14, 0, %d14, 31

# CHECK-INST: and.or.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x20,0x00]
and.or.t %d0, %d14, 0, %d15, 0

# CHECK-INST: and.or.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xa0,0x03]
and.or.t %d0, %d14, 0, %d15, 7

# CHECK-INST: and.or.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x20,0x0c]
and.or.t %d0, %d14, 0, %d15, 24

# CHECK-INST: and.or.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xa0,0x0f]
and.or.t %d0, %d14, 0, %d15, 31

# CHECK-INST: and.or.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x27,0x00]
and.or.t %d0, %d14, 7, %d0, 0

# CHECK-INST: and.or.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xa7,0x03]
and.or.t %d0, %d14, 7, %d0, 7

# CHECK-INST: and.or.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x27,0x0c]
and.or.t %d0, %d14, 7, %d0, 24

# CHECK-INST: and.or.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xa7,0x0f]
and.or.t %d0, %d14, 7, %d0, 31

# CHECK-INST: and.or.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x27,0x00]
and.or.t %d0, %d14, 7, %d1, 0

# CHECK-INST: and.or.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xa7,0x03]
and.or.t %d0, %d14, 7, %d1, 7

# CHECK-INST: and.or.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x27,0x0c]
and.or.t %d0, %d14, 7, %d1, 24

# CHECK-INST: and.or.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xa7,0x0f]
and.or.t %d0, %d14, 7, %d1, 31

# CHECK-INST: and.or.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0x47,0xee,0x27,0x00]
and.or.t %d0, %d14, 7, %d14, 0

# CHECK-INST: and.or.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0x47,0xee,0xa7,0x03]
and.or.t %d0, %d14, 7, %d14, 7

# CHECK-INST: and.or.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0x47,0xee,0x27,0x0c]
and.or.t %d0, %d14, 7, %d14, 24

# CHECK-INST: and.or.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0x47,0xee,0xa7,0x0f]
and.or.t %d0, %d14, 7, %d14, 31

# CHECK-INST: and.or.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x27,0x00]
and.or.t %d0, %d14, 7, %d15, 0

# CHECK-INST: and.or.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xa7,0x03]
and.or.t %d0, %d14, 7, %d15, 7

# CHECK-INST: and.or.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x27,0x0c]
and.or.t %d0, %d14, 7, %d15, 24

# CHECK-INST: and.or.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xa7,0x0f]
and.or.t %d0, %d14, 7, %d15, 31

# CHECK-INST: and.or.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x38,0x00]
and.or.t %d0, %d14, 24, %d0, 0

# CHECK-INST: and.or.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xb8,0x03]
and.or.t %d0, %d14, 24, %d0, 7

# CHECK-INST: and.or.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x38,0x0c]
and.or.t %d0, %d14, 24, %d0, 24

# CHECK-INST: and.or.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xb8,0x0f]
and.or.t %d0, %d14, 24, %d0, 31

# CHECK-INST: and.or.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x38,0x00]
and.or.t %d0, %d14, 24, %d1, 0

# CHECK-INST: and.or.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xb8,0x03]
and.or.t %d0, %d14, 24, %d1, 7

# CHECK-INST: and.or.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x38,0x0c]
and.or.t %d0, %d14, 24, %d1, 24

# CHECK-INST: and.or.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xb8,0x0f]
and.or.t %d0, %d14, 24, %d1, 31

# CHECK-INST: and.or.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0x47,0xee,0x38,0x00]
and.or.t %d0, %d14, 24, %d14, 0

# CHECK-INST: and.or.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0x47,0xee,0xb8,0x03]
and.or.t %d0, %d14, 24, %d14, 7

# CHECK-INST: and.or.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0x47,0xee,0x38,0x0c]
and.or.t %d0, %d14, 24, %d14, 24

# CHECK-INST: and.or.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0x47,0xee,0xb8,0x0f]
and.or.t %d0, %d14, 24, %d14, 31

# CHECK-INST: and.or.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x38,0x00]
and.or.t %d0, %d14, 24, %d15, 0

# CHECK-INST: and.or.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xb8,0x03]
and.or.t %d0, %d14, 24, %d15, 7

# CHECK-INST: and.or.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x38,0x0c]
and.or.t %d0, %d14, 24, %d15, 24

# CHECK-INST: and.or.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xb8,0x0f]
and.or.t %d0, %d14, 24, %d15, 31

# CHECK-INST: and.or.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x3f,0x00]
and.or.t %d0, %d14, 31, %d0, 0

# CHECK-INST: and.or.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xbf,0x03]
and.or.t %d0, %d14, 31, %d0, 7

# CHECK-INST: and.or.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x3f,0x0c]
and.or.t %d0, %d14, 31, %d0, 24

# CHECK-INST: and.or.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xbf,0x0f]
and.or.t %d0, %d14, 31, %d0, 31

# CHECK-INST: and.or.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x3f,0x00]
and.or.t %d0, %d14, 31, %d1, 0

# CHECK-INST: and.or.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xbf,0x03]
and.or.t %d0, %d14, 31, %d1, 7

# CHECK-INST: and.or.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x3f,0x0c]
and.or.t %d0, %d14, 31, %d1, 24

# CHECK-INST: and.or.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xbf,0x0f]
and.or.t %d0, %d14, 31, %d1, 31

# CHECK-INST: and.or.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0x47,0xee,0x3f,0x00]
and.or.t %d0, %d14, 31, %d14, 0

# CHECK-INST: and.or.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0x47,0xee,0xbf,0x03]
and.or.t %d0, %d14, 31, %d14, 7

# CHECK-INST: and.or.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0x47,0xee,0x3f,0x0c]
and.or.t %d0, %d14, 31, %d14, 24

# CHECK-INST: and.or.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0x47,0xee,0xbf,0x0f]
and.or.t %d0, %d14, 31, %d14, 31

# CHECK-INST: and.or.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x3f,0x00]
and.or.t %d0, %d14, 31, %d15, 0

# CHECK-INST: and.or.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xbf,0x03]
and.or.t %d0, %d14, 31, %d15, 7

# CHECK-INST: and.or.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x3f,0x0c]
and.or.t %d0, %d14, 31, %d15, 24

# CHECK-INST: and.or.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xbf,0x0f]
and.or.t %d0, %d14, 31, %d15, 31

# CHECK-INST: and.or.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x20,0x00]
and.or.t %d0, %d15, 0, %d0, 0

# CHECK-INST: and.or.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xa0,0x03]
and.or.t %d0, %d15, 0, %d0, 7

# CHECK-INST: and.or.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x20,0x0c]
and.or.t %d0, %d15, 0, %d0, 24

# CHECK-INST: and.or.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xa0,0x0f]
and.or.t %d0, %d15, 0, %d0, 31

# CHECK-INST: and.or.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x20,0x00]
and.or.t %d0, %d15, 0, %d1, 0

# CHECK-INST: and.or.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xa0,0x03]
and.or.t %d0, %d15, 0, %d1, 7

# CHECK-INST: and.or.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x20,0x0c]
and.or.t %d0, %d15, 0, %d1, 24

# CHECK-INST: and.or.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xa0,0x0f]
and.or.t %d0, %d15, 0, %d1, 31

# CHECK-INST: and.or.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0x47,0xef,0x20,0x00]
and.or.t %d0, %d15, 0, %d14, 0

# CHECK-INST: and.or.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0x47,0xef,0xa0,0x03]
and.or.t %d0, %d15, 0, %d14, 7

# CHECK-INST: and.or.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0x47,0xef,0x20,0x0c]
and.or.t %d0, %d15, 0, %d14, 24

# CHECK-INST: and.or.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0x47,0xef,0xa0,0x0f]
and.or.t %d0, %d15, 0, %d14, 31

# CHECK-INST: and.or.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0x47,0xff,0x20,0x00]
and.or.t %d0, %d15, 0, %d15, 0

# CHECK-INST: and.or.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0x47,0xff,0xa0,0x03]
and.or.t %d0, %d15, 0, %d15, 7

# CHECK-INST: and.or.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0x47,0xff,0x20,0x0c]
and.or.t %d0, %d15, 0, %d15, 24

# CHECK-INST: and.or.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0x47,0xff,0xa0,0x0f]
and.or.t %d0, %d15, 0, %d15, 31

# CHECK-INST: and.or.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x27,0x00]
and.or.t %d0, %d15, 7, %d0, 0

# CHECK-INST: and.or.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xa7,0x03]
and.or.t %d0, %d15, 7, %d0, 7

# CHECK-INST: and.or.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x27,0x0c]
and.or.t %d0, %d15, 7, %d0, 24

# CHECK-INST: and.or.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xa7,0x0f]
and.or.t %d0, %d15, 7, %d0, 31

# CHECK-INST: and.or.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x27,0x00]
and.or.t %d0, %d15, 7, %d1, 0

# CHECK-INST: and.or.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xa7,0x03]
and.or.t %d0, %d15, 7, %d1, 7

# CHECK-INST: and.or.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x27,0x0c]
and.or.t %d0, %d15, 7, %d1, 24

# CHECK-INST: and.or.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xa7,0x0f]
and.or.t %d0, %d15, 7, %d1, 31

# CHECK-INST: and.or.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0x47,0xef,0x27,0x00]
and.or.t %d0, %d15, 7, %d14, 0

# CHECK-INST: and.or.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0x47,0xef,0xa7,0x03]
and.or.t %d0, %d15, 7, %d14, 7

# CHECK-INST: and.or.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0x47,0xef,0x27,0x0c]
and.or.t %d0, %d15, 7, %d14, 24

# CHECK-INST: and.or.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0x47,0xef,0xa7,0x0f]
and.or.t %d0, %d15, 7, %d14, 31

# CHECK-INST: and.or.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0x47,0xff,0x27,0x00]
and.or.t %d0, %d15, 7, %d15, 0

# CHECK-INST: and.or.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0x47,0xff,0xa7,0x03]
and.or.t %d0, %d15, 7, %d15, 7

# CHECK-INST: and.or.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0x47,0xff,0x27,0x0c]
and.or.t %d0, %d15, 7, %d15, 24

# CHECK-INST: and.or.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0x47,0xff,0xa7,0x0f]
and.or.t %d0, %d15, 7, %d15, 31

# CHECK-INST: and.or.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x38,0x00]
and.or.t %d0, %d15, 24, %d0, 0

# CHECK-INST: and.or.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xb8,0x03]
and.or.t %d0, %d15, 24, %d0, 7

# CHECK-INST: and.or.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x38,0x0c]
and.or.t %d0, %d15, 24, %d0, 24

# CHECK-INST: and.or.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xb8,0x0f]
and.or.t %d0, %d15, 24, %d0, 31

# CHECK-INST: and.or.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x38,0x00]
and.or.t %d0, %d15, 24, %d1, 0

# CHECK-INST: and.or.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xb8,0x03]
and.or.t %d0, %d15, 24, %d1, 7

# CHECK-INST: and.or.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x38,0x0c]
and.or.t %d0, %d15, 24, %d1, 24

# CHECK-INST: and.or.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xb8,0x0f]
and.or.t %d0, %d15, 24, %d1, 31

# CHECK-INST: and.or.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0x47,0xef,0x38,0x00]
and.or.t %d0, %d15, 24, %d14, 0

# CHECK-INST: and.or.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0x47,0xef,0xb8,0x03]
and.or.t %d0, %d15, 24, %d14, 7

# CHECK-INST: and.or.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0x47,0xef,0x38,0x0c]
and.or.t %d0, %d15, 24, %d14, 24

# CHECK-INST: and.or.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0x47,0xef,0xb8,0x0f]
and.or.t %d0, %d15, 24, %d14, 31

# CHECK-INST: and.or.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0x47,0xff,0x38,0x00]
and.or.t %d0, %d15, 24, %d15, 0

# CHECK-INST: and.or.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0x47,0xff,0xb8,0x03]
and.or.t %d0, %d15, 24, %d15, 7

# CHECK-INST: and.or.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0x47,0xff,0x38,0x0c]
and.or.t %d0, %d15, 24, %d15, 24

# CHECK-INST: and.or.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0x47,0xff,0xb8,0x0f]
and.or.t %d0, %d15, 24, %d15, 31

# CHECK-INST: and.or.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x3f,0x00]
and.or.t %d0, %d15, 31, %d0, 0

# CHECK-INST: and.or.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xbf,0x03]
and.or.t %d0, %d15, 31, %d0, 7

# CHECK-INST: and.or.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x3f,0x0c]
and.or.t %d0, %d15, 31, %d0, 24

# CHECK-INST: and.or.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xbf,0x0f]
and.or.t %d0, %d15, 31, %d0, 31

# CHECK-INST: and.or.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x3f,0x00]
and.or.t %d0, %d15, 31, %d1, 0

# CHECK-INST: and.or.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xbf,0x03]
and.or.t %d0, %d15, 31, %d1, 7

# CHECK-INST: and.or.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x3f,0x0c]
and.or.t %d0, %d15, 31, %d1, 24

# CHECK-INST: and.or.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xbf,0x0f]
and.or.t %d0, %d15, 31, %d1, 31

# CHECK-INST: and.or.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0x47,0xef,0x3f,0x00]
and.or.t %d0, %d15, 31, %d14, 0

# CHECK-INST: and.or.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0x47,0xef,0xbf,0x03]
and.or.t %d0, %d15, 31, %d14, 7

# CHECK-INST: and.or.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0x47,0xef,0x3f,0x0c]
and.or.t %d0, %d15, 31, %d14, 24

# CHECK-INST: and.or.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0x47,0xef,0xbf,0x0f]
and.or.t %d0, %d15, 31, %d14, 31

# CHECK-INST: and.or.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0x47,0xff,0x3f,0x00]
and.or.t %d0, %d15, 31, %d15, 0

# CHECK-INST: and.or.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0x47,0xff,0xbf,0x03]
and.or.t %d0, %d15, 31, %d15, 7

# CHECK-INST: and.or.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0x47,0xff,0x3f,0x0c]
and.or.t %d0, %d15, 31, %d15, 24

# CHECK-INST: and.or.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0x47,0xff,0xbf,0x0f]
and.or.t %d0, %d15, 31, %d15, 31

# CHECK-INST: and.or.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0x47,0x00,0x20,0x10]
and.or.t %d1, %d0, 0, %d0, 0

# CHECK-INST: and.or.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0x47,0x00,0xa0,0x13]
and.or.t %d1, %d0, 0, %d0, 7

# CHECK-INST: and.or.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0x47,0x00,0x20,0x1c]
and.or.t %d1, %d0, 0, %d0, 24

# CHECK-INST: and.or.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0x47,0x00,0xa0,0x1f]
and.or.t %d1, %d0, 0, %d0, 31

# CHECK-INST: and.or.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0x47,0x10,0x20,0x10]
and.or.t %d1, %d0, 0, %d1, 0

# CHECK-INST: and.or.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0x47,0x10,0xa0,0x13]
and.or.t %d1, %d0, 0, %d1, 7

# CHECK-INST: and.or.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0x47,0x10,0x20,0x1c]
and.or.t %d1, %d0, 0, %d1, 24

# CHECK-INST: and.or.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0x47,0x10,0xa0,0x1f]
and.or.t %d1, %d0, 0, %d1, 31

# CHECK-INST: and.or.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x20,0x10]
and.or.t %d1, %d0, 0, %d14, 0

# CHECK-INST: and.or.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xa0,0x13]
and.or.t %d1, %d0, 0, %d14, 7

# CHECK-INST: and.or.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x20,0x1c]
and.or.t %d1, %d0, 0, %d14, 24

# CHECK-INST: and.or.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xa0,0x1f]
and.or.t %d1, %d0, 0, %d14, 31

# CHECK-INST: and.or.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x20,0x10]
and.or.t %d1, %d0, 0, %d15, 0

# CHECK-INST: and.or.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xa0,0x13]
and.or.t %d1, %d0, 0, %d15, 7

# CHECK-INST: and.or.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x20,0x1c]
and.or.t %d1, %d0, 0, %d15, 24

# CHECK-INST: and.or.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xa0,0x1f]
and.or.t %d1, %d0, 0, %d15, 31

# CHECK-INST: and.or.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0x47,0x00,0x27,0x10]
and.or.t %d1, %d0, 7, %d0, 0

# CHECK-INST: and.or.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0x47,0x00,0xa7,0x13]
and.or.t %d1, %d0, 7, %d0, 7

# CHECK-INST: and.or.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0x47,0x00,0x27,0x1c]
and.or.t %d1, %d0, 7, %d0, 24

# CHECK-INST: and.or.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0x47,0x00,0xa7,0x1f]
and.or.t %d1, %d0, 7, %d0, 31

# CHECK-INST: and.or.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0x47,0x10,0x27,0x10]
and.or.t %d1, %d0, 7, %d1, 0

# CHECK-INST: and.or.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0x47,0x10,0xa7,0x13]
and.or.t %d1, %d0, 7, %d1, 7

# CHECK-INST: and.or.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0x47,0x10,0x27,0x1c]
and.or.t %d1, %d0, 7, %d1, 24

# CHECK-INST: and.or.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0x47,0x10,0xa7,0x1f]
and.or.t %d1, %d0, 7, %d1, 31

# CHECK-INST: and.or.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x27,0x10]
and.or.t %d1, %d0, 7, %d14, 0

# CHECK-INST: and.or.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xa7,0x13]
and.or.t %d1, %d0, 7, %d14, 7

# CHECK-INST: and.or.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x27,0x1c]
and.or.t %d1, %d0, 7, %d14, 24

# CHECK-INST: and.or.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xa7,0x1f]
and.or.t %d1, %d0, 7, %d14, 31

# CHECK-INST: and.or.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x27,0x10]
and.or.t %d1, %d0, 7, %d15, 0

# CHECK-INST: and.or.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xa7,0x13]
and.or.t %d1, %d0, 7, %d15, 7

# CHECK-INST: and.or.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x27,0x1c]
and.or.t %d1, %d0, 7, %d15, 24

# CHECK-INST: and.or.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xa7,0x1f]
and.or.t %d1, %d0, 7, %d15, 31

# CHECK-INST: and.or.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0x47,0x00,0x38,0x10]
and.or.t %d1, %d0, 24, %d0, 0

# CHECK-INST: and.or.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0x47,0x00,0xb8,0x13]
and.or.t %d1, %d0, 24, %d0, 7

# CHECK-INST: and.or.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0x47,0x00,0x38,0x1c]
and.or.t %d1, %d0, 24, %d0, 24

# CHECK-INST: and.or.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0x47,0x00,0xb8,0x1f]
and.or.t %d1, %d0, 24, %d0, 31

# CHECK-INST: and.or.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0x47,0x10,0x38,0x10]
and.or.t %d1, %d0, 24, %d1, 0

# CHECK-INST: and.or.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0x47,0x10,0xb8,0x13]
and.or.t %d1, %d0, 24, %d1, 7

# CHECK-INST: and.or.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0x47,0x10,0x38,0x1c]
and.or.t %d1, %d0, 24, %d1, 24

# CHECK-INST: and.or.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0x47,0x10,0xb8,0x1f]
and.or.t %d1, %d0, 24, %d1, 31

# CHECK-INST: and.or.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x38,0x10]
and.or.t %d1, %d0, 24, %d14, 0

# CHECK-INST: and.or.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xb8,0x13]
and.or.t %d1, %d0, 24, %d14, 7

# CHECK-INST: and.or.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x38,0x1c]
and.or.t %d1, %d0, 24, %d14, 24

# CHECK-INST: and.or.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xb8,0x1f]
and.or.t %d1, %d0, 24, %d14, 31

# CHECK-INST: and.or.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x38,0x10]
and.or.t %d1, %d0, 24, %d15, 0

# CHECK-INST: and.or.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xb8,0x13]
and.or.t %d1, %d0, 24, %d15, 7

# CHECK-INST: and.or.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x38,0x1c]
and.or.t %d1, %d0, 24, %d15, 24

# CHECK-INST: and.or.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xb8,0x1f]
and.or.t %d1, %d0, 24, %d15, 31

# CHECK-INST: and.or.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0x47,0x00,0x3f,0x10]
and.or.t %d1, %d0, 31, %d0, 0

# CHECK-INST: and.or.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0x47,0x00,0xbf,0x13]
and.or.t %d1, %d0, 31, %d0, 7

# CHECK-INST: and.or.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0x47,0x00,0x3f,0x1c]
and.or.t %d1, %d0, 31, %d0, 24

# CHECK-INST: and.or.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0x47,0x00,0xbf,0x1f]
and.or.t %d1, %d0, 31, %d0, 31

# CHECK-INST: and.or.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0x47,0x10,0x3f,0x10]
and.or.t %d1, %d0, 31, %d1, 0

# CHECK-INST: and.or.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0x47,0x10,0xbf,0x13]
and.or.t %d1, %d0, 31, %d1, 7

# CHECK-INST: and.or.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0x47,0x10,0x3f,0x1c]
and.or.t %d1, %d0, 31, %d1, 24

# CHECK-INST: and.or.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0x47,0x10,0xbf,0x1f]
and.or.t %d1, %d0, 31, %d1, 31

# CHECK-INST: and.or.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x3f,0x10]
and.or.t %d1, %d0, 31, %d14, 0

# CHECK-INST: and.or.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xbf,0x13]
and.or.t %d1, %d0, 31, %d14, 7

# CHECK-INST: and.or.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x3f,0x1c]
and.or.t %d1, %d0, 31, %d14, 24

# CHECK-INST: and.or.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xbf,0x1f]
and.or.t %d1, %d0, 31, %d14, 31

# CHECK-INST: and.or.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x3f,0x10]
and.or.t %d1, %d0, 31, %d15, 0

# CHECK-INST: and.or.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xbf,0x13]
and.or.t %d1, %d0, 31, %d15, 7

# CHECK-INST: and.or.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x3f,0x1c]
and.or.t %d1, %d0, 31, %d15, 24

# CHECK-INST: and.or.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xbf,0x1f]
and.or.t %d1, %d0, 31, %d15, 31

# CHECK-INST: and.or.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0x47,0x01,0x20,0x10]
and.or.t %d1, %d1, 0, %d0, 0

# CHECK-INST: and.or.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0x47,0x01,0xa0,0x13]
and.or.t %d1, %d1, 0, %d0, 7

# CHECK-INST: and.or.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0x47,0x01,0x20,0x1c]
and.or.t %d1, %d1, 0, %d0, 24

# CHECK-INST: and.or.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0x47,0x01,0xa0,0x1f]
and.or.t %d1, %d1, 0, %d0, 31

# CHECK-INST: and.or.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0x47,0x11,0x20,0x10]
and.or.t %d1, %d1, 0, %d1, 0

# CHECK-INST: and.or.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0x47,0x11,0xa0,0x13]
and.or.t %d1, %d1, 0, %d1, 7

# CHECK-INST: and.or.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0x47,0x11,0x20,0x1c]
and.or.t %d1, %d1, 0, %d1, 24

# CHECK-INST: and.or.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0x47,0x11,0xa0,0x1f]
and.or.t %d1, %d1, 0, %d1, 31

# CHECK-INST: and.or.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x20,0x10]
and.or.t %d1, %d1, 0, %d14, 0

# CHECK-INST: and.or.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xa0,0x13]
and.or.t %d1, %d1, 0, %d14, 7

# CHECK-INST: and.or.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x20,0x1c]
and.or.t %d1, %d1, 0, %d14, 24

# CHECK-INST: and.or.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xa0,0x1f]
and.or.t %d1, %d1, 0, %d14, 31

# CHECK-INST: and.or.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x20,0x10]
and.or.t %d1, %d1, 0, %d15, 0

# CHECK-INST: and.or.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xa0,0x13]
and.or.t %d1, %d1, 0, %d15, 7

# CHECK-INST: and.or.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x20,0x1c]
and.or.t %d1, %d1, 0, %d15, 24

# CHECK-INST: and.or.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xa0,0x1f]
and.or.t %d1, %d1, 0, %d15, 31

# CHECK-INST: and.or.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0x47,0x01,0x27,0x10]
and.or.t %d1, %d1, 7, %d0, 0

# CHECK-INST: and.or.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0x47,0x01,0xa7,0x13]
and.or.t %d1, %d1, 7, %d0, 7

# CHECK-INST: and.or.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0x47,0x01,0x27,0x1c]
and.or.t %d1, %d1, 7, %d0, 24

# CHECK-INST: and.or.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0x47,0x01,0xa7,0x1f]
and.or.t %d1, %d1, 7, %d0, 31

# CHECK-INST: and.or.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0x47,0x11,0x27,0x10]
and.or.t %d1, %d1, 7, %d1, 0

# CHECK-INST: and.or.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0x47,0x11,0xa7,0x13]
and.or.t %d1, %d1, 7, %d1, 7

# CHECK-INST: and.or.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0x47,0x11,0x27,0x1c]
and.or.t %d1, %d1, 7, %d1, 24

# CHECK-INST: and.or.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0x47,0x11,0xa7,0x1f]
and.or.t %d1, %d1, 7, %d1, 31

# CHECK-INST: and.or.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x27,0x10]
and.or.t %d1, %d1, 7, %d14, 0

# CHECK-INST: and.or.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xa7,0x13]
and.or.t %d1, %d1, 7, %d14, 7

# CHECK-INST: and.or.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x27,0x1c]
and.or.t %d1, %d1, 7, %d14, 24

# CHECK-INST: and.or.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xa7,0x1f]
and.or.t %d1, %d1, 7, %d14, 31

# CHECK-INST: and.or.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x27,0x10]
and.or.t %d1, %d1, 7, %d15, 0

# CHECK-INST: and.or.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xa7,0x13]
and.or.t %d1, %d1, 7, %d15, 7

# CHECK-INST: and.or.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x27,0x1c]
and.or.t %d1, %d1, 7, %d15, 24

# CHECK-INST: and.or.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xa7,0x1f]
and.or.t %d1, %d1, 7, %d15, 31

# CHECK-INST: and.or.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0x47,0x01,0x38,0x10]
and.or.t %d1, %d1, 24, %d0, 0

# CHECK-INST: and.or.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0x47,0x01,0xb8,0x13]
and.or.t %d1, %d1, 24, %d0, 7

# CHECK-INST: and.or.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0x47,0x01,0x38,0x1c]
and.or.t %d1, %d1, 24, %d0, 24

# CHECK-INST: and.or.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0x47,0x01,0xb8,0x1f]
and.or.t %d1, %d1, 24, %d0, 31

# CHECK-INST: and.or.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0x47,0x11,0x38,0x10]
and.or.t %d1, %d1, 24, %d1, 0

# CHECK-INST: and.or.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0x47,0x11,0xb8,0x13]
and.or.t %d1, %d1, 24, %d1, 7

# CHECK-INST: and.or.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0x47,0x11,0x38,0x1c]
and.or.t %d1, %d1, 24, %d1, 24

# CHECK-INST: and.or.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0x47,0x11,0xb8,0x1f]
and.or.t %d1, %d1, 24, %d1, 31

# CHECK-INST: and.or.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x38,0x10]
and.or.t %d1, %d1, 24, %d14, 0

# CHECK-INST: and.or.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xb8,0x13]
and.or.t %d1, %d1, 24, %d14, 7

# CHECK-INST: and.or.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x38,0x1c]
and.or.t %d1, %d1, 24, %d14, 24

# CHECK-INST: and.or.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xb8,0x1f]
and.or.t %d1, %d1, 24, %d14, 31

# CHECK-INST: and.or.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x38,0x10]
and.or.t %d1, %d1, 24, %d15, 0

# CHECK-INST: and.or.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xb8,0x13]
and.or.t %d1, %d1, 24, %d15, 7

# CHECK-INST: and.or.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x38,0x1c]
and.or.t %d1, %d1, 24, %d15, 24

# CHECK-INST: and.or.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xb8,0x1f]
and.or.t %d1, %d1, 24, %d15, 31

# CHECK-INST: and.or.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0x47,0x01,0x3f,0x10]
and.or.t %d1, %d1, 31, %d0, 0

# CHECK-INST: and.or.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0x47,0x01,0xbf,0x13]
and.or.t %d1, %d1, 31, %d0, 7

# CHECK-INST: and.or.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0x47,0x01,0x3f,0x1c]
and.or.t %d1, %d1, 31, %d0, 24

# CHECK-INST: and.or.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0x47,0x01,0xbf,0x1f]
and.or.t %d1, %d1, 31, %d0, 31

# CHECK-INST: and.or.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0x47,0x11,0x3f,0x10]
and.or.t %d1, %d1, 31, %d1, 0

# CHECK-INST: and.or.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0x47,0x11,0xbf,0x13]
and.or.t %d1, %d1, 31, %d1, 7

# CHECK-INST: and.or.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0x47,0x11,0x3f,0x1c]
and.or.t %d1, %d1, 31, %d1, 24

# CHECK-INST: and.or.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0x47,0x11,0xbf,0x1f]
and.or.t %d1, %d1, 31, %d1, 31

# CHECK-INST: and.or.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x3f,0x10]
and.or.t %d1, %d1, 31, %d14, 0

# CHECK-INST: and.or.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xbf,0x13]
and.or.t %d1, %d1, 31, %d14, 7

# CHECK-INST: and.or.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x3f,0x1c]
and.or.t %d1, %d1, 31, %d14, 24

# CHECK-INST: and.or.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xbf,0x1f]
and.or.t %d1, %d1, 31, %d14, 31

# CHECK-INST: and.or.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x3f,0x10]
and.or.t %d1, %d1, 31, %d15, 0

# CHECK-INST: and.or.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xbf,0x13]
and.or.t %d1, %d1, 31, %d15, 7

# CHECK-INST: and.or.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x3f,0x1c]
and.or.t %d1, %d1, 31, %d15, 24

# CHECK-INST: and.or.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xbf,0x1f]
and.or.t %d1, %d1, 31, %d15, 31

# CHECK-INST: and.or.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x20,0x10]
and.or.t %d1, %d14, 0, %d0, 0

# CHECK-INST: and.or.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xa0,0x13]
and.or.t %d1, %d14, 0, %d0, 7

# CHECK-INST: and.or.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x20,0x1c]
and.or.t %d1, %d14, 0, %d0, 24

# CHECK-INST: and.or.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xa0,0x1f]
and.or.t %d1, %d14, 0, %d0, 31

# CHECK-INST: and.or.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x20,0x10]
and.or.t %d1, %d14, 0, %d1, 0

# CHECK-INST: and.or.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xa0,0x13]
and.or.t %d1, %d14, 0, %d1, 7

# CHECK-INST: and.or.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x20,0x1c]
and.or.t %d1, %d14, 0, %d1, 24

# CHECK-INST: and.or.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xa0,0x1f]
and.or.t %d1, %d14, 0, %d1, 31

# CHECK-INST: and.or.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0x47,0xee,0x20,0x10]
and.or.t %d1, %d14, 0, %d14, 0

# CHECK-INST: and.or.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0x47,0xee,0xa0,0x13]
and.or.t %d1, %d14, 0, %d14, 7

# CHECK-INST: and.or.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0x47,0xee,0x20,0x1c]
and.or.t %d1, %d14, 0, %d14, 24

# CHECK-INST: and.or.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0x47,0xee,0xa0,0x1f]
and.or.t %d1, %d14, 0, %d14, 31

# CHECK-INST: and.or.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x20,0x10]
and.or.t %d1, %d14, 0, %d15, 0

# CHECK-INST: and.or.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xa0,0x13]
and.or.t %d1, %d14, 0, %d15, 7

# CHECK-INST: and.or.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x20,0x1c]
and.or.t %d1, %d14, 0, %d15, 24

# CHECK-INST: and.or.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xa0,0x1f]
and.or.t %d1, %d14, 0, %d15, 31

# CHECK-INST: and.or.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x27,0x10]
and.or.t %d1, %d14, 7, %d0, 0

# CHECK-INST: and.or.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xa7,0x13]
and.or.t %d1, %d14, 7, %d0, 7

# CHECK-INST: and.or.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x27,0x1c]
and.or.t %d1, %d14, 7, %d0, 24

# CHECK-INST: and.or.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xa7,0x1f]
and.or.t %d1, %d14, 7, %d0, 31

# CHECK-INST: and.or.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x27,0x10]
and.or.t %d1, %d14, 7, %d1, 0

# CHECK-INST: and.or.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xa7,0x13]
and.or.t %d1, %d14, 7, %d1, 7

# CHECK-INST: and.or.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x27,0x1c]
and.or.t %d1, %d14, 7, %d1, 24

# CHECK-INST: and.or.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xa7,0x1f]
and.or.t %d1, %d14, 7, %d1, 31

# CHECK-INST: and.or.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0x47,0xee,0x27,0x10]
and.or.t %d1, %d14, 7, %d14, 0

# CHECK-INST: and.or.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0x47,0xee,0xa7,0x13]
and.or.t %d1, %d14, 7, %d14, 7

# CHECK-INST: and.or.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0x47,0xee,0x27,0x1c]
and.or.t %d1, %d14, 7, %d14, 24

# CHECK-INST: and.or.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0x47,0xee,0xa7,0x1f]
and.or.t %d1, %d14, 7, %d14, 31

# CHECK-INST: and.or.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x27,0x10]
and.or.t %d1, %d14, 7, %d15, 0

# CHECK-INST: and.or.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xa7,0x13]
and.or.t %d1, %d14, 7, %d15, 7

# CHECK-INST: and.or.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x27,0x1c]
and.or.t %d1, %d14, 7, %d15, 24

# CHECK-INST: and.or.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xa7,0x1f]
and.or.t %d1, %d14, 7, %d15, 31

# CHECK-INST: and.or.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x38,0x10]
and.or.t %d1, %d14, 24, %d0, 0

# CHECK-INST: and.or.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xb8,0x13]
and.or.t %d1, %d14, 24, %d0, 7

# CHECK-INST: and.or.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x38,0x1c]
and.or.t %d1, %d14, 24, %d0, 24

# CHECK-INST: and.or.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xb8,0x1f]
and.or.t %d1, %d14, 24, %d0, 31

# CHECK-INST: and.or.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x38,0x10]
and.or.t %d1, %d14, 24, %d1, 0

# CHECK-INST: and.or.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xb8,0x13]
and.or.t %d1, %d14, 24, %d1, 7

# CHECK-INST: and.or.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x38,0x1c]
and.or.t %d1, %d14, 24, %d1, 24

# CHECK-INST: and.or.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xb8,0x1f]
and.or.t %d1, %d14, 24, %d1, 31

# CHECK-INST: and.or.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0x47,0xee,0x38,0x10]
and.or.t %d1, %d14, 24, %d14, 0

# CHECK-INST: and.or.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0x47,0xee,0xb8,0x13]
and.or.t %d1, %d14, 24, %d14, 7

# CHECK-INST: and.or.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0x47,0xee,0x38,0x1c]
and.or.t %d1, %d14, 24, %d14, 24

# CHECK-INST: and.or.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0x47,0xee,0xb8,0x1f]
and.or.t %d1, %d14, 24, %d14, 31

# CHECK-INST: and.or.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x38,0x10]
and.or.t %d1, %d14, 24, %d15, 0

# CHECK-INST: and.or.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xb8,0x13]
and.or.t %d1, %d14, 24, %d15, 7

# CHECK-INST: and.or.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x38,0x1c]
and.or.t %d1, %d14, 24, %d15, 24

# CHECK-INST: and.or.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xb8,0x1f]
and.or.t %d1, %d14, 24, %d15, 31

# CHECK-INST: and.or.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x3f,0x10]
and.or.t %d1, %d14, 31, %d0, 0

# CHECK-INST: and.or.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xbf,0x13]
and.or.t %d1, %d14, 31, %d0, 7

# CHECK-INST: and.or.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x3f,0x1c]
and.or.t %d1, %d14, 31, %d0, 24

# CHECK-INST: and.or.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xbf,0x1f]
and.or.t %d1, %d14, 31, %d0, 31

# CHECK-INST: and.or.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x3f,0x10]
and.or.t %d1, %d14, 31, %d1, 0

# CHECK-INST: and.or.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xbf,0x13]
and.or.t %d1, %d14, 31, %d1, 7

# CHECK-INST: and.or.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x3f,0x1c]
and.or.t %d1, %d14, 31, %d1, 24

# CHECK-INST: and.or.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xbf,0x1f]
and.or.t %d1, %d14, 31, %d1, 31

# CHECK-INST: and.or.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0x47,0xee,0x3f,0x10]
and.or.t %d1, %d14, 31, %d14, 0

# CHECK-INST: and.or.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0x47,0xee,0xbf,0x13]
and.or.t %d1, %d14, 31, %d14, 7

# CHECK-INST: and.or.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0x47,0xee,0x3f,0x1c]
and.or.t %d1, %d14, 31, %d14, 24

# CHECK-INST: and.or.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0x47,0xee,0xbf,0x1f]
and.or.t %d1, %d14, 31, %d14, 31

# CHECK-INST: and.or.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x3f,0x10]
and.or.t %d1, %d14, 31, %d15, 0

# CHECK-INST: and.or.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xbf,0x13]
and.or.t %d1, %d14, 31, %d15, 7

# CHECK-INST: and.or.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x3f,0x1c]
and.or.t %d1, %d14, 31, %d15, 24

# CHECK-INST: and.or.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xbf,0x1f]
and.or.t %d1, %d14, 31, %d15, 31

# CHECK-INST: and.or.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x20,0x10]
and.or.t %d1, %d15, 0, %d0, 0

# CHECK-INST: and.or.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xa0,0x13]
and.or.t %d1, %d15, 0, %d0, 7

# CHECK-INST: and.or.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x20,0x1c]
and.or.t %d1, %d15, 0, %d0, 24

# CHECK-INST: and.or.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xa0,0x1f]
and.or.t %d1, %d15, 0, %d0, 31

# CHECK-INST: and.or.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x20,0x10]
and.or.t %d1, %d15, 0, %d1, 0

# CHECK-INST: and.or.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xa0,0x13]
and.or.t %d1, %d15, 0, %d1, 7

# CHECK-INST: and.or.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x20,0x1c]
and.or.t %d1, %d15, 0, %d1, 24

# CHECK-INST: and.or.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xa0,0x1f]
and.or.t %d1, %d15, 0, %d1, 31

# CHECK-INST: and.or.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0x47,0xef,0x20,0x10]
and.or.t %d1, %d15, 0, %d14, 0

# CHECK-INST: and.or.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0x47,0xef,0xa0,0x13]
and.or.t %d1, %d15, 0, %d14, 7

# CHECK-INST: and.or.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0x47,0xef,0x20,0x1c]
and.or.t %d1, %d15, 0, %d14, 24

# CHECK-INST: and.or.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0x47,0xef,0xa0,0x1f]
and.or.t %d1, %d15, 0, %d14, 31

# CHECK-INST: and.or.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0x47,0xff,0x20,0x10]
and.or.t %d1, %d15, 0, %d15, 0

# CHECK-INST: and.or.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0x47,0xff,0xa0,0x13]
and.or.t %d1, %d15, 0, %d15, 7

# CHECK-INST: and.or.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0x47,0xff,0x20,0x1c]
and.or.t %d1, %d15, 0, %d15, 24

# CHECK-INST: and.or.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0x47,0xff,0xa0,0x1f]
and.or.t %d1, %d15, 0, %d15, 31

# CHECK-INST: and.or.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x27,0x10]
and.or.t %d1, %d15, 7, %d0, 0

# CHECK-INST: and.or.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xa7,0x13]
and.or.t %d1, %d15, 7, %d0, 7

# CHECK-INST: and.or.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x27,0x1c]
and.or.t %d1, %d15, 7, %d0, 24

# CHECK-INST: and.or.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xa7,0x1f]
and.or.t %d1, %d15, 7, %d0, 31

# CHECK-INST: and.or.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x27,0x10]
and.or.t %d1, %d15, 7, %d1, 0

# CHECK-INST: and.or.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xa7,0x13]
and.or.t %d1, %d15, 7, %d1, 7

# CHECK-INST: and.or.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x27,0x1c]
and.or.t %d1, %d15, 7, %d1, 24

# CHECK-INST: and.or.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xa7,0x1f]
and.or.t %d1, %d15, 7, %d1, 31

# CHECK-INST: and.or.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0x47,0xef,0x27,0x10]
and.or.t %d1, %d15, 7, %d14, 0

# CHECK-INST: and.or.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0x47,0xef,0xa7,0x13]
and.or.t %d1, %d15, 7, %d14, 7

# CHECK-INST: and.or.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0x47,0xef,0x27,0x1c]
and.or.t %d1, %d15, 7, %d14, 24

# CHECK-INST: and.or.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0x47,0xef,0xa7,0x1f]
and.or.t %d1, %d15, 7, %d14, 31

# CHECK-INST: and.or.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0x47,0xff,0x27,0x10]
and.or.t %d1, %d15, 7, %d15, 0

# CHECK-INST: and.or.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0x47,0xff,0xa7,0x13]
and.or.t %d1, %d15, 7, %d15, 7

# CHECK-INST: and.or.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0x47,0xff,0x27,0x1c]
and.or.t %d1, %d15, 7, %d15, 24

# CHECK-INST: and.or.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0x47,0xff,0xa7,0x1f]
and.or.t %d1, %d15, 7, %d15, 31

# CHECK-INST: and.or.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x38,0x10]
and.or.t %d1, %d15, 24, %d0, 0

# CHECK-INST: and.or.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xb8,0x13]
and.or.t %d1, %d15, 24, %d0, 7

# CHECK-INST: and.or.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x38,0x1c]
and.or.t %d1, %d15, 24, %d0, 24

# CHECK-INST: and.or.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xb8,0x1f]
and.or.t %d1, %d15, 24, %d0, 31

# CHECK-INST: and.or.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x38,0x10]
and.or.t %d1, %d15, 24, %d1, 0

# CHECK-INST: and.or.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xb8,0x13]
and.or.t %d1, %d15, 24, %d1, 7

# CHECK-INST: and.or.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x38,0x1c]
and.or.t %d1, %d15, 24, %d1, 24

# CHECK-INST: and.or.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xb8,0x1f]
and.or.t %d1, %d15, 24, %d1, 31

# CHECK-INST: and.or.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0x47,0xef,0x38,0x10]
and.or.t %d1, %d15, 24, %d14, 0

# CHECK-INST: and.or.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0x47,0xef,0xb8,0x13]
and.or.t %d1, %d15, 24, %d14, 7

# CHECK-INST: and.or.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0x47,0xef,0x38,0x1c]
and.or.t %d1, %d15, 24, %d14, 24

# CHECK-INST: and.or.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0x47,0xef,0xb8,0x1f]
and.or.t %d1, %d15, 24, %d14, 31

# CHECK-INST: and.or.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0x47,0xff,0x38,0x10]
and.or.t %d1, %d15, 24, %d15, 0

# CHECK-INST: and.or.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0x47,0xff,0xb8,0x13]
and.or.t %d1, %d15, 24, %d15, 7

# CHECK-INST: and.or.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0x47,0xff,0x38,0x1c]
and.or.t %d1, %d15, 24, %d15, 24

# CHECK-INST: and.or.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0x47,0xff,0xb8,0x1f]
and.or.t %d1, %d15, 24, %d15, 31

# CHECK-INST: and.or.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x3f,0x10]
and.or.t %d1, %d15, 31, %d0, 0

# CHECK-INST: and.or.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xbf,0x13]
and.or.t %d1, %d15, 31, %d0, 7

# CHECK-INST: and.or.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x3f,0x1c]
and.or.t %d1, %d15, 31, %d0, 24

# CHECK-INST: and.or.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xbf,0x1f]
and.or.t %d1, %d15, 31, %d0, 31

# CHECK-INST: and.or.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x3f,0x10]
and.or.t %d1, %d15, 31, %d1, 0

# CHECK-INST: and.or.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xbf,0x13]
and.or.t %d1, %d15, 31, %d1, 7

# CHECK-INST: and.or.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x3f,0x1c]
and.or.t %d1, %d15, 31, %d1, 24

# CHECK-INST: and.or.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xbf,0x1f]
and.or.t %d1, %d15, 31, %d1, 31

# CHECK-INST: and.or.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0x47,0xef,0x3f,0x10]
and.or.t %d1, %d15, 31, %d14, 0

# CHECK-INST: and.or.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0x47,0xef,0xbf,0x13]
and.or.t %d1, %d15, 31, %d14, 7

# CHECK-INST: and.or.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0x47,0xef,0x3f,0x1c]
and.or.t %d1, %d15, 31, %d14, 24

# CHECK-INST: and.or.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0x47,0xef,0xbf,0x1f]
and.or.t %d1, %d15, 31, %d14, 31

# CHECK-INST: and.or.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0x47,0xff,0x3f,0x10]
and.or.t %d1, %d15, 31, %d15, 0

# CHECK-INST: and.or.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0x47,0xff,0xbf,0x13]
and.or.t %d1, %d15, 31, %d15, 7

# CHECK-INST: and.or.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0x47,0xff,0x3f,0x1c]
and.or.t %d1, %d15, 31, %d15, 24

# CHECK-INST: and.or.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0x47,0xff,0xbf,0x1f]
and.or.t %d1, %d15, 31, %d15, 31

# CHECK-INST: and.or.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0x47,0x00,0x20,0xe0]
and.or.t %d14, %d0, 0, %d0, 0

# CHECK-INST: and.or.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0x47,0x00,0xa0,0xe3]
and.or.t %d14, %d0, 0, %d0, 7

# CHECK-INST: and.or.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0x47,0x00,0x20,0xec]
and.or.t %d14, %d0, 0, %d0, 24

# CHECK-INST: and.or.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0x47,0x00,0xa0,0xef]
and.or.t %d14, %d0, 0, %d0, 31

# CHECK-INST: and.or.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0x47,0x10,0x20,0xe0]
and.or.t %d14, %d0, 0, %d1, 0

# CHECK-INST: and.or.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0x47,0x10,0xa0,0xe3]
and.or.t %d14, %d0, 0, %d1, 7

# CHECK-INST: and.or.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0x47,0x10,0x20,0xec]
and.or.t %d14, %d0, 0, %d1, 24

# CHECK-INST: and.or.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0x47,0x10,0xa0,0xef]
and.or.t %d14, %d0, 0, %d1, 31

# CHECK-INST: and.or.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x20,0xe0]
and.or.t %d14, %d0, 0, %d14, 0

# CHECK-INST: and.or.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xa0,0xe3]
and.or.t %d14, %d0, 0, %d14, 7

# CHECK-INST: and.or.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x20,0xec]
and.or.t %d14, %d0, 0, %d14, 24

# CHECK-INST: and.or.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xa0,0xef]
and.or.t %d14, %d0, 0, %d14, 31

# CHECK-INST: and.or.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x20,0xe0]
and.or.t %d14, %d0, 0, %d15, 0

# CHECK-INST: and.or.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xa0,0xe3]
and.or.t %d14, %d0, 0, %d15, 7

# CHECK-INST: and.or.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x20,0xec]
and.or.t %d14, %d0, 0, %d15, 24

# CHECK-INST: and.or.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xa0,0xef]
and.or.t %d14, %d0, 0, %d15, 31

# CHECK-INST: and.or.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0x47,0x00,0x27,0xe0]
and.or.t %d14, %d0, 7, %d0, 0

# CHECK-INST: and.or.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0x47,0x00,0xa7,0xe3]
and.or.t %d14, %d0, 7, %d0, 7

# CHECK-INST: and.or.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0x47,0x00,0x27,0xec]
and.or.t %d14, %d0, 7, %d0, 24

# CHECK-INST: and.or.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0x47,0x00,0xa7,0xef]
and.or.t %d14, %d0, 7, %d0, 31

# CHECK-INST: and.or.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0x47,0x10,0x27,0xe0]
and.or.t %d14, %d0, 7, %d1, 0

# CHECK-INST: and.or.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0x47,0x10,0xa7,0xe3]
and.or.t %d14, %d0, 7, %d1, 7

# CHECK-INST: and.or.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0x47,0x10,0x27,0xec]
and.or.t %d14, %d0, 7, %d1, 24

# CHECK-INST: and.or.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0x47,0x10,0xa7,0xef]
and.or.t %d14, %d0, 7, %d1, 31

# CHECK-INST: and.or.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x27,0xe0]
and.or.t %d14, %d0, 7, %d14, 0

# CHECK-INST: and.or.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xa7,0xe3]
and.or.t %d14, %d0, 7, %d14, 7

# CHECK-INST: and.or.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x27,0xec]
and.or.t %d14, %d0, 7, %d14, 24

# CHECK-INST: and.or.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xa7,0xef]
and.or.t %d14, %d0, 7, %d14, 31

# CHECK-INST: and.or.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x27,0xe0]
and.or.t %d14, %d0, 7, %d15, 0

# CHECK-INST: and.or.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xa7,0xe3]
and.or.t %d14, %d0, 7, %d15, 7

# CHECK-INST: and.or.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x27,0xec]
and.or.t %d14, %d0, 7, %d15, 24

# CHECK-INST: and.or.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xa7,0xef]
and.or.t %d14, %d0, 7, %d15, 31

# CHECK-INST: and.or.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0x47,0x00,0x38,0xe0]
and.or.t %d14, %d0, 24, %d0, 0

# CHECK-INST: and.or.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0x47,0x00,0xb8,0xe3]
and.or.t %d14, %d0, 24, %d0, 7

# CHECK-INST: and.or.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0x47,0x00,0x38,0xec]
and.or.t %d14, %d0, 24, %d0, 24

# CHECK-INST: and.or.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0x47,0x00,0xb8,0xef]
and.or.t %d14, %d0, 24, %d0, 31

# CHECK-INST: and.or.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0x47,0x10,0x38,0xe0]
and.or.t %d14, %d0, 24, %d1, 0

# CHECK-INST: and.or.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0x47,0x10,0xb8,0xe3]
and.or.t %d14, %d0, 24, %d1, 7

# CHECK-INST: and.or.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0x47,0x10,0x38,0xec]
and.or.t %d14, %d0, 24, %d1, 24

# CHECK-INST: and.or.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0x47,0x10,0xb8,0xef]
and.or.t %d14, %d0, 24, %d1, 31

# CHECK-INST: and.or.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x38,0xe0]
and.or.t %d14, %d0, 24, %d14, 0

# CHECK-INST: and.or.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xb8,0xe3]
and.or.t %d14, %d0, 24, %d14, 7

# CHECK-INST: and.or.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x38,0xec]
and.or.t %d14, %d0, 24, %d14, 24

# CHECK-INST: and.or.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xb8,0xef]
and.or.t %d14, %d0, 24, %d14, 31

# CHECK-INST: and.or.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x38,0xe0]
and.or.t %d14, %d0, 24, %d15, 0

# CHECK-INST: and.or.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xb8,0xe3]
and.or.t %d14, %d0, 24, %d15, 7

# CHECK-INST: and.or.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x38,0xec]
and.or.t %d14, %d0, 24, %d15, 24

# CHECK-INST: and.or.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xb8,0xef]
and.or.t %d14, %d0, 24, %d15, 31

# CHECK-INST: and.or.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0x47,0x00,0x3f,0xe0]
and.or.t %d14, %d0, 31, %d0, 0

# CHECK-INST: and.or.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0x47,0x00,0xbf,0xe3]
and.or.t %d14, %d0, 31, %d0, 7

# CHECK-INST: and.or.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0x47,0x00,0x3f,0xec]
and.or.t %d14, %d0, 31, %d0, 24

# CHECK-INST: and.or.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0x47,0x00,0xbf,0xef]
and.or.t %d14, %d0, 31, %d0, 31

# CHECK-INST: and.or.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0x47,0x10,0x3f,0xe0]
and.or.t %d14, %d0, 31, %d1, 0

# CHECK-INST: and.or.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0x47,0x10,0xbf,0xe3]
and.or.t %d14, %d0, 31, %d1, 7

# CHECK-INST: and.or.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0x47,0x10,0x3f,0xec]
and.or.t %d14, %d0, 31, %d1, 24

# CHECK-INST: and.or.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0x47,0x10,0xbf,0xef]
and.or.t %d14, %d0, 31, %d1, 31

# CHECK-INST: and.or.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x3f,0xe0]
and.or.t %d14, %d0, 31, %d14, 0

# CHECK-INST: and.or.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xbf,0xe3]
and.or.t %d14, %d0, 31, %d14, 7

# CHECK-INST: and.or.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x3f,0xec]
and.or.t %d14, %d0, 31, %d14, 24

# CHECK-INST: and.or.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xbf,0xef]
and.or.t %d14, %d0, 31, %d14, 31

# CHECK-INST: and.or.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x3f,0xe0]
and.or.t %d14, %d0, 31, %d15, 0

# CHECK-INST: and.or.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xbf,0xe3]
and.or.t %d14, %d0, 31, %d15, 7

# CHECK-INST: and.or.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x3f,0xec]
and.or.t %d14, %d0, 31, %d15, 24

# CHECK-INST: and.or.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xbf,0xef]
and.or.t %d14, %d0, 31, %d15, 31

# CHECK-INST: and.or.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0x47,0x01,0x20,0xe0]
and.or.t %d14, %d1, 0, %d0, 0

# CHECK-INST: and.or.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0x47,0x01,0xa0,0xe3]
and.or.t %d14, %d1, 0, %d0, 7

# CHECK-INST: and.or.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0x47,0x01,0x20,0xec]
and.or.t %d14, %d1, 0, %d0, 24

# CHECK-INST: and.or.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0x47,0x01,0xa0,0xef]
and.or.t %d14, %d1, 0, %d0, 31

# CHECK-INST: and.or.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0x47,0x11,0x20,0xe0]
and.or.t %d14, %d1, 0, %d1, 0

# CHECK-INST: and.or.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0x47,0x11,0xa0,0xe3]
and.or.t %d14, %d1, 0, %d1, 7

# CHECK-INST: and.or.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0x47,0x11,0x20,0xec]
and.or.t %d14, %d1, 0, %d1, 24

# CHECK-INST: and.or.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0x47,0x11,0xa0,0xef]
and.or.t %d14, %d1, 0, %d1, 31

# CHECK-INST: and.or.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x20,0xe0]
and.or.t %d14, %d1, 0, %d14, 0

# CHECK-INST: and.or.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xa0,0xe3]
and.or.t %d14, %d1, 0, %d14, 7

# CHECK-INST: and.or.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x20,0xec]
and.or.t %d14, %d1, 0, %d14, 24

# CHECK-INST: and.or.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xa0,0xef]
and.or.t %d14, %d1, 0, %d14, 31

# CHECK-INST: and.or.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x20,0xe0]
and.or.t %d14, %d1, 0, %d15, 0

# CHECK-INST: and.or.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xa0,0xe3]
and.or.t %d14, %d1, 0, %d15, 7

# CHECK-INST: and.or.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x20,0xec]
and.or.t %d14, %d1, 0, %d15, 24

# CHECK-INST: and.or.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xa0,0xef]
and.or.t %d14, %d1, 0, %d15, 31

# CHECK-INST: and.or.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0x47,0x01,0x27,0xe0]
and.or.t %d14, %d1, 7, %d0, 0

# CHECK-INST: and.or.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0x47,0x01,0xa7,0xe3]
and.or.t %d14, %d1, 7, %d0, 7

# CHECK-INST: and.or.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0x47,0x01,0x27,0xec]
and.or.t %d14, %d1, 7, %d0, 24

# CHECK-INST: and.or.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0x47,0x01,0xa7,0xef]
and.or.t %d14, %d1, 7, %d0, 31

# CHECK-INST: and.or.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0x47,0x11,0x27,0xe0]
and.or.t %d14, %d1, 7, %d1, 0

# CHECK-INST: and.or.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0x47,0x11,0xa7,0xe3]
and.or.t %d14, %d1, 7, %d1, 7

# CHECK-INST: and.or.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0x47,0x11,0x27,0xec]
and.or.t %d14, %d1, 7, %d1, 24

# CHECK-INST: and.or.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0x47,0x11,0xa7,0xef]
and.or.t %d14, %d1, 7, %d1, 31

# CHECK-INST: and.or.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x27,0xe0]
and.or.t %d14, %d1, 7, %d14, 0

# CHECK-INST: and.or.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xa7,0xe3]
and.or.t %d14, %d1, 7, %d14, 7

# CHECK-INST: and.or.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x27,0xec]
and.or.t %d14, %d1, 7, %d14, 24

# CHECK-INST: and.or.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xa7,0xef]
and.or.t %d14, %d1, 7, %d14, 31

# CHECK-INST: and.or.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x27,0xe0]
and.or.t %d14, %d1, 7, %d15, 0

# CHECK-INST: and.or.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xa7,0xe3]
and.or.t %d14, %d1, 7, %d15, 7

# CHECK-INST: and.or.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x27,0xec]
and.or.t %d14, %d1, 7, %d15, 24

# CHECK-INST: and.or.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xa7,0xef]
and.or.t %d14, %d1, 7, %d15, 31

# CHECK-INST: and.or.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0x47,0x01,0x38,0xe0]
and.or.t %d14, %d1, 24, %d0, 0

# CHECK-INST: and.or.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0x47,0x01,0xb8,0xe3]
and.or.t %d14, %d1, 24, %d0, 7

# CHECK-INST: and.or.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0x47,0x01,0x38,0xec]
and.or.t %d14, %d1, 24, %d0, 24

# CHECK-INST: and.or.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0x47,0x01,0xb8,0xef]
and.or.t %d14, %d1, 24, %d0, 31

# CHECK-INST: and.or.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0x47,0x11,0x38,0xe0]
and.or.t %d14, %d1, 24, %d1, 0

# CHECK-INST: and.or.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0x47,0x11,0xb8,0xe3]
and.or.t %d14, %d1, 24, %d1, 7

# CHECK-INST: and.or.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0x47,0x11,0x38,0xec]
and.or.t %d14, %d1, 24, %d1, 24

# CHECK-INST: and.or.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0x47,0x11,0xb8,0xef]
and.or.t %d14, %d1, 24, %d1, 31

# CHECK-INST: and.or.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x38,0xe0]
and.or.t %d14, %d1, 24, %d14, 0

# CHECK-INST: and.or.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xb8,0xe3]
and.or.t %d14, %d1, 24, %d14, 7

# CHECK-INST: and.or.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x38,0xec]
and.or.t %d14, %d1, 24, %d14, 24

# CHECK-INST: and.or.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xb8,0xef]
and.or.t %d14, %d1, 24, %d14, 31

# CHECK-INST: and.or.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x38,0xe0]
and.or.t %d14, %d1, 24, %d15, 0

# CHECK-INST: and.or.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xb8,0xe3]
and.or.t %d14, %d1, 24, %d15, 7

# CHECK-INST: and.or.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x38,0xec]
and.or.t %d14, %d1, 24, %d15, 24

# CHECK-INST: and.or.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xb8,0xef]
and.or.t %d14, %d1, 24, %d15, 31

# CHECK-INST: and.or.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0x47,0x01,0x3f,0xe0]
and.or.t %d14, %d1, 31, %d0, 0

# CHECK-INST: and.or.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0x47,0x01,0xbf,0xe3]
and.or.t %d14, %d1, 31, %d0, 7

# CHECK-INST: and.or.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0x47,0x01,0x3f,0xec]
and.or.t %d14, %d1, 31, %d0, 24

# CHECK-INST: and.or.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0x47,0x01,0xbf,0xef]
and.or.t %d14, %d1, 31, %d0, 31

# CHECK-INST: and.or.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0x47,0x11,0x3f,0xe0]
and.or.t %d14, %d1, 31, %d1, 0

# CHECK-INST: and.or.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0x47,0x11,0xbf,0xe3]
and.or.t %d14, %d1, 31, %d1, 7

# CHECK-INST: and.or.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0x47,0x11,0x3f,0xec]
and.or.t %d14, %d1, 31, %d1, 24

# CHECK-INST: and.or.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0x47,0x11,0xbf,0xef]
and.or.t %d14, %d1, 31, %d1, 31

# CHECK-INST: and.or.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x3f,0xe0]
and.or.t %d14, %d1, 31, %d14, 0

# CHECK-INST: and.or.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xbf,0xe3]
and.or.t %d14, %d1, 31, %d14, 7

# CHECK-INST: and.or.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x3f,0xec]
and.or.t %d14, %d1, 31, %d14, 24

# CHECK-INST: and.or.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xbf,0xef]
and.or.t %d14, %d1, 31, %d14, 31

# CHECK-INST: and.or.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x3f,0xe0]
and.or.t %d14, %d1, 31, %d15, 0

# CHECK-INST: and.or.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xbf,0xe3]
and.or.t %d14, %d1, 31, %d15, 7

# CHECK-INST: and.or.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x3f,0xec]
and.or.t %d14, %d1, 31, %d15, 24

# CHECK-INST: and.or.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xbf,0xef]
and.or.t %d14, %d1, 31, %d15, 31

# CHECK-INST: and.or.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x20,0xe0]
and.or.t %d14, %d14, 0, %d0, 0

# CHECK-INST: and.or.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xa0,0xe3]
and.or.t %d14, %d14, 0, %d0, 7

# CHECK-INST: and.or.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x20,0xec]
and.or.t %d14, %d14, 0, %d0, 24

# CHECK-INST: and.or.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xa0,0xef]
and.or.t %d14, %d14, 0, %d0, 31

# CHECK-INST: and.or.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x20,0xe0]
and.or.t %d14, %d14, 0, %d1, 0

# CHECK-INST: and.or.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xa0,0xe3]
and.or.t %d14, %d14, 0, %d1, 7

# CHECK-INST: and.or.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x20,0xec]
and.or.t %d14, %d14, 0, %d1, 24

# CHECK-INST: and.or.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xa0,0xef]
and.or.t %d14, %d14, 0, %d1, 31

# CHECK-INST: and.or.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0x47,0xee,0x20,0xe0]
and.or.t %d14, %d14, 0, %d14, 0

# CHECK-INST: and.or.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0x47,0xee,0xa0,0xe3]
and.or.t %d14, %d14, 0, %d14, 7

# CHECK-INST: and.or.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0x47,0xee,0x20,0xec]
and.or.t %d14, %d14, 0, %d14, 24

# CHECK-INST: and.or.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0x47,0xee,0xa0,0xef]
and.or.t %d14, %d14, 0, %d14, 31

# CHECK-INST: and.or.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x20,0xe0]
and.or.t %d14, %d14, 0, %d15, 0

# CHECK-INST: and.or.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xa0,0xe3]
and.or.t %d14, %d14, 0, %d15, 7

# CHECK-INST: and.or.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x20,0xec]
and.or.t %d14, %d14, 0, %d15, 24

# CHECK-INST: and.or.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xa0,0xef]
and.or.t %d14, %d14, 0, %d15, 31

# CHECK-INST: and.or.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x27,0xe0]
and.or.t %d14, %d14, 7, %d0, 0

# CHECK-INST: and.or.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xa7,0xe3]
and.or.t %d14, %d14, 7, %d0, 7

# CHECK-INST: and.or.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x27,0xec]
and.or.t %d14, %d14, 7, %d0, 24

# CHECK-INST: and.or.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xa7,0xef]
and.or.t %d14, %d14, 7, %d0, 31

# CHECK-INST: and.or.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x27,0xe0]
and.or.t %d14, %d14, 7, %d1, 0

# CHECK-INST: and.or.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xa7,0xe3]
and.or.t %d14, %d14, 7, %d1, 7

# CHECK-INST: and.or.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x27,0xec]
and.or.t %d14, %d14, 7, %d1, 24

# CHECK-INST: and.or.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xa7,0xef]
and.or.t %d14, %d14, 7, %d1, 31

# CHECK-INST: and.or.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0x47,0xee,0x27,0xe0]
and.or.t %d14, %d14, 7, %d14, 0

# CHECK-INST: and.or.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0x47,0xee,0xa7,0xe3]
and.or.t %d14, %d14, 7, %d14, 7

# CHECK-INST: and.or.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0x47,0xee,0x27,0xec]
and.or.t %d14, %d14, 7, %d14, 24

# CHECK-INST: and.or.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0x47,0xee,0xa7,0xef]
and.or.t %d14, %d14, 7, %d14, 31

# CHECK-INST: and.or.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x27,0xe0]
and.or.t %d14, %d14, 7, %d15, 0

# CHECK-INST: and.or.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xa7,0xe3]
and.or.t %d14, %d14, 7, %d15, 7

# CHECK-INST: and.or.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x27,0xec]
and.or.t %d14, %d14, 7, %d15, 24

# CHECK-INST: and.or.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xa7,0xef]
and.or.t %d14, %d14, 7, %d15, 31

# CHECK-INST: and.or.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x38,0xe0]
and.or.t %d14, %d14, 24, %d0, 0

# CHECK-INST: and.or.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xb8,0xe3]
and.or.t %d14, %d14, 24, %d0, 7

# CHECK-INST: and.or.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x38,0xec]
and.or.t %d14, %d14, 24, %d0, 24

# CHECK-INST: and.or.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xb8,0xef]
and.or.t %d14, %d14, 24, %d0, 31

# CHECK-INST: and.or.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x38,0xe0]
and.or.t %d14, %d14, 24, %d1, 0

# CHECK-INST: and.or.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xb8,0xe3]
and.or.t %d14, %d14, 24, %d1, 7

# CHECK-INST: and.or.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x38,0xec]
and.or.t %d14, %d14, 24, %d1, 24

# CHECK-INST: and.or.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xb8,0xef]
and.or.t %d14, %d14, 24, %d1, 31

# CHECK-INST: and.or.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0x47,0xee,0x38,0xe0]
and.or.t %d14, %d14, 24, %d14, 0

# CHECK-INST: and.or.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0x47,0xee,0xb8,0xe3]
and.or.t %d14, %d14, 24, %d14, 7

# CHECK-INST: and.or.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0x47,0xee,0x38,0xec]
and.or.t %d14, %d14, 24, %d14, 24

# CHECK-INST: and.or.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0x47,0xee,0xb8,0xef]
and.or.t %d14, %d14, 24, %d14, 31

# CHECK-INST: and.or.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x38,0xe0]
and.or.t %d14, %d14, 24, %d15, 0

# CHECK-INST: and.or.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xb8,0xe3]
and.or.t %d14, %d14, 24, %d15, 7

# CHECK-INST: and.or.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x38,0xec]
and.or.t %d14, %d14, 24, %d15, 24

# CHECK-INST: and.or.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xb8,0xef]
and.or.t %d14, %d14, 24, %d15, 31

# CHECK-INST: and.or.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x3f,0xe0]
and.or.t %d14, %d14, 31, %d0, 0

# CHECK-INST: and.or.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xbf,0xe3]
and.or.t %d14, %d14, 31, %d0, 7

# CHECK-INST: and.or.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x3f,0xec]
and.or.t %d14, %d14, 31, %d0, 24

# CHECK-INST: and.or.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xbf,0xef]
and.or.t %d14, %d14, 31, %d0, 31

# CHECK-INST: and.or.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x3f,0xe0]
and.or.t %d14, %d14, 31, %d1, 0

# CHECK-INST: and.or.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xbf,0xe3]
and.or.t %d14, %d14, 31, %d1, 7

# CHECK-INST: and.or.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x3f,0xec]
and.or.t %d14, %d14, 31, %d1, 24

# CHECK-INST: and.or.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xbf,0xef]
and.or.t %d14, %d14, 31, %d1, 31

# CHECK-INST: and.or.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0x47,0xee,0x3f,0xe0]
and.or.t %d14, %d14, 31, %d14, 0

# CHECK-INST: and.or.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0x47,0xee,0xbf,0xe3]
and.or.t %d14, %d14, 31, %d14, 7

# CHECK-INST: and.or.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0x47,0xee,0x3f,0xec]
and.or.t %d14, %d14, 31, %d14, 24

# CHECK-INST: and.or.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0x47,0xee,0xbf,0xef]
and.or.t %d14, %d14, 31, %d14, 31

# CHECK-INST: and.or.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x3f,0xe0]
and.or.t %d14, %d14, 31, %d15, 0

# CHECK-INST: and.or.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xbf,0xe3]
and.or.t %d14, %d14, 31, %d15, 7

# CHECK-INST: and.or.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x3f,0xec]
and.or.t %d14, %d14, 31, %d15, 24

# CHECK-INST: and.or.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xbf,0xef]
and.or.t %d14, %d14, 31, %d15, 31

# CHECK-INST: and.or.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x20,0xe0]
and.or.t %d14, %d15, 0, %d0, 0

# CHECK-INST: and.or.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xa0,0xe3]
and.or.t %d14, %d15, 0, %d0, 7

# CHECK-INST: and.or.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x20,0xec]
and.or.t %d14, %d15, 0, %d0, 24

# CHECK-INST: and.or.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xa0,0xef]
and.or.t %d14, %d15, 0, %d0, 31

# CHECK-INST: and.or.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x20,0xe0]
and.or.t %d14, %d15, 0, %d1, 0

# CHECK-INST: and.or.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xa0,0xe3]
and.or.t %d14, %d15, 0, %d1, 7

# CHECK-INST: and.or.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x20,0xec]
and.or.t %d14, %d15, 0, %d1, 24

# CHECK-INST: and.or.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xa0,0xef]
and.or.t %d14, %d15, 0, %d1, 31

# CHECK-INST: and.or.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0x47,0xef,0x20,0xe0]
and.or.t %d14, %d15, 0, %d14, 0

# CHECK-INST: and.or.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0x47,0xef,0xa0,0xe3]
and.or.t %d14, %d15, 0, %d14, 7

# CHECK-INST: and.or.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0x47,0xef,0x20,0xec]
and.or.t %d14, %d15, 0, %d14, 24

# CHECK-INST: and.or.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0x47,0xef,0xa0,0xef]
and.or.t %d14, %d15, 0, %d14, 31

# CHECK-INST: and.or.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0x47,0xff,0x20,0xe0]
and.or.t %d14, %d15, 0, %d15, 0

# CHECK-INST: and.or.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0x47,0xff,0xa0,0xe3]
and.or.t %d14, %d15, 0, %d15, 7

# CHECK-INST: and.or.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0x47,0xff,0x20,0xec]
and.or.t %d14, %d15, 0, %d15, 24

# CHECK-INST: and.or.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0x47,0xff,0xa0,0xef]
and.or.t %d14, %d15, 0, %d15, 31

# CHECK-INST: and.or.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x27,0xe0]
and.or.t %d14, %d15, 7, %d0, 0

# CHECK-INST: and.or.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xa7,0xe3]
and.or.t %d14, %d15, 7, %d0, 7

# CHECK-INST: and.or.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x27,0xec]
and.or.t %d14, %d15, 7, %d0, 24

# CHECK-INST: and.or.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xa7,0xef]
and.or.t %d14, %d15, 7, %d0, 31

# CHECK-INST: and.or.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x27,0xe0]
and.or.t %d14, %d15, 7, %d1, 0

# CHECK-INST: and.or.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xa7,0xe3]
and.or.t %d14, %d15, 7, %d1, 7

# CHECK-INST: and.or.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x27,0xec]
and.or.t %d14, %d15, 7, %d1, 24

# CHECK-INST: and.or.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xa7,0xef]
and.or.t %d14, %d15, 7, %d1, 31

# CHECK-INST: and.or.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0x47,0xef,0x27,0xe0]
and.or.t %d14, %d15, 7, %d14, 0

# CHECK-INST: and.or.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0x47,0xef,0xa7,0xe3]
and.or.t %d14, %d15, 7, %d14, 7

# CHECK-INST: and.or.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0x47,0xef,0x27,0xec]
and.or.t %d14, %d15, 7, %d14, 24

# CHECK-INST: and.or.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0x47,0xef,0xa7,0xef]
and.or.t %d14, %d15, 7, %d14, 31

# CHECK-INST: and.or.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0x47,0xff,0x27,0xe0]
and.or.t %d14, %d15, 7, %d15, 0

# CHECK-INST: and.or.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0x47,0xff,0xa7,0xe3]
and.or.t %d14, %d15, 7, %d15, 7

# CHECK-INST: and.or.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0x47,0xff,0x27,0xec]
and.or.t %d14, %d15, 7, %d15, 24

# CHECK-INST: and.or.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0x47,0xff,0xa7,0xef]
and.or.t %d14, %d15, 7, %d15, 31

# CHECK-INST: and.or.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x38,0xe0]
and.or.t %d14, %d15, 24, %d0, 0

# CHECK-INST: and.or.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xb8,0xe3]
and.or.t %d14, %d15, 24, %d0, 7

# CHECK-INST: and.or.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x38,0xec]
and.or.t %d14, %d15, 24, %d0, 24

# CHECK-INST: and.or.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xb8,0xef]
and.or.t %d14, %d15, 24, %d0, 31

# CHECK-INST: and.or.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x38,0xe0]
and.or.t %d14, %d15, 24, %d1, 0

# CHECK-INST: and.or.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xb8,0xe3]
and.or.t %d14, %d15, 24, %d1, 7

# CHECK-INST: and.or.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x38,0xec]
and.or.t %d14, %d15, 24, %d1, 24

# CHECK-INST: and.or.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xb8,0xef]
and.or.t %d14, %d15, 24, %d1, 31

# CHECK-INST: and.or.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0x47,0xef,0x38,0xe0]
and.or.t %d14, %d15, 24, %d14, 0

# CHECK-INST: and.or.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0x47,0xef,0xb8,0xe3]
and.or.t %d14, %d15, 24, %d14, 7

# CHECK-INST: and.or.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0x47,0xef,0x38,0xec]
and.or.t %d14, %d15, 24, %d14, 24

# CHECK-INST: and.or.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0x47,0xef,0xb8,0xef]
and.or.t %d14, %d15, 24, %d14, 31

# CHECK-INST: and.or.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0x47,0xff,0x38,0xe0]
and.or.t %d14, %d15, 24, %d15, 0

# CHECK-INST: and.or.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0x47,0xff,0xb8,0xe3]
and.or.t %d14, %d15, 24, %d15, 7

# CHECK-INST: and.or.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0x47,0xff,0x38,0xec]
and.or.t %d14, %d15, 24, %d15, 24

# CHECK-INST: and.or.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0x47,0xff,0xb8,0xef]
and.or.t %d14, %d15, 24, %d15, 31

# CHECK-INST: and.or.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x3f,0xe0]
and.or.t %d14, %d15, 31, %d0, 0

# CHECK-INST: and.or.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xbf,0xe3]
and.or.t %d14, %d15, 31, %d0, 7

# CHECK-INST: and.or.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x3f,0xec]
and.or.t %d14, %d15, 31, %d0, 24

# CHECK-INST: and.or.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xbf,0xef]
and.or.t %d14, %d15, 31, %d0, 31

# CHECK-INST: and.or.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x3f,0xe0]
and.or.t %d14, %d15, 31, %d1, 0

# CHECK-INST: and.or.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xbf,0xe3]
and.or.t %d14, %d15, 31, %d1, 7

# CHECK-INST: and.or.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x3f,0xec]
and.or.t %d14, %d15, 31, %d1, 24

# CHECK-INST: and.or.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xbf,0xef]
and.or.t %d14, %d15, 31, %d1, 31

# CHECK-INST: and.or.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0x47,0xef,0x3f,0xe0]
and.or.t %d14, %d15, 31, %d14, 0

# CHECK-INST: and.or.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0x47,0xef,0xbf,0xe3]
and.or.t %d14, %d15, 31, %d14, 7

# CHECK-INST: and.or.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0x47,0xef,0x3f,0xec]
and.or.t %d14, %d15, 31, %d14, 24

# CHECK-INST: and.or.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0x47,0xef,0xbf,0xef]
and.or.t %d14, %d15, 31, %d14, 31

# CHECK-INST: and.or.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0x47,0xff,0x3f,0xe0]
and.or.t %d14, %d15, 31, %d15, 0

# CHECK-INST: and.or.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0x47,0xff,0xbf,0xe3]
and.or.t %d14, %d15, 31, %d15, 7

# CHECK-INST: and.or.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0x47,0xff,0x3f,0xec]
and.or.t %d14, %d15, 31, %d15, 24

# CHECK-INST: and.or.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0x47,0xff,0xbf,0xef]
and.or.t %d14, %d15, 31, %d15, 31

# CHECK-INST: and.or.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0x47,0x00,0x20,0xf0]
and.or.t %d15, %d0, 0, %d0, 0

# CHECK-INST: and.or.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0x47,0x00,0xa0,0xf3]
and.or.t %d15, %d0, 0, %d0, 7

# CHECK-INST: and.or.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0x47,0x00,0x20,0xfc]
and.or.t %d15, %d0, 0, %d0, 24

# CHECK-INST: and.or.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0x47,0x00,0xa0,0xff]
and.or.t %d15, %d0, 0, %d0, 31

# CHECK-INST: and.or.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0x47,0x10,0x20,0xf0]
and.or.t %d15, %d0, 0, %d1, 0

# CHECK-INST: and.or.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0x47,0x10,0xa0,0xf3]
and.or.t %d15, %d0, 0, %d1, 7

# CHECK-INST: and.or.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0x47,0x10,0x20,0xfc]
and.or.t %d15, %d0, 0, %d1, 24

# CHECK-INST: and.or.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0x47,0x10,0xa0,0xff]
and.or.t %d15, %d0, 0, %d1, 31

# CHECK-INST: and.or.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x20,0xf0]
and.or.t %d15, %d0, 0, %d14, 0

# CHECK-INST: and.or.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xa0,0xf3]
and.or.t %d15, %d0, 0, %d14, 7

# CHECK-INST: and.or.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x20,0xfc]
and.or.t %d15, %d0, 0, %d14, 24

# CHECK-INST: and.or.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xa0,0xff]
and.or.t %d15, %d0, 0, %d14, 31

# CHECK-INST: and.or.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x20,0xf0]
and.or.t %d15, %d0, 0, %d15, 0

# CHECK-INST: and.or.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xa0,0xf3]
and.or.t %d15, %d0, 0, %d15, 7

# CHECK-INST: and.or.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x20,0xfc]
and.or.t %d15, %d0, 0, %d15, 24

# CHECK-INST: and.or.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xa0,0xff]
and.or.t %d15, %d0, 0, %d15, 31

# CHECK-INST: and.or.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0x47,0x00,0x27,0xf0]
and.or.t %d15, %d0, 7, %d0, 0

# CHECK-INST: and.or.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0x47,0x00,0xa7,0xf3]
and.or.t %d15, %d0, 7, %d0, 7

# CHECK-INST: and.or.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0x47,0x00,0x27,0xfc]
and.or.t %d15, %d0, 7, %d0, 24

# CHECK-INST: and.or.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0x47,0x00,0xa7,0xff]
and.or.t %d15, %d0, 7, %d0, 31

# CHECK-INST: and.or.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0x47,0x10,0x27,0xf0]
and.or.t %d15, %d0, 7, %d1, 0

# CHECK-INST: and.or.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0x47,0x10,0xa7,0xf3]
and.or.t %d15, %d0, 7, %d1, 7

# CHECK-INST: and.or.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0x47,0x10,0x27,0xfc]
and.or.t %d15, %d0, 7, %d1, 24

# CHECK-INST: and.or.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0x47,0x10,0xa7,0xff]
and.or.t %d15, %d0, 7, %d1, 31

# CHECK-INST: and.or.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x27,0xf0]
and.or.t %d15, %d0, 7, %d14, 0

# CHECK-INST: and.or.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xa7,0xf3]
and.or.t %d15, %d0, 7, %d14, 7

# CHECK-INST: and.or.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x27,0xfc]
and.or.t %d15, %d0, 7, %d14, 24

# CHECK-INST: and.or.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xa7,0xff]
and.or.t %d15, %d0, 7, %d14, 31

# CHECK-INST: and.or.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x27,0xf0]
and.or.t %d15, %d0, 7, %d15, 0

# CHECK-INST: and.or.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xa7,0xf3]
and.or.t %d15, %d0, 7, %d15, 7

# CHECK-INST: and.or.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x27,0xfc]
and.or.t %d15, %d0, 7, %d15, 24

# CHECK-INST: and.or.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xa7,0xff]
and.or.t %d15, %d0, 7, %d15, 31

# CHECK-INST: and.or.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0x47,0x00,0x38,0xf0]
and.or.t %d15, %d0, 24, %d0, 0

# CHECK-INST: and.or.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0x47,0x00,0xb8,0xf3]
and.or.t %d15, %d0, 24, %d0, 7

# CHECK-INST: and.or.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0x47,0x00,0x38,0xfc]
and.or.t %d15, %d0, 24, %d0, 24

# CHECK-INST: and.or.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0x47,0x00,0xb8,0xff]
and.or.t %d15, %d0, 24, %d0, 31

# CHECK-INST: and.or.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0x47,0x10,0x38,0xf0]
and.or.t %d15, %d0, 24, %d1, 0

# CHECK-INST: and.or.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0x47,0x10,0xb8,0xf3]
and.or.t %d15, %d0, 24, %d1, 7

# CHECK-INST: and.or.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0x47,0x10,0x38,0xfc]
and.or.t %d15, %d0, 24, %d1, 24

# CHECK-INST: and.or.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0x47,0x10,0xb8,0xff]
and.or.t %d15, %d0, 24, %d1, 31

# CHECK-INST: and.or.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x38,0xf0]
and.or.t %d15, %d0, 24, %d14, 0

# CHECK-INST: and.or.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xb8,0xf3]
and.or.t %d15, %d0, 24, %d14, 7

# CHECK-INST: and.or.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x38,0xfc]
and.or.t %d15, %d0, 24, %d14, 24

# CHECK-INST: and.or.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xb8,0xff]
and.or.t %d15, %d0, 24, %d14, 31

# CHECK-INST: and.or.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x38,0xf0]
and.or.t %d15, %d0, 24, %d15, 0

# CHECK-INST: and.or.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xb8,0xf3]
and.or.t %d15, %d0, 24, %d15, 7

# CHECK-INST: and.or.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x38,0xfc]
and.or.t %d15, %d0, 24, %d15, 24

# CHECK-INST: and.or.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xb8,0xff]
and.or.t %d15, %d0, 24, %d15, 31

# CHECK-INST: and.or.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0x47,0x00,0x3f,0xf0]
and.or.t %d15, %d0, 31, %d0, 0

# CHECK-INST: and.or.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0x47,0x00,0xbf,0xf3]
and.or.t %d15, %d0, 31, %d0, 7

# CHECK-INST: and.or.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0x47,0x00,0x3f,0xfc]
and.or.t %d15, %d0, 31, %d0, 24

# CHECK-INST: and.or.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0x47,0x00,0xbf,0xff]
and.or.t %d15, %d0, 31, %d0, 31

# CHECK-INST: and.or.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0x47,0x10,0x3f,0xf0]
and.or.t %d15, %d0, 31, %d1, 0

# CHECK-INST: and.or.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0x47,0x10,0xbf,0xf3]
and.or.t %d15, %d0, 31, %d1, 7

# CHECK-INST: and.or.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0x47,0x10,0x3f,0xfc]
and.or.t %d15, %d0, 31, %d1, 24

# CHECK-INST: and.or.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0x47,0x10,0xbf,0xff]
and.or.t %d15, %d0, 31, %d1, 31

# CHECK-INST: and.or.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0x47,0xe0,0x3f,0xf0]
and.or.t %d15, %d0, 31, %d14, 0

# CHECK-INST: and.or.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0x47,0xe0,0xbf,0xf3]
and.or.t %d15, %d0, 31, %d14, 7

# CHECK-INST: and.or.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0x47,0xe0,0x3f,0xfc]
and.or.t %d15, %d0, 31, %d14, 24

# CHECK-INST: and.or.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0x47,0xe0,0xbf,0xff]
and.or.t %d15, %d0, 31, %d14, 31

# CHECK-INST: and.or.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0x47,0xf0,0x3f,0xf0]
and.or.t %d15, %d0, 31, %d15, 0

# CHECK-INST: and.or.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0x47,0xf0,0xbf,0xf3]
and.or.t %d15, %d0, 31, %d15, 7

# CHECK-INST: and.or.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0x47,0xf0,0x3f,0xfc]
and.or.t %d15, %d0, 31, %d15, 24

# CHECK-INST: and.or.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0x47,0xf0,0xbf,0xff]
and.or.t %d15, %d0, 31, %d15, 31

# CHECK-INST: and.or.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0x47,0x01,0x20,0xf0]
and.or.t %d15, %d1, 0, %d0, 0

# CHECK-INST: and.or.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0x47,0x01,0xa0,0xf3]
and.or.t %d15, %d1, 0, %d0, 7

# CHECK-INST: and.or.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0x47,0x01,0x20,0xfc]
and.or.t %d15, %d1, 0, %d0, 24

# CHECK-INST: and.or.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0x47,0x01,0xa0,0xff]
and.or.t %d15, %d1, 0, %d0, 31

# CHECK-INST: and.or.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0x47,0x11,0x20,0xf0]
and.or.t %d15, %d1, 0, %d1, 0

# CHECK-INST: and.or.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0x47,0x11,0xa0,0xf3]
and.or.t %d15, %d1, 0, %d1, 7

# CHECK-INST: and.or.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0x47,0x11,0x20,0xfc]
and.or.t %d15, %d1, 0, %d1, 24

# CHECK-INST: and.or.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0x47,0x11,0xa0,0xff]
and.or.t %d15, %d1, 0, %d1, 31

# CHECK-INST: and.or.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x20,0xf0]
and.or.t %d15, %d1, 0, %d14, 0

# CHECK-INST: and.or.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xa0,0xf3]
and.or.t %d15, %d1, 0, %d14, 7

# CHECK-INST: and.or.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x20,0xfc]
and.or.t %d15, %d1, 0, %d14, 24

# CHECK-INST: and.or.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xa0,0xff]
and.or.t %d15, %d1, 0, %d14, 31

# CHECK-INST: and.or.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x20,0xf0]
and.or.t %d15, %d1, 0, %d15, 0

# CHECK-INST: and.or.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xa0,0xf3]
and.or.t %d15, %d1, 0, %d15, 7

# CHECK-INST: and.or.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x20,0xfc]
and.or.t %d15, %d1, 0, %d15, 24

# CHECK-INST: and.or.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xa0,0xff]
and.or.t %d15, %d1, 0, %d15, 31

# CHECK-INST: and.or.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0x47,0x01,0x27,0xf0]
and.or.t %d15, %d1, 7, %d0, 0

# CHECK-INST: and.or.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0x47,0x01,0xa7,0xf3]
and.or.t %d15, %d1, 7, %d0, 7

# CHECK-INST: and.or.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0x47,0x01,0x27,0xfc]
and.or.t %d15, %d1, 7, %d0, 24

# CHECK-INST: and.or.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0x47,0x01,0xa7,0xff]
and.or.t %d15, %d1, 7, %d0, 31

# CHECK-INST: and.or.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0x47,0x11,0x27,0xf0]
and.or.t %d15, %d1, 7, %d1, 0

# CHECK-INST: and.or.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0x47,0x11,0xa7,0xf3]
and.or.t %d15, %d1, 7, %d1, 7

# CHECK-INST: and.or.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0x47,0x11,0x27,0xfc]
and.or.t %d15, %d1, 7, %d1, 24

# CHECK-INST: and.or.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0x47,0x11,0xa7,0xff]
and.or.t %d15, %d1, 7, %d1, 31

# CHECK-INST: and.or.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x27,0xf0]
and.or.t %d15, %d1, 7, %d14, 0

# CHECK-INST: and.or.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xa7,0xf3]
and.or.t %d15, %d1, 7, %d14, 7

# CHECK-INST: and.or.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x27,0xfc]
and.or.t %d15, %d1, 7, %d14, 24

# CHECK-INST: and.or.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xa7,0xff]
and.or.t %d15, %d1, 7, %d14, 31

# CHECK-INST: and.or.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x27,0xf0]
and.or.t %d15, %d1, 7, %d15, 0

# CHECK-INST: and.or.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xa7,0xf3]
and.or.t %d15, %d1, 7, %d15, 7

# CHECK-INST: and.or.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x27,0xfc]
and.or.t %d15, %d1, 7, %d15, 24

# CHECK-INST: and.or.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xa7,0xff]
and.or.t %d15, %d1, 7, %d15, 31

# CHECK-INST: and.or.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0x47,0x01,0x38,0xf0]
and.or.t %d15, %d1, 24, %d0, 0

# CHECK-INST: and.or.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0x47,0x01,0xb8,0xf3]
and.or.t %d15, %d1, 24, %d0, 7

# CHECK-INST: and.or.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0x47,0x01,0x38,0xfc]
and.or.t %d15, %d1, 24, %d0, 24

# CHECK-INST: and.or.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0x47,0x01,0xb8,0xff]
and.or.t %d15, %d1, 24, %d0, 31

# CHECK-INST: and.or.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0x47,0x11,0x38,0xf0]
and.or.t %d15, %d1, 24, %d1, 0

# CHECK-INST: and.or.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0x47,0x11,0xb8,0xf3]
and.or.t %d15, %d1, 24, %d1, 7

# CHECK-INST: and.or.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0x47,0x11,0x38,0xfc]
and.or.t %d15, %d1, 24, %d1, 24

# CHECK-INST: and.or.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0x47,0x11,0xb8,0xff]
and.or.t %d15, %d1, 24, %d1, 31

# CHECK-INST: and.or.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x38,0xf0]
and.or.t %d15, %d1, 24, %d14, 0

# CHECK-INST: and.or.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xb8,0xf3]
and.or.t %d15, %d1, 24, %d14, 7

# CHECK-INST: and.or.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x38,0xfc]
and.or.t %d15, %d1, 24, %d14, 24

# CHECK-INST: and.or.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xb8,0xff]
and.or.t %d15, %d1, 24, %d14, 31

# CHECK-INST: and.or.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x38,0xf0]
and.or.t %d15, %d1, 24, %d15, 0

# CHECK-INST: and.or.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xb8,0xf3]
and.or.t %d15, %d1, 24, %d15, 7

# CHECK-INST: and.or.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x38,0xfc]
and.or.t %d15, %d1, 24, %d15, 24

# CHECK-INST: and.or.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xb8,0xff]
and.or.t %d15, %d1, 24, %d15, 31

# CHECK-INST: and.or.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0x47,0x01,0x3f,0xf0]
and.or.t %d15, %d1, 31, %d0, 0

# CHECK-INST: and.or.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0x47,0x01,0xbf,0xf3]
and.or.t %d15, %d1, 31, %d0, 7

# CHECK-INST: and.or.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0x47,0x01,0x3f,0xfc]
and.or.t %d15, %d1, 31, %d0, 24

# CHECK-INST: and.or.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0x47,0x01,0xbf,0xff]
and.or.t %d15, %d1, 31, %d0, 31

# CHECK-INST: and.or.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0x47,0x11,0x3f,0xf0]
and.or.t %d15, %d1, 31, %d1, 0

# CHECK-INST: and.or.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0x47,0x11,0xbf,0xf3]
and.or.t %d15, %d1, 31, %d1, 7

# CHECK-INST: and.or.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0x47,0x11,0x3f,0xfc]
and.or.t %d15, %d1, 31, %d1, 24

# CHECK-INST: and.or.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0x47,0x11,0xbf,0xff]
and.or.t %d15, %d1, 31, %d1, 31

# CHECK-INST: and.or.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0x47,0xe1,0x3f,0xf0]
and.or.t %d15, %d1, 31, %d14, 0

# CHECK-INST: and.or.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0x47,0xe1,0xbf,0xf3]
and.or.t %d15, %d1, 31, %d14, 7

# CHECK-INST: and.or.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0x47,0xe1,0x3f,0xfc]
and.or.t %d15, %d1, 31, %d14, 24

# CHECK-INST: and.or.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0x47,0xe1,0xbf,0xff]
and.or.t %d15, %d1, 31, %d14, 31

# CHECK-INST: and.or.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0x47,0xf1,0x3f,0xf0]
and.or.t %d15, %d1, 31, %d15, 0

# CHECK-INST: and.or.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0x47,0xf1,0xbf,0xf3]
and.or.t %d15, %d1, 31, %d15, 7

# CHECK-INST: and.or.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0x47,0xf1,0x3f,0xfc]
and.or.t %d15, %d1, 31, %d15, 24

# CHECK-INST: and.or.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0x47,0xf1,0xbf,0xff]
and.or.t %d15, %d1, 31, %d15, 31

# CHECK-INST: and.or.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x20,0xf0]
and.or.t %d15, %d14, 0, %d0, 0

# CHECK-INST: and.or.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xa0,0xf3]
and.or.t %d15, %d14, 0, %d0, 7

# CHECK-INST: and.or.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x20,0xfc]
and.or.t %d15, %d14, 0, %d0, 24

# CHECK-INST: and.or.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xa0,0xff]
and.or.t %d15, %d14, 0, %d0, 31

# CHECK-INST: and.or.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x20,0xf0]
and.or.t %d15, %d14, 0, %d1, 0

# CHECK-INST: and.or.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xa0,0xf3]
and.or.t %d15, %d14, 0, %d1, 7

# CHECK-INST: and.or.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x20,0xfc]
and.or.t %d15, %d14, 0, %d1, 24

# CHECK-INST: and.or.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xa0,0xff]
and.or.t %d15, %d14, 0, %d1, 31

# CHECK-INST: and.or.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0x47,0xee,0x20,0xf0]
and.or.t %d15, %d14, 0, %d14, 0

# CHECK-INST: and.or.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0x47,0xee,0xa0,0xf3]
and.or.t %d15, %d14, 0, %d14, 7

# CHECK-INST: and.or.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0x47,0xee,0x20,0xfc]
and.or.t %d15, %d14, 0, %d14, 24

# CHECK-INST: and.or.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0x47,0xee,0xa0,0xff]
and.or.t %d15, %d14, 0, %d14, 31

# CHECK-INST: and.or.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x20,0xf0]
and.or.t %d15, %d14, 0, %d15, 0

# CHECK-INST: and.or.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xa0,0xf3]
and.or.t %d15, %d14, 0, %d15, 7

# CHECK-INST: and.or.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x20,0xfc]
and.or.t %d15, %d14, 0, %d15, 24

# CHECK-INST: and.or.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xa0,0xff]
and.or.t %d15, %d14, 0, %d15, 31

# CHECK-INST: and.or.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x27,0xf0]
and.or.t %d15, %d14, 7, %d0, 0

# CHECK-INST: and.or.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xa7,0xf3]
and.or.t %d15, %d14, 7, %d0, 7

# CHECK-INST: and.or.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x27,0xfc]
and.or.t %d15, %d14, 7, %d0, 24

# CHECK-INST: and.or.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xa7,0xff]
and.or.t %d15, %d14, 7, %d0, 31

# CHECK-INST: and.or.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x27,0xf0]
and.or.t %d15, %d14, 7, %d1, 0

# CHECK-INST: and.or.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xa7,0xf3]
and.or.t %d15, %d14, 7, %d1, 7

# CHECK-INST: and.or.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x27,0xfc]
and.or.t %d15, %d14, 7, %d1, 24

# CHECK-INST: and.or.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xa7,0xff]
and.or.t %d15, %d14, 7, %d1, 31

# CHECK-INST: and.or.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0x47,0xee,0x27,0xf0]
and.or.t %d15, %d14, 7, %d14, 0

# CHECK-INST: and.or.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0x47,0xee,0xa7,0xf3]
and.or.t %d15, %d14, 7, %d14, 7

# CHECK-INST: and.or.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0x47,0xee,0x27,0xfc]
and.or.t %d15, %d14, 7, %d14, 24

# CHECK-INST: and.or.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0x47,0xee,0xa7,0xff]
and.or.t %d15, %d14, 7, %d14, 31

# CHECK-INST: and.or.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x27,0xf0]
and.or.t %d15, %d14, 7, %d15, 0

# CHECK-INST: and.or.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xa7,0xf3]
and.or.t %d15, %d14, 7, %d15, 7

# CHECK-INST: and.or.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x27,0xfc]
and.or.t %d15, %d14, 7, %d15, 24

# CHECK-INST: and.or.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xa7,0xff]
and.or.t %d15, %d14, 7, %d15, 31

# CHECK-INST: and.or.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x38,0xf0]
and.or.t %d15, %d14, 24, %d0, 0

# CHECK-INST: and.or.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xb8,0xf3]
and.or.t %d15, %d14, 24, %d0, 7

# CHECK-INST: and.or.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x38,0xfc]
and.or.t %d15, %d14, 24, %d0, 24

# CHECK-INST: and.or.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xb8,0xff]
and.or.t %d15, %d14, 24, %d0, 31

# CHECK-INST: and.or.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x38,0xf0]
and.or.t %d15, %d14, 24, %d1, 0

# CHECK-INST: and.or.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xb8,0xf3]
and.or.t %d15, %d14, 24, %d1, 7

# CHECK-INST: and.or.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x38,0xfc]
and.or.t %d15, %d14, 24, %d1, 24

# CHECK-INST: and.or.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xb8,0xff]
and.or.t %d15, %d14, 24, %d1, 31

# CHECK-INST: and.or.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0x47,0xee,0x38,0xf0]
and.or.t %d15, %d14, 24, %d14, 0

# CHECK-INST: and.or.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0x47,0xee,0xb8,0xf3]
and.or.t %d15, %d14, 24, %d14, 7

# CHECK-INST: and.or.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0x47,0xee,0x38,0xfc]
and.or.t %d15, %d14, 24, %d14, 24

# CHECK-INST: and.or.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0x47,0xee,0xb8,0xff]
and.or.t %d15, %d14, 24, %d14, 31

# CHECK-INST: and.or.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x38,0xf0]
and.or.t %d15, %d14, 24, %d15, 0

# CHECK-INST: and.or.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xb8,0xf3]
and.or.t %d15, %d14, 24, %d15, 7

# CHECK-INST: and.or.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x38,0xfc]
and.or.t %d15, %d14, 24, %d15, 24

# CHECK-INST: and.or.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xb8,0xff]
and.or.t %d15, %d14, 24, %d15, 31

# CHECK-INST: and.or.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0x47,0x0e,0x3f,0xf0]
and.or.t %d15, %d14, 31, %d0, 0

# CHECK-INST: and.or.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0x47,0x0e,0xbf,0xf3]
and.or.t %d15, %d14, 31, %d0, 7

# CHECK-INST: and.or.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0x47,0x0e,0x3f,0xfc]
and.or.t %d15, %d14, 31, %d0, 24

# CHECK-INST: and.or.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0x47,0x0e,0xbf,0xff]
and.or.t %d15, %d14, 31, %d0, 31

# CHECK-INST: and.or.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0x47,0x1e,0x3f,0xf0]
and.or.t %d15, %d14, 31, %d1, 0

# CHECK-INST: and.or.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0x47,0x1e,0xbf,0xf3]
and.or.t %d15, %d14, 31, %d1, 7

# CHECK-INST: and.or.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0x47,0x1e,0x3f,0xfc]
and.or.t %d15, %d14, 31, %d1, 24

# CHECK-INST: and.or.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0x47,0x1e,0xbf,0xff]
and.or.t %d15, %d14, 31, %d1, 31

# CHECK-INST: and.or.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0x47,0xee,0x3f,0xf0]
and.or.t %d15, %d14, 31, %d14, 0

# CHECK-INST: and.or.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0x47,0xee,0xbf,0xf3]
and.or.t %d15, %d14, 31, %d14, 7

# CHECK-INST: and.or.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0x47,0xee,0x3f,0xfc]
and.or.t %d15, %d14, 31, %d14, 24

# CHECK-INST: and.or.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0x47,0xee,0xbf,0xff]
and.or.t %d15, %d14, 31, %d14, 31

# CHECK-INST: and.or.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0x47,0xfe,0x3f,0xf0]
and.or.t %d15, %d14, 31, %d15, 0

# CHECK-INST: and.or.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0x47,0xfe,0xbf,0xf3]
and.or.t %d15, %d14, 31, %d15, 7

# CHECK-INST: and.or.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0x47,0xfe,0x3f,0xfc]
and.or.t %d15, %d14, 31, %d15, 24

# CHECK-INST: and.or.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0x47,0xfe,0xbf,0xff]
and.or.t %d15, %d14, 31, %d15, 31

# CHECK-INST: and.or.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x20,0xf0]
and.or.t %d15, %d15, 0, %d0, 0

# CHECK-INST: and.or.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xa0,0xf3]
and.or.t %d15, %d15, 0, %d0, 7

# CHECK-INST: and.or.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x20,0xfc]
and.or.t %d15, %d15, 0, %d0, 24

# CHECK-INST: and.or.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xa0,0xff]
and.or.t %d15, %d15, 0, %d0, 31

# CHECK-INST: and.or.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x20,0xf0]
and.or.t %d15, %d15, 0, %d1, 0

# CHECK-INST: and.or.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xa0,0xf3]
and.or.t %d15, %d15, 0, %d1, 7

# CHECK-INST: and.or.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x20,0xfc]
and.or.t %d15, %d15, 0, %d1, 24

# CHECK-INST: and.or.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xa0,0xff]
and.or.t %d15, %d15, 0, %d1, 31

# CHECK-INST: and.or.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0x47,0xef,0x20,0xf0]
and.or.t %d15, %d15, 0, %d14, 0

# CHECK-INST: and.or.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0x47,0xef,0xa0,0xf3]
and.or.t %d15, %d15, 0, %d14, 7

# CHECK-INST: and.or.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0x47,0xef,0x20,0xfc]
and.or.t %d15, %d15, 0, %d14, 24

# CHECK-INST: and.or.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0x47,0xef,0xa0,0xff]
and.or.t %d15, %d15, 0, %d14, 31

# CHECK-INST: and.or.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0x47,0xff,0x20,0xf0]
and.or.t %d15, %d15, 0, %d15, 0

# CHECK-INST: and.or.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0x47,0xff,0xa0,0xf3]
and.or.t %d15, %d15, 0, %d15, 7

# CHECK-INST: and.or.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0x47,0xff,0x20,0xfc]
and.or.t %d15, %d15, 0, %d15, 24

# CHECK-INST: and.or.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0x47,0xff,0xa0,0xff]
and.or.t %d15, %d15, 0, %d15, 31

# CHECK-INST: and.or.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x27,0xf0]
and.or.t %d15, %d15, 7, %d0, 0

# CHECK-INST: and.or.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xa7,0xf3]
and.or.t %d15, %d15, 7, %d0, 7

# CHECK-INST: and.or.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x27,0xfc]
and.or.t %d15, %d15, 7, %d0, 24

# CHECK-INST: and.or.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xa7,0xff]
and.or.t %d15, %d15, 7, %d0, 31

# CHECK-INST: and.or.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x27,0xf0]
and.or.t %d15, %d15, 7, %d1, 0

# CHECK-INST: and.or.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xa7,0xf3]
and.or.t %d15, %d15, 7, %d1, 7

# CHECK-INST: and.or.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x27,0xfc]
and.or.t %d15, %d15, 7, %d1, 24

# CHECK-INST: and.or.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xa7,0xff]
and.or.t %d15, %d15, 7, %d1, 31

# CHECK-INST: and.or.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0x47,0xef,0x27,0xf0]
and.or.t %d15, %d15, 7, %d14, 0

# CHECK-INST: and.or.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0x47,0xef,0xa7,0xf3]
and.or.t %d15, %d15, 7, %d14, 7

# CHECK-INST: and.or.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0x47,0xef,0x27,0xfc]
and.or.t %d15, %d15, 7, %d14, 24

# CHECK-INST: and.or.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0x47,0xef,0xa7,0xff]
and.or.t %d15, %d15, 7, %d14, 31

# CHECK-INST: and.or.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0x47,0xff,0x27,0xf0]
and.or.t %d15, %d15, 7, %d15, 0

# CHECK-INST: and.or.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0x47,0xff,0xa7,0xf3]
and.or.t %d15, %d15, 7, %d15, 7

# CHECK-INST: and.or.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0x47,0xff,0x27,0xfc]
and.or.t %d15, %d15, 7, %d15, 24

# CHECK-INST: and.or.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0x47,0xff,0xa7,0xff]
and.or.t %d15, %d15, 7, %d15, 31

# CHECK-INST: and.or.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x38,0xf0]
and.or.t %d15, %d15, 24, %d0, 0

# CHECK-INST: and.or.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xb8,0xf3]
and.or.t %d15, %d15, 24, %d0, 7

# CHECK-INST: and.or.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x38,0xfc]
and.or.t %d15, %d15, 24, %d0, 24

# CHECK-INST: and.or.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xb8,0xff]
and.or.t %d15, %d15, 24, %d0, 31

# CHECK-INST: and.or.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x38,0xf0]
and.or.t %d15, %d15, 24, %d1, 0

# CHECK-INST: and.or.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xb8,0xf3]
and.or.t %d15, %d15, 24, %d1, 7

# CHECK-INST: and.or.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x38,0xfc]
and.or.t %d15, %d15, 24, %d1, 24

# CHECK-INST: and.or.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xb8,0xff]
and.or.t %d15, %d15, 24, %d1, 31

# CHECK-INST: and.or.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0x47,0xef,0x38,0xf0]
and.or.t %d15, %d15, 24, %d14, 0

# CHECK-INST: and.or.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0x47,0xef,0xb8,0xf3]
and.or.t %d15, %d15, 24, %d14, 7

# CHECK-INST: and.or.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0x47,0xef,0x38,0xfc]
and.or.t %d15, %d15, 24, %d14, 24

# CHECK-INST: and.or.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0x47,0xef,0xb8,0xff]
and.or.t %d15, %d15, 24, %d14, 31

# CHECK-INST: and.or.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0x47,0xff,0x38,0xf0]
and.or.t %d15, %d15, 24, %d15, 0

# CHECK-INST: and.or.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0x47,0xff,0xb8,0xf3]
and.or.t %d15, %d15, 24, %d15, 7

# CHECK-INST: and.or.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0x47,0xff,0x38,0xfc]
and.or.t %d15, %d15, 24, %d15, 24

# CHECK-INST: and.or.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0x47,0xff,0xb8,0xff]
and.or.t %d15, %d15, 24, %d15, 31

# CHECK-INST: and.or.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0x47,0x0f,0x3f,0xf0]
and.or.t %d15, %d15, 31, %d0, 0

# CHECK-INST: and.or.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0x47,0x0f,0xbf,0xf3]
and.or.t %d15, %d15, 31, %d0, 7

# CHECK-INST: and.or.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0x47,0x0f,0x3f,0xfc]
and.or.t %d15, %d15, 31, %d0, 24

# CHECK-INST: and.or.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0x47,0x0f,0xbf,0xff]
and.or.t %d15, %d15, 31, %d0, 31

# CHECK-INST: and.or.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0x47,0x1f,0x3f,0xf0]
and.or.t %d15, %d15, 31, %d1, 0

# CHECK-INST: and.or.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0x47,0x1f,0xbf,0xf3]
and.or.t %d15, %d15, 31, %d1, 7

# CHECK-INST: and.or.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0x47,0x1f,0x3f,0xfc]
and.or.t %d15, %d15, 31, %d1, 24

# CHECK-INST: and.or.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0x47,0x1f,0xbf,0xff]
and.or.t %d15, %d15, 31, %d1, 31

# CHECK-INST: and.or.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0x47,0xef,0x3f,0xf0]
and.or.t %d15, %d15, 31, %d14, 0

# CHECK-INST: and.or.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0x47,0xef,0xbf,0xf3]
and.or.t %d15, %d15, 31, %d14, 7

# CHECK-INST: and.or.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0x47,0xef,0x3f,0xfc]
and.or.t %d15, %d15, 31, %d14, 24

# CHECK-INST: and.or.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0x47,0xef,0xbf,0xff]
and.or.t %d15, %d15, 31, %d14, 31

# CHECK-INST: and.or.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0x47,0xff,0x3f,0xf0]
and.or.t %d15, %d15, 31, %d15, 0

# CHECK-INST: and.or.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0x47,0xff,0xbf,0xf3]
and.or.t %d15, %d15, 31, %d15, 7

# CHECK-INST: and.or.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0x47,0xff,0x3f,0xfc]
and.or.t %d15, %d15, 31, %d15, 24

# CHECK-INST: and.or.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0x47,0xff,0xbf,0xff]
and.or.t %d15, %d15, 31, %d15, 31

# CHECK-INST: or.and.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x00,0x00]
or.and.t %d0, %d0, 0, %d0, 0

# CHECK-INST: or.and.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0xc7,0x00,0x80,0x03]
or.and.t %d0, %d0, 0, %d0, 7

# CHECK-INST: or.and.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x00,0x0c]
or.and.t %d0, %d0, 0, %d0, 24

# CHECK-INST: or.and.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0xc7,0x00,0x80,0x0f]
or.and.t %d0, %d0, 0, %d0, 31

# CHECK-INST: or.and.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x00,0x00]
or.and.t %d0, %d0, 0, %d1, 0

# CHECK-INST: or.and.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0xc7,0x10,0x80,0x03]
or.and.t %d0, %d0, 0, %d1, 7

# CHECK-INST: or.and.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x00,0x0c]
or.and.t %d0, %d0, 0, %d1, 24

# CHECK-INST: or.and.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0xc7,0x10,0x80,0x0f]
or.and.t %d0, %d0, 0, %d1, 31

# CHECK-INST: or.and.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x00,0x00]
or.and.t %d0, %d0, 0, %d14, 0

# CHECK-INST: or.and.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0x80,0x03]
or.and.t %d0, %d0, 0, %d14, 7

# CHECK-INST: or.and.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x00,0x0c]
or.and.t %d0, %d0, 0, %d14, 24

# CHECK-INST: or.and.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0x80,0x0f]
or.and.t %d0, %d0, 0, %d14, 31

# CHECK-INST: or.and.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x00,0x00]
or.and.t %d0, %d0, 0, %d15, 0

# CHECK-INST: or.and.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0x80,0x03]
or.and.t %d0, %d0, 0, %d15, 7

# CHECK-INST: or.and.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x00,0x0c]
or.and.t %d0, %d0, 0, %d15, 24

# CHECK-INST: or.and.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0x80,0x0f]
or.and.t %d0, %d0, 0, %d15, 31

# CHECK-INST: or.and.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x07,0x00]
or.and.t %d0, %d0, 7, %d0, 0

# CHECK-INST: or.and.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0xc7,0x00,0x87,0x03]
or.and.t %d0, %d0, 7, %d0, 7

# CHECK-INST: or.and.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x07,0x0c]
or.and.t %d0, %d0, 7, %d0, 24

# CHECK-INST: or.and.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0xc7,0x00,0x87,0x0f]
or.and.t %d0, %d0, 7, %d0, 31

# CHECK-INST: or.and.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x07,0x00]
or.and.t %d0, %d0, 7, %d1, 0

# CHECK-INST: or.and.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0xc7,0x10,0x87,0x03]
or.and.t %d0, %d0, 7, %d1, 7

# CHECK-INST: or.and.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x07,0x0c]
or.and.t %d0, %d0, 7, %d1, 24

# CHECK-INST: or.and.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0xc7,0x10,0x87,0x0f]
or.and.t %d0, %d0, 7, %d1, 31

# CHECK-INST: or.and.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x07,0x00]
or.and.t %d0, %d0, 7, %d14, 0

# CHECK-INST: or.and.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0x87,0x03]
or.and.t %d0, %d0, 7, %d14, 7

# CHECK-INST: or.and.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x07,0x0c]
or.and.t %d0, %d0, 7, %d14, 24

# CHECK-INST: or.and.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0x87,0x0f]
or.and.t %d0, %d0, 7, %d14, 31

# CHECK-INST: or.and.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x07,0x00]
or.and.t %d0, %d0, 7, %d15, 0

# CHECK-INST: or.and.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0x87,0x03]
or.and.t %d0, %d0, 7, %d15, 7

# CHECK-INST: or.and.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x07,0x0c]
or.and.t %d0, %d0, 7, %d15, 24

# CHECK-INST: or.and.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0x87,0x0f]
or.and.t %d0, %d0, 7, %d15, 31

# CHECK-INST: or.and.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x18,0x00]
or.and.t %d0, %d0, 24, %d0, 0

# CHECK-INST: or.and.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0xc7,0x00,0x98,0x03]
or.and.t %d0, %d0, 24, %d0, 7

# CHECK-INST: or.and.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x18,0x0c]
or.and.t %d0, %d0, 24, %d0, 24

# CHECK-INST: or.and.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0xc7,0x00,0x98,0x0f]
or.and.t %d0, %d0, 24, %d0, 31

# CHECK-INST: or.and.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x18,0x00]
or.and.t %d0, %d0, 24, %d1, 0

# CHECK-INST: or.and.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0xc7,0x10,0x98,0x03]
or.and.t %d0, %d0, 24, %d1, 7

# CHECK-INST: or.and.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x18,0x0c]
or.and.t %d0, %d0, 24, %d1, 24

# CHECK-INST: or.and.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0xc7,0x10,0x98,0x0f]
or.and.t %d0, %d0, 24, %d1, 31

# CHECK-INST: or.and.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x18,0x00]
or.and.t %d0, %d0, 24, %d14, 0

# CHECK-INST: or.and.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0x98,0x03]
or.and.t %d0, %d0, 24, %d14, 7

# CHECK-INST: or.and.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x18,0x0c]
or.and.t %d0, %d0, 24, %d14, 24

# CHECK-INST: or.and.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0x98,0x0f]
or.and.t %d0, %d0, 24, %d14, 31

# CHECK-INST: or.and.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x18,0x00]
or.and.t %d0, %d0, 24, %d15, 0

# CHECK-INST: or.and.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0x98,0x03]
or.and.t %d0, %d0, 24, %d15, 7

# CHECK-INST: or.and.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x18,0x0c]
or.and.t %d0, %d0, 24, %d15, 24

# CHECK-INST: or.and.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0x98,0x0f]
or.and.t %d0, %d0, 24, %d15, 31

# CHECK-INST: or.and.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x1f,0x00]
or.and.t %d0, %d0, 31, %d0, 0

# CHECK-INST: or.and.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0xc7,0x00,0x9f,0x03]
or.and.t %d0, %d0, 31, %d0, 7

# CHECK-INST: or.and.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x1f,0x0c]
or.and.t %d0, %d0, 31, %d0, 24

# CHECK-INST: or.and.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0xc7,0x00,0x9f,0x0f]
or.and.t %d0, %d0, 31, %d0, 31

# CHECK-INST: or.and.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x1f,0x00]
or.and.t %d0, %d0, 31, %d1, 0

# CHECK-INST: or.and.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0xc7,0x10,0x9f,0x03]
or.and.t %d0, %d0, 31, %d1, 7

# CHECK-INST: or.and.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x1f,0x0c]
or.and.t %d0, %d0, 31, %d1, 24

# CHECK-INST: or.and.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0xc7,0x10,0x9f,0x0f]
or.and.t %d0, %d0, 31, %d1, 31

# CHECK-INST: or.and.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x1f,0x00]
or.and.t %d0, %d0, 31, %d14, 0

# CHECK-INST: or.and.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0x9f,0x03]
or.and.t %d0, %d0, 31, %d14, 7

# CHECK-INST: or.and.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x1f,0x0c]
or.and.t %d0, %d0, 31, %d14, 24

# CHECK-INST: or.and.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0x9f,0x0f]
or.and.t %d0, %d0, 31, %d14, 31

# CHECK-INST: or.and.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x1f,0x00]
or.and.t %d0, %d0, 31, %d15, 0

# CHECK-INST: or.and.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0x9f,0x03]
or.and.t %d0, %d0, 31, %d15, 7

# CHECK-INST: or.and.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x1f,0x0c]
or.and.t %d0, %d0, 31, %d15, 24

# CHECK-INST: or.and.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0x9f,0x0f]
or.and.t %d0, %d0, 31, %d15, 31

# CHECK-INST: or.and.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x00,0x00]
or.and.t %d0, %d1, 0, %d0, 0

# CHECK-INST: or.and.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0xc7,0x01,0x80,0x03]
or.and.t %d0, %d1, 0, %d0, 7

# CHECK-INST: or.and.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x00,0x0c]
or.and.t %d0, %d1, 0, %d0, 24

# CHECK-INST: or.and.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0xc7,0x01,0x80,0x0f]
or.and.t %d0, %d1, 0, %d0, 31

# CHECK-INST: or.and.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x00,0x00]
or.and.t %d0, %d1, 0, %d1, 0

# CHECK-INST: or.and.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0xc7,0x11,0x80,0x03]
or.and.t %d0, %d1, 0, %d1, 7

# CHECK-INST: or.and.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x00,0x0c]
or.and.t %d0, %d1, 0, %d1, 24

# CHECK-INST: or.and.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0xc7,0x11,0x80,0x0f]
or.and.t %d0, %d1, 0, %d1, 31

# CHECK-INST: or.and.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x00,0x00]
or.and.t %d0, %d1, 0, %d14, 0

# CHECK-INST: or.and.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0x80,0x03]
or.and.t %d0, %d1, 0, %d14, 7

# CHECK-INST: or.and.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x00,0x0c]
or.and.t %d0, %d1, 0, %d14, 24

# CHECK-INST: or.and.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0x80,0x0f]
or.and.t %d0, %d1, 0, %d14, 31

# CHECK-INST: or.and.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x00,0x00]
or.and.t %d0, %d1, 0, %d15, 0

# CHECK-INST: or.and.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0x80,0x03]
or.and.t %d0, %d1, 0, %d15, 7

# CHECK-INST: or.and.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x00,0x0c]
or.and.t %d0, %d1, 0, %d15, 24

# CHECK-INST: or.and.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0x80,0x0f]
or.and.t %d0, %d1, 0, %d15, 31

# CHECK-INST: or.and.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x07,0x00]
or.and.t %d0, %d1, 7, %d0, 0

# CHECK-INST: or.and.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0xc7,0x01,0x87,0x03]
or.and.t %d0, %d1, 7, %d0, 7

# CHECK-INST: or.and.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x07,0x0c]
or.and.t %d0, %d1, 7, %d0, 24

# CHECK-INST: or.and.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0xc7,0x01,0x87,0x0f]
or.and.t %d0, %d1, 7, %d0, 31

# CHECK-INST: or.and.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x07,0x00]
or.and.t %d0, %d1, 7, %d1, 0

# CHECK-INST: or.and.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0xc7,0x11,0x87,0x03]
or.and.t %d0, %d1, 7, %d1, 7

# CHECK-INST: or.and.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x07,0x0c]
or.and.t %d0, %d1, 7, %d1, 24

# CHECK-INST: or.and.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0xc7,0x11,0x87,0x0f]
or.and.t %d0, %d1, 7, %d1, 31

# CHECK-INST: or.and.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x07,0x00]
or.and.t %d0, %d1, 7, %d14, 0

# CHECK-INST: or.and.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0x87,0x03]
or.and.t %d0, %d1, 7, %d14, 7

# CHECK-INST: or.and.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x07,0x0c]
or.and.t %d0, %d1, 7, %d14, 24

# CHECK-INST: or.and.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0x87,0x0f]
or.and.t %d0, %d1, 7, %d14, 31

# CHECK-INST: or.and.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x07,0x00]
or.and.t %d0, %d1, 7, %d15, 0

# CHECK-INST: or.and.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0x87,0x03]
or.and.t %d0, %d1, 7, %d15, 7

# CHECK-INST: or.and.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x07,0x0c]
or.and.t %d0, %d1, 7, %d15, 24

# CHECK-INST: or.and.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0x87,0x0f]
or.and.t %d0, %d1, 7, %d15, 31

# CHECK-INST: or.and.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x18,0x00]
or.and.t %d0, %d1, 24, %d0, 0

# CHECK-INST: or.and.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0xc7,0x01,0x98,0x03]
or.and.t %d0, %d1, 24, %d0, 7

# CHECK-INST: or.and.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x18,0x0c]
or.and.t %d0, %d1, 24, %d0, 24

# CHECK-INST: or.and.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0xc7,0x01,0x98,0x0f]
or.and.t %d0, %d1, 24, %d0, 31

# CHECK-INST: or.and.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x18,0x00]
or.and.t %d0, %d1, 24, %d1, 0

# CHECK-INST: or.and.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0xc7,0x11,0x98,0x03]
or.and.t %d0, %d1, 24, %d1, 7

# CHECK-INST: or.and.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x18,0x0c]
or.and.t %d0, %d1, 24, %d1, 24

# CHECK-INST: or.and.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0xc7,0x11,0x98,0x0f]
or.and.t %d0, %d1, 24, %d1, 31

# CHECK-INST: or.and.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x18,0x00]
or.and.t %d0, %d1, 24, %d14, 0

# CHECK-INST: or.and.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0x98,0x03]
or.and.t %d0, %d1, 24, %d14, 7

# CHECK-INST: or.and.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x18,0x0c]
or.and.t %d0, %d1, 24, %d14, 24

# CHECK-INST: or.and.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0x98,0x0f]
or.and.t %d0, %d1, 24, %d14, 31

# CHECK-INST: or.and.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x18,0x00]
or.and.t %d0, %d1, 24, %d15, 0

# CHECK-INST: or.and.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0x98,0x03]
or.and.t %d0, %d1, 24, %d15, 7

# CHECK-INST: or.and.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x18,0x0c]
or.and.t %d0, %d1, 24, %d15, 24

# CHECK-INST: or.and.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0x98,0x0f]
or.and.t %d0, %d1, 24, %d15, 31

# CHECK-INST: or.and.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x1f,0x00]
or.and.t %d0, %d1, 31, %d0, 0

# CHECK-INST: or.and.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0xc7,0x01,0x9f,0x03]
or.and.t %d0, %d1, 31, %d0, 7

# CHECK-INST: or.and.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x1f,0x0c]
or.and.t %d0, %d1, 31, %d0, 24

# CHECK-INST: or.and.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0xc7,0x01,0x9f,0x0f]
or.and.t %d0, %d1, 31, %d0, 31

# CHECK-INST: or.and.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x1f,0x00]
or.and.t %d0, %d1, 31, %d1, 0

# CHECK-INST: or.and.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0xc7,0x11,0x9f,0x03]
or.and.t %d0, %d1, 31, %d1, 7

# CHECK-INST: or.and.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x1f,0x0c]
or.and.t %d0, %d1, 31, %d1, 24

# CHECK-INST: or.and.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0xc7,0x11,0x9f,0x0f]
or.and.t %d0, %d1, 31, %d1, 31

# CHECK-INST: or.and.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x1f,0x00]
or.and.t %d0, %d1, 31, %d14, 0

# CHECK-INST: or.and.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0x9f,0x03]
or.and.t %d0, %d1, 31, %d14, 7

# CHECK-INST: or.and.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x1f,0x0c]
or.and.t %d0, %d1, 31, %d14, 24

# CHECK-INST: or.and.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0x9f,0x0f]
or.and.t %d0, %d1, 31, %d14, 31

# CHECK-INST: or.and.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x1f,0x00]
or.and.t %d0, %d1, 31, %d15, 0

# CHECK-INST: or.and.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0x9f,0x03]
or.and.t %d0, %d1, 31, %d15, 7

# CHECK-INST: or.and.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x1f,0x0c]
or.and.t %d0, %d1, 31, %d15, 24

# CHECK-INST: or.and.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0x9f,0x0f]
or.and.t %d0, %d1, 31, %d15, 31

# CHECK-INST: or.and.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x00,0x00]
or.and.t %d0, %d14, 0, %d0, 0

# CHECK-INST: or.and.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0x80,0x03]
or.and.t %d0, %d14, 0, %d0, 7

# CHECK-INST: or.and.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x00,0x0c]
or.and.t %d0, %d14, 0, %d0, 24

# CHECK-INST: or.and.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0x80,0x0f]
or.and.t %d0, %d14, 0, %d0, 31

# CHECK-INST: or.and.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x00,0x00]
or.and.t %d0, %d14, 0, %d1, 0

# CHECK-INST: or.and.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0x80,0x03]
or.and.t %d0, %d14, 0, %d1, 7

# CHECK-INST: or.and.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x00,0x0c]
or.and.t %d0, %d14, 0, %d1, 24

# CHECK-INST: or.and.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0x80,0x0f]
or.and.t %d0, %d14, 0, %d1, 31

# CHECK-INST: or.and.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x00,0x00]
or.and.t %d0, %d14, 0, %d14, 0

# CHECK-INST: or.and.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0xc7,0xee,0x80,0x03]
or.and.t %d0, %d14, 0, %d14, 7

# CHECK-INST: or.and.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x00,0x0c]
or.and.t %d0, %d14, 0, %d14, 24

# CHECK-INST: or.and.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0xc7,0xee,0x80,0x0f]
or.and.t %d0, %d14, 0, %d14, 31

# CHECK-INST: or.and.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x00,0x00]
or.and.t %d0, %d14, 0, %d15, 0

# CHECK-INST: or.and.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0x80,0x03]
or.and.t %d0, %d14, 0, %d15, 7

# CHECK-INST: or.and.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x00,0x0c]
or.and.t %d0, %d14, 0, %d15, 24

# CHECK-INST: or.and.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0x80,0x0f]
or.and.t %d0, %d14, 0, %d15, 31

# CHECK-INST: or.and.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x07,0x00]
or.and.t %d0, %d14, 7, %d0, 0

# CHECK-INST: or.and.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0x87,0x03]
or.and.t %d0, %d14, 7, %d0, 7

# CHECK-INST: or.and.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x07,0x0c]
or.and.t %d0, %d14, 7, %d0, 24

# CHECK-INST: or.and.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0x87,0x0f]
or.and.t %d0, %d14, 7, %d0, 31

# CHECK-INST: or.and.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x07,0x00]
or.and.t %d0, %d14, 7, %d1, 0

# CHECK-INST: or.and.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0x87,0x03]
or.and.t %d0, %d14, 7, %d1, 7

# CHECK-INST: or.and.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x07,0x0c]
or.and.t %d0, %d14, 7, %d1, 24

# CHECK-INST: or.and.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0x87,0x0f]
or.and.t %d0, %d14, 7, %d1, 31

# CHECK-INST: or.and.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x07,0x00]
or.and.t %d0, %d14, 7, %d14, 0

# CHECK-INST: or.and.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0xc7,0xee,0x87,0x03]
or.and.t %d0, %d14, 7, %d14, 7

# CHECK-INST: or.and.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x07,0x0c]
or.and.t %d0, %d14, 7, %d14, 24

# CHECK-INST: or.and.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0xc7,0xee,0x87,0x0f]
or.and.t %d0, %d14, 7, %d14, 31

# CHECK-INST: or.and.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x07,0x00]
or.and.t %d0, %d14, 7, %d15, 0

# CHECK-INST: or.and.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0x87,0x03]
or.and.t %d0, %d14, 7, %d15, 7

# CHECK-INST: or.and.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x07,0x0c]
or.and.t %d0, %d14, 7, %d15, 24

# CHECK-INST: or.and.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0x87,0x0f]
or.and.t %d0, %d14, 7, %d15, 31

# CHECK-INST: or.and.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x18,0x00]
or.and.t %d0, %d14, 24, %d0, 0

# CHECK-INST: or.and.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0x98,0x03]
or.and.t %d0, %d14, 24, %d0, 7

# CHECK-INST: or.and.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x18,0x0c]
or.and.t %d0, %d14, 24, %d0, 24

# CHECK-INST: or.and.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0x98,0x0f]
or.and.t %d0, %d14, 24, %d0, 31

# CHECK-INST: or.and.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x18,0x00]
or.and.t %d0, %d14, 24, %d1, 0

# CHECK-INST: or.and.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0x98,0x03]
or.and.t %d0, %d14, 24, %d1, 7

# CHECK-INST: or.and.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x18,0x0c]
or.and.t %d0, %d14, 24, %d1, 24

# CHECK-INST: or.and.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0x98,0x0f]
or.and.t %d0, %d14, 24, %d1, 31

# CHECK-INST: or.and.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x18,0x00]
or.and.t %d0, %d14, 24, %d14, 0

# CHECK-INST: or.and.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0xc7,0xee,0x98,0x03]
or.and.t %d0, %d14, 24, %d14, 7

# CHECK-INST: or.and.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x18,0x0c]
or.and.t %d0, %d14, 24, %d14, 24

# CHECK-INST: or.and.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0xc7,0xee,0x98,0x0f]
or.and.t %d0, %d14, 24, %d14, 31

# CHECK-INST: or.and.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x18,0x00]
or.and.t %d0, %d14, 24, %d15, 0

# CHECK-INST: or.and.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0x98,0x03]
or.and.t %d0, %d14, 24, %d15, 7

# CHECK-INST: or.and.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x18,0x0c]
or.and.t %d0, %d14, 24, %d15, 24

# CHECK-INST: or.and.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0x98,0x0f]
or.and.t %d0, %d14, 24, %d15, 31

# CHECK-INST: or.and.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x1f,0x00]
or.and.t %d0, %d14, 31, %d0, 0

# CHECK-INST: or.and.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0x9f,0x03]
or.and.t %d0, %d14, 31, %d0, 7

# CHECK-INST: or.and.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x1f,0x0c]
or.and.t %d0, %d14, 31, %d0, 24

# CHECK-INST: or.and.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0x9f,0x0f]
or.and.t %d0, %d14, 31, %d0, 31

# CHECK-INST: or.and.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x1f,0x00]
or.and.t %d0, %d14, 31, %d1, 0

# CHECK-INST: or.and.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0x9f,0x03]
or.and.t %d0, %d14, 31, %d1, 7

# CHECK-INST: or.and.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x1f,0x0c]
or.and.t %d0, %d14, 31, %d1, 24

# CHECK-INST: or.and.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0x9f,0x0f]
or.and.t %d0, %d14, 31, %d1, 31

# CHECK-INST: or.and.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x1f,0x00]
or.and.t %d0, %d14, 31, %d14, 0

# CHECK-INST: or.and.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0xc7,0xee,0x9f,0x03]
or.and.t %d0, %d14, 31, %d14, 7

# CHECK-INST: or.and.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x1f,0x0c]
or.and.t %d0, %d14, 31, %d14, 24

# CHECK-INST: or.and.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0xc7,0xee,0x9f,0x0f]
or.and.t %d0, %d14, 31, %d14, 31

# CHECK-INST: or.and.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x1f,0x00]
or.and.t %d0, %d14, 31, %d15, 0

# CHECK-INST: or.and.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0x9f,0x03]
or.and.t %d0, %d14, 31, %d15, 7

# CHECK-INST: or.and.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x1f,0x0c]
or.and.t %d0, %d14, 31, %d15, 24

# CHECK-INST: or.and.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0x9f,0x0f]
or.and.t %d0, %d14, 31, %d15, 31

# CHECK-INST: or.and.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x00,0x00]
or.and.t %d0, %d15, 0, %d0, 0

# CHECK-INST: or.and.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0x80,0x03]
or.and.t %d0, %d15, 0, %d0, 7

# CHECK-INST: or.and.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x00,0x0c]
or.and.t %d0, %d15, 0, %d0, 24

# CHECK-INST: or.and.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0x80,0x0f]
or.and.t %d0, %d15, 0, %d0, 31

# CHECK-INST: or.and.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x00,0x00]
or.and.t %d0, %d15, 0, %d1, 0

# CHECK-INST: or.and.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0x80,0x03]
or.and.t %d0, %d15, 0, %d1, 7

# CHECK-INST: or.and.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x00,0x0c]
or.and.t %d0, %d15, 0, %d1, 24

# CHECK-INST: or.and.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0x80,0x0f]
or.and.t %d0, %d15, 0, %d1, 31

# CHECK-INST: or.and.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x00,0x00]
or.and.t %d0, %d15, 0, %d14, 0

# CHECK-INST: or.and.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0xc7,0xef,0x80,0x03]
or.and.t %d0, %d15, 0, %d14, 7

# CHECK-INST: or.and.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x00,0x0c]
or.and.t %d0, %d15, 0, %d14, 24

# CHECK-INST: or.and.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0xc7,0xef,0x80,0x0f]
or.and.t %d0, %d15, 0, %d14, 31

# CHECK-INST: or.and.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x00,0x00]
or.and.t %d0, %d15, 0, %d15, 0

# CHECK-INST: or.and.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0xc7,0xff,0x80,0x03]
or.and.t %d0, %d15, 0, %d15, 7

# CHECK-INST: or.and.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x00,0x0c]
or.and.t %d0, %d15, 0, %d15, 24

# CHECK-INST: or.and.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0xc7,0xff,0x80,0x0f]
or.and.t %d0, %d15, 0, %d15, 31

# CHECK-INST: or.and.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x07,0x00]
or.and.t %d0, %d15, 7, %d0, 0

# CHECK-INST: or.and.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0x87,0x03]
or.and.t %d0, %d15, 7, %d0, 7

# CHECK-INST: or.and.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x07,0x0c]
or.and.t %d0, %d15, 7, %d0, 24

# CHECK-INST: or.and.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0x87,0x0f]
or.and.t %d0, %d15, 7, %d0, 31

# CHECK-INST: or.and.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x07,0x00]
or.and.t %d0, %d15, 7, %d1, 0

# CHECK-INST: or.and.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0x87,0x03]
or.and.t %d0, %d15, 7, %d1, 7

# CHECK-INST: or.and.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x07,0x0c]
or.and.t %d0, %d15, 7, %d1, 24

# CHECK-INST: or.and.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0x87,0x0f]
or.and.t %d0, %d15, 7, %d1, 31

# CHECK-INST: or.and.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x07,0x00]
or.and.t %d0, %d15, 7, %d14, 0

# CHECK-INST: or.and.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0xc7,0xef,0x87,0x03]
or.and.t %d0, %d15, 7, %d14, 7

# CHECK-INST: or.and.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x07,0x0c]
or.and.t %d0, %d15, 7, %d14, 24

# CHECK-INST: or.and.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0xc7,0xef,0x87,0x0f]
or.and.t %d0, %d15, 7, %d14, 31

# CHECK-INST: or.and.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x07,0x00]
or.and.t %d0, %d15, 7, %d15, 0

# CHECK-INST: or.and.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0xc7,0xff,0x87,0x03]
or.and.t %d0, %d15, 7, %d15, 7

# CHECK-INST: or.and.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x07,0x0c]
or.and.t %d0, %d15, 7, %d15, 24

# CHECK-INST: or.and.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0xc7,0xff,0x87,0x0f]
or.and.t %d0, %d15, 7, %d15, 31

# CHECK-INST: or.and.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x18,0x00]
or.and.t %d0, %d15, 24, %d0, 0

# CHECK-INST: or.and.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0x98,0x03]
or.and.t %d0, %d15, 24, %d0, 7

# CHECK-INST: or.and.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x18,0x0c]
or.and.t %d0, %d15, 24, %d0, 24

# CHECK-INST: or.and.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0x98,0x0f]
or.and.t %d0, %d15, 24, %d0, 31

# CHECK-INST: or.and.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x18,0x00]
or.and.t %d0, %d15, 24, %d1, 0

# CHECK-INST: or.and.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0x98,0x03]
or.and.t %d0, %d15, 24, %d1, 7

# CHECK-INST: or.and.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x18,0x0c]
or.and.t %d0, %d15, 24, %d1, 24

# CHECK-INST: or.and.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0x98,0x0f]
or.and.t %d0, %d15, 24, %d1, 31

# CHECK-INST: or.and.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x18,0x00]
or.and.t %d0, %d15, 24, %d14, 0

# CHECK-INST: or.and.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0xc7,0xef,0x98,0x03]
or.and.t %d0, %d15, 24, %d14, 7

# CHECK-INST: or.and.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x18,0x0c]
or.and.t %d0, %d15, 24, %d14, 24

# CHECK-INST: or.and.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0xc7,0xef,0x98,0x0f]
or.and.t %d0, %d15, 24, %d14, 31

# CHECK-INST: or.and.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x18,0x00]
or.and.t %d0, %d15, 24, %d15, 0

# CHECK-INST: or.and.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0xc7,0xff,0x98,0x03]
or.and.t %d0, %d15, 24, %d15, 7

# CHECK-INST: or.and.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x18,0x0c]
or.and.t %d0, %d15, 24, %d15, 24

# CHECK-INST: or.and.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0xc7,0xff,0x98,0x0f]
or.and.t %d0, %d15, 24, %d15, 31

# CHECK-INST: or.and.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x1f,0x00]
or.and.t %d0, %d15, 31, %d0, 0

# CHECK-INST: or.and.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0x9f,0x03]
or.and.t %d0, %d15, 31, %d0, 7

# CHECK-INST: or.and.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x1f,0x0c]
or.and.t %d0, %d15, 31, %d0, 24

# CHECK-INST: or.and.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0x9f,0x0f]
or.and.t %d0, %d15, 31, %d0, 31

# CHECK-INST: or.and.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x1f,0x00]
or.and.t %d0, %d15, 31, %d1, 0

# CHECK-INST: or.and.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0x9f,0x03]
or.and.t %d0, %d15, 31, %d1, 7

# CHECK-INST: or.and.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x1f,0x0c]
or.and.t %d0, %d15, 31, %d1, 24

# CHECK-INST: or.and.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0x9f,0x0f]
or.and.t %d0, %d15, 31, %d1, 31

# CHECK-INST: or.and.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x1f,0x00]
or.and.t %d0, %d15, 31, %d14, 0

# CHECK-INST: or.and.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0xc7,0xef,0x9f,0x03]
or.and.t %d0, %d15, 31, %d14, 7

# CHECK-INST: or.and.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x1f,0x0c]
or.and.t %d0, %d15, 31, %d14, 24

# CHECK-INST: or.and.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0xc7,0xef,0x9f,0x0f]
or.and.t %d0, %d15, 31, %d14, 31

# CHECK-INST: or.and.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x1f,0x00]
or.and.t %d0, %d15, 31, %d15, 0

# CHECK-INST: or.and.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0xc7,0xff,0x9f,0x03]
or.and.t %d0, %d15, 31, %d15, 7

# CHECK-INST: or.and.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x1f,0x0c]
or.and.t %d0, %d15, 31, %d15, 24

# CHECK-INST: or.and.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0xc7,0xff,0x9f,0x0f]
or.and.t %d0, %d15, 31, %d15, 31

# CHECK-INST: or.and.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x00,0x10]
or.and.t %d1, %d0, 0, %d0, 0

# CHECK-INST: or.and.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0xc7,0x00,0x80,0x13]
or.and.t %d1, %d0, 0, %d0, 7

# CHECK-INST: or.and.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x00,0x1c]
or.and.t %d1, %d0, 0, %d0, 24

# CHECK-INST: or.and.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0xc7,0x00,0x80,0x1f]
or.and.t %d1, %d0, 0, %d0, 31

# CHECK-INST: or.and.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x00,0x10]
or.and.t %d1, %d0, 0, %d1, 0

# CHECK-INST: or.and.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0xc7,0x10,0x80,0x13]
or.and.t %d1, %d0, 0, %d1, 7

# CHECK-INST: or.and.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x00,0x1c]
or.and.t %d1, %d0, 0, %d1, 24

# CHECK-INST: or.and.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0xc7,0x10,0x80,0x1f]
or.and.t %d1, %d0, 0, %d1, 31

# CHECK-INST: or.and.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x00,0x10]
or.and.t %d1, %d0, 0, %d14, 0

# CHECK-INST: or.and.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0x80,0x13]
or.and.t %d1, %d0, 0, %d14, 7

# CHECK-INST: or.and.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x00,0x1c]
or.and.t %d1, %d0, 0, %d14, 24

# CHECK-INST: or.and.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0x80,0x1f]
or.and.t %d1, %d0, 0, %d14, 31

# CHECK-INST: or.and.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x00,0x10]
or.and.t %d1, %d0, 0, %d15, 0

# CHECK-INST: or.and.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0x80,0x13]
or.and.t %d1, %d0, 0, %d15, 7

# CHECK-INST: or.and.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x00,0x1c]
or.and.t %d1, %d0, 0, %d15, 24

# CHECK-INST: or.and.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0x80,0x1f]
or.and.t %d1, %d0, 0, %d15, 31

# CHECK-INST: or.and.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x07,0x10]
or.and.t %d1, %d0, 7, %d0, 0

# CHECK-INST: or.and.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0xc7,0x00,0x87,0x13]
or.and.t %d1, %d0, 7, %d0, 7

# CHECK-INST: or.and.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x07,0x1c]
or.and.t %d1, %d0, 7, %d0, 24

# CHECK-INST: or.and.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0xc7,0x00,0x87,0x1f]
or.and.t %d1, %d0, 7, %d0, 31

# CHECK-INST: or.and.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x07,0x10]
or.and.t %d1, %d0, 7, %d1, 0

# CHECK-INST: or.and.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0xc7,0x10,0x87,0x13]
or.and.t %d1, %d0, 7, %d1, 7

# CHECK-INST: or.and.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x07,0x1c]
or.and.t %d1, %d0, 7, %d1, 24

# CHECK-INST: or.and.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0xc7,0x10,0x87,0x1f]
or.and.t %d1, %d0, 7, %d1, 31

# CHECK-INST: or.and.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x07,0x10]
or.and.t %d1, %d0, 7, %d14, 0

# CHECK-INST: or.and.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0x87,0x13]
or.and.t %d1, %d0, 7, %d14, 7

# CHECK-INST: or.and.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x07,0x1c]
or.and.t %d1, %d0, 7, %d14, 24

# CHECK-INST: or.and.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0x87,0x1f]
or.and.t %d1, %d0, 7, %d14, 31

# CHECK-INST: or.and.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x07,0x10]
or.and.t %d1, %d0, 7, %d15, 0

# CHECK-INST: or.and.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0x87,0x13]
or.and.t %d1, %d0, 7, %d15, 7

# CHECK-INST: or.and.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x07,0x1c]
or.and.t %d1, %d0, 7, %d15, 24

# CHECK-INST: or.and.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0x87,0x1f]
or.and.t %d1, %d0, 7, %d15, 31

# CHECK-INST: or.and.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x18,0x10]
or.and.t %d1, %d0, 24, %d0, 0

# CHECK-INST: or.and.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0xc7,0x00,0x98,0x13]
or.and.t %d1, %d0, 24, %d0, 7

# CHECK-INST: or.and.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x18,0x1c]
or.and.t %d1, %d0, 24, %d0, 24

# CHECK-INST: or.and.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0xc7,0x00,0x98,0x1f]
or.and.t %d1, %d0, 24, %d0, 31

# CHECK-INST: or.and.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x18,0x10]
or.and.t %d1, %d0, 24, %d1, 0

# CHECK-INST: or.and.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0xc7,0x10,0x98,0x13]
or.and.t %d1, %d0, 24, %d1, 7

# CHECK-INST: or.and.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x18,0x1c]
or.and.t %d1, %d0, 24, %d1, 24

# CHECK-INST: or.and.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0xc7,0x10,0x98,0x1f]
or.and.t %d1, %d0, 24, %d1, 31

# CHECK-INST: or.and.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x18,0x10]
or.and.t %d1, %d0, 24, %d14, 0

# CHECK-INST: or.and.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0x98,0x13]
or.and.t %d1, %d0, 24, %d14, 7

# CHECK-INST: or.and.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x18,0x1c]
or.and.t %d1, %d0, 24, %d14, 24

# CHECK-INST: or.and.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0x98,0x1f]
or.and.t %d1, %d0, 24, %d14, 31

# CHECK-INST: or.and.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x18,0x10]
or.and.t %d1, %d0, 24, %d15, 0

# CHECK-INST: or.and.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0x98,0x13]
or.and.t %d1, %d0, 24, %d15, 7

# CHECK-INST: or.and.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x18,0x1c]
or.and.t %d1, %d0, 24, %d15, 24

# CHECK-INST: or.and.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0x98,0x1f]
or.and.t %d1, %d0, 24, %d15, 31

# CHECK-INST: or.and.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x1f,0x10]
or.and.t %d1, %d0, 31, %d0, 0

# CHECK-INST: or.and.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0xc7,0x00,0x9f,0x13]
or.and.t %d1, %d0, 31, %d0, 7

# CHECK-INST: or.and.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x1f,0x1c]
or.and.t %d1, %d0, 31, %d0, 24

# CHECK-INST: or.and.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0xc7,0x00,0x9f,0x1f]
or.and.t %d1, %d0, 31, %d0, 31

# CHECK-INST: or.and.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x1f,0x10]
or.and.t %d1, %d0, 31, %d1, 0

# CHECK-INST: or.and.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0xc7,0x10,0x9f,0x13]
or.and.t %d1, %d0, 31, %d1, 7

# CHECK-INST: or.and.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x1f,0x1c]
or.and.t %d1, %d0, 31, %d1, 24

# CHECK-INST: or.and.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0xc7,0x10,0x9f,0x1f]
or.and.t %d1, %d0, 31, %d1, 31

# CHECK-INST: or.and.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x1f,0x10]
or.and.t %d1, %d0, 31, %d14, 0

# CHECK-INST: or.and.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0x9f,0x13]
or.and.t %d1, %d0, 31, %d14, 7

# CHECK-INST: or.and.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x1f,0x1c]
or.and.t %d1, %d0, 31, %d14, 24

# CHECK-INST: or.and.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0x9f,0x1f]
or.and.t %d1, %d0, 31, %d14, 31

# CHECK-INST: or.and.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x1f,0x10]
or.and.t %d1, %d0, 31, %d15, 0

# CHECK-INST: or.and.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0x9f,0x13]
or.and.t %d1, %d0, 31, %d15, 7

# CHECK-INST: or.and.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x1f,0x1c]
or.and.t %d1, %d0, 31, %d15, 24

# CHECK-INST: or.and.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0x9f,0x1f]
or.and.t %d1, %d0, 31, %d15, 31

# CHECK-INST: or.and.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x00,0x10]
or.and.t %d1, %d1, 0, %d0, 0

# CHECK-INST: or.and.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0xc7,0x01,0x80,0x13]
or.and.t %d1, %d1, 0, %d0, 7

# CHECK-INST: or.and.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x00,0x1c]
or.and.t %d1, %d1, 0, %d0, 24

# CHECK-INST: or.and.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0xc7,0x01,0x80,0x1f]
or.and.t %d1, %d1, 0, %d0, 31

# CHECK-INST: or.and.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x00,0x10]
or.and.t %d1, %d1, 0, %d1, 0

# CHECK-INST: or.and.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0xc7,0x11,0x80,0x13]
or.and.t %d1, %d1, 0, %d1, 7

# CHECK-INST: or.and.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x00,0x1c]
or.and.t %d1, %d1, 0, %d1, 24

# CHECK-INST: or.and.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0xc7,0x11,0x80,0x1f]
or.and.t %d1, %d1, 0, %d1, 31

# CHECK-INST: or.and.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x00,0x10]
or.and.t %d1, %d1, 0, %d14, 0

# CHECK-INST: or.and.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0x80,0x13]
or.and.t %d1, %d1, 0, %d14, 7

# CHECK-INST: or.and.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x00,0x1c]
or.and.t %d1, %d1, 0, %d14, 24

# CHECK-INST: or.and.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0x80,0x1f]
or.and.t %d1, %d1, 0, %d14, 31

# CHECK-INST: or.and.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x00,0x10]
or.and.t %d1, %d1, 0, %d15, 0

# CHECK-INST: or.and.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0x80,0x13]
or.and.t %d1, %d1, 0, %d15, 7

# CHECK-INST: or.and.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x00,0x1c]
or.and.t %d1, %d1, 0, %d15, 24

# CHECK-INST: or.and.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0x80,0x1f]
or.and.t %d1, %d1, 0, %d15, 31

# CHECK-INST: or.and.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x07,0x10]
or.and.t %d1, %d1, 7, %d0, 0

# CHECK-INST: or.and.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0xc7,0x01,0x87,0x13]
or.and.t %d1, %d1, 7, %d0, 7

# CHECK-INST: or.and.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x07,0x1c]
or.and.t %d1, %d1, 7, %d0, 24

# CHECK-INST: or.and.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0xc7,0x01,0x87,0x1f]
or.and.t %d1, %d1, 7, %d0, 31

# CHECK-INST: or.and.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x07,0x10]
or.and.t %d1, %d1, 7, %d1, 0

# CHECK-INST: or.and.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0xc7,0x11,0x87,0x13]
or.and.t %d1, %d1, 7, %d1, 7

# CHECK-INST: or.and.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x07,0x1c]
or.and.t %d1, %d1, 7, %d1, 24

# CHECK-INST: or.and.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0xc7,0x11,0x87,0x1f]
or.and.t %d1, %d1, 7, %d1, 31

# CHECK-INST: or.and.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x07,0x10]
or.and.t %d1, %d1, 7, %d14, 0

# CHECK-INST: or.and.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0x87,0x13]
or.and.t %d1, %d1, 7, %d14, 7

# CHECK-INST: or.and.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x07,0x1c]
or.and.t %d1, %d1, 7, %d14, 24

# CHECK-INST: or.and.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0x87,0x1f]
or.and.t %d1, %d1, 7, %d14, 31

# CHECK-INST: or.and.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x07,0x10]
or.and.t %d1, %d1, 7, %d15, 0

# CHECK-INST: or.and.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0x87,0x13]
or.and.t %d1, %d1, 7, %d15, 7

# CHECK-INST: or.and.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x07,0x1c]
or.and.t %d1, %d1, 7, %d15, 24

# CHECK-INST: or.and.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0x87,0x1f]
or.and.t %d1, %d1, 7, %d15, 31

# CHECK-INST: or.and.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x18,0x10]
or.and.t %d1, %d1, 24, %d0, 0

# CHECK-INST: or.and.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0xc7,0x01,0x98,0x13]
or.and.t %d1, %d1, 24, %d0, 7

# CHECK-INST: or.and.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x18,0x1c]
or.and.t %d1, %d1, 24, %d0, 24

# CHECK-INST: or.and.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0xc7,0x01,0x98,0x1f]
or.and.t %d1, %d1, 24, %d0, 31

# CHECK-INST: or.and.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x18,0x10]
or.and.t %d1, %d1, 24, %d1, 0

# CHECK-INST: or.and.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0xc7,0x11,0x98,0x13]
or.and.t %d1, %d1, 24, %d1, 7

# CHECK-INST: or.and.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x18,0x1c]
or.and.t %d1, %d1, 24, %d1, 24

# CHECK-INST: or.and.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0xc7,0x11,0x98,0x1f]
or.and.t %d1, %d1, 24, %d1, 31

# CHECK-INST: or.and.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x18,0x10]
or.and.t %d1, %d1, 24, %d14, 0

# CHECK-INST: or.and.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0x98,0x13]
or.and.t %d1, %d1, 24, %d14, 7

# CHECK-INST: or.and.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x18,0x1c]
or.and.t %d1, %d1, 24, %d14, 24

# CHECK-INST: or.and.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0x98,0x1f]
or.and.t %d1, %d1, 24, %d14, 31

# CHECK-INST: or.and.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x18,0x10]
or.and.t %d1, %d1, 24, %d15, 0

# CHECK-INST: or.and.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0x98,0x13]
or.and.t %d1, %d1, 24, %d15, 7

# CHECK-INST: or.and.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x18,0x1c]
or.and.t %d1, %d1, 24, %d15, 24

# CHECK-INST: or.and.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0x98,0x1f]
or.and.t %d1, %d1, 24, %d15, 31

# CHECK-INST: or.and.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x1f,0x10]
or.and.t %d1, %d1, 31, %d0, 0

# CHECK-INST: or.and.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0xc7,0x01,0x9f,0x13]
or.and.t %d1, %d1, 31, %d0, 7

# CHECK-INST: or.and.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x1f,0x1c]
or.and.t %d1, %d1, 31, %d0, 24

# CHECK-INST: or.and.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0xc7,0x01,0x9f,0x1f]
or.and.t %d1, %d1, 31, %d0, 31

# CHECK-INST: or.and.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x1f,0x10]
or.and.t %d1, %d1, 31, %d1, 0

# CHECK-INST: or.and.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0xc7,0x11,0x9f,0x13]
or.and.t %d1, %d1, 31, %d1, 7

# CHECK-INST: or.and.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x1f,0x1c]
or.and.t %d1, %d1, 31, %d1, 24

# CHECK-INST: or.and.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0xc7,0x11,0x9f,0x1f]
or.and.t %d1, %d1, 31, %d1, 31

# CHECK-INST: or.and.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x1f,0x10]
or.and.t %d1, %d1, 31, %d14, 0

# CHECK-INST: or.and.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0x9f,0x13]
or.and.t %d1, %d1, 31, %d14, 7

# CHECK-INST: or.and.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x1f,0x1c]
or.and.t %d1, %d1, 31, %d14, 24

# CHECK-INST: or.and.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0x9f,0x1f]
or.and.t %d1, %d1, 31, %d14, 31

# CHECK-INST: or.and.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x1f,0x10]
or.and.t %d1, %d1, 31, %d15, 0

# CHECK-INST: or.and.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0x9f,0x13]
or.and.t %d1, %d1, 31, %d15, 7

# CHECK-INST: or.and.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x1f,0x1c]
or.and.t %d1, %d1, 31, %d15, 24

# CHECK-INST: or.and.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0x9f,0x1f]
or.and.t %d1, %d1, 31, %d15, 31

# CHECK-INST: or.and.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x00,0x10]
or.and.t %d1, %d14, 0, %d0, 0

# CHECK-INST: or.and.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0x80,0x13]
or.and.t %d1, %d14, 0, %d0, 7

# CHECK-INST: or.and.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x00,0x1c]
or.and.t %d1, %d14, 0, %d0, 24

# CHECK-INST: or.and.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0x80,0x1f]
or.and.t %d1, %d14, 0, %d0, 31

# CHECK-INST: or.and.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x00,0x10]
or.and.t %d1, %d14, 0, %d1, 0

# CHECK-INST: or.and.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0x80,0x13]
or.and.t %d1, %d14, 0, %d1, 7

# CHECK-INST: or.and.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x00,0x1c]
or.and.t %d1, %d14, 0, %d1, 24

# CHECK-INST: or.and.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0x80,0x1f]
or.and.t %d1, %d14, 0, %d1, 31

# CHECK-INST: or.and.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x00,0x10]
or.and.t %d1, %d14, 0, %d14, 0

# CHECK-INST: or.and.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0xc7,0xee,0x80,0x13]
or.and.t %d1, %d14, 0, %d14, 7

# CHECK-INST: or.and.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x00,0x1c]
or.and.t %d1, %d14, 0, %d14, 24

# CHECK-INST: or.and.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0xc7,0xee,0x80,0x1f]
or.and.t %d1, %d14, 0, %d14, 31

# CHECK-INST: or.and.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x00,0x10]
or.and.t %d1, %d14, 0, %d15, 0

# CHECK-INST: or.and.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0x80,0x13]
or.and.t %d1, %d14, 0, %d15, 7

# CHECK-INST: or.and.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x00,0x1c]
or.and.t %d1, %d14, 0, %d15, 24

# CHECK-INST: or.and.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0x80,0x1f]
or.and.t %d1, %d14, 0, %d15, 31

# CHECK-INST: or.and.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x07,0x10]
or.and.t %d1, %d14, 7, %d0, 0

# CHECK-INST: or.and.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0x87,0x13]
or.and.t %d1, %d14, 7, %d0, 7

# CHECK-INST: or.and.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x07,0x1c]
or.and.t %d1, %d14, 7, %d0, 24

# CHECK-INST: or.and.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0x87,0x1f]
or.and.t %d1, %d14, 7, %d0, 31

# CHECK-INST: or.and.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x07,0x10]
or.and.t %d1, %d14, 7, %d1, 0

# CHECK-INST: or.and.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0x87,0x13]
or.and.t %d1, %d14, 7, %d1, 7

# CHECK-INST: or.and.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x07,0x1c]
or.and.t %d1, %d14, 7, %d1, 24

# CHECK-INST: or.and.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0x87,0x1f]
or.and.t %d1, %d14, 7, %d1, 31

# CHECK-INST: or.and.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x07,0x10]
or.and.t %d1, %d14, 7, %d14, 0

# CHECK-INST: or.and.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0xc7,0xee,0x87,0x13]
or.and.t %d1, %d14, 7, %d14, 7

# CHECK-INST: or.and.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x07,0x1c]
or.and.t %d1, %d14, 7, %d14, 24

# CHECK-INST: or.and.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0xc7,0xee,0x87,0x1f]
or.and.t %d1, %d14, 7, %d14, 31

# CHECK-INST: or.and.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x07,0x10]
or.and.t %d1, %d14, 7, %d15, 0

# CHECK-INST: or.and.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0x87,0x13]
or.and.t %d1, %d14, 7, %d15, 7

# CHECK-INST: or.and.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x07,0x1c]
or.and.t %d1, %d14, 7, %d15, 24

# CHECK-INST: or.and.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0x87,0x1f]
or.and.t %d1, %d14, 7, %d15, 31

# CHECK-INST: or.and.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x18,0x10]
or.and.t %d1, %d14, 24, %d0, 0

# CHECK-INST: or.and.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0x98,0x13]
or.and.t %d1, %d14, 24, %d0, 7

# CHECK-INST: or.and.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x18,0x1c]
or.and.t %d1, %d14, 24, %d0, 24

# CHECK-INST: or.and.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0x98,0x1f]
or.and.t %d1, %d14, 24, %d0, 31

# CHECK-INST: or.and.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x18,0x10]
or.and.t %d1, %d14, 24, %d1, 0

# CHECK-INST: or.and.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0x98,0x13]
or.and.t %d1, %d14, 24, %d1, 7

# CHECK-INST: or.and.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x18,0x1c]
or.and.t %d1, %d14, 24, %d1, 24

# CHECK-INST: or.and.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0x98,0x1f]
or.and.t %d1, %d14, 24, %d1, 31

# CHECK-INST: or.and.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x18,0x10]
or.and.t %d1, %d14, 24, %d14, 0

# CHECK-INST: or.and.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0xc7,0xee,0x98,0x13]
or.and.t %d1, %d14, 24, %d14, 7

# CHECK-INST: or.and.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x18,0x1c]
or.and.t %d1, %d14, 24, %d14, 24

# CHECK-INST: or.and.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0xc7,0xee,0x98,0x1f]
or.and.t %d1, %d14, 24, %d14, 31

# CHECK-INST: or.and.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x18,0x10]
or.and.t %d1, %d14, 24, %d15, 0

# CHECK-INST: or.and.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0x98,0x13]
or.and.t %d1, %d14, 24, %d15, 7

# CHECK-INST: or.and.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x18,0x1c]
or.and.t %d1, %d14, 24, %d15, 24

# CHECK-INST: or.and.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0x98,0x1f]
or.and.t %d1, %d14, 24, %d15, 31

# CHECK-INST: or.and.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x1f,0x10]
or.and.t %d1, %d14, 31, %d0, 0

# CHECK-INST: or.and.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0x9f,0x13]
or.and.t %d1, %d14, 31, %d0, 7

# CHECK-INST: or.and.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x1f,0x1c]
or.and.t %d1, %d14, 31, %d0, 24

# CHECK-INST: or.and.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0x9f,0x1f]
or.and.t %d1, %d14, 31, %d0, 31

# CHECK-INST: or.and.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x1f,0x10]
or.and.t %d1, %d14, 31, %d1, 0

# CHECK-INST: or.and.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0x9f,0x13]
or.and.t %d1, %d14, 31, %d1, 7

# CHECK-INST: or.and.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x1f,0x1c]
or.and.t %d1, %d14, 31, %d1, 24

# CHECK-INST: or.and.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0x9f,0x1f]
or.and.t %d1, %d14, 31, %d1, 31

# CHECK-INST: or.and.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x1f,0x10]
or.and.t %d1, %d14, 31, %d14, 0

# CHECK-INST: or.and.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0xc7,0xee,0x9f,0x13]
or.and.t %d1, %d14, 31, %d14, 7

# CHECK-INST: or.and.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x1f,0x1c]
or.and.t %d1, %d14, 31, %d14, 24

# CHECK-INST: or.and.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0xc7,0xee,0x9f,0x1f]
or.and.t %d1, %d14, 31, %d14, 31

# CHECK-INST: or.and.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x1f,0x10]
or.and.t %d1, %d14, 31, %d15, 0

# CHECK-INST: or.and.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0x9f,0x13]
or.and.t %d1, %d14, 31, %d15, 7

# CHECK-INST: or.and.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x1f,0x1c]
or.and.t %d1, %d14, 31, %d15, 24

# CHECK-INST: or.and.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0x9f,0x1f]
or.and.t %d1, %d14, 31, %d15, 31

# CHECK-INST: or.and.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x00,0x10]
or.and.t %d1, %d15, 0, %d0, 0

# CHECK-INST: or.and.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0x80,0x13]
or.and.t %d1, %d15, 0, %d0, 7

# CHECK-INST: or.and.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x00,0x1c]
or.and.t %d1, %d15, 0, %d0, 24

# CHECK-INST: or.and.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0x80,0x1f]
or.and.t %d1, %d15, 0, %d0, 31

# CHECK-INST: or.and.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x00,0x10]
or.and.t %d1, %d15, 0, %d1, 0

# CHECK-INST: or.and.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0x80,0x13]
or.and.t %d1, %d15, 0, %d1, 7

# CHECK-INST: or.and.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x00,0x1c]
or.and.t %d1, %d15, 0, %d1, 24

# CHECK-INST: or.and.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0x80,0x1f]
or.and.t %d1, %d15, 0, %d1, 31

# CHECK-INST: or.and.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x00,0x10]
or.and.t %d1, %d15, 0, %d14, 0

# CHECK-INST: or.and.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0xc7,0xef,0x80,0x13]
or.and.t %d1, %d15, 0, %d14, 7

# CHECK-INST: or.and.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x00,0x1c]
or.and.t %d1, %d15, 0, %d14, 24

# CHECK-INST: or.and.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0xc7,0xef,0x80,0x1f]
or.and.t %d1, %d15, 0, %d14, 31

# CHECK-INST: or.and.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x00,0x10]
or.and.t %d1, %d15, 0, %d15, 0

# CHECK-INST: or.and.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0xc7,0xff,0x80,0x13]
or.and.t %d1, %d15, 0, %d15, 7

# CHECK-INST: or.and.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x00,0x1c]
or.and.t %d1, %d15, 0, %d15, 24

# CHECK-INST: or.and.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0xc7,0xff,0x80,0x1f]
or.and.t %d1, %d15, 0, %d15, 31

# CHECK-INST: or.and.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x07,0x10]
or.and.t %d1, %d15, 7, %d0, 0

# CHECK-INST: or.and.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0x87,0x13]
or.and.t %d1, %d15, 7, %d0, 7

# CHECK-INST: or.and.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x07,0x1c]
or.and.t %d1, %d15, 7, %d0, 24

# CHECK-INST: or.and.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0x87,0x1f]
or.and.t %d1, %d15, 7, %d0, 31

# CHECK-INST: or.and.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x07,0x10]
or.and.t %d1, %d15, 7, %d1, 0

# CHECK-INST: or.and.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0x87,0x13]
or.and.t %d1, %d15, 7, %d1, 7

# CHECK-INST: or.and.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x07,0x1c]
or.and.t %d1, %d15, 7, %d1, 24

# CHECK-INST: or.and.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0x87,0x1f]
or.and.t %d1, %d15, 7, %d1, 31

# CHECK-INST: or.and.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x07,0x10]
or.and.t %d1, %d15, 7, %d14, 0

# CHECK-INST: or.and.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0xc7,0xef,0x87,0x13]
or.and.t %d1, %d15, 7, %d14, 7

# CHECK-INST: or.and.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x07,0x1c]
or.and.t %d1, %d15, 7, %d14, 24

# CHECK-INST: or.and.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0xc7,0xef,0x87,0x1f]
or.and.t %d1, %d15, 7, %d14, 31

# CHECK-INST: or.and.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x07,0x10]
or.and.t %d1, %d15, 7, %d15, 0

# CHECK-INST: or.and.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0xc7,0xff,0x87,0x13]
or.and.t %d1, %d15, 7, %d15, 7

# CHECK-INST: or.and.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x07,0x1c]
or.and.t %d1, %d15, 7, %d15, 24

# CHECK-INST: or.and.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0xc7,0xff,0x87,0x1f]
or.and.t %d1, %d15, 7, %d15, 31

# CHECK-INST: or.and.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x18,0x10]
or.and.t %d1, %d15, 24, %d0, 0

# CHECK-INST: or.and.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0x98,0x13]
or.and.t %d1, %d15, 24, %d0, 7

# CHECK-INST: or.and.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x18,0x1c]
or.and.t %d1, %d15, 24, %d0, 24

# CHECK-INST: or.and.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0x98,0x1f]
or.and.t %d1, %d15, 24, %d0, 31

# CHECK-INST: or.and.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x18,0x10]
or.and.t %d1, %d15, 24, %d1, 0

# CHECK-INST: or.and.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0x98,0x13]
or.and.t %d1, %d15, 24, %d1, 7

# CHECK-INST: or.and.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x18,0x1c]
or.and.t %d1, %d15, 24, %d1, 24

# CHECK-INST: or.and.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0x98,0x1f]
or.and.t %d1, %d15, 24, %d1, 31

# CHECK-INST: or.and.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x18,0x10]
or.and.t %d1, %d15, 24, %d14, 0

# CHECK-INST: or.and.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0xc7,0xef,0x98,0x13]
or.and.t %d1, %d15, 24, %d14, 7

# CHECK-INST: or.and.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x18,0x1c]
or.and.t %d1, %d15, 24, %d14, 24

# CHECK-INST: or.and.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0xc7,0xef,0x98,0x1f]
or.and.t %d1, %d15, 24, %d14, 31

# CHECK-INST: or.and.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x18,0x10]
or.and.t %d1, %d15, 24, %d15, 0

# CHECK-INST: or.and.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0xc7,0xff,0x98,0x13]
or.and.t %d1, %d15, 24, %d15, 7

# CHECK-INST: or.and.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x18,0x1c]
or.and.t %d1, %d15, 24, %d15, 24

# CHECK-INST: or.and.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0xc7,0xff,0x98,0x1f]
or.and.t %d1, %d15, 24, %d15, 31

# CHECK-INST: or.and.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x1f,0x10]
or.and.t %d1, %d15, 31, %d0, 0

# CHECK-INST: or.and.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0x9f,0x13]
or.and.t %d1, %d15, 31, %d0, 7

# CHECK-INST: or.and.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x1f,0x1c]
or.and.t %d1, %d15, 31, %d0, 24

# CHECK-INST: or.and.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0x9f,0x1f]
or.and.t %d1, %d15, 31, %d0, 31

# CHECK-INST: or.and.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x1f,0x10]
or.and.t %d1, %d15, 31, %d1, 0

# CHECK-INST: or.and.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0x9f,0x13]
or.and.t %d1, %d15, 31, %d1, 7

# CHECK-INST: or.and.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x1f,0x1c]
or.and.t %d1, %d15, 31, %d1, 24

# CHECK-INST: or.and.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0x9f,0x1f]
or.and.t %d1, %d15, 31, %d1, 31

# CHECK-INST: or.and.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x1f,0x10]
or.and.t %d1, %d15, 31, %d14, 0

# CHECK-INST: or.and.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0xc7,0xef,0x9f,0x13]
or.and.t %d1, %d15, 31, %d14, 7

# CHECK-INST: or.and.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x1f,0x1c]
or.and.t %d1, %d15, 31, %d14, 24

# CHECK-INST: or.and.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0xc7,0xef,0x9f,0x1f]
or.and.t %d1, %d15, 31, %d14, 31

# CHECK-INST: or.and.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x1f,0x10]
or.and.t %d1, %d15, 31, %d15, 0

# CHECK-INST: or.and.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0xc7,0xff,0x9f,0x13]
or.and.t %d1, %d15, 31, %d15, 7

# CHECK-INST: or.and.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x1f,0x1c]
or.and.t %d1, %d15, 31, %d15, 24

# CHECK-INST: or.and.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0xc7,0xff,0x9f,0x1f]
or.and.t %d1, %d15, 31, %d15, 31

# CHECK-INST: or.and.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x00,0xe0]
or.and.t %d14, %d0, 0, %d0, 0

# CHECK-INST: or.and.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0xc7,0x00,0x80,0xe3]
or.and.t %d14, %d0, 0, %d0, 7

# CHECK-INST: or.and.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x00,0xec]
or.and.t %d14, %d0, 0, %d0, 24

# CHECK-INST: or.and.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0xc7,0x00,0x80,0xef]
or.and.t %d14, %d0, 0, %d0, 31

# CHECK-INST: or.and.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x00,0xe0]
or.and.t %d14, %d0, 0, %d1, 0

# CHECK-INST: or.and.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0xc7,0x10,0x80,0xe3]
or.and.t %d14, %d0, 0, %d1, 7

# CHECK-INST: or.and.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x00,0xec]
or.and.t %d14, %d0, 0, %d1, 24

# CHECK-INST: or.and.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0xc7,0x10,0x80,0xef]
or.and.t %d14, %d0, 0, %d1, 31

# CHECK-INST: or.and.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x00,0xe0]
or.and.t %d14, %d0, 0, %d14, 0

# CHECK-INST: or.and.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0x80,0xe3]
or.and.t %d14, %d0, 0, %d14, 7

# CHECK-INST: or.and.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x00,0xec]
or.and.t %d14, %d0, 0, %d14, 24

# CHECK-INST: or.and.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0x80,0xef]
or.and.t %d14, %d0, 0, %d14, 31

# CHECK-INST: or.and.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x00,0xe0]
or.and.t %d14, %d0, 0, %d15, 0

# CHECK-INST: or.and.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0x80,0xe3]
or.and.t %d14, %d0, 0, %d15, 7

# CHECK-INST: or.and.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x00,0xec]
or.and.t %d14, %d0, 0, %d15, 24

# CHECK-INST: or.and.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0x80,0xef]
or.and.t %d14, %d0, 0, %d15, 31

# CHECK-INST: or.and.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x07,0xe0]
or.and.t %d14, %d0, 7, %d0, 0

# CHECK-INST: or.and.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0xc7,0x00,0x87,0xe3]
or.and.t %d14, %d0, 7, %d0, 7

# CHECK-INST: or.and.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x07,0xec]
or.and.t %d14, %d0, 7, %d0, 24

# CHECK-INST: or.and.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0xc7,0x00,0x87,0xef]
or.and.t %d14, %d0, 7, %d0, 31

# CHECK-INST: or.and.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x07,0xe0]
or.and.t %d14, %d0, 7, %d1, 0

# CHECK-INST: or.and.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0xc7,0x10,0x87,0xe3]
or.and.t %d14, %d0, 7, %d1, 7

# CHECK-INST: or.and.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x07,0xec]
or.and.t %d14, %d0, 7, %d1, 24

# CHECK-INST: or.and.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0xc7,0x10,0x87,0xef]
or.and.t %d14, %d0, 7, %d1, 31

# CHECK-INST: or.and.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x07,0xe0]
or.and.t %d14, %d0, 7, %d14, 0

# CHECK-INST: or.and.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0x87,0xe3]
or.and.t %d14, %d0, 7, %d14, 7

# CHECK-INST: or.and.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x07,0xec]
or.and.t %d14, %d0, 7, %d14, 24

# CHECK-INST: or.and.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0x87,0xef]
or.and.t %d14, %d0, 7, %d14, 31

# CHECK-INST: or.and.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x07,0xe0]
or.and.t %d14, %d0, 7, %d15, 0

# CHECK-INST: or.and.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0x87,0xe3]
or.and.t %d14, %d0, 7, %d15, 7

# CHECK-INST: or.and.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x07,0xec]
or.and.t %d14, %d0, 7, %d15, 24

# CHECK-INST: or.and.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0x87,0xef]
or.and.t %d14, %d0, 7, %d15, 31

# CHECK-INST: or.and.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x18,0xe0]
or.and.t %d14, %d0, 24, %d0, 0

# CHECK-INST: or.and.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0xc7,0x00,0x98,0xe3]
or.and.t %d14, %d0, 24, %d0, 7

# CHECK-INST: or.and.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x18,0xec]
or.and.t %d14, %d0, 24, %d0, 24

# CHECK-INST: or.and.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0xc7,0x00,0x98,0xef]
or.and.t %d14, %d0, 24, %d0, 31

# CHECK-INST: or.and.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x18,0xe0]
or.and.t %d14, %d0, 24, %d1, 0

# CHECK-INST: or.and.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0xc7,0x10,0x98,0xe3]
or.and.t %d14, %d0, 24, %d1, 7

# CHECK-INST: or.and.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x18,0xec]
or.and.t %d14, %d0, 24, %d1, 24

# CHECK-INST: or.and.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0xc7,0x10,0x98,0xef]
or.and.t %d14, %d0, 24, %d1, 31

# CHECK-INST: or.and.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x18,0xe0]
or.and.t %d14, %d0, 24, %d14, 0

# CHECK-INST: or.and.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0x98,0xe3]
or.and.t %d14, %d0, 24, %d14, 7

# CHECK-INST: or.and.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x18,0xec]
or.and.t %d14, %d0, 24, %d14, 24

# CHECK-INST: or.and.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0x98,0xef]
or.and.t %d14, %d0, 24, %d14, 31

# CHECK-INST: or.and.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x18,0xe0]
or.and.t %d14, %d0, 24, %d15, 0

# CHECK-INST: or.and.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0x98,0xe3]
or.and.t %d14, %d0, 24, %d15, 7

# CHECK-INST: or.and.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x18,0xec]
or.and.t %d14, %d0, 24, %d15, 24

# CHECK-INST: or.and.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0x98,0xef]
or.and.t %d14, %d0, 24, %d15, 31

# CHECK-INST: or.and.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x1f,0xe0]
or.and.t %d14, %d0, 31, %d0, 0

# CHECK-INST: or.and.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0xc7,0x00,0x9f,0xe3]
or.and.t %d14, %d0, 31, %d0, 7

# CHECK-INST: or.and.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x1f,0xec]
or.and.t %d14, %d0, 31, %d0, 24

# CHECK-INST: or.and.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0xc7,0x00,0x9f,0xef]
or.and.t %d14, %d0, 31, %d0, 31

# CHECK-INST: or.and.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x1f,0xe0]
or.and.t %d14, %d0, 31, %d1, 0

# CHECK-INST: or.and.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0xc7,0x10,0x9f,0xe3]
or.and.t %d14, %d0, 31, %d1, 7

# CHECK-INST: or.and.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x1f,0xec]
or.and.t %d14, %d0, 31, %d1, 24

# CHECK-INST: or.and.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0xc7,0x10,0x9f,0xef]
or.and.t %d14, %d0, 31, %d1, 31

# CHECK-INST: or.and.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x1f,0xe0]
or.and.t %d14, %d0, 31, %d14, 0

# CHECK-INST: or.and.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0x9f,0xe3]
or.and.t %d14, %d0, 31, %d14, 7

# CHECK-INST: or.and.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x1f,0xec]
or.and.t %d14, %d0, 31, %d14, 24

# CHECK-INST: or.and.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0x9f,0xef]
or.and.t %d14, %d0, 31, %d14, 31

# CHECK-INST: or.and.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x1f,0xe0]
or.and.t %d14, %d0, 31, %d15, 0

# CHECK-INST: or.and.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0x9f,0xe3]
or.and.t %d14, %d0, 31, %d15, 7

# CHECK-INST: or.and.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x1f,0xec]
or.and.t %d14, %d0, 31, %d15, 24

# CHECK-INST: or.and.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0x9f,0xef]
or.and.t %d14, %d0, 31, %d15, 31

# CHECK-INST: or.and.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x00,0xe0]
or.and.t %d14, %d1, 0, %d0, 0

# CHECK-INST: or.and.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0xc7,0x01,0x80,0xe3]
or.and.t %d14, %d1, 0, %d0, 7

# CHECK-INST: or.and.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x00,0xec]
or.and.t %d14, %d1, 0, %d0, 24

# CHECK-INST: or.and.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0xc7,0x01,0x80,0xef]
or.and.t %d14, %d1, 0, %d0, 31

# CHECK-INST: or.and.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x00,0xe0]
or.and.t %d14, %d1, 0, %d1, 0

# CHECK-INST: or.and.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0xc7,0x11,0x80,0xe3]
or.and.t %d14, %d1, 0, %d1, 7

# CHECK-INST: or.and.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x00,0xec]
or.and.t %d14, %d1, 0, %d1, 24

# CHECK-INST: or.and.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0xc7,0x11,0x80,0xef]
or.and.t %d14, %d1, 0, %d1, 31

# CHECK-INST: or.and.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x00,0xe0]
or.and.t %d14, %d1, 0, %d14, 0

# CHECK-INST: or.and.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0x80,0xe3]
or.and.t %d14, %d1, 0, %d14, 7

# CHECK-INST: or.and.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x00,0xec]
or.and.t %d14, %d1, 0, %d14, 24

# CHECK-INST: or.and.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0x80,0xef]
or.and.t %d14, %d1, 0, %d14, 31

# CHECK-INST: or.and.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x00,0xe0]
or.and.t %d14, %d1, 0, %d15, 0

# CHECK-INST: or.and.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0x80,0xe3]
or.and.t %d14, %d1, 0, %d15, 7

# CHECK-INST: or.and.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x00,0xec]
or.and.t %d14, %d1, 0, %d15, 24

# CHECK-INST: or.and.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0x80,0xef]
or.and.t %d14, %d1, 0, %d15, 31

# CHECK-INST: or.and.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x07,0xe0]
or.and.t %d14, %d1, 7, %d0, 0

# CHECK-INST: or.and.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0xc7,0x01,0x87,0xe3]
or.and.t %d14, %d1, 7, %d0, 7

# CHECK-INST: or.and.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x07,0xec]
or.and.t %d14, %d1, 7, %d0, 24

# CHECK-INST: or.and.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0xc7,0x01,0x87,0xef]
or.and.t %d14, %d1, 7, %d0, 31

# CHECK-INST: or.and.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x07,0xe0]
or.and.t %d14, %d1, 7, %d1, 0

# CHECK-INST: or.and.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0xc7,0x11,0x87,0xe3]
or.and.t %d14, %d1, 7, %d1, 7

# CHECK-INST: or.and.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x07,0xec]
or.and.t %d14, %d1, 7, %d1, 24

# CHECK-INST: or.and.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0xc7,0x11,0x87,0xef]
or.and.t %d14, %d1, 7, %d1, 31

# CHECK-INST: or.and.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x07,0xe0]
or.and.t %d14, %d1, 7, %d14, 0

# CHECK-INST: or.and.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0x87,0xe3]
or.and.t %d14, %d1, 7, %d14, 7

# CHECK-INST: or.and.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x07,0xec]
or.and.t %d14, %d1, 7, %d14, 24

# CHECK-INST: or.and.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0x87,0xef]
or.and.t %d14, %d1, 7, %d14, 31

# CHECK-INST: or.and.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x07,0xe0]
or.and.t %d14, %d1, 7, %d15, 0

# CHECK-INST: or.and.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0x87,0xe3]
or.and.t %d14, %d1, 7, %d15, 7

# CHECK-INST: or.and.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x07,0xec]
or.and.t %d14, %d1, 7, %d15, 24

# CHECK-INST: or.and.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0x87,0xef]
or.and.t %d14, %d1, 7, %d15, 31

# CHECK-INST: or.and.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x18,0xe0]
or.and.t %d14, %d1, 24, %d0, 0

# CHECK-INST: or.and.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0xc7,0x01,0x98,0xe3]
or.and.t %d14, %d1, 24, %d0, 7

# CHECK-INST: or.and.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x18,0xec]
or.and.t %d14, %d1, 24, %d0, 24

# CHECK-INST: or.and.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0xc7,0x01,0x98,0xef]
or.and.t %d14, %d1, 24, %d0, 31

# CHECK-INST: or.and.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x18,0xe0]
or.and.t %d14, %d1, 24, %d1, 0

# CHECK-INST: or.and.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0xc7,0x11,0x98,0xe3]
or.and.t %d14, %d1, 24, %d1, 7

# CHECK-INST: or.and.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x18,0xec]
or.and.t %d14, %d1, 24, %d1, 24

# CHECK-INST: or.and.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0xc7,0x11,0x98,0xef]
or.and.t %d14, %d1, 24, %d1, 31

# CHECK-INST: or.and.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x18,0xe0]
or.and.t %d14, %d1, 24, %d14, 0

# CHECK-INST: or.and.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0x98,0xe3]
or.and.t %d14, %d1, 24, %d14, 7

# CHECK-INST: or.and.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x18,0xec]
or.and.t %d14, %d1, 24, %d14, 24

# CHECK-INST: or.and.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0x98,0xef]
or.and.t %d14, %d1, 24, %d14, 31

# CHECK-INST: or.and.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x18,0xe0]
or.and.t %d14, %d1, 24, %d15, 0

# CHECK-INST: or.and.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0x98,0xe3]
or.and.t %d14, %d1, 24, %d15, 7

# CHECK-INST: or.and.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x18,0xec]
or.and.t %d14, %d1, 24, %d15, 24

# CHECK-INST: or.and.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0x98,0xef]
or.and.t %d14, %d1, 24, %d15, 31

# CHECK-INST: or.and.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x1f,0xe0]
or.and.t %d14, %d1, 31, %d0, 0

# CHECK-INST: or.and.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0xc7,0x01,0x9f,0xe3]
or.and.t %d14, %d1, 31, %d0, 7

# CHECK-INST: or.and.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x1f,0xec]
or.and.t %d14, %d1, 31, %d0, 24

# CHECK-INST: or.and.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0xc7,0x01,0x9f,0xef]
or.and.t %d14, %d1, 31, %d0, 31

# CHECK-INST: or.and.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x1f,0xe0]
or.and.t %d14, %d1, 31, %d1, 0

# CHECK-INST: or.and.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0xc7,0x11,0x9f,0xe3]
or.and.t %d14, %d1, 31, %d1, 7

# CHECK-INST: or.and.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x1f,0xec]
or.and.t %d14, %d1, 31, %d1, 24

# CHECK-INST: or.and.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0xc7,0x11,0x9f,0xef]
or.and.t %d14, %d1, 31, %d1, 31

# CHECK-INST: or.and.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x1f,0xe0]
or.and.t %d14, %d1, 31, %d14, 0

# CHECK-INST: or.and.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0x9f,0xe3]
or.and.t %d14, %d1, 31, %d14, 7

# CHECK-INST: or.and.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x1f,0xec]
or.and.t %d14, %d1, 31, %d14, 24

# CHECK-INST: or.and.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0x9f,0xef]
or.and.t %d14, %d1, 31, %d14, 31

# CHECK-INST: or.and.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x1f,0xe0]
or.and.t %d14, %d1, 31, %d15, 0

# CHECK-INST: or.and.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0x9f,0xe3]
or.and.t %d14, %d1, 31, %d15, 7

# CHECK-INST: or.and.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x1f,0xec]
or.and.t %d14, %d1, 31, %d15, 24

# CHECK-INST: or.and.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0x9f,0xef]
or.and.t %d14, %d1, 31, %d15, 31

# CHECK-INST: or.and.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x00,0xe0]
or.and.t %d14, %d14, 0, %d0, 0

# CHECK-INST: or.and.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0x80,0xe3]
or.and.t %d14, %d14, 0, %d0, 7

# CHECK-INST: or.and.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x00,0xec]
or.and.t %d14, %d14, 0, %d0, 24

# CHECK-INST: or.and.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0x80,0xef]
or.and.t %d14, %d14, 0, %d0, 31

# CHECK-INST: or.and.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x00,0xe0]
or.and.t %d14, %d14, 0, %d1, 0

# CHECK-INST: or.and.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0x80,0xe3]
or.and.t %d14, %d14, 0, %d1, 7

# CHECK-INST: or.and.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x00,0xec]
or.and.t %d14, %d14, 0, %d1, 24

# CHECK-INST: or.and.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0x80,0xef]
or.and.t %d14, %d14, 0, %d1, 31

# CHECK-INST: or.and.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x00,0xe0]
or.and.t %d14, %d14, 0, %d14, 0

# CHECK-INST: or.and.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0xc7,0xee,0x80,0xe3]
or.and.t %d14, %d14, 0, %d14, 7

# CHECK-INST: or.and.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x00,0xec]
or.and.t %d14, %d14, 0, %d14, 24

# CHECK-INST: or.and.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0xc7,0xee,0x80,0xef]
or.and.t %d14, %d14, 0, %d14, 31

# CHECK-INST: or.and.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x00,0xe0]
or.and.t %d14, %d14, 0, %d15, 0

# CHECK-INST: or.and.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0x80,0xe3]
or.and.t %d14, %d14, 0, %d15, 7

# CHECK-INST: or.and.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x00,0xec]
or.and.t %d14, %d14, 0, %d15, 24

# CHECK-INST: or.and.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0x80,0xef]
or.and.t %d14, %d14, 0, %d15, 31

# CHECK-INST: or.and.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x07,0xe0]
or.and.t %d14, %d14, 7, %d0, 0

# CHECK-INST: or.and.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0x87,0xe3]
or.and.t %d14, %d14, 7, %d0, 7

# CHECK-INST: or.and.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x07,0xec]
or.and.t %d14, %d14, 7, %d0, 24

# CHECK-INST: or.and.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0x87,0xef]
or.and.t %d14, %d14, 7, %d0, 31

# CHECK-INST: or.and.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x07,0xe0]
or.and.t %d14, %d14, 7, %d1, 0

# CHECK-INST: or.and.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0x87,0xe3]
or.and.t %d14, %d14, 7, %d1, 7

# CHECK-INST: or.and.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x07,0xec]
or.and.t %d14, %d14, 7, %d1, 24

# CHECK-INST: or.and.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0x87,0xef]
or.and.t %d14, %d14, 7, %d1, 31

# CHECK-INST: or.and.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x07,0xe0]
or.and.t %d14, %d14, 7, %d14, 0

# CHECK-INST: or.and.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0xc7,0xee,0x87,0xe3]
or.and.t %d14, %d14, 7, %d14, 7

# CHECK-INST: or.and.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x07,0xec]
or.and.t %d14, %d14, 7, %d14, 24

# CHECK-INST: or.and.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0xc7,0xee,0x87,0xef]
or.and.t %d14, %d14, 7, %d14, 31

# CHECK-INST: or.and.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x07,0xe0]
or.and.t %d14, %d14, 7, %d15, 0

# CHECK-INST: or.and.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0x87,0xe3]
or.and.t %d14, %d14, 7, %d15, 7

# CHECK-INST: or.and.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x07,0xec]
or.and.t %d14, %d14, 7, %d15, 24

# CHECK-INST: or.and.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0x87,0xef]
or.and.t %d14, %d14, 7, %d15, 31

# CHECK-INST: or.and.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x18,0xe0]
or.and.t %d14, %d14, 24, %d0, 0

# CHECK-INST: or.and.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0x98,0xe3]
or.and.t %d14, %d14, 24, %d0, 7

# CHECK-INST: or.and.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x18,0xec]
or.and.t %d14, %d14, 24, %d0, 24

# CHECK-INST: or.and.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0x98,0xef]
or.and.t %d14, %d14, 24, %d0, 31

# CHECK-INST: or.and.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x18,0xe0]
or.and.t %d14, %d14, 24, %d1, 0

# CHECK-INST: or.and.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0x98,0xe3]
or.and.t %d14, %d14, 24, %d1, 7

# CHECK-INST: or.and.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x18,0xec]
or.and.t %d14, %d14, 24, %d1, 24

# CHECK-INST: or.and.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0x98,0xef]
or.and.t %d14, %d14, 24, %d1, 31

# CHECK-INST: or.and.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x18,0xe0]
or.and.t %d14, %d14, 24, %d14, 0

# CHECK-INST: or.and.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0xc7,0xee,0x98,0xe3]
or.and.t %d14, %d14, 24, %d14, 7

# CHECK-INST: or.and.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x18,0xec]
or.and.t %d14, %d14, 24, %d14, 24

# CHECK-INST: or.and.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0xc7,0xee,0x98,0xef]
or.and.t %d14, %d14, 24, %d14, 31

# CHECK-INST: or.and.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x18,0xe0]
or.and.t %d14, %d14, 24, %d15, 0

# CHECK-INST: or.and.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0x98,0xe3]
or.and.t %d14, %d14, 24, %d15, 7

# CHECK-INST: or.and.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x18,0xec]
or.and.t %d14, %d14, 24, %d15, 24

# CHECK-INST: or.and.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0x98,0xef]
or.and.t %d14, %d14, 24, %d15, 31

# CHECK-INST: or.and.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x1f,0xe0]
or.and.t %d14, %d14, 31, %d0, 0

# CHECK-INST: or.and.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0x9f,0xe3]
or.and.t %d14, %d14, 31, %d0, 7

# CHECK-INST: or.and.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x1f,0xec]
or.and.t %d14, %d14, 31, %d0, 24

# CHECK-INST: or.and.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0x9f,0xef]
or.and.t %d14, %d14, 31, %d0, 31

# CHECK-INST: or.and.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x1f,0xe0]
or.and.t %d14, %d14, 31, %d1, 0

# CHECK-INST: or.and.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0x9f,0xe3]
or.and.t %d14, %d14, 31, %d1, 7

# CHECK-INST: or.and.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x1f,0xec]
or.and.t %d14, %d14, 31, %d1, 24

# CHECK-INST: or.and.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0x9f,0xef]
or.and.t %d14, %d14, 31, %d1, 31

# CHECK-INST: or.and.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x1f,0xe0]
or.and.t %d14, %d14, 31, %d14, 0

# CHECK-INST: or.and.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0xc7,0xee,0x9f,0xe3]
or.and.t %d14, %d14, 31, %d14, 7

# CHECK-INST: or.and.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x1f,0xec]
or.and.t %d14, %d14, 31, %d14, 24

# CHECK-INST: or.and.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0xc7,0xee,0x9f,0xef]
or.and.t %d14, %d14, 31, %d14, 31

# CHECK-INST: or.and.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x1f,0xe0]
or.and.t %d14, %d14, 31, %d15, 0

# CHECK-INST: or.and.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0x9f,0xe3]
or.and.t %d14, %d14, 31, %d15, 7

# CHECK-INST: or.and.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x1f,0xec]
or.and.t %d14, %d14, 31, %d15, 24

# CHECK-INST: or.and.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0x9f,0xef]
or.and.t %d14, %d14, 31, %d15, 31

# CHECK-INST: or.and.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x00,0xe0]
or.and.t %d14, %d15, 0, %d0, 0

# CHECK-INST: or.and.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0x80,0xe3]
or.and.t %d14, %d15, 0, %d0, 7

# CHECK-INST: or.and.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x00,0xec]
or.and.t %d14, %d15, 0, %d0, 24

# CHECK-INST: or.and.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0x80,0xef]
or.and.t %d14, %d15, 0, %d0, 31

# CHECK-INST: or.and.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x00,0xe0]
or.and.t %d14, %d15, 0, %d1, 0

# CHECK-INST: or.and.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0x80,0xe3]
or.and.t %d14, %d15, 0, %d1, 7

# CHECK-INST: or.and.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x00,0xec]
or.and.t %d14, %d15, 0, %d1, 24

# CHECK-INST: or.and.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0x80,0xef]
or.and.t %d14, %d15, 0, %d1, 31

# CHECK-INST: or.and.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x00,0xe0]
or.and.t %d14, %d15, 0, %d14, 0

# CHECK-INST: or.and.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0xc7,0xef,0x80,0xe3]
or.and.t %d14, %d15, 0, %d14, 7

# CHECK-INST: or.and.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x00,0xec]
or.and.t %d14, %d15, 0, %d14, 24

# CHECK-INST: or.and.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0xc7,0xef,0x80,0xef]
or.and.t %d14, %d15, 0, %d14, 31

# CHECK-INST: or.and.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x00,0xe0]
or.and.t %d14, %d15, 0, %d15, 0

# CHECK-INST: or.and.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0xc7,0xff,0x80,0xe3]
or.and.t %d14, %d15, 0, %d15, 7

# CHECK-INST: or.and.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x00,0xec]
or.and.t %d14, %d15, 0, %d15, 24

# CHECK-INST: or.and.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0xc7,0xff,0x80,0xef]
or.and.t %d14, %d15, 0, %d15, 31

# CHECK-INST: or.and.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x07,0xe0]
or.and.t %d14, %d15, 7, %d0, 0

# CHECK-INST: or.and.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0x87,0xe3]
or.and.t %d14, %d15, 7, %d0, 7

# CHECK-INST: or.and.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x07,0xec]
or.and.t %d14, %d15, 7, %d0, 24

# CHECK-INST: or.and.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0x87,0xef]
or.and.t %d14, %d15, 7, %d0, 31

# CHECK-INST: or.and.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x07,0xe0]
or.and.t %d14, %d15, 7, %d1, 0

# CHECK-INST: or.and.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0x87,0xe3]
or.and.t %d14, %d15, 7, %d1, 7

# CHECK-INST: or.and.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x07,0xec]
or.and.t %d14, %d15, 7, %d1, 24

# CHECK-INST: or.and.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0x87,0xef]
or.and.t %d14, %d15, 7, %d1, 31

# CHECK-INST: or.and.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x07,0xe0]
or.and.t %d14, %d15, 7, %d14, 0

# CHECK-INST: or.and.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0xc7,0xef,0x87,0xe3]
or.and.t %d14, %d15, 7, %d14, 7

# CHECK-INST: or.and.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x07,0xec]
or.and.t %d14, %d15, 7, %d14, 24

# CHECK-INST: or.and.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0xc7,0xef,0x87,0xef]
or.and.t %d14, %d15, 7, %d14, 31

# CHECK-INST: or.and.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x07,0xe0]
or.and.t %d14, %d15, 7, %d15, 0

# CHECK-INST: or.and.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0xc7,0xff,0x87,0xe3]
or.and.t %d14, %d15, 7, %d15, 7

# CHECK-INST: or.and.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x07,0xec]
or.and.t %d14, %d15, 7, %d15, 24

# CHECK-INST: or.and.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0xc7,0xff,0x87,0xef]
or.and.t %d14, %d15, 7, %d15, 31

# CHECK-INST: or.and.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x18,0xe0]
or.and.t %d14, %d15, 24, %d0, 0

# CHECK-INST: or.and.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0x98,0xe3]
or.and.t %d14, %d15, 24, %d0, 7

# CHECK-INST: or.and.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x18,0xec]
or.and.t %d14, %d15, 24, %d0, 24

# CHECK-INST: or.and.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0x98,0xef]
or.and.t %d14, %d15, 24, %d0, 31

# CHECK-INST: or.and.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x18,0xe0]
or.and.t %d14, %d15, 24, %d1, 0

# CHECK-INST: or.and.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0x98,0xe3]
or.and.t %d14, %d15, 24, %d1, 7

# CHECK-INST: or.and.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x18,0xec]
or.and.t %d14, %d15, 24, %d1, 24

# CHECK-INST: or.and.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0x98,0xef]
or.and.t %d14, %d15, 24, %d1, 31

# CHECK-INST: or.and.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x18,0xe0]
or.and.t %d14, %d15, 24, %d14, 0

# CHECK-INST: or.and.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0xc7,0xef,0x98,0xe3]
or.and.t %d14, %d15, 24, %d14, 7

# CHECK-INST: or.and.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x18,0xec]
or.and.t %d14, %d15, 24, %d14, 24

# CHECK-INST: or.and.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0xc7,0xef,0x98,0xef]
or.and.t %d14, %d15, 24, %d14, 31

# CHECK-INST: or.and.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x18,0xe0]
or.and.t %d14, %d15, 24, %d15, 0

# CHECK-INST: or.and.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0xc7,0xff,0x98,0xe3]
or.and.t %d14, %d15, 24, %d15, 7

# CHECK-INST: or.and.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x18,0xec]
or.and.t %d14, %d15, 24, %d15, 24

# CHECK-INST: or.and.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0xc7,0xff,0x98,0xef]
or.and.t %d14, %d15, 24, %d15, 31

# CHECK-INST: or.and.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x1f,0xe0]
or.and.t %d14, %d15, 31, %d0, 0

# CHECK-INST: or.and.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0x9f,0xe3]
or.and.t %d14, %d15, 31, %d0, 7

# CHECK-INST: or.and.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x1f,0xec]
or.and.t %d14, %d15, 31, %d0, 24

# CHECK-INST: or.and.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0x9f,0xef]
or.and.t %d14, %d15, 31, %d0, 31

# CHECK-INST: or.and.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x1f,0xe0]
or.and.t %d14, %d15, 31, %d1, 0

# CHECK-INST: or.and.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0x9f,0xe3]
or.and.t %d14, %d15, 31, %d1, 7

# CHECK-INST: or.and.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x1f,0xec]
or.and.t %d14, %d15, 31, %d1, 24

# CHECK-INST: or.and.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0x9f,0xef]
or.and.t %d14, %d15, 31, %d1, 31

# CHECK-INST: or.and.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x1f,0xe0]
or.and.t %d14, %d15, 31, %d14, 0

# CHECK-INST: or.and.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0xc7,0xef,0x9f,0xe3]
or.and.t %d14, %d15, 31, %d14, 7

# CHECK-INST: or.and.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x1f,0xec]
or.and.t %d14, %d15, 31, %d14, 24

# CHECK-INST: or.and.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0xc7,0xef,0x9f,0xef]
or.and.t %d14, %d15, 31, %d14, 31

# CHECK-INST: or.and.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x1f,0xe0]
or.and.t %d14, %d15, 31, %d15, 0

# CHECK-INST: or.and.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0xc7,0xff,0x9f,0xe3]
or.and.t %d14, %d15, 31, %d15, 7

# CHECK-INST: or.and.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x1f,0xec]
or.and.t %d14, %d15, 31, %d15, 24

# CHECK-INST: or.and.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0xc7,0xff,0x9f,0xef]
or.and.t %d14, %d15, 31, %d15, 31

# CHECK-INST: or.and.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x00,0xf0]
or.and.t %d15, %d0, 0, %d0, 0

# CHECK-INST: or.and.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0xc7,0x00,0x80,0xf3]
or.and.t %d15, %d0, 0, %d0, 7

# CHECK-INST: or.and.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x00,0xfc]
or.and.t %d15, %d0, 0, %d0, 24

# CHECK-INST: or.and.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0xc7,0x00,0x80,0xff]
or.and.t %d15, %d0, 0, %d0, 31

# CHECK-INST: or.and.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x00,0xf0]
or.and.t %d15, %d0, 0, %d1, 0

# CHECK-INST: or.and.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0xc7,0x10,0x80,0xf3]
or.and.t %d15, %d0, 0, %d1, 7

# CHECK-INST: or.and.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x00,0xfc]
or.and.t %d15, %d0, 0, %d1, 24

# CHECK-INST: or.and.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0xc7,0x10,0x80,0xff]
or.and.t %d15, %d0, 0, %d1, 31

# CHECK-INST: or.and.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x00,0xf0]
or.and.t %d15, %d0, 0, %d14, 0

# CHECK-INST: or.and.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0x80,0xf3]
or.and.t %d15, %d0, 0, %d14, 7

# CHECK-INST: or.and.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x00,0xfc]
or.and.t %d15, %d0, 0, %d14, 24

# CHECK-INST: or.and.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0x80,0xff]
or.and.t %d15, %d0, 0, %d14, 31

# CHECK-INST: or.and.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x00,0xf0]
or.and.t %d15, %d0, 0, %d15, 0

# CHECK-INST: or.and.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0x80,0xf3]
or.and.t %d15, %d0, 0, %d15, 7

# CHECK-INST: or.and.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x00,0xfc]
or.and.t %d15, %d0, 0, %d15, 24

# CHECK-INST: or.and.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0x80,0xff]
or.and.t %d15, %d0, 0, %d15, 31

# CHECK-INST: or.and.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x07,0xf0]
or.and.t %d15, %d0, 7, %d0, 0

# CHECK-INST: or.and.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0xc7,0x00,0x87,0xf3]
or.and.t %d15, %d0, 7, %d0, 7

# CHECK-INST: or.and.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x07,0xfc]
or.and.t %d15, %d0, 7, %d0, 24

# CHECK-INST: or.and.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0xc7,0x00,0x87,0xff]
or.and.t %d15, %d0, 7, %d0, 31

# CHECK-INST: or.and.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x07,0xf0]
or.and.t %d15, %d0, 7, %d1, 0

# CHECK-INST: or.and.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0xc7,0x10,0x87,0xf3]
or.and.t %d15, %d0, 7, %d1, 7

# CHECK-INST: or.and.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x07,0xfc]
or.and.t %d15, %d0, 7, %d1, 24

# CHECK-INST: or.and.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0xc7,0x10,0x87,0xff]
or.and.t %d15, %d0, 7, %d1, 31

# CHECK-INST: or.and.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x07,0xf0]
or.and.t %d15, %d0, 7, %d14, 0

# CHECK-INST: or.and.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0x87,0xf3]
or.and.t %d15, %d0, 7, %d14, 7

# CHECK-INST: or.and.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x07,0xfc]
or.and.t %d15, %d0, 7, %d14, 24

# CHECK-INST: or.and.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0x87,0xff]
or.and.t %d15, %d0, 7, %d14, 31

# CHECK-INST: or.and.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x07,0xf0]
or.and.t %d15, %d0, 7, %d15, 0

# CHECK-INST: or.and.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0x87,0xf3]
or.and.t %d15, %d0, 7, %d15, 7

# CHECK-INST: or.and.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x07,0xfc]
or.and.t %d15, %d0, 7, %d15, 24

# CHECK-INST: or.and.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0x87,0xff]
or.and.t %d15, %d0, 7, %d15, 31

# CHECK-INST: or.and.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x18,0xf0]
or.and.t %d15, %d0, 24, %d0, 0

# CHECK-INST: or.and.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0xc7,0x00,0x98,0xf3]
or.and.t %d15, %d0, 24, %d0, 7

# CHECK-INST: or.and.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x18,0xfc]
or.and.t %d15, %d0, 24, %d0, 24

# CHECK-INST: or.and.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0xc7,0x00,0x98,0xff]
or.and.t %d15, %d0, 24, %d0, 31

# CHECK-INST: or.and.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x18,0xf0]
or.and.t %d15, %d0, 24, %d1, 0

# CHECK-INST: or.and.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0xc7,0x10,0x98,0xf3]
or.and.t %d15, %d0, 24, %d1, 7

# CHECK-INST: or.and.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x18,0xfc]
or.and.t %d15, %d0, 24, %d1, 24

# CHECK-INST: or.and.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0xc7,0x10,0x98,0xff]
or.and.t %d15, %d0, 24, %d1, 31

# CHECK-INST: or.and.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x18,0xf0]
or.and.t %d15, %d0, 24, %d14, 0

# CHECK-INST: or.and.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0x98,0xf3]
or.and.t %d15, %d0, 24, %d14, 7

# CHECK-INST: or.and.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x18,0xfc]
or.and.t %d15, %d0, 24, %d14, 24

# CHECK-INST: or.and.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0x98,0xff]
or.and.t %d15, %d0, 24, %d14, 31

# CHECK-INST: or.and.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x18,0xf0]
or.and.t %d15, %d0, 24, %d15, 0

# CHECK-INST: or.and.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0x98,0xf3]
or.and.t %d15, %d0, 24, %d15, 7

# CHECK-INST: or.and.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x18,0xfc]
or.and.t %d15, %d0, 24, %d15, 24

# CHECK-INST: or.and.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0x98,0xff]
or.and.t %d15, %d0, 24, %d15, 31

# CHECK-INST: or.and.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x1f,0xf0]
or.and.t %d15, %d0, 31, %d0, 0

# CHECK-INST: or.and.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0xc7,0x00,0x9f,0xf3]
or.and.t %d15, %d0, 31, %d0, 7

# CHECK-INST: or.and.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x1f,0xfc]
or.and.t %d15, %d0, 31, %d0, 24

# CHECK-INST: or.and.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0xc7,0x00,0x9f,0xff]
or.and.t %d15, %d0, 31, %d0, 31

# CHECK-INST: or.and.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x1f,0xf0]
or.and.t %d15, %d0, 31, %d1, 0

# CHECK-INST: or.and.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0xc7,0x10,0x9f,0xf3]
or.and.t %d15, %d0, 31, %d1, 7

# CHECK-INST: or.and.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x1f,0xfc]
or.and.t %d15, %d0, 31, %d1, 24

# CHECK-INST: or.and.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0xc7,0x10,0x9f,0xff]
or.and.t %d15, %d0, 31, %d1, 31

# CHECK-INST: or.and.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x1f,0xf0]
or.and.t %d15, %d0, 31, %d14, 0

# CHECK-INST: or.and.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0x9f,0xf3]
or.and.t %d15, %d0, 31, %d14, 7

# CHECK-INST: or.and.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x1f,0xfc]
or.and.t %d15, %d0, 31, %d14, 24

# CHECK-INST: or.and.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0x9f,0xff]
or.and.t %d15, %d0, 31, %d14, 31

# CHECK-INST: or.and.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x1f,0xf0]
or.and.t %d15, %d0, 31, %d15, 0

# CHECK-INST: or.and.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0x9f,0xf3]
or.and.t %d15, %d0, 31, %d15, 7

# CHECK-INST: or.and.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x1f,0xfc]
or.and.t %d15, %d0, 31, %d15, 24

# CHECK-INST: or.and.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0x9f,0xff]
or.and.t %d15, %d0, 31, %d15, 31

# CHECK-INST: or.and.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x00,0xf0]
or.and.t %d15, %d1, 0, %d0, 0

# CHECK-INST: or.and.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0xc7,0x01,0x80,0xf3]
or.and.t %d15, %d1, 0, %d0, 7

# CHECK-INST: or.and.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x00,0xfc]
or.and.t %d15, %d1, 0, %d0, 24

# CHECK-INST: or.and.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0xc7,0x01,0x80,0xff]
or.and.t %d15, %d1, 0, %d0, 31

# CHECK-INST: or.and.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x00,0xf0]
or.and.t %d15, %d1, 0, %d1, 0

# CHECK-INST: or.and.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0xc7,0x11,0x80,0xf3]
or.and.t %d15, %d1, 0, %d1, 7

# CHECK-INST: or.and.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x00,0xfc]
or.and.t %d15, %d1, 0, %d1, 24

# CHECK-INST: or.and.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0xc7,0x11,0x80,0xff]
or.and.t %d15, %d1, 0, %d1, 31

# CHECK-INST: or.and.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x00,0xf0]
or.and.t %d15, %d1, 0, %d14, 0

# CHECK-INST: or.and.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0x80,0xf3]
or.and.t %d15, %d1, 0, %d14, 7

# CHECK-INST: or.and.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x00,0xfc]
or.and.t %d15, %d1, 0, %d14, 24

# CHECK-INST: or.and.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0x80,0xff]
or.and.t %d15, %d1, 0, %d14, 31

# CHECK-INST: or.and.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x00,0xf0]
or.and.t %d15, %d1, 0, %d15, 0

# CHECK-INST: or.and.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0x80,0xf3]
or.and.t %d15, %d1, 0, %d15, 7

# CHECK-INST: or.and.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x00,0xfc]
or.and.t %d15, %d1, 0, %d15, 24

# CHECK-INST: or.and.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0x80,0xff]
or.and.t %d15, %d1, 0, %d15, 31

# CHECK-INST: or.and.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x07,0xf0]
or.and.t %d15, %d1, 7, %d0, 0

# CHECK-INST: or.and.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0xc7,0x01,0x87,0xf3]
or.and.t %d15, %d1, 7, %d0, 7

# CHECK-INST: or.and.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x07,0xfc]
or.and.t %d15, %d1, 7, %d0, 24

# CHECK-INST: or.and.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0xc7,0x01,0x87,0xff]
or.and.t %d15, %d1, 7, %d0, 31

# CHECK-INST: or.and.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x07,0xf0]
or.and.t %d15, %d1, 7, %d1, 0

# CHECK-INST: or.and.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0xc7,0x11,0x87,0xf3]
or.and.t %d15, %d1, 7, %d1, 7

# CHECK-INST: or.and.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x07,0xfc]
or.and.t %d15, %d1, 7, %d1, 24

# CHECK-INST: or.and.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0xc7,0x11,0x87,0xff]
or.and.t %d15, %d1, 7, %d1, 31

# CHECK-INST: or.and.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x07,0xf0]
or.and.t %d15, %d1, 7, %d14, 0

# CHECK-INST: or.and.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0x87,0xf3]
or.and.t %d15, %d1, 7, %d14, 7

# CHECK-INST: or.and.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x07,0xfc]
or.and.t %d15, %d1, 7, %d14, 24

# CHECK-INST: or.and.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0x87,0xff]
or.and.t %d15, %d1, 7, %d14, 31

# CHECK-INST: or.and.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x07,0xf0]
or.and.t %d15, %d1, 7, %d15, 0

# CHECK-INST: or.and.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0x87,0xf3]
or.and.t %d15, %d1, 7, %d15, 7

# CHECK-INST: or.and.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x07,0xfc]
or.and.t %d15, %d1, 7, %d15, 24

# CHECK-INST: or.and.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0x87,0xff]
or.and.t %d15, %d1, 7, %d15, 31

# CHECK-INST: or.and.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x18,0xf0]
or.and.t %d15, %d1, 24, %d0, 0

# CHECK-INST: or.and.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0xc7,0x01,0x98,0xf3]
or.and.t %d15, %d1, 24, %d0, 7

# CHECK-INST: or.and.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x18,0xfc]
or.and.t %d15, %d1, 24, %d0, 24

# CHECK-INST: or.and.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0xc7,0x01,0x98,0xff]
or.and.t %d15, %d1, 24, %d0, 31

# CHECK-INST: or.and.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x18,0xf0]
or.and.t %d15, %d1, 24, %d1, 0

# CHECK-INST: or.and.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0xc7,0x11,0x98,0xf3]
or.and.t %d15, %d1, 24, %d1, 7

# CHECK-INST: or.and.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x18,0xfc]
or.and.t %d15, %d1, 24, %d1, 24

# CHECK-INST: or.and.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0xc7,0x11,0x98,0xff]
or.and.t %d15, %d1, 24, %d1, 31

# CHECK-INST: or.and.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x18,0xf0]
or.and.t %d15, %d1, 24, %d14, 0

# CHECK-INST: or.and.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0x98,0xf3]
or.and.t %d15, %d1, 24, %d14, 7

# CHECK-INST: or.and.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x18,0xfc]
or.and.t %d15, %d1, 24, %d14, 24

# CHECK-INST: or.and.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0x98,0xff]
or.and.t %d15, %d1, 24, %d14, 31

# CHECK-INST: or.and.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x18,0xf0]
or.and.t %d15, %d1, 24, %d15, 0

# CHECK-INST: or.and.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0x98,0xf3]
or.and.t %d15, %d1, 24, %d15, 7

# CHECK-INST: or.and.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x18,0xfc]
or.and.t %d15, %d1, 24, %d15, 24

# CHECK-INST: or.and.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0x98,0xff]
or.and.t %d15, %d1, 24, %d15, 31

# CHECK-INST: or.and.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x1f,0xf0]
or.and.t %d15, %d1, 31, %d0, 0

# CHECK-INST: or.and.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0xc7,0x01,0x9f,0xf3]
or.and.t %d15, %d1, 31, %d0, 7

# CHECK-INST: or.and.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x1f,0xfc]
or.and.t %d15, %d1, 31, %d0, 24

# CHECK-INST: or.and.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0xc7,0x01,0x9f,0xff]
or.and.t %d15, %d1, 31, %d0, 31

# CHECK-INST: or.and.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x1f,0xf0]
or.and.t %d15, %d1, 31, %d1, 0

# CHECK-INST: or.and.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0xc7,0x11,0x9f,0xf3]
or.and.t %d15, %d1, 31, %d1, 7

# CHECK-INST: or.and.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x1f,0xfc]
or.and.t %d15, %d1, 31, %d1, 24

# CHECK-INST: or.and.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0xc7,0x11,0x9f,0xff]
or.and.t %d15, %d1, 31, %d1, 31

# CHECK-INST: or.and.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x1f,0xf0]
or.and.t %d15, %d1, 31, %d14, 0

# CHECK-INST: or.and.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0x9f,0xf3]
or.and.t %d15, %d1, 31, %d14, 7

# CHECK-INST: or.and.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x1f,0xfc]
or.and.t %d15, %d1, 31, %d14, 24

# CHECK-INST: or.and.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0x9f,0xff]
or.and.t %d15, %d1, 31, %d14, 31

# CHECK-INST: or.and.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x1f,0xf0]
or.and.t %d15, %d1, 31, %d15, 0

# CHECK-INST: or.and.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0x9f,0xf3]
or.and.t %d15, %d1, 31, %d15, 7

# CHECK-INST: or.and.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x1f,0xfc]
or.and.t %d15, %d1, 31, %d15, 24

# CHECK-INST: or.and.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0x9f,0xff]
or.and.t %d15, %d1, 31, %d15, 31

# CHECK-INST: or.and.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x00,0xf0]
or.and.t %d15, %d14, 0, %d0, 0

# CHECK-INST: or.and.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0x80,0xf3]
or.and.t %d15, %d14, 0, %d0, 7

# CHECK-INST: or.and.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x00,0xfc]
or.and.t %d15, %d14, 0, %d0, 24

# CHECK-INST: or.and.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0x80,0xff]
or.and.t %d15, %d14, 0, %d0, 31

# CHECK-INST: or.and.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x00,0xf0]
or.and.t %d15, %d14, 0, %d1, 0

# CHECK-INST: or.and.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0x80,0xf3]
or.and.t %d15, %d14, 0, %d1, 7

# CHECK-INST: or.and.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x00,0xfc]
or.and.t %d15, %d14, 0, %d1, 24

# CHECK-INST: or.and.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0x80,0xff]
or.and.t %d15, %d14, 0, %d1, 31

# CHECK-INST: or.and.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x00,0xf0]
or.and.t %d15, %d14, 0, %d14, 0

# CHECK-INST: or.and.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0xc7,0xee,0x80,0xf3]
or.and.t %d15, %d14, 0, %d14, 7

# CHECK-INST: or.and.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x00,0xfc]
or.and.t %d15, %d14, 0, %d14, 24

# CHECK-INST: or.and.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0xc7,0xee,0x80,0xff]
or.and.t %d15, %d14, 0, %d14, 31

# CHECK-INST: or.and.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x00,0xf0]
or.and.t %d15, %d14, 0, %d15, 0

# CHECK-INST: or.and.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0x80,0xf3]
or.and.t %d15, %d14, 0, %d15, 7

# CHECK-INST: or.and.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x00,0xfc]
or.and.t %d15, %d14, 0, %d15, 24

# CHECK-INST: or.and.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0x80,0xff]
or.and.t %d15, %d14, 0, %d15, 31

# CHECK-INST: or.and.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x07,0xf0]
or.and.t %d15, %d14, 7, %d0, 0

# CHECK-INST: or.and.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0x87,0xf3]
or.and.t %d15, %d14, 7, %d0, 7

# CHECK-INST: or.and.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x07,0xfc]
or.and.t %d15, %d14, 7, %d0, 24

# CHECK-INST: or.and.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0x87,0xff]
or.and.t %d15, %d14, 7, %d0, 31

# CHECK-INST: or.and.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x07,0xf0]
or.and.t %d15, %d14, 7, %d1, 0

# CHECK-INST: or.and.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0x87,0xf3]
or.and.t %d15, %d14, 7, %d1, 7

# CHECK-INST: or.and.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x07,0xfc]
or.and.t %d15, %d14, 7, %d1, 24

# CHECK-INST: or.and.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0x87,0xff]
or.and.t %d15, %d14, 7, %d1, 31

# CHECK-INST: or.and.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x07,0xf0]
or.and.t %d15, %d14, 7, %d14, 0

# CHECK-INST: or.and.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0xc7,0xee,0x87,0xf3]
or.and.t %d15, %d14, 7, %d14, 7

# CHECK-INST: or.and.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x07,0xfc]
or.and.t %d15, %d14, 7, %d14, 24

# CHECK-INST: or.and.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0xc7,0xee,0x87,0xff]
or.and.t %d15, %d14, 7, %d14, 31

# CHECK-INST: or.and.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x07,0xf0]
or.and.t %d15, %d14, 7, %d15, 0

# CHECK-INST: or.and.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0x87,0xf3]
or.and.t %d15, %d14, 7, %d15, 7

# CHECK-INST: or.and.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x07,0xfc]
or.and.t %d15, %d14, 7, %d15, 24

# CHECK-INST: or.and.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0x87,0xff]
or.and.t %d15, %d14, 7, %d15, 31

# CHECK-INST: or.and.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x18,0xf0]
or.and.t %d15, %d14, 24, %d0, 0

# CHECK-INST: or.and.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0x98,0xf3]
or.and.t %d15, %d14, 24, %d0, 7

# CHECK-INST: or.and.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x18,0xfc]
or.and.t %d15, %d14, 24, %d0, 24

# CHECK-INST: or.and.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0x98,0xff]
or.and.t %d15, %d14, 24, %d0, 31

# CHECK-INST: or.and.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x18,0xf0]
or.and.t %d15, %d14, 24, %d1, 0

# CHECK-INST: or.and.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0x98,0xf3]
or.and.t %d15, %d14, 24, %d1, 7

# CHECK-INST: or.and.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x18,0xfc]
or.and.t %d15, %d14, 24, %d1, 24

# CHECK-INST: or.and.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0x98,0xff]
or.and.t %d15, %d14, 24, %d1, 31

# CHECK-INST: or.and.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x18,0xf0]
or.and.t %d15, %d14, 24, %d14, 0

# CHECK-INST: or.and.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0xc7,0xee,0x98,0xf3]
or.and.t %d15, %d14, 24, %d14, 7

# CHECK-INST: or.and.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x18,0xfc]
or.and.t %d15, %d14, 24, %d14, 24

# CHECK-INST: or.and.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0xc7,0xee,0x98,0xff]
or.and.t %d15, %d14, 24, %d14, 31

# CHECK-INST: or.and.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x18,0xf0]
or.and.t %d15, %d14, 24, %d15, 0

# CHECK-INST: or.and.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0x98,0xf3]
or.and.t %d15, %d14, 24, %d15, 7

# CHECK-INST: or.and.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x18,0xfc]
or.and.t %d15, %d14, 24, %d15, 24

# CHECK-INST: or.and.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0x98,0xff]
or.and.t %d15, %d14, 24, %d15, 31

# CHECK-INST: or.and.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x1f,0xf0]
or.and.t %d15, %d14, 31, %d0, 0

# CHECK-INST: or.and.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0x9f,0xf3]
or.and.t %d15, %d14, 31, %d0, 7

# CHECK-INST: or.and.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x1f,0xfc]
or.and.t %d15, %d14, 31, %d0, 24

# CHECK-INST: or.and.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0x9f,0xff]
or.and.t %d15, %d14, 31, %d0, 31

# CHECK-INST: or.and.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x1f,0xf0]
or.and.t %d15, %d14, 31, %d1, 0

# CHECK-INST: or.and.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0x9f,0xf3]
or.and.t %d15, %d14, 31, %d1, 7

# CHECK-INST: or.and.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x1f,0xfc]
or.and.t %d15, %d14, 31, %d1, 24

# CHECK-INST: or.and.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0x9f,0xff]
or.and.t %d15, %d14, 31, %d1, 31

# CHECK-INST: or.and.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x1f,0xf0]
or.and.t %d15, %d14, 31, %d14, 0

# CHECK-INST: or.and.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0xc7,0xee,0x9f,0xf3]
or.and.t %d15, %d14, 31, %d14, 7

# CHECK-INST: or.and.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x1f,0xfc]
or.and.t %d15, %d14, 31, %d14, 24

# CHECK-INST: or.and.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0xc7,0xee,0x9f,0xff]
or.and.t %d15, %d14, 31, %d14, 31

# CHECK-INST: or.and.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x1f,0xf0]
or.and.t %d15, %d14, 31, %d15, 0

# CHECK-INST: or.and.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0x9f,0xf3]
or.and.t %d15, %d14, 31, %d15, 7

# CHECK-INST: or.and.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x1f,0xfc]
or.and.t %d15, %d14, 31, %d15, 24

# CHECK-INST: or.and.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0x9f,0xff]
or.and.t %d15, %d14, 31, %d15, 31

# CHECK-INST: or.and.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x00,0xf0]
or.and.t %d15, %d15, 0, %d0, 0

# CHECK-INST: or.and.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0x80,0xf3]
or.and.t %d15, %d15, 0, %d0, 7

# CHECK-INST: or.and.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x00,0xfc]
or.and.t %d15, %d15, 0, %d0, 24

# CHECK-INST: or.and.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0x80,0xff]
or.and.t %d15, %d15, 0, %d0, 31

# CHECK-INST: or.and.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x00,0xf0]
or.and.t %d15, %d15, 0, %d1, 0

# CHECK-INST: or.and.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0x80,0xf3]
or.and.t %d15, %d15, 0, %d1, 7

# CHECK-INST: or.and.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x00,0xfc]
or.and.t %d15, %d15, 0, %d1, 24

# CHECK-INST: or.and.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0x80,0xff]
or.and.t %d15, %d15, 0, %d1, 31

# CHECK-INST: or.and.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x00,0xf0]
or.and.t %d15, %d15, 0, %d14, 0

# CHECK-INST: or.and.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0xc7,0xef,0x80,0xf3]
or.and.t %d15, %d15, 0, %d14, 7

# CHECK-INST: or.and.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x00,0xfc]
or.and.t %d15, %d15, 0, %d14, 24

# CHECK-INST: or.and.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0xc7,0xef,0x80,0xff]
or.and.t %d15, %d15, 0, %d14, 31

# CHECK-INST: or.and.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x00,0xf0]
or.and.t %d15, %d15, 0, %d15, 0

# CHECK-INST: or.and.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0xc7,0xff,0x80,0xf3]
or.and.t %d15, %d15, 0, %d15, 7

# CHECK-INST: or.and.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x00,0xfc]
or.and.t %d15, %d15, 0, %d15, 24

# CHECK-INST: or.and.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0xc7,0xff,0x80,0xff]
or.and.t %d15, %d15, 0, %d15, 31

# CHECK-INST: or.and.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x07,0xf0]
or.and.t %d15, %d15, 7, %d0, 0

# CHECK-INST: or.and.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0x87,0xf3]
or.and.t %d15, %d15, 7, %d0, 7

# CHECK-INST: or.and.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x07,0xfc]
or.and.t %d15, %d15, 7, %d0, 24

# CHECK-INST: or.and.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0x87,0xff]
or.and.t %d15, %d15, 7, %d0, 31

# CHECK-INST: or.and.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x07,0xf0]
or.and.t %d15, %d15, 7, %d1, 0

# CHECK-INST: or.and.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0x87,0xf3]
or.and.t %d15, %d15, 7, %d1, 7

# CHECK-INST: or.and.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x07,0xfc]
or.and.t %d15, %d15, 7, %d1, 24

# CHECK-INST: or.and.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0x87,0xff]
or.and.t %d15, %d15, 7, %d1, 31

# CHECK-INST: or.and.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x07,0xf0]
or.and.t %d15, %d15, 7, %d14, 0

# CHECK-INST: or.and.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0xc7,0xef,0x87,0xf3]
or.and.t %d15, %d15, 7, %d14, 7

# CHECK-INST: or.and.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x07,0xfc]
or.and.t %d15, %d15, 7, %d14, 24

# CHECK-INST: or.and.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0xc7,0xef,0x87,0xff]
or.and.t %d15, %d15, 7, %d14, 31

# CHECK-INST: or.and.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x07,0xf0]
or.and.t %d15, %d15, 7, %d15, 0

# CHECK-INST: or.and.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0xc7,0xff,0x87,0xf3]
or.and.t %d15, %d15, 7, %d15, 7

# CHECK-INST: or.and.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x07,0xfc]
or.and.t %d15, %d15, 7, %d15, 24

# CHECK-INST: or.and.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0xc7,0xff,0x87,0xff]
or.and.t %d15, %d15, 7, %d15, 31

# CHECK-INST: or.and.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x18,0xf0]
or.and.t %d15, %d15, 24, %d0, 0

# CHECK-INST: or.and.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0x98,0xf3]
or.and.t %d15, %d15, 24, %d0, 7

# CHECK-INST: or.and.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x18,0xfc]
or.and.t %d15, %d15, 24, %d0, 24

# CHECK-INST: or.and.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0x98,0xff]
or.and.t %d15, %d15, 24, %d0, 31

# CHECK-INST: or.and.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x18,0xf0]
or.and.t %d15, %d15, 24, %d1, 0

# CHECK-INST: or.and.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0x98,0xf3]
or.and.t %d15, %d15, 24, %d1, 7

# CHECK-INST: or.and.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x18,0xfc]
or.and.t %d15, %d15, 24, %d1, 24

# CHECK-INST: or.and.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0x98,0xff]
or.and.t %d15, %d15, 24, %d1, 31

# CHECK-INST: or.and.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x18,0xf0]
or.and.t %d15, %d15, 24, %d14, 0

# CHECK-INST: or.and.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0xc7,0xef,0x98,0xf3]
or.and.t %d15, %d15, 24, %d14, 7

# CHECK-INST: or.and.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x18,0xfc]
or.and.t %d15, %d15, 24, %d14, 24

# CHECK-INST: or.and.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0xc7,0xef,0x98,0xff]
or.and.t %d15, %d15, 24, %d14, 31

# CHECK-INST: or.and.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x18,0xf0]
or.and.t %d15, %d15, 24, %d15, 0

# CHECK-INST: or.and.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0xc7,0xff,0x98,0xf3]
or.and.t %d15, %d15, 24, %d15, 7

# CHECK-INST: or.and.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x18,0xfc]
or.and.t %d15, %d15, 24, %d15, 24

# CHECK-INST: or.and.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0xc7,0xff,0x98,0xff]
or.and.t %d15, %d15, 24, %d15, 31

# CHECK-INST: or.and.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x1f,0xf0]
or.and.t %d15, %d15, 31, %d0, 0

# CHECK-INST: or.and.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0x9f,0xf3]
or.and.t %d15, %d15, 31, %d0, 7

# CHECK-INST: or.and.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x1f,0xfc]
or.and.t %d15, %d15, 31, %d0, 24

# CHECK-INST: or.and.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0x9f,0xff]
or.and.t %d15, %d15, 31, %d0, 31

# CHECK-INST: or.and.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x1f,0xf0]
or.and.t %d15, %d15, 31, %d1, 0

# CHECK-INST: or.and.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0x9f,0xf3]
or.and.t %d15, %d15, 31, %d1, 7

# CHECK-INST: or.and.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x1f,0xfc]
or.and.t %d15, %d15, 31, %d1, 24

# CHECK-INST: or.and.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0x9f,0xff]
or.and.t %d15, %d15, 31, %d1, 31

# CHECK-INST: or.and.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x1f,0xf0]
or.and.t %d15, %d15, 31, %d14, 0

# CHECK-INST: or.and.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0xc7,0xef,0x9f,0xf3]
or.and.t %d15, %d15, 31, %d14, 7

# CHECK-INST: or.and.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x1f,0xfc]
or.and.t %d15, %d15, 31, %d14, 24

# CHECK-INST: or.and.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0xc7,0xef,0x9f,0xff]
or.and.t %d15, %d15, 31, %d14, 31

# CHECK-INST: or.and.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x1f,0xf0]
or.and.t %d15, %d15, 31, %d15, 0

# CHECK-INST: or.and.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0xc7,0xff,0x9f,0xf3]
or.and.t %d15, %d15, 31, %d15, 7

# CHECK-INST: or.and.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x1f,0xfc]
or.and.t %d15, %d15, 31, %d15, 24

# CHECK-INST: or.and.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0xc7,0xff,0x9f,0xff]
or.and.t %d15, %d15, 31, %d15, 31

# CHECK-INST: or.andn.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x60,0x00]
or.andn.t %d0, %d0, 0, %d0, 0

# CHECK-INST: or.andn.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xe0,0x03]
or.andn.t %d0, %d0, 0, %d0, 7

# CHECK-INST: or.andn.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x60,0x0c]
or.andn.t %d0, %d0, 0, %d0, 24

# CHECK-INST: or.andn.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xe0,0x0f]
or.andn.t %d0, %d0, 0, %d0, 31

# CHECK-INST: or.andn.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x60,0x00]
or.andn.t %d0, %d0, 0, %d1, 0

# CHECK-INST: or.andn.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xe0,0x03]
or.andn.t %d0, %d0, 0, %d1, 7

# CHECK-INST: or.andn.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x60,0x0c]
or.andn.t %d0, %d0, 0, %d1, 24

# CHECK-INST: or.andn.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xe0,0x0f]
or.andn.t %d0, %d0, 0, %d1, 31

# CHECK-INST: or.andn.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x60,0x00]
or.andn.t %d0, %d0, 0, %d14, 0

# CHECK-INST: or.andn.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xe0,0x03]
or.andn.t %d0, %d0, 0, %d14, 7

# CHECK-INST: or.andn.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x60,0x0c]
or.andn.t %d0, %d0, 0, %d14, 24

# CHECK-INST: or.andn.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xe0,0x0f]
or.andn.t %d0, %d0, 0, %d14, 31

# CHECK-INST: or.andn.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x60,0x00]
or.andn.t %d0, %d0, 0, %d15, 0

# CHECK-INST: or.andn.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xe0,0x03]
or.andn.t %d0, %d0, 0, %d15, 7

# CHECK-INST: or.andn.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x60,0x0c]
or.andn.t %d0, %d0, 0, %d15, 24

# CHECK-INST: or.andn.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xe0,0x0f]
or.andn.t %d0, %d0, 0, %d15, 31

# CHECK-INST: or.andn.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x67,0x00]
or.andn.t %d0, %d0, 7, %d0, 0

# CHECK-INST: or.andn.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xe7,0x03]
or.andn.t %d0, %d0, 7, %d0, 7

# CHECK-INST: or.andn.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x67,0x0c]
or.andn.t %d0, %d0, 7, %d0, 24

# CHECK-INST: or.andn.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xe7,0x0f]
or.andn.t %d0, %d0, 7, %d0, 31

# CHECK-INST: or.andn.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x67,0x00]
or.andn.t %d0, %d0, 7, %d1, 0

# CHECK-INST: or.andn.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xe7,0x03]
or.andn.t %d0, %d0, 7, %d1, 7

# CHECK-INST: or.andn.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x67,0x0c]
or.andn.t %d0, %d0, 7, %d1, 24

# CHECK-INST: or.andn.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xe7,0x0f]
or.andn.t %d0, %d0, 7, %d1, 31

# CHECK-INST: or.andn.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x67,0x00]
or.andn.t %d0, %d0, 7, %d14, 0

# CHECK-INST: or.andn.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xe7,0x03]
or.andn.t %d0, %d0, 7, %d14, 7

# CHECK-INST: or.andn.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x67,0x0c]
or.andn.t %d0, %d0, 7, %d14, 24

# CHECK-INST: or.andn.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xe7,0x0f]
or.andn.t %d0, %d0, 7, %d14, 31

# CHECK-INST: or.andn.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x67,0x00]
or.andn.t %d0, %d0, 7, %d15, 0

# CHECK-INST: or.andn.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xe7,0x03]
or.andn.t %d0, %d0, 7, %d15, 7

# CHECK-INST: or.andn.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x67,0x0c]
or.andn.t %d0, %d0, 7, %d15, 24

# CHECK-INST: or.andn.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xe7,0x0f]
or.andn.t %d0, %d0, 7, %d15, 31

# CHECK-INST: or.andn.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x78,0x00]
or.andn.t %d0, %d0, 24, %d0, 0

# CHECK-INST: or.andn.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xf8,0x03]
or.andn.t %d0, %d0, 24, %d0, 7

# CHECK-INST: or.andn.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x78,0x0c]
or.andn.t %d0, %d0, 24, %d0, 24

# CHECK-INST: or.andn.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xf8,0x0f]
or.andn.t %d0, %d0, 24, %d0, 31

# CHECK-INST: or.andn.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x78,0x00]
or.andn.t %d0, %d0, 24, %d1, 0

# CHECK-INST: or.andn.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xf8,0x03]
or.andn.t %d0, %d0, 24, %d1, 7

# CHECK-INST: or.andn.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x78,0x0c]
or.andn.t %d0, %d0, 24, %d1, 24

# CHECK-INST: or.andn.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xf8,0x0f]
or.andn.t %d0, %d0, 24, %d1, 31

# CHECK-INST: or.andn.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x78,0x00]
or.andn.t %d0, %d0, 24, %d14, 0

# CHECK-INST: or.andn.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xf8,0x03]
or.andn.t %d0, %d0, 24, %d14, 7

# CHECK-INST: or.andn.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x78,0x0c]
or.andn.t %d0, %d0, 24, %d14, 24

# CHECK-INST: or.andn.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xf8,0x0f]
or.andn.t %d0, %d0, 24, %d14, 31

# CHECK-INST: or.andn.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x78,0x00]
or.andn.t %d0, %d0, 24, %d15, 0

# CHECK-INST: or.andn.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xf8,0x03]
or.andn.t %d0, %d0, 24, %d15, 7

# CHECK-INST: or.andn.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x78,0x0c]
or.andn.t %d0, %d0, 24, %d15, 24

# CHECK-INST: or.andn.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xf8,0x0f]
or.andn.t %d0, %d0, 24, %d15, 31

# CHECK-INST: or.andn.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x7f,0x00]
or.andn.t %d0, %d0, 31, %d0, 0

# CHECK-INST: or.andn.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xff,0x03]
or.andn.t %d0, %d0, 31, %d0, 7

# CHECK-INST: or.andn.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x7f,0x0c]
or.andn.t %d0, %d0, 31, %d0, 24

# CHECK-INST: or.andn.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xff,0x0f]
or.andn.t %d0, %d0, 31, %d0, 31

# CHECK-INST: or.andn.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x7f,0x00]
or.andn.t %d0, %d0, 31, %d1, 0

# CHECK-INST: or.andn.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xff,0x03]
or.andn.t %d0, %d0, 31, %d1, 7

# CHECK-INST: or.andn.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x7f,0x0c]
or.andn.t %d0, %d0, 31, %d1, 24

# CHECK-INST: or.andn.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xff,0x0f]
or.andn.t %d0, %d0, 31, %d1, 31

# CHECK-INST: or.andn.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x7f,0x00]
or.andn.t %d0, %d0, 31, %d14, 0

# CHECK-INST: or.andn.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xff,0x03]
or.andn.t %d0, %d0, 31, %d14, 7

# CHECK-INST: or.andn.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x7f,0x0c]
or.andn.t %d0, %d0, 31, %d14, 24

# CHECK-INST: or.andn.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xff,0x0f]
or.andn.t %d0, %d0, 31, %d14, 31

# CHECK-INST: or.andn.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x7f,0x00]
or.andn.t %d0, %d0, 31, %d15, 0

# CHECK-INST: or.andn.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xff,0x03]
or.andn.t %d0, %d0, 31, %d15, 7

# CHECK-INST: or.andn.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x7f,0x0c]
or.andn.t %d0, %d0, 31, %d15, 24

# CHECK-INST: or.andn.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xff,0x0f]
or.andn.t %d0, %d0, 31, %d15, 31

# CHECK-INST: or.andn.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x60,0x00]
or.andn.t %d0, %d1, 0, %d0, 0

# CHECK-INST: or.andn.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xe0,0x03]
or.andn.t %d0, %d1, 0, %d0, 7

# CHECK-INST: or.andn.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x60,0x0c]
or.andn.t %d0, %d1, 0, %d0, 24

# CHECK-INST: or.andn.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xe0,0x0f]
or.andn.t %d0, %d1, 0, %d0, 31

# CHECK-INST: or.andn.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x60,0x00]
or.andn.t %d0, %d1, 0, %d1, 0

# CHECK-INST: or.andn.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xe0,0x03]
or.andn.t %d0, %d1, 0, %d1, 7

# CHECK-INST: or.andn.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x60,0x0c]
or.andn.t %d0, %d1, 0, %d1, 24

# CHECK-INST: or.andn.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xe0,0x0f]
or.andn.t %d0, %d1, 0, %d1, 31

# CHECK-INST: or.andn.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x60,0x00]
or.andn.t %d0, %d1, 0, %d14, 0

# CHECK-INST: or.andn.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xe0,0x03]
or.andn.t %d0, %d1, 0, %d14, 7

# CHECK-INST: or.andn.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x60,0x0c]
or.andn.t %d0, %d1, 0, %d14, 24

# CHECK-INST: or.andn.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xe0,0x0f]
or.andn.t %d0, %d1, 0, %d14, 31

# CHECK-INST: or.andn.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x60,0x00]
or.andn.t %d0, %d1, 0, %d15, 0

# CHECK-INST: or.andn.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xe0,0x03]
or.andn.t %d0, %d1, 0, %d15, 7

# CHECK-INST: or.andn.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x60,0x0c]
or.andn.t %d0, %d1, 0, %d15, 24

# CHECK-INST: or.andn.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xe0,0x0f]
or.andn.t %d0, %d1, 0, %d15, 31

# CHECK-INST: or.andn.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x67,0x00]
or.andn.t %d0, %d1, 7, %d0, 0

# CHECK-INST: or.andn.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xe7,0x03]
or.andn.t %d0, %d1, 7, %d0, 7

# CHECK-INST: or.andn.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x67,0x0c]
or.andn.t %d0, %d1, 7, %d0, 24

# CHECK-INST: or.andn.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xe7,0x0f]
or.andn.t %d0, %d1, 7, %d0, 31

# CHECK-INST: or.andn.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x67,0x00]
or.andn.t %d0, %d1, 7, %d1, 0

# CHECK-INST: or.andn.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xe7,0x03]
or.andn.t %d0, %d1, 7, %d1, 7

# CHECK-INST: or.andn.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x67,0x0c]
or.andn.t %d0, %d1, 7, %d1, 24

# CHECK-INST: or.andn.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xe7,0x0f]
or.andn.t %d0, %d1, 7, %d1, 31

# CHECK-INST: or.andn.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x67,0x00]
or.andn.t %d0, %d1, 7, %d14, 0

# CHECK-INST: or.andn.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xe7,0x03]
or.andn.t %d0, %d1, 7, %d14, 7

# CHECK-INST: or.andn.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x67,0x0c]
or.andn.t %d0, %d1, 7, %d14, 24

# CHECK-INST: or.andn.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xe7,0x0f]
or.andn.t %d0, %d1, 7, %d14, 31

# CHECK-INST: or.andn.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x67,0x00]
or.andn.t %d0, %d1, 7, %d15, 0

# CHECK-INST: or.andn.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xe7,0x03]
or.andn.t %d0, %d1, 7, %d15, 7

# CHECK-INST: or.andn.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x67,0x0c]
or.andn.t %d0, %d1, 7, %d15, 24

# CHECK-INST: or.andn.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xe7,0x0f]
or.andn.t %d0, %d1, 7, %d15, 31

# CHECK-INST: or.andn.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x78,0x00]
or.andn.t %d0, %d1, 24, %d0, 0

# CHECK-INST: or.andn.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xf8,0x03]
or.andn.t %d0, %d1, 24, %d0, 7

# CHECK-INST: or.andn.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x78,0x0c]
or.andn.t %d0, %d1, 24, %d0, 24

# CHECK-INST: or.andn.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xf8,0x0f]
or.andn.t %d0, %d1, 24, %d0, 31

# CHECK-INST: or.andn.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x78,0x00]
or.andn.t %d0, %d1, 24, %d1, 0

# CHECK-INST: or.andn.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xf8,0x03]
or.andn.t %d0, %d1, 24, %d1, 7

# CHECK-INST: or.andn.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x78,0x0c]
or.andn.t %d0, %d1, 24, %d1, 24

# CHECK-INST: or.andn.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xf8,0x0f]
or.andn.t %d0, %d1, 24, %d1, 31

# CHECK-INST: or.andn.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x78,0x00]
or.andn.t %d0, %d1, 24, %d14, 0

# CHECK-INST: or.andn.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xf8,0x03]
or.andn.t %d0, %d1, 24, %d14, 7

# CHECK-INST: or.andn.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x78,0x0c]
or.andn.t %d0, %d1, 24, %d14, 24

# CHECK-INST: or.andn.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xf8,0x0f]
or.andn.t %d0, %d1, 24, %d14, 31

# CHECK-INST: or.andn.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x78,0x00]
or.andn.t %d0, %d1, 24, %d15, 0

# CHECK-INST: or.andn.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xf8,0x03]
or.andn.t %d0, %d1, 24, %d15, 7

# CHECK-INST: or.andn.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x78,0x0c]
or.andn.t %d0, %d1, 24, %d15, 24

# CHECK-INST: or.andn.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xf8,0x0f]
or.andn.t %d0, %d1, 24, %d15, 31

# CHECK-INST: or.andn.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x7f,0x00]
or.andn.t %d0, %d1, 31, %d0, 0

# CHECK-INST: or.andn.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xff,0x03]
or.andn.t %d0, %d1, 31, %d0, 7

# CHECK-INST: or.andn.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x7f,0x0c]
or.andn.t %d0, %d1, 31, %d0, 24

# CHECK-INST: or.andn.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xff,0x0f]
or.andn.t %d0, %d1, 31, %d0, 31

# CHECK-INST: or.andn.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x7f,0x00]
or.andn.t %d0, %d1, 31, %d1, 0

# CHECK-INST: or.andn.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xff,0x03]
or.andn.t %d0, %d1, 31, %d1, 7

# CHECK-INST: or.andn.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x7f,0x0c]
or.andn.t %d0, %d1, 31, %d1, 24

# CHECK-INST: or.andn.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xff,0x0f]
or.andn.t %d0, %d1, 31, %d1, 31

# CHECK-INST: or.andn.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x7f,0x00]
or.andn.t %d0, %d1, 31, %d14, 0

# CHECK-INST: or.andn.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xff,0x03]
or.andn.t %d0, %d1, 31, %d14, 7

# CHECK-INST: or.andn.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x7f,0x0c]
or.andn.t %d0, %d1, 31, %d14, 24

# CHECK-INST: or.andn.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xff,0x0f]
or.andn.t %d0, %d1, 31, %d14, 31

# CHECK-INST: or.andn.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x7f,0x00]
or.andn.t %d0, %d1, 31, %d15, 0

# CHECK-INST: or.andn.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xff,0x03]
or.andn.t %d0, %d1, 31, %d15, 7

# CHECK-INST: or.andn.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x7f,0x0c]
or.andn.t %d0, %d1, 31, %d15, 24

# CHECK-INST: or.andn.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xff,0x0f]
or.andn.t %d0, %d1, 31, %d15, 31

# CHECK-INST: or.andn.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x60,0x00]
or.andn.t %d0, %d14, 0, %d0, 0

# CHECK-INST: or.andn.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xe0,0x03]
or.andn.t %d0, %d14, 0, %d0, 7

# CHECK-INST: or.andn.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x60,0x0c]
or.andn.t %d0, %d14, 0, %d0, 24

# CHECK-INST: or.andn.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xe0,0x0f]
or.andn.t %d0, %d14, 0, %d0, 31

# CHECK-INST: or.andn.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x60,0x00]
or.andn.t %d0, %d14, 0, %d1, 0

# CHECK-INST: or.andn.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xe0,0x03]
or.andn.t %d0, %d14, 0, %d1, 7

# CHECK-INST: or.andn.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x60,0x0c]
or.andn.t %d0, %d14, 0, %d1, 24

# CHECK-INST: or.andn.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xe0,0x0f]
or.andn.t %d0, %d14, 0, %d1, 31

# CHECK-INST: or.andn.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x60,0x00]
or.andn.t %d0, %d14, 0, %d14, 0

# CHECK-INST: or.andn.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xe0,0x03]
or.andn.t %d0, %d14, 0, %d14, 7

# CHECK-INST: or.andn.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x60,0x0c]
or.andn.t %d0, %d14, 0, %d14, 24

# CHECK-INST: or.andn.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xe0,0x0f]
or.andn.t %d0, %d14, 0, %d14, 31

# CHECK-INST: or.andn.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x60,0x00]
or.andn.t %d0, %d14, 0, %d15, 0

# CHECK-INST: or.andn.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xe0,0x03]
or.andn.t %d0, %d14, 0, %d15, 7

# CHECK-INST: or.andn.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x60,0x0c]
or.andn.t %d0, %d14, 0, %d15, 24

# CHECK-INST: or.andn.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xe0,0x0f]
or.andn.t %d0, %d14, 0, %d15, 31

# CHECK-INST: or.andn.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x67,0x00]
or.andn.t %d0, %d14, 7, %d0, 0

# CHECK-INST: or.andn.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xe7,0x03]
or.andn.t %d0, %d14, 7, %d0, 7

# CHECK-INST: or.andn.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x67,0x0c]
or.andn.t %d0, %d14, 7, %d0, 24

# CHECK-INST: or.andn.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xe7,0x0f]
or.andn.t %d0, %d14, 7, %d0, 31

# CHECK-INST: or.andn.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x67,0x00]
or.andn.t %d0, %d14, 7, %d1, 0

# CHECK-INST: or.andn.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xe7,0x03]
or.andn.t %d0, %d14, 7, %d1, 7

# CHECK-INST: or.andn.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x67,0x0c]
or.andn.t %d0, %d14, 7, %d1, 24

# CHECK-INST: or.andn.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xe7,0x0f]
or.andn.t %d0, %d14, 7, %d1, 31

# CHECK-INST: or.andn.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x67,0x00]
or.andn.t %d0, %d14, 7, %d14, 0

# CHECK-INST: or.andn.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xe7,0x03]
or.andn.t %d0, %d14, 7, %d14, 7

# CHECK-INST: or.andn.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x67,0x0c]
or.andn.t %d0, %d14, 7, %d14, 24

# CHECK-INST: or.andn.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xe7,0x0f]
or.andn.t %d0, %d14, 7, %d14, 31

# CHECK-INST: or.andn.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x67,0x00]
or.andn.t %d0, %d14, 7, %d15, 0

# CHECK-INST: or.andn.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xe7,0x03]
or.andn.t %d0, %d14, 7, %d15, 7

# CHECK-INST: or.andn.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x67,0x0c]
or.andn.t %d0, %d14, 7, %d15, 24

# CHECK-INST: or.andn.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xe7,0x0f]
or.andn.t %d0, %d14, 7, %d15, 31

# CHECK-INST: or.andn.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x78,0x00]
or.andn.t %d0, %d14, 24, %d0, 0

# CHECK-INST: or.andn.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xf8,0x03]
or.andn.t %d0, %d14, 24, %d0, 7

# CHECK-INST: or.andn.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x78,0x0c]
or.andn.t %d0, %d14, 24, %d0, 24

# CHECK-INST: or.andn.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xf8,0x0f]
or.andn.t %d0, %d14, 24, %d0, 31

# CHECK-INST: or.andn.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x78,0x00]
or.andn.t %d0, %d14, 24, %d1, 0

# CHECK-INST: or.andn.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xf8,0x03]
or.andn.t %d0, %d14, 24, %d1, 7

# CHECK-INST: or.andn.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x78,0x0c]
or.andn.t %d0, %d14, 24, %d1, 24

# CHECK-INST: or.andn.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xf8,0x0f]
or.andn.t %d0, %d14, 24, %d1, 31

# CHECK-INST: or.andn.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x78,0x00]
or.andn.t %d0, %d14, 24, %d14, 0

# CHECK-INST: or.andn.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xf8,0x03]
or.andn.t %d0, %d14, 24, %d14, 7

# CHECK-INST: or.andn.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x78,0x0c]
or.andn.t %d0, %d14, 24, %d14, 24

# CHECK-INST: or.andn.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xf8,0x0f]
or.andn.t %d0, %d14, 24, %d14, 31

# CHECK-INST: or.andn.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x78,0x00]
or.andn.t %d0, %d14, 24, %d15, 0

# CHECK-INST: or.andn.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xf8,0x03]
or.andn.t %d0, %d14, 24, %d15, 7

# CHECK-INST: or.andn.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x78,0x0c]
or.andn.t %d0, %d14, 24, %d15, 24

# CHECK-INST: or.andn.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xf8,0x0f]
or.andn.t %d0, %d14, 24, %d15, 31

# CHECK-INST: or.andn.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x7f,0x00]
or.andn.t %d0, %d14, 31, %d0, 0

# CHECK-INST: or.andn.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xff,0x03]
or.andn.t %d0, %d14, 31, %d0, 7

# CHECK-INST: or.andn.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x7f,0x0c]
or.andn.t %d0, %d14, 31, %d0, 24

# CHECK-INST: or.andn.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xff,0x0f]
or.andn.t %d0, %d14, 31, %d0, 31

# CHECK-INST: or.andn.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x7f,0x00]
or.andn.t %d0, %d14, 31, %d1, 0

# CHECK-INST: or.andn.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xff,0x03]
or.andn.t %d0, %d14, 31, %d1, 7

# CHECK-INST: or.andn.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x7f,0x0c]
or.andn.t %d0, %d14, 31, %d1, 24

# CHECK-INST: or.andn.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xff,0x0f]
or.andn.t %d0, %d14, 31, %d1, 31

# CHECK-INST: or.andn.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x7f,0x00]
or.andn.t %d0, %d14, 31, %d14, 0

# CHECK-INST: or.andn.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xff,0x03]
or.andn.t %d0, %d14, 31, %d14, 7

# CHECK-INST: or.andn.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x7f,0x0c]
or.andn.t %d0, %d14, 31, %d14, 24

# CHECK-INST: or.andn.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xff,0x0f]
or.andn.t %d0, %d14, 31, %d14, 31

# CHECK-INST: or.andn.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x7f,0x00]
or.andn.t %d0, %d14, 31, %d15, 0

# CHECK-INST: or.andn.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xff,0x03]
or.andn.t %d0, %d14, 31, %d15, 7

# CHECK-INST: or.andn.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x7f,0x0c]
or.andn.t %d0, %d14, 31, %d15, 24

# CHECK-INST: or.andn.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xff,0x0f]
or.andn.t %d0, %d14, 31, %d15, 31

# CHECK-INST: or.andn.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x60,0x00]
or.andn.t %d0, %d15, 0, %d0, 0

# CHECK-INST: or.andn.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xe0,0x03]
or.andn.t %d0, %d15, 0, %d0, 7

# CHECK-INST: or.andn.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x60,0x0c]
or.andn.t %d0, %d15, 0, %d0, 24

# CHECK-INST: or.andn.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xe0,0x0f]
or.andn.t %d0, %d15, 0, %d0, 31

# CHECK-INST: or.andn.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x60,0x00]
or.andn.t %d0, %d15, 0, %d1, 0

# CHECK-INST: or.andn.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xe0,0x03]
or.andn.t %d0, %d15, 0, %d1, 7

# CHECK-INST: or.andn.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x60,0x0c]
or.andn.t %d0, %d15, 0, %d1, 24

# CHECK-INST: or.andn.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xe0,0x0f]
or.andn.t %d0, %d15, 0, %d1, 31

# CHECK-INST: or.andn.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x60,0x00]
or.andn.t %d0, %d15, 0, %d14, 0

# CHECK-INST: or.andn.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xe0,0x03]
or.andn.t %d0, %d15, 0, %d14, 7

# CHECK-INST: or.andn.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x60,0x0c]
or.andn.t %d0, %d15, 0, %d14, 24

# CHECK-INST: or.andn.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xe0,0x0f]
or.andn.t %d0, %d15, 0, %d14, 31

# CHECK-INST: or.andn.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x60,0x00]
or.andn.t %d0, %d15, 0, %d15, 0

# CHECK-INST: or.andn.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xe0,0x03]
or.andn.t %d0, %d15, 0, %d15, 7

# CHECK-INST: or.andn.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x60,0x0c]
or.andn.t %d0, %d15, 0, %d15, 24

# CHECK-INST: or.andn.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xe0,0x0f]
or.andn.t %d0, %d15, 0, %d15, 31

# CHECK-INST: or.andn.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x67,0x00]
or.andn.t %d0, %d15, 7, %d0, 0

# CHECK-INST: or.andn.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xe7,0x03]
or.andn.t %d0, %d15, 7, %d0, 7

# CHECK-INST: or.andn.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x67,0x0c]
or.andn.t %d0, %d15, 7, %d0, 24

# CHECK-INST: or.andn.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xe7,0x0f]
or.andn.t %d0, %d15, 7, %d0, 31

# CHECK-INST: or.andn.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x67,0x00]
or.andn.t %d0, %d15, 7, %d1, 0

# CHECK-INST: or.andn.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xe7,0x03]
or.andn.t %d0, %d15, 7, %d1, 7

# CHECK-INST: or.andn.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x67,0x0c]
or.andn.t %d0, %d15, 7, %d1, 24

# CHECK-INST: or.andn.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xe7,0x0f]
or.andn.t %d0, %d15, 7, %d1, 31

# CHECK-INST: or.andn.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x67,0x00]
or.andn.t %d0, %d15, 7, %d14, 0

# CHECK-INST: or.andn.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xe7,0x03]
or.andn.t %d0, %d15, 7, %d14, 7

# CHECK-INST: or.andn.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x67,0x0c]
or.andn.t %d0, %d15, 7, %d14, 24

# CHECK-INST: or.andn.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xe7,0x0f]
or.andn.t %d0, %d15, 7, %d14, 31

# CHECK-INST: or.andn.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x67,0x00]
or.andn.t %d0, %d15, 7, %d15, 0

# CHECK-INST: or.andn.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xe7,0x03]
or.andn.t %d0, %d15, 7, %d15, 7

# CHECK-INST: or.andn.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x67,0x0c]
or.andn.t %d0, %d15, 7, %d15, 24

# CHECK-INST: or.andn.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xe7,0x0f]
or.andn.t %d0, %d15, 7, %d15, 31

# CHECK-INST: or.andn.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x78,0x00]
or.andn.t %d0, %d15, 24, %d0, 0

# CHECK-INST: or.andn.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xf8,0x03]
or.andn.t %d0, %d15, 24, %d0, 7

# CHECK-INST: or.andn.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x78,0x0c]
or.andn.t %d0, %d15, 24, %d0, 24

# CHECK-INST: or.andn.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xf8,0x0f]
or.andn.t %d0, %d15, 24, %d0, 31

# CHECK-INST: or.andn.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x78,0x00]
or.andn.t %d0, %d15, 24, %d1, 0

# CHECK-INST: or.andn.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xf8,0x03]
or.andn.t %d0, %d15, 24, %d1, 7

# CHECK-INST: or.andn.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x78,0x0c]
or.andn.t %d0, %d15, 24, %d1, 24

# CHECK-INST: or.andn.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xf8,0x0f]
or.andn.t %d0, %d15, 24, %d1, 31

# CHECK-INST: or.andn.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x78,0x00]
or.andn.t %d0, %d15, 24, %d14, 0

# CHECK-INST: or.andn.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xf8,0x03]
or.andn.t %d0, %d15, 24, %d14, 7

# CHECK-INST: or.andn.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x78,0x0c]
or.andn.t %d0, %d15, 24, %d14, 24

# CHECK-INST: or.andn.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xf8,0x0f]
or.andn.t %d0, %d15, 24, %d14, 31

# CHECK-INST: or.andn.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x78,0x00]
or.andn.t %d0, %d15, 24, %d15, 0

# CHECK-INST: or.andn.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xf8,0x03]
or.andn.t %d0, %d15, 24, %d15, 7

# CHECK-INST: or.andn.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x78,0x0c]
or.andn.t %d0, %d15, 24, %d15, 24

# CHECK-INST: or.andn.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xf8,0x0f]
or.andn.t %d0, %d15, 24, %d15, 31

# CHECK-INST: or.andn.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x7f,0x00]
or.andn.t %d0, %d15, 31, %d0, 0

# CHECK-INST: or.andn.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xff,0x03]
or.andn.t %d0, %d15, 31, %d0, 7

# CHECK-INST: or.andn.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x7f,0x0c]
or.andn.t %d0, %d15, 31, %d0, 24

# CHECK-INST: or.andn.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xff,0x0f]
or.andn.t %d0, %d15, 31, %d0, 31

# CHECK-INST: or.andn.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x7f,0x00]
or.andn.t %d0, %d15, 31, %d1, 0

# CHECK-INST: or.andn.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xff,0x03]
or.andn.t %d0, %d15, 31, %d1, 7

# CHECK-INST: or.andn.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x7f,0x0c]
or.andn.t %d0, %d15, 31, %d1, 24

# CHECK-INST: or.andn.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xff,0x0f]
or.andn.t %d0, %d15, 31, %d1, 31

# CHECK-INST: or.andn.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x7f,0x00]
or.andn.t %d0, %d15, 31, %d14, 0

# CHECK-INST: or.andn.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xff,0x03]
or.andn.t %d0, %d15, 31, %d14, 7

# CHECK-INST: or.andn.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x7f,0x0c]
or.andn.t %d0, %d15, 31, %d14, 24

# CHECK-INST: or.andn.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xff,0x0f]
or.andn.t %d0, %d15, 31, %d14, 31

# CHECK-INST: or.andn.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x7f,0x00]
or.andn.t %d0, %d15, 31, %d15, 0

# CHECK-INST: or.andn.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xff,0x03]
or.andn.t %d0, %d15, 31, %d15, 7

# CHECK-INST: or.andn.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x7f,0x0c]
or.andn.t %d0, %d15, 31, %d15, 24

# CHECK-INST: or.andn.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xff,0x0f]
or.andn.t %d0, %d15, 31, %d15, 31

# CHECK-INST: or.andn.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x60,0x10]
or.andn.t %d1, %d0, 0, %d0, 0

# CHECK-INST: or.andn.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xe0,0x13]
or.andn.t %d1, %d0, 0, %d0, 7

# CHECK-INST: or.andn.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x60,0x1c]
or.andn.t %d1, %d0, 0, %d0, 24

# CHECK-INST: or.andn.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xe0,0x1f]
or.andn.t %d1, %d0, 0, %d0, 31

# CHECK-INST: or.andn.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x60,0x10]
or.andn.t %d1, %d0, 0, %d1, 0

# CHECK-INST: or.andn.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xe0,0x13]
or.andn.t %d1, %d0, 0, %d1, 7

# CHECK-INST: or.andn.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x60,0x1c]
or.andn.t %d1, %d0, 0, %d1, 24

# CHECK-INST: or.andn.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xe0,0x1f]
or.andn.t %d1, %d0, 0, %d1, 31

# CHECK-INST: or.andn.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x60,0x10]
or.andn.t %d1, %d0, 0, %d14, 0

# CHECK-INST: or.andn.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xe0,0x13]
or.andn.t %d1, %d0, 0, %d14, 7

# CHECK-INST: or.andn.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x60,0x1c]
or.andn.t %d1, %d0, 0, %d14, 24

# CHECK-INST: or.andn.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xe0,0x1f]
or.andn.t %d1, %d0, 0, %d14, 31

# CHECK-INST: or.andn.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x60,0x10]
or.andn.t %d1, %d0, 0, %d15, 0

# CHECK-INST: or.andn.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xe0,0x13]
or.andn.t %d1, %d0, 0, %d15, 7

# CHECK-INST: or.andn.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x60,0x1c]
or.andn.t %d1, %d0, 0, %d15, 24

# CHECK-INST: or.andn.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xe0,0x1f]
or.andn.t %d1, %d0, 0, %d15, 31

# CHECK-INST: or.andn.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x67,0x10]
or.andn.t %d1, %d0, 7, %d0, 0

# CHECK-INST: or.andn.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xe7,0x13]
or.andn.t %d1, %d0, 7, %d0, 7

# CHECK-INST: or.andn.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x67,0x1c]
or.andn.t %d1, %d0, 7, %d0, 24

# CHECK-INST: or.andn.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xe7,0x1f]
or.andn.t %d1, %d0, 7, %d0, 31

# CHECK-INST: or.andn.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x67,0x10]
or.andn.t %d1, %d0, 7, %d1, 0

# CHECK-INST: or.andn.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xe7,0x13]
or.andn.t %d1, %d0, 7, %d1, 7

# CHECK-INST: or.andn.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x67,0x1c]
or.andn.t %d1, %d0, 7, %d1, 24

# CHECK-INST: or.andn.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xe7,0x1f]
or.andn.t %d1, %d0, 7, %d1, 31

# CHECK-INST: or.andn.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x67,0x10]
or.andn.t %d1, %d0, 7, %d14, 0

# CHECK-INST: or.andn.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xe7,0x13]
or.andn.t %d1, %d0, 7, %d14, 7

# CHECK-INST: or.andn.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x67,0x1c]
or.andn.t %d1, %d0, 7, %d14, 24

# CHECK-INST: or.andn.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xe7,0x1f]
or.andn.t %d1, %d0, 7, %d14, 31

# CHECK-INST: or.andn.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x67,0x10]
or.andn.t %d1, %d0, 7, %d15, 0

# CHECK-INST: or.andn.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xe7,0x13]
or.andn.t %d1, %d0, 7, %d15, 7

# CHECK-INST: or.andn.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x67,0x1c]
or.andn.t %d1, %d0, 7, %d15, 24

# CHECK-INST: or.andn.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xe7,0x1f]
or.andn.t %d1, %d0, 7, %d15, 31

# CHECK-INST: or.andn.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x78,0x10]
or.andn.t %d1, %d0, 24, %d0, 0

# CHECK-INST: or.andn.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xf8,0x13]
or.andn.t %d1, %d0, 24, %d0, 7

# CHECK-INST: or.andn.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x78,0x1c]
or.andn.t %d1, %d0, 24, %d0, 24

# CHECK-INST: or.andn.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xf8,0x1f]
or.andn.t %d1, %d0, 24, %d0, 31

# CHECK-INST: or.andn.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x78,0x10]
or.andn.t %d1, %d0, 24, %d1, 0

# CHECK-INST: or.andn.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xf8,0x13]
or.andn.t %d1, %d0, 24, %d1, 7

# CHECK-INST: or.andn.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x78,0x1c]
or.andn.t %d1, %d0, 24, %d1, 24

# CHECK-INST: or.andn.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xf8,0x1f]
or.andn.t %d1, %d0, 24, %d1, 31

# CHECK-INST: or.andn.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x78,0x10]
or.andn.t %d1, %d0, 24, %d14, 0

# CHECK-INST: or.andn.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xf8,0x13]
or.andn.t %d1, %d0, 24, %d14, 7

# CHECK-INST: or.andn.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x78,0x1c]
or.andn.t %d1, %d0, 24, %d14, 24

# CHECK-INST: or.andn.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xf8,0x1f]
or.andn.t %d1, %d0, 24, %d14, 31

# CHECK-INST: or.andn.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x78,0x10]
or.andn.t %d1, %d0, 24, %d15, 0

# CHECK-INST: or.andn.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xf8,0x13]
or.andn.t %d1, %d0, 24, %d15, 7

# CHECK-INST: or.andn.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x78,0x1c]
or.andn.t %d1, %d0, 24, %d15, 24

# CHECK-INST: or.andn.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xf8,0x1f]
or.andn.t %d1, %d0, 24, %d15, 31

# CHECK-INST: or.andn.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x7f,0x10]
or.andn.t %d1, %d0, 31, %d0, 0

# CHECK-INST: or.andn.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xff,0x13]
or.andn.t %d1, %d0, 31, %d0, 7

# CHECK-INST: or.andn.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x7f,0x1c]
or.andn.t %d1, %d0, 31, %d0, 24

# CHECK-INST: or.andn.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xff,0x1f]
or.andn.t %d1, %d0, 31, %d0, 31

# CHECK-INST: or.andn.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x7f,0x10]
or.andn.t %d1, %d0, 31, %d1, 0

# CHECK-INST: or.andn.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xff,0x13]
or.andn.t %d1, %d0, 31, %d1, 7

# CHECK-INST: or.andn.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x7f,0x1c]
or.andn.t %d1, %d0, 31, %d1, 24

# CHECK-INST: or.andn.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xff,0x1f]
or.andn.t %d1, %d0, 31, %d1, 31

# CHECK-INST: or.andn.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x7f,0x10]
or.andn.t %d1, %d0, 31, %d14, 0

# CHECK-INST: or.andn.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xff,0x13]
or.andn.t %d1, %d0, 31, %d14, 7

# CHECK-INST: or.andn.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x7f,0x1c]
or.andn.t %d1, %d0, 31, %d14, 24

# CHECK-INST: or.andn.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xff,0x1f]
or.andn.t %d1, %d0, 31, %d14, 31

# CHECK-INST: or.andn.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x7f,0x10]
or.andn.t %d1, %d0, 31, %d15, 0

# CHECK-INST: or.andn.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xff,0x13]
or.andn.t %d1, %d0, 31, %d15, 7

# CHECK-INST: or.andn.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x7f,0x1c]
or.andn.t %d1, %d0, 31, %d15, 24

# CHECK-INST: or.andn.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xff,0x1f]
or.andn.t %d1, %d0, 31, %d15, 31

# CHECK-INST: or.andn.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x60,0x10]
or.andn.t %d1, %d1, 0, %d0, 0

# CHECK-INST: or.andn.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xe0,0x13]
or.andn.t %d1, %d1, 0, %d0, 7

# CHECK-INST: or.andn.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x60,0x1c]
or.andn.t %d1, %d1, 0, %d0, 24

# CHECK-INST: or.andn.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xe0,0x1f]
or.andn.t %d1, %d1, 0, %d0, 31

# CHECK-INST: or.andn.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x60,0x10]
or.andn.t %d1, %d1, 0, %d1, 0

# CHECK-INST: or.andn.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xe0,0x13]
or.andn.t %d1, %d1, 0, %d1, 7

# CHECK-INST: or.andn.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x60,0x1c]
or.andn.t %d1, %d1, 0, %d1, 24

# CHECK-INST: or.andn.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xe0,0x1f]
or.andn.t %d1, %d1, 0, %d1, 31

# CHECK-INST: or.andn.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x60,0x10]
or.andn.t %d1, %d1, 0, %d14, 0

# CHECK-INST: or.andn.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xe0,0x13]
or.andn.t %d1, %d1, 0, %d14, 7

# CHECK-INST: or.andn.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x60,0x1c]
or.andn.t %d1, %d1, 0, %d14, 24

# CHECK-INST: or.andn.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xe0,0x1f]
or.andn.t %d1, %d1, 0, %d14, 31

# CHECK-INST: or.andn.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x60,0x10]
or.andn.t %d1, %d1, 0, %d15, 0

# CHECK-INST: or.andn.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xe0,0x13]
or.andn.t %d1, %d1, 0, %d15, 7

# CHECK-INST: or.andn.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x60,0x1c]
or.andn.t %d1, %d1, 0, %d15, 24

# CHECK-INST: or.andn.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xe0,0x1f]
or.andn.t %d1, %d1, 0, %d15, 31

# CHECK-INST: or.andn.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x67,0x10]
or.andn.t %d1, %d1, 7, %d0, 0

# CHECK-INST: or.andn.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xe7,0x13]
or.andn.t %d1, %d1, 7, %d0, 7

# CHECK-INST: or.andn.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x67,0x1c]
or.andn.t %d1, %d1, 7, %d0, 24

# CHECK-INST: or.andn.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xe7,0x1f]
or.andn.t %d1, %d1, 7, %d0, 31

# CHECK-INST: or.andn.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x67,0x10]
or.andn.t %d1, %d1, 7, %d1, 0

# CHECK-INST: or.andn.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xe7,0x13]
or.andn.t %d1, %d1, 7, %d1, 7

# CHECK-INST: or.andn.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x67,0x1c]
or.andn.t %d1, %d1, 7, %d1, 24

# CHECK-INST: or.andn.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xe7,0x1f]
or.andn.t %d1, %d1, 7, %d1, 31

# CHECK-INST: or.andn.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x67,0x10]
or.andn.t %d1, %d1, 7, %d14, 0

# CHECK-INST: or.andn.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xe7,0x13]
or.andn.t %d1, %d1, 7, %d14, 7

# CHECK-INST: or.andn.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x67,0x1c]
or.andn.t %d1, %d1, 7, %d14, 24

# CHECK-INST: or.andn.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xe7,0x1f]
or.andn.t %d1, %d1, 7, %d14, 31

# CHECK-INST: or.andn.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x67,0x10]
or.andn.t %d1, %d1, 7, %d15, 0

# CHECK-INST: or.andn.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xe7,0x13]
or.andn.t %d1, %d1, 7, %d15, 7

# CHECK-INST: or.andn.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x67,0x1c]
or.andn.t %d1, %d1, 7, %d15, 24

# CHECK-INST: or.andn.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xe7,0x1f]
or.andn.t %d1, %d1, 7, %d15, 31

# CHECK-INST: or.andn.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x78,0x10]
or.andn.t %d1, %d1, 24, %d0, 0

# CHECK-INST: or.andn.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xf8,0x13]
or.andn.t %d1, %d1, 24, %d0, 7

# CHECK-INST: or.andn.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x78,0x1c]
or.andn.t %d1, %d1, 24, %d0, 24

# CHECK-INST: or.andn.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xf8,0x1f]
or.andn.t %d1, %d1, 24, %d0, 31

# CHECK-INST: or.andn.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x78,0x10]
or.andn.t %d1, %d1, 24, %d1, 0

# CHECK-INST: or.andn.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xf8,0x13]
or.andn.t %d1, %d1, 24, %d1, 7

# CHECK-INST: or.andn.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x78,0x1c]
or.andn.t %d1, %d1, 24, %d1, 24

# CHECK-INST: or.andn.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xf8,0x1f]
or.andn.t %d1, %d1, 24, %d1, 31

# CHECK-INST: or.andn.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x78,0x10]
or.andn.t %d1, %d1, 24, %d14, 0

# CHECK-INST: or.andn.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xf8,0x13]
or.andn.t %d1, %d1, 24, %d14, 7

# CHECK-INST: or.andn.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x78,0x1c]
or.andn.t %d1, %d1, 24, %d14, 24

# CHECK-INST: or.andn.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xf8,0x1f]
or.andn.t %d1, %d1, 24, %d14, 31

# CHECK-INST: or.andn.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x78,0x10]
or.andn.t %d1, %d1, 24, %d15, 0

# CHECK-INST: or.andn.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xf8,0x13]
or.andn.t %d1, %d1, 24, %d15, 7

# CHECK-INST: or.andn.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x78,0x1c]
or.andn.t %d1, %d1, 24, %d15, 24

# CHECK-INST: or.andn.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xf8,0x1f]
or.andn.t %d1, %d1, 24, %d15, 31

# CHECK-INST: or.andn.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x7f,0x10]
or.andn.t %d1, %d1, 31, %d0, 0

# CHECK-INST: or.andn.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xff,0x13]
or.andn.t %d1, %d1, 31, %d0, 7

# CHECK-INST: or.andn.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x7f,0x1c]
or.andn.t %d1, %d1, 31, %d0, 24

# CHECK-INST: or.andn.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xff,0x1f]
or.andn.t %d1, %d1, 31, %d0, 31

# CHECK-INST: or.andn.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x7f,0x10]
or.andn.t %d1, %d1, 31, %d1, 0

# CHECK-INST: or.andn.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xff,0x13]
or.andn.t %d1, %d1, 31, %d1, 7

# CHECK-INST: or.andn.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x7f,0x1c]
or.andn.t %d1, %d1, 31, %d1, 24

# CHECK-INST: or.andn.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xff,0x1f]
or.andn.t %d1, %d1, 31, %d1, 31

# CHECK-INST: or.andn.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x7f,0x10]
or.andn.t %d1, %d1, 31, %d14, 0

# CHECK-INST: or.andn.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xff,0x13]
or.andn.t %d1, %d1, 31, %d14, 7

# CHECK-INST: or.andn.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x7f,0x1c]
or.andn.t %d1, %d1, 31, %d14, 24

# CHECK-INST: or.andn.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xff,0x1f]
or.andn.t %d1, %d1, 31, %d14, 31

# CHECK-INST: or.andn.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x7f,0x10]
or.andn.t %d1, %d1, 31, %d15, 0

# CHECK-INST: or.andn.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xff,0x13]
or.andn.t %d1, %d1, 31, %d15, 7

# CHECK-INST: or.andn.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x7f,0x1c]
or.andn.t %d1, %d1, 31, %d15, 24

# CHECK-INST: or.andn.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xff,0x1f]
or.andn.t %d1, %d1, 31, %d15, 31

# CHECK-INST: or.andn.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x60,0x10]
or.andn.t %d1, %d14, 0, %d0, 0

# CHECK-INST: or.andn.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xe0,0x13]
or.andn.t %d1, %d14, 0, %d0, 7

# CHECK-INST: or.andn.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x60,0x1c]
or.andn.t %d1, %d14, 0, %d0, 24

# CHECK-INST: or.andn.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xe0,0x1f]
or.andn.t %d1, %d14, 0, %d0, 31

# CHECK-INST: or.andn.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x60,0x10]
or.andn.t %d1, %d14, 0, %d1, 0

# CHECK-INST: or.andn.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xe0,0x13]
or.andn.t %d1, %d14, 0, %d1, 7

# CHECK-INST: or.andn.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x60,0x1c]
or.andn.t %d1, %d14, 0, %d1, 24

# CHECK-INST: or.andn.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xe0,0x1f]
or.andn.t %d1, %d14, 0, %d1, 31

# CHECK-INST: or.andn.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x60,0x10]
or.andn.t %d1, %d14, 0, %d14, 0

# CHECK-INST: or.andn.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xe0,0x13]
or.andn.t %d1, %d14, 0, %d14, 7

# CHECK-INST: or.andn.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x60,0x1c]
or.andn.t %d1, %d14, 0, %d14, 24

# CHECK-INST: or.andn.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xe0,0x1f]
or.andn.t %d1, %d14, 0, %d14, 31

# CHECK-INST: or.andn.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x60,0x10]
or.andn.t %d1, %d14, 0, %d15, 0

# CHECK-INST: or.andn.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xe0,0x13]
or.andn.t %d1, %d14, 0, %d15, 7

# CHECK-INST: or.andn.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x60,0x1c]
or.andn.t %d1, %d14, 0, %d15, 24

# CHECK-INST: or.andn.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xe0,0x1f]
or.andn.t %d1, %d14, 0, %d15, 31

# CHECK-INST: or.andn.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x67,0x10]
or.andn.t %d1, %d14, 7, %d0, 0

# CHECK-INST: or.andn.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xe7,0x13]
or.andn.t %d1, %d14, 7, %d0, 7

# CHECK-INST: or.andn.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x67,0x1c]
or.andn.t %d1, %d14, 7, %d0, 24

# CHECK-INST: or.andn.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xe7,0x1f]
or.andn.t %d1, %d14, 7, %d0, 31

# CHECK-INST: or.andn.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x67,0x10]
or.andn.t %d1, %d14, 7, %d1, 0

# CHECK-INST: or.andn.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xe7,0x13]
or.andn.t %d1, %d14, 7, %d1, 7

# CHECK-INST: or.andn.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x67,0x1c]
or.andn.t %d1, %d14, 7, %d1, 24

# CHECK-INST: or.andn.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xe7,0x1f]
or.andn.t %d1, %d14, 7, %d1, 31

# CHECK-INST: or.andn.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x67,0x10]
or.andn.t %d1, %d14, 7, %d14, 0

# CHECK-INST: or.andn.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xe7,0x13]
or.andn.t %d1, %d14, 7, %d14, 7

# CHECK-INST: or.andn.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x67,0x1c]
or.andn.t %d1, %d14, 7, %d14, 24

# CHECK-INST: or.andn.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xe7,0x1f]
or.andn.t %d1, %d14, 7, %d14, 31

# CHECK-INST: or.andn.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x67,0x10]
or.andn.t %d1, %d14, 7, %d15, 0

# CHECK-INST: or.andn.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xe7,0x13]
or.andn.t %d1, %d14, 7, %d15, 7

# CHECK-INST: or.andn.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x67,0x1c]
or.andn.t %d1, %d14, 7, %d15, 24

# CHECK-INST: or.andn.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xe7,0x1f]
or.andn.t %d1, %d14, 7, %d15, 31

# CHECK-INST: or.andn.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x78,0x10]
or.andn.t %d1, %d14, 24, %d0, 0

# CHECK-INST: or.andn.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xf8,0x13]
or.andn.t %d1, %d14, 24, %d0, 7

# CHECK-INST: or.andn.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x78,0x1c]
or.andn.t %d1, %d14, 24, %d0, 24

# CHECK-INST: or.andn.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xf8,0x1f]
or.andn.t %d1, %d14, 24, %d0, 31

# CHECK-INST: or.andn.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x78,0x10]
or.andn.t %d1, %d14, 24, %d1, 0

# CHECK-INST: or.andn.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xf8,0x13]
or.andn.t %d1, %d14, 24, %d1, 7

# CHECK-INST: or.andn.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x78,0x1c]
or.andn.t %d1, %d14, 24, %d1, 24

# CHECK-INST: or.andn.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xf8,0x1f]
or.andn.t %d1, %d14, 24, %d1, 31

# CHECK-INST: or.andn.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x78,0x10]
or.andn.t %d1, %d14, 24, %d14, 0

# CHECK-INST: or.andn.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xf8,0x13]
or.andn.t %d1, %d14, 24, %d14, 7

# CHECK-INST: or.andn.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x78,0x1c]
or.andn.t %d1, %d14, 24, %d14, 24

# CHECK-INST: or.andn.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xf8,0x1f]
or.andn.t %d1, %d14, 24, %d14, 31

# CHECK-INST: or.andn.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x78,0x10]
or.andn.t %d1, %d14, 24, %d15, 0

# CHECK-INST: or.andn.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xf8,0x13]
or.andn.t %d1, %d14, 24, %d15, 7

# CHECK-INST: or.andn.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x78,0x1c]
or.andn.t %d1, %d14, 24, %d15, 24

# CHECK-INST: or.andn.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xf8,0x1f]
or.andn.t %d1, %d14, 24, %d15, 31

# CHECK-INST: or.andn.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x7f,0x10]
or.andn.t %d1, %d14, 31, %d0, 0

# CHECK-INST: or.andn.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xff,0x13]
or.andn.t %d1, %d14, 31, %d0, 7

# CHECK-INST: or.andn.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x7f,0x1c]
or.andn.t %d1, %d14, 31, %d0, 24

# CHECK-INST: or.andn.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xff,0x1f]
or.andn.t %d1, %d14, 31, %d0, 31

# CHECK-INST: or.andn.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x7f,0x10]
or.andn.t %d1, %d14, 31, %d1, 0

# CHECK-INST: or.andn.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xff,0x13]
or.andn.t %d1, %d14, 31, %d1, 7

# CHECK-INST: or.andn.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x7f,0x1c]
or.andn.t %d1, %d14, 31, %d1, 24

# CHECK-INST: or.andn.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xff,0x1f]
or.andn.t %d1, %d14, 31, %d1, 31

# CHECK-INST: or.andn.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x7f,0x10]
or.andn.t %d1, %d14, 31, %d14, 0

# CHECK-INST: or.andn.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xff,0x13]
or.andn.t %d1, %d14, 31, %d14, 7

# CHECK-INST: or.andn.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x7f,0x1c]
or.andn.t %d1, %d14, 31, %d14, 24

# CHECK-INST: or.andn.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xff,0x1f]
or.andn.t %d1, %d14, 31, %d14, 31

# CHECK-INST: or.andn.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x7f,0x10]
or.andn.t %d1, %d14, 31, %d15, 0

# CHECK-INST: or.andn.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xff,0x13]
or.andn.t %d1, %d14, 31, %d15, 7

# CHECK-INST: or.andn.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x7f,0x1c]
or.andn.t %d1, %d14, 31, %d15, 24

# CHECK-INST: or.andn.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xff,0x1f]
or.andn.t %d1, %d14, 31, %d15, 31

# CHECK-INST: or.andn.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x60,0x10]
or.andn.t %d1, %d15, 0, %d0, 0

# CHECK-INST: or.andn.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xe0,0x13]
or.andn.t %d1, %d15, 0, %d0, 7

# CHECK-INST: or.andn.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x60,0x1c]
or.andn.t %d1, %d15, 0, %d0, 24

# CHECK-INST: or.andn.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xe0,0x1f]
or.andn.t %d1, %d15, 0, %d0, 31

# CHECK-INST: or.andn.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x60,0x10]
or.andn.t %d1, %d15, 0, %d1, 0

# CHECK-INST: or.andn.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xe0,0x13]
or.andn.t %d1, %d15, 0, %d1, 7

# CHECK-INST: or.andn.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x60,0x1c]
or.andn.t %d1, %d15, 0, %d1, 24

# CHECK-INST: or.andn.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xe0,0x1f]
or.andn.t %d1, %d15, 0, %d1, 31

# CHECK-INST: or.andn.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x60,0x10]
or.andn.t %d1, %d15, 0, %d14, 0

# CHECK-INST: or.andn.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xe0,0x13]
or.andn.t %d1, %d15, 0, %d14, 7

# CHECK-INST: or.andn.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x60,0x1c]
or.andn.t %d1, %d15, 0, %d14, 24

# CHECK-INST: or.andn.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xe0,0x1f]
or.andn.t %d1, %d15, 0, %d14, 31

# CHECK-INST: or.andn.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x60,0x10]
or.andn.t %d1, %d15, 0, %d15, 0

# CHECK-INST: or.andn.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xe0,0x13]
or.andn.t %d1, %d15, 0, %d15, 7

# CHECK-INST: or.andn.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x60,0x1c]
or.andn.t %d1, %d15, 0, %d15, 24

# CHECK-INST: or.andn.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xe0,0x1f]
or.andn.t %d1, %d15, 0, %d15, 31

# CHECK-INST: or.andn.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x67,0x10]
or.andn.t %d1, %d15, 7, %d0, 0

# CHECK-INST: or.andn.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xe7,0x13]
or.andn.t %d1, %d15, 7, %d0, 7

# CHECK-INST: or.andn.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x67,0x1c]
or.andn.t %d1, %d15, 7, %d0, 24

# CHECK-INST: or.andn.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xe7,0x1f]
or.andn.t %d1, %d15, 7, %d0, 31

# CHECK-INST: or.andn.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x67,0x10]
or.andn.t %d1, %d15, 7, %d1, 0

# CHECK-INST: or.andn.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xe7,0x13]
or.andn.t %d1, %d15, 7, %d1, 7

# CHECK-INST: or.andn.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x67,0x1c]
or.andn.t %d1, %d15, 7, %d1, 24

# CHECK-INST: or.andn.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xe7,0x1f]
or.andn.t %d1, %d15, 7, %d1, 31

# CHECK-INST: or.andn.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x67,0x10]
or.andn.t %d1, %d15, 7, %d14, 0

# CHECK-INST: or.andn.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xe7,0x13]
or.andn.t %d1, %d15, 7, %d14, 7

# CHECK-INST: or.andn.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x67,0x1c]
or.andn.t %d1, %d15, 7, %d14, 24

# CHECK-INST: or.andn.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xe7,0x1f]
or.andn.t %d1, %d15, 7, %d14, 31

# CHECK-INST: or.andn.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x67,0x10]
or.andn.t %d1, %d15, 7, %d15, 0

# CHECK-INST: or.andn.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xe7,0x13]
or.andn.t %d1, %d15, 7, %d15, 7

# CHECK-INST: or.andn.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x67,0x1c]
or.andn.t %d1, %d15, 7, %d15, 24

# CHECK-INST: or.andn.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xe7,0x1f]
or.andn.t %d1, %d15, 7, %d15, 31

# CHECK-INST: or.andn.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x78,0x10]
or.andn.t %d1, %d15, 24, %d0, 0

# CHECK-INST: or.andn.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xf8,0x13]
or.andn.t %d1, %d15, 24, %d0, 7

# CHECK-INST: or.andn.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x78,0x1c]
or.andn.t %d1, %d15, 24, %d0, 24

# CHECK-INST: or.andn.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xf8,0x1f]
or.andn.t %d1, %d15, 24, %d0, 31

# CHECK-INST: or.andn.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x78,0x10]
or.andn.t %d1, %d15, 24, %d1, 0

# CHECK-INST: or.andn.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xf8,0x13]
or.andn.t %d1, %d15, 24, %d1, 7

# CHECK-INST: or.andn.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x78,0x1c]
or.andn.t %d1, %d15, 24, %d1, 24

# CHECK-INST: or.andn.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xf8,0x1f]
or.andn.t %d1, %d15, 24, %d1, 31

# CHECK-INST: or.andn.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x78,0x10]
or.andn.t %d1, %d15, 24, %d14, 0

# CHECK-INST: or.andn.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xf8,0x13]
or.andn.t %d1, %d15, 24, %d14, 7

# CHECK-INST: or.andn.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x78,0x1c]
or.andn.t %d1, %d15, 24, %d14, 24

# CHECK-INST: or.andn.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xf8,0x1f]
or.andn.t %d1, %d15, 24, %d14, 31

# CHECK-INST: or.andn.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x78,0x10]
or.andn.t %d1, %d15, 24, %d15, 0

# CHECK-INST: or.andn.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xf8,0x13]
or.andn.t %d1, %d15, 24, %d15, 7

# CHECK-INST: or.andn.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x78,0x1c]
or.andn.t %d1, %d15, 24, %d15, 24

# CHECK-INST: or.andn.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xf8,0x1f]
or.andn.t %d1, %d15, 24, %d15, 31

# CHECK-INST: or.andn.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x7f,0x10]
or.andn.t %d1, %d15, 31, %d0, 0

# CHECK-INST: or.andn.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xff,0x13]
or.andn.t %d1, %d15, 31, %d0, 7

# CHECK-INST: or.andn.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x7f,0x1c]
or.andn.t %d1, %d15, 31, %d0, 24

# CHECK-INST: or.andn.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xff,0x1f]
or.andn.t %d1, %d15, 31, %d0, 31

# CHECK-INST: or.andn.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x7f,0x10]
or.andn.t %d1, %d15, 31, %d1, 0

# CHECK-INST: or.andn.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xff,0x13]
or.andn.t %d1, %d15, 31, %d1, 7

# CHECK-INST: or.andn.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x7f,0x1c]
or.andn.t %d1, %d15, 31, %d1, 24

# CHECK-INST: or.andn.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xff,0x1f]
or.andn.t %d1, %d15, 31, %d1, 31

# CHECK-INST: or.andn.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x7f,0x10]
or.andn.t %d1, %d15, 31, %d14, 0

# CHECK-INST: or.andn.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xff,0x13]
or.andn.t %d1, %d15, 31, %d14, 7

# CHECK-INST: or.andn.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x7f,0x1c]
or.andn.t %d1, %d15, 31, %d14, 24

# CHECK-INST: or.andn.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xff,0x1f]
or.andn.t %d1, %d15, 31, %d14, 31

# CHECK-INST: or.andn.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x7f,0x10]
or.andn.t %d1, %d15, 31, %d15, 0

# CHECK-INST: or.andn.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xff,0x13]
or.andn.t %d1, %d15, 31, %d15, 7

# CHECK-INST: or.andn.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x7f,0x1c]
or.andn.t %d1, %d15, 31, %d15, 24

# CHECK-INST: or.andn.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xff,0x1f]
or.andn.t %d1, %d15, 31, %d15, 31

# CHECK-INST: or.andn.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x60,0xe0]
or.andn.t %d14, %d0, 0, %d0, 0

# CHECK-INST: or.andn.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xe0,0xe3]
or.andn.t %d14, %d0, 0, %d0, 7

# CHECK-INST: or.andn.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x60,0xec]
or.andn.t %d14, %d0, 0, %d0, 24

# CHECK-INST: or.andn.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xe0,0xef]
or.andn.t %d14, %d0, 0, %d0, 31

# CHECK-INST: or.andn.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x60,0xe0]
or.andn.t %d14, %d0, 0, %d1, 0

# CHECK-INST: or.andn.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xe0,0xe3]
or.andn.t %d14, %d0, 0, %d1, 7

# CHECK-INST: or.andn.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x60,0xec]
or.andn.t %d14, %d0, 0, %d1, 24

# CHECK-INST: or.andn.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xe0,0xef]
or.andn.t %d14, %d0, 0, %d1, 31

# CHECK-INST: or.andn.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x60,0xe0]
or.andn.t %d14, %d0, 0, %d14, 0

# CHECK-INST: or.andn.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xe0,0xe3]
or.andn.t %d14, %d0, 0, %d14, 7

# CHECK-INST: or.andn.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x60,0xec]
or.andn.t %d14, %d0, 0, %d14, 24

# CHECK-INST: or.andn.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xe0,0xef]
or.andn.t %d14, %d0, 0, %d14, 31

# CHECK-INST: or.andn.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x60,0xe0]
or.andn.t %d14, %d0, 0, %d15, 0

# CHECK-INST: or.andn.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xe0,0xe3]
or.andn.t %d14, %d0, 0, %d15, 7

# CHECK-INST: or.andn.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x60,0xec]
or.andn.t %d14, %d0, 0, %d15, 24

# CHECK-INST: or.andn.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xe0,0xef]
or.andn.t %d14, %d0, 0, %d15, 31

# CHECK-INST: or.andn.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x67,0xe0]
or.andn.t %d14, %d0, 7, %d0, 0

# CHECK-INST: or.andn.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xe7,0xe3]
or.andn.t %d14, %d0, 7, %d0, 7

# CHECK-INST: or.andn.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x67,0xec]
or.andn.t %d14, %d0, 7, %d0, 24

# CHECK-INST: or.andn.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xe7,0xef]
or.andn.t %d14, %d0, 7, %d0, 31

# CHECK-INST: or.andn.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x67,0xe0]
or.andn.t %d14, %d0, 7, %d1, 0

# CHECK-INST: or.andn.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xe7,0xe3]
or.andn.t %d14, %d0, 7, %d1, 7

# CHECK-INST: or.andn.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x67,0xec]
or.andn.t %d14, %d0, 7, %d1, 24

# CHECK-INST: or.andn.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xe7,0xef]
or.andn.t %d14, %d0, 7, %d1, 31

# CHECK-INST: or.andn.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x67,0xe0]
or.andn.t %d14, %d0, 7, %d14, 0

# CHECK-INST: or.andn.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xe7,0xe3]
or.andn.t %d14, %d0, 7, %d14, 7

# CHECK-INST: or.andn.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x67,0xec]
or.andn.t %d14, %d0, 7, %d14, 24

# CHECK-INST: or.andn.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xe7,0xef]
or.andn.t %d14, %d0, 7, %d14, 31

# CHECK-INST: or.andn.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x67,0xe0]
or.andn.t %d14, %d0, 7, %d15, 0

# CHECK-INST: or.andn.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xe7,0xe3]
or.andn.t %d14, %d0, 7, %d15, 7

# CHECK-INST: or.andn.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x67,0xec]
or.andn.t %d14, %d0, 7, %d15, 24

# CHECK-INST: or.andn.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xe7,0xef]
or.andn.t %d14, %d0, 7, %d15, 31

# CHECK-INST: or.andn.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x78,0xe0]
or.andn.t %d14, %d0, 24, %d0, 0

# CHECK-INST: or.andn.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xf8,0xe3]
or.andn.t %d14, %d0, 24, %d0, 7

# CHECK-INST: or.andn.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x78,0xec]
or.andn.t %d14, %d0, 24, %d0, 24

# CHECK-INST: or.andn.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xf8,0xef]
or.andn.t %d14, %d0, 24, %d0, 31

# CHECK-INST: or.andn.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x78,0xe0]
or.andn.t %d14, %d0, 24, %d1, 0

# CHECK-INST: or.andn.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xf8,0xe3]
or.andn.t %d14, %d0, 24, %d1, 7

# CHECK-INST: or.andn.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x78,0xec]
or.andn.t %d14, %d0, 24, %d1, 24

# CHECK-INST: or.andn.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xf8,0xef]
or.andn.t %d14, %d0, 24, %d1, 31

# CHECK-INST: or.andn.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x78,0xe0]
or.andn.t %d14, %d0, 24, %d14, 0

# CHECK-INST: or.andn.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xf8,0xe3]
or.andn.t %d14, %d0, 24, %d14, 7

# CHECK-INST: or.andn.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x78,0xec]
or.andn.t %d14, %d0, 24, %d14, 24

# CHECK-INST: or.andn.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xf8,0xef]
or.andn.t %d14, %d0, 24, %d14, 31

# CHECK-INST: or.andn.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x78,0xe0]
or.andn.t %d14, %d0, 24, %d15, 0

# CHECK-INST: or.andn.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xf8,0xe3]
or.andn.t %d14, %d0, 24, %d15, 7

# CHECK-INST: or.andn.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x78,0xec]
or.andn.t %d14, %d0, 24, %d15, 24

# CHECK-INST: or.andn.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xf8,0xef]
or.andn.t %d14, %d0, 24, %d15, 31

# CHECK-INST: or.andn.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x7f,0xe0]
or.andn.t %d14, %d0, 31, %d0, 0

# CHECK-INST: or.andn.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xff,0xe3]
or.andn.t %d14, %d0, 31, %d0, 7

# CHECK-INST: or.andn.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x7f,0xec]
or.andn.t %d14, %d0, 31, %d0, 24

# CHECK-INST: or.andn.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xff,0xef]
or.andn.t %d14, %d0, 31, %d0, 31

# CHECK-INST: or.andn.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x7f,0xe0]
or.andn.t %d14, %d0, 31, %d1, 0

# CHECK-INST: or.andn.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xff,0xe3]
or.andn.t %d14, %d0, 31, %d1, 7

# CHECK-INST: or.andn.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x7f,0xec]
or.andn.t %d14, %d0, 31, %d1, 24

# CHECK-INST: or.andn.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xff,0xef]
or.andn.t %d14, %d0, 31, %d1, 31

# CHECK-INST: or.andn.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x7f,0xe0]
or.andn.t %d14, %d0, 31, %d14, 0

# CHECK-INST: or.andn.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xff,0xe3]
or.andn.t %d14, %d0, 31, %d14, 7

# CHECK-INST: or.andn.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x7f,0xec]
or.andn.t %d14, %d0, 31, %d14, 24

# CHECK-INST: or.andn.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xff,0xef]
or.andn.t %d14, %d0, 31, %d14, 31

# CHECK-INST: or.andn.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x7f,0xe0]
or.andn.t %d14, %d0, 31, %d15, 0

# CHECK-INST: or.andn.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xff,0xe3]
or.andn.t %d14, %d0, 31, %d15, 7

# CHECK-INST: or.andn.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x7f,0xec]
or.andn.t %d14, %d0, 31, %d15, 24

# CHECK-INST: or.andn.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xff,0xef]
or.andn.t %d14, %d0, 31, %d15, 31

# CHECK-INST: or.andn.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x60,0xe0]
or.andn.t %d14, %d1, 0, %d0, 0

# CHECK-INST: or.andn.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xe0,0xe3]
or.andn.t %d14, %d1, 0, %d0, 7

# CHECK-INST: or.andn.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x60,0xec]
or.andn.t %d14, %d1, 0, %d0, 24

# CHECK-INST: or.andn.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xe0,0xef]
or.andn.t %d14, %d1, 0, %d0, 31

# CHECK-INST: or.andn.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x60,0xe0]
or.andn.t %d14, %d1, 0, %d1, 0

# CHECK-INST: or.andn.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xe0,0xe3]
or.andn.t %d14, %d1, 0, %d1, 7

# CHECK-INST: or.andn.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x60,0xec]
or.andn.t %d14, %d1, 0, %d1, 24

# CHECK-INST: or.andn.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xe0,0xef]
or.andn.t %d14, %d1, 0, %d1, 31

# CHECK-INST: or.andn.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x60,0xe0]
or.andn.t %d14, %d1, 0, %d14, 0

# CHECK-INST: or.andn.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xe0,0xe3]
or.andn.t %d14, %d1, 0, %d14, 7

# CHECK-INST: or.andn.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x60,0xec]
or.andn.t %d14, %d1, 0, %d14, 24

# CHECK-INST: or.andn.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xe0,0xef]
or.andn.t %d14, %d1, 0, %d14, 31

# CHECK-INST: or.andn.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x60,0xe0]
or.andn.t %d14, %d1, 0, %d15, 0

# CHECK-INST: or.andn.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xe0,0xe3]
or.andn.t %d14, %d1, 0, %d15, 7

# CHECK-INST: or.andn.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x60,0xec]
or.andn.t %d14, %d1, 0, %d15, 24

# CHECK-INST: or.andn.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xe0,0xef]
or.andn.t %d14, %d1, 0, %d15, 31

# CHECK-INST: or.andn.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x67,0xe0]
or.andn.t %d14, %d1, 7, %d0, 0

# CHECK-INST: or.andn.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xe7,0xe3]
or.andn.t %d14, %d1, 7, %d0, 7

# CHECK-INST: or.andn.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x67,0xec]
or.andn.t %d14, %d1, 7, %d0, 24

# CHECK-INST: or.andn.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xe7,0xef]
or.andn.t %d14, %d1, 7, %d0, 31

# CHECK-INST: or.andn.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x67,0xe0]
or.andn.t %d14, %d1, 7, %d1, 0

# CHECK-INST: or.andn.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xe7,0xe3]
or.andn.t %d14, %d1, 7, %d1, 7

# CHECK-INST: or.andn.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x67,0xec]
or.andn.t %d14, %d1, 7, %d1, 24

# CHECK-INST: or.andn.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xe7,0xef]
or.andn.t %d14, %d1, 7, %d1, 31

# CHECK-INST: or.andn.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x67,0xe0]
or.andn.t %d14, %d1, 7, %d14, 0

# CHECK-INST: or.andn.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xe7,0xe3]
or.andn.t %d14, %d1, 7, %d14, 7

# CHECK-INST: or.andn.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x67,0xec]
or.andn.t %d14, %d1, 7, %d14, 24

# CHECK-INST: or.andn.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xe7,0xef]
or.andn.t %d14, %d1, 7, %d14, 31

# CHECK-INST: or.andn.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x67,0xe0]
or.andn.t %d14, %d1, 7, %d15, 0

# CHECK-INST: or.andn.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xe7,0xe3]
or.andn.t %d14, %d1, 7, %d15, 7

# CHECK-INST: or.andn.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x67,0xec]
or.andn.t %d14, %d1, 7, %d15, 24

# CHECK-INST: or.andn.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xe7,0xef]
or.andn.t %d14, %d1, 7, %d15, 31

# CHECK-INST: or.andn.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x78,0xe0]
or.andn.t %d14, %d1, 24, %d0, 0

# CHECK-INST: or.andn.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xf8,0xe3]
or.andn.t %d14, %d1, 24, %d0, 7

# CHECK-INST: or.andn.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x78,0xec]
or.andn.t %d14, %d1, 24, %d0, 24

# CHECK-INST: or.andn.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xf8,0xef]
or.andn.t %d14, %d1, 24, %d0, 31

# CHECK-INST: or.andn.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x78,0xe0]
or.andn.t %d14, %d1, 24, %d1, 0

# CHECK-INST: or.andn.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xf8,0xe3]
or.andn.t %d14, %d1, 24, %d1, 7

# CHECK-INST: or.andn.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x78,0xec]
or.andn.t %d14, %d1, 24, %d1, 24

# CHECK-INST: or.andn.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xf8,0xef]
or.andn.t %d14, %d1, 24, %d1, 31

# CHECK-INST: or.andn.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x78,0xe0]
or.andn.t %d14, %d1, 24, %d14, 0

# CHECK-INST: or.andn.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xf8,0xe3]
or.andn.t %d14, %d1, 24, %d14, 7

# CHECK-INST: or.andn.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x78,0xec]
or.andn.t %d14, %d1, 24, %d14, 24

# CHECK-INST: or.andn.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xf8,0xef]
or.andn.t %d14, %d1, 24, %d14, 31

# CHECK-INST: or.andn.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x78,0xe0]
or.andn.t %d14, %d1, 24, %d15, 0

# CHECK-INST: or.andn.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xf8,0xe3]
or.andn.t %d14, %d1, 24, %d15, 7

# CHECK-INST: or.andn.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x78,0xec]
or.andn.t %d14, %d1, 24, %d15, 24

# CHECK-INST: or.andn.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xf8,0xef]
or.andn.t %d14, %d1, 24, %d15, 31

# CHECK-INST: or.andn.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x7f,0xe0]
or.andn.t %d14, %d1, 31, %d0, 0

# CHECK-INST: or.andn.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xff,0xe3]
or.andn.t %d14, %d1, 31, %d0, 7

# CHECK-INST: or.andn.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x7f,0xec]
or.andn.t %d14, %d1, 31, %d0, 24

# CHECK-INST: or.andn.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xff,0xef]
or.andn.t %d14, %d1, 31, %d0, 31

# CHECK-INST: or.andn.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x7f,0xe0]
or.andn.t %d14, %d1, 31, %d1, 0

# CHECK-INST: or.andn.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xff,0xe3]
or.andn.t %d14, %d1, 31, %d1, 7

# CHECK-INST: or.andn.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x7f,0xec]
or.andn.t %d14, %d1, 31, %d1, 24

# CHECK-INST: or.andn.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xff,0xef]
or.andn.t %d14, %d1, 31, %d1, 31

# CHECK-INST: or.andn.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x7f,0xe0]
or.andn.t %d14, %d1, 31, %d14, 0

# CHECK-INST: or.andn.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xff,0xe3]
or.andn.t %d14, %d1, 31, %d14, 7

# CHECK-INST: or.andn.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x7f,0xec]
or.andn.t %d14, %d1, 31, %d14, 24

# CHECK-INST: or.andn.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xff,0xef]
or.andn.t %d14, %d1, 31, %d14, 31

# CHECK-INST: or.andn.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x7f,0xe0]
or.andn.t %d14, %d1, 31, %d15, 0

# CHECK-INST: or.andn.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xff,0xe3]
or.andn.t %d14, %d1, 31, %d15, 7

# CHECK-INST: or.andn.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x7f,0xec]
or.andn.t %d14, %d1, 31, %d15, 24

# CHECK-INST: or.andn.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xff,0xef]
or.andn.t %d14, %d1, 31, %d15, 31

# CHECK-INST: or.andn.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x60,0xe0]
or.andn.t %d14, %d14, 0, %d0, 0

# CHECK-INST: or.andn.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xe0,0xe3]
or.andn.t %d14, %d14, 0, %d0, 7

# CHECK-INST: or.andn.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x60,0xec]
or.andn.t %d14, %d14, 0, %d0, 24

# CHECK-INST: or.andn.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xe0,0xef]
or.andn.t %d14, %d14, 0, %d0, 31

# CHECK-INST: or.andn.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x60,0xe0]
or.andn.t %d14, %d14, 0, %d1, 0

# CHECK-INST: or.andn.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xe0,0xe3]
or.andn.t %d14, %d14, 0, %d1, 7

# CHECK-INST: or.andn.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x60,0xec]
or.andn.t %d14, %d14, 0, %d1, 24

# CHECK-INST: or.andn.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xe0,0xef]
or.andn.t %d14, %d14, 0, %d1, 31

# CHECK-INST: or.andn.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x60,0xe0]
or.andn.t %d14, %d14, 0, %d14, 0

# CHECK-INST: or.andn.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xe0,0xe3]
or.andn.t %d14, %d14, 0, %d14, 7

# CHECK-INST: or.andn.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x60,0xec]
or.andn.t %d14, %d14, 0, %d14, 24

# CHECK-INST: or.andn.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xe0,0xef]
or.andn.t %d14, %d14, 0, %d14, 31

# CHECK-INST: or.andn.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x60,0xe0]
or.andn.t %d14, %d14, 0, %d15, 0

# CHECK-INST: or.andn.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xe0,0xe3]
or.andn.t %d14, %d14, 0, %d15, 7

# CHECK-INST: or.andn.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x60,0xec]
or.andn.t %d14, %d14, 0, %d15, 24

# CHECK-INST: or.andn.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xe0,0xef]
or.andn.t %d14, %d14, 0, %d15, 31

# CHECK-INST: or.andn.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x67,0xe0]
or.andn.t %d14, %d14, 7, %d0, 0

# CHECK-INST: or.andn.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xe7,0xe3]
or.andn.t %d14, %d14, 7, %d0, 7

# CHECK-INST: or.andn.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x67,0xec]
or.andn.t %d14, %d14, 7, %d0, 24

# CHECK-INST: or.andn.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xe7,0xef]
or.andn.t %d14, %d14, 7, %d0, 31

# CHECK-INST: or.andn.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x67,0xe0]
or.andn.t %d14, %d14, 7, %d1, 0

# CHECK-INST: or.andn.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xe7,0xe3]
or.andn.t %d14, %d14, 7, %d1, 7

# CHECK-INST: or.andn.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x67,0xec]
or.andn.t %d14, %d14, 7, %d1, 24

# CHECK-INST: or.andn.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xe7,0xef]
or.andn.t %d14, %d14, 7, %d1, 31

# CHECK-INST: or.andn.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x67,0xe0]
or.andn.t %d14, %d14, 7, %d14, 0

# CHECK-INST: or.andn.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xe7,0xe3]
or.andn.t %d14, %d14, 7, %d14, 7

# CHECK-INST: or.andn.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x67,0xec]
or.andn.t %d14, %d14, 7, %d14, 24

# CHECK-INST: or.andn.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xe7,0xef]
or.andn.t %d14, %d14, 7, %d14, 31

# CHECK-INST: or.andn.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x67,0xe0]
or.andn.t %d14, %d14, 7, %d15, 0

# CHECK-INST: or.andn.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xe7,0xe3]
or.andn.t %d14, %d14, 7, %d15, 7

# CHECK-INST: or.andn.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x67,0xec]
or.andn.t %d14, %d14, 7, %d15, 24

# CHECK-INST: or.andn.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xe7,0xef]
or.andn.t %d14, %d14, 7, %d15, 31

# CHECK-INST: or.andn.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x78,0xe0]
or.andn.t %d14, %d14, 24, %d0, 0

# CHECK-INST: or.andn.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xf8,0xe3]
or.andn.t %d14, %d14, 24, %d0, 7

# CHECK-INST: or.andn.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x78,0xec]
or.andn.t %d14, %d14, 24, %d0, 24

# CHECK-INST: or.andn.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xf8,0xef]
or.andn.t %d14, %d14, 24, %d0, 31

# CHECK-INST: or.andn.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x78,0xe0]
or.andn.t %d14, %d14, 24, %d1, 0

# CHECK-INST: or.andn.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xf8,0xe3]
or.andn.t %d14, %d14, 24, %d1, 7

# CHECK-INST: or.andn.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x78,0xec]
or.andn.t %d14, %d14, 24, %d1, 24

# CHECK-INST: or.andn.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xf8,0xef]
or.andn.t %d14, %d14, 24, %d1, 31

# CHECK-INST: or.andn.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x78,0xe0]
or.andn.t %d14, %d14, 24, %d14, 0

# CHECK-INST: or.andn.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xf8,0xe3]
or.andn.t %d14, %d14, 24, %d14, 7

# CHECK-INST: or.andn.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x78,0xec]
or.andn.t %d14, %d14, 24, %d14, 24

# CHECK-INST: or.andn.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xf8,0xef]
or.andn.t %d14, %d14, 24, %d14, 31

# CHECK-INST: or.andn.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x78,0xe0]
or.andn.t %d14, %d14, 24, %d15, 0

# CHECK-INST: or.andn.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xf8,0xe3]
or.andn.t %d14, %d14, 24, %d15, 7

# CHECK-INST: or.andn.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x78,0xec]
or.andn.t %d14, %d14, 24, %d15, 24

# CHECK-INST: or.andn.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xf8,0xef]
or.andn.t %d14, %d14, 24, %d15, 31

# CHECK-INST: or.andn.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x7f,0xe0]
or.andn.t %d14, %d14, 31, %d0, 0

# CHECK-INST: or.andn.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xff,0xe3]
or.andn.t %d14, %d14, 31, %d0, 7

# CHECK-INST: or.andn.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x7f,0xec]
or.andn.t %d14, %d14, 31, %d0, 24

# CHECK-INST: or.andn.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xff,0xef]
or.andn.t %d14, %d14, 31, %d0, 31

# CHECK-INST: or.andn.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x7f,0xe0]
or.andn.t %d14, %d14, 31, %d1, 0

# CHECK-INST: or.andn.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xff,0xe3]
or.andn.t %d14, %d14, 31, %d1, 7

# CHECK-INST: or.andn.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x7f,0xec]
or.andn.t %d14, %d14, 31, %d1, 24

# CHECK-INST: or.andn.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xff,0xef]
or.andn.t %d14, %d14, 31, %d1, 31

# CHECK-INST: or.andn.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x7f,0xe0]
or.andn.t %d14, %d14, 31, %d14, 0

# CHECK-INST: or.andn.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xff,0xe3]
or.andn.t %d14, %d14, 31, %d14, 7

# CHECK-INST: or.andn.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x7f,0xec]
or.andn.t %d14, %d14, 31, %d14, 24

# CHECK-INST: or.andn.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xff,0xef]
or.andn.t %d14, %d14, 31, %d14, 31

# CHECK-INST: or.andn.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x7f,0xe0]
or.andn.t %d14, %d14, 31, %d15, 0

# CHECK-INST: or.andn.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xff,0xe3]
or.andn.t %d14, %d14, 31, %d15, 7

# CHECK-INST: or.andn.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x7f,0xec]
or.andn.t %d14, %d14, 31, %d15, 24

# CHECK-INST: or.andn.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xff,0xef]
or.andn.t %d14, %d14, 31, %d15, 31

# CHECK-INST: or.andn.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x60,0xe0]
or.andn.t %d14, %d15, 0, %d0, 0

# CHECK-INST: or.andn.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xe0,0xe3]
or.andn.t %d14, %d15, 0, %d0, 7

# CHECK-INST: or.andn.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x60,0xec]
or.andn.t %d14, %d15, 0, %d0, 24

# CHECK-INST: or.andn.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xe0,0xef]
or.andn.t %d14, %d15, 0, %d0, 31

# CHECK-INST: or.andn.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x60,0xe0]
or.andn.t %d14, %d15, 0, %d1, 0

# CHECK-INST: or.andn.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xe0,0xe3]
or.andn.t %d14, %d15, 0, %d1, 7

# CHECK-INST: or.andn.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x60,0xec]
or.andn.t %d14, %d15, 0, %d1, 24

# CHECK-INST: or.andn.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xe0,0xef]
or.andn.t %d14, %d15, 0, %d1, 31

# CHECK-INST: or.andn.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x60,0xe0]
or.andn.t %d14, %d15, 0, %d14, 0

# CHECK-INST: or.andn.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xe0,0xe3]
or.andn.t %d14, %d15, 0, %d14, 7

# CHECK-INST: or.andn.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x60,0xec]
or.andn.t %d14, %d15, 0, %d14, 24

# CHECK-INST: or.andn.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xe0,0xef]
or.andn.t %d14, %d15, 0, %d14, 31

# CHECK-INST: or.andn.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x60,0xe0]
or.andn.t %d14, %d15, 0, %d15, 0

# CHECK-INST: or.andn.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xe0,0xe3]
or.andn.t %d14, %d15, 0, %d15, 7

# CHECK-INST: or.andn.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x60,0xec]
or.andn.t %d14, %d15, 0, %d15, 24

# CHECK-INST: or.andn.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xe0,0xef]
or.andn.t %d14, %d15, 0, %d15, 31

# CHECK-INST: or.andn.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x67,0xe0]
or.andn.t %d14, %d15, 7, %d0, 0

# CHECK-INST: or.andn.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xe7,0xe3]
or.andn.t %d14, %d15, 7, %d0, 7

# CHECK-INST: or.andn.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x67,0xec]
or.andn.t %d14, %d15, 7, %d0, 24

# CHECK-INST: or.andn.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xe7,0xef]
or.andn.t %d14, %d15, 7, %d0, 31

# CHECK-INST: or.andn.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x67,0xe0]
or.andn.t %d14, %d15, 7, %d1, 0

# CHECK-INST: or.andn.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xe7,0xe3]
or.andn.t %d14, %d15, 7, %d1, 7

# CHECK-INST: or.andn.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x67,0xec]
or.andn.t %d14, %d15, 7, %d1, 24

# CHECK-INST: or.andn.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xe7,0xef]
or.andn.t %d14, %d15, 7, %d1, 31

# CHECK-INST: or.andn.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x67,0xe0]
or.andn.t %d14, %d15, 7, %d14, 0

# CHECK-INST: or.andn.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xe7,0xe3]
or.andn.t %d14, %d15, 7, %d14, 7

# CHECK-INST: or.andn.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x67,0xec]
or.andn.t %d14, %d15, 7, %d14, 24

# CHECK-INST: or.andn.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xe7,0xef]
or.andn.t %d14, %d15, 7, %d14, 31

# CHECK-INST: or.andn.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x67,0xe0]
or.andn.t %d14, %d15, 7, %d15, 0

# CHECK-INST: or.andn.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xe7,0xe3]
or.andn.t %d14, %d15, 7, %d15, 7

# CHECK-INST: or.andn.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x67,0xec]
or.andn.t %d14, %d15, 7, %d15, 24

# CHECK-INST: or.andn.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xe7,0xef]
or.andn.t %d14, %d15, 7, %d15, 31

# CHECK-INST: or.andn.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x78,0xe0]
or.andn.t %d14, %d15, 24, %d0, 0

# CHECK-INST: or.andn.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xf8,0xe3]
or.andn.t %d14, %d15, 24, %d0, 7

# CHECK-INST: or.andn.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x78,0xec]
or.andn.t %d14, %d15, 24, %d0, 24

# CHECK-INST: or.andn.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xf8,0xef]
or.andn.t %d14, %d15, 24, %d0, 31

# CHECK-INST: or.andn.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x78,0xe0]
or.andn.t %d14, %d15, 24, %d1, 0

# CHECK-INST: or.andn.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xf8,0xe3]
or.andn.t %d14, %d15, 24, %d1, 7

# CHECK-INST: or.andn.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x78,0xec]
or.andn.t %d14, %d15, 24, %d1, 24

# CHECK-INST: or.andn.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xf8,0xef]
or.andn.t %d14, %d15, 24, %d1, 31

# CHECK-INST: or.andn.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x78,0xe0]
or.andn.t %d14, %d15, 24, %d14, 0

# CHECK-INST: or.andn.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xf8,0xe3]
or.andn.t %d14, %d15, 24, %d14, 7

# CHECK-INST: or.andn.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x78,0xec]
or.andn.t %d14, %d15, 24, %d14, 24

# CHECK-INST: or.andn.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xf8,0xef]
or.andn.t %d14, %d15, 24, %d14, 31

# CHECK-INST: or.andn.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x78,0xe0]
or.andn.t %d14, %d15, 24, %d15, 0

# CHECK-INST: or.andn.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xf8,0xe3]
or.andn.t %d14, %d15, 24, %d15, 7

# CHECK-INST: or.andn.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x78,0xec]
or.andn.t %d14, %d15, 24, %d15, 24

# CHECK-INST: or.andn.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xf8,0xef]
or.andn.t %d14, %d15, 24, %d15, 31

# CHECK-INST: or.andn.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x7f,0xe0]
or.andn.t %d14, %d15, 31, %d0, 0

# CHECK-INST: or.andn.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xff,0xe3]
or.andn.t %d14, %d15, 31, %d0, 7

# CHECK-INST: or.andn.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x7f,0xec]
or.andn.t %d14, %d15, 31, %d0, 24

# CHECK-INST: or.andn.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xff,0xef]
or.andn.t %d14, %d15, 31, %d0, 31

# CHECK-INST: or.andn.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x7f,0xe0]
or.andn.t %d14, %d15, 31, %d1, 0

# CHECK-INST: or.andn.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xff,0xe3]
or.andn.t %d14, %d15, 31, %d1, 7

# CHECK-INST: or.andn.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x7f,0xec]
or.andn.t %d14, %d15, 31, %d1, 24

# CHECK-INST: or.andn.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xff,0xef]
or.andn.t %d14, %d15, 31, %d1, 31

# CHECK-INST: or.andn.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x7f,0xe0]
or.andn.t %d14, %d15, 31, %d14, 0

# CHECK-INST: or.andn.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xff,0xe3]
or.andn.t %d14, %d15, 31, %d14, 7

# CHECK-INST: or.andn.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x7f,0xec]
or.andn.t %d14, %d15, 31, %d14, 24

# CHECK-INST: or.andn.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xff,0xef]
or.andn.t %d14, %d15, 31, %d14, 31

# CHECK-INST: or.andn.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x7f,0xe0]
or.andn.t %d14, %d15, 31, %d15, 0

# CHECK-INST: or.andn.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xff,0xe3]
or.andn.t %d14, %d15, 31, %d15, 7

# CHECK-INST: or.andn.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x7f,0xec]
or.andn.t %d14, %d15, 31, %d15, 24

# CHECK-INST: or.andn.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xff,0xef]
or.andn.t %d14, %d15, 31, %d15, 31

# CHECK-INST: or.andn.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x60,0xf0]
or.andn.t %d15, %d0, 0, %d0, 0

# CHECK-INST: or.andn.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xe0,0xf3]
or.andn.t %d15, %d0, 0, %d0, 7

# CHECK-INST: or.andn.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x60,0xfc]
or.andn.t %d15, %d0, 0, %d0, 24

# CHECK-INST: or.andn.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xe0,0xff]
or.andn.t %d15, %d0, 0, %d0, 31

# CHECK-INST: or.andn.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x60,0xf0]
or.andn.t %d15, %d0, 0, %d1, 0

# CHECK-INST: or.andn.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xe0,0xf3]
or.andn.t %d15, %d0, 0, %d1, 7

# CHECK-INST: or.andn.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x60,0xfc]
or.andn.t %d15, %d0, 0, %d1, 24

# CHECK-INST: or.andn.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xe0,0xff]
or.andn.t %d15, %d0, 0, %d1, 31

# CHECK-INST: or.andn.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x60,0xf0]
or.andn.t %d15, %d0, 0, %d14, 0

# CHECK-INST: or.andn.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xe0,0xf3]
or.andn.t %d15, %d0, 0, %d14, 7

# CHECK-INST: or.andn.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x60,0xfc]
or.andn.t %d15, %d0, 0, %d14, 24

# CHECK-INST: or.andn.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xe0,0xff]
or.andn.t %d15, %d0, 0, %d14, 31

# CHECK-INST: or.andn.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x60,0xf0]
or.andn.t %d15, %d0, 0, %d15, 0

# CHECK-INST: or.andn.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xe0,0xf3]
or.andn.t %d15, %d0, 0, %d15, 7

# CHECK-INST: or.andn.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x60,0xfc]
or.andn.t %d15, %d0, 0, %d15, 24

# CHECK-INST: or.andn.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xe0,0xff]
or.andn.t %d15, %d0, 0, %d15, 31

# CHECK-INST: or.andn.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x67,0xf0]
or.andn.t %d15, %d0, 7, %d0, 0

# CHECK-INST: or.andn.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xe7,0xf3]
or.andn.t %d15, %d0, 7, %d0, 7

# CHECK-INST: or.andn.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x67,0xfc]
or.andn.t %d15, %d0, 7, %d0, 24

# CHECK-INST: or.andn.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xe7,0xff]
or.andn.t %d15, %d0, 7, %d0, 31

# CHECK-INST: or.andn.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x67,0xf0]
or.andn.t %d15, %d0, 7, %d1, 0

# CHECK-INST: or.andn.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xe7,0xf3]
or.andn.t %d15, %d0, 7, %d1, 7

# CHECK-INST: or.andn.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x67,0xfc]
or.andn.t %d15, %d0, 7, %d1, 24

# CHECK-INST: or.andn.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xe7,0xff]
or.andn.t %d15, %d0, 7, %d1, 31

# CHECK-INST: or.andn.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x67,0xf0]
or.andn.t %d15, %d0, 7, %d14, 0

# CHECK-INST: or.andn.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xe7,0xf3]
or.andn.t %d15, %d0, 7, %d14, 7

# CHECK-INST: or.andn.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x67,0xfc]
or.andn.t %d15, %d0, 7, %d14, 24

# CHECK-INST: or.andn.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xe7,0xff]
or.andn.t %d15, %d0, 7, %d14, 31

# CHECK-INST: or.andn.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x67,0xf0]
or.andn.t %d15, %d0, 7, %d15, 0

# CHECK-INST: or.andn.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xe7,0xf3]
or.andn.t %d15, %d0, 7, %d15, 7

# CHECK-INST: or.andn.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x67,0xfc]
or.andn.t %d15, %d0, 7, %d15, 24

# CHECK-INST: or.andn.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xe7,0xff]
or.andn.t %d15, %d0, 7, %d15, 31

# CHECK-INST: or.andn.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x78,0xf0]
or.andn.t %d15, %d0, 24, %d0, 0

# CHECK-INST: or.andn.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xf8,0xf3]
or.andn.t %d15, %d0, 24, %d0, 7

# CHECK-INST: or.andn.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x78,0xfc]
or.andn.t %d15, %d0, 24, %d0, 24

# CHECK-INST: or.andn.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xf8,0xff]
or.andn.t %d15, %d0, 24, %d0, 31

# CHECK-INST: or.andn.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x78,0xf0]
or.andn.t %d15, %d0, 24, %d1, 0

# CHECK-INST: or.andn.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xf8,0xf3]
or.andn.t %d15, %d0, 24, %d1, 7

# CHECK-INST: or.andn.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x78,0xfc]
or.andn.t %d15, %d0, 24, %d1, 24

# CHECK-INST: or.andn.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xf8,0xff]
or.andn.t %d15, %d0, 24, %d1, 31

# CHECK-INST: or.andn.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x78,0xf0]
or.andn.t %d15, %d0, 24, %d14, 0

# CHECK-INST: or.andn.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xf8,0xf3]
or.andn.t %d15, %d0, 24, %d14, 7

# CHECK-INST: or.andn.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x78,0xfc]
or.andn.t %d15, %d0, 24, %d14, 24

# CHECK-INST: or.andn.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xf8,0xff]
or.andn.t %d15, %d0, 24, %d14, 31

# CHECK-INST: or.andn.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x78,0xf0]
or.andn.t %d15, %d0, 24, %d15, 0

# CHECK-INST: or.andn.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xf8,0xf3]
or.andn.t %d15, %d0, 24, %d15, 7

# CHECK-INST: or.andn.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x78,0xfc]
or.andn.t %d15, %d0, 24, %d15, 24

# CHECK-INST: or.andn.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xf8,0xff]
or.andn.t %d15, %d0, 24, %d15, 31

# CHECK-INST: or.andn.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x7f,0xf0]
or.andn.t %d15, %d0, 31, %d0, 0

# CHECK-INST: or.andn.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xff,0xf3]
or.andn.t %d15, %d0, 31, %d0, 7

# CHECK-INST: or.andn.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x7f,0xfc]
or.andn.t %d15, %d0, 31, %d0, 24

# CHECK-INST: or.andn.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xff,0xff]
or.andn.t %d15, %d0, 31, %d0, 31

# CHECK-INST: or.andn.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x7f,0xf0]
or.andn.t %d15, %d0, 31, %d1, 0

# CHECK-INST: or.andn.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xff,0xf3]
or.andn.t %d15, %d0, 31, %d1, 7

# CHECK-INST: or.andn.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x7f,0xfc]
or.andn.t %d15, %d0, 31, %d1, 24

# CHECK-INST: or.andn.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xff,0xff]
or.andn.t %d15, %d0, 31, %d1, 31

# CHECK-INST: or.andn.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x7f,0xf0]
or.andn.t %d15, %d0, 31, %d14, 0

# CHECK-INST: or.andn.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xff,0xf3]
or.andn.t %d15, %d0, 31, %d14, 7

# CHECK-INST: or.andn.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x7f,0xfc]
or.andn.t %d15, %d0, 31, %d14, 24

# CHECK-INST: or.andn.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xff,0xff]
or.andn.t %d15, %d0, 31, %d14, 31

# CHECK-INST: or.andn.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x7f,0xf0]
or.andn.t %d15, %d0, 31, %d15, 0

# CHECK-INST: or.andn.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xff,0xf3]
or.andn.t %d15, %d0, 31, %d15, 7

# CHECK-INST: or.andn.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x7f,0xfc]
or.andn.t %d15, %d0, 31, %d15, 24

# CHECK-INST: or.andn.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xff,0xff]
or.andn.t %d15, %d0, 31, %d15, 31

# CHECK-INST: or.andn.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x60,0xf0]
or.andn.t %d15, %d1, 0, %d0, 0

# CHECK-INST: or.andn.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xe0,0xf3]
or.andn.t %d15, %d1, 0, %d0, 7

# CHECK-INST: or.andn.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x60,0xfc]
or.andn.t %d15, %d1, 0, %d0, 24

# CHECK-INST: or.andn.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xe0,0xff]
or.andn.t %d15, %d1, 0, %d0, 31

# CHECK-INST: or.andn.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x60,0xf0]
or.andn.t %d15, %d1, 0, %d1, 0

# CHECK-INST: or.andn.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xe0,0xf3]
or.andn.t %d15, %d1, 0, %d1, 7

# CHECK-INST: or.andn.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x60,0xfc]
or.andn.t %d15, %d1, 0, %d1, 24

# CHECK-INST: or.andn.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xe0,0xff]
or.andn.t %d15, %d1, 0, %d1, 31

# CHECK-INST: or.andn.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x60,0xf0]
or.andn.t %d15, %d1, 0, %d14, 0

# CHECK-INST: or.andn.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xe0,0xf3]
or.andn.t %d15, %d1, 0, %d14, 7

# CHECK-INST: or.andn.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x60,0xfc]
or.andn.t %d15, %d1, 0, %d14, 24

# CHECK-INST: or.andn.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xe0,0xff]
or.andn.t %d15, %d1, 0, %d14, 31

# CHECK-INST: or.andn.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x60,0xf0]
or.andn.t %d15, %d1, 0, %d15, 0

# CHECK-INST: or.andn.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xe0,0xf3]
or.andn.t %d15, %d1, 0, %d15, 7

# CHECK-INST: or.andn.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x60,0xfc]
or.andn.t %d15, %d1, 0, %d15, 24

# CHECK-INST: or.andn.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xe0,0xff]
or.andn.t %d15, %d1, 0, %d15, 31

# CHECK-INST: or.andn.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x67,0xf0]
or.andn.t %d15, %d1, 7, %d0, 0

# CHECK-INST: or.andn.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xe7,0xf3]
or.andn.t %d15, %d1, 7, %d0, 7

# CHECK-INST: or.andn.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x67,0xfc]
or.andn.t %d15, %d1, 7, %d0, 24

# CHECK-INST: or.andn.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xe7,0xff]
or.andn.t %d15, %d1, 7, %d0, 31

# CHECK-INST: or.andn.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x67,0xf0]
or.andn.t %d15, %d1, 7, %d1, 0

# CHECK-INST: or.andn.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xe7,0xf3]
or.andn.t %d15, %d1, 7, %d1, 7

# CHECK-INST: or.andn.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x67,0xfc]
or.andn.t %d15, %d1, 7, %d1, 24

# CHECK-INST: or.andn.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xe7,0xff]
or.andn.t %d15, %d1, 7, %d1, 31

# CHECK-INST: or.andn.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x67,0xf0]
or.andn.t %d15, %d1, 7, %d14, 0

# CHECK-INST: or.andn.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xe7,0xf3]
or.andn.t %d15, %d1, 7, %d14, 7

# CHECK-INST: or.andn.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x67,0xfc]
or.andn.t %d15, %d1, 7, %d14, 24

# CHECK-INST: or.andn.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xe7,0xff]
or.andn.t %d15, %d1, 7, %d14, 31

# CHECK-INST: or.andn.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x67,0xf0]
or.andn.t %d15, %d1, 7, %d15, 0

# CHECK-INST: or.andn.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xe7,0xf3]
or.andn.t %d15, %d1, 7, %d15, 7

# CHECK-INST: or.andn.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x67,0xfc]
or.andn.t %d15, %d1, 7, %d15, 24

# CHECK-INST: or.andn.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xe7,0xff]
or.andn.t %d15, %d1, 7, %d15, 31

# CHECK-INST: or.andn.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x78,0xf0]
or.andn.t %d15, %d1, 24, %d0, 0

# CHECK-INST: or.andn.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xf8,0xf3]
or.andn.t %d15, %d1, 24, %d0, 7

# CHECK-INST: or.andn.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x78,0xfc]
or.andn.t %d15, %d1, 24, %d0, 24

# CHECK-INST: or.andn.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xf8,0xff]
or.andn.t %d15, %d1, 24, %d0, 31

# CHECK-INST: or.andn.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x78,0xf0]
or.andn.t %d15, %d1, 24, %d1, 0

# CHECK-INST: or.andn.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xf8,0xf3]
or.andn.t %d15, %d1, 24, %d1, 7

# CHECK-INST: or.andn.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x78,0xfc]
or.andn.t %d15, %d1, 24, %d1, 24

# CHECK-INST: or.andn.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xf8,0xff]
or.andn.t %d15, %d1, 24, %d1, 31

# CHECK-INST: or.andn.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x78,0xf0]
or.andn.t %d15, %d1, 24, %d14, 0

# CHECK-INST: or.andn.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xf8,0xf3]
or.andn.t %d15, %d1, 24, %d14, 7

# CHECK-INST: or.andn.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x78,0xfc]
or.andn.t %d15, %d1, 24, %d14, 24

# CHECK-INST: or.andn.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xf8,0xff]
or.andn.t %d15, %d1, 24, %d14, 31

# CHECK-INST: or.andn.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x78,0xf0]
or.andn.t %d15, %d1, 24, %d15, 0

# CHECK-INST: or.andn.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xf8,0xf3]
or.andn.t %d15, %d1, 24, %d15, 7

# CHECK-INST: or.andn.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x78,0xfc]
or.andn.t %d15, %d1, 24, %d15, 24

# CHECK-INST: or.andn.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xf8,0xff]
or.andn.t %d15, %d1, 24, %d15, 31

# CHECK-INST: or.andn.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x7f,0xf0]
or.andn.t %d15, %d1, 31, %d0, 0

# CHECK-INST: or.andn.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xff,0xf3]
or.andn.t %d15, %d1, 31, %d0, 7

# CHECK-INST: or.andn.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x7f,0xfc]
or.andn.t %d15, %d1, 31, %d0, 24

# CHECK-INST: or.andn.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xff,0xff]
or.andn.t %d15, %d1, 31, %d0, 31

# CHECK-INST: or.andn.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x7f,0xf0]
or.andn.t %d15, %d1, 31, %d1, 0

# CHECK-INST: or.andn.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xff,0xf3]
or.andn.t %d15, %d1, 31, %d1, 7

# CHECK-INST: or.andn.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x7f,0xfc]
or.andn.t %d15, %d1, 31, %d1, 24

# CHECK-INST: or.andn.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xff,0xff]
or.andn.t %d15, %d1, 31, %d1, 31

# CHECK-INST: or.andn.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x7f,0xf0]
or.andn.t %d15, %d1, 31, %d14, 0

# CHECK-INST: or.andn.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xff,0xf3]
or.andn.t %d15, %d1, 31, %d14, 7

# CHECK-INST: or.andn.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x7f,0xfc]
or.andn.t %d15, %d1, 31, %d14, 24

# CHECK-INST: or.andn.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xff,0xff]
or.andn.t %d15, %d1, 31, %d14, 31

# CHECK-INST: or.andn.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x7f,0xf0]
or.andn.t %d15, %d1, 31, %d15, 0

# CHECK-INST: or.andn.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xff,0xf3]
or.andn.t %d15, %d1, 31, %d15, 7

# CHECK-INST: or.andn.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x7f,0xfc]
or.andn.t %d15, %d1, 31, %d15, 24

# CHECK-INST: or.andn.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xff,0xff]
or.andn.t %d15, %d1, 31, %d15, 31

# CHECK-INST: or.andn.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x60,0xf0]
or.andn.t %d15, %d14, 0, %d0, 0

# CHECK-INST: or.andn.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xe0,0xf3]
or.andn.t %d15, %d14, 0, %d0, 7

# CHECK-INST: or.andn.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x60,0xfc]
or.andn.t %d15, %d14, 0, %d0, 24

# CHECK-INST: or.andn.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xe0,0xff]
or.andn.t %d15, %d14, 0, %d0, 31

# CHECK-INST: or.andn.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x60,0xf0]
or.andn.t %d15, %d14, 0, %d1, 0

# CHECK-INST: or.andn.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xe0,0xf3]
or.andn.t %d15, %d14, 0, %d1, 7

# CHECK-INST: or.andn.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x60,0xfc]
or.andn.t %d15, %d14, 0, %d1, 24

# CHECK-INST: or.andn.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xe0,0xff]
or.andn.t %d15, %d14, 0, %d1, 31

# CHECK-INST: or.andn.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x60,0xf0]
or.andn.t %d15, %d14, 0, %d14, 0

# CHECK-INST: or.andn.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xe0,0xf3]
or.andn.t %d15, %d14, 0, %d14, 7

# CHECK-INST: or.andn.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x60,0xfc]
or.andn.t %d15, %d14, 0, %d14, 24

# CHECK-INST: or.andn.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xe0,0xff]
or.andn.t %d15, %d14, 0, %d14, 31

# CHECK-INST: or.andn.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x60,0xf0]
or.andn.t %d15, %d14, 0, %d15, 0

# CHECK-INST: or.andn.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xe0,0xf3]
or.andn.t %d15, %d14, 0, %d15, 7

# CHECK-INST: or.andn.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x60,0xfc]
or.andn.t %d15, %d14, 0, %d15, 24

# CHECK-INST: or.andn.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xe0,0xff]
or.andn.t %d15, %d14, 0, %d15, 31

# CHECK-INST: or.andn.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x67,0xf0]
or.andn.t %d15, %d14, 7, %d0, 0

# CHECK-INST: or.andn.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xe7,0xf3]
or.andn.t %d15, %d14, 7, %d0, 7

# CHECK-INST: or.andn.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x67,0xfc]
or.andn.t %d15, %d14, 7, %d0, 24

# CHECK-INST: or.andn.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xe7,0xff]
or.andn.t %d15, %d14, 7, %d0, 31

# CHECK-INST: or.andn.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x67,0xf0]
or.andn.t %d15, %d14, 7, %d1, 0

# CHECK-INST: or.andn.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xe7,0xf3]
or.andn.t %d15, %d14, 7, %d1, 7

# CHECK-INST: or.andn.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x67,0xfc]
or.andn.t %d15, %d14, 7, %d1, 24

# CHECK-INST: or.andn.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xe7,0xff]
or.andn.t %d15, %d14, 7, %d1, 31

# CHECK-INST: or.andn.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x67,0xf0]
or.andn.t %d15, %d14, 7, %d14, 0

# CHECK-INST: or.andn.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xe7,0xf3]
or.andn.t %d15, %d14, 7, %d14, 7

# CHECK-INST: or.andn.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x67,0xfc]
or.andn.t %d15, %d14, 7, %d14, 24

# CHECK-INST: or.andn.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xe7,0xff]
or.andn.t %d15, %d14, 7, %d14, 31

# CHECK-INST: or.andn.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x67,0xf0]
or.andn.t %d15, %d14, 7, %d15, 0

# CHECK-INST: or.andn.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xe7,0xf3]
or.andn.t %d15, %d14, 7, %d15, 7

# CHECK-INST: or.andn.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x67,0xfc]
or.andn.t %d15, %d14, 7, %d15, 24

# CHECK-INST: or.andn.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xe7,0xff]
or.andn.t %d15, %d14, 7, %d15, 31

# CHECK-INST: or.andn.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x78,0xf0]
or.andn.t %d15, %d14, 24, %d0, 0

# CHECK-INST: or.andn.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xf8,0xf3]
or.andn.t %d15, %d14, 24, %d0, 7

# CHECK-INST: or.andn.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x78,0xfc]
or.andn.t %d15, %d14, 24, %d0, 24

# CHECK-INST: or.andn.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xf8,0xff]
or.andn.t %d15, %d14, 24, %d0, 31

# CHECK-INST: or.andn.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x78,0xf0]
or.andn.t %d15, %d14, 24, %d1, 0

# CHECK-INST: or.andn.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xf8,0xf3]
or.andn.t %d15, %d14, 24, %d1, 7

# CHECK-INST: or.andn.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x78,0xfc]
or.andn.t %d15, %d14, 24, %d1, 24

# CHECK-INST: or.andn.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xf8,0xff]
or.andn.t %d15, %d14, 24, %d1, 31

# CHECK-INST: or.andn.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x78,0xf0]
or.andn.t %d15, %d14, 24, %d14, 0

# CHECK-INST: or.andn.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xf8,0xf3]
or.andn.t %d15, %d14, 24, %d14, 7

# CHECK-INST: or.andn.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x78,0xfc]
or.andn.t %d15, %d14, 24, %d14, 24

# CHECK-INST: or.andn.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xf8,0xff]
or.andn.t %d15, %d14, 24, %d14, 31

# CHECK-INST: or.andn.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x78,0xf0]
or.andn.t %d15, %d14, 24, %d15, 0

# CHECK-INST: or.andn.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xf8,0xf3]
or.andn.t %d15, %d14, 24, %d15, 7

# CHECK-INST: or.andn.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x78,0xfc]
or.andn.t %d15, %d14, 24, %d15, 24

# CHECK-INST: or.andn.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xf8,0xff]
or.andn.t %d15, %d14, 24, %d15, 31

# CHECK-INST: or.andn.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x7f,0xf0]
or.andn.t %d15, %d14, 31, %d0, 0

# CHECK-INST: or.andn.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xff,0xf3]
or.andn.t %d15, %d14, 31, %d0, 7

# CHECK-INST: or.andn.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x7f,0xfc]
or.andn.t %d15, %d14, 31, %d0, 24

# CHECK-INST: or.andn.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xff,0xff]
or.andn.t %d15, %d14, 31, %d0, 31

# CHECK-INST: or.andn.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x7f,0xf0]
or.andn.t %d15, %d14, 31, %d1, 0

# CHECK-INST: or.andn.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xff,0xf3]
or.andn.t %d15, %d14, 31, %d1, 7

# CHECK-INST: or.andn.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x7f,0xfc]
or.andn.t %d15, %d14, 31, %d1, 24

# CHECK-INST: or.andn.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xff,0xff]
or.andn.t %d15, %d14, 31, %d1, 31

# CHECK-INST: or.andn.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x7f,0xf0]
or.andn.t %d15, %d14, 31, %d14, 0

# CHECK-INST: or.andn.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xff,0xf3]
or.andn.t %d15, %d14, 31, %d14, 7

# CHECK-INST: or.andn.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x7f,0xfc]
or.andn.t %d15, %d14, 31, %d14, 24

# CHECK-INST: or.andn.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xff,0xff]
or.andn.t %d15, %d14, 31, %d14, 31

# CHECK-INST: or.andn.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x7f,0xf0]
or.andn.t %d15, %d14, 31, %d15, 0

# CHECK-INST: or.andn.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xff,0xf3]
or.andn.t %d15, %d14, 31, %d15, 7

# CHECK-INST: or.andn.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x7f,0xfc]
or.andn.t %d15, %d14, 31, %d15, 24

# CHECK-INST: or.andn.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xff,0xff]
or.andn.t %d15, %d14, 31, %d15, 31

# CHECK-INST: or.andn.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x60,0xf0]
or.andn.t %d15, %d15, 0, %d0, 0

# CHECK-INST: or.andn.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xe0,0xf3]
or.andn.t %d15, %d15, 0, %d0, 7

# CHECK-INST: or.andn.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x60,0xfc]
or.andn.t %d15, %d15, 0, %d0, 24

# CHECK-INST: or.andn.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xe0,0xff]
or.andn.t %d15, %d15, 0, %d0, 31

# CHECK-INST: or.andn.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x60,0xf0]
or.andn.t %d15, %d15, 0, %d1, 0

# CHECK-INST: or.andn.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xe0,0xf3]
or.andn.t %d15, %d15, 0, %d1, 7

# CHECK-INST: or.andn.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x60,0xfc]
or.andn.t %d15, %d15, 0, %d1, 24

# CHECK-INST: or.andn.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xe0,0xff]
or.andn.t %d15, %d15, 0, %d1, 31

# CHECK-INST: or.andn.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x60,0xf0]
or.andn.t %d15, %d15, 0, %d14, 0

# CHECK-INST: or.andn.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xe0,0xf3]
or.andn.t %d15, %d15, 0, %d14, 7

# CHECK-INST: or.andn.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x60,0xfc]
or.andn.t %d15, %d15, 0, %d14, 24

# CHECK-INST: or.andn.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xe0,0xff]
or.andn.t %d15, %d15, 0, %d14, 31

# CHECK-INST: or.andn.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x60,0xf0]
or.andn.t %d15, %d15, 0, %d15, 0

# CHECK-INST: or.andn.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xe0,0xf3]
or.andn.t %d15, %d15, 0, %d15, 7

# CHECK-INST: or.andn.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x60,0xfc]
or.andn.t %d15, %d15, 0, %d15, 24

# CHECK-INST: or.andn.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xe0,0xff]
or.andn.t %d15, %d15, 0, %d15, 31

# CHECK-INST: or.andn.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x67,0xf0]
or.andn.t %d15, %d15, 7, %d0, 0

# CHECK-INST: or.andn.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xe7,0xf3]
or.andn.t %d15, %d15, 7, %d0, 7

# CHECK-INST: or.andn.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x67,0xfc]
or.andn.t %d15, %d15, 7, %d0, 24

# CHECK-INST: or.andn.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xe7,0xff]
or.andn.t %d15, %d15, 7, %d0, 31

# CHECK-INST: or.andn.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x67,0xf0]
or.andn.t %d15, %d15, 7, %d1, 0

# CHECK-INST: or.andn.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xe7,0xf3]
or.andn.t %d15, %d15, 7, %d1, 7

# CHECK-INST: or.andn.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x67,0xfc]
or.andn.t %d15, %d15, 7, %d1, 24

# CHECK-INST: or.andn.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xe7,0xff]
or.andn.t %d15, %d15, 7, %d1, 31

# CHECK-INST: or.andn.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x67,0xf0]
or.andn.t %d15, %d15, 7, %d14, 0

# CHECK-INST: or.andn.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xe7,0xf3]
or.andn.t %d15, %d15, 7, %d14, 7

# CHECK-INST: or.andn.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x67,0xfc]
or.andn.t %d15, %d15, 7, %d14, 24

# CHECK-INST: or.andn.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xe7,0xff]
or.andn.t %d15, %d15, 7, %d14, 31

# CHECK-INST: or.andn.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x67,0xf0]
or.andn.t %d15, %d15, 7, %d15, 0

# CHECK-INST: or.andn.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xe7,0xf3]
or.andn.t %d15, %d15, 7, %d15, 7

# CHECK-INST: or.andn.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x67,0xfc]
or.andn.t %d15, %d15, 7, %d15, 24

# CHECK-INST: or.andn.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xe7,0xff]
or.andn.t %d15, %d15, 7, %d15, 31

# CHECK-INST: or.andn.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x78,0xf0]
or.andn.t %d15, %d15, 24, %d0, 0

# CHECK-INST: or.andn.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xf8,0xf3]
or.andn.t %d15, %d15, 24, %d0, 7

# CHECK-INST: or.andn.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x78,0xfc]
or.andn.t %d15, %d15, 24, %d0, 24

# CHECK-INST: or.andn.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xf8,0xff]
or.andn.t %d15, %d15, 24, %d0, 31

# CHECK-INST: or.andn.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x78,0xf0]
or.andn.t %d15, %d15, 24, %d1, 0

# CHECK-INST: or.andn.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xf8,0xf3]
or.andn.t %d15, %d15, 24, %d1, 7

# CHECK-INST: or.andn.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x78,0xfc]
or.andn.t %d15, %d15, 24, %d1, 24

# CHECK-INST: or.andn.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xf8,0xff]
or.andn.t %d15, %d15, 24, %d1, 31

# CHECK-INST: or.andn.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x78,0xf0]
or.andn.t %d15, %d15, 24, %d14, 0

# CHECK-INST: or.andn.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xf8,0xf3]
or.andn.t %d15, %d15, 24, %d14, 7

# CHECK-INST: or.andn.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x78,0xfc]
or.andn.t %d15, %d15, 24, %d14, 24

# CHECK-INST: or.andn.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xf8,0xff]
or.andn.t %d15, %d15, 24, %d14, 31

# CHECK-INST: or.andn.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x78,0xf0]
or.andn.t %d15, %d15, 24, %d15, 0

# CHECK-INST: or.andn.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xf8,0xf3]
or.andn.t %d15, %d15, 24, %d15, 7

# CHECK-INST: or.andn.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x78,0xfc]
or.andn.t %d15, %d15, 24, %d15, 24

# CHECK-INST: or.andn.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xf8,0xff]
or.andn.t %d15, %d15, 24, %d15, 31

# CHECK-INST: or.andn.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x7f,0xf0]
or.andn.t %d15, %d15, 31, %d0, 0

# CHECK-INST: or.andn.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xff,0xf3]
or.andn.t %d15, %d15, 31, %d0, 7

# CHECK-INST: or.andn.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x7f,0xfc]
or.andn.t %d15, %d15, 31, %d0, 24

# CHECK-INST: or.andn.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xff,0xff]
or.andn.t %d15, %d15, 31, %d0, 31

# CHECK-INST: or.andn.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x7f,0xf0]
or.andn.t %d15, %d15, 31, %d1, 0

# CHECK-INST: or.andn.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xff,0xf3]
or.andn.t %d15, %d15, 31, %d1, 7

# CHECK-INST: or.andn.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x7f,0xfc]
or.andn.t %d15, %d15, 31, %d1, 24

# CHECK-INST: or.andn.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xff,0xff]
or.andn.t %d15, %d15, 31, %d1, 31

# CHECK-INST: or.andn.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x7f,0xf0]
or.andn.t %d15, %d15, 31, %d14, 0

# CHECK-INST: or.andn.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xff,0xf3]
or.andn.t %d15, %d15, 31, %d14, 7

# CHECK-INST: or.andn.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x7f,0xfc]
or.andn.t %d15, %d15, 31, %d14, 24

# CHECK-INST: or.andn.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xff,0xff]
or.andn.t %d15, %d15, 31, %d14, 31

# CHECK-INST: or.andn.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x7f,0xf0]
or.andn.t %d15, %d15, 31, %d15, 0

# CHECK-INST: or.andn.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xff,0xf3]
or.andn.t %d15, %d15, 31, %d15, 7

# CHECK-INST: or.andn.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x7f,0xfc]
or.andn.t %d15, %d15, 31, %d15, 24

# CHECK-INST: or.andn.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xff,0xff]
or.andn.t %d15, %d15, 31, %d15, 31

# CHECK-INST: or.nor.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x40,0x00]
or.nor.t %d0, %d0, 0, %d0, 0

# CHECK-INST: or.nor.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xc0,0x03]
or.nor.t %d0, %d0, 0, %d0, 7

# CHECK-INST: or.nor.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x40,0x0c]
or.nor.t %d0, %d0, 0, %d0, 24

# CHECK-INST: or.nor.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xc0,0x0f]
or.nor.t %d0, %d0, 0, %d0, 31

# CHECK-INST: or.nor.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x40,0x00]
or.nor.t %d0, %d0, 0, %d1, 0

# CHECK-INST: or.nor.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xc0,0x03]
or.nor.t %d0, %d0, 0, %d1, 7

# CHECK-INST: or.nor.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x40,0x0c]
or.nor.t %d0, %d0, 0, %d1, 24

# CHECK-INST: or.nor.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xc0,0x0f]
or.nor.t %d0, %d0, 0, %d1, 31

# CHECK-INST: or.nor.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x40,0x00]
or.nor.t %d0, %d0, 0, %d14, 0

# CHECK-INST: or.nor.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xc0,0x03]
or.nor.t %d0, %d0, 0, %d14, 7

# CHECK-INST: or.nor.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x40,0x0c]
or.nor.t %d0, %d0, 0, %d14, 24

# CHECK-INST: or.nor.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xc0,0x0f]
or.nor.t %d0, %d0, 0, %d14, 31

# CHECK-INST: or.nor.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x40,0x00]
or.nor.t %d0, %d0, 0, %d15, 0

# CHECK-INST: or.nor.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xc0,0x03]
or.nor.t %d0, %d0, 0, %d15, 7

# CHECK-INST: or.nor.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x40,0x0c]
or.nor.t %d0, %d0, 0, %d15, 24

# CHECK-INST: or.nor.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xc0,0x0f]
or.nor.t %d0, %d0, 0, %d15, 31

# CHECK-INST: or.nor.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x47,0x00]
or.nor.t %d0, %d0, 7, %d0, 0

# CHECK-INST: or.nor.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xc7,0x03]
or.nor.t %d0, %d0, 7, %d0, 7

# CHECK-INST: or.nor.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x47,0x0c]
or.nor.t %d0, %d0, 7, %d0, 24

# CHECK-INST: or.nor.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xc7,0x0f]
or.nor.t %d0, %d0, 7, %d0, 31

# CHECK-INST: or.nor.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x47,0x00]
or.nor.t %d0, %d0, 7, %d1, 0

# CHECK-INST: or.nor.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xc7,0x03]
or.nor.t %d0, %d0, 7, %d1, 7

# CHECK-INST: or.nor.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x47,0x0c]
or.nor.t %d0, %d0, 7, %d1, 24

# CHECK-INST: or.nor.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xc7,0x0f]
or.nor.t %d0, %d0, 7, %d1, 31

# CHECK-INST: or.nor.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x47,0x00]
or.nor.t %d0, %d0, 7, %d14, 0

# CHECK-INST: or.nor.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xc7,0x03]
or.nor.t %d0, %d0, 7, %d14, 7

# CHECK-INST: or.nor.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x47,0x0c]
or.nor.t %d0, %d0, 7, %d14, 24

# CHECK-INST: or.nor.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xc7,0x0f]
or.nor.t %d0, %d0, 7, %d14, 31

# CHECK-INST: or.nor.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x47,0x00]
or.nor.t %d0, %d0, 7, %d15, 0

# CHECK-INST: or.nor.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xc7,0x03]
or.nor.t %d0, %d0, 7, %d15, 7

# CHECK-INST: or.nor.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x47,0x0c]
or.nor.t %d0, %d0, 7, %d15, 24

# CHECK-INST: or.nor.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xc7,0x0f]
or.nor.t %d0, %d0, 7, %d15, 31

# CHECK-INST: or.nor.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x58,0x00]
or.nor.t %d0, %d0, 24, %d0, 0

# CHECK-INST: or.nor.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xd8,0x03]
or.nor.t %d0, %d0, 24, %d0, 7

# CHECK-INST: or.nor.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x58,0x0c]
or.nor.t %d0, %d0, 24, %d0, 24

# CHECK-INST: or.nor.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xd8,0x0f]
or.nor.t %d0, %d0, 24, %d0, 31

# CHECK-INST: or.nor.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x58,0x00]
or.nor.t %d0, %d0, 24, %d1, 0

# CHECK-INST: or.nor.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xd8,0x03]
or.nor.t %d0, %d0, 24, %d1, 7

# CHECK-INST: or.nor.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x58,0x0c]
or.nor.t %d0, %d0, 24, %d1, 24

# CHECK-INST: or.nor.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xd8,0x0f]
or.nor.t %d0, %d0, 24, %d1, 31

# CHECK-INST: or.nor.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x58,0x00]
or.nor.t %d0, %d0, 24, %d14, 0

# CHECK-INST: or.nor.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xd8,0x03]
or.nor.t %d0, %d0, 24, %d14, 7

# CHECK-INST: or.nor.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x58,0x0c]
or.nor.t %d0, %d0, 24, %d14, 24

# CHECK-INST: or.nor.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xd8,0x0f]
or.nor.t %d0, %d0, 24, %d14, 31

# CHECK-INST: or.nor.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x58,0x00]
or.nor.t %d0, %d0, 24, %d15, 0

# CHECK-INST: or.nor.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xd8,0x03]
or.nor.t %d0, %d0, 24, %d15, 7

# CHECK-INST: or.nor.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x58,0x0c]
or.nor.t %d0, %d0, 24, %d15, 24

# CHECK-INST: or.nor.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xd8,0x0f]
or.nor.t %d0, %d0, 24, %d15, 31

# CHECK-INST: or.nor.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x5f,0x00]
or.nor.t %d0, %d0, 31, %d0, 0

# CHECK-INST: or.nor.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xdf,0x03]
or.nor.t %d0, %d0, 31, %d0, 7

# CHECK-INST: or.nor.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x5f,0x0c]
or.nor.t %d0, %d0, 31, %d0, 24

# CHECK-INST: or.nor.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xdf,0x0f]
or.nor.t %d0, %d0, 31, %d0, 31

# CHECK-INST: or.nor.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x5f,0x00]
or.nor.t %d0, %d0, 31, %d1, 0

# CHECK-INST: or.nor.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xdf,0x03]
or.nor.t %d0, %d0, 31, %d1, 7

# CHECK-INST: or.nor.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x5f,0x0c]
or.nor.t %d0, %d0, 31, %d1, 24

# CHECK-INST: or.nor.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xdf,0x0f]
or.nor.t %d0, %d0, 31, %d1, 31

# CHECK-INST: or.nor.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x5f,0x00]
or.nor.t %d0, %d0, 31, %d14, 0

# CHECK-INST: or.nor.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xdf,0x03]
or.nor.t %d0, %d0, 31, %d14, 7

# CHECK-INST: or.nor.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x5f,0x0c]
or.nor.t %d0, %d0, 31, %d14, 24

# CHECK-INST: or.nor.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xdf,0x0f]
or.nor.t %d0, %d0, 31, %d14, 31

# CHECK-INST: or.nor.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x5f,0x00]
or.nor.t %d0, %d0, 31, %d15, 0

# CHECK-INST: or.nor.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xdf,0x03]
or.nor.t %d0, %d0, 31, %d15, 7

# CHECK-INST: or.nor.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x5f,0x0c]
or.nor.t %d0, %d0, 31, %d15, 24

# CHECK-INST: or.nor.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xdf,0x0f]
or.nor.t %d0, %d0, 31, %d15, 31

# CHECK-INST: or.nor.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x40,0x00]
or.nor.t %d0, %d1, 0, %d0, 0

# CHECK-INST: or.nor.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xc0,0x03]
or.nor.t %d0, %d1, 0, %d0, 7

# CHECK-INST: or.nor.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x40,0x0c]
or.nor.t %d0, %d1, 0, %d0, 24

# CHECK-INST: or.nor.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xc0,0x0f]
or.nor.t %d0, %d1, 0, %d0, 31

# CHECK-INST: or.nor.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x40,0x00]
or.nor.t %d0, %d1, 0, %d1, 0

# CHECK-INST: or.nor.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xc0,0x03]
or.nor.t %d0, %d1, 0, %d1, 7

# CHECK-INST: or.nor.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x40,0x0c]
or.nor.t %d0, %d1, 0, %d1, 24

# CHECK-INST: or.nor.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xc0,0x0f]
or.nor.t %d0, %d1, 0, %d1, 31

# CHECK-INST: or.nor.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x40,0x00]
or.nor.t %d0, %d1, 0, %d14, 0

# CHECK-INST: or.nor.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xc0,0x03]
or.nor.t %d0, %d1, 0, %d14, 7

# CHECK-INST: or.nor.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x40,0x0c]
or.nor.t %d0, %d1, 0, %d14, 24

# CHECK-INST: or.nor.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xc0,0x0f]
or.nor.t %d0, %d1, 0, %d14, 31

# CHECK-INST: or.nor.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x40,0x00]
or.nor.t %d0, %d1, 0, %d15, 0

# CHECK-INST: or.nor.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xc0,0x03]
or.nor.t %d0, %d1, 0, %d15, 7

# CHECK-INST: or.nor.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x40,0x0c]
or.nor.t %d0, %d1, 0, %d15, 24

# CHECK-INST: or.nor.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xc0,0x0f]
or.nor.t %d0, %d1, 0, %d15, 31

# CHECK-INST: or.nor.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x47,0x00]
or.nor.t %d0, %d1, 7, %d0, 0

# CHECK-INST: or.nor.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xc7,0x03]
or.nor.t %d0, %d1, 7, %d0, 7

# CHECK-INST: or.nor.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x47,0x0c]
or.nor.t %d0, %d1, 7, %d0, 24

# CHECK-INST: or.nor.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xc7,0x0f]
or.nor.t %d0, %d1, 7, %d0, 31

# CHECK-INST: or.nor.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x47,0x00]
or.nor.t %d0, %d1, 7, %d1, 0

# CHECK-INST: or.nor.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xc7,0x03]
or.nor.t %d0, %d1, 7, %d1, 7

# CHECK-INST: or.nor.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x47,0x0c]
or.nor.t %d0, %d1, 7, %d1, 24

# CHECK-INST: or.nor.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xc7,0x0f]
or.nor.t %d0, %d1, 7, %d1, 31

# CHECK-INST: or.nor.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x47,0x00]
or.nor.t %d0, %d1, 7, %d14, 0

# CHECK-INST: or.nor.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xc7,0x03]
or.nor.t %d0, %d1, 7, %d14, 7

# CHECK-INST: or.nor.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x47,0x0c]
or.nor.t %d0, %d1, 7, %d14, 24

# CHECK-INST: or.nor.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xc7,0x0f]
or.nor.t %d0, %d1, 7, %d14, 31

# CHECK-INST: or.nor.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x47,0x00]
or.nor.t %d0, %d1, 7, %d15, 0

# CHECK-INST: or.nor.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xc7,0x03]
or.nor.t %d0, %d1, 7, %d15, 7

# CHECK-INST: or.nor.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x47,0x0c]
or.nor.t %d0, %d1, 7, %d15, 24

# CHECK-INST: or.nor.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xc7,0x0f]
or.nor.t %d0, %d1, 7, %d15, 31

# CHECK-INST: or.nor.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x58,0x00]
or.nor.t %d0, %d1, 24, %d0, 0

# CHECK-INST: or.nor.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xd8,0x03]
or.nor.t %d0, %d1, 24, %d0, 7

# CHECK-INST: or.nor.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x58,0x0c]
or.nor.t %d0, %d1, 24, %d0, 24

# CHECK-INST: or.nor.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xd8,0x0f]
or.nor.t %d0, %d1, 24, %d0, 31

# CHECK-INST: or.nor.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x58,0x00]
or.nor.t %d0, %d1, 24, %d1, 0

# CHECK-INST: or.nor.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xd8,0x03]
or.nor.t %d0, %d1, 24, %d1, 7

# CHECK-INST: or.nor.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x58,0x0c]
or.nor.t %d0, %d1, 24, %d1, 24

# CHECK-INST: or.nor.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xd8,0x0f]
or.nor.t %d0, %d1, 24, %d1, 31

# CHECK-INST: or.nor.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x58,0x00]
or.nor.t %d0, %d1, 24, %d14, 0

# CHECK-INST: or.nor.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xd8,0x03]
or.nor.t %d0, %d1, 24, %d14, 7

# CHECK-INST: or.nor.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x58,0x0c]
or.nor.t %d0, %d1, 24, %d14, 24

# CHECK-INST: or.nor.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xd8,0x0f]
or.nor.t %d0, %d1, 24, %d14, 31

# CHECK-INST: or.nor.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x58,0x00]
or.nor.t %d0, %d1, 24, %d15, 0

# CHECK-INST: or.nor.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xd8,0x03]
or.nor.t %d0, %d1, 24, %d15, 7

# CHECK-INST: or.nor.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x58,0x0c]
or.nor.t %d0, %d1, 24, %d15, 24

# CHECK-INST: or.nor.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xd8,0x0f]
or.nor.t %d0, %d1, 24, %d15, 31

# CHECK-INST: or.nor.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x5f,0x00]
or.nor.t %d0, %d1, 31, %d0, 0

# CHECK-INST: or.nor.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xdf,0x03]
or.nor.t %d0, %d1, 31, %d0, 7

# CHECK-INST: or.nor.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x5f,0x0c]
or.nor.t %d0, %d1, 31, %d0, 24

# CHECK-INST: or.nor.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xdf,0x0f]
or.nor.t %d0, %d1, 31, %d0, 31

# CHECK-INST: or.nor.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x5f,0x00]
or.nor.t %d0, %d1, 31, %d1, 0

# CHECK-INST: or.nor.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xdf,0x03]
or.nor.t %d0, %d1, 31, %d1, 7

# CHECK-INST: or.nor.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x5f,0x0c]
or.nor.t %d0, %d1, 31, %d1, 24

# CHECK-INST: or.nor.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xdf,0x0f]
or.nor.t %d0, %d1, 31, %d1, 31

# CHECK-INST: or.nor.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x5f,0x00]
or.nor.t %d0, %d1, 31, %d14, 0

# CHECK-INST: or.nor.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xdf,0x03]
or.nor.t %d0, %d1, 31, %d14, 7

# CHECK-INST: or.nor.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x5f,0x0c]
or.nor.t %d0, %d1, 31, %d14, 24

# CHECK-INST: or.nor.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xdf,0x0f]
or.nor.t %d0, %d1, 31, %d14, 31

# CHECK-INST: or.nor.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x5f,0x00]
or.nor.t %d0, %d1, 31, %d15, 0

# CHECK-INST: or.nor.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xdf,0x03]
or.nor.t %d0, %d1, 31, %d15, 7

# CHECK-INST: or.nor.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x5f,0x0c]
or.nor.t %d0, %d1, 31, %d15, 24

# CHECK-INST: or.nor.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xdf,0x0f]
or.nor.t %d0, %d1, 31, %d15, 31

# CHECK-INST: or.nor.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x40,0x00]
or.nor.t %d0, %d14, 0, %d0, 0

# CHECK-INST: or.nor.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xc0,0x03]
or.nor.t %d0, %d14, 0, %d0, 7

# CHECK-INST: or.nor.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x40,0x0c]
or.nor.t %d0, %d14, 0, %d0, 24

# CHECK-INST: or.nor.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xc0,0x0f]
or.nor.t %d0, %d14, 0, %d0, 31

# CHECK-INST: or.nor.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x40,0x00]
or.nor.t %d0, %d14, 0, %d1, 0

# CHECK-INST: or.nor.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xc0,0x03]
or.nor.t %d0, %d14, 0, %d1, 7

# CHECK-INST: or.nor.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x40,0x0c]
or.nor.t %d0, %d14, 0, %d1, 24

# CHECK-INST: or.nor.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xc0,0x0f]
or.nor.t %d0, %d14, 0, %d1, 31

# CHECK-INST: or.nor.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x40,0x00]
or.nor.t %d0, %d14, 0, %d14, 0

# CHECK-INST: or.nor.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xc0,0x03]
or.nor.t %d0, %d14, 0, %d14, 7

# CHECK-INST: or.nor.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x40,0x0c]
or.nor.t %d0, %d14, 0, %d14, 24

# CHECK-INST: or.nor.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xc0,0x0f]
or.nor.t %d0, %d14, 0, %d14, 31

# CHECK-INST: or.nor.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x40,0x00]
or.nor.t %d0, %d14, 0, %d15, 0

# CHECK-INST: or.nor.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xc0,0x03]
or.nor.t %d0, %d14, 0, %d15, 7

# CHECK-INST: or.nor.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x40,0x0c]
or.nor.t %d0, %d14, 0, %d15, 24

# CHECK-INST: or.nor.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xc0,0x0f]
or.nor.t %d0, %d14, 0, %d15, 31

# CHECK-INST: or.nor.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x47,0x00]
or.nor.t %d0, %d14, 7, %d0, 0

# CHECK-INST: or.nor.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xc7,0x03]
or.nor.t %d0, %d14, 7, %d0, 7

# CHECK-INST: or.nor.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x47,0x0c]
or.nor.t %d0, %d14, 7, %d0, 24

# CHECK-INST: or.nor.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xc7,0x0f]
or.nor.t %d0, %d14, 7, %d0, 31

# CHECK-INST: or.nor.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x47,0x00]
or.nor.t %d0, %d14, 7, %d1, 0

# CHECK-INST: or.nor.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xc7,0x03]
or.nor.t %d0, %d14, 7, %d1, 7

# CHECK-INST: or.nor.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x47,0x0c]
or.nor.t %d0, %d14, 7, %d1, 24

# CHECK-INST: or.nor.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xc7,0x0f]
or.nor.t %d0, %d14, 7, %d1, 31

# CHECK-INST: or.nor.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x47,0x00]
or.nor.t %d0, %d14, 7, %d14, 0

# CHECK-INST: or.nor.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xc7,0x03]
or.nor.t %d0, %d14, 7, %d14, 7

# CHECK-INST: or.nor.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x47,0x0c]
or.nor.t %d0, %d14, 7, %d14, 24

# CHECK-INST: or.nor.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xc7,0x0f]
or.nor.t %d0, %d14, 7, %d14, 31

# CHECK-INST: or.nor.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x47,0x00]
or.nor.t %d0, %d14, 7, %d15, 0

# CHECK-INST: or.nor.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xc7,0x03]
or.nor.t %d0, %d14, 7, %d15, 7

# CHECK-INST: or.nor.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x47,0x0c]
or.nor.t %d0, %d14, 7, %d15, 24

# CHECK-INST: or.nor.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xc7,0x0f]
or.nor.t %d0, %d14, 7, %d15, 31

# CHECK-INST: or.nor.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x58,0x00]
or.nor.t %d0, %d14, 24, %d0, 0

# CHECK-INST: or.nor.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xd8,0x03]
or.nor.t %d0, %d14, 24, %d0, 7

# CHECK-INST: or.nor.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x58,0x0c]
or.nor.t %d0, %d14, 24, %d0, 24

# CHECK-INST: or.nor.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xd8,0x0f]
or.nor.t %d0, %d14, 24, %d0, 31

# CHECK-INST: or.nor.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x58,0x00]
or.nor.t %d0, %d14, 24, %d1, 0

# CHECK-INST: or.nor.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xd8,0x03]
or.nor.t %d0, %d14, 24, %d1, 7

# CHECK-INST: or.nor.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x58,0x0c]
or.nor.t %d0, %d14, 24, %d1, 24

# CHECK-INST: or.nor.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xd8,0x0f]
or.nor.t %d0, %d14, 24, %d1, 31

# CHECK-INST: or.nor.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x58,0x00]
or.nor.t %d0, %d14, 24, %d14, 0

# CHECK-INST: or.nor.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xd8,0x03]
or.nor.t %d0, %d14, 24, %d14, 7

# CHECK-INST: or.nor.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x58,0x0c]
or.nor.t %d0, %d14, 24, %d14, 24

# CHECK-INST: or.nor.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xd8,0x0f]
or.nor.t %d0, %d14, 24, %d14, 31

# CHECK-INST: or.nor.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x58,0x00]
or.nor.t %d0, %d14, 24, %d15, 0

# CHECK-INST: or.nor.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xd8,0x03]
or.nor.t %d0, %d14, 24, %d15, 7

# CHECK-INST: or.nor.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x58,0x0c]
or.nor.t %d0, %d14, 24, %d15, 24

# CHECK-INST: or.nor.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xd8,0x0f]
or.nor.t %d0, %d14, 24, %d15, 31

# CHECK-INST: or.nor.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x5f,0x00]
or.nor.t %d0, %d14, 31, %d0, 0

# CHECK-INST: or.nor.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xdf,0x03]
or.nor.t %d0, %d14, 31, %d0, 7

# CHECK-INST: or.nor.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x5f,0x0c]
or.nor.t %d0, %d14, 31, %d0, 24

# CHECK-INST: or.nor.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xdf,0x0f]
or.nor.t %d0, %d14, 31, %d0, 31

# CHECK-INST: or.nor.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x5f,0x00]
or.nor.t %d0, %d14, 31, %d1, 0

# CHECK-INST: or.nor.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xdf,0x03]
or.nor.t %d0, %d14, 31, %d1, 7

# CHECK-INST: or.nor.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x5f,0x0c]
or.nor.t %d0, %d14, 31, %d1, 24

# CHECK-INST: or.nor.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xdf,0x0f]
or.nor.t %d0, %d14, 31, %d1, 31

# CHECK-INST: or.nor.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x5f,0x00]
or.nor.t %d0, %d14, 31, %d14, 0

# CHECK-INST: or.nor.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xdf,0x03]
or.nor.t %d0, %d14, 31, %d14, 7

# CHECK-INST: or.nor.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x5f,0x0c]
or.nor.t %d0, %d14, 31, %d14, 24

# CHECK-INST: or.nor.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xdf,0x0f]
or.nor.t %d0, %d14, 31, %d14, 31

# CHECK-INST: or.nor.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x5f,0x00]
or.nor.t %d0, %d14, 31, %d15, 0

# CHECK-INST: or.nor.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xdf,0x03]
or.nor.t %d0, %d14, 31, %d15, 7

# CHECK-INST: or.nor.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x5f,0x0c]
or.nor.t %d0, %d14, 31, %d15, 24

# CHECK-INST: or.nor.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xdf,0x0f]
or.nor.t %d0, %d14, 31, %d15, 31

# CHECK-INST: or.nor.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x40,0x00]
or.nor.t %d0, %d15, 0, %d0, 0

# CHECK-INST: or.nor.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xc0,0x03]
or.nor.t %d0, %d15, 0, %d0, 7

# CHECK-INST: or.nor.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x40,0x0c]
or.nor.t %d0, %d15, 0, %d0, 24

# CHECK-INST: or.nor.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xc0,0x0f]
or.nor.t %d0, %d15, 0, %d0, 31

# CHECK-INST: or.nor.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x40,0x00]
or.nor.t %d0, %d15, 0, %d1, 0

# CHECK-INST: or.nor.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xc0,0x03]
or.nor.t %d0, %d15, 0, %d1, 7

# CHECK-INST: or.nor.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x40,0x0c]
or.nor.t %d0, %d15, 0, %d1, 24

# CHECK-INST: or.nor.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xc0,0x0f]
or.nor.t %d0, %d15, 0, %d1, 31

# CHECK-INST: or.nor.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x40,0x00]
or.nor.t %d0, %d15, 0, %d14, 0

# CHECK-INST: or.nor.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xc0,0x03]
or.nor.t %d0, %d15, 0, %d14, 7

# CHECK-INST: or.nor.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x40,0x0c]
or.nor.t %d0, %d15, 0, %d14, 24

# CHECK-INST: or.nor.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xc0,0x0f]
or.nor.t %d0, %d15, 0, %d14, 31

# CHECK-INST: or.nor.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x40,0x00]
or.nor.t %d0, %d15, 0, %d15, 0

# CHECK-INST: or.nor.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xc0,0x03]
or.nor.t %d0, %d15, 0, %d15, 7

# CHECK-INST: or.nor.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x40,0x0c]
or.nor.t %d0, %d15, 0, %d15, 24

# CHECK-INST: or.nor.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xc0,0x0f]
or.nor.t %d0, %d15, 0, %d15, 31

# CHECK-INST: or.nor.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x47,0x00]
or.nor.t %d0, %d15, 7, %d0, 0

# CHECK-INST: or.nor.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xc7,0x03]
or.nor.t %d0, %d15, 7, %d0, 7

# CHECK-INST: or.nor.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x47,0x0c]
or.nor.t %d0, %d15, 7, %d0, 24

# CHECK-INST: or.nor.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xc7,0x0f]
or.nor.t %d0, %d15, 7, %d0, 31

# CHECK-INST: or.nor.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x47,0x00]
or.nor.t %d0, %d15, 7, %d1, 0

# CHECK-INST: or.nor.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xc7,0x03]
or.nor.t %d0, %d15, 7, %d1, 7

# CHECK-INST: or.nor.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x47,0x0c]
or.nor.t %d0, %d15, 7, %d1, 24

# CHECK-INST: or.nor.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xc7,0x0f]
or.nor.t %d0, %d15, 7, %d1, 31

# CHECK-INST: or.nor.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x47,0x00]
or.nor.t %d0, %d15, 7, %d14, 0

# CHECK-INST: or.nor.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xc7,0x03]
or.nor.t %d0, %d15, 7, %d14, 7

# CHECK-INST: or.nor.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x47,0x0c]
or.nor.t %d0, %d15, 7, %d14, 24

# CHECK-INST: or.nor.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xc7,0x0f]
or.nor.t %d0, %d15, 7, %d14, 31

# CHECK-INST: or.nor.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x47,0x00]
or.nor.t %d0, %d15, 7, %d15, 0

# CHECK-INST: or.nor.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xc7,0x03]
or.nor.t %d0, %d15, 7, %d15, 7

# CHECK-INST: or.nor.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x47,0x0c]
or.nor.t %d0, %d15, 7, %d15, 24

# CHECK-INST: or.nor.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xc7,0x0f]
or.nor.t %d0, %d15, 7, %d15, 31

# CHECK-INST: or.nor.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x58,0x00]
or.nor.t %d0, %d15, 24, %d0, 0

# CHECK-INST: or.nor.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xd8,0x03]
or.nor.t %d0, %d15, 24, %d0, 7

# CHECK-INST: or.nor.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x58,0x0c]
or.nor.t %d0, %d15, 24, %d0, 24

# CHECK-INST: or.nor.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xd8,0x0f]
or.nor.t %d0, %d15, 24, %d0, 31

# CHECK-INST: or.nor.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x58,0x00]
or.nor.t %d0, %d15, 24, %d1, 0

# CHECK-INST: or.nor.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xd8,0x03]
or.nor.t %d0, %d15, 24, %d1, 7

# CHECK-INST: or.nor.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x58,0x0c]
or.nor.t %d0, %d15, 24, %d1, 24

# CHECK-INST: or.nor.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xd8,0x0f]
or.nor.t %d0, %d15, 24, %d1, 31

# CHECK-INST: or.nor.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x58,0x00]
or.nor.t %d0, %d15, 24, %d14, 0

# CHECK-INST: or.nor.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xd8,0x03]
or.nor.t %d0, %d15, 24, %d14, 7

# CHECK-INST: or.nor.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x58,0x0c]
or.nor.t %d0, %d15, 24, %d14, 24

# CHECK-INST: or.nor.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xd8,0x0f]
or.nor.t %d0, %d15, 24, %d14, 31

# CHECK-INST: or.nor.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x58,0x00]
or.nor.t %d0, %d15, 24, %d15, 0

# CHECK-INST: or.nor.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xd8,0x03]
or.nor.t %d0, %d15, 24, %d15, 7

# CHECK-INST: or.nor.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x58,0x0c]
or.nor.t %d0, %d15, 24, %d15, 24

# CHECK-INST: or.nor.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xd8,0x0f]
or.nor.t %d0, %d15, 24, %d15, 31

# CHECK-INST: or.nor.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x5f,0x00]
or.nor.t %d0, %d15, 31, %d0, 0

# CHECK-INST: or.nor.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xdf,0x03]
or.nor.t %d0, %d15, 31, %d0, 7

# CHECK-INST: or.nor.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x5f,0x0c]
or.nor.t %d0, %d15, 31, %d0, 24

# CHECK-INST: or.nor.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xdf,0x0f]
or.nor.t %d0, %d15, 31, %d0, 31

# CHECK-INST: or.nor.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x5f,0x00]
or.nor.t %d0, %d15, 31, %d1, 0

# CHECK-INST: or.nor.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xdf,0x03]
or.nor.t %d0, %d15, 31, %d1, 7

# CHECK-INST: or.nor.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x5f,0x0c]
or.nor.t %d0, %d15, 31, %d1, 24

# CHECK-INST: or.nor.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xdf,0x0f]
or.nor.t %d0, %d15, 31, %d1, 31

# CHECK-INST: or.nor.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x5f,0x00]
or.nor.t %d0, %d15, 31, %d14, 0

# CHECK-INST: or.nor.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xdf,0x03]
or.nor.t %d0, %d15, 31, %d14, 7

# CHECK-INST: or.nor.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x5f,0x0c]
or.nor.t %d0, %d15, 31, %d14, 24

# CHECK-INST: or.nor.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xdf,0x0f]
or.nor.t %d0, %d15, 31, %d14, 31

# CHECK-INST: or.nor.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x5f,0x00]
or.nor.t %d0, %d15, 31, %d15, 0

# CHECK-INST: or.nor.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xdf,0x03]
or.nor.t %d0, %d15, 31, %d15, 7

# CHECK-INST: or.nor.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x5f,0x0c]
or.nor.t %d0, %d15, 31, %d15, 24

# CHECK-INST: or.nor.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xdf,0x0f]
or.nor.t %d0, %d15, 31, %d15, 31

# CHECK-INST: or.nor.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x40,0x10]
or.nor.t %d1, %d0, 0, %d0, 0

# CHECK-INST: or.nor.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xc0,0x13]
or.nor.t %d1, %d0, 0, %d0, 7

# CHECK-INST: or.nor.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x40,0x1c]
or.nor.t %d1, %d0, 0, %d0, 24

# CHECK-INST: or.nor.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xc0,0x1f]
or.nor.t %d1, %d0, 0, %d0, 31

# CHECK-INST: or.nor.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x40,0x10]
or.nor.t %d1, %d0, 0, %d1, 0

# CHECK-INST: or.nor.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xc0,0x13]
or.nor.t %d1, %d0, 0, %d1, 7

# CHECK-INST: or.nor.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x40,0x1c]
or.nor.t %d1, %d0, 0, %d1, 24

# CHECK-INST: or.nor.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xc0,0x1f]
or.nor.t %d1, %d0, 0, %d1, 31

# CHECK-INST: or.nor.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x40,0x10]
or.nor.t %d1, %d0, 0, %d14, 0

# CHECK-INST: or.nor.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xc0,0x13]
or.nor.t %d1, %d0, 0, %d14, 7

# CHECK-INST: or.nor.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x40,0x1c]
or.nor.t %d1, %d0, 0, %d14, 24

# CHECK-INST: or.nor.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xc0,0x1f]
or.nor.t %d1, %d0, 0, %d14, 31

# CHECK-INST: or.nor.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x40,0x10]
or.nor.t %d1, %d0, 0, %d15, 0

# CHECK-INST: or.nor.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xc0,0x13]
or.nor.t %d1, %d0, 0, %d15, 7

# CHECK-INST: or.nor.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x40,0x1c]
or.nor.t %d1, %d0, 0, %d15, 24

# CHECK-INST: or.nor.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xc0,0x1f]
or.nor.t %d1, %d0, 0, %d15, 31

# CHECK-INST: or.nor.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x47,0x10]
or.nor.t %d1, %d0, 7, %d0, 0

# CHECK-INST: or.nor.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xc7,0x13]
or.nor.t %d1, %d0, 7, %d0, 7

# CHECK-INST: or.nor.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x47,0x1c]
or.nor.t %d1, %d0, 7, %d0, 24

# CHECK-INST: or.nor.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xc7,0x1f]
or.nor.t %d1, %d0, 7, %d0, 31

# CHECK-INST: or.nor.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x47,0x10]
or.nor.t %d1, %d0, 7, %d1, 0

# CHECK-INST: or.nor.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xc7,0x13]
or.nor.t %d1, %d0, 7, %d1, 7

# CHECK-INST: or.nor.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x47,0x1c]
or.nor.t %d1, %d0, 7, %d1, 24

# CHECK-INST: or.nor.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xc7,0x1f]
or.nor.t %d1, %d0, 7, %d1, 31

# CHECK-INST: or.nor.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x47,0x10]
or.nor.t %d1, %d0, 7, %d14, 0

# CHECK-INST: or.nor.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xc7,0x13]
or.nor.t %d1, %d0, 7, %d14, 7

# CHECK-INST: or.nor.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x47,0x1c]
or.nor.t %d1, %d0, 7, %d14, 24

# CHECK-INST: or.nor.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xc7,0x1f]
or.nor.t %d1, %d0, 7, %d14, 31

# CHECK-INST: or.nor.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x47,0x10]
or.nor.t %d1, %d0, 7, %d15, 0

# CHECK-INST: or.nor.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xc7,0x13]
or.nor.t %d1, %d0, 7, %d15, 7

# CHECK-INST: or.nor.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x47,0x1c]
or.nor.t %d1, %d0, 7, %d15, 24

# CHECK-INST: or.nor.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xc7,0x1f]
or.nor.t %d1, %d0, 7, %d15, 31

# CHECK-INST: or.nor.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x58,0x10]
or.nor.t %d1, %d0, 24, %d0, 0

# CHECK-INST: or.nor.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xd8,0x13]
or.nor.t %d1, %d0, 24, %d0, 7

# CHECK-INST: or.nor.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x58,0x1c]
or.nor.t %d1, %d0, 24, %d0, 24

# CHECK-INST: or.nor.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xd8,0x1f]
or.nor.t %d1, %d0, 24, %d0, 31

# CHECK-INST: or.nor.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x58,0x10]
or.nor.t %d1, %d0, 24, %d1, 0

# CHECK-INST: or.nor.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xd8,0x13]
or.nor.t %d1, %d0, 24, %d1, 7

# CHECK-INST: or.nor.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x58,0x1c]
or.nor.t %d1, %d0, 24, %d1, 24

# CHECK-INST: or.nor.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xd8,0x1f]
or.nor.t %d1, %d0, 24, %d1, 31

# CHECK-INST: or.nor.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x58,0x10]
or.nor.t %d1, %d0, 24, %d14, 0

# CHECK-INST: or.nor.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xd8,0x13]
or.nor.t %d1, %d0, 24, %d14, 7

# CHECK-INST: or.nor.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x58,0x1c]
or.nor.t %d1, %d0, 24, %d14, 24

# CHECK-INST: or.nor.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xd8,0x1f]
or.nor.t %d1, %d0, 24, %d14, 31

# CHECK-INST: or.nor.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x58,0x10]
or.nor.t %d1, %d0, 24, %d15, 0

# CHECK-INST: or.nor.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xd8,0x13]
or.nor.t %d1, %d0, 24, %d15, 7

# CHECK-INST: or.nor.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x58,0x1c]
or.nor.t %d1, %d0, 24, %d15, 24

# CHECK-INST: or.nor.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xd8,0x1f]
or.nor.t %d1, %d0, 24, %d15, 31

# CHECK-INST: or.nor.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x5f,0x10]
or.nor.t %d1, %d0, 31, %d0, 0

# CHECK-INST: or.nor.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xdf,0x13]
or.nor.t %d1, %d0, 31, %d0, 7

# CHECK-INST: or.nor.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x5f,0x1c]
or.nor.t %d1, %d0, 31, %d0, 24

# CHECK-INST: or.nor.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xdf,0x1f]
or.nor.t %d1, %d0, 31, %d0, 31

# CHECK-INST: or.nor.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x5f,0x10]
or.nor.t %d1, %d0, 31, %d1, 0

# CHECK-INST: or.nor.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xdf,0x13]
or.nor.t %d1, %d0, 31, %d1, 7

# CHECK-INST: or.nor.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x5f,0x1c]
or.nor.t %d1, %d0, 31, %d1, 24

# CHECK-INST: or.nor.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xdf,0x1f]
or.nor.t %d1, %d0, 31, %d1, 31

# CHECK-INST: or.nor.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x5f,0x10]
or.nor.t %d1, %d0, 31, %d14, 0

# CHECK-INST: or.nor.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xdf,0x13]
or.nor.t %d1, %d0, 31, %d14, 7

# CHECK-INST: or.nor.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x5f,0x1c]
or.nor.t %d1, %d0, 31, %d14, 24

# CHECK-INST: or.nor.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xdf,0x1f]
or.nor.t %d1, %d0, 31, %d14, 31

# CHECK-INST: or.nor.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x5f,0x10]
or.nor.t %d1, %d0, 31, %d15, 0

# CHECK-INST: or.nor.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xdf,0x13]
or.nor.t %d1, %d0, 31, %d15, 7

# CHECK-INST: or.nor.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x5f,0x1c]
or.nor.t %d1, %d0, 31, %d15, 24

# CHECK-INST: or.nor.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xdf,0x1f]
or.nor.t %d1, %d0, 31, %d15, 31

# CHECK-INST: or.nor.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x40,0x10]
or.nor.t %d1, %d1, 0, %d0, 0

# CHECK-INST: or.nor.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xc0,0x13]
or.nor.t %d1, %d1, 0, %d0, 7

# CHECK-INST: or.nor.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x40,0x1c]
or.nor.t %d1, %d1, 0, %d0, 24

# CHECK-INST: or.nor.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xc0,0x1f]
or.nor.t %d1, %d1, 0, %d0, 31

# CHECK-INST: or.nor.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x40,0x10]
or.nor.t %d1, %d1, 0, %d1, 0

# CHECK-INST: or.nor.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xc0,0x13]
or.nor.t %d1, %d1, 0, %d1, 7

# CHECK-INST: or.nor.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x40,0x1c]
or.nor.t %d1, %d1, 0, %d1, 24

# CHECK-INST: or.nor.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xc0,0x1f]
or.nor.t %d1, %d1, 0, %d1, 31

# CHECK-INST: or.nor.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x40,0x10]
or.nor.t %d1, %d1, 0, %d14, 0

# CHECK-INST: or.nor.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xc0,0x13]
or.nor.t %d1, %d1, 0, %d14, 7

# CHECK-INST: or.nor.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x40,0x1c]
or.nor.t %d1, %d1, 0, %d14, 24

# CHECK-INST: or.nor.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xc0,0x1f]
or.nor.t %d1, %d1, 0, %d14, 31

# CHECK-INST: or.nor.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x40,0x10]
or.nor.t %d1, %d1, 0, %d15, 0

# CHECK-INST: or.nor.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xc0,0x13]
or.nor.t %d1, %d1, 0, %d15, 7

# CHECK-INST: or.nor.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x40,0x1c]
or.nor.t %d1, %d1, 0, %d15, 24

# CHECK-INST: or.nor.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xc0,0x1f]
or.nor.t %d1, %d1, 0, %d15, 31

# CHECK-INST: or.nor.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x47,0x10]
or.nor.t %d1, %d1, 7, %d0, 0

# CHECK-INST: or.nor.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xc7,0x13]
or.nor.t %d1, %d1, 7, %d0, 7

# CHECK-INST: or.nor.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x47,0x1c]
or.nor.t %d1, %d1, 7, %d0, 24

# CHECK-INST: or.nor.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xc7,0x1f]
or.nor.t %d1, %d1, 7, %d0, 31

# CHECK-INST: or.nor.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x47,0x10]
or.nor.t %d1, %d1, 7, %d1, 0

# CHECK-INST: or.nor.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xc7,0x13]
or.nor.t %d1, %d1, 7, %d1, 7

# CHECK-INST: or.nor.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x47,0x1c]
or.nor.t %d1, %d1, 7, %d1, 24

# CHECK-INST: or.nor.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xc7,0x1f]
or.nor.t %d1, %d1, 7, %d1, 31

# CHECK-INST: or.nor.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x47,0x10]
or.nor.t %d1, %d1, 7, %d14, 0

# CHECK-INST: or.nor.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xc7,0x13]
or.nor.t %d1, %d1, 7, %d14, 7

# CHECK-INST: or.nor.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x47,0x1c]
or.nor.t %d1, %d1, 7, %d14, 24

# CHECK-INST: or.nor.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xc7,0x1f]
or.nor.t %d1, %d1, 7, %d14, 31

# CHECK-INST: or.nor.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x47,0x10]
or.nor.t %d1, %d1, 7, %d15, 0

# CHECK-INST: or.nor.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xc7,0x13]
or.nor.t %d1, %d1, 7, %d15, 7

# CHECK-INST: or.nor.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x47,0x1c]
or.nor.t %d1, %d1, 7, %d15, 24

# CHECK-INST: or.nor.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xc7,0x1f]
or.nor.t %d1, %d1, 7, %d15, 31

# CHECK-INST: or.nor.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x58,0x10]
or.nor.t %d1, %d1, 24, %d0, 0

# CHECK-INST: or.nor.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xd8,0x13]
or.nor.t %d1, %d1, 24, %d0, 7

# CHECK-INST: or.nor.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x58,0x1c]
or.nor.t %d1, %d1, 24, %d0, 24

# CHECK-INST: or.nor.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xd8,0x1f]
or.nor.t %d1, %d1, 24, %d0, 31

# CHECK-INST: or.nor.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x58,0x10]
or.nor.t %d1, %d1, 24, %d1, 0

# CHECK-INST: or.nor.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xd8,0x13]
or.nor.t %d1, %d1, 24, %d1, 7

# CHECK-INST: or.nor.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x58,0x1c]
or.nor.t %d1, %d1, 24, %d1, 24

# CHECK-INST: or.nor.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xd8,0x1f]
or.nor.t %d1, %d1, 24, %d1, 31

# CHECK-INST: or.nor.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x58,0x10]
or.nor.t %d1, %d1, 24, %d14, 0

# CHECK-INST: or.nor.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xd8,0x13]
or.nor.t %d1, %d1, 24, %d14, 7

# CHECK-INST: or.nor.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x58,0x1c]
or.nor.t %d1, %d1, 24, %d14, 24

# CHECK-INST: or.nor.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xd8,0x1f]
or.nor.t %d1, %d1, 24, %d14, 31

# CHECK-INST: or.nor.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x58,0x10]
or.nor.t %d1, %d1, 24, %d15, 0

# CHECK-INST: or.nor.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xd8,0x13]
or.nor.t %d1, %d1, 24, %d15, 7

# CHECK-INST: or.nor.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x58,0x1c]
or.nor.t %d1, %d1, 24, %d15, 24

# CHECK-INST: or.nor.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xd8,0x1f]
or.nor.t %d1, %d1, 24, %d15, 31

# CHECK-INST: or.nor.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x5f,0x10]
or.nor.t %d1, %d1, 31, %d0, 0

# CHECK-INST: or.nor.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xdf,0x13]
or.nor.t %d1, %d1, 31, %d0, 7

# CHECK-INST: or.nor.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x5f,0x1c]
or.nor.t %d1, %d1, 31, %d0, 24

# CHECK-INST: or.nor.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xdf,0x1f]
or.nor.t %d1, %d1, 31, %d0, 31

# CHECK-INST: or.nor.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x5f,0x10]
or.nor.t %d1, %d1, 31, %d1, 0

# CHECK-INST: or.nor.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xdf,0x13]
or.nor.t %d1, %d1, 31, %d1, 7

# CHECK-INST: or.nor.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x5f,0x1c]
or.nor.t %d1, %d1, 31, %d1, 24

# CHECK-INST: or.nor.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xdf,0x1f]
or.nor.t %d1, %d1, 31, %d1, 31

# CHECK-INST: or.nor.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x5f,0x10]
or.nor.t %d1, %d1, 31, %d14, 0

# CHECK-INST: or.nor.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xdf,0x13]
or.nor.t %d1, %d1, 31, %d14, 7

# CHECK-INST: or.nor.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x5f,0x1c]
or.nor.t %d1, %d1, 31, %d14, 24

# CHECK-INST: or.nor.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xdf,0x1f]
or.nor.t %d1, %d1, 31, %d14, 31

# CHECK-INST: or.nor.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x5f,0x10]
or.nor.t %d1, %d1, 31, %d15, 0

# CHECK-INST: or.nor.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xdf,0x13]
or.nor.t %d1, %d1, 31, %d15, 7

# CHECK-INST: or.nor.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x5f,0x1c]
or.nor.t %d1, %d1, 31, %d15, 24

# CHECK-INST: or.nor.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xdf,0x1f]
or.nor.t %d1, %d1, 31, %d15, 31

# CHECK-INST: or.nor.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x40,0x10]
or.nor.t %d1, %d14, 0, %d0, 0

# CHECK-INST: or.nor.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xc0,0x13]
or.nor.t %d1, %d14, 0, %d0, 7

# CHECK-INST: or.nor.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x40,0x1c]
or.nor.t %d1, %d14, 0, %d0, 24

# CHECK-INST: or.nor.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xc0,0x1f]
or.nor.t %d1, %d14, 0, %d0, 31

# CHECK-INST: or.nor.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x40,0x10]
or.nor.t %d1, %d14, 0, %d1, 0

# CHECK-INST: or.nor.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xc0,0x13]
or.nor.t %d1, %d14, 0, %d1, 7

# CHECK-INST: or.nor.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x40,0x1c]
or.nor.t %d1, %d14, 0, %d1, 24

# CHECK-INST: or.nor.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xc0,0x1f]
or.nor.t %d1, %d14, 0, %d1, 31

# CHECK-INST: or.nor.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x40,0x10]
or.nor.t %d1, %d14, 0, %d14, 0

# CHECK-INST: or.nor.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xc0,0x13]
or.nor.t %d1, %d14, 0, %d14, 7

# CHECK-INST: or.nor.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x40,0x1c]
or.nor.t %d1, %d14, 0, %d14, 24

# CHECK-INST: or.nor.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xc0,0x1f]
or.nor.t %d1, %d14, 0, %d14, 31

# CHECK-INST: or.nor.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x40,0x10]
or.nor.t %d1, %d14, 0, %d15, 0

# CHECK-INST: or.nor.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xc0,0x13]
or.nor.t %d1, %d14, 0, %d15, 7

# CHECK-INST: or.nor.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x40,0x1c]
or.nor.t %d1, %d14, 0, %d15, 24

# CHECK-INST: or.nor.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xc0,0x1f]
or.nor.t %d1, %d14, 0, %d15, 31

# CHECK-INST: or.nor.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x47,0x10]
or.nor.t %d1, %d14, 7, %d0, 0

# CHECK-INST: or.nor.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xc7,0x13]
or.nor.t %d1, %d14, 7, %d0, 7

# CHECK-INST: or.nor.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x47,0x1c]
or.nor.t %d1, %d14, 7, %d0, 24

# CHECK-INST: or.nor.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xc7,0x1f]
or.nor.t %d1, %d14, 7, %d0, 31

# CHECK-INST: or.nor.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x47,0x10]
or.nor.t %d1, %d14, 7, %d1, 0

# CHECK-INST: or.nor.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xc7,0x13]
or.nor.t %d1, %d14, 7, %d1, 7

# CHECK-INST: or.nor.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x47,0x1c]
or.nor.t %d1, %d14, 7, %d1, 24

# CHECK-INST: or.nor.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xc7,0x1f]
or.nor.t %d1, %d14, 7, %d1, 31

# CHECK-INST: or.nor.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x47,0x10]
or.nor.t %d1, %d14, 7, %d14, 0

# CHECK-INST: or.nor.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xc7,0x13]
or.nor.t %d1, %d14, 7, %d14, 7

# CHECK-INST: or.nor.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x47,0x1c]
or.nor.t %d1, %d14, 7, %d14, 24

# CHECK-INST: or.nor.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xc7,0x1f]
or.nor.t %d1, %d14, 7, %d14, 31

# CHECK-INST: or.nor.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x47,0x10]
or.nor.t %d1, %d14, 7, %d15, 0

# CHECK-INST: or.nor.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xc7,0x13]
or.nor.t %d1, %d14, 7, %d15, 7

# CHECK-INST: or.nor.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x47,0x1c]
or.nor.t %d1, %d14, 7, %d15, 24

# CHECK-INST: or.nor.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xc7,0x1f]
or.nor.t %d1, %d14, 7, %d15, 31

# CHECK-INST: or.nor.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x58,0x10]
or.nor.t %d1, %d14, 24, %d0, 0

# CHECK-INST: or.nor.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xd8,0x13]
or.nor.t %d1, %d14, 24, %d0, 7

# CHECK-INST: or.nor.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x58,0x1c]
or.nor.t %d1, %d14, 24, %d0, 24

# CHECK-INST: or.nor.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xd8,0x1f]
or.nor.t %d1, %d14, 24, %d0, 31

# CHECK-INST: or.nor.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x58,0x10]
or.nor.t %d1, %d14, 24, %d1, 0

# CHECK-INST: or.nor.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xd8,0x13]
or.nor.t %d1, %d14, 24, %d1, 7

# CHECK-INST: or.nor.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x58,0x1c]
or.nor.t %d1, %d14, 24, %d1, 24

# CHECK-INST: or.nor.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xd8,0x1f]
or.nor.t %d1, %d14, 24, %d1, 31

# CHECK-INST: or.nor.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x58,0x10]
or.nor.t %d1, %d14, 24, %d14, 0

# CHECK-INST: or.nor.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xd8,0x13]
or.nor.t %d1, %d14, 24, %d14, 7

# CHECK-INST: or.nor.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x58,0x1c]
or.nor.t %d1, %d14, 24, %d14, 24

# CHECK-INST: or.nor.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xd8,0x1f]
or.nor.t %d1, %d14, 24, %d14, 31

# CHECK-INST: or.nor.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x58,0x10]
or.nor.t %d1, %d14, 24, %d15, 0

# CHECK-INST: or.nor.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xd8,0x13]
or.nor.t %d1, %d14, 24, %d15, 7

# CHECK-INST: or.nor.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x58,0x1c]
or.nor.t %d1, %d14, 24, %d15, 24

# CHECK-INST: or.nor.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xd8,0x1f]
or.nor.t %d1, %d14, 24, %d15, 31

# CHECK-INST: or.nor.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x5f,0x10]
or.nor.t %d1, %d14, 31, %d0, 0

# CHECK-INST: or.nor.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xdf,0x13]
or.nor.t %d1, %d14, 31, %d0, 7

# CHECK-INST: or.nor.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x5f,0x1c]
or.nor.t %d1, %d14, 31, %d0, 24

# CHECK-INST: or.nor.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xdf,0x1f]
or.nor.t %d1, %d14, 31, %d0, 31

# CHECK-INST: or.nor.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x5f,0x10]
or.nor.t %d1, %d14, 31, %d1, 0

# CHECK-INST: or.nor.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xdf,0x13]
or.nor.t %d1, %d14, 31, %d1, 7

# CHECK-INST: or.nor.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x5f,0x1c]
or.nor.t %d1, %d14, 31, %d1, 24

# CHECK-INST: or.nor.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xdf,0x1f]
or.nor.t %d1, %d14, 31, %d1, 31

# CHECK-INST: or.nor.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x5f,0x10]
or.nor.t %d1, %d14, 31, %d14, 0

# CHECK-INST: or.nor.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xdf,0x13]
or.nor.t %d1, %d14, 31, %d14, 7

# CHECK-INST: or.nor.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x5f,0x1c]
or.nor.t %d1, %d14, 31, %d14, 24

# CHECK-INST: or.nor.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xdf,0x1f]
or.nor.t %d1, %d14, 31, %d14, 31

# CHECK-INST: or.nor.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x5f,0x10]
or.nor.t %d1, %d14, 31, %d15, 0

# CHECK-INST: or.nor.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xdf,0x13]
or.nor.t %d1, %d14, 31, %d15, 7

# CHECK-INST: or.nor.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x5f,0x1c]
or.nor.t %d1, %d14, 31, %d15, 24

# CHECK-INST: or.nor.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xdf,0x1f]
or.nor.t %d1, %d14, 31, %d15, 31

# CHECK-INST: or.nor.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x40,0x10]
or.nor.t %d1, %d15, 0, %d0, 0

# CHECK-INST: or.nor.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xc0,0x13]
or.nor.t %d1, %d15, 0, %d0, 7

# CHECK-INST: or.nor.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x40,0x1c]
or.nor.t %d1, %d15, 0, %d0, 24

# CHECK-INST: or.nor.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xc0,0x1f]
or.nor.t %d1, %d15, 0, %d0, 31

# CHECK-INST: or.nor.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x40,0x10]
or.nor.t %d1, %d15, 0, %d1, 0

# CHECK-INST: or.nor.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xc0,0x13]
or.nor.t %d1, %d15, 0, %d1, 7

# CHECK-INST: or.nor.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x40,0x1c]
or.nor.t %d1, %d15, 0, %d1, 24

# CHECK-INST: or.nor.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xc0,0x1f]
or.nor.t %d1, %d15, 0, %d1, 31

# CHECK-INST: or.nor.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x40,0x10]
or.nor.t %d1, %d15, 0, %d14, 0

# CHECK-INST: or.nor.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xc0,0x13]
or.nor.t %d1, %d15, 0, %d14, 7

# CHECK-INST: or.nor.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x40,0x1c]
or.nor.t %d1, %d15, 0, %d14, 24

# CHECK-INST: or.nor.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xc0,0x1f]
or.nor.t %d1, %d15, 0, %d14, 31

# CHECK-INST: or.nor.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x40,0x10]
or.nor.t %d1, %d15, 0, %d15, 0

# CHECK-INST: or.nor.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xc0,0x13]
or.nor.t %d1, %d15, 0, %d15, 7

# CHECK-INST: or.nor.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x40,0x1c]
or.nor.t %d1, %d15, 0, %d15, 24

# CHECK-INST: or.nor.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xc0,0x1f]
or.nor.t %d1, %d15, 0, %d15, 31

# CHECK-INST: or.nor.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x47,0x10]
or.nor.t %d1, %d15, 7, %d0, 0

# CHECK-INST: or.nor.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xc7,0x13]
or.nor.t %d1, %d15, 7, %d0, 7

# CHECK-INST: or.nor.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x47,0x1c]
or.nor.t %d1, %d15, 7, %d0, 24

# CHECK-INST: or.nor.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xc7,0x1f]
or.nor.t %d1, %d15, 7, %d0, 31

# CHECK-INST: or.nor.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x47,0x10]
or.nor.t %d1, %d15, 7, %d1, 0

# CHECK-INST: or.nor.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xc7,0x13]
or.nor.t %d1, %d15, 7, %d1, 7

# CHECK-INST: or.nor.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x47,0x1c]
or.nor.t %d1, %d15, 7, %d1, 24

# CHECK-INST: or.nor.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xc7,0x1f]
or.nor.t %d1, %d15, 7, %d1, 31

# CHECK-INST: or.nor.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x47,0x10]
or.nor.t %d1, %d15, 7, %d14, 0

# CHECK-INST: or.nor.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xc7,0x13]
or.nor.t %d1, %d15, 7, %d14, 7

# CHECK-INST: or.nor.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x47,0x1c]
or.nor.t %d1, %d15, 7, %d14, 24

# CHECK-INST: or.nor.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xc7,0x1f]
or.nor.t %d1, %d15, 7, %d14, 31

# CHECK-INST: or.nor.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x47,0x10]
or.nor.t %d1, %d15, 7, %d15, 0

# CHECK-INST: or.nor.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xc7,0x13]
or.nor.t %d1, %d15, 7, %d15, 7

# CHECK-INST: or.nor.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x47,0x1c]
or.nor.t %d1, %d15, 7, %d15, 24

# CHECK-INST: or.nor.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xc7,0x1f]
or.nor.t %d1, %d15, 7, %d15, 31

# CHECK-INST: or.nor.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x58,0x10]
or.nor.t %d1, %d15, 24, %d0, 0

# CHECK-INST: or.nor.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xd8,0x13]
or.nor.t %d1, %d15, 24, %d0, 7

# CHECK-INST: or.nor.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x58,0x1c]
or.nor.t %d1, %d15, 24, %d0, 24

# CHECK-INST: or.nor.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xd8,0x1f]
or.nor.t %d1, %d15, 24, %d0, 31

# CHECK-INST: or.nor.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x58,0x10]
or.nor.t %d1, %d15, 24, %d1, 0

# CHECK-INST: or.nor.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xd8,0x13]
or.nor.t %d1, %d15, 24, %d1, 7

# CHECK-INST: or.nor.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x58,0x1c]
or.nor.t %d1, %d15, 24, %d1, 24

# CHECK-INST: or.nor.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xd8,0x1f]
or.nor.t %d1, %d15, 24, %d1, 31

# CHECK-INST: or.nor.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x58,0x10]
or.nor.t %d1, %d15, 24, %d14, 0

# CHECK-INST: or.nor.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xd8,0x13]
or.nor.t %d1, %d15, 24, %d14, 7

# CHECK-INST: or.nor.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x58,0x1c]
or.nor.t %d1, %d15, 24, %d14, 24

# CHECK-INST: or.nor.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xd8,0x1f]
or.nor.t %d1, %d15, 24, %d14, 31

# CHECK-INST: or.nor.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x58,0x10]
or.nor.t %d1, %d15, 24, %d15, 0

# CHECK-INST: or.nor.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xd8,0x13]
or.nor.t %d1, %d15, 24, %d15, 7

# CHECK-INST: or.nor.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x58,0x1c]
or.nor.t %d1, %d15, 24, %d15, 24

# CHECK-INST: or.nor.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xd8,0x1f]
or.nor.t %d1, %d15, 24, %d15, 31

# CHECK-INST: or.nor.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x5f,0x10]
or.nor.t %d1, %d15, 31, %d0, 0

# CHECK-INST: or.nor.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xdf,0x13]
or.nor.t %d1, %d15, 31, %d0, 7

# CHECK-INST: or.nor.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x5f,0x1c]
or.nor.t %d1, %d15, 31, %d0, 24

# CHECK-INST: or.nor.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xdf,0x1f]
or.nor.t %d1, %d15, 31, %d0, 31

# CHECK-INST: or.nor.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x5f,0x10]
or.nor.t %d1, %d15, 31, %d1, 0

# CHECK-INST: or.nor.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xdf,0x13]
or.nor.t %d1, %d15, 31, %d1, 7

# CHECK-INST: or.nor.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x5f,0x1c]
or.nor.t %d1, %d15, 31, %d1, 24

# CHECK-INST: or.nor.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xdf,0x1f]
or.nor.t %d1, %d15, 31, %d1, 31

# CHECK-INST: or.nor.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x5f,0x10]
or.nor.t %d1, %d15, 31, %d14, 0

# CHECK-INST: or.nor.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xdf,0x13]
or.nor.t %d1, %d15, 31, %d14, 7

# CHECK-INST: or.nor.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x5f,0x1c]
or.nor.t %d1, %d15, 31, %d14, 24

# CHECK-INST: or.nor.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xdf,0x1f]
or.nor.t %d1, %d15, 31, %d14, 31

# CHECK-INST: or.nor.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x5f,0x10]
or.nor.t %d1, %d15, 31, %d15, 0

# CHECK-INST: or.nor.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xdf,0x13]
or.nor.t %d1, %d15, 31, %d15, 7

# CHECK-INST: or.nor.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x5f,0x1c]
or.nor.t %d1, %d15, 31, %d15, 24

# CHECK-INST: or.nor.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xdf,0x1f]
or.nor.t %d1, %d15, 31, %d15, 31

# CHECK-INST: or.nor.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x40,0xe0]
or.nor.t %d14, %d0, 0, %d0, 0

# CHECK-INST: or.nor.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xc0,0xe3]
or.nor.t %d14, %d0, 0, %d0, 7

# CHECK-INST: or.nor.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x40,0xec]
or.nor.t %d14, %d0, 0, %d0, 24

# CHECK-INST: or.nor.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xc0,0xef]
or.nor.t %d14, %d0, 0, %d0, 31

# CHECK-INST: or.nor.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x40,0xe0]
or.nor.t %d14, %d0, 0, %d1, 0

# CHECK-INST: or.nor.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xc0,0xe3]
or.nor.t %d14, %d0, 0, %d1, 7

# CHECK-INST: or.nor.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x40,0xec]
or.nor.t %d14, %d0, 0, %d1, 24

# CHECK-INST: or.nor.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xc0,0xef]
or.nor.t %d14, %d0, 0, %d1, 31

# CHECK-INST: or.nor.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x40,0xe0]
or.nor.t %d14, %d0, 0, %d14, 0

# CHECK-INST: or.nor.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xc0,0xe3]
or.nor.t %d14, %d0, 0, %d14, 7

# CHECK-INST: or.nor.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x40,0xec]
or.nor.t %d14, %d0, 0, %d14, 24

# CHECK-INST: or.nor.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xc0,0xef]
or.nor.t %d14, %d0, 0, %d14, 31

# CHECK-INST: or.nor.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x40,0xe0]
or.nor.t %d14, %d0, 0, %d15, 0

# CHECK-INST: or.nor.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xc0,0xe3]
or.nor.t %d14, %d0, 0, %d15, 7

# CHECK-INST: or.nor.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x40,0xec]
or.nor.t %d14, %d0, 0, %d15, 24

# CHECK-INST: or.nor.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xc0,0xef]
or.nor.t %d14, %d0, 0, %d15, 31

# CHECK-INST: or.nor.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x47,0xe0]
or.nor.t %d14, %d0, 7, %d0, 0

# CHECK-INST: or.nor.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xc7,0xe3]
or.nor.t %d14, %d0, 7, %d0, 7

# CHECK-INST: or.nor.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x47,0xec]
or.nor.t %d14, %d0, 7, %d0, 24

# CHECK-INST: or.nor.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xc7,0xef]
or.nor.t %d14, %d0, 7, %d0, 31

# CHECK-INST: or.nor.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x47,0xe0]
or.nor.t %d14, %d0, 7, %d1, 0

# CHECK-INST: or.nor.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xc7,0xe3]
or.nor.t %d14, %d0, 7, %d1, 7

# CHECK-INST: or.nor.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x47,0xec]
or.nor.t %d14, %d0, 7, %d1, 24

# CHECK-INST: or.nor.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xc7,0xef]
or.nor.t %d14, %d0, 7, %d1, 31

# CHECK-INST: or.nor.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x47,0xe0]
or.nor.t %d14, %d0, 7, %d14, 0

# CHECK-INST: or.nor.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xc7,0xe3]
or.nor.t %d14, %d0, 7, %d14, 7

# CHECK-INST: or.nor.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x47,0xec]
or.nor.t %d14, %d0, 7, %d14, 24

# CHECK-INST: or.nor.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xc7,0xef]
or.nor.t %d14, %d0, 7, %d14, 31

# CHECK-INST: or.nor.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x47,0xe0]
or.nor.t %d14, %d0, 7, %d15, 0

# CHECK-INST: or.nor.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xc7,0xe3]
or.nor.t %d14, %d0, 7, %d15, 7

# CHECK-INST: or.nor.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x47,0xec]
or.nor.t %d14, %d0, 7, %d15, 24

# CHECK-INST: or.nor.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xc7,0xef]
or.nor.t %d14, %d0, 7, %d15, 31

# CHECK-INST: or.nor.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x58,0xe0]
or.nor.t %d14, %d0, 24, %d0, 0

# CHECK-INST: or.nor.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xd8,0xe3]
or.nor.t %d14, %d0, 24, %d0, 7

# CHECK-INST: or.nor.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x58,0xec]
or.nor.t %d14, %d0, 24, %d0, 24

# CHECK-INST: or.nor.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xd8,0xef]
or.nor.t %d14, %d0, 24, %d0, 31

# CHECK-INST: or.nor.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x58,0xe0]
or.nor.t %d14, %d0, 24, %d1, 0

# CHECK-INST: or.nor.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xd8,0xe3]
or.nor.t %d14, %d0, 24, %d1, 7

# CHECK-INST: or.nor.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x58,0xec]
or.nor.t %d14, %d0, 24, %d1, 24

# CHECK-INST: or.nor.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xd8,0xef]
or.nor.t %d14, %d0, 24, %d1, 31

# CHECK-INST: or.nor.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x58,0xe0]
or.nor.t %d14, %d0, 24, %d14, 0

# CHECK-INST: or.nor.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xd8,0xe3]
or.nor.t %d14, %d0, 24, %d14, 7

# CHECK-INST: or.nor.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x58,0xec]
or.nor.t %d14, %d0, 24, %d14, 24

# CHECK-INST: or.nor.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xd8,0xef]
or.nor.t %d14, %d0, 24, %d14, 31

# CHECK-INST: or.nor.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x58,0xe0]
or.nor.t %d14, %d0, 24, %d15, 0

# CHECK-INST: or.nor.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xd8,0xe3]
or.nor.t %d14, %d0, 24, %d15, 7

# CHECK-INST: or.nor.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x58,0xec]
or.nor.t %d14, %d0, 24, %d15, 24

# CHECK-INST: or.nor.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xd8,0xef]
or.nor.t %d14, %d0, 24, %d15, 31

# CHECK-INST: or.nor.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x5f,0xe0]
or.nor.t %d14, %d0, 31, %d0, 0

# CHECK-INST: or.nor.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xdf,0xe3]
or.nor.t %d14, %d0, 31, %d0, 7

# CHECK-INST: or.nor.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x5f,0xec]
or.nor.t %d14, %d0, 31, %d0, 24

# CHECK-INST: or.nor.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xdf,0xef]
or.nor.t %d14, %d0, 31, %d0, 31

# CHECK-INST: or.nor.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x5f,0xe0]
or.nor.t %d14, %d0, 31, %d1, 0

# CHECK-INST: or.nor.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xdf,0xe3]
or.nor.t %d14, %d0, 31, %d1, 7

# CHECK-INST: or.nor.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x5f,0xec]
or.nor.t %d14, %d0, 31, %d1, 24

# CHECK-INST: or.nor.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xdf,0xef]
or.nor.t %d14, %d0, 31, %d1, 31

# CHECK-INST: or.nor.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x5f,0xe0]
or.nor.t %d14, %d0, 31, %d14, 0

# CHECK-INST: or.nor.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xdf,0xe3]
or.nor.t %d14, %d0, 31, %d14, 7

# CHECK-INST: or.nor.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x5f,0xec]
or.nor.t %d14, %d0, 31, %d14, 24

# CHECK-INST: or.nor.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xdf,0xef]
or.nor.t %d14, %d0, 31, %d14, 31

# CHECK-INST: or.nor.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x5f,0xe0]
or.nor.t %d14, %d0, 31, %d15, 0

# CHECK-INST: or.nor.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xdf,0xe3]
or.nor.t %d14, %d0, 31, %d15, 7

# CHECK-INST: or.nor.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x5f,0xec]
or.nor.t %d14, %d0, 31, %d15, 24

# CHECK-INST: or.nor.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xdf,0xef]
or.nor.t %d14, %d0, 31, %d15, 31

# CHECK-INST: or.nor.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x40,0xe0]
or.nor.t %d14, %d1, 0, %d0, 0

# CHECK-INST: or.nor.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xc0,0xe3]
or.nor.t %d14, %d1, 0, %d0, 7

# CHECK-INST: or.nor.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x40,0xec]
or.nor.t %d14, %d1, 0, %d0, 24

# CHECK-INST: or.nor.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xc0,0xef]
or.nor.t %d14, %d1, 0, %d0, 31

# CHECK-INST: or.nor.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x40,0xe0]
or.nor.t %d14, %d1, 0, %d1, 0

# CHECK-INST: or.nor.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xc0,0xe3]
or.nor.t %d14, %d1, 0, %d1, 7

# CHECK-INST: or.nor.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x40,0xec]
or.nor.t %d14, %d1, 0, %d1, 24

# CHECK-INST: or.nor.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xc0,0xef]
or.nor.t %d14, %d1, 0, %d1, 31

# CHECK-INST: or.nor.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x40,0xe0]
or.nor.t %d14, %d1, 0, %d14, 0

# CHECK-INST: or.nor.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xc0,0xe3]
or.nor.t %d14, %d1, 0, %d14, 7

# CHECK-INST: or.nor.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x40,0xec]
or.nor.t %d14, %d1, 0, %d14, 24

# CHECK-INST: or.nor.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xc0,0xef]
or.nor.t %d14, %d1, 0, %d14, 31

# CHECK-INST: or.nor.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x40,0xe0]
or.nor.t %d14, %d1, 0, %d15, 0

# CHECK-INST: or.nor.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xc0,0xe3]
or.nor.t %d14, %d1, 0, %d15, 7

# CHECK-INST: or.nor.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x40,0xec]
or.nor.t %d14, %d1, 0, %d15, 24

# CHECK-INST: or.nor.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xc0,0xef]
or.nor.t %d14, %d1, 0, %d15, 31

# CHECK-INST: or.nor.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x47,0xe0]
or.nor.t %d14, %d1, 7, %d0, 0

# CHECK-INST: or.nor.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xc7,0xe3]
or.nor.t %d14, %d1, 7, %d0, 7

# CHECK-INST: or.nor.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x47,0xec]
or.nor.t %d14, %d1, 7, %d0, 24

# CHECK-INST: or.nor.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xc7,0xef]
or.nor.t %d14, %d1, 7, %d0, 31

# CHECK-INST: or.nor.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x47,0xe0]
or.nor.t %d14, %d1, 7, %d1, 0

# CHECK-INST: or.nor.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xc7,0xe3]
or.nor.t %d14, %d1, 7, %d1, 7

# CHECK-INST: or.nor.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x47,0xec]
or.nor.t %d14, %d1, 7, %d1, 24

# CHECK-INST: or.nor.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xc7,0xef]
or.nor.t %d14, %d1, 7, %d1, 31

# CHECK-INST: or.nor.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x47,0xe0]
or.nor.t %d14, %d1, 7, %d14, 0

# CHECK-INST: or.nor.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xc7,0xe3]
or.nor.t %d14, %d1, 7, %d14, 7

# CHECK-INST: or.nor.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x47,0xec]
or.nor.t %d14, %d1, 7, %d14, 24

# CHECK-INST: or.nor.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xc7,0xef]
or.nor.t %d14, %d1, 7, %d14, 31

# CHECK-INST: or.nor.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x47,0xe0]
or.nor.t %d14, %d1, 7, %d15, 0

# CHECK-INST: or.nor.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xc7,0xe3]
or.nor.t %d14, %d1, 7, %d15, 7

# CHECK-INST: or.nor.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x47,0xec]
or.nor.t %d14, %d1, 7, %d15, 24

# CHECK-INST: or.nor.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xc7,0xef]
or.nor.t %d14, %d1, 7, %d15, 31

# CHECK-INST: or.nor.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x58,0xe0]
or.nor.t %d14, %d1, 24, %d0, 0

# CHECK-INST: or.nor.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xd8,0xe3]
or.nor.t %d14, %d1, 24, %d0, 7

# CHECK-INST: or.nor.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x58,0xec]
or.nor.t %d14, %d1, 24, %d0, 24

# CHECK-INST: or.nor.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xd8,0xef]
or.nor.t %d14, %d1, 24, %d0, 31

# CHECK-INST: or.nor.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x58,0xe0]
or.nor.t %d14, %d1, 24, %d1, 0

# CHECK-INST: or.nor.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xd8,0xe3]
or.nor.t %d14, %d1, 24, %d1, 7

# CHECK-INST: or.nor.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x58,0xec]
or.nor.t %d14, %d1, 24, %d1, 24

# CHECK-INST: or.nor.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xd8,0xef]
or.nor.t %d14, %d1, 24, %d1, 31

# CHECK-INST: or.nor.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x58,0xe0]
or.nor.t %d14, %d1, 24, %d14, 0

# CHECK-INST: or.nor.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xd8,0xe3]
or.nor.t %d14, %d1, 24, %d14, 7

# CHECK-INST: or.nor.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x58,0xec]
or.nor.t %d14, %d1, 24, %d14, 24

# CHECK-INST: or.nor.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xd8,0xef]
or.nor.t %d14, %d1, 24, %d14, 31

# CHECK-INST: or.nor.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x58,0xe0]
or.nor.t %d14, %d1, 24, %d15, 0

# CHECK-INST: or.nor.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xd8,0xe3]
or.nor.t %d14, %d1, 24, %d15, 7

# CHECK-INST: or.nor.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x58,0xec]
or.nor.t %d14, %d1, 24, %d15, 24

# CHECK-INST: or.nor.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xd8,0xef]
or.nor.t %d14, %d1, 24, %d15, 31

# CHECK-INST: or.nor.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x5f,0xe0]
or.nor.t %d14, %d1, 31, %d0, 0

# CHECK-INST: or.nor.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xdf,0xe3]
or.nor.t %d14, %d1, 31, %d0, 7

# CHECK-INST: or.nor.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x5f,0xec]
or.nor.t %d14, %d1, 31, %d0, 24

# CHECK-INST: or.nor.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xdf,0xef]
or.nor.t %d14, %d1, 31, %d0, 31

# CHECK-INST: or.nor.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x5f,0xe0]
or.nor.t %d14, %d1, 31, %d1, 0

# CHECK-INST: or.nor.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xdf,0xe3]
or.nor.t %d14, %d1, 31, %d1, 7

# CHECK-INST: or.nor.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x5f,0xec]
or.nor.t %d14, %d1, 31, %d1, 24

# CHECK-INST: or.nor.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xdf,0xef]
or.nor.t %d14, %d1, 31, %d1, 31

# CHECK-INST: or.nor.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x5f,0xe0]
or.nor.t %d14, %d1, 31, %d14, 0

# CHECK-INST: or.nor.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xdf,0xe3]
or.nor.t %d14, %d1, 31, %d14, 7

# CHECK-INST: or.nor.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x5f,0xec]
or.nor.t %d14, %d1, 31, %d14, 24

# CHECK-INST: or.nor.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xdf,0xef]
or.nor.t %d14, %d1, 31, %d14, 31

# CHECK-INST: or.nor.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x5f,0xe0]
or.nor.t %d14, %d1, 31, %d15, 0

# CHECK-INST: or.nor.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xdf,0xe3]
or.nor.t %d14, %d1, 31, %d15, 7

# CHECK-INST: or.nor.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x5f,0xec]
or.nor.t %d14, %d1, 31, %d15, 24

# CHECK-INST: or.nor.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xdf,0xef]
or.nor.t %d14, %d1, 31, %d15, 31

# CHECK-INST: or.nor.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x40,0xe0]
or.nor.t %d14, %d14, 0, %d0, 0

# CHECK-INST: or.nor.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xc0,0xe3]
or.nor.t %d14, %d14, 0, %d0, 7

# CHECK-INST: or.nor.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x40,0xec]
or.nor.t %d14, %d14, 0, %d0, 24

# CHECK-INST: or.nor.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xc0,0xef]
or.nor.t %d14, %d14, 0, %d0, 31

# CHECK-INST: or.nor.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x40,0xe0]
or.nor.t %d14, %d14, 0, %d1, 0

# CHECK-INST: or.nor.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xc0,0xe3]
or.nor.t %d14, %d14, 0, %d1, 7

# CHECK-INST: or.nor.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x40,0xec]
or.nor.t %d14, %d14, 0, %d1, 24

# CHECK-INST: or.nor.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xc0,0xef]
or.nor.t %d14, %d14, 0, %d1, 31

# CHECK-INST: or.nor.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x40,0xe0]
or.nor.t %d14, %d14, 0, %d14, 0

# CHECK-INST: or.nor.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xc0,0xe3]
or.nor.t %d14, %d14, 0, %d14, 7

# CHECK-INST: or.nor.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x40,0xec]
or.nor.t %d14, %d14, 0, %d14, 24

# CHECK-INST: or.nor.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xc0,0xef]
or.nor.t %d14, %d14, 0, %d14, 31

# CHECK-INST: or.nor.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x40,0xe0]
or.nor.t %d14, %d14, 0, %d15, 0

# CHECK-INST: or.nor.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xc0,0xe3]
or.nor.t %d14, %d14, 0, %d15, 7

# CHECK-INST: or.nor.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x40,0xec]
or.nor.t %d14, %d14, 0, %d15, 24

# CHECK-INST: or.nor.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xc0,0xef]
or.nor.t %d14, %d14, 0, %d15, 31

# CHECK-INST: or.nor.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x47,0xe0]
or.nor.t %d14, %d14, 7, %d0, 0

# CHECK-INST: or.nor.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xc7,0xe3]
or.nor.t %d14, %d14, 7, %d0, 7

# CHECK-INST: or.nor.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x47,0xec]
or.nor.t %d14, %d14, 7, %d0, 24

# CHECK-INST: or.nor.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xc7,0xef]
or.nor.t %d14, %d14, 7, %d0, 31

# CHECK-INST: or.nor.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x47,0xe0]
or.nor.t %d14, %d14, 7, %d1, 0

# CHECK-INST: or.nor.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xc7,0xe3]
or.nor.t %d14, %d14, 7, %d1, 7

# CHECK-INST: or.nor.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x47,0xec]
or.nor.t %d14, %d14, 7, %d1, 24

# CHECK-INST: or.nor.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xc7,0xef]
or.nor.t %d14, %d14, 7, %d1, 31

# CHECK-INST: or.nor.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x47,0xe0]
or.nor.t %d14, %d14, 7, %d14, 0

# CHECK-INST: or.nor.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xc7,0xe3]
or.nor.t %d14, %d14, 7, %d14, 7

# CHECK-INST: or.nor.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x47,0xec]
or.nor.t %d14, %d14, 7, %d14, 24

# CHECK-INST: or.nor.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xc7,0xef]
or.nor.t %d14, %d14, 7, %d14, 31

# CHECK-INST: or.nor.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x47,0xe0]
or.nor.t %d14, %d14, 7, %d15, 0

# CHECK-INST: or.nor.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xc7,0xe3]
or.nor.t %d14, %d14, 7, %d15, 7

# CHECK-INST: or.nor.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x47,0xec]
or.nor.t %d14, %d14, 7, %d15, 24

# CHECK-INST: or.nor.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xc7,0xef]
or.nor.t %d14, %d14, 7, %d15, 31

# CHECK-INST: or.nor.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x58,0xe0]
or.nor.t %d14, %d14, 24, %d0, 0

# CHECK-INST: or.nor.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xd8,0xe3]
or.nor.t %d14, %d14, 24, %d0, 7

# CHECK-INST: or.nor.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x58,0xec]
or.nor.t %d14, %d14, 24, %d0, 24

# CHECK-INST: or.nor.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xd8,0xef]
or.nor.t %d14, %d14, 24, %d0, 31

# CHECK-INST: or.nor.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x58,0xe0]
or.nor.t %d14, %d14, 24, %d1, 0

# CHECK-INST: or.nor.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xd8,0xe3]
or.nor.t %d14, %d14, 24, %d1, 7

# CHECK-INST: or.nor.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x58,0xec]
or.nor.t %d14, %d14, 24, %d1, 24

# CHECK-INST: or.nor.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xd8,0xef]
or.nor.t %d14, %d14, 24, %d1, 31

# CHECK-INST: or.nor.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x58,0xe0]
or.nor.t %d14, %d14, 24, %d14, 0

# CHECK-INST: or.nor.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xd8,0xe3]
or.nor.t %d14, %d14, 24, %d14, 7

# CHECK-INST: or.nor.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x58,0xec]
or.nor.t %d14, %d14, 24, %d14, 24

# CHECK-INST: or.nor.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xd8,0xef]
or.nor.t %d14, %d14, 24, %d14, 31

# CHECK-INST: or.nor.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x58,0xe0]
or.nor.t %d14, %d14, 24, %d15, 0

# CHECK-INST: or.nor.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xd8,0xe3]
or.nor.t %d14, %d14, 24, %d15, 7

# CHECK-INST: or.nor.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x58,0xec]
or.nor.t %d14, %d14, 24, %d15, 24

# CHECK-INST: or.nor.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xd8,0xef]
or.nor.t %d14, %d14, 24, %d15, 31

# CHECK-INST: or.nor.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x5f,0xe0]
or.nor.t %d14, %d14, 31, %d0, 0

# CHECK-INST: or.nor.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xdf,0xe3]
or.nor.t %d14, %d14, 31, %d0, 7

# CHECK-INST: or.nor.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x5f,0xec]
or.nor.t %d14, %d14, 31, %d0, 24

# CHECK-INST: or.nor.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xdf,0xef]
or.nor.t %d14, %d14, 31, %d0, 31

# CHECK-INST: or.nor.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x5f,0xe0]
or.nor.t %d14, %d14, 31, %d1, 0

# CHECK-INST: or.nor.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xdf,0xe3]
or.nor.t %d14, %d14, 31, %d1, 7

# CHECK-INST: or.nor.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x5f,0xec]
or.nor.t %d14, %d14, 31, %d1, 24

# CHECK-INST: or.nor.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xdf,0xef]
or.nor.t %d14, %d14, 31, %d1, 31

# CHECK-INST: or.nor.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x5f,0xe0]
or.nor.t %d14, %d14, 31, %d14, 0

# CHECK-INST: or.nor.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xdf,0xe3]
or.nor.t %d14, %d14, 31, %d14, 7

# CHECK-INST: or.nor.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x5f,0xec]
or.nor.t %d14, %d14, 31, %d14, 24

# CHECK-INST: or.nor.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xdf,0xef]
or.nor.t %d14, %d14, 31, %d14, 31

# CHECK-INST: or.nor.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x5f,0xe0]
or.nor.t %d14, %d14, 31, %d15, 0

# CHECK-INST: or.nor.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xdf,0xe3]
or.nor.t %d14, %d14, 31, %d15, 7

# CHECK-INST: or.nor.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x5f,0xec]
or.nor.t %d14, %d14, 31, %d15, 24

# CHECK-INST: or.nor.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xdf,0xef]
or.nor.t %d14, %d14, 31, %d15, 31

# CHECK-INST: or.nor.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x40,0xe0]
or.nor.t %d14, %d15, 0, %d0, 0

# CHECK-INST: or.nor.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xc0,0xe3]
or.nor.t %d14, %d15, 0, %d0, 7

# CHECK-INST: or.nor.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x40,0xec]
or.nor.t %d14, %d15, 0, %d0, 24

# CHECK-INST: or.nor.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xc0,0xef]
or.nor.t %d14, %d15, 0, %d0, 31

# CHECK-INST: or.nor.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x40,0xe0]
or.nor.t %d14, %d15, 0, %d1, 0

# CHECK-INST: or.nor.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xc0,0xe3]
or.nor.t %d14, %d15, 0, %d1, 7

# CHECK-INST: or.nor.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x40,0xec]
or.nor.t %d14, %d15, 0, %d1, 24

# CHECK-INST: or.nor.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xc0,0xef]
or.nor.t %d14, %d15, 0, %d1, 31

# CHECK-INST: or.nor.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x40,0xe0]
or.nor.t %d14, %d15, 0, %d14, 0

# CHECK-INST: or.nor.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xc0,0xe3]
or.nor.t %d14, %d15, 0, %d14, 7

# CHECK-INST: or.nor.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x40,0xec]
or.nor.t %d14, %d15, 0, %d14, 24

# CHECK-INST: or.nor.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xc0,0xef]
or.nor.t %d14, %d15, 0, %d14, 31

# CHECK-INST: or.nor.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x40,0xe0]
or.nor.t %d14, %d15, 0, %d15, 0

# CHECK-INST: or.nor.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xc0,0xe3]
or.nor.t %d14, %d15, 0, %d15, 7

# CHECK-INST: or.nor.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x40,0xec]
or.nor.t %d14, %d15, 0, %d15, 24

# CHECK-INST: or.nor.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xc0,0xef]
or.nor.t %d14, %d15, 0, %d15, 31

# CHECK-INST: or.nor.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x47,0xe0]
or.nor.t %d14, %d15, 7, %d0, 0

# CHECK-INST: or.nor.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xc7,0xe3]
or.nor.t %d14, %d15, 7, %d0, 7

# CHECK-INST: or.nor.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x47,0xec]
or.nor.t %d14, %d15, 7, %d0, 24

# CHECK-INST: or.nor.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xc7,0xef]
or.nor.t %d14, %d15, 7, %d0, 31

# CHECK-INST: or.nor.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x47,0xe0]
or.nor.t %d14, %d15, 7, %d1, 0

# CHECK-INST: or.nor.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xc7,0xe3]
or.nor.t %d14, %d15, 7, %d1, 7

# CHECK-INST: or.nor.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x47,0xec]
or.nor.t %d14, %d15, 7, %d1, 24

# CHECK-INST: or.nor.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xc7,0xef]
or.nor.t %d14, %d15, 7, %d1, 31

# CHECK-INST: or.nor.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x47,0xe0]
or.nor.t %d14, %d15, 7, %d14, 0

# CHECK-INST: or.nor.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xc7,0xe3]
or.nor.t %d14, %d15, 7, %d14, 7

# CHECK-INST: or.nor.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x47,0xec]
or.nor.t %d14, %d15, 7, %d14, 24

# CHECK-INST: or.nor.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xc7,0xef]
or.nor.t %d14, %d15, 7, %d14, 31

# CHECK-INST: or.nor.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x47,0xe0]
or.nor.t %d14, %d15, 7, %d15, 0

# CHECK-INST: or.nor.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xc7,0xe3]
or.nor.t %d14, %d15, 7, %d15, 7

# CHECK-INST: or.nor.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x47,0xec]
or.nor.t %d14, %d15, 7, %d15, 24

# CHECK-INST: or.nor.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xc7,0xef]
or.nor.t %d14, %d15, 7, %d15, 31

# CHECK-INST: or.nor.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x58,0xe0]
or.nor.t %d14, %d15, 24, %d0, 0

# CHECK-INST: or.nor.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xd8,0xe3]
or.nor.t %d14, %d15, 24, %d0, 7

# CHECK-INST: or.nor.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x58,0xec]
or.nor.t %d14, %d15, 24, %d0, 24

# CHECK-INST: or.nor.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xd8,0xef]
or.nor.t %d14, %d15, 24, %d0, 31

# CHECK-INST: or.nor.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x58,0xe0]
or.nor.t %d14, %d15, 24, %d1, 0

# CHECK-INST: or.nor.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xd8,0xe3]
or.nor.t %d14, %d15, 24, %d1, 7

# CHECK-INST: or.nor.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x58,0xec]
or.nor.t %d14, %d15, 24, %d1, 24

# CHECK-INST: or.nor.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xd8,0xef]
or.nor.t %d14, %d15, 24, %d1, 31

# CHECK-INST: or.nor.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x58,0xe0]
or.nor.t %d14, %d15, 24, %d14, 0

# CHECK-INST: or.nor.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xd8,0xe3]
or.nor.t %d14, %d15, 24, %d14, 7

# CHECK-INST: or.nor.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x58,0xec]
or.nor.t %d14, %d15, 24, %d14, 24

# CHECK-INST: or.nor.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xd8,0xef]
or.nor.t %d14, %d15, 24, %d14, 31

# CHECK-INST: or.nor.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x58,0xe0]
or.nor.t %d14, %d15, 24, %d15, 0

# CHECK-INST: or.nor.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xd8,0xe3]
or.nor.t %d14, %d15, 24, %d15, 7

# CHECK-INST: or.nor.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x58,0xec]
or.nor.t %d14, %d15, 24, %d15, 24

# CHECK-INST: or.nor.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xd8,0xef]
or.nor.t %d14, %d15, 24, %d15, 31

# CHECK-INST: or.nor.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x5f,0xe0]
or.nor.t %d14, %d15, 31, %d0, 0

# CHECK-INST: or.nor.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xdf,0xe3]
or.nor.t %d14, %d15, 31, %d0, 7

# CHECK-INST: or.nor.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x5f,0xec]
or.nor.t %d14, %d15, 31, %d0, 24

# CHECK-INST: or.nor.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xdf,0xef]
or.nor.t %d14, %d15, 31, %d0, 31

# CHECK-INST: or.nor.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x5f,0xe0]
or.nor.t %d14, %d15, 31, %d1, 0

# CHECK-INST: or.nor.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xdf,0xe3]
or.nor.t %d14, %d15, 31, %d1, 7

# CHECK-INST: or.nor.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x5f,0xec]
or.nor.t %d14, %d15, 31, %d1, 24

# CHECK-INST: or.nor.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xdf,0xef]
or.nor.t %d14, %d15, 31, %d1, 31

# CHECK-INST: or.nor.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x5f,0xe0]
or.nor.t %d14, %d15, 31, %d14, 0

# CHECK-INST: or.nor.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xdf,0xe3]
or.nor.t %d14, %d15, 31, %d14, 7

# CHECK-INST: or.nor.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x5f,0xec]
or.nor.t %d14, %d15, 31, %d14, 24

# CHECK-INST: or.nor.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xdf,0xef]
or.nor.t %d14, %d15, 31, %d14, 31

# CHECK-INST: or.nor.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x5f,0xe0]
or.nor.t %d14, %d15, 31, %d15, 0

# CHECK-INST: or.nor.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xdf,0xe3]
or.nor.t %d14, %d15, 31, %d15, 7

# CHECK-INST: or.nor.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x5f,0xec]
or.nor.t %d14, %d15, 31, %d15, 24

# CHECK-INST: or.nor.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xdf,0xef]
or.nor.t %d14, %d15, 31, %d15, 31

# CHECK-INST: or.nor.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x40,0xf0]
or.nor.t %d15, %d0, 0, %d0, 0

# CHECK-INST: or.nor.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xc0,0xf3]
or.nor.t %d15, %d0, 0, %d0, 7

# CHECK-INST: or.nor.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x40,0xfc]
or.nor.t %d15, %d0, 0, %d0, 24

# CHECK-INST: or.nor.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xc0,0xff]
or.nor.t %d15, %d0, 0, %d0, 31

# CHECK-INST: or.nor.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x40,0xf0]
or.nor.t %d15, %d0, 0, %d1, 0

# CHECK-INST: or.nor.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xc0,0xf3]
or.nor.t %d15, %d0, 0, %d1, 7

# CHECK-INST: or.nor.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x40,0xfc]
or.nor.t %d15, %d0, 0, %d1, 24

# CHECK-INST: or.nor.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xc0,0xff]
or.nor.t %d15, %d0, 0, %d1, 31

# CHECK-INST: or.nor.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x40,0xf0]
or.nor.t %d15, %d0, 0, %d14, 0

# CHECK-INST: or.nor.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xc0,0xf3]
or.nor.t %d15, %d0, 0, %d14, 7

# CHECK-INST: or.nor.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x40,0xfc]
or.nor.t %d15, %d0, 0, %d14, 24

# CHECK-INST: or.nor.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xc0,0xff]
or.nor.t %d15, %d0, 0, %d14, 31

# CHECK-INST: or.nor.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x40,0xf0]
or.nor.t %d15, %d0, 0, %d15, 0

# CHECK-INST: or.nor.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xc0,0xf3]
or.nor.t %d15, %d0, 0, %d15, 7

# CHECK-INST: or.nor.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x40,0xfc]
or.nor.t %d15, %d0, 0, %d15, 24

# CHECK-INST: or.nor.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xc0,0xff]
or.nor.t %d15, %d0, 0, %d15, 31

# CHECK-INST: or.nor.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x47,0xf0]
or.nor.t %d15, %d0, 7, %d0, 0

# CHECK-INST: or.nor.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xc7,0xf3]
or.nor.t %d15, %d0, 7, %d0, 7

# CHECK-INST: or.nor.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x47,0xfc]
or.nor.t %d15, %d0, 7, %d0, 24

# CHECK-INST: or.nor.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xc7,0xff]
or.nor.t %d15, %d0, 7, %d0, 31

# CHECK-INST: or.nor.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x47,0xf0]
or.nor.t %d15, %d0, 7, %d1, 0

# CHECK-INST: or.nor.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xc7,0xf3]
or.nor.t %d15, %d0, 7, %d1, 7

# CHECK-INST: or.nor.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x47,0xfc]
or.nor.t %d15, %d0, 7, %d1, 24

# CHECK-INST: or.nor.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xc7,0xff]
or.nor.t %d15, %d0, 7, %d1, 31

# CHECK-INST: or.nor.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x47,0xf0]
or.nor.t %d15, %d0, 7, %d14, 0

# CHECK-INST: or.nor.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xc7,0xf3]
or.nor.t %d15, %d0, 7, %d14, 7

# CHECK-INST: or.nor.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x47,0xfc]
or.nor.t %d15, %d0, 7, %d14, 24

# CHECK-INST: or.nor.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xc7,0xff]
or.nor.t %d15, %d0, 7, %d14, 31

# CHECK-INST: or.nor.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x47,0xf0]
or.nor.t %d15, %d0, 7, %d15, 0

# CHECK-INST: or.nor.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xc7,0xf3]
or.nor.t %d15, %d0, 7, %d15, 7

# CHECK-INST: or.nor.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x47,0xfc]
or.nor.t %d15, %d0, 7, %d15, 24

# CHECK-INST: or.nor.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xc7,0xff]
or.nor.t %d15, %d0, 7, %d15, 31

# CHECK-INST: or.nor.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x58,0xf0]
or.nor.t %d15, %d0, 24, %d0, 0

# CHECK-INST: or.nor.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xd8,0xf3]
or.nor.t %d15, %d0, 24, %d0, 7

# CHECK-INST: or.nor.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x58,0xfc]
or.nor.t %d15, %d0, 24, %d0, 24

# CHECK-INST: or.nor.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xd8,0xff]
or.nor.t %d15, %d0, 24, %d0, 31

# CHECK-INST: or.nor.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x58,0xf0]
or.nor.t %d15, %d0, 24, %d1, 0

# CHECK-INST: or.nor.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xd8,0xf3]
or.nor.t %d15, %d0, 24, %d1, 7

# CHECK-INST: or.nor.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x58,0xfc]
or.nor.t %d15, %d0, 24, %d1, 24

# CHECK-INST: or.nor.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xd8,0xff]
or.nor.t %d15, %d0, 24, %d1, 31

# CHECK-INST: or.nor.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x58,0xf0]
or.nor.t %d15, %d0, 24, %d14, 0

# CHECK-INST: or.nor.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xd8,0xf3]
or.nor.t %d15, %d0, 24, %d14, 7

# CHECK-INST: or.nor.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x58,0xfc]
or.nor.t %d15, %d0, 24, %d14, 24

# CHECK-INST: or.nor.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xd8,0xff]
or.nor.t %d15, %d0, 24, %d14, 31

# CHECK-INST: or.nor.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x58,0xf0]
or.nor.t %d15, %d0, 24, %d15, 0

# CHECK-INST: or.nor.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xd8,0xf3]
or.nor.t %d15, %d0, 24, %d15, 7

# CHECK-INST: or.nor.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x58,0xfc]
or.nor.t %d15, %d0, 24, %d15, 24

# CHECK-INST: or.nor.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xd8,0xff]
or.nor.t %d15, %d0, 24, %d15, 31

# CHECK-INST: or.nor.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x5f,0xf0]
or.nor.t %d15, %d0, 31, %d0, 0

# CHECK-INST: or.nor.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xdf,0xf3]
or.nor.t %d15, %d0, 31, %d0, 7

# CHECK-INST: or.nor.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x5f,0xfc]
or.nor.t %d15, %d0, 31, %d0, 24

# CHECK-INST: or.nor.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xdf,0xff]
or.nor.t %d15, %d0, 31, %d0, 31

# CHECK-INST: or.nor.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x5f,0xf0]
or.nor.t %d15, %d0, 31, %d1, 0

# CHECK-INST: or.nor.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xdf,0xf3]
or.nor.t %d15, %d0, 31, %d1, 7

# CHECK-INST: or.nor.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x5f,0xfc]
or.nor.t %d15, %d0, 31, %d1, 24

# CHECK-INST: or.nor.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xdf,0xff]
or.nor.t %d15, %d0, 31, %d1, 31

# CHECK-INST: or.nor.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x5f,0xf0]
or.nor.t %d15, %d0, 31, %d14, 0

# CHECK-INST: or.nor.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xdf,0xf3]
or.nor.t %d15, %d0, 31, %d14, 7

# CHECK-INST: or.nor.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x5f,0xfc]
or.nor.t %d15, %d0, 31, %d14, 24

# CHECK-INST: or.nor.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xdf,0xff]
or.nor.t %d15, %d0, 31, %d14, 31

# CHECK-INST: or.nor.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x5f,0xf0]
or.nor.t %d15, %d0, 31, %d15, 0

# CHECK-INST: or.nor.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xdf,0xf3]
or.nor.t %d15, %d0, 31, %d15, 7

# CHECK-INST: or.nor.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x5f,0xfc]
or.nor.t %d15, %d0, 31, %d15, 24

# CHECK-INST: or.nor.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xdf,0xff]
or.nor.t %d15, %d0, 31, %d15, 31

# CHECK-INST: or.nor.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x40,0xf0]
or.nor.t %d15, %d1, 0, %d0, 0

# CHECK-INST: or.nor.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xc0,0xf3]
or.nor.t %d15, %d1, 0, %d0, 7

# CHECK-INST: or.nor.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x40,0xfc]
or.nor.t %d15, %d1, 0, %d0, 24

# CHECK-INST: or.nor.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xc0,0xff]
or.nor.t %d15, %d1, 0, %d0, 31

# CHECK-INST: or.nor.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x40,0xf0]
or.nor.t %d15, %d1, 0, %d1, 0

# CHECK-INST: or.nor.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xc0,0xf3]
or.nor.t %d15, %d1, 0, %d1, 7

# CHECK-INST: or.nor.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x40,0xfc]
or.nor.t %d15, %d1, 0, %d1, 24

# CHECK-INST: or.nor.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xc0,0xff]
or.nor.t %d15, %d1, 0, %d1, 31

# CHECK-INST: or.nor.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x40,0xf0]
or.nor.t %d15, %d1, 0, %d14, 0

# CHECK-INST: or.nor.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xc0,0xf3]
or.nor.t %d15, %d1, 0, %d14, 7

# CHECK-INST: or.nor.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x40,0xfc]
or.nor.t %d15, %d1, 0, %d14, 24

# CHECK-INST: or.nor.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xc0,0xff]
or.nor.t %d15, %d1, 0, %d14, 31

# CHECK-INST: or.nor.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x40,0xf0]
or.nor.t %d15, %d1, 0, %d15, 0

# CHECK-INST: or.nor.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xc0,0xf3]
or.nor.t %d15, %d1, 0, %d15, 7

# CHECK-INST: or.nor.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x40,0xfc]
or.nor.t %d15, %d1, 0, %d15, 24

# CHECK-INST: or.nor.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xc0,0xff]
or.nor.t %d15, %d1, 0, %d15, 31

# CHECK-INST: or.nor.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x47,0xf0]
or.nor.t %d15, %d1, 7, %d0, 0

# CHECK-INST: or.nor.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xc7,0xf3]
or.nor.t %d15, %d1, 7, %d0, 7

# CHECK-INST: or.nor.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x47,0xfc]
or.nor.t %d15, %d1, 7, %d0, 24

# CHECK-INST: or.nor.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xc7,0xff]
or.nor.t %d15, %d1, 7, %d0, 31

# CHECK-INST: or.nor.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x47,0xf0]
or.nor.t %d15, %d1, 7, %d1, 0

# CHECK-INST: or.nor.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xc7,0xf3]
or.nor.t %d15, %d1, 7, %d1, 7

# CHECK-INST: or.nor.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x47,0xfc]
or.nor.t %d15, %d1, 7, %d1, 24

# CHECK-INST: or.nor.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xc7,0xff]
or.nor.t %d15, %d1, 7, %d1, 31

# CHECK-INST: or.nor.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x47,0xf0]
or.nor.t %d15, %d1, 7, %d14, 0

# CHECK-INST: or.nor.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xc7,0xf3]
or.nor.t %d15, %d1, 7, %d14, 7

# CHECK-INST: or.nor.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x47,0xfc]
or.nor.t %d15, %d1, 7, %d14, 24

# CHECK-INST: or.nor.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xc7,0xff]
or.nor.t %d15, %d1, 7, %d14, 31

# CHECK-INST: or.nor.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x47,0xf0]
or.nor.t %d15, %d1, 7, %d15, 0

# CHECK-INST: or.nor.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xc7,0xf3]
or.nor.t %d15, %d1, 7, %d15, 7

# CHECK-INST: or.nor.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x47,0xfc]
or.nor.t %d15, %d1, 7, %d15, 24

# CHECK-INST: or.nor.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xc7,0xff]
or.nor.t %d15, %d1, 7, %d15, 31

# CHECK-INST: or.nor.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x58,0xf0]
or.nor.t %d15, %d1, 24, %d0, 0

# CHECK-INST: or.nor.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xd8,0xf3]
or.nor.t %d15, %d1, 24, %d0, 7

# CHECK-INST: or.nor.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x58,0xfc]
or.nor.t %d15, %d1, 24, %d0, 24

# CHECK-INST: or.nor.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xd8,0xff]
or.nor.t %d15, %d1, 24, %d0, 31

# CHECK-INST: or.nor.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x58,0xf0]
or.nor.t %d15, %d1, 24, %d1, 0

# CHECK-INST: or.nor.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xd8,0xf3]
or.nor.t %d15, %d1, 24, %d1, 7

# CHECK-INST: or.nor.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x58,0xfc]
or.nor.t %d15, %d1, 24, %d1, 24

# CHECK-INST: or.nor.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xd8,0xff]
or.nor.t %d15, %d1, 24, %d1, 31

# CHECK-INST: or.nor.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x58,0xf0]
or.nor.t %d15, %d1, 24, %d14, 0

# CHECK-INST: or.nor.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xd8,0xf3]
or.nor.t %d15, %d1, 24, %d14, 7

# CHECK-INST: or.nor.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x58,0xfc]
or.nor.t %d15, %d1, 24, %d14, 24

# CHECK-INST: or.nor.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xd8,0xff]
or.nor.t %d15, %d1, 24, %d14, 31

# CHECK-INST: or.nor.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x58,0xf0]
or.nor.t %d15, %d1, 24, %d15, 0

# CHECK-INST: or.nor.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xd8,0xf3]
or.nor.t %d15, %d1, 24, %d15, 7

# CHECK-INST: or.nor.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x58,0xfc]
or.nor.t %d15, %d1, 24, %d15, 24

# CHECK-INST: or.nor.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xd8,0xff]
or.nor.t %d15, %d1, 24, %d15, 31

# CHECK-INST: or.nor.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x5f,0xf0]
or.nor.t %d15, %d1, 31, %d0, 0

# CHECK-INST: or.nor.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xdf,0xf3]
or.nor.t %d15, %d1, 31, %d0, 7

# CHECK-INST: or.nor.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x5f,0xfc]
or.nor.t %d15, %d1, 31, %d0, 24

# CHECK-INST: or.nor.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xdf,0xff]
or.nor.t %d15, %d1, 31, %d0, 31

# CHECK-INST: or.nor.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x5f,0xf0]
or.nor.t %d15, %d1, 31, %d1, 0

# CHECK-INST: or.nor.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xdf,0xf3]
or.nor.t %d15, %d1, 31, %d1, 7

# CHECK-INST: or.nor.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x5f,0xfc]
or.nor.t %d15, %d1, 31, %d1, 24

# CHECK-INST: or.nor.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xdf,0xff]
or.nor.t %d15, %d1, 31, %d1, 31

# CHECK-INST: or.nor.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x5f,0xf0]
or.nor.t %d15, %d1, 31, %d14, 0

# CHECK-INST: or.nor.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xdf,0xf3]
or.nor.t %d15, %d1, 31, %d14, 7

# CHECK-INST: or.nor.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x5f,0xfc]
or.nor.t %d15, %d1, 31, %d14, 24

# CHECK-INST: or.nor.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xdf,0xff]
or.nor.t %d15, %d1, 31, %d14, 31

# CHECK-INST: or.nor.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x5f,0xf0]
or.nor.t %d15, %d1, 31, %d15, 0

# CHECK-INST: or.nor.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xdf,0xf3]
or.nor.t %d15, %d1, 31, %d15, 7

# CHECK-INST: or.nor.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x5f,0xfc]
or.nor.t %d15, %d1, 31, %d15, 24

# CHECK-INST: or.nor.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xdf,0xff]
or.nor.t %d15, %d1, 31, %d15, 31

# CHECK-INST: or.nor.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x40,0xf0]
or.nor.t %d15, %d14, 0, %d0, 0

# CHECK-INST: or.nor.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xc0,0xf3]
or.nor.t %d15, %d14, 0, %d0, 7

# CHECK-INST: or.nor.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x40,0xfc]
or.nor.t %d15, %d14, 0, %d0, 24

# CHECK-INST: or.nor.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xc0,0xff]
or.nor.t %d15, %d14, 0, %d0, 31

# CHECK-INST: or.nor.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x40,0xf0]
or.nor.t %d15, %d14, 0, %d1, 0

# CHECK-INST: or.nor.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xc0,0xf3]
or.nor.t %d15, %d14, 0, %d1, 7

# CHECK-INST: or.nor.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x40,0xfc]
or.nor.t %d15, %d14, 0, %d1, 24

# CHECK-INST: or.nor.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xc0,0xff]
or.nor.t %d15, %d14, 0, %d1, 31

# CHECK-INST: or.nor.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x40,0xf0]
or.nor.t %d15, %d14, 0, %d14, 0

# CHECK-INST: or.nor.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xc0,0xf3]
or.nor.t %d15, %d14, 0, %d14, 7

# CHECK-INST: or.nor.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x40,0xfc]
or.nor.t %d15, %d14, 0, %d14, 24

# CHECK-INST: or.nor.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xc0,0xff]
or.nor.t %d15, %d14, 0, %d14, 31

# CHECK-INST: or.nor.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x40,0xf0]
or.nor.t %d15, %d14, 0, %d15, 0

# CHECK-INST: or.nor.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xc0,0xf3]
or.nor.t %d15, %d14, 0, %d15, 7

# CHECK-INST: or.nor.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x40,0xfc]
or.nor.t %d15, %d14, 0, %d15, 24

# CHECK-INST: or.nor.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xc0,0xff]
or.nor.t %d15, %d14, 0, %d15, 31

# CHECK-INST: or.nor.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x47,0xf0]
or.nor.t %d15, %d14, 7, %d0, 0

# CHECK-INST: or.nor.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xc7,0xf3]
or.nor.t %d15, %d14, 7, %d0, 7

# CHECK-INST: or.nor.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x47,0xfc]
or.nor.t %d15, %d14, 7, %d0, 24

# CHECK-INST: or.nor.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xc7,0xff]
or.nor.t %d15, %d14, 7, %d0, 31

# CHECK-INST: or.nor.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x47,0xf0]
or.nor.t %d15, %d14, 7, %d1, 0

# CHECK-INST: or.nor.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xc7,0xf3]
or.nor.t %d15, %d14, 7, %d1, 7

# CHECK-INST: or.nor.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x47,0xfc]
or.nor.t %d15, %d14, 7, %d1, 24

# CHECK-INST: or.nor.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xc7,0xff]
or.nor.t %d15, %d14, 7, %d1, 31

# CHECK-INST: or.nor.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x47,0xf0]
or.nor.t %d15, %d14, 7, %d14, 0

# CHECK-INST: or.nor.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xc7,0xf3]
or.nor.t %d15, %d14, 7, %d14, 7

# CHECK-INST: or.nor.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x47,0xfc]
or.nor.t %d15, %d14, 7, %d14, 24

# CHECK-INST: or.nor.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xc7,0xff]
or.nor.t %d15, %d14, 7, %d14, 31

# CHECK-INST: or.nor.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x47,0xf0]
or.nor.t %d15, %d14, 7, %d15, 0

# CHECK-INST: or.nor.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xc7,0xf3]
or.nor.t %d15, %d14, 7, %d15, 7

# CHECK-INST: or.nor.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x47,0xfc]
or.nor.t %d15, %d14, 7, %d15, 24

# CHECK-INST: or.nor.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xc7,0xff]
or.nor.t %d15, %d14, 7, %d15, 31

# CHECK-INST: or.nor.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x58,0xf0]
or.nor.t %d15, %d14, 24, %d0, 0

# CHECK-INST: or.nor.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xd8,0xf3]
or.nor.t %d15, %d14, 24, %d0, 7

# CHECK-INST: or.nor.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x58,0xfc]
or.nor.t %d15, %d14, 24, %d0, 24

# CHECK-INST: or.nor.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xd8,0xff]
or.nor.t %d15, %d14, 24, %d0, 31

# CHECK-INST: or.nor.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x58,0xf0]
or.nor.t %d15, %d14, 24, %d1, 0

# CHECK-INST: or.nor.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xd8,0xf3]
or.nor.t %d15, %d14, 24, %d1, 7

# CHECK-INST: or.nor.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x58,0xfc]
or.nor.t %d15, %d14, 24, %d1, 24

# CHECK-INST: or.nor.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xd8,0xff]
or.nor.t %d15, %d14, 24, %d1, 31

# CHECK-INST: or.nor.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x58,0xf0]
or.nor.t %d15, %d14, 24, %d14, 0

# CHECK-INST: or.nor.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xd8,0xf3]
or.nor.t %d15, %d14, 24, %d14, 7

# CHECK-INST: or.nor.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x58,0xfc]
or.nor.t %d15, %d14, 24, %d14, 24

# CHECK-INST: or.nor.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xd8,0xff]
or.nor.t %d15, %d14, 24, %d14, 31

# CHECK-INST: or.nor.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x58,0xf0]
or.nor.t %d15, %d14, 24, %d15, 0

# CHECK-INST: or.nor.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xd8,0xf3]
or.nor.t %d15, %d14, 24, %d15, 7

# CHECK-INST: or.nor.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x58,0xfc]
or.nor.t %d15, %d14, 24, %d15, 24

# CHECK-INST: or.nor.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xd8,0xff]
or.nor.t %d15, %d14, 24, %d15, 31

# CHECK-INST: or.nor.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x5f,0xf0]
or.nor.t %d15, %d14, 31, %d0, 0

# CHECK-INST: or.nor.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xdf,0xf3]
or.nor.t %d15, %d14, 31, %d0, 7

# CHECK-INST: or.nor.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x5f,0xfc]
or.nor.t %d15, %d14, 31, %d0, 24

# CHECK-INST: or.nor.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xdf,0xff]
or.nor.t %d15, %d14, 31, %d0, 31

# CHECK-INST: or.nor.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x5f,0xf0]
or.nor.t %d15, %d14, 31, %d1, 0

# CHECK-INST: or.nor.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xdf,0xf3]
or.nor.t %d15, %d14, 31, %d1, 7

# CHECK-INST: or.nor.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x5f,0xfc]
or.nor.t %d15, %d14, 31, %d1, 24

# CHECK-INST: or.nor.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xdf,0xff]
or.nor.t %d15, %d14, 31, %d1, 31

# CHECK-INST: or.nor.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x5f,0xf0]
or.nor.t %d15, %d14, 31, %d14, 0

# CHECK-INST: or.nor.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xdf,0xf3]
or.nor.t %d15, %d14, 31, %d14, 7

# CHECK-INST: or.nor.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x5f,0xfc]
or.nor.t %d15, %d14, 31, %d14, 24

# CHECK-INST: or.nor.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xdf,0xff]
or.nor.t %d15, %d14, 31, %d14, 31

# CHECK-INST: or.nor.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x5f,0xf0]
or.nor.t %d15, %d14, 31, %d15, 0

# CHECK-INST: or.nor.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xdf,0xf3]
or.nor.t %d15, %d14, 31, %d15, 7

# CHECK-INST: or.nor.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x5f,0xfc]
or.nor.t %d15, %d14, 31, %d15, 24

# CHECK-INST: or.nor.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xdf,0xff]
or.nor.t %d15, %d14, 31, %d15, 31

# CHECK-INST: or.nor.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x40,0xf0]
or.nor.t %d15, %d15, 0, %d0, 0

# CHECK-INST: or.nor.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xc0,0xf3]
or.nor.t %d15, %d15, 0, %d0, 7

# CHECK-INST: or.nor.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x40,0xfc]
or.nor.t %d15, %d15, 0, %d0, 24

# CHECK-INST: or.nor.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xc0,0xff]
or.nor.t %d15, %d15, 0, %d0, 31

# CHECK-INST: or.nor.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x40,0xf0]
or.nor.t %d15, %d15, 0, %d1, 0

# CHECK-INST: or.nor.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xc0,0xf3]
or.nor.t %d15, %d15, 0, %d1, 7

# CHECK-INST: or.nor.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x40,0xfc]
or.nor.t %d15, %d15, 0, %d1, 24

# CHECK-INST: or.nor.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xc0,0xff]
or.nor.t %d15, %d15, 0, %d1, 31

# CHECK-INST: or.nor.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x40,0xf0]
or.nor.t %d15, %d15, 0, %d14, 0

# CHECK-INST: or.nor.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xc0,0xf3]
or.nor.t %d15, %d15, 0, %d14, 7

# CHECK-INST: or.nor.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x40,0xfc]
or.nor.t %d15, %d15, 0, %d14, 24

# CHECK-INST: or.nor.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xc0,0xff]
or.nor.t %d15, %d15, 0, %d14, 31

# CHECK-INST: or.nor.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x40,0xf0]
or.nor.t %d15, %d15, 0, %d15, 0

# CHECK-INST: or.nor.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xc0,0xf3]
or.nor.t %d15, %d15, 0, %d15, 7

# CHECK-INST: or.nor.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x40,0xfc]
or.nor.t %d15, %d15, 0, %d15, 24

# CHECK-INST: or.nor.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xc0,0xff]
or.nor.t %d15, %d15, 0, %d15, 31

# CHECK-INST: or.nor.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x47,0xf0]
or.nor.t %d15, %d15, 7, %d0, 0

# CHECK-INST: or.nor.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xc7,0xf3]
or.nor.t %d15, %d15, 7, %d0, 7

# CHECK-INST: or.nor.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x47,0xfc]
or.nor.t %d15, %d15, 7, %d0, 24

# CHECK-INST: or.nor.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xc7,0xff]
or.nor.t %d15, %d15, 7, %d0, 31

# CHECK-INST: or.nor.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x47,0xf0]
or.nor.t %d15, %d15, 7, %d1, 0

# CHECK-INST: or.nor.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xc7,0xf3]
or.nor.t %d15, %d15, 7, %d1, 7

# CHECK-INST: or.nor.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x47,0xfc]
or.nor.t %d15, %d15, 7, %d1, 24

# CHECK-INST: or.nor.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xc7,0xff]
or.nor.t %d15, %d15, 7, %d1, 31

# CHECK-INST: or.nor.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x47,0xf0]
or.nor.t %d15, %d15, 7, %d14, 0

# CHECK-INST: or.nor.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xc7,0xf3]
or.nor.t %d15, %d15, 7, %d14, 7

# CHECK-INST: or.nor.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x47,0xfc]
or.nor.t %d15, %d15, 7, %d14, 24

# CHECK-INST: or.nor.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xc7,0xff]
or.nor.t %d15, %d15, 7, %d14, 31

# CHECK-INST: or.nor.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x47,0xf0]
or.nor.t %d15, %d15, 7, %d15, 0

# CHECK-INST: or.nor.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xc7,0xf3]
or.nor.t %d15, %d15, 7, %d15, 7

# CHECK-INST: or.nor.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x47,0xfc]
or.nor.t %d15, %d15, 7, %d15, 24

# CHECK-INST: or.nor.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xc7,0xff]
or.nor.t %d15, %d15, 7, %d15, 31

# CHECK-INST: or.nor.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x58,0xf0]
or.nor.t %d15, %d15, 24, %d0, 0

# CHECK-INST: or.nor.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xd8,0xf3]
or.nor.t %d15, %d15, 24, %d0, 7

# CHECK-INST: or.nor.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x58,0xfc]
or.nor.t %d15, %d15, 24, %d0, 24

# CHECK-INST: or.nor.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xd8,0xff]
or.nor.t %d15, %d15, 24, %d0, 31

# CHECK-INST: or.nor.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x58,0xf0]
or.nor.t %d15, %d15, 24, %d1, 0

# CHECK-INST: or.nor.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xd8,0xf3]
or.nor.t %d15, %d15, 24, %d1, 7

# CHECK-INST: or.nor.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x58,0xfc]
or.nor.t %d15, %d15, 24, %d1, 24

# CHECK-INST: or.nor.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xd8,0xff]
or.nor.t %d15, %d15, 24, %d1, 31

# CHECK-INST: or.nor.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x58,0xf0]
or.nor.t %d15, %d15, 24, %d14, 0

# CHECK-INST: or.nor.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xd8,0xf3]
or.nor.t %d15, %d15, 24, %d14, 7

# CHECK-INST: or.nor.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x58,0xfc]
or.nor.t %d15, %d15, 24, %d14, 24

# CHECK-INST: or.nor.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xd8,0xff]
or.nor.t %d15, %d15, 24, %d14, 31

# CHECK-INST: or.nor.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x58,0xf0]
or.nor.t %d15, %d15, 24, %d15, 0

# CHECK-INST: or.nor.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xd8,0xf3]
or.nor.t %d15, %d15, 24, %d15, 7

# CHECK-INST: or.nor.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x58,0xfc]
or.nor.t %d15, %d15, 24, %d15, 24

# CHECK-INST: or.nor.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xd8,0xff]
or.nor.t %d15, %d15, 24, %d15, 31

# CHECK-INST: or.nor.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x5f,0xf0]
or.nor.t %d15, %d15, 31, %d0, 0

# CHECK-INST: or.nor.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xdf,0xf3]
or.nor.t %d15, %d15, 31, %d0, 7

# CHECK-INST: or.nor.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x5f,0xfc]
or.nor.t %d15, %d15, 31, %d0, 24

# CHECK-INST: or.nor.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xdf,0xff]
or.nor.t %d15, %d15, 31, %d0, 31

# CHECK-INST: or.nor.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x5f,0xf0]
or.nor.t %d15, %d15, 31, %d1, 0

# CHECK-INST: or.nor.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xdf,0xf3]
or.nor.t %d15, %d15, 31, %d1, 7

# CHECK-INST: or.nor.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x5f,0xfc]
or.nor.t %d15, %d15, 31, %d1, 24

# CHECK-INST: or.nor.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xdf,0xff]
or.nor.t %d15, %d15, 31, %d1, 31

# CHECK-INST: or.nor.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x5f,0xf0]
or.nor.t %d15, %d15, 31, %d14, 0

# CHECK-INST: or.nor.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xdf,0xf3]
or.nor.t %d15, %d15, 31, %d14, 7

# CHECK-INST: or.nor.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x5f,0xfc]
or.nor.t %d15, %d15, 31, %d14, 24

# CHECK-INST: or.nor.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xdf,0xff]
or.nor.t %d15, %d15, 31, %d14, 31

# CHECK-INST: or.nor.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x5f,0xf0]
or.nor.t %d15, %d15, 31, %d15, 0

# CHECK-INST: or.nor.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xdf,0xf3]
or.nor.t %d15, %d15, 31, %d15, 7

# CHECK-INST: or.nor.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x5f,0xfc]
or.nor.t %d15, %d15, 31, %d15, 24

# CHECK-INST: or.nor.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xdf,0xff]
or.nor.t %d15, %d15, 31, %d15, 31

# CHECK-INST: or.or.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x20,0x00]
or.or.t %d0, %d0, 0, %d0, 0

# CHECK-INST: or.or.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xa0,0x03]
or.or.t %d0, %d0, 0, %d0, 7

# CHECK-INST: or.or.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x20,0x0c]
or.or.t %d0, %d0, 0, %d0, 24

# CHECK-INST: or.or.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xa0,0x0f]
or.or.t %d0, %d0, 0, %d0, 31

# CHECK-INST: or.or.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x20,0x00]
or.or.t %d0, %d0, 0, %d1, 0

# CHECK-INST: or.or.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xa0,0x03]
or.or.t %d0, %d0, 0, %d1, 7

# CHECK-INST: or.or.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x20,0x0c]
or.or.t %d0, %d0, 0, %d1, 24

# CHECK-INST: or.or.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xa0,0x0f]
or.or.t %d0, %d0, 0, %d1, 31

# CHECK-INST: or.or.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x20,0x00]
or.or.t %d0, %d0, 0, %d14, 0

# CHECK-INST: or.or.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xa0,0x03]
or.or.t %d0, %d0, 0, %d14, 7

# CHECK-INST: or.or.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x20,0x0c]
or.or.t %d0, %d0, 0, %d14, 24

# CHECK-INST: or.or.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xa0,0x0f]
or.or.t %d0, %d0, 0, %d14, 31

# CHECK-INST: or.or.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x20,0x00]
or.or.t %d0, %d0, 0, %d15, 0

# CHECK-INST: or.or.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xa0,0x03]
or.or.t %d0, %d0, 0, %d15, 7

# CHECK-INST: or.or.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x20,0x0c]
or.or.t %d0, %d0, 0, %d15, 24

# CHECK-INST: or.or.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xa0,0x0f]
or.or.t %d0, %d0, 0, %d15, 31

# CHECK-INST: or.or.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x27,0x00]
or.or.t %d0, %d0, 7, %d0, 0

# CHECK-INST: or.or.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xa7,0x03]
or.or.t %d0, %d0, 7, %d0, 7

# CHECK-INST: or.or.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x27,0x0c]
or.or.t %d0, %d0, 7, %d0, 24

# CHECK-INST: or.or.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xa7,0x0f]
or.or.t %d0, %d0, 7, %d0, 31

# CHECK-INST: or.or.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x27,0x00]
or.or.t %d0, %d0, 7, %d1, 0

# CHECK-INST: or.or.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xa7,0x03]
or.or.t %d0, %d0, 7, %d1, 7

# CHECK-INST: or.or.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x27,0x0c]
or.or.t %d0, %d0, 7, %d1, 24

# CHECK-INST: or.or.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xa7,0x0f]
or.or.t %d0, %d0, 7, %d1, 31

# CHECK-INST: or.or.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x27,0x00]
or.or.t %d0, %d0, 7, %d14, 0

# CHECK-INST: or.or.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xa7,0x03]
or.or.t %d0, %d0, 7, %d14, 7

# CHECK-INST: or.or.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x27,0x0c]
or.or.t %d0, %d0, 7, %d14, 24

# CHECK-INST: or.or.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xa7,0x0f]
or.or.t %d0, %d0, 7, %d14, 31

# CHECK-INST: or.or.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x27,0x00]
or.or.t %d0, %d0, 7, %d15, 0

# CHECK-INST: or.or.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xa7,0x03]
or.or.t %d0, %d0, 7, %d15, 7

# CHECK-INST: or.or.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x27,0x0c]
or.or.t %d0, %d0, 7, %d15, 24

# CHECK-INST: or.or.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xa7,0x0f]
or.or.t %d0, %d0, 7, %d15, 31

# CHECK-INST: or.or.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x38,0x00]
or.or.t %d0, %d0, 24, %d0, 0

# CHECK-INST: or.or.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xb8,0x03]
or.or.t %d0, %d0, 24, %d0, 7

# CHECK-INST: or.or.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x38,0x0c]
or.or.t %d0, %d0, 24, %d0, 24

# CHECK-INST: or.or.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xb8,0x0f]
or.or.t %d0, %d0, 24, %d0, 31

# CHECK-INST: or.or.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x38,0x00]
or.or.t %d0, %d0, 24, %d1, 0

# CHECK-INST: or.or.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xb8,0x03]
or.or.t %d0, %d0, 24, %d1, 7

# CHECK-INST: or.or.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x38,0x0c]
or.or.t %d0, %d0, 24, %d1, 24

# CHECK-INST: or.or.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xb8,0x0f]
or.or.t %d0, %d0, 24, %d1, 31

# CHECK-INST: or.or.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x38,0x00]
or.or.t %d0, %d0, 24, %d14, 0

# CHECK-INST: or.or.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xb8,0x03]
or.or.t %d0, %d0, 24, %d14, 7

# CHECK-INST: or.or.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x38,0x0c]
or.or.t %d0, %d0, 24, %d14, 24

# CHECK-INST: or.or.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xb8,0x0f]
or.or.t %d0, %d0, 24, %d14, 31

# CHECK-INST: or.or.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x38,0x00]
or.or.t %d0, %d0, 24, %d15, 0

# CHECK-INST: or.or.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xb8,0x03]
or.or.t %d0, %d0, 24, %d15, 7

# CHECK-INST: or.or.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x38,0x0c]
or.or.t %d0, %d0, 24, %d15, 24

# CHECK-INST: or.or.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xb8,0x0f]
or.or.t %d0, %d0, 24, %d15, 31

# CHECK-INST: or.or.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x3f,0x00]
or.or.t %d0, %d0, 31, %d0, 0

# CHECK-INST: or.or.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xbf,0x03]
or.or.t %d0, %d0, 31, %d0, 7

# CHECK-INST: or.or.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x3f,0x0c]
or.or.t %d0, %d0, 31, %d0, 24

# CHECK-INST: or.or.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xbf,0x0f]
or.or.t %d0, %d0, 31, %d0, 31

# CHECK-INST: or.or.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x3f,0x00]
or.or.t %d0, %d0, 31, %d1, 0

# CHECK-INST: or.or.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xbf,0x03]
or.or.t %d0, %d0, 31, %d1, 7

# CHECK-INST: or.or.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x3f,0x0c]
or.or.t %d0, %d0, 31, %d1, 24

# CHECK-INST: or.or.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xbf,0x0f]
or.or.t %d0, %d0, 31, %d1, 31

# CHECK-INST: or.or.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x3f,0x00]
or.or.t %d0, %d0, 31, %d14, 0

# CHECK-INST: or.or.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xbf,0x03]
or.or.t %d0, %d0, 31, %d14, 7

# CHECK-INST: or.or.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x3f,0x0c]
or.or.t %d0, %d0, 31, %d14, 24

# CHECK-INST: or.or.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xbf,0x0f]
or.or.t %d0, %d0, 31, %d14, 31

# CHECK-INST: or.or.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x3f,0x00]
or.or.t %d0, %d0, 31, %d15, 0

# CHECK-INST: or.or.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xbf,0x03]
or.or.t %d0, %d0, 31, %d15, 7

# CHECK-INST: or.or.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x3f,0x0c]
or.or.t %d0, %d0, 31, %d15, 24

# CHECK-INST: or.or.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xbf,0x0f]
or.or.t %d0, %d0, 31, %d15, 31

# CHECK-INST: or.or.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x20,0x00]
or.or.t %d0, %d1, 0, %d0, 0

# CHECK-INST: or.or.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xa0,0x03]
or.or.t %d0, %d1, 0, %d0, 7

# CHECK-INST: or.or.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x20,0x0c]
or.or.t %d0, %d1, 0, %d0, 24

# CHECK-INST: or.or.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xa0,0x0f]
or.or.t %d0, %d1, 0, %d0, 31

# CHECK-INST: or.or.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x20,0x00]
or.or.t %d0, %d1, 0, %d1, 0

# CHECK-INST: or.or.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xa0,0x03]
or.or.t %d0, %d1, 0, %d1, 7

# CHECK-INST: or.or.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x20,0x0c]
or.or.t %d0, %d1, 0, %d1, 24

# CHECK-INST: or.or.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xa0,0x0f]
or.or.t %d0, %d1, 0, %d1, 31

# CHECK-INST: or.or.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x20,0x00]
or.or.t %d0, %d1, 0, %d14, 0

# CHECK-INST: or.or.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xa0,0x03]
or.or.t %d0, %d1, 0, %d14, 7

# CHECK-INST: or.or.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x20,0x0c]
or.or.t %d0, %d1, 0, %d14, 24

# CHECK-INST: or.or.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xa0,0x0f]
or.or.t %d0, %d1, 0, %d14, 31

# CHECK-INST: or.or.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x20,0x00]
or.or.t %d0, %d1, 0, %d15, 0

# CHECK-INST: or.or.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xa0,0x03]
or.or.t %d0, %d1, 0, %d15, 7

# CHECK-INST: or.or.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x20,0x0c]
or.or.t %d0, %d1, 0, %d15, 24

# CHECK-INST: or.or.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xa0,0x0f]
or.or.t %d0, %d1, 0, %d15, 31

# CHECK-INST: or.or.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x27,0x00]
or.or.t %d0, %d1, 7, %d0, 0

# CHECK-INST: or.or.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xa7,0x03]
or.or.t %d0, %d1, 7, %d0, 7

# CHECK-INST: or.or.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x27,0x0c]
or.or.t %d0, %d1, 7, %d0, 24

# CHECK-INST: or.or.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xa7,0x0f]
or.or.t %d0, %d1, 7, %d0, 31

# CHECK-INST: or.or.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x27,0x00]
or.or.t %d0, %d1, 7, %d1, 0

# CHECK-INST: or.or.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xa7,0x03]
or.or.t %d0, %d1, 7, %d1, 7

# CHECK-INST: or.or.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x27,0x0c]
or.or.t %d0, %d1, 7, %d1, 24

# CHECK-INST: or.or.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xa7,0x0f]
or.or.t %d0, %d1, 7, %d1, 31

# CHECK-INST: or.or.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x27,0x00]
or.or.t %d0, %d1, 7, %d14, 0

# CHECK-INST: or.or.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xa7,0x03]
or.or.t %d0, %d1, 7, %d14, 7

# CHECK-INST: or.or.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x27,0x0c]
or.or.t %d0, %d1, 7, %d14, 24

# CHECK-INST: or.or.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xa7,0x0f]
or.or.t %d0, %d1, 7, %d14, 31

# CHECK-INST: or.or.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x27,0x00]
or.or.t %d0, %d1, 7, %d15, 0

# CHECK-INST: or.or.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xa7,0x03]
or.or.t %d0, %d1, 7, %d15, 7

# CHECK-INST: or.or.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x27,0x0c]
or.or.t %d0, %d1, 7, %d15, 24

# CHECK-INST: or.or.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xa7,0x0f]
or.or.t %d0, %d1, 7, %d15, 31

# CHECK-INST: or.or.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x38,0x00]
or.or.t %d0, %d1, 24, %d0, 0

# CHECK-INST: or.or.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xb8,0x03]
or.or.t %d0, %d1, 24, %d0, 7

# CHECK-INST: or.or.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x38,0x0c]
or.or.t %d0, %d1, 24, %d0, 24

# CHECK-INST: or.or.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xb8,0x0f]
or.or.t %d0, %d1, 24, %d0, 31

# CHECK-INST: or.or.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x38,0x00]
or.or.t %d0, %d1, 24, %d1, 0

# CHECK-INST: or.or.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xb8,0x03]
or.or.t %d0, %d1, 24, %d1, 7

# CHECK-INST: or.or.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x38,0x0c]
or.or.t %d0, %d1, 24, %d1, 24

# CHECK-INST: or.or.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xb8,0x0f]
or.or.t %d0, %d1, 24, %d1, 31

# CHECK-INST: or.or.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x38,0x00]
or.or.t %d0, %d1, 24, %d14, 0

# CHECK-INST: or.or.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xb8,0x03]
or.or.t %d0, %d1, 24, %d14, 7

# CHECK-INST: or.or.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x38,0x0c]
or.or.t %d0, %d1, 24, %d14, 24

# CHECK-INST: or.or.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xb8,0x0f]
or.or.t %d0, %d1, 24, %d14, 31

# CHECK-INST: or.or.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x38,0x00]
or.or.t %d0, %d1, 24, %d15, 0

# CHECK-INST: or.or.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xb8,0x03]
or.or.t %d0, %d1, 24, %d15, 7

# CHECK-INST: or.or.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x38,0x0c]
or.or.t %d0, %d1, 24, %d15, 24

# CHECK-INST: or.or.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xb8,0x0f]
or.or.t %d0, %d1, 24, %d15, 31

# CHECK-INST: or.or.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x3f,0x00]
or.or.t %d0, %d1, 31, %d0, 0

# CHECK-INST: or.or.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xbf,0x03]
or.or.t %d0, %d1, 31, %d0, 7

# CHECK-INST: or.or.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x3f,0x0c]
or.or.t %d0, %d1, 31, %d0, 24

# CHECK-INST: or.or.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xbf,0x0f]
or.or.t %d0, %d1, 31, %d0, 31

# CHECK-INST: or.or.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x3f,0x00]
or.or.t %d0, %d1, 31, %d1, 0

# CHECK-INST: or.or.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xbf,0x03]
or.or.t %d0, %d1, 31, %d1, 7

# CHECK-INST: or.or.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x3f,0x0c]
or.or.t %d0, %d1, 31, %d1, 24

# CHECK-INST: or.or.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xbf,0x0f]
or.or.t %d0, %d1, 31, %d1, 31

# CHECK-INST: or.or.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x3f,0x00]
or.or.t %d0, %d1, 31, %d14, 0

# CHECK-INST: or.or.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xbf,0x03]
or.or.t %d0, %d1, 31, %d14, 7

# CHECK-INST: or.or.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x3f,0x0c]
or.or.t %d0, %d1, 31, %d14, 24

# CHECK-INST: or.or.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xbf,0x0f]
or.or.t %d0, %d1, 31, %d14, 31

# CHECK-INST: or.or.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x3f,0x00]
or.or.t %d0, %d1, 31, %d15, 0

# CHECK-INST: or.or.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xbf,0x03]
or.or.t %d0, %d1, 31, %d15, 7

# CHECK-INST: or.or.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x3f,0x0c]
or.or.t %d0, %d1, 31, %d15, 24

# CHECK-INST: or.or.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xbf,0x0f]
or.or.t %d0, %d1, 31, %d15, 31

# CHECK-INST: or.or.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x20,0x00]
or.or.t %d0, %d14, 0, %d0, 0

# CHECK-INST: or.or.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xa0,0x03]
or.or.t %d0, %d14, 0, %d0, 7

# CHECK-INST: or.or.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x20,0x0c]
or.or.t %d0, %d14, 0, %d0, 24

# CHECK-INST: or.or.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xa0,0x0f]
or.or.t %d0, %d14, 0, %d0, 31

# CHECK-INST: or.or.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x20,0x00]
or.or.t %d0, %d14, 0, %d1, 0

# CHECK-INST: or.or.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xa0,0x03]
or.or.t %d0, %d14, 0, %d1, 7

# CHECK-INST: or.or.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x20,0x0c]
or.or.t %d0, %d14, 0, %d1, 24

# CHECK-INST: or.or.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xa0,0x0f]
or.or.t %d0, %d14, 0, %d1, 31

# CHECK-INST: or.or.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x20,0x00]
or.or.t %d0, %d14, 0, %d14, 0

# CHECK-INST: or.or.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xa0,0x03]
or.or.t %d0, %d14, 0, %d14, 7

# CHECK-INST: or.or.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x20,0x0c]
or.or.t %d0, %d14, 0, %d14, 24

# CHECK-INST: or.or.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xa0,0x0f]
or.or.t %d0, %d14, 0, %d14, 31

# CHECK-INST: or.or.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x20,0x00]
or.or.t %d0, %d14, 0, %d15, 0

# CHECK-INST: or.or.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xa0,0x03]
or.or.t %d0, %d14, 0, %d15, 7

# CHECK-INST: or.or.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x20,0x0c]
or.or.t %d0, %d14, 0, %d15, 24

# CHECK-INST: or.or.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xa0,0x0f]
or.or.t %d0, %d14, 0, %d15, 31

# CHECK-INST: or.or.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x27,0x00]
or.or.t %d0, %d14, 7, %d0, 0

# CHECK-INST: or.or.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xa7,0x03]
or.or.t %d0, %d14, 7, %d0, 7

# CHECK-INST: or.or.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x27,0x0c]
or.or.t %d0, %d14, 7, %d0, 24

# CHECK-INST: or.or.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xa7,0x0f]
or.or.t %d0, %d14, 7, %d0, 31

# CHECK-INST: or.or.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x27,0x00]
or.or.t %d0, %d14, 7, %d1, 0

# CHECK-INST: or.or.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xa7,0x03]
or.or.t %d0, %d14, 7, %d1, 7

# CHECK-INST: or.or.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x27,0x0c]
or.or.t %d0, %d14, 7, %d1, 24

# CHECK-INST: or.or.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xa7,0x0f]
or.or.t %d0, %d14, 7, %d1, 31

# CHECK-INST: or.or.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x27,0x00]
or.or.t %d0, %d14, 7, %d14, 0

# CHECK-INST: or.or.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xa7,0x03]
or.or.t %d0, %d14, 7, %d14, 7

# CHECK-INST: or.or.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x27,0x0c]
or.or.t %d0, %d14, 7, %d14, 24

# CHECK-INST: or.or.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xa7,0x0f]
or.or.t %d0, %d14, 7, %d14, 31

# CHECK-INST: or.or.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x27,0x00]
or.or.t %d0, %d14, 7, %d15, 0

# CHECK-INST: or.or.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xa7,0x03]
or.or.t %d0, %d14, 7, %d15, 7

# CHECK-INST: or.or.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x27,0x0c]
or.or.t %d0, %d14, 7, %d15, 24

# CHECK-INST: or.or.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xa7,0x0f]
or.or.t %d0, %d14, 7, %d15, 31

# CHECK-INST: or.or.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x38,0x00]
or.or.t %d0, %d14, 24, %d0, 0

# CHECK-INST: or.or.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xb8,0x03]
or.or.t %d0, %d14, 24, %d0, 7

# CHECK-INST: or.or.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x38,0x0c]
or.or.t %d0, %d14, 24, %d0, 24

# CHECK-INST: or.or.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xb8,0x0f]
or.or.t %d0, %d14, 24, %d0, 31

# CHECK-INST: or.or.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x38,0x00]
or.or.t %d0, %d14, 24, %d1, 0

# CHECK-INST: or.or.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xb8,0x03]
or.or.t %d0, %d14, 24, %d1, 7

# CHECK-INST: or.or.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x38,0x0c]
or.or.t %d0, %d14, 24, %d1, 24

# CHECK-INST: or.or.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xb8,0x0f]
or.or.t %d0, %d14, 24, %d1, 31

# CHECK-INST: or.or.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x38,0x00]
or.or.t %d0, %d14, 24, %d14, 0

# CHECK-INST: or.or.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xb8,0x03]
or.or.t %d0, %d14, 24, %d14, 7

# CHECK-INST: or.or.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x38,0x0c]
or.or.t %d0, %d14, 24, %d14, 24

# CHECK-INST: or.or.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xb8,0x0f]
or.or.t %d0, %d14, 24, %d14, 31

# CHECK-INST: or.or.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x38,0x00]
or.or.t %d0, %d14, 24, %d15, 0

# CHECK-INST: or.or.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xb8,0x03]
or.or.t %d0, %d14, 24, %d15, 7

# CHECK-INST: or.or.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x38,0x0c]
or.or.t %d0, %d14, 24, %d15, 24

# CHECK-INST: or.or.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xb8,0x0f]
or.or.t %d0, %d14, 24, %d15, 31

# CHECK-INST: or.or.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x3f,0x00]
or.or.t %d0, %d14, 31, %d0, 0

# CHECK-INST: or.or.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xbf,0x03]
or.or.t %d0, %d14, 31, %d0, 7

# CHECK-INST: or.or.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x3f,0x0c]
or.or.t %d0, %d14, 31, %d0, 24

# CHECK-INST: or.or.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xbf,0x0f]
or.or.t %d0, %d14, 31, %d0, 31

# CHECK-INST: or.or.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x3f,0x00]
or.or.t %d0, %d14, 31, %d1, 0

# CHECK-INST: or.or.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xbf,0x03]
or.or.t %d0, %d14, 31, %d1, 7

# CHECK-INST: or.or.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x3f,0x0c]
or.or.t %d0, %d14, 31, %d1, 24

# CHECK-INST: or.or.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xbf,0x0f]
or.or.t %d0, %d14, 31, %d1, 31

# CHECK-INST: or.or.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x3f,0x00]
or.or.t %d0, %d14, 31, %d14, 0

# CHECK-INST: or.or.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xbf,0x03]
or.or.t %d0, %d14, 31, %d14, 7

# CHECK-INST: or.or.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x3f,0x0c]
or.or.t %d0, %d14, 31, %d14, 24

# CHECK-INST: or.or.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xbf,0x0f]
or.or.t %d0, %d14, 31, %d14, 31

# CHECK-INST: or.or.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x3f,0x00]
or.or.t %d0, %d14, 31, %d15, 0

# CHECK-INST: or.or.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xbf,0x03]
or.or.t %d0, %d14, 31, %d15, 7

# CHECK-INST: or.or.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x3f,0x0c]
or.or.t %d0, %d14, 31, %d15, 24

# CHECK-INST: or.or.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xbf,0x0f]
or.or.t %d0, %d14, 31, %d15, 31

# CHECK-INST: or.or.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x20,0x00]
or.or.t %d0, %d15, 0, %d0, 0

# CHECK-INST: or.or.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xa0,0x03]
or.or.t %d0, %d15, 0, %d0, 7

# CHECK-INST: or.or.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x20,0x0c]
or.or.t %d0, %d15, 0, %d0, 24

# CHECK-INST: or.or.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xa0,0x0f]
or.or.t %d0, %d15, 0, %d0, 31

# CHECK-INST: or.or.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x20,0x00]
or.or.t %d0, %d15, 0, %d1, 0

# CHECK-INST: or.or.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xa0,0x03]
or.or.t %d0, %d15, 0, %d1, 7

# CHECK-INST: or.or.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x20,0x0c]
or.or.t %d0, %d15, 0, %d1, 24

# CHECK-INST: or.or.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xa0,0x0f]
or.or.t %d0, %d15, 0, %d1, 31

# CHECK-INST: or.or.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x20,0x00]
or.or.t %d0, %d15, 0, %d14, 0

# CHECK-INST: or.or.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xa0,0x03]
or.or.t %d0, %d15, 0, %d14, 7

# CHECK-INST: or.or.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x20,0x0c]
or.or.t %d0, %d15, 0, %d14, 24

# CHECK-INST: or.or.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xa0,0x0f]
or.or.t %d0, %d15, 0, %d14, 31

# CHECK-INST: or.or.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x20,0x00]
or.or.t %d0, %d15, 0, %d15, 0

# CHECK-INST: or.or.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xa0,0x03]
or.or.t %d0, %d15, 0, %d15, 7

# CHECK-INST: or.or.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x20,0x0c]
or.or.t %d0, %d15, 0, %d15, 24

# CHECK-INST: or.or.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xa0,0x0f]
or.or.t %d0, %d15, 0, %d15, 31

# CHECK-INST: or.or.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x27,0x00]
or.or.t %d0, %d15, 7, %d0, 0

# CHECK-INST: or.or.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xa7,0x03]
or.or.t %d0, %d15, 7, %d0, 7

# CHECK-INST: or.or.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x27,0x0c]
or.or.t %d0, %d15, 7, %d0, 24

# CHECK-INST: or.or.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xa7,0x0f]
or.or.t %d0, %d15, 7, %d0, 31

# CHECK-INST: or.or.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x27,0x00]
or.or.t %d0, %d15, 7, %d1, 0

# CHECK-INST: or.or.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xa7,0x03]
or.or.t %d0, %d15, 7, %d1, 7

# CHECK-INST: or.or.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x27,0x0c]
or.or.t %d0, %d15, 7, %d1, 24

# CHECK-INST: or.or.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xa7,0x0f]
or.or.t %d0, %d15, 7, %d1, 31

# CHECK-INST: or.or.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x27,0x00]
or.or.t %d0, %d15, 7, %d14, 0

# CHECK-INST: or.or.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xa7,0x03]
or.or.t %d0, %d15, 7, %d14, 7

# CHECK-INST: or.or.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x27,0x0c]
or.or.t %d0, %d15, 7, %d14, 24

# CHECK-INST: or.or.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xa7,0x0f]
or.or.t %d0, %d15, 7, %d14, 31

# CHECK-INST: or.or.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x27,0x00]
or.or.t %d0, %d15, 7, %d15, 0

# CHECK-INST: or.or.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xa7,0x03]
or.or.t %d0, %d15, 7, %d15, 7

# CHECK-INST: or.or.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x27,0x0c]
or.or.t %d0, %d15, 7, %d15, 24

# CHECK-INST: or.or.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xa7,0x0f]
or.or.t %d0, %d15, 7, %d15, 31

# CHECK-INST: or.or.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x38,0x00]
or.or.t %d0, %d15, 24, %d0, 0

# CHECK-INST: or.or.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xb8,0x03]
or.or.t %d0, %d15, 24, %d0, 7

# CHECK-INST: or.or.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x38,0x0c]
or.or.t %d0, %d15, 24, %d0, 24

# CHECK-INST: or.or.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xb8,0x0f]
or.or.t %d0, %d15, 24, %d0, 31

# CHECK-INST: or.or.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x38,0x00]
or.or.t %d0, %d15, 24, %d1, 0

# CHECK-INST: or.or.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xb8,0x03]
or.or.t %d0, %d15, 24, %d1, 7

# CHECK-INST: or.or.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x38,0x0c]
or.or.t %d0, %d15, 24, %d1, 24

# CHECK-INST: or.or.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xb8,0x0f]
or.or.t %d0, %d15, 24, %d1, 31

# CHECK-INST: or.or.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x38,0x00]
or.or.t %d0, %d15, 24, %d14, 0

# CHECK-INST: or.or.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xb8,0x03]
or.or.t %d0, %d15, 24, %d14, 7

# CHECK-INST: or.or.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x38,0x0c]
or.or.t %d0, %d15, 24, %d14, 24

# CHECK-INST: or.or.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xb8,0x0f]
or.or.t %d0, %d15, 24, %d14, 31

# CHECK-INST: or.or.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x38,0x00]
or.or.t %d0, %d15, 24, %d15, 0

# CHECK-INST: or.or.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xb8,0x03]
or.or.t %d0, %d15, 24, %d15, 7

# CHECK-INST: or.or.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x38,0x0c]
or.or.t %d0, %d15, 24, %d15, 24

# CHECK-INST: or.or.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xb8,0x0f]
or.or.t %d0, %d15, 24, %d15, 31

# CHECK-INST: or.or.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x3f,0x00]
or.or.t %d0, %d15, 31, %d0, 0

# CHECK-INST: or.or.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xbf,0x03]
or.or.t %d0, %d15, 31, %d0, 7

# CHECK-INST: or.or.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x3f,0x0c]
or.or.t %d0, %d15, 31, %d0, 24

# CHECK-INST: or.or.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xbf,0x0f]
or.or.t %d0, %d15, 31, %d0, 31

# CHECK-INST: or.or.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x3f,0x00]
or.or.t %d0, %d15, 31, %d1, 0

# CHECK-INST: or.or.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xbf,0x03]
or.or.t %d0, %d15, 31, %d1, 7

# CHECK-INST: or.or.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x3f,0x0c]
or.or.t %d0, %d15, 31, %d1, 24

# CHECK-INST: or.or.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xbf,0x0f]
or.or.t %d0, %d15, 31, %d1, 31

# CHECK-INST: or.or.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x3f,0x00]
or.or.t %d0, %d15, 31, %d14, 0

# CHECK-INST: or.or.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xbf,0x03]
or.or.t %d0, %d15, 31, %d14, 7

# CHECK-INST: or.or.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x3f,0x0c]
or.or.t %d0, %d15, 31, %d14, 24

# CHECK-INST: or.or.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xbf,0x0f]
or.or.t %d0, %d15, 31, %d14, 31

# CHECK-INST: or.or.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x3f,0x00]
or.or.t %d0, %d15, 31, %d15, 0

# CHECK-INST: or.or.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xbf,0x03]
or.or.t %d0, %d15, 31, %d15, 7

# CHECK-INST: or.or.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x3f,0x0c]
or.or.t %d0, %d15, 31, %d15, 24

# CHECK-INST: or.or.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xbf,0x0f]
or.or.t %d0, %d15, 31, %d15, 31

# CHECK-INST: or.or.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x20,0x10]
or.or.t %d1, %d0, 0, %d0, 0

# CHECK-INST: or.or.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xa0,0x13]
or.or.t %d1, %d0, 0, %d0, 7

# CHECK-INST: or.or.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x20,0x1c]
or.or.t %d1, %d0, 0, %d0, 24

# CHECK-INST: or.or.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xa0,0x1f]
or.or.t %d1, %d0, 0, %d0, 31

# CHECK-INST: or.or.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x20,0x10]
or.or.t %d1, %d0, 0, %d1, 0

# CHECK-INST: or.or.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xa0,0x13]
or.or.t %d1, %d0, 0, %d1, 7

# CHECK-INST: or.or.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x20,0x1c]
or.or.t %d1, %d0, 0, %d1, 24

# CHECK-INST: or.or.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xa0,0x1f]
or.or.t %d1, %d0, 0, %d1, 31

# CHECK-INST: or.or.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x20,0x10]
or.or.t %d1, %d0, 0, %d14, 0

# CHECK-INST: or.or.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xa0,0x13]
or.or.t %d1, %d0, 0, %d14, 7

# CHECK-INST: or.or.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x20,0x1c]
or.or.t %d1, %d0, 0, %d14, 24

# CHECK-INST: or.or.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xa0,0x1f]
or.or.t %d1, %d0, 0, %d14, 31

# CHECK-INST: or.or.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x20,0x10]
or.or.t %d1, %d0, 0, %d15, 0

# CHECK-INST: or.or.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xa0,0x13]
or.or.t %d1, %d0, 0, %d15, 7

# CHECK-INST: or.or.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x20,0x1c]
or.or.t %d1, %d0, 0, %d15, 24

# CHECK-INST: or.or.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xa0,0x1f]
or.or.t %d1, %d0, 0, %d15, 31

# CHECK-INST: or.or.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x27,0x10]
or.or.t %d1, %d0, 7, %d0, 0

# CHECK-INST: or.or.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xa7,0x13]
or.or.t %d1, %d0, 7, %d0, 7

# CHECK-INST: or.or.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x27,0x1c]
or.or.t %d1, %d0, 7, %d0, 24

# CHECK-INST: or.or.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xa7,0x1f]
or.or.t %d1, %d0, 7, %d0, 31

# CHECK-INST: or.or.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x27,0x10]
or.or.t %d1, %d0, 7, %d1, 0

# CHECK-INST: or.or.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xa7,0x13]
or.or.t %d1, %d0, 7, %d1, 7

# CHECK-INST: or.or.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x27,0x1c]
or.or.t %d1, %d0, 7, %d1, 24

# CHECK-INST: or.or.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xa7,0x1f]
or.or.t %d1, %d0, 7, %d1, 31

# CHECK-INST: or.or.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x27,0x10]
or.or.t %d1, %d0, 7, %d14, 0

# CHECK-INST: or.or.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xa7,0x13]
or.or.t %d1, %d0, 7, %d14, 7

# CHECK-INST: or.or.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x27,0x1c]
or.or.t %d1, %d0, 7, %d14, 24

# CHECK-INST: or.or.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xa7,0x1f]
or.or.t %d1, %d0, 7, %d14, 31

# CHECK-INST: or.or.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x27,0x10]
or.or.t %d1, %d0, 7, %d15, 0

# CHECK-INST: or.or.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xa7,0x13]
or.or.t %d1, %d0, 7, %d15, 7

# CHECK-INST: or.or.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x27,0x1c]
or.or.t %d1, %d0, 7, %d15, 24

# CHECK-INST: or.or.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xa7,0x1f]
or.or.t %d1, %d0, 7, %d15, 31

# CHECK-INST: or.or.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x38,0x10]
or.or.t %d1, %d0, 24, %d0, 0

# CHECK-INST: or.or.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xb8,0x13]
or.or.t %d1, %d0, 24, %d0, 7

# CHECK-INST: or.or.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x38,0x1c]
or.or.t %d1, %d0, 24, %d0, 24

# CHECK-INST: or.or.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xb8,0x1f]
or.or.t %d1, %d0, 24, %d0, 31

# CHECK-INST: or.or.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x38,0x10]
or.or.t %d1, %d0, 24, %d1, 0

# CHECK-INST: or.or.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xb8,0x13]
or.or.t %d1, %d0, 24, %d1, 7

# CHECK-INST: or.or.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x38,0x1c]
or.or.t %d1, %d0, 24, %d1, 24

# CHECK-INST: or.or.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xb8,0x1f]
or.or.t %d1, %d0, 24, %d1, 31

# CHECK-INST: or.or.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x38,0x10]
or.or.t %d1, %d0, 24, %d14, 0

# CHECK-INST: or.or.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xb8,0x13]
or.or.t %d1, %d0, 24, %d14, 7

# CHECK-INST: or.or.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x38,0x1c]
or.or.t %d1, %d0, 24, %d14, 24

# CHECK-INST: or.or.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xb8,0x1f]
or.or.t %d1, %d0, 24, %d14, 31

# CHECK-INST: or.or.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x38,0x10]
or.or.t %d1, %d0, 24, %d15, 0

# CHECK-INST: or.or.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xb8,0x13]
or.or.t %d1, %d0, 24, %d15, 7

# CHECK-INST: or.or.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x38,0x1c]
or.or.t %d1, %d0, 24, %d15, 24

# CHECK-INST: or.or.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xb8,0x1f]
or.or.t %d1, %d0, 24, %d15, 31

# CHECK-INST: or.or.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x3f,0x10]
or.or.t %d1, %d0, 31, %d0, 0

# CHECK-INST: or.or.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xbf,0x13]
or.or.t %d1, %d0, 31, %d0, 7

# CHECK-INST: or.or.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x3f,0x1c]
or.or.t %d1, %d0, 31, %d0, 24

# CHECK-INST: or.or.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xbf,0x1f]
or.or.t %d1, %d0, 31, %d0, 31

# CHECK-INST: or.or.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x3f,0x10]
or.or.t %d1, %d0, 31, %d1, 0

# CHECK-INST: or.or.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xbf,0x13]
or.or.t %d1, %d0, 31, %d1, 7

# CHECK-INST: or.or.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x3f,0x1c]
or.or.t %d1, %d0, 31, %d1, 24

# CHECK-INST: or.or.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xbf,0x1f]
or.or.t %d1, %d0, 31, %d1, 31

# CHECK-INST: or.or.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x3f,0x10]
or.or.t %d1, %d0, 31, %d14, 0

# CHECK-INST: or.or.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xbf,0x13]
or.or.t %d1, %d0, 31, %d14, 7

# CHECK-INST: or.or.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x3f,0x1c]
or.or.t %d1, %d0, 31, %d14, 24

# CHECK-INST: or.or.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xbf,0x1f]
or.or.t %d1, %d0, 31, %d14, 31

# CHECK-INST: or.or.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x3f,0x10]
or.or.t %d1, %d0, 31, %d15, 0

# CHECK-INST: or.or.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xbf,0x13]
or.or.t %d1, %d0, 31, %d15, 7

# CHECK-INST: or.or.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x3f,0x1c]
or.or.t %d1, %d0, 31, %d15, 24

# CHECK-INST: or.or.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xbf,0x1f]
or.or.t %d1, %d0, 31, %d15, 31

# CHECK-INST: or.or.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x20,0x10]
or.or.t %d1, %d1, 0, %d0, 0

# CHECK-INST: or.or.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xa0,0x13]
or.or.t %d1, %d1, 0, %d0, 7

# CHECK-INST: or.or.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x20,0x1c]
or.or.t %d1, %d1, 0, %d0, 24

# CHECK-INST: or.or.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xa0,0x1f]
or.or.t %d1, %d1, 0, %d0, 31

# CHECK-INST: or.or.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x20,0x10]
or.or.t %d1, %d1, 0, %d1, 0

# CHECK-INST: or.or.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xa0,0x13]
or.or.t %d1, %d1, 0, %d1, 7

# CHECK-INST: or.or.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x20,0x1c]
or.or.t %d1, %d1, 0, %d1, 24

# CHECK-INST: or.or.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xa0,0x1f]
or.or.t %d1, %d1, 0, %d1, 31

# CHECK-INST: or.or.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x20,0x10]
or.or.t %d1, %d1, 0, %d14, 0

# CHECK-INST: or.or.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xa0,0x13]
or.or.t %d1, %d1, 0, %d14, 7

# CHECK-INST: or.or.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x20,0x1c]
or.or.t %d1, %d1, 0, %d14, 24

# CHECK-INST: or.or.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xa0,0x1f]
or.or.t %d1, %d1, 0, %d14, 31

# CHECK-INST: or.or.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x20,0x10]
or.or.t %d1, %d1, 0, %d15, 0

# CHECK-INST: or.or.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xa0,0x13]
or.or.t %d1, %d1, 0, %d15, 7

# CHECK-INST: or.or.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x20,0x1c]
or.or.t %d1, %d1, 0, %d15, 24

# CHECK-INST: or.or.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xa0,0x1f]
or.or.t %d1, %d1, 0, %d15, 31

# CHECK-INST: or.or.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x27,0x10]
or.or.t %d1, %d1, 7, %d0, 0

# CHECK-INST: or.or.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xa7,0x13]
or.or.t %d1, %d1, 7, %d0, 7

# CHECK-INST: or.or.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x27,0x1c]
or.or.t %d1, %d1, 7, %d0, 24

# CHECK-INST: or.or.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xa7,0x1f]
or.or.t %d1, %d1, 7, %d0, 31

# CHECK-INST: or.or.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x27,0x10]
or.or.t %d1, %d1, 7, %d1, 0

# CHECK-INST: or.or.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xa7,0x13]
or.or.t %d1, %d1, 7, %d1, 7

# CHECK-INST: or.or.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x27,0x1c]
or.or.t %d1, %d1, 7, %d1, 24

# CHECK-INST: or.or.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xa7,0x1f]
or.or.t %d1, %d1, 7, %d1, 31

# CHECK-INST: or.or.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x27,0x10]
or.or.t %d1, %d1, 7, %d14, 0

# CHECK-INST: or.or.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xa7,0x13]
or.or.t %d1, %d1, 7, %d14, 7

# CHECK-INST: or.or.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x27,0x1c]
or.or.t %d1, %d1, 7, %d14, 24

# CHECK-INST: or.or.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xa7,0x1f]
or.or.t %d1, %d1, 7, %d14, 31

# CHECK-INST: or.or.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x27,0x10]
or.or.t %d1, %d1, 7, %d15, 0

# CHECK-INST: or.or.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xa7,0x13]
or.or.t %d1, %d1, 7, %d15, 7

# CHECK-INST: or.or.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x27,0x1c]
or.or.t %d1, %d1, 7, %d15, 24

# CHECK-INST: or.or.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xa7,0x1f]
or.or.t %d1, %d1, 7, %d15, 31

# CHECK-INST: or.or.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x38,0x10]
or.or.t %d1, %d1, 24, %d0, 0

# CHECK-INST: or.or.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xb8,0x13]
or.or.t %d1, %d1, 24, %d0, 7

# CHECK-INST: or.or.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x38,0x1c]
or.or.t %d1, %d1, 24, %d0, 24

# CHECK-INST: or.or.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xb8,0x1f]
or.or.t %d1, %d1, 24, %d0, 31

# CHECK-INST: or.or.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x38,0x10]
or.or.t %d1, %d1, 24, %d1, 0

# CHECK-INST: or.or.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xb8,0x13]
or.or.t %d1, %d1, 24, %d1, 7

# CHECK-INST: or.or.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x38,0x1c]
or.or.t %d1, %d1, 24, %d1, 24

# CHECK-INST: or.or.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xb8,0x1f]
or.or.t %d1, %d1, 24, %d1, 31

# CHECK-INST: or.or.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x38,0x10]
or.or.t %d1, %d1, 24, %d14, 0

# CHECK-INST: or.or.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xb8,0x13]
or.or.t %d1, %d1, 24, %d14, 7

# CHECK-INST: or.or.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x38,0x1c]
or.or.t %d1, %d1, 24, %d14, 24

# CHECK-INST: or.or.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xb8,0x1f]
or.or.t %d1, %d1, 24, %d14, 31

# CHECK-INST: or.or.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x38,0x10]
or.or.t %d1, %d1, 24, %d15, 0

# CHECK-INST: or.or.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xb8,0x13]
or.or.t %d1, %d1, 24, %d15, 7

# CHECK-INST: or.or.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x38,0x1c]
or.or.t %d1, %d1, 24, %d15, 24

# CHECK-INST: or.or.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xb8,0x1f]
or.or.t %d1, %d1, 24, %d15, 31

# CHECK-INST: or.or.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x3f,0x10]
or.or.t %d1, %d1, 31, %d0, 0

# CHECK-INST: or.or.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xbf,0x13]
or.or.t %d1, %d1, 31, %d0, 7

# CHECK-INST: or.or.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x3f,0x1c]
or.or.t %d1, %d1, 31, %d0, 24

# CHECK-INST: or.or.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xbf,0x1f]
or.or.t %d1, %d1, 31, %d0, 31

# CHECK-INST: or.or.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x3f,0x10]
or.or.t %d1, %d1, 31, %d1, 0

# CHECK-INST: or.or.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xbf,0x13]
or.or.t %d1, %d1, 31, %d1, 7

# CHECK-INST: or.or.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x3f,0x1c]
or.or.t %d1, %d1, 31, %d1, 24

# CHECK-INST: or.or.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xbf,0x1f]
or.or.t %d1, %d1, 31, %d1, 31

# CHECK-INST: or.or.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x3f,0x10]
or.or.t %d1, %d1, 31, %d14, 0

# CHECK-INST: or.or.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xbf,0x13]
or.or.t %d1, %d1, 31, %d14, 7

# CHECK-INST: or.or.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x3f,0x1c]
or.or.t %d1, %d1, 31, %d14, 24

# CHECK-INST: or.or.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xbf,0x1f]
or.or.t %d1, %d1, 31, %d14, 31

# CHECK-INST: or.or.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x3f,0x10]
or.or.t %d1, %d1, 31, %d15, 0

# CHECK-INST: or.or.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xbf,0x13]
or.or.t %d1, %d1, 31, %d15, 7

# CHECK-INST: or.or.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x3f,0x1c]
or.or.t %d1, %d1, 31, %d15, 24

# CHECK-INST: or.or.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xbf,0x1f]
or.or.t %d1, %d1, 31, %d15, 31

# CHECK-INST: or.or.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x20,0x10]
or.or.t %d1, %d14, 0, %d0, 0

# CHECK-INST: or.or.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xa0,0x13]
or.or.t %d1, %d14, 0, %d0, 7

# CHECK-INST: or.or.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x20,0x1c]
or.or.t %d1, %d14, 0, %d0, 24

# CHECK-INST: or.or.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xa0,0x1f]
or.or.t %d1, %d14, 0, %d0, 31

# CHECK-INST: or.or.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x20,0x10]
or.or.t %d1, %d14, 0, %d1, 0

# CHECK-INST: or.or.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xa0,0x13]
or.or.t %d1, %d14, 0, %d1, 7

# CHECK-INST: or.or.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x20,0x1c]
or.or.t %d1, %d14, 0, %d1, 24

# CHECK-INST: or.or.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xa0,0x1f]
or.or.t %d1, %d14, 0, %d1, 31

# CHECK-INST: or.or.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x20,0x10]
or.or.t %d1, %d14, 0, %d14, 0

# CHECK-INST: or.or.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xa0,0x13]
or.or.t %d1, %d14, 0, %d14, 7

# CHECK-INST: or.or.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x20,0x1c]
or.or.t %d1, %d14, 0, %d14, 24

# CHECK-INST: or.or.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xa0,0x1f]
or.or.t %d1, %d14, 0, %d14, 31

# CHECK-INST: or.or.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x20,0x10]
or.or.t %d1, %d14, 0, %d15, 0

# CHECK-INST: or.or.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xa0,0x13]
or.or.t %d1, %d14, 0, %d15, 7

# CHECK-INST: or.or.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x20,0x1c]
or.or.t %d1, %d14, 0, %d15, 24

# CHECK-INST: or.or.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xa0,0x1f]
or.or.t %d1, %d14, 0, %d15, 31

# CHECK-INST: or.or.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x27,0x10]
or.or.t %d1, %d14, 7, %d0, 0

# CHECK-INST: or.or.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xa7,0x13]
or.or.t %d1, %d14, 7, %d0, 7

# CHECK-INST: or.or.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x27,0x1c]
or.or.t %d1, %d14, 7, %d0, 24

# CHECK-INST: or.or.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xa7,0x1f]
or.or.t %d1, %d14, 7, %d0, 31

# CHECK-INST: or.or.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x27,0x10]
or.or.t %d1, %d14, 7, %d1, 0

# CHECK-INST: or.or.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xa7,0x13]
or.or.t %d1, %d14, 7, %d1, 7

# CHECK-INST: or.or.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x27,0x1c]
or.or.t %d1, %d14, 7, %d1, 24

# CHECK-INST: or.or.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xa7,0x1f]
or.or.t %d1, %d14, 7, %d1, 31

# CHECK-INST: or.or.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x27,0x10]
or.or.t %d1, %d14, 7, %d14, 0

# CHECK-INST: or.or.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xa7,0x13]
or.or.t %d1, %d14, 7, %d14, 7

# CHECK-INST: or.or.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x27,0x1c]
or.or.t %d1, %d14, 7, %d14, 24

# CHECK-INST: or.or.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xa7,0x1f]
or.or.t %d1, %d14, 7, %d14, 31

# CHECK-INST: or.or.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x27,0x10]
or.or.t %d1, %d14, 7, %d15, 0

# CHECK-INST: or.or.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xa7,0x13]
or.or.t %d1, %d14, 7, %d15, 7

# CHECK-INST: or.or.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x27,0x1c]
or.or.t %d1, %d14, 7, %d15, 24

# CHECK-INST: or.or.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xa7,0x1f]
or.or.t %d1, %d14, 7, %d15, 31

# CHECK-INST: or.or.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x38,0x10]
or.or.t %d1, %d14, 24, %d0, 0

# CHECK-INST: or.or.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xb8,0x13]
or.or.t %d1, %d14, 24, %d0, 7

# CHECK-INST: or.or.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x38,0x1c]
or.or.t %d1, %d14, 24, %d0, 24

# CHECK-INST: or.or.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xb8,0x1f]
or.or.t %d1, %d14, 24, %d0, 31

# CHECK-INST: or.or.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x38,0x10]
or.or.t %d1, %d14, 24, %d1, 0

# CHECK-INST: or.or.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xb8,0x13]
or.or.t %d1, %d14, 24, %d1, 7

# CHECK-INST: or.or.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x38,0x1c]
or.or.t %d1, %d14, 24, %d1, 24

# CHECK-INST: or.or.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xb8,0x1f]
or.or.t %d1, %d14, 24, %d1, 31

# CHECK-INST: or.or.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x38,0x10]
or.or.t %d1, %d14, 24, %d14, 0

# CHECK-INST: or.or.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xb8,0x13]
or.or.t %d1, %d14, 24, %d14, 7

# CHECK-INST: or.or.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x38,0x1c]
or.or.t %d1, %d14, 24, %d14, 24

# CHECK-INST: or.or.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xb8,0x1f]
or.or.t %d1, %d14, 24, %d14, 31

# CHECK-INST: or.or.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x38,0x10]
or.or.t %d1, %d14, 24, %d15, 0

# CHECK-INST: or.or.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xb8,0x13]
or.or.t %d1, %d14, 24, %d15, 7

# CHECK-INST: or.or.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x38,0x1c]
or.or.t %d1, %d14, 24, %d15, 24

# CHECK-INST: or.or.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xb8,0x1f]
or.or.t %d1, %d14, 24, %d15, 31

# CHECK-INST: or.or.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x3f,0x10]
or.or.t %d1, %d14, 31, %d0, 0

# CHECK-INST: or.or.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xbf,0x13]
or.or.t %d1, %d14, 31, %d0, 7

# CHECK-INST: or.or.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x3f,0x1c]
or.or.t %d1, %d14, 31, %d0, 24

# CHECK-INST: or.or.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xbf,0x1f]
or.or.t %d1, %d14, 31, %d0, 31

# CHECK-INST: or.or.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x3f,0x10]
or.or.t %d1, %d14, 31, %d1, 0

# CHECK-INST: or.or.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xbf,0x13]
or.or.t %d1, %d14, 31, %d1, 7

# CHECK-INST: or.or.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x3f,0x1c]
or.or.t %d1, %d14, 31, %d1, 24

# CHECK-INST: or.or.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xbf,0x1f]
or.or.t %d1, %d14, 31, %d1, 31

# CHECK-INST: or.or.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x3f,0x10]
or.or.t %d1, %d14, 31, %d14, 0

# CHECK-INST: or.or.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xbf,0x13]
or.or.t %d1, %d14, 31, %d14, 7

# CHECK-INST: or.or.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x3f,0x1c]
or.or.t %d1, %d14, 31, %d14, 24

# CHECK-INST: or.or.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xbf,0x1f]
or.or.t %d1, %d14, 31, %d14, 31

# CHECK-INST: or.or.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x3f,0x10]
or.or.t %d1, %d14, 31, %d15, 0

# CHECK-INST: or.or.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xbf,0x13]
or.or.t %d1, %d14, 31, %d15, 7

# CHECK-INST: or.or.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x3f,0x1c]
or.or.t %d1, %d14, 31, %d15, 24

# CHECK-INST: or.or.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xbf,0x1f]
or.or.t %d1, %d14, 31, %d15, 31

# CHECK-INST: or.or.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x20,0x10]
or.or.t %d1, %d15, 0, %d0, 0

# CHECK-INST: or.or.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xa0,0x13]
or.or.t %d1, %d15, 0, %d0, 7

# CHECK-INST: or.or.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x20,0x1c]
or.or.t %d1, %d15, 0, %d0, 24

# CHECK-INST: or.or.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xa0,0x1f]
or.or.t %d1, %d15, 0, %d0, 31

# CHECK-INST: or.or.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x20,0x10]
or.or.t %d1, %d15, 0, %d1, 0

# CHECK-INST: or.or.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xa0,0x13]
or.or.t %d1, %d15, 0, %d1, 7

# CHECK-INST: or.or.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x20,0x1c]
or.or.t %d1, %d15, 0, %d1, 24

# CHECK-INST: or.or.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xa0,0x1f]
or.or.t %d1, %d15, 0, %d1, 31

# CHECK-INST: or.or.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x20,0x10]
or.or.t %d1, %d15, 0, %d14, 0

# CHECK-INST: or.or.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xa0,0x13]
or.or.t %d1, %d15, 0, %d14, 7

# CHECK-INST: or.or.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x20,0x1c]
or.or.t %d1, %d15, 0, %d14, 24

# CHECK-INST: or.or.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xa0,0x1f]
or.or.t %d1, %d15, 0, %d14, 31

# CHECK-INST: or.or.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x20,0x10]
or.or.t %d1, %d15, 0, %d15, 0

# CHECK-INST: or.or.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xa0,0x13]
or.or.t %d1, %d15, 0, %d15, 7

# CHECK-INST: or.or.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x20,0x1c]
or.or.t %d1, %d15, 0, %d15, 24

# CHECK-INST: or.or.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xa0,0x1f]
or.or.t %d1, %d15, 0, %d15, 31

# CHECK-INST: or.or.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x27,0x10]
or.or.t %d1, %d15, 7, %d0, 0

# CHECK-INST: or.or.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xa7,0x13]
or.or.t %d1, %d15, 7, %d0, 7

# CHECK-INST: or.or.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x27,0x1c]
or.or.t %d1, %d15, 7, %d0, 24

# CHECK-INST: or.or.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xa7,0x1f]
or.or.t %d1, %d15, 7, %d0, 31

# CHECK-INST: or.or.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x27,0x10]
or.or.t %d1, %d15, 7, %d1, 0

# CHECK-INST: or.or.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xa7,0x13]
or.or.t %d1, %d15, 7, %d1, 7

# CHECK-INST: or.or.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x27,0x1c]
or.or.t %d1, %d15, 7, %d1, 24

# CHECK-INST: or.or.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xa7,0x1f]
or.or.t %d1, %d15, 7, %d1, 31

# CHECK-INST: or.or.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x27,0x10]
or.or.t %d1, %d15, 7, %d14, 0

# CHECK-INST: or.or.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xa7,0x13]
or.or.t %d1, %d15, 7, %d14, 7

# CHECK-INST: or.or.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x27,0x1c]
or.or.t %d1, %d15, 7, %d14, 24

# CHECK-INST: or.or.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xa7,0x1f]
or.or.t %d1, %d15, 7, %d14, 31

# CHECK-INST: or.or.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x27,0x10]
or.or.t %d1, %d15, 7, %d15, 0

# CHECK-INST: or.or.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xa7,0x13]
or.or.t %d1, %d15, 7, %d15, 7

# CHECK-INST: or.or.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x27,0x1c]
or.or.t %d1, %d15, 7, %d15, 24

# CHECK-INST: or.or.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xa7,0x1f]
or.or.t %d1, %d15, 7, %d15, 31

# CHECK-INST: or.or.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x38,0x10]
or.or.t %d1, %d15, 24, %d0, 0

# CHECK-INST: or.or.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xb8,0x13]
or.or.t %d1, %d15, 24, %d0, 7

# CHECK-INST: or.or.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x38,0x1c]
or.or.t %d1, %d15, 24, %d0, 24

# CHECK-INST: or.or.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xb8,0x1f]
or.or.t %d1, %d15, 24, %d0, 31

# CHECK-INST: or.or.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x38,0x10]
or.or.t %d1, %d15, 24, %d1, 0

# CHECK-INST: or.or.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xb8,0x13]
or.or.t %d1, %d15, 24, %d1, 7

# CHECK-INST: or.or.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x38,0x1c]
or.or.t %d1, %d15, 24, %d1, 24

# CHECK-INST: or.or.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xb8,0x1f]
or.or.t %d1, %d15, 24, %d1, 31

# CHECK-INST: or.or.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x38,0x10]
or.or.t %d1, %d15, 24, %d14, 0

# CHECK-INST: or.or.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xb8,0x13]
or.or.t %d1, %d15, 24, %d14, 7

# CHECK-INST: or.or.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x38,0x1c]
or.or.t %d1, %d15, 24, %d14, 24

# CHECK-INST: or.or.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xb8,0x1f]
or.or.t %d1, %d15, 24, %d14, 31

# CHECK-INST: or.or.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x38,0x10]
or.or.t %d1, %d15, 24, %d15, 0

# CHECK-INST: or.or.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xb8,0x13]
or.or.t %d1, %d15, 24, %d15, 7

# CHECK-INST: or.or.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x38,0x1c]
or.or.t %d1, %d15, 24, %d15, 24

# CHECK-INST: or.or.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xb8,0x1f]
or.or.t %d1, %d15, 24, %d15, 31

# CHECK-INST: or.or.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x3f,0x10]
or.or.t %d1, %d15, 31, %d0, 0

# CHECK-INST: or.or.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xbf,0x13]
or.or.t %d1, %d15, 31, %d0, 7

# CHECK-INST: or.or.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x3f,0x1c]
or.or.t %d1, %d15, 31, %d0, 24

# CHECK-INST: or.or.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xbf,0x1f]
or.or.t %d1, %d15, 31, %d0, 31

# CHECK-INST: or.or.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x3f,0x10]
or.or.t %d1, %d15, 31, %d1, 0

# CHECK-INST: or.or.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xbf,0x13]
or.or.t %d1, %d15, 31, %d1, 7

# CHECK-INST: or.or.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x3f,0x1c]
or.or.t %d1, %d15, 31, %d1, 24

# CHECK-INST: or.or.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xbf,0x1f]
or.or.t %d1, %d15, 31, %d1, 31

# CHECK-INST: or.or.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x3f,0x10]
or.or.t %d1, %d15, 31, %d14, 0

# CHECK-INST: or.or.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xbf,0x13]
or.or.t %d1, %d15, 31, %d14, 7

# CHECK-INST: or.or.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x3f,0x1c]
or.or.t %d1, %d15, 31, %d14, 24

# CHECK-INST: or.or.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xbf,0x1f]
or.or.t %d1, %d15, 31, %d14, 31

# CHECK-INST: or.or.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x3f,0x10]
or.or.t %d1, %d15, 31, %d15, 0

# CHECK-INST: or.or.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xbf,0x13]
or.or.t %d1, %d15, 31, %d15, 7

# CHECK-INST: or.or.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x3f,0x1c]
or.or.t %d1, %d15, 31, %d15, 24

# CHECK-INST: or.or.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xbf,0x1f]
or.or.t %d1, %d15, 31, %d15, 31

# CHECK-INST: or.or.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x20,0xe0]
or.or.t %d14, %d0, 0, %d0, 0

# CHECK-INST: or.or.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xa0,0xe3]
or.or.t %d14, %d0, 0, %d0, 7

# CHECK-INST: or.or.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x20,0xec]
or.or.t %d14, %d0, 0, %d0, 24

# CHECK-INST: or.or.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xa0,0xef]
or.or.t %d14, %d0, 0, %d0, 31

# CHECK-INST: or.or.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x20,0xe0]
or.or.t %d14, %d0, 0, %d1, 0

# CHECK-INST: or.or.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xa0,0xe3]
or.or.t %d14, %d0, 0, %d1, 7

# CHECK-INST: or.or.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x20,0xec]
or.or.t %d14, %d0, 0, %d1, 24

# CHECK-INST: or.or.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xa0,0xef]
or.or.t %d14, %d0, 0, %d1, 31

# CHECK-INST: or.or.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x20,0xe0]
or.or.t %d14, %d0, 0, %d14, 0

# CHECK-INST: or.or.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xa0,0xe3]
or.or.t %d14, %d0, 0, %d14, 7

# CHECK-INST: or.or.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x20,0xec]
or.or.t %d14, %d0, 0, %d14, 24

# CHECK-INST: or.or.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xa0,0xef]
or.or.t %d14, %d0, 0, %d14, 31

# CHECK-INST: or.or.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x20,0xe0]
or.or.t %d14, %d0, 0, %d15, 0

# CHECK-INST: or.or.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xa0,0xe3]
or.or.t %d14, %d0, 0, %d15, 7

# CHECK-INST: or.or.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x20,0xec]
or.or.t %d14, %d0, 0, %d15, 24

# CHECK-INST: or.or.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xa0,0xef]
or.or.t %d14, %d0, 0, %d15, 31

# CHECK-INST: or.or.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x27,0xe0]
or.or.t %d14, %d0, 7, %d0, 0

# CHECK-INST: or.or.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xa7,0xe3]
or.or.t %d14, %d0, 7, %d0, 7

# CHECK-INST: or.or.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x27,0xec]
or.or.t %d14, %d0, 7, %d0, 24

# CHECK-INST: or.or.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xa7,0xef]
or.or.t %d14, %d0, 7, %d0, 31

# CHECK-INST: or.or.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x27,0xe0]
or.or.t %d14, %d0, 7, %d1, 0

# CHECK-INST: or.or.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xa7,0xe3]
or.or.t %d14, %d0, 7, %d1, 7

# CHECK-INST: or.or.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x27,0xec]
or.or.t %d14, %d0, 7, %d1, 24

# CHECK-INST: or.or.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xa7,0xef]
or.or.t %d14, %d0, 7, %d1, 31

# CHECK-INST: or.or.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x27,0xe0]
or.or.t %d14, %d0, 7, %d14, 0

# CHECK-INST: or.or.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xa7,0xe3]
or.or.t %d14, %d0, 7, %d14, 7

# CHECK-INST: or.or.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x27,0xec]
or.or.t %d14, %d0, 7, %d14, 24

# CHECK-INST: or.or.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xa7,0xef]
or.or.t %d14, %d0, 7, %d14, 31

# CHECK-INST: or.or.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x27,0xe0]
or.or.t %d14, %d0, 7, %d15, 0

# CHECK-INST: or.or.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xa7,0xe3]
or.or.t %d14, %d0, 7, %d15, 7

# CHECK-INST: or.or.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x27,0xec]
or.or.t %d14, %d0, 7, %d15, 24

# CHECK-INST: or.or.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xa7,0xef]
or.or.t %d14, %d0, 7, %d15, 31

# CHECK-INST: or.or.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x38,0xe0]
or.or.t %d14, %d0, 24, %d0, 0

# CHECK-INST: or.or.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xb8,0xe3]
or.or.t %d14, %d0, 24, %d0, 7

# CHECK-INST: or.or.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x38,0xec]
or.or.t %d14, %d0, 24, %d0, 24

# CHECK-INST: or.or.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xb8,0xef]
or.or.t %d14, %d0, 24, %d0, 31

# CHECK-INST: or.or.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x38,0xe0]
or.or.t %d14, %d0, 24, %d1, 0

# CHECK-INST: or.or.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xb8,0xe3]
or.or.t %d14, %d0, 24, %d1, 7

# CHECK-INST: or.or.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x38,0xec]
or.or.t %d14, %d0, 24, %d1, 24

# CHECK-INST: or.or.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xb8,0xef]
or.or.t %d14, %d0, 24, %d1, 31

# CHECK-INST: or.or.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x38,0xe0]
or.or.t %d14, %d0, 24, %d14, 0

# CHECK-INST: or.or.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xb8,0xe3]
or.or.t %d14, %d0, 24, %d14, 7

# CHECK-INST: or.or.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x38,0xec]
or.or.t %d14, %d0, 24, %d14, 24

# CHECK-INST: or.or.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xb8,0xef]
or.or.t %d14, %d0, 24, %d14, 31

# CHECK-INST: or.or.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x38,0xe0]
or.or.t %d14, %d0, 24, %d15, 0

# CHECK-INST: or.or.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xb8,0xe3]
or.or.t %d14, %d0, 24, %d15, 7

# CHECK-INST: or.or.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x38,0xec]
or.or.t %d14, %d0, 24, %d15, 24

# CHECK-INST: or.or.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xb8,0xef]
or.or.t %d14, %d0, 24, %d15, 31

# CHECK-INST: or.or.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x3f,0xe0]
or.or.t %d14, %d0, 31, %d0, 0

# CHECK-INST: or.or.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xbf,0xe3]
or.or.t %d14, %d0, 31, %d0, 7

# CHECK-INST: or.or.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x3f,0xec]
or.or.t %d14, %d0, 31, %d0, 24

# CHECK-INST: or.or.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xbf,0xef]
or.or.t %d14, %d0, 31, %d0, 31

# CHECK-INST: or.or.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x3f,0xe0]
or.or.t %d14, %d0, 31, %d1, 0

# CHECK-INST: or.or.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xbf,0xe3]
or.or.t %d14, %d0, 31, %d1, 7

# CHECK-INST: or.or.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x3f,0xec]
or.or.t %d14, %d0, 31, %d1, 24

# CHECK-INST: or.or.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xbf,0xef]
or.or.t %d14, %d0, 31, %d1, 31

# CHECK-INST: or.or.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x3f,0xe0]
or.or.t %d14, %d0, 31, %d14, 0

# CHECK-INST: or.or.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xbf,0xe3]
or.or.t %d14, %d0, 31, %d14, 7

# CHECK-INST: or.or.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x3f,0xec]
or.or.t %d14, %d0, 31, %d14, 24

# CHECK-INST: or.or.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xbf,0xef]
or.or.t %d14, %d0, 31, %d14, 31

# CHECK-INST: or.or.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x3f,0xe0]
or.or.t %d14, %d0, 31, %d15, 0

# CHECK-INST: or.or.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xbf,0xe3]
or.or.t %d14, %d0, 31, %d15, 7

# CHECK-INST: or.or.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x3f,0xec]
or.or.t %d14, %d0, 31, %d15, 24

# CHECK-INST: or.or.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xbf,0xef]
or.or.t %d14, %d0, 31, %d15, 31

# CHECK-INST: or.or.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x20,0xe0]
or.or.t %d14, %d1, 0, %d0, 0

# CHECK-INST: or.or.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xa0,0xe3]
or.or.t %d14, %d1, 0, %d0, 7

# CHECK-INST: or.or.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x20,0xec]
or.or.t %d14, %d1, 0, %d0, 24

# CHECK-INST: or.or.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xa0,0xef]
or.or.t %d14, %d1, 0, %d0, 31

# CHECK-INST: or.or.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x20,0xe0]
or.or.t %d14, %d1, 0, %d1, 0

# CHECK-INST: or.or.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xa0,0xe3]
or.or.t %d14, %d1, 0, %d1, 7

# CHECK-INST: or.or.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x20,0xec]
or.or.t %d14, %d1, 0, %d1, 24

# CHECK-INST: or.or.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xa0,0xef]
or.or.t %d14, %d1, 0, %d1, 31

# CHECK-INST: or.or.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x20,0xe0]
or.or.t %d14, %d1, 0, %d14, 0

# CHECK-INST: or.or.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xa0,0xe3]
or.or.t %d14, %d1, 0, %d14, 7

# CHECK-INST: or.or.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x20,0xec]
or.or.t %d14, %d1, 0, %d14, 24

# CHECK-INST: or.or.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xa0,0xef]
or.or.t %d14, %d1, 0, %d14, 31

# CHECK-INST: or.or.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x20,0xe0]
or.or.t %d14, %d1, 0, %d15, 0

# CHECK-INST: or.or.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xa0,0xe3]
or.or.t %d14, %d1, 0, %d15, 7

# CHECK-INST: or.or.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x20,0xec]
or.or.t %d14, %d1, 0, %d15, 24

# CHECK-INST: or.or.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xa0,0xef]
or.or.t %d14, %d1, 0, %d15, 31

# CHECK-INST: or.or.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x27,0xe0]
or.or.t %d14, %d1, 7, %d0, 0

# CHECK-INST: or.or.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xa7,0xe3]
or.or.t %d14, %d1, 7, %d0, 7

# CHECK-INST: or.or.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x27,0xec]
or.or.t %d14, %d1, 7, %d0, 24

# CHECK-INST: or.or.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xa7,0xef]
or.or.t %d14, %d1, 7, %d0, 31

# CHECK-INST: or.or.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x27,0xe0]
or.or.t %d14, %d1, 7, %d1, 0

# CHECK-INST: or.or.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xa7,0xe3]
or.or.t %d14, %d1, 7, %d1, 7

# CHECK-INST: or.or.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x27,0xec]
or.or.t %d14, %d1, 7, %d1, 24

# CHECK-INST: or.or.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xa7,0xef]
or.or.t %d14, %d1, 7, %d1, 31

# CHECK-INST: or.or.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x27,0xe0]
or.or.t %d14, %d1, 7, %d14, 0

# CHECK-INST: or.or.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xa7,0xe3]
or.or.t %d14, %d1, 7, %d14, 7

# CHECK-INST: or.or.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x27,0xec]
or.or.t %d14, %d1, 7, %d14, 24

# CHECK-INST: or.or.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xa7,0xef]
or.or.t %d14, %d1, 7, %d14, 31

# CHECK-INST: or.or.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x27,0xe0]
or.or.t %d14, %d1, 7, %d15, 0

# CHECK-INST: or.or.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xa7,0xe3]
or.or.t %d14, %d1, 7, %d15, 7

# CHECK-INST: or.or.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x27,0xec]
or.or.t %d14, %d1, 7, %d15, 24

# CHECK-INST: or.or.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xa7,0xef]
or.or.t %d14, %d1, 7, %d15, 31

# CHECK-INST: or.or.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x38,0xe0]
or.or.t %d14, %d1, 24, %d0, 0

# CHECK-INST: or.or.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xb8,0xe3]
or.or.t %d14, %d1, 24, %d0, 7

# CHECK-INST: or.or.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x38,0xec]
or.or.t %d14, %d1, 24, %d0, 24

# CHECK-INST: or.or.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xb8,0xef]
or.or.t %d14, %d1, 24, %d0, 31

# CHECK-INST: or.or.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x38,0xe0]
or.or.t %d14, %d1, 24, %d1, 0

# CHECK-INST: or.or.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xb8,0xe3]
or.or.t %d14, %d1, 24, %d1, 7

# CHECK-INST: or.or.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x38,0xec]
or.or.t %d14, %d1, 24, %d1, 24

# CHECK-INST: or.or.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xb8,0xef]
or.or.t %d14, %d1, 24, %d1, 31

# CHECK-INST: or.or.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x38,0xe0]
or.or.t %d14, %d1, 24, %d14, 0

# CHECK-INST: or.or.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xb8,0xe3]
or.or.t %d14, %d1, 24, %d14, 7

# CHECK-INST: or.or.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x38,0xec]
or.or.t %d14, %d1, 24, %d14, 24

# CHECK-INST: or.or.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xb8,0xef]
or.or.t %d14, %d1, 24, %d14, 31

# CHECK-INST: or.or.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x38,0xe0]
or.or.t %d14, %d1, 24, %d15, 0

# CHECK-INST: or.or.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xb8,0xe3]
or.or.t %d14, %d1, 24, %d15, 7

# CHECK-INST: or.or.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x38,0xec]
or.or.t %d14, %d1, 24, %d15, 24

# CHECK-INST: or.or.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xb8,0xef]
or.or.t %d14, %d1, 24, %d15, 31

# CHECK-INST: or.or.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x3f,0xe0]
or.or.t %d14, %d1, 31, %d0, 0

# CHECK-INST: or.or.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xbf,0xe3]
or.or.t %d14, %d1, 31, %d0, 7

# CHECK-INST: or.or.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x3f,0xec]
or.or.t %d14, %d1, 31, %d0, 24

# CHECK-INST: or.or.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xbf,0xef]
or.or.t %d14, %d1, 31, %d0, 31

# CHECK-INST: or.or.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x3f,0xe0]
or.or.t %d14, %d1, 31, %d1, 0

# CHECK-INST: or.or.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xbf,0xe3]
or.or.t %d14, %d1, 31, %d1, 7

# CHECK-INST: or.or.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x3f,0xec]
or.or.t %d14, %d1, 31, %d1, 24

# CHECK-INST: or.or.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xbf,0xef]
or.or.t %d14, %d1, 31, %d1, 31

# CHECK-INST: or.or.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x3f,0xe0]
or.or.t %d14, %d1, 31, %d14, 0

# CHECK-INST: or.or.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xbf,0xe3]
or.or.t %d14, %d1, 31, %d14, 7

# CHECK-INST: or.or.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x3f,0xec]
or.or.t %d14, %d1, 31, %d14, 24

# CHECK-INST: or.or.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xbf,0xef]
or.or.t %d14, %d1, 31, %d14, 31

# CHECK-INST: or.or.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x3f,0xe0]
or.or.t %d14, %d1, 31, %d15, 0

# CHECK-INST: or.or.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xbf,0xe3]
or.or.t %d14, %d1, 31, %d15, 7

# CHECK-INST: or.or.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x3f,0xec]
or.or.t %d14, %d1, 31, %d15, 24

# CHECK-INST: or.or.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xbf,0xef]
or.or.t %d14, %d1, 31, %d15, 31

# CHECK-INST: or.or.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x20,0xe0]
or.or.t %d14, %d14, 0, %d0, 0

# CHECK-INST: or.or.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xa0,0xe3]
or.or.t %d14, %d14, 0, %d0, 7

# CHECK-INST: or.or.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x20,0xec]
or.or.t %d14, %d14, 0, %d0, 24

# CHECK-INST: or.or.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xa0,0xef]
or.or.t %d14, %d14, 0, %d0, 31

# CHECK-INST: or.or.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x20,0xe0]
or.or.t %d14, %d14, 0, %d1, 0

# CHECK-INST: or.or.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xa0,0xe3]
or.or.t %d14, %d14, 0, %d1, 7

# CHECK-INST: or.or.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x20,0xec]
or.or.t %d14, %d14, 0, %d1, 24

# CHECK-INST: or.or.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xa0,0xef]
or.or.t %d14, %d14, 0, %d1, 31

# CHECK-INST: or.or.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x20,0xe0]
or.or.t %d14, %d14, 0, %d14, 0

# CHECK-INST: or.or.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xa0,0xe3]
or.or.t %d14, %d14, 0, %d14, 7

# CHECK-INST: or.or.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x20,0xec]
or.or.t %d14, %d14, 0, %d14, 24

# CHECK-INST: or.or.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xa0,0xef]
or.or.t %d14, %d14, 0, %d14, 31

# CHECK-INST: or.or.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x20,0xe0]
or.or.t %d14, %d14, 0, %d15, 0

# CHECK-INST: or.or.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xa0,0xe3]
or.or.t %d14, %d14, 0, %d15, 7

# CHECK-INST: or.or.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x20,0xec]
or.or.t %d14, %d14, 0, %d15, 24

# CHECK-INST: or.or.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xa0,0xef]
or.or.t %d14, %d14, 0, %d15, 31

# CHECK-INST: or.or.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x27,0xe0]
or.or.t %d14, %d14, 7, %d0, 0

# CHECK-INST: or.or.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xa7,0xe3]
or.or.t %d14, %d14, 7, %d0, 7

# CHECK-INST: or.or.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x27,0xec]
or.or.t %d14, %d14, 7, %d0, 24

# CHECK-INST: or.or.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xa7,0xef]
or.or.t %d14, %d14, 7, %d0, 31

# CHECK-INST: or.or.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x27,0xe0]
or.or.t %d14, %d14, 7, %d1, 0

# CHECK-INST: or.or.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xa7,0xe3]
or.or.t %d14, %d14, 7, %d1, 7

# CHECK-INST: or.or.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x27,0xec]
or.or.t %d14, %d14, 7, %d1, 24

# CHECK-INST: or.or.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xa7,0xef]
or.or.t %d14, %d14, 7, %d1, 31

# CHECK-INST: or.or.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x27,0xe0]
or.or.t %d14, %d14, 7, %d14, 0

# CHECK-INST: or.or.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xa7,0xe3]
or.or.t %d14, %d14, 7, %d14, 7

# CHECK-INST: or.or.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x27,0xec]
or.or.t %d14, %d14, 7, %d14, 24

# CHECK-INST: or.or.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xa7,0xef]
or.or.t %d14, %d14, 7, %d14, 31

# CHECK-INST: or.or.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x27,0xe0]
or.or.t %d14, %d14, 7, %d15, 0

# CHECK-INST: or.or.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xa7,0xe3]
or.or.t %d14, %d14, 7, %d15, 7

# CHECK-INST: or.or.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x27,0xec]
or.or.t %d14, %d14, 7, %d15, 24

# CHECK-INST: or.or.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xa7,0xef]
or.or.t %d14, %d14, 7, %d15, 31

# CHECK-INST: or.or.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x38,0xe0]
or.or.t %d14, %d14, 24, %d0, 0

# CHECK-INST: or.or.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xb8,0xe3]
or.or.t %d14, %d14, 24, %d0, 7

# CHECK-INST: or.or.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x38,0xec]
or.or.t %d14, %d14, 24, %d0, 24

# CHECK-INST: or.or.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xb8,0xef]
or.or.t %d14, %d14, 24, %d0, 31

# CHECK-INST: or.or.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x38,0xe0]
or.or.t %d14, %d14, 24, %d1, 0

# CHECK-INST: or.or.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xb8,0xe3]
or.or.t %d14, %d14, 24, %d1, 7

# CHECK-INST: or.or.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x38,0xec]
or.or.t %d14, %d14, 24, %d1, 24

# CHECK-INST: or.or.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xb8,0xef]
or.or.t %d14, %d14, 24, %d1, 31

# CHECK-INST: or.or.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x38,0xe0]
or.or.t %d14, %d14, 24, %d14, 0

# CHECK-INST: or.or.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xb8,0xe3]
or.or.t %d14, %d14, 24, %d14, 7

# CHECK-INST: or.or.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x38,0xec]
or.or.t %d14, %d14, 24, %d14, 24

# CHECK-INST: or.or.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xb8,0xef]
or.or.t %d14, %d14, 24, %d14, 31

# CHECK-INST: or.or.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x38,0xe0]
or.or.t %d14, %d14, 24, %d15, 0

# CHECK-INST: or.or.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xb8,0xe3]
or.or.t %d14, %d14, 24, %d15, 7

# CHECK-INST: or.or.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x38,0xec]
or.or.t %d14, %d14, 24, %d15, 24

# CHECK-INST: or.or.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xb8,0xef]
or.or.t %d14, %d14, 24, %d15, 31

# CHECK-INST: or.or.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x3f,0xe0]
or.or.t %d14, %d14, 31, %d0, 0

# CHECK-INST: or.or.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xbf,0xe3]
or.or.t %d14, %d14, 31, %d0, 7

# CHECK-INST: or.or.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x3f,0xec]
or.or.t %d14, %d14, 31, %d0, 24

# CHECK-INST: or.or.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xbf,0xef]
or.or.t %d14, %d14, 31, %d0, 31

# CHECK-INST: or.or.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x3f,0xe0]
or.or.t %d14, %d14, 31, %d1, 0

# CHECK-INST: or.or.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xbf,0xe3]
or.or.t %d14, %d14, 31, %d1, 7

# CHECK-INST: or.or.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x3f,0xec]
or.or.t %d14, %d14, 31, %d1, 24

# CHECK-INST: or.or.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xbf,0xef]
or.or.t %d14, %d14, 31, %d1, 31

# CHECK-INST: or.or.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x3f,0xe0]
or.or.t %d14, %d14, 31, %d14, 0

# CHECK-INST: or.or.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xbf,0xe3]
or.or.t %d14, %d14, 31, %d14, 7

# CHECK-INST: or.or.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x3f,0xec]
or.or.t %d14, %d14, 31, %d14, 24

# CHECK-INST: or.or.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xbf,0xef]
or.or.t %d14, %d14, 31, %d14, 31

# CHECK-INST: or.or.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x3f,0xe0]
or.or.t %d14, %d14, 31, %d15, 0

# CHECK-INST: or.or.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xbf,0xe3]
or.or.t %d14, %d14, 31, %d15, 7

# CHECK-INST: or.or.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x3f,0xec]
or.or.t %d14, %d14, 31, %d15, 24

# CHECK-INST: or.or.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xbf,0xef]
or.or.t %d14, %d14, 31, %d15, 31

# CHECK-INST: or.or.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x20,0xe0]
or.or.t %d14, %d15, 0, %d0, 0

# CHECK-INST: or.or.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xa0,0xe3]
or.or.t %d14, %d15, 0, %d0, 7

# CHECK-INST: or.or.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x20,0xec]
or.or.t %d14, %d15, 0, %d0, 24

# CHECK-INST: or.or.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xa0,0xef]
or.or.t %d14, %d15, 0, %d0, 31

# CHECK-INST: or.or.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x20,0xe0]
or.or.t %d14, %d15, 0, %d1, 0

# CHECK-INST: or.or.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xa0,0xe3]
or.or.t %d14, %d15, 0, %d1, 7

# CHECK-INST: or.or.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x20,0xec]
or.or.t %d14, %d15, 0, %d1, 24

# CHECK-INST: or.or.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xa0,0xef]
or.or.t %d14, %d15, 0, %d1, 31

# CHECK-INST: or.or.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x20,0xe0]
or.or.t %d14, %d15, 0, %d14, 0

# CHECK-INST: or.or.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xa0,0xe3]
or.or.t %d14, %d15, 0, %d14, 7

# CHECK-INST: or.or.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x20,0xec]
or.or.t %d14, %d15, 0, %d14, 24

# CHECK-INST: or.or.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xa0,0xef]
or.or.t %d14, %d15, 0, %d14, 31

# CHECK-INST: or.or.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x20,0xe0]
or.or.t %d14, %d15, 0, %d15, 0

# CHECK-INST: or.or.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xa0,0xe3]
or.or.t %d14, %d15, 0, %d15, 7

# CHECK-INST: or.or.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x20,0xec]
or.or.t %d14, %d15, 0, %d15, 24

# CHECK-INST: or.or.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xa0,0xef]
or.or.t %d14, %d15, 0, %d15, 31

# CHECK-INST: or.or.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x27,0xe0]
or.or.t %d14, %d15, 7, %d0, 0

# CHECK-INST: or.or.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xa7,0xe3]
or.or.t %d14, %d15, 7, %d0, 7

# CHECK-INST: or.or.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x27,0xec]
or.or.t %d14, %d15, 7, %d0, 24

# CHECK-INST: or.or.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xa7,0xef]
or.or.t %d14, %d15, 7, %d0, 31

# CHECK-INST: or.or.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x27,0xe0]
or.or.t %d14, %d15, 7, %d1, 0

# CHECK-INST: or.or.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xa7,0xe3]
or.or.t %d14, %d15, 7, %d1, 7

# CHECK-INST: or.or.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x27,0xec]
or.or.t %d14, %d15, 7, %d1, 24

# CHECK-INST: or.or.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xa7,0xef]
or.or.t %d14, %d15, 7, %d1, 31

# CHECK-INST: or.or.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x27,0xe0]
or.or.t %d14, %d15, 7, %d14, 0

# CHECK-INST: or.or.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xa7,0xe3]
or.or.t %d14, %d15, 7, %d14, 7

# CHECK-INST: or.or.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x27,0xec]
or.or.t %d14, %d15, 7, %d14, 24

# CHECK-INST: or.or.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xa7,0xef]
or.or.t %d14, %d15, 7, %d14, 31

# CHECK-INST: or.or.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x27,0xe0]
or.or.t %d14, %d15, 7, %d15, 0

# CHECK-INST: or.or.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xa7,0xe3]
or.or.t %d14, %d15, 7, %d15, 7

# CHECK-INST: or.or.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x27,0xec]
or.or.t %d14, %d15, 7, %d15, 24

# CHECK-INST: or.or.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xa7,0xef]
or.or.t %d14, %d15, 7, %d15, 31

# CHECK-INST: or.or.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x38,0xe0]
or.or.t %d14, %d15, 24, %d0, 0

# CHECK-INST: or.or.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xb8,0xe3]
or.or.t %d14, %d15, 24, %d0, 7

# CHECK-INST: or.or.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x38,0xec]
or.or.t %d14, %d15, 24, %d0, 24

# CHECK-INST: or.or.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xb8,0xef]
or.or.t %d14, %d15, 24, %d0, 31

# CHECK-INST: or.or.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x38,0xe0]
or.or.t %d14, %d15, 24, %d1, 0

# CHECK-INST: or.or.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xb8,0xe3]
or.or.t %d14, %d15, 24, %d1, 7

# CHECK-INST: or.or.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x38,0xec]
or.or.t %d14, %d15, 24, %d1, 24

# CHECK-INST: or.or.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xb8,0xef]
or.or.t %d14, %d15, 24, %d1, 31

# CHECK-INST: or.or.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x38,0xe0]
or.or.t %d14, %d15, 24, %d14, 0

# CHECK-INST: or.or.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xb8,0xe3]
or.or.t %d14, %d15, 24, %d14, 7

# CHECK-INST: or.or.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x38,0xec]
or.or.t %d14, %d15, 24, %d14, 24

# CHECK-INST: or.or.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xb8,0xef]
or.or.t %d14, %d15, 24, %d14, 31

# CHECK-INST: or.or.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x38,0xe0]
or.or.t %d14, %d15, 24, %d15, 0

# CHECK-INST: or.or.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xb8,0xe3]
or.or.t %d14, %d15, 24, %d15, 7

# CHECK-INST: or.or.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x38,0xec]
or.or.t %d14, %d15, 24, %d15, 24

# CHECK-INST: or.or.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xb8,0xef]
or.or.t %d14, %d15, 24, %d15, 31

# CHECK-INST: or.or.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x3f,0xe0]
or.or.t %d14, %d15, 31, %d0, 0

# CHECK-INST: or.or.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xbf,0xe3]
or.or.t %d14, %d15, 31, %d0, 7

# CHECK-INST: or.or.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x3f,0xec]
or.or.t %d14, %d15, 31, %d0, 24

# CHECK-INST: or.or.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xbf,0xef]
or.or.t %d14, %d15, 31, %d0, 31

# CHECK-INST: or.or.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x3f,0xe0]
or.or.t %d14, %d15, 31, %d1, 0

# CHECK-INST: or.or.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xbf,0xe3]
or.or.t %d14, %d15, 31, %d1, 7

# CHECK-INST: or.or.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x3f,0xec]
or.or.t %d14, %d15, 31, %d1, 24

# CHECK-INST: or.or.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xbf,0xef]
or.or.t %d14, %d15, 31, %d1, 31

# CHECK-INST: or.or.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x3f,0xe0]
or.or.t %d14, %d15, 31, %d14, 0

# CHECK-INST: or.or.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xbf,0xe3]
or.or.t %d14, %d15, 31, %d14, 7

# CHECK-INST: or.or.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x3f,0xec]
or.or.t %d14, %d15, 31, %d14, 24

# CHECK-INST: or.or.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xbf,0xef]
or.or.t %d14, %d15, 31, %d14, 31

# CHECK-INST: or.or.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x3f,0xe0]
or.or.t %d14, %d15, 31, %d15, 0

# CHECK-INST: or.or.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xbf,0xe3]
or.or.t %d14, %d15, 31, %d15, 7

# CHECK-INST: or.or.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x3f,0xec]
or.or.t %d14, %d15, 31, %d15, 24

# CHECK-INST: or.or.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xbf,0xef]
or.or.t %d14, %d15, 31, %d15, 31

# CHECK-INST: or.or.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x20,0xf0]
or.or.t %d15, %d0, 0, %d0, 0

# CHECK-INST: or.or.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xa0,0xf3]
or.or.t %d15, %d0, 0, %d0, 7

# CHECK-INST: or.or.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x20,0xfc]
or.or.t %d15, %d0, 0, %d0, 24

# CHECK-INST: or.or.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xa0,0xff]
or.or.t %d15, %d0, 0, %d0, 31

# CHECK-INST: or.or.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x20,0xf0]
or.or.t %d15, %d0, 0, %d1, 0

# CHECK-INST: or.or.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xa0,0xf3]
or.or.t %d15, %d0, 0, %d1, 7

# CHECK-INST: or.or.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x20,0xfc]
or.or.t %d15, %d0, 0, %d1, 24

# CHECK-INST: or.or.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xa0,0xff]
or.or.t %d15, %d0, 0, %d1, 31

# CHECK-INST: or.or.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x20,0xf0]
or.or.t %d15, %d0, 0, %d14, 0

# CHECK-INST: or.or.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xa0,0xf3]
or.or.t %d15, %d0, 0, %d14, 7

# CHECK-INST: or.or.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x20,0xfc]
or.or.t %d15, %d0, 0, %d14, 24

# CHECK-INST: or.or.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xa0,0xff]
or.or.t %d15, %d0, 0, %d14, 31

# CHECK-INST: or.or.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x20,0xf0]
or.or.t %d15, %d0, 0, %d15, 0

# CHECK-INST: or.or.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xa0,0xf3]
or.or.t %d15, %d0, 0, %d15, 7

# CHECK-INST: or.or.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x20,0xfc]
or.or.t %d15, %d0, 0, %d15, 24

# CHECK-INST: or.or.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xa0,0xff]
or.or.t %d15, %d0, 0, %d15, 31

# CHECK-INST: or.or.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x27,0xf0]
or.or.t %d15, %d0, 7, %d0, 0

# CHECK-INST: or.or.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xa7,0xf3]
or.or.t %d15, %d0, 7, %d0, 7

# CHECK-INST: or.or.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x27,0xfc]
or.or.t %d15, %d0, 7, %d0, 24

# CHECK-INST: or.or.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xa7,0xff]
or.or.t %d15, %d0, 7, %d0, 31

# CHECK-INST: or.or.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x27,0xf0]
or.or.t %d15, %d0, 7, %d1, 0

# CHECK-INST: or.or.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xa7,0xf3]
or.or.t %d15, %d0, 7, %d1, 7

# CHECK-INST: or.or.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x27,0xfc]
or.or.t %d15, %d0, 7, %d1, 24

# CHECK-INST: or.or.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xa7,0xff]
or.or.t %d15, %d0, 7, %d1, 31

# CHECK-INST: or.or.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x27,0xf0]
or.or.t %d15, %d0, 7, %d14, 0

# CHECK-INST: or.or.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xa7,0xf3]
or.or.t %d15, %d0, 7, %d14, 7

# CHECK-INST: or.or.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x27,0xfc]
or.or.t %d15, %d0, 7, %d14, 24

# CHECK-INST: or.or.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xa7,0xff]
or.or.t %d15, %d0, 7, %d14, 31

# CHECK-INST: or.or.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x27,0xf0]
or.or.t %d15, %d0, 7, %d15, 0

# CHECK-INST: or.or.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xa7,0xf3]
or.or.t %d15, %d0, 7, %d15, 7

# CHECK-INST: or.or.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x27,0xfc]
or.or.t %d15, %d0, 7, %d15, 24

# CHECK-INST: or.or.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xa7,0xff]
or.or.t %d15, %d0, 7, %d15, 31

# CHECK-INST: or.or.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x38,0xf0]
or.or.t %d15, %d0, 24, %d0, 0

# CHECK-INST: or.or.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xb8,0xf3]
or.or.t %d15, %d0, 24, %d0, 7

# CHECK-INST: or.or.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x38,0xfc]
or.or.t %d15, %d0, 24, %d0, 24

# CHECK-INST: or.or.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xb8,0xff]
or.or.t %d15, %d0, 24, %d0, 31

# CHECK-INST: or.or.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x38,0xf0]
or.or.t %d15, %d0, 24, %d1, 0

# CHECK-INST: or.or.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xb8,0xf3]
or.or.t %d15, %d0, 24, %d1, 7

# CHECK-INST: or.or.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x38,0xfc]
or.or.t %d15, %d0, 24, %d1, 24

# CHECK-INST: or.or.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xb8,0xff]
or.or.t %d15, %d0, 24, %d1, 31

# CHECK-INST: or.or.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x38,0xf0]
or.or.t %d15, %d0, 24, %d14, 0

# CHECK-INST: or.or.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xb8,0xf3]
or.or.t %d15, %d0, 24, %d14, 7

# CHECK-INST: or.or.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x38,0xfc]
or.or.t %d15, %d0, 24, %d14, 24

# CHECK-INST: or.or.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xb8,0xff]
or.or.t %d15, %d0, 24, %d14, 31

# CHECK-INST: or.or.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x38,0xf0]
or.or.t %d15, %d0, 24, %d15, 0

# CHECK-INST: or.or.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xb8,0xf3]
or.or.t %d15, %d0, 24, %d15, 7

# CHECK-INST: or.or.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x38,0xfc]
or.or.t %d15, %d0, 24, %d15, 24

# CHECK-INST: or.or.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xb8,0xff]
or.or.t %d15, %d0, 24, %d15, 31

# CHECK-INST: or.or.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0xc7,0x00,0x3f,0xf0]
or.or.t %d15, %d0, 31, %d0, 0

# CHECK-INST: or.or.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0xc7,0x00,0xbf,0xf3]
or.or.t %d15, %d0, 31, %d0, 7

# CHECK-INST: or.or.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0xc7,0x00,0x3f,0xfc]
or.or.t %d15, %d0, 31, %d0, 24

# CHECK-INST: or.or.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0xc7,0x00,0xbf,0xff]
or.or.t %d15, %d0, 31, %d0, 31

# CHECK-INST: or.or.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0xc7,0x10,0x3f,0xf0]
or.or.t %d15, %d0, 31, %d1, 0

# CHECK-INST: or.or.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0xc7,0x10,0xbf,0xf3]
or.or.t %d15, %d0, 31, %d1, 7

# CHECK-INST: or.or.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0xc7,0x10,0x3f,0xfc]
or.or.t %d15, %d0, 31, %d1, 24

# CHECK-INST: or.or.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0xc7,0x10,0xbf,0xff]
or.or.t %d15, %d0, 31, %d1, 31

# CHECK-INST: or.or.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe0,0x3f,0xf0]
or.or.t %d15, %d0, 31, %d14, 0

# CHECK-INST: or.or.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe0,0xbf,0xf3]
or.or.t %d15, %d0, 31, %d14, 7

# CHECK-INST: or.or.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe0,0x3f,0xfc]
or.or.t %d15, %d0, 31, %d14, 24

# CHECK-INST: or.or.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe0,0xbf,0xff]
or.or.t %d15, %d0, 31, %d14, 31

# CHECK-INST: or.or.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf0,0x3f,0xf0]
or.or.t %d15, %d0, 31, %d15, 0

# CHECK-INST: or.or.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf0,0xbf,0xf3]
or.or.t %d15, %d0, 31, %d15, 7

# CHECK-INST: or.or.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf0,0x3f,0xfc]
or.or.t %d15, %d0, 31, %d15, 24

# CHECK-INST: or.or.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf0,0xbf,0xff]
or.or.t %d15, %d0, 31, %d15, 31

# CHECK-INST: or.or.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x20,0xf0]
or.or.t %d15, %d1, 0, %d0, 0

# CHECK-INST: or.or.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xa0,0xf3]
or.or.t %d15, %d1, 0, %d0, 7

# CHECK-INST: or.or.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x20,0xfc]
or.or.t %d15, %d1, 0, %d0, 24

# CHECK-INST: or.or.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xa0,0xff]
or.or.t %d15, %d1, 0, %d0, 31

# CHECK-INST: or.or.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x20,0xf0]
or.or.t %d15, %d1, 0, %d1, 0

# CHECK-INST: or.or.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xa0,0xf3]
or.or.t %d15, %d1, 0, %d1, 7

# CHECK-INST: or.or.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x20,0xfc]
or.or.t %d15, %d1, 0, %d1, 24

# CHECK-INST: or.or.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xa0,0xff]
or.or.t %d15, %d1, 0, %d1, 31

# CHECK-INST: or.or.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x20,0xf0]
or.or.t %d15, %d1, 0, %d14, 0

# CHECK-INST: or.or.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xa0,0xf3]
or.or.t %d15, %d1, 0, %d14, 7

# CHECK-INST: or.or.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x20,0xfc]
or.or.t %d15, %d1, 0, %d14, 24

# CHECK-INST: or.or.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xa0,0xff]
or.or.t %d15, %d1, 0, %d14, 31

# CHECK-INST: or.or.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x20,0xf0]
or.or.t %d15, %d1, 0, %d15, 0

# CHECK-INST: or.or.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xa0,0xf3]
or.or.t %d15, %d1, 0, %d15, 7

# CHECK-INST: or.or.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x20,0xfc]
or.or.t %d15, %d1, 0, %d15, 24

# CHECK-INST: or.or.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xa0,0xff]
or.or.t %d15, %d1, 0, %d15, 31

# CHECK-INST: or.or.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x27,0xf0]
or.or.t %d15, %d1, 7, %d0, 0

# CHECK-INST: or.or.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xa7,0xf3]
or.or.t %d15, %d1, 7, %d0, 7

# CHECK-INST: or.or.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x27,0xfc]
or.or.t %d15, %d1, 7, %d0, 24

# CHECK-INST: or.or.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xa7,0xff]
or.or.t %d15, %d1, 7, %d0, 31

# CHECK-INST: or.or.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x27,0xf0]
or.or.t %d15, %d1, 7, %d1, 0

# CHECK-INST: or.or.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xa7,0xf3]
or.or.t %d15, %d1, 7, %d1, 7

# CHECK-INST: or.or.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x27,0xfc]
or.or.t %d15, %d1, 7, %d1, 24

# CHECK-INST: or.or.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xa7,0xff]
or.or.t %d15, %d1, 7, %d1, 31

# CHECK-INST: or.or.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x27,0xf0]
or.or.t %d15, %d1, 7, %d14, 0

# CHECK-INST: or.or.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xa7,0xf3]
or.or.t %d15, %d1, 7, %d14, 7

# CHECK-INST: or.or.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x27,0xfc]
or.or.t %d15, %d1, 7, %d14, 24

# CHECK-INST: or.or.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xa7,0xff]
or.or.t %d15, %d1, 7, %d14, 31

# CHECK-INST: or.or.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x27,0xf0]
or.or.t %d15, %d1, 7, %d15, 0

# CHECK-INST: or.or.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xa7,0xf3]
or.or.t %d15, %d1, 7, %d15, 7

# CHECK-INST: or.or.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x27,0xfc]
or.or.t %d15, %d1, 7, %d15, 24

# CHECK-INST: or.or.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xa7,0xff]
or.or.t %d15, %d1, 7, %d15, 31

# CHECK-INST: or.or.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x38,0xf0]
or.or.t %d15, %d1, 24, %d0, 0

# CHECK-INST: or.or.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xb8,0xf3]
or.or.t %d15, %d1, 24, %d0, 7

# CHECK-INST: or.or.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x38,0xfc]
or.or.t %d15, %d1, 24, %d0, 24

# CHECK-INST: or.or.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xb8,0xff]
or.or.t %d15, %d1, 24, %d0, 31

# CHECK-INST: or.or.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x38,0xf0]
or.or.t %d15, %d1, 24, %d1, 0

# CHECK-INST: or.or.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xb8,0xf3]
or.or.t %d15, %d1, 24, %d1, 7

# CHECK-INST: or.or.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x38,0xfc]
or.or.t %d15, %d1, 24, %d1, 24

# CHECK-INST: or.or.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xb8,0xff]
or.or.t %d15, %d1, 24, %d1, 31

# CHECK-INST: or.or.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x38,0xf0]
or.or.t %d15, %d1, 24, %d14, 0

# CHECK-INST: or.or.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xb8,0xf3]
or.or.t %d15, %d1, 24, %d14, 7

# CHECK-INST: or.or.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x38,0xfc]
or.or.t %d15, %d1, 24, %d14, 24

# CHECK-INST: or.or.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xb8,0xff]
or.or.t %d15, %d1, 24, %d14, 31

# CHECK-INST: or.or.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x38,0xf0]
or.or.t %d15, %d1, 24, %d15, 0

# CHECK-INST: or.or.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xb8,0xf3]
or.or.t %d15, %d1, 24, %d15, 7

# CHECK-INST: or.or.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x38,0xfc]
or.or.t %d15, %d1, 24, %d15, 24

# CHECK-INST: or.or.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xb8,0xff]
or.or.t %d15, %d1, 24, %d15, 31

# CHECK-INST: or.or.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0xc7,0x01,0x3f,0xf0]
or.or.t %d15, %d1, 31, %d0, 0

# CHECK-INST: or.or.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0xc7,0x01,0xbf,0xf3]
or.or.t %d15, %d1, 31, %d0, 7

# CHECK-INST: or.or.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0xc7,0x01,0x3f,0xfc]
or.or.t %d15, %d1, 31, %d0, 24

# CHECK-INST: or.or.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0xc7,0x01,0xbf,0xff]
or.or.t %d15, %d1, 31, %d0, 31

# CHECK-INST: or.or.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0xc7,0x11,0x3f,0xf0]
or.or.t %d15, %d1, 31, %d1, 0

# CHECK-INST: or.or.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0xc7,0x11,0xbf,0xf3]
or.or.t %d15, %d1, 31, %d1, 7

# CHECK-INST: or.or.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0xc7,0x11,0x3f,0xfc]
or.or.t %d15, %d1, 31, %d1, 24

# CHECK-INST: or.or.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0xc7,0x11,0xbf,0xff]
or.or.t %d15, %d1, 31, %d1, 31

# CHECK-INST: or.or.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0xc7,0xe1,0x3f,0xf0]
or.or.t %d15, %d1, 31, %d14, 0

# CHECK-INST: or.or.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0xc7,0xe1,0xbf,0xf3]
or.or.t %d15, %d1, 31, %d14, 7

# CHECK-INST: or.or.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0xc7,0xe1,0x3f,0xfc]
or.or.t %d15, %d1, 31, %d14, 24

# CHECK-INST: or.or.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0xc7,0xe1,0xbf,0xff]
or.or.t %d15, %d1, 31, %d14, 31

# CHECK-INST: or.or.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0xc7,0xf1,0x3f,0xf0]
or.or.t %d15, %d1, 31, %d15, 0

# CHECK-INST: or.or.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0xc7,0xf1,0xbf,0xf3]
or.or.t %d15, %d1, 31, %d15, 7

# CHECK-INST: or.or.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0xc7,0xf1,0x3f,0xfc]
or.or.t %d15, %d1, 31, %d15, 24

# CHECK-INST: or.or.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0xc7,0xf1,0xbf,0xff]
or.or.t %d15, %d1, 31, %d15, 31

# CHECK-INST: or.or.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x20,0xf0]
or.or.t %d15, %d14, 0, %d0, 0

# CHECK-INST: or.or.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xa0,0xf3]
or.or.t %d15, %d14, 0, %d0, 7

# CHECK-INST: or.or.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x20,0xfc]
or.or.t %d15, %d14, 0, %d0, 24

# CHECK-INST: or.or.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xa0,0xff]
or.or.t %d15, %d14, 0, %d0, 31

# CHECK-INST: or.or.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x20,0xf0]
or.or.t %d15, %d14, 0, %d1, 0

# CHECK-INST: or.or.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xa0,0xf3]
or.or.t %d15, %d14, 0, %d1, 7

# CHECK-INST: or.or.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x20,0xfc]
or.or.t %d15, %d14, 0, %d1, 24

# CHECK-INST: or.or.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xa0,0xff]
or.or.t %d15, %d14, 0, %d1, 31

# CHECK-INST: or.or.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x20,0xf0]
or.or.t %d15, %d14, 0, %d14, 0

# CHECK-INST: or.or.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xa0,0xf3]
or.or.t %d15, %d14, 0, %d14, 7

# CHECK-INST: or.or.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x20,0xfc]
or.or.t %d15, %d14, 0, %d14, 24

# CHECK-INST: or.or.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xa0,0xff]
or.or.t %d15, %d14, 0, %d14, 31

# CHECK-INST: or.or.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x20,0xf0]
or.or.t %d15, %d14, 0, %d15, 0

# CHECK-INST: or.or.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xa0,0xf3]
or.or.t %d15, %d14, 0, %d15, 7

# CHECK-INST: or.or.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x20,0xfc]
or.or.t %d15, %d14, 0, %d15, 24

# CHECK-INST: or.or.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xa0,0xff]
or.or.t %d15, %d14, 0, %d15, 31

# CHECK-INST: or.or.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x27,0xf0]
or.or.t %d15, %d14, 7, %d0, 0

# CHECK-INST: or.or.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xa7,0xf3]
or.or.t %d15, %d14, 7, %d0, 7

# CHECK-INST: or.or.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x27,0xfc]
or.or.t %d15, %d14, 7, %d0, 24

# CHECK-INST: or.or.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xa7,0xff]
or.or.t %d15, %d14, 7, %d0, 31

# CHECK-INST: or.or.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x27,0xf0]
or.or.t %d15, %d14, 7, %d1, 0

# CHECK-INST: or.or.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xa7,0xf3]
or.or.t %d15, %d14, 7, %d1, 7

# CHECK-INST: or.or.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x27,0xfc]
or.or.t %d15, %d14, 7, %d1, 24

# CHECK-INST: or.or.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xa7,0xff]
or.or.t %d15, %d14, 7, %d1, 31

# CHECK-INST: or.or.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x27,0xf0]
or.or.t %d15, %d14, 7, %d14, 0

# CHECK-INST: or.or.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xa7,0xf3]
or.or.t %d15, %d14, 7, %d14, 7

# CHECK-INST: or.or.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x27,0xfc]
or.or.t %d15, %d14, 7, %d14, 24

# CHECK-INST: or.or.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xa7,0xff]
or.or.t %d15, %d14, 7, %d14, 31

# CHECK-INST: or.or.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x27,0xf0]
or.or.t %d15, %d14, 7, %d15, 0

# CHECK-INST: or.or.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xa7,0xf3]
or.or.t %d15, %d14, 7, %d15, 7

# CHECK-INST: or.or.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x27,0xfc]
or.or.t %d15, %d14, 7, %d15, 24

# CHECK-INST: or.or.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xa7,0xff]
or.or.t %d15, %d14, 7, %d15, 31

# CHECK-INST: or.or.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x38,0xf0]
or.or.t %d15, %d14, 24, %d0, 0

# CHECK-INST: or.or.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xb8,0xf3]
or.or.t %d15, %d14, 24, %d0, 7

# CHECK-INST: or.or.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x38,0xfc]
or.or.t %d15, %d14, 24, %d0, 24

# CHECK-INST: or.or.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xb8,0xff]
or.or.t %d15, %d14, 24, %d0, 31

# CHECK-INST: or.or.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x38,0xf0]
or.or.t %d15, %d14, 24, %d1, 0

# CHECK-INST: or.or.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xb8,0xf3]
or.or.t %d15, %d14, 24, %d1, 7

# CHECK-INST: or.or.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x38,0xfc]
or.or.t %d15, %d14, 24, %d1, 24

# CHECK-INST: or.or.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xb8,0xff]
or.or.t %d15, %d14, 24, %d1, 31

# CHECK-INST: or.or.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x38,0xf0]
or.or.t %d15, %d14, 24, %d14, 0

# CHECK-INST: or.or.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xb8,0xf3]
or.or.t %d15, %d14, 24, %d14, 7

# CHECK-INST: or.or.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x38,0xfc]
or.or.t %d15, %d14, 24, %d14, 24

# CHECK-INST: or.or.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xb8,0xff]
or.or.t %d15, %d14, 24, %d14, 31

# CHECK-INST: or.or.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x38,0xf0]
or.or.t %d15, %d14, 24, %d15, 0

# CHECK-INST: or.or.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xb8,0xf3]
or.or.t %d15, %d14, 24, %d15, 7

# CHECK-INST: or.or.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x38,0xfc]
or.or.t %d15, %d14, 24, %d15, 24

# CHECK-INST: or.or.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xb8,0xff]
or.or.t %d15, %d14, 24, %d15, 31

# CHECK-INST: or.or.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0e,0x3f,0xf0]
or.or.t %d15, %d14, 31, %d0, 0

# CHECK-INST: or.or.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0e,0xbf,0xf3]
or.or.t %d15, %d14, 31, %d0, 7

# CHECK-INST: or.or.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0e,0x3f,0xfc]
or.or.t %d15, %d14, 31, %d0, 24

# CHECK-INST: or.or.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0e,0xbf,0xff]
or.or.t %d15, %d14, 31, %d0, 31

# CHECK-INST: or.or.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1e,0x3f,0xf0]
or.or.t %d15, %d14, 31, %d1, 0

# CHECK-INST: or.or.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1e,0xbf,0xf3]
or.or.t %d15, %d14, 31, %d1, 7

# CHECK-INST: or.or.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1e,0x3f,0xfc]
or.or.t %d15, %d14, 31, %d1, 24

# CHECK-INST: or.or.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1e,0xbf,0xff]
or.or.t %d15, %d14, 31, %d1, 31

# CHECK-INST: or.or.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0xc7,0xee,0x3f,0xf0]
or.or.t %d15, %d14, 31, %d14, 0

# CHECK-INST: or.or.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0xc7,0xee,0xbf,0xf3]
or.or.t %d15, %d14, 31, %d14, 7

# CHECK-INST: or.or.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0xc7,0xee,0x3f,0xfc]
or.or.t %d15, %d14, 31, %d14, 24

# CHECK-INST: or.or.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0xc7,0xee,0xbf,0xff]
or.or.t %d15, %d14, 31, %d14, 31

# CHECK-INST: or.or.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0xc7,0xfe,0x3f,0xf0]
or.or.t %d15, %d14, 31, %d15, 0

# CHECK-INST: or.or.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0xc7,0xfe,0xbf,0xf3]
or.or.t %d15, %d14, 31, %d15, 7

# CHECK-INST: or.or.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0xc7,0xfe,0x3f,0xfc]
or.or.t %d15, %d14, 31, %d15, 24

# CHECK-INST: or.or.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0xc7,0xfe,0xbf,0xff]
or.or.t %d15, %d14, 31, %d15, 31

# CHECK-INST: or.or.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x20,0xf0]
or.or.t %d15, %d15, 0, %d0, 0

# CHECK-INST: or.or.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xa0,0xf3]
or.or.t %d15, %d15, 0, %d0, 7

# CHECK-INST: or.or.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x20,0xfc]
or.or.t %d15, %d15, 0, %d0, 24

# CHECK-INST: or.or.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xa0,0xff]
or.or.t %d15, %d15, 0, %d0, 31

# CHECK-INST: or.or.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x20,0xf0]
or.or.t %d15, %d15, 0, %d1, 0

# CHECK-INST: or.or.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xa0,0xf3]
or.or.t %d15, %d15, 0, %d1, 7

# CHECK-INST: or.or.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x20,0xfc]
or.or.t %d15, %d15, 0, %d1, 24

# CHECK-INST: or.or.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xa0,0xff]
or.or.t %d15, %d15, 0, %d1, 31

# CHECK-INST: or.or.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x20,0xf0]
or.or.t %d15, %d15, 0, %d14, 0

# CHECK-INST: or.or.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xa0,0xf3]
or.or.t %d15, %d15, 0, %d14, 7

# CHECK-INST: or.or.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x20,0xfc]
or.or.t %d15, %d15, 0, %d14, 24

# CHECK-INST: or.or.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xa0,0xff]
or.or.t %d15, %d15, 0, %d14, 31

# CHECK-INST: or.or.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x20,0xf0]
or.or.t %d15, %d15, 0, %d15, 0

# CHECK-INST: or.or.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xa0,0xf3]
or.or.t %d15, %d15, 0, %d15, 7

# CHECK-INST: or.or.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x20,0xfc]
or.or.t %d15, %d15, 0, %d15, 24

# CHECK-INST: or.or.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xa0,0xff]
or.or.t %d15, %d15, 0, %d15, 31

# CHECK-INST: or.or.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x27,0xf0]
or.or.t %d15, %d15, 7, %d0, 0

# CHECK-INST: or.or.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xa7,0xf3]
or.or.t %d15, %d15, 7, %d0, 7

# CHECK-INST: or.or.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x27,0xfc]
or.or.t %d15, %d15, 7, %d0, 24

# CHECK-INST: or.or.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xa7,0xff]
or.or.t %d15, %d15, 7, %d0, 31

# CHECK-INST: or.or.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x27,0xf0]
or.or.t %d15, %d15, 7, %d1, 0

# CHECK-INST: or.or.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xa7,0xf3]
or.or.t %d15, %d15, 7, %d1, 7

# CHECK-INST: or.or.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x27,0xfc]
or.or.t %d15, %d15, 7, %d1, 24

# CHECK-INST: or.or.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xa7,0xff]
or.or.t %d15, %d15, 7, %d1, 31

# CHECK-INST: or.or.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x27,0xf0]
or.or.t %d15, %d15, 7, %d14, 0

# CHECK-INST: or.or.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xa7,0xf3]
or.or.t %d15, %d15, 7, %d14, 7

# CHECK-INST: or.or.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x27,0xfc]
or.or.t %d15, %d15, 7, %d14, 24

# CHECK-INST: or.or.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xa7,0xff]
or.or.t %d15, %d15, 7, %d14, 31

# CHECK-INST: or.or.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x27,0xf0]
or.or.t %d15, %d15, 7, %d15, 0

# CHECK-INST: or.or.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xa7,0xf3]
or.or.t %d15, %d15, 7, %d15, 7

# CHECK-INST: or.or.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x27,0xfc]
or.or.t %d15, %d15, 7, %d15, 24

# CHECK-INST: or.or.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xa7,0xff]
or.or.t %d15, %d15, 7, %d15, 31

# CHECK-INST: or.or.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x38,0xf0]
or.or.t %d15, %d15, 24, %d0, 0

# CHECK-INST: or.or.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xb8,0xf3]
or.or.t %d15, %d15, 24, %d0, 7

# CHECK-INST: or.or.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x38,0xfc]
or.or.t %d15, %d15, 24, %d0, 24

# CHECK-INST: or.or.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xb8,0xff]
or.or.t %d15, %d15, 24, %d0, 31

# CHECK-INST: or.or.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x38,0xf0]
or.or.t %d15, %d15, 24, %d1, 0

# CHECK-INST: or.or.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xb8,0xf3]
or.or.t %d15, %d15, 24, %d1, 7

# CHECK-INST: or.or.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x38,0xfc]
or.or.t %d15, %d15, 24, %d1, 24

# CHECK-INST: or.or.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xb8,0xff]
or.or.t %d15, %d15, 24, %d1, 31

# CHECK-INST: or.or.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x38,0xf0]
or.or.t %d15, %d15, 24, %d14, 0

# CHECK-INST: or.or.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xb8,0xf3]
or.or.t %d15, %d15, 24, %d14, 7

# CHECK-INST: or.or.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x38,0xfc]
or.or.t %d15, %d15, 24, %d14, 24

# CHECK-INST: or.or.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xb8,0xff]
or.or.t %d15, %d15, 24, %d14, 31

# CHECK-INST: or.or.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x38,0xf0]
or.or.t %d15, %d15, 24, %d15, 0

# CHECK-INST: or.or.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xb8,0xf3]
or.or.t %d15, %d15, 24, %d15, 7

# CHECK-INST: or.or.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x38,0xfc]
or.or.t %d15, %d15, 24, %d15, 24

# CHECK-INST: or.or.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xb8,0xff]
or.or.t %d15, %d15, 24, %d15, 31

# CHECK-INST: or.or.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0xc7,0x0f,0x3f,0xf0]
or.or.t %d15, %d15, 31, %d0, 0

# CHECK-INST: or.or.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0xc7,0x0f,0xbf,0xf3]
or.or.t %d15, %d15, 31, %d0, 7

# CHECK-INST: or.or.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0xc7,0x0f,0x3f,0xfc]
or.or.t %d15, %d15, 31, %d0, 24

# CHECK-INST: or.or.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0xc7,0x0f,0xbf,0xff]
or.or.t %d15, %d15, 31, %d0, 31

# CHECK-INST: or.or.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0xc7,0x1f,0x3f,0xf0]
or.or.t %d15, %d15, 31, %d1, 0

# CHECK-INST: or.or.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0xc7,0x1f,0xbf,0xf3]
or.or.t %d15, %d15, 31, %d1, 7

# CHECK-INST: or.or.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0xc7,0x1f,0x3f,0xfc]
or.or.t %d15, %d15, 31, %d1, 24

# CHECK-INST: or.or.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0xc7,0x1f,0xbf,0xff]
or.or.t %d15, %d15, 31, %d1, 31

# CHECK-INST: or.or.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0xc7,0xef,0x3f,0xf0]
or.or.t %d15, %d15, 31, %d14, 0

# CHECK-INST: or.or.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0xc7,0xef,0xbf,0xf3]
or.or.t %d15, %d15, 31, %d14, 7

# CHECK-INST: or.or.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0xc7,0xef,0x3f,0xfc]
or.or.t %d15, %d15, 31, %d14, 24

# CHECK-INST: or.or.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0xc7,0xef,0xbf,0xff]
or.or.t %d15, %d15, 31, %d14, 31

# CHECK-INST: or.or.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0xc7,0xff,0x3f,0xf0]
or.or.t %d15, %d15, 31, %d15, 0

# CHECK-INST: or.or.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0xc7,0xff,0xbf,0xf3]
or.or.t %d15, %d15, 31, %d15, 7

# CHECK-INST: or.or.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0xc7,0xff,0x3f,0xfc]
or.or.t %d15, %d15, 31, %d15, 24

# CHECK-INST: or.or.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0xc7,0xff,0xbf,0xff]
or.or.t %d15, %d15, 31, %d15, 31
 