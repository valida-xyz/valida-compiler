# RUN: llvm-mc %s -triple=tricore -show-encoding \
# RUN:     | FileCheck -check-prefixes=CHECK,CHECK-INST %s
# RUN: llvm-mc -filetype=obj -triple=tricore < %s \
# RUN:     | llvm-objdump -d - | FileCheck -check-prefix=CHECK-INST %s


# CHECK-INST: sh.eq %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x70,0x03]
sh.eq %d0, %d0, %d0

# CHECK-INST: sh.eq %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x70,0x03]
sh.eq %d0, %d0, %d1

# CHECK-INST: sh.eq %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x70,0x03]
sh.eq %d0, %d0, %d14

# CHECK-INST: sh.eq %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x70,0x03]
sh.eq %d0, %d0, %d15

# CHECK-INST: sh.eq %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x70,0x03]
sh.eq %d0, %d1, %d0

# CHECK-INST: sh.eq %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x70,0x03]
sh.eq %d0, %d1, %d1

# CHECK-INST: sh.eq %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x70,0x03]
sh.eq %d0, %d1, %d14

# CHECK-INST: sh.eq %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x70,0x03]
sh.eq %d0, %d1, %d15

# CHECK-INST: sh.eq %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x70,0x03]
sh.eq %d0, %d14, %d0

# CHECK-INST: sh.eq %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x70,0x03]
sh.eq %d0, %d14, %d1

# CHECK-INST: sh.eq %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x70,0x03]
sh.eq %d0, %d14, %d14

# CHECK-INST: sh.eq %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x70,0x03]
sh.eq %d0, %d14, %d15

# CHECK-INST: sh.eq %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x70,0x03]
sh.eq %d0, %d15, %d0

# CHECK-INST: sh.eq %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x70,0x03]
sh.eq %d0, %d15, %d1

# CHECK-INST: sh.eq %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x70,0x03]
sh.eq %d0, %d15, %d14

# CHECK-INST: sh.eq %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x70,0x03]
sh.eq %d0, %d15, %d15

# CHECK-INST: sh.eq %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x70,0x13]
sh.eq %d1, %d0, %d0

# CHECK-INST: sh.eq %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x70,0x13]
sh.eq %d1, %d0, %d1

# CHECK-INST: sh.eq %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x70,0x13]
sh.eq %d1, %d0, %d14

# CHECK-INST: sh.eq %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x70,0x13]
sh.eq %d1, %d0, %d15

# CHECK-INST: sh.eq %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x70,0x13]
sh.eq %d1, %d1, %d0

# CHECK-INST: sh.eq %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x70,0x13]
sh.eq %d1, %d1, %d1

# CHECK-INST: sh.eq %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x70,0x13]
sh.eq %d1, %d1, %d14

# CHECK-INST: sh.eq %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x70,0x13]
sh.eq %d1, %d1, %d15

# CHECK-INST: sh.eq %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x70,0x13]
sh.eq %d1, %d14, %d0

# CHECK-INST: sh.eq %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x70,0x13]
sh.eq %d1, %d14, %d1

# CHECK-INST: sh.eq %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x70,0x13]
sh.eq %d1, %d14, %d14

# CHECK-INST: sh.eq %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x70,0x13]
sh.eq %d1, %d14, %d15

# CHECK-INST: sh.eq %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x70,0x13]
sh.eq %d1, %d15, %d0

# CHECK-INST: sh.eq %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x70,0x13]
sh.eq %d1, %d15, %d1

# CHECK-INST: sh.eq %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x70,0x13]
sh.eq %d1, %d15, %d14

# CHECK-INST: sh.eq %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x70,0x13]
sh.eq %d1, %d15, %d15

# CHECK-INST: sh.eq %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x70,0xe3]
sh.eq %d14, %d0, %d0

# CHECK-INST: sh.eq %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x70,0xe3]
sh.eq %d14, %d0, %d1

# CHECK-INST: sh.eq %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x70,0xe3]
sh.eq %d14, %d0, %d14

# CHECK-INST: sh.eq %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x70,0xe3]
sh.eq %d14, %d0, %d15

# CHECK-INST: sh.eq %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x70,0xe3]
sh.eq %d14, %d1, %d0

# CHECK-INST: sh.eq %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x70,0xe3]
sh.eq %d14, %d1, %d1

# CHECK-INST: sh.eq %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x70,0xe3]
sh.eq %d14, %d1, %d14

# CHECK-INST: sh.eq %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x70,0xe3]
sh.eq %d14, %d1, %d15

# CHECK-INST: sh.eq %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x70,0xe3]
sh.eq %d14, %d14, %d0

# CHECK-INST: sh.eq %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x70,0xe3]
sh.eq %d14, %d14, %d1

# CHECK-INST: sh.eq %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x70,0xe3]
sh.eq %d14, %d14, %d14

# CHECK-INST: sh.eq %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x70,0xe3]
sh.eq %d14, %d14, %d15

# CHECK-INST: sh.eq %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x70,0xe3]
sh.eq %d14, %d15, %d0

# CHECK-INST: sh.eq %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x70,0xe3]
sh.eq %d14, %d15, %d1

# CHECK-INST: sh.eq %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x70,0xe3]
sh.eq %d14, %d15, %d14

# CHECK-INST: sh.eq %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x70,0xe3]
sh.eq %d14, %d15, %d15

# CHECK-INST: sh.eq %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x70,0xf3]
sh.eq %d15, %d0, %d0

# CHECK-INST: sh.eq %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x70,0xf3]
sh.eq %d15, %d0, %d1

# CHECK-INST: sh.eq %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x70,0xf3]
sh.eq %d15, %d0, %d14

# CHECK-INST: sh.eq %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x70,0xf3]
sh.eq %d15, %d0, %d15

# CHECK-INST: sh.eq %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x70,0xf3]
sh.eq %d15, %d1, %d0

# CHECK-INST: sh.eq %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x70,0xf3]
sh.eq %d15, %d1, %d1

# CHECK-INST: sh.eq %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x70,0xf3]
sh.eq %d15, %d1, %d14

# CHECK-INST: sh.eq %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x70,0xf3]
sh.eq %d15, %d1, %d15

# CHECK-INST: sh.eq %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x70,0xf3]
sh.eq %d15, %d14, %d0

# CHECK-INST: sh.eq %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x70,0xf3]
sh.eq %d15, %d14, %d1

# CHECK-INST: sh.eq %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x70,0xf3]
sh.eq %d15, %d14, %d14

# CHECK-INST: sh.eq %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x70,0xf3]
sh.eq %d15, %d14, %d15

# CHECK-INST: sh.eq %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x70,0xf3]
sh.eq %d15, %d15, %d0

# CHECK-INST: sh.eq %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x70,0xf3]
sh.eq %d15, %d15, %d1

# CHECK-INST: sh.eq %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x70,0xf3]
sh.eq %d15, %d15, %d14

# CHECK-INST: sh.eq %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x70,0xf3]
sh.eq %d15, %d15, %d15

# CHECK-INST: sh.eq %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xf0,0x06]
sh.eq %d0, %d0, -256

# CHECK-INST: sh.eq %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xf7,0x06]
sh.eq %d0, %d0, -129

# CHECK-INST: sh.eq %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xff,0x06]
sh.eq %d0, %d0, -1

# CHECK-INST: sh.eq %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xe0,0x06]
sh.eq %d0, %d0, 0

# CHECK-INST: sh.eq %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xe0,0x06]
sh.eq %d0, %d0, 1

# CHECK-INST: sh.eq %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xe8,0x06]
sh.eq %d0, %d0, 128

# CHECK-INST: sh.eq %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xef,0x06]
sh.eq %d0, %d0, 255

# CHECK-INST: sh.eq %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xf0,0x06]
sh.eq %d0, %d1, -256

# CHECK-INST: sh.eq %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xf7,0x06]
sh.eq %d0, %d1, -129

# CHECK-INST: sh.eq %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xff,0x06]
sh.eq %d0, %d1, -1

# CHECK-INST: sh.eq %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xe0,0x06]
sh.eq %d0, %d1, 0

# CHECK-INST: sh.eq %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xe0,0x06]
sh.eq %d0, %d1, 1

# CHECK-INST: sh.eq %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xe8,0x06]
sh.eq %d0, %d1, 128

# CHECK-INST: sh.eq %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xef,0x06]
sh.eq %d0, %d1, 255

# CHECK-INST: sh.eq %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xf0,0x06]
sh.eq %d0, %d14, -256

# CHECK-INST: sh.eq %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xf7,0x06]
sh.eq %d0, %d14, -129

# CHECK-INST: sh.eq %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xff,0x06]
sh.eq %d0, %d14, -1

# CHECK-INST: sh.eq %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xe0,0x06]
sh.eq %d0, %d14, 0

# CHECK-INST: sh.eq %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xe0,0x06]
sh.eq %d0, %d14, 1

# CHECK-INST: sh.eq %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xe8,0x06]
sh.eq %d0, %d14, 128

# CHECK-INST: sh.eq %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xef,0x06]
sh.eq %d0, %d14, 255

# CHECK-INST: sh.eq %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xf0,0x06]
sh.eq %d0, %d15, -256

# CHECK-INST: sh.eq %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xf7,0x06]
sh.eq %d0, %d15, -129

# CHECK-INST: sh.eq %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xff,0x06]
sh.eq %d0, %d15, -1

# CHECK-INST: sh.eq %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xe0,0x06]
sh.eq %d0, %d15, 0

# CHECK-INST: sh.eq %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xe0,0x06]
sh.eq %d0, %d15, 1

# CHECK-INST: sh.eq %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xe8,0x06]
sh.eq %d0, %d15, 128

# CHECK-INST: sh.eq %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xef,0x06]
sh.eq %d0, %d15, 255

# CHECK-INST: sh.eq %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xf0,0x16]
sh.eq %d1, %d0, -256

# CHECK-INST: sh.eq %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xf7,0x16]
sh.eq %d1, %d0, -129

# CHECK-INST: sh.eq %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xff,0x16]
sh.eq %d1, %d0, -1

# CHECK-INST: sh.eq %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xe0,0x16]
sh.eq %d1, %d0, 0

# CHECK-INST: sh.eq %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xe0,0x16]
sh.eq %d1, %d0, 1

# CHECK-INST: sh.eq %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xe8,0x16]
sh.eq %d1, %d0, 128

# CHECK-INST: sh.eq %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xef,0x16]
sh.eq %d1, %d0, 255

# CHECK-INST: sh.eq %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xf0,0x16]
sh.eq %d1, %d1, -256

# CHECK-INST: sh.eq %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xf7,0x16]
sh.eq %d1, %d1, -129

# CHECK-INST: sh.eq %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xff,0x16]
sh.eq %d1, %d1, -1

# CHECK-INST: sh.eq %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xe0,0x16]
sh.eq %d1, %d1, 0

# CHECK-INST: sh.eq %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xe0,0x16]
sh.eq %d1, %d1, 1

# CHECK-INST: sh.eq %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xe8,0x16]
sh.eq %d1, %d1, 128

# CHECK-INST: sh.eq %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xef,0x16]
sh.eq %d1, %d1, 255

# CHECK-INST: sh.eq %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xf0,0x16]
sh.eq %d1, %d14, -256

# CHECK-INST: sh.eq %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xf7,0x16]
sh.eq %d1, %d14, -129

# CHECK-INST: sh.eq %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xff,0x16]
sh.eq %d1, %d14, -1

# CHECK-INST: sh.eq %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xe0,0x16]
sh.eq %d1, %d14, 0

# CHECK-INST: sh.eq %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xe0,0x16]
sh.eq %d1, %d14, 1

# CHECK-INST: sh.eq %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xe8,0x16]
sh.eq %d1, %d14, 128

# CHECK-INST: sh.eq %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xef,0x16]
sh.eq %d1, %d14, 255

# CHECK-INST: sh.eq %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xf0,0x16]
sh.eq %d1, %d15, -256

# CHECK-INST: sh.eq %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xf7,0x16]
sh.eq %d1, %d15, -129

# CHECK-INST: sh.eq %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xff,0x16]
sh.eq %d1, %d15, -1

# CHECK-INST: sh.eq %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xe0,0x16]
sh.eq %d1, %d15, 0

# CHECK-INST: sh.eq %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xe0,0x16]
sh.eq %d1, %d15, 1

# CHECK-INST: sh.eq %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xe8,0x16]
sh.eq %d1, %d15, 128

# CHECK-INST: sh.eq %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xef,0x16]
sh.eq %d1, %d15, 255

# CHECK-INST: sh.eq %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xf0,0xe6]
sh.eq %d14, %d0, -256

# CHECK-INST: sh.eq %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xf7,0xe6]
sh.eq %d14, %d0, -129

# CHECK-INST: sh.eq %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xff,0xe6]
sh.eq %d14, %d0, -1

# CHECK-INST: sh.eq %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xe0,0xe6]
sh.eq %d14, %d0, 0

# CHECK-INST: sh.eq %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xe0,0xe6]
sh.eq %d14, %d0, 1

# CHECK-INST: sh.eq %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xe8,0xe6]
sh.eq %d14, %d0, 128

# CHECK-INST: sh.eq %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xef,0xe6]
sh.eq %d14, %d0, 255

# CHECK-INST: sh.eq %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xf0,0xe6]
sh.eq %d14, %d1, -256

# CHECK-INST: sh.eq %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xf7,0xe6]
sh.eq %d14, %d1, -129

# CHECK-INST: sh.eq %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xff,0xe6]
sh.eq %d14, %d1, -1

# CHECK-INST: sh.eq %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xe0,0xe6]
sh.eq %d14, %d1, 0

# CHECK-INST: sh.eq %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xe0,0xe6]
sh.eq %d14, %d1, 1

# CHECK-INST: sh.eq %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xe8,0xe6]
sh.eq %d14, %d1, 128

# CHECK-INST: sh.eq %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xef,0xe6]
sh.eq %d14, %d1, 255

# CHECK-INST: sh.eq %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xf0,0xe6]
sh.eq %d14, %d14, -256

# CHECK-INST: sh.eq %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xf7,0xe6]
sh.eq %d14, %d14, -129

# CHECK-INST: sh.eq %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xff,0xe6]
sh.eq %d14, %d14, -1

# CHECK-INST: sh.eq %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xe0,0xe6]
sh.eq %d14, %d14, 0

# CHECK-INST: sh.eq %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xe0,0xe6]
sh.eq %d14, %d14, 1

# CHECK-INST: sh.eq %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xe8,0xe6]
sh.eq %d14, %d14, 128

# CHECK-INST: sh.eq %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xef,0xe6]
sh.eq %d14, %d14, 255

# CHECK-INST: sh.eq %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xf0,0xe6]
sh.eq %d14, %d15, -256

# CHECK-INST: sh.eq %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xf7,0xe6]
sh.eq %d14, %d15, -129

# CHECK-INST: sh.eq %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xff,0xe6]
sh.eq %d14, %d15, -1

# CHECK-INST: sh.eq %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xe0,0xe6]
sh.eq %d14, %d15, 0

# CHECK-INST: sh.eq %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xe0,0xe6]
sh.eq %d14, %d15, 1

# CHECK-INST: sh.eq %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xe8,0xe6]
sh.eq %d14, %d15, 128

# CHECK-INST: sh.eq %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xef,0xe6]
sh.eq %d14, %d15, 255

# CHECK-INST: sh.eq %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0xf0,0xf6]
sh.eq %d15, %d0, -256

# CHECK-INST: sh.eq %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0xf7,0xf6]
sh.eq %d15, %d0, -129

# CHECK-INST: sh.eq %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0xff,0xf6]
sh.eq %d15, %d0, -1

# CHECK-INST: sh.eq %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0xe0,0xf6]
sh.eq %d15, %d0, 0

# CHECK-INST: sh.eq %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0xe0,0xf6]
sh.eq %d15, %d0, 1

# CHECK-INST: sh.eq %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0xe8,0xf6]
sh.eq %d15, %d0, 128

# CHECK-INST: sh.eq %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0xef,0xf6]
sh.eq %d15, %d0, 255

# CHECK-INST: sh.eq %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0xf0,0xf6]
sh.eq %d15, %d1, -256

# CHECK-INST: sh.eq %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0xf7,0xf6]
sh.eq %d15, %d1, -129

# CHECK-INST: sh.eq %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0xff,0xf6]
sh.eq %d15, %d1, -1

# CHECK-INST: sh.eq %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0xe0,0xf6]
sh.eq %d15, %d1, 0

# CHECK-INST: sh.eq %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0xe0,0xf6]
sh.eq %d15, %d1, 1

# CHECK-INST: sh.eq %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0xe8,0xf6]
sh.eq %d15, %d1, 128

# CHECK-INST: sh.eq %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0xef,0xf6]
sh.eq %d15, %d1, 255

# CHECK-INST: sh.eq %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0xf0,0xf6]
sh.eq %d15, %d14, -256

# CHECK-INST: sh.eq %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0xf7,0xf6]
sh.eq %d15, %d14, -129

# CHECK-INST: sh.eq %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0xff,0xf6]
sh.eq %d15, %d14, -1

# CHECK-INST: sh.eq %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0xe0,0xf6]
sh.eq %d15, %d14, 0

# CHECK-INST: sh.eq %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0xe0,0xf6]
sh.eq %d15, %d14, 1

# CHECK-INST: sh.eq %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0xe8,0xf6]
sh.eq %d15, %d14, 128

# CHECK-INST: sh.eq %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0xef,0xf6]
sh.eq %d15, %d14, 255

# CHECK-INST: sh.eq %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0xf0,0xf6]
sh.eq %d15, %d15, -256

# CHECK-INST: sh.eq %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0xf7,0xf6]
sh.eq %d15, %d15, -129

# CHECK-INST: sh.eq %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0xff,0xf6]
sh.eq %d15, %d15, -1

# CHECK-INST: sh.eq %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0xe0,0xf6]
sh.eq %d15, %d15, 0

# CHECK-INST: sh.eq %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0xe0,0xf6]
sh.eq %d15, %d15, 1

# CHECK-INST: sh.eq %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0xe8,0xf6]
sh.eq %d15, %d15, 128

# CHECK-INST: sh.eq %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0xef,0xf6]
sh.eq %d15, %d15, 255

# CHECK-INST: sh.ge %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0x03]
sh.ge %d0, %d0, %d0

# CHECK-INST: sh.ge %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0x03]
sh.ge %d0, %d0, %d1

# CHECK-INST: sh.ge %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0x03]
sh.ge %d0, %d0, %d14

# CHECK-INST: sh.ge %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0x03]
sh.ge %d0, %d0, %d15

# CHECK-INST: sh.ge %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0x03]
sh.ge %d0, %d1, %d0

# CHECK-INST: sh.ge %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0x03]
sh.ge %d0, %d1, %d1

# CHECK-INST: sh.ge %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0x03]
sh.ge %d0, %d1, %d14

# CHECK-INST: sh.ge %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0x03]
sh.ge %d0, %d1, %d15

# CHECK-INST: sh.ge %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0x03]
sh.ge %d0, %d14, %d0

# CHECK-INST: sh.ge %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0x03]
sh.ge %d0, %d14, %d1

# CHECK-INST: sh.ge %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0x03]
sh.ge %d0, %d14, %d14

# CHECK-INST: sh.ge %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0x03]
sh.ge %d0, %d14, %d15

# CHECK-INST: sh.ge %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0x03]
sh.ge %d0, %d15, %d0

# CHECK-INST: sh.ge %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0x03]
sh.ge %d0, %d15, %d1

# CHECK-INST: sh.ge %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0x03]
sh.ge %d0, %d15, %d14

# CHECK-INST: sh.ge %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0x03]
sh.ge %d0, %d15, %d15

# CHECK-INST: sh.ge %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0x13]
sh.ge %d1, %d0, %d0

# CHECK-INST: sh.ge %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0x13]
sh.ge %d1, %d0, %d1

# CHECK-INST: sh.ge %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0x13]
sh.ge %d1, %d0, %d14

# CHECK-INST: sh.ge %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0x13]
sh.ge %d1, %d0, %d15

# CHECK-INST: sh.ge %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0x13]
sh.ge %d1, %d1, %d0

# CHECK-INST: sh.ge %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0x13]
sh.ge %d1, %d1, %d1

# CHECK-INST: sh.ge %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0x13]
sh.ge %d1, %d1, %d14

# CHECK-INST: sh.ge %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0x13]
sh.ge %d1, %d1, %d15

# CHECK-INST: sh.ge %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0x13]
sh.ge %d1, %d14, %d0

# CHECK-INST: sh.ge %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0x13]
sh.ge %d1, %d14, %d1

# CHECK-INST: sh.ge %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0x13]
sh.ge %d1, %d14, %d14

# CHECK-INST: sh.ge %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0x13]
sh.ge %d1, %d14, %d15

# CHECK-INST: sh.ge %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0x13]
sh.ge %d1, %d15, %d0

# CHECK-INST: sh.ge %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0x13]
sh.ge %d1, %d15, %d1

# CHECK-INST: sh.ge %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0x13]
sh.ge %d1, %d15, %d14

# CHECK-INST: sh.ge %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0x13]
sh.ge %d1, %d15, %d15

# CHECK-INST: sh.ge %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0xe3]
sh.ge %d14, %d0, %d0

# CHECK-INST: sh.ge %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0xe3]
sh.ge %d14, %d0, %d1

# CHECK-INST: sh.ge %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0xe3]
sh.ge %d14, %d0, %d14

# CHECK-INST: sh.ge %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0xe3]
sh.ge %d14, %d0, %d15

# CHECK-INST: sh.ge %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0xe3]
sh.ge %d14, %d1, %d0

# CHECK-INST: sh.ge %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0xe3]
sh.ge %d14, %d1, %d1

# CHECK-INST: sh.ge %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0xe3]
sh.ge %d14, %d1, %d14

# CHECK-INST: sh.ge %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0xe3]
sh.ge %d14, %d1, %d15

# CHECK-INST: sh.ge %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0xe3]
sh.ge %d14, %d14, %d0

# CHECK-INST: sh.ge %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0xe3]
sh.ge %d14, %d14, %d1

# CHECK-INST: sh.ge %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0xe3]
sh.ge %d14, %d14, %d14

# CHECK-INST: sh.ge %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0xe3]
sh.ge %d14, %d14, %d15

# CHECK-INST: sh.ge %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0xe3]
sh.ge %d14, %d15, %d0

# CHECK-INST: sh.ge %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0xe3]
sh.ge %d14, %d15, %d1

# CHECK-INST: sh.ge %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0xe3]
sh.ge %d14, %d15, %d14

# CHECK-INST: sh.ge %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0xe3]
sh.ge %d14, %d15, %d15

# CHECK-INST: sh.ge %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xb0,0xf3]
sh.ge %d15, %d0, %d0

# CHECK-INST: sh.ge %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xb0,0xf3]
sh.ge %d15, %d0, %d1

# CHECK-INST: sh.ge %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xb0,0xf3]
sh.ge %d15, %d0, %d14

# CHECK-INST: sh.ge %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xb0,0xf3]
sh.ge %d15, %d0, %d15

# CHECK-INST: sh.ge %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xb0,0xf3]
sh.ge %d15, %d1, %d0

# CHECK-INST: sh.ge %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xb0,0xf3]
sh.ge %d15, %d1, %d1

# CHECK-INST: sh.ge %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xb0,0xf3]
sh.ge %d15, %d1, %d14

# CHECK-INST: sh.ge %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xb0,0xf3]
sh.ge %d15, %d1, %d15

# CHECK-INST: sh.ge %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xb0,0xf3]
sh.ge %d15, %d14, %d0

# CHECK-INST: sh.ge %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xb0,0xf3]
sh.ge %d15, %d14, %d1

# CHECK-INST: sh.ge %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xb0,0xf3]
sh.ge %d15, %d14, %d14

# CHECK-INST: sh.ge %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xb0,0xf3]
sh.ge %d15, %d14, %d15

# CHECK-INST: sh.ge %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xb0,0xf3]
sh.ge %d15, %d15, %d0

# CHECK-INST: sh.ge %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xb0,0xf3]
sh.ge %d15, %d15, %d1

# CHECK-INST: sh.ge %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xb0,0xf3]
sh.ge %d15, %d15, %d14

# CHECK-INST: sh.ge %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xb0,0xf3]
sh.ge %d15, %d15, %d15

# CHECK-INST: sh.ge %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0x07]
sh.ge %d0, %d0, -256

# CHECK-INST: sh.ge %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0x07]
sh.ge %d0, %d0, -129

# CHECK-INST: sh.ge %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0x07]
sh.ge %d0, %d0, -1

# CHECK-INST: sh.ge %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0x07]
sh.ge %d0, %d0, 0

# CHECK-INST: sh.ge %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0x07]
sh.ge %d0, %d0, 1

# CHECK-INST: sh.ge %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0x07]
sh.ge %d0, %d0, 128

# CHECK-INST: sh.ge %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0x07]
sh.ge %d0, %d0, 255

# CHECK-INST: sh.ge %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0x07]
sh.ge %d0, %d1, -256

# CHECK-INST: sh.ge %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0x07]
sh.ge %d0, %d1, -129

# CHECK-INST: sh.ge %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0x07]
sh.ge %d0, %d1, -1

# CHECK-INST: sh.ge %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0x07]
sh.ge %d0, %d1, 0

# CHECK-INST: sh.ge %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0x07]
sh.ge %d0, %d1, 1

# CHECK-INST: sh.ge %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0x07]
sh.ge %d0, %d1, 128

# CHECK-INST: sh.ge %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0x07]
sh.ge %d0, %d1, 255

# CHECK-INST: sh.ge %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0x07]
sh.ge %d0, %d14, -256

# CHECK-INST: sh.ge %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0x07]
sh.ge %d0, %d14, -129

# CHECK-INST: sh.ge %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0x07]
sh.ge %d0, %d14, -1

# CHECK-INST: sh.ge %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0x07]
sh.ge %d0, %d14, 0

# CHECK-INST: sh.ge %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0x07]
sh.ge %d0, %d14, 1

# CHECK-INST: sh.ge %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0x07]
sh.ge %d0, %d14, 128

# CHECK-INST: sh.ge %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0x07]
sh.ge %d0, %d14, 255

# CHECK-INST: sh.ge %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0x07]
sh.ge %d0, %d15, -256

# CHECK-INST: sh.ge %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0x07]
sh.ge %d0, %d15, -129

# CHECK-INST: sh.ge %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0x07]
sh.ge %d0, %d15, -1

# CHECK-INST: sh.ge %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0x07]
sh.ge %d0, %d15, 0

# CHECK-INST: sh.ge %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0x07]
sh.ge %d0, %d15, 1

# CHECK-INST: sh.ge %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0x07]
sh.ge %d0, %d15, 128

# CHECK-INST: sh.ge %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0x07]
sh.ge %d0, %d15, 255

# CHECK-INST: sh.ge %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0x17]
sh.ge %d1, %d0, -256

# CHECK-INST: sh.ge %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0x17]
sh.ge %d1, %d0, -129

# CHECK-INST: sh.ge %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0x17]
sh.ge %d1, %d0, -1

# CHECK-INST: sh.ge %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0x17]
sh.ge %d1, %d0, 0

# CHECK-INST: sh.ge %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0x17]
sh.ge %d1, %d0, 1

# CHECK-INST: sh.ge %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0x17]
sh.ge %d1, %d0, 128

# CHECK-INST: sh.ge %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0x17]
sh.ge %d1, %d0, 255

# CHECK-INST: sh.ge %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0x17]
sh.ge %d1, %d1, -256

# CHECK-INST: sh.ge %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0x17]
sh.ge %d1, %d1, -129

# CHECK-INST: sh.ge %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0x17]
sh.ge %d1, %d1, -1

# CHECK-INST: sh.ge %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0x17]
sh.ge %d1, %d1, 0

# CHECK-INST: sh.ge %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0x17]
sh.ge %d1, %d1, 1

# CHECK-INST: sh.ge %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0x17]
sh.ge %d1, %d1, 128

# CHECK-INST: sh.ge %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0x17]
sh.ge %d1, %d1, 255

# CHECK-INST: sh.ge %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0x17]
sh.ge %d1, %d14, -256

# CHECK-INST: sh.ge %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0x17]
sh.ge %d1, %d14, -129

# CHECK-INST: sh.ge %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0x17]
sh.ge %d1, %d14, -1

# CHECK-INST: sh.ge %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0x17]
sh.ge %d1, %d14, 0

# CHECK-INST: sh.ge %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0x17]
sh.ge %d1, %d14, 1

# CHECK-INST: sh.ge %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0x17]
sh.ge %d1, %d14, 128

# CHECK-INST: sh.ge %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0x17]
sh.ge %d1, %d14, 255

# CHECK-INST: sh.ge %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0x17]
sh.ge %d1, %d15, -256

# CHECK-INST: sh.ge %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0x17]
sh.ge %d1, %d15, -129

# CHECK-INST: sh.ge %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0x17]
sh.ge %d1, %d15, -1

# CHECK-INST: sh.ge %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0x17]
sh.ge %d1, %d15, 0

# CHECK-INST: sh.ge %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0x17]
sh.ge %d1, %d15, 1

# CHECK-INST: sh.ge %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0x17]
sh.ge %d1, %d15, 128

# CHECK-INST: sh.ge %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0x17]
sh.ge %d1, %d15, 255

# CHECK-INST: sh.ge %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0xe7]
sh.ge %d14, %d0, -256

# CHECK-INST: sh.ge %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0xe7]
sh.ge %d14, %d0, -129

# CHECK-INST: sh.ge %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0xe7]
sh.ge %d14, %d0, -1

# CHECK-INST: sh.ge %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0xe7]
sh.ge %d14, %d0, 0

# CHECK-INST: sh.ge %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0xe7]
sh.ge %d14, %d0, 1

# CHECK-INST: sh.ge %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0xe7]
sh.ge %d14, %d0, 128

# CHECK-INST: sh.ge %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0xe7]
sh.ge %d14, %d0, 255

# CHECK-INST: sh.ge %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0xe7]
sh.ge %d14, %d1, -256

# CHECK-INST: sh.ge %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0xe7]
sh.ge %d14, %d1, -129

# CHECK-INST: sh.ge %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0xe7]
sh.ge %d14, %d1, -1

# CHECK-INST: sh.ge %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0xe7]
sh.ge %d14, %d1, 0

# CHECK-INST: sh.ge %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0xe7]
sh.ge %d14, %d1, 1

# CHECK-INST: sh.ge %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0xe7]
sh.ge %d14, %d1, 128

# CHECK-INST: sh.ge %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0xe7]
sh.ge %d14, %d1, 255

# CHECK-INST: sh.ge %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0xe7]
sh.ge %d14, %d14, -256

# CHECK-INST: sh.ge %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0xe7]
sh.ge %d14, %d14, -129

# CHECK-INST: sh.ge %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0xe7]
sh.ge %d14, %d14, -1

# CHECK-INST: sh.ge %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0xe7]
sh.ge %d14, %d14, 0

# CHECK-INST: sh.ge %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0xe7]
sh.ge %d14, %d14, 1

# CHECK-INST: sh.ge %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0xe7]
sh.ge %d14, %d14, 128

# CHECK-INST: sh.ge %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0xe7]
sh.ge %d14, %d14, 255

# CHECK-INST: sh.ge %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0xe7]
sh.ge %d14, %d15, -256

# CHECK-INST: sh.ge %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0xe7]
sh.ge %d14, %d15, -129

# CHECK-INST: sh.ge %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0xe7]
sh.ge %d14, %d15, -1

# CHECK-INST: sh.ge %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0xe7]
sh.ge %d14, %d15, 0

# CHECK-INST: sh.ge %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0xe7]
sh.ge %d14, %d15, 1

# CHECK-INST: sh.ge %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0xe7]
sh.ge %d14, %d15, 128

# CHECK-INST: sh.ge %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0xe7]
sh.ge %d14, %d15, 255

# CHECK-INST: sh.ge %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x70,0xf7]
sh.ge %d15, %d0, -256

# CHECK-INST: sh.ge %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x77,0xf7]
sh.ge %d15, %d0, -129

# CHECK-INST: sh.ge %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x7f,0xf7]
sh.ge %d15, %d0, -1

# CHECK-INST: sh.ge %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x60,0xf7]
sh.ge %d15, %d0, 0

# CHECK-INST: sh.ge %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x60,0xf7]
sh.ge %d15, %d0, 1

# CHECK-INST: sh.ge %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x68,0xf7]
sh.ge %d15, %d0, 128

# CHECK-INST: sh.ge %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x6f,0xf7]
sh.ge %d15, %d0, 255

# CHECK-INST: sh.ge %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x70,0xf7]
sh.ge %d15, %d1, -256

# CHECK-INST: sh.ge %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x77,0xf7]
sh.ge %d15, %d1, -129

# CHECK-INST: sh.ge %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x7f,0xf7]
sh.ge %d15, %d1, -1

# CHECK-INST: sh.ge %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x60,0xf7]
sh.ge %d15, %d1, 0

# CHECK-INST: sh.ge %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x60,0xf7]
sh.ge %d15, %d1, 1

# CHECK-INST: sh.ge %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x68,0xf7]
sh.ge %d15, %d1, 128

# CHECK-INST: sh.ge %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x6f,0xf7]
sh.ge %d15, %d1, 255

# CHECK-INST: sh.ge %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x70,0xf7]
sh.ge %d15, %d14, -256

# CHECK-INST: sh.ge %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x77,0xf7]
sh.ge %d15, %d14, -129

# CHECK-INST: sh.ge %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x7f,0xf7]
sh.ge %d15, %d14, -1

# CHECK-INST: sh.ge %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x60,0xf7]
sh.ge %d15, %d14, 0

# CHECK-INST: sh.ge %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x60,0xf7]
sh.ge %d15, %d14, 1

# CHECK-INST: sh.ge %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x68,0xf7]
sh.ge %d15, %d14, 128

# CHECK-INST: sh.ge %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x6f,0xf7]
sh.ge %d15, %d14, 255

# CHECK-INST: sh.ge %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x70,0xf7]
sh.ge %d15, %d15, -256

# CHECK-INST: sh.ge %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x77,0xf7]
sh.ge %d15, %d15, -129

# CHECK-INST: sh.ge %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x7f,0xf7]
sh.ge %d15, %d15, -1

# CHECK-INST: sh.ge %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x60,0xf7]
sh.ge %d15, %d15, 0

# CHECK-INST: sh.ge %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x60,0xf7]
sh.ge %d15, %d15, 1

# CHECK-INST: sh.ge %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x68,0xf7]
sh.ge %d15, %d15, 128

# CHECK-INST: sh.ge %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x6f,0xf7]
sh.ge %d15, %d15, 255

# CHECK-INST: sh.ge.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0x03]
sh.ge.u %d0, %d0, %d0

# CHECK-INST: sh.ge.u %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0x03]
sh.ge.u %d0, %d0, %d1

# CHECK-INST: sh.ge.u %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0x03]
sh.ge.u %d0, %d0, %d14

# CHECK-INST: sh.ge.u %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0x03]
sh.ge.u %d0, %d0, %d15

# CHECK-INST: sh.ge.u %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xc0,0x03]
sh.ge.u %d0, %d1, %d0

# CHECK-INST: sh.ge.u %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xc0,0x03]
sh.ge.u %d0, %d1, %d1

# CHECK-INST: sh.ge.u %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xc0,0x03]
sh.ge.u %d0, %d1, %d14

# CHECK-INST: sh.ge.u %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xc0,0x03]
sh.ge.u %d0, %d1, %d15

# CHECK-INST: sh.ge.u %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xc0,0x03]
sh.ge.u %d0, %d14, %d0

# CHECK-INST: sh.ge.u %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xc0,0x03]
sh.ge.u %d0, %d14, %d1

# CHECK-INST: sh.ge.u %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xc0,0x03]
sh.ge.u %d0, %d14, %d14

# CHECK-INST: sh.ge.u %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xc0,0x03]
sh.ge.u %d0, %d14, %d15

# CHECK-INST: sh.ge.u %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xc0,0x03]
sh.ge.u %d0, %d15, %d0

# CHECK-INST: sh.ge.u %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xc0,0x03]
sh.ge.u %d0, %d15, %d1

# CHECK-INST: sh.ge.u %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xc0,0x03]
sh.ge.u %d0, %d15, %d14

# CHECK-INST: sh.ge.u %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xc0,0x03]
sh.ge.u %d0, %d15, %d15

# CHECK-INST: sh.ge.u %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0x13]
sh.ge.u %d1, %d0, %d0

# CHECK-INST: sh.ge.u %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0x13]
sh.ge.u %d1, %d0, %d1

# CHECK-INST: sh.ge.u %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0x13]
sh.ge.u %d1, %d0, %d14

# CHECK-INST: sh.ge.u %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0x13]
sh.ge.u %d1, %d0, %d15

# CHECK-INST: sh.ge.u %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xc0,0x13]
sh.ge.u %d1, %d1, %d0

# CHECK-INST: sh.ge.u %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xc0,0x13]
sh.ge.u %d1, %d1, %d1

# CHECK-INST: sh.ge.u %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xc0,0x13]
sh.ge.u %d1, %d1, %d14

# CHECK-INST: sh.ge.u %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xc0,0x13]
sh.ge.u %d1, %d1, %d15

# CHECK-INST: sh.ge.u %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xc0,0x13]
sh.ge.u %d1, %d14, %d0

# CHECK-INST: sh.ge.u %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xc0,0x13]
sh.ge.u %d1, %d14, %d1

# CHECK-INST: sh.ge.u %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xc0,0x13]
sh.ge.u %d1, %d14, %d14

# CHECK-INST: sh.ge.u %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xc0,0x13]
sh.ge.u %d1, %d14, %d15

# CHECK-INST: sh.ge.u %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xc0,0x13]
sh.ge.u %d1, %d15, %d0

# CHECK-INST: sh.ge.u %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xc0,0x13]
sh.ge.u %d1, %d15, %d1

# CHECK-INST: sh.ge.u %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xc0,0x13]
sh.ge.u %d1, %d15, %d14

# CHECK-INST: sh.ge.u %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xc0,0x13]
sh.ge.u %d1, %d15, %d15

# CHECK-INST: sh.ge.u %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0xe3]
sh.ge.u %d14, %d0, %d0

# CHECK-INST: sh.ge.u %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0xe3]
sh.ge.u %d14, %d0, %d1

# CHECK-INST: sh.ge.u %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0xe3]
sh.ge.u %d14, %d0, %d14

# CHECK-INST: sh.ge.u %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0xe3]
sh.ge.u %d14, %d0, %d15

# CHECK-INST: sh.ge.u %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xc0,0xe3]
sh.ge.u %d14, %d1, %d0

# CHECK-INST: sh.ge.u %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xc0,0xe3]
sh.ge.u %d14, %d1, %d1

# CHECK-INST: sh.ge.u %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xc0,0xe3]
sh.ge.u %d14, %d1, %d14

# CHECK-INST: sh.ge.u %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xc0,0xe3]
sh.ge.u %d14, %d1, %d15

# CHECK-INST: sh.ge.u %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xc0,0xe3]
sh.ge.u %d14, %d14, %d0

# CHECK-INST: sh.ge.u %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xc0,0xe3]
sh.ge.u %d14, %d14, %d1

# CHECK-INST: sh.ge.u %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xc0,0xe3]
sh.ge.u %d14, %d14, %d14

# CHECK-INST: sh.ge.u %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xc0,0xe3]
sh.ge.u %d14, %d14, %d15

# CHECK-INST: sh.ge.u %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xc0,0xe3]
sh.ge.u %d14, %d15, %d0

# CHECK-INST: sh.ge.u %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xc0,0xe3]
sh.ge.u %d14, %d15, %d1

# CHECK-INST: sh.ge.u %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xc0,0xe3]
sh.ge.u %d14, %d15, %d14

# CHECK-INST: sh.ge.u %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xc0,0xe3]
sh.ge.u %d14, %d15, %d15

# CHECK-INST: sh.ge.u %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xc0,0xf3]
sh.ge.u %d15, %d0, %d0

# CHECK-INST: sh.ge.u %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xc0,0xf3]
sh.ge.u %d15, %d0, %d1

# CHECK-INST: sh.ge.u %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xc0,0xf3]
sh.ge.u %d15, %d0, %d14

# CHECK-INST: sh.ge.u %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xc0,0xf3]
sh.ge.u %d15, %d0, %d15

# CHECK-INST: sh.ge.u %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xc0,0xf3]
sh.ge.u %d15, %d1, %d0

# CHECK-INST: sh.ge.u %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xc0,0xf3]
sh.ge.u %d15, %d1, %d1

# CHECK-INST: sh.ge.u %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xc0,0xf3]
sh.ge.u %d15, %d1, %d14

# CHECK-INST: sh.ge.u %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xc0,0xf3]
sh.ge.u %d15, %d1, %d15

# CHECK-INST: sh.ge.u %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xc0,0xf3]
sh.ge.u %d15, %d14, %d0

# CHECK-INST: sh.ge.u %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xc0,0xf3]
sh.ge.u %d15, %d14, %d1

# CHECK-INST: sh.ge.u %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xc0,0xf3]
sh.ge.u %d15, %d14, %d14

# CHECK-INST: sh.ge.u %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xc0,0xf3]
sh.ge.u %d15, %d14, %d15

# CHECK-INST: sh.ge.u %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xc0,0xf3]
sh.ge.u %d15, %d15, %d0

# CHECK-INST: sh.ge.u %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xc0,0xf3]
sh.ge.u %d15, %d15, %d1

# CHECK-INST: sh.ge.u %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xc0,0xf3]
sh.ge.u %d15, %d15, %d14

# CHECK-INST: sh.ge.u %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xc0,0xf3]
sh.ge.u %d15, %d15, %d15

# CHECK-INST: sh.ge.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x90,0x07]
sh.ge.u %d0, %d0, 271

# CHECK-INST: sh.ge.u %d0, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x9f,0x07]
sh.ge.u %d0, %d0, 496

# CHECK-INST: sh.ge.u %d0, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x9f,0x07]
sh.ge.u %d0, %d0, 511

# CHECK-INST: sh.ge.u %d0, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x90,0x07]
sh.ge.u %d0, %d1, 271

# CHECK-INST: sh.ge.u %d0, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x9f,0x07]
sh.ge.u %d0, %d1, 496

# CHECK-INST: sh.ge.u %d0, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x9f,0x07]
sh.ge.u %d0, %d1, 511

# CHECK-INST: sh.ge.u %d0, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x90,0x07]
sh.ge.u %d0, %d14, 271

# CHECK-INST: sh.ge.u %d0, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x9f,0x07]
sh.ge.u %d0, %d14, 496

# CHECK-INST: sh.ge.u %d0, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x9f,0x07]
sh.ge.u %d0, %d14, 511

# CHECK-INST: sh.ge.u %d0, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x90,0x07]
sh.ge.u %d0, %d15, 271

# CHECK-INST: sh.ge.u %d0, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x9f,0x07]
sh.ge.u %d0, %d15, 496

# CHECK-INST: sh.ge.u %d0, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x9f,0x07]
sh.ge.u %d0, %d15, 511

# CHECK-INST: sh.ge.u %d1, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x90,0x17]
sh.ge.u %d1, %d0, 271

# CHECK-INST: sh.ge.u %d1, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x9f,0x17]
sh.ge.u %d1, %d0, 496

# CHECK-INST: sh.ge.u %d1, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x9f,0x17]
sh.ge.u %d1, %d0, 511

# CHECK-INST: sh.ge.u %d1, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x90,0x17]
sh.ge.u %d1, %d1, 271

# CHECK-INST: sh.ge.u %d1, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x9f,0x17]
sh.ge.u %d1, %d1, 496

# CHECK-INST: sh.ge.u %d1, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x9f,0x17]
sh.ge.u %d1, %d1, 511

# CHECK-INST: sh.ge.u %d1, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x90,0x17]
sh.ge.u %d1, %d14, 271

# CHECK-INST: sh.ge.u %d1, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x9f,0x17]
sh.ge.u %d1, %d14, 496

# CHECK-INST: sh.ge.u %d1, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x9f,0x17]
sh.ge.u %d1, %d14, 511

# CHECK-INST: sh.ge.u %d1, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x90,0x17]
sh.ge.u %d1, %d15, 271

# CHECK-INST: sh.ge.u %d1, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x9f,0x17]
sh.ge.u %d1, %d15, 496

# CHECK-INST: sh.ge.u %d1, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x9f,0x17]
sh.ge.u %d1, %d15, 511

# CHECK-INST: sh.ge.u %d14, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x90,0xe7]
sh.ge.u %d14, %d0, 271

# CHECK-INST: sh.ge.u %d14, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x9f,0xe7]
sh.ge.u %d14, %d0, 496

# CHECK-INST: sh.ge.u %d14, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x9f,0xe7]
sh.ge.u %d14, %d0, 511

# CHECK-INST: sh.ge.u %d14, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x90,0xe7]
sh.ge.u %d14, %d1, 271

# CHECK-INST: sh.ge.u %d14, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x9f,0xe7]
sh.ge.u %d14, %d1, 496

# CHECK-INST: sh.ge.u %d14, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x9f,0xe7]
sh.ge.u %d14, %d1, 511

# CHECK-INST: sh.ge.u %d14, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x90,0xe7]
sh.ge.u %d14, %d14, 271

# CHECK-INST: sh.ge.u %d14, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x9f,0xe7]
sh.ge.u %d14, %d14, 496

# CHECK-INST: sh.ge.u %d14, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x9f,0xe7]
sh.ge.u %d14, %d14, 511

# CHECK-INST: sh.ge.u %d14, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x90,0xe7]
sh.ge.u %d14, %d15, 271

# CHECK-INST: sh.ge.u %d14, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x9f,0xe7]
sh.ge.u %d14, %d15, 496

# CHECK-INST: sh.ge.u %d14, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x9f,0xe7]
sh.ge.u %d14, %d15, 511

# CHECK-INST: sh.ge.u %d15, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x90,0xf7]
sh.ge.u %d15, %d0, 271

# CHECK-INST: sh.ge.u %d15, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x9f,0xf7]
sh.ge.u %d15, %d0, 496

# CHECK-INST: sh.ge.u %d15, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x9f,0xf7]
sh.ge.u %d15, %d0, 511

# CHECK-INST: sh.ge.u %d15, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x90,0xf7]
sh.ge.u %d15, %d1, 271

# CHECK-INST: sh.ge.u %d15, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x9f,0xf7]
sh.ge.u %d15, %d1, 496

# CHECK-INST: sh.ge.u %d15, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x9f,0xf7]
sh.ge.u %d15, %d1, 511

# CHECK-INST: sh.ge.u %d15, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x90,0xf7]
sh.ge.u %d15, %d14, 271

# CHECK-INST: sh.ge.u %d15, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x9f,0xf7]
sh.ge.u %d15, %d14, 496

# CHECK-INST: sh.ge.u %d15, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x9f,0xf7]
sh.ge.u %d15, %d14, 511

# CHECK-INST: sh.ge.u %d15, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x90,0xf7]
sh.ge.u %d15, %d15, 271

# CHECK-INST: sh.ge.u %d15, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x9f,0xf7]
sh.ge.u %d15, %d15, 496

# CHECK-INST: sh.ge.u %d15, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x9f,0xf7]
sh.ge.u %d15, %d15, 511

# CHECK-INST: sh.lt %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0x03]
sh.lt %d0, %d0, %d0

# CHECK-INST: sh.lt %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0x03]
sh.lt %d0, %d0, %d1

# CHECK-INST: sh.lt %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0x03]
sh.lt %d0, %d0, %d14

# CHECK-INST: sh.lt %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0x03]
sh.lt %d0, %d0, %d15

# CHECK-INST: sh.lt %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0x03]
sh.lt %d0, %d1, %d0

# CHECK-INST: sh.lt %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0x03]
sh.lt %d0, %d1, %d1

# CHECK-INST: sh.lt %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0x03]
sh.lt %d0, %d1, %d14

# CHECK-INST: sh.lt %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0x03]
sh.lt %d0, %d1, %d15

# CHECK-INST: sh.lt %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0x03]
sh.lt %d0, %d14, %d0

# CHECK-INST: sh.lt %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0x03]
sh.lt %d0, %d14, %d1

# CHECK-INST: sh.lt %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0x03]
sh.lt %d0, %d14, %d14

# CHECK-INST: sh.lt %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0x03]
sh.lt %d0, %d14, %d15

# CHECK-INST: sh.lt %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0x03]
sh.lt %d0, %d15, %d0

# CHECK-INST: sh.lt %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0x03]
sh.lt %d0, %d15, %d1

# CHECK-INST: sh.lt %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0x03]
sh.lt %d0, %d15, %d14

# CHECK-INST: sh.lt %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0x03]
sh.lt %d0, %d15, %d15

# CHECK-INST: sh.lt %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0x13]
sh.lt %d1, %d0, %d0

# CHECK-INST: sh.lt %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0x13]
sh.lt %d1, %d0, %d1

# CHECK-INST: sh.lt %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0x13]
sh.lt %d1, %d0, %d14

# CHECK-INST: sh.lt %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0x13]
sh.lt %d1, %d0, %d15

# CHECK-INST: sh.lt %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0x13]
sh.lt %d1, %d1, %d0

# CHECK-INST: sh.lt %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0x13]
sh.lt %d1, %d1, %d1

# CHECK-INST: sh.lt %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0x13]
sh.lt %d1, %d1, %d14

# CHECK-INST: sh.lt %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0x13]
sh.lt %d1, %d1, %d15

# CHECK-INST: sh.lt %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0x13]
sh.lt %d1, %d14, %d0

# CHECK-INST: sh.lt %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0x13]
sh.lt %d1, %d14, %d1

# CHECK-INST: sh.lt %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0x13]
sh.lt %d1, %d14, %d14

# CHECK-INST: sh.lt %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0x13]
sh.lt %d1, %d14, %d15

# CHECK-INST: sh.lt %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0x13]
sh.lt %d1, %d15, %d0

# CHECK-INST: sh.lt %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0x13]
sh.lt %d1, %d15, %d1

# CHECK-INST: sh.lt %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0x13]
sh.lt %d1, %d15, %d14

# CHECK-INST: sh.lt %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0x13]
sh.lt %d1, %d15, %d15

# CHECK-INST: sh.lt %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0xe3]
sh.lt %d14, %d0, %d0

# CHECK-INST: sh.lt %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0xe3]
sh.lt %d14, %d0, %d1

# CHECK-INST: sh.lt %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0xe3]
sh.lt %d14, %d0, %d14

# CHECK-INST: sh.lt %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0xe3]
sh.lt %d14, %d0, %d15

# CHECK-INST: sh.lt %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0xe3]
sh.lt %d14, %d1, %d0

# CHECK-INST: sh.lt %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0xe3]
sh.lt %d14, %d1, %d1

# CHECK-INST: sh.lt %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0xe3]
sh.lt %d14, %d1, %d14

# CHECK-INST: sh.lt %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0xe3]
sh.lt %d14, %d1, %d15

# CHECK-INST: sh.lt %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0xe3]
sh.lt %d14, %d14, %d0

# CHECK-INST: sh.lt %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0xe3]
sh.lt %d14, %d14, %d1

# CHECK-INST: sh.lt %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0xe3]
sh.lt %d14, %d14, %d14

# CHECK-INST: sh.lt %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0xe3]
sh.lt %d14, %d14, %d15

# CHECK-INST: sh.lt %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0xe3]
sh.lt %d14, %d15, %d0

# CHECK-INST: sh.lt %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0xe3]
sh.lt %d14, %d15, %d1

# CHECK-INST: sh.lt %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0xe3]
sh.lt %d14, %d15, %d14

# CHECK-INST: sh.lt %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0xe3]
sh.lt %d14, %d15, %d15

# CHECK-INST: sh.lt %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x90,0xf3]
sh.lt %d15, %d0, %d0

# CHECK-INST: sh.lt %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x90,0xf3]
sh.lt %d15, %d0, %d1

# CHECK-INST: sh.lt %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x90,0xf3]
sh.lt %d15, %d0, %d14

# CHECK-INST: sh.lt %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x90,0xf3]
sh.lt %d15, %d0, %d15

# CHECK-INST: sh.lt %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x90,0xf3]
sh.lt %d15, %d1, %d0

# CHECK-INST: sh.lt %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x90,0xf3]
sh.lt %d15, %d1, %d1

# CHECK-INST: sh.lt %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x90,0xf3]
sh.lt %d15, %d1, %d14

# CHECK-INST: sh.lt %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x90,0xf3]
sh.lt %d15, %d1, %d15

# CHECK-INST: sh.lt %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x90,0xf3]
sh.lt %d15, %d14, %d0

# CHECK-INST: sh.lt %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x90,0xf3]
sh.lt %d15, %d14, %d1

# CHECK-INST: sh.lt %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x90,0xf3]
sh.lt %d15, %d14, %d14

# CHECK-INST: sh.lt %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x90,0xf3]
sh.lt %d15, %d14, %d15

# CHECK-INST: sh.lt %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x90,0xf3]
sh.lt %d15, %d15, %d0

# CHECK-INST: sh.lt %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x90,0xf3]
sh.lt %d15, %d15, %d1

# CHECK-INST: sh.lt %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x90,0xf3]
sh.lt %d15, %d15, %d14

# CHECK-INST: sh.lt %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x90,0xf3]
sh.lt %d15, %d15, %d15

# CHECK-INST: sh.lt %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0x07]
sh.lt %d0, %d0, -256

# CHECK-INST: sh.lt %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0x07]
sh.lt %d0, %d0, -129

# CHECK-INST: sh.lt %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0x07]
sh.lt %d0, %d0, -1

# CHECK-INST: sh.lt %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0x07]
sh.lt %d0, %d0, 0

# CHECK-INST: sh.lt %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0x07]
sh.lt %d0, %d0, 1

# CHECK-INST: sh.lt %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0x07]
sh.lt %d0, %d0, 128

# CHECK-INST: sh.lt %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0x07]
sh.lt %d0, %d0, 255

# CHECK-INST: sh.lt %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0x07]
sh.lt %d0, %d1, -256

# CHECK-INST: sh.lt %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0x07]
sh.lt %d0, %d1, -129

# CHECK-INST: sh.lt %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0x07]
sh.lt %d0, %d1, -1

# CHECK-INST: sh.lt %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0x07]
sh.lt %d0, %d1, 0

# CHECK-INST: sh.lt %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0x07]
sh.lt %d0, %d1, 1

# CHECK-INST: sh.lt %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0x07]
sh.lt %d0, %d1, 128

# CHECK-INST: sh.lt %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0x07]
sh.lt %d0, %d1, 255

# CHECK-INST: sh.lt %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0x07]
sh.lt %d0, %d14, -256

# CHECK-INST: sh.lt %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0x07]
sh.lt %d0, %d14, -129

# CHECK-INST: sh.lt %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0x07]
sh.lt %d0, %d14, -1

# CHECK-INST: sh.lt %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0x07]
sh.lt %d0, %d14, 0

# CHECK-INST: sh.lt %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0x07]
sh.lt %d0, %d14, 1

# CHECK-INST: sh.lt %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0x07]
sh.lt %d0, %d14, 128

# CHECK-INST: sh.lt %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0x07]
sh.lt %d0, %d14, 255

# CHECK-INST: sh.lt %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0x07]
sh.lt %d0, %d15, -256

# CHECK-INST: sh.lt %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0x07]
sh.lt %d0, %d15, -129

# CHECK-INST: sh.lt %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0x07]
sh.lt %d0, %d15, -1

# CHECK-INST: sh.lt %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0x07]
sh.lt %d0, %d15, 0

# CHECK-INST: sh.lt %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0x07]
sh.lt %d0, %d15, 1

# CHECK-INST: sh.lt %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0x07]
sh.lt %d0, %d15, 128

# CHECK-INST: sh.lt %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0x07]
sh.lt %d0, %d15, 255

# CHECK-INST: sh.lt %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0x17]
sh.lt %d1, %d0, -256

# CHECK-INST: sh.lt %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0x17]
sh.lt %d1, %d0, -129

# CHECK-INST: sh.lt %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0x17]
sh.lt %d1, %d0, -1

# CHECK-INST: sh.lt %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0x17]
sh.lt %d1, %d0, 0

# CHECK-INST: sh.lt %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0x17]
sh.lt %d1, %d0, 1

# CHECK-INST: sh.lt %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0x17]
sh.lt %d1, %d0, 128

# CHECK-INST: sh.lt %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0x17]
sh.lt %d1, %d0, 255

# CHECK-INST: sh.lt %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0x17]
sh.lt %d1, %d1, -256

# CHECK-INST: sh.lt %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0x17]
sh.lt %d1, %d1, -129

# CHECK-INST: sh.lt %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0x17]
sh.lt %d1, %d1, -1

# CHECK-INST: sh.lt %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0x17]
sh.lt %d1, %d1, 0

# CHECK-INST: sh.lt %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0x17]
sh.lt %d1, %d1, 1

# CHECK-INST: sh.lt %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0x17]
sh.lt %d1, %d1, 128

# CHECK-INST: sh.lt %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0x17]
sh.lt %d1, %d1, 255

# CHECK-INST: sh.lt %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0x17]
sh.lt %d1, %d14, -256

# CHECK-INST: sh.lt %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0x17]
sh.lt %d1, %d14, -129

# CHECK-INST: sh.lt %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0x17]
sh.lt %d1, %d14, -1

# CHECK-INST: sh.lt %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0x17]
sh.lt %d1, %d14, 0

# CHECK-INST: sh.lt %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0x17]
sh.lt %d1, %d14, 1

# CHECK-INST: sh.lt %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0x17]
sh.lt %d1, %d14, 128

# CHECK-INST: sh.lt %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0x17]
sh.lt %d1, %d14, 255

# CHECK-INST: sh.lt %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0x17]
sh.lt %d1, %d15, -256

# CHECK-INST: sh.lt %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0x17]
sh.lt %d1, %d15, -129

# CHECK-INST: sh.lt %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0x17]
sh.lt %d1, %d15, -1

# CHECK-INST: sh.lt %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0x17]
sh.lt %d1, %d15, 0

# CHECK-INST: sh.lt %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0x17]
sh.lt %d1, %d15, 1

# CHECK-INST: sh.lt %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0x17]
sh.lt %d1, %d15, 128

# CHECK-INST: sh.lt %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0x17]
sh.lt %d1, %d15, 255

# CHECK-INST: sh.lt %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0xe7]
sh.lt %d14, %d0, -256

# CHECK-INST: sh.lt %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0xe7]
sh.lt %d14, %d0, -129

# CHECK-INST: sh.lt %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0xe7]
sh.lt %d14, %d0, -1

# CHECK-INST: sh.lt %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0xe7]
sh.lt %d14, %d0, 0

# CHECK-INST: sh.lt %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0xe7]
sh.lt %d14, %d0, 1

# CHECK-INST: sh.lt %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0xe7]
sh.lt %d14, %d0, 128

# CHECK-INST: sh.lt %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0xe7]
sh.lt %d14, %d0, 255

# CHECK-INST: sh.lt %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0xe7]
sh.lt %d14, %d1, -256

# CHECK-INST: sh.lt %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0xe7]
sh.lt %d14, %d1, -129

# CHECK-INST: sh.lt %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0xe7]
sh.lt %d14, %d1, -1

# CHECK-INST: sh.lt %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0xe7]
sh.lt %d14, %d1, 0

# CHECK-INST: sh.lt %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0xe7]
sh.lt %d14, %d1, 1

# CHECK-INST: sh.lt %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0xe7]
sh.lt %d14, %d1, 128

# CHECK-INST: sh.lt %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0xe7]
sh.lt %d14, %d1, 255

# CHECK-INST: sh.lt %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0xe7]
sh.lt %d14, %d14, -256

# CHECK-INST: sh.lt %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0xe7]
sh.lt %d14, %d14, -129

# CHECK-INST: sh.lt %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0xe7]
sh.lt %d14, %d14, -1

# CHECK-INST: sh.lt %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0xe7]
sh.lt %d14, %d14, 0

# CHECK-INST: sh.lt %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0xe7]
sh.lt %d14, %d14, 1

# CHECK-INST: sh.lt %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0xe7]
sh.lt %d14, %d14, 128

# CHECK-INST: sh.lt %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0xe7]
sh.lt %d14, %d14, 255

# CHECK-INST: sh.lt %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0xe7]
sh.lt %d14, %d15, -256

# CHECK-INST: sh.lt %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0xe7]
sh.lt %d14, %d15, -129

# CHECK-INST: sh.lt %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0xe7]
sh.lt %d14, %d15, -1

# CHECK-INST: sh.lt %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0xe7]
sh.lt %d14, %d15, 0

# CHECK-INST: sh.lt %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0xe7]
sh.lt %d14, %d15, 1

# CHECK-INST: sh.lt %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0xe7]
sh.lt %d14, %d15, 128

# CHECK-INST: sh.lt %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0xe7]
sh.lt %d14, %d15, 255

# CHECK-INST: sh.lt %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x30,0xf7]
sh.lt %d15, %d0, -256

# CHECK-INST: sh.lt %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x37,0xf7]
sh.lt %d15, %d0, -129

# CHECK-INST: sh.lt %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x3f,0xf7]
sh.lt %d15, %d0, -1

# CHECK-INST: sh.lt %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x20,0xf7]
sh.lt %d15, %d0, 0

# CHECK-INST: sh.lt %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x20,0xf7]
sh.lt %d15, %d0, 1

# CHECK-INST: sh.lt %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x28,0xf7]
sh.lt %d15, %d0, 128

# CHECK-INST: sh.lt %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x2f,0xf7]
sh.lt %d15, %d0, 255

# CHECK-INST: sh.lt %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x30,0xf7]
sh.lt %d15, %d1, -256

# CHECK-INST: sh.lt %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x37,0xf7]
sh.lt %d15, %d1, -129

# CHECK-INST: sh.lt %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x3f,0xf7]
sh.lt %d15, %d1, -1

# CHECK-INST: sh.lt %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x20,0xf7]
sh.lt %d15, %d1, 0

# CHECK-INST: sh.lt %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x20,0xf7]
sh.lt %d15, %d1, 1

# CHECK-INST: sh.lt %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x28,0xf7]
sh.lt %d15, %d1, 128

# CHECK-INST: sh.lt %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x2f,0xf7]
sh.lt %d15, %d1, 255

# CHECK-INST: sh.lt %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x30,0xf7]
sh.lt %d15, %d14, -256

# CHECK-INST: sh.lt %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x37,0xf7]
sh.lt %d15, %d14, -129

# CHECK-INST: sh.lt %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x3f,0xf7]
sh.lt %d15, %d14, -1

# CHECK-INST: sh.lt %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x20,0xf7]
sh.lt %d15, %d14, 0

# CHECK-INST: sh.lt %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x20,0xf7]
sh.lt %d15, %d14, 1

# CHECK-INST: sh.lt %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x28,0xf7]
sh.lt %d15, %d14, 128

# CHECK-INST: sh.lt %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x2f,0xf7]
sh.lt %d15, %d14, 255

# CHECK-INST: sh.lt %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x30,0xf7]
sh.lt %d15, %d15, -256

# CHECK-INST: sh.lt %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x37,0xf7]
sh.lt %d15, %d15, -129

# CHECK-INST: sh.lt %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x3f,0xf7]
sh.lt %d15, %d15, -1

# CHECK-INST: sh.lt %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x20,0xf7]
sh.lt %d15, %d15, 0

# CHECK-INST: sh.lt %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x20,0xf7]
sh.lt %d15, %d15, 1

# CHECK-INST: sh.lt %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x28,0xf7]
sh.lt %d15, %d15, 128

# CHECK-INST: sh.lt %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x2f,0xf7]
sh.lt %d15, %d15, 255

# CHECK-INST: sh.lt.u %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x03]
sh.lt.u %d0, %d0, %d0

# CHECK-INST: sh.lt.u %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0x03]
sh.lt.u %d0, %d0, %d1

# CHECK-INST: sh.lt.u %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0x03]
sh.lt.u %d0, %d0, %d14

# CHECK-INST: sh.lt.u %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0x03]
sh.lt.u %d0, %d0, %d15

# CHECK-INST: sh.lt.u %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0x03]
sh.lt.u %d0, %d1, %d0

# CHECK-INST: sh.lt.u %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0x03]
sh.lt.u %d0, %d1, %d1

# CHECK-INST: sh.lt.u %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0x03]
sh.lt.u %d0, %d1, %d14

# CHECK-INST: sh.lt.u %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0x03]
sh.lt.u %d0, %d1, %d15

# CHECK-INST: sh.lt.u %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0x03]
sh.lt.u %d0, %d14, %d0

# CHECK-INST: sh.lt.u %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0x03]
sh.lt.u %d0, %d14, %d1

# CHECK-INST: sh.lt.u %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0x03]
sh.lt.u %d0, %d14, %d14

# CHECK-INST: sh.lt.u %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0x03]
sh.lt.u %d0, %d14, %d15

# CHECK-INST: sh.lt.u %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0x03]
sh.lt.u %d0, %d15, %d0

# CHECK-INST: sh.lt.u %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0x03]
sh.lt.u %d0, %d15, %d1

# CHECK-INST: sh.lt.u %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0x03]
sh.lt.u %d0, %d15, %d14

# CHECK-INST: sh.lt.u %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0x03]
sh.lt.u %d0, %d15, %d15

# CHECK-INST: sh.lt.u %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0x13]
sh.lt.u %d1, %d0, %d0

# CHECK-INST: sh.lt.u %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0x13]
sh.lt.u %d1, %d0, %d1

# CHECK-INST: sh.lt.u %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0x13]
sh.lt.u %d1, %d0, %d14

# CHECK-INST: sh.lt.u %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0x13]
sh.lt.u %d1, %d0, %d15

# CHECK-INST: sh.lt.u %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0x13]
sh.lt.u %d1, %d1, %d0

# CHECK-INST: sh.lt.u %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0x13]
sh.lt.u %d1, %d1, %d1

# CHECK-INST: sh.lt.u %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0x13]
sh.lt.u %d1, %d1, %d14

# CHECK-INST: sh.lt.u %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0x13]
sh.lt.u %d1, %d1, %d15

# CHECK-INST: sh.lt.u %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0x13]
sh.lt.u %d1, %d14, %d0

# CHECK-INST: sh.lt.u %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0x13]
sh.lt.u %d1, %d14, %d1

# CHECK-INST: sh.lt.u %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0x13]
sh.lt.u %d1, %d14, %d14

# CHECK-INST: sh.lt.u %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0x13]
sh.lt.u %d1, %d14, %d15

# CHECK-INST: sh.lt.u %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0x13]
sh.lt.u %d1, %d15, %d0

# CHECK-INST: sh.lt.u %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0x13]
sh.lt.u %d1, %d15, %d1

# CHECK-INST: sh.lt.u %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0x13]
sh.lt.u %d1, %d15, %d14

# CHECK-INST: sh.lt.u %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0x13]
sh.lt.u %d1, %d15, %d15

# CHECK-INST: sh.lt.u %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0xe3]
sh.lt.u %d14, %d0, %d0

# CHECK-INST: sh.lt.u %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0xe3]
sh.lt.u %d14, %d0, %d1

# CHECK-INST: sh.lt.u %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0xe3]
sh.lt.u %d14, %d0, %d14

# CHECK-INST: sh.lt.u %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0xe3]
sh.lt.u %d14, %d0, %d15

# CHECK-INST: sh.lt.u %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0xe3]
sh.lt.u %d14, %d1, %d0

# CHECK-INST: sh.lt.u %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0xe3]
sh.lt.u %d14, %d1, %d1

# CHECK-INST: sh.lt.u %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0xe3]
sh.lt.u %d14, %d1, %d14

# CHECK-INST: sh.lt.u %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0xe3]
sh.lt.u %d14, %d1, %d15

# CHECK-INST: sh.lt.u %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0xe3]
sh.lt.u %d14, %d14, %d0

# CHECK-INST: sh.lt.u %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0xe3]
sh.lt.u %d14, %d14, %d1

# CHECK-INST: sh.lt.u %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0xe3]
sh.lt.u %d14, %d14, %d14

# CHECK-INST: sh.lt.u %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0xe3]
sh.lt.u %d14, %d14, %d15

# CHECK-INST: sh.lt.u %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0xe3]
sh.lt.u %d14, %d15, %d0

# CHECK-INST: sh.lt.u %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0xe3]
sh.lt.u %d14, %d15, %d1

# CHECK-INST: sh.lt.u %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0xe3]
sh.lt.u %d14, %d15, %d14

# CHECK-INST: sh.lt.u %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0xe3]
sh.lt.u %d14, %d15, %d15

# CHECK-INST: sh.lt.u %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0xa0,0xf3]
sh.lt.u %d15, %d0, %d0

# CHECK-INST: sh.lt.u %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0xa0,0xf3]
sh.lt.u %d15, %d0, %d1

# CHECK-INST: sh.lt.u %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0xa0,0xf3]
sh.lt.u %d15, %d0, %d14

# CHECK-INST: sh.lt.u %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0xa0,0xf3]
sh.lt.u %d15, %d0, %d15

# CHECK-INST: sh.lt.u %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0xa0,0xf3]
sh.lt.u %d15, %d1, %d0

# CHECK-INST: sh.lt.u %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0xa0,0xf3]
sh.lt.u %d15, %d1, %d1

# CHECK-INST: sh.lt.u %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0xa0,0xf3]
sh.lt.u %d15, %d1, %d14

# CHECK-INST: sh.lt.u %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0xa0,0xf3]
sh.lt.u %d15, %d1, %d15

# CHECK-INST: sh.lt.u %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0xa0,0xf3]
sh.lt.u %d15, %d14, %d0

# CHECK-INST: sh.lt.u %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0xa0,0xf3]
sh.lt.u %d15, %d14, %d1

# CHECK-INST: sh.lt.u %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0xa0,0xf3]
sh.lt.u %d15, %d14, %d14

# CHECK-INST: sh.lt.u %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0xa0,0xf3]
sh.lt.u %d15, %d14, %d15

# CHECK-INST: sh.lt.u %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0xa0,0xf3]
sh.lt.u %d15, %d15, %d0

# CHECK-INST: sh.lt.u %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0xa0,0xf3]
sh.lt.u %d15, %d15, %d1

# CHECK-INST: sh.lt.u %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0xa0,0xf3]
sh.lt.u %d15, %d15, %d14

# CHECK-INST: sh.lt.u %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0xa0,0xf3]
sh.lt.u %d15, %d15, %d15

# CHECK-INST: sh.lt.u %d0, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x50,0x07]
sh.lt.u %d0, %d0, 271

# CHECK-INST: sh.lt.u %d0, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x5f,0x07]
sh.lt.u %d0, %d0, 496

# CHECK-INST: sh.lt.u %d0, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x5f,0x07]
sh.lt.u %d0, %d0, 511

# CHECK-INST: sh.lt.u %d0, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x50,0x07]
sh.lt.u %d0, %d1, 271

# CHECK-INST: sh.lt.u %d0, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x5f,0x07]
sh.lt.u %d0, %d1, 496

# CHECK-INST: sh.lt.u %d0, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x5f,0x07]
sh.lt.u %d0, %d1, 511

# CHECK-INST: sh.lt.u %d0, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x50,0x07]
sh.lt.u %d0, %d14, 271

# CHECK-INST: sh.lt.u %d0, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x5f,0x07]
sh.lt.u %d0, %d14, 496

# CHECK-INST: sh.lt.u %d0, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x5f,0x07]
sh.lt.u %d0, %d14, 511

# CHECK-INST: sh.lt.u %d0, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x50,0x07]
sh.lt.u %d0, %d15, 271

# CHECK-INST: sh.lt.u %d0, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x5f,0x07]
sh.lt.u %d0, %d15, 496

# CHECK-INST: sh.lt.u %d0, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x5f,0x07]
sh.lt.u %d0, %d15, 511

# CHECK-INST: sh.lt.u %d1, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x50,0x17]
sh.lt.u %d1, %d0, 271

# CHECK-INST: sh.lt.u %d1, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x5f,0x17]
sh.lt.u %d1, %d0, 496

# CHECK-INST: sh.lt.u %d1, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x5f,0x17]
sh.lt.u %d1, %d0, 511

# CHECK-INST: sh.lt.u %d1, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x50,0x17]
sh.lt.u %d1, %d1, 271

# CHECK-INST: sh.lt.u %d1, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x5f,0x17]
sh.lt.u %d1, %d1, 496

# CHECK-INST: sh.lt.u %d1, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x5f,0x17]
sh.lt.u %d1, %d1, 511

# CHECK-INST: sh.lt.u %d1, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x50,0x17]
sh.lt.u %d1, %d14, 271

# CHECK-INST: sh.lt.u %d1, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x5f,0x17]
sh.lt.u %d1, %d14, 496

# CHECK-INST: sh.lt.u %d1, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x5f,0x17]
sh.lt.u %d1, %d14, 511

# CHECK-INST: sh.lt.u %d1, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x50,0x17]
sh.lt.u %d1, %d15, 271

# CHECK-INST: sh.lt.u %d1, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x5f,0x17]
sh.lt.u %d1, %d15, 496

# CHECK-INST: sh.lt.u %d1, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x5f,0x17]
sh.lt.u %d1, %d15, 511

# CHECK-INST: sh.lt.u %d14, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x50,0xe7]
sh.lt.u %d14, %d0, 271

# CHECK-INST: sh.lt.u %d14, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x5f,0xe7]
sh.lt.u %d14, %d0, 496

# CHECK-INST: sh.lt.u %d14, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x5f,0xe7]
sh.lt.u %d14, %d0, 511

# CHECK-INST: sh.lt.u %d14, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x50,0xe7]
sh.lt.u %d14, %d1, 271

# CHECK-INST: sh.lt.u %d14, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x5f,0xe7]
sh.lt.u %d14, %d1, 496

# CHECK-INST: sh.lt.u %d14, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x5f,0xe7]
sh.lt.u %d14, %d1, 511

# CHECK-INST: sh.lt.u %d14, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x50,0xe7]
sh.lt.u %d14, %d14, 271

# CHECK-INST: sh.lt.u %d14, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x5f,0xe7]
sh.lt.u %d14, %d14, 496

# CHECK-INST: sh.lt.u %d14, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x5f,0xe7]
sh.lt.u %d14, %d14, 511

# CHECK-INST: sh.lt.u %d14, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x50,0xe7]
sh.lt.u %d14, %d15, 271

# CHECK-INST: sh.lt.u %d14, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x5f,0xe7]
sh.lt.u %d14, %d15, 496

# CHECK-INST: sh.lt.u %d14, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x5f,0xe7]
sh.lt.u %d14, %d15, 511

# CHECK-INST: sh.lt.u %d15, %d0, 271
# CHECK: encoding: [0x8b,0xf0,0x50,0xf7]
sh.lt.u %d15, %d0, 271

# CHECK-INST: sh.lt.u %d15, %d0, 496
# CHECK: encoding: [0x8b,0x00,0x5f,0xf7]
sh.lt.u %d15, %d0, 496

# CHECK-INST: sh.lt.u %d15, %d0, 511
# CHECK: encoding: [0x8b,0xf0,0x5f,0xf7]
sh.lt.u %d15, %d0, 511

# CHECK-INST: sh.lt.u %d15, %d1, 271
# CHECK: encoding: [0x8b,0xf1,0x50,0xf7]
sh.lt.u %d15, %d1, 271

# CHECK-INST: sh.lt.u %d15, %d1, 496
# CHECK: encoding: [0x8b,0x01,0x5f,0xf7]
sh.lt.u %d15, %d1, 496

# CHECK-INST: sh.lt.u %d15, %d1, 511
# CHECK: encoding: [0x8b,0xf1,0x5f,0xf7]
sh.lt.u %d15, %d1, 511

# CHECK-INST: sh.lt.u %d15, %d14, 271
# CHECK: encoding: [0x8b,0xfe,0x50,0xf7]
sh.lt.u %d15, %d14, 271

# CHECK-INST: sh.lt.u %d15, %d14, 496
# CHECK: encoding: [0x8b,0x0e,0x5f,0xf7]
sh.lt.u %d15, %d14, 496

# CHECK-INST: sh.lt.u %d15, %d14, 511
# CHECK: encoding: [0x8b,0xfe,0x5f,0xf7]
sh.lt.u %d15, %d14, 511

# CHECK-INST: sh.lt.u %d15, %d15, 271
# CHECK: encoding: [0x8b,0xff,0x50,0xf7]
sh.lt.u %d15, %d15, 271

# CHECK-INST: sh.lt.u %d15, %d15, 496
# CHECK: encoding: [0x8b,0x0f,0x5f,0xf7]
sh.lt.u %d15, %d15, 496

# CHECK-INST: sh.lt.u %d15, %d15, 511
# CHECK: encoding: [0x8b,0xff,0x5f,0xf7]
sh.lt.u %d15, %d15, 511

# CHECK-INST: sh.ne %d0, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x03]
sh.ne %d0, %d0, %d0

# CHECK-INST: sh.ne %d0, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0x03]
sh.ne %d0, %d0, %d1

# CHECK-INST: sh.ne %d0, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0x03]
sh.ne %d0, %d0, %d14

# CHECK-INST: sh.ne %d0, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0x03]
sh.ne %d0, %d0, %d15

# CHECK-INST: sh.ne %d0, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0x03]
sh.ne %d0, %d1, %d0

# CHECK-INST: sh.ne %d0, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0x03]
sh.ne %d0, %d1, %d1

# CHECK-INST: sh.ne %d0, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0x03]
sh.ne %d0, %d1, %d14

# CHECK-INST: sh.ne %d0, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0x03]
sh.ne %d0, %d1, %d15

# CHECK-INST: sh.ne %d0, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0x03]
sh.ne %d0, %d14, %d0

# CHECK-INST: sh.ne %d0, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0x03]
sh.ne %d0, %d14, %d1

# CHECK-INST: sh.ne %d0, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0x03]
sh.ne %d0, %d14, %d14

# CHECK-INST: sh.ne %d0, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0x03]
sh.ne %d0, %d14, %d15

# CHECK-INST: sh.ne %d0, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0x03]
sh.ne %d0, %d15, %d0

# CHECK-INST: sh.ne %d0, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0x03]
sh.ne %d0, %d15, %d1

# CHECK-INST: sh.ne %d0, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0x03]
sh.ne %d0, %d15, %d14

# CHECK-INST: sh.ne %d0, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0x03]
sh.ne %d0, %d15, %d15

# CHECK-INST: sh.ne %d1, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0x13]
sh.ne %d1, %d0, %d0

# CHECK-INST: sh.ne %d1, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0x13]
sh.ne %d1, %d0, %d1

# CHECK-INST: sh.ne %d1, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0x13]
sh.ne %d1, %d0, %d14

# CHECK-INST: sh.ne %d1, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0x13]
sh.ne %d1, %d0, %d15

# CHECK-INST: sh.ne %d1, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0x13]
sh.ne %d1, %d1, %d0

# CHECK-INST: sh.ne %d1, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0x13]
sh.ne %d1, %d1, %d1

# CHECK-INST: sh.ne %d1, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0x13]
sh.ne %d1, %d1, %d14

# CHECK-INST: sh.ne %d1, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0x13]
sh.ne %d1, %d1, %d15

# CHECK-INST: sh.ne %d1, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0x13]
sh.ne %d1, %d14, %d0

# CHECK-INST: sh.ne %d1, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0x13]
sh.ne %d1, %d14, %d1

# CHECK-INST: sh.ne %d1, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0x13]
sh.ne %d1, %d14, %d14

# CHECK-INST: sh.ne %d1, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0x13]
sh.ne %d1, %d14, %d15

# CHECK-INST: sh.ne %d1, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0x13]
sh.ne %d1, %d15, %d0

# CHECK-INST: sh.ne %d1, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0x13]
sh.ne %d1, %d15, %d1

# CHECK-INST: sh.ne %d1, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0x13]
sh.ne %d1, %d15, %d14

# CHECK-INST: sh.ne %d1, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0x13]
sh.ne %d1, %d15, %d15

# CHECK-INST: sh.ne %d14, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0xe3]
sh.ne %d14, %d0, %d0

# CHECK-INST: sh.ne %d14, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0xe3]
sh.ne %d14, %d0, %d1

# CHECK-INST: sh.ne %d14, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0xe3]
sh.ne %d14, %d0, %d14

# CHECK-INST: sh.ne %d14, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0xe3]
sh.ne %d14, %d0, %d15

# CHECK-INST: sh.ne %d14, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0xe3]
sh.ne %d14, %d1, %d0

# CHECK-INST: sh.ne %d14, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0xe3]
sh.ne %d14, %d1, %d1

# CHECK-INST: sh.ne %d14, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0xe3]
sh.ne %d14, %d1, %d14

# CHECK-INST: sh.ne %d14, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0xe3]
sh.ne %d14, %d1, %d15

# CHECK-INST: sh.ne %d14, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0xe3]
sh.ne %d14, %d14, %d0

# CHECK-INST: sh.ne %d14, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0xe3]
sh.ne %d14, %d14, %d1

# CHECK-INST: sh.ne %d14, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0xe3]
sh.ne %d14, %d14, %d14

# CHECK-INST: sh.ne %d14, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0xe3]
sh.ne %d14, %d14, %d15

# CHECK-INST: sh.ne %d14, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0xe3]
sh.ne %d14, %d15, %d0

# CHECK-INST: sh.ne %d14, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0xe3]
sh.ne %d14, %d15, %d1

# CHECK-INST: sh.ne %d14, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0xe3]
sh.ne %d14, %d15, %d14

# CHECK-INST: sh.ne %d14, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0xe3]
sh.ne %d14, %d15, %d15

# CHECK-INST: sh.ne %d15, %d0, %d0
# CHECK: encoding: [0x0b,0x00,0x80,0xf3]
sh.ne %d15, %d0, %d0

# CHECK-INST: sh.ne %d15, %d0, %d1
# CHECK: encoding: [0x0b,0x10,0x80,0xf3]
sh.ne %d15, %d0, %d1

# CHECK-INST: sh.ne %d15, %d0, %d14
# CHECK: encoding: [0x0b,0xe0,0x80,0xf3]
sh.ne %d15, %d0, %d14

# CHECK-INST: sh.ne %d15, %d0, %d15
# CHECK: encoding: [0x0b,0xf0,0x80,0xf3]
sh.ne %d15, %d0, %d15

# CHECK-INST: sh.ne %d15, %d1, %d0
# CHECK: encoding: [0x0b,0x01,0x80,0xf3]
sh.ne %d15, %d1, %d0

# CHECK-INST: sh.ne %d15, %d1, %d1
# CHECK: encoding: [0x0b,0x11,0x80,0xf3]
sh.ne %d15, %d1, %d1

# CHECK-INST: sh.ne %d15, %d1, %d14
# CHECK: encoding: [0x0b,0xe1,0x80,0xf3]
sh.ne %d15, %d1, %d14

# CHECK-INST: sh.ne %d15, %d1, %d15
# CHECK: encoding: [0x0b,0xf1,0x80,0xf3]
sh.ne %d15, %d1, %d15

# CHECK-INST: sh.ne %d15, %d14, %d0
# CHECK: encoding: [0x0b,0x0e,0x80,0xf3]
sh.ne %d15, %d14, %d0

# CHECK-INST: sh.ne %d15, %d14, %d1
# CHECK: encoding: [0x0b,0x1e,0x80,0xf3]
sh.ne %d15, %d14, %d1

# CHECK-INST: sh.ne %d15, %d14, %d14
# CHECK: encoding: [0x0b,0xee,0x80,0xf3]
sh.ne %d15, %d14, %d14

# CHECK-INST: sh.ne %d15, %d14, %d15
# CHECK: encoding: [0x0b,0xfe,0x80,0xf3]
sh.ne %d15, %d14, %d15

# CHECK-INST: sh.ne %d15, %d15, %d0
# CHECK: encoding: [0x0b,0x0f,0x80,0xf3]
sh.ne %d15, %d15, %d0

# CHECK-INST: sh.ne %d15, %d15, %d1
# CHECK: encoding: [0x0b,0x1f,0x80,0xf3]
sh.ne %d15, %d15, %d1

# CHECK-INST: sh.ne %d15, %d15, %d14
# CHECK: encoding: [0x0b,0xef,0x80,0xf3]
sh.ne %d15, %d15, %d14

# CHECK-INST: sh.ne %d15, %d15, %d15
# CHECK: encoding: [0x0b,0xff,0x80,0xf3]
sh.ne %d15, %d15, %d15

# CHECK-INST: sh.ne %d0, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x07]
sh.ne %d0, %d0, -256

# CHECK-INST: sh.ne %d0, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0x07]
sh.ne %d0, %d0, -129

# CHECK-INST: sh.ne %d0, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0x07]
sh.ne %d0, %d0, -1

# CHECK-INST: sh.ne %d0, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0x07]
sh.ne %d0, %d0, 0

# CHECK-INST: sh.ne %d0, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0x07]
sh.ne %d0, %d0, 1

# CHECK-INST: sh.ne %d0, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0x07]
sh.ne %d0, %d0, 128

# CHECK-INST: sh.ne %d0, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0x07]
sh.ne %d0, %d0, 255

# CHECK-INST: sh.ne %d0, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0x07]
sh.ne %d0, %d1, -256

# CHECK-INST: sh.ne %d0, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0x07]
sh.ne %d0, %d1, -129

# CHECK-INST: sh.ne %d0, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0x07]
sh.ne %d0, %d1, -1

# CHECK-INST: sh.ne %d0, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0x07]
sh.ne %d0, %d1, 0

# CHECK-INST: sh.ne %d0, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0x07]
sh.ne %d0, %d1, 1

# CHECK-INST: sh.ne %d0, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0x07]
sh.ne %d0, %d1, 128

# CHECK-INST: sh.ne %d0, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0x07]
sh.ne %d0, %d1, 255

# CHECK-INST: sh.ne %d0, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0x07]
sh.ne %d0, %d14, -256

# CHECK-INST: sh.ne %d0, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0x07]
sh.ne %d0, %d14, -129

# CHECK-INST: sh.ne %d0, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0x07]
sh.ne %d0, %d14, -1

# CHECK-INST: sh.ne %d0, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0x07]
sh.ne %d0, %d14, 0

# CHECK-INST: sh.ne %d0, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0x07]
sh.ne %d0, %d14, 1

# CHECK-INST: sh.ne %d0, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0x07]
sh.ne %d0, %d14, 128

# CHECK-INST: sh.ne %d0, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0x07]
sh.ne %d0, %d14, 255

# CHECK-INST: sh.ne %d0, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0x07]
sh.ne %d0, %d15, -256

# CHECK-INST: sh.ne %d0, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0x07]
sh.ne %d0, %d15, -129

# CHECK-INST: sh.ne %d0, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0x07]
sh.ne %d0, %d15, -1

# CHECK-INST: sh.ne %d0, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0x07]
sh.ne %d0, %d15, 0

# CHECK-INST: sh.ne %d0, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0x07]
sh.ne %d0, %d15, 1

# CHECK-INST: sh.ne %d0, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0x07]
sh.ne %d0, %d15, 128

# CHECK-INST: sh.ne %d0, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0x07]
sh.ne %d0, %d15, 255

# CHECK-INST: sh.ne %d1, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0x17]
sh.ne %d1, %d0, -256

# CHECK-INST: sh.ne %d1, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0x17]
sh.ne %d1, %d0, -129

# CHECK-INST: sh.ne %d1, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0x17]
sh.ne %d1, %d0, -1

# CHECK-INST: sh.ne %d1, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0x17]
sh.ne %d1, %d0, 0

# CHECK-INST: sh.ne %d1, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0x17]
sh.ne %d1, %d0, 1

# CHECK-INST: sh.ne %d1, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0x17]
sh.ne %d1, %d0, 128

# CHECK-INST: sh.ne %d1, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0x17]
sh.ne %d1, %d0, 255

# CHECK-INST: sh.ne %d1, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0x17]
sh.ne %d1, %d1, -256

# CHECK-INST: sh.ne %d1, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0x17]
sh.ne %d1, %d1, -129

# CHECK-INST: sh.ne %d1, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0x17]
sh.ne %d1, %d1, -1

# CHECK-INST: sh.ne %d1, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0x17]
sh.ne %d1, %d1, 0

# CHECK-INST: sh.ne %d1, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0x17]
sh.ne %d1, %d1, 1

# CHECK-INST: sh.ne %d1, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0x17]
sh.ne %d1, %d1, 128

# CHECK-INST: sh.ne %d1, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0x17]
sh.ne %d1, %d1, 255

# CHECK-INST: sh.ne %d1, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0x17]
sh.ne %d1, %d14, -256

# CHECK-INST: sh.ne %d1, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0x17]
sh.ne %d1, %d14, -129

# CHECK-INST: sh.ne %d1, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0x17]
sh.ne %d1, %d14, -1

# CHECK-INST: sh.ne %d1, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0x17]
sh.ne %d1, %d14, 0

# CHECK-INST: sh.ne %d1, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0x17]
sh.ne %d1, %d14, 1

# CHECK-INST: sh.ne %d1, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0x17]
sh.ne %d1, %d14, 128

# CHECK-INST: sh.ne %d1, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0x17]
sh.ne %d1, %d14, 255

# CHECK-INST: sh.ne %d1, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0x17]
sh.ne %d1, %d15, -256

# CHECK-INST: sh.ne %d1, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0x17]
sh.ne %d1, %d15, -129

# CHECK-INST: sh.ne %d1, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0x17]
sh.ne %d1, %d15, -1

# CHECK-INST: sh.ne %d1, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0x17]
sh.ne %d1, %d15, 0

# CHECK-INST: sh.ne %d1, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0x17]
sh.ne %d1, %d15, 1

# CHECK-INST: sh.ne %d1, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0x17]
sh.ne %d1, %d15, 128

# CHECK-INST: sh.ne %d1, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0x17]
sh.ne %d1, %d15, 255

# CHECK-INST: sh.ne %d14, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0xe7]
sh.ne %d14, %d0, -256

# CHECK-INST: sh.ne %d14, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0xe7]
sh.ne %d14, %d0, -129

# CHECK-INST: sh.ne %d14, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0xe7]
sh.ne %d14, %d0, -1

# CHECK-INST: sh.ne %d14, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0xe7]
sh.ne %d14, %d0, 0

# CHECK-INST: sh.ne %d14, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0xe7]
sh.ne %d14, %d0, 1

# CHECK-INST: sh.ne %d14, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0xe7]
sh.ne %d14, %d0, 128

# CHECK-INST: sh.ne %d14, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0xe7]
sh.ne %d14, %d0, 255

# CHECK-INST: sh.ne %d14, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0xe7]
sh.ne %d14, %d1, -256

# CHECK-INST: sh.ne %d14, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0xe7]
sh.ne %d14, %d1, -129

# CHECK-INST: sh.ne %d14, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0xe7]
sh.ne %d14, %d1, -1

# CHECK-INST: sh.ne %d14, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0xe7]
sh.ne %d14, %d1, 0

# CHECK-INST: sh.ne %d14, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0xe7]
sh.ne %d14, %d1, 1

# CHECK-INST: sh.ne %d14, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0xe7]
sh.ne %d14, %d1, 128

# CHECK-INST: sh.ne %d14, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0xe7]
sh.ne %d14, %d1, 255

# CHECK-INST: sh.ne %d14, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0xe7]
sh.ne %d14, %d14, -256

# CHECK-INST: sh.ne %d14, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0xe7]
sh.ne %d14, %d14, -129

# CHECK-INST: sh.ne %d14, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0xe7]
sh.ne %d14, %d14, -1

# CHECK-INST: sh.ne %d14, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0xe7]
sh.ne %d14, %d14, 0

# CHECK-INST: sh.ne %d14, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0xe7]
sh.ne %d14, %d14, 1

# CHECK-INST: sh.ne %d14, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0xe7]
sh.ne %d14, %d14, 128

# CHECK-INST: sh.ne %d14, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0xe7]
sh.ne %d14, %d14, 255

# CHECK-INST: sh.ne %d14, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0xe7]
sh.ne %d14, %d15, -256

# CHECK-INST: sh.ne %d14, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0xe7]
sh.ne %d14, %d15, -129

# CHECK-INST: sh.ne %d14, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0xe7]
sh.ne %d14, %d15, -1

# CHECK-INST: sh.ne %d14, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0xe7]
sh.ne %d14, %d15, 0

# CHECK-INST: sh.ne %d14, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0xe7]
sh.ne %d14, %d15, 1

# CHECK-INST: sh.ne %d14, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0xe7]
sh.ne %d14, %d15, 128

# CHECK-INST: sh.ne %d14, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0xe7]
sh.ne %d14, %d15, 255

# CHECK-INST: sh.ne %d15, %d0, -256
# CHECK: encoding: [0x8b,0x00,0x10,0xf7]
sh.ne %d15, %d0, -256

# CHECK-INST: sh.ne %d15, %d0, -129
# CHECK: encoding: [0x8b,0xf0,0x17,0xf7]
sh.ne %d15, %d0, -129

# CHECK-INST: sh.ne %d15, %d0, -1
# CHECK: encoding: [0x8b,0xf0,0x1f,0xf7]
sh.ne %d15, %d0, -1

# CHECK-INST: sh.ne %d15, %d0, 0
# CHECK: encoding: [0x8b,0x00,0x00,0xf7]
sh.ne %d15, %d0, 0

# CHECK-INST: sh.ne %d15, %d0, 1
# CHECK: encoding: [0x8b,0x10,0x00,0xf7]
sh.ne %d15, %d0, 1

# CHECK-INST: sh.ne %d15, %d0, 128
# CHECK: encoding: [0x8b,0x00,0x08,0xf7]
sh.ne %d15, %d0, 128

# CHECK-INST: sh.ne %d15, %d0, 255
# CHECK: encoding: [0x8b,0xf0,0x0f,0xf7]
sh.ne %d15, %d0, 255

# CHECK-INST: sh.ne %d15, %d1, -256
# CHECK: encoding: [0x8b,0x01,0x10,0xf7]
sh.ne %d15, %d1, -256

# CHECK-INST: sh.ne %d15, %d1, -129
# CHECK: encoding: [0x8b,0xf1,0x17,0xf7]
sh.ne %d15, %d1, -129

# CHECK-INST: sh.ne %d15, %d1, -1
# CHECK: encoding: [0x8b,0xf1,0x1f,0xf7]
sh.ne %d15, %d1, -1

# CHECK-INST: sh.ne %d15, %d1, 0
# CHECK: encoding: [0x8b,0x01,0x00,0xf7]
sh.ne %d15, %d1, 0

# CHECK-INST: sh.ne %d15, %d1, 1
# CHECK: encoding: [0x8b,0x11,0x00,0xf7]
sh.ne %d15, %d1, 1

# CHECK-INST: sh.ne %d15, %d1, 128
# CHECK: encoding: [0x8b,0x01,0x08,0xf7]
sh.ne %d15, %d1, 128

# CHECK-INST: sh.ne %d15, %d1, 255
# CHECK: encoding: [0x8b,0xf1,0x0f,0xf7]
sh.ne %d15, %d1, 255

# CHECK-INST: sh.ne %d15, %d14, -256
# CHECK: encoding: [0x8b,0x0e,0x10,0xf7]
sh.ne %d15, %d14, -256

# CHECK-INST: sh.ne %d15, %d14, -129
# CHECK: encoding: [0x8b,0xfe,0x17,0xf7]
sh.ne %d15, %d14, -129

# CHECK-INST: sh.ne %d15, %d14, -1
# CHECK: encoding: [0x8b,0xfe,0x1f,0xf7]
sh.ne %d15, %d14, -1

# CHECK-INST: sh.ne %d15, %d14, 0
# CHECK: encoding: [0x8b,0x0e,0x00,0xf7]
sh.ne %d15, %d14, 0

# CHECK-INST: sh.ne %d15, %d14, 1
# CHECK: encoding: [0x8b,0x1e,0x00,0xf7]
sh.ne %d15, %d14, 1

# CHECK-INST: sh.ne %d15, %d14, 128
# CHECK: encoding: [0x8b,0x0e,0x08,0xf7]
sh.ne %d15, %d14, 128

# CHECK-INST: sh.ne %d15, %d14, 255
# CHECK: encoding: [0x8b,0xfe,0x0f,0xf7]
sh.ne %d15, %d14, 255

# CHECK-INST: sh.ne %d15, %d15, -256
# CHECK: encoding: [0x8b,0x0f,0x10,0xf7]
sh.ne %d15, %d15, -256

# CHECK-INST: sh.ne %d15, %d15, -129
# CHECK: encoding: [0x8b,0xff,0x17,0xf7]
sh.ne %d15, %d15, -129

# CHECK-INST: sh.ne %d15, %d15, -1
# CHECK: encoding: [0x8b,0xff,0x1f,0xf7]
sh.ne %d15, %d15, -1

# CHECK-INST: sh.ne %d15, %d15, 0
# CHECK: encoding: [0x8b,0x0f,0x00,0xf7]
sh.ne %d15, %d15, 0

# CHECK-INST: sh.ne %d15, %d15, 1
# CHECK: encoding: [0x8b,0x1f,0x00,0xf7]
sh.ne %d15, %d15, 1

# CHECK-INST: sh.ne %d15, %d15, 128
# CHECK: encoding: [0x8b,0x0f,0x08,0xf7]
sh.ne %d15, %d15, 128

# CHECK-INST: sh.ne %d15, %d15, 255
# CHECK: encoding: [0x8b,0xff,0x0f,0xf7]
sh.ne %d15, %d15, 255
 