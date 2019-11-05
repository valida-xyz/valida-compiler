# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s \
# RUN:     | llvm-objdump -d - | FileCheck -check-prefix=CHECK-INST %s


# CHECK-INST: and.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x00,0x00]
and.t %d0, %d0, 0, %d0, 0

# CHECK-INST: and.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0x87,0x00,0x80,0x03]
and.t %d0, %d0, 0, %d0, 7

# CHECK-INST: and.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0x87,0x00,0x00,0x0c]
and.t %d0, %d0, 0, %d0, 24

# CHECK-INST: and.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0x87,0x00,0x80,0x0f]
and.t %d0, %d0, 0, %d0, 31

# CHECK-INST: and.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0x87,0x10,0x00,0x00]
and.t %d0, %d0, 0, %d1, 0

# CHECK-INST: and.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0x87,0x10,0x80,0x03]
and.t %d0, %d0, 0, %d1, 7

# CHECK-INST: and.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0x87,0x10,0x00,0x0c]
and.t %d0, %d0, 0, %d1, 24

# CHECK-INST: and.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0x87,0x10,0x80,0x0f]
and.t %d0, %d0, 0, %d1, 31

# CHECK-INST: and.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x00,0x00]
and.t %d0, %d0, 0, %d14, 0

# CHECK-INST: and.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0x87,0xe0,0x80,0x03]
and.t %d0, %d0, 0, %d14, 7

# CHECK-INST: and.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x00,0x0c]
and.t %d0, %d0, 0, %d14, 24

# CHECK-INST: and.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0x87,0xe0,0x80,0x0f]
and.t %d0, %d0, 0, %d14, 31

# CHECK-INST: and.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x00,0x00]
and.t %d0, %d0, 0, %d15, 0

# CHECK-INST: and.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0x87,0xf0,0x80,0x03]
and.t %d0, %d0, 0, %d15, 7

# CHECK-INST: and.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x00,0x0c]
and.t %d0, %d0, 0, %d15, 24

# CHECK-INST: and.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0x87,0xf0,0x80,0x0f]
and.t %d0, %d0, 0, %d15, 31

# CHECK-INST: and.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0x87,0x00,0x07,0x00]
and.t %d0, %d0, 7, %d0, 0

# CHECK-INST: and.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0x87,0x00,0x87,0x03]
and.t %d0, %d0, 7, %d0, 7

# CHECK-INST: and.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0x87,0x00,0x07,0x0c]
and.t %d0, %d0, 7, %d0, 24

# CHECK-INST: and.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0x87,0x00,0x87,0x0f]
and.t %d0, %d0, 7, %d0, 31

# CHECK-INST: and.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0x87,0x10,0x07,0x00]
and.t %d0, %d0, 7, %d1, 0

# CHECK-INST: and.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0x87,0x10,0x87,0x03]
and.t %d0, %d0, 7, %d1, 7

# CHECK-INST: and.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0x87,0x10,0x07,0x0c]
and.t %d0, %d0, 7, %d1, 24

# CHECK-INST: and.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0x87,0x10,0x87,0x0f]
and.t %d0, %d0, 7, %d1, 31

# CHECK-INST: and.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x07,0x00]
and.t %d0, %d0, 7, %d14, 0

# CHECK-INST: and.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0x87,0xe0,0x87,0x03]
and.t %d0, %d0, 7, %d14, 7

# CHECK-INST: and.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x07,0x0c]
and.t %d0, %d0, 7, %d14, 24

# CHECK-INST: and.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0x87,0xe0,0x87,0x0f]
and.t %d0, %d0, 7, %d14, 31

# CHECK-INST: and.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x07,0x00]
and.t %d0, %d0, 7, %d15, 0

# CHECK-INST: and.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0x87,0xf0,0x87,0x03]
and.t %d0, %d0, 7, %d15, 7

# CHECK-INST: and.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x07,0x0c]
and.t %d0, %d0, 7, %d15, 24

# CHECK-INST: and.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0x87,0xf0,0x87,0x0f]
and.t %d0, %d0, 7, %d15, 31

# CHECK-INST: and.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0x87,0x00,0x18,0x00]
and.t %d0, %d0, 24, %d0, 0

# CHECK-INST: and.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0x87,0x00,0x98,0x03]
and.t %d0, %d0, 24, %d0, 7

# CHECK-INST: and.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0x87,0x00,0x18,0x0c]
and.t %d0, %d0, 24, %d0, 24

# CHECK-INST: and.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0x87,0x00,0x98,0x0f]
and.t %d0, %d0, 24, %d0, 31

# CHECK-INST: and.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0x87,0x10,0x18,0x00]
and.t %d0, %d0, 24, %d1, 0

# CHECK-INST: and.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0x87,0x10,0x98,0x03]
and.t %d0, %d0, 24, %d1, 7

# CHECK-INST: and.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0x87,0x10,0x18,0x0c]
and.t %d0, %d0, 24, %d1, 24

# CHECK-INST: and.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0x87,0x10,0x98,0x0f]
and.t %d0, %d0, 24, %d1, 31

# CHECK-INST: and.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x18,0x00]
and.t %d0, %d0, 24, %d14, 0

# CHECK-INST: and.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0x87,0xe0,0x98,0x03]
and.t %d0, %d0, 24, %d14, 7

# CHECK-INST: and.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x18,0x0c]
and.t %d0, %d0, 24, %d14, 24

# CHECK-INST: and.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0x87,0xe0,0x98,0x0f]
and.t %d0, %d0, 24, %d14, 31

# CHECK-INST: and.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x18,0x00]
and.t %d0, %d0, 24, %d15, 0

# CHECK-INST: and.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0x87,0xf0,0x98,0x03]
and.t %d0, %d0, 24, %d15, 7

# CHECK-INST: and.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x18,0x0c]
and.t %d0, %d0, 24, %d15, 24

# CHECK-INST: and.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0x87,0xf0,0x98,0x0f]
and.t %d0, %d0, 24, %d15, 31

# CHECK-INST: and.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0x87,0x00,0x1f,0x00]
and.t %d0, %d0, 31, %d0, 0

# CHECK-INST: and.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0x87,0x00,0x9f,0x03]
and.t %d0, %d0, 31, %d0, 7

# CHECK-INST: and.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0x87,0x00,0x1f,0x0c]
and.t %d0, %d0, 31, %d0, 24

# CHECK-INST: and.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0x87,0x00,0x9f,0x0f]
and.t %d0, %d0, 31, %d0, 31

# CHECK-INST: and.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0x87,0x10,0x1f,0x00]
and.t %d0, %d0, 31, %d1, 0

# CHECK-INST: and.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0x87,0x10,0x9f,0x03]
and.t %d0, %d0, 31, %d1, 7

# CHECK-INST: and.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0x87,0x10,0x1f,0x0c]
and.t %d0, %d0, 31, %d1, 24

# CHECK-INST: and.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0x87,0x10,0x9f,0x0f]
and.t %d0, %d0, 31, %d1, 31

# CHECK-INST: and.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x1f,0x00]
and.t %d0, %d0, 31, %d14, 0

# CHECK-INST: and.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0x87,0xe0,0x9f,0x03]
and.t %d0, %d0, 31, %d14, 7

# CHECK-INST: and.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x1f,0x0c]
and.t %d0, %d0, 31, %d14, 24

# CHECK-INST: and.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0x87,0xe0,0x9f,0x0f]
and.t %d0, %d0, 31, %d14, 31

# CHECK-INST: and.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x1f,0x00]
and.t %d0, %d0, 31, %d15, 0

# CHECK-INST: and.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0x87,0xf0,0x9f,0x03]
and.t %d0, %d0, 31, %d15, 7

# CHECK-INST: and.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x1f,0x0c]
and.t %d0, %d0, 31, %d15, 24

# CHECK-INST: and.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0x87,0xf0,0x9f,0x0f]
and.t %d0, %d0, 31, %d15, 31

# CHECK-INST: and.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0x87,0x01,0x00,0x00]
and.t %d0, %d1, 0, %d0, 0

# CHECK-INST: and.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0x87,0x01,0x80,0x03]
and.t %d0, %d1, 0, %d0, 7

# CHECK-INST: and.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0x87,0x01,0x00,0x0c]
and.t %d0, %d1, 0, %d0, 24

# CHECK-INST: and.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0x87,0x01,0x80,0x0f]
and.t %d0, %d1, 0, %d0, 31

# CHECK-INST: and.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0x87,0x11,0x00,0x00]
and.t %d0, %d1, 0, %d1, 0

# CHECK-INST: and.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0x87,0x11,0x80,0x03]
and.t %d0, %d1, 0, %d1, 7

# CHECK-INST: and.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0x87,0x11,0x00,0x0c]
and.t %d0, %d1, 0, %d1, 24

# CHECK-INST: and.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0x87,0x11,0x80,0x0f]
and.t %d0, %d1, 0, %d1, 31

# CHECK-INST: and.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x00,0x00]
and.t %d0, %d1, 0, %d14, 0

# CHECK-INST: and.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0x87,0xe1,0x80,0x03]
and.t %d0, %d1, 0, %d14, 7

# CHECK-INST: and.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x00,0x0c]
and.t %d0, %d1, 0, %d14, 24

# CHECK-INST: and.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0x87,0xe1,0x80,0x0f]
and.t %d0, %d1, 0, %d14, 31

# CHECK-INST: and.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x00,0x00]
and.t %d0, %d1, 0, %d15, 0

# CHECK-INST: and.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0x87,0xf1,0x80,0x03]
and.t %d0, %d1, 0, %d15, 7

# CHECK-INST: and.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x00,0x0c]
and.t %d0, %d1, 0, %d15, 24

# CHECK-INST: and.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0x87,0xf1,0x80,0x0f]
and.t %d0, %d1, 0, %d15, 31

# CHECK-INST: and.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0x87,0x01,0x07,0x00]
and.t %d0, %d1, 7, %d0, 0

# CHECK-INST: and.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0x87,0x01,0x87,0x03]
and.t %d0, %d1, 7, %d0, 7

# CHECK-INST: and.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0x87,0x01,0x07,0x0c]
and.t %d0, %d1, 7, %d0, 24

# CHECK-INST: and.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0x87,0x01,0x87,0x0f]
and.t %d0, %d1, 7, %d0, 31

# CHECK-INST: and.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0x87,0x11,0x07,0x00]
and.t %d0, %d1, 7, %d1, 0

# CHECK-INST: and.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0x87,0x11,0x87,0x03]
and.t %d0, %d1, 7, %d1, 7

# CHECK-INST: and.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0x87,0x11,0x07,0x0c]
and.t %d0, %d1, 7, %d1, 24

# CHECK-INST: and.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0x87,0x11,0x87,0x0f]
and.t %d0, %d1, 7, %d1, 31

# CHECK-INST: and.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x07,0x00]
and.t %d0, %d1, 7, %d14, 0

# CHECK-INST: and.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0x87,0xe1,0x87,0x03]
and.t %d0, %d1, 7, %d14, 7

# CHECK-INST: and.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x07,0x0c]
and.t %d0, %d1, 7, %d14, 24

# CHECK-INST: and.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0x87,0xe1,0x87,0x0f]
and.t %d0, %d1, 7, %d14, 31

# CHECK-INST: and.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x07,0x00]
and.t %d0, %d1, 7, %d15, 0

# CHECK-INST: and.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0x87,0xf1,0x87,0x03]
and.t %d0, %d1, 7, %d15, 7

# CHECK-INST: and.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x07,0x0c]
and.t %d0, %d1, 7, %d15, 24

# CHECK-INST: and.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0x87,0xf1,0x87,0x0f]
and.t %d0, %d1, 7, %d15, 31

# CHECK-INST: and.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0x87,0x01,0x18,0x00]
and.t %d0, %d1, 24, %d0, 0

# CHECK-INST: and.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0x87,0x01,0x98,0x03]
and.t %d0, %d1, 24, %d0, 7

# CHECK-INST: and.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0x87,0x01,0x18,0x0c]
and.t %d0, %d1, 24, %d0, 24

# CHECK-INST: and.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0x87,0x01,0x98,0x0f]
and.t %d0, %d1, 24, %d0, 31

# CHECK-INST: and.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0x87,0x11,0x18,0x00]
and.t %d0, %d1, 24, %d1, 0

# CHECK-INST: and.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0x87,0x11,0x98,0x03]
and.t %d0, %d1, 24, %d1, 7

# CHECK-INST: and.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0x87,0x11,0x18,0x0c]
and.t %d0, %d1, 24, %d1, 24

# CHECK-INST: and.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0x87,0x11,0x98,0x0f]
and.t %d0, %d1, 24, %d1, 31

# CHECK-INST: and.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x18,0x00]
and.t %d0, %d1, 24, %d14, 0

# CHECK-INST: and.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0x87,0xe1,0x98,0x03]
and.t %d0, %d1, 24, %d14, 7

# CHECK-INST: and.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x18,0x0c]
and.t %d0, %d1, 24, %d14, 24

# CHECK-INST: and.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0x87,0xe1,0x98,0x0f]
and.t %d0, %d1, 24, %d14, 31

# CHECK-INST: and.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x18,0x00]
and.t %d0, %d1, 24, %d15, 0

# CHECK-INST: and.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0x87,0xf1,0x98,0x03]
and.t %d0, %d1, 24, %d15, 7

# CHECK-INST: and.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x18,0x0c]
and.t %d0, %d1, 24, %d15, 24

# CHECK-INST: and.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0x87,0xf1,0x98,0x0f]
and.t %d0, %d1, 24, %d15, 31

# CHECK-INST: and.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0x87,0x01,0x1f,0x00]
and.t %d0, %d1, 31, %d0, 0

# CHECK-INST: and.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0x87,0x01,0x9f,0x03]
and.t %d0, %d1, 31, %d0, 7

# CHECK-INST: and.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0x87,0x01,0x1f,0x0c]
and.t %d0, %d1, 31, %d0, 24

# CHECK-INST: and.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0x87,0x01,0x9f,0x0f]
and.t %d0, %d1, 31, %d0, 31

# CHECK-INST: and.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0x87,0x11,0x1f,0x00]
and.t %d0, %d1, 31, %d1, 0

# CHECK-INST: and.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0x87,0x11,0x9f,0x03]
and.t %d0, %d1, 31, %d1, 7

# CHECK-INST: and.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0x87,0x11,0x1f,0x0c]
and.t %d0, %d1, 31, %d1, 24

# CHECK-INST: and.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0x87,0x11,0x9f,0x0f]
and.t %d0, %d1, 31, %d1, 31

# CHECK-INST: and.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x1f,0x00]
and.t %d0, %d1, 31, %d14, 0

# CHECK-INST: and.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0x87,0xe1,0x9f,0x03]
and.t %d0, %d1, 31, %d14, 7

# CHECK-INST: and.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x1f,0x0c]
and.t %d0, %d1, 31, %d14, 24

# CHECK-INST: and.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0x87,0xe1,0x9f,0x0f]
and.t %d0, %d1, 31, %d14, 31

# CHECK-INST: and.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x1f,0x00]
and.t %d0, %d1, 31, %d15, 0

# CHECK-INST: and.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0x87,0xf1,0x9f,0x03]
and.t %d0, %d1, 31, %d15, 7

# CHECK-INST: and.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x1f,0x0c]
and.t %d0, %d1, 31, %d15, 24

# CHECK-INST: and.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0x87,0xf1,0x9f,0x0f]
and.t %d0, %d1, 31, %d15, 31

# CHECK-INST: and.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x00,0x00]
and.t %d0, %d14, 0, %d0, 0

# CHECK-INST: and.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0x87,0x0e,0x80,0x03]
and.t %d0, %d14, 0, %d0, 7

# CHECK-INST: and.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x00,0x0c]
and.t %d0, %d14, 0, %d0, 24

# CHECK-INST: and.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0x87,0x0e,0x80,0x0f]
and.t %d0, %d14, 0, %d0, 31

# CHECK-INST: and.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x00,0x00]
and.t %d0, %d14, 0, %d1, 0

# CHECK-INST: and.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0x87,0x1e,0x80,0x03]
and.t %d0, %d14, 0, %d1, 7

# CHECK-INST: and.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x00,0x0c]
and.t %d0, %d14, 0, %d1, 24

# CHECK-INST: and.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0x87,0x1e,0x80,0x0f]
and.t %d0, %d14, 0, %d1, 31

# CHECK-INST: and.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0x87,0xee,0x00,0x00]
and.t %d0, %d14, 0, %d14, 0

# CHECK-INST: and.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0x87,0xee,0x80,0x03]
and.t %d0, %d14, 0, %d14, 7

# CHECK-INST: and.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0x87,0xee,0x00,0x0c]
and.t %d0, %d14, 0, %d14, 24

# CHECK-INST: and.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0x87,0xee,0x80,0x0f]
and.t %d0, %d14, 0, %d14, 31

# CHECK-INST: and.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x00,0x00]
and.t %d0, %d14, 0, %d15, 0

# CHECK-INST: and.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0x87,0xfe,0x80,0x03]
and.t %d0, %d14, 0, %d15, 7

# CHECK-INST: and.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x00,0x0c]
and.t %d0, %d14, 0, %d15, 24

# CHECK-INST: and.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0x87,0xfe,0x80,0x0f]
and.t %d0, %d14, 0, %d15, 31

# CHECK-INST: and.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x07,0x00]
and.t %d0, %d14, 7, %d0, 0

# CHECK-INST: and.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0x87,0x0e,0x87,0x03]
and.t %d0, %d14, 7, %d0, 7

# CHECK-INST: and.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x07,0x0c]
and.t %d0, %d14, 7, %d0, 24

# CHECK-INST: and.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0x87,0x0e,0x87,0x0f]
and.t %d0, %d14, 7, %d0, 31

# CHECK-INST: and.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x07,0x00]
and.t %d0, %d14, 7, %d1, 0

# CHECK-INST: and.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0x87,0x1e,0x87,0x03]
and.t %d0, %d14, 7, %d1, 7

# CHECK-INST: and.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x07,0x0c]
and.t %d0, %d14, 7, %d1, 24

# CHECK-INST: and.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0x87,0x1e,0x87,0x0f]
and.t %d0, %d14, 7, %d1, 31

# CHECK-INST: and.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0x87,0xee,0x07,0x00]
and.t %d0, %d14, 7, %d14, 0

# CHECK-INST: and.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0x87,0xee,0x87,0x03]
and.t %d0, %d14, 7, %d14, 7

# CHECK-INST: and.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0x87,0xee,0x07,0x0c]
and.t %d0, %d14, 7, %d14, 24

# CHECK-INST: and.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0x87,0xee,0x87,0x0f]
and.t %d0, %d14, 7, %d14, 31

# CHECK-INST: and.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x07,0x00]
and.t %d0, %d14, 7, %d15, 0

# CHECK-INST: and.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0x87,0xfe,0x87,0x03]
and.t %d0, %d14, 7, %d15, 7

# CHECK-INST: and.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x07,0x0c]
and.t %d0, %d14, 7, %d15, 24

# CHECK-INST: and.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0x87,0xfe,0x87,0x0f]
and.t %d0, %d14, 7, %d15, 31

# CHECK-INST: and.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x18,0x00]
and.t %d0, %d14, 24, %d0, 0

# CHECK-INST: and.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0x87,0x0e,0x98,0x03]
and.t %d0, %d14, 24, %d0, 7

# CHECK-INST: and.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x18,0x0c]
and.t %d0, %d14, 24, %d0, 24

# CHECK-INST: and.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0x87,0x0e,0x98,0x0f]
and.t %d0, %d14, 24, %d0, 31

# CHECK-INST: and.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x18,0x00]
and.t %d0, %d14, 24, %d1, 0

# CHECK-INST: and.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0x87,0x1e,0x98,0x03]
and.t %d0, %d14, 24, %d1, 7

# CHECK-INST: and.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x18,0x0c]
and.t %d0, %d14, 24, %d1, 24

# CHECK-INST: and.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0x87,0x1e,0x98,0x0f]
and.t %d0, %d14, 24, %d1, 31

# CHECK-INST: and.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0x87,0xee,0x18,0x00]
and.t %d0, %d14, 24, %d14, 0

# CHECK-INST: and.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0x87,0xee,0x98,0x03]
and.t %d0, %d14, 24, %d14, 7

# CHECK-INST: and.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0x87,0xee,0x18,0x0c]
and.t %d0, %d14, 24, %d14, 24

# CHECK-INST: and.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0x87,0xee,0x98,0x0f]
and.t %d0, %d14, 24, %d14, 31

# CHECK-INST: and.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x18,0x00]
and.t %d0, %d14, 24, %d15, 0

# CHECK-INST: and.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0x87,0xfe,0x98,0x03]
and.t %d0, %d14, 24, %d15, 7

# CHECK-INST: and.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x18,0x0c]
and.t %d0, %d14, 24, %d15, 24

# CHECK-INST: and.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0x87,0xfe,0x98,0x0f]
and.t %d0, %d14, 24, %d15, 31

# CHECK-INST: and.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x1f,0x00]
and.t %d0, %d14, 31, %d0, 0

# CHECK-INST: and.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0x87,0x0e,0x9f,0x03]
and.t %d0, %d14, 31, %d0, 7

# CHECK-INST: and.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x1f,0x0c]
and.t %d0, %d14, 31, %d0, 24

# CHECK-INST: and.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0x87,0x0e,0x9f,0x0f]
and.t %d0, %d14, 31, %d0, 31

# CHECK-INST: and.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x1f,0x00]
and.t %d0, %d14, 31, %d1, 0

# CHECK-INST: and.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0x87,0x1e,0x9f,0x03]
and.t %d0, %d14, 31, %d1, 7

# CHECK-INST: and.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x1f,0x0c]
and.t %d0, %d14, 31, %d1, 24

# CHECK-INST: and.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0x87,0x1e,0x9f,0x0f]
and.t %d0, %d14, 31, %d1, 31

# CHECK-INST: and.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0x87,0xee,0x1f,0x00]
and.t %d0, %d14, 31, %d14, 0

# CHECK-INST: and.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0x87,0xee,0x9f,0x03]
and.t %d0, %d14, 31, %d14, 7

# CHECK-INST: and.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0x87,0xee,0x1f,0x0c]
and.t %d0, %d14, 31, %d14, 24

# CHECK-INST: and.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0x87,0xee,0x9f,0x0f]
and.t %d0, %d14, 31, %d14, 31

# CHECK-INST: and.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x1f,0x00]
and.t %d0, %d14, 31, %d15, 0

# CHECK-INST: and.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0x87,0xfe,0x9f,0x03]
and.t %d0, %d14, 31, %d15, 7

# CHECK-INST: and.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x1f,0x0c]
and.t %d0, %d14, 31, %d15, 24

# CHECK-INST: and.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0x87,0xfe,0x9f,0x0f]
and.t %d0, %d14, 31, %d15, 31

# CHECK-INST: and.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x00,0x00]
and.t %d0, %d15, 0, %d0, 0

# CHECK-INST: and.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0x87,0x0f,0x80,0x03]
and.t %d0, %d15, 0, %d0, 7

# CHECK-INST: and.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x00,0x0c]
and.t %d0, %d15, 0, %d0, 24

# CHECK-INST: and.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0x87,0x0f,0x80,0x0f]
and.t %d0, %d15, 0, %d0, 31

# CHECK-INST: and.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x00,0x00]
and.t %d0, %d15, 0, %d1, 0

# CHECK-INST: and.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0x87,0x1f,0x80,0x03]
and.t %d0, %d15, 0, %d1, 7

# CHECK-INST: and.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x00,0x0c]
and.t %d0, %d15, 0, %d1, 24

# CHECK-INST: and.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0x87,0x1f,0x80,0x0f]
and.t %d0, %d15, 0, %d1, 31

# CHECK-INST: and.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0x87,0xef,0x00,0x00]
and.t %d0, %d15, 0, %d14, 0

# CHECK-INST: and.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0x87,0xef,0x80,0x03]
and.t %d0, %d15, 0, %d14, 7

# CHECK-INST: and.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0x87,0xef,0x00,0x0c]
and.t %d0, %d15, 0, %d14, 24

# CHECK-INST: and.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0x87,0xef,0x80,0x0f]
and.t %d0, %d15, 0, %d14, 31

# CHECK-INST: and.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0x87,0xff,0x00,0x00]
and.t %d0, %d15, 0, %d15, 0

# CHECK-INST: and.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0x87,0xff,0x80,0x03]
and.t %d0, %d15, 0, %d15, 7

# CHECK-INST: and.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0x87,0xff,0x00,0x0c]
and.t %d0, %d15, 0, %d15, 24

# CHECK-INST: and.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0x87,0xff,0x80,0x0f]
and.t %d0, %d15, 0, %d15, 31

# CHECK-INST: and.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x07,0x00]
and.t %d0, %d15, 7, %d0, 0

# CHECK-INST: and.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0x87,0x0f,0x87,0x03]
and.t %d0, %d15, 7, %d0, 7

# CHECK-INST: and.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x07,0x0c]
and.t %d0, %d15, 7, %d0, 24

# CHECK-INST: and.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0x87,0x0f,0x87,0x0f]
and.t %d0, %d15, 7, %d0, 31

# CHECK-INST: and.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x07,0x00]
and.t %d0, %d15, 7, %d1, 0

# CHECK-INST: and.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0x87,0x1f,0x87,0x03]
and.t %d0, %d15, 7, %d1, 7

# CHECK-INST: and.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x07,0x0c]
and.t %d0, %d15, 7, %d1, 24

# CHECK-INST: and.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0x87,0x1f,0x87,0x0f]
and.t %d0, %d15, 7, %d1, 31

# CHECK-INST: and.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0x87,0xef,0x07,0x00]
and.t %d0, %d15, 7, %d14, 0

# CHECK-INST: and.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0x87,0xef,0x87,0x03]
and.t %d0, %d15, 7, %d14, 7

# CHECK-INST: and.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0x87,0xef,0x07,0x0c]
and.t %d0, %d15, 7, %d14, 24

# CHECK-INST: and.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0x87,0xef,0x87,0x0f]
and.t %d0, %d15, 7, %d14, 31

# CHECK-INST: and.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0x87,0xff,0x07,0x00]
and.t %d0, %d15, 7, %d15, 0

# CHECK-INST: and.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0x87,0xff,0x87,0x03]
and.t %d0, %d15, 7, %d15, 7

# CHECK-INST: and.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0x87,0xff,0x07,0x0c]
and.t %d0, %d15, 7, %d15, 24

# CHECK-INST: and.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0x87,0xff,0x87,0x0f]
and.t %d0, %d15, 7, %d15, 31

# CHECK-INST: and.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x18,0x00]
and.t %d0, %d15, 24, %d0, 0

# CHECK-INST: and.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0x87,0x0f,0x98,0x03]
and.t %d0, %d15, 24, %d0, 7

# CHECK-INST: and.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x18,0x0c]
and.t %d0, %d15, 24, %d0, 24

# CHECK-INST: and.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0x87,0x0f,0x98,0x0f]
and.t %d0, %d15, 24, %d0, 31

# CHECK-INST: and.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x18,0x00]
and.t %d0, %d15, 24, %d1, 0

# CHECK-INST: and.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0x87,0x1f,0x98,0x03]
and.t %d0, %d15, 24, %d1, 7

# CHECK-INST: and.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x18,0x0c]
and.t %d0, %d15, 24, %d1, 24

# CHECK-INST: and.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0x87,0x1f,0x98,0x0f]
and.t %d0, %d15, 24, %d1, 31

# CHECK-INST: and.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0x87,0xef,0x18,0x00]
and.t %d0, %d15, 24, %d14, 0

# CHECK-INST: and.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0x87,0xef,0x98,0x03]
and.t %d0, %d15, 24, %d14, 7

# CHECK-INST: and.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0x87,0xef,0x18,0x0c]
and.t %d0, %d15, 24, %d14, 24

# CHECK-INST: and.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0x87,0xef,0x98,0x0f]
and.t %d0, %d15, 24, %d14, 31

# CHECK-INST: and.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0x87,0xff,0x18,0x00]
and.t %d0, %d15, 24, %d15, 0

# CHECK-INST: and.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0x87,0xff,0x98,0x03]
and.t %d0, %d15, 24, %d15, 7

# CHECK-INST: and.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0x87,0xff,0x18,0x0c]
and.t %d0, %d15, 24, %d15, 24

# CHECK-INST: and.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0x87,0xff,0x98,0x0f]
and.t %d0, %d15, 24, %d15, 31

# CHECK-INST: and.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x1f,0x00]
and.t %d0, %d15, 31, %d0, 0

# CHECK-INST: and.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0x87,0x0f,0x9f,0x03]
and.t %d0, %d15, 31, %d0, 7

# CHECK-INST: and.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x1f,0x0c]
and.t %d0, %d15, 31, %d0, 24

# CHECK-INST: and.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0x87,0x0f,0x9f,0x0f]
and.t %d0, %d15, 31, %d0, 31

# CHECK-INST: and.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x1f,0x00]
and.t %d0, %d15, 31, %d1, 0

# CHECK-INST: and.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0x87,0x1f,0x9f,0x03]
and.t %d0, %d15, 31, %d1, 7

# CHECK-INST: and.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x1f,0x0c]
and.t %d0, %d15, 31, %d1, 24

# CHECK-INST: and.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0x87,0x1f,0x9f,0x0f]
and.t %d0, %d15, 31, %d1, 31

# CHECK-INST: and.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0x87,0xef,0x1f,0x00]
and.t %d0, %d15, 31, %d14, 0

# CHECK-INST: and.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0x87,0xef,0x9f,0x03]
and.t %d0, %d15, 31, %d14, 7

# CHECK-INST: and.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0x87,0xef,0x1f,0x0c]
and.t %d0, %d15, 31, %d14, 24

# CHECK-INST: and.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0x87,0xef,0x9f,0x0f]
and.t %d0, %d15, 31, %d14, 31

# CHECK-INST: and.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0x87,0xff,0x1f,0x00]
and.t %d0, %d15, 31, %d15, 0

# CHECK-INST: and.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0x87,0xff,0x9f,0x03]
and.t %d0, %d15, 31, %d15, 7

# CHECK-INST: and.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0x87,0xff,0x1f,0x0c]
and.t %d0, %d15, 31, %d15, 24

# CHECK-INST: and.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0x87,0xff,0x9f,0x0f]
and.t %d0, %d15, 31, %d15, 31

# CHECK-INST: and.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x00,0x10]
and.t %d1, %d0, 0, %d0, 0

# CHECK-INST: and.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0x87,0x00,0x80,0x13]
and.t %d1, %d0, 0, %d0, 7

# CHECK-INST: and.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0x87,0x00,0x00,0x1c]
and.t %d1, %d0, 0, %d0, 24

# CHECK-INST: and.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0x87,0x00,0x80,0x1f]
and.t %d1, %d0, 0, %d0, 31

# CHECK-INST: and.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0x87,0x10,0x00,0x10]
and.t %d1, %d0, 0, %d1, 0

# CHECK-INST: and.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0x87,0x10,0x80,0x13]
and.t %d1, %d0, 0, %d1, 7

# CHECK-INST: and.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0x87,0x10,0x00,0x1c]
and.t %d1, %d0, 0, %d1, 24

# CHECK-INST: and.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0x87,0x10,0x80,0x1f]
and.t %d1, %d0, 0, %d1, 31

# CHECK-INST: and.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x00,0x10]
and.t %d1, %d0, 0, %d14, 0

# CHECK-INST: and.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0x87,0xe0,0x80,0x13]
and.t %d1, %d0, 0, %d14, 7

# CHECK-INST: and.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x00,0x1c]
and.t %d1, %d0, 0, %d14, 24

# CHECK-INST: and.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0x87,0xe0,0x80,0x1f]
and.t %d1, %d0, 0, %d14, 31

# CHECK-INST: and.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x00,0x10]
and.t %d1, %d0, 0, %d15, 0

# CHECK-INST: and.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0x87,0xf0,0x80,0x13]
and.t %d1, %d0, 0, %d15, 7

# CHECK-INST: and.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x00,0x1c]
and.t %d1, %d0, 0, %d15, 24

# CHECK-INST: and.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0x87,0xf0,0x80,0x1f]
and.t %d1, %d0, 0, %d15, 31

# CHECK-INST: and.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0x87,0x00,0x07,0x10]
and.t %d1, %d0, 7, %d0, 0

# CHECK-INST: and.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0x87,0x00,0x87,0x13]
and.t %d1, %d0, 7, %d0, 7

# CHECK-INST: and.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0x87,0x00,0x07,0x1c]
and.t %d1, %d0, 7, %d0, 24

# CHECK-INST: and.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0x87,0x00,0x87,0x1f]
and.t %d1, %d0, 7, %d0, 31

# CHECK-INST: and.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0x87,0x10,0x07,0x10]
and.t %d1, %d0, 7, %d1, 0

# CHECK-INST: and.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0x87,0x10,0x87,0x13]
and.t %d1, %d0, 7, %d1, 7

# CHECK-INST: and.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0x87,0x10,0x07,0x1c]
and.t %d1, %d0, 7, %d1, 24

# CHECK-INST: and.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0x87,0x10,0x87,0x1f]
and.t %d1, %d0, 7, %d1, 31

# CHECK-INST: and.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x07,0x10]
and.t %d1, %d0, 7, %d14, 0

# CHECK-INST: and.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0x87,0xe0,0x87,0x13]
and.t %d1, %d0, 7, %d14, 7

# CHECK-INST: and.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x07,0x1c]
and.t %d1, %d0, 7, %d14, 24

# CHECK-INST: and.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0x87,0xe0,0x87,0x1f]
and.t %d1, %d0, 7, %d14, 31

# CHECK-INST: and.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x07,0x10]
and.t %d1, %d0, 7, %d15, 0

# CHECK-INST: and.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0x87,0xf0,0x87,0x13]
and.t %d1, %d0, 7, %d15, 7

# CHECK-INST: and.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x07,0x1c]
and.t %d1, %d0, 7, %d15, 24

# CHECK-INST: and.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0x87,0xf0,0x87,0x1f]
and.t %d1, %d0, 7, %d15, 31

# CHECK-INST: and.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0x87,0x00,0x18,0x10]
and.t %d1, %d0, 24, %d0, 0

# CHECK-INST: and.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0x87,0x00,0x98,0x13]
and.t %d1, %d0, 24, %d0, 7

# CHECK-INST: and.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0x87,0x00,0x18,0x1c]
and.t %d1, %d0, 24, %d0, 24

# CHECK-INST: and.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0x87,0x00,0x98,0x1f]
and.t %d1, %d0, 24, %d0, 31

# CHECK-INST: and.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0x87,0x10,0x18,0x10]
and.t %d1, %d0, 24, %d1, 0

# CHECK-INST: and.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0x87,0x10,0x98,0x13]
and.t %d1, %d0, 24, %d1, 7

# CHECK-INST: and.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0x87,0x10,0x18,0x1c]
and.t %d1, %d0, 24, %d1, 24

# CHECK-INST: and.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0x87,0x10,0x98,0x1f]
and.t %d1, %d0, 24, %d1, 31

# CHECK-INST: and.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x18,0x10]
and.t %d1, %d0, 24, %d14, 0

# CHECK-INST: and.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0x87,0xe0,0x98,0x13]
and.t %d1, %d0, 24, %d14, 7

# CHECK-INST: and.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x18,0x1c]
and.t %d1, %d0, 24, %d14, 24

# CHECK-INST: and.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0x87,0xe0,0x98,0x1f]
and.t %d1, %d0, 24, %d14, 31

# CHECK-INST: and.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x18,0x10]
and.t %d1, %d0, 24, %d15, 0

# CHECK-INST: and.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0x87,0xf0,0x98,0x13]
and.t %d1, %d0, 24, %d15, 7

# CHECK-INST: and.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x18,0x1c]
and.t %d1, %d0, 24, %d15, 24

# CHECK-INST: and.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0x87,0xf0,0x98,0x1f]
and.t %d1, %d0, 24, %d15, 31

# CHECK-INST: and.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0x87,0x00,0x1f,0x10]
and.t %d1, %d0, 31, %d0, 0

# CHECK-INST: and.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0x87,0x00,0x9f,0x13]
and.t %d1, %d0, 31, %d0, 7

# CHECK-INST: and.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0x87,0x00,0x1f,0x1c]
and.t %d1, %d0, 31, %d0, 24

# CHECK-INST: and.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0x87,0x00,0x9f,0x1f]
and.t %d1, %d0, 31, %d0, 31

# CHECK-INST: and.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0x87,0x10,0x1f,0x10]
and.t %d1, %d0, 31, %d1, 0

# CHECK-INST: and.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0x87,0x10,0x9f,0x13]
and.t %d1, %d0, 31, %d1, 7

# CHECK-INST: and.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0x87,0x10,0x1f,0x1c]
and.t %d1, %d0, 31, %d1, 24

# CHECK-INST: and.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0x87,0x10,0x9f,0x1f]
and.t %d1, %d0, 31, %d1, 31

# CHECK-INST: and.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x1f,0x10]
and.t %d1, %d0, 31, %d14, 0

# CHECK-INST: and.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0x87,0xe0,0x9f,0x13]
and.t %d1, %d0, 31, %d14, 7

# CHECK-INST: and.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x1f,0x1c]
and.t %d1, %d0, 31, %d14, 24

# CHECK-INST: and.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0x87,0xe0,0x9f,0x1f]
and.t %d1, %d0, 31, %d14, 31

# CHECK-INST: and.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x1f,0x10]
and.t %d1, %d0, 31, %d15, 0

# CHECK-INST: and.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0x87,0xf0,0x9f,0x13]
and.t %d1, %d0, 31, %d15, 7

# CHECK-INST: and.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x1f,0x1c]
and.t %d1, %d0, 31, %d15, 24

# CHECK-INST: and.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0x87,0xf0,0x9f,0x1f]
and.t %d1, %d0, 31, %d15, 31

# CHECK-INST: and.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0x87,0x01,0x00,0x10]
and.t %d1, %d1, 0, %d0, 0

# CHECK-INST: and.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0x87,0x01,0x80,0x13]
and.t %d1, %d1, 0, %d0, 7

# CHECK-INST: and.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0x87,0x01,0x00,0x1c]
and.t %d1, %d1, 0, %d0, 24

# CHECK-INST: and.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0x87,0x01,0x80,0x1f]
and.t %d1, %d1, 0, %d0, 31

# CHECK-INST: and.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0x87,0x11,0x00,0x10]
and.t %d1, %d1, 0, %d1, 0

# CHECK-INST: and.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0x87,0x11,0x80,0x13]
and.t %d1, %d1, 0, %d1, 7

# CHECK-INST: and.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0x87,0x11,0x00,0x1c]
and.t %d1, %d1, 0, %d1, 24

# CHECK-INST: and.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0x87,0x11,0x80,0x1f]
and.t %d1, %d1, 0, %d1, 31

# CHECK-INST: and.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x00,0x10]
and.t %d1, %d1, 0, %d14, 0

# CHECK-INST: and.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0x87,0xe1,0x80,0x13]
and.t %d1, %d1, 0, %d14, 7

# CHECK-INST: and.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x00,0x1c]
and.t %d1, %d1, 0, %d14, 24

# CHECK-INST: and.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0x87,0xe1,0x80,0x1f]
and.t %d1, %d1, 0, %d14, 31

# CHECK-INST: and.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x00,0x10]
and.t %d1, %d1, 0, %d15, 0

# CHECK-INST: and.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0x87,0xf1,0x80,0x13]
and.t %d1, %d1, 0, %d15, 7

# CHECK-INST: and.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x00,0x1c]
and.t %d1, %d1, 0, %d15, 24

# CHECK-INST: and.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0x87,0xf1,0x80,0x1f]
and.t %d1, %d1, 0, %d15, 31

# CHECK-INST: and.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0x87,0x01,0x07,0x10]
and.t %d1, %d1, 7, %d0, 0

# CHECK-INST: and.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0x87,0x01,0x87,0x13]
and.t %d1, %d1, 7, %d0, 7

# CHECK-INST: and.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0x87,0x01,0x07,0x1c]
and.t %d1, %d1, 7, %d0, 24

# CHECK-INST: and.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0x87,0x01,0x87,0x1f]
and.t %d1, %d1, 7, %d0, 31

# CHECK-INST: and.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0x87,0x11,0x07,0x10]
and.t %d1, %d1, 7, %d1, 0

# CHECK-INST: and.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0x87,0x11,0x87,0x13]
and.t %d1, %d1, 7, %d1, 7

# CHECK-INST: and.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0x87,0x11,0x07,0x1c]
and.t %d1, %d1, 7, %d1, 24

# CHECK-INST: and.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0x87,0x11,0x87,0x1f]
and.t %d1, %d1, 7, %d1, 31

# CHECK-INST: and.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x07,0x10]
and.t %d1, %d1, 7, %d14, 0

# CHECK-INST: and.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0x87,0xe1,0x87,0x13]
and.t %d1, %d1, 7, %d14, 7

# CHECK-INST: and.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x07,0x1c]
and.t %d1, %d1, 7, %d14, 24

# CHECK-INST: and.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0x87,0xe1,0x87,0x1f]
and.t %d1, %d1, 7, %d14, 31

# CHECK-INST: and.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x07,0x10]
and.t %d1, %d1, 7, %d15, 0

# CHECK-INST: and.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0x87,0xf1,0x87,0x13]
and.t %d1, %d1, 7, %d15, 7

# CHECK-INST: and.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x07,0x1c]
and.t %d1, %d1, 7, %d15, 24

# CHECK-INST: and.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0x87,0xf1,0x87,0x1f]
and.t %d1, %d1, 7, %d15, 31

# CHECK-INST: and.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0x87,0x01,0x18,0x10]
and.t %d1, %d1, 24, %d0, 0

# CHECK-INST: and.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0x87,0x01,0x98,0x13]
and.t %d1, %d1, 24, %d0, 7

# CHECK-INST: and.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0x87,0x01,0x18,0x1c]
and.t %d1, %d1, 24, %d0, 24

# CHECK-INST: and.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0x87,0x01,0x98,0x1f]
and.t %d1, %d1, 24, %d0, 31

# CHECK-INST: and.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0x87,0x11,0x18,0x10]
and.t %d1, %d1, 24, %d1, 0

# CHECK-INST: and.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0x87,0x11,0x98,0x13]
and.t %d1, %d1, 24, %d1, 7

# CHECK-INST: and.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0x87,0x11,0x18,0x1c]
and.t %d1, %d1, 24, %d1, 24

# CHECK-INST: and.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0x87,0x11,0x98,0x1f]
and.t %d1, %d1, 24, %d1, 31

# CHECK-INST: and.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x18,0x10]
and.t %d1, %d1, 24, %d14, 0

# CHECK-INST: and.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0x87,0xe1,0x98,0x13]
and.t %d1, %d1, 24, %d14, 7

# CHECK-INST: and.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x18,0x1c]
and.t %d1, %d1, 24, %d14, 24

# CHECK-INST: and.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0x87,0xe1,0x98,0x1f]
and.t %d1, %d1, 24, %d14, 31

# CHECK-INST: and.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x18,0x10]
and.t %d1, %d1, 24, %d15, 0

# CHECK-INST: and.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0x87,0xf1,0x98,0x13]
and.t %d1, %d1, 24, %d15, 7

# CHECK-INST: and.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x18,0x1c]
and.t %d1, %d1, 24, %d15, 24

# CHECK-INST: and.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0x87,0xf1,0x98,0x1f]
and.t %d1, %d1, 24, %d15, 31

# CHECK-INST: and.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0x87,0x01,0x1f,0x10]
and.t %d1, %d1, 31, %d0, 0

# CHECK-INST: and.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0x87,0x01,0x9f,0x13]
and.t %d1, %d1, 31, %d0, 7

# CHECK-INST: and.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0x87,0x01,0x1f,0x1c]
and.t %d1, %d1, 31, %d0, 24

# CHECK-INST: and.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0x87,0x01,0x9f,0x1f]
and.t %d1, %d1, 31, %d0, 31

# CHECK-INST: and.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0x87,0x11,0x1f,0x10]
and.t %d1, %d1, 31, %d1, 0

# CHECK-INST: and.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0x87,0x11,0x9f,0x13]
and.t %d1, %d1, 31, %d1, 7

# CHECK-INST: and.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0x87,0x11,0x1f,0x1c]
and.t %d1, %d1, 31, %d1, 24

# CHECK-INST: and.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0x87,0x11,0x9f,0x1f]
and.t %d1, %d1, 31, %d1, 31

# CHECK-INST: and.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x1f,0x10]
and.t %d1, %d1, 31, %d14, 0

# CHECK-INST: and.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0x87,0xe1,0x9f,0x13]
and.t %d1, %d1, 31, %d14, 7

# CHECK-INST: and.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x1f,0x1c]
and.t %d1, %d1, 31, %d14, 24

# CHECK-INST: and.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0x87,0xe1,0x9f,0x1f]
and.t %d1, %d1, 31, %d14, 31

# CHECK-INST: and.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x1f,0x10]
and.t %d1, %d1, 31, %d15, 0

# CHECK-INST: and.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0x87,0xf1,0x9f,0x13]
and.t %d1, %d1, 31, %d15, 7

# CHECK-INST: and.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x1f,0x1c]
and.t %d1, %d1, 31, %d15, 24

# CHECK-INST: and.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0x87,0xf1,0x9f,0x1f]
and.t %d1, %d1, 31, %d15, 31

# CHECK-INST: and.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x00,0x10]
and.t %d1, %d14, 0, %d0, 0

# CHECK-INST: and.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0x87,0x0e,0x80,0x13]
and.t %d1, %d14, 0, %d0, 7

# CHECK-INST: and.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x00,0x1c]
and.t %d1, %d14, 0, %d0, 24

# CHECK-INST: and.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0x87,0x0e,0x80,0x1f]
and.t %d1, %d14, 0, %d0, 31

# CHECK-INST: and.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x00,0x10]
and.t %d1, %d14, 0, %d1, 0

# CHECK-INST: and.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0x87,0x1e,0x80,0x13]
and.t %d1, %d14, 0, %d1, 7

# CHECK-INST: and.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x00,0x1c]
and.t %d1, %d14, 0, %d1, 24

# CHECK-INST: and.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0x87,0x1e,0x80,0x1f]
and.t %d1, %d14, 0, %d1, 31

# CHECK-INST: and.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0x87,0xee,0x00,0x10]
and.t %d1, %d14, 0, %d14, 0

# CHECK-INST: and.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0x87,0xee,0x80,0x13]
and.t %d1, %d14, 0, %d14, 7

# CHECK-INST: and.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0x87,0xee,0x00,0x1c]
and.t %d1, %d14, 0, %d14, 24

# CHECK-INST: and.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0x87,0xee,0x80,0x1f]
and.t %d1, %d14, 0, %d14, 31

# CHECK-INST: and.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x00,0x10]
and.t %d1, %d14, 0, %d15, 0

# CHECK-INST: and.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0x87,0xfe,0x80,0x13]
and.t %d1, %d14, 0, %d15, 7

# CHECK-INST: and.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x00,0x1c]
and.t %d1, %d14, 0, %d15, 24

# CHECK-INST: and.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0x87,0xfe,0x80,0x1f]
and.t %d1, %d14, 0, %d15, 31

# CHECK-INST: and.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x07,0x10]
and.t %d1, %d14, 7, %d0, 0

# CHECK-INST: and.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0x87,0x0e,0x87,0x13]
and.t %d1, %d14, 7, %d0, 7

# CHECK-INST: and.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x07,0x1c]
and.t %d1, %d14, 7, %d0, 24

# CHECK-INST: and.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0x87,0x0e,0x87,0x1f]
and.t %d1, %d14, 7, %d0, 31

# CHECK-INST: and.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x07,0x10]
and.t %d1, %d14, 7, %d1, 0

# CHECK-INST: and.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0x87,0x1e,0x87,0x13]
and.t %d1, %d14, 7, %d1, 7

# CHECK-INST: and.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x07,0x1c]
and.t %d1, %d14, 7, %d1, 24

# CHECK-INST: and.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0x87,0x1e,0x87,0x1f]
and.t %d1, %d14, 7, %d1, 31

# CHECK-INST: and.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0x87,0xee,0x07,0x10]
and.t %d1, %d14, 7, %d14, 0

# CHECK-INST: and.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0x87,0xee,0x87,0x13]
and.t %d1, %d14, 7, %d14, 7

# CHECK-INST: and.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0x87,0xee,0x07,0x1c]
and.t %d1, %d14, 7, %d14, 24

# CHECK-INST: and.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0x87,0xee,0x87,0x1f]
and.t %d1, %d14, 7, %d14, 31

# CHECK-INST: and.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x07,0x10]
and.t %d1, %d14, 7, %d15, 0

# CHECK-INST: and.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0x87,0xfe,0x87,0x13]
and.t %d1, %d14, 7, %d15, 7

# CHECK-INST: and.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x07,0x1c]
and.t %d1, %d14, 7, %d15, 24

# CHECK-INST: and.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0x87,0xfe,0x87,0x1f]
and.t %d1, %d14, 7, %d15, 31

# CHECK-INST: and.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x18,0x10]
and.t %d1, %d14, 24, %d0, 0

# CHECK-INST: and.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0x87,0x0e,0x98,0x13]
and.t %d1, %d14, 24, %d0, 7

# CHECK-INST: and.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x18,0x1c]
and.t %d1, %d14, 24, %d0, 24

# CHECK-INST: and.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0x87,0x0e,0x98,0x1f]
and.t %d1, %d14, 24, %d0, 31

# CHECK-INST: and.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x18,0x10]
and.t %d1, %d14, 24, %d1, 0

# CHECK-INST: and.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0x87,0x1e,0x98,0x13]
and.t %d1, %d14, 24, %d1, 7

# CHECK-INST: and.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x18,0x1c]
and.t %d1, %d14, 24, %d1, 24

# CHECK-INST: and.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0x87,0x1e,0x98,0x1f]
and.t %d1, %d14, 24, %d1, 31

# CHECK-INST: and.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0x87,0xee,0x18,0x10]
and.t %d1, %d14, 24, %d14, 0

# CHECK-INST: and.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0x87,0xee,0x98,0x13]
and.t %d1, %d14, 24, %d14, 7

# CHECK-INST: and.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0x87,0xee,0x18,0x1c]
and.t %d1, %d14, 24, %d14, 24

# CHECK-INST: and.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0x87,0xee,0x98,0x1f]
and.t %d1, %d14, 24, %d14, 31

# CHECK-INST: and.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x18,0x10]
and.t %d1, %d14, 24, %d15, 0

# CHECK-INST: and.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0x87,0xfe,0x98,0x13]
and.t %d1, %d14, 24, %d15, 7

# CHECK-INST: and.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x18,0x1c]
and.t %d1, %d14, 24, %d15, 24

# CHECK-INST: and.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0x87,0xfe,0x98,0x1f]
and.t %d1, %d14, 24, %d15, 31

# CHECK-INST: and.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x1f,0x10]
and.t %d1, %d14, 31, %d0, 0

# CHECK-INST: and.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0x87,0x0e,0x9f,0x13]
and.t %d1, %d14, 31, %d0, 7

# CHECK-INST: and.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x1f,0x1c]
and.t %d1, %d14, 31, %d0, 24

# CHECK-INST: and.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0x87,0x0e,0x9f,0x1f]
and.t %d1, %d14, 31, %d0, 31

# CHECK-INST: and.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x1f,0x10]
and.t %d1, %d14, 31, %d1, 0

# CHECK-INST: and.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0x87,0x1e,0x9f,0x13]
and.t %d1, %d14, 31, %d1, 7

# CHECK-INST: and.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x1f,0x1c]
and.t %d1, %d14, 31, %d1, 24

# CHECK-INST: and.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0x87,0x1e,0x9f,0x1f]
and.t %d1, %d14, 31, %d1, 31

# CHECK-INST: and.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0x87,0xee,0x1f,0x10]
and.t %d1, %d14, 31, %d14, 0

# CHECK-INST: and.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0x87,0xee,0x9f,0x13]
and.t %d1, %d14, 31, %d14, 7

# CHECK-INST: and.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0x87,0xee,0x1f,0x1c]
and.t %d1, %d14, 31, %d14, 24

# CHECK-INST: and.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0x87,0xee,0x9f,0x1f]
and.t %d1, %d14, 31, %d14, 31

# CHECK-INST: and.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x1f,0x10]
and.t %d1, %d14, 31, %d15, 0

# CHECK-INST: and.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0x87,0xfe,0x9f,0x13]
and.t %d1, %d14, 31, %d15, 7

# CHECK-INST: and.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x1f,0x1c]
and.t %d1, %d14, 31, %d15, 24

# CHECK-INST: and.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0x87,0xfe,0x9f,0x1f]
and.t %d1, %d14, 31, %d15, 31

# CHECK-INST: and.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x00,0x10]
and.t %d1, %d15, 0, %d0, 0

# CHECK-INST: and.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0x87,0x0f,0x80,0x13]
and.t %d1, %d15, 0, %d0, 7

# CHECK-INST: and.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x00,0x1c]
and.t %d1, %d15, 0, %d0, 24

# CHECK-INST: and.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0x87,0x0f,0x80,0x1f]
and.t %d1, %d15, 0, %d0, 31

# CHECK-INST: and.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x00,0x10]
and.t %d1, %d15, 0, %d1, 0

# CHECK-INST: and.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0x87,0x1f,0x80,0x13]
and.t %d1, %d15, 0, %d1, 7

# CHECK-INST: and.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x00,0x1c]
and.t %d1, %d15, 0, %d1, 24

# CHECK-INST: and.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0x87,0x1f,0x80,0x1f]
and.t %d1, %d15, 0, %d1, 31

# CHECK-INST: and.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0x87,0xef,0x00,0x10]
and.t %d1, %d15, 0, %d14, 0

# CHECK-INST: and.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0x87,0xef,0x80,0x13]
and.t %d1, %d15, 0, %d14, 7

# CHECK-INST: and.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0x87,0xef,0x00,0x1c]
and.t %d1, %d15, 0, %d14, 24

# CHECK-INST: and.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0x87,0xef,0x80,0x1f]
and.t %d1, %d15, 0, %d14, 31

# CHECK-INST: and.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0x87,0xff,0x00,0x10]
and.t %d1, %d15, 0, %d15, 0

# CHECK-INST: and.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0x87,0xff,0x80,0x13]
and.t %d1, %d15, 0, %d15, 7

# CHECK-INST: and.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0x87,0xff,0x00,0x1c]
and.t %d1, %d15, 0, %d15, 24

# CHECK-INST: and.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0x87,0xff,0x80,0x1f]
and.t %d1, %d15, 0, %d15, 31

# CHECK-INST: and.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x07,0x10]
and.t %d1, %d15, 7, %d0, 0

# CHECK-INST: and.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0x87,0x0f,0x87,0x13]
and.t %d1, %d15, 7, %d0, 7

# CHECK-INST: and.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x07,0x1c]
and.t %d1, %d15, 7, %d0, 24

# CHECK-INST: and.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0x87,0x0f,0x87,0x1f]
and.t %d1, %d15, 7, %d0, 31

# CHECK-INST: and.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x07,0x10]
and.t %d1, %d15, 7, %d1, 0

# CHECK-INST: and.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0x87,0x1f,0x87,0x13]
and.t %d1, %d15, 7, %d1, 7

# CHECK-INST: and.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x07,0x1c]
and.t %d1, %d15, 7, %d1, 24

# CHECK-INST: and.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0x87,0x1f,0x87,0x1f]
and.t %d1, %d15, 7, %d1, 31

# CHECK-INST: and.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0x87,0xef,0x07,0x10]
and.t %d1, %d15, 7, %d14, 0

# CHECK-INST: and.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0x87,0xef,0x87,0x13]
and.t %d1, %d15, 7, %d14, 7

# CHECK-INST: and.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0x87,0xef,0x07,0x1c]
and.t %d1, %d15, 7, %d14, 24

# CHECK-INST: and.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0x87,0xef,0x87,0x1f]
and.t %d1, %d15, 7, %d14, 31

# CHECK-INST: and.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0x87,0xff,0x07,0x10]
and.t %d1, %d15, 7, %d15, 0

# CHECK-INST: and.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0x87,0xff,0x87,0x13]
and.t %d1, %d15, 7, %d15, 7

# CHECK-INST: and.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0x87,0xff,0x07,0x1c]
and.t %d1, %d15, 7, %d15, 24

# CHECK-INST: and.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0x87,0xff,0x87,0x1f]
and.t %d1, %d15, 7, %d15, 31

# CHECK-INST: and.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x18,0x10]
and.t %d1, %d15, 24, %d0, 0

# CHECK-INST: and.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0x87,0x0f,0x98,0x13]
and.t %d1, %d15, 24, %d0, 7

# CHECK-INST: and.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x18,0x1c]
and.t %d1, %d15, 24, %d0, 24

# CHECK-INST: and.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0x87,0x0f,0x98,0x1f]
and.t %d1, %d15, 24, %d0, 31

# CHECK-INST: and.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x18,0x10]
and.t %d1, %d15, 24, %d1, 0

# CHECK-INST: and.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0x87,0x1f,0x98,0x13]
and.t %d1, %d15, 24, %d1, 7

# CHECK-INST: and.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x18,0x1c]
and.t %d1, %d15, 24, %d1, 24

# CHECK-INST: and.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0x87,0x1f,0x98,0x1f]
and.t %d1, %d15, 24, %d1, 31

# CHECK-INST: and.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0x87,0xef,0x18,0x10]
and.t %d1, %d15, 24, %d14, 0

# CHECK-INST: and.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0x87,0xef,0x98,0x13]
and.t %d1, %d15, 24, %d14, 7

# CHECK-INST: and.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0x87,0xef,0x18,0x1c]
and.t %d1, %d15, 24, %d14, 24

# CHECK-INST: and.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0x87,0xef,0x98,0x1f]
and.t %d1, %d15, 24, %d14, 31

# CHECK-INST: and.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0x87,0xff,0x18,0x10]
and.t %d1, %d15, 24, %d15, 0

# CHECK-INST: and.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0x87,0xff,0x98,0x13]
and.t %d1, %d15, 24, %d15, 7

# CHECK-INST: and.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0x87,0xff,0x18,0x1c]
and.t %d1, %d15, 24, %d15, 24

# CHECK-INST: and.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0x87,0xff,0x98,0x1f]
and.t %d1, %d15, 24, %d15, 31

# CHECK-INST: and.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x1f,0x10]
and.t %d1, %d15, 31, %d0, 0

# CHECK-INST: and.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0x87,0x0f,0x9f,0x13]
and.t %d1, %d15, 31, %d0, 7

# CHECK-INST: and.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x1f,0x1c]
and.t %d1, %d15, 31, %d0, 24

# CHECK-INST: and.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0x87,0x0f,0x9f,0x1f]
and.t %d1, %d15, 31, %d0, 31

# CHECK-INST: and.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x1f,0x10]
and.t %d1, %d15, 31, %d1, 0

# CHECK-INST: and.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0x87,0x1f,0x9f,0x13]
and.t %d1, %d15, 31, %d1, 7

# CHECK-INST: and.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x1f,0x1c]
and.t %d1, %d15, 31, %d1, 24

# CHECK-INST: and.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0x87,0x1f,0x9f,0x1f]
and.t %d1, %d15, 31, %d1, 31

# CHECK-INST: and.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0x87,0xef,0x1f,0x10]
and.t %d1, %d15, 31, %d14, 0

# CHECK-INST: and.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0x87,0xef,0x9f,0x13]
and.t %d1, %d15, 31, %d14, 7

# CHECK-INST: and.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0x87,0xef,0x1f,0x1c]
and.t %d1, %d15, 31, %d14, 24

# CHECK-INST: and.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0x87,0xef,0x9f,0x1f]
and.t %d1, %d15, 31, %d14, 31

# CHECK-INST: and.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0x87,0xff,0x1f,0x10]
and.t %d1, %d15, 31, %d15, 0

# CHECK-INST: and.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0x87,0xff,0x9f,0x13]
and.t %d1, %d15, 31, %d15, 7

# CHECK-INST: and.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0x87,0xff,0x1f,0x1c]
and.t %d1, %d15, 31, %d15, 24

# CHECK-INST: and.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0x87,0xff,0x9f,0x1f]
and.t %d1, %d15, 31, %d15, 31

# CHECK-INST: and.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x00,0xe0]
and.t %d14, %d0, 0, %d0, 0

# CHECK-INST: and.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0x87,0x00,0x80,0xe3]
and.t %d14, %d0, 0, %d0, 7

# CHECK-INST: and.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0x87,0x00,0x00,0xec]
and.t %d14, %d0, 0, %d0, 24

# CHECK-INST: and.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0x87,0x00,0x80,0xef]
and.t %d14, %d0, 0, %d0, 31

# CHECK-INST: and.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0x87,0x10,0x00,0xe0]
and.t %d14, %d0, 0, %d1, 0

# CHECK-INST: and.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0x87,0x10,0x80,0xe3]
and.t %d14, %d0, 0, %d1, 7

# CHECK-INST: and.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0x87,0x10,0x00,0xec]
and.t %d14, %d0, 0, %d1, 24

# CHECK-INST: and.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0x87,0x10,0x80,0xef]
and.t %d14, %d0, 0, %d1, 31

# CHECK-INST: and.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x00,0xe0]
and.t %d14, %d0, 0, %d14, 0

# CHECK-INST: and.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0x87,0xe0,0x80,0xe3]
and.t %d14, %d0, 0, %d14, 7

# CHECK-INST: and.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x00,0xec]
and.t %d14, %d0, 0, %d14, 24

# CHECK-INST: and.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0x87,0xe0,0x80,0xef]
and.t %d14, %d0, 0, %d14, 31

# CHECK-INST: and.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x00,0xe0]
and.t %d14, %d0, 0, %d15, 0

# CHECK-INST: and.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0x87,0xf0,0x80,0xe3]
and.t %d14, %d0, 0, %d15, 7

# CHECK-INST: and.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x00,0xec]
and.t %d14, %d0, 0, %d15, 24

# CHECK-INST: and.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0x87,0xf0,0x80,0xef]
and.t %d14, %d0, 0, %d15, 31

# CHECK-INST: and.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0x87,0x00,0x07,0xe0]
and.t %d14, %d0, 7, %d0, 0

# CHECK-INST: and.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0x87,0x00,0x87,0xe3]
and.t %d14, %d0, 7, %d0, 7

# CHECK-INST: and.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0x87,0x00,0x07,0xec]
and.t %d14, %d0, 7, %d0, 24

# CHECK-INST: and.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0x87,0x00,0x87,0xef]
and.t %d14, %d0, 7, %d0, 31

# CHECK-INST: and.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0x87,0x10,0x07,0xe0]
and.t %d14, %d0, 7, %d1, 0

# CHECK-INST: and.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0x87,0x10,0x87,0xe3]
and.t %d14, %d0, 7, %d1, 7

# CHECK-INST: and.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0x87,0x10,0x07,0xec]
and.t %d14, %d0, 7, %d1, 24

# CHECK-INST: and.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0x87,0x10,0x87,0xef]
and.t %d14, %d0, 7, %d1, 31

# CHECK-INST: and.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x07,0xe0]
and.t %d14, %d0, 7, %d14, 0

# CHECK-INST: and.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0x87,0xe0,0x87,0xe3]
and.t %d14, %d0, 7, %d14, 7

# CHECK-INST: and.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x07,0xec]
and.t %d14, %d0, 7, %d14, 24

# CHECK-INST: and.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0x87,0xe0,0x87,0xef]
and.t %d14, %d0, 7, %d14, 31

# CHECK-INST: and.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x07,0xe0]
and.t %d14, %d0, 7, %d15, 0

# CHECK-INST: and.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0x87,0xf0,0x87,0xe3]
and.t %d14, %d0, 7, %d15, 7

# CHECK-INST: and.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x07,0xec]
and.t %d14, %d0, 7, %d15, 24

# CHECK-INST: and.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0x87,0xf0,0x87,0xef]
and.t %d14, %d0, 7, %d15, 31

# CHECK-INST: and.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0x87,0x00,0x18,0xe0]
and.t %d14, %d0, 24, %d0, 0

# CHECK-INST: and.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0x87,0x00,0x98,0xe3]
and.t %d14, %d0, 24, %d0, 7

# CHECK-INST: and.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0x87,0x00,0x18,0xec]
and.t %d14, %d0, 24, %d0, 24

# CHECK-INST: and.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0x87,0x00,0x98,0xef]
and.t %d14, %d0, 24, %d0, 31

# CHECK-INST: and.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0x87,0x10,0x18,0xe0]
and.t %d14, %d0, 24, %d1, 0

# CHECK-INST: and.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0x87,0x10,0x98,0xe3]
and.t %d14, %d0, 24, %d1, 7

# CHECK-INST: and.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0x87,0x10,0x18,0xec]
and.t %d14, %d0, 24, %d1, 24

# CHECK-INST: and.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0x87,0x10,0x98,0xef]
and.t %d14, %d0, 24, %d1, 31

# CHECK-INST: and.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x18,0xe0]
and.t %d14, %d0, 24, %d14, 0

# CHECK-INST: and.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0x87,0xe0,0x98,0xe3]
and.t %d14, %d0, 24, %d14, 7

# CHECK-INST: and.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x18,0xec]
and.t %d14, %d0, 24, %d14, 24

# CHECK-INST: and.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0x87,0xe0,0x98,0xef]
and.t %d14, %d0, 24, %d14, 31

# CHECK-INST: and.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x18,0xe0]
and.t %d14, %d0, 24, %d15, 0

# CHECK-INST: and.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0x87,0xf0,0x98,0xe3]
and.t %d14, %d0, 24, %d15, 7

# CHECK-INST: and.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x18,0xec]
and.t %d14, %d0, 24, %d15, 24

# CHECK-INST: and.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0x87,0xf0,0x98,0xef]
and.t %d14, %d0, 24, %d15, 31

# CHECK-INST: and.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0x87,0x00,0x1f,0xe0]
and.t %d14, %d0, 31, %d0, 0

# CHECK-INST: and.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0x87,0x00,0x9f,0xe3]
and.t %d14, %d0, 31, %d0, 7

# CHECK-INST: and.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0x87,0x00,0x1f,0xec]
and.t %d14, %d0, 31, %d0, 24

# CHECK-INST: and.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0x87,0x00,0x9f,0xef]
and.t %d14, %d0, 31, %d0, 31

# CHECK-INST: and.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0x87,0x10,0x1f,0xe0]
and.t %d14, %d0, 31, %d1, 0

# CHECK-INST: and.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0x87,0x10,0x9f,0xe3]
and.t %d14, %d0, 31, %d1, 7

# CHECK-INST: and.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0x87,0x10,0x1f,0xec]
and.t %d14, %d0, 31, %d1, 24

# CHECK-INST: and.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0x87,0x10,0x9f,0xef]
and.t %d14, %d0, 31, %d1, 31

# CHECK-INST: and.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x1f,0xe0]
and.t %d14, %d0, 31, %d14, 0

# CHECK-INST: and.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0x87,0xe0,0x9f,0xe3]
and.t %d14, %d0, 31, %d14, 7

# CHECK-INST: and.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x1f,0xec]
and.t %d14, %d0, 31, %d14, 24

# CHECK-INST: and.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0x87,0xe0,0x9f,0xef]
and.t %d14, %d0, 31, %d14, 31

# CHECK-INST: and.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x1f,0xe0]
and.t %d14, %d0, 31, %d15, 0

# CHECK-INST: and.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0x87,0xf0,0x9f,0xe3]
and.t %d14, %d0, 31, %d15, 7

# CHECK-INST: and.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x1f,0xec]
and.t %d14, %d0, 31, %d15, 24

# CHECK-INST: and.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0x87,0xf0,0x9f,0xef]
and.t %d14, %d0, 31, %d15, 31

# CHECK-INST: and.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0x87,0x01,0x00,0xe0]
and.t %d14, %d1, 0, %d0, 0

# CHECK-INST: and.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0x87,0x01,0x80,0xe3]
and.t %d14, %d1, 0, %d0, 7

# CHECK-INST: and.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0x87,0x01,0x00,0xec]
and.t %d14, %d1, 0, %d0, 24

# CHECK-INST: and.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0x87,0x01,0x80,0xef]
and.t %d14, %d1, 0, %d0, 31

# CHECK-INST: and.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0x87,0x11,0x00,0xe0]
and.t %d14, %d1, 0, %d1, 0

# CHECK-INST: and.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0x87,0x11,0x80,0xe3]
and.t %d14, %d1, 0, %d1, 7

# CHECK-INST: and.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0x87,0x11,0x00,0xec]
and.t %d14, %d1, 0, %d1, 24

# CHECK-INST: and.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0x87,0x11,0x80,0xef]
and.t %d14, %d1, 0, %d1, 31

# CHECK-INST: and.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x00,0xe0]
and.t %d14, %d1, 0, %d14, 0

# CHECK-INST: and.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0x87,0xe1,0x80,0xe3]
and.t %d14, %d1, 0, %d14, 7

# CHECK-INST: and.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x00,0xec]
and.t %d14, %d1, 0, %d14, 24

# CHECK-INST: and.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0x87,0xe1,0x80,0xef]
and.t %d14, %d1, 0, %d14, 31

# CHECK-INST: and.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x00,0xe0]
and.t %d14, %d1, 0, %d15, 0

# CHECK-INST: and.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0x87,0xf1,0x80,0xe3]
and.t %d14, %d1, 0, %d15, 7

# CHECK-INST: and.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x00,0xec]
and.t %d14, %d1, 0, %d15, 24

# CHECK-INST: and.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0x87,0xf1,0x80,0xef]
and.t %d14, %d1, 0, %d15, 31

# CHECK-INST: and.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0x87,0x01,0x07,0xe0]
and.t %d14, %d1, 7, %d0, 0

# CHECK-INST: and.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0x87,0x01,0x87,0xe3]
and.t %d14, %d1, 7, %d0, 7

# CHECK-INST: and.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0x87,0x01,0x07,0xec]
and.t %d14, %d1, 7, %d0, 24

# CHECK-INST: and.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0x87,0x01,0x87,0xef]
and.t %d14, %d1, 7, %d0, 31

# CHECK-INST: and.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0x87,0x11,0x07,0xe0]
and.t %d14, %d1, 7, %d1, 0

# CHECK-INST: and.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0x87,0x11,0x87,0xe3]
and.t %d14, %d1, 7, %d1, 7

# CHECK-INST: and.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0x87,0x11,0x07,0xec]
and.t %d14, %d1, 7, %d1, 24

# CHECK-INST: and.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0x87,0x11,0x87,0xef]
and.t %d14, %d1, 7, %d1, 31

# CHECK-INST: and.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x07,0xe0]
and.t %d14, %d1, 7, %d14, 0

# CHECK-INST: and.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0x87,0xe1,0x87,0xe3]
and.t %d14, %d1, 7, %d14, 7

# CHECK-INST: and.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x07,0xec]
and.t %d14, %d1, 7, %d14, 24

# CHECK-INST: and.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0x87,0xe1,0x87,0xef]
and.t %d14, %d1, 7, %d14, 31

# CHECK-INST: and.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x07,0xe0]
and.t %d14, %d1, 7, %d15, 0

# CHECK-INST: and.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0x87,0xf1,0x87,0xe3]
and.t %d14, %d1, 7, %d15, 7

# CHECK-INST: and.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x07,0xec]
and.t %d14, %d1, 7, %d15, 24

# CHECK-INST: and.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0x87,0xf1,0x87,0xef]
and.t %d14, %d1, 7, %d15, 31

# CHECK-INST: and.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0x87,0x01,0x18,0xe0]
and.t %d14, %d1, 24, %d0, 0

# CHECK-INST: and.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0x87,0x01,0x98,0xe3]
and.t %d14, %d1, 24, %d0, 7

# CHECK-INST: and.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0x87,0x01,0x18,0xec]
and.t %d14, %d1, 24, %d0, 24

# CHECK-INST: and.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0x87,0x01,0x98,0xef]
and.t %d14, %d1, 24, %d0, 31

# CHECK-INST: and.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0x87,0x11,0x18,0xe0]
and.t %d14, %d1, 24, %d1, 0

# CHECK-INST: and.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0x87,0x11,0x98,0xe3]
and.t %d14, %d1, 24, %d1, 7

# CHECK-INST: and.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0x87,0x11,0x18,0xec]
and.t %d14, %d1, 24, %d1, 24

# CHECK-INST: and.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0x87,0x11,0x98,0xef]
and.t %d14, %d1, 24, %d1, 31

# CHECK-INST: and.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x18,0xe0]
and.t %d14, %d1, 24, %d14, 0

# CHECK-INST: and.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0x87,0xe1,0x98,0xe3]
and.t %d14, %d1, 24, %d14, 7

# CHECK-INST: and.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x18,0xec]
and.t %d14, %d1, 24, %d14, 24

# CHECK-INST: and.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0x87,0xe1,0x98,0xef]
and.t %d14, %d1, 24, %d14, 31

# CHECK-INST: and.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x18,0xe0]
and.t %d14, %d1, 24, %d15, 0

# CHECK-INST: and.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0x87,0xf1,0x98,0xe3]
and.t %d14, %d1, 24, %d15, 7

# CHECK-INST: and.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x18,0xec]
and.t %d14, %d1, 24, %d15, 24

# CHECK-INST: and.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0x87,0xf1,0x98,0xef]
and.t %d14, %d1, 24, %d15, 31

# CHECK-INST: and.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0x87,0x01,0x1f,0xe0]
and.t %d14, %d1, 31, %d0, 0

# CHECK-INST: and.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0x87,0x01,0x9f,0xe3]
and.t %d14, %d1, 31, %d0, 7

# CHECK-INST: and.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0x87,0x01,0x1f,0xec]
and.t %d14, %d1, 31, %d0, 24

# CHECK-INST: and.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0x87,0x01,0x9f,0xef]
and.t %d14, %d1, 31, %d0, 31

# CHECK-INST: and.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0x87,0x11,0x1f,0xe0]
and.t %d14, %d1, 31, %d1, 0

# CHECK-INST: and.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0x87,0x11,0x9f,0xe3]
and.t %d14, %d1, 31, %d1, 7

# CHECK-INST: and.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0x87,0x11,0x1f,0xec]
and.t %d14, %d1, 31, %d1, 24

# CHECK-INST: and.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0x87,0x11,0x9f,0xef]
and.t %d14, %d1, 31, %d1, 31

# CHECK-INST: and.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x1f,0xe0]
and.t %d14, %d1, 31, %d14, 0

# CHECK-INST: and.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0x87,0xe1,0x9f,0xe3]
and.t %d14, %d1, 31, %d14, 7

# CHECK-INST: and.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x1f,0xec]
and.t %d14, %d1, 31, %d14, 24

# CHECK-INST: and.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0x87,0xe1,0x9f,0xef]
and.t %d14, %d1, 31, %d14, 31

# CHECK-INST: and.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x1f,0xe0]
and.t %d14, %d1, 31, %d15, 0

# CHECK-INST: and.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0x87,0xf1,0x9f,0xe3]
and.t %d14, %d1, 31, %d15, 7

# CHECK-INST: and.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x1f,0xec]
and.t %d14, %d1, 31, %d15, 24

# CHECK-INST: and.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0x87,0xf1,0x9f,0xef]
and.t %d14, %d1, 31, %d15, 31

# CHECK-INST: and.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x00,0xe0]
and.t %d14, %d14, 0, %d0, 0

# CHECK-INST: and.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0x87,0x0e,0x80,0xe3]
and.t %d14, %d14, 0, %d0, 7

# CHECK-INST: and.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x00,0xec]
and.t %d14, %d14, 0, %d0, 24

# CHECK-INST: and.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0x87,0x0e,0x80,0xef]
and.t %d14, %d14, 0, %d0, 31

# CHECK-INST: and.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x00,0xe0]
and.t %d14, %d14, 0, %d1, 0

# CHECK-INST: and.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0x87,0x1e,0x80,0xe3]
and.t %d14, %d14, 0, %d1, 7

# CHECK-INST: and.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x00,0xec]
and.t %d14, %d14, 0, %d1, 24

# CHECK-INST: and.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0x87,0x1e,0x80,0xef]
and.t %d14, %d14, 0, %d1, 31

# CHECK-INST: and.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0x87,0xee,0x00,0xe0]
and.t %d14, %d14, 0, %d14, 0

# CHECK-INST: and.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0x87,0xee,0x80,0xe3]
and.t %d14, %d14, 0, %d14, 7

# CHECK-INST: and.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0x87,0xee,0x00,0xec]
and.t %d14, %d14, 0, %d14, 24

# CHECK-INST: and.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0x87,0xee,0x80,0xef]
and.t %d14, %d14, 0, %d14, 31

# CHECK-INST: and.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x00,0xe0]
and.t %d14, %d14, 0, %d15, 0

# CHECK-INST: and.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0x87,0xfe,0x80,0xe3]
and.t %d14, %d14, 0, %d15, 7

# CHECK-INST: and.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x00,0xec]
and.t %d14, %d14, 0, %d15, 24

# CHECK-INST: and.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0x87,0xfe,0x80,0xef]
and.t %d14, %d14, 0, %d15, 31

# CHECK-INST: and.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x07,0xe0]
and.t %d14, %d14, 7, %d0, 0

# CHECK-INST: and.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0x87,0x0e,0x87,0xe3]
and.t %d14, %d14, 7, %d0, 7

# CHECK-INST: and.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x07,0xec]
and.t %d14, %d14, 7, %d0, 24

# CHECK-INST: and.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0x87,0x0e,0x87,0xef]
and.t %d14, %d14, 7, %d0, 31

# CHECK-INST: and.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x07,0xe0]
and.t %d14, %d14, 7, %d1, 0

# CHECK-INST: and.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0x87,0x1e,0x87,0xe3]
and.t %d14, %d14, 7, %d1, 7

# CHECK-INST: and.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x07,0xec]
and.t %d14, %d14, 7, %d1, 24

# CHECK-INST: and.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0x87,0x1e,0x87,0xef]
and.t %d14, %d14, 7, %d1, 31

# CHECK-INST: and.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0x87,0xee,0x07,0xe0]
and.t %d14, %d14, 7, %d14, 0

# CHECK-INST: and.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0x87,0xee,0x87,0xe3]
and.t %d14, %d14, 7, %d14, 7

# CHECK-INST: and.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0x87,0xee,0x07,0xec]
and.t %d14, %d14, 7, %d14, 24

# CHECK-INST: and.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0x87,0xee,0x87,0xef]
and.t %d14, %d14, 7, %d14, 31

# CHECK-INST: and.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x07,0xe0]
and.t %d14, %d14, 7, %d15, 0

# CHECK-INST: and.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0x87,0xfe,0x87,0xe3]
and.t %d14, %d14, 7, %d15, 7

# CHECK-INST: and.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x07,0xec]
and.t %d14, %d14, 7, %d15, 24

# CHECK-INST: and.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0x87,0xfe,0x87,0xef]
and.t %d14, %d14, 7, %d15, 31

# CHECK-INST: and.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x18,0xe0]
and.t %d14, %d14, 24, %d0, 0

# CHECK-INST: and.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0x87,0x0e,0x98,0xe3]
and.t %d14, %d14, 24, %d0, 7

# CHECK-INST: and.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x18,0xec]
and.t %d14, %d14, 24, %d0, 24

# CHECK-INST: and.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0x87,0x0e,0x98,0xef]
and.t %d14, %d14, 24, %d0, 31

# CHECK-INST: and.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x18,0xe0]
and.t %d14, %d14, 24, %d1, 0

# CHECK-INST: and.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0x87,0x1e,0x98,0xe3]
and.t %d14, %d14, 24, %d1, 7

# CHECK-INST: and.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x18,0xec]
and.t %d14, %d14, 24, %d1, 24

# CHECK-INST: and.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0x87,0x1e,0x98,0xef]
and.t %d14, %d14, 24, %d1, 31

# CHECK-INST: and.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0x87,0xee,0x18,0xe0]
and.t %d14, %d14, 24, %d14, 0

# CHECK-INST: and.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0x87,0xee,0x98,0xe3]
and.t %d14, %d14, 24, %d14, 7

# CHECK-INST: and.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0x87,0xee,0x18,0xec]
and.t %d14, %d14, 24, %d14, 24

# CHECK-INST: and.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0x87,0xee,0x98,0xef]
and.t %d14, %d14, 24, %d14, 31

# CHECK-INST: and.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x18,0xe0]
and.t %d14, %d14, 24, %d15, 0

# CHECK-INST: and.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0x87,0xfe,0x98,0xe3]
and.t %d14, %d14, 24, %d15, 7

# CHECK-INST: and.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x18,0xec]
and.t %d14, %d14, 24, %d15, 24

# CHECK-INST: and.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0x87,0xfe,0x98,0xef]
and.t %d14, %d14, 24, %d15, 31

# CHECK-INST: and.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x1f,0xe0]
and.t %d14, %d14, 31, %d0, 0

# CHECK-INST: and.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0x87,0x0e,0x9f,0xe3]
and.t %d14, %d14, 31, %d0, 7

# CHECK-INST: and.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x1f,0xec]
and.t %d14, %d14, 31, %d0, 24

# CHECK-INST: and.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0x87,0x0e,0x9f,0xef]
and.t %d14, %d14, 31, %d0, 31

# CHECK-INST: and.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x1f,0xe0]
and.t %d14, %d14, 31, %d1, 0

# CHECK-INST: and.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0x87,0x1e,0x9f,0xe3]
and.t %d14, %d14, 31, %d1, 7

# CHECK-INST: and.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x1f,0xec]
and.t %d14, %d14, 31, %d1, 24

# CHECK-INST: and.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0x87,0x1e,0x9f,0xef]
and.t %d14, %d14, 31, %d1, 31

# CHECK-INST: and.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0x87,0xee,0x1f,0xe0]
and.t %d14, %d14, 31, %d14, 0

# CHECK-INST: and.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0x87,0xee,0x9f,0xe3]
and.t %d14, %d14, 31, %d14, 7

# CHECK-INST: and.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0x87,0xee,0x1f,0xec]
and.t %d14, %d14, 31, %d14, 24

# CHECK-INST: and.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0x87,0xee,0x9f,0xef]
and.t %d14, %d14, 31, %d14, 31

# CHECK-INST: and.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x1f,0xe0]
and.t %d14, %d14, 31, %d15, 0

# CHECK-INST: and.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0x87,0xfe,0x9f,0xe3]
and.t %d14, %d14, 31, %d15, 7

# CHECK-INST: and.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x1f,0xec]
and.t %d14, %d14, 31, %d15, 24

# CHECK-INST: and.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0x87,0xfe,0x9f,0xef]
and.t %d14, %d14, 31, %d15, 31

# CHECK-INST: and.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x00,0xe0]
and.t %d14, %d15, 0, %d0, 0

# CHECK-INST: and.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0x87,0x0f,0x80,0xe3]
and.t %d14, %d15, 0, %d0, 7

# CHECK-INST: and.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x00,0xec]
and.t %d14, %d15, 0, %d0, 24

# CHECK-INST: and.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0x87,0x0f,0x80,0xef]
and.t %d14, %d15, 0, %d0, 31

# CHECK-INST: and.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x00,0xe0]
and.t %d14, %d15, 0, %d1, 0

# CHECK-INST: and.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0x87,0x1f,0x80,0xe3]
and.t %d14, %d15, 0, %d1, 7

# CHECK-INST: and.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x00,0xec]
and.t %d14, %d15, 0, %d1, 24

# CHECK-INST: and.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0x87,0x1f,0x80,0xef]
and.t %d14, %d15, 0, %d1, 31

# CHECK-INST: and.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0x87,0xef,0x00,0xe0]
and.t %d14, %d15, 0, %d14, 0

# CHECK-INST: and.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0x87,0xef,0x80,0xe3]
and.t %d14, %d15, 0, %d14, 7

# CHECK-INST: and.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0x87,0xef,0x00,0xec]
and.t %d14, %d15, 0, %d14, 24

# CHECK-INST: and.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0x87,0xef,0x80,0xef]
and.t %d14, %d15, 0, %d14, 31

# CHECK-INST: and.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0x87,0xff,0x00,0xe0]
and.t %d14, %d15, 0, %d15, 0

# CHECK-INST: and.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0x87,0xff,0x80,0xe3]
and.t %d14, %d15, 0, %d15, 7

# CHECK-INST: and.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0x87,0xff,0x00,0xec]
and.t %d14, %d15, 0, %d15, 24

# CHECK-INST: and.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0x87,0xff,0x80,0xef]
and.t %d14, %d15, 0, %d15, 31

# CHECK-INST: and.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x07,0xe0]
and.t %d14, %d15, 7, %d0, 0

# CHECK-INST: and.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0x87,0x0f,0x87,0xe3]
and.t %d14, %d15, 7, %d0, 7

# CHECK-INST: and.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x07,0xec]
and.t %d14, %d15, 7, %d0, 24

# CHECK-INST: and.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0x87,0x0f,0x87,0xef]
and.t %d14, %d15, 7, %d0, 31

# CHECK-INST: and.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x07,0xe0]
and.t %d14, %d15, 7, %d1, 0

# CHECK-INST: and.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0x87,0x1f,0x87,0xe3]
and.t %d14, %d15, 7, %d1, 7

# CHECK-INST: and.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x07,0xec]
and.t %d14, %d15, 7, %d1, 24

# CHECK-INST: and.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0x87,0x1f,0x87,0xef]
and.t %d14, %d15, 7, %d1, 31

# CHECK-INST: and.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0x87,0xef,0x07,0xe0]
and.t %d14, %d15, 7, %d14, 0

# CHECK-INST: and.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0x87,0xef,0x87,0xe3]
and.t %d14, %d15, 7, %d14, 7

# CHECK-INST: and.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0x87,0xef,0x07,0xec]
and.t %d14, %d15, 7, %d14, 24

# CHECK-INST: and.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0x87,0xef,0x87,0xef]
and.t %d14, %d15, 7, %d14, 31

# CHECK-INST: and.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0x87,0xff,0x07,0xe0]
and.t %d14, %d15, 7, %d15, 0

# CHECK-INST: and.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0x87,0xff,0x87,0xe3]
and.t %d14, %d15, 7, %d15, 7

# CHECK-INST: and.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0x87,0xff,0x07,0xec]
and.t %d14, %d15, 7, %d15, 24

# CHECK-INST: and.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0x87,0xff,0x87,0xef]
and.t %d14, %d15, 7, %d15, 31

# CHECK-INST: and.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x18,0xe0]
and.t %d14, %d15, 24, %d0, 0

# CHECK-INST: and.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0x87,0x0f,0x98,0xe3]
and.t %d14, %d15, 24, %d0, 7

# CHECK-INST: and.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x18,0xec]
and.t %d14, %d15, 24, %d0, 24

# CHECK-INST: and.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0x87,0x0f,0x98,0xef]
and.t %d14, %d15, 24, %d0, 31

# CHECK-INST: and.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x18,0xe0]
and.t %d14, %d15, 24, %d1, 0

# CHECK-INST: and.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0x87,0x1f,0x98,0xe3]
and.t %d14, %d15, 24, %d1, 7

# CHECK-INST: and.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x18,0xec]
and.t %d14, %d15, 24, %d1, 24

# CHECK-INST: and.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0x87,0x1f,0x98,0xef]
and.t %d14, %d15, 24, %d1, 31

# CHECK-INST: and.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0x87,0xef,0x18,0xe0]
and.t %d14, %d15, 24, %d14, 0

# CHECK-INST: and.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0x87,0xef,0x98,0xe3]
and.t %d14, %d15, 24, %d14, 7

# CHECK-INST: and.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0x87,0xef,0x18,0xec]
and.t %d14, %d15, 24, %d14, 24

# CHECK-INST: and.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0x87,0xef,0x98,0xef]
and.t %d14, %d15, 24, %d14, 31

# CHECK-INST: and.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0x87,0xff,0x18,0xe0]
and.t %d14, %d15, 24, %d15, 0

# CHECK-INST: and.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0x87,0xff,0x98,0xe3]
and.t %d14, %d15, 24, %d15, 7

# CHECK-INST: and.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0x87,0xff,0x18,0xec]
and.t %d14, %d15, 24, %d15, 24

# CHECK-INST: and.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0x87,0xff,0x98,0xef]
and.t %d14, %d15, 24, %d15, 31

# CHECK-INST: and.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x1f,0xe0]
and.t %d14, %d15, 31, %d0, 0

# CHECK-INST: and.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0x87,0x0f,0x9f,0xe3]
and.t %d14, %d15, 31, %d0, 7

# CHECK-INST: and.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x1f,0xec]
and.t %d14, %d15, 31, %d0, 24

# CHECK-INST: and.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0x87,0x0f,0x9f,0xef]
and.t %d14, %d15, 31, %d0, 31

# CHECK-INST: and.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x1f,0xe0]
and.t %d14, %d15, 31, %d1, 0

# CHECK-INST: and.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0x87,0x1f,0x9f,0xe3]
and.t %d14, %d15, 31, %d1, 7

# CHECK-INST: and.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x1f,0xec]
and.t %d14, %d15, 31, %d1, 24

# CHECK-INST: and.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0x87,0x1f,0x9f,0xef]
and.t %d14, %d15, 31, %d1, 31

# CHECK-INST: and.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0x87,0xef,0x1f,0xe0]
and.t %d14, %d15, 31, %d14, 0

# CHECK-INST: and.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0x87,0xef,0x9f,0xe3]
and.t %d14, %d15, 31, %d14, 7

# CHECK-INST: and.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0x87,0xef,0x1f,0xec]
and.t %d14, %d15, 31, %d14, 24

# CHECK-INST: and.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0x87,0xef,0x9f,0xef]
and.t %d14, %d15, 31, %d14, 31

# CHECK-INST: and.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0x87,0xff,0x1f,0xe0]
and.t %d14, %d15, 31, %d15, 0

# CHECK-INST: and.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0x87,0xff,0x9f,0xe3]
and.t %d14, %d15, 31, %d15, 7

# CHECK-INST: and.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0x87,0xff,0x1f,0xec]
and.t %d14, %d15, 31, %d15, 24

# CHECK-INST: and.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0x87,0xff,0x9f,0xef]
and.t %d14, %d15, 31, %d15, 31

# CHECK-INST: and.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x00,0xf0]
and.t %d15, %d0, 0, %d0, 0

# CHECK-INST: and.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0x87,0x00,0x80,0xf3]
and.t %d15, %d0, 0, %d0, 7

# CHECK-INST: and.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0x87,0x00,0x00,0xfc]
and.t %d15, %d0, 0, %d0, 24

# CHECK-INST: and.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0x87,0x00,0x80,0xff]
and.t %d15, %d0, 0, %d0, 31

# CHECK-INST: and.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0x87,0x10,0x00,0xf0]
and.t %d15, %d0, 0, %d1, 0

# CHECK-INST: and.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0x87,0x10,0x80,0xf3]
and.t %d15, %d0, 0, %d1, 7

# CHECK-INST: and.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0x87,0x10,0x00,0xfc]
and.t %d15, %d0, 0, %d1, 24

# CHECK-INST: and.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0x87,0x10,0x80,0xff]
and.t %d15, %d0, 0, %d1, 31

# CHECK-INST: and.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x00,0xf0]
and.t %d15, %d0, 0, %d14, 0

# CHECK-INST: and.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0x87,0xe0,0x80,0xf3]
and.t %d15, %d0, 0, %d14, 7

# CHECK-INST: and.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x00,0xfc]
and.t %d15, %d0, 0, %d14, 24

# CHECK-INST: and.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0x87,0xe0,0x80,0xff]
and.t %d15, %d0, 0, %d14, 31

# CHECK-INST: and.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x00,0xf0]
and.t %d15, %d0, 0, %d15, 0

# CHECK-INST: and.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0x87,0xf0,0x80,0xf3]
and.t %d15, %d0, 0, %d15, 7

# CHECK-INST: and.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x00,0xfc]
and.t %d15, %d0, 0, %d15, 24

# CHECK-INST: and.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0x87,0xf0,0x80,0xff]
and.t %d15, %d0, 0, %d15, 31

# CHECK-INST: and.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0x87,0x00,0x07,0xf0]
and.t %d15, %d0, 7, %d0, 0

# CHECK-INST: and.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0x87,0x00,0x87,0xf3]
and.t %d15, %d0, 7, %d0, 7

# CHECK-INST: and.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0x87,0x00,0x07,0xfc]
and.t %d15, %d0, 7, %d0, 24

# CHECK-INST: and.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0x87,0x00,0x87,0xff]
and.t %d15, %d0, 7, %d0, 31

# CHECK-INST: and.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0x87,0x10,0x07,0xf0]
and.t %d15, %d0, 7, %d1, 0

# CHECK-INST: and.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0x87,0x10,0x87,0xf3]
and.t %d15, %d0, 7, %d1, 7

# CHECK-INST: and.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0x87,0x10,0x07,0xfc]
and.t %d15, %d0, 7, %d1, 24

# CHECK-INST: and.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0x87,0x10,0x87,0xff]
and.t %d15, %d0, 7, %d1, 31

# CHECK-INST: and.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x07,0xf0]
and.t %d15, %d0, 7, %d14, 0

# CHECK-INST: and.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0x87,0xe0,0x87,0xf3]
and.t %d15, %d0, 7, %d14, 7

# CHECK-INST: and.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x07,0xfc]
and.t %d15, %d0, 7, %d14, 24

# CHECK-INST: and.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0x87,0xe0,0x87,0xff]
and.t %d15, %d0, 7, %d14, 31

# CHECK-INST: and.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x07,0xf0]
and.t %d15, %d0, 7, %d15, 0

# CHECK-INST: and.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0x87,0xf0,0x87,0xf3]
and.t %d15, %d0, 7, %d15, 7

# CHECK-INST: and.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x07,0xfc]
and.t %d15, %d0, 7, %d15, 24

# CHECK-INST: and.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0x87,0xf0,0x87,0xff]
and.t %d15, %d0, 7, %d15, 31

# CHECK-INST: and.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0x87,0x00,0x18,0xf0]
and.t %d15, %d0, 24, %d0, 0

# CHECK-INST: and.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0x87,0x00,0x98,0xf3]
and.t %d15, %d0, 24, %d0, 7

# CHECK-INST: and.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0x87,0x00,0x18,0xfc]
and.t %d15, %d0, 24, %d0, 24

# CHECK-INST: and.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0x87,0x00,0x98,0xff]
and.t %d15, %d0, 24, %d0, 31

# CHECK-INST: and.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0x87,0x10,0x18,0xf0]
and.t %d15, %d0, 24, %d1, 0

# CHECK-INST: and.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0x87,0x10,0x98,0xf3]
and.t %d15, %d0, 24, %d1, 7

# CHECK-INST: and.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0x87,0x10,0x18,0xfc]
and.t %d15, %d0, 24, %d1, 24

# CHECK-INST: and.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0x87,0x10,0x98,0xff]
and.t %d15, %d0, 24, %d1, 31

# CHECK-INST: and.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x18,0xf0]
and.t %d15, %d0, 24, %d14, 0

# CHECK-INST: and.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0x87,0xe0,0x98,0xf3]
and.t %d15, %d0, 24, %d14, 7

# CHECK-INST: and.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x18,0xfc]
and.t %d15, %d0, 24, %d14, 24

# CHECK-INST: and.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0x87,0xe0,0x98,0xff]
and.t %d15, %d0, 24, %d14, 31

# CHECK-INST: and.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x18,0xf0]
and.t %d15, %d0, 24, %d15, 0

# CHECK-INST: and.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0x87,0xf0,0x98,0xf3]
and.t %d15, %d0, 24, %d15, 7

# CHECK-INST: and.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x18,0xfc]
and.t %d15, %d0, 24, %d15, 24

# CHECK-INST: and.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0x87,0xf0,0x98,0xff]
and.t %d15, %d0, 24, %d15, 31

# CHECK-INST: and.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0x87,0x00,0x1f,0xf0]
and.t %d15, %d0, 31, %d0, 0

# CHECK-INST: and.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0x87,0x00,0x9f,0xf3]
and.t %d15, %d0, 31, %d0, 7

# CHECK-INST: and.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0x87,0x00,0x1f,0xfc]
and.t %d15, %d0, 31, %d0, 24

# CHECK-INST: and.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0x87,0x00,0x9f,0xff]
and.t %d15, %d0, 31, %d0, 31

# CHECK-INST: and.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0x87,0x10,0x1f,0xf0]
and.t %d15, %d0, 31, %d1, 0

# CHECK-INST: and.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0x87,0x10,0x9f,0xf3]
and.t %d15, %d0, 31, %d1, 7

# CHECK-INST: and.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0x87,0x10,0x1f,0xfc]
and.t %d15, %d0, 31, %d1, 24

# CHECK-INST: and.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0x87,0x10,0x9f,0xff]
and.t %d15, %d0, 31, %d1, 31

# CHECK-INST: and.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x1f,0xf0]
and.t %d15, %d0, 31, %d14, 0

# CHECK-INST: and.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0x87,0xe0,0x9f,0xf3]
and.t %d15, %d0, 31, %d14, 7

# CHECK-INST: and.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x1f,0xfc]
and.t %d15, %d0, 31, %d14, 24

# CHECK-INST: and.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0x87,0xe0,0x9f,0xff]
and.t %d15, %d0, 31, %d14, 31

# CHECK-INST: and.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x1f,0xf0]
and.t %d15, %d0, 31, %d15, 0

# CHECK-INST: and.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0x87,0xf0,0x9f,0xf3]
and.t %d15, %d0, 31, %d15, 7

# CHECK-INST: and.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x1f,0xfc]
and.t %d15, %d0, 31, %d15, 24

# CHECK-INST: and.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0x87,0xf0,0x9f,0xff]
and.t %d15, %d0, 31, %d15, 31

# CHECK-INST: and.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0x87,0x01,0x00,0xf0]
and.t %d15, %d1, 0, %d0, 0

# CHECK-INST: and.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0x87,0x01,0x80,0xf3]
and.t %d15, %d1, 0, %d0, 7

# CHECK-INST: and.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0x87,0x01,0x00,0xfc]
and.t %d15, %d1, 0, %d0, 24

# CHECK-INST: and.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0x87,0x01,0x80,0xff]
and.t %d15, %d1, 0, %d0, 31

# CHECK-INST: and.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0x87,0x11,0x00,0xf0]
and.t %d15, %d1, 0, %d1, 0

# CHECK-INST: and.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0x87,0x11,0x80,0xf3]
and.t %d15, %d1, 0, %d1, 7

# CHECK-INST: and.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0x87,0x11,0x00,0xfc]
and.t %d15, %d1, 0, %d1, 24

# CHECK-INST: and.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0x87,0x11,0x80,0xff]
and.t %d15, %d1, 0, %d1, 31

# CHECK-INST: and.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x00,0xf0]
and.t %d15, %d1, 0, %d14, 0

# CHECK-INST: and.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0x87,0xe1,0x80,0xf3]
and.t %d15, %d1, 0, %d14, 7

# CHECK-INST: and.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x00,0xfc]
and.t %d15, %d1, 0, %d14, 24

# CHECK-INST: and.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0x87,0xe1,0x80,0xff]
and.t %d15, %d1, 0, %d14, 31

# CHECK-INST: and.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x00,0xf0]
and.t %d15, %d1, 0, %d15, 0

# CHECK-INST: and.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0x87,0xf1,0x80,0xf3]
and.t %d15, %d1, 0, %d15, 7

# CHECK-INST: and.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x00,0xfc]
and.t %d15, %d1, 0, %d15, 24

# CHECK-INST: and.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0x87,0xf1,0x80,0xff]
and.t %d15, %d1, 0, %d15, 31

# CHECK-INST: and.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0x87,0x01,0x07,0xf0]
and.t %d15, %d1, 7, %d0, 0

# CHECK-INST: and.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0x87,0x01,0x87,0xf3]
and.t %d15, %d1, 7, %d0, 7

# CHECK-INST: and.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0x87,0x01,0x07,0xfc]
and.t %d15, %d1, 7, %d0, 24

# CHECK-INST: and.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0x87,0x01,0x87,0xff]
and.t %d15, %d1, 7, %d0, 31

# CHECK-INST: and.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0x87,0x11,0x07,0xf0]
and.t %d15, %d1, 7, %d1, 0

# CHECK-INST: and.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0x87,0x11,0x87,0xf3]
and.t %d15, %d1, 7, %d1, 7

# CHECK-INST: and.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0x87,0x11,0x07,0xfc]
and.t %d15, %d1, 7, %d1, 24

# CHECK-INST: and.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0x87,0x11,0x87,0xff]
and.t %d15, %d1, 7, %d1, 31

# CHECK-INST: and.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x07,0xf0]
and.t %d15, %d1, 7, %d14, 0

# CHECK-INST: and.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0x87,0xe1,0x87,0xf3]
and.t %d15, %d1, 7, %d14, 7

# CHECK-INST: and.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x07,0xfc]
and.t %d15, %d1, 7, %d14, 24

# CHECK-INST: and.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0x87,0xe1,0x87,0xff]
and.t %d15, %d1, 7, %d14, 31

# CHECK-INST: and.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x07,0xf0]
and.t %d15, %d1, 7, %d15, 0

# CHECK-INST: and.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0x87,0xf1,0x87,0xf3]
and.t %d15, %d1, 7, %d15, 7

# CHECK-INST: and.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x07,0xfc]
and.t %d15, %d1, 7, %d15, 24

# CHECK-INST: and.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0x87,0xf1,0x87,0xff]
and.t %d15, %d1, 7, %d15, 31

# CHECK-INST: and.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0x87,0x01,0x18,0xf0]
and.t %d15, %d1, 24, %d0, 0

# CHECK-INST: and.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0x87,0x01,0x98,0xf3]
and.t %d15, %d1, 24, %d0, 7

# CHECK-INST: and.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0x87,0x01,0x18,0xfc]
and.t %d15, %d1, 24, %d0, 24

# CHECK-INST: and.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0x87,0x01,0x98,0xff]
and.t %d15, %d1, 24, %d0, 31

# CHECK-INST: and.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0x87,0x11,0x18,0xf0]
and.t %d15, %d1, 24, %d1, 0

# CHECK-INST: and.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0x87,0x11,0x98,0xf3]
and.t %d15, %d1, 24, %d1, 7

# CHECK-INST: and.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0x87,0x11,0x18,0xfc]
and.t %d15, %d1, 24, %d1, 24

# CHECK-INST: and.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0x87,0x11,0x98,0xff]
and.t %d15, %d1, 24, %d1, 31

# CHECK-INST: and.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x18,0xf0]
and.t %d15, %d1, 24, %d14, 0

# CHECK-INST: and.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0x87,0xe1,0x98,0xf3]
and.t %d15, %d1, 24, %d14, 7

# CHECK-INST: and.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x18,0xfc]
and.t %d15, %d1, 24, %d14, 24

# CHECK-INST: and.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0x87,0xe1,0x98,0xff]
and.t %d15, %d1, 24, %d14, 31

# CHECK-INST: and.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x18,0xf0]
and.t %d15, %d1, 24, %d15, 0

# CHECK-INST: and.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0x87,0xf1,0x98,0xf3]
and.t %d15, %d1, 24, %d15, 7

# CHECK-INST: and.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x18,0xfc]
and.t %d15, %d1, 24, %d15, 24

# CHECK-INST: and.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0x87,0xf1,0x98,0xff]
and.t %d15, %d1, 24, %d15, 31

# CHECK-INST: and.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0x87,0x01,0x1f,0xf0]
and.t %d15, %d1, 31, %d0, 0

# CHECK-INST: and.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0x87,0x01,0x9f,0xf3]
and.t %d15, %d1, 31, %d0, 7

# CHECK-INST: and.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0x87,0x01,0x1f,0xfc]
and.t %d15, %d1, 31, %d0, 24

# CHECK-INST: and.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0x87,0x01,0x9f,0xff]
and.t %d15, %d1, 31, %d0, 31

# CHECK-INST: and.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0x87,0x11,0x1f,0xf0]
and.t %d15, %d1, 31, %d1, 0

# CHECK-INST: and.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0x87,0x11,0x9f,0xf3]
and.t %d15, %d1, 31, %d1, 7

# CHECK-INST: and.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0x87,0x11,0x1f,0xfc]
and.t %d15, %d1, 31, %d1, 24

# CHECK-INST: and.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0x87,0x11,0x9f,0xff]
and.t %d15, %d1, 31, %d1, 31

# CHECK-INST: and.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x1f,0xf0]
and.t %d15, %d1, 31, %d14, 0

# CHECK-INST: and.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0x87,0xe1,0x9f,0xf3]
and.t %d15, %d1, 31, %d14, 7

# CHECK-INST: and.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x1f,0xfc]
and.t %d15, %d1, 31, %d14, 24

# CHECK-INST: and.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0x87,0xe1,0x9f,0xff]
and.t %d15, %d1, 31, %d14, 31

# CHECK-INST: and.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x1f,0xf0]
and.t %d15, %d1, 31, %d15, 0

# CHECK-INST: and.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0x87,0xf1,0x9f,0xf3]
and.t %d15, %d1, 31, %d15, 7

# CHECK-INST: and.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x1f,0xfc]
and.t %d15, %d1, 31, %d15, 24

# CHECK-INST: and.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0x87,0xf1,0x9f,0xff]
and.t %d15, %d1, 31, %d15, 31

# CHECK-INST: and.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x00,0xf0]
and.t %d15, %d14, 0, %d0, 0

# CHECK-INST: and.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0x87,0x0e,0x80,0xf3]
and.t %d15, %d14, 0, %d0, 7

# CHECK-INST: and.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x00,0xfc]
and.t %d15, %d14, 0, %d0, 24

# CHECK-INST: and.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0x87,0x0e,0x80,0xff]
and.t %d15, %d14, 0, %d0, 31

# CHECK-INST: and.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x00,0xf0]
and.t %d15, %d14, 0, %d1, 0

# CHECK-INST: and.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0x87,0x1e,0x80,0xf3]
and.t %d15, %d14, 0, %d1, 7

# CHECK-INST: and.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x00,0xfc]
and.t %d15, %d14, 0, %d1, 24

# CHECK-INST: and.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0x87,0x1e,0x80,0xff]
and.t %d15, %d14, 0, %d1, 31

# CHECK-INST: and.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0x87,0xee,0x00,0xf0]
and.t %d15, %d14, 0, %d14, 0

# CHECK-INST: and.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0x87,0xee,0x80,0xf3]
and.t %d15, %d14, 0, %d14, 7

# CHECK-INST: and.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0x87,0xee,0x00,0xfc]
and.t %d15, %d14, 0, %d14, 24

# CHECK-INST: and.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0x87,0xee,0x80,0xff]
and.t %d15, %d14, 0, %d14, 31

# CHECK-INST: and.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x00,0xf0]
and.t %d15, %d14, 0, %d15, 0

# CHECK-INST: and.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0x87,0xfe,0x80,0xf3]
and.t %d15, %d14, 0, %d15, 7

# CHECK-INST: and.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x00,0xfc]
and.t %d15, %d14, 0, %d15, 24

# CHECK-INST: and.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0x87,0xfe,0x80,0xff]
and.t %d15, %d14, 0, %d15, 31

# CHECK-INST: and.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x07,0xf0]
and.t %d15, %d14, 7, %d0, 0

# CHECK-INST: and.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0x87,0x0e,0x87,0xf3]
and.t %d15, %d14, 7, %d0, 7

# CHECK-INST: and.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x07,0xfc]
and.t %d15, %d14, 7, %d0, 24

# CHECK-INST: and.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0x87,0x0e,0x87,0xff]
and.t %d15, %d14, 7, %d0, 31

# CHECK-INST: and.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x07,0xf0]
and.t %d15, %d14, 7, %d1, 0

# CHECK-INST: and.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0x87,0x1e,0x87,0xf3]
and.t %d15, %d14, 7, %d1, 7

# CHECK-INST: and.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x07,0xfc]
and.t %d15, %d14, 7, %d1, 24

# CHECK-INST: and.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0x87,0x1e,0x87,0xff]
and.t %d15, %d14, 7, %d1, 31

# CHECK-INST: and.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0x87,0xee,0x07,0xf0]
and.t %d15, %d14, 7, %d14, 0

# CHECK-INST: and.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0x87,0xee,0x87,0xf3]
and.t %d15, %d14, 7, %d14, 7

# CHECK-INST: and.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0x87,0xee,0x07,0xfc]
and.t %d15, %d14, 7, %d14, 24

# CHECK-INST: and.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0x87,0xee,0x87,0xff]
and.t %d15, %d14, 7, %d14, 31

# CHECK-INST: and.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x07,0xf0]
and.t %d15, %d14, 7, %d15, 0

# CHECK-INST: and.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0x87,0xfe,0x87,0xf3]
and.t %d15, %d14, 7, %d15, 7

# CHECK-INST: and.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x07,0xfc]
and.t %d15, %d14, 7, %d15, 24

# CHECK-INST: and.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0x87,0xfe,0x87,0xff]
and.t %d15, %d14, 7, %d15, 31

# CHECK-INST: and.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x18,0xf0]
and.t %d15, %d14, 24, %d0, 0

# CHECK-INST: and.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0x87,0x0e,0x98,0xf3]
and.t %d15, %d14, 24, %d0, 7

# CHECK-INST: and.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x18,0xfc]
and.t %d15, %d14, 24, %d0, 24

# CHECK-INST: and.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0x87,0x0e,0x98,0xff]
and.t %d15, %d14, 24, %d0, 31

# CHECK-INST: and.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x18,0xf0]
and.t %d15, %d14, 24, %d1, 0

# CHECK-INST: and.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0x87,0x1e,0x98,0xf3]
and.t %d15, %d14, 24, %d1, 7

# CHECK-INST: and.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x18,0xfc]
and.t %d15, %d14, 24, %d1, 24

# CHECK-INST: and.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0x87,0x1e,0x98,0xff]
and.t %d15, %d14, 24, %d1, 31

# CHECK-INST: and.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0x87,0xee,0x18,0xf0]
and.t %d15, %d14, 24, %d14, 0

# CHECK-INST: and.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0x87,0xee,0x98,0xf3]
and.t %d15, %d14, 24, %d14, 7

# CHECK-INST: and.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0x87,0xee,0x18,0xfc]
and.t %d15, %d14, 24, %d14, 24

# CHECK-INST: and.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0x87,0xee,0x98,0xff]
and.t %d15, %d14, 24, %d14, 31

# CHECK-INST: and.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x18,0xf0]
and.t %d15, %d14, 24, %d15, 0

# CHECK-INST: and.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0x87,0xfe,0x98,0xf3]
and.t %d15, %d14, 24, %d15, 7

# CHECK-INST: and.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x18,0xfc]
and.t %d15, %d14, 24, %d15, 24

# CHECK-INST: and.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0x87,0xfe,0x98,0xff]
and.t %d15, %d14, 24, %d15, 31

# CHECK-INST: and.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x1f,0xf0]
and.t %d15, %d14, 31, %d0, 0

# CHECK-INST: and.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0x87,0x0e,0x9f,0xf3]
and.t %d15, %d14, 31, %d0, 7

# CHECK-INST: and.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x1f,0xfc]
and.t %d15, %d14, 31, %d0, 24

# CHECK-INST: and.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0x87,0x0e,0x9f,0xff]
and.t %d15, %d14, 31, %d0, 31

# CHECK-INST: and.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x1f,0xf0]
and.t %d15, %d14, 31, %d1, 0

# CHECK-INST: and.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0x87,0x1e,0x9f,0xf3]
and.t %d15, %d14, 31, %d1, 7

# CHECK-INST: and.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x1f,0xfc]
and.t %d15, %d14, 31, %d1, 24

# CHECK-INST: and.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0x87,0x1e,0x9f,0xff]
and.t %d15, %d14, 31, %d1, 31

# CHECK-INST: and.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0x87,0xee,0x1f,0xf0]
and.t %d15, %d14, 31, %d14, 0

# CHECK-INST: and.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0x87,0xee,0x9f,0xf3]
and.t %d15, %d14, 31, %d14, 7

# CHECK-INST: and.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0x87,0xee,0x1f,0xfc]
and.t %d15, %d14, 31, %d14, 24

# CHECK-INST: and.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0x87,0xee,0x9f,0xff]
and.t %d15, %d14, 31, %d14, 31

# CHECK-INST: and.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x1f,0xf0]
and.t %d15, %d14, 31, %d15, 0

# CHECK-INST: and.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0x87,0xfe,0x9f,0xf3]
and.t %d15, %d14, 31, %d15, 7

# CHECK-INST: and.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x1f,0xfc]
and.t %d15, %d14, 31, %d15, 24

# CHECK-INST: and.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0x87,0xfe,0x9f,0xff]
and.t %d15, %d14, 31, %d15, 31

# CHECK-INST: and.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x00,0xf0]
and.t %d15, %d15, 0, %d0, 0

# CHECK-INST: and.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0x87,0x0f,0x80,0xf3]
and.t %d15, %d15, 0, %d0, 7

# CHECK-INST: and.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x00,0xfc]
and.t %d15, %d15, 0, %d0, 24

# CHECK-INST: and.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0x87,0x0f,0x80,0xff]
and.t %d15, %d15, 0, %d0, 31

# CHECK-INST: and.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x00,0xf0]
and.t %d15, %d15, 0, %d1, 0

# CHECK-INST: and.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0x87,0x1f,0x80,0xf3]
and.t %d15, %d15, 0, %d1, 7

# CHECK-INST: and.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x00,0xfc]
and.t %d15, %d15, 0, %d1, 24

# CHECK-INST: and.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0x87,0x1f,0x80,0xff]
and.t %d15, %d15, 0, %d1, 31

# CHECK-INST: and.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0x87,0xef,0x00,0xf0]
and.t %d15, %d15, 0, %d14, 0

# CHECK-INST: and.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0x87,0xef,0x80,0xf3]
and.t %d15, %d15, 0, %d14, 7

# CHECK-INST: and.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0x87,0xef,0x00,0xfc]
and.t %d15, %d15, 0, %d14, 24

# CHECK-INST: and.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0x87,0xef,0x80,0xff]
and.t %d15, %d15, 0, %d14, 31

# CHECK-INST: and.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0x87,0xff,0x00,0xf0]
and.t %d15, %d15, 0, %d15, 0

# CHECK-INST: and.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0x87,0xff,0x80,0xf3]
and.t %d15, %d15, 0, %d15, 7

# CHECK-INST: and.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0x87,0xff,0x00,0xfc]
and.t %d15, %d15, 0, %d15, 24

# CHECK-INST: and.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0x87,0xff,0x80,0xff]
and.t %d15, %d15, 0, %d15, 31

# CHECK-INST: and.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x07,0xf0]
and.t %d15, %d15, 7, %d0, 0

# CHECK-INST: and.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0x87,0x0f,0x87,0xf3]
and.t %d15, %d15, 7, %d0, 7

# CHECK-INST: and.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x07,0xfc]
and.t %d15, %d15, 7, %d0, 24

# CHECK-INST: and.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0x87,0x0f,0x87,0xff]
and.t %d15, %d15, 7, %d0, 31

# CHECK-INST: and.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x07,0xf0]
and.t %d15, %d15, 7, %d1, 0

# CHECK-INST: and.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0x87,0x1f,0x87,0xf3]
and.t %d15, %d15, 7, %d1, 7

# CHECK-INST: and.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x07,0xfc]
and.t %d15, %d15, 7, %d1, 24

# CHECK-INST: and.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0x87,0x1f,0x87,0xff]
and.t %d15, %d15, 7, %d1, 31

# CHECK-INST: and.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0x87,0xef,0x07,0xf0]
and.t %d15, %d15, 7, %d14, 0

# CHECK-INST: and.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0x87,0xef,0x87,0xf3]
and.t %d15, %d15, 7, %d14, 7

# CHECK-INST: and.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0x87,0xef,0x07,0xfc]
and.t %d15, %d15, 7, %d14, 24

# CHECK-INST: and.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0x87,0xef,0x87,0xff]
and.t %d15, %d15, 7, %d14, 31

# CHECK-INST: and.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0x87,0xff,0x07,0xf0]
and.t %d15, %d15, 7, %d15, 0

# CHECK-INST: and.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0x87,0xff,0x87,0xf3]
and.t %d15, %d15, 7, %d15, 7

# CHECK-INST: and.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0x87,0xff,0x07,0xfc]
and.t %d15, %d15, 7, %d15, 24

# CHECK-INST: and.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0x87,0xff,0x87,0xff]
and.t %d15, %d15, 7, %d15, 31

# CHECK-INST: and.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x18,0xf0]
and.t %d15, %d15, 24, %d0, 0

# CHECK-INST: and.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0x87,0x0f,0x98,0xf3]
and.t %d15, %d15, 24, %d0, 7

# CHECK-INST: and.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x18,0xfc]
and.t %d15, %d15, 24, %d0, 24

# CHECK-INST: and.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0x87,0x0f,0x98,0xff]
and.t %d15, %d15, 24, %d0, 31

# CHECK-INST: and.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x18,0xf0]
and.t %d15, %d15, 24, %d1, 0

# CHECK-INST: and.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0x87,0x1f,0x98,0xf3]
and.t %d15, %d15, 24, %d1, 7

# CHECK-INST: and.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x18,0xfc]
and.t %d15, %d15, 24, %d1, 24

# CHECK-INST: and.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0x87,0x1f,0x98,0xff]
and.t %d15, %d15, 24, %d1, 31

# CHECK-INST: and.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0x87,0xef,0x18,0xf0]
and.t %d15, %d15, 24, %d14, 0

# CHECK-INST: and.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0x87,0xef,0x98,0xf3]
and.t %d15, %d15, 24, %d14, 7

# CHECK-INST: and.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0x87,0xef,0x18,0xfc]
and.t %d15, %d15, 24, %d14, 24

# CHECK-INST: and.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0x87,0xef,0x98,0xff]
and.t %d15, %d15, 24, %d14, 31

# CHECK-INST: and.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0x87,0xff,0x18,0xf0]
and.t %d15, %d15, 24, %d15, 0

# CHECK-INST: and.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0x87,0xff,0x98,0xf3]
and.t %d15, %d15, 24, %d15, 7

# CHECK-INST: and.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0x87,0xff,0x18,0xfc]
and.t %d15, %d15, 24, %d15, 24

# CHECK-INST: and.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0x87,0xff,0x98,0xff]
and.t %d15, %d15, 24, %d15, 31

# CHECK-INST: and.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x1f,0xf0]
and.t %d15, %d15, 31, %d0, 0

# CHECK-INST: and.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0x87,0x0f,0x9f,0xf3]
and.t %d15, %d15, 31, %d0, 7

# CHECK-INST: and.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x1f,0xfc]
and.t %d15, %d15, 31, %d0, 24

# CHECK-INST: and.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0x87,0x0f,0x9f,0xff]
and.t %d15, %d15, 31, %d0, 31

# CHECK-INST: and.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x1f,0xf0]
and.t %d15, %d15, 31, %d1, 0

# CHECK-INST: and.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0x87,0x1f,0x9f,0xf3]
and.t %d15, %d15, 31, %d1, 7

# CHECK-INST: and.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x1f,0xfc]
and.t %d15, %d15, 31, %d1, 24

# CHECK-INST: and.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0x87,0x1f,0x9f,0xff]
and.t %d15, %d15, 31, %d1, 31

# CHECK-INST: and.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0x87,0xef,0x1f,0xf0]
and.t %d15, %d15, 31, %d14, 0

# CHECK-INST: and.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0x87,0xef,0x9f,0xf3]
and.t %d15, %d15, 31, %d14, 7

# CHECK-INST: and.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0x87,0xef,0x1f,0xfc]
and.t %d15, %d15, 31, %d14, 24

# CHECK-INST: and.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0x87,0xef,0x9f,0xff]
and.t %d15, %d15, 31, %d14, 31

# CHECK-INST: and.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0x87,0xff,0x1f,0xf0]
and.t %d15, %d15, 31, %d15, 0

# CHECK-INST: and.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0x87,0xff,0x9f,0xf3]
and.t %d15, %d15, 31, %d15, 7

# CHECK-INST: and.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0x87,0xff,0x1f,0xfc]
and.t %d15, %d15, 31, %d15, 24

# CHECK-INST: and.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0x87,0xff,0x9f,0xff]
and.t %d15, %d15, 31, %d15, 31

# CHECK-INST: andn.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x60,0x00]
andn.t %d0, %d0, 0, %d0, 0

# CHECK-INST: andn.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0x87,0x00,0xe0,0x03]
andn.t %d0, %d0, 0, %d0, 7

# CHECK-INST: andn.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0x87,0x00,0x60,0x0c]
andn.t %d0, %d0, 0, %d0, 24

# CHECK-INST: andn.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0x87,0x00,0xe0,0x0f]
andn.t %d0, %d0, 0, %d0, 31

# CHECK-INST: andn.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0x87,0x10,0x60,0x00]
andn.t %d0, %d0, 0, %d1, 0

# CHECK-INST: andn.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0x87,0x10,0xe0,0x03]
andn.t %d0, %d0, 0, %d1, 7

# CHECK-INST: andn.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0x87,0x10,0x60,0x0c]
andn.t %d0, %d0, 0, %d1, 24

# CHECK-INST: andn.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0x87,0x10,0xe0,0x0f]
andn.t %d0, %d0, 0, %d1, 31

# CHECK-INST: andn.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x60,0x00]
andn.t %d0, %d0, 0, %d14, 0

# CHECK-INST: andn.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xe0,0x03]
andn.t %d0, %d0, 0, %d14, 7

# CHECK-INST: andn.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x60,0x0c]
andn.t %d0, %d0, 0, %d14, 24

# CHECK-INST: andn.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xe0,0x0f]
andn.t %d0, %d0, 0, %d14, 31

# CHECK-INST: andn.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x60,0x00]
andn.t %d0, %d0, 0, %d15, 0

# CHECK-INST: andn.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xe0,0x03]
andn.t %d0, %d0, 0, %d15, 7

# CHECK-INST: andn.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x60,0x0c]
andn.t %d0, %d0, 0, %d15, 24

# CHECK-INST: andn.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xe0,0x0f]
andn.t %d0, %d0, 0, %d15, 31

# CHECK-INST: andn.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0x87,0x00,0x67,0x00]
andn.t %d0, %d0, 7, %d0, 0

# CHECK-INST: andn.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0x87,0x00,0xe7,0x03]
andn.t %d0, %d0, 7, %d0, 7

# CHECK-INST: andn.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0x87,0x00,0x67,0x0c]
andn.t %d0, %d0, 7, %d0, 24

# CHECK-INST: andn.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0x87,0x00,0xe7,0x0f]
andn.t %d0, %d0, 7, %d0, 31

# CHECK-INST: andn.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0x87,0x10,0x67,0x00]
andn.t %d0, %d0, 7, %d1, 0

# CHECK-INST: andn.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0x87,0x10,0xe7,0x03]
andn.t %d0, %d0, 7, %d1, 7

# CHECK-INST: andn.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0x87,0x10,0x67,0x0c]
andn.t %d0, %d0, 7, %d1, 24

# CHECK-INST: andn.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0x87,0x10,0xe7,0x0f]
andn.t %d0, %d0, 7, %d1, 31

# CHECK-INST: andn.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x67,0x00]
andn.t %d0, %d0, 7, %d14, 0

# CHECK-INST: andn.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xe7,0x03]
andn.t %d0, %d0, 7, %d14, 7

# CHECK-INST: andn.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x67,0x0c]
andn.t %d0, %d0, 7, %d14, 24

# CHECK-INST: andn.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xe7,0x0f]
andn.t %d0, %d0, 7, %d14, 31

# CHECK-INST: andn.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x67,0x00]
andn.t %d0, %d0, 7, %d15, 0

# CHECK-INST: andn.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xe7,0x03]
andn.t %d0, %d0, 7, %d15, 7

# CHECK-INST: andn.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x67,0x0c]
andn.t %d0, %d0, 7, %d15, 24

# CHECK-INST: andn.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xe7,0x0f]
andn.t %d0, %d0, 7, %d15, 31

# CHECK-INST: andn.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0x87,0x00,0x78,0x00]
andn.t %d0, %d0, 24, %d0, 0

# CHECK-INST: andn.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0x87,0x00,0xf8,0x03]
andn.t %d0, %d0, 24, %d0, 7

# CHECK-INST: andn.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0x87,0x00,0x78,0x0c]
andn.t %d0, %d0, 24, %d0, 24

# CHECK-INST: andn.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0x87,0x00,0xf8,0x0f]
andn.t %d0, %d0, 24, %d0, 31

# CHECK-INST: andn.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0x87,0x10,0x78,0x00]
andn.t %d0, %d0, 24, %d1, 0

# CHECK-INST: andn.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0x87,0x10,0xf8,0x03]
andn.t %d0, %d0, 24, %d1, 7

# CHECK-INST: andn.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0x87,0x10,0x78,0x0c]
andn.t %d0, %d0, 24, %d1, 24

# CHECK-INST: andn.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0x87,0x10,0xf8,0x0f]
andn.t %d0, %d0, 24, %d1, 31

# CHECK-INST: andn.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x78,0x00]
andn.t %d0, %d0, 24, %d14, 0

# CHECK-INST: andn.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xf8,0x03]
andn.t %d0, %d0, 24, %d14, 7

# CHECK-INST: andn.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x78,0x0c]
andn.t %d0, %d0, 24, %d14, 24

# CHECK-INST: andn.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xf8,0x0f]
andn.t %d0, %d0, 24, %d14, 31

# CHECK-INST: andn.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x78,0x00]
andn.t %d0, %d0, 24, %d15, 0

# CHECK-INST: andn.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xf8,0x03]
andn.t %d0, %d0, 24, %d15, 7

# CHECK-INST: andn.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x78,0x0c]
andn.t %d0, %d0, 24, %d15, 24

# CHECK-INST: andn.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xf8,0x0f]
andn.t %d0, %d0, 24, %d15, 31

# CHECK-INST: andn.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0x87,0x00,0x7f,0x00]
andn.t %d0, %d0, 31, %d0, 0

# CHECK-INST: andn.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0x87,0x00,0xff,0x03]
andn.t %d0, %d0, 31, %d0, 7

# CHECK-INST: andn.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0x87,0x00,0x7f,0x0c]
andn.t %d0, %d0, 31, %d0, 24

# CHECK-INST: andn.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0x87,0x00,0xff,0x0f]
andn.t %d0, %d0, 31, %d0, 31

# CHECK-INST: andn.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0x87,0x10,0x7f,0x00]
andn.t %d0, %d0, 31, %d1, 0

# CHECK-INST: andn.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0x87,0x10,0xff,0x03]
andn.t %d0, %d0, 31, %d1, 7

# CHECK-INST: andn.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0x87,0x10,0x7f,0x0c]
andn.t %d0, %d0, 31, %d1, 24

# CHECK-INST: andn.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0x87,0x10,0xff,0x0f]
andn.t %d0, %d0, 31, %d1, 31

# CHECK-INST: andn.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x7f,0x00]
andn.t %d0, %d0, 31, %d14, 0

# CHECK-INST: andn.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xff,0x03]
andn.t %d0, %d0, 31, %d14, 7

# CHECK-INST: andn.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x7f,0x0c]
andn.t %d0, %d0, 31, %d14, 24

# CHECK-INST: andn.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xff,0x0f]
andn.t %d0, %d0, 31, %d14, 31

# CHECK-INST: andn.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x7f,0x00]
andn.t %d0, %d0, 31, %d15, 0

# CHECK-INST: andn.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xff,0x03]
andn.t %d0, %d0, 31, %d15, 7

# CHECK-INST: andn.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x7f,0x0c]
andn.t %d0, %d0, 31, %d15, 24

# CHECK-INST: andn.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xff,0x0f]
andn.t %d0, %d0, 31, %d15, 31

# CHECK-INST: andn.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0x87,0x01,0x60,0x00]
andn.t %d0, %d1, 0, %d0, 0

# CHECK-INST: andn.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0x87,0x01,0xe0,0x03]
andn.t %d0, %d1, 0, %d0, 7

# CHECK-INST: andn.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0x87,0x01,0x60,0x0c]
andn.t %d0, %d1, 0, %d0, 24

# CHECK-INST: andn.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0x87,0x01,0xe0,0x0f]
andn.t %d0, %d1, 0, %d0, 31

# CHECK-INST: andn.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0x87,0x11,0x60,0x00]
andn.t %d0, %d1, 0, %d1, 0

# CHECK-INST: andn.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0x87,0x11,0xe0,0x03]
andn.t %d0, %d1, 0, %d1, 7

# CHECK-INST: andn.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0x87,0x11,0x60,0x0c]
andn.t %d0, %d1, 0, %d1, 24

# CHECK-INST: andn.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0x87,0x11,0xe0,0x0f]
andn.t %d0, %d1, 0, %d1, 31

# CHECK-INST: andn.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x60,0x00]
andn.t %d0, %d1, 0, %d14, 0

# CHECK-INST: andn.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xe0,0x03]
andn.t %d0, %d1, 0, %d14, 7

# CHECK-INST: andn.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x60,0x0c]
andn.t %d0, %d1, 0, %d14, 24

# CHECK-INST: andn.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xe0,0x0f]
andn.t %d0, %d1, 0, %d14, 31

# CHECK-INST: andn.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x60,0x00]
andn.t %d0, %d1, 0, %d15, 0

# CHECK-INST: andn.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xe0,0x03]
andn.t %d0, %d1, 0, %d15, 7

# CHECK-INST: andn.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x60,0x0c]
andn.t %d0, %d1, 0, %d15, 24

# CHECK-INST: andn.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xe0,0x0f]
andn.t %d0, %d1, 0, %d15, 31

# CHECK-INST: andn.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0x87,0x01,0x67,0x00]
andn.t %d0, %d1, 7, %d0, 0

# CHECK-INST: andn.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0x87,0x01,0xe7,0x03]
andn.t %d0, %d1, 7, %d0, 7

# CHECK-INST: andn.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0x87,0x01,0x67,0x0c]
andn.t %d0, %d1, 7, %d0, 24

# CHECK-INST: andn.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0x87,0x01,0xe7,0x0f]
andn.t %d0, %d1, 7, %d0, 31

# CHECK-INST: andn.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0x87,0x11,0x67,0x00]
andn.t %d0, %d1, 7, %d1, 0

# CHECK-INST: andn.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0x87,0x11,0xe7,0x03]
andn.t %d0, %d1, 7, %d1, 7

# CHECK-INST: andn.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0x87,0x11,0x67,0x0c]
andn.t %d0, %d1, 7, %d1, 24

# CHECK-INST: andn.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0x87,0x11,0xe7,0x0f]
andn.t %d0, %d1, 7, %d1, 31

# CHECK-INST: andn.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x67,0x00]
andn.t %d0, %d1, 7, %d14, 0

# CHECK-INST: andn.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xe7,0x03]
andn.t %d0, %d1, 7, %d14, 7

# CHECK-INST: andn.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x67,0x0c]
andn.t %d0, %d1, 7, %d14, 24

# CHECK-INST: andn.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xe7,0x0f]
andn.t %d0, %d1, 7, %d14, 31

# CHECK-INST: andn.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x67,0x00]
andn.t %d0, %d1, 7, %d15, 0

# CHECK-INST: andn.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xe7,0x03]
andn.t %d0, %d1, 7, %d15, 7

# CHECK-INST: andn.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x67,0x0c]
andn.t %d0, %d1, 7, %d15, 24

# CHECK-INST: andn.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xe7,0x0f]
andn.t %d0, %d1, 7, %d15, 31

# CHECK-INST: andn.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0x87,0x01,0x78,0x00]
andn.t %d0, %d1, 24, %d0, 0

# CHECK-INST: andn.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0x87,0x01,0xf8,0x03]
andn.t %d0, %d1, 24, %d0, 7

# CHECK-INST: andn.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0x87,0x01,0x78,0x0c]
andn.t %d0, %d1, 24, %d0, 24

# CHECK-INST: andn.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0x87,0x01,0xf8,0x0f]
andn.t %d0, %d1, 24, %d0, 31

# CHECK-INST: andn.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0x87,0x11,0x78,0x00]
andn.t %d0, %d1, 24, %d1, 0

# CHECK-INST: andn.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0x87,0x11,0xf8,0x03]
andn.t %d0, %d1, 24, %d1, 7

# CHECK-INST: andn.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0x87,0x11,0x78,0x0c]
andn.t %d0, %d1, 24, %d1, 24

# CHECK-INST: andn.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0x87,0x11,0xf8,0x0f]
andn.t %d0, %d1, 24, %d1, 31

# CHECK-INST: andn.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x78,0x00]
andn.t %d0, %d1, 24, %d14, 0

# CHECK-INST: andn.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xf8,0x03]
andn.t %d0, %d1, 24, %d14, 7

# CHECK-INST: andn.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x78,0x0c]
andn.t %d0, %d1, 24, %d14, 24

# CHECK-INST: andn.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xf8,0x0f]
andn.t %d0, %d1, 24, %d14, 31

# CHECK-INST: andn.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x78,0x00]
andn.t %d0, %d1, 24, %d15, 0

# CHECK-INST: andn.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xf8,0x03]
andn.t %d0, %d1, 24, %d15, 7

# CHECK-INST: andn.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x78,0x0c]
andn.t %d0, %d1, 24, %d15, 24

# CHECK-INST: andn.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xf8,0x0f]
andn.t %d0, %d1, 24, %d15, 31

# CHECK-INST: andn.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0x87,0x01,0x7f,0x00]
andn.t %d0, %d1, 31, %d0, 0

# CHECK-INST: andn.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0x87,0x01,0xff,0x03]
andn.t %d0, %d1, 31, %d0, 7

# CHECK-INST: andn.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0x87,0x01,0x7f,0x0c]
andn.t %d0, %d1, 31, %d0, 24

# CHECK-INST: andn.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0x87,0x01,0xff,0x0f]
andn.t %d0, %d1, 31, %d0, 31

# CHECK-INST: andn.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0x87,0x11,0x7f,0x00]
andn.t %d0, %d1, 31, %d1, 0

# CHECK-INST: andn.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0x87,0x11,0xff,0x03]
andn.t %d0, %d1, 31, %d1, 7

# CHECK-INST: andn.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0x87,0x11,0x7f,0x0c]
andn.t %d0, %d1, 31, %d1, 24

# CHECK-INST: andn.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0x87,0x11,0xff,0x0f]
andn.t %d0, %d1, 31, %d1, 31

# CHECK-INST: andn.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x7f,0x00]
andn.t %d0, %d1, 31, %d14, 0

# CHECK-INST: andn.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xff,0x03]
andn.t %d0, %d1, 31, %d14, 7

# CHECK-INST: andn.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x7f,0x0c]
andn.t %d0, %d1, 31, %d14, 24

# CHECK-INST: andn.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xff,0x0f]
andn.t %d0, %d1, 31, %d14, 31

# CHECK-INST: andn.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x7f,0x00]
andn.t %d0, %d1, 31, %d15, 0

# CHECK-INST: andn.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xff,0x03]
andn.t %d0, %d1, 31, %d15, 7

# CHECK-INST: andn.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x7f,0x0c]
andn.t %d0, %d1, 31, %d15, 24

# CHECK-INST: andn.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xff,0x0f]
andn.t %d0, %d1, 31, %d15, 31

# CHECK-INST: andn.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x60,0x00]
andn.t %d0, %d14, 0, %d0, 0

# CHECK-INST: andn.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xe0,0x03]
andn.t %d0, %d14, 0, %d0, 7

# CHECK-INST: andn.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x60,0x0c]
andn.t %d0, %d14, 0, %d0, 24

# CHECK-INST: andn.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xe0,0x0f]
andn.t %d0, %d14, 0, %d0, 31

# CHECK-INST: andn.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x60,0x00]
andn.t %d0, %d14, 0, %d1, 0

# CHECK-INST: andn.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xe0,0x03]
andn.t %d0, %d14, 0, %d1, 7

# CHECK-INST: andn.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x60,0x0c]
andn.t %d0, %d14, 0, %d1, 24

# CHECK-INST: andn.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xe0,0x0f]
andn.t %d0, %d14, 0, %d1, 31

# CHECK-INST: andn.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0x87,0xee,0x60,0x00]
andn.t %d0, %d14, 0, %d14, 0

# CHECK-INST: andn.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0x87,0xee,0xe0,0x03]
andn.t %d0, %d14, 0, %d14, 7

# CHECK-INST: andn.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0x87,0xee,0x60,0x0c]
andn.t %d0, %d14, 0, %d14, 24

# CHECK-INST: andn.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0x87,0xee,0xe0,0x0f]
andn.t %d0, %d14, 0, %d14, 31

# CHECK-INST: andn.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x60,0x00]
andn.t %d0, %d14, 0, %d15, 0

# CHECK-INST: andn.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xe0,0x03]
andn.t %d0, %d14, 0, %d15, 7

# CHECK-INST: andn.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x60,0x0c]
andn.t %d0, %d14, 0, %d15, 24

# CHECK-INST: andn.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xe0,0x0f]
andn.t %d0, %d14, 0, %d15, 31

# CHECK-INST: andn.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x67,0x00]
andn.t %d0, %d14, 7, %d0, 0

# CHECK-INST: andn.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xe7,0x03]
andn.t %d0, %d14, 7, %d0, 7

# CHECK-INST: andn.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x67,0x0c]
andn.t %d0, %d14, 7, %d0, 24

# CHECK-INST: andn.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xe7,0x0f]
andn.t %d0, %d14, 7, %d0, 31

# CHECK-INST: andn.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x67,0x00]
andn.t %d0, %d14, 7, %d1, 0

# CHECK-INST: andn.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xe7,0x03]
andn.t %d0, %d14, 7, %d1, 7

# CHECK-INST: andn.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x67,0x0c]
andn.t %d0, %d14, 7, %d1, 24

# CHECK-INST: andn.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xe7,0x0f]
andn.t %d0, %d14, 7, %d1, 31

# CHECK-INST: andn.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0x87,0xee,0x67,0x00]
andn.t %d0, %d14, 7, %d14, 0

# CHECK-INST: andn.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0x87,0xee,0xe7,0x03]
andn.t %d0, %d14, 7, %d14, 7

# CHECK-INST: andn.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0x87,0xee,0x67,0x0c]
andn.t %d0, %d14, 7, %d14, 24

# CHECK-INST: andn.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0x87,0xee,0xe7,0x0f]
andn.t %d0, %d14, 7, %d14, 31

# CHECK-INST: andn.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x67,0x00]
andn.t %d0, %d14, 7, %d15, 0

# CHECK-INST: andn.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xe7,0x03]
andn.t %d0, %d14, 7, %d15, 7

# CHECK-INST: andn.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x67,0x0c]
andn.t %d0, %d14, 7, %d15, 24

# CHECK-INST: andn.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xe7,0x0f]
andn.t %d0, %d14, 7, %d15, 31

# CHECK-INST: andn.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x78,0x00]
andn.t %d0, %d14, 24, %d0, 0

# CHECK-INST: andn.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xf8,0x03]
andn.t %d0, %d14, 24, %d0, 7

# CHECK-INST: andn.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x78,0x0c]
andn.t %d0, %d14, 24, %d0, 24

# CHECK-INST: andn.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xf8,0x0f]
andn.t %d0, %d14, 24, %d0, 31

# CHECK-INST: andn.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x78,0x00]
andn.t %d0, %d14, 24, %d1, 0

# CHECK-INST: andn.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xf8,0x03]
andn.t %d0, %d14, 24, %d1, 7

# CHECK-INST: andn.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x78,0x0c]
andn.t %d0, %d14, 24, %d1, 24

# CHECK-INST: andn.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xf8,0x0f]
andn.t %d0, %d14, 24, %d1, 31

# CHECK-INST: andn.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0x87,0xee,0x78,0x00]
andn.t %d0, %d14, 24, %d14, 0

# CHECK-INST: andn.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0x87,0xee,0xf8,0x03]
andn.t %d0, %d14, 24, %d14, 7

# CHECK-INST: andn.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0x87,0xee,0x78,0x0c]
andn.t %d0, %d14, 24, %d14, 24

# CHECK-INST: andn.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0x87,0xee,0xf8,0x0f]
andn.t %d0, %d14, 24, %d14, 31

# CHECK-INST: andn.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x78,0x00]
andn.t %d0, %d14, 24, %d15, 0

# CHECK-INST: andn.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xf8,0x03]
andn.t %d0, %d14, 24, %d15, 7

# CHECK-INST: andn.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x78,0x0c]
andn.t %d0, %d14, 24, %d15, 24

# CHECK-INST: andn.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xf8,0x0f]
andn.t %d0, %d14, 24, %d15, 31

# CHECK-INST: andn.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x7f,0x00]
andn.t %d0, %d14, 31, %d0, 0

# CHECK-INST: andn.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xff,0x03]
andn.t %d0, %d14, 31, %d0, 7

# CHECK-INST: andn.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x7f,0x0c]
andn.t %d0, %d14, 31, %d0, 24

# CHECK-INST: andn.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xff,0x0f]
andn.t %d0, %d14, 31, %d0, 31

# CHECK-INST: andn.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x7f,0x00]
andn.t %d0, %d14, 31, %d1, 0

# CHECK-INST: andn.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xff,0x03]
andn.t %d0, %d14, 31, %d1, 7

# CHECK-INST: andn.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x7f,0x0c]
andn.t %d0, %d14, 31, %d1, 24

# CHECK-INST: andn.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xff,0x0f]
andn.t %d0, %d14, 31, %d1, 31

# CHECK-INST: andn.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0x87,0xee,0x7f,0x00]
andn.t %d0, %d14, 31, %d14, 0

# CHECK-INST: andn.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0x87,0xee,0xff,0x03]
andn.t %d0, %d14, 31, %d14, 7

# CHECK-INST: andn.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0x87,0xee,0x7f,0x0c]
andn.t %d0, %d14, 31, %d14, 24

# CHECK-INST: andn.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0x87,0xee,0xff,0x0f]
andn.t %d0, %d14, 31, %d14, 31

# CHECK-INST: andn.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x7f,0x00]
andn.t %d0, %d14, 31, %d15, 0

# CHECK-INST: andn.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xff,0x03]
andn.t %d0, %d14, 31, %d15, 7

# CHECK-INST: andn.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x7f,0x0c]
andn.t %d0, %d14, 31, %d15, 24

# CHECK-INST: andn.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xff,0x0f]
andn.t %d0, %d14, 31, %d15, 31

# CHECK-INST: andn.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x60,0x00]
andn.t %d0, %d15, 0, %d0, 0

# CHECK-INST: andn.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xe0,0x03]
andn.t %d0, %d15, 0, %d0, 7

# CHECK-INST: andn.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x60,0x0c]
andn.t %d0, %d15, 0, %d0, 24

# CHECK-INST: andn.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xe0,0x0f]
andn.t %d0, %d15, 0, %d0, 31

# CHECK-INST: andn.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x60,0x00]
andn.t %d0, %d15, 0, %d1, 0

# CHECK-INST: andn.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xe0,0x03]
andn.t %d0, %d15, 0, %d1, 7

# CHECK-INST: andn.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x60,0x0c]
andn.t %d0, %d15, 0, %d1, 24

# CHECK-INST: andn.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xe0,0x0f]
andn.t %d0, %d15, 0, %d1, 31

# CHECK-INST: andn.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0x87,0xef,0x60,0x00]
andn.t %d0, %d15, 0, %d14, 0

# CHECK-INST: andn.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0x87,0xef,0xe0,0x03]
andn.t %d0, %d15, 0, %d14, 7

# CHECK-INST: andn.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0x87,0xef,0x60,0x0c]
andn.t %d0, %d15, 0, %d14, 24

# CHECK-INST: andn.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0x87,0xef,0xe0,0x0f]
andn.t %d0, %d15, 0, %d14, 31

# CHECK-INST: andn.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0x87,0xff,0x60,0x00]
andn.t %d0, %d15, 0, %d15, 0

# CHECK-INST: andn.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0x87,0xff,0xe0,0x03]
andn.t %d0, %d15, 0, %d15, 7

# CHECK-INST: andn.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0x87,0xff,0x60,0x0c]
andn.t %d0, %d15, 0, %d15, 24

# CHECK-INST: andn.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0x87,0xff,0xe0,0x0f]
andn.t %d0, %d15, 0, %d15, 31

# CHECK-INST: andn.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x67,0x00]
andn.t %d0, %d15, 7, %d0, 0

# CHECK-INST: andn.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xe7,0x03]
andn.t %d0, %d15, 7, %d0, 7

# CHECK-INST: andn.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x67,0x0c]
andn.t %d0, %d15, 7, %d0, 24

# CHECK-INST: andn.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xe7,0x0f]
andn.t %d0, %d15, 7, %d0, 31

# CHECK-INST: andn.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x67,0x00]
andn.t %d0, %d15, 7, %d1, 0

# CHECK-INST: andn.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xe7,0x03]
andn.t %d0, %d15, 7, %d1, 7

# CHECK-INST: andn.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x67,0x0c]
andn.t %d0, %d15, 7, %d1, 24

# CHECK-INST: andn.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xe7,0x0f]
andn.t %d0, %d15, 7, %d1, 31

# CHECK-INST: andn.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0x87,0xef,0x67,0x00]
andn.t %d0, %d15, 7, %d14, 0

# CHECK-INST: andn.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0x87,0xef,0xe7,0x03]
andn.t %d0, %d15, 7, %d14, 7

# CHECK-INST: andn.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0x87,0xef,0x67,0x0c]
andn.t %d0, %d15, 7, %d14, 24

# CHECK-INST: andn.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0x87,0xef,0xe7,0x0f]
andn.t %d0, %d15, 7, %d14, 31

# CHECK-INST: andn.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0x87,0xff,0x67,0x00]
andn.t %d0, %d15, 7, %d15, 0

# CHECK-INST: andn.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0x87,0xff,0xe7,0x03]
andn.t %d0, %d15, 7, %d15, 7

# CHECK-INST: andn.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0x87,0xff,0x67,0x0c]
andn.t %d0, %d15, 7, %d15, 24

# CHECK-INST: andn.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0x87,0xff,0xe7,0x0f]
andn.t %d0, %d15, 7, %d15, 31

# CHECK-INST: andn.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x78,0x00]
andn.t %d0, %d15, 24, %d0, 0

# CHECK-INST: andn.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xf8,0x03]
andn.t %d0, %d15, 24, %d0, 7

# CHECK-INST: andn.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x78,0x0c]
andn.t %d0, %d15, 24, %d0, 24

# CHECK-INST: andn.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xf8,0x0f]
andn.t %d0, %d15, 24, %d0, 31

# CHECK-INST: andn.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x78,0x00]
andn.t %d0, %d15, 24, %d1, 0

# CHECK-INST: andn.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xf8,0x03]
andn.t %d0, %d15, 24, %d1, 7

# CHECK-INST: andn.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x78,0x0c]
andn.t %d0, %d15, 24, %d1, 24

# CHECK-INST: andn.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xf8,0x0f]
andn.t %d0, %d15, 24, %d1, 31

# CHECK-INST: andn.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0x87,0xef,0x78,0x00]
andn.t %d0, %d15, 24, %d14, 0

# CHECK-INST: andn.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0x87,0xef,0xf8,0x03]
andn.t %d0, %d15, 24, %d14, 7

# CHECK-INST: andn.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0x87,0xef,0x78,0x0c]
andn.t %d0, %d15, 24, %d14, 24

# CHECK-INST: andn.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0x87,0xef,0xf8,0x0f]
andn.t %d0, %d15, 24, %d14, 31

# CHECK-INST: andn.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0x87,0xff,0x78,0x00]
andn.t %d0, %d15, 24, %d15, 0

# CHECK-INST: andn.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0x87,0xff,0xf8,0x03]
andn.t %d0, %d15, 24, %d15, 7

# CHECK-INST: andn.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0x87,0xff,0x78,0x0c]
andn.t %d0, %d15, 24, %d15, 24

# CHECK-INST: andn.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0x87,0xff,0xf8,0x0f]
andn.t %d0, %d15, 24, %d15, 31

# CHECK-INST: andn.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x7f,0x00]
andn.t %d0, %d15, 31, %d0, 0

# CHECK-INST: andn.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xff,0x03]
andn.t %d0, %d15, 31, %d0, 7

# CHECK-INST: andn.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x7f,0x0c]
andn.t %d0, %d15, 31, %d0, 24

# CHECK-INST: andn.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xff,0x0f]
andn.t %d0, %d15, 31, %d0, 31

# CHECK-INST: andn.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x7f,0x00]
andn.t %d0, %d15, 31, %d1, 0

# CHECK-INST: andn.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xff,0x03]
andn.t %d0, %d15, 31, %d1, 7

# CHECK-INST: andn.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x7f,0x0c]
andn.t %d0, %d15, 31, %d1, 24

# CHECK-INST: andn.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xff,0x0f]
andn.t %d0, %d15, 31, %d1, 31

# CHECK-INST: andn.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0x87,0xef,0x7f,0x00]
andn.t %d0, %d15, 31, %d14, 0

# CHECK-INST: andn.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0x87,0xef,0xff,0x03]
andn.t %d0, %d15, 31, %d14, 7

# CHECK-INST: andn.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0x87,0xef,0x7f,0x0c]
andn.t %d0, %d15, 31, %d14, 24

# CHECK-INST: andn.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0x87,0xef,0xff,0x0f]
andn.t %d0, %d15, 31, %d14, 31

# CHECK-INST: andn.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0x87,0xff,0x7f,0x00]
andn.t %d0, %d15, 31, %d15, 0

# CHECK-INST: andn.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0x87,0xff,0xff,0x03]
andn.t %d0, %d15, 31, %d15, 7

# CHECK-INST: andn.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0x87,0xff,0x7f,0x0c]
andn.t %d0, %d15, 31, %d15, 24

# CHECK-INST: andn.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0x87,0xff,0xff,0x0f]
andn.t %d0, %d15, 31, %d15, 31

# CHECK-INST: andn.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x60,0x10]
andn.t %d1, %d0, 0, %d0, 0

# CHECK-INST: andn.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0x87,0x00,0xe0,0x13]
andn.t %d1, %d0, 0, %d0, 7

# CHECK-INST: andn.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0x87,0x00,0x60,0x1c]
andn.t %d1, %d0, 0, %d0, 24

# CHECK-INST: andn.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0x87,0x00,0xe0,0x1f]
andn.t %d1, %d0, 0, %d0, 31

# CHECK-INST: andn.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0x87,0x10,0x60,0x10]
andn.t %d1, %d0, 0, %d1, 0

# CHECK-INST: andn.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0x87,0x10,0xe0,0x13]
andn.t %d1, %d0, 0, %d1, 7

# CHECK-INST: andn.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0x87,0x10,0x60,0x1c]
andn.t %d1, %d0, 0, %d1, 24

# CHECK-INST: andn.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0x87,0x10,0xe0,0x1f]
andn.t %d1, %d0, 0, %d1, 31

# CHECK-INST: andn.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x60,0x10]
andn.t %d1, %d0, 0, %d14, 0

# CHECK-INST: andn.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xe0,0x13]
andn.t %d1, %d0, 0, %d14, 7

# CHECK-INST: andn.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x60,0x1c]
andn.t %d1, %d0, 0, %d14, 24

# CHECK-INST: andn.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xe0,0x1f]
andn.t %d1, %d0, 0, %d14, 31

# CHECK-INST: andn.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x60,0x10]
andn.t %d1, %d0, 0, %d15, 0

# CHECK-INST: andn.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xe0,0x13]
andn.t %d1, %d0, 0, %d15, 7

# CHECK-INST: andn.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x60,0x1c]
andn.t %d1, %d0, 0, %d15, 24

# CHECK-INST: andn.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xe0,0x1f]
andn.t %d1, %d0, 0, %d15, 31

# CHECK-INST: andn.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0x87,0x00,0x67,0x10]
andn.t %d1, %d0, 7, %d0, 0

# CHECK-INST: andn.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0x87,0x00,0xe7,0x13]
andn.t %d1, %d0, 7, %d0, 7

# CHECK-INST: andn.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0x87,0x00,0x67,0x1c]
andn.t %d1, %d0, 7, %d0, 24

# CHECK-INST: andn.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0x87,0x00,0xe7,0x1f]
andn.t %d1, %d0, 7, %d0, 31

# CHECK-INST: andn.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0x87,0x10,0x67,0x10]
andn.t %d1, %d0, 7, %d1, 0

# CHECK-INST: andn.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0x87,0x10,0xe7,0x13]
andn.t %d1, %d0, 7, %d1, 7

# CHECK-INST: andn.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0x87,0x10,0x67,0x1c]
andn.t %d1, %d0, 7, %d1, 24

# CHECK-INST: andn.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0x87,0x10,0xe7,0x1f]
andn.t %d1, %d0, 7, %d1, 31

# CHECK-INST: andn.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x67,0x10]
andn.t %d1, %d0, 7, %d14, 0

# CHECK-INST: andn.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xe7,0x13]
andn.t %d1, %d0, 7, %d14, 7

# CHECK-INST: andn.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x67,0x1c]
andn.t %d1, %d0, 7, %d14, 24

# CHECK-INST: andn.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xe7,0x1f]
andn.t %d1, %d0, 7, %d14, 31

# CHECK-INST: andn.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x67,0x10]
andn.t %d1, %d0, 7, %d15, 0

# CHECK-INST: andn.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xe7,0x13]
andn.t %d1, %d0, 7, %d15, 7

# CHECK-INST: andn.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x67,0x1c]
andn.t %d1, %d0, 7, %d15, 24

# CHECK-INST: andn.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xe7,0x1f]
andn.t %d1, %d0, 7, %d15, 31

# CHECK-INST: andn.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0x87,0x00,0x78,0x10]
andn.t %d1, %d0, 24, %d0, 0

# CHECK-INST: andn.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0x87,0x00,0xf8,0x13]
andn.t %d1, %d0, 24, %d0, 7

# CHECK-INST: andn.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0x87,0x00,0x78,0x1c]
andn.t %d1, %d0, 24, %d0, 24

# CHECK-INST: andn.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0x87,0x00,0xf8,0x1f]
andn.t %d1, %d0, 24, %d0, 31

# CHECK-INST: andn.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0x87,0x10,0x78,0x10]
andn.t %d1, %d0, 24, %d1, 0

# CHECK-INST: andn.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0x87,0x10,0xf8,0x13]
andn.t %d1, %d0, 24, %d1, 7

# CHECK-INST: andn.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0x87,0x10,0x78,0x1c]
andn.t %d1, %d0, 24, %d1, 24

# CHECK-INST: andn.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0x87,0x10,0xf8,0x1f]
andn.t %d1, %d0, 24, %d1, 31

# CHECK-INST: andn.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x78,0x10]
andn.t %d1, %d0, 24, %d14, 0

# CHECK-INST: andn.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xf8,0x13]
andn.t %d1, %d0, 24, %d14, 7

# CHECK-INST: andn.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x78,0x1c]
andn.t %d1, %d0, 24, %d14, 24

# CHECK-INST: andn.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xf8,0x1f]
andn.t %d1, %d0, 24, %d14, 31

# CHECK-INST: andn.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x78,0x10]
andn.t %d1, %d0, 24, %d15, 0

# CHECK-INST: andn.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xf8,0x13]
andn.t %d1, %d0, 24, %d15, 7

# CHECK-INST: andn.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x78,0x1c]
andn.t %d1, %d0, 24, %d15, 24

# CHECK-INST: andn.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xf8,0x1f]
andn.t %d1, %d0, 24, %d15, 31

# CHECK-INST: andn.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0x87,0x00,0x7f,0x10]
andn.t %d1, %d0, 31, %d0, 0

# CHECK-INST: andn.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0x87,0x00,0xff,0x13]
andn.t %d1, %d0, 31, %d0, 7

# CHECK-INST: andn.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0x87,0x00,0x7f,0x1c]
andn.t %d1, %d0, 31, %d0, 24

# CHECK-INST: andn.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0x87,0x00,0xff,0x1f]
andn.t %d1, %d0, 31, %d0, 31

# CHECK-INST: andn.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0x87,0x10,0x7f,0x10]
andn.t %d1, %d0, 31, %d1, 0

# CHECK-INST: andn.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0x87,0x10,0xff,0x13]
andn.t %d1, %d0, 31, %d1, 7

# CHECK-INST: andn.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0x87,0x10,0x7f,0x1c]
andn.t %d1, %d0, 31, %d1, 24

# CHECK-INST: andn.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0x87,0x10,0xff,0x1f]
andn.t %d1, %d0, 31, %d1, 31

# CHECK-INST: andn.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x7f,0x10]
andn.t %d1, %d0, 31, %d14, 0

# CHECK-INST: andn.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xff,0x13]
andn.t %d1, %d0, 31, %d14, 7

# CHECK-INST: andn.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x7f,0x1c]
andn.t %d1, %d0, 31, %d14, 24

# CHECK-INST: andn.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xff,0x1f]
andn.t %d1, %d0, 31, %d14, 31

# CHECK-INST: andn.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x7f,0x10]
andn.t %d1, %d0, 31, %d15, 0

# CHECK-INST: andn.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xff,0x13]
andn.t %d1, %d0, 31, %d15, 7

# CHECK-INST: andn.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x7f,0x1c]
andn.t %d1, %d0, 31, %d15, 24

# CHECK-INST: andn.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xff,0x1f]
andn.t %d1, %d0, 31, %d15, 31

# CHECK-INST: andn.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0x87,0x01,0x60,0x10]
andn.t %d1, %d1, 0, %d0, 0

# CHECK-INST: andn.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0x87,0x01,0xe0,0x13]
andn.t %d1, %d1, 0, %d0, 7

# CHECK-INST: andn.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0x87,0x01,0x60,0x1c]
andn.t %d1, %d1, 0, %d0, 24

# CHECK-INST: andn.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0x87,0x01,0xe0,0x1f]
andn.t %d1, %d1, 0, %d0, 31

# CHECK-INST: andn.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0x87,0x11,0x60,0x10]
andn.t %d1, %d1, 0, %d1, 0

# CHECK-INST: andn.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0x87,0x11,0xe0,0x13]
andn.t %d1, %d1, 0, %d1, 7

# CHECK-INST: andn.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0x87,0x11,0x60,0x1c]
andn.t %d1, %d1, 0, %d1, 24

# CHECK-INST: andn.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0x87,0x11,0xe0,0x1f]
andn.t %d1, %d1, 0, %d1, 31

# CHECK-INST: andn.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x60,0x10]
andn.t %d1, %d1, 0, %d14, 0

# CHECK-INST: andn.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xe0,0x13]
andn.t %d1, %d1, 0, %d14, 7

# CHECK-INST: andn.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x60,0x1c]
andn.t %d1, %d1, 0, %d14, 24

# CHECK-INST: andn.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xe0,0x1f]
andn.t %d1, %d1, 0, %d14, 31

# CHECK-INST: andn.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x60,0x10]
andn.t %d1, %d1, 0, %d15, 0

# CHECK-INST: andn.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xe0,0x13]
andn.t %d1, %d1, 0, %d15, 7

# CHECK-INST: andn.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x60,0x1c]
andn.t %d1, %d1, 0, %d15, 24

# CHECK-INST: andn.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xe0,0x1f]
andn.t %d1, %d1, 0, %d15, 31

# CHECK-INST: andn.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0x87,0x01,0x67,0x10]
andn.t %d1, %d1, 7, %d0, 0

# CHECK-INST: andn.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0x87,0x01,0xe7,0x13]
andn.t %d1, %d1, 7, %d0, 7

# CHECK-INST: andn.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0x87,0x01,0x67,0x1c]
andn.t %d1, %d1, 7, %d0, 24

# CHECK-INST: andn.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0x87,0x01,0xe7,0x1f]
andn.t %d1, %d1, 7, %d0, 31

# CHECK-INST: andn.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0x87,0x11,0x67,0x10]
andn.t %d1, %d1, 7, %d1, 0

# CHECK-INST: andn.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0x87,0x11,0xe7,0x13]
andn.t %d1, %d1, 7, %d1, 7

# CHECK-INST: andn.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0x87,0x11,0x67,0x1c]
andn.t %d1, %d1, 7, %d1, 24

# CHECK-INST: andn.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0x87,0x11,0xe7,0x1f]
andn.t %d1, %d1, 7, %d1, 31

# CHECK-INST: andn.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x67,0x10]
andn.t %d1, %d1, 7, %d14, 0

# CHECK-INST: andn.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xe7,0x13]
andn.t %d1, %d1, 7, %d14, 7

# CHECK-INST: andn.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x67,0x1c]
andn.t %d1, %d1, 7, %d14, 24

# CHECK-INST: andn.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xe7,0x1f]
andn.t %d1, %d1, 7, %d14, 31

# CHECK-INST: andn.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x67,0x10]
andn.t %d1, %d1, 7, %d15, 0

# CHECK-INST: andn.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xe7,0x13]
andn.t %d1, %d1, 7, %d15, 7

# CHECK-INST: andn.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x67,0x1c]
andn.t %d1, %d1, 7, %d15, 24

# CHECK-INST: andn.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xe7,0x1f]
andn.t %d1, %d1, 7, %d15, 31

# CHECK-INST: andn.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0x87,0x01,0x78,0x10]
andn.t %d1, %d1, 24, %d0, 0

# CHECK-INST: andn.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0x87,0x01,0xf8,0x13]
andn.t %d1, %d1, 24, %d0, 7

# CHECK-INST: andn.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0x87,0x01,0x78,0x1c]
andn.t %d1, %d1, 24, %d0, 24

# CHECK-INST: andn.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0x87,0x01,0xf8,0x1f]
andn.t %d1, %d1, 24, %d0, 31

# CHECK-INST: andn.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0x87,0x11,0x78,0x10]
andn.t %d1, %d1, 24, %d1, 0

# CHECK-INST: andn.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0x87,0x11,0xf8,0x13]
andn.t %d1, %d1, 24, %d1, 7

# CHECK-INST: andn.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0x87,0x11,0x78,0x1c]
andn.t %d1, %d1, 24, %d1, 24

# CHECK-INST: andn.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0x87,0x11,0xf8,0x1f]
andn.t %d1, %d1, 24, %d1, 31

# CHECK-INST: andn.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x78,0x10]
andn.t %d1, %d1, 24, %d14, 0

# CHECK-INST: andn.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xf8,0x13]
andn.t %d1, %d1, 24, %d14, 7

# CHECK-INST: andn.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x78,0x1c]
andn.t %d1, %d1, 24, %d14, 24

# CHECK-INST: andn.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xf8,0x1f]
andn.t %d1, %d1, 24, %d14, 31

# CHECK-INST: andn.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x78,0x10]
andn.t %d1, %d1, 24, %d15, 0

# CHECK-INST: andn.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xf8,0x13]
andn.t %d1, %d1, 24, %d15, 7

# CHECK-INST: andn.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x78,0x1c]
andn.t %d1, %d1, 24, %d15, 24

# CHECK-INST: andn.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xf8,0x1f]
andn.t %d1, %d1, 24, %d15, 31

# CHECK-INST: andn.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0x87,0x01,0x7f,0x10]
andn.t %d1, %d1, 31, %d0, 0

# CHECK-INST: andn.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0x87,0x01,0xff,0x13]
andn.t %d1, %d1, 31, %d0, 7

# CHECK-INST: andn.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0x87,0x01,0x7f,0x1c]
andn.t %d1, %d1, 31, %d0, 24

# CHECK-INST: andn.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0x87,0x01,0xff,0x1f]
andn.t %d1, %d1, 31, %d0, 31

# CHECK-INST: andn.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0x87,0x11,0x7f,0x10]
andn.t %d1, %d1, 31, %d1, 0

# CHECK-INST: andn.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0x87,0x11,0xff,0x13]
andn.t %d1, %d1, 31, %d1, 7

# CHECK-INST: andn.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0x87,0x11,0x7f,0x1c]
andn.t %d1, %d1, 31, %d1, 24

# CHECK-INST: andn.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0x87,0x11,0xff,0x1f]
andn.t %d1, %d1, 31, %d1, 31

# CHECK-INST: andn.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x7f,0x10]
andn.t %d1, %d1, 31, %d14, 0

# CHECK-INST: andn.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xff,0x13]
andn.t %d1, %d1, 31, %d14, 7

# CHECK-INST: andn.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x7f,0x1c]
andn.t %d1, %d1, 31, %d14, 24

# CHECK-INST: andn.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xff,0x1f]
andn.t %d1, %d1, 31, %d14, 31

# CHECK-INST: andn.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x7f,0x10]
andn.t %d1, %d1, 31, %d15, 0

# CHECK-INST: andn.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xff,0x13]
andn.t %d1, %d1, 31, %d15, 7

# CHECK-INST: andn.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x7f,0x1c]
andn.t %d1, %d1, 31, %d15, 24

# CHECK-INST: andn.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xff,0x1f]
andn.t %d1, %d1, 31, %d15, 31

# CHECK-INST: andn.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x60,0x10]
andn.t %d1, %d14, 0, %d0, 0

# CHECK-INST: andn.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xe0,0x13]
andn.t %d1, %d14, 0, %d0, 7

# CHECK-INST: andn.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x60,0x1c]
andn.t %d1, %d14, 0, %d0, 24

# CHECK-INST: andn.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xe0,0x1f]
andn.t %d1, %d14, 0, %d0, 31

# CHECK-INST: andn.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x60,0x10]
andn.t %d1, %d14, 0, %d1, 0

# CHECK-INST: andn.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xe0,0x13]
andn.t %d1, %d14, 0, %d1, 7

# CHECK-INST: andn.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x60,0x1c]
andn.t %d1, %d14, 0, %d1, 24

# CHECK-INST: andn.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xe0,0x1f]
andn.t %d1, %d14, 0, %d1, 31

# CHECK-INST: andn.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0x87,0xee,0x60,0x10]
andn.t %d1, %d14, 0, %d14, 0

# CHECK-INST: andn.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0x87,0xee,0xe0,0x13]
andn.t %d1, %d14, 0, %d14, 7

# CHECK-INST: andn.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0x87,0xee,0x60,0x1c]
andn.t %d1, %d14, 0, %d14, 24

# CHECK-INST: andn.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0x87,0xee,0xe0,0x1f]
andn.t %d1, %d14, 0, %d14, 31

# CHECK-INST: andn.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x60,0x10]
andn.t %d1, %d14, 0, %d15, 0

# CHECK-INST: andn.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xe0,0x13]
andn.t %d1, %d14, 0, %d15, 7

# CHECK-INST: andn.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x60,0x1c]
andn.t %d1, %d14, 0, %d15, 24

# CHECK-INST: andn.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xe0,0x1f]
andn.t %d1, %d14, 0, %d15, 31

# CHECK-INST: andn.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x67,0x10]
andn.t %d1, %d14, 7, %d0, 0

# CHECK-INST: andn.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xe7,0x13]
andn.t %d1, %d14, 7, %d0, 7

# CHECK-INST: andn.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x67,0x1c]
andn.t %d1, %d14, 7, %d0, 24

# CHECK-INST: andn.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xe7,0x1f]
andn.t %d1, %d14, 7, %d0, 31

# CHECK-INST: andn.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x67,0x10]
andn.t %d1, %d14, 7, %d1, 0

# CHECK-INST: andn.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xe7,0x13]
andn.t %d1, %d14, 7, %d1, 7

# CHECK-INST: andn.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x67,0x1c]
andn.t %d1, %d14, 7, %d1, 24

# CHECK-INST: andn.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xe7,0x1f]
andn.t %d1, %d14, 7, %d1, 31

# CHECK-INST: andn.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0x87,0xee,0x67,0x10]
andn.t %d1, %d14, 7, %d14, 0

# CHECK-INST: andn.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0x87,0xee,0xe7,0x13]
andn.t %d1, %d14, 7, %d14, 7

# CHECK-INST: andn.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0x87,0xee,0x67,0x1c]
andn.t %d1, %d14, 7, %d14, 24

# CHECK-INST: andn.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0x87,0xee,0xe7,0x1f]
andn.t %d1, %d14, 7, %d14, 31

# CHECK-INST: andn.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x67,0x10]
andn.t %d1, %d14, 7, %d15, 0

# CHECK-INST: andn.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xe7,0x13]
andn.t %d1, %d14, 7, %d15, 7

# CHECK-INST: andn.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x67,0x1c]
andn.t %d1, %d14, 7, %d15, 24

# CHECK-INST: andn.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xe7,0x1f]
andn.t %d1, %d14, 7, %d15, 31

# CHECK-INST: andn.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x78,0x10]
andn.t %d1, %d14, 24, %d0, 0

# CHECK-INST: andn.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xf8,0x13]
andn.t %d1, %d14, 24, %d0, 7

# CHECK-INST: andn.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x78,0x1c]
andn.t %d1, %d14, 24, %d0, 24

# CHECK-INST: andn.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xf8,0x1f]
andn.t %d1, %d14, 24, %d0, 31

# CHECK-INST: andn.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x78,0x10]
andn.t %d1, %d14, 24, %d1, 0

# CHECK-INST: andn.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xf8,0x13]
andn.t %d1, %d14, 24, %d1, 7

# CHECK-INST: andn.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x78,0x1c]
andn.t %d1, %d14, 24, %d1, 24

# CHECK-INST: andn.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xf8,0x1f]
andn.t %d1, %d14, 24, %d1, 31

# CHECK-INST: andn.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0x87,0xee,0x78,0x10]
andn.t %d1, %d14, 24, %d14, 0

# CHECK-INST: andn.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0x87,0xee,0xf8,0x13]
andn.t %d1, %d14, 24, %d14, 7

# CHECK-INST: andn.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0x87,0xee,0x78,0x1c]
andn.t %d1, %d14, 24, %d14, 24

# CHECK-INST: andn.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0x87,0xee,0xf8,0x1f]
andn.t %d1, %d14, 24, %d14, 31

# CHECK-INST: andn.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x78,0x10]
andn.t %d1, %d14, 24, %d15, 0

# CHECK-INST: andn.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xf8,0x13]
andn.t %d1, %d14, 24, %d15, 7

# CHECK-INST: andn.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x78,0x1c]
andn.t %d1, %d14, 24, %d15, 24

# CHECK-INST: andn.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xf8,0x1f]
andn.t %d1, %d14, 24, %d15, 31

# CHECK-INST: andn.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x7f,0x10]
andn.t %d1, %d14, 31, %d0, 0

# CHECK-INST: andn.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xff,0x13]
andn.t %d1, %d14, 31, %d0, 7

# CHECK-INST: andn.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x7f,0x1c]
andn.t %d1, %d14, 31, %d0, 24

# CHECK-INST: andn.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xff,0x1f]
andn.t %d1, %d14, 31, %d0, 31

# CHECK-INST: andn.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x7f,0x10]
andn.t %d1, %d14, 31, %d1, 0

# CHECK-INST: andn.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xff,0x13]
andn.t %d1, %d14, 31, %d1, 7

# CHECK-INST: andn.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x7f,0x1c]
andn.t %d1, %d14, 31, %d1, 24

# CHECK-INST: andn.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xff,0x1f]
andn.t %d1, %d14, 31, %d1, 31

# CHECK-INST: andn.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0x87,0xee,0x7f,0x10]
andn.t %d1, %d14, 31, %d14, 0

# CHECK-INST: andn.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0x87,0xee,0xff,0x13]
andn.t %d1, %d14, 31, %d14, 7

# CHECK-INST: andn.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0x87,0xee,0x7f,0x1c]
andn.t %d1, %d14, 31, %d14, 24

# CHECK-INST: andn.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0x87,0xee,0xff,0x1f]
andn.t %d1, %d14, 31, %d14, 31

# CHECK-INST: andn.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x7f,0x10]
andn.t %d1, %d14, 31, %d15, 0

# CHECK-INST: andn.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xff,0x13]
andn.t %d1, %d14, 31, %d15, 7

# CHECK-INST: andn.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x7f,0x1c]
andn.t %d1, %d14, 31, %d15, 24

# CHECK-INST: andn.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xff,0x1f]
andn.t %d1, %d14, 31, %d15, 31

# CHECK-INST: andn.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x60,0x10]
andn.t %d1, %d15, 0, %d0, 0

# CHECK-INST: andn.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xe0,0x13]
andn.t %d1, %d15, 0, %d0, 7

# CHECK-INST: andn.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x60,0x1c]
andn.t %d1, %d15, 0, %d0, 24

# CHECK-INST: andn.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xe0,0x1f]
andn.t %d1, %d15, 0, %d0, 31

# CHECK-INST: andn.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x60,0x10]
andn.t %d1, %d15, 0, %d1, 0

# CHECK-INST: andn.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xe0,0x13]
andn.t %d1, %d15, 0, %d1, 7

# CHECK-INST: andn.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x60,0x1c]
andn.t %d1, %d15, 0, %d1, 24

# CHECK-INST: andn.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xe0,0x1f]
andn.t %d1, %d15, 0, %d1, 31

# CHECK-INST: andn.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0x87,0xef,0x60,0x10]
andn.t %d1, %d15, 0, %d14, 0

# CHECK-INST: andn.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0x87,0xef,0xe0,0x13]
andn.t %d1, %d15, 0, %d14, 7

# CHECK-INST: andn.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0x87,0xef,0x60,0x1c]
andn.t %d1, %d15, 0, %d14, 24

# CHECK-INST: andn.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0x87,0xef,0xe0,0x1f]
andn.t %d1, %d15, 0, %d14, 31

# CHECK-INST: andn.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0x87,0xff,0x60,0x10]
andn.t %d1, %d15, 0, %d15, 0

# CHECK-INST: andn.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0x87,0xff,0xe0,0x13]
andn.t %d1, %d15, 0, %d15, 7

# CHECK-INST: andn.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0x87,0xff,0x60,0x1c]
andn.t %d1, %d15, 0, %d15, 24

# CHECK-INST: andn.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0x87,0xff,0xe0,0x1f]
andn.t %d1, %d15, 0, %d15, 31

# CHECK-INST: andn.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x67,0x10]
andn.t %d1, %d15, 7, %d0, 0

# CHECK-INST: andn.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xe7,0x13]
andn.t %d1, %d15, 7, %d0, 7

# CHECK-INST: andn.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x67,0x1c]
andn.t %d1, %d15, 7, %d0, 24

# CHECK-INST: andn.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xe7,0x1f]
andn.t %d1, %d15, 7, %d0, 31

# CHECK-INST: andn.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x67,0x10]
andn.t %d1, %d15, 7, %d1, 0

# CHECK-INST: andn.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xe7,0x13]
andn.t %d1, %d15, 7, %d1, 7

# CHECK-INST: andn.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x67,0x1c]
andn.t %d1, %d15, 7, %d1, 24

# CHECK-INST: andn.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xe7,0x1f]
andn.t %d1, %d15, 7, %d1, 31

# CHECK-INST: andn.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0x87,0xef,0x67,0x10]
andn.t %d1, %d15, 7, %d14, 0

# CHECK-INST: andn.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0x87,0xef,0xe7,0x13]
andn.t %d1, %d15, 7, %d14, 7

# CHECK-INST: andn.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0x87,0xef,0x67,0x1c]
andn.t %d1, %d15, 7, %d14, 24

# CHECK-INST: andn.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0x87,0xef,0xe7,0x1f]
andn.t %d1, %d15, 7, %d14, 31

# CHECK-INST: andn.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0x87,0xff,0x67,0x10]
andn.t %d1, %d15, 7, %d15, 0

# CHECK-INST: andn.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0x87,0xff,0xe7,0x13]
andn.t %d1, %d15, 7, %d15, 7

# CHECK-INST: andn.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0x87,0xff,0x67,0x1c]
andn.t %d1, %d15, 7, %d15, 24

# CHECK-INST: andn.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0x87,0xff,0xe7,0x1f]
andn.t %d1, %d15, 7, %d15, 31

# CHECK-INST: andn.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x78,0x10]
andn.t %d1, %d15, 24, %d0, 0

# CHECK-INST: andn.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xf8,0x13]
andn.t %d1, %d15, 24, %d0, 7

# CHECK-INST: andn.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x78,0x1c]
andn.t %d1, %d15, 24, %d0, 24

# CHECK-INST: andn.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xf8,0x1f]
andn.t %d1, %d15, 24, %d0, 31

# CHECK-INST: andn.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x78,0x10]
andn.t %d1, %d15, 24, %d1, 0

# CHECK-INST: andn.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xf8,0x13]
andn.t %d1, %d15, 24, %d1, 7

# CHECK-INST: andn.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x78,0x1c]
andn.t %d1, %d15, 24, %d1, 24

# CHECK-INST: andn.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xf8,0x1f]
andn.t %d1, %d15, 24, %d1, 31

# CHECK-INST: andn.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0x87,0xef,0x78,0x10]
andn.t %d1, %d15, 24, %d14, 0

# CHECK-INST: andn.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0x87,0xef,0xf8,0x13]
andn.t %d1, %d15, 24, %d14, 7

# CHECK-INST: andn.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0x87,0xef,0x78,0x1c]
andn.t %d1, %d15, 24, %d14, 24

# CHECK-INST: andn.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0x87,0xef,0xf8,0x1f]
andn.t %d1, %d15, 24, %d14, 31

# CHECK-INST: andn.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0x87,0xff,0x78,0x10]
andn.t %d1, %d15, 24, %d15, 0

# CHECK-INST: andn.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0x87,0xff,0xf8,0x13]
andn.t %d1, %d15, 24, %d15, 7

# CHECK-INST: andn.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0x87,0xff,0x78,0x1c]
andn.t %d1, %d15, 24, %d15, 24

# CHECK-INST: andn.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0x87,0xff,0xf8,0x1f]
andn.t %d1, %d15, 24, %d15, 31

# CHECK-INST: andn.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x7f,0x10]
andn.t %d1, %d15, 31, %d0, 0

# CHECK-INST: andn.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xff,0x13]
andn.t %d1, %d15, 31, %d0, 7

# CHECK-INST: andn.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x7f,0x1c]
andn.t %d1, %d15, 31, %d0, 24

# CHECK-INST: andn.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xff,0x1f]
andn.t %d1, %d15, 31, %d0, 31

# CHECK-INST: andn.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x7f,0x10]
andn.t %d1, %d15, 31, %d1, 0

# CHECK-INST: andn.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xff,0x13]
andn.t %d1, %d15, 31, %d1, 7

# CHECK-INST: andn.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x7f,0x1c]
andn.t %d1, %d15, 31, %d1, 24

# CHECK-INST: andn.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xff,0x1f]
andn.t %d1, %d15, 31, %d1, 31

# CHECK-INST: andn.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0x87,0xef,0x7f,0x10]
andn.t %d1, %d15, 31, %d14, 0

# CHECK-INST: andn.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0x87,0xef,0xff,0x13]
andn.t %d1, %d15, 31, %d14, 7

# CHECK-INST: andn.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0x87,0xef,0x7f,0x1c]
andn.t %d1, %d15, 31, %d14, 24

# CHECK-INST: andn.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0x87,0xef,0xff,0x1f]
andn.t %d1, %d15, 31, %d14, 31

# CHECK-INST: andn.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0x87,0xff,0x7f,0x10]
andn.t %d1, %d15, 31, %d15, 0

# CHECK-INST: andn.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0x87,0xff,0xff,0x13]
andn.t %d1, %d15, 31, %d15, 7

# CHECK-INST: andn.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0x87,0xff,0x7f,0x1c]
andn.t %d1, %d15, 31, %d15, 24

# CHECK-INST: andn.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0x87,0xff,0xff,0x1f]
andn.t %d1, %d15, 31, %d15, 31

# CHECK-INST: andn.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x60,0xe0]
andn.t %d14, %d0, 0, %d0, 0

# CHECK-INST: andn.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0x87,0x00,0xe0,0xe3]
andn.t %d14, %d0, 0, %d0, 7

# CHECK-INST: andn.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0x87,0x00,0x60,0xec]
andn.t %d14, %d0, 0, %d0, 24

# CHECK-INST: andn.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0x87,0x00,0xe0,0xef]
andn.t %d14, %d0, 0, %d0, 31

# CHECK-INST: andn.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0x87,0x10,0x60,0xe0]
andn.t %d14, %d0, 0, %d1, 0

# CHECK-INST: andn.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0x87,0x10,0xe0,0xe3]
andn.t %d14, %d0, 0, %d1, 7

# CHECK-INST: andn.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0x87,0x10,0x60,0xec]
andn.t %d14, %d0, 0, %d1, 24

# CHECK-INST: andn.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0x87,0x10,0xe0,0xef]
andn.t %d14, %d0, 0, %d1, 31

# CHECK-INST: andn.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x60,0xe0]
andn.t %d14, %d0, 0, %d14, 0

# CHECK-INST: andn.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xe0,0xe3]
andn.t %d14, %d0, 0, %d14, 7

# CHECK-INST: andn.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x60,0xec]
andn.t %d14, %d0, 0, %d14, 24

# CHECK-INST: andn.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xe0,0xef]
andn.t %d14, %d0, 0, %d14, 31

# CHECK-INST: andn.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x60,0xe0]
andn.t %d14, %d0, 0, %d15, 0

# CHECK-INST: andn.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xe0,0xe3]
andn.t %d14, %d0, 0, %d15, 7

# CHECK-INST: andn.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x60,0xec]
andn.t %d14, %d0, 0, %d15, 24

# CHECK-INST: andn.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xe0,0xef]
andn.t %d14, %d0, 0, %d15, 31

# CHECK-INST: andn.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0x87,0x00,0x67,0xe0]
andn.t %d14, %d0, 7, %d0, 0

# CHECK-INST: andn.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0x87,0x00,0xe7,0xe3]
andn.t %d14, %d0, 7, %d0, 7

# CHECK-INST: andn.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0x87,0x00,0x67,0xec]
andn.t %d14, %d0, 7, %d0, 24

# CHECK-INST: andn.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0x87,0x00,0xe7,0xef]
andn.t %d14, %d0, 7, %d0, 31

# CHECK-INST: andn.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0x87,0x10,0x67,0xe0]
andn.t %d14, %d0, 7, %d1, 0

# CHECK-INST: andn.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0x87,0x10,0xe7,0xe3]
andn.t %d14, %d0, 7, %d1, 7

# CHECK-INST: andn.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0x87,0x10,0x67,0xec]
andn.t %d14, %d0, 7, %d1, 24

# CHECK-INST: andn.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0x87,0x10,0xe7,0xef]
andn.t %d14, %d0, 7, %d1, 31

# CHECK-INST: andn.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x67,0xe0]
andn.t %d14, %d0, 7, %d14, 0

# CHECK-INST: andn.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xe7,0xe3]
andn.t %d14, %d0, 7, %d14, 7

# CHECK-INST: andn.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x67,0xec]
andn.t %d14, %d0, 7, %d14, 24

# CHECK-INST: andn.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xe7,0xef]
andn.t %d14, %d0, 7, %d14, 31

# CHECK-INST: andn.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x67,0xe0]
andn.t %d14, %d0, 7, %d15, 0

# CHECK-INST: andn.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xe7,0xe3]
andn.t %d14, %d0, 7, %d15, 7

# CHECK-INST: andn.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x67,0xec]
andn.t %d14, %d0, 7, %d15, 24

# CHECK-INST: andn.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xe7,0xef]
andn.t %d14, %d0, 7, %d15, 31

# CHECK-INST: andn.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0x87,0x00,0x78,0xe0]
andn.t %d14, %d0, 24, %d0, 0

# CHECK-INST: andn.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0x87,0x00,0xf8,0xe3]
andn.t %d14, %d0, 24, %d0, 7

# CHECK-INST: andn.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0x87,0x00,0x78,0xec]
andn.t %d14, %d0, 24, %d0, 24

# CHECK-INST: andn.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0x87,0x00,0xf8,0xef]
andn.t %d14, %d0, 24, %d0, 31

# CHECK-INST: andn.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0x87,0x10,0x78,0xe0]
andn.t %d14, %d0, 24, %d1, 0

# CHECK-INST: andn.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0x87,0x10,0xf8,0xe3]
andn.t %d14, %d0, 24, %d1, 7

# CHECK-INST: andn.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0x87,0x10,0x78,0xec]
andn.t %d14, %d0, 24, %d1, 24

# CHECK-INST: andn.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0x87,0x10,0xf8,0xef]
andn.t %d14, %d0, 24, %d1, 31

# CHECK-INST: andn.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x78,0xe0]
andn.t %d14, %d0, 24, %d14, 0

# CHECK-INST: andn.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xf8,0xe3]
andn.t %d14, %d0, 24, %d14, 7

# CHECK-INST: andn.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x78,0xec]
andn.t %d14, %d0, 24, %d14, 24

# CHECK-INST: andn.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xf8,0xef]
andn.t %d14, %d0, 24, %d14, 31

# CHECK-INST: andn.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x78,0xe0]
andn.t %d14, %d0, 24, %d15, 0

# CHECK-INST: andn.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xf8,0xe3]
andn.t %d14, %d0, 24, %d15, 7

# CHECK-INST: andn.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x78,0xec]
andn.t %d14, %d0, 24, %d15, 24

# CHECK-INST: andn.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xf8,0xef]
andn.t %d14, %d0, 24, %d15, 31

# CHECK-INST: andn.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0x87,0x00,0x7f,0xe0]
andn.t %d14, %d0, 31, %d0, 0

# CHECK-INST: andn.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0x87,0x00,0xff,0xe3]
andn.t %d14, %d0, 31, %d0, 7

# CHECK-INST: andn.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0x87,0x00,0x7f,0xec]
andn.t %d14, %d0, 31, %d0, 24

# CHECK-INST: andn.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0x87,0x00,0xff,0xef]
andn.t %d14, %d0, 31, %d0, 31

# CHECK-INST: andn.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0x87,0x10,0x7f,0xe0]
andn.t %d14, %d0, 31, %d1, 0

# CHECK-INST: andn.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0x87,0x10,0xff,0xe3]
andn.t %d14, %d0, 31, %d1, 7

# CHECK-INST: andn.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0x87,0x10,0x7f,0xec]
andn.t %d14, %d0, 31, %d1, 24

# CHECK-INST: andn.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0x87,0x10,0xff,0xef]
andn.t %d14, %d0, 31, %d1, 31

# CHECK-INST: andn.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x7f,0xe0]
andn.t %d14, %d0, 31, %d14, 0

# CHECK-INST: andn.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xff,0xe3]
andn.t %d14, %d0, 31, %d14, 7

# CHECK-INST: andn.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x7f,0xec]
andn.t %d14, %d0, 31, %d14, 24

# CHECK-INST: andn.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xff,0xef]
andn.t %d14, %d0, 31, %d14, 31

# CHECK-INST: andn.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x7f,0xe0]
andn.t %d14, %d0, 31, %d15, 0

# CHECK-INST: andn.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xff,0xe3]
andn.t %d14, %d0, 31, %d15, 7

# CHECK-INST: andn.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x7f,0xec]
andn.t %d14, %d0, 31, %d15, 24

# CHECK-INST: andn.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xff,0xef]
andn.t %d14, %d0, 31, %d15, 31

# CHECK-INST: andn.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0x87,0x01,0x60,0xe0]
andn.t %d14, %d1, 0, %d0, 0

# CHECK-INST: andn.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0x87,0x01,0xe0,0xe3]
andn.t %d14, %d1, 0, %d0, 7

# CHECK-INST: andn.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0x87,0x01,0x60,0xec]
andn.t %d14, %d1, 0, %d0, 24

# CHECK-INST: andn.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0x87,0x01,0xe0,0xef]
andn.t %d14, %d1, 0, %d0, 31

# CHECK-INST: andn.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0x87,0x11,0x60,0xe0]
andn.t %d14, %d1, 0, %d1, 0

# CHECK-INST: andn.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0x87,0x11,0xe0,0xe3]
andn.t %d14, %d1, 0, %d1, 7

# CHECK-INST: andn.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0x87,0x11,0x60,0xec]
andn.t %d14, %d1, 0, %d1, 24

# CHECK-INST: andn.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0x87,0x11,0xe0,0xef]
andn.t %d14, %d1, 0, %d1, 31

# CHECK-INST: andn.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x60,0xe0]
andn.t %d14, %d1, 0, %d14, 0

# CHECK-INST: andn.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xe0,0xe3]
andn.t %d14, %d1, 0, %d14, 7

# CHECK-INST: andn.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x60,0xec]
andn.t %d14, %d1, 0, %d14, 24

# CHECK-INST: andn.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xe0,0xef]
andn.t %d14, %d1, 0, %d14, 31

# CHECK-INST: andn.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x60,0xe0]
andn.t %d14, %d1, 0, %d15, 0

# CHECK-INST: andn.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xe0,0xe3]
andn.t %d14, %d1, 0, %d15, 7

# CHECK-INST: andn.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x60,0xec]
andn.t %d14, %d1, 0, %d15, 24

# CHECK-INST: andn.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xe0,0xef]
andn.t %d14, %d1, 0, %d15, 31

# CHECK-INST: andn.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0x87,0x01,0x67,0xe0]
andn.t %d14, %d1, 7, %d0, 0

# CHECK-INST: andn.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0x87,0x01,0xe7,0xe3]
andn.t %d14, %d1, 7, %d0, 7

# CHECK-INST: andn.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0x87,0x01,0x67,0xec]
andn.t %d14, %d1, 7, %d0, 24

# CHECK-INST: andn.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0x87,0x01,0xe7,0xef]
andn.t %d14, %d1, 7, %d0, 31

# CHECK-INST: andn.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0x87,0x11,0x67,0xe0]
andn.t %d14, %d1, 7, %d1, 0

# CHECK-INST: andn.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0x87,0x11,0xe7,0xe3]
andn.t %d14, %d1, 7, %d1, 7

# CHECK-INST: andn.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0x87,0x11,0x67,0xec]
andn.t %d14, %d1, 7, %d1, 24

# CHECK-INST: andn.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0x87,0x11,0xe7,0xef]
andn.t %d14, %d1, 7, %d1, 31

# CHECK-INST: andn.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x67,0xe0]
andn.t %d14, %d1, 7, %d14, 0

# CHECK-INST: andn.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xe7,0xe3]
andn.t %d14, %d1, 7, %d14, 7

# CHECK-INST: andn.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x67,0xec]
andn.t %d14, %d1, 7, %d14, 24

# CHECK-INST: andn.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xe7,0xef]
andn.t %d14, %d1, 7, %d14, 31

# CHECK-INST: andn.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x67,0xe0]
andn.t %d14, %d1, 7, %d15, 0

# CHECK-INST: andn.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xe7,0xe3]
andn.t %d14, %d1, 7, %d15, 7

# CHECK-INST: andn.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x67,0xec]
andn.t %d14, %d1, 7, %d15, 24

# CHECK-INST: andn.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xe7,0xef]
andn.t %d14, %d1, 7, %d15, 31

# CHECK-INST: andn.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0x87,0x01,0x78,0xe0]
andn.t %d14, %d1, 24, %d0, 0

# CHECK-INST: andn.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0x87,0x01,0xf8,0xe3]
andn.t %d14, %d1, 24, %d0, 7

# CHECK-INST: andn.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0x87,0x01,0x78,0xec]
andn.t %d14, %d1, 24, %d0, 24

# CHECK-INST: andn.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0x87,0x01,0xf8,0xef]
andn.t %d14, %d1, 24, %d0, 31

# CHECK-INST: andn.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0x87,0x11,0x78,0xe0]
andn.t %d14, %d1, 24, %d1, 0

# CHECK-INST: andn.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0x87,0x11,0xf8,0xe3]
andn.t %d14, %d1, 24, %d1, 7

# CHECK-INST: andn.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0x87,0x11,0x78,0xec]
andn.t %d14, %d1, 24, %d1, 24

# CHECK-INST: andn.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0x87,0x11,0xf8,0xef]
andn.t %d14, %d1, 24, %d1, 31

# CHECK-INST: andn.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x78,0xe0]
andn.t %d14, %d1, 24, %d14, 0

# CHECK-INST: andn.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xf8,0xe3]
andn.t %d14, %d1, 24, %d14, 7

# CHECK-INST: andn.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x78,0xec]
andn.t %d14, %d1, 24, %d14, 24

# CHECK-INST: andn.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xf8,0xef]
andn.t %d14, %d1, 24, %d14, 31

# CHECK-INST: andn.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x78,0xe0]
andn.t %d14, %d1, 24, %d15, 0

# CHECK-INST: andn.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xf8,0xe3]
andn.t %d14, %d1, 24, %d15, 7

# CHECK-INST: andn.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x78,0xec]
andn.t %d14, %d1, 24, %d15, 24

# CHECK-INST: andn.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xf8,0xef]
andn.t %d14, %d1, 24, %d15, 31

# CHECK-INST: andn.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0x87,0x01,0x7f,0xe0]
andn.t %d14, %d1, 31, %d0, 0

# CHECK-INST: andn.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0x87,0x01,0xff,0xe3]
andn.t %d14, %d1, 31, %d0, 7

# CHECK-INST: andn.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0x87,0x01,0x7f,0xec]
andn.t %d14, %d1, 31, %d0, 24

# CHECK-INST: andn.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0x87,0x01,0xff,0xef]
andn.t %d14, %d1, 31, %d0, 31

# CHECK-INST: andn.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0x87,0x11,0x7f,0xe0]
andn.t %d14, %d1, 31, %d1, 0

# CHECK-INST: andn.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0x87,0x11,0xff,0xe3]
andn.t %d14, %d1, 31, %d1, 7

# CHECK-INST: andn.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0x87,0x11,0x7f,0xec]
andn.t %d14, %d1, 31, %d1, 24

# CHECK-INST: andn.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0x87,0x11,0xff,0xef]
andn.t %d14, %d1, 31, %d1, 31

# CHECK-INST: andn.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x7f,0xe0]
andn.t %d14, %d1, 31, %d14, 0

# CHECK-INST: andn.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xff,0xe3]
andn.t %d14, %d1, 31, %d14, 7

# CHECK-INST: andn.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x7f,0xec]
andn.t %d14, %d1, 31, %d14, 24

# CHECK-INST: andn.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xff,0xef]
andn.t %d14, %d1, 31, %d14, 31

# CHECK-INST: andn.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x7f,0xe0]
andn.t %d14, %d1, 31, %d15, 0

# CHECK-INST: andn.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xff,0xe3]
andn.t %d14, %d1, 31, %d15, 7

# CHECK-INST: andn.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x7f,0xec]
andn.t %d14, %d1, 31, %d15, 24

# CHECK-INST: andn.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xff,0xef]
andn.t %d14, %d1, 31, %d15, 31

# CHECK-INST: andn.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x60,0xe0]
andn.t %d14, %d14, 0, %d0, 0

# CHECK-INST: andn.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xe0,0xe3]
andn.t %d14, %d14, 0, %d0, 7

# CHECK-INST: andn.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x60,0xec]
andn.t %d14, %d14, 0, %d0, 24

# CHECK-INST: andn.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xe0,0xef]
andn.t %d14, %d14, 0, %d0, 31

# CHECK-INST: andn.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x60,0xe0]
andn.t %d14, %d14, 0, %d1, 0

# CHECK-INST: andn.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xe0,0xe3]
andn.t %d14, %d14, 0, %d1, 7

# CHECK-INST: andn.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x60,0xec]
andn.t %d14, %d14, 0, %d1, 24

# CHECK-INST: andn.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xe0,0xef]
andn.t %d14, %d14, 0, %d1, 31

# CHECK-INST: andn.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0x87,0xee,0x60,0xe0]
andn.t %d14, %d14, 0, %d14, 0

# CHECK-INST: andn.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0x87,0xee,0xe0,0xe3]
andn.t %d14, %d14, 0, %d14, 7

# CHECK-INST: andn.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0x87,0xee,0x60,0xec]
andn.t %d14, %d14, 0, %d14, 24

# CHECK-INST: andn.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0x87,0xee,0xe0,0xef]
andn.t %d14, %d14, 0, %d14, 31

# CHECK-INST: andn.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x60,0xe0]
andn.t %d14, %d14, 0, %d15, 0

# CHECK-INST: andn.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xe0,0xe3]
andn.t %d14, %d14, 0, %d15, 7

# CHECK-INST: andn.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x60,0xec]
andn.t %d14, %d14, 0, %d15, 24

# CHECK-INST: andn.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xe0,0xef]
andn.t %d14, %d14, 0, %d15, 31

# CHECK-INST: andn.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x67,0xe0]
andn.t %d14, %d14, 7, %d0, 0

# CHECK-INST: andn.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xe7,0xe3]
andn.t %d14, %d14, 7, %d0, 7

# CHECK-INST: andn.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x67,0xec]
andn.t %d14, %d14, 7, %d0, 24

# CHECK-INST: andn.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xe7,0xef]
andn.t %d14, %d14, 7, %d0, 31

# CHECK-INST: andn.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x67,0xe0]
andn.t %d14, %d14, 7, %d1, 0

# CHECK-INST: andn.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xe7,0xe3]
andn.t %d14, %d14, 7, %d1, 7

# CHECK-INST: andn.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x67,0xec]
andn.t %d14, %d14, 7, %d1, 24

# CHECK-INST: andn.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xe7,0xef]
andn.t %d14, %d14, 7, %d1, 31

# CHECK-INST: andn.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0x87,0xee,0x67,0xe0]
andn.t %d14, %d14, 7, %d14, 0

# CHECK-INST: andn.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0x87,0xee,0xe7,0xe3]
andn.t %d14, %d14, 7, %d14, 7

# CHECK-INST: andn.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0x87,0xee,0x67,0xec]
andn.t %d14, %d14, 7, %d14, 24

# CHECK-INST: andn.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0x87,0xee,0xe7,0xef]
andn.t %d14, %d14, 7, %d14, 31

# CHECK-INST: andn.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x67,0xe0]
andn.t %d14, %d14, 7, %d15, 0

# CHECK-INST: andn.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xe7,0xe3]
andn.t %d14, %d14, 7, %d15, 7

# CHECK-INST: andn.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x67,0xec]
andn.t %d14, %d14, 7, %d15, 24

# CHECK-INST: andn.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xe7,0xef]
andn.t %d14, %d14, 7, %d15, 31

# CHECK-INST: andn.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x78,0xe0]
andn.t %d14, %d14, 24, %d0, 0

# CHECK-INST: andn.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xf8,0xe3]
andn.t %d14, %d14, 24, %d0, 7

# CHECK-INST: andn.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x78,0xec]
andn.t %d14, %d14, 24, %d0, 24

# CHECK-INST: andn.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xf8,0xef]
andn.t %d14, %d14, 24, %d0, 31

# CHECK-INST: andn.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x78,0xe0]
andn.t %d14, %d14, 24, %d1, 0

# CHECK-INST: andn.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xf8,0xe3]
andn.t %d14, %d14, 24, %d1, 7

# CHECK-INST: andn.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x78,0xec]
andn.t %d14, %d14, 24, %d1, 24

# CHECK-INST: andn.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xf8,0xef]
andn.t %d14, %d14, 24, %d1, 31

# CHECK-INST: andn.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0x87,0xee,0x78,0xe0]
andn.t %d14, %d14, 24, %d14, 0

# CHECK-INST: andn.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0x87,0xee,0xf8,0xe3]
andn.t %d14, %d14, 24, %d14, 7

# CHECK-INST: andn.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0x87,0xee,0x78,0xec]
andn.t %d14, %d14, 24, %d14, 24

# CHECK-INST: andn.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0x87,0xee,0xf8,0xef]
andn.t %d14, %d14, 24, %d14, 31

# CHECK-INST: andn.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x78,0xe0]
andn.t %d14, %d14, 24, %d15, 0

# CHECK-INST: andn.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xf8,0xe3]
andn.t %d14, %d14, 24, %d15, 7

# CHECK-INST: andn.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x78,0xec]
andn.t %d14, %d14, 24, %d15, 24

# CHECK-INST: andn.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xf8,0xef]
andn.t %d14, %d14, 24, %d15, 31

# CHECK-INST: andn.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x7f,0xe0]
andn.t %d14, %d14, 31, %d0, 0

# CHECK-INST: andn.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xff,0xe3]
andn.t %d14, %d14, 31, %d0, 7

# CHECK-INST: andn.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x7f,0xec]
andn.t %d14, %d14, 31, %d0, 24

# CHECK-INST: andn.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xff,0xef]
andn.t %d14, %d14, 31, %d0, 31

# CHECK-INST: andn.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x7f,0xe0]
andn.t %d14, %d14, 31, %d1, 0

# CHECK-INST: andn.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xff,0xe3]
andn.t %d14, %d14, 31, %d1, 7

# CHECK-INST: andn.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x7f,0xec]
andn.t %d14, %d14, 31, %d1, 24

# CHECK-INST: andn.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xff,0xef]
andn.t %d14, %d14, 31, %d1, 31

# CHECK-INST: andn.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0x87,0xee,0x7f,0xe0]
andn.t %d14, %d14, 31, %d14, 0

# CHECK-INST: andn.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0x87,0xee,0xff,0xe3]
andn.t %d14, %d14, 31, %d14, 7

# CHECK-INST: andn.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0x87,0xee,0x7f,0xec]
andn.t %d14, %d14, 31, %d14, 24

# CHECK-INST: andn.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0x87,0xee,0xff,0xef]
andn.t %d14, %d14, 31, %d14, 31

# CHECK-INST: andn.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x7f,0xe0]
andn.t %d14, %d14, 31, %d15, 0

# CHECK-INST: andn.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xff,0xe3]
andn.t %d14, %d14, 31, %d15, 7

# CHECK-INST: andn.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x7f,0xec]
andn.t %d14, %d14, 31, %d15, 24

# CHECK-INST: andn.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xff,0xef]
andn.t %d14, %d14, 31, %d15, 31

# CHECK-INST: andn.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x60,0xe0]
andn.t %d14, %d15, 0, %d0, 0

# CHECK-INST: andn.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xe0,0xe3]
andn.t %d14, %d15, 0, %d0, 7

# CHECK-INST: andn.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x60,0xec]
andn.t %d14, %d15, 0, %d0, 24

# CHECK-INST: andn.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xe0,0xef]
andn.t %d14, %d15, 0, %d0, 31

# CHECK-INST: andn.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x60,0xe0]
andn.t %d14, %d15, 0, %d1, 0

# CHECK-INST: andn.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xe0,0xe3]
andn.t %d14, %d15, 0, %d1, 7

# CHECK-INST: andn.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x60,0xec]
andn.t %d14, %d15, 0, %d1, 24

# CHECK-INST: andn.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xe0,0xef]
andn.t %d14, %d15, 0, %d1, 31

# CHECK-INST: andn.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0x87,0xef,0x60,0xe0]
andn.t %d14, %d15, 0, %d14, 0

# CHECK-INST: andn.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0x87,0xef,0xe0,0xe3]
andn.t %d14, %d15, 0, %d14, 7

# CHECK-INST: andn.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0x87,0xef,0x60,0xec]
andn.t %d14, %d15, 0, %d14, 24

# CHECK-INST: andn.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0x87,0xef,0xe0,0xef]
andn.t %d14, %d15, 0, %d14, 31

# CHECK-INST: andn.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0x87,0xff,0x60,0xe0]
andn.t %d14, %d15, 0, %d15, 0

# CHECK-INST: andn.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0x87,0xff,0xe0,0xe3]
andn.t %d14, %d15, 0, %d15, 7

# CHECK-INST: andn.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0x87,0xff,0x60,0xec]
andn.t %d14, %d15, 0, %d15, 24

# CHECK-INST: andn.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0x87,0xff,0xe0,0xef]
andn.t %d14, %d15, 0, %d15, 31

# CHECK-INST: andn.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x67,0xe0]
andn.t %d14, %d15, 7, %d0, 0

# CHECK-INST: andn.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xe7,0xe3]
andn.t %d14, %d15, 7, %d0, 7

# CHECK-INST: andn.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x67,0xec]
andn.t %d14, %d15, 7, %d0, 24

# CHECK-INST: andn.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xe7,0xef]
andn.t %d14, %d15, 7, %d0, 31

# CHECK-INST: andn.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x67,0xe0]
andn.t %d14, %d15, 7, %d1, 0

# CHECK-INST: andn.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xe7,0xe3]
andn.t %d14, %d15, 7, %d1, 7

# CHECK-INST: andn.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x67,0xec]
andn.t %d14, %d15, 7, %d1, 24

# CHECK-INST: andn.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xe7,0xef]
andn.t %d14, %d15, 7, %d1, 31

# CHECK-INST: andn.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0x87,0xef,0x67,0xe0]
andn.t %d14, %d15, 7, %d14, 0

# CHECK-INST: andn.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0x87,0xef,0xe7,0xe3]
andn.t %d14, %d15, 7, %d14, 7

# CHECK-INST: andn.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0x87,0xef,0x67,0xec]
andn.t %d14, %d15, 7, %d14, 24

# CHECK-INST: andn.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0x87,0xef,0xe7,0xef]
andn.t %d14, %d15, 7, %d14, 31

# CHECK-INST: andn.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0x87,0xff,0x67,0xe0]
andn.t %d14, %d15, 7, %d15, 0

# CHECK-INST: andn.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0x87,0xff,0xe7,0xe3]
andn.t %d14, %d15, 7, %d15, 7

# CHECK-INST: andn.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0x87,0xff,0x67,0xec]
andn.t %d14, %d15, 7, %d15, 24

# CHECK-INST: andn.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0x87,0xff,0xe7,0xef]
andn.t %d14, %d15, 7, %d15, 31

# CHECK-INST: andn.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x78,0xe0]
andn.t %d14, %d15, 24, %d0, 0

# CHECK-INST: andn.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xf8,0xe3]
andn.t %d14, %d15, 24, %d0, 7

# CHECK-INST: andn.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x78,0xec]
andn.t %d14, %d15, 24, %d0, 24

# CHECK-INST: andn.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xf8,0xef]
andn.t %d14, %d15, 24, %d0, 31

# CHECK-INST: andn.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x78,0xe0]
andn.t %d14, %d15, 24, %d1, 0

# CHECK-INST: andn.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xf8,0xe3]
andn.t %d14, %d15, 24, %d1, 7

# CHECK-INST: andn.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x78,0xec]
andn.t %d14, %d15, 24, %d1, 24

# CHECK-INST: andn.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xf8,0xef]
andn.t %d14, %d15, 24, %d1, 31

# CHECK-INST: andn.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0x87,0xef,0x78,0xe0]
andn.t %d14, %d15, 24, %d14, 0

# CHECK-INST: andn.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0x87,0xef,0xf8,0xe3]
andn.t %d14, %d15, 24, %d14, 7

# CHECK-INST: andn.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0x87,0xef,0x78,0xec]
andn.t %d14, %d15, 24, %d14, 24

# CHECK-INST: andn.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0x87,0xef,0xf8,0xef]
andn.t %d14, %d15, 24, %d14, 31

# CHECK-INST: andn.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0x87,0xff,0x78,0xe0]
andn.t %d14, %d15, 24, %d15, 0

# CHECK-INST: andn.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0x87,0xff,0xf8,0xe3]
andn.t %d14, %d15, 24, %d15, 7

# CHECK-INST: andn.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0x87,0xff,0x78,0xec]
andn.t %d14, %d15, 24, %d15, 24

# CHECK-INST: andn.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0x87,0xff,0xf8,0xef]
andn.t %d14, %d15, 24, %d15, 31

# CHECK-INST: andn.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x7f,0xe0]
andn.t %d14, %d15, 31, %d0, 0

# CHECK-INST: andn.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xff,0xe3]
andn.t %d14, %d15, 31, %d0, 7

# CHECK-INST: andn.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x7f,0xec]
andn.t %d14, %d15, 31, %d0, 24

# CHECK-INST: andn.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xff,0xef]
andn.t %d14, %d15, 31, %d0, 31

# CHECK-INST: andn.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x7f,0xe0]
andn.t %d14, %d15, 31, %d1, 0

# CHECK-INST: andn.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xff,0xe3]
andn.t %d14, %d15, 31, %d1, 7

# CHECK-INST: andn.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x7f,0xec]
andn.t %d14, %d15, 31, %d1, 24

# CHECK-INST: andn.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xff,0xef]
andn.t %d14, %d15, 31, %d1, 31

# CHECK-INST: andn.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0x87,0xef,0x7f,0xe0]
andn.t %d14, %d15, 31, %d14, 0

# CHECK-INST: andn.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0x87,0xef,0xff,0xe3]
andn.t %d14, %d15, 31, %d14, 7

# CHECK-INST: andn.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0x87,0xef,0x7f,0xec]
andn.t %d14, %d15, 31, %d14, 24

# CHECK-INST: andn.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0x87,0xef,0xff,0xef]
andn.t %d14, %d15, 31, %d14, 31

# CHECK-INST: andn.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0x87,0xff,0x7f,0xe0]
andn.t %d14, %d15, 31, %d15, 0

# CHECK-INST: andn.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0x87,0xff,0xff,0xe3]
andn.t %d14, %d15, 31, %d15, 7

# CHECK-INST: andn.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0x87,0xff,0x7f,0xec]
andn.t %d14, %d15, 31, %d15, 24

# CHECK-INST: andn.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0x87,0xff,0xff,0xef]
andn.t %d14, %d15, 31, %d15, 31

# CHECK-INST: andn.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x60,0xf0]
andn.t %d15, %d0, 0, %d0, 0

# CHECK-INST: andn.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0x87,0x00,0xe0,0xf3]
andn.t %d15, %d0, 0, %d0, 7

# CHECK-INST: andn.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0x87,0x00,0x60,0xfc]
andn.t %d15, %d0, 0, %d0, 24

# CHECK-INST: andn.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0x87,0x00,0xe0,0xff]
andn.t %d15, %d0, 0, %d0, 31

# CHECK-INST: andn.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0x87,0x10,0x60,0xf0]
andn.t %d15, %d0, 0, %d1, 0

# CHECK-INST: andn.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0x87,0x10,0xe0,0xf3]
andn.t %d15, %d0, 0, %d1, 7

# CHECK-INST: andn.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0x87,0x10,0x60,0xfc]
andn.t %d15, %d0, 0, %d1, 24

# CHECK-INST: andn.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0x87,0x10,0xe0,0xff]
andn.t %d15, %d0, 0, %d1, 31

# CHECK-INST: andn.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x60,0xf0]
andn.t %d15, %d0, 0, %d14, 0

# CHECK-INST: andn.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xe0,0xf3]
andn.t %d15, %d0, 0, %d14, 7

# CHECK-INST: andn.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x60,0xfc]
andn.t %d15, %d0, 0, %d14, 24

# CHECK-INST: andn.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xe0,0xff]
andn.t %d15, %d0, 0, %d14, 31

# CHECK-INST: andn.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x60,0xf0]
andn.t %d15, %d0, 0, %d15, 0

# CHECK-INST: andn.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xe0,0xf3]
andn.t %d15, %d0, 0, %d15, 7

# CHECK-INST: andn.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x60,0xfc]
andn.t %d15, %d0, 0, %d15, 24

# CHECK-INST: andn.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xe0,0xff]
andn.t %d15, %d0, 0, %d15, 31

# CHECK-INST: andn.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0x87,0x00,0x67,0xf0]
andn.t %d15, %d0, 7, %d0, 0

# CHECK-INST: andn.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0x87,0x00,0xe7,0xf3]
andn.t %d15, %d0, 7, %d0, 7

# CHECK-INST: andn.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0x87,0x00,0x67,0xfc]
andn.t %d15, %d0, 7, %d0, 24

# CHECK-INST: andn.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0x87,0x00,0xe7,0xff]
andn.t %d15, %d0, 7, %d0, 31

# CHECK-INST: andn.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0x87,0x10,0x67,0xf0]
andn.t %d15, %d0, 7, %d1, 0

# CHECK-INST: andn.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0x87,0x10,0xe7,0xf3]
andn.t %d15, %d0, 7, %d1, 7

# CHECK-INST: andn.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0x87,0x10,0x67,0xfc]
andn.t %d15, %d0, 7, %d1, 24

# CHECK-INST: andn.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0x87,0x10,0xe7,0xff]
andn.t %d15, %d0, 7, %d1, 31

# CHECK-INST: andn.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x67,0xf0]
andn.t %d15, %d0, 7, %d14, 0

# CHECK-INST: andn.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xe7,0xf3]
andn.t %d15, %d0, 7, %d14, 7

# CHECK-INST: andn.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x67,0xfc]
andn.t %d15, %d0, 7, %d14, 24

# CHECK-INST: andn.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xe7,0xff]
andn.t %d15, %d0, 7, %d14, 31

# CHECK-INST: andn.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x67,0xf0]
andn.t %d15, %d0, 7, %d15, 0

# CHECK-INST: andn.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xe7,0xf3]
andn.t %d15, %d0, 7, %d15, 7

# CHECK-INST: andn.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x67,0xfc]
andn.t %d15, %d0, 7, %d15, 24

# CHECK-INST: andn.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xe7,0xff]
andn.t %d15, %d0, 7, %d15, 31

# CHECK-INST: andn.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0x87,0x00,0x78,0xf0]
andn.t %d15, %d0, 24, %d0, 0

# CHECK-INST: andn.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0x87,0x00,0xf8,0xf3]
andn.t %d15, %d0, 24, %d0, 7

# CHECK-INST: andn.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0x87,0x00,0x78,0xfc]
andn.t %d15, %d0, 24, %d0, 24

# CHECK-INST: andn.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0x87,0x00,0xf8,0xff]
andn.t %d15, %d0, 24, %d0, 31

# CHECK-INST: andn.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0x87,0x10,0x78,0xf0]
andn.t %d15, %d0, 24, %d1, 0

# CHECK-INST: andn.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0x87,0x10,0xf8,0xf3]
andn.t %d15, %d0, 24, %d1, 7

# CHECK-INST: andn.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0x87,0x10,0x78,0xfc]
andn.t %d15, %d0, 24, %d1, 24

# CHECK-INST: andn.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0x87,0x10,0xf8,0xff]
andn.t %d15, %d0, 24, %d1, 31

# CHECK-INST: andn.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x78,0xf0]
andn.t %d15, %d0, 24, %d14, 0

# CHECK-INST: andn.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xf8,0xf3]
andn.t %d15, %d0, 24, %d14, 7

# CHECK-INST: andn.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x78,0xfc]
andn.t %d15, %d0, 24, %d14, 24

# CHECK-INST: andn.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xf8,0xff]
andn.t %d15, %d0, 24, %d14, 31

# CHECK-INST: andn.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x78,0xf0]
andn.t %d15, %d0, 24, %d15, 0

# CHECK-INST: andn.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xf8,0xf3]
andn.t %d15, %d0, 24, %d15, 7

# CHECK-INST: andn.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x78,0xfc]
andn.t %d15, %d0, 24, %d15, 24

# CHECK-INST: andn.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xf8,0xff]
andn.t %d15, %d0, 24, %d15, 31

# CHECK-INST: andn.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0x87,0x00,0x7f,0xf0]
andn.t %d15, %d0, 31, %d0, 0

# CHECK-INST: andn.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0x87,0x00,0xff,0xf3]
andn.t %d15, %d0, 31, %d0, 7

# CHECK-INST: andn.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0x87,0x00,0x7f,0xfc]
andn.t %d15, %d0, 31, %d0, 24

# CHECK-INST: andn.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0x87,0x00,0xff,0xff]
andn.t %d15, %d0, 31, %d0, 31

# CHECK-INST: andn.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0x87,0x10,0x7f,0xf0]
andn.t %d15, %d0, 31, %d1, 0

# CHECK-INST: andn.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0x87,0x10,0xff,0xf3]
andn.t %d15, %d0, 31, %d1, 7

# CHECK-INST: andn.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0x87,0x10,0x7f,0xfc]
andn.t %d15, %d0, 31, %d1, 24

# CHECK-INST: andn.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0x87,0x10,0xff,0xff]
andn.t %d15, %d0, 31, %d1, 31

# CHECK-INST: andn.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x7f,0xf0]
andn.t %d15, %d0, 31, %d14, 0

# CHECK-INST: andn.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xff,0xf3]
andn.t %d15, %d0, 31, %d14, 7

# CHECK-INST: andn.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x7f,0xfc]
andn.t %d15, %d0, 31, %d14, 24

# CHECK-INST: andn.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xff,0xff]
andn.t %d15, %d0, 31, %d14, 31

# CHECK-INST: andn.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x7f,0xf0]
andn.t %d15, %d0, 31, %d15, 0

# CHECK-INST: andn.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xff,0xf3]
andn.t %d15, %d0, 31, %d15, 7

# CHECK-INST: andn.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x7f,0xfc]
andn.t %d15, %d0, 31, %d15, 24

# CHECK-INST: andn.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xff,0xff]
andn.t %d15, %d0, 31, %d15, 31

# CHECK-INST: andn.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0x87,0x01,0x60,0xf0]
andn.t %d15, %d1, 0, %d0, 0

# CHECK-INST: andn.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0x87,0x01,0xe0,0xf3]
andn.t %d15, %d1, 0, %d0, 7

# CHECK-INST: andn.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0x87,0x01,0x60,0xfc]
andn.t %d15, %d1, 0, %d0, 24

# CHECK-INST: andn.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0x87,0x01,0xe0,0xff]
andn.t %d15, %d1, 0, %d0, 31

# CHECK-INST: andn.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0x87,0x11,0x60,0xf0]
andn.t %d15, %d1, 0, %d1, 0

# CHECK-INST: andn.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0x87,0x11,0xe0,0xf3]
andn.t %d15, %d1, 0, %d1, 7

# CHECK-INST: andn.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0x87,0x11,0x60,0xfc]
andn.t %d15, %d1, 0, %d1, 24

# CHECK-INST: andn.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0x87,0x11,0xe0,0xff]
andn.t %d15, %d1, 0, %d1, 31

# CHECK-INST: andn.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x60,0xf0]
andn.t %d15, %d1, 0, %d14, 0

# CHECK-INST: andn.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xe0,0xf3]
andn.t %d15, %d1, 0, %d14, 7

# CHECK-INST: andn.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x60,0xfc]
andn.t %d15, %d1, 0, %d14, 24

# CHECK-INST: andn.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xe0,0xff]
andn.t %d15, %d1, 0, %d14, 31

# CHECK-INST: andn.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x60,0xf0]
andn.t %d15, %d1, 0, %d15, 0

# CHECK-INST: andn.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xe0,0xf3]
andn.t %d15, %d1, 0, %d15, 7

# CHECK-INST: andn.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x60,0xfc]
andn.t %d15, %d1, 0, %d15, 24

# CHECK-INST: andn.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xe0,0xff]
andn.t %d15, %d1, 0, %d15, 31

# CHECK-INST: andn.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0x87,0x01,0x67,0xf0]
andn.t %d15, %d1, 7, %d0, 0

# CHECK-INST: andn.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0x87,0x01,0xe7,0xf3]
andn.t %d15, %d1, 7, %d0, 7

# CHECK-INST: andn.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0x87,0x01,0x67,0xfc]
andn.t %d15, %d1, 7, %d0, 24

# CHECK-INST: andn.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0x87,0x01,0xe7,0xff]
andn.t %d15, %d1, 7, %d0, 31

# CHECK-INST: andn.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0x87,0x11,0x67,0xf0]
andn.t %d15, %d1, 7, %d1, 0

# CHECK-INST: andn.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0x87,0x11,0xe7,0xf3]
andn.t %d15, %d1, 7, %d1, 7

# CHECK-INST: andn.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0x87,0x11,0x67,0xfc]
andn.t %d15, %d1, 7, %d1, 24

# CHECK-INST: andn.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0x87,0x11,0xe7,0xff]
andn.t %d15, %d1, 7, %d1, 31

# CHECK-INST: andn.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x67,0xf0]
andn.t %d15, %d1, 7, %d14, 0

# CHECK-INST: andn.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xe7,0xf3]
andn.t %d15, %d1, 7, %d14, 7

# CHECK-INST: andn.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x67,0xfc]
andn.t %d15, %d1, 7, %d14, 24

# CHECK-INST: andn.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xe7,0xff]
andn.t %d15, %d1, 7, %d14, 31

# CHECK-INST: andn.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x67,0xf0]
andn.t %d15, %d1, 7, %d15, 0

# CHECK-INST: andn.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xe7,0xf3]
andn.t %d15, %d1, 7, %d15, 7

# CHECK-INST: andn.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x67,0xfc]
andn.t %d15, %d1, 7, %d15, 24

# CHECK-INST: andn.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xe7,0xff]
andn.t %d15, %d1, 7, %d15, 31

# CHECK-INST: andn.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0x87,0x01,0x78,0xf0]
andn.t %d15, %d1, 24, %d0, 0

# CHECK-INST: andn.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0x87,0x01,0xf8,0xf3]
andn.t %d15, %d1, 24, %d0, 7

# CHECK-INST: andn.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0x87,0x01,0x78,0xfc]
andn.t %d15, %d1, 24, %d0, 24

# CHECK-INST: andn.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0x87,0x01,0xf8,0xff]
andn.t %d15, %d1, 24, %d0, 31

# CHECK-INST: andn.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0x87,0x11,0x78,0xf0]
andn.t %d15, %d1, 24, %d1, 0

# CHECK-INST: andn.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0x87,0x11,0xf8,0xf3]
andn.t %d15, %d1, 24, %d1, 7

# CHECK-INST: andn.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0x87,0x11,0x78,0xfc]
andn.t %d15, %d1, 24, %d1, 24

# CHECK-INST: andn.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0x87,0x11,0xf8,0xff]
andn.t %d15, %d1, 24, %d1, 31

# CHECK-INST: andn.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x78,0xf0]
andn.t %d15, %d1, 24, %d14, 0

# CHECK-INST: andn.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xf8,0xf3]
andn.t %d15, %d1, 24, %d14, 7

# CHECK-INST: andn.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x78,0xfc]
andn.t %d15, %d1, 24, %d14, 24

# CHECK-INST: andn.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xf8,0xff]
andn.t %d15, %d1, 24, %d14, 31

# CHECK-INST: andn.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x78,0xf0]
andn.t %d15, %d1, 24, %d15, 0

# CHECK-INST: andn.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xf8,0xf3]
andn.t %d15, %d1, 24, %d15, 7

# CHECK-INST: andn.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x78,0xfc]
andn.t %d15, %d1, 24, %d15, 24

# CHECK-INST: andn.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xf8,0xff]
andn.t %d15, %d1, 24, %d15, 31

# CHECK-INST: andn.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0x87,0x01,0x7f,0xf0]
andn.t %d15, %d1, 31, %d0, 0

# CHECK-INST: andn.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0x87,0x01,0xff,0xf3]
andn.t %d15, %d1, 31, %d0, 7

# CHECK-INST: andn.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0x87,0x01,0x7f,0xfc]
andn.t %d15, %d1, 31, %d0, 24

# CHECK-INST: andn.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0x87,0x01,0xff,0xff]
andn.t %d15, %d1, 31, %d0, 31

# CHECK-INST: andn.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0x87,0x11,0x7f,0xf0]
andn.t %d15, %d1, 31, %d1, 0

# CHECK-INST: andn.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0x87,0x11,0xff,0xf3]
andn.t %d15, %d1, 31, %d1, 7

# CHECK-INST: andn.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0x87,0x11,0x7f,0xfc]
andn.t %d15, %d1, 31, %d1, 24

# CHECK-INST: andn.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0x87,0x11,0xff,0xff]
andn.t %d15, %d1, 31, %d1, 31

# CHECK-INST: andn.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x7f,0xf0]
andn.t %d15, %d1, 31, %d14, 0

# CHECK-INST: andn.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xff,0xf3]
andn.t %d15, %d1, 31, %d14, 7

# CHECK-INST: andn.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x7f,0xfc]
andn.t %d15, %d1, 31, %d14, 24

# CHECK-INST: andn.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xff,0xff]
andn.t %d15, %d1, 31, %d14, 31

# CHECK-INST: andn.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x7f,0xf0]
andn.t %d15, %d1, 31, %d15, 0

# CHECK-INST: andn.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xff,0xf3]
andn.t %d15, %d1, 31, %d15, 7

# CHECK-INST: andn.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x7f,0xfc]
andn.t %d15, %d1, 31, %d15, 24

# CHECK-INST: andn.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xff,0xff]
andn.t %d15, %d1, 31, %d15, 31

# CHECK-INST: andn.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x60,0xf0]
andn.t %d15, %d14, 0, %d0, 0

# CHECK-INST: andn.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xe0,0xf3]
andn.t %d15, %d14, 0, %d0, 7

# CHECK-INST: andn.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x60,0xfc]
andn.t %d15, %d14, 0, %d0, 24

# CHECK-INST: andn.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xe0,0xff]
andn.t %d15, %d14, 0, %d0, 31

# CHECK-INST: andn.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x60,0xf0]
andn.t %d15, %d14, 0, %d1, 0

# CHECK-INST: andn.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xe0,0xf3]
andn.t %d15, %d14, 0, %d1, 7

# CHECK-INST: andn.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x60,0xfc]
andn.t %d15, %d14, 0, %d1, 24

# CHECK-INST: andn.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xe0,0xff]
andn.t %d15, %d14, 0, %d1, 31

# CHECK-INST: andn.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0x87,0xee,0x60,0xf0]
andn.t %d15, %d14, 0, %d14, 0

# CHECK-INST: andn.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0x87,0xee,0xe0,0xf3]
andn.t %d15, %d14, 0, %d14, 7

# CHECK-INST: andn.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0x87,0xee,0x60,0xfc]
andn.t %d15, %d14, 0, %d14, 24

# CHECK-INST: andn.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0x87,0xee,0xe0,0xff]
andn.t %d15, %d14, 0, %d14, 31

# CHECK-INST: andn.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x60,0xf0]
andn.t %d15, %d14, 0, %d15, 0

# CHECK-INST: andn.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xe0,0xf3]
andn.t %d15, %d14, 0, %d15, 7

# CHECK-INST: andn.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x60,0xfc]
andn.t %d15, %d14, 0, %d15, 24

# CHECK-INST: andn.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xe0,0xff]
andn.t %d15, %d14, 0, %d15, 31

# CHECK-INST: andn.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x67,0xf0]
andn.t %d15, %d14, 7, %d0, 0

# CHECK-INST: andn.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xe7,0xf3]
andn.t %d15, %d14, 7, %d0, 7

# CHECK-INST: andn.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x67,0xfc]
andn.t %d15, %d14, 7, %d0, 24

# CHECK-INST: andn.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xe7,0xff]
andn.t %d15, %d14, 7, %d0, 31

# CHECK-INST: andn.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x67,0xf0]
andn.t %d15, %d14, 7, %d1, 0

# CHECK-INST: andn.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xe7,0xf3]
andn.t %d15, %d14, 7, %d1, 7

# CHECK-INST: andn.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x67,0xfc]
andn.t %d15, %d14, 7, %d1, 24

# CHECK-INST: andn.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xe7,0xff]
andn.t %d15, %d14, 7, %d1, 31

# CHECK-INST: andn.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0x87,0xee,0x67,0xf0]
andn.t %d15, %d14, 7, %d14, 0

# CHECK-INST: andn.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0x87,0xee,0xe7,0xf3]
andn.t %d15, %d14, 7, %d14, 7

# CHECK-INST: andn.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0x87,0xee,0x67,0xfc]
andn.t %d15, %d14, 7, %d14, 24

# CHECK-INST: andn.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0x87,0xee,0xe7,0xff]
andn.t %d15, %d14, 7, %d14, 31

# CHECK-INST: andn.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x67,0xf0]
andn.t %d15, %d14, 7, %d15, 0

# CHECK-INST: andn.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xe7,0xf3]
andn.t %d15, %d14, 7, %d15, 7

# CHECK-INST: andn.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x67,0xfc]
andn.t %d15, %d14, 7, %d15, 24

# CHECK-INST: andn.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xe7,0xff]
andn.t %d15, %d14, 7, %d15, 31

# CHECK-INST: andn.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x78,0xf0]
andn.t %d15, %d14, 24, %d0, 0

# CHECK-INST: andn.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xf8,0xf3]
andn.t %d15, %d14, 24, %d0, 7

# CHECK-INST: andn.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x78,0xfc]
andn.t %d15, %d14, 24, %d0, 24

# CHECK-INST: andn.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xf8,0xff]
andn.t %d15, %d14, 24, %d0, 31

# CHECK-INST: andn.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x78,0xf0]
andn.t %d15, %d14, 24, %d1, 0

# CHECK-INST: andn.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xf8,0xf3]
andn.t %d15, %d14, 24, %d1, 7

# CHECK-INST: andn.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x78,0xfc]
andn.t %d15, %d14, 24, %d1, 24

# CHECK-INST: andn.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xf8,0xff]
andn.t %d15, %d14, 24, %d1, 31

# CHECK-INST: andn.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0x87,0xee,0x78,0xf0]
andn.t %d15, %d14, 24, %d14, 0

# CHECK-INST: andn.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0x87,0xee,0xf8,0xf3]
andn.t %d15, %d14, 24, %d14, 7

# CHECK-INST: andn.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0x87,0xee,0x78,0xfc]
andn.t %d15, %d14, 24, %d14, 24

# CHECK-INST: andn.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0x87,0xee,0xf8,0xff]
andn.t %d15, %d14, 24, %d14, 31

# CHECK-INST: andn.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x78,0xf0]
andn.t %d15, %d14, 24, %d15, 0

# CHECK-INST: andn.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xf8,0xf3]
andn.t %d15, %d14, 24, %d15, 7

# CHECK-INST: andn.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x78,0xfc]
andn.t %d15, %d14, 24, %d15, 24

# CHECK-INST: andn.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xf8,0xff]
andn.t %d15, %d14, 24, %d15, 31

# CHECK-INST: andn.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x7f,0xf0]
andn.t %d15, %d14, 31, %d0, 0

# CHECK-INST: andn.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xff,0xf3]
andn.t %d15, %d14, 31, %d0, 7

# CHECK-INST: andn.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x7f,0xfc]
andn.t %d15, %d14, 31, %d0, 24

# CHECK-INST: andn.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xff,0xff]
andn.t %d15, %d14, 31, %d0, 31

# CHECK-INST: andn.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x7f,0xf0]
andn.t %d15, %d14, 31, %d1, 0

# CHECK-INST: andn.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xff,0xf3]
andn.t %d15, %d14, 31, %d1, 7

# CHECK-INST: andn.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x7f,0xfc]
andn.t %d15, %d14, 31, %d1, 24

# CHECK-INST: andn.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xff,0xff]
andn.t %d15, %d14, 31, %d1, 31

# CHECK-INST: andn.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0x87,0xee,0x7f,0xf0]
andn.t %d15, %d14, 31, %d14, 0

# CHECK-INST: andn.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0x87,0xee,0xff,0xf3]
andn.t %d15, %d14, 31, %d14, 7

# CHECK-INST: andn.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0x87,0xee,0x7f,0xfc]
andn.t %d15, %d14, 31, %d14, 24

# CHECK-INST: andn.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0x87,0xee,0xff,0xff]
andn.t %d15, %d14, 31, %d14, 31

# CHECK-INST: andn.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x7f,0xf0]
andn.t %d15, %d14, 31, %d15, 0

# CHECK-INST: andn.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xff,0xf3]
andn.t %d15, %d14, 31, %d15, 7

# CHECK-INST: andn.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x7f,0xfc]
andn.t %d15, %d14, 31, %d15, 24

# CHECK-INST: andn.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xff,0xff]
andn.t %d15, %d14, 31, %d15, 31

# CHECK-INST: andn.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x60,0xf0]
andn.t %d15, %d15, 0, %d0, 0

# CHECK-INST: andn.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xe0,0xf3]
andn.t %d15, %d15, 0, %d0, 7

# CHECK-INST: andn.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x60,0xfc]
andn.t %d15, %d15, 0, %d0, 24

# CHECK-INST: andn.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xe0,0xff]
andn.t %d15, %d15, 0, %d0, 31

# CHECK-INST: andn.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x60,0xf0]
andn.t %d15, %d15, 0, %d1, 0

# CHECK-INST: andn.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xe0,0xf3]
andn.t %d15, %d15, 0, %d1, 7

# CHECK-INST: andn.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x60,0xfc]
andn.t %d15, %d15, 0, %d1, 24

# CHECK-INST: andn.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xe0,0xff]
andn.t %d15, %d15, 0, %d1, 31

# CHECK-INST: andn.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0x87,0xef,0x60,0xf0]
andn.t %d15, %d15, 0, %d14, 0

# CHECK-INST: andn.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0x87,0xef,0xe0,0xf3]
andn.t %d15, %d15, 0, %d14, 7

# CHECK-INST: andn.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0x87,0xef,0x60,0xfc]
andn.t %d15, %d15, 0, %d14, 24

# CHECK-INST: andn.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0x87,0xef,0xe0,0xff]
andn.t %d15, %d15, 0, %d14, 31

# CHECK-INST: andn.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0x87,0xff,0x60,0xf0]
andn.t %d15, %d15, 0, %d15, 0

# CHECK-INST: andn.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0x87,0xff,0xe0,0xf3]
andn.t %d15, %d15, 0, %d15, 7

# CHECK-INST: andn.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0x87,0xff,0x60,0xfc]
andn.t %d15, %d15, 0, %d15, 24

# CHECK-INST: andn.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0x87,0xff,0xe0,0xff]
andn.t %d15, %d15, 0, %d15, 31

# CHECK-INST: andn.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x67,0xf0]
andn.t %d15, %d15, 7, %d0, 0

# CHECK-INST: andn.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xe7,0xf3]
andn.t %d15, %d15, 7, %d0, 7

# CHECK-INST: andn.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x67,0xfc]
andn.t %d15, %d15, 7, %d0, 24

# CHECK-INST: andn.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xe7,0xff]
andn.t %d15, %d15, 7, %d0, 31

# CHECK-INST: andn.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x67,0xf0]
andn.t %d15, %d15, 7, %d1, 0

# CHECK-INST: andn.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xe7,0xf3]
andn.t %d15, %d15, 7, %d1, 7

# CHECK-INST: andn.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x67,0xfc]
andn.t %d15, %d15, 7, %d1, 24

# CHECK-INST: andn.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xe7,0xff]
andn.t %d15, %d15, 7, %d1, 31

# CHECK-INST: andn.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0x87,0xef,0x67,0xf0]
andn.t %d15, %d15, 7, %d14, 0

# CHECK-INST: andn.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0x87,0xef,0xe7,0xf3]
andn.t %d15, %d15, 7, %d14, 7

# CHECK-INST: andn.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0x87,0xef,0x67,0xfc]
andn.t %d15, %d15, 7, %d14, 24

# CHECK-INST: andn.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0x87,0xef,0xe7,0xff]
andn.t %d15, %d15, 7, %d14, 31

# CHECK-INST: andn.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0x87,0xff,0x67,0xf0]
andn.t %d15, %d15, 7, %d15, 0

# CHECK-INST: andn.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0x87,0xff,0xe7,0xf3]
andn.t %d15, %d15, 7, %d15, 7

# CHECK-INST: andn.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0x87,0xff,0x67,0xfc]
andn.t %d15, %d15, 7, %d15, 24

# CHECK-INST: andn.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0x87,0xff,0xe7,0xff]
andn.t %d15, %d15, 7, %d15, 31

# CHECK-INST: andn.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x78,0xf0]
andn.t %d15, %d15, 24, %d0, 0

# CHECK-INST: andn.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xf8,0xf3]
andn.t %d15, %d15, 24, %d0, 7

# CHECK-INST: andn.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x78,0xfc]
andn.t %d15, %d15, 24, %d0, 24

# CHECK-INST: andn.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xf8,0xff]
andn.t %d15, %d15, 24, %d0, 31

# CHECK-INST: andn.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x78,0xf0]
andn.t %d15, %d15, 24, %d1, 0

# CHECK-INST: andn.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xf8,0xf3]
andn.t %d15, %d15, 24, %d1, 7

# CHECK-INST: andn.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x78,0xfc]
andn.t %d15, %d15, 24, %d1, 24

# CHECK-INST: andn.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xf8,0xff]
andn.t %d15, %d15, 24, %d1, 31

# CHECK-INST: andn.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0x87,0xef,0x78,0xf0]
andn.t %d15, %d15, 24, %d14, 0

# CHECK-INST: andn.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0x87,0xef,0xf8,0xf3]
andn.t %d15, %d15, 24, %d14, 7

# CHECK-INST: andn.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0x87,0xef,0x78,0xfc]
andn.t %d15, %d15, 24, %d14, 24

# CHECK-INST: andn.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0x87,0xef,0xf8,0xff]
andn.t %d15, %d15, 24, %d14, 31

# CHECK-INST: andn.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0x87,0xff,0x78,0xf0]
andn.t %d15, %d15, 24, %d15, 0

# CHECK-INST: andn.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0x87,0xff,0xf8,0xf3]
andn.t %d15, %d15, 24, %d15, 7

# CHECK-INST: andn.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0x87,0xff,0x78,0xfc]
andn.t %d15, %d15, 24, %d15, 24

# CHECK-INST: andn.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0x87,0xff,0xf8,0xff]
andn.t %d15, %d15, 24, %d15, 31

# CHECK-INST: andn.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x7f,0xf0]
andn.t %d15, %d15, 31, %d0, 0

# CHECK-INST: andn.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xff,0xf3]
andn.t %d15, %d15, 31, %d0, 7

# CHECK-INST: andn.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x7f,0xfc]
andn.t %d15, %d15, 31, %d0, 24

# CHECK-INST: andn.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xff,0xff]
andn.t %d15, %d15, 31, %d0, 31

# CHECK-INST: andn.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x7f,0xf0]
andn.t %d15, %d15, 31, %d1, 0

# CHECK-INST: andn.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xff,0xf3]
andn.t %d15, %d15, 31, %d1, 7

# CHECK-INST: andn.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x7f,0xfc]
andn.t %d15, %d15, 31, %d1, 24

# CHECK-INST: andn.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xff,0xff]
andn.t %d15, %d15, 31, %d1, 31

# CHECK-INST: andn.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0x87,0xef,0x7f,0xf0]
andn.t %d15, %d15, 31, %d14, 0

# CHECK-INST: andn.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0x87,0xef,0xff,0xf3]
andn.t %d15, %d15, 31, %d14, 7

# CHECK-INST: andn.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0x87,0xef,0x7f,0xfc]
andn.t %d15, %d15, 31, %d14, 24

# CHECK-INST: andn.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0x87,0xef,0xff,0xff]
andn.t %d15, %d15, 31, %d14, 31

# CHECK-INST: andn.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0x87,0xff,0x7f,0xf0]
andn.t %d15, %d15, 31, %d15, 0

# CHECK-INST: andn.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0x87,0xff,0xff,0xf3]
andn.t %d15, %d15, 31, %d15, 7

# CHECK-INST: andn.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0x87,0xff,0x7f,0xfc]
andn.t %d15, %d15, 31, %d15, 24

# CHECK-INST: andn.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0x87,0xff,0xff,0xff]
andn.t %d15, %d15, 31, %d15, 31

# CHECK-INST: nand.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x00,0x00]
nand.t %d0, %d0, 0, %d0, 0

# CHECK-INST: nand.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0x07,0x00,0x80,0x03]
nand.t %d0, %d0, 0, %d0, 7

# CHECK-INST: nand.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0x07,0x00,0x00,0x0c]
nand.t %d0, %d0, 0, %d0, 24

# CHECK-INST: nand.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0x07,0x00,0x80,0x0f]
nand.t %d0, %d0, 0, %d0, 31

# CHECK-INST: nand.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0x07,0x10,0x00,0x00]
nand.t %d0, %d0, 0, %d1, 0

# CHECK-INST: nand.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0x07,0x10,0x80,0x03]
nand.t %d0, %d0, 0, %d1, 7

# CHECK-INST: nand.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0x07,0x10,0x00,0x0c]
nand.t %d0, %d0, 0, %d1, 24

# CHECK-INST: nand.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0x07,0x10,0x80,0x0f]
nand.t %d0, %d0, 0, %d1, 31

# CHECK-INST: nand.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x00,0x00]
nand.t %d0, %d0, 0, %d14, 0

# CHECK-INST: nand.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0x07,0xe0,0x80,0x03]
nand.t %d0, %d0, 0, %d14, 7

# CHECK-INST: nand.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x00,0x0c]
nand.t %d0, %d0, 0, %d14, 24

# CHECK-INST: nand.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0x07,0xe0,0x80,0x0f]
nand.t %d0, %d0, 0, %d14, 31

# CHECK-INST: nand.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x00,0x00]
nand.t %d0, %d0, 0, %d15, 0

# CHECK-INST: nand.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0x07,0xf0,0x80,0x03]
nand.t %d0, %d0, 0, %d15, 7

# CHECK-INST: nand.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x00,0x0c]
nand.t %d0, %d0, 0, %d15, 24

# CHECK-INST: nand.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0x07,0xf0,0x80,0x0f]
nand.t %d0, %d0, 0, %d15, 31

# CHECK-INST: nand.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0x07,0x00,0x07,0x00]
nand.t %d0, %d0, 7, %d0, 0

# CHECK-INST: nand.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0x07,0x00,0x87,0x03]
nand.t %d0, %d0, 7, %d0, 7

# CHECK-INST: nand.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0x07,0x00,0x07,0x0c]
nand.t %d0, %d0, 7, %d0, 24

# CHECK-INST: nand.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0x07,0x00,0x87,0x0f]
nand.t %d0, %d0, 7, %d0, 31

# CHECK-INST: nand.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0x07,0x10,0x07,0x00]
nand.t %d0, %d0, 7, %d1, 0

# CHECK-INST: nand.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0x07,0x10,0x87,0x03]
nand.t %d0, %d0, 7, %d1, 7

# CHECK-INST: nand.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0x07,0x10,0x07,0x0c]
nand.t %d0, %d0, 7, %d1, 24

# CHECK-INST: nand.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0x07,0x10,0x87,0x0f]
nand.t %d0, %d0, 7, %d1, 31

# CHECK-INST: nand.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x07,0x00]
nand.t %d0, %d0, 7, %d14, 0

# CHECK-INST: nand.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0x07,0xe0,0x87,0x03]
nand.t %d0, %d0, 7, %d14, 7

# CHECK-INST: nand.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x07,0x0c]
nand.t %d0, %d0, 7, %d14, 24

# CHECK-INST: nand.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0x07,0xe0,0x87,0x0f]
nand.t %d0, %d0, 7, %d14, 31

# CHECK-INST: nand.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x07,0x00]
nand.t %d0, %d0, 7, %d15, 0

# CHECK-INST: nand.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0x07,0xf0,0x87,0x03]
nand.t %d0, %d0, 7, %d15, 7

# CHECK-INST: nand.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x07,0x0c]
nand.t %d0, %d0, 7, %d15, 24

# CHECK-INST: nand.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0x07,0xf0,0x87,0x0f]
nand.t %d0, %d0, 7, %d15, 31

# CHECK-INST: nand.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0x07,0x00,0x18,0x00]
nand.t %d0, %d0, 24, %d0, 0

# CHECK-INST: nand.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0x07,0x00,0x98,0x03]
nand.t %d0, %d0, 24, %d0, 7

# CHECK-INST: nand.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0x07,0x00,0x18,0x0c]
nand.t %d0, %d0, 24, %d0, 24

# CHECK-INST: nand.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0x07,0x00,0x98,0x0f]
nand.t %d0, %d0, 24, %d0, 31

# CHECK-INST: nand.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0x07,0x10,0x18,0x00]
nand.t %d0, %d0, 24, %d1, 0

# CHECK-INST: nand.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0x07,0x10,0x98,0x03]
nand.t %d0, %d0, 24, %d1, 7

# CHECK-INST: nand.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0x07,0x10,0x18,0x0c]
nand.t %d0, %d0, 24, %d1, 24

# CHECK-INST: nand.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0x07,0x10,0x98,0x0f]
nand.t %d0, %d0, 24, %d1, 31

# CHECK-INST: nand.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x18,0x00]
nand.t %d0, %d0, 24, %d14, 0

# CHECK-INST: nand.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0x07,0xe0,0x98,0x03]
nand.t %d0, %d0, 24, %d14, 7

# CHECK-INST: nand.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x18,0x0c]
nand.t %d0, %d0, 24, %d14, 24

# CHECK-INST: nand.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0x07,0xe0,0x98,0x0f]
nand.t %d0, %d0, 24, %d14, 31

# CHECK-INST: nand.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x18,0x00]
nand.t %d0, %d0, 24, %d15, 0

# CHECK-INST: nand.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0x07,0xf0,0x98,0x03]
nand.t %d0, %d0, 24, %d15, 7

# CHECK-INST: nand.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x18,0x0c]
nand.t %d0, %d0, 24, %d15, 24

# CHECK-INST: nand.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0x07,0xf0,0x98,0x0f]
nand.t %d0, %d0, 24, %d15, 31

# CHECK-INST: nand.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0x07,0x00,0x1f,0x00]
nand.t %d0, %d0, 31, %d0, 0

# CHECK-INST: nand.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0x07,0x00,0x9f,0x03]
nand.t %d0, %d0, 31, %d0, 7

# CHECK-INST: nand.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0x07,0x00,0x1f,0x0c]
nand.t %d0, %d0, 31, %d0, 24

# CHECK-INST: nand.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0x07,0x00,0x9f,0x0f]
nand.t %d0, %d0, 31, %d0, 31

# CHECK-INST: nand.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0x07,0x10,0x1f,0x00]
nand.t %d0, %d0, 31, %d1, 0

# CHECK-INST: nand.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0x07,0x10,0x9f,0x03]
nand.t %d0, %d0, 31, %d1, 7

# CHECK-INST: nand.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0x07,0x10,0x1f,0x0c]
nand.t %d0, %d0, 31, %d1, 24

# CHECK-INST: nand.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0x07,0x10,0x9f,0x0f]
nand.t %d0, %d0, 31, %d1, 31

# CHECK-INST: nand.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x1f,0x00]
nand.t %d0, %d0, 31, %d14, 0

# CHECK-INST: nand.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0x07,0xe0,0x9f,0x03]
nand.t %d0, %d0, 31, %d14, 7

# CHECK-INST: nand.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x1f,0x0c]
nand.t %d0, %d0, 31, %d14, 24

# CHECK-INST: nand.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0x07,0xe0,0x9f,0x0f]
nand.t %d0, %d0, 31, %d14, 31

# CHECK-INST: nand.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x1f,0x00]
nand.t %d0, %d0, 31, %d15, 0

# CHECK-INST: nand.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0x07,0xf0,0x9f,0x03]
nand.t %d0, %d0, 31, %d15, 7

# CHECK-INST: nand.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x1f,0x0c]
nand.t %d0, %d0, 31, %d15, 24

# CHECK-INST: nand.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0x07,0xf0,0x9f,0x0f]
nand.t %d0, %d0, 31, %d15, 31

# CHECK-INST: nand.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0x07,0x01,0x00,0x00]
nand.t %d0, %d1, 0, %d0, 0

# CHECK-INST: nand.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0x07,0x01,0x80,0x03]
nand.t %d0, %d1, 0, %d0, 7

# CHECK-INST: nand.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0x07,0x01,0x00,0x0c]
nand.t %d0, %d1, 0, %d0, 24

# CHECK-INST: nand.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0x07,0x01,0x80,0x0f]
nand.t %d0, %d1, 0, %d0, 31

# CHECK-INST: nand.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0x07,0x11,0x00,0x00]
nand.t %d0, %d1, 0, %d1, 0

# CHECK-INST: nand.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0x07,0x11,0x80,0x03]
nand.t %d0, %d1, 0, %d1, 7

# CHECK-INST: nand.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0x07,0x11,0x00,0x0c]
nand.t %d0, %d1, 0, %d1, 24

# CHECK-INST: nand.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0x07,0x11,0x80,0x0f]
nand.t %d0, %d1, 0, %d1, 31

# CHECK-INST: nand.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x00,0x00]
nand.t %d0, %d1, 0, %d14, 0

# CHECK-INST: nand.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0x07,0xe1,0x80,0x03]
nand.t %d0, %d1, 0, %d14, 7

# CHECK-INST: nand.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x00,0x0c]
nand.t %d0, %d1, 0, %d14, 24

# CHECK-INST: nand.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0x07,0xe1,0x80,0x0f]
nand.t %d0, %d1, 0, %d14, 31

# CHECK-INST: nand.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x00,0x00]
nand.t %d0, %d1, 0, %d15, 0

# CHECK-INST: nand.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0x07,0xf1,0x80,0x03]
nand.t %d0, %d1, 0, %d15, 7

# CHECK-INST: nand.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x00,0x0c]
nand.t %d0, %d1, 0, %d15, 24

# CHECK-INST: nand.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0x07,0xf1,0x80,0x0f]
nand.t %d0, %d1, 0, %d15, 31

# CHECK-INST: nand.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0x07,0x01,0x07,0x00]
nand.t %d0, %d1, 7, %d0, 0

# CHECK-INST: nand.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0x07,0x01,0x87,0x03]
nand.t %d0, %d1, 7, %d0, 7

# CHECK-INST: nand.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0x07,0x01,0x07,0x0c]
nand.t %d0, %d1, 7, %d0, 24

# CHECK-INST: nand.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0x07,0x01,0x87,0x0f]
nand.t %d0, %d1, 7, %d0, 31

# CHECK-INST: nand.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0x07,0x11,0x07,0x00]
nand.t %d0, %d1, 7, %d1, 0

# CHECK-INST: nand.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0x07,0x11,0x87,0x03]
nand.t %d0, %d1, 7, %d1, 7

# CHECK-INST: nand.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0x07,0x11,0x07,0x0c]
nand.t %d0, %d1, 7, %d1, 24

# CHECK-INST: nand.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0x07,0x11,0x87,0x0f]
nand.t %d0, %d1, 7, %d1, 31

# CHECK-INST: nand.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x07,0x00]
nand.t %d0, %d1, 7, %d14, 0

# CHECK-INST: nand.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0x07,0xe1,0x87,0x03]
nand.t %d0, %d1, 7, %d14, 7

# CHECK-INST: nand.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x07,0x0c]
nand.t %d0, %d1, 7, %d14, 24

# CHECK-INST: nand.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0x07,0xe1,0x87,0x0f]
nand.t %d0, %d1, 7, %d14, 31

# CHECK-INST: nand.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x07,0x00]
nand.t %d0, %d1, 7, %d15, 0

# CHECK-INST: nand.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0x07,0xf1,0x87,0x03]
nand.t %d0, %d1, 7, %d15, 7

# CHECK-INST: nand.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x07,0x0c]
nand.t %d0, %d1, 7, %d15, 24

# CHECK-INST: nand.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0x07,0xf1,0x87,0x0f]
nand.t %d0, %d1, 7, %d15, 31

# CHECK-INST: nand.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0x07,0x01,0x18,0x00]
nand.t %d0, %d1, 24, %d0, 0

# CHECK-INST: nand.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0x07,0x01,0x98,0x03]
nand.t %d0, %d1, 24, %d0, 7

# CHECK-INST: nand.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0x07,0x01,0x18,0x0c]
nand.t %d0, %d1, 24, %d0, 24

# CHECK-INST: nand.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0x07,0x01,0x98,0x0f]
nand.t %d0, %d1, 24, %d0, 31

# CHECK-INST: nand.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0x07,0x11,0x18,0x00]
nand.t %d0, %d1, 24, %d1, 0

# CHECK-INST: nand.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0x07,0x11,0x98,0x03]
nand.t %d0, %d1, 24, %d1, 7

# CHECK-INST: nand.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0x07,0x11,0x18,0x0c]
nand.t %d0, %d1, 24, %d1, 24

# CHECK-INST: nand.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0x07,0x11,0x98,0x0f]
nand.t %d0, %d1, 24, %d1, 31

# CHECK-INST: nand.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x18,0x00]
nand.t %d0, %d1, 24, %d14, 0

# CHECK-INST: nand.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0x07,0xe1,0x98,0x03]
nand.t %d0, %d1, 24, %d14, 7

# CHECK-INST: nand.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x18,0x0c]
nand.t %d0, %d1, 24, %d14, 24

# CHECK-INST: nand.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0x07,0xe1,0x98,0x0f]
nand.t %d0, %d1, 24, %d14, 31

# CHECK-INST: nand.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x18,0x00]
nand.t %d0, %d1, 24, %d15, 0

# CHECK-INST: nand.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0x07,0xf1,0x98,0x03]
nand.t %d0, %d1, 24, %d15, 7

# CHECK-INST: nand.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x18,0x0c]
nand.t %d0, %d1, 24, %d15, 24

# CHECK-INST: nand.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0x07,0xf1,0x98,0x0f]
nand.t %d0, %d1, 24, %d15, 31

# CHECK-INST: nand.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0x07,0x01,0x1f,0x00]
nand.t %d0, %d1, 31, %d0, 0

# CHECK-INST: nand.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0x07,0x01,0x9f,0x03]
nand.t %d0, %d1, 31, %d0, 7

# CHECK-INST: nand.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0x07,0x01,0x1f,0x0c]
nand.t %d0, %d1, 31, %d0, 24

# CHECK-INST: nand.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0x07,0x01,0x9f,0x0f]
nand.t %d0, %d1, 31, %d0, 31

# CHECK-INST: nand.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0x07,0x11,0x1f,0x00]
nand.t %d0, %d1, 31, %d1, 0

# CHECK-INST: nand.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0x07,0x11,0x9f,0x03]
nand.t %d0, %d1, 31, %d1, 7

# CHECK-INST: nand.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0x07,0x11,0x1f,0x0c]
nand.t %d0, %d1, 31, %d1, 24

# CHECK-INST: nand.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0x07,0x11,0x9f,0x0f]
nand.t %d0, %d1, 31, %d1, 31

# CHECK-INST: nand.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x1f,0x00]
nand.t %d0, %d1, 31, %d14, 0

# CHECK-INST: nand.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0x07,0xe1,0x9f,0x03]
nand.t %d0, %d1, 31, %d14, 7

# CHECK-INST: nand.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x1f,0x0c]
nand.t %d0, %d1, 31, %d14, 24

# CHECK-INST: nand.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0x07,0xe1,0x9f,0x0f]
nand.t %d0, %d1, 31, %d14, 31

# CHECK-INST: nand.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x1f,0x00]
nand.t %d0, %d1, 31, %d15, 0

# CHECK-INST: nand.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0x07,0xf1,0x9f,0x03]
nand.t %d0, %d1, 31, %d15, 7

# CHECK-INST: nand.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x1f,0x0c]
nand.t %d0, %d1, 31, %d15, 24

# CHECK-INST: nand.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0x07,0xf1,0x9f,0x0f]
nand.t %d0, %d1, 31, %d15, 31

# CHECK-INST: nand.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x00,0x00]
nand.t %d0, %d14, 0, %d0, 0

# CHECK-INST: nand.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0x07,0x0e,0x80,0x03]
nand.t %d0, %d14, 0, %d0, 7

# CHECK-INST: nand.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x00,0x0c]
nand.t %d0, %d14, 0, %d0, 24

# CHECK-INST: nand.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0x07,0x0e,0x80,0x0f]
nand.t %d0, %d14, 0, %d0, 31

# CHECK-INST: nand.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x00,0x00]
nand.t %d0, %d14, 0, %d1, 0

# CHECK-INST: nand.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0x07,0x1e,0x80,0x03]
nand.t %d0, %d14, 0, %d1, 7

# CHECK-INST: nand.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x00,0x0c]
nand.t %d0, %d14, 0, %d1, 24

# CHECK-INST: nand.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0x07,0x1e,0x80,0x0f]
nand.t %d0, %d14, 0, %d1, 31

# CHECK-INST: nand.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0x07,0xee,0x00,0x00]
nand.t %d0, %d14, 0, %d14, 0

# CHECK-INST: nand.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0x07,0xee,0x80,0x03]
nand.t %d0, %d14, 0, %d14, 7

# CHECK-INST: nand.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0x07,0xee,0x00,0x0c]
nand.t %d0, %d14, 0, %d14, 24

# CHECK-INST: nand.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0x07,0xee,0x80,0x0f]
nand.t %d0, %d14, 0, %d14, 31

# CHECK-INST: nand.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x00,0x00]
nand.t %d0, %d14, 0, %d15, 0

# CHECK-INST: nand.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0x07,0xfe,0x80,0x03]
nand.t %d0, %d14, 0, %d15, 7

# CHECK-INST: nand.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x00,0x0c]
nand.t %d0, %d14, 0, %d15, 24

# CHECK-INST: nand.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0x07,0xfe,0x80,0x0f]
nand.t %d0, %d14, 0, %d15, 31

# CHECK-INST: nand.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x07,0x00]
nand.t %d0, %d14, 7, %d0, 0

# CHECK-INST: nand.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0x07,0x0e,0x87,0x03]
nand.t %d0, %d14, 7, %d0, 7

# CHECK-INST: nand.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x07,0x0c]
nand.t %d0, %d14, 7, %d0, 24

# CHECK-INST: nand.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0x07,0x0e,0x87,0x0f]
nand.t %d0, %d14, 7, %d0, 31

# CHECK-INST: nand.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x07,0x00]
nand.t %d0, %d14, 7, %d1, 0

# CHECK-INST: nand.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0x07,0x1e,0x87,0x03]
nand.t %d0, %d14, 7, %d1, 7

# CHECK-INST: nand.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x07,0x0c]
nand.t %d0, %d14, 7, %d1, 24

# CHECK-INST: nand.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0x07,0x1e,0x87,0x0f]
nand.t %d0, %d14, 7, %d1, 31

# CHECK-INST: nand.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0x07,0xee,0x07,0x00]
nand.t %d0, %d14, 7, %d14, 0

# CHECK-INST: nand.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0x07,0xee,0x87,0x03]
nand.t %d0, %d14, 7, %d14, 7

# CHECK-INST: nand.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0x07,0xee,0x07,0x0c]
nand.t %d0, %d14, 7, %d14, 24

# CHECK-INST: nand.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0x07,0xee,0x87,0x0f]
nand.t %d0, %d14, 7, %d14, 31

# CHECK-INST: nand.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x07,0x00]
nand.t %d0, %d14, 7, %d15, 0

# CHECK-INST: nand.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0x07,0xfe,0x87,0x03]
nand.t %d0, %d14, 7, %d15, 7

# CHECK-INST: nand.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x07,0x0c]
nand.t %d0, %d14, 7, %d15, 24

# CHECK-INST: nand.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0x07,0xfe,0x87,0x0f]
nand.t %d0, %d14, 7, %d15, 31

# CHECK-INST: nand.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x18,0x00]
nand.t %d0, %d14, 24, %d0, 0

# CHECK-INST: nand.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0x07,0x0e,0x98,0x03]
nand.t %d0, %d14, 24, %d0, 7

# CHECK-INST: nand.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x18,0x0c]
nand.t %d0, %d14, 24, %d0, 24

# CHECK-INST: nand.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0x07,0x0e,0x98,0x0f]
nand.t %d0, %d14, 24, %d0, 31

# CHECK-INST: nand.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x18,0x00]
nand.t %d0, %d14, 24, %d1, 0

# CHECK-INST: nand.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0x07,0x1e,0x98,0x03]
nand.t %d0, %d14, 24, %d1, 7

# CHECK-INST: nand.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x18,0x0c]
nand.t %d0, %d14, 24, %d1, 24

# CHECK-INST: nand.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0x07,0x1e,0x98,0x0f]
nand.t %d0, %d14, 24, %d1, 31

# CHECK-INST: nand.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0x07,0xee,0x18,0x00]
nand.t %d0, %d14, 24, %d14, 0

# CHECK-INST: nand.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0x07,0xee,0x98,0x03]
nand.t %d0, %d14, 24, %d14, 7

# CHECK-INST: nand.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0x07,0xee,0x18,0x0c]
nand.t %d0, %d14, 24, %d14, 24

# CHECK-INST: nand.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0x07,0xee,0x98,0x0f]
nand.t %d0, %d14, 24, %d14, 31

# CHECK-INST: nand.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x18,0x00]
nand.t %d0, %d14, 24, %d15, 0

# CHECK-INST: nand.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0x07,0xfe,0x98,0x03]
nand.t %d0, %d14, 24, %d15, 7

# CHECK-INST: nand.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x18,0x0c]
nand.t %d0, %d14, 24, %d15, 24

# CHECK-INST: nand.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0x07,0xfe,0x98,0x0f]
nand.t %d0, %d14, 24, %d15, 31

# CHECK-INST: nand.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x1f,0x00]
nand.t %d0, %d14, 31, %d0, 0

# CHECK-INST: nand.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0x07,0x0e,0x9f,0x03]
nand.t %d0, %d14, 31, %d0, 7

# CHECK-INST: nand.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x1f,0x0c]
nand.t %d0, %d14, 31, %d0, 24

# CHECK-INST: nand.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0x07,0x0e,0x9f,0x0f]
nand.t %d0, %d14, 31, %d0, 31

# CHECK-INST: nand.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x1f,0x00]
nand.t %d0, %d14, 31, %d1, 0

# CHECK-INST: nand.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0x07,0x1e,0x9f,0x03]
nand.t %d0, %d14, 31, %d1, 7

# CHECK-INST: nand.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x1f,0x0c]
nand.t %d0, %d14, 31, %d1, 24

# CHECK-INST: nand.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0x07,0x1e,0x9f,0x0f]
nand.t %d0, %d14, 31, %d1, 31

# CHECK-INST: nand.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0x07,0xee,0x1f,0x00]
nand.t %d0, %d14, 31, %d14, 0

# CHECK-INST: nand.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0x07,0xee,0x9f,0x03]
nand.t %d0, %d14, 31, %d14, 7

# CHECK-INST: nand.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0x07,0xee,0x1f,0x0c]
nand.t %d0, %d14, 31, %d14, 24

# CHECK-INST: nand.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0x07,0xee,0x9f,0x0f]
nand.t %d0, %d14, 31, %d14, 31

# CHECK-INST: nand.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x1f,0x00]
nand.t %d0, %d14, 31, %d15, 0

# CHECK-INST: nand.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0x07,0xfe,0x9f,0x03]
nand.t %d0, %d14, 31, %d15, 7

# CHECK-INST: nand.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x1f,0x0c]
nand.t %d0, %d14, 31, %d15, 24

# CHECK-INST: nand.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0x07,0xfe,0x9f,0x0f]
nand.t %d0, %d14, 31, %d15, 31

# CHECK-INST: nand.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x00,0x00]
nand.t %d0, %d15, 0, %d0, 0

# CHECK-INST: nand.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0x07,0x0f,0x80,0x03]
nand.t %d0, %d15, 0, %d0, 7

# CHECK-INST: nand.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x00,0x0c]
nand.t %d0, %d15, 0, %d0, 24

# CHECK-INST: nand.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0x07,0x0f,0x80,0x0f]
nand.t %d0, %d15, 0, %d0, 31

# CHECK-INST: nand.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x00,0x00]
nand.t %d0, %d15, 0, %d1, 0

# CHECK-INST: nand.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0x07,0x1f,0x80,0x03]
nand.t %d0, %d15, 0, %d1, 7

# CHECK-INST: nand.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x00,0x0c]
nand.t %d0, %d15, 0, %d1, 24

# CHECK-INST: nand.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0x07,0x1f,0x80,0x0f]
nand.t %d0, %d15, 0, %d1, 31

# CHECK-INST: nand.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0x07,0xef,0x00,0x00]
nand.t %d0, %d15, 0, %d14, 0

# CHECK-INST: nand.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0x07,0xef,0x80,0x03]
nand.t %d0, %d15, 0, %d14, 7

# CHECK-INST: nand.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0x07,0xef,0x00,0x0c]
nand.t %d0, %d15, 0, %d14, 24

# CHECK-INST: nand.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0x07,0xef,0x80,0x0f]
nand.t %d0, %d15, 0, %d14, 31

# CHECK-INST: nand.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0x07,0xff,0x00,0x00]
nand.t %d0, %d15, 0, %d15, 0

# CHECK-INST: nand.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0x07,0xff,0x80,0x03]
nand.t %d0, %d15, 0, %d15, 7

# CHECK-INST: nand.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0x07,0xff,0x00,0x0c]
nand.t %d0, %d15, 0, %d15, 24

# CHECK-INST: nand.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0x07,0xff,0x80,0x0f]
nand.t %d0, %d15, 0, %d15, 31

# CHECK-INST: nand.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x07,0x00]
nand.t %d0, %d15, 7, %d0, 0

# CHECK-INST: nand.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0x07,0x0f,0x87,0x03]
nand.t %d0, %d15, 7, %d0, 7

# CHECK-INST: nand.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x07,0x0c]
nand.t %d0, %d15, 7, %d0, 24

# CHECK-INST: nand.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0x07,0x0f,0x87,0x0f]
nand.t %d0, %d15, 7, %d0, 31

# CHECK-INST: nand.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x07,0x00]
nand.t %d0, %d15, 7, %d1, 0

# CHECK-INST: nand.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0x07,0x1f,0x87,0x03]
nand.t %d0, %d15, 7, %d1, 7

# CHECK-INST: nand.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x07,0x0c]
nand.t %d0, %d15, 7, %d1, 24

# CHECK-INST: nand.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0x07,0x1f,0x87,0x0f]
nand.t %d0, %d15, 7, %d1, 31

# CHECK-INST: nand.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0x07,0xef,0x07,0x00]
nand.t %d0, %d15, 7, %d14, 0

# CHECK-INST: nand.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0x07,0xef,0x87,0x03]
nand.t %d0, %d15, 7, %d14, 7

# CHECK-INST: nand.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0x07,0xef,0x07,0x0c]
nand.t %d0, %d15, 7, %d14, 24

# CHECK-INST: nand.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0x07,0xef,0x87,0x0f]
nand.t %d0, %d15, 7, %d14, 31

# CHECK-INST: nand.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0x07,0xff,0x07,0x00]
nand.t %d0, %d15, 7, %d15, 0

# CHECK-INST: nand.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0x07,0xff,0x87,0x03]
nand.t %d0, %d15, 7, %d15, 7

# CHECK-INST: nand.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0x07,0xff,0x07,0x0c]
nand.t %d0, %d15, 7, %d15, 24

# CHECK-INST: nand.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0x07,0xff,0x87,0x0f]
nand.t %d0, %d15, 7, %d15, 31

# CHECK-INST: nand.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x18,0x00]
nand.t %d0, %d15, 24, %d0, 0

# CHECK-INST: nand.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0x07,0x0f,0x98,0x03]
nand.t %d0, %d15, 24, %d0, 7

# CHECK-INST: nand.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x18,0x0c]
nand.t %d0, %d15, 24, %d0, 24

# CHECK-INST: nand.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0x07,0x0f,0x98,0x0f]
nand.t %d0, %d15, 24, %d0, 31

# CHECK-INST: nand.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x18,0x00]
nand.t %d0, %d15, 24, %d1, 0

# CHECK-INST: nand.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0x07,0x1f,0x98,0x03]
nand.t %d0, %d15, 24, %d1, 7

# CHECK-INST: nand.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x18,0x0c]
nand.t %d0, %d15, 24, %d1, 24

# CHECK-INST: nand.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0x07,0x1f,0x98,0x0f]
nand.t %d0, %d15, 24, %d1, 31

# CHECK-INST: nand.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0x07,0xef,0x18,0x00]
nand.t %d0, %d15, 24, %d14, 0

# CHECK-INST: nand.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0x07,0xef,0x98,0x03]
nand.t %d0, %d15, 24, %d14, 7

# CHECK-INST: nand.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0x07,0xef,0x18,0x0c]
nand.t %d0, %d15, 24, %d14, 24

# CHECK-INST: nand.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0x07,0xef,0x98,0x0f]
nand.t %d0, %d15, 24, %d14, 31

# CHECK-INST: nand.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0x07,0xff,0x18,0x00]
nand.t %d0, %d15, 24, %d15, 0

# CHECK-INST: nand.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0x07,0xff,0x98,0x03]
nand.t %d0, %d15, 24, %d15, 7

# CHECK-INST: nand.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0x07,0xff,0x18,0x0c]
nand.t %d0, %d15, 24, %d15, 24

# CHECK-INST: nand.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0x07,0xff,0x98,0x0f]
nand.t %d0, %d15, 24, %d15, 31

# CHECK-INST: nand.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x1f,0x00]
nand.t %d0, %d15, 31, %d0, 0

# CHECK-INST: nand.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0x07,0x0f,0x9f,0x03]
nand.t %d0, %d15, 31, %d0, 7

# CHECK-INST: nand.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x1f,0x0c]
nand.t %d0, %d15, 31, %d0, 24

# CHECK-INST: nand.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0x07,0x0f,0x9f,0x0f]
nand.t %d0, %d15, 31, %d0, 31

# CHECK-INST: nand.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x1f,0x00]
nand.t %d0, %d15, 31, %d1, 0

# CHECK-INST: nand.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0x07,0x1f,0x9f,0x03]
nand.t %d0, %d15, 31, %d1, 7

# CHECK-INST: nand.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x1f,0x0c]
nand.t %d0, %d15, 31, %d1, 24

# CHECK-INST: nand.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0x07,0x1f,0x9f,0x0f]
nand.t %d0, %d15, 31, %d1, 31

# CHECK-INST: nand.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0x07,0xef,0x1f,0x00]
nand.t %d0, %d15, 31, %d14, 0

# CHECK-INST: nand.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0x07,0xef,0x9f,0x03]
nand.t %d0, %d15, 31, %d14, 7

# CHECK-INST: nand.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0x07,0xef,0x1f,0x0c]
nand.t %d0, %d15, 31, %d14, 24

# CHECK-INST: nand.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0x07,0xef,0x9f,0x0f]
nand.t %d0, %d15, 31, %d14, 31

# CHECK-INST: nand.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0x07,0xff,0x1f,0x00]
nand.t %d0, %d15, 31, %d15, 0

# CHECK-INST: nand.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0x07,0xff,0x9f,0x03]
nand.t %d0, %d15, 31, %d15, 7

# CHECK-INST: nand.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0x07,0xff,0x1f,0x0c]
nand.t %d0, %d15, 31, %d15, 24

# CHECK-INST: nand.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0x07,0xff,0x9f,0x0f]
nand.t %d0, %d15, 31, %d15, 31

# CHECK-INST: nand.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x00,0x10]
nand.t %d1, %d0, 0, %d0, 0

# CHECK-INST: nand.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0x07,0x00,0x80,0x13]
nand.t %d1, %d0, 0, %d0, 7

# CHECK-INST: nand.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0x07,0x00,0x00,0x1c]
nand.t %d1, %d0, 0, %d0, 24

# CHECK-INST: nand.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0x07,0x00,0x80,0x1f]
nand.t %d1, %d0, 0, %d0, 31

# CHECK-INST: nand.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0x07,0x10,0x00,0x10]
nand.t %d1, %d0, 0, %d1, 0

# CHECK-INST: nand.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0x07,0x10,0x80,0x13]
nand.t %d1, %d0, 0, %d1, 7

# CHECK-INST: nand.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0x07,0x10,0x00,0x1c]
nand.t %d1, %d0, 0, %d1, 24

# CHECK-INST: nand.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0x07,0x10,0x80,0x1f]
nand.t %d1, %d0, 0, %d1, 31

# CHECK-INST: nand.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x00,0x10]
nand.t %d1, %d0, 0, %d14, 0

# CHECK-INST: nand.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0x07,0xe0,0x80,0x13]
nand.t %d1, %d0, 0, %d14, 7

# CHECK-INST: nand.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x00,0x1c]
nand.t %d1, %d0, 0, %d14, 24

# CHECK-INST: nand.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0x07,0xe0,0x80,0x1f]
nand.t %d1, %d0, 0, %d14, 31

# CHECK-INST: nand.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x00,0x10]
nand.t %d1, %d0, 0, %d15, 0

# CHECK-INST: nand.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0x07,0xf0,0x80,0x13]
nand.t %d1, %d0, 0, %d15, 7

# CHECK-INST: nand.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x00,0x1c]
nand.t %d1, %d0, 0, %d15, 24

# CHECK-INST: nand.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0x07,0xf0,0x80,0x1f]
nand.t %d1, %d0, 0, %d15, 31

# CHECK-INST: nand.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0x07,0x00,0x07,0x10]
nand.t %d1, %d0, 7, %d0, 0

# CHECK-INST: nand.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0x07,0x00,0x87,0x13]
nand.t %d1, %d0, 7, %d0, 7

# CHECK-INST: nand.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0x07,0x00,0x07,0x1c]
nand.t %d1, %d0, 7, %d0, 24

# CHECK-INST: nand.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0x07,0x00,0x87,0x1f]
nand.t %d1, %d0, 7, %d0, 31

# CHECK-INST: nand.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0x07,0x10,0x07,0x10]
nand.t %d1, %d0, 7, %d1, 0

# CHECK-INST: nand.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0x07,0x10,0x87,0x13]
nand.t %d1, %d0, 7, %d1, 7

# CHECK-INST: nand.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0x07,0x10,0x07,0x1c]
nand.t %d1, %d0, 7, %d1, 24

# CHECK-INST: nand.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0x07,0x10,0x87,0x1f]
nand.t %d1, %d0, 7, %d1, 31

# CHECK-INST: nand.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x07,0x10]
nand.t %d1, %d0, 7, %d14, 0

# CHECK-INST: nand.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0x07,0xe0,0x87,0x13]
nand.t %d1, %d0, 7, %d14, 7

# CHECK-INST: nand.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x07,0x1c]
nand.t %d1, %d0, 7, %d14, 24

# CHECK-INST: nand.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0x07,0xe0,0x87,0x1f]
nand.t %d1, %d0, 7, %d14, 31

# CHECK-INST: nand.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x07,0x10]
nand.t %d1, %d0, 7, %d15, 0

# CHECK-INST: nand.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0x07,0xf0,0x87,0x13]
nand.t %d1, %d0, 7, %d15, 7

# CHECK-INST: nand.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x07,0x1c]
nand.t %d1, %d0, 7, %d15, 24

# CHECK-INST: nand.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0x07,0xf0,0x87,0x1f]
nand.t %d1, %d0, 7, %d15, 31

# CHECK-INST: nand.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0x07,0x00,0x18,0x10]
nand.t %d1, %d0, 24, %d0, 0

# CHECK-INST: nand.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0x07,0x00,0x98,0x13]
nand.t %d1, %d0, 24, %d0, 7

# CHECK-INST: nand.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0x07,0x00,0x18,0x1c]
nand.t %d1, %d0, 24, %d0, 24

# CHECK-INST: nand.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0x07,0x00,0x98,0x1f]
nand.t %d1, %d0, 24, %d0, 31

# CHECK-INST: nand.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0x07,0x10,0x18,0x10]
nand.t %d1, %d0, 24, %d1, 0

# CHECK-INST: nand.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0x07,0x10,0x98,0x13]
nand.t %d1, %d0, 24, %d1, 7

# CHECK-INST: nand.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0x07,0x10,0x18,0x1c]
nand.t %d1, %d0, 24, %d1, 24

# CHECK-INST: nand.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0x07,0x10,0x98,0x1f]
nand.t %d1, %d0, 24, %d1, 31

# CHECK-INST: nand.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x18,0x10]
nand.t %d1, %d0, 24, %d14, 0

# CHECK-INST: nand.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0x07,0xe0,0x98,0x13]
nand.t %d1, %d0, 24, %d14, 7

# CHECK-INST: nand.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x18,0x1c]
nand.t %d1, %d0, 24, %d14, 24

# CHECK-INST: nand.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0x07,0xe0,0x98,0x1f]
nand.t %d1, %d0, 24, %d14, 31

# CHECK-INST: nand.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x18,0x10]
nand.t %d1, %d0, 24, %d15, 0

# CHECK-INST: nand.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0x07,0xf0,0x98,0x13]
nand.t %d1, %d0, 24, %d15, 7

# CHECK-INST: nand.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x18,0x1c]
nand.t %d1, %d0, 24, %d15, 24

# CHECK-INST: nand.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0x07,0xf0,0x98,0x1f]
nand.t %d1, %d0, 24, %d15, 31

# CHECK-INST: nand.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0x07,0x00,0x1f,0x10]
nand.t %d1, %d0, 31, %d0, 0

# CHECK-INST: nand.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0x07,0x00,0x9f,0x13]
nand.t %d1, %d0, 31, %d0, 7

# CHECK-INST: nand.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0x07,0x00,0x1f,0x1c]
nand.t %d1, %d0, 31, %d0, 24

# CHECK-INST: nand.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0x07,0x00,0x9f,0x1f]
nand.t %d1, %d0, 31, %d0, 31

# CHECK-INST: nand.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0x07,0x10,0x1f,0x10]
nand.t %d1, %d0, 31, %d1, 0

# CHECK-INST: nand.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0x07,0x10,0x9f,0x13]
nand.t %d1, %d0, 31, %d1, 7

# CHECK-INST: nand.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0x07,0x10,0x1f,0x1c]
nand.t %d1, %d0, 31, %d1, 24

# CHECK-INST: nand.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0x07,0x10,0x9f,0x1f]
nand.t %d1, %d0, 31, %d1, 31

# CHECK-INST: nand.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x1f,0x10]
nand.t %d1, %d0, 31, %d14, 0

# CHECK-INST: nand.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0x07,0xe0,0x9f,0x13]
nand.t %d1, %d0, 31, %d14, 7

# CHECK-INST: nand.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x1f,0x1c]
nand.t %d1, %d0, 31, %d14, 24

# CHECK-INST: nand.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0x07,0xe0,0x9f,0x1f]
nand.t %d1, %d0, 31, %d14, 31

# CHECK-INST: nand.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x1f,0x10]
nand.t %d1, %d0, 31, %d15, 0

# CHECK-INST: nand.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0x07,0xf0,0x9f,0x13]
nand.t %d1, %d0, 31, %d15, 7

# CHECK-INST: nand.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x1f,0x1c]
nand.t %d1, %d0, 31, %d15, 24

# CHECK-INST: nand.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0x07,0xf0,0x9f,0x1f]
nand.t %d1, %d0, 31, %d15, 31

# CHECK-INST: nand.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0x07,0x01,0x00,0x10]
nand.t %d1, %d1, 0, %d0, 0

# CHECK-INST: nand.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0x07,0x01,0x80,0x13]
nand.t %d1, %d1, 0, %d0, 7

# CHECK-INST: nand.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0x07,0x01,0x00,0x1c]
nand.t %d1, %d1, 0, %d0, 24

# CHECK-INST: nand.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0x07,0x01,0x80,0x1f]
nand.t %d1, %d1, 0, %d0, 31

# CHECK-INST: nand.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0x07,0x11,0x00,0x10]
nand.t %d1, %d1, 0, %d1, 0

# CHECK-INST: nand.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0x07,0x11,0x80,0x13]
nand.t %d1, %d1, 0, %d1, 7

# CHECK-INST: nand.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0x07,0x11,0x00,0x1c]
nand.t %d1, %d1, 0, %d1, 24

# CHECK-INST: nand.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0x07,0x11,0x80,0x1f]
nand.t %d1, %d1, 0, %d1, 31

# CHECK-INST: nand.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x00,0x10]
nand.t %d1, %d1, 0, %d14, 0

# CHECK-INST: nand.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0x07,0xe1,0x80,0x13]
nand.t %d1, %d1, 0, %d14, 7

# CHECK-INST: nand.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x00,0x1c]
nand.t %d1, %d1, 0, %d14, 24

# CHECK-INST: nand.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0x07,0xe1,0x80,0x1f]
nand.t %d1, %d1, 0, %d14, 31

# CHECK-INST: nand.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x00,0x10]
nand.t %d1, %d1, 0, %d15, 0

# CHECK-INST: nand.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0x07,0xf1,0x80,0x13]
nand.t %d1, %d1, 0, %d15, 7

# CHECK-INST: nand.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x00,0x1c]
nand.t %d1, %d1, 0, %d15, 24

# CHECK-INST: nand.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0x07,0xf1,0x80,0x1f]
nand.t %d1, %d1, 0, %d15, 31

# CHECK-INST: nand.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0x07,0x01,0x07,0x10]
nand.t %d1, %d1, 7, %d0, 0

# CHECK-INST: nand.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0x07,0x01,0x87,0x13]
nand.t %d1, %d1, 7, %d0, 7

# CHECK-INST: nand.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0x07,0x01,0x07,0x1c]
nand.t %d1, %d1, 7, %d0, 24

# CHECK-INST: nand.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0x07,0x01,0x87,0x1f]
nand.t %d1, %d1, 7, %d0, 31

# CHECK-INST: nand.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0x07,0x11,0x07,0x10]
nand.t %d1, %d1, 7, %d1, 0

# CHECK-INST: nand.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0x07,0x11,0x87,0x13]
nand.t %d1, %d1, 7, %d1, 7

# CHECK-INST: nand.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0x07,0x11,0x07,0x1c]
nand.t %d1, %d1, 7, %d1, 24

# CHECK-INST: nand.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0x07,0x11,0x87,0x1f]
nand.t %d1, %d1, 7, %d1, 31

# CHECK-INST: nand.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x07,0x10]
nand.t %d1, %d1, 7, %d14, 0

# CHECK-INST: nand.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0x07,0xe1,0x87,0x13]
nand.t %d1, %d1, 7, %d14, 7

# CHECK-INST: nand.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x07,0x1c]
nand.t %d1, %d1, 7, %d14, 24

# CHECK-INST: nand.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0x07,0xe1,0x87,0x1f]
nand.t %d1, %d1, 7, %d14, 31

# CHECK-INST: nand.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x07,0x10]
nand.t %d1, %d1, 7, %d15, 0

# CHECK-INST: nand.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0x07,0xf1,0x87,0x13]
nand.t %d1, %d1, 7, %d15, 7

# CHECK-INST: nand.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x07,0x1c]
nand.t %d1, %d1, 7, %d15, 24

# CHECK-INST: nand.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0x07,0xf1,0x87,0x1f]
nand.t %d1, %d1, 7, %d15, 31

# CHECK-INST: nand.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0x07,0x01,0x18,0x10]
nand.t %d1, %d1, 24, %d0, 0

# CHECK-INST: nand.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0x07,0x01,0x98,0x13]
nand.t %d1, %d1, 24, %d0, 7

# CHECK-INST: nand.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0x07,0x01,0x18,0x1c]
nand.t %d1, %d1, 24, %d0, 24

# CHECK-INST: nand.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0x07,0x01,0x98,0x1f]
nand.t %d1, %d1, 24, %d0, 31

# CHECK-INST: nand.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0x07,0x11,0x18,0x10]
nand.t %d1, %d1, 24, %d1, 0

# CHECK-INST: nand.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0x07,0x11,0x98,0x13]
nand.t %d1, %d1, 24, %d1, 7

# CHECK-INST: nand.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0x07,0x11,0x18,0x1c]
nand.t %d1, %d1, 24, %d1, 24

# CHECK-INST: nand.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0x07,0x11,0x98,0x1f]
nand.t %d1, %d1, 24, %d1, 31

# CHECK-INST: nand.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x18,0x10]
nand.t %d1, %d1, 24, %d14, 0

# CHECK-INST: nand.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0x07,0xe1,0x98,0x13]
nand.t %d1, %d1, 24, %d14, 7

# CHECK-INST: nand.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x18,0x1c]
nand.t %d1, %d1, 24, %d14, 24

# CHECK-INST: nand.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0x07,0xe1,0x98,0x1f]
nand.t %d1, %d1, 24, %d14, 31

# CHECK-INST: nand.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x18,0x10]
nand.t %d1, %d1, 24, %d15, 0

# CHECK-INST: nand.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0x07,0xf1,0x98,0x13]
nand.t %d1, %d1, 24, %d15, 7

# CHECK-INST: nand.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x18,0x1c]
nand.t %d1, %d1, 24, %d15, 24

# CHECK-INST: nand.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0x07,0xf1,0x98,0x1f]
nand.t %d1, %d1, 24, %d15, 31

# CHECK-INST: nand.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0x07,0x01,0x1f,0x10]
nand.t %d1, %d1, 31, %d0, 0

# CHECK-INST: nand.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0x07,0x01,0x9f,0x13]
nand.t %d1, %d1, 31, %d0, 7

# CHECK-INST: nand.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0x07,0x01,0x1f,0x1c]
nand.t %d1, %d1, 31, %d0, 24

# CHECK-INST: nand.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0x07,0x01,0x9f,0x1f]
nand.t %d1, %d1, 31, %d0, 31

# CHECK-INST: nand.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0x07,0x11,0x1f,0x10]
nand.t %d1, %d1, 31, %d1, 0

# CHECK-INST: nand.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0x07,0x11,0x9f,0x13]
nand.t %d1, %d1, 31, %d1, 7

# CHECK-INST: nand.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0x07,0x11,0x1f,0x1c]
nand.t %d1, %d1, 31, %d1, 24

# CHECK-INST: nand.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0x07,0x11,0x9f,0x1f]
nand.t %d1, %d1, 31, %d1, 31

# CHECK-INST: nand.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x1f,0x10]
nand.t %d1, %d1, 31, %d14, 0

# CHECK-INST: nand.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0x07,0xe1,0x9f,0x13]
nand.t %d1, %d1, 31, %d14, 7

# CHECK-INST: nand.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x1f,0x1c]
nand.t %d1, %d1, 31, %d14, 24

# CHECK-INST: nand.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0x07,0xe1,0x9f,0x1f]
nand.t %d1, %d1, 31, %d14, 31

# CHECK-INST: nand.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x1f,0x10]
nand.t %d1, %d1, 31, %d15, 0

# CHECK-INST: nand.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0x07,0xf1,0x9f,0x13]
nand.t %d1, %d1, 31, %d15, 7

# CHECK-INST: nand.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x1f,0x1c]
nand.t %d1, %d1, 31, %d15, 24

# CHECK-INST: nand.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0x07,0xf1,0x9f,0x1f]
nand.t %d1, %d1, 31, %d15, 31

# CHECK-INST: nand.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x00,0x10]
nand.t %d1, %d14, 0, %d0, 0

# CHECK-INST: nand.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0x07,0x0e,0x80,0x13]
nand.t %d1, %d14, 0, %d0, 7

# CHECK-INST: nand.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x00,0x1c]
nand.t %d1, %d14, 0, %d0, 24

# CHECK-INST: nand.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0x07,0x0e,0x80,0x1f]
nand.t %d1, %d14, 0, %d0, 31

# CHECK-INST: nand.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x00,0x10]
nand.t %d1, %d14, 0, %d1, 0

# CHECK-INST: nand.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0x07,0x1e,0x80,0x13]
nand.t %d1, %d14, 0, %d1, 7

# CHECK-INST: nand.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x00,0x1c]
nand.t %d1, %d14, 0, %d1, 24

# CHECK-INST: nand.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0x07,0x1e,0x80,0x1f]
nand.t %d1, %d14, 0, %d1, 31

# CHECK-INST: nand.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0x07,0xee,0x00,0x10]
nand.t %d1, %d14, 0, %d14, 0

# CHECK-INST: nand.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0x07,0xee,0x80,0x13]
nand.t %d1, %d14, 0, %d14, 7

# CHECK-INST: nand.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0x07,0xee,0x00,0x1c]
nand.t %d1, %d14, 0, %d14, 24

# CHECK-INST: nand.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0x07,0xee,0x80,0x1f]
nand.t %d1, %d14, 0, %d14, 31

# CHECK-INST: nand.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x00,0x10]
nand.t %d1, %d14, 0, %d15, 0

# CHECK-INST: nand.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0x07,0xfe,0x80,0x13]
nand.t %d1, %d14, 0, %d15, 7

# CHECK-INST: nand.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x00,0x1c]
nand.t %d1, %d14, 0, %d15, 24

# CHECK-INST: nand.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0x07,0xfe,0x80,0x1f]
nand.t %d1, %d14, 0, %d15, 31

# CHECK-INST: nand.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x07,0x10]
nand.t %d1, %d14, 7, %d0, 0

# CHECK-INST: nand.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0x07,0x0e,0x87,0x13]
nand.t %d1, %d14, 7, %d0, 7

# CHECK-INST: nand.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x07,0x1c]
nand.t %d1, %d14, 7, %d0, 24

# CHECK-INST: nand.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0x07,0x0e,0x87,0x1f]
nand.t %d1, %d14, 7, %d0, 31

# CHECK-INST: nand.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x07,0x10]
nand.t %d1, %d14, 7, %d1, 0

# CHECK-INST: nand.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0x07,0x1e,0x87,0x13]
nand.t %d1, %d14, 7, %d1, 7

# CHECK-INST: nand.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x07,0x1c]
nand.t %d1, %d14, 7, %d1, 24

# CHECK-INST: nand.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0x07,0x1e,0x87,0x1f]
nand.t %d1, %d14, 7, %d1, 31

# CHECK-INST: nand.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0x07,0xee,0x07,0x10]
nand.t %d1, %d14, 7, %d14, 0

# CHECK-INST: nand.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0x07,0xee,0x87,0x13]
nand.t %d1, %d14, 7, %d14, 7

# CHECK-INST: nand.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0x07,0xee,0x07,0x1c]
nand.t %d1, %d14, 7, %d14, 24

# CHECK-INST: nand.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0x07,0xee,0x87,0x1f]
nand.t %d1, %d14, 7, %d14, 31

# CHECK-INST: nand.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x07,0x10]
nand.t %d1, %d14, 7, %d15, 0

# CHECK-INST: nand.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0x07,0xfe,0x87,0x13]
nand.t %d1, %d14, 7, %d15, 7

# CHECK-INST: nand.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x07,0x1c]
nand.t %d1, %d14, 7, %d15, 24

# CHECK-INST: nand.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0x07,0xfe,0x87,0x1f]
nand.t %d1, %d14, 7, %d15, 31

# CHECK-INST: nand.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x18,0x10]
nand.t %d1, %d14, 24, %d0, 0

# CHECK-INST: nand.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0x07,0x0e,0x98,0x13]
nand.t %d1, %d14, 24, %d0, 7

# CHECK-INST: nand.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x18,0x1c]
nand.t %d1, %d14, 24, %d0, 24

# CHECK-INST: nand.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0x07,0x0e,0x98,0x1f]
nand.t %d1, %d14, 24, %d0, 31

# CHECK-INST: nand.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x18,0x10]
nand.t %d1, %d14, 24, %d1, 0

# CHECK-INST: nand.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0x07,0x1e,0x98,0x13]
nand.t %d1, %d14, 24, %d1, 7

# CHECK-INST: nand.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x18,0x1c]
nand.t %d1, %d14, 24, %d1, 24

# CHECK-INST: nand.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0x07,0x1e,0x98,0x1f]
nand.t %d1, %d14, 24, %d1, 31

# CHECK-INST: nand.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0x07,0xee,0x18,0x10]
nand.t %d1, %d14, 24, %d14, 0

# CHECK-INST: nand.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0x07,0xee,0x98,0x13]
nand.t %d1, %d14, 24, %d14, 7

# CHECK-INST: nand.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0x07,0xee,0x18,0x1c]
nand.t %d1, %d14, 24, %d14, 24

# CHECK-INST: nand.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0x07,0xee,0x98,0x1f]
nand.t %d1, %d14, 24, %d14, 31

# CHECK-INST: nand.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x18,0x10]
nand.t %d1, %d14, 24, %d15, 0

# CHECK-INST: nand.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0x07,0xfe,0x98,0x13]
nand.t %d1, %d14, 24, %d15, 7

# CHECK-INST: nand.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x18,0x1c]
nand.t %d1, %d14, 24, %d15, 24

# CHECK-INST: nand.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0x07,0xfe,0x98,0x1f]
nand.t %d1, %d14, 24, %d15, 31

# CHECK-INST: nand.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x1f,0x10]
nand.t %d1, %d14, 31, %d0, 0

# CHECK-INST: nand.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0x07,0x0e,0x9f,0x13]
nand.t %d1, %d14, 31, %d0, 7

# CHECK-INST: nand.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x1f,0x1c]
nand.t %d1, %d14, 31, %d0, 24

# CHECK-INST: nand.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0x07,0x0e,0x9f,0x1f]
nand.t %d1, %d14, 31, %d0, 31

# CHECK-INST: nand.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x1f,0x10]
nand.t %d1, %d14, 31, %d1, 0

# CHECK-INST: nand.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0x07,0x1e,0x9f,0x13]
nand.t %d1, %d14, 31, %d1, 7

# CHECK-INST: nand.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x1f,0x1c]
nand.t %d1, %d14, 31, %d1, 24

# CHECK-INST: nand.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0x07,0x1e,0x9f,0x1f]
nand.t %d1, %d14, 31, %d1, 31

# CHECK-INST: nand.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0x07,0xee,0x1f,0x10]
nand.t %d1, %d14, 31, %d14, 0

# CHECK-INST: nand.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0x07,0xee,0x9f,0x13]
nand.t %d1, %d14, 31, %d14, 7

# CHECK-INST: nand.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0x07,0xee,0x1f,0x1c]
nand.t %d1, %d14, 31, %d14, 24

# CHECK-INST: nand.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0x07,0xee,0x9f,0x1f]
nand.t %d1, %d14, 31, %d14, 31

# CHECK-INST: nand.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x1f,0x10]
nand.t %d1, %d14, 31, %d15, 0

# CHECK-INST: nand.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0x07,0xfe,0x9f,0x13]
nand.t %d1, %d14, 31, %d15, 7

# CHECK-INST: nand.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x1f,0x1c]
nand.t %d1, %d14, 31, %d15, 24

# CHECK-INST: nand.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0x07,0xfe,0x9f,0x1f]
nand.t %d1, %d14, 31, %d15, 31

# CHECK-INST: nand.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x00,0x10]
nand.t %d1, %d15, 0, %d0, 0

# CHECK-INST: nand.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0x07,0x0f,0x80,0x13]
nand.t %d1, %d15, 0, %d0, 7

# CHECK-INST: nand.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x00,0x1c]
nand.t %d1, %d15, 0, %d0, 24

# CHECK-INST: nand.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0x07,0x0f,0x80,0x1f]
nand.t %d1, %d15, 0, %d0, 31

# CHECK-INST: nand.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x00,0x10]
nand.t %d1, %d15, 0, %d1, 0

# CHECK-INST: nand.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0x07,0x1f,0x80,0x13]
nand.t %d1, %d15, 0, %d1, 7

# CHECK-INST: nand.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x00,0x1c]
nand.t %d1, %d15, 0, %d1, 24

# CHECK-INST: nand.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0x07,0x1f,0x80,0x1f]
nand.t %d1, %d15, 0, %d1, 31

# CHECK-INST: nand.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0x07,0xef,0x00,0x10]
nand.t %d1, %d15, 0, %d14, 0

# CHECK-INST: nand.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0x07,0xef,0x80,0x13]
nand.t %d1, %d15, 0, %d14, 7

# CHECK-INST: nand.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0x07,0xef,0x00,0x1c]
nand.t %d1, %d15, 0, %d14, 24

# CHECK-INST: nand.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0x07,0xef,0x80,0x1f]
nand.t %d1, %d15, 0, %d14, 31

# CHECK-INST: nand.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0x07,0xff,0x00,0x10]
nand.t %d1, %d15, 0, %d15, 0

# CHECK-INST: nand.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0x07,0xff,0x80,0x13]
nand.t %d1, %d15, 0, %d15, 7

# CHECK-INST: nand.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0x07,0xff,0x00,0x1c]
nand.t %d1, %d15, 0, %d15, 24

# CHECK-INST: nand.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0x07,0xff,0x80,0x1f]
nand.t %d1, %d15, 0, %d15, 31

# CHECK-INST: nand.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x07,0x10]
nand.t %d1, %d15, 7, %d0, 0

# CHECK-INST: nand.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0x07,0x0f,0x87,0x13]
nand.t %d1, %d15, 7, %d0, 7

# CHECK-INST: nand.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x07,0x1c]
nand.t %d1, %d15, 7, %d0, 24

# CHECK-INST: nand.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0x07,0x0f,0x87,0x1f]
nand.t %d1, %d15, 7, %d0, 31

# CHECK-INST: nand.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x07,0x10]
nand.t %d1, %d15, 7, %d1, 0

# CHECK-INST: nand.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0x07,0x1f,0x87,0x13]
nand.t %d1, %d15, 7, %d1, 7

# CHECK-INST: nand.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x07,0x1c]
nand.t %d1, %d15, 7, %d1, 24

# CHECK-INST: nand.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0x07,0x1f,0x87,0x1f]
nand.t %d1, %d15, 7, %d1, 31

# CHECK-INST: nand.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0x07,0xef,0x07,0x10]
nand.t %d1, %d15, 7, %d14, 0

# CHECK-INST: nand.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0x07,0xef,0x87,0x13]
nand.t %d1, %d15, 7, %d14, 7

# CHECK-INST: nand.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0x07,0xef,0x07,0x1c]
nand.t %d1, %d15, 7, %d14, 24

# CHECK-INST: nand.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0x07,0xef,0x87,0x1f]
nand.t %d1, %d15, 7, %d14, 31

# CHECK-INST: nand.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0x07,0xff,0x07,0x10]
nand.t %d1, %d15, 7, %d15, 0

# CHECK-INST: nand.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0x07,0xff,0x87,0x13]
nand.t %d1, %d15, 7, %d15, 7

# CHECK-INST: nand.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0x07,0xff,0x07,0x1c]
nand.t %d1, %d15, 7, %d15, 24

# CHECK-INST: nand.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0x07,0xff,0x87,0x1f]
nand.t %d1, %d15, 7, %d15, 31

# CHECK-INST: nand.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x18,0x10]
nand.t %d1, %d15, 24, %d0, 0

# CHECK-INST: nand.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0x07,0x0f,0x98,0x13]
nand.t %d1, %d15, 24, %d0, 7

# CHECK-INST: nand.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x18,0x1c]
nand.t %d1, %d15, 24, %d0, 24

# CHECK-INST: nand.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0x07,0x0f,0x98,0x1f]
nand.t %d1, %d15, 24, %d0, 31

# CHECK-INST: nand.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x18,0x10]
nand.t %d1, %d15, 24, %d1, 0

# CHECK-INST: nand.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0x07,0x1f,0x98,0x13]
nand.t %d1, %d15, 24, %d1, 7

# CHECK-INST: nand.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x18,0x1c]
nand.t %d1, %d15, 24, %d1, 24

# CHECK-INST: nand.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0x07,0x1f,0x98,0x1f]
nand.t %d1, %d15, 24, %d1, 31

# CHECK-INST: nand.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0x07,0xef,0x18,0x10]
nand.t %d1, %d15, 24, %d14, 0

# CHECK-INST: nand.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0x07,0xef,0x98,0x13]
nand.t %d1, %d15, 24, %d14, 7

# CHECK-INST: nand.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0x07,0xef,0x18,0x1c]
nand.t %d1, %d15, 24, %d14, 24

# CHECK-INST: nand.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0x07,0xef,0x98,0x1f]
nand.t %d1, %d15, 24, %d14, 31

# CHECK-INST: nand.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0x07,0xff,0x18,0x10]
nand.t %d1, %d15, 24, %d15, 0

# CHECK-INST: nand.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0x07,0xff,0x98,0x13]
nand.t %d1, %d15, 24, %d15, 7

# CHECK-INST: nand.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0x07,0xff,0x18,0x1c]
nand.t %d1, %d15, 24, %d15, 24

# CHECK-INST: nand.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0x07,0xff,0x98,0x1f]
nand.t %d1, %d15, 24, %d15, 31

# CHECK-INST: nand.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x1f,0x10]
nand.t %d1, %d15, 31, %d0, 0

# CHECK-INST: nand.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0x07,0x0f,0x9f,0x13]
nand.t %d1, %d15, 31, %d0, 7

# CHECK-INST: nand.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x1f,0x1c]
nand.t %d1, %d15, 31, %d0, 24

# CHECK-INST: nand.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0x07,0x0f,0x9f,0x1f]
nand.t %d1, %d15, 31, %d0, 31

# CHECK-INST: nand.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x1f,0x10]
nand.t %d1, %d15, 31, %d1, 0

# CHECK-INST: nand.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0x07,0x1f,0x9f,0x13]
nand.t %d1, %d15, 31, %d1, 7

# CHECK-INST: nand.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x1f,0x1c]
nand.t %d1, %d15, 31, %d1, 24

# CHECK-INST: nand.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0x07,0x1f,0x9f,0x1f]
nand.t %d1, %d15, 31, %d1, 31

# CHECK-INST: nand.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0x07,0xef,0x1f,0x10]
nand.t %d1, %d15, 31, %d14, 0

# CHECK-INST: nand.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0x07,0xef,0x9f,0x13]
nand.t %d1, %d15, 31, %d14, 7

# CHECK-INST: nand.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0x07,0xef,0x1f,0x1c]
nand.t %d1, %d15, 31, %d14, 24

# CHECK-INST: nand.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0x07,0xef,0x9f,0x1f]
nand.t %d1, %d15, 31, %d14, 31

# CHECK-INST: nand.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0x07,0xff,0x1f,0x10]
nand.t %d1, %d15, 31, %d15, 0

# CHECK-INST: nand.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0x07,0xff,0x9f,0x13]
nand.t %d1, %d15, 31, %d15, 7

# CHECK-INST: nand.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0x07,0xff,0x1f,0x1c]
nand.t %d1, %d15, 31, %d15, 24

# CHECK-INST: nand.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0x07,0xff,0x9f,0x1f]
nand.t %d1, %d15, 31, %d15, 31

# CHECK-INST: nand.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x00,0xe0]
nand.t %d14, %d0, 0, %d0, 0

# CHECK-INST: nand.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0x07,0x00,0x80,0xe3]
nand.t %d14, %d0, 0, %d0, 7

# CHECK-INST: nand.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0x07,0x00,0x00,0xec]
nand.t %d14, %d0, 0, %d0, 24

# CHECK-INST: nand.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0x07,0x00,0x80,0xef]
nand.t %d14, %d0, 0, %d0, 31

# CHECK-INST: nand.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0x07,0x10,0x00,0xe0]
nand.t %d14, %d0, 0, %d1, 0

# CHECK-INST: nand.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0x07,0x10,0x80,0xe3]
nand.t %d14, %d0, 0, %d1, 7

# CHECK-INST: nand.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0x07,0x10,0x00,0xec]
nand.t %d14, %d0, 0, %d1, 24

# CHECK-INST: nand.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0x07,0x10,0x80,0xef]
nand.t %d14, %d0, 0, %d1, 31

# CHECK-INST: nand.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x00,0xe0]
nand.t %d14, %d0, 0, %d14, 0

# CHECK-INST: nand.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0x07,0xe0,0x80,0xe3]
nand.t %d14, %d0, 0, %d14, 7

# CHECK-INST: nand.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x00,0xec]
nand.t %d14, %d0, 0, %d14, 24

# CHECK-INST: nand.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0x07,0xe0,0x80,0xef]
nand.t %d14, %d0, 0, %d14, 31

# CHECK-INST: nand.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x00,0xe0]
nand.t %d14, %d0, 0, %d15, 0

# CHECK-INST: nand.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0x07,0xf0,0x80,0xe3]
nand.t %d14, %d0, 0, %d15, 7

# CHECK-INST: nand.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x00,0xec]
nand.t %d14, %d0, 0, %d15, 24

# CHECK-INST: nand.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0x07,0xf0,0x80,0xef]
nand.t %d14, %d0, 0, %d15, 31

# CHECK-INST: nand.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0x07,0x00,0x07,0xe0]
nand.t %d14, %d0, 7, %d0, 0

# CHECK-INST: nand.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0x07,0x00,0x87,0xe3]
nand.t %d14, %d0, 7, %d0, 7

# CHECK-INST: nand.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0x07,0x00,0x07,0xec]
nand.t %d14, %d0, 7, %d0, 24

# CHECK-INST: nand.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0x07,0x00,0x87,0xef]
nand.t %d14, %d0, 7, %d0, 31

# CHECK-INST: nand.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0x07,0x10,0x07,0xe0]
nand.t %d14, %d0, 7, %d1, 0

# CHECK-INST: nand.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0x07,0x10,0x87,0xe3]
nand.t %d14, %d0, 7, %d1, 7

# CHECK-INST: nand.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0x07,0x10,0x07,0xec]
nand.t %d14, %d0, 7, %d1, 24

# CHECK-INST: nand.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0x07,0x10,0x87,0xef]
nand.t %d14, %d0, 7, %d1, 31

# CHECK-INST: nand.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x07,0xe0]
nand.t %d14, %d0, 7, %d14, 0

# CHECK-INST: nand.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0x07,0xe0,0x87,0xe3]
nand.t %d14, %d0, 7, %d14, 7

# CHECK-INST: nand.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x07,0xec]
nand.t %d14, %d0, 7, %d14, 24

# CHECK-INST: nand.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0x07,0xe0,0x87,0xef]
nand.t %d14, %d0, 7, %d14, 31

# CHECK-INST: nand.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x07,0xe0]
nand.t %d14, %d0, 7, %d15, 0

# CHECK-INST: nand.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0x07,0xf0,0x87,0xe3]
nand.t %d14, %d0, 7, %d15, 7

# CHECK-INST: nand.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x07,0xec]
nand.t %d14, %d0, 7, %d15, 24

# CHECK-INST: nand.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0x07,0xf0,0x87,0xef]
nand.t %d14, %d0, 7, %d15, 31

# CHECK-INST: nand.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0x07,0x00,0x18,0xe0]
nand.t %d14, %d0, 24, %d0, 0

# CHECK-INST: nand.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0x07,0x00,0x98,0xe3]
nand.t %d14, %d0, 24, %d0, 7

# CHECK-INST: nand.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0x07,0x00,0x18,0xec]
nand.t %d14, %d0, 24, %d0, 24

# CHECK-INST: nand.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0x07,0x00,0x98,0xef]
nand.t %d14, %d0, 24, %d0, 31

# CHECK-INST: nand.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0x07,0x10,0x18,0xe0]
nand.t %d14, %d0, 24, %d1, 0

# CHECK-INST: nand.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0x07,0x10,0x98,0xe3]
nand.t %d14, %d0, 24, %d1, 7

# CHECK-INST: nand.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0x07,0x10,0x18,0xec]
nand.t %d14, %d0, 24, %d1, 24

# CHECK-INST: nand.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0x07,0x10,0x98,0xef]
nand.t %d14, %d0, 24, %d1, 31

# CHECK-INST: nand.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x18,0xe0]
nand.t %d14, %d0, 24, %d14, 0

# CHECK-INST: nand.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0x07,0xe0,0x98,0xe3]
nand.t %d14, %d0, 24, %d14, 7

# CHECK-INST: nand.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x18,0xec]
nand.t %d14, %d0, 24, %d14, 24

# CHECK-INST: nand.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0x07,0xe0,0x98,0xef]
nand.t %d14, %d0, 24, %d14, 31

# CHECK-INST: nand.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x18,0xe0]
nand.t %d14, %d0, 24, %d15, 0

# CHECK-INST: nand.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0x07,0xf0,0x98,0xe3]
nand.t %d14, %d0, 24, %d15, 7

# CHECK-INST: nand.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x18,0xec]
nand.t %d14, %d0, 24, %d15, 24

# CHECK-INST: nand.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0x07,0xf0,0x98,0xef]
nand.t %d14, %d0, 24, %d15, 31

# CHECK-INST: nand.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0x07,0x00,0x1f,0xe0]
nand.t %d14, %d0, 31, %d0, 0

# CHECK-INST: nand.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0x07,0x00,0x9f,0xe3]
nand.t %d14, %d0, 31, %d0, 7

# CHECK-INST: nand.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0x07,0x00,0x1f,0xec]
nand.t %d14, %d0, 31, %d0, 24

# CHECK-INST: nand.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0x07,0x00,0x9f,0xef]
nand.t %d14, %d0, 31, %d0, 31

# CHECK-INST: nand.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0x07,0x10,0x1f,0xe0]
nand.t %d14, %d0, 31, %d1, 0

# CHECK-INST: nand.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0x07,0x10,0x9f,0xe3]
nand.t %d14, %d0, 31, %d1, 7

# CHECK-INST: nand.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0x07,0x10,0x1f,0xec]
nand.t %d14, %d0, 31, %d1, 24

# CHECK-INST: nand.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0x07,0x10,0x9f,0xef]
nand.t %d14, %d0, 31, %d1, 31

# CHECK-INST: nand.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x1f,0xe0]
nand.t %d14, %d0, 31, %d14, 0

# CHECK-INST: nand.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0x07,0xe0,0x9f,0xe3]
nand.t %d14, %d0, 31, %d14, 7

# CHECK-INST: nand.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x1f,0xec]
nand.t %d14, %d0, 31, %d14, 24

# CHECK-INST: nand.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0x07,0xe0,0x9f,0xef]
nand.t %d14, %d0, 31, %d14, 31

# CHECK-INST: nand.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x1f,0xe0]
nand.t %d14, %d0, 31, %d15, 0

# CHECK-INST: nand.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0x07,0xf0,0x9f,0xe3]
nand.t %d14, %d0, 31, %d15, 7

# CHECK-INST: nand.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x1f,0xec]
nand.t %d14, %d0, 31, %d15, 24

# CHECK-INST: nand.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0x07,0xf0,0x9f,0xef]
nand.t %d14, %d0, 31, %d15, 31

# CHECK-INST: nand.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0x07,0x01,0x00,0xe0]
nand.t %d14, %d1, 0, %d0, 0

# CHECK-INST: nand.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0x07,0x01,0x80,0xe3]
nand.t %d14, %d1, 0, %d0, 7

# CHECK-INST: nand.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0x07,0x01,0x00,0xec]
nand.t %d14, %d1, 0, %d0, 24

# CHECK-INST: nand.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0x07,0x01,0x80,0xef]
nand.t %d14, %d1, 0, %d0, 31

# CHECK-INST: nand.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0x07,0x11,0x00,0xe0]
nand.t %d14, %d1, 0, %d1, 0

# CHECK-INST: nand.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0x07,0x11,0x80,0xe3]
nand.t %d14, %d1, 0, %d1, 7

# CHECK-INST: nand.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0x07,0x11,0x00,0xec]
nand.t %d14, %d1, 0, %d1, 24

# CHECK-INST: nand.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0x07,0x11,0x80,0xef]
nand.t %d14, %d1, 0, %d1, 31

# CHECK-INST: nand.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x00,0xe0]
nand.t %d14, %d1, 0, %d14, 0

# CHECK-INST: nand.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0x07,0xe1,0x80,0xe3]
nand.t %d14, %d1, 0, %d14, 7

# CHECK-INST: nand.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x00,0xec]
nand.t %d14, %d1, 0, %d14, 24

# CHECK-INST: nand.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0x07,0xe1,0x80,0xef]
nand.t %d14, %d1, 0, %d14, 31

# CHECK-INST: nand.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x00,0xe0]
nand.t %d14, %d1, 0, %d15, 0

# CHECK-INST: nand.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0x07,0xf1,0x80,0xe3]
nand.t %d14, %d1, 0, %d15, 7

# CHECK-INST: nand.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x00,0xec]
nand.t %d14, %d1, 0, %d15, 24

# CHECK-INST: nand.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0x07,0xf1,0x80,0xef]
nand.t %d14, %d1, 0, %d15, 31

# CHECK-INST: nand.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0x07,0x01,0x07,0xe0]
nand.t %d14, %d1, 7, %d0, 0

# CHECK-INST: nand.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0x07,0x01,0x87,0xe3]
nand.t %d14, %d1, 7, %d0, 7

# CHECK-INST: nand.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0x07,0x01,0x07,0xec]
nand.t %d14, %d1, 7, %d0, 24

# CHECK-INST: nand.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0x07,0x01,0x87,0xef]
nand.t %d14, %d1, 7, %d0, 31

# CHECK-INST: nand.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0x07,0x11,0x07,0xe0]
nand.t %d14, %d1, 7, %d1, 0

# CHECK-INST: nand.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0x07,0x11,0x87,0xe3]
nand.t %d14, %d1, 7, %d1, 7

# CHECK-INST: nand.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0x07,0x11,0x07,0xec]
nand.t %d14, %d1, 7, %d1, 24

# CHECK-INST: nand.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0x07,0x11,0x87,0xef]
nand.t %d14, %d1, 7, %d1, 31

# CHECK-INST: nand.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x07,0xe0]
nand.t %d14, %d1, 7, %d14, 0

# CHECK-INST: nand.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0x07,0xe1,0x87,0xe3]
nand.t %d14, %d1, 7, %d14, 7

# CHECK-INST: nand.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x07,0xec]
nand.t %d14, %d1, 7, %d14, 24

# CHECK-INST: nand.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0x07,0xe1,0x87,0xef]
nand.t %d14, %d1, 7, %d14, 31

# CHECK-INST: nand.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x07,0xe0]
nand.t %d14, %d1, 7, %d15, 0

# CHECK-INST: nand.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0x07,0xf1,0x87,0xe3]
nand.t %d14, %d1, 7, %d15, 7

# CHECK-INST: nand.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x07,0xec]
nand.t %d14, %d1, 7, %d15, 24

# CHECK-INST: nand.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0x07,0xf1,0x87,0xef]
nand.t %d14, %d1, 7, %d15, 31

# CHECK-INST: nand.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0x07,0x01,0x18,0xe0]
nand.t %d14, %d1, 24, %d0, 0

# CHECK-INST: nand.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0x07,0x01,0x98,0xe3]
nand.t %d14, %d1, 24, %d0, 7

# CHECK-INST: nand.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0x07,0x01,0x18,0xec]
nand.t %d14, %d1, 24, %d0, 24

# CHECK-INST: nand.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0x07,0x01,0x98,0xef]
nand.t %d14, %d1, 24, %d0, 31

# CHECK-INST: nand.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0x07,0x11,0x18,0xe0]
nand.t %d14, %d1, 24, %d1, 0

# CHECK-INST: nand.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0x07,0x11,0x98,0xe3]
nand.t %d14, %d1, 24, %d1, 7

# CHECK-INST: nand.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0x07,0x11,0x18,0xec]
nand.t %d14, %d1, 24, %d1, 24

# CHECK-INST: nand.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0x07,0x11,0x98,0xef]
nand.t %d14, %d1, 24, %d1, 31

# CHECK-INST: nand.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x18,0xe0]
nand.t %d14, %d1, 24, %d14, 0

# CHECK-INST: nand.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0x07,0xe1,0x98,0xe3]
nand.t %d14, %d1, 24, %d14, 7

# CHECK-INST: nand.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x18,0xec]
nand.t %d14, %d1, 24, %d14, 24

# CHECK-INST: nand.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0x07,0xe1,0x98,0xef]
nand.t %d14, %d1, 24, %d14, 31

# CHECK-INST: nand.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x18,0xe0]
nand.t %d14, %d1, 24, %d15, 0

# CHECK-INST: nand.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0x07,0xf1,0x98,0xe3]
nand.t %d14, %d1, 24, %d15, 7

# CHECK-INST: nand.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x18,0xec]
nand.t %d14, %d1, 24, %d15, 24

# CHECK-INST: nand.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0x07,0xf1,0x98,0xef]
nand.t %d14, %d1, 24, %d15, 31

# CHECK-INST: nand.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0x07,0x01,0x1f,0xe0]
nand.t %d14, %d1, 31, %d0, 0

# CHECK-INST: nand.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0x07,0x01,0x9f,0xe3]
nand.t %d14, %d1, 31, %d0, 7

# CHECK-INST: nand.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0x07,0x01,0x1f,0xec]
nand.t %d14, %d1, 31, %d0, 24

# CHECK-INST: nand.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0x07,0x01,0x9f,0xef]
nand.t %d14, %d1, 31, %d0, 31

# CHECK-INST: nand.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0x07,0x11,0x1f,0xe0]
nand.t %d14, %d1, 31, %d1, 0

# CHECK-INST: nand.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0x07,0x11,0x9f,0xe3]
nand.t %d14, %d1, 31, %d1, 7

# CHECK-INST: nand.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0x07,0x11,0x1f,0xec]
nand.t %d14, %d1, 31, %d1, 24

# CHECK-INST: nand.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0x07,0x11,0x9f,0xef]
nand.t %d14, %d1, 31, %d1, 31

# CHECK-INST: nand.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x1f,0xe0]
nand.t %d14, %d1, 31, %d14, 0

# CHECK-INST: nand.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0x07,0xe1,0x9f,0xe3]
nand.t %d14, %d1, 31, %d14, 7

# CHECK-INST: nand.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x1f,0xec]
nand.t %d14, %d1, 31, %d14, 24

# CHECK-INST: nand.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0x07,0xe1,0x9f,0xef]
nand.t %d14, %d1, 31, %d14, 31

# CHECK-INST: nand.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x1f,0xe0]
nand.t %d14, %d1, 31, %d15, 0

# CHECK-INST: nand.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0x07,0xf1,0x9f,0xe3]
nand.t %d14, %d1, 31, %d15, 7

# CHECK-INST: nand.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x1f,0xec]
nand.t %d14, %d1, 31, %d15, 24

# CHECK-INST: nand.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0x07,0xf1,0x9f,0xef]
nand.t %d14, %d1, 31, %d15, 31

# CHECK-INST: nand.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x00,0xe0]
nand.t %d14, %d14, 0, %d0, 0

# CHECK-INST: nand.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0x07,0x0e,0x80,0xe3]
nand.t %d14, %d14, 0, %d0, 7

# CHECK-INST: nand.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x00,0xec]
nand.t %d14, %d14, 0, %d0, 24

# CHECK-INST: nand.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0x07,0x0e,0x80,0xef]
nand.t %d14, %d14, 0, %d0, 31

# CHECK-INST: nand.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x00,0xe0]
nand.t %d14, %d14, 0, %d1, 0

# CHECK-INST: nand.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0x07,0x1e,0x80,0xe3]
nand.t %d14, %d14, 0, %d1, 7

# CHECK-INST: nand.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x00,0xec]
nand.t %d14, %d14, 0, %d1, 24

# CHECK-INST: nand.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0x07,0x1e,0x80,0xef]
nand.t %d14, %d14, 0, %d1, 31

# CHECK-INST: nand.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0x07,0xee,0x00,0xe0]
nand.t %d14, %d14, 0, %d14, 0

# CHECK-INST: nand.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0x07,0xee,0x80,0xe3]
nand.t %d14, %d14, 0, %d14, 7

# CHECK-INST: nand.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0x07,0xee,0x00,0xec]
nand.t %d14, %d14, 0, %d14, 24

# CHECK-INST: nand.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0x07,0xee,0x80,0xef]
nand.t %d14, %d14, 0, %d14, 31

# CHECK-INST: nand.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x00,0xe0]
nand.t %d14, %d14, 0, %d15, 0

# CHECK-INST: nand.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0x07,0xfe,0x80,0xe3]
nand.t %d14, %d14, 0, %d15, 7

# CHECK-INST: nand.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x00,0xec]
nand.t %d14, %d14, 0, %d15, 24

# CHECK-INST: nand.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0x07,0xfe,0x80,0xef]
nand.t %d14, %d14, 0, %d15, 31

# CHECK-INST: nand.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x07,0xe0]
nand.t %d14, %d14, 7, %d0, 0

# CHECK-INST: nand.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0x07,0x0e,0x87,0xe3]
nand.t %d14, %d14, 7, %d0, 7

# CHECK-INST: nand.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x07,0xec]
nand.t %d14, %d14, 7, %d0, 24

# CHECK-INST: nand.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0x07,0x0e,0x87,0xef]
nand.t %d14, %d14, 7, %d0, 31

# CHECK-INST: nand.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x07,0xe0]
nand.t %d14, %d14, 7, %d1, 0

# CHECK-INST: nand.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0x07,0x1e,0x87,0xe3]
nand.t %d14, %d14, 7, %d1, 7

# CHECK-INST: nand.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x07,0xec]
nand.t %d14, %d14, 7, %d1, 24

# CHECK-INST: nand.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0x07,0x1e,0x87,0xef]
nand.t %d14, %d14, 7, %d1, 31

# CHECK-INST: nand.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0x07,0xee,0x07,0xe0]
nand.t %d14, %d14, 7, %d14, 0

# CHECK-INST: nand.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0x07,0xee,0x87,0xe3]
nand.t %d14, %d14, 7, %d14, 7

# CHECK-INST: nand.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0x07,0xee,0x07,0xec]
nand.t %d14, %d14, 7, %d14, 24

# CHECK-INST: nand.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0x07,0xee,0x87,0xef]
nand.t %d14, %d14, 7, %d14, 31

# CHECK-INST: nand.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x07,0xe0]
nand.t %d14, %d14, 7, %d15, 0

# CHECK-INST: nand.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0x07,0xfe,0x87,0xe3]
nand.t %d14, %d14, 7, %d15, 7

# CHECK-INST: nand.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x07,0xec]
nand.t %d14, %d14, 7, %d15, 24

# CHECK-INST: nand.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0x07,0xfe,0x87,0xef]
nand.t %d14, %d14, 7, %d15, 31

# CHECK-INST: nand.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x18,0xe0]
nand.t %d14, %d14, 24, %d0, 0

# CHECK-INST: nand.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0x07,0x0e,0x98,0xe3]
nand.t %d14, %d14, 24, %d0, 7

# CHECK-INST: nand.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x18,0xec]
nand.t %d14, %d14, 24, %d0, 24

# CHECK-INST: nand.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0x07,0x0e,0x98,0xef]
nand.t %d14, %d14, 24, %d0, 31

# CHECK-INST: nand.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x18,0xe0]
nand.t %d14, %d14, 24, %d1, 0

# CHECK-INST: nand.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0x07,0x1e,0x98,0xe3]
nand.t %d14, %d14, 24, %d1, 7

# CHECK-INST: nand.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x18,0xec]
nand.t %d14, %d14, 24, %d1, 24

# CHECK-INST: nand.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0x07,0x1e,0x98,0xef]
nand.t %d14, %d14, 24, %d1, 31

# CHECK-INST: nand.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0x07,0xee,0x18,0xe0]
nand.t %d14, %d14, 24, %d14, 0

# CHECK-INST: nand.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0x07,0xee,0x98,0xe3]
nand.t %d14, %d14, 24, %d14, 7

# CHECK-INST: nand.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0x07,0xee,0x18,0xec]
nand.t %d14, %d14, 24, %d14, 24

# CHECK-INST: nand.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0x07,0xee,0x98,0xef]
nand.t %d14, %d14, 24, %d14, 31

# CHECK-INST: nand.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x18,0xe0]
nand.t %d14, %d14, 24, %d15, 0

# CHECK-INST: nand.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0x07,0xfe,0x98,0xe3]
nand.t %d14, %d14, 24, %d15, 7

# CHECK-INST: nand.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x18,0xec]
nand.t %d14, %d14, 24, %d15, 24

# CHECK-INST: nand.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0x07,0xfe,0x98,0xef]
nand.t %d14, %d14, 24, %d15, 31

# CHECK-INST: nand.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x1f,0xe0]
nand.t %d14, %d14, 31, %d0, 0

# CHECK-INST: nand.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0x07,0x0e,0x9f,0xe3]
nand.t %d14, %d14, 31, %d0, 7

# CHECK-INST: nand.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x1f,0xec]
nand.t %d14, %d14, 31, %d0, 24

# CHECK-INST: nand.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0x07,0x0e,0x9f,0xef]
nand.t %d14, %d14, 31, %d0, 31

# CHECK-INST: nand.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x1f,0xe0]
nand.t %d14, %d14, 31, %d1, 0

# CHECK-INST: nand.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0x07,0x1e,0x9f,0xe3]
nand.t %d14, %d14, 31, %d1, 7

# CHECK-INST: nand.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x1f,0xec]
nand.t %d14, %d14, 31, %d1, 24

# CHECK-INST: nand.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0x07,0x1e,0x9f,0xef]
nand.t %d14, %d14, 31, %d1, 31

# CHECK-INST: nand.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0x07,0xee,0x1f,0xe0]
nand.t %d14, %d14, 31, %d14, 0

# CHECK-INST: nand.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0x07,0xee,0x9f,0xe3]
nand.t %d14, %d14, 31, %d14, 7

# CHECK-INST: nand.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0x07,0xee,0x1f,0xec]
nand.t %d14, %d14, 31, %d14, 24

# CHECK-INST: nand.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0x07,0xee,0x9f,0xef]
nand.t %d14, %d14, 31, %d14, 31

# CHECK-INST: nand.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x1f,0xe0]
nand.t %d14, %d14, 31, %d15, 0

# CHECK-INST: nand.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0x07,0xfe,0x9f,0xe3]
nand.t %d14, %d14, 31, %d15, 7

# CHECK-INST: nand.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x1f,0xec]
nand.t %d14, %d14, 31, %d15, 24

# CHECK-INST: nand.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0x07,0xfe,0x9f,0xef]
nand.t %d14, %d14, 31, %d15, 31

# CHECK-INST: nand.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x00,0xe0]
nand.t %d14, %d15, 0, %d0, 0

# CHECK-INST: nand.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0x07,0x0f,0x80,0xe3]
nand.t %d14, %d15, 0, %d0, 7

# CHECK-INST: nand.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x00,0xec]
nand.t %d14, %d15, 0, %d0, 24

# CHECK-INST: nand.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0x07,0x0f,0x80,0xef]
nand.t %d14, %d15, 0, %d0, 31

# CHECK-INST: nand.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x00,0xe0]
nand.t %d14, %d15, 0, %d1, 0

# CHECK-INST: nand.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0x07,0x1f,0x80,0xe3]
nand.t %d14, %d15, 0, %d1, 7

# CHECK-INST: nand.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x00,0xec]
nand.t %d14, %d15, 0, %d1, 24

# CHECK-INST: nand.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0x07,0x1f,0x80,0xef]
nand.t %d14, %d15, 0, %d1, 31

# CHECK-INST: nand.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0x07,0xef,0x00,0xe0]
nand.t %d14, %d15, 0, %d14, 0

# CHECK-INST: nand.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0x07,0xef,0x80,0xe3]
nand.t %d14, %d15, 0, %d14, 7

# CHECK-INST: nand.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0x07,0xef,0x00,0xec]
nand.t %d14, %d15, 0, %d14, 24

# CHECK-INST: nand.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0x07,0xef,0x80,0xef]
nand.t %d14, %d15, 0, %d14, 31

# CHECK-INST: nand.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0x07,0xff,0x00,0xe0]
nand.t %d14, %d15, 0, %d15, 0

# CHECK-INST: nand.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0x07,0xff,0x80,0xe3]
nand.t %d14, %d15, 0, %d15, 7

# CHECK-INST: nand.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0x07,0xff,0x00,0xec]
nand.t %d14, %d15, 0, %d15, 24

# CHECK-INST: nand.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0x07,0xff,0x80,0xef]
nand.t %d14, %d15, 0, %d15, 31

# CHECK-INST: nand.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x07,0xe0]
nand.t %d14, %d15, 7, %d0, 0

# CHECK-INST: nand.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0x07,0x0f,0x87,0xe3]
nand.t %d14, %d15, 7, %d0, 7

# CHECK-INST: nand.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x07,0xec]
nand.t %d14, %d15, 7, %d0, 24

# CHECK-INST: nand.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0x07,0x0f,0x87,0xef]
nand.t %d14, %d15, 7, %d0, 31

# CHECK-INST: nand.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x07,0xe0]
nand.t %d14, %d15, 7, %d1, 0

# CHECK-INST: nand.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0x07,0x1f,0x87,0xe3]
nand.t %d14, %d15, 7, %d1, 7

# CHECK-INST: nand.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x07,0xec]
nand.t %d14, %d15, 7, %d1, 24

# CHECK-INST: nand.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0x07,0x1f,0x87,0xef]
nand.t %d14, %d15, 7, %d1, 31

# CHECK-INST: nand.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0x07,0xef,0x07,0xe0]
nand.t %d14, %d15, 7, %d14, 0

# CHECK-INST: nand.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0x07,0xef,0x87,0xe3]
nand.t %d14, %d15, 7, %d14, 7

# CHECK-INST: nand.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0x07,0xef,0x07,0xec]
nand.t %d14, %d15, 7, %d14, 24

# CHECK-INST: nand.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0x07,0xef,0x87,0xef]
nand.t %d14, %d15, 7, %d14, 31

# CHECK-INST: nand.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0x07,0xff,0x07,0xe0]
nand.t %d14, %d15, 7, %d15, 0

# CHECK-INST: nand.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0x07,0xff,0x87,0xe3]
nand.t %d14, %d15, 7, %d15, 7

# CHECK-INST: nand.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0x07,0xff,0x07,0xec]
nand.t %d14, %d15, 7, %d15, 24

# CHECK-INST: nand.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0x07,0xff,0x87,0xef]
nand.t %d14, %d15, 7, %d15, 31

# CHECK-INST: nand.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x18,0xe0]
nand.t %d14, %d15, 24, %d0, 0

# CHECK-INST: nand.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0x07,0x0f,0x98,0xe3]
nand.t %d14, %d15, 24, %d0, 7

# CHECK-INST: nand.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x18,0xec]
nand.t %d14, %d15, 24, %d0, 24

# CHECK-INST: nand.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0x07,0x0f,0x98,0xef]
nand.t %d14, %d15, 24, %d0, 31

# CHECK-INST: nand.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x18,0xe0]
nand.t %d14, %d15, 24, %d1, 0

# CHECK-INST: nand.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0x07,0x1f,0x98,0xe3]
nand.t %d14, %d15, 24, %d1, 7

# CHECK-INST: nand.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x18,0xec]
nand.t %d14, %d15, 24, %d1, 24

# CHECK-INST: nand.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0x07,0x1f,0x98,0xef]
nand.t %d14, %d15, 24, %d1, 31

# CHECK-INST: nand.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0x07,0xef,0x18,0xe0]
nand.t %d14, %d15, 24, %d14, 0

# CHECK-INST: nand.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0x07,0xef,0x98,0xe3]
nand.t %d14, %d15, 24, %d14, 7

# CHECK-INST: nand.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0x07,0xef,0x18,0xec]
nand.t %d14, %d15, 24, %d14, 24

# CHECK-INST: nand.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0x07,0xef,0x98,0xef]
nand.t %d14, %d15, 24, %d14, 31

# CHECK-INST: nand.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0x07,0xff,0x18,0xe0]
nand.t %d14, %d15, 24, %d15, 0

# CHECK-INST: nand.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0x07,0xff,0x98,0xe3]
nand.t %d14, %d15, 24, %d15, 7

# CHECK-INST: nand.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0x07,0xff,0x18,0xec]
nand.t %d14, %d15, 24, %d15, 24

# CHECK-INST: nand.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0x07,0xff,0x98,0xef]
nand.t %d14, %d15, 24, %d15, 31

# CHECK-INST: nand.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x1f,0xe0]
nand.t %d14, %d15, 31, %d0, 0

# CHECK-INST: nand.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0x07,0x0f,0x9f,0xe3]
nand.t %d14, %d15, 31, %d0, 7

# CHECK-INST: nand.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x1f,0xec]
nand.t %d14, %d15, 31, %d0, 24

# CHECK-INST: nand.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0x07,0x0f,0x9f,0xef]
nand.t %d14, %d15, 31, %d0, 31

# CHECK-INST: nand.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x1f,0xe0]
nand.t %d14, %d15, 31, %d1, 0

# CHECK-INST: nand.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0x07,0x1f,0x9f,0xe3]
nand.t %d14, %d15, 31, %d1, 7

# CHECK-INST: nand.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x1f,0xec]
nand.t %d14, %d15, 31, %d1, 24

# CHECK-INST: nand.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0x07,0x1f,0x9f,0xef]
nand.t %d14, %d15, 31, %d1, 31

# CHECK-INST: nand.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0x07,0xef,0x1f,0xe0]
nand.t %d14, %d15, 31, %d14, 0

# CHECK-INST: nand.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0x07,0xef,0x9f,0xe3]
nand.t %d14, %d15, 31, %d14, 7

# CHECK-INST: nand.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0x07,0xef,0x1f,0xec]
nand.t %d14, %d15, 31, %d14, 24

# CHECK-INST: nand.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0x07,0xef,0x9f,0xef]
nand.t %d14, %d15, 31, %d14, 31

# CHECK-INST: nand.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0x07,0xff,0x1f,0xe0]
nand.t %d14, %d15, 31, %d15, 0

# CHECK-INST: nand.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0x07,0xff,0x9f,0xe3]
nand.t %d14, %d15, 31, %d15, 7

# CHECK-INST: nand.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0x07,0xff,0x1f,0xec]
nand.t %d14, %d15, 31, %d15, 24

# CHECK-INST: nand.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0x07,0xff,0x9f,0xef]
nand.t %d14, %d15, 31, %d15, 31

# CHECK-INST: nand.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x00,0xf0]
nand.t %d15, %d0, 0, %d0, 0

# CHECK-INST: nand.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0x07,0x00,0x80,0xf3]
nand.t %d15, %d0, 0, %d0, 7

# CHECK-INST: nand.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0x07,0x00,0x00,0xfc]
nand.t %d15, %d0, 0, %d0, 24

# CHECK-INST: nand.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0x07,0x00,0x80,0xff]
nand.t %d15, %d0, 0, %d0, 31

# CHECK-INST: nand.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0x07,0x10,0x00,0xf0]
nand.t %d15, %d0, 0, %d1, 0

# CHECK-INST: nand.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0x07,0x10,0x80,0xf3]
nand.t %d15, %d0, 0, %d1, 7

# CHECK-INST: nand.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0x07,0x10,0x00,0xfc]
nand.t %d15, %d0, 0, %d1, 24

# CHECK-INST: nand.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0x07,0x10,0x80,0xff]
nand.t %d15, %d0, 0, %d1, 31

# CHECK-INST: nand.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x00,0xf0]
nand.t %d15, %d0, 0, %d14, 0

# CHECK-INST: nand.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0x07,0xe0,0x80,0xf3]
nand.t %d15, %d0, 0, %d14, 7

# CHECK-INST: nand.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x00,0xfc]
nand.t %d15, %d0, 0, %d14, 24

# CHECK-INST: nand.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0x07,0xe0,0x80,0xff]
nand.t %d15, %d0, 0, %d14, 31

# CHECK-INST: nand.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x00,0xf0]
nand.t %d15, %d0, 0, %d15, 0

# CHECK-INST: nand.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0x07,0xf0,0x80,0xf3]
nand.t %d15, %d0, 0, %d15, 7

# CHECK-INST: nand.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x00,0xfc]
nand.t %d15, %d0, 0, %d15, 24

# CHECK-INST: nand.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0x07,0xf0,0x80,0xff]
nand.t %d15, %d0, 0, %d15, 31

# CHECK-INST: nand.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0x07,0x00,0x07,0xf0]
nand.t %d15, %d0, 7, %d0, 0

# CHECK-INST: nand.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0x07,0x00,0x87,0xf3]
nand.t %d15, %d0, 7, %d0, 7

# CHECK-INST: nand.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0x07,0x00,0x07,0xfc]
nand.t %d15, %d0, 7, %d0, 24

# CHECK-INST: nand.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0x07,0x00,0x87,0xff]
nand.t %d15, %d0, 7, %d0, 31

# CHECK-INST: nand.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0x07,0x10,0x07,0xf0]
nand.t %d15, %d0, 7, %d1, 0

# CHECK-INST: nand.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0x07,0x10,0x87,0xf3]
nand.t %d15, %d0, 7, %d1, 7

# CHECK-INST: nand.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0x07,0x10,0x07,0xfc]
nand.t %d15, %d0, 7, %d1, 24

# CHECK-INST: nand.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0x07,0x10,0x87,0xff]
nand.t %d15, %d0, 7, %d1, 31

# CHECK-INST: nand.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x07,0xf0]
nand.t %d15, %d0, 7, %d14, 0

# CHECK-INST: nand.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0x07,0xe0,0x87,0xf3]
nand.t %d15, %d0, 7, %d14, 7

# CHECK-INST: nand.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x07,0xfc]
nand.t %d15, %d0, 7, %d14, 24

# CHECK-INST: nand.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0x07,0xe0,0x87,0xff]
nand.t %d15, %d0, 7, %d14, 31

# CHECK-INST: nand.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x07,0xf0]
nand.t %d15, %d0, 7, %d15, 0

# CHECK-INST: nand.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0x07,0xf0,0x87,0xf3]
nand.t %d15, %d0, 7, %d15, 7

# CHECK-INST: nand.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x07,0xfc]
nand.t %d15, %d0, 7, %d15, 24

# CHECK-INST: nand.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0x07,0xf0,0x87,0xff]
nand.t %d15, %d0, 7, %d15, 31

# CHECK-INST: nand.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0x07,0x00,0x18,0xf0]
nand.t %d15, %d0, 24, %d0, 0

# CHECK-INST: nand.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0x07,0x00,0x98,0xf3]
nand.t %d15, %d0, 24, %d0, 7

# CHECK-INST: nand.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0x07,0x00,0x18,0xfc]
nand.t %d15, %d0, 24, %d0, 24

# CHECK-INST: nand.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0x07,0x00,0x98,0xff]
nand.t %d15, %d0, 24, %d0, 31

# CHECK-INST: nand.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0x07,0x10,0x18,0xf0]
nand.t %d15, %d0, 24, %d1, 0

# CHECK-INST: nand.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0x07,0x10,0x98,0xf3]
nand.t %d15, %d0, 24, %d1, 7

# CHECK-INST: nand.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0x07,0x10,0x18,0xfc]
nand.t %d15, %d0, 24, %d1, 24

# CHECK-INST: nand.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0x07,0x10,0x98,0xff]
nand.t %d15, %d0, 24, %d1, 31

# CHECK-INST: nand.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x18,0xf0]
nand.t %d15, %d0, 24, %d14, 0

# CHECK-INST: nand.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0x07,0xe0,0x98,0xf3]
nand.t %d15, %d0, 24, %d14, 7

# CHECK-INST: nand.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x18,0xfc]
nand.t %d15, %d0, 24, %d14, 24

# CHECK-INST: nand.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0x07,0xe0,0x98,0xff]
nand.t %d15, %d0, 24, %d14, 31

# CHECK-INST: nand.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x18,0xf0]
nand.t %d15, %d0, 24, %d15, 0

# CHECK-INST: nand.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0x07,0xf0,0x98,0xf3]
nand.t %d15, %d0, 24, %d15, 7

# CHECK-INST: nand.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x18,0xfc]
nand.t %d15, %d0, 24, %d15, 24

# CHECK-INST: nand.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0x07,0xf0,0x98,0xff]
nand.t %d15, %d0, 24, %d15, 31

# CHECK-INST: nand.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0x07,0x00,0x1f,0xf0]
nand.t %d15, %d0, 31, %d0, 0

# CHECK-INST: nand.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0x07,0x00,0x9f,0xf3]
nand.t %d15, %d0, 31, %d0, 7

# CHECK-INST: nand.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0x07,0x00,0x1f,0xfc]
nand.t %d15, %d0, 31, %d0, 24

# CHECK-INST: nand.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0x07,0x00,0x9f,0xff]
nand.t %d15, %d0, 31, %d0, 31

# CHECK-INST: nand.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0x07,0x10,0x1f,0xf0]
nand.t %d15, %d0, 31, %d1, 0

# CHECK-INST: nand.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0x07,0x10,0x9f,0xf3]
nand.t %d15, %d0, 31, %d1, 7

# CHECK-INST: nand.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0x07,0x10,0x1f,0xfc]
nand.t %d15, %d0, 31, %d1, 24

# CHECK-INST: nand.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0x07,0x10,0x9f,0xff]
nand.t %d15, %d0, 31, %d1, 31

# CHECK-INST: nand.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x1f,0xf0]
nand.t %d15, %d0, 31, %d14, 0

# CHECK-INST: nand.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0x07,0xe0,0x9f,0xf3]
nand.t %d15, %d0, 31, %d14, 7

# CHECK-INST: nand.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x1f,0xfc]
nand.t %d15, %d0, 31, %d14, 24

# CHECK-INST: nand.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0x07,0xe0,0x9f,0xff]
nand.t %d15, %d0, 31, %d14, 31

# CHECK-INST: nand.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x1f,0xf0]
nand.t %d15, %d0, 31, %d15, 0

# CHECK-INST: nand.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0x07,0xf0,0x9f,0xf3]
nand.t %d15, %d0, 31, %d15, 7

# CHECK-INST: nand.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x1f,0xfc]
nand.t %d15, %d0, 31, %d15, 24

# CHECK-INST: nand.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0x07,0xf0,0x9f,0xff]
nand.t %d15, %d0, 31, %d15, 31

# CHECK-INST: nand.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0x07,0x01,0x00,0xf0]
nand.t %d15, %d1, 0, %d0, 0

# CHECK-INST: nand.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0x07,0x01,0x80,0xf3]
nand.t %d15, %d1, 0, %d0, 7

# CHECK-INST: nand.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0x07,0x01,0x00,0xfc]
nand.t %d15, %d1, 0, %d0, 24

# CHECK-INST: nand.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0x07,0x01,0x80,0xff]
nand.t %d15, %d1, 0, %d0, 31

# CHECK-INST: nand.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0x07,0x11,0x00,0xf0]
nand.t %d15, %d1, 0, %d1, 0

# CHECK-INST: nand.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0x07,0x11,0x80,0xf3]
nand.t %d15, %d1, 0, %d1, 7

# CHECK-INST: nand.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0x07,0x11,0x00,0xfc]
nand.t %d15, %d1, 0, %d1, 24

# CHECK-INST: nand.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0x07,0x11,0x80,0xff]
nand.t %d15, %d1, 0, %d1, 31

# CHECK-INST: nand.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x00,0xf0]
nand.t %d15, %d1, 0, %d14, 0

# CHECK-INST: nand.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0x07,0xe1,0x80,0xf3]
nand.t %d15, %d1, 0, %d14, 7

# CHECK-INST: nand.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x00,0xfc]
nand.t %d15, %d1, 0, %d14, 24

# CHECK-INST: nand.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0x07,0xe1,0x80,0xff]
nand.t %d15, %d1, 0, %d14, 31

# CHECK-INST: nand.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x00,0xf0]
nand.t %d15, %d1, 0, %d15, 0

# CHECK-INST: nand.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0x07,0xf1,0x80,0xf3]
nand.t %d15, %d1, 0, %d15, 7

# CHECK-INST: nand.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x00,0xfc]
nand.t %d15, %d1, 0, %d15, 24

# CHECK-INST: nand.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0x07,0xf1,0x80,0xff]
nand.t %d15, %d1, 0, %d15, 31

# CHECK-INST: nand.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0x07,0x01,0x07,0xf0]
nand.t %d15, %d1, 7, %d0, 0

# CHECK-INST: nand.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0x07,0x01,0x87,0xf3]
nand.t %d15, %d1, 7, %d0, 7

# CHECK-INST: nand.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0x07,0x01,0x07,0xfc]
nand.t %d15, %d1, 7, %d0, 24

# CHECK-INST: nand.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0x07,0x01,0x87,0xff]
nand.t %d15, %d1, 7, %d0, 31

# CHECK-INST: nand.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0x07,0x11,0x07,0xf0]
nand.t %d15, %d1, 7, %d1, 0

# CHECK-INST: nand.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0x07,0x11,0x87,0xf3]
nand.t %d15, %d1, 7, %d1, 7

# CHECK-INST: nand.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0x07,0x11,0x07,0xfc]
nand.t %d15, %d1, 7, %d1, 24

# CHECK-INST: nand.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0x07,0x11,0x87,0xff]
nand.t %d15, %d1, 7, %d1, 31

# CHECK-INST: nand.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x07,0xf0]
nand.t %d15, %d1, 7, %d14, 0

# CHECK-INST: nand.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0x07,0xe1,0x87,0xf3]
nand.t %d15, %d1, 7, %d14, 7

# CHECK-INST: nand.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x07,0xfc]
nand.t %d15, %d1, 7, %d14, 24

# CHECK-INST: nand.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0x07,0xe1,0x87,0xff]
nand.t %d15, %d1, 7, %d14, 31

# CHECK-INST: nand.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x07,0xf0]
nand.t %d15, %d1, 7, %d15, 0

# CHECK-INST: nand.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0x07,0xf1,0x87,0xf3]
nand.t %d15, %d1, 7, %d15, 7

# CHECK-INST: nand.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x07,0xfc]
nand.t %d15, %d1, 7, %d15, 24

# CHECK-INST: nand.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0x07,0xf1,0x87,0xff]
nand.t %d15, %d1, 7, %d15, 31

# CHECK-INST: nand.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0x07,0x01,0x18,0xf0]
nand.t %d15, %d1, 24, %d0, 0

# CHECK-INST: nand.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0x07,0x01,0x98,0xf3]
nand.t %d15, %d1, 24, %d0, 7

# CHECK-INST: nand.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0x07,0x01,0x18,0xfc]
nand.t %d15, %d1, 24, %d0, 24

# CHECK-INST: nand.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0x07,0x01,0x98,0xff]
nand.t %d15, %d1, 24, %d0, 31

# CHECK-INST: nand.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0x07,0x11,0x18,0xf0]
nand.t %d15, %d1, 24, %d1, 0

# CHECK-INST: nand.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0x07,0x11,0x98,0xf3]
nand.t %d15, %d1, 24, %d1, 7

# CHECK-INST: nand.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0x07,0x11,0x18,0xfc]
nand.t %d15, %d1, 24, %d1, 24

# CHECK-INST: nand.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0x07,0x11,0x98,0xff]
nand.t %d15, %d1, 24, %d1, 31

# CHECK-INST: nand.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x18,0xf0]
nand.t %d15, %d1, 24, %d14, 0

# CHECK-INST: nand.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0x07,0xe1,0x98,0xf3]
nand.t %d15, %d1, 24, %d14, 7

# CHECK-INST: nand.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x18,0xfc]
nand.t %d15, %d1, 24, %d14, 24

# CHECK-INST: nand.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0x07,0xe1,0x98,0xff]
nand.t %d15, %d1, 24, %d14, 31

# CHECK-INST: nand.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x18,0xf0]
nand.t %d15, %d1, 24, %d15, 0

# CHECK-INST: nand.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0x07,0xf1,0x98,0xf3]
nand.t %d15, %d1, 24, %d15, 7

# CHECK-INST: nand.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x18,0xfc]
nand.t %d15, %d1, 24, %d15, 24

# CHECK-INST: nand.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0x07,0xf1,0x98,0xff]
nand.t %d15, %d1, 24, %d15, 31

# CHECK-INST: nand.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0x07,0x01,0x1f,0xf0]
nand.t %d15, %d1, 31, %d0, 0

# CHECK-INST: nand.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0x07,0x01,0x9f,0xf3]
nand.t %d15, %d1, 31, %d0, 7

# CHECK-INST: nand.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0x07,0x01,0x1f,0xfc]
nand.t %d15, %d1, 31, %d0, 24

# CHECK-INST: nand.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0x07,0x01,0x9f,0xff]
nand.t %d15, %d1, 31, %d0, 31

# CHECK-INST: nand.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0x07,0x11,0x1f,0xf0]
nand.t %d15, %d1, 31, %d1, 0

# CHECK-INST: nand.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0x07,0x11,0x9f,0xf3]
nand.t %d15, %d1, 31, %d1, 7

# CHECK-INST: nand.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0x07,0x11,0x1f,0xfc]
nand.t %d15, %d1, 31, %d1, 24

# CHECK-INST: nand.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0x07,0x11,0x9f,0xff]
nand.t %d15, %d1, 31, %d1, 31

# CHECK-INST: nand.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x1f,0xf0]
nand.t %d15, %d1, 31, %d14, 0

# CHECK-INST: nand.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0x07,0xe1,0x9f,0xf3]
nand.t %d15, %d1, 31, %d14, 7

# CHECK-INST: nand.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x1f,0xfc]
nand.t %d15, %d1, 31, %d14, 24

# CHECK-INST: nand.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0x07,0xe1,0x9f,0xff]
nand.t %d15, %d1, 31, %d14, 31

# CHECK-INST: nand.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x1f,0xf0]
nand.t %d15, %d1, 31, %d15, 0

# CHECK-INST: nand.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0x07,0xf1,0x9f,0xf3]
nand.t %d15, %d1, 31, %d15, 7

# CHECK-INST: nand.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x1f,0xfc]
nand.t %d15, %d1, 31, %d15, 24

# CHECK-INST: nand.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0x07,0xf1,0x9f,0xff]
nand.t %d15, %d1, 31, %d15, 31

# CHECK-INST: nand.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x00,0xf0]
nand.t %d15, %d14, 0, %d0, 0

# CHECK-INST: nand.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0x07,0x0e,0x80,0xf3]
nand.t %d15, %d14, 0, %d0, 7

# CHECK-INST: nand.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x00,0xfc]
nand.t %d15, %d14, 0, %d0, 24

# CHECK-INST: nand.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0x07,0x0e,0x80,0xff]
nand.t %d15, %d14, 0, %d0, 31

# CHECK-INST: nand.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x00,0xf0]
nand.t %d15, %d14, 0, %d1, 0

# CHECK-INST: nand.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0x07,0x1e,0x80,0xf3]
nand.t %d15, %d14, 0, %d1, 7

# CHECK-INST: nand.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x00,0xfc]
nand.t %d15, %d14, 0, %d1, 24

# CHECK-INST: nand.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0x07,0x1e,0x80,0xff]
nand.t %d15, %d14, 0, %d1, 31

# CHECK-INST: nand.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0x07,0xee,0x00,0xf0]
nand.t %d15, %d14, 0, %d14, 0

# CHECK-INST: nand.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0x07,0xee,0x80,0xf3]
nand.t %d15, %d14, 0, %d14, 7

# CHECK-INST: nand.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0x07,0xee,0x00,0xfc]
nand.t %d15, %d14, 0, %d14, 24

# CHECK-INST: nand.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0x07,0xee,0x80,0xff]
nand.t %d15, %d14, 0, %d14, 31

# CHECK-INST: nand.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x00,0xf0]
nand.t %d15, %d14, 0, %d15, 0

# CHECK-INST: nand.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0x07,0xfe,0x80,0xf3]
nand.t %d15, %d14, 0, %d15, 7

# CHECK-INST: nand.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x00,0xfc]
nand.t %d15, %d14, 0, %d15, 24

# CHECK-INST: nand.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0x07,0xfe,0x80,0xff]
nand.t %d15, %d14, 0, %d15, 31

# CHECK-INST: nand.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x07,0xf0]
nand.t %d15, %d14, 7, %d0, 0

# CHECK-INST: nand.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0x07,0x0e,0x87,0xf3]
nand.t %d15, %d14, 7, %d0, 7

# CHECK-INST: nand.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x07,0xfc]
nand.t %d15, %d14, 7, %d0, 24

# CHECK-INST: nand.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0x07,0x0e,0x87,0xff]
nand.t %d15, %d14, 7, %d0, 31

# CHECK-INST: nand.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x07,0xf0]
nand.t %d15, %d14, 7, %d1, 0

# CHECK-INST: nand.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0x07,0x1e,0x87,0xf3]
nand.t %d15, %d14, 7, %d1, 7

# CHECK-INST: nand.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x07,0xfc]
nand.t %d15, %d14, 7, %d1, 24

# CHECK-INST: nand.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0x07,0x1e,0x87,0xff]
nand.t %d15, %d14, 7, %d1, 31

# CHECK-INST: nand.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0x07,0xee,0x07,0xf0]
nand.t %d15, %d14, 7, %d14, 0

# CHECK-INST: nand.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0x07,0xee,0x87,0xf3]
nand.t %d15, %d14, 7, %d14, 7

# CHECK-INST: nand.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0x07,0xee,0x07,0xfc]
nand.t %d15, %d14, 7, %d14, 24

# CHECK-INST: nand.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0x07,0xee,0x87,0xff]
nand.t %d15, %d14, 7, %d14, 31

# CHECK-INST: nand.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x07,0xf0]
nand.t %d15, %d14, 7, %d15, 0

# CHECK-INST: nand.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0x07,0xfe,0x87,0xf3]
nand.t %d15, %d14, 7, %d15, 7

# CHECK-INST: nand.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x07,0xfc]
nand.t %d15, %d14, 7, %d15, 24

# CHECK-INST: nand.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0x07,0xfe,0x87,0xff]
nand.t %d15, %d14, 7, %d15, 31

# CHECK-INST: nand.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x18,0xf0]
nand.t %d15, %d14, 24, %d0, 0

# CHECK-INST: nand.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0x07,0x0e,0x98,0xf3]
nand.t %d15, %d14, 24, %d0, 7

# CHECK-INST: nand.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x18,0xfc]
nand.t %d15, %d14, 24, %d0, 24

# CHECK-INST: nand.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0x07,0x0e,0x98,0xff]
nand.t %d15, %d14, 24, %d0, 31

# CHECK-INST: nand.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x18,0xf0]
nand.t %d15, %d14, 24, %d1, 0

# CHECK-INST: nand.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0x07,0x1e,0x98,0xf3]
nand.t %d15, %d14, 24, %d1, 7

# CHECK-INST: nand.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x18,0xfc]
nand.t %d15, %d14, 24, %d1, 24

# CHECK-INST: nand.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0x07,0x1e,0x98,0xff]
nand.t %d15, %d14, 24, %d1, 31

# CHECK-INST: nand.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0x07,0xee,0x18,0xf0]
nand.t %d15, %d14, 24, %d14, 0

# CHECK-INST: nand.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0x07,0xee,0x98,0xf3]
nand.t %d15, %d14, 24, %d14, 7

# CHECK-INST: nand.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0x07,0xee,0x18,0xfc]
nand.t %d15, %d14, 24, %d14, 24

# CHECK-INST: nand.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0x07,0xee,0x98,0xff]
nand.t %d15, %d14, 24, %d14, 31

# CHECK-INST: nand.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x18,0xf0]
nand.t %d15, %d14, 24, %d15, 0

# CHECK-INST: nand.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0x07,0xfe,0x98,0xf3]
nand.t %d15, %d14, 24, %d15, 7

# CHECK-INST: nand.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x18,0xfc]
nand.t %d15, %d14, 24, %d15, 24

# CHECK-INST: nand.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0x07,0xfe,0x98,0xff]
nand.t %d15, %d14, 24, %d15, 31

# CHECK-INST: nand.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x1f,0xf0]
nand.t %d15, %d14, 31, %d0, 0

# CHECK-INST: nand.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0x07,0x0e,0x9f,0xf3]
nand.t %d15, %d14, 31, %d0, 7

# CHECK-INST: nand.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x1f,0xfc]
nand.t %d15, %d14, 31, %d0, 24

# CHECK-INST: nand.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0x07,0x0e,0x9f,0xff]
nand.t %d15, %d14, 31, %d0, 31

# CHECK-INST: nand.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x1f,0xf0]
nand.t %d15, %d14, 31, %d1, 0

# CHECK-INST: nand.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0x07,0x1e,0x9f,0xf3]
nand.t %d15, %d14, 31, %d1, 7

# CHECK-INST: nand.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x1f,0xfc]
nand.t %d15, %d14, 31, %d1, 24

# CHECK-INST: nand.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0x07,0x1e,0x9f,0xff]
nand.t %d15, %d14, 31, %d1, 31

# CHECK-INST: nand.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0x07,0xee,0x1f,0xf0]
nand.t %d15, %d14, 31, %d14, 0

# CHECK-INST: nand.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0x07,0xee,0x9f,0xf3]
nand.t %d15, %d14, 31, %d14, 7

# CHECK-INST: nand.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0x07,0xee,0x1f,0xfc]
nand.t %d15, %d14, 31, %d14, 24

# CHECK-INST: nand.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0x07,0xee,0x9f,0xff]
nand.t %d15, %d14, 31, %d14, 31

# CHECK-INST: nand.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x1f,0xf0]
nand.t %d15, %d14, 31, %d15, 0

# CHECK-INST: nand.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0x07,0xfe,0x9f,0xf3]
nand.t %d15, %d14, 31, %d15, 7

# CHECK-INST: nand.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x1f,0xfc]
nand.t %d15, %d14, 31, %d15, 24

# CHECK-INST: nand.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0x07,0xfe,0x9f,0xff]
nand.t %d15, %d14, 31, %d15, 31

# CHECK-INST: nand.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x00,0xf0]
nand.t %d15, %d15, 0, %d0, 0

# CHECK-INST: nand.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0x07,0x0f,0x80,0xf3]
nand.t %d15, %d15, 0, %d0, 7

# CHECK-INST: nand.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x00,0xfc]
nand.t %d15, %d15, 0, %d0, 24

# CHECK-INST: nand.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0x07,0x0f,0x80,0xff]
nand.t %d15, %d15, 0, %d0, 31

# CHECK-INST: nand.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x00,0xf0]
nand.t %d15, %d15, 0, %d1, 0

# CHECK-INST: nand.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0x07,0x1f,0x80,0xf3]
nand.t %d15, %d15, 0, %d1, 7

# CHECK-INST: nand.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x00,0xfc]
nand.t %d15, %d15, 0, %d1, 24

# CHECK-INST: nand.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0x07,0x1f,0x80,0xff]
nand.t %d15, %d15, 0, %d1, 31

# CHECK-INST: nand.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0x07,0xef,0x00,0xf0]
nand.t %d15, %d15, 0, %d14, 0

# CHECK-INST: nand.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0x07,0xef,0x80,0xf3]
nand.t %d15, %d15, 0, %d14, 7

# CHECK-INST: nand.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0x07,0xef,0x00,0xfc]
nand.t %d15, %d15, 0, %d14, 24

# CHECK-INST: nand.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0x07,0xef,0x80,0xff]
nand.t %d15, %d15, 0, %d14, 31

# CHECK-INST: nand.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0x07,0xff,0x00,0xf0]
nand.t %d15, %d15, 0, %d15, 0

# CHECK-INST: nand.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0x07,0xff,0x80,0xf3]
nand.t %d15, %d15, 0, %d15, 7

# CHECK-INST: nand.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0x07,0xff,0x00,0xfc]
nand.t %d15, %d15, 0, %d15, 24

# CHECK-INST: nand.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0x07,0xff,0x80,0xff]
nand.t %d15, %d15, 0, %d15, 31

# CHECK-INST: nand.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x07,0xf0]
nand.t %d15, %d15, 7, %d0, 0

# CHECK-INST: nand.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0x07,0x0f,0x87,0xf3]
nand.t %d15, %d15, 7, %d0, 7

# CHECK-INST: nand.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x07,0xfc]
nand.t %d15, %d15, 7, %d0, 24

# CHECK-INST: nand.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0x07,0x0f,0x87,0xff]
nand.t %d15, %d15, 7, %d0, 31

# CHECK-INST: nand.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x07,0xf0]
nand.t %d15, %d15, 7, %d1, 0

# CHECK-INST: nand.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0x07,0x1f,0x87,0xf3]
nand.t %d15, %d15, 7, %d1, 7

# CHECK-INST: nand.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x07,0xfc]
nand.t %d15, %d15, 7, %d1, 24

# CHECK-INST: nand.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0x07,0x1f,0x87,0xff]
nand.t %d15, %d15, 7, %d1, 31

# CHECK-INST: nand.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0x07,0xef,0x07,0xf0]
nand.t %d15, %d15, 7, %d14, 0

# CHECK-INST: nand.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0x07,0xef,0x87,0xf3]
nand.t %d15, %d15, 7, %d14, 7

# CHECK-INST: nand.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0x07,0xef,0x07,0xfc]
nand.t %d15, %d15, 7, %d14, 24

# CHECK-INST: nand.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0x07,0xef,0x87,0xff]
nand.t %d15, %d15, 7, %d14, 31

# CHECK-INST: nand.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0x07,0xff,0x07,0xf0]
nand.t %d15, %d15, 7, %d15, 0

# CHECK-INST: nand.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0x07,0xff,0x87,0xf3]
nand.t %d15, %d15, 7, %d15, 7

# CHECK-INST: nand.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0x07,0xff,0x07,0xfc]
nand.t %d15, %d15, 7, %d15, 24

# CHECK-INST: nand.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0x07,0xff,0x87,0xff]
nand.t %d15, %d15, 7, %d15, 31

# CHECK-INST: nand.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x18,0xf0]
nand.t %d15, %d15, 24, %d0, 0

# CHECK-INST: nand.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0x07,0x0f,0x98,0xf3]
nand.t %d15, %d15, 24, %d0, 7

# CHECK-INST: nand.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x18,0xfc]
nand.t %d15, %d15, 24, %d0, 24

# CHECK-INST: nand.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0x07,0x0f,0x98,0xff]
nand.t %d15, %d15, 24, %d0, 31

# CHECK-INST: nand.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x18,0xf0]
nand.t %d15, %d15, 24, %d1, 0

# CHECK-INST: nand.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0x07,0x1f,0x98,0xf3]
nand.t %d15, %d15, 24, %d1, 7

# CHECK-INST: nand.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x18,0xfc]
nand.t %d15, %d15, 24, %d1, 24

# CHECK-INST: nand.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0x07,0x1f,0x98,0xff]
nand.t %d15, %d15, 24, %d1, 31

# CHECK-INST: nand.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0x07,0xef,0x18,0xf0]
nand.t %d15, %d15, 24, %d14, 0

# CHECK-INST: nand.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0x07,0xef,0x98,0xf3]
nand.t %d15, %d15, 24, %d14, 7

# CHECK-INST: nand.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0x07,0xef,0x18,0xfc]
nand.t %d15, %d15, 24, %d14, 24

# CHECK-INST: nand.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0x07,0xef,0x98,0xff]
nand.t %d15, %d15, 24, %d14, 31

# CHECK-INST: nand.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0x07,0xff,0x18,0xf0]
nand.t %d15, %d15, 24, %d15, 0

# CHECK-INST: nand.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0x07,0xff,0x98,0xf3]
nand.t %d15, %d15, 24, %d15, 7

# CHECK-INST: nand.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0x07,0xff,0x18,0xfc]
nand.t %d15, %d15, 24, %d15, 24

# CHECK-INST: nand.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0x07,0xff,0x98,0xff]
nand.t %d15, %d15, 24, %d15, 31

# CHECK-INST: nand.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x1f,0xf0]
nand.t %d15, %d15, 31, %d0, 0

# CHECK-INST: nand.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0x07,0x0f,0x9f,0xf3]
nand.t %d15, %d15, 31, %d0, 7

# CHECK-INST: nand.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x1f,0xfc]
nand.t %d15, %d15, 31, %d0, 24

# CHECK-INST: nand.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0x07,0x0f,0x9f,0xff]
nand.t %d15, %d15, 31, %d0, 31

# CHECK-INST: nand.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x1f,0xf0]
nand.t %d15, %d15, 31, %d1, 0

# CHECK-INST: nand.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0x07,0x1f,0x9f,0xf3]
nand.t %d15, %d15, 31, %d1, 7

# CHECK-INST: nand.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x1f,0xfc]
nand.t %d15, %d15, 31, %d1, 24

# CHECK-INST: nand.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0x07,0x1f,0x9f,0xff]
nand.t %d15, %d15, 31, %d1, 31

# CHECK-INST: nand.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0x07,0xef,0x1f,0xf0]
nand.t %d15, %d15, 31, %d14, 0

# CHECK-INST: nand.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0x07,0xef,0x9f,0xf3]
nand.t %d15, %d15, 31, %d14, 7

# CHECK-INST: nand.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0x07,0xef,0x1f,0xfc]
nand.t %d15, %d15, 31, %d14, 24

# CHECK-INST: nand.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0x07,0xef,0x9f,0xff]
nand.t %d15, %d15, 31, %d14, 31

# CHECK-INST: nand.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0x07,0xff,0x1f,0xf0]
nand.t %d15, %d15, 31, %d15, 0

# CHECK-INST: nand.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0x07,0xff,0x9f,0xf3]
nand.t %d15, %d15, 31, %d15, 7

# CHECK-INST: nand.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0x07,0xff,0x1f,0xfc]
nand.t %d15, %d15, 31, %d15, 24

# CHECK-INST: nand.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0x07,0xff,0x9f,0xff]
nand.t %d15, %d15, 31, %d15, 31

# CHECK-INST: nor.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x40,0x00]
nor.t %d0, %d0, 0, %d0, 0

# CHECK-INST: nor.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0x87,0x00,0xc0,0x03]
nor.t %d0, %d0, 0, %d0, 7

# CHECK-INST: nor.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0x87,0x00,0x40,0x0c]
nor.t %d0, %d0, 0, %d0, 24

# CHECK-INST: nor.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0x87,0x00,0xc0,0x0f]
nor.t %d0, %d0, 0, %d0, 31

# CHECK-INST: nor.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0x87,0x10,0x40,0x00]
nor.t %d0, %d0, 0, %d1, 0

# CHECK-INST: nor.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0x87,0x10,0xc0,0x03]
nor.t %d0, %d0, 0, %d1, 7

# CHECK-INST: nor.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0x87,0x10,0x40,0x0c]
nor.t %d0, %d0, 0, %d1, 24

# CHECK-INST: nor.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0x87,0x10,0xc0,0x0f]
nor.t %d0, %d0, 0, %d1, 31

# CHECK-INST: nor.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x40,0x00]
nor.t %d0, %d0, 0, %d14, 0

# CHECK-INST: nor.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xc0,0x03]
nor.t %d0, %d0, 0, %d14, 7

# CHECK-INST: nor.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x40,0x0c]
nor.t %d0, %d0, 0, %d14, 24

# CHECK-INST: nor.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xc0,0x0f]
nor.t %d0, %d0, 0, %d14, 31

# CHECK-INST: nor.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x40,0x00]
nor.t %d0, %d0, 0, %d15, 0

# CHECK-INST: nor.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xc0,0x03]
nor.t %d0, %d0, 0, %d15, 7

# CHECK-INST: nor.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x40,0x0c]
nor.t %d0, %d0, 0, %d15, 24

# CHECK-INST: nor.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xc0,0x0f]
nor.t %d0, %d0, 0, %d15, 31

# CHECK-INST: nor.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0x87,0x00,0x47,0x00]
nor.t %d0, %d0, 7, %d0, 0

# CHECK-INST: nor.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0x87,0x00,0xc7,0x03]
nor.t %d0, %d0, 7, %d0, 7

# CHECK-INST: nor.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0x87,0x00,0x47,0x0c]
nor.t %d0, %d0, 7, %d0, 24

# CHECK-INST: nor.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0x87,0x00,0xc7,0x0f]
nor.t %d0, %d0, 7, %d0, 31

# CHECK-INST: nor.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0x87,0x10,0x47,0x00]
nor.t %d0, %d0, 7, %d1, 0

# CHECK-INST: nor.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0x87,0x10,0xc7,0x03]
nor.t %d0, %d0, 7, %d1, 7

# CHECK-INST: nor.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0x87,0x10,0x47,0x0c]
nor.t %d0, %d0, 7, %d1, 24

# CHECK-INST: nor.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0x87,0x10,0xc7,0x0f]
nor.t %d0, %d0, 7, %d1, 31

# CHECK-INST: nor.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x47,0x00]
nor.t %d0, %d0, 7, %d14, 0

# CHECK-INST: nor.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xc7,0x03]
nor.t %d0, %d0, 7, %d14, 7

# CHECK-INST: nor.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x47,0x0c]
nor.t %d0, %d0, 7, %d14, 24

# CHECK-INST: nor.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xc7,0x0f]
nor.t %d0, %d0, 7, %d14, 31

# CHECK-INST: nor.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x47,0x00]
nor.t %d0, %d0, 7, %d15, 0

# CHECK-INST: nor.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xc7,0x03]
nor.t %d0, %d0, 7, %d15, 7

# CHECK-INST: nor.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x47,0x0c]
nor.t %d0, %d0, 7, %d15, 24

# CHECK-INST: nor.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xc7,0x0f]
nor.t %d0, %d0, 7, %d15, 31

# CHECK-INST: nor.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0x87,0x00,0x58,0x00]
nor.t %d0, %d0, 24, %d0, 0

# CHECK-INST: nor.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0x87,0x00,0xd8,0x03]
nor.t %d0, %d0, 24, %d0, 7

# CHECK-INST: nor.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0x87,0x00,0x58,0x0c]
nor.t %d0, %d0, 24, %d0, 24

# CHECK-INST: nor.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0x87,0x00,0xd8,0x0f]
nor.t %d0, %d0, 24, %d0, 31

# CHECK-INST: nor.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0x87,0x10,0x58,0x00]
nor.t %d0, %d0, 24, %d1, 0

# CHECK-INST: nor.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0x87,0x10,0xd8,0x03]
nor.t %d0, %d0, 24, %d1, 7

# CHECK-INST: nor.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0x87,0x10,0x58,0x0c]
nor.t %d0, %d0, 24, %d1, 24

# CHECK-INST: nor.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0x87,0x10,0xd8,0x0f]
nor.t %d0, %d0, 24, %d1, 31

# CHECK-INST: nor.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x58,0x00]
nor.t %d0, %d0, 24, %d14, 0

# CHECK-INST: nor.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xd8,0x03]
nor.t %d0, %d0, 24, %d14, 7

# CHECK-INST: nor.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x58,0x0c]
nor.t %d0, %d0, 24, %d14, 24

# CHECK-INST: nor.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xd8,0x0f]
nor.t %d0, %d0, 24, %d14, 31

# CHECK-INST: nor.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x58,0x00]
nor.t %d0, %d0, 24, %d15, 0

# CHECK-INST: nor.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xd8,0x03]
nor.t %d0, %d0, 24, %d15, 7

# CHECK-INST: nor.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x58,0x0c]
nor.t %d0, %d0, 24, %d15, 24

# CHECK-INST: nor.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xd8,0x0f]
nor.t %d0, %d0, 24, %d15, 31

# CHECK-INST: nor.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0x87,0x00,0x5f,0x00]
nor.t %d0, %d0, 31, %d0, 0

# CHECK-INST: nor.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0x87,0x00,0xdf,0x03]
nor.t %d0, %d0, 31, %d0, 7

# CHECK-INST: nor.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0x87,0x00,0x5f,0x0c]
nor.t %d0, %d0, 31, %d0, 24

# CHECK-INST: nor.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0x87,0x00,0xdf,0x0f]
nor.t %d0, %d0, 31, %d0, 31

# CHECK-INST: nor.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0x87,0x10,0x5f,0x00]
nor.t %d0, %d0, 31, %d1, 0

# CHECK-INST: nor.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0x87,0x10,0xdf,0x03]
nor.t %d0, %d0, 31, %d1, 7

# CHECK-INST: nor.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0x87,0x10,0x5f,0x0c]
nor.t %d0, %d0, 31, %d1, 24

# CHECK-INST: nor.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0x87,0x10,0xdf,0x0f]
nor.t %d0, %d0, 31, %d1, 31

# CHECK-INST: nor.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x5f,0x00]
nor.t %d0, %d0, 31, %d14, 0

# CHECK-INST: nor.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xdf,0x03]
nor.t %d0, %d0, 31, %d14, 7

# CHECK-INST: nor.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x5f,0x0c]
nor.t %d0, %d0, 31, %d14, 24

# CHECK-INST: nor.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xdf,0x0f]
nor.t %d0, %d0, 31, %d14, 31

# CHECK-INST: nor.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x5f,0x00]
nor.t %d0, %d0, 31, %d15, 0

# CHECK-INST: nor.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xdf,0x03]
nor.t %d0, %d0, 31, %d15, 7

# CHECK-INST: nor.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x5f,0x0c]
nor.t %d0, %d0, 31, %d15, 24

# CHECK-INST: nor.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xdf,0x0f]
nor.t %d0, %d0, 31, %d15, 31

# CHECK-INST: nor.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0x87,0x01,0x40,0x00]
nor.t %d0, %d1, 0, %d0, 0

# CHECK-INST: nor.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0x87,0x01,0xc0,0x03]
nor.t %d0, %d1, 0, %d0, 7

# CHECK-INST: nor.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0x87,0x01,0x40,0x0c]
nor.t %d0, %d1, 0, %d0, 24

# CHECK-INST: nor.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0x87,0x01,0xc0,0x0f]
nor.t %d0, %d1, 0, %d0, 31

# CHECK-INST: nor.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0x87,0x11,0x40,0x00]
nor.t %d0, %d1, 0, %d1, 0

# CHECK-INST: nor.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0x87,0x11,0xc0,0x03]
nor.t %d0, %d1, 0, %d1, 7

# CHECK-INST: nor.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0x87,0x11,0x40,0x0c]
nor.t %d0, %d1, 0, %d1, 24

# CHECK-INST: nor.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0x87,0x11,0xc0,0x0f]
nor.t %d0, %d1, 0, %d1, 31

# CHECK-INST: nor.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x40,0x00]
nor.t %d0, %d1, 0, %d14, 0

# CHECK-INST: nor.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xc0,0x03]
nor.t %d0, %d1, 0, %d14, 7

# CHECK-INST: nor.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x40,0x0c]
nor.t %d0, %d1, 0, %d14, 24

# CHECK-INST: nor.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xc0,0x0f]
nor.t %d0, %d1, 0, %d14, 31

# CHECK-INST: nor.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x40,0x00]
nor.t %d0, %d1, 0, %d15, 0

# CHECK-INST: nor.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xc0,0x03]
nor.t %d0, %d1, 0, %d15, 7

# CHECK-INST: nor.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x40,0x0c]
nor.t %d0, %d1, 0, %d15, 24

# CHECK-INST: nor.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xc0,0x0f]
nor.t %d0, %d1, 0, %d15, 31

# CHECK-INST: nor.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0x87,0x01,0x47,0x00]
nor.t %d0, %d1, 7, %d0, 0

# CHECK-INST: nor.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0x87,0x01,0xc7,0x03]
nor.t %d0, %d1, 7, %d0, 7

# CHECK-INST: nor.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0x87,0x01,0x47,0x0c]
nor.t %d0, %d1, 7, %d0, 24

# CHECK-INST: nor.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0x87,0x01,0xc7,0x0f]
nor.t %d0, %d1, 7, %d0, 31

# CHECK-INST: nor.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0x87,0x11,0x47,0x00]
nor.t %d0, %d1, 7, %d1, 0

# CHECK-INST: nor.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0x87,0x11,0xc7,0x03]
nor.t %d0, %d1, 7, %d1, 7

# CHECK-INST: nor.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0x87,0x11,0x47,0x0c]
nor.t %d0, %d1, 7, %d1, 24

# CHECK-INST: nor.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0x87,0x11,0xc7,0x0f]
nor.t %d0, %d1, 7, %d1, 31

# CHECK-INST: nor.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x47,0x00]
nor.t %d0, %d1, 7, %d14, 0

# CHECK-INST: nor.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xc7,0x03]
nor.t %d0, %d1, 7, %d14, 7

# CHECK-INST: nor.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x47,0x0c]
nor.t %d0, %d1, 7, %d14, 24

# CHECK-INST: nor.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xc7,0x0f]
nor.t %d0, %d1, 7, %d14, 31

# CHECK-INST: nor.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x47,0x00]
nor.t %d0, %d1, 7, %d15, 0

# CHECK-INST: nor.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xc7,0x03]
nor.t %d0, %d1, 7, %d15, 7

# CHECK-INST: nor.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x47,0x0c]
nor.t %d0, %d1, 7, %d15, 24

# CHECK-INST: nor.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xc7,0x0f]
nor.t %d0, %d1, 7, %d15, 31

# CHECK-INST: nor.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0x87,0x01,0x58,0x00]
nor.t %d0, %d1, 24, %d0, 0

# CHECK-INST: nor.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0x87,0x01,0xd8,0x03]
nor.t %d0, %d1, 24, %d0, 7

# CHECK-INST: nor.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0x87,0x01,0x58,0x0c]
nor.t %d0, %d1, 24, %d0, 24

# CHECK-INST: nor.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0x87,0x01,0xd8,0x0f]
nor.t %d0, %d1, 24, %d0, 31

# CHECK-INST: nor.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0x87,0x11,0x58,0x00]
nor.t %d0, %d1, 24, %d1, 0

# CHECK-INST: nor.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0x87,0x11,0xd8,0x03]
nor.t %d0, %d1, 24, %d1, 7

# CHECK-INST: nor.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0x87,0x11,0x58,0x0c]
nor.t %d0, %d1, 24, %d1, 24

# CHECK-INST: nor.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0x87,0x11,0xd8,0x0f]
nor.t %d0, %d1, 24, %d1, 31

# CHECK-INST: nor.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x58,0x00]
nor.t %d0, %d1, 24, %d14, 0

# CHECK-INST: nor.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xd8,0x03]
nor.t %d0, %d1, 24, %d14, 7

# CHECK-INST: nor.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x58,0x0c]
nor.t %d0, %d1, 24, %d14, 24

# CHECK-INST: nor.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xd8,0x0f]
nor.t %d0, %d1, 24, %d14, 31

# CHECK-INST: nor.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x58,0x00]
nor.t %d0, %d1, 24, %d15, 0

# CHECK-INST: nor.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xd8,0x03]
nor.t %d0, %d1, 24, %d15, 7

# CHECK-INST: nor.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x58,0x0c]
nor.t %d0, %d1, 24, %d15, 24

# CHECK-INST: nor.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xd8,0x0f]
nor.t %d0, %d1, 24, %d15, 31

# CHECK-INST: nor.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0x87,0x01,0x5f,0x00]
nor.t %d0, %d1, 31, %d0, 0

# CHECK-INST: nor.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0x87,0x01,0xdf,0x03]
nor.t %d0, %d1, 31, %d0, 7

# CHECK-INST: nor.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0x87,0x01,0x5f,0x0c]
nor.t %d0, %d1, 31, %d0, 24

# CHECK-INST: nor.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0x87,0x01,0xdf,0x0f]
nor.t %d0, %d1, 31, %d0, 31

# CHECK-INST: nor.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0x87,0x11,0x5f,0x00]
nor.t %d0, %d1, 31, %d1, 0

# CHECK-INST: nor.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0x87,0x11,0xdf,0x03]
nor.t %d0, %d1, 31, %d1, 7

# CHECK-INST: nor.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0x87,0x11,0x5f,0x0c]
nor.t %d0, %d1, 31, %d1, 24

# CHECK-INST: nor.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0x87,0x11,0xdf,0x0f]
nor.t %d0, %d1, 31, %d1, 31

# CHECK-INST: nor.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x5f,0x00]
nor.t %d0, %d1, 31, %d14, 0

# CHECK-INST: nor.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xdf,0x03]
nor.t %d0, %d1, 31, %d14, 7

# CHECK-INST: nor.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x5f,0x0c]
nor.t %d0, %d1, 31, %d14, 24

# CHECK-INST: nor.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xdf,0x0f]
nor.t %d0, %d1, 31, %d14, 31

# CHECK-INST: nor.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x5f,0x00]
nor.t %d0, %d1, 31, %d15, 0

# CHECK-INST: nor.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xdf,0x03]
nor.t %d0, %d1, 31, %d15, 7

# CHECK-INST: nor.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x5f,0x0c]
nor.t %d0, %d1, 31, %d15, 24

# CHECK-INST: nor.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xdf,0x0f]
nor.t %d0, %d1, 31, %d15, 31

# CHECK-INST: nor.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x40,0x00]
nor.t %d0, %d14, 0, %d0, 0

# CHECK-INST: nor.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xc0,0x03]
nor.t %d0, %d14, 0, %d0, 7

# CHECK-INST: nor.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x40,0x0c]
nor.t %d0, %d14, 0, %d0, 24

# CHECK-INST: nor.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xc0,0x0f]
nor.t %d0, %d14, 0, %d0, 31

# CHECK-INST: nor.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x40,0x00]
nor.t %d0, %d14, 0, %d1, 0

# CHECK-INST: nor.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xc0,0x03]
nor.t %d0, %d14, 0, %d1, 7

# CHECK-INST: nor.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x40,0x0c]
nor.t %d0, %d14, 0, %d1, 24

# CHECK-INST: nor.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xc0,0x0f]
nor.t %d0, %d14, 0, %d1, 31

# CHECK-INST: nor.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0x87,0xee,0x40,0x00]
nor.t %d0, %d14, 0, %d14, 0

# CHECK-INST: nor.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0x87,0xee,0xc0,0x03]
nor.t %d0, %d14, 0, %d14, 7

# CHECK-INST: nor.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0x87,0xee,0x40,0x0c]
nor.t %d0, %d14, 0, %d14, 24

# CHECK-INST: nor.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0x87,0xee,0xc0,0x0f]
nor.t %d0, %d14, 0, %d14, 31

# CHECK-INST: nor.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x40,0x00]
nor.t %d0, %d14, 0, %d15, 0

# CHECK-INST: nor.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xc0,0x03]
nor.t %d0, %d14, 0, %d15, 7

# CHECK-INST: nor.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x40,0x0c]
nor.t %d0, %d14, 0, %d15, 24

# CHECK-INST: nor.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xc0,0x0f]
nor.t %d0, %d14, 0, %d15, 31

# CHECK-INST: nor.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x47,0x00]
nor.t %d0, %d14, 7, %d0, 0

# CHECK-INST: nor.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xc7,0x03]
nor.t %d0, %d14, 7, %d0, 7

# CHECK-INST: nor.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x47,0x0c]
nor.t %d0, %d14, 7, %d0, 24

# CHECK-INST: nor.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xc7,0x0f]
nor.t %d0, %d14, 7, %d0, 31

# CHECK-INST: nor.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x47,0x00]
nor.t %d0, %d14, 7, %d1, 0

# CHECK-INST: nor.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xc7,0x03]
nor.t %d0, %d14, 7, %d1, 7

# CHECK-INST: nor.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x47,0x0c]
nor.t %d0, %d14, 7, %d1, 24

# CHECK-INST: nor.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xc7,0x0f]
nor.t %d0, %d14, 7, %d1, 31

# CHECK-INST: nor.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0x87,0xee,0x47,0x00]
nor.t %d0, %d14, 7, %d14, 0

# CHECK-INST: nor.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0x87,0xee,0xc7,0x03]
nor.t %d0, %d14, 7, %d14, 7

# CHECK-INST: nor.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0x87,0xee,0x47,0x0c]
nor.t %d0, %d14, 7, %d14, 24

# CHECK-INST: nor.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0x87,0xee,0xc7,0x0f]
nor.t %d0, %d14, 7, %d14, 31

# CHECK-INST: nor.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x47,0x00]
nor.t %d0, %d14, 7, %d15, 0

# CHECK-INST: nor.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xc7,0x03]
nor.t %d0, %d14, 7, %d15, 7

# CHECK-INST: nor.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x47,0x0c]
nor.t %d0, %d14, 7, %d15, 24

# CHECK-INST: nor.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xc7,0x0f]
nor.t %d0, %d14, 7, %d15, 31

# CHECK-INST: nor.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x58,0x00]
nor.t %d0, %d14, 24, %d0, 0

# CHECK-INST: nor.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xd8,0x03]
nor.t %d0, %d14, 24, %d0, 7

# CHECK-INST: nor.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x58,0x0c]
nor.t %d0, %d14, 24, %d0, 24

# CHECK-INST: nor.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xd8,0x0f]
nor.t %d0, %d14, 24, %d0, 31

# CHECK-INST: nor.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x58,0x00]
nor.t %d0, %d14, 24, %d1, 0

# CHECK-INST: nor.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xd8,0x03]
nor.t %d0, %d14, 24, %d1, 7

# CHECK-INST: nor.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x58,0x0c]
nor.t %d0, %d14, 24, %d1, 24

# CHECK-INST: nor.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xd8,0x0f]
nor.t %d0, %d14, 24, %d1, 31

# CHECK-INST: nor.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0x87,0xee,0x58,0x00]
nor.t %d0, %d14, 24, %d14, 0

# CHECK-INST: nor.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0x87,0xee,0xd8,0x03]
nor.t %d0, %d14, 24, %d14, 7

# CHECK-INST: nor.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0x87,0xee,0x58,0x0c]
nor.t %d0, %d14, 24, %d14, 24

# CHECK-INST: nor.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0x87,0xee,0xd8,0x0f]
nor.t %d0, %d14, 24, %d14, 31

# CHECK-INST: nor.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x58,0x00]
nor.t %d0, %d14, 24, %d15, 0

# CHECK-INST: nor.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xd8,0x03]
nor.t %d0, %d14, 24, %d15, 7

# CHECK-INST: nor.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x58,0x0c]
nor.t %d0, %d14, 24, %d15, 24

# CHECK-INST: nor.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xd8,0x0f]
nor.t %d0, %d14, 24, %d15, 31

# CHECK-INST: nor.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x5f,0x00]
nor.t %d0, %d14, 31, %d0, 0

# CHECK-INST: nor.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xdf,0x03]
nor.t %d0, %d14, 31, %d0, 7

# CHECK-INST: nor.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x5f,0x0c]
nor.t %d0, %d14, 31, %d0, 24

# CHECK-INST: nor.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xdf,0x0f]
nor.t %d0, %d14, 31, %d0, 31

# CHECK-INST: nor.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x5f,0x00]
nor.t %d0, %d14, 31, %d1, 0

# CHECK-INST: nor.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xdf,0x03]
nor.t %d0, %d14, 31, %d1, 7

# CHECK-INST: nor.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x5f,0x0c]
nor.t %d0, %d14, 31, %d1, 24

# CHECK-INST: nor.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xdf,0x0f]
nor.t %d0, %d14, 31, %d1, 31

# CHECK-INST: nor.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0x87,0xee,0x5f,0x00]
nor.t %d0, %d14, 31, %d14, 0

# CHECK-INST: nor.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0x87,0xee,0xdf,0x03]
nor.t %d0, %d14, 31, %d14, 7

# CHECK-INST: nor.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0x87,0xee,0x5f,0x0c]
nor.t %d0, %d14, 31, %d14, 24

# CHECK-INST: nor.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0x87,0xee,0xdf,0x0f]
nor.t %d0, %d14, 31, %d14, 31

# CHECK-INST: nor.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x5f,0x00]
nor.t %d0, %d14, 31, %d15, 0

# CHECK-INST: nor.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xdf,0x03]
nor.t %d0, %d14, 31, %d15, 7

# CHECK-INST: nor.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x5f,0x0c]
nor.t %d0, %d14, 31, %d15, 24

# CHECK-INST: nor.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xdf,0x0f]
nor.t %d0, %d14, 31, %d15, 31

# CHECK-INST: nor.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x40,0x00]
nor.t %d0, %d15, 0, %d0, 0

# CHECK-INST: nor.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xc0,0x03]
nor.t %d0, %d15, 0, %d0, 7

# CHECK-INST: nor.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x40,0x0c]
nor.t %d0, %d15, 0, %d0, 24

# CHECK-INST: nor.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xc0,0x0f]
nor.t %d0, %d15, 0, %d0, 31

# CHECK-INST: nor.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x40,0x00]
nor.t %d0, %d15, 0, %d1, 0

# CHECK-INST: nor.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xc0,0x03]
nor.t %d0, %d15, 0, %d1, 7

# CHECK-INST: nor.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x40,0x0c]
nor.t %d0, %d15, 0, %d1, 24

# CHECK-INST: nor.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xc0,0x0f]
nor.t %d0, %d15, 0, %d1, 31

# CHECK-INST: nor.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0x87,0xef,0x40,0x00]
nor.t %d0, %d15, 0, %d14, 0

# CHECK-INST: nor.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0x87,0xef,0xc0,0x03]
nor.t %d0, %d15, 0, %d14, 7

# CHECK-INST: nor.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0x87,0xef,0x40,0x0c]
nor.t %d0, %d15, 0, %d14, 24

# CHECK-INST: nor.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0x87,0xef,0xc0,0x0f]
nor.t %d0, %d15, 0, %d14, 31

# CHECK-INST: nor.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0x87,0xff,0x40,0x00]
nor.t %d0, %d15, 0, %d15, 0

# CHECK-INST: nor.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0x87,0xff,0xc0,0x03]
nor.t %d0, %d15, 0, %d15, 7

# CHECK-INST: nor.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0x87,0xff,0x40,0x0c]
nor.t %d0, %d15, 0, %d15, 24

# CHECK-INST: nor.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0x87,0xff,0xc0,0x0f]
nor.t %d0, %d15, 0, %d15, 31

# CHECK-INST: nor.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x47,0x00]
nor.t %d0, %d15, 7, %d0, 0

# CHECK-INST: nor.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xc7,0x03]
nor.t %d0, %d15, 7, %d0, 7

# CHECK-INST: nor.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x47,0x0c]
nor.t %d0, %d15, 7, %d0, 24

# CHECK-INST: nor.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xc7,0x0f]
nor.t %d0, %d15, 7, %d0, 31

# CHECK-INST: nor.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x47,0x00]
nor.t %d0, %d15, 7, %d1, 0

# CHECK-INST: nor.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xc7,0x03]
nor.t %d0, %d15, 7, %d1, 7

# CHECK-INST: nor.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x47,0x0c]
nor.t %d0, %d15, 7, %d1, 24

# CHECK-INST: nor.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xc7,0x0f]
nor.t %d0, %d15, 7, %d1, 31

# CHECK-INST: nor.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0x87,0xef,0x47,0x00]
nor.t %d0, %d15, 7, %d14, 0

# CHECK-INST: nor.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0x87,0xef,0xc7,0x03]
nor.t %d0, %d15, 7, %d14, 7

# CHECK-INST: nor.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0x87,0xef,0x47,0x0c]
nor.t %d0, %d15, 7, %d14, 24

# CHECK-INST: nor.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0x87,0xef,0xc7,0x0f]
nor.t %d0, %d15, 7, %d14, 31

# CHECK-INST: nor.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0x87,0xff,0x47,0x00]
nor.t %d0, %d15, 7, %d15, 0

# CHECK-INST: nor.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0x87,0xff,0xc7,0x03]
nor.t %d0, %d15, 7, %d15, 7

# CHECK-INST: nor.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0x87,0xff,0x47,0x0c]
nor.t %d0, %d15, 7, %d15, 24

# CHECK-INST: nor.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0x87,0xff,0xc7,0x0f]
nor.t %d0, %d15, 7, %d15, 31

# CHECK-INST: nor.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x58,0x00]
nor.t %d0, %d15, 24, %d0, 0

# CHECK-INST: nor.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xd8,0x03]
nor.t %d0, %d15, 24, %d0, 7

# CHECK-INST: nor.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x58,0x0c]
nor.t %d0, %d15, 24, %d0, 24

# CHECK-INST: nor.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xd8,0x0f]
nor.t %d0, %d15, 24, %d0, 31

# CHECK-INST: nor.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x58,0x00]
nor.t %d0, %d15, 24, %d1, 0

# CHECK-INST: nor.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xd8,0x03]
nor.t %d0, %d15, 24, %d1, 7

# CHECK-INST: nor.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x58,0x0c]
nor.t %d0, %d15, 24, %d1, 24

# CHECK-INST: nor.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xd8,0x0f]
nor.t %d0, %d15, 24, %d1, 31

# CHECK-INST: nor.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0x87,0xef,0x58,0x00]
nor.t %d0, %d15, 24, %d14, 0

# CHECK-INST: nor.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0x87,0xef,0xd8,0x03]
nor.t %d0, %d15, 24, %d14, 7

# CHECK-INST: nor.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0x87,0xef,0x58,0x0c]
nor.t %d0, %d15, 24, %d14, 24

# CHECK-INST: nor.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0x87,0xef,0xd8,0x0f]
nor.t %d0, %d15, 24, %d14, 31

# CHECK-INST: nor.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0x87,0xff,0x58,0x00]
nor.t %d0, %d15, 24, %d15, 0

# CHECK-INST: nor.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0x87,0xff,0xd8,0x03]
nor.t %d0, %d15, 24, %d15, 7

# CHECK-INST: nor.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0x87,0xff,0x58,0x0c]
nor.t %d0, %d15, 24, %d15, 24

# CHECK-INST: nor.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0x87,0xff,0xd8,0x0f]
nor.t %d0, %d15, 24, %d15, 31

# CHECK-INST: nor.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x5f,0x00]
nor.t %d0, %d15, 31, %d0, 0

# CHECK-INST: nor.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xdf,0x03]
nor.t %d0, %d15, 31, %d0, 7

# CHECK-INST: nor.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x5f,0x0c]
nor.t %d0, %d15, 31, %d0, 24

# CHECK-INST: nor.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xdf,0x0f]
nor.t %d0, %d15, 31, %d0, 31

# CHECK-INST: nor.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x5f,0x00]
nor.t %d0, %d15, 31, %d1, 0

# CHECK-INST: nor.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xdf,0x03]
nor.t %d0, %d15, 31, %d1, 7

# CHECK-INST: nor.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x5f,0x0c]
nor.t %d0, %d15, 31, %d1, 24

# CHECK-INST: nor.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xdf,0x0f]
nor.t %d0, %d15, 31, %d1, 31

# CHECK-INST: nor.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0x87,0xef,0x5f,0x00]
nor.t %d0, %d15, 31, %d14, 0

# CHECK-INST: nor.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0x87,0xef,0xdf,0x03]
nor.t %d0, %d15, 31, %d14, 7

# CHECK-INST: nor.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0x87,0xef,0x5f,0x0c]
nor.t %d0, %d15, 31, %d14, 24

# CHECK-INST: nor.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0x87,0xef,0xdf,0x0f]
nor.t %d0, %d15, 31, %d14, 31

# CHECK-INST: nor.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0x87,0xff,0x5f,0x00]
nor.t %d0, %d15, 31, %d15, 0

# CHECK-INST: nor.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0x87,0xff,0xdf,0x03]
nor.t %d0, %d15, 31, %d15, 7

# CHECK-INST: nor.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0x87,0xff,0x5f,0x0c]
nor.t %d0, %d15, 31, %d15, 24

# CHECK-INST: nor.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0x87,0xff,0xdf,0x0f]
nor.t %d0, %d15, 31, %d15, 31

# CHECK-INST: nor.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x40,0x10]
nor.t %d1, %d0, 0, %d0, 0

# CHECK-INST: nor.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0x87,0x00,0xc0,0x13]
nor.t %d1, %d0, 0, %d0, 7

# CHECK-INST: nor.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0x87,0x00,0x40,0x1c]
nor.t %d1, %d0, 0, %d0, 24

# CHECK-INST: nor.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0x87,0x00,0xc0,0x1f]
nor.t %d1, %d0, 0, %d0, 31

# CHECK-INST: nor.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0x87,0x10,0x40,0x10]
nor.t %d1, %d0, 0, %d1, 0

# CHECK-INST: nor.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0x87,0x10,0xc0,0x13]
nor.t %d1, %d0, 0, %d1, 7

# CHECK-INST: nor.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0x87,0x10,0x40,0x1c]
nor.t %d1, %d0, 0, %d1, 24

# CHECK-INST: nor.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0x87,0x10,0xc0,0x1f]
nor.t %d1, %d0, 0, %d1, 31

# CHECK-INST: nor.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x40,0x10]
nor.t %d1, %d0, 0, %d14, 0

# CHECK-INST: nor.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xc0,0x13]
nor.t %d1, %d0, 0, %d14, 7

# CHECK-INST: nor.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x40,0x1c]
nor.t %d1, %d0, 0, %d14, 24

# CHECK-INST: nor.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xc0,0x1f]
nor.t %d1, %d0, 0, %d14, 31

# CHECK-INST: nor.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x40,0x10]
nor.t %d1, %d0, 0, %d15, 0

# CHECK-INST: nor.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xc0,0x13]
nor.t %d1, %d0, 0, %d15, 7

# CHECK-INST: nor.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x40,0x1c]
nor.t %d1, %d0, 0, %d15, 24

# CHECK-INST: nor.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xc0,0x1f]
nor.t %d1, %d0, 0, %d15, 31

# CHECK-INST: nor.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0x87,0x00,0x47,0x10]
nor.t %d1, %d0, 7, %d0, 0

# CHECK-INST: nor.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0x87,0x00,0xc7,0x13]
nor.t %d1, %d0, 7, %d0, 7

# CHECK-INST: nor.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0x87,0x00,0x47,0x1c]
nor.t %d1, %d0, 7, %d0, 24

# CHECK-INST: nor.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0x87,0x00,0xc7,0x1f]
nor.t %d1, %d0, 7, %d0, 31

# CHECK-INST: nor.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0x87,0x10,0x47,0x10]
nor.t %d1, %d0, 7, %d1, 0

# CHECK-INST: nor.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0x87,0x10,0xc7,0x13]
nor.t %d1, %d0, 7, %d1, 7

# CHECK-INST: nor.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0x87,0x10,0x47,0x1c]
nor.t %d1, %d0, 7, %d1, 24

# CHECK-INST: nor.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0x87,0x10,0xc7,0x1f]
nor.t %d1, %d0, 7, %d1, 31

# CHECK-INST: nor.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x47,0x10]
nor.t %d1, %d0, 7, %d14, 0

# CHECK-INST: nor.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xc7,0x13]
nor.t %d1, %d0, 7, %d14, 7

# CHECK-INST: nor.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x47,0x1c]
nor.t %d1, %d0, 7, %d14, 24

# CHECK-INST: nor.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xc7,0x1f]
nor.t %d1, %d0, 7, %d14, 31

# CHECK-INST: nor.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x47,0x10]
nor.t %d1, %d0, 7, %d15, 0

# CHECK-INST: nor.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xc7,0x13]
nor.t %d1, %d0, 7, %d15, 7

# CHECK-INST: nor.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x47,0x1c]
nor.t %d1, %d0, 7, %d15, 24

# CHECK-INST: nor.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xc7,0x1f]
nor.t %d1, %d0, 7, %d15, 31

# CHECK-INST: nor.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0x87,0x00,0x58,0x10]
nor.t %d1, %d0, 24, %d0, 0

# CHECK-INST: nor.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0x87,0x00,0xd8,0x13]
nor.t %d1, %d0, 24, %d0, 7

# CHECK-INST: nor.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0x87,0x00,0x58,0x1c]
nor.t %d1, %d0, 24, %d0, 24

# CHECK-INST: nor.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0x87,0x00,0xd8,0x1f]
nor.t %d1, %d0, 24, %d0, 31

# CHECK-INST: nor.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0x87,0x10,0x58,0x10]
nor.t %d1, %d0, 24, %d1, 0

# CHECK-INST: nor.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0x87,0x10,0xd8,0x13]
nor.t %d1, %d0, 24, %d1, 7

# CHECK-INST: nor.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0x87,0x10,0x58,0x1c]
nor.t %d1, %d0, 24, %d1, 24

# CHECK-INST: nor.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0x87,0x10,0xd8,0x1f]
nor.t %d1, %d0, 24, %d1, 31

# CHECK-INST: nor.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x58,0x10]
nor.t %d1, %d0, 24, %d14, 0

# CHECK-INST: nor.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xd8,0x13]
nor.t %d1, %d0, 24, %d14, 7

# CHECK-INST: nor.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x58,0x1c]
nor.t %d1, %d0, 24, %d14, 24

# CHECK-INST: nor.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xd8,0x1f]
nor.t %d1, %d0, 24, %d14, 31

# CHECK-INST: nor.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x58,0x10]
nor.t %d1, %d0, 24, %d15, 0

# CHECK-INST: nor.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xd8,0x13]
nor.t %d1, %d0, 24, %d15, 7

# CHECK-INST: nor.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x58,0x1c]
nor.t %d1, %d0, 24, %d15, 24

# CHECK-INST: nor.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xd8,0x1f]
nor.t %d1, %d0, 24, %d15, 31

# CHECK-INST: nor.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0x87,0x00,0x5f,0x10]
nor.t %d1, %d0, 31, %d0, 0

# CHECK-INST: nor.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0x87,0x00,0xdf,0x13]
nor.t %d1, %d0, 31, %d0, 7

# CHECK-INST: nor.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0x87,0x00,0x5f,0x1c]
nor.t %d1, %d0, 31, %d0, 24

# CHECK-INST: nor.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0x87,0x00,0xdf,0x1f]
nor.t %d1, %d0, 31, %d0, 31

# CHECK-INST: nor.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0x87,0x10,0x5f,0x10]
nor.t %d1, %d0, 31, %d1, 0

# CHECK-INST: nor.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0x87,0x10,0xdf,0x13]
nor.t %d1, %d0, 31, %d1, 7

# CHECK-INST: nor.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0x87,0x10,0x5f,0x1c]
nor.t %d1, %d0, 31, %d1, 24

# CHECK-INST: nor.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0x87,0x10,0xdf,0x1f]
nor.t %d1, %d0, 31, %d1, 31

# CHECK-INST: nor.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x5f,0x10]
nor.t %d1, %d0, 31, %d14, 0

# CHECK-INST: nor.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xdf,0x13]
nor.t %d1, %d0, 31, %d14, 7

# CHECK-INST: nor.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x5f,0x1c]
nor.t %d1, %d0, 31, %d14, 24

# CHECK-INST: nor.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xdf,0x1f]
nor.t %d1, %d0, 31, %d14, 31

# CHECK-INST: nor.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x5f,0x10]
nor.t %d1, %d0, 31, %d15, 0

# CHECK-INST: nor.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xdf,0x13]
nor.t %d1, %d0, 31, %d15, 7

# CHECK-INST: nor.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x5f,0x1c]
nor.t %d1, %d0, 31, %d15, 24

# CHECK-INST: nor.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xdf,0x1f]
nor.t %d1, %d0, 31, %d15, 31

# CHECK-INST: nor.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0x87,0x01,0x40,0x10]
nor.t %d1, %d1, 0, %d0, 0

# CHECK-INST: nor.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0x87,0x01,0xc0,0x13]
nor.t %d1, %d1, 0, %d0, 7

# CHECK-INST: nor.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0x87,0x01,0x40,0x1c]
nor.t %d1, %d1, 0, %d0, 24

# CHECK-INST: nor.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0x87,0x01,0xc0,0x1f]
nor.t %d1, %d1, 0, %d0, 31

# CHECK-INST: nor.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0x87,0x11,0x40,0x10]
nor.t %d1, %d1, 0, %d1, 0

# CHECK-INST: nor.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0x87,0x11,0xc0,0x13]
nor.t %d1, %d1, 0, %d1, 7

# CHECK-INST: nor.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0x87,0x11,0x40,0x1c]
nor.t %d1, %d1, 0, %d1, 24

# CHECK-INST: nor.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0x87,0x11,0xc0,0x1f]
nor.t %d1, %d1, 0, %d1, 31

# CHECK-INST: nor.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x40,0x10]
nor.t %d1, %d1, 0, %d14, 0

# CHECK-INST: nor.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xc0,0x13]
nor.t %d1, %d1, 0, %d14, 7

# CHECK-INST: nor.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x40,0x1c]
nor.t %d1, %d1, 0, %d14, 24

# CHECK-INST: nor.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xc0,0x1f]
nor.t %d1, %d1, 0, %d14, 31

# CHECK-INST: nor.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x40,0x10]
nor.t %d1, %d1, 0, %d15, 0

# CHECK-INST: nor.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xc0,0x13]
nor.t %d1, %d1, 0, %d15, 7

# CHECK-INST: nor.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x40,0x1c]
nor.t %d1, %d1, 0, %d15, 24

# CHECK-INST: nor.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xc0,0x1f]
nor.t %d1, %d1, 0, %d15, 31

# CHECK-INST: nor.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0x87,0x01,0x47,0x10]
nor.t %d1, %d1, 7, %d0, 0

# CHECK-INST: nor.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0x87,0x01,0xc7,0x13]
nor.t %d1, %d1, 7, %d0, 7

# CHECK-INST: nor.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0x87,0x01,0x47,0x1c]
nor.t %d1, %d1, 7, %d0, 24

# CHECK-INST: nor.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0x87,0x01,0xc7,0x1f]
nor.t %d1, %d1, 7, %d0, 31

# CHECK-INST: nor.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0x87,0x11,0x47,0x10]
nor.t %d1, %d1, 7, %d1, 0

# CHECK-INST: nor.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0x87,0x11,0xc7,0x13]
nor.t %d1, %d1, 7, %d1, 7

# CHECK-INST: nor.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0x87,0x11,0x47,0x1c]
nor.t %d1, %d1, 7, %d1, 24

# CHECK-INST: nor.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0x87,0x11,0xc7,0x1f]
nor.t %d1, %d1, 7, %d1, 31

# CHECK-INST: nor.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x47,0x10]
nor.t %d1, %d1, 7, %d14, 0

# CHECK-INST: nor.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xc7,0x13]
nor.t %d1, %d1, 7, %d14, 7

# CHECK-INST: nor.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x47,0x1c]
nor.t %d1, %d1, 7, %d14, 24

# CHECK-INST: nor.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xc7,0x1f]
nor.t %d1, %d1, 7, %d14, 31

# CHECK-INST: nor.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x47,0x10]
nor.t %d1, %d1, 7, %d15, 0

# CHECK-INST: nor.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xc7,0x13]
nor.t %d1, %d1, 7, %d15, 7

# CHECK-INST: nor.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x47,0x1c]
nor.t %d1, %d1, 7, %d15, 24

# CHECK-INST: nor.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xc7,0x1f]
nor.t %d1, %d1, 7, %d15, 31

# CHECK-INST: nor.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0x87,0x01,0x58,0x10]
nor.t %d1, %d1, 24, %d0, 0

# CHECK-INST: nor.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0x87,0x01,0xd8,0x13]
nor.t %d1, %d1, 24, %d0, 7

# CHECK-INST: nor.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0x87,0x01,0x58,0x1c]
nor.t %d1, %d1, 24, %d0, 24

# CHECK-INST: nor.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0x87,0x01,0xd8,0x1f]
nor.t %d1, %d1, 24, %d0, 31

# CHECK-INST: nor.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0x87,0x11,0x58,0x10]
nor.t %d1, %d1, 24, %d1, 0

# CHECK-INST: nor.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0x87,0x11,0xd8,0x13]
nor.t %d1, %d1, 24, %d1, 7

# CHECK-INST: nor.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0x87,0x11,0x58,0x1c]
nor.t %d1, %d1, 24, %d1, 24

# CHECK-INST: nor.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0x87,0x11,0xd8,0x1f]
nor.t %d1, %d1, 24, %d1, 31

# CHECK-INST: nor.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x58,0x10]
nor.t %d1, %d1, 24, %d14, 0

# CHECK-INST: nor.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xd8,0x13]
nor.t %d1, %d1, 24, %d14, 7

# CHECK-INST: nor.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x58,0x1c]
nor.t %d1, %d1, 24, %d14, 24

# CHECK-INST: nor.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xd8,0x1f]
nor.t %d1, %d1, 24, %d14, 31

# CHECK-INST: nor.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x58,0x10]
nor.t %d1, %d1, 24, %d15, 0

# CHECK-INST: nor.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xd8,0x13]
nor.t %d1, %d1, 24, %d15, 7

# CHECK-INST: nor.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x58,0x1c]
nor.t %d1, %d1, 24, %d15, 24

# CHECK-INST: nor.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xd8,0x1f]
nor.t %d1, %d1, 24, %d15, 31

# CHECK-INST: nor.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0x87,0x01,0x5f,0x10]
nor.t %d1, %d1, 31, %d0, 0

# CHECK-INST: nor.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0x87,0x01,0xdf,0x13]
nor.t %d1, %d1, 31, %d0, 7

# CHECK-INST: nor.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0x87,0x01,0x5f,0x1c]
nor.t %d1, %d1, 31, %d0, 24

# CHECK-INST: nor.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0x87,0x01,0xdf,0x1f]
nor.t %d1, %d1, 31, %d0, 31

# CHECK-INST: nor.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0x87,0x11,0x5f,0x10]
nor.t %d1, %d1, 31, %d1, 0

# CHECK-INST: nor.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0x87,0x11,0xdf,0x13]
nor.t %d1, %d1, 31, %d1, 7

# CHECK-INST: nor.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0x87,0x11,0x5f,0x1c]
nor.t %d1, %d1, 31, %d1, 24

# CHECK-INST: nor.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0x87,0x11,0xdf,0x1f]
nor.t %d1, %d1, 31, %d1, 31

# CHECK-INST: nor.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x5f,0x10]
nor.t %d1, %d1, 31, %d14, 0

# CHECK-INST: nor.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xdf,0x13]
nor.t %d1, %d1, 31, %d14, 7

# CHECK-INST: nor.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x5f,0x1c]
nor.t %d1, %d1, 31, %d14, 24

# CHECK-INST: nor.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xdf,0x1f]
nor.t %d1, %d1, 31, %d14, 31

# CHECK-INST: nor.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x5f,0x10]
nor.t %d1, %d1, 31, %d15, 0

# CHECK-INST: nor.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xdf,0x13]
nor.t %d1, %d1, 31, %d15, 7

# CHECK-INST: nor.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x5f,0x1c]
nor.t %d1, %d1, 31, %d15, 24

# CHECK-INST: nor.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xdf,0x1f]
nor.t %d1, %d1, 31, %d15, 31

# CHECK-INST: nor.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x40,0x10]
nor.t %d1, %d14, 0, %d0, 0

# CHECK-INST: nor.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xc0,0x13]
nor.t %d1, %d14, 0, %d0, 7

# CHECK-INST: nor.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x40,0x1c]
nor.t %d1, %d14, 0, %d0, 24

# CHECK-INST: nor.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xc0,0x1f]
nor.t %d1, %d14, 0, %d0, 31

# CHECK-INST: nor.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x40,0x10]
nor.t %d1, %d14, 0, %d1, 0

# CHECK-INST: nor.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xc0,0x13]
nor.t %d1, %d14, 0, %d1, 7

# CHECK-INST: nor.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x40,0x1c]
nor.t %d1, %d14, 0, %d1, 24

# CHECK-INST: nor.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xc0,0x1f]
nor.t %d1, %d14, 0, %d1, 31

# CHECK-INST: nor.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0x87,0xee,0x40,0x10]
nor.t %d1, %d14, 0, %d14, 0

# CHECK-INST: nor.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0x87,0xee,0xc0,0x13]
nor.t %d1, %d14, 0, %d14, 7

# CHECK-INST: nor.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0x87,0xee,0x40,0x1c]
nor.t %d1, %d14, 0, %d14, 24

# CHECK-INST: nor.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0x87,0xee,0xc0,0x1f]
nor.t %d1, %d14, 0, %d14, 31

# CHECK-INST: nor.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x40,0x10]
nor.t %d1, %d14, 0, %d15, 0

# CHECK-INST: nor.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xc0,0x13]
nor.t %d1, %d14, 0, %d15, 7

# CHECK-INST: nor.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x40,0x1c]
nor.t %d1, %d14, 0, %d15, 24

# CHECK-INST: nor.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xc0,0x1f]
nor.t %d1, %d14, 0, %d15, 31

# CHECK-INST: nor.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x47,0x10]
nor.t %d1, %d14, 7, %d0, 0

# CHECK-INST: nor.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xc7,0x13]
nor.t %d1, %d14, 7, %d0, 7

# CHECK-INST: nor.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x47,0x1c]
nor.t %d1, %d14, 7, %d0, 24

# CHECK-INST: nor.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xc7,0x1f]
nor.t %d1, %d14, 7, %d0, 31

# CHECK-INST: nor.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x47,0x10]
nor.t %d1, %d14, 7, %d1, 0

# CHECK-INST: nor.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xc7,0x13]
nor.t %d1, %d14, 7, %d1, 7

# CHECK-INST: nor.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x47,0x1c]
nor.t %d1, %d14, 7, %d1, 24

# CHECK-INST: nor.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xc7,0x1f]
nor.t %d1, %d14, 7, %d1, 31

# CHECK-INST: nor.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0x87,0xee,0x47,0x10]
nor.t %d1, %d14, 7, %d14, 0

# CHECK-INST: nor.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0x87,0xee,0xc7,0x13]
nor.t %d1, %d14, 7, %d14, 7

# CHECK-INST: nor.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0x87,0xee,0x47,0x1c]
nor.t %d1, %d14, 7, %d14, 24

# CHECK-INST: nor.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0x87,0xee,0xc7,0x1f]
nor.t %d1, %d14, 7, %d14, 31

# CHECK-INST: nor.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x47,0x10]
nor.t %d1, %d14, 7, %d15, 0

# CHECK-INST: nor.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xc7,0x13]
nor.t %d1, %d14, 7, %d15, 7

# CHECK-INST: nor.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x47,0x1c]
nor.t %d1, %d14, 7, %d15, 24

# CHECK-INST: nor.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xc7,0x1f]
nor.t %d1, %d14, 7, %d15, 31

# CHECK-INST: nor.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x58,0x10]
nor.t %d1, %d14, 24, %d0, 0

# CHECK-INST: nor.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xd8,0x13]
nor.t %d1, %d14, 24, %d0, 7

# CHECK-INST: nor.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x58,0x1c]
nor.t %d1, %d14, 24, %d0, 24

# CHECK-INST: nor.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xd8,0x1f]
nor.t %d1, %d14, 24, %d0, 31

# CHECK-INST: nor.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x58,0x10]
nor.t %d1, %d14, 24, %d1, 0

# CHECK-INST: nor.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xd8,0x13]
nor.t %d1, %d14, 24, %d1, 7

# CHECK-INST: nor.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x58,0x1c]
nor.t %d1, %d14, 24, %d1, 24

# CHECK-INST: nor.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xd8,0x1f]
nor.t %d1, %d14, 24, %d1, 31

# CHECK-INST: nor.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0x87,0xee,0x58,0x10]
nor.t %d1, %d14, 24, %d14, 0

# CHECK-INST: nor.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0x87,0xee,0xd8,0x13]
nor.t %d1, %d14, 24, %d14, 7

# CHECK-INST: nor.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0x87,0xee,0x58,0x1c]
nor.t %d1, %d14, 24, %d14, 24

# CHECK-INST: nor.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0x87,0xee,0xd8,0x1f]
nor.t %d1, %d14, 24, %d14, 31

# CHECK-INST: nor.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x58,0x10]
nor.t %d1, %d14, 24, %d15, 0

# CHECK-INST: nor.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xd8,0x13]
nor.t %d1, %d14, 24, %d15, 7

# CHECK-INST: nor.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x58,0x1c]
nor.t %d1, %d14, 24, %d15, 24

# CHECK-INST: nor.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xd8,0x1f]
nor.t %d1, %d14, 24, %d15, 31

# CHECK-INST: nor.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x5f,0x10]
nor.t %d1, %d14, 31, %d0, 0

# CHECK-INST: nor.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xdf,0x13]
nor.t %d1, %d14, 31, %d0, 7

# CHECK-INST: nor.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x5f,0x1c]
nor.t %d1, %d14, 31, %d0, 24

# CHECK-INST: nor.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xdf,0x1f]
nor.t %d1, %d14, 31, %d0, 31

# CHECK-INST: nor.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x5f,0x10]
nor.t %d1, %d14, 31, %d1, 0

# CHECK-INST: nor.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xdf,0x13]
nor.t %d1, %d14, 31, %d1, 7

# CHECK-INST: nor.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x5f,0x1c]
nor.t %d1, %d14, 31, %d1, 24

# CHECK-INST: nor.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xdf,0x1f]
nor.t %d1, %d14, 31, %d1, 31

# CHECK-INST: nor.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0x87,0xee,0x5f,0x10]
nor.t %d1, %d14, 31, %d14, 0

# CHECK-INST: nor.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0x87,0xee,0xdf,0x13]
nor.t %d1, %d14, 31, %d14, 7

# CHECK-INST: nor.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0x87,0xee,0x5f,0x1c]
nor.t %d1, %d14, 31, %d14, 24

# CHECK-INST: nor.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0x87,0xee,0xdf,0x1f]
nor.t %d1, %d14, 31, %d14, 31

# CHECK-INST: nor.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x5f,0x10]
nor.t %d1, %d14, 31, %d15, 0

# CHECK-INST: nor.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xdf,0x13]
nor.t %d1, %d14, 31, %d15, 7

# CHECK-INST: nor.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x5f,0x1c]
nor.t %d1, %d14, 31, %d15, 24

# CHECK-INST: nor.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xdf,0x1f]
nor.t %d1, %d14, 31, %d15, 31

# CHECK-INST: nor.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x40,0x10]
nor.t %d1, %d15, 0, %d0, 0

# CHECK-INST: nor.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xc0,0x13]
nor.t %d1, %d15, 0, %d0, 7

# CHECK-INST: nor.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x40,0x1c]
nor.t %d1, %d15, 0, %d0, 24

# CHECK-INST: nor.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xc0,0x1f]
nor.t %d1, %d15, 0, %d0, 31

# CHECK-INST: nor.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x40,0x10]
nor.t %d1, %d15, 0, %d1, 0

# CHECK-INST: nor.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xc0,0x13]
nor.t %d1, %d15, 0, %d1, 7

# CHECK-INST: nor.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x40,0x1c]
nor.t %d1, %d15, 0, %d1, 24

# CHECK-INST: nor.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xc0,0x1f]
nor.t %d1, %d15, 0, %d1, 31

# CHECK-INST: nor.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0x87,0xef,0x40,0x10]
nor.t %d1, %d15, 0, %d14, 0

# CHECK-INST: nor.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0x87,0xef,0xc0,0x13]
nor.t %d1, %d15, 0, %d14, 7

# CHECK-INST: nor.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0x87,0xef,0x40,0x1c]
nor.t %d1, %d15, 0, %d14, 24

# CHECK-INST: nor.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0x87,0xef,0xc0,0x1f]
nor.t %d1, %d15, 0, %d14, 31

# CHECK-INST: nor.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0x87,0xff,0x40,0x10]
nor.t %d1, %d15, 0, %d15, 0

# CHECK-INST: nor.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0x87,0xff,0xc0,0x13]
nor.t %d1, %d15, 0, %d15, 7

# CHECK-INST: nor.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0x87,0xff,0x40,0x1c]
nor.t %d1, %d15, 0, %d15, 24

# CHECK-INST: nor.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0x87,0xff,0xc0,0x1f]
nor.t %d1, %d15, 0, %d15, 31

# CHECK-INST: nor.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x47,0x10]
nor.t %d1, %d15, 7, %d0, 0

# CHECK-INST: nor.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xc7,0x13]
nor.t %d1, %d15, 7, %d0, 7

# CHECK-INST: nor.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x47,0x1c]
nor.t %d1, %d15, 7, %d0, 24

# CHECK-INST: nor.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xc7,0x1f]
nor.t %d1, %d15, 7, %d0, 31

# CHECK-INST: nor.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x47,0x10]
nor.t %d1, %d15, 7, %d1, 0

# CHECK-INST: nor.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xc7,0x13]
nor.t %d1, %d15, 7, %d1, 7

# CHECK-INST: nor.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x47,0x1c]
nor.t %d1, %d15, 7, %d1, 24

# CHECK-INST: nor.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xc7,0x1f]
nor.t %d1, %d15, 7, %d1, 31

# CHECK-INST: nor.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0x87,0xef,0x47,0x10]
nor.t %d1, %d15, 7, %d14, 0

# CHECK-INST: nor.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0x87,0xef,0xc7,0x13]
nor.t %d1, %d15, 7, %d14, 7

# CHECK-INST: nor.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0x87,0xef,0x47,0x1c]
nor.t %d1, %d15, 7, %d14, 24

# CHECK-INST: nor.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0x87,0xef,0xc7,0x1f]
nor.t %d1, %d15, 7, %d14, 31

# CHECK-INST: nor.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0x87,0xff,0x47,0x10]
nor.t %d1, %d15, 7, %d15, 0

# CHECK-INST: nor.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0x87,0xff,0xc7,0x13]
nor.t %d1, %d15, 7, %d15, 7

# CHECK-INST: nor.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0x87,0xff,0x47,0x1c]
nor.t %d1, %d15, 7, %d15, 24

# CHECK-INST: nor.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0x87,0xff,0xc7,0x1f]
nor.t %d1, %d15, 7, %d15, 31

# CHECK-INST: nor.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x58,0x10]
nor.t %d1, %d15, 24, %d0, 0

# CHECK-INST: nor.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xd8,0x13]
nor.t %d1, %d15, 24, %d0, 7

# CHECK-INST: nor.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x58,0x1c]
nor.t %d1, %d15, 24, %d0, 24

# CHECK-INST: nor.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xd8,0x1f]
nor.t %d1, %d15, 24, %d0, 31

# CHECK-INST: nor.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x58,0x10]
nor.t %d1, %d15, 24, %d1, 0

# CHECK-INST: nor.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xd8,0x13]
nor.t %d1, %d15, 24, %d1, 7

# CHECK-INST: nor.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x58,0x1c]
nor.t %d1, %d15, 24, %d1, 24

# CHECK-INST: nor.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xd8,0x1f]
nor.t %d1, %d15, 24, %d1, 31

# CHECK-INST: nor.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0x87,0xef,0x58,0x10]
nor.t %d1, %d15, 24, %d14, 0

# CHECK-INST: nor.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0x87,0xef,0xd8,0x13]
nor.t %d1, %d15, 24, %d14, 7

# CHECK-INST: nor.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0x87,0xef,0x58,0x1c]
nor.t %d1, %d15, 24, %d14, 24

# CHECK-INST: nor.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0x87,0xef,0xd8,0x1f]
nor.t %d1, %d15, 24, %d14, 31

# CHECK-INST: nor.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0x87,0xff,0x58,0x10]
nor.t %d1, %d15, 24, %d15, 0

# CHECK-INST: nor.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0x87,0xff,0xd8,0x13]
nor.t %d1, %d15, 24, %d15, 7

# CHECK-INST: nor.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0x87,0xff,0x58,0x1c]
nor.t %d1, %d15, 24, %d15, 24

# CHECK-INST: nor.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0x87,0xff,0xd8,0x1f]
nor.t %d1, %d15, 24, %d15, 31

# CHECK-INST: nor.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x5f,0x10]
nor.t %d1, %d15, 31, %d0, 0

# CHECK-INST: nor.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xdf,0x13]
nor.t %d1, %d15, 31, %d0, 7

# CHECK-INST: nor.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x5f,0x1c]
nor.t %d1, %d15, 31, %d0, 24

# CHECK-INST: nor.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xdf,0x1f]
nor.t %d1, %d15, 31, %d0, 31

# CHECK-INST: nor.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x5f,0x10]
nor.t %d1, %d15, 31, %d1, 0

# CHECK-INST: nor.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xdf,0x13]
nor.t %d1, %d15, 31, %d1, 7

# CHECK-INST: nor.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x5f,0x1c]
nor.t %d1, %d15, 31, %d1, 24

# CHECK-INST: nor.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xdf,0x1f]
nor.t %d1, %d15, 31, %d1, 31

# CHECK-INST: nor.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0x87,0xef,0x5f,0x10]
nor.t %d1, %d15, 31, %d14, 0

# CHECK-INST: nor.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0x87,0xef,0xdf,0x13]
nor.t %d1, %d15, 31, %d14, 7

# CHECK-INST: nor.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0x87,0xef,0x5f,0x1c]
nor.t %d1, %d15, 31, %d14, 24

# CHECK-INST: nor.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0x87,0xef,0xdf,0x1f]
nor.t %d1, %d15, 31, %d14, 31

# CHECK-INST: nor.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0x87,0xff,0x5f,0x10]
nor.t %d1, %d15, 31, %d15, 0

# CHECK-INST: nor.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0x87,0xff,0xdf,0x13]
nor.t %d1, %d15, 31, %d15, 7

# CHECK-INST: nor.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0x87,0xff,0x5f,0x1c]
nor.t %d1, %d15, 31, %d15, 24

# CHECK-INST: nor.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0x87,0xff,0xdf,0x1f]
nor.t %d1, %d15, 31, %d15, 31

# CHECK-INST: nor.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x40,0xe0]
nor.t %d14, %d0, 0, %d0, 0

# CHECK-INST: nor.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0x87,0x00,0xc0,0xe3]
nor.t %d14, %d0, 0, %d0, 7

# CHECK-INST: nor.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0x87,0x00,0x40,0xec]
nor.t %d14, %d0, 0, %d0, 24

# CHECK-INST: nor.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0x87,0x00,0xc0,0xef]
nor.t %d14, %d0, 0, %d0, 31

# CHECK-INST: nor.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0x87,0x10,0x40,0xe0]
nor.t %d14, %d0, 0, %d1, 0

# CHECK-INST: nor.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0x87,0x10,0xc0,0xe3]
nor.t %d14, %d0, 0, %d1, 7

# CHECK-INST: nor.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0x87,0x10,0x40,0xec]
nor.t %d14, %d0, 0, %d1, 24

# CHECK-INST: nor.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0x87,0x10,0xc0,0xef]
nor.t %d14, %d0, 0, %d1, 31

# CHECK-INST: nor.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x40,0xe0]
nor.t %d14, %d0, 0, %d14, 0

# CHECK-INST: nor.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xc0,0xe3]
nor.t %d14, %d0, 0, %d14, 7

# CHECK-INST: nor.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x40,0xec]
nor.t %d14, %d0, 0, %d14, 24

# CHECK-INST: nor.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xc0,0xef]
nor.t %d14, %d0, 0, %d14, 31

# CHECK-INST: nor.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x40,0xe0]
nor.t %d14, %d0, 0, %d15, 0

# CHECK-INST: nor.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xc0,0xe3]
nor.t %d14, %d0, 0, %d15, 7

# CHECK-INST: nor.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x40,0xec]
nor.t %d14, %d0, 0, %d15, 24

# CHECK-INST: nor.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xc0,0xef]
nor.t %d14, %d0, 0, %d15, 31

# CHECK-INST: nor.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0x87,0x00,0x47,0xe0]
nor.t %d14, %d0, 7, %d0, 0

# CHECK-INST: nor.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0x87,0x00,0xc7,0xe3]
nor.t %d14, %d0, 7, %d0, 7

# CHECK-INST: nor.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0x87,0x00,0x47,0xec]
nor.t %d14, %d0, 7, %d0, 24

# CHECK-INST: nor.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0x87,0x00,0xc7,0xef]
nor.t %d14, %d0, 7, %d0, 31

# CHECK-INST: nor.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0x87,0x10,0x47,0xe0]
nor.t %d14, %d0, 7, %d1, 0

# CHECK-INST: nor.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0x87,0x10,0xc7,0xe3]
nor.t %d14, %d0, 7, %d1, 7

# CHECK-INST: nor.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0x87,0x10,0x47,0xec]
nor.t %d14, %d0, 7, %d1, 24

# CHECK-INST: nor.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0x87,0x10,0xc7,0xef]
nor.t %d14, %d0, 7, %d1, 31

# CHECK-INST: nor.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x47,0xe0]
nor.t %d14, %d0, 7, %d14, 0

# CHECK-INST: nor.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xc7,0xe3]
nor.t %d14, %d0, 7, %d14, 7

# CHECK-INST: nor.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x47,0xec]
nor.t %d14, %d0, 7, %d14, 24

# CHECK-INST: nor.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xc7,0xef]
nor.t %d14, %d0, 7, %d14, 31

# CHECK-INST: nor.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x47,0xe0]
nor.t %d14, %d0, 7, %d15, 0

# CHECK-INST: nor.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xc7,0xe3]
nor.t %d14, %d0, 7, %d15, 7

# CHECK-INST: nor.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x47,0xec]
nor.t %d14, %d0, 7, %d15, 24

# CHECK-INST: nor.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xc7,0xef]
nor.t %d14, %d0, 7, %d15, 31

# CHECK-INST: nor.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0x87,0x00,0x58,0xe0]
nor.t %d14, %d0, 24, %d0, 0

# CHECK-INST: nor.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0x87,0x00,0xd8,0xe3]
nor.t %d14, %d0, 24, %d0, 7

# CHECK-INST: nor.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0x87,0x00,0x58,0xec]
nor.t %d14, %d0, 24, %d0, 24

# CHECK-INST: nor.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0x87,0x00,0xd8,0xef]
nor.t %d14, %d0, 24, %d0, 31

# CHECK-INST: nor.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0x87,0x10,0x58,0xe0]
nor.t %d14, %d0, 24, %d1, 0

# CHECK-INST: nor.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0x87,0x10,0xd8,0xe3]
nor.t %d14, %d0, 24, %d1, 7

# CHECK-INST: nor.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0x87,0x10,0x58,0xec]
nor.t %d14, %d0, 24, %d1, 24

# CHECK-INST: nor.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0x87,0x10,0xd8,0xef]
nor.t %d14, %d0, 24, %d1, 31

# CHECK-INST: nor.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x58,0xe0]
nor.t %d14, %d0, 24, %d14, 0

# CHECK-INST: nor.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xd8,0xe3]
nor.t %d14, %d0, 24, %d14, 7

# CHECK-INST: nor.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x58,0xec]
nor.t %d14, %d0, 24, %d14, 24

# CHECK-INST: nor.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xd8,0xef]
nor.t %d14, %d0, 24, %d14, 31

# CHECK-INST: nor.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x58,0xe0]
nor.t %d14, %d0, 24, %d15, 0

# CHECK-INST: nor.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xd8,0xe3]
nor.t %d14, %d0, 24, %d15, 7

# CHECK-INST: nor.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x58,0xec]
nor.t %d14, %d0, 24, %d15, 24

# CHECK-INST: nor.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xd8,0xef]
nor.t %d14, %d0, 24, %d15, 31

# CHECK-INST: nor.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0x87,0x00,0x5f,0xe0]
nor.t %d14, %d0, 31, %d0, 0

# CHECK-INST: nor.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0x87,0x00,0xdf,0xe3]
nor.t %d14, %d0, 31, %d0, 7

# CHECK-INST: nor.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0x87,0x00,0x5f,0xec]
nor.t %d14, %d0, 31, %d0, 24

# CHECK-INST: nor.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0x87,0x00,0xdf,0xef]
nor.t %d14, %d0, 31, %d0, 31

# CHECK-INST: nor.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0x87,0x10,0x5f,0xe0]
nor.t %d14, %d0, 31, %d1, 0

# CHECK-INST: nor.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0x87,0x10,0xdf,0xe3]
nor.t %d14, %d0, 31, %d1, 7

# CHECK-INST: nor.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0x87,0x10,0x5f,0xec]
nor.t %d14, %d0, 31, %d1, 24

# CHECK-INST: nor.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0x87,0x10,0xdf,0xef]
nor.t %d14, %d0, 31, %d1, 31

# CHECK-INST: nor.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x5f,0xe0]
nor.t %d14, %d0, 31, %d14, 0

# CHECK-INST: nor.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xdf,0xe3]
nor.t %d14, %d0, 31, %d14, 7

# CHECK-INST: nor.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x5f,0xec]
nor.t %d14, %d0, 31, %d14, 24

# CHECK-INST: nor.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xdf,0xef]
nor.t %d14, %d0, 31, %d14, 31

# CHECK-INST: nor.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x5f,0xe0]
nor.t %d14, %d0, 31, %d15, 0

# CHECK-INST: nor.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xdf,0xe3]
nor.t %d14, %d0, 31, %d15, 7

# CHECK-INST: nor.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x5f,0xec]
nor.t %d14, %d0, 31, %d15, 24

# CHECK-INST: nor.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xdf,0xef]
nor.t %d14, %d0, 31, %d15, 31

# CHECK-INST: nor.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0x87,0x01,0x40,0xe0]
nor.t %d14, %d1, 0, %d0, 0

# CHECK-INST: nor.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0x87,0x01,0xc0,0xe3]
nor.t %d14, %d1, 0, %d0, 7

# CHECK-INST: nor.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0x87,0x01,0x40,0xec]
nor.t %d14, %d1, 0, %d0, 24

# CHECK-INST: nor.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0x87,0x01,0xc0,0xef]
nor.t %d14, %d1, 0, %d0, 31

# CHECK-INST: nor.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0x87,0x11,0x40,0xe0]
nor.t %d14, %d1, 0, %d1, 0

# CHECK-INST: nor.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0x87,0x11,0xc0,0xe3]
nor.t %d14, %d1, 0, %d1, 7

# CHECK-INST: nor.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0x87,0x11,0x40,0xec]
nor.t %d14, %d1, 0, %d1, 24

# CHECK-INST: nor.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0x87,0x11,0xc0,0xef]
nor.t %d14, %d1, 0, %d1, 31

# CHECK-INST: nor.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x40,0xe0]
nor.t %d14, %d1, 0, %d14, 0

# CHECK-INST: nor.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xc0,0xe3]
nor.t %d14, %d1, 0, %d14, 7

# CHECK-INST: nor.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x40,0xec]
nor.t %d14, %d1, 0, %d14, 24

# CHECK-INST: nor.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xc0,0xef]
nor.t %d14, %d1, 0, %d14, 31

# CHECK-INST: nor.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x40,0xe0]
nor.t %d14, %d1, 0, %d15, 0

# CHECK-INST: nor.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xc0,0xe3]
nor.t %d14, %d1, 0, %d15, 7

# CHECK-INST: nor.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x40,0xec]
nor.t %d14, %d1, 0, %d15, 24

# CHECK-INST: nor.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xc0,0xef]
nor.t %d14, %d1, 0, %d15, 31

# CHECK-INST: nor.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0x87,0x01,0x47,0xe0]
nor.t %d14, %d1, 7, %d0, 0

# CHECK-INST: nor.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0x87,0x01,0xc7,0xe3]
nor.t %d14, %d1, 7, %d0, 7

# CHECK-INST: nor.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0x87,0x01,0x47,0xec]
nor.t %d14, %d1, 7, %d0, 24

# CHECK-INST: nor.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0x87,0x01,0xc7,0xef]
nor.t %d14, %d1, 7, %d0, 31

# CHECK-INST: nor.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0x87,0x11,0x47,0xe0]
nor.t %d14, %d1, 7, %d1, 0

# CHECK-INST: nor.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0x87,0x11,0xc7,0xe3]
nor.t %d14, %d1, 7, %d1, 7

# CHECK-INST: nor.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0x87,0x11,0x47,0xec]
nor.t %d14, %d1, 7, %d1, 24

# CHECK-INST: nor.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0x87,0x11,0xc7,0xef]
nor.t %d14, %d1, 7, %d1, 31

# CHECK-INST: nor.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x47,0xe0]
nor.t %d14, %d1, 7, %d14, 0

# CHECK-INST: nor.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xc7,0xe3]
nor.t %d14, %d1, 7, %d14, 7

# CHECK-INST: nor.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x47,0xec]
nor.t %d14, %d1, 7, %d14, 24

# CHECK-INST: nor.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xc7,0xef]
nor.t %d14, %d1, 7, %d14, 31

# CHECK-INST: nor.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x47,0xe0]
nor.t %d14, %d1, 7, %d15, 0

# CHECK-INST: nor.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xc7,0xe3]
nor.t %d14, %d1, 7, %d15, 7

# CHECK-INST: nor.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x47,0xec]
nor.t %d14, %d1, 7, %d15, 24

# CHECK-INST: nor.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xc7,0xef]
nor.t %d14, %d1, 7, %d15, 31

# CHECK-INST: nor.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0x87,0x01,0x58,0xe0]
nor.t %d14, %d1, 24, %d0, 0

# CHECK-INST: nor.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0x87,0x01,0xd8,0xe3]
nor.t %d14, %d1, 24, %d0, 7

# CHECK-INST: nor.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0x87,0x01,0x58,0xec]
nor.t %d14, %d1, 24, %d0, 24

# CHECK-INST: nor.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0x87,0x01,0xd8,0xef]
nor.t %d14, %d1, 24, %d0, 31

# CHECK-INST: nor.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0x87,0x11,0x58,0xe0]
nor.t %d14, %d1, 24, %d1, 0

# CHECK-INST: nor.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0x87,0x11,0xd8,0xe3]
nor.t %d14, %d1, 24, %d1, 7

# CHECK-INST: nor.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0x87,0x11,0x58,0xec]
nor.t %d14, %d1, 24, %d1, 24

# CHECK-INST: nor.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0x87,0x11,0xd8,0xef]
nor.t %d14, %d1, 24, %d1, 31

# CHECK-INST: nor.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x58,0xe0]
nor.t %d14, %d1, 24, %d14, 0

# CHECK-INST: nor.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xd8,0xe3]
nor.t %d14, %d1, 24, %d14, 7

# CHECK-INST: nor.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x58,0xec]
nor.t %d14, %d1, 24, %d14, 24

# CHECK-INST: nor.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xd8,0xef]
nor.t %d14, %d1, 24, %d14, 31

# CHECK-INST: nor.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x58,0xe0]
nor.t %d14, %d1, 24, %d15, 0

# CHECK-INST: nor.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xd8,0xe3]
nor.t %d14, %d1, 24, %d15, 7

# CHECK-INST: nor.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x58,0xec]
nor.t %d14, %d1, 24, %d15, 24

# CHECK-INST: nor.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xd8,0xef]
nor.t %d14, %d1, 24, %d15, 31

# CHECK-INST: nor.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0x87,0x01,0x5f,0xe0]
nor.t %d14, %d1, 31, %d0, 0

# CHECK-INST: nor.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0x87,0x01,0xdf,0xe3]
nor.t %d14, %d1, 31, %d0, 7

# CHECK-INST: nor.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0x87,0x01,0x5f,0xec]
nor.t %d14, %d1, 31, %d0, 24

# CHECK-INST: nor.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0x87,0x01,0xdf,0xef]
nor.t %d14, %d1, 31, %d0, 31

# CHECK-INST: nor.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0x87,0x11,0x5f,0xe0]
nor.t %d14, %d1, 31, %d1, 0

# CHECK-INST: nor.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0x87,0x11,0xdf,0xe3]
nor.t %d14, %d1, 31, %d1, 7

# CHECK-INST: nor.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0x87,0x11,0x5f,0xec]
nor.t %d14, %d1, 31, %d1, 24

# CHECK-INST: nor.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0x87,0x11,0xdf,0xef]
nor.t %d14, %d1, 31, %d1, 31

# CHECK-INST: nor.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x5f,0xe0]
nor.t %d14, %d1, 31, %d14, 0

# CHECK-INST: nor.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xdf,0xe3]
nor.t %d14, %d1, 31, %d14, 7

# CHECK-INST: nor.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x5f,0xec]
nor.t %d14, %d1, 31, %d14, 24

# CHECK-INST: nor.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xdf,0xef]
nor.t %d14, %d1, 31, %d14, 31

# CHECK-INST: nor.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x5f,0xe0]
nor.t %d14, %d1, 31, %d15, 0

# CHECK-INST: nor.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xdf,0xe3]
nor.t %d14, %d1, 31, %d15, 7

# CHECK-INST: nor.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x5f,0xec]
nor.t %d14, %d1, 31, %d15, 24

# CHECK-INST: nor.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xdf,0xef]
nor.t %d14, %d1, 31, %d15, 31

# CHECK-INST: nor.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x40,0xe0]
nor.t %d14, %d14, 0, %d0, 0

# CHECK-INST: nor.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xc0,0xe3]
nor.t %d14, %d14, 0, %d0, 7

# CHECK-INST: nor.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x40,0xec]
nor.t %d14, %d14, 0, %d0, 24

# CHECK-INST: nor.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xc0,0xef]
nor.t %d14, %d14, 0, %d0, 31

# CHECK-INST: nor.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x40,0xe0]
nor.t %d14, %d14, 0, %d1, 0

# CHECK-INST: nor.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xc0,0xe3]
nor.t %d14, %d14, 0, %d1, 7

# CHECK-INST: nor.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x40,0xec]
nor.t %d14, %d14, 0, %d1, 24

# CHECK-INST: nor.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xc0,0xef]
nor.t %d14, %d14, 0, %d1, 31

# CHECK-INST: nor.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0x87,0xee,0x40,0xe0]
nor.t %d14, %d14, 0, %d14, 0

# CHECK-INST: nor.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0x87,0xee,0xc0,0xe3]
nor.t %d14, %d14, 0, %d14, 7

# CHECK-INST: nor.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0x87,0xee,0x40,0xec]
nor.t %d14, %d14, 0, %d14, 24

# CHECK-INST: nor.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0x87,0xee,0xc0,0xef]
nor.t %d14, %d14, 0, %d14, 31

# CHECK-INST: nor.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x40,0xe0]
nor.t %d14, %d14, 0, %d15, 0

# CHECK-INST: nor.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xc0,0xe3]
nor.t %d14, %d14, 0, %d15, 7

# CHECK-INST: nor.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x40,0xec]
nor.t %d14, %d14, 0, %d15, 24

# CHECK-INST: nor.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xc0,0xef]
nor.t %d14, %d14, 0, %d15, 31

# CHECK-INST: nor.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x47,0xe0]
nor.t %d14, %d14, 7, %d0, 0

# CHECK-INST: nor.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xc7,0xe3]
nor.t %d14, %d14, 7, %d0, 7

# CHECK-INST: nor.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x47,0xec]
nor.t %d14, %d14, 7, %d0, 24

# CHECK-INST: nor.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xc7,0xef]
nor.t %d14, %d14, 7, %d0, 31

# CHECK-INST: nor.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x47,0xe0]
nor.t %d14, %d14, 7, %d1, 0

# CHECK-INST: nor.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xc7,0xe3]
nor.t %d14, %d14, 7, %d1, 7

# CHECK-INST: nor.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x47,0xec]
nor.t %d14, %d14, 7, %d1, 24

# CHECK-INST: nor.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xc7,0xef]
nor.t %d14, %d14, 7, %d1, 31

# CHECK-INST: nor.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0x87,0xee,0x47,0xe0]
nor.t %d14, %d14, 7, %d14, 0

# CHECK-INST: nor.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0x87,0xee,0xc7,0xe3]
nor.t %d14, %d14, 7, %d14, 7

# CHECK-INST: nor.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0x87,0xee,0x47,0xec]
nor.t %d14, %d14, 7, %d14, 24

# CHECK-INST: nor.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0x87,0xee,0xc7,0xef]
nor.t %d14, %d14, 7, %d14, 31

# CHECK-INST: nor.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x47,0xe0]
nor.t %d14, %d14, 7, %d15, 0

# CHECK-INST: nor.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xc7,0xe3]
nor.t %d14, %d14, 7, %d15, 7

# CHECK-INST: nor.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x47,0xec]
nor.t %d14, %d14, 7, %d15, 24

# CHECK-INST: nor.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xc7,0xef]
nor.t %d14, %d14, 7, %d15, 31

# CHECK-INST: nor.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x58,0xe0]
nor.t %d14, %d14, 24, %d0, 0

# CHECK-INST: nor.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xd8,0xe3]
nor.t %d14, %d14, 24, %d0, 7

# CHECK-INST: nor.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x58,0xec]
nor.t %d14, %d14, 24, %d0, 24

# CHECK-INST: nor.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xd8,0xef]
nor.t %d14, %d14, 24, %d0, 31

# CHECK-INST: nor.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x58,0xe0]
nor.t %d14, %d14, 24, %d1, 0

# CHECK-INST: nor.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xd8,0xe3]
nor.t %d14, %d14, 24, %d1, 7

# CHECK-INST: nor.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x58,0xec]
nor.t %d14, %d14, 24, %d1, 24

# CHECK-INST: nor.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xd8,0xef]
nor.t %d14, %d14, 24, %d1, 31

# CHECK-INST: nor.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0x87,0xee,0x58,0xe0]
nor.t %d14, %d14, 24, %d14, 0

# CHECK-INST: nor.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0x87,0xee,0xd8,0xe3]
nor.t %d14, %d14, 24, %d14, 7

# CHECK-INST: nor.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0x87,0xee,0x58,0xec]
nor.t %d14, %d14, 24, %d14, 24

# CHECK-INST: nor.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0x87,0xee,0xd8,0xef]
nor.t %d14, %d14, 24, %d14, 31

# CHECK-INST: nor.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x58,0xe0]
nor.t %d14, %d14, 24, %d15, 0

# CHECK-INST: nor.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xd8,0xe3]
nor.t %d14, %d14, 24, %d15, 7

# CHECK-INST: nor.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x58,0xec]
nor.t %d14, %d14, 24, %d15, 24

# CHECK-INST: nor.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xd8,0xef]
nor.t %d14, %d14, 24, %d15, 31

# CHECK-INST: nor.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x5f,0xe0]
nor.t %d14, %d14, 31, %d0, 0

# CHECK-INST: nor.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xdf,0xe3]
nor.t %d14, %d14, 31, %d0, 7

# CHECK-INST: nor.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x5f,0xec]
nor.t %d14, %d14, 31, %d0, 24

# CHECK-INST: nor.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xdf,0xef]
nor.t %d14, %d14, 31, %d0, 31

# CHECK-INST: nor.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x5f,0xe0]
nor.t %d14, %d14, 31, %d1, 0

# CHECK-INST: nor.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xdf,0xe3]
nor.t %d14, %d14, 31, %d1, 7

# CHECK-INST: nor.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x5f,0xec]
nor.t %d14, %d14, 31, %d1, 24

# CHECK-INST: nor.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xdf,0xef]
nor.t %d14, %d14, 31, %d1, 31

# CHECK-INST: nor.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0x87,0xee,0x5f,0xe0]
nor.t %d14, %d14, 31, %d14, 0

# CHECK-INST: nor.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0x87,0xee,0xdf,0xe3]
nor.t %d14, %d14, 31, %d14, 7

# CHECK-INST: nor.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0x87,0xee,0x5f,0xec]
nor.t %d14, %d14, 31, %d14, 24

# CHECK-INST: nor.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0x87,0xee,0xdf,0xef]
nor.t %d14, %d14, 31, %d14, 31

# CHECK-INST: nor.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x5f,0xe0]
nor.t %d14, %d14, 31, %d15, 0

# CHECK-INST: nor.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xdf,0xe3]
nor.t %d14, %d14, 31, %d15, 7

# CHECK-INST: nor.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x5f,0xec]
nor.t %d14, %d14, 31, %d15, 24

# CHECK-INST: nor.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xdf,0xef]
nor.t %d14, %d14, 31, %d15, 31

# CHECK-INST: nor.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x40,0xe0]
nor.t %d14, %d15, 0, %d0, 0

# CHECK-INST: nor.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xc0,0xe3]
nor.t %d14, %d15, 0, %d0, 7

# CHECK-INST: nor.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x40,0xec]
nor.t %d14, %d15, 0, %d0, 24

# CHECK-INST: nor.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xc0,0xef]
nor.t %d14, %d15, 0, %d0, 31

# CHECK-INST: nor.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x40,0xe0]
nor.t %d14, %d15, 0, %d1, 0

# CHECK-INST: nor.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xc0,0xe3]
nor.t %d14, %d15, 0, %d1, 7

# CHECK-INST: nor.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x40,0xec]
nor.t %d14, %d15, 0, %d1, 24

# CHECK-INST: nor.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xc0,0xef]
nor.t %d14, %d15, 0, %d1, 31

# CHECK-INST: nor.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0x87,0xef,0x40,0xe0]
nor.t %d14, %d15, 0, %d14, 0

# CHECK-INST: nor.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0x87,0xef,0xc0,0xe3]
nor.t %d14, %d15, 0, %d14, 7

# CHECK-INST: nor.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0x87,0xef,0x40,0xec]
nor.t %d14, %d15, 0, %d14, 24

# CHECK-INST: nor.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0x87,0xef,0xc0,0xef]
nor.t %d14, %d15, 0, %d14, 31

# CHECK-INST: nor.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0x87,0xff,0x40,0xe0]
nor.t %d14, %d15, 0, %d15, 0

# CHECK-INST: nor.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0x87,0xff,0xc0,0xe3]
nor.t %d14, %d15, 0, %d15, 7

# CHECK-INST: nor.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0x87,0xff,0x40,0xec]
nor.t %d14, %d15, 0, %d15, 24

# CHECK-INST: nor.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0x87,0xff,0xc0,0xef]
nor.t %d14, %d15, 0, %d15, 31

# CHECK-INST: nor.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x47,0xe0]
nor.t %d14, %d15, 7, %d0, 0

# CHECK-INST: nor.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xc7,0xe3]
nor.t %d14, %d15, 7, %d0, 7

# CHECK-INST: nor.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x47,0xec]
nor.t %d14, %d15, 7, %d0, 24

# CHECK-INST: nor.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xc7,0xef]
nor.t %d14, %d15, 7, %d0, 31

# CHECK-INST: nor.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x47,0xe0]
nor.t %d14, %d15, 7, %d1, 0

# CHECK-INST: nor.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xc7,0xe3]
nor.t %d14, %d15, 7, %d1, 7

# CHECK-INST: nor.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x47,0xec]
nor.t %d14, %d15, 7, %d1, 24

# CHECK-INST: nor.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xc7,0xef]
nor.t %d14, %d15, 7, %d1, 31

# CHECK-INST: nor.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0x87,0xef,0x47,0xe0]
nor.t %d14, %d15, 7, %d14, 0

# CHECK-INST: nor.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0x87,0xef,0xc7,0xe3]
nor.t %d14, %d15, 7, %d14, 7

# CHECK-INST: nor.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0x87,0xef,0x47,0xec]
nor.t %d14, %d15, 7, %d14, 24

# CHECK-INST: nor.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0x87,0xef,0xc7,0xef]
nor.t %d14, %d15, 7, %d14, 31

# CHECK-INST: nor.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0x87,0xff,0x47,0xe0]
nor.t %d14, %d15, 7, %d15, 0

# CHECK-INST: nor.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0x87,0xff,0xc7,0xe3]
nor.t %d14, %d15, 7, %d15, 7

# CHECK-INST: nor.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0x87,0xff,0x47,0xec]
nor.t %d14, %d15, 7, %d15, 24

# CHECK-INST: nor.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0x87,0xff,0xc7,0xef]
nor.t %d14, %d15, 7, %d15, 31

# CHECK-INST: nor.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x58,0xe0]
nor.t %d14, %d15, 24, %d0, 0

# CHECK-INST: nor.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xd8,0xe3]
nor.t %d14, %d15, 24, %d0, 7

# CHECK-INST: nor.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x58,0xec]
nor.t %d14, %d15, 24, %d0, 24

# CHECK-INST: nor.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xd8,0xef]
nor.t %d14, %d15, 24, %d0, 31

# CHECK-INST: nor.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x58,0xe0]
nor.t %d14, %d15, 24, %d1, 0

# CHECK-INST: nor.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xd8,0xe3]
nor.t %d14, %d15, 24, %d1, 7

# CHECK-INST: nor.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x58,0xec]
nor.t %d14, %d15, 24, %d1, 24

# CHECK-INST: nor.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xd8,0xef]
nor.t %d14, %d15, 24, %d1, 31

# CHECK-INST: nor.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0x87,0xef,0x58,0xe0]
nor.t %d14, %d15, 24, %d14, 0

# CHECK-INST: nor.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0x87,0xef,0xd8,0xe3]
nor.t %d14, %d15, 24, %d14, 7

# CHECK-INST: nor.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0x87,0xef,0x58,0xec]
nor.t %d14, %d15, 24, %d14, 24

# CHECK-INST: nor.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0x87,0xef,0xd8,0xef]
nor.t %d14, %d15, 24, %d14, 31

# CHECK-INST: nor.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0x87,0xff,0x58,0xe0]
nor.t %d14, %d15, 24, %d15, 0

# CHECK-INST: nor.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0x87,0xff,0xd8,0xe3]
nor.t %d14, %d15, 24, %d15, 7

# CHECK-INST: nor.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0x87,0xff,0x58,0xec]
nor.t %d14, %d15, 24, %d15, 24

# CHECK-INST: nor.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0x87,0xff,0xd8,0xef]
nor.t %d14, %d15, 24, %d15, 31

# CHECK-INST: nor.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x5f,0xe0]
nor.t %d14, %d15, 31, %d0, 0

# CHECK-INST: nor.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xdf,0xe3]
nor.t %d14, %d15, 31, %d0, 7

# CHECK-INST: nor.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x5f,0xec]
nor.t %d14, %d15, 31, %d0, 24

# CHECK-INST: nor.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xdf,0xef]
nor.t %d14, %d15, 31, %d0, 31

# CHECK-INST: nor.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x5f,0xe0]
nor.t %d14, %d15, 31, %d1, 0

# CHECK-INST: nor.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xdf,0xe3]
nor.t %d14, %d15, 31, %d1, 7

# CHECK-INST: nor.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x5f,0xec]
nor.t %d14, %d15, 31, %d1, 24

# CHECK-INST: nor.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xdf,0xef]
nor.t %d14, %d15, 31, %d1, 31

# CHECK-INST: nor.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0x87,0xef,0x5f,0xe0]
nor.t %d14, %d15, 31, %d14, 0

# CHECK-INST: nor.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0x87,0xef,0xdf,0xe3]
nor.t %d14, %d15, 31, %d14, 7

# CHECK-INST: nor.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0x87,0xef,0x5f,0xec]
nor.t %d14, %d15, 31, %d14, 24

# CHECK-INST: nor.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0x87,0xef,0xdf,0xef]
nor.t %d14, %d15, 31, %d14, 31

# CHECK-INST: nor.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0x87,0xff,0x5f,0xe0]
nor.t %d14, %d15, 31, %d15, 0

# CHECK-INST: nor.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0x87,0xff,0xdf,0xe3]
nor.t %d14, %d15, 31, %d15, 7

# CHECK-INST: nor.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0x87,0xff,0x5f,0xec]
nor.t %d14, %d15, 31, %d15, 24

# CHECK-INST: nor.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0x87,0xff,0xdf,0xef]
nor.t %d14, %d15, 31, %d15, 31

# CHECK-INST: nor.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x40,0xf0]
nor.t %d15, %d0, 0, %d0, 0

# CHECK-INST: nor.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0x87,0x00,0xc0,0xf3]
nor.t %d15, %d0, 0, %d0, 7

# CHECK-INST: nor.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0x87,0x00,0x40,0xfc]
nor.t %d15, %d0, 0, %d0, 24

# CHECK-INST: nor.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0x87,0x00,0xc0,0xff]
nor.t %d15, %d0, 0, %d0, 31

# CHECK-INST: nor.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0x87,0x10,0x40,0xf0]
nor.t %d15, %d0, 0, %d1, 0

# CHECK-INST: nor.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0x87,0x10,0xc0,0xf3]
nor.t %d15, %d0, 0, %d1, 7

# CHECK-INST: nor.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0x87,0x10,0x40,0xfc]
nor.t %d15, %d0, 0, %d1, 24

# CHECK-INST: nor.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0x87,0x10,0xc0,0xff]
nor.t %d15, %d0, 0, %d1, 31

# CHECK-INST: nor.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x40,0xf0]
nor.t %d15, %d0, 0, %d14, 0

# CHECK-INST: nor.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xc0,0xf3]
nor.t %d15, %d0, 0, %d14, 7

# CHECK-INST: nor.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x40,0xfc]
nor.t %d15, %d0, 0, %d14, 24

# CHECK-INST: nor.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xc0,0xff]
nor.t %d15, %d0, 0, %d14, 31

# CHECK-INST: nor.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x40,0xf0]
nor.t %d15, %d0, 0, %d15, 0

# CHECK-INST: nor.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xc0,0xf3]
nor.t %d15, %d0, 0, %d15, 7

# CHECK-INST: nor.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x40,0xfc]
nor.t %d15, %d0, 0, %d15, 24

# CHECK-INST: nor.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xc0,0xff]
nor.t %d15, %d0, 0, %d15, 31

# CHECK-INST: nor.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0x87,0x00,0x47,0xf0]
nor.t %d15, %d0, 7, %d0, 0

# CHECK-INST: nor.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0x87,0x00,0xc7,0xf3]
nor.t %d15, %d0, 7, %d0, 7

# CHECK-INST: nor.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0x87,0x00,0x47,0xfc]
nor.t %d15, %d0, 7, %d0, 24

# CHECK-INST: nor.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0x87,0x00,0xc7,0xff]
nor.t %d15, %d0, 7, %d0, 31

# CHECK-INST: nor.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0x87,0x10,0x47,0xf0]
nor.t %d15, %d0, 7, %d1, 0

# CHECK-INST: nor.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0x87,0x10,0xc7,0xf3]
nor.t %d15, %d0, 7, %d1, 7

# CHECK-INST: nor.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0x87,0x10,0x47,0xfc]
nor.t %d15, %d0, 7, %d1, 24

# CHECK-INST: nor.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0x87,0x10,0xc7,0xff]
nor.t %d15, %d0, 7, %d1, 31

# CHECK-INST: nor.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x47,0xf0]
nor.t %d15, %d0, 7, %d14, 0

# CHECK-INST: nor.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xc7,0xf3]
nor.t %d15, %d0, 7, %d14, 7

# CHECK-INST: nor.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x47,0xfc]
nor.t %d15, %d0, 7, %d14, 24

# CHECK-INST: nor.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xc7,0xff]
nor.t %d15, %d0, 7, %d14, 31

# CHECK-INST: nor.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x47,0xf0]
nor.t %d15, %d0, 7, %d15, 0

# CHECK-INST: nor.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xc7,0xf3]
nor.t %d15, %d0, 7, %d15, 7

# CHECK-INST: nor.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x47,0xfc]
nor.t %d15, %d0, 7, %d15, 24

# CHECK-INST: nor.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xc7,0xff]
nor.t %d15, %d0, 7, %d15, 31

# CHECK-INST: nor.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0x87,0x00,0x58,0xf0]
nor.t %d15, %d0, 24, %d0, 0

# CHECK-INST: nor.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0x87,0x00,0xd8,0xf3]
nor.t %d15, %d0, 24, %d0, 7

# CHECK-INST: nor.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0x87,0x00,0x58,0xfc]
nor.t %d15, %d0, 24, %d0, 24

# CHECK-INST: nor.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0x87,0x00,0xd8,0xff]
nor.t %d15, %d0, 24, %d0, 31

# CHECK-INST: nor.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0x87,0x10,0x58,0xf0]
nor.t %d15, %d0, 24, %d1, 0

# CHECK-INST: nor.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0x87,0x10,0xd8,0xf3]
nor.t %d15, %d0, 24, %d1, 7

# CHECK-INST: nor.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0x87,0x10,0x58,0xfc]
nor.t %d15, %d0, 24, %d1, 24

# CHECK-INST: nor.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0x87,0x10,0xd8,0xff]
nor.t %d15, %d0, 24, %d1, 31

# CHECK-INST: nor.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x58,0xf0]
nor.t %d15, %d0, 24, %d14, 0

# CHECK-INST: nor.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xd8,0xf3]
nor.t %d15, %d0, 24, %d14, 7

# CHECK-INST: nor.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x58,0xfc]
nor.t %d15, %d0, 24, %d14, 24

# CHECK-INST: nor.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xd8,0xff]
nor.t %d15, %d0, 24, %d14, 31

# CHECK-INST: nor.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x58,0xf0]
nor.t %d15, %d0, 24, %d15, 0

# CHECK-INST: nor.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xd8,0xf3]
nor.t %d15, %d0, 24, %d15, 7

# CHECK-INST: nor.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x58,0xfc]
nor.t %d15, %d0, 24, %d15, 24

# CHECK-INST: nor.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xd8,0xff]
nor.t %d15, %d0, 24, %d15, 31

# CHECK-INST: nor.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0x87,0x00,0x5f,0xf0]
nor.t %d15, %d0, 31, %d0, 0

# CHECK-INST: nor.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0x87,0x00,0xdf,0xf3]
nor.t %d15, %d0, 31, %d0, 7

# CHECK-INST: nor.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0x87,0x00,0x5f,0xfc]
nor.t %d15, %d0, 31, %d0, 24

# CHECK-INST: nor.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0x87,0x00,0xdf,0xff]
nor.t %d15, %d0, 31, %d0, 31

# CHECK-INST: nor.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0x87,0x10,0x5f,0xf0]
nor.t %d15, %d0, 31, %d1, 0

# CHECK-INST: nor.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0x87,0x10,0xdf,0xf3]
nor.t %d15, %d0, 31, %d1, 7

# CHECK-INST: nor.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0x87,0x10,0x5f,0xfc]
nor.t %d15, %d0, 31, %d1, 24

# CHECK-INST: nor.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0x87,0x10,0xdf,0xff]
nor.t %d15, %d0, 31, %d1, 31

# CHECK-INST: nor.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x5f,0xf0]
nor.t %d15, %d0, 31, %d14, 0

# CHECK-INST: nor.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xdf,0xf3]
nor.t %d15, %d0, 31, %d14, 7

# CHECK-INST: nor.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x5f,0xfc]
nor.t %d15, %d0, 31, %d14, 24

# CHECK-INST: nor.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xdf,0xff]
nor.t %d15, %d0, 31, %d14, 31

# CHECK-INST: nor.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x5f,0xf0]
nor.t %d15, %d0, 31, %d15, 0

# CHECK-INST: nor.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xdf,0xf3]
nor.t %d15, %d0, 31, %d15, 7

# CHECK-INST: nor.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x5f,0xfc]
nor.t %d15, %d0, 31, %d15, 24

# CHECK-INST: nor.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xdf,0xff]
nor.t %d15, %d0, 31, %d15, 31

# CHECK-INST: nor.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0x87,0x01,0x40,0xf0]
nor.t %d15, %d1, 0, %d0, 0

# CHECK-INST: nor.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0x87,0x01,0xc0,0xf3]
nor.t %d15, %d1, 0, %d0, 7

# CHECK-INST: nor.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0x87,0x01,0x40,0xfc]
nor.t %d15, %d1, 0, %d0, 24

# CHECK-INST: nor.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0x87,0x01,0xc0,0xff]
nor.t %d15, %d1, 0, %d0, 31

# CHECK-INST: nor.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0x87,0x11,0x40,0xf0]
nor.t %d15, %d1, 0, %d1, 0

# CHECK-INST: nor.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0x87,0x11,0xc0,0xf3]
nor.t %d15, %d1, 0, %d1, 7

# CHECK-INST: nor.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0x87,0x11,0x40,0xfc]
nor.t %d15, %d1, 0, %d1, 24

# CHECK-INST: nor.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0x87,0x11,0xc0,0xff]
nor.t %d15, %d1, 0, %d1, 31

# CHECK-INST: nor.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x40,0xf0]
nor.t %d15, %d1, 0, %d14, 0

# CHECK-INST: nor.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xc0,0xf3]
nor.t %d15, %d1, 0, %d14, 7

# CHECK-INST: nor.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x40,0xfc]
nor.t %d15, %d1, 0, %d14, 24

# CHECK-INST: nor.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xc0,0xff]
nor.t %d15, %d1, 0, %d14, 31

# CHECK-INST: nor.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x40,0xf0]
nor.t %d15, %d1, 0, %d15, 0

# CHECK-INST: nor.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xc0,0xf3]
nor.t %d15, %d1, 0, %d15, 7

# CHECK-INST: nor.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x40,0xfc]
nor.t %d15, %d1, 0, %d15, 24

# CHECK-INST: nor.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xc0,0xff]
nor.t %d15, %d1, 0, %d15, 31

# CHECK-INST: nor.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0x87,0x01,0x47,0xf0]
nor.t %d15, %d1, 7, %d0, 0

# CHECK-INST: nor.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0x87,0x01,0xc7,0xf3]
nor.t %d15, %d1, 7, %d0, 7

# CHECK-INST: nor.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0x87,0x01,0x47,0xfc]
nor.t %d15, %d1, 7, %d0, 24

# CHECK-INST: nor.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0x87,0x01,0xc7,0xff]
nor.t %d15, %d1, 7, %d0, 31

# CHECK-INST: nor.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0x87,0x11,0x47,0xf0]
nor.t %d15, %d1, 7, %d1, 0

# CHECK-INST: nor.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0x87,0x11,0xc7,0xf3]
nor.t %d15, %d1, 7, %d1, 7

# CHECK-INST: nor.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0x87,0x11,0x47,0xfc]
nor.t %d15, %d1, 7, %d1, 24

# CHECK-INST: nor.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0x87,0x11,0xc7,0xff]
nor.t %d15, %d1, 7, %d1, 31

# CHECK-INST: nor.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x47,0xf0]
nor.t %d15, %d1, 7, %d14, 0

# CHECK-INST: nor.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xc7,0xf3]
nor.t %d15, %d1, 7, %d14, 7

# CHECK-INST: nor.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x47,0xfc]
nor.t %d15, %d1, 7, %d14, 24

# CHECK-INST: nor.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xc7,0xff]
nor.t %d15, %d1, 7, %d14, 31

# CHECK-INST: nor.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x47,0xf0]
nor.t %d15, %d1, 7, %d15, 0

# CHECK-INST: nor.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xc7,0xf3]
nor.t %d15, %d1, 7, %d15, 7

# CHECK-INST: nor.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x47,0xfc]
nor.t %d15, %d1, 7, %d15, 24

# CHECK-INST: nor.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xc7,0xff]
nor.t %d15, %d1, 7, %d15, 31

# CHECK-INST: nor.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0x87,0x01,0x58,0xf0]
nor.t %d15, %d1, 24, %d0, 0

# CHECK-INST: nor.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0x87,0x01,0xd8,0xf3]
nor.t %d15, %d1, 24, %d0, 7

# CHECK-INST: nor.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0x87,0x01,0x58,0xfc]
nor.t %d15, %d1, 24, %d0, 24

# CHECK-INST: nor.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0x87,0x01,0xd8,0xff]
nor.t %d15, %d1, 24, %d0, 31

# CHECK-INST: nor.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0x87,0x11,0x58,0xf0]
nor.t %d15, %d1, 24, %d1, 0

# CHECK-INST: nor.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0x87,0x11,0xd8,0xf3]
nor.t %d15, %d1, 24, %d1, 7

# CHECK-INST: nor.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0x87,0x11,0x58,0xfc]
nor.t %d15, %d1, 24, %d1, 24

# CHECK-INST: nor.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0x87,0x11,0xd8,0xff]
nor.t %d15, %d1, 24, %d1, 31

# CHECK-INST: nor.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x58,0xf0]
nor.t %d15, %d1, 24, %d14, 0

# CHECK-INST: nor.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xd8,0xf3]
nor.t %d15, %d1, 24, %d14, 7

# CHECK-INST: nor.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x58,0xfc]
nor.t %d15, %d1, 24, %d14, 24

# CHECK-INST: nor.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xd8,0xff]
nor.t %d15, %d1, 24, %d14, 31

# CHECK-INST: nor.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x58,0xf0]
nor.t %d15, %d1, 24, %d15, 0

# CHECK-INST: nor.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xd8,0xf3]
nor.t %d15, %d1, 24, %d15, 7

# CHECK-INST: nor.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x58,0xfc]
nor.t %d15, %d1, 24, %d15, 24

# CHECK-INST: nor.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xd8,0xff]
nor.t %d15, %d1, 24, %d15, 31

# CHECK-INST: nor.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0x87,0x01,0x5f,0xf0]
nor.t %d15, %d1, 31, %d0, 0

# CHECK-INST: nor.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0x87,0x01,0xdf,0xf3]
nor.t %d15, %d1, 31, %d0, 7

# CHECK-INST: nor.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0x87,0x01,0x5f,0xfc]
nor.t %d15, %d1, 31, %d0, 24

# CHECK-INST: nor.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0x87,0x01,0xdf,0xff]
nor.t %d15, %d1, 31, %d0, 31

# CHECK-INST: nor.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0x87,0x11,0x5f,0xf0]
nor.t %d15, %d1, 31, %d1, 0

# CHECK-INST: nor.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0x87,0x11,0xdf,0xf3]
nor.t %d15, %d1, 31, %d1, 7

# CHECK-INST: nor.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0x87,0x11,0x5f,0xfc]
nor.t %d15, %d1, 31, %d1, 24

# CHECK-INST: nor.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0x87,0x11,0xdf,0xff]
nor.t %d15, %d1, 31, %d1, 31

# CHECK-INST: nor.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x5f,0xf0]
nor.t %d15, %d1, 31, %d14, 0

# CHECK-INST: nor.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xdf,0xf3]
nor.t %d15, %d1, 31, %d14, 7

# CHECK-INST: nor.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x5f,0xfc]
nor.t %d15, %d1, 31, %d14, 24

# CHECK-INST: nor.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xdf,0xff]
nor.t %d15, %d1, 31, %d14, 31

# CHECK-INST: nor.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x5f,0xf0]
nor.t %d15, %d1, 31, %d15, 0

# CHECK-INST: nor.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xdf,0xf3]
nor.t %d15, %d1, 31, %d15, 7

# CHECK-INST: nor.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x5f,0xfc]
nor.t %d15, %d1, 31, %d15, 24

# CHECK-INST: nor.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xdf,0xff]
nor.t %d15, %d1, 31, %d15, 31

# CHECK-INST: nor.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x40,0xf0]
nor.t %d15, %d14, 0, %d0, 0

# CHECK-INST: nor.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xc0,0xf3]
nor.t %d15, %d14, 0, %d0, 7

# CHECK-INST: nor.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x40,0xfc]
nor.t %d15, %d14, 0, %d0, 24

# CHECK-INST: nor.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xc0,0xff]
nor.t %d15, %d14, 0, %d0, 31

# CHECK-INST: nor.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x40,0xf0]
nor.t %d15, %d14, 0, %d1, 0

# CHECK-INST: nor.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xc0,0xf3]
nor.t %d15, %d14, 0, %d1, 7

# CHECK-INST: nor.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x40,0xfc]
nor.t %d15, %d14, 0, %d1, 24

# CHECK-INST: nor.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xc0,0xff]
nor.t %d15, %d14, 0, %d1, 31

# CHECK-INST: nor.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0x87,0xee,0x40,0xf0]
nor.t %d15, %d14, 0, %d14, 0

# CHECK-INST: nor.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0x87,0xee,0xc0,0xf3]
nor.t %d15, %d14, 0, %d14, 7

# CHECK-INST: nor.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0x87,0xee,0x40,0xfc]
nor.t %d15, %d14, 0, %d14, 24

# CHECK-INST: nor.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0x87,0xee,0xc0,0xff]
nor.t %d15, %d14, 0, %d14, 31

# CHECK-INST: nor.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x40,0xf0]
nor.t %d15, %d14, 0, %d15, 0

# CHECK-INST: nor.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xc0,0xf3]
nor.t %d15, %d14, 0, %d15, 7

# CHECK-INST: nor.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x40,0xfc]
nor.t %d15, %d14, 0, %d15, 24

# CHECK-INST: nor.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xc0,0xff]
nor.t %d15, %d14, 0, %d15, 31

# CHECK-INST: nor.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x47,0xf0]
nor.t %d15, %d14, 7, %d0, 0

# CHECK-INST: nor.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xc7,0xf3]
nor.t %d15, %d14, 7, %d0, 7

# CHECK-INST: nor.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x47,0xfc]
nor.t %d15, %d14, 7, %d0, 24

# CHECK-INST: nor.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xc7,0xff]
nor.t %d15, %d14, 7, %d0, 31

# CHECK-INST: nor.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x47,0xf0]
nor.t %d15, %d14, 7, %d1, 0

# CHECK-INST: nor.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xc7,0xf3]
nor.t %d15, %d14, 7, %d1, 7

# CHECK-INST: nor.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x47,0xfc]
nor.t %d15, %d14, 7, %d1, 24

# CHECK-INST: nor.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xc7,0xff]
nor.t %d15, %d14, 7, %d1, 31

# CHECK-INST: nor.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0x87,0xee,0x47,0xf0]
nor.t %d15, %d14, 7, %d14, 0

# CHECK-INST: nor.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0x87,0xee,0xc7,0xf3]
nor.t %d15, %d14, 7, %d14, 7

# CHECK-INST: nor.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0x87,0xee,0x47,0xfc]
nor.t %d15, %d14, 7, %d14, 24

# CHECK-INST: nor.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0x87,0xee,0xc7,0xff]
nor.t %d15, %d14, 7, %d14, 31

# CHECK-INST: nor.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x47,0xf0]
nor.t %d15, %d14, 7, %d15, 0

# CHECK-INST: nor.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xc7,0xf3]
nor.t %d15, %d14, 7, %d15, 7

# CHECK-INST: nor.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x47,0xfc]
nor.t %d15, %d14, 7, %d15, 24

# CHECK-INST: nor.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xc7,0xff]
nor.t %d15, %d14, 7, %d15, 31

# CHECK-INST: nor.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x58,0xf0]
nor.t %d15, %d14, 24, %d0, 0

# CHECK-INST: nor.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xd8,0xf3]
nor.t %d15, %d14, 24, %d0, 7

# CHECK-INST: nor.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x58,0xfc]
nor.t %d15, %d14, 24, %d0, 24

# CHECK-INST: nor.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xd8,0xff]
nor.t %d15, %d14, 24, %d0, 31

# CHECK-INST: nor.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x58,0xf0]
nor.t %d15, %d14, 24, %d1, 0

# CHECK-INST: nor.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xd8,0xf3]
nor.t %d15, %d14, 24, %d1, 7

# CHECK-INST: nor.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x58,0xfc]
nor.t %d15, %d14, 24, %d1, 24

# CHECK-INST: nor.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xd8,0xff]
nor.t %d15, %d14, 24, %d1, 31

# CHECK-INST: nor.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0x87,0xee,0x58,0xf0]
nor.t %d15, %d14, 24, %d14, 0

# CHECK-INST: nor.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0x87,0xee,0xd8,0xf3]
nor.t %d15, %d14, 24, %d14, 7

# CHECK-INST: nor.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0x87,0xee,0x58,0xfc]
nor.t %d15, %d14, 24, %d14, 24

# CHECK-INST: nor.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0x87,0xee,0xd8,0xff]
nor.t %d15, %d14, 24, %d14, 31

# CHECK-INST: nor.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x58,0xf0]
nor.t %d15, %d14, 24, %d15, 0

# CHECK-INST: nor.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xd8,0xf3]
nor.t %d15, %d14, 24, %d15, 7

# CHECK-INST: nor.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x58,0xfc]
nor.t %d15, %d14, 24, %d15, 24

# CHECK-INST: nor.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xd8,0xff]
nor.t %d15, %d14, 24, %d15, 31

# CHECK-INST: nor.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x5f,0xf0]
nor.t %d15, %d14, 31, %d0, 0

# CHECK-INST: nor.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xdf,0xf3]
nor.t %d15, %d14, 31, %d0, 7

# CHECK-INST: nor.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x5f,0xfc]
nor.t %d15, %d14, 31, %d0, 24

# CHECK-INST: nor.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xdf,0xff]
nor.t %d15, %d14, 31, %d0, 31

# CHECK-INST: nor.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x5f,0xf0]
nor.t %d15, %d14, 31, %d1, 0

# CHECK-INST: nor.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xdf,0xf3]
nor.t %d15, %d14, 31, %d1, 7

# CHECK-INST: nor.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x5f,0xfc]
nor.t %d15, %d14, 31, %d1, 24

# CHECK-INST: nor.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xdf,0xff]
nor.t %d15, %d14, 31, %d1, 31

# CHECK-INST: nor.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0x87,0xee,0x5f,0xf0]
nor.t %d15, %d14, 31, %d14, 0

# CHECK-INST: nor.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0x87,0xee,0xdf,0xf3]
nor.t %d15, %d14, 31, %d14, 7

# CHECK-INST: nor.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0x87,0xee,0x5f,0xfc]
nor.t %d15, %d14, 31, %d14, 24

# CHECK-INST: nor.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0x87,0xee,0xdf,0xff]
nor.t %d15, %d14, 31, %d14, 31

# CHECK-INST: nor.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x5f,0xf0]
nor.t %d15, %d14, 31, %d15, 0

# CHECK-INST: nor.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xdf,0xf3]
nor.t %d15, %d14, 31, %d15, 7

# CHECK-INST: nor.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x5f,0xfc]
nor.t %d15, %d14, 31, %d15, 24

# CHECK-INST: nor.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xdf,0xff]
nor.t %d15, %d14, 31, %d15, 31

# CHECK-INST: nor.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x40,0xf0]
nor.t %d15, %d15, 0, %d0, 0

# CHECK-INST: nor.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xc0,0xf3]
nor.t %d15, %d15, 0, %d0, 7

# CHECK-INST: nor.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x40,0xfc]
nor.t %d15, %d15, 0, %d0, 24

# CHECK-INST: nor.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xc0,0xff]
nor.t %d15, %d15, 0, %d0, 31

# CHECK-INST: nor.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x40,0xf0]
nor.t %d15, %d15, 0, %d1, 0

# CHECK-INST: nor.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xc0,0xf3]
nor.t %d15, %d15, 0, %d1, 7

# CHECK-INST: nor.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x40,0xfc]
nor.t %d15, %d15, 0, %d1, 24

# CHECK-INST: nor.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xc0,0xff]
nor.t %d15, %d15, 0, %d1, 31

# CHECK-INST: nor.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0x87,0xef,0x40,0xf0]
nor.t %d15, %d15, 0, %d14, 0

# CHECK-INST: nor.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0x87,0xef,0xc0,0xf3]
nor.t %d15, %d15, 0, %d14, 7

# CHECK-INST: nor.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0x87,0xef,0x40,0xfc]
nor.t %d15, %d15, 0, %d14, 24

# CHECK-INST: nor.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0x87,0xef,0xc0,0xff]
nor.t %d15, %d15, 0, %d14, 31

# CHECK-INST: nor.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0x87,0xff,0x40,0xf0]
nor.t %d15, %d15, 0, %d15, 0

# CHECK-INST: nor.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0x87,0xff,0xc0,0xf3]
nor.t %d15, %d15, 0, %d15, 7

# CHECK-INST: nor.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0x87,0xff,0x40,0xfc]
nor.t %d15, %d15, 0, %d15, 24

# CHECK-INST: nor.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0x87,0xff,0xc0,0xff]
nor.t %d15, %d15, 0, %d15, 31

# CHECK-INST: nor.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x47,0xf0]
nor.t %d15, %d15, 7, %d0, 0

# CHECK-INST: nor.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xc7,0xf3]
nor.t %d15, %d15, 7, %d0, 7

# CHECK-INST: nor.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x47,0xfc]
nor.t %d15, %d15, 7, %d0, 24

# CHECK-INST: nor.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xc7,0xff]
nor.t %d15, %d15, 7, %d0, 31

# CHECK-INST: nor.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x47,0xf0]
nor.t %d15, %d15, 7, %d1, 0

# CHECK-INST: nor.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xc7,0xf3]
nor.t %d15, %d15, 7, %d1, 7

# CHECK-INST: nor.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x47,0xfc]
nor.t %d15, %d15, 7, %d1, 24

# CHECK-INST: nor.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xc7,0xff]
nor.t %d15, %d15, 7, %d1, 31

# CHECK-INST: nor.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0x87,0xef,0x47,0xf0]
nor.t %d15, %d15, 7, %d14, 0

# CHECK-INST: nor.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0x87,0xef,0xc7,0xf3]
nor.t %d15, %d15, 7, %d14, 7

# CHECK-INST: nor.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0x87,0xef,0x47,0xfc]
nor.t %d15, %d15, 7, %d14, 24

# CHECK-INST: nor.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0x87,0xef,0xc7,0xff]
nor.t %d15, %d15, 7, %d14, 31

# CHECK-INST: nor.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0x87,0xff,0x47,0xf0]
nor.t %d15, %d15, 7, %d15, 0

# CHECK-INST: nor.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0x87,0xff,0xc7,0xf3]
nor.t %d15, %d15, 7, %d15, 7

# CHECK-INST: nor.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0x87,0xff,0x47,0xfc]
nor.t %d15, %d15, 7, %d15, 24

# CHECK-INST: nor.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0x87,0xff,0xc7,0xff]
nor.t %d15, %d15, 7, %d15, 31

# CHECK-INST: nor.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x58,0xf0]
nor.t %d15, %d15, 24, %d0, 0

# CHECK-INST: nor.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xd8,0xf3]
nor.t %d15, %d15, 24, %d0, 7

# CHECK-INST: nor.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x58,0xfc]
nor.t %d15, %d15, 24, %d0, 24

# CHECK-INST: nor.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xd8,0xff]
nor.t %d15, %d15, 24, %d0, 31

# CHECK-INST: nor.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x58,0xf0]
nor.t %d15, %d15, 24, %d1, 0

# CHECK-INST: nor.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xd8,0xf3]
nor.t %d15, %d15, 24, %d1, 7

# CHECK-INST: nor.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x58,0xfc]
nor.t %d15, %d15, 24, %d1, 24

# CHECK-INST: nor.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xd8,0xff]
nor.t %d15, %d15, 24, %d1, 31

# CHECK-INST: nor.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0x87,0xef,0x58,0xf0]
nor.t %d15, %d15, 24, %d14, 0

# CHECK-INST: nor.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0x87,0xef,0xd8,0xf3]
nor.t %d15, %d15, 24, %d14, 7

# CHECK-INST: nor.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0x87,0xef,0x58,0xfc]
nor.t %d15, %d15, 24, %d14, 24

# CHECK-INST: nor.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0x87,0xef,0xd8,0xff]
nor.t %d15, %d15, 24, %d14, 31

# CHECK-INST: nor.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0x87,0xff,0x58,0xf0]
nor.t %d15, %d15, 24, %d15, 0

# CHECK-INST: nor.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0x87,0xff,0xd8,0xf3]
nor.t %d15, %d15, 24, %d15, 7

# CHECK-INST: nor.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0x87,0xff,0x58,0xfc]
nor.t %d15, %d15, 24, %d15, 24

# CHECK-INST: nor.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0x87,0xff,0xd8,0xff]
nor.t %d15, %d15, 24, %d15, 31

# CHECK-INST: nor.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x5f,0xf0]
nor.t %d15, %d15, 31, %d0, 0

# CHECK-INST: nor.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xdf,0xf3]
nor.t %d15, %d15, 31, %d0, 7

# CHECK-INST: nor.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x5f,0xfc]
nor.t %d15, %d15, 31, %d0, 24

# CHECK-INST: nor.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xdf,0xff]
nor.t %d15, %d15, 31, %d0, 31

# CHECK-INST: nor.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x5f,0xf0]
nor.t %d15, %d15, 31, %d1, 0

# CHECK-INST: nor.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xdf,0xf3]
nor.t %d15, %d15, 31, %d1, 7

# CHECK-INST: nor.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x5f,0xfc]
nor.t %d15, %d15, 31, %d1, 24

# CHECK-INST: nor.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xdf,0xff]
nor.t %d15, %d15, 31, %d1, 31

# CHECK-INST: nor.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0x87,0xef,0x5f,0xf0]
nor.t %d15, %d15, 31, %d14, 0

# CHECK-INST: nor.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0x87,0xef,0xdf,0xf3]
nor.t %d15, %d15, 31, %d14, 7

# CHECK-INST: nor.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0x87,0xef,0x5f,0xfc]
nor.t %d15, %d15, 31, %d14, 24

# CHECK-INST: nor.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0x87,0xef,0xdf,0xff]
nor.t %d15, %d15, 31, %d14, 31

# CHECK-INST: nor.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0x87,0xff,0x5f,0xf0]
nor.t %d15, %d15, 31, %d15, 0

# CHECK-INST: nor.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0x87,0xff,0xdf,0xf3]
nor.t %d15, %d15, 31, %d15, 7

# CHECK-INST: nor.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0x87,0xff,0x5f,0xfc]
nor.t %d15, %d15, 31, %d15, 24

# CHECK-INST: nor.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0x87,0xff,0xdf,0xff]
nor.t %d15, %d15, 31, %d15, 31

# CHECK-INST: or.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x20,0x00]
or.t %d0, %d0, 0, %d0, 0

# CHECK-INST: or.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0x87,0x00,0xa0,0x03]
or.t %d0, %d0, 0, %d0, 7

# CHECK-INST: or.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0x87,0x00,0x20,0x0c]
or.t %d0, %d0, 0, %d0, 24

# CHECK-INST: or.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0x87,0x00,0xa0,0x0f]
or.t %d0, %d0, 0, %d0, 31

# CHECK-INST: or.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0x87,0x10,0x20,0x00]
or.t %d0, %d0, 0, %d1, 0

# CHECK-INST: or.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0x87,0x10,0xa0,0x03]
or.t %d0, %d0, 0, %d1, 7

# CHECK-INST: or.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0x87,0x10,0x20,0x0c]
or.t %d0, %d0, 0, %d1, 24

# CHECK-INST: or.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0x87,0x10,0xa0,0x0f]
or.t %d0, %d0, 0, %d1, 31

# CHECK-INST: or.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x20,0x00]
or.t %d0, %d0, 0, %d14, 0

# CHECK-INST: or.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xa0,0x03]
or.t %d0, %d0, 0, %d14, 7

# CHECK-INST: or.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x20,0x0c]
or.t %d0, %d0, 0, %d14, 24

# CHECK-INST: or.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xa0,0x0f]
or.t %d0, %d0, 0, %d14, 31

# CHECK-INST: or.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x20,0x00]
or.t %d0, %d0, 0, %d15, 0

# CHECK-INST: or.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xa0,0x03]
or.t %d0, %d0, 0, %d15, 7

# CHECK-INST: or.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x20,0x0c]
or.t %d0, %d0, 0, %d15, 24

# CHECK-INST: or.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xa0,0x0f]
or.t %d0, %d0, 0, %d15, 31

# CHECK-INST: or.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0x87,0x00,0x27,0x00]
or.t %d0, %d0, 7, %d0, 0

# CHECK-INST: or.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0x87,0x00,0xa7,0x03]
or.t %d0, %d0, 7, %d0, 7

# CHECK-INST: or.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0x87,0x00,0x27,0x0c]
or.t %d0, %d0, 7, %d0, 24

# CHECK-INST: or.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0x87,0x00,0xa7,0x0f]
or.t %d0, %d0, 7, %d0, 31

# CHECK-INST: or.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0x87,0x10,0x27,0x00]
or.t %d0, %d0, 7, %d1, 0

# CHECK-INST: or.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0x87,0x10,0xa7,0x03]
or.t %d0, %d0, 7, %d1, 7

# CHECK-INST: or.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0x87,0x10,0x27,0x0c]
or.t %d0, %d0, 7, %d1, 24

# CHECK-INST: or.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0x87,0x10,0xa7,0x0f]
or.t %d0, %d0, 7, %d1, 31

# CHECK-INST: or.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x27,0x00]
or.t %d0, %d0, 7, %d14, 0

# CHECK-INST: or.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xa7,0x03]
or.t %d0, %d0, 7, %d14, 7

# CHECK-INST: or.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x27,0x0c]
or.t %d0, %d0, 7, %d14, 24

# CHECK-INST: or.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xa7,0x0f]
or.t %d0, %d0, 7, %d14, 31

# CHECK-INST: or.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x27,0x00]
or.t %d0, %d0, 7, %d15, 0

# CHECK-INST: or.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xa7,0x03]
or.t %d0, %d0, 7, %d15, 7

# CHECK-INST: or.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x27,0x0c]
or.t %d0, %d0, 7, %d15, 24

# CHECK-INST: or.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xa7,0x0f]
or.t %d0, %d0, 7, %d15, 31

# CHECK-INST: or.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0x87,0x00,0x38,0x00]
or.t %d0, %d0, 24, %d0, 0

# CHECK-INST: or.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0x87,0x00,0xb8,0x03]
or.t %d0, %d0, 24, %d0, 7

# CHECK-INST: or.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0x87,0x00,0x38,0x0c]
or.t %d0, %d0, 24, %d0, 24

# CHECK-INST: or.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0x87,0x00,0xb8,0x0f]
or.t %d0, %d0, 24, %d0, 31

# CHECK-INST: or.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0x87,0x10,0x38,0x00]
or.t %d0, %d0, 24, %d1, 0

# CHECK-INST: or.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0x87,0x10,0xb8,0x03]
or.t %d0, %d0, 24, %d1, 7

# CHECK-INST: or.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0x87,0x10,0x38,0x0c]
or.t %d0, %d0, 24, %d1, 24

# CHECK-INST: or.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0x87,0x10,0xb8,0x0f]
or.t %d0, %d0, 24, %d1, 31

# CHECK-INST: or.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x38,0x00]
or.t %d0, %d0, 24, %d14, 0

# CHECK-INST: or.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xb8,0x03]
or.t %d0, %d0, 24, %d14, 7

# CHECK-INST: or.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x38,0x0c]
or.t %d0, %d0, 24, %d14, 24

# CHECK-INST: or.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xb8,0x0f]
or.t %d0, %d0, 24, %d14, 31

# CHECK-INST: or.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x38,0x00]
or.t %d0, %d0, 24, %d15, 0

# CHECK-INST: or.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xb8,0x03]
or.t %d0, %d0, 24, %d15, 7

# CHECK-INST: or.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x38,0x0c]
or.t %d0, %d0, 24, %d15, 24

# CHECK-INST: or.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xb8,0x0f]
or.t %d0, %d0, 24, %d15, 31

# CHECK-INST: or.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0x87,0x00,0x3f,0x00]
or.t %d0, %d0, 31, %d0, 0

# CHECK-INST: or.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0x87,0x00,0xbf,0x03]
or.t %d0, %d0, 31, %d0, 7

# CHECK-INST: or.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0x87,0x00,0x3f,0x0c]
or.t %d0, %d0, 31, %d0, 24

# CHECK-INST: or.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0x87,0x00,0xbf,0x0f]
or.t %d0, %d0, 31, %d0, 31

# CHECK-INST: or.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0x87,0x10,0x3f,0x00]
or.t %d0, %d0, 31, %d1, 0

# CHECK-INST: or.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0x87,0x10,0xbf,0x03]
or.t %d0, %d0, 31, %d1, 7

# CHECK-INST: or.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0x87,0x10,0x3f,0x0c]
or.t %d0, %d0, 31, %d1, 24

# CHECK-INST: or.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0x87,0x10,0xbf,0x0f]
or.t %d0, %d0, 31, %d1, 31

# CHECK-INST: or.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x3f,0x00]
or.t %d0, %d0, 31, %d14, 0

# CHECK-INST: or.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xbf,0x03]
or.t %d0, %d0, 31, %d14, 7

# CHECK-INST: or.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x3f,0x0c]
or.t %d0, %d0, 31, %d14, 24

# CHECK-INST: or.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xbf,0x0f]
or.t %d0, %d0, 31, %d14, 31

# CHECK-INST: or.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x3f,0x00]
or.t %d0, %d0, 31, %d15, 0

# CHECK-INST: or.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xbf,0x03]
or.t %d0, %d0, 31, %d15, 7

# CHECK-INST: or.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x3f,0x0c]
or.t %d0, %d0, 31, %d15, 24

# CHECK-INST: or.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xbf,0x0f]
or.t %d0, %d0, 31, %d15, 31

# CHECK-INST: or.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0x87,0x01,0x20,0x00]
or.t %d0, %d1, 0, %d0, 0

# CHECK-INST: or.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0x87,0x01,0xa0,0x03]
or.t %d0, %d1, 0, %d0, 7

# CHECK-INST: or.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0x87,0x01,0x20,0x0c]
or.t %d0, %d1, 0, %d0, 24

# CHECK-INST: or.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0x87,0x01,0xa0,0x0f]
or.t %d0, %d1, 0, %d0, 31

# CHECK-INST: or.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0x87,0x11,0x20,0x00]
or.t %d0, %d1, 0, %d1, 0

# CHECK-INST: or.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0x87,0x11,0xa0,0x03]
or.t %d0, %d1, 0, %d1, 7

# CHECK-INST: or.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0x87,0x11,0x20,0x0c]
or.t %d0, %d1, 0, %d1, 24

# CHECK-INST: or.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0x87,0x11,0xa0,0x0f]
or.t %d0, %d1, 0, %d1, 31

# CHECK-INST: or.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x20,0x00]
or.t %d0, %d1, 0, %d14, 0

# CHECK-INST: or.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xa0,0x03]
or.t %d0, %d1, 0, %d14, 7

# CHECK-INST: or.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x20,0x0c]
or.t %d0, %d1, 0, %d14, 24

# CHECK-INST: or.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xa0,0x0f]
or.t %d0, %d1, 0, %d14, 31

# CHECK-INST: or.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x20,0x00]
or.t %d0, %d1, 0, %d15, 0

# CHECK-INST: or.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xa0,0x03]
or.t %d0, %d1, 0, %d15, 7

# CHECK-INST: or.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x20,0x0c]
or.t %d0, %d1, 0, %d15, 24

# CHECK-INST: or.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xa0,0x0f]
or.t %d0, %d1, 0, %d15, 31

# CHECK-INST: or.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0x87,0x01,0x27,0x00]
or.t %d0, %d1, 7, %d0, 0

# CHECK-INST: or.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0x87,0x01,0xa7,0x03]
or.t %d0, %d1, 7, %d0, 7

# CHECK-INST: or.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0x87,0x01,0x27,0x0c]
or.t %d0, %d1, 7, %d0, 24

# CHECK-INST: or.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0x87,0x01,0xa7,0x0f]
or.t %d0, %d1, 7, %d0, 31

# CHECK-INST: or.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0x87,0x11,0x27,0x00]
or.t %d0, %d1, 7, %d1, 0

# CHECK-INST: or.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0x87,0x11,0xa7,0x03]
or.t %d0, %d1, 7, %d1, 7

# CHECK-INST: or.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0x87,0x11,0x27,0x0c]
or.t %d0, %d1, 7, %d1, 24

# CHECK-INST: or.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0x87,0x11,0xa7,0x0f]
or.t %d0, %d1, 7, %d1, 31

# CHECK-INST: or.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x27,0x00]
or.t %d0, %d1, 7, %d14, 0

# CHECK-INST: or.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xa7,0x03]
or.t %d0, %d1, 7, %d14, 7

# CHECK-INST: or.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x27,0x0c]
or.t %d0, %d1, 7, %d14, 24

# CHECK-INST: or.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xa7,0x0f]
or.t %d0, %d1, 7, %d14, 31

# CHECK-INST: or.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x27,0x00]
or.t %d0, %d1, 7, %d15, 0

# CHECK-INST: or.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xa7,0x03]
or.t %d0, %d1, 7, %d15, 7

# CHECK-INST: or.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x27,0x0c]
or.t %d0, %d1, 7, %d15, 24

# CHECK-INST: or.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xa7,0x0f]
or.t %d0, %d1, 7, %d15, 31

# CHECK-INST: or.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0x87,0x01,0x38,0x00]
or.t %d0, %d1, 24, %d0, 0

# CHECK-INST: or.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0x87,0x01,0xb8,0x03]
or.t %d0, %d1, 24, %d0, 7

# CHECK-INST: or.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0x87,0x01,0x38,0x0c]
or.t %d0, %d1, 24, %d0, 24

# CHECK-INST: or.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0x87,0x01,0xb8,0x0f]
or.t %d0, %d1, 24, %d0, 31

# CHECK-INST: or.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0x87,0x11,0x38,0x00]
or.t %d0, %d1, 24, %d1, 0

# CHECK-INST: or.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0x87,0x11,0xb8,0x03]
or.t %d0, %d1, 24, %d1, 7

# CHECK-INST: or.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0x87,0x11,0x38,0x0c]
or.t %d0, %d1, 24, %d1, 24

# CHECK-INST: or.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0x87,0x11,0xb8,0x0f]
or.t %d0, %d1, 24, %d1, 31

# CHECK-INST: or.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x38,0x00]
or.t %d0, %d1, 24, %d14, 0

# CHECK-INST: or.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xb8,0x03]
or.t %d0, %d1, 24, %d14, 7

# CHECK-INST: or.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x38,0x0c]
or.t %d0, %d1, 24, %d14, 24

# CHECK-INST: or.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xb8,0x0f]
or.t %d0, %d1, 24, %d14, 31

# CHECK-INST: or.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x38,0x00]
or.t %d0, %d1, 24, %d15, 0

# CHECK-INST: or.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xb8,0x03]
or.t %d0, %d1, 24, %d15, 7

# CHECK-INST: or.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x38,0x0c]
or.t %d0, %d1, 24, %d15, 24

# CHECK-INST: or.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xb8,0x0f]
or.t %d0, %d1, 24, %d15, 31

# CHECK-INST: or.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0x87,0x01,0x3f,0x00]
or.t %d0, %d1, 31, %d0, 0

# CHECK-INST: or.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0x87,0x01,0xbf,0x03]
or.t %d0, %d1, 31, %d0, 7

# CHECK-INST: or.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0x87,0x01,0x3f,0x0c]
or.t %d0, %d1, 31, %d0, 24

# CHECK-INST: or.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0x87,0x01,0xbf,0x0f]
or.t %d0, %d1, 31, %d0, 31

# CHECK-INST: or.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0x87,0x11,0x3f,0x00]
or.t %d0, %d1, 31, %d1, 0

# CHECK-INST: or.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0x87,0x11,0xbf,0x03]
or.t %d0, %d1, 31, %d1, 7

# CHECK-INST: or.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0x87,0x11,0x3f,0x0c]
or.t %d0, %d1, 31, %d1, 24

# CHECK-INST: or.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0x87,0x11,0xbf,0x0f]
or.t %d0, %d1, 31, %d1, 31

# CHECK-INST: or.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x3f,0x00]
or.t %d0, %d1, 31, %d14, 0

# CHECK-INST: or.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xbf,0x03]
or.t %d0, %d1, 31, %d14, 7

# CHECK-INST: or.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x3f,0x0c]
or.t %d0, %d1, 31, %d14, 24

# CHECK-INST: or.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xbf,0x0f]
or.t %d0, %d1, 31, %d14, 31

# CHECK-INST: or.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x3f,0x00]
or.t %d0, %d1, 31, %d15, 0

# CHECK-INST: or.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xbf,0x03]
or.t %d0, %d1, 31, %d15, 7

# CHECK-INST: or.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x3f,0x0c]
or.t %d0, %d1, 31, %d15, 24

# CHECK-INST: or.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xbf,0x0f]
or.t %d0, %d1, 31, %d15, 31

# CHECK-INST: or.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x20,0x00]
or.t %d0, %d14, 0, %d0, 0

# CHECK-INST: or.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xa0,0x03]
or.t %d0, %d14, 0, %d0, 7

# CHECK-INST: or.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x20,0x0c]
or.t %d0, %d14, 0, %d0, 24

# CHECK-INST: or.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xa0,0x0f]
or.t %d0, %d14, 0, %d0, 31

# CHECK-INST: or.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x20,0x00]
or.t %d0, %d14, 0, %d1, 0

# CHECK-INST: or.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xa0,0x03]
or.t %d0, %d14, 0, %d1, 7

# CHECK-INST: or.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x20,0x0c]
or.t %d0, %d14, 0, %d1, 24

# CHECK-INST: or.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xa0,0x0f]
or.t %d0, %d14, 0, %d1, 31

# CHECK-INST: or.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0x87,0xee,0x20,0x00]
or.t %d0, %d14, 0, %d14, 0

# CHECK-INST: or.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0x87,0xee,0xa0,0x03]
or.t %d0, %d14, 0, %d14, 7

# CHECK-INST: or.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0x87,0xee,0x20,0x0c]
or.t %d0, %d14, 0, %d14, 24

# CHECK-INST: or.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0x87,0xee,0xa0,0x0f]
or.t %d0, %d14, 0, %d14, 31

# CHECK-INST: or.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x20,0x00]
or.t %d0, %d14, 0, %d15, 0

# CHECK-INST: or.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xa0,0x03]
or.t %d0, %d14, 0, %d15, 7

# CHECK-INST: or.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x20,0x0c]
or.t %d0, %d14, 0, %d15, 24

# CHECK-INST: or.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xa0,0x0f]
or.t %d0, %d14, 0, %d15, 31

# CHECK-INST: or.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x27,0x00]
or.t %d0, %d14, 7, %d0, 0

# CHECK-INST: or.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xa7,0x03]
or.t %d0, %d14, 7, %d0, 7

# CHECK-INST: or.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x27,0x0c]
or.t %d0, %d14, 7, %d0, 24

# CHECK-INST: or.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xa7,0x0f]
or.t %d0, %d14, 7, %d0, 31

# CHECK-INST: or.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x27,0x00]
or.t %d0, %d14, 7, %d1, 0

# CHECK-INST: or.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xa7,0x03]
or.t %d0, %d14, 7, %d1, 7

# CHECK-INST: or.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x27,0x0c]
or.t %d0, %d14, 7, %d1, 24

# CHECK-INST: or.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xa7,0x0f]
or.t %d0, %d14, 7, %d1, 31

# CHECK-INST: or.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0x87,0xee,0x27,0x00]
or.t %d0, %d14, 7, %d14, 0

# CHECK-INST: or.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0x87,0xee,0xa7,0x03]
or.t %d0, %d14, 7, %d14, 7

# CHECK-INST: or.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0x87,0xee,0x27,0x0c]
or.t %d0, %d14, 7, %d14, 24

# CHECK-INST: or.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0x87,0xee,0xa7,0x0f]
or.t %d0, %d14, 7, %d14, 31

# CHECK-INST: or.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x27,0x00]
or.t %d0, %d14, 7, %d15, 0

# CHECK-INST: or.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xa7,0x03]
or.t %d0, %d14, 7, %d15, 7

# CHECK-INST: or.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x27,0x0c]
or.t %d0, %d14, 7, %d15, 24

# CHECK-INST: or.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xa7,0x0f]
or.t %d0, %d14, 7, %d15, 31

# CHECK-INST: or.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x38,0x00]
or.t %d0, %d14, 24, %d0, 0

# CHECK-INST: or.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xb8,0x03]
or.t %d0, %d14, 24, %d0, 7

# CHECK-INST: or.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x38,0x0c]
or.t %d0, %d14, 24, %d0, 24

# CHECK-INST: or.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xb8,0x0f]
or.t %d0, %d14, 24, %d0, 31

# CHECK-INST: or.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x38,0x00]
or.t %d0, %d14, 24, %d1, 0

# CHECK-INST: or.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xb8,0x03]
or.t %d0, %d14, 24, %d1, 7

# CHECK-INST: or.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x38,0x0c]
or.t %d0, %d14, 24, %d1, 24

# CHECK-INST: or.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xb8,0x0f]
or.t %d0, %d14, 24, %d1, 31

# CHECK-INST: or.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0x87,0xee,0x38,0x00]
or.t %d0, %d14, 24, %d14, 0

# CHECK-INST: or.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0x87,0xee,0xb8,0x03]
or.t %d0, %d14, 24, %d14, 7

# CHECK-INST: or.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0x87,0xee,0x38,0x0c]
or.t %d0, %d14, 24, %d14, 24

# CHECK-INST: or.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0x87,0xee,0xb8,0x0f]
or.t %d0, %d14, 24, %d14, 31

# CHECK-INST: or.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x38,0x00]
or.t %d0, %d14, 24, %d15, 0

# CHECK-INST: or.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xb8,0x03]
or.t %d0, %d14, 24, %d15, 7

# CHECK-INST: or.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x38,0x0c]
or.t %d0, %d14, 24, %d15, 24

# CHECK-INST: or.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xb8,0x0f]
or.t %d0, %d14, 24, %d15, 31

# CHECK-INST: or.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x3f,0x00]
or.t %d0, %d14, 31, %d0, 0

# CHECK-INST: or.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xbf,0x03]
or.t %d0, %d14, 31, %d0, 7

# CHECK-INST: or.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x3f,0x0c]
or.t %d0, %d14, 31, %d0, 24

# CHECK-INST: or.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xbf,0x0f]
or.t %d0, %d14, 31, %d0, 31

# CHECK-INST: or.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x3f,0x00]
or.t %d0, %d14, 31, %d1, 0

# CHECK-INST: or.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xbf,0x03]
or.t %d0, %d14, 31, %d1, 7

# CHECK-INST: or.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x3f,0x0c]
or.t %d0, %d14, 31, %d1, 24

# CHECK-INST: or.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xbf,0x0f]
or.t %d0, %d14, 31, %d1, 31

# CHECK-INST: or.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0x87,0xee,0x3f,0x00]
or.t %d0, %d14, 31, %d14, 0

# CHECK-INST: or.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0x87,0xee,0xbf,0x03]
or.t %d0, %d14, 31, %d14, 7

# CHECK-INST: or.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0x87,0xee,0x3f,0x0c]
or.t %d0, %d14, 31, %d14, 24

# CHECK-INST: or.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0x87,0xee,0xbf,0x0f]
or.t %d0, %d14, 31, %d14, 31

# CHECK-INST: or.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x3f,0x00]
or.t %d0, %d14, 31, %d15, 0

# CHECK-INST: or.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xbf,0x03]
or.t %d0, %d14, 31, %d15, 7

# CHECK-INST: or.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x3f,0x0c]
or.t %d0, %d14, 31, %d15, 24

# CHECK-INST: or.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xbf,0x0f]
or.t %d0, %d14, 31, %d15, 31

# CHECK-INST: or.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x20,0x00]
or.t %d0, %d15, 0, %d0, 0

# CHECK-INST: or.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xa0,0x03]
or.t %d0, %d15, 0, %d0, 7

# CHECK-INST: or.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x20,0x0c]
or.t %d0, %d15, 0, %d0, 24

# CHECK-INST: or.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xa0,0x0f]
or.t %d0, %d15, 0, %d0, 31

# CHECK-INST: or.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x20,0x00]
or.t %d0, %d15, 0, %d1, 0

# CHECK-INST: or.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xa0,0x03]
or.t %d0, %d15, 0, %d1, 7

# CHECK-INST: or.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x20,0x0c]
or.t %d0, %d15, 0, %d1, 24

# CHECK-INST: or.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xa0,0x0f]
or.t %d0, %d15, 0, %d1, 31

# CHECK-INST: or.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0x87,0xef,0x20,0x00]
or.t %d0, %d15, 0, %d14, 0

# CHECK-INST: or.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0x87,0xef,0xa0,0x03]
or.t %d0, %d15, 0, %d14, 7

# CHECK-INST: or.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0x87,0xef,0x20,0x0c]
or.t %d0, %d15, 0, %d14, 24

# CHECK-INST: or.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0x87,0xef,0xa0,0x0f]
or.t %d0, %d15, 0, %d14, 31

# CHECK-INST: or.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0x87,0xff,0x20,0x00]
or.t %d0, %d15, 0, %d15, 0

# CHECK-INST: or.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0x87,0xff,0xa0,0x03]
or.t %d0, %d15, 0, %d15, 7

# CHECK-INST: or.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0x87,0xff,0x20,0x0c]
or.t %d0, %d15, 0, %d15, 24

# CHECK-INST: or.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0x87,0xff,0xa0,0x0f]
or.t %d0, %d15, 0, %d15, 31

# CHECK-INST: or.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x27,0x00]
or.t %d0, %d15, 7, %d0, 0

# CHECK-INST: or.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xa7,0x03]
or.t %d0, %d15, 7, %d0, 7

# CHECK-INST: or.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x27,0x0c]
or.t %d0, %d15, 7, %d0, 24

# CHECK-INST: or.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xa7,0x0f]
or.t %d0, %d15, 7, %d0, 31

# CHECK-INST: or.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x27,0x00]
or.t %d0, %d15, 7, %d1, 0

# CHECK-INST: or.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xa7,0x03]
or.t %d0, %d15, 7, %d1, 7

# CHECK-INST: or.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x27,0x0c]
or.t %d0, %d15, 7, %d1, 24

# CHECK-INST: or.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xa7,0x0f]
or.t %d0, %d15, 7, %d1, 31

# CHECK-INST: or.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0x87,0xef,0x27,0x00]
or.t %d0, %d15, 7, %d14, 0

# CHECK-INST: or.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0x87,0xef,0xa7,0x03]
or.t %d0, %d15, 7, %d14, 7

# CHECK-INST: or.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0x87,0xef,0x27,0x0c]
or.t %d0, %d15, 7, %d14, 24

# CHECK-INST: or.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0x87,0xef,0xa7,0x0f]
or.t %d0, %d15, 7, %d14, 31

# CHECK-INST: or.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0x87,0xff,0x27,0x00]
or.t %d0, %d15, 7, %d15, 0

# CHECK-INST: or.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0x87,0xff,0xa7,0x03]
or.t %d0, %d15, 7, %d15, 7

# CHECK-INST: or.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0x87,0xff,0x27,0x0c]
or.t %d0, %d15, 7, %d15, 24

# CHECK-INST: or.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0x87,0xff,0xa7,0x0f]
or.t %d0, %d15, 7, %d15, 31

# CHECK-INST: or.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x38,0x00]
or.t %d0, %d15, 24, %d0, 0

# CHECK-INST: or.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xb8,0x03]
or.t %d0, %d15, 24, %d0, 7

# CHECK-INST: or.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x38,0x0c]
or.t %d0, %d15, 24, %d0, 24

# CHECK-INST: or.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xb8,0x0f]
or.t %d0, %d15, 24, %d0, 31

# CHECK-INST: or.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x38,0x00]
or.t %d0, %d15, 24, %d1, 0

# CHECK-INST: or.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xb8,0x03]
or.t %d0, %d15, 24, %d1, 7

# CHECK-INST: or.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x38,0x0c]
or.t %d0, %d15, 24, %d1, 24

# CHECK-INST: or.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xb8,0x0f]
or.t %d0, %d15, 24, %d1, 31

# CHECK-INST: or.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0x87,0xef,0x38,0x00]
or.t %d0, %d15, 24, %d14, 0

# CHECK-INST: or.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0x87,0xef,0xb8,0x03]
or.t %d0, %d15, 24, %d14, 7

# CHECK-INST: or.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0x87,0xef,0x38,0x0c]
or.t %d0, %d15, 24, %d14, 24

# CHECK-INST: or.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0x87,0xef,0xb8,0x0f]
or.t %d0, %d15, 24, %d14, 31

# CHECK-INST: or.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0x87,0xff,0x38,0x00]
or.t %d0, %d15, 24, %d15, 0

# CHECK-INST: or.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0x87,0xff,0xb8,0x03]
or.t %d0, %d15, 24, %d15, 7

# CHECK-INST: or.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0x87,0xff,0x38,0x0c]
or.t %d0, %d15, 24, %d15, 24

# CHECK-INST: or.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0x87,0xff,0xb8,0x0f]
or.t %d0, %d15, 24, %d15, 31

# CHECK-INST: or.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x3f,0x00]
or.t %d0, %d15, 31, %d0, 0

# CHECK-INST: or.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xbf,0x03]
or.t %d0, %d15, 31, %d0, 7

# CHECK-INST: or.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x3f,0x0c]
or.t %d0, %d15, 31, %d0, 24

# CHECK-INST: or.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xbf,0x0f]
or.t %d0, %d15, 31, %d0, 31

# CHECK-INST: or.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x3f,0x00]
or.t %d0, %d15, 31, %d1, 0

# CHECK-INST: or.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xbf,0x03]
or.t %d0, %d15, 31, %d1, 7

# CHECK-INST: or.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x3f,0x0c]
or.t %d0, %d15, 31, %d1, 24

# CHECK-INST: or.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xbf,0x0f]
or.t %d0, %d15, 31, %d1, 31

# CHECK-INST: or.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0x87,0xef,0x3f,0x00]
or.t %d0, %d15, 31, %d14, 0

# CHECK-INST: or.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0x87,0xef,0xbf,0x03]
or.t %d0, %d15, 31, %d14, 7

# CHECK-INST: or.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0x87,0xef,0x3f,0x0c]
or.t %d0, %d15, 31, %d14, 24

# CHECK-INST: or.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0x87,0xef,0xbf,0x0f]
or.t %d0, %d15, 31, %d14, 31

# CHECK-INST: or.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0x87,0xff,0x3f,0x00]
or.t %d0, %d15, 31, %d15, 0

# CHECK-INST: or.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0x87,0xff,0xbf,0x03]
or.t %d0, %d15, 31, %d15, 7

# CHECK-INST: or.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0x87,0xff,0x3f,0x0c]
or.t %d0, %d15, 31, %d15, 24

# CHECK-INST: or.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0x87,0xff,0xbf,0x0f]
or.t %d0, %d15, 31, %d15, 31

# CHECK-INST: or.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x20,0x10]
or.t %d1, %d0, 0, %d0, 0

# CHECK-INST: or.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0x87,0x00,0xa0,0x13]
or.t %d1, %d0, 0, %d0, 7

# CHECK-INST: or.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0x87,0x00,0x20,0x1c]
or.t %d1, %d0, 0, %d0, 24

# CHECK-INST: or.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0x87,0x00,0xa0,0x1f]
or.t %d1, %d0, 0, %d0, 31

# CHECK-INST: or.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0x87,0x10,0x20,0x10]
or.t %d1, %d0, 0, %d1, 0

# CHECK-INST: or.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0x87,0x10,0xa0,0x13]
or.t %d1, %d0, 0, %d1, 7

# CHECK-INST: or.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0x87,0x10,0x20,0x1c]
or.t %d1, %d0, 0, %d1, 24

# CHECK-INST: or.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0x87,0x10,0xa0,0x1f]
or.t %d1, %d0, 0, %d1, 31

# CHECK-INST: or.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x20,0x10]
or.t %d1, %d0, 0, %d14, 0

# CHECK-INST: or.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xa0,0x13]
or.t %d1, %d0, 0, %d14, 7

# CHECK-INST: or.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x20,0x1c]
or.t %d1, %d0, 0, %d14, 24

# CHECK-INST: or.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xa0,0x1f]
or.t %d1, %d0, 0, %d14, 31

# CHECK-INST: or.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x20,0x10]
or.t %d1, %d0, 0, %d15, 0

# CHECK-INST: or.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xa0,0x13]
or.t %d1, %d0, 0, %d15, 7

# CHECK-INST: or.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x20,0x1c]
or.t %d1, %d0, 0, %d15, 24

# CHECK-INST: or.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xa0,0x1f]
or.t %d1, %d0, 0, %d15, 31

# CHECK-INST: or.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0x87,0x00,0x27,0x10]
or.t %d1, %d0, 7, %d0, 0

# CHECK-INST: or.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0x87,0x00,0xa7,0x13]
or.t %d1, %d0, 7, %d0, 7

# CHECK-INST: or.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0x87,0x00,0x27,0x1c]
or.t %d1, %d0, 7, %d0, 24

# CHECK-INST: or.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0x87,0x00,0xa7,0x1f]
or.t %d1, %d0, 7, %d0, 31

# CHECK-INST: or.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0x87,0x10,0x27,0x10]
or.t %d1, %d0, 7, %d1, 0

# CHECK-INST: or.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0x87,0x10,0xa7,0x13]
or.t %d1, %d0, 7, %d1, 7

# CHECK-INST: or.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0x87,0x10,0x27,0x1c]
or.t %d1, %d0, 7, %d1, 24

# CHECK-INST: or.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0x87,0x10,0xa7,0x1f]
or.t %d1, %d0, 7, %d1, 31

# CHECK-INST: or.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x27,0x10]
or.t %d1, %d0, 7, %d14, 0

# CHECK-INST: or.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xa7,0x13]
or.t %d1, %d0, 7, %d14, 7

# CHECK-INST: or.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x27,0x1c]
or.t %d1, %d0, 7, %d14, 24

# CHECK-INST: or.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xa7,0x1f]
or.t %d1, %d0, 7, %d14, 31

# CHECK-INST: or.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x27,0x10]
or.t %d1, %d0, 7, %d15, 0

# CHECK-INST: or.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xa7,0x13]
or.t %d1, %d0, 7, %d15, 7

# CHECK-INST: or.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x27,0x1c]
or.t %d1, %d0, 7, %d15, 24

# CHECK-INST: or.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xa7,0x1f]
or.t %d1, %d0, 7, %d15, 31

# CHECK-INST: or.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0x87,0x00,0x38,0x10]
or.t %d1, %d0, 24, %d0, 0

# CHECK-INST: or.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0x87,0x00,0xb8,0x13]
or.t %d1, %d0, 24, %d0, 7

# CHECK-INST: or.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0x87,0x00,0x38,0x1c]
or.t %d1, %d0, 24, %d0, 24

# CHECK-INST: or.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0x87,0x00,0xb8,0x1f]
or.t %d1, %d0, 24, %d0, 31

# CHECK-INST: or.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0x87,0x10,0x38,0x10]
or.t %d1, %d0, 24, %d1, 0

# CHECK-INST: or.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0x87,0x10,0xb8,0x13]
or.t %d1, %d0, 24, %d1, 7

# CHECK-INST: or.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0x87,0x10,0x38,0x1c]
or.t %d1, %d0, 24, %d1, 24

# CHECK-INST: or.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0x87,0x10,0xb8,0x1f]
or.t %d1, %d0, 24, %d1, 31

# CHECK-INST: or.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x38,0x10]
or.t %d1, %d0, 24, %d14, 0

# CHECK-INST: or.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xb8,0x13]
or.t %d1, %d0, 24, %d14, 7

# CHECK-INST: or.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x38,0x1c]
or.t %d1, %d0, 24, %d14, 24

# CHECK-INST: or.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xb8,0x1f]
or.t %d1, %d0, 24, %d14, 31

# CHECK-INST: or.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x38,0x10]
or.t %d1, %d0, 24, %d15, 0

# CHECK-INST: or.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xb8,0x13]
or.t %d1, %d0, 24, %d15, 7

# CHECK-INST: or.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x38,0x1c]
or.t %d1, %d0, 24, %d15, 24

# CHECK-INST: or.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xb8,0x1f]
or.t %d1, %d0, 24, %d15, 31

# CHECK-INST: or.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0x87,0x00,0x3f,0x10]
or.t %d1, %d0, 31, %d0, 0

# CHECK-INST: or.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0x87,0x00,0xbf,0x13]
or.t %d1, %d0, 31, %d0, 7

# CHECK-INST: or.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0x87,0x00,0x3f,0x1c]
or.t %d1, %d0, 31, %d0, 24

# CHECK-INST: or.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0x87,0x00,0xbf,0x1f]
or.t %d1, %d0, 31, %d0, 31

# CHECK-INST: or.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0x87,0x10,0x3f,0x10]
or.t %d1, %d0, 31, %d1, 0

# CHECK-INST: or.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0x87,0x10,0xbf,0x13]
or.t %d1, %d0, 31, %d1, 7

# CHECK-INST: or.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0x87,0x10,0x3f,0x1c]
or.t %d1, %d0, 31, %d1, 24

# CHECK-INST: or.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0x87,0x10,0xbf,0x1f]
or.t %d1, %d0, 31, %d1, 31

# CHECK-INST: or.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x3f,0x10]
or.t %d1, %d0, 31, %d14, 0

# CHECK-INST: or.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xbf,0x13]
or.t %d1, %d0, 31, %d14, 7

# CHECK-INST: or.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x3f,0x1c]
or.t %d1, %d0, 31, %d14, 24

# CHECK-INST: or.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xbf,0x1f]
or.t %d1, %d0, 31, %d14, 31

# CHECK-INST: or.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x3f,0x10]
or.t %d1, %d0, 31, %d15, 0

# CHECK-INST: or.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xbf,0x13]
or.t %d1, %d0, 31, %d15, 7

# CHECK-INST: or.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x3f,0x1c]
or.t %d1, %d0, 31, %d15, 24

# CHECK-INST: or.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xbf,0x1f]
or.t %d1, %d0, 31, %d15, 31

# CHECK-INST: or.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0x87,0x01,0x20,0x10]
or.t %d1, %d1, 0, %d0, 0

# CHECK-INST: or.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0x87,0x01,0xa0,0x13]
or.t %d1, %d1, 0, %d0, 7

# CHECK-INST: or.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0x87,0x01,0x20,0x1c]
or.t %d1, %d1, 0, %d0, 24

# CHECK-INST: or.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0x87,0x01,0xa0,0x1f]
or.t %d1, %d1, 0, %d0, 31

# CHECK-INST: or.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0x87,0x11,0x20,0x10]
or.t %d1, %d1, 0, %d1, 0

# CHECK-INST: or.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0x87,0x11,0xa0,0x13]
or.t %d1, %d1, 0, %d1, 7

# CHECK-INST: or.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0x87,0x11,0x20,0x1c]
or.t %d1, %d1, 0, %d1, 24

# CHECK-INST: or.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0x87,0x11,0xa0,0x1f]
or.t %d1, %d1, 0, %d1, 31

# CHECK-INST: or.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x20,0x10]
or.t %d1, %d1, 0, %d14, 0

# CHECK-INST: or.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xa0,0x13]
or.t %d1, %d1, 0, %d14, 7

# CHECK-INST: or.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x20,0x1c]
or.t %d1, %d1, 0, %d14, 24

# CHECK-INST: or.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xa0,0x1f]
or.t %d1, %d1, 0, %d14, 31

# CHECK-INST: or.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x20,0x10]
or.t %d1, %d1, 0, %d15, 0

# CHECK-INST: or.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xa0,0x13]
or.t %d1, %d1, 0, %d15, 7

# CHECK-INST: or.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x20,0x1c]
or.t %d1, %d1, 0, %d15, 24

# CHECK-INST: or.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xa0,0x1f]
or.t %d1, %d1, 0, %d15, 31

# CHECK-INST: or.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0x87,0x01,0x27,0x10]
or.t %d1, %d1, 7, %d0, 0

# CHECK-INST: or.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0x87,0x01,0xa7,0x13]
or.t %d1, %d1, 7, %d0, 7

# CHECK-INST: or.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0x87,0x01,0x27,0x1c]
or.t %d1, %d1, 7, %d0, 24

# CHECK-INST: or.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0x87,0x01,0xa7,0x1f]
or.t %d1, %d1, 7, %d0, 31

# CHECK-INST: or.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0x87,0x11,0x27,0x10]
or.t %d1, %d1, 7, %d1, 0

# CHECK-INST: or.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0x87,0x11,0xa7,0x13]
or.t %d1, %d1, 7, %d1, 7

# CHECK-INST: or.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0x87,0x11,0x27,0x1c]
or.t %d1, %d1, 7, %d1, 24

# CHECK-INST: or.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0x87,0x11,0xa7,0x1f]
or.t %d1, %d1, 7, %d1, 31

# CHECK-INST: or.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x27,0x10]
or.t %d1, %d1, 7, %d14, 0

# CHECK-INST: or.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xa7,0x13]
or.t %d1, %d1, 7, %d14, 7

# CHECK-INST: or.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x27,0x1c]
or.t %d1, %d1, 7, %d14, 24

# CHECK-INST: or.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xa7,0x1f]
or.t %d1, %d1, 7, %d14, 31

# CHECK-INST: or.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x27,0x10]
or.t %d1, %d1, 7, %d15, 0

# CHECK-INST: or.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xa7,0x13]
or.t %d1, %d1, 7, %d15, 7

# CHECK-INST: or.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x27,0x1c]
or.t %d1, %d1, 7, %d15, 24

# CHECK-INST: or.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xa7,0x1f]
or.t %d1, %d1, 7, %d15, 31

# CHECK-INST: or.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0x87,0x01,0x38,0x10]
or.t %d1, %d1, 24, %d0, 0

# CHECK-INST: or.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0x87,0x01,0xb8,0x13]
or.t %d1, %d1, 24, %d0, 7

# CHECK-INST: or.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0x87,0x01,0x38,0x1c]
or.t %d1, %d1, 24, %d0, 24

# CHECK-INST: or.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0x87,0x01,0xb8,0x1f]
or.t %d1, %d1, 24, %d0, 31

# CHECK-INST: or.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0x87,0x11,0x38,0x10]
or.t %d1, %d1, 24, %d1, 0

# CHECK-INST: or.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0x87,0x11,0xb8,0x13]
or.t %d1, %d1, 24, %d1, 7

# CHECK-INST: or.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0x87,0x11,0x38,0x1c]
or.t %d1, %d1, 24, %d1, 24

# CHECK-INST: or.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0x87,0x11,0xb8,0x1f]
or.t %d1, %d1, 24, %d1, 31

# CHECK-INST: or.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x38,0x10]
or.t %d1, %d1, 24, %d14, 0

# CHECK-INST: or.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xb8,0x13]
or.t %d1, %d1, 24, %d14, 7

# CHECK-INST: or.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x38,0x1c]
or.t %d1, %d1, 24, %d14, 24

# CHECK-INST: or.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xb8,0x1f]
or.t %d1, %d1, 24, %d14, 31

# CHECK-INST: or.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x38,0x10]
or.t %d1, %d1, 24, %d15, 0

# CHECK-INST: or.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xb8,0x13]
or.t %d1, %d1, 24, %d15, 7

# CHECK-INST: or.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x38,0x1c]
or.t %d1, %d1, 24, %d15, 24

# CHECK-INST: or.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xb8,0x1f]
or.t %d1, %d1, 24, %d15, 31

# CHECK-INST: or.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0x87,0x01,0x3f,0x10]
or.t %d1, %d1, 31, %d0, 0

# CHECK-INST: or.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0x87,0x01,0xbf,0x13]
or.t %d1, %d1, 31, %d0, 7

# CHECK-INST: or.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0x87,0x01,0x3f,0x1c]
or.t %d1, %d1, 31, %d0, 24

# CHECK-INST: or.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0x87,0x01,0xbf,0x1f]
or.t %d1, %d1, 31, %d0, 31

# CHECK-INST: or.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0x87,0x11,0x3f,0x10]
or.t %d1, %d1, 31, %d1, 0

# CHECK-INST: or.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0x87,0x11,0xbf,0x13]
or.t %d1, %d1, 31, %d1, 7

# CHECK-INST: or.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0x87,0x11,0x3f,0x1c]
or.t %d1, %d1, 31, %d1, 24

# CHECK-INST: or.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0x87,0x11,0xbf,0x1f]
or.t %d1, %d1, 31, %d1, 31

# CHECK-INST: or.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x3f,0x10]
or.t %d1, %d1, 31, %d14, 0

# CHECK-INST: or.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xbf,0x13]
or.t %d1, %d1, 31, %d14, 7

# CHECK-INST: or.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x3f,0x1c]
or.t %d1, %d1, 31, %d14, 24

# CHECK-INST: or.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xbf,0x1f]
or.t %d1, %d1, 31, %d14, 31

# CHECK-INST: or.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x3f,0x10]
or.t %d1, %d1, 31, %d15, 0

# CHECK-INST: or.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xbf,0x13]
or.t %d1, %d1, 31, %d15, 7

# CHECK-INST: or.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x3f,0x1c]
or.t %d1, %d1, 31, %d15, 24

# CHECK-INST: or.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xbf,0x1f]
or.t %d1, %d1, 31, %d15, 31

# CHECK-INST: or.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x20,0x10]
or.t %d1, %d14, 0, %d0, 0

# CHECK-INST: or.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xa0,0x13]
or.t %d1, %d14, 0, %d0, 7

# CHECK-INST: or.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x20,0x1c]
or.t %d1, %d14, 0, %d0, 24

# CHECK-INST: or.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xa0,0x1f]
or.t %d1, %d14, 0, %d0, 31

# CHECK-INST: or.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x20,0x10]
or.t %d1, %d14, 0, %d1, 0

# CHECK-INST: or.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xa0,0x13]
or.t %d1, %d14, 0, %d1, 7

# CHECK-INST: or.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x20,0x1c]
or.t %d1, %d14, 0, %d1, 24

# CHECK-INST: or.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xa0,0x1f]
or.t %d1, %d14, 0, %d1, 31

# CHECK-INST: or.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0x87,0xee,0x20,0x10]
or.t %d1, %d14, 0, %d14, 0

# CHECK-INST: or.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0x87,0xee,0xa0,0x13]
or.t %d1, %d14, 0, %d14, 7

# CHECK-INST: or.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0x87,0xee,0x20,0x1c]
or.t %d1, %d14, 0, %d14, 24

# CHECK-INST: or.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0x87,0xee,0xa0,0x1f]
or.t %d1, %d14, 0, %d14, 31

# CHECK-INST: or.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x20,0x10]
or.t %d1, %d14, 0, %d15, 0

# CHECK-INST: or.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xa0,0x13]
or.t %d1, %d14, 0, %d15, 7

# CHECK-INST: or.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x20,0x1c]
or.t %d1, %d14, 0, %d15, 24

# CHECK-INST: or.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xa0,0x1f]
or.t %d1, %d14, 0, %d15, 31

# CHECK-INST: or.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x27,0x10]
or.t %d1, %d14, 7, %d0, 0

# CHECK-INST: or.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xa7,0x13]
or.t %d1, %d14, 7, %d0, 7

# CHECK-INST: or.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x27,0x1c]
or.t %d1, %d14, 7, %d0, 24

# CHECK-INST: or.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xa7,0x1f]
or.t %d1, %d14, 7, %d0, 31

# CHECK-INST: or.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x27,0x10]
or.t %d1, %d14, 7, %d1, 0

# CHECK-INST: or.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xa7,0x13]
or.t %d1, %d14, 7, %d1, 7

# CHECK-INST: or.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x27,0x1c]
or.t %d1, %d14, 7, %d1, 24

# CHECK-INST: or.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xa7,0x1f]
or.t %d1, %d14, 7, %d1, 31

# CHECK-INST: or.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0x87,0xee,0x27,0x10]
or.t %d1, %d14, 7, %d14, 0

# CHECK-INST: or.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0x87,0xee,0xa7,0x13]
or.t %d1, %d14, 7, %d14, 7

# CHECK-INST: or.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0x87,0xee,0x27,0x1c]
or.t %d1, %d14, 7, %d14, 24

# CHECK-INST: or.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0x87,0xee,0xa7,0x1f]
or.t %d1, %d14, 7, %d14, 31

# CHECK-INST: or.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x27,0x10]
or.t %d1, %d14, 7, %d15, 0

# CHECK-INST: or.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xa7,0x13]
or.t %d1, %d14, 7, %d15, 7

# CHECK-INST: or.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x27,0x1c]
or.t %d1, %d14, 7, %d15, 24

# CHECK-INST: or.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xa7,0x1f]
or.t %d1, %d14, 7, %d15, 31

# CHECK-INST: or.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x38,0x10]
or.t %d1, %d14, 24, %d0, 0

# CHECK-INST: or.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xb8,0x13]
or.t %d1, %d14, 24, %d0, 7

# CHECK-INST: or.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x38,0x1c]
or.t %d1, %d14, 24, %d0, 24

# CHECK-INST: or.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xb8,0x1f]
or.t %d1, %d14, 24, %d0, 31

# CHECK-INST: or.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x38,0x10]
or.t %d1, %d14, 24, %d1, 0

# CHECK-INST: or.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xb8,0x13]
or.t %d1, %d14, 24, %d1, 7

# CHECK-INST: or.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x38,0x1c]
or.t %d1, %d14, 24, %d1, 24

# CHECK-INST: or.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xb8,0x1f]
or.t %d1, %d14, 24, %d1, 31

# CHECK-INST: or.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0x87,0xee,0x38,0x10]
or.t %d1, %d14, 24, %d14, 0

# CHECK-INST: or.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0x87,0xee,0xb8,0x13]
or.t %d1, %d14, 24, %d14, 7

# CHECK-INST: or.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0x87,0xee,0x38,0x1c]
or.t %d1, %d14, 24, %d14, 24

# CHECK-INST: or.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0x87,0xee,0xb8,0x1f]
or.t %d1, %d14, 24, %d14, 31

# CHECK-INST: or.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x38,0x10]
or.t %d1, %d14, 24, %d15, 0

# CHECK-INST: or.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xb8,0x13]
or.t %d1, %d14, 24, %d15, 7

# CHECK-INST: or.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x38,0x1c]
or.t %d1, %d14, 24, %d15, 24

# CHECK-INST: or.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xb8,0x1f]
or.t %d1, %d14, 24, %d15, 31

# CHECK-INST: or.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x3f,0x10]
or.t %d1, %d14, 31, %d0, 0

# CHECK-INST: or.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xbf,0x13]
or.t %d1, %d14, 31, %d0, 7

# CHECK-INST: or.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x3f,0x1c]
or.t %d1, %d14, 31, %d0, 24

# CHECK-INST: or.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xbf,0x1f]
or.t %d1, %d14, 31, %d0, 31

# CHECK-INST: or.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x3f,0x10]
or.t %d1, %d14, 31, %d1, 0

# CHECK-INST: or.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xbf,0x13]
or.t %d1, %d14, 31, %d1, 7

# CHECK-INST: or.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x3f,0x1c]
or.t %d1, %d14, 31, %d1, 24

# CHECK-INST: or.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xbf,0x1f]
or.t %d1, %d14, 31, %d1, 31

# CHECK-INST: or.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0x87,0xee,0x3f,0x10]
or.t %d1, %d14, 31, %d14, 0

# CHECK-INST: or.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0x87,0xee,0xbf,0x13]
or.t %d1, %d14, 31, %d14, 7

# CHECK-INST: or.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0x87,0xee,0x3f,0x1c]
or.t %d1, %d14, 31, %d14, 24

# CHECK-INST: or.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0x87,0xee,0xbf,0x1f]
or.t %d1, %d14, 31, %d14, 31

# CHECK-INST: or.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x3f,0x10]
or.t %d1, %d14, 31, %d15, 0

# CHECK-INST: or.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xbf,0x13]
or.t %d1, %d14, 31, %d15, 7

# CHECK-INST: or.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x3f,0x1c]
or.t %d1, %d14, 31, %d15, 24

# CHECK-INST: or.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xbf,0x1f]
or.t %d1, %d14, 31, %d15, 31

# CHECK-INST: or.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x20,0x10]
or.t %d1, %d15, 0, %d0, 0

# CHECK-INST: or.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xa0,0x13]
or.t %d1, %d15, 0, %d0, 7

# CHECK-INST: or.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x20,0x1c]
or.t %d1, %d15, 0, %d0, 24

# CHECK-INST: or.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xa0,0x1f]
or.t %d1, %d15, 0, %d0, 31

# CHECK-INST: or.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x20,0x10]
or.t %d1, %d15, 0, %d1, 0

# CHECK-INST: or.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xa0,0x13]
or.t %d1, %d15, 0, %d1, 7

# CHECK-INST: or.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x20,0x1c]
or.t %d1, %d15, 0, %d1, 24

# CHECK-INST: or.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xa0,0x1f]
or.t %d1, %d15, 0, %d1, 31

# CHECK-INST: or.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0x87,0xef,0x20,0x10]
or.t %d1, %d15, 0, %d14, 0

# CHECK-INST: or.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0x87,0xef,0xa0,0x13]
or.t %d1, %d15, 0, %d14, 7

# CHECK-INST: or.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0x87,0xef,0x20,0x1c]
or.t %d1, %d15, 0, %d14, 24

# CHECK-INST: or.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0x87,0xef,0xa0,0x1f]
or.t %d1, %d15, 0, %d14, 31

# CHECK-INST: or.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0x87,0xff,0x20,0x10]
or.t %d1, %d15, 0, %d15, 0

# CHECK-INST: or.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0x87,0xff,0xa0,0x13]
or.t %d1, %d15, 0, %d15, 7

# CHECK-INST: or.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0x87,0xff,0x20,0x1c]
or.t %d1, %d15, 0, %d15, 24

# CHECK-INST: or.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0x87,0xff,0xa0,0x1f]
or.t %d1, %d15, 0, %d15, 31

# CHECK-INST: or.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x27,0x10]
or.t %d1, %d15, 7, %d0, 0

# CHECK-INST: or.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xa7,0x13]
or.t %d1, %d15, 7, %d0, 7

# CHECK-INST: or.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x27,0x1c]
or.t %d1, %d15, 7, %d0, 24

# CHECK-INST: or.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xa7,0x1f]
or.t %d1, %d15, 7, %d0, 31

# CHECK-INST: or.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x27,0x10]
or.t %d1, %d15, 7, %d1, 0

# CHECK-INST: or.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xa7,0x13]
or.t %d1, %d15, 7, %d1, 7

# CHECK-INST: or.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x27,0x1c]
or.t %d1, %d15, 7, %d1, 24

# CHECK-INST: or.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xa7,0x1f]
or.t %d1, %d15, 7, %d1, 31

# CHECK-INST: or.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0x87,0xef,0x27,0x10]
or.t %d1, %d15, 7, %d14, 0

# CHECK-INST: or.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0x87,0xef,0xa7,0x13]
or.t %d1, %d15, 7, %d14, 7

# CHECK-INST: or.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0x87,0xef,0x27,0x1c]
or.t %d1, %d15, 7, %d14, 24

# CHECK-INST: or.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0x87,0xef,0xa7,0x1f]
or.t %d1, %d15, 7, %d14, 31

# CHECK-INST: or.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0x87,0xff,0x27,0x10]
or.t %d1, %d15, 7, %d15, 0

# CHECK-INST: or.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0x87,0xff,0xa7,0x13]
or.t %d1, %d15, 7, %d15, 7

# CHECK-INST: or.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0x87,0xff,0x27,0x1c]
or.t %d1, %d15, 7, %d15, 24

# CHECK-INST: or.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0x87,0xff,0xa7,0x1f]
or.t %d1, %d15, 7, %d15, 31

# CHECK-INST: or.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x38,0x10]
or.t %d1, %d15, 24, %d0, 0

# CHECK-INST: or.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xb8,0x13]
or.t %d1, %d15, 24, %d0, 7

# CHECK-INST: or.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x38,0x1c]
or.t %d1, %d15, 24, %d0, 24

# CHECK-INST: or.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xb8,0x1f]
or.t %d1, %d15, 24, %d0, 31

# CHECK-INST: or.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x38,0x10]
or.t %d1, %d15, 24, %d1, 0

# CHECK-INST: or.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xb8,0x13]
or.t %d1, %d15, 24, %d1, 7

# CHECK-INST: or.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x38,0x1c]
or.t %d1, %d15, 24, %d1, 24

# CHECK-INST: or.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xb8,0x1f]
or.t %d1, %d15, 24, %d1, 31

# CHECK-INST: or.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0x87,0xef,0x38,0x10]
or.t %d1, %d15, 24, %d14, 0

# CHECK-INST: or.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0x87,0xef,0xb8,0x13]
or.t %d1, %d15, 24, %d14, 7

# CHECK-INST: or.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0x87,0xef,0x38,0x1c]
or.t %d1, %d15, 24, %d14, 24

# CHECK-INST: or.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0x87,0xef,0xb8,0x1f]
or.t %d1, %d15, 24, %d14, 31

# CHECK-INST: or.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0x87,0xff,0x38,0x10]
or.t %d1, %d15, 24, %d15, 0

# CHECK-INST: or.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0x87,0xff,0xb8,0x13]
or.t %d1, %d15, 24, %d15, 7

# CHECK-INST: or.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0x87,0xff,0x38,0x1c]
or.t %d1, %d15, 24, %d15, 24

# CHECK-INST: or.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0x87,0xff,0xb8,0x1f]
or.t %d1, %d15, 24, %d15, 31

# CHECK-INST: or.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x3f,0x10]
or.t %d1, %d15, 31, %d0, 0

# CHECK-INST: or.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xbf,0x13]
or.t %d1, %d15, 31, %d0, 7

# CHECK-INST: or.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x3f,0x1c]
or.t %d1, %d15, 31, %d0, 24

# CHECK-INST: or.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xbf,0x1f]
or.t %d1, %d15, 31, %d0, 31

# CHECK-INST: or.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x3f,0x10]
or.t %d1, %d15, 31, %d1, 0

# CHECK-INST: or.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xbf,0x13]
or.t %d1, %d15, 31, %d1, 7

# CHECK-INST: or.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x3f,0x1c]
or.t %d1, %d15, 31, %d1, 24

# CHECK-INST: or.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xbf,0x1f]
or.t %d1, %d15, 31, %d1, 31

# CHECK-INST: or.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0x87,0xef,0x3f,0x10]
or.t %d1, %d15, 31, %d14, 0

# CHECK-INST: or.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0x87,0xef,0xbf,0x13]
or.t %d1, %d15, 31, %d14, 7

# CHECK-INST: or.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0x87,0xef,0x3f,0x1c]
or.t %d1, %d15, 31, %d14, 24

# CHECK-INST: or.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0x87,0xef,0xbf,0x1f]
or.t %d1, %d15, 31, %d14, 31

# CHECK-INST: or.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0x87,0xff,0x3f,0x10]
or.t %d1, %d15, 31, %d15, 0

# CHECK-INST: or.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0x87,0xff,0xbf,0x13]
or.t %d1, %d15, 31, %d15, 7

# CHECK-INST: or.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0x87,0xff,0x3f,0x1c]
or.t %d1, %d15, 31, %d15, 24

# CHECK-INST: or.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0x87,0xff,0xbf,0x1f]
or.t %d1, %d15, 31, %d15, 31

# CHECK-INST: or.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x20,0xe0]
or.t %d14, %d0, 0, %d0, 0

# CHECK-INST: or.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0x87,0x00,0xa0,0xe3]
or.t %d14, %d0, 0, %d0, 7

# CHECK-INST: or.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0x87,0x00,0x20,0xec]
or.t %d14, %d0, 0, %d0, 24

# CHECK-INST: or.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0x87,0x00,0xa0,0xef]
or.t %d14, %d0, 0, %d0, 31

# CHECK-INST: or.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0x87,0x10,0x20,0xe0]
or.t %d14, %d0, 0, %d1, 0

# CHECK-INST: or.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0x87,0x10,0xa0,0xe3]
or.t %d14, %d0, 0, %d1, 7

# CHECK-INST: or.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0x87,0x10,0x20,0xec]
or.t %d14, %d0, 0, %d1, 24

# CHECK-INST: or.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0x87,0x10,0xa0,0xef]
or.t %d14, %d0, 0, %d1, 31

# CHECK-INST: or.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x20,0xe0]
or.t %d14, %d0, 0, %d14, 0

# CHECK-INST: or.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xa0,0xe3]
or.t %d14, %d0, 0, %d14, 7

# CHECK-INST: or.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x20,0xec]
or.t %d14, %d0, 0, %d14, 24

# CHECK-INST: or.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xa0,0xef]
or.t %d14, %d0, 0, %d14, 31

# CHECK-INST: or.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x20,0xe0]
or.t %d14, %d0, 0, %d15, 0

# CHECK-INST: or.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xa0,0xe3]
or.t %d14, %d0, 0, %d15, 7

# CHECK-INST: or.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x20,0xec]
or.t %d14, %d0, 0, %d15, 24

# CHECK-INST: or.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xa0,0xef]
or.t %d14, %d0, 0, %d15, 31

# CHECK-INST: or.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0x87,0x00,0x27,0xe0]
or.t %d14, %d0, 7, %d0, 0

# CHECK-INST: or.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0x87,0x00,0xa7,0xe3]
or.t %d14, %d0, 7, %d0, 7

# CHECK-INST: or.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0x87,0x00,0x27,0xec]
or.t %d14, %d0, 7, %d0, 24

# CHECK-INST: or.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0x87,0x00,0xa7,0xef]
or.t %d14, %d0, 7, %d0, 31

# CHECK-INST: or.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0x87,0x10,0x27,0xe0]
or.t %d14, %d0, 7, %d1, 0

# CHECK-INST: or.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0x87,0x10,0xa7,0xe3]
or.t %d14, %d0, 7, %d1, 7

# CHECK-INST: or.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0x87,0x10,0x27,0xec]
or.t %d14, %d0, 7, %d1, 24

# CHECK-INST: or.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0x87,0x10,0xa7,0xef]
or.t %d14, %d0, 7, %d1, 31

# CHECK-INST: or.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x27,0xe0]
or.t %d14, %d0, 7, %d14, 0

# CHECK-INST: or.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xa7,0xe3]
or.t %d14, %d0, 7, %d14, 7

# CHECK-INST: or.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x27,0xec]
or.t %d14, %d0, 7, %d14, 24

# CHECK-INST: or.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xa7,0xef]
or.t %d14, %d0, 7, %d14, 31

# CHECK-INST: or.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x27,0xe0]
or.t %d14, %d0, 7, %d15, 0

# CHECK-INST: or.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xa7,0xe3]
or.t %d14, %d0, 7, %d15, 7

# CHECK-INST: or.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x27,0xec]
or.t %d14, %d0, 7, %d15, 24

# CHECK-INST: or.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xa7,0xef]
or.t %d14, %d0, 7, %d15, 31

# CHECK-INST: or.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0x87,0x00,0x38,0xe0]
or.t %d14, %d0, 24, %d0, 0

# CHECK-INST: or.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0x87,0x00,0xb8,0xe3]
or.t %d14, %d0, 24, %d0, 7

# CHECK-INST: or.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0x87,0x00,0x38,0xec]
or.t %d14, %d0, 24, %d0, 24

# CHECK-INST: or.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0x87,0x00,0xb8,0xef]
or.t %d14, %d0, 24, %d0, 31

# CHECK-INST: or.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0x87,0x10,0x38,0xe0]
or.t %d14, %d0, 24, %d1, 0

# CHECK-INST: or.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0x87,0x10,0xb8,0xe3]
or.t %d14, %d0, 24, %d1, 7

# CHECK-INST: or.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0x87,0x10,0x38,0xec]
or.t %d14, %d0, 24, %d1, 24

# CHECK-INST: or.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0x87,0x10,0xb8,0xef]
or.t %d14, %d0, 24, %d1, 31

# CHECK-INST: or.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x38,0xe0]
or.t %d14, %d0, 24, %d14, 0

# CHECK-INST: or.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xb8,0xe3]
or.t %d14, %d0, 24, %d14, 7

# CHECK-INST: or.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x38,0xec]
or.t %d14, %d0, 24, %d14, 24

# CHECK-INST: or.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xb8,0xef]
or.t %d14, %d0, 24, %d14, 31

# CHECK-INST: or.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x38,0xe0]
or.t %d14, %d0, 24, %d15, 0

# CHECK-INST: or.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xb8,0xe3]
or.t %d14, %d0, 24, %d15, 7

# CHECK-INST: or.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x38,0xec]
or.t %d14, %d0, 24, %d15, 24

# CHECK-INST: or.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xb8,0xef]
or.t %d14, %d0, 24, %d15, 31

# CHECK-INST: or.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0x87,0x00,0x3f,0xe0]
or.t %d14, %d0, 31, %d0, 0

# CHECK-INST: or.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0x87,0x00,0xbf,0xe3]
or.t %d14, %d0, 31, %d0, 7

# CHECK-INST: or.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0x87,0x00,0x3f,0xec]
or.t %d14, %d0, 31, %d0, 24

# CHECK-INST: or.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0x87,0x00,0xbf,0xef]
or.t %d14, %d0, 31, %d0, 31

# CHECK-INST: or.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0x87,0x10,0x3f,0xe0]
or.t %d14, %d0, 31, %d1, 0

# CHECK-INST: or.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0x87,0x10,0xbf,0xe3]
or.t %d14, %d0, 31, %d1, 7

# CHECK-INST: or.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0x87,0x10,0x3f,0xec]
or.t %d14, %d0, 31, %d1, 24

# CHECK-INST: or.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0x87,0x10,0xbf,0xef]
or.t %d14, %d0, 31, %d1, 31

# CHECK-INST: or.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x3f,0xe0]
or.t %d14, %d0, 31, %d14, 0

# CHECK-INST: or.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xbf,0xe3]
or.t %d14, %d0, 31, %d14, 7

# CHECK-INST: or.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x3f,0xec]
or.t %d14, %d0, 31, %d14, 24

# CHECK-INST: or.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xbf,0xef]
or.t %d14, %d0, 31, %d14, 31

# CHECK-INST: or.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x3f,0xe0]
or.t %d14, %d0, 31, %d15, 0

# CHECK-INST: or.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xbf,0xe3]
or.t %d14, %d0, 31, %d15, 7

# CHECK-INST: or.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x3f,0xec]
or.t %d14, %d0, 31, %d15, 24

# CHECK-INST: or.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xbf,0xef]
or.t %d14, %d0, 31, %d15, 31

# CHECK-INST: or.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0x87,0x01,0x20,0xe0]
or.t %d14, %d1, 0, %d0, 0

# CHECK-INST: or.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0x87,0x01,0xa0,0xe3]
or.t %d14, %d1, 0, %d0, 7

# CHECK-INST: or.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0x87,0x01,0x20,0xec]
or.t %d14, %d1, 0, %d0, 24

# CHECK-INST: or.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0x87,0x01,0xa0,0xef]
or.t %d14, %d1, 0, %d0, 31

# CHECK-INST: or.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0x87,0x11,0x20,0xe0]
or.t %d14, %d1, 0, %d1, 0

# CHECK-INST: or.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0x87,0x11,0xa0,0xe3]
or.t %d14, %d1, 0, %d1, 7

# CHECK-INST: or.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0x87,0x11,0x20,0xec]
or.t %d14, %d1, 0, %d1, 24

# CHECK-INST: or.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0x87,0x11,0xa0,0xef]
or.t %d14, %d1, 0, %d1, 31

# CHECK-INST: or.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x20,0xe0]
or.t %d14, %d1, 0, %d14, 0

# CHECK-INST: or.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xa0,0xe3]
or.t %d14, %d1, 0, %d14, 7

# CHECK-INST: or.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x20,0xec]
or.t %d14, %d1, 0, %d14, 24

# CHECK-INST: or.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xa0,0xef]
or.t %d14, %d1, 0, %d14, 31

# CHECK-INST: or.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x20,0xe0]
or.t %d14, %d1, 0, %d15, 0

# CHECK-INST: or.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xa0,0xe3]
or.t %d14, %d1, 0, %d15, 7

# CHECK-INST: or.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x20,0xec]
or.t %d14, %d1, 0, %d15, 24

# CHECK-INST: or.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xa0,0xef]
or.t %d14, %d1, 0, %d15, 31

# CHECK-INST: or.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0x87,0x01,0x27,0xe0]
or.t %d14, %d1, 7, %d0, 0

# CHECK-INST: or.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0x87,0x01,0xa7,0xe3]
or.t %d14, %d1, 7, %d0, 7

# CHECK-INST: or.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0x87,0x01,0x27,0xec]
or.t %d14, %d1, 7, %d0, 24

# CHECK-INST: or.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0x87,0x01,0xa7,0xef]
or.t %d14, %d1, 7, %d0, 31

# CHECK-INST: or.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0x87,0x11,0x27,0xe0]
or.t %d14, %d1, 7, %d1, 0

# CHECK-INST: or.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0x87,0x11,0xa7,0xe3]
or.t %d14, %d1, 7, %d1, 7

# CHECK-INST: or.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0x87,0x11,0x27,0xec]
or.t %d14, %d1, 7, %d1, 24

# CHECK-INST: or.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0x87,0x11,0xa7,0xef]
or.t %d14, %d1, 7, %d1, 31

# CHECK-INST: or.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x27,0xe0]
or.t %d14, %d1, 7, %d14, 0

# CHECK-INST: or.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xa7,0xe3]
or.t %d14, %d1, 7, %d14, 7

# CHECK-INST: or.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x27,0xec]
or.t %d14, %d1, 7, %d14, 24

# CHECK-INST: or.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xa7,0xef]
or.t %d14, %d1, 7, %d14, 31

# CHECK-INST: or.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x27,0xe0]
or.t %d14, %d1, 7, %d15, 0

# CHECK-INST: or.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xa7,0xe3]
or.t %d14, %d1, 7, %d15, 7

# CHECK-INST: or.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x27,0xec]
or.t %d14, %d1, 7, %d15, 24

# CHECK-INST: or.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xa7,0xef]
or.t %d14, %d1, 7, %d15, 31

# CHECK-INST: or.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0x87,0x01,0x38,0xe0]
or.t %d14, %d1, 24, %d0, 0

# CHECK-INST: or.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0x87,0x01,0xb8,0xe3]
or.t %d14, %d1, 24, %d0, 7

# CHECK-INST: or.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0x87,0x01,0x38,0xec]
or.t %d14, %d1, 24, %d0, 24

# CHECK-INST: or.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0x87,0x01,0xb8,0xef]
or.t %d14, %d1, 24, %d0, 31

# CHECK-INST: or.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0x87,0x11,0x38,0xe0]
or.t %d14, %d1, 24, %d1, 0

# CHECK-INST: or.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0x87,0x11,0xb8,0xe3]
or.t %d14, %d1, 24, %d1, 7

# CHECK-INST: or.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0x87,0x11,0x38,0xec]
or.t %d14, %d1, 24, %d1, 24

# CHECK-INST: or.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0x87,0x11,0xb8,0xef]
or.t %d14, %d1, 24, %d1, 31

# CHECK-INST: or.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x38,0xe0]
or.t %d14, %d1, 24, %d14, 0

# CHECK-INST: or.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xb8,0xe3]
or.t %d14, %d1, 24, %d14, 7

# CHECK-INST: or.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x38,0xec]
or.t %d14, %d1, 24, %d14, 24

# CHECK-INST: or.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xb8,0xef]
or.t %d14, %d1, 24, %d14, 31

# CHECK-INST: or.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x38,0xe0]
or.t %d14, %d1, 24, %d15, 0

# CHECK-INST: or.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xb8,0xe3]
or.t %d14, %d1, 24, %d15, 7

# CHECK-INST: or.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x38,0xec]
or.t %d14, %d1, 24, %d15, 24

# CHECK-INST: or.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xb8,0xef]
or.t %d14, %d1, 24, %d15, 31

# CHECK-INST: or.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0x87,0x01,0x3f,0xe0]
or.t %d14, %d1, 31, %d0, 0

# CHECK-INST: or.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0x87,0x01,0xbf,0xe3]
or.t %d14, %d1, 31, %d0, 7

# CHECK-INST: or.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0x87,0x01,0x3f,0xec]
or.t %d14, %d1, 31, %d0, 24

# CHECK-INST: or.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0x87,0x01,0xbf,0xef]
or.t %d14, %d1, 31, %d0, 31

# CHECK-INST: or.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0x87,0x11,0x3f,0xe0]
or.t %d14, %d1, 31, %d1, 0

# CHECK-INST: or.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0x87,0x11,0xbf,0xe3]
or.t %d14, %d1, 31, %d1, 7

# CHECK-INST: or.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0x87,0x11,0x3f,0xec]
or.t %d14, %d1, 31, %d1, 24

# CHECK-INST: or.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0x87,0x11,0xbf,0xef]
or.t %d14, %d1, 31, %d1, 31

# CHECK-INST: or.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x3f,0xe0]
or.t %d14, %d1, 31, %d14, 0

# CHECK-INST: or.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xbf,0xe3]
or.t %d14, %d1, 31, %d14, 7

# CHECK-INST: or.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x3f,0xec]
or.t %d14, %d1, 31, %d14, 24

# CHECK-INST: or.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xbf,0xef]
or.t %d14, %d1, 31, %d14, 31

# CHECK-INST: or.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x3f,0xe0]
or.t %d14, %d1, 31, %d15, 0

# CHECK-INST: or.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xbf,0xe3]
or.t %d14, %d1, 31, %d15, 7

# CHECK-INST: or.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x3f,0xec]
or.t %d14, %d1, 31, %d15, 24

# CHECK-INST: or.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xbf,0xef]
or.t %d14, %d1, 31, %d15, 31

# CHECK-INST: or.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x20,0xe0]
or.t %d14, %d14, 0, %d0, 0

# CHECK-INST: or.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xa0,0xe3]
or.t %d14, %d14, 0, %d0, 7

# CHECK-INST: or.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x20,0xec]
or.t %d14, %d14, 0, %d0, 24

# CHECK-INST: or.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xa0,0xef]
or.t %d14, %d14, 0, %d0, 31

# CHECK-INST: or.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x20,0xe0]
or.t %d14, %d14, 0, %d1, 0

# CHECK-INST: or.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xa0,0xe3]
or.t %d14, %d14, 0, %d1, 7

# CHECK-INST: or.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x20,0xec]
or.t %d14, %d14, 0, %d1, 24

# CHECK-INST: or.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xa0,0xef]
or.t %d14, %d14, 0, %d1, 31

# CHECK-INST: or.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0x87,0xee,0x20,0xe0]
or.t %d14, %d14, 0, %d14, 0

# CHECK-INST: or.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0x87,0xee,0xa0,0xe3]
or.t %d14, %d14, 0, %d14, 7

# CHECK-INST: or.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0x87,0xee,0x20,0xec]
or.t %d14, %d14, 0, %d14, 24

# CHECK-INST: or.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0x87,0xee,0xa0,0xef]
or.t %d14, %d14, 0, %d14, 31

# CHECK-INST: or.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x20,0xe0]
or.t %d14, %d14, 0, %d15, 0

# CHECK-INST: or.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xa0,0xe3]
or.t %d14, %d14, 0, %d15, 7

# CHECK-INST: or.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x20,0xec]
or.t %d14, %d14, 0, %d15, 24

# CHECK-INST: or.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xa0,0xef]
or.t %d14, %d14, 0, %d15, 31

# CHECK-INST: or.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x27,0xe0]
or.t %d14, %d14, 7, %d0, 0

# CHECK-INST: or.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xa7,0xe3]
or.t %d14, %d14, 7, %d0, 7

# CHECK-INST: or.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x27,0xec]
or.t %d14, %d14, 7, %d0, 24

# CHECK-INST: or.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xa7,0xef]
or.t %d14, %d14, 7, %d0, 31

# CHECK-INST: or.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x27,0xe0]
or.t %d14, %d14, 7, %d1, 0

# CHECK-INST: or.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xa7,0xe3]
or.t %d14, %d14, 7, %d1, 7

# CHECK-INST: or.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x27,0xec]
or.t %d14, %d14, 7, %d1, 24

# CHECK-INST: or.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xa7,0xef]
or.t %d14, %d14, 7, %d1, 31

# CHECK-INST: or.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0x87,0xee,0x27,0xe0]
or.t %d14, %d14, 7, %d14, 0

# CHECK-INST: or.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0x87,0xee,0xa7,0xe3]
or.t %d14, %d14, 7, %d14, 7

# CHECK-INST: or.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0x87,0xee,0x27,0xec]
or.t %d14, %d14, 7, %d14, 24

# CHECK-INST: or.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0x87,0xee,0xa7,0xef]
or.t %d14, %d14, 7, %d14, 31

# CHECK-INST: or.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x27,0xe0]
or.t %d14, %d14, 7, %d15, 0

# CHECK-INST: or.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xa7,0xe3]
or.t %d14, %d14, 7, %d15, 7

# CHECK-INST: or.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x27,0xec]
or.t %d14, %d14, 7, %d15, 24

# CHECK-INST: or.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xa7,0xef]
or.t %d14, %d14, 7, %d15, 31

# CHECK-INST: or.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x38,0xe0]
or.t %d14, %d14, 24, %d0, 0

# CHECK-INST: or.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xb8,0xe3]
or.t %d14, %d14, 24, %d0, 7

# CHECK-INST: or.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x38,0xec]
or.t %d14, %d14, 24, %d0, 24

# CHECK-INST: or.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xb8,0xef]
or.t %d14, %d14, 24, %d0, 31

# CHECK-INST: or.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x38,0xe0]
or.t %d14, %d14, 24, %d1, 0

# CHECK-INST: or.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xb8,0xe3]
or.t %d14, %d14, 24, %d1, 7

# CHECK-INST: or.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x38,0xec]
or.t %d14, %d14, 24, %d1, 24

# CHECK-INST: or.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xb8,0xef]
or.t %d14, %d14, 24, %d1, 31

# CHECK-INST: or.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0x87,0xee,0x38,0xe0]
or.t %d14, %d14, 24, %d14, 0

# CHECK-INST: or.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0x87,0xee,0xb8,0xe3]
or.t %d14, %d14, 24, %d14, 7

# CHECK-INST: or.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0x87,0xee,0x38,0xec]
or.t %d14, %d14, 24, %d14, 24

# CHECK-INST: or.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0x87,0xee,0xb8,0xef]
or.t %d14, %d14, 24, %d14, 31

# CHECK-INST: or.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x38,0xe0]
or.t %d14, %d14, 24, %d15, 0

# CHECK-INST: or.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xb8,0xe3]
or.t %d14, %d14, 24, %d15, 7

# CHECK-INST: or.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x38,0xec]
or.t %d14, %d14, 24, %d15, 24

# CHECK-INST: or.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xb8,0xef]
or.t %d14, %d14, 24, %d15, 31

# CHECK-INST: or.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x3f,0xe0]
or.t %d14, %d14, 31, %d0, 0

# CHECK-INST: or.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xbf,0xe3]
or.t %d14, %d14, 31, %d0, 7

# CHECK-INST: or.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x3f,0xec]
or.t %d14, %d14, 31, %d0, 24

# CHECK-INST: or.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xbf,0xef]
or.t %d14, %d14, 31, %d0, 31

# CHECK-INST: or.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x3f,0xe0]
or.t %d14, %d14, 31, %d1, 0

# CHECK-INST: or.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xbf,0xe3]
or.t %d14, %d14, 31, %d1, 7

# CHECK-INST: or.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x3f,0xec]
or.t %d14, %d14, 31, %d1, 24

# CHECK-INST: or.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xbf,0xef]
or.t %d14, %d14, 31, %d1, 31

# CHECK-INST: or.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0x87,0xee,0x3f,0xe0]
or.t %d14, %d14, 31, %d14, 0

# CHECK-INST: or.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0x87,0xee,0xbf,0xe3]
or.t %d14, %d14, 31, %d14, 7

# CHECK-INST: or.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0x87,0xee,0x3f,0xec]
or.t %d14, %d14, 31, %d14, 24

# CHECK-INST: or.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0x87,0xee,0xbf,0xef]
or.t %d14, %d14, 31, %d14, 31

# CHECK-INST: or.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x3f,0xe0]
or.t %d14, %d14, 31, %d15, 0

# CHECK-INST: or.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xbf,0xe3]
or.t %d14, %d14, 31, %d15, 7

# CHECK-INST: or.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x3f,0xec]
or.t %d14, %d14, 31, %d15, 24

# CHECK-INST: or.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xbf,0xef]
or.t %d14, %d14, 31, %d15, 31

# CHECK-INST: or.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x20,0xe0]
or.t %d14, %d15, 0, %d0, 0

# CHECK-INST: or.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xa0,0xe3]
or.t %d14, %d15, 0, %d0, 7

# CHECK-INST: or.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x20,0xec]
or.t %d14, %d15, 0, %d0, 24

# CHECK-INST: or.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xa0,0xef]
or.t %d14, %d15, 0, %d0, 31

# CHECK-INST: or.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x20,0xe0]
or.t %d14, %d15, 0, %d1, 0

# CHECK-INST: or.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xa0,0xe3]
or.t %d14, %d15, 0, %d1, 7

# CHECK-INST: or.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x20,0xec]
or.t %d14, %d15, 0, %d1, 24

# CHECK-INST: or.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xa0,0xef]
or.t %d14, %d15, 0, %d1, 31

# CHECK-INST: or.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0x87,0xef,0x20,0xe0]
or.t %d14, %d15, 0, %d14, 0

# CHECK-INST: or.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0x87,0xef,0xa0,0xe3]
or.t %d14, %d15, 0, %d14, 7

# CHECK-INST: or.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0x87,0xef,0x20,0xec]
or.t %d14, %d15, 0, %d14, 24

# CHECK-INST: or.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0x87,0xef,0xa0,0xef]
or.t %d14, %d15, 0, %d14, 31

# CHECK-INST: or.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0x87,0xff,0x20,0xe0]
or.t %d14, %d15, 0, %d15, 0

# CHECK-INST: or.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0x87,0xff,0xa0,0xe3]
or.t %d14, %d15, 0, %d15, 7

# CHECK-INST: or.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0x87,0xff,0x20,0xec]
or.t %d14, %d15, 0, %d15, 24

# CHECK-INST: or.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0x87,0xff,0xa0,0xef]
or.t %d14, %d15, 0, %d15, 31

# CHECK-INST: or.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x27,0xe0]
or.t %d14, %d15, 7, %d0, 0

# CHECK-INST: or.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xa7,0xe3]
or.t %d14, %d15, 7, %d0, 7

# CHECK-INST: or.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x27,0xec]
or.t %d14, %d15, 7, %d0, 24

# CHECK-INST: or.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xa7,0xef]
or.t %d14, %d15, 7, %d0, 31

# CHECK-INST: or.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x27,0xe0]
or.t %d14, %d15, 7, %d1, 0

# CHECK-INST: or.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xa7,0xe3]
or.t %d14, %d15, 7, %d1, 7

# CHECK-INST: or.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x27,0xec]
or.t %d14, %d15, 7, %d1, 24

# CHECK-INST: or.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xa7,0xef]
or.t %d14, %d15, 7, %d1, 31

# CHECK-INST: or.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0x87,0xef,0x27,0xe0]
or.t %d14, %d15, 7, %d14, 0

# CHECK-INST: or.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0x87,0xef,0xa7,0xe3]
or.t %d14, %d15, 7, %d14, 7

# CHECK-INST: or.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0x87,0xef,0x27,0xec]
or.t %d14, %d15, 7, %d14, 24

# CHECK-INST: or.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0x87,0xef,0xa7,0xef]
or.t %d14, %d15, 7, %d14, 31

# CHECK-INST: or.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0x87,0xff,0x27,0xe0]
or.t %d14, %d15, 7, %d15, 0

# CHECK-INST: or.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0x87,0xff,0xa7,0xe3]
or.t %d14, %d15, 7, %d15, 7

# CHECK-INST: or.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0x87,0xff,0x27,0xec]
or.t %d14, %d15, 7, %d15, 24

# CHECK-INST: or.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0x87,0xff,0xa7,0xef]
or.t %d14, %d15, 7, %d15, 31

# CHECK-INST: or.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x38,0xe0]
or.t %d14, %d15, 24, %d0, 0

# CHECK-INST: or.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xb8,0xe3]
or.t %d14, %d15, 24, %d0, 7

# CHECK-INST: or.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x38,0xec]
or.t %d14, %d15, 24, %d0, 24

# CHECK-INST: or.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xb8,0xef]
or.t %d14, %d15, 24, %d0, 31

# CHECK-INST: or.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x38,0xe0]
or.t %d14, %d15, 24, %d1, 0

# CHECK-INST: or.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xb8,0xe3]
or.t %d14, %d15, 24, %d1, 7

# CHECK-INST: or.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x38,0xec]
or.t %d14, %d15, 24, %d1, 24

# CHECK-INST: or.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xb8,0xef]
or.t %d14, %d15, 24, %d1, 31

# CHECK-INST: or.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0x87,0xef,0x38,0xe0]
or.t %d14, %d15, 24, %d14, 0

# CHECK-INST: or.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0x87,0xef,0xb8,0xe3]
or.t %d14, %d15, 24, %d14, 7

# CHECK-INST: or.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0x87,0xef,0x38,0xec]
or.t %d14, %d15, 24, %d14, 24

# CHECK-INST: or.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0x87,0xef,0xb8,0xef]
or.t %d14, %d15, 24, %d14, 31

# CHECK-INST: or.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0x87,0xff,0x38,0xe0]
or.t %d14, %d15, 24, %d15, 0

# CHECK-INST: or.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0x87,0xff,0xb8,0xe3]
or.t %d14, %d15, 24, %d15, 7

# CHECK-INST: or.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0x87,0xff,0x38,0xec]
or.t %d14, %d15, 24, %d15, 24

# CHECK-INST: or.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0x87,0xff,0xb8,0xef]
or.t %d14, %d15, 24, %d15, 31

# CHECK-INST: or.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x3f,0xe0]
or.t %d14, %d15, 31, %d0, 0

# CHECK-INST: or.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xbf,0xe3]
or.t %d14, %d15, 31, %d0, 7

# CHECK-INST: or.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x3f,0xec]
or.t %d14, %d15, 31, %d0, 24

# CHECK-INST: or.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xbf,0xef]
or.t %d14, %d15, 31, %d0, 31

# CHECK-INST: or.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x3f,0xe0]
or.t %d14, %d15, 31, %d1, 0

# CHECK-INST: or.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xbf,0xe3]
or.t %d14, %d15, 31, %d1, 7

# CHECK-INST: or.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x3f,0xec]
or.t %d14, %d15, 31, %d1, 24

# CHECK-INST: or.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xbf,0xef]
or.t %d14, %d15, 31, %d1, 31

# CHECK-INST: or.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0x87,0xef,0x3f,0xe0]
or.t %d14, %d15, 31, %d14, 0

# CHECK-INST: or.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0x87,0xef,0xbf,0xe3]
or.t %d14, %d15, 31, %d14, 7

# CHECK-INST: or.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0x87,0xef,0x3f,0xec]
or.t %d14, %d15, 31, %d14, 24

# CHECK-INST: or.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0x87,0xef,0xbf,0xef]
or.t %d14, %d15, 31, %d14, 31

# CHECK-INST: or.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0x87,0xff,0x3f,0xe0]
or.t %d14, %d15, 31, %d15, 0

# CHECK-INST: or.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0x87,0xff,0xbf,0xe3]
or.t %d14, %d15, 31, %d15, 7

# CHECK-INST: or.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0x87,0xff,0x3f,0xec]
or.t %d14, %d15, 31, %d15, 24

# CHECK-INST: or.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0x87,0xff,0xbf,0xef]
or.t %d14, %d15, 31, %d15, 31

# CHECK-INST: or.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0x87,0x00,0x20,0xf0]
or.t %d15, %d0, 0, %d0, 0

# CHECK-INST: or.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0x87,0x00,0xa0,0xf3]
or.t %d15, %d0, 0, %d0, 7

# CHECK-INST: or.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0x87,0x00,0x20,0xfc]
or.t %d15, %d0, 0, %d0, 24

# CHECK-INST: or.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0x87,0x00,0xa0,0xff]
or.t %d15, %d0, 0, %d0, 31

# CHECK-INST: or.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0x87,0x10,0x20,0xf0]
or.t %d15, %d0, 0, %d1, 0

# CHECK-INST: or.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0x87,0x10,0xa0,0xf3]
or.t %d15, %d0, 0, %d1, 7

# CHECK-INST: or.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0x87,0x10,0x20,0xfc]
or.t %d15, %d0, 0, %d1, 24

# CHECK-INST: or.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0x87,0x10,0xa0,0xff]
or.t %d15, %d0, 0, %d1, 31

# CHECK-INST: or.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x20,0xf0]
or.t %d15, %d0, 0, %d14, 0

# CHECK-INST: or.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xa0,0xf3]
or.t %d15, %d0, 0, %d14, 7

# CHECK-INST: or.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x20,0xfc]
or.t %d15, %d0, 0, %d14, 24

# CHECK-INST: or.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xa0,0xff]
or.t %d15, %d0, 0, %d14, 31

# CHECK-INST: or.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x20,0xf0]
or.t %d15, %d0, 0, %d15, 0

# CHECK-INST: or.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xa0,0xf3]
or.t %d15, %d0, 0, %d15, 7

# CHECK-INST: or.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x20,0xfc]
or.t %d15, %d0, 0, %d15, 24

# CHECK-INST: or.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xa0,0xff]
or.t %d15, %d0, 0, %d15, 31

# CHECK-INST: or.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0x87,0x00,0x27,0xf0]
or.t %d15, %d0, 7, %d0, 0

# CHECK-INST: or.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0x87,0x00,0xa7,0xf3]
or.t %d15, %d0, 7, %d0, 7

# CHECK-INST: or.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0x87,0x00,0x27,0xfc]
or.t %d15, %d0, 7, %d0, 24

# CHECK-INST: or.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0x87,0x00,0xa7,0xff]
or.t %d15, %d0, 7, %d0, 31

# CHECK-INST: or.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0x87,0x10,0x27,0xf0]
or.t %d15, %d0, 7, %d1, 0

# CHECK-INST: or.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0x87,0x10,0xa7,0xf3]
or.t %d15, %d0, 7, %d1, 7

# CHECK-INST: or.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0x87,0x10,0x27,0xfc]
or.t %d15, %d0, 7, %d1, 24

# CHECK-INST: or.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0x87,0x10,0xa7,0xff]
or.t %d15, %d0, 7, %d1, 31

# CHECK-INST: or.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x27,0xf0]
or.t %d15, %d0, 7, %d14, 0

# CHECK-INST: or.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xa7,0xf3]
or.t %d15, %d0, 7, %d14, 7

# CHECK-INST: or.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x27,0xfc]
or.t %d15, %d0, 7, %d14, 24

# CHECK-INST: or.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xa7,0xff]
or.t %d15, %d0, 7, %d14, 31

# CHECK-INST: or.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x27,0xf0]
or.t %d15, %d0, 7, %d15, 0

# CHECK-INST: or.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xa7,0xf3]
or.t %d15, %d0, 7, %d15, 7

# CHECK-INST: or.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x27,0xfc]
or.t %d15, %d0, 7, %d15, 24

# CHECK-INST: or.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xa7,0xff]
or.t %d15, %d0, 7, %d15, 31

# CHECK-INST: or.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0x87,0x00,0x38,0xf0]
or.t %d15, %d0, 24, %d0, 0

# CHECK-INST: or.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0x87,0x00,0xb8,0xf3]
or.t %d15, %d0, 24, %d0, 7

# CHECK-INST: or.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0x87,0x00,0x38,0xfc]
or.t %d15, %d0, 24, %d0, 24

# CHECK-INST: or.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0x87,0x00,0xb8,0xff]
or.t %d15, %d0, 24, %d0, 31

# CHECK-INST: or.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0x87,0x10,0x38,0xf0]
or.t %d15, %d0, 24, %d1, 0

# CHECK-INST: or.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0x87,0x10,0xb8,0xf3]
or.t %d15, %d0, 24, %d1, 7

# CHECK-INST: or.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0x87,0x10,0x38,0xfc]
or.t %d15, %d0, 24, %d1, 24

# CHECK-INST: or.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0x87,0x10,0xb8,0xff]
or.t %d15, %d0, 24, %d1, 31

# CHECK-INST: or.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x38,0xf0]
or.t %d15, %d0, 24, %d14, 0

# CHECK-INST: or.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xb8,0xf3]
or.t %d15, %d0, 24, %d14, 7

# CHECK-INST: or.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x38,0xfc]
or.t %d15, %d0, 24, %d14, 24

# CHECK-INST: or.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xb8,0xff]
or.t %d15, %d0, 24, %d14, 31

# CHECK-INST: or.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x38,0xf0]
or.t %d15, %d0, 24, %d15, 0

# CHECK-INST: or.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xb8,0xf3]
or.t %d15, %d0, 24, %d15, 7

# CHECK-INST: or.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x38,0xfc]
or.t %d15, %d0, 24, %d15, 24

# CHECK-INST: or.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xb8,0xff]
or.t %d15, %d0, 24, %d15, 31

# CHECK-INST: or.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0x87,0x00,0x3f,0xf0]
or.t %d15, %d0, 31, %d0, 0

# CHECK-INST: or.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0x87,0x00,0xbf,0xf3]
or.t %d15, %d0, 31, %d0, 7

# CHECK-INST: or.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0x87,0x00,0x3f,0xfc]
or.t %d15, %d0, 31, %d0, 24

# CHECK-INST: or.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0x87,0x00,0xbf,0xff]
or.t %d15, %d0, 31, %d0, 31

# CHECK-INST: or.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0x87,0x10,0x3f,0xf0]
or.t %d15, %d0, 31, %d1, 0

# CHECK-INST: or.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0x87,0x10,0xbf,0xf3]
or.t %d15, %d0, 31, %d1, 7

# CHECK-INST: or.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0x87,0x10,0x3f,0xfc]
or.t %d15, %d0, 31, %d1, 24

# CHECK-INST: or.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0x87,0x10,0xbf,0xff]
or.t %d15, %d0, 31, %d1, 31

# CHECK-INST: or.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0x87,0xe0,0x3f,0xf0]
or.t %d15, %d0, 31, %d14, 0

# CHECK-INST: or.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0x87,0xe0,0xbf,0xf3]
or.t %d15, %d0, 31, %d14, 7

# CHECK-INST: or.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0x87,0xe0,0x3f,0xfc]
or.t %d15, %d0, 31, %d14, 24

# CHECK-INST: or.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0x87,0xe0,0xbf,0xff]
or.t %d15, %d0, 31, %d14, 31

# CHECK-INST: or.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0x87,0xf0,0x3f,0xf0]
or.t %d15, %d0, 31, %d15, 0

# CHECK-INST: or.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0x87,0xf0,0xbf,0xf3]
or.t %d15, %d0, 31, %d15, 7

# CHECK-INST: or.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0x87,0xf0,0x3f,0xfc]
or.t %d15, %d0, 31, %d15, 24

# CHECK-INST: or.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0x87,0xf0,0xbf,0xff]
or.t %d15, %d0, 31, %d15, 31

# CHECK-INST: or.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0x87,0x01,0x20,0xf0]
or.t %d15, %d1, 0, %d0, 0

# CHECK-INST: or.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0x87,0x01,0xa0,0xf3]
or.t %d15, %d1, 0, %d0, 7

# CHECK-INST: or.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0x87,0x01,0x20,0xfc]
or.t %d15, %d1, 0, %d0, 24

# CHECK-INST: or.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0x87,0x01,0xa0,0xff]
or.t %d15, %d1, 0, %d0, 31

# CHECK-INST: or.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0x87,0x11,0x20,0xf0]
or.t %d15, %d1, 0, %d1, 0

# CHECK-INST: or.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0x87,0x11,0xa0,0xf3]
or.t %d15, %d1, 0, %d1, 7

# CHECK-INST: or.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0x87,0x11,0x20,0xfc]
or.t %d15, %d1, 0, %d1, 24

# CHECK-INST: or.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0x87,0x11,0xa0,0xff]
or.t %d15, %d1, 0, %d1, 31

# CHECK-INST: or.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x20,0xf0]
or.t %d15, %d1, 0, %d14, 0

# CHECK-INST: or.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xa0,0xf3]
or.t %d15, %d1, 0, %d14, 7

# CHECK-INST: or.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x20,0xfc]
or.t %d15, %d1, 0, %d14, 24

# CHECK-INST: or.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xa0,0xff]
or.t %d15, %d1, 0, %d14, 31

# CHECK-INST: or.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x20,0xf0]
or.t %d15, %d1, 0, %d15, 0

# CHECK-INST: or.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xa0,0xf3]
or.t %d15, %d1, 0, %d15, 7

# CHECK-INST: or.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x20,0xfc]
or.t %d15, %d1, 0, %d15, 24

# CHECK-INST: or.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xa0,0xff]
or.t %d15, %d1, 0, %d15, 31

# CHECK-INST: or.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0x87,0x01,0x27,0xf0]
or.t %d15, %d1, 7, %d0, 0

# CHECK-INST: or.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0x87,0x01,0xa7,0xf3]
or.t %d15, %d1, 7, %d0, 7

# CHECK-INST: or.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0x87,0x01,0x27,0xfc]
or.t %d15, %d1, 7, %d0, 24

# CHECK-INST: or.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0x87,0x01,0xa7,0xff]
or.t %d15, %d1, 7, %d0, 31

# CHECK-INST: or.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0x87,0x11,0x27,0xf0]
or.t %d15, %d1, 7, %d1, 0

# CHECK-INST: or.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0x87,0x11,0xa7,0xf3]
or.t %d15, %d1, 7, %d1, 7

# CHECK-INST: or.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0x87,0x11,0x27,0xfc]
or.t %d15, %d1, 7, %d1, 24

# CHECK-INST: or.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0x87,0x11,0xa7,0xff]
or.t %d15, %d1, 7, %d1, 31

# CHECK-INST: or.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x27,0xf0]
or.t %d15, %d1, 7, %d14, 0

# CHECK-INST: or.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xa7,0xf3]
or.t %d15, %d1, 7, %d14, 7

# CHECK-INST: or.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x27,0xfc]
or.t %d15, %d1, 7, %d14, 24

# CHECK-INST: or.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xa7,0xff]
or.t %d15, %d1, 7, %d14, 31

# CHECK-INST: or.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x27,0xf0]
or.t %d15, %d1, 7, %d15, 0

# CHECK-INST: or.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xa7,0xf3]
or.t %d15, %d1, 7, %d15, 7

# CHECK-INST: or.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x27,0xfc]
or.t %d15, %d1, 7, %d15, 24

# CHECK-INST: or.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xa7,0xff]
or.t %d15, %d1, 7, %d15, 31

# CHECK-INST: or.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0x87,0x01,0x38,0xf0]
or.t %d15, %d1, 24, %d0, 0

# CHECK-INST: or.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0x87,0x01,0xb8,0xf3]
or.t %d15, %d1, 24, %d0, 7

# CHECK-INST: or.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0x87,0x01,0x38,0xfc]
or.t %d15, %d1, 24, %d0, 24

# CHECK-INST: or.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0x87,0x01,0xb8,0xff]
or.t %d15, %d1, 24, %d0, 31

# CHECK-INST: or.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0x87,0x11,0x38,0xf0]
or.t %d15, %d1, 24, %d1, 0

# CHECK-INST: or.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0x87,0x11,0xb8,0xf3]
or.t %d15, %d1, 24, %d1, 7

# CHECK-INST: or.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0x87,0x11,0x38,0xfc]
or.t %d15, %d1, 24, %d1, 24

# CHECK-INST: or.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0x87,0x11,0xb8,0xff]
or.t %d15, %d1, 24, %d1, 31

# CHECK-INST: or.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x38,0xf0]
or.t %d15, %d1, 24, %d14, 0

# CHECK-INST: or.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xb8,0xf3]
or.t %d15, %d1, 24, %d14, 7

# CHECK-INST: or.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x38,0xfc]
or.t %d15, %d1, 24, %d14, 24

# CHECK-INST: or.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xb8,0xff]
or.t %d15, %d1, 24, %d14, 31

# CHECK-INST: or.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x38,0xf0]
or.t %d15, %d1, 24, %d15, 0

# CHECK-INST: or.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xb8,0xf3]
or.t %d15, %d1, 24, %d15, 7

# CHECK-INST: or.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x38,0xfc]
or.t %d15, %d1, 24, %d15, 24

# CHECK-INST: or.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xb8,0xff]
or.t %d15, %d1, 24, %d15, 31

# CHECK-INST: or.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0x87,0x01,0x3f,0xf0]
or.t %d15, %d1, 31, %d0, 0

# CHECK-INST: or.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0x87,0x01,0xbf,0xf3]
or.t %d15, %d1, 31, %d0, 7

# CHECK-INST: or.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0x87,0x01,0x3f,0xfc]
or.t %d15, %d1, 31, %d0, 24

# CHECK-INST: or.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0x87,0x01,0xbf,0xff]
or.t %d15, %d1, 31, %d0, 31

# CHECK-INST: or.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0x87,0x11,0x3f,0xf0]
or.t %d15, %d1, 31, %d1, 0

# CHECK-INST: or.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0x87,0x11,0xbf,0xf3]
or.t %d15, %d1, 31, %d1, 7

# CHECK-INST: or.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0x87,0x11,0x3f,0xfc]
or.t %d15, %d1, 31, %d1, 24

# CHECK-INST: or.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0x87,0x11,0xbf,0xff]
or.t %d15, %d1, 31, %d1, 31

# CHECK-INST: or.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0x87,0xe1,0x3f,0xf0]
or.t %d15, %d1, 31, %d14, 0

# CHECK-INST: or.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0x87,0xe1,0xbf,0xf3]
or.t %d15, %d1, 31, %d14, 7

# CHECK-INST: or.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0x87,0xe1,0x3f,0xfc]
or.t %d15, %d1, 31, %d14, 24

# CHECK-INST: or.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0x87,0xe1,0xbf,0xff]
or.t %d15, %d1, 31, %d14, 31

# CHECK-INST: or.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0x87,0xf1,0x3f,0xf0]
or.t %d15, %d1, 31, %d15, 0

# CHECK-INST: or.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0x87,0xf1,0xbf,0xf3]
or.t %d15, %d1, 31, %d15, 7

# CHECK-INST: or.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0x87,0xf1,0x3f,0xfc]
or.t %d15, %d1, 31, %d15, 24

# CHECK-INST: or.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0x87,0xf1,0xbf,0xff]
or.t %d15, %d1, 31, %d15, 31

# CHECK-INST: or.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x20,0xf0]
or.t %d15, %d14, 0, %d0, 0

# CHECK-INST: or.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xa0,0xf3]
or.t %d15, %d14, 0, %d0, 7

# CHECK-INST: or.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x20,0xfc]
or.t %d15, %d14, 0, %d0, 24

# CHECK-INST: or.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xa0,0xff]
or.t %d15, %d14, 0, %d0, 31

# CHECK-INST: or.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x20,0xf0]
or.t %d15, %d14, 0, %d1, 0

# CHECK-INST: or.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xa0,0xf3]
or.t %d15, %d14, 0, %d1, 7

# CHECK-INST: or.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x20,0xfc]
or.t %d15, %d14, 0, %d1, 24

# CHECK-INST: or.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xa0,0xff]
or.t %d15, %d14, 0, %d1, 31

# CHECK-INST: or.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0x87,0xee,0x20,0xf0]
or.t %d15, %d14, 0, %d14, 0

# CHECK-INST: or.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0x87,0xee,0xa0,0xf3]
or.t %d15, %d14, 0, %d14, 7

# CHECK-INST: or.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0x87,0xee,0x20,0xfc]
or.t %d15, %d14, 0, %d14, 24

# CHECK-INST: or.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0x87,0xee,0xa0,0xff]
or.t %d15, %d14, 0, %d14, 31

# CHECK-INST: or.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x20,0xf0]
or.t %d15, %d14, 0, %d15, 0

# CHECK-INST: or.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xa0,0xf3]
or.t %d15, %d14, 0, %d15, 7

# CHECK-INST: or.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x20,0xfc]
or.t %d15, %d14, 0, %d15, 24

# CHECK-INST: or.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xa0,0xff]
or.t %d15, %d14, 0, %d15, 31

# CHECK-INST: or.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x27,0xf0]
or.t %d15, %d14, 7, %d0, 0

# CHECK-INST: or.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xa7,0xf3]
or.t %d15, %d14, 7, %d0, 7

# CHECK-INST: or.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x27,0xfc]
or.t %d15, %d14, 7, %d0, 24

# CHECK-INST: or.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xa7,0xff]
or.t %d15, %d14, 7, %d0, 31

# CHECK-INST: or.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x27,0xf0]
or.t %d15, %d14, 7, %d1, 0

# CHECK-INST: or.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xa7,0xf3]
or.t %d15, %d14, 7, %d1, 7

# CHECK-INST: or.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x27,0xfc]
or.t %d15, %d14, 7, %d1, 24

# CHECK-INST: or.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xa7,0xff]
or.t %d15, %d14, 7, %d1, 31

# CHECK-INST: or.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0x87,0xee,0x27,0xf0]
or.t %d15, %d14, 7, %d14, 0

# CHECK-INST: or.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0x87,0xee,0xa7,0xf3]
or.t %d15, %d14, 7, %d14, 7

# CHECK-INST: or.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0x87,0xee,0x27,0xfc]
or.t %d15, %d14, 7, %d14, 24

# CHECK-INST: or.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0x87,0xee,0xa7,0xff]
or.t %d15, %d14, 7, %d14, 31

# CHECK-INST: or.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x27,0xf0]
or.t %d15, %d14, 7, %d15, 0

# CHECK-INST: or.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xa7,0xf3]
or.t %d15, %d14, 7, %d15, 7

# CHECK-INST: or.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x27,0xfc]
or.t %d15, %d14, 7, %d15, 24

# CHECK-INST: or.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xa7,0xff]
or.t %d15, %d14, 7, %d15, 31

# CHECK-INST: or.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x38,0xf0]
or.t %d15, %d14, 24, %d0, 0

# CHECK-INST: or.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xb8,0xf3]
or.t %d15, %d14, 24, %d0, 7

# CHECK-INST: or.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x38,0xfc]
or.t %d15, %d14, 24, %d0, 24

# CHECK-INST: or.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xb8,0xff]
or.t %d15, %d14, 24, %d0, 31

# CHECK-INST: or.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x38,0xf0]
or.t %d15, %d14, 24, %d1, 0

# CHECK-INST: or.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xb8,0xf3]
or.t %d15, %d14, 24, %d1, 7

# CHECK-INST: or.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x38,0xfc]
or.t %d15, %d14, 24, %d1, 24

# CHECK-INST: or.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xb8,0xff]
or.t %d15, %d14, 24, %d1, 31

# CHECK-INST: or.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0x87,0xee,0x38,0xf0]
or.t %d15, %d14, 24, %d14, 0

# CHECK-INST: or.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0x87,0xee,0xb8,0xf3]
or.t %d15, %d14, 24, %d14, 7

# CHECK-INST: or.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0x87,0xee,0x38,0xfc]
or.t %d15, %d14, 24, %d14, 24

# CHECK-INST: or.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0x87,0xee,0xb8,0xff]
or.t %d15, %d14, 24, %d14, 31

# CHECK-INST: or.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x38,0xf0]
or.t %d15, %d14, 24, %d15, 0

# CHECK-INST: or.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xb8,0xf3]
or.t %d15, %d14, 24, %d15, 7

# CHECK-INST: or.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x38,0xfc]
or.t %d15, %d14, 24, %d15, 24

# CHECK-INST: or.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xb8,0xff]
or.t %d15, %d14, 24, %d15, 31

# CHECK-INST: or.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0x87,0x0e,0x3f,0xf0]
or.t %d15, %d14, 31, %d0, 0

# CHECK-INST: or.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0x87,0x0e,0xbf,0xf3]
or.t %d15, %d14, 31, %d0, 7

# CHECK-INST: or.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0x87,0x0e,0x3f,0xfc]
or.t %d15, %d14, 31, %d0, 24

# CHECK-INST: or.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0x87,0x0e,0xbf,0xff]
or.t %d15, %d14, 31, %d0, 31

# CHECK-INST: or.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0x87,0x1e,0x3f,0xf0]
or.t %d15, %d14, 31, %d1, 0

# CHECK-INST: or.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0x87,0x1e,0xbf,0xf3]
or.t %d15, %d14, 31, %d1, 7

# CHECK-INST: or.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0x87,0x1e,0x3f,0xfc]
or.t %d15, %d14, 31, %d1, 24

# CHECK-INST: or.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0x87,0x1e,0xbf,0xff]
or.t %d15, %d14, 31, %d1, 31

# CHECK-INST: or.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0x87,0xee,0x3f,0xf0]
or.t %d15, %d14, 31, %d14, 0

# CHECK-INST: or.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0x87,0xee,0xbf,0xf3]
or.t %d15, %d14, 31, %d14, 7

# CHECK-INST: or.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0x87,0xee,0x3f,0xfc]
or.t %d15, %d14, 31, %d14, 24

# CHECK-INST: or.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0x87,0xee,0xbf,0xff]
or.t %d15, %d14, 31, %d14, 31

# CHECK-INST: or.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0x87,0xfe,0x3f,0xf0]
or.t %d15, %d14, 31, %d15, 0

# CHECK-INST: or.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0x87,0xfe,0xbf,0xf3]
or.t %d15, %d14, 31, %d15, 7

# CHECK-INST: or.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0x87,0xfe,0x3f,0xfc]
or.t %d15, %d14, 31, %d15, 24

# CHECK-INST: or.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0x87,0xfe,0xbf,0xff]
or.t %d15, %d14, 31, %d15, 31

# CHECK-INST: or.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x20,0xf0]
or.t %d15, %d15, 0, %d0, 0

# CHECK-INST: or.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xa0,0xf3]
or.t %d15, %d15, 0, %d0, 7

# CHECK-INST: or.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x20,0xfc]
or.t %d15, %d15, 0, %d0, 24

# CHECK-INST: or.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xa0,0xff]
or.t %d15, %d15, 0, %d0, 31

# CHECK-INST: or.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x20,0xf0]
or.t %d15, %d15, 0, %d1, 0

# CHECK-INST: or.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xa0,0xf3]
or.t %d15, %d15, 0, %d1, 7

# CHECK-INST: or.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x20,0xfc]
or.t %d15, %d15, 0, %d1, 24

# CHECK-INST: or.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xa0,0xff]
or.t %d15, %d15, 0, %d1, 31

# CHECK-INST: or.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0x87,0xef,0x20,0xf0]
or.t %d15, %d15, 0, %d14, 0

# CHECK-INST: or.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0x87,0xef,0xa0,0xf3]
or.t %d15, %d15, 0, %d14, 7

# CHECK-INST: or.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0x87,0xef,0x20,0xfc]
or.t %d15, %d15, 0, %d14, 24

# CHECK-INST: or.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0x87,0xef,0xa0,0xff]
or.t %d15, %d15, 0, %d14, 31

# CHECK-INST: or.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0x87,0xff,0x20,0xf0]
or.t %d15, %d15, 0, %d15, 0

# CHECK-INST: or.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0x87,0xff,0xa0,0xf3]
or.t %d15, %d15, 0, %d15, 7

# CHECK-INST: or.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0x87,0xff,0x20,0xfc]
or.t %d15, %d15, 0, %d15, 24

# CHECK-INST: or.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0x87,0xff,0xa0,0xff]
or.t %d15, %d15, 0, %d15, 31

# CHECK-INST: or.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x27,0xf0]
or.t %d15, %d15, 7, %d0, 0

# CHECK-INST: or.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xa7,0xf3]
or.t %d15, %d15, 7, %d0, 7

# CHECK-INST: or.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x27,0xfc]
or.t %d15, %d15, 7, %d0, 24

# CHECK-INST: or.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xa7,0xff]
or.t %d15, %d15, 7, %d0, 31

# CHECK-INST: or.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x27,0xf0]
or.t %d15, %d15, 7, %d1, 0

# CHECK-INST: or.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xa7,0xf3]
or.t %d15, %d15, 7, %d1, 7

# CHECK-INST: or.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x27,0xfc]
or.t %d15, %d15, 7, %d1, 24

# CHECK-INST: or.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xa7,0xff]
or.t %d15, %d15, 7, %d1, 31

# CHECK-INST: or.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0x87,0xef,0x27,0xf0]
or.t %d15, %d15, 7, %d14, 0

# CHECK-INST: or.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0x87,0xef,0xa7,0xf3]
or.t %d15, %d15, 7, %d14, 7

# CHECK-INST: or.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0x87,0xef,0x27,0xfc]
or.t %d15, %d15, 7, %d14, 24

# CHECK-INST: or.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0x87,0xef,0xa7,0xff]
or.t %d15, %d15, 7, %d14, 31

# CHECK-INST: or.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0x87,0xff,0x27,0xf0]
or.t %d15, %d15, 7, %d15, 0

# CHECK-INST: or.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0x87,0xff,0xa7,0xf3]
or.t %d15, %d15, 7, %d15, 7

# CHECK-INST: or.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0x87,0xff,0x27,0xfc]
or.t %d15, %d15, 7, %d15, 24

# CHECK-INST: or.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0x87,0xff,0xa7,0xff]
or.t %d15, %d15, 7, %d15, 31

# CHECK-INST: or.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x38,0xf0]
or.t %d15, %d15, 24, %d0, 0

# CHECK-INST: or.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xb8,0xf3]
or.t %d15, %d15, 24, %d0, 7

# CHECK-INST: or.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x38,0xfc]
or.t %d15, %d15, 24, %d0, 24

# CHECK-INST: or.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xb8,0xff]
or.t %d15, %d15, 24, %d0, 31

# CHECK-INST: or.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x38,0xf0]
or.t %d15, %d15, 24, %d1, 0

# CHECK-INST: or.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xb8,0xf3]
or.t %d15, %d15, 24, %d1, 7

# CHECK-INST: or.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x38,0xfc]
or.t %d15, %d15, 24, %d1, 24

# CHECK-INST: or.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xb8,0xff]
or.t %d15, %d15, 24, %d1, 31

# CHECK-INST: or.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0x87,0xef,0x38,0xf0]
or.t %d15, %d15, 24, %d14, 0

# CHECK-INST: or.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0x87,0xef,0xb8,0xf3]
or.t %d15, %d15, 24, %d14, 7

# CHECK-INST: or.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0x87,0xef,0x38,0xfc]
or.t %d15, %d15, 24, %d14, 24

# CHECK-INST: or.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0x87,0xef,0xb8,0xff]
or.t %d15, %d15, 24, %d14, 31

# CHECK-INST: or.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0x87,0xff,0x38,0xf0]
or.t %d15, %d15, 24, %d15, 0

# CHECK-INST: or.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0x87,0xff,0xb8,0xf3]
or.t %d15, %d15, 24, %d15, 7

# CHECK-INST: or.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0x87,0xff,0x38,0xfc]
or.t %d15, %d15, 24, %d15, 24

# CHECK-INST: or.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0x87,0xff,0xb8,0xff]
or.t %d15, %d15, 24, %d15, 31

# CHECK-INST: or.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0x87,0x0f,0x3f,0xf0]
or.t %d15, %d15, 31, %d0, 0

# CHECK-INST: or.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0x87,0x0f,0xbf,0xf3]
or.t %d15, %d15, 31, %d0, 7

# CHECK-INST: or.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0x87,0x0f,0x3f,0xfc]
or.t %d15, %d15, 31, %d0, 24

# CHECK-INST: or.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0x87,0x0f,0xbf,0xff]
or.t %d15, %d15, 31, %d0, 31

# CHECK-INST: or.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0x87,0x1f,0x3f,0xf0]
or.t %d15, %d15, 31, %d1, 0

# CHECK-INST: or.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0x87,0x1f,0xbf,0xf3]
or.t %d15, %d15, 31, %d1, 7

# CHECK-INST: or.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0x87,0x1f,0x3f,0xfc]
or.t %d15, %d15, 31, %d1, 24

# CHECK-INST: or.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0x87,0x1f,0xbf,0xff]
or.t %d15, %d15, 31, %d1, 31

# CHECK-INST: or.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0x87,0xef,0x3f,0xf0]
or.t %d15, %d15, 31, %d14, 0

# CHECK-INST: or.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0x87,0xef,0xbf,0xf3]
or.t %d15, %d15, 31, %d14, 7

# CHECK-INST: or.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0x87,0xef,0x3f,0xfc]
or.t %d15, %d15, 31, %d14, 24

# CHECK-INST: or.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0x87,0xef,0xbf,0xff]
or.t %d15, %d15, 31, %d14, 31

# CHECK-INST: or.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0x87,0xff,0x3f,0xf0]
or.t %d15, %d15, 31, %d15, 0

# CHECK-INST: or.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0x87,0xff,0xbf,0xf3]
or.t %d15, %d15, 31, %d15, 7

# CHECK-INST: or.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0x87,0xff,0x3f,0xfc]
or.t %d15, %d15, 31, %d15, 24

# CHECK-INST: or.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0x87,0xff,0xbf,0xff]
or.t %d15, %d15, 31, %d15, 31

# CHECK-INST: orn.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x20,0x00]
orn.t %d0, %d0, 0, %d0, 0

# CHECK-INST: orn.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0x07,0x00,0xa0,0x03]
orn.t %d0, %d0, 0, %d0, 7

# CHECK-INST: orn.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0x07,0x00,0x20,0x0c]
orn.t %d0, %d0, 0, %d0, 24

# CHECK-INST: orn.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0x07,0x00,0xa0,0x0f]
orn.t %d0, %d0, 0, %d0, 31

# CHECK-INST: orn.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0x07,0x10,0x20,0x00]
orn.t %d0, %d0, 0, %d1, 0

# CHECK-INST: orn.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0x07,0x10,0xa0,0x03]
orn.t %d0, %d0, 0, %d1, 7

# CHECK-INST: orn.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0x07,0x10,0x20,0x0c]
orn.t %d0, %d0, 0, %d1, 24

# CHECK-INST: orn.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0x07,0x10,0xa0,0x0f]
orn.t %d0, %d0, 0, %d1, 31

# CHECK-INST: orn.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x20,0x00]
orn.t %d0, %d0, 0, %d14, 0

# CHECK-INST: orn.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xa0,0x03]
orn.t %d0, %d0, 0, %d14, 7

# CHECK-INST: orn.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x20,0x0c]
orn.t %d0, %d0, 0, %d14, 24

# CHECK-INST: orn.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xa0,0x0f]
orn.t %d0, %d0, 0, %d14, 31

# CHECK-INST: orn.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x20,0x00]
orn.t %d0, %d0, 0, %d15, 0

# CHECK-INST: orn.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xa0,0x03]
orn.t %d0, %d0, 0, %d15, 7

# CHECK-INST: orn.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x20,0x0c]
orn.t %d0, %d0, 0, %d15, 24

# CHECK-INST: orn.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xa0,0x0f]
orn.t %d0, %d0, 0, %d15, 31

# CHECK-INST: orn.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0x07,0x00,0x27,0x00]
orn.t %d0, %d0, 7, %d0, 0

# CHECK-INST: orn.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0x07,0x00,0xa7,0x03]
orn.t %d0, %d0, 7, %d0, 7

# CHECK-INST: orn.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0x07,0x00,0x27,0x0c]
orn.t %d0, %d0, 7, %d0, 24

# CHECK-INST: orn.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0x07,0x00,0xa7,0x0f]
orn.t %d0, %d0, 7, %d0, 31

# CHECK-INST: orn.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0x07,0x10,0x27,0x00]
orn.t %d0, %d0, 7, %d1, 0

# CHECK-INST: orn.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0x07,0x10,0xa7,0x03]
orn.t %d0, %d0, 7, %d1, 7

# CHECK-INST: orn.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0x07,0x10,0x27,0x0c]
orn.t %d0, %d0, 7, %d1, 24

# CHECK-INST: orn.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0x07,0x10,0xa7,0x0f]
orn.t %d0, %d0, 7, %d1, 31

# CHECK-INST: orn.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x27,0x00]
orn.t %d0, %d0, 7, %d14, 0

# CHECK-INST: orn.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xa7,0x03]
orn.t %d0, %d0, 7, %d14, 7

# CHECK-INST: orn.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x27,0x0c]
orn.t %d0, %d0, 7, %d14, 24

# CHECK-INST: orn.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xa7,0x0f]
orn.t %d0, %d0, 7, %d14, 31

# CHECK-INST: orn.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x27,0x00]
orn.t %d0, %d0, 7, %d15, 0

# CHECK-INST: orn.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xa7,0x03]
orn.t %d0, %d0, 7, %d15, 7

# CHECK-INST: orn.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x27,0x0c]
orn.t %d0, %d0, 7, %d15, 24

# CHECK-INST: orn.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xa7,0x0f]
orn.t %d0, %d0, 7, %d15, 31

# CHECK-INST: orn.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0x07,0x00,0x38,0x00]
orn.t %d0, %d0, 24, %d0, 0

# CHECK-INST: orn.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0x07,0x00,0xb8,0x03]
orn.t %d0, %d0, 24, %d0, 7

# CHECK-INST: orn.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0x07,0x00,0x38,0x0c]
orn.t %d0, %d0, 24, %d0, 24

# CHECK-INST: orn.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0x07,0x00,0xb8,0x0f]
orn.t %d0, %d0, 24, %d0, 31

# CHECK-INST: orn.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0x07,0x10,0x38,0x00]
orn.t %d0, %d0, 24, %d1, 0

# CHECK-INST: orn.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0x07,0x10,0xb8,0x03]
orn.t %d0, %d0, 24, %d1, 7

# CHECK-INST: orn.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0x07,0x10,0x38,0x0c]
orn.t %d0, %d0, 24, %d1, 24

# CHECK-INST: orn.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0x07,0x10,0xb8,0x0f]
orn.t %d0, %d0, 24, %d1, 31

# CHECK-INST: orn.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x38,0x00]
orn.t %d0, %d0, 24, %d14, 0

# CHECK-INST: orn.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xb8,0x03]
orn.t %d0, %d0, 24, %d14, 7

# CHECK-INST: orn.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x38,0x0c]
orn.t %d0, %d0, 24, %d14, 24

# CHECK-INST: orn.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xb8,0x0f]
orn.t %d0, %d0, 24, %d14, 31

# CHECK-INST: orn.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x38,0x00]
orn.t %d0, %d0, 24, %d15, 0

# CHECK-INST: orn.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xb8,0x03]
orn.t %d0, %d0, 24, %d15, 7

# CHECK-INST: orn.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x38,0x0c]
orn.t %d0, %d0, 24, %d15, 24

# CHECK-INST: orn.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xb8,0x0f]
orn.t %d0, %d0, 24, %d15, 31

# CHECK-INST: orn.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0x07,0x00,0x3f,0x00]
orn.t %d0, %d0, 31, %d0, 0

# CHECK-INST: orn.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0x07,0x00,0xbf,0x03]
orn.t %d0, %d0, 31, %d0, 7

# CHECK-INST: orn.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0x07,0x00,0x3f,0x0c]
orn.t %d0, %d0, 31, %d0, 24

# CHECK-INST: orn.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0x07,0x00,0xbf,0x0f]
orn.t %d0, %d0, 31, %d0, 31

# CHECK-INST: orn.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0x07,0x10,0x3f,0x00]
orn.t %d0, %d0, 31, %d1, 0

# CHECK-INST: orn.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0x07,0x10,0xbf,0x03]
orn.t %d0, %d0, 31, %d1, 7

# CHECK-INST: orn.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0x07,0x10,0x3f,0x0c]
orn.t %d0, %d0, 31, %d1, 24

# CHECK-INST: orn.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0x07,0x10,0xbf,0x0f]
orn.t %d0, %d0, 31, %d1, 31

# CHECK-INST: orn.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x3f,0x00]
orn.t %d0, %d0, 31, %d14, 0

# CHECK-INST: orn.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xbf,0x03]
orn.t %d0, %d0, 31, %d14, 7

# CHECK-INST: orn.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x3f,0x0c]
orn.t %d0, %d0, 31, %d14, 24

# CHECK-INST: orn.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xbf,0x0f]
orn.t %d0, %d0, 31, %d14, 31

# CHECK-INST: orn.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x3f,0x00]
orn.t %d0, %d0, 31, %d15, 0

# CHECK-INST: orn.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xbf,0x03]
orn.t %d0, %d0, 31, %d15, 7

# CHECK-INST: orn.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x3f,0x0c]
orn.t %d0, %d0, 31, %d15, 24

# CHECK-INST: orn.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xbf,0x0f]
orn.t %d0, %d0, 31, %d15, 31

# CHECK-INST: orn.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0x07,0x01,0x20,0x00]
orn.t %d0, %d1, 0, %d0, 0

# CHECK-INST: orn.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0x07,0x01,0xa0,0x03]
orn.t %d0, %d1, 0, %d0, 7

# CHECK-INST: orn.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0x07,0x01,0x20,0x0c]
orn.t %d0, %d1, 0, %d0, 24

# CHECK-INST: orn.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0x07,0x01,0xa0,0x0f]
orn.t %d0, %d1, 0, %d0, 31

# CHECK-INST: orn.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0x07,0x11,0x20,0x00]
orn.t %d0, %d1, 0, %d1, 0

# CHECK-INST: orn.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0x07,0x11,0xa0,0x03]
orn.t %d0, %d1, 0, %d1, 7

# CHECK-INST: orn.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0x07,0x11,0x20,0x0c]
orn.t %d0, %d1, 0, %d1, 24

# CHECK-INST: orn.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0x07,0x11,0xa0,0x0f]
orn.t %d0, %d1, 0, %d1, 31

# CHECK-INST: orn.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x20,0x00]
orn.t %d0, %d1, 0, %d14, 0

# CHECK-INST: orn.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xa0,0x03]
orn.t %d0, %d1, 0, %d14, 7

# CHECK-INST: orn.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x20,0x0c]
orn.t %d0, %d1, 0, %d14, 24

# CHECK-INST: orn.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xa0,0x0f]
orn.t %d0, %d1, 0, %d14, 31

# CHECK-INST: orn.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x20,0x00]
orn.t %d0, %d1, 0, %d15, 0

# CHECK-INST: orn.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xa0,0x03]
orn.t %d0, %d1, 0, %d15, 7

# CHECK-INST: orn.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x20,0x0c]
orn.t %d0, %d1, 0, %d15, 24

# CHECK-INST: orn.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xa0,0x0f]
orn.t %d0, %d1, 0, %d15, 31

# CHECK-INST: orn.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0x07,0x01,0x27,0x00]
orn.t %d0, %d1, 7, %d0, 0

# CHECK-INST: orn.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0x07,0x01,0xa7,0x03]
orn.t %d0, %d1, 7, %d0, 7

# CHECK-INST: orn.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0x07,0x01,0x27,0x0c]
orn.t %d0, %d1, 7, %d0, 24

# CHECK-INST: orn.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0x07,0x01,0xa7,0x0f]
orn.t %d0, %d1, 7, %d0, 31

# CHECK-INST: orn.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0x07,0x11,0x27,0x00]
orn.t %d0, %d1, 7, %d1, 0

# CHECK-INST: orn.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0x07,0x11,0xa7,0x03]
orn.t %d0, %d1, 7, %d1, 7

# CHECK-INST: orn.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0x07,0x11,0x27,0x0c]
orn.t %d0, %d1, 7, %d1, 24

# CHECK-INST: orn.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0x07,0x11,0xa7,0x0f]
orn.t %d0, %d1, 7, %d1, 31

# CHECK-INST: orn.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x27,0x00]
orn.t %d0, %d1, 7, %d14, 0

# CHECK-INST: orn.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xa7,0x03]
orn.t %d0, %d1, 7, %d14, 7

# CHECK-INST: orn.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x27,0x0c]
orn.t %d0, %d1, 7, %d14, 24

# CHECK-INST: orn.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xa7,0x0f]
orn.t %d0, %d1, 7, %d14, 31

# CHECK-INST: orn.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x27,0x00]
orn.t %d0, %d1, 7, %d15, 0

# CHECK-INST: orn.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xa7,0x03]
orn.t %d0, %d1, 7, %d15, 7

# CHECK-INST: orn.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x27,0x0c]
orn.t %d0, %d1, 7, %d15, 24

# CHECK-INST: orn.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xa7,0x0f]
orn.t %d0, %d1, 7, %d15, 31

# CHECK-INST: orn.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0x07,0x01,0x38,0x00]
orn.t %d0, %d1, 24, %d0, 0

# CHECK-INST: orn.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0x07,0x01,0xb8,0x03]
orn.t %d0, %d1, 24, %d0, 7

# CHECK-INST: orn.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0x07,0x01,0x38,0x0c]
orn.t %d0, %d1, 24, %d0, 24

# CHECK-INST: orn.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0x07,0x01,0xb8,0x0f]
orn.t %d0, %d1, 24, %d0, 31

# CHECK-INST: orn.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0x07,0x11,0x38,0x00]
orn.t %d0, %d1, 24, %d1, 0

# CHECK-INST: orn.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0x07,0x11,0xb8,0x03]
orn.t %d0, %d1, 24, %d1, 7

# CHECK-INST: orn.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0x07,0x11,0x38,0x0c]
orn.t %d0, %d1, 24, %d1, 24

# CHECK-INST: orn.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0x07,0x11,0xb8,0x0f]
orn.t %d0, %d1, 24, %d1, 31

# CHECK-INST: orn.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x38,0x00]
orn.t %d0, %d1, 24, %d14, 0

# CHECK-INST: orn.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xb8,0x03]
orn.t %d0, %d1, 24, %d14, 7

# CHECK-INST: orn.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x38,0x0c]
orn.t %d0, %d1, 24, %d14, 24

# CHECK-INST: orn.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xb8,0x0f]
orn.t %d0, %d1, 24, %d14, 31

# CHECK-INST: orn.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x38,0x00]
orn.t %d0, %d1, 24, %d15, 0

# CHECK-INST: orn.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xb8,0x03]
orn.t %d0, %d1, 24, %d15, 7

# CHECK-INST: orn.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x38,0x0c]
orn.t %d0, %d1, 24, %d15, 24

# CHECK-INST: orn.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xb8,0x0f]
orn.t %d0, %d1, 24, %d15, 31

# CHECK-INST: orn.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0x07,0x01,0x3f,0x00]
orn.t %d0, %d1, 31, %d0, 0

# CHECK-INST: orn.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0x07,0x01,0xbf,0x03]
orn.t %d0, %d1, 31, %d0, 7

# CHECK-INST: orn.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0x07,0x01,0x3f,0x0c]
orn.t %d0, %d1, 31, %d0, 24

# CHECK-INST: orn.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0x07,0x01,0xbf,0x0f]
orn.t %d0, %d1, 31, %d0, 31

# CHECK-INST: orn.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0x07,0x11,0x3f,0x00]
orn.t %d0, %d1, 31, %d1, 0

# CHECK-INST: orn.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0x07,0x11,0xbf,0x03]
orn.t %d0, %d1, 31, %d1, 7

# CHECK-INST: orn.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0x07,0x11,0x3f,0x0c]
orn.t %d0, %d1, 31, %d1, 24

# CHECK-INST: orn.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0x07,0x11,0xbf,0x0f]
orn.t %d0, %d1, 31, %d1, 31

# CHECK-INST: orn.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x3f,0x00]
orn.t %d0, %d1, 31, %d14, 0

# CHECK-INST: orn.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xbf,0x03]
orn.t %d0, %d1, 31, %d14, 7

# CHECK-INST: orn.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x3f,0x0c]
orn.t %d0, %d1, 31, %d14, 24

# CHECK-INST: orn.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xbf,0x0f]
orn.t %d0, %d1, 31, %d14, 31

# CHECK-INST: orn.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x3f,0x00]
orn.t %d0, %d1, 31, %d15, 0

# CHECK-INST: orn.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xbf,0x03]
orn.t %d0, %d1, 31, %d15, 7

# CHECK-INST: orn.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x3f,0x0c]
orn.t %d0, %d1, 31, %d15, 24

# CHECK-INST: orn.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xbf,0x0f]
orn.t %d0, %d1, 31, %d15, 31

# CHECK-INST: orn.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x20,0x00]
orn.t %d0, %d14, 0, %d0, 0

# CHECK-INST: orn.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xa0,0x03]
orn.t %d0, %d14, 0, %d0, 7

# CHECK-INST: orn.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x20,0x0c]
orn.t %d0, %d14, 0, %d0, 24

# CHECK-INST: orn.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xa0,0x0f]
orn.t %d0, %d14, 0, %d0, 31

# CHECK-INST: orn.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x20,0x00]
orn.t %d0, %d14, 0, %d1, 0

# CHECK-INST: orn.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xa0,0x03]
orn.t %d0, %d14, 0, %d1, 7

# CHECK-INST: orn.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x20,0x0c]
orn.t %d0, %d14, 0, %d1, 24

# CHECK-INST: orn.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xa0,0x0f]
orn.t %d0, %d14, 0, %d1, 31

# CHECK-INST: orn.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0x07,0xee,0x20,0x00]
orn.t %d0, %d14, 0, %d14, 0

# CHECK-INST: orn.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0x07,0xee,0xa0,0x03]
orn.t %d0, %d14, 0, %d14, 7

# CHECK-INST: orn.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0x07,0xee,0x20,0x0c]
orn.t %d0, %d14, 0, %d14, 24

# CHECK-INST: orn.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0x07,0xee,0xa0,0x0f]
orn.t %d0, %d14, 0, %d14, 31

# CHECK-INST: orn.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x20,0x00]
orn.t %d0, %d14, 0, %d15, 0

# CHECK-INST: orn.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xa0,0x03]
orn.t %d0, %d14, 0, %d15, 7

# CHECK-INST: orn.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x20,0x0c]
orn.t %d0, %d14, 0, %d15, 24

# CHECK-INST: orn.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xa0,0x0f]
orn.t %d0, %d14, 0, %d15, 31

# CHECK-INST: orn.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x27,0x00]
orn.t %d0, %d14, 7, %d0, 0

# CHECK-INST: orn.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xa7,0x03]
orn.t %d0, %d14, 7, %d0, 7

# CHECK-INST: orn.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x27,0x0c]
orn.t %d0, %d14, 7, %d0, 24

# CHECK-INST: orn.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xa7,0x0f]
orn.t %d0, %d14, 7, %d0, 31

# CHECK-INST: orn.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x27,0x00]
orn.t %d0, %d14, 7, %d1, 0

# CHECK-INST: orn.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xa7,0x03]
orn.t %d0, %d14, 7, %d1, 7

# CHECK-INST: orn.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x27,0x0c]
orn.t %d0, %d14, 7, %d1, 24

# CHECK-INST: orn.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xa7,0x0f]
orn.t %d0, %d14, 7, %d1, 31

# CHECK-INST: orn.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0x07,0xee,0x27,0x00]
orn.t %d0, %d14, 7, %d14, 0

# CHECK-INST: orn.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0x07,0xee,0xa7,0x03]
orn.t %d0, %d14, 7, %d14, 7

# CHECK-INST: orn.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0x07,0xee,0x27,0x0c]
orn.t %d0, %d14, 7, %d14, 24

# CHECK-INST: orn.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0x07,0xee,0xa7,0x0f]
orn.t %d0, %d14, 7, %d14, 31

# CHECK-INST: orn.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x27,0x00]
orn.t %d0, %d14, 7, %d15, 0

# CHECK-INST: orn.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xa7,0x03]
orn.t %d0, %d14, 7, %d15, 7

# CHECK-INST: orn.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x27,0x0c]
orn.t %d0, %d14, 7, %d15, 24

# CHECK-INST: orn.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xa7,0x0f]
orn.t %d0, %d14, 7, %d15, 31

# CHECK-INST: orn.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x38,0x00]
orn.t %d0, %d14, 24, %d0, 0

# CHECK-INST: orn.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xb8,0x03]
orn.t %d0, %d14, 24, %d0, 7

# CHECK-INST: orn.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x38,0x0c]
orn.t %d0, %d14, 24, %d0, 24

# CHECK-INST: orn.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xb8,0x0f]
orn.t %d0, %d14, 24, %d0, 31

# CHECK-INST: orn.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x38,0x00]
orn.t %d0, %d14, 24, %d1, 0

# CHECK-INST: orn.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xb8,0x03]
orn.t %d0, %d14, 24, %d1, 7

# CHECK-INST: orn.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x38,0x0c]
orn.t %d0, %d14, 24, %d1, 24

# CHECK-INST: orn.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xb8,0x0f]
orn.t %d0, %d14, 24, %d1, 31

# CHECK-INST: orn.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0x07,0xee,0x38,0x00]
orn.t %d0, %d14, 24, %d14, 0

# CHECK-INST: orn.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0x07,0xee,0xb8,0x03]
orn.t %d0, %d14, 24, %d14, 7

# CHECK-INST: orn.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0x07,0xee,0x38,0x0c]
orn.t %d0, %d14, 24, %d14, 24

# CHECK-INST: orn.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0x07,0xee,0xb8,0x0f]
orn.t %d0, %d14, 24, %d14, 31

# CHECK-INST: orn.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x38,0x00]
orn.t %d0, %d14, 24, %d15, 0

# CHECK-INST: orn.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xb8,0x03]
orn.t %d0, %d14, 24, %d15, 7

# CHECK-INST: orn.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x38,0x0c]
orn.t %d0, %d14, 24, %d15, 24

# CHECK-INST: orn.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xb8,0x0f]
orn.t %d0, %d14, 24, %d15, 31

# CHECK-INST: orn.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x3f,0x00]
orn.t %d0, %d14, 31, %d0, 0

# CHECK-INST: orn.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xbf,0x03]
orn.t %d0, %d14, 31, %d0, 7

# CHECK-INST: orn.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x3f,0x0c]
orn.t %d0, %d14, 31, %d0, 24

# CHECK-INST: orn.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xbf,0x0f]
orn.t %d0, %d14, 31, %d0, 31

# CHECK-INST: orn.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x3f,0x00]
orn.t %d0, %d14, 31, %d1, 0

# CHECK-INST: orn.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xbf,0x03]
orn.t %d0, %d14, 31, %d1, 7

# CHECK-INST: orn.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x3f,0x0c]
orn.t %d0, %d14, 31, %d1, 24

# CHECK-INST: orn.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xbf,0x0f]
orn.t %d0, %d14, 31, %d1, 31

# CHECK-INST: orn.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0x07,0xee,0x3f,0x00]
orn.t %d0, %d14, 31, %d14, 0

# CHECK-INST: orn.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0x07,0xee,0xbf,0x03]
orn.t %d0, %d14, 31, %d14, 7

# CHECK-INST: orn.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0x07,0xee,0x3f,0x0c]
orn.t %d0, %d14, 31, %d14, 24

# CHECK-INST: orn.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0x07,0xee,0xbf,0x0f]
orn.t %d0, %d14, 31, %d14, 31

# CHECK-INST: orn.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x3f,0x00]
orn.t %d0, %d14, 31, %d15, 0

# CHECK-INST: orn.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xbf,0x03]
orn.t %d0, %d14, 31, %d15, 7

# CHECK-INST: orn.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x3f,0x0c]
orn.t %d0, %d14, 31, %d15, 24

# CHECK-INST: orn.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xbf,0x0f]
orn.t %d0, %d14, 31, %d15, 31

# CHECK-INST: orn.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x20,0x00]
orn.t %d0, %d15, 0, %d0, 0

# CHECK-INST: orn.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xa0,0x03]
orn.t %d0, %d15, 0, %d0, 7

# CHECK-INST: orn.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x20,0x0c]
orn.t %d0, %d15, 0, %d0, 24

# CHECK-INST: orn.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xa0,0x0f]
orn.t %d0, %d15, 0, %d0, 31

# CHECK-INST: orn.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x20,0x00]
orn.t %d0, %d15, 0, %d1, 0

# CHECK-INST: orn.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xa0,0x03]
orn.t %d0, %d15, 0, %d1, 7

# CHECK-INST: orn.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x20,0x0c]
orn.t %d0, %d15, 0, %d1, 24

# CHECK-INST: orn.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xa0,0x0f]
orn.t %d0, %d15, 0, %d1, 31

# CHECK-INST: orn.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0x07,0xef,0x20,0x00]
orn.t %d0, %d15, 0, %d14, 0

# CHECK-INST: orn.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0x07,0xef,0xa0,0x03]
orn.t %d0, %d15, 0, %d14, 7

# CHECK-INST: orn.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0x07,0xef,0x20,0x0c]
orn.t %d0, %d15, 0, %d14, 24

# CHECK-INST: orn.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0x07,0xef,0xa0,0x0f]
orn.t %d0, %d15, 0, %d14, 31

# CHECK-INST: orn.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0x07,0xff,0x20,0x00]
orn.t %d0, %d15, 0, %d15, 0

# CHECK-INST: orn.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0x07,0xff,0xa0,0x03]
orn.t %d0, %d15, 0, %d15, 7

# CHECK-INST: orn.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0x07,0xff,0x20,0x0c]
orn.t %d0, %d15, 0, %d15, 24

# CHECK-INST: orn.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0x07,0xff,0xa0,0x0f]
orn.t %d0, %d15, 0, %d15, 31

# CHECK-INST: orn.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x27,0x00]
orn.t %d0, %d15, 7, %d0, 0

# CHECK-INST: orn.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xa7,0x03]
orn.t %d0, %d15, 7, %d0, 7

# CHECK-INST: orn.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x27,0x0c]
orn.t %d0, %d15, 7, %d0, 24

# CHECK-INST: orn.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xa7,0x0f]
orn.t %d0, %d15, 7, %d0, 31

# CHECK-INST: orn.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x27,0x00]
orn.t %d0, %d15, 7, %d1, 0

# CHECK-INST: orn.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xa7,0x03]
orn.t %d0, %d15, 7, %d1, 7

# CHECK-INST: orn.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x27,0x0c]
orn.t %d0, %d15, 7, %d1, 24

# CHECK-INST: orn.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xa7,0x0f]
orn.t %d0, %d15, 7, %d1, 31

# CHECK-INST: orn.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0x07,0xef,0x27,0x00]
orn.t %d0, %d15, 7, %d14, 0

# CHECK-INST: orn.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0x07,0xef,0xa7,0x03]
orn.t %d0, %d15, 7, %d14, 7

# CHECK-INST: orn.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0x07,0xef,0x27,0x0c]
orn.t %d0, %d15, 7, %d14, 24

# CHECK-INST: orn.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0x07,0xef,0xa7,0x0f]
orn.t %d0, %d15, 7, %d14, 31

# CHECK-INST: orn.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0x07,0xff,0x27,0x00]
orn.t %d0, %d15, 7, %d15, 0

# CHECK-INST: orn.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0x07,0xff,0xa7,0x03]
orn.t %d0, %d15, 7, %d15, 7

# CHECK-INST: orn.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0x07,0xff,0x27,0x0c]
orn.t %d0, %d15, 7, %d15, 24

# CHECK-INST: orn.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0x07,0xff,0xa7,0x0f]
orn.t %d0, %d15, 7, %d15, 31

# CHECK-INST: orn.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x38,0x00]
orn.t %d0, %d15, 24, %d0, 0

# CHECK-INST: orn.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xb8,0x03]
orn.t %d0, %d15, 24, %d0, 7

# CHECK-INST: orn.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x38,0x0c]
orn.t %d0, %d15, 24, %d0, 24

# CHECK-INST: orn.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xb8,0x0f]
orn.t %d0, %d15, 24, %d0, 31

# CHECK-INST: orn.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x38,0x00]
orn.t %d0, %d15, 24, %d1, 0

# CHECK-INST: orn.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xb8,0x03]
orn.t %d0, %d15, 24, %d1, 7

# CHECK-INST: orn.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x38,0x0c]
orn.t %d0, %d15, 24, %d1, 24

# CHECK-INST: orn.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xb8,0x0f]
orn.t %d0, %d15, 24, %d1, 31

# CHECK-INST: orn.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0x07,0xef,0x38,0x00]
orn.t %d0, %d15, 24, %d14, 0

# CHECK-INST: orn.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0x07,0xef,0xb8,0x03]
orn.t %d0, %d15, 24, %d14, 7

# CHECK-INST: orn.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0x07,0xef,0x38,0x0c]
orn.t %d0, %d15, 24, %d14, 24

# CHECK-INST: orn.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0x07,0xef,0xb8,0x0f]
orn.t %d0, %d15, 24, %d14, 31

# CHECK-INST: orn.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0x07,0xff,0x38,0x00]
orn.t %d0, %d15, 24, %d15, 0

# CHECK-INST: orn.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0x07,0xff,0xb8,0x03]
orn.t %d0, %d15, 24, %d15, 7

# CHECK-INST: orn.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0x07,0xff,0x38,0x0c]
orn.t %d0, %d15, 24, %d15, 24

# CHECK-INST: orn.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0x07,0xff,0xb8,0x0f]
orn.t %d0, %d15, 24, %d15, 31

# CHECK-INST: orn.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x3f,0x00]
orn.t %d0, %d15, 31, %d0, 0

# CHECK-INST: orn.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xbf,0x03]
orn.t %d0, %d15, 31, %d0, 7

# CHECK-INST: orn.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x3f,0x0c]
orn.t %d0, %d15, 31, %d0, 24

# CHECK-INST: orn.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xbf,0x0f]
orn.t %d0, %d15, 31, %d0, 31

# CHECK-INST: orn.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x3f,0x00]
orn.t %d0, %d15, 31, %d1, 0

# CHECK-INST: orn.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xbf,0x03]
orn.t %d0, %d15, 31, %d1, 7

# CHECK-INST: orn.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x3f,0x0c]
orn.t %d0, %d15, 31, %d1, 24

# CHECK-INST: orn.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xbf,0x0f]
orn.t %d0, %d15, 31, %d1, 31

# CHECK-INST: orn.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0x07,0xef,0x3f,0x00]
orn.t %d0, %d15, 31, %d14, 0

# CHECK-INST: orn.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0x07,0xef,0xbf,0x03]
orn.t %d0, %d15, 31, %d14, 7

# CHECK-INST: orn.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0x07,0xef,0x3f,0x0c]
orn.t %d0, %d15, 31, %d14, 24

# CHECK-INST: orn.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0x07,0xef,0xbf,0x0f]
orn.t %d0, %d15, 31, %d14, 31

# CHECK-INST: orn.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0x07,0xff,0x3f,0x00]
orn.t %d0, %d15, 31, %d15, 0

# CHECK-INST: orn.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0x07,0xff,0xbf,0x03]
orn.t %d0, %d15, 31, %d15, 7

# CHECK-INST: orn.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0x07,0xff,0x3f,0x0c]
orn.t %d0, %d15, 31, %d15, 24

# CHECK-INST: orn.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0x07,0xff,0xbf,0x0f]
orn.t %d0, %d15, 31, %d15, 31

# CHECK-INST: orn.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x20,0x10]
orn.t %d1, %d0, 0, %d0, 0

# CHECK-INST: orn.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0x07,0x00,0xa0,0x13]
orn.t %d1, %d0, 0, %d0, 7

# CHECK-INST: orn.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0x07,0x00,0x20,0x1c]
orn.t %d1, %d0, 0, %d0, 24

# CHECK-INST: orn.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0x07,0x00,0xa0,0x1f]
orn.t %d1, %d0, 0, %d0, 31

# CHECK-INST: orn.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0x07,0x10,0x20,0x10]
orn.t %d1, %d0, 0, %d1, 0

# CHECK-INST: orn.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0x07,0x10,0xa0,0x13]
orn.t %d1, %d0, 0, %d1, 7

# CHECK-INST: orn.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0x07,0x10,0x20,0x1c]
orn.t %d1, %d0, 0, %d1, 24

# CHECK-INST: orn.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0x07,0x10,0xa0,0x1f]
orn.t %d1, %d0, 0, %d1, 31

# CHECK-INST: orn.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x20,0x10]
orn.t %d1, %d0, 0, %d14, 0

# CHECK-INST: orn.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xa0,0x13]
orn.t %d1, %d0, 0, %d14, 7

# CHECK-INST: orn.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x20,0x1c]
orn.t %d1, %d0, 0, %d14, 24

# CHECK-INST: orn.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xa0,0x1f]
orn.t %d1, %d0, 0, %d14, 31

# CHECK-INST: orn.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x20,0x10]
orn.t %d1, %d0, 0, %d15, 0

# CHECK-INST: orn.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xa0,0x13]
orn.t %d1, %d0, 0, %d15, 7

# CHECK-INST: orn.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x20,0x1c]
orn.t %d1, %d0, 0, %d15, 24

# CHECK-INST: orn.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xa0,0x1f]
orn.t %d1, %d0, 0, %d15, 31

# CHECK-INST: orn.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0x07,0x00,0x27,0x10]
orn.t %d1, %d0, 7, %d0, 0

# CHECK-INST: orn.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0x07,0x00,0xa7,0x13]
orn.t %d1, %d0, 7, %d0, 7

# CHECK-INST: orn.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0x07,0x00,0x27,0x1c]
orn.t %d1, %d0, 7, %d0, 24

# CHECK-INST: orn.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0x07,0x00,0xa7,0x1f]
orn.t %d1, %d0, 7, %d0, 31

# CHECK-INST: orn.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0x07,0x10,0x27,0x10]
orn.t %d1, %d0, 7, %d1, 0

# CHECK-INST: orn.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0x07,0x10,0xa7,0x13]
orn.t %d1, %d0, 7, %d1, 7

# CHECK-INST: orn.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0x07,0x10,0x27,0x1c]
orn.t %d1, %d0, 7, %d1, 24

# CHECK-INST: orn.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0x07,0x10,0xa7,0x1f]
orn.t %d1, %d0, 7, %d1, 31

# CHECK-INST: orn.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x27,0x10]
orn.t %d1, %d0, 7, %d14, 0

# CHECK-INST: orn.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xa7,0x13]
orn.t %d1, %d0, 7, %d14, 7

# CHECK-INST: orn.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x27,0x1c]
orn.t %d1, %d0, 7, %d14, 24

# CHECK-INST: orn.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xa7,0x1f]
orn.t %d1, %d0, 7, %d14, 31

# CHECK-INST: orn.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x27,0x10]
orn.t %d1, %d0, 7, %d15, 0

# CHECK-INST: orn.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xa7,0x13]
orn.t %d1, %d0, 7, %d15, 7

# CHECK-INST: orn.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x27,0x1c]
orn.t %d1, %d0, 7, %d15, 24

# CHECK-INST: orn.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xa7,0x1f]
orn.t %d1, %d0, 7, %d15, 31

# CHECK-INST: orn.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0x07,0x00,0x38,0x10]
orn.t %d1, %d0, 24, %d0, 0

# CHECK-INST: orn.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0x07,0x00,0xb8,0x13]
orn.t %d1, %d0, 24, %d0, 7

# CHECK-INST: orn.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0x07,0x00,0x38,0x1c]
orn.t %d1, %d0, 24, %d0, 24

# CHECK-INST: orn.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0x07,0x00,0xb8,0x1f]
orn.t %d1, %d0, 24, %d0, 31

# CHECK-INST: orn.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0x07,0x10,0x38,0x10]
orn.t %d1, %d0, 24, %d1, 0

# CHECK-INST: orn.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0x07,0x10,0xb8,0x13]
orn.t %d1, %d0, 24, %d1, 7

# CHECK-INST: orn.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0x07,0x10,0x38,0x1c]
orn.t %d1, %d0, 24, %d1, 24

# CHECK-INST: orn.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0x07,0x10,0xb8,0x1f]
orn.t %d1, %d0, 24, %d1, 31

# CHECK-INST: orn.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x38,0x10]
orn.t %d1, %d0, 24, %d14, 0

# CHECK-INST: orn.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xb8,0x13]
orn.t %d1, %d0, 24, %d14, 7

# CHECK-INST: orn.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x38,0x1c]
orn.t %d1, %d0, 24, %d14, 24

# CHECK-INST: orn.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xb8,0x1f]
orn.t %d1, %d0, 24, %d14, 31

# CHECK-INST: orn.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x38,0x10]
orn.t %d1, %d0, 24, %d15, 0

# CHECK-INST: orn.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xb8,0x13]
orn.t %d1, %d0, 24, %d15, 7

# CHECK-INST: orn.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x38,0x1c]
orn.t %d1, %d0, 24, %d15, 24

# CHECK-INST: orn.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xb8,0x1f]
orn.t %d1, %d0, 24, %d15, 31

# CHECK-INST: orn.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0x07,0x00,0x3f,0x10]
orn.t %d1, %d0, 31, %d0, 0

# CHECK-INST: orn.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0x07,0x00,0xbf,0x13]
orn.t %d1, %d0, 31, %d0, 7

# CHECK-INST: orn.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0x07,0x00,0x3f,0x1c]
orn.t %d1, %d0, 31, %d0, 24

# CHECK-INST: orn.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0x07,0x00,0xbf,0x1f]
orn.t %d1, %d0, 31, %d0, 31

# CHECK-INST: orn.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0x07,0x10,0x3f,0x10]
orn.t %d1, %d0, 31, %d1, 0

# CHECK-INST: orn.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0x07,0x10,0xbf,0x13]
orn.t %d1, %d0, 31, %d1, 7

# CHECK-INST: orn.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0x07,0x10,0x3f,0x1c]
orn.t %d1, %d0, 31, %d1, 24

# CHECK-INST: orn.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0x07,0x10,0xbf,0x1f]
orn.t %d1, %d0, 31, %d1, 31

# CHECK-INST: orn.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x3f,0x10]
orn.t %d1, %d0, 31, %d14, 0

# CHECK-INST: orn.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xbf,0x13]
orn.t %d1, %d0, 31, %d14, 7

# CHECK-INST: orn.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x3f,0x1c]
orn.t %d1, %d0, 31, %d14, 24

# CHECK-INST: orn.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xbf,0x1f]
orn.t %d1, %d0, 31, %d14, 31

# CHECK-INST: orn.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x3f,0x10]
orn.t %d1, %d0, 31, %d15, 0

# CHECK-INST: orn.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xbf,0x13]
orn.t %d1, %d0, 31, %d15, 7

# CHECK-INST: orn.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x3f,0x1c]
orn.t %d1, %d0, 31, %d15, 24

# CHECK-INST: orn.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xbf,0x1f]
orn.t %d1, %d0, 31, %d15, 31

# CHECK-INST: orn.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0x07,0x01,0x20,0x10]
orn.t %d1, %d1, 0, %d0, 0

# CHECK-INST: orn.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0x07,0x01,0xa0,0x13]
orn.t %d1, %d1, 0, %d0, 7

# CHECK-INST: orn.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0x07,0x01,0x20,0x1c]
orn.t %d1, %d1, 0, %d0, 24

# CHECK-INST: orn.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0x07,0x01,0xa0,0x1f]
orn.t %d1, %d1, 0, %d0, 31

# CHECK-INST: orn.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0x07,0x11,0x20,0x10]
orn.t %d1, %d1, 0, %d1, 0

# CHECK-INST: orn.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0x07,0x11,0xa0,0x13]
orn.t %d1, %d1, 0, %d1, 7

# CHECK-INST: orn.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0x07,0x11,0x20,0x1c]
orn.t %d1, %d1, 0, %d1, 24

# CHECK-INST: orn.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0x07,0x11,0xa0,0x1f]
orn.t %d1, %d1, 0, %d1, 31

# CHECK-INST: orn.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x20,0x10]
orn.t %d1, %d1, 0, %d14, 0

# CHECK-INST: orn.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xa0,0x13]
orn.t %d1, %d1, 0, %d14, 7

# CHECK-INST: orn.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x20,0x1c]
orn.t %d1, %d1, 0, %d14, 24

# CHECK-INST: orn.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xa0,0x1f]
orn.t %d1, %d1, 0, %d14, 31

# CHECK-INST: orn.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x20,0x10]
orn.t %d1, %d1, 0, %d15, 0

# CHECK-INST: orn.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xa0,0x13]
orn.t %d1, %d1, 0, %d15, 7

# CHECK-INST: orn.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x20,0x1c]
orn.t %d1, %d1, 0, %d15, 24

# CHECK-INST: orn.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xa0,0x1f]
orn.t %d1, %d1, 0, %d15, 31

# CHECK-INST: orn.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0x07,0x01,0x27,0x10]
orn.t %d1, %d1, 7, %d0, 0

# CHECK-INST: orn.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0x07,0x01,0xa7,0x13]
orn.t %d1, %d1, 7, %d0, 7

# CHECK-INST: orn.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0x07,0x01,0x27,0x1c]
orn.t %d1, %d1, 7, %d0, 24

# CHECK-INST: orn.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0x07,0x01,0xa7,0x1f]
orn.t %d1, %d1, 7, %d0, 31

# CHECK-INST: orn.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0x07,0x11,0x27,0x10]
orn.t %d1, %d1, 7, %d1, 0

# CHECK-INST: orn.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0x07,0x11,0xa7,0x13]
orn.t %d1, %d1, 7, %d1, 7

# CHECK-INST: orn.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0x07,0x11,0x27,0x1c]
orn.t %d1, %d1, 7, %d1, 24

# CHECK-INST: orn.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0x07,0x11,0xa7,0x1f]
orn.t %d1, %d1, 7, %d1, 31

# CHECK-INST: orn.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x27,0x10]
orn.t %d1, %d1, 7, %d14, 0

# CHECK-INST: orn.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xa7,0x13]
orn.t %d1, %d1, 7, %d14, 7

# CHECK-INST: orn.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x27,0x1c]
orn.t %d1, %d1, 7, %d14, 24

# CHECK-INST: orn.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xa7,0x1f]
orn.t %d1, %d1, 7, %d14, 31

# CHECK-INST: orn.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x27,0x10]
orn.t %d1, %d1, 7, %d15, 0

# CHECK-INST: orn.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xa7,0x13]
orn.t %d1, %d1, 7, %d15, 7

# CHECK-INST: orn.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x27,0x1c]
orn.t %d1, %d1, 7, %d15, 24

# CHECK-INST: orn.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xa7,0x1f]
orn.t %d1, %d1, 7, %d15, 31

# CHECK-INST: orn.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0x07,0x01,0x38,0x10]
orn.t %d1, %d1, 24, %d0, 0

# CHECK-INST: orn.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0x07,0x01,0xb8,0x13]
orn.t %d1, %d1, 24, %d0, 7

# CHECK-INST: orn.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0x07,0x01,0x38,0x1c]
orn.t %d1, %d1, 24, %d0, 24

# CHECK-INST: orn.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0x07,0x01,0xb8,0x1f]
orn.t %d1, %d1, 24, %d0, 31

# CHECK-INST: orn.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0x07,0x11,0x38,0x10]
orn.t %d1, %d1, 24, %d1, 0

# CHECK-INST: orn.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0x07,0x11,0xb8,0x13]
orn.t %d1, %d1, 24, %d1, 7

# CHECK-INST: orn.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0x07,0x11,0x38,0x1c]
orn.t %d1, %d1, 24, %d1, 24

# CHECK-INST: orn.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0x07,0x11,0xb8,0x1f]
orn.t %d1, %d1, 24, %d1, 31

# CHECK-INST: orn.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x38,0x10]
orn.t %d1, %d1, 24, %d14, 0

# CHECK-INST: orn.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xb8,0x13]
orn.t %d1, %d1, 24, %d14, 7

# CHECK-INST: orn.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x38,0x1c]
orn.t %d1, %d1, 24, %d14, 24

# CHECK-INST: orn.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xb8,0x1f]
orn.t %d1, %d1, 24, %d14, 31

# CHECK-INST: orn.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x38,0x10]
orn.t %d1, %d1, 24, %d15, 0

# CHECK-INST: orn.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xb8,0x13]
orn.t %d1, %d1, 24, %d15, 7

# CHECK-INST: orn.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x38,0x1c]
orn.t %d1, %d1, 24, %d15, 24

# CHECK-INST: orn.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xb8,0x1f]
orn.t %d1, %d1, 24, %d15, 31

# CHECK-INST: orn.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0x07,0x01,0x3f,0x10]
orn.t %d1, %d1, 31, %d0, 0

# CHECK-INST: orn.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0x07,0x01,0xbf,0x13]
orn.t %d1, %d1, 31, %d0, 7

# CHECK-INST: orn.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0x07,0x01,0x3f,0x1c]
orn.t %d1, %d1, 31, %d0, 24

# CHECK-INST: orn.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0x07,0x01,0xbf,0x1f]
orn.t %d1, %d1, 31, %d0, 31

# CHECK-INST: orn.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0x07,0x11,0x3f,0x10]
orn.t %d1, %d1, 31, %d1, 0

# CHECK-INST: orn.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0x07,0x11,0xbf,0x13]
orn.t %d1, %d1, 31, %d1, 7

# CHECK-INST: orn.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0x07,0x11,0x3f,0x1c]
orn.t %d1, %d1, 31, %d1, 24

# CHECK-INST: orn.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0x07,0x11,0xbf,0x1f]
orn.t %d1, %d1, 31, %d1, 31

# CHECK-INST: orn.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x3f,0x10]
orn.t %d1, %d1, 31, %d14, 0

# CHECK-INST: orn.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xbf,0x13]
orn.t %d1, %d1, 31, %d14, 7

# CHECK-INST: orn.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x3f,0x1c]
orn.t %d1, %d1, 31, %d14, 24

# CHECK-INST: orn.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xbf,0x1f]
orn.t %d1, %d1, 31, %d14, 31

# CHECK-INST: orn.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x3f,0x10]
orn.t %d1, %d1, 31, %d15, 0

# CHECK-INST: orn.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xbf,0x13]
orn.t %d1, %d1, 31, %d15, 7

# CHECK-INST: orn.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x3f,0x1c]
orn.t %d1, %d1, 31, %d15, 24

# CHECK-INST: orn.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xbf,0x1f]
orn.t %d1, %d1, 31, %d15, 31

# CHECK-INST: orn.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x20,0x10]
orn.t %d1, %d14, 0, %d0, 0

# CHECK-INST: orn.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xa0,0x13]
orn.t %d1, %d14, 0, %d0, 7

# CHECK-INST: orn.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x20,0x1c]
orn.t %d1, %d14, 0, %d0, 24

# CHECK-INST: orn.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xa0,0x1f]
orn.t %d1, %d14, 0, %d0, 31

# CHECK-INST: orn.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x20,0x10]
orn.t %d1, %d14, 0, %d1, 0

# CHECK-INST: orn.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xa0,0x13]
orn.t %d1, %d14, 0, %d1, 7

# CHECK-INST: orn.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x20,0x1c]
orn.t %d1, %d14, 0, %d1, 24

# CHECK-INST: orn.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xa0,0x1f]
orn.t %d1, %d14, 0, %d1, 31

# CHECK-INST: orn.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0x07,0xee,0x20,0x10]
orn.t %d1, %d14, 0, %d14, 0

# CHECK-INST: orn.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0x07,0xee,0xa0,0x13]
orn.t %d1, %d14, 0, %d14, 7

# CHECK-INST: orn.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0x07,0xee,0x20,0x1c]
orn.t %d1, %d14, 0, %d14, 24

# CHECK-INST: orn.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0x07,0xee,0xa0,0x1f]
orn.t %d1, %d14, 0, %d14, 31

# CHECK-INST: orn.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x20,0x10]
orn.t %d1, %d14, 0, %d15, 0

# CHECK-INST: orn.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xa0,0x13]
orn.t %d1, %d14, 0, %d15, 7

# CHECK-INST: orn.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x20,0x1c]
orn.t %d1, %d14, 0, %d15, 24

# CHECK-INST: orn.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xa0,0x1f]
orn.t %d1, %d14, 0, %d15, 31

# CHECK-INST: orn.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x27,0x10]
orn.t %d1, %d14, 7, %d0, 0

# CHECK-INST: orn.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xa7,0x13]
orn.t %d1, %d14, 7, %d0, 7

# CHECK-INST: orn.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x27,0x1c]
orn.t %d1, %d14, 7, %d0, 24

# CHECK-INST: orn.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xa7,0x1f]
orn.t %d1, %d14, 7, %d0, 31

# CHECK-INST: orn.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x27,0x10]
orn.t %d1, %d14, 7, %d1, 0

# CHECK-INST: orn.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xa7,0x13]
orn.t %d1, %d14, 7, %d1, 7

# CHECK-INST: orn.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x27,0x1c]
orn.t %d1, %d14, 7, %d1, 24

# CHECK-INST: orn.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xa7,0x1f]
orn.t %d1, %d14, 7, %d1, 31

# CHECK-INST: orn.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0x07,0xee,0x27,0x10]
orn.t %d1, %d14, 7, %d14, 0

# CHECK-INST: orn.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0x07,0xee,0xa7,0x13]
orn.t %d1, %d14, 7, %d14, 7

# CHECK-INST: orn.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0x07,0xee,0x27,0x1c]
orn.t %d1, %d14, 7, %d14, 24

# CHECK-INST: orn.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0x07,0xee,0xa7,0x1f]
orn.t %d1, %d14, 7, %d14, 31

# CHECK-INST: orn.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x27,0x10]
orn.t %d1, %d14, 7, %d15, 0

# CHECK-INST: orn.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xa7,0x13]
orn.t %d1, %d14, 7, %d15, 7

# CHECK-INST: orn.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x27,0x1c]
orn.t %d1, %d14, 7, %d15, 24

# CHECK-INST: orn.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xa7,0x1f]
orn.t %d1, %d14, 7, %d15, 31

# CHECK-INST: orn.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x38,0x10]
orn.t %d1, %d14, 24, %d0, 0

# CHECK-INST: orn.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xb8,0x13]
orn.t %d1, %d14, 24, %d0, 7

# CHECK-INST: orn.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x38,0x1c]
orn.t %d1, %d14, 24, %d0, 24

# CHECK-INST: orn.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xb8,0x1f]
orn.t %d1, %d14, 24, %d0, 31

# CHECK-INST: orn.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x38,0x10]
orn.t %d1, %d14, 24, %d1, 0

# CHECK-INST: orn.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xb8,0x13]
orn.t %d1, %d14, 24, %d1, 7

# CHECK-INST: orn.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x38,0x1c]
orn.t %d1, %d14, 24, %d1, 24

# CHECK-INST: orn.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xb8,0x1f]
orn.t %d1, %d14, 24, %d1, 31

# CHECK-INST: orn.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0x07,0xee,0x38,0x10]
orn.t %d1, %d14, 24, %d14, 0

# CHECK-INST: orn.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0x07,0xee,0xb8,0x13]
orn.t %d1, %d14, 24, %d14, 7

# CHECK-INST: orn.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0x07,0xee,0x38,0x1c]
orn.t %d1, %d14, 24, %d14, 24

# CHECK-INST: orn.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0x07,0xee,0xb8,0x1f]
orn.t %d1, %d14, 24, %d14, 31

# CHECK-INST: orn.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x38,0x10]
orn.t %d1, %d14, 24, %d15, 0

# CHECK-INST: orn.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xb8,0x13]
orn.t %d1, %d14, 24, %d15, 7

# CHECK-INST: orn.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x38,0x1c]
orn.t %d1, %d14, 24, %d15, 24

# CHECK-INST: orn.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xb8,0x1f]
orn.t %d1, %d14, 24, %d15, 31

# CHECK-INST: orn.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x3f,0x10]
orn.t %d1, %d14, 31, %d0, 0

# CHECK-INST: orn.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xbf,0x13]
orn.t %d1, %d14, 31, %d0, 7

# CHECK-INST: orn.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x3f,0x1c]
orn.t %d1, %d14, 31, %d0, 24

# CHECK-INST: orn.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xbf,0x1f]
orn.t %d1, %d14, 31, %d0, 31

# CHECK-INST: orn.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x3f,0x10]
orn.t %d1, %d14, 31, %d1, 0

# CHECK-INST: orn.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xbf,0x13]
orn.t %d1, %d14, 31, %d1, 7

# CHECK-INST: orn.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x3f,0x1c]
orn.t %d1, %d14, 31, %d1, 24

# CHECK-INST: orn.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xbf,0x1f]
orn.t %d1, %d14, 31, %d1, 31

# CHECK-INST: orn.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0x07,0xee,0x3f,0x10]
orn.t %d1, %d14, 31, %d14, 0

# CHECK-INST: orn.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0x07,0xee,0xbf,0x13]
orn.t %d1, %d14, 31, %d14, 7

# CHECK-INST: orn.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0x07,0xee,0x3f,0x1c]
orn.t %d1, %d14, 31, %d14, 24

# CHECK-INST: orn.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0x07,0xee,0xbf,0x1f]
orn.t %d1, %d14, 31, %d14, 31

# CHECK-INST: orn.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x3f,0x10]
orn.t %d1, %d14, 31, %d15, 0

# CHECK-INST: orn.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xbf,0x13]
orn.t %d1, %d14, 31, %d15, 7

# CHECK-INST: orn.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x3f,0x1c]
orn.t %d1, %d14, 31, %d15, 24

# CHECK-INST: orn.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xbf,0x1f]
orn.t %d1, %d14, 31, %d15, 31

# CHECK-INST: orn.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x20,0x10]
orn.t %d1, %d15, 0, %d0, 0

# CHECK-INST: orn.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xa0,0x13]
orn.t %d1, %d15, 0, %d0, 7

# CHECK-INST: orn.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x20,0x1c]
orn.t %d1, %d15, 0, %d0, 24

# CHECK-INST: orn.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xa0,0x1f]
orn.t %d1, %d15, 0, %d0, 31

# CHECK-INST: orn.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x20,0x10]
orn.t %d1, %d15, 0, %d1, 0

# CHECK-INST: orn.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xa0,0x13]
orn.t %d1, %d15, 0, %d1, 7

# CHECK-INST: orn.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x20,0x1c]
orn.t %d1, %d15, 0, %d1, 24

# CHECK-INST: orn.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xa0,0x1f]
orn.t %d1, %d15, 0, %d1, 31

# CHECK-INST: orn.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0x07,0xef,0x20,0x10]
orn.t %d1, %d15, 0, %d14, 0

# CHECK-INST: orn.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0x07,0xef,0xa0,0x13]
orn.t %d1, %d15, 0, %d14, 7

# CHECK-INST: orn.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0x07,0xef,0x20,0x1c]
orn.t %d1, %d15, 0, %d14, 24

# CHECK-INST: orn.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0x07,0xef,0xa0,0x1f]
orn.t %d1, %d15, 0, %d14, 31

# CHECK-INST: orn.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0x07,0xff,0x20,0x10]
orn.t %d1, %d15, 0, %d15, 0

# CHECK-INST: orn.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0x07,0xff,0xa0,0x13]
orn.t %d1, %d15, 0, %d15, 7

# CHECK-INST: orn.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0x07,0xff,0x20,0x1c]
orn.t %d1, %d15, 0, %d15, 24

# CHECK-INST: orn.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0x07,0xff,0xa0,0x1f]
orn.t %d1, %d15, 0, %d15, 31

# CHECK-INST: orn.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x27,0x10]
orn.t %d1, %d15, 7, %d0, 0

# CHECK-INST: orn.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xa7,0x13]
orn.t %d1, %d15, 7, %d0, 7

# CHECK-INST: orn.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x27,0x1c]
orn.t %d1, %d15, 7, %d0, 24

# CHECK-INST: orn.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xa7,0x1f]
orn.t %d1, %d15, 7, %d0, 31

# CHECK-INST: orn.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x27,0x10]
orn.t %d1, %d15, 7, %d1, 0

# CHECK-INST: orn.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xa7,0x13]
orn.t %d1, %d15, 7, %d1, 7

# CHECK-INST: orn.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x27,0x1c]
orn.t %d1, %d15, 7, %d1, 24

# CHECK-INST: orn.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xa7,0x1f]
orn.t %d1, %d15, 7, %d1, 31

# CHECK-INST: orn.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0x07,0xef,0x27,0x10]
orn.t %d1, %d15, 7, %d14, 0

# CHECK-INST: orn.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0x07,0xef,0xa7,0x13]
orn.t %d1, %d15, 7, %d14, 7

# CHECK-INST: orn.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0x07,0xef,0x27,0x1c]
orn.t %d1, %d15, 7, %d14, 24

# CHECK-INST: orn.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0x07,0xef,0xa7,0x1f]
orn.t %d1, %d15, 7, %d14, 31

# CHECK-INST: orn.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0x07,0xff,0x27,0x10]
orn.t %d1, %d15, 7, %d15, 0

# CHECK-INST: orn.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0x07,0xff,0xa7,0x13]
orn.t %d1, %d15, 7, %d15, 7

# CHECK-INST: orn.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0x07,0xff,0x27,0x1c]
orn.t %d1, %d15, 7, %d15, 24

# CHECK-INST: orn.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0x07,0xff,0xa7,0x1f]
orn.t %d1, %d15, 7, %d15, 31

# CHECK-INST: orn.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x38,0x10]
orn.t %d1, %d15, 24, %d0, 0

# CHECK-INST: orn.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xb8,0x13]
orn.t %d1, %d15, 24, %d0, 7

# CHECK-INST: orn.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x38,0x1c]
orn.t %d1, %d15, 24, %d0, 24

# CHECK-INST: orn.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xb8,0x1f]
orn.t %d1, %d15, 24, %d0, 31

# CHECK-INST: orn.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x38,0x10]
orn.t %d1, %d15, 24, %d1, 0

# CHECK-INST: orn.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xb8,0x13]
orn.t %d1, %d15, 24, %d1, 7

# CHECK-INST: orn.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x38,0x1c]
orn.t %d1, %d15, 24, %d1, 24

# CHECK-INST: orn.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xb8,0x1f]
orn.t %d1, %d15, 24, %d1, 31

# CHECK-INST: orn.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0x07,0xef,0x38,0x10]
orn.t %d1, %d15, 24, %d14, 0

# CHECK-INST: orn.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0x07,0xef,0xb8,0x13]
orn.t %d1, %d15, 24, %d14, 7

# CHECK-INST: orn.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0x07,0xef,0x38,0x1c]
orn.t %d1, %d15, 24, %d14, 24

# CHECK-INST: orn.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0x07,0xef,0xb8,0x1f]
orn.t %d1, %d15, 24, %d14, 31

# CHECK-INST: orn.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0x07,0xff,0x38,0x10]
orn.t %d1, %d15, 24, %d15, 0

# CHECK-INST: orn.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0x07,0xff,0xb8,0x13]
orn.t %d1, %d15, 24, %d15, 7

# CHECK-INST: orn.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0x07,0xff,0x38,0x1c]
orn.t %d1, %d15, 24, %d15, 24

# CHECK-INST: orn.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0x07,0xff,0xb8,0x1f]
orn.t %d1, %d15, 24, %d15, 31

# CHECK-INST: orn.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x3f,0x10]
orn.t %d1, %d15, 31, %d0, 0

# CHECK-INST: orn.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xbf,0x13]
orn.t %d1, %d15, 31, %d0, 7

# CHECK-INST: orn.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x3f,0x1c]
orn.t %d1, %d15, 31, %d0, 24

# CHECK-INST: orn.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xbf,0x1f]
orn.t %d1, %d15, 31, %d0, 31

# CHECK-INST: orn.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x3f,0x10]
orn.t %d1, %d15, 31, %d1, 0

# CHECK-INST: orn.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xbf,0x13]
orn.t %d1, %d15, 31, %d1, 7

# CHECK-INST: orn.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x3f,0x1c]
orn.t %d1, %d15, 31, %d1, 24

# CHECK-INST: orn.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xbf,0x1f]
orn.t %d1, %d15, 31, %d1, 31

# CHECK-INST: orn.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0x07,0xef,0x3f,0x10]
orn.t %d1, %d15, 31, %d14, 0

# CHECK-INST: orn.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0x07,0xef,0xbf,0x13]
orn.t %d1, %d15, 31, %d14, 7

# CHECK-INST: orn.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0x07,0xef,0x3f,0x1c]
orn.t %d1, %d15, 31, %d14, 24

# CHECK-INST: orn.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0x07,0xef,0xbf,0x1f]
orn.t %d1, %d15, 31, %d14, 31

# CHECK-INST: orn.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0x07,0xff,0x3f,0x10]
orn.t %d1, %d15, 31, %d15, 0

# CHECK-INST: orn.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0x07,0xff,0xbf,0x13]
orn.t %d1, %d15, 31, %d15, 7

# CHECK-INST: orn.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0x07,0xff,0x3f,0x1c]
orn.t %d1, %d15, 31, %d15, 24

# CHECK-INST: orn.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0x07,0xff,0xbf,0x1f]
orn.t %d1, %d15, 31, %d15, 31

# CHECK-INST: orn.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x20,0xe0]
orn.t %d14, %d0, 0, %d0, 0

# CHECK-INST: orn.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0x07,0x00,0xa0,0xe3]
orn.t %d14, %d0, 0, %d0, 7

# CHECK-INST: orn.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0x07,0x00,0x20,0xec]
orn.t %d14, %d0, 0, %d0, 24

# CHECK-INST: orn.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0x07,0x00,0xa0,0xef]
orn.t %d14, %d0, 0, %d0, 31

# CHECK-INST: orn.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0x07,0x10,0x20,0xe0]
orn.t %d14, %d0, 0, %d1, 0

# CHECK-INST: orn.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0x07,0x10,0xa0,0xe3]
orn.t %d14, %d0, 0, %d1, 7

# CHECK-INST: orn.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0x07,0x10,0x20,0xec]
orn.t %d14, %d0, 0, %d1, 24

# CHECK-INST: orn.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0x07,0x10,0xa0,0xef]
orn.t %d14, %d0, 0, %d1, 31

# CHECK-INST: orn.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x20,0xe0]
orn.t %d14, %d0, 0, %d14, 0

# CHECK-INST: orn.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xa0,0xe3]
orn.t %d14, %d0, 0, %d14, 7

# CHECK-INST: orn.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x20,0xec]
orn.t %d14, %d0, 0, %d14, 24

# CHECK-INST: orn.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xa0,0xef]
orn.t %d14, %d0, 0, %d14, 31

# CHECK-INST: orn.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x20,0xe0]
orn.t %d14, %d0, 0, %d15, 0

# CHECK-INST: orn.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xa0,0xe3]
orn.t %d14, %d0, 0, %d15, 7

# CHECK-INST: orn.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x20,0xec]
orn.t %d14, %d0, 0, %d15, 24

# CHECK-INST: orn.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xa0,0xef]
orn.t %d14, %d0, 0, %d15, 31

# CHECK-INST: orn.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0x07,0x00,0x27,0xe0]
orn.t %d14, %d0, 7, %d0, 0

# CHECK-INST: orn.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0x07,0x00,0xa7,0xe3]
orn.t %d14, %d0, 7, %d0, 7

# CHECK-INST: orn.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0x07,0x00,0x27,0xec]
orn.t %d14, %d0, 7, %d0, 24

# CHECK-INST: orn.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0x07,0x00,0xa7,0xef]
orn.t %d14, %d0, 7, %d0, 31

# CHECK-INST: orn.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0x07,0x10,0x27,0xe0]
orn.t %d14, %d0, 7, %d1, 0

# CHECK-INST: orn.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0x07,0x10,0xa7,0xe3]
orn.t %d14, %d0, 7, %d1, 7

# CHECK-INST: orn.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0x07,0x10,0x27,0xec]
orn.t %d14, %d0, 7, %d1, 24

# CHECK-INST: orn.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0x07,0x10,0xa7,0xef]
orn.t %d14, %d0, 7, %d1, 31

# CHECK-INST: orn.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x27,0xe0]
orn.t %d14, %d0, 7, %d14, 0

# CHECK-INST: orn.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xa7,0xe3]
orn.t %d14, %d0, 7, %d14, 7

# CHECK-INST: orn.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x27,0xec]
orn.t %d14, %d0, 7, %d14, 24

# CHECK-INST: orn.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xa7,0xef]
orn.t %d14, %d0, 7, %d14, 31

# CHECK-INST: orn.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x27,0xe0]
orn.t %d14, %d0, 7, %d15, 0

# CHECK-INST: orn.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xa7,0xe3]
orn.t %d14, %d0, 7, %d15, 7

# CHECK-INST: orn.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x27,0xec]
orn.t %d14, %d0, 7, %d15, 24

# CHECK-INST: orn.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xa7,0xef]
orn.t %d14, %d0, 7, %d15, 31

# CHECK-INST: orn.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0x07,0x00,0x38,0xe0]
orn.t %d14, %d0, 24, %d0, 0

# CHECK-INST: orn.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0x07,0x00,0xb8,0xe3]
orn.t %d14, %d0, 24, %d0, 7

# CHECK-INST: orn.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0x07,0x00,0x38,0xec]
orn.t %d14, %d0, 24, %d0, 24

# CHECK-INST: orn.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0x07,0x00,0xb8,0xef]
orn.t %d14, %d0, 24, %d0, 31

# CHECK-INST: orn.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0x07,0x10,0x38,0xe0]
orn.t %d14, %d0, 24, %d1, 0

# CHECK-INST: orn.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0x07,0x10,0xb8,0xe3]
orn.t %d14, %d0, 24, %d1, 7

# CHECK-INST: orn.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0x07,0x10,0x38,0xec]
orn.t %d14, %d0, 24, %d1, 24

# CHECK-INST: orn.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0x07,0x10,0xb8,0xef]
orn.t %d14, %d0, 24, %d1, 31

# CHECK-INST: orn.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x38,0xe0]
orn.t %d14, %d0, 24, %d14, 0

# CHECK-INST: orn.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xb8,0xe3]
orn.t %d14, %d0, 24, %d14, 7

# CHECK-INST: orn.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x38,0xec]
orn.t %d14, %d0, 24, %d14, 24

# CHECK-INST: orn.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xb8,0xef]
orn.t %d14, %d0, 24, %d14, 31

# CHECK-INST: orn.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x38,0xe0]
orn.t %d14, %d0, 24, %d15, 0

# CHECK-INST: orn.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xb8,0xe3]
orn.t %d14, %d0, 24, %d15, 7

# CHECK-INST: orn.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x38,0xec]
orn.t %d14, %d0, 24, %d15, 24

# CHECK-INST: orn.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xb8,0xef]
orn.t %d14, %d0, 24, %d15, 31

# CHECK-INST: orn.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0x07,0x00,0x3f,0xe0]
orn.t %d14, %d0, 31, %d0, 0

# CHECK-INST: orn.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0x07,0x00,0xbf,0xe3]
orn.t %d14, %d0, 31, %d0, 7

# CHECK-INST: orn.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0x07,0x00,0x3f,0xec]
orn.t %d14, %d0, 31, %d0, 24

# CHECK-INST: orn.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0x07,0x00,0xbf,0xef]
orn.t %d14, %d0, 31, %d0, 31

# CHECK-INST: orn.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0x07,0x10,0x3f,0xe0]
orn.t %d14, %d0, 31, %d1, 0

# CHECK-INST: orn.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0x07,0x10,0xbf,0xe3]
orn.t %d14, %d0, 31, %d1, 7

# CHECK-INST: orn.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0x07,0x10,0x3f,0xec]
orn.t %d14, %d0, 31, %d1, 24

# CHECK-INST: orn.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0x07,0x10,0xbf,0xef]
orn.t %d14, %d0, 31, %d1, 31

# CHECK-INST: orn.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x3f,0xe0]
orn.t %d14, %d0, 31, %d14, 0

# CHECK-INST: orn.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xbf,0xe3]
orn.t %d14, %d0, 31, %d14, 7

# CHECK-INST: orn.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x3f,0xec]
orn.t %d14, %d0, 31, %d14, 24

# CHECK-INST: orn.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xbf,0xef]
orn.t %d14, %d0, 31, %d14, 31

# CHECK-INST: orn.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x3f,0xe0]
orn.t %d14, %d0, 31, %d15, 0

# CHECK-INST: orn.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xbf,0xe3]
orn.t %d14, %d0, 31, %d15, 7

# CHECK-INST: orn.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x3f,0xec]
orn.t %d14, %d0, 31, %d15, 24

# CHECK-INST: orn.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xbf,0xef]
orn.t %d14, %d0, 31, %d15, 31

# CHECK-INST: orn.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0x07,0x01,0x20,0xe0]
orn.t %d14, %d1, 0, %d0, 0

# CHECK-INST: orn.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0x07,0x01,0xa0,0xe3]
orn.t %d14, %d1, 0, %d0, 7

# CHECK-INST: orn.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0x07,0x01,0x20,0xec]
orn.t %d14, %d1, 0, %d0, 24

# CHECK-INST: orn.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0x07,0x01,0xa0,0xef]
orn.t %d14, %d1, 0, %d0, 31

# CHECK-INST: orn.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0x07,0x11,0x20,0xe0]
orn.t %d14, %d1, 0, %d1, 0

# CHECK-INST: orn.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0x07,0x11,0xa0,0xe3]
orn.t %d14, %d1, 0, %d1, 7

# CHECK-INST: orn.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0x07,0x11,0x20,0xec]
orn.t %d14, %d1, 0, %d1, 24

# CHECK-INST: orn.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0x07,0x11,0xa0,0xef]
orn.t %d14, %d1, 0, %d1, 31

# CHECK-INST: orn.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x20,0xe0]
orn.t %d14, %d1, 0, %d14, 0

# CHECK-INST: orn.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xa0,0xe3]
orn.t %d14, %d1, 0, %d14, 7

# CHECK-INST: orn.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x20,0xec]
orn.t %d14, %d1, 0, %d14, 24

# CHECK-INST: orn.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xa0,0xef]
orn.t %d14, %d1, 0, %d14, 31

# CHECK-INST: orn.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x20,0xe0]
orn.t %d14, %d1, 0, %d15, 0

# CHECK-INST: orn.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xa0,0xe3]
orn.t %d14, %d1, 0, %d15, 7

# CHECK-INST: orn.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x20,0xec]
orn.t %d14, %d1, 0, %d15, 24

# CHECK-INST: orn.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xa0,0xef]
orn.t %d14, %d1, 0, %d15, 31

# CHECK-INST: orn.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0x07,0x01,0x27,0xe0]
orn.t %d14, %d1, 7, %d0, 0

# CHECK-INST: orn.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0x07,0x01,0xa7,0xe3]
orn.t %d14, %d1, 7, %d0, 7

# CHECK-INST: orn.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0x07,0x01,0x27,0xec]
orn.t %d14, %d1, 7, %d0, 24

# CHECK-INST: orn.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0x07,0x01,0xa7,0xef]
orn.t %d14, %d1, 7, %d0, 31

# CHECK-INST: orn.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0x07,0x11,0x27,0xe0]
orn.t %d14, %d1, 7, %d1, 0

# CHECK-INST: orn.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0x07,0x11,0xa7,0xe3]
orn.t %d14, %d1, 7, %d1, 7

# CHECK-INST: orn.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0x07,0x11,0x27,0xec]
orn.t %d14, %d1, 7, %d1, 24

# CHECK-INST: orn.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0x07,0x11,0xa7,0xef]
orn.t %d14, %d1, 7, %d1, 31

# CHECK-INST: orn.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x27,0xe0]
orn.t %d14, %d1, 7, %d14, 0

# CHECK-INST: orn.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xa7,0xe3]
orn.t %d14, %d1, 7, %d14, 7

# CHECK-INST: orn.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x27,0xec]
orn.t %d14, %d1, 7, %d14, 24

# CHECK-INST: orn.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xa7,0xef]
orn.t %d14, %d1, 7, %d14, 31

# CHECK-INST: orn.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x27,0xe0]
orn.t %d14, %d1, 7, %d15, 0

# CHECK-INST: orn.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xa7,0xe3]
orn.t %d14, %d1, 7, %d15, 7

# CHECK-INST: orn.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x27,0xec]
orn.t %d14, %d1, 7, %d15, 24

# CHECK-INST: orn.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xa7,0xef]
orn.t %d14, %d1, 7, %d15, 31

# CHECK-INST: orn.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0x07,0x01,0x38,0xe0]
orn.t %d14, %d1, 24, %d0, 0

# CHECK-INST: orn.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0x07,0x01,0xb8,0xe3]
orn.t %d14, %d1, 24, %d0, 7

# CHECK-INST: orn.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0x07,0x01,0x38,0xec]
orn.t %d14, %d1, 24, %d0, 24

# CHECK-INST: orn.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0x07,0x01,0xb8,0xef]
orn.t %d14, %d1, 24, %d0, 31

# CHECK-INST: orn.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0x07,0x11,0x38,0xe0]
orn.t %d14, %d1, 24, %d1, 0

# CHECK-INST: orn.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0x07,0x11,0xb8,0xe3]
orn.t %d14, %d1, 24, %d1, 7

# CHECK-INST: orn.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0x07,0x11,0x38,0xec]
orn.t %d14, %d1, 24, %d1, 24

# CHECK-INST: orn.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0x07,0x11,0xb8,0xef]
orn.t %d14, %d1, 24, %d1, 31

# CHECK-INST: orn.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x38,0xe0]
orn.t %d14, %d1, 24, %d14, 0

# CHECK-INST: orn.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xb8,0xe3]
orn.t %d14, %d1, 24, %d14, 7

# CHECK-INST: orn.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x38,0xec]
orn.t %d14, %d1, 24, %d14, 24

# CHECK-INST: orn.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xb8,0xef]
orn.t %d14, %d1, 24, %d14, 31

# CHECK-INST: orn.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x38,0xe0]
orn.t %d14, %d1, 24, %d15, 0

# CHECK-INST: orn.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xb8,0xe3]
orn.t %d14, %d1, 24, %d15, 7

# CHECK-INST: orn.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x38,0xec]
orn.t %d14, %d1, 24, %d15, 24

# CHECK-INST: orn.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xb8,0xef]
orn.t %d14, %d1, 24, %d15, 31

# CHECK-INST: orn.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0x07,0x01,0x3f,0xe0]
orn.t %d14, %d1, 31, %d0, 0

# CHECK-INST: orn.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0x07,0x01,0xbf,0xe3]
orn.t %d14, %d1, 31, %d0, 7

# CHECK-INST: orn.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0x07,0x01,0x3f,0xec]
orn.t %d14, %d1, 31, %d0, 24

# CHECK-INST: orn.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0x07,0x01,0xbf,0xef]
orn.t %d14, %d1, 31, %d0, 31

# CHECK-INST: orn.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0x07,0x11,0x3f,0xe0]
orn.t %d14, %d1, 31, %d1, 0

# CHECK-INST: orn.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0x07,0x11,0xbf,0xe3]
orn.t %d14, %d1, 31, %d1, 7

# CHECK-INST: orn.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0x07,0x11,0x3f,0xec]
orn.t %d14, %d1, 31, %d1, 24

# CHECK-INST: orn.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0x07,0x11,0xbf,0xef]
orn.t %d14, %d1, 31, %d1, 31

# CHECK-INST: orn.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x3f,0xe0]
orn.t %d14, %d1, 31, %d14, 0

# CHECK-INST: orn.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xbf,0xe3]
orn.t %d14, %d1, 31, %d14, 7

# CHECK-INST: orn.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x3f,0xec]
orn.t %d14, %d1, 31, %d14, 24

# CHECK-INST: orn.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xbf,0xef]
orn.t %d14, %d1, 31, %d14, 31

# CHECK-INST: orn.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x3f,0xe0]
orn.t %d14, %d1, 31, %d15, 0

# CHECK-INST: orn.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xbf,0xe3]
orn.t %d14, %d1, 31, %d15, 7

# CHECK-INST: orn.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x3f,0xec]
orn.t %d14, %d1, 31, %d15, 24

# CHECK-INST: orn.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xbf,0xef]
orn.t %d14, %d1, 31, %d15, 31

# CHECK-INST: orn.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x20,0xe0]
orn.t %d14, %d14, 0, %d0, 0

# CHECK-INST: orn.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xa0,0xe3]
orn.t %d14, %d14, 0, %d0, 7

# CHECK-INST: orn.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x20,0xec]
orn.t %d14, %d14, 0, %d0, 24

# CHECK-INST: orn.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xa0,0xef]
orn.t %d14, %d14, 0, %d0, 31

# CHECK-INST: orn.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x20,0xe0]
orn.t %d14, %d14, 0, %d1, 0

# CHECK-INST: orn.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xa0,0xe3]
orn.t %d14, %d14, 0, %d1, 7

# CHECK-INST: orn.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x20,0xec]
orn.t %d14, %d14, 0, %d1, 24

# CHECK-INST: orn.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xa0,0xef]
orn.t %d14, %d14, 0, %d1, 31

# CHECK-INST: orn.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0x07,0xee,0x20,0xe0]
orn.t %d14, %d14, 0, %d14, 0

# CHECK-INST: orn.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0x07,0xee,0xa0,0xe3]
orn.t %d14, %d14, 0, %d14, 7

# CHECK-INST: orn.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0x07,0xee,0x20,0xec]
orn.t %d14, %d14, 0, %d14, 24

# CHECK-INST: orn.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0x07,0xee,0xa0,0xef]
orn.t %d14, %d14, 0, %d14, 31

# CHECK-INST: orn.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x20,0xe0]
orn.t %d14, %d14, 0, %d15, 0

# CHECK-INST: orn.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xa0,0xe3]
orn.t %d14, %d14, 0, %d15, 7

# CHECK-INST: orn.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x20,0xec]
orn.t %d14, %d14, 0, %d15, 24

# CHECK-INST: orn.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xa0,0xef]
orn.t %d14, %d14, 0, %d15, 31

# CHECK-INST: orn.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x27,0xe0]
orn.t %d14, %d14, 7, %d0, 0

# CHECK-INST: orn.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xa7,0xe3]
orn.t %d14, %d14, 7, %d0, 7

# CHECK-INST: orn.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x27,0xec]
orn.t %d14, %d14, 7, %d0, 24

# CHECK-INST: orn.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xa7,0xef]
orn.t %d14, %d14, 7, %d0, 31

# CHECK-INST: orn.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x27,0xe0]
orn.t %d14, %d14, 7, %d1, 0

# CHECK-INST: orn.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xa7,0xe3]
orn.t %d14, %d14, 7, %d1, 7

# CHECK-INST: orn.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x27,0xec]
orn.t %d14, %d14, 7, %d1, 24

# CHECK-INST: orn.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xa7,0xef]
orn.t %d14, %d14, 7, %d1, 31

# CHECK-INST: orn.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0x07,0xee,0x27,0xe0]
orn.t %d14, %d14, 7, %d14, 0

# CHECK-INST: orn.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0x07,0xee,0xa7,0xe3]
orn.t %d14, %d14, 7, %d14, 7

# CHECK-INST: orn.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0x07,0xee,0x27,0xec]
orn.t %d14, %d14, 7, %d14, 24

# CHECK-INST: orn.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0x07,0xee,0xa7,0xef]
orn.t %d14, %d14, 7, %d14, 31

# CHECK-INST: orn.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x27,0xe0]
orn.t %d14, %d14, 7, %d15, 0

# CHECK-INST: orn.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xa7,0xe3]
orn.t %d14, %d14, 7, %d15, 7

# CHECK-INST: orn.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x27,0xec]
orn.t %d14, %d14, 7, %d15, 24

# CHECK-INST: orn.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xa7,0xef]
orn.t %d14, %d14, 7, %d15, 31

# CHECK-INST: orn.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x38,0xe0]
orn.t %d14, %d14, 24, %d0, 0

# CHECK-INST: orn.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xb8,0xe3]
orn.t %d14, %d14, 24, %d0, 7

# CHECK-INST: orn.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x38,0xec]
orn.t %d14, %d14, 24, %d0, 24

# CHECK-INST: orn.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xb8,0xef]
orn.t %d14, %d14, 24, %d0, 31

# CHECK-INST: orn.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x38,0xe0]
orn.t %d14, %d14, 24, %d1, 0

# CHECK-INST: orn.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xb8,0xe3]
orn.t %d14, %d14, 24, %d1, 7

# CHECK-INST: orn.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x38,0xec]
orn.t %d14, %d14, 24, %d1, 24

# CHECK-INST: orn.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xb8,0xef]
orn.t %d14, %d14, 24, %d1, 31

# CHECK-INST: orn.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0x07,0xee,0x38,0xe0]
orn.t %d14, %d14, 24, %d14, 0

# CHECK-INST: orn.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0x07,0xee,0xb8,0xe3]
orn.t %d14, %d14, 24, %d14, 7

# CHECK-INST: orn.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0x07,0xee,0x38,0xec]
orn.t %d14, %d14, 24, %d14, 24

# CHECK-INST: orn.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0x07,0xee,0xb8,0xef]
orn.t %d14, %d14, 24, %d14, 31

# CHECK-INST: orn.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x38,0xe0]
orn.t %d14, %d14, 24, %d15, 0

# CHECK-INST: orn.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xb8,0xe3]
orn.t %d14, %d14, 24, %d15, 7

# CHECK-INST: orn.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x38,0xec]
orn.t %d14, %d14, 24, %d15, 24

# CHECK-INST: orn.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xb8,0xef]
orn.t %d14, %d14, 24, %d15, 31

# CHECK-INST: orn.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x3f,0xe0]
orn.t %d14, %d14, 31, %d0, 0

# CHECK-INST: orn.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xbf,0xe3]
orn.t %d14, %d14, 31, %d0, 7

# CHECK-INST: orn.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x3f,0xec]
orn.t %d14, %d14, 31, %d0, 24

# CHECK-INST: orn.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xbf,0xef]
orn.t %d14, %d14, 31, %d0, 31

# CHECK-INST: orn.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x3f,0xe0]
orn.t %d14, %d14, 31, %d1, 0

# CHECK-INST: orn.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xbf,0xe3]
orn.t %d14, %d14, 31, %d1, 7

# CHECK-INST: orn.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x3f,0xec]
orn.t %d14, %d14, 31, %d1, 24

# CHECK-INST: orn.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xbf,0xef]
orn.t %d14, %d14, 31, %d1, 31

# CHECK-INST: orn.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0x07,0xee,0x3f,0xe0]
orn.t %d14, %d14, 31, %d14, 0

# CHECK-INST: orn.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0x07,0xee,0xbf,0xe3]
orn.t %d14, %d14, 31, %d14, 7

# CHECK-INST: orn.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0x07,0xee,0x3f,0xec]
orn.t %d14, %d14, 31, %d14, 24

# CHECK-INST: orn.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0x07,0xee,0xbf,0xef]
orn.t %d14, %d14, 31, %d14, 31

# CHECK-INST: orn.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x3f,0xe0]
orn.t %d14, %d14, 31, %d15, 0

# CHECK-INST: orn.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xbf,0xe3]
orn.t %d14, %d14, 31, %d15, 7

# CHECK-INST: orn.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x3f,0xec]
orn.t %d14, %d14, 31, %d15, 24

# CHECK-INST: orn.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xbf,0xef]
orn.t %d14, %d14, 31, %d15, 31

# CHECK-INST: orn.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x20,0xe0]
orn.t %d14, %d15, 0, %d0, 0

# CHECK-INST: orn.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xa0,0xe3]
orn.t %d14, %d15, 0, %d0, 7

# CHECK-INST: orn.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x20,0xec]
orn.t %d14, %d15, 0, %d0, 24

# CHECK-INST: orn.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xa0,0xef]
orn.t %d14, %d15, 0, %d0, 31

# CHECK-INST: orn.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x20,0xe0]
orn.t %d14, %d15, 0, %d1, 0

# CHECK-INST: orn.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xa0,0xe3]
orn.t %d14, %d15, 0, %d1, 7

# CHECK-INST: orn.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x20,0xec]
orn.t %d14, %d15, 0, %d1, 24

# CHECK-INST: orn.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xa0,0xef]
orn.t %d14, %d15, 0, %d1, 31

# CHECK-INST: orn.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0x07,0xef,0x20,0xe0]
orn.t %d14, %d15, 0, %d14, 0

# CHECK-INST: orn.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0x07,0xef,0xa0,0xe3]
orn.t %d14, %d15, 0, %d14, 7

# CHECK-INST: orn.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0x07,0xef,0x20,0xec]
orn.t %d14, %d15, 0, %d14, 24

# CHECK-INST: orn.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0x07,0xef,0xa0,0xef]
orn.t %d14, %d15, 0, %d14, 31

# CHECK-INST: orn.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0x07,0xff,0x20,0xe0]
orn.t %d14, %d15, 0, %d15, 0

# CHECK-INST: orn.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0x07,0xff,0xa0,0xe3]
orn.t %d14, %d15, 0, %d15, 7

# CHECK-INST: orn.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0x07,0xff,0x20,0xec]
orn.t %d14, %d15, 0, %d15, 24

# CHECK-INST: orn.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0x07,0xff,0xa0,0xef]
orn.t %d14, %d15, 0, %d15, 31

# CHECK-INST: orn.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x27,0xe0]
orn.t %d14, %d15, 7, %d0, 0

# CHECK-INST: orn.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xa7,0xe3]
orn.t %d14, %d15, 7, %d0, 7

# CHECK-INST: orn.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x27,0xec]
orn.t %d14, %d15, 7, %d0, 24

# CHECK-INST: orn.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xa7,0xef]
orn.t %d14, %d15, 7, %d0, 31

# CHECK-INST: orn.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x27,0xe0]
orn.t %d14, %d15, 7, %d1, 0

# CHECK-INST: orn.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xa7,0xe3]
orn.t %d14, %d15, 7, %d1, 7

# CHECK-INST: orn.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x27,0xec]
orn.t %d14, %d15, 7, %d1, 24

# CHECK-INST: orn.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xa7,0xef]
orn.t %d14, %d15, 7, %d1, 31

# CHECK-INST: orn.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0x07,0xef,0x27,0xe0]
orn.t %d14, %d15, 7, %d14, 0

# CHECK-INST: orn.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0x07,0xef,0xa7,0xe3]
orn.t %d14, %d15, 7, %d14, 7

# CHECK-INST: orn.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0x07,0xef,0x27,0xec]
orn.t %d14, %d15, 7, %d14, 24

# CHECK-INST: orn.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0x07,0xef,0xa7,0xef]
orn.t %d14, %d15, 7, %d14, 31

# CHECK-INST: orn.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0x07,0xff,0x27,0xe0]
orn.t %d14, %d15, 7, %d15, 0

# CHECK-INST: orn.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0x07,0xff,0xa7,0xe3]
orn.t %d14, %d15, 7, %d15, 7

# CHECK-INST: orn.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0x07,0xff,0x27,0xec]
orn.t %d14, %d15, 7, %d15, 24

# CHECK-INST: orn.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0x07,0xff,0xa7,0xef]
orn.t %d14, %d15, 7, %d15, 31

# CHECK-INST: orn.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x38,0xe0]
orn.t %d14, %d15, 24, %d0, 0

# CHECK-INST: orn.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xb8,0xe3]
orn.t %d14, %d15, 24, %d0, 7

# CHECK-INST: orn.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x38,0xec]
orn.t %d14, %d15, 24, %d0, 24

# CHECK-INST: orn.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xb8,0xef]
orn.t %d14, %d15, 24, %d0, 31

# CHECK-INST: orn.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x38,0xe0]
orn.t %d14, %d15, 24, %d1, 0

# CHECK-INST: orn.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xb8,0xe3]
orn.t %d14, %d15, 24, %d1, 7

# CHECK-INST: orn.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x38,0xec]
orn.t %d14, %d15, 24, %d1, 24

# CHECK-INST: orn.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xb8,0xef]
orn.t %d14, %d15, 24, %d1, 31

# CHECK-INST: orn.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0x07,0xef,0x38,0xe0]
orn.t %d14, %d15, 24, %d14, 0

# CHECK-INST: orn.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0x07,0xef,0xb8,0xe3]
orn.t %d14, %d15, 24, %d14, 7

# CHECK-INST: orn.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0x07,0xef,0x38,0xec]
orn.t %d14, %d15, 24, %d14, 24

# CHECK-INST: orn.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0x07,0xef,0xb8,0xef]
orn.t %d14, %d15, 24, %d14, 31

# CHECK-INST: orn.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0x07,0xff,0x38,0xe0]
orn.t %d14, %d15, 24, %d15, 0

# CHECK-INST: orn.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0x07,0xff,0xb8,0xe3]
orn.t %d14, %d15, 24, %d15, 7

# CHECK-INST: orn.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0x07,0xff,0x38,0xec]
orn.t %d14, %d15, 24, %d15, 24

# CHECK-INST: orn.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0x07,0xff,0xb8,0xef]
orn.t %d14, %d15, 24, %d15, 31

# CHECK-INST: orn.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x3f,0xe0]
orn.t %d14, %d15, 31, %d0, 0

# CHECK-INST: orn.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xbf,0xe3]
orn.t %d14, %d15, 31, %d0, 7

# CHECK-INST: orn.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x3f,0xec]
orn.t %d14, %d15, 31, %d0, 24

# CHECK-INST: orn.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xbf,0xef]
orn.t %d14, %d15, 31, %d0, 31

# CHECK-INST: orn.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x3f,0xe0]
orn.t %d14, %d15, 31, %d1, 0

# CHECK-INST: orn.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xbf,0xe3]
orn.t %d14, %d15, 31, %d1, 7

# CHECK-INST: orn.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x3f,0xec]
orn.t %d14, %d15, 31, %d1, 24

# CHECK-INST: orn.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xbf,0xef]
orn.t %d14, %d15, 31, %d1, 31

# CHECK-INST: orn.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0x07,0xef,0x3f,0xe0]
orn.t %d14, %d15, 31, %d14, 0

# CHECK-INST: orn.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0x07,0xef,0xbf,0xe3]
orn.t %d14, %d15, 31, %d14, 7

# CHECK-INST: orn.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0x07,0xef,0x3f,0xec]
orn.t %d14, %d15, 31, %d14, 24

# CHECK-INST: orn.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0x07,0xef,0xbf,0xef]
orn.t %d14, %d15, 31, %d14, 31

# CHECK-INST: orn.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0x07,0xff,0x3f,0xe0]
orn.t %d14, %d15, 31, %d15, 0

# CHECK-INST: orn.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0x07,0xff,0xbf,0xe3]
orn.t %d14, %d15, 31, %d15, 7

# CHECK-INST: orn.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0x07,0xff,0x3f,0xec]
orn.t %d14, %d15, 31, %d15, 24

# CHECK-INST: orn.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0x07,0xff,0xbf,0xef]
orn.t %d14, %d15, 31, %d15, 31

# CHECK-INST: orn.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x20,0xf0]
orn.t %d15, %d0, 0, %d0, 0

# CHECK-INST: orn.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0x07,0x00,0xa0,0xf3]
orn.t %d15, %d0, 0, %d0, 7

# CHECK-INST: orn.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0x07,0x00,0x20,0xfc]
orn.t %d15, %d0, 0, %d0, 24

# CHECK-INST: orn.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0x07,0x00,0xa0,0xff]
orn.t %d15, %d0, 0, %d0, 31

# CHECK-INST: orn.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0x07,0x10,0x20,0xf0]
orn.t %d15, %d0, 0, %d1, 0

# CHECK-INST: orn.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0x07,0x10,0xa0,0xf3]
orn.t %d15, %d0, 0, %d1, 7

# CHECK-INST: orn.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0x07,0x10,0x20,0xfc]
orn.t %d15, %d0, 0, %d1, 24

# CHECK-INST: orn.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0x07,0x10,0xa0,0xff]
orn.t %d15, %d0, 0, %d1, 31

# CHECK-INST: orn.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x20,0xf0]
orn.t %d15, %d0, 0, %d14, 0

# CHECK-INST: orn.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xa0,0xf3]
orn.t %d15, %d0, 0, %d14, 7

# CHECK-INST: orn.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x20,0xfc]
orn.t %d15, %d0, 0, %d14, 24

# CHECK-INST: orn.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xa0,0xff]
orn.t %d15, %d0, 0, %d14, 31

# CHECK-INST: orn.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x20,0xf0]
orn.t %d15, %d0, 0, %d15, 0

# CHECK-INST: orn.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xa0,0xf3]
orn.t %d15, %d0, 0, %d15, 7

# CHECK-INST: orn.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x20,0xfc]
orn.t %d15, %d0, 0, %d15, 24

# CHECK-INST: orn.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xa0,0xff]
orn.t %d15, %d0, 0, %d15, 31

# CHECK-INST: orn.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0x07,0x00,0x27,0xf0]
orn.t %d15, %d0, 7, %d0, 0

# CHECK-INST: orn.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0x07,0x00,0xa7,0xf3]
orn.t %d15, %d0, 7, %d0, 7

# CHECK-INST: orn.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0x07,0x00,0x27,0xfc]
orn.t %d15, %d0, 7, %d0, 24

# CHECK-INST: orn.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0x07,0x00,0xa7,0xff]
orn.t %d15, %d0, 7, %d0, 31

# CHECK-INST: orn.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0x07,0x10,0x27,0xf0]
orn.t %d15, %d0, 7, %d1, 0

# CHECK-INST: orn.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0x07,0x10,0xa7,0xf3]
orn.t %d15, %d0, 7, %d1, 7

# CHECK-INST: orn.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0x07,0x10,0x27,0xfc]
orn.t %d15, %d0, 7, %d1, 24

# CHECK-INST: orn.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0x07,0x10,0xa7,0xff]
orn.t %d15, %d0, 7, %d1, 31

# CHECK-INST: orn.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x27,0xf0]
orn.t %d15, %d0, 7, %d14, 0

# CHECK-INST: orn.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xa7,0xf3]
orn.t %d15, %d0, 7, %d14, 7

# CHECK-INST: orn.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x27,0xfc]
orn.t %d15, %d0, 7, %d14, 24

# CHECK-INST: orn.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xa7,0xff]
orn.t %d15, %d0, 7, %d14, 31

# CHECK-INST: orn.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x27,0xf0]
orn.t %d15, %d0, 7, %d15, 0

# CHECK-INST: orn.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xa7,0xf3]
orn.t %d15, %d0, 7, %d15, 7

# CHECK-INST: orn.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x27,0xfc]
orn.t %d15, %d0, 7, %d15, 24

# CHECK-INST: orn.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xa7,0xff]
orn.t %d15, %d0, 7, %d15, 31

# CHECK-INST: orn.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0x07,0x00,0x38,0xf0]
orn.t %d15, %d0, 24, %d0, 0

# CHECK-INST: orn.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0x07,0x00,0xb8,0xf3]
orn.t %d15, %d0, 24, %d0, 7

# CHECK-INST: orn.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0x07,0x00,0x38,0xfc]
orn.t %d15, %d0, 24, %d0, 24

# CHECK-INST: orn.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0x07,0x00,0xb8,0xff]
orn.t %d15, %d0, 24, %d0, 31

# CHECK-INST: orn.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0x07,0x10,0x38,0xf0]
orn.t %d15, %d0, 24, %d1, 0

# CHECK-INST: orn.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0x07,0x10,0xb8,0xf3]
orn.t %d15, %d0, 24, %d1, 7

# CHECK-INST: orn.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0x07,0x10,0x38,0xfc]
orn.t %d15, %d0, 24, %d1, 24

# CHECK-INST: orn.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0x07,0x10,0xb8,0xff]
orn.t %d15, %d0, 24, %d1, 31

# CHECK-INST: orn.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x38,0xf0]
orn.t %d15, %d0, 24, %d14, 0

# CHECK-INST: orn.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xb8,0xf3]
orn.t %d15, %d0, 24, %d14, 7

# CHECK-INST: orn.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x38,0xfc]
orn.t %d15, %d0, 24, %d14, 24

# CHECK-INST: orn.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xb8,0xff]
orn.t %d15, %d0, 24, %d14, 31

# CHECK-INST: orn.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x38,0xf0]
orn.t %d15, %d0, 24, %d15, 0

# CHECK-INST: orn.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xb8,0xf3]
orn.t %d15, %d0, 24, %d15, 7

# CHECK-INST: orn.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x38,0xfc]
orn.t %d15, %d0, 24, %d15, 24

# CHECK-INST: orn.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xb8,0xff]
orn.t %d15, %d0, 24, %d15, 31

# CHECK-INST: orn.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0x07,0x00,0x3f,0xf0]
orn.t %d15, %d0, 31, %d0, 0

# CHECK-INST: orn.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0x07,0x00,0xbf,0xf3]
orn.t %d15, %d0, 31, %d0, 7

# CHECK-INST: orn.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0x07,0x00,0x3f,0xfc]
orn.t %d15, %d0, 31, %d0, 24

# CHECK-INST: orn.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0x07,0x00,0xbf,0xff]
orn.t %d15, %d0, 31, %d0, 31

# CHECK-INST: orn.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0x07,0x10,0x3f,0xf0]
orn.t %d15, %d0, 31, %d1, 0

# CHECK-INST: orn.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0x07,0x10,0xbf,0xf3]
orn.t %d15, %d0, 31, %d1, 7

# CHECK-INST: orn.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0x07,0x10,0x3f,0xfc]
orn.t %d15, %d0, 31, %d1, 24

# CHECK-INST: orn.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0x07,0x10,0xbf,0xff]
orn.t %d15, %d0, 31, %d1, 31

# CHECK-INST: orn.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x3f,0xf0]
orn.t %d15, %d0, 31, %d14, 0

# CHECK-INST: orn.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xbf,0xf3]
orn.t %d15, %d0, 31, %d14, 7

# CHECK-INST: orn.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x3f,0xfc]
orn.t %d15, %d0, 31, %d14, 24

# CHECK-INST: orn.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xbf,0xff]
orn.t %d15, %d0, 31, %d14, 31

# CHECK-INST: orn.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x3f,0xf0]
orn.t %d15, %d0, 31, %d15, 0

# CHECK-INST: orn.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xbf,0xf3]
orn.t %d15, %d0, 31, %d15, 7

# CHECK-INST: orn.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x3f,0xfc]
orn.t %d15, %d0, 31, %d15, 24

# CHECK-INST: orn.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xbf,0xff]
orn.t %d15, %d0, 31, %d15, 31

# CHECK-INST: orn.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0x07,0x01,0x20,0xf0]
orn.t %d15, %d1, 0, %d0, 0

# CHECK-INST: orn.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0x07,0x01,0xa0,0xf3]
orn.t %d15, %d1, 0, %d0, 7

# CHECK-INST: orn.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0x07,0x01,0x20,0xfc]
orn.t %d15, %d1, 0, %d0, 24

# CHECK-INST: orn.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0x07,0x01,0xa0,0xff]
orn.t %d15, %d1, 0, %d0, 31

# CHECK-INST: orn.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0x07,0x11,0x20,0xf0]
orn.t %d15, %d1, 0, %d1, 0

# CHECK-INST: orn.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0x07,0x11,0xa0,0xf3]
orn.t %d15, %d1, 0, %d1, 7

# CHECK-INST: orn.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0x07,0x11,0x20,0xfc]
orn.t %d15, %d1, 0, %d1, 24

# CHECK-INST: orn.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0x07,0x11,0xa0,0xff]
orn.t %d15, %d1, 0, %d1, 31

# CHECK-INST: orn.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x20,0xf0]
orn.t %d15, %d1, 0, %d14, 0

# CHECK-INST: orn.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xa0,0xf3]
orn.t %d15, %d1, 0, %d14, 7

# CHECK-INST: orn.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x20,0xfc]
orn.t %d15, %d1, 0, %d14, 24

# CHECK-INST: orn.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xa0,0xff]
orn.t %d15, %d1, 0, %d14, 31

# CHECK-INST: orn.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x20,0xf0]
orn.t %d15, %d1, 0, %d15, 0

# CHECK-INST: orn.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xa0,0xf3]
orn.t %d15, %d1, 0, %d15, 7

# CHECK-INST: orn.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x20,0xfc]
orn.t %d15, %d1, 0, %d15, 24

# CHECK-INST: orn.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xa0,0xff]
orn.t %d15, %d1, 0, %d15, 31

# CHECK-INST: orn.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0x07,0x01,0x27,0xf0]
orn.t %d15, %d1, 7, %d0, 0

# CHECK-INST: orn.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0x07,0x01,0xa7,0xf3]
orn.t %d15, %d1, 7, %d0, 7

# CHECK-INST: orn.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0x07,0x01,0x27,0xfc]
orn.t %d15, %d1, 7, %d0, 24

# CHECK-INST: orn.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0x07,0x01,0xa7,0xff]
orn.t %d15, %d1, 7, %d0, 31

# CHECK-INST: orn.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0x07,0x11,0x27,0xf0]
orn.t %d15, %d1, 7, %d1, 0

# CHECK-INST: orn.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0x07,0x11,0xa7,0xf3]
orn.t %d15, %d1, 7, %d1, 7

# CHECK-INST: orn.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0x07,0x11,0x27,0xfc]
orn.t %d15, %d1, 7, %d1, 24

# CHECK-INST: orn.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0x07,0x11,0xa7,0xff]
orn.t %d15, %d1, 7, %d1, 31

# CHECK-INST: orn.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x27,0xf0]
orn.t %d15, %d1, 7, %d14, 0

# CHECK-INST: orn.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xa7,0xf3]
orn.t %d15, %d1, 7, %d14, 7

# CHECK-INST: orn.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x27,0xfc]
orn.t %d15, %d1, 7, %d14, 24

# CHECK-INST: orn.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xa7,0xff]
orn.t %d15, %d1, 7, %d14, 31

# CHECK-INST: orn.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x27,0xf0]
orn.t %d15, %d1, 7, %d15, 0

# CHECK-INST: orn.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xa7,0xf3]
orn.t %d15, %d1, 7, %d15, 7

# CHECK-INST: orn.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x27,0xfc]
orn.t %d15, %d1, 7, %d15, 24

# CHECK-INST: orn.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xa7,0xff]
orn.t %d15, %d1, 7, %d15, 31

# CHECK-INST: orn.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0x07,0x01,0x38,0xf0]
orn.t %d15, %d1, 24, %d0, 0

# CHECK-INST: orn.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0x07,0x01,0xb8,0xf3]
orn.t %d15, %d1, 24, %d0, 7

# CHECK-INST: orn.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0x07,0x01,0x38,0xfc]
orn.t %d15, %d1, 24, %d0, 24

# CHECK-INST: orn.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0x07,0x01,0xb8,0xff]
orn.t %d15, %d1, 24, %d0, 31

# CHECK-INST: orn.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0x07,0x11,0x38,0xf0]
orn.t %d15, %d1, 24, %d1, 0

# CHECK-INST: orn.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0x07,0x11,0xb8,0xf3]
orn.t %d15, %d1, 24, %d1, 7

# CHECK-INST: orn.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0x07,0x11,0x38,0xfc]
orn.t %d15, %d1, 24, %d1, 24

# CHECK-INST: orn.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0x07,0x11,0xb8,0xff]
orn.t %d15, %d1, 24, %d1, 31

# CHECK-INST: orn.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x38,0xf0]
orn.t %d15, %d1, 24, %d14, 0

# CHECK-INST: orn.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xb8,0xf3]
orn.t %d15, %d1, 24, %d14, 7

# CHECK-INST: orn.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x38,0xfc]
orn.t %d15, %d1, 24, %d14, 24

# CHECK-INST: orn.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xb8,0xff]
orn.t %d15, %d1, 24, %d14, 31

# CHECK-INST: orn.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x38,0xf0]
orn.t %d15, %d1, 24, %d15, 0

# CHECK-INST: orn.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xb8,0xf3]
orn.t %d15, %d1, 24, %d15, 7

# CHECK-INST: orn.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x38,0xfc]
orn.t %d15, %d1, 24, %d15, 24

# CHECK-INST: orn.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xb8,0xff]
orn.t %d15, %d1, 24, %d15, 31

# CHECK-INST: orn.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0x07,0x01,0x3f,0xf0]
orn.t %d15, %d1, 31, %d0, 0

# CHECK-INST: orn.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0x07,0x01,0xbf,0xf3]
orn.t %d15, %d1, 31, %d0, 7

# CHECK-INST: orn.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0x07,0x01,0x3f,0xfc]
orn.t %d15, %d1, 31, %d0, 24

# CHECK-INST: orn.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0x07,0x01,0xbf,0xff]
orn.t %d15, %d1, 31, %d0, 31

# CHECK-INST: orn.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0x07,0x11,0x3f,0xf0]
orn.t %d15, %d1, 31, %d1, 0

# CHECK-INST: orn.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0x07,0x11,0xbf,0xf3]
orn.t %d15, %d1, 31, %d1, 7

# CHECK-INST: orn.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0x07,0x11,0x3f,0xfc]
orn.t %d15, %d1, 31, %d1, 24

# CHECK-INST: orn.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0x07,0x11,0xbf,0xff]
orn.t %d15, %d1, 31, %d1, 31

# CHECK-INST: orn.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x3f,0xf0]
orn.t %d15, %d1, 31, %d14, 0

# CHECK-INST: orn.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xbf,0xf3]
orn.t %d15, %d1, 31, %d14, 7

# CHECK-INST: orn.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x3f,0xfc]
orn.t %d15, %d1, 31, %d14, 24

# CHECK-INST: orn.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xbf,0xff]
orn.t %d15, %d1, 31, %d14, 31

# CHECK-INST: orn.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x3f,0xf0]
orn.t %d15, %d1, 31, %d15, 0

# CHECK-INST: orn.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xbf,0xf3]
orn.t %d15, %d1, 31, %d15, 7

# CHECK-INST: orn.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x3f,0xfc]
orn.t %d15, %d1, 31, %d15, 24

# CHECK-INST: orn.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xbf,0xff]
orn.t %d15, %d1, 31, %d15, 31

# CHECK-INST: orn.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x20,0xf0]
orn.t %d15, %d14, 0, %d0, 0

# CHECK-INST: orn.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xa0,0xf3]
orn.t %d15, %d14, 0, %d0, 7

# CHECK-INST: orn.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x20,0xfc]
orn.t %d15, %d14, 0, %d0, 24

# CHECK-INST: orn.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xa0,0xff]
orn.t %d15, %d14, 0, %d0, 31

# CHECK-INST: orn.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x20,0xf0]
orn.t %d15, %d14, 0, %d1, 0

# CHECK-INST: orn.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xa0,0xf3]
orn.t %d15, %d14, 0, %d1, 7

# CHECK-INST: orn.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x20,0xfc]
orn.t %d15, %d14, 0, %d1, 24

# CHECK-INST: orn.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xa0,0xff]
orn.t %d15, %d14, 0, %d1, 31

# CHECK-INST: orn.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0x07,0xee,0x20,0xf0]
orn.t %d15, %d14, 0, %d14, 0

# CHECK-INST: orn.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0x07,0xee,0xa0,0xf3]
orn.t %d15, %d14, 0, %d14, 7

# CHECK-INST: orn.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0x07,0xee,0x20,0xfc]
orn.t %d15, %d14, 0, %d14, 24

# CHECK-INST: orn.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0x07,0xee,0xa0,0xff]
orn.t %d15, %d14, 0, %d14, 31

# CHECK-INST: orn.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x20,0xf0]
orn.t %d15, %d14, 0, %d15, 0

# CHECK-INST: orn.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xa0,0xf3]
orn.t %d15, %d14, 0, %d15, 7

# CHECK-INST: orn.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x20,0xfc]
orn.t %d15, %d14, 0, %d15, 24

# CHECK-INST: orn.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xa0,0xff]
orn.t %d15, %d14, 0, %d15, 31

# CHECK-INST: orn.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x27,0xf0]
orn.t %d15, %d14, 7, %d0, 0

# CHECK-INST: orn.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xa7,0xf3]
orn.t %d15, %d14, 7, %d0, 7

# CHECK-INST: orn.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x27,0xfc]
orn.t %d15, %d14, 7, %d0, 24

# CHECK-INST: orn.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xa7,0xff]
orn.t %d15, %d14, 7, %d0, 31

# CHECK-INST: orn.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x27,0xf0]
orn.t %d15, %d14, 7, %d1, 0

# CHECK-INST: orn.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xa7,0xf3]
orn.t %d15, %d14, 7, %d1, 7

# CHECK-INST: orn.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x27,0xfc]
orn.t %d15, %d14, 7, %d1, 24

# CHECK-INST: orn.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xa7,0xff]
orn.t %d15, %d14, 7, %d1, 31

# CHECK-INST: orn.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0x07,0xee,0x27,0xf0]
orn.t %d15, %d14, 7, %d14, 0

# CHECK-INST: orn.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0x07,0xee,0xa7,0xf3]
orn.t %d15, %d14, 7, %d14, 7

# CHECK-INST: orn.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0x07,0xee,0x27,0xfc]
orn.t %d15, %d14, 7, %d14, 24

# CHECK-INST: orn.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0x07,0xee,0xa7,0xff]
orn.t %d15, %d14, 7, %d14, 31

# CHECK-INST: orn.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x27,0xf0]
orn.t %d15, %d14, 7, %d15, 0

# CHECK-INST: orn.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xa7,0xf3]
orn.t %d15, %d14, 7, %d15, 7

# CHECK-INST: orn.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x27,0xfc]
orn.t %d15, %d14, 7, %d15, 24

# CHECK-INST: orn.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xa7,0xff]
orn.t %d15, %d14, 7, %d15, 31

# CHECK-INST: orn.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x38,0xf0]
orn.t %d15, %d14, 24, %d0, 0

# CHECK-INST: orn.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xb8,0xf3]
orn.t %d15, %d14, 24, %d0, 7

# CHECK-INST: orn.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x38,0xfc]
orn.t %d15, %d14, 24, %d0, 24

# CHECK-INST: orn.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xb8,0xff]
orn.t %d15, %d14, 24, %d0, 31

# CHECK-INST: orn.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x38,0xf0]
orn.t %d15, %d14, 24, %d1, 0

# CHECK-INST: orn.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xb8,0xf3]
orn.t %d15, %d14, 24, %d1, 7

# CHECK-INST: orn.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x38,0xfc]
orn.t %d15, %d14, 24, %d1, 24

# CHECK-INST: orn.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xb8,0xff]
orn.t %d15, %d14, 24, %d1, 31

# CHECK-INST: orn.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0x07,0xee,0x38,0xf0]
orn.t %d15, %d14, 24, %d14, 0

# CHECK-INST: orn.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0x07,0xee,0xb8,0xf3]
orn.t %d15, %d14, 24, %d14, 7

# CHECK-INST: orn.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0x07,0xee,0x38,0xfc]
orn.t %d15, %d14, 24, %d14, 24

# CHECK-INST: orn.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0x07,0xee,0xb8,0xff]
orn.t %d15, %d14, 24, %d14, 31

# CHECK-INST: orn.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x38,0xf0]
orn.t %d15, %d14, 24, %d15, 0

# CHECK-INST: orn.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xb8,0xf3]
orn.t %d15, %d14, 24, %d15, 7

# CHECK-INST: orn.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x38,0xfc]
orn.t %d15, %d14, 24, %d15, 24

# CHECK-INST: orn.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xb8,0xff]
orn.t %d15, %d14, 24, %d15, 31

# CHECK-INST: orn.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x3f,0xf0]
orn.t %d15, %d14, 31, %d0, 0

# CHECK-INST: orn.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xbf,0xf3]
orn.t %d15, %d14, 31, %d0, 7

# CHECK-INST: orn.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x3f,0xfc]
orn.t %d15, %d14, 31, %d0, 24

# CHECK-INST: orn.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xbf,0xff]
orn.t %d15, %d14, 31, %d0, 31

# CHECK-INST: orn.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x3f,0xf0]
orn.t %d15, %d14, 31, %d1, 0

# CHECK-INST: orn.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xbf,0xf3]
orn.t %d15, %d14, 31, %d1, 7

# CHECK-INST: orn.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x3f,0xfc]
orn.t %d15, %d14, 31, %d1, 24

# CHECK-INST: orn.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xbf,0xff]
orn.t %d15, %d14, 31, %d1, 31

# CHECK-INST: orn.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0x07,0xee,0x3f,0xf0]
orn.t %d15, %d14, 31, %d14, 0

# CHECK-INST: orn.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0x07,0xee,0xbf,0xf3]
orn.t %d15, %d14, 31, %d14, 7

# CHECK-INST: orn.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0x07,0xee,0x3f,0xfc]
orn.t %d15, %d14, 31, %d14, 24

# CHECK-INST: orn.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0x07,0xee,0xbf,0xff]
orn.t %d15, %d14, 31, %d14, 31

# CHECK-INST: orn.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x3f,0xf0]
orn.t %d15, %d14, 31, %d15, 0

# CHECK-INST: orn.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xbf,0xf3]
orn.t %d15, %d14, 31, %d15, 7

# CHECK-INST: orn.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x3f,0xfc]
orn.t %d15, %d14, 31, %d15, 24

# CHECK-INST: orn.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xbf,0xff]
orn.t %d15, %d14, 31, %d15, 31

# CHECK-INST: orn.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x20,0xf0]
orn.t %d15, %d15, 0, %d0, 0

# CHECK-INST: orn.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xa0,0xf3]
orn.t %d15, %d15, 0, %d0, 7

# CHECK-INST: orn.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x20,0xfc]
orn.t %d15, %d15, 0, %d0, 24

# CHECK-INST: orn.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xa0,0xff]
orn.t %d15, %d15, 0, %d0, 31

# CHECK-INST: orn.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x20,0xf0]
orn.t %d15, %d15, 0, %d1, 0

# CHECK-INST: orn.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xa0,0xf3]
orn.t %d15, %d15, 0, %d1, 7

# CHECK-INST: orn.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x20,0xfc]
orn.t %d15, %d15, 0, %d1, 24

# CHECK-INST: orn.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xa0,0xff]
orn.t %d15, %d15, 0, %d1, 31

# CHECK-INST: orn.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0x07,0xef,0x20,0xf0]
orn.t %d15, %d15, 0, %d14, 0

# CHECK-INST: orn.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0x07,0xef,0xa0,0xf3]
orn.t %d15, %d15, 0, %d14, 7

# CHECK-INST: orn.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0x07,0xef,0x20,0xfc]
orn.t %d15, %d15, 0, %d14, 24

# CHECK-INST: orn.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0x07,0xef,0xa0,0xff]
orn.t %d15, %d15, 0, %d14, 31

# CHECK-INST: orn.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0x07,0xff,0x20,0xf0]
orn.t %d15, %d15, 0, %d15, 0

# CHECK-INST: orn.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0x07,0xff,0xa0,0xf3]
orn.t %d15, %d15, 0, %d15, 7

# CHECK-INST: orn.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0x07,0xff,0x20,0xfc]
orn.t %d15, %d15, 0, %d15, 24

# CHECK-INST: orn.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0x07,0xff,0xa0,0xff]
orn.t %d15, %d15, 0, %d15, 31

# CHECK-INST: orn.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x27,0xf0]
orn.t %d15, %d15, 7, %d0, 0

# CHECK-INST: orn.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xa7,0xf3]
orn.t %d15, %d15, 7, %d0, 7

# CHECK-INST: orn.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x27,0xfc]
orn.t %d15, %d15, 7, %d0, 24

# CHECK-INST: orn.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xa7,0xff]
orn.t %d15, %d15, 7, %d0, 31

# CHECK-INST: orn.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x27,0xf0]
orn.t %d15, %d15, 7, %d1, 0

# CHECK-INST: orn.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xa7,0xf3]
orn.t %d15, %d15, 7, %d1, 7

# CHECK-INST: orn.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x27,0xfc]
orn.t %d15, %d15, 7, %d1, 24

# CHECK-INST: orn.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xa7,0xff]
orn.t %d15, %d15, 7, %d1, 31

# CHECK-INST: orn.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0x07,0xef,0x27,0xf0]
orn.t %d15, %d15, 7, %d14, 0

# CHECK-INST: orn.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0x07,0xef,0xa7,0xf3]
orn.t %d15, %d15, 7, %d14, 7

# CHECK-INST: orn.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0x07,0xef,0x27,0xfc]
orn.t %d15, %d15, 7, %d14, 24

# CHECK-INST: orn.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0x07,0xef,0xa7,0xff]
orn.t %d15, %d15, 7, %d14, 31

# CHECK-INST: orn.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0x07,0xff,0x27,0xf0]
orn.t %d15, %d15, 7, %d15, 0

# CHECK-INST: orn.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0x07,0xff,0xa7,0xf3]
orn.t %d15, %d15, 7, %d15, 7

# CHECK-INST: orn.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0x07,0xff,0x27,0xfc]
orn.t %d15, %d15, 7, %d15, 24

# CHECK-INST: orn.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0x07,0xff,0xa7,0xff]
orn.t %d15, %d15, 7, %d15, 31

# CHECK-INST: orn.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x38,0xf0]
orn.t %d15, %d15, 24, %d0, 0

# CHECK-INST: orn.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xb8,0xf3]
orn.t %d15, %d15, 24, %d0, 7

# CHECK-INST: orn.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x38,0xfc]
orn.t %d15, %d15, 24, %d0, 24

# CHECK-INST: orn.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xb8,0xff]
orn.t %d15, %d15, 24, %d0, 31

# CHECK-INST: orn.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x38,0xf0]
orn.t %d15, %d15, 24, %d1, 0

# CHECK-INST: orn.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xb8,0xf3]
orn.t %d15, %d15, 24, %d1, 7

# CHECK-INST: orn.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x38,0xfc]
orn.t %d15, %d15, 24, %d1, 24

# CHECK-INST: orn.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xb8,0xff]
orn.t %d15, %d15, 24, %d1, 31

# CHECK-INST: orn.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0x07,0xef,0x38,0xf0]
orn.t %d15, %d15, 24, %d14, 0

# CHECK-INST: orn.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0x07,0xef,0xb8,0xf3]
orn.t %d15, %d15, 24, %d14, 7

# CHECK-INST: orn.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0x07,0xef,0x38,0xfc]
orn.t %d15, %d15, 24, %d14, 24

# CHECK-INST: orn.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0x07,0xef,0xb8,0xff]
orn.t %d15, %d15, 24, %d14, 31

# CHECK-INST: orn.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0x07,0xff,0x38,0xf0]
orn.t %d15, %d15, 24, %d15, 0

# CHECK-INST: orn.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0x07,0xff,0xb8,0xf3]
orn.t %d15, %d15, 24, %d15, 7

# CHECK-INST: orn.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0x07,0xff,0x38,0xfc]
orn.t %d15, %d15, 24, %d15, 24

# CHECK-INST: orn.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0x07,0xff,0xb8,0xff]
orn.t %d15, %d15, 24, %d15, 31

# CHECK-INST: orn.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x3f,0xf0]
orn.t %d15, %d15, 31, %d0, 0

# CHECK-INST: orn.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xbf,0xf3]
orn.t %d15, %d15, 31, %d0, 7

# CHECK-INST: orn.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x3f,0xfc]
orn.t %d15, %d15, 31, %d0, 24

# CHECK-INST: orn.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xbf,0xff]
orn.t %d15, %d15, 31, %d0, 31

# CHECK-INST: orn.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x3f,0xf0]
orn.t %d15, %d15, 31, %d1, 0

# CHECK-INST: orn.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xbf,0xf3]
orn.t %d15, %d15, 31, %d1, 7

# CHECK-INST: orn.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x3f,0xfc]
orn.t %d15, %d15, 31, %d1, 24

# CHECK-INST: orn.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xbf,0xff]
orn.t %d15, %d15, 31, %d1, 31

# CHECK-INST: orn.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0x07,0xef,0x3f,0xf0]
orn.t %d15, %d15, 31, %d14, 0

# CHECK-INST: orn.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0x07,0xef,0xbf,0xf3]
orn.t %d15, %d15, 31, %d14, 7

# CHECK-INST: orn.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0x07,0xef,0x3f,0xfc]
orn.t %d15, %d15, 31, %d14, 24

# CHECK-INST: orn.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0x07,0xef,0xbf,0xff]
orn.t %d15, %d15, 31, %d14, 31

# CHECK-INST: orn.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0x07,0xff,0x3f,0xf0]
orn.t %d15, %d15, 31, %d15, 0

# CHECK-INST: orn.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0x07,0xff,0xbf,0xf3]
orn.t %d15, %d15, 31, %d15, 7

# CHECK-INST: orn.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0x07,0xff,0x3f,0xfc]
orn.t %d15, %d15, 31, %d15, 24

# CHECK-INST: orn.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0x07,0xff,0xbf,0xff]
orn.t %d15, %d15, 31, %d15, 31

# CHECK-INST: xnor.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x40,0x00]
xnor.t %d0, %d0, 0, %d0, 0

# CHECK-INST: xnor.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0x07,0x00,0xc0,0x03]
xnor.t %d0, %d0, 0, %d0, 7

# CHECK-INST: xnor.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0x07,0x00,0x40,0x0c]
xnor.t %d0, %d0, 0, %d0, 24

# CHECK-INST: xnor.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0x07,0x00,0xc0,0x0f]
xnor.t %d0, %d0, 0, %d0, 31

# CHECK-INST: xnor.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0x07,0x10,0x40,0x00]
xnor.t %d0, %d0, 0, %d1, 0

# CHECK-INST: xnor.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0x07,0x10,0xc0,0x03]
xnor.t %d0, %d0, 0, %d1, 7

# CHECK-INST: xnor.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0x07,0x10,0x40,0x0c]
xnor.t %d0, %d0, 0, %d1, 24

# CHECK-INST: xnor.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0x07,0x10,0xc0,0x0f]
xnor.t %d0, %d0, 0, %d1, 31

# CHECK-INST: xnor.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x40,0x00]
xnor.t %d0, %d0, 0, %d14, 0

# CHECK-INST: xnor.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xc0,0x03]
xnor.t %d0, %d0, 0, %d14, 7

# CHECK-INST: xnor.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x40,0x0c]
xnor.t %d0, %d0, 0, %d14, 24

# CHECK-INST: xnor.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xc0,0x0f]
xnor.t %d0, %d0, 0, %d14, 31

# CHECK-INST: xnor.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x40,0x00]
xnor.t %d0, %d0, 0, %d15, 0

# CHECK-INST: xnor.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xc0,0x03]
xnor.t %d0, %d0, 0, %d15, 7

# CHECK-INST: xnor.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x40,0x0c]
xnor.t %d0, %d0, 0, %d15, 24

# CHECK-INST: xnor.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xc0,0x0f]
xnor.t %d0, %d0, 0, %d15, 31

# CHECK-INST: xnor.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0x07,0x00,0x47,0x00]
xnor.t %d0, %d0, 7, %d0, 0

# CHECK-INST: xnor.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0x07,0x00,0xc7,0x03]
xnor.t %d0, %d0, 7, %d0, 7

# CHECK-INST: xnor.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0x07,0x00,0x47,0x0c]
xnor.t %d0, %d0, 7, %d0, 24

# CHECK-INST: xnor.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0x07,0x00,0xc7,0x0f]
xnor.t %d0, %d0, 7, %d0, 31

# CHECK-INST: xnor.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0x07,0x10,0x47,0x00]
xnor.t %d0, %d0, 7, %d1, 0

# CHECK-INST: xnor.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0x07,0x10,0xc7,0x03]
xnor.t %d0, %d0, 7, %d1, 7

# CHECK-INST: xnor.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0x07,0x10,0x47,0x0c]
xnor.t %d0, %d0, 7, %d1, 24

# CHECK-INST: xnor.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0x07,0x10,0xc7,0x0f]
xnor.t %d0, %d0, 7, %d1, 31

# CHECK-INST: xnor.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x47,0x00]
xnor.t %d0, %d0, 7, %d14, 0

# CHECK-INST: xnor.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xc7,0x03]
xnor.t %d0, %d0, 7, %d14, 7

# CHECK-INST: xnor.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x47,0x0c]
xnor.t %d0, %d0, 7, %d14, 24

# CHECK-INST: xnor.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xc7,0x0f]
xnor.t %d0, %d0, 7, %d14, 31

# CHECK-INST: xnor.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x47,0x00]
xnor.t %d0, %d0, 7, %d15, 0

# CHECK-INST: xnor.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xc7,0x03]
xnor.t %d0, %d0, 7, %d15, 7

# CHECK-INST: xnor.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x47,0x0c]
xnor.t %d0, %d0, 7, %d15, 24

# CHECK-INST: xnor.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xc7,0x0f]
xnor.t %d0, %d0, 7, %d15, 31

# CHECK-INST: xnor.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0x07,0x00,0x58,0x00]
xnor.t %d0, %d0, 24, %d0, 0

# CHECK-INST: xnor.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0x07,0x00,0xd8,0x03]
xnor.t %d0, %d0, 24, %d0, 7

# CHECK-INST: xnor.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0x07,0x00,0x58,0x0c]
xnor.t %d0, %d0, 24, %d0, 24

# CHECK-INST: xnor.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0x07,0x00,0xd8,0x0f]
xnor.t %d0, %d0, 24, %d0, 31

# CHECK-INST: xnor.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0x07,0x10,0x58,0x00]
xnor.t %d0, %d0, 24, %d1, 0

# CHECK-INST: xnor.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0x07,0x10,0xd8,0x03]
xnor.t %d0, %d0, 24, %d1, 7

# CHECK-INST: xnor.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0x07,0x10,0x58,0x0c]
xnor.t %d0, %d0, 24, %d1, 24

# CHECK-INST: xnor.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0x07,0x10,0xd8,0x0f]
xnor.t %d0, %d0, 24, %d1, 31

# CHECK-INST: xnor.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x58,0x00]
xnor.t %d0, %d0, 24, %d14, 0

# CHECK-INST: xnor.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xd8,0x03]
xnor.t %d0, %d0, 24, %d14, 7

# CHECK-INST: xnor.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x58,0x0c]
xnor.t %d0, %d0, 24, %d14, 24

# CHECK-INST: xnor.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xd8,0x0f]
xnor.t %d0, %d0, 24, %d14, 31

# CHECK-INST: xnor.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x58,0x00]
xnor.t %d0, %d0, 24, %d15, 0

# CHECK-INST: xnor.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xd8,0x03]
xnor.t %d0, %d0, 24, %d15, 7

# CHECK-INST: xnor.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x58,0x0c]
xnor.t %d0, %d0, 24, %d15, 24

# CHECK-INST: xnor.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xd8,0x0f]
xnor.t %d0, %d0, 24, %d15, 31

# CHECK-INST: xnor.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0x07,0x00,0x5f,0x00]
xnor.t %d0, %d0, 31, %d0, 0

# CHECK-INST: xnor.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0x07,0x00,0xdf,0x03]
xnor.t %d0, %d0, 31, %d0, 7

# CHECK-INST: xnor.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0x07,0x00,0x5f,0x0c]
xnor.t %d0, %d0, 31, %d0, 24

# CHECK-INST: xnor.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0x07,0x00,0xdf,0x0f]
xnor.t %d0, %d0, 31, %d0, 31

# CHECK-INST: xnor.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0x07,0x10,0x5f,0x00]
xnor.t %d0, %d0, 31, %d1, 0

# CHECK-INST: xnor.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0x07,0x10,0xdf,0x03]
xnor.t %d0, %d0, 31, %d1, 7

# CHECK-INST: xnor.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0x07,0x10,0x5f,0x0c]
xnor.t %d0, %d0, 31, %d1, 24

# CHECK-INST: xnor.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0x07,0x10,0xdf,0x0f]
xnor.t %d0, %d0, 31, %d1, 31

# CHECK-INST: xnor.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x5f,0x00]
xnor.t %d0, %d0, 31, %d14, 0

# CHECK-INST: xnor.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xdf,0x03]
xnor.t %d0, %d0, 31, %d14, 7

# CHECK-INST: xnor.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x5f,0x0c]
xnor.t %d0, %d0, 31, %d14, 24

# CHECK-INST: xnor.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xdf,0x0f]
xnor.t %d0, %d0, 31, %d14, 31

# CHECK-INST: xnor.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x5f,0x00]
xnor.t %d0, %d0, 31, %d15, 0

# CHECK-INST: xnor.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xdf,0x03]
xnor.t %d0, %d0, 31, %d15, 7

# CHECK-INST: xnor.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x5f,0x0c]
xnor.t %d0, %d0, 31, %d15, 24

# CHECK-INST: xnor.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xdf,0x0f]
xnor.t %d0, %d0, 31, %d15, 31

# CHECK-INST: xnor.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0x07,0x01,0x40,0x00]
xnor.t %d0, %d1, 0, %d0, 0

# CHECK-INST: xnor.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0x07,0x01,0xc0,0x03]
xnor.t %d0, %d1, 0, %d0, 7

# CHECK-INST: xnor.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0x07,0x01,0x40,0x0c]
xnor.t %d0, %d1, 0, %d0, 24

# CHECK-INST: xnor.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0x07,0x01,0xc0,0x0f]
xnor.t %d0, %d1, 0, %d0, 31

# CHECK-INST: xnor.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0x07,0x11,0x40,0x00]
xnor.t %d0, %d1, 0, %d1, 0

# CHECK-INST: xnor.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0x07,0x11,0xc0,0x03]
xnor.t %d0, %d1, 0, %d1, 7

# CHECK-INST: xnor.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0x07,0x11,0x40,0x0c]
xnor.t %d0, %d1, 0, %d1, 24

# CHECK-INST: xnor.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0x07,0x11,0xc0,0x0f]
xnor.t %d0, %d1, 0, %d1, 31

# CHECK-INST: xnor.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x40,0x00]
xnor.t %d0, %d1, 0, %d14, 0

# CHECK-INST: xnor.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xc0,0x03]
xnor.t %d0, %d1, 0, %d14, 7

# CHECK-INST: xnor.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x40,0x0c]
xnor.t %d0, %d1, 0, %d14, 24

# CHECK-INST: xnor.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xc0,0x0f]
xnor.t %d0, %d1, 0, %d14, 31

# CHECK-INST: xnor.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x40,0x00]
xnor.t %d0, %d1, 0, %d15, 0

# CHECK-INST: xnor.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xc0,0x03]
xnor.t %d0, %d1, 0, %d15, 7

# CHECK-INST: xnor.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x40,0x0c]
xnor.t %d0, %d1, 0, %d15, 24

# CHECK-INST: xnor.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xc0,0x0f]
xnor.t %d0, %d1, 0, %d15, 31

# CHECK-INST: xnor.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0x07,0x01,0x47,0x00]
xnor.t %d0, %d1, 7, %d0, 0

# CHECK-INST: xnor.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0x07,0x01,0xc7,0x03]
xnor.t %d0, %d1, 7, %d0, 7

# CHECK-INST: xnor.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0x07,0x01,0x47,0x0c]
xnor.t %d0, %d1, 7, %d0, 24

# CHECK-INST: xnor.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0x07,0x01,0xc7,0x0f]
xnor.t %d0, %d1, 7, %d0, 31

# CHECK-INST: xnor.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0x07,0x11,0x47,0x00]
xnor.t %d0, %d1, 7, %d1, 0

# CHECK-INST: xnor.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0x07,0x11,0xc7,0x03]
xnor.t %d0, %d1, 7, %d1, 7

# CHECK-INST: xnor.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0x07,0x11,0x47,0x0c]
xnor.t %d0, %d1, 7, %d1, 24

# CHECK-INST: xnor.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0x07,0x11,0xc7,0x0f]
xnor.t %d0, %d1, 7, %d1, 31

# CHECK-INST: xnor.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x47,0x00]
xnor.t %d0, %d1, 7, %d14, 0

# CHECK-INST: xnor.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xc7,0x03]
xnor.t %d0, %d1, 7, %d14, 7

# CHECK-INST: xnor.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x47,0x0c]
xnor.t %d0, %d1, 7, %d14, 24

# CHECK-INST: xnor.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xc7,0x0f]
xnor.t %d0, %d1, 7, %d14, 31

# CHECK-INST: xnor.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x47,0x00]
xnor.t %d0, %d1, 7, %d15, 0

# CHECK-INST: xnor.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xc7,0x03]
xnor.t %d0, %d1, 7, %d15, 7

# CHECK-INST: xnor.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x47,0x0c]
xnor.t %d0, %d1, 7, %d15, 24

# CHECK-INST: xnor.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xc7,0x0f]
xnor.t %d0, %d1, 7, %d15, 31

# CHECK-INST: xnor.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0x07,0x01,0x58,0x00]
xnor.t %d0, %d1, 24, %d0, 0

# CHECK-INST: xnor.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0x07,0x01,0xd8,0x03]
xnor.t %d0, %d1, 24, %d0, 7

# CHECK-INST: xnor.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0x07,0x01,0x58,0x0c]
xnor.t %d0, %d1, 24, %d0, 24

# CHECK-INST: xnor.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0x07,0x01,0xd8,0x0f]
xnor.t %d0, %d1, 24, %d0, 31

# CHECK-INST: xnor.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0x07,0x11,0x58,0x00]
xnor.t %d0, %d1, 24, %d1, 0

# CHECK-INST: xnor.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0x07,0x11,0xd8,0x03]
xnor.t %d0, %d1, 24, %d1, 7

# CHECK-INST: xnor.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0x07,0x11,0x58,0x0c]
xnor.t %d0, %d1, 24, %d1, 24

# CHECK-INST: xnor.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0x07,0x11,0xd8,0x0f]
xnor.t %d0, %d1, 24, %d1, 31

# CHECK-INST: xnor.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x58,0x00]
xnor.t %d0, %d1, 24, %d14, 0

# CHECK-INST: xnor.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xd8,0x03]
xnor.t %d0, %d1, 24, %d14, 7

# CHECK-INST: xnor.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x58,0x0c]
xnor.t %d0, %d1, 24, %d14, 24

# CHECK-INST: xnor.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xd8,0x0f]
xnor.t %d0, %d1, 24, %d14, 31

# CHECK-INST: xnor.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x58,0x00]
xnor.t %d0, %d1, 24, %d15, 0

# CHECK-INST: xnor.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xd8,0x03]
xnor.t %d0, %d1, 24, %d15, 7

# CHECK-INST: xnor.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x58,0x0c]
xnor.t %d0, %d1, 24, %d15, 24

# CHECK-INST: xnor.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xd8,0x0f]
xnor.t %d0, %d1, 24, %d15, 31

# CHECK-INST: xnor.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0x07,0x01,0x5f,0x00]
xnor.t %d0, %d1, 31, %d0, 0

# CHECK-INST: xnor.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0x07,0x01,0xdf,0x03]
xnor.t %d0, %d1, 31, %d0, 7

# CHECK-INST: xnor.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0x07,0x01,0x5f,0x0c]
xnor.t %d0, %d1, 31, %d0, 24

# CHECK-INST: xnor.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0x07,0x01,0xdf,0x0f]
xnor.t %d0, %d1, 31, %d0, 31

# CHECK-INST: xnor.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0x07,0x11,0x5f,0x00]
xnor.t %d0, %d1, 31, %d1, 0

# CHECK-INST: xnor.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0x07,0x11,0xdf,0x03]
xnor.t %d0, %d1, 31, %d1, 7

# CHECK-INST: xnor.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0x07,0x11,0x5f,0x0c]
xnor.t %d0, %d1, 31, %d1, 24

# CHECK-INST: xnor.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0x07,0x11,0xdf,0x0f]
xnor.t %d0, %d1, 31, %d1, 31

# CHECK-INST: xnor.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x5f,0x00]
xnor.t %d0, %d1, 31, %d14, 0

# CHECK-INST: xnor.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xdf,0x03]
xnor.t %d0, %d1, 31, %d14, 7

# CHECK-INST: xnor.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x5f,0x0c]
xnor.t %d0, %d1, 31, %d14, 24

# CHECK-INST: xnor.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xdf,0x0f]
xnor.t %d0, %d1, 31, %d14, 31

# CHECK-INST: xnor.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x5f,0x00]
xnor.t %d0, %d1, 31, %d15, 0

# CHECK-INST: xnor.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xdf,0x03]
xnor.t %d0, %d1, 31, %d15, 7

# CHECK-INST: xnor.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x5f,0x0c]
xnor.t %d0, %d1, 31, %d15, 24

# CHECK-INST: xnor.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xdf,0x0f]
xnor.t %d0, %d1, 31, %d15, 31

# CHECK-INST: xnor.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x40,0x00]
xnor.t %d0, %d14, 0, %d0, 0

# CHECK-INST: xnor.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xc0,0x03]
xnor.t %d0, %d14, 0, %d0, 7

# CHECK-INST: xnor.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x40,0x0c]
xnor.t %d0, %d14, 0, %d0, 24

# CHECK-INST: xnor.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xc0,0x0f]
xnor.t %d0, %d14, 0, %d0, 31

# CHECK-INST: xnor.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x40,0x00]
xnor.t %d0, %d14, 0, %d1, 0

# CHECK-INST: xnor.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xc0,0x03]
xnor.t %d0, %d14, 0, %d1, 7

# CHECK-INST: xnor.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x40,0x0c]
xnor.t %d0, %d14, 0, %d1, 24

# CHECK-INST: xnor.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xc0,0x0f]
xnor.t %d0, %d14, 0, %d1, 31

# CHECK-INST: xnor.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0x07,0xee,0x40,0x00]
xnor.t %d0, %d14, 0, %d14, 0

# CHECK-INST: xnor.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0x07,0xee,0xc0,0x03]
xnor.t %d0, %d14, 0, %d14, 7

# CHECK-INST: xnor.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0x07,0xee,0x40,0x0c]
xnor.t %d0, %d14, 0, %d14, 24

# CHECK-INST: xnor.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0x07,0xee,0xc0,0x0f]
xnor.t %d0, %d14, 0, %d14, 31

# CHECK-INST: xnor.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x40,0x00]
xnor.t %d0, %d14, 0, %d15, 0

# CHECK-INST: xnor.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xc0,0x03]
xnor.t %d0, %d14, 0, %d15, 7

# CHECK-INST: xnor.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x40,0x0c]
xnor.t %d0, %d14, 0, %d15, 24

# CHECK-INST: xnor.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xc0,0x0f]
xnor.t %d0, %d14, 0, %d15, 31

# CHECK-INST: xnor.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x47,0x00]
xnor.t %d0, %d14, 7, %d0, 0

# CHECK-INST: xnor.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xc7,0x03]
xnor.t %d0, %d14, 7, %d0, 7

# CHECK-INST: xnor.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x47,0x0c]
xnor.t %d0, %d14, 7, %d0, 24

# CHECK-INST: xnor.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xc7,0x0f]
xnor.t %d0, %d14, 7, %d0, 31

# CHECK-INST: xnor.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x47,0x00]
xnor.t %d0, %d14, 7, %d1, 0

# CHECK-INST: xnor.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xc7,0x03]
xnor.t %d0, %d14, 7, %d1, 7

# CHECK-INST: xnor.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x47,0x0c]
xnor.t %d0, %d14, 7, %d1, 24

# CHECK-INST: xnor.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xc7,0x0f]
xnor.t %d0, %d14, 7, %d1, 31

# CHECK-INST: xnor.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0x07,0xee,0x47,0x00]
xnor.t %d0, %d14, 7, %d14, 0

# CHECK-INST: xnor.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0x07,0xee,0xc7,0x03]
xnor.t %d0, %d14, 7, %d14, 7

# CHECK-INST: xnor.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0x07,0xee,0x47,0x0c]
xnor.t %d0, %d14, 7, %d14, 24

# CHECK-INST: xnor.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0x07,0xee,0xc7,0x0f]
xnor.t %d0, %d14, 7, %d14, 31

# CHECK-INST: xnor.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x47,0x00]
xnor.t %d0, %d14, 7, %d15, 0

# CHECK-INST: xnor.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xc7,0x03]
xnor.t %d0, %d14, 7, %d15, 7

# CHECK-INST: xnor.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x47,0x0c]
xnor.t %d0, %d14, 7, %d15, 24

# CHECK-INST: xnor.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xc7,0x0f]
xnor.t %d0, %d14, 7, %d15, 31

# CHECK-INST: xnor.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x58,0x00]
xnor.t %d0, %d14, 24, %d0, 0

# CHECK-INST: xnor.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xd8,0x03]
xnor.t %d0, %d14, 24, %d0, 7

# CHECK-INST: xnor.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x58,0x0c]
xnor.t %d0, %d14, 24, %d0, 24

# CHECK-INST: xnor.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xd8,0x0f]
xnor.t %d0, %d14, 24, %d0, 31

# CHECK-INST: xnor.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x58,0x00]
xnor.t %d0, %d14, 24, %d1, 0

# CHECK-INST: xnor.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xd8,0x03]
xnor.t %d0, %d14, 24, %d1, 7

# CHECK-INST: xnor.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x58,0x0c]
xnor.t %d0, %d14, 24, %d1, 24

# CHECK-INST: xnor.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xd8,0x0f]
xnor.t %d0, %d14, 24, %d1, 31

# CHECK-INST: xnor.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0x07,0xee,0x58,0x00]
xnor.t %d0, %d14, 24, %d14, 0

# CHECK-INST: xnor.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0x07,0xee,0xd8,0x03]
xnor.t %d0, %d14, 24, %d14, 7

# CHECK-INST: xnor.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0x07,0xee,0x58,0x0c]
xnor.t %d0, %d14, 24, %d14, 24

# CHECK-INST: xnor.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0x07,0xee,0xd8,0x0f]
xnor.t %d0, %d14, 24, %d14, 31

# CHECK-INST: xnor.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x58,0x00]
xnor.t %d0, %d14, 24, %d15, 0

# CHECK-INST: xnor.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xd8,0x03]
xnor.t %d0, %d14, 24, %d15, 7

# CHECK-INST: xnor.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x58,0x0c]
xnor.t %d0, %d14, 24, %d15, 24

# CHECK-INST: xnor.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xd8,0x0f]
xnor.t %d0, %d14, 24, %d15, 31

# CHECK-INST: xnor.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x5f,0x00]
xnor.t %d0, %d14, 31, %d0, 0

# CHECK-INST: xnor.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xdf,0x03]
xnor.t %d0, %d14, 31, %d0, 7

# CHECK-INST: xnor.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x5f,0x0c]
xnor.t %d0, %d14, 31, %d0, 24

# CHECK-INST: xnor.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xdf,0x0f]
xnor.t %d0, %d14, 31, %d0, 31

# CHECK-INST: xnor.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x5f,0x00]
xnor.t %d0, %d14, 31, %d1, 0

# CHECK-INST: xnor.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xdf,0x03]
xnor.t %d0, %d14, 31, %d1, 7

# CHECK-INST: xnor.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x5f,0x0c]
xnor.t %d0, %d14, 31, %d1, 24

# CHECK-INST: xnor.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xdf,0x0f]
xnor.t %d0, %d14, 31, %d1, 31

# CHECK-INST: xnor.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0x07,0xee,0x5f,0x00]
xnor.t %d0, %d14, 31, %d14, 0

# CHECK-INST: xnor.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0x07,0xee,0xdf,0x03]
xnor.t %d0, %d14, 31, %d14, 7

# CHECK-INST: xnor.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0x07,0xee,0x5f,0x0c]
xnor.t %d0, %d14, 31, %d14, 24

# CHECK-INST: xnor.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0x07,0xee,0xdf,0x0f]
xnor.t %d0, %d14, 31, %d14, 31

# CHECK-INST: xnor.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x5f,0x00]
xnor.t %d0, %d14, 31, %d15, 0

# CHECK-INST: xnor.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xdf,0x03]
xnor.t %d0, %d14, 31, %d15, 7

# CHECK-INST: xnor.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x5f,0x0c]
xnor.t %d0, %d14, 31, %d15, 24

# CHECK-INST: xnor.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xdf,0x0f]
xnor.t %d0, %d14, 31, %d15, 31

# CHECK-INST: xnor.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x40,0x00]
xnor.t %d0, %d15, 0, %d0, 0

# CHECK-INST: xnor.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xc0,0x03]
xnor.t %d0, %d15, 0, %d0, 7

# CHECK-INST: xnor.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x40,0x0c]
xnor.t %d0, %d15, 0, %d0, 24

# CHECK-INST: xnor.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xc0,0x0f]
xnor.t %d0, %d15, 0, %d0, 31

# CHECK-INST: xnor.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x40,0x00]
xnor.t %d0, %d15, 0, %d1, 0

# CHECK-INST: xnor.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xc0,0x03]
xnor.t %d0, %d15, 0, %d1, 7

# CHECK-INST: xnor.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x40,0x0c]
xnor.t %d0, %d15, 0, %d1, 24

# CHECK-INST: xnor.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xc0,0x0f]
xnor.t %d0, %d15, 0, %d1, 31

# CHECK-INST: xnor.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0x07,0xef,0x40,0x00]
xnor.t %d0, %d15, 0, %d14, 0

# CHECK-INST: xnor.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0x07,0xef,0xc0,0x03]
xnor.t %d0, %d15, 0, %d14, 7

# CHECK-INST: xnor.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0x07,0xef,0x40,0x0c]
xnor.t %d0, %d15, 0, %d14, 24

# CHECK-INST: xnor.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0x07,0xef,0xc0,0x0f]
xnor.t %d0, %d15, 0, %d14, 31

# CHECK-INST: xnor.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0x07,0xff,0x40,0x00]
xnor.t %d0, %d15, 0, %d15, 0

# CHECK-INST: xnor.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0x07,0xff,0xc0,0x03]
xnor.t %d0, %d15, 0, %d15, 7

# CHECK-INST: xnor.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0x07,0xff,0x40,0x0c]
xnor.t %d0, %d15, 0, %d15, 24

# CHECK-INST: xnor.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0x07,0xff,0xc0,0x0f]
xnor.t %d0, %d15, 0, %d15, 31

# CHECK-INST: xnor.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x47,0x00]
xnor.t %d0, %d15, 7, %d0, 0

# CHECK-INST: xnor.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xc7,0x03]
xnor.t %d0, %d15, 7, %d0, 7

# CHECK-INST: xnor.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x47,0x0c]
xnor.t %d0, %d15, 7, %d0, 24

# CHECK-INST: xnor.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xc7,0x0f]
xnor.t %d0, %d15, 7, %d0, 31

# CHECK-INST: xnor.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x47,0x00]
xnor.t %d0, %d15, 7, %d1, 0

# CHECK-INST: xnor.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xc7,0x03]
xnor.t %d0, %d15, 7, %d1, 7

# CHECK-INST: xnor.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x47,0x0c]
xnor.t %d0, %d15, 7, %d1, 24

# CHECK-INST: xnor.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xc7,0x0f]
xnor.t %d0, %d15, 7, %d1, 31

# CHECK-INST: xnor.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0x07,0xef,0x47,0x00]
xnor.t %d0, %d15, 7, %d14, 0

# CHECK-INST: xnor.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0x07,0xef,0xc7,0x03]
xnor.t %d0, %d15, 7, %d14, 7

# CHECK-INST: xnor.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0x07,0xef,0x47,0x0c]
xnor.t %d0, %d15, 7, %d14, 24

# CHECK-INST: xnor.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0x07,0xef,0xc7,0x0f]
xnor.t %d0, %d15, 7, %d14, 31

# CHECK-INST: xnor.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0x07,0xff,0x47,0x00]
xnor.t %d0, %d15, 7, %d15, 0

# CHECK-INST: xnor.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0x07,0xff,0xc7,0x03]
xnor.t %d0, %d15, 7, %d15, 7

# CHECK-INST: xnor.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0x07,0xff,0x47,0x0c]
xnor.t %d0, %d15, 7, %d15, 24

# CHECK-INST: xnor.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0x07,0xff,0xc7,0x0f]
xnor.t %d0, %d15, 7, %d15, 31

# CHECK-INST: xnor.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x58,0x00]
xnor.t %d0, %d15, 24, %d0, 0

# CHECK-INST: xnor.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xd8,0x03]
xnor.t %d0, %d15, 24, %d0, 7

# CHECK-INST: xnor.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x58,0x0c]
xnor.t %d0, %d15, 24, %d0, 24

# CHECK-INST: xnor.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xd8,0x0f]
xnor.t %d0, %d15, 24, %d0, 31

# CHECK-INST: xnor.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x58,0x00]
xnor.t %d0, %d15, 24, %d1, 0

# CHECK-INST: xnor.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xd8,0x03]
xnor.t %d0, %d15, 24, %d1, 7

# CHECK-INST: xnor.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x58,0x0c]
xnor.t %d0, %d15, 24, %d1, 24

# CHECK-INST: xnor.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xd8,0x0f]
xnor.t %d0, %d15, 24, %d1, 31

# CHECK-INST: xnor.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0x07,0xef,0x58,0x00]
xnor.t %d0, %d15, 24, %d14, 0

# CHECK-INST: xnor.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0x07,0xef,0xd8,0x03]
xnor.t %d0, %d15, 24, %d14, 7

# CHECK-INST: xnor.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0x07,0xef,0x58,0x0c]
xnor.t %d0, %d15, 24, %d14, 24

# CHECK-INST: xnor.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0x07,0xef,0xd8,0x0f]
xnor.t %d0, %d15, 24, %d14, 31

# CHECK-INST: xnor.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0x07,0xff,0x58,0x00]
xnor.t %d0, %d15, 24, %d15, 0

# CHECK-INST: xnor.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0x07,0xff,0xd8,0x03]
xnor.t %d0, %d15, 24, %d15, 7

# CHECK-INST: xnor.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0x07,0xff,0x58,0x0c]
xnor.t %d0, %d15, 24, %d15, 24

# CHECK-INST: xnor.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0x07,0xff,0xd8,0x0f]
xnor.t %d0, %d15, 24, %d15, 31

# CHECK-INST: xnor.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x5f,0x00]
xnor.t %d0, %d15, 31, %d0, 0

# CHECK-INST: xnor.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xdf,0x03]
xnor.t %d0, %d15, 31, %d0, 7

# CHECK-INST: xnor.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x5f,0x0c]
xnor.t %d0, %d15, 31, %d0, 24

# CHECK-INST: xnor.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xdf,0x0f]
xnor.t %d0, %d15, 31, %d0, 31

# CHECK-INST: xnor.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x5f,0x00]
xnor.t %d0, %d15, 31, %d1, 0

# CHECK-INST: xnor.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xdf,0x03]
xnor.t %d0, %d15, 31, %d1, 7

# CHECK-INST: xnor.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x5f,0x0c]
xnor.t %d0, %d15, 31, %d1, 24

# CHECK-INST: xnor.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xdf,0x0f]
xnor.t %d0, %d15, 31, %d1, 31

# CHECK-INST: xnor.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0x07,0xef,0x5f,0x00]
xnor.t %d0, %d15, 31, %d14, 0

# CHECK-INST: xnor.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0x07,0xef,0xdf,0x03]
xnor.t %d0, %d15, 31, %d14, 7

# CHECK-INST: xnor.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0x07,0xef,0x5f,0x0c]
xnor.t %d0, %d15, 31, %d14, 24

# CHECK-INST: xnor.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0x07,0xef,0xdf,0x0f]
xnor.t %d0, %d15, 31, %d14, 31

# CHECK-INST: xnor.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0x07,0xff,0x5f,0x00]
xnor.t %d0, %d15, 31, %d15, 0

# CHECK-INST: xnor.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0x07,0xff,0xdf,0x03]
xnor.t %d0, %d15, 31, %d15, 7

# CHECK-INST: xnor.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0x07,0xff,0x5f,0x0c]
xnor.t %d0, %d15, 31, %d15, 24

# CHECK-INST: xnor.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0x07,0xff,0xdf,0x0f]
xnor.t %d0, %d15, 31, %d15, 31

# CHECK-INST: xnor.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x40,0x10]
xnor.t %d1, %d0, 0, %d0, 0

# CHECK-INST: xnor.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0x07,0x00,0xc0,0x13]
xnor.t %d1, %d0, 0, %d0, 7

# CHECK-INST: xnor.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0x07,0x00,0x40,0x1c]
xnor.t %d1, %d0, 0, %d0, 24

# CHECK-INST: xnor.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0x07,0x00,0xc0,0x1f]
xnor.t %d1, %d0, 0, %d0, 31

# CHECK-INST: xnor.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0x07,0x10,0x40,0x10]
xnor.t %d1, %d0, 0, %d1, 0

# CHECK-INST: xnor.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0x07,0x10,0xc0,0x13]
xnor.t %d1, %d0, 0, %d1, 7

# CHECK-INST: xnor.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0x07,0x10,0x40,0x1c]
xnor.t %d1, %d0, 0, %d1, 24

# CHECK-INST: xnor.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0x07,0x10,0xc0,0x1f]
xnor.t %d1, %d0, 0, %d1, 31

# CHECK-INST: xnor.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x40,0x10]
xnor.t %d1, %d0, 0, %d14, 0

# CHECK-INST: xnor.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xc0,0x13]
xnor.t %d1, %d0, 0, %d14, 7

# CHECK-INST: xnor.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x40,0x1c]
xnor.t %d1, %d0, 0, %d14, 24

# CHECK-INST: xnor.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xc0,0x1f]
xnor.t %d1, %d0, 0, %d14, 31

# CHECK-INST: xnor.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x40,0x10]
xnor.t %d1, %d0, 0, %d15, 0

# CHECK-INST: xnor.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xc0,0x13]
xnor.t %d1, %d0, 0, %d15, 7

# CHECK-INST: xnor.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x40,0x1c]
xnor.t %d1, %d0, 0, %d15, 24

# CHECK-INST: xnor.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xc0,0x1f]
xnor.t %d1, %d0, 0, %d15, 31

# CHECK-INST: xnor.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0x07,0x00,0x47,0x10]
xnor.t %d1, %d0, 7, %d0, 0

# CHECK-INST: xnor.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0x07,0x00,0xc7,0x13]
xnor.t %d1, %d0, 7, %d0, 7

# CHECK-INST: xnor.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0x07,0x00,0x47,0x1c]
xnor.t %d1, %d0, 7, %d0, 24

# CHECK-INST: xnor.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0x07,0x00,0xc7,0x1f]
xnor.t %d1, %d0, 7, %d0, 31

# CHECK-INST: xnor.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0x07,0x10,0x47,0x10]
xnor.t %d1, %d0, 7, %d1, 0

# CHECK-INST: xnor.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0x07,0x10,0xc7,0x13]
xnor.t %d1, %d0, 7, %d1, 7

# CHECK-INST: xnor.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0x07,0x10,0x47,0x1c]
xnor.t %d1, %d0, 7, %d1, 24

# CHECK-INST: xnor.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0x07,0x10,0xc7,0x1f]
xnor.t %d1, %d0, 7, %d1, 31

# CHECK-INST: xnor.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x47,0x10]
xnor.t %d1, %d0, 7, %d14, 0

# CHECK-INST: xnor.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xc7,0x13]
xnor.t %d1, %d0, 7, %d14, 7

# CHECK-INST: xnor.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x47,0x1c]
xnor.t %d1, %d0, 7, %d14, 24

# CHECK-INST: xnor.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xc7,0x1f]
xnor.t %d1, %d0, 7, %d14, 31

# CHECK-INST: xnor.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x47,0x10]
xnor.t %d1, %d0, 7, %d15, 0

# CHECK-INST: xnor.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xc7,0x13]
xnor.t %d1, %d0, 7, %d15, 7

# CHECK-INST: xnor.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x47,0x1c]
xnor.t %d1, %d0, 7, %d15, 24

# CHECK-INST: xnor.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xc7,0x1f]
xnor.t %d1, %d0, 7, %d15, 31

# CHECK-INST: xnor.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0x07,0x00,0x58,0x10]
xnor.t %d1, %d0, 24, %d0, 0

# CHECK-INST: xnor.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0x07,0x00,0xd8,0x13]
xnor.t %d1, %d0, 24, %d0, 7

# CHECK-INST: xnor.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0x07,0x00,0x58,0x1c]
xnor.t %d1, %d0, 24, %d0, 24

# CHECK-INST: xnor.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0x07,0x00,0xd8,0x1f]
xnor.t %d1, %d0, 24, %d0, 31

# CHECK-INST: xnor.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0x07,0x10,0x58,0x10]
xnor.t %d1, %d0, 24, %d1, 0

# CHECK-INST: xnor.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0x07,0x10,0xd8,0x13]
xnor.t %d1, %d0, 24, %d1, 7

# CHECK-INST: xnor.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0x07,0x10,0x58,0x1c]
xnor.t %d1, %d0, 24, %d1, 24

# CHECK-INST: xnor.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0x07,0x10,0xd8,0x1f]
xnor.t %d1, %d0, 24, %d1, 31

# CHECK-INST: xnor.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x58,0x10]
xnor.t %d1, %d0, 24, %d14, 0

# CHECK-INST: xnor.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xd8,0x13]
xnor.t %d1, %d0, 24, %d14, 7

# CHECK-INST: xnor.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x58,0x1c]
xnor.t %d1, %d0, 24, %d14, 24

# CHECK-INST: xnor.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xd8,0x1f]
xnor.t %d1, %d0, 24, %d14, 31

# CHECK-INST: xnor.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x58,0x10]
xnor.t %d1, %d0, 24, %d15, 0

# CHECK-INST: xnor.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xd8,0x13]
xnor.t %d1, %d0, 24, %d15, 7

# CHECK-INST: xnor.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x58,0x1c]
xnor.t %d1, %d0, 24, %d15, 24

# CHECK-INST: xnor.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xd8,0x1f]
xnor.t %d1, %d0, 24, %d15, 31

# CHECK-INST: xnor.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0x07,0x00,0x5f,0x10]
xnor.t %d1, %d0, 31, %d0, 0

# CHECK-INST: xnor.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0x07,0x00,0xdf,0x13]
xnor.t %d1, %d0, 31, %d0, 7

# CHECK-INST: xnor.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0x07,0x00,0x5f,0x1c]
xnor.t %d1, %d0, 31, %d0, 24

# CHECK-INST: xnor.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0x07,0x00,0xdf,0x1f]
xnor.t %d1, %d0, 31, %d0, 31

# CHECK-INST: xnor.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0x07,0x10,0x5f,0x10]
xnor.t %d1, %d0, 31, %d1, 0

# CHECK-INST: xnor.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0x07,0x10,0xdf,0x13]
xnor.t %d1, %d0, 31, %d1, 7

# CHECK-INST: xnor.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0x07,0x10,0x5f,0x1c]
xnor.t %d1, %d0, 31, %d1, 24

# CHECK-INST: xnor.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0x07,0x10,0xdf,0x1f]
xnor.t %d1, %d0, 31, %d1, 31

# CHECK-INST: xnor.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x5f,0x10]
xnor.t %d1, %d0, 31, %d14, 0

# CHECK-INST: xnor.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xdf,0x13]
xnor.t %d1, %d0, 31, %d14, 7

# CHECK-INST: xnor.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x5f,0x1c]
xnor.t %d1, %d0, 31, %d14, 24

# CHECK-INST: xnor.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xdf,0x1f]
xnor.t %d1, %d0, 31, %d14, 31

# CHECK-INST: xnor.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x5f,0x10]
xnor.t %d1, %d0, 31, %d15, 0

# CHECK-INST: xnor.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xdf,0x13]
xnor.t %d1, %d0, 31, %d15, 7

# CHECK-INST: xnor.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x5f,0x1c]
xnor.t %d1, %d0, 31, %d15, 24

# CHECK-INST: xnor.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xdf,0x1f]
xnor.t %d1, %d0, 31, %d15, 31

# CHECK-INST: xnor.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0x07,0x01,0x40,0x10]
xnor.t %d1, %d1, 0, %d0, 0

# CHECK-INST: xnor.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0x07,0x01,0xc0,0x13]
xnor.t %d1, %d1, 0, %d0, 7

# CHECK-INST: xnor.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0x07,0x01,0x40,0x1c]
xnor.t %d1, %d1, 0, %d0, 24

# CHECK-INST: xnor.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0x07,0x01,0xc0,0x1f]
xnor.t %d1, %d1, 0, %d0, 31

# CHECK-INST: xnor.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0x07,0x11,0x40,0x10]
xnor.t %d1, %d1, 0, %d1, 0

# CHECK-INST: xnor.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0x07,0x11,0xc0,0x13]
xnor.t %d1, %d1, 0, %d1, 7

# CHECK-INST: xnor.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0x07,0x11,0x40,0x1c]
xnor.t %d1, %d1, 0, %d1, 24

# CHECK-INST: xnor.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0x07,0x11,0xc0,0x1f]
xnor.t %d1, %d1, 0, %d1, 31

# CHECK-INST: xnor.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x40,0x10]
xnor.t %d1, %d1, 0, %d14, 0

# CHECK-INST: xnor.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xc0,0x13]
xnor.t %d1, %d1, 0, %d14, 7

# CHECK-INST: xnor.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x40,0x1c]
xnor.t %d1, %d1, 0, %d14, 24

# CHECK-INST: xnor.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xc0,0x1f]
xnor.t %d1, %d1, 0, %d14, 31

# CHECK-INST: xnor.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x40,0x10]
xnor.t %d1, %d1, 0, %d15, 0

# CHECK-INST: xnor.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xc0,0x13]
xnor.t %d1, %d1, 0, %d15, 7

# CHECK-INST: xnor.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x40,0x1c]
xnor.t %d1, %d1, 0, %d15, 24

# CHECK-INST: xnor.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xc0,0x1f]
xnor.t %d1, %d1, 0, %d15, 31

# CHECK-INST: xnor.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0x07,0x01,0x47,0x10]
xnor.t %d1, %d1, 7, %d0, 0

# CHECK-INST: xnor.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0x07,0x01,0xc7,0x13]
xnor.t %d1, %d1, 7, %d0, 7

# CHECK-INST: xnor.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0x07,0x01,0x47,0x1c]
xnor.t %d1, %d1, 7, %d0, 24

# CHECK-INST: xnor.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0x07,0x01,0xc7,0x1f]
xnor.t %d1, %d1, 7, %d0, 31

# CHECK-INST: xnor.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0x07,0x11,0x47,0x10]
xnor.t %d1, %d1, 7, %d1, 0

# CHECK-INST: xnor.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0x07,0x11,0xc7,0x13]
xnor.t %d1, %d1, 7, %d1, 7

# CHECK-INST: xnor.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0x07,0x11,0x47,0x1c]
xnor.t %d1, %d1, 7, %d1, 24

# CHECK-INST: xnor.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0x07,0x11,0xc7,0x1f]
xnor.t %d1, %d1, 7, %d1, 31

# CHECK-INST: xnor.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x47,0x10]
xnor.t %d1, %d1, 7, %d14, 0

# CHECK-INST: xnor.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xc7,0x13]
xnor.t %d1, %d1, 7, %d14, 7

# CHECK-INST: xnor.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x47,0x1c]
xnor.t %d1, %d1, 7, %d14, 24

# CHECK-INST: xnor.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xc7,0x1f]
xnor.t %d1, %d1, 7, %d14, 31

# CHECK-INST: xnor.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x47,0x10]
xnor.t %d1, %d1, 7, %d15, 0

# CHECK-INST: xnor.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xc7,0x13]
xnor.t %d1, %d1, 7, %d15, 7

# CHECK-INST: xnor.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x47,0x1c]
xnor.t %d1, %d1, 7, %d15, 24

# CHECK-INST: xnor.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xc7,0x1f]
xnor.t %d1, %d1, 7, %d15, 31

# CHECK-INST: xnor.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0x07,0x01,0x58,0x10]
xnor.t %d1, %d1, 24, %d0, 0

# CHECK-INST: xnor.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0x07,0x01,0xd8,0x13]
xnor.t %d1, %d1, 24, %d0, 7

# CHECK-INST: xnor.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0x07,0x01,0x58,0x1c]
xnor.t %d1, %d1, 24, %d0, 24

# CHECK-INST: xnor.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0x07,0x01,0xd8,0x1f]
xnor.t %d1, %d1, 24, %d0, 31

# CHECK-INST: xnor.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0x07,0x11,0x58,0x10]
xnor.t %d1, %d1, 24, %d1, 0

# CHECK-INST: xnor.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0x07,0x11,0xd8,0x13]
xnor.t %d1, %d1, 24, %d1, 7

# CHECK-INST: xnor.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0x07,0x11,0x58,0x1c]
xnor.t %d1, %d1, 24, %d1, 24

# CHECK-INST: xnor.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0x07,0x11,0xd8,0x1f]
xnor.t %d1, %d1, 24, %d1, 31

# CHECK-INST: xnor.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x58,0x10]
xnor.t %d1, %d1, 24, %d14, 0

# CHECK-INST: xnor.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xd8,0x13]
xnor.t %d1, %d1, 24, %d14, 7

# CHECK-INST: xnor.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x58,0x1c]
xnor.t %d1, %d1, 24, %d14, 24

# CHECK-INST: xnor.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xd8,0x1f]
xnor.t %d1, %d1, 24, %d14, 31

# CHECK-INST: xnor.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x58,0x10]
xnor.t %d1, %d1, 24, %d15, 0

# CHECK-INST: xnor.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xd8,0x13]
xnor.t %d1, %d1, 24, %d15, 7

# CHECK-INST: xnor.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x58,0x1c]
xnor.t %d1, %d1, 24, %d15, 24

# CHECK-INST: xnor.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xd8,0x1f]
xnor.t %d1, %d1, 24, %d15, 31

# CHECK-INST: xnor.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0x07,0x01,0x5f,0x10]
xnor.t %d1, %d1, 31, %d0, 0

# CHECK-INST: xnor.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0x07,0x01,0xdf,0x13]
xnor.t %d1, %d1, 31, %d0, 7

# CHECK-INST: xnor.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0x07,0x01,0x5f,0x1c]
xnor.t %d1, %d1, 31, %d0, 24

# CHECK-INST: xnor.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0x07,0x01,0xdf,0x1f]
xnor.t %d1, %d1, 31, %d0, 31

# CHECK-INST: xnor.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0x07,0x11,0x5f,0x10]
xnor.t %d1, %d1, 31, %d1, 0

# CHECK-INST: xnor.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0x07,0x11,0xdf,0x13]
xnor.t %d1, %d1, 31, %d1, 7

# CHECK-INST: xnor.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0x07,0x11,0x5f,0x1c]
xnor.t %d1, %d1, 31, %d1, 24

# CHECK-INST: xnor.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0x07,0x11,0xdf,0x1f]
xnor.t %d1, %d1, 31, %d1, 31

# CHECK-INST: xnor.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x5f,0x10]
xnor.t %d1, %d1, 31, %d14, 0

# CHECK-INST: xnor.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xdf,0x13]
xnor.t %d1, %d1, 31, %d14, 7

# CHECK-INST: xnor.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x5f,0x1c]
xnor.t %d1, %d1, 31, %d14, 24

# CHECK-INST: xnor.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xdf,0x1f]
xnor.t %d1, %d1, 31, %d14, 31

# CHECK-INST: xnor.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x5f,0x10]
xnor.t %d1, %d1, 31, %d15, 0

# CHECK-INST: xnor.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xdf,0x13]
xnor.t %d1, %d1, 31, %d15, 7

# CHECK-INST: xnor.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x5f,0x1c]
xnor.t %d1, %d1, 31, %d15, 24

# CHECK-INST: xnor.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xdf,0x1f]
xnor.t %d1, %d1, 31, %d15, 31

# CHECK-INST: xnor.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x40,0x10]
xnor.t %d1, %d14, 0, %d0, 0

# CHECK-INST: xnor.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xc0,0x13]
xnor.t %d1, %d14, 0, %d0, 7

# CHECK-INST: xnor.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x40,0x1c]
xnor.t %d1, %d14, 0, %d0, 24

# CHECK-INST: xnor.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xc0,0x1f]
xnor.t %d1, %d14, 0, %d0, 31

# CHECK-INST: xnor.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x40,0x10]
xnor.t %d1, %d14, 0, %d1, 0

# CHECK-INST: xnor.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xc0,0x13]
xnor.t %d1, %d14, 0, %d1, 7

# CHECK-INST: xnor.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x40,0x1c]
xnor.t %d1, %d14, 0, %d1, 24

# CHECK-INST: xnor.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xc0,0x1f]
xnor.t %d1, %d14, 0, %d1, 31

# CHECK-INST: xnor.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0x07,0xee,0x40,0x10]
xnor.t %d1, %d14, 0, %d14, 0

# CHECK-INST: xnor.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0x07,0xee,0xc0,0x13]
xnor.t %d1, %d14, 0, %d14, 7

# CHECK-INST: xnor.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0x07,0xee,0x40,0x1c]
xnor.t %d1, %d14, 0, %d14, 24

# CHECK-INST: xnor.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0x07,0xee,0xc0,0x1f]
xnor.t %d1, %d14, 0, %d14, 31

# CHECK-INST: xnor.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x40,0x10]
xnor.t %d1, %d14, 0, %d15, 0

# CHECK-INST: xnor.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xc0,0x13]
xnor.t %d1, %d14, 0, %d15, 7

# CHECK-INST: xnor.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x40,0x1c]
xnor.t %d1, %d14, 0, %d15, 24

# CHECK-INST: xnor.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xc0,0x1f]
xnor.t %d1, %d14, 0, %d15, 31

# CHECK-INST: xnor.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x47,0x10]
xnor.t %d1, %d14, 7, %d0, 0

# CHECK-INST: xnor.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xc7,0x13]
xnor.t %d1, %d14, 7, %d0, 7

# CHECK-INST: xnor.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x47,0x1c]
xnor.t %d1, %d14, 7, %d0, 24

# CHECK-INST: xnor.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xc7,0x1f]
xnor.t %d1, %d14, 7, %d0, 31

# CHECK-INST: xnor.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x47,0x10]
xnor.t %d1, %d14, 7, %d1, 0

# CHECK-INST: xnor.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xc7,0x13]
xnor.t %d1, %d14, 7, %d1, 7

# CHECK-INST: xnor.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x47,0x1c]
xnor.t %d1, %d14, 7, %d1, 24

# CHECK-INST: xnor.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xc7,0x1f]
xnor.t %d1, %d14, 7, %d1, 31

# CHECK-INST: xnor.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0x07,0xee,0x47,0x10]
xnor.t %d1, %d14, 7, %d14, 0

# CHECK-INST: xnor.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0x07,0xee,0xc7,0x13]
xnor.t %d1, %d14, 7, %d14, 7

# CHECK-INST: xnor.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0x07,0xee,0x47,0x1c]
xnor.t %d1, %d14, 7, %d14, 24

# CHECK-INST: xnor.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0x07,0xee,0xc7,0x1f]
xnor.t %d1, %d14, 7, %d14, 31

# CHECK-INST: xnor.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x47,0x10]
xnor.t %d1, %d14, 7, %d15, 0

# CHECK-INST: xnor.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xc7,0x13]
xnor.t %d1, %d14, 7, %d15, 7

# CHECK-INST: xnor.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x47,0x1c]
xnor.t %d1, %d14, 7, %d15, 24

# CHECK-INST: xnor.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xc7,0x1f]
xnor.t %d1, %d14, 7, %d15, 31

# CHECK-INST: xnor.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x58,0x10]
xnor.t %d1, %d14, 24, %d0, 0

# CHECK-INST: xnor.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xd8,0x13]
xnor.t %d1, %d14, 24, %d0, 7

# CHECK-INST: xnor.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x58,0x1c]
xnor.t %d1, %d14, 24, %d0, 24

# CHECK-INST: xnor.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xd8,0x1f]
xnor.t %d1, %d14, 24, %d0, 31

# CHECK-INST: xnor.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x58,0x10]
xnor.t %d1, %d14, 24, %d1, 0

# CHECK-INST: xnor.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xd8,0x13]
xnor.t %d1, %d14, 24, %d1, 7

# CHECK-INST: xnor.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x58,0x1c]
xnor.t %d1, %d14, 24, %d1, 24

# CHECK-INST: xnor.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xd8,0x1f]
xnor.t %d1, %d14, 24, %d1, 31

# CHECK-INST: xnor.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0x07,0xee,0x58,0x10]
xnor.t %d1, %d14, 24, %d14, 0

# CHECK-INST: xnor.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0x07,0xee,0xd8,0x13]
xnor.t %d1, %d14, 24, %d14, 7

# CHECK-INST: xnor.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0x07,0xee,0x58,0x1c]
xnor.t %d1, %d14, 24, %d14, 24

# CHECK-INST: xnor.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0x07,0xee,0xd8,0x1f]
xnor.t %d1, %d14, 24, %d14, 31

# CHECK-INST: xnor.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x58,0x10]
xnor.t %d1, %d14, 24, %d15, 0

# CHECK-INST: xnor.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xd8,0x13]
xnor.t %d1, %d14, 24, %d15, 7

# CHECK-INST: xnor.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x58,0x1c]
xnor.t %d1, %d14, 24, %d15, 24

# CHECK-INST: xnor.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xd8,0x1f]
xnor.t %d1, %d14, 24, %d15, 31

# CHECK-INST: xnor.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x5f,0x10]
xnor.t %d1, %d14, 31, %d0, 0

# CHECK-INST: xnor.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xdf,0x13]
xnor.t %d1, %d14, 31, %d0, 7

# CHECK-INST: xnor.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x5f,0x1c]
xnor.t %d1, %d14, 31, %d0, 24

# CHECK-INST: xnor.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xdf,0x1f]
xnor.t %d1, %d14, 31, %d0, 31

# CHECK-INST: xnor.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x5f,0x10]
xnor.t %d1, %d14, 31, %d1, 0

# CHECK-INST: xnor.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xdf,0x13]
xnor.t %d1, %d14, 31, %d1, 7

# CHECK-INST: xnor.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x5f,0x1c]
xnor.t %d1, %d14, 31, %d1, 24

# CHECK-INST: xnor.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xdf,0x1f]
xnor.t %d1, %d14, 31, %d1, 31

# CHECK-INST: xnor.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0x07,0xee,0x5f,0x10]
xnor.t %d1, %d14, 31, %d14, 0

# CHECK-INST: xnor.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0x07,0xee,0xdf,0x13]
xnor.t %d1, %d14, 31, %d14, 7

# CHECK-INST: xnor.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0x07,0xee,0x5f,0x1c]
xnor.t %d1, %d14, 31, %d14, 24

# CHECK-INST: xnor.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0x07,0xee,0xdf,0x1f]
xnor.t %d1, %d14, 31, %d14, 31

# CHECK-INST: xnor.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x5f,0x10]
xnor.t %d1, %d14, 31, %d15, 0

# CHECK-INST: xnor.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xdf,0x13]
xnor.t %d1, %d14, 31, %d15, 7

# CHECK-INST: xnor.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x5f,0x1c]
xnor.t %d1, %d14, 31, %d15, 24

# CHECK-INST: xnor.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xdf,0x1f]
xnor.t %d1, %d14, 31, %d15, 31

# CHECK-INST: xnor.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x40,0x10]
xnor.t %d1, %d15, 0, %d0, 0

# CHECK-INST: xnor.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xc0,0x13]
xnor.t %d1, %d15, 0, %d0, 7

# CHECK-INST: xnor.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x40,0x1c]
xnor.t %d1, %d15, 0, %d0, 24

# CHECK-INST: xnor.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xc0,0x1f]
xnor.t %d1, %d15, 0, %d0, 31

# CHECK-INST: xnor.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x40,0x10]
xnor.t %d1, %d15, 0, %d1, 0

# CHECK-INST: xnor.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xc0,0x13]
xnor.t %d1, %d15, 0, %d1, 7

# CHECK-INST: xnor.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x40,0x1c]
xnor.t %d1, %d15, 0, %d1, 24

# CHECK-INST: xnor.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xc0,0x1f]
xnor.t %d1, %d15, 0, %d1, 31

# CHECK-INST: xnor.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0x07,0xef,0x40,0x10]
xnor.t %d1, %d15, 0, %d14, 0

# CHECK-INST: xnor.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0x07,0xef,0xc0,0x13]
xnor.t %d1, %d15, 0, %d14, 7

# CHECK-INST: xnor.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0x07,0xef,0x40,0x1c]
xnor.t %d1, %d15, 0, %d14, 24

# CHECK-INST: xnor.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0x07,0xef,0xc0,0x1f]
xnor.t %d1, %d15, 0, %d14, 31

# CHECK-INST: xnor.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0x07,0xff,0x40,0x10]
xnor.t %d1, %d15, 0, %d15, 0

# CHECK-INST: xnor.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0x07,0xff,0xc0,0x13]
xnor.t %d1, %d15, 0, %d15, 7

# CHECK-INST: xnor.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0x07,0xff,0x40,0x1c]
xnor.t %d1, %d15, 0, %d15, 24

# CHECK-INST: xnor.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0x07,0xff,0xc0,0x1f]
xnor.t %d1, %d15, 0, %d15, 31

# CHECK-INST: xnor.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x47,0x10]
xnor.t %d1, %d15, 7, %d0, 0

# CHECK-INST: xnor.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xc7,0x13]
xnor.t %d1, %d15, 7, %d0, 7

# CHECK-INST: xnor.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x47,0x1c]
xnor.t %d1, %d15, 7, %d0, 24

# CHECK-INST: xnor.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xc7,0x1f]
xnor.t %d1, %d15, 7, %d0, 31

# CHECK-INST: xnor.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x47,0x10]
xnor.t %d1, %d15, 7, %d1, 0

# CHECK-INST: xnor.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xc7,0x13]
xnor.t %d1, %d15, 7, %d1, 7

# CHECK-INST: xnor.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x47,0x1c]
xnor.t %d1, %d15, 7, %d1, 24

# CHECK-INST: xnor.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xc7,0x1f]
xnor.t %d1, %d15, 7, %d1, 31

# CHECK-INST: xnor.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0x07,0xef,0x47,0x10]
xnor.t %d1, %d15, 7, %d14, 0

# CHECK-INST: xnor.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0x07,0xef,0xc7,0x13]
xnor.t %d1, %d15, 7, %d14, 7

# CHECK-INST: xnor.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0x07,0xef,0x47,0x1c]
xnor.t %d1, %d15, 7, %d14, 24

# CHECK-INST: xnor.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0x07,0xef,0xc7,0x1f]
xnor.t %d1, %d15, 7, %d14, 31

# CHECK-INST: xnor.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0x07,0xff,0x47,0x10]
xnor.t %d1, %d15, 7, %d15, 0

# CHECK-INST: xnor.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0x07,0xff,0xc7,0x13]
xnor.t %d1, %d15, 7, %d15, 7

# CHECK-INST: xnor.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0x07,0xff,0x47,0x1c]
xnor.t %d1, %d15, 7, %d15, 24

# CHECK-INST: xnor.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0x07,0xff,0xc7,0x1f]
xnor.t %d1, %d15, 7, %d15, 31

# CHECK-INST: xnor.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x58,0x10]
xnor.t %d1, %d15, 24, %d0, 0

# CHECK-INST: xnor.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xd8,0x13]
xnor.t %d1, %d15, 24, %d0, 7

# CHECK-INST: xnor.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x58,0x1c]
xnor.t %d1, %d15, 24, %d0, 24

# CHECK-INST: xnor.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xd8,0x1f]
xnor.t %d1, %d15, 24, %d0, 31

# CHECK-INST: xnor.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x58,0x10]
xnor.t %d1, %d15, 24, %d1, 0

# CHECK-INST: xnor.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xd8,0x13]
xnor.t %d1, %d15, 24, %d1, 7

# CHECK-INST: xnor.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x58,0x1c]
xnor.t %d1, %d15, 24, %d1, 24

# CHECK-INST: xnor.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xd8,0x1f]
xnor.t %d1, %d15, 24, %d1, 31

# CHECK-INST: xnor.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0x07,0xef,0x58,0x10]
xnor.t %d1, %d15, 24, %d14, 0

# CHECK-INST: xnor.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0x07,0xef,0xd8,0x13]
xnor.t %d1, %d15, 24, %d14, 7

# CHECK-INST: xnor.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0x07,0xef,0x58,0x1c]
xnor.t %d1, %d15, 24, %d14, 24

# CHECK-INST: xnor.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0x07,0xef,0xd8,0x1f]
xnor.t %d1, %d15, 24, %d14, 31

# CHECK-INST: xnor.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0x07,0xff,0x58,0x10]
xnor.t %d1, %d15, 24, %d15, 0

# CHECK-INST: xnor.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0x07,0xff,0xd8,0x13]
xnor.t %d1, %d15, 24, %d15, 7

# CHECK-INST: xnor.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0x07,0xff,0x58,0x1c]
xnor.t %d1, %d15, 24, %d15, 24

# CHECK-INST: xnor.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0x07,0xff,0xd8,0x1f]
xnor.t %d1, %d15, 24, %d15, 31

# CHECK-INST: xnor.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x5f,0x10]
xnor.t %d1, %d15, 31, %d0, 0

# CHECK-INST: xnor.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xdf,0x13]
xnor.t %d1, %d15, 31, %d0, 7

# CHECK-INST: xnor.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x5f,0x1c]
xnor.t %d1, %d15, 31, %d0, 24

# CHECK-INST: xnor.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xdf,0x1f]
xnor.t %d1, %d15, 31, %d0, 31

# CHECK-INST: xnor.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x5f,0x10]
xnor.t %d1, %d15, 31, %d1, 0

# CHECK-INST: xnor.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xdf,0x13]
xnor.t %d1, %d15, 31, %d1, 7

# CHECK-INST: xnor.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x5f,0x1c]
xnor.t %d1, %d15, 31, %d1, 24

# CHECK-INST: xnor.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xdf,0x1f]
xnor.t %d1, %d15, 31, %d1, 31

# CHECK-INST: xnor.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0x07,0xef,0x5f,0x10]
xnor.t %d1, %d15, 31, %d14, 0

# CHECK-INST: xnor.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0x07,0xef,0xdf,0x13]
xnor.t %d1, %d15, 31, %d14, 7

# CHECK-INST: xnor.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0x07,0xef,0x5f,0x1c]
xnor.t %d1, %d15, 31, %d14, 24

# CHECK-INST: xnor.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0x07,0xef,0xdf,0x1f]
xnor.t %d1, %d15, 31, %d14, 31

# CHECK-INST: xnor.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0x07,0xff,0x5f,0x10]
xnor.t %d1, %d15, 31, %d15, 0

# CHECK-INST: xnor.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0x07,0xff,0xdf,0x13]
xnor.t %d1, %d15, 31, %d15, 7

# CHECK-INST: xnor.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0x07,0xff,0x5f,0x1c]
xnor.t %d1, %d15, 31, %d15, 24

# CHECK-INST: xnor.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0x07,0xff,0xdf,0x1f]
xnor.t %d1, %d15, 31, %d15, 31

# CHECK-INST: xnor.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x40,0xe0]
xnor.t %d14, %d0, 0, %d0, 0

# CHECK-INST: xnor.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0x07,0x00,0xc0,0xe3]
xnor.t %d14, %d0, 0, %d0, 7

# CHECK-INST: xnor.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0x07,0x00,0x40,0xec]
xnor.t %d14, %d0, 0, %d0, 24

# CHECK-INST: xnor.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0x07,0x00,0xc0,0xef]
xnor.t %d14, %d0, 0, %d0, 31

# CHECK-INST: xnor.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0x07,0x10,0x40,0xe0]
xnor.t %d14, %d0, 0, %d1, 0

# CHECK-INST: xnor.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0x07,0x10,0xc0,0xe3]
xnor.t %d14, %d0, 0, %d1, 7

# CHECK-INST: xnor.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0x07,0x10,0x40,0xec]
xnor.t %d14, %d0, 0, %d1, 24

# CHECK-INST: xnor.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0x07,0x10,0xc0,0xef]
xnor.t %d14, %d0, 0, %d1, 31

# CHECK-INST: xnor.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x40,0xe0]
xnor.t %d14, %d0, 0, %d14, 0

# CHECK-INST: xnor.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xc0,0xe3]
xnor.t %d14, %d0, 0, %d14, 7

# CHECK-INST: xnor.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x40,0xec]
xnor.t %d14, %d0, 0, %d14, 24

# CHECK-INST: xnor.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xc0,0xef]
xnor.t %d14, %d0, 0, %d14, 31

# CHECK-INST: xnor.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x40,0xe0]
xnor.t %d14, %d0, 0, %d15, 0

# CHECK-INST: xnor.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xc0,0xe3]
xnor.t %d14, %d0, 0, %d15, 7

# CHECK-INST: xnor.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x40,0xec]
xnor.t %d14, %d0, 0, %d15, 24

# CHECK-INST: xnor.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xc0,0xef]
xnor.t %d14, %d0, 0, %d15, 31

# CHECK-INST: xnor.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0x07,0x00,0x47,0xe0]
xnor.t %d14, %d0, 7, %d0, 0

# CHECK-INST: xnor.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0x07,0x00,0xc7,0xe3]
xnor.t %d14, %d0, 7, %d0, 7

# CHECK-INST: xnor.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0x07,0x00,0x47,0xec]
xnor.t %d14, %d0, 7, %d0, 24

# CHECK-INST: xnor.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0x07,0x00,0xc7,0xef]
xnor.t %d14, %d0, 7, %d0, 31

# CHECK-INST: xnor.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0x07,0x10,0x47,0xe0]
xnor.t %d14, %d0, 7, %d1, 0

# CHECK-INST: xnor.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0x07,0x10,0xc7,0xe3]
xnor.t %d14, %d0, 7, %d1, 7

# CHECK-INST: xnor.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0x07,0x10,0x47,0xec]
xnor.t %d14, %d0, 7, %d1, 24

# CHECK-INST: xnor.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0x07,0x10,0xc7,0xef]
xnor.t %d14, %d0, 7, %d1, 31

# CHECK-INST: xnor.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x47,0xe0]
xnor.t %d14, %d0, 7, %d14, 0

# CHECK-INST: xnor.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xc7,0xe3]
xnor.t %d14, %d0, 7, %d14, 7

# CHECK-INST: xnor.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x47,0xec]
xnor.t %d14, %d0, 7, %d14, 24

# CHECK-INST: xnor.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xc7,0xef]
xnor.t %d14, %d0, 7, %d14, 31

# CHECK-INST: xnor.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x47,0xe0]
xnor.t %d14, %d0, 7, %d15, 0

# CHECK-INST: xnor.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xc7,0xe3]
xnor.t %d14, %d0, 7, %d15, 7

# CHECK-INST: xnor.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x47,0xec]
xnor.t %d14, %d0, 7, %d15, 24

# CHECK-INST: xnor.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xc7,0xef]
xnor.t %d14, %d0, 7, %d15, 31

# CHECK-INST: xnor.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0x07,0x00,0x58,0xe0]
xnor.t %d14, %d0, 24, %d0, 0

# CHECK-INST: xnor.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0x07,0x00,0xd8,0xe3]
xnor.t %d14, %d0, 24, %d0, 7

# CHECK-INST: xnor.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0x07,0x00,0x58,0xec]
xnor.t %d14, %d0, 24, %d0, 24

# CHECK-INST: xnor.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0x07,0x00,0xd8,0xef]
xnor.t %d14, %d0, 24, %d0, 31

# CHECK-INST: xnor.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0x07,0x10,0x58,0xe0]
xnor.t %d14, %d0, 24, %d1, 0

# CHECK-INST: xnor.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0x07,0x10,0xd8,0xe3]
xnor.t %d14, %d0, 24, %d1, 7

# CHECK-INST: xnor.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0x07,0x10,0x58,0xec]
xnor.t %d14, %d0, 24, %d1, 24

# CHECK-INST: xnor.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0x07,0x10,0xd8,0xef]
xnor.t %d14, %d0, 24, %d1, 31

# CHECK-INST: xnor.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x58,0xe0]
xnor.t %d14, %d0, 24, %d14, 0

# CHECK-INST: xnor.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xd8,0xe3]
xnor.t %d14, %d0, 24, %d14, 7

# CHECK-INST: xnor.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x58,0xec]
xnor.t %d14, %d0, 24, %d14, 24

# CHECK-INST: xnor.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xd8,0xef]
xnor.t %d14, %d0, 24, %d14, 31

# CHECK-INST: xnor.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x58,0xe0]
xnor.t %d14, %d0, 24, %d15, 0

# CHECK-INST: xnor.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xd8,0xe3]
xnor.t %d14, %d0, 24, %d15, 7

# CHECK-INST: xnor.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x58,0xec]
xnor.t %d14, %d0, 24, %d15, 24

# CHECK-INST: xnor.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xd8,0xef]
xnor.t %d14, %d0, 24, %d15, 31

# CHECK-INST: xnor.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0x07,0x00,0x5f,0xe0]
xnor.t %d14, %d0, 31, %d0, 0

# CHECK-INST: xnor.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0x07,0x00,0xdf,0xe3]
xnor.t %d14, %d0, 31, %d0, 7

# CHECK-INST: xnor.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0x07,0x00,0x5f,0xec]
xnor.t %d14, %d0, 31, %d0, 24

# CHECK-INST: xnor.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0x07,0x00,0xdf,0xef]
xnor.t %d14, %d0, 31, %d0, 31

# CHECK-INST: xnor.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0x07,0x10,0x5f,0xe0]
xnor.t %d14, %d0, 31, %d1, 0

# CHECK-INST: xnor.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0x07,0x10,0xdf,0xe3]
xnor.t %d14, %d0, 31, %d1, 7

# CHECK-INST: xnor.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0x07,0x10,0x5f,0xec]
xnor.t %d14, %d0, 31, %d1, 24

# CHECK-INST: xnor.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0x07,0x10,0xdf,0xef]
xnor.t %d14, %d0, 31, %d1, 31

# CHECK-INST: xnor.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x5f,0xe0]
xnor.t %d14, %d0, 31, %d14, 0

# CHECK-INST: xnor.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xdf,0xe3]
xnor.t %d14, %d0, 31, %d14, 7

# CHECK-INST: xnor.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x5f,0xec]
xnor.t %d14, %d0, 31, %d14, 24

# CHECK-INST: xnor.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xdf,0xef]
xnor.t %d14, %d0, 31, %d14, 31

# CHECK-INST: xnor.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x5f,0xe0]
xnor.t %d14, %d0, 31, %d15, 0

# CHECK-INST: xnor.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xdf,0xe3]
xnor.t %d14, %d0, 31, %d15, 7

# CHECK-INST: xnor.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x5f,0xec]
xnor.t %d14, %d0, 31, %d15, 24

# CHECK-INST: xnor.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xdf,0xef]
xnor.t %d14, %d0, 31, %d15, 31

# CHECK-INST: xnor.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0x07,0x01,0x40,0xe0]
xnor.t %d14, %d1, 0, %d0, 0

# CHECK-INST: xnor.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0x07,0x01,0xc0,0xe3]
xnor.t %d14, %d1, 0, %d0, 7

# CHECK-INST: xnor.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0x07,0x01,0x40,0xec]
xnor.t %d14, %d1, 0, %d0, 24

# CHECK-INST: xnor.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0x07,0x01,0xc0,0xef]
xnor.t %d14, %d1, 0, %d0, 31

# CHECK-INST: xnor.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0x07,0x11,0x40,0xe0]
xnor.t %d14, %d1, 0, %d1, 0

# CHECK-INST: xnor.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0x07,0x11,0xc0,0xe3]
xnor.t %d14, %d1, 0, %d1, 7

# CHECK-INST: xnor.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0x07,0x11,0x40,0xec]
xnor.t %d14, %d1, 0, %d1, 24

# CHECK-INST: xnor.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0x07,0x11,0xc0,0xef]
xnor.t %d14, %d1, 0, %d1, 31

# CHECK-INST: xnor.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x40,0xe0]
xnor.t %d14, %d1, 0, %d14, 0

# CHECK-INST: xnor.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xc0,0xe3]
xnor.t %d14, %d1, 0, %d14, 7

# CHECK-INST: xnor.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x40,0xec]
xnor.t %d14, %d1, 0, %d14, 24

# CHECK-INST: xnor.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xc0,0xef]
xnor.t %d14, %d1, 0, %d14, 31

# CHECK-INST: xnor.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x40,0xe0]
xnor.t %d14, %d1, 0, %d15, 0

# CHECK-INST: xnor.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xc0,0xe3]
xnor.t %d14, %d1, 0, %d15, 7

# CHECK-INST: xnor.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x40,0xec]
xnor.t %d14, %d1, 0, %d15, 24

# CHECK-INST: xnor.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xc0,0xef]
xnor.t %d14, %d1, 0, %d15, 31

# CHECK-INST: xnor.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0x07,0x01,0x47,0xe0]
xnor.t %d14, %d1, 7, %d0, 0

# CHECK-INST: xnor.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0x07,0x01,0xc7,0xe3]
xnor.t %d14, %d1, 7, %d0, 7

# CHECK-INST: xnor.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0x07,0x01,0x47,0xec]
xnor.t %d14, %d1, 7, %d0, 24

# CHECK-INST: xnor.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0x07,0x01,0xc7,0xef]
xnor.t %d14, %d1, 7, %d0, 31

# CHECK-INST: xnor.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0x07,0x11,0x47,0xe0]
xnor.t %d14, %d1, 7, %d1, 0

# CHECK-INST: xnor.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0x07,0x11,0xc7,0xe3]
xnor.t %d14, %d1, 7, %d1, 7

# CHECK-INST: xnor.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0x07,0x11,0x47,0xec]
xnor.t %d14, %d1, 7, %d1, 24

# CHECK-INST: xnor.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0x07,0x11,0xc7,0xef]
xnor.t %d14, %d1, 7, %d1, 31

# CHECK-INST: xnor.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x47,0xe0]
xnor.t %d14, %d1, 7, %d14, 0

# CHECK-INST: xnor.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xc7,0xe3]
xnor.t %d14, %d1, 7, %d14, 7

# CHECK-INST: xnor.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x47,0xec]
xnor.t %d14, %d1, 7, %d14, 24

# CHECK-INST: xnor.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xc7,0xef]
xnor.t %d14, %d1, 7, %d14, 31

# CHECK-INST: xnor.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x47,0xe0]
xnor.t %d14, %d1, 7, %d15, 0

# CHECK-INST: xnor.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xc7,0xe3]
xnor.t %d14, %d1, 7, %d15, 7

# CHECK-INST: xnor.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x47,0xec]
xnor.t %d14, %d1, 7, %d15, 24

# CHECK-INST: xnor.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xc7,0xef]
xnor.t %d14, %d1, 7, %d15, 31

# CHECK-INST: xnor.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0x07,0x01,0x58,0xe0]
xnor.t %d14, %d1, 24, %d0, 0

# CHECK-INST: xnor.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0x07,0x01,0xd8,0xe3]
xnor.t %d14, %d1, 24, %d0, 7

# CHECK-INST: xnor.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0x07,0x01,0x58,0xec]
xnor.t %d14, %d1, 24, %d0, 24

# CHECK-INST: xnor.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0x07,0x01,0xd8,0xef]
xnor.t %d14, %d1, 24, %d0, 31

# CHECK-INST: xnor.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0x07,0x11,0x58,0xe0]
xnor.t %d14, %d1, 24, %d1, 0

# CHECK-INST: xnor.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0x07,0x11,0xd8,0xe3]
xnor.t %d14, %d1, 24, %d1, 7

# CHECK-INST: xnor.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0x07,0x11,0x58,0xec]
xnor.t %d14, %d1, 24, %d1, 24

# CHECK-INST: xnor.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0x07,0x11,0xd8,0xef]
xnor.t %d14, %d1, 24, %d1, 31

# CHECK-INST: xnor.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x58,0xe0]
xnor.t %d14, %d1, 24, %d14, 0

# CHECK-INST: xnor.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xd8,0xe3]
xnor.t %d14, %d1, 24, %d14, 7

# CHECK-INST: xnor.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x58,0xec]
xnor.t %d14, %d1, 24, %d14, 24

# CHECK-INST: xnor.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xd8,0xef]
xnor.t %d14, %d1, 24, %d14, 31

# CHECK-INST: xnor.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x58,0xe0]
xnor.t %d14, %d1, 24, %d15, 0

# CHECK-INST: xnor.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xd8,0xe3]
xnor.t %d14, %d1, 24, %d15, 7

# CHECK-INST: xnor.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x58,0xec]
xnor.t %d14, %d1, 24, %d15, 24

# CHECK-INST: xnor.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xd8,0xef]
xnor.t %d14, %d1, 24, %d15, 31

# CHECK-INST: xnor.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0x07,0x01,0x5f,0xe0]
xnor.t %d14, %d1, 31, %d0, 0

# CHECK-INST: xnor.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0x07,0x01,0xdf,0xe3]
xnor.t %d14, %d1, 31, %d0, 7

# CHECK-INST: xnor.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0x07,0x01,0x5f,0xec]
xnor.t %d14, %d1, 31, %d0, 24

# CHECK-INST: xnor.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0x07,0x01,0xdf,0xef]
xnor.t %d14, %d1, 31, %d0, 31

# CHECK-INST: xnor.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0x07,0x11,0x5f,0xe0]
xnor.t %d14, %d1, 31, %d1, 0

# CHECK-INST: xnor.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0x07,0x11,0xdf,0xe3]
xnor.t %d14, %d1, 31, %d1, 7

# CHECK-INST: xnor.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0x07,0x11,0x5f,0xec]
xnor.t %d14, %d1, 31, %d1, 24

# CHECK-INST: xnor.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0x07,0x11,0xdf,0xef]
xnor.t %d14, %d1, 31, %d1, 31

# CHECK-INST: xnor.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x5f,0xe0]
xnor.t %d14, %d1, 31, %d14, 0

# CHECK-INST: xnor.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xdf,0xe3]
xnor.t %d14, %d1, 31, %d14, 7

# CHECK-INST: xnor.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x5f,0xec]
xnor.t %d14, %d1, 31, %d14, 24

# CHECK-INST: xnor.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xdf,0xef]
xnor.t %d14, %d1, 31, %d14, 31

# CHECK-INST: xnor.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x5f,0xe0]
xnor.t %d14, %d1, 31, %d15, 0

# CHECK-INST: xnor.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xdf,0xe3]
xnor.t %d14, %d1, 31, %d15, 7

# CHECK-INST: xnor.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x5f,0xec]
xnor.t %d14, %d1, 31, %d15, 24

# CHECK-INST: xnor.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xdf,0xef]
xnor.t %d14, %d1, 31, %d15, 31

# CHECK-INST: xnor.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x40,0xe0]
xnor.t %d14, %d14, 0, %d0, 0

# CHECK-INST: xnor.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xc0,0xe3]
xnor.t %d14, %d14, 0, %d0, 7

# CHECK-INST: xnor.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x40,0xec]
xnor.t %d14, %d14, 0, %d0, 24

# CHECK-INST: xnor.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xc0,0xef]
xnor.t %d14, %d14, 0, %d0, 31

# CHECK-INST: xnor.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x40,0xe0]
xnor.t %d14, %d14, 0, %d1, 0

# CHECK-INST: xnor.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xc0,0xe3]
xnor.t %d14, %d14, 0, %d1, 7

# CHECK-INST: xnor.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x40,0xec]
xnor.t %d14, %d14, 0, %d1, 24

# CHECK-INST: xnor.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xc0,0xef]
xnor.t %d14, %d14, 0, %d1, 31

# CHECK-INST: xnor.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0x07,0xee,0x40,0xe0]
xnor.t %d14, %d14, 0, %d14, 0

# CHECK-INST: xnor.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0x07,0xee,0xc0,0xe3]
xnor.t %d14, %d14, 0, %d14, 7

# CHECK-INST: xnor.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0x07,0xee,0x40,0xec]
xnor.t %d14, %d14, 0, %d14, 24

# CHECK-INST: xnor.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0x07,0xee,0xc0,0xef]
xnor.t %d14, %d14, 0, %d14, 31

# CHECK-INST: xnor.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x40,0xe0]
xnor.t %d14, %d14, 0, %d15, 0

# CHECK-INST: xnor.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xc0,0xe3]
xnor.t %d14, %d14, 0, %d15, 7

# CHECK-INST: xnor.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x40,0xec]
xnor.t %d14, %d14, 0, %d15, 24

# CHECK-INST: xnor.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xc0,0xef]
xnor.t %d14, %d14, 0, %d15, 31

# CHECK-INST: xnor.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x47,0xe0]
xnor.t %d14, %d14, 7, %d0, 0

# CHECK-INST: xnor.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xc7,0xe3]
xnor.t %d14, %d14, 7, %d0, 7

# CHECK-INST: xnor.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x47,0xec]
xnor.t %d14, %d14, 7, %d0, 24

# CHECK-INST: xnor.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xc7,0xef]
xnor.t %d14, %d14, 7, %d0, 31

# CHECK-INST: xnor.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x47,0xe0]
xnor.t %d14, %d14, 7, %d1, 0

# CHECK-INST: xnor.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xc7,0xe3]
xnor.t %d14, %d14, 7, %d1, 7

# CHECK-INST: xnor.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x47,0xec]
xnor.t %d14, %d14, 7, %d1, 24

# CHECK-INST: xnor.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xc7,0xef]
xnor.t %d14, %d14, 7, %d1, 31

# CHECK-INST: xnor.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0x07,0xee,0x47,0xe0]
xnor.t %d14, %d14, 7, %d14, 0

# CHECK-INST: xnor.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0x07,0xee,0xc7,0xe3]
xnor.t %d14, %d14, 7, %d14, 7

# CHECK-INST: xnor.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0x07,0xee,0x47,0xec]
xnor.t %d14, %d14, 7, %d14, 24

# CHECK-INST: xnor.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0x07,0xee,0xc7,0xef]
xnor.t %d14, %d14, 7, %d14, 31

# CHECK-INST: xnor.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x47,0xe0]
xnor.t %d14, %d14, 7, %d15, 0

# CHECK-INST: xnor.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xc7,0xe3]
xnor.t %d14, %d14, 7, %d15, 7

# CHECK-INST: xnor.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x47,0xec]
xnor.t %d14, %d14, 7, %d15, 24

# CHECK-INST: xnor.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xc7,0xef]
xnor.t %d14, %d14, 7, %d15, 31

# CHECK-INST: xnor.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x58,0xe0]
xnor.t %d14, %d14, 24, %d0, 0

# CHECK-INST: xnor.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xd8,0xe3]
xnor.t %d14, %d14, 24, %d0, 7

# CHECK-INST: xnor.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x58,0xec]
xnor.t %d14, %d14, 24, %d0, 24

# CHECK-INST: xnor.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xd8,0xef]
xnor.t %d14, %d14, 24, %d0, 31

# CHECK-INST: xnor.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x58,0xe0]
xnor.t %d14, %d14, 24, %d1, 0

# CHECK-INST: xnor.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xd8,0xe3]
xnor.t %d14, %d14, 24, %d1, 7

# CHECK-INST: xnor.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x58,0xec]
xnor.t %d14, %d14, 24, %d1, 24

# CHECK-INST: xnor.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xd8,0xef]
xnor.t %d14, %d14, 24, %d1, 31

# CHECK-INST: xnor.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0x07,0xee,0x58,0xe0]
xnor.t %d14, %d14, 24, %d14, 0

# CHECK-INST: xnor.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0x07,0xee,0xd8,0xe3]
xnor.t %d14, %d14, 24, %d14, 7

# CHECK-INST: xnor.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0x07,0xee,0x58,0xec]
xnor.t %d14, %d14, 24, %d14, 24

# CHECK-INST: xnor.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0x07,0xee,0xd8,0xef]
xnor.t %d14, %d14, 24, %d14, 31

# CHECK-INST: xnor.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x58,0xe0]
xnor.t %d14, %d14, 24, %d15, 0

# CHECK-INST: xnor.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xd8,0xe3]
xnor.t %d14, %d14, 24, %d15, 7

# CHECK-INST: xnor.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x58,0xec]
xnor.t %d14, %d14, 24, %d15, 24

# CHECK-INST: xnor.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xd8,0xef]
xnor.t %d14, %d14, 24, %d15, 31

# CHECK-INST: xnor.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x5f,0xe0]
xnor.t %d14, %d14, 31, %d0, 0

# CHECK-INST: xnor.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xdf,0xe3]
xnor.t %d14, %d14, 31, %d0, 7

# CHECK-INST: xnor.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x5f,0xec]
xnor.t %d14, %d14, 31, %d0, 24

# CHECK-INST: xnor.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xdf,0xef]
xnor.t %d14, %d14, 31, %d0, 31

# CHECK-INST: xnor.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x5f,0xe0]
xnor.t %d14, %d14, 31, %d1, 0

# CHECK-INST: xnor.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xdf,0xe3]
xnor.t %d14, %d14, 31, %d1, 7

# CHECK-INST: xnor.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x5f,0xec]
xnor.t %d14, %d14, 31, %d1, 24

# CHECK-INST: xnor.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xdf,0xef]
xnor.t %d14, %d14, 31, %d1, 31

# CHECK-INST: xnor.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0x07,0xee,0x5f,0xe0]
xnor.t %d14, %d14, 31, %d14, 0

# CHECK-INST: xnor.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0x07,0xee,0xdf,0xe3]
xnor.t %d14, %d14, 31, %d14, 7

# CHECK-INST: xnor.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0x07,0xee,0x5f,0xec]
xnor.t %d14, %d14, 31, %d14, 24

# CHECK-INST: xnor.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0x07,0xee,0xdf,0xef]
xnor.t %d14, %d14, 31, %d14, 31

# CHECK-INST: xnor.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x5f,0xe0]
xnor.t %d14, %d14, 31, %d15, 0

# CHECK-INST: xnor.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xdf,0xe3]
xnor.t %d14, %d14, 31, %d15, 7

# CHECK-INST: xnor.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x5f,0xec]
xnor.t %d14, %d14, 31, %d15, 24

# CHECK-INST: xnor.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xdf,0xef]
xnor.t %d14, %d14, 31, %d15, 31

# CHECK-INST: xnor.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x40,0xe0]
xnor.t %d14, %d15, 0, %d0, 0

# CHECK-INST: xnor.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xc0,0xe3]
xnor.t %d14, %d15, 0, %d0, 7

# CHECK-INST: xnor.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x40,0xec]
xnor.t %d14, %d15, 0, %d0, 24

# CHECK-INST: xnor.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xc0,0xef]
xnor.t %d14, %d15, 0, %d0, 31

# CHECK-INST: xnor.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x40,0xe0]
xnor.t %d14, %d15, 0, %d1, 0

# CHECK-INST: xnor.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xc0,0xe3]
xnor.t %d14, %d15, 0, %d1, 7

# CHECK-INST: xnor.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x40,0xec]
xnor.t %d14, %d15, 0, %d1, 24

# CHECK-INST: xnor.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xc0,0xef]
xnor.t %d14, %d15, 0, %d1, 31

# CHECK-INST: xnor.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0x07,0xef,0x40,0xe0]
xnor.t %d14, %d15, 0, %d14, 0

# CHECK-INST: xnor.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0x07,0xef,0xc0,0xe3]
xnor.t %d14, %d15, 0, %d14, 7

# CHECK-INST: xnor.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0x07,0xef,0x40,0xec]
xnor.t %d14, %d15, 0, %d14, 24

# CHECK-INST: xnor.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0x07,0xef,0xc0,0xef]
xnor.t %d14, %d15, 0, %d14, 31

# CHECK-INST: xnor.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0x07,0xff,0x40,0xe0]
xnor.t %d14, %d15, 0, %d15, 0

# CHECK-INST: xnor.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0x07,0xff,0xc0,0xe3]
xnor.t %d14, %d15, 0, %d15, 7

# CHECK-INST: xnor.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0x07,0xff,0x40,0xec]
xnor.t %d14, %d15, 0, %d15, 24

# CHECK-INST: xnor.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0x07,0xff,0xc0,0xef]
xnor.t %d14, %d15, 0, %d15, 31

# CHECK-INST: xnor.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x47,0xe0]
xnor.t %d14, %d15, 7, %d0, 0

# CHECK-INST: xnor.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xc7,0xe3]
xnor.t %d14, %d15, 7, %d0, 7

# CHECK-INST: xnor.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x47,0xec]
xnor.t %d14, %d15, 7, %d0, 24

# CHECK-INST: xnor.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xc7,0xef]
xnor.t %d14, %d15, 7, %d0, 31

# CHECK-INST: xnor.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x47,0xe0]
xnor.t %d14, %d15, 7, %d1, 0

# CHECK-INST: xnor.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xc7,0xe3]
xnor.t %d14, %d15, 7, %d1, 7

# CHECK-INST: xnor.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x47,0xec]
xnor.t %d14, %d15, 7, %d1, 24

# CHECK-INST: xnor.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xc7,0xef]
xnor.t %d14, %d15, 7, %d1, 31

# CHECK-INST: xnor.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0x07,0xef,0x47,0xe0]
xnor.t %d14, %d15, 7, %d14, 0

# CHECK-INST: xnor.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0x07,0xef,0xc7,0xe3]
xnor.t %d14, %d15, 7, %d14, 7

# CHECK-INST: xnor.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0x07,0xef,0x47,0xec]
xnor.t %d14, %d15, 7, %d14, 24

# CHECK-INST: xnor.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0x07,0xef,0xc7,0xef]
xnor.t %d14, %d15, 7, %d14, 31

# CHECK-INST: xnor.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0x07,0xff,0x47,0xe0]
xnor.t %d14, %d15, 7, %d15, 0

# CHECK-INST: xnor.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0x07,0xff,0xc7,0xe3]
xnor.t %d14, %d15, 7, %d15, 7

# CHECK-INST: xnor.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0x07,0xff,0x47,0xec]
xnor.t %d14, %d15, 7, %d15, 24

# CHECK-INST: xnor.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0x07,0xff,0xc7,0xef]
xnor.t %d14, %d15, 7, %d15, 31

# CHECK-INST: xnor.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x58,0xe0]
xnor.t %d14, %d15, 24, %d0, 0

# CHECK-INST: xnor.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xd8,0xe3]
xnor.t %d14, %d15, 24, %d0, 7

# CHECK-INST: xnor.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x58,0xec]
xnor.t %d14, %d15, 24, %d0, 24

# CHECK-INST: xnor.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xd8,0xef]
xnor.t %d14, %d15, 24, %d0, 31

# CHECK-INST: xnor.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x58,0xe0]
xnor.t %d14, %d15, 24, %d1, 0

# CHECK-INST: xnor.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xd8,0xe3]
xnor.t %d14, %d15, 24, %d1, 7

# CHECK-INST: xnor.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x58,0xec]
xnor.t %d14, %d15, 24, %d1, 24

# CHECK-INST: xnor.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xd8,0xef]
xnor.t %d14, %d15, 24, %d1, 31

# CHECK-INST: xnor.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0x07,0xef,0x58,0xe0]
xnor.t %d14, %d15, 24, %d14, 0

# CHECK-INST: xnor.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0x07,0xef,0xd8,0xe3]
xnor.t %d14, %d15, 24, %d14, 7

# CHECK-INST: xnor.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0x07,0xef,0x58,0xec]
xnor.t %d14, %d15, 24, %d14, 24

# CHECK-INST: xnor.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0x07,0xef,0xd8,0xef]
xnor.t %d14, %d15, 24, %d14, 31

# CHECK-INST: xnor.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0x07,0xff,0x58,0xe0]
xnor.t %d14, %d15, 24, %d15, 0

# CHECK-INST: xnor.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0x07,0xff,0xd8,0xe3]
xnor.t %d14, %d15, 24, %d15, 7

# CHECK-INST: xnor.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0x07,0xff,0x58,0xec]
xnor.t %d14, %d15, 24, %d15, 24

# CHECK-INST: xnor.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0x07,0xff,0xd8,0xef]
xnor.t %d14, %d15, 24, %d15, 31

# CHECK-INST: xnor.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x5f,0xe0]
xnor.t %d14, %d15, 31, %d0, 0

# CHECK-INST: xnor.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xdf,0xe3]
xnor.t %d14, %d15, 31, %d0, 7

# CHECK-INST: xnor.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x5f,0xec]
xnor.t %d14, %d15, 31, %d0, 24

# CHECK-INST: xnor.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xdf,0xef]
xnor.t %d14, %d15, 31, %d0, 31

# CHECK-INST: xnor.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x5f,0xe0]
xnor.t %d14, %d15, 31, %d1, 0

# CHECK-INST: xnor.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xdf,0xe3]
xnor.t %d14, %d15, 31, %d1, 7

# CHECK-INST: xnor.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x5f,0xec]
xnor.t %d14, %d15, 31, %d1, 24

# CHECK-INST: xnor.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xdf,0xef]
xnor.t %d14, %d15, 31, %d1, 31

# CHECK-INST: xnor.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0x07,0xef,0x5f,0xe0]
xnor.t %d14, %d15, 31, %d14, 0

# CHECK-INST: xnor.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0x07,0xef,0xdf,0xe3]
xnor.t %d14, %d15, 31, %d14, 7

# CHECK-INST: xnor.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0x07,0xef,0x5f,0xec]
xnor.t %d14, %d15, 31, %d14, 24

# CHECK-INST: xnor.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0x07,0xef,0xdf,0xef]
xnor.t %d14, %d15, 31, %d14, 31

# CHECK-INST: xnor.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0x07,0xff,0x5f,0xe0]
xnor.t %d14, %d15, 31, %d15, 0

# CHECK-INST: xnor.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0x07,0xff,0xdf,0xe3]
xnor.t %d14, %d15, 31, %d15, 7

# CHECK-INST: xnor.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0x07,0xff,0x5f,0xec]
xnor.t %d14, %d15, 31, %d15, 24

# CHECK-INST: xnor.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0x07,0xff,0xdf,0xef]
xnor.t %d14, %d15, 31, %d15, 31

# CHECK-INST: xnor.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x40,0xf0]
xnor.t %d15, %d0, 0, %d0, 0

# CHECK-INST: xnor.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0x07,0x00,0xc0,0xf3]
xnor.t %d15, %d0, 0, %d0, 7

# CHECK-INST: xnor.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0x07,0x00,0x40,0xfc]
xnor.t %d15, %d0, 0, %d0, 24

# CHECK-INST: xnor.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0x07,0x00,0xc0,0xff]
xnor.t %d15, %d0, 0, %d0, 31

# CHECK-INST: xnor.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0x07,0x10,0x40,0xf0]
xnor.t %d15, %d0, 0, %d1, 0

# CHECK-INST: xnor.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0x07,0x10,0xc0,0xf3]
xnor.t %d15, %d0, 0, %d1, 7

# CHECK-INST: xnor.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0x07,0x10,0x40,0xfc]
xnor.t %d15, %d0, 0, %d1, 24

# CHECK-INST: xnor.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0x07,0x10,0xc0,0xff]
xnor.t %d15, %d0, 0, %d1, 31

# CHECK-INST: xnor.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x40,0xf0]
xnor.t %d15, %d0, 0, %d14, 0

# CHECK-INST: xnor.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xc0,0xf3]
xnor.t %d15, %d0, 0, %d14, 7

# CHECK-INST: xnor.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x40,0xfc]
xnor.t %d15, %d0, 0, %d14, 24

# CHECK-INST: xnor.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xc0,0xff]
xnor.t %d15, %d0, 0, %d14, 31

# CHECK-INST: xnor.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x40,0xf0]
xnor.t %d15, %d0, 0, %d15, 0

# CHECK-INST: xnor.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xc0,0xf3]
xnor.t %d15, %d0, 0, %d15, 7

# CHECK-INST: xnor.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x40,0xfc]
xnor.t %d15, %d0, 0, %d15, 24

# CHECK-INST: xnor.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xc0,0xff]
xnor.t %d15, %d0, 0, %d15, 31

# CHECK-INST: xnor.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0x07,0x00,0x47,0xf0]
xnor.t %d15, %d0, 7, %d0, 0

# CHECK-INST: xnor.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0x07,0x00,0xc7,0xf3]
xnor.t %d15, %d0, 7, %d0, 7

# CHECK-INST: xnor.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0x07,0x00,0x47,0xfc]
xnor.t %d15, %d0, 7, %d0, 24

# CHECK-INST: xnor.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0x07,0x00,0xc7,0xff]
xnor.t %d15, %d0, 7, %d0, 31

# CHECK-INST: xnor.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0x07,0x10,0x47,0xf0]
xnor.t %d15, %d0, 7, %d1, 0

# CHECK-INST: xnor.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0x07,0x10,0xc7,0xf3]
xnor.t %d15, %d0, 7, %d1, 7

# CHECK-INST: xnor.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0x07,0x10,0x47,0xfc]
xnor.t %d15, %d0, 7, %d1, 24

# CHECK-INST: xnor.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0x07,0x10,0xc7,0xff]
xnor.t %d15, %d0, 7, %d1, 31

# CHECK-INST: xnor.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x47,0xf0]
xnor.t %d15, %d0, 7, %d14, 0

# CHECK-INST: xnor.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xc7,0xf3]
xnor.t %d15, %d0, 7, %d14, 7

# CHECK-INST: xnor.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x47,0xfc]
xnor.t %d15, %d0, 7, %d14, 24

# CHECK-INST: xnor.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xc7,0xff]
xnor.t %d15, %d0, 7, %d14, 31

# CHECK-INST: xnor.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x47,0xf0]
xnor.t %d15, %d0, 7, %d15, 0

# CHECK-INST: xnor.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xc7,0xf3]
xnor.t %d15, %d0, 7, %d15, 7

# CHECK-INST: xnor.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x47,0xfc]
xnor.t %d15, %d0, 7, %d15, 24

# CHECK-INST: xnor.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xc7,0xff]
xnor.t %d15, %d0, 7, %d15, 31

# CHECK-INST: xnor.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0x07,0x00,0x58,0xf0]
xnor.t %d15, %d0, 24, %d0, 0

# CHECK-INST: xnor.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0x07,0x00,0xd8,0xf3]
xnor.t %d15, %d0, 24, %d0, 7

# CHECK-INST: xnor.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0x07,0x00,0x58,0xfc]
xnor.t %d15, %d0, 24, %d0, 24

# CHECK-INST: xnor.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0x07,0x00,0xd8,0xff]
xnor.t %d15, %d0, 24, %d0, 31

# CHECK-INST: xnor.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0x07,0x10,0x58,0xf0]
xnor.t %d15, %d0, 24, %d1, 0

# CHECK-INST: xnor.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0x07,0x10,0xd8,0xf3]
xnor.t %d15, %d0, 24, %d1, 7

# CHECK-INST: xnor.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0x07,0x10,0x58,0xfc]
xnor.t %d15, %d0, 24, %d1, 24

# CHECK-INST: xnor.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0x07,0x10,0xd8,0xff]
xnor.t %d15, %d0, 24, %d1, 31

# CHECK-INST: xnor.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x58,0xf0]
xnor.t %d15, %d0, 24, %d14, 0

# CHECK-INST: xnor.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xd8,0xf3]
xnor.t %d15, %d0, 24, %d14, 7

# CHECK-INST: xnor.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x58,0xfc]
xnor.t %d15, %d0, 24, %d14, 24

# CHECK-INST: xnor.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xd8,0xff]
xnor.t %d15, %d0, 24, %d14, 31

# CHECK-INST: xnor.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x58,0xf0]
xnor.t %d15, %d0, 24, %d15, 0

# CHECK-INST: xnor.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xd8,0xf3]
xnor.t %d15, %d0, 24, %d15, 7

# CHECK-INST: xnor.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x58,0xfc]
xnor.t %d15, %d0, 24, %d15, 24

# CHECK-INST: xnor.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xd8,0xff]
xnor.t %d15, %d0, 24, %d15, 31

# CHECK-INST: xnor.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0x07,0x00,0x5f,0xf0]
xnor.t %d15, %d0, 31, %d0, 0

# CHECK-INST: xnor.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0x07,0x00,0xdf,0xf3]
xnor.t %d15, %d0, 31, %d0, 7

# CHECK-INST: xnor.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0x07,0x00,0x5f,0xfc]
xnor.t %d15, %d0, 31, %d0, 24

# CHECK-INST: xnor.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0x07,0x00,0xdf,0xff]
xnor.t %d15, %d0, 31, %d0, 31

# CHECK-INST: xnor.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0x07,0x10,0x5f,0xf0]
xnor.t %d15, %d0, 31, %d1, 0

# CHECK-INST: xnor.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0x07,0x10,0xdf,0xf3]
xnor.t %d15, %d0, 31, %d1, 7

# CHECK-INST: xnor.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0x07,0x10,0x5f,0xfc]
xnor.t %d15, %d0, 31, %d1, 24

# CHECK-INST: xnor.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0x07,0x10,0xdf,0xff]
xnor.t %d15, %d0, 31, %d1, 31

# CHECK-INST: xnor.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x5f,0xf0]
xnor.t %d15, %d0, 31, %d14, 0

# CHECK-INST: xnor.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xdf,0xf3]
xnor.t %d15, %d0, 31, %d14, 7

# CHECK-INST: xnor.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x5f,0xfc]
xnor.t %d15, %d0, 31, %d14, 24

# CHECK-INST: xnor.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xdf,0xff]
xnor.t %d15, %d0, 31, %d14, 31

# CHECK-INST: xnor.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x5f,0xf0]
xnor.t %d15, %d0, 31, %d15, 0

# CHECK-INST: xnor.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xdf,0xf3]
xnor.t %d15, %d0, 31, %d15, 7

# CHECK-INST: xnor.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x5f,0xfc]
xnor.t %d15, %d0, 31, %d15, 24

# CHECK-INST: xnor.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xdf,0xff]
xnor.t %d15, %d0, 31, %d15, 31

# CHECK-INST: xnor.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0x07,0x01,0x40,0xf0]
xnor.t %d15, %d1, 0, %d0, 0

# CHECK-INST: xnor.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0x07,0x01,0xc0,0xf3]
xnor.t %d15, %d1, 0, %d0, 7

# CHECK-INST: xnor.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0x07,0x01,0x40,0xfc]
xnor.t %d15, %d1, 0, %d0, 24

# CHECK-INST: xnor.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0x07,0x01,0xc0,0xff]
xnor.t %d15, %d1, 0, %d0, 31

# CHECK-INST: xnor.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0x07,0x11,0x40,0xf0]
xnor.t %d15, %d1, 0, %d1, 0

# CHECK-INST: xnor.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0x07,0x11,0xc0,0xf3]
xnor.t %d15, %d1, 0, %d1, 7

# CHECK-INST: xnor.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0x07,0x11,0x40,0xfc]
xnor.t %d15, %d1, 0, %d1, 24

# CHECK-INST: xnor.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0x07,0x11,0xc0,0xff]
xnor.t %d15, %d1, 0, %d1, 31

# CHECK-INST: xnor.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x40,0xf0]
xnor.t %d15, %d1, 0, %d14, 0

# CHECK-INST: xnor.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xc0,0xf3]
xnor.t %d15, %d1, 0, %d14, 7

# CHECK-INST: xnor.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x40,0xfc]
xnor.t %d15, %d1, 0, %d14, 24

# CHECK-INST: xnor.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xc0,0xff]
xnor.t %d15, %d1, 0, %d14, 31

# CHECK-INST: xnor.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x40,0xf0]
xnor.t %d15, %d1, 0, %d15, 0

# CHECK-INST: xnor.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xc0,0xf3]
xnor.t %d15, %d1, 0, %d15, 7

# CHECK-INST: xnor.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x40,0xfc]
xnor.t %d15, %d1, 0, %d15, 24

# CHECK-INST: xnor.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xc0,0xff]
xnor.t %d15, %d1, 0, %d15, 31

# CHECK-INST: xnor.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0x07,0x01,0x47,0xf0]
xnor.t %d15, %d1, 7, %d0, 0

# CHECK-INST: xnor.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0x07,0x01,0xc7,0xf3]
xnor.t %d15, %d1, 7, %d0, 7

# CHECK-INST: xnor.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0x07,0x01,0x47,0xfc]
xnor.t %d15, %d1, 7, %d0, 24

# CHECK-INST: xnor.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0x07,0x01,0xc7,0xff]
xnor.t %d15, %d1, 7, %d0, 31

# CHECK-INST: xnor.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0x07,0x11,0x47,0xf0]
xnor.t %d15, %d1, 7, %d1, 0

# CHECK-INST: xnor.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0x07,0x11,0xc7,0xf3]
xnor.t %d15, %d1, 7, %d1, 7

# CHECK-INST: xnor.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0x07,0x11,0x47,0xfc]
xnor.t %d15, %d1, 7, %d1, 24

# CHECK-INST: xnor.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0x07,0x11,0xc7,0xff]
xnor.t %d15, %d1, 7, %d1, 31

# CHECK-INST: xnor.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x47,0xf0]
xnor.t %d15, %d1, 7, %d14, 0

# CHECK-INST: xnor.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xc7,0xf3]
xnor.t %d15, %d1, 7, %d14, 7

# CHECK-INST: xnor.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x47,0xfc]
xnor.t %d15, %d1, 7, %d14, 24

# CHECK-INST: xnor.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xc7,0xff]
xnor.t %d15, %d1, 7, %d14, 31

# CHECK-INST: xnor.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x47,0xf0]
xnor.t %d15, %d1, 7, %d15, 0

# CHECK-INST: xnor.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xc7,0xf3]
xnor.t %d15, %d1, 7, %d15, 7

# CHECK-INST: xnor.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x47,0xfc]
xnor.t %d15, %d1, 7, %d15, 24

# CHECK-INST: xnor.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xc7,0xff]
xnor.t %d15, %d1, 7, %d15, 31

# CHECK-INST: xnor.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0x07,0x01,0x58,0xf0]
xnor.t %d15, %d1, 24, %d0, 0

# CHECK-INST: xnor.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0x07,0x01,0xd8,0xf3]
xnor.t %d15, %d1, 24, %d0, 7

# CHECK-INST: xnor.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0x07,0x01,0x58,0xfc]
xnor.t %d15, %d1, 24, %d0, 24

# CHECK-INST: xnor.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0x07,0x01,0xd8,0xff]
xnor.t %d15, %d1, 24, %d0, 31

# CHECK-INST: xnor.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0x07,0x11,0x58,0xf0]
xnor.t %d15, %d1, 24, %d1, 0

# CHECK-INST: xnor.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0x07,0x11,0xd8,0xf3]
xnor.t %d15, %d1, 24, %d1, 7

# CHECK-INST: xnor.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0x07,0x11,0x58,0xfc]
xnor.t %d15, %d1, 24, %d1, 24

# CHECK-INST: xnor.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0x07,0x11,0xd8,0xff]
xnor.t %d15, %d1, 24, %d1, 31

# CHECK-INST: xnor.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x58,0xf0]
xnor.t %d15, %d1, 24, %d14, 0

# CHECK-INST: xnor.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xd8,0xf3]
xnor.t %d15, %d1, 24, %d14, 7

# CHECK-INST: xnor.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x58,0xfc]
xnor.t %d15, %d1, 24, %d14, 24

# CHECK-INST: xnor.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xd8,0xff]
xnor.t %d15, %d1, 24, %d14, 31

# CHECK-INST: xnor.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x58,0xf0]
xnor.t %d15, %d1, 24, %d15, 0

# CHECK-INST: xnor.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xd8,0xf3]
xnor.t %d15, %d1, 24, %d15, 7

# CHECK-INST: xnor.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x58,0xfc]
xnor.t %d15, %d1, 24, %d15, 24

# CHECK-INST: xnor.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xd8,0xff]
xnor.t %d15, %d1, 24, %d15, 31

# CHECK-INST: xnor.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0x07,0x01,0x5f,0xf0]
xnor.t %d15, %d1, 31, %d0, 0

# CHECK-INST: xnor.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0x07,0x01,0xdf,0xf3]
xnor.t %d15, %d1, 31, %d0, 7

# CHECK-INST: xnor.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0x07,0x01,0x5f,0xfc]
xnor.t %d15, %d1, 31, %d0, 24

# CHECK-INST: xnor.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0x07,0x01,0xdf,0xff]
xnor.t %d15, %d1, 31, %d0, 31

# CHECK-INST: xnor.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0x07,0x11,0x5f,0xf0]
xnor.t %d15, %d1, 31, %d1, 0

# CHECK-INST: xnor.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0x07,0x11,0xdf,0xf3]
xnor.t %d15, %d1, 31, %d1, 7

# CHECK-INST: xnor.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0x07,0x11,0x5f,0xfc]
xnor.t %d15, %d1, 31, %d1, 24

# CHECK-INST: xnor.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0x07,0x11,0xdf,0xff]
xnor.t %d15, %d1, 31, %d1, 31

# CHECK-INST: xnor.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x5f,0xf0]
xnor.t %d15, %d1, 31, %d14, 0

# CHECK-INST: xnor.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xdf,0xf3]
xnor.t %d15, %d1, 31, %d14, 7

# CHECK-INST: xnor.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x5f,0xfc]
xnor.t %d15, %d1, 31, %d14, 24

# CHECK-INST: xnor.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xdf,0xff]
xnor.t %d15, %d1, 31, %d14, 31

# CHECK-INST: xnor.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x5f,0xf0]
xnor.t %d15, %d1, 31, %d15, 0

# CHECK-INST: xnor.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xdf,0xf3]
xnor.t %d15, %d1, 31, %d15, 7

# CHECK-INST: xnor.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x5f,0xfc]
xnor.t %d15, %d1, 31, %d15, 24

# CHECK-INST: xnor.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xdf,0xff]
xnor.t %d15, %d1, 31, %d15, 31

# CHECK-INST: xnor.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x40,0xf0]
xnor.t %d15, %d14, 0, %d0, 0

# CHECK-INST: xnor.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xc0,0xf3]
xnor.t %d15, %d14, 0, %d0, 7

# CHECK-INST: xnor.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x40,0xfc]
xnor.t %d15, %d14, 0, %d0, 24

# CHECK-INST: xnor.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xc0,0xff]
xnor.t %d15, %d14, 0, %d0, 31

# CHECK-INST: xnor.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x40,0xf0]
xnor.t %d15, %d14, 0, %d1, 0

# CHECK-INST: xnor.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xc0,0xf3]
xnor.t %d15, %d14, 0, %d1, 7

# CHECK-INST: xnor.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x40,0xfc]
xnor.t %d15, %d14, 0, %d1, 24

# CHECK-INST: xnor.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xc0,0xff]
xnor.t %d15, %d14, 0, %d1, 31

# CHECK-INST: xnor.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0x07,0xee,0x40,0xf0]
xnor.t %d15, %d14, 0, %d14, 0

# CHECK-INST: xnor.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0x07,0xee,0xc0,0xf3]
xnor.t %d15, %d14, 0, %d14, 7

# CHECK-INST: xnor.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0x07,0xee,0x40,0xfc]
xnor.t %d15, %d14, 0, %d14, 24

# CHECK-INST: xnor.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0x07,0xee,0xc0,0xff]
xnor.t %d15, %d14, 0, %d14, 31

# CHECK-INST: xnor.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x40,0xf0]
xnor.t %d15, %d14, 0, %d15, 0

# CHECK-INST: xnor.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xc0,0xf3]
xnor.t %d15, %d14, 0, %d15, 7

# CHECK-INST: xnor.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x40,0xfc]
xnor.t %d15, %d14, 0, %d15, 24

# CHECK-INST: xnor.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xc0,0xff]
xnor.t %d15, %d14, 0, %d15, 31

# CHECK-INST: xnor.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x47,0xf0]
xnor.t %d15, %d14, 7, %d0, 0

# CHECK-INST: xnor.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xc7,0xf3]
xnor.t %d15, %d14, 7, %d0, 7

# CHECK-INST: xnor.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x47,0xfc]
xnor.t %d15, %d14, 7, %d0, 24

# CHECK-INST: xnor.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xc7,0xff]
xnor.t %d15, %d14, 7, %d0, 31

# CHECK-INST: xnor.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x47,0xf0]
xnor.t %d15, %d14, 7, %d1, 0

# CHECK-INST: xnor.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xc7,0xf3]
xnor.t %d15, %d14, 7, %d1, 7

# CHECK-INST: xnor.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x47,0xfc]
xnor.t %d15, %d14, 7, %d1, 24

# CHECK-INST: xnor.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xc7,0xff]
xnor.t %d15, %d14, 7, %d1, 31

# CHECK-INST: xnor.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0x07,0xee,0x47,0xf0]
xnor.t %d15, %d14, 7, %d14, 0

# CHECK-INST: xnor.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0x07,0xee,0xc7,0xf3]
xnor.t %d15, %d14, 7, %d14, 7

# CHECK-INST: xnor.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0x07,0xee,0x47,0xfc]
xnor.t %d15, %d14, 7, %d14, 24

# CHECK-INST: xnor.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0x07,0xee,0xc7,0xff]
xnor.t %d15, %d14, 7, %d14, 31

# CHECK-INST: xnor.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x47,0xf0]
xnor.t %d15, %d14, 7, %d15, 0

# CHECK-INST: xnor.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xc7,0xf3]
xnor.t %d15, %d14, 7, %d15, 7

# CHECK-INST: xnor.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x47,0xfc]
xnor.t %d15, %d14, 7, %d15, 24

# CHECK-INST: xnor.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xc7,0xff]
xnor.t %d15, %d14, 7, %d15, 31

# CHECK-INST: xnor.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x58,0xf0]
xnor.t %d15, %d14, 24, %d0, 0

# CHECK-INST: xnor.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xd8,0xf3]
xnor.t %d15, %d14, 24, %d0, 7

# CHECK-INST: xnor.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x58,0xfc]
xnor.t %d15, %d14, 24, %d0, 24

# CHECK-INST: xnor.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xd8,0xff]
xnor.t %d15, %d14, 24, %d0, 31

# CHECK-INST: xnor.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x58,0xf0]
xnor.t %d15, %d14, 24, %d1, 0

# CHECK-INST: xnor.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xd8,0xf3]
xnor.t %d15, %d14, 24, %d1, 7

# CHECK-INST: xnor.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x58,0xfc]
xnor.t %d15, %d14, 24, %d1, 24

# CHECK-INST: xnor.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xd8,0xff]
xnor.t %d15, %d14, 24, %d1, 31

# CHECK-INST: xnor.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0x07,0xee,0x58,0xf0]
xnor.t %d15, %d14, 24, %d14, 0

# CHECK-INST: xnor.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0x07,0xee,0xd8,0xf3]
xnor.t %d15, %d14, 24, %d14, 7

# CHECK-INST: xnor.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0x07,0xee,0x58,0xfc]
xnor.t %d15, %d14, 24, %d14, 24

# CHECK-INST: xnor.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0x07,0xee,0xd8,0xff]
xnor.t %d15, %d14, 24, %d14, 31

# CHECK-INST: xnor.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x58,0xf0]
xnor.t %d15, %d14, 24, %d15, 0

# CHECK-INST: xnor.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xd8,0xf3]
xnor.t %d15, %d14, 24, %d15, 7

# CHECK-INST: xnor.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x58,0xfc]
xnor.t %d15, %d14, 24, %d15, 24

# CHECK-INST: xnor.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xd8,0xff]
xnor.t %d15, %d14, 24, %d15, 31

# CHECK-INST: xnor.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x5f,0xf0]
xnor.t %d15, %d14, 31, %d0, 0

# CHECK-INST: xnor.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xdf,0xf3]
xnor.t %d15, %d14, 31, %d0, 7

# CHECK-INST: xnor.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x5f,0xfc]
xnor.t %d15, %d14, 31, %d0, 24

# CHECK-INST: xnor.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xdf,0xff]
xnor.t %d15, %d14, 31, %d0, 31

# CHECK-INST: xnor.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x5f,0xf0]
xnor.t %d15, %d14, 31, %d1, 0

# CHECK-INST: xnor.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xdf,0xf3]
xnor.t %d15, %d14, 31, %d1, 7

# CHECK-INST: xnor.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x5f,0xfc]
xnor.t %d15, %d14, 31, %d1, 24

# CHECK-INST: xnor.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xdf,0xff]
xnor.t %d15, %d14, 31, %d1, 31

# CHECK-INST: xnor.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0x07,0xee,0x5f,0xf0]
xnor.t %d15, %d14, 31, %d14, 0

# CHECK-INST: xnor.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0x07,0xee,0xdf,0xf3]
xnor.t %d15, %d14, 31, %d14, 7

# CHECK-INST: xnor.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0x07,0xee,0x5f,0xfc]
xnor.t %d15, %d14, 31, %d14, 24

# CHECK-INST: xnor.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0x07,0xee,0xdf,0xff]
xnor.t %d15, %d14, 31, %d14, 31

# CHECK-INST: xnor.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x5f,0xf0]
xnor.t %d15, %d14, 31, %d15, 0

# CHECK-INST: xnor.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xdf,0xf3]
xnor.t %d15, %d14, 31, %d15, 7

# CHECK-INST: xnor.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x5f,0xfc]
xnor.t %d15, %d14, 31, %d15, 24

# CHECK-INST: xnor.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xdf,0xff]
xnor.t %d15, %d14, 31, %d15, 31

# CHECK-INST: xnor.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x40,0xf0]
xnor.t %d15, %d15, 0, %d0, 0

# CHECK-INST: xnor.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xc0,0xf3]
xnor.t %d15, %d15, 0, %d0, 7

# CHECK-INST: xnor.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x40,0xfc]
xnor.t %d15, %d15, 0, %d0, 24

# CHECK-INST: xnor.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xc0,0xff]
xnor.t %d15, %d15, 0, %d0, 31

# CHECK-INST: xnor.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x40,0xf0]
xnor.t %d15, %d15, 0, %d1, 0

# CHECK-INST: xnor.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xc0,0xf3]
xnor.t %d15, %d15, 0, %d1, 7

# CHECK-INST: xnor.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x40,0xfc]
xnor.t %d15, %d15, 0, %d1, 24

# CHECK-INST: xnor.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xc0,0xff]
xnor.t %d15, %d15, 0, %d1, 31

# CHECK-INST: xnor.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0x07,0xef,0x40,0xf0]
xnor.t %d15, %d15, 0, %d14, 0

# CHECK-INST: xnor.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0x07,0xef,0xc0,0xf3]
xnor.t %d15, %d15, 0, %d14, 7

# CHECK-INST: xnor.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0x07,0xef,0x40,0xfc]
xnor.t %d15, %d15, 0, %d14, 24

# CHECK-INST: xnor.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0x07,0xef,0xc0,0xff]
xnor.t %d15, %d15, 0, %d14, 31

# CHECK-INST: xnor.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0x07,0xff,0x40,0xf0]
xnor.t %d15, %d15, 0, %d15, 0

# CHECK-INST: xnor.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0x07,0xff,0xc0,0xf3]
xnor.t %d15, %d15, 0, %d15, 7

# CHECK-INST: xnor.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0x07,0xff,0x40,0xfc]
xnor.t %d15, %d15, 0, %d15, 24

# CHECK-INST: xnor.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0x07,0xff,0xc0,0xff]
xnor.t %d15, %d15, 0, %d15, 31

# CHECK-INST: xnor.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x47,0xf0]
xnor.t %d15, %d15, 7, %d0, 0

# CHECK-INST: xnor.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xc7,0xf3]
xnor.t %d15, %d15, 7, %d0, 7

# CHECK-INST: xnor.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x47,0xfc]
xnor.t %d15, %d15, 7, %d0, 24

# CHECK-INST: xnor.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xc7,0xff]
xnor.t %d15, %d15, 7, %d0, 31

# CHECK-INST: xnor.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x47,0xf0]
xnor.t %d15, %d15, 7, %d1, 0

# CHECK-INST: xnor.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xc7,0xf3]
xnor.t %d15, %d15, 7, %d1, 7

# CHECK-INST: xnor.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x47,0xfc]
xnor.t %d15, %d15, 7, %d1, 24

# CHECK-INST: xnor.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xc7,0xff]
xnor.t %d15, %d15, 7, %d1, 31

# CHECK-INST: xnor.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0x07,0xef,0x47,0xf0]
xnor.t %d15, %d15, 7, %d14, 0

# CHECK-INST: xnor.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0x07,0xef,0xc7,0xf3]
xnor.t %d15, %d15, 7, %d14, 7

# CHECK-INST: xnor.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0x07,0xef,0x47,0xfc]
xnor.t %d15, %d15, 7, %d14, 24

# CHECK-INST: xnor.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0x07,0xef,0xc7,0xff]
xnor.t %d15, %d15, 7, %d14, 31

# CHECK-INST: xnor.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0x07,0xff,0x47,0xf0]
xnor.t %d15, %d15, 7, %d15, 0

# CHECK-INST: xnor.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0x07,0xff,0xc7,0xf3]
xnor.t %d15, %d15, 7, %d15, 7

# CHECK-INST: xnor.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0x07,0xff,0x47,0xfc]
xnor.t %d15, %d15, 7, %d15, 24

# CHECK-INST: xnor.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0x07,0xff,0xc7,0xff]
xnor.t %d15, %d15, 7, %d15, 31

# CHECK-INST: xnor.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x58,0xf0]
xnor.t %d15, %d15, 24, %d0, 0

# CHECK-INST: xnor.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xd8,0xf3]
xnor.t %d15, %d15, 24, %d0, 7

# CHECK-INST: xnor.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x58,0xfc]
xnor.t %d15, %d15, 24, %d0, 24

# CHECK-INST: xnor.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xd8,0xff]
xnor.t %d15, %d15, 24, %d0, 31

# CHECK-INST: xnor.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x58,0xf0]
xnor.t %d15, %d15, 24, %d1, 0

# CHECK-INST: xnor.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xd8,0xf3]
xnor.t %d15, %d15, 24, %d1, 7

# CHECK-INST: xnor.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x58,0xfc]
xnor.t %d15, %d15, 24, %d1, 24

# CHECK-INST: xnor.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xd8,0xff]
xnor.t %d15, %d15, 24, %d1, 31

# CHECK-INST: xnor.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0x07,0xef,0x58,0xf0]
xnor.t %d15, %d15, 24, %d14, 0

# CHECK-INST: xnor.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0x07,0xef,0xd8,0xf3]
xnor.t %d15, %d15, 24, %d14, 7

# CHECK-INST: xnor.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0x07,0xef,0x58,0xfc]
xnor.t %d15, %d15, 24, %d14, 24

# CHECK-INST: xnor.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0x07,0xef,0xd8,0xff]
xnor.t %d15, %d15, 24, %d14, 31

# CHECK-INST: xnor.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0x07,0xff,0x58,0xf0]
xnor.t %d15, %d15, 24, %d15, 0

# CHECK-INST: xnor.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0x07,0xff,0xd8,0xf3]
xnor.t %d15, %d15, 24, %d15, 7

# CHECK-INST: xnor.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0x07,0xff,0x58,0xfc]
xnor.t %d15, %d15, 24, %d15, 24

# CHECK-INST: xnor.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0x07,0xff,0xd8,0xff]
xnor.t %d15, %d15, 24, %d15, 31

# CHECK-INST: xnor.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x5f,0xf0]
xnor.t %d15, %d15, 31, %d0, 0

# CHECK-INST: xnor.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xdf,0xf3]
xnor.t %d15, %d15, 31, %d0, 7

# CHECK-INST: xnor.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x5f,0xfc]
xnor.t %d15, %d15, 31, %d0, 24

# CHECK-INST: xnor.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xdf,0xff]
xnor.t %d15, %d15, 31, %d0, 31

# CHECK-INST: xnor.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x5f,0xf0]
xnor.t %d15, %d15, 31, %d1, 0

# CHECK-INST: xnor.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xdf,0xf3]
xnor.t %d15, %d15, 31, %d1, 7

# CHECK-INST: xnor.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x5f,0xfc]
xnor.t %d15, %d15, 31, %d1, 24

# CHECK-INST: xnor.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xdf,0xff]
xnor.t %d15, %d15, 31, %d1, 31

# CHECK-INST: xnor.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0x07,0xef,0x5f,0xf0]
xnor.t %d15, %d15, 31, %d14, 0

# CHECK-INST: xnor.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0x07,0xef,0xdf,0xf3]
xnor.t %d15, %d15, 31, %d14, 7

# CHECK-INST: xnor.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0x07,0xef,0x5f,0xfc]
xnor.t %d15, %d15, 31, %d14, 24

# CHECK-INST: xnor.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0x07,0xef,0xdf,0xff]
xnor.t %d15, %d15, 31, %d14, 31

# CHECK-INST: xnor.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0x07,0xff,0x5f,0xf0]
xnor.t %d15, %d15, 31, %d15, 0

# CHECK-INST: xnor.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0x07,0xff,0xdf,0xf3]
xnor.t %d15, %d15, 31, %d15, 7

# CHECK-INST: xnor.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0x07,0xff,0x5f,0xfc]
xnor.t %d15, %d15, 31, %d15, 24

# CHECK-INST: xnor.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0x07,0xff,0xdf,0xff]
xnor.t %d15, %d15, 31, %d15, 31

# CHECK-INST: xor.t %d0, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x60,0x00]
xor.t %d0, %d0, 0, %d0, 0

# CHECK-INST: xor.t %d0, %d0, 0, %d0, 7
# CHECK: encoding: [0x07,0x00,0xe0,0x03]
xor.t %d0, %d0, 0, %d0, 7

# CHECK-INST: xor.t %d0, %d0, 0, %d0, 24
# CHECK: encoding: [0x07,0x00,0x60,0x0c]
xor.t %d0, %d0, 0, %d0, 24

# CHECK-INST: xor.t %d0, %d0, 0, %d0, 31
# CHECK: encoding: [0x07,0x00,0xe0,0x0f]
xor.t %d0, %d0, 0, %d0, 31

# CHECK-INST: xor.t %d0, %d0, 0, %d1, 0
# CHECK: encoding: [0x07,0x10,0x60,0x00]
xor.t %d0, %d0, 0, %d1, 0

# CHECK-INST: xor.t %d0, %d0, 0, %d1, 7
# CHECK: encoding: [0x07,0x10,0xe0,0x03]
xor.t %d0, %d0, 0, %d1, 7

# CHECK-INST: xor.t %d0, %d0, 0, %d1, 24
# CHECK: encoding: [0x07,0x10,0x60,0x0c]
xor.t %d0, %d0, 0, %d1, 24

# CHECK-INST: xor.t %d0, %d0, 0, %d1, 31
# CHECK: encoding: [0x07,0x10,0xe0,0x0f]
xor.t %d0, %d0, 0, %d1, 31

# CHECK-INST: xor.t %d0, %d0, 0, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x60,0x00]
xor.t %d0, %d0, 0, %d14, 0

# CHECK-INST: xor.t %d0, %d0, 0, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xe0,0x03]
xor.t %d0, %d0, 0, %d14, 7

# CHECK-INST: xor.t %d0, %d0, 0, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x60,0x0c]
xor.t %d0, %d0, 0, %d14, 24

# CHECK-INST: xor.t %d0, %d0, 0, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xe0,0x0f]
xor.t %d0, %d0, 0, %d14, 31

# CHECK-INST: xor.t %d0, %d0, 0, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x60,0x00]
xor.t %d0, %d0, 0, %d15, 0

# CHECK-INST: xor.t %d0, %d0, 0, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xe0,0x03]
xor.t %d0, %d0, 0, %d15, 7

# CHECK-INST: xor.t %d0, %d0, 0, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x60,0x0c]
xor.t %d0, %d0, 0, %d15, 24

# CHECK-INST: xor.t %d0, %d0, 0, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xe0,0x0f]
xor.t %d0, %d0, 0, %d15, 31

# CHECK-INST: xor.t %d0, %d0, 7, %d0, 0
# CHECK: encoding: [0x07,0x00,0x67,0x00]
xor.t %d0, %d0, 7, %d0, 0

# CHECK-INST: xor.t %d0, %d0, 7, %d0, 7
# CHECK: encoding: [0x07,0x00,0xe7,0x03]
xor.t %d0, %d0, 7, %d0, 7

# CHECK-INST: xor.t %d0, %d0, 7, %d0, 24
# CHECK: encoding: [0x07,0x00,0x67,0x0c]
xor.t %d0, %d0, 7, %d0, 24

# CHECK-INST: xor.t %d0, %d0, 7, %d0, 31
# CHECK: encoding: [0x07,0x00,0xe7,0x0f]
xor.t %d0, %d0, 7, %d0, 31

# CHECK-INST: xor.t %d0, %d0, 7, %d1, 0
# CHECK: encoding: [0x07,0x10,0x67,0x00]
xor.t %d0, %d0, 7, %d1, 0

# CHECK-INST: xor.t %d0, %d0, 7, %d1, 7
# CHECK: encoding: [0x07,0x10,0xe7,0x03]
xor.t %d0, %d0, 7, %d1, 7

# CHECK-INST: xor.t %d0, %d0, 7, %d1, 24
# CHECK: encoding: [0x07,0x10,0x67,0x0c]
xor.t %d0, %d0, 7, %d1, 24

# CHECK-INST: xor.t %d0, %d0, 7, %d1, 31
# CHECK: encoding: [0x07,0x10,0xe7,0x0f]
xor.t %d0, %d0, 7, %d1, 31

# CHECK-INST: xor.t %d0, %d0, 7, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x67,0x00]
xor.t %d0, %d0, 7, %d14, 0

# CHECK-INST: xor.t %d0, %d0, 7, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xe7,0x03]
xor.t %d0, %d0, 7, %d14, 7

# CHECK-INST: xor.t %d0, %d0, 7, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x67,0x0c]
xor.t %d0, %d0, 7, %d14, 24

# CHECK-INST: xor.t %d0, %d0, 7, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xe7,0x0f]
xor.t %d0, %d0, 7, %d14, 31

# CHECK-INST: xor.t %d0, %d0, 7, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x67,0x00]
xor.t %d0, %d0, 7, %d15, 0

# CHECK-INST: xor.t %d0, %d0, 7, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xe7,0x03]
xor.t %d0, %d0, 7, %d15, 7

# CHECK-INST: xor.t %d0, %d0, 7, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x67,0x0c]
xor.t %d0, %d0, 7, %d15, 24

# CHECK-INST: xor.t %d0, %d0, 7, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xe7,0x0f]
xor.t %d0, %d0, 7, %d15, 31

# CHECK-INST: xor.t %d0, %d0, 24, %d0, 0
# CHECK: encoding: [0x07,0x00,0x78,0x00]
xor.t %d0, %d0, 24, %d0, 0

# CHECK-INST: xor.t %d0, %d0, 24, %d0, 7
# CHECK: encoding: [0x07,0x00,0xf8,0x03]
xor.t %d0, %d0, 24, %d0, 7

# CHECK-INST: xor.t %d0, %d0, 24, %d0, 24
# CHECK: encoding: [0x07,0x00,0x78,0x0c]
xor.t %d0, %d0, 24, %d0, 24

# CHECK-INST: xor.t %d0, %d0, 24, %d0, 31
# CHECK: encoding: [0x07,0x00,0xf8,0x0f]
xor.t %d0, %d0, 24, %d0, 31

# CHECK-INST: xor.t %d0, %d0, 24, %d1, 0
# CHECK: encoding: [0x07,0x10,0x78,0x00]
xor.t %d0, %d0, 24, %d1, 0

# CHECK-INST: xor.t %d0, %d0, 24, %d1, 7
# CHECK: encoding: [0x07,0x10,0xf8,0x03]
xor.t %d0, %d0, 24, %d1, 7

# CHECK-INST: xor.t %d0, %d0, 24, %d1, 24
# CHECK: encoding: [0x07,0x10,0x78,0x0c]
xor.t %d0, %d0, 24, %d1, 24

# CHECK-INST: xor.t %d0, %d0, 24, %d1, 31
# CHECK: encoding: [0x07,0x10,0xf8,0x0f]
xor.t %d0, %d0, 24, %d1, 31

# CHECK-INST: xor.t %d0, %d0, 24, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x78,0x00]
xor.t %d0, %d0, 24, %d14, 0

# CHECK-INST: xor.t %d0, %d0, 24, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xf8,0x03]
xor.t %d0, %d0, 24, %d14, 7

# CHECK-INST: xor.t %d0, %d0, 24, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x78,0x0c]
xor.t %d0, %d0, 24, %d14, 24

# CHECK-INST: xor.t %d0, %d0, 24, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xf8,0x0f]
xor.t %d0, %d0, 24, %d14, 31

# CHECK-INST: xor.t %d0, %d0, 24, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x78,0x00]
xor.t %d0, %d0, 24, %d15, 0

# CHECK-INST: xor.t %d0, %d0, 24, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xf8,0x03]
xor.t %d0, %d0, 24, %d15, 7

# CHECK-INST: xor.t %d0, %d0, 24, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x78,0x0c]
xor.t %d0, %d0, 24, %d15, 24

# CHECK-INST: xor.t %d0, %d0, 24, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xf8,0x0f]
xor.t %d0, %d0, 24, %d15, 31

# CHECK-INST: xor.t %d0, %d0, 31, %d0, 0
# CHECK: encoding: [0x07,0x00,0x7f,0x00]
xor.t %d0, %d0, 31, %d0, 0

# CHECK-INST: xor.t %d0, %d0, 31, %d0, 7
# CHECK: encoding: [0x07,0x00,0xff,0x03]
xor.t %d0, %d0, 31, %d0, 7

# CHECK-INST: xor.t %d0, %d0, 31, %d0, 24
# CHECK: encoding: [0x07,0x00,0x7f,0x0c]
xor.t %d0, %d0, 31, %d0, 24

# CHECK-INST: xor.t %d0, %d0, 31, %d0, 31
# CHECK: encoding: [0x07,0x00,0xff,0x0f]
xor.t %d0, %d0, 31, %d0, 31

# CHECK-INST: xor.t %d0, %d0, 31, %d1, 0
# CHECK: encoding: [0x07,0x10,0x7f,0x00]
xor.t %d0, %d0, 31, %d1, 0

# CHECK-INST: xor.t %d0, %d0, 31, %d1, 7
# CHECK: encoding: [0x07,0x10,0xff,0x03]
xor.t %d0, %d0, 31, %d1, 7

# CHECK-INST: xor.t %d0, %d0, 31, %d1, 24
# CHECK: encoding: [0x07,0x10,0x7f,0x0c]
xor.t %d0, %d0, 31, %d1, 24

# CHECK-INST: xor.t %d0, %d0, 31, %d1, 31
# CHECK: encoding: [0x07,0x10,0xff,0x0f]
xor.t %d0, %d0, 31, %d1, 31

# CHECK-INST: xor.t %d0, %d0, 31, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x7f,0x00]
xor.t %d0, %d0, 31, %d14, 0

# CHECK-INST: xor.t %d0, %d0, 31, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xff,0x03]
xor.t %d0, %d0, 31, %d14, 7

# CHECK-INST: xor.t %d0, %d0, 31, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x7f,0x0c]
xor.t %d0, %d0, 31, %d14, 24

# CHECK-INST: xor.t %d0, %d0, 31, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xff,0x0f]
xor.t %d0, %d0, 31, %d14, 31

# CHECK-INST: xor.t %d0, %d0, 31, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x7f,0x00]
xor.t %d0, %d0, 31, %d15, 0

# CHECK-INST: xor.t %d0, %d0, 31, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xff,0x03]
xor.t %d0, %d0, 31, %d15, 7

# CHECK-INST: xor.t %d0, %d0, 31, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x7f,0x0c]
xor.t %d0, %d0, 31, %d15, 24

# CHECK-INST: xor.t %d0, %d0, 31, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xff,0x0f]
xor.t %d0, %d0, 31, %d15, 31

# CHECK-INST: xor.t %d0, %d1, 0, %d0, 0
# CHECK: encoding: [0x07,0x01,0x60,0x00]
xor.t %d0, %d1, 0, %d0, 0

# CHECK-INST: xor.t %d0, %d1, 0, %d0, 7
# CHECK: encoding: [0x07,0x01,0xe0,0x03]
xor.t %d0, %d1, 0, %d0, 7

# CHECK-INST: xor.t %d0, %d1, 0, %d0, 24
# CHECK: encoding: [0x07,0x01,0x60,0x0c]
xor.t %d0, %d1, 0, %d0, 24

# CHECK-INST: xor.t %d0, %d1, 0, %d0, 31
# CHECK: encoding: [0x07,0x01,0xe0,0x0f]
xor.t %d0, %d1, 0, %d0, 31

# CHECK-INST: xor.t %d0, %d1, 0, %d1, 0
# CHECK: encoding: [0x07,0x11,0x60,0x00]
xor.t %d0, %d1, 0, %d1, 0

# CHECK-INST: xor.t %d0, %d1, 0, %d1, 7
# CHECK: encoding: [0x07,0x11,0xe0,0x03]
xor.t %d0, %d1, 0, %d1, 7

# CHECK-INST: xor.t %d0, %d1, 0, %d1, 24
# CHECK: encoding: [0x07,0x11,0x60,0x0c]
xor.t %d0, %d1, 0, %d1, 24

# CHECK-INST: xor.t %d0, %d1, 0, %d1, 31
# CHECK: encoding: [0x07,0x11,0xe0,0x0f]
xor.t %d0, %d1, 0, %d1, 31

# CHECK-INST: xor.t %d0, %d1, 0, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x60,0x00]
xor.t %d0, %d1, 0, %d14, 0

# CHECK-INST: xor.t %d0, %d1, 0, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xe0,0x03]
xor.t %d0, %d1, 0, %d14, 7

# CHECK-INST: xor.t %d0, %d1, 0, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x60,0x0c]
xor.t %d0, %d1, 0, %d14, 24

# CHECK-INST: xor.t %d0, %d1, 0, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xe0,0x0f]
xor.t %d0, %d1, 0, %d14, 31

# CHECK-INST: xor.t %d0, %d1, 0, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x60,0x00]
xor.t %d0, %d1, 0, %d15, 0

# CHECK-INST: xor.t %d0, %d1, 0, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xe0,0x03]
xor.t %d0, %d1, 0, %d15, 7

# CHECK-INST: xor.t %d0, %d1, 0, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x60,0x0c]
xor.t %d0, %d1, 0, %d15, 24

# CHECK-INST: xor.t %d0, %d1, 0, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xe0,0x0f]
xor.t %d0, %d1, 0, %d15, 31

# CHECK-INST: xor.t %d0, %d1, 7, %d0, 0
# CHECK: encoding: [0x07,0x01,0x67,0x00]
xor.t %d0, %d1, 7, %d0, 0

# CHECK-INST: xor.t %d0, %d1, 7, %d0, 7
# CHECK: encoding: [0x07,0x01,0xe7,0x03]
xor.t %d0, %d1, 7, %d0, 7

# CHECK-INST: xor.t %d0, %d1, 7, %d0, 24
# CHECK: encoding: [0x07,0x01,0x67,0x0c]
xor.t %d0, %d1, 7, %d0, 24

# CHECK-INST: xor.t %d0, %d1, 7, %d0, 31
# CHECK: encoding: [0x07,0x01,0xe7,0x0f]
xor.t %d0, %d1, 7, %d0, 31

# CHECK-INST: xor.t %d0, %d1, 7, %d1, 0
# CHECK: encoding: [0x07,0x11,0x67,0x00]
xor.t %d0, %d1, 7, %d1, 0

# CHECK-INST: xor.t %d0, %d1, 7, %d1, 7
# CHECK: encoding: [0x07,0x11,0xe7,0x03]
xor.t %d0, %d1, 7, %d1, 7

# CHECK-INST: xor.t %d0, %d1, 7, %d1, 24
# CHECK: encoding: [0x07,0x11,0x67,0x0c]
xor.t %d0, %d1, 7, %d1, 24

# CHECK-INST: xor.t %d0, %d1, 7, %d1, 31
# CHECK: encoding: [0x07,0x11,0xe7,0x0f]
xor.t %d0, %d1, 7, %d1, 31

# CHECK-INST: xor.t %d0, %d1, 7, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x67,0x00]
xor.t %d0, %d1, 7, %d14, 0

# CHECK-INST: xor.t %d0, %d1, 7, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xe7,0x03]
xor.t %d0, %d1, 7, %d14, 7

# CHECK-INST: xor.t %d0, %d1, 7, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x67,0x0c]
xor.t %d0, %d1, 7, %d14, 24

# CHECK-INST: xor.t %d0, %d1, 7, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xe7,0x0f]
xor.t %d0, %d1, 7, %d14, 31

# CHECK-INST: xor.t %d0, %d1, 7, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x67,0x00]
xor.t %d0, %d1, 7, %d15, 0

# CHECK-INST: xor.t %d0, %d1, 7, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xe7,0x03]
xor.t %d0, %d1, 7, %d15, 7

# CHECK-INST: xor.t %d0, %d1, 7, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x67,0x0c]
xor.t %d0, %d1, 7, %d15, 24

# CHECK-INST: xor.t %d0, %d1, 7, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xe7,0x0f]
xor.t %d0, %d1, 7, %d15, 31

# CHECK-INST: xor.t %d0, %d1, 24, %d0, 0
# CHECK: encoding: [0x07,0x01,0x78,0x00]
xor.t %d0, %d1, 24, %d0, 0

# CHECK-INST: xor.t %d0, %d1, 24, %d0, 7
# CHECK: encoding: [0x07,0x01,0xf8,0x03]
xor.t %d0, %d1, 24, %d0, 7

# CHECK-INST: xor.t %d0, %d1, 24, %d0, 24
# CHECK: encoding: [0x07,0x01,0x78,0x0c]
xor.t %d0, %d1, 24, %d0, 24

# CHECK-INST: xor.t %d0, %d1, 24, %d0, 31
# CHECK: encoding: [0x07,0x01,0xf8,0x0f]
xor.t %d0, %d1, 24, %d0, 31

# CHECK-INST: xor.t %d0, %d1, 24, %d1, 0
# CHECK: encoding: [0x07,0x11,0x78,0x00]
xor.t %d0, %d1, 24, %d1, 0

# CHECK-INST: xor.t %d0, %d1, 24, %d1, 7
# CHECK: encoding: [0x07,0x11,0xf8,0x03]
xor.t %d0, %d1, 24, %d1, 7

# CHECK-INST: xor.t %d0, %d1, 24, %d1, 24
# CHECK: encoding: [0x07,0x11,0x78,0x0c]
xor.t %d0, %d1, 24, %d1, 24

# CHECK-INST: xor.t %d0, %d1, 24, %d1, 31
# CHECK: encoding: [0x07,0x11,0xf8,0x0f]
xor.t %d0, %d1, 24, %d1, 31

# CHECK-INST: xor.t %d0, %d1, 24, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x78,0x00]
xor.t %d0, %d1, 24, %d14, 0

# CHECK-INST: xor.t %d0, %d1, 24, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xf8,0x03]
xor.t %d0, %d1, 24, %d14, 7

# CHECK-INST: xor.t %d0, %d1, 24, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x78,0x0c]
xor.t %d0, %d1, 24, %d14, 24

# CHECK-INST: xor.t %d0, %d1, 24, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xf8,0x0f]
xor.t %d0, %d1, 24, %d14, 31

# CHECK-INST: xor.t %d0, %d1, 24, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x78,0x00]
xor.t %d0, %d1, 24, %d15, 0

# CHECK-INST: xor.t %d0, %d1, 24, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xf8,0x03]
xor.t %d0, %d1, 24, %d15, 7

# CHECK-INST: xor.t %d0, %d1, 24, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x78,0x0c]
xor.t %d0, %d1, 24, %d15, 24

# CHECK-INST: xor.t %d0, %d1, 24, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xf8,0x0f]
xor.t %d0, %d1, 24, %d15, 31

# CHECK-INST: xor.t %d0, %d1, 31, %d0, 0
# CHECK: encoding: [0x07,0x01,0x7f,0x00]
xor.t %d0, %d1, 31, %d0, 0

# CHECK-INST: xor.t %d0, %d1, 31, %d0, 7
# CHECK: encoding: [0x07,0x01,0xff,0x03]
xor.t %d0, %d1, 31, %d0, 7

# CHECK-INST: xor.t %d0, %d1, 31, %d0, 24
# CHECK: encoding: [0x07,0x01,0x7f,0x0c]
xor.t %d0, %d1, 31, %d0, 24

# CHECK-INST: xor.t %d0, %d1, 31, %d0, 31
# CHECK: encoding: [0x07,0x01,0xff,0x0f]
xor.t %d0, %d1, 31, %d0, 31

# CHECK-INST: xor.t %d0, %d1, 31, %d1, 0
# CHECK: encoding: [0x07,0x11,0x7f,0x00]
xor.t %d0, %d1, 31, %d1, 0

# CHECK-INST: xor.t %d0, %d1, 31, %d1, 7
# CHECK: encoding: [0x07,0x11,0xff,0x03]
xor.t %d0, %d1, 31, %d1, 7

# CHECK-INST: xor.t %d0, %d1, 31, %d1, 24
# CHECK: encoding: [0x07,0x11,0x7f,0x0c]
xor.t %d0, %d1, 31, %d1, 24

# CHECK-INST: xor.t %d0, %d1, 31, %d1, 31
# CHECK: encoding: [0x07,0x11,0xff,0x0f]
xor.t %d0, %d1, 31, %d1, 31

# CHECK-INST: xor.t %d0, %d1, 31, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x7f,0x00]
xor.t %d0, %d1, 31, %d14, 0

# CHECK-INST: xor.t %d0, %d1, 31, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xff,0x03]
xor.t %d0, %d1, 31, %d14, 7

# CHECK-INST: xor.t %d0, %d1, 31, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x7f,0x0c]
xor.t %d0, %d1, 31, %d14, 24

# CHECK-INST: xor.t %d0, %d1, 31, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xff,0x0f]
xor.t %d0, %d1, 31, %d14, 31

# CHECK-INST: xor.t %d0, %d1, 31, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x7f,0x00]
xor.t %d0, %d1, 31, %d15, 0

# CHECK-INST: xor.t %d0, %d1, 31, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xff,0x03]
xor.t %d0, %d1, 31, %d15, 7

# CHECK-INST: xor.t %d0, %d1, 31, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x7f,0x0c]
xor.t %d0, %d1, 31, %d15, 24

# CHECK-INST: xor.t %d0, %d1, 31, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xff,0x0f]
xor.t %d0, %d1, 31, %d15, 31

# CHECK-INST: xor.t %d0, %d14, 0, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x60,0x00]
xor.t %d0, %d14, 0, %d0, 0

# CHECK-INST: xor.t %d0, %d14, 0, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xe0,0x03]
xor.t %d0, %d14, 0, %d0, 7

# CHECK-INST: xor.t %d0, %d14, 0, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x60,0x0c]
xor.t %d0, %d14, 0, %d0, 24

# CHECK-INST: xor.t %d0, %d14, 0, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xe0,0x0f]
xor.t %d0, %d14, 0, %d0, 31

# CHECK-INST: xor.t %d0, %d14, 0, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x60,0x00]
xor.t %d0, %d14, 0, %d1, 0

# CHECK-INST: xor.t %d0, %d14, 0, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xe0,0x03]
xor.t %d0, %d14, 0, %d1, 7

# CHECK-INST: xor.t %d0, %d14, 0, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x60,0x0c]
xor.t %d0, %d14, 0, %d1, 24

# CHECK-INST: xor.t %d0, %d14, 0, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xe0,0x0f]
xor.t %d0, %d14, 0, %d1, 31

# CHECK-INST: xor.t %d0, %d14, 0, %d14, 0
# CHECK: encoding: [0x07,0xee,0x60,0x00]
xor.t %d0, %d14, 0, %d14, 0

# CHECK-INST: xor.t %d0, %d14, 0, %d14, 7
# CHECK: encoding: [0x07,0xee,0xe0,0x03]
xor.t %d0, %d14, 0, %d14, 7

# CHECK-INST: xor.t %d0, %d14, 0, %d14, 24
# CHECK: encoding: [0x07,0xee,0x60,0x0c]
xor.t %d0, %d14, 0, %d14, 24

# CHECK-INST: xor.t %d0, %d14, 0, %d14, 31
# CHECK: encoding: [0x07,0xee,0xe0,0x0f]
xor.t %d0, %d14, 0, %d14, 31

# CHECK-INST: xor.t %d0, %d14, 0, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x60,0x00]
xor.t %d0, %d14, 0, %d15, 0

# CHECK-INST: xor.t %d0, %d14, 0, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xe0,0x03]
xor.t %d0, %d14, 0, %d15, 7

# CHECK-INST: xor.t %d0, %d14, 0, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x60,0x0c]
xor.t %d0, %d14, 0, %d15, 24

# CHECK-INST: xor.t %d0, %d14, 0, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xe0,0x0f]
xor.t %d0, %d14, 0, %d15, 31

# CHECK-INST: xor.t %d0, %d14, 7, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x67,0x00]
xor.t %d0, %d14, 7, %d0, 0

# CHECK-INST: xor.t %d0, %d14, 7, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xe7,0x03]
xor.t %d0, %d14, 7, %d0, 7

# CHECK-INST: xor.t %d0, %d14, 7, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x67,0x0c]
xor.t %d0, %d14, 7, %d0, 24

# CHECK-INST: xor.t %d0, %d14, 7, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xe7,0x0f]
xor.t %d0, %d14, 7, %d0, 31

# CHECK-INST: xor.t %d0, %d14, 7, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x67,0x00]
xor.t %d0, %d14, 7, %d1, 0

# CHECK-INST: xor.t %d0, %d14, 7, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xe7,0x03]
xor.t %d0, %d14, 7, %d1, 7

# CHECK-INST: xor.t %d0, %d14, 7, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x67,0x0c]
xor.t %d0, %d14, 7, %d1, 24

# CHECK-INST: xor.t %d0, %d14, 7, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xe7,0x0f]
xor.t %d0, %d14, 7, %d1, 31

# CHECK-INST: xor.t %d0, %d14, 7, %d14, 0
# CHECK: encoding: [0x07,0xee,0x67,0x00]
xor.t %d0, %d14, 7, %d14, 0

# CHECK-INST: xor.t %d0, %d14, 7, %d14, 7
# CHECK: encoding: [0x07,0xee,0xe7,0x03]
xor.t %d0, %d14, 7, %d14, 7

# CHECK-INST: xor.t %d0, %d14, 7, %d14, 24
# CHECK: encoding: [0x07,0xee,0x67,0x0c]
xor.t %d0, %d14, 7, %d14, 24

# CHECK-INST: xor.t %d0, %d14, 7, %d14, 31
# CHECK: encoding: [0x07,0xee,0xe7,0x0f]
xor.t %d0, %d14, 7, %d14, 31

# CHECK-INST: xor.t %d0, %d14, 7, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x67,0x00]
xor.t %d0, %d14, 7, %d15, 0

# CHECK-INST: xor.t %d0, %d14, 7, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xe7,0x03]
xor.t %d0, %d14, 7, %d15, 7

# CHECK-INST: xor.t %d0, %d14, 7, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x67,0x0c]
xor.t %d0, %d14, 7, %d15, 24

# CHECK-INST: xor.t %d0, %d14, 7, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xe7,0x0f]
xor.t %d0, %d14, 7, %d15, 31

# CHECK-INST: xor.t %d0, %d14, 24, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x78,0x00]
xor.t %d0, %d14, 24, %d0, 0

# CHECK-INST: xor.t %d0, %d14, 24, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xf8,0x03]
xor.t %d0, %d14, 24, %d0, 7

# CHECK-INST: xor.t %d0, %d14, 24, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x78,0x0c]
xor.t %d0, %d14, 24, %d0, 24

# CHECK-INST: xor.t %d0, %d14, 24, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xf8,0x0f]
xor.t %d0, %d14, 24, %d0, 31

# CHECK-INST: xor.t %d0, %d14, 24, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x78,0x00]
xor.t %d0, %d14, 24, %d1, 0

# CHECK-INST: xor.t %d0, %d14, 24, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xf8,0x03]
xor.t %d0, %d14, 24, %d1, 7

# CHECK-INST: xor.t %d0, %d14, 24, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x78,0x0c]
xor.t %d0, %d14, 24, %d1, 24

# CHECK-INST: xor.t %d0, %d14, 24, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xf8,0x0f]
xor.t %d0, %d14, 24, %d1, 31

# CHECK-INST: xor.t %d0, %d14, 24, %d14, 0
# CHECK: encoding: [0x07,0xee,0x78,0x00]
xor.t %d0, %d14, 24, %d14, 0

# CHECK-INST: xor.t %d0, %d14, 24, %d14, 7
# CHECK: encoding: [0x07,0xee,0xf8,0x03]
xor.t %d0, %d14, 24, %d14, 7

# CHECK-INST: xor.t %d0, %d14, 24, %d14, 24
# CHECK: encoding: [0x07,0xee,0x78,0x0c]
xor.t %d0, %d14, 24, %d14, 24

# CHECK-INST: xor.t %d0, %d14, 24, %d14, 31
# CHECK: encoding: [0x07,0xee,0xf8,0x0f]
xor.t %d0, %d14, 24, %d14, 31

# CHECK-INST: xor.t %d0, %d14, 24, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x78,0x00]
xor.t %d0, %d14, 24, %d15, 0

# CHECK-INST: xor.t %d0, %d14, 24, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xf8,0x03]
xor.t %d0, %d14, 24, %d15, 7

# CHECK-INST: xor.t %d0, %d14, 24, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x78,0x0c]
xor.t %d0, %d14, 24, %d15, 24

# CHECK-INST: xor.t %d0, %d14, 24, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xf8,0x0f]
xor.t %d0, %d14, 24, %d15, 31

# CHECK-INST: xor.t %d0, %d14, 31, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x7f,0x00]
xor.t %d0, %d14, 31, %d0, 0

# CHECK-INST: xor.t %d0, %d14, 31, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xff,0x03]
xor.t %d0, %d14, 31, %d0, 7

# CHECK-INST: xor.t %d0, %d14, 31, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x7f,0x0c]
xor.t %d0, %d14, 31, %d0, 24

# CHECK-INST: xor.t %d0, %d14, 31, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xff,0x0f]
xor.t %d0, %d14, 31, %d0, 31

# CHECK-INST: xor.t %d0, %d14, 31, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x7f,0x00]
xor.t %d0, %d14, 31, %d1, 0

# CHECK-INST: xor.t %d0, %d14, 31, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xff,0x03]
xor.t %d0, %d14, 31, %d1, 7

# CHECK-INST: xor.t %d0, %d14, 31, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x7f,0x0c]
xor.t %d0, %d14, 31, %d1, 24

# CHECK-INST: xor.t %d0, %d14, 31, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xff,0x0f]
xor.t %d0, %d14, 31, %d1, 31

# CHECK-INST: xor.t %d0, %d14, 31, %d14, 0
# CHECK: encoding: [0x07,0xee,0x7f,0x00]
xor.t %d0, %d14, 31, %d14, 0

# CHECK-INST: xor.t %d0, %d14, 31, %d14, 7
# CHECK: encoding: [0x07,0xee,0xff,0x03]
xor.t %d0, %d14, 31, %d14, 7

# CHECK-INST: xor.t %d0, %d14, 31, %d14, 24
# CHECK: encoding: [0x07,0xee,0x7f,0x0c]
xor.t %d0, %d14, 31, %d14, 24

# CHECK-INST: xor.t %d0, %d14, 31, %d14, 31
# CHECK: encoding: [0x07,0xee,0xff,0x0f]
xor.t %d0, %d14, 31, %d14, 31

# CHECK-INST: xor.t %d0, %d14, 31, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x7f,0x00]
xor.t %d0, %d14, 31, %d15, 0

# CHECK-INST: xor.t %d0, %d14, 31, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xff,0x03]
xor.t %d0, %d14, 31, %d15, 7

# CHECK-INST: xor.t %d0, %d14, 31, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x7f,0x0c]
xor.t %d0, %d14, 31, %d15, 24

# CHECK-INST: xor.t %d0, %d14, 31, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xff,0x0f]
xor.t %d0, %d14, 31, %d15, 31

# CHECK-INST: xor.t %d0, %d15, 0, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x60,0x00]
xor.t %d0, %d15, 0, %d0, 0

# CHECK-INST: xor.t %d0, %d15, 0, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xe0,0x03]
xor.t %d0, %d15, 0, %d0, 7

# CHECK-INST: xor.t %d0, %d15, 0, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x60,0x0c]
xor.t %d0, %d15, 0, %d0, 24

# CHECK-INST: xor.t %d0, %d15, 0, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xe0,0x0f]
xor.t %d0, %d15, 0, %d0, 31

# CHECK-INST: xor.t %d0, %d15, 0, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x60,0x00]
xor.t %d0, %d15, 0, %d1, 0

# CHECK-INST: xor.t %d0, %d15, 0, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xe0,0x03]
xor.t %d0, %d15, 0, %d1, 7

# CHECK-INST: xor.t %d0, %d15, 0, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x60,0x0c]
xor.t %d0, %d15, 0, %d1, 24

# CHECK-INST: xor.t %d0, %d15, 0, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xe0,0x0f]
xor.t %d0, %d15, 0, %d1, 31

# CHECK-INST: xor.t %d0, %d15, 0, %d14, 0
# CHECK: encoding: [0x07,0xef,0x60,0x00]
xor.t %d0, %d15, 0, %d14, 0

# CHECK-INST: xor.t %d0, %d15, 0, %d14, 7
# CHECK: encoding: [0x07,0xef,0xe0,0x03]
xor.t %d0, %d15, 0, %d14, 7

# CHECK-INST: xor.t %d0, %d15, 0, %d14, 24
# CHECK: encoding: [0x07,0xef,0x60,0x0c]
xor.t %d0, %d15, 0, %d14, 24

# CHECK-INST: xor.t %d0, %d15, 0, %d14, 31
# CHECK: encoding: [0x07,0xef,0xe0,0x0f]
xor.t %d0, %d15, 0, %d14, 31

# CHECK-INST: xor.t %d0, %d15, 0, %d15, 0
# CHECK: encoding: [0x07,0xff,0x60,0x00]
xor.t %d0, %d15, 0, %d15, 0

# CHECK-INST: xor.t %d0, %d15, 0, %d15, 7
# CHECK: encoding: [0x07,0xff,0xe0,0x03]
xor.t %d0, %d15, 0, %d15, 7

# CHECK-INST: xor.t %d0, %d15, 0, %d15, 24
# CHECK: encoding: [0x07,0xff,0x60,0x0c]
xor.t %d0, %d15, 0, %d15, 24

# CHECK-INST: xor.t %d0, %d15, 0, %d15, 31
# CHECK: encoding: [0x07,0xff,0xe0,0x0f]
xor.t %d0, %d15, 0, %d15, 31

# CHECK-INST: xor.t %d0, %d15, 7, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x67,0x00]
xor.t %d0, %d15, 7, %d0, 0

# CHECK-INST: xor.t %d0, %d15, 7, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xe7,0x03]
xor.t %d0, %d15, 7, %d0, 7

# CHECK-INST: xor.t %d0, %d15, 7, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x67,0x0c]
xor.t %d0, %d15, 7, %d0, 24

# CHECK-INST: xor.t %d0, %d15, 7, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xe7,0x0f]
xor.t %d0, %d15, 7, %d0, 31

# CHECK-INST: xor.t %d0, %d15, 7, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x67,0x00]
xor.t %d0, %d15, 7, %d1, 0

# CHECK-INST: xor.t %d0, %d15, 7, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xe7,0x03]
xor.t %d0, %d15, 7, %d1, 7

# CHECK-INST: xor.t %d0, %d15, 7, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x67,0x0c]
xor.t %d0, %d15, 7, %d1, 24

# CHECK-INST: xor.t %d0, %d15, 7, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xe7,0x0f]
xor.t %d0, %d15, 7, %d1, 31

# CHECK-INST: xor.t %d0, %d15, 7, %d14, 0
# CHECK: encoding: [0x07,0xef,0x67,0x00]
xor.t %d0, %d15, 7, %d14, 0

# CHECK-INST: xor.t %d0, %d15, 7, %d14, 7
# CHECK: encoding: [0x07,0xef,0xe7,0x03]
xor.t %d0, %d15, 7, %d14, 7

# CHECK-INST: xor.t %d0, %d15, 7, %d14, 24
# CHECK: encoding: [0x07,0xef,0x67,0x0c]
xor.t %d0, %d15, 7, %d14, 24

# CHECK-INST: xor.t %d0, %d15, 7, %d14, 31
# CHECK: encoding: [0x07,0xef,0xe7,0x0f]
xor.t %d0, %d15, 7, %d14, 31

# CHECK-INST: xor.t %d0, %d15, 7, %d15, 0
# CHECK: encoding: [0x07,0xff,0x67,0x00]
xor.t %d0, %d15, 7, %d15, 0

# CHECK-INST: xor.t %d0, %d15, 7, %d15, 7
# CHECK: encoding: [0x07,0xff,0xe7,0x03]
xor.t %d0, %d15, 7, %d15, 7

# CHECK-INST: xor.t %d0, %d15, 7, %d15, 24
# CHECK: encoding: [0x07,0xff,0x67,0x0c]
xor.t %d0, %d15, 7, %d15, 24

# CHECK-INST: xor.t %d0, %d15, 7, %d15, 31
# CHECK: encoding: [0x07,0xff,0xe7,0x0f]
xor.t %d0, %d15, 7, %d15, 31

# CHECK-INST: xor.t %d0, %d15, 24, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x78,0x00]
xor.t %d0, %d15, 24, %d0, 0

# CHECK-INST: xor.t %d0, %d15, 24, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xf8,0x03]
xor.t %d0, %d15, 24, %d0, 7

# CHECK-INST: xor.t %d0, %d15, 24, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x78,0x0c]
xor.t %d0, %d15, 24, %d0, 24

# CHECK-INST: xor.t %d0, %d15, 24, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xf8,0x0f]
xor.t %d0, %d15, 24, %d0, 31

# CHECK-INST: xor.t %d0, %d15, 24, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x78,0x00]
xor.t %d0, %d15, 24, %d1, 0

# CHECK-INST: xor.t %d0, %d15, 24, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xf8,0x03]
xor.t %d0, %d15, 24, %d1, 7

# CHECK-INST: xor.t %d0, %d15, 24, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x78,0x0c]
xor.t %d0, %d15, 24, %d1, 24

# CHECK-INST: xor.t %d0, %d15, 24, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xf8,0x0f]
xor.t %d0, %d15, 24, %d1, 31

# CHECK-INST: xor.t %d0, %d15, 24, %d14, 0
# CHECK: encoding: [0x07,0xef,0x78,0x00]
xor.t %d0, %d15, 24, %d14, 0

# CHECK-INST: xor.t %d0, %d15, 24, %d14, 7
# CHECK: encoding: [0x07,0xef,0xf8,0x03]
xor.t %d0, %d15, 24, %d14, 7

# CHECK-INST: xor.t %d0, %d15, 24, %d14, 24
# CHECK: encoding: [0x07,0xef,0x78,0x0c]
xor.t %d0, %d15, 24, %d14, 24

# CHECK-INST: xor.t %d0, %d15, 24, %d14, 31
# CHECK: encoding: [0x07,0xef,0xf8,0x0f]
xor.t %d0, %d15, 24, %d14, 31

# CHECK-INST: xor.t %d0, %d15, 24, %d15, 0
# CHECK: encoding: [0x07,0xff,0x78,0x00]
xor.t %d0, %d15, 24, %d15, 0

# CHECK-INST: xor.t %d0, %d15, 24, %d15, 7
# CHECK: encoding: [0x07,0xff,0xf8,0x03]
xor.t %d0, %d15, 24, %d15, 7

# CHECK-INST: xor.t %d0, %d15, 24, %d15, 24
# CHECK: encoding: [0x07,0xff,0x78,0x0c]
xor.t %d0, %d15, 24, %d15, 24

# CHECK-INST: xor.t %d0, %d15, 24, %d15, 31
# CHECK: encoding: [0x07,0xff,0xf8,0x0f]
xor.t %d0, %d15, 24, %d15, 31

# CHECK-INST: xor.t %d0, %d15, 31, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x7f,0x00]
xor.t %d0, %d15, 31, %d0, 0

# CHECK-INST: xor.t %d0, %d15, 31, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xff,0x03]
xor.t %d0, %d15, 31, %d0, 7

# CHECK-INST: xor.t %d0, %d15, 31, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x7f,0x0c]
xor.t %d0, %d15, 31, %d0, 24

# CHECK-INST: xor.t %d0, %d15, 31, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xff,0x0f]
xor.t %d0, %d15, 31, %d0, 31

# CHECK-INST: xor.t %d0, %d15, 31, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x7f,0x00]
xor.t %d0, %d15, 31, %d1, 0

# CHECK-INST: xor.t %d0, %d15, 31, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xff,0x03]
xor.t %d0, %d15, 31, %d1, 7

# CHECK-INST: xor.t %d0, %d15, 31, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x7f,0x0c]
xor.t %d0, %d15, 31, %d1, 24

# CHECK-INST: xor.t %d0, %d15, 31, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xff,0x0f]
xor.t %d0, %d15, 31, %d1, 31

# CHECK-INST: xor.t %d0, %d15, 31, %d14, 0
# CHECK: encoding: [0x07,0xef,0x7f,0x00]
xor.t %d0, %d15, 31, %d14, 0

# CHECK-INST: xor.t %d0, %d15, 31, %d14, 7
# CHECK: encoding: [0x07,0xef,0xff,0x03]
xor.t %d0, %d15, 31, %d14, 7

# CHECK-INST: xor.t %d0, %d15, 31, %d14, 24
# CHECK: encoding: [0x07,0xef,0x7f,0x0c]
xor.t %d0, %d15, 31, %d14, 24

# CHECK-INST: xor.t %d0, %d15, 31, %d14, 31
# CHECK: encoding: [0x07,0xef,0xff,0x0f]
xor.t %d0, %d15, 31, %d14, 31

# CHECK-INST: xor.t %d0, %d15, 31, %d15, 0
# CHECK: encoding: [0x07,0xff,0x7f,0x00]
xor.t %d0, %d15, 31, %d15, 0

# CHECK-INST: xor.t %d0, %d15, 31, %d15, 7
# CHECK: encoding: [0x07,0xff,0xff,0x03]
xor.t %d0, %d15, 31, %d15, 7

# CHECK-INST: xor.t %d0, %d15, 31, %d15, 24
# CHECK: encoding: [0x07,0xff,0x7f,0x0c]
xor.t %d0, %d15, 31, %d15, 24

# CHECK-INST: xor.t %d0, %d15, 31, %d15, 31
# CHECK: encoding: [0x07,0xff,0xff,0x0f]
xor.t %d0, %d15, 31, %d15, 31

# CHECK-INST: xor.t %d1, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x60,0x10]
xor.t %d1, %d0, 0, %d0, 0

# CHECK-INST: xor.t %d1, %d0, 0, %d0, 7
# CHECK: encoding: [0x07,0x00,0xe0,0x13]
xor.t %d1, %d0, 0, %d0, 7

# CHECK-INST: xor.t %d1, %d0, 0, %d0, 24
# CHECK: encoding: [0x07,0x00,0x60,0x1c]
xor.t %d1, %d0, 0, %d0, 24

# CHECK-INST: xor.t %d1, %d0, 0, %d0, 31
# CHECK: encoding: [0x07,0x00,0xe0,0x1f]
xor.t %d1, %d0, 0, %d0, 31

# CHECK-INST: xor.t %d1, %d0, 0, %d1, 0
# CHECK: encoding: [0x07,0x10,0x60,0x10]
xor.t %d1, %d0, 0, %d1, 0

# CHECK-INST: xor.t %d1, %d0, 0, %d1, 7
# CHECK: encoding: [0x07,0x10,0xe0,0x13]
xor.t %d1, %d0, 0, %d1, 7

# CHECK-INST: xor.t %d1, %d0, 0, %d1, 24
# CHECK: encoding: [0x07,0x10,0x60,0x1c]
xor.t %d1, %d0, 0, %d1, 24

# CHECK-INST: xor.t %d1, %d0, 0, %d1, 31
# CHECK: encoding: [0x07,0x10,0xe0,0x1f]
xor.t %d1, %d0, 0, %d1, 31

# CHECK-INST: xor.t %d1, %d0, 0, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x60,0x10]
xor.t %d1, %d0, 0, %d14, 0

# CHECK-INST: xor.t %d1, %d0, 0, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xe0,0x13]
xor.t %d1, %d0, 0, %d14, 7

# CHECK-INST: xor.t %d1, %d0, 0, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x60,0x1c]
xor.t %d1, %d0, 0, %d14, 24

# CHECK-INST: xor.t %d1, %d0, 0, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xe0,0x1f]
xor.t %d1, %d0, 0, %d14, 31

# CHECK-INST: xor.t %d1, %d0, 0, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x60,0x10]
xor.t %d1, %d0, 0, %d15, 0

# CHECK-INST: xor.t %d1, %d0, 0, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xe0,0x13]
xor.t %d1, %d0, 0, %d15, 7

# CHECK-INST: xor.t %d1, %d0, 0, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x60,0x1c]
xor.t %d1, %d0, 0, %d15, 24

# CHECK-INST: xor.t %d1, %d0, 0, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xe0,0x1f]
xor.t %d1, %d0, 0, %d15, 31

# CHECK-INST: xor.t %d1, %d0, 7, %d0, 0
# CHECK: encoding: [0x07,0x00,0x67,0x10]
xor.t %d1, %d0, 7, %d0, 0

# CHECK-INST: xor.t %d1, %d0, 7, %d0, 7
# CHECK: encoding: [0x07,0x00,0xe7,0x13]
xor.t %d1, %d0, 7, %d0, 7

# CHECK-INST: xor.t %d1, %d0, 7, %d0, 24
# CHECK: encoding: [0x07,0x00,0x67,0x1c]
xor.t %d1, %d0, 7, %d0, 24

# CHECK-INST: xor.t %d1, %d0, 7, %d0, 31
# CHECK: encoding: [0x07,0x00,0xe7,0x1f]
xor.t %d1, %d0, 7, %d0, 31

# CHECK-INST: xor.t %d1, %d0, 7, %d1, 0
# CHECK: encoding: [0x07,0x10,0x67,0x10]
xor.t %d1, %d0, 7, %d1, 0

# CHECK-INST: xor.t %d1, %d0, 7, %d1, 7
# CHECK: encoding: [0x07,0x10,0xe7,0x13]
xor.t %d1, %d0, 7, %d1, 7

# CHECK-INST: xor.t %d1, %d0, 7, %d1, 24
# CHECK: encoding: [0x07,0x10,0x67,0x1c]
xor.t %d1, %d0, 7, %d1, 24

# CHECK-INST: xor.t %d1, %d0, 7, %d1, 31
# CHECK: encoding: [0x07,0x10,0xe7,0x1f]
xor.t %d1, %d0, 7, %d1, 31

# CHECK-INST: xor.t %d1, %d0, 7, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x67,0x10]
xor.t %d1, %d0, 7, %d14, 0

# CHECK-INST: xor.t %d1, %d0, 7, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xe7,0x13]
xor.t %d1, %d0, 7, %d14, 7

# CHECK-INST: xor.t %d1, %d0, 7, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x67,0x1c]
xor.t %d1, %d0, 7, %d14, 24

# CHECK-INST: xor.t %d1, %d0, 7, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xe7,0x1f]
xor.t %d1, %d0, 7, %d14, 31

# CHECK-INST: xor.t %d1, %d0, 7, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x67,0x10]
xor.t %d1, %d0, 7, %d15, 0

# CHECK-INST: xor.t %d1, %d0, 7, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xe7,0x13]
xor.t %d1, %d0, 7, %d15, 7

# CHECK-INST: xor.t %d1, %d0, 7, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x67,0x1c]
xor.t %d1, %d0, 7, %d15, 24

# CHECK-INST: xor.t %d1, %d0, 7, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xe7,0x1f]
xor.t %d1, %d0, 7, %d15, 31

# CHECK-INST: xor.t %d1, %d0, 24, %d0, 0
# CHECK: encoding: [0x07,0x00,0x78,0x10]
xor.t %d1, %d0, 24, %d0, 0

# CHECK-INST: xor.t %d1, %d0, 24, %d0, 7
# CHECK: encoding: [0x07,0x00,0xf8,0x13]
xor.t %d1, %d0, 24, %d0, 7

# CHECK-INST: xor.t %d1, %d0, 24, %d0, 24
# CHECK: encoding: [0x07,0x00,0x78,0x1c]
xor.t %d1, %d0, 24, %d0, 24

# CHECK-INST: xor.t %d1, %d0, 24, %d0, 31
# CHECK: encoding: [0x07,0x00,0xf8,0x1f]
xor.t %d1, %d0, 24, %d0, 31

# CHECK-INST: xor.t %d1, %d0, 24, %d1, 0
# CHECK: encoding: [0x07,0x10,0x78,0x10]
xor.t %d1, %d0, 24, %d1, 0

# CHECK-INST: xor.t %d1, %d0, 24, %d1, 7
# CHECK: encoding: [0x07,0x10,0xf8,0x13]
xor.t %d1, %d0, 24, %d1, 7

# CHECK-INST: xor.t %d1, %d0, 24, %d1, 24
# CHECK: encoding: [0x07,0x10,0x78,0x1c]
xor.t %d1, %d0, 24, %d1, 24

# CHECK-INST: xor.t %d1, %d0, 24, %d1, 31
# CHECK: encoding: [0x07,0x10,0xf8,0x1f]
xor.t %d1, %d0, 24, %d1, 31

# CHECK-INST: xor.t %d1, %d0, 24, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x78,0x10]
xor.t %d1, %d0, 24, %d14, 0

# CHECK-INST: xor.t %d1, %d0, 24, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xf8,0x13]
xor.t %d1, %d0, 24, %d14, 7

# CHECK-INST: xor.t %d1, %d0, 24, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x78,0x1c]
xor.t %d1, %d0, 24, %d14, 24

# CHECK-INST: xor.t %d1, %d0, 24, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xf8,0x1f]
xor.t %d1, %d0, 24, %d14, 31

# CHECK-INST: xor.t %d1, %d0, 24, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x78,0x10]
xor.t %d1, %d0, 24, %d15, 0

# CHECK-INST: xor.t %d1, %d0, 24, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xf8,0x13]
xor.t %d1, %d0, 24, %d15, 7

# CHECK-INST: xor.t %d1, %d0, 24, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x78,0x1c]
xor.t %d1, %d0, 24, %d15, 24

# CHECK-INST: xor.t %d1, %d0, 24, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xf8,0x1f]
xor.t %d1, %d0, 24, %d15, 31

# CHECK-INST: xor.t %d1, %d0, 31, %d0, 0
# CHECK: encoding: [0x07,0x00,0x7f,0x10]
xor.t %d1, %d0, 31, %d0, 0

# CHECK-INST: xor.t %d1, %d0, 31, %d0, 7
# CHECK: encoding: [0x07,0x00,0xff,0x13]
xor.t %d1, %d0, 31, %d0, 7

# CHECK-INST: xor.t %d1, %d0, 31, %d0, 24
# CHECK: encoding: [0x07,0x00,0x7f,0x1c]
xor.t %d1, %d0, 31, %d0, 24

# CHECK-INST: xor.t %d1, %d0, 31, %d0, 31
# CHECK: encoding: [0x07,0x00,0xff,0x1f]
xor.t %d1, %d0, 31, %d0, 31

# CHECK-INST: xor.t %d1, %d0, 31, %d1, 0
# CHECK: encoding: [0x07,0x10,0x7f,0x10]
xor.t %d1, %d0, 31, %d1, 0

# CHECK-INST: xor.t %d1, %d0, 31, %d1, 7
# CHECK: encoding: [0x07,0x10,0xff,0x13]
xor.t %d1, %d0, 31, %d1, 7

# CHECK-INST: xor.t %d1, %d0, 31, %d1, 24
# CHECK: encoding: [0x07,0x10,0x7f,0x1c]
xor.t %d1, %d0, 31, %d1, 24

# CHECK-INST: xor.t %d1, %d0, 31, %d1, 31
# CHECK: encoding: [0x07,0x10,0xff,0x1f]
xor.t %d1, %d0, 31, %d1, 31

# CHECK-INST: xor.t %d1, %d0, 31, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x7f,0x10]
xor.t %d1, %d0, 31, %d14, 0

# CHECK-INST: xor.t %d1, %d0, 31, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xff,0x13]
xor.t %d1, %d0, 31, %d14, 7

# CHECK-INST: xor.t %d1, %d0, 31, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x7f,0x1c]
xor.t %d1, %d0, 31, %d14, 24

# CHECK-INST: xor.t %d1, %d0, 31, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xff,0x1f]
xor.t %d1, %d0, 31, %d14, 31

# CHECK-INST: xor.t %d1, %d0, 31, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x7f,0x10]
xor.t %d1, %d0, 31, %d15, 0

# CHECK-INST: xor.t %d1, %d0, 31, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xff,0x13]
xor.t %d1, %d0, 31, %d15, 7

# CHECK-INST: xor.t %d1, %d0, 31, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x7f,0x1c]
xor.t %d1, %d0, 31, %d15, 24

# CHECK-INST: xor.t %d1, %d0, 31, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xff,0x1f]
xor.t %d1, %d0, 31, %d15, 31

# CHECK-INST: xor.t %d1, %d1, 0, %d0, 0
# CHECK: encoding: [0x07,0x01,0x60,0x10]
xor.t %d1, %d1, 0, %d0, 0

# CHECK-INST: xor.t %d1, %d1, 0, %d0, 7
# CHECK: encoding: [0x07,0x01,0xe0,0x13]
xor.t %d1, %d1, 0, %d0, 7

# CHECK-INST: xor.t %d1, %d1, 0, %d0, 24
# CHECK: encoding: [0x07,0x01,0x60,0x1c]
xor.t %d1, %d1, 0, %d0, 24

# CHECK-INST: xor.t %d1, %d1, 0, %d0, 31
# CHECK: encoding: [0x07,0x01,0xe0,0x1f]
xor.t %d1, %d1, 0, %d0, 31

# CHECK-INST: xor.t %d1, %d1, 0, %d1, 0
# CHECK: encoding: [0x07,0x11,0x60,0x10]
xor.t %d1, %d1, 0, %d1, 0

# CHECK-INST: xor.t %d1, %d1, 0, %d1, 7
# CHECK: encoding: [0x07,0x11,0xe0,0x13]
xor.t %d1, %d1, 0, %d1, 7

# CHECK-INST: xor.t %d1, %d1, 0, %d1, 24
# CHECK: encoding: [0x07,0x11,0x60,0x1c]
xor.t %d1, %d1, 0, %d1, 24

# CHECK-INST: xor.t %d1, %d1, 0, %d1, 31
# CHECK: encoding: [0x07,0x11,0xe0,0x1f]
xor.t %d1, %d1, 0, %d1, 31

# CHECK-INST: xor.t %d1, %d1, 0, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x60,0x10]
xor.t %d1, %d1, 0, %d14, 0

# CHECK-INST: xor.t %d1, %d1, 0, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xe0,0x13]
xor.t %d1, %d1, 0, %d14, 7

# CHECK-INST: xor.t %d1, %d1, 0, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x60,0x1c]
xor.t %d1, %d1, 0, %d14, 24

# CHECK-INST: xor.t %d1, %d1, 0, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xe0,0x1f]
xor.t %d1, %d1, 0, %d14, 31

# CHECK-INST: xor.t %d1, %d1, 0, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x60,0x10]
xor.t %d1, %d1, 0, %d15, 0

# CHECK-INST: xor.t %d1, %d1, 0, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xe0,0x13]
xor.t %d1, %d1, 0, %d15, 7

# CHECK-INST: xor.t %d1, %d1, 0, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x60,0x1c]
xor.t %d1, %d1, 0, %d15, 24

# CHECK-INST: xor.t %d1, %d1, 0, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xe0,0x1f]
xor.t %d1, %d1, 0, %d15, 31

# CHECK-INST: xor.t %d1, %d1, 7, %d0, 0
# CHECK: encoding: [0x07,0x01,0x67,0x10]
xor.t %d1, %d1, 7, %d0, 0

# CHECK-INST: xor.t %d1, %d1, 7, %d0, 7
# CHECK: encoding: [0x07,0x01,0xe7,0x13]
xor.t %d1, %d1, 7, %d0, 7

# CHECK-INST: xor.t %d1, %d1, 7, %d0, 24
# CHECK: encoding: [0x07,0x01,0x67,0x1c]
xor.t %d1, %d1, 7, %d0, 24

# CHECK-INST: xor.t %d1, %d1, 7, %d0, 31
# CHECK: encoding: [0x07,0x01,0xe7,0x1f]
xor.t %d1, %d1, 7, %d0, 31

# CHECK-INST: xor.t %d1, %d1, 7, %d1, 0
# CHECK: encoding: [0x07,0x11,0x67,0x10]
xor.t %d1, %d1, 7, %d1, 0

# CHECK-INST: xor.t %d1, %d1, 7, %d1, 7
# CHECK: encoding: [0x07,0x11,0xe7,0x13]
xor.t %d1, %d1, 7, %d1, 7

# CHECK-INST: xor.t %d1, %d1, 7, %d1, 24
# CHECK: encoding: [0x07,0x11,0x67,0x1c]
xor.t %d1, %d1, 7, %d1, 24

# CHECK-INST: xor.t %d1, %d1, 7, %d1, 31
# CHECK: encoding: [0x07,0x11,0xe7,0x1f]
xor.t %d1, %d1, 7, %d1, 31

# CHECK-INST: xor.t %d1, %d1, 7, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x67,0x10]
xor.t %d1, %d1, 7, %d14, 0

# CHECK-INST: xor.t %d1, %d1, 7, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xe7,0x13]
xor.t %d1, %d1, 7, %d14, 7

# CHECK-INST: xor.t %d1, %d1, 7, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x67,0x1c]
xor.t %d1, %d1, 7, %d14, 24

# CHECK-INST: xor.t %d1, %d1, 7, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xe7,0x1f]
xor.t %d1, %d1, 7, %d14, 31

# CHECK-INST: xor.t %d1, %d1, 7, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x67,0x10]
xor.t %d1, %d1, 7, %d15, 0

# CHECK-INST: xor.t %d1, %d1, 7, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xe7,0x13]
xor.t %d1, %d1, 7, %d15, 7

# CHECK-INST: xor.t %d1, %d1, 7, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x67,0x1c]
xor.t %d1, %d1, 7, %d15, 24

# CHECK-INST: xor.t %d1, %d1, 7, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xe7,0x1f]
xor.t %d1, %d1, 7, %d15, 31

# CHECK-INST: xor.t %d1, %d1, 24, %d0, 0
# CHECK: encoding: [0x07,0x01,0x78,0x10]
xor.t %d1, %d1, 24, %d0, 0

# CHECK-INST: xor.t %d1, %d1, 24, %d0, 7
# CHECK: encoding: [0x07,0x01,0xf8,0x13]
xor.t %d1, %d1, 24, %d0, 7

# CHECK-INST: xor.t %d1, %d1, 24, %d0, 24
# CHECK: encoding: [0x07,0x01,0x78,0x1c]
xor.t %d1, %d1, 24, %d0, 24

# CHECK-INST: xor.t %d1, %d1, 24, %d0, 31
# CHECK: encoding: [0x07,0x01,0xf8,0x1f]
xor.t %d1, %d1, 24, %d0, 31

# CHECK-INST: xor.t %d1, %d1, 24, %d1, 0
# CHECK: encoding: [0x07,0x11,0x78,0x10]
xor.t %d1, %d1, 24, %d1, 0

# CHECK-INST: xor.t %d1, %d1, 24, %d1, 7
# CHECK: encoding: [0x07,0x11,0xf8,0x13]
xor.t %d1, %d1, 24, %d1, 7

# CHECK-INST: xor.t %d1, %d1, 24, %d1, 24
# CHECK: encoding: [0x07,0x11,0x78,0x1c]
xor.t %d1, %d1, 24, %d1, 24

# CHECK-INST: xor.t %d1, %d1, 24, %d1, 31
# CHECK: encoding: [0x07,0x11,0xf8,0x1f]
xor.t %d1, %d1, 24, %d1, 31

# CHECK-INST: xor.t %d1, %d1, 24, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x78,0x10]
xor.t %d1, %d1, 24, %d14, 0

# CHECK-INST: xor.t %d1, %d1, 24, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xf8,0x13]
xor.t %d1, %d1, 24, %d14, 7

# CHECK-INST: xor.t %d1, %d1, 24, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x78,0x1c]
xor.t %d1, %d1, 24, %d14, 24

# CHECK-INST: xor.t %d1, %d1, 24, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xf8,0x1f]
xor.t %d1, %d1, 24, %d14, 31

# CHECK-INST: xor.t %d1, %d1, 24, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x78,0x10]
xor.t %d1, %d1, 24, %d15, 0

# CHECK-INST: xor.t %d1, %d1, 24, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xf8,0x13]
xor.t %d1, %d1, 24, %d15, 7

# CHECK-INST: xor.t %d1, %d1, 24, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x78,0x1c]
xor.t %d1, %d1, 24, %d15, 24

# CHECK-INST: xor.t %d1, %d1, 24, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xf8,0x1f]
xor.t %d1, %d1, 24, %d15, 31

# CHECK-INST: xor.t %d1, %d1, 31, %d0, 0
# CHECK: encoding: [0x07,0x01,0x7f,0x10]
xor.t %d1, %d1, 31, %d0, 0

# CHECK-INST: xor.t %d1, %d1, 31, %d0, 7
# CHECK: encoding: [0x07,0x01,0xff,0x13]
xor.t %d1, %d1, 31, %d0, 7

# CHECK-INST: xor.t %d1, %d1, 31, %d0, 24
# CHECK: encoding: [0x07,0x01,0x7f,0x1c]
xor.t %d1, %d1, 31, %d0, 24

# CHECK-INST: xor.t %d1, %d1, 31, %d0, 31
# CHECK: encoding: [0x07,0x01,0xff,0x1f]
xor.t %d1, %d1, 31, %d0, 31

# CHECK-INST: xor.t %d1, %d1, 31, %d1, 0
# CHECK: encoding: [0x07,0x11,0x7f,0x10]
xor.t %d1, %d1, 31, %d1, 0

# CHECK-INST: xor.t %d1, %d1, 31, %d1, 7
# CHECK: encoding: [0x07,0x11,0xff,0x13]
xor.t %d1, %d1, 31, %d1, 7

# CHECK-INST: xor.t %d1, %d1, 31, %d1, 24
# CHECK: encoding: [0x07,0x11,0x7f,0x1c]
xor.t %d1, %d1, 31, %d1, 24

# CHECK-INST: xor.t %d1, %d1, 31, %d1, 31
# CHECK: encoding: [0x07,0x11,0xff,0x1f]
xor.t %d1, %d1, 31, %d1, 31

# CHECK-INST: xor.t %d1, %d1, 31, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x7f,0x10]
xor.t %d1, %d1, 31, %d14, 0

# CHECK-INST: xor.t %d1, %d1, 31, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xff,0x13]
xor.t %d1, %d1, 31, %d14, 7

# CHECK-INST: xor.t %d1, %d1, 31, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x7f,0x1c]
xor.t %d1, %d1, 31, %d14, 24

# CHECK-INST: xor.t %d1, %d1, 31, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xff,0x1f]
xor.t %d1, %d1, 31, %d14, 31

# CHECK-INST: xor.t %d1, %d1, 31, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x7f,0x10]
xor.t %d1, %d1, 31, %d15, 0

# CHECK-INST: xor.t %d1, %d1, 31, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xff,0x13]
xor.t %d1, %d1, 31, %d15, 7

# CHECK-INST: xor.t %d1, %d1, 31, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x7f,0x1c]
xor.t %d1, %d1, 31, %d15, 24

# CHECK-INST: xor.t %d1, %d1, 31, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xff,0x1f]
xor.t %d1, %d1, 31, %d15, 31

# CHECK-INST: xor.t %d1, %d14, 0, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x60,0x10]
xor.t %d1, %d14, 0, %d0, 0

# CHECK-INST: xor.t %d1, %d14, 0, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xe0,0x13]
xor.t %d1, %d14, 0, %d0, 7

# CHECK-INST: xor.t %d1, %d14, 0, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x60,0x1c]
xor.t %d1, %d14, 0, %d0, 24

# CHECK-INST: xor.t %d1, %d14, 0, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xe0,0x1f]
xor.t %d1, %d14, 0, %d0, 31

# CHECK-INST: xor.t %d1, %d14, 0, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x60,0x10]
xor.t %d1, %d14, 0, %d1, 0

# CHECK-INST: xor.t %d1, %d14, 0, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xe0,0x13]
xor.t %d1, %d14, 0, %d1, 7

# CHECK-INST: xor.t %d1, %d14, 0, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x60,0x1c]
xor.t %d1, %d14, 0, %d1, 24

# CHECK-INST: xor.t %d1, %d14, 0, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xe0,0x1f]
xor.t %d1, %d14, 0, %d1, 31

# CHECK-INST: xor.t %d1, %d14, 0, %d14, 0
# CHECK: encoding: [0x07,0xee,0x60,0x10]
xor.t %d1, %d14, 0, %d14, 0

# CHECK-INST: xor.t %d1, %d14, 0, %d14, 7
# CHECK: encoding: [0x07,0xee,0xe0,0x13]
xor.t %d1, %d14, 0, %d14, 7

# CHECK-INST: xor.t %d1, %d14, 0, %d14, 24
# CHECK: encoding: [0x07,0xee,0x60,0x1c]
xor.t %d1, %d14, 0, %d14, 24

# CHECK-INST: xor.t %d1, %d14, 0, %d14, 31
# CHECK: encoding: [0x07,0xee,0xe0,0x1f]
xor.t %d1, %d14, 0, %d14, 31

# CHECK-INST: xor.t %d1, %d14, 0, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x60,0x10]
xor.t %d1, %d14, 0, %d15, 0

# CHECK-INST: xor.t %d1, %d14, 0, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xe0,0x13]
xor.t %d1, %d14, 0, %d15, 7

# CHECK-INST: xor.t %d1, %d14, 0, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x60,0x1c]
xor.t %d1, %d14, 0, %d15, 24

# CHECK-INST: xor.t %d1, %d14, 0, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xe0,0x1f]
xor.t %d1, %d14, 0, %d15, 31

# CHECK-INST: xor.t %d1, %d14, 7, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x67,0x10]
xor.t %d1, %d14, 7, %d0, 0

# CHECK-INST: xor.t %d1, %d14, 7, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xe7,0x13]
xor.t %d1, %d14, 7, %d0, 7

# CHECK-INST: xor.t %d1, %d14, 7, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x67,0x1c]
xor.t %d1, %d14, 7, %d0, 24

# CHECK-INST: xor.t %d1, %d14, 7, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xe7,0x1f]
xor.t %d1, %d14, 7, %d0, 31

# CHECK-INST: xor.t %d1, %d14, 7, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x67,0x10]
xor.t %d1, %d14, 7, %d1, 0

# CHECK-INST: xor.t %d1, %d14, 7, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xe7,0x13]
xor.t %d1, %d14, 7, %d1, 7

# CHECK-INST: xor.t %d1, %d14, 7, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x67,0x1c]
xor.t %d1, %d14, 7, %d1, 24

# CHECK-INST: xor.t %d1, %d14, 7, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xe7,0x1f]
xor.t %d1, %d14, 7, %d1, 31

# CHECK-INST: xor.t %d1, %d14, 7, %d14, 0
# CHECK: encoding: [0x07,0xee,0x67,0x10]
xor.t %d1, %d14, 7, %d14, 0

# CHECK-INST: xor.t %d1, %d14, 7, %d14, 7
# CHECK: encoding: [0x07,0xee,0xe7,0x13]
xor.t %d1, %d14, 7, %d14, 7

# CHECK-INST: xor.t %d1, %d14, 7, %d14, 24
# CHECK: encoding: [0x07,0xee,0x67,0x1c]
xor.t %d1, %d14, 7, %d14, 24

# CHECK-INST: xor.t %d1, %d14, 7, %d14, 31
# CHECK: encoding: [0x07,0xee,0xe7,0x1f]
xor.t %d1, %d14, 7, %d14, 31

# CHECK-INST: xor.t %d1, %d14, 7, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x67,0x10]
xor.t %d1, %d14, 7, %d15, 0

# CHECK-INST: xor.t %d1, %d14, 7, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xe7,0x13]
xor.t %d1, %d14, 7, %d15, 7

# CHECK-INST: xor.t %d1, %d14, 7, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x67,0x1c]
xor.t %d1, %d14, 7, %d15, 24

# CHECK-INST: xor.t %d1, %d14, 7, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xe7,0x1f]
xor.t %d1, %d14, 7, %d15, 31

# CHECK-INST: xor.t %d1, %d14, 24, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x78,0x10]
xor.t %d1, %d14, 24, %d0, 0

# CHECK-INST: xor.t %d1, %d14, 24, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xf8,0x13]
xor.t %d1, %d14, 24, %d0, 7

# CHECK-INST: xor.t %d1, %d14, 24, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x78,0x1c]
xor.t %d1, %d14, 24, %d0, 24

# CHECK-INST: xor.t %d1, %d14, 24, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xf8,0x1f]
xor.t %d1, %d14, 24, %d0, 31

# CHECK-INST: xor.t %d1, %d14, 24, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x78,0x10]
xor.t %d1, %d14, 24, %d1, 0

# CHECK-INST: xor.t %d1, %d14, 24, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xf8,0x13]
xor.t %d1, %d14, 24, %d1, 7

# CHECK-INST: xor.t %d1, %d14, 24, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x78,0x1c]
xor.t %d1, %d14, 24, %d1, 24

# CHECK-INST: xor.t %d1, %d14, 24, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xf8,0x1f]
xor.t %d1, %d14, 24, %d1, 31

# CHECK-INST: xor.t %d1, %d14, 24, %d14, 0
# CHECK: encoding: [0x07,0xee,0x78,0x10]
xor.t %d1, %d14, 24, %d14, 0

# CHECK-INST: xor.t %d1, %d14, 24, %d14, 7
# CHECK: encoding: [0x07,0xee,0xf8,0x13]
xor.t %d1, %d14, 24, %d14, 7

# CHECK-INST: xor.t %d1, %d14, 24, %d14, 24
# CHECK: encoding: [0x07,0xee,0x78,0x1c]
xor.t %d1, %d14, 24, %d14, 24

# CHECK-INST: xor.t %d1, %d14, 24, %d14, 31
# CHECK: encoding: [0x07,0xee,0xf8,0x1f]
xor.t %d1, %d14, 24, %d14, 31

# CHECK-INST: xor.t %d1, %d14, 24, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x78,0x10]
xor.t %d1, %d14, 24, %d15, 0

# CHECK-INST: xor.t %d1, %d14, 24, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xf8,0x13]
xor.t %d1, %d14, 24, %d15, 7

# CHECK-INST: xor.t %d1, %d14, 24, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x78,0x1c]
xor.t %d1, %d14, 24, %d15, 24

# CHECK-INST: xor.t %d1, %d14, 24, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xf8,0x1f]
xor.t %d1, %d14, 24, %d15, 31

# CHECK-INST: xor.t %d1, %d14, 31, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x7f,0x10]
xor.t %d1, %d14, 31, %d0, 0

# CHECK-INST: xor.t %d1, %d14, 31, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xff,0x13]
xor.t %d1, %d14, 31, %d0, 7

# CHECK-INST: xor.t %d1, %d14, 31, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x7f,0x1c]
xor.t %d1, %d14, 31, %d0, 24

# CHECK-INST: xor.t %d1, %d14, 31, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xff,0x1f]
xor.t %d1, %d14, 31, %d0, 31

# CHECK-INST: xor.t %d1, %d14, 31, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x7f,0x10]
xor.t %d1, %d14, 31, %d1, 0

# CHECK-INST: xor.t %d1, %d14, 31, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xff,0x13]
xor.t %d1, %d14, 31, %d1, 7

# CHECK-INST: xor.t %d1, %d14, 31, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x7f,0x1c]
xor.t %d1, %d14, 31, %d1, 24

# CHECK-INST: xor.t %d1, %d14, 31, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xff,0x1f]
xor.t %d1, %d14, 31, %d1, 31

# CHECK-INST: xor.t %d1, %d14, 31, %d14, 0
# CHECK: encoding: [0x07,0xee,0x7f,0x10]
xor.t %d1, %d14, 31, %d14, 0

# CHECK-INST: xor.t %d1, %d14, 31, %d14, 7
# CHECK: encoding: [0x07,0xee,0xff,0x13]
xor.t %d1, %d14, 31, %d14, 7

# CHECK-INST: xor.t %d1, %d14, 31, %d14, 24
# CHECK: encoding: [0x07,0xee,0x7f,0x1c]
xor.t %d1, %d14, 31, %d14, 24

# CHECK-INST: xor.t %d1, %d14, 31, %d14, 31
# CHECK: encoding: [0x07,0xee,0xff,0x1f]
xor.t %d1, %d14, 31, %d14, 31

# CHECK-INST: xor.t %d1, %d14, 31, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x7f,0x10]
xor.t %d1, %d14, 31, %d15, 0

# CHECK-INST: xor.t %d1, %d14, 31, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xff,0x13]
xor.t %d1, %d14, 31, %d15, 7

# CHECK-INST: xor.t %d1, %d14, 31, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x7f,0x1c]
xor.t %d1, %d14, 31, %d15, 24

# CHECK-INST: xor.t %d1, %d14, 31, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xff,0x1f]
xor.t %d1, %d14, 31, %d15, 31

# CHECK-INST: xor.t %d1, %d15, 0, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x60,0x10]
xor.t %d1, %d15, 0, %d0, 0

# CHECK-INST: xor.t %d1, %d15, 0, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xe0,0x13]
xor.t %d1, %d15, 0, %d0, 7

# CHECK-INST: xor.t %d1, %d15, 0, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x60,0x1c]
xor.t %d1, %d15, 0, %d0, 24

# CHECK-INST: xor.t %d1, %d15, 0, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xe0,0x1f]
xor.t %d1, %d15, 0, %d0, 31

# CHECK-INST: xor.t %d1, %d15, 0, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x60,0x10]
xor.t %d1, %d15, 0, %d1, 0

# CHECK-INST: xor.t %d1, %d15, 0, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xe0,0x13]
xor.t %d1, %d15, 0, %d1, 7

# CHECK-INST: xor.t %d1, %d15, 0, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x60,0x1c]
xor.t %d1, %d15, 0, %d1, 24

# CHECK-INST: xor.t %d1, %d15, 0, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xe0,0x1f]
xor.t %d1, %d15, 0, %d1, 31

# CHECK-INST: xor.t %d1, %d15, 0, %d14, 0
# CHECK: encoding: [0x07,0xef,0x60,0x10]
xor.t %d1, %d15, 0, %d14, 0

# CHECK-INST: xor.t %d1, %d15, 0, %d14, 7
# CHECK: encoding: [0x07,0xef,0xe0,0x13]
xor.t %d1, %d15, 0, %d14, 7

# CHECK-INST: xor.t %d1, %d15, 0, %d14, 24
# CHECK: encoding: [0x07,0xef,0x60,0x1c]
xor.t %d1, %d15, 0, %d14, 24

# CHECK-INST: xor.t %d1, %d15, 0, %d14, 31
# CHECK: encoding: [0x07,0xef,0xe0,0x1f]
xor.t %d1, %d15, 0, %d14, 31

# CHECK-INST: xor.t %d1, %d15, 0, %d15, 0
# CHECK: encoding: [0x07,0xff,0x60,0x10]
xor.t %d1, %d15, 0, %d15, 0

# CHECK-INST: xor.t %d1, %d15, 0, %d15, 7
# CHECK: encoding: [0x07,0xff,0xe0,0x13]
xor.t %d1, %d15, 0, %d15, 7

# CHECK-INST: xor.t %d1, %d15, 0, %d15, 24
# CHECK: encoding: [0x07,0xff,0x60,0x1c]
xor.t %d1, %d15, 0, %d15, 24

# CHECK-INST: xor.t %d1, %d15, 0, %d15, 31
# CHECK: encoding: [0x07,0xff,0xe0,0x1f]
xor.t %d1, %d15, 0, %d15, 31

# CHECK-INST: xor.t %d1, %d15, 7, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x67,0x10]
xor.t %d1, %d15, 7, %d0, 0

# CHECK-INST: xor.t %d1, %d15, 7, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xe7,0x13]
xor.t %d1, %d15, 7, %d0, 7

# CHECK-INST: xor.t %d1, %d15, 7, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x67,0x1c]
xor.t %d1, %d15, 7, %d0, 24

# CHECK-INST: xor.t %d1, %d15, 7, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xe7,0x1f]
xor.t %d1, %d15, 7, %d0, 31

# CHECK-INST: xor.t %d1, %d15, 7, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x67,0x10]
xor.t %d1, %d15, 7, %d1, 0

# CHECK-INST: xor.t %d1, %d15, 7, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xe7,0x13]
xor.t %d1, %d15, 7, %d1, 7

# CHECK-INST: xor.t %d1, %d15, 7, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x67,0x1c]
xor.t %d1, %d15, 7, %d1, 24

# CHECK-INST: xor.t %d1, %d15, 7, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xe7,0x1f]
xor.t %d1, %d15, 7, %d1, 31

# CHECK-INST: xor.t %d1, %d15, 7, %d14, 0
# CHECK: encoding: [0x07,0xef,0x67,0x10]
xor.t %d1, %d15, 7, %d14, 0

# CHECK-INST: xor.t %d1, %d15, 7, %d14, 7
# CHECK: encoding: [0x07,0xef,0xe7,0x13]
xor.t %d1, %d15, 7, %d14, 7

# CHECK-INST: xor.t %d1, %d15, 7, %d14, 24
# CHECK: encoding: [0x07,0xef,0x67,0x1c]
xor.t %d1, %d15, 7, %d14, 24

# CHECK-INST: xor.t %d1, %d15, 7, %d14, 31
# CHECK: encoding: [0x07,0xef,0xe7,0x1f]
xor.t %d1, %d15, 7, %d14, 31

# CHECK-INST: xor.t %d1, %d15, 7, %d15, 0
# CHECK: encoding: [0x07,0xff,0x67,0x10]
xor.t %d1, %d15, 7, %d15, 0

# CHECK-INST: xor.t %d1, %d15, 7, %d15, 7
# CHECK: encoding: [0x07,0xff,0xe7,0x13]
xor.t %d1, %d15, 7, %d15, 7

# CHECK-INST: xor.t %d1, %d15, 7, %d15, 24
# CHECK: encoding: [0x07,0xff,0x67,0x1c]
xor.t %d1, %d15, 7, %d15, 24

# CHECK-INST: xor.t %d1, %d15, 7, %d15, 31
# CHECK: encoding: [0x07,0xff,0xe7,0x1f]
xor.t %d1, %d15, 7, %d15, 31

# CHECK-INST: xor.t %d1, %d15, 24, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x78,0x10]
xor.t %d1, %d15, 24, %d0, 0

# CHECK-INST: xor.t %d1, %d15, 24, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xf8,0x13]
xor.t %d1, %d15, 24, %d0, 7

# CHECK-INST: xor.t %d1, %d15, 24, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x78,0x1c]
xor.t %d1, %d15, 24, %d0, 24

# CHECK-INST: xor.t %d1, %d15, 24, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xf8,0x1f]
xor.t %d1, %d15, 24, %d0, 31

# CHECK-INST: xor.t %d1, %d15, 24, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x78,0x10]
xor.t %d1, %d15, 24, %d1, 0

# CHECK-INST: xor.t %d1, %d15, 24, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xf8,0x13]
xor.t %d1, %d15, 24, %d1, 7

# CHECK-INST: xor.t %d1, %d15, 24, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x78,0x1c]
xor.t %d1, %d15, 24, %d1, 24

# CHECK-INST: xor.t %d1, %d15, 24, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xf8,0x1f]
xor.t %d1, %d15, 24, %d1, 31

# CHECK-INST: xor.t %d1, %d15, 24, %d14, 0
# CHECK: encoding: [0x07,0xef,0x78,0x10]
xor.t %d1, %d15, 24, %d14, 0

# CHECK-INST: xor.t %d1, %d15, 24, %d14, 7
# CHECK: encoding: [0x07,0xef,0xf8,0x13]
xor.t %d1, %d15, 24, %d14, 7

# CHECK-INST: xor.t %d1, %d15, 24, %d14, 24
# CHECK: encoding: [0x07,0xef,0x78,0x1c]
xor.t %d1, %d15, 24, %d14, 24

# CHECK-INST: xor.t %d1, %d15, 24, %d14, 31
# CHECK: encoding: [0x07,0xef,0xf8,0x1f]
xor.t %d1, %d15, 24, %d14, 31

# CHECK-INST: xor.t %d1, %d15, 24, %d15, 0
# CHECK: encoding: [0x07,0xff,0x78,0x10]
xor.t %d1, %d15, 24, %d15, 0

# CHECK-INST: xor.t %d1, %d15, 24, %d15, 7
# CHECK: encoding: [0x07,0xff,0xf8,0x13]
xor.t %d1, %d15, 24, %d15, 7

# CHECK-INST: xor.t %d1, %d15, 24, %d15, 24
# CHECK: encoding: [0x07,0xff,0x78,0x1c]
xor.t %d1, %d15, 24, %d15, 24

# CHECK-INST: xor.t %d1, %d15, 24, %d15, 31
# CHECK: encoding: [0x07,0xff,0xf8,0x1f]
xor.t %d1, %d15, 24, %d15, 31

# CHECK-INST: xor.t %d1, %d15, 31, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x7f,0x10]
xor.t %d1, %d15, 31, %d0, 0

# CHECK-INST: xor.t %d1, %d15, 31, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xff,0x13]
xor.t %d1, %d15, 31, %d0, 7

# CHECK-INST: xor.t %d1, %d15, 31, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x7f,0x1c]
xor.t %d1, %d15, 31, %d0, 24

# CHECK-INST: xor.t %d1, %d15, 31, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xff,0x1f]
xor.t %d1, %d15, 31, %d0, 31

# CHECK-INST: xor.t %d1, %d15, 31, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x7f,0x10]
xor.t %d1, %d15, 31, %d1, 0

# CHECK-INST: xor.t %d1, %d15, 31, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xff,0x13]
xor.t %d1, %d15, 31, %d1, 7

# CHECK-INST: xor.t %d1, %d15, 31, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x7f,0x1c]
xor.t %d1, %d15, 31, %d1, 24

# CHECK-INST: xor.t %d1, %d15, 31, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xff,0x1f]
xor.t %d1, %d15, 31, %d1, 31

# CHECK-INST: xor.t %d1, %d15, 31, %d14, 0
# CHECK: encoding: [0x07,0xef,0x7f,0x10]
xor.t %d1, %d15, 31, %d14, 0

# CHECK-INST: xor.t %d1, %d15, 31, %d14, 7
# CHECK: encoding: [0x07,0xef,0xff,0x13]
xor.t %d1, %d15, 31, %d14, 7

# CHECK-INST: xor.t %d1, %d15, 31, %d14, 24
# CHECK: encoding: [0x07,0xef,0x7f,0x1c]
xor.t %d1, %d15, 31, %d14, 24

# CHECK-INST: xor.t %d1, %d15, 31, %d14, 31
# CHECK: encoding: [0x07,0xef,0xff,0x1f]
xor.t %d1, %d15, 31, %d14, 31

# CHECK-INST: xor.t %d1, %d15, 31, %d15, 0
# CHECK: encoding: [0x07,0xff,0x7f,0x10]
xor.t %d1, %d15, 31, %d15, 0

# CHECK-INST: xor.t %d1, %d15, 31, %d15, 7
# CHECK: encoding: [0x07,0xff,0xff,0x13]
xor.t %d1, %d15, 31, %d15, 7

# CHECK-INST: xor.t %d1, %d15, 31, %d15, 24
# CHECK: encoding: [0x07,0xff,0x7f,0x1c]
xor.t %d1, %d15, 31, %d15, 24

# CHECK-INST: xor.t %d1, %d15, 31, %d15, 31
# CHECK: encoding: [0x07,0xff,0xff,0x1f]
xor.t %d1, %d15, 31, %d15, 31

# CHECK-INST: xor.t %d14, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x60,0xe0]
xor.t %d14, %d0, 0, %d0, 0

# CHECK-INST: xor.t %d14, %d0, 0, %d0, 7
# CHECK: encoding: [0x07,0x00,0xe0,0xe3]
xor.t %d14, %d0, 0, %d0, 7

# CHECK-INST: xor.t %d14, %d0, 0, %d0, 24
# CHECK: encoding: [0x07,0x00,0x60,0xec]
xor.t %d14, %d0, 0, %d0, 24

# CHECK-INST: xor.t %d14, %d0, 0, %d0, 31
# CHECK: encoding: [0x07,0x00,0xe0,0xef]
xor.t %d14, %d0, 0, %d0, 31

# CHECK-INST: xor.t %d14, %d0, 0, %d1, 0
# CHECK: encoding: [0x07,0x10,0x60,0xe0]
xor.t %d14, %d0, 0, %d1, 0

# CHECK-INST: xor.t %d14, %d0, 0, %d1, 7
# CHECK: encoding: [0x07,0x10,0xe0,0xe3]
xor.t %d14, %d0, 0, %d1, 7

# CHECK-INST: xor.t %d14, %d0, 0, %d1, 24
# CHECK: encoding: [0x07,0x10,0x60,0xec]
xor.t %d14, %d0, 0, %d1, 24

# CHECK-INST: xor.t %d14, %d0, 0, %d1, 31
# CHECK: encoding: [0x07,0x10,0xe0,0xef]
xor.t %d14, %d0, 0, %d1, 31

# CHECK-INST: xor.t %d14, %d0, 0, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x60,0xe0]
xor.t %d14, %d0, 0, %d14, 0

# CHECK-INST: xor.t %d14, %d0, 0, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xe0,0xe3]
xor.t %d14, %d0, 0, %d14, 7

# CHECK-INST: xor.t %d14, %d0, 0, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x60,0xec]
xor.t %d14, %d0, 0, %d14, 24

# CHECK-INST: xor.t %d14, %d0, 0, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xe0,0xef]
xor.t %d14, %d0, 0, %d14, 31

# CHECK-INST: xor.t %d14, %d0, 0, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x60,0xe0]
xor.t %d14, %d0, 0, %d15, 0

# CHECK-INST: xor.t %d14, %d0, 0, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xe0,0xe3]
xor.t %d14, %d0, 0, %d15, 7

# CHECK-INST: xor.t %d14, %d0, 0, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x60,0xec]
xor.t %d14, %d0, 0, %d15, 24

# CHECK-INST: xor.t %d14, %d0, 0, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xe0,0xef]
xor.t %d14, %d0, 0, %d15, 31

# CHECK-INST: xor.t %d14, %d0, 7, %d0, 0
# CHECK: encoding: [0x07,0x00,0x67,0xe0]
xor.t %d14, %d0, 7, %d0, 0

# CHECK-INST: xor.t %d14, %d0, 7, %d0, 7
# CHECK: encoding: [0x07,0x00,0xe7,0xe3]
xor.t %d14, %d0, 7, %d0, 7

# CHECK-INST: xor.t %d14, %d0, 7, %d0, 24
# CHECK: encoding: [0x07,0x00,0x67,0xec]
xor.t %d14, %d0, 7, %d0, 24

# CHECK-INST: xor.t %d14, %d0, 7, %d0, 31
# CHECK: encoding: [0x07,0x00,0xe7,0xef]
xor.t %d14, %d0, 7, %d0, 31

# CHECK-INST: xor.t %d14, %d0, 7, %d1, 0
# CHECK: encoding: [0x07,0x10,0x67,0xe0]
xor.t %d14, %d0, 7, %d1, 0

# CHECK-INST: xor.t %d14, %d0, 7, %d1, 7
# CHECK: encoding: [0x07,0x10,0xe7,0xe3]
xor.t %d14, %d0, 7, %d1, 7

# CHECK-INST: xor.t %d14, %d0, 7, %d1, 24
# CHECK: encoding: [0x07,0x10,0x67,0xec]
xor.t %d14, %d0, 7, %d1, 24

# CHECK-INST: xor.t %d14, %d0, 7, %d1, 31
# CHECK: encoding: [0x07,0x10,0xe7,0xef]
xor.t %d14, %d0, 7, %d1, 31

# CHECK-INST: xor.t %d14, %d0, 7, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x67,0xe0]
xor.t %d14, %d0, 7, %d14, 0

# CHECK-INST: xor.t %d14, %d0, 7, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xe7,0xe3]
xor.t %d14, %d0, 7, %d14, 7

# CHECK-INST: xor.t %d14, %d0, 7, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x67,0xec]
xor.t %d14, %d0, 7, %d14, 24

# CHECK-INST: xor.t %d14, %d0, 7, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xe7,0xef]
xor.t %d14, %d0, 7, %d14, 31

# CHECK-INST: xor.t %d14, %d0, 7, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x67,0xe0]
xor.t %d14, %d0, 7, %d15, 0

# CHECK-INST: xor.t %d14, %d0, 7, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xe7,0xe3]
xor.t %d14, %d0, 7, %d15, 7

# CHECK-INST: xor.t %d14, %d0, 7, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x67,0xec]
xor.t %d14, %d0, 7, %d15, 24

# CHECK-INST: xor.t %d14, %d0, 7, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xe7,0xef]
xor.t %d14, %d0, 7, %d15, 31

# CHECK-INST: xor.t %d14, %d0, 24, %d0, 0
# CHECK: encoding: [0x07,0x00,0x78,0xe0]
xor.t %d14, %d0, 24, %d0, 0

# CHECK-INST: xor.t %d14, %d0, 24, %d0, 7
# CHECK: encoding: [0x07,0x00,0xf8,0xe3]
xor.t %d14, %d0, 24, %d0, 7

# CHECK-INST: xor.t %d14, %d0, 24, %d0, 24
# CHECK: encoding: [0x07,0x00,0x78,0xec]
xor.t %d14, %d0, 24, %d0, 24

# CHECK-INST: xor.t %d14, %d0, 24, %d0, 31
# CHECK: encoding: [0x07,0x00,0xf8,0xef]
xor.t %d14, %d0, 24, %d0, 31

# CHECK-INST: xor.t %d14, %d0, 24, %d1, 0
# CHECK: encoding: [0x07,0x10,0x78,0xe0]
xor.t %d14, %d0, 24, %d1, 0

# CHECK-INST: xor.t %d14, %d0, 24, %d1, 7
# CHECK: encoding: [0x07,0x10,0xf8,0xe3]
xor.t %d14, %d0, 24, %d1, 7

# CHECK-INST: xor.t %d14, %d0, 24, %d1, 24
# CHECK: encoding: [0x07,0x10,0x78,0xec]
xor.t %d14, %d0, 24, %d1, 24

# CHECK-INST: xor.t %d14, %d0, 24, %d1, 31
# CHECK: encoding: [0x07,0x10,0xf8,0xef]
xor.t %d14, %d0, 24, %d1, 31

# CHECK-INST: xor.t %d14, %d0, 24, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x78,0xe0]
xor.t %d14, %d0, 24, %d14, 0

# CHECK-INST: xor.t %d14, %d0, 24, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xf8,0xe3]
xor.t %d14, %d0, 24, %d14, 7

# CHECK-INST: xor.t %d14, %d0, 24, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x78,0xec]
xor.t %d14, %d0, 24, %d14, 24

# CHECK-INST: xor.t %d14, %d0, 24, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xf8,0xef]
xor.t %d14, %d0, 24, %d14, 31

# CHECK-INST: xor.t %d14, %d0, 24, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x78,0xe0]
xor.t %d14, %d0, 24, %d15, 0

# CHECK-INST: xor.t %d14, %d0, 24, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xf8,0xe3]
xor.t %d14, %d0, 24, %d15, 7

# CHECK-INST: xor.t %d14, %d0, 24, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x78,0xec]
xor.t %d14, %d0, 24, %d15, 24

# CHECK-INST: xor.t %d14, %d0, 24, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xf8,0xef]
xor.t %d14, %d0, 24, %d15, 31

# CHECK-INST: xor.t %d14, %d0, 31, %d0, 0
# CHECK: encoding: [0x07,0x00,0x7f,0xe0]
xor.t %d14, %d0, 31, %d0, 0

# CHECK-INST: xor.t %d14, %d0, 31, %d0, 7
# CHECK: encoding: [0x07,0x00,0xff,0xe3]
xor.t %d14, %d0, 31, %d0, 7

# CHECK-INST: xor.t %d14, %d0, 31, %d0, 24
# CHECK: encoding: [0x07,0x00,0x7f,0xec]
xor.t %d14, %d0, 31, %d0, 24

# CHECK-INST: xor.t %d14, %d0, 31, %d0, 31
# CHECK: encoding: [0x07,0x00,0xff,0xef]
xor.t %d14, %d0, 31, %d0, 31

# CHECK-INST: xor.t %d14, %d0, 31, %d1, 0
# CHECK: encoding: [0x07,0x10,0x7f,0xe0]
xor.t %d14, %d0, 31, %d1, 0

# CHECK-INST: xor.t %d14, %d0, 31, %d1, 7
# CHECK: encoding: [0x07,0x10,0xff,0xe3]
xor.t %d14, %d0, 31, %d1, 7

# CHECK-INST: xor.t %d14, %d0, 31, %d1, 24
# CHECK: encoding: [0x07,0x10,0x7f,0xec]
xor.t %d14, %d0, 31, %d1, 24

# CHECK-INST: xor.t %d14, %d0, 31, %d1, 31
# CHECK: encoding: [0x07,0x10,0xff,0xef]
xor.t %d14, %d0, 31, %d1, 31

# CHECK-INST: xor.t %d14, %d0, 31, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x7f,0xe0]
xor.t %d14, %d0, 31, %d14, 0

# CHECK-INST: xor.t %d14, %d0, 31, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xff,0xe3]
xor.t %d14, %d0, 31, %d14, 7

# CHECK-INST: xor.t %d14, %d0, 31, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x7f,0xec]
xor.t %d14, %d0, 31, %d14, 24

# CHECK-INST: xor.t %d14, %d0, 31, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xff,0xef]
xor.t %d14, %d0, 31, %d14, 31

# CHECK-INST: xor.t %d14, %d0, 31, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x7f,0xe0]
xor.t %d14, %d0, 31, %d15, 0

# CHECK-INST: xor.t %d14, %d0, 31, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xff,0xe3]
xor.t %d14, %d0, 31, %d15, 7

# CHECK-INST: xor.t %d14, %d0, 31, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x7f,0xec]
xor.t %d14, %d0, 31, %d15, 24

# CHECK-INST: xor.t %d14, %d0, 31, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xff,0xef]
xor.t %d14, %d0, 31, %d15, 31

# CHECK-INST: xor.t %d14, %d1, 0, %d0, 0
# CHECK: encoding: [0x07,0x01,0x60,0xe0]
xor.t %d14, %d1, 0, %d0, 0

# CHECK-INST: xor.t %d14, %d1, 0, %d0, 7
# CHECK: encoding: [0x07,0x01,0xe0,0xe3]
xor.t %d14, %d1, 0, %d0, 7

# CHECK-INST: xor.t %d14, %d1, 0, %d0, 24
# CHECK: encoding: [0x07,0x01,0x60,0xec]
xor.t %d14, %d1, 0, %d0, 24

# CHECK-INST: xor.t %d14, %d1, 0, %d0, 31
# CHECK: encoding: [0x07,0x01,0xe0,0xef]
xor.t %d14, %d1, 0, %d0, 31

# CHECK-INST: xor.t %d14, %d1, 0, %d1, 0
# CHECK: encoding: [0x07,0x11,0x60,0xe0]
xor.t %d14, %d1, 0, %d1, 0

# CHECK-INST: xor.t %d14, %d1, 0, %d1, 7
# CHECK: encoding: [0x07,0x11,0xe0,0xe3]
xor.t %d14, %d1, 0, %d1, 7

# CHECK-INST: xor.t %d14, %d1, 0, %d1, 24
# CHECK: encoding: [0x07,0x11,0x60,0xec]
xor.t %d14, %d1, 0, %d1, 24

# CHECK-INST: xor.t %d14, %d1, 0, %d1, 31
# CHECK: encoding: [0x07,0x11,0xe0,0xef]
xor.t %d14, %d1, 0, %d1, 31

# CHECK-INST: xor.t %d14, %d1, 0, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x60,0xe0]
xor.t %d14, %d1, 0, %d14, 0

# CHECK-INST: xor.t %d14, %d1, 0, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xe0,0xe3]
xor.t %d14, %d1, 0, %d14, 7

# CHECK-INST: xor.t %d14, %d1, 0, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x60,0xec]
xor.t %d14, %d1, 0, %d14, 24

# CHECK-INST: xor.t %d14, %d1, 0, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xe0,0xef]
xor.t %d14, %d1, 0, %d14, 31

# CHECK-INST: xor.t %d14, %d1, 0, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x60,0xe0]
xor.t %d14, %d1, 0, %d15, 0

# CHECK-INST: xor.t %d14, %d1, 0, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xe0,0xe3]
xor.t %d14, %d1, 0, %d15, 7

# CHECK-INST: xor.t %d14, %d1, 0, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x60,0xec]
xor.t %d14, %d1, 0, %d15, 24

# CHECK-INST: xor.t %d14, %d1, 0, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xe0,0xef]
xor.t %d14, %d1, 0, %d15, 31

# CHECK-INST: xor.t %d14, %d1, 7, %d0, 0
# CHECK: encoding: [0x07,0x01,0x67,0xe0]
xor.t %d14, %d1, 7, %d0, 0

# CHECK-INST: xor.t %d14, %d1, 7, %d0, 7
# CHECK: encoding: [0x07,0x01,0xe7,0xe3]
xor.t %d14, %d1, 7, %d0, 7

# CHECK-INST: xor.t %d14, %d1, 7, %d0, 24
# CHECK: encoding: [0x07,0x01,0x67,0xec]
xor.t %d14, %d1, 7, %d0, 24

# CHECK-INST: xor.t %d14, %d1, 7, %d0, 31
# CHECK: encoding: [0x07,0x01,0xe7,0xef]
xor.t %d14, %d1, 7, %d0, 31

# CHECK-INST: xor.t %d14, %d1, 7, %d1, 0
# CHECK: encoding: [0x07,0x11,0x67,0xe0]
xor.t %d14, %d1, 7, %d1, 0

# CHECK-INST: xor.t %d14, %d1, 7, %d1, 7
# CHECK: encoding: [0x07,0x11,0xe7,0xe3]
xor.t %d14, %d1, 7, %d1, 7

# CHECK-INST: xor.t %d14, %d1, 7, %d1, 24
# CHECK: encoding: [0x07,0x11,0x67,0xec]
xor.t %d14, %d1, 7, %d1, 24

# CHECK-INST: xor.t %d14, %d1, 7, %d1, 31
# CHECK: encoding: [0x07,0x11,0xe7,0xef]
xor.t %d14, %d1, 7, %d1, 31

# CHECK-INST: xor.t %d14, %d1, 7, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x67,0xe0]
xor.t %d14, %d1, 7, %d14, 0

# CHECK-INST: xor.t %d14, %d1, 7, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xe7,0xe3]
xor.t %d14, %d1, 7, %d14, 7

# CHECK-INST: xor.t %d14, %d1, 7, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x67,0xec]
xor.t %d14, %d1, 7, %d14, 24

# CHECK-INST: xor.t %d14, %d1, 7, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xe7,0xef]
xor.t %d14, %d1, 7, %d14, 31

# CHECK-INST: xor.t %d14, %d1, 7, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x67,0xe0]
xor.t %d14, %d1, 7, %d15, 0

# CHECK-INST: xor.t %d14, %d1, 7, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xe7,0xe3]
xor.t %d14, %d1, 7, %d15, 7

# CHECK-INST: xor.t %d14, %d1, 7, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x67,0xec]
xor.t %d14, %d1, 7, %d15, 24

# CHECK-INST: xor.t %d14, %d1, 7, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xe7,0xef]
xor.t %d14, %d1, 7, %d15, 31

# CHECK-INST: xor.t %d14, %d1, 24, %d0, 0
# CHECK: encoding: [0x07,0x01,0x78,0xe0]
xor.t %d14, %d1, 24, %d0, 0

# CHECK-INST: xor.t %d14, %d1, 24, %d0, 7
# CHECK: encoding: [0x07,0x01,0xf8,0xe3]
xor.t %d14, %d1, 24, %d0, 7

# CHECK-INST: xor.t %d14, %d1, 24, %d0, 24
# CHECK: encoding: [0x07,0x01,0x78,0xec]
xor.t %d14, %d1, 24, %d0, 24

# CHECK-INST: xor.t %d14, %d1, 24, %d0, 31
# CHECK: encoding: [0x07,0x01,0xf8,0xef]
xor.t %d14, %d1, 24, %d0, 31

# CHECK-INST: xor.t %d14, %d1, 24, %d1, 0
# CHECK: encoding: [0x07,0x11,0x78,0xe0]
xor.t %d14, %d1, 24, %d1, 0

# CHECK-INST: xor.t %d14, %d1, 24, %d1, 7
# CHECK: encoding: [0x07,0x11,0xf8,0xe3]
xor.t %d14, %d1, 24, %d1, 7

# CHECK-INST: xor.t %d14, %d1, 24, %d1, 24
# CHECK: encoding: [0x07,0x11,0x78,0xec]
xor.t %d14, %d1, 24, %d1, 24

# CHECK-INST: xor.t %d14, %d1, 24, %d1, 31
# CHECK: encoding: [0x07,0x11,0xf8,0xef]
xor.t %d14, %d1, 24, %d1, 31

# CHECK-INST: xor.t %d14, %d1, 24, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x78,0xe0]
xor.t %d14, %d1, 24, %d14, 0

# CHECK-INST: xor.t %d14, %d1, 24, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xf8,0xe3]
xor.t %d14, %d1, 24, %d14, 7

# CHECK-INST: xor.t %d14, %d1, 24, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x78,0xec]
xor.t %d14, %d1, 24, %d14, 24

# CHECK-INST: xor.t %d14, %d1, 24, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xf8,0xef]
xor.t %d14, %d1, 24, %d14, 31

# CHECK-INST: xor.t %d14, %d1, 24, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x78,0xe0]
xor.t %d14, %d1, 24, %d15, 0

# CHECK-INST: xor.t %d14, %d1, 24, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xf8,0xe3]
xor.t %d14, %d1, 24, %d15, 7

# CHECK-INST: xor.t %d14, %d1, 24, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x78,0xec]
xor.t %d14, %d1, 24, %d15, 24

# CHECK-INST: xor.t %d14, %d1, 24, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xf8,0xef]
xor.t %d14, %d1, 24, %d15, 31

# CHECK-INST: xor.t %d14, %d1, 31, %d0, 0
# CHECK: encoding: [0x07,0x01,0x7f,0xe0]
xor.t %d14, %d1, 31, %d0, 0

# CHECK-INST: xor.t %d14, %d1, 31, %d0, 7
# CHECK: encoding: [0x07,0x01,0xff,0xe3]
xor.t %d14, %d1, 31, %d0, 7

# CHECK-INST: xor.t %d14, %d1, 31, %d0, 24
# CHECK: encoding: [0x07,0x01,0x7f,0xec]
xor.t %d14, %d1, 31, %d0, 24

# CHECK-INST: xor.t %d14, %d1, 31, %d0, 31
# CHECK: encoding: [0x07,0x01,0xff,0xef]
xor.t %d14, %d1, 31, %d0, 31

# CHECK-INST: xor.t %d14, %d1, 31, %d1, 0
# CHECK: encoding: [0x07,0x11,0x7f,0xe0]
xor.t %d14, %d1, 31, %d1, 0

# CHECK-INST: xor.t %d14, %d1, 31, %d1, 7
# CHECK: encoding: [0x07,0x11,0xff,0xe3]
xor.t %d14, %d1, 31, %d1, 7

# CHECK-INST: xor.t %d14, %d1, 31, %d1, 24
# CHECK: encoding: [0x07,0x11,0x7f,0xec]
xor.t %d14, %d1, 31, %d1, 24

# CHECK-INST: xor.t %d14, %d1, 31, %d1, 31
# CHECK: encoding: [0x07,0x11,0xff,0xef]
xor.t %d14, %d1, 31, %d1, 31

# CHECK-INST: xor.t %d14, %d1, 31, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x7f,0xe0]
xor.t %d14, %d1, 31, %d14, 0

# CHECK-INST: xor.t %d14, %d1, 31, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xff,0xe3]
xor.t %d14, %d1, 31, %d14, 7

# CHECK-INST: xor.t %d14, %d1, 31, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x7f,0xec]
xor.t %d14, %d1, 31, %d14, 24

# CHECK-INST: xor.t %d14, %d1, 31, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xff,0xef]
xor.t %d14, %d1, 31, %d14, 31

# CHECK-INST: xor.t %d14, %d1, 31, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x7f,0xe0]
xor.t %d14, %d1, 31, %d15, 0

# CHECK-INST: xor.t %d14, %d1, 31, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xff,0xe3]
xor.t %d14, %d1, 31, %d15, 7

# CHECK-INST: xor.t %d14, %d1, 31, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x7f,0xec]
xor.t %d14, %d1, 31, %d15, 24

# CHECK-INST: xor.t %d14, %d1, 31, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xff,0xef]
xor.t %d14, %d1, 31, %d15, 31

# CHECK-INST: xor.t %d14, %d14, 0, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x60,0xe0]
xor.t %d14, %d14, 0, %d0, 0

# CHECK-INST: xor.t %d14, %d14, 0, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xe0,0xe3]
xor.t %d14, %d14, 0, %d0, 7

# CHECK-INST: xor.t %d14, %d14, 0, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x60,0xec]
xor.t %d14, %d14, 0, %d0, 24

# CHECK-INST: xor.t %d14, %d14, 0, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xe0,0xef]
xor.t %d14, %d14, 0, %d0, 31

# CHECK-INST: xor.t %d14, %d14, 0, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x60,0xe0]
xor.t %d14, %d14, 0, %d1, 0

# CHECK-INST: xor.t %d14, %d14, 0, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xe0,0xe3]
xor.t %d14, %d14, 0, %d1, 7

# CHECK-INST: xor.t %d14, %d14, 0, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x60,0xec]
xor.t %d14, %d14, 0, %d1, 24

# CHECK-INST: xor.t %d14, %d14, 0, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xe0,0xef]
xor.t %d14, %d14, 0, %d1, 31

# CHECK-INST: xor.t %d14, %d14, 0, %d14, 0
# CHECK: encoding: [0x07,0xee,0x60,0xe0]
xor.t %d14, %d14, 0, %d14, 0

# CHECK-INST: xor.t %d14, %d14, 0, %d14, 7
# CHECK: encoding: [0x07,0xee,0xe0,0xe3]
xor.t %d14, %d14, 0, %d14, 7

# CHECK-INST: xor.t %d14, %d14, 0, %d14, 24
# CHECK: encoding: [0x07,0xee,0x60,0xec]
xor.t %d14, %d14, 0, %d14, 24

# CHECK-INST: xor.t %d14, %d14, 0, %d14, 31
# CHECK: encoding: [0x07,0xee,0xe0,0xef]
xor.t %d14, %d14, 0, %d14, 31

# CHECK-INST: xor.t %d14, %d14, 0, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x60,0xe0]
xor.t %d14, %d14, 0, %d15, 0

# CHECK-INST: xor.t %d14, %d14, 0, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xe0,0xe3]
xor.t %d14, %d14, 0, %d15, 7

# CHECK-INST: xor.t %d14, %d14, 0, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x60,0xec]
xor.t %d14, %d14, 0, %d15, 24

# CHECK-INST: xor.t %d14, %d14, 0, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xe0,0xef]
xor.t %d14, %d14, 0, %d15, 31

# CHECK-INST: xor.t %d14, %d14, 7, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x67,0xe0]
xor.t %d14, %d14, 7, %d0, 0

# CHECK-INST: xor.t %d14, %d14, 7, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xe7,0xe3]
xor.t %d14, %d14, 7, %d0, 7

# CHECK-INST: xor.t %d14, %d14, 7, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x67,0xec]
xor.t %d14, %d14, 7, %d0, 24

# CHECK-INST: xor.t %d14, %d14, 7, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xe7,0xef]
xor.t %d14, %d14, 7, %d0, 31

# CHECK-INST: xor.t %d14, %d14, 7, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x67,0xe0]
xor.t %d14, %d14, 7, %d1, 0

# CHECK-INST: xor.t %d14, %d14, 7, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xe7,0xe3]
xor.t %d14, %d14, 7, %d1, 7

# CHECK-INST: xor.t %d14, %d14, 7, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x67,0xec]
xor.t %d14, %d14, 7, %d1, 24

# CHECK-INST: xor.t %d14, %d14, 7, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xe7,0xef]
xor.t %d14, %d14, 7, %d1, 31

# CHECK-INST: xor.t %d14, %d14, 7, %d14, 0
# CHECK: encoding: [0x07,0xee,0x67,0xe0]
xor.t %d14, %d14, 7, %d14, 0

# CHECK-INST: xor.t %d14, %d14, 7, %d14, 7
# CHECK: encoding: [0x07,0xee,0xe7,0xe3]
xor.t %d14, %d14, 7, %d14, 7

# CHECK-INST: xor.t %d14, %d14, 7, %d14, 24
# CHECK: encoding: [0x07,0xee,0x67,0xec]
xor.t %d14, %d14, 7, %d14, 24

# CHECK-INST: xor.t %d14, %d14, 7, %d14, 31
# CHECK: encoding: [0x07,0xee,0xe7,0xef]
xor.t %d14, %d14, 7, %d14, 31

# CHECK-INST: xor.t %d14, %d14, 7, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x67,0xe0]
xor.t %d14, %d14, 7, %d15, 0

# CHECK-INST: xor.t %d14, %d14, 7, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xe7,0xe3]
xor.t %d14, %d14, 7, %d15, 7

# CHECK-INST: xor.t %d14, %d14, 7, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x67,0xec]
xor.t %d14, %d14, 7, %d15, 24

# CHECK-INST: xor.t %d14, %d14, 7, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xe7,0xef]
xor.t %d14, %d14, 7, %d15, 31

# CHECK-INST: xor.t %d14, %d14, 24, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x78,0xe0]
xor.t %d14, %d14, 24, %d0, 0

# CHECK-INST: xor.t %d14, %d14, 24, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xf8,0xe3]
xor.t %d14, %d14, 24, %d0, 7

# CHECK-INST: xor.t %d14, %d14, 24, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x78,0xec]
xor.t %d14, %d14, 24, %d0, 24

# CHECK-INST: xor.t %d14, %d14, 24, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xf8,0xef]
xor.t %d14, %d14, 24, %d0, 31

# CHECK-INST: xor.t %d14, %d14, 24, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x78,0xe0]
xor.t %d14, %d14, 24, %d1, 0

# CHECK-INST: xor.t %d14, %d14, 24, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xf8,0xe3]
xor.t %d14, %d14, 24, %d1, 7

# CHECK-INST: xor.t %d14, %d14, 24, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x78,0xec]
xor.t %d14, %d14, 24, %d1, 24

# CHECK-INST: xor.t %d14, %d14, 24, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xf8,0xef]
xor.t %d14, %d14, 24, %d1, 31

# CHECK-INST: xor.t %d14, %d14, 24, %d14, 0
# CHECK: encoding: [0x07,0xee,0x78,0xe0]
xor.t %d14, %d14, 24, %d14, 0

# CHECK-INST: xor.t %d14, %d14, 24, %d14, 7
# CHECK: encoding: [0x07,0xee,0xf8,0xe3]
xor.t %d14, %d14, 24, %d14, 7

# CHECK-INST: xor.t %d14, %d14, 24, %d14, 24
# CHECK: encoding: [0x07,0xee,0x78,0xec]
xor.t %d14, %d14, 24, %d14, 24

# CHECK-INST: xor.t %d14, %d14, 24, %d14, 31
# CHECK: encoding: [0x07,0xee,0xf8,0xef]
xor.t %d14, %d14, 24, %d14, 31

# CHECK-INST: xor.t %d14, %d14, 24, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x78,0xe0]
xor.t %d14, %d14, 24, %d15, 0

# CHECK-INST: xor.t %d14, %d14, 24, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xf8,0xe3]
xor.t %d14, %d14, 24, %d15, 7

# CHECK-INST: xor.t %d14, %d14, 24, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x78,0xec]
xor.t %d14, %d14, 24, %d15, 24

# CHECK-INST: xor.t %d14, %d14, 24, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xf8,0xef]
xor.t %d14, %d14, 24, %d15, 31

# CHECK-INST: xor.t %d14, %d14, 31, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x7f,0xe0]
xor.t %d14, %d14, 31, %d0, 0

# CHECK-INST: xor.t %d14, %d14, 31, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xff,0xe3]
xor.t %d14, %d14, 31, %d0, 7

# CHECK-INST: xor.t %d14, %d14, 31, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x7f,0xec]
xor.t %d14, %d14, 31, %d0, 24

# CHECK-INST: xor.t %d14, %d14, 31, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xff,0xef]
xor.t %d14, %d14, 31, %d0, 31

# CHECK-INST: xor.t %d14, %d14, 31, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x7f,0xe0]
xor.t %d14, %d14, 31, %d1, 0

# CHECK-INST: xor.t %d14, %d14, 31, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xff,0xe3]
xor.t %d14, %d14, 31, %d1, 7

# CHECK-INST: xor.t %d14, %d14, 31, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x7f,0xec]
xor.t %d14, %d14, 31, %d1, 24

# CHECK-INST: xor.t %d14, %d14, 31, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xff,0xef]
xor.t %d14, %d14, 31, %d1, 31

# CHECK-INST: xor.t %d14, %d14, 31, %d14, 0
# CHECK: encoding: [0x07,0xee,0x7f,0xe0]
xor.t %d14, %d14, 31, %d14, 0

# CHECK-INST: xor.t %d14, %d14, 31, %d14, 7
# CHECK: encoding: [0x07,0xee,0xff,0xe3]
xor.t %d14, %d14, 31, %d14, 7

# CHECK-INST: xor.t %d14, %d14, 31, %d14, 24
# CHECK: encoding: [0x07,0xee,0x7f,0xec]
xor.t %d14, %d14, 31, %d14, 24

# CHECK-INST: xor.t %d14, %d14, 31, %d14, 31
# CHECK: encoding: [0x07,0xee,0xff,0xef]
xor.t %d14, %d14, 31, %d14, 31

# CHECK-INST: xor.t %d14, %d14, 31, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x7f,0xe0]
xor.t %d14, %d14, 31, %d15, 0

# CHECK-INST: xor.t %d14, %d14, 31, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xff,0xe3]
xor.t %d14, %d14, 31, %d15, 7

# CHECK-INST: xor.t %d14, %d14, 31, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x7f,0xec]
xor.t %d14, %d14, 31, %d15, 24

# CHECK-INST: xor.t %d14, %d14, 31, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xff,0xef]
xor.t %d14, %d14, 31, %d15, 31

# CHECK-INST: xor.t %d14, %d15, 0, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x60,0xe0]
xor.t %d14, %d15, 0, %d0, 0

# CHECK-INST: xor.t %d14, %d15, 0, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xe0,0xe3]
xor.t %d14, %d15, 0, %d0, 7

# CHECK-INST: xor.t %d14, %d15, 0, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x60,0xec]
xor.t %d14, %d15, 0, %d0, 24

# CHECK-INST: xor.t %d14, %d15, 0, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xe0,0xef]
xor.t %d14, %d15, 0, %d0, 31

# CHECK-INST: xor.t %d14, %d15, 0, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x60,0xe0]
xor.t %d14, %d15, 0, %d1, 0

# CHECK-INST: xor.t %d14, %d15, 0, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xe0,0xe3]
xor.t %d14, %d15, 0, %d1, 7

# CHECK-INST: xor.t %d14, %d15, 0, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x60,0xec]
xor.t %d14, %d15, 0, %d1, 24

# CHECK-INST: xor.t %d14, %d15, 0, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xe0,0xef]
xor.t %d14, %d15, 0, %d1, 31

# CHECK-INST: xor.t %d14, %d15, 0, %d14, 0
# CHECK: encoding: [0x07,0xef,0x60,0xe0]
xor.t %d14, %d15, 0, %d14, 0

# CHECK-INST: xor.t %d14, %d15, 0, %d14, 7
# CHECK: encoding: [0x07,0xef,0xe0,0xe3]
xor.t %d14, %d15, 0, %d14, 7

# CHECK-INST: xor.t %d14, %d15, 0, %d14, 24
# CHECK: encoding: [0x07,0xef,0x60,0xec]
xor.t %d14, %d15, 0, %d14, 24

# CHECK-INST: xor.t %d14, %d15, 0, %d14, 31
# CHECK: encoding: [0x07,0xef,0xe0,0xef]
xor.t %d14, %d15, 0, %d14, 31

# CHECK-INST: xor.t %d14, %d15, 0, %d15, 0
# CHECK: encoding: [0x07,0xff,0x60,0xe0]
xor.t %d14, %d15, 0, %d15, 0

# CHECK-INST: xor.t %d14, %d15, 0, %d15, 7
# CHECK: encoding: [0x07,0xff,0xe0,0xe3]
xor.t %d14, %d15, 0, %d15, 7

# CHECK-INST: xor.t %d14, %d15, 0, %d15, 24
# CHECK: encoding: [0x07,0xff,0x60,0xec]
xor.t %d14, %d15, 0, %d15, 24

# CHECK-INST: xor.t %d14, %d15, 0, %d15, 31
# CHECK: encoding: [0x07,0xff,0xe0,0xef]
xor.t %d14, %d15, 0, %d15, 31

# CHECK-INST: xor.t %d14, %d15, 7, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x67,0xe0]
xor.t %d14, %d15, 7, %d0, 0

# CHECK-INST: xor.t %d14, %d15, 7, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xe7,0xe3]
xor.t %d14, %d15, 7, %d0, 7

# CHECK-INST: xor.t %d14, %d15, 7, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x67,0xec]
xor.t %d14, %d15, 7, %d0, 24

# CHECK-INST: xor.t %d14, %d15, 7, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xe7,0xef]
xor.t %d14, %d15, 7, %d0, 31

# CHECK-INST: xor.t %d14, %d15, 7, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x67,0xe0]
xor.t %d14, %d15, 7, %d1, 0

# CHECK-INST: xor.t %d14, %d15, 7, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xe7,0xe3]
xor.t %d14, %d15, 7, %d1, 7

# CHECK-INST: xor.t %d14, %d15, 7, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x67,0xec]
xor.t %d14, %d15, 7, %d1, 24

# CHECK-INST: xor.t %d14, %d15, 7, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xe7,0xef]
xor.t %d14, %d15, 7, %d1, 31

# CHECK-INST: xor.t %d14, %d15, 7, %d14, 0
# CHECK: encoding: [0x07,0xef,0x67,0xe0]
xor.t %d14, %d15, 7, %d14, 0

# CHECK-INST: xor.t %d14, %d15, 7, %d14, 7
# CHECK: encoding: [0x07,0xef,0xe7,0xe3]
xor.t %d14, %d15, 7, %d14, 7

# CHECK-INST: xor.t %d14, %d15, 7, %d14, 24
# CHECK: encoding: [0x07,0xef,0x67,0xec]
xor.t %d14, %d15, 7, %d14, 24

# CHECK-INST: xor.t %d14, %d15, 7, %d14, 31
# CHECK: encoding: [0x07,0xef,0xe7,0xef]
xor.t %d14, %d15, 7, %d14, 31

# CHECK-INST: xor.t %d14, %d15, 7, %d15, 0
# CHECK: encoding: [0x07,0xff,0x67,0xe0]
xor.t %d14, %d15, 7, %d15, 0

# CHECK-INST: xor.t %d14, %d15, 7, %d15, 7
# CHECK: encoding: [0x07,0xff,0xe7,0xe3]
xor.t %d14, %d15, 7, %d15, 7

# CHECK-INST: xor.t %d14, %d15, 7, %d15, 24
# CHECK: encoding: [0x07,0xff,0x67,0xec]
xor.t %d14, %d15, 7, %d15, 24

# CHECK-INST: xor.t %d14, %d15, 7, %d15, 31
# CHECK: encoding: [0x07,0xff,0xe7,0xef]
xor.t %d14, %d15, 7, %d15, 31

# CHECK-INST: xor.t %d14, %d15, 24, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x78,0xe0]
xor.t %d14, %d15, 24, %d0, 0

# CHECK-INST: xor.t %d14, %d15, 24, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xf8,0xe3]
xor.t %d14, %d15, 24, %d0, 7

# CHECK-INST: xor.t %d14, %d15, 24, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x78,0xec]
xor.t %d14, %d15, 24, %d0, 24

# CHECK-INST: xor.t %d14, %d15, 24, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xf8,0xef]
xor.t %d14, %d15, 24, %d0, 31

# CHECK-INST: xor.t %d14, %d15, 24, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x78,0xe0]
xor.t %d14, %d15, 24, %d1, 0

# CHECK-INST: xor.t %d14, %d15, 24, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xf8,0xe3]
xor.t %d14, %d15, 24, %d1, 7

# CHECK-INST: xor.t %d14, %d15, 24, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x78,0xec]
xor.t %d14, %d15, 24, %d1, 24

# CHECK-INST: xor.t %d14, %d15, 24, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xf8,0xef]
xor.t %d14, %d15, 24, %d1, 31

# CHECK-INST: xor.t %d14, %d15, 24, %d14, 0
# CHECK: encoding: [0x07,0xef,0x78,0xe0]
xor.t %d14, %d15, 24, %d14, 0

# CHECK-INST: xor.t %d14, %d15, 24, %d14, 7
# CHECK: encoding: [0x07,0xef,0xf8,0xe3]
xor.t %d14, %d15, 24, %d14, 7

# CHECK-INST: xor.t %d14, %d15, 24, %d14, 24
# CHECK: encoding: [0x07,0xef,0x78,0xec]
xor.t %d14, %d15, 24, %d14, 24

# CHECK-INST: xor.t %d14, %d15, 24, %d14, 31
# CHECK: encoding: [0x07,0xef,0xf8,0xef]
xor.t %d14, %d15, 24, %d14, 31

# CHECK-INST: xor.t %d14, %d15, 24, %d15, 0
# CHECK: encoding: [0x07,0xff,0x78,0xe0]
xor.t %d14, %d15, 24, %d15, 0

# CHECK-INST: xor.t %d14, %d15, 24, %d15, 7
# CHECK: encoding: [0x07,0xff,0xf8,0xe3]
xor.t %d14, %d15, 24, %d15, 7

# CHECK-INST: xor.t %d14, %d15, 24, %d15, 24
# CHECK: encoding: [0x07,0xff,0x78,0xec]
xor.t %d14, %d15, 24, %d15, 24

# CHECK-INST: xor.t %d14, %d15, 24, %d15, 31
# CHECK: encoding: [0x07,0xff,0xf8,0xef]
xor.t %d14, %d15, 24, %d15, 31

# CHECK-INST: xor.t %d14, %d15, 31, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x7f,0xe0]
xor.t %d14, %d15, 31, %d0, 0

# CHECK-INST: xor.t %d14, %d15, 31, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xff,0xe3]
xor.t %d14, %d15, 31, %d0, 7

# CHECK-INST: xor.t %d14, %d15, 31, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x7f,0xec]
xor.t %d14, %d15, 31, %d0, 24

# CHECK-INST: xor.t %d14, %d15, 31, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xff,0xef]
xor.t %d14, %d15, 31, %d0, 31

# CHECK-INST: xor.t %d14, %d15, 31, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x7f,0xe0]
xor.t %d14, %d15, 31, %d1, 0

# CHECK-INST: xor.t %d14, %d15, 31, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xff,0xe3]
xor.t %d14, %d15, 31, %d1, 7

# CHECK-INST: xor.t %d14, %d15, 31, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x7f,0xec]
xor.t %d14, %d15, 31, %d1, 24

# CHECK-INST: xor.t %d14, %d15, 31, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xff,0xef]
xor.t %d14, %d15, 31, %d1, 31

# CHECK-INST: xor.t %d14, %d15, 31, %d14, 0
# CHECK: encoding: [0x07,0xef,0x7f,0xe0]
xor.t %d14, %d15, 31, %d14, 0

# CHECK-INST: xor.t %d14, %d15, 31, %d14, 7
# CHECK: encoding: [0x07,0xef,0xff,0xe3]
xor.t %d14, %d15, 31, %d14, 7

# CHECK-INST: xor.t %d14, %d15, 31, %d14, 24
# CHECK: encoding: [0x07,0xef,0x7f,0xec]
xor.t %d14, %d15, 31, %d14, 24

# CHECK-INST: xor.t %d14, %d15, 31, %d14, 31
# CHECK: encoding: [0x07,0xef,0xff,0xef]
xor.t %d14, %d15, 31, %d14, 31

# CHECK-INST: xor.t %d14, %d15, 31, %d15, 0
# CHECK: encoding: [0x07,0xff,0x7f,0xe0]
xor.t %d14, %d15, 31, %d15, 0

# CHECK-INST: xor.t %d14, %d15, 31, %d15, 7
# CHECK: encoding: [0x07,0xff,0xff,0xe3]
xor.t %d14, %d15, 31, %d15, 7

# CHECK-INST: xor.t %d14, %d15, 31, %d15, 24
# CHECK: encoding: [0x07,0xff,0x7f,0xec]
xor.t %d14, %d15, 31, %d15, 24

# CHECK-INST: xor.t %d14, %d15, 31, %d15, 31
# CHECK: encoding: [0x07,0xff,0xff,0xef]
xor.t %d14, %d15, 31, %d15, 31

# CHECK-INST: xor.t %d15, %d0, 0, %d0, 0
# CHECK: encoding: [0x07,0x00,0x60,0xf0]
xor.t %d15, %d0, 0, %d0, 0

# CHECK-INST: xor.t %d15, %d0, 0, %d0, 7
# CHECK: encoding: [0x07,0x00,0xe0,0xf3]
xor.t %d15, %d0, 0, %d0, 7

# CHECK-INST: xor.t %d15, %d0, 0, %d0, 24
# CHECK: encoding: [0x07,0x00,0x60,0xfc]
xor.t %d15, %d0, 0, %d0, 24

# CHECK-INST: xor.t %d15, %d0, 0, %d0, 31
# CHECK: encoding: [0x07,0x00,0xe0,0xff]
xor.t %d15, %d0, 0, %d0, 31

# CHECK-INST: xor.t %d15, %d0, 0, %d1, 0
# CHECK: encoding: [0x07,0x10,0x60,0xf0]
xor.t %d15, %d0, 0, %d1, 0

# CHECK-INST: xor.t %d15, %d0, 0, %d1, 7
# CHECK: encoding: [0x07,0x10,0xe0,0xf3]
xor.t %d15, %d0, 0, %d1, 7

# CHECK-INST: xor.t %d15, %d0, 0, %d1, 24
# CHECK: encoding: [0x07,0x10,0x60,0xfc]
xor.t %d15, %d0, 0, %d1, 24

# CHECK-INST: xor.t %d15, %d0, 0, %d1, 31
# CHECK: encoding: [0x07,0x10,0xe0,0xff]
xor.t %d15, %d0, 0, %d1, 31

# CHECK-INST: xor.t %d15, %d0, 0, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x60,0xf0]
xor.t %d15, %d0, 0, %d14, 0

# CHECK-INST: xor.t %d15, %d0, 0, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xe0,0xf3]
xor.t %d15, %d0, 0, %d14, 7

# CHECK-INST: xor.t %d15, %d0, 0, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x60,0xfc]
xor.t %d15, %d0, 0, %d14, 24

# CHECK-INST: xor.t %d15, %d0, 0, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xe0,0xff]
xor.t %d15, %d0, 0, %d14, 31

# CHECK-INST: xor.t %d15, %d0, 0, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x60,0xf0]
xor.t %d15, %d0, 0, %d15, 0

# CHECK-INST: xor.t %d15, %d0, 0, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xe0,0xf3]
xor.t %d15, %d0, 0, %d15, 7

# CHECK-INST: xor.t %d15, %d0, 0, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x60,0xfc]
xor.t %d15, %d0, 0, %d15, 24

# CHECK-INST: xor.t %d15, %d0, 0, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xe0,0xff]
xor.t %d15, %d0, 0, %d15, 31

# CHECK-INST: xor.t %d15, %d0, 7, %d0, 0
# CHECK: encoding: [0x07,0x00,0x67,0xf0]
xor.t %d15, %d0, 7, %d0, 0

# CHECK-INST: xor.t %d15, %d0, 7, %d0, 7
# CHECK: encoding: [0x07,0x00,0xe7,0xf3]
xor.t %d15, %d0, 7, %d0, 7

# CHECK-INST: xor.t %d15, %d0, 7, %d0, 24
# CHECK: encoding: [0x07,0x00,0x67,0xfc]
xor.t %d15, %d0, 7, %d0, 24

# CHECK-INST: xor.t %d15, %d0, 7, %d0, 31
# CHECK: encoding: [0x07,0x00,0xe7,0xff]
xor.t %d15, %d0, 7, %d0, 31

# CHECK-INST: xor.t %d15, %d0, 7, %d1, 0
# CHECK: encoding: [0x07,0x10,0x67,0xf0]
xor.t %d15, %d0, 7, %d1, 0

# CHECK-INST: xor.t %d15, %d0, 7, %d1, 7
# CHECK: encoding: [0x07,0x10,0xe7,0xf3]
xor.t %d15, %d0, 7, %d1, 7

# CHECK-INST: xor.t %d15, %d0, 7, %d1, 24
# CHECK: encoding: [0x07,0x10,0x67,0xfc]
xor.t %d15, %d0, 7, %d1, 24

# CHECK-INST: xor.t %d15, %d0, 7, %d1, 31
# CHECK: encoding: [0x07,0x10,0xe7,0xff]
xor.t %d15, %d0, 7, %d1, 31

# CHECK-INST: xor.t %d15, %d0, 7, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x67,0xf0]
xor.t %d15, %d0, 7, %d14, 0

# CHECK-INST: xor.t %d15, %d0, 7, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xe7,0xf3]
xor.t %d15, %d0, 7, %d14, 7

# CHECK-INST: xor.t %d15, %d0, 7, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x67,0xfc]
xor.t %d15, %d0, 7, %d14, 24

# CHECK-INST: xor.t %d15, %d0, 7, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xe7,0xff]
xor.t %d15, %d0, 7, %d14, 31

# CHECK-INST: xor.t %d15, %d0, 7, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x67,0xf0]
xor.t %d15, %d0, 7, %d15, 0

# CHECK-INST: xor.t %d15, %d0, 7, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xe7,0xf3]
xor.t %d15, %d0, 7, %d15, 7

# CHECK-INST: xor.t %d15, %d0, 7, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x67,0xfc]
xor.t %d15, %d0, 7, %d15, 24

# CHECK-INST: xor.t %d15, %d0, 7, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xe7,0xff]
xor.t %d15, %d0, 7, %d15, 31

# CHECK-INST: xor.t %d15, %d0, 24, %d0, 0
# CHECK: encoding: [0x07,0x00,0x78,0xf0]
xor.t %d15, %d0, 24, %d0, 0

# CHECK-INST: xor.t %d15, %d0, 24, %d0, 7
# CHECK: encoding: [0x07,0x00,0xf8,0xf3]
xor.t %d15, %d0, 24, %d0, 7

# CHECK-INST: xor.t %d15, %d0, 24, %d0, 24
# CHECK: encoding: [0x07,0x00,0x78,0xfc]
xor.t %d15, %d0, 24, %d0, 24

# CHECK-INST: xor.t %d15, %d0, 24, %d0, 31
# CHECK: encoding: [0x07,0x00,0xf8,0xff]
xor.t %d15, %d0, 24, %d0, 31

# CHECK-INST: xor.t %d15, %d0, 24, %d1, 0
# CHECK: encoding: [0x07,0x10,0x78,0xf0]
xor.t %d15, %d0, 24, %d1, 0

# CHECK-INST: xor.t %d15, %d0, 24, %d1, 7
# CHECK: encoding: [0x07,0x10,0xf8,0xf3]
xor.t %d15, %d0, 24, %d1, 7

# CHECK-INST: xor.t %d15, %d0, 24, %d1, 24
# CHECK: encoding: [0x07,0x10,0x78,0xfc]
xor.t %d15, %d0, 24, %d1, 24

# CHECK-INST: xor.t %d15, %d0, 24, %d1, 31
# CHECK: encoding: [0x07,0x10,0xf8,0xff]
xor.t %d15, %d0, 24, %d1, 31

# CHECK-INST: xor.t %d15, %d0, 24, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x78,0xf0]
xor.t %d15, %d0, 24, %d14, 0

# CHECK-INST: xor.t %d15, %d0, 24, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xf8,0xf3]
xor.t %d15, %d0, 24, %d14, 7

# CHECK-INST: xor.t %d15, %d0, 24, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x78,0xfc]
xor.t %d15, %d0, 24, %d14, 24

# CHECK-INST: xor.t %d15, %d0, 24, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xf8,0xff]
xor.t %d15, %d0, 24, %d14, 31

# CHECK-INST: xor.t %d15, %d0, 24, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x78,0xf0]
xor.t %d15, %d0, 24, %d15, 0

# CHECK-INST: xor.t %d15, %d0, 24, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xf8,0xf3]
xor.t %d15, %d0, 24, %d15, 7

# CHECK-INST: xor.t %d15, %d0, 24, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x78,0xfc]
xor.t %d15, %d0, 24, %d15, 24

# CHECK-INST: xor.t %d15, %d0, 24, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xf8,0xff]
xor.t %d15, %d0, 24, %d15, 31

# CHECK-INST: xor.t %d15, %d0, 31, %d0, 0
# CHECK: encoding: [0x07,0x00,0x7f,0xf0]
xor.t %d15, %d0, 31, %d0, 0

# CHECK-INST: xor.t %d15, %d0, 31, %d0, 7
# CHECK: encoding: [0x07,0x00,0xff,0xf3]
xor.t %d15, %d0, 31, %d0, 7

# CHECK-INST: xor.t %d15, %d0, 31, %d0, 24
# CHECK: encoding: [0x07,0x00,0x7f,0xfc]
xor.t %d15, %d0, 31, %d0, 24

# CHECK-INST: xor.t %d15, %d0, 31, %d0, 31
# CHECK: encoding: [0x07,0x00,0xff,0xff]
xor.t %d15, %d0, 31, %d0, 31

# CHECK-INST: xor.t %d15, %d0, 31, %d1, 0
# CHECK: encoding: [0x07,0x10,0x7f,0xf0]
xor.t %d15, %d0, 31, %d1, 0

# CHECK-INST: xor.t %d15, %d0, 31, %d1, 7
# CHECK: encoding: [0x07,0x10,0xff,0xf3]
xor.t %d15, %d0, 31, %d1, 7

# CHECK-INST: xor.t %d15, %d0, 31, %d1, 24
# CHECK: encoding: [0x07,0x10,0x7f,0xfc]
xor.t %d15, %d0, 31, %d1, 24

# CHECK-INST: xor.t %d15, %d0, 31, %d1, 31
# CHECK: encoding: [0x07,0x10,0xff,0xff]
xor.t %d15, %d0, 31, %d1, 31

# CHECK-INST: xor.t %d15, %d0, 31, %d14, 0
# CHECK: encoding: [0x07,0xe0,0x7f,0xf0]
xor.t %d15, %d0, 31, %d14, 0

# CHECK-INST: xor.t %d15, %d0, 31, %d14, 7
# CHECK: encoding: [0x07,0xe0,0xff,0xf3]
xor.t %d15, %d0, 31, %d14, 7

# CHECK-INST: xor.t %d15, %d0, 31, %d14, 24
# CHECK: encoding: [0x07,0xe0,0x7f,0xfc]
xor.t %d15, %d0, 31, %d14, 24

# CHECK-INST: xor.t %d15, %d0, 31, %d14, 31
# CHECK: encoding: [0x07,0xe0,0xff,0xff]
xor.t %d15, %d0, 31, %d14, 31

# CHECK-INST: xor.t %d15, %d0, 31, %d15, 0
# CHECK: encoding: [0x07,0xf0,0x7f,0xf0]
xor.t %d15, %d0, 31, %d15, 0

# CHECK-INST: xor.t %d15, %d0, 31, %d15, 7
# CHECK: encoding: [0x07,0xf0,0xff,0xf3]
xor.t %d15, %d0, 31, %d15, 7

# CHECK-INST: xor.t %d15, %d0, 31, %d15, 24
# CHECK: encoding: [0x07,0xf0,0x7f,0xfc]
xor.t %d15, %d0, 31, %d15, 24

# CHECK-INST: xor.t %d15, %d0, 31, %d15, 31
# CHECK: encoding: [0x07,0xf0,0xff,0xff]
xor.t %d15, %d0, 31, %d15, 31

# CHECK-INST: xor.t %d15, %d1, 0, %d0, 0
# CHECK: encoding: [0x07,0x01,0x60,0xf0]
xor.t %d15, %d1, 0, %d0, 0

# CHECK-INST: xor.t %d15, %d1, 0, %d0, 7
# CHECK: encoding: [0x07,0x01,0xe0,0xf3]
xor.t %d15, %d1, 0, %d0, 7

# CHECK-INST: xor.t %d15, %d1, 0, %d0, 24
# CHECK: encoding: [0x07,0x01,0x60,0xfc]
xor.t %d15, %d1, 0, %d0, 24

# CHECK-INST: xor.t %d15, %d1, 0, %d0, 31
# CHECK: encoding: [0x07,0x01,0xe0,0xff]
xor.t %d15, %d1, 0, %d0, 31

# CHECK-INST: xor.t %d15, %d1, 0, %d1, 0
# CHECK: encoding: [0x07,0x11,0x60,0xf0]
xor.t %d15, %d1, 0, %d1, 0

# CHECK-INST: xor.t %d15, %d1, 0, %d1, 7
# CHECK: encoding: [0x07,0x11,0xe0,0xf3]
xor.t %d15, %d1, 0, %d1, 7

# CHECK-INST: xor.t %d15, %d1, 0, %d1, 24
# CHECK: encoding: [0x07,0x11,0x60,0xfc]
xor.t %d15, %d1, 0, %d1, 24

# CHECK-INST: xor.t %d15, %d1, 0, %d1, 31
# CHECK: encoding: [0x07,0x11,0xe0,0xff]
xor.t %d15, %d1, 0, %d1, 31

# CHECK-INST: xor.t %d15, %d1, 0, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x60,0xf0]
xor.t %d15, %d1, 0, %d14, 0

# CHECK-INST: xor.t %d15, %d1, 0, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xe0,0xf3]
xor.t %d15, %d1, 0, %d14, 7

# CHECK-INST: xor.t %d15, %d1, 0, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x60,0xfc]
xor.t %d15, %d1, 0, %d14, 24

# CHECK-INST: xor.t %d15, %d1, 0, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xe0,0xff]
xor.t %d15, %d1, 0, %d14, 31

# CHECK-INST: xor.t %d15, %d1, 0, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x60,0xf0]
xor.t %d15, %d1, 0, %d15, 0

# CHECK-INST: xor.t %d15, %d1, 0, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xe0,0xf3]
xor.t %d15, %d1, 0, %d15, 7

# CHECK-INST: xor.t %d15, %d1, 0, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x60,0xfc]
xor.t %d15, %d1, 0, %d15, 24

# CHECK-INST: xor.t %d15, %d1, 0, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xe0,0xff]
xor.t %d15, %d1, 0, %d15, 31

# CHECK-INST: xor.t %d15, %d1, 7, %d0, 0
# CHECK: encoding: [0x07,0x01,0x67,0xf0]
xor.t %d15, %d1, 7, %d0, 0

# CHECK-INST: xor.t %d15, %d1, 7, %d0, 7
# CHECK: encoding: [0x07,0x01,0xe7,0xf3]
xor.t %d15, %d1, 7, %d0, 7

# CHECK-INST: xor.t %d15, %d1, 7, %d0, 24
# CHECK: encoding: [0x07,0x01,0x67,0xfc]
xor.t %d15, %d1, 7, %d0, 24

# CHECK-INST: xor.t %d15, %d1, 7, %d0, 31
# CHECK: encoding: [0x07,0x01,0xe7,0xff]
xor.t %d15, %d1, 7, %d0, 31

# CHECK-INST: xor.t %d15, %d1, 7, %d1, 0
# CHECK: encoding: [0x07,0x11,0x67,0xf0]
xor.t %d15, %d1, 7, %d1, 0

# CHECK-INST: xor.t %d15, %d1, 7, %d1, 7
# CHECK: encoding: [0x07,0x11,0xe7,0xf3]
xor.t %d15, %d1, 7, %d1, 7

# CHECK-INST: xor.t %d15, %d1, 7, %d1, 24
# CHECK: encoding: [0x07,0x11,0x67,0xfc]
xor.t %d15, %d1, 7, %d1, 24

# CHECK-INST: xor.t %d15, %d1, 7, %d1, 31
# CHECK: encoding: [0x07,0x11,0xe7,0xff]
xor.t %d15, %d1, 7, %d1, 31

# CHECK-INST: xor.t %d15, %d1, 7, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x67,0xf0]
xor.t %d15, %d1, 7, %d14, 0

# CHECK-INST: xor.t %d15, %d1, 7, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xe7,0xf3]
xor.t %d15, %d1, 7, %d14, 7

# CHECK-INST: xor.t %d15, %d1, 7, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x67,0xfc]
xor.t %d15, %d1, 7, %d14, 24

# CHECK-INST: xor.t %d15, %d1, 7, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xe7,0xff]
xor.t %d15, %d1, 7, %d14, 31

# CHECK-INST: xor.t %d15, %d1, 7, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x67,0xf0]
xor.t %d15, %d1, 7, %d15, 0

# CHECK-INST: xor.t %d15, %d1, 7, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xe7,0xf3]
xor.t %d15, %d1, 7, %d15, 7

# CHECK-INST: xor.t %d15, %d1, 7, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x67,0xfc]
xor.t %d15, %d1, 7, %d15, 24

# CHECK-INST: xor.t %d15, %d1, 7, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xe7,0xff]
xor.t %d15, %d1, 7, %d15, 31

# CHECK-INST: xor.t %d15, %d1, 24, %d0, 0
# CHECK: encoding: [0x07,0x01,0x78,0xf0]
xor.t %d15, %d1, 24, %d0, 0

# CHECK-INST: xor.t %d15, %d1, 24, %d0, 7
# CHECK: encoding: [0x07,0x01,0xf8,0xf3]
xor.t %d15, %d1, 24, %d0, 7

# CHECK-INST: xor.t %d15, %d1, 24, %d0, 24
# CHECK: encoding: [0x07,0x01,0x78,0xfc]
xor.t %d15, %d1, 24, %d0, 24

# CHECK-INST: xor.t %d15, %d1, 24, %d0, 31
# CHECK: encoding: [0x07,0x01,0xf8,0xff]
xor.t %d15, %d1, 24, %d0, 31

# CHECK-INST: xor.t %d15, %d1, 24, %d1, 0
# CHECK: encoding: [0x07,0x11,0x78,0xf0]
xor.t %d15, %d1, 24, %d1, 0

# CHECK-INST: xor.t %d15, %d1, 24, %d1, 7
# CHECK: encoding: [0x07,0x11,0xf8,0xf3]
xor.t %d15, %d1, 24, %d1, 7

# CHECK-INST: xor.t %d15, %d1, 24, %d1, 24
# CHECK: encoding: [0x07,0x11,0x78,0xfc]
xor.t %d15, %d1, 24, %d1, 24

# CHECK-INST: xor.t %d15, %d1, 24, %d1, 31
# CHECK: encoding: [0x07,0x11,0xf8,0xff]
xor.t %d15, %d1, 24, %d1, 31

# CHECK-INST: xor.t %d15, %d1, 24, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x78,0xf0]
xor.t %d15, %d1, 24, %d14, 0

# CHECK-INST: xor.t %d15, %d1, 24, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xf8,0xf3]
xor.t %d15, %d1, 24, %d14, 7

# CHECK-INST: xor.t %d15, %d1, 24, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x78,0xfc]
xor.t %d15, %d1, 24, %d14, 24

# CHECK-INST: xor.t %d15, %d1, 24, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xf8,0xff]
xor.t %d15, %d1, 24, %d14, 31

# CHECK-INST: xor.t %d15, %d1, 24, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x78,0xf0]
xor.t %d15, %d1, 24, %d15, 0

# CHECK-INST: xor.t %d15, %d1, 24, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xf8,0xf3]
xor.t %d15, %d1, 24, %d15, 7

# CHECK-INST: xor.t %d15, %d1, 24, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x78,0xfc]
xor.t %d15, %d1, 24, %d15, 24

# CHECK-INST: xor.t %d15, %d1, 24, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xf8,0xff]
xor.t %d15, %d1, 24, %d15, 31

# CHECK-INST: xor.t %d15, %d1, 31, %d0, 0
# CHECK: encoding: [0x07,0x01,0x7f,0xf0]
xor.t %d15, %d1, 31, %d0, 0

# CHECK-INST: xor.t %d15, %d1, 31, %d0, 7
# CHECK: encoding: [0x07,0x01,0xff,0xf3]
xor.t %d15, %d1, 31, %d0, 7

# CHECK-INST: xor.t %d15, %d1, 31, %d0, 24
# CHECK: encoding: [0x07,0x01,0x7f,0xfc]
xor.t %d15, %d1, 31, %d0, 24

# CHECK-INST: xor.t %d15, %d1, 31, %d0, 31
# CHECK: encoding: [0x07,0x01,0xff,0xff]
xor.t %d15, %d1, 31, %d0, 31

# CHECK-INST: xor.t %d15, %d1, 31, %d1, 0
# CHECK: encoding: [0x07,0x11,0x7f,0xf0]
xor.t %d15, %d1, 31, %d1, 0

# CHECK-INST: xor.t %d15, %d1, 31, %d1, 7
# CHECK: encoding: [0x07,0x11,0xff,0xf3]
xor.t %d15, %d1, 31, %d1, 7

# CHECK-INST: xor.t %d15, %d1, 31, %d1, 24
# CHECK: encoding: [0x07,0x11,0x7f,0xfc]
xor.t %d15, %d1, 31, %d1, 24

# CHECK-INST: xor.t %d15, %d1, 31, %d1, 31
# CHECK: encoding: [0x07,0x11,0xff,0xff]
xor.t %d15, %d1, 31, %d1, 31

# CHECK-INST: xor.t %d15, %d1, 31, %d14, 0
# CHECK: encoding: [0x07,0xe1,0x7f,0xf0]
xor.t %d15, %d1, 31, %d14, 0

# CHECK-INST: xor.t %d15, %d1, 31, %d14, 7
# CHECK: encoding: [0x07,0xe1,0xff,0xf3]
xor.t %d15, %d1, 31, %d14, 7

# CHECK-INST: xor.t %d15, %d1, 31, %d14, 24
# CHECK: encoding: [0x07,0xe1,0x7f,0xfc]
xor.t %d15, %d1, 31, %d14, 24

# CHECK-INST: xor.t %d15, %d1, 31, %d14, 31
# CHECK: encoding: [0x07,0xe1,0xff,0xff]
xor.t %d15, %d1, 31, %d14, 31

# CHECK-INST: xor.t %d15, %d1, 31, %d15, 0
# CHECK: encoding: [0x07,0xf1,0x7f,0xf0]
xor.t %d15, %d1, 31, %d15, 0

# CHECK-INST: xor.t %d15, %d1, 31, %d15, 7
# CHECK: encoding: [0x07,0xf1,0xff,0xf3]
xor.t %d15, %d1, 31, %d15, 7

# CHECK-INST: xor.t %d15, %d1, 31, %d15, 24
# CHECK: encoding: [0x07,0xf1,0x7f,0xfc]
xor.t %d15, %d1, 31, %d15, 24

# CHECK-INST: xor.t %d15, %d1, 31, %d15, 31
# CHECK: encoding: [0x07,0xf1,0xff,0xff]
xor.t %d15, %d1, 31, %d15, 31

# CHECK-INST: xor.t %d15, %d14, 0, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x60,0xf0]
xor.t %d15, %d14, 0, %d0, 0

# CHECK-INST: xor.t %d15, %d14, 0, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xe0,0xf3]
xor.t %d15, %d14, 0, %d0, 7

# CHECK-INST: xor.t %d15, %d14, 0, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x60,0xfc]
xor.t %d15, %d14, 0, %d0, 24

# CHECK-INST: xor.t %d15, %d14, 0, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xe0,0xff]
xor.t %d15, %d14, 0, %d0, 31

# CHECK-INST: xor.t %d15, %d14, 0, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x60,0xf0]
xor.t %d15, %d14, 0, %d1, 0

# CHECK-INST: xor.t %d15, %d14, 0, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xe0,0xf3]
xor.t %d15, %d14, 0, %d1, 7

# CHECK-INST: xor.t %d15, %d14, 0, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x60,0xfc]
xor.t %d15, %d14, 0, %d1, 24

# CHECK-INST: xor.t %d15, %d14, 0, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xe0,0xff]
xor.t %d15, %d14, 0, %d1, 31

# CHECK-INST: xor.t %d15, %d14, 0, %d14, 0
# CHECK: encoding: [0x07,0xee,0x60,0xf0]
xor.t %d15, %d14, 0, %d14, 0

# CHECK-INST: xor.t %d15, %d14, 0, %d14, 7
# CHECK: encoding: [0x07,0xee,0xe0,0xf3]
xor.t %d15, %d14, 0, %d14, 7

# CHECK-INST: xor.t %d15, %d14, 0, %d14, 24
# CHECK: encoding: [0x07,0xee,0x60,0xfc]
xor.t %d15, %d14, 0, %d14, 24

# CHECK-INST: xor.t %d15, %d14, 0, %d14, 31
# CHECK: encoding: [0x07,0xee,0xe0,0xff]
xor.t %d15, %d14, 0, %d14, 31

# CHECK-INST: xor.t %d15, %d14, 0, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x60,0xf0]
xor.t %d15, %d14, 0, %d15, 0

# CHECK-INST: xor.t %d15, %d14, 0, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xe0,0xf3]
xor.t %d15, %d14, 0, %d15, 7

# CHECK-INST: xor.t %d15, %d14, 0, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x60,0xfc]
xor.t %d15, %d14, 0, %d15, 24

# CHECK-INST: xor.t %d15, %d14, 0, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xe0,0xff]
xor.t %d15, %d14, 0, %d15, 31

# CHECK-INST: xor.t %d15, %d14, 7, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x67,0xf0]
xor.t %d15, %d14, 7, %d0, 0

# CHECK-INST: xor.t %d15, %d14, 7, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xe7,0xf3]
xor.t %d15, %d14, 7, %d0, 7

# CHECK-INST: xor.t %d15, %d14, 7, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x67,0xfc]
xor.t %d15, %d14, 7, %d0, 24

# CHECK-INST: xor.t %d15, %d14, 7, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xe7,0xff]
xor.t %d15, %d14, 7, %d0, 31

# CHECK-INST: xor.t %d15, %d14, 7, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x67,0xf0]
xor.t %d15, %d14, 7, %d1, 0

# CHECK-INST: xor.t %d15, %d14, 7, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xe7,0xf3]
xor.t %d15, %d14, 7, %d1, 7

# CHECK-INST: xor.t %d15, %d14, 7, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x67,0xfc]
xor.t %d15, %d14, 7, %d1, 24

# CHECK-INST: xor.t %d15, %d14, 7, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xe7,0xff]
xor.t %d15, %d14, 7, %d1, 31

# CHECK-INST: xor.t %d15, %d14, 7, %d14, 0
# CHECK: encoding: [0x07,0xee,0x67,0xf0]
xor.t %d15, %d14, 7, %d14, 0

# CHECK-INST: xor.t %d15, %d14, 7, %d14, 7
# CHECK: encoding: [0x07,0xee,0xe7,0xf3]
xor.t %d15, %d14, 7, %d14, 7

# CHECK-INST: xor.t %d15, %d14, 7, %d14, 24
# CHECK: encoding: [0x07,0xee,0x67,0xfc]
xor.t %d15, %d14, 7, %d14, 24

# CHECK-INST: xor.t %d15, %d14, 7, %d14, 31
# CHECK: encoding: [0x07,0xee,0xe7,0xff]
xor.t %d15, %d14, 7, %d14, 31

# CHECK-INST: xor.t %d15, %d14, 7, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x67,0xf0]
xor.t %d15, %d14, 7, %d15, 0

# CHECK-INST: xor.t %d15, %d14, 7, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xe7,0xf3]
xor.t %d15, %d14, 7, %d15, 7

# CHECK-INST: xor.t %d15, %d14, 7, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x67,0xfc]
xor.t %d15, %d14, 7, %d15, 24

# CHECK-INST: xor.t %d15, %d14, 7, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xe7,0xff]
xor.t %d15, %d14, 7, %d15, 31

# CHECK-INST: xor.t %d15, %d14, 24, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x78,0xf0]
xor.t %d15, %d14, 24, %d0, 0

# CHECK-INST: xor.t %d15, %d14, 24, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xf8,0xf3]
xor.t %d15, %d14, 24, %d0, 7

# CHECK-INST: xor.t %d15, %d14, 24, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x78,0xfc]
xor.t %d15, %d14, 24, %d0, 24

# CHECK-INST: xor.t %d15, %d14, 24, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xf8,0xff]
xor.t %d15, %d14, 24, %d0, 31

# CHECK-INST: xor.t %d15, %d14, 24, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x78,0xf0]
xor.t %d15, %d14, 24, %d1, 0

# CHECK-INST: xor.t %d15, %d14, 24, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xf8,0xf3]
xor.t %d15, %d14, 24, %d1, 7

# CHECK-INST: xor.t %d15, %d14, 24, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x78,0xfc]
xor.t %d15, %d14, 24, %d1, 24

# CHECK-INST: xor.t %d15, %d14, 24, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xf8,0xff]
xor.t %d15, %d14, 24, %d1, 31

# CHECK-INST: xor.t %d15, %d14, 24, %d14, 0
# CHECK: encoding: [0x07,0xee,0x78,0xf0]
xor.t %d15, %d14, 24, %d14, 0

# CHECK-INST: xor.t %d15, %d14, 24, %d14, 7
# CHECK: encoding: [0x07,0xee,0xf8,0xf3]
xor.t %d15, %d14, 24, %d14, 7

# CHECK-INST: xor.t %d15, %d14, 24, %d14, 24
# CHECK: encoding: [0x07,0xee,0x78,0xfc]
xor.t %d15, %d14, 24, %d14, 24

# CHECK-INST: xor.t %d15, %d14, 24, %d14, 31
# CHECK: encoding: [0x07,0xee,0xf8,0xff]
xor.t %d15, %d14, 24, %d14, 31

# CHECK-INST: xor.t %d15, %d14, 24, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x78,0xf0]
xor.t %d15, %d14, 24, %d15, 0

# CHECK-INST: xor.t %d15, %d14, 24, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xf8,0xf3]
xor.t %d15, %d14, 24, %d15, 7

# CHECK-INST: xor.t %d15, %d14, 24, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x78,0xfc]
xor.t %d15, %d14, 24, %d15, 24

# CHECK-INST: xor.t %d15, %d14, 24, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xf8,0xff]
xor.t %d15, %d14, 24, %d15, 31

# CHECK-INST: xor.t %d15, %d14, 31, %d0, 0
# CHECK: encoding: [0x07,0x0e,0x7f,0xf0]
xor.t %d15, %d14, 31, %d0, 0

# CHECK-INST: xor.t %d15, %d14, 31, %d0, 7
# CHECK: encoding: [0x07,0x0e,0xff,0xf3]
xor.t %d15, %d14, 31, %d0, 7

# CHECK-INST: xor.t %d15, %d14, 31, %d0, 24
# CHECK: encoding: [0x07,0x0e,0x7f,0xfc]
xor.t %d15, %d14, 31, %d0, 24

# CHECK-INST: xor.t %d15, %d14, 31, %d0, 31
# CHECK: encoding: [0x07,0x0e,0xff,0xff]
xor.t %d15, %d14, 31, %d0, 31

# CHECK-INST: xor.t %d15, %d14, 31, %d1, 0
# CHECK: encoding: [0x07,0x1e,0x7f,0xf0]
xor.t %d15, %d14, 31, %d1, 0

# CHECK-INST: xor.t %d15, %d14, 31, %d1, 7
# CHECK: encoding: [0x07,0x1e,0xff,0xf3]
xor.t %d15, %d14, 31, %d1, 7

# CHECK-INST: xor.t %d15, %d14, 31, %d1, 24
# CHECK: encoding: [0x07,0x1e,0x7f,0xfc]
xor.t %d15, %d14, 31, %d1, 24

# CHECK-INST: xor.t %d15, %d14, 31, %d1, 31
# CHECK: encoding: [0x07,0x1e,0xff,0xff]
xor.t %d15, %d14, 31, %d1, 31

# CHECK-INST: xor.t %d15, %d14, 31, %d14, 0
# CHECK: encoding: [0x07,0xee,0x7f,0xf0]
xor.t %d15, %d14, 31, %d14, 0

# CHECK-INST: xor.t %d15, %d14, 31, %d14, 7
# CHECK: encoding: [0x07,0xee,0xff,0xf3]
xor.t %d15, %d14, 31, %d14, 7

# CHECK-INST: xor.t %d15, %d14, 31, %d14, 24
# CHECK: encoding: [0x07,0xee,0x7f,0xfc]
xor.t %d15, %d14, 31, %d14, 24

# CHECK-INST: xor.t %d15, %d14, 31, %d14, 31
# CHECK: encoding: [0x07,0xee,0xff,0xff]
xor.t %d15, %d14, 31, %d14, 31

# CHECK-INST: xor.t %d15, %d14, 31, %d15, 0
# CHECK: encoding: [0x07,0xfe,0x7f,0xf0]
xor.t %d15, %d14, 31, %d15, 0

# CHECK-INST: xor.t %d15, %d14, 31, %d15, 7
# CHECK: encoding: [0x07,0xfe,0xff,0xf3]
xor.t %d15, %d14, 31, %d15, 7

# CHECK-INST: xor.t %d15, %d14, 31, %d15, 24
# CHECK: encoding: [0x07,0xfe,0x7f,0xfc]
xor.t %d15, %d14, 31, %d15, 24

# CHECK-INST: xor.t %d15, %d14, 31, %d15, 31
# CHECK: encoding: [0x07,0xfe,0xff,0xff]
xor.t %d15, %d14, 31, %d15, 31

# CHECK-INST: xor.t %d15, %d15, 0, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x60,0xf0]
xor.t %d15, %d15, 0, %d0, 0

# CHECK-INST: xor.t %d15, %d15, 0, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xe0,0xf3]
xor.t %d15, %d15, 0, %d0, 7

# CHECK-INST: xor.t %d15, %d15, 0, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x60,0xfc]
xor.t %d15, %d15, 0, %d0, 24

# CHECK-INST: xor.t %d15, %d15, 0, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xe0,0xff]
xor.t %d15, %d15, 0, %d0, 31

# CHECK-INST: xor.t %d15, %d15, 0, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x60,0xf0]
xor.t %d15, %d15, 0, %d1, 0

# CHECK-INST: xor.t %d15, %d15, 0, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xe0,0xf3]
xor.t %d15, %d15, 0, %d1, 7

# CHECK-INST: xor.t %d15, %d15, 0, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x60,0xfc]
xor.t %d15, %d15, 0, %d1, 24

# CHECK-INST: xor.t %d15, %d15, 0, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xe0,0xff]
xor.t %d15, %d15, 0, %d1, 31

# CHECK-INST: xor.t %d15, %d15, 0, %d14, 0
# CHECK: encoding: [0x07,0xef,0x60,0xf0]
xor.t %d15, %d15, 0, %d14, 0

# CHECK-INST: xor.t %d15, %d15, 0, %d14, 7
# CHECK: encoding: [0x07,0xef,0xe0,0xf3]
xor.t %d15, %d15, 0, %d14, 7

# CHECK-INST: xor.t %d15, %d15, 0, %d14, 24
# CHECK: encoding: [0x07,0xef,0x60,0xfc]
xor.t %d15, %d15, 0, %d14, 24

# CHECK-INST: xor.t %d15, %d15, 0, %d14, 31
# CHECK: encoding: [0x07,0xef,0xe0,0xff]
xor.t %d15, %d15, 0, %d14, 31

# CHECK-INST: xor.t %d15, %d15, 0, %d15, 0
# CHECK: encoding: [0x07,0xff,0x60,0xf0]
xor.t %d15, %d15, 0, %d15, 0

# CHECK-INST: xor.t %d15, %d15, 0, %d15, 7
# CHECK: encoding: [0x07,0xff,0xe0,0xf3]
xor.t %d15, %d15, 0, %d15, 7

# CHECK-INST: xor.t %d15, %d15, 0, %d15, 24
# CHECK: encoding: [0x07,0xff,0x60,0xfc]
xor.t %d15, %d15, 0, %d15, 24

# CHECK-INST: xor.t %d15, %d15, 0, %d15, 31
# CHECK: encoding: [0x07,0xff,0xe0,0xff]
xor.t %d15, %d15, 0, %d15, 31

# CHECK-INST: xor.t %d15, %d15, 7, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x67,0xf0]
xor.t %d15, %d15, 7, %d0, 0

# CHECK-INST: xor.t %d15, %d15, 7, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xe7,0xf3]
xor.t %d15, %d15, 7, %d0, 7

# CHECK-INST: xor.t %d15, %d15, 7, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x67,0xfc]
xor.t %d15, %d15, 7, %d0, 24

# CHECK-INST: xor.t %d15, %d15, 7, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xe7,0xff]
xor.t %d15, %d15, 7, %d0, 31

# CHECK-INST: xor.t %d15, %d15, 7, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x67,0xf0]
xor.t %d15, %d15, 7, %d1, 0

# CHECK-INST: xor.t %d15, %d15, 7, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xe7,0xf3]
xor.t %d15, %d15, 7, %d1, 7

# CHECK-INST: xor.t %d15, %d15, 7, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x67,0xfc]
xor.t %d15, %d15, 7, %d1, 24

# CHECK-INST: xor.t %d15, %d15, 7, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xe7,0xff]
xor.t %d15, %d15, 7, %d1, 31

# CHECK-INST: xor.t %d15, %d15, 7, %d14, 0
# CHECK: encoding: [0x07,0xef,0x67,0xf0]
xor.t %d15, %d15, 7, %d14, 0

# CHECK-INST: xor.t %d15, %d15, 7, %d14, 7
# CHECK: encoding: [0x07,0xef,0xe7,0xf3]
xor.t %d15, %d15, 7, %d14, 7

# CHECK-INST: xor.t %d15, %d15, 7, %d14, 24
# CHECK: encoding: [0x07,0xef,0x67,0xfc]
xor.t %d15, %d15, 7, %d14, 24

# CHECK-INST: xor.t %d15, %d15, 7, %d14, 31
# CHECK: encoding: [0x07,0xef,0xe7,0xff]
xor.t %d15, %d15, 7, %d14, 31

# CHECK-INST: xor.t %d15, %d15, 7, %d15, 0
# CHECK: encoding: [0x07,0xff,0x67,0xf0]
xor.t %d15, %d15, 7, %d15, 0

# CHECK-INST: xor.t %d15, %d15, 7, %d15, 7
# CHECK: encoding: [0x07,0xff,0xe7,0xf3]
xor.t %d15, %d15, 7, %d15, 7

# CHECK-INST: xor.t %d15, %d15, 7, %d15, 24
# CHECK: encoding: [0x07,0xff,0x67,0xfc]
xor.t %d15, %d15, 7, %d15, 24

# CHECK-INST: xor.t %d15, %d15, 7, %d15, 31
# CHECK: encoding: [0x07,0xff,0xe7,0xff]
xor.t %d15, %d15, 7, %d15, 31

# CHECK-INST: xor.t %d15, %d15, 24, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x78,0xf0]
xor.t %d15, %d15, 24, %d0, 0

# CHECK-INST: xor.t %d15, %d15, 24, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xf8,0xf3]
xor.t %d15, %d15, 24, %d0, 7

# CHECK-INST: xor.t %d15, %d15, 24, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x78,0xfc]
xor.t %d15, %d15, 24, %d0, 24

# CHECK-INST: xor.t %d15, %d15, 24, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xf8,0xff]
xor.t %d15, %d15, 24, %d0, 31

# CHECK-INST: xor.t %d15, %d15, 24, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x78,0xf0]
xor.t %d15, %d15, 24, %d1, 0

# CHECK-INST: xor.t %d15, %d15, 24, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xf8,0xf3]
xor.t %d15, %d15, 24, %d1, 7

# CHECK-INST: xor.t %d15, %d15, 24, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x78,0xfc]
xor.t %d15, %d15, 24, %d1, 24

# CHECK-INST: xor.t %d15, %d15, 24, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xf8,0xff]
xor.t %d15, %d15, 24, %d1, 31

# CHECK-INST: xor.t %d15, %d15, 24, %d14, 0
# CHECK: encoding: [0x07,0xef,0x78,0xf0]
xor.t %d15, %d15, 24, %d14, 0

# CHECK-INST: xor.t %d15, %d15, 24, %d14, 7
# CHECK: encoding: [0x07,0xef,0xf8,0xf3]
xor.t %d15, %d15, 24, %d14, 7

# CHECK-INST: xor.t %d15, %d15, 24, %d14, 24
# CHECK: encoding: [0x07,0xef,0x78,0xfc]
xor.t %d15, %d15, 24, %d14, 24

# CHECK-INST: xor.t %d15, %d15, 24, %d14, 31
# CHECK: encoding: [0x07,0xef,0xf8,0xff]
xor.t %d15, %d15, 24, %d14, 31

# CHECK-INST: xor.t %d15, %d15, 24, %d15, 0
# CHECK: encoding: [0x07,0xff,0x78,0xf0]
xor.t %d15, %d15, 24, %d15, 0

# CHECK-INST: xor.t %d15, %d15, 24, %d15, 7
# CHECK: encoding: [0x07,0xff,0xf8,0xf3]
xor.t %d15, %d15, 24, %d15, 7

# CHECK-INST: xor.t %d15, %d15, 24, %d15, 24
# CHECK: encoding: [0x07,0xff,0x78,0xfc]
xor.t %d15, %d15, 24, %d15, 24

# CHECK-INST: xor.t %d15, %d15, 24, %d15, 31
# CHECK: encoding: [0x07,0xff,0xf8,0xff]
xor.t %d15, %d15, 24, %d15, 31

# CHECK-INST: xor.t %d15, %d15, 31, %d0, 0
# CHECK: encoding: [0x07,0x0f,0x7f,0xf0]
xor.t %d15, %d15, 31, %d0, 0

# CHECK-INST: xor.t %d15, %d15, 31, %d0, 7
# CHECK: encoding: [0x07,0x0f,0xff,0xf3]
xor.t %d15, %d15, 31, %d0, 7

# CHECK-INST: xor.t %d15, %d15, 31, %d0, 24
# CHECK: encoding: [0x07,0x0f,0x7f,0xfc]
xor.t %d15, %d15, 31, %d0, 24

# CHECK-INST: xor.t %d15, %d15, 31, %d0, 31
# CHECK: encoding: [0x07,0x0f,0xff,0xff]
xor.t %d15, %d15, 31, %d0, 31

# CHECK-INST: xor.t %d15, %d15, 31, %d1, 0
# CHECK: encoding: [0x07,0x1f,0x7f,0xf0]
xor.t %d15, %d15, 31, %d1, 0

# CHECK-INST: xor.t %d15, %d15, 31, %d1, 7
# CHECK: encoding: [0x07,0x1f,0xff,0xf3]
xor.t %d15, %d15, 31, %d1, 7

# CHECK-INST: xor.t %d15, %d15, 31, %d1, 24
# CHECK: encoding: [0x07,0x1f,0x7f,0xfc]
xor.t %d15, %d15, 31, %d1, 24

# CHECK-INST: xor.t %d15, %d15, 31, %d1, 31
# CHECK: encoding: [0x07,0x1f,0xff,0xff]
xor.t %d15, %d15, 31, %d1, 31

# CHECK-INST: xor.t %d15, %d15, 31, %d14, 0
# CHECK: encoding: [0x07,0xef,0x7f,0xf0]
xor.t %d15, %d15, 31, %d14, 0

# CHECK-INST: xor.t %d15, %d15, 31, %d14, 7
# CHECK: encoding: [0x07,0xef,0xff,0xf3]
xor.t %d15, %d15, 31, %d14, 7

# CHECK-INST: xor.t %d15, %d15, 31, %d14, 24
# CHECK: encoding: [0x07,0xef,0x7f,0xfc]
xor.t %d15, %d15, 31, %d14, 24

# CHECK-INST: xor.t %d15, %d15, 31, %d14, 31
# CHECK: encoding: [0x07,0xef,0xff,0xff]
xor.t %d15, %d15, 31, %d14, 31

# CHECK-INST: xor.t %d15, %d15, 31, %d15, 0
# CHECK: encoding: [0x07,0xff,0x7f,0xf0]
xor.t %d15, %d15, 31, %d15, 0

# CHECK-INST: xor.t %d15, %d15, 31, %d15, 7
# CHECK: encoding: [0x07,0xff,0xff,0xf3]
xor.t %d15, %d15, 31, %d15, 7

# CHECK-INST: xor.t %d15, %d15, 31, %d15, 24
# CHECK: encoding: [0x07,0xff,0x7f,0xfc]
xor.t %d15, %d15, 31, %d15, 24

# CHECK-INST: xor.t %d15, %d15, 31, %d15, 31
# CHECK: encoding: [0x07,0xff,0xff,0xff]
xor.t %d15, %d15, 31, %d15, 31
 