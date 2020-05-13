# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s

# CHECK-INST: max %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x01]
.code32
max %d0, %d0, %d0

# CHECK-INST: max %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0x01]
.code32
max %d0, %d0, %d1

# CHECK-INST: max %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0x01]
.code32
max %d0, %d0, %d14

# CHECK-INST: max %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0x01]
.code32
max %d0, %d0, %d15

# CHECK-INST: max %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0x01]
.code32
max %d0, %d1, %d0

# CHECK-INST: max %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0x01]
.code32
max %d0, %d1, %d1

# CHECK-INST: max %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0x01]
.code32
max %d0, %d1, %d14

# CHECK-INST: max %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0x01]
.code32
max %d0, %d1, %d15

# CHECK-INST: max %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0x01]
.code32
max %d0, %d14, %d0

# CHECK-INST: max %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0x01]
.code32
max %d0, %d14, %d1

# CHECK-INST: max %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0x01]
.code32
max %d0, %d14, %d14

# CHECK-INST: max %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0x01]
.code32
max %d0, %d14, %d15

# CHECK-INST: max %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0x01]
.code32
max %d0, %d15, %d0

# CHECK-INST: max %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0x01]
.code32
max %d0, %d15, %d1

# CHECK-INST: max %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0x01]
.code32
max %d0, %d15, %d14

# CHECK-INST: max %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0x01]
.code32
max %d0, %d15, %d15

# CHECK-INST: max %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x11]
.code32
max %d1, %d0, %d0

# CHECK-INST: max %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0x11]
.code32
max %d1, %d0, %d1

# CHECK-INST: max %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0x11]
.code32
max %d1, %d0, %d14

# CHECK-INST: max %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0x11]
.code32
max %d1, %d0, %d15

# CHECK-INST: max %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0x11]
.code32
max %d1, %d1, %d0

# CHECK-INST: max %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0x11]
.code32
max %d1, %d1, %d1

# CHECK-INST: max %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0x11]
.code32
max %d1, %d1, %d14

# CHECK-INST: max %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0x11]
.code32
max %d1, %d1, %d15

# CHECK-INST: max %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0x11]
.code32
max %d1, %d14, %d0

# CHECK-INST: max %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0x11]
.code32
max %d1, %d14, %d1

# CHECK-INST: max %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0x11]
.code32
max %d1, %d14, %d14

# CHECK-INST: max %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0x11]
.code32
max %d1, %d14, %d15

# CHECK-INST: max %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0x11]
.code32
max %d1, %d15, %d0

# CHECK-INST: max %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0x11]
.code32
max %d1, %d15, %d1

# CHECK-INST: max %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0x11]
.code32
max %d1, %d15, %d14

# CHECK-INST: max %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0x11]
.code32
max %d1, %d15, %d15

# CHECK-INST: max %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0xe1]
.code32
max %d14, %d0, %d0

# CHECK-INST: max %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0xe1]
.code32
max %d14, %d0, %d1

# CHECK-INST: max %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0xe1]
.code32
max %d14, %d0, %d14

# CHECK-INST: max %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0xe1]
.code32
max %d14, %d0, %d15

# CHECK-INST: max %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0xe1]
.code32
max %d14, %d1, %d0

# CHECK-INST: max %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0xe1]
.code32
max %d14, %d1, %d1

# CHECK-INST: max %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0xe1]
.code32
max %d14, %d1, %d14

# CHECK-INST: max %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0xe1]
.code32
max %d14, %d1, %d15

# CHECK-INST: max %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0xe1]
.code32
max %d14, %d14, %d0

# CHECK-INST: max %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0xe1]
.code32
max %d14, %d14, %d1

# CHECK-INST: max %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0xe1]
.code32
max %d14, %d14, %d14

# CHECK-INST: max %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0xe1]
.code32
max %d14, %d14, %d15

# CHECK-INST: max %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0xe1]
.code32
max %d14, %d15, %d0

# CHECK-INST: max %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0xe1]
.code32
max %d14, %d15, %d1

# CHECK-INST: max %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0xe1]
.code32
max %d14, %d15, %d14

# CHECK-INST: max %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0xe1]
.code32
max %d14, %d15, %d15

# CHECK-INST: max %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0xf1]
.code32
max %d15, %d0, %d0

# CHECK-INST: max %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0xf1]
.code32
max %d15, %d0, %d1

# CHECK-INST: max %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0xf1]
.code32
max %d15, %d0, %d14

# CHECK-INST: max %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0xf1]
.code32
max %d15, %d0, %d15

# CHECK-INST: max %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0xf1]
.code32
max %d15, %d1, %d0

# CHECK-INST: max %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0xf1]
.code32
max %d15, %d1, %d1

# CHECK-INST: max %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0xf1]
.code32
max %d15, %d1, %d14

# CHECK-INST: max %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0xf1]
.code32
max %d15, %d1, %d15

# CHECK-INST: max %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0xf1]
.code32
max %d15, %d14, %d0

# CHECK-INST: max %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0xf1]
.code32
max %d15, %d14, %d1

# CHECK-INST: max %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0xf1]
.code32
max %d15, %d14, %d14

# CHECK-INST: max %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0xf1]
.code32
max %d15, %d14, %d15

# CHECK-INST: max %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0xf1]
.code32
max %d15, %d15, %d0

# CHECK-INST: max %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0xf1]
.code32
max %d15, %d15, %d1

# CHECK-INST: max %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0xf1]
.code32
max %d15, %d15, %d14

# CHECK-INST: max %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0xf1]
.code32
max %d15, %d15, %d15

# CHECK-INST: max %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0x03]
.code32
max %d0, %d0, -256

# CHECK-INST: max %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0x03]
.code32
max %d0, %d0, -129

# CHECK-INST: max %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0x03]
.code32
max %d0, %d0, -1

# CHECK-INST: max %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0x03]
.code32
max %d0, %d0, 0

# CHECK-INST: max %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0x03]
.code32
max %d0, %d0, 1

# CHECK-INST: max %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0x03]
.code32
max %d0, %d0, 128

# CHECK-INST: max %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0x03]
.code32
max %d0, %d0, 255

# CHECK-INST: max %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0x03]
.code32
max %d0, %d1, -256

# CHECK-INST: max %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0x03]
.code32
max %d0, %d1, -129

# CHECK-INST: max %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0x03]
.code32
max %d0, %d1, -1

# CHECK-INST: max %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0x03]
.code32
max %d0, %d1, 0

# CHECK-INST: max %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0x03]
.code32
max %d0, %d1, 1

# CHECK-INST: max %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0x03]
.code32
max %d0, %d1, 128

# CHECK-INST: max %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0x03]
.code32
max %d0, %d1, 255

# CHECK-INST: max %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0x03]
.code32
max %d0, %d14, -256

# CHECK-INST: max %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0x03]
.code32
max %d0, %d14, -129

# CHECK-INST: max %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0x03]
.code32
max %d0, %d14, -1

# CHECK-INST: max %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0x03]
.code32
max %d0, %d14, 0

# CHECK-INST: max %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0x03]
.code32
max %d0, %d14, 1

# CHECK-INST: max %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0x03]
.code32
max %d0, %d14, 128

# CHECK-INST: max %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0x03]
.code32
max %d0, %d14, 255

# CHECK-INST: max %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0x03]
.code32
max %d0, %d15, -256

# CHECK-INST: max %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0x03]
.code32
max %d0, %d15, -129

# CHECK-INST: max %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0x03]
.code32
max %d0, %d15, -1

# CHECK-INST: max %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0x03]
.code32
max %d0, %d15, 0

# CHECK-INST: max %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0x03]
.code32
max %d0, %d15, 1

# CHECK-INST: max %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0x03]
.code32
max %d0, %d15, 128

# CHECK-INST: max %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0x03]
.code32
max %d0, %d15, 255

# CHECK-INST: max %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0x13]
.code32
max %d1, %d0, -256

# CHECK-INST: max %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0x13]
.code32
max %d1, %d0, -129

# CHECK-INST: max %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0x13]
.code32
max %d1, %d0, -1

# CHECK-INST: max %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0x13]
.code32
max %d1, %d0, 0

# CHECK-INST: max %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0x13]
.code32
max %d1, %d0, 1

# CHECK-INST: max %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0x13]
.code32
max %d1, %d0, 128

# CHECK-INST: max %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0x13]
.code32
max %d1, %d0, 255

# CHECK-INST: max %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0x13]
.code32
max %d1, %d1, -256

# CHECK-INST: max %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0x13]
.code32
max %d1, %d1, -129

# CHECK-INST: max %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0x13]
.code32
max %d1, %d1, -1

# CHECK-INST: max %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0x13]
.code32
max %d1, %d1, 0

# CHECK-INST: max %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0x13]
.code32
max %d1, %d1, 1

# CHECK-INST: max %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0x13]
.code32
max %d1, %d1, 128

# CHECK-INST: max %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0x13]
.code32
max %d1, %d1, 255

# CHECK-INST: max %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0x13]
.code32
max %d1, %d14, -256

# CHECK-INST: max %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0x13]
.code32
max %d1, %d14, -129

# CHECK-INST: max %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0x13]
.code32
max %d1, %d14, -1

# CHECK-INST: max %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0x13]
.code32
max %d1, %d14, 0

# CHECK-INST: max %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0x13]
.code32
max %d1, %d14, 1

# CHECK-INST: max %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0x13]
.code32
max %d1, %d14, 128

# CHECK-INST: max %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0x13]
.code32
max %d1, %d14, 255

# CHECK-INST: max %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0x13]
.code32
max %d1, %d15, -256

# CHECK-INST: max %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0x13]
.code32
max %d1, %d15, -129

# CHECK-INST: max %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0x13]
.code32
max %d1, %d15, -1

# CHECK-INST: max %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0x13]
.code32
max %d1, %d15, 0

# CHECK-INST: max %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0x13]
.code32
max %d1, %d15, 1

# CHECK-INST: max %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0x13]
.code32
max %d1, %d15, 128

# CHECK-INST: max %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0x13]
.code32
max %d1, %d15, 255

# CHECK-INST: max %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0xe3]
.code32
max %d14, %d0, -256

# CHECK-INST: max %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0xe3]
.code32
max %d14, %d0, -129

# CHECK-INST: max %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0xe3]
.code32
max %d14, %d0, -1

# CHECK-INST: max %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0xe3]
.code32
max %d14, %d0, 0

# CHECK-INST: max %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0xe3]
.code32
max %d14, %d0, 1

# CHECK-INST: max %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0xe3]
.code32
max %d14, %d0, 128

# CHECK-INST: max %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0xe3]
.code32
max %d14, %d0, 255

# CHECK-INST: max %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0xe3]
.code32
max %d14, %d1, -256

# CHECK-INST: max %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0xe3]
.code32
max %d14, %d1, -129

# CHECK-INST: max %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0xe3]
.code32
max %d14, %d1, -1

# CHECK-INST: max %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0xe3]
.code32
max %d14, %d1, 0

# CHECK-INST: max %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0xe3]
.code32
max %d14, %d1, 1

# CHECK-INST: max %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0xe3]
.code32
max %d14, %d1, 128

# CHECK-INST: max %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0xe3]
.code32
max %d14, %d1, 255

# CHECK-INST: max %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0xe3]
.code32
max %d14, %d14, -256

# CHECK-INST: max %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0xe3]
.code32
max %d14, %d14, -129

# CHECK-INST: max %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0xe3]
.code32
max %d14, %d14, -1

# CHECK-INST: max %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0xe3]
.code32
max %d14, %d14, 0

# CHECK-INST: max %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0xe3]
.code32
max %d14, %d14, 1

# CHECK-INST: max %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0xe3]
.code32
max %d14, %d14, 128

# CHECK-INST: max %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0xe3]
.code32
max %d14, %d14, 255

# CHECK-INST: max %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0xe3]
.code32
max %d14, %d15, -256

# CHECK-INST: max %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0xe3]
.code32
max %d14, %d15, -129

# CHECK-INST: max %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0xe3]
.code32
max %d14, %d15, -1

# CHECK-INST: max %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0xe3]
.code32
max %d14, %d15, 0

# CHECK-INST: max %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0xe3]
.code32
max %d14, %d15, 1

# CHECK-INST: max %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0xe3]
.code32
max %d14, %d15, 128

# CHECK-INST: max %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0xe3]
.code32
max %d14, %d15, 255

# CHECK-INST: max %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x50,0xf3]
.code32
max %d15, %d0, -256

# CHECK-INST: max %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x57,0xf3]
.code32
max %d15, %d0, -129

# CHECK-INST: max %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x5f,0xf3]
.code32
max %d15, %d0, -1

# CHECK-INST: max %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x40,0xf3]
.code32
max %d15, %d0, 0

# CHECK-INST: max %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x40,0xf3]
.code32
max %d15, %d0, 1

# CHECK-INST: max %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x48,0xf3]
.code32
max %d15, %d0, 128

# CHECK-INST: max %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x4f,0xf3]
.code32
max %d15, %d0, 255

# CHECK-INST: max %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x50,0xf3]
.code32
max %d15, %d1, -256

# CHECK-INST: max %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x57,0xf3]
.code32
max %d15, %d1, -129

# CHECK-INST: max %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x5f,0xf3]
.code32
max %d15, %d1, -1

# CHECK-INST: max %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x40,0xf3]
.code32
max %d15, %d1, 0

# CHECK-INST: max %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x40,0xf3]
.code32
max %d15, %d1, 1

# CHECK-INST: max %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x48,0xf3]
.code32
max %d15, %d1, 128

# CHECK-INST: max %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x4f,0xf3]
.code32
max %d15, %d1, 255

# CHECK-INST: max %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x50,0xf3]
.code32
max %d15, %d14, -256

# CHECK-INST: max %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x57,0xf3]
.code32
max %d15, %d14, -129

# CHECK-INST: max %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x5f,0xf3]
.code32
max %d15, %d14, -1

# CHECK-INST: max %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x40,0xf3]
.code32
max %d15, %d14, 0

# CHECK-INST: max %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x40,0xf3]
.code32
max %d15, %d14, 1

# CHECK-INST: max %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x48,0xf3]
.code32
max %d15, %d14, 128

# CHECK-INST: max %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x4f,0xf3]
.code32
max %d15, %d14, 255

# CHECK-INST: max %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x50,0xf3]
.code32
max %d15, %d15, -256

# CHECK-INST: max %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x57,0xf3]
.code32
max %d15, %d15, -129

# CHECK-INST: max %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x5f,0xf3]
.code32
max %d15, %d15, -1

# CHECK-INST: max %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x40,0xf3]
.code32
max %d15, %d15, 0

# CHECK-INST: max %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x40,0xf3]
.code32
max %d15, %d15, 1

# CHECK-INST: max %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x48,0xf3]
.code32
max %d15, %d15, 128

# CHECK-INST: max %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x4f,0xf3]
.code32
max %d15, %d15, 255

# CHECK-INST: max.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0x01]
.code32
max.u %d0, %d0, %d0

# CHECK-INST: max.u %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0x01]
.code32
max.u %d0, %d0, %d1

# CHECK-INST: max.u %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0x01]
.code32
max.u %d0, %d0, %d14

# CHECK-INST: max.u %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0x01]
.code32
max.u %d0, %d0, %d15

# CHECK-INST: max.u %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0x01]
.code32
max.u %d0, %d1, %d0

# CHECK-INST: max.u %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0x01]
.code32
max.u %d0, %d1, %d1

# CHECK-INST: max.u %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0x01]
.code32
max.u %d0, %d1, %d14

# CHECK-INST: max.u %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0x01]
.code32
max.u %d0, %d1, %d15

# CHECK-INST: max.u %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0x01]
.code32
max.u %d0, %d14, %d0

# CHECK-INST: max.u %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0x01]
.code32
max.u %d0, %d14, %d1

# CHECK-INST: max.u %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0x01]
.code32
max.u %d0, %d14, %d14

# CHECK-INST: max.u %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0x01]
.code32
max.u %d0, %d14, %d15

# CHECK-INST: max.u %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0x01]
.code32
max.u %d0, %d15, %d0

# CHECK-INST: max.u %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0x01]
.code32
max.u %d0, %d15, %d1

# CHECK-INST: max.u %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0x01]
.code32
max.u %d0, %d15, %d14

# CHECK-INST: max.u %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0x01]
.code32
max.u %d0, %d15, %d15

# CHECK-INST: max.u %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0x11]
.code32
max.u %d1, %d0, %d0

# CHECK-INST: max.u %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0x11]
.code32
max.u %d1, %d0, %d1

# CHECK-INST: max.u %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0x11]
.code32
max.u %d1, %d0, %d14

# CHECK-INST: max.u %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0x11]
.code32
max.u %d1, %d0, %d15

# CHECK-INST: max.u %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0x11]
.code32
max.u %d1, %d1, %d0

# CHECK-INST: max.u %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0x11]
.code32
max.u %d1, %d1, %d1

# CHECK-INST: max.u %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0x11]
.code32
max.u %d1, %d1, %d14

# CHECK-INST: max.u %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0x11]
.code32
max.u %d1, %d1, %d15

# CHECK-INST: max.u %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0x11]
.code32
max.u %d1, %d14, %d0

# CHECK-INST: max.u %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0x11]
.code32
max.u %d1, %d14, %d1

# CHECK-INST: max.u %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0x11]
.code32
max.u %d1, %d14, %d14

# CHECK-INST: max.u %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0x11]
.code32
max.u %d1, %d14, %d15

# CHECK-INST: max.u %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0x11]
.code32
max.u %d1, %d15, %d0

# CHECK-INST: max.u %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0x11]
.code32
max.u %d1, %d15, %d1

# CHECK-INST: max.u %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0x11]
.code32
max.u %d1, %d15, %d14

# CHECK-INST: max.u %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0x11]
.code32
max.u %d1, %d15, %d15

# CHECK-INST: max.u %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0xe1]
.code32
max.u %d14, %d0, %d0

# CHECK-INST: max.u %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0xe1]
.code32
max.u %d14, %d0, %d1

# CHECK-INST: max.u %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0xe1]
.code32
max.u %d14, %d0, %d14

# CHECK-INST: max.u %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0xe1]
.code32
max.u %d14, %d0, %d15

# CHECK-INST: max.u %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0xe1]
.code32
max.u %d14, %d1, %d0

# CHECK-INST: max.u %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0xe1]
.code32
max.u %d14, %d1, %d1

# CHECK-INST: max.u %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0xe1]
.code32
max.u %d14, %d1, %d14

# CHECK-INST: max.u %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0xe1]
.code32
max.u %d14, %d1, %d15

# CHECK-INST: max.u %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0xe1]
.code32
max.u %d14, %d14, %d0

# CHECK-INST: max.u %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0xe1]
.code32
max.u %d14, %d14, %d1

# CHECK-INST: max.u %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0xe1]
.code32
max.u %d14, %d14, %d14

# CHECK-INST: max.u %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0xe1]
.code32
max.u %d14, %d14, %d15

# CHECK-INST: max.u %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0xe1]
.code32
max.u %d14, %d15, %d0

# CHECK-INST: max.u %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0xe1]
.code32
max.u %d14, %d15, %d1

# CHECK-INST: max.u %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0xe1]
.code32
max.u %d14, %d15, %d14

# CHECK-INST: max.u %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0xe1]
.code32
max.u %d14, %d15, %d15

# CHECK-INST: max.u %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0xf1]
.code32
max.u %d15, %d0, %d0

# CHECK-INST: max.u %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0xf1]
.code32
max.u %d15, %d0, %d1

# CHECK-INST: max.u %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0xf1]
.code32
max.u %d15, %d0, %d14

# CHECK-INST: max.u %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0xf1]
.code32
max.u %d15, %d0, %d15

# CHECK-INST: max.u %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0xf1]
.code32
max.u %d15, %d1, %d0

# CHECK-INST: max.u %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0xf1]
.code32
max.u %d15, %d1, %d1

# CHECK-INST: max.u %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0xf1]
.code32
max.u %d15, %d1, %d14

# CHECK-INST: max.u %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0xf1]
.code32
max.u %d15, %d1, %d15

# CHECK-INST: max.u %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0xf1]
.code32
max.u %d15, %d14, %d0

# CHECK-INST: max.u %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0xf1]
.code32
max.u %d15, %d14, %d1

# CHECK-INST: max.u %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0xf1]
.code32
max.u %d15, %d14, %d14

# CHECK-INST: max.u %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0xf1]
.code32
max.u %d15, %d14, %d15

# CHECK-INST: max.u %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0xf1]
.code32
max.u %d15, %d15, %d0

# CHECK-INST: max.u %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0xf1]
.code32
max.u %d15, %d15, %d1

# CHECK-INST: max.u %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0xf1]
.code32
max.u %d15, %d15, %d14

# CHECK-INST: max.u %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0xf1]
.code32
max.u %d15, %d15, %d15

# CHECK-INST: max.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x70,0x03]
.code32
max.u %d0, %d0, 271

# CHECK-INST: max.u %d0, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x7f,0x03]
.code32
max.u %d0, %d0, 496

# CHECK-INST: max.u %d0, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x7f,0x03]
.code32
max.u %d0, %d0, 511

# CHECK-INST: max.u %d0, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x70,0x03]
.code32
max.u %d0, %d1, 271

# CHECK-INST: max.u %d0, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x7f,0x03]
.code32
max.u %d0, %d1, 496

# CHECK-INST: max.u %d0, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x7f,0x03]
.code32
max.u %d0, %d1, 511

# CHECK-INST: max.u %d0, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x70,0x03]
.code32
max.u %d0, %d14, 271

# CHECK-INST: max.u %d0, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x7f,0x03]
.code32
max.u %d0, %d14, 496

# CHECK-INST: max.u %d0, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x7f,0x03]
.code32
max.u %d0, %d14, 511

# CHECK-INST: max.u %d0, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x70,0x03]
.code32
max.u %d0, %d15, 271

# CHECK-INST: max.u %d0, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x7f,0x03]
.code32
max.u %d0, %d15, 496

# CHECK-INST: max.u %d0, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x7f,0x03]
.code32
max.u %d0, %d15, 511

# CHECK-INST: max.u %d1, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x70,0x13]
.code32
max.u %d1, %d0, 271

# CHECK-INST: max.u %d1, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x7f,0x13]
.code32
max.u %d1, %d0, 496

# CHECK-INST: max.u %d1, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x7f,0x13]
.code32
max.u %d1, %d0, 511

# CHECK-INST: max.u %d1, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x70,0x13]
.code32
max.u %d1, %d1, 271

# CHECK-INST: max.u %d1, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x7f,0x13]
.code32
max.u %d1, %d1, 496

# CHECK-INST: max.u %d1, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x7f,0x13]
.code32
max.u %d1, %d1, 511

# CHECK-INST: max.u %d1, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x70,0x13]
.code32
max.u %d1, %d14, 271

# CHECK-INST: max.u %d1, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x7f,0x13]
.code32
max.u %d1, %d14, 496

# CHECK-INST: max.u %d1, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x7f,0x13]
.code32
max.u %d1, %d14, 511

# CHECK-INST: max.u %d1, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x70,0x13]
.code32
max.u %d1, %d15, 271

# CHECK-INST: max.u %d1, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x7f,0x13]
.code32
max.u %d1, %d15, 496

# CHECK-INST: max.u %d1, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x7f,0x13]
.code32
max.u %d1, %d15, 511

# CHECK-INST: max.u %d14, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x70,0xe3]
.code32
max.u %d14, %d0, 271

# CHECK-INST: max.u %d14, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x7f,0xe3]
.code32
max.u %d14, %d0, 496

# CHECK-INST: max.u %d14, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x7f,0xe3]
.code32
max.u %d14, %d0, 511

# CHECK-INST: max.u %d14, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x70,0xe3]
.code32
max.u %d14, %d1, 271

# CHECK-INST: max.u %d14, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x7f,0xe3]
.code32
max.u %d14, %d1, 496

# CHECK-INST: max.u %d14, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x7f,0xe3]
.code32
max.u %d14, %d1, 511

# CHECK-INST: max.u %d14, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x70,0xe3]
.code32
max.u %d14, %d14, 271

# CHECK-INST: max.u %d14, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x7f,0xe3]
.code32
max.u %d14, %d14, 496

# CHECK-INST: max.u %d14, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x7f,0xe3]
.code32
max.u %d14, %d14, 511

# CHECK-INST: max.u %d14, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x70,0xe3]
.code32
max.u %d14, %d15, 271

# CHECK-INST: max.u %d14, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x7f,0xe3]
.code32
max.u %d14, %d15, 496

# CHECK-INST: max.u %d14, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x7f,0xe3]
.code32
max.u %d14, %d15, 511

# CHECK-INST: max.u %d15, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x70,0xf3]
.code32
max.u %d15, %d0, 271

# CHECK-INST: max.u %d15, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x7f,0xf3]
.code32
max.u %d15, %d0, 496

# CHECK-INST: max.u %d15, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x7f,0xf3]
.code32
max.u %d15, %d0, 511

# CHECK-INST: max.u %d15, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x70,0xf3]
.code32
max.u %d15, %d1, 271

# CHECK-INST: max.u %d15, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x7f,0xf3]
.code32
max.u %d15, %d1, 496

# CHECK-INST: max.u %d15, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x7f,0xf3]
.code32
max.u %d15, %d1, 511

# CHECK-INST: max.u %d15, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x70,0xf3]
.code32
max.u %d15, %d14, 271

# CHECK-INST: max.u %d15, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x7f,0xf3]
.code32
max.u %d15, %d14, 496

# CHECK-INST: max.u %d15, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x7f,0xf3]
.code32
max.u %d15, %d14, 511

# CHECK-INST: max.u %d15, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x70,0xf3]
.code32
max.u %d15, %d15, 271

# CHECK-INST: max.u %d15, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x7f,0xf3]
.code32
max.u %d15, %d15, 496

# CHECK-INST: max.u %d15, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x7f,0xf3]
.code32
max.u %d15, %d15, 511

# CHECK-INST: min %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x01]
.code32
min %d0, %d0, %d0

# CHECK-INST: min %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0x01]
.code32
min %d0, %d0, %d1

# CHECK-INST: min %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0x01]
.code32
min %d0, %d0, %d14

# CHECK-INST: min %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0x01]
.code32
min %d0, %d0, %d15

# CHECK-INST: min %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0x01]
.code32
min %d0, %d1, %d0

# CHECK-INST: min %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0x01]
.code32
min %d0, %d1, %d1

# CHECK-INST: min %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0x01]
.code32
min %d0, %d1, %d14

# CHECK-INST: min %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0x01]
.code32
min %d0, %d1, %d15

# CHECK-INST: min %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0x01]
.code32
min %d0, %d14, %d0

# CHECK-INST: min %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0x01]
.code32
min %d0, %d14, %d1

# CHECK-INST: min %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0x01]
.code32
min %d0, %d14, %d14

# CHECK-INST: min %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0x01]
.code32
min %d0, %d14, %d15

# CHECK-INST: min %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0x01]
.code32
min %d0, %d15, %d0

# CHECK-INST: min %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0x01]
.code32
min %d0, %d15, %d1

# CHECK-INST: min %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0x01]
.code32
min %d0, %d15, %d14

# CHECK-INST: min %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0x01]
.code32
min %d0, %d15, %d15

# CHECK-INST: min %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x11]
.code32
min %d1, %d0, %d0

# CHECK-INST: min %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0x11]
.code32
min %d1, %d0, %d1

# CHECK-INST: min %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0x11]
.code32
min %d1, %d0, %d14

# CHECK-INST: min %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0x11]
.code32
min %d1, %d0, %d15

# CHECK-INST: min %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0x11]
.code32
min %d1, %d1, %d0

# CHECK-INST: min %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0x11]
.code32
min %d1, %d1, %d1

# CHECK-INST: min %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0x11]
.code32
min %d1, %d1, %d14

# CHECK-INST: min %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0x11]
.code32
min %d1, %d1, %d15

# CHECK-INST: min %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0x11]
.code32
min %d1, %d14, %d0

# CHECK-INST: min %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0x11]
.code32
min %d1, %d14, %d1

# CHECK-INST: min %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0x11]
.code32
min %d1, %d14, %d14

# CHECK-INST: min %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0x11]
.code32
min %d1, %d14, %d15

# CHECK-INST: min %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0x11]
.code32
min %d1, %d15, %d0

# CHECK-INST: min %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0x11]
.code32
min %d1, %d15, %d1

# CHECK-INST: min %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0x11]
.code32
min %d1, %d15, %d14

# CHECK-INST: min %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0x11]
.code32
min %d1, %d15, %d15

# CHECK-INST: min %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0xe1]
.code32
min %d14, %d0, %d0

# CHECK-INST: min %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0xe1]
.code32
min %d14, %d0, %d1

# CHECK-INST: min %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0xe1]
.code32
min %d14, %d0, %d14

# CHECK-INST: min %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0xe1]
.code32
min %d14, %d0, %d15

# CHECK-INST: min %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0xe1]
.code32
min %d14, %d1, %d0

# CHECK-INST: min %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0xe1]
.code32
min %d14, %d1, %d1

# CHECK-INST: min %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0xe1]
.code32
min %d14, %d1, %d14

# CHECK-INST: min %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0xe1]
.code32
min %d14, %d1, %d15

# CHECK-INST: min %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0xe1]
.code32
min %d14, %d14, %d0

# CHECK-INST: min %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0xe1]
.code32
min %d14, %d14, %d1

# CHECK-INST: min %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0xe1]
.code32
min %d14, %d14, %d14

# CHECK-INST: min %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0xe1]
.code32
min %d14, %d14, %d15

# CHECK-INST: min %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0xe1]
.code32
min %d14, %d15, %d0

# CHECK-INST: min %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0xe1]
.code32
min %d14, %d15, %d1

# CHECK-INST: min %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0xe1]
.code32
min %d14, %d15, %d14

# CHECK-INST: min %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0xe1]
.code32
min %d14, %d15, %d15

# CHECK-INST: min %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0xf1]
.code32
min %d15, %d0, %d0

# CHECK-INST: min %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0xf1]
.code32
min %d15, %d0, %d1

# CHECK-INST: min %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0xf1]
.code32
min %d15, %d0, %d14

# CHECK-INST: min %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0xf1]
.code32
min %d15, %d0, %d15

# CHECK-INST: min %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0xf1]
.code32
min %d15, %d1, %d0

# CHECK-INST: min %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0xf1]
.code32
min %d15, %d1, %d1

# CHECK-INST: min %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0xf1]
.code32
min %d15, %d1, %d14

# CHECK-INST: min %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0xf1]
.code32
min %d15, %d1, %d15

# CHECK-INST: min %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0xf1]
.code32
min %d15, %d14, %d0

# CHECK-INST: min %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0xf1]
.code32
min %d15, %d14, %d1

# CHECK-INST: min %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0xf1]
.code32
min %d15, %d14, %d14

# CHECK-INST: min %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0xf1]
.code32
min %d15, %d14, %d15

# CHECK-INST: min %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0xf1]
.code32
min %d15, %d15, %d0

# CHECK-INST: min %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0xf1]
.code32
min %d15, %d15, %d1

# CHECK-INST: min %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0xf1]
.code32
min %d15, %d15, %d14

# CHECK-INST: min %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0xf1]
.code32
min %d15, %d15, %d15

# CHECK-INST: min %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x03]
.code32
min %d0, %d0, -256

# CHECK-INST: min %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0x03]
.code32
min %d0, %d0, -129

# CHECK-INST: min %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0x03]
.code32
min %d0, %d0, -1

# CHECK-INST: min %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0x03]
.code32
min %d0, %d0, 0

# CHECK-INST: min %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0x03]
.code32
min %d0, %d0, 1

# CHECK-INST: min %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0x03]
.code32
min %d0, %d0, 128

# CHECK-INST: min %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0x03]
.code32
min %d0, %d0, 255

# CHECK-INST: min %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0x03]
.code32
min %d0, %d1, -256

# CHECK-INST: min %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0x03]
.code32
min %d0, %d1, -129

# CHECK-INST: min %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0x03]
.code32
min %d0, %d1, -1

# CHECK-INST: min %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0x03]
.code32
min %d0, %d1, 0

# CHECK-INST: min %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0x03]
.code32
min %d0, %d1, 1

# CHECK-INST: min %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0x03]
.code32
min %d0, %d1, 128

# CHECK-INST: min %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0x03]
.code32
min %d0, %d1, 255

# CHECK-INST: min %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0x03]
.code32
min %d0, %d14, -256

# CHECK-INST: min %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0x03]
.code32
min %d0, %d14, -129

# CHECK-INST: min %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0x03]
.code32
min %d0, %d14, -1

# CHECK-INST: min %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0x03]
.code32
min %d0, %d14, 0

# CHECK-INST: min %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0x03]
.code32
min %d0, %d14, 1

# CHECK-INST: min %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0x03]
.code32
min %d0, %d14, 128

# CHECK-INST: min %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0x03]
.code32
min %d0, %d14, 255

# CHECK-INST: min %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0x03]
.code32
min %d0, %d15, -256

# CHECK-INST: min %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0x03]
.code32
min %d0, %d15, -129

# CHECK-INST: min %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0x03]
.code32
min %d0, %d15, -1

# CHECK-INST: min %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0x03]
.code32
min %d0, %d15, 0

# CHECK-INST: min %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0x03]
.code32
min %d0, %d15, 1

# CHECK-INST: min %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0x03]
.code32
min %d0, %d15, 128

# CHECK-INST: min %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0x03]
.code32
min %d0, %d15, 255

# CHECK-INST: min %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x13]
.code32
min %d1, %d0, -256

# CHECK-INST: min %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0x13]
.code32
min %d1, %d0, -129

# CHECK-INST: min %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0x13]
.code32
min %d1, %d0, -1

# CHECK-INST: min %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0x13]
.code32
min %d1, %d0, 0

# CHECK-INST: min %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0x13]
.code32
min %d1, %d0, 1

# CHECK-INST: min %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0x13]
.code32
min %d1, %d0, 128

# CHECK-INST: min %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0x13]
.code32
min %d1, %d0, 255

# CHECK-INST: min %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0x13]
.code32
min %d1, %d1, -256

# CHECK-INST: min %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0x13]
.code32
min %d1, %d1, -129

# CHECK-INST: min %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0x13]
.code32
min %d1, %d1, -1

# CHECK-INST: min %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0x13]
.code32
min %d1, %d1, 0

# CHECK-INST: min %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0x13]
.code32
min %d1, %d1, 1

# CHECK-INST: min %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0x13]
.code32
min %d1, %d1, 128

# CHECK-INST: min %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0x13]
.code32
min %d1, %d1, 255

# CHECK-INST: min %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0x13]
.code32
min %d1, %d14, -256

# CHECK-INST: min %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0x13]
.code32
min %d1, %d14, -129

# CHECK-INST: min %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0x13]
.code32
min %d1, %d14, -1

# CHECK-INST: min %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0x13]
.code32
min %d1, %d14, 0

# CHECK-INST: min %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0x13]
.code32
min %d1, %d14, 1

# CHECK-INST: min %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0x13]
.code32
min %d1, %d14, 128

# CHECK-INST: min %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0x13]
.code32
min %d1, %d14, 255

# CHECK-INST: min %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0x13]
.code32
min %d1, %d15, -256

# CHECK-INST: min %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0x13]
.code32
min %d1, %d15, -129

# CHECK-INST: min %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0x13]
.code32
min %d1, %d15, -1

# CHECK-INST: min %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0x13]
.code32
min %d1, %d15, 0

# CHECK-INST: min %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0x13]
.code32
min %d1, %d15, 1

# CHECK-INST: min %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0x13]
.code32
min %d1, %d15, 128

# CHECK-INST: min %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0x13]
.code32
min %d1, %d15, 255

# CHECK-INST: min %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0xe3]
.code32
min %d14, %d0, -256

# CHECK-INST: min %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0xe3]
.code32
min %d14, %d0, -129

# CHECK-INST: min %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0xe3]
.code32
min %d14, %d0, -1

# CHECK-INST: min %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0xe3]
.code32
min %d14, %d0, 0

# CHECK-INST: min %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0xe3]
.code32
min %d14, %d0, 1

# CHECK-INST: min %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0xe3]
.code32
min %d14, %d0, 128

# CHECK-INST: min %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0xe3]
.code32
min %d14, %d0, 255

# CHECK-INST: min %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0xe3]
.code32
min %d14, %d1, -256

# CHECK-INST: min %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0xe3]
.code32
min %d14, %d1, -129

# CHECK-INST: min %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0xe3]
.code32
min %d14, %d1, -1

# CHECK-INST: min %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0xe3]
.code32
min %d14, %d1, 0

# CHECK-INST: min %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0xe3]
.code32
min %d14, %d1, 1

# CHECK-INST: min %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0xe3]
.code32
min %d14, %d1, 128

# CHECK-INST: min %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0xe3]
.code32
min %d14, %d1, 255

# CHECK-INST: min %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0xe3]
.code32
min %d14, %d14, -256

# CHECK-INST: min %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0xe3]
.code32
min %d14, %d14, -129

# CHECK-INST: min %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0xe3]
.code32
min %d14, %d14, -1

# CHECK-INST: min %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0xe3]
.code32
min %d14, %d14, 0

# CHECK-INST: min %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0xe3]
.code32
min %d14, %d14, 1

# CHECK-INST: min %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0xe3]
.code32
min %d14, %d14, 128

# CHECK-INST: min %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0xe3]
.code32
min %d14, %d14, 255

# CHECK-INST: min %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0xe3]
.code32
min %d14, %d15, -256

# CHECK-INST: min %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0xe3]
.code32
min %d14, %d15, -129

# CHECK-INST: min %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0xe3]
.code32
min %d14, %d15, -1

# CHECK-INST: min %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0xe3]
.code32
min %d14, %d15, 0

# CHECK-INST: min %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0xe3]
.code32
min %d14, %d15, 1

# CHECK-INST: min %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0xe3]
.code32
min %d14, %d15, 128

# CHECK-INST: min %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0xe3]
.code32
min %d14, %d15, 255

# CHECK-INST: min %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0xf3]
.code32
min %d15, %d0, -256

# CHECK-INST: min %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0xf3]
.code32
min %d15, %d0, -129

# CHECK-INST: min %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0xf3]
.code32
min %d15, %d0, -1

# CHECK-INST: min %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0xf3]
.code32
min %d15, %d0, 0

# CHECK-INST: min %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0xf3]
.code32
min %d15, %d0, 1

# CHECK-INST: min %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0xf3]
.code32
min %d15, %d0, 128

# CHECK-INST: min %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0xf3]
.code32
min %d15, %d0, 255

# CHECK-INST: min %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0xf3]
.code32
min %d15, %d1, -256

# CHECK-INST: min %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0xf3]
.code32
min %d15, %d1, -129

# CHECK-INST: min %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0xf3]
.code32
min %d15, %d1, -1

# CHECK-INST: min %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0xf3]
.code32
min %d15, %d1, 0

# CHECK-INST: min %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0xf3]
.code32
min %d15, %d1, 1

# CHECK-INST: min %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0xf3]
.code32
min %d15, %d1, 128

# CHECK-INST: min %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0xf3]
.code32
min %d15, %d1, 255

# CHECK-INST: min %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0xf3]
.code32
min %d15, %d14, -256

# CHECK-INST: min %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0xf3]
.code32
min %d15, %d14, -129

# CHECK-INST: min %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0xf3]
.code32
min %d15, %d14, -1

# CHECK-INST: min %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0xf3]
.code32
min %d15, %d14, 0

# CHECK-INST: min %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0xf3]
.code32
min %d15, %d14, 1

# CHECK-INST: min %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0xf3]
.code32
min %d15, %d14, 128

# CHECK-INST: min %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0xf3]
.code32
min %d15, %d14, 255

# CHECK-INST: min %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0xf3]
.code32
min %d15, %d15, -256

# CHECK-INST: min %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0xf3]
.code32
min %d15, %d15, -129

# CHECK-INST: min %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0xf3]
.code32
min %d15, %d15, -1

# CHECK-INST: min %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0xf3]
.code32
min %d15, %d15, 0

# CHECK-INST: min %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0xf3]
.code32
min %d15, %d15, 1

# CHECK-INST: min %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0xf3]
.code32
min %d15, %d15, 128

# CHECK-INST: min %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0xf3]
.code32
min %d15, %d15, 255

# CHECK-INST: min.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0x01]
.code32
min.u %d0, %d0, %d0

# CHECK-INST: min.u %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0x01]
.code32
min.u %d0, %d0, %d1

# CHECK-INST: min.u %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0x01]
.code32
min.u %d0, %d0, %d14

# CHECK-INST: min.u %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0x01]
.code32
min.u %d0, %d0, %d15

# CHECK-INST: min.u %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0x01]
.code32
min.u %d0, %d1, %d0

# CHECK-INST: min.u %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0x01]
.code32
min.u %d0, %d1, %d1

# CHECK-INST: min.u %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0x01]
.code32
min.u %d0, %d1, %d14

# CHECK-INST: min.u %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0x01]
.code32
min.u %d0, %d1, %d15

# CHECK-INST: min.u %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0x01]
.code32
min.u %d0, %d14, %d0

# CHECK-INST: min.u %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0x01]
.code32
min.u %d0, %d14, %d1

# CHECK-INST: min.u %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0x01]
.code32
min.u %d0, %d14, %d14

# CHECK-INST: min.u %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0x01]
.code32
min.u %d0, %d14, %d15

# CHECK-INST: min.u %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0x01]
.code32
min.u %d0, %d15, %d0

# CHECK-INST: min.u %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0x01]
.code32
min.u %d0, %d15, %d1

# CHECK-INST: min.u %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0x01]
.code32
min.u %d0, %d15, %d14

# CHECK-INST: min.u %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0x01]
.code32
min.u %d0, %d15, %d15

# CHECK-INST: min.u %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0x11]
.code32
min.u %d1, %d0, %d0

# CHECK-INST: min.u %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0x11]
.code32
min.u %d1, %d0, %d1

# CHECK-INST: min.u %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0x11]
.code32
min.u %d1, %d0, %d14

# CHECK-INST: min.u %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0x11]
.code32
min.u %d1, %d0, %d15

# CHECK-INST: min.u %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0x11]
.code32
min.u %d1, %d1, %d0

# CHECK-INST: min.u %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0x11]
.code32
min.u %d1, %d1, %d1

# CHECK-INST: min.u %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0x11]
.code32
min.u %d1, %d1, %d14

# CHECK-INST: min.u %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0x11]
.code32
min.u %d1, %d1, %d15

# CHECK-INST: min.u %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0x11]
.code32
min.u %d1, %d14, %d0

# CHECK-INST: min.u %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0x11]
.code32
min.u %d1, %d14, %d1

# CHECK-INST: min.u %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0x11]
.code32
min.u %d1, %d14, %d14

# CHECK-INST: min.u %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0x11]
.code32
min.u %d1, %d14, %d15

# CHECK-INST: min.u %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0x11]
.code32
min.u %d1, %d15, %d0

# CHECK-INST: min.u %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0x11]
.code32
min.u %d1, %d15, %d1

# CHECK-INST: min.u %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0x11]
.code32
min.u %d1, %d15, %d14

# CHECK-INST: min.u %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0x11]
.code32
min.u %d1, %d15, %d15

# CHECK-INST: min.u %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0xe1]
.code32
min.u %d14, %d0, %d0

# CHECK-INST: min.u %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0xe1]
.code32
min.u %d14, %d0, %d1

# CHECK-INST: min.u %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0xe1]
.code32
min.u %d14, %d0, %d14

# CHECK-INST: min.u %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0xe1]
.code32
min.u %d14, %d0, %d15

# CHECK-INST: min.u %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0xe1]
.code32
min.u %d14, %d1, %d0

# CHECK-INST: min.u %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0xe1]
.code32
min.u %d14, %d1, %d1

# CHECK-INST: min.u %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0xe1]
.code32
min.u %d14, %d1, %d14

# CHECK-INST: min.u %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0xe1]
.code32
min.u %d14, %d1, %d15

# CHECK-INST: min.u %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0xe1]
.code32
min.u %d14, %d14, %d0

# CHECK-INST: min.u %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0xe1]
.code32
min.u %d14, %d14, %d1

# CHECK-INST: min.u %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0xe1]
.code32
min.u %d14, %d14, %d14

# CHECK-INST: min.u %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0xe1]
.code32
min.u %d14, %d14, %d15

# CHECK-INST: min.u %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0xe1]
.code32
min.u %d14, %d15, %d0

# CHECK-INST: min.u %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0xe1]
.code32
min.u %d14, %d15, %d1

# CHECK-INST: min.u %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0xe1]
.code32
min.u %d14, %d15, %d14

# CHECK-INST: min.u %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0xe1]
.code32
min.u %d14, %d15, %d15

# CHECK-INST: min.u %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0xf1]
.code32
min.u %d15, %d0, %d0

# CHECK-INST: min.u %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0xf1]
.code32
min.u %d15, %d0, %d1

# CHECK-INST: min.u %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0xf1]
.code32
min.u %d15, %d0, %d14

# CHECK-INST: min.u %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0xf1]
.code32
min.u %d15, %d0, %d15

# CHECK-INST: min.u %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0xf1]
.code32
min.u %d15, %d1, %d0

# CHECK-INST: min.u %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0xf1]
.code32
min.u %d15, %d1, %d1

# CHECK-INST: min.u %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0xf1]
.code32
min.u %d15, %d1, %d14

# CHECK-INST: min.u %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0xf1]
.code32
min.u %d15, %d1, %d15

# CHECK-INST: min.u %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0xf1]
.code32
min.u %d15, %d14, %d0

# CHECK-INST: min.u %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0xf1]
.code32
min.u %d15, %d14, %d1

# CHECK-INST: min.u %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0xf1]
.code32
min.u %d15, %d14, %d14

# CHECK-INST: min.u %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0xf1]
.code32
min.u %d15, %d14, %d15

# CHECK-INST: min.u %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0xf1]
.code32
min.u %d15, %d15, %d0

# CHECK-INST: min.u %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0xf1]
.code32
min.u %d15, %d15, %d1

# CHECK-INST: min.u %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0xf1]
.code32
min.u %d15, %d15, %d14

# CHECK-INST: min.u %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0xf1]
.code32
min.u %d15, %d15, %d15

# CHECK-INST: min.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x30,0x03]
.code32
min.u %d0, %d0, 271

# CHECK-INST: min.u %d0, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x3f,0x03]
.code32
min.u %d0, %d0, 496

# CHECK-INST: min.u %d0, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x3f,0x03]
.code32
min.u %d0, %d0, 511

# CHECK-INST: min.u %d0, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x30,0x03]
.code32
min.u %d0, %d1, 271

# CHECK-INST: min.u %d0, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x3f,0x03]
.code32
min.u %d0, %d1, 496

# CHECK-INST: min.u %d0, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x3f,0x03]
.code32
min.u %d0, %d1, 511

# CHECK-INST: min.u %d0, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x30,0x03]
.code32
min.u %d0, %d14, 271

# CHECK-INST: min.u %d0, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x3f,0x03]
.code32
min.u %d0, %d14, 496

# CHECK-INST: min.u %d0, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x3f,0x03]
.code32
min.u %d0, %d14, 511

# CHECK-INST: min.u %d0, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x30,0x03]
.code32
min.u %d0, %d15, 271

# CHECK-INST: min.u %d0, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x3f,0x03]
.code32
min.u %d0, %d15, 496

# CHECK-INST: min.u %d0, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x3f,0x03]
.code32
min.u %d0, %d15, 511

# CHECK-INST: min.u %d1, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x30,0x13]
.code32
min.u %d1, %d0, 271

# CHECK-INST: min.u %d1, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x3f,0x13]
.code32
min.u %d1, %d0, 496

# CHECK-INST: min.u %d1, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x3f,0x13]
.code32
min.u %d1, %d0, 511

# CHECK-INST: min.u %d1, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x30,0x13]
.code32
min.u %d1, %d1, 271

# CHECK-INST: min.u %d1, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x3f,0x13]
.code32
min.u %d1, %d1, 496

# CHECK-INST: min.u %d1, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x3f,0x13]
.code32
min.u %d1, %d1, 511

# CHECK-INST: min.u %d1, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x30,0x13]
.code32
min.u %d1, %d14, 271

# CHECK-INST: min.u %d1, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x3f,0x13]
.code32
min.u %d1, %d14, 496

# CHECK-INST: min.u %d1, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x3f,0x13]
.code32
min.u %d1, %d14, 511

# CHECK-INST: min.u %d1, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x30,0x13]
.code32
min.u %d1, %d15, 271

# CHECK-INST: min.u %d1, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x3f,0x13]
.code32
min.u %d1, %d15, 496

# CHECK-INST: min.u %d1, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x3f,0x13]
.code32
min.u %d1, %d15, 511

# CHECK-INST: min.u %d14, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x30,0xe3]
.code32
min.u %d14, %d0, 271

# CHECK-INST: min.u %d14, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x3f,0xe3]
.code32
min.u %d14, %d0, 496

# CHECK-INST: min.u %d14, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x3f,0xe3]
.code32
min.u %d14, %d0, 511

# CHECK-INST: min.u %d14, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x30,0xe3]
.code32
min.u %d14, %d1, 271

# CHECK-INST: min.u %d14, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x3f,0xe3]
.code32
min.u %d14, %d1, 496

# CHECK-INST: min.u %d14, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x3f,0xe3]
.code32
min.u %d14, %d1, 511

# CHECK-INST: min.u %d14, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x30,0xe3]
.code32
min.u %d14, %d14, 271

# CHECK-INST: min.u %d14, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x3f,0xe3]
.code32
min.u %d14, %d14, 496

# CHECK-INST: min.u %d14, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x3f,0xe3]
.code32
min.u %d14, %d14, 511

# CHECK-INST: min.u %d14, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x30,0xe3]
.code32
min.u %d14, %d15, 271

# CHECK-INST: min.u %d14, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x3f,0xe3]
.code32
min.u %d14, %d15, 496

# CHECK-INST: min.u %d14, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x3f,0xe3]
.code32
min.u %d14, %d15, 511

# CHECK-INST: min.u %d15, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x30,0xf3]
.code32
min.u %d15, %d0, 271

# CHECK-INST: min.u %d15, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x3f,0xf3]
.code32
min.u %d15, %d0, 496

# CHECK-INST: min.u %d15, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x3f,0xf3]
.code32
min.u %d15, %d0, 511

# CHECK-INST: min.u %d15, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x30,0xf3]
.code32
min.u %d15, %d1, 271

# CHECK-INST: min.u %d15, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x3f,0xf3]
.code32
min.u %d15, %d1, 496

# CHECK-INST: min.u %d15, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x3f,0xf3]
.code32
min.u %d15, %d1, 511

# CHECK-INST: min.u %d15, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x30,0xf3]
.code32
min.u %d15, %d14, 271

# CHECK-INST: min.u %d15, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x3f,0xf3]
.code32
min.u %d15, %d14, 496

# CHECK-INST: min.u %d15, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x3f,0xf3]
.code32
min.u %d15, %d14, 511

# CHECK-INST: min.u %d15, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x30,0xf3]
.code32
min.u %d15, %d15, 271

# CHECK-INST: min.u %d15, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x3f,0xf3]
.code32
min.u %d15, %d15, 496

# CHECK-INST: min.u %d15, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x3f,0xf3]
.code32
min.u %d15, %d15, 511

# CHECK-INST: sat.b %d0
# CHECK: encoding: [0x32,0x00]
.code16
sat.b %d0

# CHECK-INST: sat.b %d1
# CHECK: encoding: [0x32,0x01]
.code16
sat.b %d1

# CHECK-INST: sat.b %d14
# CHECK: encoding: [0x32,0x0e]
.code16
sat.b %d14

# CHECK-INST: sat.b %d15
# CHECK: encoding: [0x32,0x0f]
.code16
sat.b %d15

# CHECK-INST: sat.b %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0x05]
.code32
sat.b %d0, %d0

# CHECK-INST: sat.b %d0, %d1
# CHECK: encoding: [0x0b,0x01,0xe0,0x05]
.code32
sat.b %d0, %d1

# CHECK-INST: sat.b %d0, %d14
# CHECK: encoding: [0x0b,0x0e,0xe0,0x05]
.code32
sat.b %d0, %d14

# CHECK-INST: sat.b %d0, %d15
# CHECK: encoding: [0x0b,0x0f,0xe0,0x05]
.code32
sat.b %d0, %d15

# CHECK-INST: sat.b %d1, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0x15]
.code32
sat.b %d1, %d0

# CHECK-INST: sat.b %d1, %d1
# CHECK: encoding: [0x0b,0x01,0xe0,0x15]
.code32
sat.b %d1, %d1

# CHECK-INST: sat.b %d1, %d14
# CHECK: encoding: [0x0b,0x0e,0xe0,0x15]
.code32
sat.b %d1, %d14

# CHECK-INST: sat.b %d1, %d15
# CHECK: encoding: [0x0b,0x0f,0xe0,0x15]
.code32
sat.b %d1, %d15

# CHECK-INST: sat.b %d14, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0xe5]
.code32
sat.b %d14, %d0

# CHECK-INST: sat.b %d14, %d1
# CHECK: encoding: [0x0b,0x01,0xe0,0xe5]
.code32
sat.b %d14, %d1

# CHECK-INST: sat.b %d14, %d14
# CHECK: encoding: [0x0b,0x0e,0xe0,0xe5]
.code32
sat.b %d14, %d14

# CHECK-INST: sat.b %d14, %d15
# CHECK: encoding: [0x0b,0x0f,0xe0,0xe5]
.code32
sat.b %d14, %d15

# CHECK-INST: sat.b %d15, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0xf5]
.code32
sat.b %d15, %d0

# CHECK-INST: sat.b %d15, %d1
# CHECK: encoding: [0x0b,0x01,0xe0,0xf5]
.code32
sat.b %d15, %d1

# CHECK-INST: sat.b %d15, %d14
# CHECK: encoding: [0x0b,0x0e,0xe0,0xf5]
.code32
sat.b %d15, %d14

# CHECK-INST: sat.b %d15, %d15
# CHECK: encoding: [0x0b,0x0f,0xe0,0xf5]
.code32
sat.b %d15, %d15

# CHECK-INST: sat.bu %d0
# CHECK: encoding: [0x32,0x10]
.code16
sat.bu %d0

# CHECK-INST: sat.bu %d1
# CHECK: encoding: [0x32,0x11]
.code16
sat.bu %d1

# CHECK-INST: sat.bu %d14
# CHECK: encoding: [0x32,0x1e]
.code16
sat.bu %d14

# CHECK-INST: sat.bu %d15
# CHECK: encoding: [0x32,0x1f]
.code16
sat.bu %d15

# CHECK-INST: sat.bu %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x05]
.code32
sat.bu %d0, %d0

# CHECK-INST: sat.bu %d0, %d1
# CHECK: encoding: [0x0b,0x01,0xf0,0x05]
.code32
sat.bu %d0, %d1

# CHECK-INST: sat.bu %d0, %d14
# CHECK: encoding: [0x0b,0x0e,0xf0,0x05]
.code32
sat.bu %d0, %d14

# CHECK-INST: sat.bu %d0, %d15
# CHECK: encoding: [0x0b,0x0f,0xf0,0x05]
.code32
sat.bu %d0, %d15

# CHECK-INST: sat.bu %d1, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x15]
.code32
sat.bu %d1, %d0

# CHECK-INST: sat.bu %d1, %d1
# CHECK: encoding: [0x0b,0x01,0xf0,0x15]
.code32
sat.bu %d1, %d1

# CHECK-INST: sat.bu %d1, %d14
# CHECK: encoding: [0x0b,0x0e,0xf0,0x15]
.code32
sat.bu %d1, %d14

# CHECK-INST: sat.bu %d1, %d15
# CHECK: encoding: [0x0b,0x0f,0xf0,0x15]
.code32
sat.bu %d1, %d15

# CHECK-INST: sat.bu %d14, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0xe5]
.code32
sat.bu %d14, %d0

# CHECK-INST: sat.bu %d14, %d1
# CHECK: encoding: [0x0b,0x01,0xf0,0xe5]
.code32
sat.bu %d14, %d1

# CHECK-INST: sat.bu %d14, %d14
# CHECK: encoding: [0x0b,0x0e,0xf0,0xe5]
.code32
sat.bu %d14, %d14

# CHECK-INST: sat.bu %d14, %d15
# CHECK: encoding: [0x0b,0x0f,0xf0,0xe5]
.code32
sat.bu %d14, %d15

# CHECK-INST: sat.bu %d15, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0xf5]
.code32
sat.bu %d15, %d0

# CHECK-INST: sat.bu %d15, %d1
# CHECK: encoding: [0x0b,0x01,0xf0,0xf5]
.code32
sat.bu %d15, %d1

# CHECK-INST: sat.bu %d15, %d14
# CHECK: encoding: [0x0b,0x0e,0xf0,0xf5]
.code32
sat.bu %d15, %d14

# CHECK-INST: sat.bu %d15, %d15
# CHECK: encoding: [0x0b,0x0f,0xf0,0xf5]
.code32
sat.bu %d15, %d15

# CHECK-INST: sat.h %d0
# CHECK: encoding: [0x32,0x20]
.code16
sat.h %d0

# CHECK-INST: sat.h %d1
# CHECK: encoding: [0x32,0x21]
.code16
sat.h %d1

# CHECK-INST: sat.h %d14
# CHECK: encoding: [0x32,0x2e]
.code16
sat.h %d14

# CHECK-INST: sat.h %d15
# CHECK: encoding: [0x32,0x2f]
.code16
sat.h %d15

# CHECK-INST: sat.h %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0x07]
.code32
sat.h %d0, %d0

# CHECK-INST: sat.h %d0, %d1
# CHECK: encoding: [0x0b,0x01,0xe0,0x07]
.code32
sat.h %d0, %d1

# CHECK-INST: sat.h %d0, %d14
# CHECK: encoding: [0x0b,0x0e,0xe0,0x07]
.code32
sat.h %d0, %d14

# CHECK-INST: sat.h %d0, %d15
# CHECK: encoding: [0x0b,0x0f,0xe0,0x07]
.code32
sat.h %d0, %d15

# CHECK-INST: sat.h %d1, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0x17]
.code32
sat.h %d1, %d0

# CHECK-INST: sat.h %d1, %d1
# CHECK: encoding: [0x0b,0x01,0xe0,0x17]
.code32
sat.h %d1, %d1

# CHECK-INST: sat.h %d1, %d14
# CHECK: encoding: [0x0b,0x0e,0xe0,0x17]
.code32
sat.h %d1, %d14

# CHECK-INST: sat.h %d1, %d15
# CHECK: encoding: [0x0b,0x0f,0xe0,0x17]
.code32
sat.h %d1, %d15

# CHECK-INST: sat.h %d14, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0xe7]
.code32
sat.h %d14, %d0

# CHECK-INST: sat.h %d14, %d1
# CHECK: encoding: [0x0b,0x01,0xe0,0xe7]
.code32
sat.h %d14, %d1

# CHECK-INST: sat.h %d14, %d14
# CHECK: encoding: [0x0b,0x0e,0xe0,0xe7]
.code32
sat.h %d14, %d14

# CHECK-INST: sat.h %d14, %d15
# CHECK: encoding: [0x0b,0x0f,0xe0,0xe7]
.code32
sat.h %d14, %d15

# CHECK-INST: sat.h %d15, %d0
# CHECK: encoding: [0x0b,0x00,0xe0,0xf7]
.code32
sat.h %d15, %d0

# CHECK-INST: sat.h %d15, %d1
# CHECK: encoding: [0x0b,0x01,0xe0,0xf7]
.code32
sat.h %d15, %d1

# CHECK-INST: sat.h %d15, %d14
# CHECK: encoding: [0x0b,0x0e,0xe0,0xf7]
.code32
sat.h %d15, %d14

# CHECK-INST: sat.h %d15, %d15
# CHECK: encoding: [0x0b,0x0f,0xe0,0xf7]
.code32
sat.h %d15, %d15

# CHECK-INST: sat.hu %d0
# CHECK: encoding: [0x32,0x30]
.code16
sat.hu %d0

# CHECK-INST: sat.hu %d1
# CHECK: encoding: [0x32,0x31]
.code16
sat.hu %d1

# CHECK-INST: sat.hu %d14
# CHECK: encoding: [0x32,0x3e]
.code16
sat.hu %d14

# CHECK-INST: sat.hu %d15
# CHECK: encoding: [0x32,0x3f]
.code16
sat.hu %d15

# CHECK-INST: sat.hu %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x07]
.code32
sat.hu %d0, %d0

# CHECK-INST: sat.hu %d0, %d1
# CHECK: encoding: [0x0b,0x01,0xf0,0x07]
.code32
sat.hu %d0, %d1

# CHECK-INST: sat.hu %d0, %d14
# CHECK: encoding: [0x0b,0x0e,0xf0,0x07]
.code32
sat.hu %d0, %d14

# CHECK-INST: sat.hu %d0, %d15
# CHECK: encoding: [0x0b,0x0f,0xf0,0x07]
.code32
sat.hu %d0, %d15

# CHECK-INST: sat.hu %d1, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0x17]
.code32
sat.hu %d1, %d0

# CHECK-INST: sat.hu %d1, %d1
# CHECK: encoding: [0x0b,0x01,0xf0,0x17]
.code32
sat.hu %d1, %d1

# CHECK-INST: sat.hu %d1, %d14
# CHECK: encoding: [0x0b,0x0e,0xf0,0x17]
.code32
sat.hu %d1, %d14

# CHECK-INST: sat.hu %d1, %d15
# CHECK: encoding: [0x0b,0x0f,0xf0,0x17]
.code32
sat.hu %d1, %d15

# CHECK-INST: sat.hu %d14, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0xe7]
.code32
sat.hu %d14, %d0

# CHECK-INST: sat.hu %d14, %d1
# CHECK: encoding: [0x0b,0x01,0xf0,0xe7]
.code32
sat.hu %d14, %d1

# CHECK-INST: sat.hu %d14, %d14
# CHECK: encoding: [0x0b,0x0e,0xf0,0xe7]
.code32
sat.hu %d14, %d14

# CHECK-INST: sat.hu %d14, %d15
# CHECK: encoding: [0x0b,0x0f,0xf0,0xe7]
.code32
sat.hu %d14, %d15

# CHECK-INST: sat.hu %d15, %d0
# CHECK: encoding: [0x0b,0x00,0xf0,0xf7]
.code32
sat.hu %d15, %d0

# CHECK-INST: sat.hu %d15, %d1
# CHECK: encoding: [0x0b,0x01,0xf0,0xf7]
.code32
sat.hu %d15, %d1

# CHECK-INST: sat.hu %d15, %d14
# CHECK: encoding: [0x0b,0x0e,0xf0,0xf7]
.code32
sat.hu %d15, %d14

# CHECK-INST: sat.hu %d15, %d15
# CHECK: encoding: [0x0b,0x0f,0xf0,0xf7]
.code32
sat.hu %d15, %d15